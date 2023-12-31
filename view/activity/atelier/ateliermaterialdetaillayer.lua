slot0 = class("AtelierMaterialDetailLayer", import("view.base.BaseUI"))

function slot0.getUIName(slot0)
	return "AtelierMaterialDetailUI"
end

function slot0.init(slot0)
	slot0.layerItemDetail = slot0._tf
	slot0.loader = AutoLoader.New()
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0.layerItemDetail:Find("BG"), function ()
		uv0:closeView()
	end, SFX_CANCEL)
	onButton(slot0, slot0.layerItemDetail:Find("Window/Close"), function ()
		uv0:closeView()
	end, SFX_CANCEL)
	slot0:UpdateItemDetail()
	pg.UIMgr.GetInstance():BlurPanel(slot0.layerItemDetail, nil, {
		weight = LayerWeightConst.SECOND_LAYER
	})
end

function slot0.UpdateItemDetail(slot0)
	slot1 = slot0.contextData.material

	slot0:UpdateRyzaItem(slot0.layerItemDetail:Find("Window/IconBG"), slot1)
	setText(slot0.layerItemDetail:Find("Window/Name"), slot1:GetName())
	setText(slot0.layerItemDetail:Find("Window/Description/Text"), slot1:GetDesc())
	setText(slot0.layerItemDetail:Find("Window/Source"), slot1:GetSource()[1])
	onButton(slot0, slot0.layerItemDetail:Find("Window/Go"), function ()
		if uv0.chapterid then
			slot2, slot3 = getProxy(ChapterProxy):getMapById(getProxy(ChapterProxy):getChapterById(uv0.chapterid):getConfig("map")):isUnlock()

			if not slot2 then
				pg.TipsMgr.GetInstance():ShowTips(slot3)

				return
			end

			if not slot0:isUnlock() then
				pg.TipsMgr.GetInstance():ShowTips(i18n("battle_levelScene_chapter_lock"))

				return
			end

			uv1:emit(GAME.GO_SCENE, SCENE.LEVEL, {
				openChapterId = uv0.chapterid,
				chapterId = uv0.chapterid,
				mapIdx = slot1.id
			})
		elseif uv0.recipeid then
			if not getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_ATELIER_LINK) or slot0:isEnd() then
				pg.TipsMgr.GetInstance():ShowTips(i18n("common_activity_end"))

				return
			end

			if slot0:GetFormulas()[uv0.recipeid]:GetType() ~= AtelierFormula.TYPE.TOOL and not slot0:IsCompleteAllTools() then
				pg.TipsMgr.GetInstance():ShowTips(i18n("ryza_tip_unlock_all_tools"))

				return
			end

			if not slot1:IsAvaliable() then
				pg.TipsMgr.GetInstance():ShowTips(i18n("ryza_tip_composite_invalid"))

				return
			end

			uv1:emit(AtelierMaterialDetailMediator.GO_RECIPE, uv0.recipeid)
		elseif uv0.taskid then
			if not getProxy(ActivityProxy):getActivityById(ActivityConst.RYZA_TASK) or slot0:isEnd() then
				pg.TipsMgr.GetInstance():ShowTips(i18n("common_activity_end"))

				return
			end

			uv1:emit(GAME.GO_SCENE, SCENE.RYZA_TASK, {
				task_id = uv0.taskid
			})
		end
	end, SFX_PANEL)
end

slot1 = "ui/AtelierCommonUI_atlas"

function slot0.UpdateRyzaItem(slot0, slot1, slot2, slot3)
	if slot3 then
		slot4 = "icon_frame_" .. slot2:GetRarity() .. "_small"
	end

	slot0.loader:GetSpriteQuiet(uv0, slot4, slot1)
	slot0.loader:GetSpriteQuiet(slot2:GetIconPath(), "", slot1:Find("Icon"))

	if not IsNil(slot1:Find("Lv")) then
		setText(slot1:Find("Lv/Text"), slot2:GetLevel())
	end

	for slot10, slot11 in ipairs(CustomIndexLayer.Clone2Full(slot1:Find("List"), #slot2:GetProps())) do
		slot0.loader:GetSpriteQuiet(uv0, "element_" .. AtelierFormulaCircle.ELEMENT_NAME[slot5[slot10]], slot11)
	end

	if not IsNil(slot1:Find("Text")) then
		setText(slot1:Find("Text"), slot2.count or "")
	end
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0.layerItemDetail, slot0._tf)
	slot0.loader:Clear()
end

return slot0
