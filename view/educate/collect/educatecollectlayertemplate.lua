slot0 = class("EducateCollectLayerTemplate", import("..base.EducateBaseUI"))

function slot0.getUIName(slot0)
	assert(nil, "getUIName方法必须由子类实现")
end

function slot0.initConfig(slot0)
	assert(nil, "initConfig方法必须由子类实现")
end

function slot0.init(slot0)
	slot0.anim = slot0:findTF("anim_root"):GetComponent(typeof(Animation))
	slot0.animEvent = slot0:findTF("anim_root"):GetComponent(typeof(DftAniEvent))

	slot0.animEvent:SetEndEvent(function ()
		uv0:emit(uv1.ON_CLOSE)
	end)

	slot0.closeBtn = slot0:findTF("anim_root/bg")
	slot0.windowTF = slot0:findTF("anim_root/window")
	slot0.curCntTF = slot0:findTF("collect/cur", slot0.windowTF)
	slot0.allCntTF = slot0:findTF("collect/all", slot0.windowTF)
	slot0.pageTF = slot0:findTF("page", slot0.windowTF)
	slot0.nextBtn = slot0:findTF("next_btn", slot0.windowTF)
	slot0.lastBtn = slot0:findTF("last_btn", slot0.windowTF)
	slot0.paginationTF = slot0:findTF("pagination", slot0.windowTF)
	slot0.performTF = slot0:findTF("anim_root/perform")

	setActive(slot0.performTF, false)
	slot0:initConfig()

	slot0.onePageCnt = slot0.pageTF.childCount
	slot0.pages = math.ceil(#slot0.config.all / slot0.onePageCnt)
	slot0.curPageIndex = 1

	onButton(slot0, slot0.closeBtn, function ()
		uv0:playAnimClose()
	end, SFX_PANEL)
	onButton(slot0, slot0.nextBtn, function ()
		uv0:playAnimChange()

		uv0.curPageIndex = uv0.curPageIndex + 1

		uv0:updatePage()
	end, SFX_PANEL)
	onButton(slot0, slot0.lastBtn, function ()
		uv0:playAnimChange()

		uv0.curPageIndex = uv0.curPageIndex - 1

		uv0:updatePage()
	end, SFX_PANEL)
	pg.UIMgr.GetInstance():OverlayPanel(slot0._tf, {
		groupName = slot0:getGroupNameFromData(),
		weight = slot0:getWeightFromData() + 2
	})
end

function slot0.updatePage(slot0)
	setActive(slot0.nextBtn, slot0.pages ~= 1 and slot0.curPageIndex < slot0.pages)
	setActive(slot0.lastBtn, slot0.pages ~= 1 and slot0.curPageIndex > 1)
	setText(slot0.paginationTF, slot0.curPageIndex .. "/" .. slot0.pages)

	for slot5 = 1, slot0.onePageCnt do
		slot6 = slot0:findTF("frame_" .. slot5, slot0.pageTF)

		if slot0.config[slot0.config.all[(slot0.curPageIndex - 1) * slot0.onePageCnt + slot5]] then
			setActive(slot6, true)
			slot0:updateItem(slot7, slot6)
		else
			setActive(slot6, false)
		end
	end
end

function slot0.updateItem(slot0, slot1, slot2)
	assert(nil, "updateItem方法必须由子类实现")
end

function slot0.playAnimChange(slot0)
	assert(nil, "playAnimClose方法必须由子类实现")
end

function slot0.playAnimClose(slot0)
	assert(nil, "playAnimClose方法必须由子类实现")
end

function slot0.onBackPressed(slot0)
	slot0:playAnimClose()
end

function slot0.willExit(slot0)
	slot0.animEvent:SetEndEvent(nil)
	pg.UIMgr.GetInstance():UnOverlayPanel(slot0._tf)
end

return slot0
