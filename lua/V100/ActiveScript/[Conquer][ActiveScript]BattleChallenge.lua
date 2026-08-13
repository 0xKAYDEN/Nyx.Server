------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]战斗力爬塔活动
--Creator:		翁清海
--Created:		2019/02/26
------------------------------------------------------------------------------------

--命名前缀
--BattleChallenge_

--logid:12001311

--Stc掩码说明
--Stc(191,24) 保存玩家当前层数奖励是否领取（是否挑战成功）（隔天重置）
--Stc(191,25) 保存玩家当前巅峰挑战层奖励是否领取（是否挑战成功）（隔天重置）
--Stc(191,26) 保存玩家刷新次数（进入下一关重置）
--Stc(191,27) 保存玩家扫荡次数（隔天重置）
--Stc(191,28) 保存玩家挑战积分
--Stc(191,29) 保存玩家挑战积分（隔天重置）
--Stc(191,30) 1阶试炼礼包打开次数（隔天重置）
--Stc(191,31) 2阶试炼礼包打开次数（隔天重置）
--Stc(191,32) 3阶试炼礼包打开次数（隔天重置）
--Stc(191,43) 保存玩家积分奖励领取标志
--Stc(191,68) 保存玩家是否已经达到巅峰挑战
--Stc(192,37) 保存玩家刷新最强BOSS次数（进入下一关重置）

--------------------------------------------数据部分配置--------------------------------------------
--组队触发记录表
local tBattleChallenge_TeamRecord = {}
	--保存挑战层数信息
	tBattleChallenge_TeamRecord["Level"] = {}
	--保存挑战BOSS信息
	tBattleChallenge_TeamRecord["Boss"] = {}
	--判断玩家地图属性
	tBattleChallenge_TeamRecord["MapDoc"] = {}
	--判断玩家等级
	tBattleChallenge_TeamRecord["UserLevel"] = {}
	--保存玩家选择的药品类型
	tBattleChallenge_TeamRecord["Medicine"] = {}
	
--时间表
local tBattleChallenge_Time = {}
	tBattleChallenge_Time["ActivityTime"] = tActivityTime["BattleChallenge"]["ActiveTime"]
	tBattleChallenge_Time["RankTime"] = tActivityTime["BattleChallenge"]["RankTime"]
	tBattleChallenge_Time["RankAwardTime"] = tActivityTime["BattleChallenge"]["RankAwardTime"]
	tBattleChallenge_Time["DayAwardTime"] = tActivityTime["BattleChallenge"]["DayAwardTime"]
	tBattleChallenge_Time["ItemUseTime"] = tActivityTime["BattleChallenge"]["ItemUseTime"]
	
--log
local tBattleChallenge_Log = {}
	tBattleChallenge_Log["Id"] = 12001311
	tBattleChallenge_Log["DelItem"] = "0,0,%d,%d,12001311,2,0,0"
	tBattleChallenge_Log["UseStatusItem"] = "0,0,%d,%d,12001311,1[1],0,0"
	tBattleChallenge_Log["UseStatusBuyItem"] = "0,0,%d,%d,12001311,1[3],0,0"
	tBattleChallenge_Log["GetPoint"] = "0,0,0,0,12001311,1[5],0,%d"
	
--EMoneyLog
local tBattleChallenge_ELog = {}
	tBattleChallenge_ELog["Attend"] = "350	22085	0	0	1	"
	tBattleChallenge_ELog["Refresh"] = {}
	tBattleChallenge_ELog["Refresh"][100] = "350	22086	0	0	1	"
	tBattleChallenge_ELog["Refresh"][1000] = "350	22087	0	0	1	"
	tBattleChallenge_ELog["UseStatusItem"] = "350	22088	0	0	1	"
	tBattleChallenge_ELog["Drop"] = "350	22089	0	0	1	"
	tBattleChallenge_ELog["Award"] = "350	22090	0	0	1	"
	tBattleChallenge_ELog["Buy"] = "1000	268"
	
--常量表
local tBattleChallenge_Cont = {}
	--等级限制
	tBattleChallenge_Cont["Level"] = 80
	tBattleChallenge_Cont["Metempsychosis"] = 0
	--免费刷新次数
	tBattleChallenge_Cont["FreeTimes"] = 3
	--刷新所需修行值
	tBattleChallenge_Cont["Cultivation"] = 100
	--刷新最强BOSS所需修行值
	tBattleChallenge_Cont["TopCultivation"] = 1000
	--物品合成数量
	tBattleChallenge_Cont["CompoundNum"] = 10
	--礼包打开次数，达到该次数概率变换
	tBattleChallenge_Cont["BagOpenNum"] = 15
	--礼包打开次数，达到该次数不能开了
	tBattleChallenge_Cont["BagOpenNumLimit"] = 30
	--通关该层以上时出全服公告
	tBattleChallenge_Cont["BroadcastLevel"] = 10
	--玩家最高战力
	tBattleChallenge_Cont["MaxBattle"] = 440
	--开始挑战光效
	tBattleChallenge_Cont["BeginEffect"] = "new_gamebegin"
	--地图id
	tBattleChallenge_Cont["MapId"] = {}
	tBattleChallenge_Cont["MapId"]["Normal"] = 1002
	tBattleChallenge_Cont["MapId"]["NoGift"] = 1036
	--副本id
	tBattleChallenge_Cont["Instancetype"] = 244
	--副本MapDoc
	tBattleChallenge_Cont["MapDoc"] = 10410
	--对白居中显示位置
	tBattleChallenge_Cont["CenterAline"] = {}
	tBattleChallenge_Cont["CenterAline"]["Left"] = 4
	tBattleChallenge_Cont["CenterAline"]["Middle"] = 24
	tBattleChallenge_Cont["CenterAline"]["Right"] = 43
	--位置判断
	tBattleChallenge_Cont["Pos"] = {}
	tBattleChallenge_Cont["Pos"]["MinPosX"] = 310
	tBattleChallenge_Cont["Pos"]["MinPosY"] = 435
	tBattleChallenge_Cont["Pos"]["MaxPosX"] = 334
	tBattleChallenge_Cont["Pos"]["MaxPosY"] = 452
	tBattleChallenge_Cont["PosNoGift"] = {}
	tBattleChallenge_Cont["PosNoGift"]["MinPosX"] = 293
	tBattleChallenge_Cont["PosNoGift"]["MinPosY"] = 200
	tBattleChallenge_Cont["PosNoGift"]["MaxPosX"] = 316
	tBattleChallenge_Cont["PosNoGift"]["MaxPosY"] = 212
	--传送id
	tBattleChallenge_Cont["BoundTrans"] = {}
	tBattleChallenge_Cont["BoundTrans"][1] = {}
	tBattleChallenge_Cont["BoundTrans"][1]["MapId"] = 1002
	tBattleChallenge_Cont["BoundTrans"][1]["PosX"] = 319
	tBattleChallenge_Cont["BoundTrans"][1]["PosY"] = 440
	tBattleChallenge_Cont["BoundTrans"][2] = {}
	tBattleChallenge_Cont["BoundTrans"][2]["MapId"] = 1036
	tBattleChallenge_Cont["BoundTrans"][2]["PosX"] = 198
	tBattleChallenge_Cont["BoundTrans"][2]["PosY"] = 188
	--动态NPC配置
	tBattleChallenge_Cont["DynNpc"] = {}
	--宝箱
	tBattleChallenge_Cont["DynNpc"][1] = {}
	tBattleChallenge_Cont["DynNpc"][1]["Sort"] = 1
	tBattleChallenge_Cont["DynNpc"][1]["Type"] = 2
	tBattleChallenge_Cont["DynNpc"][1]["LookFace"] = 42100
	tBattleChallenge_Cont["DynNpc"][1]["Action"] = 94488120
	tBattleChallenge_Cont["DynNpc"][1]["PosX"] = 58
	tBattleChallenge_Cont["DynNpc"][1]["PosY"] = 59
	--杨戬
	tBattleChallenge_Cont["DynNpc"][2] = {}
	tBattleChallenge_Cont["DynNpc"][2]["Sort"] = 1
	tBattleChallenge_Cont["DynNpc"][2]["Type"] = 2
	tBattleChallenge_Cont["DynNpc"][2]["LookFace"] = 65040
	tBattleChallenge_Cont["DynNpc"][2]["Action"] = 94488124
	tBattleChallenge_Cont["DynNpc"][2]["PosX"] = 58
	tBattleChallenge_Cont["DynNpc"][2]["PosY"] = 59
	--炼丹童子
	tBattleChallenge_Cont["DynNpc"][3] = {}
	tBattleChallenge_Cont["DynNpc"][3]["Sort"] = 1
	tBattleChallenge_Cont["DynNpc"][3]["Type"] = 2
	tBattleChallenge_Cont["DynNpc"][3]["LookFace"] = 42150
	tBattleChallenge_Cont["DynNpc"][3]["Action"] = 94488800
	tBattleChallenge_Cont["DynNpc"][3]["PosX"] = 43
	tBattleChallenge_Cont["DynNpc"][3]["PosY"] = 70
	--层数对应宝箱奖励索引
	tBattleChallenge_Cont["BoxIndex"] = {}
	tBattleChallenge_Cont["BoxIndex"][1] = 1
	tBattleChallenge_Cont["BoxIndex"][2] = 1
	tBattleChallenge_Cont["BoxIndex"][3] = 1
	tBattleChallenge_Cont["BoxIndex"][4] = 1
	tBattleChallenge_Cont["BoxIndex"][5] = 1
	tBattleChallenge_Cont["BoxIndex"][6] = 1
	tBattleChallenge_Cont["BoxIndex"][7] = 1
	tBattleChallenge_Cont["BoxIndex"][8] = 1
	tBattleChallenge_Cont["BoxIndex"][9] = 1
	tBattleChallenge_Cont["BoxIndex"][10] = 2
	tBattleChallenge_Cont["BoxIndex"][11] = 2
	tBattleChallenge_Cont["BoxIndex"][12] = 2
	tBattleChallenge_Cont["BoxIndex"][13] = 2
	tBattleChallenge_Cont["BoxIndex"][14] = 2
	tBattleChallenge_Cont["BoxIndex"][15] = 2
	tBattleChallenge_Cont["BoxIndex"][16] = 2
	tBattleChallenge_Cont["BoxIndex"][17] = 2
	tBattleChallenge_Cont["BoxIndex"][18] = 2
	tBattleChallenge_Cont["BoxIndex"][19] = 3
	--巅峰挑战挑战时间
	tBattleChallenge_Cont["TopTime"] = {}
	tBattleChallenge_Cont["TopTime"][1] = 180
	tBattleChallenge_Cont["TopTime"][2] = 170
	tBattleChallenge_Cont["TopTime"][3] = 160
	tBattleChallenge_Cont["TopTime"][4] = 150
	tBattleChallenge_Cont["TopTime"][5] = 140
	tBattleChallenge_Cont["TopTime"][6] = 130
	tBattleChallenge_Cont["TopTime"][7] = 120
	tBattleChallenge_Cont["TopTime"][8] = 110
	tBattleChallenge_Cont["TopTime"][9] = 100
	tBattleChallenge_Cont["TopTime"][10] = 90
	tBattleChallenge_Cont["TopTime"][11] = 80
	tBattleChallenge_Cont["TopTime"][12] = 70
	tBattleChallenge_Cont["TopTime"][13] = 60
	tBattleChallenge_Cont["TopTime"][14] = 50
	tBattleChallenge_Cont["TopTime"][15] = 40
	tBattleChallenge_Cont["TopTime"][16] = 30
	tBattleChallenge_Cont["TopTime"][17] = 20
	tBattleChallenge_Cont["TopTime"][18] = 10
	--BOSS战力颜色配置表
	tBattleChallenge_Cont["BossColor"] = {}
	tBattleChallenge_Cont["BossColor"][1] = {260,300}
	tBattleChallenge_Cont["BossColor"][2] = {310,350}
	tBattleChallenge_Cont["BossColor"][3] = {360,400}
	tBattleChallenge_Cont["BossColor"][4] = {405,450}
	--玩家状态表
	tBattleChallenge_Cont["Status"] = {}
	--1阶试炼增益符
	tBattleChallenge_Cont["Status"][3320325] = {}
	tBattleChallenge_Cont["Status"][3320325]["Status"] = {138, {133,134}, {143,144}, {141,142},136}
	tBattleChallenge_Cont["Status"][3320325]["Power"] = {10000,20,15000,7500,20}
	tBattleChallenge_Cont["Status"][3320325]["Secs"] = 200
	--2阶试炼增益符
	tBattleChallenge_Cont["Status"][3320326] = {}
	tBattleChallenge_Cont["Status"][3320326]["Status"] = {138, {133,134}, {143,144}, {141,142},136}
	tBattleChallenge_Cont["Status"][3320326]["Power"] = {30000,50,50000,25000,50}
	tBattleChallenge_Cont["Status"][3320326]["Secs"] = 200
	--粉碎药水
	tBattleChallenge_Cont["Status"][3320782] = {}
	tBattleChallenge_Cont["Status"][3320782]["Status"] = 136
	tBattleChallenge_Cont["Status"][3320782]["Power"] = 200
	tBattleChallenge_Cont["Status"][3320782]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320782]["EMoney"] = 27
	--暴击药水
	tBattleChallenge_Cont["Status"][3320783] = {}
	tBattleChallenge_Cont["Status"][3320783]["Status"] = {133,134}
	tBattleChallenge_Cont["Status"][3320783]["Power"] = 150
	tBattleChallenge_Cont["Status"][3320783]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320783]["Money"] = 1500000
	--坚固药水
	tBattleChallenge_Cont["Status"][3320784] = {}
	tBattleChallenge_Cont["Status"][3320784]["Status"] = 137
	tBattleChallenge_Cont["Status"][3320784]["Power"] = 150
	tBattleChallenge_Cont["Status"][3320784]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320784]["Money"] = 1500000
	--防暴药水
	tBattleChallenge_Cont["Status"][3320785] = {}
	tBattleChallenge_Cont["Status"][3320785]["Status"] = 135
	tBattleChallenge_Cont["Status"][3320785]["Power"] = 150
	tBattleChallenge_Cont["Status"][3320785]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320785]["Money"] = 1500000
	--物伤药水
	tBattleChallenge_Cont["Status"][3320786] = {}
	tBattleChallenge_Cont["Status"][3320786]["Status"] = 143
	tBattleChallenge_Cont["Status"][3320786]["Power"] = 25000
	tBattleChallenge_Cont["Status"][3320786]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320786]["Money"] = 1500000
	--法伤药水
	tBattleChallenge_Cont["Status"][3320787] = {}
	tBattleChallenge_Cont["Status"][3320787]["Status"] = 144
	tBattleChallenge_Cont["Status"][3320787]["Power"] = 25000
	tBattleChallenge_Cont["Status"][3320787]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320787]["Money"] = 1500000
	--物抗药水
	tBattleChallenge_Cont["Status"][3320788] = {}
	tBattleChallenge_Cont["Status"][3320788]["Status"] = 141
	tBattleChallenge_Cont["Status"][3320788]["Power"] = 25000
	tBattleChallenge_Cont["Status"][3320788]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320788]["Money"] = 1500000
	--法抗药水
	tBattleChallenge_Cont["Status"][3320789] = {}
	tBattleChallenge_Cont["Status"][3320789]["Status"] = 142
	tBattleChallenge_Cont["Status"][3320789]["Power"] = 25000
	tBattleChallenge_Cont["Status"][3320789]["Secs"] = 300
	tBattleChallenge_Cont["Status"][3320789]["Money"] = 1500000
	
	--阶段奖励积分
	tBattleChallenge_Cont["PhaseScore"] = {}
	tBattleChallenge_Cont["PhaseScore"][1] = 3000
	tBattleChallenge_Cont["PhaseScore"][2] = 10000
	tBattleChallenge_Cont["PhaseScore"][3] = 20000
	tBattleChallenge_Cont["PhaseScore"][4] = 30000
	tBattleChallenge_Cont["PhaseScore"][5] = 50000
	tBattleChallenge_Cont["PhaseScore"][6] = 70000
	tBattleChallenge_Cont["PhaseScore"][7] = 100000
	tBattleChallenge_Cont["PhaseScore"][8] = 150000
	tBattleChallenge_Cont["PhaseScore"][9] = 200000
	
--掩码表
local tBattleChallenge_Stc = {}
	--保存玩家当前层数奖励是否领取（是否挑战成功）（隔天重置）
	tBattleChallenge_Stc[1] = {}
	tBattleChallenge_Stc[1]["Event"] = 191
	tBattleChallenge_Stc[1]["Type"] = 24
	tBattleChallenge_Stc[1]["TimeType"] = 4
	tBattleChallenge_Stc[1]["Delay"] = 1
	--保存玩家当前巅峰挑战层奖励是否领取（是否挑战成功）（隔天重置）
	tBattleChallenge_Stc[2] = {}
	tBattleChallenge_Stc[2]["Event"] = 191
	tBattleChallenge_Stc[2]["Type"] = 25
	tBattleChallenge_Stc[2]["TimeType"] = 4
	tBattleChallenge_Stc[2]["Delay"] = 1
	--保存玩家刷新次数
	tBattleChallenge_Stc[3] = {}
	tBattleChallenge_Stc[3]["Event"] = 191
	tBattleChallenge_Stc[3]["Type"] = 26
	--保存玩家扫荡次数（隔天重置）
	tBattleChallenge_Stc[4] = {}
	tBattleChallenge_Stc[4]["Event"] = 191
	tBattleChallenge_Stc[4]["Type"] = 27
	tBattleChallenge_Stc[4]["TimeType"] = 4
	tBattleChallenge_Stc[4]["Delay"] = 1
	--保存玩家积分奖励领取标志
	tBattleChallenge_Stc[5] = {}
	tBattleChallenge_Stc[5]["Event"] = 191
	tBattleChallenge_Stc[5]["Type"] = 43
	--保存玩家是否已经达到巅峰挑战
	tBattleChallenge_Stc[6] = {}
	tBattleChallenge_Stc[6]["Event"] = 191
	tBattleChallenge_Stc[6]["Type"] = 68
	--保存玩家刷新最强BOSS次数
	tBattleChallenge_Stc[7] = {}
	tBattleChallenge_Stc[7]["Event"] = 192
	tBattleChallenge_Stc[7]["Type"] = 37
	--保存玩家挑战积分
	tBattleChallenge_Stc[23821] = {}
	tBattleChallenge_Stc[23821]["Event"] = 191
	tBattleChallenge_Stc[23821]["Type"] = 28
	--保存玩家挑战积分（隔天重置）
	tBattleChallenge_Stc[23822] = {}
	tBattleChallenge_Stc[23822]["Event"] = 191
	tBattleChallenge_Stc[23822]["Type"] = 29
	tBattleChallenge_Stc[23822]["TimeType"] = 4
	tBattleChallenge_Stc[23822]["Delay"] = 1
	--1阶试炼礼包打开次数（隔天重置）
	tBattleChallenge_Stc[3320327] = {}
	tBattleChallenge_Stc[3320327]["Event"] = 191
	tBattleChallenge_Stc[3320327]["Type"] = 30
	tBattleChallenge_Stc[3320327]["TimeType"] = 4
	tBattleChallenge_Stc[3320327]["Delay"] = 1
	--2阶试炼礼包打开次数（隔天重置）
	tBattleChallenge_Stc[3320328] = {}
	tBattleChallenge_Stc[3320328]["Event"] = 191
	tBattleChallenge_Stc[3320328]["Type"] = 31
	tBattleChallenge_Stc[3320328]["TimeType"] = 4
	tBattleChallenge_Stc[3320328]["Delay"] = 1
	--3阶试炼礼包打开次数（隔天重置）
	tBattleChallenge_Stc[3320329] = {}
	tBattleChallenge_Stc[3320329]["Event"] = 191
	tBattleChallenge_Stc[3320329]["Type"] = 32
	tBattleChallenge_Stc[3320329]["TimeType"] = 4
	tBattleChallenge_Stc[3320329]["Delay"] = 1
	
--二进制对应值
local tBattleChallenge_ParseNumber = {}
	tBattleChallenge_ParseNumber[1] = 1
	tBattleChallenge_ParseNumber[2] = 2
	tBattleChallenge_ParseNumber[3] = 4
	tBattleChallenge_ParseNumber[4] = 8
	tBattleChallenge_ParseNumber[5] = 16
	tBattleChallenge_ParseNumber[6] = 32
	tBattleChallenge_ParseNumber[7] = 64
	tBattleChallenge_ParseNumber[8] = 128
	tBattleChallenge_ParseNumber[9] = 256
	tBattleChallenge_ParseNumber[10] = 512
	tBattleChallenge_ParseNumber[11] = 1024
	tBattleChallenge_ParseNumber[12] = 2048
	tBattleChallenge_ParseNumber[13] = 4096
	tBattleChallenge_ParseNumber[14] = 8192
	tBattleChallenge_ParseNumber[15] = 16384
	tBattleChallenge_ParseNumber[16] = 32768
	tBattleChallenge_ParseNumber[17] = 65536
	tBattleChallenge_ParseNumber[18] = 131072
	tBattleChallenge_ParseNumber[19] = 262144
	tBattleChallenge_ParseNumber[20] = 524288
	tBattleChallenge_ParseNumber[21] = 1048576
	tBattleChallenge_ParseNumber[22] = 2097152
	tBattleChallenge_ParseNumber[23] = 4194304
	tBattleChallenge_ParseNumber[24] = 8388608
	tBattleChallenge_ParseNumber[25] = 16777216
	tBattleChallenge_ParseNumber[26] = 33554432
	tBattleChallenge_ParseNumber[27] = 67108864
	
--BOSSid战力对照表
local tBattleChallenge_BossBattle = {}
	tBattleChallenge_BossBattle[260] = {5061,5086,5111,5136,5161,5186,5211,5236}
	tBattleChallenge_BossBattle[270] = {5062,5087,5112,5137,5162,5187,5212,5237}
	tBattleChallenge_BossBattle[280] = {5063,5088,5113,5138,5163,5188,5213,5238}
	tBattleChallenge_BossBattle[290] = {5064,5089,5114,5139,5164,5189,5214,5239}
	tBattleChallenge_BossBattle[300] = {5065,5090,5115,5140,5165,5190,5215,5240}
	tBattleChallenge_BossBattle[310] = { 5066,5091,5116,5141,5166,5191,5216,5241}
	tBattleChallenge_BossBattle[320] = {5067,5092,5117,5142,5167,5192,5217,5242}
	tBattleChallenge_BossBattle[330] = {5068,5093,5118,5143,5168,5193,5218,5243}
	tBattleChallenge_BossBattle[340] = {5069,5094,5119,5144,5169,5194,5219,5244}
	tBattleChallenge_BossBattle[350] = {5070,5095,5120,5145,5170,5195,5220,5245}
	tBattleChallenge_BossBattle[360] = {5071,5096,5121,5146,5171,5196,5221,5246}
	tBattleChallenge_BossBattle[370] = {5072,5097,5122,5147,5172,5197,5222,5247}
	tBattleChallenge_BossBattle[380] = {5073,5098,5123,5148,5173,5198,5223,5248}
	tBattleChallenge_BossBattle[390] = {5074,5099,5124,5149,5174,5199,5224,5249}
	tBattleChallenge_BossBattle[400] = {5075,5100,5125,5150,5175,5200,5225,5250}
	tBattleChallenge_BossBattle[405] = {5076,5101,5126,5151,5176,5201,5226,5251}
	tBattleChallenge_BossBattle[410] = { 5077,5102,5127,5152,5177,5202,5227,5252}
	tBattleChallenge_BossBattle[415] = { 5078,5103,5128,5153,5178,5203,5228,5253}
	tBattleChallenge_BossBattle[420] = {5079,5104,5129,5154,5179,5204,5229,5254}
	tBattleChallenge_BossBattle[425] = {5080,5105,5130,5155,5180,5205,5230,5255}
	tBattleChallenge_BossBattle[430] = {5081,5106,5131,5156,5181,5206,5231,5256}
	tBattleChallenge_BossBattle[435] = {5082,5107,5132,5157,5182,5207,5232,5257}
	tBattleChallenge_BossBattle[440] = {5083,5108,5133,5158,5183,5208,5233,5258}
	tBattleChallenge_BossBattle[445] = {5084,5109,5134,5159,5184,5209,5234,5259}
	tBattleChallenge_BossBattle[450] = {5085,5110,5135,5160,5185,5210,5235,5260}
	
--BOSS刷新表
local tBattleChallenge_BossInfo = {}
	--刷怪位置
	tBattleChallenge_BossInfo["Pos"] = {}
	tBattleChallenge_BossInfo["Pos"][1] = {}
	tBattleChallenge_BossInfo["Pos"][1]["PosX"] = 47
	tBattleChallenge_BossInfo["Pos"][1]["PosY"] = 59
	tBattleChallenge_BossInfo["Pos"][2] = {}
	tBattleChallenge_BossInfo["Pos"][2]["PosX"] = 58
	tBattleChallenge_BossInfo["Pos"][2]["PosY"] = 48
	tBattleChallenge_BossInfo["Pos"][3] = {}
	tBattleChallenge_BossInfo["Pos"][3]["PosX"] = 69
	tBattleChallenge_BossInfo["Pos"][3]["PosY"] = 59
	--GenId
	tBattleChallenge_BossInfo["GenId"] = {26794,26795,26796}
	--普通服
	tBattleChallenge_BossInfo["Normal"] = {}
	--1层 随机1~3	随机	260~270战
	tBattleChallenge_BossInfo["Normal"][1] = {}
	tBattleChallenge_BossInfo["Normal"][1]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][1]["Battle"] = {260,270}
	--2层 随机1~3	随机	260~280战
	tBattleChallenge_BossInfo["Normal"][2] = {}
	tBattleChallenge_BossInfo["Normal"][2]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][2]["Battle"] = {260,270,280}
	--3层 随机1~3	随机	260~290 战
	tBattleChallenge_BossInfo["Normal"][3] = {}
	tBattleChallenge_BossInfo["Normal"][3]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][3]["Battle"] = {260,270,280,290}
	--4层 随机1~3	随机	270~300战
	tBattleChallenge_BossInfo["Normal"][4] = {}
	tBattleChallenge_BossInfo["Normal"][4]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][4]["Battle"] = {270,280,290,300}
	--5层 随机1~3	随机	280~310战
	tBattleChallenge_BossInfo["Normal"][5] = {}
	tBattleChallenge_BossInfo["Normal"][5]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][5]["Battle"] = {280,290,300,310}
	--6层 随机1~3	随机	290~320战
	tBattleChallenge_BossInfo["Normal"][6] = {}
	tBattleChallenge_BossInfo["Normal"][6]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][6]["Battle"] = {290,300,310,320}
	--7层 随机1~3	随机	300~330战
	tBattleChallenge_BossInfo["Normal"][7] = {}
	tBattleChallenge_BossInfo["Normal"][7]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][7]["Battle"] = {300,310,320,330}
	--8层 随机1~3	随机	310~340战
	tBattleChallenge_BossInfo["Normal"][8] = {}
	tBattleChallenge_BossInfo["Normal"][8]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][8]["Battle"] = {310,320,330,340}
	--9层 随机1~3	随机	320~350战
	tBattleChallenge_BossInfo["Normal"][9] = {}
	tBattleChallenge_BossInfo["Normal"][9]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][9]["Battle"] = {320,330,340,350}
	--10层 随机1~3	随机	330~360战
	tBattleChallenge_BossInfo["Normal"][10] = {}
	tBattleChallenge_BossInfo["Normal"][10]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][10]["Battle"] = {330,340,350,360}
	--11层 随机1~3	随机	340~370战
	tBattleChallenge_BossInfo["Normal"][11] = {}
	tBattleChallenge_BossInfo["Normal"][11]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][11]["Battle"] = {340,350,360,370}
	--12层 随机1~3	随机	350~380战
	tBattleChallenge_BossInfo["Normal"][12] = {}
	tBattleChallenge_BossInfo["Normal"][12]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][12]["Battle"] = {350,360,370,380}
	--13层 随机1~3	随机	360~390 战
	tBattleChallenge_BossInfo["Normal"][13] = {}
	tBattleChallenge_BossInfo["Normal"][13]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][13]["Battle"] = {360,370,380,390}
	--14层 随机1~3	随机	370~400战
	tBattleChallenge_BossInfo["Normal"][14] = {}
	tBattleChallenge_BossInfo["Normal"][14]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][14]["Battle"] = {370,380,390,400}
	--15层 随机1~3	随机	380~410战
	tBattleChallenge_BossInfo["Normal"][15] = {}
	tBattleChallenge_BossInfo["Normal"][15]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][15]["Battle"] = {380,390,400,405,410}
	--16层 随机1~3	随机	390~420 战
	tBattleChallenge_BossInfo["Normal"][16] = {}
	tBattleChallenge_BossInfo["Normal"][16]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][16]["Battle"] = {390,400,405,410,415,420}
	--17层 随机1~3	随机	400~430战
	tBattleChallenge_BossInfo["Normal"][17] = {}
	tBattleChallenge_BossInfo["Normal"][17]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][17]["Battle"] = {400,405,410,415,420,425,430}
	--18层 随机1~3	随机	410~440战
	tBattleChallenge_BossInfo["Normal"][18] = {}
	tBattleChallenge_BossInfo["Normal"][18]["Num"] = {1,3}
	tBattleChallenge_BossInfo["Normal"][18]["Battle"] = {410,415,420,425,430,435,440}
	--巅峰层 固定3人	随机	410~440战
	tBattleChallenge_BossInfo["Normal"][19] = {}
	tBattleChallenge_BossInfo["Normal"][19]["Num"] = {3,3}
	tBattleChallenge_BossInfo["Normal"][19]["Battle"] = {410,415,420,425,430,435,440}
	--激情服
	tBattleChallenge_BossInfo["NoGift"] = {}
	--1层 随机1~3	随机	260~270战
	tBattleChallenge_BossInfo["NoGift"][1] = {}
	tBattleChallenge_BossInfo["NoGift"][1]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][1]["Battle"] = {260,270}
	--2层 随机1~3	随机	260~280战
	tBattleChallenge_BossInfo["NoGift"][2] = {}
	tBattleChallenge_BossInfo["NoGift"][2]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][2]["Battle"] = {260,270,280}
	--3层 随机1~3	随机	260~290 战
	tBattleChallenge_BossInfo["NoGift"][3] = {}
	tBattleChallenge_BossInfo["NoGift"][3]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][3]["Battle"] = {260,270,280,290}
	--4层 随机1~3	随机	270~300战
	tBattleChallenge_BossInfo["NoGift"][4] = {}
	tBattleChallenge_BossInfo["NoGift"][4]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][4]["Battle"] = {270,280,290,300}
	--5层 随机1~3	随机	280~310战
	tBattleChallenge_BossInfo["NoGift"][5] = {}
	tBattleChallenge_BossInfo["NoGift"][5]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][5]["Battle"] = {280,290,300,310}
	--6层 随机1~3	随机	290~320战
	tBattleChallenge_BossInfo["NoGift"][6] = {}
	tBattleChallenge_BossInfo["NoGift"][6]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][6]["Battle"] = {290,300,310,320}
	--7层 随机1~3	随机	300~330战
	tBattleChallenge_BossInfo["NoGift"][7] = {}
	tBattleChallenge_BossInfo["NoGift"][7]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][7]["Battle"] = {300,310,320,330}
	--8层 随机1~3	随机	310~340战
	tBattleChallenge_BossInfo["NoGift"][8] = {}
	tBattleChallenge_BossInfo["NoGift"][8]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][8]["Battle"] = {310,320,330,340}
	--9层 随机1~3	随机	320~350战
	tBattleChallenge_BossInfo["NoGift"][9] = {}
	tBattleChallenge_BossInfo["NoGift"][9]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][9]["Battle"] = {320,330,340,350}
	--10层 随机1~3	随机	330~360战
	tBattleChallenge_BossInfo["NoGift"][10] = {}
	tBattleChallenge_BossInfo["NoGift"][10]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][10]["Battle"] = {330,340,350,360}
	--11层 随机1~3	随机	340~370战
	tBattleChallenge_BossInfo["NoGift"][11] = {}
	tBattleChallenge_BossInfo["NoGift"][11]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][11]["Battle"] = {340,350,360,370}
	--12层 随机1~3	随机	350~380战
	tBattleChallenge_BossInfo["NoGift"][12] = {}
	tBattleChallenge_BossInfo["NoGift"][12]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][12]["Battle"] = {350,360,370,380}
	--13层 随机1~3	随机	360~390 战
	tBattleChallenge_BossInfo["NoGift"][13] = {}
	tBattleChallenge_BossInfo["NoGift"][13]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][13]["Battle"] = {360,370,380,390}
	--14层 随机1~3	随机	370~400战
	tBattleChallenge_BossInfo["NoGift"][14] = {}
	tBattleChallenge_BossInfo["NoGift"][14]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][14]["Battle"] = {370,380,390,400}
	--15层 随机1~3	随机	380~410战
	tBattleChallenge_BossInfo["NoGift"][15] = {}
	tBattleChallenge_BossInfo["NoGift"][15]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][15]["Battle"] = {380,390,400,405,410}
	--16层 随机1~3	随机	390~420 战
	tBattleChallenge_BossInfo["NoGift"][16] = {}
	tBattleChallenge_BossInfo["NoGift"][16]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][16]["Battle"] = {390,400,405,410,415,420}
	--17层 随机1~3	随机	400~430战
	tBattleChallenge_BossInfo["NoGift"][17] = {}
	tBattleChallenge_BossInfo["NoGift"][17]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][17]["Battle"] = {400,405,410,415,420,425,430}
	--18层 随机1~3	随机	410~440战
	tBattleChallenge_BossInfo["NoGift"][18] = {}
	tBattleChallenge_BossInfo["NoGift"][18]["Num"] = {1,3}
	tBattleChallenge_BossInfo["NoGift"][18]["Battle"] = {410,415,420,425,430,435,440}
	--巅峰层 固定3人	随机	410~440战
	tBattleChallenge_BossInfo["NoGift"][19] = {}
	tBattleChallenge_BossInfo["NoGift"][19]["Num"] = {3,3}
	tBattleChallenge_BossInfo["NoGift"][19]["Battle"] = {410,415,420,425,430,435,440}
	
--奖励表配置
local tBattleChallenge_Reword = {}
	--击杀小怪
	tBattleChallenge_Reword["Drop"] = {}
	tBattleChallenge_Reword["Drop"][1] = {}
	tBattleChallenge_Reword["Drop"][1]["ItemChanceSum"] = 10000
	--掉1阶增益符
	tBattleChallenge_Reword["Drop"][1][1] = {}
	tBattleChallenge_Reword["Drop"][1][1]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["Drop"][1][1]["ItemChance"] = 200
	tBattleChallenge_Reword["Drop"][1][1]["RewardItem"] = {}
	tBattleChallenge_Reword["Drop"][1][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword["Drop"][1][1]["RewardItem"][1]["Id"] = 3320325
	tBattleChallenge_Reword["Drop"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword["Drop"][1][1]["LogId"] = 12001311
	tBattleChallenge_Reword["Drop"][1][1]["LogStep"] = "1[2]"
	tBattleChallenge_Reword["Drop"][1][1]["EmoneyLog"] = tBattleChallenge_ELog["Drop"]
	--不掉
	tBattleChallenge_Reword["Drop"][1][2] = {}
	tBattleChallenge_Reword["Drop"][1][2]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["Drop"][1][2]["ItemChance"] = 9800
	--扫荡奖励
	tBattleChallenge_Reword["MopUp"] = {}
	tBattleChallenge_Reword["MopUp"]["Level"] = 9
	-- tBattleChallenge_Reword["MopUp"]["Point"] = 990
	tBattleChallenge_Reword["MopUp"]["EventType"] = tBattleChallenge_Stc[4]["Event"]
	tBattleChallenge_Reword["MopUp"]["DataType"] = tBattleChallenge_Stc[4]["Type"]
	tBattleChallenge_Reword["MopUp"]["RewardDelay"] = tBattleChallenge_Stc[4]["Delay"]
	tBattleChallenge_Reword["MopUp"]["RewardTimeType"] = tBattleChallenge_Stc[4]["TimeType"]
	tBattleChallenge_Reword["MopUp"]["RewardItem"] = {}
	tBattleChallenge_Reword["MopUp"]["RewardItem"][1] = {}
	tBattleChallenge_Reword["MopUp"]["RewardItem"][1]["Id"] = 3320327
	tBattleChallenge_Reword["MopUp"]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword["MopUp"]["LogId"] =12001311
	tBattleChallenge_Reword["MopUp"]["Talk"] = tBattleChallenge_Text["Channel2005"]["ChallengeMopUp"]
	--阶段奖励
	tBattleChallenge_Reword["Phase"] = {}
	tBattleChallenge_Reword["Phase"][1] = {}
	tBattleChallenge_Reword["Phase"][1]["LogId"] = 12001311
	tBattleChallenge_Reword["Phase"][1]["RewardItem"] = {}
	tBattleChallenge_Reword["Phase"][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword["Phase"][1]["RewardItem"][1]["Id"] = 4030901
	tBattleChallenge_Reword["Phase"][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 杀破狼(+1)（赠）
	tBattleChallenge_Reword["Phase"][2] = {}
	tBattleChallenge_Reword["Phase"][2]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][2]["RewardRepairValue"] = {}
	tBattleChallenge_Reword["Phase"][2]["RewardRepairValue"]["Value"] = 4000 -- 修为值
	tBattleChallenge_Reword["Phase"][3] = {}
	tBattleChallenge_Reword["Phase"][3]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][3]["RewardStrengthValue"] = {}
	tBattleChallenge_Reword["Phase"][3]["RewardStrengthValue"]["Value"] = 5000 -- 气力值
	tBattleChallenge_Reword["Phase"][4] = {}
	tBattleChallenge_Reword["Phase"][4]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][4]["RewardCultivation"] = {}
	tBattleChallenge_Reword["Phase"][4]["RewardCultivation"]["Value"] = 8000 -- 修行值
	tBattleChallenge_Reword["Phase"][5] = {}
	tBattleChallenge_Reword["Phase"][5]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][5]["RewardRepairValue"] = {}
	tBattleChallenge_Reword["Phase"][5]["RewardRepairValue"]["Value"] = 10000 -- 修为值
	tBattleChallenge_Reword["Phase"][6] = {}
	tBattleChallenge_Reword["Phase"][6]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][6]["RewardStrengthValue"] = {}
	tBattleChallenge_Reword["Phase"][6]["RewardStrengthValue"]["Value"] = 12000 -- 气力值
	tBattleChallenge_Reword["Phase"][7] = {}
	tBattleChallenge_Reword["Phase"][7]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][7]["RewardCultivation"] = {}
	tBattleChallenge_Reword["Phase"][7]["RewardCultivation"]["Value"] = 20000 -- 修行值
	tBattleChallenge_Reword["Phase"][8] = {}
	tBattleChallenge_Reword["Phase"][8]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][8]["RewardRepairValue"] = {}
	tBattleChallenge_Reword["Phase"][8]["RewardRepairValue"]["Value"] = 25000 -- 修为值
	tBattleChallenge_Reword["Phase"][9] = {}
	tBattleChallenge_Reword["Phase"][9]["LogId"] =12001311
	tBattleChallenge_Reword["Phase"][9]["RewardStrengthValue"] = {}
	tBattleChallenge_Reword["Phase"][9]["RewardStrengthValue"]["Value"] = 30000 -- 气力值
	
	--击杀奖励
	tBattleChallenge_Reword["KillBoss"] = {}
	--1~9层
	tBattleChallenge_Reword["KillBoss"][1] = {}
	tBattleChallenge_Reword["KillBoss"][1]["RewardItem"] = {}
	tBattleChallenge_Reword["KillBoss"][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword["KillBoss"][1]["RewardItem"][1]["Id"] = 3320327
	tBattleChallenge_Reword["KillBoss"][1]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword["KillBoss"][1]["LogId"] =12001311
	tBattleChallenge_Reword["KillBoss"][1]["Talk"] = tBattleChallenge_Text["Channel2005"]["ChallengeSucc"]
	--10~18层
	tBattleChallenge_Reword["KillBoss"][2] = {}
	tBattleChallenge_Reword["KillBoss"][2]["RewardItem"] = {}
	tBattleChallenge_Reword["KillBoss"][2]["RewardItem"][1] = {}
	tBattleChallenge_Reword["KillBoss"][2]["RewardItem"][1]["Id"] = 3320328
	tBattleChallenge_Reword["KillBoss"][2]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword["KillBoss"][2]["LogId"] =12001311
	tBattleChallenge_Reword["KillBoss"][2]["Talk"] = tBattleChallenge_Text["Channel2005"]["ChallengeSucc"]
	--巅峰层
	tBattleChallenge_Reword["KillBoss"][3] = {}
	tBattleChallenge_Reword["KillBoss"][3]["RewardItem"] = {}
	tBattleChallenge_Reword["KillBoss"][3]["RewardItem"][1] = {}
	tBattleChallenge_Reword["KillBoss"][3]["RewardItem"][1]["Id"] = 3320329
	tBattleChallenge_Reword["KillBoss"][3]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword["KillBoss"][3]["LogId"] =12001311
	tBattleChallenge_Reword["KillBoss"][3]["Talk"] = tBattleChallenge_Text["Channel2005"]["ChallengeSucc"]
	--宝箱奖励
	tBattleChallenge_Reword["GetBox"] = {}
	--1~9层
	tBattleChallenge_Reword["GetBox"][1] = {}
	tBattleChallenge_Reword["GetBox"][1]["ItemChanceSum"] = 10000
	--人参果*2	3009100	30.00%
	tBattleChallenge_Reword["GetBox"][1][1] = {}
	tBattleChallenge_Reword["GetBox"][1][1]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][1][1]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][1][1]["RewardItem"] = {}
	tBattleChallenge_Reword["GetBox"][1][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword["GetBox"][1][1]["RewardItem"][1]["Id"] = 3009100
	tBattleChallenge_Reword["GetBox"][1][1]["RewardItem"][1]["Attr"] = "0 2"
	tBattleChallenge_Reword["GetBox"][1][1]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][1][1]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--修行值	300	10.00%
	tBattleChallenge_Reword["GetBox"][1][2] = {}
	tBattleChallenge_Reword["GetBox"][1][2]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][1][2]["ItemChance"] = 1000
	tBattleChallenge_Reword["GetBox"][1][2]["RewardCultivation"] = {}
	tBattleChallenge_Reword["GetBox"][1][2]["RewardCultivation"]["Value"] = 300
	tBattleChallenge_Reword["GetBox"][1][2]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][1][2]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--气力值	100	30.00%
	tBattleChallenge_Reword["GetBox"][1][3] = {}
	tBattleChallenge_Reword["GetBox"][1][3]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][1][3]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][1][3]["RewardStrengthValue"] = {}
	tBattleChallenge_Reword["GetBox"][1][3]["RewardStrengthValue"]["Value"] = 100
	tBattleChallenge_Reword["GetBox"][1][3]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][1][3]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--修为值	100	30.00%
	tBattleChallenge_Reword["GetBox"][1][4] = {}
	tBattleChallenge_Reword["GetBox"][1][4]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][1][4]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][1][4]["RewardRepairValue"] = {}
	tBattleChallenge_Reword["GetBox"][1][4]["RewardRepairValue"]["Value"] = 100
	tBattleChallenge_Reword["GetBox"][1][4]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][1][4]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--10~18层
	tBattleChallenge_Reword["GetBox"][2] = {}
	tBattleChallenge_Reword["GetBox"][2]["ItemChanceSum"] = 10000
	--人参果*3	3009100	30.00%
	tBattleChallenge_Reword["GetBox"][2][1] = {}
	tBattleChallenge_Reword["GetBox"][2][1]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][2][1]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][2][1]["RewardItem"] = {}
	tBattleChallenge_Reword["GetBox"][2][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword["GetBox"][2][1]["RewardItem"][1]["Id"] = 3009100
	tBattleChallenge_Reword["GetBox"][2][1]["RewardItem"][1]["Attr"] = "0 3"
	tBattleChallenge_Reword["GetBox"][2][1]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][2][1]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--修行值	500	10.00%
	tBattleChallenge_Reword["GetBox"][2][2] = {}
	tBattleChallenge_Reword["GetBox"][2][2]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][2][2]["ItemChance"] = 1000
	tBattleChallenge_Reword["GetBox"][2][2]["RewardCultivation"] = {}
	tBattleChallenge_Reword["GetBox"][2][2]["RewardCultivation"]["Value"] = 500
	tBattleChallenge_Reword["GetBox"][2][2]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][2][2]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--气力值	300	30.00%
	tBattleChallenge_Reword["GetBox"][2][3] = {}
	tBattleChallenge_Reword["GetBox"][2][3]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][2][3]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][2][3]["RewardStrengthValue"] = {}
	tBattleChallenge_Reword["GetBox"][2][3]["RewardStrengthValue"]["Value"] = 300
	tBattleChallenge_Reword["GetBox"][2][3]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][2][3]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--修为值	300	30.00%
	tBattleChallenge_Reword["GetBox"][2][4] = {}
	tBattleChallenge_Reword["GetBox"][2][4]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][2][4]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][2][4]["RewardRepairValue"] = {}
	tBattleChallenge_Reword["GetBox"][2][4]["RewardRepairValue"]["Value"] = 300
	tBattleChallenge_Reword["GetBox"][2][4]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][2][4]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--巅峰层
	tBattleChallenge_Reword["GetBox"][3] = {}
	tBattleChallenge_Reword["GetBox"][3]["ItemChanceSum"] = 10000
	--人参果*4	3009100	30.00%
	tBattleChallenge_Reword["GetBox"][3][1] = {}
	tBattleChallenge_Reword["GetBox"][3][1]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][3][1]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][3][1]["RewardItem"] = {}
	tBattleChallenge_Reword["GetBox"][3][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword["GetBox"][3][1]["RewardItem"][1]["Id"] = 3009100
	tBattleChallenge_Reword["GetBox"][3][1]["RewardItem"][1]["Attr"] = "0 4"
	tBattleChallenge_Reword["GetBox"][3][1]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][3][1]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--修行值	800	10.00%
	tBattleChallenge_Reword["GetBox"][3][2] = {}
	tBattleChallenge_Reword["GetBox"][3][2]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][3][2]["ItemChance"] = 1000
	tBattleChallenge_Reword["GetBox"][3][2]["RewardCultivation"] = {}
	tBattleChallenge_Reword["GetBox"][3][2]["RewardCultivation"]["Value"] = 800
	tBattleChallenge_Reword["GetBox"][3][2]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][3][2]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--气力值	500	30.00%
	tBattleChallenge_Reword["GetBox"][3][3] = {}
	tBattleChallenge_Reword["GetBox"][3][3]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][3][3]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][3][3]["RewardStrengthValue"] = {}
	tBattleChallenge_Reword["GetBox"][3][3]["RewardStrengthValue"]["Value"] = 500
	tBattleChallenge_Reword["GetBox"][3][3]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][3][3]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--修为值	500	30.00%
	tBattleChallenge_Reword["GetBox"][3][4] = {}
	tBattleChallenge_Reword["GetBox"][3][4]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword["GetBox"][3][4]["ItemChance"] = 3000
	tBattleChallenge_Reword["GetBox"][3][4]["RewardRepairValue"] = {}
	tBattleChallenge_Reword["GetBox"][3][4]["RewardRepairValue"]["Value"] = 500
	tBattleChallenge_Reword["GetBox"][3][4]["LogId"] =12001311
	tBattleChallenge_Reword["GetBox"][3][4]["EmoneyLog"] =tBattleChallenge_ELog["Award"]
	--1阶试炼增益符合成
	tBattleChallenge_Reword[3320325] = {}
	tBattleChallenge_Reword[3320325]["DeleteItem"] = {}
	tBattleChallenge_Reword[3320325]["DeleteItem"][1] = {}
	tBattleChallenge_Reword[3320325]["DeleteItem"][1]["Id"] = 3320325
	tBattleChallenge_Reword[3320325]["DeleteItem"][1]["ItemNum"] = 10
	tBattleChallenge_Reword[3320325]["RewardItem"] = {}
	tBattleChallenge_Reword[3320325]["RewardItem"][1] = {}
	tBattleChallenge_Reword[3320325]["RewardItem"][1]["Id"] = 3320326
	tBattleChallenge_Reword[3320325]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword[3320325]["LogId"] =12001311
	--1阶试炼礼包
	tBattleChallenge_Reword[3320327] = {}
	tBattleChallenge_Reword[3320327]["Point"] = 100
	tBattleChallenge_Reword[3320327][1] = {}
	tBattleChallenge_Reword[3320327][1]["ItemChanceSum"] = 10000
	--人参果*1	3009100	45.00%
	tBattleChallenge_Reword[3320327][1][1] = {}
	tBattleChallenge_Reword[3320327][1][1]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320327][1][1]["ItemChance"] = 4500
	tBattleChallenge_Reword[3320327][1][1]["RewardItem"] = {}
	tBattleChallenge_Reword[3320327][1][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword[3320327][1][1]["RewardItem"][1]["Id"] = 3009100
	tBattleChallenge_Reword[3320327][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword[3320327][1][1]["LogId"] =12001311
	--修行值	300	10.00%
	tBattleChallenge_Reword[3320327][1][2] = {}
	tBattleChallenge_Reword[3320327][1][2]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320327][1][2]["ItemChance"] = 1000
	tBattleChallenge_Reword[3320327][1][2]["RewardCultivation"] = {}
	tBattleChallenge_Reword[3320327][1][2]["RewardCultivation"]["Value"] = 300
	tBattleChallenge_Reword[3320327][1][2]["LogId"] =12001311
	--修为值	100	45.00%
	tBattleChallenge_Reword[3320327][1][3] = {}
	tBattleChallenge_Reword[3320327][1][3]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320327][1][3]["ItemChance"] = 4500
	tBattleChallenge_Reword[3320327][1][3]["RewardRepairValue"] = {}
	tBattleChallenge_Reword[3320327][1][3]["RewardRepairValue"]["Value"] = 100
	tBattleChallenge_Reword[3320327][1][3]["LogId"] =12001311
	--2阶试炼礼包
	tBattleChallenge_Reword[3320328] = {}
	tBattleChallenge_Reword[3320328]["Point"] = 200
	tBattleChallenge_Reword[3320328][1] = {}
	tBattleChallenge_Reword[3320328][1]["ItemChanceSum"] = 10000
	--人参果*2	3009100	45.00%
	tBattleChallenge_Reword[3320328][1][1] = {}
	tBattleChallenge_Reword[3320328][1][1]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320328][1][1]["ItemChance"] = 4500
	tBattleChallenge_Reword[3320328][1][1]["RewardItem"] = {}
	tBattleChallenge_Reword[3320328][1][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword[3320328][1][1]["RewardItem"][1]["Id"] = 3009100
	tBattleChallenge_Reword[3320328][1][1]["RewardItem"][1]["Attr"] = "0 2"
	tBattleChallenge_Reword[3320328][1][1]["LogId"] =12001311
	--修行值	500	10.00%
	tBattleChallenge_Reword[3320328][1][2] = {}
	tBattleChallenge_Reword[3320328][1][2]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320328][1][2]["ItemChance"] = 1000
	tBattleChallenge_Reword[3320328][1][2]["RewardCultivation"] = {}
	tBattleChallenge_Reword[3320328][1][2]["RewardCultivation"]["Value"] = 500
	tBattleChallenge_Reword[3320328][1][2]["LogId"] =12001311
	--修为值	300	45.00%
	tBattleChallenge_Reword[3320328][1][3] = {}
	tBattleChallenge_Reword[3320328][1][3]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320328][1][3]["ItemChance"] = 4500
	tBattleChallenge_Reword[3320328][1][3]["RewardRepairValue"] = {}
	tBattleChallenge_Reword[3320328][1][3]["RewardRepairValue"]["Value"] = 300
	tBattleChallenge_Reword[3320328][1][3]["LogId"] =12001311
	--3阶试炼礼包
	tBattleChallenge_Reword[3320329] = {}
	tBattleChallenge_Reword[3320329]["Point"] = 300
	tBattleChallenge_Reword[3320329][1] = {}
	tBattleChallenge_Reword[3320329][1]["ItemChanceSum"] = 10000
	--人参果*3	3009100	45.00%
	tBattleChallenge_Reword[3320329][1][1] = {}
	tBattleChallenge_Reword[3320329][1][1]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320329][1][1]["ItemChance"] = 4500
	tBattleChallenge_Reword[3320329][1][1]["RewardItem"] = {}
	tBattleChallenge_Reword[3320329][1][1]["RewardItem"][1] = {}
	tBattleChallenge_Reword[3320329][1][1]["RewardItem"][1]["Id"] = 3009100
	tBattleChallenge_Reword[3320329][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tBattleChallenge_Reword[3320329][1][1]["LogId"] =12001311
	--修行值	800	10.00%
	tBattleChallenge_Reword[3320329][1][2] = {}
	tBattleChallenge_Reword[3320329][1][2]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320329][1][2]["ItemChance"] = 1000
	tBattleChallenge_Reword[3320329][1][2]["RewardCultivation"] = {}
	tBattleChallenge_Reword[3320329][1][2]["RewardCultivation"]["Value"] = 800
	tBattleChallenge_Reword[3320329][1][2]["LogId"] =12001311
	--修为值	500	45.00%
	tBattleChallenge_Reword[3320329][1][3] = {}
	tBattleChallenge_Reword[3320329][1][3]["RandomItemChanceType"] = 2
	tBattleChallenge_Reword[3320329][1][3]["ItemChance"] = 4500
	tBattleChallenge_Reword[3320329][1][3]["RewardRepairValue"] = {}
	tBattleChallenge_Reword[3320329][1][3]["RewardRepairValue"]["Value"] = 500
	tBattleChallenge_Reword[3320329][1][3]["LogId"] =12001311
	--购买的商品，id可变
	tBattleChallenge_Reword["Buy"] = {}
	tBattleChallenge_Reword["Buy"]["RewardItem"] = {}
	tBattleChallenge_Reword["Buy"]["RewardItem"][1] = {}
	tBattleChallenge_Reword["Buy"]["RewardItem"][1]["Id"] = 3320782
	tBattleChallenge_Reword["Buy"]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword["Buy"]["LogId"] =12001311
	
--------------------------------------------逻辑部分配置--------------------------------------------
--获取玩家掩码
function BattleChallenge_GetStcValue(nIndex, nNowUserId)
	if tBattleChallenge_Stc[nIndex] == nil then
		return 0
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tBattleChallenge_Stc[nIndex]["Event"]
	local nType = tBattleChallenge_Stc[nIndex]["Type"]
	local nTimeType = tBattleChallenge_Stc[nIndex]["TimeType"]
	local nDelay = tBattleChallenge_Stc[nIndex]["Delay"]
	
	--是否清零
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	return Get_UserStatisticValue(nEvent,nType,nUserId)
end

--设置玩家掩码
function BattleChallenge_SetStcValue(nIndex, sMode, nData, nNowUserId)
	if tBattleChallenge_Stc[nIndex] == nil then
		return false
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tBattleChallenge_Stc[nIndex]["Event"]
	local nType = tBattleChallenge_Stc[nIndex]["Type"]
	local nTimeType = tBattleChallenge_Stc[nIndex]["TimeType"]
	local nDelay = tBattleChallenge_Stc[nIndex]["Delay"]
	
	--是否清零
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	--设置掩码
	if sMode == "Set" then
		return Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	--增加掩码
	elseif sMode == "Add" then
		return Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	else
		return false
	end
end

--二进制掩码设置
function BattleChallenge_SetParseNumber(nIndex, nData, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tBattleChallenge_ParseNumber[nData]
	
	local nEvent = tBattleChallenge_Stc[nIndex]["Event"]
	local nType = tBattleChallenge_Stc[nIndex]["Type"]
	local nDelay = tBattleChallenge_Stc[nIndex]["Delay"]
	local nTimeType = tBattleChallenge_Stc[nIndex]["TimeType"]
	
	--置零，打时间戳
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	return Task_AddStatistic(nEvent,nType,nParse,1,nUserId)
end

--二进制掩码判断
function BattleChallenge_IsGetParseNumber(nIndex, nData, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tBattleChallenge_ParseNumber[nData]
	
	local nEvent = tBattleChallenge_Stc[nIndex]["Event"]
	local nType = tBattleChallenge_Stc[nIndex]["Type"]
	local nDelay = tBattleChallenge_Stc[nIndex]["Delay"]
	local nTimeType = tBattleChallenge_Stc[nIndex]["TimeType"]
	
	--置零，打时间戳
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	local nNowData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if Sys_ParseNumbersContain(nParse,nNowData) then
		return true
	else
		return false
	end
end

--等级判断
function BattleChallenge_ChkLevel(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nLevel = tBattleChallenge_Cont["Level"]
	local nMetempsychosis = tBattleChallenge_Cont["Metempsychosis"]
	
	--等级判断
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return true
	else
		return false
	end
end

--玩家位置判断（是否在副本）
function BattleChallenge_ChkInstance(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	
	if nMapDoc == tBattleChallenge_Cont["MapDoc"] then
		return true
	else
		return false
	end
end

--判断队友是否在双龙城
function BattleChallenge_ChkTeamMap(nLeaderId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nCityId = tBattleChallenge_Cont["MapId"]["Normal"]
	local sIndex = "Pos"
	
	if SpecialServer_ChkNoGiftServer() then
		nCityId = tBattleChallenge_Cont["MapId"]["NoGift"]
		sIndex = "PosNoGift"
	end
	
	--队伍中有人不在双龙城
	if nMapId ~= nCityId then
		tBattleChallenge_TeamRecord["MapDoc"][nLeaderId] = false
	end
	
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	local nMinPosX = tBattleChallenge_Cont[sIndex]["MinPosX"]
	local nMinPosY = tBattleChallenge_Cont[sIndex]["MinPosY"]
	local nMaxPosX = tBattleChallenge_Cont[sIndex]["MaxPosX"]
	local nMaxPosY = tBattleChallenge_Cont[sIndex]["MaxPosY"]
	
	--队伍中有人不在指定位置
	if nPosX < nMinPosX or nPosX > nMaxPosX or nPosY < nMinPosY or nPosY > nMaxPosY then
		tBattleChallenge_TeamRecord["MapDoc"][nLeaderId] = false
	end
end

--判断队友是否等级足够
function BattleChallenge_ChkTeamLevel(nLeaderId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--队伍中有人等级不足
	if not BattleChallenge_ChkLevel(nUserId) then
		tBattleChallenge_TeamRecord["UserLevel"][nLeaderId] = false
	end
end

--获取玩家当前挑战进度
function BattleChallenge_GetUserLevel(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nLevel = 0
	
	for i = 1, #tBattleChallenge_BossInfo["Normal"] - 1 do
		if not BattleChallenge_IsGetParseNumber(1, i, nUserId) then
			nLevel = i
			break
		end
	end
	
	local nTop = 0
	
	if nLevel == 0 then
		nLevel = #tBattleChallenge_BossInfo["Normal"]
		--获取巅峰挑战进度
		for i = 1, #tBattleChallenge_Cont["TopTime"] do
			if not BattleChallenge_IsGetParseNumber(2, i, nUserId) then
				nTop = i
				break
			end
		end
		
		if nTop == 0 then
			nTop = #tBattleChallenge_Cont["TopTime"] + 1
		end
	end
	
	return nLevel, nTop
end

--姜子牙对白判断
function BattleChallenge_TalkChk(nNpcId)
	local nBeginMonth,nBeginDay,nEndMonth,nEndDay = BattleChallenge_GetActivityTime()
	
	tNpcGossip[nNpcId]["Text117"] = string.format(tBattleChallenge_Text[nNpcId]["Text117"], nBeginMonth,nBeginDay,nEndMonth,nEndDay)
	
	tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
	
	--活动时间前
	if CommonFunc_GetBeforeActivityTime(tBattleChallenge_Time["ActivityTime"]) then
		tNpcGossip[nNpcId]["tOption1-1"] = {111}
		return true
	end
	
	--活动时间后
	if CommonFunc_GetAfterActivityTime(tBattleChallenge_Time["ActivityTime"]) then
		return false
	end
	
	local nUserId = Get_UserId()
	
	--等级不足
	if not BattleChallenge_ChkLevel(nUserId) then
		tNpcGossip[nNpcId]["tOption1-1"] = {112}
		return true
	end
	
	tNpcGossip[nNpcId]["Text1-1"] = {111,1110,114,115,116,1111,117,119}
	
	--挑战积分
	local nTotalScore = BattleChallenge_GetStcValue(23821, nUserId)
	local nScore = BattleChallenge_GetStcValue(23822, nUserId)
	
	tNpcGossip[nNpcId]["Text1111"] = string.format(tBattleChallenge_Text[nNpcId]["Text1111"], nTotalScore, nScore)
	
	--判断是否已经到达巅峰
	local nLevel, nTop = BattleChallenge_GetUserLevel(nUserId)
	
	tNpcGossip[nNpcId]["tOption1-1"] = {}
	
	--当前层战力表
	local tBattleInfo = tBattleChallenge_BossInfo["Normal"][nLevel]["Battle"]
	
	if SpecialServer_ChkNoGiftServer() then
		tBattleInfo = tBattleChallenge_BossInfo["NoGift"][nLevel]["Battle"]
	end
	
	--推荐战力
	local nRecommendBattle = tBattleInfo[#tBattleInfo]
	
	--玩家最高战力
	if nRecommendBattle > tBattleChallenge_Cont["MaxBattle"] then
		nRecommendBattle = tBattleChallenge_Cont["MaxBattle"]
	end
	
	if nTop ~= 0 then
		tNpcGossip[nNpcId]["Option114"] = string.format(tBattleChallenge_Text[nNpcId]["Option114"], nTop, nRecommendBattle)
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 114)
	else
		tNpcGossip[nNpcId]["Option113"] = string.format(tBattleChallenge_Text[nNpcId]["Option113"], nLevel, nRecommendBattle)
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 113)
	end
	
	local nEvent = tBattleChallenge_Stc[6]["Event"]
	local nType = tBattleChallenge_Stc[6]["Type"]
	
	--是否出扫荡选项（需要通关而且需要在隔天才能扫荡）
	if BattleChallenge_GetStcValue(6, nUserId) > 0 and Task_StcInterval(nEvent,nType,1,4,nUserId) then
		--没扫荡过才出，且未达到10层
		if BattleChallenge_GetStcValue(4, nUserId) <= 0 and nLevel <= tBattleChallenge_Reword["MopUp"]["Level"] then
			table.insert(tNpcGossip[nNpcId]["tOption1-1"], 115)
		end
	end
	
	table.insert(tNpcGossip[nNpcId]["tOption1-1"], 116)
	table.insert(tNpcGossip[nNpcId]["tOption1-1"], 117)
	
	return true
end

--排行榜对白判断
function BattleChallenge_TotalRankChk(nNpcId)
	if CommonFunc_GetBeforeActivityTime(tBattleChallenge_Time["RankTime"]) then
		return false
	end
	
	local nBeginMonth,nBeginDay,nEndMonth,nEndDay = BattleChallenge_GetActivityTime()
	
	--时间显示
	if nNpcId == 23821 then
		tNpcGossip[nNpcId]["Text1215"] = string.format(tBattleChallenge_Text[nNpcId]["Text1215"],nEndMonth,nEndDay)
	end
	
	--获取排行榜数据
	local tRank = RankingFunc_GetNowData(nNpcId)
	
	local nUserId = Get_UserId()
	
	--判断是否在排行榜内
	local nUserRank = 0
	
	--居中显示位置
	local nLeft = tBattleChallenge_Cont["CenterAline"]["Left"]
	local nMiddle = tBattleChallenge_Cont["CenterAline"]["Middle"]
	local nRight = tBattleChallenge_Cont["CenterAline"]["Right"]
	
	for i = 1, 10 do
		local nScore = 0
		local sUserName = tBattleChallenge_Text["Null"]
		local nRankUserId = 0
		
		if tRank[i] ~= nil then
			nScore = tRank[i]["Score"]
			sUserName = tRank[i]["UserName"]
			nRankUserId = tRank[i]["UserId"]
		end
		
		if nUserId == nRankUserId then
			nUserRank = i
		end
		
		--名字处理
		sUserName = string.gsub(sUserName, "<", " ")
		sUserName = string.gsub(sUserName, ">", " ")
		
		local sTotal = Sys_CenterAline(string.format(tBattleChallenge_Text["Rank"], i),nLeft,tostring(nScore),nMiddle,sUserName,nRight)
		
		tNpcGossip[nNpcId]["Text12"..(i + 3)] = string.format(tBattleChallenge_Text[nNpcId]["Text12"..(i + 3)],sTotal)
	end
	
	if nUserRank == 0 then
		tNpcGossip[nNpcId]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215,1217}
	else
		tNpcGossip[nNpcId]["Text1216"] = string.format(tBattleChallenge_Text[nNpcId]["Text1216"],nUserRank)
		tNpcGossip[nNpcId]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215,1216}
	end
	
	if Sys_ChkFullTime(tBattleChallenge_Time["RankTime"]) then
		tNpcGossip[nNpcId]["tOption1-2"] = {122}
	else
		tNpcGossip[nNpcId]["tOption1-2"] = {121}
	end
	
	return true
end

--点击选项进入副本
function BattleChallenge_OptionIntoInstance()
	--活动时间判断
	if not Sys_ChkFullTime(tBattleChallenge_Time["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	
	local nCityId = tBattleChallenge_Cont["MapId"]["Normal"]
	local sText = tBattleChallenge_Text["MsgBox"]["NotInTwinCity"]
	
	-- 判断激情服
	if SpecialServer_ChkNoGiftServer() then
		nCityId = tBattleChallenge_Cont["MapId"]["NoGift"]
		sText = tBattleChallenge_Text["MsgBox"]["NotInMarket"]
	end
	
	-- 不在双龙城
	local nMapId = Get_UserMapId(nUserId)
	if nMapId ~= nCityId then
		Sys_MsgBox(sText)
		return
	end
	
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	
	-- 组队不是队长不能进
	if nTeamNum >= 2 and not User_IsTeamLeader(nUserId) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["NotIntoChallenge"])
		return
	end
	
	--队员等级不足能传送
	if nTeamNum >= 2 then
		tBattleChallenge_TeamRecord["UserLevel"][nUserId] = true
		
		local bFlag = User_TeamExeFuncByLeader(3, string.format("BattleChallenge_ChkTeamLevel</N>%d", nUserId), nUserId)
		
		if not bFlag or not tBattleChallenge_TeamRecord["UserLevel"][nUserId] then
			Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["NotIntoChallengeTeamLevel"])
			return
		end
	end
	
	--队员不在双龙城不能传送
	tBattleChallenge_TeamRecord["MapDoc"][nUserId] = true
	
	local bFlag = true
	
	if nTeamNum >= 2 then
		bFlag = User_TeamExeFuncByLeader(3, string.format("BattleChallenge_ChkTeamMap</N>%d", nUserId), nUserId)
	else
		BattleChallenge_ChkTeamMap(nUserId)
	end
	
	if not bFlag or not tBattleChallenge_TeamRecord["MapDoc"][nUserId] then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["NotInTwinCityChallenge"])
		return
	end
	
	--获取玩家上一次挑战层数
	local nLastLevel = 0
	
	if tBattleChallenge_TeamRecord["Level"][nUserId] ~= nil then
		nLastLevel = tBattleChallenge_TeamRecord["Level"][nUserId][1]
		
		if tBattleChallenge_TeamRecord["Level"][nUserId][2] ~= 0 then
			nLastLevel = tBattleChallenge_TeamRecord["Level"][nUserId][2]
		end
	end
	
	--获取玩家当前挑战层数
	local nIndex,nTop = BattleChallenge_GetUserLevel(nUserId)
	
	local nNpcId = Get_NpcId()
	
	--已经达到挑战时间极限，不让进
	if nTop >= #tBattleChallenge_Cont["TopTime"] + 1 then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end
	
	--当前层战力表
	local tBattleInfo = tBattleChallenge_BossInfo["Normal"][nIndex]["Battle"]
	
	if SpecialServer_ChkNoGiftServer() then
		tBattleInfo = tBattleChallenge_BossInfo["NoGift"][nIndex]["Battle"]
	end
	
	--推荐战力
	local nRecommendBattle = tBattleInfo[#tBattleInfo]
	
	--玩家最高战力
	if nRecommendBattle > tBattleChallenge_Cont["MaxBattle"] then
		nRecommendBattle = tBattleChallenge_Cont["MaxBattle"]
	end
	
	--团队触发进入副本
	if nTeamNum == 0 or nTeamNum == 1 then
		if not BattleChallenge_IntoInstance(nIndex, nTop, nRecommendBattle, nUserId) then
			return
		end
	elseif User_IsTeamLeader(nUserId) then
		if not User_TeamExeFuncByLeader(3, string.format("BattleChallenge_IntoInstance</N>%d</N>%d</N>%d",nIndex,nTop,nRecommendBattle), nUserId) then
			return
		end
	end
	
	--是否巅峰挑战
	if nTop ~= 0 then
		nIndex = nTop
	end
	
	--刷新一组BOSS组合
	if tBattleChallenge_TeamRecord["Boss"][nUserId] == nil then
		BattleChallenge_RefreshGroupBoss(0, nUserId)
	else
		--这次进入的层数和上次不一样，则强制刷新
		if nLastLevel ~= nIndex then
			BattleChallenge_RefreshGroupBoss(0, nUserId)
		else
			--将刷新后的BOSS信息保存在队友身上
			if nTeamNum >= 2 then
				if User_IsTeamLeader(nUserId) then
					User_TeamExeFuncByLeader(3, string.format("BattleChallenge_SaveBossInfo</N>%d",nUserId), nUserId)
				end
			end
		end
	end
	
	--刷新杨戬
	BattleChallenge_RefresBox(nil,2,nUserId)
	--刷新炼丹童子
	BattleChallenge_RefresBox(nil,3,nUserId)
end

--进入副本
function BattleChallenge_IntoInstance(nIndex, nTop, nRecommendBattle, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nInstanceType = tBattleChallenge_Cont["Instancetype"]
	
	--进入副本
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		--记录当前层数
		tBattleChallenge_TeamRecord["Level"][nUserId] = {}
		tBattleChallenge_TeamRecord["Level"][nUserId][1] = nIndex
		tBattleChallenge_TeamRecord["Level"][nUserId][2] = nTop
		
		local sText = string.format(tBattleChallenge_Text["MsgBox"]["IntoChallenge"], nIndex)
		
		--是否巅峰挑战
		if nTop ~= 0 then
			sText = string.format(tBattleChallenge_Text["MsgBox"]["IntoChallengeTop"], tBattleChallenge_Cont["TopTime"][nTop])
		end
		
		--获取玩家战斗力
		local nNowBattle = Get_UserBattleLevel(nUserId)
		
		--战斗力不足给额外提示
		if nNowBattle < nRecommendBattle then
			sText = sText..tBattleChallenge_Text["BattleTips"]
		end
		
		--提示
		Sys_MsgBox(sText,nil,nil,nUserId)
		
		--打log
		Sys_SaveEmoneyBuy(tBattleChallenge_ELog["Attend"],nUserId)
		
		return true
	else
		return false
	end
end

--扫荡奖励层数判断
function BattleChallenge_MopUpChk(nLevel, nUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if nLevel > tBattleChallenge_Reword["MopUp"]["Level"] then
		return 0, 0
	end
	
	--计算可以领几层的奖励
	local nAwardNum = 0
	local nPoint = 0
	
	local sIndex = "Normal"
	
	if SpecialServer_ChkNoGiftServer() then
		sIndex = "NoGift"
	end
	
	for i = nLevel, tBattleChallenge_Reword["MopUp"]["Level"] do
		if not BattleChallenge_IsGetParseNumber(1, i, nUserId) then
			local tBattle = tBattleChallenge_BossInfo[sIndex][i]["Battle"]
			--当前层总战力
			local nMaxBattle = tBattle[#tBattle] * 3
			
			nPoint = nPoint + nMaxBattle
			nAwardNum = nAwardNum + 1
		end
	end
	
	return nAwardNum, nPoint
end

--扫荡奖励
function BattleChallenge_MopUp()
	local nUserId = nNowUserId or Get_UserId()
	
	--领取失败（已领过）
	if BattleChallenge_GetStcValue(4, nUserId) > 0 then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["MopUpFail"],nil,nil,nUserId)
		return
	end
	
	--领取失败（背包满）
	local nSpace = RewardTemplate_GetRewardSpace(tBattleChallenge_Reword["MopUp"],nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["GetAwardBackFull"],nil,nil,nUserId)
		return
	end
	
	local nLevel = BattleChallenge_GetUserLevel(nUserId)
	
	--已经达到10层，不让领
	if nLevel > tBattleChallenge_Reword["MopUp"]["Level"] then
		return
	end
	
	--获取可以获得的礼包个数和积分
	local nAwardNum, nPoint = BattleChallenge_MopUpChk(nLevel, nUserId)
	
	for i = 23821, 23822 do
		--领取成功
		BattleChallenge_SetStcValue(i, "Add", nPoint, nUserId)
		
		local nNowData = BattleChallenge_GetStcValue(i, nUserId)
		
		--先获取排行榜数据
		local tRank = RankingFunc_GetNowData(i)
		
		--更新排行榜
		RankingFunc_SetInfo(i,nNowData,nUserId)
		
		--给全服公告
		BattleChallenge_RankBroadcast(tRank, i, nUserId)
	end
	
	--积分领取log
	Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["GetPoint"], nPoint), nUserId)
	
	--置1-9层掩码
	for i = 1, tBattleChallenge_Reword["MopUp"]["Level"] do
		if not BattleChallenge_IsGetParseNumber(1, i, nUserId) then
			BattleChallenge_SetParseNumber(1, i, nUserId)
		end
	end
	
	local tAward = CommonFunc_Copy(tBattleChallenge_Reword["MopUp"])
	
	tAward["RewardItem"][1]["Attr"] = "0 "..nAwardNum
	tAward["Talk"] = string.format(tBattleChallenge_Text["Channel2005"]["ChallengeMopUp"], nPoint, nAwardNum)
	
	RewardTemplate_UseItemAndMsg(tAward,nUserId)
end

--查看阶段性奖励
function BattleChallenge_ViewAward()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	--试炼积分
	local nScore = BattleChallenge_GetStcValue(23821, nUserId)
	
	--领奖阶段
	local nIndex = 0
	
	for i = 1, #tBattleChallenge_Cont["PhaseScore"] do
		if nScore >= tBattleChallenge_Cont["PhaseScore"][i] then
			if BattleChallenge_IsGetParseNumber(5, i, nUserId) then
				tNpcGossip[nNpcId]["Text23"..(i + 3)] = string.format(tBattleChallenge_Text[nNpcId]["Text23"..(i + 3)],tBattleChallenge_Text["AlreadyGet"])
			else
				tNpcGossip[nNpcId]["Text23"..(i + 3)] = string.format(tBattleChallenge_Text[nNpcId]["Text23"..(i + 3)],tBattleChallenge_Text["CanGet"])
				nIndex = i
			end
		else
			tNpcGossip[nNpcId]["Text23"..(i + 3)] = string.format(tBattleChallenge_Text[nNpcId]["Text23"..(i + 3)],"")
		end
	end
	
	tNpcGossip[nNpcId]["Text2314"] = string.format(tBattleChallenge_Text[nNpcId]["Text2314"], nScore)
	
	if nIndex == 0 then
		tNpcGossip[nNpcId]["tOption2-3"] = {232}
	else
		tNpcGossip[nNpcId]["tOption2-3"] = {231}
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-3")
end

--领取阶段性奖励
function BattleChallenge_GetPhaseAward()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	--试炼积分
	local nScore = BattleChallenge_GetStcValue(23821, nUserId)
	
	--领奖阶段
	local nIndex = 0
	
	for i = 1, #tBattleChallenge_Cont["PhaseScore"] do
		if nScore >= tBattleChallenge_Cont["PhaseScore"][i] then
			if not BattleChallenge_IsGetParseNumber(5, i, nUserId) then
				nIndex = i
				break
			end
		end
	end
	
	--没有可以领取的奖励
	if nIndex == 0 then
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end
	
	--奖励是否修为值
	if tBattleChallenge_Reword["Phase"][nIndex]["RewardRepairValue"] ~= nil then
		--修为达到上限
		if not RewardTemplate_RepairValueLimit(tBattleChallenge_Reword["Phase"][nIndex]["RewardRepairValue"]) then
			Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["GetAwardRepairFull"],nil,nil,nUserId)
			return
		end
	end
	
	--奖励是否物品，需要判断背包空间
	if tBattleChallenge_Reword["Phase"][nIndex]["RewardItem"] ~= nil then
		local nSpace = RewardTemplate_GetRewardSpace(tBattleChallenge_Reword["Phase"][nIndex],nUserId)
		
		if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
			Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["GetAwardBackFull"],nil,nil,nUserId)
			return
		end
	end
	
	--设置领奖状态
	if BattleChallenge_SetParseNumber(5, nIndex, nUserId) then
		RewardTemplate_UseItemAndMsg(tBattleChallenge_Reword["Phase"][nIndex],nUserId)
	end
	
	--弹回主对白
	BattleChallenge_ViewAward()
end

--判断当前地图是否存在BOSS
function BattleChallenge_ChkBossExist(nMapId)
	for k,v in pairs(tBattleChallenge_BossBattle) do
		for i,j in pairs(v) do
			if Get_SysTempData(1,nMapId,j) > 0 then
				return true
			end
		end
	end
	
	return false
end

--判断当前地图是否有宝箱
function BattleChallenge_ChkBoxExist(nUserId)
	if Get_NpcCount(nUserId) > 0 then
		return true
	else
		return false
	end
end

--全队保存队长信息
function BattleChallenge_SaveBossInfo(nLeaderId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if tBattleChallenge_TeamRecord["Boss"][nLeaderId] ~= nil then
		tBattleChallenge_TeamRecord["Boss"][nUserId] = CommonFunc_Copy(tBattleChallenge_TeamRecord["Boss"][nLeaderId])
	end
end

--刷新BOSS组合
function BattleChallenge_RefreshGroupBoss(nMode, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	--获取当前信息
	local nIndex,nTop = BattleChallenge_GetUserLevel(nUserId)
	
	--保存BOSS信息
	local tBossInfo = CommonFunc_Copy(tBattleChallenge_BossInfo["Normal"])
	
	if SpecialServer_ChkNoGiftServer() then
		tBossInfo = CommonFunc_Copy(tBattleChallenge_BossInfo["NoGift"])
	end
	
	--刷新BOSS数量
	local tNum = tBossInfo[nIndex]["Num"]
	local nNum = math.random(tNum[1],tNum[2])
	
	tBattleChallenge_TeamRecord["Boss"][nUserId] = {}
	
	--模式为刷新最强BOSS且不是巅峰挑战，则数量固定为3个
	if nMode == 1 and nTop == 0 then
		nNum = #tBattleChallenge_BossInfo["Pos"]
	end
	
	for i = 1, nNum do
		--获取当前BOSS随机战斗力
		local nBattleRandom = math.random(1,#tBossInfo[nIndex]["Battle"])
		
		--模式为刷新最强BOSS且不是巅峰挑战，则BOSS战斗力固定为最大
		if nMode == 1 and nTop == 0 then
			nBattleRandom = #tBossInfo[nIndex]["Battle"]
		end
		
		local nBattle = tBossInfo[nIndex]["Battle"][nBattleRandom]
		
		--获取当前BOSSid，根据战斗力随机
		local nMonsterIdRandom = math.random(1,#tBattleChallenge_BossBattle[nBattle])
		local nMonsterId = tBattleChallenge_BossBattle[nBattle][nMonsterIdRandom]
		
		--保存BOSS信息
		tBattleChallenge_TeamRecord["Boss"][nUserId][i] = {}
		tBattleChallenge_TeamRecord["Boss"][nUserId][i]["Battle"] = nBattle
		tBattleChallenge_TeamRecord["Boss"][nUserId][i]["MonsterId"] = nMonsterId
	end
	
	--将刷新后的BOSS信息保存在队友身上
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	
	if nTeamNum >= 2 then
		if User_IsTeamLeader(nUserId) then
			User_TeamExeFuncByLeader(3, string.format("BattleChallenge_SaveBossInfo</N>%d",nUserId), nUserId)
		end
	end
	
end

--刷新BOSS
function BattleChallenge_RefresBoss(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	--判断当前地图是否有BOSS，有就不刷新
	if BattleChallenge_ChkBossExist(nMapId) then
		return
	end
	
	--是否有BOSS组合信息
	if tBattleChallenge_TeamRecord["Boss"][nUserId] == nil then
		return
	end
	
	--开始刷新BOSS
	for i = 1, #tBattleChallenge_TeamRecord["Boss"][nUserId] do
		local nPosX = tBattleChallenge_BossInfo["Pos"][i]["PosX"]
		local nPosY = tBattleChallenge_BossInfo["Pos"][i]["PosY"]
		local nGenId = tBattleChallenge_BossInfo["GenId"][i]
		local nMonsterId = tBattleChallenge_TeamRecord["Boss"][nUserId][i]["MonsterId"]
		
		if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
			
		end
	end
	
	
end

--BOSS逻辑
function BattleChallenge_KillBoss(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	-- 怪物死亡
	Monster_Death(nMonsterId,nMapId)
	
	--判断当前地图是否有BOSS
	if BattleChallenge_ChkBossExist(nMapId) then
		return
	end
	
	if tBattleChallenge_TeamRecord["Level"][nUserId] == nil then
		return
	end
	
	--获取当前挑战层数
	local nLevel = tBattleChallenge_TeamRecord["Level"][nUserId][1]
	--获取当前巅峰挑战层数
	local nTop = tBattleChallenge_TeamRecord["Level"][nUserId][2]
	
	--不是巅峰挑战
	if nTop == nil or nTop == 0 then
		nTop = 1
	end
	
	-----------------------------以下是怪物全部死亡的时候触发的逻辑-----------------------------
	
	--获取当前宝箱索引
	local nBoxIndex = tBattleChallenge_Cont["BoxIndex"][nLevel]
	
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tBattleChallenge_Reword["KillBoss"][nBoxIndex],nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		local sItemName = Get_ItemtypeName(tBattleChallenge_Reword["KillBoss"][nBoxIndex]["RewardItem"][1]["Id"])
		
		--给背包满的提示
		User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["KillNoSpace"], sItemName),nil,nil,nUserId)
	end
	
	--给击杀奖励
	RewardTemplate_Reward(tBattleChallenge_Reword["KillBoss"][nBoxIndex],nUserId)
	
	--刷新宝箱
	BattleChallenge_RefresBox(nMapId,1,nUserId)
	
	--全队出提示
	Map_UserExeFunc(nMapId, -1, "BattleChallenge_TalkKillBoss")
end

--击杀BOSS的提示
function BattleChallenge_TalkKillBoss(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tBattleChallenge_Cont["DynNpc"][1]["PosX"]
	local nPosY = tBattleChallenge_Cont["DynNpc"][1]["PosY"]
	local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>0</N>%d", nPosX,nPosY,nMapId,nUserId)
	
	Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["ChallengeSucc"],sFunc,nil,nUserId)
end

--刷新宝箱
function BattleChallenge_RefresBox(nNowMapId,nIndex,nUserId)
	--判断当前地图是否有宝箱
	-- if BattleChallenge_ChkBoxExist(nUserId) then
		-- return
	-- end
	
	local nMapId = nNowMapId or Get_UserMapId(nUserId)
	local sName = tBattleChallenge_Text["BoxName"][nIndex]
	local nSort = tBattleChallenge_Cont["DynNpc"][nIndex]["Sort"]
	local nType = tBattleChallenge_Cont["DynNpc"][nIndex]["Type"]
	local nLookFace = tBattleChallenge_Cont["DynNpc"][nIndex]["LookFace"]
	local nAction = tBattleChallenge_Cont["DynNpc"][nIndex]["Action"]
	local nPosX = tBattleChallenge_Cont["DynNpc"][nIndex]["PosX"]
	local nPosY = tBattleChallenge_Cont["DynNpc"][nIndex]["PosY"]
	
	return Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
end

--宝箱逻辑
function BattleChallenge_LinkNpc(nNpcId)
	local nUserId = Get_UserId()
	
	if tBattleChallenge_TeamRecord["Boss"][nUserId] == nil then
		return
	end
	
	if tBattleChallenge_TeamRecord["Level"][nUserId] == nil then
		return
	end
	
	--获取当前挑战层数
	local nLevel = tBattleChallenge_TeamRecord["Level"][nUserId][1]
	--获取当前巅峰挑战层数
	local nTop = tBattleChallenge_TeamRecord["Level"][nUserId][2]
	--获取当前宝箱索引
	local nBoxIndex = tBattleChallenge_Cont["BoxIndex"][nLevel]
	--当前BOSS组合战斗力
	local nTotalBattle = 0
	
	for k,v in pairs(tBattleChallenge_TeamRecord["Boss"][nUserId]) do
		nTotalBattle = nTotalBattle + v["Battle"]
	end
	
	--对白显示奖励信息
	local tItemNum = {}
		tItemNum[1] = CommonFunc_GetItemNum(tBattleChallenge_Reword["GetBox"][nBoxIndex][1]["RewardItem"][1]["Attr"])
		tItemNum[2] = tBattleChallenge_Reword["GetBox"][nBoxIndex][2]["RewardCultivation"]["Value"]
		tItemNum[3] = tBattleChallenge_Reword["GetBox"][nBoxIndex][3]["RewardStrengthValue"]["Value"]
		tItemNum[4] = tBattleChallenge_Reword["GetBox"][nBoxIndex][4]["RewardRepairValue"]["Value"]
	
	tNpcGossip[nNpcId]["Text114"] = string.format(tBattleChallenge_Text[nNpcId]["Text114"], nTotalBattle)
	tNpcGossip[nNpcId]["Text116"] = string.format(tBattleChallenge_Text[nNpcId]["Text116"], tItemNum[1],tItemNum[2],tItemNum[4],tItemNum[3])
	
	local nGetIndex = 1
	
	--是否巅峰挑战
	if nTop ~= 0 then
		nGetIndex = 2
		nLevel = nTop
	end
	
	--是否已领取过
	if BattleChallenge_IsGetParseNumber(nGetIndex, nLevel, nUserId) then
		local sChallengeName = tBattleChallenge_Text["ChallengeName"][nGetIndex]
		
		tNpcGossip[nNpcId]["Text211"] = string.format(tBattleChallenge_Text[nNpcId]["Text211"], sChallengeName, nLevel)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId, "1-1")
end

--宝箱奖励
function BattleChallenge_BoxAward(nNpcId)
	local nUserId = Get_UserId()
	
	if tBattleChallenge_TeamRecord["Boss"][nUserId] == nil then
		return
	end
	
	if tBattleChallenge_TeamRecord["Level"][nUserId] == nil then
		return
	end
	
	--获取当前挑战层数
	local nLevel = tBattleChallenge_TeamRecord["Level"][nUserId][1]
	--获取当前巅峰挑战层数
	local nTop = tBattleChallenge_TeamRecord["Level"][nUserId][2]
	--获取当前宝箱索引
	local nBoxIndex = tBattleChallenge_Cont["BoxIndex"][nLevel]
	--当前BOSS组合战斗力
	local nTotalBattle = 0
	
	for k,v in pairs(tBattleChallenge_TeamRecord["Boss"][nUserId]) do
		nTotalBattle = nTotalBattle + v["Battle"]
	end
	
	local nGetIndex = 1
	
	--是否巅峰挑战
	if nTop ~= 0 then
		nGetIndex = 2
		nLevel = nTop
	end
	
	--是否已经领取过当前层数奖励
	if BattleChallenge_IsGetParseNumber(nGetIndex, nLevel, nUserId) then
		local sChallengeName = tBattleChallenge_Text["ChallengeName"][nGetIndex]
		
		tNpcGossip[nNpcId]["Text211"] = string.format(tBattleChallenge_Text[nNpcId]["Text211"], sChallengeName, nLevel)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	--背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBattleChallenge_Reword["GetBox"],nBoxIndex,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["GetAwardBackFull"],nil,nil,nUserId)
		return
	end
	
	--修为达到上限
	if not RewardTemplate_RepairValueLimit(tBattleChallenge_Reword["GetBox"][nBoxIndex][4]["RewardRepairValue"]) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["GetAwardRepairFull"],nil,nil,nUserId)
		return
	end
	
	--记掩码（奖励是否领取）
	if not BattleChallenge_SetParseNumber(nGetIndex, nLevel, nUserId) then
		return
	end
	
	--刷新次数清零
	BattleChallenge_SetStcValue(3, "Set", 0, nUserId)
	BattleChallenge_SetStcValue(7, "Set", 0, nUserId)
	
	--获取奖励
	local tAwardResult, sRewardStr = RewardTemplate_NewRandom(tBattleChallenge_Reword["GetBox"],nBoxIndex,nUserId)
	
	--BOSS积分奖励
	for i = 23821, 23822 do
		--领取成功
		BattleChallenge_SetStcValue(i, "Add", nTotalBattle, nUserId)
		
		local nNowData = BattleChallenge_GetStcValue(i, nUserId)
		
		--先获取排行榜数据
		local tRank = RankingFunc_GetNowData(i)
		
		--更新排行榜
		RankingFunc_SetInfo(i,nNowData,nUserId)
		
		--给全服公告
		BattleChallenge_RankBroadcast(tRank, i, nUserId)
	end
	
	--积分领取log
	Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["GetPoint"], nTotalBattle), nUserId)

	
	--通关普通挑战，保存通关标志
	if nTop == 0 and nLevel == #tBattleChallenge_BossInfo["Normal"] - 1 then
		if BattleChallenge_GetStcValue(6, nUserId) <= 0 then
			BattleChallenge_SetStcValue(6, "Set", 1, nUserId)
		end
	end
	
	Sys_MsgBox(string.format(tBattleChallenge_Text["MsgBox"]["GetAwardSucc"], nTotalBattle, sRewardStr),"BattleChallenge_BoundTrans",nil,nUserId)
	
	User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["ChallengeGetAward"], nTotalBattle),nUserId)
	
	local sContent = nil
	local sUserName = Get_UserName(nUserId)
	
	--全服公告
	if nTop ~= 0 then
		sContent = string.format(tBattleChallenge_Text["Broadcast"]["PassTopTop"], sUserName)
	elseif nLevel >= tBattleChallenge_Cont["BroadcastLevel"] then
		if nLevel == #tBattleChallenge_BossInfo["Normal"] - 1 then
			sContent = string.format(tBattleChallenge_Text["Broadcast"]["PassTop"], sUserName)
		else
			sContent = string.format(tBattleChallenge_Text["Broadcast"]["Pass"], sUserName, nLevel)
		end
	end
	
	if sContent ~= nil then
		Sys_SystemBroadcast(sContent)
	end
end

--排行榜奖励
-- function BattleChallenge_GetRankAward(nNpcId)
	-- local nUserId = Get_UserId()
	
	-- if nNpcId == 23821 then
		-- --不在最后的奖励领取时间
		-- if not Sys_ChkFullTime(tBattleChallenge_Time["RankAwardTime"]) then
			-- LinkNpcGossipFunc_New(nNpcId, "2-2")
			-- return
		-- end
	-- end
	
	-- local bFlag, nRank = RankingFunc_RewardRank(nNpcId,nNpcId,nUserId)
	
	-- if bFlag and nNpcId == 23821 then
		-- local sUserName = Get_UserName(nUserId)
		-- local sRewardStr = tBattleChallenge_Text["AwardName"][nRank]
		
		-- Sys_TalkBroadcast(string.format(tBattleChallenge_Text["Broadcast"]["GetRankAward"], sUserName, nRank, sRewardStr))
	-- end
-- end

--炼丹童子逻辑
function BattleChallenge_LinkShop(nNpcId)
	LinkNpcGossipFunc_New(nNpcId, "1-1")
end

--购买药水
function BattleChallenge_BuyMedicine(nNpcId, nItemId)
	local nUserId = Get_UserId()
	
	--需要在副本内
	if not BattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	--记录选择的药水的类型和数量
	tBattleChallenge_TeamRecord["Medicine"][nUserId] = {}
	tBattleChallenge_TeamRecord["Medicine"][nUserId]["Id"] = nItemId
	
	tNpcGossip[nNpcId]["Text211"] = string.format(tBattleChallenge_Text[nNpcId]["Text211"], Get_ItemtypeName(nItemId))
	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end

--购买药水选项触发
function BattleChallenge_BuyMedicineOption(nNpcId, nNum)
	local nUserId = Get_UserId()
	
	--需要在副本内
	if not BattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	if tBattleChallenge_TeamRecord["Medicine"][nUserId] == nil then
		return
	end
	
	local nItemId = tBattleChallenge_TeamRecord["Medicine"][nUserId]["Id"]
	
	local sType = tBattleChallenge_Text["Money"]
	local nCost = 0
	
	if tBattleChallenge_Cont["Status"][nItemId]["EMoney"] ~= nil then
		sType = tBattleChallenge_Text["EMoney"]
		nCost = tBattleChallenge_Cont["Status"][nItemId]["EMoney"] * nNum
	end
	
	if tBattleChallenge_Cont["Status"][nItemId]["Money"] ~= nil then
		nCost = tBattleChallenge_Cont["Status"][nItemId]["Money"] * nNum
	end
	
	--记录选择的药水的类型和数量
	tBattleChallenge_TeamRecord["Medicine"][nUserId]["Num"] = nNum
	
	tNpcGossip[nNpcId]["Text221"] = string.format(tBattleChallenge_Text[nNpcId]["Text221"], nCost..sType, nNum, Get_ItemtypeName(nItemId))
	tNpcGossip[nNpcId]["Option221"] = string.format(tBattleChallenge_Text[nNpcId]["Option221"], nCost..sType)
	--弹确认对白
	LinkNpcGossipFunc_New(nNpcId, "2-2")
end

--购买药水确认
function BattleChallenge_BuyMedicineConfirm()
	local nUserId = Get_UserId()
	
	--需要在副本内
	if not BattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	if tBattleChallenge_TeamRecord["Medicine"][nUserId] == nil then
		return
	end
	
	local nItemId = tBattleChallenge_TeamRecord["Medicine"][nUserId]["Id"]
	local nNum = tBattleChallenge_TeamRecord["Medicine"][nUserId]["Num"]
	
	--需要花费的钱
	local nCost = 0
	
	--判断是否是天石购买
	local bEmoney = false
	
	if tBattleChallenge_Cont["Status"][nItemId]["EMoney"] ~= nil then
		bEmoney = true
		nCost = tBattleChallenge_Cont["Status"][nItemId]["EMoney"] * nNum
	end
	
	if tBattleChallenge_Cont["Status"][nItemId]["Money"] ~= nil then
		nCost = tBattleChallenge_Cont["Status"][nItemId]["Money"] * nNum
	end
	
	if nCost == 0 then
		return
	end
	
	--判断数量是否满足
	if bEmoney then
		if Get_UserEMoney(nUserId) < nCost then
			Sys_MsgBox(string.format(tBattleChallenge_Text["MsgBox"]["BuyMedicineNoCPs"], tBattleChallenge_Text["EMoney"]),nil,nil,nUserId)
			return
		end
	else
		if not User_CanPutMoney2Bag(-nCost,nUserId) then
			Sys_MsgBox(string.format(tBattleChallenge_Text["MsgBox"]["BuyMedicineNoCPs"], tBattleChallenge_Text["Money"]),nil,nil,nUserId)
			return
		end
	end
	tBattleChallenge_Reword["Buy"] = {}
	tBattleChallenge_Reword["Buy"]["RewardItem"] = {}
	tBattleChallenge_Reword["Buy"]["RewardItem"][1] = {}
	tBattleChallenge_Reword["Buy"]["RewardItem"][1]["Id"] = 3320782
	tBattleChallenge_Reword["Buy"]["RewardItem"][1]["Attr"] = "0 1"
	tBattleChallenge_Reword["Buy"]["LogId"] =12001311
	
	local tAward = CommonFunc_Copy(tBattleChallenge_Reword["Buy"])
	
	tAward["RewardItem"][1]["Id"] = nItemId
	tAward["RewardItem"][1]["Attr"] = "0 "..nNum
	
	--背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tAward,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["BuyMedicineBackFull"],nil,nil,nUserId)
		return
	end
	
	--扣除相应天石或金币
	if bEmoney then
		local sEmoneyBuyLog = tBattleChallenge_ELog["Buy"]
		
		if not User_AddEMoneyAndLog(-nCost,sEmoneyBuyLog,nUserId) then
			Sys_MsgBox(string.format(tBattleChallenge_Text["MsgBox"]["BuyMedicineNoCPs"], tBattleChallenge_Text["EMoney"]),nil,nil,nUserId)
			return
		end
	else
		local nLogId = tBattleChallenge_Log["Id"]
		
		if not User_AddMoneyNew(-nCost,nLogId,nUserId) then
			Sys_MsgBox(string.format(tBattleChallenge_Text["MsgBox"]["BuyMedicineNoCPs"], tBattleChallenge_Text["Money"]),nil,nil,nUserId)
			return
		end
	end
	
	RewardTemplate_UseItemAndMsg(tAward,nUserId)
end

--杨戬逻辑
function BattleChallenge_LinkYangJian(nNpcId)
	local nUserId = Get_UserId()
	
	if tBattleChallenge_TeamRecord["Boss"][nUserId] == nil then
		return
	end
	
	if tBattleChallenge_TeamRecord["Level"][nUserId] == nil then
		return
	end
	
	--获取当前挑战层数
	local nLevel = tBattleChallenge_TeamRecord["Level"][nUserId][1]
	--获取当前巅峰挑战层数
	local nTop = tBattleChallenge_TeamRecord["Level"][nUserId][2]
	--试炼时间
	local nTime = tBattleChallenge_Cont["TopTime"][1]
	
	--挑战层数
	tNpcGossip[nNpcId]["Text111"] = string.format(tBattleChallenge_Text[nNpcId]["Text111"], nLevel)
	
	if nTop ~= 0 then
		nTime = tBattleChallenge_Cont["TopTime"][nTop]
		tNpcGossip[nNpcId]["Text111"] = string.format(tBattleChallenge_Text[nNpcId]["Text119"], nTop)
	end
	
	--挑战时间信息
	tNpcGossip[nNpcId]["Option111"] = string.format(tBattleChallenge_Text[nNpcId]["Option111"], nTime)
	
	--当前层BOSS战斗力表
	local tBossBattle = tBattleChallenge_BossInfo["Normal"][nLevel]["Battle"]
	--当前层最高战斗力
	local nMaxBattle = tBossBattle[#tBossBattle]
	--当前层最低战斗力
	local nMinBattle = tBossBattle[1]
	
	--当前BOSS组合战斗力
	local nTotalBattle = 0
	
	--BOSS组合信息
	for i = 1, 3 do
		if tBattleChallenge_TeamRecord["Boss"][nUserId][i] == nil then
			tNpcGossip[nNpcId]["Text11"..(2 + i)] = ""
		else
			--BOSSId
			local nMonsterId = tBattleChallenge_TeamRecord["Boss"][nUserId][i]["MonsterId"]
			--对应战斗力
			local nBattle = tBattleChallenge_TeamRecord["Boss"][nUserId][i]["Battle"]
			--战斗力转字符串显示
			local sBattle = string.format(tBattleChallenge_Text["Battle"], nBattle)
			--BOSS名字
			local sMonsterName = tBattleChallenge_Text["MonsterName"][nMonsterId]
			
			nTotalBattle = nTotalBattle + nBattle
			
			--当前层最高战斗力标红
			if nBattle == nMaxBattle then
				sBattle = string.format(tBattleChallenge_Text["BossColor"][1], sBattle)
			end
			
			tNpcGossip[nNpcId]["Text11"..(2 + i)] = string.format(tBattleChallenge_Text[nNpcId]["Text11"..(2 + i)], sMonsterName,sBattle)
		end
	end
	
	--显示BOSS总战斗力
	tNpcGossip[nNpcId]["Text117"] = string.format(tBattleChallenge_Text[nNpcId]["Text117"], nMinBattle, nMaxBattle, nTotalBattle)
	
	--刷新次数
	local nRefreshTimes = BattleChallenge_GetStcValue(3, nUserId)
	--额外的刷新次数
	local nRefreshTimesAdd = BattleChallenge_GetStcValue(7, nUserId)
	
	tNpcGossip[nNpcId]["Text118"] = string.format(tBattleChallenge_Text[nNpcId]["Text118"], nRefreshTimes + nRefreshTimesAdd)
	
	tNpcGossip[nNpcId]["tOption1-1"] = {111}
	
	if nRefreshTimes >= tBattleChallenge_Cont["FreeTimes"] then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 113)
	else
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 112)
	end
	
	--不是巅峰挑战有挑战最强高手选项
	if nTop == 0 then
		table.insert(tNpcGossip[nNpcId]["tOption1-1"], 114)
	end
	
	LinkNpcGossipFunc_New(nNpcId, "1-1")
end

--开始挑战
function BattleChallenge_BeginChallenge()
	local nUserId = Get_UserId()
	
	--不在副本
	if not BattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	
	--组队不是队长
	if nTeamNum >= 2 and not User_IsTeamLeader(nUserId) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["NotBeginChallenge"],nil,nil,nUserId)
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	
	--删除NPC
	if Npc_DelDynaByID() then
		--刷新BOSS
		BattleChallenge_RefresBoss(nUserId)
		
		--提示
		User_TalkChannel2005(tBattleChallenge_Text["Channel2005"]["Begin"],nUserId)
		
		--全队执行
		Map_UserExeFunc(nMapId, -1, "BattleChallenge_BeginAfterTeam")
	end
end

--开始挑战后的全队执行
function BattleChallenge_BeginAfterTeam(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local sEffect = tBattleChallenge_Cont["BeginEffect"]
	
	--出“开始挑战”光效
	User_EffectAdd("self",sEffect,nUserId)
	
	--重置挑战时间的时间戳
	local nEvent = tBattleChallenge_Stc[1]["Event"]
	local nType = tBattleChallenge_Stc[1]["Type"]
	local nTimeType = tBattleChallenge_Stc[1]["TimeType"]
	local nDelay = tBattleChallenge_Stc[1]["Delay"]
	
	--隔天清零
	Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	
	if Task_ChkStatistic(nEvent,nType,nUserId) then
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	else
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
	end
	
	--获取时间戳，用来记录是不是本次挑战
	local nStcTime = Get_UserStcTimestampValue(nEvent,nType,nUserId)
	
	--倒计时结束后触发
	local sFunc = string.format("BattleChallenge_Timer</N>%d", nStcTime)
	
	--挑战信息是否还存在
	if tBattleChallenge_TeamRecord["Level"][nUserId] == nil then
		return
	end
	
	--获取当前巅峰挑战层数
	local nTop = tBattleChallenge_TeamRecord["Level"][nUserId][2]
	--试炼时间
	local nTime = tBattleChallenge_Cont["TopTime"][1]
	
	if nTop ~= 0 then
		nTime = tBattleChallenge_Cont["TopTime"][nTop]
	end
	
	--挑战开始倒计时
	User_SetTimer(nTime,sFunc,1,nUserId)
end

--倒计时结束触发
function BattleChallenge_Timer(nStcTime, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local nEvent = tBattleChallenge_Stc[1]["Event"]
	local nType = tBattleChallenge_Stc[1]["Type"]
	local nNowStcTime = Get_UserStcTimestampValue(nEvent,nType,nUserId)
	
	--判断是不是本次挑战，不是则直接退出不往下执行
	if nNowStcTime ~= nStcTime then
		return
	end
	
	--不在副本
	if not BattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	
	--判断有没有BOSS，没有则说明已经通关了
	if not BattleChallenge_ChkBossExist(nMapId) then
		return
	end
	
	--全队执行
	-- Map_UserExeFunc(nMapId, -1, "BattleChallenge_TeamChallengeFail")
	
	BattleChallenge_TeamChallengeFail(nUserId)
end

--时间到没有挑战成功则全队传送出地图
function BattleChallenge_TeamChallengeFail(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--传送出去，挑战失败
	BattleChallenge_BoundTrans(nUserId)
	
	Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["ChallengeFail"],nil,nil,nUserId)
end

--手动刷新BOSS组合
function BattleChallenge_UserRefreshGroupBoss(nMode, nNpcId)
	local nUserId = Get_UserId()
	
	--不在副本
	if not BattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	
	--组队不是队长
	if nTeamNum >= 2 and not User_IsTeamLeader(nUserId) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["NotRefresh"],nil,nil,nUserId)
		return
	end
	
	--需要消耗的修行值
	local nNeedCultivation = tBattleChallenge_Cont["Cultivation"]
	
	if nMode == 1 then
		nNeedCultivation = tBattleChallenge_Cont["TopCultivation"]
	end
	
	--刷新次数
	local nRefreshTimes = BattleChallenge_GetStcValue(3, nUserId)
	
	--超过免费次数需要消耗修行值
	if nRefreshTimes >= tBattleChallenge_Cont["FreeTimes"] or nMode == 1 then
		local nCultivation = Get_UserCultivation(nUserId)
		
		--判断修行值是否足够
		if nCultivation < nNeedCultivation then
			Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["NotCultivationRefresh"],nil,nil,nUserId)
			return
		end
		
		--消耗修行值
		if not User_AddCultivation(-nNeedCultivation,nUserId) then
			Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["NotCultivationRefresh"],nil,nil,nUserId)
			return
		end
		
		--打log
		if tBattleChallenge_ELog["Refresh"][nNeedCultivation] ~= nil then
			Sys_SaveEmoneyBuy(tBattleChallenge_ELog["Refresh"][nNeedCultivation],nUserId)
		end
	end
	
	local nIndex = 3
	
	if nMode == 1 then
		nIndex = 7
	end
	
	--设掩码
	if not BattleChallenge_SetStcValue(nIndex, "Add", 1, nUserId) then
		return
	end
	
	--刷新
	BattleChallenge_RefreshGroupBoss(nMode, nUserId)
	
	---返回对白
	BattleChallenge_LinkYangJian(nNpcId)
end

--登上排行榜给全服公告
function BattleChallenge_RankBroadcast(tBeforeRank, nNpcId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--获取加分前的排行榜排名
	local nBeforeRank = 0
	
	for i = 1, 10 do
		local nRankUserId = 0
		
		if tBeforeRank[i] ~= nil then
			nRankUserId = tBeforeRank[i]["UserId"]
		end
		
		if nRankUserId == nUserId then
			nBeforeRank = i
		end
	end
	
	local tRank = RankingFunc_GetNowData(nNpcId)
	
	--判断是否在排行榜内
	local nUserRank = 0
	local nUserScore = 0
	
	for i = 1, 10 do
		local nScore = 0
		local nRankUserId = 0
		
		if tRank[i] ~= nil then
			nScore = tRank[i]["Score"]
			nRankUserId = tRank[i]["UserId"]
		end
		
		if nRankUserId == nUserId then
			nUserRank = i
			nUserScore = nScore
		end
	end
	
	--玩家在排行榜上面且排名发生变化，才全服公告
	if nUserRank ~= 0 and nBeforeRank ~= nUserRank then
		local sUserName = Get_UserName(nUserId)
		local sContent = tBattleChallenge_Text["Broadcast"]["InRank"][nNpcId]
		
		Sys_SystemBroadcast(string.format(sContent, sUserName, nUserScore, nUserRank))
	end
end

--传送
function BattleChallenge_BoundTrans(nNowUserId)
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	if tBattleChallenge_Cont["BoundTrans"][nIndex] == nil then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tBattleChallenge_Cont["BoundTrans"][nIndex]["MapId"]
	local nBoundX = tBattleChallenge_Cont["BoundTrans"][nIndex]["PosX"]
	local nBoundY = tBattleChallenge_Cont["BoundTrans"][nIndex]["PosY"]
	
	--清除玩家身上状态
	BattleChallenge_DelStatus(nUserId)
	
	--增加一个1s的倒计时，啥都不做，用来覆盖之前的倒计时显示
	User_SetTimer(1,nil,1,nUserId)
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,0,nUserId)
	
	User_TalkChannel2005(tBattleChallenge_Text["Channel2005"]["GoBack"][nIndex],nUserId)
end

--副本陷阱返回
function BattleChallenge_GoBackToCity(nTrapId,nTrapType)
	local sText = tBattleChallenge_Text["MsgBox"]["GoBackTwinCity"]
	
	if SpecialServer_ChkNoGiftServer() then
		sText = tBattleChallenge_Text["MsgBox"]["GoBackMarket"]
	end
	
	local nUserId = Get_UserId()
	
	Sys_MsgBox(sText,"BattleChallenge_BoundTrans",nil,nUserId)
end

--获取活动时间，转换成数字
function BattleChallenge_GetActivityTime()
	local nBeginMonth = tonumber(string.sub(tBattleChallenge_Time["ActivityTime"], 6, 7))
	local nBeginDay = tonumber(string.sub(tBattleChallenge_Time["ActivityTime"], 9, 10))
	local nEndMonth = tonumber(string.sub(tBattleChallenge_Time["ActivityTime"], 23, 24))
	local nEndDay = tonumber(string.sub(tBattleChallenge_Time["ActivityTime"], 26, 27))
	
	return nBeginMonth,nBeginDay,nEndMonth,nEndDay
end

--玩家合成物品
function BattleChallenge_UseCompoundItem(nItemId, nAwardNum)
	local nUserId = Get_UserId()
	
	--是否选择全部合成
	if nAwardNum == nil then
		local nBackNum = Get_CountItemType(nItemId,0)
		
		if nBackNum < tBattleChallenge_Cont["CompoundNum"] then
			nAwardNum = 1
		else
			nAwardNum = math.floor(nBackNum / tBattleChallenge_Cont["CompoundNum"])
		end
	end
	
	--合成失败（数量不足）
	local nNum = nAwardNum * tBattleChallenge_Cont["CompoundNum"]
	
	--合成条件不满足
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		Sys_MsgBox(string.format(tBattleChallenge_Text["MsgBox"]["UseCompoundNotNum"], nNum),nil,nil,nUserId)
		return
	end
	
	local tAward = CommonFunc_Copy(tBattleChallenge_Reword[nItemId])
	
	tAward["DeleteItem"][1]["ItemNum"] = nNum
	tAward["RewardItem"][1]["Attr"] = "0 "..nAwardNum
	
	--合成失败（背包满）
	local nSpace = RewardTemplate_GetRewardSpace(tAward,nUserId)
	nSpace = nSpace - RewardTemplate_GetDelSpace(tAward,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["UseCompoundBackFull"],nil,nil,nUserId)
		return
	end
	
	--合成成功
	if RewardTemplate_UseItemAndMsg(tAward,nUserId) then
		Sys_MsgBox(string.format(tBattleChallenge_Text["MsgBox"]["UseCompoundSucc"], nAwardNum),nil,nil,nUserId)
	end
end

--玩家使用增益符
function BattleChallenge_UseStatusItem(nItemId)
	local nUserId = Get_UserId()
	
	--需要在副本内才能使用
	if not BattleChallenge_ChkInstance(nUserId) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["UseStatusNotIn"],nil,nil,nUserId)
		return
	end
	
	local bFlag = true
	
	local tNowStatus = {}
	local tNowPower = {}
	
	--玩家身上状态判断
	for k,v in pairs(tBattleChallenge_Cont["Status"][nItemId]["Status"]) do
		if type(v) == "table" then
			if (not User_ChkRoleStatus(v[1],nUserId)) and (not User_ChkRoleStatus(v[2],nUserId)) then
				bFlag = false
				table.insert(tNowStatus, v)
				table.insert(tNowPower, tBattleChallenge_Cont["Status"][nItemId]["Power"][k])
			end
		else
			if not User_ChkRoleStatus(v,nUserId) then
				bFlag = false
				table.insert(tNowStatus, v)
				table.insert(tNowPower, tBattleChallenge_Cont["Status"][nItemId]["Power"][k])
			end
		end
	end
	
	--已经拥有全部状态
	if bFlag then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["UseStatusFail"],nil,nil,nUserId)
		return
	end
	
	--删除1张，使用成功
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		local nIndex = math.random(1, #tNowStatus)
		local nStatus = tNowStatus[nIndex]
		
		local nPower = tNowPower[nIndex]
		local nSecs = tBattleChallenge_Cont["Status"][nItemId]["Secs"]
		
		--使用log
		Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["UseStatusItem"], nItemId, 1))
		
		--EMoneyLog
		Sys_SaveEmoneyBuy(tBattleChallenge_ELog["UseStatusItem"],nUserId)
		
		--加状态
		if type(nStatus) == "table" then
			if User_AddRoleStatus(nStatus[1],nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["Status"][nStatus[1]], nPower),nUserId)
			end
			
			if User_AddRoleStatus(nStatus[2],nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["Status"][nStatus[2]], nPower),nUserId)
			end
		else
			if User_AddRoleStatus(nStatus,nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["Status"][nStatus], nPower),nUserId)
			end
		end
	end
end

--玩家使用药水
function BattleChallenge_UseStatusBuyItem(nItemId,sItemName)
	local nUserId = Get_UserId()
	
	--需要在副本内才能使用
	if not BattleChallenge_ChkInstance(nUserId) then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["UseBuyStatusNotIn"],nil,nil,nUserId)
		return
	end
	
	local bFlag = true
	local nStatus = tBattleChallenge_Cont["Status"][nItemId]["Status"]
	
	if type(nStatus) == "table" then
		if (not User_ChkRoleStatus(nStatus[1],nUserId)) and (not User_ChkRoleStatus(nStatus[2],nUserId)) then
			bFlag = false
		end
	else
		if not User_ChkRoleStatus(nStatus,nUserId) then
			bFlag = false
		end
	end
	
	--已经拥有状态
	if bFlag then
		Sys_MsgBox(tBattleChallenge_Text["MsgBox"]["UseBuyStatusFail"],nil,nil,nUserId)
		return
	end
	
	local nPower = tBattleChallenge_Cont["Status"][nItemId]["Power"]
	local nSecs = tBattleChallenge_Cont["Status"][nItemId]["Secs"]
	
	--删除1张，使用成功
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		--使用log
		Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["UseStatusBuyItem"], nItemId, 1))
		
		--加状态
		if type(nStatus) == "table" then
			if User_AddRoleStatus(nStatus[1],nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["Status"][nStatus[1]], nPower),nUserId)
			end
			
			if User_AddRoleStatus(nStatus[2],nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["Status"][nStatus[2]], nPower),nUserId)
			end
		else
			if User_AddRoleStatus(nStatus,nPower,nSecs,0,0,0,0,0,0,nUserId) then
				User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["Status"][nStatus], nPower),nUserId)
			end
		end
	end
end

--清除玩家身上状态
function BattleChallenge_DelStatus(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	for k,v in pairs(tBattleChallenge_Cont["Status"][3320325]["Status"]) do
		if type(v) == "table" then
			for m,n in pairs(v) do
				if User_ChkRoleStatus(n,nUserId) then
					User_DelRoleStatus(n,nUserId)
				end
			end
		else
			if User_ChkRoleStatus(v,nUserId) then
				User_DelRoleStatus(v,nUserId)
			end
		end
	end
	
	for i = 3320784, 3320785 do
		if User_ChkRoleStatus(tBattleChallenge_Cont["Status"][i]["Status"],nUserId) then
			User_DelRoleStatus(tBattleChallenge_Cont["Status"][i]["Status"],nUserId)
		end
	end
end

--试炼礼包逻辑
function BattleChallenge_UseBagItem(nItemId,sItemName)
	local nUserId = Get_UserId()
	
	--过期删除
	if not Sys_ChkFullTime(tBattleChallenge_Time["ItemUseTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		
		if Item_ChkMulItem(nItemId,nItemId,nCount) and Item_DelMulItem(nItemId,nItemId,nCount) then
			Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["DelItem"], nItemId, nCount))
			User_TalkChannel2005(tLuaRes[10004])
		end
		
		return
	end
	
	--礼包打开次数
	local nOpenTimes = BattleChallenge_GetStcValue(nItemId, nUserId)
	
	--打开到一定次数不让开了
	if nOpenTimes >= tBattleChallenge_Cont["BagOpenNumLimit"] then
		local sChannel = string.format(tBattleChallenge_Text["Channel2005"]["OpenBagFail"], tBattleChallenge_Cont["BagOpenNumLimit"],sItemName)
		User_TalkChannel2005(sChannel,nUserId)
		return
	end
	
	local bFlag = true
	
	--打开到一定次数不出积分
	if nOpenTimes >= tBattleChallenge_Cont["BagOpenNum"] then
		bFlag = false
	end
	
	--背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBattleChallenge_Reword[nItemId],1,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"], nSpace),nUserId)
		return
	end
	
	--修为达到上限
	if not RewardTemplate_RepairValueLimit(tBattleChallenge_Reword[nItemId][1][3]["RewardRepairValue"]) then
		return
	end
	
	--删除礼包
	if Item_ChkMulItem(nItemId,nItemId,1) and Item_DelMulItem(nItemId,nItemId,1) then
		--打开次数+1
		if BattleChallenge_SetStcValue(nItemId, "Add", 1, nUserId) then
			RewardTemplate_NewRandom(tBattleChallenge_Reword[nItemId],1,nUserId)
			
			--获得时间内可获得试炼积分
			if Sys_ChkFullTime(tBattleChallenge_Time["ActivityTime"]) and bFlag then
				local nPoint = tBattleChallenge_Reword[nItemId]["Point"]
				
				for i = 23821, 23822 do
					BattleChallenge_SetStcValue(i, "Add", nPoint, nUserId)
					
					local nNowData = BattleChallenge_GetStcValue(i, nUserId)
					
					--先获取排行榜数据
					local tRank = RankingFunc_GetNowData(i)
					
					--更新排行榜
					RankingFunc_SetInfo(i,nNowData,nUserId)
					
					--给全服公告
					BattleChallenge_RankBroadcast(tRank, i, nUserId)
				end
				
				--积分领取log
				Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["GetPoint"], nPoint), nUserId)
				
				User_TalkChannel2005(string.format(tBattleChallenge_Text["Channel2005"]["ChallengeGetAward"], nPoint),nUserId)
			end
		end
	end
end

--重写排行榜邮件文字
function BattleChallenge_ReSetMailText(nIndex)
	--获取昨日时间
	local nNow = os.time()
	local sTime = os.date("%Y%m%d",nNow - 86400)
	local nMonth = tostring(string.sub(sTime,5,6))
	local nDay = tostring(string.sub(sTime,7,8))
	
	for k,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		--总榜
		if nIndex == 23821 then
			v["Content"] = string.format(v["Content"], k, tBattleChallenge_Text["AwardName"]["Total"][k])
		--每日榜
		else
			v["Content"] = string.format(v["Content"], nMonth, nDay, k, tBattleChallenge_Text["AwardName"]["Day"][k])
		end
	end
end

--小怪掉落
function BattleChallenge_KillMonster(nMonsterId)
	--时间判断
	if not Sys_ChkFullTime(tBattleChallenge_Time["ActivityTime"]) then
		return
	end
	
	--背包空间，满了不掉
	if not RewardTemplate_ChkRandomSpace(tBattleChallenge_Reword["Drop"],1) then
		return
	end
	
	RewardTemplate_NewRandom(tBattleChallenge_Reword["Drop"],1)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--姜子牙
tNpcFace[6509] = 50
tNpcGossip[23810]= tNpcGossip[23810] or DefaultNpc:new{}
tNpcGossip[23810]["DialogueText"] = tBattleChallenge_Text[23810]
tNpcGossip[23810]["OptionHidden"] = 1

--活动时间前、活动时间内
tNpcGossip[23810]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tNpcGossip[23810]["ChkFunc1-1"] = function ()
	return BattleChallenge_TalkChk(23810)
end
tNpcGossip[23810]["tOption1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23810]["OptionFunc113"] = "BattleChallenge_OptionIntoInstance" --前往试炼塔（第%d层）
tNpcGossip[23810]["OptionFunc114"] = "BattleChallenge_OptionIntoInstance" --前往参加巅峰试炼
tNpcGossip[23810]["OptionPoint115"] = "2-1" --直接扫荡1至9层
tNpcGossip[23810]["OptionPoint116"] = "2-2" --勇者试炼指南
tNpcGossip[23810]["OptionFunc117"] = "BattleChallenge_ViewAward" --查看阶段性奖励

--活动时间后
tNpcGossip[23810]["Text1-2"] = {121,122}
tNpcGossip[23810]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tBattleChallenge_Time["ActivityTime"])
end
tNpcGossip[23810]["tOption1-2"] = {121}

--扫荡
tNpcGossip[23810]["Text2-1"] = {211}
tNpcGossip[23810]["tOption2-1"] = {211}
tNpcGossip[23810]["ChkFunc2-1"] = function ()
	local nLevel = BattleChallenge_GetUserLevel()
	
	--获取可以获得的礼包个数和积分
	local nAwardNum, nPoint = BattleChallenge_MopUpChk(nLevel)
	
	tNpcGossip[23810]["Text211"] = string.format(tBattleChallenge_Text[23810]["Text211"], nPoint, nAwardNum)
	return true
end
tNpcGossip[23810]["OptionFunc211"] = "BattleChallenge_MopUp" --扫荡

--勇者试炼指南
tNpcGossip[23810]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[23810]["tOption2-2"] = {221}
tNpcGossip[23810]["OptionPoint221"] = "1"

--查看阶段性奖励
tNpcGossip[23810]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314}
tNpcGossip[23810]["tOption2-3"] = {231,232}
tNpcGossip[23810]["OptionFunc231"] = "BattleChallenge_GetPhaseAward"
tNpcGossip[23810]["OptionPoint232"] = "1"

--已完成所有挑战
tNpcGossip[23810]["Text2-4"] = {241}
tNpcGossip[23810]["tOption2-4"] = {241}

--无可领取的奖励
tNpcGossip[23810]["Text3-1"] = {311}
tNpcGossip[23810]["tOption3-1"] = {311}

--杨戬
tNpcFace[6504] = 95
tNpcGossip[23820]= tNpcGossip[23820] or DefaultNpc:new{}
tNpcGossip[23820]["DialogueText"] = tBattleChallenge_Text[23820]
tNpcGossip[23820]["OptionHidden"] = 1

tNpcGossip[23820]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[23820]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[23820]["tOption1-1"] = {111,112,113,114}
tNpcGossip[23820]["OptionFunc111"] = "BattleChallenge_BeginChallenge" --开始挑战
tNpcGossip[23820]["OptionFunc112"] = "BattleChallenge_UserRefreshGroupBoss</N>0</N>23820"--刷新高手（免费）
tNpcGossip[23820]["OptionFunc113"] = "BattleChallenge_UserRefreshGroupBoss</N>0</N>23820"--刷新高手（100点修行值）
tNpcGossip[23820]["OptionFunc114"] = "BattleChallenge_UserRefreshGroupBoss</N>1</N>23820"--刷新高手（100点修行值）

--勇者宝箱
tNpcFace[4210] = 1805
tNpcGossip[23828]= tNpcGossip[23828] or DefaultNpc:new{}
tNpcGossip[23828]["DialogueText"] = tBattleChallenge_Text[23828]
tNpcGossip[23828]["OptionHidden"] = 1

tNpcGossip[23828]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[23828]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[23828]["tOption1-1"] = {111}
tNpcGossip[23828]["OptionFunc111"] = "BattleChallenge_BoxAward</N>23828" --开启宝箱
--已领过奖励
tNpcGossip[23828]["Text2-1"] = {211}
tNpcGossip[23828]["tOption2-1"] = {211}
tNpcGossip[23828]["OptionFunc211"] = "BattleChallenge_BoundTrans"--离开

--巅峰强者榜
tNpcFace[4208] = 1248
tNpcGossip[23821]= tNpcGossip[23821] or DefaultNpc:new{}
tNpcGossip[23821]["DialogueText"] = tBattleChallenge_Text[23821]
tNpcGossip[23821]["OptionHidden"] = 1
--活动时间前
tNpcGossip[23821]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23821]["ChkFunc1-1"] = function ()
	local nBeginMonth,nBeginDay,nEndMonth,nEndDay = BattleChallenge_GetActivityTime()
	
	tNpcGossip[23821]["Text115"] = string.format(tBattleChallenge_Text[23821]["Text115"],nBeginMonth,nBeginDay,nEndMonth,nEndDay)
	
	return CommonFunc_GetBeforeActivityTime(tBattleChallenge_Time["RankTime"])
end
tNpcGossip[23821]["tOption2-1"] = {111}
--活动时间 内、活动时间后
tNpcGossip[23821]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215,1216,1217}
tNpcGossip[23821]["ChkFunc1-2"] = function ()
	return BattleChallenge_TotalRankChk(23821)
end
tNpcGossip[23821]["tOption1-2"] = {121,122}
tNpcGossip[23821]["OptionPoint122"] = "2-1" --查看排行榜奖励
--查看排行榜奖励
tNpcGossip[23821]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115}
tNpcGossip[23821]["tOption2-1"] = {211}
tNpcGossip[23821]["OptionPoint211"] = "1"
--每日勇者榜
tNpcFace[4209] = 1248
tNpcGossip[23822]= tNpcGossip[23822] or DefaultNpc:new{}
tNpcGossip[23822]["DialogueText"] = tBattleChallenge_Text[23822]
tNpcGossip[23822]["OptionHidden"] = 1
--活动时间前
tNpcGossip[23822]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23822]["ChkFunc1-1"] = function ()
	local nBeginMonth,nBeginDay,nEndMonth,nEndDay = BattleChallenge_GetActivityTime()
	
	tNpcGossip[23822]["Text115"] = string.format(tBattleChallenge_Text[23822]["Text115"],nBeginMonth,nBeginDay,nEndMonth,nEndDay)
	
	return CommonFunc_GetBeforeActivityTime(tBattleChallenge_Time["RankTime"])
end
tNpcGossip[23822]["tOption2-1"] = {111}
--活动时间 内、活动时间后
tNpcGossip[23822]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213,1214,1215,1216,1217}
tNpcGossip[23822]["ChkFunc1-2"] = function ()
	return BattleChallenge_TotalRankChk(23822)
end
tNpcGossip[23822]["tOption1-2"] = {121,122}
tNpcGossip[23822]["OptionPoint122"] = "2-1" --查看排行榜奖励
--查看排行榜奖励
tNpcGossip[23822]["Text2-1"] = {211,212,213,214,215,216,217,218,219}
tNpcGossip[23822]["tOption2-1"] = {211}
tNpcGossip[23822]["OptionPoint211"] = "1"

--炼丹童子
tNpcFace[4215] = 120
tNpcGossip[24050]= tNpcGossip[24050] or DefaultNpc:new{}
tNpcGossip[24050]["DialogueText"] = tBattleChallenge_Text[24050]
tNpcGossip[24050]["OptionHidden"] = 1

tNpcGossip[24050]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[24050]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[24050]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24050]["OptionFunc111"] = "BattleChallenge_BuyMedicine</N>24050</N>3320782"
tNpcGossip[24050]["OptionFunc112"] = "BattleChallenge_BuyMedicine</N>24050</N>3320783"
tNpcGossip[24050]["OptionFunc113"] = "BattleChallenge_BuyMedicine</N>24050</N>3320784"
tNpcGossip[24050]["OptionFunc114"] = "BattleChallenge_BuyMedicine</N>24050</N>3320785"
tNpcGossip[24050]["OptionFunc115"] = "BattleChallenge_BuyMedicine</N>24050</N>3320786"
tNpcGossip[24050]["OptionFunc116"] = "BattleChallenge_BuyMedicine</N>24050</N>3320787"
tNpcGossip[24050]["OptionFunc117"] = "BattleChallenge_BuyMedicine</N>24050</N>3320788"
tNpcGossip[24050]["OptionFunc118"] = "BattleChallenge_BuyMedicine</N>24050</N>3320789"

--选择购买数量
tNpcGossip[24050]["Text2-1"] = {211}
tNpcGossip[24050]["tOption2-1"] = {211,212,213,214}
tNpcGossip[24050]["OptionFunc211"] = "BattleChallenge_BuyMedicineOption</N>24050</N>1"
tNpcGossip[24050]["OptionFunc212"] = "BattleChallenge_BuyMedicineOption</N>24050</N>5"
tNpcGossip[24050]["OptionFunc213"] = "BattleChallenge_BuyMedicineOption</N>24050</N>10"
tNpcGossip[24050]["OptionFunc214"] = "BattleChallenge_LinkShop</N>24050"

--确认购买
tNpcGossip[24050]["Text2-2"] = {221}
tNpcGossip[24050]["tOption2-2"] = {221,222}
tNpcGossip[24050]["OptionFunc221"] = "BattleChallenge_BuyMedicineConfirm"

---------------------------------------------物品模块---------------------------------------------
--1阶试炼增益符
tItemFace[3320325] = 2124
tItem[3320325] = tItem[3320325] or {}
tItem[3320325]["Function"] = function(nItemId,sItemName)
	--过期删除
	if not Sys_ChkFullTime(tBattleChallenge_Time["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		
		if Item_ChkMulItem(nItemId,nItemId,nCount) and Item_DelMulItem(nItemId,nItemId,nCount) then
			Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["DelItem"], nItemId, nCount))
			User_TalkChannel2005(tLuaRes[10004])
		end
		
		return
	end
	
	--检查数量
	local nNum = tBattleChallenge_Cont["CompoundNum"]
	
	--合成条件不满足
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		--使用获得状态
		BattleChallenge_UseStatusItem(nItemId)
		return
	end
	
	LinkItemGossipFunc_New(nItemId, "1-1")
end

tItem[3320325]["DialogueText"] = tBattleChallenge_Text[3320325]
tItem[3320325]["Text1-1"] = {111,112,113}
tItem[3320325]["tOption1-1"] = {111,112,113,114}
tItem[3320325]["OptionFunc111"] = "BattleChallenge_UseCompoundItem</N>3320325</N>1"
tItem[3320325]["OptionFunc112"] = "BattleChallenge_UseCompoundItem</N>3320325</N>5"
tItem[3320325]["OptionFunc113"] = "BattleChallenge_UseCompoundItem</N>3320325"
tItem[3320325]["OptionFunc114"] = "BattleChallenge_UseStatusItem</N>3320325"

--2阶试炼增益符
tItem[3320326] = tItem[3320326] or {}
tItem[3320326]["Function"] = function(nItemId,sItemName)
	--过期删除
	if not Sys_ChkFullTime(tBattleChallenge_Time["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0)
		
		if Item_ChkMulItem(nItemId,nItemId,nCount) and Item_DelMulItem(nItemId,nItemId,nCount) then
			Sys_SaveActionRewardLog(string.format(tBattleChallenge_Log["DelItem"], nItemId, nCount))
			User_TalkChannel2005(tLuaRes[10004])
		end
		
		return
	end
	
	--使用获得状态
	BattleChallenge_UseStatusItem(nItemId)
end

--1阶试炼礼包
tItem[3320327] = tItem[3320327] or {}
tItem[3320327]["Function"] = function(nItemId,sItemName)
	BattleChallenge_UseBagItem(nItemId,sItemName)
end
--2阶试炼礼包
tItem[3320328] = tItem[3320327]
--3阶试炼礼包
tItem[3320329] = tItem[3320327]

--粉碎药水
tItem[3320782] = tItem[3320782] or {}
tItem[3320782]["Function"] = function(nItemId,sItemName)
	BattleChallenge_UseStatusBuyItem(nItemId,sItemName)
end
--暴击药水
tItem[3320783] = tItem[3320782]
--坚固药水
tItem[3320784] = tItem[3320782]
--防暴药水
tItem[3320785] = tItem[3320782]
--物伤药水
tItem[3320786] = tItem[3320782]
--法伤药水
tItem[3320787] = tItem[3320782]
--物抗药水
tItem[3320788] = tItem[3320782]
--法抗药水
tItem[3320789] = tItem[3320782]

---------------------------------------------怪物模块---------------------------------------------
-- local tBattleChallenge_KillBoss = {}
	-- tBattleChallenge_KillBoss["ActivityTime"] = tBattleChallenge_Time["ActivityTime"]
	-- tBattleChallenge_KillBoss["Function"]= BattleChallenge_KillBoss
	-- tBattleChallenge_KillBoss["MonsterId"] = {5061,5086,5111,5136,5161,5186,5211,5236,
																			-- 5062,5087,5112,5137,5162,5187,5212,5237,
																			-- 5063,5088,5113,5138,5163,5188,5213,5238,
																			-- 5064,5089,5114,5139,5164,5189,5214,5239,
																			-- 5065,5090,5115,5140,5165,5190,5215,5240,
																			-- 5066,5091,5116,5141,5166,5191,5216,5241,
																			-- 5067,5092,5117,5142,5167,5192,5217,5242,
																			-- 5068,5093,5118,5143,5168,5193,5218,5243,
																			-- 5069,5094,5119,5144,5169,5194,5219,5244,
																			-- 5070,5095,5120,5145,5170,5195,5220,5245,
																			-- 5071,5096,5121,5146,5171,5196,5221,5246,
																			-- 5072,5097,5122,5147,5172,5197,5222,5247,
																			-- 5073,5098,5123,5148,5173,5198,5223,5248,
																			-- 5074,5099,5124,5149,5174,5199,5224,5249,
																			-- 5075,5100,5125,5150,5175,5200,5225,5250,
																			-- 5076,5101,5126,5151,5176,5201,5226,5251,
																			-- 5077,5102,5127,5152,5177,5202,5227,5252,
																			-- 5078,5103,5128,5153,5178,5203,5228,5253,
																			-- 5079,5104,5129,5154,5179,5204,5229,5254,
																			-- 5080,5105,5130,5155,5180,5205,5230,5255,
																			-- 5081,5106,5131,5156,5181,5206,5231,5256,
																			-- 5082,5107,5132,5157,5182,5207,5232,5257,
																			-- 5083,5108,5133,5158,5183,5208,5233,5258,
																			-- 5084,5109,5134,5159,5184,5209,5234,5259,
																			-- 5085,5110,5135,5160,5185,5210,5235,5260}
	
	-- table.insert(tMonsterDrop_AreaLoad,tBattleChallenge_KillBoss)
	
--小怪掉落（普通服）
-- local tBattleChallenge_KillMonster = {}
	-- tBattleChallenge_KillMonster["ActivityTime"] = tBattleChallenge_Time["ActivityTime"]
	-- tBattleChallenge_KillMonster["Function"]= BattleChallenge_KillMonster
	-- table.insert(tMonsterDrop_AreaLoad,tBattleChallenge_KillMonster)

--小怪掉落（激情服）
-- local tBattleChallenge_KillMonster_NoGift = {}
	-- tBattleChallenge_KillMonster_NoGift["ActivityTime"] = tBattleChallenge_Time["ActivityTime"]
	-- tBattleChallenge_KillMonster_NoGift["Function"] = BattleChallenge_KillMonster
	-- tBattleChallenge_KillMonster_NoGift["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	-- 4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tBattleChallenge_KillMonster_NoGift)
	
---------------------------------------------陷阱模块---------------------------------------------
tTrap[2289] = tTrap[2289] or {}
tTrap[2289]["Function"] = function(nTrapId,nTrapType)
	BattleChallenge_GoBackToCity(nTrapId,nTrapType)
end

-- 排行榜
-- 23821,'巅峰强者榜'
tRankingFunc_Info[23821] = {}
tRankingFunc_Info[23821]["ActiveTime"] = tBattleChallenge_Time["RankTime"]
tRankingFunc_Info[23821]["Global"] = {53256,53257,53258,53259}
tRankingFunc_Info[23821]["RankNum"] = 10
tRankingFunc_Info[23821]["Reset"] = 1
tRankingFunc_Info[23821]["Mail"] = {}
tRankingFunc_Info[23821]["Mail"]["ActiveTime"] = tBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[23821]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[23821]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[23821]["Mail"]["HaveFunc"] = BattleChallenge_ReSetMailText
tRankingFunc_Info[23821]["Mail"]["Reward"] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[23821]["Mail"]["Reward"][1]["ActionId"] = 571404
tRankingFunc_Info[23821]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][1]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][1]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][1]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[23821]["Mail"]["Reward"][2]["ActionId"] = 571405
tRankingFunc_Info[23821]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][2]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][2]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][2]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[23821]["Mail"]["Reward"][3]["ActionId"] = 571406
tRankingFunc_Info[23821]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][3]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][3]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][3]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[23821]["Mail"]["Reward"][4]["ActionId"] = 571407
tRankingFunc_Info[23821]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][4]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][4]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][4]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[23821]["Mail"]["Reward"][5]["ActionId"] = 571408
tRankingFunc_Info[23821]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][5]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][5]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][5]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[23821]["Mail"]["Reward"][6]["ActionId"] = 571409
tRankingFunc_Info[23821]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][6]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][6]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][6]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[23821]["Mail"]["Reward"][7]["ActionId"] = 571410
tRankingFunc_Info[23821]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][7]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][7]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][7]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[23821]["Mail"]["Reward"][8]["ActionId"] = 571411
tRankingFunc_Info[23821]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][8]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][8]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][8]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[23821]["Mail"]["Reward"][9]["ActionId"] = 571412
tRankingFunc_Info[23821]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][9]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][9]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][9]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[23821]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[23821]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[23821]["Mail"]["Reward"][10]["ActionId"] = 571413
tRankingFunc_Info[23821]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[23821]["Mail"]["Reward"][10]["Title"] = tBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[23821]["Mail"]["Reward"][10]["Sender"] = tBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[23821]["Mail"]["Reward"][10]["Content"] = tBattleChallenge_Text["Mail"]["Total"]["Content"]

-- 23822,'每日勇者榜'
tRankingFunc_Info[23822] = {}
tRankingFunc_Info[23822]["ActiveTime"] = tBattleChallenge_Time["RankTime"]
tRankingFunc_Info[23822]["ResetTime"] = {}
tRankingFunc_Info[23822]["ResetTime"][1] = "00:00 00:05"
tRankingFunc_Info[23822]["Global"] = {53260,53261,53262,53263}
tRankingFunc_Info[23822]["BeforeGlobal"] = {53264,53265,53266,53267}
tRankingFunc_Info[23822]["RankNum"] = 10
tRankingFunc_Info[23822]["Mail"] = {}
tRankingFunc_Info[23822]["Mail"]["ActiveTime"] = tBattleChallenge_Time["DayAwardTime"]
tRankingFunc_Info[23822]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[23822]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[23822]["Mail"]["HaveFunc"] = BattleChallenge_ReSetMailText
tRankingFunc_Info[23822]["Mail"]["Reward"] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[23822]["Mail"]["Reward"][1]["ActionId"] = 571414
tRankingFunc_Info[23822]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][1]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][1]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][1]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[23822]["Mail"]["Reward"][2]["ActionId"] = 571415
tRankingFunc_Info[23822]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][2]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][2]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][2]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[23822]["Mail"]["Reward"][3]["ActionId"] = 571415
tRankingFunc_Info[23822]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][3]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][3]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][3]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[23822]["Mail"]["Reward"][4]["ActionId"] = 571416
tRankingFunc_Info[23822]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][4]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][4]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][4]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[23822]["Mail"]["Reward"][5]["ActionId"] = 571416
tRankingFunc_Info[23822]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][5]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][5]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][5]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[23822]["Mail"]["Reward"][6]["ActionId"] = 571416
tRankingFunc_Info[23822]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][6]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][6]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][6]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[23822]["Mail"]["Reward"][7]["ActionId"] = 571417
tRankingFunc_Info[23822]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][7]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][7]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][7]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[23822]["Mail"]["Reward"][8]["ActionId"] = 571417
tRankingFunc_Info[23822]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][8]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][8]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][8]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[23822]["Mail"]["Reward"][9]["ActionId"] = 571417
tRankingFunc_Info[23822]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][9]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][9]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][9]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]
tRankingFunc_Info[23822]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[23822]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[23822]["Mail"]["Reward"][10]["ActionId"] = 571417
tRankingFunc_Info[23822]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[23822]["Mail"]["Reward"][10]["Title"] = tBattleChallenge_Text["Mail"]["Day"]["Title"]
tRankingFunc_Info[23822]["Mail"]["Reward"][10]["Sender"] = tBattleChallenge_Text["Mail"]["Day"]["Sender"]
tRankingFunc_Info[23822]["Mail"]["Reward"][10]["Content"] = tBattleChallenge_Text["Mail"]["Day"]["Content"]


