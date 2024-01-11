slot0 = class("ShopSkinCard")
slot1 = pg.ship_data_group
slot2 = pg.shop_template
slot3 = pg.skin_page_template
slot4 = pg.ship_skin_template

function slot0.Ctor(slot0, slot1, slot2)
	slot0.view = slot2
	slot0._go = slot1
	slot0._tf = tf(slot1)
	slot0._content = slot0._tf:Find("ship/content")
	slot0._mask = slot0._tf:Find("ship/mask")
	slot0._icon = slot0._tf:Find("ship/content/main/bg/icon"):GetComponent(typeof(Image))
	slot0._priceTF = slot0._tf:Find("ship/content/main/bg/price")

	setActive(slot0._priceTF, false)

	slot0._priceIcon = slot0._priceTF:Find("gem"):GetComponent(typeof(Image))
	slot0._priceTxt = slot0._priceTF:Find("gem/Text"):GetComponent(typeof(Text))
	slot0._opriceTxt = slot0._priceTF:Find("originalprice"):GetComponent(typeof(Text))
	slot0._tagTFs = {
		slot0._tf:Find("ship/content/top/tags/tag_hot"),
		slot0._tf:Find("ship/content/top/tags/tag_new"),
		slot0._tf:Find("ship/content/top/tags/tag_advice"),
		slot0._tf:Find("ship/content/top/tags/tag_activity"),
		slot0._tf:Find("ship/content/top/tags/tag_discount"),
		slot0._tf:Find("ship/content/top/tags/tag_nothing"),
		slot0._tf:Find("ship/content/top/tags/tag_bought"),
		slot0._tf:Find("ship/content/top/tags/tag_limit"),
		slot0._tf:Find("ship/content/top/tags/tag_timelimit"),
		slot0._tf:Find("ship/content/top/tags/tag_return")
	}

	onButton(nil, slot0._go, function ()
		uv0.view:emit(SkinShopScene.EVENT_ON_CARD_CLICK, uv0)
	end, SFX_PANEL)
end

function slot0.update(slot0, slot1)
	slot0.goodsVO = slot1
	slot2 = slot1:getSkinId()
	slot0.shipSkinConfig = uv0[slot2]
	slot0._icon.sprite = nil

	LoadSpriteAsync("shipYardIcon/" .. uv0[slot2].prefab, function (slot0)
		if not IsNil(uv0._icon) then
			uv0._icon.sprite = slot0
		end
	end)

	for slot7, slot8 in pairs(slot0._tagTFs) do
		setActive(slot8, false)
	end

	if slot0.goodsVO.type == Goods.TYPE_SKIN then
		slot0._priceIcon.sprite = LoadSprite(getDropIcon({
			type = DROP_TYPE_RESOURCE,
			id = slot1:getConfig("resource_type")
		}))
		slot0._priceTxt.text, slot9 = slot1:GetPrice()
		slot0._opriceTxt.text = slot1:getConfig("resource_num")

		setActive(go(slot0._opriceTxt), slot1:isDisCount() and slot9 > 0)

		slot11 = slot1:getConfig("genre") == ShopArgs.SkinShopTimeLimit

		if slot0.view.encoreSkinMap[slot1.id] and slot1.buyCount == 0 then
			setActive(slot0._tagTFs[10], true)
		elseif slot11 then
			setActive(slot0._tagTFs[9], true)
		elseif slot10 then
			if slot7 or slot0.goodsVO:getConfig("tag") == 5 then
				setText(slot0._tagTFs[5]:Find("Text"), string.format("%0.2f", slot9) .. "%")
				setActive(slot0._tagTFs[5], true)
			elseif slot0._tagTFs[slot13] then
				setActive(slot0._tagTFs[slot13], true)
			else
				setActive(slot0._tagTFs[6], true)
			end
		else
			setActive(slot0._tagTFs[7], true)
		end
	end

	slot5 = 0

	if slot2 == 302053 then
		slot5 = 39
	elseif slot2 == 502052 then
		slot5 = 60
	end

	setAnchoredPosition(slot0._icon.gameObject, {
		y = slot5
	})
end

function slot0.updateSelected(slot0, slot1)
	slot0._content.localPosition = Vector3(0, slot1 and -26 or -126, 0)

	setActive(slot0._priceTF, slot1 and slot0.goodsVO.type == Goods.TYPE_SKIN)
	setActive(slot0._mask, not slot1)
end

function slot0.Dispose(slot0)
	removeOnButton(slot0._go)

	slot0._go = nil
	slot0._tf = nil
	slot0._tagTFs = nil
end

return slot0
