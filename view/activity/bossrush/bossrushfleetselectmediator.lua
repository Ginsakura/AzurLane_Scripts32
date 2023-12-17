slot0 = class("BossRushFleetSelectMediator", import("view.base.ContextMediator"))
slot0.ON_OPEN_DECK = "BossRushFleetSelectMediator:ON_OPEN_DECK"
slot0.ON_FLEET_SHIPINFO = "BossRushFleetSelectMediator:ON_FLEET_SHIPINFO"
slot0.ON_TRACE = "BossRushFleetSelectMediator:ON_TRACE"
slot0.ON_UPDATE_CUSTOM_FLEET = "BossRushFleetSelectMediator:ON_UPDATE_CUSTOM_FLEET"
slot0.ON_PRECOMBAT = "BossRushFleetSelectMediator:ON_PRECOMBAT"
slot0.ON_ELITE_RECOMMEND = "BossRushFleetSelectMediator:ON_ELITE_RECOMMEND"
slot0.ON_ELITE_CLEAR = "BossRushFleetSelectMediator:ON_ELITE_CLEAR"
slot0.OPEN_COMMANDER_PANEL = "BossRushFleetSelectMediator:OPEN_COMMANDER_PANEL"
slot0.ON_SELECT_COMMANDER = "BossRushFleetSelectMediator:ON_SELECT_COMMANDER"
slot0.ON_COMMANDER_SKILL = "BossRushFleetSelectMediator:ON_COMMANDER_SKILL"
slot0.ON_SWITCH_MODE = "BossRushFleetSelectMediator:ON_SWITCH_MODE"

function slot0.register(slot0)
	slot0:bind(uv0.ON_OPEN_DECK, function (slot0, slot1)
		slot3 = slot1.shipVO
		slot6, slot7, slot8 = uv0.getDockCallbackFuncs(slot3, uv0.contextData.fleets[slot1.fleetIndex], slot1.teamType, _.flatten(_.map(uv0.contextData.fleets, function (slot0)
			return slot0:GetRawShipIds()
		end)), uv0.contextData.actId)
		slot15.inActivity = uv0.contextData.actId
		slot16.__index = ShipStatus.TAG_HIDE_ACTIVITY_BOSS

		uv0:sendNotification(GAME.GO_SCENE, SCENE.DOCKYARD, {
			selectedMax = 1,
			useBlackBlock = true,
			selectedMin = 0,
			energyDisplay = true,
			leastLimitMsg = i18n("ship_formationMediator_leastLimit"),
			quitTeam = slot3 ~= nil,
			teamFilter = slot5,
			leftTopInfo = i18n("word_formation"),
			onShip = slot6,
			confirmSelect = slot7,
			onSelected = slot8,
			hideTagFlags = setmetatable({}, {}),
			otherSelectedIds = slot4,
			ignoredIds = pg.ShipFlagMgr.GetInstance():FilterShips({
				isActivityNpc = true
			})
		})
	end)
	slot0:bind(uv0.ON_FLEET_SHIPINFO, function (slot0, slot1)
		slot2 = uv0.contextData.fleet
		slot7.shipId = slot1.shipId
		slot7.shipVOs = slot1.shipVOs

		uv0:sendNotification(GAME.GO_SCENE, SCENE.SHIPINFO, {})
	end)
	slot0:bind(uv0.ON_UPDATE_CUSTOM_FLEET, function (slot0)
		_.each(uv0.contextData.fleets, function (slot0)
			getProxy(FleetProxy):updateActivityFleet(uv0.contextData.actId, slot0.id, slot0)
		end)
		_.each(uv0.contextData.fleets, function (slot0)
			uv0[slot0.id] = slot0
		end)

		slot5.actID = uv0.contextData.actId
		slot5.fleets = {}

		uv0:sendNotification(GAME.EDIT_ACTIVITY_FLEET, {})
	end)
	slot0:bind(uv0.ON_TRACE, function (slot0)
		uv0.viewComponent:emit(uv1.ON_UPDATE_CUSTOM_FLEET)

		slot4.actId = uv0.contextData.actId
		slot4.seriesId = uv0.contextData.seriesData.id
		slot4.mode = uv0.contextData.mode

		uv0:sendNotification(GAME.BOSSRUSH_TRACE, {})
	end)
	slot0:bind(uv0.ON_ELITE_RECOMMEND, function (slot0, slot1)
		slot2 = slot1.index
		slot3 = uv0.contextData.fleets[slot2]
		slot4 = slot2 == #uv0.contextData.fleets
		slot8 = table.shallowCopy(slot3:GetRawShipIds())
		slot9 = _.flatten(_.map(uv0.contextData.fleets, function (slot0)
			return slot0:GetRawShipIds()
		end))
		slot12, slot13, slot14 = ipairs(slot3:GetRawShipIds())

		for slot15, slot16 in slot12, slot13, slot14 do
			slot20 = 0
			slot22, slot23, slot24 = ipairs(({
				[TeamType.Main] = {
					0,
					0,
					0
				},
				[TeamType.Vanguard] = {
					0,
					0,
					0
				},
				[TeamType.Submarine] = {
					0,
					0,
					0
				}
			})[TeamType.GetTeamFromShipType(getProxy(BayProxy):getRawData()[slot16]:getShipType())])

			for slot25, slot26 in slot22, slot23, slot24 do
				if ShipType.ContainInLimitBundle(slot26, slot18) then
					slot20 = slot26

					break
				end
			end

			slot22, slot23, slot24 = ipairs(slot21)

			for slot25, slot26 in slot22, slot23, slot24 do
				if slot26 == slot20 then
					table.remove(slot21, slot25)

					break
				end
			end
		end

		function slot12(slot0, slot1)
			if uv0:getRecommendShip(underscore.filter(TeamType.GetShipTypeListFromTeam(slot1), function (slot0)
				return ShipType.ContainInLimitBundle(uv0, slot0)
			end), uv1) then
				uv2:insertShip(slot3, nil, slot3:getTeamType())
				table.insert(uv3, slot3.id)
				table.insert(uv1, slot3.id)
			end
		end

		slot13 = nil

		if slot2 == #uv0.contextData.fleets then
			slot14[TeamType.Submarine] = slot7
			slot13 = {}
		else
			slot14[TeamType.Main] = slot5
			slot14[TeamType.Vanguard] = slot6
			slot13 = {}
		end

		slot14, slot15, slot16 = pairs(slot13)

		for slot17, slot18 in slot14, slot15, slot16 do
			slot19, slot20, slot21 = ipairs(slot18)

			for slot22, slot23 in slot19, slot20, slot21 do
				slot12(slot23, slot17)
			end
		end

		uv0.viewComponent:updateEliteFleets()
	end)
	slot0:bind(uv0.ON_ELITE_CLEAR, function (slot0, slot1)
		uv0.contextData.fleets[slot1.index]:clearFleet()
		uv0.viewComponent:updateEliteFleets()
	end)
	slot0:bind(uv0.ON_PRECOMBAT, function (slot0)
		slot5.mediator = BossRushPreCombatMediator
		slot5.viewComponent = BossRushPreCombatLayer
		slot6.seriesData = uv0.contextData.seriesData
		slot6.actId = uv0.contextData.actId
		slot6.system = uv0.contextData.system
		slot6.mode = uv0.contextData.mode
		slot6.stageIds = uv0.contextData.stageIds
		slot6.fleets = table.shallowCopy(uv0.contextData.fleets)
		slot6.fleetIndex = uv0.contextData.fleetIndex
		slot5.data = {}

		uv0:addSubLayers(Context.New({}), true)
	end)
	slot0:bind(uv0.OPEN_COMMANDER_PANEL, function (slot0, slot1)
		uv0:openCommanderPanel(slot1, uv0.contextData.fleetIndex)
	end)
	slot0:bind(uv0.ON_SELECT_COMMANDER, function (slot0, slot1, slot2)
		slot3 = uv0.contextData.fleets
		slot10.mode = CommanderCatScene.MODE_SELECT
		slot10.activeCommander = slot3[slot1]:getCommanders()[slot2]
		slot10.fleetType = CommanderCatScene.FLEET_TYPE_BOSSRUSH
		slot10.fleets = slot3
		slot10.ignoredIds = {}

		function slot10.onCommander(slot0)
			return true
		end

		function slot10.onSelected(slot0, slot1)
			slot5, slot6, slot7 = pairs(uv0)

			for slot8, slot9 in slot5, slot6, slot7 do
				if slot8 == uv1 then
					slot10, slot11, slot12 = pairs(uv2)

					for slot13, slot14 in slot10, slot11, slot12 do
						if slot14.groupId == getProxy(CommanderProxy):getCommanderById(slot0[1]).groupId and slot13 ~= uv3 then
							pg.TipsMgr.GetInstance():ShowTips(i18n("commander_can_not_select_same_group"))

							return
						end
					end
				else
					slot11, slot12, slot13 = pairs(slot9:getCommanders())

					for slot14, slot15 in slot11, slot12, slot13 do
						if slot2 == slot15.id then
							pg.TipsMgr.GetInstance():ShowTips(i18n("commander_is_in_fleet_already"))

							return
						end
					end
				end
			end

			uv4:updateCommanderByPos(uv3, slot4)
			slot1()
		end

		function slot10.onQuit(slot0)
			uv0:updateCommanderByPos(uv1, nil)
			slot0()
		end

		uv0:sendNotification(GAME.GO_SCENE, SCENE.COMMANDERCAT, {
			maxCount = 1
		})
	end)
	slot0:bind(uv0.ON_COMMANDER_SKILL, function (slot0, slot1)
		slot5.mediator = CommanderSkillMediator
		slot5.viewComponent = CommanderSkillLayer
		slot6.skill = slot1
		slot5.data = {}

		uv0:addSubLayers(Context.New({}))
	end)
	slot0:bind(uv0.ON_SWITCH_MODE, function (slot0, slot1)
		uv0:OnSwitchMode(slot1)
	end)

	slot1 = slot0.contextData.seriesData
	slot0.contextData.stageIds = slot1:GetExpeditionIds()
	slot0.contextData.fullFleets = slot1:GetFleets()

	if not slot0.contextData.mode then
		if PlayerPrefs.GetInt("series_mode_flag" .. slot1.id, -1) ~= -1 then
			slot0.contextData.mode = slot3
		end
	end

	slot2 = slot0.contextData

	if not slot0.contextData.mode then
		slot3 = BossRushSeriesData.MODE.MULTIPLE
	end

	slot2.mode = slot3

	if not slot1:IsSingleFight() then
		slot0.contextData.mode = BossRushSeriesData.MODE.MULTIPLE
	end

	slot2 = slot0.contextData.fullFleets

	if slot0.contextData.mode == BossRushSeriesData.MODE.SINGLE then
		slot4[1] = slot2[1]
		slot4[2] = slot2[#slot2]
		slot0.contextData.fleets = {}
	else
		slot3 = slot0.contextData

		if not slot0.contextData.fleets then
			slot4 = table.shallowCopy(slot0.contextData.fullFleets)
		end

		slot3.fleets = slot4
	end

	slot0.contextData.fleetIndex = slot0.contextData.fleetIndex or 1

	if slot0.contextData.fleetIndex > #slot0.contextData.fleets then
		slot0.contextData.fleetIndex = 1
	end

	slot4 = slot0.contextData

	if not (slot1:GetType() == BossRushSeriesData.TYPE.EXTRA) then
		if not SYSTEM_BOSS_RUSH then
			slot5 = SYSTEM_BOSS_RUSH_EX
		end
	end

	slot4.system = slot5
	slot0.contextData.actId = slot1.actId

	slot0.viewComponent:setHardShipVOs(getProxy(BayProxy):getRawData())
end

function slot0.OnSwitchMode(slot0, slot1)
	assert(slot1)

	slot0.contextData.mode = slot1
	slot3 = slot0.contextData.fullFleets

	if slot0.contextData.mode == BossRushSeriesData.MODE.SINGLE then
		slot5[1] = slot3[1]
		slot5[2] = slot3[#slot3]
		slot0.contextData.fleets = {}

		if slot1 ~= slot0.contextData.mode then
			if slot0.contextData.fleetIndex < #slot3 then
				slot0.contextData.fleetIndex = 1
			else
				slot0.contextData.fleetIndex = 2
			end
		end
	else
		slot0.contextData.fleets = table.shallowCopy(slot3)

		if slot1 ~= slot2 then
			if slot0.contextData.fleetIndex == 2 then
				slot0.contextData.fleetIndex = #slot3
			end

			slot4 = slot0.contextData.fleets[1]:GetRawShipIds()

			_.each(_.slice(slot0.contextData.fleets, 2, #slot0.contextData.fleets - 2), function (slot0)
				_.each(uv0, function (slot0)
					uv0:removeShipById(slot0)
				end)
			end)
		end
	end

	PlayerPrefs.SetInt("series_mode_flag" .. slot0.contextData.seriesData.id, slot1)
end

function slot0.getRecommendShip(slot0, slot1, slot2)
	slot3 = slot0.contextData.actId
	slot6 = {
		[slot11] = slot11:getShipCombatPower()
	}
	slot7, slot8, slot9 = ipairs(getProxy(BayProxy):getShipsByTypes(slot1))

	for slot10, slot11 in slot7, slot8, slot9 do
		-- Nothing
	end

	table.sort(slot5, function (slot0, slot1)
		return uv0[slot0] < uv0[slot1]
	end)

	slot7 = {}
	slot9, slot10, slot11 = ipairs(slot2)

	for slot12, slot13 in slot9, slot10, slot11 do
		slot7[#slot7 + 1] = slot4:getRawData()[slot13]:getGroupId()
	end

	slot9 = #slot5
	slot10 = nil

	while slot9 > 0 do
		slot11 = slot5[slot9]

		if not table.contains(slot2, slot11.id) then
			if not table.contains(slot7, slot11:getGroupId()) then
				slot18.inActivity = slot3

				if ShipStatus.ShipStatusCheck("inActivity", slot11, nil, {}) then
					slot10 = slot11

					break
				end
			end
		else
			slot9 = slot9 - 1
		end
	end

	return slot10
end

function slot0.openCommanderPanel(slot0, slot1, slot2)
	slot3 = slot0.contextData.actId
	slot7.mediator = BossRushCMDFormationMediator
	slot7.viewComponent = BossRushCMDFormationView
	slot8.fleet = slot1

	function slot8.callback(slot0)
		if slot0.type == LevelUIConst.COMMANDER_OP_SHOW_SKILL then
			uv0.viewComponent:emit(uv1.ON_COMMANDER_SKILL, slot0.skill)
		elseif slot0.type == LevelUIConst.COMMANDER_OP_ADD then
			uv0:closeCommanderPanel()
			uv0.viewComponent:emit(uv1.ON_SELECT_COMMANDER, uv2, slot0.pos)
		else
			slot5.FleetType = LevelUIConst.FLEET_TYPE_BOSSRUSH
			slot5.data = slot0
			slot5.fleetId = uv3.id
			slot5.actId = uv4
			slot5.fleets = uv0.contextData.fleets
			slot4.data = {}

			uv0:sendNotification(GAME.COMMANDER_FORMATION_OP, {})
		end
	end

	slot7.data = {}

	slot0:addSubLayers(Context.New({}))
end

function slot0.closeCommanderPanel(slot0)
	if getProxy(ContextProxy):getCurrentContext():getContextByMediator(BossRushCMDFormationMediator) then
		slot7.context = slot3

		slot0:sendNotification(GAME.REMOVE_LAYERS, {})
	end
end

function slot0.listNotificationInterests(slot0)
	slot1[1] = GAME.COMMANDER_ACTIVITY_FORMATION_OP_DONE
	slot1[2] = BossRushPreCombatMediator.ON_FLEET_REFRESHED

	return {}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == nil then
		-- Nothing
	elseif slot2 == GAME.COMMANDER_ACTIVITY_FORMATION_OP_DONE then
		slot0.viewComponent:updateEliteFleets()
	elseif slot2 == BossRushPreCombatMediator.ON_FLEET_REFRESHED then
		slot0.viewComponent:updateEliteFleets()
	end
end

function slot0.remove(slot0)
end

function slot0.getDockCallbackFuncs(slot0, slot1, slot2, slot3, slot4)
	slot5 = getProxy(BayProxy)

	return function (slot0, slot1)
		slot6.inActivity = uv0
		slot2, slot3 = ShipStatus.ShipStatusCheck("inActivity", slot0, slot1, {})

		if not slot2 then
			return slot2, slot3
		end

		if uv1 then
			if uv1:isSameKind(slot0) then
				return true
			end
		end

		slot4, slot5, slot6 = ipairs(uv2)

		for slot7, slot8 in slot4, slot5, slot6 do
			if slot0:isSameKind(uv3:getShipById(slot8)) then
				return false, i18n("ship_formationMediator_changeNameError_sameShip")
			end
		end

		return true
	end, function (slot0, slot1, slot2)
		slot1()
	end, function (slot0)
		if uv0 then
			uv1:removeShip(uv0)
		end

		if #slot0 > 0 then
			if not uv1:containShip(uv2:getShipById(slot0[1])) then
				uv1:insertShip(slot1, nil, uv3)
			elseif uv0 then
				uv1:insertShip(uv0, nil, uv3)
			end

			uv1:RemoveUnusedItems()
		end

		getProxy(FleetProxy):updateActivityFleet(uv4, uv1.id, uv1)
	end
end

return slot0
