slot0 = class("ActivityBossBristolScene", import(".ActivityBossSceneTemplate"))

function slot0.getUIName(slot0)
	return "ActivityBossBristolUI"
end

function slot0.init(slot0)
	uv0.super.init(slot0)
	setText(slot0:findTF("ticket/Desc", slot0.top), i18n("word_special_challenge_ticket"))
end

function slot0.UpdateDropItems(slot0)
	for slot4, slot5 in ipairs(slot0.contextData.DisplayItems or {}) do
		slot6 = slot0:findTF("milestone/item/IconTpl", slot0.barList[slot4])

		updateDrop(slot6, {
			type = slot0.contextData.DisplayItems[5 - slot4][1],
			id = slot0.contextData.DisplayItems[5 - slot4][2],
			count = slot0.contextData.DisplayItems[5 - slot4][3]
		})
		onButton(slot0, slot6, function ()
			uv0:emit(uv1.ON_DROP, uv2)
		end, SFX_PANEL)
	end
end

return slot0
