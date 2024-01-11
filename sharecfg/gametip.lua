pg = pg or {}
pg.gametip = setmetatable({
	__name = "gametip"
}, confMT)
pg.base = pg.base or {}
pg.base.gametip = pg.base.gametip or {}
cs = cs or {}
cs.gametip = {
	ad_0 = {
		0,
		68,
		true
	},
	ad_1 = {
		68,
		306,
		true
	},
	ad_2 = {
		374,
		306,
		true
	},
	ad_3 = {
		680,
		306,
		true
	},
	word_back = {
		986,
		79,
		true
	},
	word_backyardMoney = {
		1065,
		91,
		true
	},
	word_cancel = {
		1156,
		81,
		true
	},
	word_cmdClose = {
		1237,
		89,
		true
	},
	word_delete = {
		1326,
		81,
		true
	},
	word_dockyard = {
		1407,
		83,
		true
	},
	word_dockyardUpgrade = {
		1490,
		96,
		true
	},
	word_dockyardDestroy = {
		1586,
		96,
		true
	},
	word_shipInfoScene_equip = {
		1682,
		100,
		true
	},
	word_shipInfoScene_reinfomation = {
		1782,
		107,
		true
	},
	word_shipInfoScene_infomation = {
		1889,
		105,
		true
	},
	word_editFleet = {
		1994,
		90,
		true
	},
	word_exp = {
		2084,
		75,
		true
	},
	word_expAdd = {
		2159,
		81,
		true
	},
	word_exp_chinese = {
		2240,
		86,
		true
	},
	word_exist = {
		2326,
		80,
		true
	},
	word_equip = {
		2406,
		80,
		true
	},
	word_equipDestory = {
		2486,
		87,
		true
	},
	word_food = {
		2573,
		79,
		true
	},
	word_get = {
		2652,
		78,
		true
	},
	word_got = {
		2730,
		81,
		true
	},
	word_not_get = {
		2811,
		85,
		true
	},
	word_next_level = {
		2896,
		88,
		true
	},
	word_intimacy = {
		2984,
		86,
		true
	},
	word_is = {
		3070,
		74,
		true
	},
	word_date = {
		3144,
		76,
		true
	},
	word_hour = {
		3220,
		79,
		true
	},
	word_minute = {
		3299,
		78,
		true
	},
	word_second = {
		3377,
		78,
		true
	},
	word_lv = {
		3455,
		77,
		true
	},
	word_proficiency = {
		3532,
		89,
		true
	},
	word_material = {
		3621,
		83,
		true
	},
	word_notExist = {
		3704,
		86,
		true
	},
	word_ok = {
		3790,
		77,
		true
	},
	word_preview = {
		3867,
		82,
		true
	},
	word_rarity = {
		3949,
		84,
		true
	},
	word_speedUp = {
		4033,
		82,
		true
	},
	word_succeed = {
		4115,
		82,
		true
	},
	word_start = {
		4197,
		80,
		true
	},
	word_kiss = {
		4277,
		79,
		true
	},
	word_take = {
		4356,
		79,
		true
	},
	word_takeOk = {
		4435,
		87,
		true
	},
	word_many = {
		4522,
		79,
		true
	},
	word_normal_2 = {
		4601,
		83,
		true
	},
	word_simple = {
		4684,
		81,
		true
	},
	word_save = {
		4765,
		79,
		true
	},
	word_levelup = {
		4844,
		82,
		true
	},
	word_serverLoadVindicate = {
		4926,
		117,
		true
	},
	word_serverLoadNormal = {
		5043,
		167,
		true
	},
	word_serverLoadFull = {
		5210,
		112,
		true
	},
	word_registerFull = {
		5322,
		110,
		true
	},
	word_synthesize = {
		5432,
		85,
		true
	},
	word_synthesize_power = {
		5517,
		97,
		true
	},
	word_achieved_item = {
		5614,
		94,
		true
	},
	word_formation = {
		5708,
		84,
		true
	},
	word_teach = {
		5792,
		80,
		true
	},
	word_study = {
		5872,
		80,
		true
	},
	word_destroy = {
		5952,
		82,
		true
	},
	word_upgrade = {
		6034,
		82,
		true
	},
	word_train = {
		6116,
		80,
		true
	},
	word_rest = {
		6196,
		79,
		true
	},
	word_capacity = {
		6275,
		84,
		true
	},
	word_operation = {
		6359,
		90,
		true
	},
	word_intensify_phase = {
		6449,
		96,
		true
	},
	word_systemClose = {
		6545,
		123,
		true
	},
	word_attr_antisub = {
		6668,
		87,
		true
	},
	word_attr_cannon = {
		6755,
		86,
		true
	},
	word_attr_torpedo = {
		6841,
		87,
		true
	},
	word_attr_antiaircraft = {
		6928,
		92,
		true
	},
	word_attr_air = {
		7020,
		83,
		true
	},
	word_attr_durability = {
		7103,
		90,
		true
	},
	word_attr_armor = {
		7193,
		85,
		true
	},
	word_attr_reload = {
		7278,
		86,
		true
	},
	word_attr_speed = {
		7364,
		85,
		true
	},
	word_attr_luck = {
		7449,
		84,
		true
	},
	word_attr_range = {
		7533,
		85,
		true
	},
	word_attr_range_view = {
		7618,
		90,
		true
	},
	word_attr_hit = {
		7708,
		83,
		true
	},
	word_attr_dodge = {
		7791,
		85,
		true
	},
	word_attr_luck1 = {
		7876,
		85,
		true
	},
	word_attr_damage = {
		7961,
		86,
		true
	},
	word_attr_healthy = {
		8047,
		87,
		true
	},
	word_attr_cd = {
		8134,
		82,
		true
	},
	word_attr_speciality = {
		8216,
		90,
		true
	},
	word_attr_level = {
		8306,
		91,
		true
	},
	word_shipState_npc = {
		8397,
		118,
		true
	},
	word_shipState_fight = {
		8515,
		111,
		true
	},
	word_shipState_world = {
		8626,
		114,
		true
	},
	word_shipState_rest = {
		8740,
		111,
		true
	},
	word_shipState_study = {
		8851,
		115,
		true
	},
	word_shipState_tactics = {
		8966,
		117,
		true
	},
	word_shipState_collect = {
		9083,
		136,
		true
	},
	word_shipState_event = {
		9219,
		118,
		true
	},
	word_shipState_activity = {
		9337,
		124,
		true
	},
	word_shipState_sham = {
		9461,
		123,
		true
	},
	word_shipState_support = {
		9584,
		117,
		true
	},
	word_shipType_quZhu = {
		9701,
		89,
		true
	},
	word_shipType_qinXun = {
		9790,
		90,
		true
	},
	word_shipType_zhongXun = {
		9880,
		92,
		true
	},
	word_shipType_zhanLie = {
		9972,
		91,
		true
	},
	word_shipType_hangMu = {
		10063,
		90,
		true
	},
	word_shipType_weiXiu = {
		10153,
		90,
		true
	},
	word_shipType_other = {
		10243,
		89,
		true
	},
	word_shipType_all = {
		10332,
		90,
		true
	},
	word_gem = {
		10422,
		78,
		true
	},
	word_freeGem = {
		10500,
		82,
		true
	},
	word_gem_icon = {
		10582,
		109,
		true
	},
	word_freeGem_icon = {
		10691,
		113,
		true
	},
	word_exploit = {
		10804,
		82,
		true
	},
	word_rankScore = {
		10886,
		84,
		true
	},
	word_battery = {
		10970,
		86,
		true
	},
	word_oil = {
		11056,
		78,
		true
	},
	word_gold = {
		11134,
		79,
		true
	},
	word_oilField = {
		11213,
		83,
		true
	},
	word_goldField = {
		11296,
		87,
		true
	},
	word_ema = {
		11383,
		78,
		true
	},
	word_ema1 = {
		11461,
		79,
		true
	},
	word_omamori = {
		11540,
		88,
		true
	},
	word_yisegefuke_pt = {
		11628,
		84,
		true
	},
	word_faxipt = {
		11712,
		90,
		true
	},
	word_count_2 = {
		11802,
		99,
		true
	},
	word_clear = {
		11901,
		80,
		true
	},
	word_buy = {
		11981,
		78,
		true
	},
	word_happy = {
		12059,
		103,
		true
	},
	word_normal = {
		12162,
		104,
		true
	},
	word_tired = {
		12266,
		103,
		true
	},
	word_angry = {
		12369,
		103,
		true
	},
	word_max_page = {
		12472,
		86,
		true
	},
	word_least_page = {
		12558,
		88,
		true
	},
	word_week = {
		12646,
		76,
		true
	},
	word_day = {
		12722,
		75,
		true
	},
	word_use = {
		12797,
		78,
		true
	},
	word_use_batch = {
		12875,
		89,
		true
	},
	word_discount = {
		12964,
		80,
		true
	},
	word_threaten_exclude = {
		13044,
		97,
		true
	},
	word_threaten = {
		13141,
		83,
		true
	},
	word_comingSoon = {
		13224,
		91,
		true
	},
	word_lightArmor = {
		13315,
		91,
		true
	},
	word_mediumArmor = {
		13406,
		92,
		true
	},
	word_heavyarmor = {
		13498,
		91,
		true
	},
	word_level_upperLimit = {
		13589,
		97,
		true
	},
	word_level_require = {
		13686,
		94,
		true
	},
	word_materal_no_enough = {
		13780,
		98,
		true
	},
	word_default = {
		13878,
		82,
		true
	},
	word_count = {
		13960,
		80,
		true
	},
	word_kind = {
		14040,
		79,
		true
	},
	word_piece = {
		14119,
		77,
		true
	},
	word_main_fleet = {
		14196,
		85,
		true
	},
	word_vanguard_fleet = {
		14281,
		89,
		true
	},
	word_theme = {
		14370,
		80,
		true
	},
	word_recommend = {
		14450,
		84,
		true
	},
	word_wallpaper = {
		14534,
		84,
		true
	},
	word_furniture = {
		14618,
		84,
		true
	},
	word_decorate = {
		14702,
		83,
		true
	},
	word_special = {
		14785,
		82,
		true
	},
	word_expand = {
		14867,
		81,
		true
	},
	word_wall = {
		14948,
		79,
		true
	},
	word_floorpaper = {
		15027,
		85,
		true
	},
	word_collection = {
		15112,
		85,
		true
	},
	word_mat = {
		15197,
		78,
		true
	},
	word_comfort_level = {
		15275,
		91,
		true
	},
	word_room = {
		15366,
		79,
		true
	},
	word_equipment_all = {
		15445,
		88,
		true
	},
	word_equipment_cannon = {
		15533,
		91,
		true
	},
	word_equipment_torpedo = {
		15624,
		92,
		true
	},
	word_equipment_aircraft = {
		15716,
		96,
		true
	},
	word_equipment_small_cannon = {
		15812,
		103,
		true
	},
	word_equipment_medium_cannon = {
		15915,
		104,
		true
	},
	word_equipment_big_cannon = {
		16019,
		101,
		true
	},
	word_equipment_warship_torpedo = {
		16120,
		106,
		true
	},
	word_equipment_submarine_torpedo = {
		16226,
		108,
		true
	},
	word_equipment_antiaircraft = {
		16334,
		100,
		true
	},
	word_equipment_fighter = {
		16434,
		95,
		true
	},
	word_equipment_bomber = {
		16529,
		94,
		true
	},
	word_equipment_torpedo_bomber = {
		16623,
		102,
		true
	},
	word_equipment_equip = {
		16725,
		90,
		true
	},
	word_equipment_type = {
		16815,
		89,
		true
	},
	word_equipment_rarity = {
		16904,
		94,
		true
	},
	word_equipment_intensify = {
		16998,
		94,
		true
	},
	word_equipment_special = {
		17092,
		92,
		true
	},
	word_primary_weapons = {
		17184,
		93,
		true
	},
	word_main_cannons = {
		17277,
		87,
		true
	},
	word_shipboard_aircraft = {
		17364,
		96,
		true
	},
	word_sub_cannons = {
		17460,
		86,
		true
	},
	word_sub_weapons = {
		17546,
		89,
		true
	},
	word_torpedo = {
		17635,
		82,
		true
	},
	["word_ air_defense_artillery"] = {
		17717,
		100,
		true
	},
	word_air_defense_artillery = {
		17817,
		99,
		true
	},
	word_device = {
		17916,
		81,
		true
	},
	word_cannon = {
		17997,
		81,
		true
	},
	word_fighter = {
		18078,
		85,
		true
	},
	word_bomber = {
		18163,
		84,
		true
	},
	word_attacker = {
		18247,
		86,
		true
	},
	word_seaplane = {
		18333,
		83,
		true
	},
	word_missile = {
		18416,
		82,
		true
	},
	word_online = {
		18498,
		81,
		true
	},
	word_apply = {
		18579,
		80,
		true
	},
	word_star = {
		18659,
		79,
		true
	},
	word_level = {
		18738,
		80,
		true
	},
	word_mod_value = {
		18818,
		87,
		true
	},
	word_wait = {
		18905,
		76,
		true
	},
	word_consume = {
		18981,
		82,
		true
	},
	word_sell_out = {
		19063,
		86,
		true
	},
	word_sell_lock = {
		19149,
		87,
		true
	},
	word_contribution = {
		19236,
		87,
		true
	},
	word_guild_res = {
		19323,
		90,
		true
	},
	word_fit = {
		19413,
		78,
		true
	},
	word_equipment_skin = {
		19491,
		89,
		true
	},
	word_activity = {
		19580,
		83,
		true
	},
	word_urgency_event = {
		19663,
		94,
		true
	},
	word_shop = {
		19757,
		79,
		true
	},
	word_facility = {
		19836,
		83,
		true
	},
	word_cv_key_main = {
		19919,
		89,
		true
	},
	channel_name_1 = {
		20008,
		84,
		true
	},
	channel_name_2 = {
		20092,
		84,
		true
	},
	channel_name_3 = {
		20176,
		84,
		true
	},
	channel_name_4 = {
		20260,
		84,
		true
	},
	channel_name_5 = {
		20344,
		84,
		true
	},
	common_wait = {
		20428,
		102,
		true
	},
	common_ship_type = {
		20530,
		92,
		true
	},
	common_dont_remind_dur_login = {
		20622,
		116,
		true
	},
	common_activity_end = {
		20738,
		127,
		true
	},
	common_activity_notStartOrEnd = {
		20865,
		173,
		true
	},
	common_activity_not_start = {
		21038,
		134,
		true
	},
	common_error = {
		21172,
		89,
		true
	},
	common_no_gold = {
		21261,
		119,
		true
	},
	common_no_oil = {
		21380,
		118,
		true
	},
	common_no_rmb = {
		21498,
		118,
		true
	},
	common_count_noenough = {
		21616,
		97,
		true
	},
	common_no_dorm_gold = {
		21713,
		127,
		true
	},
	common_no_resource = {
		21840,
		100,
		true
	},
	common_no_item = {
		21940,
		117,
		true
	},
	common_no_item_1 = {
		22057,
		92,
		true
	},
	common_no_x = {
		22149,
		112,
		true
	},
	common_limit_cmd = {
		22261,
		142,
		true
	},
	common_limit_type = {
		22403,
		140,
		true
	},
	common_limit_equip = {
		22543,
		100,
		true
	},
	common_buy_success = {
		22643,
		97,
		true
	},
	common_limit_level = {
		22740,
		133,
		true
	},
	common_shopId_noFound = {
		22873,
		102,
		true
	},
	common_today_buy_limit = {
		22975,
		110,
		true
	},
	common_not_enter_room = {
		23085,
		100,
		true
	},
	common_test_ship = {
		23185,
		98,
		true
	},
	common_entry_inhibited = {
		23283,
		98,
		true
	},
	common_refresh_count_insufficient = {
		23381,
		115,
		true
	},
	common_get_player_info_erro = {
		23496,
		115,
		true
	},
	common_no_open = {
		23611,
		90,
		true
	},
	["common_already owned"] = {
		23701,
		93,
		true
	},
	common_not_get_ship = {
		23794,
		98,
		true
	},
	common_sale_out = {
		23892,
		88,
		true
	},
	common_skin_out_of_stock = {
		23980,
		131,
		true
	},
	common_go_home = {
		24111,
		99,
		true
	},
	dont_remind_today = {
		24210,
		99,
		true
	},
	dont_remind_session = {
		24309,
		107,
		true
	},
	battle_no_oil = {
		24416,
		133,
		true
	},
	battle_emptyBlock = {
		24549,
		145,
		true
	},
	battle_duel_main_rage = {
		24694,
		145,
		true
	},
	battle_main_emergent = {
		24839,
		146,
		true
	},
	battle_battleMediator_goOnFight = {
		24985,
		107,
		true
	},
	battle_battleMediator_existFight = {
		25092,
		108,
		true
	},
	battle_battleMediator_clear_warning = {
		25200,
		218,
		true
	},
	battle_battleMediator_quest_exist = {
		25418,
		212,
		true
	},
	battle_levelMediator_ok_takeResource = {
		25630,
		118,
		true
	},
	battle_result_time_limit = {
		25748,
		114,
		true
	},
	battle_result_sink_limit = {
		25862,
		114,
		true
	},
	battle_result_undefeated = {
		25976,
		106,
		true
	},
	battle_result_victory = {
		26082,
		103,
		true
	},
	battle_result_defeat_all_enemys = {
		26185,
		122,
		true
	},
	battle_result_base_score = {
		26307,
		106,
		true
	},
	battle_result_dead_score = {
		26413,
		106,
		true
	},
	battle_result_score = {
		26519,
		104,
		true
	},
	battle_result_score_total = {
		26623,
		98,
		true
	},
	battle_result_total_damage = {
		26721,
		105,
		true
	},
	battle_result_contribution = {
		26826,
		105,
		true
	},
	battle_result_total_score = {
		26931,
		104,
		true
	},
	battle_result_max_combo = {
		27035,
		101,
		true
	},
	battle_levelScene_0Oil = {
		27136,
		102,
		true
	},
	battle_levelScene_0Gold = {
		27238,
		103,
		true
	},
	battle_levelScene_noRaderCount = {
		27341,
		112,
		true
	},
	battle_levelScene_lock = {
		27453,
		158,
		true
	},
	battle_levelScene_hard_lock = {
		27611,
		193,
		true
	},
	battle_levelScene_close = {
		27804,
		120,
		true
	},
	battle_levelScene_chapter_lock = {
		27924,
		181,
		true
	},
	battle_preCombatLayer_changeFormationError = {
		28105,
		146,
		true
	},
	battle_preCombatLayer_changeFormationNumberError = {
		28251,
		188,
		true
	},
	battle_preCombatLayer_ready = {
		28439,
		131,
		true
	},
	battle_preCombatLayer_quest_leaveFleet = {
		28570,
		155,
		true
	},
	battle_preCombatLayer_clear_confirm = {
		28725,
		145,
		true
	},
	battle_preCombatLayer_auto_confirm = {
		28870,
		168,
		true
	},
	battle_preCombatLayer_save_confirm = {
		29038,
		125,
		true
	},
	battle_preCombatLayer_save_march = {
		29163,
		126,
		true
	},
	battle_preCombatLayer_save_success = {
		29289,
		116,
		true
	},
	battle_preCombatLayer_time_limit = {
		29405,
		116,
		true
	},
	battle_preCombatLayer_sink_limit = {
		29521,
		128,
		true
	},
	battle_preCombatLayer_undefeated = {
		29649,
		120,
		true
	},
	battle_preCombatLayer_victory = {
		29769,
		111,
		true
	},
	battle_preCombatLayer_time_hold = {
		29880,
		118,
		true
	},
	battle_preCombatLayer_damage_before_end = {
		29998,
		146,
		true
	},
	battle_preCombatLayer_destory_transport_ship = {
		30144,
		135,
		true
	},
	battle_preCombatMediator_leastLimit = {
		30279,
		151,
		true
	},
	battle_preCombatMediator_timeout = {
		30430,
		186,
		true
	},
	battle_preCombatMediator_activity_timeout = {
		30616,
		183,
		true
	},
	battle_resourceSiteLayer_collecTimeDefault = {
		30799,
		152,
		true
	},
	battle_resourceSiteLayer_collecTime = {
		30951,
		139,
		true
	},
	battle_resourceSiteLayer_maxLv = {
		31090,
		134,
		true
	},
	battle_resourceSiteLayer_avgLv = {
		31224,
		134,
		true
	},
	battle_resourceSiteLayer_shipTypeCount = {
		31358,
		107,
		true
	},
	battle_resourceSiteLayer_no_maxLv = {
		31465,
		146,
		true
	},
	battle_resourceSiteLayer_no_avgLv = {
		31611,
		146,
		true
	},
	battle_resourceSiteLayer_no_shipTypeCount = {
		31757,
		149,
		true
	},
	battle_resourceSiteLayer_startError_collecting = {
		31906,
		122,
		true
	},
	battle_resourceSiteLayer_startError_not5Ship = {
		32028,
		150,
		true
	},
	battle_resourceSiteLayer_startError_limit = {
		32178,
		154,
		true
	},
	battle_resourceSiteLayer_endError_notStar = {
		32332,
		123,
		true
	},
	battle_resourceSiteLayer_quest_end = {
		32455,
		154,
		true
	},
	battle_resourceSiteMediator_noSite = {
		32609,
		116,
		true
	},
	battle_resourceSiteMediator_shipState_fight = {
		32725,
		155,
		true
	},
	battle_resourceSiteMediator_shipState_rest = {
		32880,
		143,
		true
	},
	battle_resourceSiteMediator_shipState_study = {
		33023,
		139,
		true
	},
	battle_resourceSiteMediator_shipState_event = {
		33162,
		157,
		true
	},
	battle_resourceSiteMediator_shipState_same = {
		33319,
		131,
		true
	},
	battle_resourceSiteMediator_ok_end = {
		33450,
		110,
		true
	},
	battle_autobot_unlock = {
		33560,
		112,
		true
	},
	tips_confirm_teleport_sub = {
		33672,
		332,
		true
	},
	backyard_addExp_Info = {
		34004,
		281,
		true
	},
	backyard_extendCapacity_error = {
		34285,
		106,
		true
	},
	backyard_extendCapacity_ok = {
		34391,
		161,
		true
	},
	backyard_addShip_error = {
		34552,
		102,
		true
	},
	backyard_buyFurniture_error = {
		34654,
		110,
		true
	},
	backyard_extendBackYard_error = {
		34764,
		118,
		true
	},
	backyard_addFood_error = {
		34882,
		105,
		true
	},
	backyard_addFood_ok = {
		34987,
		131,
		true
	},
	backyard_putFurniture_ok = {
		35118,
		100,
		true
	},
	backyard_backyardGranaryLayer_foodCountLimit = {
		35218,
		126,
		true
	},
	backyard_shipAddInimacy_ok = {
		35344,
		154,
		true
	},
	backyard_shipAddInimacy_error = {
		35498,
		115,
		true
	},
	backyard_shipAddMoney_ok = {
		35613,
		173,
		true
	},
	backyard_shipAddMoney_error = {
		35786,
		110,
		true
	},
	backyard_shipExit_error = {
		35896,
		106,
		true
	},
	backyard_shipSpeedUpEnergy_error = {
		36002,
		108,
		true
	},
	backyard_shipAlreadyExit = {
		36110,
		106,
		true
	},
	backyard_backyardGranaryLayer_full = {
		36216,
		145,
		true
	},
	backyard_backyardGranaryLayer_buyCountLimit = {
		36361,
		151,
		true
	},
	backyard_backyardGranaryLayer_error_noResource = {
		36512,
		157,
		true
	},
	backyard_backyardGranaryLayer_noFood = {
		36669,
		163,
		true
	},
	backyard_backyardGranaryLayer_noTimer = {
		36832,
		179,
		true
	},
	backyard_backyardGranaryLayer_word = {
		37011,
		150,
		true
	},
	backyard_backyardGranaryLayer_noShip = {
		37161,
		205,
		true
	},
	backyard_backyardGranaryLayer_foodTimeNotice_top = {
		37366,
		131,
		true
	},
	backyard_backyardGranaryLayer_foodTimeNotice_bottom = {
		37497,
		146,
		true
	},
	backyard_backyardGranaryLayer_foodMaxIncreaseNotice = {
		37643,
		190,
		true
	},
	backyard_backyardGranaryLayer_error_entendFail = {
		37833,
		159,
		true
	},
	backyard_backyardGranaryLayer_buy_max_count = {
		37992,
		152,
		true
	},
	backyard_backyardScene_comforChatContent1 = {
		38144,
		191,
		true
	},
	backyard_backyardScene_comforChatContent2 = {
		38335,
		202,
		true
	},
	backyard_buyExtendItem_question = {
		38537,
		146,
		true
	},
	backyard_backyardScene_expression_label_1 = {
		38683,
		111,
		true
	},
	backyard_backyardScene_expression_label_2 = {
		38794,
		111,
		true
	},
	backyard_backyardScene_expression_label_3 = {
		38905,
		111,
		true
	},
	backyard_backyardScene_quest_clearButton = {
		39016,
		152,
		true
	},
	backyard_backyardScene_quest_saveFurniture = {
		39168,
		154,
		true
	},
	backyard_backyardScene_restSuccess = {
		39322,
		134,
		true
	},
	backyard_backyardScene_clearSuccess = {
		39456,
		135,
		true
	},
	backyard_backyardScene_name = {
		39591,
		125,
		true
	},
	backyard_backyardScene_exitShipAfterAddEnergy = {
		39716,
		146,
		true
	},
	backyard_backyardScene_showAddExpInfo = {
		39862,
		198,
		true
	},
	backyard_backyardScene_error_noPosPutFurniture = {
		40060,
		138,
		true
	},
	backyard_backyardScene_error_noFurniture = {
		40198,
		132,
		true
	},
	backyard_backyardScene_error_canNotRotate = {
		40330,
		150,
		true
	},
	backyard_backyardShipInfoLayer_quest_openPos = {
		40480,
		183,
		true
	},
	backyard_backyardShipInfoLayer_quest_addShipNoFood = {
		40663,
		180,
		true
	},
	backyard_backyardShipInfoLayer_quest_quickAddEnergy = {
		40843,
		182,
		true
	},
	backyard_backyardShipInfoLayer_error_noQuickItem = {
		41025,
		137,
		true
	},
	backyard_backyardShipInfoMediator_shipState_rest = {
		41162,
		143,
		true
	},
	backyard_backyardShipInfoMediator_shipState_fight = {
		41305,
		144,
		true
	},
	backyard_backyardShipInfoMediator_shipState_study = {
		41449,
		145,
		true
	},
	backyard_backyardShipInfoMediator_shipState_collect = {
		41594,
		165,
		true
	},
	backyard_backyardShipInfoMediator_shipState_event = {
		41759,
		147,
		true
	},
	backyard_backyardShipInfoMediator_quest_moveOutFleet = {
		41906,
		200,
		true
	},
	backyard_backyardShipInfoMediator_error_vanguardFleetOnlyOneShip = {
		42106,
		162,
		true
	},
	backyard_backyardShipInfoMediator_error_mainFleetOnlyOneShip = {
		42268,
		158,
		true
	},
	backyard_backyardShipInfoMediator_ok_addShip = {
		42426,
		126,
		true
	},
	backyard_backyardShipInfoMediator_ok_unlock = {
		42552,
		119,
		true
	},
	backyard_backyardShipInfoMediator_error_noFood = {
		42671,
		132,
		true
	},
	backyard_backyardShipInfoMediator_error_fullEnergy = {
		42803,
		139,
		true
	},
	backyard_backyardShipInfoMediator_error_fleetOnlyOneShip = {
		42942,
		169,
		true
	},
	backyard_open_2floor = {
		43111,
		268,
		true
	},
	backyarad_theme_replace = {
		43379,
		174,
		true
	},
	backyard_extendArea_ok = {
		43553,
		104,
		true
	},
	backyard_extendArea_erro = {
		43657,
		132,
		true
	},
	backyard_extendArea_tip = {
		43789,
		167,
		true
	},
	backyard_notPosition_shipExit = {
		43956,
		133,
		true
	},
	backyard_no_ship_tip = {
		44089,
		99,
		true
	},
	backyard_energy_qiuck_up_tip = {
		44188,
		205,
		true
	},
	backyard_cant_put_tip = {
		44393,
		137,
		true
	},
	backyard_cant_buy_tip = {
		44530,
		97,
		true
	},
	backyard_theme_lock_tip = {
		44627,
		132,
		true
	},
	backyard_theme_open_tip = {
		44759,
		154,
		true
	},
	backyard_theme_furniture_buy_tip = {
		44913,
		274,
		true
	},
	backyard_cannot_repeat_purchase = {
		45187,
		113,
		true
	},
	backyard_theme_bought = {
		45300,
		97,
		true
	},
	backyard_interAction_no_open = {
		45397,
		116,
		true
	},
	backyard_theme_no_exist = {
		45513,
		105,
		true
	},
	backayrd_theme_delete_sucess = {
		45618,
		110,
		true
	},
	backayrd_theme_delete_erro = {
		45728,
		108,
		true
	},
	backyard_ship_on_furnitrue = {
		45836,
		133,
		true
	},
	backyard_save_empty_theme = {
		45969,
		110,
		true
	},
	backyard_theme_name_forbid = {
		46079,
		114,
		true
	},
	backyard_getResource_emptry = {
		46193,
		109,
		true
	},
	backyard_no_pos_for_ship = {
		46302,
		141,
		true
	},
	equipment_destroyEquipments_error_noEquip = {
		46443,
		120,
		true
	},
	equipment_destroyEquipments_error_notEnoughEquip = {
		46563,
		131,
		true
	},
	equipment_equipDevUI_error_noPos = {
		46694,
		120,
		true
	},
	equipment_equipmentInfoLayer_error_canNotEquip = {
		46814,
		149,
		true
	},
	equipment_equipmentScene_selectError_more = {
		46963,
		154,
		true
	},
	equipment_newEquipLayer_getNewEquip = {
		47117,
		138,
		true
	},
	equipment_select_materials_tip = {
		47255,
		121,
		true
	},
	equipment_select_device_tip = {
		47376,
		118,
		true
	},
	equipment_cant_unload = {
		47494,
		147,
		true
	},
	equipment_max_level = {
		47641,
		101,
		true
	},
	equipment_upgrade_costcheck_error = {
		47742,
		140,
		true
	},
	equipment_upgrade_feedback_lack_of_fragment = {
		47882,
		148,
		true
	},
	exercise_count_insufficient = {
		48030,
		133,
		true
	},
	exercise_clear_fleet_tip = {
		48163,
		222,
		true
	},
	exercise_fleet_exit_tip = {
		48385,
		168,
		true
	},
	exercise_replace_rivals_ok_tip = {
		48553,
		112,
		true
	},
	exercise_replace_rivals_question = {
		48665,
		153,
		true
	},
	exercise_count_recover_tip = {
		48818,
		128,
		true
	},
	exercise_shop_refresh_tip = {
		48946,
		151,
		true
	},
	exercise_shop_buy_tip = {
		49097,
		144,
		true
	},
	exercise_formation_title = {
		49241,
		106,
		true
	},
	exercise_time_tip = {
		49347,
		107,
		true
	},
	exercise_rule_tip = {
		49454,
		1129,
		true
	},
	exercise_award_tip = {
		50583,
		203,
		true
	},
	dock_yard_left_tips = {
		50786,
		136,
		true
	},
	fleet_error_no_fleet = {
		50922,
		99,
		true
	},
	fleet_repairShips_error_fullEnergy = {
		51021,
		152,
		true
	},
	fleet_repairShips_error_noResource = {
		51173,
		110,
		true
	},
	fleet_repairShips_quest = {
		51283,
		164,
		true
	},
	fleet_fleetRaname_error = {
		51447,
		103,
		true
	},
	fleet_updateFleet_error = {
		51550,
		106,
		true
	},
	friend_acceptFriendRequest_error = {
		51656,
		124,
		true
	},
	friend_deleteFriend_error = {
		51780,
		108,
		true
	},
	friend_fetchFriendMsg_error = {
		51888,
		110,
		true
	},
	friend_rejectFriendRequest_error = {
		51998,
		121,
		true
	},
	friend_searchFriend_noPlayer = {
		52119,
		107,
		true
	},
	friend_sendFriendMsg_error = {
		52226,
		109,
		true
	},
	friend_sendFriendMsg_error_noFriend = {
		52335,
		123,
		true
	},
	friend_sendFriendRequest_error = {
		52458,
		107,
		true
	},
	friend_addblacklist_error = {
		52565,
		111,
		true
	},
	friend_relieveblacklist_error = {
		52676,
		115,
		true
	},
	friend_sendFriendRequest_success = {
		52791,
		114,
		true
	},
	friend_relieveblacklist_success = {
		52905,
		116,
		true
	},
	friend_addblacklist_success = {
		53021,
		112,
		true
	},
	friend_confirm_add_blacklist = {
		53133,
		203,
		true
	},
	friend_relieve_backlist_tip = {
		53336,
		140,
		true
	},
	friend_player_is_friend_tip = {
		53476,
		115,
		true
	},
	friend_searchFriend_wait_time = {
		53591,
		119,
		true
	},
	lesson_classOver_error = {
		53710,
		105,
		true
	},
	lesson_endToLearn_error = {
		53815,
		106,
		true
	},
	lesson_startToLearn_error = {
		53921,
		102,
		true
	},
	tactics_lesson_cancel = {
		54023,
		175,
		true
	},
	tactics_lesson_system_introduce = {
		54198,
		287,
		true
	},
	tactics_lesson_start_tip = {
		54485,
		237,
		true
	},
	tactics_noskill_erro = {
		54722,
		102,
		true
	},
	tactics_max_level = {
		54824,
		108,
		true
	},
	tactics_end_to_learn = {
		54932,
		209,
		true
	},
	tactics_continue_to_learn = {
		55141,
		119,
		true
	},
	tactics_should_exist_skill = {
		55260,
		108,
		true
	},
	tactics_skill_level_up = {
		55368,
		119,
		true
	},
	tactics_no_lesson = {
		55487,
		108,
		true
	},
	tactics_lesson_full = {
		55595,
		101,
		true
	},
	tactics_lesson_repeated = {
		55696,
		120,
		true
	},
	login_gate_not_ready = {
		55816,
		105,
		true
	},
	login_game_not_ready = {
		55921,
		111,
		true
	},
	login_game_rigister_full = {
		56032,
		121,
		true
	},
	login_game_login_full = {
		56153,
		131,
		true
	},
	login_game_banned = {
		56284,
		120,
		true
	},
	login_game_frequence = {
		56404,
		111,
		true
	},
	login_createNewPlayer_full = {
		56515,
		117,
		true
	},
	login_createNewPlayer_error = {
		56632,
		104,
		true
	},
	login_createNewPlayer_error_nameNull = {
		56736,
		118,
		true
	},
	login_newPlayerScene_word_lingBo = {
		56854,
		184,
		true
	},
	login_newPlayerScene_word_yingHuoChong = {
		57038,
		200,
		true
	},
	login_newPlayerScene_word_laFei = {
		57238,
		192,
		true
	},
	login_newPlayerScene_word_biaoqiang = {
		57430,
		188,
		true
	},
	login_newPlayerScene_word_z23 = {
		57618,
		193,
		true
	},
	login_newPlayerScene_randomName = {
		57811,
		116,
		true
	},
	login_newPlayerScene_error_notChoiseShip = {
		57927,
		119,
		true
	},
	login_newPlayerScene_inputName = {
		58046,
		109,
		true
	},
	login_loginMediator_kickOtherLogin = {
		58155,
		116,
		true
	},
	login_loginMediator_kickServerClose = {
		58271,
		114,
		true
	},
	login_loginMediator_kickIntError = {
		58385,
		108,
		true
	},
	login_loginMediator_kickTimeError = {
		58493,
		115,
		true
	},
	login_loginMediator_vertifyFail = {
		58608,
		113,
		true
	},
	login_loginMediator_dataExpired = {
		58721,
		113,
		true
	},
	login_loginMediator_kickLoginOut = {
		58834,
		111,
		true
	},
	login_loginMediator_serverLoginErro = {
		58945,
		120,
		true
	},
	login_loginMediator_kickUndefined = {
		59065,
		119,
		true
	},
	login_loginMediator_loginSuccess = {
		59184,
		108,
		true
	},
	login_loginMediator_quest_RegisterSuccess = {
		59292,
		136,
		true
	},
	login_loginMediator_registerFail_error = {
		59428,
		115,
		true
	},
	login_loginMediator_userLoginFail_error = {
		59543,
		116,
		true
	},
	login_loginMediator_serverLoginFail_error = {
		59659,
		127,
		true
	},
	login_loginScene_error_noUserName = {
		59786,
		118,
		true
	},
	login_loginScene_error_noPassword = {
		59904,
		115,
		true
	},
	login_loginScene_error_diffPassword = {
		60019,
		130,
		true
	},
	login_loginScene_error_noMailBox = {
		60149,
		114,
		true
	},
	login_loginScene_choiseServer = {
		60263,
		111,
		true
	},
	login_loginScene_server_vindicate = {
		60374,
		127,
		true
	},
	login_loginScene_server_full = {
		60501,
		116,
		true
	},
	login_loginScene_server_disabled = {
		60617,
		114,
		true
	},
	login_register_full = {
		60731,
		101,
		true
	},
	system_database_busy = {
		60832,
		117,
		true
	},
	mail_getMailList_error_noNewMail = {
		60949,
		111,
		true
	},
	mail_takeAttachment_error_noMail = {
		61060,
		114,
		true
	},
	mail_takeAttachment_error_noAttach = {
		61174,
		116,
		true
	},
	mail_takeAttachment_error_noWorld = {
		61290,
		152,
		true
	},
	mail_takeAttachment_error_reWorld = {
		61442,
		203,
		true
	},
	mail_count = {
		61645,
		114,
		true
	},
	mail_takeAttachment_error_magazine_full = {
		61759,
		198,
		true
	},
	mail_takeAttachment_error_dockYrad_full = {
		61957,
		192,
		true
	},
	mail_confirm_set_important_flag = {
		62149,
		125,
		true
	},
	mail_confirm_cancel_important_flag = {
		62274,
		135,
		true
	},
	main_mailLayer_mailBoxClear = {
		62409,
		109,
		true
	},
	main_mailLayer_noNewMail = {
		62518,
		103,
		true
	},
	main_mailLayer_takeAttach = {
		62621,
		101,
		true
	},
	main_mailLayer_noAttach = {
		62722,
		96,
		true
	},
	main_mailLayer_attachTaken = {
		62818,
		105,
		true
	},
	main_mailLayer_quest_clear = {
		62923,
		195,
		true
	},
	main_mailLayer_quest_deleteNotTakeAttach = {
		63118,
		174,
		true
	},
	main_mailLayer_quest_deleteNotRead = {
		63292,
		168,
		true
	},
	main_mailMediator_mailDelete = {
		63460,
		107,
		true
	},
	main_mailMediator_attachTaken = {
		63567,
		108,
		true
	},
	main_mailMediator_notingToTake = {
		63675,
		118,
		true
	},
	main_mailMediator_takeALot = {
		63793,
		99,
		true
	},
	main_navalAcademyScene_systemClose = {
		63892,
		142,
		true
	},
	main_navalAcademyScene_quest_startClass = {
		64034,
		176,
		true
	},
	main_navalAcademyScene_quest_stopClass = {
		64210,
		223,
		true
	},
	main_navalAcademyScene_quest_Classover_long = {
		64433,
		222,
		true
	},
	main_navalAcademyScene_quest_Classover_short = {
		64655,
		192,
		true
	},
	main_navalAcademyScene_upgrade_complete = {
		64847,
		188,
		true
	},
	main_navalAcademyScene_class_upgrade_complete = {
		65035,
		151,
		true
	},
	main_navalAcademyScene_work_done = {
		65186,
		133,
		true
	},
	main_notificationLayer_searchInput = {
		65319,
		126,
		true
	},
	main_notificationLayer_noInput = {
		65445,
		112,
		true
	},
	main_notificationLayer_noFriend = {
		65557,
		113,
		true
	},
	main_notificationLayer_deleteFriend = {
		65670,
		111,
		true
	},
	main_notificationLayer_sendButton = {
		65781,
		112,
		true
	},
	main_notificationLayer_addFriendError_addSelf = {
		65893,
		137,
		true
	},
	main_notificationLayer_addFriendError_friendAlready = {
		66030,
		143,
		true
	},
	main_notificationLayer_quest_deletFriend = {
		66173,
		169,
		true
	},
	main_notificationLayer_quest_request = {
		66342,
		140,
		true
	},
	main_notificationLayer_enter_room = {
		66482,
		141,
		true
	},
	main_notificationLayer_not_roomId = {
		66623,
		115,
		true
	},
	main_notificationLayer_roomId_invaild = {
		66738,
		116,
		true
	},
	main_notificationMediator_sendFriendRequest = {
		66854,
		128,
		true
	},
	main_notificationMediator_beFriend = {
		66982,
		148,
		true
	},
	main_notificationMediator_deleteFriend = {
		67130,
		152,
		true
	},
	main_notificationMediator_room_max_number = {
		67282,
		126,
		true
	},
	main_playerInfoLayer_inputName = {
		67408,
		109,
		true
	},
	main_playerInfoLayer_inputManifesto = {
		67517,
		120,
		true
	},
	main_playerInfoLayer_quest_changeName = {
		67637,
		156,
		true
	},
	main_playerInfoLayer_error_changeNameNoGem = {
		67793,
		118,
		true
	},
	main_settingsScene_quest_exist = {
		67911,
		112,
		true
	},
	coloring_color_missmatch = {
		68023,
		106,
		true
	},
	coloring_color_not_enough = {
		68129,
		141,
		true
	},
	coloring_erase_all_warning = {
		68270,
		157,
		true
	},
	coloring_erase_warning = {
		68427,
		153,
		true
	},
	coloring_lock = {
		68580,
		86,
		true
	},
	coloring_wait_open = {
		68666,
		94,
		true
	},
	coloring_help_tip = {
		68760,
		984,
		true
	},
	link_link_help_tip = {
		69744,
		1029,
		true
	},
	player_changeManifesto_ok = {
		70773,
		107,
		true
	},
	player_changeManifesto_error = {
		70880,
		111,
		true
	},
	player_changePlayerIcon_ok = {
		70991,
		114,
		true
	},
	player_changePlayerIcon_error = {
		71105,
		112,
		true
	},
	player_changePlayerName_ok = {
		71217,
		108,
		true
	},
	player_changePlayerName_error = {
		71325,
		112,
		true
	},
	player_changePlayerName_error_2015 = {
		71437,
		119,
		true
	},
	player_harvestResource_error = {
		71556,
		111,
		true
	},
	player_harvestResource_error_fullBag = {
		71667,
		140,
		true
	},
	player_change_chat_room_erro = {
		71807,
		113,
		true
	},
	prop_destroyProp_error_noItem = {
		71920,
		111,
		true
	},
	prop_destroyProp_error_canNotSell = {
		72031,
		118,
		true
	},
	prop_destroyProp_error_notEnoughItem = {
		72149,
		134,
		true
	},
	prop_destroyProp_error = {
		72283,
		105,
		true
	},
	resourceSite_error_noSite = {
		72388,
		107,
		true
	},
	resourceSite_beginScanMap_ok = {
		72495,
		104,
		true
	},
	resourceSite_beginScanMap_error = {
		72599,
		114,
		true
	},
	resourceSite_collectResource_error = {
		72713,
		117,
		true
	},
	resourceSite_finishResourceSite_error = {
		72830,
		120,
		true
	},
	resourceSite_startResourceSite_error = {
		72950,
		122,
		true
	},
	ship_error_noShip = {
		73072,
		123,
		true
	},
	ship_addStarExp_error = {
		73195,
		107,
		true
	},
	ship_buildShip_error = {
		73302,
		103,
		true
	},
	ship_buildShip_error_noTemplate = {
		73405,
		144,
		true
	},
	ship_buildShip_error_notEnoughItem = {
		73549,
		132,
		true
	},
	ship_buildShipImmediately_error = {
		73681,
		114,
		true
	},
	ship_buildShipImmediately_error_noSHip = {
		73795,
		120,
		true
	},
	ship_buildShipImmediately_error_finished = {
		73915,
		119,
		true
	},
	ship_buildShipImmediately_error_noItem = {
		74034,
		120,
		true
	},
	ship_buildShip_not_position = {
		74154,
		131,
		true
	},
	ship_buildBatchShip = {
		74285,
		182,
		true
	},
	ship_buildSingleShip = {
		74467,
		182,
		true
	},
	ship_buildShip_succeed = {
		74649,
		104,
		true
	},
	ship_buildShip_list_empty = {
		74753,
		113,
		true
	},
	ship_buildship_tip = {
		74866,
		200,
		true
	},
	ship_destoryShips_error = {
		75066,
		103,
		true
	},
	ship_equipToShip_ok = {
		75169,
		120,
		true
	},
	ship_equipToShip_error = {
		75289,
		105,
		true
	},
	ship_equipToShip_error_noEquip = {
		75394,
		109,
		true
	},
	ship_equip_check = {
		75503,
		120,
		true
	},
	ship_getShip_error = {
		75623,
		101,
		true
	},
	ship_getShip_error_noShip = {
		75724,
		107,
		true
	},
	ship_getShip_error_notFinish = {
		75831,
		110,
		true
	},
	ship_getShip_error_full = {
		75941,
		143,
		true
	},
	ship_modShip_error = {
		76084,
		101,
		true
	},
	ship_modShip_error_notEnoughGold = {
		76185,
		132,
		true
	},
	ship_remouldShip_error = {
		76317,
		102,
		true
	},
	ship_unequipFromShip_ok = {
		76419,
		123,
		true
	},
	ship_unequipFromShip_error = {
		76542,
		109,
		true
	},
	ship_unequipFromShip_error_noEquip = {
		76651,
		122,
		true
	},
	ship_unequip_all_tip = {
		76773,
		111,
		true
	},
	ship_unequip_all_success = {
		76884,
		130,
		true
	},
	ship_updateShipLock_ok_lock = {
		77014,
		128,
		true
	},
	ship_updateShipLock_ok_unlock = {
		77142,
		131,
		true
	},
	ship_updateShipLock_error = {
		77273,
		114,
		true
	},
	ship_upgradeStar_error = {
		77387,
		105,
		true
	},
	ship_upgradeStar_error_4010 = {
		77492,
		140,
		true
	},
	ship_upgradeStar_error_lvLimit = {
		77632,
		145,
		true
	},
	ship_upgradeStar_error_noEnoughMatrail = {
		77777,
		120,
		true
	},
	ship_upgradeStar_notConfig = {
		77897,
		137,
		true
	},
	ship_upgradeStar_maxLevel = {
		78034,
		135,
		true
	},
	ship_upgradeStar_select_material_tip = {
		78169,
		121,
		true
	},
	ship_exchange_question = {
		78290,
		164,
		true
	},
	ship_exchange_medalCount_noEnough = {
		78454,
		115,
		true
	},
	ship_exchange_erro = {
		78569,
		122,
		true
	},
	ship_exchange_confirm = {
		78691,
		113,
		true
	},
	ship_exchange_tip = {
		78804,
		266,
		true
	},
	ship_vo_fighting = {
		79070,
		101,
		true
	},
	ship_vo_event = {
		79171,
		113,
		true
	},
	ship_vo_isCharacter = {
		79284,
		125,
		true
	},
	ship_vo_inBackyardRest = {
		79409,
		107,
		true
	},
	ship_vo_inClass = {
		79516,
		103,
		true
	},
	ship_vo_moveout_backyard = {
		79619,
		106,
		true
	},
	ship_vo_moveout_formation = {
		79725,
		107,
		true
	},
	ship_vo_mainFleet_must_hasShip = {
		79832,
		131,
		true
	},
	ship_vo_vanguardFleet_must_hasShip = {
		79963,
		135,
		true
	},
	ship_vo_getWordsUndefined = {
		80098,
		181,
		true
	},
	ship_vo_locked = {
		80279,
		93,
		true
	},
	ship_vo_mainFleet_exist_same_ship = {
		80372,
		134,
		true
	},
	ship_vo_vanguardFleet_exist_same_ship = {
		80506,
		138,
		true
	},
	ship_buildShipMediator_startBuild = {
		80644,
		109,
		true
	},
	ship_buildShipMediator_finishBuild = {
		80753,
		110,
		true
	},
	ship_buildShipScene_quest_quickFinish = {
		80863,
		222,
		true
	},
	ship_dockyardMediator_destroy = {
		81085,
		105,
		true
	},
	ship_dockyardScene_capacity = {
		81190,
		104,
		true
	},
	ship_dockyardScene_noRole = {
		81294,
		107,
		true
	},
	ship_dockyardScene_error_choiseRoleMore = {
		81401,
		152,
		true
	},
	ship_dockyardScene_error_choiseRoleLess = {
		81553,
		152,
		true
	},
	ship_formationMediator_leastLimit = {
		81705,
		149,
		true
	},
	ship_formationMediator_changeNameSuccess = {
		81854,
		132,
		true
	},
	ship_formationMediator_changeNameError_sameShip = {
		81986,
		148,
		true
	},
	ship_formationMediator_addShipError_overlimit = {
		82134,
		187,
		true
	},
	ship_formationMediator_replaceError_onlyShip = {
		82321,
		212,
		true
	},
	ship_formationMediator_quest_replace = {
		82533,
		185,
		true
	},
	ship_formationMediaror_trash_warning = {
		82718,
		232,
		true
	},
	ship_formationUI_fleetName1 = {
		82950,
		103,
		true
	},
	ship_formationUI_fleetName2 = {
		83053,
		103,
		true
	},
	ship_formationUI_fleetName3 = {
		83156,
		103,
		true
	},
	ship_formationUI_fleetName4 = {
		83259,
		103,
		true
	},
	ship_formationUI_fleetName5 = {
		83362,
		103,
		true
	},
	ship_formationUI_fleetName6 = {
		83465,
		103,
		true
	},
	ship_formationUI_fleetName11 = {
		83568,
		107,
		true
	},
	ship_formationUI_fleetName12 = {
		83675,
		107,
		true
	},
	ship_formationUI_exercise_fleetName = {
		83782,
		111,
		true
	},
	ship_formationUI_fleetName_world = {
		83893,
		114,
		true
	},
	ship_formationUI_changeFormationError_flag = {
		84007,
		158,
		true
	},
	ship_formationUI_changeFormationError_countError = {
		84165,
		131,
		true
	},
	ship_formationUI_removeError_onlyShip = {
		84296,
		191,
		true
	},
	ship_formationUI_quest_remove = {
		84487,
		140,
		true
	},
	ship_newShipLayer_get = {
		84627,
		146,
		true
	},
	ship_newSkinLayer_get = {
		84773,
		151,
		true
	},
	ship_newSkin_name = {
		84924,
		89,
		true
	},
	ship_shipInfoMediator_destory = {
		85013,
		105,
		true
	},
	ship_shipInfoScene_equipUnlockSlostContent = {
		85118,
		167,
		true
	},
	ship_shipInfoScene_equipUnlockSlostYesText = {
		85285,
		118,
		true
	},
	ship_shipInfoScene_effect = {
		85403,
		133,
		true
	},
	ship_shipInfoScene_effect1or2 = {
		85536,
		133,
		true
	},
	ship_shipInfoScene_modLvMax = {
		85669,
		118,
		true
	},
	ship_shipInfoScene_choiseMod = {
		85787,
		125,
		true
	},
	ship_shipModLayer_effect = {
		85912,
		132,
		true
	},
	ship_shipModLayer_effect1or2 = {
		86044,
		132,
		true
	},
	ship_shipModLayer_modSuccess = {
		86176,
		104,
		true
	},
	ship_mod_no_addition_tip = {
		86280,
		148,
		true
	},
	ship_shipModMediator_choiseMaterial = {
		86428,
		133,
		true
	},
	ship_shipModMediator_noticeLvOver1 = {
		86561,
		111,
		true
	},
	ship_shipModMediator_noticeStarOver4 = {
		86672,
		113,
		true
	},
	ship_shipModMediator_noticeSameButLargerStar = {
		86785,
		130,
		true
	},
	ship_shipModMediator_quest = {
		86915,
		173,
		true
	},
	ship_shipUpgradeLayer2_levelError = {
		87088,
		109,
		true
	},
	ship_shipUpgradeLayer2_noMaterail = {
		87197,
		109,
		true
	},
	ship_shipUpgradeLayer2_ok = {
		87306,
		101,
		true
	},
	ship_shipUpgradeLayer2_effect = {
		87407,
		137,
		true
	},
	ship_shipUpgradeLayer2_effect1or2 = {
		87544,
		137,
		true
	},
	ship_shipUpgradeLayer2_mod_uncommon_tip = {
		87681,
		190,
		true
	},
	ship_shipUpgradeLayer2_uncommon_tip = {
		87871,
		186,
		true
	},
	ship_shipUpgradeLayer2_mod_advanced_tip = {
		88057,
		191,
		true
	},
	ship_shipUpgradeLayer2_advanced_tip = {
		88248,
		187,
		true
	},
	ship_mod_exp_to_attr_tip = {
		88435,
		132,
		true
	},
	ship_max_star = {
		88567,
		131,
		true
	},
	ship_skill_unlock_tip = {
		88698,
		103,
		true
	},
	ship_lock_tip = {
		88801,
		124,
		true
	},
	ship_destroy_uncommon_tip = {
		88925,
		170,
		true
	},
	ship_destroy_advanced_tip = {
		89095,
		148,
		true
	},
	ship_energy_mid_desc = {
		89243,
		132,
		true
	},
	ship_energy_low_desc = {
		89375,
		149,
		true
	},
	ship_energy_low_warn = {
		89524,
		164,
		true
	},
	ship_energy_low_warn_no_exp = {
		89688,
		256,
		true
	},
	test_ship_intensify_tip = {
		89944,
		111,
		true
	},
	test_ship_upgrade_tip = {
		90055,
		109,
		true
	},
	shop_buyItem_ok = {
		90164,
		131,
		true
	},
	shop_buyItem_error = {
		90295,
		95,
		true
	},
	shop_extendMagazine_error = {
		90390,
		111,
		true
	},
	shop_entendShipYard_error = {
		90501,
		108,
		true
	},
	spweapon_attr_effect = {
		90609,
		96,
		true
	},
	spweapon_attr_skillupgrade = {
		90705,
		102,
		true
	},
	spweapon_help_storage = {
		90807,
		1757,
		true
	},
	spweapon_tip_upgrade = {
		92564,
		114,
		true
	},
	spweapon_tip_attr_modify = {
		92678,
		168,
		true
	},
	spweapon_tip_materal_no_enough = {
		92846,
		106,
		true
	},
	spweapon_tip_gold_no_enough = {
		92952,
		103,
		true
	},
	spweapon_tip_pt_no_enough = {
		93055,
		138,
		true
	},
	spweapon_tip_creatept_no_enough = {
		93193,
		144,
		true
	},
	spweapon_tip_bag_no_enough = {
		93337,
		120,
		true
	},
	spweapon_tip_create_sussess = {
		93457,
		139,
		true
	},
	spweapon_tip_group_error = {
		93596,
		124,
		true
	},
	spweapon_tip_breakout_overflow = {
		93720,
		165,
		true
	},
	spweapon_tip_breakout_materal_check = {
		93885,
		142,
		true
	},
	spweapon_tip_transform_materal_check = {
		94027,
		143,
		true
	},
	spweapon_tip_transform_attrmax = {
		94170,
		124,
		true
	},
	spweapon_tip_locked = {
		94294,
		158,
		true
	},
	spweapon_tip_unload = {
		94452,
		116,
		true
	},
	spweapon_tip_sail_locked = {
		94568,
		137,
		true
	},
	spweapon_ui_level = {
		94705,
		93,
		true
	},
	spweapon_ui_levelmax = {
		94798,
		102,
		true
	},
	spweapon_ui_levelmax2 = {
		94900,
		106,
		true
	},
	spweapon_ui_need_resource = {
		95006,
		102,
		true
	},
	spweapon_ui_ptitem = {
		95108,
		91,
		true
	},
	spweapon_ui_spweapon = {
		95199,
		96,
		true
	},
	spweapon_ui_transform = {
		95295,
		91,
		true
	},
	spweapon_ui_transform_attr_text = {
		95386,
		241,
		true
	},
	spweapon_ui_keep_attr = {
		95627,
		97,
		true
	},
	spweapon_ui_change_attr = {
		95724,
		99,
		true
	},
	spweapon_ui_autoselect = {
		95823,
		98,
		true
	},
	spweapon_ui_cancelselect = {
		95921,
		100,
		true
	},
	spweapon_ui_index_shipType_quZhu = {
		96021,
		102,
		true
	},
	spweapon_ui_index_shipType_qinXun = {
		96123,
		103,
		true
	},
	spweapon_ui_index_shipType_zhongXun = {
		96226,
		105,
		true
	},
	spweapon_ui_index_shipType_zhanLie = {
		96331,
		104,
		true
	},
	spweapon_ui_index_shipType_hangMu = {
		96435,
		103,
		true
	},
	spweapon_ui_index_shipType_weiXiu = {
		96538,
		103,
		true
	},
	spweapon_ui_index_shipType_qianTing = {
		96641,
		105,
		true
	},
	spweapon_ui_index_shipType_other = {
		96746,
		102,
		true
	},
	spweapon_ui_keep_attr_text1 = {
		96848,
		172,
		true
	},
	spweapon_ui_keep_attr_text2 = {
		97020,
		142,
		true
	},
	spweapon_ui_change_attr_text1 = {
		97162,
		199,
		true
	},
	spweapon_ui_change_attr_text2 = {
		97361,
		144,
		true
	},
	spweapon_ui_create_exp = {
		97505,
		105,
		true
	},
	spweapon_ui_upgrade_exp = {
		97610,
		106,
		true
	},
	spweapon_ui_breakout_exp = {
		97716,
		107,
		true
	},
	spweapon_ui_create = {
		97823,
		88,
		true
	},
	spweapon_ui_storage = {
		97911,
		89,
		true
	},
	spweapon_ui_empty = {
		98000,
		90,
		true
	},
	spweapon_ui_create_button = {
		98090,
		96,
		true
	},
	spweapon_ui_helptext = {
		98186,
		287,
		true
	},
	spweapon_ui_effect_tag = {
		98473,
		104,
		true
	},
	spweapon_ui_skill_tag = {
		98577,
		103,
		true
	},
	spweapon_activity_ui_text1 = {
		98680,
		165,
		true
	},
	spweapon_activity_ui_text2 = {
		98845,
		164,
		true
	},
	spweapon_tip_skill_locked = {
		99009,
		104,
		true
	},
	spweapon_tip_owned = {
		99113,
		96,
		true
	},
	spweapon_tip_view = {
		99209,
		145,
		true
	},
	spweapon_tip_ship = {
		99354,
		93,
		true
	},
	spweapon_tip_type = {
		99447,
		93,
		true
	},
	stage_beginStage_error = {
		99540,
		105,
		true
	},
	stage_beginStage_error_fleetEmpty = {
		99645,
		124,
		true
	},
	stage_beginStage_error_teamEmpty = {
		99769,
		171,
		true
	},
	stage_beginStage_error_noEnergy = {
		99940,
		135,
		true
	},
	stage_beginStage_error_noResource = {
		100075,
		136,
		true
	},
	stage_beginStage_error_noTicket = {
		100211,
		141,
		true
	},
	stage_finishStage_error = {
		100352,
		126,
		true
	},
	levelScene_map_lock = {
		100478,
		146,
		true
	},
	levelScene_chapter_lock = {
		100624,
		135,
		true
	},
	levelScene_chapter_strategying = {
		100759,
		142,
		true
	},
	levelScene_threat_to_rule_out = {
		100901,
		131,
		true
	},
	levelScene_whether_to_retreat = {
		101032,
		136,
		true
	},
	levelScene_who_to_retreat = {
		101168,
		131,
		true
	},
	levelScene_who_to_exchange = {
		101299,
		120,
		true
	},
	levelScene_time_out = {
		101419,
		104,
		true
	},
	levelScene_nothing = {
		101523,
		97,
		true
	},
	levelScene_notCargo = {
		101620,
		98,
		true
	},
	levelScene_openCargo_erro = {
		101718,
		107,
		true
	},
	levelScene_chapter_notInStrategy = {
		101825,
		111,
		true
	},
	levelScene_retreat_erro = {
		101936,
		99,
		true
	},
	levelScene_strategying = {
		102035,
		101,
		true
	},
	levelScene_tracking_erro = {
		102136,
		94,
		true
	},
	levelScene_tracking_error_3001 = {
		102230,
		143,
		true
	},
	levelScene_chapter_unlock_tip = {
		102373,
		161,
		true
	},
	levelScene_chapter_win = {
		102534,
		117,
		true
	},
	levelScene_sham_win = {
		102651,
		113,
		true
	},
	levelScene_escort_win = {
		102764,
		121,
		true
	},
	levelScene_escort_lose = {
		102885,
		116,
		true
	},
	levelScene_escort_help_tip = {
		103001,
		1133,
		true
	},
	levelScene_escort_retreat = {
		104134,
		184,
		true
	},
	levelScene_oni_retreat = {
		104318,
		163,
		true
	},
	levelScene_oni_win = {
		104481,
		106,
		true
	},
	levelScene_oni_lose = {
		104587,
		119,
		true
	},
	levelScene_bomb_retreat = {
		104706,
		148,
		true
	},
	levelScene_sphunt_help_tip = {
		104854,
		497,
		true
	},
	levelScene_bomb_help_tip = {
		105351,
		495,
		true
	},
	levelScene_chapter_timeout = {
		105846,
		130,
		true
	},
	levelScene_chapter_level_limit = {
		105976,
		162,
		true
	},
	levelScene_chapter_count_tip = {
		106138,
		107,
		true
	},
	levelScene_tracking_error_retry = {
		106245,
		125,
		true
	},
	levelScene_destroy_torpedo = {
		106370,
		108,
		true
	},
	levelScene_new_chapter_coming = {
		106478,
		108,
		true
	},
	levelScene_chapter_open_count_down = {
		106586,
		113,
		true
	},
	levelScene_chapter_not_open = {
		106699,
		100,
		true
	},
	levelScene_activate_remaster = {
		106799,
		179,
		true
	},
	levelScene_remaster_tickets_not_enough = {
		106978,
		123,
		true
	},
	levelScene_remaster_do_not_open = {
		107101,
		132,
		true
	},
	levelScene_remaster_help_tip = {
		107233,
		1110,
		true
	},
	levelScene_activate_loop_mode_failed = {
		108343,
		153,
		true
	},
	levelScene_coastalgun_help_tip = {
		108496,
		355,
		true
	},
	levelScene_select_SP_OP = {
		108851,
		111,
		true
	},
	levelScene_unselect_SP_OP = {
		108962,
		110,
		true
	},
	levelScene_select_SP_OP_reminder = {
		109072,
		337,
		true
	},
	tack_tickets_max_warning = {
		109409,
		266,
		true
	},
	world_battle_count = {
		109675,
		112,
		true
	},
	world_fleetName1 = {
		109787,
		95,
		true
	},
	world_fleetName2 = {
		109882,
		95,
		true
	},
	world_fleetName3 = {
		109977,
		95,
		true
	},
	world_fleetName4 = {
		110072,
		95,
		true
	},
	world_fleetName5 = {
		110167,
		95,
		true
	},
	world_ship_repair_1 = {
		110262,
		147,
		true
	},
	world_ship_repair_2 = {
		110409,
		147,
		true
	},
	world_ship_repair_all = {
		110556,
		153,
		true
	},
	world_ship_repair_no_need = {
		110709,
		113,
		true
	},
	world_event_teleport_alter = {
		110822,
		154,
		true
	},
	world_transport_battle_alter = {
		110976,
		153,
		true
	},
	world_transport_locked = {
		111129,
		165,
		true
	},
	world_target_count = {
		111294,
		114,
		true
	},
	world_target_filter_tip1 = {
		111408,
		94,
		true
	},
	world_target_filter_tip2 = {
		111502,
		97,
		true
	},
	world_target_get_all = {
		111599,
		130,
		true
	},
	world_target_goto = {
		111729,
		93,
		true
	},
	world_help_tip = {
		111822,
		136,
		true
	},
	world_dangerbattle_confirm = {
		111958,
		185,
		true
	},
	world_stamina_exchange = {
		112143,
		168,
		true
	},
	world_stamina_not_enough = {
		112311,
		103,
		true
	},
	world_stamina_recover = {
		112414,
		191,
		true
	},
	world_stamina_text = {
		112605,
		210,
		true
	},
	world_stamina_text2 = {
		112815,
		161,
		true
	},
	world_stamina_resetwarning = {
		112976,
		266,
		true
	},
	world_ship_healthy = {
		113242,
		128,
		true
	},
	world_map_dangerous = {
		113370,
		95,
		true
	},
	world_map_not_open = {
		113465,
		100,
		true
	},
	world_map_locked_stage = {
		113565,
		104,
		true
	},
	world_map_locked_border = {
		113669,
		108,
		true
	},
	world_item_allocate_panel_fleet_info_text = {
		113777,
		117,
		true
	},
	world_redeploy_not_change = {
		113894,
		156,
		true
	},
	world_redeploy_warn = {
		114050,
		168,
		true
	},
	world_redeploy_cost_tip = {
		114218,
		228,
		true
	},
	world_redeploy_tip = {
		114446,
		103,
		true
	},
	world_fleet_choose = {
		114549,
		169,
		true
	},
	world_fleet_formation_not_valid = {
		114718,
		109,
		true
	},
	world_fleet_in_vortex = {
		114827,
		149,
		true
	},
	world_stage_help = {
		114976,
		218,
		true
	},
	world_transport_disable = {
		115194,
		148,
		true
	},
	world_ap = {
		115342,
		81,
		true
	},
	world_resource_tip_1 = {
		115423,
		111,
		true
	},
	world_resource_tip_2 = {
		115534,
		111,
		true
	},
	world_instruction_all_1 = {
		115645,
		105,
		true
	},
	world_instruction_help_1 = {
		115750,
		620,
		true
	},
	world_instruction_redeploy_1 = {
		116370,
		159,
		true
	},
	world_instruction_redeploy_2 = {
		116529,
		159,
		true
	},
	world_instruction_redeploy_3 = {
		116688,
		177,
		true
	},
	world_instruction_morale_1 = {
		116865,
		181,
		true
	},
	world_instruction_morale_2 = {
		117046,
		139,
		true
	},
	world_instruction_morale_3 = {
		117185,
		123,
		true
	},
	world_instruction_morale_4 = {
		117308,
		139,
		true
	},
	world_instruction_submarine_1 = {
		117447,
		126,
		true
	},
	world_instruction_submarine_2 = {
		117573,
		157,
		true
	},
	world_instruction_submarine_3 = {
		117730,
		130,
		true
	},
	world_instruction_submarine_4 = {
		117860,
		139,
		true
	},
	world_instruction_submarine_5 = {
		117999,
		114,
		true
	},
	world_instruction_submarine_6 = {
		118113,
		181,
		true
	},
	world_instruction_submarine_7 = {
		118294,
		166,
		true
	},
	world_instruction_submarine_8 = {
		118460,
		145,
		true
	},
	world_instruction_submarine_9 = {
		118605,
		164,
		true
	},
	world_instruction_submarine_10 = {
		118769,
		106,
		true
	},
	world_instruction_submarine_11 = {
		118875,
		131,
		true
	},
	world_instruction_detect_1 = {
		119006,
		154,
		true
	},
	world_instruction_detect_2 = {
		119160,
		117,
		true
	},
	world_instruction_supply_1 = {
		119277,
		174,
		true
	},
	world_instruction_supply_2 = {
		119451,
		122,
		true
	},
	world_instruction_port_goods_locked = {
		119573,
		123,
		true
	},
	world_port_inbattle = {
		119696,
		132,
		true
	},
	world_item_recycle_1 = {
		119828,
		111,
		true
	},
	world_item_recycle_2 = {
		119939,
		111,
		true
	},
	world_item_origin = {
		120050,
		114,
		true
	},
	world_shop_bag_unactivated = {
		120164,
		160,
		true
	},
	world_shop_preview_tip = {
		120324,
		116,
		true
	},
	world_shop_init_notice = {
		120440,
		147,
		true
	},
	world_map_title_tips_en = {
		120587,
		101,
		true
	},
	world_map_title_tips = {
		120688,
		96,
		true
	},
	world_mapbuff_attrtxt_1 = {
		120784,
		99,
		true
	},
	world_mapbuff_attrtxt_2 = {
		120883,
		99,
		true
	},
	world_mapbuff_attrtxt_3 = {
		120982,
		99,
		true
	},
	world_mapbuff_compare_txt = {
		121081,
		104,
		true
	},
	world_wind_move = {
		121185,
		155,
		true
	},
	world_battle_pause = {
		121340,
		91,
		true
	},
	world_battle_pause2 = {
		121431,
		95,
		true
	},
	world_task_samemap = {
		121526,
		146,
		true
	},
	world_task_maplock = {
		121672,
		217,
		true
	},
	world_task_goto0 = {
		121889,
		116,
		true
	},
	world_task_goto3 = {
		122005,
		113,
		true
	},
	world_task_view1 = {
		122118,
		95,
		true
	},
	world_task_view2 = {
		122213,
		95,
		true
	},
	world_task_view3 = {
		122308,
		86,
		true
	},
	world_task_refuse1 = {
		122394,
		152,
		true
	},
	world_daily_task_lock = {
		122546,
		131,
		true
	},
	world_daily_task_none = {
		122677,
		127,
		true
	},
	world_daily_task_none_2 = {
		122804,
		118,
		true
	},
	world_sairen_title = {
		122922,
		97,
		true
	},
	world_sairen_description1 = {
		123019,
		146,
		true
	},
	world_sairen_description2 = {
		123165,
		146,
		true
	},
	world_sairen_description3 = {
		123311,
		146,
		true
	},
	world_low_morale = {
		123457,
		196,
		true
	},
	world_recycle_notice = {
		123653,
		154,
		true
	},
	world_recycle_item_transform = {
		123807,
		192,
		true
	},
	world_exit_tip = {
		123999,
		114,
		true
	},
	world_consume_carry_tips = {
		124113,
		100,
		true
	},
	world_boss_help_meta = {
		124213,
		2936,
		true
	},
	world_close = {
		127149,
		123,
		true
	},
	world_catsearch_success = {
		127272,
		133,
		true
	},
	world_catsearch_stop = {
		127405,
		133,
		true
	},
	world_catsearch_fleetcheck = {
		127538,
		185,
		true
	},
	world_catsearch_leavemap = {
		127723,
		189,
		true
	},
	world_catsearch_help_1 = {
		127912,
		283,
		true
	},
	world_catsearch_help_2 = {
		128195,
		104,
		true
	},
	world_catsearch_help_3 = {
		128299,
		278,
		true
	},
	world_catsearch_help_4 = {
		128577,
		98,
		true
	},
	world_catsearch_help_5 = {
		128675,
		147,
		true
	},
	world_catsearch_help_6 = {
		128822,
		128,
		true
	},
	world_level_prefix = {
		128950,
		93,
		true
	},
	world_map_level = {
		129043,
		218,
		true
	},
	world_movelimit_event_text = {
		129261,
		170,
		true
	},
	world_mapbuff_tip = {
		129431,
		120,
		true
	},
	world_sametask_tip = {
		129551,
		143,
		true
	},
	world_expedition_reward_display = {
		129694,
		107,
		true
	},
	world_expedition_reward_display2 = {
		129801,
		102,
		true
	},
	world_complete_item_tip = {
		129903,
		145,
		true
	},
	task_notfound_error = {
		130048,
		141,
		true
	},
	task_submitTask_error = {
		130189,
		104,
		true
	},
	task_submitTask_error_client = {
		130293,
		110,
		true
	},
	task_submitTask_error_notFinish = {
		130403,
		116,
		true
	},
	task_taskMediator_getItem = {
		130519,
		164,
		true
	},
	task_taskMediator_getResource = {
		130683,
		168,
		true
	},
	task_taskMediator_getEquip = {
		130851,
		165,
		true
	},
	task_target_chapter_in_progress = {
		131016,
		153,
		true
	},
	task_level_notenough = {
		131169,
		119,
		true
	},
	loading_tip_ShaderMgr = {
		131288,
		106,
		true
	},
	loading_tip_FontMgr = {
		131394,
		104,
		true
	},
	loading_tip_TipsMgr = {
		131498,
		107,
		true
	},
	loading_tip_MsgboxMgr = {
		131605,
		109,
		true
	},
	loading_tip_GuideMgr = {
		131714,
		108,
		true
	},
	loading_tip_PoolMgr = {
		131822,
		104,
		true
	},
	loading_tip_FModMgr = {
		131926,
		104,
		true
	},
	loading_tip_StoryMgr = {
		132030,
		105,
		true
	},
	energy_desc_happy = {
		132135,
		133,
		true
	},
	energy_desc_normal = {
		132268,
		127,
		true
	},
	energy_desc_tired = {
		132395,
		130,
		true
	},
	energy_desc_angry = {
		132525,
		130,
		true
	},
	create_player_success = {
		132655,
		103,
		true
	},
	login_newPlayerScene_invalideName = {
		132758,
		127,
		true
	},
	login_newPlayerScene_name_tooShort = {
		132885,
		110,
		true
	},
	login_newPlayerScene_name_existOtherChar = {
		132995,
		171,
		true
	},
	login_newPlayerScene_name_tooLong = {
		133166,
		109,
		true
	},
	equipment_updateGrade_tip = {
		133275,
		153,
		true
	},
	equipment_upgrade_ok = {
		133428,
		102,
		true
	},
	equipment_cant_upgrade = {
		133530,
		104,
		true
	},
	equipment_upgrade_erro = {
		133634,
		104,
		true
	},
	collection_nostar = {
		133738,
		99,
		true
	},
	collection_getResource_error = {
		133837,
		111,
		true
	},
	collection_hadAward = {
		133948,
		98,
		true
	},
	collection_lock = {
		134046,
		91,
		true
	},
	collection_fetched = {
		134137,
		100,
		true
	},
	buyProp_noResource_error = {
		134237,
		119,
		true
	},
	refresh_shopStreet_ok = {
		134356,
		103,
		true
	},
	refresh_shopStreet_erro = {
		134459,
		105,
		true
	},
	shopStreet_upgrade_done = {
		134564,
		108,
		true
	},
	shopStreet_refresh_max_count = {
		134672,
		125,
		true
	},
	buy_countLimit = {
		134797,
		105,
		true
	},
	buy_item_quest = {
		134902,
		102,
		true
	},
	refresh_shopStreet_question = {
		135004,
		237,
		true
	},
	quota_shop_title = {
		135241,
		106,
		true
	},
	quota_shop_description = {
		135347,
		176,
		true
	},
	quota_shop_owned = {
		135523,
		92,
		true
	},
	quota_shop_good_limit = {
		135615,
		97,
		true
	},
	quota_shop_limit_error = {
		135712,
		135,
		true
	},
	event_start_success = {
		135847,
		101,
		true
	},
	event_start_fail = {
		135948,
		98,
		true
	},
	event_finish_success = {
		136046,
		102,
		true
	},
	event_finish_fail = {
		136148,
		99,
		true
	},
	event_giveup_success = {
		136247,
		102,
		true
	},
	event_giveup_fail = {
		136349,
		99,
		true
	},
	event_flush_success = {
		136448,
		101,
		true
	},
	event_flush_fail = {
		136549,
		98,
		true
	},
	event_flush_not_enough = {
		136647,
		110,
		true
	},
	event_start = {
		136757,
		87,
		true
	},
	event_finish = {
		136844,
		88,
		true
	},
	event_giveup = {
		136932,
		88,
		true
	},
	event_minimus_ship_numbers = {
		137020,
		173,
		true
	},
	event_confirm_giveup = {
		137193,
		105,
		true
	},
	event_confirm_flush = {
		137298,
		135,
		true
	},
	event_fleet_busy = {
		137433,
		138,
		true
	},
	event_same_type_not_allowed = {
		137571,
		124,
		true
	},
	event_condition_ship_level = {
		137695,
		164,
		true
	},
	event_condition_ship_count = {
		137859,
		134,
		true
	},
	event_condition_ship_type = {
		137993,
		120,
		true
	},
	event_level_unreached = {
		138113,
		103,
		true
	},
	event_type_unreached = {
		138216,
		117,
		true
	},
	event_oil_consume = {
		138333,
		165,
		true
	},
	event_type_unlimit = {
		138498,
		94,
		true
	},
	dailyLevel_restCount_notEnough = {
		138592,
		127,
		true
	},
	dailyLevel_unopened = {
		138719,
		95,
		true
	},
	dailyLevel_opened = {
		138814,
		87,
		true
	},
	playerinfo_ship_is_already_flagship = {
		138901,
		123,
		true
	},
	playerinfo_mask_word = {
		139024,
		99,
		true
	},
	just_now = {
		139123,
		78,
		true
	},
	several_minutes_before = {
		139201,
		120,
		true
	},
	several_hours_before = {
		139321,
		118,
		true
	},
	several_days_before = {
		139439,
		114,
		true
	},
	long_time_offline = {
		139553,
		96,
		true
	},
	dont_send_message_frequently = {
		139649,
		116,
		true
	},
	no_activity = {
		139765,
		105,
		true
	},
	which_day = {
		139870,
		104,
		true
	},
	which_day_2 = {
		139974,
		83,
		true
	},
	invalidate_evaluation = {
		140057,
		115,
		true
	},
	chapter_no = {
		140172,
		105,
		true
	},
	reconnect_tip = {
		140277,
		127,
		true
	},
	like_ship_success = {
		140404,
		93,
		true
	},
	eva_ship_success = {
		140497,
		92,
		true
	},
	zan_ship_eva_success = {
		140589,
		96,
		true
	},
	zan_ship_eva_error_7 = {
		140685,
		115,
		true
	},
	eva_count_limit = {
		140800,
		112,
		true
	},
	attribute_durability = {
		140912,
		90,
		true
	},
	attribute_cannon = {
		141002,
		86,
		true
	},
	attribute_torpedo = {
		141088,
		87,
		true
	},
	attribute_antiaircraft = {
		141175,
		92,
		true
	},
	attribute_air = {
		141267,
		83,
		true
	},
	attribute_reload = {
		141350,
		86,
		true
	},
	attribute_cd = {
		141436,
		82,
		true
	},
	attribute_armor_type = {
		141518,
		96,
		true
	},
	attribute_armor = {
		141614,
		85,
		true
	},
	attribute_hit = {
		141699,
		83,
		true
	},
	attribute_speed = {
		141782,
		85,
		true
	},
	attribute_luck = {
		141867,
		84,
		true
	},
	attribute_dodge = {
		141951,
		85,
		true
	},
	attribute_expend = {
		142036,
		86,
		true
	},
	attribute_damage = {
		142122,
		86,
		true
	},
	attribute_healthy = {
		142208,
		87,
		true
	},
	attribute_speciality = {
		142295,
		90,
		true
	},
	attribute_range = {
		142385,
		85,
		true
	},
	attribute_angle = {
		142470,
		85,
		true
	},
	attribute_scatter = {
		142555,
		93,
		true
	},
	attribute_ammo = {
		142648,
		84,
		true
	},
	attribute_antisub = {
		142732,
		87,
		true
	},
	attribute_sonarRange = {
		142819,
		102,
		true
	},
	attribute_sonarInterval = {
		142921,
		99,
		true
	},
	attribute_oxy_max = {
		143020,
		87,
		true
	},
	attribute_dodge_limit = {
		143107,
		97,
		true
	},
	attribute_intimacy = {
		143204,
		91,
		true
	},
	attribute_max_distance_damage = {
		143295,
		105,
		true
	},
	attribute_anti_siren = {
		143400,
		108,
		true
	},
	attribute_add_new = {
		143508,
		85,
		true
	},
	skill = {
		143593,
		75,
		true
	},
	cd_normal = {
		143668,
		85,
		true
	},
	intensify = {
		143753,
		79,
		true
	},
	change = {
		143832,
		76,
		true
	},
	formation_switch_failed = {
		143908,
		114,
		true
	},
	formation_switch_success = {
		144022,
		102,
		true
	},
	formation_switch_tip = {
		144124,
		161,
		true
	},
	formation_reform_tip = {
		144285,
		133,
		true
	},
	formation_invalide = {
		144418,
		112,
		true
	},
	chapter_ap_not_enough = {
		144530,
		93,
		true
	},
	formation_forbid_when_in_chapter = {
		144623,
		139,
		true
	},
	military_forbid_when_in_chapter = {
		144762,
		138,
		true
	},
	confirm_app_exit = {
		144900,
		101,
		true
	},
	friend_info_page_tip = {
		145001,
		117,
		true
	},
	friend_search_page_tip = {
		145118,
		133,
		true
	},
	friend_request_page_tip = {
		145251,
		134,
		true
	},
	friend_id_copy_ok = {
		145385,
		93,
		true
	},
	friend_inpout_key_tip = {
		145478,
		103,
		true
	},
	remove_friend_tip = {
		145581,
		106,
		true
	},
	friend_request_msg_placeholder = {
		145687,
		112,
		true
	},
	friend_request_msg_title = {
		145799,
		115,
		true
	},
	friend_max_count = {
		145914,
		134,
		true
	},
	friend_add_ok = {
		146048,
		95,
		true
	},
	friend_max_count_1 = {
		146143,
		106,
		true
	},
	friend_no_request = {
		146249,
		99,
		true
	},
	reject_all_friend_ok = {
		146348,
		111,
		true
	},
	reject_friend_ok = {
		146459,
		104,
		true
	},
	friend_offline = {
		146563,
		93,
		true
	},
	friend_msg_forbid = {
		146656,
		141,
		true
	},
	dont_add_self = {
		146797,
		95,
		true
	},
	friend_already_add = {
		146892,
		112,
		true
	},
	friend_not_add = {
		147004,
		105,
		true
	},
	friend_send_msg_erro_tip = {
		147109,
		124,
		true
	},
	friend_send_msg_null_tip = {
		147233,
		109,
		true
	},
	friend_search_succeed = {
		147342,
		97,
		true
	},
	friend_request_msg_sent = {
		147439,
		105,
		true
	},
	friend_resume_ship_count = {
		147544,
		101,
		true
	},
	friend_resume_title_metal = {
		147645,
		102,
		true
	},
	friend_resume_collection_rate = {
		147747,
		103,
		true
	},
	friend_resume_attack_count = {
		147850,
		103,
		true
	},
	friend_resume_attack_win_rate = {
		147953,
		106,
		true
	},
	friend_resume_manoeuvre_count = {
		148059,
		106,
		true
	},
	friend_resume_manoeuvre_win_rate = {
		148165,
		109,
		true
	},
	friend_resume_fleet_gs = {
		148274,
		99,
		true
	},
	friend_event_count = {
		148373,
		95,
		true
	},
	firend_relieve_blacklist_ok = {
		148468,
		103,
		true
	},
	firend_relieve_blacklist_tip = {
		148571,
		131,
		true
	},
	word_shipNation_all = {
		148702,
		92,
		true
	},
	word_shipNation_baiYing = {
		148794,
		93,
		true
	},
	word_shipNation_huangJia = {
		148887,
		94,
		true
	},
	word_shipNation_chongYing = {
		148981,
		95,
		true
	},
	word_shipNation_tieXue = {
		149076,
		92,
		true
	},
	word_shipNation_dongHuang = {
		149168,
		95,
		true
	},
	word_shipNation_saDing = {
		149263,
		98,
		true
	},
	word_shipNation_beiLian = {
		149361,
		99,
		true
	},
	word_shipNation_other = {
		149460,
		91,
		true
	},
	word_shipNation_np = {
		149551,
		91,
		true
	},
	word_shipNation_ziyou = {
		149642,
		97,
		true
	},
	word_shipNation_weixi = {
		149739,
		97,
		true
	},
	word_shipNation_yuanwei = {
		149836,
		99,
		true
	},
	word_shipNation_bili = {
		149935,
		96,
		true
	},
	word_shipNation_um = {
		150031,
		94,
		true
	},
	word_shipNation_ai = {
		150125,
		90,
		true
	},
	word_shipNation_holo = {
		150215,
		92,
		true
	},
	word_shipNation_doa = {
		150307,
		98,
		true
	},
	word_shipNation_imas = {
		150405,
		96,
		true
	},
	word_shipNation_link = {
		150501,
		90,
		true
	},
	word_shipNation_ssss = {
		150591,
		88,
		true
	},
	word_shipNation_mot = {
		150679,
		89,
		true
	},
	word_shipNation_ryza = {
		150768,
		96,
		true
	},
	word_shipNation_meta_index = {
		150864,
		94,
		true
	},
	word_shipNation_senran = {
		150958,
		98,
		true
	},
	word_reset = {
		151056,
		80,
		true
	},
	word_asc = {
		151136,
		78,
		true
	},
	word_desc = {
		151214,
		79,
		true
	},
	word_own = {
		151293,
		81,
		true
	},
	word_own1 = {
		151374,
		82,
		true
	},
	oil_buy_limit_tip = {
		151456,
		155,
		true
	},
	friend_resume_title = {
		151611,
		89,
		true
	},
	friend_resume_data_title = {
		151700,
		94,
		true
	},
	batch_destroy = {
		151794,
		89,
		true
	},
	equipment_select_device_destroy_tip = {
		151883,
		127,
		true
	},
	equipment_select_device_destroy_bonus_tip = {
		152010,
		124,
		true
	},
	equipment_select_device_destroy_nobonus_tip = {
		152134,
		125,
		true
	},
	ship_equip_profiiency = {
		152259,
		95,
		true
	},
	no_open_system_tip = {
		152354,
		172,
		true
	},
	open_system_tip = {
		152526,
		99,
		true
	},
	charge_start_tip = {
		152625,
		109,
		true
	},
	charge_double_gem_tip = {
		152734,
		111,
		true
	},
	charge_month_card_lefttime_tip = {
		152845,
		120,
		true
	},
	charge_title = {
		152965,
		100,
		true
	},
	charge_extra_gem_tip = {
		153065,
		104,
		true
	},
	charge_month_card_title = {
		153169,
		145,
		true
	},
	charge_items_title = {
		153314,
		100,
		true
	},
	setting_interface_save_success = {
		153414,
		112,
		true
	},
	setting_interface_revert_check = {
		153526,
		143,
		true
	},
	setting_interface_cancel_check = {
		153669,
		127,
		true
	},
	event_special_update = {
		153796,
		110,
		true
	},
	no_notice_tip = {
		153906,
		104,
		true
	},
	energy_desc_1 = {
		154010,
		162,
		true
	},
	energy_desc_2 = {
		154172,
		137,
		true
	},
	energy_desc_3 = {
		154309,
		116,
		true
	},
	energy_desc_4 = {
		154425,
		163,
		true
	},
	intimacy_desc_1 = {
		154588,
		102,
		true
	},
	intimacy_desc_2 = {
		154690,
		108,
		true
	},
	intimacy_desc_3 = {
		154798,
		117,
		true
	},
	intimacy_desc_4 = {
		154915,
		117,
		true
	},
	intimacy_desc_5 = {
		155032,
		114,
		true
	},
	intimacy_desc_6 = {
		155146,
		117,
		true
	},
	intimacy_desc_7 = {
		155263,
		117,
		true
	},
	intimacy_desc_1_buff = {
		155380,
		108,
		true
	},
	intimacy_desc_2_buff = {
		155488,
		108,
		true
	},
	intimacy_desc_3_buff = {
		155596,
		153,
		true
	},
	intimacy_desc_4_buff = {
		155749,
		153,
		true
	},
	intimacy_desc_5_buff = {
		155902,
		153,
		true
	},
	intimacy_desc_6_buff = {
		156055,
		153,
		true
	},
	intimacy_desc_7_buff = {
		156208,
		154,
		true
	},
	intimacy_desc_propose = {
		156362,
		327,
		true
	},
	intimacy_desc_1_detail = {
		156689,
		161,
		true
	},
	intimacy_desc_2_detail = {
		156850,
		167,
		true
	},
	intimacy_desc_3_detail = {
		157017,
		206,
		true
	},
	intimacy_desc_4_detail = {
		157223,
		206,
		true
	},
	intimacy_desc_5_detail = {
		157429,
		203,
		true
	},
	intimacy_desc_6_detail = {
		157632,
		328,
		true
	},
	intimacy_desc_7_detail = {
		157960,
		328,
		true
	},
	intimacy_desc_ring = {
		158288,
		106,
		true
	},
	intimacy_desc_tiara = {
		158394,
		107,
		true
	},
	intimacy_desc_day = {
		158501,
		90,
		true
	},
	word_propose_cost_tip1 = {
		158591,
		306,
		true
	},
	word_propose_cost_tip2 = {
		158897,
		271,
		true
	},
	word_propose_tiara_tip = {
		159168,
		113,
		true
	},
	charge_title_getitem = {
		159281,
		111,
		true
	},
	charge_title_getitem_soon = {
		159392,
		113,
		true
	},
	charge_title_getitem_month = {
		159505,
		122,
		true
	},
	charge_limit_all = {
		159627,
		103,
		true
	},
	charge_limit_daily = {
		159730,
		108,
		true
	},
	charge_limit_weekly = {
		159838,
		109,
		true
	},
	charge_error = {
		159947,
		91,
		true
	},
	charge_success = {
		160038,
		90,
		true
	},
	charge_level_limit = {
		160128,
		97,
		true
	},
	ship_drop_desc_default = {
		160225,
		104,
		true
	},
	charge_limit_lv = {
		160329,
		90,
		true
	},
	charge_time_out = {
		160419,
		137,
		true
	},
	help_shipinfo_equip = {
		160556,
		628,
		true
	},
	help_shipinfo_detail = {
		161184,
		679,
		true
	},
	help_shipinfo_intensify = {
		161863,
		632,
		true
	},
	help_shipinfo_upgrate = {
		162495,
		630,
		true
	},
	help_shipinfo_maxlevel = {
		163125,
		631,
		true
	},
	help_shipinfo_actnpc = {
		163756,
		987,
		true
	},
	help_backyard = {
		164743,
		622,
		true
	},
	help_shipinfo_fashion = {
		165365,
		183,
		true
	},
	help_shipinfo_attr = {
		165548,
		3460,
		true
	},
	help_equipment = {
		169008,
		1982,
		true
	},
	help_equipment_skin = {
		170990,
		427,
		true
	},
	help_daily_task = {
		171417,
		2812,
		true
	},
	help_build = {
		174229,
		300,
		true
	},
	help_build_1 = {
		174529,
		302,
		true
	},
	help_build_2 = {
		174831,
		302,
		true
	},
	help_build_4 = {
		175133,
		752,
		true
	},
	help_build_5 = {
		175885,
		681,
		true
	},
	help_shipinfo_hunting = {
		176566,
		711,
		true
	},
	shop_extendship_success = {
		177277,
		105,
		true
	},
	shop_extendequip_success = {
		177382,
		112,
		true
	},
	shop_spweapon_success = {
		177494,
		115,
		true
	},
	naval_academy_res_desc_cateen = {
		177609,
		228,
		true
	},
	naval_academy_res_desc_shop = {
		177837,
		220,
		true
	},
	naval_academy_res_desc_class = {
		178057,
		272,
		true
	},
	number_1 = {
		178329,
		75,
		true
	},
	number_2 = {
		178404,
		75,
		true
	},
	number_3 = {
		178479,
		75,
		true
	},
	number_4 = {
		178554,
		75,
		true
	},
	number_5 = {
		178629,
		75,
		true
	},
	number_6 = {
		178704,
		75,
		true
	},
	number_7 = {
		178779,
		75,
		true
	},
	number_8 = {
		178854,
		75,
		true
	},
	number_9 = {
		178929,
		75,
		true
	},
	number_10 = {
		179004,
		76,
		true
	},
	military_shop_no_open_tip = {
		179080,
		189,
		true
	},
	switch_to_shop_tip_1 = {
		179269,
		133,
		true
	},
	switch_to_shop_tip_2 = {
		179402,
		122,
		true
	},
	switch_to_shop_tip_3 = {
		179524,
		116,
		true
	},
	switch_to_shop_tip_noPos = {
		179640,
		127,
		true
	},
	text_noPos_clear = {
		179767,
		86,
		true
	},
	text_noPos_buy = {
		179853,
		84,
		true
	},
	text_noPos_intensify = {
		179937,
		90,
		true
	},
	switch_to_shop_tip_noDockyard = {
		180027,
		133,
		true
	},
	commission_no_open = {
		180160,
		91,
		true
	},
	commission_open_tip = {
		180251,
		103,
		true
	},
	commission_idle = {
		180354,
		91,
		true
	},
	commission_urgency = {
		180445,
		95,
		true
	},
	commission_normal = {
		180540,
		94,
		true
	},
	commission_get_award = {
		180634,
		104,
		true
	},
	activity_build_end_tip = {
		180738,
		119,
		true
	},
	event_over_time_expired = {
		180857,
		102,
		true
	},
	mail_sender_default = {
		180959,
		92,
		true
	},
	exchangecode_title = {
		181051,
		97,
		true
	},
	exchangecode_use_placeholder = {
		181148,
		116,
		true
	},
	exchangecode_use_ok = {
		181264,
		150,
		true
	},
	exchangecode_use_error = {
		181414,
		101,
		true
	},
	exchangecode_use_error_3 = {
		181515,
		106,
		true
	},
	exchangecode_use_error_6 = {
		181621,
		106,
		true
	},
	exchangecode_use_error_7 = {
		181727,
		115,
		true
	},
	exchangecode_use_error_8 = {
		181842,
		106,
		true
	},
	exchangecode_use_error_9 = {
		181948,
		106,
		true
	},
	exchangecode_use_error_16 = {
		182054,
		104,
		true
	},
	exchangecode_use_error_20 = {
		182158,
		107,
		true
	},
	text_noRes_tip = {
		182265,
		90,
		true
	},
	text_noRes_info_tip = {
		182355,
		110,
		true
	},
	text_noRes_info_tip_link = {
		182465,
		91,
		true
	},
	text_noRes_info_tip2 = {
		182556,
		138,
		true
	},
	text_shop_noRes_tip = {
		182694,
		109,
		true
	},
	text_shop_enoughRes_tip = {
		182803,
		133,
		true
	},
	text_buy_fashion_tip = {
		182936,
		166,
		true
	},
	equip_part_title = {
		183102,
		86,
		true
	},
	equip_part_main_title = {
		183188,
		99,
		true
	},
	equip_part_sub_title = {
		183287,
		98,
		true
	},
	equipment_upgrade_overlimit = {
		183385,
		112,
		true
	},
	err_name_existOtherChar = {
		183497,
		123,
		true
	},
	help_battle_rule = {
		183620,
		511,
		true
	},
	help_battle_warspite = {
		184131,
		300,
		true
	},
	help_battle_defense = {
		184431,
		588,
		true
	},
	backyard_theme_set_tip = {
		185019,
		145,
		true
	},
	backyard_theme_save_tip = {
		185164,
		159,
		true
	},
	backyard_theme_defaultname = {
		185323,
		105,
		true
	},
	backyard_rename_success = {
		185428,
		105,
		true
	},
	ship_set_skin_success = {
		185533,
		103,
		true
	},
	ship_set_skin_error = {
		185636,
		102,
		true
	},
	equip_part_tip = {
		185738,
		103,
		true
	},
	help_battle_auto = {
		185841,
		359,
		true
	},
	gold_buy_tip = {
		186200,
		249,
		true
	},
	oil_buy_tip = {
		186449,
		386,
		true
	},
	text_iknow = {
		186835,
		86,
		true
	},
	help_oil_buy_limit = {
		186921,
		322,
		true
	},
	text_nofood_yes = {
		187243,
		85,
		true
	},
	text_nofood_no = {
		187328,
		84,
		true
	},
	tip_add_task = {
		187412,
		96,
		true
	},
	collection_award_ship = {
		187508,
		123,
		true
	},
	guild_create_sucess = {
		187631,
		104,
		true
	},
	guild_create_error = {
		187735,
		103,
		true
	},
	guild_create_error_noname = {
		187838,
		116,
		true
	},
	guild_create_error_nofaction = {
		187954,
		119,
		true
	},
	guild_create_error_nopolicy = {
		188073,
		118,
		true
	},
	guild_create_error_nomanifesto = {
		188191,
		121,
		true
	},
	guild_create_error_nomoney = {
		188312,
		105,
		true
	},
	guild_tip_dissolve = {
		188417,
		311,
		true
	},
	guild_tip_quit = {
		188728,
		108,
		true
	},
	guild_create_confirm = {
		188836,
		171,
		true
	},
	guild_apply_erro = {
		189007,
		101,
		true
	},
	guild_dissolve_erro = {
		189108,
		104,
		true
	},
	guild_fire_erro = {
		189212,
		106,
		true
	},
	guild_impeach_erro = {
		189318,
		109,
		true
	},
	guild_quit_erro = {
		189427,
		100,
		true
	},
	guild_accept_erro = {
		189527,
		99,
		true
	},
	guild_reject_erro = {
		189626,
		99,
		true
	},
	guild_modify_erro = {
		189725,
		99,
		true
	},
	guild_setduty_erro = {
		189824,
		100,
		true
	},
	guild_apply_sucess = {
		189924,
		94,
		true
	},
	guild_no_exist = {
		190018,
		96,
		true
	},
	guild_dissolve_sucess = {
		190114,
		106,
		true
	},
	guild_commder_in_impeach_time = {
		190220,
		114,
		true
	},
	guild_impeach_sucess = {
		190334,
		96,
		true
	},
	guild_quit_sucess = {
		190430,
		102,
		true
	},
	guild_member_max_count = {
		190532,
		122,
		true
	},
	guild_new_member_join = {
		190654,
		106,
		true
	},
	guild_player_in_cd_time = {
		190760,
		138,
		true
	},
	guild_player_already_join = {
		190898,
		113,
		true
	},
	guild_rejecet_apply_sucess = {
		191011,
		108,
		true
	},
	guild_should_input_keyword = {
		191119,
		111,
		true
	},
	guild_search_sucess = {
		191230,
		95,
		true
	},
	guild_list_refresh_sucess = {
		191325,
		116,
		true
	},
	guild_info_update = {
		191441,
		108,
		true
	},
	guild_duty_id_is_null = {
		191549,
		103,
		true
	},
	guild_player_is_null = {
		191652,
		102,
		true
	},
	guild_duty_commder_max_count = {
		191754,
		119,
		true
	},
	guild_set_duty_sucess = {
		191873,
		103,
		true
	},
	guild_policy_power = {
		191976,
		94,
		true
	},
	guild_policy_relax = {
		192070,
		94,
		true
	},
	guild_faction_blhx = {
		192164,
		94,
		true
	},
	guild_faction_cszz = {
		192258,
		94,
		true
	},
	guild_faction_unknown = {
		192352,
		89,
		true
	},
	guild_faction_meta = {
		192441,
		86,
		true
	},
	guild_word_commder = {
		192527,
		88,
		true
	},
	guild_word_deputy_commder = {
		192615,
		98,
		true
	},
	guild_word_picked = {
		192713,
		87,
		true
	},
	guild_word_ordinary = {
		192800,
		89,
		true
	},
	guild_word_home = {
		192889,
		85,
		true
	},
	guild_word_member = {
		192974,
		87,
		true
	},
	guild_word_apply = {
		193061,
		86,
		true
	},
	guild_faction_change_tip = {
		193147,
		215,
		true
	},
	guild_msg_is_null = {
		193362,
		102,
		true
	},
	guild_log_new_guild_join = {
		193464,
		196,
		true
	},
	guild_log_duty_change = {
		193660,
		186,
		true
	},
	guild_log_quit = {
		193846,
		175,
		true
	},
	guild_log_fire = {
		194021,
		184,
		true
	},
	guild_leave_cd_time = {
		194205,
		152,
		true
	},
	guild_sort_time = {
		194357,
		85,
		true
	},
	guild_sort_level = {
		194442,
		86,
		true
	},
	guild_sort_duty = {
		194528,
		85,
		true
	},
	guild_fire_tip = {
		194613,
		102,
		true
	},
	guild_impeach_tip = {
		194715,
		102,
		true
	},
	guild_set_duty_title = {
		194817,
		104,
		true
	},
	guild_search_list_max_count = {
		194921,
		114,
		true
	},
	guild_sort_all = {
		195035,
		84,
		true
	},
	guild_sort_blhx = {
		195119,
		91,
		true
	},
	guild_sort_cszz = {
		195210,
		91,
		true
	},
	guild_sort_power = {
		195301,
		92,
		true
	},
	guild_sort_relax = {
		195393,
		92,
		true
	},
	guild_join_cd = {
		195485,
		131,
		true
	},
	guild_name_invaild = {
		195616,
		103,
		true
	},
	guild_apply_full = {
		195719,
		113,
		true
	},
	guild_member_full = {
		195832,
		108,
		true
	},
	guild_fire_duty_limit = {
		195940,
		124,
		true
	},
	guild_fire_succeed = {
		196064,
		94,
		true
	},
	guild_duty_tip_1 = {
		196158,
		115,
		true
	},
	guild_duty_tip_2 = {
		196273,
		115,
		true
	},
	battle_repair_special_tip = {
		196388,
		152,
		true
	},
	battle_repair_normal_name = {
		196540,
		110,
		true
	},
	battle_repair_special_name = {
		196650,
		111,
		true
	},
	oil_max_tip_title = {
		196761,
		105,
		true
	},
	gold_max_tip_title = {
		196866,
		106,
		true
	},
	expbook_max_tip_title = {
		196972,
		121,
		true
	},
	resource_max_tip_shop = {
		197093,
		103,
		true
	},
	resource_max_tip_event = {
		197196,
		110,
		true
	},
	resource_max_tip_battle = {
		197306,
		145,
		true
	},
	resource_max_tip_collect = {
		197451,
		112,
		true
	},
	resource_max_tip_mail = {
		197563,
		103,
		true
	},
	resource_max_tip_eventstart = {
		197666,
		109,
		true
	},
	resource_max_tip_destroy = {
		197775,
		106,
		true
	},
	resource_max_tip_retire = {
		197881,
		99,
		true
	},
	resource_max_tip_retire_1 = {
		197980,
		147,
		true
	},
	new_version_tip = {
		198127,
		179,
		true
	},
	guild_request_msg_title = {
		198306,
		105,
		true
	},
	guild_request_msg_placeholder = {
		198411,
		117,
		true
	},
	ship_upgrade_unequip_tip = {
		198528,
		224,
		true
	},
	destination_can_not_reach = {
		198752,
		110,
		true
	},
	destination_can_not_reach_safety = {
		198862,
		123,
		true
	},
	destination_not_in_range = {
		198985,
		115,
		true
	},
	level_ammo_enough = {
		199100,
		114,
		true
	},
	level_ammo_supply = {
		199214,
		146,
		true
	},
	level_ammo_empty = {
		199360,
		144,
		true
	},
	level_ammo_supply_p1 = {
		199504,
		120,
		true
	},
	level_flare_supply = {
		199624,
		136,
		true
	},
	chat_level_not_enough = {
		199760,
		133,
		true
	},
	chat_msg_inform = {
		199893,
		127,
		true
	},
	chat_msg_ban = {
		200020,
		144,
		true
	},
	month_card_set_ratio_success = {
		200164,
		116,
		true
	},
	month_card_set_ratio_not_change = {
		200280,
		119,
		true
	},
	charge_ship_bag_max = {
		200399,
		113,
		true
	},
	charge_equip_bag_max = {
		200512,
		114,
		true
	},
	login_wait_tip = {
		200626,
		143,
		true
	},
	ship_equip_exchange_tip = {
		200769,
		190,
		true
	},
	ship_rename_success = {
		200959,
		104,
		true
	},
	formation_chapter_lock = {
		201063,
		117,
		true
	},
	elite_disable_unsatisfied = {
		201180,
		128,
		true
	},
	elite_disable_ship_escort = {
		201308,
		132,
		true
	},
	elite_disable_formation_unsatisfied = {
		201440,
		136,
		true
	},
	elite_disable_no_fleet = {
		201576,
		119,
		true
	},
	elite_disable_property_unsatisfied = {
		201695,
		135,
		true
	},
	elite_disable_unusable = {
		201830,
		122,
		true
	},
	elite_warp_to_latest_map = {
		201952,
		118,
		true
	},
	elite_fleet_confirm = {
		202070,
		178,
		true
	},
	elite_condition_level = {
		202248,
		97,
		true
	},
	elite_condition_durability = {
		202345,
		102,
		true
	},
	elite_condition_cannon = {
		202447,
		98,
		true
	},
	elite_condition_torpedo = {
		202545,
		99,
		true
	},
	elite_condition_antiaircraft = {
		202644,
		104,
		true
	},
	elite_condition_air = {
		202748,
		95,
		true
	},
	elite_condition_antisub = {
		202843,
		99,
		true
	},
	elite_condition_dodge = {
		202942,
		97,
		true
	},
	elite_condition_reload = {
		203039,
		98,
		true
	},
	elite_condition_fleet_totle_level = {
		203137,
		139,
		true
	},
	common_compare_larger = {
		203276,
		91,
		true
	},
	common_compare_equal = {
		203367,
		90,
		true
	},
	common_compare_smaller = {
		203457,
		92,
		true
	},
	common_compare_not_less_than = {
		203549,
		104,
		true
	},
	common_compare_not_more_than = {
		203653,
		104,
		true
	},
	level_scene_formation_active_already = {
		203757,
		124,
		true
	},
	level_scene_not_enough = {
		203881,
		119,
		true
	},
	level_scene_full_hp = {
		204000,
		128,
		true
	},
	level_click_to_move = {
		204128,
		122,
		true
	},
	common_hardmode = {
		204250,
		85,
		true
	},
	common_elite_no_quota = {
		204335,
		127,
		true
	},
	common_food = {
		204462,
		81,
		true
	},
	common_no_limit = {
		204543,
		85,
		true
	},
	common_proficiency = {
		204628,
		88,
		true
	},
	backyard_food_remind = {
		204716,
		167,
		true
	},
	backyard_food_count = {
		204883,
		105,
		true
	},
	sham_ship_level_limit = {
		204988,
		120,
		true
	},
	sham_count_limit = {
		205108,
		122,
		true
	},
	sham_count_reset = {
		205230,
		139,
		true
	},
	sham_team_limit = {
		205369,
		134,
		true
	},
	sham_formation_invalid = {
		205503,
		138,
		true
	},
	sham_my_assist_ship_level_limit = {
		205641,
		131,
		true
	},
	sham_reset_confirm = {
		205772,
		131,
		true
	},
	sham_battle_help_tip = {
		205903,
		1071,
		true
	},
	sham_reset_err_limit = {
		206974,
		111,
		true
	},
	sham_ship_equip_forbid_1 = {
		207085,
		185,
		true
	},
	sham_ship_equip_forbid_2 = {
		207270,
		164,
		true
	},
	sham_enter_error_friend_ship_expired = {
		207434,
		149,
		true
	},
	sham_can_not_change_ship = {
		207583,
		131,
		true
	},
	sham_friend_ship_tip = {
		207714,
		145,
		true
	},
	inform_sueecss = {
		207859,
		90,
		true
	},
	inform_failed = {
		207949,
		89,
		true
	},
	inform_player = {
		208038,
		94,
		true
	},
	inform_select_type = {
		208132,
		103,
		true
	},
	inform_chat_msg = {
		208235,
		97,
		true
	},
	inform_sueecss_tip = {
		208332,
		184,
		true
	},
	ship_remould_max_level = {
		208516,
		110,
		true
	},
	ship_remould_material_ship_no_enough = {
		208626,
		115,
		true
	},
	ship_remould_material_ship_on_exist = {
		208741,
		117,
		true
	},
	ship_remould_material_unlock_skill = {
		208858,
		139,
		true
	},
	ship_remould_prev_lock = {
		208997,
		101,
		true
	},
	ship_remould_need_level = {
		209098,
		102,
		true
	},
	ship_remould_need_star = {
		209200,
		101,
		true
	},
	ship_remould_finished = {
		209301,
		94,
		true
	},
	ship_remould_no_item = {
		209395,
		96,
		true
	},
	ship_remould_no_gold = {
		209491,
		96,
		true
	},
	ship_remould_no_material = {
		209587,
		100,
		true
	},
	ship_remould_selecte_exceed = {
		209687,
		119,
		true
	},
	ship_remould_sueecss = {
		209806,
		96,
		true
	},
	ship_remould_warning_102174 = {
		209902,
		188,
		true
	},
	ship_remould_warning_102284 = {
		210090,
		220,
		true
	},
	ship_remould_warning_102304 = {
		210310,
		369,
		true
	},
	ship_remould_warning_105234 = {
		210679,
		226,
		true
	},
	ship_remould_warning_107984 = {
		210905,
		213,
		true
	},
	ship_remould_warning_201514 = {
		211118,
		232,
		true
	},
	ship_remould_warning_203114 = {
		211350,
		337,
		true
	},
	ship_remould_warning_203124 = {
		211687,
		337,
		true
	},
	ship_remould_warning_205124 = {
		212024,
		185,
		true
	},
	ship_remould_warning_205154 = {
		212209,
		220,
		true
	},
	ship_remould_warning_206134 = {
		212429,
		298,
		true
	},
	ship_remould_warning_301534 = {
		212727,
		220,
		true
	},
	ship_remould_warning_301874 = {
		212947,
		534,
		true
	},
	ship_remould_warning_310014 = {
		213481,
		431,
		true
	},
	ship_remould_warning_310024 = {
		213912,
		431,
		true
	},
	ship_remould_warning_310034 = {
		214343,
		431,
		true
	},
	ship_remould_warning_310044 = {
		214774,
		431,
		true
	},
	ship_remould_warning_303154 = {
		215205,
		564,
		true
	},
	ship_remould_warning_402134 = {
		215769,
		228,
		true
	},
	ship_remould_warning_702124 = {
		215997,
		468,
		true
	},
	ship_remould_warning_520014 = {
		216465,
		246,
		true
	},
	ship_remould_warning_521014 = {
		216711,
		246,
		true
	},
	ship_remould_warning_520034 = {
		216957,
		246,
		true
	},
	ship_remould_warning_521034 = {
		217203,
		246,
		true
	},
	ship_remould_warning_502114 = {
		217449,
		222,
		true
	},
	word_soundfiles_download_title = {
		217671,
		109,
		true
	},
	word_soundfiles_download = {
		217780,
		100,
		true
	},
	word_soundfiles_checking_title = {
		217880,
		106,
		true
	},
	word_soundfiles_checking = {
		217986,
		97,
		true
	},
	word_soundfiles_checkend_title = {
		218083,
		115,
		true
	},
	word_soundfiles_checkend = {
		218198,
		100,
		true
	},
	word_soundfiles_noneedupdate = {
		218298,
		104,
		true
	},
	word_soundfiles_checkfailed = {
		218402,
		112,
		true
	},
	word_soundfiles_retry = {
		218514,
		97,
		true
	},
	word_soundfiles_update = {
		218611,
		98,
		true
	},
	word_soundfiles_update_end_title = {
		218709,
		117,
		true
	},
	word_soundfiles_update_end = {
		218826,
		102,
		true
	},
	word_soundfiles_update_failed = {
		218928,
		114,
		true
	},
	word_soundfiles_update_retry = {
		219042,
		104,
		true
	},
	word_live2dfiles_download_title = {
		219146,
		116,
		true
	},
	word_live2dfiles_download = {
		219262,
		101,
		true
	},
	word_live2dfiles_checking_title = {
		219363,
		107,
		true
	},
	word_live2dfiles_checking = {
		219470,
		98,
		true
	},
	word_live2dfiles_checkend_title = {
		219568,
		122,
		true
	},
	word_live2dfiles_checkend = {
		219690,
		101,
		true
	},
	word_live2dfiles_noneedupdate = {
		219791,
		105,
		true
	},
	word_live2dfiles_checkfailed = {
		219896,
		119,
		true
	},
	word_live2dfiles_retry = {
		220015,
		98,
		true
	},
	word_live2dfiles_update = {
		220113,
		99,
		true
	},
	word_live2dfiles_update_end_title = {
		220212,
		124,
		true
	},
	word_live2dfiles_update_end = {
		220336,
		103,
		true
	},
	word_live2dfiles_update_failed = {
		220439,
		121,
		true
	},
	word_live2dfiles_update_retry = {
		220560,
		105,
		true
	},
	word_live2dfiles_main_update_tip = {
		220665,
		164,
		true
	},
	achieve_propose_tip = {
		220829,
		106,
		true
	},
	mingshi_get_tip = {
		220935,
		124,
		true
	},
	mingshi_task_tip_1 = {
		221059,
		212,
		true
	},
	mingshi_task_tip_2 = {
		221271,
		212,
		true
	},
	mingshi_task_tip_3 = {
		221483,
		205,
		true
	},
	mingshi_task_tip_4 = {
		221688,
		212,
		true
	},
	mingshi_task_tip_5 = {
		221900,
		205,
		true
	},
	mingshi_task_tip_6 = {
		222105,
		205,
		true
	},
	mingshi_task_tip_7 = {
		222310,
		212,
		true
	},
	mingshi_task_tip_8 = {
		222522,
		209,
		true
	},
	mingshi_task_tip_9 = {
		222731,
		205,
		true
	},
	mingshi_task_tip_10 = {
		222936,
		213,
		true
	},
	mingshi_task_tip_11 = {
		223149,
		209,
		true
	},
	word_propose_changename_title = {
		223358,
		168,
		true
	},
	word_propose_changename_tip1 = {
		223526,
		140,
		true
	},
	word_propose_changename_tip2 = {
		223666,
		116,
		true
	},
	word_propose_ring_tip = {
		223782,
		118,
		true
	},
	word_rename_time_tip = {
		223900,
		135,
		true
	},
	word_rename_switch_tip = {
		224035,
		148,
		true
	},
	word_ssr = {
		224183,
		81,
		true
	},
	word_sr = {
		224264,
		77,
		true
	},
	word_r = {
		224341,
		76,
		true
	},
	ship_renameShip_error = {
		224417,
		106,
		true
	},
	ship_renameShip_error_4 = {
		224523,
		99,
		true
	},
	ship_renameShip_error_2011 = {
		224622,
		102,
		true
	},
	ship_proposeShip_error = {
		224724,
		98,
		true
	},
	ship_proposeShip_error_1 = {
		224822,
		100,
		true
	},
	word_rename_time_warning = {
		224922,
		210,
		true
	},
	word_propose_cost_tip = {
		225132,
		354,
		true
	},
	word_propose_switch_tip = {
		225486,
		99,
		true
	},
	evaluate_too_loog = {
		225585,
		93,
		true
	},
	evaluate_ban_word = {
		225678,
		99,
		true
	},
	activity_level_easy_tip = {
		225777,
		192,
		true
	},
	activity_level_difficulty_tip = {
		225969,
		207,
		true
	},
	activity_level_limit_tip = {
		226176,
		189,
		true
	},
	activity_level_inwarime_tip = {
		226365,
		177,
		true
	},
	activity_level_pass_easy_tip = {
		226542,
		163,
		true
	},
	activity_level_is_closed = {
		226705,
		112,
		true
	},
	activity_switch_tip = {
		226817,
		255,
		true
	},
	reduce_sp3_pass_count = {
		227072,
		109,
		true
	},
	qiuqiu_count = {
		227181,
		87,
		true
	},
	qiuqiu_total_count = {
		227268,
		93,
		true
	},
	npcfriendly_count = {
		227361,
		99,
		true
	},
	npcfriendly_total_count = {
		227460,
		105,
		true
	},
	longxiang_count = {
		227565,
		96,
		true
	},
	longxiang_total_count = {
		227661,
		102,
		true
	},
	pt_count = {
		227763,
		77,
		true
	},
	pt_total_count = {
		227840,
		89,
		true
	},
	remould_ship_ok = {
		227929,
		91,
		true
	},
	remould_ship_count_more = {
		228020,
		115,
		true
	},
	word_should_input = {
		228135,
		102,
		true
	},
	simulation_advantage_counting = {
		228237,
		128,
		true
	},
	simulation_disadvantage_counting = {
		228365,
		132,
		true
	},
	simulation_enhancing = {
		228497,
		148,
		true
	},
	simulation_enhanced = {
		228645,
		110,
		true
	},
	word_skill_desc_get = {
		228755,
		97,
		true
	},
	word_skill_desc_learn = {
		228852,
		89,
		true
	},
	chapter_tip_aovid_succeed = {
		228941,
		101,
		true
	},
	chapter_tip_aovid_failed = {
		229042,
		100,
		true
	},
	chapter_tip_change = {
		229142,
		99,
		true
	},
	chapter_tip_use = {
		229241,
		96,
		true
	},
	chapter_tip_with_npc = {
		229337,
		262,
		true
	},
	chapter_tip_bp_ammo = {
		229599,
		131,
		true
	},
	build_ship_tip = {
		229730,
		212,
		true
	},
	auto_battle_limit_tip = {
		229942,
		115,
		true
	},
	build_ship_quickly_buy_stone = {
		230057,
		199,
		true
	},
	build_ship_quickly_buy_tool = {
		230256,
		214,
		true
	},
	ship_profile_voice_locked = {
		230470,
		110,
		true
	},
	ship_profile_skin_locked = {
		230580,
		103,
		true
	},
	ship_profile_words = {
		230683,
		94,
		true
	},
	ship_profile_action_words = {
		230777,
		107,
		true
	},
	ship_profile_label_common = {
		230884,
		95,
		true
	},
	ship_profile_label_diff = {
		230979,
		93,
		true
	},
	level_fleet_lease_one_ship = {
		231072,
		126,
		true
	},
	level_fleet_not_enough = {
		231198,
		122,
		true
	},
	level_fleet_outof_limit = {
		231320,
		117,
		true
	},
	vote_success = {
		231437,
		88,
		true
	},
	vote_not_enough = {
		231525,
		100,
		true
	},
	vote_love_not_enough = {
		231625,
		108,
		true
	},
	vote_love_limit = {
		231733,
		134,
		true
	},
	vote_love_confirm = {
		231867,
		142,
		true
	},
	vote_primary_rule = {
		232009,
		1126,
		true
	},
	vote_final_title1 = {
		233135,
		93,
		true
	},
	vote_final_rule1 = {
		233228,
		427,
		true
	},
	vote_final_title2 = {
		233655,
		93,
		true
	},
	vote_final_rule2 = {
		233748,
		290,
		true
	},
	vote_vote_time = {
		234038,
		98,
		true
	},
	vote_vote_count = {
		234136,
		84,
		true
	},
	vote_vote_group = {
		234220,
		84,
		true
	},
	vote_rank_refresh_time = {
		234304,
		117,
		true
	},
	vote_rank_in_current_server = {
		234421,
		122,
		true
	},
	words_auto_battle_label = {
		234543,
		120,
		true
	},
	words_show_ship_name_label = {
		234663,
		117,
		true
	},
	words_rare_ship_vibrate = {
		234780,
		105,
		true
	},
	words_display_ship_get_effect = {
		234885,
		117,
		true
	},
	words_show_touch_effect = {
		235002,
		105,
		true
	},
	words_bg_fit_mode = {
		235107,
		111,
		true
	},
	words_battle_hide_bg = {
		235218,
		114,
		true
	},
	words_battle_expose_line = {
		235332,
		118,
		true
	},
	words_autoFight_battery_savemode = {
		235450,
		120,
		true
	},
	words_autoFight_battery_savemode_des = {
		235570,
		181,
		true
	},
	words_autoFIght_down_frame = {
		235751,
		108,
		true
	},
	words_autoFIght_down_frame_des = {
		235859,
		173,
		true
	},
	words_autoFight_tips = {
		236032,
		120,
		true
	},
	words_autoFight_right = {
		236152,
		158,
		true
	},
	activity_puzzle_get1 = {
		236310,
		136,
		true
	},
	activity_puzzle_get2 = {
		236446,
		138,
		true
	},
	activity_puzzle_get3 = {
		236584,
		138,
		true
	},
	activity_puzzle_get4 = {
		236722,
		138,
		true
	},
	activity_puzzle_get5 = {
		236860,
		138,
		true
	},
	activity_puzzle_get6 = {
		236998,
		138,
		true
	},
	activity_puzzle_get7 = {
		237136,
		138,
		true
	},
	activity_puzzle_get8 = {
		237274,
		138,
		true
	},
	activity_puzzle_get9 = {
		237412,
		138,
		true
	},
	activity_puzzle_get10 = {
		237550,
		137,
		true
	},
	activity_puzzle_get11 = {
		237687,
		137,
		true
	},
	activity_puzzle_get12 = {
		237824,
		137,
		true
	},
	activity_puzzle_get13 = {
		237961,
		137,
		true
	},
	activity_puzzle_get14 = {
		238098,
		137,
		true
	},
	activity_puzzle_get15 = {
		238235,
		137,
		true
	},
	exchange_item_success = {
		238372,
		97,
		true
	},
	give_up_cloth_change = {
		238469,
		117,
		true
	},
	err_cloth_change_noship = {
		238586,
		98,
		true
	},
	new_skin_no_choose = {
		238684,
		140,
		true
	},
	sure_resume_volume = {
		238824,
		124,
		true
	},
	course_class_not_ready = {
		238948,
		119,
		true
	},
	course_student_max_level = {
		239067,
		134,
		true
	},
	course_stop_confirm = {
		239201,
		125,
		true
	},
	course_class_help = {
		239326,
		1321,
		true
	},
	course_class_name = {
		240647,
		104,
		true
	},
	course_proficiency_not_enough = {
		240751,
		108,
		true
	},
	course_state_rest = {
		240859,
		93,
		true
	},
	course_state_lession = {
		240952,
		99,
		true
	},
	course_energy_not_enough = {
		241051,
		144,
		true
	},
	course_proficiency_tip = {
		241195,
		318,
		true
	},
	course_sunday_tip = {
		241513,
		136,
		true
	},
	course_exit_confirm = {
		241649,
		138,
		true
	},
	course_learning = {
		241787,
		94,
		true
	},
	time_remaining_tip = {
		241881,
		95,
		true
	},
	propose_intimacy_tip = {
		241976,
		112,
		true
	},
	no_found_record_equipment = {
		242088,
		180,
		true
	},
	sec_floor_limit_tip = {
		242268,
		125,
		true
	},
	guild_shop_flash_success = {
		242393,
		100,
		true
	},
	destroy_high_rarity_tip = {
		242493,
		122,
		true
	},
	destroy_high_level_tip = {
		242615,
		124,
		true
	},
	destroy_eliteequipment_tip = {
		242739,
		119,
		true
	},
	destroy_high_intensify_tip = {
		242858,
		127,
		true
	},
	destroy_inHardFormation_tip = {
		242985,
		130,
		true
	},
	destroy_equip_rarity_tip = {
		243115,
		135,
		true
	},
	ship_quick_change_noequip = {
		243250,
		113,
		true
	},
	ship_quick_change_nofreeequip = {
		243363,
		120,
		true
	},
	word_nowenergy = {
		243483,
		93,
		true
	},
	word_energy_recov_speed = {
		243576,
		99,
		true
	},
	destroy_eliteship_tip = {
		243675,
		117,
		true
	},
	err_resloveequip_nochoice = {
		243792,
		113,
		true
	},
	take_nothing = {
		243905,
		94,
		true
	},
	take_all_mail = {
		243999,
		164,
		true
	},
	buy_furniture_overtime = {
		244163,
		119,
		true
	},
	data_erro = {
		244282,
		88,
		true
	},
	login_failed = {
		244370,
		88,
		true
	},
	["not yet completed"] = {
		244458,
		93,
		true
	},
	escort_less_count_to_combat = {
		244551,
		131,
		true
	},
	ten_even_draw = {
		244682,
		88,
		true
	},
	ten_even_draw_confirm = {
		244770,
		111,
		true
	},
	level_risk_level_desc = {
		244881,
		90,
		true
	},
	level_risk_level_mitigation_rate = {
		244971,
		229,
		true
	},
	level_diffcult_chapter_state_safety = {
		245200,
		221,
		true
	},
	level_chapter_state_high_risk = {
		245421,
		135,
		true
	},
	level_chapter_state_risk = {
		245556,
		130,
		true
	},
	level_chapter_state_low_risk = {
		245686,
		134,
		true
	},
	level_chapter_state_safety = {
		245820,
		132,
		true
	},
	open_skill_class_success = {
		245952,
		112,
		true
	},
	backyard_sort_tag_default = {
		246064,
		95,
		true
	},
	backyard_sort_tag_price = {
		246159,
		93,
		true
	},
	backyard_sort_tag_comfortable = {
		246252,
		102,
		true
	},
	backyard_sort_tag_size = {
		246354,
		92,
		true
	},
	backyard_filter_tag_other = {
		246446,
		95,
		true
	},
	word_status_inFight = {
		246541,
		92,
		true
	},
	word_status_inPVP = {
		246633,
		90,
		true
	},
	word_status_inEvent = {
		246723,
		92,
		true
	},
	word_status_inEventFinished = {
		246815,
		100,
		true
	},
	word_status_inTactics = {
		246915,
		94,
		true
	},
	word_status_inClass = {
		247009,
		92,
		true
	},
	word_status_rest = {
		247101,
		89,
		true
	},
	word_status_train = {
		247190,
		90,
		true
	},
	word_status_world = {
		247280,
		96,
		true
	},
	word_status_inHardFormation = {
		247376,
		106,
		true
	},
	word_status_series_enemy = {
		247482,
		103,
		true
	},
	challenge_rule = {
		247585,
		741,
		true
	},
	challenge_exit_warning = {
		248326,
		199,
		true
	},
	challenge_fleet_type_fail = {
		248525,
		132,
		true
	},
	challenge_current_level = {
		248657,
		110,
		true
	},
	challenge_current_score = {
		248767,
		104,
		true
	},
	challenge_total_score = {
		248871,
		102,
		true
	},
	challenge_current_progress = {
		248973,
		110,
		true
	},
	challenge_count_unlimit = {
		249083,
		112,
		true
	},
	challenge_no_fleet = {
		249195,
		115,
		true
	},
	equipment_skin_unload = {
		249310,
		118,
		true
	},
	equipment_skin_no_old_ship = {
		249428,
		105,
		true
	},
	equipment_skin_no_old_skinorequipment = {
		249533,
		132,
		true
	},
	equipment_skin_no_new_ship = {
		249665,
		105,
		true
	},
	equipment_skin_no_new_equipment = {
		249770,
		113,
		true
	},
	equipment_skin_count_noenough = {
		249883,
		111,
		true
	},
	equipment_skin_replace_done = {
		249994,
		109,
		true
	},
	equipment_skin_unload_failed = {
		250103,
		116,
		true
	},
	equipment_skin_unmatch_equipment = {
		250219,
		158,
		true
	},
	equipment_skin_no_equipment_tip = {
		250377,
		141,
		true
	},
	activity_pool_awards_empty = {
		250518,
		117,
		true
	},
	activity_switch_award_pool_failed = {
		250635,
		161,
		true
	},
	help_activitypool_1 = {
		250796,
		480,
		true
	},
	help_activitypool_2 = {
		251276,
		443,
		true
	},
	help_activitypool_3 = {
		251719,
		477,
		true
	},
	shop_street_activity_tip = {
		252196,
		195,
		true
	},
	shop_street_Equipment_skin_box_help = {
		252391,
		173,
		true
	},
	commander_material_noenough = {
		252564,
		103,
		true
	},
	battle_result_boss_destruct = {
		252667,
		120,
		true
	},
	battle_preCombatLayer_boss_destruct = {
		252787,
		128,
		true
	},
	destory_important_equipment_tip = {
		252915,
		204,
		true
	},
	destory_important_equipment_input_erro = {
		253119,
		120,
		true
	},
	activity_hit_monster_nocount = {
		253239,
		104,
		true
	},
	activity_hit_monster_death = {
		253343,
		111,
		true
	},
	activity_hit_monster_help = {
		253454,
		104,
		true
	},
	activity_hit_monster_erro = {
		253558,
		101,
		true
	},
	activity_xiaotiane_progress = {
		253659,
		104,
		true
	},
	activity_hit_monster_reset_tip = {
		253763,
		165,
		true
	},
	answer_help_tip = {
		253928,
		182,
		true
	},
	answer_answer_role = {
		254110,
		172,
		true
	},
	answer_exit_tip = {
		254282,
		112,
		true
	},
	equip_skin_detail_tip = {
		254394,
		115,
		true
	},
	emoji_type_0 = {
		254509,
		82,
		true
	},
	emoji_type_1 = {
		254591,
		82,
		true
	},
	emoji_type_2 = {
		254673,
		82,
		true
	},
	emoji_type_3 = {
		254755,
		82,
		true
	},
	emoji_type_4 = {
		254837,
		85,
		true
	},
	card_pairs_help_tip = {
		254922,
		840,
		true
	},
	card_pairs_tips = {
		255762,
		167,
		true
	},
	["card_battle_card details_deck"] = {
		255929,
		109,
		true
	},
	["card_battle_card details_hand"] = {
		256038,
		111,
		true
	},
	["card_battle_card details"] = {
		256149,
		111,
		true
	},
	["card_battle_card details_switchto_deck"] = {
		256260,
		124,
		true
	},
	["card_battle_card details_switchto_hand"] = {
		256384,
		121,
		true
	},
	card_battle_card_empty_en = {
		256505,
		106,
		true
	},
	card_battle_card_empty_ch = {
		256611,
		122,
		true
	},
	card_puzzel_goal_ch = {
		256733,
		95,
		true
	},
	card_puzzel_goal_en = {
		256828,
		89,
		true
	},
	card_puzzle_deck = {
		256917,
		89,
		true
	},
	upgrade_to_next_maxlevel_failed = {
		257006,
		151,
		true
	},
	upgrade_to_next_maxlevel_tip = {
		257157,
		157,
		true
	},
	upgrade_to_next_maxlevel_succeed = {
		257314,
		164,
		true
	},
	extra_chapter_socre_tip = {
		257478,
		186,
		true
	},
	extra_chapter_record_updated = {
		257664,
		104,
		true
	},
	extra_chapter_record_not_updated = {
		257768,
		111,
		true
	},
	extra_chapter_locked_tip = {
		257879,
		133,
		true
	},
	extra_chapter_locked_tip_1 = {
		258012,
		135,
		true
	},
	player_name_change_time_lv_tip = {
		258147,
		162,
		true
	},
	player_name_change_time_limit_tip = {
		258309,
		147,
		true
	},
	player_name_change_windows_tip = {
		258456,
		200,
		true
	},
	player_name_change_warning = {
		258656,
		292,
		true
	},
	player_name_change_success = {
		258948,
		117,
		true
	},
	player_name_change_failed = {
		259065,
		116,
		true
	},
	same_player_name_tip = {
		259181,
		120,
		true
	},
	task_is_not_existence = {
		259301,
		105,
		true
	},
	cannot_build_multiple_printblue = {
		259406,
		274,
		true
	},
	printblue_build_success = {
		259680,
		99,
		true
	},
	printblue_build_erro = {
		259779,
		96,
		true
	},
	blueprint_mod_success = {
		259875,
		97,
		true
	},
	blueprint_mod_erro = {
		259972,
		94,
		true
	},
	technology_refresh_sucess = {
		260066,
		113,
		true
	},
	technology_refresh_erro = {
		260179,
		111,
		true
	},
	change_technology_refresh_sucess = {
		260290,
		120,
		true
	},
	change_technology_refresh_erro = {
		260410,
		118,
		true
	},
	technology_start_up = {
		260528,
		95,
		true
	},
	technology_start_erro = {
		260623,
		97,
		true
	},
	technology_stop_success = {
		260720,
		105,
		true
	},
	technology_stop_erro = {
		260825,
		102,
		true
	},
	technology_finish_success = {
		260927,
		107,
		true
	},
	technology_finish_erro = {
		261034,
		104,
		true
	},
	blueprint_stop_success = {
		261138,
		104,
		true
	},
	blueprint_stop_erro = {
		261242,
		101,
		true
	},
	blueprint_destory_tip = {
		261343,
		109,
		true
	},
	blueprint_task_update_tip = {
		261452,
		175,
		true
	},
	blueprint_mod_addition_lock = {
		261627,
		105,
		true
	},
	blueprint_mod_word_unlock = {
		261732,
		104,
		true
	},
	blueprint_mod_skin_unlock = {
		261836,
		104,
		true
	},
	blueprint_build_consume = {
		261940,
		126,
		true
	},
	blueprint_stop_tip = {
		262066,
		124,
		true
	},
	technology_canot_refresh = {
		262190,
		134,
		true
	},
	technology_refresh_tip = {
		262324,
		114,
		true
	},
	technology_is_actived = {
		262438,
		115,
		true
	},
	technology_stop_tip = {
		262553,
		125,
		true
	},
	technology_help_text = {
		262678,
		2683,
		true
	},
	blueprint_build_time_tip = {
		265361,
		171,
		true
	},
	blueprint_cannot_build_tip = {
		265532,
		143,
		true
	},
	technology_task_none_tip = {
		265675,
		93,
		true
	},
	technology_task_build_tip = {
		265768,
		126,
		true
	},
	blueprint_commit_tip = {
		265894,
		146,
		true
	},
	buleprint_need_level_tip = {
		266040,
		108,
		true
	},
	blueprint_max_level_tip = {
		266148,
		105,
		true
	},
	ship_profile_voice_locked_intimacy = {
		266253,
		124,
		true
	},
	ship_profile_voice_locked_propose = {
		266377,
		112,
		true
	},
	ship_profile_voice_locked_propose_imas = {
		266489,
		117,
		true
	},
	ship_profile_voice_locked_design = {
		266606,
		128,
		true
	},
	ship_profile_voice_locked_meta = {
		266734,
		136,
		true
	},
	help_technolog0 = {
		266870,
		350,
		true
	},
	help_technolog = {
		267220,
		513,
		true
	},
	hide_chat_warning = {
		267733,
		157,
		true
	},
	show_chat_warning = {
		267890,
		154,
		true
	},
	help_shipblueprintui = {
		268044,
		2123,
		true
	},
	help_shipblueprintui_luck = {
		270167,
		704,
		true
	},
	anniversary_task_title_1 = {
		270871,
		176,
		true
	},
	anniversary_task_title_2 = {
		271047,
		167,
		true
	},
	anniversary_task_title_3 = {
		271214,
		176,
		true
	},
	anniversary_task_title_4 = {
		271390,
		164,
		true
	},
	anniversary_task_title_5 = {
		271554,
		173,
		true
	},
	anniversary_task_title_6 = {
		271727,
		173,
		true
	},
	anniversary_task_title_7 = {
		271900,
		167,
		true
	},
	anniversary_task_title_8 = {
		272067,
		170,
		true
	},
	anniversary_task_title_9 = {
		272237,
		179,
		true
	},
	anniversary_task_title_10 = {
		272416,
		168,
		true
	},
	anniversary_task_title_11 = {
		272584,
		171,
		true
	},
	anniversary_task_title_12 = {
		272755,
		171,
		true
	},
	anniversary_task_title_13 = {
		272926,
		171,
		true
	},
	anniversary_task_title_14 = {
		273097,
		174,
		true
	},
	charge_scene_buy_confirm = {
		273271,
		167,
		true
	},
	charge_scene_buy_confirm_gold = {
		273438,
		172,
		true
	},
	charge_scene_batch_buy_tip = {
		273610,
		197,
		true
	},
	help_level_ui = {
		273807,
		968,
		true
	},
	guild_modify_info_tip = {
		274775,
		182,
		true
	},
	ai_change_1 = {
		274957,
		99,
		true
	},
	ai_change_2 = {
		275056,
		105,
		true
	},
	activity_shop_lable = {
		275161,
		130,
		true
	},
	word_bilibili = {
		275291,
		90,
		true
	},
	levelScene_tracking_error_pre = {
		275381,
		134,
		true
	},
	ship_limit_notice = {
		275515,
		112,
		true
	},
	idle = {
		275627,
		74,
		true
	},
	main_1 = {
		275701,
		82,
		true
	},
	main_2 = {
		275783,
		82,
		true
	},
	main_3 = {
		275865,
		82,
		true
	},
	complete = {
		275947,
		85,
		true
	},
	login = {
		276032,
		75,
		true
	},
	home = {
		276107,
		74,
		true
	},
	mail = {
		276181,
		81,
		true
	},
	mission = {
		276262,
		84,
		true
	},
	mission_complete = {
		276346,
		93,
		true
	},
	wedding = {
		276439,
		77,
		true
	},
	touch_head = {
		276516,
		80,
		true
	},
	touch_body = {
		276596,
		80,
		true
	},
	touch_special = {
		276676,
		84,
		true
	},
	gold = {
		276760,
		74,
		true
	},
	oil = {
		276834,
		73,
		true
	},
	diamond = {
		276907,
		77,
		true
	},
	word_photo_mode = {
		276984,
		85,
		true
	},
	word_video_mode = {
		277069,
		85,
		true
	},
	word_save_ok = {
		277154,
		109,
		true
	},
	word_save_video = {
		277263,
		119,
		true
	},
	reflux_help_tip = {
		277382,
		1079,
		true
	},
	reflux_pt_not_enough = {
		278461,
		102,
		true
	},
	reflux_word_1 = {
		278563,
		92,
		true
	},
	reflux_word_2 = {
		278655,
		86,
		true
	},
	ship_hunting_level_tips = {
		278741,
		178,
		true
	},
	acquisitionmode_is_not_open = {
		278919,
		121,
		true
	},
	collect_chapter_is_activation = {
		279040,
		140,
		true
	},
	levelScene_chapter_is_activation = {
		279180,
		183,
		true
	},
	resource_verify_warn = {
		279363,
		236,
		true
	},
	resource_verify_fail = {
		279599,
		177,
		true
	},
	resource_verify_success = {
		279776,
		111,
		true
	},
	resource_clear_all = {
		279887,
		151,
		true
	},
	acl_oil_count = {
		280038,
		92,
		true
	},
	acl_oil_total_count = {
		280130,
		104,
		true
	},
	word_take_video_tip = {
		280234,
		145,
		true
	},
	word_snapshot_share_title = {
		280379,
		116,
		true
	},
	word_snapshot_share_agreement = {
		280495,
		506,
		true
	},
	skin_remain_time = {
		281001,
		98,
		true
	},
	word_museum_1 = {
		281099,
		128,
		true
	},
	word_museum_help = {
		281227,
		748,
		true
	},
	goldship_help_tip = {
		281975,
		912,
		true
	},
	metalgearsub_help_tip = {
		282887,
		1497,
		true
	},
	acl_gold_count = {
		284384,
		93,
		true
	},
	acl_gold_total_count = {
		284477,
		105,
		true
	},
	discount_time = {
		284582,
		142,
		true
	},
	commander_talent_not_exist = {
		284724,
		105,
		true
	},
	commander_replace_talent_not_exist = {
		284829,
		119,
		true
	},
	commander_talent_learned = {
		284948,
		108,
		true
	},
	commander_talent_learn_erro = {
		285056,
		114,
		true
	},
	commander_not_exist = {
		285170,
		104,
		true
	},
	commander_fleet_not_exist = {
		285274,
		107,
		true
	},
	commander_fleet_pos_not_exist = {
		285381,
		120,
		true
	},
	commander_equip_to_fleet_erro = {
		285501,
		116,
		true
	},
	commander_acquire_erro = {
		285617,
		109,
		true
	},
	commander_lock_erro = {
		285726,
		97,
		true
	},
	commander_reset_talent_time_no_rearch = {
		285823,
		119,
		true
	},
	commander_reset_talent_is_not_need = {
		285942,
		113,
		true
	},
	commander_reset_talent_success = {
		286055,
		112,
		true
	},
	commander_reset_talent_erro = {
		286167,
		111,
		true
	},
	commander_can_not_be_upgrade = {
		286278,
		116,
		true
	},
	commander_anyone_is_in_fleet = {
		286394,
		125,
		true
	},
	commander_is_in_fleet = {
		286519,
		109,
		true
	},
	commander_play_erro = {
		286628,
		97,
		true
	},
	ship_equip_same_group_equipment = {
		286725,
		125,
		true
	},
	summary_page_un_rearch = {
		286850,
		95,
		true
	},
	player_summary_from = {
		286945,
		104,
		true
	},
	player_summary_data = {
		287049,
		95,
		true
	},
	commander_exp_overflow_tip = {
		287144,
		148,
		true
	},
	commander_reset_talent_tip = {
		287292,
		115,
		true
	},
	commander_reset_talent = {
		287407,
		98,
		true
	},
	commander_select_min_cnt = {
		287505,
		114,
		true
	},
	commander_select_max = {
		287619,
		102,
		true
	},
	commander_lock_done = {
		287721,
		98,
		true
	},
	commander_unlock_done = {
		287819,
		100,
		true
	},
	commander_get_1 = {
		287919,
		121,
		true
	},
	commander_get = {
		288040,
		117,
		true
	},
	commander_build_done = {
		288157,
		108,
		true
	},
	commander_build_erro = {
		288265,
		110,
		true
	},
	commander_get_skills_done = {
		288375,
		113,
		true
	},
	collection_way_is_unopen = {
		288488,
		118,
		true
	},
	commander_can_not_select_same_group = {
		288606,
		126,
		true
	},
	commander_capcity_is_max = {
		288732,
		100,
		true
	},
	commander_reserve_count_is_max = {
		288832,
		118,
		true
	},
	commander_build_pool_tip = {
		288950,
		147,
		true
	},
	commander_select_matiral_erro = {
		289097,
		160,
		true
	},
	commander_material_is_rarity = {
		289257,
		147,
		true
	},
	commander_material_is_maxLevel = {
		289404,
		170,
		true
	},
	charge_commander_bag_max = {
		289574,
		149,
		true
	},
	shop_extendcommander_success = {
		289723,
		116,
		true
	},
	commander_skill_point_noengough = {
		289839,
		110,
		true
	},
	buildship_new_tip = {
		289949,
		157,
		true
	},
	buildship_heavy_tip = {
		290106,
		113,
		true
	},
	buildship_light_tip = {
		290219,
		113,
		true
	},
	buildship_special_tip = {
		290332,
		142,
		true
	},
	open_skill_pos = {
		290474,
		189,
		true
	},
	open_skill_pos_discount = {
		290663,
		222,
		true
	},
	event_recommend_fail = {
		290885,
		108,
		true
	},
	newplayer_help_tip = {
		290993,
		991,
		true
	},
	newplayer_notice_1 = {
		291984,
		121,
		true
	},
	newplayer_notice_2 = {
		292105,
		121,
		true
	},
	newplayer_notice_3 = {
		292226,
		121,
		true
	},
	newplayer_notice_4 = {
		292347,
		115,
		true
	},
	newplayer_notice_5 = {
		292462,
		115,
		true
	},
	newplayer_notice_6 = {
		292577,
		160,
		true
	},
	newplayer_notice_7 = {
		292737,
		118,
		true
	},
	newplayer_notice_8 = {
		292855,
		155,
		true
	},
	tec_catchup_1 = {
		293010,
		83,
		true
	},
	tec_catchup_2 = {
		293093,
		83,
		true
	},
	tec_catchup_3 = {
		293176,
		83,
		true
	},
	tec_catchup_4 = {
		293259,
		83,
		true
	},
	tec_notice = {
		293342,
		121,
		true
	},
	tec_notice_not_open_tip = {
		293463,
		139,
		true
	},
	apply_permission_camera_tip1 = {
		293602,
		146,
		true
	},
	apply_permission_camera_tip2 = {
		293748,
		160,
		true
	},
	apply_permission_camera_tip3 = {
		293908,
		155,
		true
	},
	apply_permission_record_audio_tip1 = {
		294063,
		158,
		true
	},
	apply_permission_record_audio_tip2 = {
		294221,
		166,
		true
	},
	apply_permission_record_audio_tip3 = {
		294387,
		161,
		true
	},
	nine_choose_one = {
		294548,
		210,
		true
	},
	help_commander_info = {
		294758,
		810,
		true
	},
	help_commander_play = {
		295568,
		810,
		true
	},
	help_commander_ability = {
		296378,
		813,
		true
	},
	story_skip_confirm = {
		297191,
		199,
		true
	},
	commander_ability_replace_warning = {
		297390,
		140,
		true
	},
	help_command_room = {
		297530,
		808,
		true
	},
	commander_build_rate_tip = {
		298338,
		145,
		true
	},
	help_activity_bossbattle = {
		298483,
		1040,
		true
	},
	commander_is_in_fleet_already = {
		299523,
		130,
		true
	},
	commander_material_is_in_fleet_tip = {
		299653,
		144,
		true
	},
	commander_main_pos = {
		299797,
		91,
		true
	},
	commander_assistant_pos = {
		299888,
		96,
		true
	},
	comander_repalce_tip = {
		299984,
		152,
		true
	},
	commander_lock_tip = {
		300136,
		133,
		true
	},
	commander_is_in_battle = {
		300269,
		116,
		true
	},
	commander_rename_warning = {
		300385,
		164,
		true
	},
	commander_rename_coldtime_tip = {
		300549,
		125,
		true
	},
	commander_rename_success_tip = {
		300674,
		104,
		true
	},
	amercian_notice_1 = {
		300778,
		184,
		true
	},
	amercian_notice_2 = {
		300962,
		151,
		true
	},
	amercian_notice_3 = {
		301113,
		116,
		true
	},
	amercian_notice_4 = {
		301229,
		96,
		true
	},
	amercian_notice_5 = {
		301325,
		99,
		true
	},
	amercian_notice_6 = {
		301424,
		187,
		true
	},
	ranking_word_1 = {
		301611,
		90,
		true
	},
	ranking_word_2 = {
		301701,
		87,
		true
	},
	ranking_word_3 = {
		301788,
		87,
		true
	},
	ranking_word_4 = {
		301875,
		90,
		true
	},
	ranking_word_5 = {
		301965,
		84,
		true
	},
	ranking_word_6 = {
		302049,
		84,
		true
	},
	ranking_word_7 = {
		302133,
		90,
		true
	},
	ranking_word_8 = {
		302223,
		84,
		true
	},
	ranking_word_9 = {
		302307,
		84,
		true
	},
	ranking_word_10 = {
		302391,
		88,
		true
	},
	spece_illegal_tip = {
		302479,
		99,
		true
	},
	utaware_warmup_notice = {
		302578,
		902,
		true
	},
	utaware_formal_notice = {
		303480,
		648,
		true
	},
	npc_learn_skill_tip = {
		304128,
		184,
		true
	},
	npc_upgrade_max_level = {
		304312,
		131,
		true
	},
	npc_propse_tip = {
		304443,
		117,
		true
	},
	npc_strength_tip = {
		304560,
		185,
		true
	},
	npc_breakout_tip = {
		304745,
		185,
		true
	},
	word_chuansong = {
		304930,
		90,
		true
	},
	npc_evaluation_tip = {
		305020,
		127,
		true
	},
	map_event_skip = {
		305147,
		108,
		true
	},
	map_event_stop_tip = {
		305255,
		157,
		true
	},
	map_event_stop_battle_tip = {
		305412,
		164,
		true
	},
	map_event_stop_battle_tip_2 = {
		305576,
		166,
		true
	},
	map_event_stop_story_tip = {
		305742,
		160,
		true
	},
	map_event_save_nekone = {
		305902,
		126,
		true
	},
	map_event_save_rurutie = {
		306028,
		134,
		true
	},
	map_event_memory_collected = {
		306162,
		143,
		true
	},
	map_event_save_kizuna = {
		306305,
		126,
		true
	},
	five_choose_one = {
		306431,
		213,
		true
	},
	ship_preference_common = {
		306644,
		133,
		true
	},
	draw_big_luck_1 = {
		306777,
		118,
		true
	},
	draw_big_luck_2 = {
		306895,
		131,
		true
	},
	draw_big_luck_3 = {
		307026,
		115,
		true
	},
	draw_medium_luck_1 = {
		307141,
		112,
		true
	},
	draw_medium_luck_2 = {
		307253,
		118,
		true
	},
	draw_medium_luck_3 = {
		307371,
		115,
		true
	},
	draw_little_luck_1 = {
		307486,
		124,
		true
	},
	draw_little_luck_2 = {
		307610,
		121,
		true
	},
	draw_little_luck_3 = {
		307731,
		127,
		true
	},
	ship_preference_non = {
		307858,
		126,
		true
	},
	school_title_dajiangtang = {
		307984,
		97,
		true
	},
	school_title_zhihuimiao = {
		308081,
		96,
		true
	},
	school_title_shitang = {
		308177,
		96,
		true
	},
	school_title_xiaomaibu = {
		308273,
		95,
		true
	},
	school_title_shangdian = {
		308368,
		98,
		true
	},
	school_title_xueyuan = {
		308466,
		96,
		true
	},
	school_title_shoucang = {
		308562,
		94,
		true
	},
	school_title_xiaoyouxiting = {
		308656,
		99,
		true
	},
	tag_level_fighting = {
		308755,
		91,
		true
	},
	tag_level_oni = {
		308846,
		89,
		true
	},
	tag_level_bomb = {
		308935,
		90,
		true
	},
	ui_word_levelui2_inevent = {
		309025,
		97,
		true
	},
	exit_backyard_exp_display = {
		309122,
		120,
		true
	},
	help_monopoly = {
		309242,
		1416,
		true
	},
	md5_error = {
		310658,
		127,
		true
	},
	world_boss_help = {
		310785,
		4333,
		true
	},
	world_boss_tip = {
		315118,
		159,
		true
	},
	world_boss_award_limit = {
		315277,
		157,
		true
	},
	backyard_is_loading = {
		315434,
		113,
		true
	},
	levelScene_loop_help_tip = {
		315547,
		2330,
		true
	},
	no_airspace_competition = {
		317877,
		102,
		true
	},
	air_supremacy_value = {
		317979,
		92,
		true
	},
	read_the_user_agreement = {
		318071,
		114,
		true
	},
	award_max_warning = {
		318185,
		171,
		true
	},
	sub_item_warning = {
		318356,
		105,
		true
	},
	select_award_warning = {
		318461,
		105,
		true
	},
	no_item_selected_tip = {
		318566,
		112,
		true
	},
	backyard_traning_tip = {
		318678,
		154,
		true
	},
	backyard_rest_tip = {
		318832,
		111,
		true
	},
	backyard_class_tip = {
		318943,
		118,
		true
	},
	medal_notice_1 = {
		319061,
		96,
		true
	},
	medal_notice_2 = {
		319157,
		87,
		true
	},
	medal_help_tip = {
		319244,
		1420,
		true
	},
	trophy_achieved = {
		320664,
		94,
		true
	},
	text_shop = {
		320758,
		80,
		true
	},
	text_confirm = {
		320838,
		83,
		true
	},
	text_cancel = {
		320921,
		82,
		true
	},
	text_cancel_fight = {
		321003,
		93,
		true
	},
	text_goon_fight = {
		321096,
		91,
		true
	},
	text_exit = {
		321187,
		80,
		true
	},
	text_clear = {
		321267,
		81,
		true
	},
	text_apply = {
		321348,
		81,
		true
	},
	text_buy = {
		321429,
		79,
		true
	},
	text_forward = {
		321508,
		88,
		true
	},
	text_prepage = {
		321596,
		85,
		true
	},
	text_nextpage = {
		321681,
		86,
		true
	},
	text_exchange = {
		321767,
		84,
		true
	},
	text_retreat = {
		321851,
		83,
		true
	},
	text_goto = {
		321934,
		80,
		true
	},
	level_scene_title_word_1 = {
		322014,
		98,
		true
	},
	level_scene_title_word_2 = {
		322112,
		107,
		true
	},
	level_scene_title_word_3 = {
		322219,
		98,
		true
	},
	level_scene_title_word_4 = {
		322317,
		95,
		true
	},
	level_scene_title_word_5 = {
		322412,
		95,
		true
	},
	ambush_display_0 = {
		322507,
		86,
		true
	},
	ambush_display_1 = {
		322593,
		86,
		true
	},
	ambush_display_2 = {
		322679,
		86,
		true
	},
	ambush_display_3 = {
		322765,
		83,
		true
	},
	ambush_display_4 = {
		322848,
		83,
		true
	},
	ambush_display_5 = {
		322931,
		86,
		true
	},
	ambush_display_6 = {
		323017,
		86,
		true
	},
	black_white_grid_notice = {
		323103,
		1309,
		true
	},
	black_white_grid_reset = {
		324412,
		99,
		true
	},
	black_white_grid_switch_tip = {
		324511,
		127,
		true
	},
	no_way_to_escape = {
		324638,
		92,
		true
	},
	word_attr_ac = {
		324730,
		82,
		true
	},
	help_battle_ac = {
		324812,
		1439,
		true
	},
	help_attribute_dodge_limit = {
		326251,
		312,
		true
	},
	refuse_friend = {
		326563,
		96,
		true
	},
	refuse_and_add_into_bl = {
		326659,
		110,
		true
	},
	tech_simulate_closed = {
		326769,
		117,
		true
	},
	tech_simulate_quit = {
		326886,
		119,
		true
	},
	technology_uplevel_error_no_res = {
		327005,
		253,
		true
	},
	help_technologytree = {
		327258,
		1850,
		true
	},
	tech_change_version_mark = {
		329108,
		100,
		true
	},
	technology_uplevel_error_studying = {
		329208,
		174,
		true
	},
	fate_attr_word = {
		329382,
		114,
		true
	},
	fate_phase_word = {
		329496,
		94,
		true
	},
	blueprint_simulation_confirm = {
		329590,
		254,
		true
	},
	blueprint_simulation_confirm_19901 = {
		329844,
		420,
		true
	},
	blueprint_simulation_confirm_19902 = {
		330264,
		401,
		true
	},
	blueprint_simulation_confirm_39903 = {
		330665,
		384,
		true
	},
	blueprint_simulation_confirm_39904 = {
		331049,
		393,
		true
	},
	blueprint_simulation_confirm_49902 = {
		331442,
		388,
		true
	},
	blueprint_simulation_confirm_99901 = {
		331830,
		385,
		true
	},
	blueprint_simulation_confirm_29903 = {
		332215,
		381,
		true
	},
	blueprint_simulation_confirm_29904 = {
		332596,
		385,
		true
	},
	blueprint_simulation_confirm_49903 = {
		332981,
		379,
		true
	},
	blueprint_simulation_confirm_49904 = {
		333360,
		385,
		true
	},
	blueprint_simulation_confirm_89902 = {
		333745,
		390,
		true
	},
	blueprint_simulation_confirm_19903 = {
		334135,
		387,
		true
	},
	blueprint_simulation_confirm_39905 = {
		334522,
		386,
		true
	},
	blueprint_simulation_confirm_49905 = {
		334908,
		400,
		true
	},
	blueprint_simulation_confirm_49906 = {
		335308,
		357,
		true
	},
	blueprint_simulation_confirm_69901 = {
		335665,
		410,
		true
	},
	blueprint_simulation_confirm_29905 = {
		336075,
		389,
		true
	},
	blueprint_simulation_confirm_49907 = {
		336464,
		396,
		true
	},
	blueprint_simulation_confirm_59901 = {
		336860,
		380,
		true
	},
	blueprint_simulation_confirm_79901 = {
		337240,
		366,
		true
	},
	blueprint_simulation_confirm_89903 = {
		337606,
		410,
		true
	},
	blueprint_simulation_confirm_19904 = {
		338016,
		396,
		true
	},
	blueprint_simulation_confirm_39906 = {
		338412,
		386,
		true
	},
	blueprint_simulation_confirm_49908 = {
		338798,
		404,
		true
	},
	blueprint_simulation_confirm_49909 = {
		339202,
		401,
		true
	},
	blueprint_simulation_confirm_99902 = {
		339603,
		399,
		true
	},
	electrotherapy_wanning = {
		340002,
		107,
		true
	},
	siren_chase_warning = {
		340109,
		104,
		true
	},
	memorybook_get_award_tip = {
		340213,
		161,
		true
	},
	memorybook_notice = {
		340374,
		687,
		true
	},
	word_votes = {
		341061,
		86,
		true
	},
	number_0 = {
		341147,
		75,
		true
	},
	intimacy_desc_propose_vertical = {
		341222,
		304,
		true
	},
	without_selected_ship = {
		341526,
		115,
		true
	},
	index_all = {
		341641,
		79,
		true
	},
	index_fleetfront = {
		341720,
		92,
		true
	},
	index_fleetrear = {
		341812,
		91,
		true
	},
	index_shipType_quZhu = {
		341903,
		90,
		true
	},
	index_shipType_qinXun = {
		341993,
		91,
		true
	},
	index_shipType_zhongXun = {
		342084,
		93,
		true
	},
	index_shipType_zhanLie = {
		342177,
		92,
		true
	},
	index_shipType_hangMu = {
		342269,
		91,
		true
	},
	index_shipType_weiXiu = {
		342360,
		91,
		true
	},
	index_shipType_qianTing = {
		342451,
		93,
		true
	},
	index_other = {
		342544,
		81,
		true
	},
	index_rare2 = {
		342625,
		81,
		true
	},
	index_rare3 = {
		342706,
		81,
		true
	},
	index_rare4 = {
		342787,
		81,
		true
	},
	index_rare5 = {
		342868,
		84,
		true
	},
	index_rare6 = {
		342952,
		87,
		true
	},
	warning_mail_max_1 = {
		343039,
		154,
		true
	},
	warning_mail_max_2 = {
		343193,
		131,
		true
	},
	return_award_bind_success = {
		343324,
		101,
		true
	},
	return_award_bind_erro = {
		343425,
		100,
		true
	},
	rename_commander_erro = {
		343525,
		99,
		true
	},
	change_display_medal_success = {
		343624,
		116,
		true
	},
	limit_skin_time_day = {
		343740,
		101,
		true
	},
	limit_skin_time_day_min = {
		343841,
		116,
		true
	},
	limit_skin_time_min = {
		343957,
		104,
		true
	},
	limit_skin_time_overtime = {
		344061,
		97,
		true
	},
	limit_skin_time_before_maintenance = {
		344158,
		117,
		true
	},
	award_window_pt_title = {
		344275,
		96,
		true
	},
	return_have_participated_in_act = {
		344371,
		119,
		true
	},
	input_returner_code = {
		344490,
		98,
		true
	},
	dress_up_success = {
		344588,
		92,
		true
	},
	already_have_the_skin = {
		344680,
		106,
		true
	},
	exchange_limit_skin_tip = {
		344786,
		149,
		true
	},
	returner_help = {
		344935,
		1631,
		true
	},
	attire_time_stamp = {
		346566,
		102,
		true
	},
	pray_build_select_ship_instruction = {
		346668,
		122,
		true
	},
	warning_pray_build_pool = {
		346790,
		181,
		true
	},
	error_pray_select_ship_max = {
		346971,
		108,
		true
	},
	tip_pray_build_pool_success = {
		347079,
		103,
		true
	},
	tip_pray_build_pool_fail = {
		347182,
		100,
		true
	},
	pray_build_help = {
		347282,
		1644,
		true
	},
	bismarck_award_tip = {
		348926,
		115,
		true
	},
	bismarck_chapter_desc = {
		349041,
		161,
		true
	},
	returner_push_success = {
		349202,
		97,
		true
	},
	returner_max_count = {
		349299,
		106,
		true
	},
	returner_push_tip = {
		349405,
		236,
		true
	},
	returner_match_tip = {
		349641,
		233,
		true
	},
	return_lock_tip = {
		349874,
		135,
		true
	},
	challenge_help = {
		350009,
		1284,
		true
	},
	challenge_casual_reset = {
		351293,
		144,
		true
	},
	challenge_infinite_reset = {
		351437,
		146,
		true
	},
	challenge_normal_reset = {
		351583,
		111,
		true
	},
	challenge_casual_click_switch = {
		351694,
		155,
		true
	},
	challenge_infinite_click_switch = {
		351849,
		157,
		true
	},
	challenge_season_update = {
		352006,
		111,
		true
	},
	challenge_season_update_casual_clear = {
		352117,
		202,
		true
	},
	challenge_season_update_infinite_clear = {
		352319,
		204,
		true
	},
	challenge_season_update_casual_switch = {
		352523,
		245,
		true
	},
	challenge_season_update_infinite_switch = {
		352768,
		247,
		true
	},
	challenge_combat_score = {
		353015,
		103,
		true
	},
	challenge_share_progress = {
		353118,
		115,
		true
	},
	challenge_share = {
		353233,
		82,
		true
	},
	challenge_expire_warn = {
		353315,
		143,
		true
	},
	challenge_normal_tip = {
		353458,
		136,
		true
	},
	challenge_unlimited_tip = {
		353594,
		130,
		true
	},
	commander_prefab_rename_success = {
		353724,
		107,
		true
	},
	commander_prefab_name = {
		353831,
		99,
		true
	},
	commander_prefab_rename_time = {
		353930,
		118,
		true
	},
	commander_build_solt_deficiency = {
		354048,
		116,
		true
	},
	commander_select_box_tip = {
		354164,
		166,
		true
	},
	challenge_end_tip = {
		354330,
		96,
		true
	},
	pass_times = {
		354426,
		86,
		true
	},
	list_empty_tip_billboardui = {
		354512,
		108,
		true
	},
	list_empty_tip_equipmentdesignui = {
		354620,
		123,
		true
	},
	list_empty_tip_storehouseui_equip = {
		354743,
		124,
		true
	},
	list_empty_tip_storehouseui_item = {
		354867,
		120,
		true
	},
	list_empty_tip_eventui = {
		354987,
		113,
		true
	},
	list_empty_tip_guildrequestui = {
		355100,
		114,
		true
	},
	list_empty_tip_joinguildui = {
		355214,
		120,
		true
	},
	list_empty_tip_friendui = {
		355334,
		99,
		true
	},
	list_empty_tip_friendui_search = {
		355433,
		127,
		true
	},
	list_empty_tip_friendui_request = {
		355560,
		113,
		true
	},
	list_empty_tip_friendui_black = {
		355673,
		114,
		true
	},
	list_empty_tip_dockyardui = {
		355787,
		116,
		true
	},
	list_empty_tip_taskscene = {
		355903,
		112,
		true
	},
	empty_tip_mailboxui = {
		356015,
		107,
		true
	},
	words_settings_unlock_ship = {
		356122,
		102,
		true
	},
	words_settings_resolve_equip = {
		356224,
		104,
		true
	},
	words_settings_unlock_commander = {
		356328,
		110,
		true
	},
	words_settings_create_inherit = {
		356438,
		108,
		true
	},
	tips_fail_secondarypwd_much_times = {
		356546,
		171,
		true
	},
	words_desc_unlock = {
		356717,
		123,
		true
	},
	words_desc_resolve_equip = {
		356840,
		131,
		true
	},
	words_desc_create_inherit = {
		356971,
		132,
		true
	},
	words_desc_close_password = {
		357103,
		132,
		true
	},
	words_desc_change_settings = {
		357235,
		145,
		true
	},
	words_set_password = {
		357380,
		94,
		true
	},
	words_information = {
		357474,
		87,
		true
	},
	Word_Ship_Exp_Buff = {
		357561,
		94,
		true
	},
	secondarypassword_incorrectpwd_error = {
		357655,
		156,
		true
	},
	secondary_password_help = {
		357811,
		1240,
		true
	},
	comic_help = {
		359051,
		465,
		true
	},
	secondarypassword_illegal_tip = {
		359516,
		130,
		true
	},
	pt_cosume = {
		359646,
		81,
		true
	},
	secondarypassword_confirm_tips = {
		359727,
		160,
		true
	},
	help_tempesteve = {
		359887,
		801,
		true
	},
	word_rest_times = {
		360688,
		125,
		true
	},
	common_buy_gold_success = {
		360813,
		136,
		true
	},
	harbour_bomb_tip = {
		360949,
		113,
		true
	},
	submarine_approach = {
		361062,
		94,
		true
	},
	submarine_approach_desc = {
		361156,
		139,
		true
	},
	desc_quick_play = {
		361295,
		97,
		true
	},
	text_win_condition = {
		361392,
		94,
		true
	},
	text_lose_condition = {
		361486,
		95,
		true
	},
	text_rest_HP = {
		361581,
		88,
		true
	},
	desc_defense_reward = {
		361669,
		128,
		true
	},
	desc_base_hp = {
		361797,
		96,
		true
	},
	map_event_open = {
		361893,
		99,
		true
	},
	word_reward = {
		361992,
		81,
		true
	},
	tips_dispense_completed = {
		362073,
		99,
		true
	},
	tips_firework_completed = {
		362172,
		105,
		true
	},
	help_summer_feast = {
		362277,
		803,
		true
	},
	help_firework_produce = {
		363080,
		491,
		true
	},
	help_firework = {
		363571,
		1195,
		true
	},
	help_summer_shrine = {
		364766,
		1071,
		true
	},
	help_summer_food = {
		365837,
		1505,
		true
	},
	help_summer_shooting = {
		367342,
		962,
		true
	},
	help_summer_stamp = {
		368304,
		307,
		true
	},
	tips_summergame_exit = {
		368611,
		166,
		true
	},
	tips_shrine_buff = {
		368777,
		112,
		true
	},
	tips_shrine_nobuff = {
		368889,
		139,
		true
	},
	paint_hide_other_obj_tip = {
		369028,
		106,
		true
	},
	help_vote = {
		369134,
		5066,
		true
	},
	tips_firework_exit = {
		374200,
		131,
		true
	},
	result_firework_produce = {
		374331,
		123,
		true
	},
	tag_level_narrative = {
		374454,
		95,
		true
	},
	vote_get_book = {
		374549,
		98,
		true
	},
	vote_book_is_over = {
		374647,
		133,
		true
	},
	vote_fame_tip = {
		374780,
		161,
		true
	},
	word_maintain = {
		374941,
		86,
		true
	},
	name_zhanliejahe = {
		375027,
		101,
		true
	},
	change_skin_secretary_ship_success = {
		375128,
		135,
		true
	},
	change_skin_secretary_ship = {
		375263,
		117,
		true
	},
	word_billboard = {
		375380,
		87,
		true
	},
	word_easy = {
		375467,
		79,
		true
	},
	word_normal_junhe = {
		375546,
		87,
		true
	},
	word_hard = {
		375633,
		79,
		true
	},
	word_special_challenge_ticket = {
		375712,
		108,
		true
	},
	tip_exchange_ticket = {
		375820,
		155,
		true
	},
	dont_remind = {
		375975,
		87,
		true
	},
	worldbossex_help = {
		376062,
		969,
		true
	},
	ship_formationUI_fleetName_easy = {
		377031,
		107,
		true
	},
	ship_formationUI_fleetName_normal = {
		377138,
		109,
		true
	},
	ship_formationUI_fleetName_hard = {
		377247,
		107,
		true
	},
	ship_formationUI_fleetName_extra = {
		377354,
		104,
		true
	},
	ship_formationUI_fleetName_easy_ss = {
		377458,
		116,
		true
	},
	ship_formationUI_fleetName_normal_ss = {
		377574,
		118,
		true
	},
	ship_formationUI_fleetName_hard_ss = {
		377692,
		116,
		true
	},
	ship_formationUI_fleetName_extra_ss = {
		377808,
		113,
		true
	},
	text_consume = {
		377921,
		83,
		true
	},
	text_inconsume = {
		378004,
		87,
		true
	},
	pt_ship_now = {
		378091,
		90,
		true
	},
	pt_ship_goal = {
		378181,
		91,
		true
	},
	option_desc1 = {
		378272,
		127,
		true
	},
	option_desc2 = {
		378399,
		146,
		true
	},
	option_desc3 = {
		378545,
		158,
		true
	},
	option_desc4 = {
		378703,
		210,
		true
	},
	option_desc5 = {
		378913,
		134,
		true
	},
	option_desc6 = {
		379047,
		149,
		true
	},
	option_desc10 = {
		379196,
		141,
		true
	},
	option_desc11 = {
		379337,
		1452,
		true
	},
	music_collection = {
		380789,
		758,
		true
	},
	music_main = {
		381547,
		1010,
		true
	},
	music_juus = {
		382557,
		465,
		true
	},
	doa_collection = {
		383022,
		684,
		true
	},
	ins_word_day = {
		383706,
		84,
		true
	},
	ins_word_hour = {
		383790,
		88,
		true
	},
	ins_word_minu = {
		383878,
		88,
		true
	},
	ins_word_like = {
		383966,
		86,
		true
	},
	ins_click_like_success = {
		384052,
		98,
		true
	},
	ins_push_comment_success = {
		384150,
		100,
		true
	},
	skinshop_live2d_fliter_failed = {
		384250,
		126,
		true
	},
	help_music_game = {
		384376,
		1185,
		true
	},
	restart_music_game = {
		385561,
		143,
		true
	},
	reselect_music_game = {
		385704,
		144,
		true
	},
	hololive_goodmorning = {
		385848,
		571,
		true
	},
	hololive_lianliankan = {
		386419,
		1165,
		true
	},
	hololive_dalaozhang = {
		387584,
		588,
		true
	},
	hololive_dashenling = {
		388172,
		869,
		true
	},
	pocky_jiujiu = {
		389041,
		88,
		true
	},
	pocky_jiujiu_desc = {
		389129,
		136,
		true
	},
	pocky_help = {
		389265,
		722,
		true
	},
	secretary_help = {
		389987,
		1478,
		true
	},
	secretary_unlock2 = {
		391465,
		105,
		true
	},
	secretary_unlock3 = {
		391570,
		105,
		true
	},
	secretary_unlock4 = {
		391675,
		105,
		true
	},
	secretary_unlock5 = {
		391780,
		106,
		true
	},
	secretary_closed = {
		391886,
		92,
		true
	},
	confirm_unlock = {
		391978,
		92,
		true
	},
	secretary_pos_save = {
		392070,
		122,
		true
	},
	secretary_pos_save_success = {
		392192,
		102,
		true
	},
	collection_help = {
		392294,
		346,
		true
	},
	juese_tiyan = {
		392640,
		220,
		true
	},
	resolve_amount_prefix = {
		392860,
		100,
		true
	},
	compose_amount_prefix = {
		392960,
		100,
		true
	},
	help_sub_limits = {
		393060,
		104,
		true
	},
	help_sub_display = {
		393164,
		105,
		true
	},
	confirm_unlock_ship_main = {
		393269,
		134,
		true
	},
	msgbox_text_confirm = {
		393403,
		90,
		true
	},
	msgbox_text_shop = {
		393493,
		87,
		true
	},
	msgbox_text_cancel = {
		393580,
		89,
		true
	},
	msgbox_text_cancel_g = {
		393669,
		91,
		true
	},
	msgbox_text_cancel_fight = {
		393760,
		100,
		true
	},
	msgbox_text_goon_fight = {
		393860,
		98,
		true
	},
	msgbox_text_exit = {
		393958,
		87,
		true
	},
	msgbox_text_clear = {
		394045,
		88,
		true
	},
	msgbox_text_apply = {
		394133,
		88,
		true
	},
	msgbox_text_buy = {
		394221,
		86,
		true
	},
	msgbox_text_noPos_buy = {
		394307,
		92,
		true
	},
	msgbox_text_noPos_clear = {
		394399,
		94,
		true
	},
	msgbox_text_noPos_intensify = {
		394493,
		98,
		true
	},
	msgbox_text_forward = {
		394591,
		95,
		true
	},
	msgbox_text_iknow = {
		394686,
		90,
		true
	},
	msgbox_text_prepage = {
		394776,
		92,
		true
	},
	msgbox_text_nextpage = {
		394868,
		93,
		true
	},
	msgbox_text_exchange = {
		394961,
		91,
		true
	},
	msgbox_text_retreat = {
		395052,
		90,
		true
	},
	msgbox_text_go = {
		395142,
		90,
		true
	},
	msgbox_text_consume = {
		395232,
		89,
		true
	},
	msgbox_text_inconsume = {
		395321,
		94,
		true
	},
	msgbox_text_unlock = {
		395415,
		89,
		true
	},
	msgbox_text_save = {
		395504,
		87,
		true
	},
	msgbox_text_replace = {
		395591,
		90,
		true
	},
	msgbox_text_unload = {
		395681,
		89,
		true
	},
	msgbox_text_modify = {
		395770,
		89,
		true
	},
	msgbox_text_breakthrough = {
		395859,
		95,
		true
	},
	msgbox_text_equipdetail = {
		395954,
		99,
		true
	},
	msgbox_text_use = {
		396053,
		86,
		true
	},
	common_flag_ship = {
		396139,
		89,
		true
	},
	fenjie_lantu_tip = {
		396228,
		137,
		true
	},
	msgbox_text_analyse = {
		396365,
		90,
		true
	},
	fragresolve_empty_tip = {
		396455,
		118,
		true
	},
	confirm_unlock_lv = {
		396573,
		123,
		true
	},
	shops_rest_day = {
		396696,
		103,
		true
	},
	title_limit_time = {
		396799,
		92,
		true
	},
	seven_choose_one = {
		396891,
		214,
		true
	},
	help_newyear_feast = {
		397105,
		967,
		true
	},
	help_newyear_shrine = {
		398072,
		1130,
		true
	},
	help_newyear_stamp = {
		399202,
		343,
		true
	},
	pt_reconfirm = {
		399545,
		126,
		true
	},
	qte_game_help = {
		399671,
		340,
		true
	},
	word_equipskin_type = {
		400011,
		89,
		true
	},
	word_equipskin_all = {
		400100,
		88,
		true
	},
	word_equipskin_cannon = {
		400188,
		91,
		true
	},
	word_equipskin_tarpedo = {
		400279,
		92,
		true
	},
	word_equipskin_aircraft = {
		400371,
		96,
		true
	},
	word_equipskin_aux = {
		400467,
		88,
		true
	},
	msgbox_repair = {
		400555,
		89,
		true
	},
	msgbox_repair_l2d = {
		400644,
		90,
		true
	},
	msgbox_repair_painting = {
		400734,
		98,
		true
	},
	word_no_cache = {
		400832,
		104,
		true
	},
	pile_game_notice = {
		400936,
		942,
		true
	},
	help_chunjie_stamp = {
		401878,
		312,
		true
	},
	help_chunjie_feast = {
		402190,
		558,
		true
	},
	help_chunjie_jiulou = {
		402748,
		830,
		true
	},
	special_animal1 = {
		403578,
		210,
		true
	},
	special_animal2 = {
		403788,
		204,
		true
	},
	special_animal3 = {
		403992,
		197,
		true
	},
	special_animal4 = {
		404189,
		199,
		true
	},
	special_animal5 = {
		404388,
		200,
		true
	},
	special_animal6 = {
		404588,
		185,
		true
	},
	special_animal7 = {
		404773,
		210,
		true
	},
	bulin_help = {
		404983,
		407,
		true
	},
	super_bulin = {
		405390,
		102,
		true
	},
	super_bulin_tip = {
		405492,
		120,
		true
	},
	bulin_tip1 = {
		405612,
		101,
		true
	},
	bulin_tip2 = {
		405713,
		110,
		true
	},
	bulin_tip3 = {
		405823,
		101,
		true
	},
	bulin_tip4 = {
		405924,
		119,
		true
	},
	bulin_tip5 = {
		406043,
		101,
		true
	},
	bulin_tip6 = {
		406144,
		107,
		true
	},
	bulin_tip7 = {
		406251,
		101,
		true
	},
	bulin_tip8 = {
		406352,
		110,
		true
	},
	bulin_tip9 = {
		406462,
		110,
		true
	},
	bulin_tip_other1 = {
		406572,
		137,
		true
	},
	bulin_tip_other2 = {
		406709,
		101,
		true
	},
	bulin_tip_other3 = {
		406810,
		138,
		true
	},
	monopoly_left_count = {
		406948,
		96,
		true
	},
	help_chunjie_monopoly = {
		407044,
		1017,
		true
	},
	monoply_drop_ship_step = {
		408061,
		143,
		true
	},
	lanternRiddles_wait_for_reanswer = {
		408204,
		130,
		true
	},
	lanternRiddles_answer_is_wrong = {
		408334,
		132,
		true
	},
	lanternRiddles_answer_is_right = {
		408466,
		113,
		true
	},
	lanternRiddles_gametip = {
		408579,
		940,
		true
	},
	LanternRiddle_wait_time_tip = {
		409519,
		110,
		true
	},
	LinkLinkGame_BestTime = {
		409629,
		98,
		true
	},
	LinkLinkGame_CurTime = {
		409727,
		97,
		true
	},
	sort_attribute = {
		409824,
		84,
		true
	},
	sort_intimacy = {
		409908,
		83,
		true
	},
	index_skin = {
		409991,
		83,
		true
	},
	index_reform = {
		410074,
		85,
		true
	},
	index_reform_cw = {
		410159,
		88,
		true
	},
	index_strengthen = {
		410247,
		89,
		true
	},
	index_special = {
		410336,
		83,
		true
	},
	index_propose_skin = {
		410419,
		94,
		true
	},
	index_not_obtained = {
		410513,
		91,
		true
	},
	index_no_limit = {
		410604,
		87,
		true
	},
	index_awakening = {
		410691,
		110,
		true
	},
	index_not_lvmax = {
		410801,
		88,
		true
	},
	index_spweapon = {
		410889,
		90,
		true
	},
	index_marry = {
		410979,
		84,
		true
	},
	decodegame_gametip = {
		411063,
		1094,
		true
	},
	indexsort_sort = {
		412157,
		84,
		true
	},
	indexsort_index = {
		412241,
		85,
		true
	},
	indexsort_camp = {
		412326,
		84,
		true
	},
	indexsort_type = {
		412410,
		84,
		true
	},
	indexsort_rarity = {
		412494,
		89,
		true
	},
	indexsort_extraindex = {
		412583,
		96,
		true
	},
	indexsort_label = {
		412679,
		85,
		true
	},
	indexsort_sorteng = {
		412764,
		85,
		true
	},
	indexsort_indexeng = {
		412849,
		87,
		true
	},
	indexsort_campeng = {
		412936,
		85,
		true
	},
	indexsort_rarityeng = {
		413021,
		89,
		true
	},
	indexsort_typeeng = {
		413110,
		85,
		true
	},
	indexsort_labeleng = {
		413195,
		87,
		true
	},
	fightfail_up = {
		413282,
		172,
		true
	},
	fightfail_equip = {
		413454,
		163,
		true
	},
	fight_strengthen = {
		413617,
		167,
		true
	},
	fightfail_noequip = {
		413784,
		126,
		true
	},
	fightfail_choiceequip = {
		413910,
		157,
		true
	},
	fightfail_choicestrengthen = {
		414067,
		165,
		true
	},
	sofmap_attention = {
		414232,
		272,
		true
	},
	sofmapsd_1 = {
		414504,
		161,
		true
	},
	sofmapsd_2 = {
		414665,
		146,
		true
	},
	sofmapsd_3 = {
		414811,
		130,
		true
	},
	sofmapsd_4 = {
		414941,
		123,
		true
	},
	inform_level_limit = {
		415064,
		130,
		true
	},
	["3match_tip"] = {
		415194,
		381,
		true
	},
	retire_selectzero = {
		415575,
		111,
		true
	},
	retire_marry_skin = {
		415686,
		101,
		true
	},
	undermist_tip = {
		415787,
		122,
		true
	},
	retire_1 = {
		415909,
		204,
		true
	},
	retire_2 = {
		416113,
		204,
		true
	},
	retire_3 = {
		416317,
		94,
		true
	},
	retire_rarity = {
		416411,
		94,
		true
	},
	retire_title = {
		416505,
		94,
		true
	},
	res_unlock_tip = {
		416599,
		108,
		true
	},
	res_wifi_tip = {
		416707,
		151,
		true
	},
	res_downloading = {
		416858,
		88,
		true
	},
	res_pic_new_tip = {
		416946,
		111,
		true
	},
	res_music_no_pre_tip = {
		417057,
		105,
		true
	},
	res_music_no_next_tip = {
		417162,
		109,
		true
	},
	res_music_new_tip = {
		417271,
		113,
		true
	},
	apple_link_title = {
		417384,
		113,
		true
	},
	retire_setting_help = {
		417497,
		505,
		true
	},
	activity_shop_exchange_count = {
		418002,
		107,
		true
	},
	shops_msgbox_exchange_count = {
		418109,
		104,
		true
	},
	shops_msgbox_output = {
		418213,
		95,
		true
	},
	shop_word_exchange = {
		418308,
		89,
		true
	},
	shop_word_cancel = {
		418397,
		87,
		true
	},
	title_item_ways = {
		418484,
		141,
		true
	},
	item_lack_title = {
		418625,
		167,
		true
	},
	oil_buy_tip_2 = {
		418792,
		456,
		true
	},
	target_chapter_is_lock = {
		419248,
		113,
		true
	},
	ship_book = {
		419361,
		102,
		true
	},
	month_sign_resign = {
		419463,
		151,
		true
	},
	collect_tip = {
		419614,
		133,
		true
	},
	collect_tip2 = {
		419747,
		137,
		true
	},
	word_weakness = {
		419884,
		83,
		true
	},
	special_operation_tip1 = {
		419967,
		110,
		true
	},
	special_operation_tip2 = {
		420077,
		113,
		true
	},
	area_lock = {
		420190,
		97,
		true
	},
	equipment_upgrade_equipped_tag = {
		420287,
		106,
		true
	},
	equipment_upgrade_spare_tag = {
		420393,
		103,
		true
	},
	equipment_upgrade_help = {
		420496,
		1081,
		true
	},
	equipment_upgrade_title = {
		421577,
		99,
		true
	},
	equipment_upgrade_coin_consume = {
		421676,
		106,
		true
	},
	equipment_upgrade_quick_interface_source_chosen = {
		421782,
		126,
		true
	},
	equipment_upgrade_quick_interface_materials_consume = {
		421908,
		140,
		true
	},
	equipment_upgrade_feedback_lack_of_materials = {
		422048,
		120,
		true
	},
	equipment_upgrade_feedback_equipment_consume = {
		422168,
		192,
		true
	},
	equipment_upgrade_feedback_equipment_can_be_produced = {
		422360,
		177,
		true
	},
	equipment_upgrade_quick_interface_feedback_source_chosen = {
		422537,
		136,
		true
	},
	equipment_upgrade_feedback_lack_of_equipment = {
		422673,
		126,
		true
	},
	equipment_upgrade_equipped_unavailable = {
		422799,
		183,
		true
	},
	equipment_upgrade_initial_node = {
		422982,
		134,
		true
	},
	equipment_upgrade_feedback_compose_tip = {
		423116,
		217,
		true
	},
	discount_coupon_tip = {
		423333,
		193,
		true
	},
	pizzahut_help = {
		423526,
		793,
		true
	},
	towerclimbing_gametip = {
		424319,
		670,
		true
	},
	qingdianguangchang_help = {
		424989,
		599,
		true
	},
	building_tip = {
		425588,
		195,
		true
	},
	building_upgrade_tip = {
		425783,
		126,
		true
	},
	msgbox_text_upgrade = {
		425909,
		90,
		true
	},
	towerclimbing_sign_help = {
		425999,
		692,
		true
	},
	building_complete_tip = {
		426691,
		97,
		true
	},
	backyard_theme_refresh_time_tip = {
		426788,
		113,
		true
	},
	backyard_theme_total_print = {
		426901,
		96,
		true
	},
	backyard_theme_shop_title = {
		426997,
		101,
		true
	},
	backyard_theme_mine_title = {
		427098,
		101,
		true
	},
	backyard_theme_collection_title = {
		427199,
		107,
		true
	},
	backyard_theme_ban_upload_tip = {
		427306,
		171,
		true
	},
	backyard_theme_upload_over_maxcnt = {
		427477,
		180,
		true
	},
	backyard_theme_apply_tip1 = {
		427657,
		144,
		true
	},
	backyard_theme_word_buy = {
		427801,
		93,
		true
	},
	backyard_theme_word_apply = {
		427894,
		95,
		true
	},
	backyard_theme_apply_success = {
		427989,
		104,
		true
	},
	backyard_theme_unload_success = {
		428093,
		111,
		true
	},
	backyard_theme_upload_success = {
		428204,
		105,
		true
	},
	backyard_theme_delete_success = {
		428309,
		105,
		true
	},
	backyard_theme_apply_tip2 = {
		428414,
		107,
		true
	},
	backyard_theme_upload_cnt = {
		428521,
		111,
		true
	},
	backyard_theme_upload_time = {
		428632,
		103,
		true
	},
	backyard_theme_word_like = {
		428735,
		94,
		true
	},
	backyard_theme_word_collection = {
		428829,
		100,
		true
	},
	backyard_theme_cancel_collection = {
		428929,
		117,
		true
	},
	backyard_theme_inform_them = {
		429046,
		104,
		true
	},
	towerclimbing_book_tip = {
		429150,
		125,
		true
	},
	towerclimbing_reward_tip = {
		429275,
		124,
		true
	},
	open_backyard_theme_template_tip = {
		429399,
		123,
		true
	},
	backyard_theme_cancel_template_upload_tip = {
		429522,
		193,
		true
	},
	backyard_theme_delete_themplate_tip = {
		429715,
		178,
		true
	},
	backyard_theme_template_be_delete_tip = {
		429893,
		122,
		true
	},
	backyard_theme_template_collection_cnt_max = {
		430015,
		134,
		true
	},
	backyard_theme_template_collection_cnt = {
		430149,
		120,
		true
	},
	words_visit_backyard_toggle = {
		430269,
		115,
		true
	},
	words_show_friend_backyardship_toggle = {
		430384,
		125,
		true
	},
	words_show_my_backyardship_toggle = {
		430509,
		121,
		true
	},
	option_desc7 = {
		430630,
		134,
		true
	},
	option_desc8 = {
		430764,
		173,
		true
	},
	option_desc9 = {
		430937,
		167,
		true
	},
	backyard_unopen = {
		431104,
		94,
		true
	},
	coupon_timeout_tip = {
		431198,
		138,
		true
	},
	coupon_repeat_tip = {
		431336,
		143,
		true
	},
	backyard_shop_refresh_frequently = {
		431479,
		141,
		true
	},
	word_random = {
		431620,
		81,
		true
	},
	word_hot = {
		431701,
		78,
		true
	},
	word_new = {
		431779,
		78,
		true
	},
	backyard_decoration_theme_template_delete_tip = {
		431857,
		188,
		true
	},
	backyard_not_found_theme_template = {
		432045,
		121,
		true
	},
	backyard_apply_theme_template_erro = {
		432166,
		110,
		true
	},
	backyard_theme_template_list_is_empty = {
		432276,
		128,
		true
	},
	BackYard_collection_be_delete_tip = {
		432404,
		152,
		true
	},
	backyard_theme_template_shop_tip = {
		432556,
		1110,
		true
	},
	backyard_shop_reach_last_page = {
		433666,
		133,
		true
	},
	help_monopoly_car = {
		433799,
		992,
		true
	},
	help_monopoly_car_2 = {
		434791,
		1177,
		true
	},
	help_monopoly_3th = {
		435968,
		1707,
		true
	},
	backYard_missing_furnitrue_tip = {
		437675,
		112,
		true
	},
	win_condition_display_qijian = {
		437787,
		110,
		true
	},
	win_condition_display_qijian_tip = {
		437897,
		127,
		true
	},
	win_condition_display_shangchuan = {
		438024,
		120,
		true
	},
	win_condition_display_shangchuan_tip = {
		438144,
		137,
		true
	},
	win_condition_display_judian = {
		438281,
		116,
		true
	},
	win_condition_display_tuoli = {
		438397,
		118,
		true
	},
	win_condition_display_tuoli_tip = {
		438515,
		138,
		true
	},
	lose_condition_display_quanmie = {
		438653,
		112,
		true
	},
	lose_condition_display_gangqu = {
		438765,
		132,
		true
	},
	re_battle = {
		438897,
		85,
		true
	},
	keep_fate_tip = {
		438982,
		131,
		true
	},
	equip_info_1 = {
		439113,
		82,
		true
	},
	equip_info_2 = {
		439195,
		88,
		true
	},
	equip_info_3 = {
		439283,
		82,
		true
	},
	equip_info_4 = {
		439365,
		82,
		true
	},
	equip_info_5 = {
		439447,
		82,
		true
	},
	equip_info_6 = {
		439529,
		88,
		true
	},
	equip_info_7 = {
		439617,
		88,
		true
	},
	equip_info_8 = {
		439705,
		88,
		true
	},
	equip_info_9 = {
		439793,
		88,
		true
	},
	equip_info_10 = {
		439881,
		89,
		true
	},
	equip_info_11 = {
		439970,
		89,
		true
	},
	equip_info_12 = {
		440059,
		89,
		true
	},
	equip_info_13 = {
		440148,
		83,
		true
	},
	equip_info_14 = {
		440231,
		89,
		true
	},
	equip_info_15 = {
		440320,
		89,
		true
	},
	equip_info_16 = {
		440409,
		89,
		true
	},
	equip_info_17 = {
		440498,
		89,
		true
	},
	equip_info_18 = {
		440587,
		89,
		true
	},
	equip_info_19 = {
		440676,
		89,
		true
	},
	equip_info_20 = {
		440765,
		92,
		true
	},
	equip_info_21 = {
		440857,
		92,
		true
	},
	equip_info_22 = {
		440949,
		98,
		true
	},
	equip_info_23 = {
		441047,
		89,
		true
	},
	equip_info_24 = {
		441136,
		89,
		true
	},
	equip_info_25 = {
		441225,
		80,
		true
	},
	equip_info_26 = {
		441305,
		92,
		true
	},
	equip_info_27 = {
		441397,
		77,
		true
	},
	equip_info_28 = {
		441474,
		95,
		true
	},
	equip_info_29 = {
		441569,
		95,
		true
	},
	equip_info_30 = {
		441664,
		89,
		true
	},
	equip_info_31 = {
		441753,
		83,
		true
	},
	equip_info_32 = {
		441836,
		92,
		true
	},
	equip_info_33 = {
		441928,
		95,
		true
	},
	equip_info_34 = {
		442023,
		89,
		true
	},
	equip_info_extralevel_0 = {
		442112,
		94,
		true
	},
	equip_info_extralevel_1 = {
		442206,
		94,
		true
	},
	equip_info_extralevel_2 = {
		442300,
		94,
		true
	},
	equip_info_extralevel_3 = {
		442394,
		94,
		true
	},
	tec_settings_btn_word = {
		442488,
		97,
		true
	},
	tec_tendency_x = {
		442585,
		89,
		true
	},
	tec_tendency_0 = {
		442674,
		87,
		true
	},
	tec_tendency_1 = {
		442761,
		90,
		true
	},
	tec_tendency_2 = {
		442851,
		90,
		true
	},
	tec_tendency_3 = {
		442941,
		90,
		true
	},
	tec_tendency_4 = {
		443031,
		90,
		true
	},
	tec_tendency_cur_x = {
		443121,
		102,
		true
	},
	tec_tendency_cur_0 = {
		443223,
		106,
		true
	},
	tec_tendency_cur_1 = {
		443329,
		103,
		true
	},
	tec_tendency_cur_2 = {
		443432,
		103,
		true
	},
	tec_tendency_cur_3 = {
		443535,
		103,
		true
	},
	tec_target_catchup_none = {
		443638,
		111,
		true
	},
	tec_target_catchup_selected = {
		443749,
		103,
		true
	},
	tec_tendency_cur_4 = {
		443852,
		103,
		true
	},
	tec_target_catchup_none_x = {
		443955,
		114,
		true
	},
	tec_target_catchup_none_1 = {
		444069,
		115,
		true
	},
	tec_target_catchup_none_2 = {
		444184,
		115,
		true
	},
	tec_target_catchup_none_3 = {
		444299,
		115,
		true
	},
	tec_target_catchup_selected_x = {
		444414,
		118,
		true
	},
	tec_target_catchup_selected_1 = {
		444532,
		119,
		true
	},
	tec_target_catchup_selected_2 = {
		444651,
		119,
		true
	},
	tec_target_catchup_selected_3 = {
		444770,
		119,
		true
	},
	tec_target_catchup_finish_x = {
		444889,
		116,
		true
	},
	tec_target_catchup_finish_1 = {
		445005,
		117,
		true
	},
	tec_target_catchup_finish_2 = {
		445122,
		117,
		true
	},
	tec_target_catchup_finish_3 = {
		445239,
		117,
		true
	},
	tec_target_catchup_dr_finish_tip = {
		445356,
		105,
		true
	},
	tec_target_catchup_all_finish_tip = {
		445461,
		118,
		true
	},
	tec_target_catchup_show_the_finished_version = {
		445579,
		145,
		true
	},
	tec_target_catchup_pry_char = {
		445724,
		103,
		true
	},
	tec_target_catchup_dr_char = {
		445827,
		102,
		true
	},
	tec_target_need_print = {
		445929,
		97,
		true
	},
	tec_target_catchup_progress = {
		446026,
		103,
		true
	},
	tec_target_catchup_select_tip = {
		446129,
		127,
		true
	},
	tec_target_catchup_help_tip = {
		446256,
		710,
		true
	},
	tec_speedup_title = {
		446966,
		93,
		true
	},
	tec_speedup_progress = {
		447059,
		95,
		true
	},
	tec_speedup_overflow = {
		447154,
		153,
		true
	},
	tec_speedup_help_tip = {
		447307,
		227,
		true
	},
	click_back_tip = {
		447534,
		102,
		true
	},
	tech_catchup_sentence_pauses = {
		447636,
		98,
		true
	},
	tec_act_catchup_btn_word = {
		447734,
		100,
		true
	},
	tec_catchup_errorfix = {
		447834,
		353,
		true
	},
	guild_duty_is_too_low = {
		448187,
		115,
		true
	},
	guild_trainee_duty_change_tip = {
		448302,
		123,
		true
	},
	guild_not_exist_donate_task = {
		448425,
		109,
		true
	},
	guild_week_task_state_is_wrong = {
		448534,
		124,
		true
	},
	guild_get_week_done = {
		448658,
		113,
		true
	},
	guild_public_awards = {
		448771,
		101,
		true
	},
	guild_private_awards = {
		448872,
		99,
		true
	},
	guild_task_selecte_tip = {
		448971,
		179,
		true
	},
	guild_task_accept = {
		449150,
		331,
		true
	},
	guild_commander_and_sub_op = {
		449481,
		142,
		true
	},
	["guild_donate_times_not enough"] = {
		449623,
		120,
		true
	},
	guild_donate_success = {
		449743,
		102,
		true
	},
	guild_left_donate_cnt = {
		449845,
		108,
		true
	},
	guild_donate_tip = {
		449953,
		214,
		true
	},
	guild_donate_addition_capital_tip = {
		450167,
		120,
		true
	},
	guild_donate_addition_techpoint_tip = {
		450287,
		119,
		true
	},
	guild_donate_capital_toplimit = {
		450406,
		175,
		true
	},
	guild_donate_techpoint_toplimit = {
		450581,
		174,
		true
	},
	guild_supply_no_open = {
		450755,
		108,
		true
	},
	guild_supply_award_got = {
		450863,
		110,
		true
	},
	guild_new_member_get_award_tip = {
		450973,
		152,
		true
	},
	guild_start_supply_consume_tip = {
		451125,
		260,
		true
	},
	guild_left_supply_day = {
		451385,
		96,
		true
	},
	guild_supply_help_tip = {
		451481,
		601,
		true
	},
	guild_op_only_administrator = {
		452082,
		143,
		true
	},
	guild_shop_refresh_done = {
		452225,
		99,
		true
	},
	guild_shop_cnt_no_enough = {
		452324,
		100,
		true
	},
	guild_shop_refresh_all_tip = {
		452424,
		148,
		true
	},
	guild_shop_exchange_tip = {
		452572,
		108,
		true
	},
	guild_shop_label_1 = {
		452680,
		115,
		true
	},
	guild_shop_label_2 = {
		452795,
		97,
		true
	},
	guild_shop_label_3 = {
		452892,
		89,
		true
	},
	guild_shop_label_4 = {
		452981,
		88,
		true
	},
	guild_shop_label_5 = {
		453069,
		115,
		true
	},
	guild_shop_must_select_goods = {
		453184,
		125,
		true
	},
	guild_not_exist_activation_tech = {
		453309,
		141,
		true
	},
	guild_not_exist_tech = {
		453450,
		108,
		true
	},
	guild_cancel_only_once_pre_day = {
		453558,
		137,
		true
	},
	guild_tech_is_max_level = {
		453695,
		120,
		true
	},
	guild_tech_gold_no_enough = {
		453815,
		132,
		true
	},
	guild_tech_guildgold_no_enough = {
		453947,
		140,
		true
	},
	guild_tech_upgrade_done = {
		454087,
		126,
		true
	},
	guild_exist_activation_tech = {
		454213,
		127,
		true
	},
	guild_tech_gold_desc = {
		454340,
		110,
		true
	},
	guild_tech_oil_desc = {
		454450,
		109,
		true
	},
	guild_tech_shipbag_desc = {
		454559,
		113,
		true
	},
	guild_tech_equipbag_desc = {
		454672,
		114,
		true
	},
	guild_box_gold_desc = {
		454786,
		109,
		true
	},
	guidl_r_box_time_desc = {
		454895,
		112,
		true
	},
	guidl_sr_box_time_desc = {
		455007,
		114,
		true
	},
	guidl_ssr_box_time_desc = {
		455121,
		116,
		true
	},
	guild_member_max_cnt_desc = {
		455237,
		118,
		true
	},
	guild_tech_livness_no_enough = {
		455355,
		230,
		true
	},
	guild_tech_livness_no_enough_label = {
		455585,
		124,
		true
	},
	guild_ship_attr_desc = {
		455709,
		117,
		true
	},
	guild_start_tech_group_tip = {
		455826,
		138,
		true
	},
	guild_cancel_tech_tip = {
		455964,
		227,
		true
	},
	guild_tech_consume_tip = {
		456191,
		202,
		true
	},
	guild_tech_non_admin = {
		456393,
		169,
		true
	},
	guild_tech_label_max_level = {
		456562,
		103,
		true
	},
	guild_tech_label_dev_progress = {
		456665,
		105,
		true
	},
	guild_tech_label_condition = {
		456770,
		114,
		true
	},
	guild_tech_donate_target = {
		456884,
		109,
		true
	},
	guild_not_exist = {
		456993,
		97,
		true
	},
	guild_not_exist_battle = {
		457090,
		110,
		true
	},
	guild_battle_is_end = {
		457200,
		107,
		true
	},
	guild_battle_is_exist = {
		457307,
		112,
		true
	},
	guild_guildgold_no_enough_for_battle = {
		457419,
		143,
		true
	},
	guild_event_start_tip1 = {
		457562,
		144,
		true
	},
	guild_event_start_tip2 = {
		457706,
		150,
		true
	},
	guild_word_may_happen_event = {
		457856,
		109,
		true
	},
	guild_battle_award = {
		457965,
		94,
		true
	},
	guild_word_consume = {
		458059,
		88,
		true
	},
	guild_start_event_consume_tip = {
		458147,
		146,
		true
	},
	guild_start_event_consume_tip_extra = {
		458293,
		207,
		true
	},
	guild_word_consume_for_battle = {
		458500,
		111,
		true
	},
	guild_level_no_enough = {
		458611,
		124,
		true
	},
	guild_open_event_info_when_exist_active = {
		458735,
		142,
		true
	},
	guild_join_event_cnt_label = {
		458877,
		109,
		true
	},
	guild_join_event_max_cnt_tip = {
		458986,
		132,
		true
	},
	guild_join_event_progress_label = {
		459118,
		108,
		true
	},
	guild_join_event_exist_finished_mission_tip = {
		459226,
		232,
		true
	},
	guild_event_not_exist = {
		459458,
		106,
		true
	},
	guild_fleet_can_not_edit = {
		459564,
		112,
		true
	},
	guild_fleet_exist_same_kind_ship = {
		459676,
		148,
		true
	},
	guild_event_exist_same_kind_ship = {
		459824,
		130,
		true
	},
	guidl_event_ship_in_event = {
		459954,
		138,
		true
	},
	guild_event_start_done = {
		460092,
		98,
		true
	},
	guild_fleet_update_done = {
		460190,
		105,
		true
	},
	guild_event_is_lock = {
		460295,
		98,
		true
	},
	guild_event_is_finish = {
		460393,
		158,
		true
	},
	guild_fleet_not_save_tip = {
		460551,
		138,
		true
	},
	guild_word_battle_area = {
		460689,
		99,
		true
	},
	guild_word_battle_type = {
		460788,
		99,
		true
	},
	guild_wrod_battle_target = {
		460887,
		101,
		true
	},
	guild_event_recomm_ship_failed = {
		460988,
		124,
		true
	},
	guild_event_start_event_tip = {
		461112,
		137,
		true
	},
	guild_word_sea = {
		461249,
		84,
		true
	},
	guild_word_score_addition = {
		461333,
		102,
		true
	},
	guild_word_effect_addition = {
		461435,
		103,
		true
	},
	guild_curr_fleet_can_not_edit = {
		461538,
		117,
		true
	},
	guild_next_edit_fleet_time = {
		461655,
		119,
		true
	},
	guild_event_info_desc1 = {
		461774,
		136,
		true
	},
	guild_event_info_desc2 = {
		461910,
		119,
		true
	},
	guild_join_member_cnt = {
		462029,
		98,
		true
	},
	guild_total_effect = {
		462127,
		92,
		true
	},
	guild_word_people = {
		462219,
		84,
		true
	},
	guild_event_info_desc3 = {
		462303,
		105,
		true
	},
	guild_not_exist_boss = {
		462408,
		105,
		true
	},
	guild_ship_from = {
		462513,
		86,
		true
	},
	guild_boss_formation_1 = {
		462599,
		130,
		true
	},
	guild_boss_formation_2 = {
		462729,
		130,
		true
	},
	guild_boss_formation_3 = {
		462859,
		125,
		true
	},
	guild_boss_cnt_no_enough = {
		462984,
		106,
		true
	},
	guild_boss_fleet_cnt_invaild = {
		463090,
		125,
		true
	},
	guild_boss_formation_not_exist_self_ship = {
		463215,
		166,
		true
	},
	guild_boss_formation_exist_event_ship = {
		463381,
		155,
		true
	},
	guild_fleet_is_legal = {
		463536,
		144,
		true
	},
	guild_battle_result_boss_is_death = {
		463680,
		149,
		true
	},
	guild_must_edit_fleet = {
		463829,
		109,
		true
	},
	guild_ship_in_battle = {
		463938,
		153,
		true
	},
	guild_ship_in_assult_fleet = {
		464091,
		130,
		true
	},
	guild_event_exist_assult_ship = {
		464221,
		130,
		true
	},
	guild_formation_erro_in_boss_battle = {
		464351,
		151,
		true
	},
	guild_get_report_failed = {
		464502,
		111,
		true
	},
	guild_report_get_all = {
		464613,
		96,
		true
	},
	guild_can_not_get_tip = {
		464709,
		124,
		true
	},
	guild_not_exist_notifycation = {
		464833,
		116,
		true
	},
	guild_exist_report_award_when_exit = {
		464949,
		147,
		true
	},
	guild_report_tooltip = {
		465096,
		179,
		true
	},
	word_guildgold = {
		465275,
		87,
		true
	},
	guild_member_rank_title_donate = {
		465362,
		106,
		true
	},
	guild_member_rank_title_finish_cnt = {
		465468,
		110,
		true
	},
	guild_member_rank_title_join_cnt = {
		465578,
		108,
		true
	},
	guild_donate_log = {
		465686,
		142,
		true
	},
	guild_supply_log = {
		465828,
		139,
		true
	},
	guild_weektask_log = {
		465967,
		133,
		true
	},
	guild_battle_log = {
		466100,
		134,
		true
	},
	guild_tech_change_log = {
		466234,
		119,
		true
	},
	guild_log_title = {
		466353,
		91,
		true
	},
	guild_use_donateitem_success = {
		466444,
		128,
		true
	},
	guild_use_battleitem_success = {
		466572,
		128,
		true
	},
	not_exist_guild_use_item = {
		466700,
		131,
		true
	},
	guild_member_tip = {
		466831,
		2310,
		true
	},
	guild_tech_tip = {
		469141,
		2233,
		true
	},
	guild_office_tip = {
		471374,
		2541,
		true
	},
	guild_event_help_tip = {
		473915,
		2346,
		true
	},
	guild_mission_info_tip = {
		476261,
		1309,
		true
	},
	guild_public_tech_tip = {
		477570,
		531,
		true
	},
	guild_public_office_tip = {
		478101,
		373,
		true
	},
	guild_tech_price_inc_tip = {
		478474,
		242,
		true
	},
	guild_boss_fleet_desc = {
		478716,
		458,
		true
	},
	guild_boss_formation_exist_invaild_ship = {
		479174,
		161,
		true
	},
	guild_exist_unreceived_supply_award = {
		479335,
		127,
		true
	},
	word_shipState_guild_event = {
		479462,
		139,
		true
	},
	word_shipState_guild_boss = {
		479601,
		180,
		true
	},
	commander_is_in_guild = {
		479781,
		182,
		true
	},
	guild_assult_ship_recommend = {
		479963,
		152,
		true
	},
	guild_cancel_assult_ship_recommend = {
		480115,
		159,
		true
	},
	guild_assult_ship_recommend_conflict = {
		480274,
		167,
		true
	},
	guild_recommend_limit = {
		480441,
		144,
		true
	},
	guild_cancel_assult_ship_recommend_conflict = {
		480585,
		183,
		true
	},
	guild_mission_complate = {
		480768,
		112,
		true
	},
	guild_operation_event_occurrence = {
		480880,
		160,
		true
	},
	guild_transfer_president_confirm = {
		481040,
		201,
		true
	},
	guild_damage_ranking = {
		481241,
		90,
		true
	},
	guild_total_damage = {
		481331,
		91,
		true
	},
	guild_donate_list_updated = {
		481422,
		116,
		true
	},
	guild_donate_list_update_failed = {
		481538,
		125,
		true
	},
	guild_tip_quit_operation = {
		481663,
		244,
		true
	},
	guild_tip_grand_fleet_is_frozen = {
		481907,
		141,
		true
	},
	guild_tip_operation_time_is_not_ample = {
		482048,
		236,
		true
	},
	guild_time_remaining_tip = {
		482284,
		107,
		true
	},
	help_rollingBallGame = {
		482391,
		1086,
		true
	},
	rolling_ball_help = {
		483477,
		691,
		true
	},
	help_jiujiu_expedition_game = {
		484168,
		609,
		true
	},
	jiujiu_expedition_game_stg_desc = {
		484777,
		112,
		true
	},
	build_ship_accumulative = {
		484889,
		100,
		true
	},
	destory_ship_before_tip = {
		484989,
		99,
		true
	},
	destory_ship_input_erro = {
		485088,
		133,
		true
	},
	destroy_ur_rarity_tip = {
		485221,
		182,
		true
	},
	destory_ur_pt_overflowa = {
		485403,
		231,
		true
	},
	jiujiu_expedition_help = {
		485634,
		561,
		true
	},
	shop_label_unlimt_cnt = {
		486195,
		100,
		true
	},
	jiujiu_expedition_book_tip = {
		486295,
		130,
		true
	},
	jiujiu_expedition_reward_tip = {
		486425,
		128,
		true
	},
	jiujiu_expedition_amount_tip = {
		486553,
		147,
		true
	},
	jiujiu_expedition_stg_tip = {
		486700,
		128,
		true
	},
	trade_card_tips1 = {
		486828,
		92,
		true
	},
	trade_card_tips2 = {
		486920,
		327,
		true
	},
	trade_card_tips3 = {
		487247,
		324,
		true
	},
	trade_card_tips4 = {
		487571,
		95,
		true
	},
	ur_exchange_help_tip = {
		487666,
		771,
		true
	},
	fleet_antisub_range = {
		488437,
		95,
		true
	},
	fleet_antisub_range_tip = {
		488532,
		1424,
		true
	},
	practise_idol_tip = {
		489956,
		107,
		true
	},
	practise_idol_help = {
		490063,
		937,
		true
	},
	upgrade_idol_tip = {
		491000,
		113,
		true
	},
	upgrade_complete_tip = {
		491113,
		99,
		true
	},
	upgrade_introduce_tip = {
		491212,
		123,
		true
	},
	collect_idol_tip = {
		491335,
		122,
		true
	},
	hand_account_tip = {
		491457,
		107,
		true
	},
	hand_account_resetting_tip = {
		491564,
		117,
		true
	},
	help_candymagic = {
		491681,
		961,
		true
	},
	award_overflow_tip = {
		492642,
		140,
		true
	},
	hunter_npc = {
		492782,
		901,
		true
	},
	fighterplane_help = {
		493683,
		931,
		true
	},
	fighterplane_J10_tip = {
		494614,
		276,
		true
	},
	fighterplane_J15_tip = {
		494890,
		513,
		true
	},
	fighterplane_FC1_tip = {
		495403,
		457,
		true
	},
	fighterplane_FC31_tip = {
		495860,
		378,
		true
	},
	fighterplane_complete_tip = {
		496238,
		204,
		true
	},
	fighterplane_destroy_tip = {
		496442,
		102,
		true
	},
	fighterplane_hit_tip = {
		496544,
		101,
		true
	},
	fighterplane_score_tip = {
		496645,
		92,
		true
	},
	venusvolleyball_help = {
		496737,
		1100,
		true
	},
	venusvolleyball_rule_tip = {
		497837,
		99,
		true
	},
	venusvolleyball_return_tip = {
		497936,
		111,
		true
	},
	venusvolleyball_suspend_tip = {
		498047,
		112,
		true
	},
	doa_main = {
		498159,
		1227,
		true
	},
	doa_pt_help = {
		499386,
		818,
		true
	},
	doa_pt_complete = {
		500204,
		94,
		true
	},
	doa_pt_up = {
		500298,
		97,
		true
	},
	doa_liliang = {
		500395,
		81,
		true
	},
	doa_jiqiao = {
		500476,
		80,
		true
	},
	doa_tili = {
		500556,
		78,
		true
	},
	doa_meili = {
		500634,
		79,
		true
	},
	snowball_help = {
		500713,
		1488,
		true
	},
	help_xinnian2021_feast = {
		502201,
		500,
		true
	},
	help_xinnian2021__qiaozhong = {
		502701,
		1153,
		true
	},
	help_xinnian2021__meishiyemian = {
		503854,
		687,
		true
	},
	help_xinnian2021__meishi = {
		504541,
		1222,
		true
	},
	help_act_event = {
		505763,
		286,
		true
	},
	autofight = {
		506049,
		85,
		true
	},
	autofight_errors_tip = {
		506134,
		139,
		true
	},
	autofight_special_operation_tip = {
		506273,
		358,
		true
	},
	autofight_formation = {
		506631,
		89,
		true
	},
	autofight_cat = {
		506720,
		86,
		true
	},
	autofight_function = {
		506806,
		88,
		true
	},
	autofight_function1 = {
		506894,
		95,
		true
	},
	autofight_function2 = {
		506989,
		95,
		true
	},
	autofight_function3 = {
		507084,
		95,
		true
	},
	autofight_function4 = {
		507179,
		89,
		true
	},
	autofight_function5 = {
		507268,
		101,
		true
	},
	autofight_rewards = {
		507369,
		99,
		true
	},
	autofight_rewards_none = {
		507468,
		113,
		true
	},
	autofight_leave = {
		507581,
		85,
		true
	},
	autofight_onceagain = {
		507666,
		95,
		true
	},
	autofight_entrust = {
		507761,
		116,
		true
	},
	autofight_task = {
		507877,
		107,
		true
	},
	autofight_effect = {
		507984,
		131,
		true
	},
	autofight_file = {
		508115,
		110,
		true
	},
	autofight_discovery = {
		508225,
		124,
		true
	},
	autofight_tip_bigworld_dead = {
		508349,
		140,
		true
	},
	autofight_tip_bigworld_begin = {
		508489,
		128,
		true
	},
	autofight_tip_bigworld_stop = {
		508617,
		127,
		true
	},
	autofight_tip_bigworld_suspend = {
		508744,
		167,
		true
	},
	autofight_tip_bigworld_loop = {
		508911,
		143,
		true
	},
	autofight_farm = {
		509054,
		90,
		true
	},
	autofight_story = {
		509144,
		118,
		true
	},
	fushun_adventure_help = {
		509262,
		1774,
		true
	},
	autofight_change_tip = {
		511036,
		165,
		true
	},
	autofight_selectprops_tip = {
		511201,
		114,
		true
	},
	help_chunjie2021_feast = {
		511315,
		759,
		true
	},
	valentinesday__txt1_tip = {
		512074,
		157,
		true
	},
	valentinesday__txt2_tip = {
		512231,
		157,
		true
	},
	valentinesday__txt3_tip = {
		512388,
		145,
		true
	},
	valentinesday__txt4_tip = {
		512533,
		145,
		true
	},
	valentinesday__txt5_tip = {
		512678,
		163,
		true
	},
	valentinesday__txt6_tip = {
		512841,
		151,
		true
	},
	valentinesday__shop_tip = {
		512992,
		120,
		true
	},
	wwf_bamboo_tip1 = {
		513112,
		109,
		true
	},
	wwf_bamboo_tip2 = {
		513221,
		109,
		true
	},
	wwf_bamboo_tip3 = {
		513330,
		121,
		true
	},
	wwf_bamboo_help = {
		513451,
		760,
		true
	},
	wwf_guide_tip = {
		514211,
		152,
		true
	},
	securitycake_help = {
		514363,
		1537,
		true
	},
	icecream_help = {
		515900,
		800,
		true
	},
	icecream_make_tip = {
		516700,
		92,
		true
	},
	cadpa_help = {
		516792,
		1225,
		true
	},
	cadpa_tip1 = {
		518017,
		86,
		true
	},
	cadpa_tip2 = {
		518103,
		85,
		true
	},
	query_role = {
		518188,
		83,
		true
	},
	query_role_none = {
		518271,
		88,
		true
	},
	query_role_button = {
		518359,
		93,
		true
	},
	query_role_fail = {
		518452,
		91,
		true
	},
	cumulative_victory_target_tip = {
		518543,
		114,
		true
	},
	cumulative_victory_now_tip = {
		518657,
		111,
		true
	},
	word_files_repair = {
		518768,
		93,
		true
	},
	repair_setting_label = {
		518861,
		96,
		true
	},
	voice_control = {
		518957,
		83,
		true
	},
	index_equip = {
		519040,
		84,
		true
	},
	index_without_limit = {
		519124,
		92,
		true
	},
	meta_learn_skill = {
		519216,
		108,
		true
	},
	world_joint_boss_not_found = {
		519324,
		139,
		true
	},
	world_joint_boss_is_death = {
		519463,
		138,
		true
	},
	world_joint_whitout_guild = {
		519601,
		116,
		true
	},
	world_joint_whitout_friend = {
		519717,
		114,
		true
	},
	world_joint_call_support_failed = {
		519831,
		116,
		true
	},
	world_joint_call_support_success = {
		519947,
		117,
		true
	},
	world_joint_call_friend_support_txt = {
		520064,
		163,
		true
	},
	world_joint_call_guild_support_txt = {
		520227,
		171,
		true
	},
	world_joint_call_world_support_txt = {
		520398,
		165,
		true
	},
	ad_4 = {
		520563,
		211,
		true
	},
	world_word_expired = {
		520774,
		97,
		true
	},
	world_word_guild_member = {
		520871,
		113,
		true
	},
	world_word_guild_player = {
		520984,
		104,
		true
	},
	world_joint_boss_award_expired = {
		521088,
		112,
		true
	},
	world_joint_not_refresh_frequently = {
		521200,
		116,
		true
	},
	world_joint_exit_battle_tip = {
		521316,
		140,
		true
	},
	world_boss_get_item = {
		521456,
		171,
		true
	},
	world_boss_ask_help = {
		521627,
		119,
		true
	},
	world_joint_count_no_enough = {
		521746,
		115,
		true
	},
	world_boss_none = {
		521861,
		146,
		true
	},
	world_boss_fleet = {
		522007,
		92,
		true
	},
	world_max_challenge_cnt = {
		522099,
		145,
		true
	},
	world_reset_success = {
		522244,
		104,
		true
	},
	world_map_dangerous_confirm = {
		522348,
		183,
		true
	},
	world_map_version = {
		522531,
		120,
		true
	},
	world_resource_fill = {
		522651,
		128,
		true
	},
	meta_sys_lock_tip = {
		522779,
		160,
		true
	},
	meta_story_lock = {
		522939,
		139,
		true
	},
	meta_acttime_limit = {
		523078,
		88,
		true
	},
	meta_pt_left = {
		523166,
		87,
		true
	},
	meta_syn_rate = {
		523253,
		92,
		true
	},
	meta_repair_rate = {
		523345,
		95,
		true
	},
	meta_story_tip_1 = {
		523440,
		103,
		true
	},
	meta_story_tip_2 = {
		523543,
		100,
		true
	},
	meta_pt_get_way = {
		523643,
		130,
		true
	},
	meta_pt_point = {
		523773,
		86,
		true
	},
	meta_award_get = {
		523859,
		87,
		true
	},
	meta_award_got = {
		523946,
		87,
		true
	},
	meta_repair = {
		524033,
		88,
		true
	},
	meta_repair_success = {
		524121,
		101,
		true
	},
	meta_repair_effect_unlock = {
		524222,
		110,
		true
	},
	meta_repair_effect_special = {
		524332,
		130,
		true
	},
	meta_energy_ship_level_need = {
		524462,
		116,
		true
	},
	meta_energy_ship_repairrate_need = {
		524578,
		124,
		true
	},
	meta_energy_active_box_tip = {
		524702,
		165,
		true
	},
	meta_break = {
		524867,
		108,
		true
	},
	meta_energy_preview_title = {
		524975,
		119,
		true
	},
	meta_energy_preview_tip = {
		525094,
		131,
		true
	},
	meta_exp_per_day = {
		525225,
		92,
		true
	},
	meta_skill_unlock = {
		525317,
		117,
		true
	},
	meta_unlock_skill_tip = {
		525434,
		155,
		true
	},
	meta_unlock_skill_select = {
		525589,
		123,
		true
	},
	meta_switch_skill_disable = {
		525712,
		139,
		true
	},
	meta_switch_skill_box_title = {
		525851,
		124,
		true
	},
	meta_cur_pt = {
		525975,
		90,
		true
	},
	meta_toast_fullexp = {
		526065,
		106,
		true
	},
	meta_toast_tactics = {
		526171,
		91,
		true
	},
	meta_skillbtn_tactics = {
		526262,
		92,
		true
	},
	meta_destroy_tip = {
		526354,
		105,
		true
	},
	meta_voice_name_feeling1 = {
		526459,
		94,
		true
	},
	meta_voice_name_feeling2 = {
		526553,
		94,
		true
	},
	meta_voice_name_feeling3 = {
		526647,
		94,
		true
	},
	meta_voice_name_feeling4 = {
		526741,
		94,
		true
	},
	meta_voice_name_feeling5 = {
		526835,
		94,
		true
	},
	meta_voice_name_propose = {
		526929,
		93,
		true
	},
	world_boss_ad = {
		527022,
		88,
		true
	},
	world_boss_drop_title = {
		527110,
		108,
		true
	},
	world_boss_pt_recove_desc = {
		527218,
		122,
		true
	},
	world_boss_progress_item_desc = {
		527340,
		373,
		true
	},
	world_joint_max_challenge_people_cnt = {
		527713,
		143,
		true
	},
	equip_ammo_type_1 = {
		527856,
		90,
		true
	},
	equip_ammo_type_2 = {
		527946,
		90,
		true
	},
	equip_ammo_type_3 = {
		528036,
		90,
		true
	},
	equip_ammo_type_4 = {
		528126,
		87,
		true
	},
	equip_ammo_type_5 = {
		528213,
		87,
		true
	},
	equip_ammo_type_6 = {
		528300,
		90,
		true
	},
	equip_ammo_type_7 = {
		528390,
		93,
		true
	},
	equip_ammo_type_8 = {
		528483,
		90,
		true
	},
	equip_ammo_type_9 = {
		528573,
		90,
		true
	},
	equip_ammo_type_10 = {
		528663,
		85,
		true
	},
	equip_ammo_type_11 = {
		528748,
		88,
		true
	},
	common_daily_limit = {
		528836,
		105,
		true
	},
	meta_help = {
		528941,
		2340,
		true
	},
	world_boss_daily_limit = {
		531281,
		104,
		true
	},
	common_go_to_analyze = {
		531385,
		96,
		true
	},
	world_boss_not_reach_target = {
		531481,
		115,
		true
	},
	special_transform_limit_reach = {
		531596,
		163,
		true
	},
	meta_pt_notenough = {
		531759,
		180,
		true
	},
	meta_boss_unlock = {
		531939,
		182,
		true
	},
	word_take_effect = {
		532121,
		86,
		true
	},
	world_boss_challenge_cnt = {
		532207,
		100,
		true
	},
	word_shipNation_meta = {
		532307,
		87,
		true
	},
	world_word_friend = {
		532394,
		87,
		true
	},
	world_word_world = {
		532481,
		86,
		true
	},
	world_word_guild = {
		532567,
		89,
		true
	},
	world_collection_1 = {
		532656,
		94,
		true
	},
	world_collection_2 = {
		532750,
		88,
		true
	},
	world_collection_3 = {
		532838,
		91,
		true
	},
	zero_hour_command_error = {
		532929,
		111,
		true
	},
	commander_is_in_bigworld = {
		533040,
		118,
		true
	},
	world_collection_back = {
		533158,
		106,
		true
	},
	archives_whether_to_retreat = {
		533264,
		168,
		true
	},
	world_fleet_stop = {
		533432,
		104,
		true
	},
	world_setting_title = {
		533536,
		101,
		true
	},
	world_setting_quickmode = {
		533637,
		101,
		true
	},
	world_setting_quickmodetip = {
		533738,
		144,
		true
	},
	world_setting_submititem = {
		533882,
		115,
		true
	},
	world_setting_submititemtip = {
		533997,
		158,
		true
	},
	world_setting_mapauto = {
		534155,
		115,
		true
	},
	world_setting_mapautotip = {
		534270,
		158,
		true
	},
	world_boss_maintenance = {
		534428,
		139,
		true
	},
	world_boss_inbattle = {
		534567,
		119,
		true
	},
	world_automode_title_1 = {
		534686,
		104,
		true
	},
	world_automode_title_2 = {
		534790,
		95,
		true
	},
	world_automode_treasure_1 = {
		534885,
		132,
		true
	},
	world_automode_treasure_2 = {
		535017,
		132,
		true
	},
	world_automode_treasure_3 = {
		535149,
		128,
		true
	},
	world_automode_cancel = {
		535277,
		91,
		true
	},
	world_automode_confirm = {
		535368,
		92,
		true
	},
	world_automode_start_tip1 = {
		535460,
		119,
		true
	},
	world_automode_start_tip2 = {
		535579,
		104,
		true
	},
	world_automode_start_tip3 = {
		535683,
		122,
		true
	},
	world_automode_start_tip4 = {
		535805,
		113,
		true
	},
	world_automode_start_tip5 = {
		535918,
		144,
		true
	},
	world_automode_setting_1 = {
		536062,
		115,
		true
	},
	world_automode_setting_1_1 = {
		536177,
		100,
		true
	},
	world_automode_setting_1_2 = {
		536277,
		91,
		true
	},
	world_automode_setting_1_3 = {
		536368,
		91,
		true
	},
	world_automode_setting_1_4 = {
		536459,
		96,
		true
	},
	world_automode_setting_2 = {
		536555,
		112,
		true
	},
	world_automode_setting_2_1 = {
		536667,
		108,
		true
	},
	world_automode_setting_2_2 = {
		536775,
		111,
		true
	},
	world_automode_setting_all_1 = {
		536886,
		119,
		true
	},
	world_automode_setting_all_1_1 = {
		537005,
		97,
		true
	},
	world_automode_setting_all_1_2 = {
		537102,
		97,
		true
	},
	world_automode_setting_all_2 = {
		537199,
		116,
		true
	},
	world_automode_setting_all_2_1 = {
		537315,
		97,
		true
	},
	world_automode_setting_all_2_2 = {
		537412,
		109,
		true
	},
	world_automode_setting_all_2_3 = {
		537521,
		109,
		true
	},
	world_automode_setting_all_3 = {
		537630,
		119,
		true
	},
	world_automode_setting_all_3_1 = {
		537749,
		97,
		true
	},
	world_automode_setting_all_3_2 = {
		537846,
		97,
		true
	},
	world_automode_setting_all_4 = {
		537943,
		119,
		true
	},
	world_automode_setting_all_4_1 = {
		538062,
		97,
		true
	},
	world_automode_setting_all_4_2 = {
		538159,
		97,
		true
	},
	world_automode_setting_new_1 = {
		538256,
		119,
		true
	},
	world_automode_setting_new_1_1 = {
		538375,
		104,
		true
	},
	world_automode_setting_new_1_2 = {
		538479,
		95,
		true
	},
	world_automode_setting_new_1_3 = {
		538574,
		95,
		true
	},
	world_automode_setting_new_1_4 = {
		538669,
		95,
		true
	},
	world_automode_setting_new_1_5 = {
		538764,
		100,
		true
	},
	world_collection_task_tip_1 = {
		538864,
		152,
		true
	},
	area_putong = {
		539016,
		87,
		true
	},
	area_anquan = {
		539103,
		87,
		true
	},
	area_yaosai = {
		539190,
		87,
		true
	},
	area_yaosai_2 = {
		539277,
		107,
		true
	},
	area_shenyuan = {
		539384,
		89,
		true
	},
	area_yinmi = {
		539473,
		86,
		true
	},
	area_renwu = {
		539559,
		86,
		true
	},
	area_zhuxian = {
		539645,
		88,
		true
	},
	area_dangan = {
		539733,
		87,
		true
	},
	charge_trade_no_error = {
		539820,
		126,
		true
	},
	world_reset_1 = {
		539946,
		130,
		true
	},
	world_reset_2 = {
		540076,
		136,
		true
	},
	world_reset_3 = {
		540212,
		116,
		true
	},
	guild_is_frozen_when_start_tech = {
		540328,
		141,
		true
	},
	world_boss_unactivated = {
		540469,
		128,
		true
	},
	world_reset_tip = {
		540597,
		2572,
		true
	},
	spring_invited_2021 = {
		543169,
		217,
		true
	},
	charge_error_count_limit = {
		543386,
		149,
		true
	},
	charge_error_disable = {
		543535,
		120,
		true
	},
	levelScene_select_sp = {
		543655,
		120,
		true
	},
	word_adjustFleet = {
		543775,
		92,
		true
	},
	levelScene_select_noitem = {
		543867,
		112,
		true
	},
	story_setting_label = {
		543979,
		113,
		true
	},
	login_arrears_tips = {
		544092,
		154,
		true
	},
	Supplement_pay1 = {
		544246,
		195,
		true
	},
	Supplement_pay2 = {
		544441,
		146,
		true
	},
	Supplement_pay3 = {
		544587,
		237,
		true
	},
	Supplement_pay4 = {
		544824,
		91,
		true
	},
	world_ship_repair = {
		544915,
		114,
		true
	},
	Supplement_pay5 = {
		545029,
		143,
		true
	},
	area_unkown = {
		545172,
		87,
		true
	},
	Supplement_pay6 = {
		545259,
		94,
		true
	},
	Supplement_pay7 = {
		545353,
		94,
		true
	},
	Supplement_pay8 = {
		545447,
		88,
		true
	},
	world_battle_damage = {
		545535,
		164,
		true
	},
	setting_story_speed_1 = {
		545699,
		88,
		true
	},
	setting_story_speed_2 = {
		545787,
		91,
		true
	},
	setting_story_speed_3 = {
		545878,
		88,
		true
	},
	setting_story_speed_4 = {
		545966,
		91,
		true
	},
	story_autoplay_setting_label = {
		546057,
		110,
		true
	},
	story_autoplay_setting_1 = {
		546167,
		94,
		true
	},
	story_autoplay_setting_2 = {
		546261,
		94,
		true
	},
	meta_shop_exchange_limit = {
		546355,
		103,
		true
	},
	meta_shop_unexchange_label = {
		546458,
		108,
		true
	},
	daily_level_quick_battle_label2 = {
		546566,
		101,
		true
	},
	daily_level_quick_battle_label1 = {
		546667,
		131,
		true
	},
	dailyLevel_quickfinish = {
		546798,
		335,
		true
	},
	daily_level_quick_battle_label3 = {
		547133,
		107,
		true
	},
	backyard_longpress_ship_tip = {
		547240,
		134,
		true
	},
	common_npc_formation_tip = {
		547374,
		124,
		true
	},
	gametip_xiaotiancheng = {
		547498,
		1012,
		true
	},
	guild_task_autoaccept_1 = {
		548510,
		122,
		true
	},
	guild_task_autoaccept_2 = {
		548632,
		122,
		true
	},
	task_lock = {
		548754,
		85,
		true
	},
	week_task_pt_name = {
		548839,
		90,
		true
	},
	week_task_award_preview_label = {
		548929,
		105,
		true
	},
	week_task_title_label = {
		549034,
		103,
		true
	},
	cattery_op_clean_success = {
		549137,
		100,
		true
	},
	cattery_op_feed_success = {
		549237,
		99,
		true
	},
	cattery_op_play_success = {
		549336,
		99,
		true
	},
	cattery_style_change_success = {
		549435,
		104,
		true
	},
	cattery_add_commander_success = {
		549539,
		114,
		true
	},
	cattery_remove_commander_success = {
		549653,
		117,
		true
	},
	commander_box_quickly_tool_tip_1 = {
		549770,
		136,
		true
	},
	commander_box_quickly_tool_tip_2 = {
		549906,
		132,
		true
	},
	commander_box_quickly_tool_tip_3 = {
		550038,
		111,
		true
	},
	commander_box_was_finished = {
		550149,
		114,
		true
	},
	comander_tool_cnt_is_reclac = {
		550263,
		118,
		true
	},
	comander_tool_max_cnt = {
		550381,
		105,
		true
	},
	cat_home_help = {
		550486,
		925,
		true
	},
	cat_accelfrate_notenough = {
		551411,
		124,
		true
	},
	cat_home_unlock = {
		551535,
		121,
		true
	},
	cat_sleep_notplay = {
		551656,
		126,
		true
	},
	cathome_style_unlock = {
		551782,
		126,
		true
	},
	commander_is_in_cattery = {
		551908,
		120,
		true
	},
	cat_home_interaction = {
		552028,
		110,
		true
	},
	cat_accelerate_left = {
		552138,
		101,
		true
	},
	common_clean = {
		552239,
		82,
		true
	},
	common_feed = {
		552321,
		81,
		true
	},
	common_play = {
		552402,
		81,
		true
	},
	game_stopwords = {
		552483,
		105,
		true
	},
	game_openwords = {
		552588,
		105,
		true
	},
	amusementpark_shop_enter = {
		552693,
		149,
		true
	},
	amusementpark_shop_exchange = {
		552842,
		189,
		true
	},
	amusementpark_shop_success = {
		553031,
		105,
		true
	},
	amusementpark_shop_special = {
		553136,
		143,
		true
	},
	amusementpark_shop_end = {
		553279,
		138,
		true
	},
	amusementpark_shop_0 = {
		553417,
		139,
		true
	},
	amusementpark_shop_carousel1 = {
		553556,
		159,
		true
	},
	amusementpark_shop_carousel2 = {
		553715,
		159,
		true
	},
	amusementpark_shop_carousel3 = {
		553874,
		139,
		true
	},
	amusementpark_shop_exchange2 = {
		554013,
		180,
		true
	},
	amusementpark_help = {
		554193,
		1043,
		true
	},
	amusementpark_shop_help = {
		555236,
		608,
		true
	},
	handshake_game_help = {
		555844,
		966,
		true
	},
	MeixiV4_help = {
		556810,
		792,
		true
	},
	activity_permanent_total = {
		557602,
		100,
		true
	},
	word_investigate = {
		557702,
		86,
		true
	},
	ambush_display_none = {
		557788,
		86,
		true
	},
	activity_permanent_help = {
		557874,
		386,
		true
	},
	activity_permanent_tips1 = {
		558260,
		157,
		true
	},
	activity_permanent_tips2 = {
		558417,
		164,
		true
	},
	activity_permanent_tips3 = {
		558581,
		146,
		true
	},
	activity_permanent_tips4 = {
		558727,
		214,
		true
	},
	activity_permanent_finished = {
		558941,
		100,
		true
	},
	idolmaster_main = {
		559041,
		1095,
		true
	},
	idolmaster_game_tip1 = {
		560136,
		103,
		true
	},
	idolmaster_game_tip2 = {
		560239,
		103,
		true
	},
	idolmaster_game_tip3 = {
		560342,
		98,
		true
	},
	idolmaster_game_tip4 = {
		560440,
		98,
		true
	},
	idolmaster_game_tip5 = {
		560538,
		92,
		true
	},
	idolmaster_collection = {
		560630,
		539,
		true
	},
	idolmaster_voice_name_feeling1 = {
		561169,
		100,
		true
	},
	idolmaster_voice_name_feeling2 = {
		561269,
		100,
		true
	},
	idolmaster_voice_name_feeling3 = {
		561369,
		100,
		true
	},
	idolmaster_voice_name_feeling4 = {
		561469,
		100,
		true
	},
	idolmaster_voice_name_feeling5 = {
		561569,
		100,
		true
	},
	idolmaster_voice_name_propose = {
		561669,
		99,
		true
	},
	cartoon_notall = {
		561768,
		84,
		true
	},
	cartoon_haveno = {
		561852,
		105,
		true
	},
	res_cartoon_new_tip = {
		561957,
		115,
		true
	},
	memory_actiivty_ex = {
		562072,
		86,
		true
	},
	memory_activity_sp = {
		562158,
		86,
		true
	},
	memory_activity_daily = {
		562244,
		91,
		true
	},
	memory_activity_others = {
		562335,
		92,
		true
	},
	battle_end_title = {
		562427,
		92,
		true
	},
	battle_end_subtitle1 = {
		562519,
		96,
		true
	},
	battle_end_subtitle2 = {
		562615,
		96,
		true
	},
	meta_skill_dailyexp = {
		562711,
		104,
		true
	},
	meta_skill_learn = {
		562815,
		119,
		true
	},
	meta_skill_maxtip = {
		562934,
		153,
		true
	},
	meta_tactics_detail = {
		563087,
		95,
		true
	},
	meta_tactics_unlock = {
		563182,
		95,
		true
	},
	meta_tactics_switch = {
		563277,
		95,
		true
	},
	meta_skill_maxtip2 = {
		563372,
		100,
		true
	},
	activity_permanent_progress = {
		563472,
		100,
		true
	},
	cattery_settlement_dialogue_1 = {
		563572,
		111,
		true
	},
	cattery_settlement_dialogue_2 = {
		563683,
		134,
		true
	},
	cattery_settlement_dialogue_3 = {
		563817,
		102,
		true
	},
	cattery_settlement_dialogue_4 = {
		563919,
		106,
		true
	},
	blueprint_catchup_by_gold_confirm = {
		564025,
		154,
		true
	},
	blueprint_catchup_by_gold_help = {
		564179,
		318,
		true
	},
	tec_tip_no_consumption = {
		564497,
		95,
		true
	},
	tec_tip_material_stock = {
		564592,
		92,
		true
	},
	tec_tip_to_consumption = {
		564684,
		98,
		true
	},
	onebutton_max_tip = {
		564782,
		90,
		true
	},
	target_get_tip = {
		564872,
		84,
		true
	},
	fleet_select_title = {
		564956,
		94,
		true
	},
	backyard_rename_title = {
		565050,
		97,
		true
	},
	backyard_rename_tip = {
		565147,
		101,
		true
	},
	equip_add = {
		565248,
		99,
		true
	},
	equipskin_add = {
		565347,
		109,
		true
	},
	equipskin_none = {
		565456,
		113,
		true
	},
	equipskin_typewrong = {
		565569,
		121,
		true
	},
	equipskin_typewrong_en = {
		565690,
		107,
		true
	},
	user_is_banned = {
		565797,
		121,
		true
	},
	user_is_forever_banned = {
		565918,
		104,
		true
	},
	old_class_is_close = {
		566022,
		134,
		true
	},
	activity_event_building = {
		566156,
		1087,
		true
	},
	salvage_tips = {
		567243,
		799,
		true
	},
	tips_shakebeads = {
		568042,
		757,
		true
	},
	gem_shop_xinzhi_tip = {
		568799,
		138,
		true
	},
	cowboy_tips = {
		568937,
		747,
		true
	},
	backyard_backyardScene_Disable_Rotation = {
		569684,
		124,
		true
	},
	chazi_tips = {
		569808,
		792,
		true
	},
	catchteasure_help = {
		570600,
		700,
		true
	},
	unlock_tips = {
		571300,
		97,
		true
	},
	class_label_tran = {
		571397,
		87,
		true
	},
	class_label_gen = {
		571484,
		89,
		true
	},
	class_attr_store = {
		571573,
		92,
		true
	},
	class_attr_proficiency = {
		571665,
		101,
		true
	},
	class_attr_getproficiency = {
		571766,
		104,
		true
	},
	class_attr_costproficiency = {
		571870,
		105,
		true
	},
	class_label_upgrading = {
		571975,
		94,
		true
	},
	class_label_upgradetime = {
		572069,
		99,
		true
	},
	class_label_oilfield = {
		572168,
		96,
		true
	},
	class_label_goldfield = {
		572264,
		97,
		true
	},
	class_res_maxlevel_tip = {
		572361,
		104,
		true
	},
	ship_exp_item_title = {
		572465,
		95,
		true
	},
	ship_exp_item_label_clear = {
		572560,
		96,
		true
	},
	ship_exp_item_label_recom = {
		572656,
		96,
		true
	},
	ship_exp_item_label_confirm = {
		572752,
		98,
		true
	},
	player_expResource_mail_fullBag = {
		572850,
		180,
		true
	},
	tec_nation_award_finish = {
		573030,
		100,
		true
	},
	coures_exp_overflow_tip = {
		573130,
		155,
		true
	},
	coures_exp_npc_tip = {
		573285,
		179,
		true
	},
	coures_level_tip = {
		573464,
		160,
		true
	},
	coures_tip_material_stock = {
		573624,
		98,
		true
	},
	coures_tip_exceeded_lv = {
		573722,
		110,
		true
	},
	eatgame_tips = {
		573832,
		1055,
		true
	},
	breakout_tip_ultimatebonus_gunner = {
		574887,
		159,
		true
	},
	breakout_tip_ultimatebonus_torpedo = {
		575046,
		141,
		true
	},
	breakout_tip_ultimatebonus_aux = {
		575187,
		137,
		true
	},
	map_event_lighthouse_tip_1 = {
		575324,
		151,
		true
	},
	battlepass_main_tip_2110 = {
		575475,
		238,
		true
	},
	battlepass_main_time = {
		575713,
		94,
		true
	},
	battlepass_main_help_2110 = {
		575807,
		2927,
		true
	},
	cruise_task_help_2110 = {
		578734,
		1226,
		true
	},
	cruise_task_phase = {
		579960,
		104,
		true
	},
	cruise_task_tips = {
		580064,
		92,
		true
	},
	battlepass_task_quickfinish1 = {
		580156,
		254,
		true
	},
	battlepass_task_quickfinish2 = {
		580410,
		209,
		true
	},
	battlepass_task_quickfinish3 = {
		580619,
		110,
		true
	},
	cruise_task_unlock = {
		580729,
		119,
		true
	},
	cruise_task_week = {
		580848,
		88,
		true
	},
	battlepass_pay_timelimit = {
		580936,
		99,
		true
	},
	battlepass_pay_acquire = {
		581035,
		110,
		true
	},
	battlepass_pay_attention = {
		581145,
		134,
		true
	},
	battlepass_acquire_attention = {
		581279,
		160,
		true
	},
	battlepass_pay_tip = {
		581439,
		118,
		true
	},
	battlepass_main_tip1 = {
		581557,
		300,
		true
	},
	battlepass_main_tip2 = {
		581857,
		266,
		true
	},
	battlepass_main_tip3 = {
		582123,
		300,
		true
	},
	battlepass_complete = {
		582423,
		110,
		true
	},
	shop_free_tag = {
		582533,
		83,
		true
	},
	quick_equip_tip1 = {
		582616,
		89,
		true
	},
	quick_equip_tip2 = {
		582705,
		86,
		true
	},
	quick_equip_tip3 = {
		582791,
		86,
		true
	},
	quick_equip_tip4 = {
		582877,
		107,
		true
	},
	quick_equip_tip5 = {
		582984,
		125,
		true
	},
	quick_equip_tip6 = {
		583109,
		170,
		true
	},
	retire_importantequipment_tips = {
		583279,
		155,
		true
	},
	settle_rewards_title = {
		583434,
		102,
		true
	},
	settle_rewards_subtitle = {
		583536,
		101,
		true
	},
	total_rewards_subtitle = {
		583637,
		99,
		true
	},
	settle_rewards_text = {
		583736,
		95,
		true
	},
	use_oil_limit_help = {
		583831,
		254,
		true
	},
	formationScene_use_oil_limit_tip = {
		584085,
		117,
		true
	},
	index_awakening2 = {
		584202,
		130,
		true
	},
	index_upgrade = {
		584332,
		86,
		true
	},
	formationScene_use_oil_limit_enemy = {
		584418,
		104,
		true
	},
	formationScene_use_oil_limit_flagship = {
		584522,
		107,
		true
	},
	formationScene_use_oil_limit_submarine = {
		584629,
		108,
		true
	},
	formationScene_use_oil_limit_surface = {
		584737,
		106,
		true
	},
	formationScene_use_oil_limit_tip_worldboss = {
		584843,
		119,
		true
	},
	attr_durability = {
		584962,
		85,
		true
	},
	attr_armor = {
		585047,
		80,
		true
	},
	attr_reload = {
		585127,
		81,
		true
	},
	attr_cannon = {
		585208,
		81,
		true
	},
	attr_torpedo = {
		585289,
		82,
		true
	},
	attr_motion = {
		585371,
		81,
		true
	},
	attr_antiaircraft = {
		585452,
		87,
		true
	},
	attr_air = {
		585539,
		78,
		true
	},
	attr_hit = {
		585617,
		78,
		true
	},
	attr_antisub = {
		585695,
		82,
		true
	},
	attr_oxy_max = {
		585777,
		82,
		true
	},
	attr_ammo = {
		585859,
		82,
		true
	},
	attr_hunting_range = {
		585941,
		94,
		true
	},
	attr_luck = {
		586035,
		79,
		true
	},
	attr_consume = {
		586114,
		82,
		true
	},
	attr_speed = {
		586196,
		80,
		true
	},
	monthly_card_tip = {
		586276,
		103,
		true
	},
	shopping_error_time_limit = {
		586379,
		162,
		true
	},
	world_total_power = {
		586541,
		90,
		true
	},
	world_mileage = {
		586631,
		89,
		true
	},
	world_pressing = {
		586720,
		90,
		true
	},
	Settings_title_FPS = {
		586810,
		94,
		true
	},
	Settings_title_Notification = {
		586904,
		109,
		true
	},
	Settings_title_Other = {
		587013,
		96,
		true
	},
	Settings_title_LoginJP = {
		587109,
		95,
		true
	},
	Settings_title_Redeem = {
		587204,
		94,
		true
	},
	Settings_title_AdjustScr = {
		587298,
		103,
		true
	},
	Settings_title_Secpw = {
		587401,
		96,
		true
	},
	Settings_title_Secpwlimop = {
		587497,
		113,
		true
	},
	Settings_title_agreement = {
		587610,
		100,
		true
	},
	Settings_title_sound = {
		587710,
		96,
		true
	},
	Settings_title_resUpdate = {
		587806,
		100,
		true
	},
	equipment_info_change_tip = {
		587906,
		116,
		true
	},
	equipment_info_change_name_a = {
		588022,
		119,
		true
	},
	equipment_info_change_name_b = {
		588141,
		119,
		true
	},
	equipment_info_change_text_before = {
		588260,
		106,
		true
	},
	equipment_info_change_text_after = {
		588366,
		105,
		true
	},
	world_boss_progress_tip_title = {
		588471,
		117,
		true
	},
	world_boss_progress_tip_desc = {
		588588,
		286,
		true
	},
	ssss_main_help = {
		588874,
		1030,
		true
	},
	mini_game_time = {
		589904,
		88,
		true
	},
	mini_game_score = {
		589992,
		86,
		true
	},
	mini_game_leave = {
		590078,
		98,
		true
	},
	mini_game_pause = {
		590176,
		98,
		true
	},
	mini_game_cur_score = {
		590274,
		96,
		true
	},
	mini_game_high_score = {
		590370,
		97,
		true
	},
	monopoly_world_tip1 = {
		590467,
		104,
		true
	},
	monopoly_world_tip2 = {
		590571,
		213,
		true
	},
	monopoly_world_tip3 = {
		590784,
		183,
		true
	},
	help_monopoly_world = {
		590967,
		1446,
		true
	},
	ssssmedal_tip = {
		592413,
		185,
		true
	},
	ssssmedal_name = {
		592598,
		110,
		true
	},
	ssssmedal_belonging = {
		592708,
		115,
		true
	},
	ssssmedal_name1 = {
		592823,
		107,
		true
	},
	ssssmedal_name2 = {
		592930,
		107,
		true
	},
	ssssmedal_name3 = {
		593037,
		107,
		true
	},
	ssssmedal_name4 = {
		593144,
		107,
		true
	},
	ssssmedal_name5 = {
		593251,
		107,
		true
	},
	ssssmedal_name6 = {
		593358,
		88,
		true
	},
	ssssmedal_belonging1 = {
		593446,
		106,
		true
	},
	ssssmedal_belonging2 = {
		593552,
		106,
		true
	},
	ssssmedal_desc1 = {
		593658,
		161,
		true
	},
	ssssmedal_desc2 = {
		593819,
		173,
		true
	},
	ssssmedal_desc3 = {
		593992,
		179,
		true
	},
	ssssmedal_desc4 = {
		594171,
		182,
		true
	},
	ssssmedal_desc5 = {
		594353,
		185,
		true
	},
	ssssmedal_desc6 = {
		594538,
		155,
		true
	},
	show_fate_demand_count = {
		594693,
		140,
		true
	},
	show_design_demand_count = {
		594833,
		144,
		true
	},
	blueprint_select_overflow = {
		594977,
		107,
		true
	},
	blueprint_select_overflow_tip = {
		595084,
		175,
		true
	},
	blueprint_exchange_empty_tip = {
		595259,
		125,
		true
	},
	blueprint_exchange_select_display = {
		595384,
		124,
		true
	},
	build_rate_title = {
		595508,
		92,
		true
	},
	build_pools_intro = {
		595600,
		136,
		true
	},
	build_detail_intro = {
		595736,
		118,
		true
	},
	ssss_game_tip = {
		595854,
		2399,
		true
	},
	ssss_medal_tip = {
		598253,
		557,
		true
	},
	battlepass_main_tip_2112 = {
		598810,
		237,
		true
	},
	battlepass_main_help_2112 = {
		599047,
		2927,
		true
	},
	cruise_task_help_2112 = {
		601974,
		1225,
		true
	},
	littleSanDiego_npc = {
		603199,
		1044,
		true
	},
	tag_ship_unlocked = {
		604243,
		96,
		true
	},
	tag_ship_locked = {
		604339,
		94,
		true
	},
	acceleration_tips_1 = {
		604433,
		191,
		true
	},
	acceleration_tips_2 = {
		604624,
		197,
		true
	},
	noacceleration_tips = {
		604821,
		122,
		true
	},
	word_shipskin = {
		604943,
		83,
		true
	},
	settings_sound_title_bgm = {
		605026,
		101,
		true
	},
	settings_sound_title_effct = {
		605127,
		103,
		true
	},
	settings_sound_title_cv = {
		605230,
		100,
		true
	},
	setting_resdownload_title_gallery = {
		605330,
		115,
		true
	},
	setting_resdownload_title_live2d = {
		605445,
		114,
		true
	},
	setting_resdownload_title_music = {
		605559,
		113,
		true
	},
	setting_resdownload_title_sound = {
		605672,
		116,
		true
	},
	setting_resdownload_title_manga = {
		605788,
		113,
		true
	},
	setting_resdownload_title_main_group = {
		605901,
		118,
		true
	},
	settings_battle_title = {
		606019,
		97,
		true
	},
	settings_battle_tip = {
		606116,
		114,
		true
	},
	settings_battle_Btn_edit = {
		606230,
		95,
		true
	},
	settings_battle_Btn_reset = {
		606325,
		96,
		true
	},
	settings_battle_Btn_save = {
		606421,
		95,
		true
	},
	settings_battle_Btn_cancel = {
		606516,
		97,
		true
	},
	settings_pwd_label_close = {
		606613,
		94,
		true
	},
	settings_pwd_label_open = {
		606707,
		93,
		true
	},
	word_frame = {
		606800,
		77,
		true
	},
	Settings_title_Redeem_input_label = {
		606877,
		113,
		true
	},
	Settings_title_Redeem_input_submit = {
		606990,
		105,
		true
	},
	Settings_title_Redeem_input_placeholder = {
		607095,
		127,
		true
	},
	CurlingGame_tips1 = {
		607222,
		937,
		true
	},
	maid_task_tips1 = {
		608159,
		584,
		true
	},
	shop_diamond_title = {
		608743,
		94,
		true
	},
	shop_gift_title = {
		608837,
		91,
		true
	},
	shop_item_title = {
		608928,
		91,
		true
	},
	shop_charge_level_limit = {
		609019,
		96,
		true
	},
	backhill_cantupbuilding = {
		609115,
		149,
		true
	},
	pray_cant_tips = {
		609264,
		139,
		true
	},
	help_xinnian2022_feast = {
		609403,
		688,
		true
	},
	Pray_activity_tips1 = {
		610091,
		1325,
		true
	},
	backhill_notenoughbuilding = {
		611416,
		219,
		true
	},
	help_xinnian2022_z28 = {
		611635,
		690,
		true
	},
	help_xinnian2022_firework = {
		612325,
		1229,
		true
	},
	player_manifesto_placeholder = {
		613554,
		113,
		true
	},
	box_ship_del_click = {
		613667,
		94,
		true
	},
	box_equipment_del_click = {
		613761,
		99,
		true
	},
	change_player_name_title = {
		613860,
		100,
		true
	},
	change_player_name_subtitle = {
		613960,
		106,
		true
	},
	change_player_name_input_tip = {
		614066,
		104,
		true
	},
	change_player_name_illegal = {
		614170,
		179,
		true
	},
	nodisplay_player_home_name = {
		614349,
		96,
		true
	},
	nodisplay_player_home_share = {
		614445,
		112,
		true
	},
	tactics_class_start = {
		614557,
		95,
		true
	},
	tactics_class_cancel = {
		614652,
		90,
		true
	},
	tactics_class_get_exp = {
		614742,
		103,
		true
	},
	tactics_class_spend_time = {
		614845,
		100,
		true
	},
	build_ticket_description = {
		614945,
		112,
		true
	},
	build_ticket_expire_warning = {
		615057,
		107,
		true
	},
	tip_build_ticket_expired = {
		615164,
		130,
		true
	},
	tip_build_ticket_exchange_expired = {
		615294,
		142,
		true
	},
	tip_build_ticket_not_enough = {
		615436,
		111,
		true
	},
	build_ship_tip_use_ticket = {
		615547,
		177,
		true
	},
	springfes_tips1 = {
		615724,
		914,
		true
	},
	worldinpicture_tavel_point_tip = {
		616638,
		112,
		true
	},
	worldinpicture_draw_point_tip = {
		616750,
		111,
		true
	},
	worldinpicture_help = {
		616861,
		661,
		true
	},
	worldinpicture_task_help = {
		617522,
		666,
		true
	},
	worldinpicture_not_area_can_draw = {
		618188,
		123,
		true
	},
	missile_attack_area_confirm = {
		618311,
		103,
		true
	},
	missile_attack_area_cancel = {
		618414,
		102,
		true
	},
	shipchange_alert_infleet = {
		618516,
		143,
		true
	},
	shipchange_alert_inpvp = {
		618659,
		147,
		true
	},
	shipchange_alert_inexercise = {
		618806,
		152,
		true
	},
	shipchange_alert_inworld = {
		618958,
		149,
		true
	},
	shipchange_alert_inguildbossevent = {
		619107,
		159,
		true
	},
	shipchange_alert_indiff = {
		619266,
		148,
		true
	},
	shipmodechange_reject_1stfleet_only = {
		619414,
		188,
		true
	},
	shipmodechange_reject_worldfleet_only = {
		619602,
		193,
		true
	},
	monopoly3thre_tip = {
		619795,
		133,
		true
	},
	fushun_game3_tip = {
		619928,
		912,
		true
	},
	battlepass_main_tip_2202 = {
		620840,
		236,
		true
	},
	battlepass_main_help_2202 = {
		621076,
		2928,
		true
	},
	cruise_task_help_2202 = {
		624004,
		1224,
		true
	},
	battlepass_main_tip_2204 = {
		625228,
		236,
		true
	},
	battlepass_main_help_2204 = {
		625464,
		2919,
		true
	},
	cruise_task_help_2204 = {
		628383,
		1224,
		true
	},
	battlepass_main_tip_2206 = {
		629607,
		242,
		true
	},
	battlepass_main_help_2206 = {
		629849,
		2931,
		true
	},
	cruise_task_help_2206 = {
		632780,
		1224,
		true
	},
	battlepass_main_tip_2208 = {
		634004,
		242,
		true
	},
	battlepass_main_help_2208 = {
		634246,
		2928,
		true
	},
	cruise_task_help_2208 = {
		637174,
		1224,
		true
	},
	battlepass_main_tip_2210 = {
		638398,
		241,
		true
	},
	battlepass_main_help_2210 = {
		638639,
		2945,
		true
	},
	cruise_task_help_2210 = {
		641584,
		1226,
		true
	},
	battlepass_main_tip_2212 = {
		642810,
		246,
		true
	},
	battlepass_main_help_2212 = {
		643056,
		2933,
		true
	},
	cruise_task_help_2212 = {
		645989,
		1225,
		true
	},
	battlepass_main_tip_2302 = {
		647214,
		245,
		true
	},
	battlepass_main_help_2302 = {
		647459,
		2928,
		true
	},
	cruise_task_help_2302 = {
		650387,
		1225,
		true
	},
	battlepass_main_tip_2304 = {
		651612,
		243,
		true
	},
	battlepass_main_help_2304 = {
		651855,
		2954,
		true
	},
	cruise_task_help_2304 = {
		654809,
		1225,
		true
	},
	battlepass_main_tip_2306 = {
		656034,
		232,
		true
	},
	battlepass_main_help_2306 = {
		656266,
		2919,
		true
	},
	cruise_task_help_2306 = {
		659185,
		1225,
		true
	},
	battlepass_main_tip_2308 = {
		660410,
		226,
		true
	},
	battlepass_main_help_2308 = {
		660636,
		2922,
		true
	},
	cruise_task_help_2308 = {
		663558,
		1225,
		true
	},
	battlepass_main_tip_2310 = {
		664783,
		237,
		true
	},
	battlepass_main_help_2310 = {
		665020,
		2942,
		true
	},
	cruise_task_help_2310 = {
		667962,
		1226,
		true
	},
	battlepass_main_tip_2312 = {
		669188,
		243,
		true
	},
	battlepass_main_help_2312 = {
		669431,
		2922,
		true
	},
	cruise_task_help_2312 = {
		672353,
		1226,
		true
	},
	attrset_reset = {
		673579,
		89,
		true
	},
	attrset_save = {
		673668,
		88,
		true
	},
	attrset_ask_save = {
		673756,
		111,
		true
	},
	attrset_save_success = {
		673867,
		96,
		true
	},
	attrset_disable = {
		673963,
		134,
		true
	},
	attrset_input_ill = {
		674097,
		96,
		true
	},
	blackfriday_help = {
		674193,
		458,
		true
	},
	eventshop_time_hint = {
		674651,
		112,
		true
	},
	purchase_backyard_theme_desc_for_onekey = {
		674763,
		144,
		true
	},
	purchase_backyard_theme_desc_for_all = {
		674907,
		158,
		true
	},
	sp_no_quota = {
		675065,
		113,
		true
	},
	fur_all_buy = {
		675178,
		87,
		true
	},
	fur_onekey_buy = {
		675265,
		90,
		true
	},
	littleRenown_npc = {
		675355,
		1040,
		true
	},
	tech_package_tip = {
		676395,
		209,
		true
	},
	backyard_food_shop_tip = {
		676604,
		101,
		true
	},
	dorm_2f_lock = {
		676705,
		85,
		true
	},
	word_get_way = {
		676790,
		89,
		true
	},
	word_get_date = {
		676879,
		90,
		true
	},
	enter_theme_name = {
		676969,
		95,
		true
	},
	enter_extend_food_label = {
		677064,
		93,
		true
	},
	backyard_extend_tip_1 = {
		677157,
		103,
		true
	},
	backyard_extend_tip_2 = {
		677260,
		104,
		true
	},
	backyard_extend_tip_3 = {
		677364,
		109,
		true
	},
	backyard_extend_tip_4 = {
		677473,
		89,
		true
	},
	levelScene_remaster_story_tip = {
		677562,
		160,
		true
	},
	levelScene_remaster_unlock_tip = {
		677722,
		146,
		true
	},
	level_remaster_tip1 = {
		677868,
		98,
		true
	},
	level_remaster_tip2 = {
		677966,
		89,
		true
	},
	level_remaster_tip3 = {
		678055,
		89,
		true
	},
	level_remaster_tip4 = {
		678144,
		109,
		true
	},
	newserver_time = {
		678253,
		88,
		true
	},
	newserver_soldout = {
		678341,
		96,
		true
	},
	skill_learn_tip = {
		678437,
		133,
		true
	},
	newserver_build_tip = {
		678570,
		132,
		true
	},
	build_count_tip = {
		678702,
		85,
		true
	},
	help_research_package = {
		678787,
		299,
		true
	},
	lv70_package_tip = {
		679086,
		251,
		true
	},
	tech_select_tip1 = {
		679337,
		101,
		true
	},
	tech_select_tip2 = {
		679438,
		149,
		true
	},
	tech_select_tip3 = {
		679587,
		89,
		true
	},
	tech_select_tip4 = {
		679676,
		98,
		true
	},
	tech_select_tip5 = {
		679774,
		110,
		true
	},
	techpackage_item_use = {
		679884,
		253,
		true
	},
	techpackage_item_use_1 = {
		680137,
		168,
		true
	},
	techpackage_item_use_2 = {
		680305,
		196,
		true
	},
	techpackage_item_use_confirm = {
		680501,
		147,
		true
	},
	new_server_shop_sel_goods_tip = {
		680648,
		123,
		true
	},
	new_server_shop_unopen_tip = {
		680771,
		102,
		true
	},
	newserver_activity_tip = {
		680873,
		1419,
		true
	},
	newserver_shop_timelimit = {
		682292,
		114,
		true
	},
	tech_character_get = {
		682406,
		97,
		true
	},
	package_detail_tip = {
		682503,
		94,
		true
	},
	event_ui_consume = {
		682597,
		87,
		true
	},
	event_ui_recommend = {
		682684,
		88,
		true
	},
	event_ui_start = {
		682772,
		84,
		true
	},
	event_ui_giveup = {
		682856,
		85,
		true
	},
	event_ui_finish = {
		682941,
		85,
		true
	},
	nav_tactics_sel_skill_title = {
		683026,
		103,
		true
	},
	battle_result_confirm = {
		683129,
		91,
		true
	},
	battle_result_targets = {
		683220,
		97,
		true
	},
	battle_result_continue = {
		683317,
		98,
		true
	},
	index_L2D = {
		683415,
		76,
		true
	},
	index_DBG = {
		683491,
		85,
		true
	},
	index_BG = {
		683576,
		84,
		true
	},
	index_CANTUSE = {
		683660,
		89,
		true
	},
	index_UNUSE = {
		683749,
		84,
		true
	},
	index_BGM = {
		683833,
		85,
		true
	},
	without_ship_to_wear = {
		683918,
		108,
		true
	},
	choose_ship_to_wear_this_skin = {
		684026,
		123,
		true
	},
	skinatlas_search_holder = {
		684149,
		114,
		true
	},
	skinatlas_search_result_is_empty = {
		684263,
		126,
		true
	},
	chang_ship_skin_window_title = {
		684389,
		98,
		true
	},
	world_boss_item_info = {
		684487,
		364,
		true
	},
	world_past_boss_item_info = {
		684851,
		383,
		true
	},
	world_boss_lefttime = {
		685234,
		88,
		true
	},
	world_boss_item_count_noenough = {
		685322,
		118,
		true
	},
	world_boss_item_usage_tip = {
		685440,
		144,
		true
	},
	world_boss_no_select_archives = {
		685584,
		130,
		true
	},
	world_boss_archives_item_count_noenough = {
		685714,
		127,
		true
	},
	world_boss_archives_are_clear = {
		685841,
		115,
		true
	},
	world_boss_switch_archives = {
		685956,
		187,
		true
	},
	world_boss_switch_archives_success = {
		686143,
		150,
		true
	},
	world_boss_archives_auto_battle_unopen = {
		686293,
		148,
		true
	},
	world_boss_archives_need_stop_auto_battle = {
		686441,
		148,
		true
	},
	world_boss_archives_stop_auto_battle = {
		686589,
		112,
		true
	},
	world_boss_archives_continue_auto_battle = {
		686701,
		116,
		true
	},
	world_boss_archives_auto_battle_reusle_title = {
		686817,
		126,
		true
	},
	world_boss_archives_stop_auto_battle_title = {
		686943,
		127,
		true
	},
	world_boss_archives_stop_auto_battle_tip = {
		687070,
		119,
		true
	},
	world_boss_archives_stop_auto_battle_tip1 = {
		687189,
		177,
		true
	},
	world_archives_boss_help = {
		687366,
		2774,
		true
	},
	world_archives_boss_list_help = {
		690140,
		438,
		true
	},
	archives_boss_was_opened = {
		690578,
		158,
		true
	},
	current_boss_was_opened = {
		690736,
		157,
		true
	},
	world_boss_title_auto_battle = {
		690893,
		104,
		true
	},
	world_boss_title_highest_damge = {
		690997,
		106,
		true
	},
	world_boss_title_estimation = {
		691103,
		115,
		true
	},
	world_boss_title_battle_cnt = {
		691218,
		103,
		true
	},
	world_boss_title_consume_oil_cnt = {
		691321,
		108,
		true
	},
	world_boss_title_spend_time = {
		691429,
		103,
		true
	},
	world_boss_title_total_damage = {
		691532,
		102,
		true
	},
	world_no_time_to_auto_battle = {
		691634,
		125,
		true
	},
	world_boss_current_boss_label = {
		691759,
		108,
		true
	},
	world_boss_current_boss_label1 = {
		691867,
		106,
		true
	},
	world_boss_archives_boss_tip = {
		691973,
		144,
		true
	},
	world_boss_progress_no_enough = {
		692117,
		111,
		true
	},
	world_boss_auto_battle_no_oil = {
		692228,
		120,
		true
	},
	meta_syn_value_label = {
		692348,
		99,
		true
	},
	meta_syn_finish = {
		692447,
		97,
		true
	},
	index_meta_repair = {
		692544,
		96,
		true
	},
	index_meta_tactics = {
		692640,
		97,
		true
	},
	index_meta_energy = {
		692737,
		96,
		true
	},
	tactics_continue_to_learn_other_skill = {
		692833,
		138,
		true
	},
	tactics_continue_to_learn_other_ship_skill = {
		692971,
		176,
		true
	},
	tactics_no_recent_ships = {
		693147,
		111,
		true
	},
	activity_kill = {
		693258,
		89,
		true
	},
	battle_result_dmg = {
		693347,
		87,
		true
	},
	battle_result_kill_count = {
		693434,
		94,
		true
	},
	battle_result_toggle_on = {
		693528,
		102,
		true
	},
	battle_result_toggle_off = {
		693630,
		103,
		true
	},
	battle_result_continue_battle = {
		693733,
		108,
		true
	},
	battle_result_quit_battle = {
		693841,
		104,
		true
	},
	battle_result_share_battle = {
		693945,
		105,
		true
	},
	pre_combat_team = {
		694050,
		91,
		true
	},
	pre_combat_vanguard = {
		694141,
		95,
		true
	},
	pre_combat_main = {
		694236,
		91,
		true
	},
	pre_combat_submarine = {
		694327,
		96,
		true
	},
	pre_combat_targets = {
		694423,
		88,
		true
	},
	pre_combat_atlasloot = {
		694511,
		90,
		true
	},
	destroy_confirm_access = {
		694601,
		93,
		true
	},
	destroy_confirm_cancel = {
		694694,
		93,
		true
	},
	pt_count_tip = {
		694787,
		82,
		true
	},
	dockyard_data_loss_detected = {
		694869,
		140,
		true
	},
	littleEugen_npc = {
		695009,
		1035,
		true
	},
	five_shujuhuigu = {
		696044,
		91,
		true
	},
	five_shujuhuigu1 = {
		696135,
		91,
		true
	},
	littleChaijun_npc = {
		696226,
		1016,
		true
	},
	five_qingdian = {
		697242,
		684,
		true
	},
	friend_resume_title_detail = {
		697926,
		102,
		true
	},
	item_type13_tip1 = {
		698028,
		92,
		true
	},
	item_type13_tip2 = {
		698120,
		92,
		true
	},
	item_type16_tip1 = {
		698212,
		92,
		true
	},
	item_type16_tip2 = {
		698304,
		92,
		true
	},
	item_type17_tip1 = {
		698396,
		92,
		true
	},
	item_type17_tip2 = {
		698488,
		92,
		true
	},
	five_duomaomao = {
		698580,
		816,
		true
	},
	main_4 = {
		699396,
		82,
		true
	},
	main_5 = {
		699478,
		82,
		true
	},
	honor_medal_support_tips_display = {
		699560,
		448,
		true
	},
	honor_medal_support_tips_confirm = {
		700008,
		213,
		true
	},
	support_rate_title = {
		700221,
		94,
		true
	},
	support_times_limited = {
		700315,
		121,
		true
	},
	support_times_tip = {
		700436,
		93,
		true
	},
	build_times_tip = {
		700529,
		91,
		true
	},
	tactics_recent_ship_label = {
		700620,
		101,
		true
	},
	title_info = {
		700721,
		80,
		true
	},
	eventshop_unlock_info = {
		700801,
		93,
		true
	},
	eventshop_unlock_hint = {
		700894,
		117,
		true
	},
	commission_event_tip = {
		701011,
		765,
		true
	},
	decoration_medal_placeholder = {
		701776,
		116,
		true
	},
	technology_filter_placeholder = {
		701892,
		114,
		true
	},
	eva_comment_send_null = {
		702006,
		100,
		true
	},
	report_sent_thank = {
		702106,
		154,
		true
	},
	report_ship_cannot_comment = {
		702260,
		117,
		true
	},
	report_cannot_comment = {
		702377,
		137,
		true
	},
	report_sent_title = {
		702514,
		87,
		true
	},
	report_sent_desc = {
		702601,
		113,
		true
	},
	report_type_1 = {
		702714,
		89,
		true
	},
	report_type_1_1 = {
		702803,
		100,
		true
	},
	report_type_2 = {
		702903,
		89,
		true
	},
	report_type_2_1 = {
		702992,
		100,
		true
	},
	report_type_3 = {
		703092,
		89,
		true
	},
	report_type_3_1 = {
		703181,
		100,
		true
	},
	report_type_other = {
		703281,
		87,
		true
	},
	report_type_other_1 = {
		703368,
		125,
		true
	},
	report_type_other_2 = {
		703493,
		107,
		true
	},
	report_sent_help = {
		703600,
		431,
		true
	},
	rename_input = {
		704031,
		88,
		true
	},
	avatar_task_level = {
		704119,
		125,
		true
	},
	avatar_upgrad_1 = {
		704244,
		94,
		true
	},
	avatar_upgrad_2 = {
		704338,
		94,
		true
	},
	avatar_upgrad_3 = {
		704432,
		85,
		true
	},
	avatar_task_ship_1 = {
		704517,
		102,
		true
	},
	avatar_task_ship_2 = {
		704619,
		105,
		true
	},
	technology_queue_complete = {
		704724,
		101,
		true
	},
	technology_queue_processing = {
		704825,
		100,
		true
	},
	technology_queue_waiting = {
		704925,
		100,
		true
	},
	technology_queue_getaward = {
		705025,
		101,
		true
	},
	technology_daily_refresh = {
		705126,
		110,
		true
	},
	technology_queue_full = {
		705236,
		118,
		true
	},
	technology_queue_in_mission_incomplete = {
		705354,
		151,
		true
	},
	technology_consume = {
		705505,
		94,
		true
	},
	technology_request = {
		705599,
		100,
		true
	},
	technology_queue_in_doublecheck = {
		705699,
		201,
		true
	},
	playervtae_setting_btn_label = {
		705900,
		104,
		true
	},
	technology_queue_in_success = {
		706004,
		109,
		true
	},
	star_require_enemy_text = {
		706113,
		135,
		true
	},
	star_require_enemy_title = {
		706248,
		106,
		true
	},
	star_require_enemy_check = {
		706354,
		94,
		true
	},
	worldboss_rank_timer_label = {
		706448,
		118,
		true
	},
	technology_detail = {
		706566,
		93,
		true
	},
	technology_mission_unfinish = {
		706659,
		106,
		true
	},
	word_chinese = {
		706765,
		82,
		true
	},
	word_japanese_2 = {
		706847,
		86,
		true
	},
	word_japanese = {
		706933,
		83,
		true
	},
	avatarframe_got = {
		707016,
		88,
		true
	},
	item_is_max_cnt = {
		707104,
		103,
		true
	},
	level_fleet_ship_desc = {
		707207,
		106,
		true
	},
	level_fleet_sub_desc = {
		707313,
		102,
		true
	},
	summerland_tip = {
		707415,
		375,
		true
	},
	icecreamgame_tip = {
		707790,
		1431,
		true
	},
	unlock_date_tip = {
		709221,
		118,
		true
	},
	guild_duty_shoule_be_deputy_commander = {
		709339,
		147,
		true
	},
	guild_deputy_commander_cnt_is_full = {
		709486,
		134,
		true
	},
	guild_deputy_commander_cnt = {
		709620,
		154,
		true
	},
	mail_filter_placeholder = {
		709774,
		105,
		true
	},
	recently_sticker_placeholder = {
		709879,
		110,
		true
	},
	backhill_campusfestival_tip = {
		709989,
		1085,
		true
	},
	mini_cookgametip = {
		711074,
		717,
		true
	},
	cook_game_Albacore = {
		711791,
		103,
		true
	},
	cook_game_august = {
		711894,
		98,
		true
	},
	cook_game_elbe = {
		711992,
		99,
		true
	},
	cook_game_hakuryu = {
		712091,
		120,
		true
	},
	cook_game_howe = {
		712211,
		124,
		true
	},
	cook_game_marcopolo = {
		712335,
		107,
		true
	},
	cook_game_noshiro = {
		712442,
		106,
		true
	},
	cook_game_pnelope = {
		712548,
		118,
		true
	},
	cook_game_laffey = {
		712666,
		127,
		true
	},
	cook_game_janus = {
		712793,
		131,
		true
	},
	cook_game_flandre = {
		712924,
		111,
		true
	},
	cook_game_constellation = {
		713035,
		165,
		true
	},
	cook_game_constellation_skill_name = {
		713200,
		146,
		true
	},
	cook_game_constellation_skill_desc = {
		713346,
		233,
		true
	},
	random_ship_on = {
		713579,
		108,
		true
	},
	random_ship_off_0 = {
		713687,
		154,
		true
	},
	random_ship_off = {
		713841,
		137,
		true
	},
	random_ship_forbidden = {
		713978,
		155,
		true
	},
	random_ship_now = {
		714133,
		97,
		true
	},
	random_ship_label = {
		714230,
		96,
		true
	},
	player_vitae_skin_setting = {
		714326,
		107,
		true
	},
	random_ship_tips1 = {
		714433,
		133,
		true
	},
	random_ship_tips2 = {
		714566,
		120,
		true
	},
	random_ship_before = {
		714686,
		103,
		true
	},
	random_ship_and_skin_title = {
		714789,
		117,
		true
	},
	random_ship_frequse_mode = {
		714906,
		100,
		true
	},
	random_ship_locked_mode = {
		715006,
		102,
		true
	},
	littleSpee_npc = {
		715108,
		1180,
		true
	},
	random_flag_ship = {
		716288,
		95,
		true
	},
	random_flag_ship_changskinBtn_label = {
		716383,
		111,
		true
	},
	expedition_drop_use_out = {
		716494,
		133,
		true
	},
	expedition_extra_drop_tip = {
		716627,
		110,
		true
	},
	ex_pass_use = {
		716737,
		81,
		true
	},
	defense_formation_tip_npc = {
		716818,
		183,
		true
	},
	word_item = {
		717001,
		79,
		true
	},
	word_tool = {
		717080,
		79,
		true
	},
	word_other = {
		717159,
		80,
		true
	},
	ryza_word_equip = {
		717239,
		85,
		true
	},
	ryza_rest_produce_count = {
		717324,
		113,
		true
	},
	ryza_composite_confirm = {
		717437,
		115,
		true
	},
	ryza_composite_confirm_single = {
		717552,
		117,
		true
	},
	ryza_composite_count = {
		717669,
		99,
		true
	},
	ryza_toggle_only_composite = {
		717768,
		108,
		true
	},
	ryza_tip_select_recipe = {
		717876,
		122,
		true
	},
	ryza_tip_put_materials = {
		717998,
		126,
		true
	},
	ryza_tip_composite_unlock = {
		718124,
		131,
		true
	},
	ryza_tip_unlock_all_tools = {
		718255,
		128,
		true
	},
	ryza_material_not_enough = {
		718383,
		143,
		true
	},
	ryza_tip_composite_invalid = {
		718526,
		126,
		true
	},
	ryza_tip_max_composite_count = {
		718652,
		128,
		true
	},
	ryza_tip_no_item = {
		718780,
		106,
		true
	},
	ryza_ui_show_acess = {
		718886,
		101,
		true
	},
	ryza_tip_no_recipe = {
		718987,
		105,
		true
	},
	ryza_tip_item_access = {
		719092,
		123,
		true
	},
	ryza_tip_control_buff_not_obtain_tip = {
		719215,
		131,
		true
	},
	ryza_tip_control_buff_upgrade = {
		719346,
		99,
		true
	},
	ryza_tip_control_buff_replace = {
		719445,
		99,
		true
	},
	ryza_tip_control_buff_limit = {
		719544,
		103,
		true
	},
	ryza_tip_control_buff_already_active_tip = {
		719647,
		113,
		true
	},
	ryza_tip_control_buff = {
		719760,
		125,
		true
	},
	ryza_tip_control_buff_not_obtain = {
		719885,
		105,
		true
	},
	ryza_tip_control = {
		719990,
		132,
		true
	},
	ryza_tip_main = {
		720122,
		1118,
		true
	},
	battle_levelScene_ryza_lock = {
		721240,
		163,
		true
	},
	ryza_tip_toast_item_got = {
		721403,
		99,
		true
	},
	ryza_composite_help_tip = {
		721502,
		476,
		true
	},
	ryza_control_help_tip = {
		721978,
		296,
		true
	},
	ryza_mini_game = {
		722274,
		351,
		true
	},
	ryza_task_level_desc = {
		722625,
		96,
		true
	},
	ryza_task_tag_explore = {
		722721,
		91,
		true
	},
	ryza_task_tag_battle = {
		722812,
		90,
		true
	},
	ryza_task_tag_dalegate = {
		722902,
		92,
		true
	},
	ryza_task_tag_develop = {
		722994,
		91,
		true
	},
	ryza_task_tag_adventure = {
		723085,
		93,
		true
	},
	ryza_task_tag_build = {
		723178,
		89,
		true
	},
	ryza_task_tag_create = {
		723267,
		90,
		true
	},
	ryza_task_tag_daily = {
		723357,
		89,
		true
	},
	ryza_task_detail_content = {
		723446,
		94,
		true
	},
	ryza_task_detail_award = {
		723540,
		92,
		true
	},
	ryza_task_go = {
		723632,
		82,
		true
	},
	ryza_task_get = {
		723714,
		83,
		true
	},
	ryza_task_get_all = {
		723797,
		93,
		true
	},
	ryza_task_confirm = {
		723890,
		87,
		true
	},
	ryza_task_cancel = {
		723977,
		86,
		true
	},
	ryza_task_level_num = {
		724063,
		95,
		true
	},
	ryza_task_level_add = {
		724158,
		95,
		true
	},
	ryza_task_submit = {
		724253,
		86,
		true
	},
	ryza_task_detail = {
		724339,
		86,
		true
	},
	ryza_composite_words = {
		724425,
		707,
		true
	},
	ryza_task_help_tip = {
		725132,
		345,
		true
	},
	hotspring_buff = {
		725477,
		127,
		true
	},
	random_ship_custom_mode_empty = {
		725604,
		157,
		true
	},
	random_ship_custom_mode_main_button_add = {
		725761,
		109,
		true
	},
	random_ship_custom_mode_main_button_remove = {
		725870,
		112,
		true
	},
	random_ship_custom_mode_main_tip1 = {
		725982,
		140,
		true
	},
	random_ship_custom_mode_main_tip2 = {
		726122,
		112,
		true
	},
	random_ship_custom_mode_main_empty = {
		726234,
		128,
		true
	},
	random_ship_custom_mode_select_all = {
		726362,
		110,
		true
	},
	random_ship_custom_mode_add_tip1 = {
		726472,
		133,
		true
	},
	random_ship_custom_mode_select_number = {
		726605,
		113,
		true
	},
	random_ship_custom_mode_add_complete = {
		726718,
		118,
		true
	},
	random_ship_custom_mode_add_tip2 = {
		726836,
		139,
		true
	},
	random_ship_custom_mode_remove_tip1 = {
		726975,
		139,
		true
	},
	random_ship_custom_mode_remove_complete = {
		727114,
		121,
		true
	},
	random_ship_custom_mode_remove_tip2 = {
		727235,
		142,
		true
	},
	index_dressed = {
		727377,
		86,
		true
	},
	random_ship_custom_mode = {
		727463,
		111,
		true
	},
	random_ship_custom_mode_add_title = {
		727574,
		109,
		true
	},
	random_ship_custom_mode_remove_title = {
		727683,
		112,
		true
	},
	hotspring_shop_enter1 = {
		727795,
		149,
		true
	},
	hotspring_shop_enter2 = {
		727944,
		159,
		true
	},
	hotspring_shop_insufficient = {
		728103,
		166,
		true
	},
	hotspring_shop_success1 = {
		728269,
		103,
		true
	},
	hotspring_shop_success2 = {
		728372,
		112,
		true
	},
	hotspring_shop_finish = {
		728484,
		155,
		true
	},
	hotspring_shop_end = {
		728639,
		166,
		true
	},
	hotspring_shop_touch1 = {
		728805,
		121,
		true
	},
	hotspring_shop_touch2 = {
		728926,
		140,
		true
	},
	hotspring_shop_touch3 = {
		729066,
		131,
		true
	},
	hotspring_shop_exchanged = {
		729197,
		151,
		true
	},
	hotspring_shop_exchange = {
		729348,
		167,
		true
	},
	hotspring_tip1 = {
		729515,
		130,
		true
	},
	hotspring_tip2 = {
		729645,
		94,
		true
	},
	hotspring_help = {
		729739,
		525,
		true
	},
	hotspring_expand = {
		730264,
		150,
		true
	},
	hotspring_shop_help = {
		730414,
		387,
		true
	},
	resorts_help = {
		730801,
		585,
		true
	},
	pvzminigame_help = {
		731386,
		1204,
		true
	},
	tips_yuandanhuoyue2023 = {
		732590,
		658,
		true
	},
	beach_guard_chaijun = {
		733248,
		144,
		true
	},
	beach_guard_jianye = {
		733392,
		155,
		true
	},
	beach_guard_lituoliao = {
		733547,
		243,
		true
	},
	beach_guard_bominghan = {
		733790,
		231,
		true
	},
	beach_guard_nengdai = {
		734021,
		262,
		true
	},
	beach_guard_m_craft = {
		734283,
		119,
		true
	},
	beach_guard_m_atk = {
		734402,
		114,
		true
	},
	beach_guard_m_guard = {
		734516,
		113,
		true
	},
	beach_guard_m_craft_name = {
		734629,
		97,
		true
	},
	beach_guard_m_atk_name = {
		734726,
		95,
		true
	},
	beach_guard_m_guard_name = {
		734821,
		97,
		true
	},
	beach_guard_e1 = {
		734918,
		87,
		true
	},
	beach_guard_e2 = {
		735005,
		87,
		true
	},
	beach_guard_e3 = {
		735092,
		87,
		true
	},
	beach_guard_e4 = {
		735179,
		87,
		true
	},
	beach_guard_e5 = {
		735266,
		87,
		true
	},
	beach_guard_e6 = {
		735353,
		87,
		true
	},
	beach_guard_e7 = {
		735440,
		87,
		true
	},
	beach_guard_e1_desc = {
		735527,
		144,
		true
	},
	beach_guard_e2_desc = {
		735671,
		144,
		true
	},
	beach_guard_e3_desc = {
		735815,
		144,
		true
	},
	beach_guard_e4_desc = {
		735959,
		159,
		true
	},
	beach_guard_e5_desc = {
		736118,
		159,
		true
	},
	beach_guard_e6_desc = {
		736277,
		266,
		true
	},
	beach_guard_e7_desc = {
		736543,
		156,
		true
	},
	ninghai_nianye = {
		736699,
		127,
		true
	},
	yingrui_nianye = {
		736826,
		128,
		true
	},
	zhaohe_nianye = {
		736954,
		135,
		true
	},
	zhenhai_nianye = {
		737089,
		143,
		true
	},
	haitian_nianye = {
		737232,
		154,
		true
	},
	taiyuan_nianye = {
		737386,
		139,
		true
	},
	yixian_nianye = {
		737525,
		144,
		true
	},
	activity_yanhua_tip1 = {
		737669,
		90,
		true
	},
	activity_yanhua_tip2 = {
		737759,
		105,
		true
	},
	activity_yanhua_tip3 = {
		737864,
		105,
		true
	},
	activity_yanhua_tip4 = {
		737969,
		122,
		true
	},
	activity_yanhua_tip5 = {
		738091,
		103,
		true
	},
	activity_yanhua_tip6 = {
		738194,
		112,
		true
	},
	activity_yanhua_tip7 = {
		738306,
		133,
		true
	},
	activity_yanhua_tip8 = {
		738439,
		99,
		true
	},
	help_chunjie2023 = {
		738538,
		1175,
		true
	},
	sevenday_nianye = {
		739713,
		277,
		true
	},
	tip_nianye = {
		739990,
		106,
		true
	},
	couplete_activty_desc = {
		740096,
		348,
		true
	},
	couplete_click_desc = {
		740444,
		125,
		true
	},
	couplet_index_desc = {
		740569,
		90,
		true
	},
	couplete_help = {
		740659,
		862,
		true
	},
	couplete_drag_tip = {
		741521,
		112,
		true
	},
	couplete_remind = {
		741633,
		109,
		true
	},
	couplete_complete = {
		741742,
		139,
		true
	},
	couplete_enter = {
		741881,
		114,
		true
	},
	couplete_stay = {
		741995,
		107,
		true
	},
	couplete_task = {
		742102,
		123,
		true
	},
	couplete_pass_1 = {
		742225,
		104,
		true
	},
	couplete_pass_2 = {
		742329,
		110,
		true
	},
	couplete_fail_1 = {
		742439,
		121,
		true
	},
	couplete_fail_2 = {
		742560,
		112,
		true
	},
	couplete_pair_1 = {
		742672,
		100,
		true
	},
	couplete_pair_2 = {
		742772,
		100,
		true
	},
	couplete_pair_3 = {
		742872,
		100,
		true
	},
	couplete_pair_4 = {
		742972,
		100,
		true
	},
	couplete_pair_5 = {
		743072,
		100,
		true
	},
	couplete_pair_6 = {
		743172,
		100,
		true
	},
	couplete_pair_7 = {
		743272,
		100,
		true
	},
	["2023spring_minigame_item_lantern"] = {
		743372,
		186,
		true
	},
	["2023spring_minigame_item_firecracker"] = {
		743558,
		181,
		true
	},
	["2023spring_minigame_skill_icewall"] = {
		743739,
		141,
		true
	},
	["2023spring_minigame_skill_icewall_up"] = {
		743880,
		197,
		true
	},
	["2023spring_minigame_skill_sprint"] = {
		744077,
		137,
		true
	},
	["2023spring_minigame_skill_sprint_up"] = {
		744214,
		190,
		true
	},
	["2023spring_minigame_skill_flash"] = {
		744404,
		169,
		true
	},
	["2023spring_minigame_skill_flash_up"] = {
		744573,
		177,
		true
	},
	["2023spring_minigame_bless_speed"] = {
		744750,
		126,
		true
	},
	["2023spring_minigame_bless_speed_up"] = {
		744876,
		164,
		true
	},
	["2023spring_minigame_bless_substitute"] = {
		745040,
		188,
		true
	},
	["2023spring_minigame_bless_substitute_up"] = {
		745228,
		115,
		true
	},
	["2023spring_minigame_nenjuu_skill1"] = {
		745343,
		180,
		true
	},
	["2023spring_minigame_nenjuu_skill2"] = {
		745523,
		132,
		true
	},
	["2023spring_minigame_nenjuu_skill3"] = {
		745655,
		133,
		true
	},
	["2023spring_minigame_nenjuu_skill4"] = {
		745788,
		132,
		true
	},
	["2023spring_minigame_nenjuu_skill5"] = {
		745920,
		186,
		true
	},
	["2023spring_minigame_nenjuu_skill6"] = {
		746106,
		138,
		true
	},
	["2023spring_minigame_nenjuu_skill7"] = {
		746244,
		268,
		true
	},
	["2023spring_minigame_nenjuu_skill8"] = {
		746512,
		223,
		true
	},
	["2023spring_minigame_tip1"] = {
		746735,
		94,
		true
	},
	["2023spring_minigame_tip2"] = {
		746829,
		97,
		true
	},
	["2023spring_minigame_tip3"] = {
		746926,
		94,
		true
	},
	["2023spring_minigame_tip5"] = {
		747020,
		121,
		true
	},
	["2023spring_minigame_tip6"] = {
		747141,
		103,
		true
	},
	["2023spring_minigame_tip7"] = {
		747244,
		103,
		true
	},
	["2023spring_minigame_help"] = {
		747347,
		970,
		true
	},
	multiple_sorties_title = {
		748317,
		98,
		true
	},
	multiple_sorties_title_eng = {
		748415,
		106,
		true
	},
	multiple_sorties_locked_tip = {
		748521,
		157,
		true
	},
	multiple_sorties_times = {
		748678,
		98,
		true
	},
	multiple_sorties_tip = {
		748776,
		203,
		true
	},
	multiple_sorties_challenge_ticket_use = {
		748979,
		113,
		true
	},
	multiple_sorties_cost1 = {
		749092,
		164,
		true
	},
	multiple_sorties_cost2 = {
		749256,
		170,
		true
	},
	multiple_sorties_cost3 = {
		749426,
		176,
		true
	},
	multiple_sorties_stopped = {
		749602,
		97,
		true
	},
	multiple_sorties_stop_tip = {
		749699,
		170,
		true
	},
	multiple_sorties_resume_tip = {
		749869,
		139,
		true
	},
	multiple_sorties_auto_on = {
		750008,
		133,
		true
	},
	multiple_sorties_finish = {
		750141,
		111,
		true
	},
	multiple_sorties_stop = {
		750252,
		109,
		true
	},
	multiple_sorties_stop_end = {
		750361,
		116,
		true
	},
	multiple_sorties_end_status = {
		750477,
		184,
		true
	},
	multiple_sorties_finish_tip = {
		750661,
		136,
		true
	},
	multiple_sorties_stop_tip_end = {
		750797,
		141,
		true
	},
	multiple_sorties_stop_reason1 = {
		750938,
		128,
		true
	},
	multiple_sorties_stop_reason2 = {
		751066,
		149,
		true
	},
	multiple_sorties_stop_reason3 = {
		751215,
		105,
		true
	},
	multiple_sorties_stop_reason4 = {
		751320,
		105,
		true
	},
	multiple_sorties_main_tip = {
		751425,
		325,
		true
	},
	multiple_sorties_main_end = {
		751750,
		188,
		true
	},
	multiple_sorties_rest_time = {
		751938,
		102,
		true
	},
	multiple_sorties_retry_desc = {
		752040,
		108,
		true
	},
	msgbox_text_battle = {
		752148,
		88,
		true
	},
	pre_combat_start = {
		752236,
		86,
		true
	},
	pre_combat_start_en = {
		752322,
		95,
		true
	},
	["2023Valentine_minigame_s"] = {
		752417,
		194,
		true
	},
	["2023Valentine_minigame_a"] = {
		752611,
		176,
		true
	},
	["2023Valentine_minigame_b"] = {
		752787,
		167,
		true
	},
	["2023Valentine_minigame_c"] = {
		752954,
		179,
		true
	},
	["2023Valentine_minigame_label1"] = {
		753133,
		108,
		true
	},
	["2023Valentine_minigame_label2"] = {
		753241,
		105,
		true
	},
	["2023Valentine_minigame_label3"] = {
		753346,
		108,
		true
	},
	sort_energy = {
		753454,
		84,
		true
	},
	dockyard_search_holder = {
		753538,
		101,
		true
	},
	loveletter_exchange_tip1 = {
		753639,
		134,
		true
	},
	loveletter_exchange_tip2 = {
		753773,
		149,
		true
	},
	loveletter_exchange_confirm = {
		753922,
		372,
		true
	},
	loveletter_exchange_button = {
		754294,
		96,
		true
	},
	loveletter_exchange_tip3 = {
		754390,
		124,
		true
	},
	battle_text_common_1 = {
		754514,
		183,
		true
	},
	battle_text_yingxiv4_1 = {
		754697,
		152,
		true
	},
	battle_text_yingxiv4_2 = {
		754849,
		152,
		true
	},
	battle_text_yingxiv4_3 = {
		755001,
		152,
		true
	},
	battle_text_yingxiv4_4 = {
		755153,
		149,
		true
	},
	battle_text_yingxiv4_5 = {
		755302,
		149,
		true
	},
	battle_text_yingxiv4_6 = {
		755451,
		164,
		true
	},
	battle_text_yingxiv4_7 = {
		755615,
		167,
		true
	},
	battle_text_yingxiv4_8 = {
		755782,
		167,
		true
	},
	battle_text_yingxiv4_9 = {
		755949,
		155,
		true
	},
	battle_text_yingxiv4_10 = {
		756104,
		171,
		true
	},
	battle_text_bisimaiz_1 = {
		756275,
		138,
		true
	},
	battle_text_bisimaiz_2 = {
		756413,
		138,
		true
	},
	battle_text_bisimaiz_3 = {
		756551,
		138,
		true
	},
	battle_text_bisimaiz_4 = {
		756689,
		138,
		true
	},
	battle_text_bisimaiz_5 = {
		756827,
		138,
		true
	},
	battle_text_bisimaiz_6 = {
		756965,
		138,
		true
	},
	battle_text_bisimaiz_7 = {
		757103,
		171,
		true
	},
	battle_text_bisimaiz_8 = {
		757274,
		218,
		true
	},
	battle_text_bisimaiz_9 = {
		757492,
		213,
		true
	},
	battle_text_bisimaiz_10 = {
		757705,
		181,
		true
	},
	battle_text_yunxian_1 = {
		757886,
		190,
		true
	},
	battle_text_yunxian_2 = {
		758076,
		175,
		true
	},
	battle_text_yunxian_3 = {
		758251,
		146,
		true
	},
	battle_text_haidao_1 = {
		758397,
		155,
		true
	},
	battle_text_haidao_2 = {
		758552,
		182,
		true
	},
	series_enemy_mood = {
		758734,
		93,
		true
	},
	series_enemy_mood_error = {
		758827,
		153,
		true
	},
	series_enemy_reward_tip1 = {
		758980,
		107,
		true
	},
	series_enemy_reward_tip2 = {
		759087,
		113,
		true
	},
	series_enemy_reward_tip3 = {
		759200,
		101,
		true
	},
	series_enemy_reward_tip4 = {
		759301,
		107,
		true
	},
	series_enemy_cost = {
		759408,
		96,
		true
	},
	series_enemy_SP_count = {
		759504,
		100,
		true
	},
	series_enemy_SP_error = {
		759604,
		111,
		true
	},
	series_enemy_unlock = {
		759715,
		117,
		true
	},
	series_enemy_storyunlock = {
		759832,
		112,
		true
	},
	series_enemy_storyreward = {
		759944,
		106,
		true
	},
	series_enemy_help = {
		760050,
		990,
		true
	},
	series_enemy_score = {
		761040,
		88,
		true
	},
	series_enemy_total_score = {
		761128,
		97,
		true
	},
	setting_label_private = {
		761225,
		97,
		true
	},
	setting_label_licence = {
		761322,
		97,
		true
	},
	series_enemy_reward = {
		761419,
		95,
		true
	},
	series_enemy_mode_1 = {
		761514,
		98,
		true
	},
	series_enemy_mode_2 = {
		761612,
		96,
		true
	},
	series_enemy_fleet_prefix = {
		761708,
		97,
		true
	},
	series_enemy_team_notenough = {
		761805,
		201,
		true
	},
	series_enemy_empty_commander_main = {
		762006,
		109,
		true
	},
	series_enemy_empty_commander_assistant = {
		762115,
		114,
		true
	},
	limit_team_character_tips = {
		762229,
		135,
		true
	},
	game_room_help = {
		762364,
		779,
		true
	},
	game_cannot_go = {
		763143,
		114,
		true
	},
	game_ticket_notenough = {
		763257,
		143,
		true
	},
	game_ticket_max_all = {
		763400,
		204,
		true
	},
	game_ticket_max_month = {
		763604,
		213,
		true
	},
	game_icon_notenough = {
		763817,
		154,
		true
	},
	game_goldbyicon = {
		763971,
		117,
		true
	},
	game_icon_max = {
		764088,
		180,
		true
	},
	caibulin_tip1 = {
		764268,
		121,
		true
	},
	caibulin_tip2 = {
		764389,
		149,
		true
	},
	caibulin_tip3 = {
		764538,
		121,
		true
	},
	caibulin_tip4 = {
		764659,
		149,
		true
	},
	caibulin_tip5 = {
		764808,
		121,
		true
	},
	caibulin_tip6 = {
		764929,
		149,
		true
	},
	caibulin_tip7 = {
		765078,
		121,
		true
	},
	caibulin_tip8 = {
		765199,
		149,
		true
	},
	caibulin_tip9 = {
		765348,
		152,
		true
	},
	caibulin_tip10 = {
		765500,
		153,
		true
	},
	caibulin_help = {
		765653,
		416,
		true
	},
	caibulin_tip11 = {
		766069,
		127,
		true
	},
	gametip_xiaoqiye = {
		766196,
		1026,
		true
	},
	event_recommend_level1 = {
		767222,
		181,
		true
	},
	doa_minigame_Luna = {
		767403,
		87,
		true
	},
	doa_minigame_Misaki = {
		767490,
		89,
		true
	},
	doa_minigame_Marie = {
		767579,
		94,
		true
	},
	doa_minigame_Tamaki = {
		767673,
		86,
		true
	},
	doa_minigame_help = {
		767759,
		308,
		true
	},
	gametip_xiaokewei = {
		768067,
		1030,
		true
	},
	doa_character_select_confirm = {
		769097,
		223,
		true
	},
	blueprint_combatperformance = {
		769320,
		103,
		true
	},
	blueprint_shipperformance = {
		769423,
		101,
		true
	},
	blueprint_researching = {
		769524,
		103,
		true
	},
	sculpture_drawline_tip = {
		769627,
		111,
		true
	},
	sculpture_drawline_done = {
		769738,
		151,
		true
	},
	sculpture_drawline_exit = {
		769889,
		176,
		true
	},
	sculpture_puzzle_tip = {
		770065,
		158,
		true
	},
	sculpture_gratitude_tip = {
		770223,
		115,
		true
	},
	sculpture_close_tip = {
		770338,
		102,
		true
	},
	gift_act_help = {
		770440,
		456,
		true
	},
	gift_act_drawline_help = {
		770896,
		465,
		true
	},
	gift_act_tips = {
		771361,
		85,
		true
	},
	expedition_award_tip = {
		771446,
		151,
		true
	},
	island_act_tips1 = {
		771597,
		107,
		true
	},
	haidaojudian_help = {
		771704,
		1318,
		true
	},
	haidaojudian_building_tip = {
		773022,
		119,
		true
	},
	workbench_help = {
		773141,
		600,
		true
	},
	workbench_need_materials = {
		773741,
		100,
		true
	},
	workbench_tips1 = {
		773841,
		100,
		true
	},
	workbench_tips2 = {
		773941,
		91,
		true
	},
	workbench_tips3 = {
		774032,
		115,
		true
	},
	workbench_tips4 = {
		774147,
		105,
		true
	},
	workbench_tips5 = {
		774252,
		105,
		true
	},
	workbench_tips6 = {
		774357,
		97,
		true
	},
	workbench_tips7 = {
		774454,
		85,
		true
	},
	workbench_tips8 = {
		774539,
		91,
		true
	},
	workbench_tips9 = {
		774630,
		91,
		true
	},
	workbench_tips10 = {
		774721,
		98,
		true
	},
	island_help = {
		774819,
		610,
		true
	},
	islandnode_tips1 = {
		775429,
		92,
		true
	},
	islandnode_tips2 = {
		775521,
		86,
		true
	},
	islandnode_tips3 = {
		775607,
		102,
		true
	},
	islandnode_tips4 = {
		775709,
		107,
		true
	},
	islandnode_tips5 = {
		775816,
		138,
		true
	},
	islandnode_tips6 = {
		775954,
		114,
		true
	},
	islandnode_tips7 = {
		776068,
		137,
		true
	},
	islandnode_tips8 = {
		776205,
		168,
		true
	},
	islandnode_tips9 = {
		776373,
		154,
		true
	},
	islandshop_tips1 = {
		776527,
		98,
		true
	},
	islandshop_tips2 = {
		776625,
		86,
		true
	},
	islandshop_tips3 = {
		776711,
		86,
		true
	},
	islandshop_tips4 = {
		776797,
		88,
		true
	},
	island_shop_limit_error = {
		776885,
		136,
		true
	},
	haidaojudian_upgrade_limit = {
		777021,
		167,
		true
	},
	chargetip_monthcard_1 = {
		777188,
		127,
		true
	},
	chargetip_monthcard_2 = {
		777315,
		134,
		true
	},
	chargetip_crusing = {
		777449,
		108,
		true
	},
	chargetip_giftpackage = {
		777557,
		115,
		true
	},
	package_view_1 = {
		777672,
		117,
		true
	},
	package_view_2 = {
		777789,
		133,
		true
	},
	package_view_3 = {
		777922,
		105,
		true
	},
	package_view_4 = {
		778027,
		90,
		true
	},
	probabilityskinshop_tip = {
		778117,
		142,
		true
	},
	skin_gift_desc = {
		778259,
		233,
		true
	},
	springtask_tip = {
		778492,
		311,
		true
	},
	island_build_desc = {
		778803,
		124,
		true
	},
	island_history_desc = {
		778927,
		151,
		true
	},
	island_build_level = {
		779078,
		94,
		true
	},
	island_game_limit_help = {
		779172,
		138,
		true
	},
	island_game_limit_num = {
		779310,
		94,
		true
	},
	ore_minigame_help = {
		779404,
		596,
		true
	},
	meta_shop_exchange_limit_2 = {
		780000,
		102,
		true
	},
	meta_shop_tip = {
		780102,
		135,
		true
	},
	pt_shop_tran_tip = {
		780237,
		309,
		true
	},
	urdraw_tip = {
		780546,
		138,
		true
	},
	urdraw_complement = {
		780684,
		169,
		true
	},
	meta_class_t_level_1 = {
		780853,
		96,
		true
	},
	meta_class_t_level_2 = {
		780949,
		96,
		true
	},
	meta_class_t_level_3 = {
		781045,
		96,
		true
	},
	meta_class_t_level_4 = {
		781141,
		96,
		true
	},
	meta_class_t_level_5 = {
		781237,
		96,
		true
	},
	meta_shop_exchange_limit_tip = {
		781333,
		112,
		true
	},
	meta_shop_exchange_limit_2_tip = {
		781445,
		149,
		true
	},
	charge_tip_crusing_label = {
		781594,
		100,
		true
	},
	mktea_1 = {
		781694,
		132,
		true
	},
	mktea_2 = {
		781826,
		132,
		true
	},
	mktea_3 = {
		781958,
		132,
		true
	},
	mktea_4 = {
		782090,
		177,
		true
	},
	mktea_5 = {
		782267,
		186,
		true
	},
	random_skin_list_item_desc_label = {
		782453,
		103,
		true
	},
	notice_input_desc = {
		782556,
		104,
		true
	},
	notice_label_send = {
		782660,
		93,
		true
	},
	notice_label_room = {
		782753,
		93,
		true
	},
	notice_label_recv = {
		782846,
		96,
		true
	},
	notice_label_tip = {
		782942,
		130,
		true
	},
	littleTaihou_npc = {
		783072,
		1208,
		true
	},
	disassemble_selected = {
		784280,
		93,
		true
	},
	disassemble_available = {
		784373,
		94,
		true
	},
	ship_formationUI_fleetName_challenge = {
		784467,
		118,
		true
	},
	ship_formationUI_fleetName_challenge_sub = {
		784585,
		122,
		true
	},
	word_status_activity = {
		784707,
		99,
		true
	},
	word_status_challenge = {
		784806,
		106,
		true
	},
	shipmodechange_reject_inactivity = {
		784912,
		167,
		true
	},
	shipmodechange_reject_inchallenge = {
		785079,
		161,
		true
	},
	battle_result_total_time = {
		785240,
		103,
		true
	},
	charge_game_room_coin_tip = {
		785343,
		231,
		true
	},
	game_room_shooting_tip = {
		785574,
		101,
		true
	},
	mini_game_shop_ticked_not_enough = {
		785675,
		154,
		true
	},
	game_ticket_current_month = {
		785829,
		101,
		true
	},
	game_icon_max_full = {
		785930,
		128,
		true
	},
	pre_combat_consume = {
		786058,
		91,
		true
	},
	file_down_msgbox = {
		786149,
		232,
		true
	},
	file_down_mgr_title = {
		786381,
		98,
		true
	},
	file_down_mgr_progress = {
		786479,
		91,
		true
	},
	file_down_mgr_error = {
		786570,
		135,
		true
	},
	last_building_not_shown = {
		786705,
		133,
		true
	},
	setting_group_prefs_tip = {
		786838,
		108,
		true
	},
	group_prefs_switch_tip = {
		786946,
		144,
		true
	},
	main_group_msgbox_content = {
		787090,
		225,
		true
	},
	word_maingroup_checking = {
		787315,
		96,
		true
	},
	word_maingroup_checktoupdate = {
		787411,
		104,
		true
	},
	word_maingroup_checkfailure = {
		787515,
		118,
		true
	},
	word_maingroup_updating = {
		787633,
		99,
		true
	},
	word_maingroup_updatesuccess = {
		787732,
		104,
		true
	},
	word_maingroup_updatefailure = {
		787836,
		119,
		true
	},
	group_download_tip = {
		787955,
		136,
		true
	},
	word_manga_checking = {
		788091,
		92,
		true
	},
	word_manga_checktoupdate = {
		788183,
		100,
		true
	},
	word_manga_checkfailure = {
		788283,
		114,
		true
	},
	word_manga_updating = {
		788397,
		107,
		true
	},
	word_manga_updatesuccess = {
		788504,
		100,
		true
	},
	word_manga_updatefailure = {
		788604,
		115,
		true
	},
	cryptolalia_lock_res = {
		788719,
		102,
		true
	},
	cryptolalia_not_download_res = {
		788821,
		113,
		true
	},
	cryptolalia_timelimie = {
		788934,
		91,
		true
	},
	cryptolalia_label_downloading = {
		789025,
		114,
		true
	},
	cryptolalia_delete_res = {
		789139,
		102,
		true
	},
	cryptolalia_delete_res_tip = {
		789241,
		118,
		true
	},
	cryptolalia_delete_res_title = {
		789359,
		104,
		true
	},
	cryptolalia_use_gem_title = {
		789463,
		112,
		true
	},
	cryptolalia_use_ticket_title = {
		789575,
		115,
		true
	},
	cryptolalia_exchange = {
		789690,
		96,
		true
	},
	cryptolalia_exchange_success = {
		789786,
		104,
		true
	},
	cryptolalia_list_title = {
		789890,
		98,
		true
	},
	cryptolalia_list_subtitle = {
		789988,
		97,
		true
	},
	cryptolalia_download_done = {
		790085,
		101,
		true
	},
	cryptolalia_coming_soom = {
		790186,
		102,
		true
	},
	cryptolalia_unopen = {
		790288,
		94,
		true
	},
	cryptolalia_no_ticket = {
		790382,
		146,
		true
	},
	cryptolalia_entrance_coming_soom = {
		790528,
		123,
		true
	},
	ship_formationUI_fleetName_sp = {
		790651,
		111,
		true
	},
	ship_formationUI_fleetName_sp_ss = {
		790762,
		120,
		true
	},
	activityboss_sp_all_buff = {
		790882,
		100,
		true
	},
	activityboss_sp_best_score = {
		790982,
		102,
		true
	},
	activityboss_sp_display_reward = {
		791084,
		106,
		true
	},
	activityboss_sp_score_bonus = {
		791190,
		103,
		true
	},
	activityboss_sp_active_buff = {
		791293,
		103,
		true
	},
	activityboss_sp_window_best_score = {
		791396,
		115,
		true
	},
	activityboss_sp_score_target = {
		791511,
		107,
		true
	},
	activityboss_sp_score = {
		791618,
		97,
		true
	},
	activityboss_sp_score_update = {
		791715,
		110,
		true
	},
	activityboss_sp_score_not_update = {
		791825,
		111,
		true
	},
	collect_page_got = {
		791936,
		92,
		true
	},
	charge_menu_month_tip = {
		792028,
		136,
		true
	},
	activity_shop_title = {
		792164,
		89,
		true
	},
	street_shop_title = {
		792253,
		87,
		true
	},
	military_shop_title = {
		792340,
		89,
		true
	},
	quota_shop_title1 = {
		792429,
		109,
		true
	},
	sham_shop_title = {
		792538,
		107,
		true
	},
	fragment_shop_title = {
		792645,
		89,
		true
	},
	guild_shop_title = {
		792734,
		86,
		true
	},
	medal_shop_title = {
		792820,
		86,
		true
	},
	meta_shop_title = {
		792906,
		83,
		true
	},
	mini_game_shop_title = {
		792989,
		90,
		true
	},
	metaskill_up = {
		793079,
		196,
		true
	},
	metaskill_overflow_tip = {
		793275,
		157,
		true
	},
	msgbox_repair_cipher = {
		793432,
		96,
		true
	},
	msgbox_repair_title = {
		793528,
		89,
		true
	},
	equip_skin_detail_count = {
		793617,
		94,
		true
	},
	faest_nothing_to_get = {
		793711,
		108,
		true
	},
	feast_click_to_close = {
		793819,
		112,
		true
	},
	feast_invitation_btn_label = {
		793931,
		102,
		true
	},
	feast_task_btn_label = {
		794033,
		96,
		true
	},
	feast_task_pt_label = {
		794129,
		93,
		true
	},
	feast_task_pt_level = {
		794222,
		88,
		true
	},
	feast_task_pt_get = {
		794310,
		90,
		true
	},
	feast_task_pt_got = {
		794400,
		90,
		true
	},
	feast_task_tag_daily = {
		794490,
		97,
		true
	},
	feast_task_tag_activity = {
		794587,
		100,
		true
	},
	feast_label_make_invitation = {
		794687,
		106,
		true
	},
	feast_no_invitation = {
		794793,
		98,
		true
	},
	feast_no_gift = {
		794891,
		98,
		true
	},
	feast_label_give_invitation = {
		794989,
		106,
		true
	},
	feast_label_give_invitation_finish = {
		795095,
		107,
		true
	},
	feast_label_give_gift = {
		795202,
		100,
		true
	},
	feast_label_give_gift_finish = {
		795302,
		101,
		true
	},
	feast_label_make_ticket_tip = {
		795403,
		140,
		true
	},
	feast_label_make_ticket_click_tip = {
		795543,
		121,
		true
	},
	feast_label_make_ticket_failed_tip = {
		795664,
		139,
		true
	},
	feast_res_window_title = {
		795803,
		92,
		true
	},
	feast_res_window_go_label = {
		795895,
		95,
		true
	},
	feast_tip = {
		795990,
		422,
		true
	},
	feast_invitation_part1 = {
		796412,
		188,
		true
	},
	feast_invitation_part2 = {
		796600,
		241,
		true
	},
	feast_invitation_part3 = {
		796841,
		259,
		true
	},
	feast_invitation_part4 = {
		797100,
		189,
		true
	},
	uscastle2023_help = {
		797289,
		933,
		true
	},
	feast_cant_give_gift_tip = {
		798222,
		147,
		true
	},
	uscastle2023_minigame_help = {
		798369,
		367,
		true
	},
	feast_drag_invitation_tip = {
		798736,
		130,
		true
	},
	feast_drag_gift_tip = {
		798866,
		120,
		true
	},
	shoot_preview = {
		798986,
		89,
		true
	},
	hit_preview = {
		799075,
		87,
		true
	},
	story_label_skip = {
		799162,
		86,
		true
	},
	story_label_auto = {
		799248,
		86,
		true
	},
	launch_ball_skill_desc = {
		799334,
		98,
		true
	},
	launch_ball_hatsuduki_skill_1 = {
		799432,
		118,
		true
	},
	launch_ball_hatsuduki_skill_1_desc = {
		799550,
		190,
		true
	},
	launch_ball_hatsuduki_skill_2 = {
		799740,
		132,
		true
	},
	launch_ball_hatsuduki_skill_2_desc = {
		799872,
		337,
		true
	},
	launch_ball_shinano_skill_1 = {
		800209,
		116,
		true
	},
	launch_ball_shinano_skill_1_desc = {
		800325,
		175,
		true
	},
	launch_ball_shinano_skill_2 = {
		800500,
		116,
		true
	},
	launch_ball_shinano_skill_2_desc = {
		800616,
		215,
		true
	},
	launch_ball_yura_skill_1 = {
		800831,
		113,
		true
	},
	launch_ball_yura_skill_1_desc = {
		800944,
		149,
		true
	},
	launch_ball_yura_skill_2 = {
		801093,
		113,
		true
	},
	launch_ball_yura_skill_2_desc = {
		801206,
		188,
		true
	},
	launch_ball_shimakaze_skill_1 = {
		801394,
		118,
		true
	},
	launch_ball_shimakaze_skill_1_desc = {
		801512,
		201,
		true
	},
	launch_ball_shimakaze_skill_2 = {
		801713,
		118,
		true
	},
	launch_ball_shimakaze_skill_2_desc = {
		801831,
		184,
		true
	},
	jp6th_spring_tip1 = {
		802015,
		162,
		true
	},
	jp6th_spring_tip2 = {
		802177,
		100,
		true
	},
	jp6th_biaohoushan_help = {
		802277,
		734,
		true
	},
	jp6th_lihoushan_help = {
		803011,
		1928,
		true
	},
	jp6th_lihoushan_time = {
		804939,
		116,
		true
	},
	jp6th_lihoushan_order = {
		805055,
		110,
		true
	},
	jp6th_lihoushan_pt1 = {
		805165,
		113,
		true
	},
	launchball_minigame_help = {
		805278,
		357,
		true
	},
	launchball_minigame_select = {
		805635,
		111,
		true
	},
	launchball_minigame_un_select = {
		805746,
		133,
		true
	},
	launchball_minigame_shop = {
		805879,
		107,
		true
	},
	launchball_lock_Shinano = {
		805986,
		165,
		true
	},
	launchball_lock_Yura = {
		806151,
		162,
		true
	},
	launchball_lock_Shimakaze = {
		806313,
		166,
		true
	},
	launchball_spilt_series = {
		806479,
		151,
		true
	},
	launchball_spilt_mix = {
		806630,
		233,
		true
	},
	launchball_spilt_over = {
		806863,
		191,
		true
	},
	launchball_spilt_many = {
		807054,
		168,
		true
	},
	luckybag_skin_isani = {
		807222,
		95,
		true
	},
	luckybag_skin_islive2d = {
		807317,
		93,
		true
	},
	SkinMagazinePage2_tip = {
		807410,
		97,
		true
	},
	racing_cost = {
		807507,
		88,
		true
	},
	racing_rank_top_text = {
		807595,
		96,
		true
	},
	racing_rank_half_h = {
		807691,
		104,
		true
	},
	racing_rank_no_data = {
		807795,
		106,
		true
	},
	racing_minigame_help = {
		807901,
		357,
		true
	},
	levelscene_deploy_submarine = {
		808258,
		103,
		true
	},
	levelscene_deploy_submarine_cancel = {
		808361,
		110,
		true
	},
	levelscene_airexpel_cancel = {
		808471,
		102,
		true
	},
	levelscene_airexpel_select_enemy = {
		808573,
		133,
		true
	},
	levelscene_airexpel_outrange = {
		808706,
		122,
		true
	},
	levelscene_airexpel_select_boss = {
		808828,
		132,
		true
	},
	levelscene_airexpel_select_battle = {
		808960,
		156,
		true
	},
	levelscene_airexpel_select_confirm_left = {
		809116,
		203,
		true
	},
	levelscene_airexpel_select_confirm_right = {
		809319,
		204,
		true
	},
	levelscene_airexpel_select_confirm_up = {
		809523,
		201,
		true
	},
	levelscene_airexpel_select_confirm_down = {
		809724,
		203,
		true
	},
	shipyard_phase_1 = {
		809927,
		712,
		true
	},
	shipyard_phase_2 = {
		810639,
		86,
		true
	},
	shipyard_button_1 = {
		810725,
		93,
		true
	},
	shipyard_button_2 = {
		810818,
		137,
		true
	},
	shipyard_introduce = {
		810955,
		219,
		true
	},
	help_supportfleet = {
		811174,
		358,
		true
	},
	word_status_inSupportFleet = {
		811532,
		105,
		true
	},
	ship_formationMediator_request_replace_support = {
		811637,
		205,
		true
	},
	courtyard_label_train = {
		811842,
		91,
		true
	},
	courtyard_label_rest = {
		811933,
		90,
		true
	},
	courtyard_label_capacity = {
		812023,
		94,
		true
	},
	courtyard_label_share = {
		812117,
		91,
		true
	},
	courtyard_label_shop = {
		812208,
		90,
		true
	},
	courtyard_label_decoration = {
		812298,
		96,
		true
	},
	courtyard_label_template = {
		812394,
		94,
		true
	},
	courtyard_label_floor = {
		812488,
		98,
		true
	},
	courtyard_label_exp_addition = {
		812586,
		105,
		true
	},
	courtyard_label_total_exp_addition = {
		812691,
		117,
		true
	},
	courtyard_label_comfortable_addition = {
		812808,
		125,
		true
	},
	courtyard_label_placed_furniture = {
		812933,
		111,
		true
	},
	courtyard_label_shop_1 = {
		813044,
		98,
		true
	},
	courtyard_label_clear = {
		813142,
		91,
		true
	},
	courtyard_label_save = {
		813233,
		90,
		true
	},
	courtyard_label_save_theme = {
		813323,
		102,
		true
	},
	courtyard_label_using = {
		813425,
		97,
		true
	},
	courtyard_label_search_holder = {
		813522,
		105,
		true
	},
	courtyard_label_filter = {
		813627,
		92,
		true
	},
	courtyard_label_time = {
		813719,
		90,
		true
	},
	courtyard_label_week = {
		813809,
		93,
		true
	},
	courtyard_label_month = {
		813902,
		94,
		true
	},
	courtyard_label_year = {
		813996,
		93,
		true
	},
	courtyard_label_putlist_title = {
		814089,
		114,
		true
	},
	courtyard_label_custom_theme = {
		814203,
		107,
		true
	},
	courtyard_label_system_theme = {
		814310,
		104,
		true
	},
	courtyard_tip_furniture_not_in_layer = {
		814414,
		124,
		true
	},
	courtyard_label_detail = {
		814538,
		92,
		true
	},
	courtyard_label_place_pnekey = {
		814630,
		104,
		true
	},
	courtyard_label_delete = {
		814734,
		92,
		true
	},
	courtyard_label_cancel_share = {
		814826,
		104,
		true
	},
	courtyard_label_empty_template_list = {
		814930,
		139,
		true
	},
	courtyard_label_empty_custom_template_list = {
		815069,
		195,
		true
	},
	courtyard_label_empty_collection_list = {
		815264,
		135,
		true
	},
	courtyard_label_go = {
		815399,
		88,
		true
	},
	mot_class_t_level_1 = {
		815487,
		92,
		true
	},
	mot_class_t_level_2 = {
		815579,
		95,
		true
	},
	equip_share_label_1 = {
		815674,
		95,
		true
	},
	equip_share_label_2 = {
		815769,
		95,
		true
	},
	equip_share_label_3 = {
		815864,
		95,
		true
	},
	equip_share_label_4 = {
		815959,
		95,
		true
	},
	equip_share_label_5 = {
		816054,
		95,
		true
	},
	equip_share_label_6 = {
		816149,
		95,
		true
	},
	equip_share_label_7 = {
		816244,
		95,
		true
	},
	equip_share_label_8 = {
		816339,
		95,
		true
	},
	equip_share_label_9 = {
		816434,
		95,
		true
	},
	equipcode_input = {
		816529,
		97,
		true
	},
	equipcode_slot_unmatch = {
		816626,
		138,
		true
	},
	equipcode_share_nolabel = {
		816764,
		133,
		true
	},
	equipcode_share_exceedlimit = {
		816897,
		127,
		true
	},
	equipcode_illegal = {
		817024,
		102,
		true
	},
	equipcode_confirm_doublecheck = {
		817126,
		133,
		true
	},
	equipcode_import_success = {
		817259,
		106,
		true
	},
	equipcode_share_success = {
		817365,
		111,
		true
	},
	equipcode_like_limited = {
		817476,
		125,
		true
	},
	equipcode_like_success = {
		817601,
		98,
		true
	},
	equipcode_dislike_success = {
		817699,
		101,
		true
	},
	equipcode_report_type_1 = {
		817800,
		105,
		true
	},
	equipcode_report_type_2 = {
		817905,
		105,
		true
	},
	equipcode_report_warning = {
		818010,
		147,
		true
	},
	equipcode_level_unmatched = {
		818157,
		101,
		true
	},
	equipcode_equipment_unowned = {
		818258,
		100,
		true
	},
	equipcode_diff_selected = {
		818358,
		99,
		true
	},
	equipcode_export_success = {
		818457,
		109,
		true
	},
	equipcode_unsaved_tips = {
		818566,
		135,
		true
	},
	equipcode_share_ruletips = {
		818701,
		155,
		true
	},
	equipcode_share_errorcode7 = {
		818856,
		136,
		true
	},
	equipcode_share_errorcode44 = {
		818992,
		140,
		true
	},
	equipcode_share_title = {
		819132,
		97,
		true
	},
	equipcode_share_titleeng = {
		819229,
		98,
		true
	},
	equipcode_share_listempty = {
		819327,
		107,
		true
	},
	equipcode_equip_occupied = {
		819434,
		97,
		true
	},
	sail_boat_equip_tip_1 = {
		819531,
		199,
		true
	},
	sail_boat_equip_tip_2 = {
		819730,
		199,
		true
	},
	sail_boat_equip_tip_3 = {
		819929,
		199,
		true
	},
	sail_boat_equip_tip_4 = {
		820128,
		184,
		true
	},
	sail_boat_equip_tip_5 = {
		820312,
		169,
		true
	},
	sail_boat_minigame_help = {
		820481,
		356,
		true
	},
	pirate_wanted_help = {
		820837,
		376,
		true
	},
	harbor_backhill_help = {
		821213,
		939,
		true
	},
	cryptolalia_download_task_already_exists = {
		822152,
		127,
		true
	},
	charge_scene_buy_confirm_backyard = {
		822279,
		172,
		true
	},
	roll_room1 = {
		822451,
		89,
		true
	},
	roll_room2 = {
		822540,
		80,
		true
	},
	roll_room3 = {
		822620,
		83,
		true
	},
	roll_room4 = {
		822703,
		80,
		true
	},
	roll_room5 = {
		822783,
		83,
		true
	},
	roll_room6 = {
		822866,
		83,
		true
	},
	roll_room7 = {
		822949,
		80,
		true
	},
	roll_room8 = {
		823029,
		80,
		true
	},
	roll_room9 = {
		823109,
		83,
		true
	},
	roll_room10 = {
		823192,
		84,
		true
	},
	roll_room11 = {
		823276,
		81,
		true
	},
	roll_room12 = {
		823357,
		84,
		true
	},
	roll_room13 = {
		823441,
		81,
		true
	},
	roll_room14 = {
		823522,
		81,
		true
	},
	roll_room15 = {
		823603,
		81,
		true
	},
	roll_room16 = {
		823684,
		81,
		true
	},
	roll_room17 = {
		823765,
		84,
		true
	},
	roll_attr_list = {
		823849,
		631,
		true
	},
	roll_notimes = {
		824480,
		115,
		true
	},
	roll_tip2 = {
		824595,
		124,
		true
	},
	roll_reward_word1 = {
		824719,
		87,
		true
	},
	roll_reward_word2 = {
		824806,
		90,
		true
	},
	roll_reward_word3 = {
		824896,
		90,
		true
	},
	roll_reward_word4 = {
		824986,
		90,
		true
	},
	roll_reward_word5 = {
		825076,
		90,
		true
	},
	roll_reward_word6 = {
		825166,
		90,
		true
	},
	roll_reward_word7 = {
		825256,
		90,
		true
	},
	roll_reward_word8 = {
		825346,
		87,
		true
	},
	roll_reward_tip = {
		825433,
		93,
		true
	},
	roll_unlock = {
		825526,
		159,
		true
	},
	roll_noname = {
		825685,
		93,
		true
	},
	roll_card_info = {
		825778,
		90,
		true
	},
	roll_card_attr = {
		825868,
		84,
		true
	},
	roll_card_skill = {
		825952,
		85,
		true
	},
	roll_times_left = {
		826037,
		94,
		true
	},
	roll_room_unexplored = {
		826131,
		87,
		true
	},
	roll_reward_got = {
		826218,
		88,
		true
	},
	roll_gametip = {
		826306,
		1177,
		true
	},
	roll_ending_tip1 = {
		827483,
		139,
		true
	},
	roll_ending_tip2 = {
		827622,
		142,
		true
	},
	commandercat_label_raw_name = {
		827764,
		103,
		true
	},
	commandercat_label_custom_name = {
		827867,
		109,
		true
	},
	commandercat_label_display_name = {
		827976,
		110,
		true
	},
	commander_selected_max = {
		828086,
		112,
		true
	},
	word_talent = {
		828198,
		81,
		true
	},
	word_click_to_close = {
		828279,
		101,
		true
	},
	commander_subtile_ablity = {
		828380,
		100,
		true
	},
	commander_subtile_talent = {
		828480,
		100,
		true
	},
	commander_confirm_tip = {
		828580,
		128,
		true
	},
	commander_level_up_tip = {
		828708,
		128,
		true
	},
	commander_skill_effect = {
		828836,
		98,
		true
	},
	commander_choice_talent_1 = {
		828934,
		125,
		true
	},
	commander_choice_talent_2 = {
		829059,
		104,
		true
	},
	commander_choice_talent_3 = {
		829163,
		132,
		true
	},
	commander_get_box_tip_1 = {
		829295,
		98,
		true
	},
	commander_get_box_tip = {
		829393,
		139,
		true
	},
	commander_total_gold = {
		829532,
		99,
		true
	},
	commander_use_box_tip = {
		829631,
		97,
		true
	},
	commander_use_box_queue = {
		829728,
		99,
		true
	},
	commander_command_ability = {
		829827,
		101,
		true
	},
	commander_logistics_ability = {
		829928,
		103,
		true
	},
	commander_tactical_ability = {
		830031,
		102,
		true
	},
	commander_choice_talent_4 = {
		830133,
		133,
		true
	},
	commander_rename_tip = {
		830266,
		138,
		true
	},
	commander_home_level_label = {
		830404,
		102,
		true
	},
	commander_get_commander_coptyright = {
		830506,
		125,
		true
	},
	commander_choice_talent_reset = {
		830631,
		202,
		true
	},
	commander_lock_setting_title = {
		830833,
		159,
		true
	},
	skin_exchange_confirm = {
		830992,
		160,
		true
	},
	skin_purchase_confirm = {
		831152,
		207,
		true
	},
	blackfriday_pack_lock = {
		831359,
		112,
		true
	},
	skin_exchange_title = {
		831471,
		98,
		true
	},
	blackfriday_pack_select_skinall = {
		831569,
		210,
		true
	},
	skin_discount_desc = {
		831779,
		124,
		true
	},
	skin_exchange_timelimit = {
		831903,
		172,
		true
	},
	blackfriday_pack_purchased = {
		832075,
		99,
		true
	},
	commander_unsel_lock_flag_tip = {
		832174,
		190,
		true
	},
	skin_discount_timelimit = {
		832364,
		155,
		true
	},
	shan_luan_task_progress_tip = {
		832519,
		104,
		true
	},
	shan_luan_task_level_tip = {
		832623,
		104,
		true
	},
	shan_luan_task_help = {
		832727,
		551,
		true
	},
	shan_luan_task_buff_default = {
		833278,
		100,
		true
	},
	senran_pt_consume_tip = {
		833378,
		204,
		true
	},
	senran_pt_not_enough = {
		833582,
		122,
		true
	},
	senran_pt_help = {
		833704,
		472,
		true
	},
	senran_pt_rank = {
		834176,
		95,
		true
	},
	senran_pt_words_feiniao = {
		834271,
		368,
		true
	},
	senran_pt_words_banjiu = {
		834639,
		423,
		true
	},
	senran_pt_words_yan = {
		835062,
		439,
		true
	},
	senran_pt_words_xuequan = {
		835501,
		415,
		true
	},
	senran_pt_words_xuebugui = {
		835916,
		422,
		true
	},
	senran_pt_words_zi = {
		836338,
		371,
		true
	},
	senran_pt_words_xishao = {
		836709,
		378,
		true
	},
	senrankagura_backhill_help = {
		837087,
		1007,
		true
	},
	vote_lable_not_start = {
		838094,
		93,
		true
	},
	vote_lable_voting = {
		838187,
		90,
		true
	},
	vote_lable_title = {
		838277,
		155,
		true
	},
	vote_lable_acc_title_1 = {
		838432,
		98,
		true
	},
	vote_lable_acc_title_2 = {
		838530,
		105,
		true
	},
	vote_lable_curr_title_1 = {
		838635,
		99,
		true
	},
	vote_lable_curr_title_2 = {
		838734,
		106,
		true
	},
	vote_lable_window_title = {
		838840,
		99,
		true
	},
	vote_lable_rearch = {
		838939,
		90,
		true
	},
	vote_lable_daily_task_title = {
		839029,
		103,
		true
	},
	vote_lable_daily_task_tip = {
		839132,
		124,
		true
	},
	vote_lable_task_title = {
		839256,
		97,
		true
	},
	vote_lable_task_list_is_empty = {
		839353,
		123,
		true
	},
	vote_lable_ship_votes = {
		839476,
		90,
		true
	},
	vote_help_2023 = {
		839566,
		4706,
		true
	},
	vote_tip_level_limit = {
		844272,
		160,
		true
	},
	vote_label_rank = {
		844432,
		85,
		true
	},
	vote_label_rank_fresh_time_tip = {
		844517,
		127,
		true
	},
	vote_tip_area_closed = {
		844644,
		117,
		true
	},
	commander_skill_ui_info = {
		844761,
		93,
		true
	},
	commander_skill_ui_confirm = {
		844854,
		96,
		true
	},
	commander_formation_prefab_fleet = {
		844950,
		111,
		true
	},
	rect_ship_card_tpl_add = {
		845061,
		98,
		true
	},
	newyear2024_backhill_help = {
		845159,
		455,
		true
	},
	last_times_sign = {
		845614,
		102,
		true
	},
	skin_page_sign = {
		845716,
		90,
		true
	},
	skin_page_desc = {
		845806,
		181,
		true
	},
	live2d_reset_desc = {
		845987,
		102,
		true
	}
}
