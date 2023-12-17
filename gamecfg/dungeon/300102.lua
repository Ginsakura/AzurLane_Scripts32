return {
	map_id = 10001,
	id = 300102,
	stages = {
		{
			stageIndex = 1,
			failCondition = 1,
			timeCount = 180,
			passCondition = 1,
			backGroundStageID = 1,
			totalArea = {
				-70,
				20,
				90,
				70
			},
			playerArea = {
				-70,
				20,
				37,
				68
			},
			enemyArea = {},
			fleetCorrdinate = {
				-80,
				0,
				75
			},
			waves = {
				{
					triggerType = 1,
					waveIndex = 100,
					preWaves = {},
					triggerParams = {
						timeout = 0.5
					}
				},
				{
					triggerType = 1,
					waveIndex = 201,
					preWaves = {},
					triggerParams = {
						timeout = 21
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 101,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 300101,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								-10,
								0,
								70
							},
							phase = {
								{
									switchParam = 300,
									switchTo = 1,
									index = 0,
									switchType = 1,
									setAI = 20025
								}
							}
						},
						{
							monsterTemplateID = 300003,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								0,
								0,
								50
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300001,
							moveCast = true,
							delay = 2,
							score = 0,
							corrdinate = {
								-5,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300001,
							moveCast = true,
							delay = 2,
							score = 0,
							corrdinate = {
								-5,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 102,
					conditionType = 1,
					preWaves = {
						101,
						201
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 300007,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								3,
								0,
								60
							},
							buffList = {
								300001
							}
						},
						{
							monsterTemplateID = 300103,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								-10,
								0,
								50
							},
							phase = {
								{
									switchParam = 300,
									switchTo = 1,
									index = 0,
									switchType = 1,
									setAI = 20024
								}
							}
						},
						{
							monsterTemplateID = 300001,
							moveCast = true,
							delay = 2,
							score = 0,
							corrdinate = {
								-8,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300001,
							moveCast = true,
							delay = 2,
							score = 0,
							corrdinate = {
								-8,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300003,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								0,
								0,
								70
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300003,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								0,
								0,
								50
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 103,
					conditionType = 0,
					preWaves = {
						101,
						102
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 300007,
							moveCast = true,
							delay = 4,
							score = 0,
							corrdinate = {
								3,
								0,
								60
							},
							buffList = {
								300001
							}
						},
						{
							monsterTemplateID = 300203,
							moveCast = true,
							delay = 2,
							score = 0,
							corrdinate = {
								-10,
								0,
								60
							},
							buffList = {
								8713
							},
							phase = {
								{
									switchParam = 300,
									switchTo = 1,
									index = 0,
									switchType = 1,
									setAI = 20006
								}
							}
						},
						{
							monsterTemplateID = 300003,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								-8,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300003,
							moveCast = true,
							delay = 0,
							score = 0,
							corrdinate = {
								-8,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300003,
							moveCast = true,
							delay = 4,
							score = 0,
							corrdinate = {
								0,
								0,
								70
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 300003,
							moveCast = true,
							delay = 4,
							score = 0,
							corrdinate = {
								0,
								0,
								50
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 8,
					waveIndex = 900,
					preWaves = {
						103
					},
					triggerParams = {}
				}
			}
		}
	},
	fleet_prefab = {}
}
