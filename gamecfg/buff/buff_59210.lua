return {
	init_effect = "",
	name = "吸收装甲",
	time = 0,
	color = "red",
	picture = "",
	desc = "战斗对象每隔X秒，生成一个可以吸收自身血量Y%伤害的护盾，持续Z秒",
	stack = 1,
	id = 59210,
	icon = 59210,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onUpdate"
			},
			arg_list = {
				buff_id = 59211,
				time = 20,
				target = "TargetSelf"
			}
		}
	}
}
