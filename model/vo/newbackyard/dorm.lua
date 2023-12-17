slot0 = class("Dorm", import("..BaseVO"))
slot0.MAX_FLOOR = 2
slot0.MAX_LEVEL = 4
slot0.DORM_2_FLOOR_COMFORTABLE_ADDITION = 20
slot0.COMFORTABLE_LEVEL_1 = 1
slot0.COMFORTABLE_LEVEL_2 = 2
slot0.COMFORTABLE_LEVEL_3 = 3

function slot0.Ctor(slot0, slot1)
	slot0.configId = slot1.id or slot1.lv
	slot0.id = slot0.configId
	slot0.level = slot0.id
	slot0.food = slot1.food or 0
	slot0.food_extend_count = slot1.food_max_increase_count
	slot0.dorm_food_max = slot1.food_max_increase
	slot0.next_timestamp = slot1.next_timestamp or 0
	slot0.exp_pos = slot1.exp_pos or 2
	slot0.rest_pos = slot0.exp_pos
	slot0.load_exp = 0
	slot0.load_food = 0
	slot0.load_time = slot1.load_time or 0
	slot0.name = slot1.name
	slot0.shipIds = slot1.shipIds or {}
	slot0.floorNum = slot1.floor_num or 1
	slot0.furnitures = {}
	slot0.themes = {}
	slot0.expandIds = {
		50011,
		50012,
		50013
	}
	slot0.shopCfg = pg.shop_template
end

function slot0.GetExpandId(slot0)
	for slot5, slot6 in ipairs(slot0.expandIds) do
		if slot0.shopCfg[slot6].limit_args[1][2] == slot0.level - 1 then
			return slot6
		end
	end
end

function slot0.IsMaxLevel(slot0)
	return uv0.MAX_LEVEL <= slot0.level
end

function slot0.GetMapSize(slot0)
	return uv0.StaticGetMapSize(slot0.level)
end

function slot0.StaticGetMapSize(slot0)
	slot1 = 12 - (slot0 - 1) * 4
	slot4 = BackYardConst.MAX_MAP_SIZE

	return Vector4(slot1, slot1, slot4.x, slot4.y)
end

function slot0.isUnlockFloor(slot0, slot1)
	return slot1 <= slot0.floorNum
end

function slot0.setFloorNum(slot0, slot1)
	assert(slot1 <= uv0.MAX_FLOOR, "floornum more than max" .. slot1)

	slot0.floorNum = slot1
end

function slot0.setName(slot0, slot1)
	slot0.name = slot1
end

function slot0.GetName(slot0)
	return slot0.name
end

function slot0.getExtendTrainPosShopId(slot0)
	slot1 = pg.shop_template

	for slot5, slot6 in pairs({
		3,
		4,
		18,
		26
	}) do
		if slot1[slot6].effect_args == ShopArgs.EffectDromExpPos and slot1[slot6].limit_args[1][2] <= slot0.exp_pos and slot0.exp_pos <= slot1[slot6].limit_args[1][3] then
			return slot6
		end
	end
end

function slot0.bindConfigTable(slot0)
	return pg.dorm_data_template
end

function slot0.getComfortable(slot0, slot1)
	slot2 = 0
	slot3 = {}

	function slot4(slot0)
		if not uv0[slot0:getTypeForComfortable()] then
			uv0[slot1] = {}
		end

		table.insert(uv0[slot1], slot0:getConfig("comfortable"))
	end

	for slot8, slot9 in pairs(slot0.furnitures) do
		for slot14 = 1, slot9.count or 1 do
			slot4(slot9)
		end
	end

	for slot8, slot9 in pairs(slot1 or {}) do
		slot4(slot9)
	end

	for slot9, slot10 in pairs(slot0:getConfig("comfortable_count")) do
		table.sort(slot3[slot10[1]] or {}, function (slot0, slot1)
			return slot1 < slot0
		end)

		for slot15 = 1, slot10[2] do
			slot2 = slot2 + (slot11[slot15] or 0)
		end
	end

	if slot0:isUnlockFloor(2) then
		slot2 = slot2 + (slot0.level - 1) * 10 + uv0.DORM_2_FLOOR_COMFORTABLE_ADDITION
	end

	return slot2
end

function slot0.GetComfortableLevel(slot0, slot1)
	if slot1 < 30 then
		return uv0.COMFORTABLE_LEVEL_1
	elseif slot1 >= 30 and slot1 < 68 then
		return uv0.COMFORTABLE_LEVEL_2
	else
		return uv0.COMFORTABLE_LEVEL_3
	end
end

function slot0._GetComfortableLevel(slot0)
	return slot0:GetComfortableLevel(slot0:getComfortable())
end

function slot0.GetComfortableColor(slot0, slot1)
	return ({
		Color.New(0.9490196, 0.772549, 0.772549, 1),
		Color.New(0.9882353, 0.9333333, 0.7647059, 1),
		Color.New(0.8588235, 0.9490196, 0.772549, 1)
	})[slot1]
end

function slot0.increaseTrainPos(slot0)
	slot0.exp_pos = slot0.exp_pos + 1
end

function slot0.increaseRestPos(slot0)
	slot0.rest_pos = slot0.rest_pos + 1
end

function slot0.increaseFoodExtendCount(slot0)
	slot0.food_extend_count = slot0.food_extend_count + 1
end

function slot0.extendFoodCapacity(slot0, slot1)
	slot0.dorm_food_max = slot0.dorm_food_max + slot1
end

function slot0.levelUp(slot0)
	slot0.configId = slot0.configId + 1
	slot0.id = slot0.configId
	slot0.level = slot0.configId
	slot0.comfortable = (slot0.level - 1) * 10
end

function slot0.consumeFood(slot0, slot1)
	slot0.food = math.max(slot0.food - slot1, 0)
end

function slot0.restNextTime(slot0)
	slot0.next_timestamp = pg.TimeMgr.GetInstance():GetServerTime() + slot0:bindConfigTable()[slot0.id].time
end

function slot0.isMaxFood(slot0)
	return slot0.food >= slot0.dorm_food_max + slot0:bindConfigTable()[slot0.id].capacity
end

function slot0.getFoodLeftTime(slot0)
	slot1 = slot0:bindConfigTable()[slot0.id]

	if getProxy(DormProxy):getTrainShipCount() == 0 then
		return 0
	end

	slot4 = pg.gameset["dorm_food_ratio_by_" .. slot2].key_value / 100 * slot1.consume

	return slot0.next_timestamp + ((slot0.food - slot0.food % slot4) / slot4 - 1) * slot1.time
end

function slot0.GetCapcity(slot0)
	return slot0:getConfig("capacity") + slot0.dorm_food_max
end

function slot0.setShipIds(slot0, slot1)
	slot0.shipIds = slot1
end

function slot0.addShip(slot0, slot1)
	table.insert(slot0.shipIds, slot1)
end

function slot0.deleteShip(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.shipIds) do
		if slot6 == slot1 then
			table.remove(slot0.shipIds, slot5)

			break
		end
	end
end

function slot0.GetStateShipCnt(slot0, slot1)
	for slot6, slot7 in ipairs(slot0.shipIds) do
		if getProxy(BayProxy):RawGetShipById(slot7).state == slot1 then
			slot2 = 0 + 1
		end
	end

	return slot2
end

function slot0.GetStateShips(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in ipairs(slot0.shipIds) do
		if getProxy(BayProxy):RawGetShipById(slot7).state == slot1 then
			table.insert(slot2, slot8)
		end
	end

	return slot2
end

function slot0.GetStateShipsById(slot0, slot1)
	for slot6, slot7 in ipairs(slot0.shipIds) do
		if getProxy(BayProxy):RawGetShipById(slot7).state == slot1 then
			-- Nothing
		end
	end

	return {
		[slot8.id] = slot8
	}
end

function slot0.GetNonStateShips(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in ipairs(slot0.shipIds) do
		if getProxy(BayProxy):RawGetShipById(slot7).state ~= slot1 then
			table.insert(slot2, slot8)
		end
	end

	return slot2
end

function slot0.GetShips(slot0)
	for slot6, slot7 in ipairs(slot0.shipIds) do
		if getProxy(BayProxy):RawGetShipById(slot7) then
			-- Nothing
		else
			print("not found ship >>>", slot7)
		end
	end

	return {
		[slot8.id] = slot8
	}
end

function slot0.GetThemeList(slot0, slot1)
	return slot0.themes
end

function slot0.SetTheme(slot0, slot1, slot2)
	slot0.themes[slot1] = slot2
end

function slot0.GetTheme(slot0, slot1)
	return slot0.themes[slot1]
end

function slot0.GetPurchasedFurnitures(slot0)
	return slot0.furnitures
end

function slot0.GetOwnFurnitureCount(slot0, slot1)
	if not slot0.furnitures[slot1] then
		return 0
	else
		return slot2.count
	end
end

function slot0.SetFurnitures(slot0, slot1)
	slot0.furnitures = slot1
end

function slot0.AddFurniture(slot0, slot1)
	if not slot0.furnitures[slot1.id] then
		slot1:MarkNew()

		slot0.furnitures[slot1.id] = slot1
	else
		slot2 = slot0.furnitures[slot1.id]

		slot2:setCount(slot2.count + slot1.count)
	end
end

function slot0.IsPurchasedFurniture(slot0, slot1)
	return slot0.furnitures[slot1] ~= nil and slot0.furnitures[slot1].count > 0
end

function slot0.HasFurniture(slot0, slot1)
	return slot0.furnitures[slot1] ~= nil
end

function slot0.GetFurniture(slot0, slot1)
	return slot0.furnitures[slot1]
end

function slot0.GetPutFurnitureList(slot0, slot1)
	slot2 = {}

	for slot8, slot9 in pairs(slot0:GetTheme(slot1) and slot3:GetAllFurniture() or {}) do
		table.insert(slot2, slot9)
	end

	table.sort(slot2, BackyardThemeFurniture._LoadWeight)

	return slot2
end

function slot0.GetPutShipList(slot0, slot1)
	slot2 = {}

	for slot8, slot9 in pairs(slot0:GetShips()) do
		if slot9.state == ({
			Ship.STATE_TRAIN,
			Ship.STATE_REST
		})[slot1] then
			table.insert(slot2, slot9)
		end
	end

	return slot2
end

return slot0
