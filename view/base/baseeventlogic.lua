slot0 = class("BaseEventLogic")
slot1 = require("Framework.notify.event")

function slot0.Ctor(slot0, slot1)
	slot0.eventCounter = 1
	slot0.eventStore = {}
	slot0.event = slot1 or uv0.New()
	slot0.tweenIdList = {}
end

function slot0.bind(slot0, slot1, slot2)
	slot0.event:connect(slot1, slot2)

	slot3 = slot0.eventCounter
	slot0.eventStore[slot3] = {
		event = slot1,
		callback = slot2
	}
	slot0.eventCounter = slot0.eventCounter + 1

	return slot3
end

function slot0.emit(slot0, ...)
	if slot0.event then
		slot0.event:emit(...)
	end
end

function slot0.disconnect(slot0, slot1)
	if slot0.eventStore[slot1] then
		slot0.event:disconnect(slot2.event, slot2.callback)

		slot0.eventStore[slot1] = nil
	end
end

function slot0.disposeEvent(slot0)
	for slot4, slot5 in pairs(slot0.eventStore) do
		slot0.event:disconnect(slot5.event, slot5.callback)
	end

	slot0.eventStore = {}
end

function slot0.managedTween(slot0, slot1, slot2, ...)
	slot3 = slot1(...)

	slot3:setOnComplete(System.Action(function ()
		table.removebyvalue(uv0.tweenIdList, uv1.uniqueId)

		if uv2 then
			uv2()
		end
	end))

	slot0.tweenIdList[#slot0.tweenIdList + 1] = slot3.uniqueId

	return slot3
end

function slot0.cleanManagedTween(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.tweenIdList) do
		if LeanTween.isTweening(slot6) then
			LeanTween.cancel(slot6, defaultValue(slot1, false))
		end
	end

	slot0.tweenIdList = {}
end

function slot0.pauseManagedTween(slot0)
	for slot4, slot5 in ipairs(slot0.tweenIdList) do
		if LeanTween.isTweening(slot5) then
			LeanTween.pause(slot5)
		end
	end
end

function slot0.resumeManagedTween(slot0)
	for slot4, slot5 in ipairs(slot0.tweenIdList) do
		if LeanTween.isTweening(slot5) then
			LeanTween.resume(slot5)
		end
	end
end

function slot0.AddLeanTween(slot0, slot1)
	slot2 = slot1()

	assert(slot2)

	slot0.tweenIdList[#slot0.tweenIdList + 1] = slot2.uniqueId
end

return slot0
