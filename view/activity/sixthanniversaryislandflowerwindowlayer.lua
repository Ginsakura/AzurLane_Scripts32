slot0 = class("SixthAnniversaryIslandFlowerWindowLayer", import("..base.BaseUI"))

function slot0.getUIName(slot0)
	return "SixthAnniversaryIslandFlowerWindow"
end

function slot0.init(slot0)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
	setText(slot0._tf:Find("content/title/Text"), i18n("islandnode_tips7", slot0.contextData.name))

	slot1 = slot0._tf:Find("content/main/content")
	slot0.itemList = UIItemList.New(slot1, slot1:Find("icon"))

	slot0.itemList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			updateDrop(slot2:Find("IconTpl"), uv0.contextData.awards[slot1 + 1])
		end
	end)
	slot0.itemList:align(#slot0.contextData.awards)
	onButton(slot0, slot0._tf:Find("content/bottom/btn"), function ()
		uv0:closeView()
	end, SFX_CANCEL)
end

function slot0.didEnter(slot0)
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
end

return slot0
