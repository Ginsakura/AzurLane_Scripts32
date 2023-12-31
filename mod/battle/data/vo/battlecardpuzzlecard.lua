ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleUnitEvent
slot2 = slot0.Battle.BattleEvent
slot3 = slot0.Battle.BattleCardPuzzleEvent
slot4 = slot0.Battle.BattleFormulas
slot5 = slot0.Battle.BattleCardPuzzleFormulas
slot6 = slot0.Battle.BattleConst
slot7 = slot0.Battle.BattleConfig
slot8 = slot0.Battle.BattleAttr
slot9 = slot0.Battle.BattleDataFunction
slot10 = slot0.Battle.BattleAttr
slot11 = class("BattleCardPuzzleCard")
slot0.Battle.BattleCardPuzzleCard = slot11
slot11.__name = "BattleCardPuzzleCard"

function slot11.GetCardEffectConfig(slot0)
	return pg.cardCfg["card_" .. slot0]
end

function slot11.Ctor(slot0, slot1)
	slot0._client = slot1

	slot0:init()
end

function slot11.init(slot0)
	slot0._timeStampList = {}
end

function slot11.SetCardTemplate(slot0, slot1)
	slot0._cardID = slot1
	slot0._cardTemp = uv0.GetPuzzleCardDataTemplate(slot0._cardID)
	slot2 = uv1.GetCardEffectConfig(slot0._cardTemp.effect[1])
	slot0._iconID = slot0._cardTemp.icon
	slot0._cost = slot0._cardTemp.cost
	slot0._returnCost = slot2.shuffle_cost
	slot0._labelList = slot0._cardTemp.label
	slot0._effectList = slot2.effect_list
	slot0._shuffleEffectList = slot2.shuffle_effect_list

	slot0:initCardEffectList()

	slot0._extraCost = slot2.extra_cost
	slot0._castCondition = slot2.cast_condition
	slot0._boostCondition = slot2.boost_hint
end

function slot11.GetCardTemplate(slot0)
	return slot0._cardTemp
end

function slot11.GetCardID(slot0)
	return slot0._cardID
end

function slot11.GetRarity(slot0)
	return slot0._cardTemp.rarity
end

function slot11.GetCardType(slot0)
	return slot0._cardTemp.card_type
end

function slot11.GetCardCD(slot0)
	return slot0._cardTemp.cooldown
end

function slot11.GetLabels(slot0)
	return slot0._labelList
end

function slot11.GetCurrentPile(slot0)
	return slot0._currentPile
end

function slot11.SetCurrentPile(slot0, slot1)
	slot0._currentPile = slot1
end

function slot11.GetFromPile(slot0)
	return slot0._fromPile
end

function slot11.SetFromPile(slot0, slot1)
	slot0._fromPile = slot1
end

function slot11.LabelContain(slot0, slot1)
	for slot5, slot6 in ipairs(slot1) do
		if table.contains(slot0._labelList, slot6) then
			return true
		end
	end

	return false
end

function slot11.GetCastCondition(slot0)
	if not slot0._castCondition then
		return nil
	else
		return uv0.parseCompare(slot0._castCondition, slot0._client:GetAttrManager())
	end
end

function slot11.GetBaseCost(slot0)
	return slot0._cost
end

function slot11.GetExtraCost(slot0)
	if not slot0._extraCost then
		return 0
	else
		return uv0.parseFormula(slot0._extraCost, slot0._client:GetAttrManager())
	end
end

function slot11.GetTotalCost(slot0)
	return math.max(slot0:GetBaseCost() + slot0:GetExtraCost(), 0)
end

function slot11.GetReturnCost(slot0)
	return slot0._returnCost
end

function slot11.IsBoost(slot0)
	if not slot0._boostCondition then
		return false
	else
		return uv0.parseCompare(slot0._boostCondition, slot0._client:GetAttrManager())
	end
end

function slot11.GetIconID(slot0)
	return slot0._iconID
end

function slot11.GetMoveAfterCast(slot0)
	return slot0._moveAfterCaster
end

function slot11.SetBaseEnergyFillDuration(slot0, slot1)
	slot0._timeStampList.energy = {
		duration = slot1,
		timeStamp = slot1 + pg.TimeMgr.GetInstance():GetCombatTime()
	}
end

function slot11.SetOverHeatDuration(slot0, slot1)
	timeStamp = slot1 + pg.TimeMgr.GetInstance():GetCombatTime()
	slot0._timeStampList.overheat = {
		duration = slot1,
		timeStamp = timeStamp
	}
end

function slot11.GetCastRemainRate(slot0)
	slot1 = 0

	for slot6, slot7 in pairs(slot0._timeStampList) do
		if 0 < slot7.timeStamp then
			slot1 = slot7.duration
			slot2 = slot7.timeStamp
		end
	end

	if slot1 ~= 0 then
		return (slot2 - pg.TimeMgr.GetInstance():GetCombatTime()) / slot1
	else
		return 0
	end
end

function slot11.Precast(slot0, slot1)
	slot0._castCallback = slot1

	if slot0._holdForInputMark then
		slot0._client:HoldForInput(slot0)
	else
		slot0:Cast()
	end
end

function slot11.Cast(slot0)
	slot0:checkAndStartQueue(slot0._queueList)

	if slot0._castCallback then
		slot0._castCallback()
	end
end

function slot11.Retrun(slot0, slot1)
	slot0:checkAndStartQueue(slot0._returnQueueList)
	slot1()
end

function slot11.Active(slot0)
	slot0:checkAndStartQueue(slot0._queueList)
end

function slot11.SetInputPoint(slot0, slot1)
	slot0._inputPoint = Clone(slot1)
end

function slot11.GetInputPoint(slot0)
	return slot0._inputPoint
end

function slot11.GetClient(slot0)
	return slot0._client
end

function slot11.QueueFinish(slot0, slot1)
	if slot1:GetBranch() then
		for slot7, slot8 in pairs(slot2) do
			if uv0.parseCompare(slot8, slot0._client:GetAttrManager()) then
				-- Nothing
			end
		end

		slot4 = nil
		slot4 = (slot1:GetQueueType() ~= uv1.Battle.BattleCardPuzzleCardEffectQueue.QUEUE_TYPE_RETURN or slot0._returnBranchQueueList) and slot0._branchQueueList

		for slot8, slot9 in pairs({
			[slot7] = true
		}) do
			slot0._branchQueueList[slot8]:Start()
		end
	end
end

function slot11.initCardEffectList(slot0)
	slot0._holdForInputMark = false
	slot0._moveAfterCaster = uv0.Battle.BattleFleetCardPuzzleComponent.CARD_PILE_INDEX_DISCARD
	slot0._branchQueueList = {}
	slot0._queueList = {}

	for slot4, slot5 in ipairs(slot0._effectList) do
		slot6 = uv0.Battle.BattleCardPuzzleCardEffectQueue.New(slot0)

		slot6:ConfigData(slot5)
		slot6:SetQueueType(uv0.Battle.BattleCardPuzzleCardEffectQueue.QUEUE_TYPE_NORMAL)
		table.insert(slot0._queueList, slot6)

		if slot6:GetHoldForInputMark() then
			slot0._holdForInputMark = true
		end
	end

	for slot4, slot5 in pairs(slot0._effectList) do
		slot6 = uv0.Battle.BattleCardPuzzleCardEffectQueue.New(slot0)

		slot6:ConfigData(slot5)
		slot6:SetQueueType(uv0.Battle.BattleCardPuzzleCardEffectQueue.QUEUE_TYPE_NORMAL)

		slot0._branchQueueList[slot4] = slot6
	end

	if slot0._returnCost then
		slot0._returnBranchQueueList = {}
		slot0._returnQueueList = {}

		for slot4, slot5 in ipairs(slot0._shuffleEffectList) do
			slot6 = uv0.Battle.BattleCardPuzzleCardEffectQueue.New(slot0)

			slot6:ConfigData(slot5)
			slot6:SetQueueType(uv0.Battle.BattleCardPuzzleCardEffectQueue.QUEUE_TYPE_RETURN)
			table.insert(slot0._returnQueueList, slot6)
		end

		for slot4, slot5 in pairs(slot0._shuffleEffectList) do
			slot6 = uv0.Battle.BattleCardPuzzleCardEffectQueue.New(slot0)

			slot6:ConfigData(slot5)
			slot6:SetQueueType(uv0.Battle.BattleCardPuzzleCardEffectQueue.QUEUE_TYPE_RETURN)

			slot0._returnBranchQueueList[slot4] = slot6
		end
	end
end

function slot11.checkAndStartQueue(slot0, slot1)
	for slot6, slot7 in ipairs(slot1) do
		if slot7:GetCondition() and not uv0.parseCompare(slot8, slot0._client:GetAttrManager()) then
			-- Nothing
		else
			slot0._moveAfterCaster = slot7:GetMoveAfterCast()
			slot2[slot6] = true
		end
	end

	for slot6, slot7 in pairs({
		[slot6] = false
	}) do
		if slot7 == true then
			slot1[slot6]:Start()
		end
	end
end

function slot11.GetCardEffectTargetFilterList(slot0)
	slot1 = {}

	for slot5, slot6 in ipairs(slot0._effectList) do
		if not slot6.condition or uv0.parseCompare(slot6.condition, slot0._client:GetAttrManager()) then
			slot0:checkQueueTarget(slot6, slot1)
		end
	end

	return slot1
end

slot11.AIM_FX_EFFECT = {
	"BattleCardPuzzleSkillFire"
}

function slot11.checkQueueTarget(slot0, slot1, slot2)
	for slot6, slot7 in ipairs(slot1) do
		if table.contains(uv0.AIM_FX_EFFECT, slot7.type) and slot7.target_choise then
			slot8 = slot2[slot7.caster] or {}

			table.insert(slot8, slot7.target_choise)

			slot2[slot7.caster] = slot8
		end
	end

	if slot1.branch then
		for slot6, slot7 in pairs(slot1.branch) do
			if uv1.parseCompare(slot7, slot0._client:GetAttrManager()) then
				slot0:checkQueueTarget(slot0._effectList[slot6])
			end
		end
	end
end

function slot11.GetIconPath(slot0)
	return CardPuzzleCard.GetCardIconPath(slot0:GetCardTemplate().icon)
end

function slot11.GetType(slot0)
	return slot0:GetCardType()
end

function slot11.GetName(slot0)
	return slot0:GetCardTemplate().name
end

function slot11.GetDesc(slot0)
	return slot0:GetCardTemplate().discript
end

function slot11.GetCost(slot0)
	return slot0:GetTotalCost()
end

function slot11.GetKeywords(slot0)
	return CardPuzzleCard.GetCardKeyWord(slot0:GetCardTemplate().label)
end

function slot11.getConfig(slot0, slot1)
	return slot0._cardTemp[slot1]
end
