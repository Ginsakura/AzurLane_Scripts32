ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleConst
slot2 = slot0.Battle.BattleAttr
slot0.Battle.IdleOxyState = class("IdleOxyState", slot0.Battle.IOxyState)
slot0.Battle.IdleOxyState.__name = "IdleOxyState"
slot3 = slot0.Battle.IdleOxyState

function slot3.Ctor(slot0)
	uv0.super.Ctor(slot0)
end

function slot3.GetWeaponUseableList(slot0)
	return {}
end

function slot3.UpdateCldData(slot0, slot1, slot2)
	slot4 = slot0:GetDiveState()
	slot1:GetCldData().Surface = slot4

	if slot2:GetDiveState() ~= slot4 then
		uv0.UnitCldEnable(slot1)
	end
end

function slot3.GetDiveState(slot0)
	return uv0.OXY_STATE.FLOAT
end

function slot3.GetBubbleFlag(slot0)
	return false
end

function slot3.IsVisible(slot0)
	return false
end

function slot3.GetBarVisible(slot0)
	return true
end

function slot3.RunMode(slot0)
	return false
end

function slot3.UpdateDive(slot0)
	return true
end
