slot0 = class("RandomDockYardScene", import("view.base.BaseUI"))
slot0.MODE_VIEW = 1
slot0.MODE_ADD = 2
slot0.MODE_REMOVE = 3

function slot0.getUIName(slot0)
	return "RandomDockYardUI"
end

function slot0.OnChangeRandomShips(slot0)
	slot0.randomFlagShips = nil
	slot0.dockyardShips = nil

	if slot0.mode ~= uv0.MODE_VIEW then
		slot0:Switch(uv0.MODE_VIEW)
	end
end

function slot0.init(slot0)
	slot0.titleImg = slot0:findTF("blur_panel/adapt/top/title"):GetComponent(typeof(Image))
	slot0.titleEnImg = slot0:findTF("blur_panel/adapt/top/title/title_en"):GetComponent(typeof(Image))
	slot0.scrollrect = slot0:findTF("main/ship_container/ships"):GetComponent("LScrollRect")
	slot0.emptyTr = slot0:findTF("empty")
	slot0.backBtn = slot0:findTF("blur_panel/adapt/top/back")
	slot0.addBtn = slot0:findTF("blur_panel/select_panel/add_button")
	slot0.removeBtn = slot0:findTF("blur_panel/select_panel/remove_button")
	slot0.cancelBtn = slot0:findTF("blur_panel/select_panel/cancel_button")
	slot0.confirmBtn = slot0:findTF("blur_panel/select_panel/confirm_button")
	slot0.confirmBtnMask = slot0.confirmBtn:Find("mask")
	slot0.allBtn = slot0:findTF("blur_panel/select_panel/all_button")
	slot0.tipTxt = slot0:findTF("blur_panel/select_panel/tip"):GetComponent(typeof(Text))
	slot0.selectedTxt = slot0:findTF("blur_panel/select_panel/bottom_info/bg_input/selected"):GetComponent(typeof(Text))
	slot0.frequentlyUseToggle = slot0:findTF("blur_panel/adapt/top/preference_toggle")
	slot0.lockToggle = slot0:findTF("blur_panel/adapt/top/lock_toggle")
	slot0.sortBtn = slot0:findTF("blur_panel/adapt/top/sort_button")
	slot0.sortTxt = slot0.sortBtn:Find("Image"):GetComponent(typeof(Text))
	slot0.sortUp = slot0.sortBtn:Find("asc")
	slot0.sortDown = slot0.sortBtn:Find("desc")
	slot0.indexBtn = slot0:findTF("blur_panel/adapt/top/index_button")
	slot0.indexBtnSel = slot0.indexBtn:Find("Image")
	slot0.selectedCntTxt = slot0:findTF("blur_panel/select_panel/bottom_info/bg_input/count"):GetComponent(typeof(Text))
	slot0.selectPanelFrame = slot0:findTF("blur_panel/select_panel/bottom_info/bg_input")

	setActive(slot0.sortUp, false)
	setActive(slot0.sortDown, true)
	setText(slot0.emptyTr:Find("Text"), i18n("random_ship_custom_mode_main_empty"))
	setText(slot0.addBtn:Find("Text"), i18n("random_ship_custom_mode_main_button_add"))
	setText(slot0.removeBtn:Find("Text"), i18n("random_ship_custom_mode_main_button_remove"))
	setText(slot0.cancelBtn:Find("Text"), i18n("text_cancel"))
	setText(slot0.confirmBtn:Find("Text"), i18n("text_confirm"))
	setText(slot0.allBtn:Find("Text"), i18n("random_ship_custom_mode_select_all"))

	slot0.msgbox = RandomDockYardMsgBoxPgae.New(slot0._tf, slot0.event)

	slot0:InitDefault()
end

function slot0.InitDefault(slot0)
	slot0.selected = {}
	slot0.titles = {
		[uv0.MODE_VIEW] = GetSpriteFromAtlas("ui/dockyardui_atlas", "title_random_ship"),
		[uv0.MODE_ADD] = GetSpriteFromAtlas("ui/dockyardui_atlas", "title_add_random_ship"),
		[uv0.MODE_REMOVE] = GetSpriteFromAtlas("ui/dockyardui_atlas", "title_remove_random_ship")
	}
	slot0.titleEns = {
		[uv0.MODE_VIEW] = GetSpriteFromAtlas("ui/dockyardui_atlas", "title_rd_en"),
		[uv0.MODE_ADD] = GetSpriteFromAtlas("ui/dockyardui_atlas", "title_add_en"),
		[uv0.MODE_REMOVE] = GetSpriteFromAtlas("ui/dockyardui_atlas", "title_remove_en")
	}
	slot0.msgBoxTitle = {
		[uv0.MODE_VIEW] = {
			cn = "",
			en = ""
		},
		[uv0.MODE_ADD] = {
			en = "ADD",
			cn = i18n("random_ship_custom_mode_add_title")
		},
		[uv0.MODE_REMOVE] = {
			en = "REMOVE",
			cn = i18n("random_ship_custom_mode_remove_title")
		}
	}
	slot0.msgBoxSubTitle = {
		[uv0.MODE_VIEW] = "",
		[uv0.MODE_ADD] = i18n("random_ship_custom_mode_add_tip2"),
		[uv0.MODE_REMOVE] = i18n("random_ship_custom_mode_remove_tip2")
	}
	slot0.tips = {
		[uv0.MODE_VIEW] = i18n("random_ship_custom_mode_main_tip1"),
		[uv0.MODE_ADD] = i18n("random_ship_custom_mode_add_tip1"),
		[uv0.MODE_REMOVE] = i18n("random_ship_custom_mode_remove_tip1")
	}
	slot0.selectedTxts = {
		[uv0.MODE_VIEW] = i18n("random_ship_custom_mode_main_tip2"),
		[uv0.MODE_ADD] = i18n("random_ship_custom_mode_select_number"),
		[uv0.MODE_REMOVE] = i18n("random_ship_custom_mode_select_number")
	}
	slot0.frequentlyUseFlags = {
		[uv0.MODE_VIEW] = false,
		[uv0.MODE_ADD] = false,
		[uv0.MODE_REMOVE] = false
	}
	slot0.lockFlags = {
		[uv0.MODE_VIEW] = false,
		[uv0.MODE_ADD] = false,
		[uv0.MODE_REMOVE] = false
	}
	slot0.sortFlags = {
		[uv0.MODE_VIEW] = false,
		[uv0.MODE_ADD] = false,
		[uv0.MODE_REMOVE] = false
	}
	slot0.indexDatas = {
		[uv0.MODE_VIEW] = {
			sortIndex = ShipIndexConst.SortLevel,
			typeIndex = ShipIndexConst.TypeAll,
			campIndex = ShipIndexConst.CampAll,
			rarityIndex = ShipIndexConst.RarityAll,
			extraIndex = ShipIndexConst.ExtraALL
		},
		[uv0.MODE_ADD] = {
			sortIndex = ShipIndexConst.SortLevel,
			typeIndex = ShipIndexConst.TypeAll,
			campIndex = ShipIndexConst.CampAll,
			rarityIndex = ShipIndexConst.RarityAll,
			extraIndex = ShipIndexConst.ExtraALL
		},
		[uv0.MODE_REMOVE] = {
			sortIndex = ShipIndexConst.SortLevel,
			typeIndex = ShipIndexConst.TypeAll,
			campIndex = ShipIndexConst.CampAll,
			rarityIndex = ShipIndexConst.RarityAll,
			extraIndex = ShipIndexConst.ExtraALL
		}
	}
end

function slot0.didEnter(slot0)
	slot0.cards = {}

	function slot0.scrollrect.onInitItem(slot0)
		uv0:OnItemUpdate(slot0)
	end

	function slot0.scrollrect.onUpdateItem(slot0, slot1)
		uv0:OnUpdateItem(slot0, slot1)
	end

	onButton(slot0, slot0.backBtn, function ()
		if uv0.mode ~= uv1.MODE_VIEW then
			uv0:Switch(uv1.MODE_VIEW)

			return
		end

		uv0:emit(uv1.ON_RETURN, {
			page = NewSettingsScene.PAGE_OPTION,
			scroll = SettingsRandomFlagShipAndSkinPanel
		})
	end, SFX_PANEL)
	onButton(slot0, slot0.addBtn, function ()
		uv0:Switch(uv1.MODE_ADD)
	end, SFX_PANEL)
	onButton(slot0, slot0.removeBtn, function ()
		uv0:Switch(uv1.MODE_REMOVE)
	end, SFX_PANEL)
	onButton(slot0, slot0.cancelBtn, function ()
		if uv0.mode == uv1.MODE_VIEW then
			return
		end

		uv0:Switch(uv1.MODE_VIEW)
	end, SFX_PANEL)
	onButton(slot0, slot0.confirmBtn, function ()
		if uv0.mode == uv1.MODE_VIEW then
			return
		end

		uv0:OnConfirm()
	end, SFX_PANEL)
	onButton(slot0, slot0.allBtn, function ()
		if uv0.mode == uv1.MODE_VIEW then
			return
		end

		uv0:OnAll()
	end, SFX_PANEL)
	onToggle(slot0, slot0.frequentlyUseToggle, function (slot0)
		uv0.frequentlyUseFlags[uv0.mode] = slot0

		uv0:FlushShipList(uv0:GetShipList(uv0.mode))
	end, SFX_PANEL)
	onToggle(slot0, slot0.lockToggle, function (slot0)
		uv0.lockFlags[uv0.mode] = slot0

		uv0:FlushShipList(uv0:GetShipList(uv0.mode))
	end, SFX_PANEL)
	onButton(slot0, slot0.sortBtn, function ()
		uv0.sortFlags[uv0.mode] = not uv0.sortFlags[uv0.mode]

		setActive(uv0.sortUp, uv0.sortFlags[uv0.mode])
		setActive(uv0.sortDown, not uv0.sortFlags[uv0.mode])
		uv0:FlushShipList(uv0:GetShipList(uv0.mode))
	end, SFX_PANEL)
	onButton(slot0, slot0.indexBtn, function ()
		uv0:emit(RandomDockYardMediator.OPEN_INDEX, {
			OnFilter = function (slot0)
				uv0:OnFilter(slot0)
			end,
			defaultIndex = uv0.indexDatas[uv0.mode]
		})
	end, SFX_PANEL)
	slot0:Switch(uv0.MODE_VIEW)
end

function slot0.GetRandomFlagShips(slot0)
	if not slot0.randomFlagShips then
		slot0.randomFlagShips = {}

		for slot6, slot7 in ipairs(getProxy(PlayerProxy):getRawData():GetCustomRandomShipList()) do
			if getProxy(BayProxy):RawGetShipById(slot7) then
				table.insert(slot0.randomFlagShips, slot8)
			end
		end
	end

	return slot0.randomFlagShips
end

function slot0.GetDockYardShipAndNotInRandom(slot0)
	if not slot0.dockyardShips then
		slot2 = {
			[slot7.id] = true
		}

		for slot6, slot7 in ipairs(slot0:GetRandomFlagShips()) do
			-- Nothing
		end

		slot0.dockyardShips = {}

		for slot7, slot8 in pairs(getProxy(BayProxy):getRawData()) do
			if not slot2[slot8.id] and not slot8:isActivityNpc() then
				table.insert(slot0.dockyardShips, slot8)
			end
		end
	end

	return slot0.dockyardShips
end

function slot0.GetShipList(slot0, slot1)
	slot2 = {}

	if slot1 == uv0.MODE_VIEW then
		slot2 = slot0:GetRandomFlagShips()
	elseif slot1 == uv0.MODE_ADD then
		slot2 = slot0:GetDockYardShipAndNotInRandom()
	elseif slot1 == uv0.MODE_REMOVE then
		slot2 = slot0:GetRandomFlagShips()
	end

	return slot2
end

function slot0.Switch(slot0, slot1)
	slot0:Clear()

	slot0.selected = {}
	slot2 = slot0:GetShipList(slot1)

	slot0:UpdateModeStyle(slot1, #slot2)

	slot0.mode = slot1

	slot0:FlushShipList(slot2)

	if slot0.mode == uv0.MODE_VIEW then
		slot0:UpdateSelectedCnt(slot2)
	else
		slot0:UpdateSelectedCnt(slot0.selected)
	end
end

function slot0.UpdateModeStyle(slot0, slot1, slot2)
	slot0.titleImg.sprite = slot0.titles[slot1]

	slot0.titleImg:SetNativeSize()

	slot0.titleEnImg.sprite = slot0.titleEns[slot1]

	slot0.titleEnImg:SetNativeSize()
	setActive(slot0.addBtn, slot1 == uv0.MODE_VIEW)
	setActive(slot0.removeBtn, slot1 == uv0.MODE_VIEW)
	setActive(slot0.cancelBtn, slot1 == uv0.MODE_ADD or slot1 == uv0.MODE_REMOVE)
	setActive(slot0.confirmBtn, slot1 == uv0.MODE_ADD or slot1 == uv0.MODE_REMOVE)
	setActive(slot0.allBtn, slot1 == uv0.MODE_ADD or slot1 == uv0.MODE_REMOVE)

	slot0.tipTxt.text = slot0.tips[slot1]
	slot0.selectedTxt.text = slot0.selectedTxts[slot1]

	setButtonEnabled(slot0.removeBtn, slot1 == uv0.MODE_VIEW and slot2 > 0)
	setAnchoredPosition(slot0.selectPanelFrame, {
		x = slot1 == uv0.MODE_VIEW and 0 or 180
	})
end

function slot0.OnConfirm(slot0)
	slot1 = {}

	for slot5, slot6 in pairs(slot0.selected) do
		table.insert(slot1, slot5)
	end

	slot0.msgbox:ExecuteAction("Flush", slot0.msgBoxTitle[slot0.mode], slot0.msgBoxSubTitle[slot0.mode], slot1, function ()
		if uv0.mode == uv1.MODE_ADD then
			uv0:emit(RandomDockYardMediator.ON_ADD_SHIPS, uv2)
		elseif uv0.mode == uv1.MODE_REMOVE then
			uv0:emit(RandomDockYardMediator.ON_REMOVE_SHIPS, uv2)
		end
	end)
end

function slot0.OnAll(slot0)
	for slot4, slot5 in ipairs(slot0.displays) do
		slot0.selected[slot5.id] = true
	end

	slot0.scrollrect:SetTotalCount(#slot0.displays)
	slot0:UpdateSelectedCnt(slot0.selected)
end

function slot0.UpdateSelectedCnt(slot0, slot1)
	for slot6, slot7 in pairs(slot1) do
		slot2 = 0 + 1
	end

	slot0.selectedCntTxt.text = slot2

	setButtonEnabled(slot0.confirmBtn, slot2 > 0)
	setActive(slot0.confirmBtnMask, slot2 <= 0)
end

function slot1(slot0)
	return slot0.sortIndex ~= ShipIndexConst.SortLevel or slot0.typeIndex ~= ShipIndexConst.TypeAll or slot0.campIndex ~= ShipIndexConst.CampAll or slot0.rarityIndex ~= ShipIndexConst.RarityAll or slot0.extraIndex ~= ShipIndexConst.ExtraALL
end

function slot0.OnFilter(slot0, slot1)
	slot2 = slot0.indexDatas[slot0.mode]
	slot2.sortIndex = slot1.sortIndex
	slot2.typeIndex = slot1.typeIndex
	slot2.campIndex = slot1.campIndex
	slot2.rarityIndex = slot1.rarityIndex
	slot2.extraIndex = slot1.extraIndex

	setActive(slot0.indexBtnSel, uv0(slot2))
	slot0:FlushShipList(slot0:GetShipList(slot0.mode))
end

function slot0.OnItemUpdate(slot0, slot1)
	slot2 = RandomDockYardCard.New(slot1)

	onButton(slot0, slot2._go, function ()
		if uv0.mode == uv1.MODE_VIEW then
			return
		end

		if uv0.selected[uv2.ship.id] then
			uv0.selected[uv2.ship.id] = nil
		else
			uv0.selected[uv2.ship.id] = true
		end

		uv0:UpdateSelectedCnt(uv0.selected)
		uv2:UpdateSelected(uv0.selected[uv2.ship.id])
	end, SFX_PANEL)

	slot0.cards[slot1] = slot2
end

function slot0.OnUpdateItem(slot0, slot1, slot2)
	if not slot0.cards[slot2] then
		slot0:OnItemUpdate(slot2)

		slot3 = slot0.cards[slot2]
	end

	slot4 = slot0.displays[slot1 + 1]

	slot3:Update(slot4, slot0.selected[slot4.id])
end

function slot0.FlushShipList(slot0, slot1)
	slot0.displays = {}

	slot0:FilterShips(slot1, slot0.displays)
	slot0:SortShips(slot0.displays)

	slot2 = #slot0.displays

	slot0.scrollrect:SetTotalCount(slot2)
	setActive(slot0.emptyTr, slot2 <= 0)
end

function slot0.FilterShips(slot0, slot1, slot2)
	slot3 = slot0.lockFlags[slot0.mode]
	slot4 = slot0.frequentlyUseFlags[slot0.mode]
	slot5 = slot0.indexDatas[slot0.mode]

	for slot10, slot11 in ipairs(slot1) do
		if function (slot0)
			return (not uv0 or not not slot0:IsLocked()) and (not uv1 or not not slot0:IsPreferenceTag()) and ShipIndexConst.filterByType(slot0, uv2.typeIndex) and ShipIndexConst.filterByCamp(slot0, uv2.campIndex) and ShipIndexConst.filterByRarity(slot0, uv2.rarityIndex) and ShipIndexConst.filterByExtra(slot0, uv2.extraIndex)
		end(slot11) then
			table.insert(slot2, slot11)
		end
	end
end

function slot0.SortShips(slot0, slot1)
	slot5, slot6 = ShipIndexConst.getSortFuncAndName(slot0.indexDatas[slot0.mode].sortIndex, slot0.sortFlags[slot0.mode])

	table.insert(slot5, 1, function (slot0)
		return -slot0.activityNpc
	end)
	table.sort(slot1, CompareFuncs(slot5))

	slot0.sortTxt.text = i18n(slot6)
end

function slot0.onBackPressed(slot0)
	uv0.super.onBackPressed(slot0)
end

function slot0.Clear(slot0)
	for slot4, slot5 in pairs(slot0.cards) do
		slot5:Dispose()
	end

	slot0.cards = {}
end

function slot0.willExit(slot0)
	slot0.titles = nil

	if slot0.msgbox then
		slot0.msgbox:Destroy()
	end

	slot0.msgbox = nil
end

return slot0
