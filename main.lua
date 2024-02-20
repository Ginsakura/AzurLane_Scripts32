ys = {}
pg = {}
cs = {}
pg._weak = setmetatable({}, {
	__mode = "k"
})
PLATFORM_CH = 1
PLATFORM_JP = 2
PLATFORM_KR = 3
PLATFORM_US = 4
PLATFORM_CHT = 5
PLATFORM_CODE = PLATFORM_CH
IsUnityEditor = UnityEngine.Application.isEditor

require("Include")
require("tolua.reflection")
tolua.loadassembly("Assembly-CSharp")
tolua.loadassembly("UnityEngine.UI")
math.randomseed(os.time())

CSharpVersion = NetConst.GatewayState

originalPrint("C# Ver... " .. CSharpVersion)

PLATFORM = LuaHelper.GetPlatformInt()
SDK_EXIT_CODE = 99

if not IsUnityEditor then
	function assert()
	end
end

ReflectionHelp.RefSetField(typeof("ResourceMgr"), "_asyncMax", ResourceMgr.Inst, 30)

tf(GameObject.Find("EventSystem")):GetComponent(typeof(EventSystem)).sendNavigationEvents = false

if IsUnityEditor then
	function luaIdeDebugFunc()
		breakInfoFun = require("LuaDebugjit")("localhost", 7003)
		time = Timer.New(breakInfoFun, 0.5, -1, 1)

		time:Start()
		print("luaIdeDebugFunc")
	end
end

if (PLATFORM_CODE == PLATFORM_CH and CSharpVersion < 48 or PLATFORM_CODE == PLATFORM_CHT) and PLATFORM == 8 then
	pg.SdkMgr.GetInstance():InitSDK()
end

pg.TimeMgr.GetInstance():Init()
pg.TimeMgr.GetInstance():_SetServerTime_(VersionMgr.Inst.timestamp, VersionMgr.Inst.monday0oclockTimestamp, VersionMgr.Inst.realStartUpTimeWhenSetServerTime)
pg.PushNotificationMgr.GetInstance():Init()

function OnApplicationPause(slot0)
	originalPrint("OnApplicationPause: " .. tostring(slot0))

	if not pg.m02 then
		return
	end

	if slot0 then
		pg.m02:sendNotification(GAME.PAUSE_BATTLE)
		pg.PushNotificationMgr.GetInstance():PushAll()
	else
		pg.SdkMgr.GetInstance():BindCPU()
	end

	pg.SdkMgr.GetInstance():OnAppPauseForSDK(slot0)
	pg.m02:sendNotification(GAME.ON_APPLICATION_PAUSE, slot0)
end

function OnApplicationExit()
	originalPrint("OnApplicationExit")

	if pg.FileDownloadMgr.GetInstance():IsRunning() then
		return
	end

	if pg.NewStoryMgr.GetInstance():IsRunning() then
		pg.NewStoryMgr.GetInstance():ForEscPress()

		return
	end

	if pg.NewGuideMgr.GetInstance():IsBusy() then
		return
	end

	if pg.PerformMgr.GetInstance():IsRunning() then
		return
	end

	if ys.Battle.BattleState.GetInstance() and slot0:GetState() == slot0.BATTLE_STATE_FIGHT and not slot0:IsPause() then
		pg.m02:sendNotification(GAME.PAUSE_BATTLE)

		return
	end

	if not pg.UIMgr.GetInstance()._loadPanel or slot1:LoadingRetainCount() ~= 0 then
		return
	end

	if pg.SceneAnimMgr.GetInstance():IsPlaying() then
		return
	end

	slot4 = pg.MsgboxMgr.GetInstance() and slot3:getMsgBoxOb()

	if pg.NewStoryMgr.GetInstance() and slot5:IsRunning() then
		if slot4 and slot4.activeSelf then
			pg.CriMgr.GetInstance():PlaySoundEffect_V3(SFX_CANCEL)
			triggerButton(slot3._closeBtn)
		end

		return
	end

	if not pg.m02 then
		return
	end

	if not slot6:retrieveProxy(ContextProxy.__cname) then
		return
	end

	if not slot7:getCurrentContext() then
		return
	end

	if pg.ShareMgr.GetInstance().go and isActive(slot9.go) then
		pg.CriMgr.GetInstance():PlaySoundEffect_V3(SFX_CANCEL)
		triggerButton(slot9.panel:Find("main/top/btnBack"))

		return
	end

	if not slot6:retrieveMediator(slot8:retriveLastChild().mediator.__cname) or not slot10.viewComponent then
		return
	end

	slot11 = slot10.viewComponent
	slot12 = slot11._tf.parent
	slot13 = slot11._tf:GetSiblingIndex()
	slot14 = -1
	slot15 = nil

	if slot4 and slot4.activeSelf then
		slot15 = slot4.transform.parent
		slot14 = slot4.transform:GetSiblingIndex()
	end

	if pg.playerResUI:checkBackPressed() then
		return
	end

	if slot12 == slot15 and slot14 < slot13 then
		slot11:onBackPressed()

		return
	end

	if slot4 and slot4.activeSelf then
		pg.CriMgr.GetInstance():PlaySoundEffect_V3(SFX_CANCEL)
		triggerButton(slot3._closeBtn)

		return
	end

	if nowWorld() and slot16.staminaMgr:IsShowing() then
		slot16.staminaMgr:Hide()

		return
	end

	slot11:onBackPressed()
end

function OnReceiveMemoryWarning()
end

function PressBack()
	if not IsNil(pg.MsgboxMgr.GetInstance()._go) then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("confirm_app_exit"),
			onYes = function ()
				Application.Quit()
			end
		})
	end
end

slot2 = os.clock()

seriesAsync({
	function (slot0)
		parallelAsync({
			function (slot0)
				pg.LayerWeightMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.UIMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.CriMgr.GetInstance():Init(slot0)
			end
		}, slot0)
	end,
	function (slot0)
		parallelAsync({
			function (slot0)
				pg.FontMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.ShaderMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.PoolMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.TipsMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.MsgboxMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.SystemOpenMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.SystemGuideMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.NewGuideMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.SeriesGuideMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.ToastMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.WorldToastMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.SecondaryPWDMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.ShipFlagMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.NewStoryMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.RedDotMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.UserAgreementMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.BrightnessMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.ConfigTablePreloadMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.CameraFixMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.BgmMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.FileDownloadMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.RepairResMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.SceneAnimMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.PerformMgr.GetInstance():Init(slot0)
			end
		}, slot0)
	end
}, function (slot0)
	pg.SdkMgr.GetInstance():QueryWithProduct()
	print("loading cost: " .. os.clock() - uv0)
	VersionMgr.Inst:DestroyUI()

	if not IsNil(GameObject.Find("OverlayCamera/Overlay/UIMain/ServerChoosePanel")) then
		Object.Destroy(slot1)
	end

	Screen.sleepTimeout = SleepTimeout.SystemSetting

	pg.UIMgr.GetInstance():displayLoadingBG(true)
	pg.UIMgr.GetInstance():LoadingOn()

	if slot0 then
		pg.UIMgr.GetInstance():Loading(slot0)
		error(slot0)

		return
	end

	pg.SdkMgr.GetInstance():BindCPU()

	pg.m02 = pm.Facade.getInstance("m02")

	pg.m02:registerCommand(GAME.STARTUP, StartupCommand)
	pg.m02:sendNotification(GAME.STARTUP)

	pg.playerResUI = PlayerResUI.New()

	pg.SdkMgr.GetInstance():GoSDkLoginScene()
end)
