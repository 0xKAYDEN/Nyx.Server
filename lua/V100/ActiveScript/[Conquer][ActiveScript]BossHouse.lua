------------------------------------------------------------------------------------
--Name:			170822[英文征服][活动脚本]金币服相关内容制作-boss之家
--Creator: 		魏贻逵
--Created:		2017/08/22
------------------------------------------------------------------------------------
-- 命名：BossHouse
--掩码：
-- 165,48 第1层杀Boss数量
-- 165,49 第2层杀Boss数量
-- 165,50 第3层杀Boss数量
-- 165,51 第4层杀Boss数量
-- 165,52 第5层杀Boss数量
-- 167,07 背包信

-- 167,96 杀小怪任务编号
-- taskid:3920-3937
-- 1-3 1层
-- 4-6 2层
-- 7-9 3层
-- 10-12 4层
-- 13-15 5层
-- 16-18 6层
-- 167,97 杀小怪数量
-- 167,98 完成任务数量

----动态存储表
-- 51805 
-- data1 18埃棒兑换劵每天掉落限制
-- data2 40埃棒兑换劵每天掉落限制
-- data3 第一层新碎片现金卷掉落个数限制
-- data4 第二层新碎片现金卷掉落个数限制

-- 51861 
-- data3 第三层新碎片现金卷掉落个数限制
-- data0 第四层新碎片现金卷掉落个数限制
-- data1 第五层新碎片现金卷掉落个数限制
-- data2 第六层新碎片现金卷掉落个数限制

-- 51866 datastr0 - datastr4存贮玩家id和获得的物品
--		 data5用来存贮当前有几个玩家已经完成了当20环的跑环任务
-- 51867 datastr0 - datastr4存贮玩家id和获得的物品,其中data5存贮榜单移动位数
--       data5用来存贮存贮走到的位置,datastr5用来存贮动态码
--51868 - 51873存贮已经生成怪的坐标点（1-6层）

--51906 --datastr0 - datastr4存贮玩家id 
--51907 --datastr0 - datastr4存贮玩家id 

--兑换卷一般log
local tBossHouse_Ticketlog = "0,0,%d,1,12000869,2,2,%d"

local tBossHouse_Global = 51164
local	tBossHouse_Cont = {}
		tBossHouse_Cont["Beftime"] = "2018-01-01 00:00 2018-10-08 23:59"
		tBossHouse_Cont["ActivityTime"] = "2018-10-09 00:00 2029-12-31 23:59"
		tBossHouse_Cont["FirstWeekTime"] = "2018-10-09 00:00 2018-10-16 23:59"
		tBossHouse_Cont["DayTime"] = "08:00 23:59"
		tBossHouse_Cont["ResetTime"] = "00:00 00:02"
		tBossHouse_Cont["CleanTime"] = "23:00 23:02"
		--前8分钟
		tBossHouse_Cont["EightTime"] = "00:00 00:08"
		
		
		tBossHouse_Cont["GlobalId"] = 51805
		tBossHouse_Cont["GlobalIdOne"] = 51866
		tBossHouse_Cont["GlobalIdTwo"] = 51867
		tBossHouse_Cont["NpcId"] = 11404
		tBossHouse_Cont["CityMapId"] = 1002
		tBossHouse_Cont["CityPosX"] = 344
		tBossHouse_Cont["CityPosY"] = 440
		tBossHouse_Cont["Log"] = {}
		tBossHouse_Cont["Log"][1] = "0,0,0,0,12000869,2,%d,1"

		tBossHouse_Cont["ActivityPosX"] = {}
		tBossHouse_Cont["ActivityPosX"][10209] = 165
		tBossHouse_Cont["ActivityPosX"][10210] = 187
		tBossHouse_Cont["ActivityPosX"][10211] = 367
		tBossHouse_Cont["ActivityPosX"][10212] = 165
		tBossHouse_Cont["ActivityPosX"][10213] = 187
		tBossHouse_Cont["ActivityPosX"][10214] = 367

		tBossHouse_Cont["ActivityPosY"] = {}
		tBossHouse_Cont["ActivityPosY"][10209] = 375
		tBossHouse_Cont["ActivityPosY"][10210] = 167
		tBossHouse_Cont["ActivityPosY"][10211] = 333
		tBossHouse_Cont["ActivityPosY"][10212] = 375
		tBossHouse_Cont["ActivityPosY"][10213] = 167
		tBossHouse_Cont["ActivityPosY"][10214] = 333
--globalid,pos
local	tBossHouse_RankShow = {}
		tBossHouse_RankShow[1] = {51866,0,51906}
		tBossHouse_RankShow[2] = {51866,1,51906}
		tBossHouse_RankShow[3] = {51866,2,51906}
		tBossHouse_RankShow[4] = {51866,3,51906}
		tBossHouse_RankShow[5] = {51866,4,51906}
		tBossHouse_RankShow[6] = {51867,0,51907}
		tBossHouse_RankShow[7] = {51867,1,51907}
		tBossHouse_RankShow[8] = {51867,2,51907}
		tBossHouse_RankShow[9] = {51867,3,51907}
		tBossHouse_RankShow[10] = {51867,4,51907}

local	tBossHouse_GotoMap = {}
		tBossHouse_GotoMap[10209] = {}
		tBossHouse_GotoMap[10209]["EventType"] = 165
		tBossHouse_GotoMap[10209]["DataType"] = 48
		tBossHouse_GotoMap[10209]["Data"] = 6
		tBossHouse_GotoMap[10209]["Battle"] = 165
		tBossHouse_GotoMap[10209]["NextMapId"] = 10210

		tBossHouse_GotoMap[10210] = {}
		tBossHouse_GotoMap[10210]["EventType"] = 165
		tBossHouse_GotoMap[10210]["DataType"] = 49
		tBossHouse_GotoMap[10210]["Data"] = 6
		tBossHouse_GotoMap[10210]["Battle"] = 250
		tBossHouse_GotoMap[10210]["NextMapId"] = 10211

		tBossHouse_GotoMap[10211] = {}
		tBossHouse_GotoMap[10211]["EventType"] = 165
		tBossHouse_GotoMap[10211]["DataType"] = 50
		tBossHouse_GotoMap[10211]["Data"] = 6
		tBossHouse_GotoMap[10211]["Battle"] = 300
		tBossHouse_GotoMap[10211]["NextMapId"] = 10212

		tBossHouse_GotoMap[10212] = {}
		tBossHouse_GotoMap[10212]["EventType"] = 165
		tBossHouse_GotoMap[10212]["DataType"] = 51
		tBossHouse_GotoMap[10212]["Data"] = 5
		tBossHouse_GotoMap[10212]["Battle"] = 330--330
		tBossHouse_GotoMap[10212]["NextMapId"] = 10213

		tBossHouse_GotoMap[10213] = {}
		tBossHouse_GotoMap[10213]["EventType"] = 165
		tBossHouse_GotoMap[10213]["DataType"] = 52
		tBossHouse_GotoMap[10213]["Data"] = 5
		tBossHouse_GotoMap[10213]["Battle"] = 360--360
		tBossHouse_GotoMap[10213]["NextMapId"] = 10214

--第1层奖励
local	tBossHouse_Award = {}
		tBossHouse_Award[10209] = {}
		tBossHouse_Award[10209]["Reward"] = {}
		tBossHouse_Award[10209]["Reward"][1] = {}
		tBossHouse_Award[10209]["Reward"][1]["ItemChanceSum"] = 10000

		tBossHouse_Award[10209]["Reward"][1][1] = {}
		tBossHouse_Award[10209]["Reward"][1][1]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][1]["ItemChance"] = 1500
		tBossHouse_Award[10209]["Reward"][1][1]["Item_1"] = 1088001
		tBossHouse_Award[10209]["Reward"][1][1]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][2] = {}
		tBossHouse_Award[10209]["Reward"][1][2]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][2]["ItemChance"] = 500
		tBossHouse_Award[10209]["Reward"][1][2]["Item_1"] = 3305007
		tBossHouse_Award[10209]["Reward"][1][2]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][3] = {}
		tBossHouse_Award[10209]["Reward"][1][3]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][3]["ItemChance"] = 500
		tBossHouse_Award[10209]["Reward"][1][3]["Item_1"] = 3305008
		tBossHouse_Award[10209]["Reward"][1][3]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][4] = {}
		tBossHouse_Award[10209]["Reward"][1][4]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][4]["ItemChance"] = 250
		tBossHouse_Award[10209]["Reward"][1][4]["Item_1"] = 730001
		tBossHouse_Award[10209]["Reward"][1][4]["Num"] = 1
		
		tBossHouse_Award[10209]["Reward"][1][5] = {}
		tBossHouse_Award[10209]["Reward"][1][5]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][5]["ItemChance"] = 250
		tBossHouse_Award[10209]["Reward"][1][5]["Item_1"] = 3001060
		tBossHouse_Award[10209]["Reward"][1][5]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][6] = {}
		tBossHouse_Award[10209]["Reward"][1][6]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][6]["ItemChance"] = 1500
		tBossHouse_Award[10209]["Reward"][1][6]["Item_1"] = 3305009
		tBossHouse_Award[10209]["Reward"][1][6]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][7] = {}
		tBossHouse_Award[10209]["Reward"][1][7]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][7]["ItemChance"] = 1500
		tBossHouse_Award[10209]["Reward"][1][7]["Item_1"] = 3314911
		tBossHouse_Award[10209]["Reward"][1][7]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][8] = {}
		tBossHouse_Award[10209]["Reward"][1][8]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][8]["ItemChance"] = 1000
		tBossHouse_Award[10209]["Reward"][1][8]["Item_1"] = 3002030
		tBossHouse_Award[10209]["Reward"][1][8]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][9] = {}
		tBossHouse_Award[10209]["Reward"][1][9]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][9]["ItemChance"] = 500
		tBossHouse_Award[10209]["Reward"][1][9]["Item_1"] = 3003124
		tBossHouse_Award[10209]["Reward"][1][9]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][10] = {}
		tBossHouse_Award[10209]["Reward"][1][10]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][10]["ItemChance"] = 500
		tBossHouse_Award[10209]["Reward"][1][10]["Item_1"] = 3003125
		tBossHouse_Award[10209]["Reward"][1][10]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][11] = {}
		tBossHouse_Award[10209]["Reward"][1][11]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][11]["ItemChance"] = 500
		tBossHouse_Award[10209]["Reward"][1][11]["Item_1"] = 3305010
		tBossHouse_Award[10209]["Reward"][1][11]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][12] = {}
		tBossHouse_Award[10209]["Reward"][1][12]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][12]["ItemChance"] = 200
		tBossHouse_Award[10209]["Reward"][1][12]["Item_1"] = 3305011
		tBossHouse_Award[10209]["Reward"][1][12]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][13] = {}
		tBossHouse_Award[10209]["Reward"][1][13]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][13]["ItemChance"] = 800
		tBossHouse_Award[10209]["Reward"][1][13]["Item_1"] = 3305012
		tBossHouse_Award[10209]["Reward"][1][13]["Num"] = 1

		tBossHouse_Award[10209]["Reward"][1][14] = {}
		tBossHouse_Award[10209]["Reward"][1][14]["RandomItemChanceType"] = 2
		tBossHouse_Award[10209]["Reward"][1][14]["ItemChance"] = 500
		tBossHouse_Award[10209]["Reward"][1][14]["Item_1"] = 3305013
		tBossHouse_Award[10209]["Reward"][1][14]["Num"] = 1
		
--第2层奖励
		tBossHouse_Award[10210] = {}
		tBossHouse_Award[10210]["Reward"] = {}
		tBossHouse_Award[10210]["Reward"][1] = {}
		tBossHouse_Award[10210]["Reward"][1]["ItemChanceSum"] = 10000

		tBossHouse_Award[10210]["Reward"][1][1] = {}
		tBossHouse_Award[10210]["Reward"][1][1]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][1]["ItemChance"] = 1000
		tBossHouse_Award[10210]["Reward"][1][1]["Item_1"] = 3305014
		tBossHouse_Award[10210]["Reward"][1][1]["Num"] = 1

		tBossHouse_Award[10210]["Reward"][1][2] = {}
		tBossHouse_Award[10210]["Reward"][1][2]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][2]["ItemChance"] = 500
		tBossHouse_Award[10210]["Reward"][1][2]["Item_1"] = 3305007
		tBossHouse_Award[10210]["Reward"][1][2]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][3] = {}
		tBossHouse_Award[10210]["Reward"][1][3]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][3]["ItemChance"] = 1000
		tBossHouse_Award[10210]["Reward"][1][3]["Item_1"] = 3305008
		tBossHouse_Award[10210]["Reward"][1][3]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][4] = {}
		tBossHouse_Award[10210]["Reward"][1][4]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][4]["ItemChance"] = 250
		tBossHouse_Award[10210]["Reward"][1][4]["Item_1"] = 730002
		tBossHouse_Award[10210]["Reward"][1][4]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][5] = {}
		tBossHouse_Award[10210]["Reward"][1][5]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][5]["ItemChance"] = 250
		tBossHouse_Award[10210]["Reward"][1][5]["Item_1"] = 3007392 --3001012
		tBossHouse_Award[10210]["Reward"][1][5]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][6] = {}
		tBossHouse_Award[10210]["Reward"][1][6]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][6]["ItemChance"] = 500
		tBossHouse_Award[10210]["Reward"][1][6]["Item_1"] = 3305009
		tBossHouse_Award[10210]["Reward"][1][6]["Num"] = 2
		
		tBossHouse_Award[10210]["Reward"][1][7] = {}
		tBossHouse_Award[10210]["Reward"][1][7]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][7]["ItemChance"] = 1000
		tBossHouse_Award[10210]["Reward"][1][7]["Item_1"] = 3305015
		tBossHouse_Award[10210]["Reward"][1][7]["Num"] = 1

		tBossHouse_Award[10210]["Reward"][1][8] = {}
		tBossHouse_Award[10210]["Reward"][1][8]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][8]["ItemChance"] = 1000
		tBossHouse_Award[10210]["Reward"][1][8]["Item_1"] = 3002030
		tBossHouse_Award[10210]["Reward"][1][8]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][9] = {}
		tBossHouse_Award[10210]["Reward"][1][9]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][9]["ItemChance"] = 1000
		tBossHouse_Award[10210]["Reward"][1][9]["Item_1"] = 3003124
		tBossHouse_Award[10210]["Reward"][1][9]["Num"] = 1

		tBossHouse_Award[10210]["Reward"][1][10] = {}
		tBossHouse_Award[10210]["Reward"][1][10]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][10]["ItemChance"] = 500
		tBossHouse_Award[10210]["Reward"][1][10]["Item_1"] = 3002926
		tBossHouse_Award[10210]["Reward"][1][10]["Num"] = 1

		tBossHouse_Award[10210]["Reward"][1][11] = {}
		tBossHouse_Award[10210]["Reward"][1][11]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][11]["ItemChance"] = 1000
		tBossHouse_Award[10210]["Reward"][1][11]["Item_1"] = 3003125
		tBossHouse_Award[10210]["Reward"][1][11]["Num"] = 1

		tBossHouse_Award[10210]["Reward"][1][12] = {}
		tBossHouse_Award[10210]["Reward"][1][12]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][12]["ItemChance"] = 500
		tBossHouse_Award[10210]["Reward"][1][12]["Item_1"] = 3305016
		tBossHouse_Award[10210]["Reward"][1][12]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][13] = {}
		tBossHouse_Award[10210]["Reward"][1][13]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][13]["ItemChance"] = 200
		tBossHouse_Award[10210]["Reward"][1][13]["Item_1"] = 3305017
		tBossHouse_Award[10210]["Reward"][1][13]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][14] = {}
		tBossHouse_Award[10210]["Reward"][1][14]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][14]["ItemChance"] = 800
		tBossHouse_Award[10210]["Reward"][1][14]["Item_1"] = 723341
		tBossHouse_Award[10210]["Reward"][1][14]["Num"] = 1
		
		tBossHouse_Award[10210]["Reward"][1][15] = {}
		tBossHouse_Award[10210]["Reward"][1][15]["RandomItemChanceType"] = 2
		tBossHouse_Award[10210]["Reward"][1][15]["ItemChance"] = 500
		tBossHouse_Award[10210]["Reward"][1][15]["Item_1"] = 3305018
		tBossHouse_Award[10210]["Reward"][1][15]["Num"] = 1

--第3层奖励
		tBossHouse_Award[10211] = {}
		tBossHouse_Award[10211]["Reward"] = {}
		tBossHouse_Award[10211]["Reward"][1] = {}
		tBossHouse_Award[10211]["Reward"][1]["ItemChanceSum"] = 10000

		tBossHouse_Award[10211]["Reward"][1][1] = {}
		tBossHouse_Award[10211]["Reward"][1][1]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][1]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][1]["Item_1"] = 3305014
		tBossHouse_Award[10211]["Reward"][1][1]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][2] = {}
		tBossHouse_Award[10211]["Reward"][1][2]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][2]["ItemChance"] = 1000
		tBossHouse_Award[10211]["Reward"][1][2]["Item_1"] = 3305007
		tBossHouse_Award[10211]["Reward"][1][2]["Num"] = 1

		tBossHouse_Award[10211]["Reward"][1][3] = {}
		tBossHouse_Award[10211]["Reward"][1][3]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][3]["ItemChance"] = 1000
		tBossHouse_Award[10211]["Reward"][1][3]["Item_1"] = 3305008
		tBossHouse_Award[10211]["Reward"][1][3]["Num"] = 1

		tBossHouse_Award[10211]["Reward"][1][4] = {}
		tBossHouse_Award[10211]["Reward"][1][4]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][4]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][4]["Item_1"] = 730002
		tBossHouse_Award[10211]["Reward"][1][4]["Num"] = 1

		tBossHouse_Award[10211]["Reward"][1][5] = {}
		tBossHouse_Award[10211]["Reward"][1][5]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][5]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][5]["Item_1"] = 3007392 --3001012
		tBossHouse_Award[10211]["Reward"][1][5]["Num"] = 1

		tBossHouse_Award[10211]["Reward"][1][6] = {}
		tBossHouse_Award[10211]["Reward"][1][6]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][6]["ItemChance"] = 800
		tBossHouse_Award[10211]["Reward"][1][6]["Item_1"] = 3305009
		tBossHouse_Award[10211]["Reward"][1][6]["Num"] = 3
		
		tBossHouse_Award[10211]["Reward"][1][7] = {}
		tBossHouse_Award[10211]["Reward"][1][7]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][7]["ItemChance"] = 1000
		tBossHouse_Award[10211]["Reward"][1][7]["Item_1"] = 3305019
		tBossHouse_Award[10211]["Reward"][1][7]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][8] = {}
		tBossHouse_Award[10211]["Reward"][1][8]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][8]["ItemChance"] = 1000
		tBossHouse_Award[10211]["Reward"][1][8]["Item_1"] = 3002030
		tBossHouse_Award[10211]["Reward"][1][8]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][9] = {}
		tBossHouse_Award[10211]["Reward"][1][9]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][9]["ItemChance"] = 1000
		tBossHouse_Award[10211]["Reward"][1][9]["Item_1"] = 3003124
		tBossHouse_Award[10211]["Reward"][1][9]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][10] = {}
		tBossHouse_Award[10211]["Reward"][1][10]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][10]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][10]["Item_1"] = 3002926
		tBossHouse_Award[10211]["Reward"][1][10]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][11] = {}
		tBossHouse_Award[10211]["Reward"][1][11]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][11]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][11]["Item_1"] = 3003125
		tBossHouse_Award[10211]["Reward"][1][11]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][12] = {}
		tBossHouse_Award[10211]["Reward"][1][12]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][12]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][12]["Item_1"] = 3003126
		tBossHouse_Award[10211]["Reward"][1][12]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][13] = {}
		tBossHouse_Award[10211]["Reward"][1][13]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][13]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][13]["Item_1"] = 3305020
		tBossHouse_Award[10211]["Reward"][1][13]["Num"] = 1
		
		tBossHouse_Award[10211]["Reward"][1][14] = {}
		tBossHouse_Award[10211]["Reward"][1][14]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][14]["ItemChance"] = 200
		tBossHouse_Award[10211]["Reward"][1][14]["Item_1"] = 3305021
		tBossHouse_Award[10211]["Reward"][1][14]["Num"] = 1

		tBossHouse_Award[10211]["Reward"][1][15] = {}
		tBossHouse_Award[10211]["Reward"][1][15]["RandomItemChanceType"] = 2
		tBossHouse_Award[10211]["Reward"][1][15]["ItemChance"] = 500
		tBossHouse_Award[10211]["Reward"][1][15]["Item_1"] = 3305022
		tBossHouse_Award[10211]["Reward"][1][15]["Num"] = 1

--第4层奖励
		tBossHouse_Award[10212] = {}
		tBossHouse_Award[10212]["Reward"] = {}
		tBossHouse_Award[10212]["Reward"][1] = {}
		tBossHouse_Award[10212]["Reward"][1]["ItemChanceSum"] = 10000

		tBossHouse_Award[10212]["Reward"][1][1] = {}
		tBossHouse_Award[10212]["Reward"][1][1]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][1]["ItemChance"] = 1000
		tBossHouse_Award[10212]["Reward"][1][1]["Item_1"] = 3305007
		tBossHouse_Award[10212]["Reward"][1][1]["Num"] = 1

		tBossHouse_Award[10212]["Reward"][1][2] = {}
		tBossHouse_Award[10212]["Reward"][1][2]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][2]["ItemChance"] = 1000
		tBossHouse_Award[10212]["Reward"][1][2]["Item_1"] = 3305008
		tBossHouse_Award[10212]["Reward"][1][2]["Num"] = 1

		tBossHouse_Award[10212]["Reward"][1][3] = {}
		tBossHouse_Award[10212]["Reward"][1][3]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][3]["ItemChance"] = 500
		tBossHouse_Award[10212]["Reward"][1][3]["Item_1"] = 730003
		tBossHouse_Award[10212]["Reward"][1][3]["Num"] = 1

		tBossHouse_Award[10212]["Reward"][1][4] = {}
		tBossHouse_Award[10212]["Reward"][1][4]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][4]["ItemChance"] = 500
		tBossHouse_Award[10212]["Reward"][1][4]["Item_1"] = 723860
		tBossHouse_Award[10212]["Reward"][1][4]["Num"] = 1

		tBossHouse_Award[10212]["Reward"][1][5] = {}
		tBossHouse_Award[10212]["Reward"][1][5]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][5]["ItemChance"] = 1000
		tBossHouse_Award[10212]["Reward"][1][5]["Item_1"] = 3305009
		tBossHouse_Award[10212]["Reward"][1][5]["Num"] = 4

		tBossHouse_Award[10212]["Reward"][1][6] = {}
		tBossHouse_Award[10212]["Reward"][1][6]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][6]["ItemChance"] = 1000
		tBossHouse_Award[10212]["Reward"][1][6]["Item_1"] = 3305019
		tBossHouse_Award[10212]["Reward"][1][6]["Num"] = 1

		tBossHouse_Award[10212]["Reward"][1][7] = {}
		tBossHouse_Award[10212]["Reward"][1][7]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][7]["ItemChance"] = 500
		tBossHouse_Award[10212]["Reward"][1][7]["Item_1"] = 3305023
		tBossHouse_Award[10212]["Reward"][1][7]["Num"] = 1
		
		tBossHouse_Award[10212]["Reward"][1][8] = {}
		tBossHouse_Award[10212]["Reward"][1][8]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][8]["ItemChance"] = 1000
		tBossHouse_Award[10212]["Reward"][1][8]["Item_1"] = 3002030
		tBossHouse_Award[10212]["Reward"][1][8]["Num"] = 1
		
		tBossHouse_Award[10212]["Reward"][1][9] = {}
		tBossHouse_Award[10212]["Reward"][1][9]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][9]["ItemChance"] = 500
		tBossHouse_Award[10212]["Reward"][1][9]["Item_1"] = 3003124
		tBossHouse_Award[10212]["Reward"][1][9]["Num"] = 1
		
		tBossHouse_Award[10212]["Reward"][1][10] = {}
		tBossHouse_Award[10212]["Reward"][1][10]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][10]["ItemChance"] = 1000
		tBossHouse_Award[10212]["Reward"][1][10]["Item_1"] = 3002926
		tBossHouse_Award[10212]["Reward"][1][10]["Num"] = 1
		
		tBossHouse_Award[10212]["Reward"][1][11] = {}
		tBossHouse_Award[10212]["Reward"][1][11]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][11]["ItemChance"] = 1000
		tBossHouse_Award[10212]["Reward"][1][11]["Item_1"] = 3003126
		tBossHouse_Award[10212]["Reward"][1][11]["Num"] = 1
		
		tBossHouse_Award[10212]["Reward"][1][12] = {}
		tBossHouse_Award[10212]["Reward"][1][12]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][12]["ItemChance"] = 500
		tBossHouse_Award[10212]["Reward"][1][12]["Item_1"] = 3305024
		tBossHouse_Award[10212]["Reward"][1][12]["Num"] = 1
		
		tBossHouse_Award[10212]["Reward"][1][13] = {}
		tBossHouse_Award[10212]["Reward"][1][13]["RandomItemChanceType"] = 2
		tBossHouse_Award[10212]["Reward"][1][13]["ItemChance"] = 500
		tBossHouse_Award[10212]["Reward"][1][13]["Item_1"] = 3305025
		tBossHouse_Award[10212]["Reward"][1][13]["Num"] = 1

--第5层奖励
		tBossHouse_Award[10213] = {}
		tBossHouse_Award[10213]["Reward"] = {}
		tBossHouse_Award[10213]["Reward"][1] = {}
		tBossHouse_Award[10213]["Reward"][1]["ItemChanceSum"] = 10000

		tBossHouse_Award[10213]["Reward"][1][1] = {}
		tBossHouse_Award[10213]["Reward"][1][1]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][1]["ItemChance"] = 1000
		tBossHouse_Award[10213]["Reward"][1][1]["Item_1"] = 3305007
		tBossHouse_Award[10213]["Reward"][1][1]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][2] = {}
		tBossHouse_Award[10213]["Reward"][1][2]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][2]["ItemChance"] = 1000
		tBossHouse_Award[10213]["Reward"][1][2]["Item_1"] = 3305008
		tBossHouse_Award[10213]["Reward"][1][2]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][3] = {}
		tBossHouse_Award[10213]["Reward"][1][3]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][3]["ItemChance"] = 100
		tBossHouse_Award[10213]["Reward"][1][3]["Item_1"] = 700073
		tBossHouse_Award[10213]["Reward"][1][3]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][4] = {}
		tBossHouse_Award[10213]["Reward"][1][4]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][4]["ItemChance"] = 100
		tBossHouse_Award[10213]["Reward"][1][4]["Item_1"] = 700103
		tBossHouse_Award[10213]["Reward"][1][4]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][5] = {}
		tBossHouse_Award[10213]["Reward"][1][5]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][5]["ItemChance"] = 100
		tBossHouse_Award[10213]["Reward"][1][5]["Item_1"] = 700123
		tBossHouse_Award[10213]["Reward"][1][5]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][6] = {}
		tBossHouse_Award[10213]["Reward"][1][6]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][6]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][6]["Item_1"] = 730004
		tBossHouse_Award[10213]["Reward"][1][6]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][7] = {}
		tBossHouse_Award[10213]["Reward"][1][7]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][7]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][7]["Item_1"] = 729861
		tBossHouse_Award[10213]["Reward"][1][7]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][8] = {}
		tBossHouse_Award[10213]["Reward"][1][8]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][8]["ItemChance"] = 1000
		tBossHouse_Award[10213]["Reward"][1][8]["Item_1"] = 3305009
		tBossHouse_Award[10213]["Reward"][1][8]["Num"] = 6

		tBossHouse_Award[10213]["Reward"][1][9] = {}
		tBossHouse_Award[10213]["Reward"][1][9]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][9]["ItemChance"] = 600
		tBossHouse_Award[10213]["Reward"][1][9]["Item_1"] = 720323
		tBossHouse_Award[10213]["Reward"][1][9]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][10] = {}
		tBossHouse_Award[10213]["Reward"][1][10]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][10]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][10]["Item_1"] = 711504
		tBossHouse_Award[10213]["Reward"][1][10]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][11] = {}
		tBossHouse_Award[10213]["Reward"][1][11]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][11]["ItemChance"] = 1000
		tBossHouse_Award[10213]["Reward"][1][11]["Item_1"] = 3305026
		tBossHouse_Award[10213]["Reward"][1][11]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][12] = {}
		tBossHouse_Award[10213]["Reward"][1][12]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][12]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][12]["Item_1"] = 3305027
		tBossHouse_Award[10213]["Reward"][1][12]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][13] = {}
		tBossHouse_Award[10213]["Reward"][1][13]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][13]["ItemChance"] = 100
		tBossHouse_Award[10213]["Reward"][1][13]["Item_1"] = 723694
		tBossHouse_Award[10213]["Reward"][1][13]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][14] = {}
		tBossHouse_Award[10213]["Reward"][1][14]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][14]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][14]["Item_1"] = 3002030
		tBossHouse_Award[10213]["Reward"][1][14]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][15] = {}
		tBossHouse_Award[10213]["Reward"][1][15]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][15]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][15]["Item_1"] = 3002926
		tBossHouse_Award[10213]["Reward"][1][15]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][16] = {}
		tBossHouse_Award[10213]["Reward"][1][16]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][16]["ItemChance"] = 1000
		tBossHouse_Award[10213]["Reward"][1][16]["Item_1"] = 3003126
		tBossHouse_Award[10213]["Reward"][1][16]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][17] = {}
		tBossHouse_Award[10213]["Reward"][1][17]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][17]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][17]["Item_1"] = 3305028
		tBossHouse_Award[10213]["Reward"][1][17]["Num"] = 1

		tBossHouse_Award[10213]["Reward"][1][18] = {}
		tBossHouse_Award[10213]["Reward"][1][18]["RandomItemChanceType"] = 2
		tBossHouse_Award[10213]["Reward"][1][18]["ItemChance"] = 500
		tBossHouse_Award[10213]["Reward"][1][18]["Item_1"] = 3305029
		tBossHouse_Award[10213]["Reward"][1][18]["Num"] = 1

--第6层奖励
		tBossHouse_Award[10214] = {}
		tBossHouse_Award[10214]["Reward"] = {}
		tBossHouse_Award[10214]["Reward"][1] = {}
		tBossHouse_Award[10214]["Reward"][1]["ItemChanceSum"] = 10000

		tBossHouse_Award[10214]["Reward"][1][1] = {}
		tBossHouse_Award[10214]["Reward"][1][1]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][1]["ItemChance"] = 300
		tBossHouse_Award[10214]["Reward"][1][1]["Item_1"] = 700073
		tBossHouse_Award[10214]["Reward"][1][1]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][2] = {}
		tBossHouse_Award[10214]["Reward"][1][2]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][2]["ItemChance"] = 150
		tBossHouse_Award[10214]["Reward"][1][2]["Item_1"] = 700103
		tBossHouse_Award[10214]["Reward"][1][2]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][3] = {}
		tBossHouse_Award[10214]["Reward"][1][3]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][3]["ItemChance"] = 150
		tBossHouse_Award[10214]["Reward"][1][3]["Item_1"] = 700123
		tBossHouse_Award[10214]["Reward"][1][3]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][4] = {}
		tBossHouse_Award[10214]["Reward"][1][4]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][4]["ItemChance"] = 400
		tBossHouse_Award[10214]["Reward"][1][4]["Item_1"] = 730005
		tBossHouse_Award[10214]["Reward"][1][4]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][5] = {}
		tBossHouse_Award[10214]["Reward"][1][5]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][5]["ItemChance"] = 400
		tBossHouse_Award[10214]["Reward"][1][5]["Item_1"] = 729862
		tBossHouse_Award[10214]["Reward"][1][5]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][6] = {}
		tBossHouse_Award[10214]["Reward"][1][6]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][6]["ItemChance"] = 1200
		tBossHouse_Award[10214]["Reward"][1][6]["Item_1"] = 3305009
		tBossHouse_Award[10214]["Reward"][1][6]["Num"] = 10

		tBossHouse_Award[10214]["Reward"][1][7] = {}
		tBossHouse_Award[10214]["Reward"][1][7]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][7]["ItemChance"] = 800
		tBossHouse_Award[10214]["Reward"][1][7]["Item_1"] = 720323
		tBossHouse_Award[10214]["Reward"][1][7]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][8] = {}
		tBossHouse_Award[10214]["Reward"][1][8]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][8]["ItemChance"] = 1500
		tBossHouse_Award[10214]["Reward"][1][8]["Item_1"] = 3305026
		tBossHouse_Award[10214]["Reward"][1][8]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][9] = {}
		tBossHouse_Award[10214]["Reward"][1][9]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][9]["ItemChance"] = 500
		tBossHouse_Award[10214]["Reward"][1][9]["Item_1"] = 3305030
		tBossHouse_Award[10214]["Reward"][1][9]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][10] = {}
		tBossHouse_Award[10214]["Reward"][1][10]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][10]["ItemChance"] = 100
		tBossHouse_Award[10214]["Reward"][1][10]["Item_1"] = 723695
		tBossHouse_Award[10214]["Reward"][1][10]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][11] = {}
		tBossHouse_Award[10214]["Reward"][1][11]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][11]["ItemChance"] = 500
		tBossHouse_Award[10214]["Reward"][1][11]["Item_1"] = 3002030
		tBossHouse_Award[10214]["Reward"][1][11]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][12] = {}
		tBossHouse_Award[10214]["Reward"][1][12]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][12]["ItemChance"] = 1000
		tBossHouse_Award[10214]["Reward"][1][12]["Item_1"] = 3003124
		tBossHouse_Award[10214]["Reward"][1][12]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][13] = {}
		tBossHouse_Award[10214]["Reward"][1][13]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][13]["ItemChance"] = 800
		tBossHouse_Award[10214]["Reward"][1][13]["Item_1"] = 3002926
		tBossHouse_Award[10214]["Reward"][1][13]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][14] = {}
		tBossHouse_Award[10214]["Reward"][1][14]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][14]["ItemChance"] = 1200
		tBossHouse_Award[10214]["Reward"][1][14]["Item_1"] = 3003126
		tBossHouse_Award[10214]["Reward"][1][14]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][15] = {}
		tBossHouse_Award[10214]["Reward"][1][15]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][15]["ItemChance"] = 500
		tBossHouse_Award[10214]["Reward"][1][15]["Item_1"] = 3305031
		tBossHouse_Award[10214]["Reward"][1][15]["Num"] = 1

		tBossHouse_Award[10214]["Reward"][1][16] = {}
		tBossHouse_Award[10214]["Reward"][1][16]["RandomItemChanceType"] = 2
		tBossHouse_Award[10214]["Reward"][1][16]["ItemChance"] = 500
		tBossHouse_Award[10214]["Reward"][1][16]["Item_1"] = 3305032
		tBossHouse_Award[10214]["Reward"][1][16]["Num"] = 1

--额外固定掉落
local	tBossHouse_AdditionalAward = {}
		tBossHouse_AdditionalAward["Pack"] = {}  --杀死第20只boss直接掉落背包
		tBossHouse_AdditionalAward["Pack"][10209] = 3305686
		tBossHouse_AdditionalAward["Pack"][10210] = 3305687
		tBossHouse_AdditionalAward["Pack"][10211] = 3305688
		tBossHouse_AdditionalAward["Pack"][10212] = 3305689
		tBossHouse_AdditionalAward["Pack"][10213] = 3305690

--掉落银子
		tBossHouse_AdditionalAward["Money"] = {}
		tBossHouse_AdditionalAward["Money"][10209] = 15000
		tBossHouse_AdditionalAward["Money"][10210] = 60000
		tBossHouse_AdditionalAward["Money"][10211] = 120000
		tBossHouse_AdditionalAward["Money"][10212] = 500000
		tBossHouse_AdditionalAward["Money"][10213] = 1000000
		tBossHouse_AdditionalAward["Money"][10214] = 3000000

--掉落现金券
		tBossHouse_AdditionalAward["CashCoupon"] = {}
		tBossHouse_AdditionalAward["CashCoupon"][10213] = {}
		tBossHouse_AdditionalAward["CashCoupon"][10213]["Prob"] = 7500
		tBossHouse_AdditionalAward["CashCoupon"][10213]["ItemId"] = 3305034
		tBossHouse_AdditionalAward["CashCoupon"][10213]["Limit"] = 24
		tBossHouse_AdditionalAward["CashCoupon"][10213]["SetFunc"] = Sys_SetSynaGlobalData1
		tBossHouse_AdditionalAward["CashCoupon"][10213]["GetFunc"] = Get_SysDynaGlobalData1

		tBossHouse_AdditionalAward["CashCoupon"][10214] = {}
		tBossHouse_AdditionalAward["CashCoupon"][10214]["Prob"] = 7500
		tBossHouse_AdditionalAward["CashCoupon"][10214]["ItemId"] = 3305035
		tBossHouse_AdditionalAward["CashCoupon"][10214]["Limit"] = 25
		tBossHouse_AdditionalAward["CashCoupon"][10214]["SetFunc"] = Sys_SetSynaGlobalData2
		tBossHouse_AdditionalAward["CashCoupon"][10214]["GetFunc"] = Get_SysDynaGlobalData2
 --新增掉落现金卷（1-6层）
		tBossHouse_AdditionalAward["NewCashCoupon"] = {}
		tBossHouse_AdditionalAward["NewCashCoupon"][10209] = {}
		tBossHouse_AdditionalAward["NewCashCoupon"][10209]["Grobal"] = 51805
		tBossHouse_AdditionalAward["NewCashCoupon"][10209]["Prob"] = 7500
		tBossHouse_AdditionalAward["NewCashCoupon"][10209]["ItemId"] = 3306375
		tBossHouse_AdditionalAward["NewCashCoupon"][10209]["Limit"] = 250
		tBossHouse_AdditionalAward["NewCashCoupon"][10209]["SetFunc"] = Sys_SetSynaGlobalData3
		tBossHouse_AdditionalAward["NewCashCoupon"][10209]["GetFunc"] = Get_SysDynaGlobalData3
		
		tBossHouse_AdditionalAward["NewCashCoupon"][10210] = {}
		tBossHouse_AdditionalAward["NewCashCoupon"][10210]["Grobal"] = 51805
		tBossHouse_AdditionalAward["NewCashCoupon"][10210]["Prob"] = 7500
		tBossHouse_AdditionalAward["NewCashCoupon"][10210]["ItemId"] = 3306375
		tBossHouse_AdditionalAward["NewCashCoupon"][10210]["Limit"] = 250
		tBossHouse_AdditionalAward["NewCashCoupon"][10210]["SetFunc"] = Sys_SetSynaGlobalData4
		tBossHouse_AdditionalAward["NewCashCoupon"][10210]["GetFunc"] = Get_SysDynaGlobalData4
		
		tBossHouse_AdditionalAward["NewCashCoupon"][10211] = {}
		tBossHouse_AdditionalAward["NewCashCoupon"][10211]["Grobal"] = 51861
		tBossHouse_AdditionalAward["NewCashCoupon"][10211]["Prob"] = 7500
		tBossHouse_AdditionalAward["NewCashCoupon"][10211]["ItemId"] = 3306375
		tBossHouse_AdditionalAward["NewCashCoupon"][10211]["Limit"] = 500
		tBossHouse_AdditionalAward["NewCashCoupon"][10211]["SetFunc"] = Sys_SetSynaGlobalData3
		tBossHouse_AdditionalAward["NewCashCoupon"][10211]["GetFunc"] = Get_SysDynaGlobalData3
		
		tBossHouse_AdditionalAward["NewCashCoupon"][10212] = {}
		tBossHouse_AdditionalAward["NewCashCoupon"][10212]["Grobal"] = 51861
		tBossHouse_AdditionalAward["NewCashCoupon"][10212]["Prob"] = 7500
		tBossHouse_AdditionalAward["NewCashCoupon"][10212]["ItemId"] = 3306375
		tBossHouse_AdditionalAward["NewCashCoupon"][10212]["Limit"] = 500
		tBossHouse_AdditionalAward["NewCashCoupon"][10212]["SetFunc"] = Sys_SetSynaGlobalData0
		tBossHouse_AdditionalAward["NewCashCoupon"][10212]["GetFunc"] = Get_SysDynaGlobalData0
		
		tBossHouse_AdditionalAward["NewCashCoupon"][10213] = {}
		tBossHouse_AdditionalAward["NewCashCoupon"][10213]["Grobal"] = 51861
		tBossHouse_AdditionalAward["NewCashCoupon"][10213]["Prob"] = 7500
		tBossHouse_AdditionalAward["NewCashCoupon"][10213]["ItemId"] = 3306375
		tBossHouse_AdditionalAward["NewCashCoupon"][10213]["Limit"] = 1500
		tBossHouse_AdditionalAward["NewCashCoupon"][10213]["SetFunc"] = Sys_SetSynaGlobalData1
		tBossHouse_AdditionalAward["NewCashCoupon"][10213]["GetFunc"] = Get_SysDynaGlobalData1
		
		tBossHouse_AdditionalAward["NewCashCoupon"][10214] = {}
		tBossHouse_AdditionalAward["NewCashCoupon"][10214]["Grobal"] = 51861
		tBossHouse_AdditionalAward["NewCashCoupon"][10214]["Prob"] = 7500
		tBossHouse_AdditionalAward["NewCashCoupon"][10214]["ItemId"] = 3306375
		tBossHouse_AdditionalAward["NewCashCoupon"][10214]["Limit"] = 2000
		tBossHouse_AdditionalAward["NewCashCoupon"][10214]["SetFunc"] = Sys_SetSynaGlobalData2
		tBossHouse_AdditionalAward["NewCashCoupon"][10214]["GetFunc"] = Get_SysDynaGlobalData2
		
--刷新在地面
		tBossHouse_AdditionalAward[10209] = {}
		tBossHouse_AdditionalAward[10209][1] = {}
		tBossHouse_AdditionalAward[10209][1]["Item_1"] = 3314900
		tBossHouse_AdditionalAward[10209][1]["Num"] = 2
		
		tBossHouse_AdditionalAward[10209][2] = {}
		tBossHouse_AdditionalAward[10209][2]["Item_1"] = 1003010
		tBossHouse_AdditionalAward[10209][2]["Num"] = 5

		tBossHouse_AdditionalAward[10210] = {}
		tBossHouse_AdditionalAward[10210][1] = {}
		tBossHouse_AdditionalAward[10210][1]["Item_1"] = 3314900
		tBossHouse_AdditionalAward[10210][1]["Num"] = 3

		tBossHouse_AdditionalAward[10210][2] = {}
		tBossHouse_AdditionalAward[10210][2]["Item_1"] = 3305012
		tBossHouse_AdditionalAward[10210][2]["Num"] = 4
		
		tBossHouse_AdditionalAward[10210][3] = {}
		tBossHouse_AdditionalAward[10210][3]["Item_1"] = 1088001
		tBossHouse_AdditionalAward[10210][3]["Num"] = 1
		
		tBossHouse_AdditionalAward[10210][4] = {}
		tBossHouse_AdditionalAward[10210][4]["Item_1"] = 1003010
		tBossHouse_AdditionalAward[10210][4]["Num"] = 5
		
		tBossHouse_AdditionalAward[10211] = {}
		tBossHouse_AdditionalAward[10211][1] = {}
		tBossHouse_AdditionalAward[10211][1]["Item_1"] = 1088001
		tBossHouse_AdditionalAward[10211][1]["Num"] = 1

		tBossHouse_AdditionalAward[10211][2] = {}
		tBossHouse_AdditionalAward[10211][2]["Item_1"] = 3305012
		tBossHouse_AdditionalAward[10211][2]["Num"] = 2

		tBossHouse_AdditionalAward[10211][3] = {}
		tBossHouse_AdditionalAward[10211][3]["Item_1"] = 3305009
		tBossHouse_AdditionalAward[10211][3]["Num"] = 5
		
		tBossHouse_AdditionalAward[10211][4] = {}
		tBossHouse_AdditionalAward[10211][4]["Item_1"] = 3305013
		tBossHouse_AdditionalAward[10211][4]["Num"] = 5
				
		tBossHouse_AdditionalAward[10211][5] = {}
		tBossHouse_AdditionalAward[10211][5]["Item_1"] = 720128
		tBossHouse_AdditionalAward[10211][5]["Num"] = 1
		
		tBossHouse_AdditionalAward[10211][6] = {}
		tBossHouse_AdditionalAward[10211][6]["Item_1"] = 3008269
		tBossHouse_AdditionalAward[10211][6]["Num"] = 1
		

		tBossHouse_AdditionalAward[10212] = {}
		tBossHouse_AdditionalAward[10212][1] = {}
		tBossHouse_AdditionalAward[10212][1]["Item_1"] = 1088000
		tBossHouse_AdditionalAward[10212][1]["Num"] = 1

		tBossHouse_AdditionalAward[10212][2] = {}
		tBossHouse_AdditionalAward[10212][2]["Item_1"] = 720128
		tBossHouse_AdditionalAward[10212][2]["Num"] = 1

		tBossHouse_AdditionalAward[10212][3] = {}
		tBossHouse_AdditionalAward[10212][3]["Item_1"] = 3305009
		tBossHouse_AdditionalAward[10212][3]["Num"] = 5
		
		tBossHouse_AdditionalAward[10212][4] = {}
		tBossHouse_AdditionalAward[10212][4]["Item_1"] = 3305013
		tBossHouse_AdditionalAward[10212][4]["Num"] = 5
		
		tBossHouse_AdditionalAward[10212][5] = {}
		tBossHouse_AdditionalAward[10212][5]["Item_1"] = 3008269
		tBossHouse_AdditionalAward[10212][5]["Num"] = 1

		tBossHouse_AdditionalAward[10213] = {}
		tBossHouse_AdditionalAward[10213][1] = {}
		tBossHouse_AdditionalAward[10213][1]["Item_1"] = 3008265
		tBossHouse_AdditionalAward[10213][1]["Num"] = 1

		tBossHouse_AdditionalAward[10213][2] = {}
		tBossHouse_AdditionalAward[10213][2]["Item_1"] = 711504
		tBossHouse_AdditionalAward[10213][2]["Num"] = 1

		tBossHouse_AdditionalAward[10213][3] = {}
		tBossHouse_AdditionalAward[10213][3]["Item_1"] = 3305009
		tBossHouse_AdditionalAward[10213][3]["Num"] = 5

		tBossHouse_AdditionalAward[10213][4] = {}
		tBossHouse_AdditionalAward[10213][4]["Item_1"] = 3305013
		tBossHouse_AdditionalAward[10213][4]["Num"] = 10
		
		tBossHouse_AdditionalAward[10213][5] = {}
		tBossHouse_AdditionalAward[10213][5]["Item_1"] = 720128
		tBossHouse_AdditionalAward[10213][5]["Num"] = 1

		tBossHouse_AdditionalAward[10214] = {}
		tBossHouse_AdditionalAward[10214][1] = {}
		tBossHouse_AdditionalAward[10214][1]["Item_1"] = 711504
		tBossHouse_AdditionalAward[10214][1]["Num"] = 1

		tBossHouse_AdditionalAward[10214][2] = {}
		tBossHouse_AdditionalAward[10214][2]["Item_1"] = 720128
		tBossHouse_AdditionalAward[10214][2]["Num"] = 1

		tBossHouse_AdditionalAward[10214][3] = {}
		tBossHouse_AdditionalAward[10214][3]["Item_1"] = 3305009
		tBossHouse_AdditionalAward[10214][3]["Num"] = 5

		tBossHouse_AdditionalAward[10214][4] = {}
		tBossHouse_AdditionalAward[10214][4]["Item_1"] = 3305013
		tBossHouse_AdditionalAward[10214][4]["Num"] = 20
		
		tBossHouse_AdditionalAward[10214][5] = {}
		tBossHouse_AdditionalAward[10214][5]["Item_1"] = 3305026
		tBossHouse_AdditionalAward[10214][5]["Num"] = 1
		


local	tBossHouse_Reset = {}
		tBossHouse_Reset[1] = {}
		tBossHouse_Reset[1]["Grobal"] = 51868
		tBossHouse_Reset[1]["MapId"] = 10209
		tBossHouse_Reset[1]["MonsterId"] = {4404,4405}
		tBossHouse_Reset[1]["Pos"] = {}
		tBossHouse_Reset[1]["Pos"][1] = {165,239}
		tBossHouse_Reset[1]["Pos"][2] = {161,161}
		tBossHouse_Reset[1]["Pos"][3] = {267,166}
		tBossHouse_Reset[1]["Pos"][4] = {279,270}
		tBossHouse_Reset[1]["Pos"][5] = {285,373}
		tBossHouse_Reset[1]["Pos"][6] = {381,400}

		tBossHouse_Reset[1]["GenId"] = 22630
		tBossHouse_Reset[1]["Time"] = {}
		tBossHouse_Reset[1]["Time"][1] = "00 00"
		tBossHouse_Reset[1]["Time"][2] = "03 03"
		tBossHouse_Reset[1]["Time"][3] = "05 05"
		tBossHouse_Reset[1]["Time"][4] = "08 08"
		tBossHouse_Reset[1]["Time"][5] = "10 10"
		tBossHouse_Reset[1]["Time"][6] = "13 13"
		tBossHouse_Reset[1]["Time"][7] = "15 15"
		tBossHouse_Reset[1]["Time"][8] = "18 18"
		tBossHouse_Reset[1]["Time"][9] = "20 20"
		tBossHouse_Reset[1]["Time"][10] = "23 23"
		tBossHouse_Reset[1]["Time"][11] = "25 25"
		tBossHouse_Reset[1]["Time"][12] = "28 28"
		tBossHouse_Reset[1]["Time"][13] = "30 30"
		tBossHouse_Reset[1]["Time"][14] = "33 33"
		tBossHouse_Reset[1]["Time"][15] = "35 35"
		tBossHouse_Reset[1]["Time"][16] = "38 38"
		tBossHouse_Reset[1]["Time"][17] = "40 40"
		tBossHouse_Reset[1]["Time"][18] = "43 43"
		tBossHouse_Reset[1]["Time"][19] = "45 45"
		tBossHouse_Reset[1]["Time"][20] = "48 48"
		tBossHouse_Reset[1]["Time"][21] = "50 50"
		tBossHouse_Reset[1]["Time"][22] = "53 53"
		tBossHouse_Reset[1]["Time"][23] = "55 55"
		tBossHouse_Reset[1]["Time"][24] = "58 58"

		tBossHouse_Reset[2] = {}
		tBossHouse_Reset[2]["Grobal"] = 51869
		tBossHouse_Reset[2]["MapId"] = 10210
		tBossHouse_Reset[2]["PosX"] = 160
		tBossHouse_Reset[2]["PosY"] = 370
		tBossHouse_Reset[2]["GenId"] = 22631
		tBossHouse_Reset[2]["MonsterId"] = {4406,4407}
		tBossHouse_Reset[2]["Pos"] = {}
		tBossHouse_Reset[2]["Pos"][1] = {172,235}
		tBossHouse_Reset[2]["Pos"][2] = {169,332}
		tBossHouse_Reset[2]["Pos"][3] = {266,371}
		tBossHouse_Reset[2]["Pos"][4] = {280,309}
		tBossHouse_Reset[2]["Pos"][5] = {275,227}
		tBossHouse_Reset[2]["Pos"][6] = {377,268}

		tBossHouse_Reset[2]["Time"] = {}
		tBossHouse_Reset[2]["Time"][1] = "00 00"
		tBossHouse_Reset[2]["Time"][2] = "03 03"
		tBossHouse_Reset[2]["Time"][3] = "06 06"
		tBossHouse_Reset[2]["Time"][4] = "09 09"
		tBossHouse_Reset[2]["Time"][5] = "12 12"
		tBossHouse_Reset[2]["Time"][6] = "15 15"
		tBossHouse_Reset[2]["Time"][7] = "18 18"
		tBossHouse_Reset[2]["Time"][8] = "21 21"
		tBossHouse_Reset[2]["Time"][9] = "24 24"
		tBossHouse_Reset[2]["Time"][10] = "27 27"
		tBossHouse_Reset[2]["Time"][11] = "30 30"
		tBossHouse_Reset[2]["Time"][12] = "33 33"
		tBossHouse_Reset[2]["Time"][13] = "36 36"
		tBossHouse_Reset[2]["Time"][14] = "39 39"
		tBossHouse_Reset[2]["Time"][15] = "42 42"
		tBossHouse_Reset[2]["Time"][16] = "45 45"
		tBossHouse_Reset[2]["Time"][17] = "48 48"
		tBossHouse_Reset[2]["Time"][18] = "51 51"
		tBossHouse_Reset[2]["Time"][19] = "54 54"
		tBossHouse_Reset[2]["Time"][20] = "57 57"

		tBossHouse_Reset[3] = {}
		tBossHouse_Reset[3]["Grobal"] = 51870
		tBossHouse_Reset[3]["MapId"] = 10211
		tBossHouse_Reset[3]["PosX"] = 185
		tBossHouse_Reset[3]["PosY"] = 165
		tBossHouse_Reset[3]["GenId"] = 22632
		tBossHouse_Reset[3]["MonsterId"] = {4408,4409}
		tBossHouse_Reset[3]["Pos"] = {}
		tBossHouse_Reset[3]["Pos"][1] = {380,441}
		tBossHouse_Reset[3]["Pos"][2] = {277,420}
		tBossHouse_Reset[3]["Pos"][3] = {250,301}
		tBossHouse_Reset[3]["Pos"][4] = {304,189}
		tBossHouse_Reset[3]["Pos"][5] = {145,307}
		tBossHouse_Reset[3]["Pos"][6] = {168,167}

		tBossHouse_Reset[3]["Time"] = {}
		tBossHouse_Reset[3]["Time"][1] = "00 00"
		tBossHouse_Reset[3]["Time"][2] = "03 03"
		tBossHouse_Reset[3]["Time"][3] = "06 06"
		tBossHouse_Reset[3]["Time"][4] = "09 09"
		tBossHouse_Reset[3]["Time"][5] = "12 12"
		tBossHouse_Reset[3]["Time"][6] = "15 15"
		tBossHouse_Reset[3]["Time"][7] = "18 18"
		tBossHouse_Reset[3]["Time"][8] = "21 21"
		tBossHouse_Reset[3]["Time"][9] = "24 24"
		tBossHouse_Reset[3]["Time"][10] = "27 27"
		tBossHouse_Reset[3]["Time"][11] = "30 30"
		tBossHouse_Reset[3]["Time"][12] = "33 33"
		tBossHouse_Reset[3]["Time"][13] = "36 36"
		tBossHouse_Reset[3]["Time"][14] = "39 39"
		tBossHouse_Reset[3]["Time"][15] = "42 42"
		tBossHouse_Reset[3]["Time"][16] = "45 45"
		tBossHouse_Reset[3]["Time"][17] = "48 48"
		tBossHouse_Reset[3]["Time"][18] = "51 51"
		tBossHouse_Reset[3]["Time"][19] = "54 54"
		tBossHouse_Reset[3]["Time"][20] = "57 57"
		
		tBossHouse_Reset[4] = {}
		tBossHouse_Reset[4]["Grobal"] = 51871
		tBossHouse_Reset[4]["MapId"] = 10212
		tBossHouse_Reset[4]["PosX"] = 185
		tBossHouse_Reset[4]["PosY"] = 165
		tBossHouse_Reset[4]["GenId"] = 22633
		tBossHouse_Reset[4]["MonsterId"] = {4410,4411}
		tBossHouse_Reset[4]["Pos"] = {}
		tBossHouse_Reset[4]["Pos"][1] = {165,239}
		tBossHouse_Reset[4]["Pos"][2] = {161,161}
		tBossHouse_Reset[4]["Pos"][3] = {267,166}
		tBossHouse_Reset[4]["Pos"][4] = {279,270}
		tBossHouse_Reset[4]["Pos"][5] = {285,373}
		tBossHouse_Reset[4]["Pos"][6] = {381,400}

		tBossHouse_Reset[4]["Time"] = {}
		tBossHouse_Reset[4]["Time"][1] = "00 00"
		tBossHouse_Reset[4]["Time"][2] = "15 15"
		tBossHouse_Reset[4]["Time"][3] = "30 30"
		tBossHouse_Reset[4]["Time"][4] = "45 45"
		
		tBossHouse_Reset[5] = {}
		tBossHouse_Reset[5]["Grobal"] = 51872
		tBossHouse_Reset[5]["MapId"] = 10213
		tBossHouse_Reset[5]["PosX"] = 390
		tBossHouse_Reset[5]["PosY"] = 315
		tBossHouse_Reset[5]["GenId"] = 22634
		tBossHouse_Reset[5]["MonsterId"] = {4412,4413}
		tBossHouse_Reset[5]["Pos"] = {}
		tBossHouse_Reset[5]["Pos"][1] = {172,235}
		tBossHouse_Reset[5]["Pos"][2] = {169,332}
		tBossHouse_Reset[5]["Pos"][3] = {266,371}
		tBossHouse_Reset[5]["Pos"][4] = {280,309}
		tBossHouse_Reset[5]["Pos"][5] = {275,227}
		tBossHouse_Reset[5]["Pos"][6] = {377,268}

		tBossHouse_Reset[5]["Time"] = {}
		tBossHouse_Reset[5]["Time"][1] = "00 00"
		tBossHouse_Reset[5]["Time"][2] = "30 30"

		tBossHouse_Reset[6] = {}
		tBossHouse_Reset[6]["Grobal"] = 51873
		tBossHouse_Reset[6]["MapId"] = 10214
		tBossHouse_Reset[6]["PosX"] = 390
		tBossHouse_Reset[6]["PosY"] = 315
		tBossHouse_Reset[6]["GenId"] = 22635
		tBossHouse_Reset[6]["MonsterId"] = {4414,4415}
		tBossHouse_Reset[6]["Pos"] = {}
		tBossHouse_Reset[6]["Pos"][1] = {380,441}
		tBossHouse_Reset[6]["Pos"][2] = {277,420}
		tBossHouse_Reset[6]["Pos"][3] = {250,301}
		tBossHouse_Reset[6]["Pos"][4] = {304,189}
		tBossHouse_Reset[6]["Pos"][5] = {145,307}
		tBossHouse_Reset[6]["Pos"][6] = {168,167}

		tBossHouse_Reset[6]["Time"] = {}
		tBossHouse_Reset[6]["Time"][1] = "00 00"

--monster出生 postx,posty,globalid,pos		

		
--层号以及循环对应相应monsterId
local tBossHouse_GetMonsterId = {}
tBossHouse_GetMonsterId[1] = {}
tBossHouse_GetMonsterId[1][0] = 4404
tBossHouse_GetMonsterId[1][1] = 4405
tBossHouse_GetMonsterId[1][2] = 4579
tBossHouse_GetMonsterId[1][3] = 4580
tBossHouse_GetMonsterId[1][4] = 4581
tBossHouse_GetMonsterId[1][5] = 4582

tBossHouse_GetMonsterId[2] = {}
tBossHouse_GetMonsterId[2][0] = 4406
tBossHouse_GetMonsterId[2][1] = 4407
tBossHouse_GetMonsterId[2][2] = 4583
tBossHouse_GetMonsterId[2][3] = 4584
tBossHouse_GetMonsterId[2][4] = 4585
tBossHouse_GetMonsterId[2][5] = 4586

tBossHouse_GetMonsterId[3] = {}
tBossHouse_GetMonsterId[3][0] = 4408
tBossHouse_GetMonsterId[3][1] = 4409
tBossHouse_GetMonsterId[3][2] = 4587
tBossHouse_GetMonsterId[3][3] = 4588
tBossHouse_GetMonsterId[3][4] = 4589
tBossHouse_GetMonsterId[3][5] = 4590

tBossHouse_GetMonsterId[4] = {}
tBossHouse_GetMonsterId[4][0] = 4410
tBossHouse_GetMonsterId[4][1] = 4411
tBossHouse_GetMonsterId[4][2] = 4591
tBossHouse_GetMonsterId[4][3] = 4592
tBossHouse_GetMonsterId[4][4] = 4593
tBossHouse_GetMonsterId[4][5] = 4594

tBossHouse_GetMonsterId[5] = {}
tBossHouse_GetMonsterId[5][0] = 4412
tBossHouse_GetMonsterId[5][1] = 4413
tBossHouse_GetMonsterId[5][2] = 4595
tBossHouse_GetMonsterId[5][3] = 4596
tBossHouse_GetMonsterId[5][4] = 4597
tBossHouse_GetMonsterId[5][5] = 4598

tBossHouse_GetMonsterId[6] = {}
tBossHouse_GetMonsterId[6][0] = 4414
tBossHouse_GetMonsterId[6][1] = 4415
tBossHouse_GetMonsterId[6][2] = 4599
tBossHouse_GetMonsterId[6][3] = 4600
tBossHouse_GetMonsterId[6][4] = 4601
tBossHouse_GetMonsterId[6][5] = 4602

--直接给
local	tBossHouse_ItemAward = {}
		tBossHouse_ItemAward[3305007] = {}
		tBossHouse_ItemAward[3305007]["LogId"] = 12000869
		tBossHouse_ItemAward[3305007]["Flag"] = 1
		tBossHouse_ItemAward[3305007]["Num"] = 20
		tBossHouse_ItemAward[3305007]["RewardItem"] = {}
		tBossHouse_ItemAward[3305007]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305007]["RewardItem"][1]["Id"] = 1088000
		tBossHouse_ItemAward[3305007]["RewardItem"][1]["Attr"] = "0 1"

		tBossHouse_ItemAward[3305009] = {}
		tBossHouse_ItemAward[3305009]["LogId"] = 12000869
		tBossHouse_ItemAward[3305009]["Flag"] = 1
		tBossHouse_ItemAward[3305009]["RewardCultivation"] = {}
		tBossHouse_ItemAward[3305009]["RewardCultivation"]["Value"] = 50

		tBossHouse_ItemAward[3305012] = {}
		tBossHouse_ItemAward[3305012]["LogId"] = 12000869
		tBossHouse_ItemAward[3305012]["Flag"] = 1
		tBossHouse_ItemAward[3305012]["RewardExpTime"] = {}
		tBossHouse_ItemAward[3305012]["RewardExpTime"]["Value"] = 20

		tBossHouse_ItemAward[3305013] = {}
		tBossHouse_ItemAward[3305013]["LogId"] = 12000869
		tBossHouse_ItemAward[3305013]["Flag"] = 1
		tBossHouse_ItemAward[3305013]["RewardStrengthValue"] = {}
		tBossHouse_ItemAward[3305013]["RewardStrengthValue"]["Value"] = 50

		tBossHouse_ItemAward[3305014] = {}
		tBossHouse_ItemAward[3305014]["LogId"] = 12000869
		tBossHouse_ItemAward[3305014]["Flag"] = 1
		tBossHouse_ItemAward[3305014]["Num"] = 10
		tBossHouse_ItemAward[3305014]["RewardItem"] = {}
		tBossHouse_ItemAward[3305014]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305014]["RewardItem"][1]["Id"] = 720027
		tBossHouse_ItemAward[3305014]["RewardItem"][1]["Attr"] = "0 1"
		
		tBossHouse_ItemAward[3305018] = {}
		tBossHouse_ItemAward[3305018]["LogId"] = 12000869
		tBossHouse_ItemAward[3305018]["Flag"] = 1
		tBossHouse_ItemAward[3305018]["RewardStrengthValue"] = {}
		tBossHouse_ItemAward[3305018]["RewardStrengthValue"]["Value"] = 200
		
		tBossHouse_ItemAward[3305022] = {}
		tBossHouse_ItemAward[3305022]["LogId"] = 12000869
		tBossHouse_ItemAward[3305022]["Flag"] = 1
		tBossHouse_ItemAward[3305022]["RewardStrengthValue"] = {}
		tBossHouse_ItemAward[3305022]["RewardStrengthValue"]["Value"] = 300

		tBossHouse_ItemAward[3305025] = {}
		tBossHouse_ItemAward[3305025]["LogId"] = 12000869
		tBossHouse_ItemAward[3305025]["Flag"] = 1
		tBossHouse_ItemAward[3305025]["RewardStrengthValue"] = {}
		tBossHouse_ItemAward[3305025]["RewardStrengthValue"]["Value"] = 400
		
		tBossHouse_ItemAward[3305029] = {}
		tBossHouse_ItemAward[3305029]["LogId"] = 12000869
		tBossHouse_ItemAward[3305029]["Flag"] = 1
		tBossHouse_ItemAward[3305029]["RewardStrengthValue"] = {}
		tBossHouse_ItemAward[3305029]["RewardStrengthValue"]["Value"] = 500
		
		tBossHouse_ItemAward[3305032] = {}
		tBossHouse_ItemAward[3305032]["LogId"] = 12000869
		tBossHouse_ItemAward[3305032]["Flag"] = 1
		tBossHouse_ItemAward[3305032]["RewardStrengthValue"] = {}
		tBossHouse_ItemAward[3305032]["RewardStrengthValue"]["Value"] = 600

--相同概率随机物品
--随机宝石
		tBossHouse_ItemAward[3305008] = {}
		tBossHouse_ItemAward[3305008]["LogId"] = 12000869
		tBossHouse_ItemAward[3305008]["Flag"] = 2
		tBossHouse_ItemAward[3305008]["Num"] = 15
		tBossHouse_ItemAward[3305008]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305008]["RewardItem"] = {700003,700013,700023,700033,700043,700053,700063}

--随机淬炼
-- 3-4
		tBossHouse_ItemAward[3305023] = {}
		tBossHouse_ItemAward[3305023]["LogId"] = 12000869
		tBossHouse_ItemAward[3305023]["Flag"] = 2
		tBossHouse_ItemAward[3305023]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305023]["RewardItem"] = {724402,724407,724412,724417,724422,724427,724432,724437,724442,724451,724456,724461,724470,724475,724480,
		724485,724490,724495,724350,724355,724360,724365,724370,724375,724382,724387,724392,724517,725194,725199,725204,725209,3006167,
		724403,724408,724413,724418,724423,724428,724433,724438,724443,724452,724457,724462,724471,724476,724481,724486,724491,724496,724351,724356,
		724361,724366,724371,724376,724383,724388,724393,724518,725195,725200,725205,725210,3006168}

-- 4-5
		tBossHouse_ItemAward[3305027] = {}
		tBossHouse_ItemAward[3305027]["LogId"] = 12000869
		tBossHouse_ItemAward[3305027]["Flag"] = 2
		tBossHouse_ItemAward[3305027]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305027]["RewardItem"] = {724403,724408,724413,724418,724423,724428,724433,724438,724443,724452,724457,724462,724471,724476,724481,
		724486,724491,724496,724351,724356,724361,724366,724371,724376,724383,724388,724393,724518,725195,725200,725205,725210,3006168,
		724404,724409,724414,724419,724424,724429,724434,724439,724444,724453,724458,724463,724472,724477,724482,724487,724492,724497,724352,724357,724362,
		724367,724372,724377,724384,724389,724394,724519,725196,725201,725206,725211,3006169}

-- 5-6
		tBossHouse_ItemAward[3305030] = {}
		tBossHouse_ItemAward[3305030]["LogId"] = 12000869
		tBossHouse_ItemAward[3305030]["Flag"] = 2
		tBossHouse_ItemAward[3305030]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305030]["RewardItem"] = {724404,724409,724414,724419,724424,724429,724434,724439,724444,724453,724458,724463,724472,724477,724482,
		724487,724492,724497,724352,724357,724362,724367,724372,724377,724384,724389,724394,724519,725196,725201,725206,725211,3006169,
		3004137,3004138,3004139,3004140,3004141,3004142,3004143,3004144,3004147,3004148,3004149,3004150,3004151,3004152,3004153,3004156,3004158,3004159,3004160,
		3004161,3004163,3004164,3004165,3004166,3004281,3004282,3004283,3004284,3004285,3004286,3004287,3004288,3004289,3004290,3004291,3004293,3004295,3004292,
		3004294,3004136,3004146,3004157,3004155,3004145,3004154,3004162,3006170}

--随机神魂
-- 4-5
		tBossHouse_ItemAward[3305024] = {}
		tBossHouse_ItemAward[3305024]["LogId"] = 12000869
		tBossHouse_ItemAward[3305024]["Flag"] = 2
		tBossHouse_ItemAward[3305024]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305024]["RewardItem"] = {800014,800015,800016,800214,800512,800613,823052,823053,823054,800720,800803,800808,800253,800913,801002,
		801102,801208,801210,801304,820056,820057,800415,821028,821030}

-- 5-6
		tBossHouse_ItemAward[3305028] = {}
		tBossHouse_ItemAward[3305028]["LogId"] = 12000869
		tBossHouse_ItemAward[3305028]["Flag"] = 2
		tBossHouse_ItemAward[3305028]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305028]["RewardItem"] = {820056,820057,800415,821028,821030,822053,822055,800000,800110,800017,800320,800513,800616,800722,823055,
		823056,820071,820072,800421,821031,821032,824017,823057,800804,800809,800254,800916,801003,801103,801212,801214,801306}

-- 6-7
		tBossHouse_ItemAward[3305031] = {}
		tBossHouse_ItemAward[3305031]["LogId"] = 12000869
		tBossHouse_ItemAward[3305031]["Flag"] = 2
		tBossHouse_ItemAward[3305031]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305031]["RewardItem"] = {822053,822055,800000,800110,800017,800320,800513,800616,800722,823055,823056,820071,820072,800421,821031,
		821032,824017,823057,800804,800809,800254,800916,801003,801103,801212,801214,801306,824020,824019,824018,823062,823061,823060,823059,823058,822072,822071,
		821034,821033,820076,820075,820074,820073,800917,800811,800810,800725,800618,800522,800422,800255,800215,800142,800111,800020,801004,801104,801216,
		801218,801308}

--五星外套制作材料
		tBossHouse_ItemAward[3305026] = {}
		tBossHouse_ItemAward[3305026]["LogId"] = 12000869
		tBossHouse_ItemAward[3305026]["Flag"] = 2
		tBossHouse_ItemAward[3305026]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305026]["RewardItem"] = {3008230,3008232,3008254,3008256,3008230,3008258,3008260,3008227,3008228}

--100级随机本职业精品装备
		tBossHouse_ItemAward[3305010] = {}
		tBossHouse_ItemAward[3305010]["LogId"] = 12000869
		tBossHouse_ItemAward[3305010]["Flag"] = 3
		tBossHouse_ItemAward[3305010]["Attr"] = "0 1"

		tBossHouse_ItemAward[3305010][1] = {}
		tBossHouse_ItemAward[3305010][1]["RewardItem"] = {118088,160198}

		tBossHouse_ItemAward[3305010][2] = {}
		tBossHouse_ItemAward[3305010][2]["RewardItem"] = {111088,160198}
		
		tBossHouse_ItemAward[3305010][4] = {}
		tBossHouse_ItemAward[3305010][4]["RewardItem"] = {113068,160198}
		
		tBossHouse_ItemAward[3305010][5] = {}
		tBossHouse_ItemAward[3305010][5]["RewardItem"] = {123088,160198}
		
		tBossHouse_ItemAward[3305010][6] = {}
		tBossHouse_ItemAward[3305010][6]["RewardItem"] = {143088,160198}
		
		tBossHouse_ItemAward[3305010][7] = {}
		tBossHouse_ItemAward[3305010][7]["RewardItem"] = {144088,160198}
		
		tBossHouse_ItemAward[3305010][8] = {}
		tBossHouse_ItemAward[3305010][8]["RewardItem"] = {148088,160198}
		
		tBossHouse_ItemAward[3305010][10] = {}
		tBossHouse_ItemAward[3305010][10]["RewardItem"] = {114088,160198}
		
		tBossHouse_ItemAward[3305010][16] = {}
		tBossHouse_ItemAward[3305010][16]["RewardItem"] = {170088,160198}

--100级随机本职业极品装备
		tBossHouse_ItemAward[3305011] = {}
		tBossHouse_ItemAward[3305011]["LogId"] = 12000869
		tBossHouse_ItemAward[3305011]["Flag"] = 3
		tBossHouse_ItemAward[3305011]["Attr"] = "0 1"

		tBossHouse_ItemAward[3305011][1] = {}
		tBossHouse_ItemAward[3305011][1]["RewardItem"] = {118089,160199}

		tBossHouse_ItemAward[3305011][2] = {}
		tBossHouse_ItemAward[3305011][2]["RewardItem"] = {111089,160199}
		
		tBossHouse_ItemAward[3305011][4] = {}
		tBossHouse_ItemAward[3305011][4]["RewardItem"] = {113069,160199}
		
		tBossHouse_ItemAward[3305011][5] = {}
		tBossHouse_ItemAward[3305011][5]["RewardItem"] = {123089,160199}
		
		tBossHouse_ItemAward[3305011][6] = {}
		tBossHouse_ItemAward[3305011][6]["RewardItem"] = {143089,160199}
		
		tBossHouse_ItemAward[3305011][7] = {}
		tBossHouse_ItemAward[3305011][7]["RewardItem"] = {144089,160199}
		
		tBossHouse_ItemAward[3305011][8] = {}
		tBossHouse_ItemAward[3305011][8]["RewardItem"] = {148089,160199}
		
		tBossHouse_ItemAward[3305011][10] = {}
		tBossHouse_ItemAward[3305011][10]["RewardItem"] = {114089,160199}

		tBossHouse_ItemAward[3305011][16] = {}
		tBossHouse_ItemAward[3305011][16]["RewardItem"] = {170089,160199}
		
--110级随机本职业精品装备
		tBossHouse_ItemAward[3305016] = {}
		tBossHouse_ItemAward[3305016]["LogId"] = 12000869
		tBossHouse_ItemAward[3305016]["Flag"] = 3
		tBossHouse_ItemAward[3305016]["Attr"] = "0 1"

		tBossHouse_ItemAward[3305016][1] = {}
		tBossHouse_ItemAward[3305016][1]["RewardItem"] = {410218,150218}

		tBossHouse_ItemAward[3305016][2] = {}
		tBossHouse_ItemAward[3305016][2]["RewardItem"] = {480218,150218}
		
		tBossHouse_ItemAward[3305016][4] = {}
		tBossHouse_ItemAward[3305016][4]["RewardItem"] = {613208,150218}
		
		tBossHouse_ItemAward[3305016][5] = {}
		tBossHouse_ItemAward[3305016][5]["RewardItem"] = {601218,150218}
		
		tBossHouse_ItemAward[3305016][6] = {}
		tBossHouse_ItemAward[3305016][6]["RewardItem"] = {610218,150218}
		
		tBossHouse_ItemAward[3305016][7] = {}
		tBossHouse_ItemAward[3305016][7]["RewardItem"] = {611218,150218}
		
		tBossHouse_ItemAward[3305016][8] = {}
		tBossHouse_ItemAward[3305016][8]["RewardItem"] = {617218,150218}
		
		tBossHouse_ItemAward[3305016][10] = {}
		tBossHouse_ItemAward[3305016][10]["RewardItem"] = {421218,150218}

		tBossHouse_ItemAward[3305016][16] = {}
		tBossHouse_ItemAward[3305016][16]["RewardItem"] = {626218,150218}
		
--110级随机本职业极品装备
		tBossHouse_ItemAward[3305017] = {}
		tBossHouse_ItemAward[3305017]["LogId"] = 12000869
		tBossHouse_ItemAward[3305017]["Flag"] = 3
		tBossHouse_ItemAward[3305017]["Attr"] = "0 1"

		tBossHouse_ItemAward[3305017][1] = {}
		tBossHouse_ItemAward[3305017][1]["RewardItem"] = {410219,150219}

		tBossHouse_ItemAward[3305017][2] = {}
		tBossHouse_ItemAward[3305017][2]["RewardItem"] = {480219,150219}
		
		tBossHouse_ItemAward[3305017][4] = {}
		tBossHouse_ItemAward[3305017][4]["RewardItem"] = {613209,150219}
		
		tBossHouse_ItemAward[3305017][5] = {}
		tBossHouse_ItemAward[3305017][5]["RewardItem"] = {601219,150219}
		
		tBossHouse_ItemAward[3305017][6] = {}
		tBossHouse_ItemAward[3305017][6]["RewardItem"] = {610219,150219}
		
		tBossHouse_ItemAward[3305017][7] = {}
		tBossHouse_ItemAward[3305017][7]["RewardItem"] = {611219,150219}

		tBossHouse_ItemAward[3305017][8] = {}
		tBossHouse_ItemAward[3305017][8]["RewardItem"] = {617219,150219}
		
		tBossHouse_ItemAward[3305017][10] = {}
		tBossHouse_ItemAward[3305017][10]["RewardItem"] = {421219,150219}

		tBossHouse_ItemAward[3305017][16] = {}
		tBossHouse_ItemAward[3305017][16]["RewardItem"] = {626219,150219}
		
--120级随机本职业精品装备
		tBossHouse_ItemAward[3305020] = {}
		tBossHouse_ItemAward[3305020]["LogId"] = 12000869
		tBossHouse_ItemAward[3305020]["Flag"] = 3
		tBossHouse_ItemAward[3305020]["Attr"] = "0 1"

		tBossHouse_ItemAward[3305020][1] = {}
		tBossHouse_ItemAward[3305020][1]["RewardItem"] = {118108,160228}

		tBossHouse_ItemAward[3305020][2] = {}
		tBossHouse_ItemAward[3305020][2]["RewardItem"] = {111108,160228}
		
		tBossHouse_ItemAward[3305020][4] = {}
		tBossHouse_ItemAward[3305020][4]["RewardItem"] = {113108,160228}
		
		tBossHouse_ItemAward[3305020][5] = {}
		tBossHouse_ItemAward[3305020][5]["RewardItem"] = {112108,160228}
		
		tBossHouse_ItemAward[3305020][6] = {}
		tBossHouse_ItemAward[3305020][6]["RewardItem"] = {143108,160228}
		
		tBossHouse_ItemAward[3305020][7] = {}
		tBossHouse_ItemAward[3305020][7]["RewardItem"] = {143108,160228}
		
		tBossHouse_ItemAward[3305020][8] = {}
		tBossHouse_ItemAward[3305020][8]["RewardItem"] = {143108,160228}
		
		tBossHouse_ItemAward[3305020][10] = {}
		tBossHouse_ItemAward[3305020][10]["RewardItem"] = {143108,160228}

		tBossHouse_ItemAward[3305020][16] = {}
		tBossHouse_ItemAward[3305020][16]["RewardItem"] = {143108,160228}
		
--120级随机本职业极品装备
		tBossHouse_ItemAward[3305021] = {}
		tBossHouse_ItemAward[3305021]["LogId"] = 12000869
		tBossHouse_ItemAward[3305021]["Flag"] = 3
		tBossHouse_ItemAward[3305021]["Attr"] = "0 1"

		tBossHouse_ItemAward[3305021][1] = {}
		tBossHouse_ItemAward[3305021][1]["RewardItem"] = {118109,160229}

		tBossHouse_ItemAward[3305021][2] = {}
		tBossHouse_ItemAward[3305021][2]["RewardItem"] = {111109,160229}

		tBossHouse_ItemAward[3305021][4] = {}
		tBossHouse_ItemAward[3305021][4]["RewardItem"] = {113109,160229}

		tBossHouse_ItemAward[3305021][5] = {}
		tBossHouse_ItemAward[3305021][5]["RewardItem"] = {112109,160229}

		tBossHouse_ItemAward[3305021][6] = {}
		tBossHouse_ItemAward[3305021][6]["RewardItem"] = {143109,160229}
		
		tBossHouse_ItemAward[3305021][7] = {}
		tBossHouse_ItemAward[3305021][7]["RewardItem"] = {144109,160229}

		tBossHouse_ItemAward[3305021][8] = {}
		tBossHouse_ItemAward[3305021][8]["RewardItem"] = {148109,160229}

		tBossHouse_ItemAward[3305021][10] = {}
		tBossHouse_ItemAward[3305021][10]["RewardItem"] = {114109,160229}

		tBossHouse_ItemAward[3305021][16] = {}
		tBossHouse_ItemAward[3305021][16]["RewardItem"] = {170109,160229}

--不同概率物品
--三星材料包
		tBossHouse_ItemAward[3305015] = {}
		tBossHouse_ItemAward[3305015]["LogId"] = 12000869
		tBossHouse_ItemAward[3305015]["Flag"] = 4

		tBossHouse_ItemAward[3305015][1] = {}
		tBossHouse_ItemAward[3305015][1]["ItemChanceSum"] = 10000

		tBossHouse_ItemAward[3305015][1][1] = {}
		tBossHouse_ItemAward[3305015][1][1]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305015][1][1]["ItemChance"] = 3000
		tBossHouse_ItemAward[3305015][1][1]["RewardItem"] = {}
		tBossHouse_ItemAward[3305015][1][1]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305015][1][1]["RewardItem"][1]["Id"] = 3008270
		tBossHouse_ItemAward[3305015][1][1]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305015][1][1]["Log"] = "0,0,3305015,1,12000869,2,3008270,1"

		tBossHouse_ItemAward[3305015][1][2] = {}
		tBossHouse_ItemAward[3305015][1][2]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305015][1][2]["ItemChance"] = 3000
		tBossHouse_ItemAward[3305015][1][2]["RewardItem"] = {}
		tBossHouse_ItemAward[3305015][1][2]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305015][1][2]["RewardItem"][1]["Id"] = 3008323
		tBossHouse_ItemAward[3305015][1][2]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305015][1][2]["Log"] = "0,0,3305015,1,12000869,2,3008323,1"

		tBossHouse_ItemAward[3305015][1][3] = {}
		tBossHouse_ItemAward[3305015][1][3]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305015][1][3]["ItemChance"] = 2000
		tBossHouse_ItemAward[3305015][1][3]["RewardItem"] = {}
		tBossHouse_ItemAward[3305015][1][3]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305015][1][3]["RewardItem"][1]["Id"] = 3008227
		tBossHouse_ItemAward[3305015][1][3]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305015][1][3]["Log"] = "0,0,3305015,1,12000869,2,3008227,1"

		tBossHouse_ItemAward[3305015][1][4] = {}
		tBossHouse_ItemAward[3305015][1][4]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305015][1][4]["ItemChance"] = 2000
		tBossHouse_ItemAward[3305015][1][4]["RewardItem"] = {}
		tBossHouse_ItemAward[3305015][1][4]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305015][1][4]["RewardItem"][1]["Id"] = 3008228
		tBossHouse_ItemAward[3305015][1][4]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305015][1][4]["Log"] = "0,0,3305015,1,12000869,2,3008228,1"

--四星材料包
		tBossHouse_ItemAward[3305019] = {}
		tBossHouse_ItemAward[3305019]["LogId"] = 12000869
		tBossHouse_ItemAward[3305019]["Flag"] = 4

		tBossHouse_ItemAward[3305019][1] = {}
		tBossHouse_ItemAward[3305019][1]["ItemChanceSum"] = 10000

		tBossHouse_ItemAward[3305019][1][1] = {}
		tBossHouse_ItemAward[3305019][1][1]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305019][1][1]["ItemChance"] = 3000
		tBossHouse_ItemAward[3305019][1][1]["RewardItem"] = {}
		tBossHouse_ItemAward[3305019][1][1]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305019][1][1]["RewardItem"][1]["Id"] = 3008268
		tBossHouse_ItemAward[3305019][1][1]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305019][1][1]["Log"] = "0,0,3305019,1,12000869,2,3008268,1"

		tBossHouse_ItemAward[3305019][1][2] = {}
		tBossHouse_ItemAward[3305019][1][2]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305019][1][2]["ItemChance"] = 3000
		tBossHouse_ItemAward[3305019][1][2]["RewardItem"] = {}
		tBossHouse_ItemAward[3305019][1][2]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305019][1][2]["RewardItem"][1]["Id"] = 3008266
		tBossHouse_ItemAward[3305019][1][2]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305019][1][2]["Log"] = "0,0,3305019,1,12000869,2,3008266,1"

		tBossHouse_ItemAward[3305019][1][3] = {}
		tBossHouse_ItemAward[3305019][1][3]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305019][1][3]["ItemChance"] = 2000
		tBossHouse_ItemAward[3305019][1][3]["RewardItem"] = {}
		tBossHouse_ItemAward[3305019][1][3]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305019][1][3]["RewardItem"][1]["Id"] = 3008227
		tBossHouse_ItemAward[3305019][1][3]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305019][1][3]["Log"] = "0,0,3305019,1,12000869,2,3008227,1"

		tBossHouse_ItemAward[3305019][1][4] = {}
		tBossHouse_ItemAward[3305019][1][4]["RandomItemChanceType"] = 2
		tBossHouse_ItemAward[3305019][1][4]["ItemChance"] = 2000
		tBossHouse_ItemAward[3305019][1][4]["RewardItem"] = {}
		tBossHouse_ItemAward[3305019][1][4]["RewardItem"][1] = {}
		tBossHouse_ItemAward[3305019][1][4]["RewardItem"][1]["Id"] = 3008228
		tBossHouse_ItemAward[3305019][1][4]["RewardItem"][1]["Attr"] = "0 1"
		tBossHouse_ItemAward[3305019][1][4]["Log"] = "0,0,3305019,1,12000869,2,3008228,1"

local	tBossHouse_KillMonsterTask = {}
		tBossHouse_KillMonsterTask[1] = {} --杀小怪任务编号
		tBossHouse_KillMonsterTask[1]["EventType"] = 167
		tBossHouse_KillMonsterTask[1]["DataType"] = 96
		
		tBossHouse_KillMonsterTask[2] = {} --杀小怪数量
		tBossHouse_KillMonsterTask[2]["EventType"] = 167
		tBossHouse_KillMonsterTask[2]["DataType"] = 97

		tBossHouse_KillMonsterTask[3] = {} --完成任务数量
		tBossHouse_KillMonsterTask[3]["EventType"] = 167
		tBossHouse_KillMonsterTask[3]["DataType"] = 98

		tBossHouse_KillMonsterTask["KillNum"] = 50
		tBossHouse_KillMonsterTask["TaskNum"] = 20

		tBossHouse_KillMonsterTask["Task"] = {}
		tBossHouse_KillMonsterTask["Task"][10209] = {1,2,3}
		tBossHouse_KillMonsterTask["Task"][10210] = {4,5,6}
		tBossHouse_KillMonsterTask["Task"][10211] = {7,8,9}
		tBossHouse_KillMonsterTask["Task"][10212] = {10,11,12}
		tBossHouse_KillMonsterTask["Task"][10213] = {13,14,15}
		tBossHouse_KillMonsterTask["Task"][10214] = {16,17,18}
		
		tBossHouse_KillMonsterTask["NpcId"] = {}
		tBossHouse_KillMonsterTask["NpcId"][10209] = 11411
		tBossHouse_KillMonsterTask["NpcId"][10210] = 11412
		tBossHouse_KillMonsterTask["NpcId"][10211] = 11413
		tBossHouse_KillMonsterTask["NpcId"][10212] = 11414
		tBossHouse_KillMonsterTask["NpcId"][10213] = 11415
		tBossHouse_KillMonsterTask["NpcId"][10214] = 11416

		tBossHouse_KillMonsterTask["Monster"] = {}
		tBossHouse_KillMonsterTask["Monster"][1] = 4464
		tBossHouse_KillMonsterTask["Monster"][2] = 4465
		tBossHouse_KillMonsterTask["Monster"][3] = 4466
		tBossHouse_KillMonsterTask["Monster"][4] = 4467
		tBossHouse_KillMonsterTask["Monster"][5] = 4468
		tBossHouse_KillMonsterTask["Monster"][6] = 4469
		tBossHouse_KillMonsterTask["Monster"][7] = 4470
		tBossHouse_KillMonsterTask["Monster"][8] = 4471
		tBossHouse_KillMonsterTask["Monster"][9] = 4472
		tBossHouse_KillMonsterTask["Monster"][10] = 4473
		tBossHouse_KillMonsterTask["Monster"][11] = 4474
		tBossHouse_KillMonsterTask["Monster"][12] = 4475
		tBossHouse_KillMonsterTask["Monster"][13] = 4476
		tBossHouse_KillMonsterTask["Monster"][14] = 4477
		tBossHouse_KillMonsterTask["Monster"][15] = 4478
		tBossHouse_KillMonsterTask["Monster"][16] = 4479
		tBossHouse_KillMonsterTask["Monster"][17] = 4480
		tBossHouse_KillMonsterTask["Monster"][18] = 4481

local	tBossHouse_TaskAward = {}
		tBossHouse_TaskAward["LastTask"] = {}
		tBossHouse_TaskAward["LastTask"]["LogId"] = 12000869
		tBossHouse_TaskAward["LastTask"]["RewardMoney"] = {}
		tBossHouse_TaskAward["LastTask"]["RewardMoney"]["Value"] = 100000
		tBossHouse_TaskAward["LastTask"]["Gold"] = true

		tBossHouse_TaskAward[10209] = {}
		tBossHouse_TaskAward[10209]["LogId"] = 12000869
		tBossHouse_TaskAward[10209]["RewardExpTime"] = {}
		tBossHouse_TaskAward[10209]["RewardExpTime"]["Value"] = 60

		tBossHouse_TaskAward[10209]["RewardItem"] = {}
		tBossHouse_TaskAward[10209]["RewardItem"][1] = {}
		tBossHouse_TaskAward[10209]["RewardItem"][1]["Id"] = 1000040
		tBossHouse_TaskAward[10209]["RewardItem"][1]["Attr"] = "0 5 3"

		tBossHouse_TaskAward[10210] = {}
		tBossHouse_TaskAward[10210]["LogId"] = 12000869
		tBossHouse_TaskAward[10210]["RewardExpTime"] = {}
		tBossHouse_TaskAward[10210]["RewardExpTime"]["Value"] = 60

		tBossHouse_TaskAward[10210]["RewardItem"] = {}
		tBossHouse_TaskAward[10210]["RewardItem"][1] = {}
		tBossHouse_TaskAward[10210]["RewardItem"][1]["Id"] = 1000040
		tBossHouse_TaskAward[10210]["RewardItem"][1]["Attr"] = "0 5 3"
		
		tBossHouse_TaskAward[10211] = {}
		tBossHouse_TaskAward[10211]["LogId"] = 12000869
		tBossHouse_TaskAward[10211]["RewardExpTime"] = {}
		tBossHouse_TaskAward[10211]["RewardExpTime"]["Value"] = 60
		
		tBossHouse_TaskAward[10211]["RewardItem"] = {}
		tBossHouse_TaskAward[10211]["RewardItem"][1] = {}
		tBossHouse_TaskAward[10211]["RewardItem"][1]["Id"] = 1000040
		tBossHouse_TaskAward[10211]["RewardItem"][1]["Attr"] = "0 5 3"
		
		tBossHouse_TaskAward[10212] = {}
		tBossHouse_TaskAward[10212]["LogId"] = 12000869
		tBossHouse_TaskAward[10212]["RewardExpTime"] = {}
		tBossHouse_TaskAward[10212]["RewardExpTime"]["Value"] = 60
		
		tBossHouse_TaskAward[10212]["RewardItem"] = {}
		tBossHouse_TaskAward[10212]["RewardItem"][1] = {}
		tBossHouse_TaskAward[10212]["RewardItem"][1]["Id"] = 1000040
		tBossHouse_TaskAward[10212]["RewardItem"][1]["Attr"] = "0 5 3"
		
		tBossHouse_TaskAward[10213] = {}
		tBossHouse_TaskAward[10213]["LogId"] = 12000869
		tBossHouse_TaskAward[10213]["RewardExpTime"] = {}
		tBossHouse_TaskAward[10213]["RewardExpTime"]["Value"] = 60
		
		tBossHouse_TaskAward[10213]["RewardItem"] = {}
		tBossHouse_TaskAward[10213]["RewardItem"][1] = {}
		tBossHouse_TaskAward[10213]["RewardItem"][1]["Id"] = 1000040
		tBossHouse_TaskAward[10213]["RewardItem"][1]["Attr"] = "0 5 3"

		tBossHouse_TaskAward[10214] = {}
		tBossHouse_TaskAward[10214]["LogId"] = 12000869
		tBossHouse_TaskAward[10214]["RewardExpTime"] = {}
		tBossHouse_TaskAward[10214]["RewardExpTime"]["Value"] = 60

		tBossHouse_TaskAward[10214]["RewardItem"] = {}
		tBossHouse_TaskAward[10214]["RewardItem"][1] = {}
		tBossHouse_TaskAward[10214]["RewardItem"][1]["Id"] = 1000040
		tBossHouse_TaskAward[10214]["RewardItem"][1]["Attr"] = "0 5 3"

--箱子奖励
local	tBossHouse_BoxAward = {}
		tBossHouse_BoxAward["LogId"] = 12000869
		tBossHouse_BoxAward["RewardMoney"] = {}
		tBossHouse_BoxAward["RewardMoney"]["Value"] = 500
		tBossHouse_BoxAward["Gold"] = true

--就职奖励
local tBossHouse_ProAward ={}
	tBossHouse_ProAward["RewardProItem"] = {}
	tBossHouse_ProAward["RewardProItem"][1] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Pro"] = {{10,15}}

	tBossHouse_ProAward["RewardProItem"][1]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][1]["Item"][1]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][1]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][1]["Item"][2]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][1]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][1]["Item"][3]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][1]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][4]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][1]["Item"][4]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][1]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][5]["Id"] = 410098
	tBossHouse_ProAward["RewardProItem"][1]["Item"][5]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][1]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][6]["Id"] = 130048
	tBossHouse_ProAward["RewardProItem"][1]["Item"][6]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][1]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][1]["Item"][7]["Id"] = 118048
	tBossHouse_ProAward["RewardProItem"][1]["Item"][7]["Attr"] = "0 1 3"

--战士
	tBossHouse_ProAward["RewardProItem"][2] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Pro"] = {{20,25}}

	tBossHouse_ProAward["RewardProItem"][2]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][2]["Item"][1]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][2]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][2]["Item"][2]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][2]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][2]["Item"][3]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][2]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][4]["Id"] = 624098
	tBossHouse_ProAward["RewardProItem"][2]["Item"][4]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][2]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][5]["Id"] = 624098
	tBossHouse_ProAward["RewardProItem"][2]["Item"][5]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][2]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][6]["Id"] = 131048
	tBossHouse_ProAward["RewardProItem"][2]["Item"][6]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][2]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][2]["Item"][7]["Id"] = 111048
	tBossHouse_ProAward["RewardProItem"][2]["Item"][7]["Attr"] = "0 1 3"

--弓手
	tBossHouse_ProAward["RewardProItem"][3] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Pro"] = {{40,45}}
	
	tBossHouse_ProAward["RewardProItem"][3]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][3]["Item"][1]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][3]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][3]["Item"][2]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][3]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][3]["Item"][3]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][3]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][4]["Id"] = 613088
	tBossHouse_ProAward["RewardProItem"][3]["Item"][4]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][3]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][5]["Id"] = 613088
	tBossHouse_ProAward["RewardProItem"][3]["Item"][5]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][3]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][6]["Id"] = 133028
	tBossHouse_ProAward["RewardProItem"][3]["Item"][6]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][3]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][3]["Item"][7]["Id"] = 113018
	tBossHouse_ProAward["RewardProItem"][3]["Item"][7]["Attr"] = "0 1 3"

--忍者
	tBossHouse_ProAward["RewardProItem"][4] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Pro"] = {{50,55}}
	
	tBossHouse_ProAward["RewardProItem"][4]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][4]["Item"][1]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][4]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][4]["Item"][2]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][4]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][4]["Item"][3]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][4]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][4]["Id"] = 601098
	tBossHouse_ProAward["RewardProItem"][4]["Item"][4]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][4]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][5]["Id"] = 601098
	tBossHouse_ProAward["RewardProItem"][4]["Item"][5]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][4]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][6]["Id"] = 135038
	tBossHouse_ProAward["RewardProItem"][4]["Item"][6]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][4]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][4]["Item"][7]["Id"] = 123048
	tBossHouse_ProAward["RewardProItem"][4]["Item"][7]["Attr"] = "0 1 3"

--武僧
	tBossHouse_ProAward["RewardProItem"][5] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Pro"] = {{60,65}}
	
	tBossHouse_ProAward["RewardProItem"][5]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][5]["Item"][1]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][5]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][5]["Item"][2]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][5]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][5]["Item"][3]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][5]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][4]["Id"] = 610098
	tBossHouse_ProAward["RewardProItem"][5]["Item"][4]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][5]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][5]["Id"] = 610098
	tBossHouse_ProAward["RewardProItem"][5]["Item"][5]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][5]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][6]["Id"] = 136048
	tBossHouse_ProAward["RewardProItem"][5]["Item"][6]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][5]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][5]["Item"][7]["Id"] = 143048
	tBossHouse_ProAward["RewardProItem"][5]["Item"][7]["Attr"] = "0 1 3"

--海盗
	tBossHouse_ProAward["RewardProItem"][6] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Pro"] = {{70,75}}
	
	tBossHouse_ProAward["RewardProItem"][6]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][6]["Item"][1]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][6]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][6]["Item"][2]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][6]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][6]["Item"][3]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][6]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][4]["Id"] = 611098
	tBossHouse_ProAward["RewardProItem"][6]["Item"][4]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][6]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][5]["Id"] = 612098
	tBossHouse_ProAward["RewardProItem"][6]["Item"][5]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][6]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][6]["Id"] = 139048
	tBossHouse_ProAward["RewardProItem"][6]["Item"][6]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][6]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][6]["Item"][7]["Id"] = 144048
	tBossHouse_ProAward["RewardProItem"][6]["Item"][7]["Attr"] = "0 1 3"

--道士
	tBossHouse_ProAward["RewardProItem"][7] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Pro"] = {{100,102},{133,135},{143,155}}

	tBossHouse_ProAward["RewardProItem"][7]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Item"][1]["Id"] = 121088
	tBossHouse_ProAward["RewardProItem"][7]["Item"][1]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][7]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Item"][2]["Id"] = 152088
	tBossHouse_ProAward["RewardProItem"][7]["Item"][2]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][7]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][7]["Item"][3]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][7]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Item"][4]["Id"] = 421108
	tBossHouse_ProAward["RewardProItem"][7]["Item"][4]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][7]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Item"][5]["Id"] = 134038
	tBossHouse_ProAward["RewardProItem"][7]["Item"][5]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][7]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][7]["Item"][6]["Id"] = 114048
	tBossHouse_ProAward["RewardProItem"][7]["Item"][6]["Attr"] = "0 1 3"

--铁扇门
	tBossHouse_ProAward["RewardProItem"][8] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Pro"] = {{160,165}}

	tBossHouse_ProAward["RewardProItem"][8]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][8]["Item"][1]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][8]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][8]["Item"][2]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][8]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][8]["Item"][3]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][8]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][4]["Id"] = 626098
	tBossHouse_ProAward["RewardProItem"][8]["Item"][4]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][8]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][5]["Id"] = 626098
	tBossHouse_ProAward["RewardProItem"][8]["Item"][5]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][8]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][6]["Id"] = 101048
	tBossHouse_ProAward["RewardProItem"][8]["Item"][6]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][8]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][8]["Item"][7]["Id"] = 170048
	tBossHouse_ProAward["RewardProItem"][8]["Item"][7]["Attr"] = "0 1 3"

--小龙
	tBossHouse_ProAward["RewardProItem"][9] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Pro"] = {{80,85}}
	
	tBossHouse_ProAward["RewardProItem"][9]["Item"] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][1] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][1]["Id"] = 150098
	tBossHouse_ProAward["RewardProItem"][9]["Item"][1]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][9]["Item"][2] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][2]["Id"] = 120088
	tBossHouse_ProAward["RewardProItem"][9]["Item"][2]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][9]["Item"][3] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][3]["Id"] = 160098
	tBossHouse_ProAward["RewardProItem"][9]["Item"][3]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][9]["Item"][4] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][4]["Id"] = 617098
	tBossHouse_ProAward["RewardProItem"][9]["Item"][4]["Attr"] = "0 1 3"
	
	tBossHouse_ProAward["RewardProItem"][9]["Item"][5] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][5]["Id"] = 617098
	tBossHouse_ProAward["RewardProItem"][9]["Item"][5]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][9]["Item"][6] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][6]["Id"] = 138048
	tBossHouse_ProAward["RewardProItem"][9]["Item"][6]["Attr"] = "0 1 3"

	tBossHouse_ProAward["RewardProItem"][9]["Item"][7] = {}
	tBossHouse_ProAward["RewardProItem"][9]["Item"][7]["Id"] = 148048
	tBossHouse_ProAward["RewardProItem"][9]["Item"][7]["Attr"] = "0 1 3"

	tBossHouse_ProAward["SkillType"] = {}
	tBossHouse_ProAward["SkillType"][1] = 410
	tBossHouse_ProAward["SkillType"][2] = 624
	tBossHouse_ProAward["SkillType"][4] = 613
	tBossHouse_ProAward["SkillType"][5] = 601
	tBossHouse_ProAward["SkillType"][6] = 610
	tBossHouse_ProAward["SkillType"][7] = 611
	tBossHouse_ProAward["SkillType"][8] = 617
	tBossHouse_ProAward["SkillType"][10] = 421
	tBossHouse_ProAward["SkillType"][16] = 626
	
	
local tBossHouse_LECoupon = {}
	tBossHouse_LECoupon[3305034] = 60
	tBossHouse_LECoupon[3305035] = 120

--红包基本属性配置


--随机生成红包的口令


--获得一个现金兑换券
local tBossHouse_Cash = {}
tBossHouse_Cash[3306375] = {}
tBossHouse_Cash[3306375]["RewardItem"] = {}
tBossHouse_Cash[3306375]["RewardItem"][1] = {}
tBossHouse_Cash[3306375]["RewardItem"][1]["Id"] = 3305035
tBossHouse_Cash[3306375]["RewardItem"][1]["Attr"] = "0 1"
tBossHouse_Cash[3306375]["Log"] = "0,0,0,0,12000869,2,3305035,1"
tBossHouse_Cash[3306375]["DeleteItem"]={}
tBossHouse_Cash[3306375]["DeleteItem"][1]={}
tBossHouse_Cash[3306375]["DeleteItem"][1]["Id"] = 3306375
tBossHouse_Cash[3306375]["DeleteItem"][1]["ItemNum"] = 20

--特殊物品奖励加入榜单
local tBossHouse_SpecialAward = {}
tBossHouse_SpecialAward[700073] = 700073
tBossHouse_SpecialAward[3305030] = 3305030
tBossHouse_SpecialAward[723695] = 723695
tBossHouse_SpecialAward[3305031] = 3305031
tBossHouse_SpecialAward[3305034] = 3305034
tBossHouse_SpecialAward[3305035] = 3305035
tBossHouse_SpecialAward[3305010] = 3305010
tBossHouse_SpecialAward[3305011] = 3305011
tBossHouse_SpecialAward[3305007] = 3305007
tBossHouse_SpecialAward[3305008] = 3305008
tBossHouse_SpecialAward[3001060] = 3001060
tBossHouse_SpecialAward[3007392] = 3007392
tBossHouse_SpecialAward[3002926] = 3002926
tBossHouse_SpecialAward[3305016] = 3305016
tBossHouse_SpecialAward[3305017] = 3305017
tBossHouse_SpecialAward[3003126] = 3003126
tBossHouse_SpecialAward[3305022] = 3305022
tBossHouse_SpecialAward[700103] = 700103
tBossHouse_SpecialAward[3305025] = 3305025
tBossHouse_SpecialAward[3305024] = 3305024
tBossHouse_SpecialAward[3305028] = 3305028
tBossHouse_SpecialAward[723694] = 723694
tBossHouse_SpecialAward[711504] = 711504
tBossHouse_SpecialAward[3305026] = 3305026
tBossHouse_SpecialAward[3305027] = 3305027
tBossHouse_SpecialAward[3305032] = 3305032

--上线自动接任务引导到怪物坐标
local tBossHouse_TaskId = {}
tBossHouse_TaskId[1] = {6852,10209}
tBossHouse_TaskId[2] = {6853,10210}
tBossHouse_TaskId[3] = {6854,10211}
tBossHouse_TaskId[4] = {6855,10212}
tBossHouse_TaskId[5] = {6856,10213}
tBossHouse_TaskId[6] = {6857,10214}

--判断次地图上是否存在指定的怪


--每天完成跑环任务都可以额外获得一次奖励
local tBossHouse_ExitTaskAward = {}
tBossHouse_ExitTaskAward[1] = {}
tBossHouse_ExitTaskAward[1]["ItemChanceSum"] = 10000
-- 30%流星
tBossHouse_ExitTaskAward[1][1] = {}
tBossHouse_ExitTaskAward[1][1]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][1]["ItemChance"] = 3000
tBossHouse_ExitTaskAward[1][1]["RewardItem"] = {}
tBossHouse_ExitTaskAward[1][1]["RewardItem"][1] = {}
tBossHouse_ExitTaskAward[1][1]["RewardItem"][1]["Id"] = 1088001
tBossHouse_ExitTaskAward[1][1]["RewardItem"][1]["Attr"] = "0 1 3"
tBossHouse_ExitTaskAward[1][1]["LogId"] = 12000869

--1%龙珠
tBossHouse_ExitTaskAward[1][2] = {}
tBossHouse_ExitTaskAward[1][2]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][2]["ItemChance"] = 100
tBossHouse_ExitTaskAward[1][2]["RewardItem"] = {}
tBossHouse_ExitTaskAward[1][2]["RewardItem"][1] = {}
tBossHouse_ExitTaskAward[1][2]["RewardItem"][1]["Id"] = 1088000
tBossHouse_ExitTaskAward[1][2]["RewardItem"][1]["Attr"] = "0 1 3"
tBossHouse_ExitTaskAward[1][2]["LogId"] = 12000869

--15%良品龙恨宝石
tBossHouse_ExitTaskAward[1][3] = {}
tBossHouse_ExitTaskAward[1][3]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][3]["ItemChance"] = 1500
tBossHouse_ExitTaskAward[1][3]["RewardItem"] = {}
tBossHouse_ExitTaskAward[1][3]["RewardItem"][1] = {}
tBossHouse_ExitTaskAward[1][3]["RewardItem"][1]["Id"] = 700012
tBossHouse_ExitTaskAward[1][3]["RewardItem"][1]["Attr"] = "0 1 3"
tBossHouse_ExitTaskAward[1][3]["LogId"] = 12000869

--15%良品凤吟宝石
tBossHouse_ExitTaskAward[1][4] = {}
tBossHouse_ExitTaskAward[1][4]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][4]["ItemChance"] = 1500
tBossHouse_ExitTaskAward[1][4]["RewardItem"] = {}
tBossHouse_ExitTaskAward[1][4]["RewardItem"][1] = {}
tBossHouse_ExitTaskAward[1][4]["RewardItem"][1]["Id"] = 700002
tBossHouse_ExitTaskAward[1][4]["RewardItem"][1]["Attr"] = "0 1 3"
tBossHouse_ExitTaskAward[1][4]["LogId"] = 12000869

--10%通神丹
tBossHouse_ExitTaskAward[1][5] = {}
tBossHouse_ExitTaskAward[1][5]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][5]["ItemChance"] = 1000
tBossHouse_ExitTaskAward[1][5]["RewardItem"] = {}
tBossHouse_ExitTaskAward[1][5]["RewardItem"][1] = {}
tBossHouse_ExitTaskAward[1][5]["RewardItem"][1]["Id"] = 3003125
tBossHouse_ExitTaskAward[1][5]["RewardItem"][1]["Attr"] = "0 1 3"
tBossHouse_ExitTaskAward[1][5]["LogId"] = 12000869

--10%免费强炼丹
tBossHouse_ExitTaskAward[1][6] = {}
tBossHouse_ExitTaskAward[1][6]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][6]["ItemChance"] = 1000
tBossHouse_ExitTaskAward[1][6]["RewardItem"] = {}
tBossHouse_ExitTaskAward[1][6]["RewardItem"][1] = {}
tBossHouse_ExitTaskAward[1][6]["RewardItem"][1]["Id"] = 3003124
tBossHouse_ExitTaskAward[1][6]["RewardItem"][1]["Attr"] = "0 1 3"
tBossHouse_ExitTaskAward[1][6]["LogId"] = 12000869

--9% 50气力
tBossHouse_ExitTaskAward[1][7] = {}
tBossHouse_ExitTaskAward[1][7]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][7]["ItemChance"] = 900
tBossHouse_ExitTaskAward[1][7]["RewardStrengthValue"] = {}
tBossHouse_ExitTaskAward[1][7]["RewardStrengthValue"]["Value"] = 50
tBossHouse_ExitTaskAward[1][7]["LogId"] = 12000869

--10% 50修行
tBossHouse_ExitTaskAward[1][8] = {}
tBossHouse_ExitTaskAward[1][8]["RandomItemChanceType"] = 2
tBossHouse_ExitTaskAward[1][8]["ItemChance"] = 1000
tBossHouse_ExitTaskAward[1][8]["RewardCultivation"] = {}
tBossHouse_ExitTaskAward[1][8]["RewardCultivation"]["Value"] = 50
tBossHouse_ExitTaskAward[1][8]["LogId"] = 12000869

local tBossHouse_GlobalTwoHundrerd = {}
tBossHouse_GlobalTwoHundrerd["Id"] = 51866
tBossHouse_GlobalTwoHundrerd["Pos"] = 5
tBossHouse_GlobalTwoHundrerd["Money"] = 100000
tBossHouse_GlobalTwoHundrerd["MoneyLog"] = "0,0,0,0,12000869,2,1,100000"

--给50赠点
local tBossHouse_MoreHundred = {}
tBossHouse_MoreHundred[1] = {}
tBossHouse_MoreHundred[1]["ItemChanceSum"] = 10000
tBossHouse_MoreHundred[1][1] = {}
tBossHouse_MoreHundred[1][1]["RandomItemChanceType"] = 2
tBossHouse_MoreHundred[1][1]["ItemChance"] = 10000
tBossHouse_MoreHundred[1][1]["RewardEMoneyMono"] = {}
tBossHouse_MoreHundred[1][1]["RewardEMoneyMono"]["Value"] = 50
tBossHouse_MoreHundred[1][1]["LogId"] = 12000869

--怪物死亡的log
local tBossHouse_MonsterLog = {}
tBossHouse_MonsterLog["Log"] = "0,0,0,0,12000869,2[1],%d,1"

--新掩码跑环任务
local tBossHouse_NewStc = {}
tBossHouse_NewStc["EventType"] = 172
tBossHouse_NewStc["DataType"] = 05
-----------------------------------------------------------------------------------

--在进入地图时候修正玩家的taskId
function BossHouse_OnLine()
	local nMap = BossHouse_ChkMap()
	
	--local nRandomNum = math.random(1,3)
	local nTaskNum = tBossHouse_KillMonsterTask["Task"][nMap][1]
	local nUserTaskNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"])
	
	local nTaskDetailId = nTaskNum + 3919
	local nCheckDetail
	for i = nTaskDetailId,(nTaskDetailId+2),1 do
		if Task_ChkTaskDetail(i) then
			nCheckDetail = true
			break
		else
			nCheckDetail = false
		end
	end
	
	if nUserTaskNum ~= 0 and (not nCheckDetail) then
		
		Task_SetStatistic(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0,1)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0)
		--用遍历把没用的taskId都删掉
		for i = 3920,3937,1 do
			if Task_ChkTaskDetail(i) then
				Task_SetTaskDetailCompleteFlag(i,0)
				Task_DelTaskDetail(i)
			end
		end
	end
	
end

--设置全局表保存榜单礼品
function BossHouse_GrobalSet(nItemId)

	if tBossHouse_SpecialAward[nItemId] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	local nUserName = Get_UserName(nUserId)
	local sName =  Get_ItemtypeName(nItemId)
	
	
	--插入最新的玩家数据，把最老的名单给挤掉到最后
	local nTip = Get_SysDynaGlobalData5(tBossHouse_Cont["GlobalIdTwo"])
	
	if nTip < 10 then
		nTip = nTip + 1
		Sys_SetSynaGlobalData5(tBossHouse_Cont["GlobalIdTwo"],nTip)
		Sys_SetSynaGlobalDataStr(tBossHouse_RankShow[nTip][3],tBossHouse_RankShow[nTip][2],nUserName)
		Sys_SetSynaGlobalDataStr(tBossHouse_RankShow[nTip][1],tBossHouse_RankShow[nTip][2],sName)
	else
		--列表已满重新排序
		--重新排列顺序
		for i = 2,#tBossHouse_RankShow do
			local nId = Get_SysDynaGlobalDataStr(tBossHouse_RankShow[i][3],tBossHouse_RankShow[i][2])
			local sItemName = Get_SysDynaGlobalDataStr(tBossHouse_RankShow[i][1],tBossHouse_RankShow[i][2])
			Sys_SetSynaGlobalDataStr(tBossHouse_RankShow[i-1][3],tBossHouse_RankShow[i-1][2],nId)
			Sys_SetSynaGlobalDataStr(tBossHouse_RankShow[i-1][1],tBossHouse_RankShow[i-1][2],sItemName)
		end
		Sys_SetSynaGlobalDataStr(tBossHouse_RankShow[10][3],tBossHouse_RankShow[10][2],nUserName)
		Sys_SetSynaGlobalDataStr(tBossHouse_RankShow[10][1],tBossHouse_RankShow[10][2],sName)
	end
end

--得宝侠士名单。
function BossHouse_AwardMenu(nTip)
	--使用动态表存储玩家id和获得的宝物
	local nBossHouse_Text = 214

	for i = 1,#tBossHouse_RankShow do
		local nUserId = Get_SysDynaGlobalDataStr(tBossHouse_RankShow[i][3],tBossHouse_RankShow[i][2])
		local sItemName = Get_SysDynaGlobalDataStr(tBossHouse_RankShow[i][1],tBossHouse_RankShow[i][2])
		local sStr = "["
		local sStr1  = "]"
		if nUserId ~= "" then
			-- tNpcGossip[nTip]["Text"..nBossHouse_Text] = string.format(tBossHouse_Text[11404]["Text"..nBossHouse_Text],Get_UserName(nUserId),sItemName)
			tNpcGossip[nTip]["Text"..nBossHouse_Text] = Sys_Alignment(sStr .. nUserId.. sStr1,18,sStr .. sItemName .. sStr1 .. "\n",55)
		else
			-- tNpcGossip[nTip]["Text"..nBossHouse_Text] = string.format(tBossHouse_Text[11404]["Text"..nBossHouse_Text],tBossHouse_Text[11404]["Text225"],tBossHouse_Text[11404]["Text226"])
			tNpcGossip[nTip]["Text"..nBossHouse_Text] = Sys_Alignment(sStr .. tBossHouse_Text[11404]["Text225"] .. sStr1,18,sStr .. tBossHouse_Text[11404]["Text226"] .. sStr1 .. "\n",55)
		end
		nBossHouse_Text = nBossHouse_Text + 1
		
	end
	return true

end

--现金兑换券碎片
function BossHouse_CashlittleUse(nItemId)

	if Item_ChkMulItem(nItemId,nItemId,20) then
		--Item_DelMulItem(nItemId,nItemId,20)
		RewardTemplate_UseItemAndMsg(tBossHouse_Cash[nItemId])
	else
		Sys_MsgBox(tBossHouse_Text[nItemId]["Failure"])
	end
end


--离开地图，把所有的taskid都删除
function BossHouse_LeaveTask()
	for i = 1,#tBossHouse_TaskId do
		if Task_ChkTaskDetail(tBossHouse_TaskId[i][1]) then 
			Task_DelTaskDetail(tBossHouse_TaskId[i][1])
		end
	end
end

--进入其他地图
function BossHouse_EnterMap(nMapId)
	for i = 1,#tBossHouse_TaskId do
		if tBossHouse_TaskId[i][2] ~= nMapId then
			if Task_ChkTaskDetail(tBossHouse_TaskId[i][1]) then
				Task_DelTaskDetail(tBossHouse_TaskId[i][1])
			end
		else
			--新增新的任务
			if not Task_ChkTaskDetail(tBossHouse_TaskId[i][1]) then 
				Task_AddTaskDetail(tBossHouse_TaskId[i][1])
			end
		end
	end
end

--第一层-第六层新增现金卷掉落（最后一个怪物品掉）
function BossHouse_NewMoneyTicketDrop(nNum,sNum,nMapId)
	local nNewGlobalId = tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["Grobal"]
	local nNewsSetFunc = tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["SetFunc"]
	local sNewGetFunc = tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["GetFunc"]
	local nNewData = sNewGetFunc(nNewGlobalId)
	if Sys_Random(tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["Prob"],10000) then
		if nNewData < tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["Limit"] then
			nNewsSetFunc(nNewGlobalId,nNewData+nNum)
			Item_AddNewItem(tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["ItemId"],sNum)
		end
	end
end

--第一层-第六层新增现金卷掉落（一般情况）
function BossHouse_FirstNewMoneyTicketDrop(nNum,nMapId)
	local nNewGlobalId = tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["Grobal"]
	local nNewsSetFunc = tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["SetFunc"]
	local sNewGetFunc = tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["GetFunc"]
	local nNewData = sNewGetFunc(nNewGlobalId)
	if Sys_Random(tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["Prob"],10000) then
		if nNewData < tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["Limit"] then
			nNewsSetFunc(nNewGlobalId,nNewData + nNum)
			for i = 1,nNum,1 do
				Monster_SysDropItem(tBossHouse_AdditionalAward["NewCashCoupon"][nMapId]["ItemId"])
			end
		end
	end
end

--隔天清掩码
function BossHouse_CleanStc()
	if Task_StcInterval(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],1,4) then
		for i = 3920,3937 do
			if Task_ChkTaskDetail(i) then
				Task_SetTaskDetailCompleteFlag(i,0)
				Task_DelTaskDetail(i)
			end
		end
	end
	for i = 10209,10213 do
		if Task_StcInterval(tBossHouse_GotoMap[i]["EventType"],tBossHouse_GotoMap[i]["DataType"],7,4) then
			Task_SetStatistic(tBossHouse_GotoMap[i]["EventType"],tBossHouse_GotoMap[i]["DataType"],0,1)
			Task_SetStcTimestamp(tBossHouse_GotoMap[i]["EventType"],tBossHouse_GotoMap[i]["DataType"],0)
		end
	end
	for i = 1,3 do
		if Task_StcInterval(tBossHouse_KillMonsterTask[i]["EventType"],tBossHouse_KillMonsterTask[i]["DataType"],1,4) then
			Task_SetStatistic(tBossHouse_KillMonsterTask[i]["EventType"],tBossHouse_KillMonsterTask[i]["DataType"],0,1)
			Task_SetStcTimestamp(tBossHouse_KillMonsterTask[i]["EventType"],tBossHouse_KillMonsterTask[i]["DataType"],0)
		end
	end
end

--判断玩家所在层数
function BossHouse_ChkMap()
	BossHouse_CleanStc()
	for i = 10213,10209,-1 do
		local nEventType = tBossHouse_GotoMap[i]["EventType"]
		local nDataType = tBossHouse_GotoMap[i]["DataType"]
		local nData = tBossHouse_GotoMap[i]["Data"]
		if Task_ChkStcValue (nEventType,nDataType,">=",nData) then
			return tBossHouse_GotoMap[i]["NextMapId"]
		end
	end
	return 10209
end

--接受杀小怪任务
function BossHouse_AwardAcceptTask(nMapId)
	local nMap = nMapId
	
	local nRandomNum = math.random(1,3)
	local nTaskNum = tBossHouse_KillMonsterTask["Task"][nMap][nRandomNum]
	local nUserTaskNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"])

	local nTaskDetailId = nTaskNum + 3919
	local nCompleteNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"])
	if nCompleteNum == 0 and nMap == 10209 then
		nTaskDetailId = 3920
		nTaskNum = 1
	end

--完成20个不再接受
	if nCompleteNum >=tBossHouse_KillMonsterTask["TaskNum"] then
		return
	end

--未接受任务
	if nUserTaskNum == 0 then
		local sMonsterName = tBossHouse_Text["MonsterName"][nTaskNum] 
		local sText = string.format(tBossHouse_Text["Accept"],sMonsterName)
		Task_SetStatistic(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],nTaskNum,1)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0)
--增加面板
		if not Task_ChkTaskDetail(nTaskDetailId) then
			Task_AddTaskDetail(nTaskDetailId)
		end
		Sys_MsgBox(sText)
	end
	
end

--接受杀小怪任务
function BossHouse_AcceptTask()
	local nMap = BossHouse_ChkMap()
	
	--[[
		--添加战斗力判断
	if nMap ~= 10209 then
		for i = nMap,10210,-1 do
			local nBattle = tBossHouse_GotoMap[i-1]["Battle"]
			local nUserBattleLevel = Get_UserBattleLevel()
			if nUserBattleLevel < nBattle then
				nMap = nMap - 1
			else
				break
			end
		end
	end
	]]--
	
	local nRandomNum = math.random(1,3)
	local nTaskNum = tBossHouse_KillMonsterTask["Task"][nMap][nRandomNum]
	local nUserTaskNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"])

	

	local nTaskDetailId = nTaskNum + 3919
	local nCompleteNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"])
	if nCompleteNum == 0 and nMap == 10209 then
		nTaskDetailId = 3920
		nTaskNum = 1
	end

--完成20个不再接受
	if nCompleteNum >=tBossHouse_KillMonsterTask["TaskNum"] then
		return
	end

--未接受任务
	if nUserTaskNum == 0 then
		local sMonsterName = tBossHouse_Text["MonsterName"][nTaskNum] 
		local sText = string.format(tBossHouse_Text["Accept"],sMonsterName)
		Task_SetStatistic(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],nTaskNum,1)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0)
--增加面板
		if not Task_ChkTaskDetail(nTaskDetailId) then
			Task_AddTaskDetail(nTaskDetailId)
		end
		Sys_MsgBox(sText)
	end
end

--进入活动地图
function BossHouse_GoToMap(nNpcId)
--活动后
	if not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
--前8分钟不能进入地图，暂时不加判断
	if Sys_ChkDayTime(tBossHouse_Cont["EightTime"]) then
		return
	end
	
--非活动时间（现在不限制）
	
--隔天清除掩码
	BossHouse_CleanStc()

--传送进地图
	local nMapId = BossHouse_ChkMap()
	local nTaskDetailId = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"]) + 3919
	
	--出地图清跑环任务
	if Task_ChkTaskDetail(nTaskDetailId) then
		Task_SetTaskDetailCompleteFlag(nTaskDetailId,0)
		Task_DelTaskDetail(nTaskDetailId)
		Task_SetStatistic(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0,1)
		Task_SetStatistic(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],0,1)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],0)
	end
	
	local nPosX = tBossHouse_Cont["ActivityPosX"][nMapId]
	local nPosY = tBossHouse_Cont["ActivityPosY"][nMapId]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,0)
	
	--在进入地图的时候对玩家跑环任务进行修正
	--只执行一次
	local nEvent = tBossHouse_NewStc["EventType"]
	local nData = tBossHouse_NewStc["DataType"]
	local nUserId = Get_UserId()
	if Task_ChkStcValue(nEvent,nData,"==",0,nUserId) then
		BossHouse_OnLine()
		Task_SetStatistic(nEvent,nData,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	end
	
	BossHouse_AcceptTask()
	
--进入地图增加活动面板引导
	BossHouse_EnterMap(nMapId)
end

--修理装备
-- function BossHouse_Repair(nNpcId)
	-- for i = 1,20 do
		-- Item_Repair(i)
	-- end
-- end

-- 返回双龙城
function BossHouse_GoToCity(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	User_UserRandBoundTrans(tBossHouse_Cont["CityMapId"],tBossHouse_Cont["CityPosX"],tBossHouse_Cont["CityPosY"],5,5,0,nNowUserId)
	--回到双龙城taskid清空
	BossHouse_LeaveTask()
end

--每天完成跑环任务都可以额外获得一次奖励
function BossHouse_ExitTaskAward(nNpcId)
	RewardTemplate_NewRandom(tBossHouse_ExitTaskAward,1)
end


--领取奖励
function BossHouse_TaskAward(nNpcId)
--活动后
	if not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

--完成20个任务奖励
	local nKillNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"])
	if nKillNum >= tBossHouse_KillMonsterTask["KillNum"] then
		local nMap = BossHouse_ChkMap()
		local nCompleteNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"]) + 1
		if nCompleteNum >= tBossHouse_KillMonsterTask["TaskNum"] then
		--玩家完成跑环任务大于20次
			local nGlobalId = tBossHouse_GlobalTwoHundrerd["Id"]
			local nPos = tBossHouse_GlobalTwoHundrerd["Pos"]
			local nNum = Get_SysDynaGlobalData(nGlobalId,nPos)
			
			--每日前100个完成20换的玩家获得10万金币，其余获得随机奖励
			if nNum <= 100 then
				if not User_CanPutMoney2Bag(tBossHouse_TaskAward["LastTask"]["RewardMoney"]["Value"]) then
					Sys_MsgBox(tBossHouse_Text["MoneyFull"])
					return
				else
					
					--RewardTemplate_NewRandom(tBossHouse_MoreHundred,1)
					RewardTemplate_UseItem(tBossHouse_TaskAward["LastTask"])
					User_TalkChannel2005(string.format(tBossHouse_Text["EnoughHundreid"],nNum))
				end
			else
				--给50赠点
				RewardTemplate_NewRandom(tBossHouse_MoreHundred,1)
				User_TalkChannel2005(tBossHouse_Text["LessMono"])
			end	
			--增加全局表
			Sys_SetSynaGlobalData(nGlobalId,nPos,nNum + 1)
		end

--普通奖励
		local nTaskDetailId = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"]) + 3919
		if Task_ChkTaskDetail(nTaskDetailId) then
			Task_SetTaskDetailCompleteFlag(nTaskDetailId,1)
			Task_SetTaskDetailCompleteFlag(nTaskDetailId,0)
			Task_DelTaskDetail(nTaskDetailId)
		end
		Task_SetStatistic(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0,1)
		Task_SetStatistic(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],0,1)
		Task_AddStatistic(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"],1,1)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],0)
		Task_SetStcTimestamp(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"],0)
		RewardTemplate_UseItem(tBossHouse_TaskAward[nMap])
		
--每天完成跑环任务都可以额外获得一次奖励
		BossHouse_ExitTaskAward(nNpcId)
		
--重新接受任务
		BossHouse_AcceptTask()
		User_EffectAdd("self","zf2-e128")
	end

end

--Quora宝箱
function BossHouse_Box()
--判断时间
	if not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"]) then
		return
	end

	local nNum1 = math.random(1,9)
	local nNum2 = math.random(1,9)
	Sys_DialogText(tBossHouse_Text["Box"]["Text111"])
	Sys_DialogText(tBossHouse_Text["Box"]["Text112"])
	Sys_DialogText(tBossHouse_Text["Box"]["Text113"])
	Sys_DialogText(string.format(tBossHouse_Text["Box"]["Text114"],nNum1,nNum2))
	Sys_DialogText(tBossHouse_Text["Box"]["Text115"])
	Sys_DialogOptEdit(tBossHouse_Text["Box"]["Text116"],5,"BossHouse_BoxSend</N>"..nNum1.."</N>"..nNum2)
	Sys_DialogEnd()
end

-- 输入答案
function BossHouse_BoxSend(nNum1,nNum2)
	local sAcceptStr = Get_SysAcceptStr()
	local nNum = nNum1 + nNum2

--判断是否回答正确
	if tostring(nNum)~= sAcceptStr then
		Sys_DialogText(tBossHouse_Text["Box"]["Text121"])
		Sys_DialogText(string.format(tBossHouse_Text["Box"]["Text114"],nNum1,nNum2))
		Sys_DialogOptEdit(tBossHouse_Text["Box"]["Text116"],5,"BossHouse_BoxSend</N>"..nNum1.."</N>"..nNum2)
		Sys_DialogEnd()
		return
	end

--上限判断
	if not User_CanPutMoney2Bag(tBossHouse_BoxAward["RewardMoney"]["Value"]) then
		Sys_MsgBox(tBossHouse_Text["MoneyFull"])
		return
	end

--删除npc，给奖励
	Npc_DelDynaByID()
	RewardTemplate_UseItem(tBossHouse_BoxAward)

end


--Boss掉落
function BossHouse_Monster(nMonsterTypeId)
--非活动时间传送出去
	local nGlobal = Get_SysDynaGlobalData0(tBossHouse_Global)
	
	if not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"])then
		BossHouse_GoToCity()
		return
	end
	
	
--隔天清除掩码
	BossHouse_CleanStc()
	
--增加杀怪数量
	local nMapId = Get_MonsterMapID()
	
	for i,v in pairs(tBossHouse_GotoMap) do 
		if nMapId == i then
			local nEventType = tBossHouse_GotoMap[nMapId]["EventType"]
			local nDataType = tBossHouse_GotoMap[nMapId]["DataType"]
			Task_AddStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			break
		end
	end
	
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterTypeId)
	if nMonsterNum >= 1 then
		Sys_SetTempData(1,nMapId,nMonsterTypeId,nMonsterNum-1)
	end
--杀怪发金币红包
	--BossHouse_SendMoney(nMapId)
	
	--怪物死亡log
	Sys_SaveActionFestivalLog(string.format(tBossHouse_MonsterLog["Log"],nMonsterTypeId))
	
--掉落物品
	local flat,tNum = Probabil_RandomAward(tBossHouse_Award[nMapId]["Reward"],1)  
	local nItemId = tNum[1]["tAward"][1]["Item_1"]
	local nNum = tNum[1]["tAward"][1]["Num"]
	local sLog = string.format(tBossHouse_Cont["Log"][1],nItemId)
--1-5层杀最后一个怪物品掉背包，并传送到下层
	if nMapId >= 10209 and nMapId <= 10213 then
		local nEventType = tBossHouse_GotoMap[nMapId]["EventType"]
		local nDataType = tBossHouse_GotoMap[nMapId]["DataType"]
		local nData = Get_UserStatisticValue(nEventType,nDataType)
		local nUserBattleLevel = Get_UserBattleLevel()
		--杀怪数量，战力值
		if nData >= tBossHouse_GotoMap[nMapId]["Data"] then
			if nUserBattleLevel >= tBossHouse_GotoMap[nMapId]["Battle"] then
				for i = 1,nNum do
					Item_AddNewItem(nItemId,"0 1")
					Sys_SaveActionFestivalLog(sLog)
					BossHouse_GrobalSet(nItemId)
				end
				--额外固定掉落
				Item_AddNewItem(tBossHouse_AdditionalAward["Pack"][nMapId],"0 1")
				--活动第一周时间掉落现金劵(现金卷掉落修改为全时段，不再限制第一周)
				
					if Sys_ChkFullTime(tBossHouse_Cont["FirstWeekTime"])  then
						if tBossHouse_AdditionalAward["CashCoupon"][nMapId] ~= nil then
							local nGlobalId = tBossHouse_Cont["GlobalId"]
							local sSetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["SetFunc"]
							local sGetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["GetFunc"]
							local nData = sGetFunc(nGlobalId)
							if Sys_Random(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Prob"],10000) then
								if nData < tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Limit"] then
									sSetFunc(nGlobalId,nData+2)
									Item_AddNewItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"],"0 2")
									BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
								end
							end
						end
						
						if nGlobal == 2 then
						--第一层-第六层新增现金卷掉落,第一周双倍
							BossHouse_NewMoneyTicketDrop(2,"0 2",nMapId)
						end
					else
						
						if tBossHouse_AdditionalAward["CashCoupon"][nMapId] ~= nil then
							local nGlobalId = tBossHouse_Cont["GlobalId"]
							local sSetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["SetFunc"]
							local sGetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["GetFunc"]
							local nData = sGetFunc(nGlobalId)
							if Sys_Random(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Prob"],10000) then
								if nData < tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Limit"] then
									sSetFunc(nGlobalId,nData+1)
									Item_AddNewItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"],"0 1")
									BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
								end
							end
						end
						if nGlobal == 2 then
						--第一层-第六层新增现金卷掉落
							BossHouse_NewMoneyTicketDrop(1,"0 1",nMapId)
						end
					end
			
			--传送到下层
				local nNextMapId = tBossHouse_GotoMap[nMapId]["NextMapId"]
				local nPosX = tBossHouse_Cont["ActivityPosX"][nNextMapId]
				local nPosY = tBossHouse_Cont["ActivityPosY"][nNextMapId]
				local sMapName = Get_MapName(nNextMapId)
				local nTaskDetailId = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"]) + 3919
				if Task_ChkTaskDetail(nTaskDetailId) then
					Task_SetTaskDetailCompleteFlag(nTaskDetailId,0)
					Task_DelTaskDetail(nTaskDetailId)
				end
				Task_SetStatistic(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0,1)
				Task_SetStatistic(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],0,1)
				Task_SetStcTimestamp(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"],0)
				Task_SetStcTimestamp(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],0)
				
				User_UserRandBoundTrans(nNextMapId,nPosX,nPosY,5,5,1)
				--清理任务taskid
				BossHouse_EnterMap(nNextMapId)
				Sys_MsgBox(string.format(tBossHouse_Text["KillMonster"],nData,sMapName))
				BossHouse_AcceptTask()
				return
			else
				User_TalkChannel2005(string.format(tBossHouse_Text["BattleLess"],tBossHouse_GotoMap[nMapId]["Battle"]))
			end
		end
	end

--掉落地面
	local nMonsterPosX = Get_MonsterPosX()
	local nMonsterPosY = Get_MonsterPosY()
	for i = 1,#tBossHouse_AdditionalAward[nMapId] do
		local nItem_1 = tBossHouse_AdditionalAward[nMapId][i]["Item_1"]
		local nNum = tBossHouse_AdditionalAward[nMapId][i]["Num"]
		Map_DropMultiItems(nMapId,nItem_1,nMonsterPosX,nMonsterPosY,8,8,nNum,60)
		
	end

	for i = 1,nNum do
		Monster_SysDropItem(nItemId)
	end
	
	--存入排行榜
	BossHouse_GrobalSet(nItemId)
	
	local nMoney = tBossHouse_AdditionalAward["Money"][nMapId]/10
	for i = 1,10 do
		Monster_SysDropMoney(nMoney)
	end

--活动第一周时间掉落现金劵
	if Sys_ChkFullTime(tBossHouse_Cont["FirstWeekTime"]) then
		if tBossHouse_AdditionalAward["CashCoupon"][nMapId] ~= nil then
			local nGlobalId = tBossHouse_Cont["GlobalId"]
			local sSetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["SetFunc"]
			local sGetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["GetFunc"]
			local nData = sGetFunc(nGlobalId)
			--五层
			if nMapId == 10213 then 
				if Sys_Random(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Prob"],10000) then
					if nData < tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Limit"] then
						sSetFunc(nGlobalId,nData+2)
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
						BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
					end
				end
			end
			--六层
			if nMapId == 10214 then
				if Sys_Random(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Prob"],10000) then
					if nData < tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Limit"] then
						sSetFunc(nGlobalId,nData+2)
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
						BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
					end
				else
					sSetFunc = tBossHouse_AdditionalAward["CashCoupon"][10213]["SetFunc"]
					sGetFunc = tBossHouse_AdditionalAward["CashCoupon"][10213]["GetFunc"]
					nData = sGetFunc(nGlobalId)
					if nData < tBossHouse_AdditionalAward["CashCoupon"][10213]["Limit"] then
						sSetFunc(nGlobalId,nData+2)
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][10213]["ItemId"])
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][10213]["ItemId"])
						BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][10213]["ItemId"])
					end
				end
			end
		end
		if nGlobal == 2 then
		--1到6层掉落新碎片(第一个星期)
			BossHouse_FirstNewMoneyTicketDrop(2,nMapId)
		end
	
	else
		if tBossHouse_AdditionalAward["CashCoupon"][nMapId] ~= nil then
			local nGlobalId = tBossHouse_Cont["GlobalId"]
			local sSetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["SetFunc"]
			local sGetFunc = tBossHouse_AdditionalAward["CashCoupon"][nMapId]["GetFunc"]
			local nData = sGetFunc(nGlobalId)
			--五层
			if nMapId == 10213 then 
				if Sys_Random(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Prob"],10000) then
					if nData < tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Limit"] then
						sSetFunc(nGlobalId,nData+1)
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
						BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
					end
				end
			end
			--六层
			if nMapId == 10214 then
				if Sys_Random(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Prob"],10000) then
					if nData < tBossHouse_AdditionalAward["CashCoupon"][nMapId]["Limit"] then
						sSetFunc(nGlobalId,nData+1)
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
						BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][nMapId]["ItemId"])
					end
				else
					sSetFunc = tBossHouse_AdditionalAward["CashCoupon"][10213]["SetFunc"]
					sGetFunc = tBossHouse_AdditionalAward["CashCoupon"][10213]["GetFunc"]
					nData = sGetFunc(nGlobalId)
					if nData < tBossHouse_AdditionalAward["CashCoupon"][10213]["Limit"] then
						sSetFunc(nGlobalId,nData+1)
						Monster_SysDropItem(tBossHouse_AdditionalAward["CashCoupon"][10213]["ItemId"])
						BossHouse_GrobalSet(tBossHouse_AdditionalAward["CashCoupon"][10213]["ItemId"])
					end
				end
			end
		end
		if nGlobal == 2 then
		--1到6层掉落新碎片
			BossHouse_FirstNewMoneyTicketDrop(1,nMapId)
		end
	end
end

--小怪掉落
function BossHouse_SmallMonster(nMonsterTypeId)
--非活动时间传送出去
	if not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"])then
		BossHouse_GoToCity()
		return
	end

-- 2020.04.03 屏蔽道具产出
--10%的概率掉落修理道具
	-- if Sys_Random(1000,10000) then
		-- Monster_SysDropItem(3305903)
	-- end

--刷宝箱0.1%概率
	local nMapId = Get_MonsterMapID()
	local nMonsterPosX = Get_MonsterPosX()
	local nMonsterPosY = Get_MonsterPosY()

	-- if Sys_Random(1,1000) then
		-- Npc_CreateDynaNpc(tBossHouse_Text["BoxName"],2,1,43650,0,0,nMapId,nMonsterPosX,nMonsterPosY,0,0,0,94485354)
	-- end

--判断是否任务怪
	local nTaskNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"])
	if nMonsterTypeId ~= tBossHouse_KillMonsterTask["Monster"][nTaskNum] then
		return
	end

--增加杀怪掩码
	local nTaskDetailId = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"]) + 3919
	if Task_ChkTaskDetail(nTaskDetailId) then
		local nTaskDetailData1 = Get_TaskDetailData1(nTaskDetailId) + 1
		Task_SetTaskDetailData1(nTaskDetailId,nTaskDetailData1)
	end
	Task_AddStatistic(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],1,1)
	Task_SetStcTimestamp(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"],0)

--给提示
	local nKillNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"])
	if nKillNum >= tBossHouse_KillMonsterTask["KillNum"] then
		local sMonsterName = tBossHouse_Text["MonsterName"][nTaskNum] 
		local sText = string.format(tBossHouse_Text["Complete"],sMonsterName)
		Sys_MsgBox(sText,"tBossHouse_Pathfinding</N>"..nMapId)
	end
end

--寻路到交任务npc
function tBossHouse_Pathfinding(nMapId)
	local nNpcId = tBossHouse_KillMonsterTask["NpcId"][nMapId]
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end



--怪物刷新
function BossHouse_Reset()
--非活动时间
	
	if not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"]) then
		return
	end
	
	if not CommonFunc_ChkGoldServer() then
		return
	end
--刷新怪物
	--一共6层
	for i = 1,#tBossHouse_Reset do
		
		local nMapId = tBossHouse_Reset[i]["MapId"]
		local nTimeNum = #tBossHouse_Reset[i]["Time"]
		for j = 1,nTimeNum do
			local sTime = tBossHouse_Reset[i]["Time"][j]
			--每隔多长时间刷新一次
			if Sys_ChkMinute(sTime) then
				local nMonsterSumNum =  Get_SysTempData(1,nMapId,tBossHouse_Reset[i]["MonsterId"][1]) + Get_SysTempData(1,nMapId,tBossHouse_Reset[i]["MonsterId"][2])
				if nMonsterSumNum < nTimeNum then
					local nNum = math.random(1,#tBossHouse_Reset[i]["MonsterId"])
					local nMonsterId = tBossHouse_Reset[i]["MonsterId"][nNum]
					local nData = Get_SysTempData(1,nMapId,nMonsterId)
					local nPosNum = math.random(1,#tBossHouse_Reset[i]["Pos"])
					local nPosX = tBossHouse_Reset[i]["Pos"][nPosNum][1]
					local nPosY = tBossHouse_Reset[i]["Pos"][nPosNum][2]
					local nGenId = tBossHouse_Reset[i]["GenId"]
					local sBossName = tBossHouse_Text["MonsterBossName"][nMonsterId]
					local sMapName = Get_MapName(nMapId)
					Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
					Sys_SetTempData(1,nMapId,nMonsterId,nData+1)
					Sys_TalkBroadcast(string.format(tBossHouse_Text["Broadcast"],sBossName,sMapName,nPosX,nPosY))
				end
			end
		end
	end
end


--清动态存储表
function BossHouse_TimeChk()

	--清理动态表：每日前100个完成20换的玩家获得10万金币
	local nCleanGlobalId = tBossHouse_GlobalTwoHundrerd["Id"]
	local nCleanPos = tBossHouse_GlobalTwoHundrerd["Pos"]
	Sys_SetSynaGlobalData(nCleanGlobalId,nCleanPos,0)
	
	for i =10209,10214 do
		Map_UserExeFunc(i,-1,"BossHouse_GoToCity")
	end
	
--不是第一周
	if not Sys_ChkFullTime(tBossHouse_Cont["FirstWeekTime"]) then
		return
	end

	local nGlobalId = tBossHouse_Cont["GlobalId"]
	local nData0 = Get_SysDynaGlobalData5(nGlobalId)
	if Sys_ChkDayTime(tBossHouse_Cont["ResetTime"]) then
		if nData0 == 0 then
			Sys_SetSynaGlobalData0(nGlobalId,1)
			Sys_SetSynaGlobalData1(nGlobalId,0)
			Sys_SetSynaGlobalData2(nGlobalId,0)
			
		end
	else
		Sys_SetSynaGlobalData0(nGlobalId,0)
	end
	
end


-----------------------------------------------------------------------------------
--物品使用
--职业判断
function BossHouse_Profession()
	local nProfession = math.floor(Get_UserProfession()/10)
	if nProfession >= 13 and nProfession <= 14 then
		nProfession = 10
	end
	return nProfession
end

function BossHouse_ItemUse(nItemId)
--删除物品数量
	local nItemNum = 1
	if tBossHouse_ItemAward[nItemId]["Num"] ~= nil then
		nItemNum = tBossHouse_ItemAward[nItemId]["Num"]
	end

	if Item_ChkMulItem(nItemId,nItemId,nItemNum,1) and Item_DelMulItem(nItemId,nItemId,nItemNum,1) then
		local nFlag = tBossHouse_ItemAward[nItemId]["Flag"]
		if nFlag == 1 then
			RewardTemplate_UseItem(tBossHouse_ItemAward[nItemId])
			return
		end

		if nFlag == 2 then
			local nNum = math.random(1,#tBossHouse_ItemAward[nItemId]["RewardItem"])
			local nAddItemId = tBossHouse_ItemAward[nItemId]["RewardItem"][nNum]
			local sAttr = tBossHouse_ItemAward[nItemId]["Attr"]
			local sLog = string.format(tBossHouse_Cont["Log"][1],nAddItemId)
			Item_AddNewItem(nAddItemId,sAttr)
			Sys_SaveActionFestivalLog(sLog)
			return
		end

		if nFlag == 3 then
			local nProfession = BossHouse_Profession()
			if tBossHouse_ItemAward[nItemId][nProfession] ~= nil then
				local nNum = math.random(1,#tBossHouse_ItemAward[nItemId][nProfession]["RewardItem"])
				local nAddItemId = tBossHouse_ItemAward[nItemId][nProfession]["RewardItem"][nNum]
				local sAttr = tBossHouse_ItemAward[nItemId]["Attr"]
				local sLog = string.format(tBossHouse_Cont["Log"][1],nAddItemId)
				Item_AddNewItem(nAddItemId,sAttr)
				Sys_SaveActionFestivalLog(sLog)
			end
			return
		end

		if nFlag == 4 then
			RewardTemplate_Random(tBossHouse_ItemAward[nItemId],1)
			return
		end
	else
		local sItemName = Get_ItemtypeName(nItemId)
		local sText = string.format(tBossHouse_Text["NoAmount"],nItemNum,sItemName)
		Sys_MsgBox(sText)
	end
end

--boss礼包
function BossHouse_BossPack(nItemId)
	local nMapId
	for i,v in pairs(tBossHouse_AdditionalAward["Pack"]) do
		if nItemId == v then
			nMapId = i
		end
	end
--判断金币上限
	local nMoney = tBossHouse_AdditionalAward["Money"][nMapId]
	if not User_CanPutMoney2Bag(nMoney) then
		Sys_MsgBox(tBossHouse_Text["MoneyFull"])
		return
	end
--判断背包空间
	local nSpace = 0
	for i = 1,#tBossHouse_AdditionalAward[nMapId] do
		nSpace = nSpace + tBossHouse_AdditionalAward[nMapId][i]["Num"]
	end

	local sText = string.format(tBossHouse_Text["NoSpace"],nSpace)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(sText)
		return
	end
--获得物品和金币
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_AddMoney(nMoney)
		for i = 1,#tBossHouse_AdditionalAward[nMapId] do
			for j = 1,tBossHouse_AdditionalAward[nMapId][i]["Num"] do
				Item_AddNewItem(tBossHouse_AdditionalAward[nMapId][i]["Item_1"],"0 1")
			end
		end
	end
end


--直接升级到50,给奖励
function BossHouse_ProAward()
	local nPro = math.floor(Get_UserProfession()/10)
	if nPro == 13 or nPro == 14 then
		nPro = 10
	end

	User_SkillLearn(tBossHouse_ProAward["SkillType"][nPro],5)
	RewardTemplate_Reward(tBossHouse_ProAward)
	User_UpLevelTo(50)
	Sys_GotoSomeWhere(tBossHouse_Cont["CityPosX"],tBossHouse_Cont["CityPosY"],tBossHouse_Cont["CityMapId"],tBossHouse_Cont["NpcId"])
	User_OpenDialog(153)

end



--兑换劵
function BossHouse_LECoupon(nItemId)
	local nUserMoney = Get_UserEMoney()
	local nMoney = tBossHouse_LECoupon[nItemId]

	if nUserMoney + nMoney >= G_User_MaxEmoney then
		return
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_AddEMoney(nMoney)
		local sLog = string.format(tBossHouse_Ticketlog,nItemId,nMoney)
		Sys_SaveActionFestivalLog(sLog)
	end

end

-----------------------------------------------------------------------------------
--黑暗地穴接引使
tNpcFace[4357] = 53
tNpcGossip[11404] = tNpcGossip[11404] or DefaultNpc:new{}
tNpcGossip[11404]["OptionHidden"] = 1
tNpcGossip[11404]["DialogueText"] = tBossHouse_Text[11404]
--活动前
tNpcGossip[11404]["Text1-1"] = {111,112,113,114}
tNpcGossip[11404]["Text111"] = tBossHouse_Text[11404]["Text111"]
tNpcGossip[11404]["Text112"] = tBossHouse_Text[11404]["Text112"]
tNpcGossip[11404]["Text113"] = tBossHouse_Text[11404]["Text113"]
tNpcGossip[11404]["Text114"] = tBossHouse_Text[11404]["Text114"]
tNpcGossip[11404]["tOption1-1"] = {1}
tNpcGossip[11404]["Option1"] = tBossHouse_Text[11404]["Option1"]
tNpcGossip[11404]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tBossHouse_Cont["Beftime"])
end

--活动后
tNpcGossip[11404]["Text1-2"] = {121}
tNpcGossip[11404]["Text121"] = tBossHouse_Text[11404]["Text121"]
tNpcGossip[11404]["tOption1-2"] = {2}
tNpcGossip[11404]["Option2"] = tBossHouse_Text[11404]["Option2"]
tNpcGossip[11404]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tBossHouse_Cont["Beftime"]) and not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"])
end

--活动中 不在活动时间内
tNpcGossip[11404]["Text1-3"] = {131}
tNpcGossip[11404]["Text131"] = tBossHouse_Text[11404]["Text131"]
tNpcGossip[11404]["tOption1-3"] = {3}
tNpcGossip[11404]["Option3"] = tBossHouse_Text[11404]["Option3"]
tNpcGossip[11404]["ChkFunc1-3"] = function ()
	--return Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"])
	return false
end

--活动中
tNpcGossip[11404]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[11404]["Text141"] = tBossHouse_Text[11404]["Text141"]
tNpcGossip[11404]["Text142"] = tBossHouse_Text[11404]["Text142"]
tNpcGossip[11404]["Text143"] = tBossHouse_Text[11404]["Text143"]
tNpcGossip[11404]["Text144"] = tBossHouse_Text[11404]["Text144"]
tNpcGossip[11404]["Text145"] = tBossHouse_Text[11404]["Text145"]
tNpcGossip[11404]["tOption1-4"] = {5,71}
tNpcGossip[11404]["Option5"] = tBossHouse_Text[11404]["Option5"]
-- tNpcGossip[11404]["Option6"] = tBossHouse_Text[11404]["Option6"]
-- tNpcGossip[11404]["Option7"] = tBossHouse_Text[11404]["Option7"]

tNpcGossip[11404]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"])
end

tNpcGossip[11404]["OptionFunc5"]="BossHouse_GoToMap</N>11404"
tNpcGossip[11404]["OptionPoint71"] = "2-1"
-- tNpcGossip[11404]["OptionFunc6"]="BossHouse_OpenUrl</N>11404"
-- tNpcGossip[11404]["OptionFunc7"]="BossHouse_Repair</N>11404"

--得宝侠士名单。
tNpcGossip[11404]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224}
tNpcGossip[11404]["tOption2-1"] = {72}
tNpcGossip[11404]["OptionPoint72"] = "1"
tNpcGossip[11404]["ChkFunc2-1"] = function ()
	return BossHouse_AwardMenu(11404)
end

-- 地穴X层守护者
tNpcFace[4358] = 27
tNpcFace[4359] = 27
tNpcFace[4360] = 27
tNpcFace[4361] = 27
tNpcFace[4362] = 27
tNpcFace[4363] = 27
tNpcFace[4365] = 66

tNpcGossip[11405] = tNpcGossip[11405] or DefaultNpc:new{}
tNpcGossip[11405]["OptionHidden"] = 1

tNpcGossip[11405]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[11405]["tOption1-1"] = {1,3,2}
tNpcGossip[11405]["ChkFunc1-1"] = function ()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117}
	tNpcGossip[nNpcId]["Text111"] = tBossHouse_Text[nNpcId]["Text111"]
	tNpcGossip[nNpcId]["Text112"] = tBossHouse_Text[nNpcId]["Text112"]
	tNpcGossip[nNpcId]["Text113"] = tBossHouse_Text[nNpcId]["Text113"]
	tNpcGossip[nNpcId]["Text114"] = tBossHouse_Text[nNpcId]["Text114"]
	tNpcGossip[nNpcId]["Text115"] = tBossHouse_Text[nNpcId]["Text115"]
	tNpcGossip[nNpcId]["Text116"] = tBossHouse_Text[nNpcId]["Text116"]
	tNpcGossip[nNpcId]["Text117"] = tBossHouse_Text[nNpcId]["Text117"]
	tNpcGossip[nNpcId]["tOption1-1"] = {1,3,2}
	tNpcGossip[nNpcId]["Option1"] = tBossHouse_Text[11405]["Option1"]
	tNpcGossip[nNpcId]["Option2"] = tBossHouse_Text[11405]["Option2"]
	tNpcGossip[nNpcId]["Option3"] = tBossHouse_Text[11405]["Option3"]
	return true
end

tNpcGossip[11405]["OptionFunc1"] = "BossHouse_GoToCity"
tNpcGossip[11405]["OptionPoint3"] = "2-1"

tNpcGossip[11405]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,221,222,223,224}
tNpcGossip[11405]["Text211"] = tBossHouse_Text[11404]["Text211"]
tNpcGossip[11405]["Text212"] = tBossHouse_Text[11404]["Text212"]
tNpcGossip[11405]["Text213"] = tBossHouse_Text[11404]["Text213"]
tNpcGossip[11405]["Text214"] = tBossHouse_Text[11404]["Text214"]
tNpcGossip[11405]["Text215"] = tBossHouse_Text[11404]["Text215"]
tNpcGossip[11405]["Text216"] = tBossHouse_Text[11404]["Text216"]
tNpcGossip[11405]["Text217"] = tBossHouse_Text[11404]["Text217"]
tNpcGossip[11405]["Text218"] = tBossHouse_Text[11404]["Text218"]
tNpcGossip[11405]["Text219"] = tBossHouse_Text[11404]["Text219"]
tNpcGossip[11405]["Text220"] = tBossHouse_Text[11404]["Text220"]
tNpcGossip[11405]["Text221"] = tBossHouse_Text[11404]["Text221"]
tNpcGossip[11405]["Text222"] = tBossHouse_Text[11404]["Text222"]
tNpcGossip[11405]["Text223"] = tBossHouse_Text[11404]["Text223"]
tNpcGossip[11405]["Text224"] = tBossHouse_Text[11404]["Text224"]

tNpcGossip[11405]["tOption2-1"] = {72}
tNpcGossip[11405]["Option72"] = tBossHouse_Text[11404]["Option72"]
tNpcGossip[11405]["OptionPoint72"] = "1"
tNpcGossip[11405]["ChkFunc2-1"] = function ()
	return BossHouse_AwardMenu(11405)
end


for i = 11406,11410 do
	tNpcGossip[i] = tNpcGossip[11405]
end

--- 地穴除魔大使
tNpcGossip[11411] = tNpcGossip[11411] or DefaultNpc:new{}
tNpcGossip[11411]["OptionHidden"] = 1

--活动前
tNpcGossip[11411]["Text1-1"] = {111}
tNpcGossip[11411]["Text111"] = tBossHouse_Text[11411]["Text111"]
tNpcGossip[11411]["tOption1-1"] = {1}
tNpcGossip[11411]["Option1"] = tBossHouse_Text[11411]["Option1"]
tNpcGossip[11411]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tBossHouse_Cont["Beftime"])
end

--活动后
tNpcGossip[11411]["Text1-2"] = {121}
tNpcGossip[11411]["Text121"] = tBossHouse_Text[11411]["Text121"]
tNpcGossip[11411]["tOption1-2"] = {2}
tNpcGossip[11411]["Option2"] = tBossHouse_Text[11411]["Option2"]
tNpcGossip[11411]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tBossHouse_Cont["Beftime"]) and not Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"])
end

--活动中
tNpcGossip[11411]["Text1-3"] = {131,132,133,134,135,136,137,138,139,140,141,142,143}
tNpcGossip[11411]["Text131"] = tBossHouse_Text[11411]["Text131"]
tNpcGossip[11411]["Text132"] = tBossHouse_Text[11411]["Text132"]
tNpcGossip[11411]["Text133"] = tBossHouse_Text[11411]["Text133"]
tNpcGossip[11411]["Text134"] = tBossHouse_Text[11411]["Text134"]
tNpcGossip[11411]["Text135"] = tBossHouse_Text[11411]["Text135"]
tNpcGossip[11411]["Text136"] = tBossHouse_Text[11411]["Text136"]
tNpcGossip[11411]["Text137"] = tBossHouse_Text[11411]["Text137"]
tNpcGossip[11411]["Text138"] = tBossHouse_Text[11411]["Text138"]
tNpcGossip[11411]["Text139"] = tBossHouse_Text[11411]["Text139"]
tNpcGossip[11411]["Text140"] = tBossHouse_Text[11411]["Text140"]
tNpcGossip[11411]["Text141"] = tBossHouse_Text[11411]["Text141"]
tNpcGossip[11411]["Text142"] = tBossHouse_Text[11411]["Text142"]
tNpcGossip[11411]["Text143"] = tBossHouse_Text[11411]["Text143"]

tNpcGossip[11411]["tOption1-3"] = {3,4}
tNpcGossip[11411]["Option3"] = tBossHouse_Text[11411]["Option3"]
tNpcGossip[11411]["Option4"] = tBossHouse_Text[11411]["Option4"]

tNpcGossip[11411]["ChkFunc1-3"] = function ()
	tNpcGossip[11411]["Text140"] = ""
	tNpcGossip[11411]["Text141"] = ""
	tNpcGossip[11411]["Text142"] = ""
	tNpcGossip[11411]["Text143"] = ""

	local nTaskNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"])
	local nMonsterName = tBossHouse_Text["MonsterName"][nTaskNum]
	local nCompleteNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"]) + 1
	local nMap = BossHouse_ChkMap()
	local nExpTime = tBossHouse_TaskAward[nMap]["RewardExpTime"]["Value"]

	if nCompleteNum <= tBossHouse_KillMonsterTask["TaskNum"] then
		tNpcGossip[11411]["Text140"] = string.format(tBossHouse_Text[11411]["Text140"],nMonsterName)
		tNpcGossip[11411]["Text141"] = string.format(tBossHouse_Text[11411]["Text141"],nExpTime)
		tNpcGossip[11411]["Text142"] = string.format(tBossHouse_Text[11411]["Text142"],nCompleteNum)
	else
		tNpcGossip[11411]["Text143"] = tBossHouse_Text[11411]["Text143"]
	end
	return Sys_ChkFullTime(tBossHouse_Cont["ActivityTime"])
end

tNpcGossip[11411]["OptionChkFunc3"] = function ()
	local nCompleteNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"])
	local nMonsterNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"])
	if nCompleteNum < tBossHouse_KillMonsterTask["TaskNum"] and nMonsterNum < tBossHouse_KillMonsterTask["KillNum"] then
		return true
	end
	return false
end

tNpcGossip[11411]["OptionChkFunc4"] = function ()
	local nCompleteNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[3]["EventType"],tBossHouse_KillMonsterTask[3]["DataType"])
	local nMonsterNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[2]["EventType"],tBossHouse_KillMonsterTask[2]["DataType"])
	if nCompleteNum < tBossHouse_KillMonsterTask["TaskNum"] and nMonsterNum >= tBossHouse_KillMonsterTask["KillNum"] then
		return true
	end
	return false
end

tNpcGossip[11411]["Text2-1"] = {211}
tNpcGossip[11411]["Text211"] = tBossHouse_Text[11411]["Text211"]
tNpcGossip[11411]["tOption2-1"] ={5}
tNpcGossip[11411]["Option5"] = tBossHouse_Text[11411]["Option5"]
tNpcGossip[11411]["ChkFunc2-1"] = function ()
	local nTaskNum = Get_UserStatisticValue(tBossHouse_KillMonsterTask[1]["EventType"],tBossHouse_KillMonsterTask[1]["DataType"])
	local nMonsterName = tBossHouse_Text["MonsterName"][nTaskNum]
	tNpcGossip[11411]["Text211"] = string.format(tBossHouse_Text[11411]["Text211"],nMonsterName)
	return true
end

tNpcGossip[11411]["OptionPoint3"]="2-1"
tNpcGossip[11411]["OptionFunc4"]="BossHouse_TaskAward</N>11411"

for i = 11412,11416 do
	tNpcGossip[i] = tNpcGossip[11411]
end
-----------------------------------------------------------------------------------
tItem[3305007] = tItem[3305007] or {}
tItem[3305007]["Function"] = function (nItemId)
	BossHouse_ItemUse(nItemId)
end

for i = 3305008,3305032 do
	tItem[i] = tItem[3305007]
end

tItem[3305686] = tItem[3305686] or {}
tItem[3305686]["Function"] = function (nItemId)
	BossHouse_BossPack(nItemId)
end

for i = 3305687,3305690 do
	tItem[i] = tItem[3305686]
end

tItem[3305034] = tItem[3305034] or {}
tItem[3305034]["Function"] = function (nItemId)
	BossHouse_LECoupon(nItemId)
end

tItem[3305035] = tItem[3305034] or {}

--现金兑换券碎片
tItem[3306375] = tItem[3306375] or {}
tItem[3306375]["Function"] = function (nItemId)
	BossHouse_CashlittleUse(nItemId)
end
-----------------------------------------------------------------------------------
tMonster[4404] = tMonster[4404] or {}
tMonster[4404]["tFunction"] = tMonster[4404]["tFunction"] or {}
table.insert(tMonster[4404]["tFunction"],BossHouse_Monster)

for i = 4405,4415 do
	tMonster[i] = tMonster[4404] or {}
end



tMonster[4464] = tMonster[4464] or {}
tMonster[4464]["tFunction"] = tMonster[4464]["tFunction"] or {}
table.insert(tMonster[4464]["tFunction"],BossHouse_SmallMonster)

for i = 4465,4481 do
	tMonster[i] = tMonster[4464] or {}
end

-----------------------------------------------------------------------------------
--时间检测

tSystem_Prompet_Func = tSystem_Prompet_Func or {}
table.insert(tSystem_Prompet_Func,BossHouse_Reset)


tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],BossHouse_TimeChk)

tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
table.insert(tOntimerMin_HM[0001],BossHouse_TimeChk)

tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
table.insert(tOntimerMin_HM[0002],BossHouse_TimeChk)

tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
table.insert(tOntimerMin_HM[0003],BossHouse_TimeChk)

tOntimerMin_HM[0004] = tOntimerMin_HM[0004] or {}
table.insert(tOntimerMin_HM[0004],BossHouse_TimeChk)

tOntimerMin_HM[0005] = tOntimerMin_HM[0005] or {}
table.insert(tOntimerMin_HM[0005],BossHouse_TimeChk)

