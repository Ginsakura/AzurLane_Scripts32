slot0 = class("CookGameJudge")

function slot0.Ctor(slot0, slot1, slot2, slot3, slot4, slot5)
	slot0._tf = slot1
	slot0._judgeDatas = slot3
	slot0._gameData = slot4
	slot0._event = slot5
	slot0._index = slot2
	slot0.wantedTf = findTF(slot0._tf, "wanted")
	slot0.smokeTf = findTF(slot0._tf, "wanted/smoke")
	slot0.dftEvent = GetComponent(findTF(slot0._tf, "mask/anim"), typeof(DftAniEvent))

	slot0.dftEvent:SetEndEvent(function (slot0)
		uv0:onAniEnd()
	end)

	slot0.animator = GetComponent(findTF(slot0._tf, "mask/anim"), typeof(Animator))

	onButton(slot0._event, findTF(slot0._tf, "collider"), function ()
		if uv0.clickCallback then
			uv0.clickCallback()
		end
	end, SFX_CANCEL)
end

function slot0.clear(slot0)
	slot0._puzzleTime = nil
	slot0._puzzleWeight = nil
	slot0._puzzleCamp = nil
	slot0.cakeId = 1
	slot0.inTrigger = false
	slot0.serveData = nil
	slot0.serveCallback = nil

	slot0:updateWanted(nil)
	slot0:showCard(nil)
	setActive(slot0.wantedTf, false)
	setActive(slot0._tf, false)

	slot0.animator.runtimeAnimatorController = slot0:getAnimData(slot0.cakeId).runtimeAnimator

	slot0:select(false)
end

function slot0.start(slot0)
	slot0:clear()
	setActive(slot0._tf, true)
	slot0:updateWanted(math.random(1, slot0._gameData.cake_num))
end

function slot0.step(slot0, slot1)
	if slot0.wantedCakeTime and slot0.wantedCakeTime > 0 then
		slot0.wantedCakeTime = slot0.wantedCakeTime - slot1

		if slot0.wantedCakeTime <= 0 then
			slot0.wantedCakeTime = nil

			slot0:updateWanted(math.random(1, slot0._gameData.cake_num))
		end
	end

	if slot0._puzzleTime then
		slot0._puzzleTime = slot0._puzzleTime - slot1

		if slot0._puzzleTime <= 0 then
			slot0._puzzleTime = nil
			slot0._puzzleCamp = nil
			slot0._puzzleWeight = nil

			slot0:showCard(false)
		end
	end

	if slot0.readyServeTime and slot0.readyServeTime > 0 then
		slot0.readyServeTime = slot0.readyServeTime - slot1

		if slot0.readyServeTime <= 0 then
			slot0.readyServeTime = nil
			slot0.serveData = nil
			slot0.serveCallback = nil
		end
	end
end

function slot0.destroy(slot0)
end

function slot0.changeSpeed(slot0, slot1)
	slot0.animator.speed = slot1
end

function slot0.onAniEnd(slot0)
	slot0.inTrigger = false

	if slot0.freshWanted then
		slot0.freshWanted = false
		slot0.wantedCakeTime = nil

		slot0:updateWanted(math.random(1, slot0._gameData.cake_num))
	end
end

function slot0.getIndex(slot0)
	return slot0._index
end

function slot0.getTf(slot0)
	return slot0._tf
end

function slot0.trigger(slot0, slot1, slot2, slot3, slot4)
	if slot0.inTrigger then
		print("评委已有状态")

		return
	end

	slot5 = Vector3(1, 1, 1)
	slot0.inTrigger = true

	if slot0.cakeId ~= slot1 then
		slot0.cakeId = slot1
		slot0.animator.runtimeAnimatorController = slot0:getAnimData(slot0.cakeId).runtimeAnimator
	end

	slot0.animator:SetBool("AC", slot3 or false)
	slot0.animator:SetBool("right", slot2 or false)
	slot0.animator:SetBool("bk", slot4 or false)
	slot0.animator:SetBool("reject", slot0._puzzleCamp and true or false)

	if slot0._puzzleCamp and not slot2 then
		slot5 = (slot0._puzzleCamp ~= CookGameConst.camp_player or Vector3(-1, 1, 1)) and Vector3(1, 1, 1)
	end

	findTF(slot0._tf, "mask").localScale = slot5

	slot0.animator:SetTrigger("trigger")

	if slot2 then
		slot0:updateWanted()

		slot0.freshWanted = true
		slot0.wantedCakeTime = 3
	end
end

function slot0.readyServe(slot0, slot1, slot2)
	if slot0.serveCallback then
		slot0.serveCallback(false)
	end

	slot0.serveData = slot1
	slot0.readyServeTime = 4
	slot0.serveCallback = slot2

	if slot0.serveData.battleData.cake_allow and slot0.wantedCake ~= slot0.serveData.parameter.cakeId then
		if not slot0._puzzleTime then
			setActive(slot0.smokeTf, false)
			setActive(slot0.smokeTf, true)

			slot0.wantedCake = slot0.serveData.parameter.cakeId

			slot0:showCake(slot0.wantedCake)
		elseif slot0._puzzleCamp ~= slot0.serveData.parameter.camp and slot0._puzzleWeight < slot0.serveData.parameter.weight then
			setActive(slot0.smokeTf, false)
			setActive(slot0.smokeTf, true)

			slot0.wantedCake = slot0.serveData.parameter.cakeId

			slot0:showCake(slot0.wantedCake)
		end
	end
end

function slot0.setWantedImg(slot0)
end

function slot0.serve(slot0)
	if not slot0.serveData then
		return
	end

	if (not slot0.wantedCake or slot0.inTrigger) and slot0.serveCallback then
		slot0.serveCallback(false)
	end

	slot2 = slot0.serveData.battleData.ac_able
	slot3 = slot0.serveData.judgeData.acPos
	slot4 = slot0.serveData.battleData.id
	slot5 = slot0.serveData.parameter.right_index
	slot6 = slot0.serveData.parameter.right_flag
	slot7 = slot0.serveData.parameter.rate
	slot8 = slot0.serveData.parameter.weight

	if not slot0.serveData.parameter.cakeId then
		print("cakeId 不能为nil")

		return
	end

	slot10 = false

	if slot2 and true or false then
		slot11 = slot0._tf.parent

		if slot0._tf.anchoredPosition.y < slot3.y then
			slot10 = true
		end
	end

	slot11 = 1

	if slot0._puzzleCamp and slot0.serveData.parameter.camp == slot0._puzzleCamp then
		slot11 = 2
	elseif slot0._puzzleCamp and slot0.serveData.parameter.camp ~= slot0._puzzleCamp then
		slot11 = 0
	end

	if slot0.serveData.parameter.puzzle then
		slot0:setPuzzle(slot0.serveData.parameter.camp, slot0.serveData.battleData.weight)
	end

	slot0:trigger(slot1, slot6, slot9, slot10)
	slot0._event:emit(CookGameView.SERVE_EVENT, {
		serveData = slot0.serveData,
		pos = slot0._tf.position,
		right = slot6,
		rate = slot11,
		weight = slot0._puzzleWeight or 0
	})

	slot0.serveData = nil
	slot0.serveCallback = nil
	slot0.readyServeTime = nil
end

function slot0.setPuzzle(slot0, slot1, slot2)
	slot0._puzzleCamp = slot1
	slot0._puzzleWeight = slot2
	slot0._puzzleTime = CookGameConst.puzzle_time

	slot0:showCard(true)
end

function slot0.showCard(slot0, slot1)
	setActive(findTF(slot0.wantedTf, "Card"), slot1)
	slot0:showCake(nil)
end

function slot0.isInServe(slot0)
	return slot0.serveData
end

function slot0.isInTrigger(slot0)
	return slot0.inTrigger
end

function slot0.getPuzzleCamp(slot0)
	return slot0._puzzleCamp
end

function slot0.getWantedCake(slot0)
	return slot0.wantedCake
end

function slot0.updateWanted(slot0, slot1)
	if slot0.wantedCake ~= slot1 and slot1 then
		slot0:showCake(slot1)
	end

	if slot1 and slot1 > 0 then
		setActive(slot0.wantedTf, true)

		slot0.wantedCake = slot1
		slot0.wantedCakeTime = nil
	else
		setActive(slot0.wantedTf, false)
	end
end

function slot0.showCake(slot0, slot1)
	for slot5 = 1, slot0._gameData.cake_num do
		setActive(findTF(slot0.wantedTf, "cake_" .. slot5), not slot0._puzzleTime and slot5 == (slot1 or slot0.wantedCake))
	end
end

function slot0.setFrontContainer(slot0, slot1)
	slot0._frontTf = slot1

	if slot0._frontTf then
		SetParent(slot0.wantedTf, slot0._frontTf, true)
	end
end

function slot0.getPos(slot0)
	return slot0._tf.anchoredPosition()
end

function slot0.getLeftTf(slot0)
	return findTF(slot0._tf, "leftPos")
end

function slot0.getRightTf(slot0)
	return findTF(slot0._tf, "rightPos")
end

function slot0.select(slot0, slot1)
	setActive(findTF(slot0._tf, "select"), slot1)
end

function slot0.setClickCallback(slot0, slot1)
	slot0.clickCallback = slot1
end

function slot0.getAcTargetTf(slot0)
	return findTF(slot0._tf, "acTarget")
end

function slot0.getAnimData(slot0, slot1)
	for slot5 = 1, #slot0._judgeDatas do
		if slot0._judgeDatas[slot5].data.cake_id == slot1 then
			return slot6
		end
	end

	return nil
end

return slot0
