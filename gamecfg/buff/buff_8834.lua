return {
	init_effect = "",
	name = "metaboss保底伤害",
	time = 1.7,
	picture = "",
	desc = "持续伤害",
	stack = 1,
	id = 8834,
	icon = 8834,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffDOT",
			trigger = {
				"onUpdate"
			},
			arg_list = {
				time = 0.16,
				metaDot = true,
				tagOnly = {
					"BOSS"
				}
			}
		}
	}
}
