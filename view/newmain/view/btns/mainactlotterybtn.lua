slot0 = class("MainActLotteryBtn", import(".MainBaseActivityBtn"))

function slot0.GetEventName(slot0)
	return "event_LanternFestival"
end

function slot0.GetActivityID(slot0)
	return getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_LOTTERY) and slot1.id
end

function slot0.OnInit(slot0)
	slot1 = getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_LOTTERY)
	slot2 = slot1:getAwardInfos()

	setActive(slot0._tf:Find("Tip"), _.any(slot1:getConfig("config_data"), function (slot0)
		slot2 = ActivityItemPool.New({
			id = slot0,
			awards = uv0[slot0]
		}):getComsume()

		return slot2.count <= getProxy(PlayerProxy):getRawData()[id2res(slot2.id)] and slot1:getleftItemCount() > 0
	end))
end

function slot0.CustomOnClick(slot0)
	if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_LOTTERY) then
		slot0:emit(NewMainMediator.SKIP_LOTTERY, slot1.id)
	end
end

return slot0
