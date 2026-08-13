------------------------------------------------------------------------------------
--Name：      200618[简体征服][活动脚本]全球七夕花魁活动（8.18-8.31）怪物部分
--Creator:      郑洵
--Created:     2020-06-18
------------------------------------------------------------------------------------
-- 任务需求：

-- 命名前缀
-- QiXiQuintupleMonster2020_

-- logid:12002030
-- 1、主NPC+剧情---耿力兀--12002030[1]
-- 2、活动地图+杀怪---郑洵--12002030[2]
-- 3、惊喜事件+杂七杂八---冯子鑫12002030[3]

-- 41886 = V100\ActiveScript\Qixi\2020\[Conquer][ActiveScript]QiXiQuintupleMonster2020.lua
-- 41886 = V100\活动脚本\七夕\2020\[征服][活动脚本]全球七夕花魁活动（8.18-8.31）怪物部分.lua

-- stc掩码说明
-- stc(224 58)			记录魔鸠司令礼包限量
-- stc(224 59)			记录混沌魔鸠王礼包限量
-- stc(224 60)			记录外套碎片限量
-- stc(224 61)			记录喜鹊礼包1限量
-- stc(224 62)			记录杀怪数量（用于活动引导，活动期间不清除）
-- stc(224 63)			记录魔鸠小怪每日首杀
-- stc(224 64)			记录魔鸠司令每日首杀
-- stc(224 65)			记录地图奖励领完提示
-- stc(225 70)			记录喜鹊礼包2限量
-- stc(225 71)			记录喜鹊礼包3限量
-- stc(225 72)			记录喜鹊礼包4限量
-- stc(225 73)			记录喜鹊礼包5限量

-- stc(300 03)			记录鹊桥积分
-- stc(224 27)			记录引导完成
-- stc(224,69) 记录喜鹊妈妈每日任务是否完成（>=2为完成）
-- stc(224,71) 记录喜鹊爸爸每日任务是否完成（>=1为完成）

-- cq_dyna_global_data说明
-- 54712：data0：标识北斗琉璃星天石（赠）奖励总限量
				-- data1：标识北斗琉璃星天石（赠）奖励单日限量
				-- data2：标识混沌魔鸠王礼包天石（赠）奖励总限量
				-- data3：标识混沌魔鸠王礼包天石（赠）奖励单日限量
				-- data4：标识混沌魔鸠王礼包精装神器礼包奖励总限量
				-- data5：标识混沌魔鸠王礼包精装神器礼包奖励单日限量



--------------------------------------------------常量表---------------------------------------------
-- 常量表
local tQiXiQuintupleMonster2020_Cont = {}
	-- 等级限制
	tQiXiQuintupleMonster2020_Cont["Level"] = 80
	tQiXiQuintupleMonster2020_Cont["Metempsychosis"] = 0
	-- 灵鹊星球传送点 ID
	tQiXiQuintupleMonster2020_Cont["MainNPCId"] = 26807
	-- 魔鸠司令&混沌魔鸠王&喜鹊妈妈&喜鹊爸爸 ID
	tQiXiQuintupleMonster2020_Cont["Monster"] = {}
	tQiXiQuintupleMonster2020_Cont["Monster"][1] = 6501
	tQiXiQuintupleMonster2020_Cont["Monster"][2] = 6502
	tQiXiQuintupleMonster2020_Cont["Monster"][3] = 1 -- 喜鹊妈妈
	tQiXiQuintupleMonster2020_Cont["Monster"][4] = 2 -- 喜鹊爸爸
	-- 怪物奖励索引
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"] = {}
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"][6496] = 1
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"][6497] = 2
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"][6498] = 3
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"][6499] = 4
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"][6500] = 5
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"][6501] = 6501
	tQiXiQuintupleMonster2020_Cont["MonsterIndex"][6502] = 6502
	-- 怪物掉落限量索引
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"] = {}
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][1] = 15 -- 喜鹊妈妈
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][2] = 16 -- 喜鹊爸爸
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][6496] = 5
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][6497] = 10
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][6498] = 11
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][6499] = 12
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][6500] = 13
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][6501] = 2
	tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][6502] = 3
	-- 怪物掉落奖励ID
	tQiXiQuintupleMonster2020_Cont["MonsterReward"] = {}
	tQiXiQuintupleMonster2020_Cont["MonsterReward"][6496] = 3316515
	tQiXiQuintupleMonster2020_Cont["MonsterReward"][6497] = 3316516
	tQiXiQuintupleMonster2020_Cont["MonsterReward"][6498] = 3316517
	tQiXiQuintupleMonster2020_Cont["MonsterReward"][6499] = 3316518
	tQiXiQuintupleMonster2020_Cont["MonsterReward"][6500] = 3316519
	tQiXiQuintupleMonster2020_Cont["MonsterReward"][6501] = 3316520
	tQiXiQuintupleMonster2020_Cont["MonsterReward"][6502] = 3316521
	-- 每日击杀此数必出精英
	tQiXiQuintupleMonster2020_Cont["CreateMonster"] = 15
	-- 接任务光效
	tQiXiQuintupleMonster2020_Cont["TaskEffect"] = "zf2-e128"
	-- 胜利光效
	tQiXiQuintupleMonster2020_Cont["VictoryEffect"] = "sports_victory"
	-- 失败光效
	tQiXiQuintupleMonster2020_Cont["FailureEffect"] = "sports_failure"

-- 记录LOG
local tQiXiQuintupleMonster2020_Log = {}
	-- 进入活动地图
	tQiXiQuintupleMonster2020_Log["GoMap"] = "0,0,0,0,12002030,2[1][%d],0,0"
	-- 刷怪掉落
	tQiXiQuintupleMonster2020_Log["Monster"] = "0,0,0,0,12002030,2[2],%d,1"
	-- BOSS掉落（魔鸠司令和混沌魔鸠王）
	tQiXiQuintupleMonster2020_Log["Boss"] = "0,0,0,0,12002030,2[3],%d,1"

-- 活动地图配置
local tQiXiQuintupleMonster2020_Map = {}
	tQiXiQuintupleMonster2020_Map[1] = {}
	tQiXiQuintupleMonster2020_Map[2] = {}
	tQiXiQuintupleMonster2020_Map[3] = {}
	tQiXiQuintupleMonster2020_Map[4] = {}
	tQiXiQuintupleMonster2020_Map[5] = {}
	-- 活动地图进入坐标
	tQiXiQuintupleMonster2020_Map[1]["MapId"] = 10911
	tQiXiQuintupleMonster2020_Map[1]["PosX"] = 264
	tQiXiQuintupleMonster2020_Map[1]["PosY"] = 252
	tQiXiQuintupleMonster2020_Map[2]["MapId"] = 10912
	tQiXiQuintupleMonster2020_Map[2]["PosX"] = 240
	tQiXiQuintupleMonster2020_Map[2]["PosY"] = 94
	tQiXiQuintupleMonster2020_Map[3]["MapId"] = 10913
	tQiXiQuintupleMonster2020_Map[3]["PosX"] = 160
	tQiXiQuintupleMonster2020_Map[3]["PosY"] = 148
	tQiXiQuintupleMonster2020_Map[4]["MapId"] = 10914
	tQiXiQuintupleMonster2020_Map[4]["PosX"] = 184
	tQiXiQuintupleMonster2020_Map[4]["PosY"] = 145
	tQiXiQuintupleMonster2020_Map[5]["MapId"] = 10915
	tQiXiQuintupleMonster2020_Map[5]["PosX"] = 286
	tQiXiQuintupleMonster2020_Map[5]["PosY"] = 285
	-- 进地图鹊桥积分要求
	tQiXiQuintupleMonster2020_Map[1]["Score"] = 0
	tQiXiQuintupleMonster2020_Map[2]["Score"] = 5000
	tQiXiQuintupleMonster2020_Map[3]["Score"] = 15000
	tQiXiQuintupleMonster2020_Map[4]["Score"] = 30000
	tQiXiQuintupleMonster2020_Map[5]["Score"] = 50000
	-- NPC id
	tQiXiQuintupleMonster2020_Map[1]["NPC"] = 26802
	tQiXiQuintupleMonster2020_Map[2]["NPC"] = 26803
	tQiXiQuintupleMonster2020_Map[3]["NPC"] = 26804
	tQiXiQuintupleMonster2020_Map[4]["NPC"] = 26805
	tQiXiQuintupleMonster2020_Map[5]["NPC"] = 26806
	-- 怪物id
	tQiXiQuintupleMonster2020_Map[1]["Monster"] = 6496
	tQiXiQuintupleMonster2020_Map[2]["Monster"] = 6497
	tQiXiQuintupleMonster2020_Map[3]["Monster"] = 6498
	tQiXiQuintupleMonster2020_Map[4]["Monster"] = 6499
	tQiXiQuintupleMonster2020_Map[5]["Monster"] = 6500
	-- 活动地图刷怪坐标
	tQiXiQuintupleMonster2020_Map[1][1] = {}
	tQiXiQuintupleMonster2020_Map[1][2] = {}
	tQiXiQuintupleMonster2020_Map[1][3] = {}
	tQiXiQuintupleMonster2020_Map[2][1] = {}
	tQiXiQuintupleMonster2020_Map[2][2] = {}
	tQiXiQuintupleMonster2020_Map[2][3] = {}
	tQiXiQuintupleMonster2020_Map[3][1] = {}
	tQiXiQuintupleMonster2020_Map[3][2] = {}
	tQiXiQuintupleMonster2020_Map[3][3] = {}
	tQiXiQuintupleMonster2020_Map[4][1] = {}
	tQiXiQuintupleMonster2020_Map[4][2] = {}
	tQiXiQuintupleMonster2020_Map[4][3] = {}
	tQiXiQuintupleMonster2020_Map[5][1] = {}
	tQiXiQuintupleMonster2020_Map[5][2] = {}
	tQiXiQuintupleMonster2020_Map[5][3] = {}
	tQiXiQuintupleMonster2020_Map[1][1]["MapId"] = 10911
	tQiXiQuintupleMonster2020_Map[1][1]["PosX"] = 183
	tQiXiQuintupleMonster2020_Map[1][1]["PosY"] = 210
	tQiXiQuintupleMonster2020_Map[1][2]["MapId"] = 10911
	tQiXiQuintupleMonster2020_Map[1][2]["PosX"] = 252
	tQiXiQuintupleMonster2020_Map[1][2]["PosY"] = 152
	tQiXiQuintupleMonster2020_Map[1][3]["MapId"] = 10911
	tQiXiQuintupleMonster2020_Map[1][3]["PosX"] = 307
	tQiXiQuintupleMonster2020_Map[1][3]["PosY"] = 169
	tQiXiQuintupleMonster2020_Map[2][1]["MapId"] = 10912
	tQiXiQuintupleMonster2020_Map[2][1]["PosX"] = 239
	tQiXiQuintupleMonster2020_Map[2][1]["PosY"] = 116
	tQiXiQuintupleMonster2020_Map[2][2]["MapId"] = 10912
	tQiXiQuintupleMonster2020_Map[2][2]["PosX"] = 126
	tQiXiQuintupleMonster2020_Map[2][2]["PosY"] = 135
	tQiXiQuintupleMonster2020_Map[2][3]["MapId"] = 10912
	tQiXiQuintupleMonster2020_Map[2][3]["PosX"] = 59
	tQiXiQuintupleMonster2020_Map[2][3]["PosY"] = 223
	tQiXiQuintupleMonster2020_Map[3][1]["MapId"] = 10913
	tQiXiQuintupleMonster2020_Map[3][1]["PosX"] = 141
	tQiXiQuintupleMonster2020_Map[3][1]["PosY"] = 163
	tQiXiQuintupleMonster2020_Map[3][2]["MapId"] = 10913
	tQiXiQuintupleMonster2020_Map[3][2]["PosX"] = 152
	tQiXiQuintupleMonster2020_Map[3][2]["PosY"] = 174
	tQiXiQuintupleMonster2020_Map[3][3]["MapId"] = 10913
	tQiXiQuintupleMonster2020_Map[3][3]["PosX"] = 149
	tQiXiQuintupleMonster2020_Map[3][3]["PosY"] = 119
	tQiXiQuintupleMonster2020_Map[4][1]["MapId"] = 10914
	tQiXiQuintupleMonster2020_Map[4][1]["PosX"] = 238
	tQiXiQuintupleMonster2020_Map[4][1]["PosY"] = 124
	tQiXiQuintupleMonster2020_Map[4][2]["MapId"] = 10914
	tQiXiQuintupleMonster2020_Map[4][2]["PosX"] = 59
	tQiXiQuintupleMonster2020_Map[4][2]["PosY"] = 141
	tQiXiQuintupleMonster2020_Map[4][3]["MapId"] = 10914
	tQiXiQuintupleMonster2020_Map[4][3]["PosX"] = 350
	tQiXiQuintupleMonster2020_Map[4][3]["PosY"] = 227
	tQiXiQuintupleMonster2020_Map[5][1]["MapId"] = 10915
	tQiXiQuintupleMonster2020_Map[5][1]["PosX"] = 96
	tQiXiQuintupleMonster2020_Map[5][1]["PosY"] = 176
	tQiXiQuintupleMonster2020_Map[5][2]["MapId"] = 10915
	tQiXiQuintupleMonster2020_Map[5][2]["PosX"] = 173
	tQiXiQuintupleMonster2020_Map[5][2]["PosY"] = 257
	tQiXiQuintupleMonster2020_Map[5][3]["MapId"] = 10915
	tQiXiQuintupleMonster2020_Map[5][3]["PosX"] = 303
	tQiXiQuintupleMonster2020_Map[5][3]["PosY"] = 271

-- 怪物刷怪配置
local tQiXiQuintupleMonster2020_InstanceMonster = {}
									-- 事件  怪物id 刷怪数量 范围 范围 generator
	tQiXiQuintupleMonster2020_InstanceMonster[1] = {6501,1,2,2,31315}
	tQiXiQuintupleMonster2020_InstanceMonster[2] = {6502,1,2,2,31316}
	tQiXiQuintupleMonster2020_InstanceMonster[6501] = {}
	tQiXiQuintupleMonster2020_InstanceMonster[6501][10911] = 31388
	tQiXiQuintupleMonster2020_InstanceMonster[6501][10912] = 31389
	tQiXiQuintupleMonster2020_InstanceMonster[6501][10913] = 31390
	tQiXiQuintupleMonster2020_InstanceMonster[6501][10914] = 31391
	tQiXiQuintupleMonster2020_InstanceMonster[6501][10915] = 31392
	tQiXiQuintupleMonster2020_InstanceMonster[6502] = {}
	tQiXiQuintupleMonster2020_InstanceMonster[6502][10911] = 31393
	tQiXiQuintupleMonster2020_InstanceMonster[6502][10912] = 31394
	tQiXiQuintupleMonster2020_InstanceMonster[6502][10913] = 31395
	tQiXiQuintupleMonster2020_InstanceMonster[6502][10914] = 31396
	tQiXiQuintupleMonster2020_InstanceMonster[6502][10915] = 31397

-- 离开地图坐标
local tQiXiQuintupleMonster2020_LeaveMap = {}
	-- 普通服
	tQiXiQuintupleMonster2020_LeaveMap[1] = {}
	tQiXiQuintupleMonster2020_LeaveMap[1]["MapId"] = 1002
	tQiXiQuintupleMonster2020_LeaveMap[1]["PosX"] = 366
	tQiXiQuintupleMonster2020_LeaveMap[1]["PosY"] = 452
	-- 激情服
	tQiXiQuintupleMonster2020_LeaveMap[2] = {}
	tQiXiQuintupleMonster2020_LeaveMap[2]["MapId"] = 1036
	tQiXiQuintupleMonster2020_LeaveMap[2]["PosX"] = 246
	tQiXiQuintupleMonster2020_LeaveMap[2]["PosY"] = 218

-- 随机概率配置表
local tQiXiQuintupleMonster2020_Random = {}
	tQiXiQuintupleMonster2020_Random[1] = {}
	-- ===活动地图1
	-- ===索引: tQiXiQuintupleMonster2020_Random[1]
	-- ===
	tQiXiQuintupleMonster2020_Random[1]["ItemChanceSum"] = 10000
	-- 活动地图1刷怪
	tQiXiQuintupleMonster2020_Random[1][1] = {}
	tQiXiQuintupleMonster2020_Random[1][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[1][1]["ItemChance"] = 100
	tQiXiQuintupleMonster2020_Random[1][1]["Incident"] = 1
	-- 活动地图1不刷怪
	tQiXiQuintupleMonster2020_Random[1][2] = {}
	tQiXiQuintupleMonster2020_Random[1][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[1][2]["ItemChance"] = 9900
	tQiXiQuintupleMonster2020_Random[1][2]["Incident"] = 2

	tQiXiQuintupleMonster2020_Random[2] = {}
	-- ===活动地图2
	-- ===索引: tQiXiQuintupleMonster2020_Random[2]
	-- ===
	tQiXiQuintupleMonster2020_Random[2]["ItemChanceSum"] = 10000
	-- 活动地图2刷怪
	tQiXiQuintupleMonster2020_Random[2][1] = {}
	tQiXiQuintupleMonster2020_Random[2][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[2][1]["ItemChance"] = 120
	tQiXiQuintupleMonster2020_Random[2][1]["Incident"] = 1
	-- 活动地图2不刷怪
	tQiXiQuintupleMonster2020_Random[2][2] = {}
	tQiXiQuintupleMonster2020_Random[2][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[2][2]["ItemChance"] = 9880
	tQiXiQuintupleMonster2020_Random[2][2]["Incident"] = 2

	tQiXiQuintupleMonster2020_Random[3] = {}
	-- ===活动地图3
	-- ===索引: tQiXiQuintupleMonster2020_Random[3]
	-- ===
	tQiXiQuintupleMonster2020_Random[3]["ItemChanceSum"] = 10000
	-- 活动地图3刷怪
	tQiXiQuintupleMonster2020_Random[3][1] = {}
	tQiXiQuintupleMonster2020_Random[3][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[3][1]["ItemChance"] = 150
	tQiXiQuintupleMonster2020_Random[3][1]["Incident"] = 1
	-- 活动地图3不刷怪
	tQiXiQuintupleMonster2020_Random[3][2] = {}
	tQiXiQuintupleMonster2020_Random[3][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[3][2]["ItemChance"] = 9850
	tQiXiQuintupleMonster2020_Random[3][2]["Incident"] = 2

	tQiXiQuintupleMonster2020_Random[4] = {}
	-- ===活动地图4
	-- ===索引: tQiXiQuintupleMonster2020_Random[4]
	-- ===
	tQiXiQuintupleMonster2020_Random[4]["ItemChanceSum"] = 10000
	-- 活动地图4刷怪
	tQiXiQuintupleMonster2020_Random[4][1] = {}
	tQiXiQuintupleMonster2020_Random[4][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[4][1]["ItemChance"] = 180
	tQiXiQuintupleMonster2020_Random[4][1]["Incident"] = 1
	-- 活动地图4不刷怪
	tQiXiQuintupleMonster2020_Random[4][2] = {}
	tQiXiQuintupleMonster2020_Random[4][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[4][2]["ItemChance"] = 9820
	tQiXiQuintupleMonster2020_Random[4][2]["Incident"] = 2

	tQiXiQuintupleMonster2020_Random[5] = {}
	-- ===活动地图5
	-- ===索引: tQiXiQuintupleMonster2020_Random[5]
	-- ===
	tQiXiQuintupleMonster2020_Random[5]["ItemChanceSum"] = 10000
	-- 活动地图5刷怪
	tQiXiQuintupleMonster2020_Random[5][1] = {}
	tQiXiQuintupleMonster2020_Random[5][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[5][1]["ItemChance"] = 200
	tQiXiQuintupleMonster2020_Random[5][1]["Incident"] = 1
	-- 活动地图5不刷怪
	tQiXiQuintupleMonster2020_Random[5][2] = {}
	tQiXiQuintupleMonster2020_Random[5][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[5][2]["ItemChance"] = 9800
	tQiXiQuintupleMonster2020_Random[5][2]["Incident"] = 2

	tQiXiQuintupleMonster2020_Random[6] = {}
	-- ===2%概率掉落礼包
	-- ===索引: tQiXiQuintupleMonster2020_Random[6]
	-- ===
	tQiXiQuintupleMonster2020_Random[6]["ItemChanceSum"] = 10000
	-- 2%概率掉落礼包
	tQiXiQuintupleMonster2020_Random[6][1] = {}
	tQiXiQuintupleMonster2020_Random[6][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[6][1]["ItemChance"] = 200
	tQiXiQuintupleMonster2020_Random[6][1]["Incident"] = 1
	-- 98%概率不掉落礼包
	tQiXiQuintupleMonster2020_Random[6][2] = {}
	tQiXiQuintupleMonster2020_Random[6][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[6][2]["ItemChance"] = 9800
	tQiXiQuintupleMonster2020_Random[6][2]["Incident"] = 2

	tQiXiQuintupleMonster2020_Random[7] = {}
	-- ===30%概率刷出混沌魔鸠王
	-- ===索引: tQiXiQuintupleMonster2020_Random[7]
	-- ===
	tQiXiQuintupleMonster2020_Random[7]["ItemChanceSum"] = 10000
	-- 30%概率刷出混沌魔鸠王
	tQiXiQuintupleMonster2020_Random[7][1] = {}
	tQiXiQuintupleMonster2020_Random[7][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[7][1]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Random[7][1]["Incident"] = 1
	-- 70%概率不刷出
	tQiXiQuintupleMonster2020_Random[7][2] = {}
	tQiXiQuintupleMonster2020_Random[7][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[7][2]["ItemChance"] = 7000
	tQiXiQuintupleMonster2020_Random[7][2]["Incident"] = 2

	tQiXiQuintupleMonster2020_Random[8] = {}
	-- ===进地图寻路打怪
	-- ===索引: tQiXiQuintupleMonster2020_Random[8]
	-- ===
	tQiXiQuintupleMonster2020_Random[8]["ItemChanceSum"] = 10000
	-- 怪物刷新点1
	tQiXiQuintupleMonster2020_Random[8][1] = {}
	tQiXiQuintupleMonster2020_Random[8][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[8][1]["ItemChance"] = 3300
	tQiXiQuintupleMonster2020_Random[8][1]["Incident"] = 1
	-- 怪物刷新点2
	tQiXiQuintupleMonster2020_Random[8][2] = {}
	tQiXiQuintupleMonster2020_Random[8][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[8][2]["ItemChance"] = 3300
	tQiXiQuintupleMonster2020_Random[8][2]["Incident"] = 2
	-- 怪物刷新点3
	tQiXiQuintupleMonster2020_Random[8][3] = {}
	tQiXiQuintupleMonster2020_Random[8][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Random[8][3]["ItemChance"] = 3400
	tQiXiQuintupleMonster2020_Random[8][3]["Incident"] = 3


-- 掩码使用
local tQiXiQuintupleMonster2020_Stc = {}
	-- 记录鹊桥积分
	tQiXiQuintupleMonster2020_Stc[1] = {}
	tQiXiQuintupleMonster2020_Stc[1]["EventType"] = 300
	tQiXiQuintupleMonster2020_Stc[1]["DataType"] = 03
	-- 记录魔鸠司令礼包限量
	tQiXiQuintupleMonster2020_Stc[2] = {}
	tQiXiQuintupleMonster2020_Stc[2]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[2]["DataType"] = 58
	tQiXiQuintupleMonster2020_Stc[2]["LimitData"] = 5
	-- 记录混沌魔鸠王礼包限量
	tQiXiQuintupleMonster2020_Stc[3] = {}
	tQiXiQuintupleMonster2020_Stc[3]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[3]["DataType"] = 59
	tQiXiQuintupleMonster2020_Stc[3]["LimitData"] = 3
	-- 记录外套碎片限量
	tQiXiQuintupleMonster2020_Stc[4] = {}
	tQiXiQuintupleMonster2020_Stc[4]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[4]["DataType"] = 60
	tQiXiQuintupleMonster2020_Stc[4]["LimitData"] = 5
	-- 记录喜鹊礼包1限量
	tQiXiQuintupleMonster2020_Stc[5] = {}
	tQiXiQuintupleMonster2020_Stc[5]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[5]["DataType"] = 61
	tQiXiQuintupleMonster2020_Stc[5]["LimitData"] = 10
	-- 记录杀怪数量（用于活动引导，活动期间不清除）
	tQiXiQuintupleMonster2020_Stc[6] = {}
	tQiXiQuintupleMonster2020_Stc[6]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[6]["DataType"] = 62
	tQiXiQuintupleMonster2020_Stc[6]["LimitData"] = 3
	-- 记录引导完成
	tQiXiQuintupleMonster2020_Stc[7] = {}
	tQiXiQuintupleMonster2020_Stc[7]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[7]["DataType"] = 27
	tQiXiQuintupleMonster2020_Stc[7]["LimitData"] = 1
	-- 记录魔鸠小怪每日首杀
	tQiXiQuintupleMonster2020_Stc[8] = {}
	tQiXiQuintupleMonster2020_Stc[8]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[8]["DataType"] = 63
	-- 记录魔鸠司令每日首杀
	tQiXiQuintupleMonster2020_Stc[9] = {}
	tQiXiQuintupleMonster2020_Stc[9]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[9]["DataType"] = 64
	-- 记录喜鹊礼包2限量
	tQiXiQuintupleMonster2020_Stc[10] = {}
	tQiXiQuintupleMonster2020_Stc[10]["EventType"] = 225
	tQiXiQuintupleMonster2020_Stc[10]["DataType"] = 70
	tQiXiQuintupleMonster2020_Stc[10]["LimitData"] = 10
	-- 记录喜鹊礼包3限量
	tQiXiQuintupleMonster2020_Stc[11] = {}
	tQiXiQuintupleMonster2020_Stc[11]["EventType"] = 225
	tQiXiQuintupleMonster2020_Stc[11]["DataType"] = 71
	tQiXiQuintupleMonster2020_Stc[11]["LimitData"] = 10
	-- 记录喜鹊礼包4限量
	tQiXiQuintupleMonster2020_Stc[12] = {}
	tQiXiQuintupleMonster2020_Stc[12]["EventType"] = 225
	tQiXiQuintupleMonster2020_Stc[12]["DataType"] = 72
	tQiXiQuintupleMonster2020_Stc[12]["LimitData"] = 10
	-- 记录喜鹊礼包5限量
	tQiXiQuintupleMonster2020_Stc[13] = {}
	tQiXiQuintupleMonster2020_Stc[13]["EventType"] = 225
	tQiXiQuintupleMonster2020_Stc[13]["DataType"] = 73
	tQiXiQuintupleMonster2020_Stc[13]["LimitData"] = 10
	-- 记录地图奖励领完提示
	tQiXiQuintupleMonster2020_Stc[14] = {}
	tQiXiQuintupleMonster2020_Stc[14]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[14]["DataType"] = 65
	-- 记录喜鹊妈妈每日任务是否完成
	tQiXiQuintupleMonster2020_Stc[15] = {}
	tQiXiQuintupleMonster2020_Stc[15]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[15]["DataType"] = 69
	tQiXiQuintupleMonster2020_Stc[15]["LimitData"] = 2
	-- 记录喜鹊爸爸每日任务是否完成
	tQiXiQuintupleMonster2020_Stc[16] = {}
	tQiXiQuintupleMonster2020_Stc[16]["EventType"] = 224
	tQiXiQuintupleMonster2020_Stc[16]["DataType"] = 71
	tQiXiQuintupleMonster2020_Stc[16]["LimitData"] = 1


local tQiXiQuintupleMonster2020_Reward = {}
	tQiXiQuintupleMonster2020_Reward[3316515] = {}
	-- ===喜鹊礼包1
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316515][1]
	-- ===删除: 3316515,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316515],1)
	tQiXiQuintupleMonster2020_Reward[3316515][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316515][1]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1]["DeleteItem"][1]["Id"] = 3316515 -- 【库】清风星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316515][1]["LogId"] = 12002030
	-- 揽鹊枝-- 【必给】
	tQiXiQuintupleMonster2020_Reward[3316515][1][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RandomItemChanceType"] = 1
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 揽鹊笛*1
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 外套碎片-- 【自身概率】 - 10%
	tQiXiQuintupleMonster2020_Reward[3316515][1][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RandomItemChanceType"] = 3
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["ItemSelfChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:10000][金币:0], 【表格】外套碎片
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得5个, 最多可获得:（5）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["EventType"] = 224
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["DataType"] = 60
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["RewardTotalData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316515][1][2]["FullIndex"] = 7
	-- 赤炼石+1 - 22%
	tQiXiQuintupleMonster2020_Reward[3316515][1][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316515][1][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316515][1][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316515][1][6] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][6]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][1][6]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316515][1][6]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][6]["RewardStrengthValue"]["Value"] = 50 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316515][1][6]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316515][1][7] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][7]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][1][7]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316515][1][7]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tQiXiQuintupleMonster2020_Reward[3316516] = {}
	-- ===喜鹊礼包2
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316516][1]
	-- ===删除: 3316516,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316516],1)
	tQiXiQuintupleMonster2020_Reward[3316516][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316516][1]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1]["DeleteItem"][1]["Id"] = 3316516 -- 【库】月灵星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316516][1]["LogId"] = 12002030
	-- 外套碎片-- 【自身概率】 - 10%
	tQiXiQuintupleMonster2020_Reward[3316516][1][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RandomItemChanceType"] = 3
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["ItemSelfChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:10000][金币:0], 【表格】外套碎片
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得5个, 最多可获得:（5）, 超限给编号（6）-
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["EventType"] = 224
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["DataType"] = 60
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["RewardTotalData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316516][1][1]["FullIndex"] = 6
	-- 赤炼石+1 - 22%
	tQiXiQuintupleMonster2020_Reward[3316516][1][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*2
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316516][1][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的微光星陨石*2
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316516][1][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 万能神纹精粹（赠）*2
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316516][1][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][1][5]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316516][1][5]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][5]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316516][1][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316516][1][6] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][6]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][1][6]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316516][1][6]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tQiXiQuintupleMonster2020_Reward[3316517] = {}
	-- ===喜鹊礼包3
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316517][1]
	-- ===删除: 3316517,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316517],1)
	tQiXiQuintupleMonster2020_Reward[3316517][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316517][1]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1]["DeleteItem"][1]["Id"] = 3316517 -- 【库】恋语星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316517][1]["LogId"] = 12002030
	-- 揽鹊枝-- 【必给】
	tQiXiQuintupleMonster2020_Reward[3316517][1][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RandomItemChanceType"] = 1
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RewardItem"][1]["Attr"] = "0 2" -- 揽鹊笛*2
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 外套碎片-- 【自身概率】 - 10%
	tQiXiQuintupleMonster2020_Reward[3316517][1][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RandomItemChanceType"] = 3
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["ItemSelfChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:10000][金币:0], 【表格】外套碎片
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得5个, 最多可获得:（5）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["EventType"] = 224
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["DataType"] = 60
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["RewardTotalData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316517][1][2]["FullIndex"] = 7
	-- 赤炼石+1 - 22%
	tQiXiQuintupleMonster2020_Reward[3316517][1][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RewardItem"][1]["Attr"] = "0 3 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*3
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316517][1][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的微光星陨石*3
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316517][1][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹（赠）*3
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316517][1][6] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][6]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][1][6]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316517][1][6]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][6]["RewardStrengthValue"]["Value"] = 150 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316517][1][6]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316517][1][7] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][7]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][1][7]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316517][1][7]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tQiXiQuintupleMonster2020_Reward[3316518] = {}
	-- ===喜鹊礼包4
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316518][1]
	-- ===删除: 3316518,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316518],1)
	tQiXiQuintupleMonster2020_Reward[3316518][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316518][1]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1]["DeleteItem"][1]["Id"] = 3316518 -- 【库】花海星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316518][1]["LogId"] = 12002030
	-- 外套碎片-- 【自身概率】 - 10%
	tQiXiQuintupleMonster2020_Reward[3316518][1][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RandomItemChanceType"] = 3
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["ItemSelfChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:10000][金币:0], 【表格】外套碎片
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得5个, 最多可获得:（5）, 超限给编号（6）-
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["EventType"] = 224
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["DataType"] = 60
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["RewardTotalData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316518][1][1]["FullIndex"] = 6
	-- 赤炼石+2 - 22%
	tQiXiQuintupleMonster2020_Reward[3316518][1][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316518][1][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316518][1][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RewardItem"][1]["Attr"] = "0 4 3" -- 万能神纹精粹（赠）*4
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316518][1][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][1][5]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316518][1][5]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][5]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316518][1][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316518][1][6] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][6]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][1][6]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316518][1][6]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tQiXiQuintupleMonster2020_Reward[3316519] = {}
	-- ===喜鹊礼包5
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316519][1]
	-- ===删除: 3316519,1
	-- ===NewEmoneyLog: 1000,1981
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316519],1)
	tQiXiQuintupleMonster2020_Reward[3316519][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316519][1]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1]["DeleteItem"][1]["Id"] = 3316519 -- 【库】北斗琉璃星礼包[属性:73]
	tQiXiQuintupleMonster2020_Reward[3316519][1]["LogId"] = 12002030
	-- 揽鹊枝-- 【自身概率】 - 50%
	tQiXiQuintupleMonster2020_Reward[3316519][1][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RandomItemChanceType"] = 3
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["ItemSelfChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["ItemChance"] = 5000
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RewardItem"][1]["Attr"] = "0 3" -- 揽鹊笛*3
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 外套碎片-- 【自身概率】 - 10%
	tQiXiQuintupleMonster2020_Reward[3316519][1][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RandomItemChanceType"] = 3
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["ItemSelfChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardItem"][1]["Id"] = 3316531 -- 七夕外套碎片[3316531][属性:9][叠加:10000][金币:0], 【表格】外套碎片
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 七夕外套碎片*1
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 1天（零点重置）, 可获得5个, 最多可获得:（5）, 超限给编号（8）-
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["EventType"] = 224
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["DataType"] = 60
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["RewardTotalData"] = 5
	tQiXiQuintupleMonster2020_Reward[3316519][1][2]["FullIndex"] = 8
	-- 天石（赠） - 10%
	tQiXiQuintupleMonster2020_Reward[3316519][1][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["RewardEMoneyMono"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["RewardEMoneyMono"]["Value"] = 66 -- 天石（赠）, 【需求】天石（赠）
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1981"
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54712, data0）】全服限量:（280）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["GlobalId"] = 54712
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["Pos"] = 0
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["MaxData"] = 280
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["FullIndex"] = 7
			-- 【动态掩码（54712, data1）】单日限量:（20）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["OtherPos"] = 1
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["OtherMaxData"] = 20
	tQiXiQuintupleMonster2020_Reward[3316519][1][3]["OtherFullIndex"] = 7
	-- 赤炼石+2 - 22%
	tQiXiQuintupleMonster2020_Reward[3316519][1][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tQiXiQuintupleMonster2020_Reward[3316519][1][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["ItemChance"] = 2000
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:265][叠加:0][金币:0], 【表格】明亮星陨石
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316519][1][6] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RewardItem"][1]["Attr"] = "0 6 3" -- 万能神纹精粹（赠）*6
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316519][1][7] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][7]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][1][7]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316519][1][7]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][7]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316519][1][7]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316519][1][8] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][8]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][1][8]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316519][1][8]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][1][8]["RewardEffect"]["Effect"] = "angelwing"


	-- ===鸠将领礼包（每日限量5个）
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316520]
	-- ===删除: 3316520,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward,3316520)
	tQiXiQuintupleMonster2020_Reward[3316520] = {}
	tQiXiQuintupleMonster2020_Reward[3316520]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316520]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316520]["DeleteItem"][1]["Id"] = 3316520 -- 【库】魔鸠司令礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316520]["LogId"] = 12002030
	-- 揽鹊枝 - 45%
	tQiXiQuintupleMonster2020_Reward[3316520][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316520][1]["ItemChance"] = 4500
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RewardItem"][1]["Attr"] = "0 1" -- 揽鹊笛*1
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316520][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊枝 - 30%
	tQiXiQuintupleMonster2020_Reward[3316520][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316520][2]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RewardItem"][1]["Attr"] = "0 2" -- 揽鹊笛*2
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316520][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊枝 - 15%
	tQiXiQuintupleMonster2020_Reward[3316520][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316520][3]["ItemChance"] = 1500
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RewardItem"][1]["Attr"] = "0 3" -- 揽鹊笛*3
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316520][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊枝 - 10%
	tQiXiQuintupleMonster2020_Reward[3316520][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316520][4]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RewardItem"][1]["Attr"] = "0 5" -- 揽鹊笛*5
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316520][4]["RewardEffect"]["Effect"] = "angelwing"


	tQiXiQuintupleMonster2020_Reward[3316521] = {}
	-- ===鸠BOSS礼包（每日限量3个）
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316521][1]
	-- ===删除: 3316521,1
	-- ===NewEmoneyLog: 1000,1982
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316521],1)
	tQiXiQuintupleMonster2020_Reward[3316521][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316521][1]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1]["DeleteItem"][1]["Id"] = 3316521 -- 【库】混沌魔鸠王礼包[属性:73]
	tQiXiQuintupleMonster2020_Reward[3316521][1]["LogId"] = 12002030
	-- 揽鹊枝-- 【必给】
	tQiXiQuintupleMonster2020_Reward[3316521][1][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RandomItemChanceType"] = 1
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RewardItem"][1]["Attr"] = "0 3" -- 揽鹊笛*3
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 天石（赠） - 10%
	tQiXiQuintupleMonster2020_Reward[3316521][1][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["RewardEMoneyMono"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["RewardEMoneyMono"]["Value"] = 120 -- 天石（赠）, 【需求】天石（赠）
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1982"
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54712, data2）】全服限量:（140）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["GlobalId"] = 54712
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["Pos"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["MaxData"] = 140
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["FullIndex"] = 7
			-- 【动态掩码（54712, data3）】单日限量:（10）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["OtherPos"] = 3
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["OtherMaxData"] = 10
	tQiXiQuintupleMonster2020_Reward[3316521][1][2]["OtherFullIndex"] = 7
	-- 精装神器礼包 - 5%
	tQiXiQuintupleMonster2020_Reward[3316521][1][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["ItemChance"] = 500
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RewardItem"][1]["Id"] = 3314914 -- 精装神器礼包[3314914][属性:8][叠加:1][金币:0], 【表格】精装神器礼包
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 精装神器礼包*1
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54712, data4）】全服限量:（1400）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["GlobalId"] = 54712
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["Pos"] = 4
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["MaxData"] = 1400
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["FullIndex"] = 7
			-- 【动态掩码（54712, data5）】单日限量:（100）, 超限给编号（7）-
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["OtherPos"] = 5
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["OtherMaxData"] = 100
	tQiXiQuintupleMonster2020_Reward[3316521][1][3]["OtherFullIndex"] = 7
	-- 赤炼石+3 - 25%
	tQiXiQuintupleMonster2020_Reward[3316521][1][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["ItemChance"] = 2500
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 25%
	tQiXiQuintupleMonster2020_Reward[3316521][1][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["ItemChance"] = 2500
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 1000万爵位勋章（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tQiXiQuintupleMonster2020_Reward[3316521][1][6] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["ItemChance"] = 2500
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 10%
	tQiXiQuintupleMonster2020_Reward[3316521][1][7] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][7]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][1][7]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316521][1][7]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][7]["RewardStrengthValue"]["Value"] = 600 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316521][1][7]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][1][7]["RewardEffect"]["Effect"] = "angelwing"


	-- ===清风星礼包
	-- ===索引:tQiXiQuintupleMonster2020_Reward[1]
	-- ===LogStep:2[2]
	tQiXiQuintupleMonster2020_Reward[1] = {}
	tQiXiQuintupleMonster2020_Reward[1]["LogId"] = 12002030
	tQiXiQuintupleMonster2020_Reward[1]["LogStep"] = "2[2]"
	tQiXiQuintupleMonster2020_Reward[1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[1]["RewardItem"][1]["Id"] = 3316515 -- 清风星礼包[3316515][属性:9][叠加:10000][金币:0], 【表格】清风星礼包
	tQiXiQuintupleMonster2020_Reward[1]["RewardItem"][1]["Attr"] = "0 1" -- 清风星礼包*1
	tQiXiQuintupleMonster2020_Reward[1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===月灵星礼包
	-- ===索引:tQiXiQuintupleMonster2020_Reward[2]
	-- ===LogStep:2[2]
	tQiXiQuintupleMonster2020_Reward[2] = {}
	tQiXiQuintupleMonster2020_Reward[2]["LogId"] = 12002030
	tQiXiQuintupleMonster2020_Reward[2]["LogStep"] = "2[2]"
	tQiXiQuintupleMonster2020_Reward[2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[2]["RewardItem"][1]["Id"] = 3316516 -- 月灵星礼包[3316516][属性:9][叠加:10000][金币:0], 【表格】月灵星礼包
	tQiXiQuintupleMonster2020_Reward[2]["RewardItem"][1]["Attr"] = "0 1" -- 月灵星礼包*1
	tQiXiQuintupleMonster2020_Reward[2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===恋语星礼包
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3]
	-- ===LogStep:2[2]
	tQiXiQuintupleMonster2020_Reward[3] = {}
	tQiXiQuintupleMonster2020_Reward[3]["LogId"] = 12002030
	tQiXiQuintupleMonster2020_Reward[3]["LogStep"] = "2[2]"
	tQiXiQuintupleMonster2020_Reward[3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3]["RewardItem"][1]["Id"] = 3316517 -- 恋语星礼包[3316517][属性:9][叠加:10000][金币:0], 【表格】恋语星礼包
	tQiXiQuintupleMonster2020_Reward[3]["RewardItem"][1]["Attr"] = "0 1" -- 恋语星礼包*1
	tQiXiQuintupleMonster2020_Reward[3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===花海星礼包
	-- ===索引:tQiXiQuintupleMonster2020_Reward[4]
	-- ===LogStep:2[2]
	tQiXiQuintupleMonster2020_Reward[4] = {}
	tQiXiQuintupleMonster2020_Reward[4]["LogId"] = 12002030
	tQiXiQuintupleMonster2020_Reward[4]["LogStep"] = "2[2]"
	tQiXiQuintupleMonster2020_Reward[4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[4]["RewardItem"][1]["Id"] = 3316518 -- 花海星礼包[3316518][属性:9][叠加:10000][金币:0], 【表格】花海星礼包
	tQiXiQuintupleMonster2020_Reward[4]["RewardItem"][1]["Attr"] = "0 1" -- 花海星礼包*1
	tQiXiQuintupleMonster2020_Reward[4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===北斗琉璃星礼包
	-- ===索引:tQiXiQuintupleMonster2020_Reward[5]
	-- ===LogStep:2[2]
	tQiXiQuintupleMonster2020_Reward[5] = {}
	tQiXiQuintupleMonster2020_Reward[5]["LogId"] = 12002030
	tQiXiQuintupleMonster2020_Reward[5]["LogStep"] = "2[2]"
	tQiXiQuintupleMonster2020_Reward[5]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[5]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[5]["RewardItem"][1]["Id"] = 3316519 -- 北斗琉璃星礼包[3316519][属性:73][叠加:10000][金币:0], 【表格】北斗琉璃星礼包
	tQiXiQuintupleMonster2020_Reward[5]["RewardItem"][1]["Attr"] = "0 1" -- 北斗琉璃星礼包*1
	tQiXiQuintupleMonster2020_Reward[5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===魔鸠司令礼包
	-- ===索引:tQiXiQuintupleMonster2020_Reward[6501]
	-- ===LogStep:2[3]
	tQiXiQuintupleMonster2020_Reward[6501] = {}
	tQiXiQuintupleMonster2020_Reward[6501]["LogId"] = 12002030
	tQiXiQuintupleMonster2020_Reward[6501]["LogStep"] = "2[3]"
	tQiXiQuintupleMonster2020_Reward[6501]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[6501]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[6501]["RewardItem"][1]["Id"] = 3316520 -- 魔鸠司令礼包[3316520][属性:9][叠加:10000][金币:0], 【表格】魔鸠司令礼包
	tQiXiQuintupleMonster2020_Reward[6501]["RewardItem"][1]["Attr"] = "0 1" -- 魔鸠司令礼包*1
	tQiXiQuintupleMonster2020_Reward[6501]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[6501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[6501]["RewardEffect"]["Effect"] = "angelwing"


	-- ===混沌魔鸠王礼包
	-- ===索引:tQiXiQuintupleMonster2020_Reward[6502]
	-- ===LogStep:2[3]
	tQiXiQuintupleMonster2020_Reward[6502] = {}
	tQiXiQuintupleMonster2020_Reward[6502]["LogId"] = 12002030
	tQiXiQuintupleMonster2020_Reward[6502]["LogStep"] = "2[3]"
	tQiXiQuintupleMonster2020_Reward[6502]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[6502]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[6502]["RewardItem"][1]["Id"] = 3316521 -- 混沌魔鸠王礼包[3316521][属性:73][叠加:10000][金币:0], 【表格】混沌魔鸠王礼包
	tQiXiQuintupleMonster2020_Reward[6502]["RewardItem"][1]["Attr"] = "0 1" -- 混沌魔鸠王礼包*1
	tQiXiQuintupleMonster2020_Reward[6502]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[6502]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[6502]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊礼包1
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316515][2]
	-- ===删除: 3316515,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316515],2)
	tQiXiQuintupleMonster2020_Reward[3316515][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316515][2]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2]["DeleteItem"][1]["Id"] = 3316515 -- 【库】清风星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316515][2]["LogId"] = 12002030
	-- 赤炼石+1 - 22%
	tQiXiQuintupleMonster2020_Reward[3316515][2][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316515][2][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的微光星陨石*1
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316515][2][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 万能神纹精粹（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316515][2][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][2][4]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316515][2][4]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][4]["RewardStrengthValue"]["Value"] = 50 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316515][2][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316515][2][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316515][2][5]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316515][2][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316515][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316515][2][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊礼包2
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316516][2]
	-- ===删除: 3316516,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316516],2)
	tQiXiQuintupleMonster2020_Reward[3316516][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316516][2]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2]["DeleteItem"][1]["Id"] = 3316516 -- 【库】月灵星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316516][2]["LogId"] = 12002030
	-- 赤炼石+1 - 22%
	tQiXiQuintupleMonster2020_Reward[3316516][2][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RewardItem"][1]["Attr"] = "0 2 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*2
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316516][2][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的微光星陨石*2
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316516][2][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RewardItem"][1]["Attr"] = "0 2 3" -- 万能神纹精粹（赠）*2
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316516][2][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][2][4]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316516][2][4]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][4]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316516][2][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316516][2][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][2][5]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316516][2][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][2][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊礼包3
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316517][2]
	-- ===删除: 3316517,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316517],2)
	tQiXiQuintupleMonster2020_Reward[3316517][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316517][2]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2]["DeleteItem"][1]["Id"] = 3316517 -- 【库】恋语星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316517][2]["LogId"] = 12002030
	-- 赤炼石+1 - 22%
	tQiXiQuintupleMonster2020_Reward[3316517][2][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RewardItem"][1]["Id"] = 730001 -- +1赤炼石[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石+1
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RewardItem"][1]["Attr"] = "0 3 3 7200 1" -- 5天时效(激活)的+1赤炼石（赠）*3
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316517][2][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的微光星陨石*3
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316517][2][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RewardItem"][1]["Attr"] = "0 3 3" -- 万能神纹精粹（赠）*3
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316517][2][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][2][4]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316517][2][4]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][4]["RewardStrengthValue"]["Value"] = 150 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316517][2][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316517][2][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316517][2][5]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316517][2][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316517][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316517][2][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊礼包4
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316518][2]
	-- ===删除: 3316518,1
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316518],2)
	tQiXiQuintupleMonster2020_Reward[3316518][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316518][2]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2]["DeleteItem"][1]["Id"] = 3316518 -- 【库】花海星礼包[属性:9]
	tQiXiQuintupleMonster2020_Reward[3316518][2]["LogId"] = 12002030
	-- 赤炼石+2 - 22%
	tQiXiQuintupleMonster2020_Reward[3316518][2][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tQiXiQuintupleMonster2020_Reward[3316518][2][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["ItemChance"] = 3000
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RewardItem"][1]["Id"] = 3009000 -- 微光星陨石[3009000][属性:265][叠加:0][金币:0], 【表格】微光星陨石
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的微光星陨石*5
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316518][2][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RewardItem"][1]["Attr"] = "0 4 3" -- 万能神纹精粹（赠）*4
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316518][2][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][2][4]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316518][2][4]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][4]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316518][2][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 0%
	tQiXiQuintupleMonster2020_Reward[3316518][2][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][2][5]["ItemChance"] = 0
	tQiXiQuintupleMonster2020_Reward[3316518][2][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][2][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊礼包5
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316519][2]
	-- ===删除: 3316519,1
	-- ===NewEmoneyLog: 1000,1981
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316519],2)
	tQiXiQuintupleMonster2020_Reward[3316519][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316519][2]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2]["DeleteItem"][1]["Id"] = 3316519 -- 【库】北斗琉璃星礼包[属性:73]
	tQiXiQuintupleMonster2020_Reward[3316519][2]["LogId"] = 12002030
	-- 天石（赠） - 10%
	tQiXiQuintupleMonster2020_Reward[3316519][2][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["RewardEMoneyMono"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["RewardEMoneyMono"]["Value"] = 66 -- 天石（赠）, 【需求】天石（赠）
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1981"
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54712, data0）】全服限量:（280）, 超限给编号（5）-
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["GlobalId"] = 54712
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["Pos"] = 0
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["MaxData"] = 280
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["FullIndex"] = 5
			-- 【动态掩码（54712, data1）】单日限量:（20）, 超限给编号（5）-
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["OtherPos"] = 1
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["OtherMaxData"] = 20
	tQiXiQuintupleMonster2020_Reward[3316519][2][1]["OtherFullIndex"] = 5
	-- 赤炼石+2 - 22%
	tQiXiQuintupleMonster2020_Reward[3316519][2][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+2赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 20%
	tQiXiQuintupleMonster2020_Reward[3316519][2][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["ItemChance"] = 2000
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:265][叠加:0][金币:0], 【表格】明亮星陨石
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 22%
	tQiXiQuintupleMonster2020_Reward[3316519][2][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["ItemChance"] = 2200
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RewardItem"][1]["Attr"] = "0 6 3" -- 万能神纹精粹（赠）*6
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 26%
	tQiXiQuintupleMonster2020_Reward[3316519][2][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316519][2][5]["ItemChance"] = 2600
	tQiXiQuintupleMonster2020_Reward[3316519][2][5]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][5]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316519][2][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316519][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316519][2][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===鸠BOSS礼包（每日限量3个）
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316521][2]
	-- ===删除: 3316521,1
	-- ===NewEmoneyLog: 1000,1982
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316521],2)
	tQiXiQuintupleMonster2020_Reward[3316521][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tQiXiQuintupleMonster2020_Reward[3316521][2]["DeleteItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2]["DeleteItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2]["DeleteItem"][1]["Id"] = 3316521 -- 【库】混沌魔鸠王礼包[属性:73]
	tQiXiQuintupleMonster2020_Reward[3316521][2]["LogId"] = 12002030
	-- 天石（赠） - 10%
	tQiXiQuintupleMonster2020_Reward[3316521][2][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["RewardEMoneyMono"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["RewardEMoneyMono"]["Value"] = 120 -- 天石（赠）, 【需求】天石（赠）
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1982"
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54712, data2）】全服限量:（140）, 超限给编号（6）-
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["GlobalId"] = 54712
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["Pos"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["MaxData"] = 140
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["FullIndex"] = 6
			-- 【动态掩码（54712, data3）】单日限量:（10）, 超限给编号（6）-
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["OtherPos"] = 3
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["OtherMaxData"] = 10
	tQiXiQuintupleMonster2020_Reward[3316521][2][1]["OtherFullIndex"] = 6
	-- 精装神器礼包 - 5%
	tQiXiQuintupleMonster2020_Reward[3316521][2][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["ItemChance"] = 500
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RewardItem"][1]["Id"] = 3314914 -- 精装神器礼包[3314914][属性:8][叠加:1][金币:0], 【表格】精装神器礼包
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 精装神器礼包*1
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54712, data4）】全服限量:（1400）, 超限给编号（6）-
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["GlobalId"] = 54712
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["Pos"] = 4
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["MaxData"] = 1400
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["FullIndex"] = 6
			-- 【动态掩码（54712, data5）】单日限量:（100）, 超限给编号（6）-
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["OtherPos"] = 5
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["OtherMaxData"] = 100
	tQiXiQuintupleMonster2020_Reward[3316521][2][2]["OtherFullIndex"] = 6
	-- 赤炼石+3 - 25%
	tQiXiQuintupleMonster2020_Reward[3316521][2][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["ItemChance"] = 2500
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000万爵位勋章 - 25%
	tQiXiQuintupleMonster2020_Reward[3316521][2][4] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["ItemChance"] = 2500
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位勋章
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 1000万爵位勋章（赠）*1
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 25%
	tQiXiQuintupleMonster2020_Reward[3316521][2][5] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["ItemChance"] = 2500
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹（赠）*15
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 10%
	tQiXiQuintupleMonster2020_Reward[3316521][2][6] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][6]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316521][2][6]["ItemChance"] = 1000
	tQiXiQuintupleMonster2020_Reward[3316521][2][6]["RewardStrengthValue"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][6]["RewardStrengthValue"]["Value"] = 600 -- 气力值, 【需求】气力值
	tQiXiQuintupleMonster2020_Reward[3316521][2][6]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316521][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316521][2][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊礼包2
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316516][3]
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316516],3)
	tQiXiQuintupleMonster2020_Reward[3316516][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3]["ItemChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316516][3]["LogId"] = 12002030
	-- 揽鹊枝 - 50%
	tQiXiQuintupleMonster2020_Reward[3316516][3][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["ItemChance"] = 5000
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 揽鹊笛*1
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊枝 - 50%
	tQiXiQuintupleMonster2020_Reward[3316516][3][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["ItemChance"] = 5000
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RewardItem"][1]["Attr"] = "0 2" -- 揽鹊笛*2
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316516][3][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===喜鹊礼包4
	-- ===索引:tQiXiQuintupleMonster2020_Reward[3316518][3]
	-- RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[3316518],3)
	tQiXiQuintupleMonster2020_Reward[3316518][3] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3]["ItemChanceSum"] = 10000
	tQiXiQuintupleMonster2020_Reward[3316518][3]["LogId"] = 12002030
	-- 揽鹊枝 - 50%
	tQiXiQuintupleMonster2020_Reward[3316518][3][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["ItemChance"] = 5000
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RewardItem"][1]["Attr"] = "0 2" -- 揽鹊笛*2
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 揽鹊枝 - 50%
	tQiXiQuintupleMonster2020_Reward[3316518][3][2] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RandomItemChanceType"] = 2
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["ItemChance"] = 5000
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RewardItem"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RewardItem"][1] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RewardItem"][1]["Id"] = 3316530 -- 揽鹊笛[3316530][属性:9][叠加:10000][金币:0], 【表格】揽鹊枝
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RewardItem"][1]["Attr"] = "0 3" -- 揽鹊笛*3
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RewardEffect"] = {}
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tQiXiQuintupleMonster2020_Reward[3316518][3][2]["RewardEffect"]["Effect"] = "angelwing"




---------------------------------------------逻辑模块--------------------------------------------
-- 刷怪
function QiXiQuintupleMonster2020_NewMonster(nQiXiQuintupleMonster2020_InstanceMonster, nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_MapId = Get_UserMapId(nQiXiQuintupleMonster2020_UserId)
	local sQiXiQuintupleMonster2020_MapName = tQiXiQuintupleMonster2020_Text["MapName"][nQiXiQuintupleMonster2020_MapId]
	local nQiXiQuintupleMonster2020_MonsterId = tQiXiQuintupleMonster2020_InstanceMonster[nQiXiQuintupleMonster2020_InstanceMonster][1] -- 怪物id
	local nQiXiQuintupleMonster2020_AddMonsterNum = tQiXiQuintupleMonster2020_InstanceMonster[nQiXiQuintupleMonster2020_InstanceMonster][2] -- 怪物数量
	local nQiXiQuintupleMonster2020_MonsterPosX = Get_UserPositionX(nQiXiQuintupleMonster2020_UserId) + 1 -- 怪物出生点X坐标
	local nQiXiQuintupleMonster2020_MonsterPosY = Get_UserPositionY(nQiXiQuintupleMonster2020_UserId) + 1 -- 怪物出生点Y坐标
	local nQiXiQuintupleMonster2020_MonsterRangeX = tQiXiQuintupleMonster2020_InstanceMonster[nQiXiQuintupleMonster2020_InstanceMonster][3] -- 怪物出生点范围X坐标
	local nQiXiQuintupleMonster2020_MonsterRangeY = tQiXiQuintupleMonster2020_InstanceMonster[nQiXiQuintupleMonster2020_InstanceMonster][4] -- 怪物出生点范围Y坐标
	-- local nQiXiQuintupleMonster2020_MonsterGenId = tQiXiQuintupleMonster2020_InstanceMonster[nQiXiQuintupleMonster2020_InstanceMonster][5] -- 怪物出生generator
	local nQiXiQuintupleMonster2020_MonsterGenId = tQiXiQuintupleMonster2020_InstanceMonster[nQiXiQuintupleMonster2020_MonsterId][nQiXiQuintupleMonster2020_MapId] -- 怪物出生generator

	-- if Monster_CreateMonsterRange(0,0,nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_MonsterPosX,nQiXiQuintupleMonster2020_MonsterPosY,nQiXiQuintupleMonster2020_MonsterGenId,nQiXiQuintupleMonster2020_MonsterId,0,"",0,nQiXiQuintupleMonster2020_MonsterRangeX,nQiXiQuintupleMonster2020_MonsterRangeY,nQiXiQuintupleMonster2020_AddMonsterNum,0) then
	if Monster_AddMonster(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_MonsterPosX,nQiXiQuintupleMonster2020_MonsterPosY,nQiXiQuintupleMonster2020_MonsterGenId,nQiXiQuintupleMonster2020_MonsterId) then
	-- if Map_CreateDynaGenerator(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_MonsterPosX,nQiXiQuintupleMonster2020_MonsterPosY,nQiXiQuintupleMonster2020_MonsterRangeX,nQiXiQuintupleMonster2020_MonsterRangeY,1,1296000,1,nQiXiQuintupleMonster2020_MonsterId,0,0,nQiXiQuintupleMonster2020_UserId) then
		-- if nQiXiQuintupleMonster2020_InstanceMonster == 2 then
			-- 全服播报
			-- local sQiXiQuintupleMonster2020_BroadCast = string.format(tQiXiQuintupleMonster2020_Text["Msg"]["BroadCast"][1],sQiXiQuintupleMonster2020_MapName,nQiXiQuintupleMonster2020_MonsterPosX,nQiXiQuintupleMonster2020_MonsterPosY)
			-- Sys_SystemBroadcast(sQiXiQuintupleMonster2020_BroadCast) -- 左上角
			-- Sys_TalkBroadcast(sQiXiQuintupleMonster2020_BroadCast) -- 左下角
		-- end
	end
end

-- 魔鸠小怪
function QiXiQuintupleMonster2020_KillMonster(nQiXiQuintupleMonster2020_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end

	local nQiXiQuintupleMonster2020_UserId = Get_UserId()

	-- 几率刷出魔鸠司令
	local nQiXiQuintupleMonster2020_MonsterIndex = tQiXiQuintupleMonster2020_Cont["MonsterIndex"][nQiXiQuintupleMonster2020_MonsterId]
	local nQiXiQuintupleMonster2020_Incident1 = QiXiQuintupleMonster2020_GetRandom(nQiXiQuintupleMonster2020_MonsterIndex)

	-- 隔天清零击杀数
	QiXiQuintupleMonster2020_ClearStcInterval(8,nQiXiQuintupleMonster2020_UserId)

	local nQiXiQuintupleMonster2020_DayKillNum = QiXiQuintupleMonster2020_GetStcValue(8,nQiXiQuintupleMonster2020_UserId) or 0
	local nQiXiQuintupleMonster2020_DayKillLimit = tQiXiQuintupleMonster2020_Cont["CreateMonster"] - 1

	-- 记录击杀数
	if nQiXiQuintupleMonster2020_DayKillNum <= nQiXiQuintupleMonster2020_DayKillLimit then
		QiXiQuintupleMonster2020_AddStatistic(8,1,nQiXiQuintupleMonster2020_UserId)
	end

	-- 每日击杀此数必出精英
	if nQiXiQuintupleMonster2020_DayKillNum == nQiXiQuintupleMonster2020_DayKillLimit then
		nQiXiQuintupleMonster2020_Incident1 = 1
	end

	if nQiXiQuintupleMonster2020_Incident1 == 1 then
		QiXiQuintupleMonster2020_NewMonster(1, nQiXiQuintupleMonster2020_UserId)
		
		local sQiXiQuintupleMonster2020_MonsterName = tQiXiQuintupleMonster2020_Text["MonsterName"][nQiXiQuintupleMonster2020_MonsterId]
		local sQiXiQuintupleMonster2020_CreateMonster = string.format(tQiXiQuintupleMonster2020_Text["Msg"]["CreateMonster"][1],sQiXiQuintupleMonster2020_MonsterName)
		User_TalkChannel2005(sQiXiQuintupleMonster2020_CreateMonster,nQiXiQuintupleMonster2020_UserId)
		Sys_MsgBox(sQiXiQuintupleMonster2020_CreateMonster,nil,nil,nQiXiQuintupleMonster2020_UserId)
	end

	-- 击杀数
	local nQiXiQuintupleMonster2020_KillNum = QiXiQuintupleMonster2020_GetStcValue(6,nQiXiQuintupleMonster2020_UserId) or 0
	local nQiXiQuintupleMonster2020_KillLimit = tQiXiQuintupleMonster2020_Stc[6]["LimitData"] - 1
	local nQiXiQuintupleMonster2020_GuideNum = QiXiQuintupleMonster2020_GetStcValue(7,nQiXiQuintupleMonster2020_UserId) or 0
	local nQiXiQuintupleMonster2020_GuideLimit = tQiXiQuintupleMonster2020_Stc[7]["LimitData"]

	-- 击杀3只后出新手引导
	if (nQiXiQuintupleMonster2020_KillNum >= nQiXiQuintupleMonster2020_KillLimit) and (nQiXiQuintupleMonster2020_GuideNum < nQiXiQuintupleMonster2020_GuideLimit) then
		QixiFestivalNPC_Guide()
	else
		QiXiQuintupleMonster2020_AddStatistic(6,1,nQiXiQuintupleMonster2020_UserId)
	end

	-- 几率掉落喜鹊礼包
	local nQiXiQuintupleMonster2020_Incident2 = QiXiQuintupleMonster2020_GetRandom(6)
	if nQiXiQuintupleMonster2020_Incident2 == 1 then
		-- 杀怪奖励
		QiXiQuintupleMonster2020_GetReward(nQiXiQuintupleMonster2020_MonsterId,nQiXiQuintupleMonster2020_UserId)
	end
end

-- 魔鸠司令
function QiXiQuintupleMonster2020_KillBOSS(nQiXiQuintupleMonster2020_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end

	local nQiXiQuintupleMonster2020_UserId = Get_UserId()

	-- 几率刷出混沌魔鸠王
	local nQiXiQuintupleMonster2020_Incident1 = QiXiQuintupleMonster2020_GetRandom(7)

	-- 每日首杀必出
	if QiXiQuintupleMonster2020_ClearStcInterval(9,nQiXiQuintupleMonster2020_UserId) then
		nQiXiQuintupleMonster2020_Incident1 = 1
	end

	if nQiXiQuintupleMonster2020_Incident1 == 1 then
		QiXiQuintupleMonster2020_NewMonster(2, nQiXiQuintupleMonster2020_UserId)
		
		-- 105提示
		local sQiXiQuintupleMonster2020_CreateMonster = tQiXiQuintupleMonster2020_Text["Msg"]["CreateMonster"][2]
		User_TalkChannel2005(sQiXiQuintupleMonster2020_CreateMonster,nQiXiQuintupleMonster2020_UserId)
		Sys_MsgBox(sQiXiQuintupleMonster2020_CreateMonster,nil,nil,nQiXiQuintupleMonster2020_UserId)
	end

	-- 杀怪奖励
	QiXiQuintupleMonster2020_GetReward(nQiXiQuintupleMonster2020_MonsterId,nQiXiQuintupleMonster2020_UserId)
end

-- 混沌魔鸠王
function QiXiQuintupleMonster2020_KillBigBOSS(nQiXiQuintupleMonster2020_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end

	local nQiXiQuintupleMonster2020_UserId = Get_UserId()

	-- 杀怪奖励
	QiXiQuintupleMonster2020_GetReward(nQiXiQuintupleMonster2020_MonsterId,nQiXiQuintupleMonster2020_UserId)
end

-- 神龙岛&古神灵境&BOSS
function QiXiQuintupleMonster2020_KillAreaMonster(nQiXiQuintupleMonster2020_MonsterId)
	-- 活动时间
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		return
	end

	local nQiXiQuintupleMonster2020_UserId = Get_UserId()
	local nQiXiQuintupleMonster2020_MonsterReward = QiXiQuintupleMonster2020_GetLevel(nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_BirdMonsterId = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_MonsterReward]["Monster"]
	local nQiXiQuintupleMonster2020_MonsterStcIndex = tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][nQiXiQuintupleMonster2020_BirdMonsterId]

	-- 几率掉落喜鹊礼包
	local nQiXiQuintupleMonster2020_Incident2 = QiXiQuintupleMonster2020_GetRandom(6)
	if nQiXiQuintupleMonster2020_Incident2 == 1 then
		-- 隔天重置喜鹊礼包领取限量
		QiXiQuintupleMonster2020_ClearStcInterval(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId)
		
		-- 判断喜鹊礼包领取次数
		local nQiXiQuintupleMonster2020_Num = QiXiQuintupleMonster2020_GetStcValue(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId) or 0
		local nQiXiQuintupleMonster2020_LimitData = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_MonsterStcIndex]["LimitData"]
		
		-- 超出喜鹊礼包领取限量
		if nQiXiQuintupleMonster2020_Num >= nQiXiQuintupleMonster2020_LimitData then
			return
		end
		
		-- 背包判断
		local nQiXiQuintupleMonster2020_Space = RewardTemplate_GetRewardSpace(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_MonsterReward])
		if not User_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId) then
			Sys_MsgBox(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["NoSpace"],nQiXiQuintupleMonster2020_Space),nil,nil,nQiXiQuintupleMonster2020_UserId)
			User_TalkChannel2005(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["NoSpace"],nQiXiQuintupleMonster2020_Space),nQiXiQuintupleMonster2020_UserId)
			return
		end
		
		-- 喜鹊礼包领取限量
		if not QiXiQuintupleMonster2020_AddStatistic(nQiXiQuintupleMonster2020_MonsterStcIndex,1,nQiXiQuintupleMonster2020_UserId) then
			return
		end
		
		RewardTemplate_UseItemAndMsg(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_MonsterReward])
	end
end

-- 杀怪奖励
function QiXiQuintupleMonster2020_GetReward(nQiXiQuintupleMonster2020_MonsterId,nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_MonsterStcIndex = tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][nQiXiQuintupleMonster2020_MonsterId]
	local nQiXiQuintupleMonster2020_MapId = Get_UserMapId(nQiXiQuintupleMonster2020_UserId)

	-- 隔天重置礼包领取限量
	QiXiQuintupleMonster2020_ClearStcInterval(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId)

	-- 地图奖励领完提示
	QiXiQuintupleMonster2020_HaveAllReward(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_UserId)

	-- 判断礼包领取次数
	local nQiXiQuintupleMonster2020_Num = QiXiQuintupleMonster2020_GetStcValue(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId) or 0
	local nQiXiQuintupleMonster2020_LimitData = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_MonsterStcIndex]["LimitData"]

	-- 超出礼包领取限量
	if nQiXiQuintupleMonster2020_Num == nQiXiQuintupleMonster2020_LimitData then
		User_TalkChannel2005(tQiXiQuintupleMonster2020_Text["Msg"]["NoMore"][nQiXiQuintupleMonster2020_MonsterStcIndex],nQiXiQuintupleMonster2020_UserId)
		Sys_MsgBox(tQiXiQuintupleMonster2020_Text["Msg"]["NoMore"][nQiXiQuintupleMonster2020_MonsterStcIndex],nil,nil,nQiXiQuintupleMonster2020_UserId)
		
		QiXiQuintupleMonster2020_AddStatistic(nQiXiQuintupleMonster2020_MonsterStcIndex,1,nQiXiQuintupleMonster2020_UserId)
	end
	if nQiXiQuintupleMonster2020_Num >= nQiXiQuintupleMonster2020_LimitData then
		return
	end

	local nQiXiQuintupleMonster2020_MonsterReward = tQiXiQuintupleMonster2020_Cont["MonsterIndex"][nQiXiQuintupleMonster2020_MonsterId]

	-- 背包判断
	local nQiXiQuintupleMonster2020_Space = RewardTemplate_GetRewardSpace(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_MonsterReward])
	if not User_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId) then
		Sys_MsgBox(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["NoSpace"],nQiXiQuintupleMonster2020_Space),nil,nil,nQiXiQuintupleMonster2020_UserId)
		User_TalkChannel2005(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["NoSpace"],nQiXiQuintupleMonster2020_Space),nQiXiQuintupleMonster2020_UserId)
		return
	end

	-- 礼包领取限量
	if not QiXiQuintupleMonster2020_AddStatistic(nQiXiQuintupleMonster2020_MonsterStcIndex,1,nQiXiQuintupleMonster2020_UserId) then
		return
	end

	-- 发奖
	if not RewardTemplate_UseItemAndMsg(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_MonsterReward]) then
		return
	end

	-- 杀死魔鸠司令或混沌魔鸠王提示限量
	if nQiXiQuintupleMonster2020_MonsterId == tQiXiQuintupleMonster2020_InstanceMonster[1][1] or nQiXiQuintupleMonster2020_MonsterId == tQiXiQuintupleMonster2020_InstanceMonster[2][1] then
		local nQiXiQuintupleMonster2020_RewardStc = QiXiQuintupleMonster2020_GetStcValue(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId) or 0
		local nQiXiQuintupleMonster2020_RewardLimit = nQiXiQuintupleMonster2020_LimitData - nQiXiQuintupleMonster2020_RewardStc
		local sQiXiQuintupleMonster2020_RewardLimit = string.format(tQiXiQuintupleMonster2020_Text["Msg"]["KillMonster"][nQiXiQuintupleMonster2020_MonsterId],nQiXiQuintupleMonster2020_RewardLimit)
		if nQiXiQuintupleMonster2020_RewardLimit == 0 then
			sQiXiQuintupleMonster2020_RewardLimit = tQiXiQuintupleMonster2020_Text["Msg"]["KillMonsterMax"][nQiXiQuintupleMonster2020_MonsterId]
		end
		
		Sys_MsgBox(sQiXiQuintupleMonster2020_RewardLimit,nil,nil,nQiXiQuintupleMonster2020_UserId)
		Sys_SaveActionFestivalLog(string.format(tQiXiQuintupleMonster2020_Log["Boss"],nQiXiQuintupleMonster2020_MonsterId))
	else
		Sys_SaveActionFestivalLog(string.format(tQiXiQuintupleMonster2020_Log["Monster"],nQiXiQuintupleMonster2020_MonsterId))
	end

	-- 杀死混沌魔鸠王全服播报
	-- if nQiXiQuintupleMonster2020_MonsterId == tQiXiQuintupleMonster2020_InstanceMonster[2][1] then
		-- local nQiXiQuintupleMonster2020_UserName = Get_UserName(nQiXiQuintupleMonster2020_UserId)
		-- local nQiXiQuintupleMonster2020_MapName = tQiXiQuintupleMonster2020_Text["MapName"][nQiXiQuintupleMonster2020_MapId]
		-- local sQiXiQuintupleMonster2020_BroadCast = string.format(tQiXiQuintupleMonster2020_Text["Msg"]["BroadCast"][2],nQiXiQuintupleMonster2020_UserName,nQiXiQuintupleMonster2020_MapName)
		-- Sys_SystemBroadcast(sQiXiQuintupleMonster2020_BroadCast) -- 左上角
		-- Sys_TalkBroadcast(sQiXiQuintupleMonster2020_BroadCast) -- 左下角
	-- end
end

-- 地图奖励领完提示
function QiXiQuintupleMonster2020_HaveAllReward(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_UserId)
	-- 获取地图ID对应的索引
	local nQiXiQuintupleMonster2020_MapIndex = 1
	for i = 1,5 do
		if tQiXiQuintupleMonster2020_Map[i]["MapId"] == nQiXiQuintupleMonster2020_MapId then
			nQiXiQuintupleMonster2020_MapIndex = i
		end
	end

	-- 本图怪物&魔鸠司令&混沌魔鸠王
	local tQiXiQuintupleMonster2020_Monster = {}
	local nQiXiQuintupleMonster2020_NowMapMonster = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_MapIndex]["Monster"]
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][3])
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][4])
	table.insert(tQiXiQuintupleMonster2020_Monster,nQiXiQuintupleMonster2020_NowMapMonster)
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][1])
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][2])

	-- 判断地图奖励领完
	local bQiXiQuintupleMonster2020_HaveAllReward = true
	for i,v in pairs(tQiXiQuintupleMonster2020_Monster) do
		local nQiXiQuintupleMonster2020_MonsterStcIndex = tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][v]
		
		-- 隔天重置礼包领取限量
		QiXiQuintupleMonster2020_ClearStcInterval(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId)
		
		-- 判断礼包领取次数
		local nQiXiQuintupleMonster2020_Num = QiXiQuintupleMonster2020_GetStcValue(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId) or 0
		local nQiXiQuintupleMonster2020_LimitData = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_MonsterStcIndex]["LimitData"]
		
		-- 超出礼包领取限量
		if nQiXiQuintupleMonster2020_Num < nQiXiQuintupleMonster2020_LimitData then
			bQiXiQuintupleMonster2020_HaveAllReward = false
		end
	end

	-- 地图奖励未领完
	if not bQiXiQuintupleMonster2020_HaveAllReward then
		return
	end

	-- 隔天重置提示限量
	QiXiQuintupleMonster2020_ClearStcInterval(14,nQiXiQuintupleMonster2020_UserId)

	-- 地图奖励领完提示已出
	local nQiXiQuintupleMonster2020_AllRewardStc = QiXiQuintupleMonster2020_GetStcValue(14,nQiXiQuintupleMonster2020_UserId) or 0
	if nQiXiQuintupleMonster2020_AllRewardStc >= nQiXiQuintupleMonster2020_MapIndex then
		return
	end

	-- 打掩码、时间戳
	if not QiXiQuintupleMonster2020_SetStcValue(14,nQiXiQuintupleMonster2020_MapIndex,nQiXiQuintupleMonster2020_UserId) then
		return
	end

	-- 出提示，点击后传送到秦观面前
	local sQiXiQuintupleMonster2020_LeaveMapText = tQiXiQuintupleMonster2020_Text["Msg"]["HaveAllReward"]
	local sQiXiQuintupleMonster2020_LeaveMap = "QiXiQuintupleMonster2020_LeaveMap</N>"..nQiXiQuintupleMonster2020_UserId
	Sys_MsgBox(sQiXiQuintupleMonster2020_LeaveMapText,sQiXiQuintupleMonster2020_LeaveMap,nil,nQiXiQuintupleMonster2020_UserId)
end

-- 判断玩家所在阶段
function QiXiQuintupleMonster2020_GetLevel(nQiXiQuintupleMonster2020_UserId)
	--获取玩家鹊桥积分
	local nQiXiQuintupleMonster2020_Num = QiXiQuintupleMonster2020_GetStcValue(1,nQiXiQuintupleMonster2020_UserId) or 0

	--玩家所在阶段
	local nQiXiQuintupleMonster2020_Level = 1
	--判断玩家所在阶段
	for i = 1,5 do
		if nQiXiQuintupleMonster2020_Num >= tQiXiQuintupleMonster2020_Map[i]["Score"] then 
			nQiXiQuintupleMonster2020_Level = i
		end
	end

	return nQiXiQuintupleMonster2020_Level
end

-- 获取随机结果
function QiXiQuintupleMonster2020_GetRandom(nQiXiQuintupleMonster2020_RandonIndex)
	-- 随机事件
	local nQiXiQuintupleMonster2020_Random = 0
	local bQiXiQuintupleMonster2020_Flag,tIncidentRandom = Probabil_RandomAward(tQiXiQuintupleMonster2020_Random,nQiXiQuintupleMonster2020_RandonIndex)
	nQiXiQuintupleMonster2020_Random = tIncidentRandom[1]["tAward"][1]["Incident"]

	return nQiXiQuintupleMonster2020_Random
end

-- 简单礼包使用
function QiXiQuintupleMonster2020_UseItem(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()
	-- 判断物品在背包
	if not Item_ChkItem(nQiXiQuintupleMonster2020_ItemId) then
		return
	end

	-- 判断背包空间
	local nQiXiQuintupleMonster2020_Space = RewardTemplate_GetRewardSpace(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId])
	if not QiXiQuintupleMonster2020_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId) then
		return
	end

	-- 发奖
	RewardTemplate_UseItemAndMsg(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId])
end

-- 随机礼包使用
function QiXiQuintupleMonster2020_RandomItem(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()

	-- 过期删除
	QiXiQuintupleMonster2020_ChkTimeOut(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)

	-- 判断物品在背包
	if not Item_ChkItem(nQiXiQuintupleMonster2020_ItemId) then
		return
	end

	-- 判断背包空间
	local nQiXiQuintupleMonster2020_Space = RewardTemplate_GetRandomSpace(tQiXiQuintupleMonster2020_Reward,nQiXiQuintupleMonster2020_ItemId)
	if not QiXiQuintupleMonster2020_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId) then
		return
	end

	-- 发奖
	RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward,nQiXiQuintupleMonster2020_ItemId)
end

-- 随机礼包(过期部分奖励变更)
function QiXiQuintupleMonster2020_RandomTimeOut(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()

	-- 判断物品在背包
	if not Item_ChkItem(nQiXiQuintupleMonster2020_ItemId) then
		return
	end

	-- 过期部分奖励变更
	local nQiXiQuintupleMonster2020_Index = 1
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		nQiXiQuintupleMonster2020_Index = 2
	end

	-- 判断背包空间
	local nQiXiQuintupleMonster2020_Space = RewardTemplate_GetRandomSpace(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId],nQiXiQuintupleMonster2020_Index)

	if nQiXiQuintupleMonster2020_Index == 1 and ((nQiXiQuintupleMonster2020_ItemId == tQiXiQuintupleMonster2020_Cont["MonsterReward"][6497]) or (nQiXiQuintupleMonster2020_ItemId == tQiXiQuintupleMonster2020_Cont["MonsterReward"][6499])) then
		local nQiXiQuintupleMonster2020_SpaceMore = RewardTemplate_GetRandomSpace(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId],3)
		nQiXiQuintupleMonster2020_Space = nQiXiQuintupleMonster2020_Space + nQiXiQuintupleMonster2020_SpaceMore
	end

	if not QiXiQuintupleMonster2020_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId) then
		return
	end

	-- 发奖
	RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId],nQiXiQuintupleMonster2020_Index)
	if nQiXiQuintupleMonster2020_Index == 1 and ((nQiXiQuintupleMonster2020_ItemId == tQiXiQuintupleMonster2020_Cont["MonsterReward"][6497]) or (nQiXiQuintupleMonster2020_ItemId == tQiXiQuintupleMonster2020_Cont["MonsterReward"][6499])) then
		RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId],3)
	end
end

-- 随机礼包(含天石，过期部分奖励变更)
function QiXiQuintupleMonster2020_MonoEMoneyTimeOut(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()

	-- 判断物品在背包
	if not Item_ChkItem(nQiXiQuintupleMonster2020_ItemId) then
		return
	end

	-- 过期部分奖励变更
	local nQiXiQuintupleMonster2020_Index = 1
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		nQiXiQuintupleMonster2020_Index = 2
	end

	-- 判断赠点天石上限
	local nQiXiQuintupleMonster2020_MonoEMoney = tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId][2][1]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nQiXiQuintupleMonster2020_MonoEMoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tQiXiQuintupleMonster2020_Text["Msg"]["NoMoneyMonoSpace"],nQiXiQuintupleMonster2020_UserId)
		Sys_MsgBox(tQiXiQuintupleMonster2020_Text["Msg"]["NoMoneyMonoSpace"],nil,nil,nQiXiQuintupleMonster2020_UserId)
		return
	end

	-- 判断背包空间
	local nQiXiQuintupleMonster2020_Space = RewardTemplate_GetRandomSpace(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId],nQiXiQuintupleMonster2020_Index)
	if not QiXiQuintupleMonster2020_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId) then
		return
	end

	-- 发奖
	RewardTemplate_RandomReward(tQiXiQuintupleMonster2020_Reward[nQiXiQuintupleMonster2020_ItemId],nQiXiQuintupleMonster2020_Index)
end

-- 过期删除
function QiXiQuintupleMonster2020_ChkTimeOut(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	if not Sys_ChkFullTime(tActivityTime["QixiFestivalNPC"]["ActivityTime"]) then
		if Item_ChkItem(nQiXiQuintupleMonster2020_ItemId) and Item_DelItem(nQiXiQuintupleMonster2020_ItemId) then
			Sys_SaveActionRewardLog(string.format(tQiXiQuintupleMonster2020_Log["Del"],nQiXiQuintupleMonster2020_ItemId,1))
			User_TalkChannel2005(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["ItemOverTime"],sQiXiQuintupleMonster2020_ItemName))
			Sys_MsgBox(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["ItemOverTime"],sQiXiQuintupleMonster2020_ItemName))
		end
		return false
	else
		return true
	end
end

-- 判断背包空间
function QiXiQuintupleMonster2020_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId)
	if not User_CheckLeftSpace(nQiXiQuintupleMonster2020_Space,nQiXiQuintupleMonster2020_UserId) then
		Sys_MsgBox(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["NoSpace"],nQiXiQuintupleMonster2020_Space),nil,nil,nQiXiQuintupleMonster2020_UserId)
		User_TalkChannel2005(string.format(tQiXiQuintupleMonster2020_Text["Msg"]["NoSpace"],nQiXiQuintupleMonster2020_Space),nQiXiQuintupleMonster2020_UserId)
		return false
	else
		return true
	end
end

-- 获取掩码值
function QiXiQuintupleMonster2020_GetStcValue(nQiXiQuintupleMonster2020_Index,nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_Event = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["EventType"]
	local nQiXiQuintupleMonster2020_Type = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["DataType"]
	local nQiXiQuintupleMonster2020_Data = Get_UserStatisticValue(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,nQiXiQuintupleMonster2020_UserId) or 0

	return nQiXiQuintupleMonster2020_Data
end

-- 设置掩码值（定值）
function QiXiQuintupleMonster2020_SetStcValue(nQiXiQuintupleMonster2020_Index,nQiXiQuintupleMonster2020_Data,nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_Event = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["EventType"]
	local nQiXiQuintupleMonster2020_Type = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["DataType"]

	-- 打掩码、时间戳
	if Task_SetStatistic(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,nQiXiQuintupleMonster2020_Data,1,nQiXiQuintupleMonster2020_UserId) then 
		Task_SetStcTimestamp(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,0,nQiXiQuintupleMonster2020_UserId)
		return true
	else
		return false
	end
end

-- 设置掩码值（增加）
function QiXiQuintupleMonster2020_AddStatistic(nQiXiQuintupleMonster2020_Index,nQiXiQuintupleMonster2020_Data,nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_Event = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["EventType"]
	local nQiXiQuintupleMonster2020_Type = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["DataType"]

	-- 打掩码、时间戳
	if Task_AddStatistic(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,nQiXiQuintupleMonster2020_Data,1,nQiXiQuintupleMonster2020_UserId) then 
		Task_SetStcTimestamp(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,0,nQiXiQuintupleMonster2020_UserId)
		return true
	else
		return false
	end
end

-- 隔天重置
function QiXiQuintupleMonster2020_ClearStcInterval(nQiXiQuintupleMonster2020_Index,nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_Event = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["EventType"]
	local nQiXiQuintupleMonster2020_Type = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_Index]["DataType"]

	-- 判断隔天
	if Task_StcInterval(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,1,4,nQiXiQuintupleMonster2020_UserId) then
		Task_SetStatistic(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,0,1,nQiXiQuintupleMonster2020_UserId)
		Task_SetStcTimestamp(nQiXiQuintupleMonster2020_Event,nQiXiQuintupleMonster2020_Type,0,nQiXiQuintupleMonster2020_UserId)
		return true
	else
		return false
	end
end

-- 道具寻路
function QiXiQuintupleMonster2020_ItemPathFind(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	-- 过期删除
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()
	if not QiXiQuintupleMonster2020_ChkTimeOut(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName) then
		return
	end

	-- 判断物品在背包
	if not Item_ChkItem(nQiXiQuintupleMonster2020_ItemId) then
		return
	end

	local nQiXiQuintupleMonster2020_NpcId = tQiXiQuintupleMonster2020_Cont["MainNPCId"]
	QiXiQuintupleMonster2020_Where(nQiXiQuintupleMonster2020_NpcId,nQiXiQuintupleMonster2020_UserId)
end

-- 寻路（按NPC）
function QiXiQuintupleMonster2020_Where(nQiXiQuintupleMonster2020_NpcId,nQiXiQuintupleMonster2020_UserId)
	-- 获取玩家和NPC的地图ID
	local nQiXiQuintupleMonster2020_NpcMap = Get_NpcMapID(nQiXiQuintupleMonster2020_NpcId)
	local nQiXiQuintupleMonster2020_NowMapId = Get_UserMapId(nQiXiQuintupleMonster2020_UserId)

	-- 判断是否在一张地图
	if nQiXiQuintupleMonster2020_NowMapId == nQiXiQuintupleMonster2020_NpcMap then
		NpcPosition_PathFind(nQiXiQuintupleMonster2020_NpcId)
		return true
	else
		return false
	end
end

-- 点击Npc选项寻路打怪
function QiXiQuintupleMonster2020_NpcFindMonster()
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()
	local nQiXiQuintupleMonster2020_MapId = Get_UserMapId(nQiXiQuintupleMonster2020_UserId)

	-- 寻路打怪
	QiXiQuintupleMonster2020_FindMonster(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_UserId)
end

-- 进地图寻路打怪
function QiXiQuintupleMonster2020_FindMonster(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_UserId)
	-- 获取地图ID对应的索引
	local nQiXiQuintupleMonster2020_MapIndex = 1
	for i = 1,5 do
		if tQiXiQuintupleMonster2020_Map[i]["MapId"] == nQiXiQuintupleMonster2020_MapId then
			nQiXiQuintupleMonster2020_MapIndex = i
		end
	end

	-- 随机寻路
	local nQiXiQuintupleMonster2020_Incident = QiXiQuintupleMonster2020_GetRandom(8)
	local nQiXiQuintupleMonster2020_MonsterPosX = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_MapIndex][nQiXiQuintupleMonster2020_Incident]["PosX"]
	local nQiXiQuintupleMonster2020_MonsterPosY = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_MapIndex][nQiXiQuintupleMonster2020_Incident]["PosY"]

	-- 寻路打怪
	Sys_GotoSomeWhere(nQiXiQuintupleMonster2020_MonsterPosX,nQiXiQuintupleMonster2020_MonsterPosY,nQiXiQuintupleMonster2020_MapId,nil,nQiXiQuintupleMonster2020_UserId,nil)
end

-- 二次确认进入活动地图
function QiXiQuintupleMonster2020_GoMap()
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()

	--判断等级
	local nQiXiQuintupleMonster2020Level = tQiXiQuintupleMonster2020_Cont["Level"]
	local nQiXiQuintupleMonster2020Metempsychosis = tQiXiQuintupleMonster2020_Cont["Metempsychosis"]

	if not User_JudgeLevelAndMetempsychosis(nQiXiQuintupleMonster2020Level,nQiXiQuintupleMonster2020Metempsychosis,nUserId) then
		Sys_MsgBox(tQiXiQuintupleMonster2020_Text["Msg"]["NoLevel"])
		return
	end

	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tQiXiQuintupleMonster2020_Text["Msg"]["NoTeam"])
		return
	end

	local sQiXiQuintupleMonster2020_GoMap105Text = tQiXiQuintupleMonster2020_Text["Msg"]["GoMap105"]
	local sQiXiQuintupleMonster2020_GoMap105 = "QiXiQuintupleMonster2020_GoMap105</N>"..nQiXiQuintupleMonster2020_UserId

	Sys_MsgBox(sQiXiQuintupleMonster2020_GoMap105Text,sQiXiQuintupleMonster2020_GoMap105,nil,nQiXiQuintupleMonster2020_UserId)
end

-- 进入活动地图
function QiXiQuintupleMonster2020_GoMap105(nQiXiQuintupleMonster2020_NowUserId)
	local nQiXiQuintupleMonster2020_UserId = nQiXiQuintupleMonster2020_NowUserId or Get_UserId()
	local nQiXiQuintupleMonster2020_Index = QiXiQuintupleMonster2020_GetLevel(nQiXiQuintupleMonster2020_UserId)
	local nQiXiQuintupleMonster2020_MapId = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_Index]["MapId"]
	local sQiXiQuintupleMonster2020_MapName = tQiXiQuintupleMonster2020_Text["MapName"][nQiXiQuintupleMonster2020_MapId]
	local nQiXiQuintupleMonster2020_PosX = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_Index]["PosX"]
	local nQiXiQuintupleMonster2020_PosY = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_Index]["PosY"]

	if User_UserRandBoundTrans(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_PosX,nQiXiQuintupleMonster2020_PosY,2,2,nQiXiQuintupleMonster2020_UserId) then
		local nQiXiQuintupleMonster2020_MonsterId = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_Index]["Monster"]
		local sQiXiQuintupleMonster2020_MonsterName = tQiXiQuintupleMonster2020_Text["MonsterName"][nQiXiQuintupleMonster2020_MonsterId]
		local sQiXiQuintupleMonster2020_GoMap = string.format(tQiXiQuintupleMonster2020_Text["Msg"]["GoMap"],sQiXiQuintupleMonster2020_MapName,sQiXiQuintupleMonster2020_MonsterName)
		
		-- 进地图寻路打怪
		local sQiXiQuintupleMonster2020_FindMonster = "QiXiQuintupleMonster2020_FindMonster</N>"..nQiXiQuintupleMonster2020_MapId.."</N>"..nQiXiQuintupleMonster2020_UserId
		
		User_TalkChannel2005(sQiXiQuintupleMonster2020_GoMap,nQiXiQuintupleMonster2020_UserId)
		Sys_MsgBox(sQiXiQuintupleMonster2020_GoMap,sQiXiQuintupleMonster2020_FindMonster,nil,nQiXiQuintupleMonster2020_UserId)
		Sys_SaveActionFestivalLog(string.format(tQiXiQuintupleMonster2020_Log["GoMap"],nQiXiQuintupleMonster2020_Index))
	end
end

-- 离开活动地图
function QiXiQuintupleMonster2020_LeaveMap(nQiXiQuintupleMonster2020_NowUserId)
	local nQiXiQuintupleMonster2020_UserId = nQiXiQuintupleMonster2020_NowUserId or Get_UserId()
	local nQiXiQuintupleMonster2020_Index = 1

	if User_ChkLanguage() == 2 then
		if SpecialServer_ChkNoGiftServer() then
			nQiXiQuintupleMonster2020_Index = 2
		end
	end

	local nQiXiQuintupleMonster2020_MapId = tQiXiQuintupleMonster2020_LeaveMap[nQiXiQuintupleMonster2020_Index]["MapId"]
	local nQiXiQuintupleMonster2020_PosX = tQiXiQuintupleMonster2020_LeaveMap[nQiXiQuintupleMonster2020_Index]["PosX"]
	local nQiXiQuintupleMonster2020_PosY = tQiXiQuintupleMonster2020_LeaveMap[nQiXiQuintupleMonster2020_Index]["PosY"]

	User_UserRandBoundTrans(nQiXiQuintupleMonster2020_MapId,nQiXiQuintupleMonster2020_PosX,nQiXiQuintupleMonster2020_PosY,2,2,nQiXiQuintupleMonster2020_UserId)
end

-- 陷阱二次确认离开地图
function QiXiQuintupleMonster2020_TrapLeaveMap()
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()
	local sQiXiQuintupleMonster2020_LeaveMapText = tQiXiQuintupleMonster2020_Text["Msg"]["GoBack"]
	local sQiXiQuintupleMonster2020_LeaveMap = "QiXiQuintupleMonster2020_LeaveMap</N>"..nQiXiQuintupleMonster2020_UserId

	Sys_MsgBox(sQiXiQuintupleMonster2020_LeaveMapText,sQiXiQuintupleMonster2020_LeaveMap,nil,nQiXiQuintupleMonster2020_UserId)
end


----------------------------------NPC部分---------------------------------------------
-- 【清风星】指引员
tNpcFace[5964] = 15
tNpcGossip[26802]= tNpcGossip[26802] or DefaultNpc:new{}
tNpcGossip[26802]["DialogueText"] = tQiXiQuintupleMonster2020_Text[26802]
tNpcGossip[26802]["OptionHidden"] = 1
tNpcGossip[26802]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124}
tNpcGossip[26802]["ChkFunc1-1"] = function()
	local nQiXiQuintupleMonster2020_UserId = Get_UserId()
	local nQiXiQuintupleMonster2020_MapId = Get_UserMapId(nQiXiQuintupleMonster2020_UserId)

	-- 获取地图ID对应的索引
	local nQiXiQuintupleMonster2020_MapIndex = 1
	for i = 1,5 do
		if tQiXiQuintupleMonster2020_Map[i]["MapId"] == nQiXiQuintupleMonster2020_MapId then
			nQiXiQuintupleMonster2020_MapIndex = i
		end
	end

	-- 喜鹊妈妈&喜鹊爸爸&本图怪物&魔鸠司令&混沌魔鸠王
	local tQiXiQuintupleMonster2020_Monster = {}
	local nQiXiQuintupleMonster2020_NowMapMonster = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_MapIndex]["Monster"]
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][3])
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][4])
	table.insert(tQiXiQuintupleMonster2020_Monster,nQiXiQuintupleMonster2020_NowMapMonster)
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][1])
	table.insert(tQiXiQuintupleMonster2020_Monster,tQiXiQuintupleMonster2020_Cont["Monster"][2])

	-- 获取地图对应的NPC id
	local nQiXiQuintupleMonster2020_NpcId = tQiXiQuintupleMonster2020_Map[nQiXiQuintupleMonster2020_MapIndex]["NPC"]

	-- 判断地图奖励领取情况
	for i,v in pairs(tQiXiQuintupleMonster2020_Monster) do
		local nQiXiQuintupleMonster2020_MonsterStcIndex = tQiXiQuintupleMonster2020_Cont["MonsterStcIndex"][v]
		
		-- 隔天重置礼包领取限量
		QiXiQuintupleMonster2020_ClearStcInterval(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId)
		
		-- 判断礼包领取次数
		local nQiXiQuintupleMonster2020_Num = QiXiQuintupleMonster2020_GetStcValue(nQiXiQuintupleMonster2020_MonsterStcIndex,nQiXiQuintupleMonster2020_UserId) or 0
		local nQiXiQuintupleMonster2020_LimitData = tQiXiQuintupleMonster2020_Stc[nQiXiQuintupleMonster2020_MonsterStcIndex]["LimitData"]
		
		-- 超出礼包领取限量
		if nQiXiQuintupleMonster2020_Num >= nQiXiQuintupleMonster2020_LimitData then
			nQiXiQuintupleMonster2020_Num = nQiXiQuintupleMonster2020_LimitData
		end
		
		-- 喜鹊妈妈每日任务>=2为完成
		if (i == 1) and (nQiXiQuintupleMonster2020_Num == 1) then
			nQiXiQuintupleMonster2020_Num = 0
		end
		if (i == 1) and (nQiXiQuintupleMonster2020_Num > 1) then
			nQiXiQuintupleMonster2020_Num = 1
		end
		
		-- 显示该任务完成情况
		local nQiXiQuintupleMonster2020_NpcText = 118 + i
		tNpcGossip[nQiXiQuintupleMonster2020_NpcId]["Text" .. nQiXiQuintupleMonster2020_NpcText] = string.format(tQiXiQuintupleMonster2020_Text[nQiXiQuintupleMonster2020_NpcId]["Text" .. nQiXiQuintupleMonster2020_NpcText],nQiXiQuintupleMonster2020_Num)
	end
	return true
end
tNpcGossip[26802]["tOption1-1"] = {111,112}
tNpcGossip[26802]["OptionFunc111"] = "QiXiQuintupleMonster2020_NpcFindMonster"
tNpcGossip[26802]["OptionFunc112"] = "QiXiQuintupleMonster2020_LeaveMap"

-- 【月灵星】指引员
-- 【恋语星】指引员
-- 【花海星】指引员
-- 【北斗琉璃星】指引员
tNpcFace[5965] = 15
tNpcFace[5966] = 15
tNpcFace[5967] = 15
tNpcFace[5968] = 15
tNpcGossip[26803]= tNpcGossip[26802]
tNpcGossip[26804]= tNpcGossip[26802]
tNpcGossip[26805]= tNpcGossip[26802]
tNpcGossip[26806]= tNpcGossip[26802]


---------------------------------物品模板---------------------------------------------
-- 清风星礼包
-- 月灵星礼包
-- 恋语星礼包
-- 花海星礼包
tItem[3316515] = tItem[3316515] or {}
tItem[3316515]["Function"]=function(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	QiXiQuintupleMonster2020_RandomTimeOut(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
end
tItem[3316516] = tItem[3316515]
tItem[3316517] = tItem[3316515]
tItem[3316518] = tItem[3316515]


-- 北斗琉璃星礼包
-- 混沌魔鸠王礼包
tItem[3316519] = tItem[3316519] or {}
tItem[3316519]["Function"]=function(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	QiXiQuintupleMonster2020_MonoEMoneyTimeOut(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
end
tItem[3316521] = tItem[3316519]


-- 魔鸠司令礼包
tItem[3316520] = tItem[3316520] or {}
tItem[3316520]["Function"]=function(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
	QiXiQuintupleMonster2020_RandomItem(nQiXiQuintupleMonster2020_ItemId,sQiXiQuintupleMonster2020_ItemName)
end


---------------------------------陷阱部分---------------------------------------------
tTrap[245] = tTrap[245] or {}--245为cq_traptype的id
tTrap[245]["Function"] = function(nTrapId,nTrapType)
	QiXiQuintupleMonster2020_TrapLeaveMap()
end
tTrap[246] = tTrap[245]
tTrap[247] = tTrap[245]
tTrap[248] = tTrap[245]
tTrap[249] = tTrap[245]


---------------------------------怪物部分---------------------------------------------
-- 魔鸠小怪
local tQiXiQuintupleMonster2020_KillMonster = {}
	tQiXiQuintupleMonster2020_KillMonster["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	tQiXiQuintupleMonster2020_KillMonster["Function"]= QiXiQuintupleMonster2020_KillMonster
	tQiXiQuintupleMonster2020_KillMonster["MonsterId"] = {6496,6497,6498,6499,6500}
table.insert(tMonsterDrop_AreaLoad,tQiXiQuintupleMonster2020_KillMonster)

-- 魔鸠司令
local tQiXiQuintupleMonster2020_KillBOSS = {}
	tQiXiQuintupleMonster2020_KillBOSS["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	tQiXiQuintupleMonster2020_KillBOSS["Function"]= QiXiQuintupleMonster2020_KillBOSS
	tQiXiQuintupleMonster2020_KillBOSS["MonsterId"] = {6501}
table.insert(tMonsterDrop_AreaLoad,tQiXiQuintupleMonster2020_KillBOSS)

-- 混沌魔鸠王
local tQiXiQuintupleMonster2020_KillBigBOSS = {}
	tQiXiQuintupleMonster2020_KillBigBOSS["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	tQiXiQuintupleMonster2020_KillBigBOSS["Function"]= QiXiQuintupleMonster2020_KillBigBOSS
	tQiXiQuintupleMonster2020_KillBigBOSS["MonsterId"] = {6502}
table.insert(tMonsterDrop_AreaLoad,tQiXiQuintupleMonster2020_KillBigBOSS)


-- 击杀神龙岛跟古神灵境小怪（普通服）
local tQiXiQuintupleMonster2020_Monster = {}
	tQiXiQuintupleMonster2020_Monster["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	tQiXiQuintupleMonster2020_Monster["Function"] = QiXiQuintupleMonster2020_KillAreaMonster
	tQiXiQuintupleMonster2020_Monster["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151}
table.insert(tMonsterDrop_AreaLoad,tQiXiQuintupleMonster2020_Monster)

-- 击杀Boss之家怪物掉落（激情服）
local tQiXiQuintupleMonster2020_Monster_NoGift = {}
	tQiXiQuintupleMonster2020_Monster_NoGift["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
	tQiXiQuintupleMonster2020_Monster_NoGift["Function"] = QiXiQuintupleMonster2020_KillAreaMonster
	tQiXiQuintupleMonster2020_Monster_NoGift["MonsterId"] = {5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5747}
table.insert(tMonsterDrop_AreaLoad_NoGift,tQiXiQuintupleMonster2020_Monster_NoGift)


---------------------------------时间自检-----------------------------------------------
tGlobalData_Info[54712] = {}
tGlobalData_Info[54712]["Time"] = {}
tGlobalData_Info[54712]["Time"]["ActivityTime"] = tActivityTime["QixiFestivalNPC"]["ActivityTime"]
tGlobalData_Info[54712]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54712]["Rest"] = {}
tGlobalData_Info[54712]["Rest"]["GlobalId"] = {54712}
tGlobalData_Info[54712]["Rest"]["Pos"] = {1,3,5}


