------------------------------------------------------------------------------------
--Name：	190418[简体征服][任务脚本]新手体验服-副本测试版
--Creator:	林旭
--Created:	2019/04/18
------------------------------------------------------------------------------------
-- 任务需求：
-- 命名前缀：RookieExpInstance_
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 常量
local tRookieExpInstance_Cont = {}
	-- 职业Id
	-- 见习勇士
	tRookieExpInstance_Cont["MinProjan"] = 10
	-- 武神
	tRookieExpInstance_Cont["MaxProjan"] = 15
	-- 赤炼石+1
	tRookieExpInstance_Cont["Stone+1"] = 730001
	-- 赤炼石+9
	tRookieExpInstance_Cont["Stone+9"] = 730009
	-- 职业经验
	tRookieExpInstance_Cont["ProExp"] = 5000
	tRookieExpInstance_Cont["NpcId"] = 23966
	-- 宝箱创建
	tRookieExpInstance_Cont["Peace"] = {}
	tRookieExpInstance_Cont["Peace"]["ActionId"] = 97306816
	tRookieExpInstance_Cont["Peace"]["LookFace"] = 18177
	-- NPC等级需求
	tRookieExpInstance_Cont[23966] = {}
	tRookieExpInstance_Cont[23966]["Mete"] = 0
	tRookieExpInstance_Cont[23966]["Level"] = 20
	tRookieExpInstance_Cont[23967] = {}
	tRookieExpInstance_Cont[23967]["Mete"] = 0
	tRookieExpInstance_Cont[23967]["Level"] = 105
	
	tRookieExpInstance_Cont["Level"] = 40
	tRookieExpInstance_Cont["Mete"] = 0
	
	tRookieExpInstance_Cont["MagicType"] = {}
	tRookieExpInstance_Cont["MagicType"][410] = 15870
	tRookieExpInstance_Cont["MagicType"][420] = 15880
	tRookieExpInstance_Cont["MagicType"][430] = 15930
	tRookieExpInstance_Cont["MagicType"][440] = 15920
	tRookieExpInstance_Cont["MagicType"][450] = 15940
	tRookieExpInstance_Cont["MagicType"][460] = 15860
	tRookieExpInstance_Cont["MagicType"][480] = 15910
	tRookieExpInstance_Cont["MagicType"][481] = 15890
	tRookieExpInstance_Cont["MagicType"][490] = 15900
	
	
	-- 领取奖励掩码
local tRookieExpInstance_STC = {}
	tRookieExpInstance_STC["Reward"] = {}
	tRookieExpInstance_STC["Reward"]["Event"] = 197
	tRookieExpInstance_STC["Reward"]["Data"] = 19
	
-- 传送回双龙
local tRookieExpInstance_TranBack = {}
	tRookieExpInstance_TranBack["Normal"] = {}
	tRookieExpInstance_TranBack["Normal"]["MapId"] = 1002
	tRookieExpInstance_TranBack["Normal"]["PosX"] = 326
	tRookieExpInstance_TranBack["Normal"]["PosY"] = 440
	tRookieExpInstance_TranBack["NoGift"] = {}
	tRookieExpInstance_TranBack["NoGift"]["MapId"] = 1036
	tRookieExpInstance_TranBack["NoGift"]["PosX"] = 200
	tRookieExpInstance_TranBack["NoGift"]["PosY"] = 188
	
-- 宝箱位置
local tRookieExpInstance_NpcPos = {}
	tRookieExpInstance_NpcPos[1049] = {}
	tRookieExpInstance_NpcPos[1049]["PosX"] = 57
	tRookieExpInstance_NpcPos[1049]["PosY"] = 57
	tRookieExpInstance_NpcPos[1051] = {}
	tRookieExpInstance_NpcPos[1051]["PosX"] = 50
	tRookieExpInstance_NpcPos[1051]["PosY"] = 50
	tRookieExpInstance_NpcPos[1053] = {}
	tRookieExpInstance_NpcPos[1053]["PosX"] = 23
	tRookieExpInstance_NpcPos[1053]["PosY"] = 28
	tRookieExpInstance_NpcPos[1055] = {}
	tRookieExpInstance_NpcPos[1055]["PosX"] = 48
	tRookieExpInstance_NpcPos[1055]["PosY"] = 48
	tRookieExpInstance_NpcPos[1057] = {}
	tRookieExpInstance_NpcPos[1057]["PosX"] = 85
	tRookieExpInstance_NpcPos[1057]["PosY"] = 73
	tRookieExpInstance_NpcPos[1059] = {}
	tRookieExpInstance_NpcPos[1059]["PosX"] = 30
	tRookieExpInstance_NpcPos[1059]["PosY"] = 35
	tRookieExpInstance_NpcPos[1061] = {}
	tRookieExpInstance_NpcPos[1061]["PosX"] = 131
	tRookieExpInstance_NpcPos[1061]["PosY"] = 103
	tRookieExpInstance_NpcPos[1063] = {}
	tRookieExpInstance_NpcPos[1063]["PosX"] = 30
	tRookieExpInstance_NpcPos[1063]["PosY"] = 40
	tRookieExpInstance_NpcPos[1065] = {}
	tRookieExpInstance_NpcPos[1065]["PosX"] = 49
	tRookieExpInstance_NpcPos[1065]["PosY"] = 60
	tRookieExpInstance_NpcPos[1067] = {}
	tRookieExpInstance_NpcPos[1067]["PosX"] = 53
	tRookieExpInstance_NpcPos[1067]["PosY"] = 67
	tRookieExpInstance_NpcPos[1069] = {}
	tRookieExpInstance_NpcPos[1069]["PosX"] = 43
	tRookieExpInstance_NpcPos[1069]["PosY"] = 55
	tRookieExpInstance_NpcPos[1071] = {}
	tRookieExpInstance_NpcPos[1071]["PosX"] = 100
	tRookieExpInstance_NpcPos[1071]["PosY"] = 100
	
-- 召唤BOSS
local tRookieExpInstance_BossAdd = {}
	tRookieExpInstance_BossAdd[1048] = {}
	tRookieExpInstance_BossAdd[1048]["PosX"] = 57
	tRookieExpInstance_BossAdd[1048]["PosY"] = 57
	tRookieExpInstance_BossAdd[1048]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1050] = {}
	tRookieExpInstance_BossAdd[1050]["PosX"] = 50
	tRookieExpInstance_BossAdd[1050]["PosY"] = 50
	tRookieExpInstance_BossAdd[1050]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1052] = {}
	tRookieExpInstance_BossAdd[1052]["PosX"] = 23
	tRookieExpInstance_BossAdd[1052]["PosY"] = 28
	tRookieExpInstance_BossAdd[1052]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1054] = {}
	tRookieExpInstance_BossAdd[1054]["PosX"] = 49
	tRookieExpInstance_BossAdd[1054]["PosY"] = 49
	tRookieExpInstance_BossAdd[1054]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1056] = {}
	tRookieExpInstance_BossAdd[1056]["PosX"] = 85
	tRookieExpInstance_BossAdd[1056]["PosY"] = 73
	tRookieExpInstance_BossAdd[1056]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1058] = {}
	tRookieExpInstance_BossAdd[1058]["PosX"] = 30
	tRookieExpInstance_BossAdd[1058]["PosY"] = 35
	tRookieExpInstance_BossAdd[1058]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1060] = {}
	tRookieExpInstance_BossAdd[1060]["PosX"] = 131
	tRookieExpInstance_BossAdd[1060]["PosY"] = 103
	tRookieExpInstance_BossAdd[1060]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1062] = {}
	tRookieExpInstance_BossAdd[1062]["PosX"] = 30
	tRookieExpInstance_BossAdd[1062]["PosY"] = 40
	tRookieExpInstance_BossAdd[1062]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1064] = {}
	tRookieExpInstance_BossAdd[1064]["PosX"] = 49
	tRookieExpInstance_BossAdd[1064]["PosY"] = 60
	tRookieExpInstance_BossAdd[1064]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1066] = {}
	tRookieExpInstance_BossAdd[1066]["PosX"] = 53
	tRookieExpInstance_BossAdd[1066]["PosY"] = 67
	tRookieExpInstance_BossAdd[1066]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1068] = {}
	tRookieExpInstance_BossAdd[1068]["PosX"] = 43
	tRookieExpInstance_BossAdd[1068]["PosY"] = 55
	tRookieExpInstance_BossAdd[1068]["GenId"] = 27254
	tRookieExpInstance_BossAdd[1070] = {}
	tRookieExpInstance_BossAdd[1070]["PosX"] = 100
	tRookieExpInstance_BossAdd[1070]["PosY"] = 100
	tRookieExpInstance_BossAdd[1070]["GenId"] = 27254
	
-- 新的杂兵
local tRookieExpInstance_MonsterAdd = {}
	tRookieExpInstance_MonsterAdd[1048] = {}
	tRookieExpInstance_MonsterAdd[1048][1] = {}
	tRookieExpInstance_MonsterAdd[1048][1]["PosX"] = 57
	tRookieExpInstance_MonsterAdd[1048][1]["PosY"] = 57
	tRookieExpInstance_MonsterAdd[1048][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1050] = {}
	tRookieExpInstance_MonsterAdd[1050][1] = {}
	tRookieExpInstance_MonsterAdd[1050][1]["PosX"] = 50
	tRookieExpInstance_MonsterAdd[1050][1]["PosY"] = 50
	tRookieExpInstance_MonsterAdd[1050][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1052] = {}
	tRookieExpInstance_MonsterAdd[1052][1] = {}
	tRookieExpInstance_MonsterAdd[1052][1]["PosX"] = 23
	tRookieExpInstance_MonsterAdd[1052][1]["PosY"] = 28
	tRookieExpInstance_MonsterAdd[1052][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1054] = {}
	tRookieExpInstance_MonsterAdd[1054][1] = {}
	tRookieExpInstance_MonsterAdd[1054][1]["Num"] = 8
	tRookieExpInstance_MonsterAdd[1054][1]["PosX"] = 52
	tRookieExpInstance_MonsterAdd[1054][1]["PosY"] = 52
	tRookieExpInstance_MonsterAdd[1054][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1054][2] = {}
	tRookieExpInstance_MonsterAdd[1054][2]["Num"] = 4
	tRookieExpInstance_MonsterAdd[1054][2]["PosX"] = 61
	tRookieExpInstance_MonsterAdd[1054][2]["PosY"] = 61
	tRookieExpInstance_MonsterAdd[1054][2]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1056] = {}
	tRookieExpInstance_MonsterAdd[1056][1] = {}
	tRookieExpInstance_MonsterAdd[1056][1]["PosX"] = 85
	tRookieExpInstance_MonsterAdd[1056][1]["PosY"] = 73
	tRookieExpInstance_MonsterAdd[1056][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1058] = {}
	tRookieExpInstance_MonsterAdd[1058][1] = {}
	tRookieExpInstance_MonsterAdd[1058][1]["PosX"] = 30
	tRookieExpInstance_MonsterAdd[1058][1]["PosY"] = 35
	tRookieExpInstance_MonsterAdd[1058][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1060] = {}
	tRookieExpInstance_MonsterAdd[1060][1] = {}
	tRookieExpInstance_MonsterAdd[1060][1]["PosX"] = 131
	tRookieExpInstance_MonsterAdd[1060][1]["PosY"] = 103
	tRookieExpInstance_MonsterAdd[1060][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1062] = {}
	tRookieExpInstance_MonsterAdd[1062][1] = {}
	tRookieExpInstance_MonsterAdd[1062][1]["PosX"] = 30
	tRookieExpInstance_MonsterAdd[1062][1]["PosY"] = 40
	tRookieExpInstance_MonsterAdd[1062][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1064] = {}
	tRookieExpInstance_MonsterAdd[1064][1] = {}
	tRookieExpInstance_MonsterAdd[1064][1]["PosX"] = 49
	tRookieExpInstance_MonsterAdd[1064][1]["PosY"] = 60
	tRookieExpInstance_MonsterAdd[1064][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1066] = {}
	tRookieExpInstance_MonsterAdd[1066][1] = {}
	tRookieExpInstance_MonsterAdd[1066][1]["PosX"] = 53
	tRookieExpInstance_MonsterAdd[1066][1]["PosY"] = 67
	tRookieExpInstance_MonsterAdd[1066][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1068] = {}
	tRookieExpInstance_MonsterAdd[1068][1] = {}
	tRookieExpInstance_MonsterAdd[1068][1]["PosX"] = 43
	tRookieExpInstance_MonsterAdd[1068][1]["PosY"] = 55
	tRookieExpInstance_MonsterAdd[1068][1]["GenId"] = 27254
	tRookieExpInstance_MonsterAdd[1070] = {}
	tRookieExpInstance_MonsterAdd[1070][1] = {}
	tRookieExpInstance_MonsterAdd[1070][1]["PosX"] = 100
	tRookieExpInstance_MonsterAdd[1070][1]["PosY"] = 100
	tRookieExpInstance_MonsterAdd[1070][1]["GenId"] = 27254
	
-- 副本
local tRookieExpInstance_Instance = {}
	tRookieExpInstance_Instance[260] = {}
	tRookieExpInstance_Instance[260]["Mete"] = 0
	tRookieExpInstance_Instance[260]["Level"] = 20
	tRookieExpInstance_Instance[260]["Pro"] = 1
	tRookieExpInstance_Instance[260]["Type"] = 260
	tRookieExpInstance_Instance[260]["Monster"] = {}
	tRookieExpInstance_Instance[260]["Monster"][1] = {}
	tRookieExpInstance_Instance[260]["Monster"][1]["PosX"] = 57
	tRookieExpInstance_Instance[260]["Monster"][1]["PosY"] = 57
	tRookieExpInstance_Instance[260]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[260]["Monster"][1]["MonsterId"] = 1048
	tRookieExpInstance_Instance[260]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[260]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[261] = {}
	tRookieExpInstance_Instance[261]["Mete"] = 0
	tRookieExpInstance_Instance[261]["Level"] = 30
	tRookieExpInstance_Instance[261]["Pro"] = 1
	tRookieExpInstance_Instance[261]["Type"] = 261
	tRookieExpInstance_Instance[261]["Monster"] = {}
	tRookieExpInstance_Instance[261]["Monster"][1] = {}
	tRookieExpInstance_Instance[261]["Monster"][1]["PosX"] = 50
	tRookieExpInstance_Instance[261]["Monster"][1]["PosY"] = 50
	tRookieExpInstance_Instance[261]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[261]["Monster"][1]["MonsterId"] = 1050
	tRookieExpInstance_Instance[261]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[261]["Monster"]["MonsterNum"] = 12
	tRookieExpInstance_Instance[262] = {}
	tRookieExpInstance_Instance[262]["Mete"] = 0
	tRookieExpInstance_Instance[262]["Level"] = 35
	tRookieExpInstance_Instance[262]["Pro"] = 1
	tRookieExpInstance_Instance[262]["Type"] = 262
	tRookieExpInstance_Instance[262]["Monster"] = {}
	tRookieExpInstance_Instance[262]["Monster"][1] = {}
	tRookieExpInstance_Instance[262]["Monster"][1]["PosX"] = 23
	tRookieExpInstance_Instance[262]["Monster"][1]["PosY"] = 28
	tRookieExpInstance_Instance[262]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[262]["Monster"][1]["MonsterId"] = 1052
	tRookieExpInstance_Instance[262]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[262]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[263] = {}
	tRookieExpInstance_Instance[263]["Mete"] = 0
	tRookieExpInstance_Instance[263]["Level"] = 40
	tRookieExpInstance_Instance[263]["Pro"] = 1
	tRookieExpInstance_Instance[263]["Type"] = 263
	tRookieExpInstance_Instance[263]["Monster"] = {}
	tRookieExpInstance_Instance[263]["Monster"][1] = {}
	tRookieExpInstance_Instance[263]["Monster"][1]["PosX"] = 68
	tRookieExpInstance_Instance[263]["Monster"][1]["PosY"] = 68
	tRookieExpInstance_Instance[263]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[263]["Monster"][1]["MonsterId"] = 1054
	tRookieExpInstance_Instance[263]["Monster"][1]["ChkNum"] = 8
	tRookieExpInstance_Instance[263]["Monster"][1]["MonsterNum"] = 8
	tRookieExpInstance_Instance[263]["Monster"][2] = {}
	tRookieExpInstance_Instance[263]["Monster"][2]["PosX"] = 76
	tRookieExpInstance_Instance[263]["Monster"][2]["PosY"] = 76
	tRookieExpInstance_Instance[263]["Monster"][2]["GenId"] = 27254
	tRookieExpInstance_Instance[263]["Monster"][2]["MonsterId"] = 1054
	tRookieExpInstance_Instance[263]["Monster"][2]["ChkNum"] = 12
	tRookieExpInstance_Instance[263]["Monster"][2]["MonsterNum"] = 4
	tRookieExpInstance_Instance[263]["MsgBox"] = tRookieExpInstance_Text["Instance"][263]
	tRookieExpInstance_Instance[264] = {}
	tRookieExpInstance_Instance[264]["Mete"] = 0
	tRookieExpInstance_Instance[264]["Level"] = 40
	tRookieExpInstance_Instance[264]["Pro"] = 1
	tRookieExpInstance_Instance[264]["Type"] = 264
	tRookieExpInstance_Instance[264]["Monster"] = {}
	tRookieExpInstance_Instance[264]["Monster"][1] = {}
	tRookieExpInstance_Instance[264]["Monster"][1]["PosX"] = 85
	tRookieExpInstance_Instance[264]["Monster"][1]["PosY"] = 73
	tRookieExpInstance_Instance[264]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[264]["Monster"][1]["MonsterId"] = 1056
	tRookieExpInstance_Instance[264]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[264]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[265] = {}
	tRookieExpInstance_Instance[265]["Mete"] = 0
	tRookieExpInstance_Instance[265]["Level"] = 45
	tRookieExpInstance_Instance[265]["Pro"] = 1
	tRookieExpInstance_Instance[265]["Type"] = 265
	tRookieExpInstance_Instance[265]["Monster"] = {}
	tRookieExpInstance_Instance[265]["Monster"][1] = {}
	tRookieExpInstance_Instance[265]["Monster"][1]["PosX"] = 30
	tRookieExpInstance_Instance[265]["Monster"][1]["PosY"] = 35
	tRookieExpInstance_Instance[265]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[265]["Monster"][1]["MonsterId"] = 1058
	tRookieExpInstance_Instance[265]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[265]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[266] = {}
	tRookieExpInstance_Instance[266]["Mete"] = 0
	tRookieExpInstance_Instance[266]["Level"] = 80
	tRookieExpInstance_Instance[266]["Pro"] = 1
	tRookieExpInstance_Instance[266]["Type"] = 266
	tRookieExpInstance_Instance[266]["Monster"] = {}
	tRookieExpInstance_Instance[266]["Monster"][1] = {}
	tRookieExpInstance_Instance[266]["Monster"][1]["PosX"] = 131
	tRookieExpInstance_Instance[266]["Monster"][1]["PosY"] = 103
	tRookieExpInstance_Instance[266]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[266]["Monster"][1]["MonsterId"] = 1060
	tRookieExpInstance_Instance[266]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[266]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[267] = {}
	tRookieExpInstance_Instance[267]["Mete"] = 0
	tRookieExpInstance_Instance[267]["Level"] = 105
	tRookieExpInstance_Instance[267]["Pro"] = 1
	tRookieExpInstance_Instance[267]["Type"] = 267
	tRookieExpInstance_Instance[267]["Monster"] = {}
	tRookieExpInstance_Instance[267]["Monster"][1] = {}
	tRookieExpInstance_Instance[267]["Monster"][1]["PosX"] = 30
	tRookieExpInstance_Instance[267]["Monster"][1]["PosY"] = 40
	tRookieExpInstance_Instance[267]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[267]["Monster"][1]["MonsterId"] = 1062
	tRookieExpInstance_Instance[267]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[267]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[268] = {}
	tRookieExpInstance_Instance[268]["Mete"] = 0
	tRookieExpInstance_Instance[268]["Level"] = 110
	tRookieExpInstance_Instance[268]["Pro"] = 1
	tRookieExpInstance_Instance[268]["Type"] = 268
	tRookieExpInstance_Instance[268]["Monster"] = {}
	tRookieExpInstance_Instance[268]["Monster"][1] = {}
	tRookieExpInstance_Instance[268]["Monster"][1]["PosX"] = 49
	tRookieExpInstance_Instance[268]["Monster"][1]["PosY"] = 60
	tRookieExpInstance_Instance[268]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[268]["Monster"][1]["MonsterId"] = 1064
	tRookieExpInstance_Instance[268]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[268]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[269] = {}
	tRookieExpInstance_Instance[269]["Mete"] = 0
	tRookieExpInstance_Instance[269]["Level"] = 120
	tRookieExpInstance_Instance[269]["Pro"] = 1
	tRookieExpInstance_Instance[269]["Type"] = 269
	tRookieExpInstance_Instance[269]["Monster"] = {}
	tRookieExpInstance_Instance[269]["Monster"][1] = {}
	tRookieExpInstance_Instance[269]["Monster"][1]["PosX"] = 53
	tRookieExpInstance_Instance[269]["Monster"][1]["PosY"] = 67
	tRookieExpInstance_Instance[269]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[269]["Monster"][1]["MonsterId"] = 1066
	tRookieExpInstance_Instance[269]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[269]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[270] = {}
	tRookieExpInstance_Instance[270]["Mete"] = 0
	tRookieExpInstance_Instance[270]["Level"] = 122
	tRookieExpInstance_Instance[270]["Pro"] = 1
	tRookieExpInstance_Instance[270]["Type"] = 270
	tRookieExpInstance_Instance[270]["Monster"] = {}
	tRookieExpInstance_Instance[270]["Monster"][1] = {}
	tRookieExpInstance_Instance[270]["Monster"][1]["PosX"] = 43
	tRookieExpInstance_Instance[270]["Monster"][1]["PosY"] = 55
	tRookieExpInstance_Instance[270]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[270]["Monster"][1]["MonsterId"] = 1068
	tRookieExpInstance_Instance[270]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[270]["Monster"][1]["MonsterNum"] = 12
	tRookieExpInstance_Instance[271] = {}
	tRookieExpInstance_Instance[271]["Mete"] = 0
	tRookieExpInstance_Instance[271]["Level"] = 127
	tRookieExpInstance_Instance[271]["Pro"] = 1
	tRookieExpInstance_Instance[271]["Type"] = 271
	tRookieExpInstance_Instance[271]["Monster"] = {}
	tRookieExpInstance_Instance[271]["Monster"][1] = {}
	tRookieExpInstance_Instance[271]["Monster"][1]["PosX"] = 100
	tRookieExpInstance_Instance[271]["Monster"][1]["PosY"] = 100
	tRookieExpInstance_Instance[271]["Monster"][1]["GenId"] = 27254
	tRookieExpInstance_Instance[271]["Monster"][1]["MonsterId"] = 1070
	tRookieExpInstance_Instance[271]["Monster"][1]["ChkNum"] = 12
	tRookieExpInstance_Instance[271]["Monster"][1]["MonsterNum"] = 12
	
	-- 奖励
local tRookieExpInstance_Reward = {}
	-- ===勇士职业获得的奖励
	-- ===索引: tRookieExpInstance_Reward[1]
	tRookieExpInstance_Reward[1] = {}
	tRookieExpInstance_Reward[1]["ItemChanceSum"] = 10000
	tRookieExpInstance_Reward[1]["LogId"] = 12001440
	-- 铸灵材料-- 【必给】
	tRookieExpInstance_Reward[1][1] = {}
	tRookieExpInstance_Reward[1][1]["RandomItemChanceType"] = 1
	tRookieExpInstance_Reward[1][1]["RewardItem"] = {}
	tRookieExpInstance_Reward[1][1]["RewardItem"][1] = {}
	tRookieExpInstance_Reward[1][1]["RewardItem"][1]["Id"] = 3312953 -- --2019.6.19奖励修改为 上古神兵残魂 ----【旧】【库】神兵灵魄[属性:9], 【表格】铸灵材料 
	tRookieExpInstance_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1" --上古神兵残魂*1 -- 【旧】 神兵灵魄*10
	tRookieExpInstance_Reward[1][1]["RewardItem"][2] = {}
	tRookieExpInstance_Reward[1][1]["RewardItem"][2]["Id"] = 3312954 -- --2019.6.19奖励修改为 炼魂玉原石 ----【旧】【库】神兵灵魄[属性:9], 【表格】铸灵材料
	tRookieExpInstance_Reward[1][1]["RewardItem"][2]["Attr"] = "0 1" --炼魂玉原石*1 -- 【旧】 神兵灵魄*10
	tRookieExpInstance_Reward[1][1]["RewardEffect"] = {}
	tRookieExpInstance_Reward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRookieExpInstance_Reward[1][1]["RewardEffect"]["Effect"] = "Attack35r"
			-- 【stc（197,19）】1天（零点重置）1个
	tRookieExpInstance_Reward[1][1]["EventType"] = 197
	tRookieExpInstance_Reward[1][1]["DataType"] = 19
	tRookieExpInstance_Reward[1][1]["RewardDelay"] = 1
	tRookieExpInstance_Reward[1][1]["RewardTimeType"] = 4
	tRookieExpInstance_Reward[1][1]["RewardData"] = 1
	tRookieExpInstance_Reward[1][1]["HaveReceiveNoTip"] = 1
	-- -- 低级炼魂 - 95.00%
	-- tRookieExpInstance_Reward[1][2] = {}
	-- tRookieExpInstance_Reward[1][2]["RandomItemChanceType"] = 2
	-- tRookieExpInstance_Reward[1][2]["ItemChance"] = 9500
	-- tRookieExpInstance_Reward[1][2]["RewardItem"] = {}
	-- tRookieExpInstance_Reward[1][2]["RewardItem"][1] = {}
	-- tRookieExpInstance_Reward[1][2]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】低级炼魂
	-- tRookieExpInstance_Reward[1][2]["RewardItem"][1]["Attr"] = "0 5" -- 炼魂石*5
	-- tRookieExpInstance_Reward[1][2]["RewardEffect"] = {}
	-- tRookieExpInstance_Reward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tRookieExpInstance_Reward[1][2]["RewardEffect"]["Effect"] = "Attack35r"
	-- -- 高级炼魂 - 5.00%
	-- tRookieExpInstance_Reward[1][3] = {}
	-- tRookieExpInstance_Reward[1][3]["RandomItemChanceType"] = 2
	-- tRookieExpInstance_Reward[1][3]["ItemChance"] = 500
	-- tRookieExpInstance_Reward[1][3]["RewardItem"] = {}
	-- tRookieExpInstance_Reward[1][3]["RewardItem"][1] = {}
	-- tRookieExpInstance_Reward[1][3]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】高级炼魂
	-- tRookieExpInstance_Reward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- 鸿蒙炼魂玉*1
	-- tRookieExpInstance_Reward[1][3]["RewardEffect"] = {}
	-- tRookieExpInstance_Reward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tRookieExpInstance_Reward[1][3]["RewardEffect"]["Effect"] = "Attack35r"


	tRookieExpInstance_Reward[2] = {}
	-- ===其他职业获得的奖励
	-- ===索引: tRookieExpInstance_Reward[2]
	tRookieExpInstance_Reward[2]["ItemChanceSum"] = 10000
	tRookieExpInstance_Reward[2]["LogId"] = 12001440
	-- 300气力值 - 80.00%
	tRookieExpInstance_Reward[2][1] = {}
	tRookieExpInstance_Reward[2][1]["RandomItemChanceType"] = 2
	tRookieExpInstance_Reward[2][1]["ItemChance"] = 8000
	tRookieExpInstance_Reward[2][1]["RewardStrengthValue"] = {}
	tRookieExpInstance_Reward[2][1]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300气力值
	tRookieExpInstance_Reward[2][1]["RewardEffect"] = {}
	tRookieExpInstance_Reward[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRookieExpInstance_Reward[2][1]["RewardEffect"]["Effect"] = "Attack35r"
	-- 1000气力值 - 15.00%
	tRookieExpInstance_Reward[2][2] = {}
	tRookieExpInstance_Reward[2][2]["RandomItemChanceType"] = 2
	tRookieExpInstance_Reward[2][2]["ItemChance"] = 1500
	tRookieExpInstance_Reward[2][2]["RewardStrengthValue"] = {}
	tRookieExpInstance_Reward[2][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tRookieExpInstance_Reward[2][2]["RewardEffect"] = {}
	tRookieExpInstance_Reward[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRookieExpInstance_Reward[2][2]["RewardEffect"]["Effect"] = "Attack35r"
	-- 3000气力值 - 5.00%
	tRookieExpInstance_Reward[2][3] = {}
	tRookieExpInstance_Reward[2][3]["RandomItemChanceType"] = 2
	tRookieExpInstance_Reward[2][3]["ItemChance"] = 500
	tRookieExpInstance_Reward[2][3]["RewardStrengthValue"] = {}
	tRookieExpInstance_Reward[2][3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tRookieExpInstance_Reward[2][3]["RewardEffect"] = {}
	tRookieExpInstance_Reward[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRookieExpInstance_Reward[2][3]["RewardEffect"]["Effect"] = "Attack35r"


	tRookieExpInstance_Reward[3] = {}
	-- ===其他职业获得的奖励
	-- ===索引: tRookieExpInstance_Reward[3]
	tRookieExpInstance_Reward[3]["ItemChanceSum"] = 10000
	tRookieExpInstance_Reward[3]["LogId"] = 12001440
	-- 赤炼石+3 - 20.00%
	tRookieExpInstance_Reward[3][1] = {}
	tRookieExpInstance_Reward[3][1]["RandomItemChanceType"] = 2
	tRookieExpInstance_Reward[3][1]["ItemChance"] = 2000
	tRookieExpInstance_Reward[3][1]["RewardItem"] = {}
	tRookieExpInstance_Reward[3][1]["RewardItem"][1] = {}
	tRookieExpInstance_Reward[3][1]["RewardItem"][1]["Id"] = 730003 -- 【库】+3赤炼石[属性:0], 【表格】赤炼石+3
	tRookieExpInstance_Reward[3][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石（赠）*1
	tRookieExpInstance_Reward[3][1]["RewardEffect"] = {}
	tRookieExpInstance_Reward[3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRookieExpInstance_Reward[3][1]["RewardEffect"]["Effect"] = "Attack35r"
			-- 【stc（197,19）】1天（零点重置）1个
	tRookieExpInstance_Reward[3][1]["EventType"] = 197
	tRookieExpInstance_Reward[3][1]["DataType"] = 19
	tRookieExpInstance_Reward[3][1]["RewardDelay"] = 1
	tRookieExpInstance_Reward[3][1]["RewardTimeType"] = 4
	tRookieExpInstance_Reward[3][1]["RewardData"] = 1
	-- 明亮星陨石 - 30.00%
	tRookieExpInstance_Reward[3][2] = {}
	tRookieExpInstance_Reward[3][2]["RandomItemChanceType"] = 2
	tRookieExpInstance_Reward[3][2]["ItemChance"] = 3000
	tRookieExpInstance_Reward[3][2]["RewardItem"] = {}
	tRookieExpInstance_Reward[3][2]["RewardItem"][1] = {}
	tRookieExpInstance_Reward[3][2]["RewardItem"][1]["Id"] = 3009001 -- 【库】明亮星陨石[属性:9], 【表格】明亮星陨石
	tRookieExpInstance_Reward[3][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tRookieExpInstance_Reward[3][2]["RewardEffect"] = {}
	tRookieExpInstance_Reward[3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRookieExpInstance_Reward[3][2]["RewardEffect"]["Effect"] = "Attack35r"
			-- 【stc（197,19）】1天（零点重置）1个
	tRookieExpInstance_Reward[3][2]["EventType"] = 197
	tRookieExpInstance_Reward[3][2]["DataType"] = 19
	tRookieExpInstance_Reward[3][2]["RewardDelay"] = 1
	tRookieExpInstance_Reward[3][2]["RewardTimeType"] = 4
	tRookieExpInstance_Reward[3][2]["RewardData"] = 1
	-- 人参果 - 50.00%
	tRookieExpInstance_Reward[3][3] = {}
	tRookieExpInstance_Reward[3][3]["RandomItemChanceType"] = 2
	tRookieExpInstance_Reward[3][3]["ItemChance"] = 5000
	tRookieExpInstance_Reward[3][3]["RewardItem"] = {}
	tRookieExpInstance_Reward[3][3]["RewardItem"][1] = {}
	tRookieExpInstance_Reward[3][3]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果
	tRookieExpInstance_Reward[3][3]["RewardItem"][1]["Attr"] = "0 1" -- 人参果*1
	tRookieExpInstance_Reward[3][3]["RewardEffect"] = {}
	tRookieExpInstance_Reward[3][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRookieExpInstance_Reward[3][3]["RewardEffect"]["Effect"] = "Attack35r"
			-- 【stc（197,19）】1天（零点重置）1个
	tRookieExpInstance_Reward[3][3]["EventType"] = 197
	tRookieExpInstance_Reward[3][3]["DataType"] = 19
	tRookieExpInstance_Reward[3][3]["RewardDelay"] = 1
	tRookieExpInstance_Reward[3][3]["RewardTimeType"] = 4
	tRookieExpInstance_Reward[3][3]["RewardData"] = 1
	
-- 检测队伍进入副本条件
local tRookieExpInstance_TeamCheck = {}
-- 怪物波数
local tRookieExpInstance_Monster = {}
----------------------------------逻辑部分---------------------------------------------
-- 确定进入副本
function RookieExpInstance_EnterConfirm(nInstance)
	local nUserId = Get_UserId()
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	-- 仅未组队和队长可点击
	if nTeamNum <= 1 then
		if RookieExpInstance_CheckLevel(nInstance) then
			RookieExpInstance_Enter(nInstance)
		else
			Sys_MsgBox(tRookieExpInstance_Text["NoLevel"])
		end
	else
		--只能队长发起
		if not User_IsTeamLeader(nUserId) then
			Sys_MsgBox(tRookieExpInstance_Text["NoLeader"])
			return
		end
		local nTeamId = Get_UserTeamId(nUserId)
		tRookieExpInstance_TeamCheck[nTeamId] = nil
		User_TeamExeFuncByTeamer(3,"RookieExpInstance_TeamCheckLevel</N>"..nInstance)
		if tRookieExpInstance_TeamCheck[nTeamId] == false then
			Sys_MsgBox(tRookieExpInstance_Text["TeamNoLevel"])
			return
		end
		User_TeamExeFuncByTeamer(3,"RookieExpInstance_TeamTooFar")
		if tRookieExpInstance_TeamCheck[nTeamId] == false then
			Sys_MsgBox(tRookieExpInstance_Text["TeamTooFar"])
			return
		end
		User_TeamExeFuncByTeamer(3,"RookieExpInstance_Enter</N>"..nInstance)
	end
end

-- 检测等级
function RookieExpInstance_CheckLevel(nInstance)
	local tInstance = tRookieExpInstance_Instance[nInstance]
	local nMete = tInstance["Mete"]
	local nLevel = tInstance["Level"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 检测队伍成员等级
function RookieExpInstance_TeamCheckLevel(nInstance,nUserId)
	local nTeamId = Get_UserTeamId(nUserId)
	if tRookieExpInstance_TeamCheck[nTeamId] ~= nil then
		if tRookieExpInstance_TeamCheck[nTeamId] == false then
			return
		end
	end
	
	local tInstance = tRookieExpInstance_Instance[nInstance]
	local nLevel = tInstance["Level"]
	local nMete = tInstance["Mete"]
	
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete,nUserId) then
		tRookieExpInstance_TeamCheck[nTeamId] = true
	else
		tRookieExpInstance_TeamCheck[nTeamId] = false
	end
end

--判断队伍中是否有人离NPC较远
function RookieExpInstance_TeamTooFar(nUserId)
	local nTeamId = Get_UserTeamId(nUserId)
	if tRookieExpInstance_TeamCheck[nTeamId] ~= nil then
		if tRookieExpInstance_TeamCheck[nTeamId] == false then
			return
		end
	end
	-- 获得玩家坐标
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	-- 获得NPC坐标
	local nNpcId = tRookieExpInstance_Cont["NpcId"]
	local nNpcMapId = Get_NpcMapID(nNpcId)
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	
	if nMapId == nNpcMapId then
		if math.abs(nPosX-nNpcPosX) < 10 and math.abs(nPosY-nNpcPosY) < 10 then
			tRookieExpInstance_TeamCheck[nTeamId] = true
		else
			tRookieExpInstance_TeamCheck[nTeamId] = false
		end
	else
		tRookieExpInstance_TeamCheck[nTeamId] = false
	end
end

-- 进入副本
function RookieExpInstance_Enter(nInstance,nUserId)
	local tInstance = tRookieExpInstance_Instance[nInstance]
	if Instance_Enter(tInstance,nUserId) then
		if not RewardTemplate_JudgmentStc(tRookieExpInstance_Reward[1][1],nUserId) then
			User_TalkChannel2005(tRookieExpInstance_Text["HasAccept"],nUserId)
		end
	end
end

-- 清小怪
function RookieExpInstance_KillMonster(nMonsterId)
	local nMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nMapId)
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum == 0 then
		if tRookieExpInstance_Monster[nMapId] == 1 then
			local tBoss = tRookieExpInstance_BossAdd[nMonsterId]
			Monster_AddAndCount(nMapId,tBoss["PosX"],tBoss["PosY"],tBoss["GenId"],nMonsterId+1,nAttribute,nData,nStronghold,nChkNum)
			Sys_MsgBox(tRookieExpInstance_Text["CreateBoss"][nMonsterId])
			tRookieExpInstance_Monster[nMapId] = 0
		else
			local tMonster = tRookieExpInstance_MonsterAdd[nMonsterId]
			-- local nNewMonsterNum = tMonster["Num"]
			local nRange = 3
				-- 创建怪物
			if type(tMonster == "table") then
				for i,v in pairs(tMonster) do
					local nNewMonsterNum = v["Num"]
					for i=1,nNewMonsterNum do
						local nRangeX = math.random(-1*nRange,nRange)
						local nRangeY = math.random(-1*nRange,nRange)
						Monster_AddAndCount(nMapId,v["PosX"]+nRangeX,v["PosY"]+nRangeY,v["GenId"],nMonsterId,nAttribute,nData,nStronghold,nChkNum)
					end
				end
			end
			Sys_MsgBox(tRookieExpInstance_Text["NewMonster"][nMonsterId])
			tRookieExpInstance_Monster[nMapId] = 1
		end
	end
end

-- 杀BOSS
function RookieExpInstance_KillBoss(nMonsterId)
	RookieExpInstance_CreatePeace(nMonsterId)
end

-- 杀完BOSS出宝箱
function RookieExpInstance_CreatePeace(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId()
	local nCellx = tRookieExpInstance_NpcPos[nMonsterId]["PosX"]
	local nCelly = tRookieExpInstance_NpcPos[nMonsterId]["PosY"]
	local nActionId = tRookieExpInstance_Cont["Peace"]["ActionId"]
	local nNpcLookFace = tRookieExpInstance_Cont["Peace"]["LookFace"]
	local sNpcName = tRookieExpInstance_Text["PeaceName"]
	Npc_CreateDynaNpc(sNpcName,2,1,nNpcLookFace,0,nUserId,nMapId,nCellx,nCelly,0,0,0,nActionId)
	Sys_MsgBox(tRookieExpInstance_Text["CreateNpc"][nMonsterId])
end

-- 传送回双龙
function RookieExpInstance_Return()
	local nUserId = Get_UserId()
	local nMapId = tRookieExpInstance_TranBack["Normal"]["MapId"]
	local nPosX = tRookieExpInstance_TranBack["Normal"]["PosX"]
	local nPosY = tRookieExpInstance_TranBack["Normal"]["PosY"]
	local nRange = 3
		--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tRookieExpInstance_TranBack["NoGift"]["MapId"]
		nPosX = tRookieExpInstance_TranBack["NoGift"]["PosX"]
		nPosY = tRookieExpInstance_TranBack["NoGift"]["PosY"]
	end
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange,1)
end

-- 对话宝箱
function RookieExpInstance_LinkPeace(nNpcId)
	if RewardTemplate_JudgmentStc(tRookieExpInstance_Reward[1][1]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	else
		local sFunc = "RookieExpInstance_Return"
		Sys_MsgBox(tRookieExpInstance_Text["NoReward"],sFunc)
	end
end

-- 宝箱奖励
function RookieExpInstance_PeaceReward(nNpcId)
	if not RewardTemplate_JudgmentStc(tRookieExpInstance_Reward[1][1]) then
		return
	end
	local nUserId = Get_UserId()
	local nUserId = Get_UserId()
	local nUserPro = Get_UserProfession(nUserId)
	local sText
	if nUserPro >= tRookieExpInstance_Cont["MinProjan"] and nUserPro <= tRookieExpInstance_Cont["MaxProjan"] then
		if RewardTemplate_RandomReward(tRookieExpInstance_Reward,1) then
			-- local nItemId = tTab[1]["tAward"][1]["RewardItem"][1]["Id"]
			-- local sItemName = Get_ItemtypeName(nItemId)
			-- local nItemNum = tonumber(CommonFunc_GetItemNum(tTab[1]["tAward"][1]["RewardItem"][1]["Attr"]))
			if nUserPro%5 == 0 and nUserPro%10 ~= 0 then
				User_AddProExp(tRookieExpInstance_Cont["ProExp"],nUserId)
				-- sText = string.format(tRookieExpInstance_Text["MaxProReturn"],nItemNum,sItemName)
				sText = tRookieExpInstance_Text["MaxProReturn"]
			else
				-- sText = string.format(tRookieExpInstance_Text["ProReturn"],nItemNum,sItemName)
				sText = tRookieExpInstance_Text["ProReturn"]
			end
		end
	elseif RewardTemplate_RandomUpperLimit(tRookieExpInstance_Reward,3) then
		local tTab1 = RewardTemplate_RandomReward(tRookieExpInstance_Reward,3)
		local nItemId = tTab1[1]["tAward"][1]["RewardItem"][1]["Id"]
		local sItemName = Get_ItemtypeName(nItemId)
		-- 赤炼石特殊处理
		if nItemId >= tRookieExpInstance_Cont["Stone+1"] and nItemId <= tRookieExpInstance_Cont["Stone+9"] then
			sItemName = string.format(tRookieExpInstance_Text["String"],sItemName,nItemId-tRookieExpInstance_Cont["Stone+1"]+1)
		end
		local tTab2 = RewardTemplate_RandomReward(tRookieExpInstance_Reward,2)
		local nRewardStrengthValue = tTab2[1]["tAward"][1]["RewardStrengthValue"]["Value"]
		if nUserPro%5 == 0 and nUserPro%10 ~= 0 then
			User_AddProExp(tRookieExpInstance_Cont["ProExp"],nUserId)
			sText = string.format(tRookieExpInstance_Text["OtherMaxProReturn"],nRewardStrengthValue,sItemName)
		else
			sText = string.format(tRookieExpInstance_Text["OtherProReturn"],nRewardStrengthValue,sItemName)
		end
	end
	if type(sText) ~= "string" then
		return
	end
	local sFunc = "RookieExpInstance_Return"
	Sys_MsgBox(sText,sFunc)
end

-- 武神天星补学血影勾魂
function RookieExpInstance_TaojanLearnSkill()
	local nNpcId = Get_NpcId()
	local nMagicType = 3050
	local nOldPro = Get_NewUserOldPro()
	-- 检测玩家是否勇转勇
	if nOldPro >= 1000 and nOldPro <= 1099 then
		-- 检测玩家是否学习过技能
		if Magic_ChkType(nMagicType,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"1-1")
			return
		elseif Magic_Learn(nMagicType,nUserId) then
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			return
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
end
--补学百兵谱技能
function RookieExpInstance_ReplaceMagic(nNpcId)
	local nUserId = Get_UserId()
	local nSum = 0
	local nIsOpen = false
	local sText = ""
	
	local nLevel = tRookieExpInstance_Cont["Level"]
	local nMete = tRookieExpInstance_Cont["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"10-3")
		return
	end
	
	for i,v in pairs(G_tShortWeapon) do
		local nLev = Get_UserHundredWeaponInt(v,5,nUserId)

		if nLev >= 1 then
			nIsOpen = true
			
			if tRookieExpInstance_Cont["MagicType"][v] ~= nil then
				local nMagicType = tRookieExpInstance_Cont["MagicType"][v]
				if not Magic_ChkType(nMagicType) then
					if Magic_Learn(nMagicType) then
						
						for k = 1, nLev do
							--提升技能等级
							if Magic_UpLev(nMagicType) then
							end
						end
						
						nSum = nSum + 1
						sText = string.format(tRookieExpInstance_Text["String"],sText,tRookieExpInstance_Text["MagicName"][nMagicType])
						
					end
				end
			end
		
			
		end
	end
	
	if nIsOpen then
		if nSum == 0 then
			LinkNpcGossipFunc_New(nNpcId,"10-2")
		else
			tNpcGossip[10022]["Text1012"] = string.format(tRookieExpInstance_Text[10022]["Text1012"],sText)
			LinkNpcGossipFunc_New(nNpcId,"10-1")
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"10-3")
	end
	
end

----------------------------------NPC部分---------------------------------------------
-- 黎云
tNpcFace[6160] = 23
tNpcGossip[23966]= tNpcGossip[23966] or DefaultNpc:new{}
tNpcGossip[23966]["OptionHidden"] = 1
tNpcGossip[23966]["DialogueText"] = tRookieExpInstance_Text[23966]
tNpcGossip[23966]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[23966]["tOption1-1"] = {114,1141,118}
-- tNpcGossip[23966]["OptionFunc111"] = "RookieExpInstance_EnterConfirm</N>260"
-- tNpcGossip[23966]["OptionFunc112"] = "RookieExpInstance_EnterConfirm</N>261"
-- tNpcGossip[23966]["OptionFunc113"] = "RookieExpInstance_EnterConfirm</N>262"
tNpcGossip[23966]["OptionFunc114"] = "RookieExpInstance_EnterConfirm</N>263"
tNpcGossip[23966]["OptionChkFunc114"] = function ()
	return RewardTemplate_JudgmentStc(tRookieExpInstance_Reward[1][1])
end
tNpcGossip[23966]["OptionFunc1141"] = "RookieExpInstance_EnterConfirm</N>263"
tNpcGossip[23966]["OptionChkFunc1141"] = function ()
	return not RewardTemplate_JudgmentStc(tRookieExpInstance_Reward[1][1])
end
-- tNpcGossip[23966]["OptionFunc115"] = "RookieExpInstance_EnterConfirm</N>264"
-- tNpcGossip[23966]["OptionFunc116"] = "RookieExpInstance_EnterConfirm</N>265"
-- tNpcGossip[23966]["OptionFunc117"] = "RookieExpInstance_EnterConfirm</N>266"
-- 傅龙
tNpcGossip[23967]= tNpcGossip[23967] or DefaultNpc:new{}
tNpcGossip[23967]["OptionHidden"] = 1
tNpcGossip[23967]["DialogueText"] = tRookieExpInstance_Text[23967]
-- 等级不足
tNpcGossip[23967]["Text1-1"] = {111,112,113,114}
tNpcGossip[23967]["ChkFunc1-1"]= function()
	local nMete = tRookieExpInstance_Cont[23967]["Mete"]
	local nLevel = tRookieExpInstance_Cont[23967]["Level"]
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
tNpcGossip[23967]["tOption1-1"] = {116}
-- 等级足够
tNpcGossip[23967]["Text1-2"] = {111,112,114}
tNpcGossip[23967]["ChkFunc1-2"]= function()
	local nMete = tRookieExpInstance_Cont[23967]["Mete"]
	local nLevel = tRookieExpInstance_Cont[23967]["Level"]
	return User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
tNpcGossip[23967]["tOption1-2"] = {111,112,113,114,115}

-- 宝箱
tNpcGossip[23968]= tNpcGossip[23968] or DefaultNpc:new{}
tNpcGossip[23968]["OptionHidden"] = 1
tNpcGossip[23968]["DialogueText"] = tRookieExpInstance_Text[23968]
-- 等级不足
tNpcGossip[23968]["Text1-1"] = {111,112}
tNpcGossip[23968]["tOption1-1"] = {111,112}
tNpcGossip[23968]["OptionFunc111"] = "RookieExpInstance_PeaceReward"

-- 武神天星补学血影勾魂
tNpcFace[5004] = 23
tNpcGossip[10022]= tNpcGossip[10022] or DefaultNpc:new{}
tNpcGossip[10022]["OptionHidden"] = 1
tNpcGossip[10022]["DialogueText"] = tRookieExpInstance_Text[10022]
tNpcGossip[10022]["Text1-1"] = {111}
tNpcGossip[10022]["tOption1-1"] = {111}
tNpcGossip[10022]["Text1-2"] = {121}
tNpcGossip[10022]["tOption1-2"] = {111}
tNpcGossip[10022]["Text1-3"] = {131}
tNpcGossip[10022]["tOption1-3"] = {111}

tNpcGossip[10022]["Text10-1"] = {1011,1012}
tNpcGossip[10022]["tOption10-1"] = {1011}

tNpcGossip[10022]["Text10-2"] = {1021}
tNpcGossip[10022]["tOption10-2"] = {1021}

tNpcGossip[10022]["Text10-3"] = {1031}
tNpcGossip[10022]["tOption10-3"] = {1031}

tNpcGossip[10022]["Text10-4"] = {1041}
tNpcGossip[10022]["tOption10-4"] = {1041}
---------------------------------怪物部分---------------------------------------------
-- 副本清小怪
local tRookieExpInstance_KillMonster = {}
tRookieExpInstance_KillMonster["Function"]= RookieExpInstance_KillMonster
tRookieExpInstance_KillMonster["MonsterId"] = {1048,1050,1052,1054,1056,1058,1060}
table.insert(tMonsterDrop_AreaLoad,tRookieExpInstance_KillMonster)
-- 副本杀BOSS
local tRookieExpInstance_KillBoss = {}
tRookieExpInstance_KillBoss["Function"]= RookieExpInstance_KillBoss
tRookieExpInstance_KillBoss["MonsterId"] = {1049,1051,1053,1055,1057,1059,1061}
table.insert(tMonsterDrop_AreaLoad,tRookieExpInstance_KillBoss)

tTrap[2434] = tTrap[2434] or {}
tTrap[2434]["Function"] = function(nTrapId,nTrapType)
	local sFunc = "RookieExpInstance_Return"
	Sys_MsgBox(tRookieExpInstance_Text["TrapReturn"],sFunc)
end