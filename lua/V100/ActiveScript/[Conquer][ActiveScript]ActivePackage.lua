------------------------------------------------------------------------------------
--Name：            190617[英文征服][活动脚本]游戏活跃礼包（7.2-8.1）
--Creator:      林嘉鑫
--Created:     2019-06-17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tActivePackage_Cont = {}
	tActivePackage_Cont["Login"] = {}
	tActivePackage_Cont["Login"]["Level"] = 100
	tActivePackage_Cont["Login"]["Metempsychosis"] = 0
	
	tActivePackage_Cont["Use"] = {}
	tActivePackage_Cont["Use"]["Level"] = 120
	tActivePackage_Cont["Use"]["Metempsychosis"] = 1
	
	tActivePackage_Cont["Times"] = 31
	
	tActivePackage_Cont["Mail"] = {}
	tActivePackage_Cont["Mail"]["ActionId"] = 573088
	tActivePackage_Cont["Mail"]["ExistDay"] = 7

local tActivePackage_Stc = {}
	tActivePackage_Stc["Wheel"] = {}
	tActivePackage_Stc["Wheel"]["Event"] = 198
	tActivePackage_Stc["Wheel"]["Data"] = 75
	tActivePackage_Stc["Login"] = {}
	tActivePackage_Stc["Login"]["Event"] = 198
	tActivePackage_Stc["Login"]["Data"] = 76
	
local tActivePackage_Pack = {}
	-- ===良品暑期签到转盘
	-- ===索引: tActivePackage_Pack[3322151]
	-- ===EMoneyLog: 350,22231
	tActivePackage_Pack[3322151] = {}
	tActivePackage_Pack[3322151]["ItemChanceSum"] = 10000
	tActivePackage_Pack[3322151]["LogId"] = 12001472
	tActivePackage_Pack[3322151]["EmoneyLog"] = "350	22231	0	0	1	"
	-- 经验球 - 20.00%
	tActivePackage_Pack[3322151][1] = {}
	tActivePackage_Pack[3322151][1]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][1]["ItemChance"] = 2000
	tActivePackage_Pack[3322151][1]["RewardItem"] = {}
	tActivePackage_Pack[3322151][1]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][1]["RewardItem"][1]["Id"] = 723700 -- ExpBall[723700][属性:0][叠加:10][金币:0], 【表格】经验球
	tActivePackage_Pack[3322151][1]["RewardItem"][1]["Attr"] = "0 3 3" -- ExpBall（赠）*3
	tActivePackage_Pack[3322151][1]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 10.00%
	tActivePackage_Pack[3322151][2] = {}
	tActivePackage_Pack[3322151][2]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][2]["ItemChance"] = 1000
	tActivePackage_Pack[3322151][2]["RewardItem"] = {}
	tActivePackage_Pack[3322151][2]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][2]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tActivePackage_Pack[3322151][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tActivePackage_Pack[3322151][2]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3个流星（赠）礼包 - 10.00%
	tActivePackage_Pack[3322151][3] = {}
	tActivePackage_Pack[3322151][3]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][3]["ItemChance"] = 1000
	tActivePackage_Pack[3322151][3]["RewardItem"] = {}
	tActivePackage_Pack[3322151][3]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][3]["RewardItem"][1]["Id"] = 3322154 -- 【库】3Meteors(B)Pack[属性:9], 【表格】3个流星（赠）礼包
	tActivePackage_Pack[3322151][3]["RewardItem"][1]["Attr"] = "0 1" -- 3Meteors(B)Pack*1
	tActivePackage_Pack[3322151][3]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000StudyPointsPack - 15.00%
	tActivePackage_Pack[3322151][4] = {}
	tActivePackage_Pack[3322151][4]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][4]["ItemChance"] = 1500
	tActivePackage_Pack[3322151][4]["RewardItem"] = {}
	tActivePackage_Pack[3322151][4]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][4]["RewardItem"][1]["Id"] = 3321179 -- 【库】1000StudyPointsPack[属性:9], 【表格】1000StudyPointsPack
	tActivePackage_Pack[3322151][4]["RewardItem"][1]["Attr"] = "0 1" -- 1000StudyPointsPack*1
	tActivePackage_Pack[3322151][4]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 经验球 - 10.00%
	tActivePackage_Pack[3322151][5] = {}
	tActivePackage_Pack[3322151][5]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][5]["ItemChance"] = 1000
	tActivePackage_Pack[3322151][5]["RewardItem"] = {}
	tActivePackage_Pack[3322151][5]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][5]["RewardItem"][1]["Id"] = 723700 -- ExpBall[723700][属性:0][叠加:10][金币:0], 【表格】经验球
	tActivePackage_Pack[3322151][5]["RewardItem"][1]["Attr"] = "0 6 3" -- ExpBall（赠）*6
	tActivePackage_Pack[3322151][5]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 500StudyPointsPack - 15.00%
	tActivePackage_Pack[3322151][6] = {}
	tActivePackage_Pack[3322151][6]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][6]["ItemChance"] = 1500
	tActivePackage_Pack[3322151][6]["RewardItem"] = {}
	tActivePackage_Pack[3322151][6]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][6]["RewardItem"][1]["Id"] = 3304062 -- 【库】500StudyPointsPack[属性:11], 【表格】500StudyPointsPack
	tActivePackage_Pack[3322151][6]["RewardItem"][1]["Attr"] = "0 1" -- 500StudyPointsPack*1
	tActivePackage_Pack[3322151][6]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][6]["RewardEffect"]["Effect"] = "angelwing"
	--  DragonBallPack（B）  - 5.00%
	tActivePackage_Pack[3322151][7] = {}
	tActivePackage_Pack[3322151][7]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][7]["ItemChance"] = 500
	tActivePackage_Pack[3322151][7]["RewardItem"] = {}
	tActivePackage_Pack[3322151][7]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][7]["RewardItem"][1]["Id"] = 3301409 -- 【库】DragonBallPack(B)[属性:9], 【表格】 DragonBallPack（B） 
	tActivePackage_Pack[3322151][7]["RewardItem"][1]["Attr"] = "0 1" -- DragonBallPack(B)*1
	tActivePackage_Pack[3322151][7]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回气丹 - 15.00%
	tActivePackage_Pack[3322151][8] = {}
	tActivePackage_Pack[3322151][8]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322151][8]["ItemChance"] = 1500
	tActivePackage_Pack[3322151][8]["RewardItem"] = {}
	tActivePackage_Pack[3322151][8]["RewardItem"][1] = {}
	tActivePackage_Pack[3322151][8]["RewardItem"][1]["Id"] = 729242 -- 【库】Vital~Pill[属性:0], 【表格】回气丹
	tActivePackage_Pack[3322151][8]["RewardItem"][1]["Attr"] = "0 1 3" -- Vital~Pill（赠）*1
	tActivePackage_Pack[3322151][8]["RewardEffect"] = {}
	tActivePackage_Pack[3322151][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322151][8]["RewardEffect"]["Effect"] = "angelwing"


	tActivePackage_Pack[3322152] = {}
	-- ===极品暑期签到转盘
	-- ===索引: tActivePackage_Pack[3322152]
	-- ===EMoneyLog: 350,22233
	tActivePackage_Pack[3322152]["ItemChanceSum"] = 10000
	tActivePackage_Pack[3322152]["LogId"] = 12001472
	tActivePackage_Pack[3322152]["EmoneyLog"] = "350	22233	0	0	1	"
	-- 500ChiPointsBag  - 25.00%
	tActivePackage_Pack[3322152][1] = {}
	tActivePackage_Pack[3322152][1]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][1]["ItemChance"] = 2500
	tActivePackage_Pack[3322152][1]["RewardItem"] = {}
	tActivePackage_Pack[3322152][1]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][1]["RewardItem"][1]["Id"] = 3309999 -- 【库】500ChiPointsBag[属性:9], 【表格】500ChiPointsBag 
	tActivePackage_Pack[3322152][1]["RewardItem"][1]["Attr"] = "0 1" -- 500ChiPointsBag*1
	tActivePackage_Pack[3322152][1]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][1]["RewardEffect"]["Effect"] = "angelwing"
	-- FavoredTrainingPack（10）  + （内含10点赠品免费强炼丹） - 10.00%
	tActivePackage_Pack[3322152][2] = {}
	tActivePackage_Pack[3322152][2]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][2]["ItemChance"] = 1000
	tActivePackage_Pack[3322152][2]["RewardItem"] = {}
	tActivePackage_Pack[3322152][2]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][2]["RewardItem"][1]["Id"] = 3004470 -- 【库】FavoredTrainingPack(10)[属性:9], 【表格】FavoredTrainingPack（10） 
	tActivePackage_Pack[3322152][2]["RewardItem"][1]["Attr"] = "0 1" -- FavoredTrainingPack(10)*1
	tActivePackage_Pack[3322152][2]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 15.00%
	tActivePackage_Pack[3322152][3] = {}
	tActivePackage_Pack[3322152][3]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][3]["ItemChance"] = 1500
	tActivePackage_Pack[3322152][3]["RewardItem"] = {}
	tActivePackage_Pack[3322152][3]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][3]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tActivePackage_Pack[3322152][3]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的TwilightStarStone*5
	tActivePackage_Pack[3322152][3]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠 - 5.00%
	tActivePackage_Pack[3322152][4] = {}
	tActivePackage_Pack[3322152][4]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][4]["ItemChance"] = 500
	tActivePackage_Pack[3322152][4]["RewardItem"] = {}
	tActivePackage_Pack[3322152][4]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][4]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】龙珠
	tActivePackage_Pack[3322152][4]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tActivePackage_Pack[3322152][4]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 5个蓝色神纹精粹（赠）礼包 - 10.00%
	tActivePackage_Pack[3322152][5] = {}
	tActivePackage_Pack[3322152][5]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][5]["ItemChance"] = 1000
	tActivePackage_Pack[3322152][5]["RewardItem"] = {}
	tActivePackage_Pack[3322152][5]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][5]["RewardItem"][1]["Id"] = 3322155 -- 【库】5BlueRuneEssences(B)Pack[属性:9], 【表格】5个蓝色神纹精粹（赠）礼包
	tActivePackage_Pack[3322152][5]["RewardItem"][1]["Attr"] = "0 1" -- 5BlueRuneEssences(B)Pack*1
	tActivePackage_Pack[3322152][5]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][5]["RewardEffect"]["Effect"] = "angelwing"
	-- P6DragonSoulPack  - 15.00%
	tActivePackage_Pack[3322152][6] = {}
	tActivePackage_Pack[3322152][6]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][6]["ItemChance"] = 1500
	tActivePackage_Pack[3322152][6]["RewardItem"] = {}
	tActivePackage_Pack[3322152][6]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][6]["RewardItem"][1]["Id"] = 3005893 -- 【库】P6DragonSoulPack[属性:9], 【表格】P6DragonSoulPack 
	tActivePackage_Pack[3322152][6]["RewardItem"][1]["Attr"] = "0 1" -- P6DragonSoulPack*1
	tActivePackage_Pack[3322152][6]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 3个神纹源晶（赠）礼包 - 5.00%
	tActivePackage_Pack[3322152][7] = {}
	tActivePackage_Pack[3322152][7]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][7]["ItemChance"] = 500
	tActivePackage_Pack[3322152][7]["RewardItem"] = {}
	tActivePackage_Pack[3322152][7]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][7]["RewardItem"][1]["Id"] = 3322156 -- 【库】3RuneCrystals(B)Pack[属性:9], 【表格】3个神纹源晶（赠）礼包
	tActivePackage_Pack[3322152][7]["RewardItem"][1]["Attr"] = "0 1" -- 3RuneCrystals(B)Pack*1
	tActivePackage_Pack[3322152][7]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][7]["RewardEffect"]["Effect"] = "angelwing"
	-- P6weaponsoulPack  - 15.00%
	tActivePackage_Pack[3322152][8] = {}
	tActivePackage_Pack[3322152][8]["RandomItemChanceType"] = 2
	tActivePackage_Pack[3322152][8]["ItemChance"] = 1500
	tActivePackage_Pack[3322152][8]["RewardItem"] = {}
	tActivePackage_Pack[3322152][8]["RewardItem"][1] = {}
	tActivePackage_Pack[3322152][8]["RewardItem"][1]["Id"] = 3006236 -- 【库】P6WeaponSoulPack[属性:8], 【表格】P6weaponsoulPack 
	tActivePackage_Pack[3322152][8]["RewardItem"][1]["Attr"] = "0 1 3" -- P6WeaponSoulPack（赠）*1
	tActivePackage_Pack[3322152][8]["RewardEffect"] = {}
	tActivePackage_Pack[3322152][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322152][8]["RewardEffect"]["Effect"] = "angelwing"


	tActivePackage_Pack[3322153] = {}
	-- ===暑期签到礼包
	-- ===索引: tActivePackage_Pack[3322153][1]
	-- ===删除: 3322153,1
	-- ===EMoneyLog: 350,22230
	tActivePackage_Pack[3322153][1] = {}
	tActivePackage_Pack[3322153][1]["LogId"] = 12001472
	tActivePackage_Pack[3322153][1]["EmoneyLog"] = "350	22230	0	0	1	"
	tActivePackage_Pack[3322153][1]["DeleteItem"] = {}
	tActivePackage_Pack[3322153][1]["DeleteItem"][1] = {}
	tActivePackage_Pack[3322153][1]["DeleteItem"][1]["Id"] = 3322153 -- 【库】SummerSign-inPack[属性:9]
	tActivePackage_Pack[3322153][1]["RewardItem"] = {}
	tActivePackage_Pack[3322153][1]["RewardItem"][1] = {}
	tActivePackage_Pack[3322153][1]["RewardItem"][1]["Id"] = 3322151 -- 【库】RefinedSummerSign-inWheel[属性:9], 【表格】良品暑期签到转盘
	tActivePackage_Pack[3322153][1]["RewardItem"][1]["Attr"] = "0 1" -- RefinedSummerSign-inWheel*1
	tActivePackage_Pack[3322153][1]["RewardItem"][2] = {}
	tActivePackage_Pack[3322153][1]["RewardItem"][2]["Id"] = 195505 -- 【库】LegendofHeroes[属性:0], 【表格】LegendofHeroes
	tActivePackage_Pack[3322153][1]["RewardItem"][2]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LegendofHeroes（赠）*1
	tActivePackage_Pack[3322153][1]["RewardEffect"] = {}
	tActivePackage_Pack[3322153][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322153][1]["RewardEffect"]["Effect"] = "angelwing"


	tActivePackage_Pack[3322153][2] = {}
	-- ===暑期签到礼包
	-- ===索引: tActivePackage_Pack[3322153][2]
	-- ===删除: 3322153,1
	-- ===EMoneyLog: 350,22232
	tActivePackage_Pack[3322153][2]["LogId"] = 12001472
	tActivePackage_Pack[3322153][2]["EmoneyLog"] = "350	22232	0	0	1	"
	tActivePackage_Pack[3322153][2]["DeleteItem"] = {}
	tActivePackage_Pack[3322153][2]["DeleteItem"][1] = {}
	tActivePackage_Pack[3322153][2]["DeleteItem"][1]["Id"] = 3322153 -- 【库】SummerSign-inPack[属性:9]
	tActivePackage_Pack[3322153][2]["RewardItem"] = {}
	tActivePackage_Pack[3322153][2]["RewardItem"][1] = {}
	tActivePackage_Pack[3322153][2]["RewardItem"][1]["Id"] = 3322152 -- 【库】SuperSummerSign-inWheel[属性:9], 【表格】极品暑期签到转盘
	tActivePackage_Pack[3322153][2]["RewardItem"][1]["Attr"] = "0 1" -- SuperSummerSign-inWheel*1
	tActivePackage_Pack[3322153][2]["RewardItem"][2] = {}
	tActivePackage_Pack[3322153][2]["RewardItem"][2]["Id"] = 195505 -- 【库】LegendofHeroes[属性:0], 【表格】LegendofHeroes
	tActivePackage_Pack[3322153][2]["RewardItem"][2]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LegendofHeroes（赠）*1
	tActivePackage_Pack[3322153][2]["RewardEffect"] = {}
	tActivePackage_Pack[3322153][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322153][2]["RewardEffect"]["Effect"] = "angelwing"


	tActivePackage_Pack[3322154] = {}
	-- === 3个流星（赠）礼包
	-- ===索引: tActivePackage_Pack[3322154]
	-- ===删除: 3322154,1
	tActivePackage_Pack[3322154]["LogId"] = 12001472
	tActivePackage_Pack[3322154]["DeleteItem"] = {}
	tActivePackage_Pack[3322154]["DeleteItem"][1] = {}
	tActivePackage_Pack[3322154]["DeleteItem"][1]["Id"] = 3322154 -- 【库】3Meteors(B)Pack[属性:9]
	tActivePackage_Pack[3322154]["RewardItem"] = {}
	tActivePackage_Pack[3322154]["RewardItem"][1] = {}
	tActivePackage_Pack[3322154]["RewardItem"][1]["Id"] = 1088001 -- 【库】Meteor[属性:0], 【表格】1088001
	tActivePackage_Pack[3322154]["RewardItem"][1]["Attr"] = "0 3 3" -- Meteor（赠）*3
	tActivePackage_Pack[3322154]["RewardEffect"] = {}
	tActivePackage_Pack[3322154]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322154]["RewardEffect"]["Effect"] = "angelwing"


	tActivePackage_Pack[3322155] = {}
	-- ===5个蓝色神纹精粹（赠）礼包
	-- ===索引: tActivePackage_Pack[3322155]
	-- ===删除: 3322155,1
	tActivePackage_Pack[3322155]["LogId"] = 12001472
	tActivePackage_Pack[3322155]["DeleteItem"] = {}
	tActivePackage_Pack[3322155]["DeleteItem"][1] = {}
	tActivePackage_Pack[3322155]["DeleteItem"][1]["Id"] = 3322155 -- 【库】5BlueRuneEssences(B)Pack[属性:9]
	tActivePackage_Pack[3322155]["RewardItem"] = {}
	tActivePackage_Pack[3322155]["RewardItem"][1] = {}
	tActivePackage_Pack[3322155]["RewardItem"][1]["Id"] = 4040001 -- 【库】BlueRuneEssence[属性:9], 【表格】4040001
	tActivePackage_Pack[3322155]["RewardItem"][1]["Attr"] = "0 5 3" -- BlueRuneEssence（赠）*5
	tActivePackage_Pack[3322155]["RewardEffect"] = {}
	tActivePackage_Pack[3322155]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322155]["RewardEffect"]["Effect"] = "angelwing"


	tActivePackage_Pack[3322156] = {}
	-- ===3个神纹源晶（赠）礼包
	-- ===索引: tActivePackage_Pack[3322156]
	-- ===删除: 3322156,1
	tActivePackage_Pack[3322156]["LogId"] = 12001472
	tActivePackage_Pack[3322156]["DeleteItem"] = {}
	tActivePackage_Pack[3322156]["DeleteItem"][1] = {}
	tActivePackage_Pack[3322156]["DeleteItem"][1]["Id"] = 3322156 -- 【库】3RuneCrystals(B)Pack[属性:9]
	tActivePackage_Pack[3322156]["RewardItem"] = {}
	tActivePackage_Pack[3322156]["RewardItem"][1] = {}
	tActivePackage_Pack[3322156]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】3311759
	tActivePackage_Pack[3322156]["RewardItem"][1]["Attr"] = "0 3 3" -- RuneCrystal（赠）*3
	tActivePackage_Pack[3322156]["RewardEffect"] = {}
	tActivePackage_Pack[3322156]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tActivePackage_Pack[3322156]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------

function ActivePackage_Online()
	local nUserId = Get_UserId()
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["ActivePackage"]["ActivityTime"]) then
		return
	end
	-- 激情服不上
	if SpecialServer_ChkNoGiftServer() then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tActivePackage_Cont["Login"]["Level"],tActivePackage_Cont["Login"]["Metempsychosis"]) then
		return
	end
	local nEvent = tActivePackage_Stc["Login"]["Event"]
	local nType = tActivePackage_Stc["Login"]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 已发判断
	if nData > 0 then
		return
	end
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	-- 发奖
	local nActionId = tActivePackage_Cont["Mail"]["ActionId"]
	local nExistDay = tActivePackage_Cont["Mail"]["ExistDay"]
	local sSender = tActivePackage_Text["Mail"]["Sender"]
	local sTitle = tActivePackage_Text["Mail"]["Title"]
	local sContent = tActivePackage_Text["Mail"]["Content"]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3322151] = tItem[3322151] or {}
tItem[3322151]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tActivePackage_Stc["Wheel"]["Event"]
	local nType = tActivePackage_Stc["Wheel"]["Data"]
	-- 隔天判断
	if not Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Sys_MsgBox(tActivePackage_Text["Msg"]["AlreadyUse"])
		return
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tActivePackage_Pack, nItemId)
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tActivePackage_Text["Msg"]["NoSpace"])
		return
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	nData = nData + 1
	if nData >= tActivePackage_Cont["Times"] then
		if not Item_DelItem(nItemId) then
			return
		end
	end
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	Sys_SaveEmoneyBuy(tActivePackage_Pack[nItemId]["EmoneyLog"])
	local tNewReward,sRewardStr = RewardTemplate_NewRandom(tActivePackage_Pack,nItemId,nUserId)
	Sys_MsgBox(string.format(tActivePackage_Text["Msg"]["Reward"],sRewardStr))
end
tItem[3322152] = tItem[3322151]


tItem[3322153] = tItem[3322153] or {}
tItem[3322153]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	local nRewardType = 1
	if User_JudgeLevelAndMetempsychosis(tActivePackage_Cont["Use"]["Level"],tActivePackage_Cont["Use"]["Metempsychosis"]) then
		nRewardType = 2
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tActivePackage_Pack[nItemId][nRewardType])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tActivePackage_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tActivePackage_Pack[nItemId][nRewardType])
end


tItem[3322154] = tItem[3322154] or {}
tItem[3322154]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tActivePackage_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tActivePackage_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tActivePackage_Pack[nItemId])
end
tItem[3322155] = tItem[3322154]
tItem[3322156] = tItem[3322154]

---------------------------------------上线触发--------------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,ActivePackage_Online)