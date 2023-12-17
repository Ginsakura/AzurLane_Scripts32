slot0 = class("CardPuzzleRelicDeckMediator", ContextMediator)
slot0.SHOW_GIFT = "SHOW_GIFT"
slot0.CLOSE_LAYER = "CLOSE_LAYER"

function slot0.register(slot0)
	slot0.viewComponent:SetGifts(slot0.contextData.relicList)
	slot0:bind(uv0.SHOW_GIFT, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = CardPuzzleRelicDetailMediator,
			viewComponent = CardPuzzleRelicDetailLayer,
			data = slot1
		}))
	end)
	slot0:bind(uv0.CLOSE_LAYER, function (slot0, slot1)
		uv0:sendNotification(GAME.RESUME_BATTLE)
	end)
end

function slot0.listNotificationInterests(slot0)
	return {}
end

function slot0.remove(slot0)
end

return slot0
