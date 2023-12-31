slot0 = class("FeastTaskPage", import("view.base.BaseSubView"))
slot0.PAGE_PT = 1
slot0.PAGE_TASK = 2

function slot0.getUIName(slot0)
	return "FeastTaskPage"
end

function slot0.OnLoaded(slot0)
	slot0.getAllBtn = slot0:findTF("main/getall")
	slot0.getAllTip = slot0.getAllBtn:Find("tip")
	slot0.levelTxt = slot0:findTF("main/level/Text"):GetComponent(typeof(Text))
	slot0.progressTxt = slot0:findTF("main/level/value/Text"):GetComponent(typeof(Text))
	slot0.progress = slot0:findTF("main/level/progress/bar")
	slot0.lastAwardItem = slot0:findTF("main/level/item")
	slot0.lastAwardLvTxt = slot0.lastAwardItem:Find("lock/Text"):GetComponent(typeof(Text))

	setText(slot0.lastAwardItem:Find("get"), i18n("feast_task_pt_get"))
	setText(slot0.lastAwardItem:Find("got"), i18n("feast_task_pt_got"))
	setText(slot0:findTF("main/tip"), i18n("feast_click_to_close"))
	setText(slot0:findTF("main/level/value/label"), i18n("feast_task_pt_label"))

	slot0.taskTip = slot0:findTF("main/toggles/task/tip")
	slot0.toggles = {
		slot0:findTF("main/toggles/pt"),
		slot0:findTF("main/toggles/task")
	}
	slot0.scrollRects = {
		slot0:findTF("main/pt/scrollrect"):GetComponent("LScrollRect"),
		slot0:findTF("main/task/scrollrect"):GetComponent("LScrollRect")
	}
	slot0.cardCls = {
		FeastPtCard,
		FeastTaskCard
	}
	slot0.cards = {
		{},
		{}
	}
	slot0.counts = {
		0,
		0
	}

	slot0:AddListener()
end

function slot0.AddListener(slot0)
	slot0:bind(FeastScene.ON_TASK_UPDATE, function (slot0)
		if uv0:isShowing() then
			uv0:GenTaskData()
			uv0:UpdateLevel()

			if uv0.page == uv1.PAGE_TASK then
				uv0:SwitchPage(uv0.page)
			end
		end
	end)
	slot0:bind(FeastScene.ON_ACT_UPDATE, function (slot0)
		if uv0:isShowing() then
			uv0:GenPtData()
			uv0:UpdateLevel()

			if uv0.page == uv1.PAGE_PT then
				uv0:SwitchPage(uv0.page)
			end
		end
	end)
end

function slot0.OnInit(slot0)
	for slot4, slot5 in ipairs(slot0.scrollRects) do
		function slot5.onInitItem(slot0)
			uv0:OnInitItem(uv1, slot0)
		end

		function slot5.onUpdateItem(slot0, slot1)
			uv0:OnUpdateItem(uv1, slot0, slot1)
		end
	end

	for slot4, slot5 in ipairs(slot0.toggles) do
		onToggle(slot0, slot5, function (slot0)
			if slot0 then
				uv0:SwitchPage(uv1)
			end
		end, SFX_PANEL)
	end

	onButton(slot0, slot0._tf, function ()
		uv0:Hide()
	end, SFX_PANEL)
	onButton(slot0, slot0.getAllBtn, function ()
		if uv0.page == uv1.PAGE_TASK then
			uv0:GetAllForTask()
		elseif uv0.page == uv1.PAGE_PT then
			uv0:GetAllForPt()
		end
	end, SFX_PANEL)
end

function slot0.UpdateGetAllTip(slot0, slot1)
	slot3 = false

	if slot1 == uv0.PAGE_PT then
		slot3 = getProxy(FeastProxy):ShouldTipPt()
	elseif slot1 == uv0.PAGE_TASK then
		slot3 = slot2:ShouldTipFeastTask()
	end

	setActive(slot0.getAllTip, slot3)
	setActive(slot0.taskTip, slot2:ShouldTipFeastTask())
end

function slot0.GetAllForTask(slot0)
	slot1 = {}

	for slot6, slot7 in ipairs(slot0.taskList) do
		if getProxy(TaskProxy):getTaskById(slot7) and slot8:isFinish() and not slot8:isReceive() then
			table.insert(slot1, slot8)
		end
	end

	if #slot1 <= 0 then
		pg.TipsMgr.GetInstance():ShowTips(i18n("faest_nothing_to_get"))

		return
	end

	slot0:emit(FeastMediator.ON_SUBMIT_ONE_KEY, slot1)
end

function slot0.GetAllForPt(slot0)
	if not slot0.ptActData:CanGetAward() then
		pg.TipsMgr.GetInstance():ShowTips(i18n("faest_nothing_to_get"))

		return
	end

	slot0:emit(FeastMediator.EVENT_PT_OPERATION, {
		cmd = 4,
		activity_id = slot0.ptActData:GetId(),
		arg1 = slot0.ptActData:GetCurrTarget()
	})
end

function slot0.SwitchPage(slot0, slot1)
	slot0.scrollRects[slot1]:SetTotalCount(slot0.counts[slot1] or 0)

	slot0.page = slot1

	slot0:UpdateGetAllTip(slot1)
	slot0:UpdateLevel()
end

function slot0.UpdateLevel(slot0)
	slot0.levelTxt.text = slot0.ptActData:GetCurrLevel()
	slot2 = 0
	slot3 = 0

	if not slot0.ptActData:IsMaxLevel() then
		slot4 = slot0.ptActData:GetPtTarget(slot1)
		slot3 = slot0.ptActData:GetNextLevelTarget() - slot4
		slot0.progressTxt.text = math.min(slot0.ptActData.count - slot4, slot3) .. "/" .. slot3
	else
		slot3 = 1
		slot2 = 1
		slot0.progressTxt.text = "MAX"
	end

	setFillAmount(slot0.progress, slot2 / slot3)

	slot4 = slot0.page == uv0.PAGE_PT

	setActive(slot0.lastAwardItem, slot4)

	if slot4 then
		slot0:UpdateLastAward()
	end
end

function slot0.UpdateLastAward(slot0)
	updateDrop(slot0.lastAwardItem:Find("award"), slot0.ptActData:GetLastAward())

	slot3 = slot0.ptActData.targets
	slot0.lastAwardLvTxt.text = i18n("feast_task_pt_level", #slot3)

	setActive(slot0.lastAwardItem:Find("lock"), slot0.ptActData:GetDroptItemState(#slot3) == ActivityPtData.STATE_LOCK)
	setActive(slot0.lastAwardItem:Find("get"), slot4 == ActivityPtData.STATE_CAN_GET)
	setActive(slot0.lastAwardItem:Find("got"), slot4 == ActivityPtData.STATE_GOT)
	onButton(slot0, slot1, function ()
		if uv0 == ActivityPtData.STATE_CAN_GET then
			uv1:emit(FeastMediator.EVENT_PT_OPERATION, {
				cmd = 1,
				activity_id = uv1.ptActData:GetId(),
				arg1 = uv1.ptActData:GetPtTarget(#uv2)
			})
		else
			uv1:emit(BaseUI.ON_DROP, uv3)
		end
	end, SFX_PANEL)
end

function slot0.Show(slot0)
	uv0.super.Show(slot0)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
	slot0:GenPtData()
	slot0:GenTaskData()
	triggerToggle(slot0.toggles[uv0.PAGE_PT], true)
end

function slot0.GenPtData(slot0)
	slot0.ptActData = getProxy(FeastProxy):GetPtActData()
	slot0.counts[uv0.PAGE_PT] = #slot0.ptActData.targets
end

function slot0.GenTaskData(slot0)
	slot0.taskList = getProxy(FeastProxy):GetTaskList()
	slot1 = getProxy(TaskProxy)

	table.sort(slot0.taskList, function (slot0, slot1)
		if ((uv0:getTaskById(slot0) or uv0:getFinishTaskById(slot0)):isReceive() and 1 or 0) == ((uv0:getTaskById(slot1) or uv0:getFinishTaskById(slot1)):isReceive() and 1 or 0) then
			if (slot2:IsActRoutineType() and 1 or 0) == (slot3:IsActRoutineType() and 1 or 0) then
				return slot0 < slot1
			else
				return slot7 < slot6
			end
		else
			return slot4 < slot5
		end
	end)

	slot0.counts[uv0.PAGE_TASK] = #slot0.taskList
end

function slot0.OnInitItem(slot0, slot1, slot2)
	slot0.cards[slot1][slot2] = slot0.cardCls[slot1].New(slot2, slot0)
end

function slot0.OnUpdateItem(slot0, slot1, slot2, slot3)
	if not slot0.cards[slot1][slot3] then
		slot0:OnInitItem(slot1, slot3)

		slot4 = slot0.cards[slot1][slot3]
	end

	slot5 = nil

	if slot1 == uv0.PAGE_PT then
		slot5 = slot0.ptActData
	elseif slot1 == uv0.PAGE_TASK then
		slot5 = slot0.taskList[slot2 + 1]
	end

	slot4:Flush(slot5, slot2 + 1)
end

function slot0.Hide(slot0)
	uv0.super.Hide(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf, slot0._parentTf)
end

function slot0.OnDestroy(slot0)
	if slot0:isShowing() then
		slot0:Hide()
	end
end

return slot0
