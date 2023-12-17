slot0 = class("EquipmentSkinInfoUIForShopWindow", import("view.base.BaseSubView"))

function slot0.getUIName(slot0)
	return "EquipmentSkinInfoUIForShop"
end

function slot0.OnLoaded(slot0)
	slot0.displayPanel = slot0:findTF("display")
	slot0.displayActions = slot0.displayPanel:Find("actions")
	slot0.displayNameTxt = slot0:findTF("info/display_panel/name_container/name", slot0.displayPanel):GetComponent(typeof(Text))
	slot0.displayDescTxt = slot0:findTF("info/display_panel/desc", slot0.displayPanel):GetComponent(typeof(Text))
	slot0.playBtn = slot0:findTF("info/play_btn", slot0.displayPanel)
	slot0.confirmBtn = slot0._tf:Find("display/actions/confirm")

	setText(slot0:findTF("display/top/bg/infomation/title"), i18n("words_information"))
	setText(slot0:findTF("display/actions/cancel/upgrade"), i18n("msgbox_text_cancel"))
	setText(slot0:findTF("display/actions/confirm/change"), i18n("shop_word_exchange"))
end

function slot0.OnInit(slot0)
	onButton(slot0, slot0._tf, function ()
		uv0:Hide()
	end, SOUND_BACK)
	onButton(slot0, slot0._tf:Find("display/top/btnBack"), function ()
		uv0:Hide()
	end, SFX_CANCEL)
	onButton(slot0, slot0._tf:Find("display/actions/cancel"), function ()
		uv0:Hide()
	end, SFX_CANCEL)
end

function slot0.Show(slot0, slot1)
	uv0.super.Show(slot0)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
	slot0:UpdateSkinView(slot1)

	slot0.showing = true
end

function slot0.Open(slot0, slot1, slot2)
	onButton(slot0, slot0.confirmBtn, function ()
		if uv1 then
			uv1(uv2, 1, pg.equip_skin_template[uv0].name)
		end

		uv3:Hide()
	end, SFX_CANCEL)
	slot0:Show(slot1:getConfig("commodity_id"))
end

function slot0.UpdateSkinView(slot0, slot1)
	slot2 = slot0.displayPanel
	slot3 = pg.equip_skin_template[slot1]

	assert(slot3, "miss config equip_skin_template >> " .. slot1)

	slot0.displayNameTxt.text = slot3.name
	slot0.displayDescTxt.text = slot3.desc

	setScrollText(slot0:findTF("info/display_panel/equip_type/mask/Text", slot2), table.concat(_.map(slot3.equip_type, function (slot0)
		return EquipType.Type2Name2(slot0)
	end), ","))
	onButton(slot0, slot0.playBtn, function ()
		uv0:emit(NewShopsMediator.ON_ESKIN_PREVIEW, uv1)
	end, SFX_PANEL)
	updateDrop(slot0:findTF("info/equip", slot2), {
		type = DROP_TYPE_EQUIPMENT_SKIN,
		id = slot1
	})
end

function slot0.Hide(slot0)
	if slot0.showing then
		uv0.super.Hide(slot0)
		pg.UIMgr.GetInstance():UnblurPanel(slot0._tf, slot0._parentTf)

		slot0.showing = false
	end
end

function slot0.OnDestroy(slot0)
	slot0:Hide()
end

return slot0
