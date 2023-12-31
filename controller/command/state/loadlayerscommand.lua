slot0 = class("LoadLayersCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	slot2 = slot1:getBody()
	slot2.type = LOAD_TYPE_LAYER

	slot2.context:extendData({
		isLayer = true
	})
	SCENE.CheckPreloadData(slot2, function ()
		uv0:sendNotification(GAME.LOAD_CONTEXT, uv1)
	end)
end

return slot0
