slot0 = class("PlayerConst")
slot0.ResGold = 1
slot0.ResOil = 2
slot0.ResExploit = 3
slot0.ResDiamond = 4
slot0.ResOilField = 5
slot0.ResDormMoney = 6
slot0.ResGoldField = 7
slot0.ResGuildCoin = 8
slot0.ResBlueprintFragment = 9
slot0.ResClassField = 10
slot0.ResBattery = 101
slot0.ResPT = 102
slot1 = nil

function slot2(slot0)
	uv0 = uv0 or {
		[DROP_TYPE_RESOURCE] = function (slot0)
			if getProxy(PlayerProxy) then
				slot1:UpdatePlayerRes(slot0.id, slot0.count)
			end
		end,
		[DROP_TYPE_ITEM] = function (slot0)
			if getProxy(BagProxy) then
				if slot0.count > 0 then
					slot1:addItemById(slot0.id, slot0.count)
				elseif slot0.count < 0 then
					slot1:removeItemById(slot0.id, -slot0.count)
				end
			end
		end,
		[DROP_TYPE_WORLD_ITEM] = function (slot0)
			assert(nowWorld().type == World.TypeFull)

			if slot1:GetInventoryProxy() then
				if slot0.count > 0 then
					slot2:AddItem(slot0.id, slot0.count)
				elseif slot0.count < 0 then
					slot2:RemoveItem(slot0.id, -slot0.count)
				end
			end
		end
	}

	switch(slot0.type, uv0, function ()
		assert(false)
	end, slot0)
end

function addPlayerOwn(slot0)
	slot0.count = math.max(slot0.count, 0)

	uv0(slot0)
end

function reducePlayerOwn(slot0)
	slot0.count = -math.max(slot0.count, 0)

	uv0(slot0)
end

function slot0.addTranDrop(slot0, slot1)
	slot0 = underscore.map(slot0, function (slot0)
		return Drop.New({
			type = slot0.type,
			id = slot0.id,
			count = slot0.number
		})
	end)

	for slot7, slot8 in pairs(getProxy(BayProxy):getNewShip(false)) do
		if slot8:isMetaShip() then
			table.insert({}, slot8.configId)
		end
	end

	for slot8, slot9 in ipairs(slot0) do
		slot10, slot11 = slot9:DropTrans(slot3, slot1)

		if slot10 then
			table.insert({}, slot10)
			pg.m02:sendNotification(GAME.ADD_ITEM, slot10)
		end

		if slot11 then
			pg.m02:sendNotification(GAME.ADD_ITEM, slot11)
		end
	end

	if slot1 and slot1.taskId and pg.task_data_template[slot1.taskId].auto_commit == 1 then
		return {}
	else
		return slot4
	end
end

function slot0.BonusItemMarker(slot0)
	slot1 = {}

	for slot5, slot6 in ipairs(slot0) do
		if slot6.type == DROP_TYPE_VITEM and slot6:getConfig("virtual_type") == 20 then
			slot6.catchupActTag = slot1[slot6.id]
			slot1[slot6.id] = true
		end
	end

	return slot0
end

slot3, slot4 = nil

function slot0.MergePassItemDrop(slot0)
	uv0 = uv0 or {
		[DROP_TYPE_SKIN] = 1,
		[DROP_TYPE_SHIP] = 9
	}
	uv1 = uv1 or {
		[DROP_TYPE_RESOURCE .. "_" .. 14] = 2,
		[DROP_TYPE_RESOURCE .. "_" .. 1] = 8,
		[DROP_TYPE_RESOURCE .. "_" .. 2] = 8,
		[DROP_TYPE_ITEM .. "_" .. 20001] = 3,
		[DROP_TYPE_ITEM .. "_" .. 42036] = 4,
		[DROP_TYPE_ITEM .. "_" .. 42030] = 5,
		[DROP_TYPE_ITEM .. "_" .. 54007] = 5,
		[DROP_TYPE_ITEM .. "_" .. 16502] = 6,
		[DROP_TYPE_ITEM .. "_" .. 16004] = 7,
		[DROP_TYPE_ITEM .. "_" .. 16014] = 7,
		[DROP_TYPE_ITEM .. "_" .. 16024] = 7,
		[DROP_TYPE_ITEM .. "_" .. 50006] = 10,
		[DROP_TYPE_ITEM .. "_" .. 17004] = 11,
		[DROP_TYPE_ITEM .. "_" .. 17014] = 11,
		[DROP_TYPE_ITEM .. "_" .. 17024] = 11,
		[DROP_TYPE_ITEM .. "_" .. 17034] = 11,
		[DROP_TYPE_ITEM .. "_" .. 17044] = 11,
		[DROP_TYPE_ITEM .. "_" .. 21101] = 12,
		[DROP_TYPE_ITEM .. "_" .. 21111] = 12,
		[DROP_TYPE_ITEM .. "_" .. 21121] = 12,
		[DROP_TYPE_ITEM .. "_" .. 21131] = 12,
		[DROP_TYPE_ITEM .. "_" .. 30015] = 13,
		[DROP_TYPE_ITEM .. "_" .. 30025] = 13,
		[DROP_TYPE_ITEM .. "_" .. 30035] = 13,
		[DROP_TYPE_ITEM .. "_" .. 30045] = 13,
		[DROP_TYPE_ITEM .. "_" .. 20013] = 14,
		[DROP_TYPE_ITEM .. "_" .. 15008] = 15,
		[DROP_TYPE_ITEM .. "_" .. 17003] = 16,
		[DROP_TYPE_ITEM .. "_" .. 17013] = 16,
		[DROP_TYPE_ITEM .. "_" .. 17023] = 16,
		[DROP_TYPE_ITEM .. "_" .. 17033] = 16,
		[DROP_TYPE_ITEM .. "_" .. 17043] = 16,
		[DROP_TYPE_ITEM .. "_" .. 15001] = 17
	}
	uv2.PassItemOrder = uv2.PassItemOrder or setmetatable(uv1, {
		__index = function (slot0, slot1)
			slot2, slot3 = unpack(string.split(slot1, "_"))

			if uv0[slot2] then
				return uv0[slot2]
			elseif slot2 == DROP_TYPE_ITEM and Item.getConfigData(slot3).type == 13 then
				return 9
			else
				return 100
			end
		end
	})
	slot1 = uv2.MergeSameDrops(slot0)

	table.sort(slot1, CompareFuncs({
		function (slot0)
			return uv0.PassItemOrder[slot0.type .. "_" .. slot0.id]
		end,
		function (slot0)
			return slot0.id
		end
	}))

	return slot1
end

function slot0.CheckResForShopping(slot0, slot1)
	slot2 = slot0.count * slot1
	slot3 = 0

	if slot0.type == DROP_TYPE_RESOURCE then
		slot3 = getProxy(PlayerProxy):getRawData():getResource(slot0.id)
	elseif slot0.type == DROP_TYPE_ITEM then
		slot3 = getProxy(BagProxy):getItemCountById(slot0.id)
	else
		assert(false)
	end

	return slot2 <= slot3
end

function slot0.ConsumeResForShopping(slot0, slot1)
	if slot0.type == DROP_TYPE_RESOURCE then
		slot3 = getProxy(PlayerProxy):getData()

		slot3:consume({
			[id2res(slot0.id)] = slot0.count * slot1
		})
		getProxy(PlayerProxy):updatePlayer(slot3)
	elseif slot0.type == DROP_TYPE_ITEM then
		getProxy(BagProxy):removeItemById(slot0.id, slot2)
	else
		assert(false)
	end
end

function slot0.GetTranAwards(slot0, slot1)
	slot3 = PlayerConst.addTranDrop(slot1.award_list)

	for slot7, slot8 in ipairs({}) do
		if slot8.type == DROP_TYPE_SHIP and not getProxy(CollectionProxy):getShipGroup(pg.ship_data_template[slot8.id].group_type) and Ship.inUnlockTip(slot8.id) then
			pg.TipsMgr.GetInstance():ShowTips(i18n("collection_award_ship", slot9.name))
		end
	end

	if slot0.isAwardMerge then
		slot3 = uv0.MergeSameDrops(slot3)
	end

	return slot3
end

function slot0.MergeTechnologyAward(slot0)
	for slot5, slot6 in ipairs(slot0.commons) do
		slot6.riraty = true

		table.insert(slot0.items, slot6)
	end

	for slot5, slot6 in ipairs(slot0.catchupItems) do
		slot6.catchupTag = true

		table.insert(slot1, slot6)
	end

	for slot5, slot6 in ipairs(slot0.catchupActItems) do
		slot6.catchupActTag = true

		table.insert(slot1, slot6)
	end

	return slot1
end

function slot0.CanDropItem(slot0)
	if getProxy(ActivityProxy):getActivityById(ActivityConst.UTAWARERU_ACTIVITY_PT_ID) and not slot2:isEnd() then
		slot3 = slot2:getConfig("config_client").pt_id

		if _.detect(slot1:getActivitiesByType(ActivityConst.ACTIVITY_TYPE_PT_RANK), function (slot0)
			return slot0:getConfig("config_id") == uv0
		end):getData1() >= 1500 then
			slot4 = slot4 - 1500
			slot0 = _.filter(slot0, function (slot0)
				return slot0.type ~= DROP_TYPE_RESOURCE or slot0.id ~= uv0
			end)

			if _.detect(slot0, function (slot0)
				return slot0.type == DROP_TYPE_RESOURCE and slot0.id == uv0
			end) and slot4 < slot5.count then
				slot5.count = slot5.count - slot4

				table.insert(slot0, slot5)
			end
		end
	end

	return table.getCount(PlayerConst.BonusItemMarker(slot0)) > 0
end

slot5 = nil

function slot6(slot0)
	uv0 = uv0 or {
		[DROP_TYPE_SHIP] = true,
		[DROP_TYPE_OPERATION] = true,
		[DROP_TYPE_LOVE_LETTER] = true
	}

	if uv0[slot0.type] then
		return true
	elseif slot0.type == DROP_TYPE_ITEM and tobool(slot0.extra) then
		return true
	else
		return false
	end
end

function slot0.MergeSameDrops(slot0)
	slot1 = {}
	slot2 = {}

	for slot6, slot7 in ipairs(slot0) do
		if not slot2[slot7.type .. "_" .. slot7.id] then
			if not uv0(slot7) then
				slot2[slot8] = slot7
			end

			table.insert(slot1, slot7)
		else
			slot2[slot8].count = slot2[slot8].count + slot7.count
		end
	end

	return slot1
end

return slot0
