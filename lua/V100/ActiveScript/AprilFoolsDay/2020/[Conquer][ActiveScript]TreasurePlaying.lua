------------------------------------------------------------------------------------
--Name:		200227[简体征服][活动脚本]全球愚人节活动-藏宝图玩法(3.31-4.13)
--Creator: 	兰瑞妹
--Created:	2020/02/27
------------------------------------------------------------------------------------
-- 命名前缀
-- TreasurePlaying_

-- logid 12001894
-- emoneylog 1000 1617

-- #stc 掩码说明 
-- #stc(216,69) 记录寻宝积分
-- #stc(216,70) 记录使用藏宝图寻宝次数
-- #stc(216,79) 记录玩家当前随机的事件
-- #stc(216,80) 记录坐标索引
-- #stc(216,98) 记录各事件所代表意义 
-- #事件1 表示真假事件的npcID 事件2 表示记录怪物类型 ==1 失败 ==2 成功
-- #事件3 表示记录生成怪物类型 ==1 成功 ==2 失败 事件4 表示记录怪物ID
-- #stc(217,05) 记录当前的寻宝头衔
-- #stc(217,64) 记录玩家上次随机的事件

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tTreasurePlaying_Count = {}
	-- 活动时间
	tTreasurePlaying_Count["ActivityTime"] = tActivityTime["AprilFoolsDay"]["ActivityTime"]
	
	-- 等级
	tTreasurePlaying_Count["Level"] = 80
	tTreasurePlaying_Count["Meto"] = 0
	
	-- 随机概率
	tTreasurePlaying_Count["Min"] = 50
	tTreasurePlaying_Count["Max"] = 100
	-- 彩蛋随机概率
	tTreasurePlaying_Count["NewMin"] = 33
	tTreasurePlaying_Count["NewMax"] = 100
	
	-- 传送所需赠点
	tTreasurePlaying_Count["EmoneyMono"] = 27
	-- 寻宝积分
	tTreasurePlaying_Count["TreasureSuc"] = 50
	
	-- 藏宝图ID
	tTreasurePlaying_Count["TreasureMap"] = 3600244
	
	-- 寻宝范围
	tTreasurePlaying_Count["Range"] = 5
	
	-- 寻宝积分对应
	tTreasurePlaying_Count["TreasureScore"] = {}
	-- 1级寻宝者（200积分）
	-- 2级寻宝者（500积分）
	-- 3级寻宝者（1000积分）
	-- 4级寻宝者（3000积分）
	-- 5级寻宝者（5000积分）
	tTreasurePlaying_Count["TreasureScore"][1] = 200
	tTreasurePlaying_Count["TreasureScore"][2] = 500
	tTreasurePlaying_Count["TreasureScore"][3] = 1000
	tTreasurePlaying_Count["TreasureScore"][4] = 3000
	tTreasurePlaying_Count["TreasureScore"][5] = 5000
	
	-- 陷阱信息
	tTreasurePlaying_Count["TrapType"] = 2547
	tTreasurePlaying_Count["Lookface"] = 811
	tTreasurePlaying_Count["Look"] = 24050
	tTreasurePlaying_Count["Portal"] = {}
	-- 事件一切屏点
	tTreasurePlaying_Count["Portal"][1] = {}
	tTreasurePlaying_Count["Portal"][1]["PosX"] = 82
	tTreasurePlaying_Count["Portal"][1]["PosY"] = 58
	-- 事件二切屏点
	tTreasurePlaying_Count["Portal"][2] = {}
	tTreasurePlaying_Count["Portal"][2]["PosX"] = 58
	tTreasurePlaying_Count["Portal"][2]["PosY"] = 77
	-- 事件三切屏点
	tTreasurePlaying_Count["Portal"][3] = {}
	tTreasurePlaying_Count["Portal"][3]["PosX"] = 63
	tTreasurePlaying_Count["Portal"][3]["PosY"] = 82
	-- 事件四切屏点
	tTreasurePlaying_Count["Portal"][4] = {}
	tTreasurePlaying_Count["Portal"][4]["PosX"] = 59
	tTreasurePlaying_Count["Portal"][4]["PosY"] = 24
	
	-- 事件对应的副本ID
	tTreasurePlaying_Count["Instancetype"] = {397,398,399,400}
	
	-- 事件1宝箱ID
	tTreasurePlaying_Count["OneNpcID"] = 26021
	tTreasurePlaying_Count["OneNewNpcID"] = 26062
	-- 事件3宝箱ID
	tTreasurePlaying_Count["ThreeNpcID"] = 26026
	
	-- 传送需要的消耗品
	tTreasurePlaying_Count["Cost"] = {}
	-- 修行值
	tTreasurePlaying_Count["Cost"][1] = 100
	-- 金币
	tTreasurePlaying_Count["Cost"][2] = 100000
	
	-- 藏宝地图
	tTreasurePlaying_Count["TreasureMapID"] = {10794,10795,10796,10797}
	
	-- 寻宝次数
	tTreasurePlaying_Count["TreasureTime"] = 15
	
	-- 眩晕状态
	tTreasurePlaying_Count[1] = {}
	tTreasurePlaying_Count[1]["Status"] = 55
	tTreasurePlaying_Count[1]["Power"] = 0
	tTreasurePlaying_Count[1]["Secs"] = 2
	tTreasurePlaying_Count[1]["Times"] = 0
	tTreasurePlaying_Count[1]["RemainTime"] = 2
	tTreasurePlaying_Count[1]["EndTime"] = 1
	
	-- 事件3，随机怪物
	tTreasurePlaying_Count["RefreshId"] = {1,2,3,4,5,6}
	-- 随机对白
	tTreasurePlaying_Count["LanguageId"] = {1,2,3,4}
	
-- Log表
local tTreasurePlaying_Log = {}
	-- 过期删除
	tTreasurePlaying_Log["OverDue"] = "0,0,%d,%d,12001894,3[1],0,0"
	-- 使用藏宝图传送
	tTreasurePlaying_Log["NormalEmoneylog"] = "0,27,0,0,12001894,3[2],0,0"
	tTreasurePlaying_Log["Emoneylog"] = "1000	1617"
	-- 完成寻宝离开删除藏宝图
	tTreasurePlaying_Log["UseTreasureMap"] = "0,0,3600244,1,12001894,3[3],%d,0"
	-- 完成事件记录log
	tTreasurePlaying_Log["FinishIncident"] = "0,0,0,0,12001894,3[4],%d,0"
	-- 头衔升级
	tTreasurePlaying_Log["UpTitle"] = "0,0,0,0,12001894,3[5],%d,0"
	-- 记录消耗的
	tTreasurePlaying_Log["Cost"] = {}
	tTreasurePlaying_Log["Cost"][1] = "0,0,6,100,12001894,3[2],0,0"
	tTreasurePlaying_Log["Cost"][2] = "0,0,1,100000,12001894,3[2],0,0"
	
-- 打开彩蛋个数
local tTreasurePlaying_OpenNum = {}
-- 二次确认屏蔽
local tTreasurePlaying_SureMark = {}
-- 进入后随机语种
local tTreasurePlaying_TwoRandomLan = {}
local tTreasurePlaying_ThreeRandomLan = {}

-- stc掩码
local tTreasurePlaying_Stc = {}
	-- stc(216,69) 寻宝积分
	tTreasurePlaying_Stc[1] = {}
	tTreasurePlaying_Stc[1]["EventType"] = 216
	tTreasurePlaying_Stc[1]["DataType"] = 69
	-- stc(216,70) 记录寻宝成功次数
	tTreasurePlaying_Stc[2] = {}
	tTreasurePlaying_Stc[2]["EventType"] = 216
	tTreasurePlaying_Stc[2]["DataType"] = 70
	-- stc(216,79) 记录玩家当前随机的事件
	tTreasurePlaying_Stc[3] = {}
	tTreasurePlaying_Stc[3]["EventType"] = 216
	tTreasurePlaying_Stc[3]["DataType"] = 79
	-- stc(216,80) 记录坐标索引
	tTreasurePlaying_Stc[4] = {}
	tTreasurePlaying_Stc[4]["EventType"] = 216
	tTreasurePlaying_Stc[4]["DataType"] = 80
	-- stc(216,98) 记录各事件所代表意义
	tTreasurePlaying_Stc[5] = {}
	tTreasurePlaying_Stc[5]["EventType"] = 216
	tTreasurePlaying_Stc[5]["DataType"] = 98
	-- stc(217,05) 记录当前的寻宝头衔
	tTreasurePlaying_Stc[6] = {}
	tTreasurePlaying_Stc[6]["EventType"] = 217
	tTreasurePlaying_Stc[6]["DataType"] = 05
	-- #stc(217,64) 记录玩家上次随机的事件
	tTreasurePlaying_Stc[7] = {}
	tTreasurePlaying_Stc[7]["EventType"] = 217
	tTreasurePlaying_Stc[7]["DataType"] = 64
	
-- 播放光效
local tTreasurePlaying_Effect = {}
	-- 寻宝积分
	tTreasurePlaying_Effect[1] = {}
	tTreasurePlaying_Effect[1]["SzObj"] = "self"
	tTreasurePlaying_Effect[1]["Effect"] = "task051"
	tTreasurePlaying_Effect[2] = {}
	tTreasurePlaying_Effect[2]["SzObj"] = "self"
	tTreasurePlaying_Effect[2]["Effect"] = "task052"
	-- 头衔
	tTreasurePlaying_Effect[3] = {}
	tTreasurePlaying_Effect[3]["SzObj"] = "self"
	tTreasurePlaying_Effect[3]["Effect"] = "task072"
	-- 进入地图光效
	tTreasurePlaying_Effect[4] = {}
	tTreasurePlaying_Effect[4]["SzObj"] = "self"
	tTreasurePlaying_Effect[4]["Effect"] = "task042"
	tTreasurePlaying_Effect[5] = {}
	tTreasurePlaying_Effect[5]["SzObj"] = "self"
	tTreasurePlaying_Effect[5]["Effect"] = "task043"
	tTreasurePlaying_Effect[6] = {}
	tTreasurePlaying_Effect[6]["SzObj"] = "self"
	tTreasurePlaying_Effect[6]["Effect"] = "task044"
	tTreasurePlaying_Effect[7] = {}
	tTreasurePlaying_Effect[7]["SzObj"] = "self"
	tTreasurePlaying_Effect[7]["Effect"] = "task045"
	-- 挖陷阱
	tTreasurePlaying_Effect[8] = {}
	tTreasurePlaying_Effect[8]["SzObj"] = "self"
	tTreasurePlaying_Effect[8]["Effect"] = "gam_refuse"
	
-- 离开地图坐标
local tTreasurePlaying_LeaveMap = {}
	-- 普通服
	tTreasurePlaying_LeaveMap[1] = {}
	tTreasurePlaying_LeaveMap[1]["MapId"] = 1002
	tTreasurePlaying_LeaveMap[1]["PosX"] = 374
	tTreasurePlaying_LeaveMap[1]["PosY"] = 449
	-- 激情服
	tTreasurePlaying_LeaveMap[2] = {}
	tTreasurePlaying_LeaveMap[2]["MapId"] = 1036
	tTreasurePlaying_LeaveMap[2]["PosX"] = 185
	tTreasurePlaying_LeaveMap[2]["PosY"] = 224

-- 随机对应的坐标
local tTreasurePlaying_PosInformation = {}	
	tTreasurePlaying_PosInformation[1]={}
	tTreasurePlaying_PosInformation[1][1] = {}
	tTreasurePlaying_PosInformation[1][2] = {}
	tTreasurePlaying_PosInformation[1][3] = {}
	tTreasurePlaying_PosInformation[1][4] = {}
	-- 双龙城	307	369
	-- 双龙城	299	455
	-- 双龙城	256	426
	-- 双龙城	282	413
	-- 双龙城	412	380
	tTreasurePlaying_PosInformation[1][1][1] = {1002,307,369}
	tTreasurePlaying_PosInformation[1][1][2] = {1002,304,451}
	tTreasurePlaying_PosInformation[1][1][3] = {1002,257,427}
	tTreasurePlaying_PosInformation[1][1][4] = {1002,282,413}
	tTreasurePlaying_PosInformation[1][1][5] = {1002,412,380}
	-- 清风原	548	255
	-- 清风原	575	520
	-- 清风原	272	686
	-- 清风原	501	663
	-- 清风原	112	519
	tTreasurePlaying_PosInformation[1][2][1] = {1002,548,255}
	tTreasurePlaying_PosInformation[1][2][2] = {1002,568,515}
	tTreasurePlaying_PosInformation[1][2][3] = {1002,272,686}
	tTreasurePlaying_PosInformation[1][2][4] = {1002,501,663}
	tTreasurePlaying_PosInformation[1][2][5] = {1002,112,519}
	-- 枫溪林	97	396
	-- 枫溪林	339	535
	-- 枫溪林	335	58
	-- 枫溪林	766	452
	-- 枫溪林	246	295
	tTreasurePlaying_PosInformation[1][3][1] = {1011,97,396}
	tTreasurePlaying_PosInformation[1][3][2] = {1011,339,535}
	tTreasurePlaying_PosInformation[1][3][3] = {1011,335,58}
	tTreasurePlaying_PosInformation[1][3][4] = {1011,766,452}
	tTreasurePlaying_PosInformation[1][3][5] = {1011,246,295}
	-- 云门关	942	647
	-- 云门关	566	467
	-- 云门关	560	360
	-- 云门关	331	472
	-- 云门关	357	107
	tTreasurePlaying_PosInformation[1][4][1] = {1000,942,647}
	tTreasurePlaying_PosInformation[1][4][2] = {1000,566,467}
	tTreasurePlaying_PosInformation[1][4][3] = {1000,560,360}
	tTreasurePlaying_PosInformation[1][4][4] = {1000,331,472}
	tTreasurePlaying_PosInformation[1][4][5] = {1000,357,107}
	-- 芦花荡	920	739
	-- 芦花荡	540	633
	-- 芦花荡	302	378
	-- 芦花荡	323	364
	-- 芦花荡	350	389
	tTreasurePlaying_PosInformation[1][4][6] = {1015,920,739}
	tTreasurePlaying_PosInformation[1][4][7] = {1015,540,633}
	tTreasurePlaying_PosInformation[1][4][8] = {1015,302,378}
	tTreasurePlaying_PosInformation[1][4][9] = {1015,323,364}
	tTreasurePlaying_PosInformation[1][4][10] = {1015,350,389}
	
	-- 激情服
	tTreasurePlaying_PosInformation[2] = {}
	tTreasurePlaying_PosInformation[2][1] = {}
	tTreasurePlaying_PosInformation[2][2] = {}
	tTreasurePlaying_PosInformation[2][3] = {}
	tTreasurePlaying_PosInformation[2][4] = {}
	-- 240 	213 
	-- 272 	254 
	-- 295 	221 
	-- 281 	187 
	-- 281 	136 
	-- 441 	231 
	-- 166 	335 
	-- 509 	362 
	-- 570 	507 
	-- 497 	602 
	tTreasurePlaying_PosInformation[2][1][1] = {10364,238,214}
	tTreasurePlaying_PosInformation[2][1][2] = {10364,272,254}
	tTreasurePlaying_PosInformation[2][1][3] = {10364,296,221}
	tTreasurePlaying_PosInformation[2][1][4] = {10364,281,187}
	tTreasurePlaying_PosInformation[2][1][5] = {10364,281,136}
	tTreasurePlaying_PosInformation[2][2][1] = {10364,441,231}
	tTreasurePlaying_PosInformation[2][2][2] = {10364,166,335}
	tTreasurePlaying_PosInformation[2][2][3] = {10364,509,362}
	tTreasurePlaying_PosInformation[2][2][4] = {10364,570,507}
	tTreasurePlaying_PosInformation[2][2][5] = {10364,497,602}
	-- 枫溪林	97	396
	-- 枫溪林	339	535
	-- 枫溪林	335	58
	-- 枫溪林	766	452
	-- 枫溪林	246	295
	tTreasurePlaying_PosInformation[2][3][1] = {10365,97,396}
	tTreasurePlaying_PosInformation[2][3][2] = {10365,339,535}
	tTreasurePlaying_PosInformation[2][3][3] = {10365,335,58}
	tTreasurePlaying_PosInformation[2][3][4] = {10365,766,452}
	tTreasurePlaying_PosInformation[2][3][5] = {10365,246,295}
	-- 云门关	942	647
	-- 云门关	566	467
	-- 云门关	560	360
	-- 云门关	331	472
	-- 云门关	357	107
	tTreasurePlaying_PosInformation[2][4][1] = {10367,942,647}
	tTreasurePlaying_PosInformation[2][4][2] = {10367,566,467}
	tTreasurePlaying_PosInformation[2][4][3] = {10367,560,360}
	tTreasurePlaying_PosInformation[2][4][4] = {10367,331,472}
	tTreasurePlaying_PosInformation[2][4][5] = {10367,357,107}
	-- 芦花荡	920	739
	-- 芦花荡	540	633
	-- 芦花荡	302	378
	-- 芦花荡	323	364
	-- 芦花荡	350	389
	tTreasurePlaying_PosInformation[2][4][6] = {10368,920,739}
	tTreasurePlaying_PosInformation[2][4][7] = {10368,540,633}
	tTreasurePlaying_PosInformation[2][4][8] = {10368,302,378}
	tTreasurePlaying_PosInformation[2][4][9] = {10368,323,364}
	tTreasurePlaying_PosInformation[2][4][10] = {10368,350,389}
	
-- 传送地图
local tTreasurePlaying_TransMap = {}
	-- 普通服
	tTreasurePlaying_TransMap[1] = {}
	tTreasurePlaying_TransMap[1][1] = 1002
	tTreasurePlaying_TransMap[1][2] = 1011
	tTreasurePlaying_TransMap[1][3] = 1000
	tTreasurePlaying_TransMap[1][4] = 1015
	-- 激情服
	tTreasurePlaying_TransMap[2] = {}
	tTreasurePlaying_TransMap[2][1] = 10364
	tTreasurePlaying_TransMap[2][2] = 10365
	tTreasurePlaying_TransMap[2][3] = 10367
	tTreasurePlaying_TransMap[2][4] = 10368
	tTreasurePlaying_TransMap[2][5] = 1036

-- 刷新怪物
local tTreasurePlaying_RefreshMonster = {}
	-- 事件2
	tTreasurePlaying_RefreshMonster[2] = {}
	tTreasurePlaying_RefreshMonster[2]["Generator"] = 30633
	tTreasurePlaying_RefreshMonster[2]["MonsterId"] = 6274
	tTreasurePlaying_RefreshMonster[2]["Time"] = 3600
	tTreasurePlaying_RefreshMonster[2]["Pos"] = {}
	tTreasurePlaying_RefreshMonster[2]["Pos"][26023] = {46,53}
	tTreasurePlaying_RefreshMonster[2]["Pos"][26024] = {55,53}
	tTreasurePlaying_RefreshMonster[2]["Pos"][26025] = {64,53}
	-- 事件3
	tTreasurePlaying_RefreshMonster[3] = {}
	tTreasurePlaying_RefreshMonster[3]["Generator"] = 30634
	tTreasurePlaying_RefreshMonster[3]["MonsterId"] = 6287
	tTreasurePlaying_RefreshMonster[3]["Time"] = 3600
	tTreasurePlaying_RefreshMonster[3]["Pos"] = {}
	tTreasurePlaying_RefreshMonster[3]["Pos"][1] = {60,55}
	tTreasurePlaying_RefreshMonster[3]["Pos"][2] = {64,65}
	-- 事件4
	tTreasurePlaying_RefreshMonster[4] = {}
	tTreasurePlaying_RefreshMonster[4]["Generator"] = 30635
	tTreasurePlaying_RefreshMonster[4]["Time"] = 3600
	tTreasurePlaying_RefreshMonster[4]["Pos"] = {}
	tTreasurePlaying_RefreshMonster[4]["Pos"][1] = {41,40}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"] = {}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][1] = {6288,10}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][2] = {6289,10}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][3] = {6290,10}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][4] = {6291,10}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][5] = {6292,10}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][6] = {6293,5}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][7] = {6294,5}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][8] = {6295,5}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][9] = {6296,1}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][10] = {6297,1}
	tTreasurePlaying_RefreshMonster[4]["MonsterData"][11] = {6298,1}
	
-- 刷新npc
local tTreasurePlaying_RefreshNpc = {}
	-- Lookface npc外形
	-- MonsterId 对应同名字的大小怪物
	tTreasurePlaying_RefreshNpc[1] = {}
	tTreasurePlaying_RefreshNpc[1]["Lookface"] = 53880
	tTreasurePlaying_RefreshNpc[1]["SmallLookface"] = 65500
	tTreasurePlaying_RefreshNpc[1]["ActiionId"] = 94492073
	tTreasurePlaying_RefreshNpc[1]["MonsterId"] = {6275,6281,4044}
	tTreasurePlaying_RefreshNpc[2] = {}
	tTreasurePlaying_RefreshNpc[2]["Lookface"] = 53890
	tTreasurePlaying_RefreshNpc[2]["SmallLookface"] = 65510
	tTreasurePlaying_RefreshNpc[2]["ActiionId"] = 94492074
	tTreasurePlaying_RefreshNpc[2]["MonsterId"] = {6276,6282,4045}
	tTreasurePlaying_RefreshNpc[3] = {}
	tTreasurePlaying_RefreshNpc[3]["Lookface"] = 65460
	tTreasurePlaying_RefreshNpc[3]["SmallLookface"] = 65520
	tTreasurePlaying_RefreshNpc[3]["ActiionId"] = 94492075
	tTreasurePlaying_RefreshNpc[3]["MonsterId"] = {6277,6283,4046}
	tTreasurePlaying_RefreshNpc[4] = {}
	tTreasurePlaying_RefreshNpc[4]["Lookface"] = 65470
	tTreasurePlaying_RefreshNpc[4]["SmallLookface"] = 63700
	tTreasurePlaying_RefreshNpc[4]["ActiionId"] = 94492076
	tTreasurePlaying_RefreshNpc[4]["MonsterId"] = {6278,6284,4047}
	tTreasurePlaying_RefreshNpc[5] = {}
	tTreasurePlaying_RefreshNpc[5]["Lookface"] = 65480
	tTreasurePlaying_RefreshNpc[5]["SmallLookface"] = 63710
	tTreasurePlaying_RefreshNpc[5]["ActiionId"] = 94492077
	tTreasurePlaying_RefreshNpc[5]["MonsterId"] = {6279,6285,4048}
	tTreasurePlaying_RefreshNpc[6] = {}
	tTreasurePlaying_RefreshNpc[6]["Lookface"] = 65490
	tTreasurePlaying_RefreshNpc[6]["SmallLookface"] = 63720
	tTreasurePlaying_RefreshNpc[6]["ActiionId"] = 94492078
	tTreasurePlaying_RefreshNpc[6]["MonsterId"] = {6280,6286,4049}
	-- 特殊机灵鬼
	tTreasurePlaying_RefreshNpc[7] = {}
	tTreasurePlaying_RefreshNpc[7]["Lookface"] = 63740
	tTreasurePlaying_RefreshNpc[7]["SmallLookface"] = 63730
	tTreasurePlaying_RefreshNpc[7]["ActiionId"] = 94492079
	tTreasurePlaying_RefreshNpc[7]["MonsterId"] = {6287}

local tTreasurePlaying_Random = {}
	tTreasurePlaying_Random[1] = {}
	-- ===1级寻宝者
	-- ===（200积分）
	-- ===索引: tTreasurePlaying_Random[1]
	-- ===
	tTreasurePlaying_Random[1]["ItemChanceSum"] = 10000
	-- 捣蛋鬼挖宝事件1 - 80%
	tTreasurePlaying_Random[1][1] = {}
	tTreasurePlaying_Random[1][1]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[1][1]["ItemChance"] = 8000
	tTreasurePlaying_Random[1][1]["Incident"] = 1
	-- 捣蛋鬼挖宝事件2 - 20%
	tTreasurePlaying_Random[1][2] = {}
	tTreasurePlaying_Random[1][2]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[1][2]["ItemChance"] = 2000
	tTreasurePlaying_Random[1][2]["Incident"] = 2

	tTreasurePlaying_Random[2] = {}
	-- ===2级寻宝者
	-- ===（500积分）
	-- ===索引: tTreasurePlaying_Random[2]
	-- ===
	tTreasurePlaying_Random[2]["ItemChanceSum"] = 10000
	-- 捣蛋鬼挖宝事件1 - 50%
	tTreasurePlaying_Random[2][1] = {}
	tTreasurePlaying_Random[2][1]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[2][1]["ItemChance"] = 5000
	tTreasurePlaying_Random[2][1]["Incident"] = 1
	-- 捣蛋鬼挖宝事件2 - 50%
	tTreasurePlaying_Random[2][2] = {}
	tTreasurePlaying_Random[2][2]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[2][2]["ItemChance"] = 5000
	tTreasurePlaying_Random[2][2]["Incident"] = 2


	tTreasurePlaying_Random[3] = {}
	-- ===3级寻宝者
	-- ===（1000积分）
	-- ===索引: tTreasurePlaying_Random[3]
	-- ===
	tTreasurePlaying_Random[3]["ItemChanceSum"] = 10000
	-- 捣蛋鬼挖宝事件1 - 25%
	tTreasurePlaying_Random[3][1] = {}
	tTreasurePlaying_Random[3][1]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[3][1]["ItemChance"] = 2500
	tTreasurePlaying_Random[3][1]["Incident"] = 1
	-- 捣蛋鬼挖宝事件2 - 35%
	tTreasurePlaying_Random[3][2] = {}
	tTreasurePlaying_Random[3][2]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[3][2]["ItemChance"] = 3500
	tTreasurePlaying_Random[3][2]["Incident"] = 2
	-- 捣蛋鬼挖宝事件3 - 40%
	tTreasurePlaying_Random[3][3] = {}
	tTreasurePlaying_Random[3][3]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[3][3]["ItemChance"] = 4000
	tTreasurePlaying_Random[3][3]["Incident"] = 3


	tTreasurePlaying_Random[4] = {}
	-- ===4级寻宝者
	-- ===（3000积分）
	-- ===索引: tTreasurePlaying_Random[4]
	-- ===
	tTreasurePlaying_Random[4]["ItemChanceSum"] = 10000
	-- 捣蛋鬼挖宝事件1 - 15%
	tTreasurePlaying_Random[4][1] = {}
	tTreasurePlaying_Random[4][1]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[4][1]["ItemChance"] = 1500
	tTreasurePlaying_Random[4][1]["Incident"] = 1
	-- 捣蛋鬼挖宝事件2 - 20%
	tTreasurePlaying_Random[4][2] = {}
	tTreasurePlaying_Random[4][2]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[4][2]["ItemChance"] = 2000
	tTreasurePlaying_Random[4][2]["Incident"] = 2
	-- 捣蛋鬼挖宝事件3 - 30%
	tTreasurePlaying_Random[4][3] = {}
	tTreasurePlaying_Random[4][3]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[4][3]["ItemChance"] = 3000
	tTreasurePlaying_Random[4][3]["Incident"] = 3
	-- 捣蛋鬼挖宝事件4 - 35%
	tTreasurePlaying_Random[4][4] = {}
	tTreasurePlaying_Random[4][4]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[4][4]["ItemChance"] = 3500
	tTreasurePlaying_Random[4][4]["Incident"] = 4
	
	
	tTreasurePlaying_Random[5] = {}
	-- ===5级寻宝者
	-- ===（5000积分）
	-- ===索引: tTreasurePlaying_Random[5]
	-- ===
	tTreasurePlaying_Random[5]["ItemChanceSum"] = 10000
	-- 捣蛋鬼挖宝事件1 - 30%
	tTreasurePlaying_Random[5][1] = {}
	tTreasurePlaying_Random[5][1]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[5][1]["ItemChance"] = 3000
	tTreasurePlaying_Random[5][1]["Incident"] = 2
	-- 捣蛋鬼挖宝事件2 - 35%
	tTreasurePlaying_Random[5][2] = {}
	tTreasurePlaying_Random[5][2]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[5][2]["ItemChance"] = 3500
	tTreasurePlaying_Random[5][2]["Incident"] = 3
	-- 捣蛋鬼挖宝事件3 - 35%
	tTreasurePlaying_Random[5][3] = {}
	tTreasurePlaying_Random[5][3]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[5][3]["ItemChance"] = 3500
	tTreasurePlaying_Random[5][3]["Incident"] = 4
	
	-- 随机进洞成功率
	tTreasurePlaying_Random[6] = {}
	tTreasurePlaying_Random[6]["ItemChanceSum"] = 10000
	-- 30%，进洞
	tTreasurePlaying_Random[6][1] = {}
	tTreasurePlaying_Random[6][1]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[6][1]["ItemChance"] = 3000
	tTreasurePlaying_Random[6][1]["Type"] = 1
	-- 40%，不进洞，直接获得黄阶宝藏
	tTreasurePlaying_Random[6][2] = {}
	tTreasurePlaying_Random[6][2]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[6][2]["ItemChance"] = 4000
	tTreasurePlaying_Random[6][2]["Type"] = 2
	-- 30%，不进洞，直接获得凡阶宝藏
	tTreasurePlaying_Random[6][3] = {}
	tTreasurePlaying_Random[6][3]["RandomItemChanceType"] = 2
	tTreasurePlaying_Random[6][3]["ItemChance"] = 3000
	tTreasurePlaying_Random[6][3]["Type"] = 3

--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function TreasurePlaying_GetStcValue(nTreasurePlaying_Index,nTreasurePlaying_UserId)
	local nTreasurePlaying_Event = tTreasurePlaying_Stc[nTreasurePlaying_Index]["EventType"]
	local nTreasurePlaying_Type = tTreasurePlaying_Stc[nTreasurePlaying_Index]["DataType"]
	
	local nTreasurePlaying_Data = Get_UserStatisticValue(nTreasurePlaying_Event,nTreasurePlaying_Type,nTreasurePlaying_UserId)
	return nTreasurePlaying_Data
end

--设置掩码值
function TreasurePlaying_SetStcValue(nTreasurePlaying_Index,nTreasurePlaying_Data,nTreasurePlaying_UserId)
	local nTreasurePlaying_Event = tTreasurePlaying_Stc[nTreasurePlaying_Index]["EventType"]
	local nTreasurePlaying_Type = tTreasurePlaying_Stc[nTreasurePlaying_Index]["DataType"]
	
	Task_SetStatistic(nTreasurePlaying_Event,nTreasurePlaying_Type,nTreasurePlaying_Data,1,nTreasurePlaying_UserId)
	Task_SetStcTimestamp(nTreasurePlaying_Event,nTreasurePlaying_Type,0,nTreasurePlaying_UserId)
end

-- 增加掩码值
function TreasurePlaying_AddStcValue(nTreasurePlaying_Index,nTreasurePlaying_Data,nTreasurePlaying_UserId)
	local nTreasurePlaying_Event = tTreasurePlaying_Stc[nTreasurePlaying_Index]["EventType"]
	local nTreasurePlaying_Type = tTreasurePlaying_Stc[nTreasurePlaying_Index]["DataType"]
	
	Task_AddStatistic(nTreasurePlaying_Event,nTreasurePlaying_Type,nTreasurePlaying_Data,1,nTreasurePlaying_UserId)
	Task_SetStcTimestamp(nTreasurePlaying_Event,nTreasurePlaying_Type,0,nTreasurePlaying_UserId)
end

-- 离开副本
function TreasurePlaying_LeaveInstance()
	local nTreasurePlaying_Index = 1
	if SpecialServer_ChkNoGiftServer() then
		nTreasurePlaying_Index = 2
	end
	local nTreasurePlaying_MapId = tTreasurePlaying_LeaveMap[nTreasurePlaying_Index]["MapId"]
	local nTreasurePlaying_PosX = tTreasurePlaying_LeaveMap[nTreasurePlaying_Index]["PosX"]
	local nTreasurePlaying_PosY = tTreasurePlaying_LeaveMap[nTreasurePlaying_Index]["PosY"]
	User_UserRandBoundTrans(nTreasurePlaying_MapId,nTreasurePlaying_PosX,nTreasurePlaying_PosY,2,2)
	
	-- 清理数据
	TreasurePlaying_SetStcValue(5,0)
	local nTreasurePlaying_UserId = Get_UserId()
	tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] = 0
	tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId] = nil
	tTreasurePlaying_ThreeRandomLan[nTreasurePlaying_UserId] = nil
end

-- 藏宝事件触发 获取寻宝头衔
function TreasurePlaying_GetTitle(nTreasurePlaying_Score)
	local nTreasurePlaying_Title = 0
	
	-- 寻宝积分
	if nTreasurePlaying_Score <= tTreasurePlaying_Count["TreasureScore"][1] then
		nTreasurePlaying_Title = 1
	elseif nTreasurePlaying_Score > tTreasurePlaying_Count["TreasureScore"][5] then
		nTreasurePlaying_Title = 5
	else
		for i=1,4 do
			if nTreasurePlaying_Score > tTreasurePlaying_Count["TreasureScore"][i] and nTreasurePlaying_Score <= tTreasurePlaying_Count["TreasureScore"][i+1] then
				nTreasurePlaying_Title = i+1
				break
			end
		end
	end
	
	return nTreasurePlaying_Title
end

-- 头衔显示
function TreasurePlaying_GetOtherTitle(nTreasurePlaying_Score)
	local nTreasurePlaying_Title = 0
	
	-- 寻宝积分
	if nTreasurePlaying_Score <= tTreasurePlaying_Count["TreasureScore"][1] then
		nTreasurePlaying_Title = 1
	elseif nTreasurePlaying_Score > tTreasurePlaying_Count["TreasureScore"][5] then
		nTreasurePlaying_Title = 6
	else
		for i=1,4 do
			if nTreasurePlaying_Score > tTreasurePlaying_Count["TreasureScore"][i] and nTreasurePlaying_Score <= tTreasurePlaying_Count["TreasureScore"][i+1] then
				nTreasurePlaying_Title = i+1
				break
			end
		end
	end
	
	return nTreasurePlaying_Title
end

-- 藏宝事件触发 获取事件
function TreasurePlaying_GetIncident()
	local nTreasurePlaying_Score = TreasurePlaying_GetStcValue(1)
	local nTreasurePlaying_RandonIndex = TreasurePlaying_GetTitle(nTreasurePlaying_Score)
	
	-- 随机事件
	local nTreasurePlaying_Incident = 0
	local bTreasurePlaying_Flag,tIncidentRandom = Probabil_RandomAward(tTreasurePlaying_Random,nTreasurePlaying_RandonIndex)
	nTreasurePlaying_Incident = tIncidentRandom[1]["tAward"][1]["Incident"]
	return nTreasurePlaying_Incident
end

-- 藏宝事件触发 获取事件不和上次事件相同
function TreasurePlaying_GetNewIncident()
	local nTreasurePlaying_Score = TreasurePlaying_GetStcValue(1)
	local nTreasurePlaying_RandonIndex = TreasurePlaying_GetTitle(nTreasurePlaying_Score)
	
	-- 随机事件
	local nTreasurePlaying_Incident = 0
	local nTreasurePlaying_OldIncident = TreasurePlaying_GetStcValue(7)
	local tTreasurePlaying_RealRandom = CommonFunc_Copy(tTreasurePlaying_Random)
	local tTreasurePlaying_RandonIndex = tTreasurePlaying_RealRandom[nTreasurePlaying_RandonIndex]
	if nTreasurePlaying_OldIncident ~= 0 then
		local nTreasurePlaying_Length = #tTreasurePlaying_RandonIndex
		for i=1,nTreasurePlaying_Length do
			if nTreasurePlaying_OldIncident == tTreasurePlaying_RandonIndex[i]["Incident"] then
				tTreasurePlaying_RandonIndex["ItemChanceSum"] = tTreasurePlaying_RandonIndex["ItemChanceSum"] - tTreasurePlaying_RandonIndex[i]["ItemChance"]
				tTreasurePlaying_RandonIndex[i]["ItemChance"] = 0
				break
			end
		end
	end
	local bTreasurePlaying_Flag,tIncidentRandom = Probabil_RandomAward(tTreasurePlaying_RealRandom,nTreasurePlaying_RandonIndex)
	nTreasurePlaying_Incident = tIncidentRandom[1]["tAward"][1]["Incident"]
	return nTreasurePlaying_Incident
end

-- 非当前寻宝地点
function TreasurePlaying_ChkPostion(nTreasurePlaying_Incident)
	-- 判断服务器
	local nTreasurePlaying_Server = 1
	if SpecialServer_ChkNoGiftServer() then
		nTreasurePlaying_Server = 2
	end
	
	local nTreasurePlaying_InformationIndex = TreasurePlaying_GetStcValue(4)
	
	local tTreasurePlaying_MapInfor = tTreasurePlaying_PosInformation[nTreasurePlaying_Server][nTreasurePlaying_Incident][nTreasurePlaying_InformationIndex]
	local nTreasurePlaying_MapId = tTreasurePlaying_MapInfor[1]
	local nTreasurePlaying_Posx = tTreasurePlaying_MapInfor[2]
	local nTreasurePlaying_Posy = tTreasurePlaying_MapInfor[3]
	
	-- 非当前地图
	local nTreasurePlaying_UserMapId = Get_UserMapId()
	if nTreasurePlaying_UserMapId ~= nTreasurePlaying_MapId then
		return false
	end
	
	-- 非当前坐标
	local nTreasurePlaying_Range = tTreasurePlaying_Count["Range"]
	local nTreasurePlaying_UserCellX = Get_UserPositionX()
	local nTreasurePlaying_UserCellY = Get_UserPositionY()
	if nTreasurePlaying_UserCellX < nTreasurePlaying_Posx-nTreasurePlaying_Range or nTreasurePlaying_UserCellX > nTreasurePlaying_Posx+nTreasurePlaying_Range then
		return false
	end
	if nTreasurePlaying_UserCellY < nTreasurePlaying_Posy-nTreasurePlaying_Range or nTreasurePlaying_UserCellY > nTreasurePlaying_Posy+nTreasurePlaying_Range then
		return false
	end
	
	return true
end

-- 判断是否可寻路和传送
function TreasurePlaying_ChkMap()
	-- 判断服务器
	local nTreasurePlaying_Server = 1
	if SpecialServer_ChkNoGiftServer() then
		nTreasurePlaying_Server = 2
	end
	
	local nTreasurePlaying_UserMapId = Get_UserMapId()
	local bTreasurePlaying_HaveMap = false
	for i,v in pairs(tTreasurePlaying_TransMap[nTreasurePlaying_Server]) do
		if nTreasurePlaying_UserMapId == v then
			bTreasurePlaying_HaveMap = true
			break
		end
	end
	
	if not bTreasurePlaying_HaveMap then
		return false
	end
	
	return true
end


-- 判断是否可使用藏宝图
function TreasurePlaying_ChkUseItemMap()
	local nTreasurePlaying_UserMapId = Get_UserMapId()
	local nTreasurePlaying_MapDoc = Get_MapDoc(nTreasurePlaying_UserMapId)
	local bTreasurePlaying_UseMap = true
	for i,v in pairs(tTreasurePlaying_Count["TreasureMapID"]) do
		if nTreasurePlaying_MapDoc == v then
			bTreasurePlaying_UseMap = false
			break
		end
	end
	
	if not bTreasurePlaying_UseMap then
		return false
	end
	
	return true
end

-- 播放光效
function TreasurePlaying_Effect(nTreasurePlaying_Index,nTreasurePlaying_UserId)
	local nTreasurePlaying_NowUserId = nTreasurePlaying_UserId or Get_UserId()
	local sTreasurePlaying_SzObj = tTreasurePlaying_Effect[nTreasurePlaying_Index]["SzObj"]
	local sTreasurePlaying_Effect = tTreasurePlaying_Effect[nTreasurePlaying_Index]["Effect"]
	User_EffectAdd(sTreasurePlaying_SzObj,sTreasurePlaying_Effect,nTreasurePlaying_NowUserId)
end

-- 检测积分播放光效
function TreasurePlaying_ChkAddEffect(nTreasurePlaying_Type)
	local nTreasurePlaying_Score = TreasurePlaying_GetStcValue(1)
	-- 寻宝积分光效
	-- TreasurePlaying_Effect(1)
	if nTreasurePlaying_Type ~= nil then
		TreasurePlaying_Effect(1)
	else
		TreasurePlaying_Effect(2)
	end
	
	-- 头衔升级光效
	local nTreasurePlaying_NowTitle = TreasurePlaying_GetStcValue(6)
	local nTreasurePlaying_RealTitle = TreasurePlaying_GetOtherTitle(nTreasurePlaying_Score)
	if nTreasurePlaying_RealTitle > nTreasurePlaying_NowTitle then
		if nTreasurePlaying_NowTitle == 0 then
			TreasurePlaying_SetStcValue(6,nTreasurePlaying_RealTitle)
			Sys_SaveActionFestivalLog(string.format(tTreasurePlaying_Log["UpTitle"],nTreasurePlaying_RealTitle))
			return
		end
		TreasurePlaying_Effect(3)
		TreasurePlaying_SetStcValue(6,nTreasurePlaying_RealTitle)
		local sTreasurePlaying_Tip = tTreasurePlaying_Text["UpTitle"]
		User_TalkChannel2005(string.format(sTreasurePlaying_Tip,tTreasurePlaying_Text["Title"][nTreasurePlaying_RealTitle]))
		Sys_SaveActionFestivalLog(string.format(tTreasurePlaying_Log["UpTitle"],nTreasurePlaying_RealTitle))
	end
end

-- 眩晕
function TreasurePlaying_AddStatus(nTreasurePlaying_StatusIndex,nTreasurePlaying_NowUserId)
	local nTreasurePlaying_UserId = nTreasurePlaying_NowUserId or Get_UserId()
	local nTreasurePlaying_Status = tTreasurePlaying_Count[nTreasurePlaying_StatusIndex]["Status"]
	local nTreasurePlaying_Power = tTreasurePlaying_Count[nTreasurePlaying_StatusIndex]["Power"]
	local nTreasurePlaying_Secs =tTreasurePlaying_Count[nTreasurePlaying_StatusIndex]["Secs"]
	local nTreasurePlaying_Times =tTreasurePlaying_Count[nTreasurePlaying_StatusIndex]["Times"]
	local nTreasurePlaying_RemainTime = tTreasurePlaying_Count[nTreasurePlaying_StatusIndex]["RemainTime"]
	local nTreasurePlaying_EndTime =  tTreasurePlaying_Count[nTreasurePlaying_StatusIndex]["EndTime"]
	
	--增加状态
	if User_ChkRoleStatus(nTreasurePlaying_Status,nTreasurePlaying_UserId) then
		if not User_DelRoleStatus(nTreasurePlaying_Status,nTreasurePlaying_UserId) then
			return
		end
	end
	User_AddRoleStatus(nTreasurePlaying_Status,nTreasurePlaying_Power,nTreasurePlaying_Secs,nTreasurePlaying_Times,nTreasurePlaying_RemainTime,nTreasurePlaying_EndTime,0,1,0,nTreasurePlaying_UserId)
end

-- 优先删除道具
function TreasurePlaying_FirstDelItem()
	local nTreasurePlaying_ItemId = tTreasurePlaying_Count["TreasureMap"]
	if Item_ChkMulItem(nTreasurePlaying_ItemId,nTreasurePlaying_ItemId,1,2) then
		if Item_DelMulItem(nTreasurePlaying_ItemId,nTreasurePlaying_ItemId,1,2) then
			return true
		end
	end
	if Item_ChkMulItem(nTreasurePlaying_ItemId,nTreasurePlaying_ItemId,1) then
		if Item_DelMulItem(nTreasurePlaying_ItemId,nTreasurePlaying_ItemId,1) then
			return true
		end
	end
	
	return false
end

-- 随机悬浮索引
function TreasurePlaying_GetSuspension(nTreasurePlaying_Lan)
	local nSuspensionIndexOne,nSuspensionIndexTwo = 0,0
	if nTreasurePlaying_Lan == 1 then
		nSuspensionIndexOne,nSuspensionIndexTwo = 3,2
	elseif nTreasurePlaying_Lan == 2 or nTreasurePlaying_Lan == 4 then
		nSuspensionIndexOne,nSuspensionIndexTwo = 6,5
	else
		nSuspensionIndexOne,nSuspensionIndexTwo = 9,8
	end
	
	return nSuspensionIndexOne,nSuspensionIndexTwo
end

--------------------------------------npc使用
-- 点击npc前置判断
function TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident)
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		TreasurePlaying_LeaveInstance()
		return false
	end
	
	-- 等级不足
	local nTreasurePlaying_Level = tTreasurePlaying_Count["Level"]
	local nTreasurePlaying_Meto = tTreasurePlaying_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nTreasurePlaying_Level,nTreasurePlaying_Meto) then
		User_TalkChannel2005(tTreasurePlaying_Text["LevelLimit"])
		return false
	end
	
	if nTreasurePlaying_Incident == 0 then
		TreasurePlaying_LeaveInstance()
		return false
	end
	
	-- 无藏宝图
	if not Item_ChkItem(tTreasurePlaying_Count["TreasureMap"]) then
		User_TalkChannel2005(tTreasurePlaying_Text["NoItem"])
		return
	end
	
	-- 背包不足
	if not TreasureMapReward_JubBag(nTreasurePlaying_Incident,true) then
		User_TalkChannel2005(tTreasurePlaying_Text["NoSpace"])
		return false
	end
	
	return true
end

-- 事件完成必做行为
function TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
	-- 事件
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3)
	local nTreasurePlaying_InformationIndex = TreasurePlaying_GetStcValue(4)
	-- 判断服务器
	local nTreasurePlaying_Server = 1
	if SpecialServer_ChkNoGiftServer() then
		nTreasurePlaying_Server = 2
	end
	local tTreasurePlaying_MapInfor = tTreasurePlaying_PosInformation[nTreasurePlaying_Server][nTreasurePlaying_Incident][nTreasurePlaying_InformationIndex]
	local nTreasurePlaying_UserId = Get_UserId()
	
	-- 清楚事件、坐标和信息
	TreasurePlaying_SetStcValue(3,0,nTreasurePlaying_UserId)
	TreasurePlaying_SetStcValue(4,0,nTreasurePlaying_UserId)
	TreasurePlaying_SetStcValue(5,0,nTreasurePlaying_UserId)
	TreasurePlaying_SetStcValue(7,nTreasurePlaying_Incident,nTreasurePlaying_UserId)
	-- 寻宝次数+1
	TreasurePlaying_AddStcValue(2,1)
	-- 寻宝积分
	TreasurePlaying_AddStcValue(1,tTreasurePlaying_Count["TreasureSuc"])
	-- 更新排行榜
	TreasureMapReward_Update() --陈莺接口
	-- 检测积分播放光效
	TreasurePlaying_ChkAddEffect(1)
	local sTreasurePlaying_Log = tTreasurePlaying_Log["FinishIncident"]
	Sys_SaveActionFestivalLog(string.format(sTreasurePlaying_Log,nTreasurePlaying_Incident))
	
	local sTreasurePlaying_EnterLog = tTreasurePlaying_Log["UseTreasureMap"]
	Sys_SaveActionFestivalLog(string.format(sTreasurePlaying_EnterLog,nTreasurePlaying_Incident))
	
	-- 第一次弹框
	local nTreasurePlaying_Score = TreasurePlaying_GetStcValue(1)
	-- 寻宝十五次
	local nTreasurePlaying_Time = TreasurePlaying_GetStcValue(2)
	
	if nTreasurePlaying_Score == tTreasurePlaying_Count["TreasureSuc"] then
		-- 寻路
		Sys_MsgBox(tTreasurePlaying_Text["FirstTreasureSuc"],"</F>LinkNpcGossipFunc_New</N>26014</S>1-5")
		TreasurePlaying_LeaveInstance()
	elseif nTreasurePlaying_Time == tTreasurePlaying_Count["TreasureTime"] then
		TreasurePlaying_LeaveInstance()
		Sys_MsgBox(tTreasurePlaying_Text["TreasureTime"],"</F>NpcPosition_PathFind</N>26014")
	else
		-- 提示
		if sTreasurePlaying_LastTip ~= nil then
			User_TalkChannel2005(sTreasurePlaying_LastTip)
			Sys_MsgBox(sTreasurePlaying_LastTip)
			-- 离开副本
			TreasurePlaying_LeaveInstance()
		end
		-- local nTreasurePlaying_MapId = tTreasurePlaying_MapInfor[1]
		-- local nTreasurePlaying_Posx = tTreasurePlaying_MapInfor[2]
		-- local nTreasurePlaying_Posy = tTreasurePlaying_MapInfor[3]
		-- User_UserRandBoundTrans(nTreasurePlaying_MapId,nTreasurePlaying_Posx,nTreasurePlaying_Posy,5,5)
	end
end

-- '红色宝箱'/绿色宝箱
function TreasurePlaying_OpenOneBox(nTreasurePlaying_NpcId)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	-- 点击npc前置判断
	if not TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident) then
		return
	end
	
	local  nTreasurePlaying_Real = TreasurePlaying_GetStcValue(5)
	-- 随机判断宝箱真假
	local bTreasurePlaying_Open = false
	local sTreasurePlaying_LastTip = ""
	if nTreasurePlaying_Real == nTreasurePlaying_NpcId then
		-- 事件成功次数+1
		-- TreasurePlaying_AddStcValue(2,1)
		bTreasurePlaying_Open = true
		if TreasurePlaying_FirstDelItem() then
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(1,bTreasurePlaying_Open)  --陈莺接口
			sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenOneBoxSuc"],sTreasurePlaying_Reward)
		else
			TreasurePlaying_LeaveInstance()
			return
		end
	else
		if TreasurePlaying_FirstDelItem() then
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(1,bTreasurePlaying_Open)
			sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenOneBoxFail"],sTreasurePlaying_Reward)
		else
			TreasurePlaying_LeaveInstance()
			return
		end
	end
	
	TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
end

-- 可疑的宝箱
-- 打开它
function TreasurePlaying_OpenTwoBox(nTreasurePlaying_NpcId)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	-- 点击npc前置判断
	if not TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident) then
		return
	end
	local nTreasurePlaying_MapId = Get_UserMapId()
	-- 随机判断宝箱真假
	local sTreasurePlaying_LastTip = "" 
	local bTreasurePlaying_Open = false
	if Sys_Random(tTreasurePlaying_Count["Min"],tTreasurePlaying_Count["Max"]) then
		-- 非怪物直接获得奖励
		-- 事件成功次数+1
		-- TreasurePlaying_AddStcValue(2,1)
		bTreasurePlaying_Open = true
		if TreasurePlaying_FirstDelItem() then
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
			sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenTwoBoxSuc"],sTreasurePlaying_Reward)
		else
			TreasurePlaying_LeaveInstance()
			return
		end
	else
		-- 生成怪物
		TreasurePlaying_SetStcValue(5,1)
		TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_NpcId,1)
		-- 移走npc
		local sTreasurePlaying_NpcName = Get_NpcName()
		local nTreasurePlaying_MapId = Get_UserMapId()
		Npc_DelDynaNpc(nTreasurePlaying_MapId,"name",sTreasurePlaying_NpcName)
		return
	end
	
	TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
end

-- 攻击它
function TreasurePlaying_AttackTwoBox(nTreasurePlaying_NpcId)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	-- 点击npc前置判断
	if not TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident) then
		return
	end
	
	local nTreasurePlaying_MapId = Get_UserMapId()
	-- 随机判断宝箱真假
	local sTreasurePlaying_LastTip = "" 
	local bTreasurePlaying_Open = false
	if Sys_Random(tTreasurePlaying_Count["Min"],tTreasurePlaying_Count["Max"]) then
		-- 是怪物
		-- 事件成功生成怪物
		TreasurePlaying_SetStcValue(5,2)
		TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_NpcId,2)
		-- 移走npc
		local sTreasurePlaying_NpcName = Get_NpcName()
		local nTreasurePlaying_MapId = Get_UserMapId()
		Npc_DelDynaNpc(nTreasurePlaying_MapId,"name",sTreasurePlaying_NpcName)
		return
	else
		if TreasurePlaying_FirstDelItem() then
			-- 非怪物失败
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
			sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenTwoBoxFail2"],sTreasurePlaying_Reward)
		else
			TreasurePlaying_LeaveInstance()
			return
		end
	end
	
	TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
end

-- 生成怪物
function TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_NpcId,nTreasurePlaying_Type)
	-- 初始化
	local nTreasurePlaying_MapId = Get_UserMapId()
	local nTreasurePlaying_MonsterId = 0
	local nTreasurePlaying_GenId = 0
	local tTreasurePlaying_Pos = {}
	local nTreasurePlaying_Time = 0
	
	-- 取信息表
	local tTreasurePlaying_RealInfo = tTreasurePlaying_RefreshMonster[nTreasurePlaying_Incident]
	if nTreasurePlaying_Incident == 1 then
		nTreasurePlaying_MonsterId = tTreasurePlaying_RealInfo["MonsterId"]
		nTreasurePlaying_GenId = tTreasurePlaying_RealInfo["Generator"]
		nTreasurePlaying_Time = tTreasurePlaying_RealInfo["Time"]
		tTreasurePlaying_Pos = tTreasurePlaying_RealInfo["Pos"][nTreasurePlaying_NpcId]
		-- 创建怪物
		Monster_AddAndCount(nTreasurePlaying_MapId,tTreasurePlaying_Pos[1],tTreasurePlaying_Pos[2],nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
		Sys_MsgBox(tTreasurePlaying_Text["OpenTwoBoxFail"])
	end
	
	if nTreasurePlaying_Incident == 2 then
		tTreasurePlaying_Pos = tTreasurePlaying_RealInfo["Pos"][nTreasurePlaying_NpcId]
		nTreasurePlaying_MonsterId = tTreasurePlaying_RealInfo["MonsterId"]
		nTreasurePlaying_GenId = tTreasurePlaying_RealInfo["Generator"]
		-- 创建怪物
		Monster_AddAndCount(nTreasurePlaying_MapId,tTreasurePlaying_Pos[1],tTreasurePlaying_Pos[2],nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
		if nTreasurePlaying_Type == 2 then
			Sys_MsgBox(tTreasurePlaying_Text["OpenTwoBoxFail1"])
		else
			Sys_MsgBox(tTreasurePlaying_Text["OpenTwoBoxFail"])
		end
	end
	
	if nTreasurePlaying_Incident == 3 then
		tTreasurePlaying_Pos = tTreasurePlaying_RealInfo["Pos"][2]
		nTreasurePlaying_GenId = tTreasurePlaying_RealInfo["Generator"]
		local nTreasurePlaying_SucType = TreasurePlaying_GetStcValue(5)
		-- 机灵鬼
		if nTreasurePlaying_Type == 1 then
			nTreasurePlaying_MonsterId = tTreasurePlaying_RealInfo["MonsterId"]
			-- 创建怪物
			Monster_AddAndCount(nTreasurePlaying_MapId,tTreasurePlaying_Pos[1],tTreasurePlaying_Pos[2],nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
			if nTreasurePlaying_SucType == 1 then
				Sys_MsgBox(tTreasurePlaying_Text["OpenThreeBoxSuc"])
			else
				Sys_MsgBox(tTreasurePlaying_Text["OpenThreeBoxSuc2"])
			end
		else
			nTreasurePlaying_MonsterId = tTreasurePlaying_RefreshNpc[nTreasurePlaying_NpcId]["MonsterId"][1]
			-- 创建怪物
			Monster_AddAndCount(nTreasurePlaying_MapId,tTreasurePlaying_Pos[1],tTreasurePlaying_Pos[2],nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
			-- local sTreasurePlaying_MonsterName = Get_MonsterName(nTreasurePlaying_MonsterId)
			local sTreasurePlaying_MonsterName = tTreasurePlaying_Text["MonsterName"][nTreasurePlaying_NpcId]
			Sys_MsgBox(string.format(tTreasurePlaying_Text["OpenThreeBoxFail"],sTreasurePlaying_MonsterName))
		end
	end
	
	if nTreasurePlaying_Incident == 4 then
		local nTreasurePlaying_Index = math.random(1,#tTreasurePlaying_RealInfo["MonsterData"])
		local tTreasurePlaying_MonsterData = tTreasurePlaying_RealInfo["MonsterData"][nTreasurePlaying_Index]
		local nTreasurePlaying_Num = tTreasurePlaying_MonsterData[2]
		nTreasurePlaying_MonsterId = tTreasurePlaying_MonsterData[1]
		nTreasurePlaying_GenId = tTreasurePlaying_RealInfo["Generator"]
		tTreasurePlaying_Pos = tTreasurePlaying_RealInfo["Pos"][1]
		local nTreasurePlaying_BsaicX = tTreasurePlaying_Pos[1]
		local nTreasurePlaying_BsaicY = tTreasurePlaying_Pos[1]
		TreasurePlaying_SetStcValue(5,nTreasurePlaying_MonsterId)
		if nTreasurePlaying_Num == 1 then
			-- 创建怪物
			Monster_AddAndCount(nTreasurePlaying_MapId,nTreasurePlaying_BsaicX,nTreasurePlaying_BsaicY,nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
		elseif nTreasurePlaying_Num == 5 then
			for i=1,nTreasurePlaying_Num do
				local bx = nTreasurePlaying_BsaicX + math.random(1,nTreasurePlaying_Num)
				local by = nTreasurePlaying_BsaicY + math.random(1,nTreasurePlaying_Num)
				Monster_AddAndCount(nTreasurePlaying_MapId,bx,by,nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
			end
		else
			for i=1,5 do
				local bx = nTreasurePlaying_BsaicX + math.random(1,nTreasurePlaying_Num)
				local by = nTreasurePlaying_BsaicY + math.random(1,nTreasurePlaying_Num)
				Monster_AddAndCount(nTreasurePlaying_MapId,bx,by,nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
			end
			for j=1,5 do
				local bx = nTreasurePlaying_BsaicX - math.random(1,nTreasurePlaying_Num)
				local by = nTreasurePlaying_BsaicY - math.random(1,nTreasurePlaying_Num)
				Monster_AddAndCount(nTreasurePlaying_MapId,bx,by,nTreasurePlaying_GenId,nTreasurePlaying_MonsterId)
			end
		end
		
	end
	
	-- Monster_CreateMonsterRange(0,0,nTreasurePlaying_MapId,tTreasurePlaying_Pos[1],tTreasurePlaying_Pos[2],nTreasurePlaying_GenId,nTreasurePlaying_MonsterId,0,"",0,1,1,1,nTreasurePlaying_Time)
end

-- 事件3 nTreasurePlaying_Index对应开启的怪物外形
function TreasurePlaying_OpenThreeBox(nTreasurePlaying_Index)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	-- 点击npc前置判断
	if not TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident) then
		return
	end
	
	-- 重置函数
	local nTreasurePlaying_ThreeNpcId = tTreasurePlaying_Count["ThreeNpcID"]
	tNpcGossip[nTreasurePlaying_ThreeNpcId]["OptionFunc111"] = string.format("</F>TreasurePlaying_OpenThreeBoxNew</N>26026</N>%s",nTreasurePlaying_Index)
	tNpcGossip[nTreasurePlaying_ThreeNpcId]["OptionFunc112"] = string.format("</F>TreasurePlaying_AttackThreeBox</N>26026</N>%s",nTreasurePlaying_Index)
	LinkNpcGossipFunc_New(nTreasurePlaying_ThreeNpcId,"1-1")
end

-- 聊聊
function TreasurePlaying_OpenThreeBoxNew(nTreasurePlaying_NpcId,nTreasurePlaying_Index)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	-- 点击npc前置判断
	if not TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident) then
		return
	end
	
	-- 随机判断宝箱真假
	local sTreasurePlaying_LastTip = "" 
	local nTreasurePlaying_BasicNpcID = tTreasurePlaying_Count["ThreeNpcID"]
	local tTreasurePlaying_NpcInfo = tTreasurePlaying_RefreshNpc[nTreasurePlaying_Index]
	-- local sTreasurePlaying_NpcName = Get_MonsterName(tTreasurePlaying_NpcInfo["MonsterId"][1]) 
	local sTreasurePlaying_NpcName = tTreasurePlaying_Text["MonsterName"][nTreasurePlaying_Index]
	
	-- 删除怪物npc
	local nTreasurePlaying_MapId = Get_UserMapId()
	Npc_DelDynaNpc(nTreasurePlaying_MapId,"name",sTreasurePlaying_NpcName)
	
	local bTreasurePlaying_Open = false
	-- 成功，是怪物
	if Sys_Random(tTreasurePlaying_Count["Min"],tTreasurePlaying_Count["Max"]) then
		-- 事件成功次数+1
		-- TreasurePlaying_AddStcValue(2,1)
		-- bTreasurePlaying_Open = true
		-- local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
		-- local sTreasurePlaying_BasicText = tTreasurePlaying_Text[nTreasurePlaying_BasicNpcID]["Text212"]
		-- tNpcGossip[nTreasurePlaying_BasicNpcID]["Text212"] = string.format(sTreasurePlaying_BasicText,sTreasurePlaying_Reward)
		-- tNpcGossip[nTreasurePlaying_BasicNpcID]["OptionFunc211"] = "</F>TreasurePlaying_LeaveInstance</N>1"
		-- LinkNpcGossipFunc_New(nTreasurePlaying_BasicNpcID,"2-1")
		-- 生成机灵鬼
		TreasurePlaying_SetStcValue(5,1)
		TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_Index,2)
	else
		
		-- local nTreasurePlaying_PosX = Get_NpcPositionX()
		-- local nTreasurePlaying_PosY = Get_NpcPositionY()
		-- 变成机灵鬼
		-- Npc_CreateDynaNpc("机灵鬼",2,1,63730,0,nil,nTreasurePlaying_MapId,nTreasurePlaying_PosX,nTreasurePlaying_PosY,0,0,0,0)
		
		-- 失败是机灵鬼
		-- local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
		-- local sTreasurePlaying_BasicText = tTreasurePlaying_Text[nTreasurePlaying_BasicNpcID]["Text223"]
		-- tNpcGossip[nTreasurePlaying_BasicNpcID]["Text223"] = string.format(sTreasurePlaying_BasicText,sTreasurePlaying_Reward)
		-- tNpcGossip[nTreasurePlaying_BasicNpcID]["OptionFunc221"] = "</F>TreasurePlaying_LeaveInstance</N>1"
		-- LinkNpcGossipFunc_New(nTreasurePlaying_BasicNpcID,"2-2")
		-- 生成怪物
		TreasurePlaying_SetStcValue(5,2)
		TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_Index,1)
	end
	
end

-- 怪物
-- 识破它
function TreasurePlaying_AttackThreeBox(nTreasurePlaying_NpcId,nTreasurePlaying_Index)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	-- 点击npc前置判断
	if not TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident) then
		return
	end
	
	
	local tTreasurePlaying_NpcInfo = tTreasurePlaying_RefreshNpc[nTreasurePlaying_Index]
	-- local sTreasurePlaying_NpcName = Get_MonsterName(tTreasurePlaying_NpcInfo["MonsterId"][1]) 
	local sTreasurePlaying_NpcName = tTreasurePlaying_Text["MonsterName"][nTreasurePlaying_Index]
	
	-- 删除怪物
	local nTreasurePlaying_MapId = Get_UserMapId()
	Npc_DelDynaNpc(nTreasurePlaying_MapId,"name",sTreasurePlaying_NpcName)
	
	if Sys_Random(tTreasurePlaying_Count["Min"],tTreasurePlaying_Count["Max"]) then
		-- 成功刷机灵鬼
		TreasurePlaying_SetStcValue(5,1)
		TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_Index,1)
	else
		-- 失败，是怪物
		TreasurePlaying_SetStcValue(5,2)
		TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_Index,2)
	end
end

-- 彩蛋
function TreasurePlaying_OpenFourBox(nTreasurePlaying_NpcId)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	-- 点击npc前置判断
	if not TreasurePlaying_ChkOpenBox(nTreasurePlaying_Incident) then
		return
	end
	
	local nTreasurePlaying_MapId = Get_UserMapId()
	local nTreasurePlaying_MonsterId = TreasurePlaying_GetStcValue(5)
	if nTreasurePlaying_MonsterId > 0 then
		local nTreasurePlaying_MonsterNum = Get_SysTempData(1,nTreasurePlaying_MapId,nTreasurePlaying_MonsterId)
		if nTreasurePlaying_MonsterNum >= 1 then
			Sys_MsgBox(tTreasurePlaying_Text["FailOpen"][nTreasurePlaying_Incident])
			return
		end
	end

	local nTreasurePlaying_UserId = Get_UserId()
	if tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] == nil then
		tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] = 0
	end
	
	-- 随机判断宝箱真假
	-- 直接打破
	local sTreasurePlaying_NpcName = Get_NpcName()
	Npc_DelDynaNpc(nTreasurePlaying_MapId,"name",sTreasurePlaying_NpcName)
	tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] = tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] + 1
	if Sys_Random(tTreasurePlaying_Count["NewMin"],tTreasurePlaying_Count["NewMax"]) then
		-- if tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] < 4 then
			-- Sys_MsgBox(tTreasurePlaying_Text["OpenFourBoxFail"])
		-- end
		local bTreasurePlaying_Open = true
		tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] = 0
		if TreasurePlaying_FirstDelItem() then
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
			sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenFourBoxSuc"],sTreasurePlaying_Reward)
			TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
		else
			TreasurePlaying_LeaveInstance()
		end
		return
	else
		-- 事件失败 怪物
		TreasurePlaying_CreateMonster(nTreasurePlaying_Incident,nTreasurePlaying_NpcId)
		Sys_MsgBox(tTreasurePlaying_Text["OpenFailBoxSuc"])
		return
	end
end
--------------------------------------物品使用
-- 3600244,'藏宝图'
function TreasurePlaying_UseItem(nTreasurePlaying_ItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		local nTreasurePlaying_ItemNum = Get_CountItemType(nTreasurePlaying_ItemId,0)
		if Item_ChkItem(nTreasurePlaying_ItemId) and Item_DelAllItemByType(nTreasurePlaying_ItemId) then
			User_TalkChannel2005(tTreasurePlaying_Text["OverDue"])
			local sLog = tTreasurePlaying_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nTreasurePlaying_ItemId,nTreasurePlaying_ItemNum))
 		end
		return
	end
	
	-- 等级不足
	local nTreasurePlaying_Level = tTreasurePlaying_Count["Level"]
	local nTreasurePlaying_Meto = tTreasurePlaying_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nTreasurePlaying_Level,nTreasurePlaying_Meto) then
		Sys_MsgBox(tTreasurePlaying_Text["LevelLimit"])
		return
	end
	
	if not TreasurePlaying_ChkUseItemMap() then
		Sys_MsgBox(tTreasurePlaying_Text["NotUseItem"])
		return
	end
	
	-- 判断服务器
	local nTreasurePlaying_Server = 1
	if SpecialServer_ChkNoGiftServer() then
		nTreasurePlaying_Server = 2
	end
	
	-- 是否有随机事件
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3)
	local tTreasurePlaying_PosInformationServer = tTreasurePlaying_PosInformation[nTreasurePlaying_Server]
	local nTreasurePlaying_InformationIndex = 0
	if nTreasurePlaying_Incident == 0 then
		nTreasurePlaying_Incident = TreasurePlaying_GetNewIncident()
		TreasurePlaying_SetStcValue(3,nTreasurePlaying_Incident)
		-- 随机对应坐标
		local nTreasurePlaying_InformationLength = #tTreasurePlaying_PosInformationServer[nTreasurePlaying_Incident]
		-- 坐标索引
		nTreasurePlaying_InformationIndex = math.random(1,nTreasurePlaying_InformationLength)
		TreasurePlaying_SetStcValue(4,nTreasurePlaying_InformationIndex)
	else
		nTreasurePlaying_InformationIndex = TreasurePlaying_GetStcValue(4)
	end
	local sTreasurePlaying_MapName = ""
	local tTreasurePlaying_MapInfor = tTreasurePlaying_PosInformationServer[nTreasurePlaying_Incident][nTreasurePlaying_InformationIndex]
	if tTreasurePlaying_Text["MapName"][nTreasurePlaying_Incident] ~= nil then
		sTreasurePlaying_MapName = tTreasurePlaying_Text["MapName"][nTreasurePlaying_Incident]
	else
		sTreasurePlaying_MapName = Get_MapName(tTreasurePlaying_MapInfor[1])
	end
	local nTreasurePlaying_Posx = tTreasurePlaying_MapInfor[2]
	local nTreasurePlaying_Posy = tTreasurePlaying_MapInfor[3]
	
	-- 初始化对白
	local sTreasurePlaying_Basic = tTreasurePlaying_Text[nTreasurePlaying_ItemId]["Text112"] 
	tItem[nTreasurePlaying_ItemId]["Text112"] = string.format(sTreasurePlaying_Basic,sTreasurePlaying_MapName,nTreasurePlaying_Posx,nTreasurePlaying_Posy)
	
	LinkItemGossipFunc_New(nTreasurePlaying_ItemId,"1-1")
end

-- 前去寻宝 == 1是寻路 ==2 是传送
function TreasurePlaying_ChooseGoTo(nTreasurePlaying_ItemId,nTreasurePlaying_TranType)
	-- 过期删除
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		local nTreasurePlaying_ItemNum = Get_CountItemType(nTreasurePlaying_ItemId,0)
		if Item_ChkItem(nTreasurePlaying_ItemId) and Item_DelAllItemByType(nTreasurePlaying_ItemId) then
			User_TalkChannel2005(tTreasurePlaying_Text["OverDue"])
			local sLog = tTreasurePlaying_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nTreasurePlaying_ItemId,nTreasurePlaying_ItemNum))
 		end
		return
	end
	
	-- 无物品
	if not Item_ChkItem(nTreasurePlaying_ItemId) then
		User_TalkChannel2005(tTreasurePlaying_Text["NoItem"])
		return
	end
	
	-- 当前地图不能使用寻路
	if not TreasurePlaying_ChkMap() then
		User_TalkChannel2005(tTreasurePlaying_Text["NotCity"])
		return
	end
	
	-- 判断消耗
	local nTreasurePlaying_Cost = tTreasurePlaying_Count["Cost"][nTreasurePlaying_TranType]
	if nTreasurePlaying_TranType == 1 then
		local nTreasurePlaying_Cultivation = Get_UserCultivation()
		-- 修行值不足
		if nTreasurePlaying_Cost > nTreasurePlaying_Cultivation then
			Sys_MsgBox(tTreasurePlaying_Text["TranNoCul"])
			return
		end
		
		-- 扣除修行值寻路
		if User_AddCultivation((-1) * nTreasurePlaying_Cost) then
			Sys_SaveActionFestivalLog(tTreasurePlaying_Log["Cost"][nTreasurePlaying_TranType])
			TreasurePlaying_Destination(nTreasurePlaying_ItemId,nTreasurePlaying_TranType)
		end
	else
		-- 金币不足
		if not User_CanPutMoney2Bag((-1) * nTreasurePlaying_Cost) then
			Sys_MsgBox(tTreasurePlaying_Text["TranNoMoney"])
			return
		end
		
		-- 判断玩家是否二次确认
		local nTreasurePlaying_UserId = Get_UserId()
		if tTreasurePlaying_SureMark[nTreasurePlaying_UserId] == nil then
			LinkItemGossipFunc_New(nTreasurePlaying_ItemId,"2-1")
		else
			if User_AddMoney((-1) * nTreasurePlaying_Cost) then
				Sys_SaveActionFestivalLog(tTreasurePlaying_Log["Cost"][nTreasurePlaying_TranType])
				TreasurePlaying_Destination(nTreasurePlaying_ItemId,nTreasurePlaying_TranType)
			end
		end
	end
end

-- 传送还是寻路到藏宝地点== 1是寻路 ==2 是传送
function TreasurePlaying_Destination(nTreasurePlaying_ItemId,nTreasurePlaying_TranType)
	-- 过期删除
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		local nTreasurePlaying_ItemNum = Get_CountItemType(nTreasurePlaying_ItemId,0)
		if Item_ChkItem(nTreasurePlaying_ItemId) and Item_DelAllItemByType(nTreasurePlaying_ItemId) then
			User_TalkChannel2005(tTreasurePlaying_Text["OverDue"])
			local sLog = tTreasurePlaying_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nTreasurePlaying_ItemId,nTreasurePlaying_ItemNum))
 		end
		return
	end
	
	-- 无物品
	if not Item_ChkItem(nTreasurePlaying_ItemId) then
		User_TalkChannel2005(tTreasurePlaying_Text["NoItem"])
		return
	end
	
	-- 判断服务器
	local nTreasurePlaying_Server = 1
	if SpecialServer_ChkNoGiftServer() then
		nTreasurePlaying_Server = 2
	end
	-- 事件
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3)
	local nTreasurePlaying_InformationIndex = TreasurePlaying_GetStcValue(4)
	-- 位置信息
	local tTreasurePlaying_MapInfor = tTreasurePlaying_PosInformation[nTreasurePlaying_Server][nTreasurePlaying_Incident][nTreasurePlaying_InformationIndex]
	
	local nTreasurePlaying_MapId = tTreasurePlaying_MapInfor[1]
	local nTreasurePlaying_Posx = tTreasurePlaying_MapInfor[2]
	local nTreasurePlaying_Posy = tTreasurePlaying_MapInfor[3]
	if nTreasurePlaying_TranType == 2 then
		User_UserRandBoundTrans(nTreasurePlaying_MapId,nTreasurePlaying_Posx,nTreasurePlaying_Posy,5,5)
		Sys_MsgBox(tTreasurePlaying_Text["SuerTran"])
	else
		Sys_GotoSomeWhere(nTreasurePlaying_Posx,nTreasurePlaying_Posy,nTreasurePlaying_MapId)
	end
end

-- 确认传送
function TreasurePlaying_SureChgMap(nTreasurePlaying_ItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		local nTreasurePlaying_ItemNum = Get_CountItemType(nTreasurePlaying_ItemId,0)
		if Item_ChkItem(nTreasurePlaying_ItemId) and Item_DelAllItemByType(nTreasurePlaying_ItemId) then
			User_TalkChannel2005(tTreasurePlaying_Text["OverDue"])
			local sLog = tTreasurePlaying_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nTreasurePlaying_ItemId,nTreasurePlaying_ItemNum))
 		end
		return
	end
	
	-- 无物品
	if not Item_ChkItem(nTreasurePlaying_ItemId) then
		User_TalkChannel2005(tTreasurePlaying_Text["NoItem"])
		return
	end
	
	-- 判断金币
	local nTreasurePlaying_Cost = tTreasurePlaying_Count["Cost"][2]
	-- 金币不足
	if not User_CanPutMoney2Bag((-1) * nTreasurePlaying_Cost) then
		Sys_MsgBox(tTreasurePlaying_Text["TranNoMoney"])
		return
	end
	
	-- 使用金币
	if User_AddMoney((-1) * nTreasurePlaying_Cost) then
		Sys_SaveActionFestivalLog(tTreasurePlaying_Log["Cost"][2])
		TreasurePlaying_Destination(nTreasurePlaying_ItemId,2)
	end
end

-- 屏蔽二次确认
function TreasurePlaying_AddMark(nTreasurePlaying_ItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		local nTreasurePlaying_ItemNum = Get_CountItemType(nTreasurePlaying_ItemId,0)
		if Item_ChkItem(nTreasurePlaying_ItemId) and Item_DelAllItemByType(nTreasurePlaying_ItemId) then
			User_TalkChannel2005(tTreasurePlaying_Text["OverDue"])
			local sLog = tTreasurePlaying_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nTreasurePlaying_ItemId,nTreasurePlaying_ItemNum))
 		end
		return
	end
	
	-- 无物品
	if not Item_ChkItem(nTreasurePlaying_ItemId) then
		User_TalkChannel2005(tTreasurePlaying_Text["NoItem"])
		return
	end
	
	-- 已经屏蔽
	-- 判断玩家是否二次确认
	local nTreasurePlaying_UserId = Get_UserId()
	local sTreasurePlaying_Func = "TreasurePlaying_UseItem</N>3600244"
	if tTreasurePlaying_SureMark[nTreasurePlaying_UserId] == nil then
		Sys_MsgBox(tTreasurePlaying_Text["AddMark"],sTreasurePlaying_Func)
		tTreasurePlaying_SureMark[nTreasurePlaying_UserId] = 1
	else
		Sys_MsgBox(tTreasurePlaying_Text["HaveMark"],sTreasurePlaying_Func)
	end
end

--------------------------------------陷阱使用
function TreasurePlaying_TrapFunc(nTrapId,nTrapType)
	-- 活动时间
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		return
	end
	
	-- 无藏宝图
	if not Item_ChkItem(tTreasurePlaying_Count["TreasureMap"]) then
		-- User_TalkChannel2005(tTreasurePlaying_Text["NoItem"])
		return
	end
	
	-- 还未随机事件
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3)
	if nTreasurePlaying_Incident == 0 then
		-- Sys_MsgBox(tTreasurePlaying_Text["NoIncident"])
		return
	end
	
	-- 非当前寻宝地点
	if not TreasurePlaying_ChkPostion(nTreasurePlaying_Incident) then
		Sys_MsgBox(tTreasurePlaying_Text["NotPostion"])
		return
	end
	
	-- 等级不足
	local nTreasurePlaying_Level = tTreasurePlaying_Count["Level"]
	local nTreasurePlaying_Meto = tTreasurePlaying_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nTreasurePlaying_Level,nTreasurePlaying_Meto) then
		User_TalkChannel2005(tTreasurePlaying_Text["LevelLimit"])
		return
	end
	
	-- User_SetExplore(1,tTreasurePlaying_Text["Explore"],120,"</F>TreasurePlaying_StartTreasure")
	TreasurePlaying_StartTreasure()
end

-- 开始寻宝
function TreasurePlaying_StartTreasure(nTreasurePlaying_UserId)
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
	if nTreasurePlaying_Incident == 0 then
		return
	end
	
	-- 无藏宝图
	if not Item_ChkItem(tTreasurePlaying_Count["TreasureMap"],nil,nil,nTreasurePlaying_UserId) then
		User_TalkChannel2005(tTreasurePlaying_Text["NoItem"])
		return
	end
	
	
	local nUserTeamNum = Get_UserTeamNumbers(nUserId) 
	if nUserTeamNum >= 1 then
		User_TalkChannel2005(tTreasurePlaying_Text["NoTeam"])
		return
	end
	-- 第一次和第14次的存在弹框
	local nTreasurePlaying_Score = TreasurePlaying_GetStcValue(2)
	-- 如果事件1
	if nTreasurePlaying_Incident == 1 and nTreasurePlaying_Score ~= 0 and nTreasurePlaying_Score ~= 14 then
		-- 判断背包
		-- 背包不足
		if not TreasureMapReward_JubBag(nTreasurePlaying_Incident,true) then
			User_TalkChannel2005(tTreasurePlaying_Text["NoSpace"])
			return false
		end
	
		local bTreasurePlaying_Flag,tIncidentRandom = Probabil_RandomAward(tTreasurePlaying_Random,6)
		local nTreasurePlaying_Type = tIncidentRandom[1]["tAward"][1]["Type"]
		
		local nTreasurePlaying_NpcId = tTreasurePlaying_Count["OneNewNpcID"]
		-- 成功直接给
		if nTreasurePlaying_Type == 2 then
			if TreasurePlaying_FirstDelItem() then
				-- 给成功奖励
				local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,true)  --陈莺接口
				tNpcGossip[nTreasurePlaying_NpcId]["Text111"] = string.format(tTreasurePlaying_Text[nTreasurePlaying_NpcId]["Text111"],sTreasurePlaying_Reward)
				LinkNpcGossipFunc_New(nTreasurePlaying_NpcId,"1-1")
				TreasurePlaying_FinishIncident(nTreasurePlaying_Incident)
			else
				TreasurePlaying_LeaveInstance()
			end
			return
		end
		if nTreasurePlaying_Type == 3 then
			if TreasurePlaying_FirstDelItem() then
				-- 眩晕
				TreasurePlaying_AddStatus(1)
				local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,false)  --陈莺接口
				-- 给失败奖励
				tNpcGossip[nTreasurePlaying_NpcId]["Text121"] = string.format(tTreasurePlaying_Text[nTreasurePlaying_NpcId]["Text121"],sTreasurePlaying_Reward)
				LinkNpcGossipFunc_New(nTreasurePlaying_NpcId,"1-2")
				TreasurePlaying_FinishIncident(nTreasurePlaying_Incident)
			else
				TreasurePlaying_LeaveInstance()
			end
			return
		end
		
		-- 进洞
	end
	-- 进入事件副本
	local nTreasurePlaying_InstanceType = tTreasurePlaying_Count["Instancetype"][nTreasurePlaying_Incident]
	-- 进入副本
	if User_EnterInstance(nTreasurePlaying_InstanceType,0,0,0,nTreasurePlaying_UserId) then
		-- 随机事件进入地图处理
		TreasurePlaying_InitEnterTreasure(nTreasurePlaying_Incident,nTreasurePlaying_UserId)
		
		User_TalkChannel2005(tTreasurePlaying_Text["Explore"])
		local nTreasurePlaying_EffectIndex = nTreasurePlaying_Incident + 3
		TreasurePlaying_Effect(nTreasurePlaying_EffectIndex)
	end
end

-- 随机事件进入地图处理
function TreasurePlaying_InitEnterTreasure(nTreasurePlaying_Incident,nTreasurePlaying_UserId)
	-- 事件1
	local nTreasurePlaying_MapId = Get_UserMapId()
	local sTreasurePlaying_EnterMap = tTreasurePlaying_Text["EnterMap"][nTreasurePlaying_Incident]
	if nTreasurePlaying_Incident == 1 then
		-- 随机真宝箱ID
		local nTreasurePlaying_NpcId = math.random(0,1) + tTreasurePlaying_Count["OneNpcID"]
		TreasurePlaying_SetStcValue(5,nTreasurePlaying_NpcId)
		
		-- 创建覆盖陷阱
		-- local tTreasurePlaying_Portal = tTreasurePlaying_Count["Portal"][nTreasurePlaying_Incident]
		-- Npc_CreateDynaNpc("NULL",2,1,tTreasurePlaying_Count["Look"],0,nil,nTreasurePlaying_MapId,tTreasurePlaying_Portal["PosX"],tTreasurePlaying_Portal["PosY"],0,0,0,0)
		Sys_MsgBox(sTreasurePlaying_EnterMap,nil,nil,nTreasurePlaying_UserId)
		return
	end
	
	-- -- 事件2
	if nTreasurePlaying_Incident == 2 then
		TreasurePlaying_InitRandom()
		-- -- 创建覆盖切屏点
		-- local tTreasurePlaying_Portal = tTreasurePlaying_Count["Portal"][nTreasurePlaying_Incident]
		-- Npc_CreateDynaNpc("NULL",2,1,tTreasurePlaying_Count["Look"],0,nil,nTreasurePlaying_MapId,tTreasurePlaying_Portal["PosX"],tTreasurePlaying_Portal["PosY"],0,0,0,0)
		Sys_MsgBox(sTreasurePlaying_EnterMap,nil,nil,nTreasurePlaying_UserId)
	end
	
	-- 创建切屏点
	if nTreasurePlaying_Incident >= 3 then
		local nTreasurePlaying_TrapType = tTreasurePlaying_Count["TrapType"]
		local nTreasurePlaying_Lookface = tTreasurePlaying_Count["Lookface"]
		local nTreasurePlaying_PosX = tTreasurePlaying_Count["Portal"][nTreasurePlaying_Incident]["PosX"]
		local nTreasurePlaying_PosY = tTreasurePlaying_Count["Portal"][nTreasurePlaying_Incident]["PosY"]
		Trap_CreateMapTrap(nTreasurePlaying_TrapType,nTreasurePlaying_Lookface,0,nTreasurePlaying_MapId,nTreasurePlaying_PosX,nTreasurePlaying_PosY,2,2)
	end
	
	-- 事件3
	if nTreasurePlaying_Incident == 3 then
		-- 刷新超大或者超小npc
		local nTreasurePlaying_Big = math.random(1,2)
		TreasurePlaying_SetStcValue(5,nTreasurePlaying_Big)
		
		-- 随机外形
		local nTreasurePlaying_Random = math.random(1,6)
		local nTreasurePlaying_PosX = tTreasurePlaying_RefreshMonster[3]["Pos"][1][1]
		local nTreasurePlaying_PosY = tTreasurePlaying_RefreshMonster[3]["Pos"][1][2]
		local tTreasurePlaying_NpcInfo = tTreasurePlaying_RefreshNpc[nTreasurePlaying_Random]
		-- local sTreasurePlaying_NpcName = Get_MonsterName(tTreasurePlaying_NpcInfo["MonsterId"][nTreasurePlaying_Big])
		local sTreasurePlaying_NpcName = tTreasurePlaying_Text["MonsterName"][nTreasurePlaying_Random]
		local nTreasurePlaying_Lookface = tTreasurePlaying_NpcInfo["Lookface"]
		if nTreasurePlaying_Big == 2 then
			nTreasurePlaying_Lookface = tTreasurePlaying_NpcInfo["SmallLookface"]
		end
		local nTreasurePlaying_ActionId = tTreasurePlaying_NpcInfo["ActiionId"]
		Npc_CreateDynaNpc(sTreasurePlaying_NpcName,2,1,nTreasurePlaying_Lookface,0,nil,nTreasurePlaying_MapId,nTreasurePlaying_PosX,nTreasurePlaying_PosY,0,0,0,nTreasurePlaying_ActionId)
		
		-- 随机对白
		local nTreasurePlaying_UserId = Get_UserId()
		tTreasurePlaying_ThreeRandomLan[nTreasurePlaying_UserId] = {}
		local nTreasurePlaying_LanOne = math.random(1,4)
		local nTreasurePlaying_LanTwo = math.random(1,4)
		tTreasurePlaying_ThreeRandomLan[nTreasurePlaying_UserId] = {nTreasurePlaying_LanOne,nTreasurePlaying_LanTwo}
		local nTreasurePlaying_NowLan = 1--User_ChkLanguage()
		local sTreasurePlaying_NewNewEnter = sTreasurePlaying_EnterMap
		if nTreasurePlaying_LanOne ~= nTreasurePlaying_NowLan then
			sTreasurePlaying_NewNewEnter = tTreasurePlaying_Text["EnterMap"][5]
		end
		Sys_MsgBox(sTreasurePlaying_NewNewEnter,nil,nil,nTreasurePlaying_UserId)
	end
	
	-- 事件4
	if nTreasurePlaying_Incident == 4 then
		Sys_MsgBox(sTreasurePlaying_EnterMap,nil,nil,nTreasurePlaying_UserId)
	end
end

-- 随机对白索引
function TreasurePlaying_InitRandom()
	local nTreasurePlaying_NowLan = 1--User_ChkLanguage()
	local tTreasurePlaying_LanguageId = CommonFunc_Copy(tTreasurePlaying_Count["LanguageId"])
	for i,v in pairs(tTreasurePlaying_LanguageId) do
		if v == nTreasurePlaying_NowLan then
			table.remove(tTreasurePlaying_LanguageId,i)
			break
		end
	end
	local nTreasurePlaying_LanOne = math.random(2,4)
	local nTreasurePlaying_LanTwo = math.random(2,4)
	local nTreasurePlaying_UserId = Get_UserId()
	tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId]  = {}
	table.insert(tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId],nTreasurePlaying_NowLan)
	table.insert(tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId],nTreasurePlaying_LanOne)
	table.insert(tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId],nTreasurePlaying_LanTwo)
end

-- 挖陷阱
function TreasurePlaying_DigTrap()
	User_SetExplore(2,tTreasurePlaying_Text["DigTrap"],220,"</F>TreasurePlaying_SureDigTrap")
end
function TreasurePlaying_SureDigTrap(nTreasurePlaying_UserId)
	TreasurePlaying_Effect(8,nTreasurePlaying_UserId)
	Sys_MsgBox(tTreasurePlaying_Text["DigTrapSuc"],nil,nil,nTreasurePlaying_UserId)
end

-- 离开陷阱
function TreasurePlaying_TrapLeaveFunc()
	TreasurePlaying_LeaveInstance()
end
--------------------------------------怪物掉落
-- 事件2
function TreasurePlaying_KillMonsterTwo(nTreasurePlaying_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		return
	end
	
	-- 怪物数量减少
	local nTreasurePlaying_MapId = Get_UserMapId()
	Monster_Death(nTreasurePlaying_MonsterId,nTreasurePlaying_MapId)
	-- 事件
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3)
	
	local nTreasurePlaying_Type = TreasurePlaying_GetStcValue(5)
	local bTreasurePlaying_Open = false
	local sTreasurePlaying_LastTip = ""
	if nTreasurePlaying_Type == 1 then
		if TreasurePlaying_FirstDelItem() then
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
			sTreasurePlaying_LastTip = tTreasurePlaying_Text["OpenTwoBoxFail3"]
		else
			TreasurePlaying_LeaveInstance()
		end
	else
		-- 事件成功次数+1
		-- TreasurePlaying_AddStcValue(2,1)
		bTreasurePlaying_Open = true
		if TreasurePlaying_FirstDelItem() then
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
			sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenTwoBoxSuc1"],sTreasurePlaying_Reward)
		else
			TreasurePlaying_LeaveInstance()
		end
	end
	
	TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
end

-- 事件3
function TreasurePlaying_KillMonsterThree(nTreasurePlaying_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		return
	end
	
	-- 事件
	local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3)
	local bTreasurePlaying_Open = false
	local sTreasurePlaying_LastTip = ""
	-- 如果是机灵鬼
	local nTreasurePlaying_SucType = TreasurePlaying_GetStcValue(5)
	if nTreasurePlaying_MonsterId == tTreasurePlaying_RefreshMonster[3]["MonsterId"] then
		-- 成功
		if TreasurePlaying_FirstDelItem() then
			if nTreasurePlaying_SucType == 1 then
				bTreasurePlaying_Open = true
				local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
				sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenThreeBoxSuc1"],sTreasurePlaying_Reward)
			else
				local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
				sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenThreeBoxSuc1"],sTreasurePlaying_Reward)
			end
			TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
		else
			TreasurePlaying_LeaveInstance()
		end
		return
	end
	-- 怪物必须杀三次
	local bTreasurePlaying_KillLast = false
	local nTreasurePlaying_NextMonster = 0
	local nTreasurePlaying_Index = 0
	for i=1,6 do
		local tTreasurePlaying_MonsterId = tTreasurePlaying_RefreshNpc[i]["MonsterId"]
		nTreasurePlaying_Index = i
		if nTreasurePlaying_MonsterId == tTreasurePlaying_MonsterId[3] then
			bTreasurePlaying_KillLast = true
			break
		end
		if nTreasurePlaying_MonsterId == tTreasurePlaying_MonsterId[1] then
			nTreasurePlaying_NextMonster = tTreasurePlaying_MonsterId[2]
			break
		end
		if nTreasurePlaying_MonsterId == tTreasurePlaying_MonsterId[2] then
			nTreasurePlaying_NextMonster = tTreasurePlaying_MonsterId[3]
			break
		end
	end
	
	
	local sTreasurePlaying_MonsterName = tTreasurePlaying_Text["MonsterName"][nTreasurePlaying_Index]
	-- 完成任务
	if bTreasurePlaying_KillLast == true then
		if TreasurePlaying_FirstDelItem() then
			-- 成功
			if nTreasurePlaying_SucType == 1 then
				bTreasurePlaying_Open = true
				local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
				sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenThreeBoxFail1"],sTreasurePlaying_MonsterName,sTreasurePlaying_Reward)
			else
				local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
				sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenThreeBoxFail1"],sTreasurePlaying_MonsterName,sTreasurePlaying_Reward)
			end
			TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
		else
			TreasurePlaying_LeaveInstance()
		end
		return
	end
	
	if nTreasurePlaying_NextMonster ~= 0 then
		-- 初始化
		local tTreasurePlaying_RealInfo = tTreasurePlaying_RefreshMonster[nTreasurePlaying_Incident]
		local nTreasurePlaying_MapId = Get_UserMapId()
		local nTreasurePlaying_GenId = tTreasurePlaying_RealInfo["Generator"]
		local tTreasurePlaying_Pos = tTreasurePlaying_RealInfo["Pos"][2]
		Monster_AddAndCount(nTreasurePlaying_MapId,tTreasurePlaying_Pos[1],tTreasurePlaying_Pos[2],nTreasurePlaying_GenId,nTreasurePlaying_NextMonster)
		User_TalkChannel2005(tTreasurePlaying_Text["OpenThreeBoxFail3"])
	end
end

-- 事件4
function TreasurePlaying_KillMonsterFour(nTreasurePlaying_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tTreasurePlaying_Count["ActivityTime"]) then
		return
	end
	
	-- 怪物数量减少
	local nTreasurePlaying_MapId = Get_UserMapId()
	Monster_Death(nTreasurePlaying_MonsterId,nTreasurePlaying_MapId)
	local nTreasurePlaying_MonsterNum = Get_SysTempData(1,nTreasurePlaying_MapId,nTreasurePlaying_MonsterId)
	
	local nTreasurePlaying_UserId = Get_UserId()
	-- User_TalkChannel2005(string.format("aa%s",tTreasurePlaying_OpenNum[nTreasurePlaying_UserId]))
	-- 开启宝箱四次方算成功
	if nTreasurePlaying_MonsterNum == 0 and tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] == 4 then
		-- 事件成功次数+1
		-- TreasurePlaying_AddStcValue(2,1)
		if TreasurePlaying_FirstDelItem() then
			local nTreasurePlaying_Incident = TreasurePlaying_GetStcValue(3,nTreasurePlaying_UserId)
			local bTreasurePlaying_Open = true
			local sTreasurePlaying_Reward = TreasureMapReward_GetItem(nTreasurePlaying_Incident,bTreasurePlaying_Open)
			local sTreasurePlaying_LastTip = string.format(tTreasurePlaying_Text["OpenFourBoxSuc"],sTreasurePlaying_Reward)
			TreasurePlaying_FinishIncident(nTreasurePlaying_Incident,sTreasurePlaying_LastTip)
		else
			TreasurePlaying_LeaveInstance()
		end
		tTreasurePlaying_OpenNum[nTreasurePlaying_UserId] = 0
	elseif nTreasurePlaying_MonsterNum == 0 then
		Sys_MsgBox(tTreasurePlaying_Text["KillFourTip"])
	end
end
--------------------------------------NPC模块--------------------------------------
-- 26019,'桃太郎'
tNpcFace[2392] = 68
tNpcGossip[26019] = tNpcGossip[26019] or DefaultNpc:new{}
tNpcGossip[26019]["OptionHidden"] = 1
tNpcGossip[26019]["DialogueText"] = tTreasurePlaying_Text[26019] 
tNpcGossip[26019]["Text1-1"] = {111,112,113}
tNpcGossip[26019]["tOption1-1"] = {111}
tNpcGossip[26019]["ChkFunc1-1"] = function ()
	local nTreasurePlaying_Data = TreasurePlaying_GetStcValue(5)
	local sTreasurePlaying_BasicTrue = tTreasurePlaying_Text[26019]["Text112"]
	local sTreasurePlaying_BasicFalse = tTreasurePlaying_Text[26020]["Text112"]
	if nTreasurePlaying_Data == tTreasurePlaying_Count["OneNpcID"] then
		tNpcGossip[26019]["Text112"] = string.format(sTreasurePlaying_BasicTrue,tTreasurePlaying_Text["Suspension"][2],tTreasurePlaying_Text["Suspension"][1])
	else
		tNpcGossip[26019]["Text112"] = string.format(sTreasurePlaying_BasicFalse,tTreasurePlaying_Text["Suspension"][2],tTreasurePlaying_Text["Suspension"][1])
	end
	return true
end

-- 26020,'桃次郎'
tNpcFace[2393] = 68
tNpcGossip[26020] = tNpcGossip[26020] or DefaultNpc:new{}
tNpcGossip[26020]["OptionHidden"] = 1
tNpcGossip[26020]["DialogueText"] = tTreasurePlaying_Text[26020] 
tNpcGossip[26020]["Text1-1"] = {111,112,113}
tNpcGossip[26020]["tOption1-1"] = {111}
tNpcGossip[26020]["ChkFunc1-1"] = function ()
	local  nTreasurePlaying_Data = TreasurePlaying_GetStcValue(5)
	local sTreasurePlaying_BasicTrue = tTreasurePlaying_Text[26019]["Text112"]
	local sTreasurePlaying_BasicFalse = tTreasurePlaying_Text[26020]["Text112"]
	if nTreasurePlaying_Data == tTreasurePlaying_Count["OneNpcID"] then
		tNpcGossip[26020]["Text112"] = string.format(sTreasurePlaying_BasicTrue,tTreasurePlaying_Text["Suspension"][1],tTreasurePlaying_Text["Suspension"][2])
	else
		tNpcGossip[26020]["Text112"] = string.format(sTreasurePlaying_BasicFalse,tTreasurePlaying_Text["Suspension"][1],tTreasurePlaying_Text["Suspension"][2])
	end
	return true
end

-- 26021,'红色宝箱'
tNpcGossip[26021] = tNpcGossip[26021] or DefaultNpc:new{}
tNpcGossip[26021]["OptionHidden"] = 1
tNpcGossip[26021]["DialogueText"] = tTreasurePlaying_Text[26021] 
tNpcGossip[26021]["Text1-1"] = {111,112,113}
tNpcGossip[26021]["tOption1-1"] = {111,112}
tNpcGossip[26021]["ChkFunc1-1"] = function ()
	local sTreasurePlaying_BasicOne = tTreasurePlaying_Text[26021]["Text112"]
	tNpcGossip[26021]["Text112"] = string.format(sTreasurePlaying_BasicOne,tTreasurePlaying_Text["Suspension"][2])
	local sTreasurePlaying_BasicTwo = tTreasurePlaying_Text[26021]["Text113"]
	tNpcGossip[26021]["Text113"] = string.format(sTreasurePlaying_BasicTwo,tTreasurePlaying_Text["Suspension"][1])
	return true
end
tNpcGossip[26021]["OptionFunc111"] = "TreasurePlaying_OpenOneBox</N>26021"

-- 26022,'绿色宝箱'
tNpcGossip[26022] = tNpcGossip[26022] or DefaultNpc:new{}
tNpcGossip[26022]["OptionHidden"] = 1
tNpcGossip[26022]["DialogueText"] = tTreasurePlaying_Text[26022] 
tNpcGossip[26022]["Text1-1"] = {111,112,113}
tNpcGossip[26022]["tOption1-1"] = {111,112}
tNpcGossip[26022]["ChkFunc1-1"] = function ()
	local sTreasurePlaying_BasicOne = tTreasurePlaying_Text[26022]["Text112"]
	tNpcGossip[26022]["Text112"] = string.format(sTreasurePlaying_BasicOne,tTreasurePlaying_Text["Suspension"][2])
	local sTreasurePlaying_BasicTwo = tTreasurePlaying_Text[26022]["Text113"]
	tNpcGossip[26022]["Text113"] = string.format(sTreasurePlaying_BasicTwo,tTreasurePlaying_Text["Suspension"][1])
	return true
end
tNpcGossip[26022]["OptionFunc111"] = "TreasurePlaying_OpenOneBox</N>26022"


-- 26023,'可疑的宝箱'
tNpcGossip[26023] = tNpcGossip[26023] or DefaultNpc:new{}
tNpcGossip[26023]["OptionHidden"] = 1
tNpcGossip[26023]["DialogueText"] = tTreasurePlaying_Text[26023] 
tNpcGossip[26023]["Text1-1"] = {111,112,113}
tNpcGossip[26023]["tOption1-1"] = {111,112}
tNpcGossip[26023]["ChkFunc1-1"] = function ()
	local nTreasurePlaying_UserId = Get_UserId()
	local nTreasurePlaying_NowLan = 1--User_ChkLanguage()
	local tTreasurePlaying_Lan = tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId] or {}
	local nTreasurePlaying_IndexOne = tTreasurePlaying_Lan[1] or nTreasurePlaying_NowLan
	local sTreasurePlaying_BasicOne = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text112"]
	local nSuspensionIndexOne,nSuspensionIndexTwo = TreasurePlaying_GetSuspension(nTreasurePlaying_IndexOne)
	tNpcGossip[26023]["Text112"] = string.format(sTreasurePlaying_BasicOne,tTreasurePlaying_Text["Suspension"][nSuspensionIndexOne])
	local sTreasurePlaying_BasicTwo = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text113"]
	tNpcGossip[26023]["Text113"] = string.format(sTreasurePlaying_BasicTwo,tTreasurePlaying_Text["Suspension"][nSuspensionIndexTwo])
	tNpcGossip[26023]["Text111"] = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text111"]
	return true
end
-- 1、打开它
tNpcGossip[26023]["OptionFunc111"] = "TreasurePlaying_OpenTwoBox</N>26023"
-- 2、攻击它
tNpcGossip[26023]["OptionFunc112"] = "TreasurePlaying_AttackTwoBox</N>26023"

-- 26024,'可疑的宝箱'
tNpcGossip[26024] = tNpcGossip[26024] or DefaultNpc:new{}
tNpcGossip[26024]["OptionHidden"] = 1
tNpcGossip[26024]["DialogueText"] = tTreasurePlaying_Text[26024] 
tNpcGossip[26024]["Text1-1"] = {111,112,113}
tNpcGossip[26024]["tOption1-1"] = {111,112}
tNpcGossip[26024]["ChkFunc1-1"] = function ()
	local nTreasurePlaying_UserId = Get_UserId()
	local nTreasurePlaying_NowLan = 1--User_ChkLanguage()
	local tTreasurePlaying_Lan = tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId] or {}
	local nTreasurePlaying_IndexOne = tTreasurePlaying_Lan[2] or nTreasurePlaying_NowLan
	local sTreasurePlaying_BasicOne = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text112"]
	local nSuspensionIndexOne,nSuspensionIndexTwo = TreasurePlaying_GetSuspension(nTreasurePlaying_IndexOne)
	tNpcGossip[26024]["Text112"] = string.format(sTreasurePlaying_BasicOne,tTreasurePlaying_Text["Suspension"][nSuspensionIndexOne])
	local sTreasurePlaying_BasicTwo = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text113"]
	tNpcGossip[26024]["Text113"] = string.format(sTreasurePlaying_BasicTwo,tTreasurePlaying_Text["Suspension"][nSuspensionIndexTwo])
	tNpcGossip[26024]["Text111"] = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text111"]
	return true
end
-- 1、打开它
tNpcGossip[26024]["OptionFunc111"] = "TreasurePlaying_OpenTwoBox</N>26024"
-- 2、攻击它
tNpcGossip[26024]["OptionFunc112"] = "TreasurePlaying_AttackTwoBox</N>26024"

-- 26025,'可疑的宝箱'
tNpcGossip[26025] = tNpcGossip[26025] or DefaultNpc:new{}
tNpcGossip[26025]["OptionHidden"] = 1
tNpcGossip[26025]["DialogueText"] = tTreasurePlaying_Text[26025] 
tNpcGossip[26025]["Text1-1"] = {111,112,113}
tNpcGossip[26025]["tOption1-1"] = {111,112}
tNpcGossip[26025]["ChkFunc1-1"] = function ()
	local nTreasurePlaying_UserId = Get_UserId()
	local nTreasurePlaying_NowLan = 1--User_ChkLanguage()
	local tTreasurePlaying_Lan = tTreasurePlaying_TwoRandomLan[nTreasurePlaying_UserId] or {}
	local nTreasurePlaying_IndexOne = tTreasurePlaying_Lan[3] or nTreasurePlaying_NowLan
	local sTreasurePlaying_BasicOne = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text112"]
	local nSuspensionIndexOne,nSuspensionIndexTwo = TreasurePlaying_GetSuspension(nTreasurePlaying_IndexOne)
	tNpcGossip[26025]["Text112"] = string.format(sTreasurePlaying_BasicOne,tTreasurePlaying_Text["Suspension"][nSuspensionIndexOne])
	local sTreasurePlaying_BasicTwo = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text113"]
	tNpcGossip[26025]["Text113"] = string.format(sTreasurePlaying_BasicTwo,tTreasurePlaying_Text["Suspension"][nSuspensionIndexTwo])
	tNpcGossip[26025]["Text111"] = tTreasurePlaying_Text["Two"][nTreasurePlaying_IndexOne]["Text111"]
	return true
end
-- 1、打开它
tNpcGossip[26025]["OptionFunc111"] = "TreasurePlaying_OpenTwoBox</N>26025"
-- 2、攻击它
tNpcGossip[26025]["OptionFunc112"] = "TreasurePlaying_AttackTwoBox</N>26025"

-- 26026,'超大怪物'
tNpcGossip[26026] = tNpcGossip[26026] or DefaultNpc:new{}
tNpcGossip[26026]["OptionHidden"] = 1
tNpcGossip[26026]["DialogueText"] = tTreasurePlaying_Text[26026] 
tNpcGossip[26026]["Text1-1"] = {111,112,113}
tNpcGossip[26026]["tOption1-1"] = {111,112}
tNpcGossip[26026]["ChkFunc1-1"] = function ()
	local nTreasurePlaying_UserId = Get_UserId()
	local nTreasurePlaying_NowLan = 1--User_ChkLanguage()
	local tTreasurePlaying_Lan = tTreasurePlaying_ThreeRandomLan[nTreasurePlaying_UserId] or {}
	local nTreasurePlaying_IndexOne = tTreasurePlaying_Lan[1] or nTreasurePlaying_NowLan
	local nTreasurePlaying_IndexTwo = tTreasurePlaying_Lan[2] or nTreasurePlaying_NowLan
	local tTreasurePlaying_TextIndex = tTreasurePlaying_Text["Three"][nTreasurePlaying_IndexOne][nTreasurePlaying_IndexOne]
	tNpcGossip[26026]["Text111"] = tTreasurePlaying_TextIndex["Text111"]
	tNpcGossip[26026]["Text112"] = tTreasurePlaying_TextIndex["Text112"]
	tNpcGossip[26026]["Text113"] = tTreasurePlaying_TextIndex["Text113"]
	return true
end
-- 1、陪它聊聊
-- 2、你一定是机灵鬼假扮的，看剑！
-- 【成功，是怪物】
tNpcGossip[26026]["Text2-1"] = {211,212,213}
tNpcGossip[26026]["tOption2-1"] = {211}
-- 【失败，是机灵鬼假扮的】
tNpcGossip[26026]["Text2-2"] = {221,222,223,224}
tNpcGossip[26026]["tOption2-2"] = {221}

-- 26027,'超小怪物'
tNpcGossip[26027] = tNpcGossip[26026] 
-- 头像
tNpcFace[5388] = 200
tNpcFace[5389] = 200
tNpcFace[6546] = 200
tNpcFace[6547] = 200
tNpcFace[6548] = 200
tNpcFace[6549] = 200
tNpcFace[6550] = 200
tNpcFace[6551] = 200
tNpcFace[6552] = 200
tNpcFace[6370] = 200
tNpcFace[6371] = 200
tNpcFace[6372] = 200
tNpcFace[6373] = 200
tNpcFace[6374] = 200

-- 26028,'瑰丽彩蛋'
tNpcGossip[26028] = tNpcGossip[26028] or DefaultNpc:new{}
tNpcGossip[26028]["OptionHidden"] = 1
tNpcGossip[26028]["DialogueText"] = tTreasurePlaying_Text[26028] 
tNpcGossip[26028]["Text1-1"] = {111,112}
tNpcGossip[26028]["tOption1-1"] = {111,112}
-- 1、打开它
tNpcGossip[26028]["OptionFunc111"] = "TreasurePlaying_OpenFourBox</N>26028"

-- 26029,'缤纷彩蛋'
tNpcGossip[26029] = tNpcGossip[26028]
-- 26030,'旖旎彩蛋'
tNpcGossip[26030] = tNpcGossip[26028]
-- 26031,'斑斓彩蛋'
tNpcGossip[26031] = tNpcGossip[26028]

-- 26062,'宝箱'
tNpcGossip[26062] = tNpcGossip[26062] or DefaultNpc:new{}
tNpcGossip[26062]["OptionHidden"] = 1
tNpcGossip[26062]["DialogueText"] = tTreasurePlaying_Text[26062] 
tNpcGossip[26062]["Text1-1"] = {111,112}
tNpcGossip[26062]["tOption1-1"] = {111,112}
tNpcGossip[26062]["OptionFunc111"] = "TreasurePlaying_DigTrap</N>26062"
tNpcGossip[26062]["Text1-2"] = {121,122,123}
tNpcGossip[26062]["tOption1-2"] = {121,122}
tNpcGossip[26062]["OptionFunc121"] = "TreasurePlaying_DigTrap</N>26062"

--------------------------------------物品模块--------------------------------------
-- 3600244,'藏宝图'
tItemFace[3600244] = 2855
tItem[3600244] = tItem[3600244] or {}
tItem[3600244]["Function"] = function(nTreasurePlaying_ItemId,sItemName)
	TreasurePlaying_UseItem(nTreasurePlaying_ItemId)
end
tItem[3600244]["DialogueText"] = tTreasurePlaying_Text[3600244]
tItem[3600244]["Text1-1"] = {111,112}
tItem[3600244]["tOption1-1"] = {111,112,113}
-- 自动寻找宝藏（100修行值） 
tItem[3600244]["OptionFunc111"] = "TreasurePlaying_ChooseGoTo</N>3600244</N>1"
-- 传送至宝藏位置（10万银两）
tItem[3600244]["OptionFunc112"] = "TreasurePlaying_ChooseGoTo</N>3600244</N>2"
-- 返回双龙城
-- tItem[3600244]["OptionFunc113"] = "TreasurePlaying_LeaveInstance</N>3600244"
-- 我要自己去找

-- 接2、花费X天石（赠）传送到藏宝地点
-- 【二次确认】
tItem[3600244]["Text2-1"] = {211}
tItem[3600244]["tOption2-1"] = {211,212}
tItem[3600244]["OptionFunc211"] = "TreasurePlaying_SureChgMap</N>3600244"
-- 屏蔽二次确认
tItem[3600244]["OptionFunc212"] = "TreasurePlaying_AddMark</N>3600244"


--------------------------------------陷阱模块--------------------------------------
-- 藏宝图陷阱
tTrap[2545] = tTrap[2545] or {}
tTrap[2545]["Function"] = function(nTrapId,nTrapType)
	TreasurePlaying_TrapFunc(nTrapId,nTrapType)
end
-- 离开陷阱
tTrap[2547] = tTrap[2547] or {}
tTrap[2547]["Function"] = function(nTrapId,nTrapType)
	TreasurePlaying_TrapLeaveFunc(nTrapId,nTrapType)
end
--------------------------------------怪物掉落-------------------------------------------
local tTreasurePlaying_KillMonster = {}
	-- 事件2
	tTreasurePlaying_KillMonster[1] = {}
	tTreasurePlaying_KillMonster[1]["ActivityTime"] = tTreasurePlaying_Count["ActivityTime"]
	tTreasurePlaying_KillMonster[1]["Function"] = TreasurePlaying_KillMonsterTwo
	tTreasurePlaying_KillMonster[1]["MonsterId"] = {6274}
	-- 事件3
	tTreasurePlaying_KillMonster[2] = {}
	tTreasurePlaying_KillMonster[2]["ActivityTime"] = tTreasurePlaying_Count["ActivityTime"]
	tTreasurePlaying_KillMonster[2]["Function"] = TreasurePlaying_KillMonsterThree
	tTreasurePlaying_KillMonster[2]["MonsterId"] = {6275,6276,6277,6278,6279,6280,6281,6282,6283,6284,6285,6286,6287,6288,4044,4045,4046,4047,4048,4049}
	-- 事件4
	tTreasurePlaying_KillMonster[3] = {}
	tTreasurePlaying_KillMonster[3]["ActivityTime"] = tTreasurePlaying_Count["ActivityTime"]
	tTreasurePlaying_KillMonster[3]["Function"] = TreasurePlaying_KillMonsterFour
	tTreasurePlaying_KillMonster[3]["MonsterId"] = {6288,6289,6290,6291,6292,6293,6294,6295,6296,6297,6298}
	
table.insert(tMonsterDrop_AreaLoad,tTreasurePlaying_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tTreasurePlaying_KillMonster[2])
table.insert(tMonsterDrop_AreaLoad,tTreasurePlaying_KillMonster[3])
-- 激情服
table.insert(tMonsterDrop_AreaLoad_NoGift,tTreasurePlaying_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad_NoGift,tTreasurePlaying_KillMonster[2])
table.insert(tMonsterDrop_AreaLoad_NoGift,tTreasurePlaying_KillMonster[3])
