slot0 = class("CastleGameView", import("..BaseMiniGameView"))
slot0.LEVEL_GAME = "leavel game"
slot0.PAUSE_GAME = "pause game "
slot0.OPEN_PAUSE_UI = "open pause ui"
slot0.OPEN_LEVEL_UI = "open leave ui"
slot0.BACK_MENU = "back menu"
slot0.CLOSE_GAME = "close game"
slot0.SHOW_RULE = "show rule"
slot0.READY_START = "ready start"
slot0.COUNT_DOWN = "count down"
slot0.STORE_SERVER = "store server"
slot0.SUBMIT_GAME_SUCCESS = "submit game success"
slot0.ADD_SCORE = "add score"
slot0.GAME_OVER = "game over"

function slot0.getUIName(slot0)
	return CastleGameVo.game_ui
end

function slot0.didEnter(slot0)
	slot0:initData()
	slot0:initEvent()
	slot0:initUI()
	slot0:initController()
end

function slot0.initData(slot0)
	CastleGameVo.Init(slot0:GetMGData().id, slot0:GetMGHubData().id)

	if CastleGameVo.frameRate > 60 then
		slot1 = 60
	end

	slot0.timer = Timer.New(function ()
		uv0:onTimer()
	end, 1 / slot1, -1)
end

function slot0.initEvent(slot0)
	if not slot0.handle and IsUnityEditor then
		slot0.handle = UpdateBeat:CreateListener(slot0.Update, slot0)

		UpdateBeat:AddListener(slot0.handle)
	end

	slot0:bind(uv0.LEVEL_GAME, function (slot0, slot1, slot2)
		if slot1 then
			uv0:resumeGame()
			uv0:onGameOver()
		else
			uv0:resumeGame()
		end
	end)
	slot0:bind(uv0.COUNT_DOWN, function (slot0, slot1, slot2)
		uv0:gameStart()
	end)
	slot0:bind(uv0.OPEN_PAUSE_UI, function (slot0, slot1, slot2)
		uv0.popUI:popPauseUI()
	end)
	slot0:bind(uv0.OPEN_LEVEL_UI, function (slot0, slot1, slot2)
		uv0.popUI:popLeaveUI()
	end)
	slot0:bind(uv0.PAUSE_GAME, function (slot0, slot1, slot2)
		if slot1 then
			uv0:pauseGame()
		else
			uv0:resumeGame()
		end
	end)
	slot0:bind(uv0.BACK_MENU, function (slot0, slot1, slot2)
		uv0.menuUI:update(uv0:GetMGHubData())
		uv0.menuUI:show(true)
		uv0.gameUI:show(false)
		uv0.gameScene:showContainer(false)

		if uv0.bgm ~= (uv0:getBGM() or (not pg.CriMgr.GetInstance():IsDefaultBGM() or pg.voice_bgm.NewMainScene.default_bgm) and pg.voice_bgm.NewMainScene.bgm) then
			uv0.bgm = slot3

			pg.BgmMgr.GetInstance():Push(uv0.__cname, slot3)
		end
	end)
	slot0:bind(uv0.CLOSE_GAME, function (slot0, slot1, slot2)
		uv0:closeView()
	end)
	slot0:bind(uv0.GAME_OVER, function (slot0, slot1, slot2)
		uv0:onGameOver()
	end)
	slot0:bind(uv0.SHOW_RULE, function (slot0, slot1, slot2)
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			type = MSGBOX_TYPE_HELP,
			helps = pg.gametip[CastleGameVo.rule_tip].tip
		})
	end)
	slot0:bind(uv0.READY_START, function (slot0, slot1, slot2)
		uv0:readyStart()
	end)
	slot0:bind(uv0.STORE_SERVER, function (slot0, slot1, slot2)
		uv0:StoreDataToServer({
			slot1
		})
	end)
	slot0:bind(uv0.SUBMIT_GAME_SUCCESS, function (slot0, slot1, slot2)
		if not uv0.sendSuccessFlag then
			uv0.sendSuccessFlag = true

			uv0:SendSuccess(0)
		end
	end)
	slot0:bind(uv0.ADD_SCORE, function (slot0, slot1, slot2)
		uv0:addScore(slot1.num)
		uv0.gameUI:addScore(slot1)
	end)
end

function slot0.initUI(slot0)
	slot0.clickMask = findTF(slot0._tf, "clickMask")
	slot0.popUI = CastleGamePopUI.New(slot0._tf, slot0)

	slot0.popUI:clearUI()

	slot0.gameUI = CastleGamingUI.New(slot0._tf, slot0)
	slot0.menuUI = CastleGameMenuUI.New(slot0._tf, slot0)

	slot0.menuUI:update(slot0:GetMGHubData())
	slot0.menuUI:show(true)
end

function slot0.initController(slot0)
	slot0.gameScene = CastleGameScene.New(slot0._tf, slot0)
end

function slot0.Update(slot0)
	if slot0.gameStop or slot0.settlementFlag then
		return
	end

	if IsUnityEditor then
		if Input.GetKeyDown(KeyCode.S) then
			slot0.gameUI:press(KeyCode.S, true)
		end

		if Input.GetKeyUp(KeyCode.S) then
			slot0.gameUI:press(KeyCode.S, false)
		end

		if Input.GetKeyDown(KeyCode.W) then
			slot0.gameUI:press(KeyCode.W, true)
		end

		if Input.GetKeyUp(KeyCode.W) then
			slot0.gameUI:press(KeyCode.W, false)
		end

		if Input.GetKeyDown(KeyCode.A) then
			slot0.gameUI:press(KeyCode.A, true)
		end

		if Input.GetKeyUp(KeyCode.A) then
			slot0.gameUI:press(KeyCode.A, false)
		end

		if Input.GetKeyDown(KeyCode.D) then
			slot0.gameUI:press(KeyCode.D, true)
		end

		if Input.GetKeyUp(KeyCode.D) then
			slot0.gameUI:press(KeyCode.D, false)
		end
	end
end

function slot0.readyStart(slot0)
	slot0.readyStartFlag = true

	CastleGameVo.Prepare()
	slot0.popUI:readyStart()
	slot0.menuUI:show(false)
	slot0.gameUI:show(false)
end

function slot0.gameStart(slot0)
	slot0.readyStartFlag = false
	slot0.gameStartFlag = true
	slot0.sendSuccessFlag = false

	slot0.popUI:popCountUI(false)
	slot0.gameUI:start()
	slot0.gameUI:show(true)
	slot0.gameScene:start()
	slot0:timerStart()
end

function slot0.changeSpeed(slot0, slot1)
end

function slot0.onTimer(slot0)
	slot0:gameStep()
end

function slot0.gameStep(slot0)
	slot0:stepRunTimeData()
	slot0.gameScene:step()
	slot0.gameUI:step()

	if CastleGameVo.gameTime <= 0 then
		slot0:onGameOver()
	end
end

function slot0.timerStart(slot0)
	if not slot0.timer.running then
		slot0.timer:Start()
	end
end

function slot0.timerResume(slot0)
	if not slot0.timer.running then
		slot0.timer:Start()
	end

	slot0.gameScene:resume()
end

function slot0.timerStop(slot0)
	if slot0.timer.running then
		slot0.timer:Stop()
	end

	slot0.gameScene:stop()
end

function slot0.stepRunTimeData(slot0)
	if Time.deltaTime > 0.016 then
		slot1 = 0.016
	end

	CastleGameVo.gameTime = CastleGameVo.gameTime - slot1
	CastleGameVo.gameStepTime = CastleGameVo.gameStepTime + slot1
	CastleGameVo.deltaTime = slot1
end

function slot0.addScore(slot0, slot1)
	CastleGameVo.scoreNum = CastleGameVo.scoreNum + slot1
end

function slot0.onGameOver(slot0)
	if slot0.settlementFlag then
		return
	end

	slot0:timerStop()
	slot0:clearController()

	slot0.settlementFlag = true

	setActive(slot0.clickMask, true)
	LeanTween.delayedCall(go(slot0._tf), 0.1, System.Action(function ()
		uv0.settlementFlag = false
		uv0.gameStartFlag = false

		setActive(uv0.clickMask, false)
		uv0.popUI:updateSettlementUI()
		uv0.popUI:popSettlementUI(true)
	end))
end

function slot0.OnApplicationPaused(slot0)
	if not slot0.gameStartFlag then
		return
	end

	if slot0.readyStartFlag then
		return
	end

	if slot0.settlementFlag then
		return
	end

	slot0:pauseGame()
	slot0.popUI:popPauseUI()
end

function slot0.clearController(slot0)
	slot0.gameScene:clear()
end

function slot0.pauseGame(slot0)
	slot0.gameStop = true

	slot0:changeSpeed(0)
	slot0:timerStop()
end

function slot0.resumeGame(slot0)
	slot0.gameStop = false

	slot0:changeSpeed(1)
	slot0:timerStart()
end

function slot0.onBackPressed(slot0)
	if slot0.readyStartFlag then
		return
	end

	if not slot0.gameStartFlag then
		slot0:emit(uv0.ON_BACK_PRESSED)
	else
		if slot0.settlementFlag then
			return
		end

		slot0.popUI:backPressed()
	end
end

function slot0.OnSendMiniGameOPDone(slot0, slot1)
end

function slot0.willExit(slot0)
	if slot0.handle then
		UpdateBeat:RemoveListener(slot0.handle)
	end

	if slot0._tf and LeanTween.isTweening(go(slot0._tf)) then
		LeanTween.cancel(go(slot0._tf))
	end

	if slot0.timer and slot0.timer.running then
		slot0.timer:Stop()
	end

	Time.timeScale = 1
	slot0.timer = nil
end

return slot0
