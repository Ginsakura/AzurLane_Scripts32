slot0 = class("StoryStep")

function slot0.Ctor(slot0, slot1)
	slot0.flashout = slot1.flashout
	slot0.flashin = slot1.flashin
	slot0.bgName = slot1.bgName
	slot0.bgShadow = slot1.bgShadow
	slot0.blackBg = slot1.blackBg
	slot0.blackFg = slot1.blackFg or 0
	slot0.bgGlitchArt = slot1.bgNoise
	slot0.oldPhoto = slot1.oldPhoto
	slot0.bgm = slot1.bgm
	slot0.bgmDelay = slot1.bgmDelay or 0
	slot0.bgmVolume = slot1.bgmVolume or -1
	slot0.stopbgm = slot1.stopbgm
	slot0.effects = slot1.effects or {}
	slot0.blink = slot1.flash
	slot0.blinkWithColor = slot1.flashN
	slot0.soundeffect = slot1.soundeffect
	slot0.seDelay = slot1.seDelay or 0
	slot0.voice = slot1.voice
	slot0.voiceDelay = slot1.voiceDelay or 0
	slot0.stopVoice = defaultValue(slot1.stopVoice, false)
	slot0.movableNode = slot1.movableNode
	slot0.options = slot1.options
	slot0.important = slot1.important
	slot0.branchCode = slot1.optionFlag
	slot0.recallOption = slot1.recallOption
	slot0.nextScriptName = slot1.jumpto
	slot0.eventDelay = slot1.eventDelay or 0
	slot0.bgColor = slot1.bgColor or {
		0,
		0,
		0
	}
	slot0.location = slot1.location
	slot0.icon = slot1.icon
	slot0.autoShowOption = defaultValue(slot1.autoShowOption, false)
	slot0.selectedBranchCode = 0
	slot0.id = 0
	slot0.placeholderType = 0
	slot0.defaultTb = slot1.defaultTb
end

function slot0.SetDefaultTb(slot0, slot1)
	if not slot0.defaultTb or slot0.defaultTb <= 0 then
		slot0.defaultTb = slot1
	end
end

function slot0.SetPlaceholderType(slot0, slot1)
	slot0.placeholderType = slot1
end

function slot0.ShouldReplacePlayer(slot0)
	return bit.band(slot0.placeholderType, Story.PLAYER) > 0
end

function slot0.ShouldReplaceTb(slot0)
	return bit.band(slot0.placeholderType, Story.TB) > 0
end

function slot0.ReplacePlayerName(slot0, slot1)
	if not getProxy(PlayerProxy) or not getProxy(PlayerProxy):getRawData() then
		return slot1
	end

	return string.gsub(slot1, "{playername}", getProxy(PlayerProxy):getRawData():GetName())
end

function slot0.ReplaceTbName(slot0, slot1)
	if pg.NewStoryMgr.GetInstance():IsReView() then
		return string.gsub(slot1, "{tb}", i18n("child_story_name"))
	end

	if not getProxy(EducateProxy) then
		return slot1
	end

	slot2, slot3 = getProxy(EducateProxy):GetStoryInfo()

	return string.gsub(slot1, "{tb}", slot3)
end

function slot0.ExistIcon(slot0)
	return slot0.icon ~= nil
end

function slot0.GetIconData(slot0)
	return slot0.icon
end

function slot0.SetId(slot0, slot1)
	slot0.id = slot1
end

function slot0.GetId(slot0)
	return slot0.id
end

function slot0.AutoShowOption(slot0)
	slot0.autoShowOption = true
end

function slot0.SkipEventForOption(slot0)
	return slot0:ExistOption() and slot0.autoShowOption
end

function slot0.IsRecallOption(slot0)
	if slot0:ExistOption() and slot0:GetOptionCnt() > 1 and slot0.recallOption then
		return true
	end

	return false
end

function slot0.SetBranchCode(slot0, slot1)
	slot0.selectedBranchCode = slot1
end

function slot0.GetSelectedBranchCode(slot0)
	return slot0.selectedBranchCode
end

function slot0.ExistLocation(slot0)
	return slot0.location ~= nil
end

function slot0.GetLocation(slot0)
	return {
		text = slot0.location[1] or "",
		time = slot0.location[2] or 999
	}
end

function slot0.ExistMovableNode(slot0)
	return slot0.movableNode ~= nil and type(slot0.movableNode) == "table" and #slot0.movableNode > 0
end

function slot0.GetPathByString(slot0, slot1, slot2)
	slot3 = {}
	slot4 = pg.NewStoryMgr.GetInstance():GetRectSize()
	slot6 = Vector3(slot4.x * 0.5, slot4.y * 0.5, 0)
	slot8 = Vector3(slot4.x * 0.5, -slot4.y * 0.5, 0)

	if slot1 == "LTLB" then
		slot10 = Vector3(slot2 or 200, 0, 0)
		slot3 = {
			Vector3(-slot4.x * 0.5, slot4.y * 0.5, 0) + slot10,
			Vector3(-slot4.x * 0.5, -slot4.y * 0.5, 0) + slot10
		}
	elseif slot1 == "LBLT" then
		slot10 = Vector3(slot9, 0, 0)
		slot3 = {
			slot7 + slot10,
			slot5 + slot10
		}
	elseif slot1 == "LTRT" then
		slot10 = Vector3(0, -slot9, 0)
		slot3 = {
			slot5 + slot10,
			slot6 + slot10
		}
	elseif slot1 == "RTLT" then
		slot10 = Vector3(0, -slot9, 0)
		slot3 = {
			slot6 + slot10,
			slot5 + slot10
		}
	elseif slot1 == "RTRB" then
		slot10 = Vector3(slot9, 0, 0)
		slot3 = {
			slot6 + slot10,
			slot8 + slot10
		}
	elseif slot1 == "RBRT" then
		slot10 = Vector3(slot9, 0, 0)
		slot3 = {
			slot8 + slot10,
			slot6 + slot10
		}
	elseif slot1 == "LBRB" then
		slot10 = Vector3(0, -(slot2 or 0), 0)
		slot3 = {
			slot7 + slot10,
			slot8 + slot10
		}
	elseif slot1 == "RBLB" then
		slot10 = Vector3(0, -(slot2 or 0), 0)
		slot3 = {
			slot8 + slot10,
			slot7 + slot10
		}
	end

	return slot3
end

function slot0.GenMoveNode(slot0, slot1)
	slot2 = {}

	if type(slot1.path) == "table" then
		for slot6, slot7 in ipairs(slot1.path) do
			table.insert(slot2, Vector3(slot7[1], slot7[2], 0))
		end
	else
		slot2 = (type(slot1.path) ~= "string" or slot0:GetPathByString(slot1.path, slot1.offset)) and slot0:GetPathByString("LTRT")
	end

	slot3 = type(slot1.spine) == "table" or slot1.spine == true
	slot4 = nil

	if slot1.spine == true then
		slot4 = {
			action = "walk",
			scale = 0.5
		}
	elseif slot3 then
		slot4 = {
			action = slot1.spine.action or "walk",
			scale = slot1.spine.scale or 0.5
		}
	end

	return {
		name = slot1.name,
		isSpine = slot3,
		spineData = slot4,
		path = slot2,
		time = slot1.time,
		delay = slot1.delay or 0,
		easeType = slot1.easeType or LeanTweenType.linear
	}
end

function slot0.GetMovableNode(slot0)
	if not slot0:ExistMovableNode() then
		return {}
	end

	slot1 = {}

	for slot5, slot6 in pairs(slot0.movableNode or {}) do
		table.insert(slot1, slot0:GenMoveNode(slot6))
	end

	return slot1
end

function slot0.OldPhotoEffect(slot0)
	return slot0.oldPhoto
end

function slot0.ShouldBgGlitchArt(slot0)
	return slot0.bgGlitchArt
end

function slot0.IsSameBranch(slot0, slot1)
	return not slot0.branchCode or slot0.branchCode == slot1
end

function slot0.GetMode(slot0)
	assert(false, "should override this function")
end

function slot0.GetFlashoutData(slot0)
	if slot0.flashout then
		return slot0.flashout.alpha[1], slot0.flashout.alpha[2], slot0.flashout.dur, slot0.flashout.black
	end
end

function slot0.GetFlashinData(slot0)
	if slot0.flashin then
		return slot0.flashin.alpha[1], slot0.flashin.alpha[2], slot0.flashin.dur, slot0.flashin.black, slot0.flashin.delay
	end
end

function slot0.GetBgColor(slot0)
	return Color.New(slot0.bgColor[1] or 0, slot0.bgColor[2] or 0, slot0.bgColor[3] or 0)
end

function slot0.IsBlackBg(slot0)
	return slot0.blackBg
end

function slot0.GetBgName(slot0)
	return slot0.bgName
end

function slot0.GetBgShadow(slot0)
	return slot0.bgShadow
end

function slot0.IsDialogueMode(slot0)
	return slot0:GetMode() == Story.MODE_DIALOGUE
end

function slot0.GetBgmData(slot0)
	return slot0.bgm, slot0.bgmDelay, slot0.bgmVolume
end

function slot0.ShoulePlayBgm(slot0)
	return slot0.bgm ~= nil
end

function slot0.ShouldStopBgm(slot0)
	return slot0.stopbgm
end

function slot0.GetEffects(slot0)
	return slot0.effects
end

function slot0.ShouldBlink(slot0)
	return slot0.blink ~= nil
end

function slot0.GetBlinkData(slot0)
	return slot0.blink
end

function slot0.ShouldBlinkWithColor(slot0)
	return slot0.blinkWithColor ~= nil
end

function slot0.GetBlinkWithColorData(slot0)
	return slot0.blinkWithColor
end

function slot0.ShouldPlaySoundEffect(slot0)
	return slot0.soundeffect ~= nil
end

function slot0.GetSoundeffect(slot0)
	return slot0.soundeffect, slot0.seDelay
end

function slot0.ShouldPlayVoice(slot0)
	return slot0.voice ~= nil
end

function slot0.ShouldStopVoice(slot0)
	return slot0.stopVoice
end

function slot0.GetVoice(slot0)
	return slot0.voice, slot0.voiceDelay
end

function slot0.ExistOption(slot0)
	return slot0.options ~= nil and #slot0.options > 0
end

function slot0.GetOptionCnt(slot0)
	if slot0:ExistOption() then
		return #slot0.options
	else
		return 0
	end
end

function slot0.SetOptionSelCodes(slot0, slot1)
	slot0.optionSelCode = slot1
end

function slot0.IsBlackFrontGround(slot0)
	return slot0.blackFg > 0, Mathf.Clamp01(slot0.blackFg)
end

function slot0.GetOptionIndexByAutoSel(slot0)
	slot1 = 0
	slot2 = 0

	for slot6, slot7 in ipairs(slot0.options) do
		if slot0.optionSelCode and slot7.flag == slot0.optionSelCode then
			slot1 = slot6

			break
		end

		if slot7.autochoice and slot7.autochoice == 1 then
			slot2 = slot6
		end
	end

	if slot1 > 0 then
		return slot1
	end

	if slot2 > 0 then
		return slot2
	end

	return nil
end

function slot0.IsImport(slot0)
	return slot0.important
end

function slot0.GetOptions(slot0)
	return _.map(slot0.options or {}, function (slot0)
		if uv0:ShouldReplacePlayer() then
			slot1 = uv0:ReplacePlayerName(slot0.content)
		end

		if uv0:ShouldReplaceTb() then
			slot1 = uv0:ReplaceTbName(slot1)
		end

		return {
			HXSet.hxLan(slot1),
			slot0.flag
		}
	end)
end

function slot0.ShouldJumpToNextScript(slot0)
	return slot0.nextScriptName ~= nil
end

function slot0.GetNextScriptName(slot0)
	return slot0.nextScriptName
end

function slot0.ShouldDelayEvent(slot0)
	return slot0.eventDelay and slot0.eventDelay > 0
end

function slot0.GetEventDelayTime(slot0)
	return slot0.eventDelay
end

function slot0.GetUsingPaintingNames(slot0)
	return {}
end

return slot0
