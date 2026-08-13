------------------------------------------------------------------------------------
--Name：            200309[英文征服][活动脚本]4月精准营销（4.9-4.30）
--Creator:      林嘉鑫
--Created:     2020-03-09
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tAprPrecisionPush_Data = {}
	tAprPrecisionPush_Data[3330276] = {4031401,4031501,4031601,4032001,4032101,4032201,4032301,4032401,4032501,4032601,4032701,4032801,4032901,4033001,4033301,4033401,4033901,4034001,4034101,4034201,4034301,4034401,4034501,4034601,4034701,4034801,4035101,4035201}
	
	tAprPrecisionPush_Data["Emoney"] = {}
	tAprPrecisionPush_Data["Emoney"][3330279] = 99
	tAprPrecisionPush_Data["Emoney"][3330280] = 999
	tAprPrecisionPush_Data["MaxMonoEmoney"] = {}
	tAprPrecisionPush_Data["MaxMonoEmoney"][3330279] = 10000
	tAprPrecisionPush_Data["MaxMonoEmoney"][3330280] = 20000

local tAprPrecisionPush_Pack = {}
	-- ===稀有黄色神纹可选包
	-- ===索引: tAprPrecisionPush_Pack[3330276]
	-- ===删除: 3330276,1
	tAprPrecisionPush_Pack[3330276] = {}
	tAprPrecisionPush_Pack[3330276]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330276]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330276]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330276]["DeleteItem"][1]["Id"] = 3330276 -- 【库】RareYellowRuneSelectionPack[属性:9]
	tAprPrecisionPush_Pack[3330276]["RewardItem"] = {}
	tAprPrecisionPush_Pack[3330276]["RewardItem"][1] = {}
	tAprPrecisionPush_Pack[3330276]["RewardItem"][1]["Id"] = 4031401 -- QuickMount(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭
	tAprPrecisionPush_Pack[3330276]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+1)（赠）*1
	tAprPrecisionPush_Pack[3330276]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330276]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330276]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赠点随机包A
	-- ===索引: tAprPrecisionPush_Pack[3330495]
	-- ===删除: 3330495,1
	tAprPrecisionPush_Pack[3330495] = {}
	tAprPrecisionPush_Pack[3330495]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330495]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330495]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330495]["DeleteItem"][1]["Id"] = 3330495
	tAprPrecisionPush_Pack[3330495]["RewardItem"] = {}
	tAprPrecisionPush_Pack[3330495]["RewardItem"][1] = {}
	tAprPrecisionPush_Pack[3330495]["RewardItem"][1]["Id"] = 3330279
	tAprPrecisionPush_Pack[3330495]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tAprPrecisionPush_Pack[3330495]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330495]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330495]["RewardEffect"]["Effect"] = "angelwing"
	

	-- ===赠点随机包B
	-- ===索引: tAprPrecisionPush_Pack[3330496]
	-- ===删除: 3330496,1
	tAprPrecisionPush_Pack[3330496] = {}
	tAprPrecisionPush_Pack[3330496]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330496]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330496]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330496]["DeleteItem"][1]["Id"] = 3330496
	tAprPrecisionPush_Pack[3330496]["RewardItem"] = {}
	tAprPrecisionPush_Pack[3330496]["RewardItem"][1] = {}
	tAprPrecisionPush_Pack[3330496]["RewardItem"][1]["Id"] = 3330280
	tAprPrecisionPush_Pack[3330496]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
	tAprPrecisionPush_Pack[3330496]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330496]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330496]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tAprPrecisionPush_Pack[3330279] = {}
	-- ===赠点随机包A
	-- ===索引: tAprPrecisionPush_Pack[3330279]
	-- ===NewEMoneyLog:1000,197
	tAprPrecisionPush_Pack[3330279]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAprPrecisionPush_Pack[3330279]["LogId"] = 12001908
	-- 300赠品天石 - 19.5%
	tAprPrecisionPush_Pack[3330279][1] = {}
	tAprPrecisionPush_Pack[3330279][1]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][1]["ItemChance"] = 1950
	tAprPrecisionPush_Pack[3330279][1]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][1]["RewardEMoneyMono"]["Value"] = 300 -- 赠点, 【需求】300赠品天石
	tAprPrecisionPush_Pack[3330279][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][1]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 400赠品天石 - 32%
	tAprPrecisionPush_Pack[3330279][2] = {}
	tAprPrecisionPush_Pack[3330279][2]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][2]["ItemChance"] = 3200
	tAprPrecisionPush_Pack[3330279][2]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][2]["RewardEMoneyMono"]["Value"] = 400 -- 赠点, 【需求】400赠品天石
	tAprPrecisionPush_Pack[3330279][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][2]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 500赠品天石 - 34%
	tAprPrecisionPush_Pack[3330279][3] = {}
	tAprPrecisionPush_Pack[3330279][3]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][3]["ItemChance"] = 3400
	tAprPrecisionPush_Pack[3330279][3]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][3]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】500赠品天石
	tAprPrecisionPush_Pack[3330279][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][3]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 800赠品天石 - 12%
	tAprPrecisionPush_Pack[3330279][4] = {}
	tAprPrecisionPush_Pack[3330279][4]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][4]["ItemChance"] = 1200
	tAprPrecisionPush_Pack[3330279][4]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][4]["RewardEMoneyMono"]["Value"] = 800 -- 赠点, 【需求】800赠品天石
	tAprPrecisionPush_Pack[3330279][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][4]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000赠品天石 - 2%
	tAprPrecisionPush_Pack[3330279][5] = {}
	tAprPrecisionPush_Pack[3330279][5]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][5]["ItemChance"] = 200
	tAprPrecisionPush_Pack[3330279][5]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][5]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点, 【需求】1000赠品天石
	tAprPrecisionPush_Pack[3330279][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][5]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000赠品天石 - 0.5%
	tAprPrecisionPush_Pack[3330279][6] = {}
	tAprPrecisionPush_Pack[3330279][6]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][6]["ItemChance"] = 50
	tAprPrecisionPush_Pack[3330279][6]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][6]["RewardEMoneyMono"]["Value"] = 2000 -- 赠点, 【需求】2000赠品天石
	tAprPrecisionPush_Pack[3330279][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][6]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000赠品天石 - 0%
	tAprPrecisionPush_Pack[3330279][7] = {}
	tAprPrecisionPush_Pack[3330279][7]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][7]["ItemChance"] = 0
	tAprPrecisionPush_Pack[3330279][7]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][7]["RewardEMoneyMono"]["Value"] = 5000 -- 赠点, 【需求】5000赠品天石
	tAprPrecisionPush_Pack[3330279][7]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][7]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000赠品天石 - 0%
	tAprPrecisionPush_Pack[3330279][8] = {}
	tAprPrecisionPush_Pack[3330279][8]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330279][8]["ItemChance"] = 0
	tAprPrecisionPush_Pack[3330279][8]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330279][8]["RewardEMoneyMono"]["Value"] = 10000 -- 赠点, 【需求】10000赠品天石
	tAprPrecisionPush_Pack[3330279][8]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1674"
	tAprPrecisionPush_Pack[3330279][8]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330279][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330279][8]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330280] = {}
	-- ===赠点随机包B
	-- ===索引: tAprPrecisionPush_Pack[3330280][1]
	-- ===NewEMoneyLog:1000,197
	tAprPrecisionPush_Pack[3330280][1] = {}
	tAprPrecisionPush_Pack[3330280][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAprPrecisionPush_Pack[3330280][1]["LogId"] = 12001908
	-- 4000赠品天石 - 20%
	tAprPrecisionPush_Pack[3330280][1][1] = {}
	tAprPrecisionPush_Pack[3330280][1][1]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][1]["ItemChance"] = 2000
	tAprPrecisionPush_Pack[3330280][1][1]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][1]["RewardEMoneyMono"]["Value"] = 4000 -- 赠点, 【需求】4000赠品天石
	tAprPrecisionPush_Pack[3330280][1][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][1]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000赠品天石 - 30%
	tAprPrecisionPush_Pack[3330280][1][2] = {}
	tAprPrecisionPush_Pack[3330280][1][2]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][2]["ItemChance"] = 3000
	tAprPrecisionPush_Pack[3330280][1][2]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][2]["RewardEMoneyMono"]["Value"] = 5000 -- 赠点, 【需求】5000赠品天石
	tAprPrecisionPush_Pack[3330280][1][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][2]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 6000赠品天石 - 25%
	tAprPrecisionPush_Pack[3330280][1][3] = {}
	tAprPrecisionPush_Pack[3330280][1][3]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][3]["ItemChance"] = 2500
	tAprPrecisionPush_Pack[3330280][1][3]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][3]["RewardEMoneyMono"]["Value"] = 6000 -- 赠点, 【需求】6000赠品天石
	tAprPrecisionPush_Pack[3330280][1][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][3]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 7000赠品天石 - 11%
	tAprPrecisionPush_Pack[3330280][1][4] = {}
	tAprPrecisionPush_Pack[3330280][1][4]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][4]["ItemChance"] = 1100
	tAprPrecisionPush_Pack[3330280][1][4]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][4]["RewardEMoneyMono"]["Value"] = 7000 -- 赠点, 【需求】7000赠品天石
	tAprPrecisionPush_Pack[3330280][1][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][4]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 8000赠品天石 - 9%
	tAprPrecisionPush_Pack[3330280][1][5] = {}
	tAprPrecisionPush_Pack[3330280][1][5]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][5]["ItemChance"] = 900
	tAprPrecisionPush_Pack[3330280][1][5]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][5]["RewardEMoneyMono"]["Value"] = 8000 -- 赠点, 【需求】8000赠品天石
	tAprPrecisionPush_Pack[3330280][1][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][5]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 9000赠品天石 - 3%
	tAprPrecisionPush_Pack[3330280][1][6] = {}
	tAprPrecisionPush_Pack[3330280][1][6]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][6]["ItemChance"] = 300
	tAprPrecisionPush_Pack[3330280][1][6]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][6]["RewardEMoneyMono"]["Value"] = 9000 -- 赠点, 【需求】9000赠品天石
	tAprPrecisionPush_Pack[3330280][1][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][6]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000赠品天石 - 1.5%
	tAprPrecisionPush_Pack[3330280][1][7] = {}
	tAprPrecisionPush_Pack[3330280][1][7]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][7]["ItemChance"] = 150
	tAprPrecisionPush_Pack[3330280][1][7]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][7]["RewardEMoneyMono"]["Value"] = 10000 -- 赠点, 【需求】10000赠品天石
	tAprPrecisionPush_Pack[3330280][1][7]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][7]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 200000赠品天石 - 0.5%
	tAprPrecisionPush_Pack[3330280][1][8] = {}
	tAprPrecisionPush_Pack[3330280][1][8]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][1][8]["ItemChance"] = 50
	tAprPrecisionPush_Pack[3330280][1][8]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][1][8]["RewardEMoneyMono"]["Value"] = 20000 -- 赠点, 【需求】20000赠品天石
	tAprPrecisionPush_Pack[3330280][1][8]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][1][8]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][1][8]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===赠点随机包B（期间限定）
	-- ===索引: tAprPrecisionPush_Pack[3330280][2]
	-- ===NewEMoneyLog:1000,197
	tAprPrecisionPush_Pack[3330280][2] = {}
	tAprPrecisionPush_Pack[3330280][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAprPrecisionPush_Pack[3330280][2]["LogId"] = 12001908
	-- 4000赠品天石 - 20%
	tAprPrecisionPush_Pack[3330280][2][1] = {}
	tAprPrecisionPush_Pack[3330280][2][1]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][1]["ItemChance"] = 2000
	tAprPrecisionPush_Pack[3330280][2][1]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][1]["RewardEMoneyMono"]["Value"] = 4000 -- 赠点, 【需求】4000赠品天石
	tAprPrecisionPush_Pack[3330280][2][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][1]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000赠品天石 - 30%
	tAprPrecisionPush_Pack[3330280][2][2] = {}
	tAprPrecisionPush_Pack[3330280][2][2]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][2]["ItemChance"] = 3000
	tAprPrecisionPush_Pack[3330280][2][2]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][2]["RewardEMoneyMono"]["Value"] = 5000 -- 赠点, 【需求】5000赠品天石
	tAprPrecisionPush_Pack[3330280][2][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][2]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 6000赠品天石 - 25%
	tAprPrecisionPush_Pack[3330280][2][3] = {}
	tAprPrecisionPush_Pack[3330280][2][3]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][3]["ItemChance"] = 2500
	tAprPrecisionPush_Pack[3330280][2][3]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][3]["RewardEMoneyMono"]["Value"] = 6000 -- 赠点, 【需求】6000赠品天石
	tAprPrecisionPush_Pack[3330280][2][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][3]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 7000赠品天石 - 11%
	tAprPrecisionPush_Pack[3330280][2][4] = {}
	tAprPrecisionPush_Pack[3330280][2][4]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][4]["ItemChance"] = 1100
	tAprPrecisionPush_Pack[3330280][2][4]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][4]["RewardEMoneyMono"]["Value"] = 7000 -- 赠点, 【需求】7000赠品天石
	tAprPrecisionPush_Pack[3330280][2][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][4]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 8000赠品天石 - 9%
	tAprPrecisionPush_Pack[3330280][2][5] = {}
	tAprPrecisionPush_Pack[3330280][2][5]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][5]["ItemChance"] = 900
	tAprPrecisionPush_Pack[3330280][2][5]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][5]["RewardEMoneyMono"]["Value"] = 8000 -- 赠点, 【需求】8000赠品天石
	tAprPrecisionPush_Pack[3330280][2][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][5]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 9000赠品天石 - 3%
	tAprPrecisionPush_Pack[3330280][2][6] = {}
	tAprPrecisionPush_Pack[3330280][2][6]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][6]["ItemChance"] = 300
	tAprPrecisionPush_Pack[3330280][2][6]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][6]["RewardEMoneyMono"]["Value"] = 9000 -- 赠点, 【需求】9000赠品天石
	tAprPrecisionPush_Pack[3330280][2][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][6]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000赠品天石 - 1.5%
	tAprPrecisionPush_Pack[3330280][2][7] = {}
	tAprPrecisionPush_Pack[3330280][2][7]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][7]["ItemChance"] = 150
	tAprPrecisionPush_Pack[3330280][2][7]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][7]["RewardEMoneyMono"]["Value"] = 10000 -- 赠点, 【需求】10000赠品天石
	tAprPrecisionPush_Pack[3330280][2][7]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][7]["GlobalId"] = 54384
	tAprPrecisionPush_Pack[3330280][2][7]["MaxData"] = 10
	tAprPrecisionPush_Pack[3330280][2][7]["FullIndex"] = 3
	tAprPrecisionPush_Pack[3330280][2][7]["Pos"] = 1
	tAprPrecisionPush_Pack[3330280][2][7]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 200000赠品天石 - 0.5%
	tAprPrecisionPush_Pack[3330280][2][8] = {}
	tAprPrecisionPush_Pack[3330280][2][8]["RandomItemChanceType"] = 2
	tAprPrecisionPush_Pack[3330280][2][8]["ItemChance"] = 50
	tAprPrecisionPush_Pack[3330280][2][8]["RewardEMoneyMono"] = {}
	tAprPrecisionPush_Pack[3330280][2][8]["RewardEMoneyMono"]["Value"] = 20000 -- 赠点, 【需求】20000赠品天石
	tAprPrecisionPush_Pack[3330280][2][8]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1675"
	tAprPrecisionPush_Pack[3330280][2][8]["GlobalId"] = 54384
	tAprPrecisionPush_Pack[3330280][2][8]["MaxData"] = 10
	tAprPrecisionPush_Pack[3330280][2][8]["FullIndex"] = 3
	tAprPrecisionPush_Pack[3330280][2][8]["Pos"] = 2
	tAprPrecisionPush_Pack[3330280][2][8]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330280][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330280][2][8]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330281] = {}
	-- ===金币超值包A
	-- ===索引: tAprPrecisionPush_Pack[3330281]
	-- ===删除: 3330281,1
	tAprPrecisionPush_Pack[3330281]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330281]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330281]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330281]["DeleteItem"][1]["Id"] = 3330281 -- 【库】BasicSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330281]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330281]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10W金币礼包
	tAprPrecisionPush_Pack[3330281]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330281]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330281]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330282] = {}
	-- ===金币超值B
	-- ===索引: tAprPrecisionPush_Pack[3330282]
	-- ===删除: 3330282,1
	tAprPrecisionPush_Pack[3330282]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330282]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330282]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330282]["DeleteItem"][1]["Id"] = 3330282 -- 【库】SeniorSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330282]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330282]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】100W金币礼包
	tAprPrecisionPush_Pack[3330282]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330282]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330282]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330283] = {}
	-- ===金币超值包C
	-- ===索引: tAprPrecisionPush_Pack[3330283]
	-- ===删除: 3330283,1
	tAprPrecisionPush_Pack[3330283]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330283]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330283]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330283]["DeleteItem"][1]["Id"] = 3330283 -- 【库】AdvancedSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330283]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330283]["RewardMoney"]["Value"] = 5000000 -- 金币, 【需求】500W金币礼包
	tAprPrecisionPush_Pack[3330283]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330283]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330283]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330284] = {}
	-- ===金币超值包D
	-- ===索引: tAprPrecisionPush_Pack[3330284]
	-- ===删除: 3330284,1
	tAprPrecisionPush_Pack[3330284]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330284]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330284]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330284]["DeleteItem"][1]["Id"] = 3330284 -- 【库】ValuableSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330284]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330284]["RewardMoney"]["Value"] = 10000000 -- 金币, 【需求】1000W金币礼包
	tAprPrecisionPush_Pack[3330284]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330284]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330284]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330285] = {}
	-- ===金币超值包E
	-- ===索引: tAprPrecisionPush_Pack[3330285]
	-- ===删除: 3330285,1
	tAprPrecisionPush_Pack[3330285]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330285]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330285]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330285]["DeleteItem"][1]["Id"] = 3330285 -- 【库】GrandSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330285]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330285]["RewardMoney"]["Value"] = 100000000 -- 金币, 【需求】1亿金币礼包
	tAprPrecisionPush_Pack[3330285]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330285]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330285]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330286] = {}
	-- ===金币免费包A
	-- ===索引: tAprPrecisionPush_Pack[3330286]
	-- ===删除: 3330286,1
	tAprPrecisionPush_Pack[3330286]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330286]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330286]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330286]["DeleteItem"][1]["Id"] = 3330286 -- 【库】100KSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330286]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330286]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10W金币礼包
	tAprPrecisionPush_Pack[3330286]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330286]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330286]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330287] = {}
	-- ===金币免费包B
	-- ===索引: tAprPrecisionPush_Pack[3330287]
	-- ===删除: 3330287,1
	tAprPrecisionPush_Pack[3330287]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330287]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330287]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330287]["DeleteItem"][1]["Id"] = 3330287 -- 【库】1KKSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330287]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330287]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】100W金币礼包
	tAprPrecisionPush_Pack[3330287]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330287]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330287]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330288] = {}
	-- ===金币免费包C
	-- ===索引: tAprPrecisionPush_Pack[3330288]
	-- ===删除: 3330288,1
	tAprPrecisionPush_Pack[3330288]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330288]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330288]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330288]["DeleteItem"][1]["Id"] = 3330288 -- 【库】5KKSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330288]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330288]["RewardMoney"]["Value"] = 5000000 -- 金币, 【需求】500W金币礼包
	tAprPrecisionPush_Pack[3330288]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330288]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330288]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330289] = {}
	-- ===金币免费包D
	-- ===索引: tAprPrecisionPush_Pack[3330289]
	-- ===删除: 3330289,1
	tAprPrecisionPush_Pack[3330289]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330289]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330289]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330289]["DeleteItem"][1]["Id"] = 3330289 -- 【库】10KKSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330289]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330289]["RewardMoney"]["Value"] = 10000000 -- 金币, 【需求】1000W金币礼包
	tAprPrecisionPush_Pack[3330289]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330289]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330289]["RewardEffect"]["Effect"] = "angelwing"


	tAprPrecisionPush_Pack[3330290] = {}
	-- ===金币免费包E
	-- ===索引: tAprPrecisionPush_Pack[3330290]
	-- ===删除: 3330290,1
	tAprPrecisionPush_Pack[3330290]["LogId"] = 12001908
	tAprPrecisionPush_Pack[3330290]["DeleteItem"] = {}
	tAprPrecisionPush_Pack[3330290]["DeleteItem"][1] = {}
	tAprPrecisionPush_Pack[3330290]["DeleteItem"][1]["Id"] = 3330290 -- 【库】100KKSilverPack[属性:9]
	tAprPrecisionPush_Pack[3330290]["RewardMoney"] = {}
	tAprPrecisionPush_Pack[3330290]["RewardMoney"]["Value"] = 100000000 -- 金币, 【需求】1亿金币礼包
	tAprPrecisionPush_Pack[3330290]["RewardEffect"] = {}
	tAprPrecisionPush_Pack[3330290]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAprPrecisionPush_Pack[3330290]["RewardEffect"]["Effect"] = "angelwing"

local tAprPrecisionPush_Stc = {}
	-- 礼包打开次数
	tAprPrecisionPush_Stc[3330279] = {}
	tAprPrecisionPush_Stc[3330279]["EventType"] = 217
	tAprPrecisionPush_Stc[3330279]["DataType"] = 52
	tAprPrecisionPush_Stc[3330279]["LimitData"] = 50
	tAprPrecisionPush_Stc[3330280] = {}
	tAprPrecisionPush_Stc[3330280]["EventType"] = 217
	tAprPrecisionPush_Stc[3330280]["DataType"] = 53
	tAprPrecisionPush_Stc[3330280]["LimitData"] = 20

local tAprPrecisionPush_Log = {}
	tAprPrecisionPush_Log[3330276] = "350	23100	28999	28999	1	"
	tAprPrecisionPush_Log[3330277] = "350	23101	550	550	1	"
	tAprPrecisionPush_Log[3330278] = "350	23102	599	599	1	"
	tAprPrecisionPush_Log[3330279] = "350	23103	99	99	1	"
	tAprPrecisionPush_Log[3330280] = "350	23104	999	999	1	"
	tAprPrecisionPush_Log[3330281] = "350	23105	1	1	1	"
	tAprPrecisionPush_Log[3330282] = "350	23106	9	9	1	"
	tAprPrecisionPush_Log[3330283] = "350	23107	45	45	1	"
	tAprPrecisionPush_Log[3330284] = "350	23108	89	89	1	"
	tAprPrecisionPush_Log[3330285] = "350	23109	850	850	1	"
	tAprPrecisionPush_Log[3330286] = "350	23110	1	1	1	"
	tAprPrecisionPush_Log[3330287] = "350	23111	1	1	1	"
	tAprPrecisionPush_Log[3330288] = "350	23112	1	1	1	"
	tAprPrecisionPush_Log[3330289] = "350	23113	1	1	1	"
	tAprPrecisionPush_Log[3330290] = "350	23114	1	1	1	"
	-- 删除礼包log
	tAprPrecisionPush_Log["DelItem"] = "0,0,%d,%d,12001908,2,0,0"


----------------------------------逻辑部分---------------------------------------------
-- 选择神纹
function AprPrecisionPush_Choose(nItemId,nChoose)
	local sItemName = Get_ItemtypeName(tAprPrecisionPush_Data[nItemId][nChoose])
	tItem[nItemId]["Text211"] = string.format(tAprPrecisionPush_Text[nItemId]["Text211"],sItemName)
	tItem[nItemId]["OptionFunc211"] = "AprPrecisionPush_OpenChoosePack</N>"..nItemId.."</N>"..nChoose
	tItem[nItemId]["OptionPoint212"] = "1-1"
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 打开礼包
function AprPrecisionPush_OpenChoosePack(nItemId,nChoose)
	if not Item_ChkItem(nItemId) then
		return
	end
	local tAward = CommonFunc_Copy(tAprPrecisionPush_Pack[nItemId])
	tAward["RewardItem"][1]["Id"] = tAprPrecisionPush_Data[nItemId][nChoose]
	if RewardTemplate_UseItemAndMsg(tAward) then
		local sEmoneyLog = tAprPrecisionPush_Log[nItemId]
		Sys_SaveEmoneyBuy(sEmoneyLog)
	end
end

-- 二次确认
function AprPrecisionPush_MakeSure(nItemId)
	tItem[nItemId]["OptionFunc211"] = "AprPrecisionPush_OpenCpPack</N>"..nItemId
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 打开天石礼包
function AprPrecisionPush_OpenCpPack(nItemId)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tAprPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tAprPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	-- 超出上限未删除时重置并删除
	if nData >= tAprPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tAprPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	local nEmoney = tAprPrecisionPush_Data["Emoney"][nItemId]
	local nMaxMonoEmoney = tAprPrecisionPush_Data["MaxMonoEmoney"][nItemId]
	-- 判断天石数
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tAprPrecisionPush_Text["Msg"]["NoEMoney"])
		return
	end
	if nMaxMonoEmoney + Get_UserMonoEMoney() > G_User_MaxEmoneyMono then
		Sys_MsgBox(tAprPrecisionPush_Text["Msg"]["OverEMoney"])
		return
	end
	if User_AddEMoney(-nEmoney) then
		Task_AddStatistic(nEvent,nType,1,1)
		if nItemId == 3330280 then
			if Sys_ChkFullTime(tActivityTime["AprPrecisionPush"]["ActivityTime"]) then
				RewardTemplate_RandomReward(tAprPrecisionPush_Pack[nItemId],2)
			else
				RewardTemplate_RandomReward(tAprPrecisionPush_Pack[nItemId],1)
			end
		else
			RewardTemplate_RandomReward(tAprPrecisionPush_Pack,nItemId)
		end
		local sEmoneyLog = tAprPrecisionPush_Log[nItemId]
		Sys_SaveEmoneyBuy(sEmoneyLog)
		-- 最后一次重置并删除
		if Get_UserStatisticValue(nEvent,nType) >= tAprPrecisionPush_Stc[nItemId]["LimitData"] then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_SetStatistic(nEvent,nType,0,1)
				-- 删除礼包log
				local sDelPackLog = string.format(tAprPrecisionPush_Log["DelItem"],nItemId,1)
				Sys_SaveActionFestivalLog(sDelPackLog)
			end
		end
	end
end
---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3330281] = tItem[3330281] or {}
tItem[3330281]["Function"] = function(nItemId,sItemName)
	if RewardTemplate_UseItemAndMsg(tAprPrecisionPush_Pack[nItemId]) then
		local sEmoneyLog = tAprPrecisionPush_Log[nItemId]
		Sys_SaveEmoneyBuy(sEmoneyLog)
	end
end
tItem[3330282] = tItem[3330281]
tItem[3330283] = tItem[3330281]
tItem[3330284] = tItem[3330281]
tItem[3330285] = tItem[3330281]
tItem[3330286] = tItem[3330281]
tItem[3330287] = tItem[3330281]
tItem[3330288] = tItem[3330281]
tItem[3330289] = tItem[3330281]
tItem[3330290] = tItem[3330281]

--------物品有对白模板
-- 稀有黄色神纹可选包
tItemFace[3330276] = 2498
tItem[3330276] = tItem[3330276] or {}
tItem[3330276]["DialogueText"] = tAprPrecisionPush_Text[3330276]
tItem[3330276]["OptionHidden"] = 1

tItem[3330276]["Text1-1"] = {111}
tItem[3330276]["tOption1-1"] = {111}
tItem[3330276]["Function"] = function(nItemId,sItemName)
	tItem[nItemId]["tOption1-1"] = {}
	for i,v in pairs(tAprPrecisionPush_Data[nItemId]) do
		tItem[nItemId]["Option11"..i] = Get_ItemtypeName(v)
		tItem[nItemId]["OptionFunc11"..i] = "AprPrecisionPush_Choose</N>"..nItemId.."</N>"..i
		table.insert(tItem[nItemId]["tOption1-1"], 11 ..i)
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3330276]["Text2-1"] = {211}
tItem[3330276]["tOption2-1"] = {211,212}
tItem[3330276]["ChkFunc2-1"] = function ()
	return true
end

-- 天石（赠）好运包
tItemFace[3330279] = 2279
tItem[3330279] = tItem[3330279] or {}
tItem[3330279]["DialogueText"] = tAprPrecisionPush_Text[3330279]
tItem[3330279]["OptionHidden"] = 1

tItem[3330279]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3330279]["tOption1-1"] = {111}
tItem[3330279]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local nEvent = tAprPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tAprPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	-- 超出上限未删除时重置并删除
	if nData >= tAprPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tAprPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	tItem[nItemId]["Text114"] = string.format(tAprPrecisionPush_Text[nItemId]["Text114"],tAprPrecisionPush_Stc[nItemId]["LimitData"] - nData)
	tItem[nItemId]["OptionFunc111"] = "AprPrecisionPush_MakeSure</N>"..nItemId
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3330279]["Text2-1"] = {211,212}
tItem[3330279]["tOption2-1"] = {211,212}
tItem[3330279]["ChkFunc2-1"] = function ()
	return true
end

-- 天石（赠）极运包
tItemFace[3330280] = 2277
tItem[3330280] = tItem[3330280] or {}
tItem[3330280]["DialogueText"] = tAprPrecisionPush_Text[3330280]
tItem[3330280]["OptionHidden"] = 1

tItem[3330280]["Text1-1"] = {111,112,113,114,115,116,117}
tItem[3330280]["tOption1-1"] = {111}
tItem[3330280]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local nEvent = tAprPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tAprPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	-- 超出上限未删除时重置并删除
	if nData >= tAprPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tAprPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	tItem[nItemId]["Text114"] = string.format(tAprPrecisionPush_Text[nItemId]["Text114"],tAprPrecisionPush_Stc[nItemId]["LimitData"] - nData)
	tItem[nItemId]["OptionFunc111"] = "AprPrecisionPush_MakeSure</N>"..nItemId
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3330280]["Text2-1"] = {211,212}
tItem[3330280]["tOption2-1"] = {211,212}
tItem[3330280]["ChkFunc2-1"] = function ()
	return true
end

tItem[3330495] = tItem[3330495] or {}
tItem[3330495]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAprPrecisionPush_Pack[nItemId])
end
tItem[3330496] = tItem[3330495]
