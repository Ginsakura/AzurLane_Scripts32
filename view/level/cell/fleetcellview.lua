slot2 = class("FleetCellView", DecorateClass(import(".DynamicCellView"), import(".SpineCellView")))

function slot2.Ctor(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)
	uv1.Ctor(slot0)
	uv1.InitCellTransform(slot0)

	slot0.tfArrow = slot0.tf:Find("arrow")
	slot0.tfAmmo = slot0.tf:Find("ammo")
	slot0.tfAmmoText = slot0.tfAmmo:Find("text")
	slot0.tfOp = slot0.tf:Find("op")
	slot0.tfIconRecorded = nil
	slot0.RecordedFlag = nil
end

function slot2.GetOrder(slot0)
	return ChapterConst.CellPriorityFleet
end

function slot2.showPoisonDamage(slot0, slot1)
	slot2 = "dexiv4_SLG_poison"
	slot3 = slot0.tfShip.localPosition

	slot0:GetLoader():GetPrefab("ui/" .. slot2, slot2, function (slot0)
		setParent(slot0.transform, uv0.tf, false)
		LeanTween.moveY(uv0.tfShip, uv1.y - 10, 0.1):setEase(LeanTweenType.easeInOutSine):setLoopPingPong()

		if not IsNil(slot0:GetComponent(typeof(ParticleSystemEvent))) then
			slot1:AddEndEvent(function ()
				uv0.tfShip.localPosition = uv1

				uv0.loader:ClearRequest("PoisonDamage")
				LeanTween.cancel(uv0.tfShip.gameObject)

				if uv2 then
					uv2()
				end
			end)
		end
	end, "PoisonDamage")
end

function slot2.SetActiveNoPassIcon(slot0, slot1)
	if not slot1 then
		if slot0.loader then
			slot0.loader:ClearRequest("NoPassIcon")
		end
	else
		if slot0:GetLoader():GetRequestPackage(slot2) then
			return
		end

		slot4 = "event_task_small"

		slot0:GetLoader():GetPrefabBYStopLoading("boxprefab/" .. slot4, slot4, function (slot0)
			setParent(slot0.transform, uv0.tf, false)

			slot1 = 150

			setLocalPosition(slot0, Vector3(0, slot1, 0))
			LeanTween.moveY(rtf(slot0), slot1 - 10, 1):setEase(LeanTweenType.easeInOutSine):setLoopPingPong()
		end, slot2)
	end
end

function slot2.UpdateIconRecordedFlag(slot0, slot1)
	slot0.RecordedFlag = slot1

	slot0:UpdateIconRecorded()
end

function slot2.UpdateIconRecorded(slot0)
	if not (slot0.RecordedFlag and slot0.visible) then
		if not IsNil(slot0.tfIconRecorded) then
			setActive(slot0.tfIconRecorded, false)
		end
	else
		if IsNil(slot0.tfIconRecorded) then
			pg.PoolMgr.GetInstance():GetPrefab("effect/fleet_status_recorded", "", false, function (slot0)
				uv0.tfIconRecorded = tf(slot0)

				setParent(slot0, uv0.tf, false)
			end)
		end

		setActive(slot0.tfIconRecorded, true)
	end
end

function slot2.TweenShining(slot0)
	if not slot0:GetSpineRole() then
		return
	end

	slot2 = Color.black
	slot3 = Color.gray
	slot2.a = 0
	slot3.a = 0

	slot1:TweenShining(0.2, 2, 0, 1, slot2, slot3, true, true)
end

function slot2.SetSpineVisible(slot0, slot1)
	slot0.visible = slot1

	uv0.super.SetSpineVisible(slot0, slot1)
	setActive(slot0.tfShadow, slot1)
	slot0:UpdateIconRecorded()
end

function slot2.StopTween(slot0)
	if not slot0:GetSpineRole() then
		return
	end

	slot1:StopTweenShining()
end

function slot2.unloadSpine(slot0)
	uv0.super.UnloadSpine(slot0)
end

function slot2.Clear(slot0)
	uv0.ClearSpine(slot0)
	uv1.super.Clear(slot0)
end

return slot2
