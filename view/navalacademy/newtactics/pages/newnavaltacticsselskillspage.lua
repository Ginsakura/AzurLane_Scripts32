slot0 = class("NewNavalTacticsSelSkillsPage", import("....base.BaseSubView"))

function slot0.getUIName(slot0)
	return "NewNavalTacticsSkillsPage"
end

function slot0.OnLoaded(slot0)
	slot0.confrimBtn = slot0:findTF("frame/confirm_btn")
	slot0.skillTpl = slot0:findTF("frame/skill_container/content/skill")
	slot0.emptyTpl = slot0:findTF("frame/skill_container/content/empty")
	slot0.toggleGroup = slot0:findTF("frame/skill_container/content"):GetComponent(typeof(ToggleGroup))
	slot0.skillCards = {
		NewNavalTacticsSkillCard.New(slot0.skillTpl)
	}
	slot0.emptyTpls = {
		slot0.emptyTpl
	}

	setText(slot0.confrimBtn:Find("Image"), i18n("tactics_class_start"))
	setText(slot0:findTF("frame/bg/title"), i18n("nav_tactics_sel_skill_title"))
end

function slot0.SetCancelCallback(slot0, slot1)
	slot0.onCancelCallback = slot1
end

function slot0.SetHideCallback(slot0, slot1)
	slot0.onHideCallback = slot1
end

function slot0.OnInit(slot0)
	onButton(slot0, slot0._tf, function ()
		uv0:Cancel()
		uv0:Hide()

		if uv0.onCancelCallback then
			uv0.onCancelCallback()

			uv0.onCancelCallback = nil
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.confrimBtn, function ()
		if not uv0.selSkill or not uv0.selIndex then
			pg.TipsMgr.GetInstance():ShowTips(i18n("tactics_should_exist_skill"))

			return
		end

		if uv0.selSkill:IsMaxLevel() then
			pg.TipsMgr.GetInstance():ShowTips(i18n("tactics_max_level"))

			return
		end

		uv0.student:setSkillIndex(uv0.selIndex)
		uv0:emit(NewNavalTacticsLayer.ON_SKILL_SELECTED, uv0.student)
	end, SFX_PANEL)
end

function slot0.Show(slot0, slot1, slot2)
	uv0.super.Show(slot0)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)

	if slot1 ~= slot0.student then
		slot0.skillIndex = slot2
		slot0.student = slot1
		slot0.selSkill = nil
		slot0.selIndex = nil

		slot0:UpdateSkillList(slot1)
	end
end

function slot0.Cancel(slot0)
	slot0:emit(NewNavalTacticsMediator.ON_CANCEL_ADD_STUDENT)
end

function slot0.Hide(slot0)
	uv0.super.Hide(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf, pg.UIMgr.GetInstance().UIMain)

	if slot0.onHideCallback then
		slot0.onHideCallback()

		slot0.onHideCallback = nil
	end
end

function slot0.UpdateSkillList(slot0, slot1)
	slot5 = #getProxy(BayProxy):RawGetShipById(slot1.shipId):getSkillList() >= 3 and slot4 or 3

	for slot9 = 1, slot4 do
		slot0:UpdateSkill(slot9, ShipSkill.New(slot2.skills[slot3[slot9]], slot2.id))
	end

	slot6 = 0

	for slot10 = slot4 + 1, slot5 do
		slot0:UpdateEmptySkill(slot6 + 1, slot10)
	end

	slot0:ClearShipCards(slot0.skillCards, slot4)
	slot0:ClearEmtptyTpls(slot0.emptyTpls, slot6)

	if slot4 > 0 then
		slot0.toggleGroup:SetAllTogglesOff()
		triggerToggle(slot0.skillCards[1]._tf, true)
	end

	if slot0.skillIndex then
		slot0:TriggerDefault(slot3)
	end
end

function slot0.TriggerDefault(slot0, slot1)
	if slot0.skillIndex and slot2 > 0 then
		triggerToggle(slot0.skillCards[slot2]._tf, true)
		triggerButton(slot0.confrimBtn)
	end

	slot0.skillIndex = nil
end

function slot0.UpdateSkill(slot0, slot1, slot2)
	if not slot0.skillCards[slot1] then
		slot0.skillCards[slot1] = NewNavalTacticsSkillCard.New(Object.Instantiate(slot0.skillTpl, slot0.skillTpl.parent))
	end

	slot3._tf:SetSiblingIndex(slot1 - 1)
	slot3:Enable()
	slot3:Update(slot2)
	onToggle(slot0, slot3._tf, function (slot0)
		if slot0 then
			uv0.selSkill = uv1
			uv0.selIndex = uv2
		end
	end, SFX_PANEL)
end

function slot0.ClearShipCards(slot0, slot1, slot2)
	for slot6 = #slot1, slot2 + 1, -1 do
		slot1[slot6]:Disable()
	end
end

function slot0.UpdateEmptySkill(slot0, slot1, slot2)
	if not slot0.emptyTpls[slot1] then
		slot0.emptyTpls[slot1] = Object.Instantiate(slot0.emptyTpl, slot0.emptyTpl.parent)
	end

	slot3:SetSiblingIndex(slot2 - 1)
	setActive(slot3, true)
end

function slot0.ClearEmtptyTpls(slot0, slot1, slot2)
	for slot6 = #slot1, slot2 + 1, -1 do
		setActive(slot1[slot6], false)
	end
end

function slot0.OnDestroy(slot0)
	if slot0:isShowing() then
		slot0:Hide()
	end

	for slot4, slot5 in ipairs(slot0.skillCards) do
		slot5:Dispose()
	end

	slot0.skillCards = nil
end

return slot0
