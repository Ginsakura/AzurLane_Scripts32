slot0 = class("NewNavalTacticsShipCard", import(".NewNavalTacticsBaseCard"))

function slot0.OnInit(slot0)
	slot0.skillNameTxt = findTF(slot0._tf, "skill/name_Text"):GetComponent(typeof(Text))
	slot0.skillIcon = findTF(slot0._tf, "skill/icon"):GetComponent(typeof(Image))
	slot0.skillExpSlider = findTF(slot0._tf, "skill/exp"):GetComponent(typeof(Slider))
	slot0.skillLevelTxt = findTF(slot0._tf, "skill/level"):GetComponent(typeof(Text))
	slot0.skillNextExp = findTF(slot0._tf, "skill/next"):GetComponent(typeof(Text))
	slot0.timeTxt = findTF(slot0._tf, "timer_Text"):GetComponent(typeof(Text))
	slot0.cancelBtn = findTF(slot0._tf, "cancel_btn")
	slot0.quickFinishBtn = findTF(slot0._tf, "quick_finish_btn")

	onButton(slot0, slot0.cancelBtn, function ()
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("tactics_lesson_cancel"),
			onYes = function ()
				uv0:OnCancel()
			end
		})
	end, SFX_CANCEL)
	onButton(slot0, findTF(slot0._tf, "skill"), function ()
		uv0:emit(NewNavalTacticsMediator.ON_SKILL, uv0.skillVO:GetDisplayId(), uv0.skillVO)
	end, SFX_PANEL)
	onButton(slot0, slot0.quickFinishBtn, function ()
		uv0:emit(NewNavalTacticsMediator.ON_QUICK_FINISH, uv0.student.id)
	end, SFX_PANEL)
end

function slot0.LoadShipCard(slot0)
	ResourceMgr.Inst:getAssetAsync("template/shipcardtpl", "", UnityEngine.Events.UnityAction_UnityEngine_Object(function (slot0)
		slot1 = Object.Instantiate(slot0, uv0._tf)
		slot1.transform.localScale = Vector3(1.28, 1.28, 1)
		slot1.transform.localPosition = Vector3(0, 251, 0)
		uv0.shipCard = DockyardShipItem.New(slot1, ShipStatus.TAG_HIDE_ALL)

		uv0:UpdateShipCard()
	end), true, true)
end

function slot0.OnUpdate(slot0, slot1)
	slot0.student = slot1
	slot0.ship = getProxy(BayProxy):RawGetShipById(slot0.student.shipId)
	slot0.skillVO = ShipSkill.New(slot0.ship.skills[slot0.student:getSkillId(slot0.ship)], slot0.ship.id)

	slot0:UpdateSkill()

	if not slot0.shipCard then
		slot0:LoadShipCard()
	else
		slot0:UpdateShipCard()
	end

	slot0:AddTimer()
	setActive(slot0.quickFinishBtn, getProxy(NavalAcademyProxy):getDailyFinishCnt() > 0)
end

function slot0.UpdateSkill(slot0)
	slot1 = slot0.ship
	slot2 = slot0.student
	slot3 = slot0.skillVO
	slot0.skillNameTxt.text = shortenString(slot3:GetName(), 8)
	slot0.skillLevelTxt.text = slot3.level

	LoadSpriteAsync("skillicon/" .. slot3:GetIcon(), function (slot0)
		uv0.skillIcon.sprite = slot0
	end)

	if slot3:IsMaxLevel() then
		slot0.skillNextExp.text = "MAX"
		slot0.skillExpSlider.value = 1
	else
		slot4 = slot3:GetNextLevelExp()
		slot0.skillNextExp.text = slot3.exp .. "/" .. slot4
		slot0.skillExpSlider.value = slot3.exp / slot4
	end
end

function slot0.AddTimer(slot0)
	slot0:RemoveTimer()

	slot2 = slot0.student:getFinishTime()
	slot0.timer = Timer.New(function ()
		if uv0 - pg.TimeMgr.GetInstance():GetServerTime() < 0 then
			uv1:OnFinish()
		else
			uv1.timeTxt.text = pg.TimeMgr.GetInstance():DescCDTime(slot0)
		end
	end, 1, -1)

	slot0.timer:Start()
	slot0.timer.func()
end

function slot0.OnFinish(slot0)
	slot0:RemoveTimer()

	slot0.timeTxt.text = ""

	slot0:emit(NewNavalTacticsMediator.ON_CANCEL, slot0.student.id, Student.CANCEL_TYPE_AUTO)
end

function slot0.OnCancel(slot0)
	slot0:emit(NewNavalTacticsMediator.ON_CANCEL, slot0.student.id, Student.CANCEL_TYPE_MANUAL)
end

function slot0.RemoveTimer(slot0)
	if slot0.timer then
		slot0.timer:Stop()

		slot0.timer = nil
	end
end

function slot0.UpdateShipCard(slot0)
	if slot0.ship.id == slot0.shipID then
		return
	end

	slot0.shipCard:update(slot0.ship)

	slot0.shipID = slot0.ship.id
end

function slot0.OnDispose(slot0)
	slot0:RemoveTimer()

	if LeanTween.isTweening(slot0.skillExpSlider.gameObject) then
		LeanTween.cancel(slot0.skillExpSlider.gameObject)
	end

	if LeanTween.isTweening(slot0.skillNextExp.gameObject) then
		LeanTween.cancel(slot0.skillNextExp.gameObject)
	end
end

function slot0.DoAddExpAnim(slot0, slot1, slot2, slot3)
	if slot2.level - slot1.level > 0 then
		slot0:DoLevelUpAnim(slot1, slot2, slot3)
	else
		slot0:DoUnLevelUpAnim(slot1, slot2, slot3)
	end
end

function slot0.DoLevelUpAnim(slot0, slot1, slot2, slot3)
	seriesAsync({
		function (slot0)
			uv0:Curr2One(uv1, slot0)
		end,
		function (slot0)
			uv0:Zero2One(uv1, uv2, slot0)
		end,
		function (slot0)
			uv0:Zero2New(uv1, slot0)
		end
	}, slot3)
end

function slot0.Curr2One(slot0, slot1, slot2)
	slot3 = slot1:GetNextLevelExp()
	slot4 = slot1.exp / slot3
	slot5 = 1 - slot4

	LeanTween.value(slot0.skillExpSlider.gameObject, slot4, 1, slot5):setOnUpdate(System.Action_float(function (slot0)
		uv0.skillExpSlider.value = slot0
	end))
	LeanTween.value(slot0.skillNextExp.gameObject, slot1.exp, slot3, slot5 + 0.001):setOnUpdate(System.Action_float(function (slot0)
		uv0.skillNextExp.text = math.ceil(slot0) .. "/" .. uv1
	end)):setOnComplete(System.Action(function ()
		uv0.skillLevelTxt.text = uv1.level + 1

		uv2()
	end))
end

function slot0.Zero2One(slot0, slot1, slot2, slot3)
	if slot1.level + 1 == slot2.level then
		slot3()

		return
	end

	slot6 = {}

	for slot10 = 1, slot2.level - slot1.level - 1 do
		table.insert(slot6, function (slot0)
			slot1 = 0.3

			LeanTween.value(uv0.skillExpSlider.gameObject, 0, 1, slot1):setOnUpdate(System.Action_float(function (slot0)
				uv0.skillExpSlider.value = slot0
			end))
			LeanTween.value(uv0.skillNextExp.gameObject, 0, ShipSkill.StaticGetNextLevelExp(uv1), slot1 + 0.001):setOnUpdate(System.Action_float(function (slot0)
				uv0.skillNextExp.text = math.ceil(slot0) .. "/" .. uv1
			end)):setOnComplete(System.Action(function ()
				uv0.skillLevelTxt.text = uv1 + 1
				uv1 = uv1 + 1

				uv2()
			end))
		end)
	end

	seriesAsync(slot6, slot3)
end

function slot0.Zero2New(slot0, slot1, slot2)
	if slot1.exp / slot1:GetNextLevelExp() == 0 or slot1:IsMaxLevel() then
		slot2()

		return
	end

	LeanTween.value(slot0.skillExpSlider.gameObject, 0, slot4, slot4):setOnUpdate(System.Action_float(function (slot0)
		uv0.skillExpSlider.value = slot0
	end))
	LeanTween.value(slot0.skillNextExp.gameObject, 0, slot3, slot4 + 0.001):setOnUpdate(System.Action_float(function (slot0)
		uv0.skillNextExp.text = math.ceil(slot0) .. "/" .. uv1
	end)):setOnComplete(System.Action(slot2))
end

function slot0.DoUnLevelUpAnim(slot0, slot1, slot2, slot3)
	slot4 = slot2:GetNextLevelExp()

	LeanTween.value(slot0.skillExpSlider.gameObject, slot1.exp / slot4, slot2.exp / slot4, 1):setOnUpdate(System.Action_float(function (slot0)
		uv0.skillExpSlider.value = slot0
	end))
	LeanTween.value(slot0.skillNextExp.gameObject, slot1.exp, slot2.exp, 1.001):setOnUpdate(System.Action_float(function (slot0)
		uv0.skillNextExp.text = math.ceil(slot0) .. "/" .. uv1
	end)):setOnComplete(System.Action(slot3))
end

return slot0
