return {
	uiEffect = "",
	name = "潜艇-指挥-命中II",
	cd = 0,
	painting = 1,
	id = 40470,
	picture = "0",
	aniEffect = "",
	desc = "潜艇-指挥-命中II",
	effect_list = {
		{
			type = "BattleSkillAddBuff",
			casterAniEffect = "",
			targetAniEffect = "",
			target_choise = {
				"TargetAllHelp",
				"TargetShipType"
			},
			arg_list = {
				buff_id = 40471,
				ship_type_list = {
					8,
					17,
					22
				}
			}
		}
	}
}
