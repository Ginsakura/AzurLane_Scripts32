return {
	uiEffect = "",
	name = "The Nick +",
	cd = 0,
	painting = 1,
	id = 1010750,
	picture = "0",
	castCV = "skill",
	desc = "The Nick",
	aniEffect = {
		effect = "jineng",
		offset = {
			0,
			-2,
			0
		}
	},
	effect_list = {
		{
			type = "BattleSkillAddBuff",
			casterAniEffect = "",
			target_choise = "TargetSelf",
			targetAniEffect = "",
			arg_list = {
				buff_id = 1010751
			}
		},
		{
			type = "BattleSkillAddBuff",
			casterAniEffect = "",
			targetAniEffect = "",
			target_choise = {
				"TargetAllHarm",
				"TargetRandom"
			},
			arg_list = {
				buff_id = 1010752,
				randomCount = 1
			}
		}
	}
}
