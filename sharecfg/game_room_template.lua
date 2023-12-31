pg = pg or {}
pg.game_room_template = {
	{
		coin_max = 5,
		game_id = 1002,
		add_type = 12,
		type = 11,
		id = 1,
		add_base = 200,
		icon = "diediele",
		order = 1,
		unlock_time = {
			{
				2022,
				4,
				18
			},
			{
				0,
				0,
				0
			}
		},
		add_num = {
			{
				31,
				1.3
			},
			{
				21,
				1.2
			},
			{
				11,
				1.1
			},
			{
				6,
				1
			},
			{
				0,
				0.9
			}
		},
		game_help = {
			{
				info = [[
小游戏玩法：
1.玩家点击屏幕任意位置下落，堆叠成功即视为得分，落空3次会导致游戏结束
2.玩家需要注意屏幕右侧的平衡条，当平衡条上的小蛮啾触及到红色区域时堆叠倒塌，会导致游戏结束

奖励规则：游玩时投入游戏币可获得奖券奖励，每投入一枚游戏币，会根据不同分数获得如下数量的奖券：
0-5：180游戏奖券
6-10：200游戏奖券
11-20：220游戏奖券
21-30：240游戏奖券
31及以上：260游戏奖券]]
			}
		},
		position = {
			0,
			20
		}
	},
	{
		coin_max = 5,
		game_id = 1003,
		add_type = 12,
		type = 11,
		id = 2,
		add_base = 200,
		icon = "sanxiao",
		order = 2,
		unlock_time = {
			{
				2022,
				4,
				18
			},
			{
				0,
				0,
				0
			}
		},
		add_num = {
			{
				3001,
				1.3
			},
			{
				2001,
				1.2
			},
			{
				1001,
				1.1
			},
			{
				501,
				1
			},
			{
				0,
				0.9
			}
		},
		game_help = {
			{
				icon = {
					atlas = "helpbg/3match_1",
					path = ""
				}
			},
			{
				icon = {
					atlas = "helpbg/3match_2",
					path = ""
				}
			},
			{
				icon = {
					atlas = "helpbg/3match_3",
					path = ""
				}
			},
			disableScroll = true,
			pageMode = true,
			ImageMode = true,
			defaultpage = 1,
			windowSize = {
				x = 1263,
				y = 873
			},
			windowPos = {
				y = -70
			},
			helpSize = {
				x = 1176,
				y = 1024
			}
		},
		position = {
			157,
			-153
		}
	},
	{
		coin_max = 5,
		game_id = 1004,
		add_type = 12,
		type = 11,
		id = 3,
		add_base = 200,
		icon = "sheji",
		order = 3,
		unlock_time = {
			{
				2022,
				4,
				18
			},
			{
				0,
				0,
				0
			}
		},
		add_num = {
			{
				31,
				1.3
			},
			{
				21,
				1.2
			},
			{
				11,
				1.1
			},
			{
				6,
				1
			},
			{
				0,
				0.9
			}
		},
		game_help = {
			{
				info = [[
小游戏玩法：1.点击开始游戏，会在18个位置中的12个生成有塞壬头像的标靶，通过移动按钮和开火按钮在倒计时结束前击中不同的标靶获得不同的积分
2.不同标靶对应的积分标注在右侧
3.当十字准心中心在头像区域内时开火即判定命中，每次开火后需要等待一秒才能再次开火
4.每次击倒标靶后，该标靶消失，其余标靶都会刷新重新排列位置
5.游戏倒计时12秒，当倒计时用尽时游戏结束并结算

奖励规则：游玩时投入游戏币可获得奖券奖励，每投入一枚游戏币，会根据不同分数获得如下数量的奖券：
0-5：180游戏奖券
6-10：200游戏奖券
11-20：220游戏奖券
21-30：240游戏奖券
31及以上：260游戏奖券]]
			}
		},
		position = {
			0,
			0
		}
	},
	{
		coin_max = 5,
		game_id = 1005,
		add_type = 12,
		type = 11,
		id = 4,
		add_base = 200,
		icon = "xiaochi",
		order = 4,
		unlock_time = {
			{
				2022,
				4,
				18
			},
			{
				0,
				0,
				0
			}
		},
		add_num = {
			{
				20,
				1.3
			},
			{
				16,
				1.2
			},
			{
				11,
				1.1
			},
			{
				6,
				1
			},
			{
				0,
				0.9
			}
		},
		game_help = {
			{
				info = [[
小游戏玩法：
1点击选购开始游戏，左侧角色头顶会出现想要的三种食
物，在思考五秒之后头顶食物消失，玩家需要凭记忆在十秒内从右侧九种食物中选出角色之前想要的三种食物
2.需要按照之前角色头顶从左到右的食物顺序选择食物
3.单击食物选择，再次单击该食物可以取消选择，选择好三种食物后自动提交结果
4.倒计时未用尽的情况下，选好三种食物会进入结算界面，选出的正确食物会增加剩余时间和积分，可以选择继续
游戏或者游戏结算，增加时间和积分规则如下：选中3个正确的食物： 剩余时间增加5秒  积分增加5分选中2个正确的食物： 剩余时间增加2秒  积分增加2分选中1个正确的食物： 剩余时间增加1秒  积分增加1分选中0个正确的食物： 剩余时间增加0秒  积分增加0分   
5.如果选择继续游戏则保留剩余时间和积分，并继续选出符合左侧角色想要的三种食物
6.如果倒计时用尽或者主动选择游戏结算，则算作游戏结束

奖励规则：游玩时投入游戏币可获得奖券奖励，每投入一枚游戏币，会根据不同分数获得如下数量的奖券：
0-5：180游戏奖券
6-10：200游戏奖券
11-15：220游戏奖券
16-20：240游戏奖券
21及以上：260游戏奖券]]
			}
		},
		position = {
			320,
			-310
		}
	},
	{
		coin_max = 5,
		game_id = 1006,
		add_type = 12,
		type = 11,
		id = 5,
		add_base = 200,
		icon = "xiuxing",
		order = 5,
		unlock_time = {
			{
				2022,
				4,
				18
			},
			{
				0,
				0,
				0
			}
		},
		add_num = {
			{
				601,
				1.3
			},
			{
				451,
				1.2
			},
			{
				301,
				1.1
			},
			{
				151,
				1
			},
			{
				0,
				0.9
			}
		},
		game_help = {
			{
				icon = {
					atlas = "helpbg/guinu_help1",
					path = ""
				}
			},
			{
				icon = {
					atlas = "helpbg/guinu_help2",
					path = ""
				}
			},
			disableScroll = true,
			pageMode = true,
			ImageMode = true,
			defaultpage = 1,
			windowSize = {
				x = 1263,
				y = 873
			},
			windowPos = {
				y = -70
			},
			helpSize = {
				x = 1176,
				y = 1024
			}
		},
		position = {
			-411,
			-441
		}
	},
	all = {
		1,
		2,
		3,
		4,
		5
	}
}
