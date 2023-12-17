slot0 = class("NewBattleResultScene", import("view.base.BaseUI"))

function slot0.getUIName(slot0)
	return "NewBattleResultEmptyUI"
end

function slot0.didEnter(slot0)
	slot0._parentTf = slot0._tf.parent

	slot0:InitData()
	slot0:Adjustion()
	slot0:SetUp(slot0.pages)

	if slot0.contextData.needVibrate then
		slot0:Vibrate()
	end

	pg.UIMgr.GetInstance():BlurPanel(slot0._tf, true, {
		lockGlobalBlur = true,
		groupName = LayerWeightConst.GROUP_COMBAT
	})
	onDelayTick(function ()
		if uv0.contextData.needCloseCamera then
			uv0:CloseCamera()
		end
	end, 0.2)
end

function slot0.Adjustion(slot0)
	slot1 = GetComponent(slot0._tf, typeof(AspectRatioFitter))
	slot1.enabled = true
	slot1.aspectRatio = pg.CameraFixMgr.GetInstance().targetRatio
	slot0.camEventId = pg.CameraFixMgr.GetInstance():bind(pg.CameraFixMgr.ASPECT_RATIO_UPDATE, function (slot0, slot1)
		uv0.aspectRatio = slot1
	end)
end

function slot1(slot0)
	if getProxy(SettingsProxy):IsDisplayResultPainting() then
		return
	end

	for slot5 = #slot0, 1, -1 do
		if slot0[slot5] == NewBattleResultDisplayPaintingsPage then
			table.remove(slot0, slot5)
		end
	end
end

function slot0.InitData(slot0)
	slot0.pages = NewBattleResultSystem2Pages[slot0.contextData.system] or {
		NewBattleResultGradePage,
		NewBattleResultDisplayAwardPage,
		NewBattleResultDisplayPaintingsPage,
		NewBattleResultStatisticsPage
	}

	uv0(slot0.pages)

	slot0.contextData.oldMainShips = NewBattleResultUtil.RemoveNonStatisticShips(slot0.contextData.oldMainShips, slot0.contextData.statistics)
	slot0.contextData.newMainShips = NewBattleResultDataExtender.GetNewMainShips(slot0.contextData)
	slot0.contextData.autoSkipFlag = NewBattleResultDataExtender.GetAutoSkipFlag(slot0.contextData, slot0.contextData.system)
	slot0.contextData.needVibrate = NewBattleResultDataExtender.NeedVibrate(slot0.contextData.autoSkipFlag)
	slot0.contextData.needCloseCamera = NewBattleResultDataExtender.NeedCloseCamera(slot0.contextData.system)
	slot0.contextData.needHelpMessage = NewBattleResultDataExtender.NeedHelpMessage(slot0.contextData.system, slot0.contextData.score)
	slot0.contextData.expBuff = NewBattleResultDataExtender.GetExpBuffs(slot0.contextData.system)
	slot0.contextData.buffShips = NewBattleResultDataExtender.GetShipBuffs(slot0.contextData.system)
end

function slot0.CloseCamera(slot0)
	ys.Battle.BattleCameraUtil.GetInstance().ActiveMainCemera(false)
end

function slot0.Vibrate(slot0)
	pg.CriMgr.GetInstance():PlaySoundEffect_V3(SFX_AUTO_BATTLE)
	LuaHelper.Vibrate()
end

function slot0.SetUp(slot0, slot1)
	slot2 = {}
	slot0.history = {}

	for slot6, slot7 in ipairs(slot1) do
		table.insert(slot2, function (slot0)
			if uv0.exited then
				return
			end

			slot1 = uv1.New(uv0._tf, uv0.event, uv0.contextData)

			slot1:ExecuteAction("SetUp", slot0, function ()
				uv0:DestroyHistory()
			end)
			table.insert(uv0.history, slot1)
		end)
	end

	seriesAsync(slot2, function ()
		uv0:GoBack()
	end)
end

function slot0.DestroyHistory(slot0)
	for slot4, slot5 in ipairs(slot0.history) do
		if not isa(slot5, NewBattleResultStatisticsPage) then
			slot5:Destroy()
		end
	end
end

function slot0.GoBack(slot0)
	if slot0.contextData.needHelpMessage then
		slot0:emit(NewBattleResultMediator.OPEN_FIALED_HELP, function ()
			uv0.backSceneHandler = NewBattleResultBackSceneHandler.New(uv0.contextData)

			uv0.backSceneHandler:Execute()
		end)
	else
		slot1()
	end
end

function slot0.onBackPressed(slot0)
end

function slot0.willExit(slot0)
	pg.UIMgr:GetInstance():UnblurPanel(slot0._tf, slot0._parentTf)

	if slot0.camEventId then
		pg.CameraFixMgr.GetInstance():disconnect(slot0.camEventId)

		slot0.camEventId = nil
	end

	if slot0.backSceneHandler then
		slot0.backSceneHandler:Dispose()

		slot0.backSceneHandler = nil
	end

	if slot0.history then
		for slot4, slot5 in ipairs(slot0.history) do
			slot5:Destroy()
		end

		slot0.history = nil
	end
end

return slot0
