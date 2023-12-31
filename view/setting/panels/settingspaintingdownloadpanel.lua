slot0 = class("SettingsPaintingDownloadPanel", import(".SettingsBasePanel"))

function slot0.GetUIName(slot0)
	return "SettingsPaintingDownload"
end

function slot0.GetTitle(slot0)
	return i18n("painting_prefs_setting_label")
end

function slot0.GetTitleEn(slot0)
	return "  / Painting Download"
end

slot0.None = 0
slot0.Min = 1
slot0.Max = 2

function slot0.OnInit(slot0)
	slot0.btns = {}

	for slot5, slot6 in ipairs({
		slot0._tf:Find("prefs/1"),
		slot0._tf:Find("prefs/2")
	}) do
		onToggle(slot0, slot6, function (slot0)
			if slot0 then
				if uv0 == getProxy(SettingsProxy):GetPaintingDownloadPrefs() then
					return
				else
					getProxy(SettingsProxy):SetPaintingDownloadPrefs(uv0)
					pg.TipsMgr.GetInstance():ShowTips(i18n("painting_prefs_switch_succ"))
				end
			end
		end, SFX_PANEL)
		setText(slot6:Find("Text"), i18n("painting_prefs_setting_" .. slot5))

		slot0.btns[slot5] = slot6
	end
end

function slot0.OnUpdate(slot0)
	if IsUnityEditor and getProxy(SettingsProxy):GetPaintingDownloadPrefs() == uv0.None then
		slot1 = uv0.Max

		return
	end

	triggerToggle(slot0.btns[slot1], true)
end

return slot0
