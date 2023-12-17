slot0 = class("SkinAtlasLive2dView")
slot1 = nil

function slot0.Ctor(slot0, slot1, slot2, slot3)
	pg.DelegateInfo.New(slot0)

	slot0.ship = slot1
	slot0.paintingTr = slot2.parent
	slot0.live2dContainer = slot2
	slot0.canClick = false
	slot0.inited = false
	uv0 = pg.AssistantInfo

	slot0:Init(slot3)
end

function slot0.Init(slot0, slot1)
	setActive(slot0.live2dContainer, true)

	slot0.live2dChar = Live2D.New(Live2D.GenerateData({
		ship = slot0.ship,
		scale = Vector3(52, 52, 52),
		position = Vector3(0, 0, -100),
		parent = slot0.live2dContainer
	}), function (slot0)
		uv0.inited = true

		if uv1 then
			uv1()
		end
	end)
end

function slot0.OpenClick(slot0)
	onButton(slot0, slot0.paintingTr, function ()
		if not uv0.inited then
			return
		end

		uv0:OnClick()
	end)
end

function slot0.CloseClick(slot0)
	removeOnButton(slot0.paintingTr)
end

function slot0.OnClick(slot0)
	slot1 = nil

	if slot0.live2dChar and slot0.live2dChar.state == Live2D.STATE_INITED then
		if not Input.mousePosition then
			return
		end

		if slot0.live2dChar:GetTouchPart() > 0 then
			slot4 = slot0:GetTouchEvent(slot3)
			slot1 = slot4[math.ceil(math.random(#slot4))]
		else
			slot4 = slot0:GetIdleEvents()
			slot1 = slot4[math.floor(math.Random(0, #slot4)) + 1]
		end
	end

	if slot1 then
		slot0:TriggerEvent(slot1)
	end
end

function slot0.GetTouchEvent(slot0, slot1)
	return uv0.filterAssistantEvents(uv0.getAssistantTouchEvents(slot1), slot0.ship.skinId, 0)
end

function slot0.GetIdleEvents(slot0)
	return uv0.filterAssistantEvents(uv0.IdleEvents, slot0.ship.skinId, 0)
end

function slot0.GetEventConfig(slot0, slot1)
	return uv0.assistantEvents[slot1]
end

function slot0.TriggerEvent(slot0, slot1)
	if not slot1 then
		return
	end

	slot4, slot5, slot6, slot7, slot8, slot9 = ShipWordHelper.GetCvDataForShip(slot0.ship, slot0:GetEventConfig(slot1).dialog)

	if not slot9 then
		slot0.live2dChar:TriggerAction(slot2.action)
		function ()
		end()
	else
		slot0.live2dChar:TriggerAction(slot2.action, nil, , slot3)
	end
end

function slot0.Dispose(slot0)
	pg.DelegateInfo.Dispose(slot0)
	slot0.live2dChar:Dispose()

	slot0.live2dChar = nil

	setActive(slot0.live2dContainer, false)
end

return slot0
