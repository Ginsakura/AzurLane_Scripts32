slot0 = class("MainFixSettingDefaultValue")

function slot0.Execute(slot0, slot1)
	for slot6, slot7 in ipairs(pg.settings_other_template.all) do
		if _G[slot2[slot7].name] ~= "" and not PlayerPrefs.HasKey(slot8) then
			PlayerPrefs.SetInt(slot8, slot2[slot7].default)
		end
	end

	PlayerPrefs.Save()
	slot1()
end

return slot0
