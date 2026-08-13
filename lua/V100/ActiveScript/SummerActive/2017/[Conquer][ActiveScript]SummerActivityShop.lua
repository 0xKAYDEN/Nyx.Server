------------------------------------------------------------------------------------
--Name:			170508[简体征服][活动脚本]2017暑期活动(7.8-7.21)
--Purpose:		2017暑期活动
--Creator:		洪易恒
--Created:		2017/05/08
------------------------------------------------------------------------------------

--[[
命名前缀 SummerActivityShop
Logid  12000720

######掩码说明
#159 69 打地宫怪物每日掉落20个雪糕         20 
#159 70 打雪糕大盗每日掉五次雪糕，每次两个雪糕      5
#

全局数据
#51538   统计外套永久产出率    data0   热力沙滩外套包      data1  盛夏海风泳装外套包

]]--


--------------------------------数据存储表------------------------
local tSummerActivityShop_Count = {}
	--时间
	tSummerActivityShop_Count["ActivityTime"] = tActivityTime["SummerActivityShop"]["ActivityTime"]
	--等级
	tSummerActivityShop_Count["Metempsychosis"] = 0
	tSummerActivityShop_Count["Level"] = 80
	tSummerActivityShop_Count["Space"] = 1
	
	-- 新天石礼包Id
	tSummerActivityShop_Count["NewPackId"] = 3309020
	
	-- 任务ID
	tSummerActivityShop_Count["TaskId"] = 3986
	
	--全局掩码
	tSummerActivityShop_Count["GlobalId"] = 51538
	
	--赠点数
	tSummerActivityShop_Count["MostMonoEMoneyIce"] = 10
	tSummerActivityShop_Count["MostMonoEMoneyGift"] = 88
	
	tSummerActivityShop_Count["IceId"] = 3303338
	tSummerActivityShop_Count["NpcId"] = 20625
	tSummerActivityShop_Count["ChangeAttr"] = "0 %d"
	tSummerActivityShop_Count["ChangeItemId"] = 3301454
	
	tSummerActivityShop_Count["IceMonsterId"] = 3315
	tSummerActivityShop_Count["IceMonsterDrop"] = "IceMonsterDrop"
	tSummerActivityShop_Count["MonsterDrop"] = "MonsterDrop"

local tSummerActivityShop_Stc = {}
	tSummerActivityShop_Stc["MonsterDrop"] = {}
	tSummerActivityShop_Stc["MonsterDrop"]["EventType"] = 159
	tSummerActivityShop_Stc["MonsterDrop"]["DataType"] = 69
	tSummerActivityShop_Stc["MonsterDrop"]["nSign"] = 20
	
	tSummerActivityShop_Stc["IceMonsterDrop"] = {}
	tSummerActivityShop_Stc["IceMonsterDrop"]["EventType"] = 159
	tSummerActivityShop_Stc["IceMonsterDrop"]["DataType"] = 70
	tSummerActivityShop_Stc["IceMonsterDrop"]["nSign"] = 5
	
	tSummerActivityShop_Stc["Warn"] = 100
	
	
--Logid
local tSummerActivityShop_Log = {}
	tSummerActivityShop_Log["IceTimeOut"] = "0,0,3303338,%d,12000720,3,0,0"
	tSummerActivityShop_Log["ChangeLog"] = "0,0,3303339,%d,12000720,3,3301454,%d"
	tSummerActivityShop_Log["BagTimeOut"] = "0,0,%d,%d,12000720,3,0,0"
	tSummerActivityShop_Log["EmoneyLog"] = "0,0,3303340,1,12000720,3,3,%d"
	tSummerActivityShop_Log["MonsterDrop"] = "0,0,0,0,12000720,1[1],3303338,1"
	tSummerActivityShop_Log["IceMonsterDrop"] = "0,0,0,0,12000720,1[1],3303338,2"
	
local tSummerActivityShop_Effect = {}
	tSummerActivityShop_Effect["Object"] = "self"
	tSummerActivityShop_Effect["UseIce"] = "zf2-e128"
	tSummerActivityShop_Effect["MonsterDrop"] = "angelwing"
	
--概率奖励
local tSummerActivityShop_Award = {}
	--夏日雪糕
	tSummerActivityShop_Award[3303338] = {}
	tSummerActivityShop_Award[3303338]["ItemChanceSum"] = 10000
	--32%获得3个雪糕棒
	tSummerActivityShop_Award[3303338][1] = {}
	tSummerActivityShop_Award[3303338][1]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303338][1]["ItemChance"] = 3200
	tSummerActivityShop_Award[3303338][1]["RewardItem"] = {}
	tSummerActivityShop_Award[3303338][1]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303338][1]["RewardItem"][1]["Id"] = 3303339
	tSummerActivityShop_Award[3303338][1]["RewardItem"][1]["Attr"] = "0 3"
	tSummerActivityShop_Award[3303338][1]["Log"] = "0,0,3303338,1,12000720,1[2],3303339,3"
	
	--20%获得5个雪糕棒
	tSummerActivityShop_Award[3303338][2] = {}
	tSummerActivityShop_Award[3303338][2]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303338][2]["ItemChance"] = 2000
	tSummerActivityShop_Award[3303338][2]["RewardItem"] = {}
	tSummerActivityShop_Award[3303338][2]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303338][2]["RewardItem"][1]["Id"] = 3303339
	tSummerActivityShop_Award[3303338][2]["RewardItem"][1]["Attr"] = "0 5"
	tSummerActivityShop_Award[3303338][2]["Log"] = "0,0,3303338,1,12000720,1[2],3303339,5"
	
	--15%获得8个雪糕棒
	tSummerActivityShop_Award[3303338][3] = {}
	tSummerActivityShop_Award[3303338][3]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303338][3]["ItemChance"] = 1500
	tSummerActivityShop_Award[3303338][3]["RewardItem"] = {}
	tSummerActivityShop_Award[3303338][3]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303338][3]["RewardItem"][1]["Id"] = 3303339
	tSummerActivityShop_Award[3303338][3]["RewardItem"][1]["Attr"] = "0 8"
	tSummerActivityShop_Award[3303338][3]["Log"] = "0,0,3303338,1,12000720,1[2],3303339,8"
	
	--8%获得10个雪糕棒
	tSummerActivityShop_Award[3303338][4] = {}
	tSummerActivityShop_Award[3303338][4]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303338][4]["ItemChance"] = 800
	tSummerActivityShop_Award[3303338][4]["RewardItem"] = {}
	tSummerActivityShop_Award[3303338][4]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303338][4]["RewardItem"][1]["Id"] = 3303339
	tSummerActivityShop_Award[3303338][4]["RewardItem"][1]["Attr"] = "0 10"
	tSummerActivityShop_Award[3303338][4]["Log"] = "0,0,3303338,1,12000720,1[2],3303339,10"
	
	--17%获得5赠点
	tSummerActivityShop_Award[3303338][5] = {}
	tSummerActivityShop_Award[3303338][5]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303338][5]["ItemChance"] = 1700
	tSummerActivityShop_Award[3303338][5]["RewardEMoneyMono"] = {}
	tSummerActivityShop_Award[3303338][5]["RewardEMoneyMono"]["Value"] = 5
	tSummerActivityShop_Award[3303338][5]["Log"] = "0,0,3303338,1,12000720,1[2],3,5"
	
	--8%获得10赠点
	tSummerActivityShop_Award[3303338][6] = {}
	tSummerActivityShop_Award[3303338][6]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303338][6]["ItemChance"] = 800
	tSummerActivityShop_Award[3303338][6]["RewardEMoneyMono"] = {}
	tSummerActivityShop_Award[3303338][6]["RewardEMoneyMono"]["Value"] = 10
	tSummerActivityShop_Award[3303338][6]["Log"] = "0,0,3303338,1,12000720,1[2],3,10"
	
	
	--暑期天石礼包
	tSummerActivityShop_Award[3303340] = {} 
	tSummerActivityShop_Award[3303340]["Reward"] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1]["ItemChanceSum"] = 10000

	--5%获得1到10的赠点
	tSummerActivityShop_Award[3303340]["Reward"][1][1] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1][1]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][1]["ItemChance"] = 500
	tSummerActivityShop_Award[3303340]["Reward"][1][1]["Item_1"] = 1
	tSummerActivityShop_Award[3303340]["Reward"][1][1]["Start"] = 1
	tSummerActivityShop_Award[3303340]["Reward"][1][1]["End"] = 10
	--25%获得11到20的赠点
	tSummerActivityShop_Award[3303340]["Reward"][1][2] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1][2]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][2]["ItemChance"] = 2500
	tSummerActivityShop_Award[3303340]["Reward"][1][2]["Item_1"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][2]["Start"] = 11
	tSummerActivityShop_Award[3303340]["Reward"][1][2]["End"] = 20
	--35%获得21到30的赠点
	tSummerActivityShop_Award[3303340]["Reward"][1][3] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1][3]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][3]["ItemChance"] = 3500
	tSummerActivityShop_Award[3303340]["Reward"][1][3]["Item_1"] = 3
	tSummerActivityShop_Award[3303340]["Reward"][1][3]["Start"] = 21
	tSummerActivityShop_Award[3303340]["Reward"][1][3]["End"] = 30
	--18%获得31到40的赠点
	tSummerActivityShop_Award[3303340]["Reward"][1][4] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1][4]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][4]["ItemChance"] = 1800
	tSummerActivityShop_Award[3303340]["Reward"][1][4]["Item_1"] = 4
	tSummerActivityShop_Award[3303340]["Reward"][1][4]["Start"] = 31
	tSummerActivityShop_Award[3303340]["Reward"][1][4]["End"] = 40
	--12%获得41到50的赠点
	tSummerActivityShop_Award[3303340]["Reward"][1][5] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1][5]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][5]["ItemChance"] = 1200
	tSummerActivityShop_Award[3303340]["Reward"][1][5]["Item_1"] = 5
	tSummerActivityShop_Award[3303340]["Reward"][1][5]["Start"] = 41
	tSummerActivityShop_Award[3303340]["Reward"][1][5]["End"] = 50
	--4%获得51到60的赠点
	tSummerActivityShop_Award[3303340]["Reward"][1][6] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1][6]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][6]["ItemChance"] = 400
	tSummerActivityShop_Award[3303340]["Reward"][1][6]["Item_1"] = 6
	tSummerActivityShop_Award[3303340]["Reward"][1][6]["Start"] = 51
	tSummerActivityShop_Award[3303340]["Reward"][1][6]["End"] = 60
	--1%获得61到88的赠点
	tSummerActivityShop_Award[3303340]["Reward"][1][7] = {}
	tSummerActivityShop_Award[3303340]["Reward"][1][7]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303340]["Reward"][1][7]["ItemChance"] = 100
	tSummerActivityShop_Award[3303340]["Reward"][1][7]["Item_1"] = 7
	tSummerActivityShop_Award[3303340]["Reward"][1][7]["Start"] = 61
	tSummerActivityShop_Award[3303340]["Reward"][1][7]["End"] = 88
	
	--暑期天石礼包(新写)
	tSummerActivityShop_Award[3309020] = {} 
	tSummerActivityShop_Award[3309020]["Reward"] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1]["ItemChanceSum"] = 10000

	--5%获得1到10的赠点
	tSummerActivityShop_Award[3309020]["Reward"][1][1] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1][1]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][1]["ItemChance"] = 500
	tSummerActivityShop_Award[3309020]["Reward"][1][1]["Item_1"] = 1
	tSummerActivityShop_Award[3309020]["Reward"][1][1]["Start"] = 1
	tSummerActivityShop_Award[3309020]["Reward"][1][1]["End"] = 10
	--25%获得11到20的赠点
	tSummerActivityShop_Award[3309020]["Reward"][1][2] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1][2]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][2]["ItemChance"] = 2500
	tSummerActivityShop_Award[3309020]["Reward"][1][2]["Item_1"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][2]["Start"] = 11
	tSummerActivityShop_Award[3309020]["Reward"][1][2]["End"] = 20
	--35%获得21到30的赠点
	tSummerActivityShop_Award[3309020]["Reward"][1][3] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1][3]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][3]["ItemChance"] = 3500
	tSummerActivityShop_Award[3309020]["Reward"][1][3]["Item_1"] = 3
	tSummerActivityShop_Award[3309020]["Reward"][1][3]["Start"] = 21
	tSummerActivityShop_Award[3309020]["Reward"][1][3]["End"] = 30
	--18%获得31到40的赠点
	tSummerActivityShop_Award[3309020]["Reward"][1][4] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1][4]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][4]["ItemChance"] = 1800
	tSummerActivityShop_Award[3309020]["Reward"][1][4]["Item_1"] = 4
	tSummerActivityShop_Award[3309020]["Reward"][1][4]["Start"] = 31
	tSummerActivityShop_Award[3309020]["Reward"][1][4]["End"] = 40
	--12%获得41到50的赠点
	tSummerActivityShop_Award[3309020]["Reward"][1][5] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1][5]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][5]["ItemChance"] = 1200
	tSummerActivityShop_Award[3309020]["Reward"][1][5]["Item_1"] = 5
	tSummerActivityShop_Award[3309020]["Reward"][1][5]["Start"] = 41
	tSummerActivityShop_Award[3309020]["Reward"][1][5]["End"] = 50
	--4%获得51到60的赠点
	tSummerActivityShop_Award[3309020]["Reward"][1][6] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1][6]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][6]["ItemChance"] = 400
	tSummerActivityShop_Award[3309020]["Reward"][1][6]["Item_1"] = 6
	tSummerActivityShop_Award[3309020]["Reward"][1][6]["Start"] = 51
	tSummerActivityShop_Award[3309020]["Reward"][1][6]["End"] = 60
	--1%获得61到88的赠点
	tSummerActivityShop_Award[3309020]["Reward"][1][7] = {}
	tSummerActivityShop_Award[3309020]["Reward"][1][7]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3309020]["Reward"][1][7]["ItemChance"] = 100
	tSummerActivityShop_Award[3309020]["Reward"][1][7]["Item_1"] = 7
	tSummerActivityShop_Award[3309020]["Reward"][1][7]["Start"] = 61
	tSummerActivityShop_Award[3309020]["Reward"][1][7]["End"] = 88
	
	--热力沙滩外套包
	tSummerActivityShop_Award[3303341] = {}
	tSummerActivityShop_Award[3303341]["ItemChanceSum"] = 10000
	--30%  7天
	tSummerActivityShop_Award[3303341][1] = {}
	tSummerActivityShop_Award[3303341][1]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303341][1]["ItemChance"] = 3000
	tSummerActivityShop_Award[3303341][1]["RewardItem"] = {}
	tSummerActivityShop_Award[3303341][1]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303341][1]["RewardItem"][1]["Id"] = 184345
	tSummerActivityShop_Award[3303341][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tSummerActivityShop_Award[3303341][1]["Log"] = "0,0,3303341,1,12000720,3,184345,1"
	--40% 15 天
	tSummerActivityShop_Award[3303341][2] = {}
	tSummerActivityShop_Award[3303341][2]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303341][2]["ItemChance"] = 4000
	tSummerActivityShop_Award[3303341][2]["RewardItem"] = {}
	tSummerActivityShop_Award[3303341][2]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303341][2]["RewardItem"][1]["Id"] = 184345
	tSummerActivityShop_Award[3303341][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tSummerActivityShop_Award[3303341][2]["Log"] = "0,0,3303341,1,12000720,3,184345,1"
	--20% 30天
	tSummerActivityShop_Award[3303341][3] = {}
	tSummerActivityShop_Award[3303341][3]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303341][3]["ItemChance"] = 2000
	tSummerActivityShop_Award[3303341][3]["RewardItem"] = {}
	tSummerActivityShop_Award[3303341][3]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303341][3]["RewardItem"][1]["Id"] = 184345
	tSummerActivityShop_Award[3303341][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSummerActivityShop_Award[3303341][3]["Log"] = "0,0,3303341,1,12000720,3,184345,1"
	--7%  90天
	tSummerActivityShop_Award[3303341][4] = {}
	tSummerActivityShop_Award[3303341][4]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303341][4]["ItemChance"] = 700
	tSummerActivityShop_Award[3303341][4]["RewardItem"] = {}
	tSummerActivityShop_Award[3303341][4]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303341][4]["RewardItem"][1]["Id"] = 184345
	tSummerActivityShop_Award[3303341][4]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tSummerActivityShop_Award[3303341][4]["Log"] = "0,0,3303341,1,12000720,3,184345,1"
	
	--2.5% 180天
	tSummerActivityShop_Award[3303341][5] = {}
	tSummerActivityShop_Award[3303341][5]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303341][5]["ItemChance"] = 250
	tSummerActivityShop_Award[3303341][5]["RewardItem"] = {}
	tSummerActivityShop_Award[3303341][5]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303341][5]["RewardItem"][1]["Id"] = 184345
	tSummerActivityShop_Award[3303341][5]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
	tSummerActivityShop_Award[3303341][5]["Log"] = "0,0,3303341,1,12000720,3,184345,1"
	
	--0.5% 永久
	tSummerActivityShop_Award[3303341][6] = {}
	tSummerActivityShop_Award[3303341][6]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303341][6]["ItemChance"] = 50
	tSummerActivityShop_Award[3303341][6]["RewardItem"] = {}
	tSummerActivityShop_Award[3303341][6]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303341][6]["RewardItem"][1]["Id"] = 184345
	tSummerActivityShop_Award[3303341][6]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tSummerActivityShop_Award[3303341][6]["Log"] = "0,0,3303341,1,12000720,3,184345,1"
	tSummerActivityShop_Award[3303341][6]["GlobalId"] = tSummerActivityShop_Count["GlobalId"]
	tSummerActivityShop_Award[3303341][6]["Pos"] = 0
	tSummerActivityShop_Award[3303341][6]["MaxData"] = 1
	tSummerActivityShop_Award[3303341][6]["FullIndex"] = 5
	
	--盛夏海风泳装外套包
	tSummerActivityShop_Award[3303342] = {}
	tSummerActivityShop_Award[3303342]["ItemChanceSum"] = 10000
	--30%  7天
	tSummerActivityShop_Award[3303342][1] = {}
	tSummerActivityShop_Award[3303342][1]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303342][1]["ItemChance"] = 3000
	tSummerActivityShop_Award[3303342][1]["RewardItem"] = {}
	tSummerActivityShop_Award[3303342][1]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303342][1]["RewardItem"][1]["Id"] = 192495
	tSummerActivityShop_Award[3303342][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tSummerActivityShop_Award[3303342][1]["Log"] = "0,0,3303342,1,12000720,3,192495,1"
	--40% 15 天
	tSummerActivityShop_Award[3303342][2] = {}
	tSummerActivityShop_Award[3303342][2]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303342][2]["ItemChance"] = 4000
	tSummerActivityShop_Award[3303342][2]["RewardItem"] = {}
	tSummerActivityShop_Award[3303342][2]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303342][2]["RewardItem"][1]["Id"] = 192495
	tSummerActivityShop_Award[3303342][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tSummerActivityShop_Award[3303342][2]["Log"] = "0,0,3303342,1,12000720,3,192495,1"
	--20% 30天
	tSummerActivityShop_Award[3303342][3] = {}
	tSummerActivityShop_Award[3303342][3]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303342][3]["ItemChance"] = 2000
	tSummerActivityShop_Award[3303342][3]["RewardItem"] = {}
	tSummerActivityShop_Award[3303342][3]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303342][3]["RewardItem"][1]["Id"] = 192495
	tSummerActivityShop_Award[3303342][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSummerActivityShop_Award[3303342][3]["Log"] = "0,0,3303342,1,12000720,3,192495,1"
	--7%  90天
	tSummerActivityShop_Award[3303342][4] = {}
	tSummerActivityShop_Award[3303342][4]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303342][4]["ItemChance"] = 700
	tSummerActivityShop_Award[3303342][4]["RewardItem"] = {}
	tSummerActivityShop_Award[3303342][4]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303342][4]["RewardItem"][1]["Id"] = 192495
	tSummerActivityShop_Award[3303342][4]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tSummerActivityShop_Award[3303342][4]["Log"] = "0,0,3303342,1,12000720,3,192495,1"
	
	--2.5% 180天
	tSummerActivityShop_Award[3303342][5] = {}
	tSummerActivityShop_Award[3303342][5]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303342][5]["ItemChance"] = 250
	tSummerActivityShop_Award[3303342][5]["RewardItem"] = {}
	tSummerActivityShop_Award[3303342][5]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303342][5]["RewardItem"][1]["Id"] = 192495
	tSummerActivityShop_Award[3303342][5]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
	tSummerActivityShop_Award[3303342][5]["Log"] = "0,0,3303342,1,12000720,3,192495,1"
	
	--0.5% 永久
	tSummerActivityShop_Award[3303342][6] = {}
	tSummerActivityShop_Award[3303342][6]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award[3303342][6]["ItemChance"] = 50
	tSummerActivityShop_Award[3303342][6]["RewardItem"] = {}
	tSummerActivityShop_Award[3303342][6]["RewardItem"][1] = {}
	tSummerActivityShop_Award[3303342][6]["RewardItem"][1]["Id"] = 192495
	tSummerActivityShop_Award[3303342][6]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	tSummerActivityShop_Award[3303342][6]["Log"] = "0,0,3303342,1,12000720,3,192495,1"
	tSummerActivityShop_Award[3303342][6]["GlobalId"] = tSummerActivityShop_Count["GlobalId"]
	tSummerActivityShop_Award[3303342][6]["Pos"] = 1
	tSummerActivityShop_Award[3303342][6]["MaxData"] = 1
	tSummerActivityShop_Award[3303342][6]["FullIndex"] = 5
	
	--击杀地宫怪物掉落雪糕%3
	tSummerActivityShop_Award["MonsterDrop"] = {}
	tSummerActivityShop_Award["MonsterDrop"][1] = {}
	tSummerActivityShop_Award["MonsterDrop"][1]["ItemChanceSum"] = 10000
	
	tSummerActivityShop_Award["MonsterDrop"][1][1] = {}
	tSummerActivityShop_Award["MonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award["MonsterDrop"][1][1]["ItemChance"] = 300
	tSummerActivityShop_Award["MonsterDrop"][1][1]["Item"] = {3303338}
	
	tSummerActivityShop_Award["MonsterDrop"][1][2] = {}
	tSummerActivityShop_Award["MonsterDrop"][1][2]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award["MonsterDrop"][1][2]["ItemChance"] = 9700
	tSummerActivityShop_Award["MonsterDrop"][1][2]["Item"] = {0}
	
	--击杀雪糕大盗必掉雪糕
	tSummerActivityShop_Award["IceMonsterDrop"] = {}
	tSummerActivityShop_Award["IceMonsterDrop"][1] = {}
	tSummerActivityShop_Award["IceMonsterDrop"][1]["ItemChanceSum"] = 10000
	
	tSummerActivityShop_Award["IceMonsterDrop"][1][1] = {}
	tSummerActivityShop_Award["IceMonsterDrop"][1][1]["RandomItemChanceType"] = 2
	tSummerActivityShop_Award["IceMonsterDrop"][1][1]["ItemChance"] = 10000
	tSummerActivityShop_Award["IceMonsterDrop"][1][1]["Item"] = {3303338}
	
	--兑换年运通宝
	tSummerActivityShop_Award["Change"] = {}
	tSummerActivityShop_Award["Change"]["RewardItem"] = {}
	tSummerActivityShop_Award["Change"]["RewardItem"][1] = {}
	tSummerActivityShop_Award["Change"]["RewardItem"][1]["Id"] = 3301454
	tSummerActivityShop_Award["Change"]["RewardItem"][1]["Attr"] = "0 1"
	
	--获得赠点
	tSummerActivityShop_Award["MonoEMoney"] = {}
	tSummerActivityShop_Award["MonoEMoney"]["RewardEMoneyMono"] = {}
	tSummerActivityShop_Award["MonoEMoney"]["RewardEMoneyMono"]["Value"] = 1
	
	
	tSummerActivityShop_Award["GetIce"] = {}
	--获得1个雪糕
	tSummerActivityShop_Award["GetIce"]["MonsterDrop"] = {}
	tSummerActivityShop_Award["GetIce"]["MonsterDrop"]["RewardItem"] = {}
	tSummerActivityShop_Award["GetIce"]["MonsterDrop"]["RewardItem"][1] = {}
	tSummerActivityShop_Award["GetIce"]["MonsterDrop"]["RewardItem"][1]["Id"] = 3303338
	tSummerActivityShop_Award["GetIce"]["MonsterDrop"]["RewardItem"][1]["Attr"] = "0 1"
	tSummerActivityShop_Award["GetIce"]["MonsterDrop"]["LogId"] = 12000720
	
	--获得2个雪糕
	tSummerActivityShop_Award["GetIce"]["IceMonsterDrop"] = {}
	tSummerActivityShop_Award["GetIce"]["IceMonsterDrop"]["RewardItem"] = {}
	tSummerActivityShop_Award["GetIce"]["IceMonsterDrop"]["RewardItem"][1] = {}
	tSummerActivityShop_Award["GetIce"]["IceMonsterDrop"]["RewardItem"][1]["Id"] = 3303338
	tSummerActivityShop_Award["GetIce"]["IceMonsterDrop"]["RewardItem"][1]["Attr"] = "0 2"
	tSummerActivityShop_Award["GetIce"]["IceMonsterDrop"]["LogId"] = 12000720
	
-- 新增奖励
local tSummerActivityShop_Reward = {}
	-- 3天浑天金豚坐骑礼盒
	tSummerActivityShop_Reward[3309021] = {}
	tSummerActivityShop_Reward[3309021]["DeleteItem"] = {}
	tSummerActivityShop_Reward[3309021]["DeleteItem"][1] = {}
	tSummerActivityShop_Reward[3309021]["DeleteItem"][1]["Id"] = 3309021
	tSummerActivityShop_Reward[3309021]["RewardItem"] = {}
	tSummerActivityShop_Reward[3309021]["RewardItem"][1] = {}
	tSummerActivityShop_Reward[3309021]["RewardItem"][1]["Id"] = 200419
	tSummerActivityShop_Reward[3309021]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tSummerActivityShop_Reward[3309021]["LogId"] = 12000720
	-- 30天婆罗神象坐骑礼盒
	tSummerActivityShop_Reward[3309022] = {}
	tSummerActivityShop_Reward[3309022]["DeleteItem"] = {}
	tSummerActivityShop_Reward[3309022]["DeleteItem"][1] = {}
	tSummerActivityShop_Reward[3309022]["DeleteItem"][1]["Id"] = 3309022
	tSummerActivityShop_Reward[3309022]["RewardItem"] = {}
	tSummerActivityShop_Reward[3309022]["RewardItem"][1] = {}
	tSummerActivityShop_Reward[3309022]["RewardItem"][1]["Id"] = 200418
	tSummerActivityShop_Reward[3309022]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSummerActivityShop_Reward[3309021]["LogId"] = 12000720
	
-------------------------------函数逻辑部分------------------------
--打开兑换商店面板函数
function SummerActivityShop_ExchangeShop(nNpcId)
	if Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tSummerActivityShop_Count["Level"],tSummerActivityShop_Count["Metempsychosis"]) then
		User_OpenExchangeShop(nNpcId)
	else
		return
	end
end


--使用夏日雪糕函数
function SummerActivityShop_UseIce(nItemId)
	local nNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tSummerActivityShop_Log["IceTimeOut"],nNum)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tSummerActivityShop_Text["System"]["IceTimeOut"])
			return
		end
	end
	--背包不足
	if not RewardTemplate_ChkRandomSpace(tSummerActivityShop_Award,nItemId) then
		Sys_MsgBox(tSummerActivityShop_Text["System"]["Space"])
		return
	end
	--赠点上限判断
	if Get_UserMonoEMoney() + tSummerActivityShop_Count["MostMonoEMoneyIce"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tSummerActivityShop_Text["System"]["MostMonoEMoneyIce"])
		return
	end
	--进行兑换
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tSummerActivityShop_Award,nItemId)
		User_EffectAdd(tSummerActivityShop_Effect["Object"],tSummerActivityShop_Effect["UseIce"])
	end
end

--使用雪糕棒函数
function SummerActivityShop_UseStick(nItemId)
	if Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then
		local nNpcId = tSummerActivityShop_Count["NpcId"]
		NpcPosition_PathFind(nNpcId)
		return
	end
	
	local nNum = Get_CountItemType(nItemId,0)
	if nNum == 0 then
		return
	end
	
	--活动期间外自动兑换成年运通宝 3301454
	if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
		local sAttr = string.format(tSummerActivityShop_Count["ChangeAttr"],nNum)
		local sLog = string.format(tSummerActivityShop_Log["ChangeLog"],nNum,nNum)
		tSummerActivityShop_Award["Change"]["RewardItem"][1]["Attr"] = sAttr
		RewardTemplate_Reward(tSummerActivityShop_Award["Change"])
		Sys_SaveActionFestivalLog(sLog)
		Sys_MsgBox(tSummerActivityShop_Text["System"]["StickTimeOut"])
	end
end

--赠点包使用函数
function SummerActivityShop_UseMonoEMoneyBag(nItemId)
	local nNum = Get_CountItemType(nItemId,0)
	if nItemId == tSummerActivityShop_Count["NewPackId"] then
		if not Sys_ChkFullTime(tActivityTime["SummerActivityShop"]["PackActivityTime"]) then
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
				local sLog =string.format(tSummerActivityShop_Log["BagTimeOut"],nItemId,nNum)
				Sys_SaveActionFestivalLog(sLog)
				Sys_MsgBox(tSummerActivityShop_Text["System"]["GiftBagTimeOut"])
				return
			end
		end
	else
		if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then
			if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
				local sLog =string.format(tSummerActivityShop_Log["BagTimeOut"],nItemId,nNum)
				Sys_SaveActionFestivalLog(sLog)
				Sys_MsgBox(tSummerActivityShop_Text["System"]["GiftBagTimeOut"])
				return
			end
		end
	end
	--赠点上限判断
	if Get_UserMonoEMoney() + tSummerActivityShop_Count["MostMonoEMoneyGift"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tSummerActivityShop_Text["System"]["MostMonoEMoneyGift"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tSummerActivityShop_Award[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		local sLog = string.format(tSummerActivityShop_Log["EmoneyLog"],nCp)
		tSummerActivityShop_Award["MonoEMoney"]["RewardEMoneyMono"]["Value"] = nCp
		RewardTemplate_Reward(tSummerActivityShop_Award["MonoEMoney"])
		Sys_SaveActionFestivalLog(sLog)
	end
end

--外套包使用函数
function SummerActivityShop_UseCoatBag(nItemId)
	local nNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog =string.format(tSummerActivityShop_Log["BagTimeOut"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tSummerActivityShop_Text["System"]["GiftBagTimeOut"])
			return
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tSummerActivityShop_Award,nItemId)
	end
end

--区域怪物掉落物品函数
function SummerActivityShop_MonsterDrop(nMonsterId)
	local sMonster = tSummerActivityShop_Count["MonsterDrop"]
	if nMonsterId == tSummerActivityShop_Count["IceMonsterId"] then
		sMonster = tSummerActivityShop_Count["IceMonsterDrop"]
	end
	if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityShop_Count["Level"],tSummerActivityShop_Count["Metempsychosis"]) then
		return
	end
	local nEvent = tSummerActivityShop_Stc[sMonster]["EventType"]
	local nType = tSummerActivityShop_Stc[sMonster]["DataType"]
	local nSign = tSummerActivityShop_Stc[sMonster]["nSign"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	if Task_ChkStcValue(nEvent,nType,">=",tSummerActivityShop_Stc["Warn"]) then
		return
	end
	
	if not RewardTemplate_CheckSpace(tSummerActivityShop_Award["GetIce"][sMonster]) then
		return
	end
	
	local flat,tNum = Probabil_RandomAward(tSummerActivityShop_Award[sMonster],1)
	
	local nItemId = tNum[1]["tAward"][1]["Item"][1]
	if nItemId == 0 then
		return
	end
	
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_Reward(tSummerActivityShop_Award["GetIce"][sMonster])
	User_EffectAdd(tSummerActivityShop_Effect["Object"],tSummerActivityShop_Effect["MonsterDrop"])
	
	SummerActivityShop_ChkTask()
	
	--弹窗一次提示打怪获得奖励已达到上限
	if Task_ChkStcValue(nEvent,nType,">=",nSign) then
		Sys_MsgBox(tSummerActivityShop_Text["System"]["Most"][sMonster])
		Task_SetStatistic(nEvent,nType,tSummerActivityShop_Stc["Warn"],1)
		Task_SetStcTimestamp(nEvent,nType,0)
		return
	end
end

-- 使用普通礼盒
function SummerActivityShop_UseNormalPack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	-- 活动时间检测
	local nNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then 
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			-- 记录删除log
			local sLog = string.format(tSummerActivityShop_Log["BagTimeOut"],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
			
			User_TalkChannel2005(tSummerActivityShop_Text[2005]["OutTime"])
		end
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tSummerActivityShop_Reward,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tSummerActivityShop_Text[2005]["FullBag"])
		return
	end
	
	RewardTemplate_UseItem(tSummerActivityShop_Reward[nItemId])
end

-- 每日上线给任务
function SummerActivityShop_GetTask()
	-- 活动时间检测
	if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then 
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityShop_Count["Level"],tSummerActivityShop_Count["Metempsychosis"]) then
		return
	end
	
	-- 判断隔天
	local nTaskId = tSummerActivityShop_Count["TaskId"]
	if Task_ChkTaskDetail(nTaskId) then 
		if Task_DetailInterval(nTaskId,1,4) then
			Task_SetTaskDetailCompleteFlag(nTaskId,0)
			Task_DelTaskDetail(nTaskId)
		end
	end
	
	-- 每日第一次上线给任务
	if not Task_ChkTaskDetail(nTaskId) then 
		if not Task_AddTaskDetail(nTaskId) then
			return false
		end
		Task_SetTaskDetailData7(nTaskId,os.time())
	end
end

-- 暑期小活动任务检测
function SummerActivityShop_ChkTask()
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	-- 活动时间检测
	if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then 
		return
	end
	
	-- 检测是否接受任务
	local nTaskId = tSummerActivityShop_Count["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then 
		return
	end
	
	-- 检测任务是否完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
		return
	end
	
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	Task_SetTaskDetailData7(nTaskId,os.time())
	
	-- 完成任务处全服公告
	Sys_TalkBroadcast(string.format(tSummerActivityShop_Text["BroadCast"],sUserName))
	
	return
end

-- 超链接
function SummerActivityShop_Hyperlink(nNpcId)
	-- 活动时间检测
	if not Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) then 
		return
	end
	
	NpcPosition_PathFind(nNpcId)
end

-------------------------------模板部分------------------------
--小红
tNpcFace[4792] = 165
tNpcGossip[20625] = tNpcGossip[20625] or DefaultNpc:new{}
tNpcGossip[20625]["OptionHidden"] = 1
tNpcGossip[20625]["DialogueText"] = tSummerActivityShop_Text[20625]

--活动前
	tNpcGossip[20625]["Text1-1"] = {111,112,113,114,115,116}
	tNpcGossip[20625]["tOption1-1"] = {1}
	tNpcGossip[20625]["ChkFunc1-1"] = function()
		return CommonFunc_GetBeforeActivityTime(tSummerActivityShop_Count["ActivityTime"])
	end


--活动后
	tNpcGossip[20625]["Text1-2"] = {121,122,123}
	tNpcGossip[20625]["tOption1-2"] = {2}
	tNpcGossip[20625]["ChkFunc1-2"] = function()
		return CommonFunc_GetAfterActivityTime(tSummerActivityShop_Count["ActivityTime"])
	end

--活动中等级不足
tNpcGossip[20625]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310}
	tNpcGossip[20625]["tOption1-3"] = {3}
	tNpcGossip[20625]["ChkFunc1-3"] = function()
		return Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tSummerActivityShop_Count["Level"],tSummerActivityShop_Count["Metempsychosis"])
	end


--活动中等级满足
tNpcGossip[20625]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410}
	tNpcGossip[20625]["tOption1-4"] = {4}
	tNpcGossip[20625]["ChkFunc1-4"] = function()
		return Sys_ChkFullTime(tSummerActivityShop_Count["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tSummerActivityShop_Count["Level"],tSummerActivityShop_Count["Metempsychosis"])
	end
	tNpcGossip[20625]["OptionFunc4"] = "SummerActivityShop_ExchangeShop</N>20625"


--物品模板

--夏日雪糕
tItem[3303338] = tItem[3303338] or {}
	tItem[3303338]["Function"] = function(nItemId,sItemName)
		SummerActivityShop_UseIce(nItemId)
	end
	
--夏日雪糕棒
tItem[3303339] = tItem[3303339] or {}
	tItem[3303339]["Function"] = function(nItemId,sItemName)
		SummerActivityShop_UseStick(nItemId)
	end
	
--暑期天石礼包
tItem[3303340] = tItem[3303340] or {}
	tItem[3303340]["Function"] = function(nItemId,sItemName)
		SummerActivityShop_UseMonoEMoneyBag(nItemId)
	end
	
--暑期天石礼包（新写，时间延长3天）
tItem[3309020] = tItem[3309020] or {}
tItem[3309020]["Function"] = function(nItemId,sItemName)
	SummerActivityShop_UseMonoEMoneyBag(nItemId)
end

--热力沙滩外套包
tItem[3303341] = tItem[3303341] or {}
	tItem[3303341]["Function"] = function(nItemId,sItemName)
		SummerActivityShop_UseCoatBag(nItemId)
	end
	
--盛夏海风泳装外套包
tItem[3303342] = tItem[3303341]

-- 3天浑天金豚坐骑礼盒
tItem[3309021] = tItem[3309021] or {}
-- 30天婆罗神象坐骑礼盒
tItem[3309022] = tItem[3309021] or {}
tItem[3309021]["Function"] = function(nItemId,sItemName)
	SummerActivityShop_UseNormalPack(nItemId)
end

-- --怪物模板
-- --雪糕大盗
	-- tMonster[3315] = tMonster[3315] or {}
	-- tMonster[3315]["tFunction"] = tMonster[3315]["tFunction"] or {}
	-- table.insert(tMonster[3315]["tFunction"],SummerActivityShop_MonsterDrop)


-- --区域怪物掉落物品
-- local tSummerActivityShop_MonsterDrop = {}
	-- tSummerActivityShop_MonsterDrop["ActivityTime"] = tSummerActivityShop_Count["ActivityTime"]
	-- tSummerActivityShop_MonsterDrop["Function"] = SummerActivityShop_MonsterDrop
-- table.insert(tMonsterDrop_AreaLoad,tSummerActivityShop_MonsterDrop)


-- -- 上线触发
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,SummerActivityShop_GetTask)
