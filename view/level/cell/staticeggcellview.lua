slot2 = class("StaticEggCellView", DecorateClass(import(".StaticCellView"), import(".EggCellView")))

function slot2.Ctor(slot0, slot1)
	uv0.Ctor(slot0, slot1)
	uv1.Ctor(slot0)

	slot0.config = nil
	slot0.chapter = nil
	slot0.tweenId = nil
	slot0.buffer = FuncBuffer.New()
end

function slot2.GetOrder(slot0)
	return ChapterConst.CellPriorityEnemy
end

function slot2.Update(slot0)
	slot2 = slot0.config
	slot3 = slot0.info.trait ~= ChapterConst.TraitLurk

	if ChapterConst.IsEnemyAttach(slot1.attachment) and slot1.flag == ChapterConst.CellFlagActive and slot0.chapter:existFleet(FleetType.Transport, slot1.row, slot1.column) then
		slot3 = false
	end

	if not IsNil(slot0.go) then
		setActive(slot0.go, slot3)
	end

	if not slot3 then
		return
	end

	if IsNil(slot0.go) then
		slot0:GetLoader():GetPrefab("leveluiview/Tpl_Enemy", "Tpl_Enemy", function (slot0)
			slot0.name = "enemy_" .. uv0.attachmentId
			uv1.go = slot0
			uv1.tf = tf(slot0)

			setParent(slot0, uv1.parent)
			uv2.InitEggCellTransform(uv1)
			uv1:OverrideCanvas()
			uv1:ResetCanvasOrder()
			setAnchoredPosition(uv1.tf, Vector2.zero)
			uv2.StartEggCellView(uv1, uv3)
			uv1.buffer:SetNotifier(uv1)
			uv1.buffer:ExcuteAll()
			uv1:Update()
		end, "Main")

		return
	end

	uv0.UpdateEggCell(slot0, slot0.chapter, slot0.info, slot0.config)

	if slot0.viewParent:isHuntingRangeVisible() and _.any(slot0.chapter.fleets, function (slot0)
		return slot0:getFleetType() == FleetType.Submarine and slot0:isValid() and slot0:inHuntingRange(uv0.row, uv0.column)
	end) then
		slot0:TweenBlink()
	else
		slot0:StopTween()
	end
end

function slot2.TweenBlink(slot0)
	slot0:StopTween()

	slot1 = findTF(slot0.go, "icon")
	slot2 = slot1:GetComponent("Image")
	slot0.tweenId = LeanTween.color(tf(slot1), Color.New(1, 0.6, 0.6), 1):setFromColor(Color.white):setEase(LeanTweenType.easeInOutSine):setLoopPingPong():setOnComplete(System.Action(function ()
		if IsNil(uv0) then
			return
		end

		uv0.color = Color.white
	end)).uniqueId
end

function slot2.TweenShining(slot0, slot1)
	slot0:StopTween()

	slot2 = findTF(slot0.go, "icon")
	slot2:GetComponent("Image").material = Material.New(pg.ShaderMgr.GetInstance():GetShader("Spine/SkeletonGraphic (Additive)"))
	slot0.tweenId = LeanTween.value(go(slot2), 0, 1, 0.5):setEase(LeanTweenType.easeInOutSine):setLoopPingPong(slot1):setOnUpdate(System.Action_float(function (slot0)
		uv0:SetColor("_Color", Color.Lerp(Color.black, Color.gray, slot0))
	end)):setOnComplete(System.Action(function ()
		if IsNil(uv0) then
			return
		end

		uv0.material = nil
		uv0.color = Color.white

		onNextTick(function ()
			uv0:Update()
		end)
	end)).uniqueId
end

function slot2.StopTween(slot0)
	if not slot0.tweenId then
		return
	end

	LeanTween.cancel(slot0.tweenId, true)

	slot0.tweenId = nil
end

function slot2.Clear(slot0)
	slot0:StopTween()
	slot0.buffer:Clear()

	slot0.chapter = nil

	uv0.Clear(slot0)
	uv1.Clear(slot0)
end

return slot2
