return {
	init_effect = "",
	name = "2024同盟活动D 指挥通讯网络",
	time = 3,
	color = "yellow",
	picture = "",
	desc = "",
	stack = 1,
	id = 200777,
	icon = 200777,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onFlagShip"
			},
			arg_list = {
				buff_id = 200778,
				target = "TargetSelf"
			}
		}
	}
}
