slot0 = class("BeachGuardChar")

function slot0.Ctor(slot0, slot1, slot2, slot3)
	slot0._tf = slot1
	slot0._config = slot2
	slot0._event = slot3
	slot0._tf.name = slot2.name
	slot0._rid = BeachGuardConst.getRid()
	slot0.animChar = BeachGuardAsset.getChar(slot0._config.name)
	slot0.pos = findTF(slot0._tf, "pos")

	setActive(slot0.animChar, true)
	setParent(slot0.animChar, slot0.pos)

	slot0.animChar.anchoredPosition = Vector2(0, 0)
	slot0.animTf = findTF(slot0.animChar, "anim")
	slot0.effectBackPos = findTF(slot0._tf, "effectBackPos")
	slot0.effectFrontPos = findTF(slot0._tf, "effectFrontPos")
	slot0.statusPos = findTF(slot0._tf, "statusPos")
	slot0.move = slot0._config.move
	slot0.defFlag = slot0._config.def and slot0._config.def > 0
	slot0.skillDatas = {}

	for slot7 = 1, #slot0._config.skill do
		slot9 = BeachGuardConst.skill[slot0._config.skill[slot7]]

		table.insert(slot0.skillDatas, {
			skill = slot9,
			cd = slot9.cd,
			auto = slot9.auto
		})
	end

	slot0.triggerData = {}
	slot0.animator = GetComponent(findTF(slot0.animChar, "anim"), typeof(Animator))
	slot0.point = findTF(slot0.animChar, "point")
	slot0.collider = findTF(slot0.animChar, "charCollider")
	slot0.minX = slot0.collider.rect.min.x
	slot0.minY = slot0.collider.rect.min.y
	slot0.maxX = slot0.collider.rect.max.x
	slot0.maxY = slot0.collider.rect.max.y
	slot0.bulletPos = findTF(slot0.animChar, "bullet")
	slot0.atkPos = findTF(slot0.animChar, "atk")
	slot4 = findTF(slot0._tf, "click")

	onButton(slot0._event, findTF(slot0._tf, "click"), function ()
		if uv0.recycle then
			uv0:overLife()
			uv0:dead()
			uv0._event:emit(BeachGuardGameView.RECYCLES_CHAR_CANCEL)
		end
	end)
	slot0:prepareData()

	GetOrAddComponent(slot0.pos, typeof(CanvasGroup)).blocksRaycasts = false
end

function slot0.setParent(slot0, slot1, slot2, slot3)
	setParent(slot0._tf, slot1)

	slot0._tf.anchoredPosition = slot3 or Vector2(0, 0)
	slot0.inGrid = slot2

	setActive(slot0._tf, true)
end

function slot0.getId(slot0)
	return slot0:getConfig("id")
end

function slot0.overLife(slot0)
	slot0.hp = 0
	slot0.def = 0
end

function slot0.getConfig(slot0, slot1)
	return slot0._config[slot1]
end

function slot0.prepareData(slot0)
	if slot0.defFlag then
		slot0:setStatusIndex(1)
	else
		slot0:setStatusIndex(0)
	end

	slot0.hp = slot0._config.hp or 1
	slot0.def = slot0._config.def or 0

	for slot4 = 1, #slot0.skillDatas do
		slot0.skillDatas[slot4].cd = slot0.skillDatas[slot4].skill.cd
	end

	slot0.buffAtkRate = 1
	slot0.buffSpeedRate = 1
	slot0.triggerData = {}
	slot0.timeToPool = 0
	slot0._lineIndex = nil
	slot0._gridIndex = nil
	slot0.damageTime = 0
	slot0.recycle = false

	if slot0.buffs and #slot0.buffs > 0 then
		for slot4 = 1, #slot0.buffs do
			slot0:disposeBuff(slot0.buffs[slot4])
		end
	end

	slot0.craftNum = 0
	slot0.buffs = {}
end

function slot0.SetSiblingIndex(slot0, slot1)
	slot0._tf:SetSiblingIndex(slot1)
end

function slot0.start(slot0)
	slot0:prepareData()
end

function slot0.step(slot0, slot1)
	if slot0.timeToPool > 0 then
		slot0.timeToPool = slot0.timeToPool - slot1

		if slot0.timeToPool <= 0 then
			slot0.timeToPool = 0

			slot0._event:emit(BeachGuardGameView.REMOVE_CHAR, slot0)
		end
	end

	if slot0:isAlife() then
		for slot5 = 1, #slot0.buffs do
			slot6 = slot0.buffs[slot5]
			slot6.time = slot6.time - slot1

			if slot6.time <= 0 then
				slot6.times = 0

				if slot6.effectTfs then
					for slot10, slot11 in ipairs(slot6.effectTfs) do
						setActive(slot11, false)
					end
				end

				if slot6.triggerEffectTfs then
					for slot10, slot11 in ipairs(slot6.triggerEffectTfs) do
						setActive(slot11, false)
					end
				end
			end
		end

		for slot5 = 1, #slot0.skillDatas do
			slot7 = slot0.skillDatas[slot5].skill
			slot9 = slot0.skillDatas[slot5].auto

			if slot0.skillDatas[slot5].cd ~= 0 then
				if slot8 - slot1 < 0 then
					slot8 = 0
				end

				slot0.skillDatas[slot5].cd = slot8
			end

			if slot8 == 0 then
				if slot7.type == BeachGuardConst.skill_bullet and slot9 and slot0.targetChar then
					slot0:useSkill(slot6)
				elseif slot7.type == BeachGuardConst.skill_melee and slot0.targetChar then
					slot0:useSkill(slot6)
				elseif slot7.type == BeachGuardConst.skill_craft then
					slot0:addCraft()
					slot0:useSkill(slot6)
				end
			end
		end

		for slot5 = #slot0.triggerData, 1, -1 do
			slot6 = slot0.triggerData[slot5]
			slot6.time = slot6.time - slot1

			if slot6.time <= 0 then
				slot0._event:emit(slot6.event, slot6.data)
				table.remove(slot0.triggerData, slot5)
			end
		end

		slot2, slot3 = slot0:getSpeed(slot1)

		if slot0.damageTime ~= 0 then
			slot0.damageTime = slot0.damageTime - Time.deltaTime
			slot2 = 0
			slot3 = 0

			if slot0.damageTime <= 0 then
				slot0.damageTime = 0
			end
		elseif slot0.targetChar then
			slot2 = 0
			slot3 = 0
		end

		slot2 = slot2 * slot0:getSpeedRate()

		slot0:moveChar(slot2, slot3)

		if slot0.speedX ~= slot2 then
			slot0.speedX = slot2

			if slot0.speedX ~= 0 then
				slot0.animator:SetBool("move", true)
				slot0.animator:SetBool("wait", false)
			else
				slot0.animator:SetBool("move", false)
				slot0.animator:SetBool("wait", true)
			end
		end

		if slot2 and slot2 ~= 0 and slot0._tf.anchoredPosition.x <= -500 then
			slot0:dead()
		end
	end

	slot0._anchoredPosition = nil
	slot0._position = nil
end

function slot0.addCraft(slot0)
	slot0.craftNum = slot0.craftNum + 1

	if slot0.craftNum > 3 then
		slot0.craftNum = 0
	end

	for slot4 = 1, 3 do
		if findTF(slot0.animChar, "craft/" .. tostring(slot4)) then
			setActive(slot5, slot4 <= slot0.craftNum)
		end
	end
end

function slot0.getPointWorld(slot0)
	return slot0.point.position
end

function slot0.getSpeed(slot0, slot1)
	return slot0.move.x * slot1, slot0.move.y * slot1
end

function slot0.moveChar(slot0, slot1, slot2)
	if slot1 == 0 and slot2 == 0 then
		return
	end

	slot3 = slot0._tf.anchoredPosition
	slot3.x = slot3.x + slot1
	slot3.y = slot3.y + slot2
	slot0._tf.anchoredPosition = slot3
end

function slot0.getSkillDistance(slot0)
	if not slot0.skillDistane then
		slot0.skillDistane = 0

		for slot4 = 1, #slot0.skillDatas do
			if slot0.skillDatas[slot4].skill.distance and slot0.skillDistane < slot5 then
				slot0.skillDistane = slot5 + 0.5
			end
		end
	end

	return slot0.skillDistane
end

function slot0.inBulletBound(slot0)
	return slot0._tf.anchoredPosition.x < BeachGuardConst.enemy_bullet_width
end

function slot0.setTarget(slot0, slot1)
	slot0.targetChar = slot1
end

function slot0.getTarget(slot0, slot1)
	return slot0.targetChar
end

function slot0.dead(slot0)
	slot0:overLife()
	slot0.animator:SetTrigger("dead")

	slot0.timeToPool = 0.5
	slot0.recycle = false
end

function slot0.useSkill(slot0, slot1)
	if not slot0:isAlife() then
		return
	end

	slot2 = slot1.skill

	if BeachGuardConst.ignore_enemy_skill and slot0.camp == 2 then
		slot1.cd = slot2.cd

		return
	end

	if slot2.anim_type == BeachGuardConst.anim_atk then
		slot0.animator:SetTrigger("attack")
	elseif slot3 == BeachGuardConst.anim_craft then
		slot0.animator:SetTrigger("create")
	end

	table.insert(slot0.triggerData, {
		data = slot0:createUseData(slot2),
		time = slot2.time,
		event = BeachGuardGameView.USE_SKILL
	})

	slot1.cd = slot2.cd
end

function slot0.setRecycleFlag(slot0, slot1)
	slot0.recycle = slot1
end

function slot0.getRecycleFlag(slot0)
	return slot0.recycle
end

function slot0.damage(slot0, slot1)
	if BeachGuardConst.ignore_damage then
		slot1 = 0
	end

	if slot0.def and slot0.def > 0 then
		slot0.def = slot0.def - slot1

		if slot0.def <= 0 then
			slot0.animator:SetTrigger("break")
			slot0:setStatusIndex(2)
		elseif #slot0.triggerData == 0 then
			slot0.animator:SetTrigger("damage")
		end
	elseif slot0.hp > 0 then
		slot0.hp = slot0.hp - slot1

		if slot0.hp <= 0 then
			slot0:dead()
		elseif #slot0.triggerData == 0 then
			slot0.animator:SetTrigger("damage")
		end
	end
end

function slot0.isAlife(slot0)
	if slot0.def and slot0.def > 0 then
		return true
	end

	if slot0.hp and slot0.hp > 0 then
		return true
	end

	return false
end

function slot0.setStatusIndex(slot0, slot1)
	slot0.animator:SetInteger("wait_index", slot1)
	slot0.animator:SetInteger("damage_index", slot1)
end

function slot0.setCamp(slot0, slot1)
	slot0.camp = slot1
end

function slot0.getCamp(slot0)
	return slot0.camp
end

function slot0.getAnimPos(slot0)
	return slot0.animTf.position
end

function slot0.createUseData(slot0, slot1)
	if slot1.type == BeachGuardConst.skill_bullet then
		-- Nothing
	elseif slot1.type == BeachGuardConst.skill_melee then
		slot2.position = slot0.animTf.position
	else
		slot2.position = slot0._tf.position
	end

	return {
		skill = slot1,
		position = slot0.bulletPos.position,
		distanceVec = Vector2(slot0:getSkillDistance() * BeachGuardConst.part_width, 0),
		direct = slot0._config.point or 1,
		rid = slot0._rid,
		target = slot0.targetChar,
		damage = slot1.damage,
		camp = slot0.camp,
		line = slot0._lineIndex,
		useChar = slot0,
		atkRate = slot0:getAtkRate(),
		speedRate = slot0:getSpeedRate()
	}
end

function slot0.getAtkRate(slot0)
	for slot5 = 1, #slot0.buffs do
		if slot0.buffs[slot5].config.type == BeachGuardConst.buff_type_speed_down then
			slot1 = 1 - slot6.config.rate * slot6.times
		end
	end

	if slot1 < 0 then
		slot1 = 0
	end

	return slot1
end

function slot0.getSpeedRate(slot0)
	for slot5 = 1, #slot0.buffs do
		if slot0.buffs[slot5].config.type == BeachGuardConst.buff_type_speed_down then
			slot1 = 1 - slot6.config.rate * slot6.times
		end
	end

	if slot1 < 0 then
		slot1 = 0
	end

	return slot1
end

function slot0.clear(slot0)
	slot0:prepareData()
	setActive(slot0._tf, false)

	slot0.inGrid = false
	slot0.targetChar = nil
end

function slot0.getDistance(slot0)
	return slot0._config.distance or 0
end

function slot0.setLineIndex(slot0, slot1)
	slot0._lineIndex = slot1
end

function slot0.getLineIndex(slot0)
	return slot0._lineIndex
end

function slot0.getPos(slot0)
	if not slot0._anchoredPosition then
		slot0._anchoredPosition = slot0._tf.anchoredPosition
	end

	return slot0._anchoredPosition
end

function slot0.setGridIndex(slot0, slot1)
	slot0._gridIndex = slot1
end

function slot0.getGridIndex(slot0, slot1)
	return slot0._gridIndex
end

function slot0.getWorldPos(slot0)
	if not slot0._position then
		slot0._position = slot0._tf.position
	end

	return slot0._position
end

function slot0.getCollider(slot0)
	return slot0.collider
end

function slot0.checkCollider(slot0, slot1, slot2)
	if not slot0:isAlife() then
		return
	end

	if slot0.minX < slot0.animChar:InverseTransformPoint(slot1).x and slot3.x < slot0.maxX and slot0._tf.anchoredPosition.x < slot2.x then
		return true
	end

	return false
end

function slot0.checkBulletCollider(slot0, slot1)
	if not slot0:isAlife() then
		return
	end

	if slot0.minX < slot0.animChar:InverseTransformPoint(slot1).x and slot2.x < slot0.maxX and slot0.minY < slot2.y and slot2.y < slot0.maxY then
		return true
	end

	return false
end

function slot0.setRaycast(slot0, slot1)
	GetComponent(findTF(slot0._tf, "click"), typeof(Image)).raycastTarget = slot1
end

function slot0.addBuff(slot0, slot1)
	slot3 = slot0:getOrCreateBuff(slot1.id)
	slot3.time = slot1.time
	slot3.times = slot3.times + 1

	if slot1.times < slot3.times then
		slot3.times = slot1.times
	else
		for slot7, slot8 in ipairs(slot3.triggerEffectTfs) do
			setActive(slot8, false)
			setActive(slot8, true)
		end
	end

	if slot3.effectTfs then
		for slot7, slot8 in ipairs(slot3.effectTfs) do
			setActive(slot8, false)
			setActive(slot8, true)
		end
	end
end

function slot0.removeBuff(slot0, slot1)
	for slot5 = #slot0.buffs, 1, -1 do
		if slot0.buffs[slot5] == slot1 then
			slot0:disposeBuff(table.remove(slot0.buffs, slot5))
		end
	end
end

function slot0.disposeBuff(slot0, slot1)
	if #slot1.effectTfs > 0 then
		for slot5 = 1, #slot1.effectTfs do
			Destroy(slot1.effectTfs[slot5])
		end
	end

	slot1.effectTfs = {}

	if #slot1.triggerEffectTfs > 0 then
		for slot5 = 1, #slot1.triggerEffectTfs do
			Destroy(slot1.triggerEffectTfs[slot5])
		end
	end

	slot1.triggerEffectTfs = {}
end

function slot0.getOrCreateBuff(slot0, slot1)
	for slot5 = 1, #slot0.buffs do
		if slot0.buffs[slot5].config.id == slot1 then
			return slot0.buffs[slot5]
		end
	end

	slot2 = {
		effectTfs = {}
	}

	if BeachGuardConst.buff[slot1].effect and #slot3.effect > 0 then
		for slot7, slot8 in ipairs(slot3.effect) do
			slot9 = BeachGuardConst.effect[slot8]

			if slot9.front then
				setParent(BeachGuardAsset.getEffect(slot9.name), slot0.effectFrontPos)
			else
				setParent(slot10, slot0.effectBackPos)
			end

			setActive(slot10, true)

			slot10.anchoredPosition = Vector2(0, 0)

			table.insert(slot2.effectTfs, slot10)
		end
	end

	slot2.triggerEffectTfs = {}

	if slot3.trigger_effect and #slot3.trigger_effect > 0 then
		for slot7, slot8 in ipairs(slot3.trigger_effect) do
			slot9 = BeachGuardConst.effect[slot8]

			if slot9.front then
				setParent(BeachGuardAsset.getEffect(slot9.name), slot0.effectFrontPos)
			else
				setParent(slot10, slot0.effectBackPos)
			end

			setActive(slot10, true)

			slot10.anchoredPosition = Vector2(0, 0)

			table.insert(slot2.triggerEffectTfs, slot10)
		end
	end

	slot2.times = 0
	slot2.time = 0
	slot2.config = slot3

	table.insert(slot0.buffs, slot2)

	return slot2
end

function slot0.getScore(slot0)
	return slot0._config.score or 0
end

return slot0
