------------------------------------------------------------------------------------
--Name：            190904[英文征服][活动脚本]10月冲刺大对决（10.17-11.6）
--Creator:      周洋
--Created:     2019/09/04
------------------------------------------------------------------------------------
-- 命名前缀
-- SprintDuel_Badge_

-- 掩码说明
-- stc掩码
-- 196 82 背包信
-- 196 83 上交追加徽章数量
-- 196 84 上交精炼徽章数量
-- 196 85 上交练气徽章数量
-- 196 86 上交爵位徽章数量

--logid： 12001608
------------------------------------------------------------------------------------数据部分-------------------------------------------
local tSprintDuel_Badge_Data = {}
	tSprintDuel_Badge_Data["BadgeItem"] = {3313685,3313686,3313687,3313688}
	-- 线下排行页面
	tSprintDuel_Badge_Data["SprintRankingURL"] = "https://coevent.99.com/sales1910/client/"

-- 掩码
local tSprintDuel_Badge_Stc = {}
	tSprintDuel_Badge_Stc[3313685] = {}
	tSprintDuel_Badge_Stc[3313685]["EventType"] = 196
	tSprintDuel_Badge_Stc[3313685]["DataType"] = 83
	tSprintDuel_Badge_Stc[3313686] = {}
	tSprintDuel_Badge_Stc[3313686]["EventType"] = 196
	tSprintDuel_Badge_Stc[3313686]["DataType"] = 84
	tSprintDuel_Badge_Stc[3313687] = {}
	tSprintDuel_Badge_Stc[3313687]["EventType"] = 196
	tSprintDuel_Badge_Stc[3313687]["DataType"] = 85
	tSprintDuel_Badge_Stc[3313688] = {}
	tSprintDuel_Badge_Stc[3313688]["EventType"] = 196
	tSprintDuel_Badge_Stc[3313688]["DataType"] = 86

-- 寻路
local tSprintDuel_Badge_PathFind = {}
	tSprintDuel_Badge_PathFind[24920] = {}
	tSprintDuel_Badge_PathFind[24920][1] = {}
	tSprintDuel_Badge_PathFind[24920][1]["NpcId"] = 24920
	tSprintDuel_Badge_PathFind[24920][1]["MapId"] = 1002
	tSprintDuel_Badge_PathFind[24920][1]["CellX"] = 376
	tSprintDuel_Badge_PathFind[24920][1]["CellY"] = 435
	tSprintDuel_Badge_PathFind[24920][2] = {}
	tSprintDuel_Badge_PathFind[24920][2]["NpcId"] = 24920
	tSprintDuel_Badge_PathFind[24920][2]["MapId"] = 1036
	tSprintDuel_Badge_PathFind[24920][2]["CellX"] = 297
	tSprintDuel_Badge_PathFind[24920][2]["CellY"] = 200

-- log
local tSprintDuel_Badge_Log = {}
	tSprintDuel_Badge_Log["DeleteItem"] = "0,0,%d,1,12001608,2,0,0"
	tSprintDuel_Badge_Log["DeleteAllItem"] = "0,0,%d,%d,12001608,2,0,0"

local tSprintDuel_Badge_EmoneyLog = {}
	tSprintDuel_Badge_EmoneyLog[3313685] = "350	22572	0	0	%d	"
	tSprintDuel_Badge_EmoneyLog[3313686] = "350	22573	0	0	%d	"
	tSprintDuel_Badge_EmoneyLog[3313687] = "350	22574	0	0	%d	"
	tSprintDuel_Badge_EmoneyLog[3313688] = "350	22575	0	0	%d	"

-- 奖励
local tSprintDuel_Badge_Reward = {}
	-- ===追加冲刺包
	-- ===索引: tSprintDuel_Badge_Reward[3313681]
	-- ===删除: 3313681,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 350,22572
	tSprintDuel_Badge_Reward[3313681] = {}
	tSprintDuel_Badge_Reward[3313681]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSprintDuel_Badge_Reward[3313681]["DeleteItem"] = {}
	tSprintDuel_Badge_Reward[3313681]["DeleteItem"][1] = {}
	tSprintDuel_Badge_Reward[3313681]["DeleteItem"][1]["Id"] = 3313681 -- 【库】CompositionSprintPack[属性:9]
	tSprintDuel_Badge_Reward[3313681]["LogId"] = 12001608
	tSprintDuel_Badge_Reward[3313681]["LogStep"] = " 2[1]"
	tSprintDuel_Badge_Reward[3313681]["EmoneyLog"] = "350	22572	0	0	1	"
	-- 追加徽章-- 【必给】
	tSprintDuel_Badge_Reward[3313681][1] = {}
	tSprintDuel_Badge_Reward[3313681][1]["RandomItemChanceType"] = 1
	tSprintDuel_Badge_Reward[3313681][1]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313681][1]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313681][1]["RewardItem"][1]["Id"] = 3313685 -- CompositionBadge[3313685][属性:9][叠加:10000][金币:0], 【表格】追加徽章
	tSprintDuel_Badge_Reward[3313681][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的CompositionBadge*1
	tSprintDuel_Badge_Reward[3313681][1]["Log"] = "0,0,3313681,1,12001608,2,3313685,1"
	-- +7赤练石赠 - 25.00%
	tSprintDuel_Badge_Reward[3313681][2] = {}
	tSprintDuel_Badge_Reward[3313681][2]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313681][2]["ItemChance"] = 2500
	tSprintDuel_Badge_Reward[3313681][2]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313681][2]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313681][2]["RewardItem"][1]["Id"] = 730007 -- +7Stone[730007][属性:0][叠加:0][金币:0], 【表格】+7赤练石赠
	tSprintDuel_Badge_Reward[3313681][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +7Stone（赠）*1
	tSprintDuel_Badge_Reward[3313681][2]["Log"] = "0,0,3313681,1,12001608,2,730007,1"
	-- +7赤练石赠 - 44.90%
	tSprintDuel_Badge_Reward[3313681][3] = {}
	tSprintDuel_Badge_Reward[3313681][3]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313681][3]["ItemChance"] = 4490
	tSprintDuel_Badge_Reward[3313681][3]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313681][3]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313681][3]["RewardItem"][1]["Id"] = 730007 -- +7Stone[730007][属性:0][叠加:0][金币:0], 【表格】+7赤练石赠
	tSprintDuel_Badge_Reward[3313681][3]["RewardItem"][1]["Attr"] = "0 2 3" -- +7Stone（赠）*2
	tSprintDuel_Badge_Reward[3313681][3]["Log"] = "0,0,3313681,1,12001608,2,730007,2"
	-- +8赤练石赠 - 30.00%
	tSprintDuel_Badge_Reward[3313681][4] = {}
	tSprintDuel_Badge_Reward[3313681][4]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313681][4]["ItemChance"] = 3000
	tSprintDuel_Badge_Reward[3313681][4]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313681][4]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313681][4]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤练石赠
	tSprintDuel_Badge_Reward[3313681][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tSprintDuel_Badge_Reward[3313681][4]["Log"] = "0,0,3313681,1,12001608,2,730008,1"
	-- +8赤练石赠*3 - 0.10%
	tSprintDuel_Badge_Reward[3313681][5] = {}
	tSprintDuel_Badge_Reward[3313681][5]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313681][5]["ItemChance"] = 10
	tSprintDuel_Badge_Reward[3313681][5]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313681][5]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313681][5]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】+8赤练石赠*3
	tSprintDuel_Badge_Reward[3313681][5]["RewardItem"][1]["Attr"] = "0 3 3" -- +8Stone（赠）*3
	tSprintDuel_Badge_Reward[3313681][5]["Log"] = "0,0,3313681,1,12001608,2,730008,3"


	tSprintDuel_Badge_Reward[3313682] = {}
	-- ===精炼冲刺包
	-- ===索引: tSprintDuel_Badge_Reward[3313682]
	-- ===删除: 3313682,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 350,22573
	tSprintDuel_Badge_Reward[3313682]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSprintDuel_Badge_Reward[3313682]["DeleteItem"] = {}
	tSprintDuel_Badge_Reward[3313682]["DeleteItem"][1] = {}
	tSprintDuel_Badge_Reward[3313682]["DeleteItem"][1]["Id"] = 3313682 -- 【库】PerfectionSprintPack[属性:9]
	tSprintDuel_Badge_Reward[3313682]["LogId"] = 12001608
	tSprintDuel_Badge_Reward[3313682]["LogStep"] = " 2[1]"
	tSprintDuel_Badge_Reward[3313682]["EmoneyLog"] = "350	22573	0	0	1	"
	-- 精炼徽章-- 【必给】
	tSprintDuel_Badge_Reward[3313682][1] = {}
	tSprintDuel_Badge_Reward[3313682][1]["RandomItemChanceType"] = 1
	tSprintDuel_Badge_Reward[3313682][1]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313682][1]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313682][1]["RewardItem"][1]["Id"] = 3313686 -- PerfectionBadge[3313686][属性:9][叠加:10000][金币:0], 【表格】精炼徽章
	tSprintDuel_Badge_Reward[3313682][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的PerfectionBadge*1
	tSprintDuel_Badge_Reward[3313682][1]["Log"] = "0,0,3313682,1,12001608,2,3313686,1"
	-- 璀璨星陨石*1 - 25.00%
	tSprintDuel_Badge_Reward[3313682][2] = {}
	tSprintDuel_Badge_Reward[3313682][2]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313682][2]["ItemChance"] = 2500
	tSprintDuel_Badge_Reward[3313682][2]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313682][2]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313682][2]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*1
	tSprintDuel_Badge_Reward[3313682][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的SplendidStarStone*1
	tSprintDuel_Badge_Reward[3313682][2]["Log"] = "0,0,3313682,1,12001608,2,3009003,1"
	-- 璀璨星陨石*3 - 44.90%
	tSprintDuel_Badge_Reward[3313682][3] = {}
	tSprintDuel_Badge_Reward[3313682][3]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313682][3]["ItemChance"] = 4490
	tSprintDuel_Badge_Reward[3313682][3]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313682][3]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313682][3]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*3
	tSprintDuel_Badge_Reward[3313682][3]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的SplendidStarStone*3
	tSprintDuel_Badge_Reward[3313682][3]["Log"] = "0,0,3313682,1,12001608,2,3009003,3"
	-- 璀璨星陨石*4 - 30.00%
	tSprintDuel_Badge_Reward[3313682][4] = {}
	tSprintDuel_Badge_Reward[3313682][4]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313682][4]["ItemChance"] = 3000
	tSprintDuel_Badge_Reward[3313682][4]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313682][4]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313682][4]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*4
	tSprintDuel_Badge_Reward[3313682][4]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的SplendidStarStone*4
	tSprintDuel_Badge_Reward[3313682][4]["Log"] = "0,0,3313682,1,12001608,2,3009003,4"
	-- 璀璨星陨石*10 - 0.10%
	tSprintDuel_Badge_Reward[3313682][5] = {}
	tSprintDuel_Badge_Reward[3313682][5]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313682][5]["ItemChance"] = 10
	tSprintDuel_Badge_Reward[3313682][5]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313682][5]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313682][5]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*10
	tSprintDuel_Badge_Reward[3313682][5]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的SplendidStarStone*10
	tSprintDuel_Badge_Reward[3313682][5]["Log"] = "0,0,3313682,1,12001608,2,3009003,10"


	tSprintDuel_Badge_Reward[3313683] = {}
	-- ===练气冲刺包
	-- ===索引: tSprintDuel_Badge_Reward[3313683]
	-- ===删除: 3313683,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 350,22574
	tSprintDuel_Badge_Reward[3313683]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSprintDuel_Badge_Reward[3313683]["DeleteItem"] = {}
	tSprintDuel_Badge_Reward[3313683]["DeleteItem"][1] = {}
	tSprintDuel_Badge_Reward[3313683]["DeleteItem"][1]["Id"] = 3313683 -- 【库】ChiSprintPack[属性:9]
	tSprintDuel_Badge_Reward[3313683]["LogId"] = 12001608
	tSprintDuel_Badge_Reward[3313683]["LogStep"] = " 2[1]"
	tSprintDuel_Badge_Reward[3313683]["EmoneyLog"] = "350	22574	0	0	1	"
	-- 练气徽章-- 【必给】
	tSprintDuel_Badge_Reward[3313683][1] = {}
	tSprintDuel_Badge_Reward[3313683][1]["RandomItemChanceType"] = 1
	tSprintDuel_Badge_Reward[3313683][1]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313683][1]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313683][1]["RewardItem"][1]["Id"] = 3313687 -- ChiBadge[3313687][属性:9][叠加:10000][金币:0], 【表格】练气徽章
	tSprintDuel_Badge_Reward[3313683][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的ChiBadge*1
	tSprintDuel_Badge_Reward[3313683][1]["Log"] = "0,0,3313683,1,12001608,2,3313687,1"
	-- 25000点气力值 - 25.00%
	tSprintDuel_Badge_Reward[3313683][2] = {}
	tSprintDuel_Badge_Reward[3313683][2]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313683][2]["ItemChance"] = 2500
	tSprintDuel_Badge_Reward[3313683][2]["RewardStrengthValue"] = {}
	tSprintDuel_Badge_Reward[3313683][2]["RewardStrengthValue"]["Value"] = 25000 -- 气力值, 【需求】25000点气力值
	tSprintDuel_Badge_Reward[3313683][2]["Log"] = "0,0,3313683,1,12001608,2,12,25000"
	-- 50000点气力值 - 44.90%
	tSprintDuel_Badge_Reward[3313683][3] = {}
	tSprintDuel_Badge_Reward[3313683][3]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313683][3]["ItemChance"] = 4490
	tSprintDuel_Badge_Reward[3313683][3]["RewardStrengthValue"] = {}
	tSprintDuel_Badge_Reward[3313683][3]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】50000点气力值
	tSprintDuel_Badge_Reward[3313683][3]["Log"] = "0,0,3313683,1,12001608,2,12,50000"
	-- 70000点气力值 - 30.00%
	tSprintDuel_Badge_Reward[3313683][4] = {}
	tSprintDuel_Badge_Reward[3313683][4]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313683][4]["ItemChance"] = 3000
	tSprintDuel_Badge_Reward[3313683][4]["RewardStrengthValue"] = {}
	tSprintDuel_Badge_Reward[3313683][4]["RewardStrengthValue"]["Value"] = 70000 -- 气力值, 【需求】70000点气力值
	tSprintDuel_Badge_Reward[3313683][4]["Log"] = "0,0,3313683,1,12001608,2,12,70000"
	-- 150000点气力值 - 0.10%
	tSprintDuel_Badge_Reward[3313683][5] = {}
	tSprintDuel_Badge_Reward[3313683][5]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313683][5]["ItemChance"] = 10
	tSprintDuel_Badge_Reward[3313683][5]["RewardStrengthValue"] = {}
	tSprintDuel_Badge_Reward[3313683][5]["RewardStrengthValue"]["Value"] = 150000 -- 气力值, 【需求】150000点气力值
	tSprintDuel_Badge_Reward[3313683][5]["Log"] = "0,0,3313683,1,12001608,2,12,150000"


	tSprintDuel_Badge_Reward[3313684] = {}
	-- ===爵位冲刺包
	-- ===索引: tSprintDuel_Badge_Reward[3313684]
	-- ===删除: 3313684,1
	-- ===LogStep: 2[1]
	-- ===EMoneyLog: 350,22575
	tSprintDuel_Badge_Reward[3313684]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSprintDuel_Badge_Reward[3313684]["DeleteItem"] = {}
	tSprintDuel_Badge_Reward[3313684]["DeleteItem"][1] = {}
	tSprintDuel_Badge_Reward[3313684]["DeleteItem"][1]["Id"] = 3313684 -- 【库】NobilitySprintPack[属性:9]
	tSprintDuel_Badge_Reward[3313684]["LogId"] = 12001608
	tSprintDuel_Badge_Reward[3313684]["LogStep"] = " 2[1]"
	tSprintDuel_Badge_Reward[3313684]["EmoneyLog"] = "350	22575	0	0	1	"
	-- 爵位徽章-- 【必给】
	tSprintDuel_Badge_Reward[3313684][1] = {}
	tSprintDuel_Badge_Reward[3313684][1]["RandomItemChanceType"] = 1
	tSprintDuel_Badge_Reward[3313684][1]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313684][1]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313684][1]["RewardItem"][1]["Id"] = 3313688 -- NobilityBadge[3313688][属性:9][叠加:10000][金币:0], 【表格】爵位徽章
	tSprintDuel_Badge_Reward[3313684][1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1" -- 1天时效(激活)的NobilityBadge*1
	tSprintDuel_Badge_Reward[3313684][1]["Log"] = "0,0,3313684,1,12001608,2,3313688,1"
	-- 3亿爵位勋章（7天时效） - 25.00%
	tSprintDuel_Badge_Reward[3313684][2] = {}
	tSprintDuel_Badge_Reward[3313684][2]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313684][2]["ItemChance"] = 2500
	tSprintDuel_Badge_Reward[3313684][2]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313684][2]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313684][2]["RewardItem"][1]["Id"] = 3322813 -- 100KKContributionMedal[3322813][属性:8][叠加:1][金币:0], 【表格】3亿爵位勋章（7天时效）
	tSprintDuel_Badge_Reward[3313684][2]["RewardItem"][1]["Attr"] = "0 3 3 10080 1" -- 7天时效(激活)的100KKContributionMedal（赠）*3
	tSprintDuel_Badge_Reward[3313684][2]["Log"] = "0,0,3313684,1,12001608,2,3322813,3"
	-- 5亿爵位勋章（7天时效） - 44.90%
	tSprintDuel_Badge_Reward[3313684][3] = {}
	tSprintDuel_Badge_Reward[3313684][3]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313684][3]["ItemChance"] = 4490
	tSprintDuel_Badge_Reward[3313684][3]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313684][3]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313684][3]["RewardItem"][1]["Id"] = 3322813 -- 100KKContributionMedal[3322813][属性:8][叠加:1][金币:0], 【表格】5亿爵位勋章（7天时效）
	tSprintDuel_Badge_Reward[3313684][3]["RewardItem"][1]["Attr"] = "0 5 3 10080 1" -- 7天时效(激活)的100KKContributionMedal（赠）*5
	tSprintDuel_Badge_Reward[3313684][3]["Log"] = "0,0,3313684,1,12001608,2,3322813,5"
	-- 10亿爵位勋章（7天时效） - 30.00%
	tSprintDuel_Badge_Reward[3313684][4] = {}
	tSprintDuel_Badge_Reward[3313684][4]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313684][4]["ItemChance"] = 3000
	tSprintDuel_Badge_Reward[3313684][4]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313684][4]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313684][4]["RewardItem"][1]["Id"] = 3322944 -- 1KKKContributionSeal[3322944][属性:8][叠加:1][金币:0], 【表格】10亿爵位勋章（7天时效）
	tSprintDuel_Badge_Reward[3313684][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的1KKKContributionSeal（赠）*1
	tSprintDuel_Badge_Reward[3313684][4]["Log"] = "0,0,3313684,1,12001608,2,3322944,1"
	-- 10亿爵位勋章（7天时效） - 0.10%
	tSprintDuel_Badge_Reward[3313684][5] = {}
	tSprintDuel_Badge_Reward[3313684][5]["RandomItemChanceType"] = 2
	tSprintDuel_Badge_Reward[3313684][5]["ItemChance"] = 10
	tSprintDuel_Badge_Reward[3313684][5]["RewardItem"] = {}
	tSprintDuel_Badge_Reward[3313684][5]["RewardItem"][1] = {}
	tSprintDuel_Badge_Reward[3313684][5]["RewardItem"][1]["Id"] = 3322944 -- 1KKKContributionSeal[3322944][属性:8][叠加:1][金币:0], 【表格】10亿爵位勋章（7天时效）
	tSprintDuel_Badge_Reward[3313684][5]["RewardItem"][1]["Attr"] = "0 2 3 10080 1" -- 7天时效(激活)的1KKKContributionSeal（赠）*2
	tSprintDuel_Badge_Reward[3313684][5]["Log"] = "0,0,3313684,1,12001608,2,3322944,2"

------------------------------------------------------------------------------------逻辑部分-------------------------------------------
-- 时间判断
function fSprintDuel_Badge_Preconditions()
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["SprintDuel"]["ActivityTime"]) then
		return false
	end
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tActivityTime["SprintDuel"]["ActivityTime"]) then
		return false
	end
	return true
end

-- 打开天石商店
function fSprintDuel_Badge_BuySprintPacks()
	if fSprintDuel_Badge_Preconditions() then
		User_OpenDialog()
	end
end

-- 上交勋章
function fSprintDuel_Badge_Submit(nNpcId, nItemId)
	if fSprintDuel_Badge_Preconditions() then
		-- 上交所有冲刺徽章
		if nItemId == 1 then
			local nSubmitCount = 0
			for i,v in pairs(tSprintDuel_Badge_Data["BadgeItem"])do
				local nCount = Get_CountItemType(v,0)
				-- 检查物品&删物品
				if Item_ChkItem(v) and Item_DelAllItemByType(v) then
					local nEvent = tSprintDuel_Badge_Stc[v]["EventType"]
					local nType = tSprintDuel_Badge_Stc[v]["DataType"]
					nSubmitCount = nSubmitCount + nCount
					-- 置掩码
					Task_AddStatistic(nEvent,nType,nCount,1,nUserId)
					Task_SetStcTimestamp(nEvent,nType,0,nUserId)
					Sys_SaveActionFestivalLog(string.format(tSprintDuel_Badge_Log["DeleteAllItem"],nItemId,nCount))
					Sys_SaveEmoneyBuy(string.format(tSprintDuel_Badge_EmoneyLog[v],nCount))
				end
			end
			if nSubmitCount == 0 then
				LinkNpcGossipFunc_New(nNpcId,"4-1")
			else
				LinkNpcGossipFunc_New(nNpcId,"5-2")
			end
			return
		end
		
		-- 上交某一类冲刺徽章
		local nCount = Get_CountItemType(nItemId,0)
		local sItemName = Get_ItemtypeName(nItemId)
		-- 检查物品
		if not Item_ChkItem(nItemId) then
			tNpcGossip[24920]["Text421"] = string.format(tSprintDuel_Badge_Text[24920]["Text421"],sItemName)
			LinkNpcGossipFunc_New(nNpcId,"4-2")
			return
		end
		-- 删物品
		if Item_DelAllItemByType(nItemId) then
			local nEvent = tSprintDuel_Badge_Stc[nItemId]["EventType"]
			local nType = tSprintDuel_Badge_Stc[nItemId]["DataType"]
			-- 置掩码
			Task_AddStatistic(nEvent,nType,nCount,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			tNpcGossip[24920]["Text511"] = string.format(tSprintDuel_Badge_Text["SubmitSucc"],nCount,sItemName)
			LinkNpcGossipFunc_New(nNpcId,"5-1")
			Sys_SaveActionFestivalLog(string.format(tSprintDuel_Badge_Log["DeleteAllItem"],nItemId,nCount))
			Sys_SaveEmoneyBuy(string.format(tSprintDuel_Badge_EmoneyLog[nItemId],nCount))
		end
	end
end

-- 打开线下页面
function fSprintDuel_Badge_OpenWeb()
	if not CommonFunc_GetBeforeActivityTime(tActivityTime["SprintDuel"]["OnlineTime"]) then
		local nUserId = Get_UserId()
		User_SendWebDialog(tSprintDuel_Badge_Data["SprintRankingURL"],nUserId)
	end
end

-- 导航至NPC
function tSprintDuel_Badge_GoToNpc(nItemId)
	local nCount = Get_CountItemType(nItemId,0)
	-- 物品过期删除
	if not Sys_ChkFullTime(tActivityTime["SprintDuel"]["ActivityTime"]) then 
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tSprintDuel_Badge_Log["DeleteAllItem"],nItemId,nCount))
			User_TalkChannel2005(tSprintDuel_Badge_Text["BadgeExpired"])
			Sys_MsgBox(tSprintDuel_Badge_Text["BadgeExpired"])
		end
		return
	end
	local nUserId = Get_UserId()
	local nMapId = tSprintDuel_Badge_PathFind[24920][1]["MapId"]
	local nPosX = tSprintDuel_Badge_PathFind[24920][1]["CellX"]
	local nPosY = tSprintDuel_Badge_PathFind[24920][1]["CellY"]
	local nGotoNpcId = tSprintDuel_Badge_PathFind[24920][1]["NpcId"]
	-- 判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tSprintDuel_Badge_PathFind[24920][2]["MapId"]
		nPosX = tSprintDuel_Badge_PathFind[24920][2]["CellX"]
		nPosY = tSprintDuel_Badge_PathFind[24920][2]["CellY"]
		nGotoNpcId = tSprintDuel_Badge_PathFind[24920][2]["NpcId"]
	end
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId, nGotoNpcId, nUserId)
end

-- 打开冲刺包
function fSprintDuel_Badge_OpenPkg(nItemId)
	-- 检查物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 背包空间判断
	if not RewardTemplate_ChkRandomSpace(tSprintDuel_Badge_Reward, nItemId) then
		local nSpaceCount = RewardTemplate_GetRandomSpace(tSprintDuel_Badge_Reward,nItemId)
		User_TalkChannel2005(string.format(tSprintDuel_Badge_Text["NoSpace"],nSpaceCount))
		return
	end
	-- 给奖励
	local tReward,sRewardStr = RewardTemplate_RandomReward(tSprintDuel_Badge_Reward,nItemId)
	Sys_SaveActionFestivalLog(string.format(tSprintDuel_Badge_Log["DeleteItem"],nItemId))
end

------------------------------------------------------------------------------------NPC部分-------------------------------------------
tNpcFace[5311] = 2481
tNpcGossip[24920] = tNpcGossip[24920] or DefaultNpc:new{}
tNpcGossip[24920]["OptionHidden"] = 1
-- 活动前
tNpcGossip[24920]["Text1-1"] = {111,112,113}
tNpcGossip[24920]["Text111"] = tSprintDuel_Badge_Text[24920]["Text111"]
tNpcGossip[24920]["Text112"] = tSprintDuel_Badge_Text[24920]["Text112"]
tNpcGossip[24920]["Text113"] = tSprintDuel_Badge_Text[24920]["Text113"]
tNpcGossip[24920]["tOption1-1"] = {111}
tNpcGossip[24920]["Option111"] = tSprintDuel_Badge_Text[24920]["Option111"]
tNpcGossip[24920]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["SprintDuel"]["OnlineTime"])
end
-- 活动后
tNpcGossip[24920]["Text1-2"] = {121}
tNpcGossip[24920]["Text121"] = tSprintDuel_Badge_Text[24920]["Text121"]
tNpcGossip[24920]["tOption1-2"] = {121}
tNpcGossip[24920]["Option121"] = tSprintDuel_Badge_Text[24920]["Option121"]
tNpcGossip[24920]["OptionFunc121"] = "fSprintDuel_Badge_OpenWeb"
tNpcGossip[24920]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["SprintDuel"]["OnlineTime"])
end
-- 活动中
tNpcGossip[24920]["Text1-3"] = {131,132,133}
tNpcGossip[24920]["Text131"] = tSprintDuel_Badge_Text[24920]["Text131"]
tNpcGossip[24920]["Text132"] = tSprintDuel_Badge_Text[24920]["Text132"]
tNpcGossip[24920]["Text133"] = tSprintDuel_Badge_Text[24920]["Text133"]
tNpcGossip[24920]["tOption1-3"] = {131,132,133}
tNpcGossip[24920]["Option131"] = tSprintDuel_Badge_Text[24920]["Option131"]
tNpcGossip[24920]["OptionFunc131"] = "fSprintDuel_Badge_BuySprintPacks"

tNpcGossip[24920]["Option132"] = tSprintDuel_Badge_Text[24920]["Option132"]
tNpcGossip[24920]["OptionPoint132"] = "2-1"

tNpcGossip[24920]["Option133"] = tSprintDuel_Badge_Text[24920]["Option133"]
tNpcGossip[24920]["OptionFunc133"] = "fSprintDuel_Badge_OpenWeb"
tNpcGossip[24920]["ChkFunc1-3"] = function()
	tNpcGossip[24920]["tOption1-3"] = {131,132,133}
	if Sys_ChkFullTime(tActivityTime["SprintDuel"]["AfterTime"]) then
		tNpcGossip[24920]["tOption1-3"] = {133}
	end
	return Sys_ChkFullTime(tActivityTime["SprintDuel"]["OnlineTime"])
end

-- 提交冲刺徽章
tNpcGossip[24920]["Text2-1"] = {211}
tNpcGossip[24920]["Text211"] = tSprintDuel_Badge_Text[24920]["Text211"]
tNpcGossip[24920]["tOption2-1"] = {211,212,213,214,215}
tNpcGossip[24920]["Option211"] = tSprintDuel_Badge_Text[24920]["Option211"]
tNpcGossip[24920]["OptionPoint211"] = "3-1"

tNpcGossip[24920]["Option212"] = tSprintDuel_Badge_Text[24920]["Option212"]
tNpcGossip[24920]["OptionPoint212"] = "3-2"

tNpcGossip[24920]["Option213"] = tSprintDuel_Badge_Text[24920]["Option213"]
tNpcGossip[24920]["OptionPoint213"] = "3-3"

tNpcGossip[24920]["Option214"] = tSprintDuel_Badge_Text[24920]["Option214"]
tNpcGossip[24920]["OptionPoint214"] = "3-4"

tNpcGossip[24920]["Option215"] = tSprintDuel_Badge_Text[24920]["Option215"]
tNpcGossip[24920]["OptionPoint215"] = "3-5"

-- 二次确认 提交追加徽章
tNpcGossip[24920]["Text3-1"] = {311}
tNpcGossip[24920]["Text311"] = tSprintDuel_Badge_Text[24920]["Text311"]
tNpcGossip[24920]["tOption3-1"] = {311,312}
tNpcGossip[24920]["Option311"] = tSprintDuel_Badge_Text[24920]["Option311"]
tNpcGossip[24920]["OptionFunc311"] = "fSprintDuel_Badge_Submit</N>24920</N>3313685"
tNpcGossip[24920]["Option312"] = tSprintDuel_Badge_Text["ThinkAgain"]
-- 二次确认 提交精炼徽章
tNpcGossip[24920]["Text3-2"] = {321}
tNpcGossip[24920]["Text321"] = tSprintDuel_Badge_Text[24920]["Text321"]
tNpcGossip[24920]["tOption3-2"] = {321,322}
tNpcGossip[24920]["Option321"] = tSprintDuel_Badge_Text[24920]["Option321"]
tNpcGossip[24920]["OptionFunc321"] = "fSprintDuel_Badge_Submit</N>24920</N>3313686"
tNpcGossip[24920]["Option322"] = tSprintDuel_Badge_Text["ThinkAgain"]
-- 二次确认 提交炼气徽章
tNpcGossip[24920]["Text3-3"] = {331}
tNpcGossip[24920]["Text331"] = tSprintDuel_Badge_Text[24920]["Text331"]
tNpcGossip[24920]["tOption3-3"] = {331,332}
tNpcGossip[24920]["Option331"] = tSprintDuel_Badge_Text[24920]["Option331"]
tNpcGossip[24920]["OptionFunc331"] = "fSprintDuel_Badge_Submit</N>24920</N>3313687"
tNpcGossip[24920]["Option332"] = tSprintDuel_Badge_Text["ThinkAgain"]
-- 二次确认 提交爵位徽章
tNpcGossip[24920]["Text3-4"] = {341}
tNpcGossip[24920]["Text341"] = tSprintDuel_Badge_Text[24920]["Text341"]
tNpcGossip[24920]["tOption3-4"] = {341,342}
tNpcGossip[24920]["Option341"] = tSprintDuel_Badge_Text[24920]["Option341"]
tNpcGossip[24920]["OptionFunc341"] = "fSprintDuel_Badge_Submit</N>24920</N>3313688"
tNpcGossip[24920]["Option342"] = tSprintDuel_Badge_Text["ThinkAgain"]
-- 二次确认 提交全部冲刺徽章
tNpcGossip[24920]["Text3-5"] = {351}
tNpcGossip[24920]["Text351"] = tSprintDuel_Badge_Text[24920]["Text351"]
tNpcGossip[24920]["tOption3-5"] = {351,352}
tNpcGossip[24920]["Option351"] = tSprintDuel_Badge_Text[24920]["Option351"]
tNpcGossip[24920]["OptionFunc351"] = "fSprintDuel_Badge_Submit</N>24920</N>1"
tNpcGossip[24920]["Option352"] = tSprintDuel_Badge_Text["NotGiving"]

-- 没有相应徽章
tNpcGossip[24920]["Text4-1"] = {411}
tNpcGossip[24920]["Text411"] = tSprintDuel_Badge_Text[24920]["Text411"]
tNpcGossip[24920]["tOption4-1"] = {411}
tNpcGossip[24920]["Option411"] = tSprintDuel_Badge_Text["SeeThrough"]

tNpcGossip[24920]["Text4-2"] = {421}
tNpcGossip[24920]["Text421"] = tSprintDuel_Badge_Text[24920]["Text421"]
tNpcGossip[24920]["tOption4-2"] = {421}
tNpcGossip[24920]["Option421"] = tSprintDuel_Badge_Text["SeeThrough"]

-- 成功提交徽章
tNpcGossip[24920]["Text5-1"] = {511}
tNpcGossip[24920]["Text511"] = tSprintDuel_Badge_Text["SubmitSucc"]
tNpcGossip[24920]["tOption5-1"] = {511}
tNpcGossip[24920]["Option511"] = tSprintDuel_Badge_Text["IKnow"]

tNpcGossip[24920]["Text5-2"] = {521}
tNpcGossip[24920]["Text521"] = tSprintDuel_Badge_Text["SubmitSuccAll"]
tNpcGossip[24920]["tOption5-2"] = {521}
tNpcGossip[24920]["Option521"] = tSprintDuel_Badge_Text["IKnow"]

------------------------------------------------------------------------------------物品部分-------------------------------------------
-- 物品无对白模板
-- 追加冲刺包
tItem[3313681] = tItem[3313681] or {}
tItem[3313681]["Function"] = function(nItemId,sItemName)
	fSprintDuel_Badge_OpenPkg(nItemId)
end
-- 精炼冲刺包
tItem[3313682] = tItem[3313682] or {}
tItem[3313682]["Function"] = function(nItemId,sItemName)
	fSprintDuel_Badge_OpenPkg(nItemId)
end
-- 炼气冲刺包
tItem[3313683] = tItem[3313683] or {}
tItem[3313683]["Function"] = function(nItemId,sItemName)
	fSprintDuel_Badge_OpenPkg(nItemId)
end
-- 爵位冲刺包
tItem[3313684] = tItem[3313684] or {}
tItem[3313684]["Function"] = function(nItemId,sItemName)
	fSprintDuel_Badge_OpenPkg(nItemId)
end
-- 追加徽章
tItem[3313685] = tItem[3313685] or {}
tItem[3313685]["Function"] = function(nItemId,sItemName)
	tSprintDuel_Badge_GoToNpc(nItemId)
end
-- 精炼徽章
tItem[3313686] = tItem[3313686] or {}
tItem[3313686]["Function"] = function(nItemId,sItemName)
	tSprintDuel_Badge_GoToNpc(nItemId)
end
-- 炼气徽章
tItem[3313687] = tItem[3313687] or {}
tItem[3313687]["Function"] = function(nItemId,sItemName)
	tSprintDuel_Badge_GoToNpc(nItemId)
end
-- 爵位徽章
tItem[3313688] = tItem[3313688] or {}
tItem[3313688]["Function"] = function(nItemId,sItemName)
	tSprintDuel_Badge_GoToNpc(nItemId)
end
