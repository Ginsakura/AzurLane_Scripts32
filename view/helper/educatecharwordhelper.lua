slot0 = class("EducateCharWordHelper")
slot0.WORD_KEY_CHRISTMAS = "shengdan"
slot0.WORD_KEY_NEWYEAR = "xinnian"
slot0.WORD_KEY_LUNARNEWYEAR = "chuxi"
slot0.WORD_KEY_VALENTINE = "qingrenjie"
slot0.WORD_KEY_MIDAUTUMNFESTIVAL = "zhongqiu"
slot0.WORD_KEY_ALLHALLOWSDAY = "wansheng"
slot0.WORD_KEY_TELL_TIME = "chime_"
slot0.WORD_KEY_ACT = "huodong"
slot0.WORD_KEY_CHANGE_TB = "genghuan"
slot1 = pg.secretary_special_ship
slot2 = pg.character_voice_special
slot3 = pg.secretary_special_ship_expression

function slot4(slot0, slot1)
	if not uv0[slot0] then
		return nil, , 
	end

	return "event:/educate-cv/" .. slot1 .. "/" .. slot2.resource_key, slot2.resource_key
end

function slot0.GetWordAndCV(slot0, slot1, slot2)
	slot3, slot4, slot5, slot6 = nil
	slot8 = slot1

	if string.find(slot1, ShipWordHelper.WORD_TYPE_MAIN) then
		slot1 = ShipWordHelper.WORD_TYPE_MAIN
		slot10 = tonumber(string.split(slot1, "_")[2] or "1")
		slot5 = string.split(uv0[slot0][slot1] or "" or "", "|")[slot10] or ""
		slot8 = slot1 .. "" .. slot10
	else
		slot5 = slot7[slot1] or ""
	end

	if slot7.voice and slot7.voice ~= "" then
		slot4, slot6 = uv1(slot8, slot7.voice)
	end

	if slot5 and slot2 then
		slot5 = SwitchSpecialChar(slot5, true)
	end

	return slot3, slot4, slot5 and HXSet.hxLan(slot5), slot6
end

function slot0.ExistWord(slot0, slot1)
	if string.find(slot1, ShipWordHelper.WORD_TYPE_MAIN) then
		return tonumber(string.split(slot1, "_")[2]) <= #string.split(uv0[slot0].main, "|")
	else
		return slot2[slot1] ~= nil and slot2[slot1] ~= ""
	end
end

function slot0.RawGetCVKey(slot0)
	return uv0[slot0].voice
end

function slot0.GetExpression(slot0, slot1)
	if string.find(slot1, ShipWordHelper.WORD_TYPE_MAIN) then
		if (string.split(uv0[slot0][ShipWordHelper.WORD_TYPE_MAIN] or "", "|")[tonumber(string.split(slot1, "_")[2] or "1")] or "") == "0" or "" == "nil" then
			slot3 = ""
		end
	else
		slot3 = slot2[slot1] or ""
	end

	return slot3
end

return slot0
