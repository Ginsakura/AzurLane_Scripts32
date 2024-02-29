slot0 = class("EmojiInfoLayer", import("view.base.BaseUI"))

function slot0.getUIName(slot0)
	return "EmojiInfoUI"
end

function slot0.init(slot0)
	slot0.nameTxt = slot0:findTF("frame/name"):GetComponent(typeof(Text))
	slot0.descTxt = slot0:findTF("frame/desc"):GetComponent(typeof(Text))
	slot0.emojiContainer = slot0:findTF("frame/icon_bg")

	setText(slot0:findTF("frame/tip"), i18n("word_click_to_close"))
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0._tf, function ()
		uv0:emit(uv1.ON_CLOSE)
	end, SFX_PANEL)
	slot0:Flush()
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
end

function slot0.Flush(slot0)
	slot1 = slot0.contextData.id

	assert(slot1)

	slot2 = pg.emoji_template[slot1]
	slot0.nameTxt.text = slot2.item_name
	slot0.descTxt.text = slot2.item_desc

	slot0:ReturnEmoji()
	slot0:LoadEmoji(slot2)
end

function slot0.LoadEmoji(slot0, slot1)
	PoolMgr.GetInstance():GetPrefab("emoji/" .. slot1.pic, slot1.pic, true, function (slot0)
		if slot0:GetComponent("Animator") then
			slot1.enabled = true
		end

		setParent(slot0, uv0.emojiContainer, false)

		uv0.emoji = slot0
	end)

	slot0.template = slot1
end

function slot0.ReturnEmoji(slot0)
	if slot0.template and slot0.emoji then
		slot1 = slot0.template

		PoolMgr.GetInstance():ReturnPrefab("emoji/" .. slot1.pic, slot1.pic, slot0.emoji)

		slot0.template = nil
		slot0.emoji = nil
	end
end

function slot0.onBackPressed(slot0)
	uv0.super.onBackPressed(slot0)
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
	slot0:ReturnEmoji()
end

return slot0
