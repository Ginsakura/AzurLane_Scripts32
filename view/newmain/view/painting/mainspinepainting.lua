slot0 = class("MainSpinePainting", import(".MainBasePainting"))

function slot0.Ctor(slot0, slot1, slot2, slot3)
	uv0.super.Ctor(slot0, slot1, slot2)

	slot0.bgTr = slot3
	slot0.spTF = findTF(slot1, "spinePainting")
	slot0.spBg = findTF(slot3, "spinePainting")
	slot0.uiCam = GameObject.Find("UICamera"):GetComponent("Camera")
end

function slot0.GetCenterPos(slot0)
	return slot0.chatTf.parent:InverseTransformPoint(slot0.spTF.position)
end

function slot0.OnLoad(slot0, slot1)
	slot0.spinePainting = SpinePainting.New(SpinePainting.GenerateData({
		ship = slot0.ship,
		position = Vector3(0, 0, 0),
		parent = slot0.spTF,
		effectParent = slot0.spBg
	}), function (slot0)
		uv0:AdJustOrderInLayer(slot0)
		uv0:InitSpecialTouch()
		uv1()
	end)
end

function slot0.AdJustOrderInLayer(slot0, slot1)
	slot2 = 0

	if slot0.container:GetComponent(typeof(Canvas)) and slot3.overrideSorting and slot3.sortingOrder ~= 0 then
		for slot8 = 1, slot0.spTF:GetComponentsInChildren(typeof(Canvas)).Length do
			slot9 = slot4[slot8 - 1]
			slot9.overrideSorting = true
			slot2 = slot9.sortingOrder - slot3.sortingOrder
			slot9.sortingOrder = slot3.sortingOrder
		end
	end

	if slot0.bgTr:GetComponent(typeof(Canvas)) and slot4.overrideSorting and slot4.sortingOrder ~= 0 then
		for slot9 = 1, slot0.spBg:GetComponentsInChildren(typeof(Canvas)).Length do
			slot10 = slot5[slot9 - 1]
			slot10.overrideSorting = true
			slot10.sortingOrder = slot10.sortingOrder - slot2
		end

		for slot10 = 1, slot0.spBg:GetComponentsInChildren(typeof("UnityEngine.ParticleSystemRenderer")).Length do
			slot11 = slot6[slot10 - 1]

			ReflectionHelp.RefSetProperty(typeof("UnityEngine.ParticleSystemRenderer"), "sortingOrder", slot11, ReflectionHelp.RefGetProperty(typeof("UnityEngine.ParticleSystemRenderer"), "sortingOrder", slot11) - slot2)
		end
	end
end

function slot0.InitSpecialTouch(slot0)
	slot0.specialClickDic = {}

	if not findTF(slot0.spTF:GetChild(0), "hitArea") then
		return
	end

	eachChild(slot1, function (slot0)
		if slot0.name == "drag" then
			uv0.dragEvent = GetOrAddComponent(slot0, typeof(EventTriggerListener))

			uv0.dragEvent:AddPointDownFunc(function (slot0, slot1)
				uv0.dragActive = true
				uv0.dragStart = slot1.position
			end)
			uv0.dragEvent:AddPointUpFunc(function (slot0, slot1)
				if uv0.dragActive then
					uv0.dragActive = false
					uv0.dragOffset = Vector2(uv0.dragStart.x - slot1.position.x, uv0.dragStart.y - slot1.position.y)

					if math.abs(uv0.dragOffset.x) < 200 or math.abs(uv0.dragOffset.y) < 200 then
						uv0.dragUp = slot1.position

						for slot6 = 1, #uv0.specialClickDic do
							slot7 = uv0.specialClickDic[slot6]

							if math.abs(slot7.tf:InverseTransformPoint(uv0.uiCam:ScreenToWorldPoint(slot1.position)).x) < slot7.bound.x / 2 and math.abs(slot8.y) < slot7.bound.y / 2 then
								uv0:TriggerEvent(slot7.name)
								uv0:TriggerPersonalTask(slot7.task)

								return
							end
						end
					end
				end
			end)
			uv0.dragEvent:AddDragFunc(function (slot0, slot1)
				if uv0.dragActive then
					if uv0.isDragAndZoomState then
						uv0.dragActive = false

						return
					end

					if uv0.chatting then
						uv0.dragActive = false

						return
					end

					uv0.dragOffset = Vector2(uv0.dragStart.x - slot1.position.x, uv0.dragStart.y - slot1.position.y)

					if math.abs(uv0.dragOffset.x) > 200 or math.abs(uv0.dragOffset.y) > 200 then
						uv0.dragActive = false

						uv0.spinePainting:DoDragTouch()
					end
				end
			end)
		else
			if uv0:GetSpecialTouchEvent(slot0.name) then
				table.insert(uv0.specialClickDic, {
					name = slot1,
					task = uv0.ship.groupId,
					bound = slot0.sizeDelta,
					tf = slot0
				})
			end

			onButton(uv0, slot0, function ()
				slot0 = uv0:GetSpecialTouchEvent(uv1.name)

				if uv1.name == "special" then
					if uv0.isDragAndZoomState then
						return
					end

					if uv0.chatting then
						return
					end

					uv0.spinePainting:DoSpecialTouch()
				else
					uv0:TriggerEvent(slot0)
					uv0:TriggerPersonalTask(uv0.ship.groupId)
				end
			end)
		end
	end)
end

function slot0.OnClick(slot0)
	slot1 = slot0:CollectTouchEvents()

	slot0:TriggerEvent(slot1[math.ceil(math.random(#slot1))])
end

function slot0.OnDisplayWorld(slot0, slot1)
	if ShipExpressionHelper.GetExpression(slot0.paintingName, slot1, slot0.ship:getCVIntimacy(), slot0.ship.skinId) ~= "" then
		slot0.spinePainting:SetAction(slot3, 1)
	end
end

function slot0.OnDisplayWordEnd(slot0)
	uv0.super.OnDisplayWordEnd(slot0)
	slot0.spinePainting:SetEmptyAction(1)
end

function slot0.OnLongPress(slot0)
	if slot0.isFoldState then
		return
	end

	pg.m02:sendNotification(GAME.GO_SCENE, SCENE.SHIPINFO, {
		shipId = slot0.ship.id
	})
end

function slot0.OnUnload(slot0)
	if slot0.spinePainting then
		slot0.spinePainting:Dispose()

		slot0.spinePainting = nil
	end

	if slot0.dragEvent then
		ClearEventTrigger(slot0.dragEvent)
	end
end

function slot0.GetOffset(slot0)
	return slot0.spTF.localPosition.x
end

function slot0.OnPuase(slot0)
	if slot0.spinePainting then
		slot0.spinePainting:SetVisible(false)
	end
end

function slot0.OnResume(slot0)
	if slot0.spinePainting then
		slot0.spinePainting:SetVisible(true)
		slot0.spinePainting:SetEmptyAction(1)
	end
end

return slot0
