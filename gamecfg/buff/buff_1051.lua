return {
	{
		desc = "提高舰队中所有驱逐舰1.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"1.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰2.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"2.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰3.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"3.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰4.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"4.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰5.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"5.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰6.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"6.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰7.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"7.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰8.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"8.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰9.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"9.0%(+1.0%)"
		}
	},
	{
		desc = "提高舰队中所有驱逐舰10.0%炮击、雷击、装填属性，同类指挥技能无法同时生效",
		addition = {
			"10.0%"
		}
	},
	desc_get = "提高舰队中所有驱逐舰1.0%(满级10.0%)炮击、雷击、装填属性，同类指挥技能无法同时生效",
	name = "战术指挥·驱逐舰",
	init_effect = "",
	time = 0,
	color = "yellow",
	picture = "",
	desc = "提高舰队中所有驱逐舰$1炮击、雷击、装填属性，同类指挥技能无法同时生效",
	stack = 1,
	id = 1051,
	icon = 1050,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				skill_id = 1051
			}
		}
	}
}