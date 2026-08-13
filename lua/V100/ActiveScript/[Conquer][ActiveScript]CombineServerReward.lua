------------------------------------------------------------------------------------
--Name：       190603[英文征服][活动脚本]并服补偿方案6.20
--Creator:     吴燕柚
--Created:     2019/6/03
------------------------------------------------------------------------------------
--任务需求：

--命名规范 ComBineServerReward
--log 12001450
--stc(197, 66) 记录是否领取礼包
--stc(197, 67) 记录今日是否打开礼包
--stc(197, 68) 背包信

----------------------------------表配置部分--------------------------------------------

local tComBineServerReward_Data = {}
tComBineServerReward_Data["Level"] = 15
tComBineServerReward_Data["Mete"] = 1
tComBineServerReward_Data["NeedVip"] = {}
tComBineServerReward_Data["NeedVip"][3312823] = 0
tComBineServerReward_Data["NeedVip"][3312824] = 4

local tComBineServerReward_Stc = {}
tComBineServerReward_Stc["GetPack"] = {}
tComBineServerReward_Stc["GetPack"]["Event"] = 197
tComBineServerReward_Stc["GetPack"]["Data"] = 66
tComBineServerReward_Stc["OpenPack"] = {}
tComBineServerReward_Stc["OpenPack"]["Event"] = 197
tComBineServerReward_Stc["OpenPack"]["Data"] = 67

local tComBineServerReward_Reward = {}
	-- ===领取合服礼包
	-- ===索引: tComBineServerReward_Reward["Pack"][3312823]
	-- ===LogStep: 1[1]
	tComBineServerReward_Reward["Pack"] = {}
	tComBineServerReward_Reward["Pack"][3312823] = {}
	tComBineServerReward_Reward["Pack"][3312823]["LogId"] = 12001450
	tComBineServerReward_Reward["Pack"][3312823]["LogStep"] = "1[1]"
	tComBineServerReward_Reward["Pack"][3312823]["RewardItem"] = {}
	tComBineServerReward_Reward["Pack"][3312823]["RewardItem"][1] = {}
	tComBineServerReward_Reward["Pack"][3312823]["RewardItem"][1]["Id"] = 3312823 -- 【库】ServerMergingPack[属性:9], 【表格】合服大礼包
	tComBineServerReward_Reward["Pack"][3312823]["RewardItem"][1]["Attr"] = "0 1 0 129600 1" -- 90天时效(激活)的ServerMergingPack*1
	tComBineServerReward_Reward["Pack"][3312823]["RewardEffect"] = {}
	tComBineServerReward_Reward["Pack"][3312823]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward["Pack"][3312823]["RewardEffect"]["Effect"] = "angelwing"


	tComBineServerReward_Reward["Pack"][3312824] = {}
	-- ===领取合服至尊礼包
	-- ===索引: tComBineServerReward_Reward["Pack"][3312824]
	-- ===LogStep: 1[1]
	tComBineServerReward_Reward["Pack"][3312824]["LogId"] = 12001450
	tComBineServerReward_Reward["Pack"][3312824]["LogStep"] = "1[1]"
	tComBineServerReward_Reward["Pack"][3312824]["RewardItem"] = {}
	tComBineServerReward_Reward["Pack"][3312824]["RewardItem"][1] = {}
	tComBineServerReward_Reward["Pack"][3312824]["RewardItem"][1]["Id"] = 3312824 -- 【库】SupremeServerMergingPack[属性:9], 【表格】合服至尊礼包
	tComBineServerReward_Reward["Pack"][3312824]["RewardItem"][1]["Attr"] = "0 1 0 129600 1" -- 90天时效(激活)的SupremeServerMergingPack*1
	tComBineServerReward_Reward["Pack"][3312824]["RewardEffect"] = {}
	tComBineServerReward_Reward["Pack"][3312824]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward["Pack"][3312824]["RewardEffect"]["Effect"] = "angelwing"

	-- ===合服礼包
	-- ===索引: tComBineServerReward_Reward[3312823]
	-- ===LogStep: 1[1]
	tComBineServerReward_Reward[3312823] = {}
	tComBineServerReward_Reward[3312823]["ItemChanceSum"] = 10000
	tComBineServerReward_Reward[3312823]["LogId"] = 12001450
	tComBineServerReward_Reward[3312823]["LogStep"] = " 1[1]"
	-- 赤练石+2赠-- 【必给】
	tComBineServerReward_Reward[3312823][1] = {}
	tComBineServerReward_Reward[3312823][1]["RandomItemChanceType"] = 1
	tComBineServerReward_Reward[3312823][1]["RewardItem"] = {}
    tComBineServerReward_Reward[3312823][1]["RewardItem"][1] = {}
    tComBineServerReward_Reward[3312823][1]["RewardItem"][1]["Id"] = 730002 -- 【库】+2Stone[属性:0], 【表格】赤练石+2赠
    tComBineServerReward_Reward[3312823][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tComBineServerReward_Reward[3312823][1]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品黄色神纹精粹*5-- 【必给】
	tComBineServerReward_Reward[3312823][2] = {}
	tComBineServerReward_Reward[3312823][2]["RandomItemChanceType"] = 1
	tComBineServerReward_Reward[3312823][2]["RewardItem"] = {}
	tComBineServerReward_Reward[3312823][2]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312823][2]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠品黄色神纹精粹*5
	tComBineServerReward_Reward[3312823][2]["RewardItem"][1]["Attr"] = "0 5 3" -- YellowRuneEssence（赠）*1
	tComBineServerReward_Reward[3312823][2]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 马匹+2赠 - 10.0%
	tComBineServerReward_Reward[3312823][3] = {}
	tComBineServerReward_Reward[3312823][3]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][3]["ItemChance"] = 1000
	tComBineServerReward_Reward[3312823][3]["RewardItem"] = {}
	tComBineServerReward_Reward[3312823][3]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312823][3]["RewardItem"][1]["Id"] = 3007031 -- 【库】+2SteedPack[属性:11], 【表格】马匹+2赠
	tComBineServerReward_Reward[3312823][3]["RewardItem"][1]["Attr"] = "0 1" -- +2SteedPack*1
	tComBineServerReward_Reward[3312823][3]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+1赠 - 20.0%
	tComBineServerReward_Reward[3312823][4] = {}
	tComBineServerReward_Reward[3312823][4]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][4]["ItemChance"] = 2000
	tComBineServerReward_Reward[3312823][4]["RewardItem"] = {}
	tComBineServerReward_Reward[3312823][4]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312823][4]["RewardItem"][1]["Id"] = 730001 -- 【库】+1Stone[属性:0], 【表格】赤练石+1赠
	tComBineServerReward_Reward[3312823][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tComBineServerReward_Reward[3312823][4]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 500点修为值 - 25.0%
	tComBineServerReward_Reward[3312823][5] = {}
	tComBineServerReward_Reward[3312823][5]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][5]["ItemChance"] = 2500
	tComBineServerReward_Reward[3312823][5]["RewardRepairValue"] = {}
	tComBineServerReward_Reward[3312823][5]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000点修为值
	tComBineServerReward_Reward[3312823][5]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 250气力值 - 20.0%
	tComBineServerReward_Reward[3312823][6] = {}
	tComBineServerReward_Reward[3312823][6]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][6]["ItemChance"] = 2000
	tComBineServerReward_Reward[3312823][6]["RewardStrengthValue"] = {}
	tComBineServerReward_Reward[3312823][6]["RewardStrengthValue"]["Value"] = 250 -- 气力值, 【需求】250气力值
	tComBineServerReward_Reward[3312823][6]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][6]["RewardEffect"]["Effect"] = "angelwing"
	-- EndeavorScroll（日常任务重置符） - 10.0%
	tComBineServerReward_Reward[3312823][7] = {}
	tComBineServerReward_Reward[3312823][7]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][7]["ItemChance"] = 1000
	tComBineServerReward_Reward[3312823][7]["RewardItem"] = {}
	tComBineServerReward_Reward[3312823][7]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312823][7]["RewardItem"][1]["Id"] = 3001407 -- 【库】 3001407 EndeavorScroll[属性:0], 【表格】EndeavorScroll（日常任务重置符）
	tComBineServerReward_Reward[3312823][7]["RewardItem"][1]["Attr"] = "0 1 3" --  3001407 EndeavorScroll（赠）*1
	tComBineServerReward_Reward[3312823][7]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 9.0%
	tComBineServerReward_Reward[3312823][8] = {}
	tComBineServerReward_Reward[3312823][8]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][8]["ItemChance"] = 900
	tComBineServerReward_Reward[3312823][8]["RewardItem"] = {}
	tComBineServerReward_Reward[3312823][8]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312823][8]["RewardItem"][1]["Id"] = 3009000 -- 【库】TwilightStarStone[属性:9], 【表格】微光星陨石
	tComBineServerReward_Reward[3312823][8]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tComBineServerReward_Reward[3312823][8]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 强炼丹 - 5.0%
	tComBineServerReward_Reward[3312823][9] = {}
	tComBineServerReward_Reward[3312823][9]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][9]["ItemChance"] = 500
	tComBineServerReward_Reward[3312823][9]["RewardItem"] = {}
	tComBineServerReward_Reward[3312823][9]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312823][9]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】强炼丹
	tComBineServerReward_Reward[3312823][9]["RewardItem"][1]["Attr"] = "0 10 3" -- FavoredTrainingPill（赠）*10
	tComBineServerReward_Reward[3312823][9]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+3赠 - 1.0%
	tComBineServerReward_Reward[3312823][10] = {}
	tComBineServerReward_Reward[3312823][10]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312823][10]["ItemChance"] = 100
	tComBineServerReward_Reward[3312823][10]["RewardItem"] = {}
	tComBineServerReward_Reward[3312823][10]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312823][10]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赤练石+3赠
	tComBineServerReward_Reward[3312823][10]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tComBineServerReward_Reward[3312823][10]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312823][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312823][10]["RewardEffect"]["Effect"] = "angelwing"


	tComBineServerReward_Reward[3312824] = {}
	-- ===合服至尊礼包
	-- ===索引: tComBineServerReward_Reward[3312824]
	-- ===LogStep: 1[1]
	tComBineServerReward_Reward[3312824]["ItemChanceSum"] = 10000
	tComBineServerReward_Reward[3312824]["LogId"] = 12001450
	tComBineServerReward_Reward[3312824]["LogStep"] = " 1[1]"
	-- 赤练石+3赠-- 【必给】
	tComBineServerReward_Reward[3312824][1] = {}
	tComBineServerReward_Reward[3312824][1]["RandomItemChanceType"] = 1
	tComBineServerReward_Reward[3312824][1]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][1]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][1]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】赤练石+3赠
	tComBineServerReward_Reward[3312824][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tComBineServerReward_Reward[3312824][1]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品黄色神纹精粹*10-- 【必给】
	tComBineServerReward_Reward[3312824][2] = {}
	tComBineServerReward_Reward[3312824][2]["RandomItemChanceType"] = 1
	tComBineServerReward_Reward[3312824][2]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][2]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][2]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠品黄色神纹精粹*10
	tComBineServerReward_Reward[3312824][2]["RewardItem"][1]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*1
	tComBineServerReward_Reward[3312824][2]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果*1-- 【必给】
	tComBineServerReward_Reward[3312824][3] = {}
	tComBineServerReward_Reward[3312824][3]["RandomItemChanceType"] = 1
	tComBineServerReward_Reward[3312824][3]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][3]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][3]["RewardItem"][1]["Id"] = 3009100 -- 【库】GinsengFruit[属性:9], 【表格】人参果*1
	tComBineServerReward_Reward[3312824][3]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tComBineServerReward_Reward[3312824][3]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 马匹+3赠 - 10.0%
	tComBineServerReward_Reward[3312824][4] = {}
	tComBineServerReward_Reward[3312824][4]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][4]["ItemChance"] = 1000
	tComBineServerReward_Reward[3312824][4]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][4]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][4]["RewardItem"][1]["Id"] = 3305437 -- 【库】+3BlackSteedPack[属性:9], 【表格】马匹+3赠
	tComBineServerReward_Reward[3312824][4]["RewardItem"][1]["Attr"] = "0 1" -- +3BlackSteedPack*1
	tComBineServerReward_Reward[3312824][4]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2赠 - 20.0%
	tComBineServerReward_Reward[3312824][5] = {}
	tComBineServerReward_Reward[3312824][5]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][5]["ItemChance"] = 2000
	tComBineServerReward_Reward[3312824][5]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][5]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][5]["RewardItem"][1]["Id"] = 730002 -- 【库】+2Stone[属性:0], 【表格】赤练石+2赠
	tComBineServerReward_Reward[3312824][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tComBineServerReward_Reward[3312824][5]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 大爆丹 - 25.0%
	tComBineServerReward_Reward[3312824][6] = {}
	tComBineServerReward_Reward[3312824][6]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][6]["ItemChance"] = 2500
	tComBineServerReward_Reward[3312824][6]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][6]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][6]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】大爆丹
	tComBineServerReward_Reward[3312824][6]["RewardItem"][1]["Attr"] = "0 5 3" -- SeniorTrainingPill（赠）*5
	tComBineServerReward_Reward[3312824][6]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 500气力值 - 20.0%
	tComBineServerReward_Reward[3312824][7] = {}
	tComBineServerReward_Reward[3312824][7]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][7]["ItemChance"] = 2000
	tComBineServerReward_Reward[3312824][7]["RewardStrengthValue"] = {}
	tComBineServerReward_Reward[3312824][7]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tComBineServerReward_Reward[3312824][7]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][7]["RewardEffect"]["Effect"] = "angelwing"
	-- EndeavorScroll（日常任务重置符） - 9.0%
	tComBineServerReward_Reward[3312824][8] = {}
	tComBineServerReward_Reward[3312824][8]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][8]["ItemChance"] = 900
	tComBineServerReward_Reward[3312824][8]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][8]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][8]["RewardItem"][1]["Id"] = 3001407 -- 【库】 3001407 EndeavorScroll[属性:0], 【表格】EndeavorScroll（日常任务重置符）
	tComBineServerReward_Reward[3312824][8]["RewardItem"][1]["Attr"] = "0 1 3" --  3001407 EndeavorScroll（赠）*1
	tComBineServerReward_Reward[3312824][8]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 5.0%
	tComBineServerReward_Reward[3312824][9] = {}
	tComBineServerReward_Reward[3312824][9]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][9]["ItemChance"] = 500
	tComBineServerReward_Reward[3312824][9]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][9]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][9]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tComBineServerReward_Reward[3312824][9]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tComBineServerReward_Reward[3312824][9]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠品黄色神纹精粹*10 - 5.0%
	tComBineServerReward_Reward[3312824][10] = {}
	tComBineServerReward_Reward[3312824][10]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][10]["ItemChance"] = 500
	tComBineServerReward_Reward[3312824][10]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][10]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][10]["RewardItem"][1]["Id"] = 4050001 -- 【库】YellowRuneEssence[属性:9], 【表格】赠品黄色神纹精粹*10
	tComBineServerReward_Reward[3312824][10]["RewardItem"][1]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*1
	tComBineServerReward_Reward[3312824][10]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠赠 - 5.0%
	tComBineServerReward_Reward[3312824][11] = {}
	tComBineServerReward_Reward[3312824][11]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][11]["ItemChance"] = 500
	tComBineServerReward_Reward[3312824][11]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][11]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][11]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】龙珠赠
	tComBineServerReward_Reward[3312824][11]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tComBineServerReward_Reward[3312824][11]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+4赠 - 1.0%
	tComBineServerReward_Reward[3312824][12] = {}
	tComBineServerReward_Reward[3312824][12]["RandomItemChanceType"] = 2
	tComBineServerReward_Reward[3312824][12]["ItemChance"] = 100
	tComBineServerReward_Reward[3312824][12]["RewardItem"] = {}
	tComBineServerReward_Reward[3312824][12]["RewardItem"][1] = {}
	tComBineServerReward_Reward[3312824][12]["RewardItem"][1]["Id"] = 730004 -- 【库】+4Stone[属性:0], 【表格】赤练石+4赠
	tComBineServerReward_Reward[3312824][12]["RewardItem"][1]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tComBineServerReward_Reward[3312824][12]["RewardEffect"] = {}
	tComBineServerReward_Reward[3312824][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tComBineServerReward_Reward[3312824][12]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------

function CombineServerReward_GetPack(nItemId, nNpcId)
    local nUserId = Get_UserId()
    local nLevel = tComBineServerReward_Data["Level"]
    local nMete = tComBineServerReward_Data["Mete"]
    local nUserVip = Get_UserVip(nUserId)--玩家VIP等级
    local tReward = CommonFunc_Copy(tComBineServerReward_Reward["Pack"][nItemId])
    local nEvent = tComBineServerReward_Stc["GetPack"]["Event"]
    local nData = tComBineServerReward_Stc["GetPack"]["Data"]
    if (Get_UserStatisticValue(nEvent, nData, nUserId) ~= 0) then
        LinkNpcGossipFunc_New(nNpcId, "2-2")
        return
    end
    --等级不足
    if not User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId) then
        return
    end
    --vip等级
    if nUserVip < tComBineServerReward_Data["NeedVip"][nItemId] then
        -- local sText = string.format(tComBineServerReward_Text["Talk"]["NotVIP"], tComBineServerReward_Data["NeedVip"][nItemId])
		-- User_TalkChannel2005(sText, nUserId)
		LinkNpcGossipFunc_New(nNpcId, "2-3")
        return
	end
	-- 背包空间判断
	if not RewardTemplate_UpperLimit(tReward, nUserId) then
		User_TalkChannel2005(tComBineServerReward_Text["Talk"]["NoSpace"], nUserId)
		return
	end
	-- 打掩码
	Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
	Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
    RewardTemplate_UseItemAndMsg(tReward, nUserId)

end

function CombineServerReward_OpenPack(nItemId)
    local nUserId = Get_UserId()
    local nEvent = tComBineServerReward_Stc["OpenPack"]["Event"]
    local nData = tComBineServerReward_Stc["OpenPack"]["Data"]
    --隔天清掩码
    if Task_StcInterval(nEvent, nData, 1, 4, nUserId) then
        Task_SetStatistic(nEvent, nData, 0, 1, nUserId)
    end
    --今日已开启
    if (Get_UserStatisticValue(nEvent, nData, nUserId) ~= 0) then
        User_TalkChannel2005(tComBineServerReward_Text["Talk"]["Opened"], nUserId)
        return
    end
    local nNeedSpace = RewardTemplate_GetRandomSpace(tComBineServerReward_Reward, nItemId, nUserId)
    --背包空间不足
    if not User_CheckLeftSpace(nNeedSpace, nUserId) then
        User_TalkChannel2005(tComBineServerReward_Text["Talk"]["PackNoSpace"], nUserId)
        return
    end
    --记掩码
    Task_SetStatistic(nEvent, nData, 1, 1, nUserId)
    Task_SetStcTimestamp(nEvent, nData, 0, nUserId)
    RewardTemplate_NewRandom(tComBineServerReward_Reward, nItemId, nUserId)

end






----------------------------------NPC部分---------------------------------------------

--福利大使 24308
tNpcFace[5703] = 134
tNpcGossip[24308]= tNpcGossip[24308] or DefaultNpc:new{}
tNpcGossip[24308]["OptionHidden"] = 1
tNpcGossip[24308]["DialogueText"] = tComBineServerReward_Text[24308]
--活动前 1-1
tNpcGossip[24308]["Text1-1"] = {111, 112, 113, 114, 115, 116, 117, 118}
tNpcGossip[24308]["tOption1-1"] = {111}
tNpcGossip[24308]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ComBineServerReward"]["ActTime"])
end
--活动后 1-2
tNpcGossip[24308]["Text1-2"] = {121}
tNpcGossip[24308]["tOption1-2"] = {121}
tNpcGossip[24308]["ChkFunc1-2"] = function()
    return CommonFunc_GetAfterActivityTime(tActivityTime["ComBineServerReward"]["ActTime"])
end
--活动中等级未达到 1-3
tNpcGossip[24308]["Text1-3"] = {131, 132, 133, 134, 135, 136, 137}
tNpcGossip[24308]["tOption1-3"] = {131}
tNpcGossip[24308]["ChkFunc1-3"] = function()
    local nUserId = Get_UserId()
    local nLevel = tComBineServerReward_Data["Level"]
    local nMete = tComBineServerReward_Data["Mete"]
    return (Sys_ChkFullTime(tActivityTime["ComBineServerReward"]["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId)))
end
--活动中等级达到 1-4
tNpcGossip[24308]["Text1-4"] = {141, 142, 143, 144, 145, 146, 147}
tNpcGossip[24308]["tOption1-4"] = {141, 142}
tNpcGossip[24308]["OptionPoint141"] = "2-1"--领取合服大礼包
tNpcGossip[24308]["OptionFunc142"] = "CombineServerReward_GetPack</N>3312824</N>24308"--领取合服至尊大礼包
tNpcGossip[24308]["ChkFunc1-4"] = function()
    local nUserId = Get_UserId()
    local nLevel = tComBineServerReward_Data["Level"]
    local nMete = tComBineServerReward_Data["Mete"]
    return (Sys_ChkFullTime(tActivityTime["ComBineServerReward"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId))
end
--领取合服大礼包 2-1
tNpcGossip[24308]["Text2-1"] = {211, 212, 213}
tNpcGossip[24308]["tOption2-1"] = {211, 212}
tNpcGossip[24308]["OptionFunc211"] = "CombineServerReward_GetPack</N>3312823</N>24308"--领取合服大礼包
tNpcGossip[24308]["OptionPoint212"] = "1-4"
tNpcGossip[24308]["ChkFunc2-1"] = function()
    local nUserId = Get_UserId()
    local nLevel = tComBineServerReward_Data["Level"]
    local nMete = tComBineServerReward_Data["Mete"]
    return (Sys_ChkFullTime(tActivityTime["ComBineServerReward"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId))
end
--已经领取过礼包 2-2
tNpcGossip[24308]["Text2-2"] = {221}
tNpcGossip[24308]["tOption2-2"] = {221}
tNpcGossip[24308]["ChkFunc2-2"] = function()
    local nUserId = Get_UserId()
    local nLevel = tComBineServerReward_Data["Level"]
    local nMete = tComBineServerReward_Data["Mete"]
    return (Sys_ChkFullTime(tActivityTime["ComBineServerReward"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId))
end
--VIP等级不足 2-3
tNpcGossip[24308]["Text2-3"] = {231}
tNpcGossip[24308]["tOption2-3"] = {231}
tNpcGossip[24308]["ChkFunc2-3"] = function()
    local nUserId = Get_UserId()
    local nLevel = tComBineServerReward_Data["Level"]
	local nMete = tComBineServerReward_Data["Mete"]
	local nUserVip = Get_UserVip(nUserId)
	if nUserVip < tComBineServerReward_Data["NeedVip"][3312824] then
		local sText = string.format(tComBineServerReward_Text[24308]["Text231"], tComBineServerReward_Data["NeedVip"][3312824])
		tNpcGossip[24308]["Text231"] = sText
	end
    return (Sys_ChkFullTime(tActivityTime["ComBineServerReward"]["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel, nMete, nUserId))
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3312823] = tItem[3312823] or {}
tItem[3312823]["Function"] = function(nItemId,sItemName)
    CombineServerReward_OpenPack(nItemId)
end
tItem[3312824] = tItem[3312823] or {}