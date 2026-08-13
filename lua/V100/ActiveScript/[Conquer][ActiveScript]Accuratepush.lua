------------------------------------------------------------------------------------
--Name：        190619[英文征服][活动脚本]6月精准推送活动
--Creator:      洪聪敏
--Created:     2019-06-19
------------------------------------------------------------------------------------
--命名前缀：Accuratepush_
--luaini：41357
--log：12001473
--STC
--(198,68) 记录玩家打开赤练石惊喜包次数
--(198,69) 记录玩家打开气力惊喜包次数
--(198,70) 记录玩家打开神纹精粹惊喜包次数
------------------------------------------------------------------------------------
local tAccuratepush_EmoneyPrice = {}
	tAccuratepush_EmoneyPrice[3313008] = {}
	tAccuratepush_EmoneyPrice[3313008][1] = 3000
	tAccuratepush_EmoneyPrice[3313008][2] = 2800
	tAccuratepush_EmoneyPrice[3313008][3] = 2600
	tAccuratepush_EmoneyPrice[3313008][4] = 2300
	tAccuratepush_EmoneyPrice[3313008][5] = 2000
	tAccuratepush_EmoneyPrice[3313009] = {}
	tAccuratepush_EmoneyPrice[3313009][1] = 1500
	tAccuratepush_EmoneyPrice[3313009][2] = 1300
	tAccuratepush_EmoneyPrice[3313009][3] = 1100
	tAccuratepush_EmoneyPrice[3313009][4] = 900
	tAccuratepush_EmoneyPrice[3313009][5] = 700
	tAccuratepush_EmoneyPrice[3313010] = {}
	tAccuratepush_EmoneyPrice[3313010][1] = 2800
	tAccuratepush_EmoneyPrice[3313010][2] = 2600
	tAccuratepush_EmoneyPrice[3313010][3] = 2400
	tAccuratepush_EmoneyPrice[3313010][4] = 2200
	tAccuratepush_EmoneyPrice[3313010][5] = 2000
	
	
local tAccuratepush_EmoneyLog = {}
	tAccuratepush_EmoneyLog[3313008] = {}
	tAccuratepush_EmoneyLog[3313008][1] = "350	22387	3000	3000	1	"
	tAccuratepush_EmoneyLog[3313008][2] = "350	22388	2800	2800	1	"
	tAccuratepush_EmoneyLog[3313008][3] = "350	22389	2600	2600	1	"
	tAccuratepush_EmoneyLog[3313008][4] = "350	22390	2300	2300	1	"
	tAccuratepush_EmoneyLog[3313008][5] = "350	22391	2000	2000	1	"
	tAccuratepush_EmoneyLog[3313009] = {}
	tAccuratepush_EmoneyLog[3313009][1] = "350	22392	1500	1500	1	"
	tAccuratepush_EmoneyLog[3313009][2] = "350	22393	1300	1300	1	"
	tAccuratepush_EmoneyLog[3313009][3] = "350	22394	1100	1100	1	"
	tAccuratepush_EmoneyLog[3313009][4] = "350	22395	900	900	1	"
	tAccuratepush_EmoneyLog[3313009][5] = "350	22396	700	700	1	"
	tAccuratepush_EmoneyLog[3313010] = {}
	tAccuratepush_EmoneyLog[3313010][1] = "350	22397	2800	2800	1	"
	tAccuratepush_EmoneyLog[3313010][2] = "350	22398	2600	2600	1	"
	tAccuratepush_EmoneyLog[3313010][3] = "350	22399	2400	2400	1	"
	tAccuratepush_EmoneyLog[3313010][4] = "350	22400	2200	2200	1	"
	tAccuratepush_EmoneyLog[3313010][5] = "350	22401	2000	2000	1	"
	
local tAccuratepush_Stc = {}
	tAccuratepush_Stc[3313008] ={}
	tAccuratepush_Stc[3313008]["Event"] =198
	tAccuratepush_Stc[3313008]["Type"] = 68
	tAccuratepush_Stc[3313009] ={}
	tAccuratepush_Stc[3313009]["Event"] =198
	tAccuratepush_Stc[3313009]["Type"] = 69
	tAccuratepush_Stc[3313010] ={}
	tAccuratepush_Stc[3313010]["Event"] =198
	tAccuratepush_Stc[3313010]["Type"] = 70
------------------------------------------------------------------------------------
local tAccuratepush_Reward = {}
	-- ===赤练石惊喜包第一次打开
	-- ===索引: tAccuratepush_Reward[3313008][1]
	-- ===EMoneyLog: 350 22387
	tAccuratepush_Reward[3313008] = {}
	tAccuratepush_Reward[3313008][1] = {}
	tAccuratepush_Reward[3313008][1]["LogId"] = 12001473
	tAccuratepush_Reward[3313008][1]["RewardItem"] = {}
	tAccuratepush_Reward[3313008][1]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313008][1]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tAccuratepush_Reward[3313008][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tAccuratepush_Reward[3313008][1]["RewardItem"][2] = {}
	tAccuratepush_Reward[3313008][1]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313008][1]["RewardItem"][2]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313008][1]["RewardEffect"] = {}
	tAccuratepush_Reward[3313008][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313008][1]["RewardEffect"]["Effect"] = "angelwing"



	-- ===赤练石惊喜包第二次打开
	-- ===索引: tAccuratepush_Reward[3313008][2]
	-- ===EMoneyLog: 350 22388

	tAccuratepush_Reward[3313008][2] = {}
	tAccuratepush_Reward[3313008][2]["LogId"] = 12001473
	tAccuratepush_Reward[3313008][2]["RewardItem"] = {}
	tAccuratepush_Reward[3313008][2]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313008][2]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tAccuratepush_Reward[3313008][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tAccuratepush_Reward[3313008][2]["RewardItem"][2] = {}
	tAccuratepush_Reward[3313008][2]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313008][2]["RewardItem"][2]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313008][2]["RewardEffect"] = {}
	tAccuratepush_Reward[3313008][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313008][2]["RewardEffect"]["Effect"] = "angelwing"



	-- ===赤练石惊喜包第三次打开
	-- ===索引: tAccuratepush_Reward[3313008][3]
	-- ===EMoneyLog: 350 22389

	tAccuratepush_Reward[3313008][3] = {}
	tAccuratepush_Reward[3313008][3]["LogId"] = 12001473
	tAccuratepush_Reward[3313008][3]["RewardItem"] = {}
	tAccuratepush_Reward[3313008][3]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313008][3]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tAccuratepush_Reward[3313008][3]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tAccuratepush_Reward[3313008][3]["RewardItem"][2] = {}
	tAccuratepush_Reward[3313008][3]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313008][3]["RewardItem"][2]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313008][3]["RewardEffect"] = {}
	tAccuratepush_Reward[3313008][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313008][3]["RewardEffect"]["Effect"] = "angelwing"



	-- ===赤练石惊喜包第四次打开
	-- ===索引: tAccuratepush_Reward[3313008][4]
	-- ===EMoneyLog: 350 22390

	tAccuratepush_Reward[3313008][4] = {}
	tAccuratepush_Reward[3313008][4]["LogId"] = 12001473
	tAccuratepush_Reward[3313008][4]["RewardItem"] = {}
	tAccuratepush_Reward[3313008][4]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313008][4]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tAccuratepush_Reward[3313008][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tAccuratepush_Reward[3313008][4]["RewardItem"][2] = {}
	tAccuratepush_Reward[3313008][4]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313008][4]["RewardItem"][2]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313008][4]["RewardEffect"] = {}
	tAccuratepush_Reward[3313008][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313008][4]["RewardEffect"]["Effect"] = "angelwing"



	-- ===赤练石惊喜包第五次打开
	-- ===删除: 3313008,1
	-- ===索引: tAccuratepush_Reward[3313008][5]
	-- ===EMoneyLog: 350 22391

	tAccuratepush_Reward[3313008][5] = {}
	tAccuratepush_Reward[3313008][5]["LogId"] = 12001473
	tAccuratepush_Reward[3313008][5]["DeleteItem"] = {}
	tAccuratepush_Reward[3313008][5]["DeleteItem"][1] = {}
	tAccuratepush_Reward[3313008][5]["DeleteItem"][1]["Id"] = 3313008 -- 【库】 3313008 【库里没有该物品】[属性:]
	tAccuratepush_Reward[3313008][5]["RewardItem"] = {}
	tAccuratepush_Reward[3313008][5]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313008][5]["RewardItem"][1]["Id"] = 730008 -- 【库】+8Stone[属性:0], 【表格】+8赤炼石
	tAccuratepush_Reward[3313008][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tAccuratepush_Reward[3313008][5]["RewardItem"][2] = {}
	tAccuratepush_Reward[3313008][5]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313008][5]["RewardItem"][2]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313008][5]["RewardEffect"] = {}
	tAccuratepush_Reward[3313008][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313008][5]["RewardEffect"]["Effect"] = "angelwing"



	-- ===气力惊喜包第一次打开
	-- ===索引: tAccuratepush_Reward[3313009][1]
	-- ===EMoneyLog: 350 22392
	tAccuratepush_Reward[3313009] = {}
	tAccuratepush_Reward[3313009][1] = {}
	tAccuratepush_Reward[3313009][1]["LogId"] = 12001473
	tAccuratepush_Reward[3313009][1]["RewardStrengthValue"] = {}
	tAccuratepush_Reward[3313009][1]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tAccuratepush_Reward[3313009][1]["RewardItem"] = {}
	tAccuratepush_Reward[3313009][1]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313009][1]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313009][1]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313009][1]["RewardEffect"] = {}
	tAccuratepush_Reward[3313009][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313009][1]["RewardEffect"]["Effect"] = "angelwing"



	-- ===气力惊喜包第二次打开
	-- ===索引: tAccuratepush_Reward[3313009][2]
	-- ===EMoneyLog: 350 22393

	tAccuratepush_Reward[3313009][2] = {}
	tAccuratepush_Reward[3313009][2]["LogId"] = 12001473
	tAccuratepush_Reward[3313009][2]["RewardStrengthValue"] = {}
	tAccuratepush_Reward[3313009][2]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tAccuratepush_Reward[3313009][2]["RewardItem"] = {}
	tAccuratepush_Reward[3313009][2]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313009][2]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313009][2]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313009][2]["RewardEffect"] = {}
	tAccuratepush_Reward[3313009][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313009][2]["RewardEffect"]["Effect"] = "angelwing"



	-- ===气力惊喜包第三次打开
	-- ===索引: tAccuratepush_Reward[3313009][3]
	-- ===EMoneyLog: 350 22394

	tAccuratepush_Reward[3313009][3] = {}
	tAccuratepush_Reward[3313009][3]["LogId"] = 12001473
	tAccuratepush_Reward[3313009][3]["RewardStrengthValue"] = {}
	tAccuratepush_Reward[3313009][3]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tAccuratepush_Reward[3313009][3]["RewardItem"] = {}
	tAccuratepush_Reward[3313009][3]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313009][3]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313009][3]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313009][3]["RewardEffect"] = {}
	tAccuratepush_Reward[3313009][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313009][3]["RewardEffect"]["Effect"] = "angelwing"



	-- ===气力惊喜包第四次打开
	-- ===索引: tAccuratepush_Reward[3313009][4]
	-- ===EMoneyLog: 350 22395

	tAccuratepush_Reward[3313009][4] = {}
	tAccuratepush_Reward[3313009][4]["LogId"] = 12001473
	tAccuratepush_Reward[3313009][4]["RewardStrengthValue"] = {}
	tAccuratepush_Reward[3313009][4]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tAccuratepush_Reward[3313009][4]["RewardItem"] = {}
	tAccuratepush_Reward[3313009][4]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313009][4]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313009][4]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313009][4]["RewardEffect"] = {}
	tAccuratepush_Reward[3313009][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313009][4]["RewardEffect"]["Effect"] = "angelwing"



	-- ===气力惊喜包第五次打开
	-- ===删除: 3313009,1
	-- ===索引: tAccuratepush_Reward[3313009][5]
	-- ===EMoneyLog: 350 22396

	tAccuratepush_Reward[3313009][5] = {}
	tAccuratepush_Reward[3313009][5]["LogId"] = 12001473
	tAccuratepush_Reward[3313009][5]["DeleteItem"] = {}
	tAccuratepush_Reward[3313009][5]["DeleteItem"][1] = {}
	tAccuratepush_Reward[3313009][5]["DeleteItem"][1]["Id"] = 3313009 -- 【库】 3313009 【库里没有该物品】[属性:]
	tAccuratepush_Reward[3313009][5]["RewardStrengthValue"] = {}
	tAccuratepush_Reward[3313009][5]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】气力值
	tAccuratepush_Reward[3313009][5]["RewardItem"] = {}
	tAccuratepush_Reward[3313009][5]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313009][5]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tAccuratepush_Reward[3313009][5]["RewardItem"][1]["Attr"] = "0 6 0 2880 1" -- 2天时效(激活)的BrightStarStone*6
	tAccuratepush_Reward[3313009][5]["RewardEffect"] = {}
	tAccuratepush_Reward[3313009][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313009][5]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹精粹惊喜包第一次打开
	-- ===索引: tAccuratepush_Reward[3313010][1]
	-- ===EMoneyLog: 350 22397
	tAccuratepush_Reward[3313010] = {}
	tAccuratepush_Reward[3313010][1] = {}
	tAccuratepush_Reward[3313010][1]["LogId"] = 12001473
	tAccuratepush_Reward[3313010][1]["RewardItem"] = {}
	tAccuratepush_Reward[3313010][1]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313010][1]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tAccuratepush_Reward[3313010][1]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tAccuratepush_Reward[3313010][1]["RewardEffect"] = {}
	tAccuratepush_Reward[3313010][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313010][1]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹精粹惊喜包第二次打开
	-- ===索引: tAccuratepush_Reward[3313010][2]
	-- ===EMoneyLog: 350 22398

	tAccuratepush_Reward[3313010][2] = {}
	tAccuratepush_Reward[3313010][2]["LogId"] = 12001473
	tAccuratepush_Reward[3313010][2]["RewardItem"] = {}
	tAccuratepush_Reward[3313010][2]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313010][2]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tAccuratepush_Reward[3313010][2]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tAccuratepush_Reward[3313010][2]["RewardEffect"] = {}
	tAccuratepush_Reward[3313010][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313010][2]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹精粹惊喜包第三次打开
	-- ===索引: tAccuratepush_Reward[3313010][3]
	-- ===EMoneyLog: 350 22399

	tAccuratepush_Reward[3313010][3] = {}
	tAccuratepush_Reward[3313010][3]["LogId"] = 12001473
	tAccuratepush_Reward[3313010][3]["RewardItem"] = {}
	tAccuratepush_Reward[3313010][3]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313010][3]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tAccuratepush_Reward[3313010][3]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tAccuratepush_Reward[3313010][3]["RewardEffect"] = {}
	tAccuratepush_Reward[3313010][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313010][3]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹精粹惊喜包第四次打开
	-- ===索引: tAccuratepush_Reward[3313010][4]
	-- ===EMoneyLog: 350 22400

	tAccuratepush_Reward[3313010][4] = {}
	tAccuratepush_Reward[3313010][4]["LogId"] = 12001473
	tAccuratepush_Reward[3313010][4]["RewardItem"] = {}
	tAccuratepush_Reward[3313010][4]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313010][4]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tAccuratepush_Reward[3313010][4]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tAccuratepush_Reward[3313010][4]["RewardEffect"] = {}
	tAccuratepush_Reward[3313010][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313010][4]["RewardEffect"]["Effect"] = "angelwing"



	-- ===神纹精粹惊喜包第五次打开
	-- ===删除: 3313010,1
	-- ===索引: tAccuratepush_Reward[3313010][5]
	-- ===EMoneyLog: 350 2240·

	tAccuratepush_Reward[3313010][5] = {}
	tAccuratepush_Reward[3313010][5]["LogId"] = 12001473
	tAccuratepush_Reward[3313010][5]["DeleteItem"] = {}
	tAccuratepush_Reward[3313010][5]["DeleteItem"][1] = {}
	tAccuratepush_Reward[3313010][5]["DeleteItem"][1]["Id"] = 3313010 -- 【库】 3313010 【库里没有该物品】[属性:]
	tAccuratepush_Reward[3313010][5]["RewardItem"] = {}
	tAccuratepush_Reward[3313010][5]["RewardItem"][1] = {}
	tAccuratepush_Reward[3313010][5]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tAccuratepush_Reward[3313010][5]["RewardItem"][1]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tAccuratepush_Reward[3313010][5]["RewardEffect"] = {}
	tAccuratepush_Reward[3313010][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAccuratepush_Reward[3313010][5]["RewardEffect"]["Effect"] = "angelwing"
------------------------------------------------------------------------------------
--打开礼包
function Accuratepush_OpenGif(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tAccuratepush_Stc[nItemId]["Event"]
	local nType = tAccuratepush_Stc[nItemId]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tAccuratepush_EmoneyPrice[nItemId][nData]
	local sEmoneyLog = tAccuratepush_EmoneyLog[nItemId][nData]
	local nUserEmoney = Get_UserEMoney(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	--时间检测(打开过的礼包不做过期删除)
	if Task_ChkStcValue(nEvent,nType,"==",0,nUserId) then
	-- 判断活动时间
		if not Sys_ChkFullTime(tActivityTime["Accuratepush"]["ActivityTime"]) then
			--物品检测
			if Item_ChkMulItem(nItemId,nItemId,1) then
				Item_DelMulItem(nItemId,nItemId,1)
				return
			end
		end
	end
	
	
	--背包空间检测
	if not RewardTemplate_CheckSpace(tAccuratepush_Reward[nItemId][nData],nUserId) then
		local nNeedSpace = RewardTemplate_GetRewardSpace(tAccuratepush_Reward[nItemId][nData],nUserId)
		local sText = string.format(tAccuratepush_Text["NoSpace"],nNeedSpace)
		Sys_MsgBox(sText,nil,nil,nUserId)
		return
	end
	--物品检测
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tAccuratepush_Text["NoItem"],sItemName),nil,nil,nUserId)
		return
	end
	--天石检测
	if nUserEmoney < nNeedEmoney then
		LinkItemGossipFunc_New(nItemId,"3-1")
		return
	end
	--给奖励
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) then
		if User_AddEMoney(-nNeedEmoney,nUserId) then
			Sys_SaveEmoneyBuy(sEmoneyLog,nUserId)
			RewardTemplate_UseItemAndMsg(tAccuratepush_Reward[nItemId][nData],nUserId)
		end
	end
end

------------------------------------------------------------------------------------
tItemFace[3313008]=430
tItem[3313008] = tItem[3313008] or {}
tItem[3313008]["DialogueText"]=tAccuratepush_Text[3313008]
tItem[3313008]["Text1-1"]={111}
tItem[3313008]["tOption1-1"]={111,112}
tItem[3313008]["ChkFunc1-1"] = function()
	local nEvent = tAccuratepush_Stc[3313008]["Event"]
	local nType = tAccuratepush_Stc[3313008]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313008][nData]
	tItem[3313008]["Text111"] = string.format(tAccuratepush_Text[3313008]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313008]["OptionChkFunc111"] = function()
	local nEvent = tAccuratepush_Stc[3313008]["Event"]
	local nType = tAccuratepush_Stc[3313008]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313008][nData]
	tItem[3313008]["Option111"] =string.format(tAccuratepush_Text[3313008]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313008]["OptionPoint111"] = "2-1"


tItem[3313008]["Text2-1"]={211}
tItem[3313008]["tOption2-1"]={211,212}
tItem[3313008]["ChkFunc2-1"] = function()
	local nEvent = tAccuratepush_Stc[3313008]["Event"]
	local nType = tAccuratepush_Stc[3313008]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313008][nData]
	tItem[3313008]["Text211"] = string.format(tAccuratepush_Text[3313008]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313008]["OptionFunc211"] ="Accuratepush_OpenGif</N>3313008"

tItem[3313008]["Text3-1"]={311}
tItem[3313008]["tOption3-1"]={311}


tItemFace[3313009]=1002
tItem[3313009] = tItem[3313009] or {}
tItem[3313009]["DialogueText"]=tAccuratepush_Text[3313009]
tItem[3313009]["Text1-1"]={111}
tItem[3313009]["tOption1-1"]={111,112}
tItem[3313009]["ChkFunc1-1"] = function()
	local nEvent = tAccuratepush_Stc[3313009]["Event"]
	local nType = tAccuratepush_Stc[3313009]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313009][nData]
	tItem[3313009]["Text111"] = string.format(tAccuratepush_Text[3313009]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313009]["OptionChkFunc111"] = function()
	local nEvent = tAccuratepush_Stc[3313009]["Event"]
	local nType = tAccuratepush_Stc[3313009]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313009][nData]
	tItem[3313009]["Option111"] =string.format(tAccuratepush_Text[3313009]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313009]["OptionPoint111"] = "2-1"


tItem[3313009]["Text2-1"]={211}
tItem[3313009]["tOption2-1"]={211,212}
tItem[3313009]["ChkFunc2-1"] = function()
	local nEvent = tAccuratepush_Stc[3313009]["Event"]
	local nType = tAccuratepush_Stc[3313009]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313009][nData]
	tItem[3313009]["Text211"] = string.format(tAccuratepush_Text[3313009]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313009]["OptionFunc211"] ="Accuratepush_OpenGif</N>3313009"

tItem[3313009]["Text3-1"]={311}
tItem[3313009]["tOption3-1"]={311}


tItemFace[3313010]=1700
tItem[3313010] = tItem[3313010] or {}
tItem[3313010]["DialogueText"]=tAccuratepush_Text[3313010]
tItem[3313010]["Text1-1"]={111}
tItem[3313010]["tOption1-1"]={111,112}
tItem[3313010]["ChkFunc1-1"] = function()
	local nEvent = tAccuratepush_Stc[3313010]["Event"]
	local nType = tAccuratepush_Stc[3313010]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	
	
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313010][nData]
	tItem[3313010]["Text111"] = string.format(tAccuratepush_Text[3313010]["Text111"],nData,nNeedEmoney)
	return true
	
end
tItem[3313010]["OptionChkFunc111"] = function()
	local nEvent = tAccuratepush_Stc[3313010]["Event"]
	local nType = tAccuratepush_Stc[3313010]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313010][nData]
	tItem[3313010]["Option111"] =string.format(tAccuratepush_Text[3313010]["Option111"],nNeedEmoney)
	return true
	
end
tItem[3313010]["OptionPoint111"] = "2-1"


tItem[3313010]["Text2-1"]={211}
tItem[3313010]["tOption2-1"]={211,212}
tItem[3313010]["ChkFunc2-1"] = function()
	local nEvent = tAccuratepush_Stc[3313010]["Event"]
	local nType = tAccuratepush_Stc[3313010]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) + 1
	local nNeedEmoney = tAccuratepush_EmoneyPrice[3313010][nData]
	tItem[3313010]["Text211"] = string.format(tAccuratepush_Text[3313010]["Text211"],nNeedEmoney)
	return true
	
end
tItem[3313010]["OptionFunc211"] ="Accuratepush_OpenGif</N>3313010"

tItem[3313010]["Text3-1"]={311}
tItem[3313010]["tOption3-1"]={311}




