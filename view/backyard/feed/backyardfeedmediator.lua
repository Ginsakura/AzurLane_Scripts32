slot0 = class("BackyardFeedMediator", import("...base.ContextMediator"))
slot0.USE_FOOD = "BackyardFeedMediator:USE_FOOD"
slot0.BUY_FOOD = "BackyardFeedMediator:BUY_FOOD"
slot0.EXTEND = "BackyardFeedMediator:EXTEND"

function slot0.register(slot0)
	slot0:bind(uv0.USE_FOOD, function (slot0, slot1, slot2, slot3)
		if slot3 then
			uv0:setBackyardRemind()
			uv1.viewComponent:SetIsRemind(uv0:getBackyardRemind())
		end

		uv1:sendNotification(GAME.USE_ITEM, {
			id = slot1,
			count = slot2
		})
	end)
	slot0:bind(uv0.BUY_FOOD, function (slot0, slot1, slot2)
		uv0:sendNotification(GAME.SHOPPING, {
			id = slot1,
			count = slot2
		})
	end)
	slot0:bind(uv0.EXTEND, function (slot0, slot1, slot2)
		uv0:sendNotification(GAME.SHOPPING, {
			id = slot1,
			count = slot2
		})
	end)
	slot0.viewComponent:SetIsRemind(getProxy(SettingsProxy):getBackyardRemind())
end

function slot0.listNotificationInterests(slot0)
	return {
		GAME.ADD_FOOD_DONE,
		DormProxy.DORM_UPDATEED,
		GAME.SHOPPING_DONE
	}
end

function slot0.handleNotification(slot0, slot1)
	slot4 = slot1:getType()

	if slot1:getName() == GAME.ADD_FOOD_DONE then
		slot0.viewComponent:OnUsageItem(slot1:getBody().id)
	elseif slot2 == DormProxy.DORM_UPDATEED and slot4 == BackYardConst.DORM_UPDATE_TYPE_USEFOOD then
		slot0.viewComponent:OnDormUpdated()
	elseif slot2 == GAME.SHOPPING_DONE then
		slot0.viewComponent:OnShopDone()
	end
end

return slot0
