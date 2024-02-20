slot0 = class("EducateCalendarLayer", import(".base.EducateBaseUI"))

function slot0.getUIName(slot0)
	return "EducateCalendarUI"
end

function slot0.init(slot0)
	slot0.calendarTF = slot0:findTF("anim_root/calendar")
	slot0.monthTF = slot0:findTF("month", slot0.calendarTF)
	slot0.weekTF = slot0:findTF("week/week", slot0.calendarTF)
	slot0.curTime = getProxy(EducateProxy):GetCurTime()
	slot0.anim = slot0:findTF("anim_root"):GetComponent(typeof(Animation))
	slot0.animEvent = slot0:findTF("anim_root"):GetComponent(typeof(DftAniEvent))

	slot0.animEvent:SetEndEvent(function ()
		uv0:emit(uv1.ON_CLOSE)
	end)
	slot0.animEvent:SetTriggerEvent(function ()
		slot0 = EducateHelper.GetTimeAfterWeeks(uv0.curTime, 1)

		setText(uv0.monthTF, EducateHelper.GetShowMonthNumber(slot0.month))
		setText(uv0.weekTF, i18n("word_which_week", slot0.week))
	end)
end

function slot0.didEnter(slot0)
	pg.UIMgr.GetInstance():OverlayPanel(slot0._tf, {
		groupName = slot0:getGroupNameFromData(),
		weight = slot0:getWeightFromData() + 1
	})
	setText(slot0.monthTF, EducateHelper.GetShowMonthNumber(slot0.curTime.month))
	setText(slot0.weekTF, i18n("word_which_week", slot0.curTime.week))
end

function slot0.onBackPressed(slot0)
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnOverlayPanel(slot0._tf)

	if slot0.contextData.onExit then
		slot0.contextData.onExit()
	end
end

return slot0
