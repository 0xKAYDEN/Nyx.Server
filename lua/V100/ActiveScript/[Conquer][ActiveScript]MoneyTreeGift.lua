---------------------------------------------------------------------------------------------------
-- Name:			180118[简体征服][活动脚本]招财宝树礼包制作
-- Purpose:			招财宝树
-- Creator: 		吴志宏
-- Created:			2018/01/18
------------------------------------------------------------------------------------------------------
-- 命名前缀
-- tMoneyTreeGift_

-- logid 12000985

-- stc掩码说明
-- stc
-----------------------------------------------------------------------------------------------------

-- 奖励表
local tMoneyTreeGift_Reward = {}
	-- 宝树神功尊享包
	tMoneyTreeGift_Reward[3307209] = {}
	tMoneyTreeGift_Reward[3307209]["DeleteItem"] = {}
	tMoneyTreeGift_Reward[3307209]["DeleteItem"][1] = {}
	tMoneyTreeGift_Reward[3307209]["DeleteItem"][1]["Id"] = 3307209
	tMoneyTreeGift_Reward[3307209]["RewardItem"] = {}
	tMoneyTreeGift_Reward[3307209]["RewardItem"][1] = {}
	tMoneyTreeGift_Reward[3307209]["RewardItem"][1]["Id"] = 3002926
	tMoneyTreeGift_Reward[3307209]["RewardItem"][1]["Attr"] = "0 70"
	tMoneyTreeGift_Reward[3307209]["Talk"] = tMoneyTreeGift_Text["Reward"][3307209]
	tMoneyTreeGift_Reward[3307209]["Log"] = "0,0,3307209,1,12000985,2,3002926,70"
	
	-- 宝树神功七星包
	tMoneyTreeGift_Reward[3307210] = {}
	tMoneyTreeGift_Reward[3307210]["DeleteItem"] = {}
	tMoneyTreeGift_Reward[3307210]["DeleteItem"][1] = {}
	tMoneyTreeGift_Reward[3307210]["DeleteItem"][1]["Id"] = 3307210
	tMoneyTreeGift_Reward[3307210]["RewardItem"] = {}
	tMoneyTreeGift_Reward[3307210]["RewardItem"][1] = {}
	tMoneyTreeGift_Reward[3307210]["RewardItem"][1]["Id"] = 3002926
	tMoneyTreeGift_Reward[3307210]["RewardItem"][1]["Attr"] = "0 7"
	tMoneyTreeGift_Reward[3307210]["Talk"] = tMoneyTreeGift_Text["Reward"][3307210]
	tMoneyTreeGift_Reward[3307210]["Log"] = "0,0,3307210,1,12000985,2,3002926,7"
	
	-- 晶莹星陨石天赐包
	tMoneyTreeGift_Reward[3307211] = {}
	tMoneyTreeGift_Reward[3307211]["DeleteItem"] = {}
	tMoneyTreeGift_Reward[3307211]["DeleteItem"][1] = {}
	tMoneyTreeGift_Reward[3307211]["DeleteItem"][1]["Id"] = 3307211
	tMoneyTreeGift_Reward[3307211]["RewardItem"] = {}
	tMoneyTreeGift_Reward[3307211]["RewardItem"][1] = {}
	tMoneyTreeGift_Reward[3307211]["RewardItem"][1]["Id"] = 3009002
	tMoneyTreeGift_Reward[3307211]["RewardItem"][1]["Attr"] = "0 10"
	tMoneyTreeGift_Reward[3307211]["Talk"] = tMoneyTreeGift_Text["Reward"][3307211]
	tMoneyTreeGift_Reward[3307211]["Log"] = "0,0,3307211,1,12000985,2,3009002,10"
	
	-- 黄色神纹可选包
	tMoneyTreeGift_AwardItem = {}
	tMoneyTreeGift_AwardItem[3307212] = {}
	-- 效果-PK值减少
	-- tMoneyTreeGift_AwardItem[3307212][1] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardEffect"] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardEffect"]["SzObj"] = "self"
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardEffect"]["Effect"] = "eidolon"
	-- tMoneyTreeGift_AwardItem[3307212][1]["DeleteItem"] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["DeleteItem"][1] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["DeleteItem"][1]["Id"] = 3307212
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"][1] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"][1]["Id"] = 4030001
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tMoneyTreeGift_AwardItem[3307212][1]["LogId"] = 12000985
	-- 效果-玄元伤害封顶
	tMoneyTreeGift_AwardItem[3307212][2] = {}
	tMoneyTreeGift_AwardItem[3307212][2]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][2]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][2]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][2]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][2]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][2]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][2]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][2]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][2]["RewardItem"][1]["Id"] = 4030101
	tMoneyTreeGift_AwardItem[3307212][2]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][2]["LogId"] = 12000985
	-- 效果-吸星大法等级提高
	tMoneyTreeGift_AwardItem[3307212][3] = {}
	tMoneyTreeGift_AwardItem[3307212][3]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][3]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][3]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][3]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][3]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][3]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][3]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][3]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][3]["RewardItem"][1]["Id"] = 4030201
	tMoneyTreeGift_AwardItem[3307212][3]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][3]["LogId"] = 12000985
	-- 效果-化血神功等级提高
	tMoneyTreeGift_AwardItem[3307212][4] = {}
	tMoneyTreeGift_AwardItem[3307212][4]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][4]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][4]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][4]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][4]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][4]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][4]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][4]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][4]["RewardItem"][1]["Id"] = 4030301
	tMoneyTreeGift_AwardItem[3307212][4]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][4]["LogId"] = 12000985
	-- 效果-生命魔法自动恢复
	tMoneyTreeGift_AwardItem[3307212][5] = {}
	tMoneyTreeGift_AwardItem[3307212][5]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][5]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][5]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][5]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][5]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][5]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][5]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][5]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][5]["RewardItem"][1]["Id"] = 4030401
	tMoneyTreeGift_AwardItem[3307212][5]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][5]["LogId"] = 12000985
	-- 效果-不良状态免疫
	tMoneyTreeGift_AwardItem[3307212][6] = {}
	tMoneyTreeGift_AwardItem[3307212][6]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][6]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][6]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][6]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][6]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][6]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][6]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][6]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][6]["RewardItem"][1]["Id"] = 4030501
	tMoneyTreeGift_AwardItem[3307212][6]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][6]["LogId"] = 12000985
	-- 效果-XP状态时间减少
	tMoneyTreeGift_AwardItem[3307212][7] = {}
	tMoneyTreeGift_AwardItem[3307212][7]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][7]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][7]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][7]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][7]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][7]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][7]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][7]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][7]["RewardItem"][1]["Id"] = 4030601
	tMoneyTreeGift_AwardItem[3307212][7]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][7]["LogId"] = 12000985
	-- 效果-背包物品爆率加成
	tMoneyTreeGift_AwardItem[3307212][8] = {}
	tMoneyTreeGift_AwardItem[3307212][8]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][8]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][8]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][8]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][8]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][8]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][8]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][8]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][8]["RewardItem"][1]["Id"] = 4030701
	tMoneyTreeGift_AwardItem[3307212][8]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][8]["LogId"] = 12000985
	-- 效果-魔法消耗减少
	tMoneyTreeGift_AwardItem[3307212][9] = {}
	tMoneyTreeGift_AwardItem[3307212][9]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][9]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][9]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][9]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][9]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][9]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][9]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][9]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][9]["RewardItem"][1]["Id"] = 4030801
	tMoneyTreeGift_AwardItem[3307212][9]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][9]["LogId"] = 12000985
	-- 效果-对BOSS伤害加成
	tMoneyTreeGift_AwardItem[3307212][10] = {}
	tMoneyTreeGift_AwardItem[3307212][10]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][10]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][10]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][10]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][10]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][10]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][10]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][10]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][10]["RewardItem"][1]["Id"] = 4030901
	tMoneyTreeGift_AwardItem[3307212][10]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][10]["LogId"] = 12000985
	-- 效果-伤害补偿
	tMoneyTreeGift_AwardItem[3307212][11] = {}
	tMoneyTreeGift_AwardItem[3307212][11]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][11]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][11]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][11]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][11]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][11]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][11]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][11]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][11]["RewardItem"][1]["Id"] = 4031001
	tMoneyTreeGift_AwardItem[3307212][11]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][11]["LogId"] = 12000985
	-- 效果-XP状态时间增加
	tMoneyTreeGift_AwardItem[3307212][12] = {}
	tMoneyTreeGift_AwardItem[3307212][12]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][12]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][12]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][12]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][12]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][12]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][12]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][12]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][12]["RewardItem"][1]["Id"] = 4031101
	tMoneyTreeGift_AwardItem[3307212][12]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][12]["LogId"] = 12000985
	-- 效果-天外之魂等级提高
	tMoneyTreeGift_AwardItem[3307212][13] = {}
	tMoneyTreeGift_AwardItem[3307212][13]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][13]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][13]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][13]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][13]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][13]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][13]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][13]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][13]["RewardItem"][1]["Id"] = 4031201
	tMoneyTreeGift_AwardItem[3307212][13]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][13]["LogId"] = 12000985
	-- 效果-
	tMoneyTreeGift_AwardItem[3307212][14] = {}
	tMoneyTreeGift_AwardItem[3307212][14]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3307212][14]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3307212][14]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3307212][14]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][14]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][14]["DeleteItem"][1]["Id"] = 3307212
	tMoneyTreeGift_AwardItem[3307212][14]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3307212][14]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3307212][14]["RewardItem"][1]["Id"] = 4031301
	tMoneyTreeGift_AwardItem[3307212][14]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3307212][14]["LogId"] = 12000985
	
-------------------------------------一月神纹月活动新增礼包---------------------------------------------------------------------------
		tMoneyTreeGift_AwardItem[3311906] = {}
	-- 效果-PK值减少
	-- tMoneyTreeGift_AwardItem[3307212][1] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardEffect"] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardEffect"]["SzObj"] = "self"
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardEffect"]["Effect"] = "eidolon"
	-- tMoneyTreeGift_AwardItem[3307212][1]["DeleteItem"] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["DeleteItem"][1] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["DeleteItem"][1]["Id"] = 3307212
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"][1] = {}
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"][1]["Id"] = 4030001
	-- tMoneyTreeGift_AwardItem[3307212][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tMoneyTreeGift_AwardItem[3307212][1]["LogId"] = 12000985
	-- 效果-玄元伤害封顶
	tMoneyTreeGift_AwardItem[3311906][2] = {}
	tMoneyTreeGift_AwardItem[3311906][2]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][2]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][2]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][2]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][2]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][2]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][2]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][2]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][2]["RewardItem"][1]["Id"] = 4030101
	tMoneyTreeGift_AwardItem[3311906][2]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][2]["LogId"] = 12000985
	-- 效果-吸星大法等级提高
	tMoneyTreeGift_AwardItem[3311906][3] = {}
	tMoneyTreeGift_AwardItem[3311906][3]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][3]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][3]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][3]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][3]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][3]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][3]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][3]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][3]["RewardItem"][1]["Id"] = 4030201
	tMoneyTreeGift_AwardItem[3311906][3]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][3]["LogId"] = 12000985
	-- 效果-化血神功等级提高
	tMoneyTreeGift_AwardItem[3311906][4] = {}
	tMoneyTreeGift_AwardItem[3311906][4]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][4]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][4]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][4]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][4]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][4]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][4]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][4]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][4]["RewardItem"][1]["Id"] = 4030301
	tMoneyTreeGift_AwardItem[3311906][4]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][4]["LogId"] = 12000985
	-- 效果-生命魔法自动恢复
	tMoneyTreeGift_AwardItem[3311906][5] = {}
	tMoneyTreeGift_AwardItem[3311906][5]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][5]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][5]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][5]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][5]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][5]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][5]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][5]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][5]["RewardItem"][1]["Id"] = 4030401
	tMoneyTreeGift_AwardItem[3311906][5]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][5]["LogId"] = 12000985
	-- 效果-不良状态免疫
	tMoneyTreeGift_AwardItem[3311906][6] = {}
	tMoneyTreeGift_AwardItem[3311906][6]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][6]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][6]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][6]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][6]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][6]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][6]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][6]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][6]["RewardItem"][1]["Id"] = 4030501
	tMoneyTreeGift_AwardItem[3311906][6]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][6]["LogId"] = 12000985
	-- 效果-XP状态时间减少
	tMoneyTreeGift_AwardItem[3311906][7] = {}
	tMoneyTreeGift_AwardItem[3311906][7]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][7]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][7]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][7]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][7]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][7]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][7]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][7]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][7]["RewardItem"][1]["Id"] = 4030601
	tMoneyTreeGift_AwardItem[3311906][7]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][7]["LogId"] = 12000985
	-- 效果-背包物品爆率加成
	tMoneyTreeGift_AwardItem[3311906][8] = {}
	tMoneyTreeGift_AwardItem[3311906][8]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][8]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][8]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][8]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][8]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][8]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][8]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][8]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][8]["RewardItem"][1]["Id"] = 4030701
	tMoneyTreeGift_AwardItem[3311906][8]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][8]["LogId"] = 12000985
	-- 效果-魔法消耗减少
	tMoneyTreeGift_AwardItem[3311906][9] = {}
	tMoneyTreeGift_AwardItem[3311906][9]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][9]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][9]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][9]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][9]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][9]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][9]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][9]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][9]["RewardItem"][1]["Id"] = 4030801
	tMoneyTreeGift_AwardItem[3311906][9]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][9]["LogId"] = 12000985
	-- 效果-对BOSS伤害加成
	tMoneyTreeGift_AwardItem[3311906][10] = {}
	tMoneyTreeGift_AwardItem[3311906][10]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][10]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][10]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][10]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][10]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][10]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][10]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][10]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][10]["RewardItem"][1]["Id"] = 4030901
	tMoneyTreeGift_AwardItem[3311906][10]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][10]["LogId"] = 12000985
	-- 效果-伤害补偿
	tMoneyTreeGift_AwardItem[3311906][11] = {}
	tMoneyTreeGift_AwardItem[3311906][11]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][11]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][11]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][11]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][11]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][11]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][11]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][11]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][11]["RewardItem"][1]["Id"] = 4031001
	tMoneyTreeGift_AwardItem[3311906][11]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][11]["LogId"] = 12000985
	-- 效果-XP状态时间增加
	tMoneyTreeGift_AwardItem[3311906][12] = {}
	tMoneyTreeGift_AwardItem[3311906][12]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][12]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][12]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][12]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][12]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][12]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][12]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][12]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][12]["RewardItem"][1]["Id"] = 4031101
	tMoneyTreeGift_AwardItem[3311906][12]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][12]["LogId"] = 12000985
	-- 效果-天外之魂等级提高
	tMoneyTreeGift_AwardItem[3311906][13] = {}
	tMoneyTreeGift_AwardItem[3311906][13]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][13]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][13]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][13]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][13]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][13]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][13]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][13]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][13]["RewardItem"][1]["Id"] = 4031201
	tMoneyTreeGift_AwardItem[3311906][13]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][13]["LogId"] = 12000985
	-- 效果-
	tMoneyTreeGift_AwardItem[3311906][14] = {}
	tMoneyTreeGift_AwardItem[3311906][14]["RewardEffect"] = {}
	tMoneyTreeGift_AwardItem[3311906][14]["RewardEffect"]["SzObj"] = "self"
	tMoneyTreeGift_AwardItem[3311906][14]["RewardEffect"]["Effect"] = "eidolon"
	tMoneyTreeGift_AwardItem[3311906][14]["DeleteItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][14]["DeleteItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][14]["DeleteItem"][1]["Id"] = 3311906
	tMoneyTreeGift_AwardItem[3311906][14]["RewardItem"] = {}
	tMoneyTreeGift_AwardItem[3311906][14]["RewardItem"][1] = {}
	tMoneyTreeGift_AwardItem[3311906][14]["RewardItem"][1]["Id"] = 4031301
	tMoneyTreeGift_AwardItem[3311906][14]["RewardItem"][1]["Attr"] = "0 1"
	tMoneyTreeGift_AwardItem[3311906][14]["LogId"] = 12000985
	
------------------------------------------逻辑部分---------------------------------------------------
-- 使用物品
function MoneyTreeGift_UseItem(nItemId)
	--检测物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tMoneyTreeGift_Reward,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tMoneyTreeGift_Text["FullBag"],nSpace))
		return false
	end
	
	RewardTemplate_UseItem(tMoneyTreeGift_Reward[nItemId])
end

-- 可选包 二次确认
function MoneyTreeGift_ChooseConfirm(nItemTypeId,nIndex)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemTypeId) then
		return
	end
	if RewardTemplate_CheckSpace(tMoneyTreeGift_AwardItem[nItemTypeId][nIndex],nUserId) then
		local sItemName = tMoneyTreeGift_Text[nItemTypeId]["Option11"..nIndex]
		tItem[nItemTypeId]["Text121"] = string.format(tMoneyTreeGift_Text[nItemTypeId]["Text121"],sItemName)
		tItem[nItemTypeId]["Text122"] = string.format(tMoneyTreeGift_Text[nItemTypeId]["Text122"],tMoneyTreeGift_Text[nItemTypeId]["ItemDesc"][nIndex])
		tItem[nItemTypeId]["OptionFunc121"]=string.format("MoneyTreeGift_ChooseItem</N>%d</N>%d",nItemTypeId,nIndex)
		LinkItemGossipFunc_New(nItemTypeId,"1-2")
	end
end

-- 打开可选包
function MoneyTreeGift_ChooseItem(nItemTypeId,nIndex)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemTypeId) then
		return
	end
	if RewardTemplate_CheckSpace(tMoneyTreeGift_AwardItem[nItemTypeId][nIndex],nUserId) then
		RewardTemplate_UseItemAndMsg(tMoneyTreeGift_AwardItem[nItemTypeId][nIndex],nUserId)
	end	
end

------------------------------------------物品部分---------------------------------------------------
-- 宝树神功尊享包
tItem[3307209] = tItem[3307209] or {}
tItem[3307209]["Function"] = function(nItemId,sItemName)
	MoneyTreeGift_UseItem(nItemId)
end

-- 宝树神功七星包
tItem[3307210] = tItem[3307210] or {}
tItem[3307210]["Function"] = function(nItemId,sItemName)
	MoneyTreeGift_UseItem(nItemId)
end

-- 晶莹星陨石天赐包
tItem[3307211] = tItem[3307211] or {}
tItem[3307211]["Function"] = function(nItemId,sItemName)
	MoneyTreeGift_UseItem(nItemId)
end

-- 黄色神纹可选包
tItemFace[3307212] = 1086
tItem[3307212] = tItem[3307212] or {}
tItem[3307212]["DialogueText"] = tMoneyTreeGift_Text[3307212]
tItem[3307212]["Text1-1"] = {111}
tItem[3307212]["tOption1-1"] = {112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114}
-- tItem[3307212]["OptionFunc111"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>1"
tItem[3307212]["OptionFunc112"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>2"
tItem[3307212]["OptionFunc113"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>3"
tItem[3307212]["OptionFunc114"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>4"
tItem[3307212]["OptionFunc115"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>5"
tItem[3307212]["OptionFunc116"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>6"
tItem[3307212]["OptionFunc117"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>7"
tItem[3307212]["OptionFunc118"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>8"
tItem[3307212]["OptionFunc119"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>9"
tItem[3307212]["OptionFunc1110"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>10"
tItem[3307212]["OptionFunc1111"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>11"
tItem[3307212]["OptionFunc1112"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>12"
tItem[3307212]["OptionFunc1113"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>13"
tItem[3307212]["OptionFunc1114"]="MoneyTreeGift_ChooseConfirm</N>3307212</N>14"

tItem[3307212]["Text1-2"] = {121,122}
tItem[3307212]["tOption1-2"] = {121,122}
tItem[3307212]["OptionPoint122"]="1-1"
