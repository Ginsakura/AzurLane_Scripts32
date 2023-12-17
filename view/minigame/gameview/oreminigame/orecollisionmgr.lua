slot0 = class("OreCollisionMgr")

function slot0.Ctor(slot0, slot1)
	slot0.binder = slot1
	slot0.oreMap = {}
	slot0.enemyMap = {}
end

function slot0.SetAkashiObject(slot0, slot1)
	slot0.akashiControl = slot1
end

function slot0.AddOreObject(slot0, slot1, slot2)
	slot0.oreMap[slot1] = slot2
end

function slot0.RemoveOreObject(slot0, slot1, slot2)
	slot0.oreMap[slot1] = nil
end

function slot0.AddEnemyObject(slot0, slot1, slot2, slot3)
	if not slot0.enemyMap[slot1] then
		slot0.enemyMap[slot1] = {}
	end

	slot0.enemyMap[slot1][slot2] = slot3
end

function slot0.RemoveEnemyObject(slot0, slot1, slot2, slot3)
	slot0.enemyMap[slot1][slot2] = nil
end

function slot0.Reset(slot0)
	slot0.oreMap = {}
	slot0.enemyMap = {}
	slot0.oreTarget = ""
end

function slot1(slot0, slot1)
	slot3 = slot0.aabb
	slot4 = slot1.aabb

	if ({
		x = math.abs(slot1.pos.x - slot0.pos.x),
		y = math.abs(slot1.pos.y - slot0.pos.y)
	}).x < math.abs(slot3[2][1] - slot3[1][1]) / 2 + math.abs(slot4[2][1] - slot4[1][1]) / 2 and slot2.y < math.abs(slot3[2][2] - slot3[1][2]) / 2 + math.abs(slot4[2][2] - slot4[1][2]) / 2 then
		return true
	end

	return false
end

function slot2(slot0, slot1, slot2)
	switch(slot0, {
		W = function ()
			return uv0.x < uv1.x
		end,
		N = function ()
			return uv1.y < uv0.y
		end,
		E = function ()
			return uv1.x < uv0.x
		end,
		S = function ()
			return uv0.y < uv1.y
		end
	})

	return false
end

function slot0.GetCarryOreTarget(slot0)
	slot1, slot2 = nil
	slot3 = OreGameConfig.CARRY_RADIUS
	slot6 = slot0.akashiControl:GetCollisionInfo().pos

	for slot10, slot11 in pairs(slot0.oreMap) do
		if uv0(slot0.akashiControl:GetAnimDirLabel(), slot6, slot11:GetCollisionInfo().pos) and Vector2.Distance(slot6, slot12) <= OreGameConfig.CARRY_LOOKAT_RADIUS and (not slot2 or slot13 <= slot2) then
			slot2 = slot13
			slot1 = slot10
		end
	end

	if slot1 and slot2 then
		return slot1
	end

	for slot10, slot11 in pairs(slot0.oreMap) do
		if Vector2.Distance(slot6, slot11:GetCollisionInfo().pos) <= slot3 and (not slot2 or slot13 <= slot2) then
			slot2 = slot13
			slot1 = slot10
		end
	end

	return slot1 or ""
end

function slot0.UpdateOreStatus(slot0)
	if slot0.oreTarget ~= slot0:GetCarryOreTarget() then
		slot0.oreTarget = slot1

		slot0.binder:emit(OreGameConfig.EVENT_UPDATE_ORE_TARGET, {
			index = slot0.oreTarget
		})
	end
end

function slot0.UpdateAkashiCollision(slot0)
	if slot0.akashiControl:IsInvincible() then
		return
	end

	slot1 = slot0.akashiControl:GetCollisionInfo()

	for slot5, slot6 in pairs(slot0.enemyMap) do
		for slot10, slot11 in pairs(slot6) do
			if uv0(slot1, slot11:GetCollisionInfo()) then
				slot0.binder:emit(OreGameConfig.EVENT_AKASHI_COLLISION, {
					a = slot0.akashiControl,
					b = slot11
				})

				return
			end
		end
	end
end

function slot0.UpdateEnemyCollision(slot0)
	for slot4, slot5 in pairs(slot0.enemyMap) do
		slot6 = {}

		for slot10, slot11 in pairs(slot5) do
			if not slot6[slot10] then
				slot6[slot10] = {}
			end

			slot12 = slot11:GetCollisionInfo()

			for slot16, slot17 in pairs(slot5) do
				if not slot6[slot16] then
					slot6[slot16] = {}
				end

				if slot16 ~= slot10 and not slot6[slot10][slot16] and not slot6[slot16][slot10] then
					if uv0(slot12, slot17:GetCollisionInfo()) then
						slot0.binder:emit(OreGameConfig.EVENT_ENEMY_COLLISION, {
							a = slot11,
							b = slot17
						})
					end

					slot6[slot10][slot16] = true
					slot6[slot16][slot10] = true
				end
			end
		end
	end
end

function slot0.OnTimer(slot0, slot1)
	slot0:UpdateOreStatus()
	slot0:UpdateAkashiCollision()
	slot0:UpdateEnemyCollision()
end

return slot0
