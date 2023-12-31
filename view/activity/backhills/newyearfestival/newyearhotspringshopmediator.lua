slot0 = class("NewYearHotSpringShopMediator", import("view.base.ContextMediator"))
slot0.ON_ACT_SHOPPING = "NewYearHotSpringShopMediator:ON_ACT_SHOPPING"

function slot0.register(slot0)
	slot0:TransActivity2ShopData(getProxy(ActivityProxy):getActivityById(ActivityConst.HOTSPRING_SHOP))
	slot0:bind(uv0.ON_ACT_SHOPPING, function (slot0, slot1, slot2, slot3, slot4)
		uv0:sendNotification(GAME.ACTIVITY_SHOP_PROGRESS_REWARD, {
			activity_id = slot1,
			cmd = slot2,
			arg1 = slot3,
			arg2 = slot4
		})
	end)
	slot0:bind(GAME.GO_SCENE, function (slot0, slot1, ...)
		uv0:sendNotification(GAME.GO_SCENE, slot1, ...)
	end)
end

function slot0.TransActivity2ShopData(slot0, slot1)
	if slot1 and not slot1:isEnd() then
		slot2 = ActivityShop.New(slot1)

		slot0.viewComponent:SetShop(slot2)

		return slot2
	end
end

function slot0.listNotificationInterests(slot0)
	return {
		ActivityProxy.ACTIVITY_UPDATED,
		ActivityShopWithProgressRewardCommand.SHOW_SHOP_REWARD
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == ActivityProxy.ACTIVITY_UPDATED then
		if slot3.id == ActivityConst.HOTSPRING_SHOP then
			slot0:TransActivity2ShopData(slot3)
			slot0.viewComponent:UpdateView()
		end
	elseif slot2 == ActivityShopWithProgressRewardCommand.SHOW_SHOP_REWARD then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3.awards, function ()
			uv0.viewComponent:OnShoppingDone()
			existCall(uv1.callback)
		end)
	end
end

return slot0
