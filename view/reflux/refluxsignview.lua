slot0 = class("RefluxSignView", import("..base.BaseSubView"))

function slot0.getUIName(slot0)
	return "RefluxSignUI"
end

function slot0.OnInit(slot0)
	slot0:initData()
	slot0:initUI()
	slot0:updateUI()
	slot0:tryAutoSign()
end

function slot0.OnDestroy(slot0)
end

function slot0.OnBackPress(slot0)
	slot0:Hide()
end

function slot0.initData(slot0)
	slot0.refluxProxy = getProxy(RefluxProxy)
	slot0.dayAwardList = slot0:getAllAwardList()
	slot0.totalSignCount = #pg.return_sign_template.all
end

function slot0.initUI(slot0)
	slot0.daySpriteList = {}

	for slot5 = 0, slot0.totalSignCount - 1 do
		table.insert(slot0.daySpriteList, getImageSprite(slot0:findTF("DayImg"):GetChild(slot5)))
	end

	slot0.dayTpl = slot0:findTF("DayTpl")
	slot0.scrollRectTF = slot0:findTF("ScrollRect")
	slot0.dayContainerTF = slot0:findTF("ScrollRect/Container")
	slot0.signCountText = slot0:findTF("DayCount/Text")
	slot0.dayUIItemList = UIItemList.New(slot0.dayContainerTF, slot0.dayTpl)

	slot0.dayUIItemList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot6 = uv0:findTF("DayImg", slot2)
			slot7 = uv0:findTF("Got", slot2)
			slot8 = uv0:findTF("GotMask", slot2)

			for slot14, slot15 in ipairs({
				uv0:findTF("Item1/Icon", slot2),
				uv0:findTF("Item2/Icon", slot2),
				uv0:findTF("Item3/Icon", slot2)
			}) do
				if uv0.dayAwardList[slot1 + 1][slot14].type ~= DROP_TYPE_SHIP then
					setImageSprite(slot15, LoadSprite(slot16:getIcon()))
				else
					setImageSprite(slot15, LoadSprite("QIcon/" .. Ship.New({
						configId = slot16.id
					}):getPainting()))
				end
			end

			slot11 = slot1 <= uv0.refluxProxy.signCount

			setActive(slot7, slot11)
			setActive(slot8, slot11)
			setImageSprite(slot6, uv0.daySpriteList[slot1])
		end
	end)

	slot0.scrollSC = slot0.scrollRectTF:GetComponent(typeof(ScrollRect))
	slot0.hlgSC = slot0.dayContainerTF:GetComponent(typeof(HorizontalLayoutGroup))
	slot0.hlgLeft = slot0.hlgSC.padding.left
	slot0.hlgSpacing = slot0.hlgSC.spacing
	slot0.tplWidth = slot0.dayTpl:GetComponent(typeof(LayoutElement)).preferredWidth
end

function slot0.updateUI(slot0)
	setText(slot0.signCountText, slot0.refluxProxy.signCount)
	slot0.dayUIItemList:align(slot0.totalSignCount)
	slot0:autoScroll(slot0.refluxProxy.signCount)
end

function slot0.updateOutline(slot0)
end

function slot0.getAllAwardList(slot0)
	slot1 = {}
	slot2 = slot0.refluxProxy.returnLV

	for slot6, slot7 in ipairs(pg.return_sign_template.all) do
		slot8 = pg.return_sign_template[slot7]
		slot12 = {}

		for slot17, slot18 in ipairs(slot8.award_display[slot0:getLevelIndex(slot2, slot8.level)]) do
			table.insert(slot12, Drop.Create(slot18))
		end

		table.insert(slot1, slot12)
	end

	return slot1
end

function slot0.getLevelIndex(slot0, slot1, slot2)
	for slot6, slot7 in ipairs(slot2) do
		if slot7[1] <= slot1 and slot1 <= slot7[2] then
			return slot6
		end
	end
end

function slot0.tryAutoSign(slot0)
	if slot0.refluxProxy:isCanSign() then
		pg.m02:sendNotification(GAME.REFLUX_SIGN)
	end
end

function slot0.autoScroll(slot0, slot1)
	slot3 = 0
	slot0.scrollSC.horizontalNormalizedPosition = math.clamp(slot1 == 1 and 0 or slot1 == slot0.dayContainerTF.childCount and 1 or slot1 / slot0.dayContainerTF.childCount, 0, 1)
end

return slot0
