slot0 = class("EnemyCellView")

function slot0.Ctor(slot0)
	slot0._extraEffectList = {}
end

function slot0.SetPoolType(slot0, slot1)
	slot0.poolType = slot1
end

function slot0.GetPoolType(slot0)
	return slot0.poolType
end

function slot0.ClearExtraEffects(slot0)
	for slot4, slot5 in pairs(slot0._extraEffectList) do
		if not IsNil(slot5) then
			Destroy(slot5)
		end
	end

	table.clear(slot0._extraEffectList)
end

function slot0.LoadExtraEffects(slot0, slot1)
	if slot1 and #slot1 > 0 then
		slot0:GetLoader():LoadPrefab("effect/" .. slot1, slot1, function (slot0)
			uv0._extraEffectList[uv1] = slot0

			setParent(slot0, uv0.tf, false)

			slot0.transform.localScale = slot0.transform.localScale

			uv0:ResetCanvasOrder()
		end)
	end
end

function slot0.RefreshEnemyTplIcons(slot0, slot1, slot2)
	if not slot0.tf:Find("random_buff_container") then
		return
	end

	if slot1.icon_type == 1 then
		if ChapterConst.EnemySize[slot1.type] == 1 or not ChapterConst.EnemySize[slot6] then
			table.insert({}, "xiao")
		elseif ChapterConst.EnemySize[slot6] == 2 then
			table.insert(slot4, "zhong")
		elseif ChapterConst.EnemySize[slot6] == 3 then
			table.insert(slot4, "da")
		end
	end

	if slot1.bufficon and #slot1.bufficon > 0 then
		table.insertto(slot4, slot1.bufficon)
	end

	slot10 = slot0.line.row

	function slot9(slot0)
		return slot0 == ChapterConst.FlagWeatherFog
	end

	_.each(_.filter(slot2:GetWeather(slot10, slot0.line.column), slot9), function (slot0)
		table.insert(uv0, pg.weather_data_template[slot0].buff_icon)
	end)
	setActive(slot3, true)
	LevelGrid.AlignListContainer(slot3, #slot4)

	for slot9, slot10 in ipairs(slot4) do
		if #slot10 > 0 then
			slot0:GetLoader():GetSpriteQuiet("ui/share/ship_gizmos_atlas", slot10, slot3:GetChild(slot9 - 1))
		end
	end
end

function slot0.Clear(slot0)
	slot0:ClearExtraEffects()
end

return slot0
