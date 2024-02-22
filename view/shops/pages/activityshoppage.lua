slot0 = class("ActivityShopPage", import(".BaseShopPage"))

function slot0.getUIName(slot0)
	return "ActivityShop"
end

function slot0.GetPaintingName(slot0)
	assert(slot0.shop)

	if pg.activity_template[slot0.shop.activityId] and slot1.config_client then
		if slot1.config_client.use_secretary or getProxy(ActivityProxy):checkHxActivity(slot0.shop.activityId) then
			slot6 = getProxy(SettingsProxy):getCurrentSecretaryIndex()
			slot0.tempFlagShip = getProxy(BayProxy):getShipById(getProxy(PlayerProxy):getData().characters[1])

			return slot0.tempFlagShip:getPainting(), true, "build"
		elseif slot1.config_client.painting then
			return slot1.config_client.painting
		end
	end

	return "aijiang_pt"
end

function slot0.GetBg(slot0, slot1)
	return slot1:getBgPath()
end

function slot0.GetPaintingEnterVoice(slot0)
	slot1, slot2, slot3 = slot0.shop:GetEnterVoice()

	return slot2, slot1, slot3
end

function slot0.GetPaintingCommodityUpdateVoice(slot0)
	slot1, slot2, slot3 = slot0.shop:GetPurchaseVoice()

	return slot2, slot1, slot3
end

function slot0.GetPaintingAllPurchaseVoice(slot0)
	slot1, slot2, slot3 = slot0.shop:GetPurchaseAllVoice()

	return slot2, slot1, slot3
end

function slot0.GetPaintingTouchVoice(slot0)
	slot1, slot2, slot3 = slot0.shop:GetTouchVoice()

	return slot2, slot1, slot3
end

function slot0.OnLoaded(slot0)
	slot0.resTrList = {
		{
			slot0:findTF("res_battery"):GetComponent(typeof(Image)),
			slot0:findTF("res_battery/icon"):GetComponent(typeof(Image)),
			slot0:findTF("res_battery/Text"):GetComponent(typeof(Text)),
			slot0:findTF("res_battery/label"):GetComponent(typeof(Text))
		},
		{
			slot0:findTF("res_battery1"):GetComponent(typeof(Image)),
			slot0:findTF("res_battery1/icon"):GetComponent(typeof(Image)),
			slot0:findTF("res_battery1/Text"):GetComponent(typeof(Text)),
			slot0:findTF("res_battery1/label"):GetComponent(typeof(Text))
		}
	}
	slot0.eventResCnt = slot0:findTF("event_res_battery/Text"):GetComponent(typeof(Text))
	slot0.time = slot0:findTF("Text"):GetComponent(typeof(Text))
end

function slot0.OnInit(slot0)
end

function slot0.OnUpdatePlayer(slot0)
	if slot0.shop:IsEventShop() then
		slot0.eventResCnt.text = slot0.player:getResource(slot0.shop:getResId())
	else
		for slot5, slot6 in pairs(slot0.resTrList) do
			slot8 = slot6[2]

			setActive(slot6[1], slot0.shop:GetResList()[slot5] ~= nil)

			if slot10 ~= nil then
				slot6[3].text = slot0.player:getResource(slot10)
			end
		end
	end
end

function slot0.OnSetUp(slot0)
	slot0:SetResIcon()
	slot0:UpdateTip()
end

function slot0.OnUpdateAll(slot0)
	slot0:InitCommodities()
end

function slot0.OnUpdateCommodity(slot0, slot1)
	slot2 = nil

	for slot6, slot7 in pairs(slot0.cards) do
		if slot7.goodsVO.id == slot1.id then
			slot2 = slot7

			break
		end
	end

	if slot2 then
		slot3, slot4, slot5 = slot0.shop:getBgPath()

		slot2:update(slot1, nil, slot4, slot5)
	end
end

function slot0.SetResIcon(slot0, slot1)
	slot2 = slot0.shop:GetResList()

	for slot6, slot7 in ipairs(slot0.resTrList) do
		slot8 = slot7[1]
		slot9 = slot7[2]
		slot10 = slot7[3]

		if slot2[slot6] ~= nil then
			slot13 = Drop.New({
				type = slot1 or DROP_TYPE_RESOURCE,
				id = slot12
			})

			GetSpriteFromAtlasAsync(slot13:getIcon(), "", function (slot0)
				uv0.sprite = slot0
			end)

			slot7[4].text = slot13:getName()
		end
	end

	slot3 = slot0.shop:IsEventShop()

	setActive(slot0:findTF("res_battery"), not slot3)
	setActive(slot0:findTF("res_battery1"), not slot3 and #slot2 > 1)
	setActive(slot0:findTF("event_res_battery"), slot3)
end

function slot0.UpdateTip(slot0)
	slot0.time.text = "<size=" .. (#slot0.shop:GetResList() > 1 and 25 or 27) .. ">" .. i18n("activity_shop_lable", slot0.shop:getOpenTime()) .. "</size>"
end

function slot0.OnInitItem(slot0, slot1)
	slot2 = ActivityGoodsCard.New(slot1)
	slot2.tagImg.raycastTarget = false

	onButton(slot0, slot2.tr, function ()
		uv0:OnClickCommodity(uv1.goodsVO, function (slot0, slot1)
			uv0:OnPurchase(slot0, slot1)
		end)
	end, SFX_PANEL)

	slot0.cards[slot1] = slot2
end

function slot0.OnUpdateItem(slot0, slot1, slot2)
	if not slot0.cards[slot2] then
		slot0:OnInitItem(slot2)

		slot3 = slot0.cards[slot2]
	end

	slot5, slot6, slot7 = slot0.shop:getBgPath()

	slot3:update(slot0.displays[slot1 + 1], nil, slot6, slot7)
end

function slot0.TipPurchase(slot0, slot1, slot2, slot3, slot4)
	slot5, slot6 = slot1:GetTranCntWhenFull(slot2)

	if slot5 > 0 then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("pt_shop_tran_tip", math.max(slot2 - slot5, 0), slot3, slot5 * slot6.count, slot6:getConfig("name")),
			onYes = slot4
		})
	else
		slot4()
	end
end

function slot0.OnPurchase(slot0, slot1, slot2)
	if slot1:getConfig("commodity_type") == DROP_TYPE_ITEM and getProxy(BagProxy):RawGetItemById(slot1:getConfig("commodity_id")) and slot5:IsShipExpType() and slot5:IsMaxCnt() then
		pg.TipsMgr.GetInstance():ShowTips(i18n("item_is_max_cnt"))

		return
	end

	slot0:emit(NewShopsMediator.ON_ACT_SHOPPING, slot0.shop.activityId, 1, slot1.id, slot2)
end

function slot0.OnClickCommodity(slot0, slot1, slot2)
	if not slot1:CheckCntLimit() then
		return
	end

	if slot3 and not slot1:CheckArgLimit() then
		slot5, slot6, slot7, slot8 = slot1:CheckArgLimit()

		if slot6 == ShopArgs.LIMIT_ARGS_META_SHIP_EXISTENCE then
			pg.TipsMgr.GetInstance():ShowTips(i18n("meta_shop_exchange_limit_tip", (ShipGroup.getDefaultShipConfig(slot8) or {}).name or ""))
		elseif slot6 == ShopArgs.LIMIT_ARGS_SALE_START_TIME then
			slot9 = {
				year = slot8[1][1],
				month = slot8[1][2],
				day = slot8[1][3],
				hour = slot8[2][1],
				min = slot8[2][2],
				sec = slot8[2][3]
			}

			pg.TipsMgr.GetInstance():ShowTips(i18n("meta_shop_exchange_limit_2_tip", slot9.year, slot9.month, slot9.day, slot9.hour, slot9.min, slot9.sec))
		end

		return
	end

	uv0.super.OnClickCommodity(slot0, slot1, slot2)
end

function slot0.Show(slot0)
	uv0.super.Show(slot0)

	if slot0.shop:GetBGM() ~= "" then
		pg.BgmMgr.GetInstance():Push(slot0.__cname, slot0.shop:GetBGM())
	end
end

function slot0.Hide(slot0)
	uv0.super.Hide(slot0)

	if slot0.shop:GetBGM() ~= "" then
		pg.BgmMgr.GetInstance():Pop(slot0.__cname)
	end
end

return slot0
