slot0 = class("EducateCollectEntranceMediator", import("..base.EducateContextMediator"))

function slot0.register(slot0)
end

function slot0.listNotificationInterests(slot0)
	return {
		EducateProxy.CLEAR_NEW_TIP
	}
end

function slot0.handleNotification(slot0, slot1)
	if slot1:getName() == EducateProxy.CLEAR_NEW_TIP and slot1:getBody().index == EducateTipHelper.NEW_MEMORY then
		slot0.viewComponent:updateMemoryTip()
	end
end

return slot0
