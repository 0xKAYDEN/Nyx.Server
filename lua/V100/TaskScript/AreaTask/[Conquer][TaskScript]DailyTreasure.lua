-------------------------------------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]日常寻宝任务.lua
--Purpose:	日常寻宝任务
--Creator: 	郑鋆
--Created:	2016/04/07
-------------------------------------------------------------------------------------------------------------------

-- 命名前缀
-- DailyTreasure_

-- 掩码说明
-- 143 91  	记录玩家今天是否领取过探宝符（=1表示领取过）
-- 143 92  	记录玩家今天是否获得过增加一次寻宝机会（=1表示获得过）
-- 144 21  	记录玩家当天获得赤龙异宝的数量
-- 144 90	=0表示今天还没有翻倍过 > 0表示翻倍的倍数
-- 144 91	记录玩家今天使用赤龙异宝的次数
-- 144 95	记录玩家刷新的次数


-- 常量表
local tDailyTreasure_Constant = {}
	-- 玩家等级要求
	tDailyTreasure_Constant["Metempsychosis"] = 0
	-- 赤龙之地片区任务最后一个任务的ID
	tDailyTreasure_Constant["TaskId"] = 3649
	-- 每天最多的次数
	tDailyTreasure_Constant["MaxTime"] = 5
	-- 探宝符
	tDailyTreasure_Constant["Treasure"] = 3008993
	-- 赤龙异宝
	tDailyTreasure_Constant["DragonTreasure"] = 3008992
	-- Log
	tDailyTreasure_Constant["Log"] = "0,0,0,0,18000103,2,%s,%s"
	-- 新服开关控制,=1表示新服活动
	tDailyTreasure_Constant["NewService"] = 0
	
-- stc掩码
local tDailyTreasure_Stc = {}
	tDailyTreasure_Stc["EventType"] = {}
	tDailyTreasure_Stc["EventType"]["Receive"] = 143
	tDailyTreasure_Stc["EventType"]["Increase"] = 143
	tDailyTreasure_Stc["EventType"]["Time"] = 144
	tDailyTreasure_Stc["EventType"]["ChgMap"] = 144
	tDailyTreasure_Stc["EventType"]["Double"] = 144
	tDailyTreasure_Stc["EventType"]["NewService"] = 144
	tDailyTreasure_Stc["EventType"]["Refresh"] = 144
	
	tDailyTreasure_Stc["DataType"] = {}
	tDailyTreasure_Stc["DataType"]["Receive"] = 91
	tDailyTreasure_Stc["DataType"]["Increase"] = 92
	tDailyTreasure_Stc["DataType"]["Time"] = 21
	tDailyTreasure_Stc["DataType"]["ChgMap"] = 22
	tDailyTreasure_Stc["DataType"]["Double"] = 90
	tDailyTreasure_Stc["DataType"]["NewService"] = 91
	tDailyTreasure_Stc["DataType"]["Refresh"] = 95
	
	tDailyTreasure_Stc["Data"] = {}
	tDailyTreasure_Stc["Data"]["Receive"] = 1
	tDailyTreasure_Stc["Data"]["Increase"] = 1
	tDailyTreasure_Stc["Data"]["Time"] = 12
	tDailyTreasure_Stc["Data"]["ChgMap"] = 1
	tDailyTreasure_Stc["Data"]["Double"] = 1
	tDailyTreasure_Stc["Data"]["NewService"] = 5
	tDailyTreasure_Stc["Data"]["Refresh"] = 1

-- 随机事件
local tDailyTreasure_RandomEvent = {}	
	tDailyTreasure_RandomEvent[1] = {}
	tDailyTreasure_RandomEvent[1]["ItemChanceSum"] = 10000
	-- 获得奖励	70.00%
	tDailyTreasure_RandomEvent[1][1] = {}
	tDailyTreasure_RandomEvent[1][1]["RandomItemChanceType"] = 2
	tDailyTreasure_RandomEvent[1][1]["ItemChance"] = 7000
	tDailyTreasure_RandomEvent[1][1]["Item_1"] = 3008992
	tDailyTreasure_RandomEvent[1][1]["ItemAttr"] = "0 1"
	tDailyTreasure_RandomEvent[1][1]["Index"] = 1
	tDailyTreasure_RandomEvent[1][1]["Log"] = "0,0,3008993,1,18000103,2,3008992,1"

	-- 什么都没有	20.00%
	tDailyTreasure_RandomEvent[1][2] = {}
	tDailyTreasure_RandomEvent[1][2]["RandomItemChanceType"] = 2
	tDailyTreasure_RandomEvent[1][2]["ItemChance"] = 2000
	tDailyTreasure_RandomEvent[1][2]["Item_1"] = 0
	tDailyTreasure_RandomEvent[1][2]["Index"] = 6
	-- 增加一次寻宝机会	10.00%
	tDailyTreasure_RandomEvent[1][3] = {}
	tDailyTreasure_RandomEvent[1][3]["RandomItemChanceType"] = 2
	tDailyTreasure_RandomEvent[1][3]["ItemChance"] = 1000
	tDailyTreasure_RandomEvent[1][3]["Item_1"] = 3008993
	tDailyTreasure_RandomEvent[1][3]["ItemAttr"] = "0 1"
	tDailyTreasure_RandomEvent[1][3]["Index"] = 5
	tDailyTreasure_RandomEvent[1][3]["Log"] = "0,0,0,0,18000103,2,3008993,1"
	tDailyTreasure_RandomEvent[1][3]["Effect"] = "dispel"

-- 负面状态
local tDailyTreasure_NegativeState = {}
	-- 1/3几率眩晕状态，持续2秒。
	tDailyTreasure_NegativeState[1] = {}
	tDailyTreasure_NegativeState[1]["Status"] = 55
	tDailyTreasure_NegativeState[1]["Power"] = 50
	tDailyTreasure_NegativeState[1]["Secs"] = 2
	tDailyTreasure_NegativeState[1]["Times"] = 1
	tDailyTreasure_NegativeState[1]["RemainTime"] = 2
	tDailyTreasure_NegativeState[1]["EndTime"] = 1
	tDailyTreasure_NegativeState[1]["Recordable"] = 0
	tDailyTreasure_NegativeState[1]["Index"] = 2
	-- tDailyTreasure_NegativeState[1]["Effect"] = "noconfirm096-999-new"

	-- 1/3几率反向状态，持续5秒。
	tDailyTreasure_NegativeState[2] = {}
	tDailyTreasure_NegativeState[2]["Status"] = 57
	tDailyTreasure_NegativeState[2]["Power"] = 50
	tDailyTreasure_NegativeState[2]["Secs"] = 5
	tDailyTreasure_NegativeState[2]["Times"] = 1
	tDailyTreasure_NegativeState[2]["RemainTime"] = 5
	tDailyTreasure_NegativeState[2]["EndTime"] = 1
	tDailyTreasure_NegativeState[2]["Recordable"] = 0
	tDailyTreasure_NegativeState[2]["Index"] = 3
	-- tDailyTreasure_NegativeState[2]["Effect"] = "curse-11"

	-- 1/3几率减速状态，持续5秒。
	tDailyTreasure_NegativeState[3] = {}
	tDailyTreasure_NegativeState[3]["Status"] = 50
	tDailyTreasure_NegativeState[3]["Power"] = 50
	tDailyTreasure_NegativeState[3]["Secs"] = 5
	tDailyTreasure_NegativeState[3]["Times"] = 1
	tDailyTreasure_NegativeState[3]["RemainTime"] = 5
	tDailyTreasure_NegativeState[3]["EndTime"] = 1
	tDailyTreasure_NegativeState[3]["Recordable"] = 0
	tDailyTreasure_NegativeState[3]["Index"] = 4
	tDailyTreasure_NegativeState[3]["Effect"] = "moveallaying-19"

-- 陷阱坐标
local tDailyTreasure_Trap = {}	
	tDailyTreasure_Trap[01] = {{x = 71,y = 353},{x = 42,y = 357}}
	tDailyTreasure_Trap[02] = {{x = 72,y = 362},{x = 34,y = 359}}
	tDailyTreasure_Trap[03] = {{x = 75,y = 372},{x = 28,y = 330}}
	tDailyTreasure_Trap[04] = {{x = 81,y = 383},{x = 22,y = 351}}
	tDailyTreasure_Trap[05] = {{x = 62,y = 346},{x = 11,y = 356}}
	tDailyTreasure_Trap[06] = {{x = 63,y = 354},{x = 42,y = 367}}
	tDailyTreasure_Trap[07] = {{x = 64,y = 362},{x = 32,y = 348}}
	tDailyTreasure_Trap[08] = {{x = 63,y = 370},{x = 26,y = 337}}
	tDailyTreasure_Trap[09] = {{x = 51,y = 369},{x = 25,y = 361}}
	tDailyTreasure_Trap[10] = {{x = 51,y = 361},{x = 11,y = 348}}
	tDailyTreasure_Trap[11] = {{x = 52,y = 352},{x = 33,y = 367}}
	tDailyTreasure_Trap[12] = {{x = 52,y = 344},{x = 34,y = 339}}
	tDailyTreasure_Trap[13] = {{x = 53,y = 337},{x = 22,y = 342}}
	tDailyTreasure_Trap[14] = {{x = 43,y = 339},{x = 26,y = 370}}
	tDailyTreasure_Trap[15] = {{x = 43,y = 348},{x = 15,y = 343}}

-- 传送的坐标
local tDailyTreasure_Delivery = {}	
	tDailyTreasure_Delivery[1] = {x = 24,y = 352}
	tDailyTreasure_Delivery[2] = {x = 42,y = 340}
	tDailyTreasure_Delivery[3] = {x = 57,y = 347}
	tDailyTreasure_Delivery[4] = {x = 53,y = 364}
	tDailyTreasure_Delivery[5] = {x = 33,y = 363}

-- 赤龙异宝
local tDailyTreasure_Reward = {}
	tDailyTreasure_Reward[3008992] = {}
	tDailyTreasure_Reward[3008992]["ItemChanceSum"] = 10000
	
	-- 炽热天石碎片	30	25.00%
	tDailyTreasure_Reward[3008992][1] = {}
	tDailyTreasure_Reward[3008992][1]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][1]["ItemChance"] = 2500
	tDailyTreasure_Reward[3008992][1]["Item_1"] = 3008727
	tDailyTreasure_Reward[3008992][1]["ItemAttr"] = "0 1"
	tDailyTreasure_Reward[3008992][1]["Index"] = 1
	
	-- 微光星陨石（时效）*2	8	22%
	tDailyTreasure_Reward[3008992][2] = {}
	tDailyTreasure_Reward[3008992][2]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][2]["ItemChance"] = 2200
	tDailyTreasure_Reward[3008992][2]["Item_1"] = 3009000
	tDailyTreasure_Reward[3008992][2]["ItemAttr"] = "0 2 0 2880 1"
	tDailyTreasure_Reward[3008992][2]["Index"] = 2
	
	-- 微光星陨石（时效）*3	24	14.00%
	tDailyTreasure_Reward[3008992][3] = {}
	tDailyTreasure_Reward[3008992][3]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][3]["ItemChance"] = 1400
	tDailyTreasure_Reward[3008992][3]["Item_1"] = 3009000
	tDailyTreasure_Reward[3008992][3]["ItemAttr"] = "0 3 0 2880 1"
	tDailyTreasure_Reward[3008992][3]["Index"] = 3
	
	-- 明净星陨石（时效）*1	80	4.00%
	tDailyTreasure_Reward[3008992][4] = {}
	tDailyTreasure_Reward[3008992][4]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][4]["ItemChance"] = 400
	tDailyTreasure_Reward[3008992][4]["Item_1"] = 3009001
	tDailyTreasure_Reward[3008992][4]["ItemAttr"] = "0 1 0 2880 1"
	tDailyTreasure_Reward[3008992][4]["Index"] = 4

	-- 100气力值	50	10.00%
	tDailyTreasure_Reward[3008992][5] = {}
	tDailyTreasure_Reward[3008992][5]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][5]["ItemChance"] = 1000
	tDailyTreasure_Reward[3008992][5]["Item_1"] = 100
	tDailyTreasure_Reward[3008992][5]["IsStrength"] = true
	tDailyTreasure_Reward[3008992][5]["Index"] = 5

	-- 200气力值	100	5.00%
	tDailyTreasure_Reward[3008992][6] = {}
	tDailyTreasure_Reward[3008992][6]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][6]["ItemChance"] = 500
	tDailyTreasure_Reward[3008992][6]["Item_1"] = 200
	tDailyTreasure_Reward[3008992][6]["IsStrength"] = true
	tDailyTreasure_Reward[3008992][6]["Index"] = 6
	
	-- 灵力精魄	0	4.00%
	tDailyTreasure_Reward[3008992][7] = {}
	tDailyTreasure_Reward[3008992][7]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][7]["ItemChance"] = 400
	tDailyTreasure_Reward[3008992][7]["Item_1"] = 3008735
	tDailyTreasure_Reward[3008992][7]["ItemAttr"] = "0 1"
	tDailyTreasure_Reward[3008992][7]["Index"] = 7
	
	-- 随机的属性秘令*2	255	4.00%
	tDailyTreasure_Reward[3008992][8] = {}
	tDailyTreasure_Reward[3008992][8]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][8]["ItemChance"] = 400
	tDailyTreasure_Reward[3008992][8]["Item_1"] = {}
	tDailyTreasure_Reward[3008992][8]["Item_1"][1] = 3004895
	tDailyTreasure_Reward[3008992][8]["Item_1"][2] = 3004896
	tDailyTreasure_Reward[3008992][8]["Item_1"][3] = 3004897
	tDailyTreasure_Reward[3008992][8]["Item_1"][4] = 3004898
	tDailyTreasure_Reward[3008992][8]["ItemAttr"] = "0 1"
	tDailyTreasure_Reward[3008992][8]["ItemNum"] = 2
	tDailyTreasure_Reward[3008992][8]["Index"] = 8
	
	-- 洗髓神露碎片*1	27	4.00%
	tDailyTreasure_Reward[3008992][9] = {}
	tDailyTreasure_Reward[3008992][9]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][9]["ItemChance"] = 400
	tDailyTreasure_Reward[3008992][9]["Item_1"] = 3006284
	tDailyTreasure_Reward[3008992][9]["ItemAttr"] = "0 1"
	tDailyTreasure_Reward[3008992][9]["Index"] = 9

	-- 岫山玉碎片*2	5.4	4.00%
	tDailyTreasure_Reward[3008992][10] = {}
	tDailyTreasure_Reward[3008992][10]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][10]["ItemChance"] = 400
	tDailyTreasure_Reward[3008992][10]["Item_1"] = 3008222
	tDailyTreasure_Reward[3008992][10]["ItemAttr"] = "0 2"
	tDailyTreasure_Reward[3008992][10]["Index"] = 10
	
	-- 千年血玉碎片*1	6	4.00%
	tDailyTreasure_Reward[3008992][11] = {}
	tDailyTreasure_Reward[3008992][11]["RandomItemChanceType"] = 2
	tDailyTreasure_Reward[3008992][11]["ItemChance"] = 400
	tDailyTreasure_Reward[3008992][11]["Item_1"] = 3008226
	tDailyTreasure_Reward[3008992][11]["ItemAttr"] = "0 1"
	tDailyTreasure_Reward[3008992][11]["Index"] = 11
	
-- 微光星陨石翻倍	
local tDailyTreasure_Double	= {}
	tDailyTreasure_Double[3200243] = {}
	tDailyTreasure_Double[3200243]["ItemChanceSum"] = 10000
	
	-- 微光星陨石（时效）*5 5 40 20.00% 
	tDailyTreasure_Double[3200243][1] = {}
	tDailyTreasure_Double[3200243][1]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][1]["ItemChance"] = 2000
	tDailyTreasure_Double[3200243][1]["Item_1"] = 3009000
	tDailyTreasure_Double[3200243][1]["ItemAttr"] = "0 5 0 2880 1"
	tDailyTreasure_Double[3200243][1]["Double"] = 5
	tDailyTreasure_Double[3200243][1]["Index"] = 1
	tDailyTreasure_Double[3200243][1]["Space"] = 4
	tDailyTreasure_Double[3200243][1]["Log"] = "0,0,3200243,1,18000103,2,3009000,5"
	
	-- 微光星陨石（时效）*6 6 48 18.00% 
	tDailyTreasure_Double[3200243][2] = {}
	tDailyTreasure_Double[3200243][2]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][2]["ItemChance"] = 1800
	tDailyTreasure_Double[3200243][2]["Item_1"] = 3009000
	tDailyTreasure_Double[3200243][2]["ItemAttr"] = "0 6 0 2880 1"
	tDailyTreasure_Double[3200243][2]["Double"] = 6
	tDailyTreasure_Double[3200243][2]["Index"] = 2
	tDailyTreasure_Double[3200243][2]["Space"] = 5
	tDailyTreasure_Double[3200243][2]["Log"] = "0,0,3200243,1,18000103,2,3009000,6"
	
	-- 微光星陨石（时效）*7 7 56 16.00% 
	tDailyTreasure_Double[3200243][3] = {}
	tDailyTreasure_Double[3200243][3]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][3]["ItemChance"] = 1600
	tDailyTreasure_Double[3200243][3]["Item_1"] = 3009000
	tDailyTreasure_Double[3200243][3]["ItemAttr"] = "0 7 0 2880 1"
	tDailyTreasure_Double[3200243][3]["Double"] = 7
	tDailyTreasure_Double[3200243][3]["Index"] = 3
	tDailyTreasure_Double[3200243][3]["Space"] = 6
	tDailyTreasure_Double[3200243][3]["Log"] = "0,0,3200243,1,18000103,2,3009000,7"
	
	-- 微光星陨石（时效）*8 8 64 14.00% 
	tDailyTreasure_Double[3200243][4] = {}
	tDailyTreasure_Double[3200243][4]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][4]["ItemChance"] = 1400
	tDailyTreasure_Double[3200243][4]["Item_1"] = 3009000
	tDailyTreasure_Double[3200243][4]["ItemAttr"] = "0 8 0 2880 1"
	tDailyTreasure_Double[3200243][4]["Double"] = 8
	tDailyTreasure_Double[3200243][4]["Index"] = 4
	tDailyTreasure_Double[3200243][4]["Space"] = 7
	tDailyTreasure_Double[3200243][4]["Log"] = "0,0,3200243,1,18000103,2,3009000,8"
	
	-- 微光星陨石（时效）*9 9 72 12.00% 
	tDailyTreasure_Double[3200243][5] = {}
	tDailyTreasure_Double[3200243][5]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][5]["ItemChance"] = 1200
	tDailyTreasure_Double[3200243][5]["Item_1"] = 3009000
	tDailyTreasure_Double[3200243][5]["ItemAttr"] = "0 9 0 2880 1"
	tDailyTreasure_Double[3200243][5]["Double"] = 9
	tDailyTreasure_Double[3200243][5]["Index"] = 5
	tDailyTreasure_Double[3200243][5]["Space"] = 8
	tDailyTreasure_Double[3200243][5]["Log"] = "0,0,3200243,1,18000103,2,3009000,9"
	
	-- 明亮星陨石（时效）*1 10 80 10.00% 
	tDailyTreasure_Double[3200243][6] = {}
	tDailyTreasure_Double[3200243][6]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][6]["ItemChance"] = 1000
	tDailyTreasure_Double[3200243][6]["Item_1"] = 3009001
	tDailyTreasure_Double[3200243][6]["ItemAttr"] = "0 1 0 2880 1"
	tDailyTreasure_Double[3200243][6]["Double"] = 10
	tDailyTreasure_Double[3200243][6]["Index"] = 6
	tDailyTreasure_Double[3200243][6]["Space"] = 0
	tDailyTreasure_Double[3200243][6]["Log"] = "0,0,3200243,1,18000103,2,3009001,1"
	
	-- 明亮星陨石（时效）*2 20 160 5.00% 
	tDailyTreasure_Double[3200243][7] = {}
	tDailyTreasure_Double[3200243][7]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][7]["ItemChance"] = 500
	tDailyTreasure_Double[3200243][7]["Item_1"] = 3009001
	tDailyTreasure_Double[3200243][7]["ItemAttr"] = "0 2 0 2880 1"
	tDailyTreasure_Double[3200243][7]["Double"] = 20
	tDailyTreasure_Double[3200243][7]["Index"] = 7
	tDailyTreasure_Double[3200243][7]["Space"] = 1
	tDailyTreasure_Double[3200243][7]["Log"] = "0,0,3200243,1,18000103,2,3009001,2"
	
	-- 明亮星陨石（时效）*3 30 240 3.00%
	tDailyTreasure_Double[3200243][8] = {}
	tDailyTreasure_Double[3200243][8]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][8]["ItemChance"] = 300
	tDailyTreasure_Double[3200243][8]["Item_1"] = 3009001
	tDailyTreasure_Double[3200243][8]["ItemAttr"] = "0 3 0 2880 1"
	tDailyTreasure_Double[3200243][8]["Double"] = 30
	tDailyTreasure_Double[3200243][8]["Index"] = 8
	tDailyTreasure_Double[3200243][8]["Space"] = 2
	tDailyTreasure_Double[3200243][8]["Log"] = "0,0,3200243,1,18000103,2,3009001,3"
	
	-- 明亮星陨石（时效）*5 50 400 1.60% 
	tDailyTreasure_Double[3200243][9] = {}
	tDailyTreasure_Double[3200243][9]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][9]["ItemChance"] = 160
	tDailyTreasure_Double[3200243][9]["Item_1"] = 3009001
	tDailyTreasure_Double[3200243][9]["ItemAttr"] = "0 5 0 2880 1"
	tDailyTreasure_Double[3200243][9]["Double"] = 50
	tDailyTreasure_Double[3200243][9]["Index"] = 9
	tDailyTreasure_Double[3200243][9]["Space"] = 4
	tDailyTreasure_Double[3200243][9]["Log"] = "0,0,3200243,1,18000103,2,3009001,5"
	
	-- 晶莹星陨石（时效）*1 100 800 0.40% 
	tDailyTreasure_Double[3200243][10] = {}
	tDailyTreasure_Double[3200243][10]["RandomItemChanceType"] = 2
	tDailyTreasure_Double[3200243][10]["ItemChance"] = 40
	tDailyTreasure_Double[3200243][10]["Item_1"] = 3009002
	tDailyTreasure_Double[3200243][10]["ItemAttr"] = "0 1 0 2880 1"
	tDailyTreasure_Double[3200243][10]["Double"] = 100
	tDailyTreasure_Double[3200243][10]["Index"] = 10
	tDailyTreasure_Double[3200243][10]["Space"] = 0
	tDailyTreasure_Double[3200243][10]["Log"] = "0,0,3200243,1,18000103,2,3009002,1"

-------------------------------------------------------------------------------------------------------------------
-- 次数判断
function DailyTreasure_JudgeTime(sPhase)
	local nEvent = tDailyTreasure_Stc["EventType"][sPhase]
	local nType = tDailyTreasure_Stc["DataType"][sPhase]
	local nData = tDailyTreasure_Stc["Data"][sPhase]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return false
	end
	
	return Task_ChkStcValue(nEvent,nType,">=",nData)
end

function DailyTreasure_SetStc(sPhase)
	local nEvent = tDailyTreasure_Stc["EventType"][sPhase]
	local nType = tDailyTreasure_Stc["DataType"][sPhase]

	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

-- 任务条件的判断
function DailyTreasure_TaskCondit()
	local nTaskId = tDailyTreasure_Constant["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	return Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1)
end

function DailyTreasure_Judge(nNpcId)
	-- 判断是否满足任务条件
	if not DailyTreasure_TaskCondit() then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return false
	end
	
	-- 判断次数
	if DailyTreasure_JudgeTime("Receive") then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return false
	end
	
	return true
end

-- 接任务判断
function DailyTreasure_Accept(nNpcId)
	if not DailyTreasure_Judge(nNpcId) then
		return
	end
	
	-- 接受任务
	LinkNpcGossipFunc_New(nNpcId,"5-2")
end

-- 给物品
function DailyTreasure_GiveItem(nNpcId)
	if not DailyTreasure_Judge(nNpcId) then
		return
	end
	
	-- 判断玩家身上是否有该物品
	if Item_ChkItem(tDailyTreasure_Constant["Treasure"]) then
		Sys_MsgBox(tDailyTreasure_Text["HaveItem"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tDailyTreasure_Text[nNpcId]["NoSpace"])
		return
	end
	
	-- 打掩码
	DailyTreasure_SetStc("Receive")
	-- 给物品
	Item_AddNewItem(tDailyTreasure_Constant["Treasure"],"0 5")
	-- 打log
	Sys_SaveActionTaskLog(string.format(tDailyTreasure_Constant["Log"],tostring(tDailyTreasure_Constant["Treasure"]),"5"))
	-- 给提示
	Sys_MsgBox(tDailyTreasure_Text[nNpcId]["Success"])
	User_TalkChannel2005(tDailyTreasure_Text[nNpcId]["Msg"])
	
	DailyTreasure_PathFind()
end

-- 下个陷阱点
function DailyTreasure_TrapPos(nPosX,nPosY)
	for i,v in pairs(tDailyTreasure_Trap) do
		for j = 1,#v do
			if v[j]["x"] == nPosX and v[j]["y"] == nPosY then
				local nIndex = 2
				if j == 2 then
					nIndex = 1
				end
				
				return v[nIndex]["x"],v[nIndex]["y"]
			end
		end
	end
end

-- 传送到族长旁边
function DailyTreasure_ChgMap()
	if not User_UserRandBoundTrans(3998,78,348,2,2,1) then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
end

-- 踩到陷阱
function DailyTreasure_Trap(nTrapId,nTrapType)
	local nPosX = Get_TrapPosX(nTrapId)
	local nPosY = Get_TrapPosY(nTrapId)
	local nMapId = Get_TrapMAPID(nTrapId)
	local nLook = Get_TrapLook(nTrapId)
	-- 删除陷阱
	if Trap_EraseMapTrap(nTrapId) then
		local nNewPosX,nNewPosY = DailyTreasure_TrapPos(nPosX,nPosY)
		-- 创建陷阱
		Trap_CreateMapTrap(nTrapType,nLook,0,nMapId,nNewPosX,nNewPosY,3,3)
	end
	
	-- 判断是否满足任务条件
	if not DailyTreasure_TaskCondit() then
		Sys_MsgBox(tDailyTreasure_Text["NoTask"])
		return
	end
	
	-- 判断有没有探宝符
	if not Item_ChkItem(tDailyTreasure_Constant["Treasure"]) then
		local sCoent = tDailyTreasure_Text["NoItem"]
		
		if DailyTreasure_JudgeTime("Receive") then
			sCoent = tDailyTreasure_Text["NoItemAndTime"]
		end
		
		Sys_MsgBox(sCoent,"DailyTreasure_ChgMap")

		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tDailyTreasure_Text["NoSpace"])
		return
	end

	-- 随机事件触发
	local nFlag,tAward = Probabil_RandomAward(tDailyTreasure_RandomEvent,1)
	local tReward = tAward[1]["tAward"][1]
	local nIndex = tReward["Index"]
	
	if tReward["Item_1"] == 1 then
		-- 给负面状态
		local nRandom = math.random(1,3)
		nIndex = tDailyTreasure_NegativeState[nRandom]["Index"]
		local nStatus = tDailyTreasure_NegativeState[nRandom]["Status"]
		local nPower =  tDailyTreasure_NegativeState[nRandom]["Power"]
		local nSecs = tDailyTreasure_NegativeState[nRandom]["Secs"]
		local nTimes = tDailyTreasure_NegativeState[nRandom]["Times"]
		local nRemainTime = tDailyTreasure_NegativeState[nRandom]["RemainTime"]
		local nEndTime = tDailyTreasure_NegativeState[nRandom]["EndTime"]
		local nRecordable = tDailyTreasure_NegativeState[nRandom]["Recordable"]
		local nUserId = Get_UserId()
		
		User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
		if tDailyTreasure_NegativeState[nRandom]["Effect"] ~= nil then
			User_EffectAdd("self",tDailyTreasure_NegativeState[nRandom]["Effect"],nUserId)
		end
	elseif tReward["Item_1"] == tDailyTreasure_Constant["Treasure"] then
		-- 判断次数
		if not DailyTreasure_JudgeTime("Increase") then
			DailyTreasure_SetStc("Increase")
			Item_AddNewItem(tReward["Item_1"],tReward["ItemAttr"])
			User_EffectAdd("self",tReward["Effect"])
			Sys_SaveActionTaskLog(tReward["Log"])
		else
			nIndex = 6
		end
	elseif tReward["Item_1"] == tDailyTreasure_Constant["DragonTreasure"] then
		if DailyTreasure_JudgeTime("Time") then
			User_TalkChannel2005(tDailyTreasure_Text["NoTime"])
			return
		end
		
		if Item_ChkItem(tDailyTreasure_Constant["Treasure"]) and Item_DelItem(tDailyTreasure_Constant["Treasure"]) then
			DailyTreasure_SetStc("Time")
			Item_AddNewItem(tReward["Item_1"],tReward["ItemAttr"])
			Map_Effect(nMapId,nPosX,nPosY,"accession3")
			Sys_SaveActionTaskLog(tReward["Log"])
		end
		
	end
	
	Sys_MsgBox(tDailyTreasure_Text["RandomEvent"][nIndex])
end

-- 使用赤龙异宝
function DailyTreasure_UseItem(nItemId,sItemName)
	local nSpace = DailyTreasure_GetSpace()
	
	-- 新服周活动空间判断
	if NewServerWeeks_ChkNewService() and NewServerWeeks_DragonOpenTimes() then
		local nWeek = NewServerWeeks_ChkWeekTime()
		nSpace = nSpace + NewServerWeeks_DragonSpace(nWeek)
	end
	
	--每天第5次打开赤龙异宝后给两个碎片
	if Sys_ChkFullTime(tActivityTime["BuyAsteroids"]["Now_Time"]) then
		nSpace = nSpace + 1
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tDailyTreasure_Text[3008992]["NoSpace"],nSpace))
		return
	end
	
	-- 10.17-11.15
	if nItemId == 3008992 then
		if Sys_ChkFullTime("2017-10-17 00:00 2017-11-15 23:59") then
			tDailyTreasure_Reward[3008992][2]["ItemAttr"] = "0 4 0 2880 1"
			tDailyTreasure_Reward[3008992][3]["ItemAttr"] = "0 6 0 2880 1"
			tDailyTreasure_Reward[3008992][4]["ItemAttr"] = "0 2 0 2880 1"
		else
			tDailyTreasure_Reward[3008992][2]["ItemAttr"] = "0 2 0 2880 1"
			tDailyTreasure_Reward[3008992][3]["ItemAttr"] = "0 3 0 2880 1"
			tDailyTreasure_Reward[3008992][4]["ItemAttr"] = "0 1 0 2880 1"
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- DailyTreasure_GiveNewPack()
		-- 给黄金联赛积分
		GoldenLeaguePoints_Add(50)
		
		---每天第5次打开赤龙异宝后给两个碎片
		BuyAsteroids_AddReward(1)
		
		-- 给随机物品奖励
		local nFlag,tAward = Probabil_RandomAward(tDailyTreasure_Reward,nItemId)
		local tReward = tAward[1]["tAward"][1]
		local nTime = tReward["ItemNum"] or 1
		local nAddItemId = tReward["Item_1"]
		local sItemLog = ""
		local sItemNumLog = ""
		-- local sItemName = ""
		
		for i = 1,nTime do
			if type(tReward["Item_1"]) == "table" then
				local nRandom = math.random(1,#tReward["Item_1"])
				nAddItemId = tReward["Item_1"][nRandom]
			end
			
			local nItemNum = 0
			
			if tReward["IsStrength"] then
				User_AddStrengthValue(tReward["Item_1"])
				nAddItemId = 12
				nItemNum = tReward["Item_1"]
			else
				nItemNum = CommonFunc_GetItemNum(tReward["ItemAttr"])
				Item_AddNewItem(nAddItemId,tReward["ItemAttr"])
			end
			
			if i ~= 1 then
				sItemLog = sItemLog .. "[" .. nAddItemId .. "]"
				sItemNumLog = sItemNumLog .. "[" .. nItemNum .. "]"
				-- sItemName = sItemName .. tDailyTreasure_Text[nItemId]["Connect"] ..Get_ItemtypeName(nAddItemId)
			else
				sItemLog = tostring(nAddItemId)
				sItemNumLog = tostring(nItemNum)
				-- sItemName = Get_ItemtypeName(nAddItemId)
			end
		end
		
		-- 新服活动周给新产出
		if NewServerWeeks_ChkNewService() then
			NewServerWeeks_DragonAct()
		end
			
		-- 给光效
		User_EffectAdd("self","angelwing")
		-- 打log
		Sys_SaveActionTaskLog(string.format(tDailyTreasure_Constant["Log"],sItemLog,sItemNumLog))
		-- 给提示
		local sMsg = tDailyTreasure_Text["Reward"][tReward["Index"]]
		-- 10.17-11.15
		if nItemId == 3008992 then
			if Sys_ChkFullTime("2017-10-17 00:00 2017-11-15 23:59") then
				if tReward["Index"] == 2 then
					sMsg = string.format(tDailyTreasure_Text["Reward"][tReward["Index"]],4)
				elseif tReward["Index"] == 3 then
					sMsg = string.format(tDailyTreasure_Text["Reward"][tReward["Index"]],6)
				elseif tReward["Index"] == 4 then
					sMsg = string.format(tDailyTreasure_Text["Reward"][tReward["Index"]],2)
				end
			else
				if tReward["Index"] == 2 then
					sMsg = string.format(tDailyTreasure_Text["Reward"][tReward["Index"]],2)
				elseif tReward["Index"] == 3 then
					sMsg = string.format(tDailyTreasure_Text["Reward"][tReward["Index"]],3)
				elseif tReward["Index"] == 4 then
					sMsg = string.format(tDailyTreasure_Text["Reward"][tReward["Index"]],1)
				end
			end
		end
		User_TalkChannel2005(sMsg)
	end
end

-- 服务器启动时判断是否有陷阱
function DailyTreasure_Start()
	DailyTreasure_NewService()
	
	-- local nCount = Get_TrapCount(1417)
	local nCount = MoveTrap_GetCount(1417)
	
	if nCount >= 15 then
		return
	end
	
	-- if nCount > 0 then
		Trap_DelMapTrap(3998,1417)
	-- end
	
	for i,v in pairs (tDailyTreasure_Trap) do
		local nRandom = math.random(1,2)
		local nPosX = v[nRandom]["x"]
		local nPosY = v[nRandom]["y"]
		-- 创建陷阱
		Trap_CreateMapTrap(1417,1417,0,3998,nPosX,nPosY,3,3)
	end
end

-- 探宝符
function DailyTreasure_Treasure(nItemId,sItemName)
	local nMapId = Get_UserMapId()
	if nMapId ~= 3998 then
		User_TalkChannel2005(tDailyTreasure_Text[nItemId]["Map"])
		return
	end
	
	local nEvent = tDailyTreasure_Stc["EventType"]["ChgMap"]
	local nType = tDailyTreasure_Stc["DataType"]["ChgMap"]
	
	if not Task_StcInterval(nEvent,nType,5,0) then
		User_TalkChannel2005(tDailyTreasure_Text[nItemId]["CD"])
		return
	end
	
	DailyTreasure_PathFind()
end

function DailyTreasure_PathFind()
	local nRandom = math.random(1,#tDailyTreasure_Delivery)
	local nPosX = tDailyTreasure_Delivery[nRandom]["x"]
	local nPosY = tDailyTreasure_Delivery[nRandom]["y"]
	local nEvent = tDailyTreasure_Stc["EventType"]["ChgMap"]
	local nType = tDailyTreasure_Stc["DataType"]["ChgMap"]
	
	Task_SetStatistic(nEvent,nType,0,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	User_UserRandBoundTrans(3998,nPosX,nPosY,1,1)
end

-- 新服翻倍
function DailyTreasure_Double(nItemId,nEmoney)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断是否需要天石翻倍
	if nEmoney ~= nil then
		local nUserEmoney = Get_UserEMoney()
		if nUserEmoney < nEmoney then
			Sys_MsgBox(tDailyTreasure_Text[3200243]["NoEmoney"])
			return
		end
		
		if not User_AddEMoney(-nEmoney) then
			return
		end
	end
	
	local nFlag,tAward = Probabil_RandomAward(tDailyTreasure_Double,nItemId)
	local tReward = tAward[1]["tAward"][1]
	local nEvent = tDailyTreasure_Stc["EventType"]["Double"]
	local nType = tDailyTreasure_Stc["DataType"]["Double"]
	
	Task_SetStatistic(nEvent,nType,tReward["Index"],1)
	Task_AddStatistic(tDailyTreasure_Stc["EventType"]["Refresh"],tDailyTreasure_Stc["DataType"]["Refresh"],1,1)
	
	local nData = Get_UserStatisticValue(tDailyTreasure_Stc["EventType"]["Refresh"],tDailyTreasure_Stc["DataType"]["Refresh"])
	local sName = tDailyTreasure_Text[3200243][tReward["Index"]]
	
	tItem[3200243]["Text123"] = string.format(tDailyTreasure_Text[3200243]["Text123"],tDailyTreasure_Double[3200243][tReward["Index"]]["Double"])
	tItem[3200243]["Text124"] = string.format(tDailyTreasure_Text[3200243]["Text124"],sName)
	tItem[3200243]["Text126"] = string.format(tDailyTreasure_Text[3200243]["Text126"],nData)
	
	LinkItemGossipFunc_New(nItemId,"1-2")
end

function DailyTreasure_DoubleReward(nItemId)
	local nEvent = tDailyTreasure_Stc["EventType"]["Double"]
	local nType = tDailyTreasure_Stc["DataType"]["Double"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nSpace = tDailyTreasure_Double[nItemId][nData]["Space"]
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace)) then
		Sys_MsgBox(string.format(tDailyTreasure_Text[3200243]["NoSpace"],nSpace))
		return
	end
	
	if not (Item_ChkItem(nItemId) and Item_DelItem(nItemId)) then
		return
	end
	
	local tAward = tDailyTreasure_Double[nItemId][nData]
	
	Task_SetStatistic(nEvent,nType,0,1)
	Task_SetStatistic(tDailyTreasure_Stc["EventType"]["Refresh"],tDailyTreasure_Stc["DataType"]["Refresh"],0,1)
	Item_AddNewItem(tAward["Item_1"],tAward["ItemAttr"])
	-- 打log
	Sys_SaveActionTaskLog(tAward["Log"])
	Sys_MsgBox(string.format(tDailyTreasure_Text[3200243]["Success"],tDailyTreasure_Text[3200243][nData]))
end

-- 表示新服活动
function DailyTreasure_NewService()
	local nGlobalId = 51131
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	tDailyTreasure_Constant["NewService"] = 0
	
	if nData < 1 then
		return
	end
	
	local sActivityTime = Get_SysDynaGlobalDataStr(nGlobalId,5)
	if not Sys_ChkFullTime(sActivityTime) then
		return
	end
	
	tDailyTreasure_Constant["NewService"] = 1
end

function DailyTreasure_GetSpace()
	if tDailyTreasure_Constant["NewService"] ~= 1 then
	
		-- 10.17-11.15
		if Sys_ChkFullTime("2017-10-17 00:00 2017-11-15 23:59") then
			return 6
		end
		
		return 3
	end
	
	local nEvent = tDailyTreasure_Stc["EventType"]["NewService"]
	local nType = tDailyTreasure_Stc["DataType"]["NewService"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return 2
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",tDailyTreasure_Stc["Data"]["NewService"] - 1) then
		return 3
	end
	
	return 2
end

-- 给新服星陨石翻倍包
function DailyTreasure_GiveNewPack()
	if tDailyTreasure_Constant["NewService"] ~= 1 then
		return
	end
	
	local nEvent = tDailyTreasure_Stc["EventType"]["NewService"]
	local nType = tDailyTreasure_Stc["DataType"]["NewService"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	nData = nData + 1
	
	Task_SetStatistic(nEvent,nType,nData,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	if nData == tDailyTreasure_Stc["Data"]["NewService"] then
		Item_AddNewItem(3200243,"0 1 0 2880 1")
		Sys_SaveActionTaskLog("0,0,0,0,18000103,2,3200243,1")
	end
end


--------------------------------------Npc配置------------------------------------
-------------------------------------言伯颉
tNpcGossip[19160] = tNpcGossip[19160] or DefaultNpc:new{}
tNpcGossip[19160]["Option12"] = tDailyTreasure_Text[19160]["Option12"]
tNpcGossip[19160]["OptionFunc12"] = "DailyTreasure_Accept</N>19160"

-- （未完成片区主线任务）
tNpcGossip[19160]["Text5-1"] = {511,512,513,514}
tNpcGossip[19160]["Text511"] = tDailyTreasure_Text[19160]["Text511"]
tNpcGossip[19160]["Text512"] = tDailyTreasure_Text[19160]["Text512"]
tNpcGossip[19160]["Text513"] = tDailyTreasure_Text[19160]["Text513"]
tNpcGossip[19160]["Text514"] = tDailyTreasure_Text[19160]["Text514"]
tNpcGossip[19160]["tOption5-1"] = {13}
tNpcGossip[19160]["Option13"] = tDailyTreasure_Text[19160]["Option13"]

-- （当日未完成-等级满足）
tNpcGossip[19160]["Text5-2"] = {521,522,523}
tNpcGossip[19160]["Text521"] = tDailyTreasure_Text[19160]["Text521"]
tNpcGossip[19160]["Text522"] = tDailyTreasure_Text[19160]["Text522"]
tNpcGossip[19160]["Text523"] = tDailyTreasure_Text[19160]["Text523"]
tNpcGossip[19160]["tOption5-2"] = {14}
tNpcGossip[19160]["Option14"] = tDailyTreasure_Text[19160]["Option14"]
tNpcGossip[19160]["OptionFunc14"] = "DailyTreasure_GiveItem</N>19160"
tNpcGossip[19160]["OptionChkFunc14"] = function ()
	return not DailyTreasure_JudgeTime("Receive")
end

-- （当日已完成）
tNpcGossip[19160]["Text5-3"] = {531}
tNpcGossip[19160]["Text531"] = tDailyTreasure_Text[19160]["Text531"]
tNpcGossip[19160]["tOption5-3"] = {15}
tNpcGossip[19160]["Option15"] = tDailyTreasure_Text[19160]["Option15"]

--------------------------------------物品配置------------------------------------
-- 赤龙异宝
tItem[3008992] = tItem[3008992] or {}
tItem[3008992]["Function"] = function(nItemId,sItemName)
	DailyTreasure_UseItem(nItemId,sItemName)
end

-- 探宝符
tItem[3008993] = tItem[3008993] or {}
tItem[3008993]["Function"] = function(nItemId,sItemName)
	DailyTreasure_Treasure(nItemId,sItemName)
end

-- 新服星陨石翻倍包
tItem[3200243] = tItem[3200243] or {}
tItem[3200243]["Function"] = function(nItemId,sItemName)
	local nEvent = tDailyTreasure_Stc["EventType"]["Refresh"]
	local nType = tDailyTreasure_Stc["DataType"]["Refresh"]
	local nData = Get_UserStatisticValue(nEvent,nType)

	if nData > 0 then
		local nDoubleEvent = tDailyTreasure_Stc["EventType"]["Double"]
		local nDoubleType = tDailyTreasure_Stc["DataType"]["Double"]
		local nDouble = Get_UserStatisticValue(nDoubleEvent,nDoubleType)
		local sName = tDailyTreasure_Text[3200243][nDouble]
	
		tItem[3200243]["Text123"] = string.format(tDailyTreasure_Text[3200243]["Text123"],tDailyTreasure_Double[3200243][nDouble]["Double"])
		tItem[3200243]["Text124"] = string.format(tDailyTreasure_Text[3200243]["Text124"],sName)
		tItem[3200243]["Text126"] = string.format(tDailyTreasure_Text[3200243]["Text126"],nData)
		LinkItemGossipFunc_New(nItemId,"1-2")
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3200243]["Text1-1"] = {111,112,113,114,115,116}
tItem[3200243]["Text111"] = tDailyTreasure_Text[3200243]["Text111"]
tItem[3200243]["Text112"] = tDailyTreasure_Text[3200243]["Text112"]
tItem[3200243]["Text113"] = tDailyTreasure_Text[3200243]["Text113"]
tItem[3200243]["Text114"] = tDailyTreasure_Text[3200243]["Text114"]
tItem[3200243]["Text115"] = tDailyTreasure_Text[3200243]["Text115"]
tItem[3200243]["Text116"] = tDailyTreasure_Text[3200243]["Text116"]
tItem[3200243]["tOption1-1"] = {1,2}
tItem[3200243]["Option1"] = tDailyTreasure_Text[3200243]["Option1"]
tItem[3200243]["OptionFunc1"] = "DailyTreasure_Double</N>3200243"
tItem[3200243]["Option2"] = tDailyTreasure_Text[3200243]["Option2"]

tItem[3200243]["Text1-2"] = {121,122,123,124,125,126}
tItem[3200243]["Text121"] = tDailyTreasure_Text[3200243]["Text121"]
tItem[3200243]["Text122"] = tDailyTreasure_Text[3200243]["Text122"]
tItem[3200243]["Text123"] = tDailyTreasure_Text[3200243]["Text123"]
tItem[3200243]["Text124"] = tDailyTreasure_Text[3200243]["Text124"]
tItem[3200243]["Text125"] = tDailyTreasure_Text[3200243]["Text125"]
tItem[3200243]["Text126"] = tDailyTreasure_Text[3200243]["Text126"]
tItem[3200243]["tOption1-2"] = {3,4}
tItem[3200243]["Option3"] = tDailyTreasure_Text[3200243]["Option3"]
tItem[3200243]["OptionPoint3"] = "2-1"
tItem[3200243]["Option4"] = tDailyTreasure_Text[3200243]["Option4"]
tItem[3200243]["OptionFunc4"] = "DailyTreasure_DoubleReward</N>3200243"

tItem[3200243]["Text2-1"] = {211}
tItem[3200243]["Text211"] = tDailyTreasure_Text[3200243]["Text211"]
tItem[3200243]["tOption2-1"] = {5,6}
tItem[3200243]["Option5"] = tDailyTreasure_Text[3200243]["Option5"]
tItem[3200243]["OptionFunc5"] = "DailyTreasure_Double</N>3200243</N>9"
tItem[3200243]["Option6"] = tDailyTreasure_Text[3200243]["Option6"]

--------------------------------------陷阱配置------------------------------------
tTrap[1417] = tTrap[1417] or {}
tTrap[1417]["Function"] = function(nTrapId,nTrapType)
	DailyTreasure_Trap(nTrapId,nTrapType)
end

tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],DailyTreasure_Start)

tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],DailyTreasure_NewService)