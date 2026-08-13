------------------------------------------------------------------------------------
--Name：            190528[英文征服][活动脚本]6月全球同服SLG发奖action制作6.11
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------

----------------------------------表配置部分--------------------------------------------
local tGlobalSLGAction_Pack = {}
	-- ===个人5000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321708]
	-- ===删除: 3321708,1
	tGlobalSLGAction_Pack[3321708] = {}
	tGlobalSLGAction_Pack[3321708]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321708]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321708]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321708]["DeleteItem"][1]["Id"] = 3321708 -- 【库】Individual5KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321708]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321708]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321708]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321708]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tGlobalSLGAction_Pack[3321708]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321708]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】赠非稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321708]["RewardItem"][2]["Attr"] = "0 1 3" -- YellowRuneFragment*1
	tGlobalSLGAction_Pack[3321708]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321708]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tGlobalSLGAction_Pack[3321708]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321708]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321708]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321709] = {}
	-- ===个人10000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321709]
	-- ===删除: 3321709,1
	tGlobalSLGAction_Pack[3321709]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321709]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321709]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321709]["DeleteItem"][1]["Id"] = 3321709 -- 【库】Individual10KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321709]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321709]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321709]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321709]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tGlobalSLGAction_Pack[3321709]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321709]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】赠非稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321709]["RewardItem"][2]["Attr"] = "0 2 3" -- YellowRuneFragment*2
	tGlobalSLGAction_Pack[3321709]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321709]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tGlobalSLGAction_Pack[3321709]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321709]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321709]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321710] = {}
	-- ===个人20000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321710]
	-- ===删除: 3321710,1
	tGlobalSLGAction_Pack[3321710]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321710]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321710]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321710]["DeleteItem"][1]["Id"] = 3321710 -- 【库】Individual20KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321710]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321710]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321710]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321710]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的TwilightStarStone*8
	tGlobalSLGAction_Pack[3321710]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321710]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】赠非稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321710]["RewardItem"][2]["Attr"] = "0 3 3" -- YellowRuneFragment*3
	tGlobalSLGAction_Pack[3321710]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321710]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tGlobalSLGAction_Pack[3321710]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321710]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321710]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321711] = {}
	-- ===个人30000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321711]
	-- ===删除: 3321711,1
	tGlobalSLGAction_Pack[3321711]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321711]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321711]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321711]["DeleteItem"][1]["Id"] = 3321711 -- 【库】Individual30KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321711]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321711]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321711]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321711]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tGlobalSLGAction_Pack[3321711]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321711]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】赠非稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321711]["RewardItem"][2]["Attr"] = "0 4 3" -- YellowRuneFragment*4
	tGlobalSLGAction_Pack[3321711]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321711]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tGlobalSLGAction_Pack[3321711]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321711]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321711]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321712] = {}
	-- ===个人40000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321712]
	-- ===删除: 3321712,1
	tGlobalSLGAction_Pack[3321712]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321712]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321712]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321712]["DeleteItem"][1]["Id"] = 3321712 -- 【库】Individual40KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321712]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321712]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321712]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321712]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tGlobalSLGAction_Pack[3321712]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321712]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】赠非稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321712]["RewardItem"][2]["Attr"] = "0 5 3" -- YellowRuneFragment*5
	tGlobalSLGAction_Pack[3321712]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321712]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tGlobalSLGAction_Pack[3321712]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321712]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321712]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321713] = {}
	-- ===个人50000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321713]
	-- ===删除: 3321713,1
	tGlobalSLGAction_Pack[3321713]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321713]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321713]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321713]["DeleteItem"][1]["Id"] = 3321713 -- 【库】Individual50KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321713]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321713]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321713]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321713]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tGlobalSLGAction_Pack[3321713]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321713]["RewardItem"][2]["Id"] = 3306370 -- 【库】YellowRuneFragment[属性:9], 【表格】赠非稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321713]["RewardItem"][2]["Attr"] = "0 5 3" -- YellowRuneFragment*5
	tGlobalSLGAction_Pack[3321713]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321713]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tGlobalSLGAction_Pack[3321713]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321713]["RewardItem"][3]["Id"] = 3306885 -- 【库】RelicCrystal[属性:9], 【表格】神器源晶
	tGlobalSLGAction_Pack[3321713]["RewardItem"][3]["Attr"] = "0 5" -- RelicCrystal*5
	tGlobalSLGAction_Pack[3321713]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321713]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321713]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321714] = {}
	-- ===个人60000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321714]
	-- ===删除: 3321714,1
	tGlobalSLGAction_Pack[3321714]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321714]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321714]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321714]["DeleteItem"][1]["Id"] = 3321714 -- 【库】Individual60KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321714]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321714]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321714]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321714]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tGlobalSLGAction_Pack[3321714]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321714]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321714]["RewardItem"][2]["Attr"] = "0 5 3" -- YellowRuneEssence（赠）*5
	tGlobalSLGAction_Pack[3321714]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321714]["RewardItem"][3]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321714]["RewardItem"][3]["Attr"] = "0 2" -- NormalGemBag*2
	tGlobalSLGAction_Pack[3321714]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321714]["RewardItem"][4]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】赠强效护心丹
	tGlobalSLGAction_Pack[3321714]["RewardItem"][4]["Attr"] = "0 10" -- SuperProtectionPill*10
	tGlobalSLGAction_Pack[3321714]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321714]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321714]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321715] = {}
	-- ===个人75000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321715]
	-- ===删除: 3321715,1
	tGlobalSLGAction_Pack[3321715]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321715]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321715]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321715]["DeleteItem"][1]["Id"] = 3321715 -- 【库】Individual75KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321715]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321715]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321715]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321715]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tGlobalSLGAction_Pack[3321715]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321715]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321715]["RewardItem"][2]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*10
	tGlobalSLGAction_Pack[3321715]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321715]["RewardItem"][3]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321715]["RewardItem"][3]["Attr"] = "0 3" -- NormalGemBag*3
	tGlobalSLGAction_Pack[3321715]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321715]["RewardItem"][4]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】赠强效护心丹
	tGlobalSLGAction_Pack[3321715]["RewardItem"][4]["Attr"] = "0 20" -- SuperProtectionPill*20
	tGlobalSLGAction_Pack[3321715]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321715]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321715]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321716] = {}
	-- ===个人90000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321716]
	-- ===删除: 3321716,1
	tGlobalSLGAction_Pack[3321716]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321716]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321716]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321716]["DeleteItem"][1]["Id"] = 3321716 -- 【库】Individual90KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321716]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321716]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321716]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321716]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tGlobalSLGAction_Pack[3321716]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321716]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321716]["RewardItem"][2]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*10
	tGlobalSLGAction_Pack[3321716]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321716]["RewardItem"][3]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321716]["RewardItem"][3]["Attr"] = "0 5" -- NormalGemBag*5
	tGlobalSLGAction_Pack[3321716]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321716]["RewardItem"][4]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】赠强效护心丹
	tGlobalSLGAction_Pack[3321716]["RewardItem"][4]["Attr"] = "0 20" -- SuperProtectionPill*20
	tGlobalSLGAction_Pack[3321716]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321716]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321716]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321717] = {}
	-- ===个人110000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321717]
	-- ===删除: 3321717,1
	tGlobalSLGAction_Pack[3321717]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321717]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321717]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321717]["DeleteItem"][1]["Id"] = 3321717 -- 【库】Individual110KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321717]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321717]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321717]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321717]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321717]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321717]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321717]["RewardItem"][2]["Attr"] = "0 15 3" -- YellowRuneEssence（赠）*15
	tGlobalSLGAction_Pack[3321717]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321717]["RewardItem"][3]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】赠免费强炼丹
	tGlobalSLGAction_Pack[3321717]["RewardItem"][3]["Attr"] = "0 10 3" -- FavoredTrainingPill（赠）*10
	tGlobalSLGAction_Pack[3321717]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321717]["RewardItem"][4]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】赠强效护心丹
	tGlobalSLGAction_Pack[3321717]["RewardItem"][4]["Attr"] = "0 20" -- SuperProtectionPill*20
	tGlobalSLGAction_Pack[3321717]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321717]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321717]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321718] = {}
	-- ===个人130000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321718]
	-- ===删除: 3321718,1
	tGlobalSLGAction_Pack[3321718]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321718]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321718]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321718]["DeleteItem"][1]["Id"] = 3321718 -- 【库】Individual130KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321718]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321718]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321718]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321718]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321718]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321718]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321718]["RewardItem"][2]["Attr"] = "0 15 3" -- YellowRuneEssence（赠）*15
	tGlobalSLGAction_Pack[3321718]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321718]["RewardItem"][3]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】赠免费强炼丹
	tGlobalSLGAction_Pack[3321718]["RewardItem"][3]["Attr"] = "0 20 3" -- FavoredTrainingPill（赠）*20
	tGlobalSLGAction_Pack[3321718]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321718]["RewardItem"][4]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】赠强效护心丹
	tGlobalSLGAction_Pack[3321718]["RewardItem"][4]["Attr"] = "0 20" -- SuperProtectionPill*20
	tGlobalSLGAction_Pack[3321718]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321718]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321718]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321719] = {}
	-- ===个人160000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321719]
	-- ===删除: 3321719,1
	tGlobalSLGAction_Pack[3321719]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321719]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321719]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321719]["DeleteItem"][1]["Id"] = 3321719 -- 【库】Individual160KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321719]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321719]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321719]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321719]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321719]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321719]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321719]["RewardItem"][2]["Attr"] = "0 15 3" -- YellowRuneEssence（赠）*15
	tGlobalSLGAction_Pack[3321719]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321719]["RewardItem"][3]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】赠免费强炼丹
	tGlobalSLGAction_Pack[3321719]["RewardItem"][3]["Attr"] = "0 25 3" -- FavoredTrainingPill（赠）*25
	tGlobalSLGAction_Pack[3321719]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321719]["RewardItem"][4]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】赠强效护心丹
	tGlobalSLGAction_Pack[3321719]["RewardItem"][4]["Attr"] = "0 25" -- SuperProtectionPill*25
	tGlobalSLGAction_Pack[3321719]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321719]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321719]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321720] = {}
	-- ===个人190000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321720]
	-- ===删除: 3321720,1
	tGlobalSLGAction_Pack[3321720]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321720]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321720]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321720]["DeleteItem"][1]["Id"] = 3321720 -- 【库】Individual190KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321720]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321720]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321720]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321720]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321720]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321720]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321720]["RewardItem"][2]["Attr"] = "0 20 3" -- YellowRuneEssence（赠）*20
	tGlobalSLGAction_Pack[3321720]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321720]["RewardItem"][3]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶
	tGlobalSLGAction_Pack[3321720]["RewardItem"][3]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tGlobalSLGAction_Pack[3321720]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321720]["RewardItem"][4]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321720]["RewardItem"][4]["Attr"] = "0 5" -- GinsengFruit*5
	tGlobalSLGAction_Pack[3321720]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321720]["RewardRepairValue"]["Value"] = 500 -- 修为值, 【需求】500修为值
	tGlobalSLGAction_Pack[3321720]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321720]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321720]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321721] = {}
	-- ===个人220000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321721]
	-- ===删除: 3321721,1
	tGlobalSLGAction_Pack[3321721]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321721]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321721]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321721]["DeleteItem"][1]["Id"] = 3321721 -- 【库】Individual220KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321721]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321721]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321721]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321721]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321721]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321721]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321721]["RewardItem"][2]["Attr"] = "0 20 3" -- YellowRuneEssence（赠）*20
	tGlobalSLGAction_Pack[3321721]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321721]["RewardItem"][3]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶
	tGlobalSLGAction_Pack[3321721]["RewardItem"][3]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tGlobalSLGAction_Pack[3321721]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321721]["RewardItem"][4]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321721]["RewardItem"][4]["Attr"] = "0 5" -- GinsengFruit*5
	tGlobalSLGAction_Pack[3321721]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321721]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】1000修为值
	tGlobalSLGAction_Pack[3321721]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321721]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321721]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321722] = {}
	-- ===个人250000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321722]
	-- ===删除: 3321722,1
	tGlobalSLGAction_Pack[3321722]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321722]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321722]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321722]["DeleteItem"][1]["Id"] = 3321722 -- 【库】Individual250KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321722]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321722]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321722]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321722]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321722]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321722]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321722]["RewardItem"][2]["Attr"] = "0 25 3" -- YellowRuneEssence（赠）*25
	tGlobalSLGAction_Pack[3321722]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321722]["RewardItem"][3]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶
	tGlobalSLGAction_Pack[3321722]["RewardItem"][3]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tGlobalSLGAction_Pack[3321722]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321722]["RewardItem"][4]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321722]["RewardItem"][4]["Attr"] = "0 10" -- GinsengFruit*10
	tGlobalSLGAction_Pack[3321722]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321722]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】1000修为值
	tGlobalSLGAction_Pack[3321722]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321722]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321722]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321723] = {}
	-- ===个人280000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321723]
	-- ===删除: 3321723,1
	tGlobalSLGAction_Pack[3321723]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321723]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321723]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321723]["DeleteItem"][1]["Id"] = 3321723 -- 【库】Individual280KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321723]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321723]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321723]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321723]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tGlobalSLGAction_Pack[3321723]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321723]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321723]["RewardItem"][2]["Attr"] = "0 25 3" -- YellowRuneEssence（赠）*25
	tGlobalSLGAction_Pack[3321723]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321723]["RewardItem"][3]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶
	tGlobalSLGAction_Pack[3321723]["RewardItem"][3]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tGlobalSLGAction_Pack[3321723]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321723]["RewardItem"][4]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321723]["RewardItem"][4]["Attr"] = "0 10" -- GinsengFruit*10
	tGlobalSLGAction_Pack[3321723]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321723]["RewardRepairValue"]["Value"] = 2000 -- 修为值, 【需求】2000修为值
	tGlobalSLGAction_Pack[3321723]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321723]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321723]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321724] = {}
	-- ===个人300000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321724]
	-- ===删除: 3321724,1
	tGlobalSLGAction_Pack[3321724]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321724]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321724]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321724]["DeleteItem"][1]["Id"] = 3321724 -- 【库】Individual300KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321724]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321724]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321724]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321724]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tGlobalSLGAction_Pack[3321724]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321724]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321724]["RewardItem"][2]["Attr"] = "0 30 3" -- YellowRuneEssence（赠）*30
	tGlobalSLGAction_Pack[3321724]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321724]["RewardItem"][3]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶
	tGlobalSLGAction_Pack[3321724]["RewardItem"][3]["Attr"] = "0 3 3" -- RuneCrystal（赠）*3
	tGlobalSLGAction_Pack[3321724]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321724]["RewardItem"][4]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321724]["RewardItem"][4]["Attr"] = "0 20" -- GinsengFruit*20
	tGlobalSLGAction_Pack[3321724]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321724]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tGlobalSLGAction_Pack[3321724]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321724]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321724]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321725] = {}
	-- ===个人350000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321725]
	-- ===删除: 3321725,1
	tGlobalSLGAction_Pack[3321725]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321725]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321725]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321725]["DeleteItem"][1]["Id"] = 3321725 -- 【库】Individual350KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321725]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321725]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321725]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321725]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tGlobalSLGAction_Pack[3321725]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321725]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠黄色神纹精粹
	tGlobalSLGAction_Pack[3321725]["RewardItem"][2]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tGlobalSLGAction_Pack[3321725]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321725]["RewardItem"][3]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶
	tGlobalSLGAction_Pack[3321725]["RewardItem"][3]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tGlobalSLGAction_Pack[3321725]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321725]["RewardItem"][4]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321725]["RewardItem"][4]["Attr"] = "0 30" -- GinsengFruit*30
	tGlobalSLGAction_Pack[3321725]["RewardItem"][5] = {}
	tGlobalSLGAction_Pack[3321725]["RewardItem"][5]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】散功丹
	tGlobalSLGAction_Pack[3321725]["RewardItem"][5]["Attr"] = "0 1 3" -- PowerEraser（赠）*1
	tGlobalSLGAction_Pack[3321725]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321725]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321725]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321726] = {}
	-- ===帮派100000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321726]
	-- ===删除: 3321726,1
	tGlobalSLGAction_Pack[3321726]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321726]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321726]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321726]["DeleteItem"][1]["Id"] = 3321726 -- 【库】Guild100KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321726]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321726]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tGlobalSLGAction_Pack[3321726]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321726]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321726]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321727] = {}
	-- ===帮派200000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321727]
	-- ===删除: 3321727,1
	tGlobalSLGAction_Pack[3321727]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321727]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321727]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321727]["DeleteItem"][1]["Id"] = 3321727 -- 【库】Guild200KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321727]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321727]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tGlobalSLGAction_Pack[3321727]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321727]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321727]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321728] = {}
	-- ===帮派400000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321728]
	-- ===删除: 3321728,1
	tGlobalSLGAction_Pack[3321728]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321728]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321728]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321728]["DeleteItem"][1]["Id"] = 3321728 -- 【库】Guild400KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321728]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321728]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tGlobalSLGAction_Pack[3321728]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321728]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321728]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321729] = {}
	-- ===帮派600000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321729]
	-- ===删除: 3321729,1
	tGlobalSLGAction_Pack[3321729]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321729]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321729]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321729]["DeleteItem"][1]["Id"] = 3321729 -- 【库】Guild600KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321729]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321729]["RewardStrengthValue"]["Value"] = 400 -- 气力值, 【需求】400气力值
	tGlobalSLGAction_Pack[3321729]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321729]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321729]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321730] = {}
	-- ===帮派800000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321730]
	-- ===删除: 3321730,1
	tGlobalSLGAction_Pack[3321730]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321730]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321730]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321730]["DeleteItem"][1]["Id"] = 3321730 -- 【库】Guild800KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321730]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321730]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tGlobalSLGAction_Pack[3321730]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321730]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321730]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321731] = {}
	-- ===帮派1000000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321731]
	-- ===删除: 3321731,1
	tGlobalSLGAction_Pack[3321731]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321731]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321731]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321731]["DeleteItem"][1]["Id"] = 3321731 -- 【库】Guild1000KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321731]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321731]["RewardStrengthValue"]["Value"] = 600 -- 气力值, 【需求】600气力值
	tGlobalSLGAction_Pack[3321731]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321731]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321731]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321732] = {}
	-- ===帮派1200000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321732]
	-- ===删除: 3321732,1
	tGlobalSLGAction_Pack[3321732]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321732]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321732]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321732]["DeleteItem"][1]["Id"] = 3321732 -- 【库】Guild1200KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321732]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321732]["RewardStrengthValue"]["Value"] = 800 -- 气力值, 【需求】800气力值
	tGlobalSLGAction_Pack[3321732]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321732]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321732]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321733] = {}
	-- ===帮派1500000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321733]
	-- ===删除: 3321733,1
	tGlobalSLGAction_Pack[3321733]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321733]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321733]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321733]["DeleteItem"][1]["Id"] = 3321733 -- 【库】Guild1500KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321733]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321733]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tGlobalSLGAction_Pack[3321733]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321733]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321733]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321734] = {}
	-- ===帮派1800000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321734]
	-- ===删除: 3321734,1
	tGlobalSLGAction_Pack[3321734]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321734]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321734]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321734]["DeleteItem"][1]["Id"] = 3321734 -- 【库】Guild1800KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321734]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321734]["RewardStrengthValue"]["Value"] = 1200 -- 气力值, 【需求】1200气力值
	tGlobalSLGAction_Pack[3321734]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321734]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321734]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321735] = {}
	-- ===帮派2200000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321735]
	-- ===删除: 3321735,1
	tGlobalSLGAction_Pack[3321735]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321735]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321735]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321735]["DeleteItem"][1]["Id"] = 3321735 -- 【库】Guild2200KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321735]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321735]["RewardStrengthValue"]["Value"] = 1400 -- 气力值, 【需求】1400气力值
	tGlobalSLGAction_Pack[3321735]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321735]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321735]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321736] = {}
	-- ===帮派2600000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321736]
	-- ===删除: 3321736,1
	tGlobalSLGAction_Pack[3321736]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321736]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321736]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321736]["DeleteItem"][1]["Id"] = 3321736 -- 【库】Guild2600KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321736]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321736]["RewardStrengthValue"]["Value"] = 1600 -- 气力值, 【需求】1600气力值
	tGlobalSLGAction_Pack[3321736]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321736]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321736]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321737] = {}
	-- ===帮派3200000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321737]
	-- ===删除: 3321737,1
	tGlobalSLGAction_Pack[3321737]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321737]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321737]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321737]["DeleteItem"][1]["Id"] = 3321737 -- 【库】Guild3200KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321737]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321737]["RewardStrengthValue"]["Value"] = 1800 -- 气力值, 【需求】1800气力值
	tGlobalSLGAction_Pack[3321737]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321737]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321737]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321738] = {}
	-- ===帮派3800000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321738]
	-- ===删除: 3321738,1
	tGlobalSLGAction_Pack[3321738]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321738]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321738]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321738]["DeleteItem"][1]["Id"] = 3321738 -- 【库】Guild3800KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321738]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321738]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tGlobalSLGAction_Pack[3321738]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321738]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321738]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321739] = {}
	-- ===帮派4400000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321739]
	-- ===删除: 3321739,1
	tGlobalSLGAction_Pack[3321739]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321739]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321739]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321739]["DeleteItem"][1]["Id"] = 3321739 -- 【库】Guild4400KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321739]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321739]["RewardStrengthValue"]["Value"] = 2500 -- 气力值, 【需求】2500气力值
	tGlobalSLGAction_Pack[3321739]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321739]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321739]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321740] = {}
	-- ===帮派5000000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321740]
	-- ===删除: 3321740,1
	tGlobalSLGAction_Pack[3321740]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321740]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321740]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321740]["DeleteItem"][1]["Id"] = 3321740 -- 【库】Guild5000KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321740]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321740]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tGlobalSLGAction_Pack[3321740]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321740]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321740]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321741] = {}
	-- ===帮派5600000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321741]
	-- ===删除: 3321741,1
	tGlobalSLGAction_Pack[3321741]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321741]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321741]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321741]["DeleteItem"][1]["Id"] = 3321741 -- 【库】Guild5600KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321741]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321741]["RewardStrengthValue"]["Value"] = 3500 -- 气力值, 【需求】3500气力值
	tGlobalSLGAction_Pack[3321741]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321741]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321741]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321742] = {}
	-- ===帮派6000000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321742]
	-- ===删除: 3321742,1
	tGlobalSLGAction_Pack[3321742]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321742]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321742]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321742]["DeleteItem"][1]["Id"] = 3321742 -- 【库】Guild6000KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321742]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321742]["RewardStrengthValue"]["Value"] = 4000 -- 气力值, 【需求】4000气力值
	tGlobalSLGAction_Pack[3321742]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321742]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321742]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321743] = {}
	-- ===帮派7000000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321743]
	-- ===删除: 3321743,1
	tGlobalSLGAction_Pack[3321743]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321743]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321743]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321743]["DeleteItem"][1]["Id"] = 3321743 -- 【库】Guild7000KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321743]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321743]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tGlobalSLGAction_Pack[3321743]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321743]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321743]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321744] = {}
	-- ===个人每日3000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321744]
	-- ===删除: 3321744,1
	tGlobalSLGAction_Pack[3321744]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321744]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321744]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321744]["DeleteItem"][1]["Id"] = 3321744 -- 【库】Daily3KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321744]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321744]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321744]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321744]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tGlobalSLGAction_Pack[3321744]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321744]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力值
	tGlobalSLGAction_Pack[3321744]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321744]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321744]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321745] = {}
	-- ===个人每日5000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321745]
	-- ===删除: 3321745,1
	tGlobalSLGAction_Pack[3321745]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321745]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321745]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321745]["DeleteItem"][1]["Id"] = 3321745 -- 【库】Daily5KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321745]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321745]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321745]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321745]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tGlobalSLGAction_Pack[3321745]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321745]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】200气力值
	tGlobalSLGAction_Pack[3321745]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321745]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321745]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321746] = {}
	-- ===个人每日8000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321746]
	-- ===删除: 3321746,1
	tGlobalSLGAction_Pack[3321746]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321746]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321746]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321746]["DeleteItem"][1]["Id"] = 3321746 -- 【库】Daily8KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321746]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321746]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321746]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321746]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tGlobalSLGAction_Pack[3321746]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321746]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tGlobalSLGAction_Pack[3321746]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321746]["RewardItem"][2]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】随机普通宝石袋
	tGlobalSLGAction_Pack[3321746]["RewardItem"][2]["Attr"] = "0 1" -- NormalGemBag*1
	tGlobalSLGAction_Pack[3321746]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321746]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321746]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321747] = {}
	-- ===个人每日10000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321747]
	-- ===删除: 3321747,1
	tGlobalSLGAction_Pack[3321747]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321747]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321747]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321747]["DeleteItem"][1]["Id"] = 3321747 -- 【库】Daily10KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321747]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321747]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321747]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321747]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tGlobalSLGAction_Pack[3321747]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321747]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tGlobalSLGAction_Pack[3321747]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321747]["RewardItem"][2]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】随机普通宝石袋
	tGlobalSLGAction_Pack[3321747]["RewardItem"][2]["Attr"] = "0 2" -- NormalGemBag*2
	tGlobalSLGAction_Pack[3321747]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321747]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321747]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321748] = {}
	-- ===个人每日15000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321748]
	-- ===删除: 3321748,1
	tGlobalSLGAction_Pack[3321748]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321748]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321748]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321748]["DeleteItem"][1]["Id"] = 3321748 -- 【库】Daily15KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321748]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321748]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321748]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321748]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tGlobalSLGAction_Pack[3321748]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321748]["RewardStrengthValue"]["Value"] = 800 -- 气力值, 【需求】800气力值
	tGlobalSLGAction_Pack[3321748]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321748]["RewardItem"][2]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】随机普通宝石袋
	tGlobalSLGAction_Pack[3321748]["RewardItem"][2]["Attr"] = "0 3" -- NormalGemBag*3
	tGlobalSLGAction_Pack[3321748]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321748]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321748]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321749] = {}
	-- ===个人每日20000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321749]
	-- ===删除: 3321749,1
	tGlobalSLGAction_Pack[3321749]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321749]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321749]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321749]["DeleteItem"][1]["Id"] = 3321749 -- 【库】Daily20KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321749]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321749]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321749]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321749]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tGlobalSLGAction_Pack[3321749]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321749]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tGlobalSLGAction_Pack[3321749]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321749]["RewardItem"][2]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】随机普通宝石袋
	tGlobalSLGAction_Pack[3321749]["RewardItem"][2]["Attr"] = "0 3" -- NormalGemBag*3
	tGlobalSLGAction_Pack[3321749]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321749]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321749]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321750] = {}
	-- ===个人每日25000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321750]
	-- ===删除: 3321750,1
	tGlobalSLGAction_Pack[3321750]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321750]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321750]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321750]["DeleteItem"][1]["Id"] = 3321750 -- 【库】Daily25KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321750]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321750]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321750]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321750]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tGlobalSLGAction_Pack[3321750]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321750]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321750]["RewardItem"][2]["Attr"] = "0 1" -- GinsengFruit*1
	tGlobalSLGAction_Pack[3321750]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321750]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321750]["RewardItem"][3]["Attr"] = "0 1 3" -- SeniorTrainingPill（赠）*1
	tGlobalSLGAction_Pack[3321750]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321750]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321750]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321751] = {}
	-- ===个人每日30000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321751]
	-- ===删除: 3321751,1
	tGlobalSLGAction_Pack[3321751]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321751]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321751]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321751]["DeleteItem"][1]["Id"] = 3321751 -- 【库】Daily30KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321751]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321751]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321751]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321751]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tGlobalSLGAction_Pack[3321751]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321751]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321751]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tGlobalSLGAction_Pack[3321751]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321751]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321751]["RewardItem"][3]["Attr"] = "0 2 3" -- SeniorTrainingPill（赠）*2
	tGlobalSLGAction_Pack[3321751]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321751]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321751]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321752] = {}
	-- ===个人每日40000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321752]
	-- ===删除: 3321752,1
	tGlobalSLGAction_Pack[3321752]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321752]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321752]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321752]["DeleteItem"][1]["Id"] = 3321752 -- 【库】Daily40KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321752]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321752]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321752]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321752]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321752]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321752]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321752]["RewardItem"][2]["Attr"] = "0 3" -- GinsengFruit*3
	tGlobalSLGAction_Pack[3321752]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321752]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321752]["RewardItem"][3]["Attr"] = "0 3 3" -- SeniorTrainingPill（赠）*3
	tGlobalSLGAction_Pack[3321752]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321752]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321752]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321753] = {}
	-- ===个人每日50000积分奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321753]
	-- ===删除: 3321753,1
	tGlobalSLGAction_Pack[3321753]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321753]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321753]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321753]["DeleteItem"][1]["Id"] = 3321753 -- 【库】Daily50KPtsBag[属性:9]
	tGlobalSLGAction_Pack[3321753]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321753]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321753]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321753]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tGlobalSLGAction_Pack[3321753]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321753]["RewardItem"][2]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果
	tGlobalSLGAction_Pack[3321753]["RewardItem"][2]["Attr"] = "0 4" -- GinsengFruit*4
	tGlobalSLGAction_Pack[3321753]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321753]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321753]["RewardItem"][3]["Attr"] = "0 5 3" -- SeniorTrainingPill（赠）*5
	tGlobalSLGAction_Pack[3321753]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321753]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321753]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321754] = {}
	-- ===单日占领霸主奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321754]
	-- ===删除: 3321754,1
	tGlobalSLGAction_Pack[3321754]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321754]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321754]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321754]["DeleteItem"][1]["Id"] = 3321754 -- 【库】GuildLeaderOccupationBox[属性:9]
	tGlobalSLGAction_Pack[3321754]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321754]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321754]["RewardItem"][1]["Id"] = 189135 -- 【库】ArmorofHolyLight[属性:9], 【表格】1天时效五星神佑-1神威宝铠
	tGlobalSLGAction_Pack[3321754]["RewardItem"][1]["Attr"] = "0 1 0 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ArmorofHolyLight*1
	tGlobalSLGAction_Pack[3321754]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321754]["RewardItem"][2]["Id"] = 200531 -- 【库】FieryDragon(Hades)[属性:0], 【表格】1天时效五星神佑-1暗黑赤炎魔龙【炼狱版】
	tGlobalSLGAction_Pack[3321754]["RewardItem"][2]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FieryDragon(Hades)（赠）*1
	tGlobalSLGAction_Pack[3321754]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321754]["RewardItem"][3]["Id"] = 3303373 -- 【库】KnowledgePill[属性:9], 【表格】魔武通玄丹
	tGlobalSLGAction_Pack[3321754]["RewardItem"][3]["Attr"] = "0 5" -- KnowledgePill*5
	tGlobalSLGAction_Pack[3321754]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321754]["RewardItem"][4]["Id"] = 3311749 -- 【库】RareBlueRune(B)Fragment[属性:9], 【表格】稀有蓝色神纹（赠）碎片
	tGlobalSLGAction_Pack[3321754]["RewardItem"][4]["Attr"] = "0 1" -- RareBlueRune(B)Fragment*1
	tGlobalSLGAction_Pack[3321754]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321754]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321754]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321755] = {}
	-- ===单日占领霸主奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321755]
	-- ===删除: 3321755,1
	tGlobalSLGAction_Pack[3321755]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321755]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321755]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321755]["DeleteItem"][1]["Id"] = 3321755 -- 【库】GuildMemberOccupationBox[属性:9]
	tGlobalSLGAction_Pack[3321755]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321755]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321755]["RewardItem"][1]["Id"] = 189135 -- 【库】ArmorofHolyLight[属性:9], 【表格】1天时效五星神佑-1神威宝铠
	tGlobalSLGAction_Pack[3321755]["RewardItem"][1]["Attr"] = "0 1 0 1440 1 0 0 1" -- 1天时效(激活)的1%神佑ArmorofHolyLight*1
	tGlobalSLGAction_Pack[3321755]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321755]["RewardItem"][2]["Id"] = 200531 -- 【库】FieryDragon(Hades)[属性:0], 【表格】1天时效五星神佑-1暗黑赤炎魔龙【炼狱版】
	tGlobalSLGAction_Pack[3321755]["RewardItem"][2]["Attr"] = "0 1 3 1440 1 0 0 1" -- 1天时效(激活)的1%神佑FieryDragon(Hades)（赠）*1
	tGlobalSLGAction_Pack[3321755]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321755]["RewardItem"][3]["Id"] = 3303373 -- 【库】KnowledgePill[属性:9], 【表格】魔武通玄丹
	tGlobalSLGAction_Pack[3321755]["RewardItem"][3]["Attr"] = "0 5" -- KnowledgePill*5
	tGlobalSLGAction_Pack[3321755]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321755]["RewardItem"][4]["Id"] = 3311749 -- 【库】RareBlueRune(B)Fragment[属性:9], 【表格】稀有蓝色神纹（赠）碎片
	tGlobalSLGAction_Pack[3321755]["RewardItem"][4]["Attr"] = "0 1" -- RareBlueRune(B)Fragment*1
	tGlobalSLGAction_Pack[3321755]["RewardItem"][5] = {}
	tGlobalSLGAction_Pack[3321755]["RewardItem"][5]["Id"] = 3311820 -- 【库】MysticRuneStone[属性:9], 【表格】良品神纹源晶
	tGlobalSLGAction_Pack[3321755]["RewardItem"][5]["Attr"] = "0 2" -- MysticRuneStone*2
	tGlobalSLGAction_Pack[3321755]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321755]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321755]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321756] = {}
	-- ===最后结算霸主奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321756]
	-- ===删除: 3321756,1
	tGlobalSLGAction_Pack[3321756]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321756]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321756]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321756]["DeleteItem"][1]["Id"] = 3321756 -- 【库】GuildLeaderSettlementBox[属性:9]
	tGlobalSLGAction_Pack[3321756]["RewardTitle"] = {}
	tGlobalSLGAction_Pack[3321756]["RewardTitle"]["TitleType"] = 2061 -- 【库】PowerTeam, 【表格】赠30天强者战队称号*1
	tGlobalSLGAction_Pack[3321756]["RewardTitle"]["TitleId"] = 2061
	tGlobalSLGAction_Pack[3321756]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:PowerTeam, 【需求】赠30天强者战队称号*1
	tGlobalSLGAction_Pack[3321756]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321756]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tGlobalSLGAction_Pack[3321756]["RewardCultivation"] = {}
	tGlobalSLGAction_Pack[3321756]["RewardCultivation"]["Value"] = 10000 -- 修行值, 【需求】10000修行值
	tGlobalSLGAction_Pack[3321756]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321756]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321756]["RewardItem"][1]["Id"] = 3321841 -- 【库】SuperMeteorScroll[属性:9], 【表格】赠流星卷大礼包
	tGlobalSLGAction_Pack[3321756]["RewardItem"][1]["Attr"] = "0 2" -- SuperMeteorScroll*2
	tGlobalSLGAction_Pack[3321756]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321756]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321756]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321757] = {}
	-- ===最后结算霸主奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321757]
	-- ===删除: 3321757,1
	tGlobalSLGAction_Pack[3321757]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321757]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321757]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321757]["DeleteItem"][1]["Id"] = 3321757 -- 【库】GuildMemberSettlementBox[属性:9]
	tGlobalSLGAction_Pack[3321757]["RewardTitle"] = {}
	tGlobalSLGAction_Pack[3321757]["RewardTitle"]["TitleType"] = 2061 -- 【库】PowerTeam, 【表格】赠30天强者战队称号*1
	tGlobalSLGAction_Pack[3321757]["RewardTitle"]["TitleId"] = 2061
	tGlobalSLGAction_Pack[3321757]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:PowerTeam, 【需求】赠30天强者战队称号*1
	tGlobalSLGAction_Pack[3321757]["RewardStrengthValue"] = {}
	tGlobalSLGAction_Pack[3321757]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000气力值
	tGlobalSLGAction_Pack[3321757]["RewardCultivation"] = {}
	tGlobalSLGAction_Pack[3321757]["RewardCultivation"]["Value"] = 10000 -- 修行值, 【需求】10000修行值
	tGlobalSLGAction_Pack[3321757]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321757]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321757]["RewardItem"][1]["Id"] = 3321841 -- 【库】SuperMeteorScroll[属性:9], 【表格】赠流星卷大礼包
	tGlobalSLGAction_Pack[3321757]["RewardItem"][1]["Attr"] = "0 2" -- SuperMeteorScroll*2
	tGlobalSLGAction_Pack[3321757]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321757]["RewardItem"][2]["Id"] = 3311821 -- 【库】DivineRuneStone[属性:9], 【表格】优质神纹源晶
	tGlobalSLGAction_Pack[3321757]["RewardItem"][2]["Attr"] = "0 2" -- DivineRuneStone*2
	tGlobalSLGAction_Pack[3321757]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321757]["RewardItem"][3]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹
	tGlobalSLGAction_Pack[3321757]["RewardItem"][3]["Attr"] = "0 2 3" -- PowerEraser（赠）*2
	tGlobalSLGAction_Pack[3321757]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321757]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321757]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321758] = {}
	-- ===每日占领地数量排行第1奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321758]
	-- ===删除: 3321758,1
	tGlobalSLGAction_Pack[3321758]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321758]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321758]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321758]["DeleteItem"][1]["Id"] = 3321758 -- 【库】Occupation1stPrizeBox[属性:9]
	tGlobalSLGAction_Pack[3321758]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321758]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321758]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321758]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321758]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321758]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321758]["RewardItem"][2]["Attr"] = "0 30" -- YellowRuneEssence*30
	tGlobalSLGAction_Pack[3321758]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321758]["RewardItem"][3]["Id"] = 3003125 -- 【库】SpecialTrainingPill[属性:0], 【表格】赠通神丹
	tGlobalSLGAction_Pack[3321758]["RewardItem"][3]["Attr"] = "0 5 3" -- SpecialTrainingPill（赠）*5
	tGlobalSLGAction_Pack[3321758]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321758]["RewardItem"][4]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321758]["RewardItem"][4]["Attr"] = "0 5" -- NormalGemBag*5
	tGlobalSLGAction_Pack[3321758]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321758]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321758]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321759] = {}
	-- ===每日占领地数量排行第2奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321759]
	-- ===删除: 3321759,1
	tGlobalSLGAction_Pack[3321759]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321759]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321759]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321759]["DeleteItem"][1]["Id"] = 3321759 -- 【库】Occupation2ndPrizeBox[属性:9]
	tGlobalSLGAction_Pack[3321759]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321759]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321759]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321759]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的BrightStarStone*4
	tGlobalSLGAction_Pack[3321759]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321759]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321759]["RewardItem"][2]["Attr"] = "0 25" -- YellowRuneEssence*25
	tGlobalSLGAction_Pack[3321759]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321759]["RewardItem"][3]["Id"] = 3003125 -- 【库】SpecialTrainingPill[属性:0], 【表格】赠通神丹
	tGlobalSLGAction_Pack[3321759]["RewardItem"][3]["Attr"] = "0 4 3" -- SpecialTrainingPill（赠）*4
	tGlobalSLGAction_Pack[3321759]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321759]["RewardItem"][4]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321759]["RewardItem"][4]["Attr"] = "0 4" -- NormalGemBag*4
	tGlobalSLGAction_Pack[3321759]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321759]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321759]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321760] = {}
	-- ===每日占领地数量排行第3奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321760]
	-- ===删除: 3321760,1
	tGlobalSLGAction_Pack[3321760]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321760]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321760]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321760]["DeleteItem"][1]["Id"] = 3321760 -- 【库】Occupation3rdPrizeBox[属性:9]
	tGlobalSLGAction_Pack[3321760]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321760]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321760]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321760]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tGlobalSLGAction_Pack[3321760]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321760]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321760]["RewardItem"][2]["Attr"] = "0 20" -- YellowRuneEssence*20
	tGlobalSLGAction_Pack[3321760]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321760]["RewardItem"][3]["Id"] = 3003125 -- 【库】SpecialTrainingPill[属性:0], 【表格】赠通神丹
	tGlobalSLGAction_Pack[3321760]["RewardItem"][3]["Attr"] = "0 3 3" -- SpecialTrainingPill（赠）*3
	tGlobalSLGAction_Pack[3321760]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321760]["RewardItem"][4]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321760]["RewardItem"][4]["Attr"] = "0 3" -- NormalGemBag*3
	tGlobalSLGAction_Pack[3321760]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321760]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321760]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321761] = {}
	-- ===每日占领地数量排行第4-10奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321761]
	-- ===删除: 3321761,1
	tGlobalSLGAction_Pack[3321761]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321761]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321761]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321761]["DeleteItem"][1]["Id"] = 3321761 -- 【库】OccupationStandoutBox[属性:9]
	tGlobalSLGAction_Pack[3321761]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321761]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321761]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321761]["RewardItem"][1]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的TwilightStarStone*8
	tGlobalSLGAction_Pack[3321761]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321761]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321761]["RewardItem"][2]["Attr"] = "0 10" -- YellowRuneEssence*10
	tGlobalSLGAction_Pack[3321761]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321761]["RewardItem"][3]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321761]["RewardItem"][3]["Attr"] = "0 2" -- NormalGemBag*2
	tGlobalSLGAction_Pack[3321761]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321761]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321761]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321762] = {}
	-- ===每日占领地数量排行第11-50奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321762]
	-- ===删除: 3321762,1
	tGlobalSLGAction_Pack[3321762]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321762]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321762]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321762]["DeleteItem"][1]["Id"] = 3321762 -- 【库】OccupationEliteBox[属性:9]
	tGlobalSLGAction_Pack[3321762]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321762]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321762]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tGlobalSLGAction_Pack[3321762]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tGlobalSLGAction_Pack[3321762]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321762]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321762]["RewardItem"][2]["Attr"] = "0 5" -- YellowRuneEssence*5
	tGlobalSLGAction_Pack[3321762]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321762]["RewardItem"][3]["Id"] = 3003878 -- 【库】NormalGemBag[属性:9], 【表格】普通随机宝石袋
	tGlobalSLGAction_Pack[3321762]["RewardItem"][3]["Attr"] = "0 1" -- NormalGemBag*1
	tGlobalSLGAction_Pack[3321762]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321762]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321762]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321763] = {}
	-- ===活动结束占领地数量排行第1奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321763]
	-- ===删除: 3321763,1
	tGlobalSLGAction_Pack[3321763]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321763]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321763]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321763]["DeleteItem"][1]["Id"] = 3321763 -- 【库】Occupation1stPrizeMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321763]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321763]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321763]["RewardItem"][1]["Id"] = 3321788 -- 【库】30D5SGarment(B)Box[属性:9], 【表格】赠30天时效神佑-1五星外套三选一包*1
	tGlobalSLGAction_Pack[3321763]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SGarment(B)Box*1
	tGlobalSLGAction_Pack[3321763]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321763]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321763]["RewardItem"][2]["Attr"] = "0 500" -- YellowRuneEssence*500
	tGlobalSLGAction_Pack[3321763]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321763]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321763]["RewardItem"][3]["Attr"] = "0 30 3" -- SeniorTrainingPill（赠）*30
	tGlobalSLGAction_Pack[3321763]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321763]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321763]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321764] = {}
	-- ===活动结束占领地数量排行第2奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321764]
	-- ===删除: 3321764,1
	tGlobalSLGAction_Pack[3321764]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321764]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321764]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321764]["DeleteItem"][1]["Id"] = 3321764 -- 【库】Occupation2ndPrizeMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321764]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321764]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321764]["RewardItem"][1]["Id"] = 3321789 -- 【库】30D5SGarment(B)Pack[属性:9], 【表格】赠30天时效神佑-1五星外套二选一包*1
	tGlobalSLGAction_Pack[3321764]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SGarment(B)Pack*1
	tGlobalSLGAction_Pack[3321764]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321764]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321764]["RewardItem"][2]["Attr"] = "0 300" -- YellowRuneEssence*300
	tGlobalSLGAction_Pack[3321764]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321764]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321764]["RewardItem"][3]["Attr"] = "0 25 3" -- SeniorTrainingPill（赠）*25
	tGlobalSLGAction_Pack[3321764]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321764]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321764]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321765] = {}
	-- ===活动结束占领地数量排行第3奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321765]
	-- ===删除: 3321765,1
	tGlobalSLGAction_Pack[3321765]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321765]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321765]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321765]["DeleteItem"][1]["Id"] = 3321765 -- 【库】Occupation3rdPrizeMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321765]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321765]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321765]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】赠30天时效神佑-1五星外套大圣魔铠【齐天】*1
	tGlobalSLGAction_Pack[3321765]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tGlobalSLGAction_Pack[3321765]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321765]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321765]["RewardItem"][2]["Attr"] = "0 200" -- YellowRuneEssence*200
	tGlobalSLGAction_Pack[3321765]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321765]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321765]["RewardItem"][3]["Attr"] = "0 20 3" -- SeniorTrainingPill（赠）*20
	tGlobalSLGAction_Pack[3321765]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321765]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321765]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321766] = {}
	-- ===活动结束占领地数量排行第4-10奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321766]
	-- ===删除: 3321766,1
	tGlobalSLGAction_Pack[3321766]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321766]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321766]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321766]["DeleteItem"][1]["Id"] = 3321766 -- 【库】OccupationStandoutMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321766]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321766]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321766]["RewardItem"][1]["Id"] = 192605 -- 【库】WindWalk[属性:0], 【表格】赠30天时效神佑-1四星外套御风逍遥*1
	tGlobalSLGAction_Pack[3321766]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑WindWalk（赠）*1
	tGlobalSLGAction_Pack[3321766]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321766]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321766]["RewardItem"][2]["Attr"] = "0 100" -- YellowRuneEssence*100
	tGlobalSLGAction_Pack[3321766]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321766]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321766]["RewardItem"][3]["Attr"] = "0 15 3" -- SeniorTrainingPill（赠）*15
	tGlobalSLGAction_Pack[3321766]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321766]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321766]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321767] = {}
	-- ===活动结束占领地数量排行第11-50奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321767]
	-- ===删除: 3321767,1
	tGlobalSLGAction_Pack[3321767]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321767]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321767]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321767]["DeleteItem"][1]["Id"] = 3321767 -- 【库】OccupationEliteMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321767]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321767]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321767]["RewardItem"][1]["Id"] = 192615 -- 【库】ImperialRobe[属性:0], 【表格】赠15天时效神佑-1四星外套御龙九天*1
	tGlobalSLGAction_Pack[3321767]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑ImperialRobe（赠）*1
	tGlobalSLGAction_Pack[3321767]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321767]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321767]["RewardItem"][2]["Attr"] = "0 50" -- YellowRuneEssence*50
	tGlobalSLGAction_Pack[3321767]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321767]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321767]["RewardItem"][3]["Attr"] = "0 10 3" -- SeniorTrainingPill（赠）*10
	tGlobalSLGAction_Pack[3321767]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321767]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321767]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321768] = {}
	-- ===活动结束占领地数量排行第1奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321768]
	-- ===删除: 3321768,1
	tGlobalSLGAction_Pack[3321768]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321768]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321768]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321768]["DeleteItem"][1]["Id"] = 3321768 -- 【库】Occupation1stPrizeLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321768]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321768]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321768]["RewardItem"][1]["Id"] = 3321788 -- 【库】30D5SGarment(B)Box[属性:9], 【表格】赠30天时效神佑-1五星外套三选一包*1
	tGlobalSLGAction_Pack[3321768]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SGarment(B)Box*1
	tGlobalSLGAction_Pack[3321768]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321768]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321768]["RewardItem"][2]["Attr"] = "0 500" -- YellowRuneEssence*500
	tGlobalSLGAction_Pack[3321768]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321768]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321768]["RewardItem"][3]["Attr"] = "0 30 3" -- SeniorTrainingPill（赠）*30
	tGlobalSLGAction_Pack[3321768]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321768]["RewardItem"][4]["Id"] = 723467 -- 【库】LordToken[属性:9], 【表格】霸王令
	tGlobalSLGAction_Pack[3321768]["RewardItem"][4]["Attr"] = "0 1" -- LordToken*1
	tGlobalSLGAction_Pack[3321768]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321768]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321768]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321769] = {}
	-- ===活动结束占领地数量排行第2奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321769]
	-- ===删除: 3321769,1
	tGlobalSLGAction_Pack[3321769]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321769]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321769]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321769]["DeleteItem"][1]["Id"] = 3321769 -- 【库】Occupation2ndPrizeLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321769]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321769]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321769]["RewardItem"][1]["Id"] = 3321789 -- 【库】30D5SGarment(B)Pack[属性:9], 【表格】赠30天时效神佑-1五星外套二选一包*1
	tGlobalSLGAction_Pack[3321769]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SGarment(B)Pack*1
	tGlobalSLGAction_Pack[3321769]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321769]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321769]["RewardItem"][2]["Attr"] = "0 300" -- YellowRuneEssence*300
	tGlobalSLGAction_Pack[3321769]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321769]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321769]["RewardItem"][3]["Attr"] = "0 25 3" -- SeniorTrainingPill（赠）*25
	tGlobalSLGAction_Pack[3321769]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321769]["RewardItem"][4]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321769]["RewardItem"][4]["Attr"] = "0 3" -- RareYellowRuneFragment*3
	tGlobalSLGAction_Pack[3321769]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321769]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321769]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321770] = {}
	-- ===活动结束占领地数量排行第3奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321770]
	-- ===删除: 3321770,1
	tGlobalSLGAction_Pack[3321770]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321770]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321770]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321770]["DeleteItem"][1]["Id"] = 3321770 -- 【库】Occupation3rdPrizeLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321770]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321770]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321770]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】赠30天时效神佑-1五星外套大圣魔铠【齐天】*1
	tGlobalSLGAction_Pack[3321770]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tGlobalSLGAction_Pack[3321770]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321770]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321770]["RewardItem"][2]["Attr"] = "0 200" -- YellowRuneEssence*200
	tGlobalSLGAction_Pack[3321770]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321770]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321770]["RewardItem"][3]["Attr"] = "0 20 3" -- SeniorTrainingPill（赠）*20
	tGlobalSLGAction_Pack[3321770]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321770]["RewardItem"][4]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321770]["RewardItem"][4]["Attr"] = "0 2" -- RareYellowRuneFragment*2
	tGlobalSLGAction_Pack[3321770]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321770]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321770]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321771] = {}
	-- ===活动结束占领地数量排行第4-10奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321771]
	-- ===删除: 3321771,1
	tGlobalSLGAction_Pack[3321771]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321771]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321771]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321771]["DeleteItem"][1]["Id"] = 3321771 -- 【库】OccupationStandoutLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321771]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321771]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321771]["RewardItem"][1]["Id"] = 192605 -- 【库】WindWalk[属性:0], 【表格】赠30天时效神佑-1四星外套御风逍遥*1
	tGlobalSLGAction_Pack[3321771]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑WindWalk（赠）*1
	tGlobalSLGAction_Pack[3321771]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321771]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321771]["RewardItem"][2]["Attr"] = "0 100" -- YellowRuneEssence*100
	tGlobalSLGAction_Pack[3321771]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321771]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321771]["RewardItem"][3]["Attr"] = "0 15 3" -- SeniorTrainingPill（赠）*15
	tGlobalSLGAction_Pack[3321771]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321771]["RewardItem"][4]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321771]["RewardItem"][4]["Attr"] = "0 1" -- RareYellowRuneFragment*1
	tGlobalSLGAction_Pack[3321771]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321771]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321771]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321772] = {}
	-- ===活动结束占领地数量排行第11-50奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321772]
	-- ===删除: 3321772,1
	tGlobalSLGAction_Pack[3321772]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321772]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321772]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321772]["DeleteItem"][1]["Id"] = 3321772 -- 【库】OccupationEliteLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321772]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321772]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321772]["RewardItem"][1]["Id"] = 192615 -- 【库】ImperialRobe[属性:0], 【表格】赠15天时效神佑-1四星外套御龙九天*1
	tGlobalSLGAction_Pack[3321772]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑ImperialRobe（赠）*1
	tGlobalSLGAction_Pack[3321772]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321772]["RewardItem"][2]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】黄色神纹精粹
	tGlobalSLGAction_Pack[3321772]["RewardItem"][2]["Attr"] = "0 50" -- YellowRuneEssence*50
	tGlobalSLGAction_Pack[3321772]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321772]["RewardItem"][3]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】赠究极通神丹
	tGlobalSLGAction_Pack[3321772]["RewardItem"][3]["Attr"] = "0 10 3" -- SeniorTrainingPill（赠）*10
	tGlobalSLGAction_Pack[3321772]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321772]["RewardItem"][4]["Id"] = 730004 -- 【库】+4Stone[属性:0], 【表格】赠赤炼石+4
	tGlobalSLGAction_Pack[3321772]["RewardItem"][4]["Attr"] = "0 2 3" -- +4Stone（赠）*2
	tGlobalSLGAction_Pack[3321772]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321772]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321772]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321773] = {}
	-- ===每天全球帮派积分排行第1奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321773]
	-- ===删除: 3321773,1
	tGlobalSLGAction_Pack[3321773]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321773]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321773]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321773]["DeleteItem"][1]["Id"] = 3321773 -- 【库】GuildPts1stPrizeBox[属性:9]
	tGlobalSLGAction_Pack[3321773]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321773]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321773]["RewardItem"][1]["Id"] = 3301425 -- 【库】SuperSkillSoulSplinter[属性:9], 【表格】极品技能外套碎片
	tGlobalSLGAction_Pack[3321773]["RewardItem"][1]["Attr"] = "0 10" -- SuperSkillSoulSplinter*10
	tGlobalSLGAction_Pack[3321773]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321773]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9], 【表格】昆仑玉*3
	tGlobalSLGAction_Pack[3321773]["RewardItem"][2]["Attr"] = "0 3" -- IvoryJade*3
	tGlobalSLGAction_Pack[3321773]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321773]["RewardItem"][3]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9], 【表格】赠7天时效武器外套
	tGlobalSLGAction_Pack[3321773]["RewardItem"][3]["Attr"] = "0 2" -- 7DBlessedAccessory(B)Pack*2
	tGlobalSLGAction_Pack[3321773]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321773]["RewardItem"][4]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赠赤炼石+3
	tGlobalSLGAction_Pack[3321773]["RewardItem"][4]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tGlobalSLGAction_Pack[3321773]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321773]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321773]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321774] = {}
	-- ===每天全球帮派积分排行第2奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321774]
	-- ===删除: 3321774,1
	tGlobalSLGAction_Pack[3321774]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321774]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321774]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321774]["DeleteItem"][1]["Id"] = 3321774 -- 【库】GuildPts2ndPrizeBox[属性:9]
	tGlobalSLGAction_Pack[3321774]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321774]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321774]["RewardItem"][1]["Id"] = 3301425 -- 【库】SuperSkillSoulSplinter[属性:9], 【表格】极品技能外套碎片
	tGlobalSLGAction_Pack[3321774]["RewardItem"][1]["Attr"] = "0 8" -- SuperSkillSoulSplinter*8
	tGlobalSLGAction_Pack[3321774]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321774]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9], 【表格】昆仑玉*3
	tGlobalSLGAction_Pack[3321774]["RewardItem"][2]["Attr"] = "0 2" -- IvoryJade*2
	tGlobalSLGAction_Pack[3321774]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321774]["RewardItem"][3]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9], 【表格】赠7天时效武器外套
	tGlobalSLGAction_Pack[3321774]["RewardItem"][3]["Attr"] = "0 1" -- 7DBlessedAccessory(B)Pack*1
	tGlobalSLGAction_Pack[3321774]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321774]["RewardItem"][4]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赠赤炼石+3
	tGlobalSLGAction_Pack[3321774]["RewardItem"][4]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tGlobalSLGAction_Pack[3321774]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321774]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321774]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321775] = {}
	-- ===每天全球帮派积分排行第3奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321775]
	-- ===删除: 3321775,1
	tGlobalSLGAction_Pack[3321775]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321775]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321775]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321775]["DeleteItem"][1]["Id"] = 3321775 -- 【库】GuildPts3rdPrizeBox[属性:9]
	tGlobalSLGAction_Pack[3321775]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321775]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321775]["RewardItem"][1]["Id"] = 3301425 -- 【库】SuperSkillSoulSplinter[属性:9], 【表格】极品技能外套碎片
	tGlobalSLGAction_Pack[3321775]["RewardItem"][1]["Attr"] = "0 5" -- SuperSkillSoulSplinter*5
	tGlobalSLGAction_Pack[3321775]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321775]["RewardItem"][2]["Id"] = 3008223 -- 【库】IvoryJade[属性:9], 【表格】昆仑玉*3
	tGlobalSLGAction_Pack[3321775]["RewardItem"][2]["Attr"] = "0 1" -- IvoryJade*1
	tGlobalSLGAction_Pack[3321775]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321775]["RewardItem"][3]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9], 【表格】赠7天时效武器外套
	tGlobalSLGAction_Pack[3321775]["RewardItem"][3]["Attr"] = "0 1" -- 7DBlessedAccessory(B)Pack*1
	tGlobalSLGAction_Pack[3321775]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321775]["RewardItem"][4]["Id"] = 730002 -- 【库】+2Stone[属性:0], 【表格】赠赤炼石+2
	tGlobalSLGAction_Pack[3321775]["RewardItem"][4]["Attr"] = "0 2 3" -- +2Stone（赠）*2
	tGlobalSLGAction_Pack[3321775]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321775]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321775]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321776] = {}
	-- ===每天全球帮派积分排行第4-10奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321776]
	-- ===删除: 3321776,1
	tGlobalSLGAction_Pack[3321776]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321776]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321776]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321776]["DeleteItem"][1]["Id"] = 3321776 -- 【库】GuildPtsStandoutBox[属性:9]
	tGlobalSLGAction_Pack[3321776]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321776]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321776]["RewardItem"][1]["Id"] = 3301425 -- 【库】SuperSkillSoulSplinter[属性:9], 【表格】极品技能外套碎片
	tGlobalSLGAction_Pack[3321776]["RewardItem"][1]["Attr"] = "0 3" -- SuperSkillSoulSplinter*3
	tGlobalSLGAction_Pack[3321776]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321776]["RewardItem"][2]["Id"] = 3008221 -- 【库】OliveJade[属性:9], 【表格】岫山玉
	tGlobalSLGAction_Pack[3321776]["RewardItem"][2]["Attr"] = "0 3" -- OliveJade*3
	tGlobalSLGAction_Pack[3321776]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321776]["RewardItem"][3]["Id"] = 720948 -- 【库】ExorcismPack[属性:9], 【表格】封魔礼包
	tGlobalSLGAction_Pack[3321776]["RewardItem"][3]["Attr"] = "0 3" -- ExorcismPack*3
	tGlobalSLGAction_Pack[3321776]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321776]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321776]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321777] = {}
	-- ===每天全球帮派积分排行第11-50奖励礼包
	-- ===索引: tGlobalSLGAction_Pack[3321777]
	-- ===删除: 3321777,1
	tGlobalSLGAction_Pack[3321777]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321777]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321777]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321777]["DeleteItem"][1]["Id"] = 3321777 -- 【库】GuildPtsEliteBox[属性:9]
	tGlobalSLGAction_Pack[3321777]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321777]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321777]["RewardItem"][1]["Id"] = 3301425 -- 【库】SuperSkillSoulSplinter[属性:9], 【表格】极品技能外套碎片
	tGlobalSLGAction_Pack[3321777]["RewardItem"][1]["Attr"] = "0 2" -- SuperSkillSoulSplinter*2
	tGlobalSLGAction_Pack[3321777]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321777]["RewardItem"][2]["Id"] = 3008221 -- 【库】OliveJade[属性:9], 【表格】岫山玉
	tGlobalSLGAction_Pack[3321777]["RewardItem"][2]["Attr"] = "0 1" -- OliveJade*1
	tGlobalSLGAction_Pack[3321777]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321777]["RewardItem"][3]["Id"] = 720948 -- 【库】ExorcismPack[属性:9], 【表格】封魔礼包
	tGlobalSLGAction_Pack[3321777]["RewardItem"][3]["Attr"] = "0 2" -- ExorcismPack*2
	tGlobalSLGAction_Pack[3321777]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321777]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321777]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321778] = {}
	-- ===全球帮派积分排行第1奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321778]
	-- ===删除: 3321778,1
	tGlobalSLGAction_Pack[3321778]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321778]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321778]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321778]["DeleteItem"][1]["Id"] = 3321778 -- 【库】Points1stPrizeMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321778]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321778]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321778]["RewardItem"][1]["Id"] = 3321790 -- 【库】30D5SMountArmor(B)Box[属性:9], 【表格】赠30天时效神佑-1五星外套三选一包*1
	tGlobalSLGAction_Pack[3321778]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SMountArmor(B)Box*1
	tGlobalSLGAction_Pack[3321778]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321778]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tGlobalSLGAction_Pack[3321778]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的RadiantStarStone*8
	tGlobalSLGAction_Pack[3321778]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321778]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321778]["RewardItem"][3]["Attr"] = "0 30" -- SuperProtectionPill*30
	tGlobalSLGAction_Pack[3321778]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321778]["RewardItem"][4]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹
	tGlobalSLGAction_Pack[3321778]["RewardItem"][4]["Attr"] = "0 3 3" -- PowerEraser（赠）*3
	tGlobalSLGAction_Pack[3321778]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321778]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321778]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321779] = {}
	-- ===全球帮派积分排行第2奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321779]
	-- ===删除: 3321779,1
	tGlobalSLGAction_Pack[3321779]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321779]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321779]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321779]["DeleteItem"][1]["Id"] = 3321779 -- 【库】Points2ndPrizeMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321779]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321779]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321779]["RewardItem"][1]["Id"] = 3321791 -- 【库】30D5SMountArmor(B)Pack[属性:9], 【表格】赠30天时效神佑-1五星外套三选一包*1
	tGlobalSLGAction_Pack[3321779]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SMountArmor(B)Pack*1
	tGlobalSLGAction_Pack[3321779]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321779]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tGlobalSLGAction_Pack[3321779]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tGlobalSLGAction_Pack[3321779]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321779]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321779]["RewardItem"][3]["Attr"] = "0 25" -- SuperProtectionPill*25
	tGlobalSLGAction_Pack[3321779]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321779]["RewardItem"][4]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹
	tGlobalSLGAction_Pack[3321779]["RewardItem"][4]["Attr"] = "0 2 3" -- PowerEraser（赠）*2
	tGlobalSLGAction_Pack[3321779]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321779]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321779]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321780] = {}
	-- ===全球帮派积分排行第3奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321780]
	-- ===删除: 3321780,1
	tGlobalSLGAction_Pack[3321780]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321780]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321780]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321780]["DeleteItem"][1]["Id"] = 3321780 -- 【库】Points3rdPrizeMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321780]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321780]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321780]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】赠30天时效神佑-1五星外套蓝海苍云*1
	tGlobalSLGAction_Pack[3321780]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑PacificCloud（赠）*1
	tGlobalSLGAction_Pack[3321780]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321780]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tGlobalSLGAction_Pack[3321780]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tGlobalSLGAction_Pack[3321780]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321780]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321780]["RewardItem"][3]["Attr"] = "0 20" -- SuperProtectionPill*20
	tGlobalSLGAction_Pack[3321780]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321780]["RewardItem"][4]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹
	tGlobalSLGAction_Pack[3321780]["RewardItem"][4]["Attr"] = "0 1 3" -- PowerEraser（赠）*1
	tGlobalSLGAction_Pack[3321780]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321780]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321780]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321781] = {}
	-- ===全球帮派积分排行第4-10奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321781]
	-- ===删除: 3321781,1
	tGlobalSLGAction_Pack[3321781]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321781]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321781]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321781]["DeleteItem"][1]["Id"] = 3321781 -- 【库】PointsStandoutMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321781]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321781]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321781]["RewardItem"][1]["Id"] = 200574 -- 【库】SnowLotus[属性:0], 【表格】赠30天时效神佑-1四星外套幻雪蓝莲*1
	tGlobalSLGAction_Pack[3321781]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑SnowLotus（赠）*1
	tGlobalSLGAction_Pack[3321781]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321781]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321781]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tGlobalSLGAction_Pack[3321781]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321781]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321781]["RewardItem"][3]["Attr"] = "0 15" -- SuperProtectionPill*15
	tGlobalSLGAction_Pack[3321781]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321781]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tGlobalSLGAction_Pack[3321781]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321781]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321781]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321782] = {}
	-- ===全球帮派积分排行第11-50奖励礼包-帮派成员
	-- ===索引: tGlobalSLGAction_Pack[3321782]
	-- ===删除: 3321782,1
	tGlobalSLGAction_Pack[3321782]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321782]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321782]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321782]["DeleteItem"][1]["Id"] = 3321782 -- 【库】PointsEliteMemberBox[属性:9]
	tGlobalSLGAction_Pack[3321782]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321782]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321782]["RewardItem"][1]["Id"] = 200618 -- 【库】Samoyed[属性:0], 【表格】赠15天时效神佑-1四星外套萨摩王子*1
	tGlobalSLGAction_Pack[3321782]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑Samoyed（赠）*1
	tGlobalSLGAction_Pack[3321782]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321782]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321782]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321782]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321782]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321782]["RewardItem"][3]["Attr"] = "0 10" -- SuperProtectionPill*10
	tGlobalSLGAction_Pack[3321782]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321782]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】3000修为值
	tGlobalSLGAction_Pack[3321782]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321782]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321782]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321783] = {}
	-- ===全球帮派积分排行第1奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321783]
	-- ===删除: 3321783,1
	tGlobalSLGAction_Pack[3321783]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321783]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321783]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321783]["DeleteItem"][1]["Id"] = 3321783 -- 【库】Points1stPrizeLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321783]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321783]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321783]["RewardItem"][1]["Id"] = 3321790 -- 【库】30D5SMountArmor(B)Box[属性:9], 【表格】赠30天时效神佑-1五星外套三选一包*1
	tGlobalSLGAction_Pack[3321783]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SMountArmor(B)Box*1
	tGlobalSLGAction_Pack[3321783]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321783]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tGlobalSLGAction_Pack[3321783]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的RadiantStarStone*8
	tGlobalSLGAction_Pack[3321783]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321783]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321783]["RewardItem"][3]["Attr"] = "0 30" -- SuperProtectionPill*30
	tGlobalSLGAction_Pack[3321783]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321783]["RewardItem"][4]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹
	tGlobalSLGAction_Pack[3321783]["RewardItem"][4]["Attr"] = "0 3 3" -- PowerEraser（赠）*3
	tGlobalSLGAction_Pack[3321783]["RewardItem"][5] = {}
	tGlobalSLGAction_Pack[3321783]["RewardItem"][5]["Id"] = 723467 -- 【库】LordToken[属性:9], 【表格】霸王令
	tGlobalSLGAction_Pack[3321783]["RewardItem"][5]["Attr"] = "0 1" -- LordToken*1
	tGlobalSLGAction_Pack[3321783]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321783]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321783]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321784] = {}
	-- ===全球帮派积分排行第2奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321784]
	-- ===删除: 3321784,1
	tGlobalSLGAction_Pack[3321784]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321784]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321784]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321784]["DeleteItem"][1]["Id"] = 3321784 -- 【库】Points2ndPrizeLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321784]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321784]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321784]["RewardItem"][1]["Id"] = 3321791 -- 【库】30D5SMountArmor(B)Pack[属性:9], 【表格】赠30天时效神佑-1五星外套三选一包*1
	tGlobalSLGAction_Pack[3321784]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的30D5SMountArmor(B)Pack*1
	tGlobalSLGAction_Pack[3321784]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321784]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tGlobalSLGAction_Pack[3321784]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tGlobalSLGAction_Pack[3321784]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321784]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321784]["RewardItem"][3]["Attr"] = "0 25" -- SuperProtectionPill*25
	tGlobalSLGAction_Pack[3321784]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321784]["RewardItem"][4]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹
	tGlobalSLGAction_Pack[3321784]["RewardItem"][4]["Attr"] = "0 2 3" -- PowerEraser（赠）*2
	tGlobalSLGAction_Pack[3321784]["RewardItem"][5] = {}
	tGlobalSLGAction_Pack[3321784]["RewardItem"][5]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321784]["RewardItem"][5]["Attr"] = "0 3" -- RareYellowRuneFragment*3
	tGlobalSLGAction_Pack[3321784]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321784]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321784]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321785] = {}
	-- ===全球帮派积分排行第3奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321785]
	-- ===删除: 3321785,1
	tGlobalSLGAction_Pack[3321785]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321785]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321785]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321785]["DeleteItem"][1]["Id"] = 3321785 -- 【库】Points3rdPrizeLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321785]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321785]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321785]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】赠30天时效神佑-1五星外套蓝海苍云*1
	tGlobalSLGAction_Pack[3321785]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑PacificCloud（赠）*1
	tGlobalSLGAction_Pack[3321785]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321785]["RewardItem"][2]["Id"] = 3009002 -- 【库】RadiantStarStone[属性:9], 【表格】晶莹星陨石
	tGlobalSLGAction_Pack[3321785]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tGlobalSLGAction_Pack[3321785]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321785]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321785]["RewardItem"][3]["Attr"] = "0 20" -- SuperProtectionPill*20
	tGlobalSLGAction_Pack[3321785]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321785]["RewardItem"][4]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】赠散功丹
	tGlobalSLGAction_Pack[3321785]["RewardItem"][4]["Attr"] = "0 1 3" -- PowerEraser（赠）*1
	tGlobalSLGAction_Pack[3321785]["RewardItem"][5] = {}
	tGlobalSLGAction_Pack[3321785]["RewardItem"][5]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321785]["RewardItem"][5]["Attr"] = "0 2" -- RareYellowRuneFragment*2
	tGlobalSLGAction_Pack[3321785]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321785]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321785]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321786] = {}
	-- ===全球帮派积分排行第4-10奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321786]
	-- ===删除: 3321786,1
	tGlobalSLGAction_Pack[3321786]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321786]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321786]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321786]["DeleteItem"][1]["Id"] = 3321786 -- 【库】PointsStandoutLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321786]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321786]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321786]["RewardItem"][1]["Id"] = 200574 -- 【库】SnowLotus[属性:0], 【表格】赠30天时效神佑-1四星外套幻雪蓝莲*1
	tGlobalSLGAction_Pack[3321786]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑SnowLotus（赠）*1
	tGlobalSLGAction_Pack[3321786]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321786]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321786]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tGlobalSLGAction_Pack[3321786]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321786]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321786]["RewardItem"][3]["Attr"] = "0 15" -- SuperProtectionPill*15
	tGlobalSLGAction_Pack[3321786]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321786]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tGlobalSLGAction_Pack[3321786]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321786]["RewardItem"][4]["Id"] = 3311744 -- 【库】RareYellowRuneFragment[属性:8], 【表格】稀有黄色神纹碎片
	tGlobalSLGAction_Pack[3321786]["RewardItem"][4]["Attr"] = "0 1" -- RareYellowRuneFragment*1
	tGlobalSLGAction_Pack[3321786]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321786]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321786]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321787] = {}
	-- ===全球帮派积分排行第11-50奖励礼包-帮主
	-- ===索引: tGlobalSLGAction_Pack[3321787]
	-- ===删除: 3321787,1
	tGlobalSLGAction_Pack[3321787]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321787]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321787]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321787]["DeleteItem"][1]["Id"] = 3321787 -- 【库】PointsEliteLeaderBox[属性:9]
	tGlobalSLGAction_Pack[3321787]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321787]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321787]["RewardItem"][1]["Id"] = 200618 -- 【库】Samoyed[属性:0], 【表格】赠15天时效神佑-1四星外套萨摩王子*1
	tGlobalSLGAction_Pack[3321787]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑Samoyed（赠）*1
	tGlobalSLGAction_Pack[3321787]["RewardItem"][2] = {}
	tGlobalSLGAction_Pack[3321787]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tGlobalSLGAction_Pack[3321787]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tGlobalSLGAction_Pack[3321787]["RewardItem"][3] = {}
	tGlobalSLGAction_Pack[3321787]["RewardItem"][3]["Id"] = 3002030 -- 【库】SuperProtectionPill[属性:9], 【表格】强效护心丹
	tGlobalSLGAction_Pack[3321787]["RewardItem"][3]["Attr"] = "0 10" -- SuperProtectionPill*10
	tGlobalSLGAction_Pack[3321787]["RewardRepairValue"] = {}
	tGlobalSLGAction_Pack[3321787]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】3000修为值
	tGlobalSLGAction_Pack[3321787]["RewardItem"][4] = {}
	tGlobalSLGAction_Pack[3321787]["RewardItem"][4]["Id"] = 730004 -- 【库】+4Stone[属性:0], 【表格】赠赤炼石+4
	tGlobalSLGAction_Pack[3321787]["RewardItem"][4]["Attr"] = "0 2 3" -- +4Stone（赠）*2
	tGlobalSLGAction_Pack[3321787]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321787]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321787]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack["Choose"] = {}
	-- ===30天礼盒/礼包
	-- ===索引: tGlobalSLGAction_Pack["Choose"][1]
	tGlobalSLGAction_Pack["Choose"][1] = {}
	tGlobalSLGAction_Pack["Choose"][1]["LogId"] = 12001443
	tGlobalSLGAction_Pack["Choose"][1]["RewardItem"] = {}
	tGlobalSLGAction_Pack["Choose"][1]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack["Choose"][1]["RewardItem"][1]["Id"] = 195575 -- 【库】CommanderRobe(Wealth)[属性:8], 【表格】天蓬朱衣【鸿福】
	tGlobalSLGAction_Pack["Choose"][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CommanderRobe(Wealth)*1
	tGlobalSLGAction_Pack["Choose"][1]["RewardEffect"] = {}
	tGlobalSLGAction_Pack["Choose"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack["Choose"][1]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack["Choose"][2] = {}
	-- ===30天礼盒/礼包
	-- ===索引: tGlobalSLGAction_Pack["Choose"][2]
	tGlobalSLGAction_Pack["Choose"][2]["LogId"] = 12001443
	tGlobalSLGAction_Pack["Choose"][2]["RewardItem"] = {}
	tGlobalSLGAction_Pack["Choose"][2]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack["Choose"][2]["RewardItem"][1]["Id"] = 195605 -- 【库】RockingRomance(Fantasy)[属性:0], 【表格】浪漫进行时【梦幻版】
	tGlobalSLGAction_Pack["Choose"][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑RockingRomance(Fantasy)*1
	tGlobalSLGAction_Pack["Choose"][2]["RewardEffect"] = {}
	tGlobalSLGAction_Pack["Choose"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack["Choose"][2]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack["Choose"][3] = {}
	-- ===30天礼盒/礼包
	-- ===索引: tGlobalSLGAction_Pack["Choose"][3]
	tGlobalSLGAction_Pack["Choose"][3]["LogId"] = 12001443
	tGlobalSLGAction_Pack["Choose"][3]["RewardItem"] = {}
	tGlobalSLGAction_Pack["Choose"][3]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack["Choose"][3]["RewardItem"][1]["Id"] = 189695 -- 【库】MonkeyKingArmor(Heaven)[属性:0], 【表格】大圣魔铠【齐天】
	tGlobalSLGAction_Pack["Choose"][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MonkeyKingArmor(Heaven)*1
	tGlobalSLGAction_Pack["Choose"][3]["RewardEffect"] = {}
	tGlobalSLGAction_Pack["Choose"][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack["Choose"][3]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack["Choose"][4] = {}
	-- ===30天礼盒/礼包
	-- ===索引: tGlobalSLGAction_Pack["Choose"][4]
	tGlobalSLGAction_Pack["Choose"][4]["LogId"] = 12001443
	tGlobalSLGAction_Pack["Choose"][4]["RewardItem"] = {}
	tGlobalSLGAction_Pack["Choose"][4]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack["Choose"][4]["RewardItem"][1]["Id"] = 200613 -- 【库】FierceCloud[属性:0], 【表格】赤霄火云
	tGlobalSLGAction_Pack["Choose"][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FierceCloud*1
	tGlobalSLGAction_Pack["Choose"][4]["RewardEffect"] = {}
	tGlobalSLGAction_Pack["Choose"][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack["Choose"][4]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack["Choose"][5] = {}
	-- ===30天礼盒/礼包
	-- ===索引: tGlobalSLGAction_Pack["Choose"][5]
	tGlobalSLGAction_Pack["Choose"][5]["LogId"] = 12001443
	tGlobalSLGAction_Pack["Choose"][5]["RewardItem"] = {}
	tGlobalSLGAction_Pack["Choose"][5]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack["Choose"][5]["RewardItem"][1]["Id"] = 200614 -- 【库】PacificCloud[属性:0], 【表格】蓝海苍云
	tGlobalSLGAction_Pack["Choose"][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑PacificCloud*1
	tGlobalSLGAction_Pack["Choose"][5]["RewardEffect"] = {}
	tGlobalSLGAction_Pack["Choose"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack["Choose"][5]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack["Choose"][6] = {}
	-- ===30天礼盒/礼包
	-- ===索引: tGlobalSLGAction_Pack["Choose"][6]
	tGlobalSLGAction_Pack["Choose"][6]["LogId"] = 12001443
	tGlobalSLGAction_Pack["Choose"][6]["RewardItem"] = {}
	tGlobalSLGAction_Pack["Choose"][6]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack["Choose"][6]["RewardItem"][1]["Id"] = 200629 -- 【库】AuspiciousCloud[属性:0], 【表格】流金祥云
	tGlobalSLGAction_Pack["Choose"][6]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑AuspiciousCloud*1
	tGlobalSLGAction_Pack["Choose"][6]["RewardEffect"] = {}
	tGlobalSLGAction_Pack["Choose"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack["Choose"][6]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][1]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][1] = {}
	tGlobalSLGAction_Pack[3321840][1]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][1]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][1]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][1]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][1]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][1]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][1]["RewardItem"][1]["Id"] = 380015 -- 【库】Wheel[属性:0]
	tGlobalSLGAction_Pack[3321840][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Wheel*1
	tGlobalSLGAction_Pack[3321840][1]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][1]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][2] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][2]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][2]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][2]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][2]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][2]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][2]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][2]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][2]["RewardItem"][1]["Id"] = 380014 -- 【库】SunFlower[属性:0]
	tGlobalSLGAction_Pack[3321840][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑SunFlower*1
	tGlobalSLGAction_Pack[3321840][2]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][2]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][3] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][3]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][3]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][3]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][3]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][3]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][3]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][3]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][3]["RewardItem"][1]["Id"] = 380013 -- 【库】LoveShield[属性:0]
	tGlobalSLGAction_Pack[3321840][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑LoveShield*1
	tGlobalSLGAction_Pack[3321840][3]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][3]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][4] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][4]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][4]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][4]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][4]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][4]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][4]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][4]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][4]["RewardItem"][1]["Id"] = 380012 -- 【库】TurtleShell[属性:0]
	tGlobalSLGAction_Pack[3321840][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑TurtleShell*1
	tGlobalSLGAction_Pack[3321840][4]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][4]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][5] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][5]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][5]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][5]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][5]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][5]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][5]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][5]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][5]["RewardItem"][1]["Id"] = 380011 -- 【库】Wok[属性:0]
	tGlobalSLGAction_Pack[3321840][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Wok*1
	tGlobalSLGAction_Pack[3321840][5]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][5]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][6] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][6]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][6]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][6]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][6]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][6]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][6]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][6]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][6]["RewardItem"][1]["Id"] = 370015 -- 【库】ForceBow[属性:0]
	tGlobalSLGAction_Pack[3321840][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑ForceBow*1
	tGlobalSLGAction_Pack[3321840][6]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][6]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][7] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][7]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][7]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][7]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][7]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][7]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][7]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][7]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][7]["RewardItem"][1]["Id"] = 370014 -- 【库】Harp[属性:0]
	tGlobalSLGAction_Pack[3321840][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Harp*1
	tGlobalSLGAction_Pack[3321840][7]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][7]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][8] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][8]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][8]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][8]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][8]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][8]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][8]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][8]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][8]["RewardItem"][1]["Id"] = 370013 -- 【库】SeaHorse[属性:0]
	tGlobalSLGAction_Pack[3321840][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑SeaHorse*1
	tGlobalSLGAction_Pack[3321840][8]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][8]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][9] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][9]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][9]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][9]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][9]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][9]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][9]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][9]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][9]["RewardItem"][1]["Id"] = 370012 -- 【库】LoveBow[属性:0]
	tGlobalSLGAction_Pack[3321840][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑LoveBow*1
	tGlobalSLGAction_Pack[3321840][9]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][9]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][10] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][10]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][10]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][10]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][10]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][10]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][10]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][10]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][10]["RewardItem"][1]["Id"] = 370011 -- 【库】WoodenBow[属性:0]
	tGlobalSLGAction_Pack[3321840][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑WoodenBow*1
	tGlobalSLGAction_Pack[3321840][10]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][10]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][11] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][11]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][11]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][11]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][11]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][11]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][11]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][11]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][11]["RewardItem"][1]["Id"] = 360040 -- 【库】ApeCityHam[属性:0]
	tGlobalSLGAction_Pack[3321840][11]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑ApeCityHam*1
	tGlobalSLGAction_Pack[3321840][11]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][11]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][12] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][12]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][12]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][12]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][12]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][12]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][12]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][12]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][12]["RewardItem"][1]["Id"] = 360039 -- 【库】TennisRacket[属性:0]
	tGlobalSLGAction_Pack[3321840][12]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑TennisRacket*1
	tGlobalSLGAction_Pack[3321840][12]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][12]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][13] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][13]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][13]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][13]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][13]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][13]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][13]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][13]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][13]["RewardItem"][1]["Id"] = 360038 -- 【库】LightSaber[属性:0]
	tGlobalSLGAction_Pack[3321840][13]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑LightSaber*1
	tGlobalSLGAction_Pack[3321840][13]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][13]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][14] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][14]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][14]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][14]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][14]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][14]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][14]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][14]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][14]["RewardItem"][1]["Id"] = 360037 -- 【库】HeavyHammer[属性:0]
	tGlobalSLGAction_Pack[3321840][14]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑HeavyHammer*1
	tGlobalSLGAction_Pack[3321840][14]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][14]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][15] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][15]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][15]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][15]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][15]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][15]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][15]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][15]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][15]["RewardItem"][1]["Id"] = 360036 -- 【库】Clap[属性:0]
	tGlobalSLGAction_Pack[3321840][15]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Clap*1
	tGlobalSLGAction_Pack[3321840][15]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][15]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][16] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][16]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][16]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][16]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][16]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][16]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][16]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][16]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][16]["RewardItem"][1]["Id"] = 360035 -- 【库】Rod[属性:0]
	tGlobalSLGAction_Pack[3321840][16]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Rod*1
	tGlobalSLGAction_Pack[3321840][16]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][16]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][17] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][17]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][17]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][17]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][17]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][17]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][17]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][17]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][17]["RewardItem"][1]["Id"] = 360034 -- 【库】GoodEveningBear[属性:0]
	tGlobalSLGAction_Pack[3321840][17]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑GoodEveningBear*1
	tGlobalSLGAction_Pack[3321840][17]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][17]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][18] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][18]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][18]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][18]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][18]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][18]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][18]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][18]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][18]["RewardItem"][1]["Id"] = 360033 -- 【库】Bunny[属性:0]
	tGlobalSLGAction_Pack[3321840][18]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Bunny*1
	tGlobalSLGAction_Pack[3321840][18]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][18]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][19] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][19]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][19]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][19]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][19]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][19]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][19]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][19]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][19]["RewardItem"][1]["Id"] = 360032 -- 【库】SportsBag[属性:0]
	tGlobalSLGAction_Pack[3321840][19]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑SportsBag*1
	tGlobalSLGAction_Pack[3321840][19]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][19]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][20] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][20]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][20]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][20]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][20]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][20]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][20]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][20]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][20]["RewardItem"][1]["Id"] = 360031 -- 【库】Backpack[属性:0]
	tGlobalSLGAction_Pack[3321840][20]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Backpack*1
	tGlobalSLGAction_Pack[3321840][20]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][20]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][21] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][21]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][21]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][21]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][21]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][21]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][21]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][21]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][21]["RewardItem"][1]["Id"] = 360030 -- 【库】Handbag[属性:0]
	tGlobalSLGAction_Pack[3321840][21]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Handbag*1
	tGlobalSLGAction_Pack[3321840][21]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][21]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][22] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][22]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][22]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][22]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][22]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][22]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][22]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][22]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][22]["RewardItem"][1]["Id"] = 360029 -- 【库】Pan[属性:0]
	tGlobalSLGAction_Pack[3321840][22]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Pan*1
	tGlobalSLGAction_Pack[3321840][22]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][22]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][23] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][23]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][23]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][23]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][23]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][23]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][23]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][23]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][23]["RewardItem"][1]["Id"] = 360028 -- 【库】FishPole[属性:0]
	tGlobalSLGAction_Pack[3321840][23]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑FishPole*1
	tGlobalSLGAction_Pack[3321840][23]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][23]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][24] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][24]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][24]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][24]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][24]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][24]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][24]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][24]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][24]["RewardItem"][1]["Id"] = 360027 -- 【库】InvincibleFist[属性:0]
	tGlobalSLGAction_Pack[3321840][24]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑InvincibleFist*1
	tGlobalSLGAction_Pack[3321840][24]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][24]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][25] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][25]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][25]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][25]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][25]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][25]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][25]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][25]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][25]["RewardItem"][1]["Id"] = 360026 -- 【库】Spatula[属性:0]
	tGlobalSLGAction_Pack[3321840][25]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Spatula*1
	tGlobalSLGAction_Pack[3321840][25]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][25]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][26] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][26]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][26]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][26]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][26]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][26]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][26]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][26]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][26]["RewardItem"][1]["Id"] = 360025 -- 【库】FeatherDuster[属性:0]
	tGlobalSLGAction_Pack[3321840][26]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑FeatherDuster*1
	tGlobalSLGAction_Pack[3321840][26]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][26]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][27] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][27]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][27]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][27]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][27]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][27]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][27]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][27]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][27]["RewardItem"][1]["Id"] = 360024 -- 【库】Blowfish[属性:0]
	tGlobalSLGAction_Pack[3321840][27]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Blowfish*1
	tGlobalSLGAction_Pack[3321840][27]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][27]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][28] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][28]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][28]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][28]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][28]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][28]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][28]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][28]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][28]["RewardItem"][1]["Id"] = 360023 -- 【库】Umbrella[属性:0]
	tGlobalSLGAction_Pack[3321840][28]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Umbrella*1
	tGlobalSLGAction_Pack[3321840][28]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][28]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][29] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][29]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][29]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][29]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][29]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][29]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][29]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][29]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][29]["RewardItem"][1]["Id"] = 360022 -- 【库】WoodenClub[属性:0]
	tGlobalSLGAction_Pack[3321840][29]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑WoodenClub*1
	tGlobalSLGAction_Pack[3321840][29]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][29]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][30] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][30]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][30]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][30]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][30]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][30]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][30]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][30]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][30]["RewardItem"][1]["Id"] = 360021 -- 【库】Wrench[属性:0]
	tGlobalSLGAction_Pack[3321840][30]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Wrench*1
	tGlobalSLGAction_Pack[3321840][30]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][30]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][31] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][31]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][31]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][31]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][31]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][31]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][31]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][31]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][31]["RewardItem"][1]["Id"] = 350020 -- 【库】IceStick[属性:0]
	tGlobalSLGAction_Pack[3321840][31]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑IceStick*1
	tGlobalSLGAction_Pack[3321840][31]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][31]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][32] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][32]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][32]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][32]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][32]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][32]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][32]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][32]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][32]["RewardItem"][1]["Id"] = 350019 -- 【库】FrozenTuna[属性:0]
	tGlobalSLGAction_Pack[3321840][32]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑FrozenTuna*1
	tGlobalSLGAction_Pack[3321840][32]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][32]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][33] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][33]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][33]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][33]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][33]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][33]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][33]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][33]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][33]["RewardItem"][1]["Id"] = 350018 -- 【库】IronShovel[属性:0]
	tGlobalSLGAction_Pack[3321840][33]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑IronShovel*1
	tGlobalSLGAction_Pack[3321840][33]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][33]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][34] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][34]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][34]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][34]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][34]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][34]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][34]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][34]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][34]["RewardItem"][1]["Id"] = 350017 -- 【库】PalmLeafFan[属性:0]
	tGlobalSLGAction_Pack[3321840][34]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑PalmLeafFan*1
	tGlobalSLGAction_Pack[3321840][34]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][34]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][35] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][35]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][35]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][35]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][35]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][35]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][35]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][35]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][35]["RewardItem"][1]["Id"] = 350016 -- 【库】Pipa[属性:0]
	tGlobalSLGAction_Pack[3321840][35]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Pipa*1
	tGlobalSLGAction_Pack[3321840][35]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][35]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][36] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][36]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][36]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][36]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][36]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][36]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][36]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][36]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][36]["RewardItem"][1]["Id"] = 350015 -- 【库】Oar[属性:0]
	tGlobalSLGAction_Pack[3321840][36]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Oar*1
	tGlobalSLGAction_Pack[3321840][36]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][36]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][37] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][37]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][37]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][37]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][37]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][37]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][37]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][37]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][37]["RewardItem"][1]["Id"] = 350014 -- 【库】DragonBone[属性:0]
	tGlobalSLGAction_Pack[3321840][37]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑DragonBone*1
	tGlobalSLGAction_Pack[3321840][37]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][37]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][38] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][38]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][38]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][38]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][38]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][38]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][38]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][38]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][38]["RewardItem"][1]["Id"] = 350012 -- 【库】BlueGuitar[属性:0]
	tGlobalSLGAction_Pack[3321840][38]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑BlueGuitar*1
	tGlobalSLGAction_Pack[3321840][38]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][38]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321840][39] = {}
	-- ===7DBlessedAccessory（B）Pack
	-- ===索引: tGlobalSLGAction_Pack[3321840][39]
	-- ===删除: 3321840,1
	tGlobalSLGAction_Pack[3321840][39]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321840][39]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321840][39]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][39]["DeleteItem"][1]["Id"] = 3321840 -- 【库】7DBlessedAccessory(B)Pack[属性:9]
	tGlobalSLGAction_Pack[3321840][39]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321840][39]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321840][39]["RewardItem"][1]["Id"] = 350011 -- 【库】Broom[属性:0]
	tGlobalSLGAction_Pack[3321840][39]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑Broom*1
	tGlobalSLGAction_Pack[3321840][39]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321840][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321840][39]["RewardEffect"]["Effect"] = "angelwing"


	tGlobalSLGAction_Pack[3321841] = {}
	-- ===SuperMeteorScroll
	-- ===索引: tGlobalSLGAction_Pack[3321841]
	-- ===删除: 3321841,1
	tGlobalSLGAction_Pack[3321841]["LogId"] = 12001443
	tGlobalSLGAction_Pack[3321841]["DeleteItem"] = {}
	tGlobalSLGAction_Pack[3321841]["DeleteItem"][1] = {}
	tGlobalSLGAction_Pack[3321841]["DeleteItem"][1]["Id"] = 3321841 -- 【库】 3321841 【库里没有该物品】[属性:]
	tGlobalSLGAction_Pack[3321841]["RewardItem"] = {}
	tGlobalSLGAction_Pack[3321841]["RewardItem"][1] = {}
	tGlobalSLGAction_Pack[3321841]["RewardItem"][1]["Id"] = 720027 -- 【库】MeteorScroll[属性:0]
	tGlobalSLGAction_Pack[3321841]["RewardItem"][1]["Attr"] = "0 10 3" -- MeteorScroll（赠）*10
	tGlobalSLGAction_Pack[3321841]["RewardEffect"] = {}
	tGlobalSLGAction_Pack[3321841]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGlobalSLGAction_Pack[3321841]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
function GlobalSLGAction_Choose(nItemId,nChoose)
	tItem[nItemId]["Text211"] = string.format(tGlobalSLGAction_Text["Choose"]["Text211"],tGlobalSLGAction_Text["Choose"][nChoose])
	tItem[nItemId]["OptionFunc211"]="GlobalSLGAction_OpenChoosePackage</N>"..nItemId.."</N>"..nChoose
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function GlobalSLGAction_OpenChoosePackage(nItemId,nChoose)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tGlobalSLGAction_Pack["Choose"][nChoose]) then
		Sys_MsgBox(tGlobalSLGAction_Text["Msg"]["NoSpace"])
		return
	end
	-- 删除给奖励
	if Item_DelItem(nItemId) then
		RewardTemplate_UseItemAndMsg(tGlobalSLGAction_Pack["Choose"][nChoose])
	end
	return
end

function GlobalSLGAction_OpenPackage(nItemId,nChoose)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tGlobalSLGAction_Pack[nItemId][nChoose]) then
		Sys_MsgBox(tGlobalSLGAction_Text["Msg"]["NoSpace"])
		return
	end
	local bSuccess, sReward = RewardTemplate_UseItemAndMsg(tGlobalSLGAction_Pack[nItemId][nChoose])
	Sys_MsgBox(string.format(tGlobalSLGAction_Text["Msg"]["GetAward"],sReward))
	return
end
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 通用物品
tItem[3321708] = tItem[3321708] or {}
tItem[3321708]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	local nSpace= RewardTemplate_GetRewardSpace(tGlobalSLGAction_Pack[nItemId]) - RewardTemplate_GetDelSpace(tGlobalSLGAction_Pack[nItemId])
	if not RewardTemplate_CheckSpace(tGlobalSLGAction_Pack[nItemId]) then
		Sys_MsgBox(string.format(tGlobalSLGAction_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tGlobalSLGAction_Pack[nItemId])
end
tItem[3321709] = tItem[3321708]
tItem[3321710] = tItem[3321708]
tItem[3321711] = tItem[3321708]
tItem[3321712] = tItem[3321708]
tItem[3321713] = tItem[3321708]
tItem[3321714] = tItem[3321708]
tItem[3321715] = tItem[3321708]
tItem[3321716] = tItem[3321708]
tItem[3321717] = tItem[3321708]
tItem[3321718] = tItem[3321708]
tItem[3321719] = tItem[3321708]
tItem[3321720] = tItem[3321708]
tItem[3321721] = tItem[3321708]
tItem[3321722] = tItem[3321708]
tItem[3321723] = tItem[3321708]
tItem[3321724] = tItem[3321708]
tItem[3321725] = tItem[3321708]
tItem[3321726] = tItem[3321708]
tItem[3321727] = tItem[3321708]
tItem[3321728] = tItem[3321708]
tItem[3321729] = tItem[3321708]
tItem[3321730] = tItem[3321708]
tItem[3321731] = tItem[3321708]
tItem[3321732] = tItem[3321708]
tItem[3321733] = tItem[3321708]
tItem[3321734] = tItem[3321708]
tItem[3321735] = tItem[3321708]
tItem[3321736] = tItem[3321708]
tItem[3321737] = tItem[3321708]
tItem[3321738] = tItem[3321708]
tItem[3321739] = tItem[3321708]
tItem[3321740] = tItem[3321708]
tItem[3321741] = tItem[3321708]
tItem[3321742] = tItem[3321708]
tItem[3321743] = tItem[3321708]
tItem[3321744] = tItem[3321708]
tItem[3321745] = tItem[3321708]
tItem[3321746] = tItem[3321708]
tItem[3321747] = tItem[3321708]
tItem[3321748] = tItem[3321708]
tItem[3321749] = tItem[3321708]
tItem[3321750] = tItem[3321708]
tItem[3321751] = tItem[3321708]
tItem[3321752] = tItem[3321708]
tItem[3321753] = tItem[3321708]
tItem[3321754] = tItem[3321708]
tItem[3321755] = tItem[3321708]
tItem[3321756] = tItem[3321708]
tItem[3321757] = tItem[3321708]
tItem[3321758] = tItem[3321708]
tItem[3321759] = tItem[3321708]
tItem[3321760] = tItem[3321708]
tItem[3321761] = tItem[3321708]
tItem[3321762] = tItem[3321708]
tItem[3321763] = tItem[3321708]
tItem[3321764] = tItem[3321708]
tItem[3321765] = tItem[3321708]
tItem[3321766] = tItem[3321708]
tItem[3321767] = tItem[3321708]
tItem[3321768] = tItem[3321708]
tItem[3321769] = tItem[3321708]
tItem[3321770] = tItem[3321708]
tItem[3321771] = tItem[3321708]
tItem[3321772] = tItem[3321708]
tItem[3321773] = tItem[3321708]
tItem[3321774] = tItem[3321708]
tItem[3321775] = tItem[3321708]
tItem[3321776] = tItem[3321708]
tItem[3321777] = tItem[3321708]
tItem[3321778] = tItem[3321708]
tItem[3321779] = tItem[3321708]
tItem[3321780] = tItem[3321708]
tItem[3321781] = tItem[3321708]
tItem[3321782] = tItem[3321708]
tItem[3321783] = tItem[3321708]
tItem[3321784] = tItem[3321708]
tItem[3321785] = tItem[3321708]
tItem[3321786] = tItem[3321708]
tItem[3321787] = tItem[3321708]

-- 流星卷大礼包
tItem[3321841] = tItem[3321841] or {}
tItem[3321841]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	RewardTemplate_UseItem(tGlobalSLGAction_Pack[nItemId])
end

--------物品有对白模板
-- 5星外套
tItemFace[3321788] = 1012
tItemFace[3321789] = 1448
tItemFace[3321790] = 1952
tItemFace[3321791] = 1418
tItem[3321788] = tItem[3321788] or {}
tItem[3321788]["Function"] = function (nItemId,sItemName)
	if nItemId == 3321788 then
		tItem[nItemId]["tOption1-1"] = {111,112,113}
	elseif nItemId == 3321789 then
		tItem[nItemId]["tOption1-1"] = {112,113}
	elseif nItemId == 3321790 then
		tItem[nItemId]["tOption1-1"] = {114,115,116}
	elseif nItemId == 3321791 then
		tItem[nItemId]["tOption1-1"] = {114,115}
	else
		return
	end
	tItem[nItemId]["OptionFunc111"]="GlobalSLGAction_Choose</N>"..nItemId.."</N>1"
	tItem[nItemId]["OptionFunc112"]="GlobalSLGAction_Choose</N>"..nItemId.."</N>2"
	tItem[nItemId]["OptionFunc113"]="GlobalSLGAction_Choose</N>"..nItemId.."</N>3"
	tItem[nItemId]["OptionFunc114"]="GlobalSLGAction_Choose</N>"..nItemId.."</N>4"
	tItem[nItemId]["OptionFunc115"]="GlobalSLGAction_Choose</N>"..nItemId.."</N>5"
	tItem[nItemId]["OptionFunc116"]="GlobalSLGAction_Choose</N>"..nItemId.."</N>6"
	LinkItemGossipFunc_New(nItemId,"1-1")
	return
end
tItem[3321788]["DialogueText"] = tGlobalSLGAction_Text["Choose"]
tItem[3321788]["Text1-1"] = {111}
tItem[3321788]["tOption1-1"] = {111,112,113,114,115,116}

tItem[3321788]["Text2-1"] = {211,212,213}
tItem[3321788]["tOption2-1"] = {211,212}

tItem[3321789] = tItem[3321788]
tItem[3321790] = tItem[3321788]
tItem[3321791] = tItem[3321788]

-- 神佑武器
tItemFace[3321840] = 1011
tItem[3321840] = tItem[3321840] or {}
tItem[3321840]["DialogueText"] = tGlobalSLGAction_Text[3321840]
tItem[3321840]["Text1-1"] = {111}
tItem[3321840]["tOption1-1"] = {111,112,113,114,115}
tItem[3321840]["OptionPoint111"] = "2-1"
tItem[3321840]["OptionPoint112"] = "2-2"
tItem[3321840]["OptionPoint113"] = "2-3"
tItem[3321840]["OptionPoint114"] = "2-4"

tItem[3321840]["Text2-1"] = {211}
tItem[3321840]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tItem[3321840]["OptionFunc211"]="GlobalSLGAction_OpenPackage</N>3321840</N>39"
tItem[3321840]["OptionFunc212"]="GlobalSLGAction_OpenPackage</N>3321840</N>38"
tItem[3321840]["OptionFunc213"]="GlobalSLGAction_OpenPackage</N>3321840</N>37"
tItem[3321840]["OptionFunc214"]="GlobalSLGAction_OpenPackage</N>3321840</N>36"
tItem[3321840]["OptionFunc215"]="GlobalSLGAction_OpenPackage</N>3321840</N>35"
tItem[3321840]["OptionFunc216"]="GlobalSLGAction_OpenPackage</N>3321840</N>34"
tItem[3321840]["OptionFunc217"]="GlobalSLGAction_OpenPackage</N>3321840</N>33"
tItem[3321840]["OptionFunc218"]="GlobalSLGAction_OpenPackage</N>3321840</N>32"
tItem[3321840]["OptionFunc219"]="GlobalSLGAction_OpenPackage</N>3321840</N>31"

tItem[3321840]["Text2-2"] = {221}
tItem[3321840]["tOption2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,2214,2215,2216,2217,2218,2219,2220,2221}
tItem[3321840]["OptionFunc221"]="GlobalSLGAction_OpenPackage</N>3321840</N>30"
tItem[3321840]["OptionFunc222"]="GlobalSLGAction_OpenPackage</N>3321840</N>29"
tItem[3321840]["OptionFunc223"]="GlobalSLGAction_OpenPackage</N>3321840</N>28"
tItem[3321840]["OptionFunc224"]="GlobalSLGAction_OpenPackage</N>3321840</N>27"
tItem[3321840]["OptionFunc225"]="GlobalSLGAction_OpenPackage</N>3321840</N>26"
tItem[3321840]["OptionFunc226"]="GlobalSLGAction_OpenPackage</N>3321840</N>25"
tItem[3321840]["OptionFunc227"]="GlobalSLGAction_OpenPackage</N>3321840</N>24"
tItem[3321840]["OptionFunc228"]="GlobalSLGAction_OpenPackage</N>3321840</N>23"
tItem[3321840]["OptionFunc229"]="GlobalSLGAction_OpenPackage</N>3321840</N>22"
tItem[3321840]["OptionFunc2210"]="GlobalSLGAction_OpenPackage</N>3321840</N>21"
tItem[3321840]["OptionFunc2211"]="GlobalSLGAction_OpenPackage</N>3321840</N>20"
tItem[3321840]["OptionFunc2212"]="GlobalSLGAction_OpenPackage</N>3321840</N>19"
tItem[3321840]["OptionFunc2213"]="GlobalSLGAction_OpenPackage</N>3321840</N>18"
tItem[3321840]["OptionFunc2214"]="GlobalSLGAction_OpenPackage</N>3321840</N>17"
tItem[3321840]["OptionFunc2215"]="GlobalSLGAction_OpenPackage</N>3321840</N>16"
tItem[3321840]["OptionFunc2216"]="GlobalSLGAction_OpenPackage</N>3321840</N>15"
tItem[3321840]["OptionFunc2217"]="GlobalSLGAction_OpenPackage</N>3321840</N>14"
tItem[3321840]["OptionFunc2218"]="GlobalSLGAction_OpenPackage</N>3321840</N>13"
tItem[3321840]["OptionFunc2219"]="GlobalSLGAction_OpenPackage</N>3321840</N>12"
tItem[3321840]["OptionFunc2220"]="GlobalSLGAction_OpenPackage</N>3321840</N>11"

tItem[3321840]["Text2-3"] = {231}
tItem[3321840]["tOption2-3"] = {231,232,233,234,235,236}
tItem[3321840]["OptionFunc231"]="GlobalSLGAction_OpenPackage</N>3321840</N>10"
tItem[3321840]["OptionFunc232"]="GlobalSLGAction_OpenPackage</N>3321840</N>9"
tItem[3321840]["OptionFunc233"]="GlobalSLGAction_OpenPackage</N>3321840</N>8"
tItem[3321840]["OptionFunc234"]="GlobalSLGAction_OpenPackage</N>3321840</N>7"
tItem[3321840]["OptionFunc235"]="GlobalSLGAction_OpenPackage</N>3321840</N>6"

tItem[3321840]["Text2-4"] = {241}
tItem[3321840]["tOption2-4"] = {241,242,243,244,245,246}
tItem[3321840]["OptionFunc241"]="GlobalSLGAction_OpenPackage</N>3321840</N>5"
tItem[3321840]["OptionFunc242"]="GlobalSLGAction_OpenPackage</N>3321840</N>4"
tItem[3321840]["OptionFunc243"]="GlobalSLGAction_OpenPackage</N>3321840</N>3"
tItem[3321840]["OptionFunc244"]="GlobalSLGAction_OpenPackage</N>3321840</N>2"
tItem[3321840]["OptionFunc245"]="GlobalSLGAction_OpenPackage</N>3321840</N>1"