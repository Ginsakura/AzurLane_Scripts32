ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleCardPuzzleFormulas
slot2 = class("BattleCardPuzzleSkillSetFleetAttr", slot0.Battle.BattleCardPuzzleSkillEffect)
slot0.Battle.BattleCardPuzzleSkillSetFleetAttr = slot2
slot2.__name = "BattleCardPuzzleSkillSetFleetAttr"

function slot2.Ctor(slot0, slot1, slot2)
	uv0.super.Ctor(slot0, slot1, slot2)

	slot0._attr = slot0._tempData.arg_list.attr
	slot0._number = slot0._tempData.arg_list.number
	slot0._enhance = slot0._tempData.arg_list.enhance_formula
end

function slot2.SkillEffectHandler(slot0, slot1)
	if slot0._enhance then
		slot2 = slot0._number + uv0.parseFormula(slot0._enhance, slot0:GetCardPuzzleComponent():GetAttrManager())
	end

	slot0:GetCardPuzzleComponent():UpdateAttrBySet(slot0._attr, slot2)
	slot0:Finale()
end
