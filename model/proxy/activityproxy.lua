slot0 = class("ActivityProxy", import(".NetProxy"))
slot0.ACTIVITY_ADDED = "ActivityProxy ACTIVITY_ADDED"
slot0.ACTIVITY_UPDATED = "ActivityProxy ACTIVITY_UPDATED"
slot0.ACTIVITY_DELETED = "ActivityProxy ACTIVITY_DELETED"
slot0.ACTIVITY_OPERATION_DONE = "ActivityProxy ACTIVITY_OPERATION_DONE"
slot0.ACTIVITY_SHOW_AWARDS = "ActivityProxy ACTIVITY_SHOW_AWARDS"
slot0.ACTIVITY_SHOP_SHOW_AWARDS = "ActivityProxy ACTIVITY_SHOP_SHOW_AWARDS"
slot0.ACTIVITY_SHOW_BB_RESULT = "ActivityProxy ACTIVITY_SHOW_BB_RESULT"
slot0.ACTIVITY_LOTTERY_SHOW_AWARDS = "ActivityProxy ACTIVITY_LOTTERY_SHOW_AWARDS"
slot0.ACTIVITY_HITMONSTER_SHOW_AWARDS = "ActivityProxy ACTIVITY_HITMONSTER_SHOW_AWARDS"
slot0.ACTIVITY_SHOW_REFLUX_AWARDS = "ActivityProxy ACTIVITY_SHOW_REFLUX_AWARDS"
slot0.ACTIVITY_OPERATION_ERRO = "ActivityProxy ACTIVITY_OPERATION_ERRO"
slot0.ACTIVITY_SHOW_LOTTERY_AWARD_RESULT = "ActivityProxy ACTIVITY_SHOW_LOTTERY_AWARD_RESULT"
slot0.ACTIVITY_SHOW_RED_PACKET_AWARDS = "ActivityProxy ACTIVITY_SHOW_RED_PACKET_AWARDS"
slot0.ACTIVITY_SHOW_SHAKE_BEADS_RESULT = "ActivityProxy ACTIVITY_SHOW_SHAKE_BEADS_RESULT"
slot0.ACTIVITY_PT_ID = 110

function slot0.register(slot0)
	slot0:on(11200, function (slot0)
		uv0.data = {}
		uv0.params = {}
		uv0.hxList = {}
		uv0.buffActs = {}

		if slot0.hx_list then
			for slot4, slot5 in ipairs(slot0.hx_list) do
				table.insert(uv0.hxList, slot5)
			end
		end

		for slot4, slot5 in ipairs(slot0.activity_list) do
			if not pg.activity_template[slot5.id] then
				Debugger.LogError("活动acvitity_template不存在: " .. slot5.id)
			else
				if Activity.Create(slot5):getConfig("type") == ActivityConst.ACTIVITY_TYPE_BOSS_BATTLE_MARK_2 then
					if slot6:checkBattleTimeInBossAct() then
						uv0:InitActtivityFleet(slot6, slot5)
					end
				elseif slot7 == ActivityConst.ACTIVITY_TYPE_CHALLENGE then
					uv0:InitActtivityFleet(slot6, slot5)
				elseif slot7 == ActivityConst.ACTIVITY_TYPE_PARAMETER then
					uv0:addActivityParameter(slot6)
				elseif slot7 == ActivityConst.ACTIVITY_TYPE_BUFF then
					table.insert(uv0.buffActs, slot6.id)
				elseif slot7 == ActivityConst.ACTIVITY_TYPE_BOSSRUSH then
					uv0:InitActtivityFleet(slot6, slot5)
				end

				uv0.data[slot5.id] = slot6
			end
		end

		uv0:refreshActivityBuffs()

		for slot4, slot5 in pairs(uv0.data) do
			uv0:sendNotification(GAME.ACTIVITY_BE_UPDATED, {
				isInit = true,
				activity = slot5
			})
		end

		if uv0.data[ActivityConst.MILITARY_EXERCISE_ACTIVITY_ID] then
			getProxy(MilitaryExerciseProxy):addSeasonOverTimer()
		end

		if uv0:getActivityByType(ActivityConst.ACTIVITY_TYPE_CHALLENGE) and not slot1:isEnd() then
			uv0:sendNotification(GAME.CHALLENGE2_INFO, {})
		end

		if uv0:getActivityByType(ActivityConst.ACTIVITY_TYPE_TASK_LIST_MONITOR) and not slot2:isEnd() and slot2.data1 == 0 then
			uv0:monitorTaskList(slot2)
		end

		if uv0:getActivityByType(ActivityConst.ACTIVITY_TYPE_BOSS_BATTLE_MARK_2) and not slot3:isEnd() then
			uv0:InitActivityBossData(uv0.data[slot3.id])
		end

		pg.ShipFlagMgr.GetInstance():UpdateFlagShips("inElite")
		function ()
			if not uv0:getActivityByType(ActivityConst.ACTIVITY_TYPE_ATELIER_LINK) then
				return
			end

			uv0:sendNotification(GAME.REQUEST_ATELIER, slot0.id)
		end()
	end)
	slot0:on(11201, function (slot0)
		slot1 = Activity.Create(slot0.activity_info)

		assert(slot1.id, "should exist activity")

		if slot1:getConfig("type") == ActivityConst.ACTIVITY_TYPE_PARAMETER then
			uv0:addActivityParameter(slot1)
		end

		if not uv0.data[slot1.id] then
			uv0:addActivity(slot1)
		else
			uv0:updateActivity(slot1)
		end

		if slot2 == ActivityConst.ACTIVITY_TYPE_BOSS_BATTLE_MARK_2 then
			uv0:InitActtivityFleet(slot1, slot0.activity_info)
			uv0:InitActivityBossData(slot1)
		end

		uv0:sendNotification(GAME.ACTIVITY_BE_UPDATED, {
			activity = slot1
		})
	end)
	slot0:on(40009, function (slot0)
		slot2 = nil

		if uv0:getActivityByType(ActivityConst.ACTIVITY_TYPE_BOSSRUSH) then
			slot2 = slot1:GetSeriesData()
		end

		slot3 = BossRushSettlementCommand.ConcludeEXP(slot0, slot1, slot2 and slot2:GetBattleStatistics())

		function ()
			getProxy(ActivityProxy):GetBossRushRuntime(uv0.id).settlementData = uv1
		end()
	end)
	slot0:on(24100, function (slot0)
		function ()
			if not getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_EXTRA_BOSSRUSH_RANK) then
				return
			end

			slot0:Record(uv0.score)
			uv1:updateActivity(slot0)
		end()

		if not uv0:getActivityByType(ActivityConst.ACTIVITY_TYPE_BOSSRUSH) then
			return
		end

		if not slot2:GetSeriesData() then
			return
		end

		slot3:AddEXScore(slot0)
		uv0:updateActivity(slot2)
	end)
	slot0:on(11028, function (slot0)
		print("接受到问卷状态", slot0.result)

		if slot0.result == 0 then
			uv0:setSurveyState(slot0.result)
		elseif slot0.result > 0 then
			uv0:setSurveyState(slot0.result)
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("", slot0.result))
		end
	end)
	slot0:on(26033, function (slot0)
		if not uv0:getActivityByType(ActivityConst.ACTIVITY_TYPE_BOSS_BATTLE_MARK_2) then
			return
		end

		slot2 = slot0.point
		uv0:GetActivityBossRuntime(slot1.id).spScore = {
			score = slot2,
			new = slot1:UpdateHighestScore(slot2)
		}

		uv0:updateActivity(slot1)
	end)

	slot0.requestTime = {}
	slot0.extraDatas = {}
end

function slot0.getAliveActivityByType(slot0, slot1)
	for slot5, slot6 in pairs(slot0.data) do
		if slot6:getConfig("type") == slot1 and not slot6:isEnd() then
			return slot6
		end
	end
end

function slot0.getActivityByType(slot0, slot1)
	for slot5, slot6 in pairs(slot0.data) do
		if slot6:getConfig("type") == slot1 then
			return slot6
		end
	end
end

function slot0.getActivitiesByType(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in pairs(slot0.data) do
		if slot7:getConfig("type") == slot1 then
			table.insert(slot2, slot7)
		end
	end

	return slot2
end

function slot0.getActivitiesByTypes(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in pairs(slot0.data) do
		if table.contains(slot1, slot7:getConfig("type")) then
			table.insert(slot2, slot7)
		end
	end

	return slot2
end

function slot0.GetEarliestActByType(slot0, slot1)
	slot3 = _.select(slot0:getActivitiesByType(slot1), function (slot0)
		return not slot0:isEnd()
	end)

	table.sort(slot3, function (slot0, slot1)
		return slot0.id < slot1.id
	end)

	return slot3[1]
end

function slot0.getMilitaryExerciseActivity(slot0)
	slot1 = nil

	for slot5, slot6 in pairs(slot0.data) do
		if slot6:getConfig("type") == ActivityConst.ACTIVITY_TYPE_MILITARY_EXERCISE then
			slot1 = slot6

			break
		end
	end

	return Clone(slot1)
end

function slot0.getPanelActivities(slot0)
	slot2 = {}

	for slot6, slot7 in pairs(slot0.data) do
		if function (slot0)
			if slot0:isShow() and not slot0:isAfterShow() then
				if slot0:getConfig("type") == ActivityConst.ACTIVITY_TYPE_CHARGEAWARD then
					slot2 = slot0.data2 == 0
				elseif slot1 == ActivityConst.ACTIVITY_TYPE_PROGRESSLOGIN then
					slot2 = slot0.data1 < 7 or not slot0.achieved
				end
			end

			return slot2 and not slot0:isEnd()
		end(slot7) then
			table.insert(slot2, slot7)
		end
	end

	table.sort(slot2, function (slot0, slot1)
		if slot0:getConfig("login_pop") == slot1:getConfig("login_pop") then
			return slot0.id < slot1.id
		else
			return slot3 < slot2
		end
	end)

	return slot2
end

function slot0.checkHxActivity(slot0, slot1)
	if slot0.hxList and #slot0.hxList > 0 then
		for slot5 = 1, #slot0.hxList do
			if slot0.hxList[slot5] == slot1 then
				return true
			end
		end
	end

	return false
end

function slot0.getBannerDisplays(slot0)
	return _(pg.activity_banner.all):chain():map(function (slot0)
		return pg.activity_banner[slot0]
	end):filter(function (slot0)
		return pg.TimeMgr.GetInstance():inTime(slot0.time) and slot0.type ~= GAMEUI_BANNER_9 and slot0.type ~= GAMEUI_BANNER_11 and slot0.type ~= GAMEUI_BANNER_10 and slot0.type ~= GAMEUI_BANNER_12 and slot0.type ~= GAMEUI_BANNER_13
	end):value()
end

function slot0.getActiveBannerByType(slot0, slot1)
	if not pg.activity_banner.get_id_list_by_type[slot1] then
		return nil
	end

	for slot6, slot7 in ipairs(slot2) do
		if pg.TimeMgr.GetInstance():inTime(pg.activity_banner[slot7].time) then
			return slot8
		end
	end

	return nil
end

function slot0.getNoticeBannerDisplays(slot0)
	return _.map(pg.activity_banner_notice.all, function (slot0)
		return pg.activity_banner_notice[slot0]
	end)
end

function slot0.findNextAutoActivity(slot0)
	slot1 = nil
	slot3 = pg.TimeMgr.GetInstance():GetServerTime()

	for slot7, slot8 in ipairs(slot0:getPanelActivities()) do
		if slot8:isShow() and not slot8.autoActionForbidden then
			if slot8:getConfig("type") == ActivityConst.ACTIVITY_TYPE_7DAYSLOGIN then
				if slot8.data1 < #pg.activity_7_day_sign[slot8:getConfig("config_id")].front_drops and not slot2:IsSameDay(slot3, slot8.data2) and slot8.data2 < slot3 then
					slot1 = slot8

					break
				end
			elseif slot9 == ActivityConst.ACTIVITY_TYPE_PROGRESSLOGIN then
				if slot8.data1 < 7 and not slot2:IsSameDay(slot3, slot8.data2) or slot8.data1 == 7 and not slot8.achieved and getProxy(ChapterProxy):isClear(204) then
					slot1 = slot8

					break
				end
			elseif slot9 == ActivityConst.ACTIVITY_TYPE_MONTHSIGN then
				slot8:setSpecialData("reMonthSignDay", nil)

				if pg.TimeMgr.GetInstance():STimeDescS(slot3, "*t").year ~= slot8.data1 or slot10.month ~= slot8.data2 then
					slot8.data1 = slot10.year
					slot8.data2 = slot10.month
					slot8.data1_list = {}
					slot1 = slot8

					break
				elseif not table.contains(slot8.data1_list, slot10.day) then
					slot1 = slot8

					break
				elseif slot10.day > #slot8.data1_list and slot8.data3 < pg.activity_month_sign[slot8.data2].resign_count then
					for slot15 = slot10.day, 1, -1 do
						if not table.contains(slot8.data1_list, slot15) then
							slot8:setSpecialData("reMonthSignDay", slot15)

							break
						end
					end

					slot1 = slot8
				end
			elseif slot8.id == ActivityConst.SHADOW_PLAY_ID and slot8.clientData1 == 0 and (getProxy(TaskProxy):getTaskById(slot8:getConfig("config_data")[1]) or slot11:getFinishTaskById(slot10)) and not slot12:isReceive() then
				slot1 = slot8

				break
			end
		end
	end

	if not slot1 then
		for slot7, slot8 in pairs(slot0.data) do
			if not slot8:isShow() and slot8:getConfig("type") == ActivityConst.ACTIVITY_TYPE_7DAYSLOGIN and slot8.data1 < #pg.activity_7_day_sign[slot8:getConfig("config_id")].front_drops and not slot2:IsSameDay(slot3, slot8.data2) and slot8.data2 < slot3 then
				slot1 = slot8

				break
			end
		end
	end

	return slot1
end

function slot0.findRefluxAutoActivity(slot0)
	if slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_REFLUX) and not slot1:isEnd() and not slot1.autoActionForbidden then
		slot2 = pg.TimeMgr.GetInstance()

		if slot1.data1_list[2] < #pg.return_sign_template.all and not slot2:IsSameDay(slot2:GetServerTime(), slot1.data1_list[1]) then
			return 1
		end
	end
end

function slot0.existRefluxAwards(slot0)
	if slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_REFLUX) and not slot1:isEnd() then
		for slot6 = #pg.return_pt_template.all, 1, -1 do
			if slot2[slot2.all[slot6]].pt_require <= slot1.data3 and slot1.data4 < slot7 then
				return true
			end
		end

		slot3 = getProxy(TaskProxy)

		if _.any(_(slot1:getConfig("config_data")[7]):chain():map(function (slot0)
			return slot0[2]
		end):flatten():map(function (slot0)
			return uv0:getTaskById(slot0) or uv0:getFinishTaskById(slot0) or false
		end):filter(function (slot0)
			return not not slot0
		end):value(), function (slot0)
			return slot0:getTaskStatus() == 1
		end) then
			return true
		end
	end
end

function slot0.getActivityById(slot0, slot1)
	return Clone(slot0.data[slot1])
end

function slot0.RawGetActivityById(slot0, slot1)
	return slot0.data[slot1]
end

function slot0.updateActivity(slot0, slot1)
	assert(slot0.data[slot1.id], "activity should exist" .. slot1.id)
	assert(isa(slot1, Activity), "activity should instance of Activity")

	if slot1:getConfig("type") == ActivityConst.ACTIVITY_TYPE_PT_CRUSING then
		slot2 = pg.battlepass_event_pt[slot1.id].target

		if slot0.data[slot1.id].data1 < slot2[#slot2] and slot1.data1 - slot0.data[slot1.id].data1 > 0 then
			pg.ToastMgr.GetInstance():ShowToast(pg.ToastMgr.TYPE_CRUSING, {
				ptId = pg.battlepass_event_pt[slot1.id].pt,
				ptCount = slot1.data1 - slot0.data[slot1.id].data1
			})
		end
	end

	slot0.data[slot1.id] = slot1

	slot0.facade:sendNotification(uv0.ACTIVITY_UPDATED, slot1:clone())
	slot0.facade:sendNotification(GAME.SYN_GRAFTING_ACTIVITY, {
		id = slot1.id
	})
end

function slot0.addActivity(slot0, slot1)
	assert(slot0.data[slot1.id] == nil, "activity already exist" .. slot1.id)
	assert(isa(slot1, Activity), "activity should instance of Activity")

	slot0.data[slot1.id] = slot1

	slot0.facade:sendNotification(uv0.ACTIVITY_ADDED, slot1:clone())

	if slot1:getConfig("type") == ActivityConst.ACTIVITY_TYPE_BUFF then
		table.insert(slot0.buffActs, slot1.id)
		slot0:refreshActivityBuffs()
	end
end

function slot0.deleteActivityById(slot0, slot1)
	assert(slot0.data[slot1], "activity should exist" .. slot1)

	slot0.data[slot1] = nil

	slot0.facade:sendNotification(uv0.ACTIVITY_DELETED, slot1)
end

function slot0.IsActivityNotEnd(slot0, slot1)
	return slot0.data[slot1] and not slot0.data[slot1]:isEnd()
end

function slot0.readyToAchieveByType(slot0, slot1)
	slot2 = false

	for slot7, slot8 in ipairs(slot0:getActivitiesByType(slot1)) do
		if slot8:readyToAchieve() then
			slot2 = true

			break
		end
	end

	return slot2
end

function slot0.getBuildActivityCfgByID(slot0, slot1)
	for slot6, slot7 in ipairs(slot0:getActivitiesByTypes({
		ActivityConst.ACTIVITY_TYPE_BUILDSHIP_1,
		ActivityConst.ACTIVITY_TYPE_NEWSERVER_BUILD
	})) do
		if not slot7:isEnd() and slot7:getConfig("config_client") and slot8.id == slot1 then
			return slot8
		end
	end

	return nil
end

function slot0.getNoneActBuildActivityCfgByID(slot0, slot1)
	for slot6, slot7 in ipairs(slot0:getActivitiesByTypes({
		ActivityConst.ACTIVITY_TYPE_BUILD
	})) do
		if not slot7:isEnd() and slot7:getConfig("config_client") and slot8.id == slot1 then
			return slot8
		end
	end

	return nil
end

function slot0.getBuffShipList(slot0)
	_.each(slot0:getActivitiesByType(ActivityConst.ACTIVITY_TYPE_SHIP_BUFF), function (slot0)
		if slot0 and not slot0:isEnd() then
			if not pg.activity_expup_ship[slot0:getConfig("config_id")] then
				return
			end

			for slot7, slot8 in pairs(slot2.expup) do
				uv0[slot8[1]] = slot8[2]
			end
		end
	end)

	return {}
end

function slot0.getVirtualItemNumber(slot0, slot1)
	if slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_VIRTUAL_BAG) and not slot2:isEnd() then
		return slot2.data1KeyValueList[1][slot1] and slot2.data1KeyValueList[1][slot1] or 0
	end

	return 0
end

function slot0.removeVitemById(slot0, slot1, slot2)
	slot3 = slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_VIRTUAL_BAG)

	assert(slot3, "vbagType invalid")

	if slot3 and not slot3:isEnd() then
		slot3.data1KeyValueList[1][slot1] = slot3.data1KeyValueList[1][slot1] - slot2
	end

	slot0:updateActivity(slot3)
end

function slot0.addVitemById(slot0, slot1, slot2)
	slot3 = slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_VIRTUAL_BAG)

	assert(slot3, "vbagType invalid")

	if slot3 and not slot3:isEnd() then
		if not slot3.data1KeyValueList[1][slot1] then
			slot3.data1KeyValueList[1][slot1] = 0
		end

		slot3.data1KeyValueList[1][slot1] = slot3.data1KeyValueList[1][slot1] + slot2
	end

	slot0:updateActivity(slot3)

	if Item.getConfigData(slot1).link_id ~= 0 and slot0:getActivityById(slot4) and not slot5:isEnd() then
		PlayerResChangeCommand.UpdateActivity(slot5, slot2)
	end
end

function slot0.monitorTaskList(slot0, slot1)
	if slot1 and not slot1:isEnd() and slot1:getConfig("type") == ActivityConst.ACTIVITY_TYPE_TASK_LIST_MONITOR and getProxy(TaskProxy):isReceiveTasks(slot1:getConfig("config_data")[1] or {}) then
		pg.m02:sendNotification(GAME.ACTIVITY_OPERATION, {
			cmd = 1,
			activity_id = slot1.id
		})
	end
end

function slot0.InitActtivityFleet(slot0, slot1, slot2)
	getProxy(FleetProxy):addActivityFleet(slot1, slot2.group_list)
end

function slot0.InitActivityBossData(slot0, slot1)
	if not pg.activity_event_worldboss[slot1:getConfig("config_id")] then
		return
	end

	slot3 = slot1.data1KeyValueList

	for slot7, slot8 in pairs(slot2.normal_expedition_drop_num or {}) do
		for slot12, slot13 in pairs(slot8[1]) do
			slot3[1][slot13] = math.max(slot8[2] - (slot3[1][slot13] or 0), 0)
			slot3[2][slot13] = slot3[2][slot13] or 0
		end
	end
end

function slot0.AddInstagramTimer(slot0, slot1)
	slot0:RemoveInstagramTimer()

	slot3, slot4 = slot0.data[slot1]:GetNextPushTime()

	if slot3 then
		if slot3 - pg.TimeMgr.GetInstance():GetServerTime() <= 0 then
			function ()
				uv0:sendNotification(GAME.ACT_INSTAGRAM_OP, {
					arg2 = 0,
					activity_id = uv1,
					cmd = ActivityConst.INSTAGRAM_OP_ACTIVE,
					arg1 = uv2
				})
			end()
		else
			slot0.instagramTimer = Timer.New(function ()
				uv0()
				uv1:RemoveInstagramTimer()
			end, slot6, 1)

			slot0.instagramTimer:Start()
		end
	end
end

function slot0.RemoveInstagramTimer(slot0)
	if slot0.instagramTimer then
		slot0.instagramTimer:Stop()

		slot0.instagramTimer = nil
	end
end

function slot0.RegisterRequestTime(slot0, slot1, slot2)
	if not slot1 or slot1 <= 0 then
		return
	end

	slot0.requestTime[slot1] = slot2
end

function slot0.remove(slot0)
	slot0:RemoveInstagramTimer()
end

function slot0.addActivityParameter(slot0, slot1)
	for slot7, slot8 in ipairs(slot1:getConfig("config_data")) do
		slot0.params[slot8[1]] = {
			slot8[2],
			slot1.stopTime
		}
	end
end

function slot0.getActivityParameter(slot0, slot1)
	if slot0.params[slot1] then
		slot2, slot3 = unpack(slot0.params[slot1])

		if slot3 <= 0 or slot3 > pg.TimeMgr.GetInstance():GetServerTime() then
			return slot2
		end
	end
end

function slot0.IsShowFreeBuildMark(slot0, slot1)
	slot5 = ActivityConst.ACTIVITY_TYPE_BUILD_FREE

	for slot5, slot6 in ipairs(slot0:getActivitiesByType(slot5)) do
		if slot6 and not slot6:isEnd() and slot6.data1 > 0 and slot6.stopTime - pg.TimeMgr.GetInstance():GetServerTime() < 259200 and tobool(slot1) == (PlayerPrefs.GetString("Free_Build_Ticket_" .. slot6.id, "") == pg.TimeMgr.GetInstance():CurrentSTimeDesc("%Y/%m/%d")) then
			return slot6
		end
	end

	return false
end

function slot0.getBuildFreeActivityByBuildId(slot0, slot1)
	slot5 = ActivityConst.ACTIVITY_TYPE_BUILD_FREE

	for slot5, slot6 in ipairs(slot0:getActivitiesByType(slot5)) do
		if underscore.any(slot6:getConfig("config_data"), function (slot0)
			return slot0 == uv0
		end) then
			return slot6
		end
	end
end

function slot0.getBuildPoolActivity(slot0, slot1)
	if slot1:IsActivity() then
		return slot0:getActivityById(slot1.activityId)
	end
end

function slot0.getEnterReadyActivity(slot0)
	slot3 = {
		[slot8] = 0
	}

	for slot7, slot8 in ipairs(_.keys({
		[ActivityConst.ACTIVITY_TYPE_ZPROJECT] = false,
		[ActivityConst.ACTIVITY_TYPE_BOSS_BATTLE_MARK_2] = function (slot0)
			return not slot0:checkBattleTimeInBossAct()
		end,
		[ActivityConst.ACTIVITY_TYPE_BOSSRUSH] = false
	})) do
		-- Nothing
	end

	for slot7, slot8 in pairs(slot0.data) do
		if slot3[slot8:getConfig("type")] and not slot8:isEnd() and not existCall(slot1[slot9], slot8) then
			slot3[slot9] = math.max(slot3[slot9], slot7)
		end
	end

	for slot7, slot8 in ipairs(slot2) do
		if slot3[slot8] > 0 then
			return slot0.data[slot3[slot8]]
		end
	end
end

function slot0.AtelierActivityAllSlotIsEmpty(slot0)
	if not getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_ATELIER_LINK) or slot1:isEnd() then
		return false
	end

	for slot6, slot7 in pairs(slot1:GetSlots()) do
		if slot7[1] ~= 0 then
			return false
		end
	end

	return true
end

function slot0.OwnAtelierActivityItemCnt(slot0, slot1, slot2)
	if not getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_ATELIER_LINK) or slot3:isEnd() then
		return false
	end

	return slot3:GetItems()[slot1] and slot2 <= slot5.count
end

function slot0.refreshActivityBuffs(slot0)
	slot0.actBuffs = {}
	slot1 = 1

	while slot1 <= #slot0.buffActs do
		if not slot0.data[slot0.buffActs[slot1]] or slot2:isEnd() then
			table.remove(slot0.buffActs, slot1)
		else
			slot1 = slot1 + 1

			if ({
				slot2:getConfig("config_id")
			})[1] == 0 then
				slot3 = slot2:getConfig("config_data")
			end

			for slot7, slot8 in ipairs(slot3) do
				if ActivityBuff.New(slot2.id, slot8):isActivate() then
					table.insert(slot0.actBuffs, slot9)
				end
			end
		end
	end
end

function slot0.getActivityBuffs(slot0)
	if underscore.any(slot0.buffActs, function (slot0)
		return not uv0.data[slot0] or uv0.data[slot0]:isEnd()
	end) or underscore.any(slot0.actBuffs, function (slot0)
		return not slot0:isActivate()
	end) then
		slot0:refreshActivityBuffs()
	end

	return slot0.actBuffs
end

function slot0.getShipModExpActivity(slot0)
	return underscore.select(slot0:getActivityBuffs(), function (slot0)
		return slot0:ShipModExpUsage()
	end)
end

function slot0.getBackyardEnergyActivityBuffs(slot0)
	return underscore.select(slot0:getActivityBuffs(), function (slot0)
		return slot0:BackyardEnergyUsage()
	end)
end

function slot0.InitContinuousTime(slot0, slot1)
	slot0.continuousOpeartionTime = slot1
	slot0.continuousOpeartionTotalTime = slot1
end

function slot0.UseContinuousTime(slot0)
	if not slot0.continuousOpeartionTime then
		return
	end

	slot0.continuousOpeartionTime = slot0.continuousOpeartionTime - 1
end

function slot0.GetContinuousTime(slot0)
	return slot0.continuousOpeartionTime, slot0.continuousOpeartionTotalTime
end

function slot0.AddBossRushAwards(slot0, slot1)
	slot0.bossrushAwards = slot0.bossrushAwards or {}

	table.insertto(slot0.bossrushAwards, slot1)
end

function slot0.PopBossRushAwards(slot0)
	slot0.bossrushAwards = nil

	return slot0.bossrushAwards or {}
end

function slot0.GetBossRushRuntime(slot0, slot1)
	if not slot0.extraDatas[slot1] then
		slot0.extraDatas[slot1] = {
			record = 0
		}
	end

	return slot0.extraDatas[slot1]
end

function slot0.GetActivityBossRuntime(slot0, slot1)
	if not slot0.extraDatas[slot1] then
		slot0.extraDatas[slot1] = {
			buffIds = {},
			spScore = {
				score = 0
			}
		}
	end

	return slot0.extraDatas[slot1]
end

function slot0.GetTaskActivities(slot0)
	table.Foreach(Activity.GetType2Class(), function (slot0, slot1)
		if not isa(slot1, ITaskActivity) then
			return
		end

		table.insertto(uv0, uv1:getActivitiesByType(slot0))
	end)

	return {}
end

function slot0.setSurveyState(slot0, slot1)
	if slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_SURVEY) and not slot2:isEnd() then
		slot0.surveyState = slot1
	end
end

function slot0.isSurveyDone(slot0)
	if slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_SURVEY) and not slot1:isEnd() then
		return slot0.surveyState and slot0.surveyState > 0
	end
end

function slot0.isSurveyOpen(slot0)
	if slot0:getActivityByType(ActivityConst.ACTIVITY_TYPE_SURVEY) and not slot1:isEnd() then
		slot2 = slot1:getConfig("config_data")

		if slot2[1] == 1 then
			return slot2[2] <= getProxy(PlayerProxy):getData().level, slot1:getConfig("config_id")
		end
	end
end

function slot0.GetActBossLinkPTActID(slot0, slot1)
	return table.Find(slot0.data, function (slot0, slot1)
		if slot1:getConfig("type") ~= ActivityConst.ACTIVITY_TYPE_PT_BUFF then
			return
		end

		return slot1:getDataConfig("link_id") == uv0
	end) and slot2.id
end

return slot0
