------------------------------------------------------------------------------------
--Name:			[简体征服][任务脚本]调整版本-日常减负
--Creator:		翁清海
--Created:		2018/06/25
------------------------------------------------------------------------------------

--命名前缀
--DailyAlleviate_

--logid:12001103

--------------------------------------------数据部分配置--------------------------------------------
local tDailyAlleviate_Cont = {}
	tDailyAlleviate_Cont["Level"] = 15
	tDailyAlleviate_Cont["Metempsychosis"] = 2
	--新服动态码
	tDailyAlleviate_Cont["NewGlobal"] = 51131
	--活跃包限制动态码
	tDailyAlleviate_Cont["ActiveGlobal"] = 52746
	tDailyAlleviate_Cont["ActiveLimit"] = 2
	--每日黄金积分上限
	tDailyAlleviate_Cont["MaxPoint"] = 650
	--免费修炼次数
	tDailyAlleviate_Cont["FreePractNum"] = 10000
	--传送
	tDailyAlleviate_Cont["Trans"] = {}
	tDailyAlleviate_Cont["Trans"]["MapId"] = 1002
	tDailyAlleviate_Cont["Trans"]["BoundX"] = 372
	tDailyAlleviate_Cont["Trans"]["BoundY"] = 363
	--竞技场
	tDailyAlleviate_Cont["PkMapdoc"] = 900000
	
local tDailyAlleviate_Log = {}
	tDailyAlleviate_Log["FreePract"] = "0,0,0,0,12001103,2,17,%d"
	
local tDailyAlleviate_Stc = {}
	tDailyAlleviate_Stc["DailyTask"] = {}
	--幽兰花开
	tDailyAlleviate_Stc["DailyTask"][1] = {}
	tDailyAlleviate_Stc["DailyTask"][1]["Event"] = 106
	tDailyAlleviate_Stc["DailyTask"][1]["Type"] = 99
	tDailyAlleviate_Stc["DailyTask"][1]["Data"] = 20
	tDailyAlleviate_Stc["DailyTask"][1]["Func"] = ActivityDailyItemUse_YLHKTask
	tDailyAlleviate_Stc["DailyTask"][1]["Space"] = 4
	tDailyAlleviate_Stc["DailyTask"][1]["NewSpace"] = 5
	--赤龙寻宝
	tDailyAlleviate_Stc["DailyTask"][2] = {}
	tDailyAlleviate_Stc["DailyTask"][2]["Event"] = 143
	tDailyAlleviate_Stc["DailyTask"][2]["Type"] = 91
	tDailyAlleviate_Stc["DailyTask"][2]["BeyondData"] = 1
	tDailyAlleviate_Stc["DailyTask"][2]["Func"] = NewTaskItem_FindTreasure
	tDailyAlleviate_Stc["DailyTask"][2]["FrontFunc"] = NewTaskItem_TaskCondit
	tDailyAlleviate_Stc["DailyTask"][2]["Space"] = 2
	--玩家增加的黄金联赛积分
	tDailyAlleviate_Stc["GoldenLeaguePoints"] = {}
	tDailyAlleviate_Stc["GoldenLeaguePoints"]["EventType"] = 137
	tDailyAlleviate_Stc["GoldenLeaguePoints"]["DataType"] = 31
	
local tDailyAlleviate_TaskDetail = {}
	tDailyAlleviate_TaskDetail["DailyTask"] = {}
	--古来征战几人回
	tDailyAlleviate_TaskDetail["DailyTask"][3] = {}
	tDailyAlleviate_TaskDetail["DailyTask"][3]["Id"] = {6769,6049}
	tDailyAlleviate_TaskDetail["DailyTask"][3]["Complete"] = 2
	tDailyAlleviate_TaskDetail["DailyTask"][3]["Data6"] = 0
	tDailyAlleviate_TaskDetail["DailyTask"][3]["Func"] = ActivityDailyItemUse_ZZTask
	tDailyAlleviate_TaskDetail["DailyTask"][3]["Space"] = 1
	tDailyAlleviate_TaskDetail["DailyTask"][3]["NewSpace"] = 2
	--替天行道镇妖魂
	tDailyAlleviate_TaskDetail["DailyTask"][4] = {}
	tDailyAlleviate_TaskDetail["DailyTask"][4]["Id"] = 2375
	tDailyAlleviate_TaskDetail["DailyTask"][4]["Complete"] = 1
	tDailyAlleviate_TaskDetail["DailyTask"][4]["Interval"] = 1
	tDailyAlleviate_TaskDetail["DailyTask"][4]["Func"] = FirstPerson_UseFiveLeiZhenSoul
	tDailyAlleviate_TaskDetail["DailyTask"][4]["Space"] = 1
	--材料收集
	tDailyAlleviate_TaskDetail["DailyTask"][5] = {}
	tDailyAlleviate_TaskDetail["DailyTask"][5]["Id"] = 6245
	tDailyAlleviate_TaskDetail["DailyTask"][5]["Complete"] = 1
	tDailyAlleviate_TaskDetail["DailyTask"][5]["Data6"] = 0
	tDailyAlleviate_TaskDetail["DailyTask"][5]["Func"] = ActivityDailyItemUse_CLCollect
	tDailyAlleviate_TaskDetail["DailyTask"][5]["Space"] = 1
	tDailyAlleviate_TaskDetail["DailyTask"][5]["NewSpace"] = 2
	--募集物资
	tDailyAlleviate_TaskDetail["DailyTask"][6] = {}
	tDailyAlleviate_TaskDetail["DailyTask"][6]["Id"] = 6366
	tDailyAlleviate_TaskDetail["DailyTask"][6]["Complete"] = 1
	tDailyAlleviate_TaskDetail["DailyTask"][6]["Data6"] = 0
	tDailyAlleviate_TaskDetail["DailyTask"][6]["Func"] = ActivityDailyItemUse_Open
	tDailyAlleviate_TaskDetail["DailyTask"][6]["Space"] = 2
	tDailyAlleviate_TaskDetail["DailyTask"][6]["NewSpace"] = 3
	
--随机
local tDailyAlleviate_Prob = {}
	tDailyAlleviate_Prob[3309843] = {}
	tDailyAlleviate_Prob[3309843][1] = {}
	tDailyAlleviate_Prob[3309843][1]["ItemChanceSum"] = 10000
	tDailyAlleviate_Prob[3309843][1][1] = {}
	tDailyAlleviate_Prob[3309843][1][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][1]["ItemChance"] = 412
	tDailyAlleviate_Prob[3309843][1][1]["Item_1"] = 1
	tDailyAlleviate_Prob[3309843][1][2] = {}
	tDailyAlleviate_Prob[3309843][1][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][2]["ItemChance"] = 780
	tDailyAlleviate_Prob[3309843][1][2]["Item_1"] = 2
	tDailyAlleviate_Prob[3309843][1][3] = {}
	tDailyAlleviate_Prob[3309843][1][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][3]["ItemChance"] = 30
	tDailyAlleviate_Prob[3309843][1][3]["Item_1"] = 3
	tDailyAlleviate_Prob[3309843][1][4] = {}
	tDailyAlleviate_Prob[3309843][1][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][4]["ItemChance"] = 1560
	tDailyAlleviate_Prob[3309843][1][4]["Item_1"] = 4
	tDailyAlleviate_Prob[3309843][1][5] = {}
	tDailyAlleviate_Prob[3309843][1][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][5]["ItemChance"] = 1563
	tDailyAlleviate_Prob[3309843][1][5]["Item_1"] = 5
	tDailyAlleviate_Prob[3309843][1][6] = {}
	tDailyAlleviate_Prob[3309843][1][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][6]["ItemChance"] = 1380
	tDailyAlleviate_Prob[3309843][1][6]["Item_1"] = 6
	tDailyAlleviate_Prob[3309843][1][7] = {}
	tDailyAlleviate_Prob[3309843][1][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][7]["ItemChance"] = 780
	tDailyAlleviate_Prob[3309843][1][7]["Item_1"] = 7
	tDailyAlleviate_Prob[3309843][1][8] = {}
	tDailyAlleviate_Prob[3309843][1][8]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][8]["ItemChance"] = 780
	tDailyAlleviate_Prob[3309843][1][8]["Item_1"] = 8
	tDailyAlleviate_Prob[3309843][1][9] = {}
	tDailyAlleviate_Prob[3309843][1][9]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][9]["ItemChance"] = 375
	tDailyAlleviate_Prob[3309843][1][9]["Item_1"] = 9
	tDailyAlleviate_Prob[3309843][1][10] = {}
	tDailyAlleviate_Prob[3309843][1][10]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][10]["ItemChance"] = 1560
	tDailyAlleviate_Prob[3309843][1][10]["Item_1"] = 10
	tDailyAlleviate_Prob[3309843][1][11] = {}
	tDailyAlleviate_Prob[3309843][1][11]["RandomItemChanceType"] = 2
	tDailyAlleviate_Prob[3309843][1][11]["ItemChance"] = 780
	tDailyAlleviate_Prob[3309843][1][11]["Item_1"] = 11
	
local tDailyAlleviate_Reward = {}
	--琅嬛福地礼包
	tDailyAlleviate_Reward[3309842] = {}
	tDailyAlleviate_Reward[3309842][1] = {}
	tDailyAlleviate_Reward[3309842][1]["DeleteItem"] = {}
	tDailyAlleviate_Reward[3309842][1]["DeleteItem"][1] = {}
	tDailyAlleviate_Reward[3309842][1]["DeleteItem"][1]["Id"] = 3309842
	tDailyAlleviate_Reward[3309842][1]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309842][1]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309842][1]["RewardItem"][1]["Id"] = 729304
	tDailyAlleviate_Reward[3309842][1]["RewardItem"][1]["Attr"] = "0 1"
	tDailyAlleviate_Reward[3309842][1]["RewardExpTime"] = {}
	tDailyAlleviate_Reward[3309842][1]["RewardExpTime"]["Value"] = 150
	tDailyAlleviate_Reward[3309842][1]["RewardZhenQi"] = {}
	tDailyAlleviate_Reward[3309842][1]["RewardZhenQi"]["Value"] = 2
	tDailyAlleviate_Reward[3309842][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309842][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309842][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309842][1]["LogId"] = 12001103
	tDailyAlleviate_Reward[3309842][2] = {}
	tDailyAlleviate_Reward[3309842][2]["DeleteItem"] = {}
	tDailyAlleviate_Reward[3309842][2]["DeleteItem"][1] = {}
	tDailyAlleviate_Reward[3309842][2]["DeleteItem"][1]["Id"] = 3309842
	tDailyAlleviate_Reward[3309842][2]["DeleteItem"][2] = {}
	tDailyAlleviate_Reward[3309842][2]["DeleteItem"][2]["Id"] = 3002308
	tDailyAlleviate_Reward[3309842][2]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309842][2]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309842][2]["RewardItem"][1]["Id"] = 729304
	tDailyAlleviate_Reward[3309842][2]["RewardItem"][1]["Attr"] = "0 1"
	tDailyAlleviate_Reward[3309842][2]["RewardExpTime"] = {}
	tDailyAlleviate_Reward[3309842][2]["RewardExpTime"]["Value"] = 300
	tDailyAlleviate_Reward[3309842][2]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309842][2]["RewardStrengthValue"]["Value"] = 100
	tDailyAlleviate_Reward[3309842][2]["RewardZhenQi"] = {}
	tDailyAlleviate_Reward[3309842][2]["RewardZhenQi"]["Value"] = 3
	tDailyAlleviate_Reward[3309842][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309842][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309842][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309842][2]["LogId"] = 12001103
	--鸿运当头活跃包
	tDailyAlleviate_Reward[3309843] = {}
	--50气力值
	tDailyAlleviate_Reward[3309843][1] = {}
	tDailyAlleviate_Reward[3309843][1]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][1][1] = {}
	tDailyAlleviate_Reward[3309843][1][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][1][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][1][1]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309843][1][1]["RewardStrengthValue"]["Value"] = 100
	tDailyAlleviate_Reward[3309843][1][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][1][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][1][1]["Log"] = "0,0,3309843,1,12001103,2,12,100"
	tDailyAlleviate_Reward[3309843][1][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][1][2] = {}
	tDailyAlleviate_Reward[3309843][1][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][1][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][1][2]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309843][1][2]["RewardStrengthValue"]["Value"] = 200
	tDailyAlleviate_Reward[3309843][1][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][1][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][1][2]["Log"] = "0,0,3309843,1,12001103,2,12,200"
	tDailyAlleviate_Reward[3309843][1][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][1][3] = {}
	tDailyAlleviate_Reward[3309843][1][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][1][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][1][3]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309843][1][3]["RewardStrengthValue"]["Value"] = 400
	tDailyAlleviate_Reward[3309843][1][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][1][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][1][3]["Log"] = "0,0,3309843,1,12001103,2,12,400"
	tDailyAlleviate_Reward[3309843][1][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][1][4] = {}
	tDailyAlleviate_Reward[3309843][1][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][1][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][1][4]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309843][1][4]["RewardStrengthValue"]["Value"] = 800
	tDailyAlleviate_Reward[3309843][1][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][1][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][1][4]["Log"] = "0,0,3309843,1,12001103,2,12,800"
	tDailyAlleviate_Reward[3309843][1][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][1][5] = {}
	tDailyAlleviate_Reward[3309843][1][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][1][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][1][5]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309843][1][5]["RewardStrengthValue"]["Value"] = 1600
	tDailyAlleviate_Reward[3309843][1][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][1][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][1][5]["Log"] = "0,0,3309843,1,12001103,2,12,1600"
	tDailyAlleviate_Reward[3309843][1][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][1][6] = {}
	tDailyAlleviate_Reward[3309843][1][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][1][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][1][6]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309843][1][6]["RewardStrengthValue"]["Value"] = 3200
	tDailyAlleviate_Reward[3309843][1][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][1][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][1][6]["Log"] = "0,0,3309843,1,12001103,2,12,3200"
	tDailyAlleviate_Reward[3309843][1][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][1][7] = {}
	tDailyAlleviate_Reward[3309843][1][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][1][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][1][7]["RewardStrengthValue"] = {}
	tDailyAlleviate_Reward[3309843][1][7]["RewardStrengthValue"]["Value"] = 6400
	tDailyAlleviate_Reward[3309843][1][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][1][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][1][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][1][7]["Log"] = "0,0,3309843,1,12001103,2,12,6400"
	tDailyAlleviate_Reward[3309843][1][7]["Times"] = 128
	--普通宝石
	tDailyAlleviate_Reward[3309843][2] = {}
	tDailyAlleviate_Reward[3309843][2]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][2][1] = {}
	tDailyAlleviate_Reward[3309843][2][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][2][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][2][1]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][2][1]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][2][1]["RewardItem"][1]["Id"] = 3003875
	tDailyAlleviate_Reward[3309843][2][1]["RewardItem"][1]["Attr"] = "0 2"
	tDailyAlleviate_Reward[3309843][2][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][2][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][2][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][2][1]["Log"] = "0,0,3309843,1,12001103,2,3003875,2"
	tDailyAlleviate_Reward[3309843][2][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][2][2] = {}
	tDailyAlleviate_Reward[3309843][2][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][2][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][2][2]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][2][2]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][2][2]["RewardItem"][1]["Id"] = 3003875
	tDailyAlleviate_Reward[3309843][2][2]["RewardItem"][1]["Attr"] = "0 4"
	tDailyAlleviate_Reward[3309843][2][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][2][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][2][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][2][2]["Log"] = "0,0,3309843,1,12001103,2,3003875,4"
	tDailyAlleviate_Reward[3309843][2][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][2][3] = {}
	tDailyAlleviate_Reward[3309843][2][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][2][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][2][3]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][2][3]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][2][3]["RewardItem"][1]["Id"] = 3003875
	tDailyAlleviate_Reward[3309843][2][3]["RewardItem"][1]["Attr"] = "0 8"
	tDailyAlleviate_Reward[3309843][2][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][2][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][2][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][2][3]["Log"] = "0,0,3309843,1,12001103,2,3003875,8"
	tDailyAlleviate_Reward[3309843][2][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][2][4] = {}
	tDailyAlleviate_Reward[3309843][2][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][2][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][2][4]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][2][4]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][2][4]["RewardItem"][1]["Id"] = 3005066
	tDailyAlleviate_Reward[3309843][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tDailyAlleviate_Reward[3309843][2][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][2][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][2][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][2][4]["Log"] = "0,0,3309843,1,12001103,2,3005066,1"
	tDailyAlleviate_Reward[3309843][2][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][2][5] = {}
	tDailyAlleviate_Reward[3309843][2][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][2][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][2][5]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][2][5]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][2][5]["RewardItem"][1]["Id"] = 3005066
	tDailyAlleviate_Reward[3309843][2][5]["RewardItem"][1]["Attr"] = "0 2"
	tDailyAlleviate_Reward[3309843][2][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][2][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][2][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][2][5]["Log"] = "0,0,3309843,1,12001103,2,3005066,2"
	tDailyAlleviate_Reward[3309843][2][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][2][6] = {}
	tDailyAlleviate_Reward[3309843][2][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][2][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][2][6]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][2][6]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][2][6]["RewardItem"][1]["Id"] = 3005066
	tDailyAlleviate_Reward[3309843][2][6]["RewardItem"][1]["Attr"] = "0 4"
	tDailyAlleviate_Reward[3309843][2][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][2][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][2][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][2][6]["Log"] = "0,0,3309843,1,12001103,2,3005066,4"
	tDailyAlleviate_Reward[3309843][2][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][2][7] = {}
	tDailyAlleviate_Reward[3309843][2][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][2][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][2][7]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][2][7]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][2][7]["RewardItem"][1]["Id"] = 3005066
	tDailyAlleviate_Reward[3309843][2][7]["RewardItem"][1]["Attr"] = "0 8"
	tDailyAlleviate_Reward[3309843][2][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][2][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][2][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][2][7]["Log"] = "0,0,3309843,1,12001103,2,3005066,8"
	tDailyAlleviate_Reward[3309843][2][7]["Times"] = 128
	--龙珠 全服上限2个，达到上限给流星 80133 1
	tDailyAlleviate_Reward[3309843][3] = {}
	tDailyAlleviate_Reward[3309843][3]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][3][1] = {}
	tDailyAlleviate_Reward[3309843][3][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][3][1]["ItemChance"] = 8643
	tDailyAlleviate_Reward[3309843][3][1]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][3][1]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][3][1]["RewardItem"][1]["Id"] = 1088000
	tDailyAlleviate_Reward[3309843][3][1]["RewardItem"][1]["Attr"] = "0 2"
	tDailyAlleviate_Reward[3309843][3][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][3][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][3][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][3][1]["Log"] = "0,0,3309843,1,12001103,2,1088000,2"
	tDailyAlleviate_Reward[3309843][3][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][3][2] = {}
	tDailyAlleviate_Reward[3309843][3][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][3][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][3][2]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][3][2]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][3][2]["RewardItem"][1]["Id"] = 1088000
	tDailyAlleviate_Reward[3309843][3][2]["RewardItem"][1]["Attr"] = "0 4"
	tDailyAlleviate_Reward[3309843][3][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][3][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][3][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][3][2]["Log"] = "0,0,3309843,1,12001103,2,1088000,4"
	tDailyAlleviate_Reward[3309843][3][2]["Times"] = 4
	--5颗流星
	tDailyAlleviate_Reward[3309843][4] = {}
	tDailyAlleviate_Reward[3309843][4]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][4][1] = {}
	tDailyAlleviate_Reward[3309843][4][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][4][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][4][1]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][4][1]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][4][1]["RewardItem"][1]["Id"] = 720027
	tDailyAlleviate_Reward[3309843][4][1]["RewardItem"][1]["Attr"] = "0 1"
	tDailyAlleviate_Reward[3309843][4][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][4][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][4][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][4][1]["Log"] = "0,0,3309843,1,12001103,2,720027,1"
	tDailyAlleviate_Reward[3309843][4][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][4][2] = {}
	tDailyAlleviate_Reward[3309843][4][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][4][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][4][2]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][4][2]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][4][2]["RewardItem"][1]["Id"] = 720027
	tDailyAlleviate_Reward[3309843][4][2]["RewardItem"][1]["Attr"] = "0 2"
	tDailyAlleviate_Reward[3309843][4][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][4][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][4][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][4][2]["Log"] = "0,0,3309843,1,12001103,2,720027,2"
	tDailyAlleviate_Reward[3309843][4][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][4][3] = {}
	tDailyAlleviate_Reward[3309843][4][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][4][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][4][3]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][4][3]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][4][3]["RewardItem"][1]["Id"] = 720027
	tDailyAlleviate_Reward[3309843][4][3]["RewardItem"][1]["Attr"] = "0 4"
	tDailyAlleviate_Reward[3309843][4][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][4][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][4][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][4][3]["Log"] = "0,0,3309843,1,12001103,2,720027,4"
	tDailyAlleviate_Reward[3309843][4][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][4][4] = {}
	tDailyAlleviate_Reward[3309843][4][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][4][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][4][4]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][4][4]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][4][4]["RewardItem"][1]["Id"] = 720027
	tDailyAlleviate_Reward[3309843][4][4]["RewardItem"][1]["Attr"] = "0 8"
	tDailyAlleviate_Reward[3309843][4][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][4][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][4][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][4][4]["Log"] = "0,0,3309843,1,12001103,2,720027,8"
	tDailyAlleviate_Reward[3309843][4][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][4][5] = {}
	tDailyAlleviate_Reward[3309843][4][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][4][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][4][5]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][4][5]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][4][5]["RewardItem"][1]["Id"] = 3005068
	tDailyAlleviate_Reward[3309843][4][5]["RewardItem"][1]["Attr"] = "0 1"
	tDailyAlleviate_Reward[3309843][4][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][4][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][4][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][4][5]["Log"] = "0,0,3309843,1,12001103,2,3005068,1"
	tDailyAlleviate_Reward[3309843][4][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][4][6] = {}
	tDailyAlleviate_Reward[3309843][4][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][4][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][4][6]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][4][6]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][4][6]["RewardItem"][1]["Id"] = 3005068
	tDailyAlleviate_Reward[3309843][4][6]["RewardItem"][1]["Attr"] = "0 2"
	tDailyAlleviate_Reward[3309843][4][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][4][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][4][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][4][6]["Log"] = "0,0,3309843,1,12001103,2,3005068,2"
	tDailyAlleviate_Reward[3309843][4][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][4][7] = {}
	tDailyAlleviate_Reward[3309843][4][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][4][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][4][7]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][4][7]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][4][7]["RewardItem"][1]["Id"] = 3005068
	tDailyAlleviate_Reward[3309843][4][7]["RewardItem"][1]["Attr"] = "0 4"
	tDailyAlleviate_Reward[3309843][4][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][4][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][4][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][4][7]["Log"] = "0,0,3309843,1,12001103,2,3005068,4"
	tDailyAlleviate_Reward[3309843][4][7]["Times"] = 128
	--5天祝福
	tDailyAlleviate_Reward[3309843][5] = {}
	tDailyAlleviate_Reward[3309843][5]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][5][1] = {}
	tDailyAlleviate_Reward[3309843][5][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][5][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][5][1]["RewardBless"] = {}
	tDailyAlleviate_Reward[3309843][5][1]["RewardBless"]["Value"] = 240
	tDailyAlleviate_Reward[3309843][5][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][5][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][5][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][5][1]["Log"] = "0,0,3309843,1,12001103,2,5,240"
	tDailyAlleviate_Reward[3309843][5][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][5][2] = {}
	tDailyAlleviate_Reward[3309843][5][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][5][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][5][2]["RewardBless"] = {}
	tDailyAlleviate_Reward[3309843][5][2]["RewardBless"]["Value"] = 480
	tDailyAlleviate_Reward[3309843][5][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][5][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][5][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][5][2]["Log"] = "0,0,3309843,1,12001103,2,5,480"
	tDailyAlleviate_Reward[3309843][5][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][5][3] = {}
	tDailyAlleviate_Reward[3309843][5][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][5][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][5][3]["RewardBless"] = {}
	tDailyAlleviate_Reward[3309843][5][3]["RewardBless"]["Value"] = 960
	tDailyAlleviate_Reward[3309843][5][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][5][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][5][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][5][3]["Log"] = "0,0,3309843,1,12001103,2,5,960"
	tDailyAlleviate_Reward[3309843][5][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][5][4] = {}
	tDailyAlleviate_Reward[3309843][5][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][5][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][5][4]["RewardBless"] = {}
	tDailyAlleviate_Reward[3309843][5][4]["RewardBless"]["Value"] = 1920
	tDailyAlleviate_Reward[3309843][5][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][5][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][5][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][5][4]["Log"] = "0,0,3309843,1,12001103,2,5,1920"
	tDailyAlleviate_Reward[3309843][5][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][5][5] = {}
	tDailyAlleviate_Reward[3309843][5][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][5][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][5][5]["RewardBless"] = {}
	tDailyAlleviate_Reward[3309843][5][5]["RewardBless"]["Value"] = 3840
	tDailyAlleviate_Reward[3309843][5][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][5][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][5][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][5][5]["Log"] = "0,0,3309843,1,12001103,2,5,3840"
	tDailyAlleviate_Reward[3309843][5][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][5][6] = {}
	tDailyAlleviate_Reward[3309843][5][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][5][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][5][6]["RewardBless"] = {}
	tDailyAlleviate_Reward[3309843][5][6]["RewardBless"]["Value"] = 7680
	tDailyAlleviate_Reward[3309843][5][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][5][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][5][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][5][6]["Log"] = "0,0,3309843,1,12001103,2,5,7680"
	tDailyAlleviate_Reward[3309843][5][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][5][7] = {}
	tDailyAlleviate_Reward[3309843][5][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][5][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][5][7]["RewardBless"] = {}
	tDailyAlleviate_Reward[3309843][5][7]["RewardBless"]["Value"] = 15360
	tDailyAlleviate_Reward[3309843][5][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][5][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][5][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][5][7]["Log"] = "0,0,3309843,1,12001103,2,5,15360"
	tDailyAlleviate_Reward[3309843][5][7]["Times"] = 128
	--200修行值
	tDailyAlleviate_Reward[3309843][6] = {}
	tDailyAlleviate_Reward[3309843][6]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][6][1] = {}
	tDailyAlleviate_Reward[3309843][6][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][6][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][6][1]["RewardCultivation"] = {}
	tDailyAlleviate_Reward[3309843][6][1]["RewardCultivation"]["Value"] = 400
	tDailyAlleviate_Reward[3309843][6][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][6][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][6][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][6][1]["Log"] = "0,0,3309843,1,12001103,2,6,400"
	tDailyAlleviate_Reward[3309843][6][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][6][2] = {}
	tDailyAlleviate_Reward[3309843][6][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][6][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][6][2]["RewardCultivation"] = {}
	tDailyAlleviate_Reward[3309843][6][2]["RewardCultivation"]["Value"] = 800
	tDailyAlleviate_Reward[3309843][6][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][6][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][6][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][6][2]["Log"] = "0,0,3309843,1,12001103,2,6,800"
	tDailyAlleviate_Reward[3309843][6][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][6][3] = {}
	tDailyAlleviate_Reward[3309843][6][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][6][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][6][3]["RewardCultivation"] = {}
	tDailyAlleviate_Reward[3309843][6][3]["RewardCultivation"]["Value"] = 1600
	tDailyAlleviate_Reward[3309843][6][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][6][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][6][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][6][3]["Log"] = "0,0,3309843,1,12001103,2,6,1600"
	tDailyAlleviate_Reward[3309843][6][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][6][4] = {}
	tDailyAlleviate_Reward[3309843][6][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][6][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][6][4]["RewardCultivation"] = {}
	tDailyAlleviate_Reward[3309843][6][4]["RewardCultivation"]["Value"] = 3200
	tDailyAlleviate_Reward[3309843][6][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][6][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][6][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][6][4]["Log"] = "0,0,3309843,1,12001103,2,6,3200"
	tDailyAlleviate_Reward[3309843][6][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][6][5] = {}
	tDailyAlleviate_Reward[3309843][6][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][6][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][6][5]["RewardCultivation"] = {}
	tDailyAlleviate_Reward[3309843][6][5]["RewardCultivation"]["Value"] = 6400
	tDailyAlleviate_Reward[3309843][6][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][6][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][6][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][6][5]["Log"] = "0,0,3309843,1,12001103,2,6,6400"
	tDailyAlleviate_Reward[3309843][6][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][6][6] = {}
	tDailyAlleviate_Reward[3309843][6][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][6][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][6][6]["RewardCultivation"] = {}
	tDailyAlleviate_Reward[3309843][6][6]["RewardCultivation"]["Value"] = 12800
	tDailyAlleviate_Reward[3309843][6][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][6][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][6][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][6][6]["Log"] = "0,0,3309843,1,12001103,2,6,12800"
	tDailyAlleviate_Reward[3309843][6][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][6][7] = {}
	tDailyAlleviate_Reward[3309843][6][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][6][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][6][7]["RewardCultivation"] = {}
	tDailyAlleviate_Reward[3309843][6][7]["RewardCultivation"]["Value"] = 25600
	tDailyAlleviate_Reward[3309843][6][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][6][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][6][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][6][7]["Log"] = "0,0,3309843,1,12001103,2,6,25600"
	tDailyAlleviate_Reward[3309843][6][7]["Times"] = 128
	--200赛马积分
	tDailyAlleviate_Reward[3309843][7] = {}
	tDailyAlleviate_Reward[3309843][7]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][7][1] = {}
	tDailyAlleviate_Reward[3309843][7][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][7][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][7][1]["RewardRidingPoint"] = {}
	tDailyAlleviate_Reward[3309843][7][1]["RewardRidingPoint"]["Value"] = 400
	tDailyAlleviate_Reward[3309843][7][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][7][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][7][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][7][1]["Log"] = "0,0,3309843,1,12001103,2,14,400"
	tDailyAlleviate_Reward[3309843][7][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][7][2] = {}
	tDailyAlleviate_Reward[3309843][7][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][7][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][7][2]["RewardRidingPoint"] = {}
	tDailyAlleviate_Reward[3309843][7][2]["RewardRidingPoint"]["Value"] = 800
	tDailyAlleviate_Reward[3309843][7][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][7][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][7][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][7][2]["Log"] = "0,0,3309843,1,12001103,2,14,800"
	tDailyAlleviate_Reward[3309843][7][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][7][3] = {}
	tDailyAlleviate_Reward[3309843][7][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][7][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][7][3]["RewardRidingPoint"] = {}
	tDailyAlleviate_Reward[3309843][7][3]["RewardRidingPoint"]["Value"] = 1600
	tDailyAlleviate_Reward[3309843][7][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][7][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][7][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][7][3]["Log"] = "0,0,3309843,1,12001103,2,14,1600"
	tDailyAlleviate_Reward[3309843][7][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][7][4] = {}
	tDailyAlleviate_Reward[3309843][7][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][7][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][7][4]["RewardRidingPoint"] = {}
	tDailyAlleviate_Reward[3309843][7][4]["RewardRidingPoint"]["Value"] = 3200
	tDailyAlleviate_Reward[3309843][7][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][7][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][7][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][7][4]["Log"] = "0,0,3309843,1,12001103,2,14,3200"
	tDailyAlleviate_Reward[3309843][7][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][7][5] = {}
	tDailyAlleviate_Reward[3309843][7][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][7][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][7][5]["RewardRidingPoint"] = {}
	tDailyAlleviate_Reward[3309843][7][5]["RewardRidingPoint"]["Value"] = 6400
	tDailyAlleviate_Reward[3309843][7][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][7][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][7][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][7][5]["Log"] = "0,0,3309843,1,12001103,2,14,6400"
	tDailyAlleviate_Reward[3309843][7][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][7][6] = {}
	tDailyAlleviate_Reward[3309843][7][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][7][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][7][6]["RewardRidingPoint"] = {}
	tDailyAlleviate_Reward[3309843][7][6]["RewardRidingPoint"]["Value"] = 12800
	tDailyAlleviate_Reward[3309843][7][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][7][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][7][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][7][6]["Log"] = "0,0,3309843,1,12001103,2,14,12800"
	tDailyAlleviate_Reward[3309843][7][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][7][7] = {}
	tDailyAlleviate_Reward[3309843][7][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][7][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][7][7]["RewardRidingPoint"] = {}
	tDailyAlleviate_Reward[3309843][7][7]["RewardRidingPoint"]["Value"] = 25600
	tDailyAlleviate_Reward[3309843][7][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][7][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][7][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][7][7]["Log"] = "0,0,3309843,1,12001103,2,14,25600"
	tDailyAlleviate_Reward[3309843][7][7]["Times"] = 128
	--20天石赠
	tDailyAlleviate_Reward[3309843][8] = {}
	tDailyAlleviate_Reward[3309843][8]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][8][1] = {}
	tDailyAlleviate_Reward[3309843][8][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][8][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][8][1]["RewardEMoneyMono"] = {}
	tDailyAlleviate_Reward[3309843][8][1]["RewardEMoneyMono"]["Value"] = 40
	tDailyAlleviate_Reward[3309843][8][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][8][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][8][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][8][1]["Log"] = "0,0,3309843,1,12001103,2,3,40"
	tDailyAlleviate_Reward[3309843][8][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][8][2] = {}
	tDailyAlleviate_Reward[3309843][8][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][8][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][8][2]["RewardEMoneyMono"] = {}
	tDailyAlleviate_Reward[3309843][8][2]["RewardEMoneyMono"]["Value"] = 80
	tDailyAlleviate_Reward[3309843][8][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][8][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][8][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][8][2]["Log"] = "0,0,3309843,1,12001103,2,3,80"
	tDailyAlleviate_Reward[3309843][8][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][8][3] = {}
	tDailyAlleviate_Reward[3309843][8][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][8][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][8][3]["RewardEMoneyMono"] = {}
	tDailyAlleviate_Reward[3309843][8][3]["RewardEMoneyMono"]["Value"] = 160
	tDailyAlleviate_Reward[3309843][8][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][8][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][8][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][8][3]["Log"] = "0,0,3309843,1,12001103,2,3,160"
	tDailyAlleviate_Reward[3309843][8][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][8][4] = {}
	tDailyAlleviate_Reward[3309843][8][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][8][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][8][4]["RewardEMoneyMono"] = {}
	tDailyAlleviate_Reward[3309843][8][4]["RewardEMoneyMono"]["Value"] = 320
	tDailyAlleviate_Reward[3309843][8][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][8][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][8][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][8][4]["Log"] = "0,0,3309843,1,12001103,2,3,320"
	tDailyAlleviate_Reward[3309843][8][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][8][5] = {}
	tDailyAlleviate_Reward[3309843][8][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][8][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][8][5]["RewardEMoneyMono"] = {}
	tDailyAlleviate_Reward[3309843][8][5]["RewardEMoneyMono"]["Value"] = 640
	tDailyAlleviate_Reward[3309843][8][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][8][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][8][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][8][5]["Log"] = "0,0,3309843,1,12001103,2,3,640"
	tDailyAlleviate_Reward[3309843][8][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][8][6] = {}
	tDailyAlleviate_Reward[3309843][8][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][8][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][8][6]["RewardEMoneyMono"] = {}
	tDailyAlleviate_Reward[3309843][8][6]["RewardEMoneyMono"]["Value"] = 1280
	tDailyAlleviate_Reward[3309843][8][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][8][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][8][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][8][6]["Log"] = "0,0,3309843,1,12001103,2,3,1280"
	tDailyAlleviate_Reward[3309843][8][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][8][7] = {}
	tDailyAlleviate_Reward[3309843][8][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][8][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][8][7]["RewardEMoneyMono"] = {}
	tDailyAlleviate_Reward[3309843][8][7]["RewardEMoneyMono"]["Value"] = 2560
	tDailyAlleviate_Reward[3309843][8][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][8][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][8][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][8][7]["Log"] = "0,0,3309843,1,12001103,2,3,2560"
	tDailyAlleviate_Reward[3309843][8][7]["Times"] = 128
	--+1赤炼石赠
	tDailyAlleviate_Reward[3309843][9] = {}
	tDailyAlleviate_Reward[3309843][9]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][9][1] = {}
	tDailyAlleviate_Reward[3309843][9][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][9][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][9][1]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][9][1]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][9][1]["RewardItem"][1]["Id"] = 730001
	tDailyAlleviate_Reward[3309843][9][1]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tDailyAlleviate_Reward[3309843][9][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][9][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][9][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][9][1]["Log"] = "0,0,3309843,1,12001103,2,730001,2"
	tDailyAlleviate_Reward[3309843][9][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][9][2] = {}
	tDailyAlleviate_Reward[3309843][9][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][9][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][9][2]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][9][2]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][9][2]["RewardItem"][1]["Id"] = 730001
	tDailyAlleviate_Reward[3309843][9][2]["RewardItem"][1]["Attr"] = "0 4 3 10080 1"
	tDailyAlleviate_Reward[3309843][9][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][9][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][9][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][9][2]["Log"] = "0,0,3309843,1,12001103,2,730001,4"
	tDailyAlleviate_Reward[3309843][9][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][9][3] = {}
	tDailyAlleviate_Reward[3309843][9][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][9][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][9][3]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][9][3]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][9][3]["RewardItem"][1]["Id"] = 730001
	tDailyAlleviate_Reward[3309843][9][3]["RewardItem"][1]["Attr"] = "0 8 3 10080 1"
	tDailyAlleviate_Reward[3309843][9][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][9][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][9][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][9][3]["Log"] = "0,0,3309843,1,12001103,2,720027,8"
	tDailyAlleviate_Reward[3309843][9][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][9][4] = {}
	tDailyAlleviate_Reward[3309843][9][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][9][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][9][4]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][9][4]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][9][4]["RewardItem"][1]["Id"] = 3310090
	tDailyAlleviate_Reward[3309843][9][4]["RewardItem"][1]["Attr"] = "0 1 0 10080 1"
	tDailyAlleviate_Reward[3309843][9][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][9][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][9][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][9][4]["Log"] = "0,0,3309843,1,12001103,2,3310090,1"
	tDailyAlleviate_Reward[3309843][9][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][9][5] = {}
	tDailyAlleviate_Reward[3309843][9][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][9][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][9][5]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][9][5]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][9][5]["RewardItem"][1]["Id"] = 3310090
	tDailyAlleviate_Reward[3309843][9][5]["RewardItem"][1]["Attr"] = "0 2 0 10080 1"
	tDailyAlleviate_Reward[3309843][9][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][9][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][9][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][9][5]["Log"] = "0,0,3309843,1,12001103,2,3310090,2"
	tDailyAlleviate_Reward[3309843][9][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][9][6] = {}
	tDailyAlleviate_Reward[3309843][9][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][9][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][9][6]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][9][6]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][9][6]["RewardItem"][1]["Id"] = 3310090
	tDailyAlleviate_Reward[3309843][9][6]["RewardItem"][1]["Attr"] = "0 4 0 10080 1"
	tDailyAlleviate_Reward[3309843][9][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][9][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][9][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][9][6]["Log"] = "0,0,3309843,1,12001103,2,3310090,4"
	tDailyAlleviate_Reward[3309843][9][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][9][7] = {}
	tDailyAlleviate_Reward[3309843][9][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][9][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][9][7]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][9][7]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][9][7]["RewardItem"][1]["Id"] = 3310090
	tDailyAlleviate_Reward[3309843][9][7]["RewardItem"][1]["Attr"] = "0 8 0 10080 1"
	tDailyAlleviate_Reward[3309843][9][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][9][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][9][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][9][7]["Log"] = "0,0,3309843,1,12001103,2,3310090,8"
	tDailyAlleviate_Reward[3309843][9][7]["Times"] = 128
	--+50万金币
	tDailyAlleviate_Reward[3309843][10] = {}
	tDailyAlleviate_Reward[3309843][10]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][10][1] = {}
	tDailyAlleviate_Reward[3309843][10][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][10][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][10][1]["RewardMoney"] = {}
	tDailyAlleviate_Reward[3309843][10][1]["RewardMoney"]["Value"] = 1000000
	tDailyAlleviate_Reward[3309843][10][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][10][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][10][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][10][1]["Log"] = "0,0,3309843,1,12001103,2,1,1000000"
	tDailyAlleviate_Reward[3309843][10][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][10][2] = {}
	tDailyAlleviate_Reward[3309843][10][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][10][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][10][2]["RewardMoney"] = {}
	tDailyAlleviate_Reward[3309843][10][2]["RewardMoney"]["Value"] = 2000000
	tDailyAlleviate_Reward[3309843][10][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][10][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][10][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][10][2]["Log"] = "0,0,3309843,1,12001103,2,1,2000000"
	tDailyAlleviate_Reward[3309843][10][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][10][3] = {}
	tDailyAlleviate_Reward[3309843][10][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][10][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][10][3]["RewardMoney"] = {}
	tDailyAlleviate_Reward[3309843][10][3]["RewardMoney"]["Value"] = 4000000
	tDailyAlleviate_Reward[3309843][10][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][10][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][10][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][10][3]["Log"] = "0,0,3309843,1,12001103,2,1,4000000"
	tDailyAlleviate_Reward[3309843][10][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][10][4] = {}
	tDailyAlleviate_Reward[3309843][10][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][10][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][10][4]["RewardMoney"] = {}
	tDailyAlleviate_Reward[3309843][10][4]["RewardMoney"]["Value"] = 8000000
	tDailyAlleviate_Reward[3309843][10][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][10][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][10][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][10][4]["Log"] = "0,0,3309843,1,12001103,2,1,8000000"
	tDailyAlleviate_Reward[3309843][10][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][10][5] = {}
	tDailyAlleviate_Reward[3309843][10][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][10][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][10][5]["RewardMoney"] = {}
	tDailyAlleviate_Reward[3309843][10][5]["RewardMoney"]["Value"] = 16000000
	tDailyAlleviate_Reward[3309843][10][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][10][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][10][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][10][5]["Log"] = "0,0,3309843,1,12001103,2,1,16000000"
	tDailyAlleviate_Reward[3309843][10][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][10][6] = {}
	tDailyAlleviate_Reward[3309843][10][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][10][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][10][6]["RewardMoney"] = {}
	tDailyAlleviate_Reward[3309843][10][6]["RewardMoney"]["Value"] = 32000000
	tDailyAlleviate_Reward[3309843][10][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][10][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][10][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][10][6]["Log"] = "0,0,3309843,1,12001103,2,1,32000000"
	tDailyAlleviate_Reward[3309843][10][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][10][7] = {}
	tDailyAlleviate_Reward[3309843][10][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][10][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][10][7]["RewardMoney"] = {}
	tDailyAlleviate_Reward[3309843][10][7]["RewardMoney"]["Value"] = 64000000
	tDailyAlleviate_Reward[3309843][10][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][10][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][10][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][10][7]["Log"] = "0,0,3309843,1,12001103,2,1,64000000"
	tDailyAlleviate_Reward[3309843][10][7]["Times"] = 128
	--+免费强练丹赠 
	tDailyAlleviate_Reward[3309843][11] = {}
	tDailyAlleviate_Reward[3309843][11]["ItemChanceSum"] = 10000
	tDailyAlleviate_Reward[3309843][11][1] = {}
	tDailyAlleviate_Reward[3309843][11][1]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][11][1]["ItemChance"] = 7720
	tDailyAlleviate_Reward[3309843][11][1]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][11][1]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][11][1]["RewardItem"][1]["Id"] = 3003124
	tDailyAlleviate_Reward[3309843][11][1]["RewardItem"][1]["Attr"] = "0 2 3"
	tDailyAlleviate_Reward[3309843][11][1]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][11][1]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][11][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][11][1]["Log"] = "0,0,3309843,1,12001103,2,3003124,2"
	tDailyAlleviate_Reward[3309843][11][1]["Times"] = 2
	tDailyAlleviate_Reward[3309843][11][2] = {}
	tDailyAlleviate_Reward[3309843][11][2]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][11][2]["ItemChance"] = 1357
	tDailyAlleviate_Reward[3309843][11][2]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][11][2]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][11][2]["RewardItem"][1]["Id"] = 3003124
	tDailyAlleviate_Reward[3309843][11][2]["RewardItem"][1]["Attr"] = "0 4 3"
	tDailyAlleviate_Reward[3309843][11][2]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][11][2]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][11][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][11][2]["Log"] = "0,0,3309843,1,12001103,2,3003124,4"
	tDailyAlleviate_Reward[3309843][11][2]["Times"] = 4
	tDailyAlleviate_Reward[3309843][11][3] = {}
	tDailyAlleviate_Reward[3309843][11][3]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][11][3]["ItemChance"] = 628
	tDailyAlleviate_Reward[3309843][11][3]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][11][3]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][11][3]["RewardItem"][1]["Id"] = 3003124
	tDailyAlleviate_Reward[3309843][11][3]["RewardItem"][1]["Attr"] = "0 8 3"
	tDailyAlleviate_Reward[3309843][11][3]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][11][3]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][11][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][11][3]["Log"] = "0,0,3309843,1,12001103,2,3003124,8"
	tDailyAlleviate_Reward[3309843][11][3]["Times"] = 8
	tDailyAlleviate_Reward[3309843][11][4] = {}
	tDailyAlleviate_Reward[3309843][11][4]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][11][4]["ItemChance"] = 214
	tDailyAlleviate_Reward[3309843][11][4]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][11][4]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][11][4]["RewardItem"][1]["Id"] = 3005071
	tDailyAlleviate_Reward[3309843][11][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tDailyAlleviate_Reward[3309843][11][4]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][11][4]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][11][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][11][4]["Log"] = "0,0,3309843,1,12001103,2,3005071,1"
	tDailyAlleviate_Reward[3309843][11][4]["Times"] = 16
	tDailyAlleviate_Reward[3309843][11][5] = {}
	tDailyAlleviate_Reward[3309843][11][5]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][11][5]["ItemChance"] = 57
	tDailyAlleviate_Reward[3309843][11][5]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][11][5]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][11][5]["RewardItem"][1]["Id"] = 3005071
	tDailyAlleviate_Reward[3309843][11][5]["RewardItem"][1]["Attr"] = "0 2 3"
	tDailyAlleviate_Reward[3309843][11][5]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][11][5]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][11][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][11][5]["Log"] = "0,0,3309843,1,12001103,2,3005071,2"
	tDailyAlleviate_Reward[3309843][11][5]["Times"] = 32
	tDailyAlleviate_Reward[3309843][11][6] = {}
	tDailyAlleviate_Reward[3309843][11][6]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][11][6]["ItemChance"] = 16
	tDailyAlleviate_Reward[3309843][11][6]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][11][6]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][11][6]["RewardItem"][1]["Id"] = 3005071
	tDailyAlleviate_Reward[3309843][11][6]["RewardItem"][1]["Attr"] = "0 4 3"
	tDailyAlleviate_Reward[3309843][11][6]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][11][6]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][11][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][11][6]["Log"] = "0,0,3309843,1,12001103,2,3005071,4"
	tDailyAlleviate_Reward[3309843][11][6]["Times"] = 64
	tDailyAlleviate_Reward[3309843][11][7] = {}
	tDailyAlleviate_Reward[3309843][11][7]["RandomItemChanceType"] = 2
	tDailyAlleviate_Reward[3309843][11][7]["ItemChance"] = 8
	tDailyAlleviate_Reward[3309843][11][7]["RewardItem"] = {}
	tDailyAlleviate_Reward[3309843][11][7]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3309843][11][7]["RewardItem"][1]["Id"] = 3005071
	tDailyAlleviate_Reward[3309843][11][7]["RewardItem"][1]["Attr"] = "0 8 3"
	tDailyAlleviate_Reward[3309843][11][7]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3309843][11][7]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3309843][11][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3309843][11][7]["Log"] = "0,0,3309843,1,12001103,2,3005071,8"
	tDailyAlleviate_Reward[3309843][11][7]["Times"] = 128
	--额外奖励
	tDailyAlleviate_Reward[3309843]["Add"] = {}
	tDailyAlleviate_Reward[3309843]["Add"]["RewardFreePractNum"] = {}
	tDailyAlleviate_Reward[3309843]["Add"]["RewardFreePractNum"]["Value"] = 1
	tDailyAlleviate_Reward[3309843]["Add"]["LogId"] = 12001103
	
	--+1赤炼石系列包
	tDailyAlleviate_Reward[3310090] = {}
	tDailyAlleviate_Reward[3310090]["DeleteItem"] = {}
	tDailyAlleviate_Reward[3310090]["DeleteItem"][1] = {}
	tDailyAlleviate_Reward[3310090]["DeleteItem"][1]["Id"] = 3310090
	tDailyAlleviate_Reward[3310090]["RewardItem"] = {}
	tDailyAlleviate_Reward[3310090]["RewardItem"][1] = {}
	tDailyAlleviate_Reward[3310090]["RewardItem"][1]["Id"] = 730001
	tDailyAlleviate_Reward[3310090]["RewardItem"][1]["Attr"] = "0 16 3 10080 1"
	tDailyAlleviate_Reward[3310090]["RewardEffect"] = {}
	tDailyAlleviate_Reward[3310090]["RewardEffect"]["SzObj"] = "self"
	tDailyAlleviate_Reward[3310090]["RewardEffect"]["Effect"] = "zf2-e128"
	tDailyAlleviate_Reward[3310090]["LogId"] = 12001103
	
--------------------------------------------逻辑部分配置--------------------------------------------
--物品使用
function DailyAlleviate_ItemUse(nItemId)
	RewardTemplate_UseItemAndMsg(tDailyAlleviate_Reward[nItemId])
end

--日常任务完成金令二次确认打开
function DailyAlleviate_DailyTaskCompleteOpen(nItemId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	--竞技场增加限制
	if Get_MapDoc(nMapId) == tDailyAlleviate_Cont["PkMapdoc"] then
		Sys_MsgBox(tDailyAlleviate_Text["MsgBox"]["NotUse"],nil,nil,nUserId)
		return
	end
	
	if SpecialServer_ChkNoGiftServer() then
		DailyActive_UpgradeGift_Upgrade(nItemId)
		return
	end
	
	local nLevel = tDailyAlleviate_Cont["Level"]
	local nMetempsychosis = tDailyAlleviate_Cont["Metempsychosis"]
	
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		User_TalkChannel2005(tDailyAlleviate_Text["Channel2005"]["NoUse"],nUserId)
		return
	end
	
	local bJbxxFlag = true
	
	
	--判断是否已经完成“祭拜先贤”
	if Task_ChkTaskDetail(6329,nUserId) then
		local nData6 = Get_TaskDetailData6(6329,nUserId)
		
		if nData6 == 0 then
			bJbxxFlag = false
		end
	else
		bJbxxFlag = false
	end
	
	if not bJbxxFlag then
		Sys_MsgBox(tDailyAlleviate_Text["MsgBox"]["NoJbxx"],"DailyAlleviate_Trans",nil,nUserId)
		return
	end
	
	local bComplete = true
	
	--保存未完成的任务索引
	local tNotCompleteTask = {}
	
	--判断stc掩码
	for k,v in pairs(tDailyAlleviate_Stc["DailyTask"]) do
		Task_StcReset(v["Event"],v["Type"],nUserId)
		
		local nData = Get_UserStatisticValue(v["Event"],v["Type"],nUserId)
		
		--是否完成
		local bStcFlag = false
		
		if v["Data"] ~= nil and nData == v["Data"] then
			bStcFlag = true
		end
		
		if v["BeyondData"] ~= nil and nData >= v["BeyondData"] then
			bStcFlag = true
		end
		
		if v["FrontFunc"] ~= nil then
			local fFunc = v["FrontFunc"]
			
			if not fFunc(nUserId) then
				bStcFlag = true
			end
		end
		
		if not bStcFlag then
			bComplete = false
			table.insert(tNotCompleteTask, k)
		end
	end
	
	--判断任务掩码
	for k,v in pairs(tDailyAlleviate_TaskDetail["DailyTask"]) do
		local nTaskId = v["Id"]
		
		--保存任务总id
		local tTaskId = {}
		
		--是否完成
		local bTaskFlag = false
		
		if type(nTaskId) == "table" then
			tTaskId = CommonFunc_Copy(nTaskId)
		else
			table.insert(tTaskId,nTaskId)
		end
		
		for m,n in pairs(tTaskId) do
			if Task_ChkTaskDetail(n,nUserId) then
				if v["Data6"] ~= nil then
					local nData6 = Get_TaskDetailData6(n,nUserId)
					if Task_ChkTaskDetailValue(n,"CompleteFlag","==",v["Complete"],nUserId) and nData6 ~= v["Data6"] then
						bTaskFlag = true
					end
				end
				
				if v["Interval"] ~= nil then
					if Task_ChkTaskDetailValue(n,"CompleteFlag","==",v["Complete"],nUserId) and not Task_DetailInterval(n,v["Interval"],4,nUserId) then
						bTaskFlag = true
					end
				end
			end
		end
		
		if not bTaskFlag  then
			bComplete = false
			table.insert(tNotCompleteTask, k)
		end
	end
	
	--已完成所有日常任务
	if bComplete then
		User_TalkChannel2005(tDailyAlleviate_Text["Channel2005"]["Already"],nUserId)
		return
	end
	
	local nSpace = 0
	
	--背包空间统计
	for k,v in pairs(tNotCompleteTask) do
		local nTaskSpace = 0
		local nTaskNewSpace = 0
		
		if tDailyAlleviate_Stc["DailyTask"][v] ~= nil then
			nTaskSpace = tDailyAlleviate_Stc["DailyTask"][v]["Space"]
			nTaskNewSpace = tDailyAlleviate_Stc["DailyTask"][v]["NewSpace"] or 0
		end
		
		if tDailyAlleviate_TaskDetail["DailyTask"][v] ~= nil then
			nTaskSpace = tDailyAlleviate_TaskDetail["DailyTask"][v]["Space"]
			nTaskNewSpace = tDailyAlleviate_TaskDetail["DailyTask"][v]["NewSpace"] or 0
		end
		
		if nTaskNewSpace > 0 then
			local nGlobalId = tDailyAlleviate_Cont["NewGlobal"]
			
			--判断是否新服
			if Get_SysDynaGlobalData1(nGlobalId) >= 1 then
				nSpace = nSpace + nTaskNewSpace
			else
				nSpace = nSpace + nTaskSpace
			end
		else
			nSpace = nSpace + nTaskSpace
		end
	end
	
	--减去消耗物品空间
	local nLimit = Get_ItemtypeAccumulateLimit(nItemId)
	nLimit = (nLimit == 0 and 1 ) or nLimit
	nSpace = nSpace - math.floor(1 / nLimit)
	
	nSpace = GiveBijuuMaterial_AddSpaceGreatFortunePack(nSpace)
	
	--空间不足 
	if nSpace > 0 and not User_CheckLeftSpace(nSpace,nUserId) then
		User_TalkChannel2005(string.format(tDailyAlleviate_Text["Channel2005"]["NoSpace"], nSpace))
		return
	end
	

	--给奖
	if Item_ChkItem(nItemId) then
		Sys_DialogText(tDailyAlleviate_Text[3309841]["OneKeyUseChat"])
		
		for k,v in pairs(tNotCompleteTask) do
		
			local fFunc = nil
			local sTaskText = tDailyAlleviate_Text["TaskText"]
			
			local sMintest = ""
			
			--满级不显示经验
			local nLevelLimit = 140
			local nFlag = 0
			if Get_UserLevel(nUserId) < nLevelLimit then
				nFlag = 1
			else
				nFlag = 2
			end
			
			if nFlag == 1 then
				sMintest = tDailyAlleviate_Text[nItemId]["ExperiencedNum"][v]
				
			else
				sMintest = tDailyAlleviate_Text[nItemId]["MaxExperiencedNum"][v]
				
			end
			sTaskText = string.format(sTaskText, tDailyAlleviate_Text[nItemId]["TaskName"][v],sMintest,tDailyAlleviate_Text[nItemId]["Enter"])
			Sys_DialogText(sTaskText)
		end

		Sys_DialogOption(tDailyAlleviate_Text[nItemId]["Open"],"</F>DailyAlleviate_DailyTaskComplete</N>" .. nItemId .. "</N>" .. nUserId,nil,nUserId)
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
	end

end

--日常任务完成金令
function DailyAlleviate_DailyTaskComplete(nItemId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local nLevel = tDailyAlleviate_Cont["Level"]
	local nMetempsychosis = tDailyAlleviate_Cont["Metempsychosis"]
	
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		User_TalkChannel2005(tDailyAlleviate_Text["Channel2005"]["NoUse"],nUserId)
		return
	end
	
	local bJbxxFlag = true
	
	--判断是否已经完成“祭拜先贤”
	if Task_ChkTaskDetail(6329,nUserId) then
		local nData6 = Get_TaskDetailData6(6329,nUserId)
		
		if nData6 == 0 then
			bJbxxFlag = false
		end
	else
		bJbxxFlag = false
	end
	
	if not bJbxxFlag then
		Sys_MsgBox(tDailyAlleviate_Text["MsgBox"]["NoJbxx"],"DailyAlleviate_Trans",nil,nUserId)
		return
	end
	
	local bComplete = true
	
	--保存未完成的任务索引
	local tNotCompleteTask = {}
	
	--判断stc掩码
	for k,v in pairs(tDailyAlleviate_Stc["DailyTask"]) do
		Task_StcReset(v["Event"],v["Type"],nUserId)
		
		local nData = Get_UserStatisticValue(v["Event"],v["Type"],nUserId)
		
		--是否完成
		local bStcFlag = false
		
		if v["Data"] ~= nil and nData == v["Data"] then
			bStcFlag = true
		end
		
		if v["BeyondData"] ~= nil and nData >= v["BeyondData"] then
			bStcFlag = true
		end
		
		if v["FrontFunc"] ~= nil then
			local fFunc = v["FrontFunc"]
			
			if not fFunc(nUserId) then
				bStcFlag = true
			end
		end
		
		if not bStcFlag then
			bComplete = false
			table.insert(tNotCompleteTask, k)
		end
	end
	
	--判断任务掩码
	for k,v in pairs(tDailyAlleviate_TaskDetail["DailyTask"]) do
		local nTaskId = v["Id"]
		
		--保存任务总id
		local tTaskId = {}
		
		--是否完成
		local bTaskFlag = false
		
		if type(nTaskId) == "table" then
			tTaskId = CommonFunc_Copy(nTaskId)
		else
			table.insert(tTaskId,nTaskId)
		end
		
		for m,n in pairs(tTaskId) do
			if Task_ChkTaskDetail(n,nUserId) then
				if v["Data6"] ~= nil then
					local nData6 = Get_TaskDetailData6(n,nUserId)
					if Task_ChkTaskDetailValue(n,"CompleteFlag","==",v["Complete"],nUserId) and nData6 ~= v["Data6"] then
						bTaskFlag = true
					end
				end
				
				if v["Interval"] ~= nil then
					if Task_ChkTaskDetailValue(n,"CompleteFlag","==",v["Complete"],nUserId) and not Task_DetailInterval(n,v["Interval"],4,nUserId) then
						bTaskFlag = true
					end
				end
			end
		end
		
		if not bTaskFlag  then
			bComplete = false
			table.insert(tNotCompleteTask, k)
		end
	end
	
	--已完成所有日常任务
	if bComplete then
		User_TalkChannel2005(tDailyAlleviate_Text["Channel2005"]["Already"],nUserId)
		return
	end
	
	local nSpace = 0
	
	--背包空间统计
	for k,v in pairs(tNotCompleteTask) do
		local nTaskSpace = 0
		local nTaskNewSpace = 0
		
		if tDailyAlleviate_Stc["DailyTask"][v] ~= nil then
			nTaskSpace = tDailyAlleviate_Stc["DailyTask"][v]["Space"]
			nTaskNewSpace = tDailyAlleviate_Stc["DailyTask"][v]["NewSpace"] or 0
		end
		
		if tDailyAlleviate_TaskDetail["DailyTask"][v] ~= nil then
			nTaskSpace = tDailyAlleviate_TaskDetail["DailyTask"][v]["Space"]
			nTaskNewSpace = tDailyAlleviate_TaskDetail["DailyTask"][v]["NewSpace"] or 0
		end
		
		if nTaskNewSpace > 0 then
			local nGlobalId = tDailyAlleviate_Cont["NewGlobal"]
			
			--判断是否新服
			if Get_SysDynaGlobalData1(nGlobalId) >= 1 then
				nSpace = nSpace + nTaskNewSpace
			else
				nSpace = nSpace + nTaskSpace
			end
		else
			nSpace = nSpace + nTaskSpace
		end
	end
	
	--减去消耗物品空间
	local nLimit = Get_ItemtypeAccumulateLimit(nItemId)
	nLimit = (nLimit == 0 and 1 ) or nLimit
	nSpace = nSpace - math.floor(1 / nLimit)
	
	--空间不足 
	if nSpace > 0 and not User_CheckLeftSpace(nSpace,nUserId) then
		User_TalkChannel2005(string.format(tDailyAlleviate_Text["Channel2005"]["NoSpace"], nSpace))
		return
	end
	
	--给奖
	if Item_DelItem(nItemId,nil,nil,nUserId) then
		Sys_DialogText(tDailyAlleviate_Text[nItemId]["OneKeyUse"],nil,nUserId)
		
		for k,v in pairs(tNotCompleteTask) do
			local fFunc = nil
			
			if tDailyAlleviate_Stc["DailyTask"][v] ~= nil then
				fFunc = tDailyAlleviate_Stc["DailyTask"][v]["Func"]
			end
			
			if tDailyAlleviate_TaskDetail["DailyTask"][v] ~= nil then
				fFunc = tDailyAlleviate_TaskDetail["DailyTask"][v]["Func"]
			end
			
			local nFlag,nRawardItem,nQItemNum = fFunc(nItemId)
			
			local sTaskText = tDailyAlleviate_Text["TaskText"]
			local sWard = ""
			if nFlag ~= nil then
				if nRawardItem ~= nil then
					local nItemNum1 = nQItemNum or 1
					sWard = string.format(tDailyAlleviate_Text[nItemId]["Award"][v][nFlag],Get_ItemtypeName(nRawardItem),nItemNum1)
				else
					sWard = tDailyAlleviate_Text[nItemId]["Award"][v][nFlag]
				end
				
				sTaskText = string.format(sTaskText, tDailyAlleviate_Text[nItemId]["TaskName"][v],sWard,tDailyAlleviate_Text[nItemId]["Enter"])
				Sys_DialogText(sTaskText,nil,nUserId)
			end
		end
		Sys_DialogItemFace(nItemId,nUserId)
		Sys_DialogOption(tDailyAlleviate_Text[nItemId]["End"],nil,nil,nUserId)
		Sys_DialogEnd(nUserId)
	end
end

--上限判断
function DailyAlleviate_Limit(nItemId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local nSpace = RewardTemplate_GetRandomSpace(tDailyAlleviate_Reward[nItemId], 11, nUserId)
	
	--背包空间
	local nLimit = Get_ItemtypeAccumulateLimit(nItemId)
	nLimit = (nLimit == 0 and 1 ) or nLimit
	nSpace = nSpace - math.floor(1 / nLimit)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(string.format(tDailyAlleviate_Text["Channel2005"]["NoSpaceBag"], nSpace))
		return false
	end
	
	--天石赠上限
	local tEMoneyMono = tDailyAlleviate_Reward[nItemId][8][7]["RewardEMoneyMono"]
	
	if not RewardTemplate_EMoneyMonoLimit(tEMoneyMono,nUserId) then
		return false
	end
	
	-- 银两上限判断
	local tMoney = tDailyAlleviate_Reward[nItemId][10][7]["RewardMoney"]
	
	if not RewardTemplate_MoneyLimit(tMoney,nUserId) then
		return false
	end
	
	return true
end

--给修炼次数
function DailyAlleviate_GetFreePractice(nNum, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if User_IsAlreadyCreateGongFu(nUserId) then
		local nAddFreePractNum = tDailyAlleviate_Cont["FreePractNum"] * nNum
		local nFreePractNum = Get_UserGongFureePractNum(nUserId)
		
		if nFreePractNum + nAddFreePractNum <= G_User_FreePractice then
			User_AddGongFuFreePractNum(nAddFreePractNum,nUserId)
			Sys_SaveActionFestivalLog(string.format(tDailyAlleviate_Log["FreePract"],nAddFreePractNum),nUserId)
			User_TalkChannel2005(string.format(tDailyAlleviate_Text["Channel2005"]["FreePracticeSucc"] ,nNum), nUserId)
		else
			User_TalkChannel2005(string.format(tDailyAlleviate_Text["Channel2005"]["FreePracticeFull"] ,nNum), nUserId)
		end
	else
		User_TalkChannel2005(string.format(tDailyAlleviate_Text["Channel2005"]["NotGongFu"] ,nNum), nUserId)
	end
end

--琅嬛福地礼包
function DailyAlleviate_FuPlacePacket(nItemId)
	local nUserId = Get_UserId()
	
	if tDailyAlleviate_Reward[nItemId] == nil then
		return
	end
	
	local nIndex = 1
	
	if tDailyAlleviate_Reward[nItemId][2]["DeleteItem"][2] ~= nil then
		local nDelItemId = tDailyAlleviate_Reward[nItemId][2]["DeleteItem"][2]["Id"]
		
		--背包中有琅嬛金钥
		if Item_ChkItem(nDelItemId,nil,nil,nUserId) then
			nIndex = 2
		end
	end
	
	local tAward = CommonFunc_Copy(tDailyAlleviate_Reward[nItemId][nIndex])
	
	--判断有没有自创功夫
	if User_IsAlreadyCreateGongFu(nUserId) then
		--判断真气上限
		local nZhenQi = Get_UserGongFuQiLev(nUserId)
		local nAddZhenQi =tAward["RewardZhenQi"]["Value"]
		
		if nZhenQi + nAddZhenQi > G_User_MaxZhenQi then
			--判断最多能给多少
			local nLeft = G_User_MaxZhenQi - nZhenQi
			
			if nLeft > 0 then
				tAward["RewardZhenQi"]["Value"] = nLeft
			else
				--真气满了不给真气
				tAward["RewardZhenQi"] = nil
			end
		end
	else
		--没有自创功夫不给真气
		tAward["RewardZhenQi"] = nil
	end
	
	local bFlag = RewardTemplate_UseItemAndMsg(tAward,nUserId)
	
	if bFlag and nIndex == 2 then
		--给修炼次数
		DailyAlleviate_GetFreePractice(2, nUserId)
		
		User_TalkChannel2005(tDailyAlleviate_Text["Channel2005"][nItemId]["Cost"], nUserId)
	end
end

--活跃包使用额外奖励
function DailyAlleviate_ActivePacketAdd(nItemId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--内嵌世界版图探索活动
	MapExploration_AddStc(21,nUserId)
	--给修炼次数
	DailyAlleviate_GetFreePractice(1, nUserId)
	
	--给黄金联赛积分
	local nEvent = tDailyAlleviate_Stc["GoldenLeaguePoints"]["EventType"]
	local nType = tDailyAlleviate_Stc["GoldenLeaguePoints"]["DataType"]
	
	local nGolden_Limit = tDailyAlleviate_Cont["MaxPoint"] + Get_UserStorageGoldenLimit(nUserId)
	
	Task_StcReset(nEvent,nType,nUserId)
	
	-- 判断今天是否已达上限
	if Task_ChkStcValue(nEvent,nType,">=",nGolden_Limit,nUserId) then
		User_TalkChannel2005(string.format(tInternalTaskCheats_Text["Top"],nGolden_Limit),nUserId)
	else
		local nAddPoint = nGolden_Limit - Get_UserStatisticValue(nEvent,nType,nUserId)
		
		if nAddPoint > 0 then
			GoldenLeaguePoints_Add(nAddPoint,nUserId)
		end
	end
end

--活跃包使用
function DailyAlleviate_ActivePacket(nItemId)
	local nUserId = Get_UserId()
	
	local tProb = CommonFunc_Copy(tDailyAlleviate_Prob[nItemId])
	
	--上限判断
	if not DailyAlleviate_Limit(nItemId,nUserId) then
		return
	end
	
	--判断是否有全服上限
	local nGlobalId = tDailyAlleviate_Cont["ActiveGlobal"]
	local nData = Get_SysDynaGlobalData0(nGlobalId)
	
	--达到上限
	if nData >= tDailyAlleviate_Cont["ActiveLimit"] then
		tProb[1][4]["ItemChance"] = tProb[1][4]["ItemChance"] + tProb[1][3]["ItemChance"]
		tProb[1][3]["ItemChance"] = 0
	end
	
	--随机到哪一套奖励
	local flat,tNum1= Probabil_RandomAward(tProb,1)
	local nRandom = tNum1[1]["tAward"][1]["Item_1"]
	--判断是金币服时随机到的金币奖励改为随机宝石
	if CommonFunc_ChkGoldServer() then 
		if nRandom == 10 then 
			nRandom = 2
		end 
	end 
	--删除物品
	if not Item_ChkItem(nItemId) or not Item_DelItem(nItemId) then
		return
	end
	
	-- 激情服尾兽材料奖励
	GiveBijuuMaterial_UseGreatFortunePack()
	
	--给额外奖励
	DailyAlleviate_ActivePacketAdd(nItemId, nUserId)
	
	local tAward = RewardTemplate_NewRandom(tDailyAlleviate_Reward[nItemId],nRandom)
	
	local nNum = 0
	
	if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
		local tItemAttr = Sys_Split(tAward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
		nNum = tonumber(tItemAttr[2])
	end
	
	--随机到有上限的物品
	if nRandom == 3 then
		Sys_SetSynaGlobalData0(nGlobalId,nNum + nData)
	end
	
	--以下为给提示逻辑
	
	local nTimes = tAward[1]["tAward"][1]["Times"]
	local sAward = ""
	
	if tAward[1]["tAward"][1]["RewardItem"] ~= nil then
		sAward = string.format(tDailyAlleviate_Text["ItemName"], Get_ItemtypeName(tAward[1]["tAward"][1]["RewardItem"][1]["Id"]),tostring(nNum))
	end
	
	if tAward[1]["tAward"][1]["RewardStrengthValue"] ~= nil then
		sAward = string.format(tRewardTemplate_Text["RewardStrengthValue"], tAward[1]["tAward"][1]["RewardStrengthValue"]["Value"])
	end
	
	if tAward[1]["tAward"][1]["RewardBless"] ~= nil then
		sAward = string.format(tRewardTemplate_Text["RewardBless"], tAward[1]["tAward"][1]["RewardBless"]["Value"])
	end
	
	if tAward[1]["tAward"][1]["RewardCultivation"] ~= nil then
		sAward = string.format(tRewardTemplate_Text["RewardCultivation"], tAward[1]["tAward"][1]["RewardCultivation"]["Value"])
	end
	
	if tAward[1]["tAward"][1]["RewardRidingPoint"] ~= nil then
		sAward = string.format(tRewardTemplate_Text["RewardRidingPoint"], tAward[1]["tAward"][1]["RewardRidingPoint"]["Value"])
	end
	
	if tAward[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then
		sAward = string.format(tRewardTemplate_Text["RewardEMoneyMono"], tAward[1]["tAward"][1]["RewardEMoneyMono"]["Value"])
	end
	
	if tAward[1]["tAward"][1]["RewardMoney"] ~= nil then
		sAward = string.format(tRewardTemplate_Text["RewardMoney"], tAward[1]["tAward"][1]["RewardMoney"]["Value"])
	end
	
	User_TalkChannel2005(string.format(tDailyAlleviate_Text["Channel2005"]["BagOpen"], nTimes, sAward))
	--1月神纹月 活跃度礼包额外获得
	JanRuneImproveMon_ActivePackReward()
end

--传送
function DailyAlleviate_Trans()
	local nUserId = Get_UserId()
	local nMapId = tDailyAlleviate_Cont["Trans"]["MapId"]
	local nBoundX = tDailyAlleviate_Cont["Trans"]["BoundX"]
	local nBoundY = tDailyAlleviate_Cont["Trans"]["BoundY"]
	
	local nNowMapId = Get_UserMapId(nUserId)
	
	if nNowMapId ~= nMapId then
		User_TalkChannel2005(tDailyAlleviate_Text["Channel2005"]["NoTwimCity"], nUserId)
		return
	end
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,1,nUserId)
	
	User_TalkChannel2005(tDailyAlleviate_Text["Channel2005"]["Jbxx"], nUserId)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------

---------------------------------------------物品模块---------------------------------------------
--日常任务完成金令
tItemFace[3309841] = 1790
tItem[3309841] = tItem[3309841] or {}
tItem[3309841]["Function"] = function(nItemId,sItemName)
	DailyAlleviate_DailyTaskCompleteOpen(nItemId)
end


--琅嬛福地礼包
tItem[3309842] = tItem[3309842] or {}
tItem[3309842]["Function"] = function(nItemId,sItemName)
	DailyAlleviate_FuPlacePacket(nItemId)
end

--鸿运当头活跃包
tItem[3309843] = tItem[3309843] or {}
tItem[3309843]["Function"] = function(nItemId,sItemName)
	DailyAlleviate_ActivePacket(nItemId)
end

--+1赤炼石系列包
tItem[3310090] = tItem[3310090] or {}
tItem[3310090]["Function"] = function(nItemId,sItemName)
	DailyAlleviate_ItemUse(nItemId)
end
