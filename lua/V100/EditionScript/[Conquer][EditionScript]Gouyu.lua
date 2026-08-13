----------------------------------------------------------------------------
--Name:		[征服][功能脚本]勾玉功能.lua
--Purpose:	勾玉功能
--Creator: 	翁清海
--Created:	2020/03/12
----------------------------------------------------------------------------

-- 命名前缀
-- Gouyu_

-- logid:10003015

-------------------------------------数据配置--------------------------------------
local tGouyu_Cont = {}
	tGouyu_Cont["FlowerDialog"] = 1209
	tGouyu_Cont["Type"] = {}
	tGouyu_Cont["Type"][3330028] = 100
	tGouyu_Cont["Type"][3330029] = 101
	tGouyu_Cont["Type"][3330030] = 102
	tGouyu_Cont["Type"][3330031] = 103
	tGouyu_Cont["Type"][3330032] = 104
	tGouyu_Cont["Type"][3330033] = 105
	tGouyu_Cont["Type"][3330034] = 200
	tGouyu_Cont["Type"][3330035] = 201
	tGouyu_Cont["Type"][3330036] = 202
	tGouyu_Cont["Type"][3330037] = 203
	tGouyu_Cont["Type"][3330038] = 204
	tGouyu_Cont["Type"][3330039] = 205
	tGouyu_Cont["Type"][3330040] = 400
	tGouyu_Cont["Type"][3330041] = 401
	tGouyu_Cont["Type"][3330042] = 402
	tGouyu_Cont["Type"][3330043] = 403
	tGouyu_Cont["Type"][3330044] = 404
	tGouyu_Cont["Type"][3330045] = 405
	tGouyu_Cont["Type"][3330046] = 500
	tGouyu_Cont["Type"][3330047] = 501
	tGouyu_Cont["Type"][3330048] = 502
	tGouyu_Cont["Type"][3330049] = 503
	tGouyu_Cont["Type"][3330050] = 504
	tGouyu_Cont["Type"][3330051] = 505
	tGouyu_Cont["Type"][3330052] = 300
	tGouyu_Cont["Type"][3330053] = 301
	tGouyu_Cont["Type"][3330054] = 302
	tGouyu_Cont["Type"][3330055] = 303
	tGouyu_Cont["Type"][3330056] = 304
	tGouyu_Cont["Type"][3330057] = 305
	tGouyu_Cont["Type"][3330058] = 600
	tGouyu_Cont["Type"][3330059] = 601
	tGouyu_Cont["Type"][3330060] = 602
	tGouyu_Cont["Type"][3330061] = 603
	tGouyu_Cont["Type"][3330062] = 604
	
local tGouyu_Log = {}
	tGouyu_Log["DelItem"] = "0,0,%d,%d,10003015,2,0,0"
	
local tGouyu_Data = {}
	tGouyu_Data["Emoney"] = 498
	
local tGouyu_EmoneyLog = {}
	tGouyu_EmoneyLog[1] = "10000	1740	498	498	1	"

local tGouyu_Reward = {}
	-- ===勾玉宝盒
	-- ===索引: tGouyu_Reward[3330063][1]
	-- ===删除: 3330063,1
	tGouyu_Reward[3330063] = {}
	tGouyu_Reward[3330063][1] = {}
	tGouyu_Reward[3330063][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tGouyu_Reward[3330063][1]["DeleteItem"] = {}
	tGouyu_Reward[3330063][1]["DeleteItem"][1] = {}
	tGouyu_Reward[3330063][1]["DeleteItem"][1]["Id"] = 3330063 -- 【库】法印宝盒[属性:9]
	tGouyu_Reward[3330063][1]["LogId"] = 10003015
	-- 豪火球之印 - 5.5%
	tGouyu_Reward[3330063][1][1] = {}
	tGouyu_Reward[3330063][1][1]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][1]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][1]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][1]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][1]["RewardItem"][1]["Id"] = 3330028 -- 豪火球之印[3330028][属性:9][叠加:0][金币:0], 【表格】豪火球之印
	tGouyu_Reward[3330063][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印*1
	tGouyu_Reward[3330063][1][1]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·焚天 - 2.75%
	tGouyu_Reward[3330063][1][2] = {}
	tGouyu_Reward[3330063][1][2]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][2]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][2]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][2]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][2]["RewardItem"][1]["Id"] = 3330029 -- 豪火球之印·焚天[3330029][属性:9][叠加:0][金币:0], 【表格】豪火球之印·焚天
	tGouyu_Reward[3330063][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印·焚天*1
	tGouyu_Reward[3330063][1][2]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·疾 - 2.8%
	tGouyu_Reward[3330063][1][3] = {}
	tGouyu_Reward[3330063][1][3]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][3]["ItemChance"] = 280
	tGouyu_Reward[3330063][1][3]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][3]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][3]["RewardItem"][1]["Id"] = 3330030 -- 豪火球之印·疾[3330030][属性:9][叠加:0][金币:0], 【表格】豪火球之印·疾
	tGouyu_Reward[3330063][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印·疾*1
	tGouyu_Reward[3330063][1][3]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印 - 5.5%
	tGouyu_Reward[3330063][1][4] = {}
	tGouyu_Reward[3330063][1][4]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][4]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][4]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][4]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][4]["RewardItem"][1]["Id"] = 3330031 -- 赤炎之印[3330031][属性:9][叠加:0][金币:0], 【表格】赤炎之印
	tGouyu_Reward[3330063][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印*1
	tGouyu_Reward[3330063][1][4]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·燎原 - 2.75%
	tGouyu_Reward[3330063][1][5] = {}
	tGouyu_Reward[3330063][1][5]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][5]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][5]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][5]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][5]["RewardItem"][1]["Id"] = 3330032 -- 赤炎之印·燎原[3330032][属性:9][叠加:0][金币:0], 【表格】赤炎之印·燎原
	tGouyu_Reward[3330063][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印·燎原*1
	tGouyu_Reward[3330063][1][5]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·灼 - 2.8%
	tGouyu_Reward[3330063][1][6] = {}
	tGouyu_Reward[3330063][1][6]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][6]["ItemChance"] = 280
	tGouyu_Reward[3330063][1][6]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][6]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][6]["RewardItem"][1]["Id"] = 3330033 -- 赤炎之印·灼[3330033][属性:9][叠加:0][金币:0], 【表格】赤炎之印·灼
	tGouyu_Reward[3330063][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印·灼*1
	tGouyu_Reward[3330063][1][6]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印 - 5.5%
	tGouyu_Reward[3330063][1][7] = {}
	tGouyu_Reward[3330063][1][7]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][7]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][7]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][7]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][7]["RewardItem"][1]["Id"] = 3330034 -- 水牢之印[3330034][属性:9][叠加:0][金币:0], 【表格】水牢之印
	tGouyu_Reward[3330063][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印*1
	tGouyu_Reward[3330063][1][7]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·力穷 - 2.75%
	tGouyu_Reward[3330063][1][8] = {}
	tGouyu_Reward[3330063][1][8]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][8]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][8]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][8]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][8]["RewardItem"][1]["Id"] = 3330035 -- 水牢之印·力穷[3330035][属性:9][叠加:0][金币:0], 【表格】水牢之印·力穷
	tGouyu_Reward[3330063][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印·力穷*1
	tGouyu_Reward[3330063][1][8]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·无功 - 2.75%
	tGouyu_Reward[3330063][1][9] = {}
	tGouyu_Reward[3330063][1][9]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][9]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][9]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][9]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][9]["RewardItem"][1]["Id"] = 3330036 -- 水牢之印·无功[3330036][属性:9][叠加:0][金币:0], 【表格】水牢之印·无功
	tGouyu_Reward[3330063][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印·无功*1
	tGouyu_Reward[3330063][1][9]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印 - 5.5%
	tGouyu_Reward[3330063][1][10] = {}
	tGouyu_Reward[3330063][1][10]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][10]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][10]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][10]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][10]["RewardItem"][1]["Id"] = 3330037 -- 水龙之印[3330037][属性:9][叠加:0][金币:0], 【表格】水龙之印
	tGouyu_Reward[3330063][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印*1
	tGouyu_Reward[3330063][1][10]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·澎湃 - 2.75%
	tGouyu_Reward[3330063][1][11] = {}
	tGouyu_Reward[3330063][1][11]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][11]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][11]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][11]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][11]["RewardItem"][1]["Id"] = 3330038 -- 水龙之印·澎湃[3330038][属性:9][叠加:0][金币:0], 【表格】水龙之印·澎湃
	tGouyu_Reward[3330063][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印·澎湃*1
	tGouyu_Reward[3330063][1][11]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·移形 - 2.75%
	tGouyu_Reward[3330063][1][12] = {}
	tGouyu_Reward[3330063][1][12]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][12]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][12]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][12]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][12]["RewardItem"][1]["Id"] = 3330039 -- 水龙之印·移形[3330039][属性:9][叠加:0][金币:0], 【表格】水龙之印·移形
	tGouyu_Reward[3330063][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印·移形*1
	tGouyu_Reward[3330063][1][12]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印 - 5.5%
	tGouyu_Reward[3330063][1][13] = {}
	tGouyu_Reward[3330063][1][13]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][13]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][13]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][13]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][13]["RewardItem"][1]["Id"] = 3330040 -- 镰鼬之印[3330040][属性:9][叠加:0][金币:0], 【表格】镰鼬之印
	tGouyu_Reward[3330063][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印*1
	tGouyu_Reward[3330063][1][13]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·乱舞 - 2.75%
	tGouyu_Reward[3330063][1][14] = {}
	tGouyu_Reward[3330063][1][14]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][14]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][14]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][14]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][14]["RewardItem"][1]["Id"] = 3330041 -- 镰鼬之印·乱舞[3330041][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·乱舞
	tGouyu_Reward[3330063][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印·乱舞*1
	tGouyu_Reward[3330063][1][14]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·风驰 - 2.8%
	tGouyu_Reward[3330063][1][15] = {}
	tGouyu_Reward[3330063][1][15]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][15]["ItemChance"] = 280
	tGouyu_Reward[3330063][1][15]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][15]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][15]["RewardItem"][1]["Id"] = 3330042 -- 镰鼬之印·风驰[3330042][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·风驰
	tGouyu_Reward[3330063][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印·风驰*1
	tGouyu_Reward[3330063][1][15]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印 - 5.5%
	tGouyu_Reward[3330063][1][16] = {}
	tGouyu_Reward[3330063][1][16]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][16]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][16]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][16]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][16]["RewardItem"][1]["Id"] = 3330043 -- 螺旋之印[3330043][属性:9][叠加:0][金币:0], 【表格】螺旋之印
	tGouyu_Reward[3330063][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印*1
	tGouyu_Reward[3330063][1][16]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·仙法 - 2.75%
	tGouyu_Reward[3330063][1][17] = {}
	tGouyu_Reward[3330063][1][17]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][17]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][17]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][17]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][17]["RewardItem"][1]["Id"] = 3330044 -- 螺旋之印·仙法[3330044][属性:9][叠加:0][金币:0], 【表格】螺旋之印·仙法
	tGouyu_Reward[3330063][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印·仙法*1
	tGouyu_Reward[3330063][1][17]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·光轮 - 2.75%
	tGouyu_Reward[3330063][1][18] = {}
	tGouyu_Reward[3330063][1][18]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][18]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][18]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][18]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][18]["RewardItem"][1]["Id"] = 3330045 -- 螺旋之印·光轮[3330045][属性:9][叠加:0][金币:0], 【表格】螺旋之印·光轮
	tGouyu_Reward[3330063][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印·光轮*1
	tGouyu_Reward[3330063][1][18]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印 - 5.5%
	tGouyu_Reward[3330063][1][19] = {}
	tGouyu_Reward[3330063][1][19]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][19]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][19]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][19]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][19]["RewardItem"][1]["Id"] = 3330046 -- 麒麟之印[3330046][属性:9][叠加:0][金币:0], 【表格】麒麟之印
	tGouyu_Reward[3330063][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印*1
	tGouyu_Reward[3330063][1][19]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·雷葬 - 0.05%
	tGouyu_Reward[3330063][1][20] = {}
	tGouyu_Reward[3330063][1][20]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][20]["ItemChance"] = 5
	tGouyu_Reward[3330063][1][20]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][20]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][20]["RewardItem"][1]["Id"] = 3330047 -- 麒麟之印·雷葬[3330047][属性:9][叠加:0][金币:0], 【表格】麒麟之印·雷葬
	tGouyu_Reward[3330063][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印·雷葬*1
	tGouyu_Reward[3330063][1][20]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·封界 - 2.75%
	tGouyu_Reward[3330063][1][21] = {}
	tGouyu_Reward[3330063][1][21]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][21]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][21]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][21]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][21]["RewardItem"][1]["Id"] = 3330048 -- 麒麟之印·封界[3330048][属性:9][叠加:0][金币:0], 【表格】麒麟之印·封界
	tGouyu_Reward[3330063][1][21]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印·封界*1
	tGouyu_Reward[3330063][1][21]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印 - 5.5%
	tGouyu_Reward[3330063][1][22] = {}
	tGouyu_Reward[3330063][1][22]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][22]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][22]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][22]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][22]["RewardItem"][1]["Id"] = 3330049 -- 雷切之印[3330049][属性:9][叠加:0][金币:0], 【表格】雷切之印
	tGouyu_Reward[3330063][1][22]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印*1
	tGouyu_Reward[3330063][1][22]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·一闪 - 0.05%
	tGouyu_Reward[3330063][1][23] = {}
	tGouyu_Reward[3330063][1][23]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][23]["ItemChance"] = 5
	tGouyu_Reward[3330063][1][23]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][23]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][23]["RewardItem"][1]["Id"] = 3330050 -- 雷切之印·一闪[3330050][属性:9][叠加:0][金币:0], 【表格】雷切之印·一闪
	tGouyu_Reward[3330063][1][23]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印·一闪*1
	tGouyu_Reward[3330063][1][23]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·神威 - 2.75%
	tGouyu_Reward[3330063][1][24] = {}
	tGouyu_Reward[3330063][1][24]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][24]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][24]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][24]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][24]["RewardItem"][1]["Id"] = 3330051 -- 雷切之印·神威[3330051][属性:9][叠加:0][金币:0], 【表格】雷切之印·神威
	tGouyu_Reward[3330063][1][24]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印·神威*1
	tGouyu_Reward[3330063][1][24]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印 - 5.5%
	tGouyu_Reward[3330063][1][25] = {}
	tGouyu_Reward[3330063][1][25]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][25]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][25]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][25]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][25]["RewardItem"][1]["Id"] = 3330052 -- 土遁之印[3330052][属性:9][叠加:0][金币:0], 【表格】土遁之印
	tGouyu_Reward[3330063][1][25]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印*1
	tGouyu_Reward[3330063][1][25]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·无懈 - 0.05%
	tGouyu_Reward[3330063][1][26] = {}
	tGouyu_Reward[3330063][1][26]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][26]["ItemChance"] = 5
	tGouyu_Reward[3330063][1][26]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][26]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][26]["RewardItem"][1]["Id"] = 3330053 -- 土遁之印·无懈[3330053][属性:9][叠加:0][金币:0], 【表格】土遁之印·无懈
	tGouyu_Reward[3330063][1][26]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印·无懈*1
	tGouyu_Reward[3330063][1][26]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·固法 - 2.75%
	tGouyu_Reward[3330063][1][27] = {}
	tGouyu_Reward[3330063][1][27]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][27]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][27]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][27]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][27]["RewardItem"][1]["Id"] = 3330054 -- 土遁之印·固法[3330054][属性:9][叠加:0][金币:0], 【表格】土遁之印·固法
	tGouyu_Reward[3330063][1][27]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印·固法*1
	tGouyu_Reward[3330063][1][27]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印 - 5.5%
	tGouyu_Reward[3330063][1][28] = {}
	tGouyu_Reward[3330063][1][28]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][28]["ItemChance"] = 550
	tGouyu_Reward[3330063][1][28]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][28]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][28]["RewardItem"][1]["Id"] = 3330055 -- 尘遁之印[3330055][属性:9][叠加:0][金币:0], 【表格】尘遁之印
	tGouyu_Reward[3330063][1][28]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印*1
	tGouyu_Reward[3330063][1][28]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·天绝 - 2.75%
	tGouyu_Reward[3330063][1][29] = {}
	tGouyu_Reward[3330063][1][29]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][29]["ItemChance"] = 275
	tGouyu_Reward[3330063][1][29]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][29]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][29]["RewardItem"][1]["Id"] = 3330056 -- 尘遁之印·天绝[3330056][属性:9][叠加:0][金币:0], 【表格】尘遁之印·天绝
	tGouyu_Reward[3330063][1][29]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印·天绝*1
	tGouyu_Reward[3330063][1][29]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·震灵 - 0.05%
	tGouyu_Reward[3330063][1][30] = {}
	tGouyu_Reward[3330063][1][30]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][30]["ItemChance"] = 5
	tGouyu_Reward[3330063][1][30]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][30]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][30]["RewardItem"][1]["Id"] = 3330057 -- 尘遁之印·震灵[3330057][属性:9][叠加:0][金币:0], 【表格】尘遁之印·震灵
	tGouyu_Reward[3330063][1][30]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印·震灵*1
	tGouyu_Reward[3330063][1][30]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·式纸之舞 - 0.25%
	tGouyu_Reward[3330063][1][31] = {}
	tGouyu_Reward[3330063][1][31]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][31]["ItemChance"] = 25
	tGouyu_Reward[3330063][1][31]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][31]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][31]["RewardItem"][1]["Id"] = 3330058 -- 血继之印·式纸之舞[3330058][属性:9][叠加:0][金币:0], 【表格】血继之印·式纸之舞
	tGouyu_Reward[3330063][1][31]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·式纸之舞*1
	tGouyu_Reward[3330063][1][31]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·轮墓天狱 - 0.25%
	tGouyu_Reward[3330063][1][32] = {}
	tGouyu_Reward[3330063][1][32]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][32]["ItemChance"] = 25
	tGouyu_Reward[3330063][1][32]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][32]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][32]["RewardItem"][1]["Id"] = 3330059 -- 血继之印·轮墓天狱[3330059][属性:9][叠加:0][金币:0], 【表格】血继之印·轮墓天狱
	tGouyu_Reward[3330063][1][32]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·轮墓天狱*1
	tGouyu_Reward[3330063][1][32]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·无限月读 - 0.05%
	tGouyu_Reward[3330063][1][33] = {}
	tGouyu_Reward[3330063][1][33]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][33]["ItemChance"] = 5
	tGouyu_Reward[3330063][1][33]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][33]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][33]["RewardItem"][1]["Id"] = 3330060 -- 血继之印·无限月读[3330060][属性:9][叠加:0][金币:0], 【表格】血继之印·无限月读
	tGouyu_Reward[3330063][1][33]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·无限月读*1
	tGouyu_Reward[3330063][1][33]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·八卦回天 - 0.05%
	tGouyu_Reward[3330063][1][34] = {}
	tGouyu_Reward[3330063][1][34]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][34]["ItemChance"] = 5
	tGouyu_Reward[3330063][1][34]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][34]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][34]["RewardItem"][1]["Id"] = 3330061 -- 血继之印·八卦回天[3330061][属性:9][叠加:0][金币:0], 【表格】血继之印·八卦回天
	tGouyu_Reward[3330063][1][34]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·八卦回天*1
	tGouyu_Reward[3330063][1][34]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·尸骨脉 - 0.05%
	tGouyu_Reward[3330063][1][35] = {}
	tGouyu_Reward[3330063][1][35]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330063][1][35]["ItemChance"] = 5
	tGouyu_Reward[3330063][1][35]["RewardItem"] = {}
	tGouyu_Reward[3330063][1][35]["RewardItem"][1] = {}
	tGouyu_Reward[3330063][1][35]["RewardItem"][1]["Id"] = 3330062 -- 血继之印·尸骨脉[3330062][属性:9][叠加:0][金币:0], 【表格】血继之印·尸骨脉
	tGouyu_Reward[3330063][1][35]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·尸骨脉*1
	tGouyu_Reward[3330063][1][35]["RewardEffect"] = {}
	tGouyu_Reward[3330063][1][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330063][1][35]["RewardEffect"]["Effect"] = "angelwing"


	tGouyu_Reward[3330064] = {}
	-- ===高级勾玉宝盒
	-- ===索引: tGouyu_Reward[3330064][1]
	-- ===删除: 3330064,1
	tGouyu_Reward[3330064][1] = {}
	tGouyu_Reward[3330064][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tGouyu_Reward[3330064][1]["DeleteItem"] = {}
	tGouyu_Reward[3330064][1]["DeleteItem"][1] = {}
	tGouyu_Reward[3330064][1]["DeleteItem"][1]["Id"] = 3330064 -- 【库】高级法印宝盒[属性:9]
	tGouyu_Reward[3330064][1]["LogId"] = 10003015
	-- 豪火球之印 - 4.6%
	tGouyu_Reward[3330064][1][1] = {}
	tGouyu_Reward[3330064][1][1]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][1]["ItemChance"] = 460
	tGouyu_Reward[3330064][1][1]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][1]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][1]["RewardItem"][1]["Id"] = 3330028 -- 豪火球之印[3330028][属性:9][叠加:0][金币:0], 【表格】豪火球之印
	tGouyu_Reward[3330064][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印*1
	tGouyu_Reward[3330064][1][1]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·焚天 - 2.5%
	tGouyu_Reward[3330064][1][2] = {}
	tGouyu_Reward[3330064][1][2]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][2]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][2]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][2]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][2]["RewardItem"][1]["Id"] = 3330029 -- 豪火球之印·焚天[3330029][属性:9][叠加:0][金币:0], 【表格】豪火球之印·焚天
	tGouyu_Reward[3330064][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印·焚天*1
	tGouyu_Reward[3330064][1][2]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·疾 - 2.5%
	tGouyu_Reward[3330064][1][3] = {}
	tGouyu_Reward[3330064][1][3]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][3]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][3]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][3]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][3]["RewardItem"][1]["Id"] = 3330030 -- 豪火球之印·疾[3330030][属性:9][叠加:0][金币:0], 【表格】豪火球之印·疾
	tGouyu_Reward[3330064][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印·疾*1
	tGouyu_Reward[3330064][1][3]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印 - 4.7%
	tGouyu_Reward[3330064][1][4] = {}
	tGouyu_Reward[3330064][1][4]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][4]["ItemChance"] = 470
	tGouyu_Reward[3330064][1][4]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][4]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][4]["RewardItem"][1]["Id"] = 3330031 -- 赤炎之印[3330031][属性:9][叠加:0][金币:0], 【表格】赤炎之印
	tGouyu_Reward[3330064][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印*1
	tGouyu_Reward[3330064][1][4]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·燎原 - 2.5%
	tGouyu_Reward[3330064][1][5] = {}
	tGouyu_Reward[3330064][1][5]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][5]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][5]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][5]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][5]["RewardItem"][1]["Id"] = 3330032 -- 赤炎之印·燎原[3330032][属性:9][叠加:0][金币:0], 【表格】赤炎之印·燎原
	tGouyu_Reward[3330064][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印·燎原*1
	tGouyu_Reward[3330064][1][5]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·灼 - 2.5%
	tGouyu_Reward[3330064][1][6] = {}
	tGouyu_Reward[3330064][1][6]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][6]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][6]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][6]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][6]["RewardItem"][1]["Id"] = 3330033 -- 赤炎之印·灼[3330033][属性:9][叠加:0][金币:0], 【表格】赤炎之印·灼
	tGouyu_Reward[3330064][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印·灼*1
	tGouyu_Reward[3330064][1][6]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印 - 4.7%
	tGouyu_Reward[3330064][1][7] = {}
	tGouyu_Reward[3330064][1][7]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][7]["ItemChance"] = 470
	tGouyu_Reward[3330064][1][7]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][7]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][7]["RewardItem"][1]["Id"] = 3330034 -- 水牢之印[3330034][属性:9][叠加:0][金币:0], 【表格】水牢之印
	tGouyu_Reward[3330064][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印*1
	tGouyu_Reward[3330064][1][7]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·力穷 - 2.5%
	tGouyu_Reward[3330064][1][8] = {}
	tGouyu_Reward[3330064][1][8]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][8]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][8]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][8]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][8]["RewardItem"][1]["Id"] = 3330035 -- 水牢之印·力穷[3330035][属性:9][叠加:0][金币:0], 【表格】水牢之印·力穷
	tGouyu_Reward[3330064][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印·力穷*1
	tGouyu_Reward[3330064][1][8]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·无功 - 2.5%
	tGouyu_Reward[3330064][1][9] = {}
	tGouyu_Reward[3330064][1][9]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][9]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][9]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][9]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][9]["RewardItem"][1]["Id"] = 3330036 -- 水牢之印·无功[3330036][属性:9][叠加:0][金币:0], 【表格】水牢之印·无功
	tGouyu_Reward[3330064][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印·无功*1
	tGouyu_Reward[3330064][1][9]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印 - 4.6%
	tGouyu_Reward[3330064][1][10] = {}
	tGouyu_Reward[3330064][1][10]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][10]["ItemChance"] = 460
	tGouyu_Reward[3330064][1][10]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][10]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][10]["RewardItem"][1]["Id"] = 3330037 -- 水龙之印[3330037][属性:9][叠加:0][金币:0], 【表格】水龙之印
	tGouyu_Reward[3330064][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印*1
	tGouyu_Reward[3330064][1][10]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·澎湃 - 2.5%
	tGouyu_Reward[3330064][1][11] = {}
	tGouyu_Reward[3330064][1][11]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][11]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][11]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][11]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][11]["RewardItem"][1]["Id"] = 3330038 -- 水龙之印·澎湃[3330038][属性:9][叠加:0][金币:0], 【表格】水龙之印·澎湃
	tGouyu_Reward[3330064][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印·澎湃*1
	tGouyu_Reward[3330064][1][11]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·移形 - 2.5%
	tGouyu_Reward[3330064][1][12] = {}
	tGouyu_Reward[3330064][1][12]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][12]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][12]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][12]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][12]["RewardItem"][1]["Id"] = 3330039 -- 水龙之印·移形[3330039][属性:9][叠加:0][金币:0], 【表格】水龙之印·移形
	tGouyu_Reward[3330064][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印·移形*1
	tGouyu_Reward[3330064][1][12]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印 - 4.6%
	tGouyu_Reward[3330064][1][13] = {}
	tGouyu_Reward[3330064][1][13]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][13]["ItemChance"] = 460
	tGouyu_Reward[3330064][1][13]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][13]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][13]["RewardItem"][1]["Id"] = 3330040 -- 镰鼬之印[3330040][属性:9][叠加:0][金币:0], 【表格】镰鼬之印
	tGouyu_Reward[3330064][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印*1
	tGouyu_Reward[3330064][1][13]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·乱舞 - 2.5%
	tGouyu_Reward[3330064][1][14] = {}
	tGouyu_Reward[3330064][1][14]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][14]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][14]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][14]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][14]["RewardItem"][1]["Id"] = 3330041 -- 镰鼬之印·乱舞[3330041][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·乱舞
	tGouyu_Reward[3330064][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印·乱舞*1
	tGouyu_Reward[3330064][1][14]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·风驰 - 2.5%
	tGouyu_Reward[3330064][1][15] = {}
	tGouyu_Reward[3330064][1][15]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][15]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][15]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][15]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][15]["RewardItem"][1]["Id"] = 3330042 -- 镰鼬之印·风驰[3330042][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·风驰
	tGouyu_Reward[3330064][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印·风驰*1
	tGouyu_Reward[3330064][1][15]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印 - 4.7%
	tGouyu_Reward[3330064][1][16] = {}
	tGouyu_Reward[3330064][1][16]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][16]["ItemChance"] = 470
	tGouyu_Reward[3330064][1][16]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][16]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][16]["RewardItem"][1]["Id"] = 3330043 -- 螺旋之印[3330043][属性:9][叠加:0][金币:0], 【表格】螺旋之印
	tGouyu_Reward[3330064][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印*1
	tGouyu_Reward[3330064][1][16]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·仙法 - 2.5%
	tGouyu_Reward[3330064][1][17] = {}
	tGouyu_Reward[3330064][1][17]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][17]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][17]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][17]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][17]["RewardItem"][1]["Id"] = 3330044 -- 螺旋之印·仙法[3330044][属性:9][叠加:0][金币:0], 【表格】螺旋之印·仙法
	tGouyu_Reward[3330064][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印·仙法*1
	tGouyu_Reward[3330064][1][17]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·光轮 - 2.5%
	tGouyu_Reward[3330064][1][18] = {}
	tGouyu_Reward[3330064][1][18]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][18]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][18]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][18]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][18]["RewardItem"][1]["Id"] = 3330045 -- 螺旋之印·光轮[3330045][属性:9][叠加:0][金币:0], 【表格】螺旋之印·光轮
	tGouyu_Reward[3330064][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印·光轮*1
	tGouyu_Reward[3330064][1][18]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印 - 4.6%
	tGouyu_Reward[3330064][1][19] = {}
	tGouyu_Reward[3330064][1][19]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][19]["ItemChance"] = 460
	tGouyu_Reward[3330064][1][19]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][19]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][19]["RewardItem"][1]["Id"] = 3330046 -- 麒麟之印[3330046][属性:9][叠加:0][金币:0], 【表格】麒麟之印
	tGouyu_Reward[3330064][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印*1
	tGouyu_Reward[3330064][1][19]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·雷葬 - 1.2%
	tGouyu_Reward[3330064][1][20] = {}
	tGouyu_Reward[3330064][1][20]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][20]["ItemChance"] = 120
	tGouyu_Reward[3330064][1][20]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][20]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][20]["RewardItem"][1]["Id"] = 3330047 -- 麒麟之印·雷葬[3330047][属性:9][叠加:0][金币:0], 【表格】麒麟之印·雷葬
	tGouyu_Reward[3330064][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印·雷葬*1
	tGouyu_Reward[3330064][1][20]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·封界 - 2.5%
	tGouyu_Reward[3330064][1][21] = {}
	tGouyu_Reward[3330064][1][21]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][21]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][21]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][21]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][21]["RewardItem"][1]["Id"] = 3330048 -- 麒麟之印·封界[3330048][属性:9][叠加:0][金币:0], 【表格】麒麟之印·封界
	tGouyu_Reward[3330064][1][21]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印·封界*1
	tGouyu_Reward[3330064][1][21]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印 - 4.7%
	tGouyu_Reward[3330064][1][22] = {}
	tGouyu_Reward[3330064][1][22]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][22]["ItemChance"] = 470
	tGouyu_Reward[3330064][1][22]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][22]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][22]["RewardItem"][1]["Id"] = 3330049 -- 雷切之印[3330049][属性:9][叠加:0][金币:0], 【表格】雷切之印
	tGouyu_Reward[3330064][1][22]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印*1
	tGouyu_Reward[3330064][1][22]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·一闪 - 1.2%
	tGouyu_Reward[3330064][1][23] = {}
	tGouyu_Reward[3330064][1][23]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][23]["ItemChance"] = 120
	tGouyu_Reward[3330064][1][23]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][23]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][23]["RewardItem"][1]["Id"] = 3330050 -- 雷切之印·一闪[3330050][属性:9][叠加:0][金币:0], 【表格】雷切之印·一闪
	tGouyu_Reward[3330064][1][23]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印·一闪*1
	tGouyu_Reward[3330064][1][23]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·神威 - 2.5%
	tGouyu_Reward[3330064][1][24] = {}
	tGouyu_Reward[3330064][1][24]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][24]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][24]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][24]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][24]["RewardItem"][1]["Id"] = 3330051 -- 雷切之印·神威[3330051][属性:9][叠加:0][金币:0], 【表格】雷切之印·神威
	tGouyu_Reward[3330064][1][24]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印·神威*1
	tGouyu_Reward[3330064][1][24]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印 - 4.7%
	tGouyu_Reward[3330064][1][25] = {}
	tGouyu_Reward[3330064][1][25]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][25]["ItemChance"] = 470
	tGouyu_Reward[3330064][1][25]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][25]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][25]["RewardItem"][1]["Id"] = 3330052 -- 土遁之印[3330052][属性:9][叠加:0][金币:0], 【表格】土遁之印
	tGouyu_Reward[3330064][1][25]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印*1
	tGouyu_Reward[3330064][1][25]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·无懈 - 1.2%
	tGouyu_Reward[3330064][1][26] = {}
	tGouyu_Reward[3330064][1][26]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][26]["ItemChance"] = 120
	tGouyu_Reward[3330064][1][26]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][26]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][26]["RewardItem"][1]["Id"] = 3330053 -- 土遁之印·无懈[3330053][属性:9][叠加:0][金币:0], 【表格】土遁之印·无懈
	tGouyu_Reward[3330064][1][26]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印·无懈*1
	tGouyu_Reward[3330064][1][26]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·固法 - 2.5%
	tGouyu_Reward[3330064][1][27] = {}
	tGouyu_Reward[3330064][1][27]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][27]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][27]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][27]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][27]["RewardItem"][1]["Id"] = 3330054 -- 土遁之印·固法[3330054][属性:9][叠加:0][金币:0], 【表格】土遁之印·固法
	tGouyu_Reward[3330064][1][27]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印·固法*1
	tGouyu_Reward[3330064][1][27]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印 - 4.7%
	tGouyu_Reward[3330064][1][28] = {}
	tGouyu_Reward[3330064][1][28]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][28]["ItemChance"] = 470
	tGouyu_Reward[3330064][1][28]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][28]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][28]["RewardItem"][1]["Id"] = 3330055 -- 尘遁之印[3330055][属性:9][叠加:0][金币:0], 【表格】尘遁之印
	tGouyu_Reward[3330064][1][28]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印*1
	tGouyu_Reward[3330064][1][28]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·天绝 - 2.5%
	tGouyu_Reward[3330064][1][29] = {}
	tGouyu_Reward[3330064][1][29]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][29]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][29]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][29]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][29]["RewardItem"][1]["Id"] = 3330056 -- 尘遁之印·天绝[3330056][属性:9][叠加:0][金币:0], 【表格】尘遁之印·天绝
	tGouyu_Reward[3330064][1][29]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印·天绝*1
	tGouyu_Reward[3330064][1][29]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·震灵 - 1.2%
	tGouyu_Reward[3330064][1][30] = {}
	tGouyu_Reward[3330064][1][30]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][30]["ItemChance"] = 120
	tGouyu_Reward[3330064][1][30]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][30]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][30]["RewardItem"][1]["Id"] = 3330057 -- 尘遁之印·震灵[3330057][属性:9][叠加:0][金币:0], 【表格】尘遁之印·震灵
	tGouyu_Reward[3330064][1][30]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印·震灵*1
	tGouyu_Reward[3330064][1][30]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·式纸之舞 - 2.5%
	tGouyu_Reward[3330064][1][31] = {}
	tGouyu_Reward[3330064][1][31]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][31]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][31]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][31]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][31]["RewardItem"][1]["Id"] = 3330058 -- 血继之印·式纸之舞[3330058][属性:9][叠加:0][金币:0], 【表格】血继之印·式纸之舞
	tGouyu_Reward[3330064][1][31]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·式纸之舞*1
	tGouyu_Reward[3330064][1][31]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·轮墓天狱 - 2.5%
	tGouyu_Reward[3330064][1][32] = {}
	tGouyu_Reward[3330064][1][32]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][32]["ItemChance"] = 250
	tGouyu_Reward[3330064][1][32]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][32]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][32]["RewardItem"][1]["Id"] = 3330059 -- 血继之印·轮墓天狱[3330059][属性:9][叠加:0][金币:0], 【表格】血继之印·轮墓天狱
	tGouyu_Reward[3330064][1][32]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·轮墓天狱*1
	tGouyu_Reward[3330064][1][32]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·无限月读 - 1.2%
	tGouyu_Reward[3330064][1][33] = {}
	tGouyu_Reward[3330064][1][33]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][33]["ItemChance"] = 120
	tGouyu_Reward[3330064][1][33]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][33]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][33]["RewardItem"][1]["Id"] = 3330060 -- 血继之印·无限月读[3330060][属性:9][叠加:0][金币:0], 【表格】血继之印·无限月读
	tGouyu_Reward[3330064][1][33]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·无限月读*1
	tGouyu_Reward[3330064][1][33]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·八卦回天 - 1.2%
	tGouyu_Reward[3330064][1][34] = {}
	tGouyu_Reward[3330064][1][34]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][34]["ItemChance"] = 120
	tGouyu_Reward[3330064][1][34]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][34]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][34]["RewardItem"][1]["Id"] = 3330061 -- 血继之印·八卦回天[3330061][属性:9][叠加:0][金币:0], 【表格】血继之印·八卦回天
	tGouyu_Reward[3330064][1][34]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·八卦回天*1
	tGouyu_Reward[3330064][1][34]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·尸骨脉 - 1.2%
	tGouyu_Reward[3330064][1][35] = {}
	tGouyu_Reward[3330064][1][35]["RandomItemChanceType"] = 2
	tGouyu_Reward[3330064][1][35]["ItemChance"] = 120
	tGouyu_Reward[3330064][1][35]["RewardItem"] = {}
	tGouyu_Reward[3330064][1][35]["RewardItem"][1] = {}
	tGouyu_Reward[3330064][1][35]["RewardItem"][1]["Id"] = 3330062 -- 血继之印·尸骨脉[3330062][属性:9][叠加:0][金币:0], 【表格】血继之印·尸骨脉
	tGouyu_Reward[3330064][1][35]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·尸骨脉*1
	tGouyu_Reward[3330064][1][35]["RewardEffect"] = {}
	tGouyu_Reward[3330064][1][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3330064][1][35]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===勾玉宝盒
	-- ===索引: tGouyu_Reward[3332214][1]
	-- ===删除: 3332214,1
	tGouyu_Reward[3332214] = {}
	tGouyu_Reward[3332214][1] = {}
	tGouyu_Reward[3332214][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tGouyu_Reward[3332214][1]["DeleteItem"] = {}
	tGouyu_Reward[3332214][1]["DeleteItem"][1] = {}
	tGouyu_Reward[3332214][1]["DeleteItem"][1]["Id"] = 3332214 -- 【库】法印宝盒[属性:9]
	tGouyu_Reward[3332214][1]["LogId"] = 10003015
	-- 豪火球之印 - 5.5%
	tGouyu_Reward[3332214][1][1] = {}
	tGouyu_Reward[3332214][1][1]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][1]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][1]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][1]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][1]["RewardItem"][1]["Id"] = 3330028 -- 豪火球之印[3330028][属性:9][叠加:0][金币:0], 【表格】豪火球之印
	tGouyu_Reward[3332214][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 豪火球之印*1
	tGouyu_Reward[3332214][1][1]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·焚天 - 2.75%
	tGouyu_Reward[3332214][1][2] = {}
	tGouyu_Reward[3332214][1][2]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][2]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][2]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][2]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][2]["RewardItem"][1]["Id"] = 3330029 -- 豪火球之印·焚天[3330029][属性:9][叠加:0][金币:0], 【表格】豪火球之印·焚天
	tGouyu_Reward[3332214][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 豪火球之印·焚天*1
	tGouyu_Reward[3332214][1][2]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·疾 - 2.8%
	tGouyu_Reward[3332214][1][3] = {}
	tGouyu_Reward[3332214][1][3]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][3]["ItemChance"] = 280
	tGouyu_Reward[3332214][1][3]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][3]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][3]["RewardItem"][1]["Id"] = 3330030 -- 豪火球之印·疾[3330030][属性:9][叠加:0][金币:0], 【表格】豪火球之印·疾
	tGouyu_Reward[3332214][1][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 豪火球之印·疾*1
	tGouyu_Reward[3332214][1][3]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印 - 5.5%
	tGouyu_Reward[3332214][1][4] = {}
	tGouyu_Reward[3332214][1][4]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][4]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][4]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][4]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][4]["RewardItem"][1]["Id"] = 3330031 -- 赤炎之印[3330031][属性:9][叠加:0][金币:0], 【表格】赤炎之印
	tGouyu_Reward[3332214][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 赤炎之印*1
	tGouyu_Reward[3332214][1][4]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·燎原 - 2.75%
	tGouyu_Reward[3332214][1][5] = {}
	tGouyu_Reward[3332214][1][5]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][5]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][5]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][5]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][5]["RewardItem"][1]["Id"] = 3330032 -- 赤炎之印·燎原[3330032][属性:9][叠加:0][金币:0], 【表格】赤炎之印·燎原
	tGouyu_Reward[3332214][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 赤炎之印·燎原*1
	tGouyu_Reward[3332214][1][5]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·灼 - 2.8%
	tGouyu_Reward[3332214][1][6] = {}
	tGouyu_Reward[3332214][1][6]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][6]["ItemChance"] = 280
	tGouyu_Reward[3332214][1][6]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][6]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][6]["RewardItem"][1]["Id"] = 3330033 -- 赤炎之印·灼[3330033][属性:9][叠加:0][金币:0], 【表格】赤炎之印·灼
	tGouyu_Reward[3332214][1][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 赤炎之印·灼*1
	tGouyu_Reward[3332214][1][6]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印 - 5.5%
	tGouyu_Reward[3332214][1][7] = {}
	tGouyu_Reward[3332214][1][7]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][7]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][7]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][7]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][7]["RewardItem"][1]["Id"] = 3330034 -- 水牢之印[3330034][属性:9][叠加:0][金币:0], 【表格】水牢之印
	tGouyu_Reward[3332214][1][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 水牢之印*1
	tGouyu_Reward[3332214][1][7]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·力穷 - 2.75%
	tGouyu_Reward[3332214][1][8] = {}
	tGouyu_Reward[3332214][1][8]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][8]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][8]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][8]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][8]["RewardItem"][1]["Id"] = 3330035 -- 水牢之印·力穷[3330035][属性:9][叠加:0][金币:0], 【表格】水牢之印·力穷
	tGouyu_Reward[3332214][1][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 水牢之印·力穷*1
	tGouyu_Reward[3332214][1][8]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·无功 - 2.75%
	tGouyu_Reward[3332214][1][9] = {}
	tGouyu_Reward[3332214][1][9]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][9]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][9]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][9]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][9]["RewardItem"][1]["Id"] = 3330036 -- 水牢之印·无功[3330036][属性:9][叠加:0][金币:0], 【表格】水牢之印·无功
	tGouyu_Reward[3332214][1][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 水牢之印·无功*1
	tGouyu_Reward[3332214][1][9]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印 - 5.5%
	tGouyu_Reward[3332214][1][10] = {}
	tGouyu_Reward[3332214][1][10]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][10]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][10]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][10]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][10]["RewardItem"][1]["Id"] = 3330037 -- 水龙之印[3330037][属性:9][叠加:0][金币:0], 【表格】水龙之印
	tGouyu_Reward[3332214][1][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 水龙之印*1
	tGouyu_Reward[3332214][1][10]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·澎湃 - 2.75%
	tGouyu_Reward[3332214][1][11] = {}
	tGouyu_Reward[3332214][1][11]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][11]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][11]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][11]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][11]["RewardItem"][1]["Id"] = 3330038 -- 水龙之印·澎湃[3330038][属性:9][叠加:0][金币:0], 【表格】水龙之印·澎湃
	tGouyu_Reward[3332214][1][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 水龙之印·澎湃*1
	tGouyu_Reward[3332214][1][11]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·移形 - 2.75%
	tGouyu_Reward[3332214][1][12] = {}
	tGouyu_Reward[3332214][1][12]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][12]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][12]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][12]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][12]["RewardItem"][1]["Id"] = 3330039 -- 水龙之印·移形[3330039][属性:9][叠加:0][金币:0], 【表格】水龙之印·移形
	tGouyu_Reward[3332214][1][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 水龙之印·移形*1
	tGouyu_Reward[3332214][1][12]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印 - 5.5%
	tGouyu_Reward[3332214][1][13] = {}
	tGouyu_Reward[3332214][1][13]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][13]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][13]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][13]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][13]["RewardItem"][1]["Id"] = 3330040 -- 镰鼬之印[3330040][属性:9][叠加:0][金币:0], 【表格】镰鼬之印
	tGouyu_Reward[3332214][1][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 镰鼬之印*1
	tGouyu_Reward[3332214][1][13]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·乱舞 - 2.75%
	tGouyu_Reward[3332214][1][14] = {}
	tGouyu_Reward[3332214][1][14]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][14]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][14]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][14]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][14]["RewardItem"][1]["Id"] = 3330041 -- 镰鼬之印·乱舞[3330041][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·乱舞
	tGouyu_Reward[3332214][1][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 镰鼬之印·乱舞*1
	tGouyu_Reward[3332214][1][14]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·风驰 - 2.8%
	tGouyu_Reward[3332214][1][15] = {}
	tGouyu_Reward[3332214][1][15]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][15]["ItemChance"] = 280
	tGouyu_Reward[3332214][1][15]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][15]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][15]["RewardItem"][1]["Id"] = 3330042 -- 镰鼬之印·风驰[3330042][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·风驰
	tGouyu_Reward[3332214][1][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 镰鼬之印·风驰*1
	tGouyu_Reward[3332214][1][15]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印 - 5.5%
	tGouyu_Reward[3332214][1][16] = {}
	tGouyu_Reward[3332214][1][16]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][16]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][16]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][16]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][16]["RewardItem"][1]["Id"] = 3330043 -- 螺旋之印[3330043][属性:9][叠加:0][金币:0], 【表格】螺旋之印
	tGouyu_Reward[3332214][1][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 螺旋之印*1
	tGouyu_Reward[3332214][1][16]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·仙法 - 2.75%
	tGouyu_Reward[3332214][1][17] = {}
	tGouyu_Reward[3332214][1][17]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][17]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][17]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][17]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][17]["RewardItem"][1]["Id"] = 3330044 -- 螺旋之印·仙法[3330044][属性:9][叠加:0][金币:0], 【表格】螺旋之印·仙法
	tGouyu_Reward[3332214][1][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 螺旋之印·仙法*1
	tGouyu_Reward[3332214][1][17]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·光轮 - 2.75%
	tGouyu_Reward[3332214][1][18] = {}
	tGouyu_Reward[3332214][1][18]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][18]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][18]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][18]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][18]["RewardItem"][1]["Id"] = 3330045 -- 螺旋之印·光轮[3330045][属性:9][叠加:0][金币:0], 【表格】螺旋之印·光轮
	tGouyu_Reward[3332214][1][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 螺旋之印·光轮*1
	tGouyu_Reward[3332214][1][18]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印 - 5.5%
	tGouyu_Reward[3332214][1][19] = {}
	tGouyu_Reward[3332214][1][19]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][19]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][19]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][19]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][19]["RewardItem"][1]["Id"] = 3330046 -- 麒麟之印[3330046][属性:9][叠加:0][金币:0], 【表格】麒麟之印
	tGouyu_Reward[3332214][1][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 麒麟之印*1
	tGouyu_Reward[3332214][1][19]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·雷葬 - 0.05%
	tGouyu_Reward[3332214][1][20] = {}
	tGouyu_Reward[3332214][1][20]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][20]["ItemChance"] = 5
	tGouyu_Reward[3332214][1][20]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][20]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][20]["RewardItem"][1]["Id"] = 3330047 -- 麒麟之印·雷葬[3330047][属性:9][叠加:0][金币:0], 【表格】麒麟之印·雷葬
	tGouyu_Reward[3332214][1][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 麒麟之印·雷葬*1
	tGouyu_Reward[3332214][1][20]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·封界 - 2.75%
	tGouyu_Reward[3332214][1][21] = {}
	tGouyu_Reward[3332214][1][21]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][21]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][21]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][21]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][21]["RewardItem"][1]["Id"] = 3330048 -- 麒麟之印·封界[3330048][属性:9][叠加:0][金币:0], 【表格】麒麟之印·封界
	tGouyu_Reward[3332214][1][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 麒麟之印·封界*1
	tGouyu_Reward[3332214][1][21]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印 - 5.5%
	tGouyu_Reward[3332214][1][22] = {}
	tGouyu_Reward[3332214][1][22]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][22]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][22]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][22]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][22]["RewardItem"][1]["Id"] = 3330049 -- 雷切之印[3330049][属性:9][叠加:0][金币:0], 【表格】雷切之印
	tGouyu_Reward[3332214][1][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷切之印*1
	tGouyu_Reward[3332214][1][22]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·一闪 - 0.05%
	tGouyu_Reward[3332214][1][23] = {}
	tGouyu_Reward[3332214][1][23]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][23]["ItemChance"] = 5
	tGouyu_Reward[3332214][1][23]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][23]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][23]["RewardItem"][1]["Id"] = 3330050 -- 雷切之印·一闪[3330050][属性:9][叠加:0][金币:0], 【表格】雷切之印·一闪
	tGouyu_Reward[3332214][1][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷切之印·一闪*1
	tGouyu_Reward[3332214][1][23]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·神威 - 2.75%
	tGouyu_Reward[3332214][1][24] = {}
	tGouyu_Reward[3332214][1][24]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][24]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][24]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][24]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][24]["RewardItem"][1]["Id"] = 3330051 -- 雷切之印·神威[3330051][属性:9][叠加:0][金币:0], 【表格】雷切之印·神威
	tGouyu_Reward[3332214][1][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷切之印·神威*1
	tGouyu_Reward[3332214][1][24]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印 - 5.5%
	tGouyu_Reward[3332214][1][25] = {}
	tGouyu_Reward[3332214][1][25]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][25]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][25]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][25]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][25]["RewardItem"][1]["Id"] = 3330052 -- 土遁之印[3330052][属性:9][叠加:0][金币:0], 【表格】土遁之印
	tGouyu_Reward[3332214][1][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 土遁之印*1
	tGouyu_Reward[3332214][1][25]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·无懈 - 0.05%
	tGouyu_Reward[3332214][1][26] = {}
	tGouyu_Reward[3332214][1][26]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][26]["ItemChance"] = 5
	tGouyu_Reward[3332214][1][26]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][26]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][26]["RewardItem"][1]["Id"] = 3330053 -- 土遁之印·无懈[3330053][属性:9][叠加:0][金币:0], 【表格】土遁之印·无懈
	tGouyu_Reward[3332214][1][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 土遁之印·无懈*1
	tGouyu_Reward[3332214][1][26]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·固法 - 2.75%
	tGouyu_Reward[3332214][1][27] = {}
	tGouyu_Reward[3332214][1][27]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][27]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][27]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][27]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][27]["RewardItem"][1]["Id"] = 3330054 -- 土遁之印·固法[3330054][属性:9][叠加:0][金币:0], 【表格】土遁之印·固法
	tGouyu_Reward[3332214][1][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 土遁之印·固法*1
	tGouyu_Reward[3332214][1][27]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印 - 5.5%
	tGouyu_Reward[3332214][1][28] = {}
	tGouyu_Reward[3332214][1][28]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][28]["ItemChance"] = 550
	tGouyu_Reward[3332214][1][28]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][28]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][28]["RewardItem"][1]["Id"] = 3330055 -- 尘遁之印[3330055][属性:9][叠加:0][金币:0], 【表格】尘遁之印
	tGouyu_Reward[3332214][1][28]["RewardItem"][1]["Attr"] = "0 1 3" -- 尘遁之印*1
	tGouyu_Reward[3332214][1][28]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·天绝 - 2.75%
	tGouyu_Reward[3332214][1][29] = {}
	tGouyu_Reward[3332214][1][29]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][29]["ItemChance"] = 275
	tGouyu_Reward[3332214][1][29]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][29]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][29]["RewardItem"][1]["Id"] = 3330056 -- 尘遁之印·天绝[3330056][属性:9][叠加:0][金币:0], 【表格】尘遁之印·天绝
	tGouyu_Reward[3332214][1][29]["RewardItem"][1]["Attr"] = "0 1 3" -- 尘遁之印·天绝*1
	tGouyu_Reward[3332214][1][29]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·震灵 - 0.05%
	tGouyu_Reward[3332214][1][30] = {}
	tGouyu_Reward[3332214][1][30]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][30]["ItemChance"] = 5
	tGouyu_Reward[3332214][1][30]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][30]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][30]["RewardItem"][1]["Id"] = 3330057 -- 尘遁之印·震灵[3330057][属性:9][叠加:0][金币:0], 【表格】尘遁之印·震灵
	tGouyu_Reward[3332214][1][30]["RewardItem"][1]["Attr"] = "0 1 3" -- 尘遁之印·震灵*1
	tGouyu_Reward[3332214][1][30]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·式纸之舞 - 0.25%
	tGouyu_Reward[3332214][1][31] = {}
	tGouyu_Reward[3332214][1][31]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][31]["ItemChance"] = 25
	tGouyu_Reward[3332214][1][31]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][31]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][31]["RewardItem"][1]["Id"] = 3330058 -- 血继之印·式纸之舞[3330058][属性:9][叠加:0][金币:0], 【表格】血继之印·式纸之舞
	tGouyu_Reward[3332214][1][31]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·式纸之舞*1
	tGouyu_Reward[3332214][1][31]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·轮墓天狱 - 0.25%
	tGouyu_Reward[3332214][1][32] = {}
	tGouyu_Reward[3332214][1][32]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][32]["ItemChance"] = 25
	tGouyu_Reward[3332214][1][32]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][32]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][32]["RewardItem"][1]["Id"] = 3330059 -- 血继之印·轮墓天狱[3330059][属性:9][叠加:0][金币:0], 【表格】血继之印·轮墓天狱
	tGouyu_Reward[3332214][1][32]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·轮墓天狱*1
	tGouyu_Reward[3332214][1][32]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·无限月读 - 0.05%
	tGouyu_Reward[3332214][1][33] = {}
	tGouyu_Reward[3332214][1][33]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][33]["ItemChance"] = 5
	tGouyu_Reward[3332214][1][33]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][33]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][33]["RewardItem"][1]["Id"] = 3330060 -- 血继之印·无限月读[3330060][属性:9][叠加:0][金币:0], 【表格】血继之印·无限月读
	tGouyu_Reward[3332214][1][33]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·无限月读*1
	tGouyu_Reward[3332214][1][33]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·八卦回天 - 0.05%
	tGouyu_Reward[3332214][1][34] = {}
	tGouyu_Reward[3332214][1][34]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][34]["ItemChance"] = 5
	tGouyu_Reward[3332214][1][34]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][34]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][34]["RewardItem"][1]["Id"] = 3330061 -- 血继之印·八卦回天[3330061][属性:9][叠加:0][金币:0], 【表格】血继之印·八卦回天
	tGouyu_Reward[3332214][1][34]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·八卦回天*1
	tGouyu_Reward[3332214][1][34]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·尸骨脉 - 0.05%
	tGouyu_Reward[3332214][1][35] = {}
	tGouyu_Reward[3332214][1][35]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332214][1][35]["ItemChance"] = 5
	tGouyu_Reward[3332214][1][35]["RewardItem"] = {}
	tGouyu_Reward[3332214][1][35]["RewardItem"][1] = {}
	tGouyu_Reward[3332214][1][35]["RewardItem"][1]["Id"] = 3330062 -- 血继之印·尸骨脉[3330062][属性:9][叠加:0][金币:0], 【表格】血继之印·尸骨脉
	tGouyu_Reward[3332214][1][35]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·尸骨脉*1
	tGouyu_Reward[3332214][1][35]["RewardEffect"] = {}
	tGouyu_Reward[3332214][1][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332214][1][35]["RewardEffect"]["Effect"] = "angelwing"


	tGouyu_Reward[3332215] = {}
	-- ===高级勾玉宝盒
	-- ===索引: tGouyu_Reward[3332215][1]
	-- ===删除: 3332215,1
	tGouyu_Reward[3332215][1] = {}
	tGouyu_Reward[3332215][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tGouyu_Reward[3332215][1]["DeleteItem"] = {}
	tGouyu_Reward[3332215][1]["DeleteItem"][1] = {}
	tGouyu_Reward[3332215][1]["DeleteItem"][1]["Id"] = 3332215 -- 【库】高级法印宝盒[属性:9]
	tGouyu_Reward[3332215][1]["LogId"] = 10003015
	-- 豪火球之印 - 4.6%
	tGouyu_Reward[3332215][1][1] = {}
	tGouyu_Reward[3332215][1][1]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][1]["ItemChance"] = 460
	tGouyu_Reward[3332215][1][1]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][1]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][1]["RewardItem"][1]["Id"] = 3330028 -- 豪火球之印[3330028][属性:9][叠加:0][金币:0], 【表格】豪火球之印
	tGouyu_Reward[3332215][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 豪火球之印*1
	tGouyu_Reward[3332215][1][1]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·焚天 - 2.5%
	tGouyu_Reward[3332215][1][2] = {}
	tGouyu_Reward[3332215][1][2]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][2]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][2]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][2]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][2]["RewardItem"][1]["Id"] = 3330029 -- 豪火球之印·焚天[3330029][属性:9][叠加:0][金币:0], 【表格】豪火球之印·焚天
	tGouyu_Reward[3332215][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 豪火球之印·焚天*1
	tGouyu_Reward[3332215][1][2]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 豪火球之印·疾 - 2.5%
	tGouyu_Reward[3332215][1][3] = {}
	tGouyu_Reward[3332215][1][3]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][3]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][3]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][3]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][3]["RewardItem"][1]["Id"] = 3330030 -- 豪火球之印·疾[3330030][属性:9][叠加:0][金币:0], 【表格】豪火球之印·疾
	tGouyu_Reward[3332215][1][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 豪火球之印·疾*1
	tGouyu_Reward[3332215][1][3]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印 - 4.7%
	tGouyu_Reward[3332215][1][4] = {}
	tGouyu_Reward[3332215][1][4]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][4]["ItemChance"] = 470
	tGouyu_Reward[3332215][1][4]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][4]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][4]["RewardItem"][1]["Id"] = 3330031 -- 赤炎之印[3330031][属性:9][叠加:0][金币:0], 【表格】赤炎之印
	tGouyu_Reward[3332215][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 赤炎之印*1
	tGouyu_Reward[3332215][1][4]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·燎原 - 2.5%
	tGouyu_Reward[3332215][1][5] = {}
	tGouyu_Reward[3332215][1][5]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][5]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][5]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][5]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][5]["RewardItem"][1]["Id"] = 3330032 -- 赤炎之印·燎原[3330032][属性:9][叠加:0][金币:0], 【表格】赤炎之印·燎原
	tGouyu_Reward[3332215][1][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 赤炎之印·燎原*1
	tGouyu_Reward[3332215][1][5]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炎之印·灼 - 2.5%
	tGouyu_Reward[3332215][1][6] = {}
	tGouyu_Reward[3332215][1][6]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][6]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][6]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][6]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][6]["RewardItem"][1]["Id"] = 3330033 -- 赤炎之印·灼[3330033][属性:9][叠加:0][金币:0], 【表格】赤炎之印·灼
	tGouyu_Reward[3332215][1][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 赤炎之印·灼*1
	tGouyu_Reward[3332215][1][6]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印 - 4.7%
	tGouyu_Reward[3332215][1][7] = {}
	tGouyu_Reward[3332215][1][7]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][7]["ItemChance"] = 470
	tGouyu_Reward[3332215][1][7]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][7]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][7]["RewardItem"][1]["Id"] = 3330034 -- 水牢之印[3330034][属性:9][叠加:0][金币:0], 【表格】水牢之印
	tGouyu_Reward[3332215][1][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 水牢之印*1
	tGouyu_Reward[3332215][1][7]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·力穷 - 2.5%
	tGouyu_Reward[3332215][1][8] = {}
	tGouyu_Reward[3332215][1][8]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][8]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][8]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][8]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][8]["RewardItem"][1]["Id"] = 3330035 -- 水牢之印·力穷[3330035][属性:9][叠加:0][金币:0], 【表格】水牢之印·力穷
	tGouyu_Reward[3332215][1][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 水牢之印·力穷*1
	tGouyu_Reward[3332215][1][8]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 水牢之印·无功 - 2.5%
	tGouyu_Reward[3332215][1][9] = {}
	tGouyu_Reward[3332215][1][9]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][9]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][9]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][9]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][9]["RewardItem"][1]["Id"] = 3330036 -- 水牢之印·无功[3330036][属性:9][叠加:0][金币:0], 【表格】水牢之印·无功
	tGouyu_Reward[3332215][1][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 水牢之印·无功*1
	tGouyu_Reward[3332215][1][9]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印 - 4.6%
	tGouyu_Reward[3332215][1][10] = {}
	tGouyu_Reward[3332215][1][10]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][10]["ItemChance"] = 460
	tGouyu_Reward[3332215][1][10]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][10]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][10]["RewardItem"][1]["Id"] = 3330037 -- 水龙之印[3330037][属性:9][叠加:0][金币:0], 【表格】水龙之印
	tGouyu_Reward[3332215][1][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 水龙之印*1
	tGouyu_Reward[3332215][1][10]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·澎湃 - 2.5%
	tGouyu_Reward[3332215][1][11] = {}
	tGouyu_Reward[3332215][1][11]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][11]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][11]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][11]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][11]["RewardItem"][1]["Id"] = 3330038 -- 水龙之印·澎湃[3330038][属性:9][叠加:0][金币:0], 【表格】水龙之印·澎湃
	tGouyu_Reward[3332215][1][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 水龙之印·澎湃*1
	tGouyu_Reward[3332215][1][11]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 水龙之印·移形 - 2.5%
	tGouyu_Reward[3332215][1][12] = {}
	tGouyu_Reward[3332215][1][12]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][12]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][12]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][12]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][12]["RewardItem"][1]["Id"] = 3330039 -- 水龙之印·移形[3330039][属性:9][叠加:0][金币:0], 【表格】水龙之印·移形
	tGouyu_Reward[3332215][1][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 水龙之印·移形*1
	tGouyu_Reward[3332215][1][12]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印 - 4.6%
	tGouyu_Reward[3332215][1][13] = {}
	tGouyu_Reward[3332215][1][13]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][13]["ItemChance"] = 460
	tGouyu_Reward[3332215][1][13]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][13]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][13]["RewardItem"][1]["Id"] = 3330040 -- 镰鼬之印[3330040][属性:9][叠加:0][金币:0], 【表格】镰鼬之印
	tGouyu_Reward[3332215][1][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 镰鼬之印*1
	tGouyu_Reward[3332215][1][13]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·乱舞 - 2.5%
	tGouyu_Reward[3332215][1][14] = {}
	tGouyu_Reward[3332215][1][14]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][14]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][14]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][14]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][14]["RewardItem"][1]["Id"] = 3330041 -- 镰鼬之印·乱舞[3330041][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·乱舞
	tGouyu_Reward[3332215][1][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 镰鼬之印·乱舞*1
	tGouyu_Reward[3332215][1][14]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 镰鼬之印·风驰 - 2.5%
	tGouyu_Reward[3332215][1][15] = {}
	tGouyu_Reward[3332215][1][15]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][15]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][15]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][15]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][15]["RewardItem"][1]["Id"] = 3330042 -- 镰鼬之印·风驰[3330042][属性:9][叠加:0][金币:0], 【表格】镰鼬之印·风驰
	tGouyu_Reward[3332215][1][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 镰鼬之印·风驰*1
	tGouyu_Reward[3332215][1][15]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印 - 4.7%
	tGouyu_Reward[3332215][1][16] = {}
	tGouyu_Reward[3332215][1][16]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][16]["ItemChance"] = 470
	tGouyu_Reward[3332215][1][16]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][16]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][16]["RewardItem"][1]["Id"] = 3330043 -- 螺旋之印[3330043][属性:9][叠加:0][金币:0], 【表格】螺旋之印
	tGouyu_Reward[3332215][1][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 螺旋之印*1
	tGouyu_Reward[3332215][1][16]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·仙法 - 2.5%
	tGouyu_Reward[3332215][1][17] = {}
	tGouyu_Reward[3332215][1][17]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][17]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][17]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][17]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][17]["RewardItem"][1]["Id"] = 3330044 -- 螺旋之印·仙法[3330044][属性:9][叠加:0][金币:0], 【表格】螺旋之印·仙法
	tGouyu_Reward[3332215][1][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 螺旋之印·仙法*1
	tGouyu_Reward[3332215][1][17]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 螺旋之印·光轮 - 2.5%
	tGouyu_Reward[3332215][1][18] = {}
	tGouyu_Reward[3332215][1][18]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][18]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][18]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][18]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][18]["RewardItem"][1]["Id"] = 3330045 -- 螺旋之印·光轮[3330045][属性:9][叠加:0][金币:0], 【表格】螺旋之印·光轮
	tGouyu_Reward[3332215][1][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 螺旋之印·光轮*1
	tGouyu_Reward[3332215][1][18]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印 - 4.6%
	tGouyu_Reward[3332215][1][19] = {}
	tGouyu_Reward[3332215][1][19]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][19]["ItemChance"] = 460
	tGouyu_Reward[3332215][1][19]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][19]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][19]["RewardItem"][1]["Id"] = 3330046 -- 麒麟之印[3330046][属性:9][叠加:0][金币:0], 【表格】麒麟之印
	tGouyu_Reward[3332215][1][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 麒麟之印*1
	tGouyu_Reward[3332215][1][19]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·雷葬 - 1.2%
	tGouyu_Reward[3332215][1][20] = {}
	tGouyu_Reward[3332215][1][20]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][20]["ItemChance"] = 120
	tGouyu_Reward[3332215][1][20]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][20]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][20]["RewardItem"][1]["Id"] = 3330047 -- 麒麟之印·雷葬[3330047][属性:9][叠加:0][金币:0], 【表格】麒麟之印·雷葬
	tGouyu_Reward[3332215][1][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 麒麟之印·雷葬*1
	tGouyu_Reward[3332215][1][20]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟之印·封界 - 2.5%
	tGouyu_Reward[3332215][1][21] = {}
	tGouyu_Reward[3332215][1][21]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][21]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][21]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][21]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][21]["RewardItem"][1]["Id"] = 3330048 -- 麒麟之印·封界[3330048][属性:9][叠加:0][金币:0], 【表格】麒麟之印·封界
	tGouyu_Reward[3332215][1][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 麒麟之印·封界*1
	tGouyu_Reward[3332215][1][21]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印 - 4.7%
	tGouyu_Reward[3332215][1][22] = {}
	tGouyu_Reward[3332215][1][22]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][22]["ItemChance"] = 470
	tGouyu_Reward[3332215][1][22]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][22]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][22]["RewardItem"][1]["Id"] = 3330049 -- 雷切之印[3330049][属性:9][叠加:0][金币:0], 【表格】雷切之印
	tGouyu_Reward[3332215][1][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷切之印*1
	tGouyu_Reward[3332215][1][22]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·一闪 - 1.2%
	tGouyu_Reward[3332215][1][23] = {}
	tGouyu_Reward[3332215][1][23]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][23]["ItemChance"] = 120
	tGouyu_Reward[3332215][1][23]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][23]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][23]["RewardItem"][1]["Id"] = 3330050 -- 雷切之印·一闪[3330050][属性:9][叠加:0][金币:0], 【表格】雷切之印·一闪
	tGouyu_Reward[3332215][1][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷切之印·一闪*1
	tGouyu_Reward[3332215][1][23]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷切之印·神威 - 2.5%
	tGouyu_Reward[3332215][1][24] = {}
	tGouyu_Reward[3332215][1][24]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][24]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][24]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][24]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][24]["RewardItem"][1]["Id"] = 3330051 -- 雷切之印·神威[3330051][属性:9][叠加:0][金币:0], 【表格】雷切之印·神威
	tGouyu_Reward[3332215][1][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷切之印·神威*1
	tGouyu_Reward[3332215][1][24]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印 - 4.7%
	tGouyu_Reward[3332215][1][25] = {}
	tGouyu_Reward[3332215][1][25]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][25]["ItemChance"] = 470
	tGouyu_Reward[3332215][1][25]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][25]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][25]["RewardItem"][1]["Id"] = 3330052 -- 土遁之印[3330052][属性:9][叠加:0][金币:0], 【表格】土遁之印
	tGouyu_Reward[3332215][1][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 土遁之印*1
	tGouyu_Reward[3332215][1][25]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·无懈 - 1.2%
	tGouyu_Reward[3332215][1][26] = {}
	tGouyu_Reward[3332215][1][26]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][26]["ItemChance"] = 120
	tGouyu_Reward[3332215][1][26]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][26]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][26]["RewardItem"][1]["Id"] = 3330053 -- 土遁之印·无懈[3330053][属性:9][叠加:0][金币:0], 【表格】土遁之印·无懈
	tGouyu_Reward[3332215][1][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 土遁之印·无懈*1
	tGouyu_Reward[3332215][1][26]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 土遁之印·固法 - 2.5%
	tGouyu_Reward[3332215][1][27] = {}
	tGouyu_Reward[3332215][1][27]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][27]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][27]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][27]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][27]["RewardItem"][1]["Id"] = 3330054 -- 土遁之印·固法[3330054][属性:9][叠加:0][金币:0], 【表格】土遁之印·固法
	tGouyu_Reward[3332215][1][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 土遁之印·固法*1
	tGouyu_Reward[3332215][1][27]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印 - 4.7%
	tGouyu_Reward[3332215][1][28] = {}
	tGouyu_Reward[3332215][1][28]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][28]["ItemChance"] = 470
	tGouyu_Reward[3332215][1][28]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][28]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][28]["RewardItem"][1]["Id"] = 3330055 -- 尘遁之印[3330055][属性:9][叠加:0][金币:0], 【表格】尘遁之印
	tGouyu_Reward[3332215][1][28]["RewardItem"][1]["Attr"] = "0 1 3" -- 尘遁之印*1
	tGouyu_Reward[3332215][1][28]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·天绝 - 2.5%
	tGouyu_Reward[3332215][1][29] = {}
	tGouyu_Reward[3332215][1][29]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][29]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][29]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][29]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][29]["RewardItem"][1]["Id"] = 3330056 -- 尘遁之印·天绝[3330056][属性:9][叠加:0][金币:0], 【表格】尘遁之印·天绝
	tGouyu_Reward[3332215][1][29]["RewardItem"][1]["Attr"] = "0 1 3" -- 尘遁之印·天绝*1
	tGouyu_Reward[3332215][1][29]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 尘遁之印·震灵 - 1.2%
	tGouyu_Reward[3332215][1][30] = {}
	tGouyu_Reward[3332215][1][30]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][30]["ItemChance"] = 120
	tGouyu_Reward[3332215][1][30]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][30]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][30]["RewardItem"][1]["Id"] = 3330057 -- 尘遁之印·震灵[3330057][属性:9][叠加:0][金币:0], 【表格】尘遁之印·震灵
	tGouyu_Reward[3332215][1][30]["RewardItem"][1]["Attr"] = "0 1 3" -- 尘遁之印·震灵*1
	tGouyu_Reward[3332215][1][30]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·式纸之舞 - 2.5%
	tGouyu_Reward[3332215][1][31] = {}
	tGouyu_Reward[3332215][1][31]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][31]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][31]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][31]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][31]["RewardItem"][1]["Id"] = 3330058 -- 血继之印·式纸之舞[3330058][属性:9][叠加:0][金币:0], 【表格】血继之印·式纸之舞
	tGouyu_Reward[3332215][1][31]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·式纸之舞*1
	tGouyu_Reward[3332215][1][31]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·轮墓天狱 - 2.5%
	tGouyu_Reward[3332215][1][32] = {}
	tGouyu_Reward[3332215][1][32]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][32]["ItemChance"] = 250
	tGouyu_Reward[3332215][1][32]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][32]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][32]["RewardItem"][1]["Id"] = 3330059 -- 血继之印·轮墓天狱[3330059][属性:9][叠加:0][金币:0], 【表格】血继之印·轮墓天狱
	tGouyu_Reward[3332215][1][32]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·轮墓天狱*1
	tGouyu_Reward[3332215][1][32]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·无限月读 - 1.2%
	tGouyu_Reward[3332215][1][33] = {}
	tGouyu_Reward[3332215][1][33]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][33]["ItemChance"] = 120
	tGouyu_Reward[3332215][1][33]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][33]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][33]["RewardItem"][1]["Id"] = 3330060 -- 血继之印·无限月读[3330060][属性:9][叠加:0][金币:0], 【表格】血继之印·无限月读
	tGouyu_Reward[3332215][1][33]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·无限月读*1
	tGouyu_Reward[3332215][1][33]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·八卦回天 - 1.2%
	tGouyu_Reward[3332215][1][34] = {}
	tGouyu_Reward[3332215][1][34]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][34]["ItemChance"] = 120
	tGouyu_Reward[3332215][1][34]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][34]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][34]["RewardItem"][1]["Id"] = 3330061 -- 血继之印·八卦回天[3330061][属性:9][叠加:0][金币:0], 【表格】血继之印·八卦回天
	tGouyu_Reward[3332215][1][34]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·八卦回天*1
	tGouyu_Reward[3332215][1][34]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 血继之印·尸骨脉 - 1.2%
	tGouyu_Reward[3332215][1][35] = {}
	tGouyu_Reward[3332215][1][35]["RandomItemChanceType"] = 2
	tGouyu_Reward[3332215][1][35]["ItemChance"] = 120
	tGouyu_Reward[3332215][1][35]["RewardItem"] = {}
	tGouyu_Reward[3332215][1][35]["RewardItem"][1] = {}
	tGouyu_Reward[3332215][1][35]["RewardItem"][1]["Id"] = 3330062 -- 血继之印·尸骨脉[3330062][属性:9][叠加:0][金币:0], 【表格】血继之印·尸骨脉
	tGouyu_Reward[3332215][1][35]["RewardItem"][1]["Attr"] = "0 1 3" -- 血继之印·尸骨脉*1
	tGouyu_Reward[3332215][1][35]["RewardEffect"] = {}
	tGouyu_Reward[3332215][1][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3332215][1][35]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tGouyu_Reward[3327202] = {}
	tGouyu_Reward[3327202]["DeleteItem"] = {}
	tGouyu_Reward[3327202]["DeleteItem"][1] = {}
	tGouyu_Reward[3327202]["DeleteItem"][1]["Id"] = 3327202
	tGouyu_Reward[3327202]["DeleteItem"][1]["ItemNum"] = 15
	tGouyu_Reward[3327202]["LogId"] = 10003015
	tGouyu_Reward[3327202]["RewardItem"] = {}
	tGouyu_Reward[3327202]["RewardItem"][1] = {}
	tGouyu_Reward[3327202]["RewardItem"][1]["Id"] = 3330063
	tGouyu_Reward[3327202]["RewardItem"][1]["Attr"] = "0 1"
	tGouyu_Reward[3327202]["RewardEffect"] = {}
	tGouyu_Reward[3327202]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tGouyu_Reward[3327202]["RewardEffect"]["Effect"] = "angelwing"
	
-------------------------------------逻辑模块--------------------------------------
function Gouyu_FlowerUse(nGouyu_ItemId)
	if not Item_ChkItem(nGouyu_ItemId) then
		return
	end
	
	--判断忍者职业
	local nGouyu_Pro = Get_NewUserProfession()
	
	if nGouyu_Pro < G_PRO_Ninja0_New or nGouyu_Pro > G_PRO_Ninja49_New then
		return
	end
	
	User_OpenDialog(tGouyu_Cont["FlowerDialog"])
end

function Gouyu_OpenItemLink(nGouyu_ItemId)
	if not Item_ChkItem(nGouyu_ItemId) then
		return
	end
	--天石不足
	local nGouyu_Emoney = Get_UserEMoney()
	local nGouyu_NeedEmoney = tGouyu_Data["Emoney"]
	
	if nGouyu_Emoney < nGouyu_NeedEmoney then
		Sys_MsgBox(tNinjaPromotion_Text[3330028]["Msg"]["NoMoney"])
		return
	end
	local sGouyu_ItemName =  Get_ItemtypeName(nGouyu_ItemId)
	tItem[nGouyu_ItemId]["Text211"] = string.format(tNinjaPromotion_Text[3330028]["Text211"],sGouyu_ItemName,sGouyu_ItemName)
	tItem[nGouyu_ItemId]["OptionFunc211"] = "Gouyu_OpenItemCost</N>" .. nGouyu_ItemId
	LinkItemGossipFunc_New(nGouyu_ItemId,"2-1")
end

function Gouyu_OpenItemCost(nGouyu_ItemId)
	if not Item_ChkItem(nGouyu_ItemId) then
		return
	end
	--天石不足
	local nGouyu_Emoney = Get_UserEMoney()
	local nGouyu_NeedEmoney = tGouyu_Data["Emoney"]
	
	if nGouyu_Emoney < nGouyu_NeedEmoney then
		Sys_MsgBox(tNinjaPromotion_Text[3330028]["Msg"]["NoMoney"])
		return
	end
	--扣天石
	if not User_AddEMoney(-nGouyu_NeedEmoney) then
		return
	end
	Gouyu_ItemUse(nGouyu_ItemId,3)
	--打emoneylog
	Sys_SaveEmoneyBuy(tGouyu_EmoneyLog[1])
	local sGouyu_ItemName =  Get_ItemtypeName(nGouyu_ItemId)
	local sGouyu_Str = string.format(tNinjaPromotion_Text[3330028]["Msg"]["Success"],sGouyu_ItemName)
	Sys_MsgBox(sGouyu_Str)
end

function Gouyu_ItemUse(nGouyu_ItemId,nLev)
	if Item_ChkItem(nGouyu_ItemId) and Item_DelItem(nGouyu_ItemId) then
		local sGouyu_ItemName =  Get_ItemtypeName(nGouyu_ItemId)
		--获得勾玉
		User_AwardGouYu(tGouyu_Cont["Type"][nGouyu_ItemId],nLev)
		Sys_SaveActionRewardLog(string.format(tGouyu_Log["DelItem"], nGouyu_ItemId, 1))
		User_TalkChannel2005(string.format(tRewardTemplate_Text["Main"], sGouyu_ItemName))
	end
end 
-------------------------------------物品模块--------------------------------------
-- 勾玉精华
tItem[3329979] = tItem[3329979] or {}
tItem[3329979]["Function"] = function(nGouyu_ItemId,sGouyu_ItemName)
	local nGouyu_Count = Get_CountItemType(nGouyu_ItemId,0)
	
	if Item_ChkItem(nGouyu_ItemId) and Item_DelMulItem(nGouyu_ItemId,nGouyu_ItemId,nGouyu_Count) then
		--添加勾玉精华
		User_AddGouYuEssence(nGouyu_Count)
		Sys_SaveActionRewardLog(string.format(tGouyu_Log["DelItem"], nGouyu_ItemId, nGouyu_Count))
		User_TalkChannel2005(string.format(tRewardTemplate_Text["Main"],string.format(tRewardTemplate_Text["RewardItem"], nGouyu_Count,sGouyu_ItemName)))
	end
end

-- 豪火球之印
tItemFace[3330028] = 2907
for i=3330029,3330062 do
	tItemFace[i] = 2907
end
tItem[3330028] = tItem[3330028] or {}
tItem[3330028]["Function"] = function(nGouyu_ItemId,sGouyu_ItemName)
	tItem[nGouyu_ItemId]["Text111"] = string.format(tNinjaPromotion_Text[3330028]["Text111"],sGouyu_ItemName,sGouyu_ItemName)
	tItem[nGouyu_ItemId]["Option111"] = string.format(tNinjaPromotion_Text[3330028]["Option111"],sGouyu_ItemName)
	tItem[nGouyu_ItemId]["Option112"] = string.format(tNinjaPromotion_Text[3330028]["Option112"],sGouyu_ItemName)
	tItem[nGouyu_ItemId]["OptionFunc111"] = "Gouyu_OpenItemLink</N>" .. nGouyu_ItemId
	tItem[nGouyu_ItemId]["OptionFunc112"] = "Gouyu_ItemUse</N>" .. nGouyu_ItemId .. "</N>" .. 1

	LinkItemGossipFunc_New(nGouyu_ItemId,"1-1")
	return true
end

tItem[3330028]["DialogueText"] = tNinjaPromotion_Text[3330028]
tItem[3330028]["Text1-1"] = {111,112,113}
tItem[3330028]["tOption1-1"] = {111,112}
tItem[3330028]["OptionFunc111"] = "Gouyu_OpenItemLink</N>3330028"
tItem[3330028]["OptionFunc112"] = "Gouyu_ItemUse</N>3330028</N>1"
-- 二次确认
tItem[3330028]["Text2-1"] = {211,212}
tItem[3330028]["tOption2-1"] = {211,212}
tItem[3330028]["OptionFunc211"] = "Gouyu_OpenItemCost</N>3330028"

-- 豪火球之印·焚天
tItem[3330029] = tItem[3330028]
-- 豪火球之印·疾
tItem[3330030] = tItem[3330028]
-- 赤炎之印
tItem[3330031] = tItem[3330028]
-- 赤炎之印·燎原
tItem[3330032] = tItem[3330028]
-- 赤炎之印·灼
tItem[3330033] = tItem[3330028]
-- 水牢之印
tItem[3330034] = tItem[3330028]
-- 水牢之印·力穷
tItem[3330035] = tItem[3330028]
-- 水牢之印·无功
tItem[3330036] = tItem[3330028]
-- 水龙之印
tItem[3330037] = tItem[3330028]
-- 水龙之印·澎湃
tItem[3330038] = tItem[3330028]
-- 水龙之印·移形
tItem[3330039] = tItem[3330028]
-- 镰鼬之印
tItem[3330040] = tItem[3330028]
-- 镰鼬之印·乱舞
tItem[3330041] = tItem[3330028]
-- 镰鼬之印·风驰
tItem[3330042] = tItem[3330028]
-- 螺旋之印
tItem[3330043] = tItem[3330028]
-- 螺旋之印·仙法
tItem[3330044] = tItem[3330028]
-- 螺旋之印·光轮
tItem[3330045] = tItem[3330028]
-- 麒麟之印
tItem[3330046] = tItem[3330028]
-- 麒麟之印·雷葬
tItem[3330047] = tItem[3330028]
-- 麒麟之印·封界
tItem[3330048] = tItem[3330028]
-- 雷切之印
tItem[3330049] = tItem[3330028]
-- 雷切之印·一闪
tItem[3330050] = tItem[3330028]
-- 雷切之印·神威
tItem[3330051] = tItem[3330028]
-- 土遁之印
tItem[3330052] = tItem[3330028]
-- 土遁之印·无懈
tItem[3330053] = tItem[3330028]
-- 土遁之印·固法
tItem[3330054] = tItem[3330028]
-- 尘遁之印
tItem[3330055] = tItem[3330028]
-- 尘遁之印·天绝
tItem[3330056] = tItem[3330028]
-- 尘遁之印·震灵
tItem[3330057] = tItem[3330028]
-- 血继之印·式纸之舞
tItem[3330058] = tItem[3330028]
-- 血继之印·轮墓天狱
tItem[3330059] = tItem[3330028]
-- 血继之印·无限月读
tItem[3330060] = tItem[3330028]
-- 血继之印·八卦回天
tItem[3330061] = tItem[3330028]
-- 血继之印·尸骨脉
tItem[3330062] = tItem[3330028]


-- 勾玉宝盒
tItem[3330063] = tItem[3330063] or {}
tItem[3330063]["Function"] = function(nGouyu_ItemId,sGouyu_ItemName)
	RewardTemplate_RandomReward(tGouyu_Reward[nGouyu_ItemId],1)
end

-- 高级勾玉宝盒
tItem[3330064] = tItem[3330063] 
tItem[3332214] = tItem[3330063] 
tItem[3332215] = tItem[3330063] 

-- 3327202,'法印宝盒碎片'
tItem[3327202] = tItem[3327202] or {}
tItem[3327202]["Function"] = function(nGouyu_ItemId,sGouyu_ItemName)
	local nGouyu_Num = tGouyu_Reward[nGouyu_ItemId]["DeleteItem"][1]["ItemNum"]
	
	if not Item_ChkMulItem(nGouyu_ItemId,nGouyu_ItemId,nGouyu_Num) then
		User_TalkChannel2005(tRewardTemplate_Text["Consume"]["DeleteItem"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tGouyu_Reward[nGouyu_ItemId])
end

-- 3327203,'血狱花'
tItem[3327203] = tItem[3327203] or {}
tItem[3327203]["Function"] = function(nGouyu_ItemId,sGouyu_ItemName)
	Gouyu_FlowerUse(nGouyu_ItemId)
end

-- 3330608,'彼岸幽兰'
tItem[3330608] = tItem[3327203]
-- 3330609,'轮回莲'
tItem[3330609] = tItem[3327203]

