slot0 = class("SkinGuide5Page", import("...base.BaseActivityPage"))
slot1 = {
	"guandao",
	"lafei2",
	"kelifulan",
	"xingzuo"
}
slot2 = {
	Vector2(-490, 130),
	Vector2(-400, -128),
	Vector2(89, 10),
	Vector2(-489, 71)
}
slot3 = "ui/activityuipage/skinguide5page_atlas"

function slot0.OnInit(slot0)
	slot0.ad = slot0:findTF("AD")
	slot0.paint = findTF(slot0.ad, "paint")
	slot0.paintGot = findTF(slot0.paint, "show/got")
	slot0.paintAnim = GetComponent(slot0.paint, typeof(Animator))
	slot0.itemContent = findTF(slot0.ad, "items/content")
	slot0.itemTpl = findTF(slot0.ad, "items/content/itemTpl")

	setActive(slot0.itemTpl, false)

	slot0.iconContent = findTF(slot0.ad, "iconContent")
	slot0.iconTpl = findTF(slot0.ad, "iconContent/IconTpl")

	setActive(slot0.iconTpl, false)

	slot0.desc = findTF(slot0.ad, "desc")
	slot0.got = findTF(slot0.ad, "got")
	slot0.get = findTF(slot0.ad, "get")
	slot0.getBound = findTF(slot0.ad, "get_bound")
	slot0.times = findTF(slot0.ad, "times")

	onButton(slot0, slot0.get, function ()
		if uv0.selectIndex then
			uv0:emit(ActivityMediator.ON_TASK_SUBMIT, getProxy(TaskProxy):getTaskById(uv0.skinDatas[uv0.selectIndex].task))
		end
	end, sound, guideData)
end

function slot0.OnDataSetting(slot0)
	slot0.taskProxy = getProxy(TaskProxy)
	slot0.taskList = slot0.activity:getConfig("config_data")
	slot0.totalCnt = #slot0.taskList

	if not slot0.skinDatas then
		slot0.skinDatas = {}

		for slot4 = 1, #slot0.taskList do
			slot7 = tf(instantiate(slot0.itemTpl))

			setParent(slot7, slot0.itemContent)
			setActive(slot7, true)
			onButton(slot0, slot7, function ()
				uv0:selectItem(uv1)
			end, SFX_CONFIRM)

			GetComponent(slot7, typeof(Image)).sprite = GetSpriteFromAtlas(uv1, "item_" .. uv0[slot4])
			slot9 = tf(Instantiate(slot0.iconTpl))

			setParent(slot9, slot0.iconContent)
			setActive(slot9, true)

			slot11 = (slot0.taskProxy:getTaskById(slot0.taskList[slot4]) or slot0.taskProxy:getFinishTaskById(slot5)):getConfig("award_display")[1]

			updateDrop(slot9, {
				type = slot11[1],
				id = slot11[2],
				count = slot11[3]
			})
			onButton(slot0, slot9, function ()
				uv0:emit(BaseUI.ON_DROP, uv1)
			end, SFX_PANEL)
			table.insert(slot0.skinDatas, {
				task = slot5,
				name = slot6,
				item = slot7,
				icon = slot9
			})
		end
	end
end

function slot0.selectItem(slot0, slot1)
	for slot5 = 1, #slot0.skinDatas do
		if LeanTween.isTweening(go(slot0.skinDatas[slot5].item)) then
			return
		end
	end

	slot2 = 0

	for slot6 = slot1 + 1, #slot0.skinDatas do
		slot0.skinDatas[slot6].item:SetAsFirstSibling()
		setActive(slot0.skinDatas[slot6].item, slot6 ~= slot1)
		setActive(slot0.skinDatas[slot6].icon, slot6 == slot1)

		slot0.skinDatas[slot6].targetPos = Vector2(slot2 * 215, 0)
		slot2 = slot2 + 1
	end

	for slot6 = 1, slot1 do
		slot0.skinDatas[slot6].item:SetAsFirstSibling()
		setActive(slot0.skinDatas[slot6].item, slot6 ~= slot1)
		setActive(slot0.skinDatas[slot6].icon, slot6 == slot1)

		slot0.skinDatas[slot6].targetPos = Vector2(slot2 * 215, 0)
		slot2 = slot2 + 1
	end

	slot3 = slot0.skinDatas[slot1].task

	setActive(slot0.get, not slot0.taskProxy:getFinishTaskById(slot0.skinDatas[slot1].task) and slot0.remainCnt > 0)
	setActive(slot0.getBound, not slot5 and slot0.remainCnt > 0)
	setActive(slot0.got, slot5)

	slot0.paintGot.anchoredPosition = uv0[slot1]

	setActive(slot0.paintGot, slot5)

	slot6 = GetComponent(findTF(slot0.paint, "show"), typeof(Image))
	slot6.sprite = GetSpriteFromAtlas(uv1, "bg_" .. slot0.skinDatas[slot1].name)

	slot6:SetNativeSize()

	if slot0.selectIndex then
		GetComponent(findTF(slot0.paint, "temp"), typeof(Image)).sprite = GetSpriteFromAtlas(uv1, "bg_" .. slot0.skinDatas[slot0.selectIndex].name)
	else
		slot7.sprite = GetSpriteFromAtlas(uv1, "bg_" .. slot0.skinDatas[slot1].name)
	end

	slot7:SetNativeSize()

	if slot0.selectIndex and slot0.selectIndex ~= slot1 then
		slot8 = nil
		slot8 = (slot0.selectIndex ~= 1 or slot1 ~= #slot0.skinDatas or false) and (slot0.selectIndex == #slot0.skinDatas and slot1 == 1 and true or slot0.selectIndex < slot1 and true or false)

		slot0.paintAnim:SetTrigger(slot8 and "next" or "pre")
		slot0:updateItemPos(true, slot8)
	else
		slot0:updateItemPos(false)
	end

	slot0.selectIndex = slot1
end

function slot0.OnFirstFlush(slot0)
	slot0.usedCnt = slot0.activity:getData1()
	slot0.unlockCnt = pg.TimeMgr.GetInstance():DiffDay(slot0.activity:getStartTime(), pg.TimeMgr.GetInstance():GetServerTime()) + 1
	slot0.unlockCnt = slot0.totalCnt < slot0.unlockCnt and slot0.totalCnt or slot0.unlockCnt
	slot0.remainCnt = slot0.totalCnt <= slot0.usedCnt and 0 or slot0.unlockCnt - slot0.usedCnt

	setText(slot0.desc, i18n("skin_page_desc", slot0.activity:getConfig("config_id")))
	setText(findTF(slot0.get, "desc"), i18n("skin_page_sign"))

	for slot5 = 1, #slot0.skinDatas do
		if not (slot0.taskProxy:getFinishTaskById(slot0.skinDatas[slot5].task) or false) then
			slot1 = 1 or slot5
		end
	end

	slot0:selectItem(slot1)
	slot0:updateItemData()
end

function slot0.OnUpdateFlush(slot0)
	for slot5, slot6 in ipairs(slot0.taskList) do
		if slot0.taskProxy:getFinishTaskById(slot6) ~= nil then
			slot1 = 0 + 1
		end
	end

	if slot0.usedCnt ~= slot1 then
		slot0.usedCnt = slot1
		slot2 = slot0.activity
		slot2.data1 = slot0.usedCnt

		getProxy(ActivityProxy):updateActivity(slot2)
	end

	slot0.unlockCnt = (pg.TimeMgr.GetInstance():DiffDay(slot0.activity:getStartTime(), pg.TimeMgr.GetInstance():GetServerTime()) + 1) * slot0.activity:getConfig("config_id")
	slot0.unlockCnt = slot0.totalCnt < slot0.unlockCnt and slot0.totalCnt or slot0.unlockCnt
	slot0.remainCnt = slot0.totalCnt <= slot0.usedCnt and 0 or slot0.unlockCnt - slot0.usedCnt

	setText(findTF(slot0.times, "desc"), i18n("last_times_sign", slot0.remainCnt))

	slot2 = slot0.activity:getConfig("config_client").story

	for slot6, slot7 in ipairs(slot0.taskList) do
		if slot0.taskProxy:getFinishTaskById(slot7) and checkExist(slot2, {
			slot6
		}, {
			1
		}) then
			pg.NewStoryMgr.GetInstance():Play(slot2[slot6][1])
		end
	end

	slot0:selectItem(slot0.selectIndex)
	slot0:updateItemData()
end

slot4 = 215

function slot0.updateItemPos(slot0, slot1, slot2)
	slot3 = Vector2(-uv0, 0)
	slot4 = Vector2((#slot0.skinDatas - 1) * uv0, 0)

	for slot8 = 1, #slot0.skinDatas do
		if LeanTween.isTweening(go(slot0.skinDatas[slot8].item)) then
			LeanTween.cancel(go(slot9))
		end

		slot10 = slot0.skinDatas[slot8].targetPos

		if slot1 then
			slot12 = {}

			if not slot2 and slot10.x < slot9.anchoredPosition.x then
				table.insert(slot12, slot4)
				table.insert(slot12, slot3)
			elseif slot2 and slot11.x < slot10.x then
				table.insert(slot12, slot3)
				table.insert(slot12, slot4)
			end

			table.insert(slot12, slot10)
			table.insert(slot12, slot10)
			slot0:tweenItem(slot9, slot12)
		else
			slot9.anchoredPosition = slot10
		end
	end
end

function slot0.tweenItem(slot0, slot1, slot2)
	if #slot2 >= 2 then
		slot3 = slot1.anchoredPosition
		slot4 = table.remove(slot2, 1)
		slot5 = table.remove(slot2, 1)

		LeanTween.value(go(slot1), slot3.x, slot4.x, math.abs(slot4.x - slot3.x) / uv0 * 0.25):setOnUpdate(System.Action_float(function (slot0)
			uv0.x = slot0
			uv1.anchoredPosition = uv0
		end)):setOnComplete(System.Action(function ()
			uv0.anchoredPosition = uv1

			uv2:tweenItem(uv0, uv3)
		end))
	end
end

function slot0.updateItemData(slot0)
	for slot4 = 1, #slot0.skinDatas do
		setActive(findTF(slot0.skinDatas[slot4].item, "got"), slot0.taskProxy:getFinishTaskById(slot0.skinDatas[slot4].task) or false)
	end
end

function slot0.OnDestroy(slot0)
	for slot4 = 1, #slot0.skinDatas do
		if LeanTween.isTweening(go(slot0.skinDatas[slot4].item)) then
			LeanTween.cancel(go(slot5), false)
		end
	end
end

return slot0