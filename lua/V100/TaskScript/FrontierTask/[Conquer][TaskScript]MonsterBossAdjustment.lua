------------------------------------------------------------------------------------
--Name:		180628[简体征服][任务脚本]调整版本制作-国境调整
--Creator: 	兰瑞妹
--Created:	2018/06/28
------------------------------------------------------------------------------------

-- 命名前缀
-- Monster_BossAdjustment_

-- logid 12001104

-- #stc 掩码说明 
-- #stc(179,18) 玩家每周领全民嘉奖礼包 50个上限
-- #stc(179,19) 玩家每周领普天同庆礼包 3个上限
-- #stc(179,37) 玩家每天使用国境伏魔豪礼包次数 5个上限
-- #stc(181,83) 记入【狱火邪凰】至宝箱 和 4个boss的秘宝箱  使用次数

-- GlobalId 52759
--动态存储表说明
----------	存储位------存储说明--
----------	data0------记录玩家可以小boss的礼包标志
----------	data1------记录玩家可以大boss的礼包标志
----------	datastr5---清理标志

-- taskid 3702

-- 
tRankingFunc_Info[17400] = {}
tRankingFunc_Info[17400]["DayTime"] = {}
tRankingFunc_Info[17400]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[17400]["Reset"] = 1
tRankingFunc_Info[17400]["Global"] = {52939,52940}
tRankingFunc_Info[17400]["RankNum"] = 5
tRankingFunc_Info[17400]["RankMode"] = 1



-- 常量表
local tMonster_BossAdjustment_Count = {}
	-- 2转以上侠士
	tMonster_BossAdjustment_Count["Level"] = 0
	tMonster_BossAdjustment_Count["Mete"] = 2
	
	-- 排行榜
	tMonster_BossAdjustment_Count["RankIndex"] = 17400
	-- 清理时间
	tMonster_BossAdjustment_Count["ClearTime"] = "00:00 00:02"
	
	-- 动态码id
	tMonster_BossAdjustment_Count["GlobalId"] = 52759
	
	-- 跨服地图
	tMonster_BossAdjustment_Count["MapId"] = 3935
	tMonster_BossAdjustment_Count["TwinCity"] = 1002
	
	-- 进入跨服taskid标志
	tMonster_BossAdjustment_Count["TaskId"] = 35034
	
	-- 杀怪参与奖物品id
	tMonster_BossAdjustment_Count["Join"] = 3600045
	
	-- 小boss秘宝箱
	tMonster_BossAdjustment_Count["BasicItemId"] = 3600046
	
	-- 发邮件参数
	tMonster_BossAdjustment_Count["MailExistDay"] = 30
	tMonster_BossAdjustment_Count["RankTotal"] = 10
	
	
	tMonster_BossAdjustment_Count["MonsterId"] = {}
	--boss
	tMonster_BossAdjustment_Count["MonsterId"][1] = 4816
	tMonster_BossAdjustment_Count["MonsterId"][2] = {}
	tMonster_BossAdjustment_Count["MonsterId"][2][1] = 4812
	tMonster_BossAdjustment_Count["MonsterId"][2][2] = 4813
	tMonster_BossAdjustment_Count["MonsterId"][2][3] = 4814
	tMonster_BossAdjustment_Count["MonsterId"][2][4] = 4815
	-- 每小时刷新
	tMonster_BossAdjustment_Count["MonsterId"][3] = {}
	tMonster_BossAdjustment_Count["MonsterId"][3][1] = 4808
	tMonster_BossAdjustment_Count["MonsterId"][3][2] = 4809
	tMonster_BossAdjustment_Count["MonsterId"][3][3] = 4810
	tMonster_BossAdjustment_Count["MonsterId"][3][4] = 4811
	
	tMonster_BossAdjustment_Count["Refresh"] = {}
	-- 4816,'狱火邪凰'
	tMonster_BossAdjustment_Count["Refresh"][4816] = {}
	tMonster_BossAdjustment_Count["Refresh"][4816]["PosX"] = 386
	tMonster_BossAdjustment_Count["Refresh"][4816]["PosY"] = 386
	-- 每个小时
	tMonster_BossAdjustment_Count["Refresh"]["Monster"] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][1] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][1]["PosX"] = 309
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][1]["PosY"] = 372
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][2] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][2]["PosX"] = 350
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][2]["PosY"] = 305
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][3] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][3]["PosX"] = 468
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][3]["PosY"] = 456
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][4] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][4]["PosX"] = 315
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][4]["PosY"] = 459
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][5] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][5]["PosX"] = 443
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][5]["PosY"] = 329
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][6] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][6]["PosX"] = 266
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][6]["PosY"] = 344
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][7] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][7]["PosX"] = 314
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][7]["PosY"] = 306
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][8] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][8]["PosX"] = 439
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][8]["PosY"] = 283
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][9] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][9]["PosX"] = 436
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][9]["PosY"] = 321
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][10] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][10]["PosX"] = 492
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][10]["PosY"] = 360
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][11] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][11]["PosX"] = 481
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][11]["PosY"] = 440
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][12] = {}
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][12]["PosX"] = 455
	tMonster_BossAdjustment_Count["Refresh"]["Monster"][12]["PosY"] = 468
	
	-- 怪物对应gen
	tMonster_BossAdjustment_Count["GenId"] = {}
	tMonster_BossAdjustment_Count["GenId"][4808] = 25132
	tMonster_BossAdjustment_Count["GenId"][4809] = 25133
	tMonster_BossAdjustment_Count["GenId"][4810] = 25134
	tMonster_BossAdjustment_Count["GenId"][4811] = 25135
	tMonster_BossAdjustment_Count["GenId"][4812] = 25136
	tMonster_BossAdjustment_Count["GenId"][4813] = 25137
	tMonster_BossAdjustment_Count["GenId"][4814] = 25138
	tMonster_BossAdjustment_Count["GenId"][4815] = 25139
	tMonster_BossAdjustment_Count["GenId"][4816] = 25140
	
	-- 怪物对应奖励
	tMonster_BossAdjustment_Count["Reward"] = {}
	tMonster_BossAdjustment_Count["Reward"][4808] = {}
	tMonster_BossAdjustment_Count["Reward"][4808]["Kill"] = 3600046
	tMonster_BossAdjustment_Count["Reward"][4808]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingAction"][1] = 97304011
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingAction"][2] = 97304012
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingAction"][3] = 97304013
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingAction"][4] = 97304014
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingItem"][1] = 3600047
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingItem"][2] = 3600048
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingItem"][3] = 3600049
	tMonster_BossAdjustment_Count["Reward"][4808]["RankingItem"][4] = 3600050
	tMonster_BossAdjustment_Count["Reward"][4809] = {}
	tMonster_BossAdjustment_Count["Reward"][4809]["Kill"] = 3600051
	tMonster_BossAdjustment_Count["Reward"][4809]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingAction"][1] = 97304015
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingAction"][2] = 97304016
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingAction"][3] = 97304017
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingAction"][4] = 97304018
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingItem"][1] = 3600052
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingItem"][2] = 3600053
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingItem"][3] = 3600054
	tMonster_BossAdjustment_Count["Reward"][4809]["RankingItem"][4] = 3600055
	tMonster_BossAdjustment_Count["Reward"][4810] = {}
	tMonster_BossAdjustment_Count["Reward"][4810]["Kill"] = 3600056
	tMonster_BossAdjustment_Count["Reward"][4810]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingAction"][1] = 97304019
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingAction"][2] = 97304020
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingAction"][3] = 97304021
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingAction"][4] = 97304022
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingItem"][1] = 3600057
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingItem"][2] = 3600058
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingItem"][3] = 3600059
	tMonster_BossAdjustment_Count["Reward"][4810]["RankingItem"][4] = 3600060
	tMonster_BossAdjustment_Count["Reward"][4811] = {}
	tMonster_BossAdjustment_Count["Reward"][4811]["Kill"] = 3600061
	tMonster_BossAdjustment_Count["Reward"][4811]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingAction"][1] = 97304023
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingAction"][2] = 97304024
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingAction"][3] = 97304025
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingAction"][4] = 97304026
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingItem"][1] = 3600062
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingItem"][2] = 3600063
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingItem"][3] = 3600064
	tMonster_BossAdjustment_Count["Reward"][4811]["RankingItem"][4] = 3600065
	tMonster_BossAdjustment_Count["Reward"][4812] = {}
	tMonster_BossAdjustment_Count["Reward"][4812]["Kill"] = 3600046
	tMonster_BossAdjustment_Count["Reward"][4812]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingAction"][1] = 97304011
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingAction"][2] = 97304012
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingAction"][3] = 97304013
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingAction"][4] = 97304014
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingItem"][1] = 3600047
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingItem"][2] = 3600048
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingItem"][3] = 3600049
	tMonster_BossAdjustment_Count["Reward"][4812]["RankingItem"][4] = 3600050
	tMonster_BossAdjustment_Count["Reward"][4813] = {}
	tMonster_BossAdjustment_Count["Reward"][4813]["Kill"] = 3600051
	tMonster_BossAdjustment_Count["Reward"][4813]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingAction"][1] =97304015
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingAction"][2] =97304016
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingAction"][3] =97304017
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingAction"][4] =97304018
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingItem"][1] = 3600052
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingItem"][2] = 3600053
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingItem"][3] = 3600054
	tMonster_BossAdjustment_Count["Reward"][4813]["RankingItem"][4] = 3600055
	tMonster_BossAdjustment_Count["Reward"][4814] = {}
	tMonster_BossAdjustment_Count["Reward"][4814]["Kill"] = 3600056
	tMonster_BossAdjustment_Count["Reward"][4814]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingAction"][1] = 97304019
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingAction"][2] = 97304020
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingAction"][3] = 97304021
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingAction"][4] = 97304022
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingItem"][1] = 3600057
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingItem"][2] = 3600058
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingItem"][3] = 3600059
	tMonster_BossAdjustment_Count["Reward"][4814]["RankingItem"][4] = 3600060
	tMonster_BossAdjustment_Count["Reward"][4815] = {}
	tMonster_BossAdjustment_Count["Reward"][4815]["Kill"] = 3600061
	tMonster_BossAdjustment_Count["Reward"][4815]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingAction"][1] = 97304023
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingAction"][2] = 97304024
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingAction"][3] = 97304025
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingAction"][4] = 97304026
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingItem"][1] = 3600062
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingItem"][2] = 3600063
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingItem"][3] = 3600064
	tMonster_BossAdjustment_Count["Reward"][4815]["RankingItem"][4] = 3600065
	tMonster_BossAdjustment_Count["Reward"][4816] = {}
	tMonster_BossAdjustment_Count["Reward"][4816]["Kill"] = 3600066
	tMonster_BossAdjustment_Count["Reward"][4816]["JoinAction"] = 97304010
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingAction"] = {}
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingAction"][1] = 97304027
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingAction"][2] = 97304028
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingAction"][3] = 97304029
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingAction"][4] = 97304030
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingItem"] = {}
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingItem"][1] = 3600067
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingItem"][2] = 3600068
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingItem"][3] = 3600069
	tMonster_BossAdjustment_Count["Reward"][4816]["RankingItem"][4] = 3600070
	
	-- 领取全服共享礼包--提示
	tMonster_BossAdjustment_Count["ReceiveTip"] = {}
	-- 全民嘉奖礼包
	tMonster_BossAdjustment_Count["ReceiveTip"][1] = {}
	tMonster_BossAdjustment_Count["ReceiveTip"][1][1] = "502-1"
	tMonster_BossAdjustment_Count["ReceiveTip"][1][2] = "503-2"
	-- 普天同庆礼包
	tMonster_BossAdjustment_Count["ReceiveTip"][2] = {}
	tMonster_BossAdjustment_Count["ReceiveTip"][2][1] = "505-4"
	tMonster_BossAdjustment_Count["ReceiveTip"][2][2] = "506-5"
	
-- Log表
local tMonster_BossAdjustment_Log = {}
	-- 过期删除
	tMonster_BossAdjustment_Log["OverDue"] = "0,0,%d,1,12001104,2,0,0"

-- stc掩码
local tMonster_BossAdjustment_Stc = {}
	-- 玩家每周领全民嘉奖礼包 50个上限
	tMonster_BossAdjustment_Stc[1] = {}
	tMonster_BossAdjustment_Stc[1]["EventType"] = 179
	tMonster_BossAdjustment_Stc[1]["DataType"] = 18
	tMonster_BossAdjustment_Stc[1]["Limit"] = 50
	-- 玩家每周领普天同庆礼包 3个上限
	tMonster_BossAdjustment_Stc[2] = {}
	tMonster_BossAdjustment_Stc[2]["EventType"] = 179
	tMonster_BossAdjustment_Stc[2]["DataType"] = 19
	tMonster_BossAdjustment_Stc[2]["Limit"] = 3
	-- 玩家每天使用国境伏魔豪礼包次数 5个上限
	tMonster_BossAdjustment_Stc[3] = {}
	tMonster_BossAdjustment_Stc[3]["EventType"] = 179
	tMonster_BossAdjustment_Stc[3]["DataType"] = 37
	tMonster_BossAdjustment_Stc[3]["Limit"] = 5
	
	--记入【狱火邪凰】至宝箱 和 4个boss的秘宝箱  使用次数
	tMonster_BossAdjustment_Stc[4] = {}
	tMonster_BossAdjustment_Stc[4]["EventType"] = 181
	tMonster_BossAdjustment_Stc[4]["DataType"] = 83
	


-- 生成动态npc个数
local tMonster_BossAdjustment_NpcNum = {}
-- 动态NPC的命名存放
local tMonster_BossAdjustment_Password = {}
-- 大BOSS附件小怪刷新的坐标
local tMonster_BossAdjustment_BigBossPos = {{371,375},{383,374},{386,389},{389,399},{397,372},{395,401},{376,387},{405,382}}
-- 宝箱刷新的坐标
local tMonster_BossAdjustment_PoolPos = {{2,0},{-2,0},{2,2},{2,-2},{0,2},{0,-2},{3,0},{-3,0}}

-- 动态npc对应数据
local tMonster_BossAdjustment_PoolData = {}
	-- 23060,'气力值伏魔宝箱'
	tMonster_BossAdjustment_PoolData[23060] = {}
	tMonster_BossAdjustment_PoolData[23060]["ActionId"] = 97304031
	tMonster_BossAdjustment_PoolData[23060]["NpcFace"] = 12990
	tMonster_BossAdjustment_PoolData[23060]["RewardItem"] = 3600071
	tMonster_BossAdjustment_PoolData[23060]["MonsterId"] = 4913
	tMonster_BossAdjustment_PoolData[23060]["GenId"] = 26465
	-- 23061,'星陨石伏魔宝箱'
	tMonster_BossAdjustment_PoolData[23061] = {}
	tMonster_BossAdjustment_PoolData[23061]["ActionId"] = 97304032
	tMonster_BossAdjustment_PoolData[23061]["NpcFace"] = 13000
	tMonster_BossAdjustment_PoolData[23061]["RewardItem"] = 3600072
	tMonster_BossAdjustment_PoolData[23061]["MonsterId"] = 4914
	tMonster_BossAdjustment_PoolData[23061]["GenId"] = 26466
	-- 23062,'赤炼石伏魔宝箱'
	tMonster_BossAdjustment_PoolData[23062] = {}
	tMonster_BossAdjustment_PoolData[23062]["ActionId"] = 97304033
	tMonster_BossAdjustment_PoolData[23062]["NpcFace"] = 13010
	tMonster_BossAdjustment_PoolData[23062]["RewardItem"] = 3600073
	tMonster_BossAdjustment_PoolData[23062]["MonsterId"] = 4915
	tMonster_BossAdjustment_PoolData[23062]["GenId"] = 26467
	-- 23063,'天石（赠）伏魔宝箱'
	tMonster_BossAdjustment_PoolData[23063] = {}
	tMonster_BossAdjustment_PoolData[23063]["ActionId"] = 97304034
	tMonster_BossAdjustment_PoolData[23063]["NpcFace"] = 13020
	tMonster_BossAdjustment_PoolData[23063]["RewardItem"] = 3600074
	tMonster_BossAdjustment_PoolData[23063]["MonsterId"] = 4916
	tMonster_BossAdjustment_PoolData[23063]["GenId"] = 26468
	-- 23064,'气力值邪凰宝箱'
	tMonster_BossAdjustment_PoolData[23064] = {}
	tMonster_BossAdjustment_PoolData[23064]["ActionId"] = 97304035
	tMonster_BossAdjustment_PoolData[23064]["NpcFace"] = 13030
	tMonster_BossAdjustment_PoolData[23064]["RewardItem"] = 3600075
	tMonster_BossAdjustment_PoolData[23064]["MonsterId"] = 4917
	tMonster_BossAdjustment_PoolData[23064]["GenId"] = 26469
	-- 23065,'星陨石邪凰宝箱'
	tMonster_BossAdjustment_PoolData[23065] = {}
	tMonster_BossAdjustment_PoolData[23065]["ActionId"] = 97304036
	tMonster_BossAdjustment_PoolData[23065]["NpcFace"] = 13040
	tMonster_BossAdjustment_PoolData[23065]["RewardItem"] = 3600076
	tMonster_BossAdjustment_PoolData[23065]["MonsterId"] = 4918
	tMonster_BossAdjustment_PoolData[23065]["GenId"] = 26470
	-- 23066,'赤炼石邪凰宝箱'
	tMonster_BossAdjustment_PoolData[23066] = {}
	tMonster_BossAdjustment_PoolData[23066]["ActionId"] = 97304037
	tMonster_BossAdjustment_PoolData[23066]["NpcFace"] = 13050
	tMonster_BossAdjustment_PoolData[23066]["RewardItem"] = 3600077
	tMonster_BossAdjustment_PoolData[23066]["MonsterId"] = 4919
	tMonster_BossAdjustment_PoolData[23066]["GenId"] = 26471
	-- 23067,'天石（赠）邪凰宝箱'
	tMonster_BossAdjustment_PoolData[23067] = {}
	tMonster_BossAdjustment_PoolData[23067]["ActionId"] = 97304038
	tMonster_BossAdjustment_PoolData[23067]["NpcFace"] = 13060
	tMonster_BossAdjustment_PoolData[23067]["RewardItem"] = 3600078
	tMonster_BossAdjustment_PoolData[23067]["MonsterId"] = 4920
	tMonster_BossAdjustment_PoolData[23067]["GenId"] = 26472

-- 奖励表
local tMonster_BossAdjustment_Reward = {}
	-- 3600047,'【铁翼狂龙】伏魔宗师包'
	-- 八卦符	3309946	3
	-- 500气力值	直接给	1
	tMonster_BossAdjustment_Reward[3600047] = {}
	tMonster_BossAdjustment_Reward[3600047]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600047]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600047]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600047]["DeleteItem"][1]["Id"] = 3600047
	tMonster_BossAdjustment_Reward[3600047]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600047]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600047]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600047]["RewardItem"][1]["Id"] = 3309946
	tMonster_BossAdjustment_Reward[3600047]["RewardItem"][1]["Attr"] = "0 3"
	tMonster_BossAdjustment_Reward[3600047]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600047]["RewardStrengthValue"]["Value"] = 500
	tMonster_BossAdjustment_Reward[3600047]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600047]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600048,'【铁翼狂龙】伏魔豪杰包'
	-- 八卦符	3309946	2
	-- 300气力值	直接给	1
	tMonster_BossAdjustment_Reward[3600048] = {}
	tMonster_BossAdjustment_Reward[3600048]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600048]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600048]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600048]["DeleteItem"][1]["Id"] = 3600048
	tMonster_BossAdjustment_Reward[3600048]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600048]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600048]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600048]["RewardItem"][1]["Id"] = 3309946
	tMonster_BossAdjustment_Reward[3600048]["RewardItem"][1]["Attr"] = "0 2"
	tMonster_BossAdjustment_Reward[3600048]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600048]["RewardStrengthValue"]["Value"] = 300
	tMonster_BossAdjustment_Reward[3600048]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600048]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600049,'【铁翼狂龙】伏魔高手包'
	-- 八卦符	3309946	1
	-- 100气力值	直接给	1
	tMonster_BossAdjustment_Reward[3600049] = {}
	tMonster_BossAdjustment_Reward[3600049]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600049]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600049]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600049]["DeleteItem"][1]["Id"] = 3600049
	tMonster_BossAdjustment_Reward[3600049]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600049]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600049]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600049]["RewardItem"][1]["Id"] = 3309946
	tMonster_BossAdjustment_Reward[3600049]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600049]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600049]["RewardStrengthValue"]["Value"] = 100
	tMonster_BossAdjustment_Reward[3600049]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600049]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600050,'【铁翼狂龙】伏魔精英包'
	-- 50气力值
	tMonster_BossAdjustment_Reward[3600050] = {}
	tMonster_BossAdjustment_Reward[3600050]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600050]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600050]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600050]["DeleteItem"][1]["Id"] = 3600050
	tMonster_BossAdjustment_Reward[3600050]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600050]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600050]["RewardStrengthValue"]["Value"] = 50
	tMonster_BossAdjustment_Reward[3600050]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600050]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600068,'【狱火邪凰】斩妖豪杰包'
	-- 800气力值	直接给	1
	-- 其他神魂	除BOSS神魂	1 3315497	七阶武器神魂礼包碎片 3315498	七阶防具配饰神魂礼包碎片
	-- 灵兽宝盒	721260	2
	tMonster_BossAdjustment_Reward[3600068] = {}
	tMonster_BossAdjustment_Reward[3600068]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600068]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600068]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600068]["DeleteItem"][1]["Id"] = 3600068
	tMonster_BossAdjustment_Reward[3600068]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][1]["Id"] = 721260
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][1]["Attr"] = "0 2"
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][2] = {}
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][2]["Id"] = 3315497
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][2]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][3] = {}
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][3]["Id"] = 3315498
	tMonster_BossAdjustment_Reward[3600068]["RewardItem"][3]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600068]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600068]["RewardStrengthValue"]["Value"] = 800
	tMonster_BossAdjustment_Reward[3600068]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600068]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600069,'【狱火邪凰】斩妖高手包'
	-- 500气力值	直接给	1
	-- 灵兽宝盒	721260	1
	tMonster_BossAdjustment_Reward[3600069] = {}
	tMonster_BossAdjustment_Reward[3600069]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600069]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600069]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600069]["DeleteItem"][1]["Id"] = 3600069
	tMonster_BossAdjustment_Reward[3600069]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600069]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600069]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600069]["RewardItem"][1]["Id"] = 721260
	tMonster_BossAdjustment_Reward[3600069]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600069]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600069]["RewardStrengthValue"]["Value"] = 500
	tMonster_BossAdjustment_Reward[3600069]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600069]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600070,'【狱火邪凰】斩妖精英包'
	-- 灵兽宝盒	721260	1
	-- 100气力值		1
	tMonster_BossAdjustment_Reward[3600070] = {}
	tMonster_BossAdjustment_Reward[3600070]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600070]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600070]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600070]["DeleteItem"][1]["Id"] = 3600070
	tMonster_BossAdjustment_Reward[3600070]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600070]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600070]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600070]["RewardItem"][1]["Id"] = 721260
	tMonster_BossAdjustment_Reward[3600070]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600070]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600070]["RewardStrengthValue"]["Value"] = 100
	tMonster_BossAdjustment_Reward[3600070]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600070]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600071,'200气力值国境包'
	tMonster_BossAdjustment_Reward[3600071] = {}
	tMonster_BossAdjustment_Reward[3600071]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600071]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600071]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600071]["DeleteItem"][1]["Id"] = 3600071
	tMonster_BossAdjustment_Reward[3600071]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600071]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600071]["RewardStrengthValue"]["Value"] = 200
	tMonster_BossAdjustment_Reward[3600071]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600071]["RewardEffect"]["Effect"] = "angelwing"
	-- 3600072,'明亮星陨石国境包'
	tMonster_BossAdjustment_Reward[3600072] = {}
	tMonster_BossAdjustment_Reward[3600072]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600072]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600072]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600072]["DeleteItem"][1]["Id"] = 3600072
	tMonster_BossAdjustment_Reward[3600072]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600072]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600072]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600072]["RewardItem"][1]["Id"] = 3009001
	tMonster_BossAdjustment_Reward[3600072]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Reward[3600072]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600072]["RewardEffect"]["Effect"] = "angelwing"
	-- 3600073,'+3赤炼石（赠）国境包'
	tMonster_BossAdjustment_Reward[3600073] = {}
	tMonster_BossAdjustment_Reward[3600073]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600073]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600073]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600073]["DeleteItem"][1]["Id"] = 3600073
	tMonster_BossAdjustment_Reward[3600073]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600073]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600073]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600073]["RewardItem"][1]["Id"] = 730003
	tMonster_BossAdjustment_Reward[3600073]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Reward[3600073]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600073]["RewardEffect"]["Effect"] = "angelwing"
	-- 3600074,'40天石（赠）国境包'
	tMonster_BossAdjustment_Reward[3600074] = {}
	tMonster_BossAdjustment_Reward[3600074]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600074]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600074]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600074]["DeleteItem"][1]["Id"] = 3600074
	tMonster_BossAdjustment_Reward[3600074]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600074]["RewardEMoneyMono"] = {}
	tMonster_BossAdjustment_Reward[3600074]["RewardEMoneyMono"]["Value"] = 40
	tMonster_BossAdjustment_Reward[3600074]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600074]["RewardEffect"]["Effect"] = "angelwing"
	-- 3600075,'3000气力值国境豪侠包'
	tMonster_BossAdjustment_Reward[3600075] = {}
	tMonster_BossAdjustment_Reward[3600075]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600075]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600075]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600075]["DeleteItem"][1]["Id"] = 3600075
	tMonster_BossAdjustment_Reward[3600075]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600075]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Reward[3600075]["RewardStrengthValue"]["Value"] = 3000
	tMonster_BossAdjustment_Reward[3600075]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600075]["RewardEffect"]["Effect"] = "angelwing"
	-- 3600076,'晶莹星陨石国境豪侠包'
	tMonster_BossAdjustment_Reward[3600076] = {}
	tMonster_BossAdjustment_Reward[3600076]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600076]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600076]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600076]["DeleteItem"][1]["Id"] = 3600076
	tMonster_BossAdjustment_Reward[3600076]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600076]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600076]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600076]["RewardItem"][1]["Id"] = 3009002
	tMonster_BossAdjustment_Reward[3600076]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Reward[3600076]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600076]["RewardEffect"]["Effect"] = "angelwing"
	-- 3600077,'+5赤炼石（赠）国境豪侠包'
	tMonster_BossAdjustment_Reward[3600077] = {}
	tMonster_BossAdjustment_Reward[3600077]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600077]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600077]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600077]["DeleteItem"][1]["Id"] = 3600077
	tMonster_BossAdjustment_Reward[3600077]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600077]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3600077]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600077]["RewardItem"][1]["Id"] = 730005
	tMonster_BossAdjustment_Reward[3600077]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Reward[3600077]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600077]["RewardEffect"]["Effect"] = "angelwing"
	-- 3600078,'500天石（赠）国境豪侠包'
	tMonster_BossAdjustment_Reward[3600078] = {}
	tMonster_BossAdjustment_Reward[3600078]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3600078]["DeleteItem"] = {}
	tMonster_BossAdjustment_Reward[3600078]["DeleteItem"][1] = {}
	tMonster_BossAdjustment_Reward[3600078]["DeleteItem"][1]["Id"] = 3600078
	tMonster_BossAdjustment_Reward[3600078]["DeleteItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[3600078]["RewardEMoneyMono"] = {}
	tMonster_BossAdjustment_Reward[3600078]["RewardEMoneyMono"]["Value"] = 500
	tMonster_BossAdjustment_Reward[3600078]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3600078]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 获得怪物奖励
	tMonster_BossAdjustment_Reward[1] = {}
	tMonster_BossAdjustment_Reward[1]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[1]["LogStep"] = "1[1]"
	tMonster_BossAdjustment_Reward[1]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[1]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[1]["RewardItem"][1]["Id"] = 3600046
	tMonster_BossAdjustment_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[1]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 参与奖
	tMonster_BossAdjustment_Reward[2] = {}
	tMonster_BossAdjustment_Reward[2]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[2]["LogStep"] = "1[2]"
	tMonster_BossAdjustment_Reward[2]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[2]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[2]["RewardItem"][1]["Id"] = 3600045
	tMonster_BossAdjustment_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[2]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 伤害排行奖励
	tMonster_BossAdjustment_Reward[3] = {}
	tMonster_BossAdjustment_Reward[3]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[3]["LogStep"] = "1[3]"
	tMonster_BossAdjustment_Reward[3]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[3]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[3]["RewardItem"][1]["Id"] = 3600045
	tMonster_BossAdjustment_Reward[3]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tMonster_BossAdjustment_Reward[3]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3310019,'全民嘉奖礼包'
	tMonster_BossAdjustment_Reward[4] = {}
	tMonster_BossAdjustment_Reward[4]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[4]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[4]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[4]["RewardItem"][1]["Id"] = 3310019
	tMonster_BossAdjustment_Reward[4]["RewardItem"][1]["Attr"] = "0 %d"
	tMonster_BossAdjustment_Reward[4]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[4]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3310020,'普天同庆礼包'
	tMonster_BossAdjustment_Reward[5] = {}
	tMonster_BossAdjustment_Reward[5]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[5]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[5]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[5]["RewardItem"][1]["Id"] = 3310020
	tMonster_BossAdjustment_Reward[5]["RewardItem"][1]["Attr"] = "0 %d"
	tMonster_BossAdjustment_Reward[5]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 宝箱开启奖励
	tMonster_BossAdjustment_Reward[6] = {}
	tMonster_BossAdjustment_Reward[6]["LogId"] = 12001104
	tMonster_BossAdjustment_Reward[6]["LogStep"] = "1[4]"
	tMonster_BossAdjustment_Reward[6]["RewardItem"] = {}
	tMonster_BossAdjustment_Reward[6]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Reward[6]["RewardItem"][1]["Id"] = 3600071
	tMonster_BossAdjustment_Reward[6]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Reward[6]["RewardEffect"] = {}
	tMonster_BossAdjustment_Reward[6]["RewardEffect"]["Effect"] = "angelwing"
	
	
local tMonster_BossAdjustment_Random = {}
	-- 3600045,'国境伏魔豪礼包'
	tMonster_BossAdjustment_Random[3600045] = {}
	tMonster_BossAdjustment_Random[3600045][1] = {}
	tMonster_BossAdjustment_Random[3600045][1]["ItemChanceSum"] = 10000
	tMonster_BossAdjustment_Random[3600045][1]["LogId"] = 12001104
	-- 玄灵石抽奖道具	3309945	3			100.00%
	tMonster_BossAdjustment_Random[3600045][1][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][1]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600045][1][1]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][1]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][1]["RewardItem"][1]["Id"] = 3309945
	tMonster_BossAdjustment_Random[3600045][1][1]["RewardItem"][1]["Attr"] = "0 3"

	-- 国境任务完成令	3303085 1			100.00%
	tMonster_BossAdjustment_Random[3600045][1][2] = {}
	tMonster_BossAdjustment_Random[3600045][1][2]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600045][1][2]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][2]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][2]["RewardItem"][1]["Id"] = 3303085
	tMonster_BossAdjustment_Random[3600045][1][2]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 明亮星陨石	3009001	1		激活2天	10.00%
	tMonster_BossAdjustment_Random[3600045][1][3] = {}
	tMonster_BossAdjustment_Random[3600045][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][3]["ItemChance"] = 1000
	tMonster_BossAdjustment_Random[3600045][1][3]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][3]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][3]["RewardItem"][1]["Id"] = 3009001
	tMonster_BossAdjustment_Random[3600045][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Random[3600045][1][3]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][3]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 微光星陨石	3009000	1		激活3天	18.00%
	tMonster_BossAdjustment_Random[3600045][1][4] = {}
	tMonster_BossAdjustment_Random[3600045][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][4]["ItemChance"] = 1800
	tMonster_BossAdjustment_Random[3600045][1][4]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][4]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][4]["RewardItem"][1]["Id"] = 3009000
	tMonster_BossAdjustment_Random[3600045][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Random[3600045][1][4]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][4]["RewardEffect"]["Effect"] = "angelwing"

	-- 万能神纹精粹	4060001	2	赠		18.00%
	tMonster_BossAdjustment_Random[3600045][1][5] = {}
	tMonster_BossAdjustment_Random[3600045][1][5]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][5]["ItemChance"] = 1800
	tMonster_BossAdjustment_Random[3600045][1][5]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][5]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][5]["RewardItem"][1]["Id"] = 4060001
	tMonster_BossAdjustment_Random[3600045][1][5]["RewardItem"][1]["Attr"] = "0 2 3"
	tMonster_BossAdjustment_Random[3600045][1][5]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][5]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 免费强练丹	3003124	2	赠		17.00%
	tMonster_BossAdjustment_Random[3600045][1][6] = {}
	tMonster_BossAdjustment_Random[3600045][1][6]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][6]["ItemChance"] = 1700
	tMonster_BossAdjustment_Random[3600045][1][6]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][6]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][6]["RewardItem"][1]["Id"] = 3003124
	tMonster_BossAdjustment_Random[3600045][1][6]["RewardItem"][1]["Attr"] = "0 2 3"
	tMonster_BossAdjustment_Random[3600045][1][6]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 通神丹	3003125	3	赠		17.00%
	tMonster_BossAdjustment_Random[3600045][1][7] = {}
	tMonster_BossAdjustment_Random[3600045][1][7]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][7]["ItemChance"] = 1700
	tMonster_BossAdjustment_Random[3600045][1][7]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][7]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][7]["RewardItem"][1]["Id"] = 3003125
	tMonster_BossAdjustment_Random[3600045][1][7]["RewardItem"][1]["Attr"] = "0 3 3"
	tMonster_BossAdjustment_Random[3600045][1][7]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][7]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赤炼石+2	730002	1	赠	激活7天	13.00%
	tMonster_BossAdjustment_Random[3600045][1][8] = {}
	tMonster_BossAdjustment_Random[3600045][1][8]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][8]["ItemChance"] = 1300
	tMonster_BossAdjustment_Random[3600045][1][8]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][8]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][8]["RewardItem"][1]["Id"] = 730002
	tMonster_BossAdjustment_Random[3600045][1][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3600045][1][8]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][8]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赤炼石+3	730003	1	赠	激活7天	6.00%
	tMonster_BossAdjustment_Random[3600045][1][9] = {}
	tMonster_BossAdjustment_Random[3600045][1][9]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][9]["ItemChance"] = 600
	tMonster_BossAdjustment_Random[3600045][1][9]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][9]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][9]["RewardItem"][1]["Id"] = 730003
	tMonster_BossAdjustment_Random[3600045][1][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3600045][1][9]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 赤炼石+5	730005	1	赠	激活7天	1.00%	全服公告
	tMonster_BossAdjustment_Random[3600045][1][10] = {}
	tMonster_BossAdjustment_Random[3600045][1][10]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600045][1][10]["ItemChance"] = 100
	tMonster_BossAdjustment_Random[3600045][1][10]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][10]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][10]["RewardItem"][1]["Id"] = 730005
	tMonster_BossAdjustment_Random[3600045][1][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3600045][1][10]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600045][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600045][1][10]["RewardBroadCast"] = tMonster_BossAdjustment_Text[3600045][10]
	
	-- 人参果	3009100	3			100.00%
	tMonster_BossAdjustment_Random[3600045][1][11] = {}
	tMonster_BossAdjustment_Random[3600045][1][11]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600045][1][11]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600045][1][11]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600045][1][11]["RewardItem"][1]["Id"] = 3009100
	tMonster_BossAdjustment_Random[3600045][1][11]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 3600046,'【铁翼狂龙】秘宝箱'
	-- 八卦符	3309946	1			100.00%
	tMonster_BossAdjustment_Random[3600046] = {}
	tMonster_BossAdjustment_Random[3600046][1] = {}
	tMonster_BossAdjustment_Random[3600046][1]["ItemChanceSum"] = 10000
	tMonster_BossAdjustment_Random[3600046][1]["LogId"] = 12001104
	tMonster_BossAdjustment_Random[3600046][1][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][1]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600046][1][1]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][1]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][1]["RewardItem"][1]["Id"] = 3309946
	tMonster_BossAdjustment_Random[3600046][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600046][1][1]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	1		激活2天	100.00%
	tMonster_BossAdjustment_Random[3600046][1][2] = {}
	tMonster_BossAdjustment_Random[3600046][1][2]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600046][1][2]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][2]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][2]["RewardItem"][1]["Id"] = 3009001
	tMonster_BossAdjustment_Random[3600046][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Random[3600046][1][2]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	5			9.00%
	tMonster_BossAdjustment_Random[3600046][1][3] = {}
	tMonster_BossAdjustment_Random[3600046][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][3]["ItemChance"] = 900
	tMonster_BossAdjustment_Random[3600046][1][3]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][3]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][3]["RewardItem"][1]["Id"] = 4060001
	tMonster_BossAdjustment_Random[3600046][1][3]["RewardItem"][1]["Attr"] = "0 5 3"
	tMonster_BossAdjustment_Random[3600046][1][3]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷	720027	1	赠品		14.00%
	tMonster_BossAdjustment_Random[3600046][1][4] = {}
	tMonster_BossAdjustment_Random[3600046][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][4]["ItemChance"] = 1400
	tMonster_BossAdjustment_Random[3600046][1][4]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][4]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][4]["RewardItem"][1]["Id"] = 720027
	tMonster_BossAdjustment_Random[3600046][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tMonster_BossAdjustment_Random[3600046][1][4]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 免费强练丹	3003124	3			18.00%
	tMonster_BossAdjustment_Random[3600046][1][5] = {}
	tMonster_BossAdjustment_Random[3600046][1][5]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][5]["ItemChance"] = 1800
	tMonster_BossAdjustment_Random[3600046][1][5]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][5]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][5]["RewardItem"][1]["Id"] = 3003124
	tMonster_BossAdjustment_Random[3600046][1][5]["RewardItem"][1]["Attr"] = "0 3"
	tMonster_BossAdjustment_Random[3600046][1][5]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 淬炼道具转盘	3303479	1			4.00%
	tMonster_BossAdjustment_Random[3600046][1][6] = {}
	tMonster_BossAdjustment_Random[3600046][1][6]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][6]["ItemChance"] = 400
	tMonster_BossAdjustment_Random[3600046][1][6]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][6]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][6]["RewardItem"][1]["Id"] = 3303479
	tMonster_BossAdjustment_Random[3600046][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600046][1][6]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 武器神魂转盘	3303478	1			5.00%
	tMonster_BossAdjustment_Random[3600046][1][7] = {}
	tMonster_BossAdjustment_Random[3600046][1][7]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][7]["ItemChance"] = 500
	tMonster_BossAdjustment_Random[3600046][1][7]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][7]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][7]["RewardItem"][1]["Id"] = 3303478
	tMonster_BossAdjustment_Random[3600046][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600046][1][7]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2	730002	1	赠品	激活7天	13.00%
	tMonster_BossAdjustment_Random[3600046][1][8] = {}
	tMonster_BossAdjustment_Random[3600046][1][8]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][8]["ItemChance"] = 1300
	tMonster_BossAdjustment_Random[3600046][1][8]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][8]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][8]["RewardItem"][1]["Id"] = 730002
	tMonster_BossAdjustment_Random[3600046][1][8]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3600046][1][8]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3	730003	1	赠品	激活7天	7.00%
	tMonster_BossAdjustment_Random[3600046][1][9] = {}
	tMonster_BossAdjustment_Random[3600046][1][9]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][9]["ItemChance"] = 700
	tMonster_BossAdjustment_Random[3600046][1][9]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][9]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][9]["RewardItem"][1]["Id"] = 730003
	tMonster_BossAdjustment_Random[3600046][1][9]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3600046][1][9]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值精装包	3304324	1			18.00%
	tMonster_BossAdjustment_Random[3600046][1][10] = {}
	tMonster_BossAdjustment_Random[3600046][1][10]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][10]["ItemChance"] = 1800
	tMonster_BossAdjustment_Random[3600046][1][10]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][10]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][10]["RewardItem"][1]["Id"] = 3304324
	tMonster_BossAdjustment_Random[3600046][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600046][1][10]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值精装包	3303063	1			12.00%
	tMonster_BossAdjustment_Random[3600046][1][11] = {}
	tMonster_BossAdjustment_Random[3600046][1][11]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600046][1][11]["ItemChance"] = 1200
	tMonster_BossAdjustment_Random[3600046][1][11]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600046][1][11]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600046][1][11]["RewardItem"][1]["Id"] = 3303063
	tMonster_BossAdjustment_Random[3600046][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600046][1][11]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600046][1][11]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3600066,'【狱火邪凰】至宝箱'
	tMonster_BossAdjustment_Random[3600066] = {}
	tMonster_BossAdjustment_Random[3600066][1] = {}
	tMonster_BossAdjustment_Random[3600066][1]["ItemChanceSum"] = 10000
	tMonster_BossAdjustment_Random[3600066][1]["LogId"] = 12001104
	-- 八卦符	3309946	5			100.00%
	tMonster_BossAdjustment_Random[3600066][1][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][1]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600066][1][1]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][1]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][1]["RewardItem"][1]["Id"] = 3309946
	tMonster_BossAdjustment_Random[3600066][1][1]["RewardItem"][1]["Attr"] = "0 5"
	tMonster_BossAdjustment_Random[3600066][1][1]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	2			100.00%
	tMonster_BossAdjustment_Random[3600066][1][2] = {}
	tMonster_BossAdjustment_Random[3600066][1][2]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600066][1][2]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][2]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][2]["RewardItem"][1]["Id"] = 3009001
	tMonster_BossAdjustment_Random[3600066][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tMonster_BossAdjustment_Random[3600066][1][2]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 500气力值	直接给	1			100.00%
	tMonster_BossAdjustment_Random[3600066][1][3] = {}
	tMonster_BossAdjustment_Random[3600066][1][3]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600066][1][3]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Random[3600066][1][3]["RewardStrengthValue"]["Value"] = 500
	tMonster_BossAdjustment_Random[3600066][1][3]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	1		激活2天	13.00%
	tMonster_BossAdjustment_Random[3600066][1][4] = {}
	tMonster_BossAdjustment_Random[3600066][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][4]["ItemChance"] = 1300
	tMonster_BossAdjustment_Random[3600066][1][4]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][4]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][4]["RewardItem"][1]["Id"] = 3009001
	tMonster_BossAdjustment_Random[3600066][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Random[3600066][1][4]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 岫山玉	3008221	1			2.00%	全服公告
	tMonster_BossAdjustment_Random[3600066][1][5] = {}
	tMonster_BossAdjustment_Random[3600066][1][5]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][5]["ItemChance"] = 200
	tMonster_BossAdjustment_Random[3600066][1][5]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][5]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][5]["RewardItem"][1]["Id"] = 3008221
	tMonster_BossAdjustment_Random[3600066][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600066][1][5]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600066][1][5]["RewardBroadCast"] = tMonster_BossAdjustment_Text[3600066][5]
	-- 免费强练丹	3003124	5			19.00%
	tMonster_BossAdjustment_Random[3600066][1][6] = {}
	tMonster_BossAdjustment_Random[3600066][1][6]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][6]["ItemChance"] = 1900
	tMonster_BossAdjustment_Random[3600066][1][6]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][6]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][6]["RewardItem"][1]["Id"] = 3003124
	tMonster_BossAdjustment_Random[3600066][1][6]["RewardItem"][1]["Attr"] = "0 5"
	tMonster_BossAdjustment_Random[3600066][1][6]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷	720027	2	赠品		10.00%
	tMonster_BossAdjustment_Random[3600066][1][7] = {}
	tMonster_BossAdjustment_Random[3600066][1][7]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][7]["ItemChance"] = 1000
	tMonster_BossAdjustment_Random[3600066][1][7]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][7]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][7]["RewardItem"][1]["Id"] = 720027
	tMonster_BossAdjustment_Random[3600066][1][7]["RewardItem"][1]["Attr"] = "0 2 3"
	tMonster_BossAdjustment_Random[3600066][1][7]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 防具神魂转盘	3303477	1			5.00%
	tMonster_BossAdjustment_Random[3600066][1][8] = {}
	tMonster_BossAdjustment_Random[3600066][1][8]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][8]["ItemChance"] = 500
	tMonster_BossAdjustment_Random[3600066][1][8]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][8]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][8]["RewardItem"][1]["Id"] = 3303477
	tMonster_BossAdjustment_Random[3600066][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600066][1][8]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 武器神魂转盘	3303478	1			5.00%
	tMonster_BossAdjustment_Random[3600066][1][9] = {}
	tMonster_BossAdjustment_Random[3600066][1][9]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][9]["ItemChance"] = 500
	tMonster_BossAdjustment_Random[3600066][1][9]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][9]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][9]["RewardItem"][1]["Id"] = 3303478
	tMonster_BossAdjustment_Random[3600066][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600066][1][9]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 淬炼道具转盘	3303479	1			5.00%
	tMonster_BossAdjustment_Random[3600066][1][10] = {}
	tMonster_BossAdjustment_Random[3600066][1][10]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][10]["ItemChance"] = 500
	tMonster_BossAdjustment_Random[3600066][1][10]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][10]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][10]["RewardItem"][1]["Id"] = 3303479
	tMonster_BossAdjustment_Random[3600066][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600066][1][10]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+4	730004	1	赠品	激活7天	5.00%	全服公告
	tMonster_BossAdjustment_Random[3600066][1][11] = {}
	tMonster_BossAdjustment_Random[3600066][1][11]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][11]["ItemChance"] = 500
	tMonster_BossAdjustment_Random[3600066][1][11]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][11]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][11]["RewardItem"][1]["Id"] = 730004
	tMonster_BossAdjustment_Random[3600066][1][11]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3600066][1][11]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600066][1][11]["RewardBroadCast"] = tMonster_BossAdjustment_Text[3600066][11]
	-- 赤炼石+3	730003	1	赠品	激活7天	9.00%
	tMonster_BossAdjustment_Random[3600066][1][12] = {}
	tMonster_BossAdjustment_Random[3600066][1][12]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][12]["ItemChance"] = 900
	tMonster_BossAdjustment_Random[3600066][1][12]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][12]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][12]["RewardItem"][1]["Id"] = 730003
	tMonster_BossAdjustment_Random[3600066][1][12]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3600066][1][12]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力值精装包	3304324	1			17.00%
	tMonster_BossAdjustment_Random[3600066][1][13] = {}
	tMonster_BossAdjustment_Random[3600066][1][13]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][13]["ItemChance"] = 1700
	tMonster_BossAdjustment_Random[3600066][1][13]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][13]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][13]["RewardItem"][1]["Id"] = 3304324
	tMonster_BossAdjustment_Random[3600066][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600066][1][13]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值精装包	3303063	1			10.00%
	tMonster_BossAdjustment_Random[3600066][1][14] = {}
	tMonster_BossAdjustment_Random[3600066][1][14]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600066][1][14]["ItemChance"] = 1000
	tMonster_BossAdjustment_Random[3600066][1][14]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600066][1][14]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600066][1][14]["RewardItem"][1]["Id"] = 3303063
	tMonster_BossAdjustment_Random[3600066][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600066][1][14]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600066][1][14]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3310019,'全民嘉奖礼包'
	tMonster_BossAdjustment_Random[3310019] = {}
	tMonster_BossAdjustment_Random[3310019][1] = {}
	tMonster_BossAdjustment_Random[3310019][1]["ItemChanceSum"] = 10000
	tMonster_BossAdjustment_Random[3310019][1]["LogId"] = 12001104
	-- 玄灵石抽奖道具	3309945	1			100.00%
	tMonster_BossAdjustment_Random[3310019][1][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][1]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3310019][1][1]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310019][1][1]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][1]["RewardItem"][1]["Id"] = 3309945
	tMonster_BossAdjustment_Random[3310019][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3310019][1][1]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 免费强练丹	3003124	3	赠		20.00%
	tMonster_BossAdjustment_Random[3310019][1][2] = {}
	tMonster_BossAdjustment_Random[3310019][1][2]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][2]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3310019][1][2]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310019][1][2]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][2]["RewardItem"][1]["Id"] = 3003124
	tMonster_BossAdjustment_Random[3310019][1][2]["RewardItem"][1]["Attr"] = "0 3 3"
	tMonster_BossAdjustment_Random[3310019][1][2]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	2	赠		12.00%
	tMonster_BossAdjustment_Random[3310019][1][3] = {}
	tMonster_BossAdjustment_Random[3310019][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][3]["ItemChance"] = 1200
	tMonster_BossAdjustment_Random[3310019][1][3]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310019][1][3]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][3]["RewardItem"][1]["Id"] = 4060001
	tMonster_BossAdjustment_Random[3310019][1][3]["RewardItem"][1]["Attr"] = "0 2 3"
	tMonster_BossAdjustment_Random[3310019][1][3]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 20赠点	3301239	1			4.00%
	tMonster_BossAdjustment_Random[3310019][1][4] = {}
	tMonster_BossAdjustment_Random[3310019][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][4]["ItemChance"] = 400
	tMonster_BossAdjustment_Random[3310019][1][4]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310019][1][4]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][4]["RewardItem"][1]["Id"] = 3301239
	tMonster_BossAdjustment_Random[3310019][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3310019][1][4]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	1		2天	10.00%
	tMonster_BossAdjustment_Random[3310019][1][5] = {}
	tMonster_BossAdjustment_Random[3310019][1][5]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][5]["ItemChance"] = 1000
	tMonster_BossAdjustment_Random[3310019][1][5]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310019][1][5]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][5]["RewardItem"][1]["Id"] = 3009001
	tMonster_BossAdjustment_Random[3310019][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Random[3310019][1][5]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+1	730001	1	赠	7天	18.00%
	tMonster_BossAdjustment_Random[3310019][1][6] = {}
	tMonster_BossAdjustment_Random[3310019][1][6]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][6]["ItemChance"] = 1800
	tMonster_BossAdjustment_Random[3310019][1][6]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310019][1][6]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][6]["RewardItem"][1]["Id"] = 730001
	tMonster_BossAdjustment_Random[3310019][1][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3310019][1][6]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2	730002	1	赠	7天	8.00%
	tMonster_BossAdjustment_Random[3310019][1][7] = {}
	tMonster_BossAdjustment_Random[3310019][1][7]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][7]["ItemChance"] = 800
	tMonster_BossAdjustment_Random[3310019][1][7]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310019][1][7]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310019][1][7]["RewardItem"][1]["Id"] = 730002
	tMonster_BossAdjustment_Random[3310019][1][7]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3310019][1][7]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力	直接给	1			18.00%
	tMonster_BossAdjustment_Random[3310019][1][8] = {}
	tMonster_BossAdjustment_Random[3310019][1][8]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][8]["ItemChance"] = 1800
	tMonster_BossAdjustment_Random[3310019][1][8]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Random[3310019][1][8]["RewardStrengthValue"]["Value"] = 100
	tMonster_BossAdjustment_Random[3310019][1][8]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力	直接给	1			10.00%
	tMonster_BossAdjustment_Random[3310019][1][9] = {}
	tMonster_BossAdjustment_Random[3310019][1][9]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310019][1][9]["ItemChance"] = 1000
	tMonster_BossAdjustment_Random[3310019][1][9]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Random[3310019][1][9]["RewardStrengthValue"]["Value"] = 200
	tMonster_BossAdjustment_Random[3310019][1][9]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310019][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 3310020,'普天同庆礼包'
	tMonster_BossAdjustment_Random[3310020] = {}
	tMonster_BossAdjustment_Random[3310020][1] = {}
	tMonster_BossAdjustment_Random[3310020][1]["ItemChanceSum"] = 10000
	tMonster_BossAdjustment_Random[3310020][1]["LogId"] = 12001104
	-- 100气力值极运包	3304324	1			100.00%
	tMonster_BossAdjustment_Random[3310020][1][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][1]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3310020][1][1]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][1]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][1]["RewardItem"][1]["Id"] = 3304324
	tMonster_BossAdjustment_Random[3310020][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3310020][1][1]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄灵石抽奖道具	3309945	3	赠		100.00%
	tMonster_BossAdjustment_Random[3310020][1][2] = {}
	tMonster_BossAdjustment_Random[3310020][1][2]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3310020][1][2]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][2]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][2]["RewardItem"][1]["Id"] = 3309945
	tMonster_BossAdjustment_Random[3310020][1][2]["RewardItem"][1]["Attr"] = "0 3"
	tMonster_BossAdjustment_Random[3310020][1][2]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000骑宠积分礼包	720880	1	赠		100.00%
	tMonster_BossAdjustment_Random[3310020][1][3] = {}
	tMonster_BossAdjustment_Random[3310020][1][3]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3310020][1][3]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][3]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][3]["RewardItem"][1]["Id"] = 720880
	tMonster_BossAdjustment_Random[3310020][1][3]["RewardItem"][1]["Attr"] = "0 1 3"
	tMonster_BossAdjustment_Random[3310020][1][3]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹	4060001	3	赠		15.00%
	tMonster_BossAdjustment_Random[3310020][1][4] = {}
	tMonster_BossAdjustment_Random[3310020][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310020][1][4]["ItemChance"] = 1500
	tMonster_BossAdjustment_Random[3310020][1][4]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][4]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][4]["RewardItem"][1]["Id"] = 4060001
	tMonster_BossAdjustment_Random[3310020][1][4]["RewardItem"][1]["Attr"] = "0 3 3"
	tMonster_BossAdjustment_Random[3310020][1][4]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3	730003	1	赠	激活7天	10.00%
	tMonster_BossAdjustment_Random[3310020][1][5] = {}
	tMonster_BossAdjustment_Random[3310020][1][5]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310020][1][5]["ItemChance"] = 1000
	tMonster_BossAdjustment_Random[3310020][1][5]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][5]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][5]["RewardItem"][1]["Id"] = 730003
	tMonster_BossAdjustment_Random[3310020][1][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3310020][1][5]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2	730002	1	赠	激活7天	25.00%
	tMonster_BossAdjustment_Random[3310020][1][6] = {}
	tMonster_BossAdjustment_Random[3310020][1][6]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310020][1][6]["ItemChance"] = 2500
	tMonster_BossAdjustment_Random[3310020][1][6]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][6]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][6]["RewardItem"][1]["Id"] = 730002
	tMonster_BossAdjustment_Random[3310020][1][6]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tMonster_BossAdjustment_Random[3310020][1][6]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值精装包	3303063	1			20.00%
	tMonster_BossAdjustment_Random[3310020][1][7] = {}
	tMonster_BossAdjustment_Random[3310020][1][7]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310020][1][7]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3310020][1][7]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][7]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][7]["RewardItem"][1]["Id"] = 3303063
	tMonster_BossAdjustment_Random[3310020][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3310020][1][7]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石	3009001	1		激活2天	30.00%
	tMonster_BossAdjustment_Random[3310020][1][8] = {}
	tMonster_BossAdjustment_Random[3310020][1][8]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3310020][1][8]["ItemChance"] = 3000
	tMonster_BossAdjustment_Random[3310020][1][8]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3310020][1][8]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3310020][1][8]["RewardItem"][1]["Id"] = 3009001
	tMonster_BossAdjustment_Random[3310020][1][8]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tMonster_BossAdjustment_Random[3310020][1][8]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3310020][1][8]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 伏魔宝箱
	tMonster_BossAdjustment_Random["Small"] = {}
	tMonster_BossAdjustment_Random["Small"][1] = {}
	tMonster_BossAdjustment_Random["Small"][1]["ItemChanceSum"] = 10000
	-- 25%	0
	tMonster_BossAdjustment_Random["Small"][1][1] = {}
	tMonster_BossAdjustment_Random["Small"][1][1]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Small"][1][1]["ItemChance"] = 2500
	tMonster_BossAdjustment_Random["Small"][1][1]["BoxNum"] = 0
	-- 25%	1
	tMonster_BossAdjustment_Random["Small"][1][2] = {}
	tMonster_BossAdjustment_Random["Small"][1][2]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Small"][1][2]["ItemChance"] = 2500
	tMonster_BossAdjustment_Random["Small"][1][2]["BoxNum"] = 1
	-- 20%	2
	tMonster_BossAdjustment_Random["Small"][1][3] = {}
	tMonster_BossAdjustment_Random["Small"][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Small"][1][3]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random["Small"][1][3]["BoxNum"] = 2
	-- 15%	3
	tMonster_BossAdjustment_Random["Small"][1][4] = {}
	tMonster_BossAdjustment_Random["Small"][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Small"][1][4]["ItemChance"] = 1500
	tMonster_BossAdjustment_Random["Small"][1][4]["BoxNum"] = 3
	-- 10%	4
	tMonster_BossAdjustment_Random["Small"][1][5] = {}
	tMonster_BossAdjustment_Random["Small"][1][5]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Small"][1][5]["ItemChance"] = 1000
	tMonster_BossAdjustment_Random["Small"][1][5]["BoxNum"] = 4
	-- 5%	5
	tMonster_BossAdjustment_Random["Small"][1][6] = {}
	tMonster_BossAdjustment_Random["Small"][1][6]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Small"][1][6]["ItemChance"] = 500
	tMonster_BossAdjustment_Random["Small"][1][6]["BoxNum"] = 5
	
	-- 3600067,'【狱火邪凰】斩妖宗师包'
	tMonster_BossAdjustment_Random[3600067] = {}
	tMonster_BossAdjustment_Random[3600067][1] = {}
	tMonster_BossAdjustment_Random[3600067][1]["ItemChanceSum"] = 12000
	tMonster_BossAdjustment_Random[3600067][1]["LogId"] = 12001104
	-- 灵兽宝盒	721260	3			100.00%
	tMonster_BossAdjustment_Random[3600067][1][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][1]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600067][1][1]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][1]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][1]["RewardItem"][1]["Id"] = 721260
	tMonster_BossAdjustment_Random[3600067][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tMonster_BossAdjustment_Random[3600067][1][1]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000气力值	直接给	1
	tMonster_BossAdjustment_Random[3600067][1][2] = {}
	tMonster_BossAdjustment_Random[3600067][1][2]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600067][1][2]["RewardStrengthValue"] = {}
	tMonster_BossAdjustment_Random[3600067][1][2]["RewardStrengthValue"]["Value"] = 1000
	tMonster_BossAdjustment_Random[3600067][1][2]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- BOSS神魂	6选1	1
	-- 824015,824016,821027,821028,821029,821030
	tMonster_BossAdjustment_Random[3600067][1][3] = {}
	tMonster_BossAdjustment_Random[3600067][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600067][1][3]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3600067][1][3]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][3]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][3]["RewardItem"][1]["Id"] = 824015
	tMonster_BossAdjustment_Random[3600067][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600067][1][3]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600067][1][4] = {}
	tMonster_BossAdjustment_Random[3600067][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600067][1][4]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3600067][1][4]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][4]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][4]["RewardItem"][1]["Id"] = 824016
	tMonster_BossAdjustment_Random[3600067][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600067][1][4]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600067][1][5] = {}
	tMonster_BossAdjustment_Random[3600067][1][5]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600067][1][5]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3600067][1][5]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][5]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][5]["RewardItem"][1]["Id"] = 821027
	tMonster_BossAdjustment_Random[3600067][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600067][1][5]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600067][1][6] = {}
	tMonster_BossAdjustment_Random[3600067][1][6]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600067][1][6]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3600067][1][6]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][6]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][6]["RewardItem"][1]["Id"] = 821028
	tMonster_BossAdjustment_Random[3600067][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600067][1][6]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600067][1][7] = {}
	tMonster_BossAdjustment_Random[3600067][1][7]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600067][1][7]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3600067][1][7]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][7]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][7]["RewardItem"][1]["Id"] = 821029
	tMonster_BossAdjustment_Random[3600067][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600067][1][7]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tMonster_BossAdjustment_Random[3600067][1][8] = {}
	tMonster_BossAdjustment_Random[3600067][1][8]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random[3600067][1][8]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random[3600067][1][8]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][8]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][8]["RewardItem"][1]["Id"] = 821030
	tMonster_BossAdjustment_Random[3600067][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tMonster_BossAdjustment_Random[3600067][1][8]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][8]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 辉月果	3009102	3			100.00%
	tMonster_BossAdjustment_Random[3600067][1][9] = {}
	tMonster_BossAdjustment_Random[3600067][1][9]["RandomItemChanceType"] = 1
	tMonster_BossAdjustment_Random[3600067][1][9]["RewardItem"] = {}
	tMonster_BossAdjustment_Random[3600067][1][9]["RewardItem"][1] = {}
	tMonster_BossAdjustment_Random[3600067][1][9]["RewardItem"][1]["Id"] = 3009102
	tMonster_BossAdjustment_Random[3600067][1][9]["RewardItem"][1]["Attr"] = "0 3"
	tMonster_BossAdjustment_Random[3600067][1][9]["RewardEffect"] = {}
	tMonster_BossAdjustment_Random[3600067][1][9]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 邪凰宝箱
	tMonster_BossAdjustment_Random["Big"] = {}
	tMonster_BossAdjustment_Random["Big"][1] = {}
	tMonster_BossAdjustment_Random["Big"][1]["ItemChanceSum"] = 10000
	-- 38%	0
	tMonster_BossAdjustment_Random["Big"][1][1] = {}
	tMonster_BossAdjustment_Random["Big"][1][1]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Big"][1][1]["ItemChance"] = 3800
	tMonster_BossAdjustment_Random["Big"][1][1]["BoxNum"] = 0
	-- 35%	1
	tMonster_BossAdjustment_Random["Big"][1][2] = {}
	tMonster_BossAdjustment_Random["Big"][1][2]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Big"][1][2]["ItemChance"] = 3500
	tMonster_BossAdjustment_Random["Big"][1][2]["BoxNum"] = 1
	-- 20%	2
	tMonster_BossAdjustment_Random["Big"][1][3] = {}
	tMonster_BossAdjustment_Random["Big"][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Big"][1][3]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random["Big"][1][3]["BoxNum"] = 2
	-- 7%	3
	tMonster_BossAdjustment_Random["Big"][1][4] = {}
	tMonster_BossAdjustment_Random["Big"][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["Big"][1][4]["ItemChance"] = 700
	tMonster_BossAdjustment_Random["Big"][1][4]["BoxNum"] = 3
	
	tMonster_BossAdjustment_Random["SmallBox"] = {}
	tMonster_BossAdjustment_Random["SmallBox"][1] = {}
	tMonster_BossAdjustment_Random["SmallBox"][1]["ItemChanceSum"] = 10000
	-- 气力密码小宝箱		29.00%
	tMonster_BossAdjustment_Random["SmallBox"][1][1] = {}
	tMonster_BossAdjustment_Random["SmallBox"][1][1]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["SmallBox"][1][1]["ItemChance"] = 2900
	tMonster_BossAdjustment_Random["SmallBox"][1][1]["NpcIndex"] = 23060
	-- 星陨石密码小宝箱		30.00%
	tMonster_BossAdjustment_Random["SmallBox"][1][2] = {}
	tMonster_BossAdjustment_Random["SmallBox"][1][2]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["SmallBox"][1][2]["ItemChance"] = 3000
	tMonster_BossAdjustment_Random["SmallBox"][1][2]["NpcIndex"] = 23061
	-- 赤炼石密码小宝箱		16.00%
	tMonster_BossAdjustment_Random["SmallBox"][1][3] = {}
	tMonster_BossAdjustment_Random["SmallBox"][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["SmallBox"][1][3]["ItemChance"] = 1600
	tMonster_BossAdjustment_Random["SmallBox"][1][3]["NpcIndex"] = 23062
	-- 赠点密码小宝箱		25.00%
	tMonster_BossAdjustment_Random["SmallBox"][1][4] = {}
	tMonster_BossAdjustment_Random["SmallBox"][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["SmallBox"][1][4]["ItemChance"] = 2500
	tMonster_BossAdjustment_Random["SmallBox"][1][4]["NpcIndex"] = 23063
	
	tMonster_BossAdjustment_Random["BigBox"] = {}
	tMonster_BossAdjustment_Random["BigBox"][1] = {}
	tMonster_BossAdjustment_Random["BigBox"][1]["ItemChanceSum"] = 10000
	-- 气力密码大宝箱			30.00%
	tMonster_BossAdjustment_Random["BigBox"][1][1] = {}
	tMonster_BossAdjustment_Random["BigBox"][1][1]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["BigBox"][1][1]["ItemChance"] = 3000
	tMonster_BossAdjustment_Random["BigBox"][1][1]["NpcIndex"] = 23064
	-- 星陨石密码大宝箱		25.00%
	tMonster_BossAdjustment_Random["BigBox"][1][2] = {}
	tMonster_BossAdjustment_Random["BigBox"][1][2]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["BigBox"][1][2]["ItemChance"] = 2500
	tMonster_BossAdjustment_Random["BigBox"][1][2]["NpcIndex"] = 23065
	-- 赤炼石密码大宝箱		20.00%
	tMonster_BossAdjustment_Random["BigBox"][1][3] = {}
	tMonster_BossAdjustment_Random["BigBox"][1][3]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["BigBox"][1][3]["ItemChance"] = 2000
	tMonster_BossAdjustment_Random["BigBox"][1][3]["NpcIndex"] = 23066
	-- 赠点密码大宝箱			25.00%
	tMonster_BossAdjustment_Random["BigBox"][1][4] = {}
	tMonster_BossAdjustment_Random["BigBox"][1][4]["RandomItemChanceType"] = 2
	tMonster_BossAdjustment_Random["BigBox"][1][4]["ItemChance"] = 2500
	tMonster_BossAdjustment_Random["BigBox"][1][4]["NpcIndex"] = 23067
	
local tMonster_BossAdjustment_Mail = {}
	tMonster_BossAdjustment_Mail[4808] = 97304100
	tMonster_BossAdjustment_Mail[4809] = 97304101
	tMonster_BossAdjustment_Mail[4810] = 97304102
	tMonster_BossAdjustment_Mail[4811] = 97304103
	tMonster_BossAdjustment_Mail[4812] = 97304100
	tMonster_BossAdjustment_Mail[4813] = 97304101
	tMonster_BossAdjustment_Mail[4814] = 97304102
	tMonster_BossAdjustment_Mail[4815] = 97304103
	tMonster_BossAdjustment_Mail[4816] = 97304104

--------------------------------------逻辑部分配置-------------------------------------------
-- 获取掩码值
function Monster_BossAdjustment_GetStcValue(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nEvent = tMonster_BossAdjustment_Stc[nIndex]["EventType"]
	local nType = tMonster_BossAdjustment_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nNowUserId)
	return nData
end

--设置掩码值
function Monster_BossAdjustment_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tMonster_BossAdjustment_Stc[nIndex]["EventType"]
	local nType = tMonster_BossAdjustment_Stc[nIndex]["DataType"]
	local nNowUserId = nUserId or Get_UserId()

	Task_AddStatistic(nEvent,nType,nData,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
end

-- 清理掩码
function Monster_BossAdjustment_ClearStcValue(nIndex,nUserId)
	local nEvent = tMonster_BossAdjustment_Stc[nIndex]["EventType"]
	local nType = tMonster_BossAdjustment_Stc[nIndex]["DataType"]
	local nNowUserId = nUserId or Get_UserId()
	if Task_StcInterval(nEvent,nType,1,5,nNowUserId) then
		Task_SetStatistic(nEvent,nType,0,0,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	end
end

-- 刷新密码
function Monster_BossAdjustment_RefreshPassword()
	local sData = ""
	for i=1,6 do
		local nNum = math.random(0,9)
		sData = sData .. nNum
	end
	
	return sData
end

-- 17400 跨服任务大使
function Monster_BossAdjustment_NewMain(nNpcId)
	-- 选项初始化
	Monster_BossAdjustment_ClearStcValue(1)
	Monster_BossAdjustment_ClearStcValue(2)
	local nGlobalId = tMonster_BossAdjustment_Count["GlobalId"]
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	local nData1 = Get_SysDynaGlobalData1(nGlobalId)
	local sDataFirst = ""
	
	-- 对白值重载
	Monster_BossAdjustment_SetText(nData0,nData1)
	
	-- 等级不足
	local nLevel = tMonster_BossAdjustment_Count["Level"]
	local nMetempsychosis = tMonster_BossAdjustment_Count["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		LinkNpcGossipFunc_New(nNpcId,"500-1")
		return
	end

	-- 等级足够
	-- 全民嘉奖礼包
	if nData0 >= 1 then
		local nStcData = Monster_BossAdjustment_GetStcValue(1)
		local nLimit = tMonster_BossAdjustment_Stc[1]["Limit"]
		if nStcData >= nLimit then
			sDataFirst = tMonster_BossAdjustment_Text[nNpcId]["Index"][3]
		elseif nStcData >= nData0 then
			sDataFirst = tMonster_BossAdjustment_Text[nNpcId]["Index"][1]
		else
			sDataFirst = tMonster_BossAdjustment_Text[nNpcId]["Index"][2]
		end
	else
		sDataFirst = tMonster_BossAdjustment_Text[nNpcId]["Index"][1]
	end
	local sOption = tMonster_BossAdjustment_Text[nNpcId]["Option5011"]
	tNpcGossip[nNpcId]["Option5011"] = string.format(sOption,sDataFirst)

	-- 普天同庆礼包
	local sDataSecond = ""
	if nData1 >= 1 then
		local nStcData = Monster_BossAdjustment_GetStcValue(2)
		local nLimit = tMonster_BossAdjustment_Stc[2]["Limit"]
		if nStcData >= nLimit then
			sDataSecond = tMonster_BossAdjustment_Text[nNpcId]["Index"][3]
		elseif nStcData >= nData1 then
			sDataSecond = tMonster_BossAdjustment_Text[nNpcId]["Index"][1]
		else
			sDataSecond = tMonster_BossAdjustment_Text[nNpcId]["Index"][2]
		end
	else
		sDataSecond = tMonster_BossAdjustment_Text[nNpcId]["Index"][1]
	end
	local sOption = tMonster_BossAdjustment_Text[nNpcId]["Option5012"]
	tNpcGossip[nNpcId]["Option5012"] = string.format(sOption,sDataSecond)
	LinkNpcGossipFunc_New(nNpcId,"501-2")
end

-- 设值
function Monster_BossAdjustment_SetText(nData0,nData1)
	if nData0 > tMonster_BossAdjustment_Stc[1]["Limit"] then
		nData0 = tMonster_BossAdjustment_Stc[1]["Limit"]
	end
	
	if nData1 > tMonster_BossAdjustment_Stc[2]["Limit"] then
		nData1 = tMonster_BossAdjustment_Stc[2]["Limit"]
	end

	local nLen = 27
	local nLeft = 7
	local nStcData1 = Monster_BossAdjustment_GetStcValue(1)
	local nStcData2 = Monster_BossAdjustment_GetStcValue(2)
	local str0 = Sys_Alignment(string.format(tMonster_BossAdjustment_Text[17400]["Collar"],nData0),nLeft,"",nLen)
	local str1 = Sys_Alignment(string.format(tMonster_BossAdjustment_Text[17400]["Collar"],nData1),nLeft,"",nLen)
	local str2 = Sys_Alignment(string.format(tMonster_BossAdjustment_Text[17400]["Lead"],nStcData1),nLeft,"",nLen)
	local str3 = Sys_Alignment(string.format(tMonster_BossAdjustment_Text[17400]["Lead"],nStcData2),nLeft,"",nLen)

	tNpcGossip[17400]["Text5015"] = string.format(tMonster_BossAdjustment_Text[17400]["Text5015"],str0,str1)
	tNpcGossip[17400]["Text5016"] = string.format(tMonster_BossAdjustment_Text[17400]["Text5016"],str2,str3)
end


-- 领取礼包
function Monster_BossAdjustment_ReceivePack(nNpcId,nIndex)
	-- 等级不足
	local nLevel = tMonster_BossAdjustment_Count["Level"]
	local nMetempsychosis = tMonster_BossAdjustment_Count["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		LinkNpcGossipFunc_New(nNpcId,"500-1")
		return
	end
	
	Monster_BossAdjustment_ClearStcValue(nIndex)
	local nGlobalId = tMonster_BossAdjustment_Count["GlobalId"]
	local nPos = nIndex - 1
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	local nStcData = Monster_BossAdjustment_GetStcValue(nIndex)
	local nLimit = tMonster_BossAdjustment_Stc[nIndex]["Limit"]
	-- 【失败，没有礼包可领取】
	if nData < 1 then
		local sNoIndex = tMonster_BossAdjustment_Count["ReceiveTip"][nIndex][1]
		LinkNpcGossipFunc_New(nNpcId,sNoIndex)
		return
	end
	
	-- 【失败，本周领满】
	if nStcData >= nLimit then
		local sFullIndex = tMonster_BossAdjustment_Count["ReceiveTip"][nIndex][2]
		LinkNpcGossipFunc_New(nNpcId,sFullIndex)
		return
	end
	
	-- 【失败，本周已领取到可领取的礼包数量】
	if nStcData >= nData then
		local sNoIndex = tMonster_BossAdjustment_Count["ReceiveTip"][nIndex][1]
		LinkNpcGossipFunc_New(nNpcId,sNoIndex)
		return
	end
	
	if nData > nLimit then
		nData = nLimit
	end
	
	-- 【失败，背包满】
	local nRewardIndex = nIndex + 3
	local nRewardNum = nData - nStcData
	local tReward = CommonFunc_Copy(tMonster_BossAdjustment_Reward[nRewardIndex])
	tReward["RewardItem"][1]["Attr"] = string.format(tReward["RewardItem"][1]["Attr"],nRewardNum)
	if not RewardTemplate_CheckSpace(tReward,nNowUserId) then
		LinkNpcGossipFunc_New(nNpcId,"504-3")
		return
	end
	--获取排行榜第一
	local nRankGlobalId = tRankingFunc_Info[17400]["Global"][1]
	--local nRankUserId = Get_SysDynaGlobalData(nRankGlobalId,1)
	local nRankUserName = Get_SysDynaGlobalDataStr(nRankGlobalId,0)
	User_TalkChannel2005(string.format(tMonster_BossAdjustment_Text["MsgRankFirst"],nRankUserName))
	
	-- 设置掩码
	Monster_BossAdjustment_SetStcValue(nIndex,nRewardNum)
	
	-- 领取奖励
	RewardTemplate_UseItem(tReward)
end

-- 伏魔宝箱/邪凰宝箱
-- function Monster_BossAdjustment_BoxMain(nNpcId)
	-- local nNewNpcId = Get_NpcId()
	-- local sDataStr = tMonster_BossAdjustment_Password[nNewNpcId]
	-- if sDataStr == nil then
		-- sDataStr = Monster_BossAdjustment_RefreshPassword()
		-- tMonster_BossAdjustment_Password[nNewNpcId] = sDataStr
	-- end

	-- -- 创建对白
	-- Sys_DialogText(tMonster_BossAdjustment_Text[23060][nNpcId])
	-- Sys_DialogText(tMonster_BossAdjustment_Text[23060]["Text112"])
	-- local sText = tMonster_BossAdjustment_Text[23060]["Text113"]
	-- Sys_DialogText(string.format(sText,sDataStr))
	-- Sys_DialogText(tMonster_BossAdjustment_Text[23060]["Text114"])
	-- Sys_DialogOptEdit(tMonster_BossAdjustment_Text[23060]["Text115"],10,"Monster_BossAdjustment_Answer</N>"..nNpcId)
	-- Sys_DialogFace()
	-- Sys_DialogEnd()
-- end

--刷新宝箱怪
function Monster_BossAdjustment_BoxMain(nNpcId)
	local nNewNpcId = Get_NpcId()
	
	local nMonsterId = tMonster_BossAdjustment_PoolData[nNpcId]["MonsterId"]
	local nGenId = tMonster_BossAdjustment_PoolData[nNpcId]["GenId"]
	
	--判断NPC是否还存在
	if nNewNpcId == nil or nNewNpcId <= 0 then
		return
	end
	
	local nMapId = Get_UserMapId()
	local nPosX = Get_NpcPositionX()
	local nPosY = Get_NpcPositionY()
	
	if Npc_DelDynaNpc(nMapId,"id",nNewNpcId) then
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
end

--宝箱怪掉落
function Monster_BossAdjustment_KillBoxMonster(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	Monster_Death(nMonsterId,nMapId)
	
	local nNpcId = 0
	
	for k,v in pairs(tMonster_BossAdjustment_PoolData) do
		if nMonsterId == v["MonsterId"] then
			nNpcId = k
			break
		end
	end
	
	if nNpcId == 0 then
		return
	end
	
	local nRewardItem = tMonster_BossAdjustment_PoolData[nNpcId]["RewardItem"]
	local tReward = CommonFunc_Copy(tMonster_BossAdjustment_Reward[6])
	
	tReward["RewardItem"][1]["Id"] = nRewardItem
	
	RewardTemplate_Reward(tReward,nUserId)
end

-- 输入密码
function Monster_BossAdjustment_Answer(nNpcId)
	local nNewNpcId = Get_NpcId()
	local sDataStr = tMonster_BossAdjustment_Password[nNewNpcId]
	-- 判断NPC是否还存在
	if nNewNpcId == nil or sDataStr == nil then
		return
	end
	
	-- 判断背包
	local tReward = tMonster_BossAdjustment_Reward[6]
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end
	
	local sAnswer = Get_SysAcceptStr()
	if sAnswer == sDataStr then
		-- 删除npc
		local nMapId = Get_UserMapId()
		if Npc_DelDynaNpc(nMapId,"id",nNewNpcId) then
			-- 给奖励
			local nRewardItem = tMonster_BossAdjustment_PoolData[nNpcId]["RewardItem"]
			tReward["RewardItem"][1]["Id"] = nRewardItem
			RewardTemplate_UseItem(tReward)
		end
	end
end

-- '国境伏魔豪礼包'
function Monster_BossAdjustment_OpenJoinItem(nItemId)
	-- 检测今天的使用次数
	local nEvent = tMonster_BossAdjustment_Stc[3]["EventType"]
	local nType = tMonster_BossAdjustment_Stc[3]["DataType"]
	local nLimit = tMonster_BossAdjustment_Stc[3]["Limit"]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	elseif Task_ChkStcValue(nEvent,nType,">=",nLimit) then
		User_TalkChannel2005(tMonster_BossAdjustment_Text["Limit"])
		return
	end
	
	-- 检测背包空间
	local tReward = tMonster_BossAdjustment_Random[nItemId]
	local nSpace = RewardTemplate_GetRandomSpace(tReward,1)
	if nSpace > 0 and not User_CheckLeftSpace(nSpace) then
		local sText = tMonster_BossAdjustment_Text["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpace))
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设掩码值
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local sLog = tMonster_BossAdjustment_Log["OverDue"]
		Sys_SaveActionRewardLog(string.format(sLog,nItemId))
		RewardTemplate_NewRandom(tReward,1)
	end
end

-- 打开物品
function Monster_BossAdjustment_OpenItem(nItemId)
	-- 检测背包空间
	local tReward = tMonster_BossAdjustment_Random[nItemId]
	local nSpace = RewardTemplate_GetRandomSpace(tReward,1)
	if nSpace > 0 and not User_CheckLeftSpace(nSpace) then
		local sText = tMonster_BossAdjustment_Text["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpace))
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sLog = tMonster_BossAdjustment_Log["OverDue"]
		Sys_SaveActionRewardLog(string.format(sLog,nItemId))
		RewardTemplate_NewRandom(tReward,1)
	end
end


-- 【铁翼狂龙】秘宝箱
function Monster_BossAdjustment_OpenSmallBox(nItemId)
	local nBasicItemId = tMonster_BossAdjustment_Count["BasicItemId"]
	
	-- 检测背包空间
	local tReward = tMonster_BossAdjustment_Random[nBasicItemId]
	local nSpace = RewardTemplate_GetRandomSpace(tReward,1)
	if nSpace > 0 and not User_CheckLeftSpace(nSpace) then
		local sText = tMonster_BossAdjustment_Text["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpace))
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设置可领取掩码
		local nGlobalId = tMonster_BossAdjustment_Count["GlobalId"]
		local nData0 = Get_SysDynaGlobalData(nGlobalId,0)
		Sys_SetSynaGlobalData0(nGlobalId,nData0+1)
		
		local sLog = tMonster_BossAdjustment_Log["OverDue"]
		Sys_SaveActionRewardLog(string.format(sLog,nItemId))
		RewardTemplate_NewRandom(tReward,1)
		--记入宝箱使用次数
		local nEvent4 = tMonster_BossAdjustment_Stc[4]["EventType"]
		local nType4 = tMonster_BossAdjustment_Stc[4]["DataType"]
		
		-- 判断是否隔周
		if Task_StcInterval(nEvent4,nType4,1,5) then
			Task_SetStatistic(nEvent4,nType4,0,1)
			Task_SetStcTimestamp(nEvent4,nType4,0)
		end
		
		-- 设掩码值
		Task_AddStatistic(nEvent4,nType4,1,1)
		Task_SetStcTimestamp(nEvent4,nType4,0)
		
		local nStcData4 = Get_UserStatisticValue(nEvent4,nType4)
		--写入排行榜
		RankingFunc_SetInfo(tMonster_BossAdjustment_Count["RankIndex"],nStcData4)
		
		-- 全服公告
		local sText = tMonster_BossAdjustment_Text["BroadCast"][5]
		local sUserName = Get_UserName()
		local sItemName = Get_ItemtypeName(nItemId)
		local sFinalText = string.format(sText,sUserName,sItemName)
		Sys_SystemBroadcast(sFinalText)
	end
end

-- '【狱火邪凰】至宝箱'
function Monster_BossAdjustment_OpenBigBox(nItemId)
	-- 检测背包空间
	local tReward = tMonster_BossAdjustment_Random[nItemId]
	local nSpace = RewardTemplate_GetRandomSpace(tReward,1)
	if nSpace > 0 and not User_CheckLeftSpace(nSpace) then
		local sText = tMonster_BossAdjustment_Text["NoSpace"]
		User_TalkChannel2005(string.format(sText,nSpace))
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设置可领取掩码
		local nGlobalId = tMonster_BossAdjustment_Count["GlobalId"]
		local nData0 = Get_SysDynaGlobalData(nGlobalId,1)
		Sys_SetSynaGlobalData1(nGlobalId,nData0+1)
		
		local sLog = tMonster_BossAdjustment_Log["OverDue"]
		Sys_SaveActionRewardLog(string.format(sLog,nItemId))
		RewardTemplate_NewRandom(tReward,1)
		
		--记入宝箱使用次数
		local nEvent4 = tMonster_BossAdjustment_Stc[4]["EventType"]
		local nType4 = tMonster_BossAdjustment_Stc[4]["DataType"]
		
		-- 判断是否隔周
		if Task_StcInterval(nEvent4,nType4,1,5) then
			Task_SetStatistic(nEvent4,nType4,0,1)
			Task_SetStcTimestamp(nEvent4,nType4,0)
		end
		
		-- 设掩码值
		Task_AddStatistic(nEvent4,nType4,1,1)
		Task_SetStcTimestamp(nEvent4,nType4,0)
		
		local nStcData4 = Get_UserStatisticValue(nEvent4,nType4)
		--写入排行榜
		RankingFunc_SetInfo(tMonster_BossAdjustment_Count["RankIndex"],nStcData4)
		
		-- 全服公告
		local sText = tMonster_BossAdjustment_Text["BroadCast"][6]
		local sUserName = Get_UserName()
		local sFinalText = string.format(sText,sUserName)
		Sys_SystemBroadcast(sFinalText)
	end
end

-- 点击寻路领礼包
function Monster_BossAdjustment_PackPathFind(nIndex)
	local nMapId = tMonster_BossAdjustment_Count["TwinCity"]
	local nNowUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nNowUserId)
	-- 【双龙城内】
	-- 自动寻路至跨服任务大使
	if nMapId == nUserMapId then
		NpcPosition_PathFind(17400)
	else
		User_TalkChannel2005(tMonster_BossAdjustment_Text["Tip"][5])
	end
end


-- 杀怪
-- 击杀boss
function Monster_BossAdjustment_KillBoss(nBossMonsterId)
	local nMapId = tMonster_BossAdjustment_Count["MapId"]
	Monster_Death(nBossMonsterId,nMapId)
	local nUserId = Get_UserId()
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	
	-- boss 附近生成8只小怪
	for i=1,4 do
		local nMonsterId = tMonster_BossAdjustment_Count["MonsterId"][2][i]
		local nGenId = tMonster_BossAdjustment_Count["GenId"][nMonsterId]
		for j=1,2 do
			-- local nNewPosX = nPosX + math.random(1,5)
			-- local nNewPosY= nPosY + math.random(1,5)
			local nIndex = (i - 1)*2 + j
			local nNewPosX = tMonster_BossAdjustment_BigBossPos[nIndex][1]
			local nNewPosY = tMonster_BossAdjustment_BigBossPos[nIndex][2]
			
			Monster_AddAndCount(nMapId,nNewPosX,nNewPosY,nGenId,nMonsterId,0,0,0,2)
		end
	end
	
	-- 给奖励
	-- local tReward = tMonster_BossAdjustment_Reward[1]
	-- local nNewItemId = tMonster_BossAdjustment_Count["Reward"][nBossMonsterId]["Kill"]
	-- tReward["RewardItem"][1]["Id"] = nNewItemId
	-- RewardTemplate_UseItem(tReward,nil,true)
	Monster_BossAdjustment_SendMail(nBossMonsterId)
	
	-- 公告
	local sUserName = Get_UserName(nUserId)
	local sText = tMonster_BossAdjustment_Text["BroadCast"][4]
	Sys_SystemBroadcast(string.format(sText,sUserName))
end

-- 击杀小boss
function Monster_BossAdjustment_KillMonster(nMonsterId)
	local nMapId = tMonster_BossAdjustment_Count["MapId"]
	Monster_Death(nMonsterId,nMapId)
	local nUserId = Get_UserId()
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	
	-- 给奖励
	-- local tReward = tMonster_BossAdjustment_Reward[1]
	-- local nNewItemId = tMonster_BossAdjustment_Count["Reward"][nMonsterId]["Kill"]
	-- tReward["RewardItem"][1]["Id"] = nNewItemId
	-- RewardTemplate_UseItem(tReward,nil,true)
	Monster_BossAdjustment_SendMail(nMonsterId)
	
	-- 刷新npc
	Monster_BossAdjustment_RefreshNpc(nPosX,nPosY)
	
	-- 公告
	local sUserName = Get_UserName(nUserId)
	local sMonsterName = tMonster_BossAdjustment_Text["MonsterName"][nMonsterId]
	local sText = tMonster_BossAdjustment_Text["BroadCast"][3]
	Sys_SystemBroadcast(string.format(sText,sUserName,sMonsterName))
end

-- 刷新宝箱
function Monster_BossAdjustment_RefreshNpc(nPosX,nPosY)
	local nIndex = 0
	
	-- 刷新小宝箱
	local nFlag,tReward = Probabil_RandomAward(tMonster_BossAdjustment_Random["Small"],1)
	local nSmallNum = tReward[1]["tAward"][1]["BoxNum"]
	
	for i=1,nSmallNum do
		nIndex = nIndex + 1
		Monster_BossAdjustment_CreateNpc(nPosX,nPosY,"SmallBox",nIndex)
	end
	
	-- 刷新大宝箱
	local nBigFlag,tBigReward = Probabil_RandomAward(tMonster_BossAdjustment_Random["Big"],1)
	local nBigNum = tBigReward[1]["tAward"][1]["BoxNum"]
	
	for i=1,nBigNum do
		nIndex = nIndex + 1
		Monster_BossAdjustment_CreateNpc(nPosX,nPosY,"BigBox",nIndex)
	end
end

function Monster_BossAdjustment_CreateNpc(nPosX,nPosY,sType,nIndex)
	local nMapId = tMonster_BossAdjustment_Count["MapId"]
	local nFlag,tNpcIndex = Probabil_RandomAward(tMonster_BossAdjustment_Random[sType],1)
	local nNpcIndex = tNpcIndex[1]["tAward"][1]["NpcIndex"]
	local nNpcNum = tMonster_BossAdjustment_NpcNum[nNpcIndex] or 0
	tMonster_BossAdjustment_NpcNum[nNpcIndex] = nNpcNum + 1
	
	local sNpcName = tMonster_BossAdjustment_Text["NpcName"][nNpcIndex]..nNpcNum
	local nNewPosX = nPosX + tMonster_BossAdjustment_PoolPos[nIndex][1]
	local nNewPosY = nPosY + tMonster_BossAdjustment_PoolPos[nIndex][2]
	local nNpcFace = tMonster_BossAdjustment_PoolData[nNpcIndex]["NpcFace"]
	local nActionId = tMonster_BossAdjustment_PoolData[nNpcIndex]["ActionId"]
	Npc_CreateDynaNpc(sNpcName,2,128,nNpcFace,0,nUserId,nMapId,nNewPosX,nNewPosY,0,0,0,nActionId)
end

-- 怪物参与奖励发奖 国境伏魔嘉奖包 每日限量3个
function Monster_BossAdjustment_KillBossJoin(nServerId,nUserId,nRank,nDmg,nMonsterId)
	-- local nTaskId = tMonster_BossAdjustment_Count["TaskId"]
	-- if Task_ChkTaskDetailValue(nTaskId,"6",">=",3,nUserId) then
		-- return
	-- end
	
	-- 设掩码值
	-- local nTaskData = Get_TaskDetailData6(nTaskId,nUserId)
	-- Task_SetTaskDetailData(nTaskId,nTaskData + 1,"6",nUserId)
	
	-- 发邮件
	local nActionId = tMonster_BossAdjustment_Count["Reward"][nMonsterId]["JoinAction"]
	local sMonsterName = tMonster_BossAdjustment_Text["MonsterName"][nMonsterId]
	local sRewardName = Get_ItemtypeName(tMonster_BossAdjustment_Count["Join"])
	
	local nExistDay = tMonster_BossAdjustment_Count["MailExistDay"]
	local sSender = tMonster_BossAdjustment_Text["Mail"]["Sender"]
	local sTitle = tMonster_BossAdjustment_Text["Mail"]["Title"]
	local sNewText = tMonster_BossAdjustment_Text["Mail"][1]["Content"]
	local sContent = string.format(sNewText,sMonsterName)
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
end

-- 怪物伤害排名发奖
function Monster_BossAdjustment_BossDamgRank(nServerId,nUserId,nRank,nDmg,nMonsterId)
	local nRankTotal = tMonster_BossAdjustment_Count["RankTotal"]
	local nNum = nRank
	local tBasic = tMonster_BossAdjustment_Count["Reward"][nMonsterId]
	if nRank <= nRankTotal then
		if nRank >= 4 then
			nNum = 4
		end

		-- 发邮件
		local nActionId = tBasic["RankingAction"][nNum]
		local sMonsterName = tMonster_BossAdjustment_Text["MonsterName"][nMonsterId]
		local sRewardName = Get_ItemtypeName(tBasic["RankingItem"][nNum])
		
		local nExistDay = tMonster_BossAdjustment_Count["MailExistDay"]
		local sSender = tMonster_BossAdjustment_Text["Mail"]["Sender"]
		local sTitle = tMonster_BossAdjustment_Text["Mail"]["Title"]
		local sFinalText = tMonster_BossAdjustment_Text["Mail"][2]["Content"]
		if nMonsterId == tMonster_BossAdjustment_Count["MonsterId"][1] then
			sFinalText = tMonster_BossAdjustment_Text["Mail"][3]["Content"]
		end
		local sContent = string.format(sFinalText,sMonsterName,nRank,sRewardName)
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	end
end

-- 时间自检 刷怪
-- 刷boss
function Monster_BossAdjustment_RefreshBoss()
	local nMonsterId = tMonster_BossAdjustment_Count["MonsterId"][1]
	local nMapId = tMonster_BossAdjustment_Count["MapId"]
	local nPosX = tMonster_BossAdjustment_Count["Refresh"][nMonsterId]["PosX"]
	local nPosY = tMonster_BossAdjustment_Count["Refresh"][nMonsterId]["PosY"]
	local nGenId = tMonster_BossAdjustment_Count["GenId"][nMonsterId]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum >= 1 then
		return
	end
	local nFlag = Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,1)
	if nFlag then
		Monster_BossAdjustment_MonsterBroadCast(nMonsterId,nPosX,nPosY)
	end
end

-- 每小时自动刷新三只boss
function Monster_BossAdjustment_RefreshMonster()
	local nTotalMonsetNum = 0
	local nMapId = tMonster_BossAdjustment_Count["MapId"]
	local tMonsterPos = CommonFunc_Copy(tMonster_BossAdjustment_Count["Refresh"]["Monster"])
	local tMonsterId = {1,2,3,4}
	local nIndex = 0
	
	local nCalLoop = 0
	while nIndex < 3 do
		if nCalLoop > G_CalculateLoop then
			Sys_SaveAbnormalLog("函数 Monster_BossAdjustment_RefreshMonster 中 [while]循环超过1000次！")
			break
		end
		nCalLoop = nCalLoop + 1
		local nRandom = math.random(1,#tMonsterId)
		local nMonsterId = tMonster_BossAdjustment_Count["MonsterId"][3][tMonsterId[nRandom]]
		local nPosRandom = math.random(1,#tMonsterPos)
		local nPosX = tMonsterPos[nPosRandom]["PosX"]
		local nPosY = tMonsterPos[nPosRandom]["PosY"]
		local nGenId = tMonster_BossAdjustment_Count["GenId"][nMonsterId]
		local nFlag = Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,0,0,0,4)
		
		if nFlag then
			nIndex = nIndex + 1
			table.remove(tMonsterPos,nPosRandom)
			Monster_BossAdjustment_MonsterBroadCast(nMonsterId,nPosX,nPosY)
		else
			table.remove(tMonsterId,nRandom)
		end
		
		if #tMonsterId <= 0 then
			break
		end
	end
end

-- 刷怪全服公告
function Monster_BossAdjustment_MonsterBroadCast(nMonsterId,nPosX,nPosY)
	local sMonsterName = tMonster_BossAdjustment_Text["MonsterName"][nMonsterId]
	local sBroadText = ""
	if nMonsterId == tMonster_BossAdjustment_Count["MonsterId"][1] then
		sBroadText = tMonster_BossAdjustment_Text["BroadCast"][nMonsterId]
	else
		sBroadText = tMonster_BossAdjustment_Text["BroadCast"][1]
	end

	local sFinalText = string.format(sBroadText,sMonsterName,nPosX,nPosY,nMonsterId,nPosX,nPosY)
	Sys_TalkBroadcast(sFinalText)
	-- Sys_SystemBroadcastToOS(sFinalText)
end

-- 点击寻路刷怪点
function Monster_BossAdjustment_PathFind(nMonsterId,nPosX,nPosY)
	-- 国境地图
	local nMapId = tMonster_BossAdjustment_Count["MapId"]
	local nNowUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nNowUserId)
	-- 【国境内】自动寻路至妖魔处
	if nMapId == nUserMapId then
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0)
	else
		local sOutTip = tMonster_BossAdjustment_Text["Tip"][1]
		local sMonsterName = tMonster_BossAdjustment_Text["MonsterName"][nMonsterId]
		User_TalkChannel2005(string.format(sOutTip,sMonsterName,nPosX,nPosY),nNowUserId)
	end
end

-- 每周一的00点清领取动态码
function Monster_BossAdjustment_ClearGlobal()
	local nGlobalId = tMonster_BossAdjustment_Count["GlobalId"]
	local sDataStr5 = Get_SysDynaGlobalDataStr5(nGlobalId)
	if Sys_ChkDayTime(tMonster_BossAdjustment_Count["ClearTime"]) then
		if not (sDataStr5 == "1") then
			Sys_SetSynaGlobalDataStr5(nGlobalId,"1")
			Sys_SetSynaGlobalData0(nGlobalId,0)
			Sys_SetSynaGlobalData1(nGlobalId,0)
		end
	else
		if sDataStr5 == "1" then
			Sys_SetSynaGlobalDataStr5(nGlobalId,"0")
		end
	end
end
-- 每周一的00点清排行榜动态码
function Monster_BossAdjustment_ClearGlobal1()

	for i = 1,2 do
		for j = 0, 5 do
			local nGlobalId = tRankingFunc_Info[17400]["Global"][i]
			Sys_SetSynaGlobalData(nGlobalId,j,0)
			Sys_SetSynaGlobalDataStr(nGlobalId,j,"")
		end
	end
	RankingFunc_ClearingData(17400)
end


-- 邮件点击领取参与奖
function Monster_BossAdjustment_Join()
	RewardTemplate_UseItem(tMonster_BossAdjustment_Reward[2],nil,true)
end

-- 邮件点击领取小boss
function Monster_BossAdjustment_Ranking(nMonsterId,nRanking)
	local tReward = tMonster_BossAdjustment_Reward[3]
	local nRewardItem = tMonster_BossAdjustment_Count["Reward"][nMonsterId]["RankingItem"][nRanking]
	tReward["RewardItem"][1]["Id"] = nRewardItem
	RewardTemplate_UseItem(tReward,nil,true)
end

-- 邮件点击领取boss
function Monster_BossAdjustment_BossRanking(nRanking)
	local tReward = tMonster_BossAdjustment_Reward[3]
	local nMonsterId = tMonster_BossAdjustment_Count["MonsterId"][1]
	local nRewardItem = tMonster_BossAdjustment_Count["Reward"][nMonsterId]["RankingItem"][nRanking]
	tReward["RewardItem"][1]["Id"] = nRewardItem
	RewardTemplate_UseItem(tReward,nil,true)
end

-- 使用物品
function Monster_BossAdjustment_UseItem(nItemId,nIndex)
	tMonster_BossAdjustment_Reward[nIndex]["DeleteItem"][1]["Id"] = nItemId
	RewardTemplate_UseItemAndMsg(tMonster_BossAdjustment_Reward[nIndex])
end

-- 发放邮件
function Monster_BossAdjustment_SendMail(nMonsterId)
	-- 发邮件
	local nUserId = Get_UserId()
	local nServerId = Get_UserServerId(nUserId)
	local nTaskId = tMonster_BossAdjustment_Count["TaskId"]
	local nNewUserId = Get_TaskDetailData2(nTaskId,nUserId)
	local nActionId = tMonster_BossAdjustment_Mail[nMonsterId]
	local sMonsterName = tMonster_BossAdjustment_Text["MonsterName"][nMonsterId]
	local nNewItemId = tMonster_BossAdjustment_Count["Reward"][nMonsterId]["Kill"]
	local sRewardName = Get_ItemtypeName(nNewItemId)
	
	local nExistDay = tMonster_BossAdjustment_Count["MailExistDay"]
	local sSender = tMonster_BossAdjustment_Text["Mail"]["Sender"]
	local sTitle = tMonster_BossAdjustment_Text["Mail"]["Title"]
	local sContent = ""
	if nMonsterId == tMonster_BossAdjustment_Count["MonsterId"][1] then
		sContent = tMonster_BossAdjustment_Text["Mail"][5]["Content"]
	else
		sContent = string.format(tMonster_BossAdjustment_Text["Mail"][4]["Content"],sMonsterName,sRewardName)
	end

	Sys_SendMail(nNewUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
end

-- 上线触发，把玩家ID存在任务掩码里
function Monster_BossAdjustment_Online()
	local nUserId = Get_UserId()
	local nTaskId = tMonster_BossAdjustment_Count["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	
	Task_SetTaskDetailData2(nTaskId,nUserId,nUserId)
end

-- 神兽看护
function Monster_BossAdjustment_AnimalCare()
	-- LinkNpcGossipFunc_New(23091,"1-1")
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	Sys_DialogTaskClear()
	for i = 111,123 do
		Sys_DialogText(tMonster_BossAdjustment_Text[23091]["Text" .. i])
	end
	Sys_DialogOption(tMonster_BossAdjustment_Text[23091]["Option1"])
	MenuPic(nUserId,10,10,110,"</F>NULL")
	Sys_DialogEnd()
end

--------------------------------------NPC模块-------------------------------------------
-- 17400 跨服任务大使
tNpcGossip[17400] = tNpcGossip[17400] or DefaultNpc:new{}
tNpcGossip[17400]["OptionHidden"] = 1
tNpcGossip[17400]["DialogueText"] = tMonster_BossAdjustment_Text[17400]
-- 接5、领取除魔奖励
-- 【等级未达到】
tNpcGossip[17400]["Text500-1"] = {5011,5012,5013,5014,5015,5016,5017,5018,5019}
tNpcGossip[17400]["tOption500-1"] = {5001}

-- 【等级达到】
tNpcGossip[17400]["Text501-2"] = {5011,5012,5013,5014,5015,5016,5017,5018}
tNpcGossip[17400]["tOption501-2"] = {5011,5012}
-- 5-1、全民嘉奖礼包（暂无）/（可领）/（本周领满）
tNpcGossip[17400]["OptionFunc5011"] = "Monster_BossAdjustment_ReceivePack</N>17400</N>1"
-- 5-2、普天同庆礼包（暂无）/（可领）/（本周领满）
tNpcGossip[17400]["OptionFunc5012"] = "Monster_BossAdjustment_ReceivePack</N>17400</N>2"

-- 接5-1、全民嘉奖礼包
-- 【失败，没有礼包可领取】
tNpcGossip[17400]["Text502-1"] = {5021}
tNpcGossip[17400]["tOption502-1"] = {5021}

-- 【失败，本周领满】
tNpcGossip[17400]["Text503-2"] = {5031}
tNpcGossip[17400]["tOption503-2"] = {5031}

-- 【失败，背包满】
tNpcGossip[17400]["Text504-3"] = {5041}
tNpcGossip[17400]["tOption504-3"] = {5041}

-- 接5-2、普天同庆
-- 【失败，没有礼包可领取】
tNpcGossip[17400]["Text505-4"] = {5051}
tNpcGossip[17400]["tOption505-4"] = {5051}

-- 【失败，本周领满】
tNpcGossip[17400]["Text506-5"] = {5061}
tNpcGossip[17400]["tOption506-5"] = {5061}
-- 【失败，背包满】同21-3

-- -伏魔宝箱/邪凰宝箱
tNpcGossip[23060] = tNpcGossip[23060] or DefaultNpc:new{}
tNpcGossip[23060]["OptionHidden"] = 1
tNpcGossip[23060]["DialogueText"] = tMonster_BossAdjustment_Text[23060] 
-- NPC：
tNpcGossip[23060]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23060]["tOption1-1"] = {1}

-- 【密钥错误，失败，宝箱还未开启】
tNpcGossip[23060]["Text1-2"] = {121}
tNpcGossip[23060]["tOption1-2"] = {2}

-- 国境BOSS指引专员
tNpcFace[1756] = 106
tNpcGossip[23091] = tNpcGossip[23091] or DefaultNpc:new{}
tNpcGossip[23091]["OptionHidden"] = 1
tNpcGossip[23091]["DialogueText"] = tMonster_BossAdjustment_Text[23091]

tNpcGossip[23091]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123}
tNpcGossip[23091]["tOption1-1"] = {1}

--------------------------------------物品模块-------------------------------------------
-- 3600045,'国境伏魔豪礼包'
tItem[3600045] = tItem[3600045] or {}
tItem[3600045]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_OpenJoinItem(nItemId)
end
-- 3310019,'全民嘉奖礼包'
tItem[3310019] = tItem[3310019] or {}
tItem[3310019]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_OpenItem(nItemId)
end

-- 3310020,'普天同庆礼包'
tItem[3310020] = tItem[3310019]

-- 3600046,'【铁翼狂龙】秘宝箱'
tItem[3600046] = tItem[3600046] or {}
tItem[3600046]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_OpenSmallBox(nItemId)
end
-- 3600051,'【雪灵蛛后】秘宝箱'
tItem[3600051] = tItem[3600046]
-- 3600056,'【噬魂饕餮】秘宝箱'
tItem[3600056] = tItem[3600046]
-- 3600061,'【狂暴巨魔】秘宝箱'
tItem[3600061] = tItem[3600046]

-- 3600066,'【狱火邪凰】至宝箱'
tItem[3600066] = tItem[3600066] or {}
tItem[3600066]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_OpenBigBox(nItemId)
end

-- 3600047,'【铁翼狂龙】伏魔宗师包'
tItem[3600047] = tItem[3600047] or {}
tItem[3600047]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_UseItem(nItemId,3600047)
end
-- 3600052,'【雪灵蛛后】伏魔宗师包'
tItem[3600052] = tItem[3600047]
-- 3600057,'【噬魂饕餮】伏魔宗师包'
tItem[3600057] = tItem[3600047]
-- 3600062,'【狂暴巨魔】伏魔宗师包'
tItem[3600062] = tItem[3600047]

-- 3600048,'【铁翼狂龙】伏魔豪杰包'
tItem[3600048] = tItem[3600048] or {}
tItem[3600048]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_UseItem(nItemId,3600048)
end
-- 3600053,'【雪灵蛛后】伏魔豪杰包'
tItem[3600053] = tItem[3600048]
-- 3600058,'【噬魂饕餮】伏魔豪杰包'
tItem[3600058] = tItem[3600048]
-- 3600063,'【狂暴巨魔】伏魔豪杰包'
tItem[3600063] = tItem[3600048]

-- 3600049,'【铁翼狂龙】伏魔高手包'
tItem[3600049] = tItem[3600049] or {}
tItem[3600049]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_UseItem(nItemId,3600049)
end
-- 3600054,'【雪灵蛛后】伏魔高手包'
tItem[3600054] = tItem[3600049]
-- 3600059,'【噬魂饕餮】伏魔高手包'
tItem[3600059] = tItem[3600049]
-- 3600064,'【狂暴巨魔】伏魔高手包
tItem[3600064] = tItem[3600049]

-- 3600050,'【铁翼狂龙】伏魔精英包''
tItem[3600050] = tItem[3600050] or {}
tItem[3600050]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_UseItem(nItemId,3600050)
end
-- 3600055,'【雪灵蛛后】伏魔精英包'
tItem[3600055] = tItem[3600050]
-- 3600060,'【噬魂饕餮】伏魔精英包'
tItem[3600060] = tItem[3600050]
-- 3600065,'【狂暴巨魔】伏魔精英包'
tItem[3600065] = tItem[3600050]

-- 3600067,'【狱火邪凰】斩妖宗师包'
tItem[3600067] = tItem[3310019]
-- 3600068,'【狱火邪凰】斩妖豪杰包'
tItem[3600068] = tItem[3600068] or {}
tItem[3600068]["Function"] = function(nItemId,sItemName)
	Monster_BossAdjustment_UseItem(nItemId,nItemId)
end
-- 3600069,'【狱火邪凰】斩妖高手包'
tItem[3600069] = tItem[3600068]
-- 3600070,'【狱火邪凰】斩妖精英包'
tItem[3600070] = tItem[3600068]



-- 3600071,'200气力值国境包'
tItem[3600071] = tItem[3600071] or {}
tItem[3600071]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tMonster_BossAdjustment_Reward[nItemId])
end
-- 3600072,'明亮星陨石国境包'
tItem[3600072] = tItem[3600071]
-- 3600073,'+3赤炼石（赠）国境包'
tItem[3600073] = tItem[3600071]
-- 3600074,'40天石（赠）国境包'
tItem[3600074] = tItem[3600071]
-- 3600075,'3000气力值国境豪侠包'
tItem[3600075] = tItem[3600071]
-- 3600076,'晶莹星陨石国境豪侠包'
tItem[3600076] = tItem[3600071]
-- 3600077,'+5赤炼石（赠）国境豪侠包'
tItem[3600077] = tItem[3600071]
-- 3600078,'500天石（赠）国境豪侠包'
tItem[3600078] = tItem[3600071]

--------------------------------------怪物掉落-------------------------------------------
local tKillMonsterDropItem_Drop = {}
	-- BOSS的掉落
	tKillMonsterDropItem_Drop[1] = {}
	tKillMonsterDropItem_Drop[1]["Function"] = Monster_BossAdjustment_KillBoss
	tKillMonsterDropItem_Drop[1]["MonsterId"] = {4816}
	-- 小怪的掉落
	tKillMonsterDropItem_Drop[2] = {}
	tKillMonsterDropItem_Drop[2]["Function"] = Monster_BossAdjustment_KillMonster
	tKillMonsterDropItem_Drop[2]["MonsterId"] = {4808,4809,4810,4811,4812,4813,4814,4815}
	-- 宝箱怪的掉落
	tKillMonsterDropItem_Drop[3] = {}
	tKillMonsterDropItem_Drop[3]["Function"] = Monster_BossAdjustment_KillBoxMonster
	tKillMonsterDropItem_Drop[3]["MonsterId"] = {4913,4914,4915,4916,4917,4918,4919,4920}
	
table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[1])
table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[2])
table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[3])

for nId = 4808,4816 do
	-- 伤害排行
	tBossDamageBonus[nId] = tBossDamageBonus[nId] or {}
	tBossDamageBonus[nId]["tFunction"] = tBossDamageBonus[nId]["tFunction"] or {}
	table.insert(tBossDamageBonus[nId]["tFunction"],Monster_BossAdjustment_BossDamgRank)
	
	-- 参与奖励
	tBossRewardEnd[nId] = tBossRewardEnd[nId] or {}
	tBossRewardEnd[nId]["tFunction"] = tBossRewardEnd[nId]["tFunction"] or {}
	table.insert(tBossRewardEnd[nId]["tFunction"],Monster_BossAdjustment_KillBossJoin)
end


--------------------------------------时间自检-------------------------------------------
--刷怪
local tMonster_BossAdjustment_OnTime = {}
	-- 每天晚上10:10国境中心国境大BOSS
	tMonster_BossAdjustment_OnTime[1] = {}
	tMonster_BossAdjustment_OnTime[1]["Type"] = 3
	tMonster_BossAdjustment_OnTime[1]["TimeType"] = 4
	tMonster_BossAdjustment_OnTime[1]["Multiple"] = {}
	tMonster_BossAdjustment_OnTime[1]["Multiple"][1] = "22:10 22:10"
	tMonster_BossAdjustment_OnTime[1]["Multiple"][2] = "10:10 10:10"
	tMonster_BossAdjustment_OnTime[1]["Func"] = Monster_BossAdjustment_RefreshBoss
	-- 每小时刷新小boss
	tMonster_BossAdjustment_OnTime[2] = {}
	tMonster_BossAdjustment_OnTime[2]["Type"] = 3
	tMonster_BossAdjustment_OnTime[2]["TimeType"] = 5
	tMonster_BossAdjustment_OnTime[2]["Time"] = "00 00"
	tMonster_BossAdjustment_OnTime[2]["Func"] = Monster_BossAdjustment_RefreshMonster
	-- 每周一的00点清领取动态码
	tMonster_BossAdjustment_OnTime[3] = {}
	tMonster_BossAdjustment_OnTime[3]["Type"] = 2
	tMonster_BossAdjustment_OnTime[3]["TimeType"] = 3
	tMonster_BossAdjustment_OnTime[3]["Time"] = "1 00:00 1 00:05"
	tMonster_BossAdjustment_OnTime[3]["Func"] = Monster_BossAdjustment_ClearGlobal
	
	-- 每周一的00点清排行榜动态码
	tMonster_BossAdjustment_OnTime[4] = {}
	tMonster_BossAdjustment_OnTime[4]["Type"] = 2
	tMonster_BossAdjustment_OnTime[4]["TimeType"] = 3
	tMonster_BossAdjustment_OnTime[4]["Time"] = "1 00:00 1 00:05"
	tMonster_BossAdjustment_OnTime[4]["Func"] = Monster_BossAdjustment_ClearGlobal1
	
	
table.insert(tSystemTime_InitialData,tMonster_BossAdjustment_OnTime[1])
table.insert(tSystemTime_InitialData,tMonster_BossAdjustment_OnTime[2])
table.insert(tSystemTime_InitialData,tMonster_BossAdjustment_OnTime[3])
table.insert(tSystemTime_InitialData,tMonster_BossAdjustment_OnTime[4])
-- table.insert(tSystem_PlayLogin_Func,Monster_BossAdjustment_Online)
