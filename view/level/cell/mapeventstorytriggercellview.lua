slot0 = class("MapEventStoryTriggerCellView", import(".StaticCellView"))

function slot0.Ctor(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)

	slot0.chapter = nil
	slot0.triggerUpper = nil
end

function slot0.GetOrder(slot0)
	return ChapterConst.CellPriorityAttachment
end

function slot0.Update(slot0)
	slot2 = slot0.info.flag == ChapterConst.CellFlagTriggerActive and slot1.trait ~= ChapterConst.TraitLurk

	if IsNil(slot0.go) then
		slot0:PrepareBase("story_" .. slot1.row .. "_" .. slot1.column .. "_" .. slot1.attachmentId)

		slot7 = pg.map_event_template[slot1.attachmentId].icon

		if IsNil(slot0.triggerUpper) and slot7 and #slot7 > 0 and PathMgr.FileExists(PathMgr.getAssetBundle("ui/" .. slot7 .. "_1shangceng")) then
			slot0.triggerUpper = HaloAttachmentView.New(slot0.parent, slot3, slot4)

			slot0.triggerUpper:SetLoader(slot0.loader)
		end
	end

	if slot0.assetName ~= ItemCell.TransformItemAsset(slot0.chapter, pg.map_event_template[slot1.attachmentId].icon and #slot4 > 0 and slot4 .. "_1" or nil) then
		if slot4 == nil then
			slot0:GetLoader():ClearRequest("ItemAsset")

			slot0.assetName = slot4
		else
			slot0:GetLoader():GetPrefab("ui/" .. slot4, slot4, function (slot0)
				setParent(slot0, uv0.tf)
				uv0:ResetCanvasOrder()

				uv0.assetName = uv1
			end, "ItemAsset")
		end
	end

	setActive(slot0.tf, slot2)

	if slot0.triggerUpper then
		slot0.triggerUpper.info = slot0.info

		slot0.triggerUpper:Update()
	end
end

function slot0.DestroyGO(slot0)
	if slot0.triggerUpper then
		slot0.triggerUpper:Clear()
	end

	slot0.triggerUpper = nil

	uv0.super.DestroyGO(slot0)
end

return slot0
