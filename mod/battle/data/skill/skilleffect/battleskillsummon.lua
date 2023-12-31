ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleConst
slot0.Battle.BattleSkillSummon = class("BattleSkillSummon", slot0.Battle.BattleSkillEffect)
slot0.Battle.BattleSkillSummon.__name = "BattleSkillSummon"
slot2 = slot0.Battle.BattleSkillSummon

function slot2.Ctor(slot0, slot1)
	uv0.super.Ctor(slot0, slot1, lv)

	slot0._spawnData = slot0._tempData.arg_list.spawnData
end

function slot2.DoDataEffectWithoutTarget(slot0, slot1, slot2)
	slot0:DoSummon(slot1, slot2)
end

function slot2.DoDataEffect(slot0, slot1, slot2, slot3)
	slot0:DoSummon(slot1, slot3)
end

function slot2.DoSummon(slot0, slot1, slot2)
	slot4 = slot1:GetIFF()

	if slot1:GetUnitType() == uv1.UnitType.PLAYER_UNIT then
		slot5 = uv0.Battle.BattleDataProxy.GetInstance():SpawnNPC(slot0._spawnData, slot1)
	else
		slot3:SpawnMonster(slot0._spawnData, slot1:GetWaveIndex(), uv1.UnitType.ENEMY_UNIT, slot4):SetMaster(slot1)
	end
end
