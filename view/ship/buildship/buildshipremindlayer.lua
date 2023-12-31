slot0 = class("BuildShipRemindLayer", import("...base.BaseUI"))

function slot0.getUIName(slot0)
	return "BuildShipRemindUI"
end

function slot0.setShips(slot0, slot1)
	slot0.ships = slot1
end

function slot0.init(slot0)
	slot1 = slot0._tf:Find("window")

	setText(slot1:Find("top/bg/infomation/title"), i18n("title_info"))

	slot0.btnBack = slot1:Find("top/btnBack")
	slot0.btnConfirm = slot1:Find("button_container/confirm")

	setText(slot0.btnConfirm:Find("pic"), i18n("text_confirm"))

	slot2 = slot1:Find("item_panel")

	setText(slot2:Find("word/Text"), i18n("last_building_not_shown"))

	slot0.toggleLock = slot2:Find("lock_toggle")
	slot3 = slot2:Find("scrollview")
	slot0.shipItemList = UIItemList.New(slot3, slot3:Find("item_tpl"))

	slot0.shipItemList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot3 = uv0.ships[slot1 + 1]

			updateDrop(slot2:Find("IconTpl"), {
				count = 1,
				type = DROP_TYPE_SHIP,
				id = slot3.configId,
				virgin = slot3.virgin
			})
			onButton(uv0, slot2, function ()
				uv0:emit(uv1.ON_DROP, uv2)
			end, SFX_PANEL)
			onLongPressTrigger(uv0, slot2, function ()
				uv0:emit(BuildShipRemindMediator.SHOW_NEW_SHIP, uv1)
			end, SFX_PANEL)
		end
	end)
end

function slot0.didEnter(slot0)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf, false, {
		weight = LayerWeightConst.BASE_LAYER + 1
	})
	onButton(slot0, slot0.btnBack, function ()
		uv0:exitCheck()
	end, SFX_CANCEL)
	onButton(slot0, slot0.btnConfirm, function ()
		uv0:exitCheck()
	end, SFX_CONFIRM)
	onToggle(slot0, slot0.toggleLock, function (slot0)
		uv0.isLockNew = slot0
	end, SFX_PANEL)
	triggerToggle(slot0.toggleLock, false)
	slot0.shipItemList:align(#slot0.ships)
end

function slot0.exitCheck(slot0)
	slot1 = {}

	if slot0.isLockNew then
		if #underscore(slot0.ships):chain():filter(function (slot0)
			return slot0.virgin
		end):map(function (slot0)
			return slot0.id
		end):value() > 0 then
			table.insert(slot1, function (slot0)
				uv0:emit(BuildShipRemindMediator.ON_LOCK, uv1, Ship.LOCK_STATE_LOCK, slot0)
			end)
		end
	end

	seriesAsync(slot1, function ()
		uv0:closeView()
	end)
end

function slot0.onBackPressed(slot0)
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
end

return slot0
