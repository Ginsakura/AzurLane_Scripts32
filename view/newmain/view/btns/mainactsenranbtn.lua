slot0 = class("MainActSenranBtn", import(".MainBaseActivityBtn"))

function slot0.GetEventName(slot0)
	return "event_senran"
end

function slot0.GetActivityID(slot0)
	if not checkExist(slot0.config, {
		"time"
	}) then
		return nil
	end

	return slot1[1] == "default" and slot1[2] or nil
end

function slot0.OnInit(slot0)
	setActive(slot0.tipTr.gameObject, Activity.IsActivityReady(getProxy(ActivityProxy):getActivityById(slot0:GetActivityID())))
end

return slot0
