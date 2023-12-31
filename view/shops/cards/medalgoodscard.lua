slot0 = class("MedalGoodsCard", import(".BaseGoodsCard"))

function slot0.Ctor(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)

	slot0._go = slot1
	slot0._tr = tf(slot1)
	slot0.itemTF = slot0._tr:Find("item")
	slot0.itemIconBgTF = slot0.itemTF:Find("icon_bg")
	slot0.itemIconFrameTF = slot0.itemTF:Find("icon_bg/frame")
	slot0.itemIconTF = slot0.itemTF:Find("icon_bg/icon")
	slot0.itemCountTF = slot0.itemTF:Find("icon_bg/count"):GetComponent(typeof(Text))
	slot0.discountTF = slot0._tr:Find("item/discount")
	slot0.nameTF = slot0._tr:Find("item/name_mask/name"):GetComponent(typeof(Text))
	slot0.consumeIconTF = slot0._tr:Find("item/consume/contain/icon")
	slot0.consumeTxtTF = slot0._tr:Find("item/consume/contain/Text"):GetComponent(typeof(Text))
	slot0.maskTF = slot0._tr:Find("mask")
	slot0.cntTxt = slot0._tr:Find("item/count_contain/count"):GetComponent(typeof(Text))
	slot0.groupMark = slot0._tr:Find("item/group_locked")
	slot0.limitCountLabelTF = findTF(slot0._tr, "item/count_contain/label"):GetComponent(typeof(Text))
	slot0.limitCountLabelTF.text = i18n("activity_shop_exchange_count")

	setActive(slot0.discountTF, false)

	slot0.selloutTag = slot0._tr:Find("mask/tag/sellout_tag")
end

function slot0.update(slot0, slot1)
	if slot0.goods ~= slot1 then
		slot0.goods = slot1

		slot0:Init()
	else
		slot0.goods = slot1
	end

	slot0.cntTxt.text = slot0.goods.count .. "/" .. slot0.goods:GetLimit()
	slot2 = slot0.goods:CanPurchase()

	setActive(slot0.maskTF, not slot2)
	setActive(slot0.selloutTag, not slot2)
end

function slot0.Init(slot0)
	if string.match(slot0.goods:getConfig("goods_name"), "(%d+)") then
		setText(slot0.nameTF, shortenString(slot1, 5))
	else
		setText(slot0.nameTF, shortenString(slot1, 6))
	end

	slot0.consumeTxtTF.text = slot0.goods:getConfig("price")

	GetImageSpriteFromAtlasAsync("props/medal", "", slot0.consumeIconTF)
	GetImageSpriteFromAtlasAsync(slot0.goods:getConfig("goods_icon"), "", slot0.itemIconTF)

	slot0.itemCountTF.text = slot0.goods:getConfig("num")
	slot2 = ItemRarity.Rarity2Print(slot0.goods:getConfig("goods_rarity") or 1)

	setImageSprite(slot0.itemIconBgTF, GetSpriteFromAtlas("weaponframes", "bg" .. slot2))
	setImageColor(slot0.itemIconFrameTF, shipRarity2FrameColor(slot2 + 1))

	slot4 = slot0.goods:getConfig("goods")

	if slot0.groupMark and slot0.goods:getConfig("is_ship") == 1 and #slot4 == 1 then
		if pg.ship_data_template[slot4[1]].group_type and slot7 > 0 then
			setActive(slot0.groupMark, not getProxy(CollectionProxy):getShipGroup(slot7))
		else
			setActive(slot0.groupMark, false)
		end
	else
		setActive(slot0.groupMark, false)
	end
end

function slot0.OnDispose(slot0)
	slot0.goods = nil
end

return slot0
