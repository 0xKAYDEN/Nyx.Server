------------------------------------------------------------------------------------
--Name：            200506[简体征服][活动脚本]新桃园物品
--Creator:      杨志翔
--Created:     2020/05/06
------------------------------------------------------------------------------------

local tNewTaoyuanItem_Cont = {}
tNewTaoyuanItem_Cont["ArtifactLog"] = "0,0,%d,1,12002012,2,%s,1"
tNewTaoyuanItem_Cont["ChiLog"] = "0,0,%d,1,12002048,2,%d,1"
tNewTaoyuanItem_Cont["Count"] = {
	[3331653] = 7,
	[3331654] = 6,
	[3331655] = 12,
	[3331656] = 10,
	[3331657] = 7,
	[3331658] = 7,
	[3331780] = 7,
	[3331781] = 6,
	[3331659] = 3,
	[3331660] = 3,
	[3331661] = 3,
	[3331662] = 2,
	[3331663] = 2,
	[3331664] = 2,
	[3331665] = 2,
	[3331666] = 3,
	[3331667] = 3,
	[3331668] = 3,
	[3331669] = 3,
}

tNewTaoyuanItem_Cont["ItemNum"] = {}
tNewTaoyuanItem_Cont["ItemNum"][1] = 3
tNewTaoyuanItem_Cont["ItemNum"][2] = 9
tNewTaoyuanItem_Cont["ItemNum"][3] = 99
tNewTaoyuanItem_Cont["ItemNum"][4] = 999
tNewTaoyuanItem_Cont["ItemNum"][6] = 1
local tNewTaoyuanItem_Reward = {}
	-- ===血继法印宝盒
	-- ===索引:tNewTaoyuanItem_Reward[3330856]
	-- ===删除:3330856,1
	-- ===
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,3330856)
	tNewTaoyuanItem_Reward[3330856] = {}
	tNewTaoyuanItem_Reward[3330856]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3330856]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330856]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330856]["DeleteItem"][1]["Id"] = 3330856 -- 【库】血继法印宝盒[属性:9]
	tNewTaoyuanItem_Reward[3330856]["LogId"] = 12002012
	-- 3330058 - 30%
	tNewTaoyuanItem_Reward[3330856][1] = {}
	tNewTaoyuanItem_Reward[3330856][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330856][1]["ItemChance"] = 3000
	tNewTaoyuanItem_Reward[3330856][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330856][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330856][1]["RewardItem"][1]["Id"] = 3330058 -- 血继之印·式纸之舞[3330058][属性:9][叠加:0][金币:0], 【表格】3330058
	tNewTaoyuanItem_Reward[3330856][1]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·式纸之舞*1
	tNewTaoyuanItem_Reward[3330856][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330856][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330856][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330059 - 22%
	tNewTaoyuanItem_Reward[3330856][2] = {}
	tNewTaoyuanItem_Reward[3330856][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330856][2]["ItemChance"] = 2600
	tNewTaoyuanItem_Reward[3330856][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330856][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330856][2]["RewardItem"][1]["Id"] = 3330059 -- 血继之印·轮墓天狱[3330059][属性:9][叠加:0][金币:0], 【表格】3330059
	tNewTaoyuanItem_Reward[3330856][2]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·轮墓天狱*1
	tNewTaoyuanItem_Reward[3330856][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330856][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330856][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330060 - 16%
	tNewTaoyuanItem_Reward[3330856][3] = {}
	tNewTaoyuanItem_Reward[3330856][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330856][3]["ItemChance"] = 1200
	tNewTaoyuanItem_Reward[3330856][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330856][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330856][3]["RewardItem"][1]["Id"] = 3330060 -- 血继之印·无限月读[3330060][属性:9][叠加:0][金币:0], 【表格】3330060
	tNewTaoyuanItem_Reward[3330856][3]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·无限月读*1
	tNewTaoyuanItem_Reward[3330856][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330856][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330856][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330061 - 16%
	tNewTaoyuanItem_Reward[3330856][4] = {}
	tNewTaoyuanItem_Reward[3330856][4]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330856][4]["ItemChance"] = 1200
	tNewTaoyuanItem_Reward[3330856][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330856][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330856][4]["RewardItem"][1]["Id"] = 3330061 -- 血继之印·八卦回天[3330061][属性:9][叠加:0][金币:0], 【表格】3330061
	tNewTaoyuanItem_Reward[3330856][4]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·八卦回天*1
	tNewTaoyuanItem_Reward[3330856][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330856][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330856][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330062 - 16%
	tNewTaoyuanItem_Reward[3330856][5] = {}
	tNewTaoyuanItem_Reward[3330856][5]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330856][5]["ItemChance"] = 2000
	tNewTaoyuanItem_Reward[3330856][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330856][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330856][5]["RewardItem"][1]["Id"] = 3330062 -- 血继之印·尸骨脉[3330062][属性:9][叠加:0][金币:0], 【表格】3330062
	tNewTaoyuanItem_Reward[3330856][5]["RewardItem"][1]["Attr"] = "0 1" -- 血继之印·尸骨脉*1
	tNewTaoyuanItem_Reward[3330856][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330856][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330856][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===水遁法印宝盒
	-- ===索引:tNewTaoyuanItem_Reward[3330857]
	-- ===删除:3330857,1
	-- ===
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,3330857)
	tNewTaoyuanItem_Reward[3330857] = {}
	tNewTaoyuanItem_Reward[3330857]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3330857]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330857]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330857]["DeleteItem"][1]["Id"] = 3330857 -- 【库】水遁法印宝盒[属性:9]
	tNewTaoyuanItem_Reward[3330857]["LogId"] = 12002012
	-- 3330034 - 25%
	tNewTaoyuanItem_Reward[3330857][1] = {}
	tNewTaoyuanItem_Reward[3330857][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330857][1]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330857][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330857][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330857][1]["RewardItem"][1]["Id"] = 3330034 -- 水牢之印[3330034][属性:9][叠加:0][金币:0], 【表格】3330034
	tNewTaoyuanItem_Reward[3330857][1]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印*1
	tNewTaoyuanItem_Reward[3330857][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330857][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330857][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330035 - 12.5%
	tNewTaoyuanItem_Reward[3330857][2] = {}
	tNewTaoyuanItem_Reward[3330857][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330857][2]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330857][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330857][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330857][2]["RewardItem"][1]["Id"] = 3330035 -- 水牢之印·力穷[3330035][属性:9][叠加:0][金币:0], 【表格】3330035
	tNewTaoyuanItem_Reward[3330857][2]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印·力穷*1
	tNewTaoyuanItem_Reward[3330857][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330857][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330857][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330036 - 12.5%
	tNewTaoyuanItem_Reward[3330857][3] = {}
	tNewTaoyuanItem_Reward[3330857][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330857][3]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330857][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330857][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330857][3]["RewardItem"][1]["Id"] = 3330036 -- 水牢之印·无功[3330036][属性:9][叠加:0][金币:0], 【表格】3330036
	tNewTaoyuanItem_Reward[3330857][3]["RewardItem"][1]["Attr"] = "0 1" -- 水牢之印·无功*1
	tNewTaoyuanItem_Reward[3330857][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330857][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330857][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330037 - 25%
	tNewTaoyuanItem_Reward[3330857][4] = {}
	tNewTaoyuanItem_Reward[3330857][4]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330857][4]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330857][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330857][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330857][4]["RewardItem"][1]["Id"] = 3330037 -- 水龙之印[3330037][属性:9][叠加:0][金币:0], 【表格】3330037
	tNewTaoyuanItem_Reward[3330857][4]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印*1
	tNewTaoyuanItem_Reward[3330857][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330857][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330857][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330038 - 12.5%
	tNewTaoyuanItem_Reward[3330857][5] = {}
	tNewTaoyuanItem_Reward[3330857][5]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330857][5]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330857][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330857][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330857][5]["RewardItem"][1]["Id"] = 3330038 -- 水龙之印·澎湃[3330038][属性:9][叠加:0][金币:0], 【表格】3330038
	tNewTaoyuanItem_Reward[3330857][5]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印·澎湃*1
	tNewTaoyuanItem_Reward[3330857][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330857][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330857][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330039 - 12.5%
	tNewTaoyuanItem_Reward[3330857][6] = {}
	tNewTaoyuanItem_Reward[3330857][6]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330857][6]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330857][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330857][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330857][6]["RewardItem"][1]["Id"] = 3330039 -- 水龙之印·移形[3330039][属性:9][叠加:0][金币:0], 【表格】3330039
	tNewTaoyuanItem_Reward[3330857][6]["RewardItem"][1]["Attr"] = "0 1" -- 水龙之印·移形*1
	tNewTaoyuanItem_Reward[3330857][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330857][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330857][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===火遁法印宝盒
	-- ===索引:tNewTaoyuanItem_Reward[3330858]
	-- ===删除:3330858,1
	-- ===
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,3330858)
	tNewTaoyuanItem_Reward[3330858] = {}
	tNewTaoyuanItem_Reward[3330858]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3330858]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330858]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330858]["DeleteItem"][1]["Id"] = 3330858 -- 【库】火遁法印宝盒[属性:9]
	tNewTaoyuanItem_Reward[3330858]["LogId"] = 12002012
	-- 3330028 - 25%
	tNewTaoyuanItem_Reward[3330858][1] = {}
	tNewTaoyuanItem_Reward[3330858][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330858][1]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330858][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330858][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330858][1]["RewardItem"][1]["Id"] = 3330028 -- 豪火球之印[3330028][属性:9][叠加:0][金币:0], 【表格】3330028
	tNewTaoyuanItem_Reward[3330858][1]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印*1
	tNewTaoyuanItem_Reward[3330858][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330858][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330858][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330029 - 12.5%
	tNewTaoyuanItem_Reward[3330858][2] = {}
	tNewTaoyuanItem_Reward[3330858][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330858][2]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330858][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330858][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330858][2]["RewardItem"][1]["Id"] = 3330029 -- 豪火球之印·焚天[3330029][属性:9][叠加:0][金币:0], 【表格】3330029
	tNewTaoyuanItem_Reward[3330858][2]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印·焚天*1
	tNewTaoyuanItem_Reward[3330858][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330858][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330858][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330030 - 12.5%
	tNewTaoyuanItem_Reward[3330858][3] = {}
	tNewTaoyuanItem_Reward[3330858][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330858][3]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330858][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330858][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330858][3]["RewardItem"][1]["Id"] = 3330030 -- 豪火球之印·疾[3330030][属性:9][叠加:0][金币:0], 【表格】3330030
	tNewTaoyuanItem_Reward[3330858][3]["RewardItem"][1]["Attr"] = "0 1" -- 豪火球之印·疾*1
	tNewTaoyuanItem_Reward[3330858][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330858][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330858][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330031 - 25%
	tNewTaoyuanItem_Reward[3330858][4] = {}
	tNewTaoyuanItem_Reward[3330858][4]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330858][4]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330858][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330858][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330858][4]["RewardItem"][1]["Id"] = 3330031 -- 赤炎之印[3330031][属性:9][叠加:0][金币:0], 【表格】3330031
	tNewTaoyuanItem_Reward[3330858][4]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印*1
	tNewTaoyuanItem_Reward[3330858][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330858][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330858][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330032 - 12.5%
	tNewTaoyuanItem_Reward[3330858][5] = {}
	tNewTaoyuanItem_Reward[3330858][5]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330858][5]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330858][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330858][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330858][5]["RewardItem"][1]["Id"] = 3330032 -- 赤炎之印·燎原[3330032][属性:9][叠加:0][金币:0], 【表格】3330032
	tNewTaoyuanItem_Reward[3330858][5]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印·燎原*1
	tNewTaoyuanItem_Reward[3330858][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330858][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330858][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330033 - 12.5%
	tNewTaoyuanItem_Reward[3330858][6] = {}
	tNewTaoyuanItem_Reward[3330858][6]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330858][6]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330858][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330858][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330858][6]["RewardItem"][1]["Id"] = 3330033 -- 赤炎之印·灼[3330033][属性:9][叠加:0][金币:0], 【表格】3330033
	tNewTaoyuanItem_Reward[3330858][6]["RewardItem"][1]["Attr"] = "0 1" -- 赤炎之印·灼*1
	tNewTaoyuanItem_Reward[3330858][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330858][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330858][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===风遁法印宝盒
	-- ===索引:tNewTaoyuanItem_Reward[3330859]
	-- ===删除:3330859,1
	-- ===
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,3330859)
	tNewTaoyuanItem_Reward[3330859] = {}
	tNewTaoyuanItem_Reward[3330859]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3330859]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330859]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330859]["DeleteItem"][1]["Id"] = 3330859 -- 【库】风遁法印宝盒[属性:9]
	tNewTaoyuanItem_Reward[3330859]["LogId"] = 12002012
	-- 3330040 - 25%
	tNewTaoyuanItem_Reward[3330859][1] = {}
	tNewTaoyuanItem_Reward[3330859][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330859][1]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330859][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330859][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330859][1]["RewardItem"][1]["Id"] = 3330040 -- 镰鼬之印[3330040][属性:9][叠加:0][金币:0], 【表格】3330040
	tNewTaoyuanItem_Reward[3330859][1]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印*1
	tNewTaoyuanItem_Reward[3330859][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330859][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330859][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330041 - 12.5%
	tNewTaoyuanItem_Reward[3330859][2] = {}
	tNewTaoyuanItem_Reward[3330859][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330859][2]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330859][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330859][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330859][2]["RewardItem"][1]["Id"] = 3330041 -- 镰鼬之印·乱舞[3330041][属性:9][叠加:0][金币:0], 【表格】3330041
	tNewTaoyuanItem_Reward[3330859][2]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印·乱舞*1
	tNewTaoyuanItem_Reward[3330859][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330859][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330859][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330042 - 12.5%
	tNewTaoyuanItem_Reward[3330859][3] = {}
	tNewTaoyuanItem_Reward[3330859][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330859][3]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330859][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330859][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330859][3]["RewardItem"][1]["Id"] = 3330042 -- 镰鼬之印·风驰[3330042][属性:9][叠加:0][金币:0], 【表格】3330042
	tNewTaoyuanItem_Reward[3330859][3]["RewardItem"][1]["Attr"] = "0 1" -- 镰鼬之印·风驰*1
	tNewTaoyuanItem_Reward[3330859][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330859][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330859][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330043 - 25%
	tNewTaoyuanItem_Reward[3330859][4] = {}
	tNewTaoyuanItem_Reward[3330859][4]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330859][4]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330859][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330859][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330859][4]["RewardItem"][1]["Id"] = 3330043 -- 螺旋之印[3330043][属性:9][叠加:0][金币:0], 【表格】3330043
	tNewTaoyuanItem_Reward[3330859][4]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印*1
	tNewTaoyuanItem_Reward[3330859][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330859][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330859][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330044 - 12.5%
	tNewTaoyuanItem_Reward[3330859][5] = {}
	tNewTaoyuanItem_Reward[3330859][5]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330859][5]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330859][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330859][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330859][5]["RewardItem"][1]["Id"] = 3330044 -- 螺旋之印·仙法[3330044][属性:9][叠加:0][金币:0], 【表格】3330044
	tNewTaoyuanItem_Reward[3330859][5]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印·仙法*1
	tNewTaoyuanItem_Reward[3330859][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330859][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330859][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330045 - 12.5%
	tNewTaoyuanItem_Reward[3330859][6] = {}
	tNewTaoyuanItem_Reward[3330859][6]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330859][6]["ItemChance"] = 1250
	tNewTaoyuanItem_Reward[3330859][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330859][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330859][6]["RewardItem"][1]["Id"] = 3330045 -- 螺旋之印·光轮[3330045][属性:9][叠加:0][金币:0], 【表格】3330045
	tNewTaoyuanItem_Reward[3330859][6]["RewardItem"][1]["Attr"] = "0 1" -- 螺旋之印·光轮*1
	tNewTaoyuanItem_Reward[3330859][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330859][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330859][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===土遁法印宝盒
	-- ===索引:tNewTaoyuanItem_Reward[3330860]
	-- ===删除:3330860,1
	-- ===
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,3330860)
	tNewTaoyuanItem_Reward[3330860] = {}
	tNewTaoyuanItem_Reward[3330860]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3330860]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330860]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330860]["DeleteItem"][1]["Id"] = 3330860 -- 【库】土遁法印宝盒[属性:9]
	tNewTaoyuanItem_Reward[3330860]["LogId"] = 12002012
	-- 3330052 - 25%
	tNewTaoyuanItem_Reward[3330860][1] = {}
	tNewTaoyuanItem_Reward[3330860][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330860][1]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330860][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330860][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330860][1]["RewardItem"][1]["Id"] = 3330052 -- 土遁之印[3330052][属性:9][叠加:0][金币:0], 【表格】3330052
	tNewTaoyuanItem_Reward[3330860][1]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印*1
	tNewTaoyuanItem_Reward[3330860][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330860][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330860][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330053 - 3%
	tNewTaoyuanItem_Reward[3330860][2] = {}
	tNewTaoyuanItem_Reward[3330860][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330860][2]["ItemChance"] = 300
	tNewTaoyuanItem_Reward[3330860][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330860][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330860][2]["RewardItem"][1]["Id"] = 3330053 -- 土遁之印·无懈[3330053][属性:9][叠加:0][金币:0], 【表格】3330053
	tNewTaoyuanItem_Reward[3330860][2]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印·无懈*1
	tNewTaoyuanItem_Reward[3330860][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330860][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330860][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330054 - 22%
	tNewTaoyuanItem_Reward[3330860][3] = {}
	tNewTaoyuanItem_Reward[3330860][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330860][3]["ItemChance"] = 2200
	tNewTaoyuanItem_Reward[3330860][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330860][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330860][3]["RewardItem"][1]["Id"] = 3330054 -- 土遁之印·固法[3330054][属性:9][叠加:0][金币:0], 【表格】3330054
	tNewTaoyuanItem_Reward[3330860][3]["RewardItem"][1]["Attr"] = "0 1" -- 土遁之印·固法*1
	tNewTaoyuanItem_Reward[3330860][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330860][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330860][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330055 - 25%
	tNewTaoyuanItem_Reward[3330860][4] = {}
	tNewTaoyuanItem_Reward[3330860][4]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330860][4]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330860][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330860][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330860][4]["RewardItem"][1]["Id"] = 3330055 -- 尘遁之印[3330055][属性:9][叠加:0][金币:0], 【表格】3330055
	tNewTaoyuanItem_Reward[3330860][4]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印*1
	tNewTaoyuanItem_Reward[3330860][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330860][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330860][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330056 - 3%
	tNewTaoyuanItem_Reward[3330860][5] = {}
	tNewTaoyuanItem_Reward[3330860][5]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330860][5]["ItemChance"] = 300
	tNewTaoyuanItem_Reward[3330860][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330860][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330860][5]["RewardItem"][1]["Id"] = 3330056 -- 尘遁之印·天绝[3330056][属性:9][叠加:0][金币:0], 【表格】3330056
	tNewTaoyuanItem_Reward[3330860][5]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印·天绝*1
	tNewTaoyuanItem_Reward[3330860][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330860][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330860][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330057 - 22%
	tNewTaoyuanItem_Reward[3330860][6] = {}
	tNewTaoyuanItem_Reward[3330860][6]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330860][6]["ItemChance"] = 2200
	tNewTaoyuanItem_Reward[3330860][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330860][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330860][6]["RewardItem"][1]["Id"] = 3330057 -- 尘遁之印·震灵[3330057][属性:9][叠加:0][金币:0], 【表格】3330057
	tNewTaoyuanItem_Reward[3330860][6]["RewardItem"][1]["Attr"] = "0 1" -- 尘遁之印·震灵*1
	tNewTaoyuanItem_Reward[3330860][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330860][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330860][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雷遁法印宝盒
	-- ===索引:tNewTaoyuanItem_Reward[3330861]
	-- ===删除:3330861,1
	-- ===
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,3330861)
	tNewTaoyuanItem_Reward[3330861] = {}
	tNewTaoyuanItem_Reward[3330861]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3330861]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330861]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330861]["DeleteItem"][1]["Id"] = 3330861 -- 【库】雷遁法印宝盒[属性:9]
	tNewTaoyuanItem_Reward[3330861]["LogId"] = 12002012
	-- 3330046 - 25%
	tNewTaoyuanItem_Reward[3330861][1] = {}
	tNewTaoyuanItem_Reward[3330861][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330861][1]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330861][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330861][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330861][1]["RewardItem"][1]["Id"] = 3330046 -- 麒麟之印[3330046][属性:9][叠加:0][金币:0], 【表格】3330046
	tNewTaoyuanItem_Reward[3330861][1]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印*1
	tNewTaoyuanItem_Reward[3330861][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330861][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330861][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330047 - 3%
	tNewTaoyuanItem_Reward[3330861][2] = {}
	tNewTaoyuanItem_Reward[3330861][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330861][2]["ItemChance"] = 300
	tNewTaoyuanItem_Reward[3330861][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330861][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330861][2]["RewardItem"][1]["Id"] = 3330047 -- 麒麟之印·雷葬[3330047][属性:9][叠加:0][金币:0], 【表格】3330047
	tNewTaoyuanItem_Reward[3330861][2]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印·雷葬*1
	tNewTaoyuanItem_Reward[3330861][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330861][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330861][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330048 - 22%
	tNewTaoyuanItem_Reward[3330861][3] = {}
	tNewTaoyuanItem_Reward[3330861][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330861][3]["ItemChance"] = 2200
	tNewTaoyuanItem_Reward[3330861][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330861][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330861][3]["RewardItem"][1]["Id"] = 3330048 -- 麒麟之印·封界[3330048][属性:9][叠加:0][金币:0], 【表格】3330048
	tNewTaoyuanItem_Reward[3330861][3]["RewardItem"][1]["Attr"] = "0 1" -- 麒麟之印·封界*1
	tNewTaoyuanItem_Reward[3330861][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330861][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330861][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330049 - 25%
	tNewTaoyuanItem_Reward[3330861][4] = {}
	tNewTaoyuanItem_Reward[3330861][4]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330861][4]["ItemChance"] = 2500
	tNewTaoyuanItem_Reward[3330861][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330861][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330861][4]["RewardItem"][1]["Id"] = 3330049 -- 雷切之印[3330049][属性:9][叠加:0][金币:0], 【表格】3330049
	tNewTaoyuanItem_Reward[3330861][4]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印*1
	tNewTaoyuanItem_Reward[3330861][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330861][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330861][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330050 - 3%
	tNewTaoyuanItem_Reward[3330861][5] = {}
	tNewTaoyuanItem_Reward[3330861][5]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330861][5]["ItemChance"] = 300
	tNewTaoyuanItem_Reward[3330861][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330861][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330861][5]["RewardItem"][1]["Id"] = 3330050 -- 雷切之印·一闪[3330050][属性:9][叠加:0][金币:0], 【表格】3330050
	tNewTaoyuanItem_Reward[3330861][5]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印·一闪*1
	tNewTaoyuanItem_Reward[3330861][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330861][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330861][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 3330051 - 22%
	tNewTaoyuanItem_Reward[3330861][6] = {}
	tNewTaoyuanItem_Reward[3330861][6]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3330861][6]["ItemChance"] = 2200
	tNewTaoyuanItem_Reward[3330861][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330861][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330861][6]["RewardItem"][1]["Id"] = 3330051 -- 雷切之印·神威[3330051][属性:9][叠加:0][金币:0], 【表格】3330051
	tNewTaoyuanItem_Reward[3330861][6]["RewardItem"][1]["Attr"] = "0 1" -- 雷切之印·神威*1
	tNewTaoyuanItem_Reward[3330861][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330861][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330861][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===清心符x5
	-- ===索引:tNewTaoyuanItem_Reward[3330865]
	-- ===删除:3330865,1
	tNewTaoyuanItem_Reward[3330865] = {}
	tNewTaoyuanItem_Reward[3330865]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330865]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330865]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330865]["DeleteItem"][1]["Id"] = 3330865 -- 【库】清心符x5礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330865]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330865]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330865]["RewardItem"][1]["Id"] = 723727 -- 清心符[723727][属性:64][叠加:10000][金币:0], 【表格】723727
	tNewTaoyuanItem_Reward[3330865]["RewardItem"][1]["Attr"] = "0 5" -- 清心符*5
	tNewTaoyuanItem_Reward[3330865]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330865]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330865]["RewardEffect"]["Effect"] = "angelwing"


	-- ===万能神纹精粹x10
	-- ===索引:tNewTaoyuanItem_Reward[3330866]
	-- ===删除:3330866,1
	tNewTaoyuanItem_Reward[3330866] = {}
	tNewTaoyuanItem_Reward[3330866]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330866]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330866]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330866]["DeleteItem"][1]["Id"] = 3330866 -- 【库】万能神纹精粹x10礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330866]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330866]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330866]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tNewTaoyuanItem_Reward[3330866]["RewardItem"][1]["Attr"] = "0 10" -- 万能神纹精粹*10
	tNewTaoyuanItem_Reward[3330866]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330866]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330866]["RewardEffect"]["Effect"] = "angelwing"


	-- ===万能神纹精粹x20
	-- ===索引:tNewTaoyuanItem_Reward[3330867]
	-- ===删除:3330867,1
	tNewTaoyuanItem_Reward[3330867] = {}
	tNewTaoyuanItem_Reward[3330867]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330867]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330867]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330867]["DeleteItem"][1]["Id"] = 3330867 -- 【库】万能神纹精粹x30礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330867]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330867]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330867]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tNewTaoyuanItem_Reward[3330867]["RewardItem"][1]["Attr"] = "0 30" -- 万能神纹精粹*30
	tNewTaoyuanItem_Reward[3330867]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330867]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330867]["RewardEffect"]["Effect"] = "angelwing"


	-- ===万能神纹精粹x50
	-- ===索引:tNewTaoyuanItem_Reward[3330868]
	-- ===删除:3330868,1
	tNewTaoyuanItem_Reward[3330868] = {}
	tNewTaoyuanItem_Reward[3330868]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330868]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330868]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330868]["DeleteItem"][1]["Id"] = 3330868 -- 【库】万能神纹精粹x50礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330868]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330868]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330868]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tNewTaoyuanItem_Reward[3330868]["RewardItem"][1]["Attr"] = "0 50" -- 万能神纹精粹*50
	tNewTaoyuanItem_Reward[3330868]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330868]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330868]["RewardEffect"]["Effect"] = "angelwing"


	-- ===炼魂石x30
	-- ===索引:tNewTaoyuanItem_Reward[3330869]
	-- ===删除:3330869,1
	tNewTaoyuanItem_Reward[3330869] = {}
	tNewTaoyuanItem_Reward[3330869]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330869]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330869]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330869]["DeleteItem"][1]["Id"] = 3330869 -- 【库】炼魂石x30礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330869]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330869]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330869]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】3321107
	tNewTaoyuanItem_Reward[3330869]["RewardItem"][1]["Attr"] = "0 30" -- 炼魂石*30
	tNewTaoyuanItem_Reward[3330869]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330869]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330869]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魄x30
	-- ===索引:tNewTaoyuanItem_Reward[3330870]
	-- ===删除:3330870,1
	tNewTaoyuanItem_Reward[3330870] = {}
	tNewTaoyuanItem_Reward[3330870]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330870]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330870]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330870]["DeleteItem"][1]["Id"] = 3330870 -- 【库】神兵灵魄x30礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330870]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330870]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330870]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】3321098
	tNewTaoyuanItem_Reward[3330870]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tNewTaoyuanItem_Reward[3330870]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330870]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330870]["RewardEffect"]["Effect"] = "angelwing"


	-- ===秘术精华x10
	-- ===索引:tNewTaoyuanItem_Reward[3330871]
	-- ===删除:3330871,1
	tNewTaoyuanItem_Reward[3330871] = {}
	tNewTaoyuanItem_Reward[3330871]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330871]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330871]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330871]["DeleteItem"][1]["Id"] = 3330871 -- 【库】秘术精华x10礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330871]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330871]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330871]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNewTaoyuanItem_Reward[3330871]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tNewTaoyuanItem_Reward[3330871]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330871]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330871]["RewardEffect"]["Effect"] = "angelwing"


	-- ===秘术精华x20
	-- ===索引:tNewTaoyuanItem_Reward[3330872]
	-- ===删除:3330872,1
	tNewTaoyuanItem_Reward[3330872] = {}
	tNewTaoyuanItem_Reward[3330872]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330872]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330872]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330872]["DeleteItem"][1]["Id"] = 3330872 -- 【库】秘术精华x20礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330872]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330872]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330872]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNewTaoyuanItem_Reward[3330872]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20（[错误]物品数量超10个）
	tNewTaoyuanItem_Reward[3330872]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330872]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330872]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片x2
	-- ===索引:tNewTaoyuanItem_Reward[3330873]
	-- ===删除:3330873,1
	tNewTaoyuanItem_Reward[3330873] = {}
	tNewTaoyuanItem_Reward[3330873]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330873]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330873]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330873]["DeleteItem"][1]["Id"] = 3330873 -- 【库】史诗武器碎片x2礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330873]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330873]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330873]["RewardItem"][1]["Id"] = 3331097 -- 史诗武器碎片可选礼盒[3331097][属性:9][叠加:0][金币:0], 【表格】3331097
	tNewTaoyuanItem_Reward[3330873]["RewardItem"][1]["Attr"] = "0 2" -- 史诗武器碎片可选礼盒*2
	tNewTaoyuanItem_Reward[3330873]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330873]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330873]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片x5
	-- ===索引:tNewTaoyuanItem_Reward[3330874]
	-- ===删除:3330874,1
	tNewTaoyuanItem_Reward[3330874] = {}
	tNewTaoyuanItem_Reward[3330874]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330874]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330874]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330874]["DeleteItem"][1]["Id"] = 3330874 -- 【库】史诗武器碎片x5礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330874]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330874]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330874]["RewardItem"][1]["Id"] = 3331097 -- 史诗武器碎片可选礼盒[3331097][属性:9][叠加:0][金币:0], 【表格】3331097
	tNewTaoyuanItem_Reward[3330874]["RewardItem"][1]["Attr"] = "0 5" -- 史诗武器碎片可选礼盒*5
	tNewTaoyuanItem_Reward[3330874]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330874]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330874]["RewardEffect"]["Effect"] = "angelwing"


	-- ===百炼天机果x20
	-- ===索引:tNewTaoyuanItem_Reward[3330875]
	-- ===删除:3330875,1
	tNewTaoyuanItem_Reward[3330875] = {}
	tNewTaoyuanItem_Reward[3330875]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330875]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330875]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330875]["DeleteItem"][1]["Id"] = 3330875 -- 【库】百炼天机果x20礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330875]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330875]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330875]["RewardItem"][1]["Id"] = 3001044 -- 百炼天机果[3001044][属性:9][叠加:0][金币:0], 【表格】3001044
	tNewTaoyuanItem_Reward[3330875]["RewardItem"][1]["Attr"] = "0 20" -- 百炼天机果*20（[错误]物品数量超10个）
	tNewTaoyuanItem_Reward[3330875]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330875]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330875]["RewardEffect"]["Effect"] = "angelwing"


	-- ===彼岸幽兰x5
	-- ===索引:tNewTaoyuanItem_Reward[3330876]
	-- ===删除:3330876,1
	tNewTaoyuanItem_Reward[3330876] = {}
	tNewTaoyuanItem_Reward[3330876]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330876]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330876]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330876]["DeleteItem"][1]["Id"] = 3330876 -- 【库】彼岸幽兰x5礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330876]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330876]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330876]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3330876]["RewardItem"][1]["Attr"] = "0 5" -- 彼岸幽兰*5
	tNewTaoyuanItem_Reward[3330876]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330876]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330876]["RewardEffect"]["Effect"] = "angelwing"


	-- ===彼岸幽兰x10
	-- ===索引:tNewTaoyuanItem_Reward[3330877]
	-- ===删除:3330877,1
	tNewTaoyuanItem_Reward[3330877] = {}
	tNewTaoyuanItem_Reward[3330877]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330877]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330877]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330877]["DeleteItem"][1]["Id"] = 3330877 -- 【库】彼岸幽兰x10礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330877]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330877]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330877]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3330877]["RewardItem"][1]["Attr"] = "0 10" -- 彼岸幽兰*10
	tNewTaoyuanItem_Reward[3330877]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330877]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330877]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2000气力值
	-- ===索引:tNewTaoyuanItem_Reward[3330878]
	-- ===删除:3330878,1
	tNewTaoyuanItem_Reward[3330878] = {}
	tNewTaoyuanItem_Reward[3330878]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330878]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330878]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330878]["DeleteItem"][1]["Id"] = 3330878 -- 【库】2000气力值礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330878]["RewardStrengthValue"] = {}
	tNewTaoyuanItem_Reward[3330878]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000气力值
	tNewTaoyuanItem_Reward[3330878]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330878]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330878]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2000修为值
	-- ===索引:tNewTaoyuanItem_Reward[3330879]
	-- ===删除:3330879,1
	tNewTaoyuanItem_Reward[3330879] = {}
	tNewTaoyuanItem_Reward[3330879]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330879]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330879]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330879]["DeleteItem"][1]["Id"] = 3330879 -- 【库】2000修为值礼盒[属性:9]
	tNewTaoyuanItem_Reward[3330879]["RewardRepairValue"] = {}
	tNewTaoyuanItem_Reward[3330879]["RewardRepairValue"]["Value"] = 2000 -- 修为值, 【需求】2000修为值
	tNewTaoyuanItem_Reward[3330879]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330879]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330879]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化石x2
	-- ===索引:tNewTaoyuanItem_Reward[3330880]
	-- ===删除:3330880,1
	tNewTaoyuanItem_Reward[3330880] = {}
	tNewTaoyuanItem_Reward[3330880]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330880]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330880]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330880]["DeleteItem"][1]["Id"] = 3330880 -- 【库】固化石x2[属性:9]
	tNewTaoyuanItem_Reward[3330880]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330880]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330880]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】723694
	tNewTaoyuanItem_Reward[3330880]["RewardItem"][1]["Attr"] = "0 2" -- 固化石*2
	tNewTaoyuanItem_Reward[3330880]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330880]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330880]["RewardEffect"]["Effect"] = "angelwing"


	-- ===炼魂石x200
	-- ===索引:tNewTaoyuanItem_Reward[3330881]
	-- ===删除:3330881,1
	tNewTaoyuanItem_Reward[3330881] = {}
	tNewTaoyuanItem_Reward[3330881]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330881]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330881]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330881]["DeleteItem"][1]["Id"] = 3330881 -- 【库】炼魂石x200[属性:9]
	tNewTaoyuanItem_Reward[3330881]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330881]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330881]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】3321107
	tNewTaoyuanItem_Reward[3330881]["RewardItem"][1]["Attr"] = "0 200" -- 炼魂石*200（[错误]物品数量超100个）
	tNewTaoyuanItem_Reward[3330881]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330881]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330881]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魄x200
	-- ===索引:tNewTaoyuanItem_Reward[3330882]
	-- ===删除:3330882,1
	tNewTaoyuanItem_Reward[3330882] = {}
	tNewTaoyuanItem_Reward[3330882]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330882]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330882]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330882]["DeleteItem"][1]["Id"] = 3330882 -- 【库】神兵灵魄x200[属性:9]
	tNewTaoyuanItem_Reward[3330882]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330882]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330882]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】3321098
	tNewTaoyuanItem_Reward[3330882]["RewardItem"][1]["Attr"] = "0 200" -- 神兵灵魄*200（[错误]物品数量超100个）
	tNewTaoyuanItem_Reward[3330882]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330882]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330882]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片x3
	-- ===索引:tNewTaoyuanItem_Reward[3330883]
	-- ===删除:3330883,1
	tNewTaoyuanItem_Reward[3330883] = {}
	tNewTaoyuanItem_Reward[3330883]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330883]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330883]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330883]["DeleteItem"][1]["Id"] = 3330883 -- 【库】史诗武器碎片x3[属性:9]
	tNewTaoyuanItem_Reward[3330883]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330883]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330883]["RewardItem"][1]["Id"] = 3331097 -- 史诗武器碎片可选礼盒[3331097][属性:9][叠加:0][金币:0], 【表格】3331097
	tNewTaoyuanItem_Reward[3330883]["RewardItem"][1]["Attr"] = "0 3" -- 史诗武器碎片可选礼盒*3
	tNewTaoyuanItem_Reward[3330883]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330883]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330883]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片x10
	-- ===索引:tNewTaoyuanItem_Reward[3330884]
	-- ===删除:3330884,1
	tNewTaoyuanItem_Reward[3330884] = {}
	tNewTaoyuanItem_Reward[3330884]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330884]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330884]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330884]["DeleteItem"][1]["Id"] = 3330884 -- 【库】史诗武器碎片x10[属性:9]
	tNewTaoyuanItem_Reward[3330884]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3330884]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3330884]["RewardItem"][1]["Id"] = 3331097 -- 史诗武器碎片可选礼盒[3331097][属性:9][叠加:0][金币:0], 【表格】3331097
	tNewTaoyuanItem_Reward[3330884]["RewardItem"][1]["Attr"] = "0 10" -- 史诗武器碎片可选礼盒*10
	tNewTaoyuanItem_Reward[3330884]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330884]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330884]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5000气力值
	-- ===索引:tNewTaoyuanItem_Reward[3330885]
	-- ===删除:3330885,1
	tNewTaoyuanItem_Reward[3330885] = {}
	tNewTaoyuanItem_Reward[3330885]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330885]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330885]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330885]["DeleteItem"][1]["Id"] = 3330885 -- 【库】5000气力值[属性:9]
	tNewTaoyuanItem_Reward[3330885]["RewardStrengthValue"] = {}
	tNewTaoyuanItem_Reward[3330885]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tNewTaoyuanItem_Reward[3330885]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330885]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330885]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5000修为值
	-- ===索引:tNewTaoyuanItem_Reward[3330886]
	-- ===删除:3330886,1
	tNewTaoyuanItem_Reward[3330886] = {}
	tNewTaoyuanItem_Reward[3330886]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3330886]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3330886]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3330886]["DeleteItem"][1]["Id"] = 3330886 -- 【库】5000修为值[属性:9]
	tNewTaoyuanItem_Reward[3330886]["RewardRepairValue"] = {}
	tNewTaoyuanItem_Reward[3330886]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】5000修为值
	tNewTaoyuanItem_Reward[3330886]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3330886]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3330886]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331097] = {}
	-- ===史诗武器碎片
	-- ===索引:tNewTaoyuanItem_Reward[3331097][1]
	-- ===删除:3331097,1
	tNewTaoyuanItem_Reward[3331097][1] = {}
	tNewTaoyuanItem_Reward[3331097][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331097][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331097][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][1]["DeleteItem"][1]["Id"] = 3331097 -- 【库】史诗武器碎片可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331097][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331097][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][1]["RewardItem"][1]["Id"] = 3310823 -- 轮回之眼碎片[3310823][属性:0][叠加:10000][金币:0], 【表格】3310823
	tNewTaoyuanItem_Reward[3331097][1]["RewardItem"][1]["Attr"] = "0 1" -- 轮回之眼碎片*1
	tNewTaoyuanItem_Reward[3331097][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331097][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331097][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片
	-- ===索引:tNewTaoyuanItem_Reward[3331097][2]
	-- ===删除:3331097,1
	tNewTaoyuanItem_Reward[3331097][2] = {}
	tNewTaoyuanItem_Reward[3331097][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331097][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331097][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][2]["DeleteItem"][1]["Id"] = 3331097 -- 【库】史诗武器碎片可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331097][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331097][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][2]["RewardItem"][1]["Id"] = 3310824 -- 神宝仙丹碎片[3310824][属性:0][叠加:10000][金币:0], 【表格】3310824
	tNewTaoyuanItem_Reward[3331097][2]["RewardItem"][1]["Attr"] = "0 1" -- 神宝仙丹碎片*1
	tNewTaoyuanItem_Reward[3331097][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331097][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331097][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片
	-- ===索引:tNewTaoyuanItem_Reward[3331097][3]
	-- ===删除:3331097,1
	tNewTaoyuanItem_Reward[3331097][3] = {}
	tNewTaoyuanItem_Reward[3331097][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331097][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331097][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][3]["DeleteItem"][1]["Id"] = 3331097 -- 【库】史诗武器碎片可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331097][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331097][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][3]["RewardItem"][1]["Id"] = 3310825 -- 圣灵神木碎片[3310825][属性:0][叠加:10000][金币:0], 【表格】3310825
	tNewTaoyuanItem_Reward[3331097][3]["RewardItem"][1]["Attr"] = "0 1" -- 圣灵神木碎片*1
	tNewTaoyuanItem_Reward[3331097][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331097][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331097][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片
	-- ===索引:tNewTaoyuanItem_Reward[3331097][4]
	-- ===删除:3331097,1
	tNewTaoyuanItem_Reward[3331097][4] = {}
	tNewTaoyuanItem_Reward[3331097][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331097][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331097][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][4]["DeleteItem"][1]["Id"] = 3331097 -- 【库】史诗武器碎片可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331097][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331097][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][4]["RewardItem"][1]["Id"] = 3310826 -- 空灵佛心碎片[3310826][属性:0][叠加:10000][金币:0], 【表格】3310826
	tNewTaoyuanItem_Reward[3331097][4]["RewardItem"][1]["Attr"] = "0 1" -- 空灵佛心碎片*1
	tNewTaoyuanItem_Reward[3331097][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331097][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331097][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器碎片
	-- ===索引:tNewTaoyuanItem_Reward[3331097][5]
	-- ===删除:3331097,1
	tNewTaoyuanItem_Reward[3331097][5] = {}
	tNewTaoyuanItem_Reward[3331097][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331097][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331097][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][5]["DeleteItem"][1]["Id"] = 3331097 -- 【库】史诗武器碎片可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331097][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331097][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331097][5]["RewardItem"][1]["Id"] = 3310827 -- 海之心碎片[3310827][属性:0][叠加:10000][金币:0], 【表格】3310827
	tNewTaoyuanItem_Reward[3331097][5]["RewardItem"][1]["Attr"] = "0 1" -- 海之心碎片*1
	tNewTaoyuanItem_Reward[3331097][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331097][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331097][5]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331098] = {}
	-- ===史诗武器
	-- ===索引:tNewTaoyuanItem_Reward[3331098][1]
	-- ===删除:3331098,1
	tNewTaoyuanItem_Reward[3331098][1] = {}
	tNewTaoyuanItem_Reward[3331098][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331098][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331098][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][1]["DeleteItem"][1]["Id"] = 3331098 -- 【库】史诗武器可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331098][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331098][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][1]["RewardItem"][1]["Id"] = 3004464 -- 轮回之眼[3004464][属性:9][叠加:0][金币:0], 【表格】3004464
	tNewTaoyuanItem_Reward[3331098][1]["RewardItem"][1]["Attr"] = "0 1" -- 轮回之眼*1
	tNewTaoyuanItem_Reward[3331098][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331098][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331098][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器
	-- ===索引:tNewTaoyuanItem_Reward[3331098][2]
	-- ===删除:3331098,1
	tNewTaoyuanItem_Reward[3331098][2] = {}
	tNewTaoyuanItem_Reward[3331098][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331098][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331098][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][2]["DeleteItem"][1]["Id"] = 3331098 -- 【库】史诗武器可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331098][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331098][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][2]["RewardItem"][1]["Id"] = 3006016 -- 神宝仙丹[3006016][属性:9][叠加:0][金币:0], 【表格】3006016
	tNewTaoyuanItem_Reward[3331098][2]["RewardItem"][1]["Attr"] = "0 1" -- 神宝仙丹*1
	tNewTaoyuanItem_Reward[3331098][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331098][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331098][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器
	-- ===索引:tNewTaoyuanItem_Reward[3331098][3]
	-- ===删除:3331098,1
	tNewTaoyuanItem_Reward[3331098][3] = {}
	tNewTaoyuanItem_Reward[3331098][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331098][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331098][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][3]["DeleteItem"][1]["Id"] = 3331098 -- 【库】史诗武器可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331098][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331098][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][3]["RewardItem"][1]["Id"] = 3003660 -- 圣灵神木[3003660][属性:9][叠加:0][金币:0], 【表格】3003660
	tNewTaoyuanItem_Reward[3331098][3]["RewardItem"][1]["Attr"] = "0 1" -- 圣灵神木*1
	tNewTaoyuanItem_Reward[3331098][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331098][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331098][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器
	-- ===索引:tNewTaoyuanItem_Reward[3331098][4]
	-- ===删除:3331098,1
	tNewTaoyuanItem_Reward[3331098][4] = {}
	tNewTaoyuanItem_Reward[3331098][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331098][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331098][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][4]["DeleteItem"][1]["Id"] = 3331098 -- 【库】史诗武器可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331098][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331098][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][4]["RewardItem"][1]["Id"] = 3007564 -- 空灵佛心[3007564][属性:9][叠加:0][金币:0], 【表格】3007564
	tNewTaoyuanItem_Reward[3331098][4]["RewardItem"][1]["Attr"] = "0 1" -- 空灵佛心*1
	tNewTaoyuanItem_Reward[3331098][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331098][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331098][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===史诗武器
	-- ===索引:tNewTaoyuanItem_Reward[3331098][5]
	-- ===删除:3331098,1
	tNewTaoyuanItem_Reward[3331098][5] = {}
	tNewTaoyuanItem_Reward[3331098][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331098][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331098][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][5]["DeleteItem"][1]["Id"] = 3331098 -- 【库】史诗武器可选礼盒[属性:9]
	tNewTaoyuanItem_Reward[3331098][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331098][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331098][5]["RewardItem"][1]["Id"] = 3307449 -- 海之心[3307449][属性:9][叠加:0][金币:0], 【表格】3307449
	tNewTaoyuanItem_Reward[3331098][5]["RewardItem"][1]["Attr"] = "0 1" -- 海之心*1
	tNewTaoyuanItem_Reward[3331098][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331098][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331098][5]["RewardEffect"]["Effect"] = "angelwing"

	tNewTaoyuanItem_Reward[3331653] = {}
	-- ===8等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331653][1]
	-- ===删除:3331653,1
	-- ===
	tNewTaoyuanItem_Reward[3331653][1] = {}
	tNewTaoyuanItem_Reward[3331653][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331653][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331653][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][1]["DeleteItem"][1]["Id"] = 3331653 -- 【库】一阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331653][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331653][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][1]["RewardItem"][1]["Id"] = 3330865 -- 清心符[720128][属性:0][叠加:10000][金币:0], 【表格】清心符
	tNewTaoyuanItem_Reward[3331653][1]["RewardItem"][1]["Attr"] = "0 1" -- 清心符*5
	tNewTaoyuanItem_Reward[3331653][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331653][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331653][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331653][2]
	-- ===删除:3331653,1
	-- ===
	tNewTaoyuanItem_Reward[3331653][2] = {}
	tNewTaoyuanItem_Reward[3331653][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331653][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331653][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][2]["DeleteItem"][1]["Id"] = 3331653 -- 【库】一阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331653][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331653][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][2]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewTaoyuanItem_Reward[3331653][2]["RewardItem"][1]["Attr"] = "0 1" -- +3赤炼石*1
	tNewTaoyuanItem_Reward[3331653][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331653][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331653][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331653][3]
	-- ===删除:3331653,1
	-- ===
	tNewTaoyuanItem_Reward[3331653][3] = {}
	tNewTaoyuanItem_Reward[3331653][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331653][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331653][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][3]["DeleteItem"][1]["Id"] = 3331653 -- 【库】一阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331653][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331653][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][3]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】稀有黄色神纹碎片
	tNewTaoyuanItem_Reward[3331653][3]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹碎片*1
	tNewTaoyuanItem_Reward[3331653][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331653][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331653][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331653][4]
	-- ===删除:3331653,1
	-- ===
	tNewTaoyuanItem_Reward[3331653][4] = {}
	tNewTaoyuanItem_Reward[3331653][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331653][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331653][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][4]["DeleteItem"][1]["Id"] = 3331653 -- 【库】一阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331653][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331653][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][4]["RewardItem"][1]["Id"] = 723717 -- 【财富类】五光十色包[723717][属性:0][叠加:0][金币:0], 【表格】500万银两
	tNewTaoyuanItem_Reward[3331653][4]["RewardItem"][1]["Attr"] = "0 1" -- 【财富类】五光十色包*1
	tNewTaoyuanItem_Reward[3331653][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331653][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331653][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331653][5]
	-- ===删除:3331653,1
	-- ===
	tNewTaoyuanItem_Reward[3331653][5] = {}
	tNewTaoyuanItem_Reward[3331653][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331653][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331653][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][5]["DeleteItem"][1]["Id"] = 3331653 -- 【库】一阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331653][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331653][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][5]["RewardItem"][1]["Id"] = 3200726 -- 【神炼类】明亮星陨石兑换券[3200726][属性:0][叠加:10000][金币:0], 【表格】星陨石兑换券
	tNewTaoyuanItem_Reward[3331653][5]["RewardItem"][1]["Attr"] = "0 1" -- 【神炼类】明亮星陨石兑换券*1
	tNewTaoyuanItem_Reward[3331653][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331653][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331653][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331653][6]
	-- ===删除:3331653,1
	-- ===
	tNewTaoyuanItem_Reward[3331653][6] = {}
	tNewTaoyuanItem_Reward[3331653][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331653][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331653][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][6]["DeleteItem"][1]["Id"] = 3331653 -- 【库】一阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331653][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331653][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][6]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】法印宝盒碎片
	tNewTaoyuanItem_Reward[3331653][6]["RewardItem"][1]["Attr"] = "0 1" -- 法印宝盒碎片*1
	tNewTaoyuanItem_Reward[3331653][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331653][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331653][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===8等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331653][7]
	-- ===删除:3331653,1
	-- ===
	tNewTaoyuanItem_Reward[3331653][7] = {}
	tNewTaoyuanItem_Reward[3331653][7]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331653][7]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331653][7]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][7]["DeleteItem"][1]["Id"] = 3331653 -- 【库】一阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331653][7]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331653][7]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331653][7]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tNewTaoyuanItem_Reward[3331653][7]["RewardItem"][1]["Attr"] = "0 10" -- 万能神纹精粹*10
	tNewTaoyuanItem_Reward[3331653][7]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331653][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331653][7]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331654] = {}
	-- ===7等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331654][1]
	-- ===删除:3331654,1
	tNewTaoyuanItem_Reward[3331654][1] = {}
	tNewTaoyuanItem_Reward[3331654][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331654][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331654][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][1]["DeleteItem"][1]["Id"] = 3331654 -- 【库】二阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331654][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331654][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][1]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tNewTaoyuanItem_Reward[3331654][1]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tNewTaoyuanItem_Reward[3331654][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331654][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331654][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331654][2]
	-- ===删除:3331654,1
	tNewTaoyuanItem_Reward[3331654][2] = {}
	tNewTaoyuanItem_Reward[3331654][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331654][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331654][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][2]["DeleteItem"][1]["Id"] = 3331654 -- 【库】二阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331654][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331654][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tNewTaoyuanItem_Reward[3331654][2]["RewardItem"][1]["Attr"] = "0 30" -- 万能神纹精粹*30
	tNewTaoyuanItem_Reward[3331654][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331654][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331654][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331654][3]
	-- ===删除:3331654,1
	tNewTaoyuanItem_Reward[3331654][3] = {}
	tNewTaoyuanItem_Reward[3331654][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331654][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331654][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][3]["DeleteItem"][1]["Id"] = 3331654 -- 【库】二阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331654][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331654][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][3]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】3009103
	tNewTaoyuanItem_Reward[3331654][3]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tNewTaoyuanItem_Reward[3331654][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331654][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331654][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331654][4]
	-- ===删除:3331654,1
	tNewTaoyuanItem_Reward[3331654][4] = {}
	tNewTaoyuanItem_Reward[3331654][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331654][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331654][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][4]["DeleteItem"][1]["Id"] = 3331654 -- 【库】二阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331654][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331654][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][4]["RewardItem"][1]["Id"] = 3322774 -- 豪华神器礼包[3322774][属性:9][叠加:1][金币:0], 3322774
	tNewTaoyuanItem_Reward[3331654][4]["RewardItem"][1]["Attr"] = "0 1" -- 豪华神器礼包*1
	tNewTaoyuanItem_Reward[3331654][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331654][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331654][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331654][5]
	-- ===删除:3331654,1
	tNewTaoyuanItem_Reward[3331654][5] = {}
	tNewTaoyuanItem_Reward[3331654][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331654][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331654][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][5]["DeleteItem"][1]["Id"] = 3331654 -- 【库】二阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331654][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331654][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][5]["RewardItem"][1]["Id"] = 3331788 -- 【财富类】六六大顺包[3331788][属性:8][叠加:10000][金币:0], 【表格】3331788
	tNewTaoyuanItem_Reward[3331654][5]["RewardItem"][1]["Attr"] = "0 1" -- 【财富类】六六大顺包*1
	tNewTaoyuanItem_Reward[3331654][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331654][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331654][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331654][6]
	-- ===删除:3331654,1
	tNewTaoyuanItem_Reward[3331654][6] = {}
	tNewTaoyuanItem_Reward[3331654][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331654][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331654][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][6]["DeleteItem"][1]["Id"] = 3331654 -- 【库】二阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331654][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331654][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331654][6]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】730004
	tNewTaoyuanItem_Reward[3331654][6]["RewardItem"][1]["Attr"] = "0 1" -- +4赤炼石*1
	tNewTaoyuanItem_Reward[3331654][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331654][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331654][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331655] = {}
	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][1]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][1] = {}
	tNewTaoyuanItem_Reward[3331655][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][1]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][1]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】4060001
	tNewTaoyuanItem_Reward[3331655][1]["RewardItem"][1]["Attr"] = "0 50" -- 万能神纹精粹*50
	tNewTaoyuanItem_Reward[3331655][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][2]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][2] = {}
	tNewTaoyuanItem_Reward[3331655][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][2]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][2]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】3321107
	tNewTaoyuanItem_Reward[3331655][2]["RewardItem"][1]["Attr"] = "0 30" -- 炼魂石*30
	tNewTaoyuanItem_Reward[3331655][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][3]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][3] = {}
	tNewTaoyuanItem_Reward[3331655][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][3]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][3]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】3321098
	tNewTaoyuanItem_Reward[3331655][3]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tNewTaoyuanItem_Reward[3331655][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][4]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][4] = {}
	tNewTaoyuanItem_Reward[3331655][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][4]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][4]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】3329979
	tNewTaoyuanItem_Reward[3331655][4]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20（[错误]物品数量超10个）
	tNewTaoyuanItem_Reward[3331655][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][5]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][5] = {}
	tNewTaoyuanItem_Reward[3331655][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][5]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][5]["RewardItem"][1]["Id"] = 700123 -- 优质地灵宝石[700123][属性:0][叠加:0][金币:0], 【表格】700123
	tNewTaoyuanItem_Reward[3331655][5]["RewardItem"][1]["Attr"] = "0 1" -- 优质地灵宝石*1
	tNewTaoyuanItem_Reward[3331655][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][6]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][6] = {}
	tNewTaoyuanItem_Reward[3331655][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][6]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][6]["RewardItem"][1]["Id"] = 700103 -- 优质天怒宝石[700103][属性:0][叠加:0][金币:0], 【表格】700103
	tNewTaoyuanItem_Reward[3331655][6]["RewardItem"][1]["Attr"] = "0 1" -- 优质天怒宝石*1
	tNewTaoyuanItem_Reward[3331655][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][7]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][7] = {}
	tNewTaoyuanItem_Reward[3331655][7]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][7]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][7]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][7]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][7]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][7]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][7]["RewardItem"][1]["Id"] = 700073 -- 优质玄元宝石[700073][属性:0][叠加:0][金币:0], 【表格】700073
	tNewTaoyuanItem_Reward[3331655][7]["RewardItem"][1]["Attr"] = "0 1" -- 优质玄元宝石*1
	tNewTaoyuanItem_Reward[3331655][7]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][7]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][8]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][8] = {}
	tNewTaoyuanItem_Reward[3331655][8]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][8]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][8]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][8]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][8]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][8]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][8]["RewardItem"][1]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】1088000
	tNewTaoyuanItem_Reward[3331655][8]["RewardItem"][1]["Attr"] = "0 1" -- 龙珠*1
	tNewTaoyuanItem_Reward[3331655][8]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][8]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][9]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][9] = {}
	tNewTaoyuanItem_Reward[3331655][9]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][9]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][9]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][9]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][9]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][9]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][9]["RewardItem"][1]["Id"] = 3331789 -- 【财富类】金玉满堂包[3331789][属性:8][叠加:10000][金币:0], 【表格】3331789
	tNewTaoyuanItem_Reward[3331655][9]["RewardItem"][1]["Attr"] = "0 1" -- 【财富类】金玉满堂包*1
	tNewTaoyuanItem_Reward[3331655][9]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][9]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][10]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][10] = {}
	tNewTaoyuanItem_Reward[3331655][10]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][10]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][10]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][10]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][10]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][10]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][10]["RewardItem"][1]["Id"] = 3314248 -- 黄色神纹礼包[3314248][属性:8][叠加:10000][金币:0], 【表格】3314248
	tNewTaoyuanItem_Reward[3331655][10]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹礼包*1
	tNewTaoyuanItem_Reward[3331655][10]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][10]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][11]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][11] = {}
	tNewTaoyuanItem_Reward[3331655][11]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][11]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][11]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][11]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][11]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][11]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][11]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】730005
	tNewTaoyuanItem_Reward[3331655][11]["RewardItem"][1]["Attr"] = "0 1" -- +5赤炼石*1
	tNewTaoyuanItem_Reward[3331655][11]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][11]["RewardEffect"]["Effect"] = "angelwing"


	-- ===6等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331655][12]
	-- ===删除:3331655,1
	tNewTaoyuanItem_Reward[3331655][12] = {}
	tNewTaoyuanItem_Reward[3331655][12]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331655][12]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331655][12]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][12]["DeleteItem"][1]["Id"] = 3331655 -- 【库】三阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331655][12]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331655][12]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331655][12]["RewardItem"][1]["Id"] = 3314218 -- +5马礼包[3314218][属性:8][叠加:1][金币:0], 【表格】3314218
	tNewTaoyuanItem_Reward[3331655][12]["RewardItem"][1]["Attr"] = "0 1" -- +5马礼包*1
	tNewTaoyuanItem_Reward[3331655][12]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331655][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331655][12]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331656] = {}
	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][1]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][1] = {}
	tNewTaoyuanItem_Reward[3331656][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][1]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][1]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3331656][1]["RewardItem"][1]["Attr"] = "0 1" -- 彼岸幽兰*1
	tNewTaoyuanItem_Reward[3331656][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][2]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][2] = {}
	tNewTaoyuanItem_Reward[3331656][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][2]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][2]["RewardItem"][1]["Id"] = 3200727 -- 【神炼类】晶莹星陨石兑换券[3200727][属性:0][叠加:10000][金币:0], 【表格】3200727
	tNewTaoyuanItem_Reward[3331656][2]["RewardItem"][1]["Attr"] = "0 1" -- 【神炼类】晶莹星陨石兑换券*1
	tNewTaoyuanItem_Reward[3331656][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][2]["RewardEffect"]["Effect"] = "angelwing"




	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][4]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][3] = {}
	tNewTaoyuanItem_Reward[3331656][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][3]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][3]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】730005
	tNewTaoyuanItem_Reward[3331656][3]["RewardItem"][1]["Attr"] = "0 1" -- +5赤炼石*1
	tNewTaoyuanItem_Reward[3331656][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][5]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][4] = {}
	tNewTaoyuanItem_Reward[3331656][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][4]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][4]["RewardItem"][1]["Id"] = 3330857 -- 水遁法印宝盒[3330857][属性:8][叠加:10000][金币:0], 【表格】3330857
	tNewTaoyuanItem_Reward[3331656][4]["RewardItem"][1]["Attr"] = "0 1" -- 水遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331656][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][6]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][5] = {}
	tNewTaoyuanItem_Reward[3331656][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][5]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][5]["RewardItem"][1]["Id"] = 3330858 -- 火遁法印宝盒[3330858][属性:8][叠加:10000][金币:0], 【表格】3330858
	tNewTaoyuanItem_Reward[3331656][5]["RewardItem"][1]["Attr"] = "0 1" -- 火遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331656][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][7]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][6] = {}
	tNewTaoyuanItem_Reward[3331656][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][6]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][6]["RewardItem"][1]["Id"] = 3330859 -- 风遁法印宝盒[3330859][属性:8][叠加:10000][金币:0], 【表格】3330859
	tNewTaoyuanItem_Reward[3331656][6]["RewardItem"][1]["Attr"] = "0 1" -- 风遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331656][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][8]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][7] = {}
	tNewTaoyuanItem_Reward[3331656][7]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][7]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][7]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][7]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][7]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][7]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][7]["RewardItem"][1]["Id"] = 3330063 -- 法印宝盒[3330063][属性:9][叠加:10000][金币:0], 【表格】3330063
	tNewTaoyuanItem_Reward[3331656][7]["RewardItem"][1]["Attr"] = "0 1" -- 法印宝盒*1
	tNewTaoyuanItem_Reward[3331656][7]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][7]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][9]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][8] = {}
	tNewTaoyuanItem_Reward[3331656][8]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][8]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][8]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][8]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][8]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][8]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][8]["RewardItem"][1]["Id"] = 3314242 -- 红色神纹礼盒[3314242][属性:8][叠加:10000][金币:0], 【表格】3314242
	tNewTaoyuanItem_Reward[3331656][8]["RewardItem"][1]["Attr"] = "0 1" -- 红色神纹礼盒*1
	tNewTaoyuanItem_Reward[3331656][8]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][8]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][10]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][9] = {}
	tNewTaoyuanItem_Reward[3331656][9]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][9]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][9]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][9]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][9]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][9]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][9]["RewardItem"][1]["Id"] = 3314243 -- 黄色神纹礼盒[3314243][属性:8][叠加:10000][金币:0], 【表格】3314243
	tNewTaoyuanItem_Reward[3331656][9]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹礼盒*1
	tNewTaoyuanItem_Reward[3331656][9]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][9]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331656][11]
	-- ===删除:3331656,1
	tNewTaoyuanItem_Reward[3331656][10] = {}
	tNewTaoyuanItem_Reward[3331656][10]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331656][10]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331656][10]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][10]["DeleteItem"][1]["Id"] = 3331656 -- 【库】四阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331656][10]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331656][10]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331656][10]["RewardItem"][1]["Id"] = 3314244 -- 蓝色神纹礼盒[3314244][属性:8][叠加:10000][金币:0], 【表格】3314244
	tNewTaoyuanItem_Reward[3331656][10]["RewardItem"][1]["Attr"] = "0 1" -- 蓝色神纹礼盒*1
	tNewTaoyuanItem_Reward[3331656][10]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331656][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331656][10]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331657] = {}
	-- ===4等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331657][1]
	-- ===删除:3331657,1
	tNewTaoyuanItem_Reward[3331657][1] = {}
	tNewTaoyuanItem_Reward[3331657][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331657][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331657][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][1]["DeleteItem"][1]["Id"] = 3331657 -- 【库】五阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331657][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331657][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][1]["RewardItem"][1]["Id"] = 3330860 -- 土遁法印宝盒[3330860][属性:8][叠加:10000][金币:0], 【表格】3330860
	tNewTaoyuanItem_Reward[3331657][1]["RewardItem"][1]["Attr"] = "0 1" -- 土遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331657][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331657][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331657][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331657][2]
	-- ===删除:3331657,1
	tNewTaoyuanItem_Reward[3331657][2] = {}
	tNewTaoyuanItem_Reward[3331657][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331657][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331657][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][2]["DeleteItem"][1]["Id"] = 3331657 -- 【库】五阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331657][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331657][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][2]["RewardItem"][1]["Id"] = 3330861 -- 雷遁法印宝盒[3330861][属性:8][叠加:10000][金币:0], 【表格】3330861
	tNewTaoyuanItem_Reward[3331657][2]["RewardItem"][1]["Attr"] = "0 1" -- 雷遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331657][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331657][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331657][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331657][3]
	-- ===删除:3331657,1
	tNewTaoyuanItem_Reward[3331657][3] = {}
	tNewTaoyuanItem_Reward[3331657][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331657][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331657][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][3]["DeleteItem"][1]["Id"] = 3331657 -- 【库】五阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331657][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331657][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][3]["RewardItem"][1]["Id"] = 3314250 -- 稀有黄色神纹礼包[3314250][属性:8][叠加:10000][金币:0], 【表格】3314250
	tNewTaoyuanItem_Reward[3331657][3]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹礼包*1
	tNewTaoyuanItem_Reward[3331657][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331657][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331657][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331657][4]
	-- ===删除:3331657,1
	tNewTaoyuanItem_Reward[3331657][4] = {}
	tNewTaoyuanItem_Reward[3331657][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331657][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331657][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][4]["DeleteItem"][1]["Id"] = 3331657 -- 【库】五阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331657][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331657][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][4]["RewardItem"][1]["Id"] = 3314251 -- 稀有蓝色神纹礼包[3314251][属性:8][叠加:10000][金币:0], 【表格】3314251
	tNewTaoyuanItem_Reward[3331657][4]["RewardItem"][1]["Attr"] = "0 1" -- 稀有蓝色神纹礼包*1
	tNewTaoyuanItem_Reward[3331657][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331657][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331657][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331657][5]
	-- ===删除:3331657,1
	tNewTaoyuanItem_Reward[3331657][5] = {}
	tNewTaoyuanItem_Reward[3331657][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331657][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331657][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][5]["DeleteItem"][1]["Id"] = 3331657 -- 【库】五阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331657][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331657][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][5]["RewardItem"][1]["Id"] = 3330881 -- 炼魂石x200礼盒[3330881][属性:8][叠加:10000][金币:0], 【表格】3330881
	tNewTaoyuanItem_Reward[3331657][5]["RewardItem"][1]["Attr"] = "0 1" -- 炼魂石x200礼盒*1
	tNewTaoyuanItem_Reward[3331657][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331657][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331657][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331657][6]
	-- ===删除:3331657,1
	tNewTaoyuanItem_Reward[3331657][6] = {}
	tNewTaoyuanItem_Reward[3331657][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331657][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331657][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][6]["DeleteItem"][1]["Id"] = 3331657 -- 【库】五阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331657][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331657][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][6]["RewardItem"][1]["Id"] = 3330882 -- 神兵灵魄x200礼盒[3330882][属性:8][叠加:10000][金币:0], 【表格】3330882
	tNewTaoyuanItem_Reward[3331657][6]["RewardItem"][1]["Attr"] = "0 1" -- 神兵灵魄x200礼盒*1
	tNewTaoyuanItem_Reward[3331657][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331657][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331657][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===4等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331657][7]
	-- ===删除:3331657,1
	tNewTaoyuanItem_Reward[3331657][7] = {}
	tNewTaoyuanItem_Reward[3331657][7]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331657][7]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331657][7]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][7]["DeleteItem"][1]["Id"] = 3331657 -- 【库】五阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331657][7]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331657][7]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331657][7]["RewardItem"][1]["Id"] = 730006 -- +6赤炼石[730006][属性:0][叠加:0][金币:0], 【表格】730006
	tNewTaoyuanItem_Reward[3331657][7]["RewardItem"][1]["Attr"] = "0 1" -- +6赤炼石*1
	tNewTaoyuanItem_Reward[3331657][7]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331657][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331657][7]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331658] = {}
	-- ===3等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331658][1]
	-- ===删除:3331658,1
	tNewTaoyuanItem_Reward[3331658][1] = {}
	tNewTaoyuanItem_Reward[3331658][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331658][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331658][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][1]["DeleteItem"][1]["Id"] = 3331658 -- 【库】六阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331658][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331658][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][1]["RewardItem"][1]["Id"] = 3314219 -- +6马礼包[3314219][属性:8][叠加:1][金币:0], 【表格】3314219
	tNewTaoyuanItem_Reward[3331658][1]["RewardItem"][1]["Attr"] = "0 1" -- +6马礼包*1
	tNewTaoyuanItem_Reward[3331658][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331658][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331658][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331658][2]
	-- ===删除:3331658,1
	tNewTaoyuanItem_Reward[3331658][2] = {}
	tNewTaoyuanItem_Reward[3331658][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331658][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331658][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][2]["DeleteItem"][1]["Id"] = 3331658 -- 【库】六阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331658][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331658][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][2]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】723694
	tNewTaoyuanItem_Reward[3331658][2]["RewardItem"][1]["Attr"] = "0 2" -- 固化石*2
	tNewTaoyuanItem_Reward[3331658][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331658][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331658][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331658][3]
	-- ===删除:3331658,1
	tNewTaoyuanItem_Reward[3331658][3] = {}
	tNewTaoyuanItem_Reward[3331658][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331658][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331658][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][3]["DeleteItem"][1]["Id"] = 3331658 -- 【库】六阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331658][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331658][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][3]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3331658][3]["RewardItem"][1]["Attr"] = "0 5" -- 彼岸幽兰*5
	tNewTaoyuanItem_Reward[3331658][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331658][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331658][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331658][4]
	-- ===删除:3331658,1
	tNewTaoyuanItem_Reward[3331658][4] = {}
	tNewTaoyuanItem_Reward[3331658][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331658][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331658][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][4]["DeleteItem"][1]["Id"] = 3331658 -- 【库】六阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331658][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331658][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][4]["RewardItem"][1]["Id"] = 3314222 -- +6稀有马礼包[3314222][属性:8][叠加:1][金币:0], 【表格】3314222
	tNewTaoyuanItem_Reward[3331658][4]["RewardItem"][1]["Attr"] = "0 1" -- +6稀有马礼包*1
	tNewTaoyuanItem_Reward[3331658][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331658][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331658][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331658][5]
	-- ===删除:3331658,1
	tNewTaoyuanItem_Reward[3331658][5] = {}
	tNewTaoyuanItem_Reward[3331658][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331658][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331658][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][5]["DeleteItem"][1]["Id"] = 3331658 -- 【库】六阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331658][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331658][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][5]["RewardItem"][1]["Id"] = 3314246 -- 稀有蓝色神纹礼盒[3314246][属性:8][叠加:10000][金币:0], 【表格】稀有蓝色神纹礼盒
	tNewTaoyuanItem_Reward[3331658][5]["RewardItem"][1]["Attr"] = "0 1" -- 稀有蓝色神纹礼盒*1
	tNewTaoyuanItem_Reward[3331658][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331658][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331658][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331658][6]
	-- ===删除:3331658,1
	tNewTaoyuanItem_Reward[3331658][6] = {}
	tNewTaoyuanItem_Reward[3331658][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331658][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331658][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][6]["DeleteItem"][1]["Id"] = 3331658 -- 【库】六阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331658][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331658][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][6]["RewardItem"][1]["Id"] = 720028 -- 龙珠卷[720028][属性:8][叠加:0][金币:0], 【表格】720028
	tNewTaoyuanItem_Reward[3331658][6]["RewardItem"][1]["Attr"] = "0 1" -- 龙珠卷*1
	tNewTaoyuanItem_Reward[3331658][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331658][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331658][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===3等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331658][7]
	-- ===删除:3331658,1
	tNewTaoyuanItem_Reward[3331658][7] = {}
	tNewTaoyuanItem_Reward[3331658][7]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331658][7]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331658][7]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][7]["DeleteItem"][1]["Id"] = 3331658 -- 【库】六阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331658][7]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331658][7]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331658][7]["RewardItem"][1]["Id"] = 3331790 -- 【财富类】富甲天下包[3331790][属性:8][叠加:10000][金币:0], 【表格】3331790
	tNewTaoyuanItem_Reward[3331658][7]["RewardItem"][1]["Attr"] = "0 1" -- 【财富类】富甲天下包*1
	tNewTaoyuanItem_Reward[3331658][7]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331658][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331658][7]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331780] = {}
	-- ===2等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331780][1]
	-- ===删除:3331780,1
	tNewTaoyuanItem_Reward[3331780][1] = {}
	tNewTaoyuanItem_Reward[3331780][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331780][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331780][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][1]["DeleteItem"][1]["Id"] = 3331780 -- 【库】七阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331780][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331780][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][1]["RewardItem"][1]["Id"] = 3200728 -- 【神炼类】璀璨星陨石兑换券[3200728][属性:0][叠加:10000][金币:0], 【表格】3200728
	tNewTaoyuanItem_Reward[3331780][1]["RewardItem"][1]["Attr"] = "0 1" -- 【神炼类】璀璨星陨石兑换券*1
	tNewTaoyuanItem_Reward[3331780][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331780][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331780][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331780][2]
	-- ===删除:3331780,1
	tNewTaoyuanItem_Reward[3331780][2] = {}
	tNewTaoyuanItem_Reward[3331780][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331780][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331780][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][2]["DeleteItem"][1]["Id"] = 3331780 -- 【库】七阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331780][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331780][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][2]["RewardItem"][1]["Id"] = 3314245 -- 稀有黄色神纹礼盒[3314245][属性:8][叠加:10000][金币:0], 【表格】3314245
	tNewTaoyuanItem_Reward[3331780][2]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹礼盒*1
	tNewTaoyuanItem_Reward[3331780][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331780][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331780][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331780][3]
	-- ===删除:3331780,1
	tNewTaoyuanItem_Reward[3331780][3] = {}
	tNewTaoyuanItem_Reward[3331780][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331780][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331780][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][3]["DeleteItem"][1]["Id"] = 3331780 -- 【库】七阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331780][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331780][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][3]["RewardItem"][1]["Id"] = 730007 -- +7赤炼石[730007][属性:0][叠加:0][金币:0], 【表格】730007
	tNewTaoyuanItem_Reward[3331780][3]["RewardItem"][1]["Attr"] = "0 1" -- +7赤炼石*1
	tNewTaoyuanItem_Reward[3331780][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331780][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331780][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331780][4]
	-- ===删除:3331780,1
	tNewTaoyuanItem_Reward[3331780][4] = {}
	tNewTaoyuanItem_Reward[3331780][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331780][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331780][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][4]["DeleteItem"][1]["Id"] = 3331780 -- 【库】七阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331780][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331780][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][4]["RewardItem"][1]["Id"] = 3330064 -- 高级法印宝盒[3330064][属性:9][叠加:10000][金币:0], 【表格】3330064
	tNewTaoyuanItem_Reward[3331780][4]["RewardItem"][1]["Attr"] = "0 1" -- 高级法印宝盒*1
	tNewTaoyuanItem_Reward[3331780][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331780][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331780][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331780][5]
	-- ===删除:3331780,1
	tNewTaoyuanItem_Reward[3331780][5] = {}
	tNewTaoyuanItem_Reward[3331780][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331780][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331780][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][5]["DeleteItem"][1]["Id"] = 3331780 -- 【库】七阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331780][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331780][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][5]["RewardItem"][1]["Id"] = 3330875 -- 百炼天机果x20礼盒[3330875][属性:8][叠加:10000][金币:0], 【表格】3330875
	tNewTaoyuanItem_Reward[3331780][5]["RewardItem"][1]["Attr"] = "0 1" -- 百炼天机果x20礼盒*1
	tNewTaoyuanItem_Reward[3331780][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331780][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331780][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331780][6]
	-- ===删除:3331780,1
	tNewTaoyuanItem_Reward[3331780][6] = {}
	tNewTaoyuanItem_Reward[3331780][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331780][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331780][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][6]["DeleteItem"][1]["Id"] = 3331780 -- 【库】七阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331780][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331780][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][6]["RewardItem"][1]["Id"] = 3314220 -- +7马礼包[3314220][属性:8][叠加:1][金币:0], 【表格】3314220
	tNewTaoyuanItem_Reward[3331780][6]["RewardItem"][1]["Attr"] = "0 1" -- +7马礼包*1
	tNewTaoyuanItem_Reward[3331780][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331780][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331780][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===2等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331780][7]
	-- ===删除:3331780,1
	tNewTaoyuanItem_Reward[3331780][7] = {}
	tNewTaoyuanItem_Reward[3331780][7]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331780][7]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331780][7]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][7]["DeleteItem"][1]["Id"] = 3331780 -- 【库】七阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331780][7]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331780][7]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331780][7]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3331780][7]["RewardItem"][1]["Attr"] = "0 10" -- 彼岸幽兰*10
	tNewTaoyuanItem_Reward[3331780][7]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331780][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331780][7]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331781] = {}
	-- ===1等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331781][1]
	-- ===删除:3331781,1
	tNewTaoyuanItem_Reward[3331781][1] = {}
	tNewTaoyuanItem_Reward[3331781][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331781][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331781][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][1]["DeleteItem"][1]["Id"] = 3331781 -- 【库】八阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331781][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331781][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][1]["RewardItem"][1]["Id"] = 723695 -- 超大固化石[723695][属性:0][叠加:0][金币:0], 【表格】723695
	tNewTaoyuanItem_Reward[3331781][1]["RewardItem"][1]["Attr"] = "0 1" -- 超大固化石*1
	tNewTaoyuanItem_Reward[3331781][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331781][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331781][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331781][2]
	-- ===删除:3331781,1
	tNewTaoyuanItem_Reward[3331781][2] = {}
	tNewTaoyuanItem_Reward[3331781][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331781][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331781][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][2]["DeleteItem"][1]["Id"] = 3331781 -- 【库】八阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331781][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331781][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][2]["RewardItem"][1]["Id"] = 3303256 -- 【装备类】+8随机装备礼包[3303256][属性:9][叠加:0][金币:0], 【表格】3303256
	tNewTaoyuanItem_Reward[3331781][2]["RewardItem"][1]["Attr"] = "0 1" -- 【装备类】+8随机装备礼包*1
	tNewTaoyuanItem_Reward[3331781][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331781][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331781][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331781][3]
	-- ===删除:3331781,1
	tNewTaoyuanItem_Reward[3331781][3] = {}
	tNewTaoyuanItem_Reward[3331781][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331781][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331781][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][3]["DeleteItem"][1]["Id"] = 3331781 -- 【库】八阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331781][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331781][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][3]["RewardItem"][1]["Id"] = 730008 -- +8赤炼石[730008][属性:0][叠加:0][金币:0], 【表格】730008
	tNewTaoyuanItem_Reward[3331781][3]["RewardItem"][1]["Attr"] = "0 1" -- +8赤炼石*1
	tNewTaoyuanItem_Reward[3331781][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331781][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331781][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331781][4]
	-- ===删除:3331781,1
	tNewTaoyuanItem_Reward[3331781][4] = {}
	tNewTaoyuanItem_Reward[3331781][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331781][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331781][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][4]["DeleteItem"][1]["Id"] = 3331781 -- 【库】八阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331781][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331781][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][4]["RewardItem"][1]["Id"] = 3314221 -- +8马礼包[3314221][属性:8][叠加:1][金币:0], 【表格】3314221
	tNewTaoyuanItem_Reward[3331781][4]["RewardItem"][1]["Attr"] = "0 1" -- +8马礼包*1
	tNewTaoyuanItem_Reward[3331781][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331781][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331781][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331781][5]
	-- ===删除:3331781,1
	tNewTaoyuanItem_Reward[3331781][5] = {}
	tNewTaoyuanItem_Reward[3331781][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331781][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331781][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][5]["DeleteItem"][1]["Id"] = 3331781 -- 【库】八阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331781][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331781][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][5]["RewardItem"][1]["Id"] = 3314223 -- +8稀有马礼包[3314223][属性:8][叠加:1][金币:0], 【表格】3314223
	tNewTaoyuanItem_Reward[3331781][5]["RewardItem"][1]["Attr"] = "0 1" -- +8稀有马礼包*1
	tNewTaoyuanItem_Reward[3331781][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331781][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331781][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===1等宝物可选
	-- ===索引:tNewTaoyuanItem_Reward[3331781][6]
	-- ===删除:3331781,1
	tNewTaoyuanItem_Reward[3331781][6] = {}
	tNewTaoyuanItem_Reward[3331781][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331781][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331781][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][6]["DeleteItem"][1]["Id"] = 3331781 -- 【库】八阶桃源仙缘礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331781][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331781][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331781][6]["RewardItem"][1]["Id"] = 3330856 -- 血继法印宝盒[3330856][属性:8][叠加:10000][金币:0], 【表格】3330856
	tNewTaoyuanItem_Reward[3331781][6]["RewardItem"][1]["Attr"] = "0 1" -- 血继法印宝盒*1
	tNewTaoyuanItem_Reward[3331781][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331781][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331781][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331659] = {}
	-- ===水系3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331659][1]
	-- ===删除:3331659,1
	tNewTaoyuanItem_Reward[3331659][1] = {}
	tNewTaoyuanItem_Reward[3331659][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331659][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331659][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331659][1]["DeleteItem"][1]["Id"] = 3331659 -- 【库】水遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331659][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331659][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331659][1]["RewardItem"][1]["Id"] = 3330857 -- 水遁法印宝盒[3330857][属性:8][叠加:10000][金币:0], 【表格】3330857
	tNewTaoyuanItem_Reward[3331659][1]["RewardItem"][1]["Attr"] = "0 1" -- 水遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331659][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331659][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331659][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===水系3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331659][2]
	-- ===删除:3331659,1
	tNewTaoyuanItem_Reward[3331659][2] = {}
	tNewTaoyuanItem_Reward[3331659][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331659][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331659][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331659][2]["DeleteItem"][1]["Id"] = 3331659 -- 【库】水遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331659][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331659][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331659][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3331659][2]["RewardItem"][1]["Attr"] = "0 1" -- 彼岸幽兰*1
	tNewTaoyuanItem_Reward[3331659][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331659][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331659][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===水系3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331659][3]
	-- ===删除:3331659,1
	tNewTaoyuanItem_Reward[3331659][3] = {}
	tNewTaoyuanItem_Reward[3331659][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331659][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331659][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331659][3]["DeleteItem"][1]["Id"] = 3331659 -- 【库】水遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331659][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331659][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331659][3]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】730005
	tNewTaoyuanItem_Reward[3331659][3]["RewardItem"][1]["Attr"] = "0 1" -- +5赤炼石*1
	tNewTaoyuanItem_Reward[3331659][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331659][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331659][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331660] = {}
	-- ===火系3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331660][1]
	-- ===删除:3331660,1
	tNewTaoyuanItem_Reward[3331660][1] = {}
	tNewTaoyuanItem_Reward[3331660][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331660][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331660][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331660][1]["DeleteItem"][1]["Id"] = 3331660 -- 【库】火遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331660][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331660][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331660][1]["RewardItem"][1]["Id"] = 3330858 -- 火遁法印宝盒[3330858][属性:8][叠加:10000][金币:0], 【表格】3330858
	tNewTaoyuanItem_Reward[3331660][1]["RewardItem"][1]["Attr"] = "0 1" -- 火遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331660][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331660][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331660][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===火系3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331660][2]
	-- ===删除:3331660,1
	tNewTaoyuanItem_Reward[3331660][2] = {}
	tNewTaoyuanItem_Reward[3331660][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331660][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331660][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331660][2]["DeleteItem"][1]["Id"] = 3331660 -- 【库】火遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331660][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331660][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331660][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3331660][2]["RewardItem"][1]["Attr"] = "0 1" -- 彼岸幽兰*1
	tNewTaoyuanItem_Reward[3331660][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331660][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331660][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===火系3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331660][3]
	-- ===删除:3331660,1
	tNewTaoyuanItem_Reward[3331660][3] = {}
	tNewTaoyuanItem_Reward[3331660][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331660][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331660][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331660][3]["DeleteItem"][1]["Id"] = 3331660 -- 【库】火遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331660][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331660][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331660][3]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】730005
	tNewTaoyuanItem_Reward[3331660][3]["RewardItem"][1]["Attr"] = "0 1" -- +5赤炼石*1
	tNewTaoyuanItem_Reward[3331660][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331660][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331660][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331661] = {}
	-- ===风系三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331661][1]
	-- ===删除:3331661,1
	tNewTaoyuanItem_Reward[3331661][1] = {}
	tNewTaoyuanItem_Reward[3331661][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331661][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331661][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331661][1]["DeleteItem"][1]["Id"] = 3331661 -- 【库】风遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331661][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331661][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331661][1]["RewardItem"][1]["Id"] = 3330859 -- 风遁法印宝盒[3330859][属性:8][叠加:10000][金币:0], 【表格】3330859
	tNewTaoyuanItem_Reward[3331661][1]["RewardItem"][1]["Attr"] = "0 1" -- 风遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331661][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331661][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331661][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===风系三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331661][2]
	-- ===删除:3331661,1
	tNewTaoyuanItem_Reward[3331661][2] = {}
	tNewTaoyuanItem_Reward[3331661][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331661][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331661][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331661][2]["DeleteItem"][1]["Id"] = 3331661 -- 【库】风遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331661][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331661][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331661][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】3330608
	tNewTaoyuanItem_Reward[3331661][2]["RewardItem"][1]["Attr"] = "0 1" -- 彼岸幽兰*1
	tNewTaoyuanItem_Reward[3331661][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331661][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331661][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===风系三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331661][3]
	-- ===删除:3331661,1
	tNewTaoyuanItem_Reward[3331661][3] = {}
	tNewTaoyuanItem_Reward[3331661][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331661][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331661][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331661][3]["DeleteItem"][1]["Id"] = 3331661 -- 【库】风遁法印幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331661][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331661][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331661][3]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】730005
	tNewTaoyuanItem_Reward[3331661][3]["RewardItem"][1]["Attr"] = "0 1" -- +5赤炼石*1
	tNewTaoyuanItem_Reward[3331661][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331661][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331661][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331662] = {}
	-- ===土系三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331662][1]
	-- ===删除:3331662,1
	tNewTaoyuanItem_Reward[3331662][1] = {}
	tNewTaoyuanItem_Reward[3331662][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331662][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331662][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331662][1]["DeleteItem"][1]["Id"] = 3331662 -- 【库】土遁法印灵珠礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331662][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331662][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331662][1]["RewardItem"][1]["Id"] = 3330860 -- 土遁法印宝盒[3330860][属性:8][叠加:10000][金币:0], 【表格】3330860
	tNewTaoyuanItem_Reward[3331662][1]["RewardItem"][1]["Attr"] = "0 1" -- 土遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331662][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331662][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331662][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===土系三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331662][2]
	-- ===删除:3331662,1
	tNewTaoyuanItem_Reward[3331662][2] = {}
	tNewTaoyuanItem_Reward[3331662][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331662][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331662][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331662][2]["DeleteItem"][1]["Id"] = 3331662 -- 【库】土遁法印灵珠礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331662][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331662][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331662][2]["RewardItem"][1]["Id"] = 3314250 -- 稀有黄色神纹礼包[3314250][属性:8][叠加:10000][金币:0], 【表格】3314250
	tNewTaoyuanItem_Reward[3331662][2]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹礼包*1
	tNewTaoyuanItem_Reward[3331662][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331662][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331662][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331663] = {}
	-- ===雷系三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331663][1]
	-- ===删除:3331663,1
	tNewTaoyuanItem_Reward[3331663][1] = {}
	tNewTaoyuanItem_Reward[3331663][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331663][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331663][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331663][1]["DeleteItem"][1]["Id"] = 3331663 -- 【库】雷遁法印灵珠礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331663][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331663][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331663][1]["RewardItem"][1]["Id"] = 3330861 -- 雷遁法印宝盒[3330861][属性:8][叠加:10000][金币:0], 【表格】3330861
	tNewTaoyuanItem_Reward[3331663][1]["RewardItem"][1]["Attr"] = "0 1" -- 雷遁法印宝盒*1
	tNewTaoyuanItem_Reward[3331663][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331663][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331663][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雷系三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331663][2]
	-- ===删除:3331663,1
	tNewTaoyuanItem_Reward[3331663][2] = {}
	tNewTaoyuanItem_Reward[3331663][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331663][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331663][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331663][2]["DeleteItem"][1]["Id"] = 3331663 -- 【库】雷遁法印灵珠礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331663][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331663][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331663][2]["RewardItem"][1]["Id"] = 3314250 -- 稀有黄色神纹礼包[3314250][属性:8][叠加:10000][金币:0], 【表格】3314250
	tNewTaoyuanItem_Reward[3331663][2]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹礼包*1
	tNewTaoyuanItem_Reward[3331663][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331663][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331663][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331664] = {}
	-- ===精华二选一
	-- ===索引:tNewTaoyuanItem_Reward[3331664][1]
	-- ===删除:3331664,1
	tNewTaoyuanItem_Reward[3331664][1] = {}
	tNewTaoyuanItem_Reward[3331664][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331664][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331664][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331664][1]["DeleteItem"][1]["Id"] = 3331664 -- 【库】秘术神纹礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331664][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331664][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331664][1]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】法印精华x20
	tNewTaoyuanItem_Reward[3331664][1]["RewardItem"][1]["Attr"] = "0 20" -- 秘术精华*20（[错误]物品数量超10个）
	tNewTaoyuanItem_Reward[3331664][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331664][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331664][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===精华二选一
	-- ===索引:tNewTaoyuanItem_Reward[3331664][2]
	-- ===删除:3331664,1
	tNewTaoyuanItem_Reward[3331664][2] = {}
	tNewTaoyuanItem_Reward[3331664][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331664][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331664][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331664][2]["DeleteItem"][1]["Id"] = 3331664 -- 【库】秘术神纹礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331664][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331664][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331664][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹*50
	tNewTaoyuanItem_Reward[3331664][2]["RewardItem"][1]["Attr"] = "0 50" -- 万能神纹精粹*50
	tNewTaoyuanItem_Reward[3331664][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331664][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331664][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331665] = {}
	-- ===固化石x2/彼岸幽兰x5
	-- ===索引:tNewTaoyuanItem_Reward[3331665][1]
	-- ===删除:3331665,1
	tNewTaoyuanItem_Reward[3331665][1] = {}
	tNewTaoyuanItem_Reward[3331665][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331665][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331665][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331665][1]["DeleteItem"][1]["Id"] = 3331665 -- 【库】固化幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331665][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331665][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331665][1]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】固化石x2
	tNewTaoyuanItem_Reward[3331665][1]["RewardItem"][1]["Attr"] = "0 2" -- 固化石*2
	tNewTaoyuanItem_Reward[3331665][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331665][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331665][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===固化石x2/彼岸幽兰x5
	-- ===索引:tNewTaoyuanItem_Reward[3331665][2]
	-- ===删除:3331665,1
	tNewTaoyuanItem_Reward[3331665][2] = {}
	tNewTaoyuanItem_Reward[3331665][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331665][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331665][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331665][2]["DeleteItem"][1]["Id"] = 3331665 -- 【库】固化幽兰礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331665][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331665][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331665][2]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰x5
	tNewTaoyuanItem_Reward[3331665][2]["RewardItem"][1]["Attr"] = "0 5" -- 彼岸幽兰*5
	tNewTaoyuanItem_Reward[3331665][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331665][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331665][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331666] = {}
	-- ===天机果三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331666][1]
	-- ===删除:3331666,1
	tNewTaoyuanItem_Reward[3331666][1] = {}
	tNewTaoyuanItem_Reward[3331666][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331666][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331666][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331666][1]["DeleteItem"][1]["Id"] = 3331666 -- 【库】百炼陨石礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331666][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331666][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331666][1]["RewardItem"][1]["Id"] = 3001044 -- 百炼天机果[3001044][属性:9][叠加:0][金币:0], 【表格】百炼天机果x20
	tNewTaoyuanItem_Reward[3331666][1]["RewardItem"][1]["Attr"] = "0 20" -- 百炼天机果*20（[错误]物品数量超10个）
	tNewTaoyuanItem_Reward[3331666][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331666][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331666][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===天机果三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331666][2]
	-- ===删除:3331666,1
	tNewTaoyuanItem_Reward[3331666][2] = {}
	tNewTaoyuanItem_Reward[3331666][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331666][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331666][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331666][2]["DeleteItem"][1]["Id"] = 3331666 -- 【库】百炼陨石礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331666][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331666][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331666][2]["RewardItem"][1]["Id"] = 3200728 -- 【神炼类】璀璨星陨石兑换券[3200728][属性:0][叠加:10000][金币:0], 【表格】璀璨星陨石兑换券
	tNewTaoyuanItem_Reward[3331666][2]["RewardItem"][1]["Attr"] = "0 1" -- 【神炼类】璀璨星陨石兑换券*1
	tNewTaoyuanItem_Reward[3331666][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331666][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331666][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===天机果三选一
	-- ===索引:tNewTaoyuanItem_Reward[3331666][3]
	-- ===删除:3331666,1
	tNewTaoyuanItem_Reward[3331666][3] = {}
	tNewTaoyuanItem_Reward[3331666][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331666][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331666][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331666][3]["DeleteItem"][1]["Id"] = 3331666 -- 【库】百炼陨石礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331666][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331666][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331666][3]["RewardItem"][1]["Id"] = 3330608 -- 彼岸幽兰[3330608][属性:8][叠加:10000][金币:0], 【表格】彼岸幽兰x10
	tNewTaoyuanItem_Reward[3331666][3]["RewardItem"][1]["Attr"] = "0 10" -- 彼岸幽兰*10
	tNewTaoyuanItem_Reward[3331666][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331666][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331666][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331667] = {}
	-- ===星陨石3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331667][1]
	-- ===删除:3331667,1
	tNewTaoyuanItem_Reward[3331667][1] = {}
	tNewTaoyuanItem_Reward[3331667][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331667][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331667][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331667][1]["DeleteItem"][1]["Id"] = 3331667 -- 【库】神纹陨石礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331667][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331667][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331667][1]["RewardItem"][1]["Id"] = 3200726 -- 【神炼类】明亮星陨石兑换券[3200726][属性:0][叠加:10000][金币:0], 【表格】明亮星陨石兑换券
	tNewTaoyuanItem_Reward[3331667][1]["RewardItem"][1]["Attr"] = "0 1" -- 【神炼类】明亮星陨石兑换券*1
	tNewTaoyuanItem_Reward[3331667][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331667][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331667][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===星陨石3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331667][2]
	-- ===删除:3331667,1
	tNewTaoyuanItem_Reward[3331667][2] = {}
	tNewTaoyuanItem_Reward[3331667][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331667][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331667][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331667][2]["DeleteItem"][1]["Id"] = 3331667 -- 【库】神纹陨石礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331667][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331667][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331667][2]["RewardItem"][1]["Id"] = 3327202 -- 法印宝盒碎片[3327202][属性:9][叠加:10000][金币:0], 【表格】法印宝盒碎片
	tNewTaoyuanItem_Reward[3331667][2]["RewardItem"][1]["Attr"] = "0 1" -- 法印宝盒碎片*1
	tNewTaoyuanItem_Reward[3331667][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331667][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331667][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===星陨石3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331667][3]
	-- ===删除:3331667,1
	tNewTaoyuanItem_Reward[3331667][3] = {}
	tNewTaoyuanItem_Reward[3331667][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331667][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331667][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331667][3]["DeleteItem"][1]["Id"] = 3331667 -- 【库】神纹陨石礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331667][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331667][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331667][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹*10
	tNewTaoyuanItem_Reward[3331667][3]["RewardItem"][1]["Attr"] = "0 10" -- 万能神纹精粹*10
	tNewTaoyuanItem_Reward[3331667][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331667][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331667][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331668] = {}
	-- ===
	-- ===索引:tNewTaoyuanItem_Reward[3331668][1]
	-- ===删除:3331668,1
	tNewTaoyuanItem_Reward[3331668][1] = {}
	tNewTaoyuanItem_Reward[3331668][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331668][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331668][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331668][1]["DeleteItem"][1]["Id"] = 3331668 -- 【库】神纹法印礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331668][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331668][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331668][1]["RewardItem"][1]["Id"] = 3329979 -- 秘术精华[3329979][属性:9][叠加:10000][金币:0], 【表格】法印精华x10
	tNewTaoyuanItem_Reward[3331668][1]["RewardItem"][1]["Attr"] = "0 10" -- 秘术精华*10
	tNewTaoyuanItem_Reward[3331668][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331668][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331668][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===
	-- ===索引:tNewTaoyuanItem_Reward[3331668][2]
	-- ===删除:3331668,1
	tNewTaoyuanItem_Reward[3331668][2] = {}
	tNewTaoyuanItem_Reward[3331668][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331668][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331668][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331668][2]["DeleteItem"][1]["Id"] = 3331668 -- 【库】神纹法印礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331668][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331668][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331668][2]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹x30
	tNewTaoyuanItem_Reward[3331668][2]["RewardItem"][1]["Attr"] = "0 30" -- 万能神纹精粹*30
	tNewTaoyuanItem_Reward[3331668][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331668][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331668][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===
	-- ===索引:tNewTaoyuanItem_Reward[3331668][3]
	-- ===删除:3331668,1
	tNewTaoyuanItem_Reward[3331668][3] = {}
	tNewTaoyuanItem_Reward[3331668][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331668][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331668][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331668][3]["DeleteItem"][1]["Id"] = 3331668 -- 【库】神纹法印礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331668][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331668][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331668][3]["RewardItem"][1]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:10000][金币:0], 【表格】天灵果
	tNewTaoyuanItem_Reward[3331668][3]["RewardItem"][1]["Attr"] = "0 1" -- 天灵果*1
	tNewTaoyuanItem_Reward[3331668][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331668][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331668][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331669] = {}
	-- ===炼魂石3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331669][1]
	-- ===删除:3331669,1
	tNewTaoyuanItem_Reward[3331669][1] = {}
	tNewTaoyuanItem_Reward[3331669][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331669][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331669][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331669][1]["DeleteItem"][1]["Id"] = 3331669 -- 【库】神兵炼魂礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331669][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331669][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331669][1]["RewardItem"][1]["Id"] = 3321107 -- 炼魂石[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石x30
	tNewTaoyuanItem_Reward[3331669][1]["RewardItem"][1]["Attr"] = "0 30" -- 炼魂石*30
	tNewTaoyuanItem_Reward[3331669][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331669][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331669][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===炼魂石3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331669][2]
	-- ===删除:3331669,1
	tNewTaoyuanItem_Reward[3331669][2] = {}
	tNewTaoyuanItem_Reward[3331669][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331669][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331669][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331669][2]["DeleteItem"][1]["Id"] = 3331669 -- 【库】神兵炼魂礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331669][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331669][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331669][2]["RewardItem"][1]["Id"] = 3321098 -- 神兵灵魄[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄x30
	tNewTaoyuanItem_Reward[3331669][2]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tNewTaoyuanItem_Reward[3331669][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331669][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331669][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===炼魂石3选1
	-- ===索引:tNewTaoyuanItem_Reward[3331669][3]
	-- ===删除:3331669,1
	tNewTaoyuanItem_Reward[3331669][3] = {}
	tNewTaoyuanItem_Reward[3331669][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331669][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331669][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331669][3]["DeleteItem"][1]["Id"] = 3331669 -- 【库】神兵炼魂礼盒[属性:8]
	tNewTaoyuanItem_Reward[3331669][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331669][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331669][3]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹x50
	tNewTaoyuanItem_Reward[3331669][3]["RewardItem"][1]["Attr"] = "0 50" -- 万能神纹精粹*50
	tNewTaoyuanItem_Reward[3331669][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331669][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331669][3]["RewardEffect"]["Effect"] = "angelwing"

	-- ===【追加类】+2赤炼石成双包（赠）
	-- ===索引:tNewTaoyuanItem_Reward[3331671]
	-- ===删除:3331671,1
	tNewTaoyuanItem_Reward[3331671] = {}
	tNewTaoyuanItem_Reward[3331671]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331671]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331671]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331671]["DeleteItem"][1]["Id"] = 3331671 -- 【库】【追加类】+2赤炼石成双包（赠）[属性:0]
	tNewTaoyuanItem_Reward[3331671]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331671]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331671]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2*2
	tNewTaoyuanItem_Reward[3331671]["RewardItem"][1]["Attr"] = "0 2 3" -- +2赤炼石（赠）*2
	tNewTaoyuanItem_Reward[3331671]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331671]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331671]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神纹精粹x10
	-- ===索引:tNewTaoyuanItem_Reward[3331672]
	-- ===删除:3331672,1
	tNewTaoyuanItem_Reward[3331672] = {}
	tNewTaoyuanItem_Reward[3331672]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331672]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331672]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331672]["DeleteItem"][1]["Id"] = 3331672 -- 【库】神纹精粹x10[属性:0]
	tNewTaoyuanItem_Reward[3331672]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331672]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331672]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹x10
	tNewTaoyuanItem_Reward[3331672]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹*10
	tNewTaoyuanItem_Reward[3331672]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331672]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331672]["RewardEffect"]["Effect"] = "angelwing"


	-- ===聚神丹x5
	-- ===索引:tNewTaoyuanItem_Reward[3331673]
	-- ===删除:3331673,1
	tNewTaoyuanItem_Reward[3331673] = {}
	tNewTaoyuanItem_Reward[3331673]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331673]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331673]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331673]["DeleteItem"][1]["Id"] = 3331673 -- 【库】聚神丹x5[属性:0]
	tNewTaoyuanItem_Reward[3331673]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331673]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331673]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹[3314900][属性:0][叠加:10000][金币:0], 【表格】聚神丹x5
	tNewTaoyuanItem_Reward[3331673]["RewardItem"][1]["Attr"] = "0 5 3" -- 聚神丹*5
	tNewTaoyuanItem_Reward[3331673]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331673]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331673]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神纹精粹x20
	-- ===索引:tNewTaoyuanItem_Reward[3331674]
	-- ===删除:3331674,1
	tNewTaoyuanItem_Reward[3331674] = {}
	tNewTaoyuanItem_Reward[3331674]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331674]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331674]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331674]["DeleteItem"][1]["Id"] = 3331674 -- 【库】神纹精粹x20[属性:0]
	tNewTaoyuanItem_Reward[3331674]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331674]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331674]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】神纹精粹x20
	tNewTaoyuanItem_Reward[3331674]["RewardItem"][1]["Attr"] = "0 20 3" -- 万能神纹精粹*20
	tNewTaoyuanItem_Reward[3331674]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331674]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331674]["RewardEffect"]["Effect"] = "angelwing"


	-- ===虎骨气力酒（赠）*2
	-- ===索引:tNewTaoyuanItem_Reward[3331675]
	-- ===删除:3331675,1
	tNewTaoyuanItem_Reward[3331675] = {}
	tNewTaoyuanItem_Reward[3331675]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331675]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331675]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331675]["DeleteItem"][1]["Id"] = 3331675 -- 【库】虎骨气力酒（赠）*2[属性:0]
	tNewTaoyuanItem_Reward[3331675]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331675]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331675]["RewardItem"][1]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒（赠）*2
	tNewTaoyuanItem_Reward[3331675]["RewardItem"][1]["Attr"] = "0 2 3" -- 虎骨气力酒（赠）*2
	tNewTaoyuanItem_Reward[3331675]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331675]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331675]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雪参灵露*2（赠）
	-- ===索引:tNewTaoyuanItem_Reward[3331676]
	-- ===删除:3331676,1
	tNewTaoyuanItem_Reward[3331676] = {}
	tNewTaoyuanItem_Reward[3331676]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331676]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331676]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331676]["DeleteItem"][1]["Id"] = 3331676 -- 【库】雪参灵露*2（赠）[属性:0]
	tNewTaoyuanItem_Reward[3331676]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331676]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331676]["RewardItem"][1]["Id"] = 3314212 -- 雪参灵露[3314212][属性:8][叠加:10000][金币:0], 【表格】雪参灵露*2（赠）
	tNewTaoyuanItem_Reward[3331676]["RewardItem"][1]["Attr"] = "0 2 3" -- 雪参灵露（赠）*2
	tNewTaoyuanItem_Reward[3331676]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331676]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331676]["RewardEffect"]["Effect"] = "angelwing"


	-- ===聚神丹（赠）x10
	-- ===索引:tNewTaoyuanItem_Reward[3331677]
	-- ===删除:3331677,1
	tNewTaoyuanItem_Reward[3331677] = {}
	tNewTaoyuanItem_Reward[3331677]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331677]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331677]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331677]["DeleteItem"][1]["Id"] = 3331677 -- 【库】聚神丹（赠）x10[属性:0]
	tNewTaoyuanItem_Reward[3331677]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331677]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331677]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹[3314900][属性:0][叠加:10000][金币:0], 【表格】聚神丹（赠）x10
	tNewTaoyuanItem_Reward[3331677]["RewardItem"][1]["Attr"] = "0 10 3" -- 聚神丹（赠）*10
	tNewTaoyuanItem_Reward[3331677]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331677]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331677]["RewardEffect"]["Effect"] = "angelwing"


	-- ===聚神丹（赠）x20
	-- ===索引:tNewTaoyuanItem_Reward[3331678]
	-- ===删除:3331678,1
	tNewTaoyuanItem_Reward[3331678] = {}
	tNewTaoyuanItem_Reward[3331678]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331678]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331678]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331678]["DeleteItem"][1]["Id"] = 3331678 -- 【库】聚神丹（赠）x20[属性:0]
	tNewTaoyuanItem_Reward[3331678]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331678]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331678]["RewardItem"][1]["Id"] = 3314900 -- 聚神丹[3314900][属性:0][叠加:10000][金币:0], 【表格】聚神丹（赠）x20
	tNewTaoyuanItem_Reward[3331678]["RewardItem"][1]["Attr"] = "0 20 3" -- 聚神丹（赠）*20（[错误]物品数量超10个）
	tNewTaoyuanItem_Reward[3331678]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331678]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331678]["RewardEffect"]["Effect"] = "angelwing"


	-- ===虎骨气力酒（赠）*3
	-- ===索引:tNewTaoyuanItem_Reward[3331679]
	-- ===删除:3331679,1
	tNewTaoyuanItem_Reward[3331679] = {}
	tNewTaoyuanItem_Reward[3331679]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331679]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331679]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331679]["DeleteItem"][1]["Id"] = 3331679 -- 【库】虎骨气力酒（赠）*3[属性:0]
	tNewTaoyuanItem_Reward[3331679]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331679]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331679]["RewardItem"][1]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒（赠）*3
	tNewTaoyuanItem_Reward[3331679]["RewardItem"][1]["Attr"] = "0 3 3" -- 虎骨气力酒（赠）*3
	tNewTaoyuanItem_Reward[3331679]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331679]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331679]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雪参灵露*3（赠）
	-- ===索引:tNewTaoyuanItem_Reward[3331680]
	-- ===删除:3331680,1
	tNewTaoyuanItem_Reward[3331680] = {}
	tNewTaoyuanItem_Reward[3331680]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331680]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331680]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331680]["DeleteItem"][1]["Id"] = 3331680 -- 【库】雪参灵露*3（赠）[属性:0]
	tNewTaoyuanItem_Reward[3331680]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331680]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331680]["RewardItem"][1]["Id"] = 3314212 -- 雪参灵露[3314212][属性:8][叠加:10000][金币:0], 【表格】雪参灵露*3（赠）
	tNewTaoyuanItem_Reward[3331680]["RewardItem"][1]["Attr"] = "0 3 3" -- 雪参灵露（赠）*3
	tNewTaoyuanItem_Reward[3331680]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331680]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331680]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤炼石+4（赠）*2
	-- ===索引:tNewTaoyuanItem_Reward[3331681]
	-- ===删除:3331681,1
	tNewTaoyuanItem_Reward[3331681] = {}
	tNewTaoyuanItem_Reward[3331681]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331681]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331681]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331681]["DeleteItem"][1]["Id"] = 3331681 -- 【库】赤炼石+4（赠）*2[属性:0]
	tNewTaoyuanItem_Reward[3331681]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331681]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331681]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4（赠）*2
	tNewTaoyuanItem_Reward[3331681]["RewardItem"][1]["Attr"] = "0 2 3" -- +4赤炼石（赠）*2
	tNewTaoyuanItem_Reward[3331681]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331681]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331681]["RewardEffect"]["Effect"] = "angelwing"


	-- ===虎骨气力酒（赠）*5
	-- ===索引:tNewTaoyuanItem_Reward[3331682]
	-- ===删除:3331682,1
	tNewTaoyuanItem_Reward[3331682] = {}
	tNewTaoyuanItem_Reward[3331682]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331682]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331682]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331682]["DeleteItem"][1]["Id"] = 3331682 -- 【库】虎骨气力酒（赠）*5[属性:0]
	tNewTaoyuanItem_Reward[3331682]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331682]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331682]["RewardItem"][1]["Id"] = 3314207 -- 虎骨气力酒[3314207][属性:8][叠加:10000][金币:0], 【表格】虎骨气力酒（赠）*5
	tNewTaoyuanItem_Reward[3331682]["RewardItem"][1]["Attr"] = "0 5 3" -- 虎骨气力酒（赠）*5
	tNewTaoyuanItem_Reward[3331682]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331682]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331682]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雪参灵露（赠）*5
	-- ===索引:tNewTaoyuanItem_Reward[3331683]
	-- ===删除:3331683,1
	tNewTaoyuanItem_Reward[3331683] = {}
	tNewTaoyuanItem_Reward[3331683]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331683]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331683]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331683]["DeleteItem"][1]["Id"] = 3331683 -- 【库】雪参灵露（赠）*5[属性:0]
	tNewTaoyuanItem_Reward[3331683]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331683]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331683]["RewardItem"][1]["Id"] = 3314212 -- 雪参灵露[3314212][属性:8][叠加:10000][金币:0], 【表格】雪参灵露（赠）*5
	tNewTaoyuanItem_Reward[3331683]["RewardItem"][1]["Attr"] = "0 5 3" -- 雪参灵露（赠）*5
	tNewTaoyuanItem_Reward[3331683]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331683]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331683]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赤炼石+5（赠）*2
	-- ===索引:tNewTaoyuanItem_Reward[3331685]
	-- ===删除:3331685,1
	tNewTaoyuanItem_Reward[3331685] = {}
	tNewTaoyuanItem_Reward[3331685]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331685]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331685]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331685]["DeleteItem"][1]["Id"] = 3331685 -- 【库】赤炼石+5（赠）*2[属性:0]
	tNewTaoyuanItem_Reward[3331685]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331685]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331685]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）*2
	tNewTaoyuanItem_Reward[3331685]["RewardItem"][1]["Attr"] = "0 2 3" -- +5赤炼石（赠）*2
	tNewTaoyuanItem_Reward[3331685]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331685]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331685]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血菩提x2
	-- ===索引:tNewTaoyuanItem_Reward[3331686]
	-- ===删除:3331686,1
	tNewTaoyuanItem_Reward[3331686] = {}
	tNewTaoyuanItem_Reward[3331686]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331686]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331686]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331686]["DeleteItem"][1]["Id"] = 3331686 -- 【库】血菩提x2[属性:0]
	tNewTaoyuanItem_Reward[3331686]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331686]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331686]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:10000][金币:0], 【表格】血菩提x2
	tNewTaoyuanItem_Reward[3331686]["RewardItem"][1]["Attr"] = "0 2" -- 血菩提*2
	tNewTaoyuanItem_Reward[3331686]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331686]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331686]["RewardEffect"]["Effect"] = "angelwing"


	tNewTaoyuanItem_Reward[3331689] = {}
	-- ===法宝+7赠可选包
	-- ===索引:tNewTaoyuanItem_Reward[3331689][1]
	-- ===删除:3331689,1
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward[3331689],1)
	tNewTaoyuanItem_Reward[3331689][1] = {}
	tNewTaoyuanItem_Reward[3331689][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3331689][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331689][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][1]["DeleteItem"][1]["Id"] = 3331689 -- 【库】法宝+7赠可选包[属性:0]
	tNewTaoyuanItem_Reward[3331689][1]["LogId"] = 12002012

	tNewTaoyuanItem_Reward[3331689][1][1] = {}
	tNewTaoyuanItem_Reward[3331689][1][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][1][1]["ItemChance"] = 6000
	tNewTaoyuanItem_Reward[3331689][1][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][1][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][1][1]["RewardItem"][1]["Id"] = 201009 -- 凌霄扇[201009][属性:0][叠加:0][金币:37818], 【表格】凌霄扇+7（赠品）0
	tNewTaoyuanItem_Reward[3331689][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7" -- （追加+7）凌霄扇（赠）*1
	tNewTaoyuanItem_Reward[3331689][1][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 凌霄扇+7（赠品）1 - 30%
	tNewTaoyuanItem_Reward[3331689][1][2] = {}
	tNewTaoyuanItem_Reward[3331689][1][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][1][2]["ItemChance"] = 3000
	tNewTaoyuanItem_Reward[3331689][1][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][1][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][1][2]["RewardItem"][1]["Id"] = 201009 -- 凌霄扇[201009][属性:0][叠加:0][金币:37818], 【表格】凌霄扇+7（赠品）1
	tNewTaoyuanItem_Reward[3331689][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 255" -- 1洞（追加+7）凌霄扇（赠）*1
	tNewTaoyuanItem_Reward[3331689][1][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 凌霄扇+7（赠品）2 - 10%
	tNewTaoyuanItem_Reward[3331689][1][3] = {}
	tNewTaoyuanItem_Reward[3331689][1][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][1][3]["ItemChance"] = 1000
	tNewTaoyuanItem_Reward[3331689][1][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][1][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][1][3]["RewardItem"][1]["Id"] = 201009 -- 凌霄扇[201009][属性:0][叠加:0][金币:37818], 【表格】凌霄扇+7（赠品）2
	tNewTaoyuanItem_Reward[3331689][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 255 255" -- 2洞（追加+7）凌霄扇（赠）*1
	tNewTaoyuanItem_Reward[3331689][1][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][1][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===法宝+7赠可选包
	-- ===索引:tNewTaoyuanItem_Reward[3331689][2]
	-- ===删除:3331689,1
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward[3331689],2)
	tNewTaoyuanItem_Reward[3331689][2] = {}
	tNewTaoyuanItem_Reward[3331689][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3331689][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331689][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][2]["DeleteItem"][1]["Id"] = 3331689 -- 【库】法宝+7赠可选包[属性:0]
	tNewTaoyuanItem_Reward[3331689][2]["LogId"] = 12002012
	-- 混元塔+7（赠品）0 + -- 【必给】
	tNewTaoyuanItem_Reward[3331689][2][1] = {}
	tNewTaoyuanItem_Reward[3331689][2][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][2][1]["ItemChance"] = 6000
	tNewTaoyuanItem_Reward[3331689][2][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][2][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][2][1]["RewardItem"][1]["Id"] = 202009 -- 混元塔[202009][属性:0][叠加:0][金币:37818], 【表格】混元塔+7（赠品）0
	tNewTaoyuanItem_Reward[3331689][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7" -- （追加+7）混元塔（赠）*1
	tNewTaoyuanItem_Reward[3331689][2][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 混元塔+7（赠品）1 +  - 30%
	tNewTaoyuanItem_Reward[3331689][2][2] = {}
	tNewTaoyuanItem_Reward[3331689][2][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][2][2]["ItemChance"] = 3000
	tNewTaoyuanItem_Reward[3331689][2][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][2][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][2][2]["RewardItem"][1]["Id"] = 202009 -- 混元塔[202009][属性:0][叠加:0][金币:37818], 【表格】混元塔+7（赠品）1
	tNewTaoyuanItem_Reward[3331689][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 255" -- 1洞（追加+7）混元塔（赠）*1
	tNewTaoyuanItem_Reward[3331689][2][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 混元塔+7（赠品）2 - 10%
	tNewTaoyuanItem_Reward[3331689][2][3] = {}
	tNewTaoyuanItem_Reward[3331689][2][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][2][3]["ItemChance"] = 1000
	tNewTaoyuanItem_Reward[3331689][2][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][2][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][2][3]["RewardItem"][1]["Id"] = 202009 -- 混元塔[202009][属性:0][叠加:0][金币:37818], 【表格】混元塔+7（赠品）2
	tNewTaoyuanItem_Reward[3331689][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 255 255" -- 2洞（追加+7）混元塔（赠）*1
	tNewTaoyuanItem_Reward[3331689][2][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][2][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===法宝+7赠可选包
	-- ===索引:tNewTaoyuanItem_Reward[3331689][3]
	-- ===删除:3331689,1
	tNewTaoyuanItem_Reward[3331689][3] = {}
	tNewTaoyuanItem_Reward[3331689][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331689][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331689][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][3]["DeleteItem"][1]["Id"] = 3331689 -- 【库】法宝+7赠可选包[属性:0]
	tNewTaoyuanItem_Reward[3331689][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][3]["RewardItem"][1]["Id"] = 203009 -- 马鞭[203009][属性:0][叠加:0][金币:37818], 【表格】马鞭+7（赠品）0
	tNewTaoyuanItem_Reward[3331689][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7" -- （追加+7）马鞭（赠）*1
	tNewTaoyuanItem_Reward[3331689][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===法宝+7赠可选包
	-- ===索引:tNewTaoyuanItem_Reward[3331689][4]
	-- ===删除:3331689,1
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward[3331689],4)
	tNewTaoyuanItem_Reward[3331689][4] = {}
	tNewTaoyuanItem_Reward[3331689][4]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3331689][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331689][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][4]["DeleteItem"][1]["Id"] = 3331689 -- 【库】法宝+7赠可选包[属性:0]
	tNewTaoyuanItem_Reward[3331689][4]["LogId"] = 12002012
	-- 风雷翅+7（赠品）0 + -- 【必给】
	tNewTaoyuanItem_Reward[3331689][4][1] = {}
	tNewTaoyuanItem_Reward[3331689][4][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][4][1]["ItemChance"] = 6000
	tNewTaoyuanItem_Reward[3331689][4][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][4][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][4][1]["RewardItem"][1]["Id"] = 204009 -- 风雷翅[204009][属性:0][叠加:0][金币:37818], 【表格】风雷翅+7（赠品）0
	tNewTaoyuanItem_Reward[3331689][4][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7" -- （追加+7）风雷翅（赠）*1
	tNewTaoyuanItem_Reward[3331689][4][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][4][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 风雷翅+7（赠品）1 - 30%
	tNewTaoyuanItem_Reward[3331689][4][2] = {}
	tNewTaoyuanItem_Reward[3331689][4][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][4][2]["ItemChance"] = 3000
	tNewTaoyuanItem_Reward[3331689][4][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][4][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][4][2]["RewardItem"][1]["Id"] = 204009 -- 风雷翅[204009][属性:0][叠加:0][金币:37818], 【表格】风雷翅+7（赠品）1
	tNewTaoyuanItem_Reward[3331689][4][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 255" -- 1洞（追加+7）风雷翅（赠）*1
	tNewTaoyuanItem_Reward[3331689][4][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][4][2]["RewardEffect"]["Effect"] = "angelwing"
	--  + 风雷翅+7（赠品）2 - 10%
	tNewTaoyuanItem_Reward[3331689][4][3] = {}
	tNewTaoyuanItem_Reward[3331689][4][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331689][4][3]["ItemChance"] = 1000
	tNewTaoyuanItem_Reward[3331689][4][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][4][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][4][3]["RewardItem"][1]["Id"] = 204009 -- 风雷翅[204009][属性:0][叠加:0][金币:37818], 【表格】风雷翅+7（赠品）2
	tNewTaoyuanItem_Reward[3331689][4][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 7 255 255" -- 2洞（追加+7）风雷翅（赠）*1
	tNewTaoyuanItem_Reward[3331689][4][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][4][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][4][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===法宝+7赠可选包
	-- ===索引:tNewTaoyuanItem_Reward[3331689][5]
	-- ===删除:3331689,1
	tNewTaoyuanItem_Reward[3331689][5] = {}
	tNewTaoyuanItem_Reward[3331689][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331689][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331689][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][5]["DeleteItem"][1]["Id"] = 3331689 -- 【库】法宝+7赠可选包[属性:0]
	tNewTaoyuanItem_Reward[3331689][5]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331689][5]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331689][5]["RewardItem"][1]["Id"] = 3009003 -- 璀璨星陨石[3009003][属性:9][叠加:0][金币:0], 【表格】3009003
	tNewTaoyuanItem_Reward[3331689][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tNewTaoyuanItem_Reward[3331689][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331689][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331689][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血菩提x5
	-- ===索引:tNewTaoyuanItem_Reward[3331690]
	-- ===删除:3331690,1
	tNewTaoyuanItem_Reward[3331690] = {}
	tNewTaoyuanItem_Reward[3331690]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331690]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331690]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331690]["DeleteItem"][1]["Id"] = 3331690 -- 【库】血菩提x5[属性:0]
	tNewTaoyuanItem_Reward[3331690]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331690]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331690]["RewardItem"][1]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:10000][金币:0], 【表格】血菩提x5
	tNewTaoyuanItem_Reward[3331690]["RewardItem"][1]["Attr"] = "0 5" -- 血菩提*5
	tNewTaoyuanItem_Reward[3331690]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331690]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331690]["RewardEffect"]["Effect"] = "angelwing"

-- ===6等以上碎片
	-- ===索引:tNewTaoyuanItem_Reward[3331670]
	-- ===删除:3331670,3
	-- RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,3331670)
	tNewTaoyuanItem_Reward[3331670] = {}
	tNewTaoyuanItem_Reward[3331670]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTaoyuanItem_Reward[3331670]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331670]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331670]["DeleteItem"][1]["Id"] = 3331670 -- 【库】6等以上抽奖包碎片[属性:0]
	tNewTaoyuanItem_Reward[3331670]["DeleteItem"][1]["ItemNum"] = 3
	tNewTaoyuanItem_Reward[3331670]["LogId"] = 12002012
	-- 6等包
	tNewTaoyuanItem_Reward[3331670][1] = {}
	tNewTaoyuanItem_Reward[3331670][1]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331670][1]["ItemChance"] = 6150
	tNewTaoyuanItem_Reward[3331670][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331670][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331670][1]["RewardItem"][1]["Id"] = 3331655 -- 6等宝物任选包[3331655][属性:0][叠加:10000][金币:0], 【表格】6等包
	tNewTaoyuanItem_Reward[3331670][1]["RewardItem"][1]["Attr"] = "0 1" -- 6等宝物任选包*1
	tNewTaoyuanItem_Reward[3331670][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331670][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331670][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 5等 - 30%
	tNewTaoyuanItem_Reward[3331670][2] = {}
	tNewTaoyuanItem_Reward[3331670][2]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331670][2]["ItemChance"] = 3000
	tNewTaoyuanItem_Reward[3331670][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331670][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331670][2]["RewardItem"][1]["Id"] = 3331656 -- 5等宝物任选包[3331656][属性:0][叠加:10000][金币:0], 【表格】5等
	tNewTaoyuanItem_Reward[3331670][2]["RewardItem"][1]["Attr"] = "0 1" -- 5等宝物任选包*1
	tNewTaoyuanItem_Reward[3331670][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331670][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331670][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4等 - 5.5%
	tNewTaoyuanItem_Reward[3331670][3] = {}
	tNewTaoyuanItem_Reward[3331670][3]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331670][3]["ItemChance"] = 550
	tNewTaoyuanItem_Reward[3331670][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331670][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331670][3]["RewardItem"][1]["Id"] = 3331657 -- 4等宝物任选包[3331657][属性:0][叠加:10000][金币:0], 【表格】4等
	tNewTaoyuanItem_Reward[3331670][3]["RewardItem"][1]["Attr"] = "0 1" -- 4等宝物任选包*1
	tNewTaoyuanItem_Reward[3331670][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331670][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331670][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3等 - 3%
	tNewTaoyuanItem_Reward[3331670][4] = {}
	tNewTaoyuanItem_Reward[3331670][4]["RandomItemChanceType"] = 2
	tNewTaoyuanItem_Reward[3331670][4]["ItemChance"] = 300
	tNewTaoyuanItem_Reward[3331670][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331670][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331670][4]["RewardItem"][1]["Id"] = 3331658 -- 3等宝物任选包[3331658][属性:0][叠加:10000][金币:0], 【表格】3等
	tNewTaoyuanItem_Reward[3331670][4]["RewardItem"][1]["Attr"] = "0 1" -- 3等宝物任选包*1
	tNewTaoyuanItem_Reward[3331670][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331670][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331670][4]["RewardEffect"]["Effect"] = "angelwing"

	tNewTaoyuanItem_Reward[3331782] = {}
	tNewTaoyuanItem_Reward[3331782][1] = {}
	tNewTaoyuanItem_Reward[3331782][1]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331782][1]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331782][1]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][1]["DeleteItem"][1]["Id"] = 3331782 -- 【库】兰花兑换券[属性:9]
	tNewTaoyuanItem_Reward[3331782][1]["DeleteItem"][1]["ItemNum"] = 3
	tNewTaoyuanItem_Reward[3331782][1]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331782][1]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][1]["RewardItem"][1]["Id"] = 752003 -- 【库】3朵百合花[属性:8]【表格】3朵百合花
	tNewTaoyuanItem_Reward[3331782][1]["RewardItem"][1]["Attr"] = "0 1" -- 3朵百合花*1
	tNewTaoyuanItem_Reward[3331782][1]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331782][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331782][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,2
	-- ===删除:3321057,9
	-- ===
	tNewTaoyuanItem_Reward[3331782][2] = {}
	tNewTaoyuanItem_Reward[3331782][2]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331782][2]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331782][2]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][2]["DeleteItem"][1]["Id"] = 3331782 -- 【库】兰花兑换券[属性:9]
	tNewTaoyuanItem_Reward[3331782][2]["DeleteItem"][1]["ItemNum"] = 9
	tNewTaoyuanItem_Reward[3331782][2]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331782][2]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][2]["RewardItem"][1]["Id"] = 752009 -- 【库】9朵百合花[属性:8]【表格】9朵百合花
	tNewTaoyuanItem_Reward[3331782][2]["RewardItem"][1]["Attr"] = "0 1" -- 9朵百合花*1
	tNewTaoyuanItem_Reward[3331782][2]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331782][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331782][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,3
	-- ===删除:3321057,99
	-- ===
	tNewTaoyuanItem_Reward[3331782][3] = {}
	tNewTaoyuanItem_Reward[3331782][3]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331782][3]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331782][3]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][3]["DeleteItem"][1]["Id"] = 3331782 -- 【库】兰花兑换券[属性:9]
	tNewTaoyuanItem_Reward[3331782][3]["DeleteItem"][1]["ItemNum"] = 99
	tNewTaoyuanItem_Reward[3331782][3]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331782][3]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][3]["RewardItem"][1]["Id"] = 752099 -- 【库】99朵百合花[属性:8]【表格】99朵百合花
	tNewTaoyuanItem_Reward[3331782][3]["RewardItem"][1]["Attr"] = "0 1" -- 99朵百合花*1
	tNewTaoyuanItem_Reward[3331782][3]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331782][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331782][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,4
	-- ===删除:3321057,999
	-- ===
	tNewTaoyuanItem_Reward[3331782][4] = {}
	tNewTaoyuanItem_Reward[3331782][4]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331782][4]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331782][4]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][4]["DeleteItem"][1]["Id"] = 3331782 -- 【库】兰花兑换券[属性:9]
	tNewTaoyuanItem_Reward[3331782][4]["DeleteItem"][1]["ItemNum"] = 999
	tNewTaoyuanItem_Reward[3331782][4]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331782][4]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][4]["RewardItem"][1]["Id"] = 752999 -- 【库】999朵百合花[属性:8]【表格】999朵百合花
	tNewTaoyuanItem_Reward[3331782][4]["RewardItem"][1]["Attr"] = "0 1" -- 999朵百合花*1
	tNewTaoyuanItem_Reward[3331782][4]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331782][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331782][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===至尊百合花礼盒
	-- ===索引: 3321057,5
	-- ===删除:3321057,1
	-- ===
	tNewTaoyuanItem_Reward[3331782][5] = {}
	tNewTaoyuanItem_Reward[3331782][5]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331782][5]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331782][5]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][5]["DeleteItem"][1]["Id"] = 3331782 -- 【库】兰花兑换券[属性:9]
	tNewTaoyuanItem_Reward[3331782][5]["DeleteItem"][1]["ItemNum"] = 1
	tNewTaoyuanItem_Reward[3331782][5]["RewardStrengthValue"] = {}
	tNewTaoyuanItem_Reward[3331782][5]["RewardStrengthValue"]["Value"] = 5 -- 气力值
	tNewTaoyuanItem_Reward[3331782][5]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331782][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331782][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===索引: 3321057,6
	-- ===删除:3321057,1
	-- ===
	tNewTaoyuanItem_Reward[3331782][6] = {}
	tNewTaoyuanItem_Reward[3331782][6]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331782][6]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331782][6]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][6]["DeleteItem"][1]["Id"] = 3331782 -- 【库】兰花兑换券[属性:9]
	tNewTaoyuanItem_Reward[3331782][6]["DeleteItem"][1]["ItemNum"] = 1
	tNewTaoyuanItem_Reward[3331782][6]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3331782][6]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3331782][6]["RewardItem"][1]["Id"] = 752001 -- 【库】1朵百合花[属性:8]【表格】1朵百合花
	tNewTaoyuanItem_Reward[3331782][6]["RewardItem"][1]["Attr"] = "0 1" -- 1朵百合花*1
	tNewTaoyuanItem_Reward[3331782][6]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331782][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331782][6]["RewardEffect"]["Effect"] = "angelwing"
	-- ===【财富类】六六大顺包
	-- ===索引:tNewTaoyuanItem_Reward[3331788]
	-- ===删除:3331788,1
	tNewTaoyuanItem_Reward[3331788] = {}
	tNewTaoyuanItem_Reward[3331788]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331788]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331788]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331788]["DeleteItem"][1]["Id"] = 3331788 -- 【库】【财富类】六六大顺包[属性:8]
	tNewTaoyuanItem_Reward[3331788]["RewardMoney"] = {}
	tNewTaoyuanItem_Reward[3331788]["RewardMoney"]["Value"] = 10000000 -- 金币, 【需求】1000万金币
	tNewTaoyuanItem_Reward[3331788]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331788]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331788]["RewardEffect"]["Effect"] = "angelwing"


	-- ===【财富类】六六大顺包
	-- ===索引:tNewTaoyuanItem_Reward[3331789]
	-- ===删除:3331789,1
	tNewTaoyuanItem_Reward[3331789] = {}
	tNewTaoyuanItem_Reward[3331789]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331789]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331789]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331789]["DeleteItem"][1]["Id"] = 3331789 -- 【库】【财富类】金玉满堂包[属性:8]
	tNewTaoyuanItem_Reward[3331789]["RewardMoney"] = {}
	tNewTaoyuanItem_Reward[3331789]["RewardMoney"]["Value"] = 30000000 -- 金币, 【需求】3000万金币
	tNewTaoyuanItem_Reward[3331789]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331789]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331789]["RewardEffect"]["Effect"] = "angelwing"


	-- ===【财富类】六六大顺包
	-- ===索引:tNewTaoyuanItem_Reward[3331790]
	-- ===删除:3331790,1
	tNewTaoyuanItem_Reward[3331790] = {}
	tNewTaoyuanItem_Reward[3331790]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3331790]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3331790]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3331790]["DeleteItem"][1]["Id"] = 3331790 -- 【库】【财富类】富甲天下包[属性:8]
	tNewTaoyuanItem_Reward[3331790]["RewardMoney"] = {}
	tNewTaoyuanItem_Reward[3331790]["RewardMoney"]["Value"] = 250000000 -- 金币, 【需求】25000万金币
	tNewTaoyuanItem_Reward[3331790]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3331790]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3331790]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===【练功类】梦幻强炼丹礼包
	-- ===索引:tNewTaoyuanItem_Reward[3316542]
	-- ===删除:3316542,1
	tNewTaoyuanItem_Reward[3316542] = {}
	tNewTaoyuanItem_Reward[3316542]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3316542]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3316542]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3316542]["DeleteItem"][1]["Id"] = 3316542 -- 【库】【练功类】梦幻强炼丹礼包[属性:9]
	tNewTaoyuanItem_Reward[3316542]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3316542]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3316542]["RewardItem"][1]["Id"] = 3003124 -- 免费强炼丹[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹（赠）x5
	tNewTaoyuanItem_Reward[3316542]["RewardItem"][1]["Attr"] = "0 5 3" -- 免费强炼丹*5
	tNewTaoyuanItem_Reward[3316542]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3316542]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3316542]["RewardEffect"]["Effect"] = "angelwing"


	-- ===【练功类】豪华强炼丹礼包
	-- ===索引:tNewTaoyuanItem_Reward[3316543]
	-- ===删除:3316543,1
	tNewTaoyuanItem_Reward[3316543] = {}
	tNewTaoyuanItem_Reward[3316543]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3316543]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3316543]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3316543]["DeleteItem"][1]["Id"] = 3316543 -- 【库】【练功类】豪华强炼丹礼包[属性:9]
	tNewTaoyuanItem_Reward[3316543]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3316543]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3316543]["RewardItem"][1]["Id"] = 3003124 -- 免费强炼丹[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹（赠）x50
	tNewTaoyuanItem_Reward[3316543]["RewardItem"][1]["Attr"] = "0 20 3" -- 免费强炼丹（赠）*20
	tNewTaoyuanItem_Reward[3316543]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3316543]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3316543]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===【练功类】梦幻通神丹礼包
	-- ===索引:tNewTaoyuanItem_Reward[3316544]
	-- ===删除:3316544,1
	tNewTaoyuanItem_Reward[3316544] = {}
	tNewTaoyuanItem_Reward[3316544]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3316544]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3316544]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3316544]["DeleteItem"][1]["Id"] = 3316544 -- 【库】【练功类】梦幻通神丹礼包[属性:9]
	tNewTaoyuanItem_Reward[3316544]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3316544]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3316544]["RewardItem"][1]["Id"] = 3003125 -- 通神丹[3003125][属性:0][叠加:10000][金币:0], 【表格】通神丹（赠）x5
	tNewTaoyuanItem_Reward[3316544]["RewardItem"][1]["Attr"] = "0 5 3" -- 通神丹（赠）*5
	tNewTaoyuanItem_Reward[3316544]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3316544]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3316544]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===【练功类】精致究极通神丹礼盒
	-- ===索引:tNewTaoyuanItem_Reward[3316545]
	-- ===删除:3316545,1
	tNewTaoyuanItem_Reward[3316545] = {}
	tNewTaoyuanItem_Reward[3316545]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3316545]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3316545]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3316545]["DeleteItem"][1]["Id"] = 3316545 -- 【库】【练功类】精致究极通神丹礼盒[属性:9]
	tNewTaoyuanItem_Reward[3316545]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3316545]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3316545]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）x2
	tNewTaoyuanItem_Reward[3316545]["RewardItem"][1]["Attr"] = "0 2 3" -- 究极通神丹（赠）*2
	tNewTaoyuanItem_Reward[3316545]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3316545]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3316545]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===【练功类】梦幻究极通神丹礼盒
	-- ===索引:tNewTaoyuanItem_Reward[3316546]
	-- ===删除:3316546,1
	tNewTaoyuanItem_Reward[3316546] = {}
	tNewTaoyuanItem_Reward[3316546]["LogId"] = 12002012
	tNewTaoyuanItem_Reward[3316546]["DeleteItem"] = {}
	tNewTaoyuanItem_Reward[3316546]["DeleteItem"][1] = {}
	tNewTaoyuanItem_Reward[3316546]["DeleteItem"][1]["Id"] = 3316546 -- 【库】【练功类】梦幻究极通神丹礼盒[属性:9]
	tNewTaoyuanItem_Reward[3316546]["RewardItem"] = {}
	tNewTaoyuanItem_Reward[3316546]["RewardItem"][1] = {}
	tNewTaoyuanItem_Reward[3316546]["RewardItem"][1]["Id"] = 3003126 -- 究极通神丹[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）x5
	tNewTaoyuanItem_Reward[3316546]["RewardItem"][1]["Attr"] = "0 5 3" -- 究极通神丹（赠）*5
	tNewTaoyuanItem_Reward[3316546]["RewardEffect"] = {}
	tNewTaoyuanItem_Reward[3316546]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTaoyuanItem_Reward[3316546]["RewardEffect"]["Effect"] = "angelwing"

local tNewTaoyuanItem_Random = {}
tNewTaoyuanItem_Random[3331684] = {}
tNewTaoyuanItem_Random[3331684]["ItemChanceSum"] = 10000
tNewTaoyuanItem_Random[3331684]["LogId"] = 12002012

tNewTaoyuanItem_Random[3331684][1] = {}
tNewTaoyuanItem_Random[3331684][1]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331684][1]["ItemChance"] = 4500
tNewTaoyuanItem_Random[3331684][1]["Item_1"] = 95

tNewTaoyuanItem_Random[3331684][2] = {}
tNewTaoyuanItem_Random[3331684][2]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331684][2]["ItemChance"] = 3000
tNewTaoyuanItem_Random[3331684][2]["Item_1"] = 96

tNewTaoyuanItem_Random[3331684][3] = {}
tNewTaoyuanItem_Random[3331684][3]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331684][3]["ItemChance"] = 1500
tNewTaoyuanItem_Random[3331684][3]["Item_1"] = 97

tNewTaoyuanItem_Random[3331684][4] = {}
tNewTaoyuanItem_Random[3331684][4]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331684][4]["ItemChance"] = 700
tNewTaoyuanItem_Random[3331684][4]["Item_1"] = 98

tNewTaoyuanItem_Random[3331684][5] = {}
tNewTaoyuanItem_Random[3331684][5]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331684][5]["ItemChance"] = 300
tNewTaoyuanItem_Random[3331684][5]["Item_1"] = 99

tNewTaoyuanItem_Random[3331687] = {}
tNewTaoyuanItem_Random[3331687]["ItemChanceSum"] = 10000
tNewTaoyuanItem_Random[3331687]["LogId"] = 12002012

tNewTaoyuanItem_Random[3331687][1] = {}
tNewTaoyuanItem_Random[3331687][1]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331687][1]["ItemChance"] = 5000
tNewTaoyuanItem_Random[3331687][1]["Item_1"] = 96

tNewTaoyuanItem_Random[3331687][2] = {}
tNewTaoyuanItem_Random[3331687][2]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331687][2]["ItemChance"] = 3000
tNewTaoyuanItem_Random[3331687][2]["Item_1"] = 97

tNewTaoyuanItem_Random[3331687][3] = {}
tNewTaoyuanItem_Random[3331687][3]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331687][3]["ItemChance"] = 1500
tNewTaoyuanItem_Random[3331687][3]["Item_1"] = 98

tNewTaoyuanItem_Random[3331687][4] = {}
tNewTaoyuanItem_Random[3331687][4]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331687][4]["ItemChance"] = 500
tNewTaoyuanItem_Random[3331687][4]["Item_1"] = 99




tNewTaoyuanItem_Random[3331688] = {}
tNewTaoyuanItem_Random[3331688]["ItemChanceSum"] = 10000
tNewTaoyuanItem_Random[3331688]["LogId"] = 12002012

tNewTaoyuanItem_Random[3331688][1] = {}
tNewTaoyuanItem_Random[3331688][1]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331688][1]["ItemChance"] = 5100
tNewTaoyuanItem_Random[3331688][1]["Item_1"] = 97

tNewTaoyuanItem_Random[3331688][2] = {}
tNewTaoyuanItem_Random[3331688][2]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331688][2]["ItemChance"] = 3900
tNewTaoyuanItem_Random[3331688][2]["Item_1"] = 98

tNewTaoyuanItem_Random[3331688][3] = {}
tNewTaoyuanItem_Random[3331688][3]["RandomItemChanceType"] = 2
tNewTaoyuanItem_Random[3331688][3]["ItemChance"] = 1000
tNewTaoyuanItem_Random[3331688][3]["Item_1"] = 99

local tNewTaoyuanItem_ChiType = {
	--物爆
	[1] = {
		["Min"] = 10,
		["Space"] = 190, 	
	},
	--法爆
	[2] = {
		["Min"] = 10,
		["Space"] = 190, 
	},
	--防爆
	[3] = {
		["Min"] = 10,
		["Space"] = 190, 	
	},
	--粉碎
	[4] = {
		["Min"] = 10,
		["Space"] = 190, 
	},
	--坚固
	[5] = {
		["Min"] = 10,
		["Space"] = 190, 
	},
	--生命
	[6] = {
		["Min"] = 1000,
		["Space"] = 2500, 
	},
	--物攻
	[7] = {
		["Min"] = 500,
		["Space"] = 1500, 
	},
	--魔攻
	[8] = {
		["Min"] = 500,
		["Space"] = 2000, 
	},
	--魔防
	[9] = {
		["Min"] = 50,
		["Space"] = 200, 
	},
	--最终物理
	[10] = {
		["Min"] = 50,
		["Space"] = 450, 
	},
	--最终法术
	[11] = {
		["Min"] = 50,
		["Space"] = 250, 
	},
		--最终物减
	[12] = {
		["Min"] = 50,
		["Space"] = 450, 
	},
	--最终法减
	[13] = {
		["Min"] = 50,
		["Space"] = 250, 
	},
}



function NewTaoyuanItem_RewardArtifact(nItemId,nSameNum) 
	--5条属性，x属性相同
	local nXuanBaoId,nItem = Xuanbao_RewardSameAttribute(0,0,10,0,0,5,nSameNum)
	local sItemName = Get_ItemtypeName(nXuanBaoId)
	local sRewardText = tStandardize_RewardPoolProps_Text["MsgRewardItem"]
	local sLast = string.format(sRewardText,sItemName)
	Sys_MsgBox(sLast)
	User_TalkChannel2005(sLast)
	local sStr1 = Get_ItemData1(nItem)
	local sStr2 = Get_ItemData2(nItem)
	local sStr3 = Get_ItemData3(nItem)
	local sStr4 = Get_ItemData4(nItem)
	local sStr5 = Get_ItemData5(nItem)
	local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
	Sys_SaveActionRewardLog(string.format(tNewTaoyuanItem_Cont["ArtifactLog"],nItemId,sAttr))
end
function NewTaoyuanItem_Choose(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tNewTaoyuanItem_Reward[nItemId][nIndex])
end
function NewTaoyuanItem_Chi(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end
	--获取玩家该门的4条属性
	local nUserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(120,2,nUserId) then
		User_TalkChannel2005(tNewTaoyuanItem_Text[3331684]["Level"],nUserId)
		return
	end
	local nChi_Index = 0
	-- 检测玩家已开启的炼气门
	for i = 1,4 do
		if Get_AssignTypeAndValue(i,1,nUserId) == 0 then
			break
		end
		nChi_Index = nChi_Index + 1
	end
	if nChi_Index < nIndex then
		--阁下尚未开启该门
		User_TalkChannel2005(tNewTaoyuanItem_Text[3331684]["IndexErr"],nUserId)
		return
	end
		-- 删除物品
	if not Item_DelMulItem(nItemId,nItemId,1) then
		return
	end
	--获取随机一条气的数值 类型为 aabbbb
	local nRandomIndex = math.random(1,4)
	local nChi_Data = Get_AssignTypeAndValue(nIndex,nRandomIndex,nUserId)
	--获取属性类型
	local nChi_Type = nChi_Data//10000
	--获取随机气的数值以及分数
	local nChiRandom,nScore = NewTaoyuanItem_ChiRandom(nItemId,nChi_Type)
	--记录log 随机的分数
	local nNewChiData = nChiRandom+nChi_Type*10000
	if nNewChiData < nChi_Data then
		--未能超过原本的分数
		return
	end
	--给分数赋值
	if User_SetAssignTypeAndValue(nIndex, nRandomIndex, nNewChiData, nUserId) then
		--将玩家的xx门的第X条属性修改为x分
		--记录log 格式为abccdddd 第a门第b条属性修改为第cc种属性的dddd属性值
		local sLog = string.format(tNewTaoyuanItem_Cont["ChiLog"],nChi_Data+nIndex*10000000+nRandomIndex*1000000,nChiRandom+nIndex*10000000+nRandomIndex*1000000)
		local sMsgBox = string.format(tNewTaoyuanItem_Text[3331684]["Success"][nIndex],nRandomIndex,nScore)
		Sys_MsgBox(sMsgBox)
		Sys_SaveActionFestivalLog(sLog,nUserId)
	end
end

function NewTaoyuanItem_ChiRandom(nItemId,nChi_Type)
	local nFlat,tAward = Probabil_RandomAward(tNewTaoyuanItem_Random,nItemId)
	--获取随机分数
	local nNum =  tAward[1]["tAward"][1]["Item_1"]
	--获取这条属性随机之后的值 最低值+随机区间*分数
	local nData = math.ceil(nNum/100*tNewTaoyuanItem_ChiType[nChi_Type]["Space"])+tNewTaoyuanItem_ChiType[nChi_Type]["Min"]
	return nData,nNum
end
function NewTaoyuanItem_RandomBox(nItemId,nIndex)
	if not Item_ChkItem(nItemId) then
		return
	end 
	RewardTemplate_RandomReward(tNewTaoyuanItem_Reward[nItemId],nIndex)
end
function NewTaoyuanItem_OpenBag(nItemId,nIndex)

	local nItemNum = tNewTaoyuanItem_Cont["ItemNum"][nIndex]
	local tReward = tNewTaoyuanItem_Reward[nItemId][nIndex]
	if nIndex == 5 then
		nItemNum = Get_CountItemType(nItemId,0)
		tReward = CommonFunc_Copy(tNewTaoyuanItem_Reward[nItemId][nIndex])
		local nStrength = tonumber(nItemNum * 5)
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nStrength
		
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		RewardTemplate_UseItemAndMsg(tReward)
	else
		Sys_MsgBox(tNewTaoyuanItem_Text[3331782]["Shortage"])
	end
	
end

------------------------------------------------------------------------------------
tItem[3330856] = tItem[3330856] or {}

tItem[3330856]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end 
	RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,nItemId)
end
tItem[3330857] = tItem[3330856]
tItem[3330858] = tItem[3330856]
tItem[3330859] = tItem[3330856]
tItem[3330860] = tItem[3330856]
tItem[3330861] = tItem[3330856]

--神器
tItem[3330862] = tItem[3330862] or {}
tItem[3330862]["Function"] = function(nItemId) 
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tStandardize_RewardPoolProps_Text["NoSapce"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		NewTaoyuanItem_RewardArtifact(nItemId,2)
	end
end
tItem[3330863] = tItem[3330863] or {}
tItem[3330863]["Function"] = function(nItemId) 
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tStandardize_RewardPoolProps_Text["NoSapce"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		NewTaoyuanItem_RewardArtifact(nItemId,3)
	end
end
tItem[3330864] = tItem[3330864] or {}
tItem[3330864]["Function"] = function(nItemId) 
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tStandardize_RewardPoolProps_Text["NoSapce"])
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then 
		NewTaoyuanItem_RewardArtifact(nItemId,4)
	end
end

tItem[3330865] = tItem[3330865] or {}
tItem[3330865]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tNewTaoyuanItem_Reward[nItemId])
end
tItem[3330866] = tItem[3330865]
tItem[3330867] = tItem[3330865]
tItem[3330868] = tItem[3330865]
tItem[3330869] = tItem[3330865]
tItem[3330870] = tItem[3330865]
tItem[3330871] = tItem[3330865]
tItem[3330872] = tItem[3330865]
tItem[3330873] = tItem[3330865]
tItem[3330874] = tItem[3330865]
tItem[3330875] = tItem[3330865]
tItem[3330876] = tItem[3330865]
tItem[3330877] = tItem[3330865]
tItem[3330878] = tItem[3330865]
tItem[3330879] = tItem[3330865]
tItem[3330880] = tItem[3330865]
tItem[3330881] = tItem[3330865]
tItem[3330882] = tItem[3330865]
tItem[3330883] = tItem[3330865]
tItem[3330884] = tItem[3330865]
tItem[3330885] = tItem[3330865]
tItem[3330886] = tItem[3330865]
-- 3316542,'【练功类】梦幻强炼丹礼包'
-- 3316543,'【练功类】豪华强炼丹礼包'
-- 3316544,'【练功类】梦幻通神丹礼包'
-- 3316545,'【练功类】精致究极通神丹礼盒'
-- 3316546,'【练功类】梦幻究极通神丹礼盒'
tItem[3316542] = tItem[3330865]
tItem[3316543] = tItem[3330865]
tItem[3316544] = tItem[3330865]
tItem[3316545] = tItem[3330865]
tItem[3316546] = tItem[3330865]


tItemFace[3331097] = 536
tItemFace[3331098] = 808
tItem[3331097] = tItem[3331097] or {}
tItem[3331097]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3331097]["DialogueText"] = tNewTaoyuanItem_Text[3331097]
tItem[3331097]["Text1-1"] = {111,112}
tItem[3331097]["tOption1-1"] = {111,112,113,114,115}
tItem[3331097]["OptionFunc111"]="NewTaoyuanItem_Choose</N>3331097</N>1"
tItem[3331097]["OptionFunc112"]="NewTaoyuanItem_Choose</N>3331097</N>2"
tItem[3331097]["OptionFunc113"]="NewTaoyuanItem_Choose</N>3331097</N>3"
tItem[3331097]["OptionFunc114"]="NewTaoyuanItem_Choose</N>3331097</N>4"
tItem[3331097]["OptionFunc115"]="NewTaoyuanItem_Choose</N>3331097</N>5"

tItem[3331098] = tItem[3331098] or {}
tItem[3331098]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3331098]["DialogueText"] = tNewTaoyuanItem_Text[3331098]
tItem[3331098]["Text1-1"] = {111,112}
tItem[3331098]["tOption1-1"] = {111,112,113,114,115}
tItem[3331098]["OptionFunc111"]="NewTaoyuanItem_Choose</N>3331098</N>1"
tItem[3331098]["OptionFunc112"]="NewTaoyuanItem_Choose</N>3331098</N>2"
tItem[3331098]["OptionFunc113"]="NewTaoyuanItem_Choose</N>3331098</N>3"
tItem[3331098]["OptionFunc114"]="NewTaoyuanItem_Choose</N>3331098</N>4"
tItem[3331098]["OptionFunc115"]="NewTaoyuanItem_Choose</N>3331098</N>5"
-----------------------------------------------------------------------------------------
--百合花兑换券

tItemFace[3331782] = 781
tItem[3331782] = tItem[3331782] or {}
tItem[3331782]["DialogueText"] = tLuckyDrawAct_Text[3321057]
tItem[3331782]["Text1-1"] = {111}
tItem[3331782]["tOption1-1"] = {116,111,112,113,114,115}
tItem[3331782]["OptionFunc116"] = "NewTaoyuanItem_OpenBag</N>3331782</N>6"
tItem[3331782]["OptionChkFunc116"] = function ()
	local nItemNum = tNewTaoyuanItem_Reward[3331782][6]["DeleteItem"][1]["ItemNum"]
	if Item_ChkMulItem(3331782,3331782,nItemNum) then
		return true
	end
	return false
end
tItem[3331782]["OptionFunc111"] = "NewTaoyuanItem_OpenBag</N>3331782</N>1"
tItem[3331782]["OptionChkFunc111"] = function ()
	local nItemNum = tNewTaoyuanItem_Reward[3331782][1]["DeleteItem"][1]["ItemNum"]
	if Item_ChkMulItem(3331782,3331782,nItemNum) then
		return true
	end
	return false
end
tItem[3331782]["OptionFunc112"] = "NewTaoyuanItem_OpenBag</N>3331782</N>2"
tItem[3331782]["OptionChkFunc112"] = function ()
	local nItemNum = tNewTaoyuanItem_Reward[3331782][2]["DeleteItem"][1]["ItemNum"]
	if Item_ChkMulItem(3331782,3331782,nItemNum) then
		return true
	end
	return false
end
tItem[3331782]["OptionFunc113"] = "NewTaoyuanItem_OpenBag</N>3331782</N>3"
tItem[3331782]["OptionChkFunc113"] = function ()
	local nItemNum = tNewTaoyuanItem_Reward[3331782][3]["DeleteItem"][1]["ItemNum"]
	if Item_ChkMulItem(3331782,3331782,nItemNum) then
		return true
	end
	return false
end
tItem[3331782]["OptionFunc114"] = "NewTaoyuanItem_OpenBag</N>3331782</N>4"
tItem[3331782]["OptionChkFunc114"] = function ()
	local nItemNum = tNewTaoyuanItem_Reward[3331782][4]["DeleteItem"][1]["ItemNum"]
	if Item_ChkMulItem(3331782,3331782,nItemNum) then
		return true
	end
	return false
end
tItem[3331782]["OptionFunc115"] = "NewTaoyuanItem_OpenBag</N>3331782</N>5"
tItem[3331782]["OptionChkFunc115"] = function ()
	local nItemNum = tNewTaoyuanItem_Reward[3331782][5]["DeleteItem"][1]["ItemNum"]
	if Item_ChkMulItem(3331782,3331782,nItemNum) then
		return true
	end
	return false
end

--练气95分
--新头像
tItemFace[3331684] = 2994
tItem[3331684] = tItem[3331684] or {}
tItem[3331684]["DialogueText"] = tNewTaoyuanItem_Text[3331684]
tItem[3331684]["Text1-1"] = {111}
tItem[3331684]["tOption1-1"] = {111,112,113,114}
tItem[3331684]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(120,2,nUserId) then
		User_TalkChannel2005(tNewTaoyuanItem_Text[3331684]["Level"],nUserId)
		return
	end
	tItem[3331684]["OptionFunc111"] = "NewTaoyuanItem_Chi</N>"..nItemId.."</N>1"
	tItem[3331684]["OptionFunc112"] = "NewTaoyuanItem_Chi</N>"..nItemId.."</N>2"
	tItem[3331684]["OptionFunc113"] = "NewTaoyuanItem_Chi</N>"..nItemId.."</N>3"
	tItem[3331684]["OptionFunc114"] = "NewTaoyuanItem_Chi</N>"..nItemId.."</N>4"
	LinkItemGossipFunc_New(nItemId,"1-1")
end

--96分
tItemFace[3331687] = 1417
tItem[3331687] = tItem[3331684]
--97分
--新写头像
tItemFace[3331688] = 2995  
tItem[3331688] = tItem[3331684]




tItem[3331653] = tItem[3331653] or {}
tItem[3331653]["DialogueText"] = tNewTaoyuanItem_Text[3331653] 
tItem[3331653]["Text1-1"] = {111}
tItem[3331653]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113}
tItem[3331653]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local sName = ""
	local nRewardId = 0
	local tRewardNum = {}
	local nRewardNum = 0
	tItem[nItemId]["tOption1-1"] = {}
	for i = 1,tNewTaoyuanItem_Cont["Count"][nItemId] do
		nRewardId = tNewTaoyuanItem_Reward[nItemId][i]["RewardItem"][1]["Id"]
		tRewardNum = Sys_Split(tNewTaoyuanItem_Reward[nItemId][i]["RewardItem"][1]["Attr"]," ")
		sRewardNum = tRewardNum[2]
		sName = tRewardTemplate_Text["ItemName"][nRewardId] or Get_ItemtypeName(nRewardId)
		local sName1 = ""
		if #tRewardNum >= 3 then
			if tonumber(tRewardNum[3]) == 3 then
				--加赠
				sName1 = sName1..tRewardTemplate_Text["RewardBund"]
			end
		end
		if tonumber(sRewardNum) > 1 then
			--加上数量
			sName1 = sName1.."*"..sRewardNum
		end
		table.insert(tItem[nItemId]["tOption1-1"],tonumber("11"..i))
		tItem[nItemId]["Option11"..i] = string.format(tGlobalFormat[2],sName,sName1)
		tItem[nItemId]["OptionFunc11"..i] = "NewTaoyuanItem_Choose</N>"..nItemId.."</N>"..i
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end



tItem[3331654] = tItem[3331653]


tItem[3331655] = tItem[3331653]


tItem[3331656] = tItem[3331653]


tItem[3331657] = tItem[3331653]


tItem[3331658] = tItem[3331653]


tItem[3331780] = tItem[3331653]


tItem[3331781] = tItem[3331653]


tItem[3331659] = tItem[3331653]
tItem[3331660] = tItem[3331653]
tItem[3331661] = tItem[3331653]
tItem[3331662] = tItem[3331653]
tItem[3331663] = tItem[3331653]
tItem[3331664] = tItem[3331653]
tItem[3331665] = tItem[3331653]
tItem[3331666] = tItem[3331653]
tItem[3331667] = tItem[3331653]
tItem[3331668] = tItem[3331653]
tItem[3331669] = tItem[3331653]

--
tItem[3331671] = tItem[3330865]
tItem[3331672] = tItem[3330865]
tItem[3331673] = tItem[3330865]
tItem[3331674] = tItem[3330865]
tItem[3331675] = tItem[3330865]
tItem[3331676] = tItem[3330865]
tItem[3331677] = tItem[3330865]
tItem[3331678] = tItem[3330865]
tItem[3331679] = tItem[3330865]
tItem[3331680] = tItem[3330865]
tItem[3331681] = tItem[3330865]
tItem[3331682] = tItem[3330865]
tItem[3331683] = tItem[3330865]
tItem[3331685] = tItem[3330865]
tItem[3331686] = tItem[3330865]
 
tItem[3331689] = tItem[3331689] or {}
tItem[3331689]["DialogueText"] = tNewTaoyuanItem_Text[3331689] 
tItem[3331689]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3331689]["Text1-1"] = {111}
tItem[3331689]["tOption1-1"] = {111,112,113,114,115}
tItem[3331689]["OptionFunc111"] = "NewTaoyuanItem_RandomBox</N>3331689</N>1"
tItem[3331689]["OptionFunc112"] = "NewTaoyuanItem_RandomBox</N>3331689</N>2"
tItem[3331689]["OptionFunc113"] = "NewTaoyuanItem_Choose</N>3331689</N>3"
tItem[3331689]["OptionFunc114"] = "NewTaoyuanItem_RandomBox</N>3331689</N>4"
tItem[3331689]["OptionFunc115"] = "NewTaoyuanItem_Choose</N>3331689</N>5"



tItem[3331690] = tItem[3330865]

tItemFace[3331689] = 851
tItemFace[3331669] = 1791
tItemFace[3331668] = 612
tItemFace[3331667] = 1668
tItemFace[3331666] = 948
tItemFace[3331665] = 824
tItemFace[3331664] = 855
tItemFace[3331663] = 947
tItemFace[3331662] = 926
tItemFace[3331661] = 1268
tItemFace[3331660] = 856
tItemFace[3331659] = 851
tItemFace[3331781] = 1667
tItemFace[3331780] = 2912
tItemFace[3331658] = 944
tItemFace[3331657] = 2609
tItemFace[3331656] = 423
tItemFace[3331655] = 530
tItemFace[3331654] = 2869
tItemFace[3331653] = 2993


tItem[3331690] = tItem[3330865]
tItem[3331670] = tItem[3331670] or {}
tItem[3331670]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if Get_CountItemType(nItemId,0) < 3 then
		Sys_MsgBox(tNewTaoyuanItem_Text[3331670]["Shortage"])
		return
	end
	RewardTemplate_RandomReward(tNewTaoyuanItem_Reward,nItemId)
end

tItem[3331788] = tItem[3331788] or {}
tItem[3331788]["Function"] = function(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	if User_CanPutMoney2Bag(tNewTaoyuanItem_Reward[nItemId]["RewardMoney"]["Value"]) then
		RewardTemplate_UseItemAndMsg(tNewTaoyuanItem_Reward[nItemId])
	else
		Sys_MsgBox(tRewardTemplate_Text["Money"])
	end
end

tItem[3331789] = tItem[3331788]
tItem[3331790] = tItem[3331788]
