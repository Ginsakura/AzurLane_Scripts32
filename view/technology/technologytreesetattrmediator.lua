slot0 = class("TechnologyTreeSetAttrMediator", import("..base.ContextMediator"))

function slot0.register(slot0)
end

function slot0.listNotificationInterests(slot0)
	return {
		TechnologyConst.SET_TEC_ATTR_ADDITION_FINISH
	}
end

function slot0.handleNotification(slot0, slot1)
	if slot1:getName() == TechnologyConst.SET_TEC_ATTR_ADDITION_FINISH and slot1:getBody().onSuccess then
		slot4()
	end
end

return slot0
