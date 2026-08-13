------------------------------------------------------------------------------------
--Name:			200323[简体征服][活动脚本]周年庆活动地图
--Purpose:		周年庆活动地图
--Creator:		杨志翔
--Created:		2020/03/23
------------------------------------------------------------------------------------



--41771
-----------------

local tAnni17Map_Cont = {}

tAnni17Map_Cont["Week1-2"] = tActivityTime["Anniversary2020"]["FireworksTime"] 
tAnni17Map_Cont["Week3-4"] = tActivityTime["Anniversary2020"]["BossTime"] 
--总时间
tAnni17Map_Cont["ActTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
--记录限量 data1记挑战令 data2记瑞兽礼包 data3记本服userid
tAnni17Map_Cont["Task"] =  35073 
tAnni17Map_Cont["Drop"] = {}
tAnni17Map_Cont["Drop"]["Limit"] = 10
--1-2周给火炬
tAnni17Map_Cont["Drop"]["W1-2"] = 3600245
--3-4周给挑战令
tAnni17Map_Cont["Drop"]["W3-4"] = 3600246
--瑞兽掉落礼包
tAnni17Map_Cont["Drop"]["Rui"] = 3600247
--喂养道具 3330460 3330461 
--NpcID 去跨服的和回本服的
--
tAnni17Map_Cont["TimeStamp"] = 1588867200
tAnni17Map_Cont["Npc"] = {}
tAnni17Map_Cont["Npc"]["GoTo"] = 26090
tAnni17Map_Cont["Npc"]["Back"] = 26091
tAnni17Map_Cont["Map"] = {}
tAnni17Map_Cont["Map"][1] = 10807
tAnni17Map_Cont["Map"][2] = 10808
tAnni17Map_Cont["Map"]["PosX"] =175
tAnni17Map_Cont["Map"]["PosY"] =147

tAnni17Map_Cont["Chi"] = {}
tAnni17Map_Cont["Chi"][3330527] = 8000
tAnni17Map_Cont["Chi"][3330528] = 35000

tAnni17Map_Cont["ReturnMap"] = {}
tAnni17Map_Cont["ReturnMap"][1]= {}
tAnni17Map_Cont["ReturnMap"][1]["Map"] = 1002 
tAnni17Map_Cont["ReturnMap"][1]["X"] = 387
tAnni17Map_Cont["ReturnMap"][1]["Y"] = 443

tAnni17Map_Cont["ReturnMap"][2]= {}
tAnni17Map_Cont["ReturnMap"][2]["Map"] = 1036
tAnni17Map_Cont["ReturnMap"][2]["X"] = 250
tAnni17Map_Cont["ReturnMap"][2]["Y"] = 209

tAnni17Map_Cont["Level"] = 80
tAnni17Map_Cont["Mete"] = 0
tAnni17Map_Cont["Stc"] = {}
tAnni17Map_Cont["Stc"]["Sign"] = {}
tAnni17Map_Cont["Stc"]["Sign"][1] = {}
tAnni17Map_Cont["Stc"]["Sign"][1]["Event"] = 218
tAnni17Map_Cont["Stc"]["Sign"][1]["Data"] = 4
tAnni17Map_Cont["Stc"]["Sign"][2] = {}
tAnni17Map_Cont["Stc"]["Sign"][2]["Event"] = 218
tAnni17Map_Cont["Stc"]["Sign"][2]["Data"] = 5

tAnni17Map_Cont["Refresh"] = {}
tAnni17Map_Cont["Refresh"][1] = {}
tAnni17Map_Cont["Refresh"][1]["PosX"] = 238
tAnni17Map_Cont["Refresh"][1]["PosY"] = 126
tAnni17Map_Cont["Refresh"][2] = {}
tAnni17Map_Cont["Refresh"][2]["PosX"] = 65
tAnni17Map_Cont["Refresh"][2]["PosY"] = 146
tAnni17Map_Cont["Refresh"][3] = {}
tAnni17Map_Cont["Refresh"][3]["PosX"] = 182
tAnni17Map_Cont["Refresh"][3]["PosY"] = 260
tAnni17Map_Cont["Refresh"][4] = {}
tAnni17Map_Cont["Refresh"][4]["PosX"] = 204
tAnni17Map_Cont["Refresh"][4]["PosY"] = 299
tAnni17Map_Cont["Refresh"][5] = {}
tAnni17Map_Cont["Refresh"][5]["PosX"] = 262
tAnni17Map_Cont["Refresh"][5]["PosY"] = 302
tAnni17Map_Cont["Refresh"][6] = {}
tAnni17Map_Cont["Refresh"][6]["PosX"] = 257
tAnni17Map_Cont["Refresh"][6]["PosY"] = 260


--跨服config落脚点
tAnni17Map_Cont["Config"] = 166

tAnni17Map_Cont["Monster"] = {}
tAnni17Map_Cont["Monster"]["N"] = 1293
tAnni17Map_Cont["Monster"]["R"] = 1294

local tAnni17Map_MonsterDrop = {}
	-- ===掉落
	-- ===索引:tAnni17Map_MonsterDrop[1]
	-- ===LogStep: 6[1]
	tAnni17Map_MonsterDrop[1] = {}
	tAnni17Map_MonsterDrop[1]["ItemChanceSum"] = 10000
	tAnni17Map_MonsterDrop[1]["LogId"] = 12001906
	tAnni17Map_MonsterDrop[1]["LogStep"] = " 6[1]"
	-- 3600245 - 2%
	tAnni17Map_MonsterDrop[1][1] = {}
	tAnni17Map_MonsterDrop[1][1]["RandomItemChanceType"] = 2
	tAnni17Map_MonsterDrop[1][1]["ItemChance"] = 200
	tAnni17Map_MonsterDrop[1][1]["RewardItem"] = {}
	tAnni17Map_MonsterDrop[1][1]["RewardItem"][1] = {}
	tAnni17Map_MonsterDrop[1][1]["RewardItem"][1]["Id"] = 3600245 --  3600245 【库里没有该物品】, 【表格】3600245
	tAnni17Map_MonsterDrop[1][1]["RewardItem"][1]["Attr"] = "0 1" --  3600245 【库里没有该物品】*1
	tAnni17Map_MonsterDrop[1][1]["RewardEffect"] = {}
	tAnni17Map_MonsterDrop[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_MonsterDrop[1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 98%
	tAnni17Map_MonsterDrop[1][2] = {}
	tAnni17Map_MonsterDrop[1][2]["RandomItemChanceType"] = 2
	tAnni17Map_MonsterDrop[1][2]["ItemChance"] = 9800
	tAnni17Map_MonsterDrop[1][2]["RewardEffect"] = {}
	tAnni17Map_MonsterDrop[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_MonsterDrop[1][2]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_MonsterDrop[2] = {}
	-- ===掉落
	-- ===索引:tAnni17Map_MonsterDrop[2]
	-- ===LogStep: 6[2]
	tAnni17Map_MonsterDrop[2]["ItemChanceSum"] = 10000
	tAnni17Map_MonsterDrop[2]["LogId"] = 12001906
	tAnni17Map_MonsterDrop[2]["LogStep"] = " 6[2]"
	-- 3600246 - 2%
	tAnni17Map_MonsterDrop[2][1] = {}
	tAnni17Map_MonsterDrop[2][1]["RandomItemChanceType"] = 2
	tAnni17Map_MonsterDrop[2][1]["ItemChance"] = 200
	tAnni17Map_MonsterDrop[2][1]["RewardItem"] = {}
	tAnni17Map_MonsterDrop[2][1]["RewardItem"][1] = {}
	tAnni17Map_MonsterDrop[2][1]["RewardItem"][1]["Id"] = 3600246 --  3600246 【库里没有该物品】, 【表格】3600246
	tAnni17Map_MonsterDrop[2][1]["RewardItem"][1]["Attr"] = "0 1" --  3600246 【库里没有该物品】*1
	tAnni17Map_MonsterDrop[2][1]["RewardEffect"] = {}
	tAnni17Map_MonsterDrop[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_MonsterDrop[2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 98%
	tAnni17Map_MonsterDrop[2][2] = {}
	tAnni17Map_MonsterDrop[2][2]["RandomItemChanceType"] = 2
	tAnni17Map_MonsterDrop[2][2]["ItemChance"] = 9800
	tAnni17Map_MonsterDrop[2][2]["RewardEffect"] = {}
	tAnni17Map_MonsterDrop[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_MonsterDrop[2][2]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_MonsterDrop[3] = {}
	-- ===掉落
	-- ===索引:tAnni17Map_MonsterDrop[3]
	-- ===LogStep: 6[3]
	tAnni17Map_MonsterDrop[3]["ItemChanceSum"] = 10000
	tAnni17Map_MonsterDrop[3]["LogId"] = 12001906
	tAnni17Map_MonsterDrop[3]["LogStep"] = " 6[3]"
	-- 3600247 - 2%
	tAnni17Map_MonsterDrop[3][1] = {}
	tAnni17Map_MonsterDrop[3][1]["RandomItemChanceType"] = 2
	tAnni17Map_MonsterDrop[3][1]["ItemChance"] = 200
	tAnni17Map_MonsterDrop[3][1]["RewardItem"] = {}
	tAnni17Map_MonsterDrop[3][1]["RewardItem"][1] = {}
	tAnni17Map_MonsterDrop[3][1]["RewardItem"][1]["Id"] = 3600247 --  3600247 【库里没有该物品】, 【表格】3600247
	tAnni17Map_MonsterDrop[3][1]["RewardItem"][1]["Attr"] = "0 1" --  3600247 【库里没有该物品】*1
	tAnni17Map_MonsterDrop[3][1]["RewardEffect"] = {}
	tAnni17Map_MonsterDrop[3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_MonsterDrop[3][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 98%
	tAnni17Map_MonsterDrop[3][2] = {}
	tAnni17Map_MonsterDrop[3][2]["RandomItemChanceType"] = 2
	tAnni17Map_MonsterDrop[3][2]["ItemChance"] = 9800
	tAnni17Map_MonsterDrop[3][2]["RewardEffect"] = {}
	tAnni17Map_MonsterDrop[3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_MonsterDrop[3][2]["RewardEffect"]["Effect"] = "angelwing"

local tAnni17Map_Reward = {}
	-- ===瑞兽礼包
	-- ===索引:tAnni17Map_Reward[3600247]
	-- ===LogStep: 6[4]
	-- ===删除:3600247,1
	-- ===NewEmoneyLog:1000,01704
	tAnni17Map_Reward[3600247] = {}
	tAnni17Map_Reward[3600247]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAnni17Map_Reward[3600247]["DeleteItem"] = {}
	tAnni17Map_Reward[3600247]["DeleteItem"][1] = {}
	tAnni17Map_Reward[3600247]["DeleteItem"][1]["Id"] = 3600247 -- 【库】 3600247 【库里没有该物品】[属性:]
	tAnni17Map_Reward[3600247]["LogId"] = 12001906
	tAnni17Map_Reward[3600247]["LogStep"] = " 6[4]"
	-- 灵龙草 - 49%
	tAnni17Map_Reward[3600247][1] = {}
	tAnni17Map_Reward[3600247][1]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3600247][1]["ItemChance"] = 4900
	tAnni17Map_Reward[3600247][1]["RewardItem"] = {}
	tAnni17Map_Reward[3600247][1]["RewardItem"][1] = {}
	tAnni17Map_Reward[3600247][1]["RewardItem"][1]["Id"] = 3330460 --  3330460 【库里没有该物品】, 【表格】灵龙草
	tAnni17Map_Reward[3600247][1]["RewardItem"][1]["Attr"] = "0 1" --  3330460 【库里没有该物品】*1
	tAnni17Map_Reward[3600247][1]["RewardEffect"] = {}
	tAnni17Map_Reward[3600247][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3600247][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 圣龙果 - 1%
	tAnni17Map_Reward[3600247][2] = {}
	tAnni17Map_Reward[3600247][2]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3600247][2]["ItemChance"] = 100
	tAnni17Map_Reward[3600247][2]["RewardItem"] = {}
	tAnni17Map_Reward[3600247][2]["RewardItem"][1] = {}
	tAnni17Map_Reward[3600247][2]["RewardItem"][1]["Id"] = 3330461 --  3330461 【库里没有该物品】, 【表格】圣龙果
	tAnni17Map_Reward[3600247][2]["RewardItem"][1]["Attr"] = "0 1" --  3330461 【库里没有该物品】*1
	tAnni17Map_Reward[3600247][2]["RewardEffect"] = {}
	tAnni17Map_Reward[3600247][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3600247][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 10赠点 - 25%
	tAnni17Map_Reward[3600247][3] = {}
	tAnni17Map_Reward[3600247][3]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3600247][3]["ItemChance"] = 2500
	tAnni17Map_Reward[3600247][3]["RewardEMoneyMono"] = {}
	tAnni17Map_Reward[3600247][3]["RewardEMoneyMono"]["Value"] = 10 -- 天石（赠）, 【需求】10赠点
	tAnni17Map_Reward[3600247][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1704"
	tAnni17Map_Reward[3600247][3]["RewardEffect"] = {}
	tAnni17Map_Reward[3600247][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3600247][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100气力 - 25%
	tAnni17Map_Reward[3600247][4] = {}
	tAnni17Map_Reward[3600247][4]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3600247][4]["ItemChance"] = 2500
	tAnni17Map_Reward[3600247][4]["RewardStrengthValue"] = {}
	tAnni17Map_Reward[3600247][4]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】100气力
	tAnni17Map_Reward[3600247][4]["RewardEffect"] = {}
	tAnni17Map_Reward[3600247][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3600247][4]["RewardEffect"]["Effect"] = "angelwing"

	tAnni17Map_Reward["Sign"] = {}
	-- ===签到礼包
	-- ===索引:tAnni17Map_Reward["Sign"][1][1]
	-- ===LogStep: 6[5]
	-- ===
	-- ===
	tAnni17Map_Reward["Sign"][1] = {}
	tAnni17Map_Reward["Sign"][1][1] = {}
	tAnni17Map_Reward["Sign"][1][1]["LogId"] = 12001906
	tAnni17Map_Reward["Sign"][1][1]["LogStep"] = "6[5]"
	tAnni17Map_Reward["Sign"][1][1]["RewardItem"] = {}
	tAnni17Map_Reward["Sign"][1][1]["RewardItem"][1] = {}
	tAnni17Map_Reward["Sign"][1][1]["RewardItem"][1]["Id"] = 3600245 --  3600245 【库里没有该物品】, 【表格】3600245
	tAnni17Map_Reward["Sign"][1][1]["RewardItem"][1]["Attr"] = "0 5" --  3600245 【库里没有该物品】*5
	tAnni17Map_Reward["Sign"][1][1]["RewardEffect"] = {}
	tAnni17Map_Reward["Sign"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward["Sign"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_Reward["Sign"][2] = {}
	-- ===签到礼包
	-- ===索引:tAnni17Map_Reward["Sign"][2][1]
	-- ===LogStep: 6[6]
	-- ===
	-- ===
	tAnni17Map_Reward["Sign"][2][1] = {}
	tAnni17Map_Reward["Sign"][2][1]["LogId"] = 12001906
	tAnni17Map_Reward["Sign"][2][1]["LogStep"] = "6[6]"
	tAnni17Map_Reward["Sign"][2][1]["RewardItem"] = {}
	tAnni17Map_Reward["Sign"][2][1]["RewardItem"][1] = {}
	tAnni17Map_Reward["Sign"][2][1]["RewardItem"][1]["Id"] = 3600245 --  3600245 【库里没有该物品】, 【表格】3600245
	tAnni17Map_Reward["Sign"][2][1]["RewardItem"][1]["Attr"] = "0 5" --  3600245 【库里没有该物品】*5
	tAnni17Map_Reward["Sign"][2][1]["RewardEffect"] = {}
	tAnni17Map_Reward["Sign"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward["Sign"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_Reward["Sign"][1][2] = {}
	-- ===签到礼包
	-- ===索引:tAnni17Map_Reward["Sign"][1][2]
	-- ===LogStep: 6[7]
	-- ===
	-- ===
	tAnni17Map_Reward["Sign"][1][2]["LogId"] = 12001906
	tAnni17Map_Reward["Sign"][1][2]["LogStep"] = "6[7]"
	tAnni17Map_Reward["Sign"][1][2]["RewardItem"] = {}
	tAnni17Map_Reward["Sign"][1][2]["RewardItem"][1] = {}
	tAnni17Map_Reward["Sign"][1][2]["RewardItem"][1]["Id"] = 3600246 --  3600246 【库里没有该物品】, 【表格】3600246
	tAnni17Map_Reward["Sign"][1][2]["RewardItem"][1]["Attr"] = "0 5" --  3600246 【库里没有该物品】*5
	tAnni17Map_Reward["Sign"][1][2]["RewardEffect"] = {}
	tAnni17Map_Reward["Sign"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward["Sign"][1][2]["RewardEffect"]["Effect"] = "angelwing"

	tAnni17Map_Reward["Sign"][2][2] = {}
	-- ===签到礼包
	-- ===索引:tAnni17Map_Reward["Sign"][2][2]
	-- ===LogStep: 6[8]
	-- ===
	-- ===
	tAnni17Map_Reward["Sign"][2][2]["LogId"] = 12001906
	tAnni17Map_Reward["Sign"][2][2]["LogStep"] = "6[8]"
	tAnni17Map_Reward["Sign"][2][2]["RewardItem"] = {}
	tAnni17Map_Reward["Sign"][2][2]["RewardItem"][1] = {}
	tAnni17Map_Reward["Sign"][2][2]["RewardItem"][1]["Id"] = 3600246 --  3600246 【库里没有该物品】, 【表格】3600246
	tAnni17Map_Reward["Sign"][2][2]["RewardItem"][1]["Attr"] = "0 5" --  3600246 【库里没有该物品】*5
	tAnni17Map_Reward["Sign"][2][2]["RewardEffect"] = {}
	tAnni17Map_Reward["Sign"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward["Sign"][2][2]["RewardEffect"]["Effect"] = "angelwing"

	tAnni17Map_Reward[3330527] = {}
	tAnni17Map_Reward[3330527][1] = {}
	tAnni17Map_Reward[3330527][1]["LogId"] = 12001906
	tAnni17Map_Reward[3330527][1]["LogStep"] = "6[9]"
	tAnni17Map_Reward[3330527][1]["DeleteItem"] = {}
	tAnni17Map_Reward[3330527][1]["DeleteItem"][1] = {}
	tAnni17Map_Reward[3330527][1]["DeleteItem"][1]["Id"] = 3330527 -- 【库】 3330527 【库里没有该物品】[属性:]
	tAnni17Map_Reward[3330527][1]["DeleteItem"][1]["ItemNum"] = 20
	tAnni17Map_Reward[3330527][1]["RewardItem"] = {}
	tAnni17Map_Reward[3330527][1]["RewardItem"][1] = {}
	tAnni17Map_Reward[3330527][1]["RewardItem"][1]["Id"] = 196215 --  196215 【库里没有该物品】, 【表格】196215
	tAnni17Map_Reward[3330527][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 196215 【库里没有该物品】*1
	tAnni17Map_Reward[3330527][1]["RewardEffect"] = {}
	tAnni17Map_Reward[3330527][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330527][1]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_Reward[3330527][2] = {}
	-- ===掉落
	-- ===索引:tAnni17Map_Reward[3330527][2]
	-- ===删除:3330527,1
	-- ===LogStep: 6[9]
	tAnni17Map_Reward[3330527][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAnni17Map_Reward[3330527][2]["DeleteItem"] = {}
	tAnni17Map_Reward[3330527][2]["DeleteItem"][1] = {}
	tAnni17Map_Reward[3330527][2]["DeleteItem"][1]["Id"] = 3330527 -- 【库】 3330527 【库里没有该物品】[属性:]
	tAnni17Map_Reward[3330527][2]["LogId"] = 12001906
	tAnni17Map_Reward[3330527][2]["LogStep"] = " 6[9]"
	-- 3330527 - 49%
	tAnni17Map_Reward[3330527][2][1] = {}
	tAnni17Map_Reward[3330527][2][1]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3330527][2][1]["ItemChance"] = 4800
	tAnni17Map_Reward[3330527][2][1]["RewardItem"] = {}
	tAnni17Map_Reward[3330527][2][1]["RewardItem"][1] = {}
	tAnni17Map_Reward[3330527][2][1]["RewardItem"][1]["Id"] = 3330527 --  3330527 【库里没有该物品】, 【表格】3330527
	tAnni17Map_Reward[3330527][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3330527 【库里没有该物品】*2
	tAnni17Map_Reward[3330527][2][1]["RewardEffect"] = {}
	tAnni17Map_Reward[3330527][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330527][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 51%
	tAnni17Map_Reward[3330527][2][2] = {}
	tAnni17Map_Reward[3330527][2][2]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3330527][2][2]["ItemChance"] = 5200
	tAnni17Map_Reward[3330527][2][2]["RewardEffect"] = {}
	tAnni17Map_Reward[3330527][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330527][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_Reward[3330527][3] = {}
	-- ===掉落
	-- ===索引:tAnni17Map_Reward[3330527][3]
	-- ===删除:3330527,2
	-- ===LogStep: 6[9]
	tAnni17Map_Reward[3330527][3]["LogId"] = 12001906
	tAnni17Map_Reward[3330527][3]["LogStep"] = "6[9]"
	tAnni17Map_Reward[3330527][3]["DeleteItem"] = {}
	tAnni17Map_Reward[3330527][3]["DeleteItem"][1] = {}
	tAnni17Map_Reward[3330527][3]["DeleteItem"][1]["Id"] = 3330527 -- 【库】 3330527 【库里没有该物品】[属性:]
	tAnni17Map_Reward[3330527][3]["DeleteItem"][1]["ItemNum"] = 2
	tAnni17Map_Reward[3330527][3]["RewardStrengthValue"] = {}
	tAnni17Map_Reward[3330527][3]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】气力值
	tAnni17Map_Reward[3330527][3]["RewardEffect"] = {}
	tAnni17Map_Reward[3330527][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330527][3]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_Reward[3330528] = {}
	-- ===掉落
	-- ===索引:tAnni17Map_Reward[3330528][1]
	-- ===删除:3330528,20
	-- ===LogStep: 6[10]
	tAnni17Map_Reward[3330528][1] = {}
	tAnni17Map_Reward[3330528][1]["LogId"] = 12001906
	tAnni17Map_Reward[3330528][1]["LogStep"] = "6[10]"
	tAnni17Map_Reward[3330528][1]["DeleteItem"] = {}
	tAnni17Map_Reward[3330528][1]["DeleteItem"][1] = {}
	tAnni17Map_Reward[3330528][1]["DeleteItem"][1]["Id"] = 3330528 -- 【库】 3330528 【库里没有该物品】[属性:]
	tAnni17Map_Reward[3330528][1]["DeleteItem"][1]["ItemNum"] = 20
	tAnni17Map_Reward[3330528][1]["RewardItem"] = {}
	tAnni17Map_Reward[3330528][1]["RewardItem"][1] = {}
	tAnni17Map_Reward[3330528][1]["RewardItem"][1]["Id"] = 196225 --  196225 【库里没有该物品】, 【表格】196225
	tAnni17Map_Reward[3330528][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑 196225 【库里没有该物品】*1
	tAnni17Map_Reward[3330528][1]["RewardEffect"] = {}
	tAnni17Map_Reward[3330528][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330528][1]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_Reward[3330528][2] = {}
	-- ===掉落
	-- ===索引:tAnni17Map_Reward[3330528][2]
	-- ===删除:3330528,1
	-- ===LogStep: 6[10]
	tAnni17Map_Reward[3330528][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAnni17Map_Reward[3330528][2]["DeleteItem"] = {}
	tAnni17Map_Reward[3330528][2]["DeleteItem"][1] = {}
	tAnni17Map_Reward[3330528][2]["DeleteItem"][1]["Id"] = 3330528 -- 【库】 3330528 【库里没有该物品】[属性:]
	tAnni17Map_Reward[3330528][2]["LogId"] = 12001906
	tAnni17Map_Reward[3330528][2]["LogStep"] = " 6[10]"
	-- 3330528 - 49%
	tAnni17Map_Reward[3330528][2][1] = {}
	tAnni17Map_Reward[3330528][2][1]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3330528][2][1]["ItemChance"] = 4800
	tAnni17Map_Reward[3330528][2][1]["RewardItem"] = {}
	tAnni17Map_Reward[3330528][2][1]["RewardItem"][1] = {}
	tAnni17Map_Reward[3330528][2][1]["RewardItem"][1]["Id"] = 3330528 --  3330528 【库里没有该物品】, 【表格】3330528
	tAnni17Map_Reward[3330528][2][1]["RewardItem"][1]["Attr"] = "0 2" --  3330528 【库里没有该物品】*2
	tAnni17Map_Reward[3330528][2][1]["RewardEffect"] = {}
	tAnni17Map_Reward[3330528][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330528][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 无 - 51%
	tAnni17Map_Reward[3330528][2][2] = {}
	tAnni17Map_Reward[3330528][2][2]["RandomItemChanceType"] = 2
	tAnni17Map_Reward[3330528][2][2]["ItemChance"] = 5200
	tAnni17Map_Reward[3330528][2][2]["RewardEffect"] = {}
	tAnni17Map_Reward[3330528][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330528][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tAnni17Map_Reward[3330528][3] = {}
	-- ===掉落
	-- ===索引:tAnni17Map_Reward[3330528][3]
	-- ===删除:3330528,2
	-- ===LogStep: 6[10]
	tAnni17Map_Reward[3330528][3]["LogId"] = 12001906
	tAnni17Map_Reward[3330528][3]["LogStep"] = "6[10]"
	tAnni17Map_Reward[3330528][3]["DeleteItem"] = {}
	tAnni17Map_Reward[3330528][3]["DeleteItem"][1] = {}
	tAnni17Map_Reward[3330528][3]["DeleteItem"][1]["Id"] = 3330528 -- 【库】 3330528 【库里没有该物品】[属性:]
	tAnni17Map_Reward[3330528][3]["DeleteItem"][1]["ItemNum"] = 2
	tAnni17Map_Reward[3330528][3]["RewardStrengthValue"] = {}
	tAnni17Map_Reward[3330528][3]["RewardStrengthValue"]["Value"] = 35000 -- 气力值, 【需求】气力值
	tAnni17Map_Reward[3330528][3]["RewardEffect"] = {}
	tAnni17Map_Reward[3330528][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnni17Map_Reward[3330528][3]["RewardEffect"]["Effect"] = "angelwing"

--log
local tAnni17Map_Log = {}
tAnni17Map_Log[3600245] = "0,0,0,0,12001906,6[1],3600245,1"
tAnni17Map_Log[3600246] = "0,0,0,0,12001906,6[2],3600246,1"
tAnni17Map_Log[3600247] = "0,0,0,0,12001906,6[3],3600247,1"
------------------------------------------------function----------------------
function Anni17Map_KillMonster()
    local nAnni17Map_UserId = Get_UserId()
    local nAnni17Map_TaskId = tAnni17Map_Cont["Task"]
    if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
        return
	end
	local nAnni17Map_Judge = 0
		--时间判断
	if not User_JudgeLevelAndMetempsychosis(tAnni17Map_Cont["Level"],tAnni17Map_Cont["Mete"],nAnni17Map_UserId) then
		return
	end	
	if Sys_ChkFullTime(tAnni17Map_Cont["Week1-2"]) then
		nAnni17Map_Judge = 1
	elseif Sys_ChkFullTime(tAnni17Map_Cont["Week3-4"]) then
		nAnni17Map_Judge = 2
	end
	Anni17Map_SetUser()
    if not Task_ChkTaskDetail(nAnni17Map_TaskId, nAnni17Map_UserId) then
		Task_AddTaskDetail(nAnni17Map_TaskId,0,nAnni17Map_UserId)
	else
		-- 判断是否隔天 如果隔天了清除data1-2的限量和data6重新置1
		local nAnni17Map_DropNumChk = Get_TaskDetailData6(nAnni17Map_TaskId, nAnni17Map_UserId)
		if nAnni17Map_DropNumChk == 0 then
			Task_SetTaskDetailData1(nAnni17Map_TaskId, 0, nAnni17Map_UserId)
			Task_SetTaskDetailData2(nAnni17Map_TaskId, 0, nAnni17Map_UserId)
			Task_SetTaskDetailData6(nAnni17Map_TaskId, 1, nAnni17Map_UserId)
		end	
	end 
    local nAnni17Map_ServerId = Get_UserServerId(nAnni17Map_UserId)
    if not User_CheckLeftSpace(1, nAnni17Map_UserId) then
		return
	end
	local fAnni17Map_Chk,tAnni17Map_Award = Probabil_RandomAward(tAnni17Map_MonsterDrop,nAnni17Map_Judge)
	if tAnni17Map_Award[1]["tAward"][1]["RewardItem"] == nil then
		return
	end
	local nAnni17Map_ItemId = tAnni17Map_Award[1]["tAward"][1]["RewardItem"][1]["Id"]
	local nAnni17Map_DropNum = Get_TaskDetailData1(nAnni17Map_TaskId, nAnni17Map_UserId)
	if nAnni17Map_DropNum >= tAnni17Map_Cont["Drop"]["Limit"] then 
		return 
	elseif nAnni17Map_DropNum == tAnni17Map_Cont["Drop"]["Limit"]-1 then
		if nAnni17Map_Judge == 2 then
			Sys_MsgBox(tAnni17Map_Text["DropLimit"], nil, nil, nAnni17Map_UserId)
		elseif nAnni17Map_Judge == 1 then
			Sys_MsgBox(tAnni17Map_Text["DropLimit2"], nil, nil, nAnni17Map_UserId)
		end
	end
	local sAnni17Map_2005 = string.format(tAnni17Map_Text["2005"][nAnni17Map_Judge],9-nAnni17Map_DropNum)
	if not User_IsCross(nAnni17Map_UserId) then
		if Item_AddItem(nAnni17Map_ItemId) then
			Task_SetTaskDetailData1(nAnni17Map_TaskId, nAnni17Map_DropNum + 1, nAnni17Map_UserId)
			if nAnni17Map_DropNum ~= 9 then
				User_TalkChannel2005(sAnni17Map_2005,nAnni17Map_UserId)
			end
			Sys_SaveActionRewardLog(tAnni17Map_Log[nAnni17Map_ItemId])
		end
	else
		local nAnni17Map_UserOldId = Get_TaskDetailData3(nAnni17Map_TaskId, nAnni17Map_UserId)
		Task_SetTaskDetailData1(nAnni17Map_TaskId, nAnni17Map_DropNum + 1, nAnni17Map_ItemId)
		if Item_AddAsynOSItem(nAnni17Map_ItemId, 0, 1, 10000, 0, nAnni17Map_UserOldId, nAnni17Map_ServerId) then
			if nAnni17Map_DropNum ~= 9 then
				User_TalkChannel2005(sAnni17Map_2005,nAnni17Map_UserId)
			end
			Sys_SaveActionRewardLog(tAnni17Map_Log[nAnni17Map_ItemId])
		end
	end
end

function Anni17Map_KillRuiMonster()
	local nAnni17Map_UserId = Get_UserId()
	local nAnni17Map_TaskId = tAnni17Map_Cont["Task"]
	
    if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
        return
	end
	if not User_JudgeLevelAndMetempsychosis(tAnni17Map_Cont["Level"],tAnni17Map_Cont["Mete"],nAnni17Map_UserId) then
		return
	end
	local nAnni17Map_Judge = 0
	Anni17Map_SetUser()

	if not Task_ChkTaskDetail(nAnni17Map_TaskId, nAnni17Map_UserId) then
		Task_AddTaskDetail(nAnni17Map_TaskId,0,nAnni17Map_UserId)
	else
		-- 判断是否隔天 如果隔天了清除data1-2的限量和data6重新置1
		local nAnni17Map_DropNumChk = Get_TaskDetailData6(nAnni17Map_TaskId, nAnni17Map_UserId)
		if nAnni17Map_DropNumChk == 0 then
			Task_SetTaskDetailData1(nAnni17Map_TaskId, 0, nAnni17Map_UserId)
			Task_SetTaskDetailData2(nAnni17Map_TaskId, 0, nAnni17Map_UserId)
			Task_SetTaskDetailData6(nAnni17Map_TaskId, 1, nAnni17Map_UserId)
		end	
	end 
	if not User_CheckLeftSpace(1, nAnni17Map_UserId) then
		return
	end
	local nAnni17Map_DropNum = Get_TaskDetailData2(nAnni17Map_TaskId, nAnni17Map_UserId)
	if nAnni17Map_DropNum >= tAnni17Map_Cont["Drop"]["Limit"] then 
		return 
	elseif nAnni17Map_DropNum == tAnni17Map_Cont["Drop"]["Limit"]-1 then
		Sys_MsgBox(tAnni17Map_Text["DropLimit1"], nil, nil, nAnni17Map_UserId)
	end
	local nAnni17Map_ItemId = tAnni17Map_Cont["Drop"]["Rui"]
	local sAnni17Map_2005 = string.format(tAnni17Map_Text["2005"]["Rui"],9-nAnni17Map_DropNum)

	if not User_IsCross(nAnni17Map_UserId) then
		if Item_AddItem(nAnni17Map_ItemId) then
			Task_SetTaskDetailData2(nAnni17Map_TaskId, nAnni17Map_DropNum + 1, nAnni17Map_UserId)
			if nAnni17Map_DropNum ~= 9 then
				User_TalkChannel2005(sAnni17Map_2005,nAnni17Map_UserId)
			end
			Sys_SaveActionRewardLog(tAnni17Map_Log[nAnni17Map_ItemId])
		end
	else
		local nAnni17Map_UserOldId = Get_TaskDetailData3(nAnni17Map_TaskId, nAnni17Map_UserId)
		if Item_AddAsynOSItem(nAnni17Map_ItemId, 0, 1, 10000, 0, nAnni17Map_UserOldId, nAnni17Map_ServerId) then
			Task_SetTaskDetailData2(nAnni17Map_TaskId, nAnni17Map_DropNum + 1, nAnni17Map_ItemId)
			if nAnni17Map_DropNum ~= 9 then
				User_TalkChannel2005(sAnni17Map_2005,nAnni17Map_UserId)
			end
			Sys_SaveActionRewardLog(tAnni17Map_Log[nAnni17Map_ItemId])
		end
	end
end

function Anni17Map_SetUser()
    local nAnni17Map_UserId = Get_UserId()
	local nAnni17Map_TaskId = tAnni17Map_Cont["Task"]
	-- 如果在本服没有存值就赋值
	if not User_IsCross(nAnni17Map_UserId) then
		local nAnni17Map_UserOldId = Get_TaskDetailData3(nAnni17Map_TaskId, nAnni17Map_UserId)
		if nAnni17Map_UserOldId <= 0 then
			if not Task_SetTaskDetailData3(nAnni17Map_TaskId, nAnni17Map_UserId, nAnni17Map_UserId) then
				return
			end
		end
    end
end

function Anni17Map_GoGlobal()
	local nAnni17Map_UserId= Get_UserId()
	if not Sys_ChkFullTime(tActivityTime["Anniversary2020"]["EnterTime"]) then
		return
	end
	--进入全球服
	--保存记录点 返回的时候直接到npc前面
	if not User_JudgeLevelAndMetempsychosis(tAnni17Map_Cont["Level"],tAnni17Map_Cont["Mete"],nAnni17Map_UserId) then
		return
	end
	Anni17Map_SetUser()
	local nAnni17Map_MapId = tAnni17Map_Cont["ReturnMap"][1]["Map"]
	local nAnni17Map_PosX = tAnni17Map_Cont["ReturnMap"][1]["X"]
	local nAnni17Map_PosY = tAnni17Map_Cont["ReturnMap"][1]["Y"]
	if SpecialServer_ChkNoGiftServer() then
		nAnni17Map_MapId = tAnni17Map_Cont["ReturnMap"][2]["Map"]
		nAnni17Map_PosX = tAnni17Map_Cont["ReturnMap"][2]["X"]
		nAnni17Map_PosY = tAnni17Map_Cont["ReturnMap"][2]["Y"]
	end
	User_RecordPoint(nAnni17Map_MapId,nAnni17Map_PosX,nAnni17Map_PosY,nAnni17Map_UserId)
	if Sys_EnterServer(998,12,nAnni17Map_UserId,tAnni17Map_Cont["Config"]) then
		--
		return
	end
end

function Anni17Map_Global()
	local nUserid = Get_UserId()
	Sys_MsgBox(tAnni17Map_Text["MsgBox"]["Global"],"Anni17Map_GoGlobal",nil,nUserid)
end
--瑞兽礼包打开
function Anni17Map_OpenBag(nItemId)
	local nAnni17Map_UserId = Get_UserId()
	--限制跨服不能使用
	if User_IsCross(nAnni17Map_UserId) then
		--Sys_MsgBox()
		return
	elseif not Item_ChkItem(nItemId) then
		--Sys_MsgBox()
		return
	elseif not User_CheckLeftSpace(1, nAnni17Map_UserId) then
		--Sys_MsgBox()
		return
	end
	if RewardTemplate_RandomReward(tAnni17Map_Reward,nItemId) then
		--Sys_MsgBox()
	end
end
--上线登录 清每日限量
function Anni17Map_Login()
	local nAnni17Map_UserId = Get_UserId()
	local nAnni17Map_TaskId = tAnni17Map_Cont["Task"]
	--过期删除task
	if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
		if Task_ChkTaskDetail(nAnni17Map_TaskId,0) then
			Task_DelTaskDetail(nAnni17Map_TaskId)
		end
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tAnni17Map_Cont["Level"],tAnni17Map_Cont["Mete"],nAnni17Map_UserId) then
		return
	end
	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nAnni17Map_TaskId,0) then
		Task_AddTaskDetail(nAnni17Map_TaskId,0)
	end
	--重置task
	local nAnni17Map_DropNumChk = Get_TaskDetailData6(nAnni17Map_TaskId, nAnni17Map_UserId)
	if nAnni17Map_DropNumChk == 0 then
		Task_SetTaskDetailData1(nAnni17Map_TaskId, 0, nAnni17Map_UserId)
		Task_SetTaskDetailData2(nAnni17Map_TaskId, 0, nAnni17Map_UserId)
		Task_SetTaskDetailData6(nAnni17Map_TaskId, 1, nAnni17Map_UserId)
	end	
end
function Anni17Map_ReturnMap()
	local nAnni17Map_UserId = Get_UserId()
	Sys_MsgBox(tAnni17Map_Text[26090]["Text111"],"Anni17Map_Return",nil,nAnni17Map_UserId)
end

function Anni17Map_Return()
	if Get_UserMapId() ~= tAnni17Map_Cont["Map"][1] and Get_UserMapId() ~= tAnni17Map_Cont["Map"][2] then
		return
	end
	if User_IsCross() then
		local nUserId = Get_UserId()
		if Sys_ExitOS(nUserId) then
			return
		end
	else
		local nAnni17Map_MapId = tAnni17Map_Cont["ReturnMap"][1]["Map"]
		local nAnni17Map_PosX = tAnni17Map_Cont["ReturnMap"][1]["X"]
		local nAnni17Map_PosY = tAnni17Map_Cont["ReturnMap"][1]["Y"]
		if SpecialServer_ChkNoGiftServer() then
			nAnni17Map_MapId = tAnni17Map_Cont["ReturnMap"][2]["Map"]
			nAnni17Map_PosX = tAnni17Map_Cont["ReturnMap"][2]["X"]
			nAnni17Map_PosY = tAnni17Map_Cont["ReturnMap"][2]["Y"]

		end
		User_UserRandBoundTrans(nAnni17Map_MapId, nAnni17Map_PosX, nAnni17Map_PosY, 5, 5, 0)
	end
end
function Anni17Map_DailyPack(nIndex)
	local nAnni17Map_UserId = Get_UserId()

	--时间判断
	if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"] ) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tAnni17Map_Cont["Level"],tAnni17Map_Cont["Mete"],nAnni17Map_UserId) then
		return
	end
	local nAnni17Map_Event = tAnni17Map_Cont["Stc"]["Sign"][nIndex]["Event"]
	local nAnni17Map_Type = tAnni17Map_Cont["Stc"]["Sign"][nIndex]["Data"]
	--隔天
	if Task_StcInterval(nAnni17Map_Event,nAnni17Map_Type,1,4,nAnni17Map_UserId) then
		Task_SetStatistic(nAnni17Map_Event,nAnni17Map_Type,0,1,nAnni17Map_UserId)
		Task_SetStcTimestamp(nAnni17Map_Event,nAnni17Map_Type,0,nAnni17Map_UserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nAnni17Map_Event, nAnni17Map_Type, ">", 0) then
		return
	end
	
	-- 判断背包空间
	local nAnni17Map_Space = RewardTemplate_GetRewardSpace(tAnni17Map_Reward["Sign"][nIndex][1])
	if not User_CheckLeftSpace(nAnni17Map_Space) then
		return
	end
	local nAnni17Map_Flag = 0
	if Sys_ChkFullTime(tAnni17Map_Cont["Week1-2"]) then
		nAnni17Map_Flag = 1
	else
		nAnni17Map_Flag = 2
	end
	if Task_SetStatistic(nAnni17Map_Event, nAnni17Map_Type, 1, 1) then
		Task_SetStcTimestamp(nAnni17Map_Event, nAnni17Map_Type, 0)
		RewardTemplate_UseItemAndMsg(tAnni17Map_Reward["Sign"][nIndex][nAnni17Map_Flag])
	end	
end

function Anni17Map_Enter() 
	local nAnni17Map_UserId = Get_UserId()

	--时间判断
	if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"] ) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tAnni17Map_Cont["Level"],tAnni17Map_Cont["Mete"],nAnni17Map_UserId) then
		--阁下的修为不足，还是等到80级以后再进入活动地图吧。
		Sys_MsgBox(tAnni17Map_Text["Level"])
		return
	end 
	if not (Get_UserStatisticValue(217,80,nAnni17Map_UserId) >= 1) then
		--阁下先前往甄小福处了解详情再来吧。
		Sys_MsgBox(tAnni17Map_Text["Guide"],"NpcPosition_PathFind</N>26069",nil,nAnni17Map_UserId)
		return
	end
	Sys_MsgBox(tAnni17Map_Text[26201]["Text111"],"Anni17Map_EnterMap",nil,nAnni17Map_UserId)
end

function Anni17Map_EnterMap()
	local nAnni17Map_MapId = tAnni17Map_Cont["Map"][1]
	local nAnni17Map_PosX = tAnni17Map_Cont["Map"]["PosX"]
	local nAnni17Map_PosY = tAnni17Map_Cont["Map"]["PosY"]
	local nAnni17Map_TaskId = tAnni17Map_Cont["Task"] 
	if not Task_ChkTaskDetail(nAnni17Map_TaskId,0) then
		Task_AddTaskDetail(nAnni17Map_TaskId,0)
	end
	User_UserRandBoundTrans(nAnni17Map_MapId, nAnni17Map_PosX, nAnni17Map_PosY, 5, 5, 0)
	--乾元秘境灵怪遍布，宝贝多多，赶紧动手吧。
	Sys_MsgBox(tAnni17Map_Text["MsgBox"]["Enter"],"NpcPosition_PathFind</N>26231")
end
function Anni17Map_RandomMonster()
	local nRan = math.random(1,6)
	local nAnni17Map_MapId = tAnni17Map_Cont["Map"][1]
	local nAnni17Map_PosX = tAnni17Map_Cont["Refresh"][nRan]["PosX"]
	local nAnni17Map_PosY = tAnni17Map_Cont["Refresh"][nRan]["PosY"]
	Sys_GotoSomeWhere(nAnni17Map_PosX,nAnni17Map_PosY,nAnni17Map_MapId)
end

function Anni17Map_Fragment(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	if nIndex == 1 then
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tAnni17Map_Text[3330527]["Full"])
			return
		end
		if not (Get_CountItemType(nItemId,0) >= 20) then
			--阁下身上的碎片不足，无法合成。
			Sys_MsgBox(tAnni17Map_Text[3330527]["NoFragment"])
			return
		end
		if RewardTemplate_UseItemAndMsg(tAnni17Map_Reward[nItemId][1]) then
			--成功合成
			Sys_MsgBox(tAnni17Map_Text[nItemId]["Success"])
			return
		end
	elseif nIndex == 2 then
		--赌碎片
		local tAward,sStr= RewardTemplate_RandomReward(tAnni17Map_Reward[nItemId],2) 
		if tAward[1]["tAward"][1]["RewardItem"] == nil then
			if not Item_ChkItem(nItemId) then
				--赌失败
				Sys_MsgBox(tAnni17Map_Text[3330527]["Fail"])
				return
			else
				Sys_MsgBox(tAnni17Map_Text[3330527]["Fail"],"LinkItemGossipFunc_New</N>"..nItemId.."</S>1-1")
				return
			end
		else
			--赌成功了
			Sys_MsgBox(tAnni17Map_Text[3330527]["Success1"],"LinkItemGossipFunc_New</N>"..nItemId.."</S>1-1")
			return
		end
	else
		if Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
			return 
		end
		local nAnni17Map_ItemNum = Get_CountItemType(nItemId,0) 
		local tAnni17Map_RewardCopy = CommonFunc_Copy(tAnni17Map_Reward[nItemId][3])
		tAnni17Map_RewardCopy["DeleteItem"][1]["ItemNum"] = nAnni17Map_ItemNum
		tAnni17Map_RewardCopy["RewardStrengthValue"]["Value"] = tAnni17Map_Cont["Chi"][nItemId]*nAnni17Map_ItemNum
		if RewardTemplate_UseItemAndMsg(tAnni17Map_RewardCopy) then
			return
		end
	end
end

--------------------------------------------------
--瑞兽礼包打开逻辑
tItem[3600247] = tItem[3600247] or {}
tItem[3600247]["Function"] = function(nItemId,sItemName)
	Anni17Map_OpenBag(nItemId)
end


tItemFace[3330528] = 2901
tItem[3330528] = tItem[3330528] or {}
tItem[3330528]["DialogueText"] = tAnni17Map_Text[3330528]
tItem[3330528]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end 
tItem[3330528]["Text1-1"] = {111}
tItem[3330528]["tOption1-1"] = {111,112,113}
tItem[3330528]["OptionFunc111"] = "Anni17Map_Fragment</N>3330528</N>1"
tItem[3330528]["OptionFunc112"] = "Anni17Map_Fragment</N>3330528</N>2"
tItem[3330528]["OptionFunc113"] = "Anni17Map_Fragment</N>3330528</N>3"
tItem[3330528]["OptionChkFunc111"] = function()
	if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
		return false
	end
	return true
end
tItem[3330528]["OptionChkFunc112"] = function()
	if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
		return false
	end
	return true
end
tItem[3330528]["OptionChkFunc113"] = function()
	if Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
		return false
	end
	return true
end


tItemFace[3330527] = 2900
tItem[3330527] = tItem[3330527] or {}
tItem[3330527]["DialogueText"] = tAnni17Map_Text[3330527]
tItem[3330527]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end 
tItem[3330527]["Text1-1"] = {111}
tItem[3330527]["tOption1-1"] = {111,112,113}
tItem[3330527]["OptionFunc111"] = "Anni17Map_Fragment</N>3330527</N>1"
tItem[3330527]["OptionFunc112"] = "Anni17Map_Fragment</N>3330527</N>2"
tItem[3330527]["OptionFunc113"] = "Anni17Map_Fragment</N>3330527</N>3"
tItem[3330527]["OptionChkFunc111"] = function()
	if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
		return false
	end
	return true
end
tItem[3330527]["OptionChkFunc112"] = function()
	if not Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
		return false
	end
	return true
end
tItem[3330527]["OptionChkFunc113"] = function()
	if Sys_ChkFullTime(tAnni17Map_Cont["ActTime"]) then
		return false
	end
	return true
end


tNpcFace[2463] = 244
tNpcGossip[26231] = tNpcGossip[26231] or DefaultNpc:new{}
tNpcGossip[26231]["OptionHidden"] = 1
tNpcGossip[26231]["DialogueText"] = tAnni17Map_Text[26231]
tNpcGossip[26231]["ChkFunc1-1"] = function()
	local nAnni17Map_UserId = Get_UserId()

	if Sys_ChkFullTime(tActivityTime["Anniversary2020"]["BossTime"]) then
		tNpcGossip[26231]["Text113"] = tAnni17Map_Text[26231]["Text1131"]
	else
		tNpcGossip[26231]["Text113"] = tAnni17Map_Text[26231]["Text113"]
	end
	return true
end
tNpcGossip[26231]["Text1-1"] = {111,112,113}
tNpcGossip[26231]["tOption1-1"] = {111}
tNpcGossip[26231]["OptionFunc111"] = "Anni17Map_RandomMonster"


-- 击杀神龙岛跟古神灵境、活动地图小怪（普通服）
local tAnni17Map_Monster = {}
tAnni17Map_Monster["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
tAnni17Map_Monster["Function"] = Anni17Map_KillMonster
tAnni17Map_Monster["MonsterId"] = {1293,6299,3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151}
table.insert(tMonsterDrop_AreaLoad,tAnni17Map_Monster)
-- 击杀Boss之家怪物掉落（激情服）
local tAnni17Map_Monster_NoGift = {}
tAnni17Map_Monster_NoGift["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
tAnni17Map_Monster_NoGift["Function"] = Anni17Map_KillMonster
tAnni17Map_Monster_NoGift["MonsterId"] = {5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5747}
table.insert(tMonsterDrop_AreaLoad_NoGift,tAnni17Map_Monster_NoGift)

--击杀瑞兽
local tAnni17Map_Monster_Rui = {}
tAnni17Map_Monster_Rui["ActivityTime"] = tActivityTime["Anniversary2020"]["ActivityTime"]
tAnni17Map_Monster_Rui["Function"] = Anni17Map_KillRuiMonster
tAnni17Map_Monster_Rui["MonsterId"] = {1294}
table.insert(tMonsterDrop_AreaLoad,tAnni17Map_Monster_Rui)

--登录自检清task
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,Anni17Map_Login)