ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleConst
slot2 = slot0.Battle.BattleConst.AircraftUnitType
slot3 = slot0.Battle.BattleConst.CharacterUnitType
slot0.Battle.BattleElectricArcBulletFactory = singletonClass("BattleElectricArcBulletFactory", slot0.Battle.BattleBulletFactory)
slot0.Battle.BattleElectricArcBulletFactory.__name = "BattleElectricArcBulletFactory"
slot4 = slot0.Battle.BattleElectricArcBulletFactory

function slot4.Ctor(slot0)
	uv0.super.Ctor(slot0)
end

function slot4.CreateBullet(slot0, slot1, slot2, slot3, slot4, slot5)
	slot0:PlayFireFX(slot1, slot2, slot3, slot4, slot5, nil)

	if slot2:GetDirectHitUnit() == nil then
		return
	end

	slot9 = nil

	if table.contains(uv0, slot6:GetUnitType()) then
		slot9 = uv1.GetSceneMediator():GetAircraft(slot6:GetUniqueID())
	elseif table.contains(uv2, slot8) then
		slot9 = uv1.GetSceneMediator():GetCharacter(slot7)
	end

	if slot9 then
		slot9:AddFX(slot2:GetTemplate().hit_fx)
		slot0:GetDataProxy():HandleDamage(slot2, slot6)

		if slot2:GetWeapon():GetHost() then
			slot0:GetSceneMediator():AddArcEffect(slot2:GetTemplate().modle_ID, slot0:GetSceneMediator():GetCharacter(slot10:GetUniqueID()), slot6, slot2:GetWeapon():GetTemplateData().spawn_bound)
		end
	end
end
