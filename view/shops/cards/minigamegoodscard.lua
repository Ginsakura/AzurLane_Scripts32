slot0 = class("MiniGameGoodsCard", import(".BaseGoodsCard"))

function slot0.Ctor(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)

	slot0.go = slot1
	slot0.tr = tf(slot1)
	slot0.mask = slot0.tr:Find("mask")
	slot0.selloutTag = slot0.tr:Find("mask/tag/sellout_tag")

	setActive(slot0.selloutTag, true)
	setText(slot0.selloutTag, i18n("common_sale_out"))

	slot0.levelTag = slot0.tr:Find("mask/tag/level_tag")

	setText(slot0.levelTag, i18n("shop_charge_level_limit"))

	slot0.levelTagText = slot0.tr:Find("mask/tag/level_tag/Text")
	slot0.stars = slot0.tr:Find("item/icon_bg/stars")
	slot0.itemTF = findTF(slot0.tr, "item")
	slot0.nameTxt = findTF(slot0.tr, "item/name_mask/name")
	slot0.discountTF = findTF(slot0.tr, "item/discount")
	slot0.discountTextTF = findTF(slot0.discountTF, "Text"):GetComponent(typeof(Text))
	slot0.countTF = findTF(slot0.tr, "item/consume/contain/Text"):GetComponent(typeof(Text))
	slot0.resIconTF = findTF(slot0.tr, "item/consume/contain/icon"):GetComponent(typeof(Image))
	slot0.itemIconTF = slot0.itemTF:Find("icon_bg/icon"):GetComponent(typeof(Image))
	slot0.itemCountTF = slot0.itemTF:Find("icon_bg/count"):GetComponent(typeof(Text))
	slot0.countContainTf = findTF(slot0.tr, "item/count_contain/count")

	setText(findTF(slot0.tr, "item/count_contain/label"), i18n("activity_shop_exchange_count"))

	slot0.maskTip = i18n("buy_countLimit")

	setText(slot0.tr:Find("mask/tag/sellout_tag"), i18n("word_sell_out"))
	onButton(slot0, slot0.mask, function ()
		pg.TipsMgr.GetInstance():ShowTips(uv0.maskTip)
	end, SFX_PANEL)
end

function slot0.setGroupMask(slot0, slot1)
	slot3 = slot0.goodsVO:getConfig("group_limit") > 0 and slot2 <= slot1

	if isActive(slot0.mask) then
		return
	end

	setActive(slot0.mask, slot3)

	if slot2 > 0 and slot2 <= slot1 then
		setActive(slot0.selloutTag, true)
		setActive(slot0.levelTag, false)
	end
end

function slot0.setLevelMask(slot0, slot1)
	slot2 = slot0.goodsVO:getLevelLimit(slot1)
	slot3 = slot0.goodsVO:isLevelLimit(slot1)

	if isActive(slot0.mask) then
		return
	end

	setActive(slot0.mask, slot3)

	if slot3 then
		setText(slot0.levelTagText, tostring(slot2))
		setActive(slot0.levelTag, true)
		setActive(slot0.selloutTag, false)

		slot0.maskTip = i18n("charge_level_limit")
	end
end

function slot0.update(slot0, slot1)
	slot0.goodsVO = slot1

	setActive(slot0.mask, not slot0.goodsVO:CanPurchase())
	setActive(slot0.stars, false)

	slot3 = slot1:GetDropInfo()

	updateDrop(slot0.itemTF, slot3)
	setText(slot0.nameTxt, shortenString(slot3:getConfig("name") or "", 6))

	slot5 = ""

	setText(slot0.countContainTf, slot1:GetMaxCnt() .. "/" .. slot1:getConfig("goods_purchase_limit"))
	setActive(slot0.discountTF, false)

	slot0.countTF.text = math.ceil(slot1:getConfig("price"))

	GetSpriteFromAtlasAsync("ui/ShopsUI_atlas", "minigameRes", function (slot0)
		uv0.resIconTF:GetComponent(typeof(Image)).sprite = slot0
	end)
end

function slot0.OnDispose(slot0)
	slot0.goodsVO = nil
end

return slot0
