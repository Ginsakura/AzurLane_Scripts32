slot0 = class("Live2D")
slot0.STATE_LOADING = 0
slot0.STATE_INITED = 1
slot0.STATE_DISPOSE = 2
slot1 = nil
slot2 = 5
slot3 = 3
slot4 = 0.3
slot0.DRAG_TIME_ACTION = 1
slot0.DRAG_CLICK_ACTION = 2
slot0.DRAG_DOWN_ACTION = 3
slot0.DRAG_RELATION_XY = 4
slot0.EVENT_ACTION_APPLY = "event action apply"
slot0.EVENT_ACTION_ABLE = "event action able"
slot5 = {
	CubismParameterBlendMode.Override,
	CubismParameterBlendMode.Additive,
	CubismParameterBlendMode.Multiply
}

function slot0.GenerateData(slot0)
	slot1 = {
		SetData = function (slot0, slot1)
			slot0.ship = slot1.ship
			slot0.parent = slot1.parent
			slot0.scale = slot1.scale
			slot0.gyro = slot0:GetShipSkinConfig().gyro or 0
			slot0.shipL2dId = slot0:GetShipSkinConfig().ship_l2d_id
			slot0.position = slot1.position + BuildVector3(slot0:GetShipSkinConfig().live2d_offset)
			slot0.l2dDragRate = slot0:GetShipSkinConfig().l2d_drag_rate
		end,
		GetShipName = function (slot0)
			return slot0.ship:getPainting()
		end,
		GetShipSkinConfig = function (slot0)
			return slot0.ship:GetSkinConfig()
		end,
		isEmpty = function (slot0)
			return slot0.ship == nil
		end,
		Clear = function (slot0)
			slot0.ship = nil
			slot0.parent = nil
			slot0.scale = nil
			slot0.position = nil
		end
	}

	slot1:SetData(slot0)

	return slot1
end

function slot6(slot0)
	slot1 = slot0.live2dData:GetShipSkinConfig()
	slot3 = slot1.lip_smoothing

	if slot1.lip_sync_gain and slot2 ~= 0 then
		slot0._go:GetComponent("CubismCriSrcMouthInput").Gain = slot2
	end

	if slot3 and slot3 ~= 0 then
		slot0._go:GetComponent("CubismCriSrcMouthInput").Smoothing = slot3
	end
end

function slot7(slot0)
	if slot0.live2dData:GetShipSkinConfig().l2d_para_range ~= nil and type(slot2) == "table" then
		for slot6, slot7 in pairs(slot2) do
			slot0.liveCom:SetParaRange(slot6, slot7)
		end
	end
end

function slot8(slot0, slot1)
	if slot0.enablePlayActions and #slot0.enablePlayActions > 0 and not table.contains(slot0.enablePlayActions, slot1) then
		warning(tostring(slot1) .. "不在白名单中,不播放该动作")

		return false
	end

	if slot0.ignorePlayActions and #slot0.ignorePlayActions > 0 and table.contains(slot0.ignorePlayActions, slot1) then
		warning(tostring(slot1) .. "在黑名单中，不播放该动作")

		return false
	end

	if slot0._readlyToStop then
		print("l2d即将停止，不播放该动作")

		return false
	end

	return true
end

function slot9(slot0, slot1, slot2)
	if not uv0(slot0, slot1) then
		return
	end

	if slot0.updateAtom then
		slot0:AtomSouceFresh()
	end

	if slot0.animationClipNames and (not table.indexof(slot0.animationClipNames, slot1) or slot3 == false) and string.find(slot1, "main_") then
		slot1 = "main_3"
	end

	if not slot0.isPlaying or slot2 then
		if uv1.action2Id[slot1] then
			slot0.liveCom:SetAction(slot3)
			slot0:live2dActionChange(true)
		else
			print(tostring(slot1) .. " action is not exist")
		end
	end
end

function slot10(slot0, slot1)
	slot0.liveCom:SetCenterPart("Drawables/TouchHead", Vector3.zero)

	slot0.liveCom.DampingTime = 0.3
end

function slot11(slot0, slot1, slot2)
	if slot1 == Live2D.EVENT_ACTION_APPLY then
		slot4 = slot2.callback
		slot5 = slot2.activeData
		slot6 = slot2.focus
		slot7 = slot2.react

		if not uv0(slot0, slot2.action) then
			return
		end

		slot0:setReactPos(tobool(slot7))

		if slot3 then
			uv1(slot0, slot3, slot6 or false)
		end

		slot0:applyActiveData(slot5)

		if slot4 then
			slot4()
		end
	elseif slot1 == Live2D.EVENT_ACTION_ABLE then
		if slot0.ableFlag ~= slot2.ableFlag then
			slot0.ableFlag = slot2.ableFlag

			if slot2.ableFlag then
				slot0.tempEnable = slot0.enablePlayActions
				slot0.enablePlayActions = {
					"none action apply"
				}
			else
				slot0.enablePlayActions = slot0.tempEnable
			end
		else
			print("able flag 相同，不执行操作")
		end

		if slot2.callback then
			slot2.callback()
		end
	end
end

function slot12(slot0)
	if not slot0._l2dCharEnable then
		return
	end

	if slot0._readlyToStop then
		return
	end

	slot1 = false

	for slot6 = 1, #slot0.drags do
		slot0.drags[slot6]:changeReactValue(ReflectionHelp.RefGetField(typeof(Live2dChar), "reactPos", slot0.liveCom))
		slot0.drags[slot6]:stepParameter()

		if (slot0.drags[slot6]:getParameToTargetFlag() or slot0.drags[slot6]:getActive()) and slot0.drags[slot6]:getIgnoreReact() then
			slot1 = true
		end

		if slot0.drags[slot6]:getParameter() and slot0.drags[slot6]:getParameterUpdateFlag() and slot0.drags[slot6]:getParameterCom() then
			slot0.liveCom:ChangeParameterData(slot10, slot8)
		end

		for slot14, slot15 in ipairs(slot0.drags[slot6]:getRelationParameterList()) do
			if slot15.enable then
				slot0.liveCom:ChangeParameterData(slot15.com, slot15.value)
			end
		end
	end

	if slot1 ~= slot0.ignoreReact then
		if not slot1 then
			if not slot0.mouseInputDown then
				if slot0.isPlaying then
					-- Nothing
				end
			end
		else
			slot0:setReactPos(slot1)
		end
	end
end

function slot13(slot0)
	slot0.drags = {}
	slot0.dragParts = {}

	for slot4 = 1, #uv0.assistantTouchParts do
		table.insert(slot0.dragParts, uv0.assistantTouchParts[slot4])
	end

	slot0._l2dCharEnable = true
	slot0._shopPreView = slot0.live2dData.shopPreView

	for slot4, slot5 in ipairs(slot0.live2dData.shipL2dId) do
		if pg.ship_l2d[slot5] and slot0:getDragEnable(slot6) then
			slot8 = Live2dDrag.New(slot6)

			slot8:setParameterCom(slot0.liveCom:GetCubismParameter(slot6.parameter))
			slot8:setEventCallback(function (slot0, slot1)
				uv0(uv1, slot0, slot1)
			end)
			slot0.liveCom:AddParameterValue(slot8.parameterName, slot8.startValue, uv2[slot6.mode])

			if slot6.relation_parameter and slot6.relation_parameter.list then
				for slot14, slot15 in ipairs(slot6.relation_parameter.list) do
					if slot0.liveCom:GetCubismParameter(slot15.name) then
						slot8:addRelationComData(slot16, slot15)
						slot0.liveCom:AddParameterValue(slot15.name, slot15.start or slot8.startValue or 0, uv2[slot6.mode])
					end
				end
			end

			table.insert(slot0.drags, slot8)

			if not table.contains(slot0.dragParts, slot8.drawAbleName) then
				table.insert(slot0.dragParts, slot8.drawAbleName)
			end
		end
	end

	slot0.liveCom:SetDragParts(slot0.dragParts)

	function slot5()
		if not uv0._l2dCharEnable then
			return
		end

		uv0.mouseInputDown = false

		if uv0.drags and #uv0.drags > 0 then
			if uv0.liveCom:GetDragPart() > 0 then
				slot1 = uv0.dragParts[slot0]
			end

			for slot4 = 1, #uv0.drags do
				uv0.drags[slot4]:stopDrag()
			end
		end
	end

	slot0.liveCom:SetMouseInputActions(System.Action(function ()
		if not uv0._l2dCharEnable then
			return
		end

		uv0.mouseInputDown = true

		if #uv0.drags > 0 and uv0.liveCom:GetDragPart() > 0 then
			slot0 = uv0.liveCom:GetDragPart()

			if slot0 > 0 and uv0.dragParts[slot0] then
				for slot5, slot6 in ipairs(uv0.drags) do
					if slot6.drawAbleName == slot1 then
						slot6:startDrag()
					end
				end
			end
		end
	end), System.Action(slot5))

	slot0.paraRanges = ReflectionHelp.RefGetField(typeof(Live2dChar), "paraRanges", slot0.liveCom)
	slot0.destinations = {}

	for slot5 = 0, ReflectionHelp.RefGetProperty(typeof(Live2dChar), "Destinations", slot0.liveCom).Length - 1 do
		slot6 = slot1[slot5]

		table.insert(slot0.destinations, slot1[slot5])
	end

	slot0.timer = Timer.New(function ()
		uv0(uv1)
	end, 0.03333333333333333, -1)

	slot0.timer:Start()
end

function slot14(slot0, slot1)
	slot0._go = slot1
	slot0._tf = tf(slot1)

	UIUtil.SetLayerRecursively(slot0._go, LayerMask.NameToLayer("UI"))
	slot0._tf:SetParent(slot0.live2dData.parent, true)

	slot0._tf.localScale = slot0.live2dData.scale
	slot0._tf.localPosition = slot0.live2dData.position
	slot0.liveCom = slot1:GetComponent(typeof(Live2dChar))
	slot0._animator = slot1:GetComponent(typeof(Animator))
	slot0.animationClipNames = {}

	if slot0._animator and slot0._animator.runtimeAnimatorController then
		for slot7 = 0, slot0._animator.runtimeAnimatorController.animationClips.Length - 1 do
			table.insert(slot0.animationClipNames, slot2[slot7].name)
		end
	end

	slot0.liveCom:SetReactMotions(uv0.idleActions)
	slot0.liveCom:SetAction(uv0.action2Id.idle)

	function slot0.liveCom.FinishAction(slot0)
		uv0:live2dActionChange(false)

		if uv0.finishActionCB then
			uv0.finishActionCB()

			uv0.finishActionCB = nil
		end

		uv0.liveCom:SetAction(uv1.idleActions[math.ceil(math.random(#uv1.idleActions))])
	end

	function slot0.liveCom.EventAction(slot0)
		if uv0.animEventCB then
			uv0.animEventCB(slot0)

			uv0.animEventCB = nil
		end
	end

	slot0.liveCom:SetTouchParts(uv0.assistantTouchParts)

	if slot0.live2dData and slot0.live2dData.ship and slot0.live2dData.ship.propose then
		slot0:changeParamaterValue("Paramring", 1)
	else
		slot0:changeParamaterValue("Paramring", 0)
	end

	if slot0.live2dData.l2dDragRate and #slot0.live2dData.l2dDragRate > 0 then
		slot0.liveCom.DragRateX = slot0.live2dData.l2dDragRate[1] * uv1
		slot0.liveCom.DragRateY = slot0.live2dData.l2dDragRate[2] * uv2
		slot0.liveCom.DampingTime = slot0.live2dData.l2dDragRate[3] * uv3
	end

	uv4(slot0)
	uv5(slot0)
	uv6(slot0)

	if slot0.live2dData.shipL2dId and #slot0.live2dData.shipL2dId > 0 then
		uv7(slot0)
	end

	slot0.state = uv8.STATE_INITED

	if slot0.delayChangeParamater and #slot0.delayChangeParamater > 0 then
		for slot6 = 1, #slot0.delayChangeParamater do
			slot7 = slot0.delayChangeParamater[slot6]

			slot0:changeParamaterValue(slot7[1], slot7[2])
		end

		slot0.delayChangeParamater = nil
	end

	slot0.enablePlayActions = {}
	slot0.ignorePlayActions = {}

	slot0:changeIdleIndex(0)
end

function slot0.Ctor(slot0, slot1, slot2)
	slot0.state = uv0.STATE_LOADING
	slot0.live2dData = slot1
	uv1 = pg.AssistantInfo

	assert(not slot0.live2dData:isEmpty())

	slot0.live2dRequestId = pg.Live2DMgr.GetInstance():GetLive2DModelAsync(slot0.live2dData:GetShipName(), function (slot0)
		uv0(uv1, slot0)

		if uv2 then
			uv2(uv1)
		end
	end)
	Input.gyro.enabled = slot0.live2dData.gyro == 1 and PlayerPrefs.GetInt(GYRO_ENABLE, 1) == 1
end

function slot0.SetVisible(slot0, slot1)
	if not slot0:IsLoaded() then
		return
	end

	Input.gyro.enabled = PlayerPrefs.GetInt(GYRO_ENABLE, 1) == 1

	if slot1 then
		slot0._animator.speed = 1

		uv0(slot0, "idle", true)
		slot0:setReactPos(true)

		slot0._readlyToStop = false

		onDelayTick(function ()
			if not uv0._readlyToStop then
				uv0:setReactPos(false)
			end
		end, 1)
	else
		slot0:setReactPos(true)
		slot0:Reset()
		uv0(slot0, "idle", true)

		slot0._readlyToStop = true

		onDelayTick(function ()
			if uv0._readlyToStop then
				uv0._animator.speed = 0
			end
		end, 3)
	end
end

function slot0.IgonreReactPos(slot0, slot1)
	slot0:setReactPos(slot1)
end

function slot0.setReactPos(slot0, slot1)
	if slot0.liveCom then
		slot0.ignoreReact = slot1

		slot0.liveCom:IgonreReactPos(slot1)

		if slot1 then
			ReflectionHelp.RefSetField(typeof(Live2dChar), "inDrag", slot0.liveCom, false)
		end

		ReflectionHelp.RefSetField(typeof(Live2dChar), "reactPos", slot0.liveCom, Vector3(0, 0, 0))
		slot0:updateDragsSateData()
	end
end

function slot0.l2dCharEnable(slot0, slot1)
	slot0._l2dCharEnable = slot1
end

function slot0.inShopPreView(slot0, slot1)
	slot0._shopPreView = slot1
end

function slot0.getDragEnable(slot0, slot1)
	if slot0._shopPreView and slot1.shop_action == 0 then
		return false
	end

	return true
end

function slot0.updateShip(slot0, slot1)
	if slot1 and slot0.live2dData and slot0.live2dData.ship then
		slot0.live2dData.ship = slot1

		if slot0.live2dData and slot0.live2dData.ship and slot0.live2dData.ship.propose then
			slot0:changeParamaterValue("Paramring", 1)
		else
			slot0:changeParamaterValue("Paramring", 0)
		end
	end
end

function slot0.IsLoaded(slot0)
	return slot0.state == uv0.STATE_INITED
end

function slot0.GetTouchPart(slot0)
	return slot0.liveCom:GetTouchPart()
end

function slot0.TriggerAction(slot0, slot1, slot2, slot3, slot4)
	slot0:CheckStopDrag()

	slot0.finishActionCB = slot2
	slot0.animEventCB = slot4

	uv0(slot0, slot1, slot3)
end

function slot0.Reset(slot0)
	slot0:live2dActionChange(false)

	slot0.enablePlayActions = {}
	slot0.ignorePlayActions = {}
	slot0.ableFlag = nil

	if slot0.idleIndex ~= 0 then
		slot0:changeIdleIndex(0)
	end
end

function slot0.applyActiveData(slot0, slot1)
	slot3 = slot1.ignore
	slot4 = slot1.idle
	slot5 = slot1.repeatFlag

	if slot1.enable and #slot2 >= 0 then
		slot0.enablePlayActions = slot2
	end

	if slot3 and #slot3 >= 0 then
		slot0.ignorePlayActions = slot3
	end

	if slot4 then
		if type(slot4) == "number" and slot4 >= 0 then
			slot0:changeIdleIndex(slot4)
		elseif type(slot4) == "table" then
			slot6 = {}

			for slot10, slot11 in ipairs(slot4) do
				if slot11 == slot0.idleIndex then
					if slot5 then
						table.insert(slot6, slot11)
					end
				else
					table.insert(slot6, slot11)
				end
			end

			slot0:changeIdleIndex(slot6[math.random(1, #slot6)])
		end
	end
end

function slot0.changeIdleIndex(slot0, slot1)
	if slot0.idleIndex ~= slot1 then
		slot0._animator:SetInteger("idle", slot1)
	end

	print("now idle index is " .. slot1)

	slot0.idleIndex = slot1

	slot0:updateDragsSateData()
end

function slot0.live2dActionChange(slot0, slot1)
	slot0.isPlaying = slot1

	slot0:updateDragsSateData()
end

function slot0.updateDragsSateData(slot0)
	slot1 = {
		idleIndex = slot0.idleIndex,
		isPlaying = slot0.isPlaying,
		ignoreReact = slot0.ignoreReact
	}

	if slot0.drags then
		for slot5 = 1, #slot0.drags do
			slot0.drags[slot5]:updateStateData(slot1)
		end
	end
end

function slot0.CheckStopDrag(slot0)
	if slot0.live2dData:GetShipSkinConfig().l2d_ignore_drag and slot1.l2d_ignore_drag == 1 then
		slot0.liveCom.ResponseClick = false

		ReflectionHelp.RefSetField(typeof(Live2dChar), "inDrag", slot0.liveCom, false)
	end
end

function slot0.changeParamaterValue(slot0, slot1, slot2)
	if slot0:IsLoaded() then
		if not slot1 or string.len(slot1) == 0 then
			return
		end

		if not slot0.liveCom:GetCubismParameter(slot1) then
			return
		end

		slot0.liveCom:AddParameterValue(slot3, slot2, uv0[1])
	else
		if not slot0.delayChangeParamater then
			slot0.delayChangeParamater = {}
		end

		table.insert(slot0.delayChangeParamater, {
			slot1,
			slot2
		})
	end
end

function slot0.Dispose(slot0)
	if slot0.state == uv0.STATE_INITED then
		Destroy(slot0._go)

		slot0.liveCom.FinishAction = nil
		slot0.liveCom.EventAction = nil
	end

	slot0.liveCom:SetMouseInputActions(nil, )

	slot0._readlyToStop = false
	slot0.state = uv0.STATE_DISPOSE

	pg.Live2DMgr.GetInstance():StopLoadingLive2d(slot0.live2dRequestId)

	slot0.live2dRequestId = nil

	if slot0.drags then
		for slot4 = 1, #slot0.drags do
			slot0.drags[slot4]:dispose()
		end

		slot0.drags = {}
	end

	if slot0.live2dData.gyro == 1 then
		Input.gyro.enabled = false
	end

	if slot0.live2dData then
		slot0.live2dData:Clear()

		slot0.live2dData = nil
	end

	slot0:live2dActionChange(false)

	if slot0.timer then
		slot0.timer:Stop()

		slot0.timer = nil
	end
end

function slot0.UpdateAtomSource(slot0)
	slot0.updateAtom = true
end

function slot0.AtomSouceFresh(slot0)
	pg.CriMgr.GetInstance():getAtomSource(pg.CriMgr.C_VOICE):AttachToAnalyzer(ReflectionHelp.RefGetField(typeof("Live2D.Cubism.Framework.MouthMovement.CubismCriSrcMouthInput"), "Analyzer", slot0._go:GetComponent("CubismCriSrcMouthInput")))

	if slot0.updateAtom then
		slot0.updateAtom = false
	end
end

return slot0
