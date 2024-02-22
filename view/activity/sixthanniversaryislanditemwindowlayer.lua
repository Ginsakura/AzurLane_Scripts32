slot0 = class("SixthAnniversaryIslandItemWindowLayer", import("..base.BaseUI"))

function slot0.getUIName(slot0)
	return "SixthAnniversaryIslandItemWindow"
end

function slot0.init(slot0)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
	setText(slot0._tf:Find("content/bottom/Text"), slot0.contextData.text)
	onButton(slot0, slot0._tf:Find("bg"), function ()
		uv0:closeView()
	end, SFX_CANCEL)
end

function slot0.didEnter(slot0)
	slot4, slot5 = unpack(slot0.contextData.drop.count and {
		slot1.count,
		true
	} or {
		slot1:getOwnedCount()
	})

	setActive(slot0._tf:Find("content/main"):Find("owner"), slot5)

	if slot5 then
		setText(slot2:Find("owner"), i18n("word_own1") .. slot4)
	end

	slot1.count = nil

	updateDrop(slot2:Find("icon/IconTpl"), slot1)
	setText(slot2:Find("line/name"), slot1:getConfig("name"))
	setText(slot2:Find("line/content/Text"), slot1.desc or slot1:getConfig("desc"))
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
end

return slot0
