pg = pg or {}
pg.SdkMgr = singletonClass("SdkMgr")
slot0 = pg.SdkMgr

function slot0.Ctor(slot0)
	if PLATFORM_CODE == PLATFORM_CH then
		slot0.instance = require("Mgr.Sdk.BiliSDKMgr")
	elseif PLATFORM_CODE == PLATFORM_JP then
		slot0.instance = require("Mgr.Sdk.AiriSDKJPMgr")
	elseif PLATFORM_CODE == PLATFORM_KR then
		slot0.instance = require("Mgr.Sdk.TxwyKrSDKMgr")
	elseif PLATFORM_CODE == PLATFORM_US then
		slot0.instance = require("Mgr.Sdk.AiriSDKUSMgr")
	elseif PLATFORM_CODE == PLATFORM_CHT then
		slot0.instance = require("Mgr.Sdk.YongshiSdkMgr")
	end

	slot0.pcode = slot0:GetPlatformCode(Application.identifier)
end

function slot0.Call(slot0, slot1, ...)
	assert(slot0.instance)

	if slot0.instance[slot1] then
		slot0.instance[slot1](...)
	end
end

function slot0.Get(slot0, slot1, ...)
	assert(slot0.instance)
	assert(slot0.instance[slot1], "func should exist " .. slot1)

	return slot0.instance[slot1](...)
end

function EnterMultiWindow(slot0)
	originalPrint(".......EnterMultiWindow")
end

function ExitMultiWindow(slot0)
	originalPrint(".......ExitMultiWindow")
end

function slot0.InitSDK(slot0)
	slot0:Call("InitSDK")
end

function slot0.GoSDkLoginScene(slot0)
	slot0:Call("GoSDkLoginScene")
end

function slot0.LoginSdk(slot0, slot1)
	slot0:Call("LoginSdk", slot1)
end

function slot0.TryLoginSdk(slot0)
	slot0:Call("TryLoginSdk")
end

function slot0.CreateRole(slot0, slot1, slot2, slot3, slot4, slot5)
	slot0:Call("CreateRole", slot1, slot2, slot3, slot4, slot5)
end

function slot0.EnterServer(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7)
	slot0:Call("EnterServer", slot1, slot2, slot3, slot4, slot5, slot6, slot7)
end

function slot0.ChooseServer(slot0, slot1, slot2)
	slot0:Call("ChooseServer", slot1, slot2)
end

function slot0.SdkGateWayLogined(slot0)
	slot0:Call("SdkGateWayLogined")
end

function slot0.SdkLoginGetaWayFailed(slot0)
	slot0:Call("SdkLoginGetaWayFailed")
end

function slot0.SdkLevelUp(slot0)
	slot0:Call("SdkLevelUp")
end

function slot0.SdkPay(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10)
	slot0:Call("SdkPay", slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8, slot9, slot10)
end

function slot0.LogoutSDK(slot0, slot1)
	slot0:Call("LogoutSDK", slot1)
end

function slot0.BindCPU(slot0)
	slot0:Call("BindCPU")
end

function slot0.OnAndoridBackPress(slot0)
	slot0:Call("OnAndoridBackPress")
end

function slot0.DeleteAccount(slot0)
	slot0:Call("DeleteAccount")
end

function slot0.GetChannelUID(slot0)
	return slot0:Get("GetChannelUID")
end

function slot0.GetLoginType(slot0)
	if PathMgr.FileExists(Application.persistentDataPath .. "/server_config.txt") then
		return LoginType.PLATFORM_INNER
	end

	return slot0:Get("GetLoginType")
end

function slot0.GetIsPlatform(slot0)
	return slot0:Get("GetIsPlatform")
end

function slot0.EnterLoginScene(slot0)
	slot0.inLoginScene = true
end

function slot0.ExitLoginScene(slot0)
	slot0.inLoginScene = false
end

function slot0.IsInLoginScene(slot0)
	return slot0.inLoginScene
end

function slot0.IsYunPackage(slot0)
	return PLATFORM_CODE == PLATFORM_CH and slot0:GetChannelUID() == "yun"
end

function slot0.Service(slot0)
	slot0:Call("Service")
end

function slot0.Survey(slot0, slot1)
	slot0:Call("Survey", slot1)
end

function slot0.IsHuaweiPackage(slot0)
	return PLATFORM_CODE == PLATFORM_CH and slot0:Get("IsHuaweiPackage")
end

function slot0.IsAUPackage(slot0)
	return PLATFORM_CODE == PLATFORM_JP and slot0:GetChannelUID() == "2"
end

function slot0.GetYostarUid(slot0)
	return slot0:Get("GetYostarUid")
end

function slot0.GetYostarTransCode(slot0)
	return slot0:Get("GetTransCode")
end

function slot0.CheckAudit(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("CheckAudit")
	else
		return false
	end
end

function slot0.CheckPreAudit(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("CheckPreAudit")
	else
		return false
	end
end

function slot0.CheckPretest(slot0)
	return slot0:Get("CheckPretest")
end

function slot0.CheckGoogleSimulator(slot0)
	return slot0:Get("CheckGoogleSimulator")
end

function slot0.CheckWorldTest(slot0)
	if PLATFORM_CODE == PLATFORM_CH then
		return slot0:Get("CheckWorldTest")
	else
		return false
	end
end

function slot0.AiriLoginSDK(slot0)
	slot0:Call("AiriLogin")
end

function slot0.TranscodeRequest(slot0)
	slot0:Call("TranscodeRequest")
end

function slot0.LoginWithTranscode(slot0, slot1, slot2)
	slot0:Call("LoginWithTranscode", slot1, slot2)
end

function slot0.LoginWithSocial(slot0, slot1, slot2, slot3)
	slot0:Call("LoginWithSocial", slot1, slot2, slot3)
end

function slot0.LoginWithDevice(slot0)
	slot0:Call("LoginWithDevice")
end

function slot0.AiriBuy(slot0, slot1, slot2, slot3)
	slot0:Call("AiriBuy", slot1, slot2, slot3)
end

function slot0.LinkSocial(slot0, slot1, slot2, slot3)
	slot0:Call("LinkSocial", slot1, slot2, slot3)
end

function slot0.UnlinkSocial(slot0, slot1)
	slot0:Call("UnlinkSocial", slot1)
end

function slot0.IsSocialLink(slot0, slot1)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("IsSocialLink", slot1)
	else
		return false
	end
end

function slot0.GetSocialName(slot0, slot1)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("GetSocialName", slot1)
	else
		return "none"
	end
end

function slot0.GetIsBirthSet(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("GetIsBirthSet")
	end

	return true
end

function slot0.SetBirth(slot0, slot1)
	slot0:Call("SetBirth", slot1)
end

function slot0.ClearAccountCache(slot0)
	slot0:Call("ClearAccountCache")
end

function slot0.GameShare(slot0, slot1, slot2)
	slot0:Call("GameShare", slot1, slot2)
end

function slot0.VerificationCodeReq(slot0, slot1)
	slot0:Call("VerificationCodeReq", slot1)
end

function slot0.OpenYostarHelp(slot0)
	slot0:Call("OpenYostarHelp")
end

function slot0.OnAppPauseForSDK(slot0, slot1)
	slot0:Call("OnAppPauseForSDK", slot1)
end

function slot0.UserEventUpload(slot0, slot1)
	slot0:Call("UserEventUpload", slot1)
end

function slot0.ShowSurvey(slot0, slot1, slot2)
	return slot0:Call("ShowSurvey", slot1, slot2)
end

function slot0.CheckAiriCanBuy(slot0)
	if PLATFORM_CODE == PLATFORM_US or PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("CheckAiriCanBuy")
	else
		return true
	end
end

function slot0.CheckHadAccountCache(slot0)
	if PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("CheckHadAccountCache")
	else
		return true
	end
end

function slot0.AccountDelete(slot0)
	if PLATFORM_CODE == PLATFORM_US or PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("AccountDelete")
	else
		return true
	end
end

function slot0.AccountReborn(slot0)
	if PLATFORM_CODE == PLATFORM_US or PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("AccountReborn")
	else
		return true
	end
end

function slot0.ConfirmLinkGooglePlayGame(slot0)
	if PLATFORM_CODE == PLATFORM_US or PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("ConfirmLinkGooglePlayGame")
	else
		return true
	end
end

function slot0.ConfirmUnLinkGooglePlayGame(slot0)
	if PLATFORM_CODE == PLATFORM_US or PLATFORM_CODE == PLATFORM_JP then
		return slot0:Get("ConfirmUnLinkGooglePlayGame")
	else
		return true
	end
end

AIRI_LAST_GEN_TIME = 0
AIRI_GEN_LIMIT_TIME = 30

function GetAiriGenCodeTimeRemain()
	if AIRI_GEN_LIMIT_TIME < Time.realtimeSinceStartup - AIRI_LAST_GEN_TIME or AIRI_LAST_GEN_TIME == 0 then
		return 0
	else
		return math.floor(AIRI_GEN_LIMIT_TIME - slot0)
	end
end

function slot0.UserCenter(slot0)
	slot0:Call("UserCenter")
end

function slot0.BugReport(slot0)
	slot0:Call("BugReport")
end

function slot0.StoreReview(slot0)
	slot0:Call("StoreReview")
end

function slot0.QueryWithProduct(slot0)
	slot0:Call("QueryWithProduct")
end

function slot0.ShareImg(slot0, slot1, slot2)
	slot0:Call("ShareImg", slot1, slot2)
end

function slot0.SwitchAccount(slot0)
	slot0:Call("SwitchAccount")
end

function slot0.CompletedTutorial(slot0)
	slot0:Call("CompletedTutorial")
end

function slot0.UnlockAchievement(slot0)
	slot0:Call("UnlockAchievement")
end

function slot0.IsBindFaceBook(slot0)
	if PLATFORM_CODE == PLATFORM_CHT then
		return slot0:Get("IsBindFaceBook")
	end
end

function slot0.IsBindApple(slot0)
	if PLATFORM_CODE == PLATFORM_CHT then
		return slot0:Get("IsBindApple")
	end
end

function slot0.IsBindGoogle(slot0)
	if PLATFORM_CODE == PLATFORM_CHT then
		return slot0:Get("IsBindGoogle")
	end
end

function slot0.IsBindPhone(slot0)
	if PLATFORM_CODE == PLATFORM_CHT then
		return slot0:Get("IsBindPhone")
	end
end

function slot0.IsBindGameCenter(slot0)
	if PLATFORM_CODE == PLATFORM_CHT then
		return false
	end
end

function slot0.CanTriggerDeepLinking(slot0)
	if PLATFORM_CODE == PLATFORM_CHT then
		return slot0:Get("CanTriggerDeepLinking")
	else
		return false
	end
end

function slot0.TriggerDeepLinking(slot0)
	slot0:Call("TriggerDeepLinking")
end

function slot0.BindSocial(slot0, slot1)
	if slot1 == 1 then
		slot0:BindFaceBook()
	elseif slot1 == 2 then
		slot0:BindGoogle()
	elseif slot1 == 3 then
		slot0:BindPhone()
	elseif slot1 == 4 then
		-- Nothing
	elseif slot1 == 5 then
		slot0:BindApple()
	end
end

function slot0.UnbindSocial(slot0, slot1)
	if slot1 == 1 then
		slot0:UnBindFaceBook()
	elseif slot1 == 2 then
		slot0:UnBindGoogle()
	elseif slot1 == 3 then
		slot0:UnBindPhone()
	elseif slot1 == 4 then
		-- Nothing
	end
end

function slot0.BindFaceBook(slot0)
	slot0:Call("BindFaceBook")
end

function slot0.BindApple(slot0)
	slot0:Call("BindApple")
end

function slot0.BindGoogle(slot0)
	slot0:Call("BindGoogle")
end

function slot0.BindPhone(slot0)
	slot0:Call("BindPhone")
end

function slot0.UnBindFaceBook(slot0)
	slot0:Call("UnBindFaceBook")
end

function slot0.UnBindGoogle(slot0)
	slot0:Call("UnBindGoogle")
end

function slot0.UnBindPhone(slot0)
	slot0:Call("UnBindPhone")
end

function slot0.ShowLicence(slot0)
	slot0:Call("ShowLicence")
end

function slot0.ShowPrivate(slot0)
	slot0:Call("ShowPrivate")
end

function slot0.GetProduct(slot0, slot1)
	if PLATFORM_CODE == PLATFORM_CHT then
		return slot0:Get("GetProduct", slot1)
	end
end

function slot0.GetDeviceId(slot0)
	if PLATFORM_CODE == PLATFORM_JP or PLATFORM_CODE == PLATFORM_US then
		return slot0:Get("GetDeviceId")
	elseif PLATFORM_CODE == PLATFORM_KR then
		return slot0:Get("GetDeviceModel")
	elseif PLATFORM_CODE == PLATFORM_CHT then
		return SystemInfo.deviceUniqueIdentifier
	else
		return ""
	end
end

function InLoginScene()
	if pg.SdkMgr.GetInstance():IsInLoginScene() and not function ()
		return getProxy(UserProxy):GetLoginedFlag()
	end() then
		return true
	end

	return false
end

function slot0.GetPlatformCode(slot0, slot1)
	if PLATFORM_CODE == PLATFORM_CHT then
		return slot0:Get("GetPackageCode", slot1)
	else
		return nil
	end
end

function slot0.IgnorePlatform(slot0, slot1)
	if slot0.pcode and slot1 and #slot1 > 0 and _.any(slot1, function (slot0)
		return tostring(slot0) == uv0
	end) then
		return true
	end

	return false
end
