return {
	init_effect = "",
	name = "毁灭",
	time = 0,
	color = "red",
	picture = "",
	desc = "战斗对象登场后，每15秒对全体在场舰队造成5%伤害",
	stack = 1,
	id = 59140,
	icon = 59140,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onUpdate"
			},
			arg_list = {
				check_target = "TargetSelf",
				minTargetNumber = 1,
				targetMaxHPRatio = 1,
				time = 15,
				target = "TargetSelf",
				skill_id = 59140
			}
		}
	}
}
