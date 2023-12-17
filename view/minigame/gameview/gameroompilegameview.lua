slot0 = class("GameRoomPileGameView", import("..BaseMiniGameView"))

function slot0.getUIName(slot0)
	return "GameRoomPileGameUI"
end

function slot0.init(slot0)
	slot0.backBtn = slot0:findTF("overview/back")
end

slot1 = 7

function slot0.didEnter(slot0)
	onButton(slot0, slot0.backBtn, function ()
		uv0:emit(uv1.ON_BACK)
	end, SFX_PANEL)

	slot0.controller = PileGameController.New()

	slot0.controller.view:SetUI(slot0._go)
	slot0.controller:SetUp(slot0:PackData(), function (slot0, slot1)
		if slot1 < slot0 then
			uv0:StoreDataToServer({
				slot0
			})
		end

		slot2 = uv0:GetMGHubData()

		uv0:SendSuccess(slot0)
	end)
	slot0.controller:setGameStartCallback(function (slot0)
		uv0:openCoinLayer(slot0)
	end)
end

function slot0.PackData(slot0)
	slot2 = slot0:GetMGData():GetRuntimeData("elements") and slot1[1] or 0

	if slot0:getGameRoomData() then
		slot0.gameHelpTip = slot0:getGameRoomData().game_help
	end

	return {
		highestScore = slot2,
		screen = Vector2(slot0._tf.rect.width, slot0._tf.rect.height),
		tip = slot0.gameHelpTip
	}
end

function slot0.OnGetAwardDone(slot0, slot1)
end

function slot0.onBackPressed(slot0)
	if slot0.controller:onBackPressed() then
		return
	end

	slot0:emit(uv0.ON_BACK)
end

function slot0.willExit(slot0)
	slot0.controller:Dispose()
end

return slot0
