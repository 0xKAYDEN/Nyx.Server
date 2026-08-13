------------------------------------------------------------------------------------
--Name:		200512[简体征服][活动脚本]全球暑期活动(7.7-7.20)
--Creator: 	兰瑞妹
--Created:	2020/05/12
------------------------------------------------------------------------------------

-- 命名前缀
-- MonsterHell_

-- logid 12001988,4[]

-- #stc 掩码说明 
-- #stc(222,47) 西瓜种子 每日最多可以获得10个，其他地方的共享限量，超过给发霉的
-- #stc(223,04) 发霉的西瓜籽 每日最多可以获得100个，其他地方的共享限量，超过不给
-- #stc(223,05) 蛇血气力酒 每日最多可以获得20个，其他地方的共享限量，超过给发霉的
-- #stc(224,51) 补偿发邮件

-- 翁清海
-- SummerActivityOrder_GetOrderInfo
-- 12对应订单1，3对应订单2， 456对应订单3, 789对应订单4, 0无订单
--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tMonsterHell_Count = {}
	-- 活动时间
	tMonsterHell_Count["ActivityTime"] = tActivityTime["SummerActive"]["ActivityTime"]
	
	-- 等级
	tMonsterHell_Count["Level"] = 80
	tMonsterHell_Count["Meto"] = 0
	
	-- 杀怪掉落
	tMonsterHell_Count["Min"] = 300
	tMonsterHell_Count["Max"] = 10000
	
	-- 道具使用对应的地图和怪物
	tMonsterHell_Count["Prop"] = {}
	-- 3316283,'净瓶玉露'
	tMonsterHell_Count["Prop"][3316283] = {}
	tMonsterHell_Count["Prop"][3316283]["MapId"] = 10864
	tMonsterHell_Count["Prop"][3316283]["MonsterId"] = {6274,6275,6276}
	tMonsterHell_Count["Prop"][3316283]["Index"] = 2
	tMonsterHell_Count["Prop"][3316283]["OrderNum"] = {4,6}
	-- 3316284,'烈焰箭矢'
	tMonsterHell_Count["Prop"][3316284] = {}
	tMonsterHell_Count["Prop"][3316284]["MapId"] = 10863
	tMonsterHell_Count["Prop"][3316284]["MonsterId"] = {6476,6477,6277,6278}
	tMonsterHell_Count["Prop"][3316284]["Index"] = 1
	tMonsterHell_Count["Prop"][3316284]["OrderNum"] = {7,9}
	
	-- 系统定时60秒
	tMonsterHell_Count["DelayTime"] = 5
	
	-- 订单对应任务道具
	-- 12对应订单1，3对应订单2， 456对应订单3, 789对应订单4, 0无订单
	tMonsterHell_Count["Order"] = {}
	tMonsterHell_Count["Order"][1] = 3316276
	tMonsterHell_Count["Order"][2] = 3316275
	tMonsterHell_Count["Order"][4] = 3316277
	tMonsterHell_Count["Order"][5] = 3316278
	tMonsterHell_Count["Order"][6] = 3316279
	tMonsterHell_Count["Order"][7] = 3316280
	tMonsterHell_Count["Order"][8] = 3316281
	tMonsterHell_Count["Order"][9] = 3316282
	
	-- 怪物对应的任务道具
	tMonsterHell_Count["Order"][6475] = 3316276
	tMonsterHell_Count["Order"][6474] = 3316275
	
	-- 距离怪物范围
	tMonsterHell_Count["Range"] = 6
	-- 真身
	tMonsterHell_Count["RealMonster"] = {6478,6479,6480,6481,6482}
	
	-- 采集时间
	tMonsterHell_Count["ExploreTime"] = 3
	tMonsterHell_Count["ExploreAction"] = 220
	
	-- 3331141,'通讯天书'
	tMonsterHell_Count["OrderItem"] = 3331141
	
	-- npc对应怪
	tMonsterHell_Count["MonsterId"] = {}
	tMonsterHell_Count["MonsterId"][26593] = {}
	tMonsterHell_Count["MonsterId"][26593][1] = 6475
	tMonsterHell_Count["MonsterId"][26593][2] = 6274
	-- 对应订单id
	tMonsterHell_Count["MonsterId"][26593][3] = {4,6}
	-- 寻路
	tMonsterHell_Count["MonsterId"][26593][4] = 4
	-- 小怪订单
	tMonsterHell_Count["MonsterId"][26593][5] = 1
	tMonsterHell_Count["MonsterId"][26594] = {}
	tMonsterHell_Count["MonsterId"][26594][1] = 6474
	tMonsterHell_Count["MonsterId"][26594][2] = 6476
	-- 对应订单id
	tMonsterHell_Count["MonsterId"][26594][3] = {7,9}
	-- 寻路
	tMonsterHell_Count["MonsterId"][26594][4] = 3
	tMonsterHell_Count["MonsterId"][26594][5] = 2
	
	-- 瓜田
	tMonsterHell_Count["Melon"] = 10282
	
	-- 上线发邮件
	tMonsterHell_Count["ExistDay"] = 3
	tMonsterHell_Count["ActionId"] = 578872
	

-- Log表
local tMonsterHell_Log = {}
	-- 过期删除
	tMonsterHell_Log["OverDue"] = "0,0,%d,%d,12001988,4[1],0,0"
	
-- stc掩码
local tMonsterHell_Stc = {}
	-- 记录是否发过邮件
	tMonsterHell_Stc[1] = {}
	tMonsterHell_Stc[1]["EventType"] = 224
	tMonsterHell_Stc[1]["DataType"] = 51
	
-- 播放光效
local tMonsterHell_Effect = {}
	-- 使用道具
	tMonsterHell_Effect[1] = {}
	tMonsterHell_Effect[1]["SzObj"] = "self"
	tMonsterHell_Effect[1]["Effect"] = "Attack35r"
	
-- 刷新怪物
local tMonsterHell_RefreshMonster = {}
	tMonsterHell_RefreshMonster[1] = {}
	-- 极冰之魔 1
	tMonsterHell_RefreshMonster[1][1] = {}
	tMonsterHell_RefreshMonster[1][1]["Generator"] = 31059
	tMonsterHell_RefreshMonster[1][1]["MonsterId"] = 6476
	tMonsterHell_RefreshMonster[1][1]["Time"] = 3600
	tMonsterHell_RefreshMonster[1][1]["Pos"] = {10863,85,114}
	-- 极冰之魔 1
	tMonsterHell_RefreshMonster[1][2] = {}
	tMonsterHell_RefreshMonster[1][2]["Generator"] = 31060
	tMonsterHell_RefreshMonster[1][2]["MonsterId"] = 6477
	tMonsterHell_RefreshMonster[1][2]["Time"] = 3600
	tMonsterHell_RefreshMonster[1][2]["Pos"] = {10863,121,114}
	tMonsterHell_RefreshMonster[1][3] = {}
	tMonsterHell_RefreshMonster[1][3]["Generator"] = 31153
	tMonsterHell_RefreshMonster[1][3]["MonsterId"] = 6277
	tMonsterHell_RefreshMonster[1][3]["Time"] = 3600
	tMonsterHell_RefreshMonster[1][3]["Pos"] = {10863,55,73}
	tMonsterHell_RefreshMonster[1][4] = {}
	tMonsterHell_RefreshMonster[1][4]["Generator"] = 31154
	tMonsterHell_RefreshMonster[1][4]["MonsterId"] = 6278
	tMonsterHell_RefreshMonster[1][4]["Time"] = 3600
	tMonsterHell_RefreshMonster[1][4]["Pos"] = {10863,87,57}
	tMonsterHell_RefreshMonster[1][5] = {}
	tMonsterHell_RefreshMonster[1][5]["Generator"] = 31445
	tMonsterHell_RefreshMonster[1][5]["MonsterId"] = 4046
	tMonsterHell_RefreshMonster[1][5]["Time"] = 3600
	tMonsterHell_RefreshMonster[1][5]["Pos"] = {10863,133,86}
	tMonsterHell_RefreshMonster[1][6] = {}
	tMonsterHell_RefreshMonster[1][6]["Generator"] = 31446
	tMonsterHell_RefreshMonster[1][6]["MonsterId"] = 4047
	tMonsterHell_RefreshMonster[1][6]["Time"] = 3600
	tMonsterHell_RefreshMonster[1][6]["Pos"] = {10863,111,131}
	tMonsterHell_RefreshMonster[2] = {}
	-- 烈焰之魔
	tMonsterHell_RefreshMonster[2][1] = {}
	tMonsterHell_RefreshMonster[2][1]["Generator"] = 31061
	tMonsterHell_RefreshMonster[2][1]["MonsterId"] = 6274
	tMonsterHell_RefreshMonster[2][1]["Time"] = 3600
	tMonsterHell_RefreshMonster[2][1]["Pos"] = {10864,94,92}
	tMonsterHell_RefreshMonster[2][2] = {}
	tMonsterHell_RefreshMonster[2][2]["Generator"] = 31062
	tMonsterHell_RefreshMonster[2][2]["MonsterId"] = 6275
	tMonsterHell_RefreshMonster[2][2]["Time"] = 3600
	tMonsterHell_RefreshMonster[2][2]["Pos"] = {10864,145,87}
	tMonsterHell_RefreshMonster[2][3] = {}
	tMonsterHell_RefreshMonster[2][3]["Generator"] = 31063
	tMonsterHell_RefreshMonster[2][3]["MonsterId"] = 6276
	tMonsterHell_RefreshMonster[2][3]["Time"] = 3600
	tMonsterHell_RefreshMonster[2][3]["Pos"] = {10864,86,137}
	tMonsterHell_RefreshMonster[2][4] = {}
	tMonsterHell_RefreshMonster[2][4]["Generator"] = 31443
	tMonsterHell_RefreshMonster[2][4]["MonsterId"] = 4044
	tMonsterHell_RefreshMonster[2][4]["Time"] = 3600
	tMonsterHell_RefreshMonster[2][4]["Pos"] = {10864,121,135}
	tMonsterHell_RefreshMonster[2][5] = {}
	tMonsterHell_RefreshMonster[2][5]["Generator"] = 31444
	tMonsterHell_RefreshMonster[2][5]["MonsterId"] = 4045
	tMonsterHell_RefreshMonster[2][5]["Time"] = 3600
	tMonsterHell_RefreshMonster[2][5]["Pos"] = {10864,103,164}
	
-- 移出npc
local tMonsterHell_MoveNpc = {}
	tMonsterHell_MoveNpc[26595] = {10864,94,92,6274}
	tMonsterHell_MoveNpc[26600] = {10864,145,87,6275}
	tMonsterHell_MoveNpc[26601] = {10864,86,137,6276}
	tMonsterHell_MoveNpc[26981] = {10864,121,135,4044}
	tMonsterHell_MoveNpc[26982] = {10864,103,164,4045}
	-- 移出地图
	tMonsterHell_MoveNpc[1] = {5000,100,100,0}
	
	
-- 离开地图坐标
local tMonsterHell_EnterMap = {}
	-- 10863,'冰魔巢穴'
	tMonsterHell_EnterMap[26604] = {}
	tMonsterHell_EnterMap[26604]["MapId"] = 10863
	tMonsterHell_EnterMap[26604]["PosX"] = 102
	tMonsterHell_EnterMap[26604]["PosY"] = 91
	tMonsterHell_EnterMap[26604]["Bound"] = 5
	tMonsterHell_EnterMap[26604]["NpcId"] = 26594
	-- 10864,'炎魔巢穴'
	tMonsterHell_EnterMap[26605] = {}
	tMonsterHell_EnterMap[26605]["MapId"] = 10864
	tMonsterHell_EnterMap[26605]["PosX"] = 160
	tMonsterHell_EnterMap[26605]["PosY"] = 160
	tMonsterHell_EnterMap[26605]["Bound"] = 5
	tMonsterHell_EnterMap[26605]["NpcId"] = 26593
	-- 离开地图坐标
	tMonsterHell_EnterMap[1] = {}
	tMonsterHell_EnterMap[1]["MapId"] = 10869
	tMonsterHell_EnterMap[1]["PosX"] = 61
	tMonsterHell_EnterMap[1]["PosY"] = 64
	tMonsterHell_EnterMap[1]["Bound"] = 5
	-- 交任务npc
	tMonsterHell_EnterMap[2] = {}
	tMonsterHell_EnterMap[2]["MapId"] = 10869
	tMonsterHell_EnterMap[2]["PosX"] = 61
	tMonsterHell_EnterMap[2]["PosY"] = 60
	tMonsterHell_EnterMap[2]["Bound"] = 5
	-- 小怪位置
	tMonsterHell_EnterMap[3] = {}
	tMonsterHell_EnterMap[3]["MapId"] = 10863
	tMonsterHell_EnterMap[3]["PosX"] = 103
	tMonsterHell_EnterMap[3]["PosY"] = 125
	tMonsterHell_EnterMap[4] = {}
	tMonsterHell_EnterMap[4]["MapId"] = 10864
	tMonsterHell_EnterMap[4]["PosX"] = 145
	tMonsterHell_EnterMap[4]["PosY"] = 127
	-- 瓜田
	tMonsterHell_EnterMap[5] = {}
	tMonsterHell_EnterMap[5]["MapId"] = 10282
	tMonsterHell_EnterMap[5]["PosX"] = 23
	tMonsterHell_EnterMap[5]["PosY"] = 27
	

local tMonsterHell_Reward = {}
	-- ===补领净瓶玉露
	-- ===索引: tMonsterHell_Reward[26593]
	-- ===LogStep: 4[2]
	tMonsterHell_Reward[26593] = {}
	tMonsterHell_Reward[26593]["LogId"] = 12001988
	tMonsterHell_Reward[26593]["LogStep"] = "4[2]"
	tMonsterHell_Reward[26593]["RewardItem"] = {}
	tMonsterHell_Reward[26593]["RewardItem"][1] = {}
	tMonsterHell_Reward[26593]["RewardItem"][1]["Id"] = 3316283 -- 净瓶玉露[3316283][属性:11][叠加:0][金币:0], 【表格】净瓶玉露
	tMonsterHell_Reward[26593]["RewardItem"][1]["Attr"] = "0 1 0 120 1" -- 2小时时效(激活)的净瓶玉露*1
	tMonsterHell_Reward[26593]["RewardEffect"] = {}
	tMonsterHell_Reward[26593]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Reward[26593]["RewardEffect"]["Effect"] = "angelwing"


	-- ===补领烈焰箭矢
	-- ===索引: tMonsterHell_Reward[26594]
	-- ===LogStep: 4[2]
	tMonsterHell_Reward[26594] = {}
	tMonsterHell_Reward[26594]["LogId"] = 12001988
	tMonsterHell_Reward[26594]["LogStep"] = "4[2]"
	tMonsterHell_Reward[26594]["RewardItem"] = {}
	tMonsterHell_Reward[26594]["RewardItem"][1] = {}
	tMonsterHell_Reward[26594]["RewardItem"][1]["Id"] = 3316284 -- 烈焰箭矢[3316284][属性:11][叠加:0][金币:0], 【表格】烈焰箭矢
	tMonsterHell_Reward[26594]["RewardItem"][1]["Attr"] = "0 1 0 120 1" -- 2小时时效(激活)的烈焰箭矢*1
	tMonsterHell_Reward[26594]["RewardEffect"] = {}
	tMonsterHell_Reward[26594]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Reward[26594]["RewardEffect"]["Effect"] = "angelwing"


	-- ===发霉的西瓜种子
	-- ===索引: tMonsterHell_Reward[3316273]
	-- ===删除: 3316273,2
	-- ===LogStep: 4[6]
	tMonsterHell_Reward[3316273] = {}
	tMonsterHell_Reward[3316273]["LogId"] = 12001988
	tMonsterHell_Reward[3316273]["LogStep"] = "4[6]"
	tMonsterHell_Reward[3316273]["DeleteItem"] = {}
	tMonsterHell_Reward[3316273]["DeleteItem"][1] = {}
	tMonsterHell_Reward[3316273]["DeleteItem"][1]["Id"] = 3316273 -- 【库】发霉的西瓜种子[属性:9]
	tMonsterHell_Reward[3316273]["DeleteItem"][1]["ItemNum"] = 2
	tMonsterHell_Reward[3316273]["RewardStrengthValue"] = {}
	tMonsterHell_Reward[3316273]["RewardStrengthValue"]["Value"] = 2 -- 气力值, 【需求】换气
	tMonsterHell_Reward[3316273]["RewardEffect"] = {}
	tMonsterHell_Reward[3316273]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Reward[3316273]["RewardEffect"]["Effect"] = "angelwing"

local tMonsterHell_Random = {}
	tMonsterHell_Random[1] = {}
	-- ===击杀炎魔小怪、冰魔小怪
	-- ===索引: tMonsterHell_Random[1][1]
	-- ===LogStep: 4[3]
	-- RewardTemplate_RandomReward(tMonsterHell_Random[1],1)
	tMonsterHell_Random[1][1] = {}
	tMonsterHell_Random[1][1]["ItemChanceSum"] = 10000
	tMonsterHell_Random[1][1]["LogId"] = 12001988
	tMonsterHell_Random[1][1]["LogStep"] = " 4[3]"
	-- 任务道具 - 3%
	tMonsterHell_Random[1][1][1] = {}
	tMonsterHell_Random[1][1][1]["RandomItemChanceType"] = 2
	tMonsterHell_Random[1][1][1]["ItemChance"] = 300
	tMonsterHell_Random[1][1][1]["RewardItem"] = {}
	tMonsterHell_Random[1][1][1]["RewardItem"][1] = {}
	tMonsterHell_Random[1][1][1]["RewardItem"][1]["Id"] = 3316275 -- 冰蓝鳞片[3316275][属性:11][叠加:0][金币:0], 【表格】任务道具
	tMonsterHell_Random[1][1][1]["RewardItem"][1]["Attr"] = "0 1 0 120 1" -- 2小时时效(激活)的冰蓝鳞片*1
	tMonsterHell_Random[1][1][1]["RewardEffect"] = {}
	tMonsterHell_Random[1][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[1][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 发霉的西瓜籽 - 3%
	tMonsterHell_Random[1][1][2] = {}
	tMonsterHell_Random[1][1][2]["RandomItemChanceType"] = 2
	tMonsterHell_Random[1][1][2]["ItemChance"] = 300
	tMonsterHell_Random[1][1][2]["RewardItem"] = {}
	tMonsterHell_Random[1][1][2]["RewardItem"][1] = {}
	tMonsterHell_Random[1][1][2]["RewardItem"][1]["Id"] = 3316273 -- 发霉的西瓜种子[3316273][属性:9][叠加:10000][金币:0], 【表格】发霉的西瓜籽
	tMonsterHell_Random[1][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 发霉的西瓜种子*1
	tMonsterHell_Random[1][1][2]["RewardEffect"] = {}
	tMonsterHell_Random[1][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[1][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得100个, 最多可获得:（1400）
	tMonsterHell_Random[1][1][2]["EventType"] = 223
	tMonsterHell_Random[1][1][2]["DataType"] = 4
	tMonsterHell_Random[1][1][2]["RewardDelay"] = 1
	tMonsterHell_Random[1][1][2]["RewardTimeType"] = 4
	tMonsterHell_Random[1][1][2]["RewardData"] = 100
	tMonsterHell_Random[1][1][2]["RewardTotalData"] = 1400
	-- 发芽的西瓜籽 - 3%
	tMonsterHell_Random[1][1][3] = {}
	tMonsterHell_Random[1][1][3]["RandomItemChanceType"] = 2
	tMonsterHell_Random[1][1][3]["ItemChance"] = 300
	tMonsterHell_Random[1][1][3]["RewardItem"] = {}
	tMonsterHell_Random[1][1][3]["RewardItem"][1] = {}
	tMonsterHell_Random[1][1][3]["RewardItem"][1]["Id"] = 3316274 -- 西瓜种子[3316274][属性:9][叠加:10000][金币:0], 【表格】发芽的西瓜籽
	tMonsterHell_Random[1][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 西瓜种子*1
	tMonsterHell_Random[1][1][3]["RewardEffect"] = {}
	tMonsterHell_Random[1][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[1][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得10个, 最多可获得:（140）, 超限给编号（2）-
	tMonsterHell_Random[1][1][3]["EventType"] = 222
	tMonsterHell_Random[1][1][3]["DataType"] = 47
	tMonsterHell_Random[1][1][3]["RewardDelay"] = 1
	tMonsterHell_Random[1][1][3]["RewardTimeType"] = 4
	tMonsterHell_Random[1][1][3]["RewardData"] = 10
	tMonsterHell_Random[1][1][3]["RewardTotalData"] = 140
	tMonsterHell_Random[1][1][3]["FullIndex"] = 2
	-- 不掉 - 91%
	tMonsterHell_Random[1][1][4] = {}
	tMonsterHell_Random[1][1][4]["RandomItemChanceType"] = 2
	tMonsterHell_Random[1][1][4]["ItemChance"] = 9100


	tMonsterHell_Random[2] = {}
	-- ===分裂炎魔后,开启炎魔结晶
	-- ===索引: tMonsterHell_Random[2][1]
	-- ===LogStep: 4[4]
	-- RewardTemplate_RandomReward(tMonsterHell_Random[2],1)
	tMonsterHell_Random[2][1] = {}
	tMonsterHell_Random[2][1]["ItemChanceSum"] = 10000
	tMonsterHell_Random[2][1]["LogId"] = 12001988
	tMonsterHell_Random[2][1]["LogStep"] = " 4[4]"
	-- 任务道具 - 50%
	tMonsterHell_Random[2][1][1] = {}
	tMonsterHell_Random[2][1][1]["RandomItemChanceType"] = 2
	tMonsterHell_Random[2][1][1]["ItemChance"] = 5000
	tMonsterHell_Random[2][1][1]["RewardItem"] = {}
	tMonsterHell_Random[2][1][1]["RewardItem"][1] = {}
	tMonsterHell_Random[2][1][1]["RewardItem"][1]["Id"] = 3316277 -- 熔火核心[3316277][属性:11][叠加:0][金币:0], 【表格】任务道具
	tMonsterHell_Random[2][1][1]["RewardItem"][1]["Attr"] = "0 1 0 120 1" -- 2小时时效(激活)的熔火核心*1
	tMonsterHell_Random[2][1][1]["RewardEffect"] = {}
	tMonsterHell_Random[2][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[2][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 发霉的西瓜籽 - 20%
	tMonsterHell_Random[2][1][2] = {}
	tMonsterHell_Random[2][1][2]["RandomItemChanceType"] = 2
	tMonsterHell_Random[2][1][2]["ItemChance"] = 2000
	tMonsterHell_Random[2][1][2]["RewardItem"] = {}
	tMonsterHell_Random[2][1][2]["RewardItem"][1] = {}
	tMonsterHell_Random[2][1][2]["RewardItem"][1]["Id"] = 3316273 -- 发霉的西瓜种子[3316273][属性:9][叠加:10000][金币:0], 【表格】发霉的西瓜籽
	tMonsterHell_Random[2][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 发霉的西瓜种子*1
	tMonsterHell_Random[2][1][2]["RewardEffect"] = {}
	tMonsterHell_Random[2][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[2][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得100个, 最多可获得:（1400）
	tMonsterHell_Random[2][1][2]["EventType"] = 223
	tMonsterHell_Random[2][1][2]["DataType"] = 4
	tMonsterHell_Random[2][1][2]["RewardDelay"] = 1
	tMonsterHell_Random[2][1][2]["RewardTimeType"] = 4
	tMonsterHell_Random[2][1][2]["RewardData"] = 100
	tMonsterHell_Random[2][1][2]["RewardTotalData"] = 1400
	-- 发芽的西瓜籽 - 20%
	tMonsterHell_Random[2][1][3] = {}
	tMonsterHell_Random[2][1][3]["RandomItemChanceType"] = 2
	tMonsterHell_Random[2][1][3]["ItemChance"] = 2000
	tMonsterHell_Random[2][1][3]["RewardItem"] = {}
	tMonsterHell_Random[2][1][3]["RewardItem"][1] = {}
	tMonsterHell_Random[2][1][3]["RewardItem"][1]["Id"] = 3316274 -- 西瓜种子[3316274][属性:9][叠加:10000][金币:0], 【表格】发芽的西瓜籽
	tMonsterHell_Random[2][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 西瓜种子*1
	tMonsterHell_Random[2][1][3]["RewardEffect"] = {}
	tMonsterHell_Random[2][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[2][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得10个, 最多可获得:（140）, 超限给编号（2）-
	tMonsterHell_Random[2][1][3]["EventType"] = 222
	tMonsterHell_Random[2][1][3]["DataType"] = 47
	tMonsterHell_Random[2][1][3]["RewardDelay"] = 1
	tMonsterHell_Random[2][1][3]["RewardTimeType"] = 4
	tMonsterHell_Random[2][1][3]["RewardData"] = 10
	tMonsterHell_Random[2][1][3]["RewardTotalData"] = 140
	tMonsterHell_Random[2][1][3]["FullIndex"] = 2
	-- 蛇血气力酒 - 10%
	tMonsterHell_Random[2][1][4] = {}
	tMonsterHell_Random[2][1][4]["RandomItemChanceType"] = 2
	tMonsterHell_Random[2][1][4]["ItemChance"] = 1000
	tMonsterHell_Random[2][1][4]["RewardItem"] = {}
	tMonsterHell_Random[2][1][4]["RewardItem"][1] = {}
	tMonsterHell_Random[2][1][4]["RewardItem"][1]["Id"] = 3321076 -- 蛇血气力酒[3321076][属性:0][叠加:10000][金币:0], 【表格】蛇血气力酒
	tMonsterHell_Random[2][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 蛇血气力酒*1
	tMonsterHell_Random[2][1][4]["RewardEffect"] = {}
	tMonsterHell_Random[2][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[2][1][4]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得20个, 最多可获得:（280）, 超限给编号（2）-
	tMonsterHell_Random[2][1][4]["EventType"] = 223
	tMonsterHell_Random[2][1][4]["DataType"] = 5
	tMonsterHell_Random[2][1][4]["RewardDelay"] = 1
	tMonsterHell_Random[2][1][4]["RewardTimeType"] = 4
	tMonsterHell_Random[2][1][4]["RewardData"] = 20
	tMonsterHell_Random[2][1][4]["RewardTotalData"] = 280
	tMonsterHell_Random[2][1][4]["FullIndex"] = 2


	tMonsterHell_Random[3] = {}
	-- ===融化冰魔后,出现冰魔真身1,2,3
	-- ===索引: tMonsterHell_Random[3][1]
	-- ===LogStep: 4[5]
	-- RewardTemplate_RandomReward(tMonsterHell_Random[3],1)
	tMonsterHell_Random[3][1] = {}
	tMonsterHell_Random[3][1]["ItemChanceSum"] = 10000
	tMonsterHell_Random[3][1]["LogId"] = 12001988
	tMonsterHell_Random[3][1]["LogStep"] = " 4[5]"
	-- 任务道具 - 50%
	tMonsterHell_Random[3][1][1] = {}
	tMonsterHell_Random[3][1][1]["RandomItemChanceType"] = 2
	tMonsterHell_Random[3][1][1]["ItemChance"] = 5000
	tMonsterHell_Random[3][1][1]["RewardItem"] = {}
	tMonsterHell_Random[3][1][1]["RewardItem"][1] = {}
	tMonsterHell_Random[3][1][1]["RewardItem"][1]["Id"] = 3316280 -- 永恒冰晶[3316280][属性:11][叠加:0][金币:0], 【表格】任务道具
	tMonsterHell_Random[3][1][1]["RewardItem"][1]["Attr"] = "0 1 0 120 1" -- 2小时时效(激活)的永恒冰晶*1
	tMonsterHell_Random[3][1][1]["RewardEffect"] = {}
	tMonsterHell_Random[3][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[3][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 不掉落 - 50%
	tMonsterHell_Random[3][1][2] = {}
	tMonsterHell_Random[3][1][2]["RandomItemChanceType"] = 2
	tMonsterHell_Random[3][1][2]["ItemChance"] = 5000


	-- ===融化冰魔后,出现冰魔真身4
	-- ===索引: tMonsterHell_Random[3][2]
	-- ===LogStep: 4[5]
	-- RewardTemplate_RandomReward(tMonsterHell_Random[3],2)
	tMonsterHell_Random[3][2] = {}
	tMonsterHell_Random[3][2]["ItemChanceSum"] = 10000
	tMonsterHell_Random[3][2]["LogId"] = 12001988
	tMonsterHell_Random[3][2]["LogStep"] = " 4[5]"
	-- 发霉的西瓜籽 - 20%
	tMonsterHell_Random[3][2][1] = {}
	tMonsterHell_Random[3][2][1]["RandomItemChanceType"] = 2
	tMonsterHell_Random[3][2][1]["ItemChance"] = 2000
	tMonsterHell_Random[3][2][1]["RewardItem"] = {}
	tMonsterHell_Random[3][2][1]["RewardItem"][1] = {}
	tMonsterHell_Random[3][2][1]["RewardItem"][1]["Id"] = 3316273 -- 发霉的西瓜种子[3316273][属性:9][叠加:10000][金币:0], 【表格】发霉的西瓜籽
	tMonsterHell_Random[3][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 发霉的西瓜种子*1
	tMonsterHell_Random[3][2][1]["RewardEffect"] = {}
	tMonsterHell_Random[3][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[3][2][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得100个, 最多可获得:（1400）
	tMonsterHell_Random[3][2][1]["EventType"] = 223
	tMonsterHell_Random[3][2][1]["DataType"] = 4
	tMonsterHell_Random[3][2][1]["RewardDelay"] = 1
	tMonsterHell_Random[3][2][1]["RewardTimeType"] = 4
	tMonsterHell_Random[3][2][1]["RewardData"] = 100
	tMonsterHell_Random[3][2][1]["RewardTotalData"] = 1400
	-- 不掉落 - 80%
	tMonsterHell_Random[3][2][2] = {}
	tMonsterHell_Random[3][2][2]["RandomItemChanceType"] = 2
	tMonsterHell_Random[3][2][2]["ItemChance"] = 8000


	-- ===融化冰魔后,出现冰魔真身5
	-- ===索引: tMonsterHell_Random[3][3]
	-- ===LogStep: 4[5]
	-- RewardTemplate_RandomReward(tMonsterHell_Random[3],3)
	tMonsterHell_Random[3][3] = {}
	tMonsterHell_Random[3][3]["ItemChanceSum"] = 10000
	tMonsterHell_Random[3][3]["LogId"] = 12001988
	tMonsterHell_Random[3][3]["LogStep"] = " 4[5]"
	-- 发芽的西瓜籽 - 20%
	tMonsterHell_Random[3][3][1] = {}
	tMonsterHell_Random[3][3][1]["RandomItemChanceType"] = 2
	tMonsterHell_Random[3][3][1]["ItemChance"] = 2000
	tMonsterHell_Random[3][3][1]["RewardItem"] = {}
	tMonsterHell_Random[3][3][1]["RewardItem"][1] = {}
	tMonsterHell_Random[3][3][1]["RewardItem"][1]["Id"] = 3316274 -- 西瓜种子[3316274][属性:9][叠加:10000][金币:0], 【表格】发芽的西瓜籽
	tMonsterHell_Random[3][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 西瓜种子*1
	tMonsterHell_Random[3][3][1]["RewardEffect"] = {}
	tMonsterHell_Random[3][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[3][3][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得10个, 最多可获得:（2）
	tMonsterHell_Random[3][3][1]["EventType"] = 222
	tMonsterHell_Random[3][3][1]["DataType"] = 47
	tMonsterHell_Random[3][3][1]["RewardDelay"] = 1
	tMonsterHell_Random[3][3][1]["RewardTimeType"] = 4
	tMonsterHell_Random[3][3][1]["RewardData"] = 10
	tMonsterHell_Random[3][3][1]["RewardTotalData"] = 2
	-- 发霉的西瓜籽 - 0%
	tMonsterHell_Random[3][3][2] = {}
	tMonsterHell_Random[3][3][2]["RandomItemChanceType"] = 2
	tMonsterHell_Random[3][3][2]["ItemChance"] = 0
	tMonsterHell_Random[3][3][2]["RewardItem"] = {}
	tMonsterHell_Random[3][3][2]["RewardItem"][1] = {}
	tMonsterHell_Random[3][3][2]["RewardItem"][1]["Id"] = 3316273 -- 发霉的西瓜种子[3316273][属性:9][叠加:10000][金币:0], 【表格】发霉的西瓜籽
	tMonsterHell_Random[3][3][2]["RewardItem"][1]["Attr"] = "0 1" -- 发霉的西瓜种子*1
	tMonsterHell_Random[3][3][2]["RewardEffect"] = {}
	tMonsterHell_Random[3][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tMonsterHell_Random[3][3][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得100个, 最多可获得:（1400）
	tMonsterHell_Random[3][3][2]["EventType"] = 223
	tMonsterHell_Random[3][3][2]["DataType"] = 4
	tMonsterHell_Random[3][3][2]["RewardDelay"] = 1
	tMonsterHell_Random[3][3][2]["RewardTimeType"] = 4
	tMonsterHell_Random[3][3][2]["RewardData"] = 100
	tMonsterHell_Random[3][3][2]["RewardTotalData"] = 1400
	-- 不掉落 - 80%
	tMonsterHell_Random[3][3][3] = {}
	tMonsterHell_Random[3][3][3]["RandomItemChanceType"] = 2
	tMonsterHell_Random[3][3][3]["ItemChance"] = 8000

--------------------------------------逻辑配置部分--------------------------------------
-- 获取创建怪物点
function MonsterHell_GetMonsterIndex(nMonsterHell_MonsterId)
	-- 创建boss怪物
	for a,b in pairs(tMonsterHell_RefreshMonster) do
		for g,h in pairs(b) do
			if h["MonsterId"] == nMonsterHell_MonsterId then
				return a,g
			end
		end
	end
end

-- 判断在怪物身边否
function MonsterHell_ChkRange(nMonsterHell_UserCellX,nMonsterHell_UserCellY,nMonsterHell_Index)
	-- 创建boss怪物
	local nRange = tMonsterHell_Count["Range"]
	local nMonsterHell_Id = 0
	local nOtherIndex = 0
	for a,b in pairs(tMonsterHell_RefreshMonster[nMonsterHell_Index]) do
		local tPos = b["Pos"]
		local nMonsterHell_Num = Get_SysTempData(1,tPos[1],b["MonsterId"]) 
		if nMonsterHell_Num > 0 then
			local nMonsterHell_Flag = 0
			if nMonsterHell_UserCellX < tPos[2]-nRange or nMonsterHell_UserCellX > tPos[2]+nRange then
				nMonsterHell_Flag = nMonsterHell_Flag + 1
			end
			if nMonsterHell_UserCellY < tPos[3]-nRange or nMonsterHell_UserCellY > tPos[3]+nRange then
				nMonsterHell_Flag = nMonsterHell_Flag + 1
			end
			if nMonsterHell_Flag == 0 then
				nMonsterHell_Id = b["MonsterId"]
				nOtherIndex = a
				break
			end
		end
	end
	
	return nMonsterHell_Id,nOtherIndex
end

-- 对应传送
function MonsterHell_NewGotoMap(nMonsterHell_Index)
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) and nMonsterHell_Index ~= 1 then
		return
	end
	
	local nMonsterHell_NpcId = tMonsterHell_EnterMap[nMonsterHell_Index]["NpcId"]
	local nMonsterHell_MapId = tMonsterHell_EnterMap[nMonsterHell_Index]["MapId"]
	local nMonsterHell_PosX = tMonsterHell_EnterMap[nMonsterHell_Index]["PosX"]
	local nMonsterHell_PosY = tMonsterHell_EnterMap[nMonsterHell_Index]["PosY"]
	local nMonsterHell_Bound = tMonsterHell_EnterMap[nMonsterHell_Index]["Bound"]
	User_UserRandBoundTrans(nMonsterHell_MapId,nMonsterHell_PosX,nMonsterHell_PosY,nMonsterHell_Bound,nMonsterHell_Bound)
	
	if nMonsterHell_NpcId == nil then
		return
	end
	-- 进入地图提示
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	-- 无订单任务
	local nMonsterHell_TipIndex = 0
	if nMonsterHell_Order < 1 then
		nMonsterHell_TipIndex = 3
	elseif nMonsterHell_Order >= 1 and nMonsterHell_Order <= 3 then
		nMonsterHell_TipIndex = 2
	else	
		-- 有订单任务
		if nMonsterHell_MapId == 10864 then
			if nMonsterHell_Order >=4 and nMonsterHell_Order <= 6 then
				nMonsterHell_TipIndex = 1
			else
				nMonsterHell_TipIndex = 3
			end
		end
		if nMonsterHell_MapId == 10863 then
			if nMonsterHell_Order >= 7 then
				nMonsterHell_TipIndex = 1
			else
				nMonsterHell_TipIndex = 3
			end
		end
	end
	local sMonsterHell_Func = "NpcPosition_PathFind</N>" .. nMonsterHell_NpcId
	Sys_MsgBox(tMonsterHell_Text["EnterMap"][nMonsterHell_MapId][nMonsterHell_TipIndex],sMonsterHell_Func)
end

-- Boss对应寻路
function MonsterHell_PosBossGoto(nMonsterHell_BoosIndex)
	local tMonsterDrop_PosIndex = tMonsterHell_RefreshMonster[nMonsterHell_BoosIndex]
	local nMonsterHell_PosLen = #tMonsterDrop_PosIndex
	local nMonsterHell_Index = math.random(1,nMonsterHell_PosLen)
	local nMonsterHell_PosX = tMonsterDrop_PosIndex[nMonsterHell_Index]["Pos"][2]
	local nMonsterHell_PosY = tMonsterDrop_PosIndex[nMonsterHell_Index]["Pos"][3]
	local nMonsterHell_MapId = tMonsterDrop_PosIndex[nMonsterHell_Index]["Pos"][1]
	Sys_GotoSomeWhere(nMonsterHell_PosX,nMonsterHell_PosY,nMonsterHell_MapId)
end

-- 小怪对应寻路
function MonsterHell_PosMonsterGoto(nMonsterHell_PosIndex)
	local nMonsterHell_PosX = tMonsterHell_EnterMap[nMonsterHell_PosIndex]["PosX"]
	local nMonsterHell_PosY = tMonsterHell_EnterMap[nMonsterHell_PosIndex]["PosY"]
	local nMonsterHell_MapId = tMonsterHell_EnterMap[nMonsterHell_PosIndex]["MapId"]
	Sys_GotoSomeWhere(nMonsterHell_PosX,nMonsterHell_PosY,nMonsterHell_MapId)
end

-- 初始化对白和选项
function MonsterHell_InitDialog(nMonsterHell_NpcId,nMonsterHell_First,nMonsterHell_Second)
	-- 无订单任务
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	local sMonsterHell_BaiscOption = tMonsterHell_Text[nMonsterHell_NpcId]["Option111"]
	if nMonsterHell_Order >= 1 and nMonsterHell_Order <= 2 then
		tNpcGossip[nMonsterHell_NpcId]["Text112"] = tMonsterHell_Text[nMonsterHell_NpcId]["Text1120"]
		local nMonsterHell_KillId = tMonsterHell_Count["MonsterId"][nMonsterHell_NpcId][1]
		tNpcGossip[nMonsterHell_NpcId]["Option111"] = string.format(sMonsterHell_BaiscOption,tMonsterHell_Text["MonsterName"][nMonsterHell_KillId])
		tNpcGossip[nMonsterHell_NpcId]["Option112"] = ""
	elseif nMonsterHell_Order >= nMonsterHell_First and nMonsterHell_Order <= nMonsterHell_Second then
		local nMonsterHell_ItemId = tMonsterHell_Count["Order"][nMonsterHell_Order]
		local sItemName = Get_ItemtypeName(nMonsterHell_ItemId)
		tNpcGossip[nMonsterHell_NpcId]["Text112"] = string.format(tMonsterHell_Text[nMonsterHell_NpcId]["Text1121"],sItemName)
		local nMonsterHell_MonsterId = tMonsterHell_Count["MonsterId"][nMonsterHell_NpcId][2]
		tNpcGossip[nMonsterHell_NpcId]["Option111"] = string.format(sMonsterHell_BaiscOption,tMonsterHell_Text["MonsterName"][nMonsterHell_MonsterId])
		tNpcGossip[nMonsterHell_NpcId]["Option112"] = tMonsterHell_Text[nMonsterHell_NpcId]["Option112"]
	else
		tNpcGossip[nMonsterHell_NpcId]["Text112"] = tMonsterHell_Text[nMonsterHell_NpcId]["Text112"]
		tNpcGossip[nMonsterHell_NpcId]["Option111"] = tMonsterHell_Text[nMonsterHell_NpcId]["Option1110"]
		tNpcGossip[nMonsterHell_NpcId]["Option112"] = ""
	end
end
--------------------------------------npc使用
-- 传送
function MonsterHell_GotoMap(nMonsterHell_Index)
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) and nMonsterHell_Index ~= 1 then
		return
	end
	
	local sMonsterHell_EnterMapTip = tMonsterHell_Text["EnterMapTip"][nMonsterHell_Index]
	local sMonsterHell_Func = "MonsterHell_NewGotoMap</N>%d"
	Sys_MsgBox(sMonsterHell_EnterMapTip,string.format(sMonsterHell_Func,nMonsterHell_Index))
end

-- 补领
function MonsterHell_ReceiveItem(nMonsterHell_NpcId,nMonsterHell_Type,nMonsterHell_BoosIndex)
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		return
	end
	
	-- 无订单任务
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	if nMonsterHell_Type == 1 then
		if nMonsterHell_Order < 1 or nMonsterHell_Order == 3 then
			return
		end
		
		local tMonsterHell_OrderNum = tMonsterHell_Count["MonsterId"][nMonsterHell_NpcId][3]
		-- boss寻路
		if nMonsterHell_Order >= tMonsterHell_OrderNum[1] and nMonsterHell_Order <= tMonsterHell_OrderNum[2] then
			MonsterHell_PosBossGoto(nMonsterHell_BoosIndex)
			return
		end
		
		-- 小怪寻路
		if tMonsterHell_Count["MonsterId"][nMonsterHell_NpcId][5] == nMonsterHell_Order then
			MonsterHell_PosMonsterGoto(tMonsterHell_Count["MonsterId"][nMonsterHell_NpcId][4])
			return
		end
		
		return
	end
	local nMonsterHell_ItemId = tMonsterHell_Reward[nMonsterHell_NpcId]["RewardItem"][1]["Id"]
	
	-- 背包中已经有
	local sMonsterHell_ItemName = Get_ItemtypeName(nMonsterHell_ItemId)
	if Item_ChkItem(nMonsterHell_ItemId) then
		Sys_MsgBox(string.format(tMonsterHell_Text["Recuperation"][3],sMonsterHell_ItemName))
		return
	end
	
	-- 背包不足
	local nMonsterHell_Space = RewardTemplate_GetRewardSpace(tMonsterHell_Reward[nMonsterHell_NpcId])
	if not User_CheckLeftSpace(nMonsterHell_Space) then
		Sys_MsgBox(tMonsterHell_Text["Recuperation"][2])
		return
	end
	
	-- 获得奖励
	local tMonsterHell_LastReward = tMonsterHell_Reward[nMonsterHell_NpcId]
	tMonsterHell_LastReward["Talk"] = string.format(tMonsterHell_Text["Recuperation"][1],sMonsterHell_ItemName)
	RewardTemplate_UseItemAndMsg(tMonsterHell_LastReward)
end

-- 采集核心
function MonsterHell_ExploreItem()
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		return
	end
	local nMonsterHell_NpcId = Get_NpcId()
	local nMonsterHell_MapId = Get_NpcMapID(nMonsterHell_NpcId)
	if nMonsterHell_MapId == tMonsterHell_MoveNpc[1][1] then
		return
	end
	-- 无订单任务或者订单为1/2
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	if nMonsterHell_Order <= 3 then
		Sys_MsgBox(tMonsterHell_Text["Recuperation"][4])
		return
	end
	
	-- 已拿到订单道具
	local nMonsterHell_TaskItemId = tMonsterHell_Count["Order"][nMonsterHell_Order]
	local sMonsterHell_ItemName = Get_ItemtypeName(nMonsterHell_TaskItemId)
	if nMonsterHell_TaskItemId ~= nil and Item_ChkItem(nMonsterHell_TaskItemId) then
		local sMonsterHell_Func = "MonsterHell_FinishOrder</N>2"
		Sys_MsgBox(string.format(tMonsterHell_Text["Recuperation"][6],sMonsterHell_ItemName),sMonsterHell_Func)
		return
	end
	
	-- 判断背包
	local nMonsterHell_Space = RewardTemplate_GetRandomSpace(tMonsterHell_Random,2)
	if not User_CheckLeftSpace(nMonsterHell_Space) then
		Sys_MsgBox(tMonsterHell_Text["FailExplore"])
		return
	end
	
	local sExploreFunc = "</F>MonsterHell_StartExplore</N>%d</N>%d"
	User_SetExplore(tMonsterHell_Count["ExploreTime"],tMonsterHell_Text["Explore"],tMonsterHell_Count["ExploreAction"],string.format(sExploreFunc,nMonsterHell_NpcId,nMonsterHell_Order))
end

-- 开始采集
function MonsterHell_StartExplore(nMonsterHell_NpcId,nMonsterHell_Order,nMonsterHell_UserId)
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		return
	end
	
	local nMonsterHell_MapId = Get_NpcMapID(nMonsterHell_NpcId)
	if nMonsterHell_MapId == tMonsterHell_MoveNpc[1][1] then
		return
	end
	-- 判断背包
	local nMonsterHell_Space = RewardTemplate_GetRandomSpace(tMonsterHell_Random,2,nMonsterHell_UserId)
	if not User_CheckLeftSpace(nMonsterHell_Space,nMonsterHell_UserId) then
		Sys_MsgBox(tMonsterHell_Text["FailExplore"],nil,nil,nMonsterHell_UserId)
		return
	end
	
	local tMonsterDrop_NewRandom = CommonFunc_Copy(tMonsterHell_Random[2])
	tMonsterDrop_NewRandom[1][1]["RewardItem"][1]["Id"] = tMonsterHell_Count["Order"][nMonsterHell_Order]
	-- 移走npc
	local tMonsterHell_NpcPos = tMonsterHell_MoveNpc[1]
	Npc_MoveNpcPos(nMonsterHell_NpcId,tMonsterHell_NpcPos[1],tMonsterHell_NpcPos[2],tMonsterHell_NpcPos[3])
	-- 给奖励
	local tMonsterHell_Reward,sMonsterHell_RewardStr =  RewardTemplate_RandomReward(tMonsterDrop_NewRandom,1,nMonsterHell_UserId)
	if tMonsterHell_Reward[1]["tAward"][1] ~= nil then
		if tMonsterHell_Reward[1]["tAward"][1]["RewardItem"] ~= nil then
			local nMonsterHell_RewardId = tMonsterHell_Reward[1]["tAward"][1]["RewardItem"][1]["Id"]
			if tMonsterHell_Text["KillReward"][nMonsterHell_RewardId] ~= nil then
				Sys_MsgBox(tMonsterHell_Text["KillReward"][nMonsterHell_RewardId],nil,nil,nMonsterHell_UserId)
			elseif nMonsterHell_RewardId == tMonsterHell_Count["Order"][nMonsterHell_Order] then
				local sMonsterHell_ItemName = Get_ItemtypeName(nMonsterHell_RewardId)
				local sMonsterHell_Func = "MonsterHell_FinishOrder</N>2"
				Sys_MsgBox(string.format(tMonsterHell_Text["Recuperation"][6],sMonsterHell_ItemName),sMonsterHell_Func,nil,nMonsterHell_UserId)
			else
				Sys_MsgBox(tMonsterHell_Text["KillReward"][3],nil,nil,nMonsterHell_UserId)
			end
		else
			Sys_MsgBox(tMonsterHell_Text["KillReward"][3],nil,nil,nMonsterHell_UserId)
		end
	else
		Sys_MsgBox(tMonsterHell_Text["KillReward"][3],nil,nil,nMonsterHell_UserId)
	end
	-- 创建怪物
	local nMonsterHell_MonsterId = tMonsterHell_MoveNpc[nMonsterHell_NpcId][4]
	local nMonsterHell_Index,nMonsterHell_Next = MonsterHell_GetMonsterIndex(nMonsterHell_MonsterId)
	local sMonsterHell_Func = "MonsterHell_CreateMonster</N>%d</N>%d"
	OnTimer_SetSysTimer(tMonsterHell_Count["DelayTime"],string.format(sMonsterHell_Func,nMonsterHell_Index,nMonsterHell_Next))
end

--------------------------------------物品使用
-- 使用发霉的西瓜种子
function MonsterHell_UseItem(nMonsterHell_ItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		local nMonsterHell_ItemNum = Get_CountItemType(nMonsterHell_ItemId,0)
		if Item_ChkItem(nMonsterHell_ItemId) and Item_DelAllItemByType(nMonsterHell_ItemId) then
			User_TalkChannel2005(tMonsterHell_Text["OverDue"])
			local sLog = tMonsterHell_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nMonsterHell_ItemId,nMonsterHell_ItemNum))
 		end
		return
	end
	
	local nMonsterHell_ItemNum = Get_CountItemType(nMonsterHell_ItemId,0)
	local tMonsterDrop_NewReward = CommonFunc_Copy(tMonsterHell_Reward[nMonsterHell_ItemId])
	tMonsterDrop_NewReward["DeleteItem"][1]["ItemNum"] = nMonsterHell_ItemNum
	tMonsterDrop_NewReward["RewardStrengthValue"]["Value"] = nMonsterHell_ItemNum
	-- 提示
	tMonsterDrop_NewReward["Talk"] = string.format(tMonsterHell_Text[nMonsterHell_ItemId]["Reward"],nMonsterHell_ItemNum)
	-- 使用
	RewardTemplate_UseItem(tMonsterDrop_NewReward)
end

-- 使用订单任务物品
function MonsterHell_UseMonsterDropItem(nMonsterHell_ItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		local nMonsterHell_ItemNum = Get_CountItemType(nMonsterHell_ItemId,0)
		if Item_ChkItem(nMonsterHell_ItemId) and Item_DelAllItemByType(nMonsterHell_ItemId) then
			User_TalkChannel2005(tMonsterHell_Text["OverDue"])
			local sLog = tMonsterHell_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nMonsterHell_ItemId,nMonsterHell_ItemNum))
 		end
		return
	end
	
	if nMonsterHell_ItemId == 3316274 then
		local nMonsterHell_MapId = Get_UserMapId()
		local nMonsterHell_MapDoc = Get_MapDoc(nMonsterHell_MapId)
		if nMonsterHell_MapDoc == tMonsterHell_Count["Melon"] then
			local nMonsterHell_PosX = tMonsterHell_EnterMap[5]["PosX"]
			local nMonsterHell_PosY = tMonsterHell_EnterMap[5]["PosY"]
			Sys_GotoSomeWhere(nMonsterHell_PosX,nMonsterHell_PosY,nMonsterHell_MapId)
		else
			Sys_MsgBox(tMonsterHell_Text[nMonsterHell_ItemId]["UseTip"])
		end
		return
	end
	
	-- 有任务并且是任务道具
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	local nMonsterHell_TaskItemId = tMonsterHell_Count["Order"][nMonsterHell_Order]
	local nMonsterHell_OrderItem = tMonsterHell_Count["OrderItem"]
	if nMonsterHell_TaskItemId == nMonsterHell_ItemId and Item_ChkItem(nMonsterHell_OrderItem) then
		LinkItemGossipFunc_New(nMonsterHell_OrderItem,"1")
	else
		Sys_MsgBox(tMonsterHell_Text["Recuperation"][8])
		return
	end
end

-- 使用任务道具
function MonsterHell_UseProp(nMonsterHell_ItemId)
	-- 过期删除
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		local nMonsterHell_ItemNum = Get_CountItemType(nMonsterHell_ItemId,0)
		if Item_ChkItem(nMonsterHell_ItemId) and Item_DelAllItemByType(nMonsterHell_ItemId) then
			User_TalkChannel2005(tMonsterHell_Text["OverDue"])
			local sLog = tMonsterHell_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nMonsterHell_ItemId,nMonsterHell_ItemNum))
 		end
		return
	end
	
	-- 无订单任务或者订单为1/2
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	local tMonsterDrop_OrderNum = tMonsterHell_Count["Prop"][nMonsterHell_ItemId]["OrderNum"]
	if not (nMonsterHell_Order >= tMonsterDrop_OrderNum[1] and nMonsterHell_Order <= tMonsterDrop_OrderNum[2]) then
		Sys_MsgBox(tMonsterHell_Text["Recuperation"][4])
		return
	end
	
	
	-- 已拿到订单道具
	local nMonsterHell_TaskItemId = tMonsterHell_Count["Order"][nMonsterHell_Order]
	local sMonsterHell_ItemName = Get_ItemtypeName(nMonsterHell_TaskItemId)
	if nMonsterHell_TaskItemId ~= nil and Item_ChkItem(nMonsterHell_TaskItemId) then
		local sMonsterHell_Func = "MonsterHell_FinishOrder</N>2"
		Sys_MsgBox(string.format(tMonsterHell_Text["Recuperation"][6],sMonsterHell_ItemName),sMonsterHell_Func)
		return
	end
	
	-- 判断对应地图
	local nMonsterHell_MapId = Get_UserMapId()
	local tMonsterHell_Prop = tMonsterHell_Count["Prop"][nMonsterHell_ItemId]
	if nMonsterHell_MapId ~= tMonsterHell_Prop["MapId"] then
		User_TalkChannel2005(tMonsterHell_Text[nMonsterHell_ItemId]["NotMap"])
		return
	end
	
	-- 判断不在怪物身边
	local tMonsterHell_MonsterId = tMonsterHell_Prop["MonsterId"]
	local bHaveNum = false
	for a,b in pairs(tMonsterHell_MonsterId) do
		local nMonsterHell_Num = Get_SysTempData(1,nMonsterHell_MapId,b)
		if nMonsterHell_Num > 0 then
			bHaveNum = true
			break
		end
	end
	if not bHaveNum then
		User_TalkChannel2005(tMonsterHell_Text[nMonsterHell_ItemId]["TooFar"])
		return
	end
	
	-- 在怪物身边
	local nMonsterHell_UserCellX = Get_UserPositionX()
	local nMonsterHell_UserCellY = Get_UserPositionY()
	local nMonsterHell_Index = tMonsterHell_Prop["Index"]
	local nMonsterHell_Id,nOtherIndex = MonsterHell_ChkRange(nMonsterHell_UserCellX,nMonsterHell_UserCellY,nMonsterHell_Index)
	if nMonsterHell_Id == 0 then
		-- User_TalkChannel2005(tMonsterHell_Text[nMonsterHell_ItemId]["TooFar"])
		MonsterHell_PosBossGoto(nMonsterHell_Index)
		return
	end
	
	local sItemName = Get_ItemtypeName(nMonsterHell_TaskItemId)
	-- 冰魔是变成分身
	if nMonsterHell_Index == 1 then
		Monster_DelMonster(nMonsterHell_MapId,nMonsterHell_Id)
		Sys_SetTempData(1,nMonsterHell_MapId,nMonsterHell_Id,0)
		-- 创建怪物
		MonsterHell_CreateRealMonster(nMonsterHell_Index,nOtherIndex)
		
		Sys_MsgBox(string.format(tMonsterHell_Text["EnterMap"][nMonsterHell_MapId][5],sItemName))
		local sMonsterHell_Func = "MonsterHell_CreateMonster</N>%d</N>%d"
		OnTimer_SetSysTimer(tMonsterHell_Count["DelayTime"],string.format(sMonsterHell_Func,nMonsterHell_Index,nOtherIndex))
	else
		-- 炎魔变成npc
		Monster_DelMonster(nMonsterHell_MapId,nMonsterHell_Id)
		Sys_SetTempData(1,nMonsterHell_MapId,nMonsterHell_Id,0)
		-- 移出npc
		for g,h in pairs(tMonsterHell_MoveNpc) do
			if h[4] == nMonsterHell_Id then
				local nMonsterHell_NewMapId = Get_NpcMapID(g)
				if nMonsterHell_NewMapId == nMonsterHell_MapId then
					Sys_MsgBox(string.format(tMonsterHell_Text["EnterMap"][nMonsterHell_MapId][5],sItemName))
					return
				end 
				Npc_MoveNpcPos(g,h[1],h[2],h[3])
				Map_Effect(h[1],h[2],h[3],tMonsterHell_Effect[1]["Effect"])
			end
		end
		Sys_MsgBox(string.format(tMonsterHell_Text["EnterMap"][nMonsterHell_MapId][5],sItemName))
	end
end

-- 创建怪物
function MonsterHell_CreateRealMonster(nMonsterHell_Index,nOtherIndex)
	local tMonsterHell_RealInfo = tMonsterHell_RefreshMonster[nMonsterHell_Index][nOtherIndex]
	local tMonsterHell_RealMonsterId = tMonsterHell_Count["RealMonster"]
	local nMonsterHell_GenId = tMonsterHell_RealInfo["Generator"]
	local tMonsterHell_Pos = tMonsterHell_RealInfo["Pos"]
	local nMonsterHell_DIr = math.random(1,5)
	Monster_AddAndCount(tMonsterHell_Pos[1],tMonsterHell_Pos[2],tMonsterHell_Pos[3],nMonsterHell_GenId,tMonsterHell_RealMonsterId[nMonsterHell_DIr])
	Map_Effect(tMonsterHell_Pos[1],tMonsterHell_Pos[2],tMonsterHell_Pos[3],tMonsterHell_Effect[1]["Effect"])
end

-- 有任务道具直接打开完成对白，否则传送npc
function MonsterHell_FinishOrder(nMonsterHell_Index)
	-- 活动时间
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		return
	end
	
	
	-- 等级不足
	local nMonsterHell_Level = tMonsterHell_Count["Level"]
	local nMonsterHell_Meto = tMonsterHell_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nMonsterHell_Level,nMonsterHell_Meto) then
		return
	end
	
	local nMonsterHell_OrderItem = tMonsterHell_Count["OrderItem"]
	if Item_ChkItem(nMonsterHell_OrderItem) then
		LinkItemGossipFunc_New(nMonsterHell_OrderItem,"1")
	else
		MonsterHell_NewGotoMap(nMonsterHell_Index)
	end
end
--------------------------------------怪物掉落
-- 小怪掉落
function MonsterHell_KillMonster(nMonsterHell_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	local nMonsterHell_Level = tMonsterHell_Count["Level"]
	local nMonsterHell_Meto = tMonsterHell_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nMonsterHell_Level,nMonsterHell_Meto) then
		return
	end
	
	-- 获取玩家订单
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	local tMonsterDrop_NewRandom = CommonFunc_Copy(tMonsterHell_Random[1])
	local nMonsterHell_TaskItemId = tMonsterHell_Count["Order"][nMonsterHell_MonsterId]
	local nMonsterHell_NewTaskItemId = tMonsterHell_Count["Order"][nMonsterHell_Order]
	if nMonsterHell_Order == 0 or nMonsterHell_Order > 3 then
		tMonsterDrop_NewRandom[1][1]["ItemChance"] = 0
		tMonsterDrop_NewRandom[1][4]["ItemChance"] = tMonsterHell_Random[1][1][4]["ItemChance"] + tMonsterHell_Random[1][1][1]["ItemChance"]
	-- 非对应怪物
	elseif nMonsterHell_TaskItemId ~= tMonsterHell_Count["Order"][nMonsterHell_Order] or Item_ChkItem(nMonsterHell_NewTaskItemId) then
		tMonsterDrop_NewRandom[1][1]["ItemChance"] = 0
		tMonsterDrop_NewRandom[1][4]["ItemChance"] = tMonsterHell_Random[1][1][4]["ItemChance"] + tMonsterHell_Random[1][1][1]["ItemChance"]
	else 
		tMonsterDrop_NewRandom[1][1]["RewardItem"][1]["Id"] = nMonsterHell_TaskItemId
	end
	
	-- 给奖励
	local tMonsterHell_Reward,sMonsterHell_RewardStr =  RewardTemplate_RandomReward(tMonsterDrop_NewRandom,1)
	if tMonsterHell_Reward[1]["tAward"][1] ~= nil then
		if tMonsterHell_Reward[1]["tAward"][1]["RewardItem"] ~= nil then
			local nMonsterHell_RewardId = tMonsterHell_Reward[1]["tAward"][1]["RewardItem"][1]["Id"]
			if nMonsterHell_RewardId == nMonsterHell_NewTaskItemId then
				local sMonsterHell_Func = "MonsterHell_FinishOrder</N>2"
				Sys_MsgBox(string.format(tMonsterHell_Text["Recuperation"][6],Get_ItemtypeName(nMonsterHell_RewardId)),sMonsterHell_Func,nil,nMonsterHell_UserId)
			end
		end
	end
end

-- 冰魔真身
function MonsterHell_KillRealMonster(nMonsterHell_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		return
	end
	
	-- 等级不足
	local nMonsterHell_Level = tMonsterHell_Count["Level"]
	local nMonsterHell_Meto = tMonsterHell_Count["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nMonsterHell_Level,nMonsterHell_Meto) then
		return
	end
	
	-- 怪物减数
	local nMonsterHell_MapId = Get_UserMapId()
	Monster_Death(nMonsterHell_MonsterId,nMonsterHell_MapId)
	-- 获取玩家订单
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	-- 非订单3/4不掉落物品
	if nMonsterHell_Order <= 3 then
		return
	end
	
	local nMonsterHell_OrderItem = tMonsterHell_Count["Order"][nMonsterHell_Order]
	local sMonsterHell_ItemName = Get_ItemtypeName(nMonsterHell_OrderItem)
	local sMonsterHell_KillTip = string.format(tMonsterHell_Text["Recuperation"][7],sMonsterHell_ItemName)
	if nMonsterHell_MonsterId <= 6480 then
		-- 已拿到订单道具
		if nMonsterHell_OrderItem ~= nil and Item_ChkItem(nMonsterHell_OrderItem) then
			local sMonsterHell_Func = "MonsterHell_FinishOrder</N>2"
			Sys_MsgBox(string.format(tMonsterHell_Text["Recuperation"][6],sMonsterHell_ItemName),sMonsterHell_Func)
			return
		end
		-- 掉落任务道具
		local tMonsterDrop_NewRandom = CommonFunc_Copy(tMonsterHell_Random[3])
		tMonsterDrop_NewRandom[1][1]["RewardItem"][1]["Id"] = nMonsterHell_OrderItem
		local tMonsterHell_Reward,sMonsterHell_RewardStr =  RewardTemplate_RandomReward(tMonsterDrop_NewRandom,1)
		if tMonsterHell_Reward[1]["tAward"][1] ~= nil then
			if tMonsterHell_Reward[1]["tAward"][1]["RewardItem"] ~= nil then
				local nMonsterHell_RewardId = tMonsterHell_Reward[1]["tAward"][1]["RewardItem"][1]["Id"]
				if nMonsterHell_RewardId == nMonsterHell_OrderItem then
					local sMonsterHell_Func = "MonsterHell_FinishOrder</N>2"
					Sys_MsgBox(string.format(tMonsterHell_Text["Recuperation"][6],sMonsterHell_ItemName),sMonsterHell_Func,nil,nMonsterHell_UserId)
				else
					Sys_MsgBox(sMonsterHell_KillTip)
				end
			else
				Sys_MsgBox(sMonsterHell_KillTip)
			end
		end
	elseif nMonsterHell_MonsterId == 6481 then
		RewardTemplate_RandomReward(tMonsterHell_Random[3],2)
		Sys_MsgBox(sMonsterHell_KillTip)
	else
		RewardTemplate_RandomReward(tMonsterHell_Random[3],3)
		Sys_MsgBox(sMonsterHell_KillTip)
	end
end

-- Boss死亡重新刷新
function MonsterHell_RefreshNewMonster(nMonsterHell_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tMonsterHell_Count["ActivityTime"]) then
		return
	end
	
	-- 怪物减数
	local nMonsterHell_MapId = Get_UserMapId()
	Monster_Death(nMonsterHell_MonsterId,nMonsterHell_MapId)
	
	-- 创建怪物
	local nMonsterHell_Index,nMonsterHell_Next = MonsterHell_GetMonsterIndex(nMonsterHell_MonsterId)
	MonsterHell_CreateMonster(nMonsterHell_Index,nMonsterHell_Next)
end

--------------------------------------服务器启动
-- 服务器启动刷新怪物
function MonsterHell_RefreshMonster()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ALLTime"]) then
		return
	end
	
	-- 创建boss怪物
	for a,b in pairs(tMonsterHell_RefreshMonster) do
		for g,h in pairs(b) do
			MonsterHell_CreateMonster(a,g)
		end
	end
end

-- 创建怪物
function MonsterHell_CreateMonster(nMonsterHell_Index,nMonsterHell_Next,nMonsterHell_UserId)
	local tMonsterHell_RealInfo = tMonsterHell_RefreshMonster[nMonsterHell_Index][nMonsterHell_Next]
	local nMonsterHell_MonsterId = tMonsterHell_RealInfo["MonsterId"]
	local nMonsterHell_GenId = tMonsterHell_RealInfo["Generator"]
	local nMonsterHell_Time = tMonsterHell_RealInfo["Time"]
	local tMonsterHell_Pos = tMonsterHell_RealInfo["Pos"]
	Monster_AddAndCount(tMonsterHell_Pos[1],tMonsterHell_Pos[2],tMonsterHell_Pos[3],nMonsterHell_GenId,nMonsterHell_MonsterId)
end

-- 发邮件
function MonsterHell_OnLine()
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ALLTime"]) then
		return
	end
	
	-- 等级大于80级的
	if not User_JudgeLevelAndMetempsychosis(tMonsterHell_Count["Level"],tMonsterHell_Count["Meto"]) then
		return
	end
	
	-- 已发送过邮件
	local nMonsterHell_UserId = Get_UserId()
	local nMonsterHell_Event = tMonsterHell_Stc[1]["EventType"]
	local nMonsterHell_Type = tMonsterHell_Stc[1]["DataType"]
	local nMonsterHell_Data = Get_UserStatisticValue(nMonsterHell_Event,nMonsterHell_Type,nMonsterHell_UserId)
	if nMonsterHell_Data >= 1 then
		return
	end
	Task_SetStatistic(nMonsterHell_Event,nMonsterHell_Type,1,1,nMonsterHell_UserId)
	Task_SetStcTimestamp(nMonsterHell_Event,nMonsterHell_Type,0,nMonsterHell_UserId)
	
	local nMonsterHell_ExistDay = tMonsterHell_Count["ExistDay"]
	local sMonsterHell_Sender = tMonsterHell_Text["Mail"]["Sender"] 
	local sMonsterHell_Title = tMonsterHell_Text["Mail"]["Title"]
	local sMonsterHell_Content = tMonsterHell_Text["Mail"]["Content"]
	-- 发邮件
	local nMonsterHell_ActionId = tMonsterHell_Count["ActionId"]
	Sys_SendMail(nMonsterHell_UserId,0,0,nMonsterHell_ActionId,0,nMonsterHell_ExistDay,sMonsterHell_Sender,sMonsterHell_Title,sMonsterHell_Content)
end

--------------------------------------NPC模块--------------------------------------
-- 26593,'寒冰真人'
tNpcFace[2569] = 67
tNpcGossip[26593] = tNpcGossip[26593] or DefaultNpc:new{}
tNpcGossip[26593]["OptionHidden"] = 1
tNpcGossip[26593]["DialogueText"] = tMonsterHell_Text[26593] 
tNpcGossip[26593]["Text1-1"] = {111,112}
tNpcGossip[26593]["tOption1-1"] = {111,112}
tNpcGossip[26593]["ChkFunc1-1"] = function ()
	MonsterHell_InitDialog(26593,tMonsterHell_Count["MonsterId"][26593][3][1],tMonsterHell_Count["MonsterId"][26593][3][2])	
	return true
end
tNpcGossip[26593]["OptionFunc111"] = "MonsterHell_ReceiveItem</N>26593</N>1</N>2"
-- 补领净瓶玉露
tNpcGossip[26593]["OptionFunc112"] = "MonsterHell_ReceiveItem</N>26593</N>2</N>2"

-- 26594,'火云真人'
tNpcFace[2570] = 85
tNpcGossip[26594] = tNpcGossip[26594] or DefaultNpc:new{}
tNpcGossip[26594]["OptionHidden"] = 1
tNpcGossip[26594]["DialogueText"] = tMonsterHell_Text[26594] 
tNpcGossip[26594]["Text1-1"] = {111,112}
tNpcGossip[26594]["tOption1-1"] = {111,112}
tNpcGossip[26594]["ChkFunc1-1"] = function ()
	MonsterHell_InitDialog(26594,tMonsterHell_Count["MonsterId"][26594][3][1],tMonsterHell_Count["MonsterId"][26594][3][2])	
	return true
end
tNpcGossip[26594]["OptionFunc111"] = "MonsterHell_ReceiveItem</N>26594</N>1</N>1"
-- 补领烈焰箭矢
tNpcGossip[26594]["OptionFunc112"] = "MonsterHell_ReceiveItem</N>26594</N>2</N>1"

-- 26595,'炎魔结晶'
tNpcGossip[26595] = tNpcGossip[26595] or DefaultNpc:new{}
tNpcGossip[26595]["OptionHidden"] = 1
tNpcGossip[26595]["DialogueText"] = tMonsterHell_Text[26595] 
tNpcGossip[26595]["Text1-1"] = {111}
tNpcGossip[26595]["tOption1-1"] = {111}
tNpcGossip[26595]["ChkFunc1-1"] = function ()
	-- 无订单任务
	local nMonsterHell_Order = SummerActivityOrder_GetOrderInfo()
	local nMonsterHell_NpcId = Get_NpcId()
	if not (nMonsterHell_Order >= 4 and nMonsterHell_Order <= 6) then
		tNpcGossip[nMonsterHell_NpcId]["Text111"] = tMonsterHell_Text[26595]["Text112"]
		tNpcGossip[nMonsterHell_NpcId]["Option111"] = tMonsterHell_Text[26595]["Option1110"]
	else
		local nMonsterHell_ItemId = tMonsterHell_Count["Order"][nMonsterHell_Order]
		local sItemName = Get_ItemtypeName(nMonsterHell_ItemId)
		tNpcGossip[nMonsterHell_NpcId]["Text111"] = string.format(tMonsterHell_Text[26595]["Text111"],sItemName)
		tNpcGossip[nMonsterHell_NpcId]["Option111"] = tMonsterHell_Text[26595]["Option111"]
	end
	return true
end
-- 采集核心
tNpcGossip[26595]["OptionFunc111"] = "MonsterHell_ExploreItem</N>26595"
-- 26600,'炎魔结晶'
tNpcGossip[26600] = tNpcGossip[26595]
-- 26601,'炎魔结晶'
tNpcGossip[26601] = tNpcGossip[26595]
-- 26981,'炎魔结晶'
tNpcGossip[26981] = tNpcGossip[26595]
-- 26982,'炎魔结晶'
tNpcGossip[26982] = tNpcGossip[26595]

--------------------------------------物品模块--------------------------------------
-- 3316273,'发霉的西瓜种子'
tItem[3316273] = tItem[3316273] or {}
tItem[3316273]["Function"] = function(nMonsterHell_ItemId,sItemName)
	MonsterHell_UseItem(nMonsterHell_ItemId)
end

-- 3316275,'冰蓝鳞片'
tItem[3316275] = tItem[3316275] or {}
tItem[3316275]["Function"] = function(nMonsterHell_ItemId,sItemName)
	MonsterHell_UseMonsterDropItem(nMonsterHell_ItemId)
end
-- 3316276,'火枭羽毛'
-- 3316277,'熔火核心'
-- 3316278,'炽热火种'
-- 3316279,'燃烧宝石'
-- 3316280,'永恒冰晶'
-- 3316281,'冰魔之泪'
-- 3316282,'极冰碎片'
tItem[3316276] = tItem[3316275]
tItem[3316277] = tItem[3316275]
tItem[3316278] = tItem[3316275]
tItem[3316279] = tItem[3316275]
tItem[3316280] = tItem[3316275]
tItem[3316281] = tItem[3316275]
tItem[3316282] = tItem[3316275]
-- 3316274,'西瓜种子'
tItem[3316274] = tItem[3316275]

-- 3316283,'净瓶玉露'
tItem[3316283] = tItem[3316283] or {}
tItem[3316283]["Function"] = function(nMonsterHell_ItemId,sItemName)
	MonsterHell_UseProp(nMonsterHell_ItemId)
end
-- 3316284,'烈焰箭矢'
tItem[3316284] = tItem[3316283]

--------------------------------------陷阱模块--------------------------------------
-- 传送陷阱
tTrap[2598] = tTrap[2598] or {}
tTrap[2598]["Function"] = function(nTrapId,nTrapType)
	local nMonsterHell_MapId = Get_UserMapId()
	local sMonsterHell_EnterMapTip = tMonsterHell_Text["EnterMap"][nMonsterHell_MapId][4]
	local sMonsterHell_Func = "MonsterHell_NewGotoMap</N>1"
	Sys_MsgBox(sMonsterHell_EnterMapTip,string.format(sMonsterHell_Func,nMonsterHell_Index))
end

--------------------------------------怪物掉落-------------------------------------------
local tKillMonsterDropItem_Drop = {}
	-- 小怪的掉落
	tKillMonsterDropItem_Drop[1] = {}
	tKillMonsterDropItem_Drop[1]["ActivityTime"] = tMonsterHell_Count["ActivityTime"]
	tKillMonsterDropItem_Drop[1]["Function"] = MonsterHell_KillMonster
	tKillMonsterDropItem_Drop[1]["MonsterId"] = {6474,6475}
	-- 冰魔真身
	tKillMonsterDropItem_Drop[2] = {}
	tKillMonsterDropItem_Drop[2]["ActivityTime"] = tMonsterHell_Count["ActivityTime"]
	tKillMonsterDropItem_Drop[2]["Function"] = MonsterHell_KillRealMonster
	tKillMonsterDropItem_Drop[2]["MonsterId"] = {6478,6479,6480,6481,6482}
	-- boss死亡重新生成
	tKillMonsterDropItem_Drop[3] = {}
	tKillMonsterDropItem_Drop[3]["ActivityTime"] = tMonsterHell_Count["ActivityTime"]
	tKillMonsterDropItem_Drop[3]["Function"] = MonsterHell_RefreshNewMonster
	tKillMonsterDropItem_Drop[3]["MonsterId"] = {6476,6477,6274,6275,6276,6277,6278}
	
table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[1])
table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[2])

-- 服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],MonsterHell_RefreshMonster)

-- 上线触发
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,MonsterHell_OnLine)