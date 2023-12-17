slot0 = class("FireworkPanelLayer", import("view.base.BaseUI"))

function slot0.getUIName(slot0)
	return "FireworkPanelUI"
end

function slot0.init(slot0)
	slot0.leftPanel = slot0:findTF("main/left_panel")
	slot0.rightPanel = slot0:findTF("main/right_panel")
	slot0.fireBtn = slot0:findTF("fire_btn", slot0.rightPanel)

	setText(slot0:findTF("tip", slot0.rightPanel), i18n("activity_yanhua_tip7"))

	slot0.leftItem = slot0:findTF("scrollrect/content/item_tpl", slot0.leftPanel)
	slot0.leftItems = slot0:findTF("scrollrect/content", slot0.leftPanel)
	slot0.leftUIList = UIItemList.New(slot0.leftItems, slot0.leftItem)
	slot0.rightItem = slot0:findTF("content/item_tpl", slot0.rightPanel)
	slot0.rightItems = slot0:findTF("content", slot0.rightPanel)
	slot0.rightUIList = UIItemList.New(slot0.rightItems, slot0.rightItem)
	slot0.arrowsTF = slot0:findTF("arrows", slot0.rightPanel)

	slot0:initData()
end

function slot0.initData(slot0)
	assert(getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_FIREWORK) and not slot1:isEnd(), "烟花活动(type92)已结束")

	slot0.unlockCount = slot1:getData1()
	slot0.unlockIds = slot1:getData1List()
	slot0.allIds = pg.activity_template[slot1.id].config_data[3]
	slot0.itemCfg = pg.item_data_statistics
	slot0.playerId = getProxy(PlayerProxy):getData().id
	slot0.orderIds = slot0:getLocalData()
end

function slot0.getLocalData(slot0)
	slot1 = {}

	for slot5 = 1, #slot0.allIds do
		if PlayerPrefs.GetInt("fireworks_" .. slot0.playerId .. "_pos_" .. slot5) ~= 0 then
			table.insert(slot1, slot6)
		end
	end

	return slot1
end

function slot0.setLocalData(slot0)
	for slot4 = 1, #slot0.allIds do
		PlayerPrefs.SetInt("fireworks_" .. slot0.playerId .. "_pos_" .. slot4, slot0.orderIds[slot4] or 0)
	end
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0:findTF("main/mask"), function ()
		uv0:emit(uv1.ON_CLOSE)
	end)
	onButton(slot0, slot0:findTF("close_btn", slot0.rightPanel), function ()
		uv0:emit(uv1.ON_CLOSE)
	end)
	onButton(slot0, slot0.fireBtn, function ()
		if #uv0.orderIds > 0 then
			uv0:emit(FireworkPanelMediator.LET_OFF_FIREWORKS, uv0.orderIds)
		end
	end)
	slot0:initLeft()
	slot0:initRight()
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
end

function slot0.initLeft(slot0)
	setActive(slot0:findTF("empty", slot0.leftPanel), #slot0.unlockIds == 0)
	setActive(slot0:findTF("scrollrect", slot0.leftPanel), #slot0.unlockIds > 0)
	slot0.leftUIList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot4 = "lock"

			if slot1 + 1 <= #uv0.unlockIds then
				slot4 = tostring(uv0.unlockIds[slot3])
			end

			slot2.name = slot4

			if slot4 == "lock" then
				setActive(uv0:findTF("firework", slot2), false)
			else
				slot5 = tonumber(slot2.name)

				setActive(uv0:findTF("firework", slot2), true)
				setActive(uv0:findTF("firework/selected", slot2), table.contains(uv0.orderIds, slot5))
				GetImageSpriteFromAtlasAsync(uv0.itemCfg[slot5].icon, "", uv0:findTF("firework/icon", slot2))
				onButton(uv0, slot2, function ()
					uv0:onLeftClick(uv1, uv2)
				end, SFX_PANEL)
			end
		end
	end)
	slot0.leftUIList:align(#slot0.allIds)
end

function slot0.initRight(slot0)
	for slot4 = 1, #slot0.allIds - 2 do
		cloneTplTo(slot0:findTF("tpl", slot0.arrowsTF), slot0.arrowsTF)
	end

	slot0.rightUIList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot4 = "null"

			if slot1 + 1 <= #uv0.orderIds then
				slot4 = tostring(uv0.orderIds[slot3])
			end

			slot2.name = slot4

			setActive(uv0:findTF("add", slot2), slot4 == "null")

			if slot4 == "null" then
				setActive(uv0:findTF("icon", slot2), false)
			else
				setActive(slot5, true)
				GetImageSpriteFromAtlasAsync(uv0.itemCfg[tonumber(slot2.name)].icon, "", slot5)
				onButton(uv0, slot5, function ()
					uv0:onRightClick(uv1)
				end, SFX_PANEL)
			end
		end
	end)
	slot0.rightUIList:align(#slot0.allIds)
end

function slot0.onLeftClick(slot0, slot1, slot2)
	if slot2 then
		table.removebyvalue(slot0.orderIds, slot1)
	else
		table.insert(slot0.orderIds, slot1)
	end

	slot0:setLocalData()
	slot0.leftUIList:align(#slot0.allIds)
	slot0.rightUIList:align(#slot0.allIds)
end

function slot0.onRightClick(slot0, slot1)
	table.removebyvalue(slot0.orderIds, slot1)
	slot0:setLocalData()
	slot0.leftUIList:align(#slot0.allIds)
	slot0.rightUIList:align(#slot0.allIds)
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
end

return slot0
