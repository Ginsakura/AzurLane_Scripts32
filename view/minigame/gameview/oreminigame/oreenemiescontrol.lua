slot0 = class("OreEnemiesControl")

function slot0.Ctor(slot0, slot1, slot2, slot3)
	slot0.binder = slot1
	slot0.collisionMgr = slot3
	slot0._tf = slot2
	slot0.poolTF = findTF(slot0._tf, "pool")

	slot0:Init()
end

function slot0.AddListener(slot0)
	slot0.binder:bind(OreGameConfig.EVENT_ENEMY_DESTROY, function (slot0, slot1)
		uv0.enemyList[slot1.roadID][slot1.index] = nil

		uv0:ReturnEnemy(findTF(uv0.roadTFs[slot1.roadID], slot1.index), slot1.id)
	end)
end

function slot0.Init(slot0)
	slot0:AddListener()

	slot0.roadTFs = {
		findTF(slot0._tf, "road_1"),
		findTF(slot0._tf, "road_2"),
		findTF(slot0._tf, "road_3")
	}
	slot0.tpls = findTF(slot0._tf, "tpls")
	slot0.enemyList = {}

	slot0:Reset()
end

function slot0.InitCreatList(slot0)
	function slot1(slot0, slot1)
		if not uv0.createList[slot0] then
			uv0.createList[slot0] = {
				slot1
			}
		else
			table.insert(uv0.createList[slot0], slot1)
		end
	end

	function slot2(slot0, slot1, slot2)
		assert(OreGameConfig.CREATE_CONFIG[slot2].num <= #Clone(OreGameConfig.CREATE_CONFIG[slot2].enemy), "create cfg illegal. ID: " .. slot2)

		slot5 = slot0

		for slot9 = 1, slot3 do
			slot10 = math.random(1, #slot4)

			table.remove(slot4, slot10)
			uv0(slot5, {
				roadID = slot1,
				enemyID = slot4[slot10]
			})

			slot5 = slot5 + 1
		end
	end

	slot0.roadDir = OreGameConfig.ROAD_DIRECTION[math.random(#OreGameConfig.ROAD_DIRECTION)]

	for slot6, slot7 in ipairs(slot0.roadTFs) do
		slot8 = OreGameConfig["CREATE_ENEMY_ROAD_" .. slot6]

		if OreGameConfig.ROAD_CONFIG_TYPE[slot6] == 1 then
			for slot13, slot14 in ipairs(slot8) do
				slot2(slot14.time, slot6, slot14.create)
			end
		elseif slot9 == 2 then
			for slot13, slot14 in ipairs(slot8) do
				slot15 = slot14.time

				while slot15 < slot14.stop do
					slot2(slot15, slot6, slot14.create)

					slot15 = slot15 + math.random(slot14.step[1], slot14.step[2])
				end
			end
		end
	end
end

function slot0.CreateEnemy(slot0, slot1)
	for slot5, slot6 in ipairs(slot1) do
		slot7 = slot0.indexTags[slot6.roadID] + 1
		slot0.indexTags[slot6.roadID] = slot7
		slot8 = slot0:GetEnemy(slot6.enemyID)

		slot8:SetParent(tf(slot0.roadTFs[slot6.roadID]), false)

		slot8.name = slot7

		SetActive(slot8, true)

		if not slot0.enemyList[slot6.roadID] then
			slot0.enemyList[slot6.roadID] = {}
		end

		slot0.enemyList[slot6.roadID][slot7] = OreEnemy.New(slot0.binder, slot8, slot0.collisionMgr, slot6.enemyID, slot6.roadID, slot0.roadDir[slot6.roadID])
	end
end

function slot0.Reset(slot0)
	slot0.time = 0
	slot0.createList = {}

	for slot4, slot5 in pairs(slot0.enemyList) do
		for slot9, slot10 in pairs(slot5) do
			slot10:Dispose()
		end
	end

	slot0.enemyList = {}
	slot0.indexTags = {
		0,
		0,
		0
	}

	for slot4, slot5 in pairs(slot0.roadTFs) do
		removeAllChildren(slot5)
	end

	slot0:InitCreatList()

	slot0.pools = {}

	removeAllChildren(slot0.poolTF)
end

function slot0.OnTimer(slot0, slot1)
	slot0.time = slot0.time + slot1

	for slot5, slot6 in pairs(slot0.createList) do
		if slot5 <= slot0.time then
			slot0:CreateEnemy(slot6)

			slot0.createList[slot5] = nil
		end
	end

	for slot5, slot6 in pairs(slot0.enemyList) do
		for slot10, slot11 in pairs(slot6) do
			slot11:OnTimer(slot1)
		end
	end
end

function slot0.GetEnemy(slot0, slot1)
	if slot0.pools[slot1] and #slot0.pools[slot1] > 0 then
		return table.remove(slot0.pools[slot1])
	end

	return tf(Instantiate(findTF(slot0.tpls, slot1)))
end

function slot0.ReturnEnemy(slot0, slot1, slot2)
	if not slot0.pools[slot2] then
		slot0.pools[slot2] = {}
	end

	slot1:SetParent(tf(slot0.poolTF), false)
	setActive(slot1, false)
	table.insert(slot0.pools[slot2], tf(slot1))
end

return slot0
