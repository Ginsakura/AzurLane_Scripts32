slot0 = class("GuideShowSignPlayer", import(".GuidePlayer"))

function slot0.Ctor(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)

	slot0.signTrs = {}
end

function slot0.OnExecution(slot0, slot1, slot2)
	seriesAsync({
		function (slot0)
			uv0:loadSigns(uv1, slot0)
		end,
		function (slot0)
			uv0:InitSign(uv1, slot0)
		end
	}, slot2)
end

function slot0.loadSigns(slot0, slot1, slot2)
	slot4 = {}

	for slot8, slot9 in ipairs(slot1:GetSignList()) do
		table.insert(slot4, function (slot0)
			uv0:LoadSignRes(uv1, function (slot0)
				table.insert(uv0.signTrs, slot0)
				uv1()
			end)
		end)
	end

	parallelAsync(slot4, slot2)
end

function slot0.LoadSignRes(slot0, slot1, slot2)
	slot0.uiLoader:Load(slot1.signName, function (slot0)
		if uv0.atlasName and uv0.fileName then
			setImageSprite(findTF(slot0, "shadow"), LoadSprite(uv0.atlasName, uv0.fileName), true)
		end

		slot0.localPosition = uv0.pos
		slot0.eulerAngles = Vector3(0, 0, 0)
		slot0.localScale = Vector3.one

		setActive(slot0, true)

		if uv1 then
			uv1(slot0)
		end
	end)
end

function slot0.InitSign(slot0, slot1, slot2)
	if slot1:GetSignType() == GuideShowSignStep.SIGN_TYPE_2 then
		slot0:UpdateSign2(slot1, slot2)
	elseif slot3 == GuideShowSignStep.SIGN_TYPE_3 then
		slot0:UpdateSign3(slot1, slot2)
	else
		slot0:UpdateCommonSign(slot1, slot2)
	end
end

function slot0.UpdateSign2(slot0, slot1, slot2)
	slot4 = findTF(slot0.signTrs[1], "btn")

	if slot1:ShouldClick() then
		setActive(slot3, false)
		slot0:SearchUI(slot1:GetClickData(), function (slot0)
			if IsNil(slot0) then
				pg.NewGuideMgr.GetInstance():Stop()

				return
			end

			uv0.localPosition = uv0.parent:InverseTransformPoint(slot0.position) - Vector3(slot0.sizeDelta.x * (slot0.pivot.x - 0.5), slot0.sizeDelta.y * (slot0.pivot.y - 0.5), 0)
			uv1.sizeDelta = slot0.sizeDelta + uv2.sizeDeltaPlus

			setActive(uv0, true)
		end)
	elseif slot1:ExistClickArea() then
		slot4.sizeDelta = slot1:GetClickArea()
	end

	slot5 = GetOrAddComponent(slot4, typeof(UILongPressTrigger))

	slot5.onLongPressed:RemoveAllListeners()
	slot5.onReleased:RemoveAllListeners()

	if slot1:GetTriggerType() == 1 then
		slot5.onLongPressed:AddListener(slot2)
	else
		slot5.onReleased:AddListener(slot2)
	end
end

function slot0.UpdateSign3(slot0, slot1, slot2)
	slot0.signTrs[1].sizeDelta = slot1:GetClickArea()

	slot2()
end

function slot0.UpdateCommonSign(slot0, slot1, slot2)
	if slot1:GetExitDelay() <= 0 then
		slot2()
	else
		Timer.New(slot2, slot3, 1):Start()
	end
end

function slot0.OnClear(slot0)
	slot0.signTrs = {}
end

return slot0
