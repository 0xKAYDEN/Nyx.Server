------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]春节天石雨
--Creator:		翁清海
--Created:		2019/01/31
------------------------------------------------------------------------------------

--命名前缀
--SpringFestivalEmoney_

--logid:12001287

--------------------------------------------数据部分配置--------------------------------------------
--常量表
local tSpringFestivalEmoney_Cont = {}
	tSpringFestivalEmoney_Cont["Global"] = 53227
	--等级判断
	tSpringFestivalEmoney_Cont["Level"] = 80
	tSpringFestivalEmoney_Cont["Metempsychosis"] = 0
	
--log
local tSpringFestivalEmoney_Log = {}
	tSpringFestivalEmoney_Log["Drop"] = "0,0,0,0,12001272,2,%d,1"
	tSpringFestivalEmoney_Log["DelItem"] = "0,0,%d,1,12001272,2,0,0"
	
--奖励配置
local tSpringFestivalEmoney_RewardItem = {}
	tSpringFestivalEmoney_RewardItem[3320109] = {}
	tSpringFestivalEmoney_RewardItem[3320109]["LogId"] = 12001287
	tSpringFestivalEmoney_RewardItem[3320109]["DeleteItem"] = {}
	tSpringFestivalEmoney_RewardItem[3320109]["DeleteItem"][1] = {}
	tSpringFestivalEmoney_RewardItem[3320109]["DeleteItem"][1]["Id"] = 3320109
	tSpringFestivalEmoney_RewardItem[3320109]["RewardCultivation"] = {}
	tSpringFestivalEmoney_RewardItem[3320109]["RewardCultivation"]["Value"] = 30
	
	-- tSpringFestivalEmoney_RewardItem[3320110] = {}
	-- tSpringFestivalEmoney_RewardItem[3320110]["LogId"] = 12001287
	-- tSpringFestivalEmoney_RewardItem[3320110]["DeleteItem"] = {}
	-- tSpringFestivalEmoney_RewardItem[3320110]["DeleteItem"][1] = {}
	-- tSpringFestivalEmoney_RewardItem[3320110]["DeleteItem"][1]["Id"] = 3320110
	-- tSpringFestivalEmoney_RewardItem[3320110]["RewardCultivation"] = {}
	-- tSpringFestivalEmoney_RewardItem[3320110]["RewardCultivation"]["Value"] = 30
	--祥龙瑞鳞
	tSpringFestivalEmoney_RewardItem[3320111] = {}
	tSpringFestivalEmoney_RewardItem[3320111]["ItemChanceSum"] = 10000
	tSpringFestivalEmoney_RewardItem[3320111]["LogId"] = 12001287
	tSpringFestivalEmoney_RewardItem[3320111]["DeleteItem"] = {}
	tSpringFestivalEmoney_RewardItem[3320111]["DeleteItem"][1] = {}
	tSpringFestivalEmoney_RewardItem[3320111]["DeleteItem"][1]["Id"] = 3320111
	tSpringFestivalEmoney_RewardItem[3320111]["DeleteItem"][1]["ItemNum"] = 100
	tSpringFestivalEmoney_RewardItem[3320111][1] = {}
	tSpringFestivalEmoney_RewardItem[3320111][1]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem[3320111][1]["ItemChance"] = 8000
	tSpringFestivalEmoney_RewardItem[3320111][1]["RewardItem"] = {}
	tSpringFestivalEmoney_RewardItem[3320111][1]["RewardItem"][1] = {}
	tSpringFestivalEmoney_RewardItem[3320111][1]["RewardItem"][1]["Id"] = 4200001
	tSpringFestivalEmoney_RewardItem[3320111][1]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalEmoney_RewardItem[3320111][1]["RewardItem"][1]["PreciousType"] = 307
	tSpringFestivalEmoney_RewardItem[3320111][2] = {}
	tSpringFestivalEmoney_RewardItem[3320111][2]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem[3320111][2]["ItemChance"] = 1500
	tSpringFestivalEmoney_RewardItem[3320111][2]["RewardItem"] = {}
	tSpringFestivalEmoney_RewardItem[3320111][2]["RewardItem"][1] = {}
	tSpringFestivalEmoney_RewardItem[3320111][2]["RewardItem"][1]["Id"] = 4200002
	tSpringFestivalEmoney_RewardItem[3320111][2]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalEmoney_RewardItem[3320111][2]["RewardItem"][1]["PreciousType"] = 307
	tSpringFestivalEmoney_RewardItem[3320111][3] = {}
	tSpringFestivalEmoney_RewardItem[3320111][3]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem[3320111][3]["ItemChance"] = 450
	tSpringFestivalEmoney_RewardItem[3320111][3]["RewardItem"] = {}
	tSpringFestivalEmoney_RewardItem[3320111][3]["RewardItem"][1] = {}
	tSpringFestivalEmoney_RewardItem[3320111][3]["RewardItem"][1]["Id"] = 4200003
	tSpringFestivalEmoney_RewardItem[3320111][3]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalEmoney_RewardItem[3320111][3]["RewardItem"][1]["PreciousType"] = 307
	tSpringFestivalEmoney_RewardItem[3320111][3]["RewardBroadCast"] = tSpringFestivalEmoney_Text["BroadCast"][3320111][3]
	tSpringFestivalEmoney_RewardItem[3320111][3]["RewardBroadCastType"] = 2007
	tSpringFestivalEmoney_RewardItem[3320111][4] = {}
	tSpringFestivalEmoney_RewardItem[3320111][4]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem[3320111][4]["ItemChance"] = 50
	tSpringFestivalEmoney_RewardItem[3320111][4]["RewardItem"] = {}
	tSpringFestivalEmoney_RewardItem[3320111][4]["RewardItem"][1] = {}
	tSpringFestivalEmoney_RewardItem[3320111][4]["RewardItem"][1]["Id"] = 4200005
	tSpringFestivalEmoney_RewardItem[3320111][4]["RewardItem"][1]["Attr"] = "0 1"
	tSpringFestivalEmoney_RewardItem[3320111][4]["RewardItem"][1]["PreciousType"] = 307
	tSpringFestivalEmoney_RewardItem[3320111][4]["RewardBroadCast"] = tSpringFestivalEmoney_Text["BroadCast"][3320111][4]
	tSpringFestivalEmoney_RewardItem[3320111][4]["RewardBroadCastType"] = 2007
	
	--掉落配置
	tSpringFestivalEmoney_RewardItem["KillMonster"] = {}
	--神龙岛
	tSpringFestivalEmoney_RewardItem["KillMonster"][1] = {}
	--神龙岛（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1]["Log"] = "0,0,0,0,12001272,1[1],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["ItemChance"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["RewardData"] = 50
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["MaxData"] = 1000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][1][2]["ItemChance"] = 9999
	--神龙岛（已2转）
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2]["ItemChanceSum"] = 100000
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2]["Log"] = "0,0,0,0,12001272,1[1],%d,1"
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["ItemChance"] = 500
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["DataType"] = 01
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["RewardData"] = 200
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["Pos"] = 0
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["MaxData"] = 4000
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][1]["DropItem"] = 3320111
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["ItemChance"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["DataType"] = 02
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["Pos"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["MaxData"] = 20
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][2]["DropItem"] = 4200001
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["DataType"] = 03
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["Pos"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["MaxData"] = 6
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][3]["DropItem"] = 4200002
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["DataType"] = 04
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["Pos"] = 3
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["MaxData"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][4]["DropItem"] = 4200003
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][5] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][5]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][2][5]["ItemChance"] = 99496
	--神龙岛（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3]["Log"] = "0,0,0,0,12001272,1[1],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["ItemChance"] = 3
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["RewardData"] = 150
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["MaxData"] = 3000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][1][3][2]["ItemChance"] = 9997
	--神龙岛（已2转）
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4]["ItemChanceSum"] = 100000
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4]["Log"] = "0,0,0,0,12001272,1[1],%d,1"
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["ItemChance"] = 1000
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["DataType"] = 01
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["RewardData"] = 400
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["Pos"] = 0
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["MaxData"] = 8000
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][1]["DropItem"] = 3320111
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["ItemChance"] = 4
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["DataType"] = 02
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["RewardData"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["Pos"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["MaxData"] = 40
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][2]["DropItem"] = 4200001
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["ItemChance"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["DataType"] = 03
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["Pos"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["MaxData"] = 12
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][3]["DropItem"] = 4200002
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["DataType"] = 04
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["Pos"] = 3
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["MaxData"] = 4
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][4]["DropItem"] = 4200003
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][5] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][5]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][1][4][5]["ItemChance"] = 98993
	--古神灵境
	tSpringFestivalEmoney_RewardItem["KillMonster"][2] = {}
	--古神灵境（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1]["Log"] = "0,0,0,0,12001272,1[2],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["ItemChance"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["RewardData"] = 50
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["MaxData"] = 1000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][1][2]["ItemChance"] = 9995
	--古神灵境（已2转）
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2]["ItemChanceSum"] = 100000
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2]["Log"] = "0,0,0,0,12001272,1[2],%d,1"
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["ItemChance"] = 2500
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["DataType"] = 01
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["RewardData"] = 200
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["Pos"] = 0
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["MaxData"] = 4000
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][1]["DropItem"] = 3320111
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["ItemChance"] = 10
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["DataType"] = 02
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["Pos"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["MaxData"] = 20
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][2]["DropItem"] = 4200001
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["ItemChance"] = 3
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["DataType"] = 03
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["Pos"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["MaxData"] = 6
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][3]["DropItem"] = 4200002
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["DataType"] = 04
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["Pos"] = 3
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["MaxData"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][4]["DropItem"] = 4200003
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][5] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][5]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][2][5]["ItemChance"] = 97486
	--古神灵境（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3]["Log"] = "0,0,0,0,12001272,1[2],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["ItemChance"] = 15
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["RewardData"] = 150
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["MaxData"] = 3000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][2][3][2]["ItemChance"] = 9985
	--古神灵境（已2转）
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4]["ItemChanceSum"] = 100000
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4]["Log"] = "0,0,0,0,12001272,1[2],%d,1"
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["ItemChance"] = 5000
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["DataType"] = 01
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["RewardData"] = 400
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["Pos"] = 0
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["MaxData"] = 8000
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][1]["DropItem"] = 3320111
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["ItemChance"] = 20
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["DataType"] = 02
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["RewardData"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["Pos"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["MaxData"] = 40
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][2]["DropItem"] = 4200001
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["ItemChance"] = 6
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["DataType"] = 03
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["Pos"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["MaxData"] = 12
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][3]["DropItem"] = 4200002
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["ItemChance"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["DataType"] = 04
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["Pos"] = 3
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["MaxData"] = 4
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][4]["DropItem"] = 4200003
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][5] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][5]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][2][4][5]["ItemChance"] = 94972
	--小怪
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3] = {}
	-- --小怪（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1]["Log"] = "0,0,0,0,12001272,1[3],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["ItemChance"] = 200
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["RewardData"] = 50
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["MaxData"] = 1000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][1][2]["ItemChance"] = 9800
	-- --小怪（已2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2]["Log"] = "0,0,0,0,12001272,1[3],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["ItemChance"] = 400
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["RewardData"] = 50
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["MaxData"] = 1000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["ItemChance"] = 40
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["DataType"] = 02
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["RewardData"] = 3
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["Pos"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["MaxData"] = 60
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][2]["DropItem"] = 4200001
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["ItemChance"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["DataType"] = 03
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["Pos"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["MaxData"] = 15
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][3]["DropItem"] = 4200002
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["ItemChance"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["DataType"] = 04
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["Pos"] = 3
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["MaxData"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["DropItem"] = 4200003
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][4]["BroadCast"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][5] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][5]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][2][5]["ItemChance"] = 9554
	-- --小怪（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3]["Log"] = "0,0,0,0,12001272,1[3],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["ItemChance"] = 600
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["RewardData"] = 150
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["MaxData"] = 3000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][3][2]["ItemChance"] = 9400
	-- --小怪（已2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4]["Log"] = "0,0,0,0,12001272,1[3],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["ItemChance"] = 1200
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["RewardData"] = 150
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["MaxData"] = 3000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["ItemChance"] = 120
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["DataType"] = 02
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["RewardData"] = 9
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["Pos"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["MaxData"] = 180
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][2]["DropItem"] = 4200001
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["ItemChance"] = 10
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["DataType"] = 03
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["RewardData"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["Pos"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["MaxData"] = 30
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][3]["DropItem"] = 4200002
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["ItemChance"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["DataType"] = 04
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["Pos"] = 3
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["MaxData"] = 10
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["FullIndex"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["DropItem"] = 4200003
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][4]["BroadCast"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][5] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][5]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][3][4][5]["ItemChance"] = 8668
	-- --Boss
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4] = {}
	-- --Boss（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1]["Log"] = "0,0,0,0,12001272,1[4],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["ItemChance"] = 10000
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["EventType"] = 190
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["DataType"] = 02
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["RewardDelay"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["RewardTimeType"] = 2
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["RewardData"] = 3
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["GlobalId"] = 53227
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["Pos"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["MaxData"] = 60
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][1]["DropItem"] = 4200001
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][1][2]["ItemChance"] = 0
	-- --Boss（已2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2]["Log"] = "0,0,0,0,12001272,1[4],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["ItemChance"] = 6000
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["EventType"] = 190
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["DataType"] = 02
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["RewardDelay"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["RewardTimeType"] = 2
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["RewardData"] = 3
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["GlobalId"] = 53227
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["Pos"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["MaxData"] = 60
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][1]["DropItem"] = 4200001
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["ItemChance"] = 2600
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["DataType"] = 03
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["Pos"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["MaxData"] = 15
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][2]["DropItem"] = 4200002
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["ItemChance"] = 1100
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["DataType"] = 04
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["Pos"] = 3
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["MaxData"] = 5
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["DropItem"] = 4200003
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][3]["BroadCast"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["ItemChance"] = 300
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["DataType"] = 05
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["Pos"] = 4
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["MaxData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["DropItem"] = 4200005
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][2][4]["BroadCast"] = 1
	-- --Boss（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3]["Log"] = "0,0,0,0,12001272,1[4],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["ItemChance"] = 10000
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["EventType"] = 190
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["DataType"] = 02
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["RewardDelay"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["RewardTimeType"] = 2
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["RewardData"] = 3
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["GlobalId"] = 53227
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["Pos"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["MaxData"] = 60
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][1]["DropItem"] = 4200001
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][3][2]["ItemChance"] = 0
	-- --Boss（已2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4]["Log"] = "0,0,0,0,12001272,1[4],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["ItemChance"] = 2000
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["EventType"] = 190
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["DataType"] = 02
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["RewardDelay"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["RewardTimeType"] = 2
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["RewardData"] = 9
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["GlobalId"] = 53227
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["Pos"] = 1
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["MaxData"] = 180
	-- -- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][1]["DropItem"] = 4200001
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["ItemChance"] = 5200
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["DataType"] = 03
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["RewardData"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["Pos"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["MaxData"] = 30
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][2]["DropItem"] = 4200002
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["ItemChance"] = 2200
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["DataType"] = 04
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["Pos"] = 3
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["MaxData"] = 10
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["DropItem"] = 4200003
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][3]["BroadCast"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["ItemChance"] = 600
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["DataType"] = 05
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["RewardData"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["Pos"] = 4
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["MaxData"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["FullIndex"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["DropItem"] = 4200005
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][4][4][4]["BroadCast"] = 1
	--冰封地穴（激情服）
	tSpringFestivalEmoney_RewardItem["KillMonster"][5] = {}
	--冰封地穴（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1]["Log"] = "0,0,0,0,12001272,1[5],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["ItemChance"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["RewardData"] = 50
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["MaxData"] = 1000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][1][2]["ItemChance"] = 9999
	--冰封地穴（已2转）
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2]["ItemChanceSum"] = 100000
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2]["Log"] = "0,0,0,0,12001272,1[5],%d,1"
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["ItemChance"] = 500
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["DataType"] = 01
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["RewardData"] = 200
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["Pos"] = 0
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["MaxData"] = 4000
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][1]["DropItem"] = 3320111
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["DataType"] = 02
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["Pos"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["MaxData"] = 20
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][2]["DropItem"] = 4200001
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["DataType"] = 03
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["Pos"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["MaxData"] = 6
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][3]["DropItem"] = 4200002
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["DataType"] = 04
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["Pos"] = 3
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["MaxData"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][4]["DropItem"] = 4200003
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][5] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][5]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][2][5]["ItemChance"] = 99497
	--冰封地穴（未2转）
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3]["ItemChanceSum"] = 10000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3]["Log"] = "0,0,0,0,12001272,1[5],%d,1"
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["ItemChance"] = 3
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["EventType"] = 190
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["DataType"] = 01
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["RewardDelay"] = 1
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["RewardTimeType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["RewardData"] = 150
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["GlobalId"] = 53227
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["Pos"] = 0
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["MaxData"] = 3000
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["FullIndex"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][1]["DropItem"] = 3320111
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][2] = {}
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][2]["RandomItemChanceType"] = 2
	-- tSpringFestivalEmoney_RewardItem["KillMonster"][5][3][2]["ItemChance"] = 9997
	--冰封地穴（已2转）
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4]["ItemChanceSum"] = 100000
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4]["Log"] = "0,0,0,0,12001272,1[5],%d,1"
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["ItemChance"] = 1000
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["DataType"] = 01
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["RewardData"] = 400
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["Pos"] = 0
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["MaxData"] = 8000
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][1]["DropItem"] = 3320111
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["ItemChance"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["DataType"] = 02
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["RewardData"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["Pos"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["MaxData"] = 40
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][2]["DropItem"] = 4200001
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["DataType"] = 03
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["Pos"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["MaxData"] = 12
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][3]["DropItem"] = 4200002
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["ItemChance"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["EventType"] = 190
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["DataType"] = 04
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["RewardDelay"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["RewardTimeType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["RewardData"] = 1
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["GlobalId"] = 53227
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["Pos"] = 3
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["MaxData"] = 4
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["FullIndex"] = 5
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][4]["DropItem"] = 4200003
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][5] = {}
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][5]["RandomItemChanceType"] = 2
	tSpringFestivalEmoney_RewardItem["KillMonster"][5][4][5]["ItemChance"] = 98996
	
--移动相关npc到集中营
local tSpringFestivalEmoney_Location = {}
tSpringFestivalEmoney_Location["MapId"] = 1002
tSpringFestivalEmoney_Location["NewMapId"] = 1036
tSpringFestivalEmoney_Location["OriginalMapId"] = 5000
tSpringFestivalEmoney_Location["NpcId"] = 23731
tSpringFestivalEmoney_Location["Pos"] = 100

--相关光效
local tSpringFestivalEmoney_DyEffect = {}
tSpringFestivalEmoney_DyEffect["EffectObj"] = "self"
tSpringFestivalEmoney_DyEffect["Effect"] = "accession"

--透明npc随机刷新各个点
local tSpringFestivalEmoney_MoveNpc = {}
tSpringFestivalEmoney_MoveNpc[23731] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1]["ItemChanceSum"] = 10000

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][1] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][1]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][1]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][1]["Item_1"] = {306,424}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][1]["Item_2"] = {251,260}
 
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][2] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][2]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][2]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][2]["Item_1"] = {349,388}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][2]["Item_2"] = {250,250}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][3] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][3]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][3]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][3]["Item_1"] = {391,417}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][3]["Item_2"] = {326,247}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][4] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][4]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][4]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][4]["Item_1"] = {386,497}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][4]["Item_2"] = {287,209}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][5] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][5]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][5]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][5]["Item_1"] = {318,496}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][5]["Item_2"] = {256,207}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][6] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][6]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][6]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][6]["Item_1"] = {282,468}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][6]["Item_2"] = {267,233}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][7] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][7]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][7]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][7]["Item_1"] = {344,435}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][7]["Item_2"] = {218,261}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][8] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][8]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][8]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][8]["Item_1"] = {327,390}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][8]["Item_2"] = {218,211}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][9] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][9]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][9]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][9]["Item_1"] = {387,393}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][9]["Item_2"] = {186,197}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][10] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][10]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][10]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][10]["Item_1"] = {390,477}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][10]["Item_2"] = {187,241}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][11] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][11]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][11]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][11]["Item_1"] = {313,391}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][11]["Item_2"] = {301,204}
 
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][12] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][12]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][12]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][12]["Item_1"] = {369,389}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][12]["Item_2"] = {310,239}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][13] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][13]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][13]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][13]["Item_1"] = {390,440}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][13]["Item_2"] = {321,211}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][14] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][14]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][14]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][14]["Item_1"] = {362,496}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][14]["Item_2"] = {271,208}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][15] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][15]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][15]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][15]["Item_1"] = {306,481}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][15]["Item_2"] = {281,241}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][16] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][16]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][16]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][16]["Item_1"] = {252,463}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][16]["Item_2"] = {220,234}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][17] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][17]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][17]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][17]["Item_1"] = {347,414}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][17]["Item_2"] = {219,279}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][18] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][18]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][18]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][18]["Item_1"] = {341,497}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][18]["Item_2"] = {214,190}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][19] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][19]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][19]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][19]["Item_1"] = {305,459}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][19]["Item_2"] = {188,220}

tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][20] = {}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][20]["RandomItemChanceType"] = 2
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][20]["ItemChance"] = 500
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][20]["Item_1"] = {279,482}
tSpringFestivalEmoney_MoveNpc[23731]["Reward"][1][20]["Item_2"] = {187,270}

--点击ncp直接给相关奖励
local tSpringFestivalEmoney_AwardGift = {}
tSpringFestivalEmoney_AwardGift[23731] = {}
tSpringFestivalEmoney_AwardGift[23731]["RewardItem"] = {}
tSpringFestivalEmoney_AwardGift[23731]["RewardItem"][1] = {} 
tSpringFestivalEmoney_AwardGift[23731]["RewardItem"][1]["Id"] = 0
tSpringFestivalEmoney_AwardGift[23731]["RewardItem"][1]["Attr"] = "0 1"
tSpringFestivalEmoney_AwardGift[23731]["LogId"] = 12001287

--------------------------------------------逻辑部分配置--------------------------------------------
function SpringFestivalEmoney_UseRandomItem(nItemId,sItemName)
	local nUserId = Get_UserId()
	
	-- 判断背包空间
	local bFlag, nSpace = RewardTemplate_ChkRandomSpace(tSpringFestivalEmoney_RewardItem,nItemId,nUserId)
	
	if not bFlag then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"], nSpace))
		return
	end
	
	local nNum = tSpringFestivalEmoney_RewardItem[nItemId]["DeleteItem"][1]["ItemNum"]
	
	-- 检查物品
	if not Item_ChkMulItem(nItemId,nItemId,nNum,nil,nil,nUserId) then
		User_TalkChannel2005(string.format(tSpringFestivalEmoney_Text["Channel2005"]["NoEnough"], sItemName), nUserId)
		return
	end
	
	-- 删除物品
	if not RewardTemplate_DelItem(tSpringFestivalEmoney_RewardItem[nItemId],nUserId) then
		return
	end
	
	RewardTemplate_NewRandom(tSpringFestivalEmoney_RewardItem,nItemId,nUserId)
end

--物品使用
function SpringFestivalEmoney_UseItem(nItemId, nNpcId)
	if tSpringFestivalEmoney_RewardItem[nItemId] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	if RewardTemplate_UseItemAndMsg(tSpringFestivalEmoney_RewardItem[nItemId],nUserId) then
		NpcPosition_PathFind(nNpcId)
	end
end

--神龙岛怪物掉落
function SpringFestivalEmoney_DragonIslandMonster(nMonsterId)
	SpringFestivalEmoney_MonsterDrop(1, nMonsterId)
end

--古神灵境怪物掉落
function SpringFestivalEmoney_DeitylandMonster(nMonsterId)
	SpringFestivalEmoney_MonsterDrop(2, nMonsterId)
end

--小怪物掉落
function SpringFestivalEmoney_SmallMonster(nMonsterId)
	SpringFestivalEmoney_MonsterDrop(3, nMonsterId)
end

--Boss掉落
function SpringFestivalEmoney_BossMonster(nMonsterId)
	SpringFestivalEmoney_MonsterDrop(4, nMonsterId)
end

--冰封地穴掉落（激情服）
function SpringFestivalEmoney_BingFengMonster(nMonsterId)
	SpringFestivalEmoney_MonsterDrop(5, nMonsterId)
end

--怪物掉落配置
function SpringFestivalEmoney_MonsterDrop(nMonsterIndex, nMonsterId)
	--不在活动时间段
	if not Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime"]) then
		return
	end
	
	local nLevel = tSpringFestivalEmoney_Cont["Level"]
	local nMetempsychosis = tSpringFestivalEmoney_Cont["Metempsychosis"]
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		return
	end
	
	local nUserId = Get_UserId()
	
	local nIndex = 1
	
	--转世判断
	local nMeteTimes = Get_UserMetempsychosis(nUserId)
	
	if nMeteTimes >= 2 then
		nIndex = 2
	else
		--英文未二转不掉落
		return
	end
	
	--活动时间不一样概率不一样
	if SpringFestivalEmoney_ChkDayTime() then
		nIndex = nIndex + 2
	end
	
	local flat,tNum1= Probabil_RandomAward(tSpringFestivalEmoney_RewardItem["KillMonster"][nMonsterIndex],nIndex)
	
	--判断个人限量
	if tNum1[1]["tAward"][1]["EventType"] ~= nil and tNum1[1]["tAward"][1]["DataType"] ~= nil then
		local nEvent = tNum1[1]["tAward"][1]["EventType"]
		local nType = tNum1[1]["tAward"][1]["DataType"]
		local nTimeType = tNum1[1]["tAward"][1]["RewardTimeType"] or 4
		local nDelay = tNum1[1]["tAward"][1]["RewardDelay"] or 1
		local nLimitData = tNum1[1]["tAward"][1]["RewardData"] or 1
		
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
		
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nData >= nLimitData then
			local nFullIndex = tNum1[1]["tAward"][1]["FullIndex"]
			
			if nFullIndex == nil then
				return
			elseif tSpringFestivalEmoney_RewardItem["KillMonster"][nMonsterIndex][nIndex][nFullIndex]["DropItem"] == nil then
				return
			else
				tNum1[1]["tAward"][1]["DropItem"] = tSpringFestivalEmoney_RewardItem["KillMonster"][nMonsterIndex][nIndex][nFullIndex]["DropItem"]
			end
		else
			Task_AddStatistic(nEvent,nType,1,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
	
	--判断全服限量
	if tNum1[1]["tAward"][1]["GlobalId"] ~= nil then
		local nGlobalId = tNum1[1]["tAward"][1]["GlobalId"]
		local nPos = tNum1[1]["tAward"][1]["Pos"] or 0
		local nMaxData = tNum1[1]["tAward"][1]["MaxData"] or 1
		
		local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
		
		if nData >= nMaxData then
			local nFullIndex = tNum1[1]["tAward"][1]["FullIndex"]
			
			if nFullIndex == nil then
				return
			elseif tSpringFestivalEmoney_RewardItem["KillMonster"][nMonsterIndex][nIndex][nFullIndex]["DropItem"] == nil then
				return
			else
				tNum1[1]["tAward"][1]["DropItem"] = tSpringFestivalEmoney_RewardItem["KillMonster"][nMonsterIndex][nIndex][nFullIndex]["DropItem"]
			end
		else
			Sys_SetSynaGlobalData(nGlobalId,nPos,nData + 1)
		end
	end
	
	--掉落
	if tNum1[1]["tAward"][1]["DropItem"] ~= nil then
		local nItemId = tNum1[1]["tAward"][1]["DropItem"]
		local sLog = tSpringFestivalEmoney_RewardItem["KillMonster"][nMonsterIndex][nIndex]["Log"] or tSpringFestivalEmoney_Log["Drop"]
		
		if nMonsterId ~= nil then
			Monster_SysDropItem(nItemId)
		else
			
			tSpringFestivalEmoney_AwardGift[23731]["RewardItem"][1]["Id"] = nItemId
			local nItemName = Get_ItemtypeName(nItemId)
			local sAwardItemname = string.format(tSpringFestivalEmoney_Text[23731]["SpaceHave"],nItemName)
			
			RewardTemplate_Reward(tSpringFestivalEmoney_AwardGift[23731],nUserId)
			Sys_MsgBox(sAwardItemname)
		end
		
		Sys_SaveActionRewardLog(string.format(sLog, nItemId),nUserId)
		
		if nMonsterId ~= nil then
			--是否有全服公告
			if tNum1[1]["tAward"][1]["BroadCast"] ~= nil then
				local sUserName = Get_UserName(nUserId)
				local sMonsterName = tSpringFestivalEmoney_Text["MonsterName"][nMonsterId]
				local sItemName = Get_ItemtypeName(nItemId)
				
				Sys_TalkBroadcast(string.format(tSpringFestivalEmoney_Text["BroadCast"]["KillMonster"],sUserName, sMonsterName, sItemName))
			end
		end
	end
end

--限量清零
function SpringFestivalEmoney_ClearGlobal()
	if not Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime"]) then
		return
	end
	
	Sys_ResetAllSynaGlobalData(tSpringFestivalEmoney_Cont["Global"])
end

--连接透明Npc移动到集中营按钮
function SpringFestivalEmoney_Claimed()
	local nLevel = tSpringFestivalEmoney_Cont["Level"]
	local nMetempsychosis = tSpringFestivalEmoney_Cont["Metempsychosis"]
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		Sys_MsgBox(tSpringFestivalEmoney_Text[23731]["Broadcast"])
		return
	end
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tValentinesDay2015_BiyiBirds_Text["BagFull"])
		return
	end
	
	local nNpcId = tSpringFestivalEmoney_Location["NpcId"]
	local nMapId = tSpringFestivalEmoney_Location["OriginalMapId"]
	local nPostX = tSpringFestivalEmoney_Location["Pos"]
	local nPostY = tSpringFestivalEmoney_Location["Pos"]
	Npc_MoveNpcPos(nNpcId,nMapId,nPostX,nPostY)
	
	--播放光效
	User_EffectAdd(tSpringFestivalEmoney_DyEffect["EffectObj"],tSpringFestivalEmoney_DyEffect["Effect"])
	
	--给奖励
	SpringFestivalEmoney_BossMonster()
end

--每三分钟刷新下npc
function SpringFestivalEmoney_RefreshNpc()
	if not Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime"]) then
		return
	end
	
	if not Sys_ChkDayTime(tActivityTime["SpringFestivalEmoney"]["DayTime"]) then
		return
	end
	
	local nNpcId = tSpringFestivalEmoney_Location["NpcId"]
	local nMapId
	local nPostX
	local nPostY
	
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tSpringFestivalEmoney_Location["NewMapId"]
		local flat,tNum = Probabil_RandomAward(tSpringFestivalEmoney_MoveNpc[nNpcId]["Reward"],1)
		nPostX = tNum[1]["tAward"][1]["Item_2"][1]
		nPostY = tNum[1]["tAward"][1]["Item_2"][2]
		-- 移动出相关npc
		Npc_MoveNpcPos(nNpcId,nMapId,nPostX,nPostY)
		
	else
		nMapId = tSpringFestivalEmoney_Location["MapId"]
		local flat,tNum = Probabil_RandomAward(tSpringFestivalEmoney_MoveNpc[nNpcId]["Reward"],1)
		nPostX = tNum[1]["tAward"][1]["Item_1"][1]
		nPostY = tNum[1]["tAward"][1]["Item_1"][2]
		--移动出相关npc
		Npc_MoveNpcPos(nNpcId,nMapId,nPostX,nPostY)
		
	end
	
end

--每天时间判断
function SpringFestivalEmoney_ChkDayTime()
	for k,v in pairs(tActivityTime["SpringFestivalEmoney"]["DayTime"]) do
		if Sys_ChkDayTime(v) then
			return true
		end
	end
	
	return false
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------

---------------------------------------------物品模块---------------------------------------------
--祥龙瑞鳞
tItem[3320111] = tItem[3320111] or {}
tItem[3320111]["Function"] = function(nItemId,sItemName)
	SpringFestivalEmoney_UseRandomItem(nItemId,sItemName)
end

--天石大放送邀请函
tItemFace[3320109] = 1718
tItem[3320109] = tItem[3320109] or {}
tItem[3320109]["DialogueText"] = tSpringFestivalEmoney_Text[3320109]
tItem[3320109]["Function"] = function(nItemId,sItemName)
	if not Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionRewardLog(string.format(tSpringFestivalEmoney_Log["DelItem"], nItemId))
			User_TalkChannel2005(tBackpackLetter_Text[nItemId]["OverTime"])
			Sys_MsgBox(tBackpackLetter_Text[nItemId]["OverTime"])
		end
		
		return
	end
	
	if SpecialServer_ChkNoGiftServer() then
		LinkItemGossipFunc_New(nItemId,"1-2")
	else
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3320109]["Text1-1"] = {111,112,113}
tItem[3320109]["tOption1-1"] = {111}
tItem[3320109]["OptionFunc111"] = "SpringFestivalEmoney_UseItem</N>3320109</N>9998"

tItem[3320109]["Text1-2"] = {121,122,123}
tItem[3320109]["tOption1-2"] = {121}
tItem[3320109]["OptionFunc121"] = "SpringFestivalEmoney_UseItem</N>3320109</N>23271"

--天石大放送升级令
-- tItemFace[3320110] = 1604
-- tItem[3320110] = tItem[3320110] or {}
-- tItem[3320110]["DialogueText"] = tSpringFestivalEmoney_Text[3320110]
-- tItem[3320110]["Function"] = function(nItemId,sItemName)
	-- if not Sys_ChkFullTime(tActivityTime["SpringFestivalEmoney"]["ActiveTime2"]) then
		-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			-- Sys_SaveActionRewardLog(string.format(tSpringFestivalEmoney_Log["DelItem"], nItemId))
			-- User_TalkChannel2005(tBackpackLetter_Text[nItemId]["OverTime"])
			-- Sys_MsgBox(tBackpackLetter_Text[nItemId]["OverTime"])
		-- end
		
		-- return
	-- end
	
	-- if SpecialServer_ChkNoGiftServer() then
		-- LinkItemGossipFunc_New(nItemId,"1-2")
	-- else
		-- LinkItemGossipFunc_New(nItemId,"1-1")
	-- end
-- end

-- tItem[3320110]["Text1-1"] = {111,112,113}
-- tItem[3320110]["tOption1-1"] = {111}
-- tItem[3320110]["OptionFunc111"] = "SpringFestivalEmoney_UseItem</N>3320110</N>9998"

-- tItem[3320110]["Text1-2"] = {121,122,123}
-- tItem[3320110]["tOption1-2"] = {121}
-- tItem[3320110]["OptionFunc121"] = "SpringFestivalEmoney_UseItem</N>3320110</N>23271"

---------------------------------------------怪物模块---------------------------------------------
--怪物模块
local tSpringFestivalEmoney_KillMonster = {}
	tSpringFestivalEmoney_KillMonster[1] = {}
	tSpringFestivalEmoney_KillMonster[1]["ActivityTime"] = tActivityTime["SpringFestivalEmoney"]["ActiveTime"]
	tSpringFestivalEmoney_KillMonster[1]["Function"]= SpringFestivalEmoney_DragonIslandMonster
	tSpringFestivalEmoney_KillMonster[1]["Area"] = {11}
	tSpringFestivalEmoney_KillMonster[2] = {}
	tSpringFestivalEmoney_KillMonster[2]["ActivityTime"] = tActivityTime["SpringFestivalEmoney"]["ActiveTime"]
	tSpringFestivalEmoney_KillMonster[2]["Function"]= SpringFestivalEmoney_DeitylandMonster
	tSpringFestivalEmoney_KillMonster[2]["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,8415,8420}
	-- tSpringFestivalEmoney_KillMonster[3] = {}
	-- tSpringFestivalEmoney_KillMonster[3]["ActivityTime"] = tActivityTime["SpringFestivalEmoney"]["ActiveTime"]
	-- tSpringFestivalEmoney_KillMonster[3]["Function"]= SpringFestivalEmoney_SmallMonster
	-- tSpringFestivalEmoney_KillMonster[3]["MonsterId"] = {3523}--英文无此配置
	-- tSpringFestivalEmoney_KillMonster[4] = {}
	-- tSpringFestivalEmoney_KillMonster[4]["ActivityTime"] = tActivityTime["SpringFestivalEmoney"]["ActiveTime"]
	-- tSpringFestivalEmoney_KillMonster[4]["Function"]= SpringFestivalEmoney_BossMonster
	-- tSpringFestivalEmoney_KillMonster[4]["MonsterId"] = {3524}--英文无此配置
	tSpringFestivalEmoney_KillMonster[5] = {}
	tSpringFestivalEmoney_KillMonster[5]["ActivityTime"] = tActivityTime["SpringFestivalEmoney"]["ActiveTime"]
	tSpringFestivalEmoney_KillMonster[5]["Function"]= SpringFestivalEmoney_BingFengMonster
	tSpringFestivalEmoney_KillMonster[5]["MonsterId"] = {4859,4860,4862,4863,4865,4867}
	
table.insert(tMonsterDrop_AreaLoad,tSpringFestivalEmoney_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tSpringFestivalEmoney_KillMonster[2])
-- table.insert(tMonsterDrop_AreaLoad,tSpringFestivalEmoney_KillMonster[3])
-- table.insert(tMonsterDrop_AreaLoad,tSpringFestivalEmoney_KillMonster[4])
table.insert(tMonsterDrop_AreaLoad,tSpringFestivalEmoney_KillMonster[5])

---------------------------------------------时间自检---------------------------------------------
local tSpringFestivalEmoney_OnTime = {}
	tSpringFestivalEmoney_OnTime["Type"] = 2
	tSpringFestivalEmoney_OnTime["TimeType"] = 5
	tSpringFestivalEmoney_OnTime["Multiple"] = {}
	tSpringFestivalEmoney_OnTime["Multiple"][1]  = "00 00"
	tSpringFestivalEmoney_OnTime["Func"] = SpringFestivalEmoney_ClearGlobal
	
table.insert(tSystemTime_InitialData,tSpringFestivalEmoney_OnTime)
	

--英文无此配置
-- local tSpringFestivalEmoney_MoveOnTime = {}
-- tSpringFestivalEmoney_MoveOnTime = {}
-- tSpringFestivalEmoney_MoveOnTime["Type"] = 2
-- tSpringFestivalEmoney_MoveOnTime["TimeType"] = 5
-- tSpringFestivalEmoney_MoveOnTime["Multiple"] = {}
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][1]  = "00 00"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][2]  = "00 03"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][3]  = "00 06"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][4]  = "00 09"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][5]  = "00 12"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][6]  = "00 15"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][7]  = "00 18"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][8]  = "00 21"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][9]  = "00 24"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][10] = "00 27"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][11] = "00 30"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][12]  = "00 33"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][13]  = "00 36"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][14]  = "00 39"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][15]  = "00 42"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][16]  = "00 45"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][17]  = "00 48"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][18]  = "00 51"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][19]  = "00 54"
-- tSpringFestivalEmoney_MoveOnTime["Multiple"][20]  = "00 57"
-- tSpringFestivalEmoney_MoveOnTime["Func"] = SpringFestivalEmoney_RefreshNpc
-- table.insert(tSystemTime_InitialData,tSpringFestivalEmoney_MoveOnTime)








