------------------------------------------------------------------------------------
--Name：	191205[简体征服][活动脚本]PK赛奖励优化
--Creator:	林旭
--Created:	2019-12-05
------------------------------------------------------------------------------------
-- 任务需求：
-- 前缀:NewPKReward
-- logid:
-- 12001775	竞技场
-- 12001776	精英PK赛
-- 12001777	组队PK赛
-- 12001778	组队大众PK赛
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
-- 竞技场参与礼包掩码
local tNewPKReward_ArenaStc = {}
	tNewPKReward_ArenaStc["EventType"] = 137
	tNewPKReward_ArenaStc["DataType"] = 59
-- 组队PK赛和组队大众PK赛礼包使用掩码
local tNewPKReward_TeamPackUseStc = {}
	tNewPKReward_TeamPackUseStc["Team"] = {}
	tNewPKReward_TeamPackUseStc["Team"]["EventType"] = 213
	tNewPKReward_TeamPackUseStc["Team"]["DataType"] = 14
	tNewPKReward_TeamPackUseStc["SkillTeam"] = {}
	tNewPKReward_TeamPackUseStc["SkillTeam"]["EventType"] = 213
	tNewPKReward_TeamPackUseStc["SkillTeam"]["DataType"] = 15
-- 竞技场
-- NewPKReward_Arena
local tNewPKReward_Reward = {}
	-- ===60分钟经验包
	-- ===索引:tNewPKReward_Reward[3315253][1]
	-- ===删除:3315253,1
	tNewPKReward_Reward[3315253] = {}
	tNewPKReward_Reward[3315253][1] = {}
	tNewPKReward_Reward[3315253][1]["LogId"] = 12001775
	tNewPKReward_Reward[3315253][1]["DeleteItem"] = {}
	tNewPKReward_Reward[3315253][1]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3315253][1]["DeleteItem"][1]["Id"] = 3315253 -- 【库】60分钟经验礼包[属性:9]
	tNewPKReward_Reward[3315253][1]["RewardExpTime"] = {}
	tNewPKReward_Reward[3315253][1]["RewardExpTime"]["Value"] = 60 -- 分钟经验, 【需求】60分钟经验
	tNewPKReward_Reward[3315253][1]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tNewPKReward_Reward[3315253][1]["RewardExpTime"]["FullValue"] = 30 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tNewPKReward_Reward[3315253][1]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001778,2,6,30"
	tNewPKReward_Reward[3315253][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3315253][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3315253][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3315253][2] = {}
	-- ===60分钟经验包满级给黄色神纹碎片
	-- ===索引:tNewPKReward_Reward[3315253][2]
	-- ===删除:3315253,1
	tNewPKReward_Reward[3315253][2]["LogId"] = 12001775
	tNewPKReward_Reward[3315253][2]["DeleteItem"] = {}
	tNewPKReward_Reward[3315253][2]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3315253][2]["DeleteItem"][1]["Id"] = 3315253 -- 【库】60分钟经验礼包[属性:9]
	tNewPKReward_Reward[3315253][2]["RewardItem"] = {}
	tNewPKReward_Reward[3315253][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3315253][2]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tNewPKReward_Reward[3315253][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 黄色神纹碎片（赠）*1
	tNewPKReward_Reward[3315253][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3315253][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3315253][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314674] = {}
	-- ===竞技场参与礼包直接打开
	-- ===索引:tNewPKReward_Reward[3314674][1]
	-- ===删除:3314674,1
	tNewPKReward_Reward[3314674][1] = {}
	tNewPKReward_Reward[3314674][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314674][1]["DeleteItem"] = {}
	tNewPKReward_Reward[3314674][1]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314674][1]["DeleteItem"][1]["Id"] = 3314674 -- 【库】竞技场参与礼包[属性:9]
	tNewPKReward_Reward[3314674][1]["LogId"] = 12001775
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314674][1][1] = {}
	tNewPKReward_Reward[3314674][1][1]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][1]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314674][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNewPKReward_Reward[3314674][1][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Reward[3314674][1][2] = {}
	tNewPKReward_Reward[3314674][1][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][2]["ItemChance"] = 800
	tNewPKReward_Reward[3314674][1][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314674][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Reward[3314674][1][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314674][1][3] = {}
	tNewPKReward_Reward[3314674][1][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][3]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314674][1][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNewPKReward_Reward[3314674][1][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 12%
	tNewPKReward_Reward[3314674][1][4] = {}
	tNewPKReward_Reward[3314674][1][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][4]["ItemChance"] = 1200
	tNewPKReward_Reward[3314674][1][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][4]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314674][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 60分钟经验礼包*1
	tNewPKReward_Reward[3314674][1][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Reward[3314674][1][5] = {}
	tNewPKReward_Reward[3314674][1][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][5]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][5]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314674][1][5]["RewardItem"][1]["Attr"] = "0 1" -- +2马匹（赠）福禄袋*1
	tNewPKReward_Reward[3314674][1][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314674][1][6] = {}
	tNewPKReward_Reward[3314674][1][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][6]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][6]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314674][1][6]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tNewPKReward_Reward[3314674][1][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314674][1][7] = {}
	tNewPKReward_Reward[3314674][1][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][7]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][7]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314674][1][7]["RewardItem"][1]["Attr"] = "0 10 3" -- 蓝色神纹精粹（赠）*10
	tNewPKReward_Reward[3314674][1][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314674][1][8] = {}
	tNewPKReward_Reward[3314674][1][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][8]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][8]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314674][1][8]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tNewPKReward_Reward[3314674][1][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314674][1][9] = {}
	tNewPKReward_Reward[3314674][1][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][9]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][9]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314674][1][9]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tNewPKReward_Reward[3314674][1][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314674][1][10] = {}
	tNewPKReward_Reward[3314674][1][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][1][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][1][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][1][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][1][10]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314674][1][10]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tNewPKReward_Reward[3314674][1][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][1][10]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314674][2] = {}
	-- ===竞技场参与礼包花费10W金币双倍奖励
	-- ===索引:tNewPKReward_Reward[3314674][2]
	-- ===删除:3314674,1
	tNewPKReward_Reward[3314674][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314674][2]["DeleteItem"] = {}
	tNewPKReward_Reward[3314674][2]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314674][2]["DeleteItem"][1]["Id"] = 3314674 -- 【库】竞技场参与礼包[属性:9]
	tNewPKReward_Reward[3314674][2]["CostMoney"] = {}
	tNewPKReward_Reward[3314674][2]["CostMoney"]["Value"] = 100000
	tNewPKReward_Reward[3314674][2]["LogId"] = 12001775
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314674][2][1] = {}
	tNewPKReward_Reward[3314674][2][1]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][1]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314674][2][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Reward[3314674][2][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Reward[3314674][2][2] = {}
	tNewPKReward_Reward[3314674][2][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][2]["ItemChance"] = 800
	tNewPKReward_Reward[3314674][2][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314674][2][2]["RewardItem"][1]["Attr"] = "0 2" -- 龙鳞果*2
	tNewPKReward_Reward[3314674][2][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314674][2][3] = {}
	tNewPKReward_Reward[3314674][2][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][3]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314674][2][3]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314674][2][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 12%
	tNewPKReward_Reward[3314674][2][4] = {}
	tNewPKReward_Reward[3314674][2][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][4]["ItemChance"] = 1200
	tNewPKReward_Reward[3314674][2][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][4]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314674][2][4]["RewardItem"][1]["Attr"] = "0 2" -- 60分钟经验礼包*2
	tNewPKReward_Reward[3314674][2][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Reward[3314674][2][5] = {}
	tNewPKReward_Reward[3314674][2][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][5]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][5]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314674][2][5]["RewardItem"][1]["Attr"] = "0 2" -- +2马匹（赠）福禄袋*2
	tNewPKReward_Reward[3314674][2][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314674][2][6] = {}
	tNewPKReward_Reward[3314674][2][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][6]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][6]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314674][2][6]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹（赠）*20
	tNewPKReward_Reward[3314674][2][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314674][2][7] = {}
	tNewPKReward_Reward[3314674][2][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][7]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][7]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314674][2][7]["RewardItem"][1]["Attr"] = "0 20 3" -- 蓝色神纹精粹（赠）*20
	tNewPKReward_Reward[3314674][2][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314674][2][8] = {}
	tNewPKReward_Reward[3314674][2][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][8]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][8]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314674][2][8]["RewardItem"][1]["Attr"] = "0 4" -- 红色神纹碎片*4
	tNewPKReward_Reward[3314674][2][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314674][2][9] = {}
	tNewPKReward_Reward[3314674][2][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][9]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][9]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314674][2][9]["RewardItem"][1]["Attr"] = "0 4" -- 黄色神纹碎片*4
	tNewPKReward_Reward[3314674][2][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314674][2][10] = {}
	tNewPKReward_Reward[3314674][2][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314674][2][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314674][2][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314674][2][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314674][2][10]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314674][2][10]["RewardItem"][1]["Attr"] = "0 4" -- 蓝色神纹碎片*4
	tNewPKReward_Reward[3314674][2][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314674][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314674][2][10]["RewardEffect"]["Effect"] = "angelwing"

	tNewPKReward_Reward[3314675] = {}
	-- ===竞技场荣誉礼包打开获得明亮星陨石（2天时效）*2
	-- ===索引:tNewPKReward_Reward[3314675][1]
	-- ===删除:3314675,1
	tNewPKReward_Reward[3314675][1] = {}
	tNewPKReward_Reward[3314675][1]["LogId"] = 12001775
	tNewPKReward_Reward[3314675][1]["DeleteItem"] = {}
	tNewPKReward_Reward[3314675][1]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314675][1]["DeleteItem"][1]["Id"] = 3314675 -- 【库】竞技场荣誉礼盒[属性:9]
	tNewPKReward_Reward[3314675][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314675][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314675][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314675][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Reward[3314675][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314675][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314675][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314675][2] = {}
	-- ===竞技场荣誉礼包打开获得赤炼石（2天时效）*2
	-- ===索引:tNewPKReward_Reward[3314675][2]
	-- ===删除:3314675,1
	tNewPKReward_Reward[3314675][2]["LogId"] = 12001775
	tNewPKReward_Reward[3314675][2]["DeleteItem"] = {}
	tNewPKReward_Reward[3314675][2]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314675][2]["DeleteItem"][1]["Id"] = 3314675 -- 【库】竞技场荣誉礼盒[属性:9]
	tNewPKReward_Reward[3314675][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314675][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314675][2]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314675][2]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314675][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314675][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314675][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314675][3] = {}
	-- ===竞技场荣誉礼包打开获得龙鳞果
	-- ===索引:tNewPKReward_Reward[3314675][3]
	-- ===删除:3314675,1
	tNewPKReward_Reward[3314675][3]["LogId"] = 12001775
	tNewPKReward_Reward[3314675][3]["DeleteItem"] = {}
	tNewPKReward_Reward[3314675][3]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314675][3]["DeleteItem"][1]["Id"] = 3314675 -- 【库】竞技场荣誉礼盒[属性:9]
	tNewPKReward_Reward[3314675][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314675][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314675][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314675][3]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Reward[3314675][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314675][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314675][3]["RewardEffect"]["Effect"] = "angelwing"


-- 精英PK赛
-- NewPKReward_Elite
	-- ===良品钧天武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314676]
	-- ===删除:3314676,1
	tNewPKReward_Reward[3314676] = {}
	tNewPKReward_Reward[3314676]["LogId"] = 12001776
	tNewPKReward_Reward[3314676]["DeleteItem"] = {}
	tNewPKReward_Reward[3314676]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314676]["DeleteItem"][1]["Id"] = 3314676 -- 【库】良品钧天武尊礼盒[属性:9]
	tNewPKReward_Reward[3314676]["RewardItem"] = {}
	tNewPKReward_Reward[3314676]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314676]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位荣耀勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位荣耀勋章
	tNewPKReward_Reward[3314676]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的1000万爵位荣耀勋章（赠）*1
	tNewPKReward_Reward[3314676]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314676]["RewardItem"][2]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练石+4
	tNewPKReward_Reward[3314676]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的+4赤炼石*1
	tNewPKReward_Reward[3314676]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314676]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314676]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314676]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314676]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314676]["RewardItem"][4]["Attr"] = "0 3 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*3
	tNewPKReward_Reward[3314676]["RewardEffect"] = {}
	tNewPKReward_Reward[3314676]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314676]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314677] = {}
	-- ===良品御刃武魂礼盒
	-- ===索引:tNewPKReward_Reward[3314677]
	-- ===删除:3314677,1
	tNewPKReward_Reward[3314677]["LogId"] = 12001776
	tNewPKReward_Reward[3314677]["DeleteItem"] = {}
	tNewPKReward_Reward[3314677]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314677]["DeleteItem"][1]["Id"] = 3314677 -- 【库】良品御刃武魂礼盒[属性:9]
	tNewPKReward_Reward[3314677]["RewardItem"] = {}
	tNewPKReward_Reward[3314677]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314677]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位卓越勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位卓越勋章
	tNewPKReward_Reward[3314677]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的600万爵位卓越勋章（赠）*1
	tNewPKReward_Reward[3314677]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314677]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314677]["RewardItem"][2]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*2
	tNewPKReward_Reward[3314677]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314677]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314677]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314677]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314677]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314677]["RewardItem"][4]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314677]["RewardEffect"] = {}
	tNewPKReward_Reward[3314677]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314677]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314678] = {}
	-- ===良品苍岚武贲礼盒
	-- ===索引:tNewPKReward_Reward[3314678]
	-- ===删除:3314678,1
	tNewPKReward_Reward[3314678]["LogId"] = 12001776
	tNewPKReward_Reward[3314678]["DeleteItem"] = {}
	tNewPKReward_Reward[3314678]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314678]["DeleteItem"][1]["Id"] = 3314678 -- 【库】良品苍岚武贲礼盒[属性:9]
	tNewPKReward_Reward[3314678]["RewardItem"] = {}
	tNewPKReward_Reward[3314678]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314678]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位勋章
	tNewPKReward_Reward[3314678]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的300万爵位勋章（赠）*1
	tNewPKReward_Reward[3314678]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314678]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314678]["RewardItem"][2]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314678]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314678]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314678]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314678]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314678]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314678]["RewardItem"][4]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314678]["RewardEffect"] = {}
	tNewPKReward_Reward[3314678]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314678]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314679] = {}
	-- ===良品精装豪侠礼盒
	-- ===索引:tNewPKReward_Reward[3314679]
	-- ===删除:3314679,1
	tNewPKReward_Reward[3314679]["LogId"] = 12001776
	tNewPKReward_Reward[3314679]["DeleteItem"] = {}
	tNewPKReward_Reward[3314679]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314679]["DeleteItem"][1]["Id"] = 3314679 -- 【库】良品精装豪侠礼盒[属性:9]
	tNewPKReward_Reward[3314679]["RewardItem"] = {}
	tNewPKReward_Reward[3314679]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314679]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314679]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314679]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314679]["RewardItem"][2]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314679]["RewardItem"][2]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314679]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314679]["RewardItem"][3]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314679]["RewardItem"][3]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314679]["RewardEffect"] = {}
	tNewPKReward_Reward[3314679]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314679]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314680] = {}
	-- ===上品钧天武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314680]
	-- ===删除:3314680,1
	tNewPKReward_Reward[3314680]["LogId"] = 12001776
	tNewPKReward_Reward[3314680]["DeleteItem"] = {}
	tNewPKReward_Reward[3314680]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314680]["DeleteItem"][1]["Id"] = 3314680 -- 【库】上品钧天武尊礼盒[属性:9]
	tNewPKReward_Reward[3314680]["RewardItem"] = {}
	tNewPKReward_Reward[3314680]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314680]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位荣耀勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位荣耀勋章
	tNewPKReward_Reward[3314680]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的1000万爵位荣耀勋章（赠）*1
	tNewPKReward_Reward[3314680]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314680]["RewardItem"][2]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练石+4
	tNewPKReward_Reward[3314680]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的+4赤炼石*2
	tNewPKReward_Reward[3314680]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314680]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314680]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314680]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314680]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314680]["RewardItem"][4]["Attr"] = "0 3 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*3
	tNewPKReward_Reward[3314680]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314680]["RewardItem"][5]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314680]["RewardItem"][5]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314680]["RewardEffect"] = {}
	tNewPKReward_Reward[3314680]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314680]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314681] = {}
	-- ===上品御刃武魂礼盒
	-- ===索引:tNewPKReward_Reward[3314681]
	-- ===删除:3314681,1
	tNewPKReward_Reward[3314681]["LogId"] = 12001776
	tNewPKReward_Reward[3314681]["DeleteItem"] = {}
	tNewPKReward_Reward[3314681]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314681]["DeleteItem"][1]["Id"] = 3314681 -- 【库】上品御刃武魂礼盒[属性:9]
	tNewPKReward_Reward[3314681]["RewardItem"] = {}
	tNewPKReward_Reward[3314681]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314681]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位卓越勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位卓越勋章
	tNewPKReward_Reward[3314681]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的600万爵位卓越勋章（赠）*1
	tNewPKReward_Reward[3314681]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314681]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314681]["RewardItem"][2]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*2
	tNewPKReward_Reward[3314681]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314681]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314681]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314681]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314681]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314681]["RewardItem"][4]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314681]["RewardEffect"] = {}
	tNewPKReward_Reward[3314681]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314681]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314682] = {}
	-- ===上品苍岚武贲礼盒
	-- ===索引:tNewPKReward_Reward[3314682]
	-- ===删除:3314682,1
	tNewPKReward_Reward[3314682]["LogId"] = 12001776
	tNewPKReward_Reward[3314682]["DeleteItem"] = {}
	tNewPKReward_Reward[3314682]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314682]["DeleteItem"][1]["Id"] = 3314682 -- 【库】上品苍岚武贲礼盒[属性:9]
	tNewPKReward_Reward[3314682]["RewardItem"] = {}
	tNewPKReward_Reward[3314682]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314682]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位勋章
	tNewPKReward_Reward[3314682]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的300万爵位勋章（赠）*1
	tNewPKReward_Reward[3314682]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314682]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314682]["RewardItem"][2]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314682]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314682]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314682]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314682]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314682]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314682]["RewardItem"][4]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314682]["RewardEffect"] = {}
	tNewPKReward_Reward[3314682]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314682]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314683] = {}
	-- ===上品精装豪侠礼盒
	-- ===索引:tNewPKReward_Reward[3314683]
	-- ===删除:3314683,1
	tNewPKReward_Reward[3314683]["LogId"] = 12001776
	tNewPKReward_Reward[3314683]["DeleteItem"] = {}
	tNewPKReward_Reward[3314683]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314683]["DeleteItem"][1]["Id"] = 3314683 -- 【库】上品精装豪侠礼盒[属性:9]
	tNewPKReward_Reward[3314683]["RewardItem"] = {}
	tNewPKReward_Reward[3314683]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314683]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314683]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314683]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314683]["RewardItem"][2]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314683]["RewardItem"][2]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314683]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314683]["RewardItem"][3]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】新武器外套
	tNewPKReward_Reward[3314683]["RewardItem"][3]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314683]["RewardEffect"] = {}
	tNewPKReward_Reward[3314683]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314683]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314684] = {}
	-- ===优质钧天武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314684]
	-- ===删除:3314684,1
	tNewPKReward_Reward[3314684]["LogId"] = 12001776
	tNewPKReward_Reward[3314684]["DeleteItem"] = {}
	tNewPKReward_Reward[3314684]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314684]["DeleteItem"][1]["Id"] = 3314684 -- 【库】优质钧天武尊礼盒[属性:9]
	tNewPKReward_Reward[3314684]["RewardItem"] = {}
	tNewPKReward_Reward[3314684]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314684]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位荣耀勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位荣耀勋章
	tNewPKReward_Reward[3314684]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的1000万爵位荣耀勋章（赠）*1
	tNewPKReward_Reward[3314684]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314684]["RewardItem"][2]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练石+4
	tNewPKReward_Reward[3314684]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的+4赤炼石*3
	tNewPKReward_Reward[3314684]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314684]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314684]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314684]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314684]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314684]["RewardItem"][4]["Attr"] = "0 3 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*3
	tNewPKReward_Reward[3314684]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314684]["RewardItem"][5]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314684]["RewardItem"][5]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314684]["RewardEffect"] = {}
	tNewPKReward_Reward[3314684]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314684]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314685] = {}
	-- ===优质御刃武魂礼盒
	-- ===索引:tNewPKReward_Reward[3314685]
	-- ===删除:3314685,1
	tNewPKReward_Reward[3314685]["LogId"] = 12001776
	tNewPKReward_Reward[3314685]["DeleteItem"] = {}
	tNewPKReward_Reward[3314685]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314685]["DeleteItem"][1]["Id"] = 3314685 -- 【库】优质御刃武魂礼盒[属性:9]
	tNewPKReward_Reward[3314685]["RewardItem"] = {}
	tNewPKReward_Reward[3314685]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314685]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位卓越勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位卓越勋章
	tNewPKReward_Reward[3314685]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的600万爵位卓越勋章（赠）*1
	tNewPKReward_Reward[3314685]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314685]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314685]["RewardItem"][2]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*2
	tNewPKReward_Reward[3314685]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314685]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314685]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314685]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314685]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314685]["RewardItem"][4]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314685]["RewardEffect"] = {}
	tNewPKReward_Reward[3314685]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314685]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314686] = {}
	-- ===优质苍岚武贲礼盒
	-- ===索引:tNewPKReward_Reward[3314686]
	-- ===删除:3314686,1
	tNewPKReward_Reward[3314686]["LogId"] = 12001776
	tNewPKReward_Reward[3314686]["DeleteItem"] = {}
	tNewPKReward_Reward[3314686]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314686]["DeleteItem"][1]["Id"] = 3314686 -- 【库】优质苍岚武贲礼盒[属性:9]
	tNewPKReward_Reward[3314686]["RewardItem"] = {}
	tNewPKReward_Reward[3314686]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314686]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位勋章
	tNewPKReward_Reward[3314686]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的300万爵位勋章（赠）*1
	tNewPKReward_Reward[3314686]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314686]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314686]["RewardItem"][2]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314686]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314686]["RewardItem"][3]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314686]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314686]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314686]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314686]["RewardItem"][4]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314686]["RewardEffect"] = {}
	tNewPKReward_Reward[3314686]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314686]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314687] = {}
	-- ===优质精装豪侠礼盒
	-- ===索引:tNewPKReward_Reward[3314687]
	-- ===删除:3314687,1
	tNewPKReward_Reward[3314687]["LogId"] = 12001776
	tNewPKReward_Reward[3314687]["DeleteItem"] = {}
	tNewPKReward_Reward[3314687]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314687]["DeleteItem"][1]["Id"] = 3314687 -- 【库】优质精装豪侠礼盒[属性:9]
	tNewPKReward_Reward[3314687]["RewardItem"] = {}
	tNewPKReward_Reward[3314687]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314687]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314687]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314687]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314687]["RewardItem"][2]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314687]["RewardItem"][2]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314687]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314687]["RewardItem"][3]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】新武器外套
	tNewPKReward_Reward[3314687]["RewardItem"][3]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314687]["RewardEffect"] = {}
	tNewPKReward_Reward[3314687]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314687]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314688] = {}
	-- ===极品钧天武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314688]
	-- ===删除:3314688,1
	tNewPKReward_Reward[3314688]["LogId"] = 12001776
	tNewPKReward_Reward[3314688]["DeleteItem"] = {}
	tNewPKReward_Reward[3314688]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314688]["DeleteItem"][1]["Id"] = 3314688 -- 【库】极品钧天武尊礼盒[属性:9]
	tNewPKReward_Reward[3314688]["RewardItem"] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][1]["Id"] = 3322762 -- 1000万爵位荣耀勋章[3322762][属性:8][叠加:1][金币:0], 【表格】1000万爵位荣耀勋章
	tNewPKReward_Reward[3314688]["RewardItem"][1]["Attr"] = "0 3 3 4320 1" -- 3天时效(激活)的1000万爵位荣耀勋章（赠）*3
	tNewPKReward_Reward[3314688]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][2]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练石+4
	tNewPKReward_Reward[3314688]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的+4赤炼石*3
	tNewPKReward_Reward[3314688]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][3]["Id"] = 3008058 -- 神品淬炼礼包[3008058][属性:11][叠加:0][金币:0], 【表格】神品淬炼礼包
	tNewPKReward_Reward[3314688]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的神品淬炼礼包*1
	tNewPKReward_Reward[3314688]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314688]["RewardItem"][4]["Attr"] = "0 5 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*5
	tNewPKReward_Reward[3314688]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][5]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314688]["RewardItem"][5]["Attr"] = "0 3" -- 龙珠*3
	tNewPKReward_Reward[3314688]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][6]["Id"] = 720049 -- +6变幻骑宠礼包[720049][属性:9][叠加:0][金币:0], 【表格】+6变幻骑宠礼包
	tNewPKReward_Reward[3314688]["RewardItem"][6]["Attr"] = "0 1" -- +6变幻骑宠礼包*1
	tNewPKReward_Reward[3314688]["RewardItem"][7] = {}
	tNewPKReward_Reward[3314688]["RewardItem"][7]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tNewPKReward_Reward[3314688]["RewardItem"][7]["Attr"] = "0 100" -- 万能神纹精粹*100
	tNewPKReward_Reward[3314688]["RewardEffect"] = {}
	tNewPKReward_Reward[3314688]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314688]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314689] = {}
	-- ===极品御刃武魂礼盒
	-- ===索引:tNewPKReward_Reward[3314689]
	-- ===删除:3314689,1
	tNewPKReward_Reward[3314689]["LogId"] = 12001776
	tNewPKReward_Reward[3314689]["DeleteItem"] = {}
	tNewPKReward_Reward[3314689]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314689]["DeleteItem"][1]["Id"] = 3314689 -- 【库】极品御刃武魂礼盒[属性:9]
	tNewPKReward_Reward[3314689]["RewardItem"] = {}
	tNewPKReward_Reward[3314689]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314689]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位卓越勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位卓越勋章
	tNewPKReward_Reward[3314689]["RewardItem"][1]["Attr"] = "0 3 3 4320 1" -- 3天时效(激活)的600万爵位卓越勋章（赠）*3
	tNewPKReward_Reward[3314689]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314689]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314689]["RewardItem"][2]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*2
	tNewPKReward_Reward[3314689]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314689]["RewardItem"][3]["Id"] = 3008058 -- 神品淬炼礼包[3008058][属性:11][叠加:0][金币:0], 【表格】神品淬炼礼包
	tNewPKReward_Reward[3314689]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的神品淬炼礼包*1
	tNewPKReward_Reward[3314689]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314689]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314689]["RewardItem"][4]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314689]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314689]["RewardItem"][5]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tNewPKReward_Reward[3314689]["RewardItem"][5]["Attr"] = "0 50" -- 万能神纹精粹*50
	tNewPKReward_Reward[3314689]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314689]["RewardItem"][6]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314689]["RewardItem"][6]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314689]["RewardEffect"] = {}
	tNewPKReward_Reward[3314689]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314689]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314690] = {}
	-- ===极品苍岚武贲礼盒
	-- ===索引:tNewPKReward_Reward[3314690]
	-- ===删除:3314690,1
	tNewPKReward_Reward[3314690]["LogId"] = 12001776
	tNewPKReward_Reward[3314690]["DeleteItem"] = {}
	tNewPKReward_Reward[3314690]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314690]["DeleteItem"][1]["Id"] = 3314690 -- 【库】极品苍岚武贲礼盒[属性:9]
	tNewPKReward_Reward[3314690]["RewardItem"] = {}
	tNewPKReward_Reward[3314690]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314690]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位勋章
	tNewPKReward_Reward[3314690]["RewardItem"][1]["Attr"] = "0 3 3 4320 1" -- 3天时效(激活)的300万爵位勋章（赠）*3
	tNewPKReward_Reward[3314690]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314690]["RewardItem"][2]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3
	tNewPKReward_Reward[3314690]["RewardItem"][2]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314690]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314690]["RewardItem"][3]["Id"] = 3008058 -- 神品淬炼礼包[3008058][属性:11][叠加:0][金币:0], 【表格】神品淬炼礼包
	tNewPKReward_Reward[3314690]["RewardItem"][3]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的神品淬炼礼包*1
	tNewPKReward_Reward[3314690]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314690]["RewardItem"][4]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314690]["RewardItem"][4]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314690]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314690]["RewardItem"][5]["Id"] = 723342 -- 造化天书[723342][属性:0][叠加:10000][金币:0], 【表格】造化天书
	tNewPKReward_Reward[3314690]["RewardItem"][5]["Attr"] = "0 1 3" -- 造化天书（赠）*1
	tNewPKReward_Reward[3314690]["RewardEffect"] = {}
	tNewPKReward_Reward[3314690]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314690]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314691] = {}
	-- ===优质精装豪侠礼盒
	-- ===索引:tNewPKReward_Reward[3314691]
	-- ===删除:3314691,1
	tNewPKReward_Reward[3314691]["LogId"] = 12001776
	tNewPKReward_Reward[3314691]["DeleteItem"] = {}
	tNewPKReward_Reward[3314691]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314691]["DeleteItem"][1]["Id"] = 3314691 -- 【库】极品精装豪侠礼盒[属性:9]
	tNewPKReward_Reward[3314691]["RewardItem"] = {}
	tNewPKReward_Reward[3314691]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314691]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314691]["RewardItem"][1]["Attr"] = "0 3 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*3
	tNewPKReward_Reward[3314691]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314691]["RewardItem"][2]["Id"] = 3008058 -- 神品淬炼礼包[3008058][属性:11][叠加:0][金币:0], 【表格】神品淬炼礼包
	tNewPKReward_Reward[3314691]["RewardItem"][2]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的神品淬炼礼包*1
	tNewPKReward_Reward[3314691]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314691]["RewardItem"][3]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314691]["RewardItem"][3]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314691]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314691]["RewardItem"][4]["Id"] = 723341 -- 玄灵秘录[723341][属性:0][叠加:10000][金币:0], 【表格】玄灵秘录
	tNewPKReward_Reward[3314691]["RewardItem"][4]["Attr"] = "0 10 3" -- 玄灵秘录（赠）*10
	tNewPKReward_Reward[3314691]["RewardEffect"] = {}
	tNewPKReward_Reward[3314691]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314691]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314692] = {}
	-- ===新精英PK赛参与礼包直接打开
	-- ===索引:tNewPKReward_Reward[3314692][1]
	-- ===删除:3314692,1
	tNewPKReward_Reward[3314692][1] = {}
	tNewPKReward_Reward[3314692][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314692][1]["DeleteItem"] = {}
	tNewPKReward_Reward[3314692][1]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314692][1]["DeleteItem"][1]["Id"] = 3314692 -- 【库】精英PK赛参与礼包[属性:9]
	tNewPKReward_Reward[3314692][1]["LogId"] = 12001776
	-- +9黄色神纹随机包（限时）-- 【必给】
	tNewPKReward_Reward[3314692][1][1] = {}
	tNewPKReward_Reward[3314692][1][1]["RandomItemChanceType"] = 1
	tNewPKReward_Reward[3314692][1][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][1]["RewardItem"][1]["Id"] = 3314727 -- +9黄色神纹随机包（限时）[3314727][属性:9][叠加:0][金币:0], 【表格】+9黄色神纹随机包（限时）
	tNewPKReward_Reward[3314692][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的+9黄色神纹随机包（限时）*1
	tNewPKReward_Reward[3314692][1][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314692][1][2] = {}
	tNewPKReward_Reward[3314692][1][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][2]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][1][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314692][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNewPKReward_Reward[3314692][1][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Reward[3314692][1][3] = {}
	tNewPKReward_Reward[3314692][1][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][3]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][1][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314692][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Reward[3314692][1][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314692][1][4] = {}
	tNewPKReward_Reward[3314692][1][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][4]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][1][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314692][1][4]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNewPKReward_Reward[3314692][1][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 11%
	tNewPKReward_Reward[3314692][1][5] = {}
	tNewPKReward_Reward[3314692][1][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][5]["ItemChance"] = 1100
	tNewPKReward_Reward[3314692][1][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][5]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314692][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 60分钟经验礼包*1
	tNewPKReward_Reward[3314692][1][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 600万爵位卓越勋章 - 2%
	tNewPKReward_Reward[3314692][1][6] = {}
	tNewPKReward_Reward[3314692][1][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][6]["ItemChance"] = 200
	tNewPKReward_Reward[3314692][1][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][6]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位卓越勋章
	tNewPKReward_Reward[3314692][1][6]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的600万爵位勋章（赠）*1
	tNewPKReward_Reward[3314692][1][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][6]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54025, data0）】全服限量:（70）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][1][6]["GlobalId"] = 54025
	tNewPKReward_Reward[3314692][1][6]["Pos"] = 0
	tNewPKReward_Reward[3314692][1][6]["MaxData"] = 70
	tNewPKReward_Reward[3314692][1][6]["FullIndex"] = 5
			-- 【动态掩码（54025, data1）】单日限量:（5）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][1][6]["OtherPos"] = 1
	tNewPKReward_Reward[3314692][1][6]["OtherMaxData"] = 5
	tNewPKReward_Reward[3314692][1][6]["OtherFullIndex"] = 5
	-- 300万爵位荣耀勋章 - 5%
	tNewPKReward_Reward[3314692][1][7] = {}
	tNewPKReward_Reward[3314692][1][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][7]["ItemChance"] = 500
	tNewPKReward_Reward[3314692][1][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][7]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位荣耀勋章
	tNewPKReward_Reward[3314692][1][7]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的300万爵位勋章（赠）*1
	tNewPKReward_Reward[3314692][1][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][7]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54025, data2）】全服限量:（140）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][1][7]["GlobalId"] = 54025
	tNewPKReward_Reward[3314692][1][7]["Pos"] = 2
	tNewPKReward_Reward[3314692][1][7]["MaxData"] = 140
	tNewPKReward_Reward[3314692][1][7]["FullIndex"] = 5
			-- 【动态掩码（54025, data3）】单日限量:（10）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][1][7]["OtherPos"] = 3
	tNewPKReward_Reward[3314692][1][7]["OtherMaxData"] = 10
	tNewPKReward_Reward[3314692][1][7]["OtherFullIndex"] = 5
	-- ‘+2马匹（赠） - 8%
	tNewPKReward_Reward[3314692][1][8] = {}
	tNewPKReward_Reward[3314692][1][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][8]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][1][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][8]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314692][1][8]["RewardItem"][1]["Attr"] = "0 1" -- +2马匹（赠）福禄袋*1
	tNewPKReward_Reward[3314692][1][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 8%
	tNewPKReward_Reward[3314692][1][9] = {}
	tNewPKReward_Reward[3314692][1][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][9]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][1][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][9]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314692][1][9]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tNewPKReward_Reward[3314692][1][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314692][1][10] = {}
	tNewPKReward_Reward[3314692][1][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][1][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][10]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314692][1][10]["RewardItem"][1]["Attr"] = "0 10 3" -- 蓝色神纹精粹（赠）*10
	tNewPKReward_Reward[3314692][1][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314692][1][11] = {}
	tNewPKReward_Reward[3314692][1][11]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][11]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][1][11]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][11]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][11]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314692][1][11]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tNewPKReward_Reward[3314692][1][11]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 8%
	tNewPKReward_Reward[3314692][1][12] = {}
	tNewPKReward_Reward[3314692][1][12]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][12]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][1][12]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][12]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][12]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314692][1][12]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tNewPKReward_Reward[3314692][1][12]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314692][1][13] = {}
	tNewPKReward_Reward[3314692][1][13]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][1][13]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][1][13]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][1][13]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][1][13]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314692][1][13]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tNewPKReward_Reward[3314692][1][13]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][1][13]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314692][2] = {}
	-- ===新精英PK赛参与礼包花费10W金币双倍奖励
	-- ===索引:tNewPKReward_Reward[3314692][2]
	-- ===删除:3314692,1
	tNewPKReward_Reward[3314692][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314692][2]["DeleteItem"] = {}
	tNewPKReward_Reward[3314692][2]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314692][2]["DeleteItem"][1]["Id"] = 3314692 -- 【库】精英PK赛参与礼包[属性:9]
	tNewPKReward_Reward[3314692][2]["CostMoney"] = {}
	tNewPKReward_Reward[3314692][2]["CostMoney"]["Value"] = 100000
	tNewPKReward_Reward[3314692][2]["LogId"] = 12001776
	-- +9黄色神纹随机包（限时）-- 【必给】
	tNewPKReward_Reward[3314692][2][1] = {}
	tNewPKReward_Reward[3314692][2][1]["RandomItemChanceType"] = 1
	tNewPKReward_Reward[3314692][2][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][1]["RewardItem"][1]["Id"] = 3314727 -- +9黄色神纹随机包（限时）[3314727][属性:9][叠加:0][金币:0], 【表格】+9黄色神纹随机包（限时）
	tNewPKReward_Reward[3314692][2][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的+9黄色神纹随机包（限时）*2
	tNewPKReward_Reward[3314692][2][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314692][2][2] = {}
	tNewPKReward_Reward[3314692][2][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][2]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][2][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314692][2][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Reward[3314692][2][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Reward[3314692][2][3] = {}
	tNewPKReward_Reward[3314692][2][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][3]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][2][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314692][2][3]["RewardItem"][1]["Attr"] = "0 2" -- 龙鳞果*2
	tNewPKReward_Reward[3314692][2][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314692][2][4] = {}
	tNewPKReward_Reward[3314692][2][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][4]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][2][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314692][2][4]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314692][2][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 11%
	tNewPKReward_Reward[3314692][2][5] = {}
	tNewPKReward_Reward[3314692][2][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][5]["ItemChance"] = 1100
	tNewPKReward_Reward[3314692][2][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][5]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314692][2][5]["RewardItem"][1]["Attr"] = "0 2" -- 60分钟经验礼包*2
	tNewPKReward_Reward[3314692][2][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 600万爵位卓越勋章 - 2%
	tNewPKReward_Reward[3314692][2][6] = {}
	tNewPKReward_Reward[3314692][2][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][6]["ItemChance"] = 200
	tNewPKReward_Reward[3314692][2][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][6]["RewardItem"][1]["Id"] = 3322761 -- 600万爵位勋章[3322761][属性:8][叠加:1][金币:0], 【表格】600万爵位卓越勋章
	tNewPKReward_Reward[3314692][2][6]["RewardItem"][1]["Attr"] = "0 2 3 4320 1" -- 3天时效(激活)的600万爵位勋章（赠）*2
	tNewPKReward_Reward[3314692][2][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][6]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54025, data0）】全服限量:（70）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][2][6]["GlobalId"] = 54025
	tNewPKReward_Reward[3314692][2][6]["Pos"] = 0
	tNewPKReward_Reward[3314692][2][6]["MaxData"] = 70
	tNewPKReward_Reward[3314692][2][6]["FullIndex"] = 5
			-- 【动态掩码（54025, data1）】单日限量:（5）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][2][6]["OtherPos"] = 1
	tNewPKReward_Reward[3314692][2][6]["OtherMaxData"] = 5
	tNewPKReward_Reward[3314692][2][6]["OtherFullIndex"] = 5
	-- 300万爵位荣耀勋章 - 5%
	tNewPKReward_Reward[3314692][2][7] = {}
	tNewPKReward_Reward[3314692][2][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][7]["ItemChance"] = 500
	tNewPKReward_Reward[3314692][2][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][7]["RewardItem"][1]["Id"] = 3322760 -- 300万爵位勋章[3322760][属性:8][叠加:1][金币:0], 【表格】300万爵位荣耀勋章
	tNewPKReward_Reward[3314692][2][7]["RewardItem"][1]["Attr"] = "0 2 3 4320 1" -- 3天时效(激活)的300万爵位勋章（赠）*2
	tNewPKReward_Reward[3314692][2][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][7]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（54025, data2）】全服限量:（140）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][2][7]["GlobalId"] = 54025
	tNewPKReward_Reward[3314692][2][7]["Pos"] = 2
	tNewPKReward_Reward[3314692][2][7]["MaxData"] = 140
	tNewPKReward_Reward[3314692][2][7]["FullIndex"] = 5
			-- 【动态掩码（54025, data3）】单日限量:（10）, 超限给编号（5）-
	tNewPKReward_Reward[3314692][2][7]["OtherPos"] = 3
	tNewPKReward_Reward[3314692][2][7]["OtherMaxData"] = 10
	tNewPKReward_Reward[3314692][2][7]["OtherFullIndex"] = 5
	-- ‘+2马匹（赠） - 8%
	tNewPKReward_Reward[3314692][2][8] = {}
	tNewPKReward_Reward[3314692][2][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][8]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][2][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][8]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314692][2][8]["RewardItem"][1]["Attr"] = "0 2" -- +2马匹（赠）福禄袋*2
	tNewPKReward_Reward[3314692][2][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 8%
	tNewPKReward_Reward[3314692][2][9] = {}
	tNewPKReward_Reward[3314692][2][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][9]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][2][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][9]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314692][2][9]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹（赠）*20
	tNewPKReward_Reward[3314692][2][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314692][2][10] = {}
	tNewPKReward_Reward[3314692][2][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][2][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][10]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314692][2][10]["RewardItem"][1]["Attr"] = "0 20 3" -- 蓝色神纹精粹（赠）*20
	tNewPKReward_Reward[3314692][2][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314692][2][11] = {}
	tNewPKReward_Reward[3314692][2][11]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][11]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][2][11]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][11]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][11]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314692][2][11]["RewardItem"][1]["Attr"] = "0 4" -- 红色神纹碎片*4
	tNewPKReward_Reward[3314692][2][11]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 8%
	tNewPKReward_Reward[3314692][2][12] = {}
	tNewPKReward_Reward[3314692][2][12]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][12]["ItemChance"] = 800
	tNewPKReward_Reward[3314692][2][12]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][12]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][12]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314692][2][12]["RewardItem"][1]["Attr"] = "0 4" -- 黄色神纹碎片*4
	tNewPKReward_Reward[3314692][2][12]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314692][2][13] = {}
	tNewPKReward_Reward[3314692][2][13]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314692][2][13]["ItemChance"] = 1000
	tNewPKReward_Reward[3314692][2][13]["RewardItem"] = {}
	tNewPKReward_Reward[3314692][2][13]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314692][2][13]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314692][2][13]["RewardItem"][1]["Attr"] = "0 4" -- 蓝色神纹碎片*4
	tNewPKReward_Reward[3314692][2][13]["RewardEffect"] = {}
	tNewPKReward_Reward[3314692][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314692][2][13]["RewardEffect"]["Effect"] = "angelwing"

-- 组队PK赛
-- NewPKReward_TeamPK
	-- ===良品圣皇武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314693]
	-- ===删除:3314693,1
	tNewPKReward_Reward[3314693] = {}
	tNewPKReward_Reward[3314693]["LogId"] = 12001777
	tNewPKReward_Reward[3314693]["DeleteItem"] = {}
	tNewPKReward_Reward[3314693]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314693]["DeleteItem"][1]["Id"] = 3314693 -- 【库】良品圣皇武尊礼盒[属性:9]
	tNewPKReward_Reward[3314693]["RewardItem"] = {}
	tNewPKReward_Reward[3314693]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314693]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314693]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314693]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314693]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314693]["RewardItem"][2]["Attr"] = "0 2" -- 龙珠*2
	tNewPKReward_Reward[3314693]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314693]["RewardItem"][3]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tNewPKReward_Reward[3314693]["RewardItem"][3]["Attr"] = "0 1" -- 天灵果*1
	tNewPKReward_Reward[3314693]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314693]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314693]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314693]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314693]["RewardItem"][5]["Id"] = 720877 -- 6千点骑宠比赛积分礼包[720877][属性:8][叠加:1][金币:0], 【表格】6千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314693]["RewardItem"][5]["Attr"] = "0 1" -- 6千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314693]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314693]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314693]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314693]["RewardEffect"] = {}
	tNewPKReward_Reward[3314693]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314693]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314694] = {}
	-- ===良品翔龙武昭礼盒
	-- ===索引:tNewPKReward_Reward[3314694]
	-- ===删除:3314694,1
	tNewPKReward_Reward[3314694]["LogId"] = 12001777
	tNewPKReward_Reward[3314694]["DeleteItem"] = {}
	tNewPKReward_Reward[3314694]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314694]["DeleteItem"][1]["Id"] = 3314694 -- 【库】良品翔龙武昭礼盒[属性:9]
	tNewPKReward_Reward[3314694]["RewardItem"] = {}
	tNewPKReward_Reward[3314694]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314694]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314694]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314694]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314694]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314694]["RewardItem"][2]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314694]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314694]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314694]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314694]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314694]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314694]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314694]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314694]["RewardItem"][5]["Id"] = 720878 -- 5千点骑宠比赛积分礼包[720878][属性:8][叠加:1][金币:0], 【表格】5千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314694]["RewardItem"][5]["Attr"] = "0 1" -- 5千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314694]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314694]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314694]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314694]["RewardEffect"] = {}
	tNewPKReward_Reward[3314694]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314694]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314695] = {}
	-- ===良品破穹武烈礼盒
	-- ===索引:tNewPKReward_Reward[3314695]
	-- ===删除:3314695,1
	tNewPKReward_Reward[3314695]["LogId"] = 12001777
	tNewPKReward_Reward[3314695]["DeleteItem"] = {}
	tNewPKReward_Reward[3314695]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314695]["DeleteItem"][1]["Id"] = 3314695 -- 【库】良品破穹武烈礼盒[属性:9]
	tNewPKReward_Reward[3314695]["RewardItem"] = {}
	tNewPKReward_Reward[3314695]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314695]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314695]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314695]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314695]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314695]["RewardItem"][2]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314695]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314695]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314695]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314695]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314695]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314695]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314695]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314695]["RewardItem"][5]["Id"] = 720880 -- 3千点骑宠比赛积分礼包[720880][属性:8][叠加:1][金币:0], 【表格】3千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314695]["RewardItem"][5]["Attr"] = "0 1" -- 3千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314695]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314695]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314695]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314695]["RewardEffect"] = {}
	tNewPKReward_Reward[3314695]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314695]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314696] = {}
	-- ===良品精装群雄礼盒
	-- ===索引:tNewPKReward_Reward[3314696]
	-- ===删除:3314696,1
	tNewPKReward_Reward[3314696]["LogId"] = 12001777
	tNewPKReward_Reward[3314696]["DeleteItem"] = {}
	tNewPKReward_Reward[3314696]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314696]["DeleteItem"][1]["Id"] = 3314696 -- 【库】良品精装群雄礼盒[属性:9]
	tNewPKReward_Reward[3314696]["RewardItem"] = {}
	tNewPKReward_Reward[3314696]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314696]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314696]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314696]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314696]["RewardItem"][2]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314696]["RewardItem"][2]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314696]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314696]["RewardItem"][3]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314696]["RewardItem"][3]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314696]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314696]["RewardItem"][4]["Id"] = 720881 -- 2千点骑宠比赛积分礼包[720881][属性:8][叠加:1][金币:0], 【表格】2千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314696]["RewardItem"][4]["Attr"] = "0 1" -- 2千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314696]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314696]["RewardItem"][5]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314696]["RewardItem"][5]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314696]["RewardEffect"] = {}
	tNewPKReward_Reward[3314696]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314696]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314697] = {}
	-- ===上品圣皇武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314697]
	-- ===删除:3314697,1
	tNewPKReward_Reward[3314697]["LogId"] = 12001777
	tNewPKReward_Reward[3314697]["DeleteItem"] = {}
	tNewPKReward_Reward[3314697]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314697]["DeleteItem"][1]["Id"] = 3314697 -- 【库】上品圣皇武尊礼盒[属性:9]
	tNewPKReward_Reward[3314697]["RewardItem"] = {}
	tNewPKReward_Reward[3314697]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314697]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314697]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314697]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314697]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314697]["RewardItem"][2]["Attr"] = "0 2" -- 龙珠*2
	tNewPKReward_Reward[3314697]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314697]["RewardItem"][3]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tNewPKReward_Reward[3314697]["RewardItem"][3]["Attr"] = "0 1" -- 天灵果*1
	tNewPKReward_Reward[3314697]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314697]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314697]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314697]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314697]["RewardItem"][5]["Id"] = 720877 -- 6千点骑宠比赛积分礼包[720877][属性:8][叠加:1][金币:0], 【表格】6千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314697]["RewardItem"][5]["Attr"] = "0 1" -- 6千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314697]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314697]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314697]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314697]["RewardEffect"] = {}
	tNewPKReward_Reward[3314697]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314697]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314698] = {}
	-- ===上品翔龙武昭礼盒
	-- ===索引:tNewPKReward_Reward[3314698]
	-- ===删除:3314698,1
	tNewPKReward_Reward[3314698]["LogId"] = 12001777
	tNewPKReward_Reward[3314698]["DeleteItem"] = {}
	tNewPKReward_Reward[3314698]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314698]["DeleteItem"][1]["Id"] = 3314698 -- 【库】上品翔龙武昭礼盒[属性:9]
	tNewPKReward_Reward[3314698]["RewardItem"] = {}
	tNewPKReward_Reward[3314698]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314698]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314698]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314698]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314698]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314698]["RewardItem"][2]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314698]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314698]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314698]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314698]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314698]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314698]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314698]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314698]["RewardItem"][5]["Id"] = 720878 -- 5千点骑宠比赛积分礼包[720878][属性:8][叠加:1][金币:0], 【表格】5千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314698]["RewardItem"][5]["Attr"] = "0 1" -- 5千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314698]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314698]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314698]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314698]["RewardEffect"] = {}
	tNewPKReward_Reward[3314698]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314698]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314699] = {}
	-- ===上品破穹武烈礼盒
	-- ===索引:tNewPKReward_Reward[3314699]
	-- ===删除:3314699,1
	tNewPKReward_Reward[3314699]["LogId"] = 12001777
	tNewPKReward_Reward[3314699]["DeleteItem"] = {}
	tNewPKReward_Reward[3314699]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314699]["DeleteItem"][1]["Id"] = 3314699 -- 【库】上品破穹武烈礼盒[属性:9]
	tNewPKReward_Reward[3314699]["RewardItem"] = {}
	tNewPKReward_Reward[3314699]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314699]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314699]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314699]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314699]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314699]["RewardItem"][2]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314699]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314699]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314699]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314699]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314699]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314699]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314699]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314699]["RewardItem"][5]["Id"] = 720880 -- 3千点骑宠比赛积分礼包[720880][属性:8][叠加:1][金币:0], 【表格】3千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314699]["RewardItem"][5]["Attr"] = "0 1" -- 3千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314699]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314699]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314699]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314699]["RewardEffect"] = {}
	tNewPKReward_Reward[3314699]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314699]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314700] = {}
	-- ===上品精装群雄礼盒
	-- ===索引:tNewPKReward_Reward[3314700]
	-- ===删除:3314700,1
	tNewPKReward_Reward[3314700]["LogId"] = 12001777
	tNewPKReward_Reward[3314700]["DeleteItem"] = {}
	tNewPKReward_Reward[3314700]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314700]["DeleteItem"][1]["Id"] = 3314700 -- 【库】上品精装群雄礼盒[属性:9]
	tNewPKReward_Reward[3314700]["RewardItem"] = {}
	tNewPKReward_Reward[3314700]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314700]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314700]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314700]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314700]["RewardItem"][2]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314700]["RewardItem"][2]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314700]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314700]["RewardItem"][3]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314700]["RewardItem"][3]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314700]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314700]["RewardItem"][4]["Id"] = 720881 -- 2千点骑宠比赛积分礼包[720881][属性:8][叠加:1][金币:0], 【表格】2千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314700]["RewardItem"][4]["Attr"] = "0 1" -- 2千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314700]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314700]["RewardItem"][5]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314700]["RewardItem"][5]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314700]["RewardEffect"] = {}
	tNewPKReward_Reward[3314700]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314700]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314701] = {}
	-- ===优质圣皇武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314701]
	-- ===删除:3314701,1
	tNewPKReward_Reward[3314701]["LogId"] = 12001777
	tNewPKReward_Reward[3314701]["DeleteItem"] = {}
	tNewPKReward_Reward[3314701]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314701]["DeleteItem"][1]["Id"] = 3314701 -- 【库】优质圣皇武尊礼盒[属性:9]
	tNewPKReward_Reward[3314701]["RewardItem"] = {}
	tNewPKReward_Reward[3314701]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314701]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314701]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314701]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314701]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314701]["RewardItem"][2]["Attr"] = "0 2" -- 龙珠*2
	tNewPKReward_Reward[3314701]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314701]["RewardItem"][3]["Id"] = 3009103 -- 天灵果[3009103][属性:9][叠加:99][金币:0], 【表格】天灵果
	tNewPKReward_Reward[3314701]["RewardItem"][3]["Attr"] = "0 1" -- 天灵果*1
	tNewPKReward_Reward[3314701]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314701]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314701]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314701]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314701]["RewardItem"][5]["Id"] = 720877 -- 6千点骑宠比赛积分礼包[720877][属性:8][叠加:1][金币:0], 【表格】6千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314701]["RewardItem"][5]["Attr"] = "0 1" -- 6千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314701]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314701]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314701]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314701]["RewardEffect"] = {}
	tNewPKReward_Reward[3314701]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314701]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314702] = {}
	-- ===优质翔龙武昭礼盒
	-- ===索引:tNewPKReward_Reward[3314702]
	-- ===删除:3314702,1
	tNewPKReward_Reward[3314702]["LogId"] = 12001777
	tNewPKReward_Reward[3314702]["DeleteItem"] = {}
	tNewPKReward_Reward[3314702]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314702]["DeleteItem"][1]["Id"] = 3314702 -- 【库】优质翔龙武昭礼盒[属性:9]
	tNewPKReward_Reward[3314702]["RewardItem"] = {}
	tNewPKReward_Reward[3314702]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314702]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314702]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314702]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314702]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314702]["RewardItem"][2]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314702]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314702]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314702]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314702]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314702]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314702]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314702]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314702]["RewardItem"][5]["Id"] = 720878 -- 5千点骑宠比赛积分礼包[720878][属性:8][叠加:1][金币:0], 【表格】5千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314702]["RewardItem"][5]["Attr"] = "0 1" -- 5千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314702]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314702]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314702]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314702]["RewardEffect"] = {}
	tNewPKReward_Reward[3314702]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314702]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314703] = {}
	-- ===优质破穹武烈礼盒
	-- ===索引:tNewPKReward_Reward[3314703]
	-- ===删除:3314703,1
	tNewPKReward_Reward[3314703]["LogId"] = 12001777
	tNewPKReward_Reward[3314703]["DeleteItem"] = {}
	tNewPKReward_Reward[3314703]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314703]["DeleteItem"][1]["Id"] = 3314703 -- 【库】优质破穹武烈礼盒[属性:9]
	tNewPKReward_Reward[3314703]["RewardItem"] = {}
	tNewPKReward_Reward[3314703]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314703]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314703]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314703]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314703]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314703]["RewardItem"][2]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314703]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314703]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314703]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314703]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314703]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314703]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314703]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314703]["RewardItem"][5]["Id"] = 720880 -- 3千点骑宠比赛积分礼包[720880][属性:8][叠加:1][金币:0], 【表格】3千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314703]["RewardItem"][5]["Attr"] = "0 1" -- 3千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314703]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314703]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314703]["RewardItem"][6]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314703]["RewardEffect"] = {}
	tNewPKReward_Reward[3314703]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314703]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314704] = {}
	-- ===优质精装群雄礼盒
	-- ===索引:tNewPKReward_Reward[3314704]
	-- ===删除:3314704,1
	tNewPKReward_Reward[3314704]["LogId"] = 12001777
	tNewPKReward_Reward[3314704]["DeleteItem"] = {}
	tNewPKReward_Reward[3314704]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314704]["DeleteItem"][1]["Id"] = 3314704 -- 【库】优质精装群雄礼盒[属性:9]
	tNewPKReward_Reward[3314704]["RewardItem"] = {}
	tNewPKReward_Reward[3314704]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314704]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314704]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314704]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314704]["RewardItem"][2]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314704]["RewardItem"][2]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314704]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314704]["RewardItem"][3]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314704]["RewardItem"][3]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314704]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314704]["RewardItem"][4]["Id"] = 720881 -- 2千点骑宠比赛积分礼包[720881][属性:8][叠加:1][金币:0], 【表格】2千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314704]["RewardItem"][4]["Attr"] = "0 1" -- 2千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314704]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314704]["RewardItem"][5]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314704]["RewardItem"][5]["Attr"] = "0 2 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*2
	tNewPKReward_Reward[3314704]["RewardEffect"] = {}
	tNewPKReward_Reward[3314704]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314704]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314705] = {}
	-- ===极品圣皇武尊礼盒
	-- ===索引:tNewPKReward_Reward[3314705]
	-- ===删除:3314705,1
	tNewPKReward_Reward[3314705]["LogId"] = 12001777
	tNewPKReward_Reward[3314705]["DeleteItem"] = {}
	tNewPKReward_Reward[3314705]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314705]["DeleteItem"][1]["Id"] = 3314705 -- 【库】极品圣皇武尊礼盒[属性:9]
	tNewPKReward_Reward[3314705]["RewardItem"] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314705]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314705]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][2]["Id"] = 3009104 -- 血菩提[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提
	tNewPKReward_Reward[3314705]["RewardItem"][2]["Attr"] = "0 1" -- 血菩提*1
	tNewPKReward_Reward[3314705]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][3]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314705]["RewardItem"][3]["Attr"] = "0 3" -- 龙珠*3
	tNewPKReward_Reward[3314705]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314705]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314705]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][5]["Id"] = 720874 -- 1万点骑宠比赛积分礼包[720874][属性:8][叠加:1][金币:0], 【表格】1万点骑宠比赛积分礼包
	tNewPKReward_Reward[3314705]["RewardItem"][5]["Attr"] = "0 1" -- 1万点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314705]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][6]["Id"] = 723717 -- 【财富类】五光十色包[723717][属性:0][叠加:0][金币:0], 【表格】【财富类】五光十色包
	tNewPKReward_Reward[3314705]["RewardItem"][6]["Attr"] = "0 1" -- 【财富类】五光十色包*1
	tNewPKReward_Reward[3314705]["RewardItem"][7] = {}
	tNewPKReward_Reward[3314705]["RewardItem"][7]["Id"] = 700073 -- 优质玄元宝石[700073][属性:0][叠加:0][金币:0], 【表格】优质玄元宝石
	tNewPKReward_Reward[3314705]["RewardItem"][7]["Attr"] = "0 1" -- 优质玄元宝石*1
	tNewPKReward_Reward[3314705]["RewardEffect"] = {}
	tNewPKReward_Reward[3314705]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314705]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314706] = {}
	-- ===极品翔龙武昭礼盒
	-- ===索引:tNewPKReward_Reward[3314706]
	-- ===删除:3314706,1
	tNewPKReward_Reward[3314706]["LogId"] = 12001777
	tNewPKReward_Reward[3314706]["DeleteItem"] = {}
	tNewPKReward_Reward[3314706]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314706]["DeleteItem"][1]["Id"] = 3314706 -- 【库】极品翔龙武昭礼盒[属性:9]
	tNewPKReward_Reward[3314706]["RewardItem"] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314706]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314706]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314706]["RewardItem"][2]["Attr"] = "0 2" -- 龙珠*2
	tNewPKReward_Reward[3314706]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314706]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314706]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314706]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314706]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][5]["Id"] = 720875 -- 8千点骑宠比赛积分礼包[720875][属性:8][叠加:1][金币:0], 【表格】8千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314706]["RewardItem"][5]["Attr"] = "0 1" -- 8千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314706]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][6]["Id"] = 723717 -- 【财富类】五光十色包[723717][属性:0][叠加:0][金币:0], 【表格】【财富类】五光十色包
	tNewPKReward_Reward[3314706]["RewardItem"][6]["Attr"] = "0 1" -- 【财富类】五光十色包*1
	tNewPKReward_Reward[3314706]["RewardItem"][7] = {}
	tNewPKReward_Reward[3314706]["RewardItem"][7]["Id"] = 700073 -- 优质玄元宝石[700073][属性:0][叠加:0][金币:0], 【表格】优质玄元宝石
	tNewPKReward_Reward[3314706]["RewardItem"][7]["Attr"] = "0 1" -- 优质玄元宝石*1
	tNewPKReward_Reward[3314706]["RewardEffect"] = {}
	tNewPKReward_Reward[3314706]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314706]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314707] = {}
	-- ===极品破穹武烈礼盒
	-- ===索引:tNewPKReward_Reward[3314707]
	-- ===删除:3314707,1
	tNewPKReward_Reward[3314707]["LogId"] = 12001777
	tNewPKReward_Reward[3314707]["DeleteItem"] = {}
	tNewPKReward_Reward[3314707]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314707]["DeleteItem"][1]["Id"] = 3314707 -- 【库】极品破穹武烈礼盒[属性:9]
	tNewPKReward_Reward[3314707]["RewardItem"] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314707]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314707]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][2]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314707]["RewardItem"][2]["Attr"] = "0 1" -- 龙珠*1
	tNewPKReward_Reward[3314707]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][3]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314707]["RewardItem"][3]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314707]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314707]["RewardItem"][4]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314707]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][5]["Id"] = 720876 -- 7千点骑宠比赛积分礼包[720876][属性:8][叠加:1][金币:0], 【表格】7千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314707]["RewardItem"][5]["Attr"] = "0 1" -- 7千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314707]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][6]["Id"] = 723717 -- 【财富类】五光十色包[723717][属性:0][叠加:0][金币:0], 【表格】【财富类】五光十色包
	tNewPKReward_Reward[3314707]["RewardItem"][6]["Attr"] = "0 1" -- 【财富类】五光十色包*1
	tNewPKReward_Reward[3314707]["RewardItem"][7] = {}
	tNewPKReward_Reward[3314707]["RewardItem"][7]["Id"] = 700073 -- 优质玄元宝石[700073][属性:0][叠加:0][金币:0], 【表格】优质玄元宝石
	tNewPKReward_Reward[3314707]["RewardItem"][7]["Attr"] = "0 1" -- 优质玄元宝石*1
	tNewPKReward_Reward[3314707]["RewardEffect"] = {}
	tNewPKReward_Reward[3314707]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314707]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314708] = {}
	-- ===极品精装群雄礼盒
	-- ===索引:tNewPKReward_Reward[3314708]
	-- ===删除:3314708,1
	tNewPKReward_Reward[3314708]["LogId"] = 12001777
	tNewPKReward_Reward[3314708]["DeleteItem"] = {}
	tNewPKReward_Reward[3314708]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314708]["DeleteItem"][1]["Id"] = 3314708 -- 【库】极品精装群雄礼盒[属性:9]
	tNewPKReward_Reward[3314708]["RewardItem"] = {}
	tNewPKReward_Reward[3314708]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314708]["RewardItem"][1]["Id"] = 720873 -- 特制仙境船票礼包[720873][属性:8][叠加:1][金币:0], 【表格】特制仙境船票礼包
	tNewPKReward_Reward[3314708]["RewardItem"][1]["Attr"] = "0 1" -- 特制仙境船票礼包*1
	tNewPKReward_Reward[3314708]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314708]["RewardItem"][2]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果
	tNewPKReward_Reward[3314708]["RewardItem"][2]["Attr"] = "0 1" -- 辉月果*1
	tNewPKReward_Reward[3314708]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314708]["RewardItem"][3]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314708]["RewardItem"][3]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314708]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314708]["RewardItem"][4]["Id"] = 720877 -- 6千点骑宠比赛积分礼包[720877][属性:8][叠加:1][金币:0], 【表格】6千点骑宠比赛积分礼包
	tNewPKReward_Reward[3314708]["RewardItem"][4]["Attr"] = "0 1" -- 6千点骑宠比赛积分礼包*1
	tNewPKReward_Reward[3314708]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314708]["RewardItem"][5]["Id"] = 723717 -- 【财富类】五光十色包[723717][属性:0][叠加:0][金币:0], 【表格】【财富类】五光十色包
	tNewPKReward_Reward[3314708]["RewardItem"][5]["Attr"] = "0 1" -- 【财富类】五光十色包*1
	tNewPKReward_Reward[3314708]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314708]["RewardItem"][6]["Id"] = 700073 -- 优质玄元宝石[700073][属性:0][叠加:0][金币:0], 【表格】优质玄元宝石
	tNewPKReward_Reward[3314708]["RewardItem"][6]["Attr"] = "0 1" -- 优质玄元宝石*1
	tNewPKReward_Reward[3314708]["RewardEffect"] = {}
	tNewPKReward_Reward[3314708]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314708]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314709] = {}
	-- ===组队PK赛参与礼包直接打开
	-- ===索引:tNewPKReward_Reward[3314709][1]
	-- ===删除:3314709,1
	tNewPKReward_Reward[3314709][1] = {}
	tNewPKReward_Reward[3314709][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314709][1]["DeleteItem"] = {}
	tNewPKReward_Reward[3314709][1]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314709][1]["DeleteItem"][1]["Id"] = 3314709 -- 【库】组队PK赛参与礼包[属性:9]
	tNewPKReward_Reward[3314709][1]["LogId"] = 12001777
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314709][1][1] = {}
	tNewPKReward_Reward[3314709][1][1]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][1]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314709][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNewPKReward_Reward[3314709][1][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 10%
	tNewPKReward_Reward[3314709][1][2] = {}
	tNewPKReward_Reward[3314709][1][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][2]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314709][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Reward[3314709][1][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314709][1][3] = {}
	tNewPKReward_Reward[3314709][1][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][3]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314709][1][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNewPKReward_Reward[3314709][1][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 10%
	tNewPKReward_Reward[3314709][1][4] = {}
	tNewPKReward_Reward[3314709][1][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][4]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][4]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314709][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 60分钟经验礼包*1
	tNewPKReward_Reward[3314709][1][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Reward[3314709][1][5] = {}
	tNewPKReward_Reward[3314709][1][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][5]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][5]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314709][1][5]["RewardItem"][1]["Attr"] = "0 1" -- +2马匹（赠）福禄袋*1
	tNewPKReward_Reward[3314709][1][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314709][1][6] = {}
	tNewPKReward_Reward[3314709][1][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][6]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][6]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314709][1][6]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tNewPKReward_Reward[3314709][1][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314709][1][7] = {}
	tNewPKReward_Reward[3314709][1][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][7]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][7]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314709][1][7]["RewardItem"][1]["Attr"] = "0 10 3" -- 蓝色神纹精粹（赠）*10
	tNewPKReward_Reward[3314709][1][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314709][1][8] = {}
	tNewPKReward_Reward[3314709][1][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][8]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][8]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314709][1][8]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tNewPKReward_Reward[3314709][1][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314709][1][9] = {}
	tNewPKReward_Reward[3314709][1][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][9]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][9]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314709][1][9]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tNewPKReward_Reward[3314709][1][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314709][1][10] = {}
	tNewPKReward_Reward[3314709][1][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][1][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][1][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][1][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][1][10]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314709][1][10]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tNewPKReward_Reward[3314709][1][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][1][10]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314709][2] = {}
	-- ===组队PK赛参与礼包花费10W金币双倍奖励
	-- ===索引:tNewPKReward_Reward[3314709][2]
	-- ===删除:3314709,1
	tNewPKReward_Reward[3314709][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314709][2]["DeleteItem"] = {}
	tNewPKReward_Reward[3314709][2]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314709][2]["DeleteItem"][1]["Id"] = 3314709 -- 【库】组队PK赛参与礼包[属性:9]
	tNewPKReward_Reward[3314709][2]["CostMoney"] = {}
	tNewPKReward_Reward[3314709][2]["CostMoney"]["Value"] = 100000
	tNewPKReward_Reward[3314709][2]["LogId"] = 12001777
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314709][2][1] = {}
	tNewPKReward_Reward[3314709][2][1]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][1]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314709][2][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Reward[3314709][2][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 10%
	tNewPKReward_Reward[3314709][2][2] = {}
	tNewPKReward_Reward[3314709][2][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][2]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314709][2][2]["RewardItem"][1]["Attr"] = "0 2" -- 龙鳞果*2
	tNewPKReward_Reward[3314709][2][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314709][2][3] = {}
	tNewPKReward_Reward[3314709][2][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][3]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314709][2][3]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314709][2][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 10%
	tNewPKReward_Reward[3314709][2][4] = {}
	tNewPKReward_Reward[3314709][2][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][4]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][4]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314709][2][4]["RewardItem"][1]["Attr"] = "0 2" -- 60分钟经验礼包*2
	tNewPKReward_Reward[3314709][2][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Reward[3314709][2][5] = {}
	tNewPKReward_Reward[3314709][2][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][5]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][5]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314709][2][5]["RewardItem"][1]["Attr"] = "0 2" -- +2马匹（赠）福禄袋*2
	tNewPKReward_Reward[3314709][2][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314709][2][6] = {}
	tNewPKReward_Reward[3314709][2][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][6]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][6]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314709][2][6]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹（赠）*20
	tNewPKReward_Reward[3314709][2][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314709][2][7] = {}
	tNewPKReward_Reward[3314709][2][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][7]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][7]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314709][2][7]["RewardItem"][1]["Attr"] = "0 20 3" -- 蓝色神纹精粹（赠）*20
	tNewPKReward_Reward[3314709][2][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314709][2][8] = {}
	tNewPKReward_Reward[3314709][2][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][8]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][8]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314709][2][8]["RewardItem"][1]["Attr"] = "0 4" -- 红色神纹碎片*4
	tNewPKReward_Reward[3314709][2][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314709][2][9] = {}
	tNewPKReward_Reward[3314709][2][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][9]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][9]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314709][2][9]["RewardItem"][1]["Attr"] = "0 4" -- 黄色神纹碎片*4
	tNewPKReward_Reward[3314709][2][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314709][2][10] = {}
	tNewPKReward_Reward[3314709][2][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314709][2][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314709][2][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314709][2][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314709][2][10]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314709][2][10]["RewardItem"][1]["Attr"] = "0 4" -- 蓝色神纹碎片*4
	tNewPKReward_Reward[3314709][2][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314709][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314709][2][10]["RewardEffect"]["Effect"] = "angelwing"

-- 组队大众PK赛
-- NewPKReward_SkillTeamPK
	-- ===良品御龙武圣礼盒
	-- ===索引:tNewPKReward_Reward[3314710]
	-- ===删除:3314710,1
	tNewPKReward_Reward[3314710] = {}
	tNewPKReward_Reward[3314710]["LogId"] = 12001778
	tNewPKReward_Reward[3314710]["DeleteItem"] = {}
	tNewPKReward_Reward[3314710]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314710]["DeleteItem"][1]["Id"] = 3314710 -- 【库】良品御龙武圣礼盒[属性:9]
	tNewPKReward_Reward[3314710]["RewardItem"] = {}
	tNewPKReward_Reward[3314710]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314710]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314710]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的+4赤炼石*2
	tNewPKReward_Reward[3314710]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314710]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314710]["RewardItem"][2]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Reward[3314710]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314710]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314710]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314710]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314710]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314710]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314710]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314710]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314710]["RewardItem"][5]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314710]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314710]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314710]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314710]["RewardEffect"] = {}
	tNewPKReward_Reward[3314710]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314710]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314711] = {}
	-- ===良品应天武德礼盒
	-- ===索引:tNewPKReward_Reward[3314711]
	-- ===删除:3314711,1
	tNewPKReward_Reward[3314711]["LogId"] = 12001778
	tNewPKReward_Reward[3314711]["DeleteItem"] = {}
	tNewPKReward_Reward[3314711]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314711]["DeleteItem"][1]["Id"] = 3314711 -- 【库】良品应天武德礼盒[属性:9]
	tNewPKReward_Reward[3314711]["RewardItem"] = {}
	tNewPKReward_Reward[3314711]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314711]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314711]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+4赤炼石（赠）*1
	tNewPKReward_Reward[3314711]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314711]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314711]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314711]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314711]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314711]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314711]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314711]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314711]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314711]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314711]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314711]["RewardItem"][5]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314711]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314711]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314711]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314711]["RewardEffect"] = {}
	tNewPKReward_Reward[3314711]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314711]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314712] = {}
	-- ===良品承运武睿礼盒
	-- ===索引:tNewPKReward_Reward[3314712]
	-- ===删除:3314712,1
	tNewPKReward_Reward[3314712]["LogId"] = 12001778
	tNewPKReward_Reward[3314712]["DeleteItem"] = {}
	tNewPKReward_Reward[3314712]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314712]["DeleteItem"][1]["Id"] = 3314712 -- 【库】良品承运武睿礼盒[属性:9]
	tNewPKReward_Reward[3314712]["RewardItem"] = {}
	tNewPKReward_Reward[3314712]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314712]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314712]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314712]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314712]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314712]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314712]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314712]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314712]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314712]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314712]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314712]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314712]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314712]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314712]["RewardItem"][5]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314712]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314712]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314712]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314712]["RewardEffect"] = {}
	tNewPKReward_Reward[3314712]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314712]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314713] = {}
	-- ===良品百烈豪情礼盒
	-- ===索引:tNewPKReward_Reward[3314713]
	-- ===删除:3314713,1
	tNewPKReward_Reward[3314713]["LogId"] = 12001778
	tNewPKReward_Reward[3314713]["DeleteItem"] = {}
	tNewPKReward_Reward[3314713]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314713]["DeleteItem"][1]["Id"] = 3314713 -- 【库】良品百烈豪情礼盒[属性:9]
	tNewPKReward_Reward[3314713]["RewardItem"] = {}
	tNewPKReward_Reward[3314713]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314713]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314713]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314713]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314713]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314713]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314713]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314713]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314713]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314713]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314713]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314713]["RewardItem"][4]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314713]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314713]["RewardItem"][5]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314713]["RewardItem"][5]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314713]["RewardEffect"] = {}
	tNewPKReward_Reward[3314713]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314713]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314714] = {}
	-- ===上品御龙武圣礼盒
	-- ===索引:tNewPKReward_Reward[3314714]
	-- ===删除:3314714,1
	tNewPKReward_Reward[3314714]["LogId"] = 12001778
	tNewPKReward_Reward[3314714]["DeleteItem"] = {}
	tNewPKReward_Reward[3314714]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314714]["DeleteItem"][1]["Id"] = 3314714 -- 【库】上品御龙武圣礼盒[属性:9]
	tNewPKReward_Reward[3314714]["RewardItem"] = {}
	tNewPKReward_Reward[3314714]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314714]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314714]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的+4赤炼石*2
	tNewPKReward_Reward[3314714]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314714]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314714]["RewardItem"][2]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Reward[3314714]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314714]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314714]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314714]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314714]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314714]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314714]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314714]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314714]["RewardItem"][5]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314714]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314714]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314714]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314714]["RewardEffect"] = {}
	tNewPKReward_Reward[3314714]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314714]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314715] = {}
	-- ===上品应天武德礼盒
	-- ===索引:tNewPKReward_Reward[3314715]
	-- ===删除:3314715,1
	tNewPKReward_Reward[3314715]["LogId"] = 12001778
	tNewPKReward_Reward[3314715]["DeleteItem"] = {}
	tNewPKReward_Reward[3314715]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314715]["DeleteItem"][1]["Id"] = 3314715 -- 【库】上品应天武德礼盒[属性:9]
	tNewPKReward_Reward[3314715]["RewardItem"] = {}
	tNewPKReward_Reward[3314715]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314715]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314715]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+4赤炼石（赠）*1
	tNewPKReward_Reward[3314715]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314715]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314715]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314715]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314715]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314715]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314715]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314715]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314715]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314715]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314715]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314715]["RewardItem"][5]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314715]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314715]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314715]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314715]["RewardEffect"] = {}
	tNewPKReward_Reward[3314715]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314715]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314716] = {}
	-- ===上品承运武睿礼盒
	-- ===索引:tNewPKReward_Reward[3314716]
	-- ===删除:3314716,1
	tNewPKReward_Reward[3314716]["LogId"] = 12001778
	tNewPKReward_Reward[3314716]["DeleteItem"] = {}
	tNewPKReward_Reward[3314716]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314716]["DeleteItem"][1]["Id"] = 3314716 -- 【库】上品承运武睿礼盒[属性:9]
	tNewPKReward_Reward[3314716]["RewardItem"] = {}
	tNewPKReward_Reward[3314716]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314716]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314716]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314716]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314716]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314716]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314716]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314716]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314716]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314716]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314716]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314716]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314716]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314716]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314716]["RewardItem"][5]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314716]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314716]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314716]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314716]["RewardEffect"] = {}
	tNewPKReward_Reward[3314716]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314716]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314717] = {}
	-- ===上品百烈豪情礼盒
	-- ===索引:tNewPKReward_Reward[3314717]
	-- ===删除:3314717,1
	tNewPKReward_Reward[3314717]["LogId"] = 12001778
	tNewPKReward_Reward[3314717]["DeleteItem"] = {}
	tNewPKReward_Reward[3314717]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314717]["DeleteItem"][1]["Id"] = 3314717 -- 【库】上品百烈豪情礼盒[属性:9]
	tNewPKReward_Reward[3314717]["RewardItem"] = {}
	tNewPKReward_Reward[3314717]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314717]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314717]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314717]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314717]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314717]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314717]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314717]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314717]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314717]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314717]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314717]["RewardItem"][4]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314717]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314717]["RewardItem"][5]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314717]["RewardItem"][5]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314717]["RewardEffect"] = {}
	tNewPKReward_Reward[3314717]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314717]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314718] = {}
	-- ===优质御龙武圣礼盒
	-- ===索引:tNewPKReward_Reward[3314718]
	-- ===删除:3314718,1
	tNewPKReward_Reward[3314718]["LogId"] = 12001778
	tNewPKReward_Reward[3314718]["DeleteItem"] = {}
	tNewPKReward_Reward[3314718]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314718]["DeleteItem"][1]["Id"] = 3314718 -- 【库】优质御龙武圣礼盒[属性:9]
	tNewPKReward_Reward[3314718]["RewardItem"] = {}
	tNewPKReward_Reward[3314718]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314718]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314718]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的+4赤炼石*2
	tNewPKReward_Reward[3314718]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314718]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314718]["RewardItem"][2]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Reward[3314718]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314718]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314718]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314718]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314718]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314718]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314718]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314718]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314718]["RewardItem"][5]["Attr"] = "0 1" -- 技能宝典礼包*1
	tNewPKReward_Reward[3314718]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314718]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314718]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314718]["RewardEffect"] = {}
	tNewPKReward_Reward[3314718]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314718]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314719] = {}
	-- ===优质应天武德礼盒
	-- ===索引:tNewPKReward_Reward[3314719]
	-- ===删除:3314719,1
	tNewPKReward_Reward[3314719]["LogId"] = 12001778
	tNewPKReward_Reward[3314719]["DeleteItem"] = {}
	tNewPKReward_Reward[3314719]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314719]["DeleteItem"][1]["Id"] = 3314719 -- 【库】优质应天武德礼盒[属性:9]
	tNewPKReward_Reward[3314719]["RewardItem"] = {}
	tNewPKReward_Reward[3314719]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314719]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314719]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+4赤炼石（赠）*1
	tNewPKReward_Reward[3314719]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314719]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314719]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314719]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314719]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314719]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314719]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314719]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314719]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314719]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314719]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314719]["RewardItem"][5]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314719]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314719]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314719]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314719]["RewardEffect"] = {}
	tNewPKReward_Reward[3314719]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314719]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314720] = {}
	-- ===优质承运武睿礼盒
	-- ===索引:tNewPKReward_Reward[3314720]
	-- ===删除:3314720,1
	tNewPKReward_Reward[3314720]["LogId"] = 12001778
	tNewPKReward_Reward[3314720]["DeleteItem"] = {}
	tNewPKReward_Reward[3314720]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314720]["DeleteItem"][1]["Id"] = 3314720 -- 【库】优质承运武睿礼盒[属性:9]
	tNewPKReward_Reward[3314720]["RewardItem"] = {}
	tNewPKReward_Reward[3314720]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314720]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314720]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314720]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314720]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314720]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314720]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314720]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314720]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314720]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314720]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314720]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314720]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314720]["RewardItem"][5]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314720]["RewardItem"][5]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314720]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314720]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314720]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314720]["RewardEffect"] = {}
	tNewPKReward_Reward[3314720]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314720]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314721] = {}
	-- ===优质百烈豪情礼盒
	-- ===索引:tNewPKReward_Reward[3314721]
	-- ===删除:3314721,1
	tNewPKReward_Reward[3314721]["LogId"] = 12001778
	tNewPKReward_Reward[3314721]["DeleteItem"] = {}
	tNewPKReward_Reward[3314721]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314721]["DeleteItem"][1]["Id"] = 3314721 -- 【库】优质百烈豪情礼盒[属性:9]
	tNewPKReward_Reward[3314721]["RewardItem"] = {}
	tNewPKReward_Reward[3314721]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314721]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314721]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314721]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314721]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314721]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314721]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314721]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314721]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314721]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314721]["RewardItem"][4]["Id"] = 720902 -- 技能宝典礼包[720902][属性:8][叠加:5][金币:0], 【表格】技能宝典礼包
	tNewPKReward_Reward[3314721]["RewardItem"][4]["Attr"] = "0 1 3" -- 技能宝典礼包（赠）*1
	tNewPKReward_Reward[3314721]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314721]["RewardItem"][5]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314721]["RewardItem"][5]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314721]["RewardEffect"] = {}
	tNewPKReward_Reward[3314721]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314721]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314722] = {}
	-- ===极品御龙武圣礼盒
	-- ===索引:tNewPKReward_Reward[3314722]
	-- ===删除:3314722,1
	tNewPKReward_Reward[3314722]["LogId"] = 12001778
	tNewPKReward_Reward[3314722]["DeleteItem"] = {}
	tNewPKReward_Reward[3314722]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314722]["DeleteItem"][1]["Id"] = 3314722 -- 【库】极品御龙武圣礼盒[属性:9]
	tNewPKReward_Reward[3314722]["RewardItem"] = {}
	tNewPKReward_Reward[3314722]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314722]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314722]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的+4赤炼石*3
	tNewPKReward_Reward[3314722]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314722]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314722]["RewardItem"][2]["Attr"] = "0 3" -- 良品神纹源晶*3
	tNewPKReward_Reward[3314722]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314722]["RewardItem"][3]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314722]["RewardItem"][3]["Attr"] = "0 3" -- 龙珠*3
	tNewPKReward_Reward[3314722]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314722]["RewardItem"][4]["Id"] = 3008058 -- 神品淬炼礼包[3008058][属性:11][叠加:0][金币:0], 【表格】神品淬炼礼包
	tNewPKReward_Reward[3314722]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的神品淬炼礼包*1
	tNewPKReward_Reward[3314722]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314722]["RewardItem"][5]["Id"] = 720882 -- 特制仙境船票豪华礼包[720882][属性:8][叠加:1][金币:0], 【表格】特制仙境船票豪华礼包
	tNewPKReward_Reward[3314722]["RewardItem"][5]["Attr"] = "0 1" -- 特制仙境船票豪华礼包*1
	tNewPKReward_Reward[3314722]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314722]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314722]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314722]["RewardEffect"] = {}
	tNewPKReward_Reward[3314722]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314722]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314723] = {}
	-- ===极品应天武德礼盒
	-- ===索引:tNewPKReward_Reward[3314723]
	-- ===删除:3314723,1
	tNewPKReward_Reward[3314723]["LogId"] = 12001778
	tNewPKReward_Reward[3314723]["DeleteItem"] = {}
	tNewPKReward_Reward[3314723]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314723]["DeleteItem"][1]["Id"] = 3314723 -- 【库】极品应天武德礼盒[属性:9]
	tNewPKReward_Reward[3314723]["RewardItem"] = {}
	tNewPKReward_Reward[3314723]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314723]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤练+4
	tNewPKReward_Reward[3314723]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+4赤炼石（赠）*2
	tNewPKReward_Reward[3314723]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314723]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314723]["RewardItem"][2]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Reward[3314723]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314723]["RewardItem"][3]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314723]["RewardItem"][3]["Attr"] = "0 1 3" -- 龙珠（赠）*1
	tNewPKReward_Reward[3314723]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314723]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314723]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314723]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314723]["RewardItem"][5]["Id"] = 720882 -- 特制仙境船票豪华礼包[720882][属性:8][叠加:1][金币:0], 【表格】特制仙境船票豪华礼包
	tNewPKReward_Reward[3314723]["RewardItem"][5]["Attr"] = "0 1" -- 特制仙境船票豪华礼包*1
	tNewPKReward_Reward[3314723]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314723]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314723]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314723]["RewardEffect"] = {}
	tNewPKReward_Reward[3314723]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314723]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314724] = {}
	-- ===极品承运武睿礼盒
	-- ===索引:tNewPKReward_Reward[3314724]
	-- ===删除:3314724,1
	tNewPKReward_Reward[3314724]["LogId"] = 12001778
	tNewPKReward_Reward[3314724]["DeleteItem"] = {}
	tNewPKReward_Reward[3314724]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314724]["DeleteItem"][1]["Id"] = 3314724 -- 【库】极品承运武睿礼盒[属性:9]
	tNewPKReward_Reward[3314724]["RewardItem"] = {}
	tNewPKReward_Reward[3314724]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314724]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314724]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*2
	tNewPKReward_Reward[3314724]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314724]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314724]["RewardItem"][2]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Reward[3314724]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314724]["RewardItem"][3]["Id"] = 1088000 -- 龙珠[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠
	tNewPKReward_Reward[3314724]["RewardItem"][3]["Attr"] = "0 1 3" -- 龙珠（赠）*1
	tNewPKReward_Reward[3314724]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314724]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314724]["RewardItem"][4]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的极品淬炼礼包*1
	tNewPKReward_Reward[3314724]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314724]["RewardItem"][5]["Id"] = 720882 -- 特制仙境船票豪华礼包[720882][属性:8][叠加:1][金币:0], 【表格】特制仙境船票豪华礼包
	tNewPKReward_Reward[3314724]["RewardItem"][5]["Attr"] = "0 1" -- 特制仙境船票豪华礼包*1
	tNewPKReward_Reward[3314724]["RewardItem"][6] = {}
	tNewPKReward_Reward[3314724]["RewardItem"][6]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314724]["RewardItem"][6]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314724]["RewardEffect"] = {}
	tNewPKReward_Reward[3314724]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314724]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314725] = {}
	-- ===极品百烈豪情礼盒
	-- ===索引:tNewPKReward_Reward[3314725]
	-- ===删除:3314725,1
	tNewPKReward_Reward[3314725]["LogId"] = 12001778
	tNewPKReward_Reward[3314725]["DeleteItem"] = {}
	tNewPKReward_Reward[3314725]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314725]["DeleteItem"][1]["Id"] = 3314725 -- 【库】极品百烈豪情礼盒[属性:9]
	tNewPKReward_Reward[3314725]["RewardItem"] = {}
	tNewPKReward_Reward[3314725]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314725]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤练+3
	tNewPKReward_Reward[3314725]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+3赤炼石（赠）*1
	tNewPKReward_Reward[3314725]["RewardItem"][2] = {}
	tNewPKReward_Reward[3314725]["RewardItem"][2]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314725]["RewardItem"][2]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314725]["RewardItem"][3] = {}
	tNewPKReward_Reward[3314725]["RewardItem"][3]["Id"] = 720889 -- 特制仙境船票大礼包[720889][属性:8][叠加:1][金币:0], 【表格】特制仙境船票大礼包
	tNewPKReward_Reward[3314725]["RewardItem"][3]["Attr"] = "0 1" -- 特制仙境船票大礼包*1
	tNewPKReward_Reward[3314725]["RewardItem"][4] = {}
	tNewPKReward_Reward[3314725]["RewardItem"][4]["Id"] = 3008057 -- 极品淬炼礼包[3008057][属性:11][叠加:0][金币:0], 【表格】极品淬炼礼包
	tNewPKReward_Reward[3314725]["RewardItem"][4]["Attr"] = "0 1" -- 极品淬炼礼包*1
	tNewPKReward_Reward[3314725]["RewardItem"][5] = {}
	tNewPKReward_Reward[3314725]["RewardItem"][5]["Id"] = 3305000 -- 7天怀旧武器外套包[3305000][属性:9][叠加:1][金币:0], 【表格】7天怀旧武器外套包
	tNewPKReward_Reward[3314725]["RewardItem"][5]["Attr"] = "0 1 0 10080 1" -- 7天时效(激活)的7天怀旧武器外套包*1
	tNewPKReward_Reward[3314725]["RewardEffect"] = {}
	tNewPKReward_Reward[3314725]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314725]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314726] = {}
	-- ===组队大众PK赛参与礼包直接打开
	-- ===索引:tNewPKReward_Reward[3314726][1]
	-- ===删除:3314726,1
	tNewPKReward_Reward[3314726][1] = {}
	tNewPKReward_Reward[3314726][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314726][1]["DeleteItem"] = {}
	tNewPKReward_Reward[3314726][1]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314726][1]["DeleteItem"][1]["Id"] = 3314726 -- 【库】组队大众PK赛参与礼包[属性:9]
	tNewPKReward_Reward[3314726][1]["LogId"] = 12001778
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314726][1][1] = {}
	tNewPKReward_Reward[3314726][1][1]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][1]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314726][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNewPKReward_Reward[3314726][1][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 9%
	tNewPKReward_Reward[3314726][1][2] = {}
	tNewPKReward_Reward[3314726][1][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][2]["ItemChance"] = 900
	tNewPKReward_Reward[3314726][1][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314726][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Reward[3314726][1][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314726][1][3] = {}
	tNewPKReward_Reward[3314726][1][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][3]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314726][1][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNewPKReward_Reward[3314726][1][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 10%
	tNewPKReward_Reward[3314726][1][4] = {}
	tNewPKReward_Reward[3314726][1][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][4]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][4]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314726][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 60分钟经验礼包*1
	tNewPKReward_Reward[3314726][1][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品神纹源晶 - 1%
	tNewPKReward_Reward[3314726][1][5] = {}
	tNewPKReward_Reward[3314726][1][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][5]["ItemChance"] = 100
	tNewPKReward_Reward[3314726][1][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][5]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314726][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Reward[3314726][1][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Reward[3314726][1][6] = {}
	tNewPKReward_Reward[3314726][1][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][6]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][6]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314726][1][6]["RewardItem"][1]["Attr"] = "0 1" -- +2马匹（赠）福禄袋*1
	tNewPKReward_Reward[3314726][1][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314726][1][7] = {}
	tNewPKReward_Reward[3314726][1][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][7]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][7]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314726][1][7]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tNewPKReward_Reward[3314726][1][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314726][1][8] = {}
	tNewPKReward_Reward[3314726][1][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][8]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][8]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314726][1][8]["RewardItem"][1]["Attr"] = "0 10 3" -- 蓝色神纹精粹（赠）*10
	tNewPKReward_Reward[3314726][1][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314726][1][9] = {}
	tNewPKReward_Reward[3314726][1][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][9]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][9]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314726][1][9]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tNewPKReward_Reward[3314726][1][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314726][1][10] = {}
	tNewPKReward_Reward[3314726][1][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][10]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314726][1][10]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tNewPKReward_Reward[3314726][1][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314726][1][11] = {}
	tNewPKReward_Reward[3314726][1][11]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][1][11]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][1][11]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][1][11]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][1][11]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314726][1][11]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tNewPKReward_Reward[3314726][1][11]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314726][2] = {}
	-- ===组队大众PK赛参与礼包花费10W金币双倍奖励
	-- ===索引:tNewPKReward_Reward[3314726][2]
	-- ===删除:3314726,1
	tNewPKReward_Reward[3314726][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314726][2]["DeleteItem"] = {}
	tNewPKReward_Reward[3314726][2]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314726][2]["DeleteItem"][1]["Id"] = 3314726 -- 【库】组队大众PK赛参与礼包[属性:9]
	tNewPKReward_Reward[3314726][2]["CostMoney"] = {}
	tNewPKReward_Reward[3314726][2]["CostMoney"]["Value"] = 100000
	tNewPKReward_Reward[3314726][2]["LogId"] = 12001778
	-- 明亮星陨石 - 10%
	tNewPKReward_Reward[3314726][2][1] = {}
	tNewPKReward_Reward[3314726][2][1]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][1]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Reward[3314726][2][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Reward[3314726][2][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 9%
	tNewPKReward_Reward[3314726][2][2] = {}
	tNewPKReward_Reward[3314726][2][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][2]["ItemChance"] = 900
	tNewPKReward_Reward[3314726][2][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Reward[3314726][2][2]["RewardItem"][1]["Attr"] = "0 2" -- 龙鳞果*2
	tNewPKReward_Reward[3314726][2][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Reward[3314726][2][3] = {}
	tNewPKReward_Reward[3314726][2][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][3]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Reward[3314726][2][3]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Reward[3314726][2][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 10%
	tNewPKReward_Reward[3314726][2][4] = {}
	tNewPKReward_Reward[3314726][2][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][4]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][4]["RewardItem"][1]["Id"] = 3315253 -- 60分钟经验礼包[3315253][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Reward[3314726][2][4]["RewardItem"][1]["Attr"] = "0 2" -- 60分钟经验礼包*2
	tNewPKReward_Reward[3314726][2][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品神纹源晶 - 1%
	tNewPKReward_Reward[3314726][2][5] = {}
	tNewPKReward_Reward[3314726][2][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][5]["ItemChance"] = 100
	tNewPKReward_Reward[3314726][2][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][5]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Reward[3314726][2][5]["RewardItem"][1]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Reward[3314726][2][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Reward[3314726][2][6] = {}
	tNewPKReward_Reward[3314726][2][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][6]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][6]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Reward[3314726][2][6]["RewardItem"][1]["Attr"] = "0 2" -- +2马匹（赠）福禄袋*2
	tNewPKReward_Reward[3314726][2][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314726][2][7] = {}
	tNewPKReward_Reward[3314726][2][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][7]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][7]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Reward[3314726][2][7]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹（赠）*20
	tNewPKReward_Reward[3314726][2][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Reward[3314726][2][8] = {}
	tNewPKReward_Reward[3314726][2][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][8]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][8]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Reward[3314726][2][8]["RewardItem"][1]["Attr"] = "0 20 3" -- 蓝色神纹精粹（赠）*20
	tNewPKReward_Reward[3314726][2][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314726][2][9] = {}
	tNewPKReward_Reward[3314726][2][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][9]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][9]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Reward[3314726][2][9]["RewardItem"][1]["Attr"] = "0 4" -- 红色神纹碎片*4
	tNewPKReward_Reward[3314726][2][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314726][2][10] = {}
	tNewPKReward_Reward[3314726][2][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][10]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][10]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Reward[3314726][2][10]["RewardItem"][1]["Attr"] = "0 4" -- 黄色神纹碎片*4
	tNewPKReward_Reward[3314726][2][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Reward[3314726][2][11] = {}
	tNewPKReward_Reward[3314726][2][11]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314726][2][11]["ItemChance"] = 1000
	tNewPKReward_Reward[3314726][2][11]["RewardItem"] = {}
	tNewPKReward_Reward[3314726][2][11]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314726][2][11]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Reward[3314726][2][11]["RewardItem"][1]["Attr"] = "0 4" -- 蓝色神纹碎片*4
	tNewPKReward_Reward[3314726][2][11]["RewardEffect"] = {}
	tNewPKReward_Reward[3314726][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314726][2][11]["RewardEffect"]["Effect"] = "angelwing"
	
	tNewPKReward_Reward[3314727] = {}
	-- ===稀有黄色神纹随机包
	-- ===索引:tNewPKReward_Reward[3314727]
	-- ===删除:3314727,1
	tNewPKReward_Reward[3314727]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Reward[3314727]["DeleteItem"] = {}
	tNewPKReward_Reward[3314727]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314727]["DeleteItem"][1]["Id"] = 3314727 -- 【库】+9黄色神纹随机包（限时）[属性:9]
	tNewPKReward_Reward[3314727]["LogId"] = 12001776
	-- 策马扬鞭（+9） - 2.5%
	tNewPKReward_Reward[3314727][1] = {}
	tNewPKReward_Reward[3314727][1]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][1]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][1]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][1]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][1]["RewardItem"][1]["Id"] = 4031409 -- 策马扬鞭(+9)[4031409][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+9）
	tNewPKReward_Reward[3314727][1]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的策马扬鞭(+9)（赠）*1
	tNewPKReward_Reward[3314727][1]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+9） - 2.5%
	tNewPKReward_Reward[3314727][2] = {}
	tNewPKReward_Reward[3314727][2]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][2]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][2]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][2]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][2]["RewardItem"][1]["Id"] = 4031509 -- 攻城掠地(+9)[4031509][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+9）
	tNewPKReward_Reward[3314727][2]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的攻城掠地(+9)（赠）*1
	tNewPKReward_Reward[3314727][2]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+9） - 0.5%
	tNewPKReward_Reward[3314727][3] = {}
	tNewPKReward_Reward[3314727][3]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][3]["ItemChance"] = 50
	tNewPKReward_Reward[3314727][3]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][3]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][3]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）
	tNewPKReward_Reward[3314727][3]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的玄武护体(+9)（赠）*1
	tNewPKReward_Reward[3314727][3]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神罗天征（+9） - 2.5%
	tNewPKReward_Reward[3314727][4] = {}
	tNewPKReward_Reward[3314727][4]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][4]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][4]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][4]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][4]["RewardItem"][1]["Id"] = 4032009 -- 神罗天征(+9)[4032009][属性:8][叠加:0][金币:0], 【表格】神罗天征（+9）
	tNewPKReward_Reward[3314727][4]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的神罗天征(+9)（赠）*1
	tNewPKReward_Reward[3314727][4]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+9） - 2.5%
	tNewPKReward_Reward[3314727][5] = {}
	tNewPKReward_Reward[3314727][5]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][5]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][5]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][5]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][5]["RewardItem"][1]["Id"] = 4032109 -- 爆炎诀(+9)[4032109][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+9）
	tNewPKReward_Reward[3314727][5]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的爆炎诀(+9)（赠）*1
	tNewPKReward_Reward[3314727][5]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+9） - 2.5%
	tNewPKReward_Reward[3314727][6] = {}
	tNewPKReward_Reward[3314727][6]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][6]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][6]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][6]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][6]["RewardItem"][1]["Id"] = 4032209 -- 清心诀(+9)[4032209][属性:8][叠加:0][金币:0], 【表格】清心诀（+9）
	tNewPKReward_Reward[3314727][6]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的清心诀(+9)（赠）*1
	tNewPKReward_Reward[3314727][6]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+9） - 0.5%
	tNewPKReward_Reward[3314727][7] = {}
	tNewPKReward_Reward[3314727][7]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][7]["ItemChance"] = 50
	tNewPKReward_Reward[3314727][7]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][7]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][7]["RewardItem"][1]["Id"] = 4032309 -- 天衣无缝(+9)[4032309][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+9）
	tNewPKReward_Reward[3314727][7]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的天衣无缝(+9)（赠）*1
	tNewPKReward_Reward[3314727][7]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+9） - 2.5%
	tNewPKReward_Reward[3314727][8] = {}
	tNewPKReward_Reward[3314727][8]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][8]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][8]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][8]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][8]["RewardItem"][1]["Id"] = 4032409 -- 祭灵诀(+9)[4032409][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+9）
	tNewPKReward_Reward[3314727][8]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的祭灵诀(+9)（赠）*1
	tNewPKReward_Reward[3314727][8]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+9） - 2.5%
	tNewPKReward_Reward[3314727][9] = {}
	tNewPKReward_Reward[3314727][9]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][9]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][9]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][9]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][9]["RewardItem"][1]["Id"] = 4032509 -- 横扫千军(+9)[4032509][属性:8][叠加:0][金币:0], 【表格】横扫千军（+9）
	tNewPKReward_Reward[3314727][9]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的横扫千军(+9)（赠）*1
	tNewPKReward_Reward[3314727][9]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+9） - 2.5%
	tNewPKReward_Reward[3314727][10] = {}
	tNewPKReward_Reward[3314727][10]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][10]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][10]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][10]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][10]["RewardItem"][1]["Id"] = 4032609 -- 涅槃重生(+9)[4032609][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+9）
	tNewPKReward_Reward[3314727][10]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的涅槃重生(+9)（赠）*1
	tNewPKReward_Reward[3314727][10]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+9） - 0.5%
	tNewPKReward_Reward[3314727][11] = {}
	tNewPKReward_Reward[3314727][11]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][11]["ItemChance"] = 50
	tNewPKReward_Reward[3314727][11]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][11]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][11]["RewardItem"][1]["Id"] = 4032709 -- 锋芒毕露(+9)[4032709][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+9）
	tNewPKReward_Reward[3314727][11]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的锋芒毕露(+9)（赠）*1
	tNewPKReward_Reward[3314727][11]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+9） - 2.5%
	tNewPKReward_Reward[3314727][12] = {}
	tNewPKReward_Reward[3314727][12]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][12]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][12]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][12]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][12]["RewardItem"][1]["Id"] = 4032809 -- 魂兮归来(+9)[4032809][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+9）
	tNewPKReward_Reward[3314727][12]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的魂兮归来(+9)（赠）*1
	tNewPKReward_Reward[3314727][12]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+9） - 2.5%
	tNewPKReward_Reward[3314727][13] = {}
	tNewPKReward_Reward[3314727][13]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][13]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][13]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][13]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][13]["RewardItem"][1]["Id"] = 4032909 -- 例无虚发(+9)[4032909][属性:8][叠加:0][金币:0], 【表格】例无虚发（+9）
	tNewPKReward_Reward[3314727][13]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的例无虚发(+9)（赠）*1
	tNewPKReward_Reward[3314727][13]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+9） - 2.5%
	tNewPKReward_Reward[3314727][14] = {}
	tNewPKReward_Reward[3314727][14]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][14]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][14]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][14]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][14]["RewardItem"][1]["Id"] = 4033009 -- 审判(+9)[4033009][属性:8][叠加:0][金币:0], 【表格】审判（+9）
	tNewPKReward_Reward[3314727][14]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的审判(+9)（赠）*1
	tNewPKReward_Reward[3314727][14]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+9） - 2.5%
	tNewPKReward_Reward[3314727][15] = {}
	tNewPKReward_Reward[3314727][15]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][15]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][15]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][15]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][15]["RewardItem"][1]["Id"] = 4033309 -- 致命准星(+9)[4033309][属性:8][叠加:0][金币:0], 【表格】致命准星（+9）
	tNewPKReward_Reward[3314727][15]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的致命准星(+9)（赠）*1
	tNewPKReward_Reward[3314727][15]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+9） - 2.5%
	tNewPKReward_Reward[3314727][16] = {}
	tNewPKReward_Reward[3314727][16]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][16]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][16]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][16]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][16]["RewardItem"][1]["Id"] = 4033409 -- 会心一击(+9)[4033409][属性:8][叠加:0][金币:0], 【表格】会心一击（+9）
	tNewPKReward_Reward[3314727][16]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的会心一击(+9)（赠）*1
	tNewPKReward_Reward[3314727][16]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+9） - 2.5%
	tNewPKReward_Reward[3314727][17] = {}
	tNewPKReward_Reward[3314727][17]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][17]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][17]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][17]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][17]["RewardItem"][1]["Id"] = 4033909 -- 斗转星移(+9)[4033909][属性:8][叠加:0][金币:0], 【表格】斗转星移（+9）
	tNewPKReward_Reward[3314727][17]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的斗转星移(+9)（赠）*1
	tNewPKReward_Reward[3314727][17]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+9） - 2.5%
	tNewPKReward_Reward[3314727][18] = {}
	tNewPKReward_Reward[3314727][18]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][18]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][18]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][18]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][18]["RewardItem"][1]["Id"] = 4034009 -- 乾坤护法(+9)[4034009][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+9）
	tNewPKReward_Reward[3314727][18]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的乾坤护法(+9)（赠）*1
	tNewPKReward_Reward[3314727][18]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+9） - 2.5%
	tNewPKReward_Reward[3314727][19] = {}
	tNewPKReward_Reward[3314727][19]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][19]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][19]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][19]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][19]["RewardItem"][1]["Id"] = 4034109 -- 威慑(+9)[4034109][属性:8][叠加:0][金币:0], 【表格】威慑（+9）
	tNewPKReward_Reward[3314727][19]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的威慑(+9)（赠）*1
	tNewPKReward_Reward[3314727][19]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+9） - 2.5%
	tNewPKReward_Reward[3314727][20] = {}
	tNewPKReward_Reward[3314727][20]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][20]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][20]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][20]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][20]["RewardItem"][1]["Id"] = 4034209 -- 乾坤妙法(+9)[4034209][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+9）
	tNewPKReward_Reward[3314727][20]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的乾坤妙法(+9)（赠）*1
	tNewPKReward_Reward[3314727][20]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+9） - 2.5%
	tNewPKReward_Reward[3314727][21] = {}
	tNewPKReward_Reward[3314727][21]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][21]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][21]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][21]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][21]["RewardItem"][1]["Id"] = 4034309 -- 罡气护体(+9)[4034309][属性:8][叠加:0][金币:0], 【表格】罡气护体（+9）
	tNewPKReward_Reward[3314727][21]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的罡气护体(+9)（赠）*1
	tNewPKReward_Reward[3314727][21]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+9） - 2.5%
	tNewPKReward_Reward[3314727][22] = {}
	tNewPKReward_Reward[3314727][22]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][22]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][22]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][22]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][22]["RewardItem"][1]["Id"] = 4034409 -- 沧澜破(+9)[4034409][属性:8][叠加:0][金币:0], 【表格】沧澜破（+9）
	tNewPKReward_Reward[3314727][22]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的沧澜破(+9)（赠）*1
	tNewPKReward_Reward[3314727][22]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+9） - 2.5%
	tNewPKReward_Reward[3314727][23] = {}
	tNewPKReward_Reward[3314727][23]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][23]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][23]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][23]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][23]["RewardItem"][1]["Id"] = 4034509 -- 妙手回春(+9)[4034509][属性:8][叠加:0][金币:0], 【表格】妙手回春（+9）
	tNewPKReward_Reward[3314727][23]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的妙手回春(+9)（赠）*1
	tNewPKReward_Reward[3314727][23]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎魔屏障（+9） - 2.5%
	tNewPKReward_Reward[3314727][24] = {}
	tNewPKReward_Reward[3314727][24]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][24]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][24]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][24]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][24]["RewardItem"][1]["Id"] = 4034609 -- 碎魔屏障(+9)[4034609][属性:8][叠加:0][金币:0], 【表格】碎魔屏障（+9）
	tNewPKReward_Reward[3314727][24]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的碎魔屏障(+9)（赠）*1
	tNewPKReward_Reward[3314727][24]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 天地化盾（+9） - 2.5%
	tNewPKReward_Reward[3314727][25] = {}
	tNewPKReward_Reward[3314727][25]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][25]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][25]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][25]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][25]["RewardItem"][1]["Id"] = 4034709 -- 天地化盾(+9)[4034709][属性:8][叠加:0][金币:0], 【表格】天地化盾（+9）
	tNewPKReward_Reward[3314727][25]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的天地化盾(+9)（赠）*1
	tNewPKReward_Reward[3314727][25]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+9） - 1%
	tNewPKReward_Reward[3314727][26] = {}
	tNewPKReward_Reward[3314727][26]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][26]["ItemChance"] = 100
	tNewPKReward_Reward[3314727][26]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][26]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][26]["RewardItem"][1]["Id"] = 4034809 -- 碎玄元(+9)[4034809][属性:8][叠加:0][金币:0], 【表格】碎玄元（+9）
	tNewPKReward_Reward[3314727][26]["RewardItem"][1]["Attr"] = "0 1 3 120 1" -- 2小时时效(激活)的碎玄元(+9)（赠）*1
	tNewPKReward_Reward[3314727][26]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 破玄元（+9） - 2.5%
	tNewPKReward_Reward[3314727][27] = {}
	tNewPKReward_Reward[3314727][27]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][27]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][27]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][27]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][27]["RewardItem"][1]["Id"] = 4030109 -- 破玄元(+9)[4030109][属性:8][叠加:0][金币:0], 【表格】破玄元（+9）
	tNewPKReward_Reward[3314727][27]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的破玄元(+9)（赠）*1
	tNewPKReward_Reward[3314727][27]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+9） - 2.5%
	tNewPKReward_Reward[3314727][28] = {}
	tNewPKReward_Reward[3314727][28]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][28]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][28]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][28]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][28]["RewardItem"][1]["Id"] = 4030209 -- 撼星诀(+9)[4030209][属性:8][叠加:0][金币:0], 【表格】撼星诀（+9）
	tNewPKReward_Reward[3314727][28]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的撼星诀(+9)（赠）*1
	tNewPKReward_Reward[3314727][28]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][28]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+9） - 2.5%
	tNewPKReward_Reward[3314727][29] = {}
	tNewPKReward_Reward[3314727][29]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][29]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][29]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][29]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][29]["RewardItem"][1]["Id"] = 4030309 -- 血回元(+9)[4030309][属性:8][叠加:0][金币:0], 【表格】血回元（+9）
	tNewPKReward_Reward[3314727][29]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的血回元(+9)（赠）*1
	tNewPKReward_Reward[3314727][29]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][29]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][29]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+9） - 2.5%
	tNewPKReward_Reward[3314727][30] = {}
	tNewPKReward_Reward[3314727][30]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][30]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][30]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][30]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][30]["RewardItem"][1]["Id"] = 4030409 -- 万物生(+9)[4030409][属性:8][叠加:0][金币:0], 【表格】万物生（+9）
	tNewPKReward_Reward[3314727][30]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的万物生(+9)（赠）*1
	tNewPKReward_Reward[3314727][30]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][30]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+9） - 2.5%
	tNewPKReward_Reward[3314727][31] = {}
	tNewPKReward_Reward[3314727][31]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][31]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][31]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][31]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][31]["RewardItem"][1]["Id"] = 4030509 -- 无懈可击(+9)[4030509][属性:8][叠加:0][金币:0], 【表格】无懈可击（+9）
	tNewPKReward_Reward[3314727][31]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的无懈可击(+9)（赠）*1
	tNewPKReward_Reward[3314727][31]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][31]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+9） - 2.5%
	tNewPKReward_Reward[3314727][32] = {}
	tNewPKReward_Reward[3314727][32]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][32]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][32]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][32]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][32]["RewardItem"][1]["Id"] = 4030609 -- 狂暴克星(+9)[4030609][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+9）
	tNewPKReward_Reward[3314727][32]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的狂暴克星(+9)（赠）*1
	tNewPKReward_Reward[3314727][32]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][32]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+9） - 2.5%
	tNewPKReward_Reward[3314727][33] = {}
	tNewPKReward_Reward[3314727][33]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][33]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][33]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][33]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][33]["RewardItem"][1]["Id"] = 4030709 -- 风卷残云(+9)[4030709][属性:8][叠加:0][金币:0], 【表格】风卷残云（+9）
	tNewPKReward_Reward[3314727][33]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的风卷残云(+9)（赠）*1
	tNewPKReward_Reward[3314727][33]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][33]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+9） - 2.5%
	tNewPKReward_Reward[3314727][34] = {}
	tNewPKReward_Reward[3314727][34]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][34]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][34]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][34]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][34]["RewardItem"][1]["Id"] = 4030809 -- 回灵术(+9)[4030809][属性:8][叠加:0][金币:0], 【表格】回灵术（+9）
	tNewPKReward_Reward[3314727][34]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的回灵术(+9)（赠）*1
	tNewPKReward_Reward[3314727][34]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][34]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+9） - 2.5%
	tNewPKReward_Reward[3314727][35] = {}
	tNewPKReward_Reward[3314727][35]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][35]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][35]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][35]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][35]["RewardItem"][1]["Id"] = 4030909 -- 杀破狼(+9)[4030909][属性:8][叠加:0][金币:0], 【表格】杀破狼（+9）
	tNewPKReward_Reward[3314727][35]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的杀破狼(+9)（赠）*1
	tNewPKReward_Reward[3314727][35]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][35]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+9） - 2.5%
	tNewPKReward_Reward[3314727][36] = {}
	tNewPKReward_Reward[3314727][36]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][36]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][36]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][36]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][36]["RewardItem"][1]["Id"] = 4031009 -- 追命(+9)[4031009][属性:8][叠加:0][金币:0], 【表格】追命（+9）
	tNewPKReward_Reward[3314727][36]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的追命(+9)（赠）*1
	tNewPKReward_Reward[3314727][36]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][36]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][36]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+9） - 2.5%
	tNewPKReward_Reward[3314727][37] = {}
	tNewPKReward_Reward[3314727][37]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][37]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][37]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][37]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][37]["RewardItem"][1]["Id"] = 4031109 -- 奔雷不息(+9)[4031109][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+9）
	tNewPKReward_Reward[3314727][37]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的奔雷不息(+9)（赠）*1
	tNewPKReward_Reward[3314727][37]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][37]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][37]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+9） - 2.5%
	tNewPKReward_Reward[3314727][38] = {}
	tNewPKReward_Reward[3314727][38]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][38]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][38]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][38]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][38]["RewardItem"][1]["Id"] = 4031209 -- 安魂定魄(+9)[4031209][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+9）
	tNewPKReward_Reward[3314727][38]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的安魂定魄(+9)（赠）*1
	tNewPKReward_Reward[3314727][38]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][38]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][38]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+9） - 2.5%
	tNewPKReward_Reward[3314727][39] = {}
	tNewPKReward_Reward[3314727][39]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][39]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][39]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][39]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][39]["RewardItem"][1]["Id"] = 4031309 -- 夺魂(+9)[4031309][属性:8][叠加:0][金币:0], 【表格】夺魂（+9）
	tNewPKReward_Reward[3314727][39]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的夺魂(+9)（赠）*1
	tNewPKReward_Reward[3314727][39]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][39]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][39]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+9） - 2.5%
	tNewPKReward_Reward[3314727][40] = {}
	tNewPKReward_Reward[3314727][40]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][40]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][40]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][40]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][40]["RewardItem"][1]["Id"] = 4033109 -- 怒海狂涛(+9)[4033109][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+9）
	tNewPKReward_Reward[3314727][40]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的怒海狂涛(+9)（赠）*1
	tNewPKReward_Reward[3314727][40]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][40]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+9） - 2.5%
	tNewPKReward_Reward[3314727][41] = {}
	tNewPKReward_Reward[3314727][41]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][41]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][41]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][41]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][41]["RewardItem"][1]["Id"] = 4033609 -- 狂暴净化(+9)[4033609][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+9）
	tNewPKReward_Reward[3314727][41]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的狂暴净化(+9)（赠）*1
	tNewPKReward_Reward[3314727][41]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][41]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+9） - 2.5%
	tNewPKReward_Reward[3314727][42] = {}
	tNewPKReward_Reward[3314727][42]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][42]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][42]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][42]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][42]["RewardItem"][1]["Id"] = 4033709 -- 饮血盛宴(+9)[4033709][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+9）
	tNewPKReward_Reward[3314727][42]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的饮血盛宴(+9)（赠）*1
	tNewPKReward_Reward[3314727][42]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][42]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+9） - 2.5%
	tNewPKReward_Reward[3314727][43] = {}
	tNewPKReward_Reward[3314727][43]["RandomItemChanceType"] = 2
	tNewPKReward_Reward[3314727][43]["ItemChance"] = 250
	tNewPKReward_Reward[3314727][43]["RewardItem"] = {}
	tNewPKReward_Reward[3314727][43]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314727][43]["RewardItem"][1]["Id"] = 4033809 -- 生命汲取(+9)[4033809][属性:8][叠加:0][金币:0], 【表格】生命汲取（+9）
	tNewPKReward_Reward[3314727][43]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的生命汲取(+9)（赠）*1
	tNewPKReward_Reward[3314727][43]["RewardEffect"] = {}
	tNewPKReward_Reward[3314727][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314727][43]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314737] = {}
	-- ===良品圣皇武尊宝箱
	-- ===索引:tNewPKReward_Reward[3314737]
	-- ===删除:3314737,1
	tNewPKReward_Reward[3314737]["LogId"] = 12001777
	tNewPKReward_Reward[3314737]["DeleteItem"] = {}
	tNewPKReward_Reward[3314737]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314737]["DeleteItem"][1]["Id"] = 3314737 -- 【库】良品圣皇武尊宝箱[属性:9]
	tNewPKReward_Reward[3314737]["RewardItem"] = {}
	tNewPKReward_Reward[3314737]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314737]["RewardItem"][1]["Id"] = 3314693 -- 良品圣皇武尊礼盒[3314693][属性:0][叠加:10000][金币:0], 【表格】良品圣皇武尊礼盒
	tNewPKReward_Reward[3314737]["RewardItem"][1]["Attr"] = "0 5" -- 良品圣皇武尊礼盒*5
	tNewPKReward_Reward[3314737]["RewardEffect"] = {}
	tNewPKReward_Reward[3314737]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314737]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314738] = {}
	-- ===良品翔龙武昭宝箱
	-- ===索引:tNewPKReward_Reward[3314738]
	-- ===删除:3314738,1
	tNewPKReward_Reward[3314738]["LogId"] = 12001777
	tNewPKReward_Reward[3314738]["DeleteItem"] = {}
	tNewPKReward_Reward[3314738]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314738]["DeleteItem"][1]["Id"] = 3314738 -- 【库】良品翔龙武昭宝箱[属性:9]
	tNewPKReward_Reward[3314738]["RewardItem"] = {}
	tNewPKReward_Reward[3314738]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314738]["RewardItem"][1]["Id"] = 3314694 -- 良品翔龙武昭礼盒[3314694][属性:0][叠加:10000][金币:0], 【表格】良品翔龙武昭礼盒
	tNewPKReward_Reward[3314738]["RewardItem"][1]["Attr"] = "0 5" -- 良品翔龙武昭礼盒*5
	tNewPKReward_Reward[3314738]["RewardEffect"] = {}
	tNewPKReward_Reward[3314738]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314738]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314739] = {}
	-- ===良品破穹武烈宝箱
	-- ===索引:tNewPKReward_Reward[3314739]
	-- ===删除:3314739,1
	tNewPKReward_Reward[3314739]["LogId"] = 12001777
	tNewPKReward_Reward[3314739]["DeleteItem"] = {}
	tNewPKReward_Reward[3314739]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314739]["DeleteItem"][1]["Id"] = 3314739 -- 【库】良品破穹武烈宝箱[属性:9]
	tNewPKReward_Reward[3314739]["RewardItem"] = {}
	tNewPKReward_Reward[3314739]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314739]["RewardItem"][1]["Id"] = 3314695 -- 良品破穹武烈礼盒[3314695][属性:0][叠加:10000][金币:0], 【表格】良品破穹武烈礼盒
	tNewPKReward_Reward[3314739]["RewardItem"][1]["Attr"] = "0 5" -- 良品破穹武烈礼盒*5
	tNewPKReward_Reward[3314739]["RewardEffect"] = {}
	tNewPKReward_Reward[3314739]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314739]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314740] = {}
	-- ===良品精装群雄宝箱
	-- ===索引:tNewPKReward_Reward[3314740]
	-- ===删除:3314740,1
	tNewPKReward_Reward[3314740]["LogId"] = 12001777
	tNewPKReward_Reward[3314740]["DeleteItem"] = {}
	tNewPKReward_Reward[3314740]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314740]["DeleteItem"][1]["Id"] = 3314740 -- 【库】良品精装群雄宝箱[属性:9]
	tNewPKReward_Reward[3314740]["RewardItem"] = {}
	tNewPKReward_Reward[3314740]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314740]["RewardItem"][1]["Id"] = 3314696 -- 良品精装群雄礼盒[3314696][属性:0][叠加:10000][金币:0], 【表格】良品精装群雄礼盒
	tNewPKReward_Reward[3314740]["RewardItem"][1]["Attr"] = "0 5" -- 良品精装群雄礼盒*5
	tNewPKReward_Reward[3314740]["RewardEffect"] = {}
	tNewPKReward_Reward[3314740]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314740]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314741] = {}
	-- ===上品圣皇武尊宝箱
	-- ===索引:tNewPKReward_Reward[3314741]
	-- ===删除:3314741,1
	tNewPKReward_Reward[3314741]["LogId"] = 12001777
	tNewPKReward_Reward[3314741]["DeleteItem"] = {}
	tNewPKReward_Reward[3314741]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314741]["DeleteItem"][1]["Id"] = 3314741 -- 【库】上品圣皇武尊宝箱[属性:9]
	tNewPKReward_Reward[3314741]["RewardItem"] = {}
	tNewPKReward_Reward[3314741]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314741]["RewardItem"][1]["Id"] = 3314697 -- 上品圣皇武尊礼盒[3314697][属性:0][叠加:10000][金币:0], 【表格】上品圣皇武尊礼盒
	tNewPKReward_Reward[3314741]["RewardItem"][1]["Attr"] = "0 5" -- 上品圣皇武尊礼盒*5
	tNewPKReward_Reward[3314741]["RewardEffect"] = {}
	tNewPKReward_Reward[3314741]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314741]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314742] = {}
	-- ===上品翔龙武昭宝箱
	-- ===索引:tNewPKReward_Reward[3314742]
	-- ===删除:3314742,1
	tNewPKReward_Reward[3314742]["LogId"] = 12001777
	tNewPKReward_Reward[3314742]["DeleteItem"] = {}
	tNewPKReward_Reward[3314742]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314742]["DeleteItem"][1]["Id"] = 3314742 -- 【库】上品翔龙武昭宝箱[属性:9]
	tNewPKReward_Reward[3314742]["RewardItem"] = {}
	tNewPKReward_Reward[3314742]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314742]["RewardItem"][1]["Id"] = 3314698 -- 上品翔龙武昭礼盒[3314698][属性:0][叠加:10000][金币:0], 【表格】上品翔龙武昭礼盒
	tNewPKReward_Reward[3314742]["RewardItem"][1]["Attr"] = "0 5" -- 上品翔龙武昭礼盒*5
	tNewPKReward_Reward[3314742]["RewardEffect"] = {}
	tNewPKReward_Reward[3314742]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314742]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314743] = {}
	-- ===上品破穹武烈宝箱
	-- ===索引:tNewPKReward_Reward[3314743]
	-- ===删除:3314743,1
	tNewPKReward_Reward[3314743]["LogId"] = 12001777
	tNewPKReward_Reward[3314743]["DeleteItem"] = {}
	tNewPKReward_Reward[3314743]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314743]["DeleteItem"][1]["Id"] = 3314743 -- 【库】上品破穹武烈宝箱[属性:9]
	tNewPKReward_Reward[3314743]["RewardItem"] = {}
	tNewPKReward_Reward[3314743]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314743]["RewardItem"][1]["Id"] = 3314699 -- 上品破穹武烈礼盒[3314699][属性:0][叠加:10000][金币:0], 【表格】上品破穹武烈礼盒
	tNewPKReward_Reward[3314743]["RewardItem"][1]["Attr"] = "0 5" -- 上品破穹武烈礼盒*5
	tNewPKReward_Reward[3314743]["RewardEffect"] = {}
	tNewPKReward_Reward[3314743]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314743]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314744] = {}
	-- ===上品精装群雄宝箱
	-- ===索引:tNewPKReward_Reward[3314744]
	-- ===删除:3314744,1
	tNewPKReward_Reward[3314744]["LogId"] = 12001777
	tNewPKReward_Reward[3314744]["DeleteItem"] = {}
	tNewPKReward_Reward[3314744]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314744]["DeleteItem"][1]["Id"] = 3314744 -- 【库】上品精装群雄宝箱[属性:9]
	tNewPKReward_Reward[3314744]["RewardItem"] = {}
	tNewPKReward_Reward[3314744]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314744]["RewardItem"][1]["Id"] = 3314700 -- 上品精装群雄礼盒[3314700][属性:0][叠加:10000][金币:0], 【表格】上品精装群雄礼盒
	tNewPKReward_Reward[3314744]["RewardItem"][1]["Attr"] = "0 5" -- 上品精装群雄礼盒*5
	tNewPKReward_Reward[3314744]["RewardEffect"] = {}
	tNewPKReward_Reward[3314744]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314744]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314745] = {}
	-- ===优质圣皇武尊宝箱
	-- ===索引:tNewPKReward_Reward[3314745]
	-- ===删除:3314745,1
	tNewPKReward_Reward[3314745]["LogId"] = 12001777
	tNewPKReward_Reward[3314745]["DeleteItem"] = {}
	tNewPKReward_Reward[3314745]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314745]["DeleteItem"][1]["Id"] = 3314745 -- 【库】优质圣皇武尊宝箱[属性:9]
	tNewPKReward_Reward[3314745]["RewardItem"] = {}
	tNewPKReward_Reward[3314745]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314745]["RewardItem"][1]["Id"] = 3314701 -- 优质圣皇武尊礼盒[3314701][属性:0][叠加:10000][金币:0], 【表格】优质圣皇武尊礼盒
	tNewPKReward_Reward[3314745]["RewardItem"][1]["Attr"] = "0 5" -- 优质圣皇武尊礼盒*5
	tNewPKReward_Reward[3314745]["RewardEffect"] = {}
	tNewPKReward_Reward[3314745]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314745]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314746] = {}
	-- ===优质翔龙武昭宝箱
	-- ===索引:tNewPKReward_Reward[3314746]
	-- ===删除:3314746,1
	tNewPKReward_Reward[3314746]["LogId"] = 12001777
	tNewPKReward_Reward[3314746]["DeleteItem"] = {}
	tNewPKReward_Reward[3314746]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314746]["DeleteItem"][1]["Id"] = 3314746 -- 【库】优质翔龙武昭宝箱[属性:9]
	tNewPKReward_Reward[3314746]["RewardItem"] = {}
	tNewPKReward_Reward[3314746]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314746]["RewardItem"][1]["Id"] = 3314702 -- 优质翔龙武昭礼盒[3314702][属性:0][叠加:10000][金币:0], 【表格】优质翔龙武昭礼盒
	tNewPKReward_Reward[3314746]["RewardItem"][1]["Attr"] = "0 5" -- 优质翔龙武昭礼盒*5
	tNewPKReward_Reward[3314746]["RewardEffect"] = {}
	tNewPKReward_Reward[3314746]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314746]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314747] = {}
	-- ===优质破穹武烈宝箱
	-- ===索引:tNewPKReward_Reward[3314747]
	-- ===删除:3314747,1
	tNewPKReward_Reward[3314747]["LogId"] = 12001777
	tNewPKReward_Reward[3314747]["DeleteItem"] = {}
	tNewPKReward_Reward[3314747]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314747]["DeleteItem"][1]["Id"] = 3314747 -- 【库】优质破穹武烈宝箱[属性:9]
	tNewPKReward_Reward[3314747]["RewardItem"] = {}
	tNewPKReward_Reward[3314747]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314747]["RewardItem"][1]["Id"] = 3314703 -- 优质破穹武烈礼盒[3314703][属性:0][叠加:10000][金币:0], 【表格】优质破穹武烈礼盒
	tNewPKReward_Reward[3314747]["RewardItem"][1]["Attr"] = "0 5" -- 优质破穹武烈礼盒*5
	tNewPKReward_Reward[3314747]["RewardEffect"] = {}
	tNewPKReward_Reward[3314747]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314747]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314748] = {}
	-- ===优质精装群雄宝箱
	-- ===索引:tNewPKReward_Reward[3314748]
	-- ===删除:3314748,1
	tNewPKReward_Reward[3314748]["LogId"] = 12001777
	tNewPKReward_Reward[3314748]["DeleteItem"] = {}
	tNewPKReward_Reward[3314748]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314748]["DeleteItem"][1]["Id"] = 3314748 -- 【库】优质精装群雄宝箱[属性:9]
	tNewPKReward_Reward[3314748]["RewardItem"] = {}
	tNewPKReward_Reward[3314748]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314748]["RewardItem"][1]["Id"] = 3314704 -- 优质精装群雄礼盒[3314704][属性:0][叠加:10000][金币:0], 【表格】优质精装群雄礼盒
	tNewPKReward_Reward[3314748]["RewardItem"][1]["Attr"] = "0 5" -- 优质精装群雄礼盒*5
	tNewPKReward_Reward[3314748]["RewardEffect"] = {}
	tNewPKReward_Reward[3314748]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314748]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314749] = {}
	-- ===极品圣皇武尊宝箱
	-- ===索引:tNewPKReward_Reward[3314749]
	-- ===删除:3314749,1
	tNewPKReward_Reward[3314749]["LogId"] = 12001777
	tNewPKReward_Reward[3314749]["DeleteItem"] = {}
	tNewPKReward_Reward[3314749]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314749]["DeleteItem"][1]["Id"] = 3314749 -- 【库】极品圣皇武尊宝箱[属性:9]
	tNewPKReward_Reward[3314749]["RewardItem"] = {}
	tNewPKReward_Reward[3314749]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314749]["RewardItem"][1]["Id"] = 3314705 -- 极品圣皇武尊礼盒[3314705][属性:0][叠加:10000][金币:0], 【表格】极品圣皇武尊礼盒
	tNewPKReward_Reward[3314749]["RewardItem"][1]["Attr"] = "0 5" -- 极品圣皇武尊礼盒*5
	tNewPKReward_Reward[3314749]["RewardEffect"] = {}
	tNewPKReward_Reward[3314749]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314749]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314750] = {}
	-- ===极品翔龙武昭宝箱
	-- ===索引:tNewPKReward_Reward[3314750]
	-- ===删除:3314750,1
	tNewPKReward_Reward[3314750]["LogId"] = 12001777
	tNewPKReward_Reward[3314750]["DeleteItem"] = {}
	tNewPKReward_Reward[3314750]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314750]["DeleteItem"][1]["Id"] = 3314750 -- 【库】极品翔龙武昭宝箱[属性:9]
	tNewPKReward_Reward[3314750]["RewardItem"] = {}
	tNewPKReward_Reward[3314750]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314750]["RewardItem"][1]["Id"] = 3314706 -- 极品翔龙武昭礼盒[3314706][属性:0][叠加:10000][金币:0], 【表格】极品翔龙武昭礼盒
	tNewPKReward_Reward[3314750]["RewardItem"][1]["Attr"] = "0 5" -- 极品翔龙武昭礼盒*5
	tNewPKReward_Reward[3314750]["RewardEffect"] = {}
	tNewPKReward_Reward[3314750]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314750]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314751] = {}
	-- ===极品破穹武烈宝箱
	-- ===索引:tNewPKReward_Reward[3314751]
	-- ===删除:3314751,1
	tNewPKReward_Reward[3314751]["LogId"] = 12001777
	tNewPKReward_Reward[3314751]["DeleteItem"] = {}
	tNewPKReward_Reward[3314751]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314751]["DeleteItem"][1]["Id"] = 3314751 -- 【库】极品破穹武烈宝箱[属性:9]
	tNewPKReward_Reward[3314751]["RewardItem"] = {}
	tNewPKReward_Reward[3314751]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314751]["RewardItem"][1]["Id"] = 3314707 -- 极品破穹武烈礼盒[3314707][属性:0][叠加:10000][金币:0], 【表格】极品破穹武烈礼盒
	tNewPKReward_Reward[3314751]["RewardItem"][1]["Attr"] = "0 5" -- 极品破穹武烈礼盒*5
	tNewPKReward_Reward[3314751]["RewardEffect"] = {}
	tNewPKReward_Reward[3314751]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314751]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314752] = {}
	-- ===极品精装群雄宝箱
	-- ===索引:tNewPKReward_Reward[3314752]
	-- ===删除:3314752,1
	tNewPKReward_Reward[3314752]["LogId"] = 12001777
	tNewPKReward_Reward[3314752]["DeleteItem"] = {}
	tNewPKReward_Reward[3314752]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314752]["DeleteItem"][1]["Id"] = 3314752 -- 【库】极品精装群雄宝箱[属性:9]
	tNewPKReward_Reward[3314752]["RewardItem"] = {}
	tNewPKReward_Reward[3314752]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314752]["RewardItem"][1]["Id"] = 3314708 -- 极品精装群雄礼盒[3314708][属性:0][叠加:10000][金币:0], 【表格】极品精装群雄礼盒
	tNewPKReward_Reward[3314752]["RewardItem"][1]["Attr"] = "0 5" -- 极品精装群雄礼盒*5
	tNewPKReward_Reward[3314752]["RewardEffect"] = {}
	tNewPKReward_Reward[3314752]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314752]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314753] = {}
	-- ===良品御龙武圣宝箱
	-- ===索引:tNewPKReward_Reward[3314753]
	-- ===删除:3314753,1
	tNewPKReward_Reward[3314753]["LogId"] = 12001778
	tNewPKReward_Reward[3314753]["DeleteItem"] = {}
	tNewPKReward_Reward[3314753]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314753]["DeleteItem"][1]["Id"] = 3314753 -- 【库】良品御龙武圣宝箱[属性:9]
	tNewPKReward_Reward[3314753]["RewardItem"] = {}
	tNewPKReward_Reward[3314753]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314753]["RewardItem"][1]["Id"] = 3314710 -- 良品御龙武圣礼盒[3314710][属性:0][叠加:10000][金币:0], 【表格】良品御龙武圣礼盒
	tNewPKReward_Reward[3314753]["RewardItem"][1]["Attr"] = "0 5" -- 良品御龙武圣礼盒*5
	tNewPKReward_Reward[3314753]["RewardEffect"] = {}
	tNewPKReward_Reward[3314753]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314753]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314754] = {}
	-- ===良品应天武德宝箱
	-- ===索引:tNewPKReward_Reward[3314754]
	-- ===删除:3314754,1
	tNewPKReward_Reward[3314754]["LogId"] = 12001778
	tNewPKReward_Reward[3314754]["DeleteItem"] = {}
	tNewPKReward_Reward[3314754]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314754]["DeleteItem"][1]["Id"] = 3314754 -- 【库】良品应天武德宝箱[属性:9]
	tNewPKReward_Reward[3314754]["RewardItem"] = {}
	tNewPKReward_Reward[3314754]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314754]["RewardItem"][1]["Id"] = 3314711 -- 良品应天武德礼盒[3314711][属性:0][叠加:10000][金币:0], 【表格】良品应天武德礼盒
	tNewPKReward_Reward[3314754]["RewardItem"][1]["Attr"] = "0 5" -- 良品应天武德礼盒*5
	tNewPKReward_Reward[3314754]["RewardEffect"] = {}
	tNewPKReward_Reward[3314754]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314754]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314755] = {}
	-- ===良品承运武睿宝箱
	-- ===索引:tNewPKReward_Reward[3314755]
	-- ===删除:3314755,1
	tNewPKReward_Reward[3314755]["LogId"] = 12001778
	tNewPKReward_Reward[3314755]["DeleteItem"] = {}
	tNewPKReward_Reward[3314755]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314755]["DeleteItem"][1]["Id"] = 3314755 -- 【库】良品承运武睿宝箱[属性:9]
	tNewPKReward_Reward[3314755]["RewardItem"] = {}
	tNewPKReward_Reward[3314755]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314755]["RewardItem"][1]["Id"] = 3314712 -- 良品承运武睿礼盒[3314712][属性:0][叠加:10000][金币:0], 【表格】良品承运武睿礼盒
	tNewPKReward_Reward[3314755]["RewardItem"][1]["Attr"] = "0 5" -- 良品承运武睿礼盒*5
	tNewPKReward_Reward[3314755]["RewardEffect"] = {}
	tNewPKReward_Reward[3314755]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314755]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314756] = {}
	-- ===良品百烈豪情宝箱
	-- ===索引:tNewPKReward_Reward[3314756]
	-- ===删除:3314756,1
	tNewPKReward_Reward[3314756]["LogId"] = 12001778
	tNewPKReward_Reward[3314756]["DeleteItem"] = {}
	tNewPKReward_Reward[3314756]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314756]["DeleteItem"][1]["Id"] = 3314756 -- 【库】良品百烈豪情宝箱[属性:9]
	tNewPKReward_Reward[3314756]["RewardItem"] = {}
	tNewPKReward_Reward[3314756]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314756]["RewardItem"][1]["Id"] = 3314713 -- 良品百烈豪情礼盒[3314713][属性:0][叠加:10000][金币:0], 【表格】良品百烈豪情礼盒
	tNewPKReward_Reward[3314756]["RewardItem"][1]["Attr"] = "0 5" -- 良品百烈豪情礼盒*5
	tNewPKReward_Reward[3314756]["RewardEffect"] = {}
	tNewPKReward_Reward[3314756]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314756]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314757] = {}
	-- ===上品御龙武圣宝箱
	-- ===索引:tNewPKReward_Reward[3314757]
	-- ===删除:3314757,1
	tNewPKReward_Reward[3314757]["LogId"] = 12001778
	tNewPKReward_Reward[3314757]["DeleteItem"] = {}
	tNewPKReward_Reward[3314757]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314757]["DeleteItem"][1]["Id"] = 3314757 -- 【库】上品御龙武圣宝箱[属性:9]
	tNewPKReward_Reward[3314757]["RewardItem"] = {}
	tNewPKReward_Reward[3314757]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314757]["RewardItem"][1]["Id"] = 3314714 -- 上品御龙武圣礼盒[3314714][属性:0][叠加:10000][金币:0], 【表格】上品御龙武圣礼盒
	tNewPKReward_Reward[3314757]["RewardItem"][1]["Attr"] = "0 5" -- 上品御龙武圣礼盒*5
	tNewPKReward_Reward[3314757]["RewardEffect"] = {}
	tNewPKReward_Reward[3314757]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314757]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314758] = {}
	-- ===上品应天武德宝箱
	-- ===索引:tNewPKReward_Reward[3314758]
	-- ===删除:3314758,1
	tNewPKReward_Reward[3314758]["LogId"] = 12001778
	tNewPKReward_Reward[3314758]["DeleteItem"] = {}
	tNewPKReward_Reward[3314758]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314758]["DeleteItem"][1]["Id"] = 3314758 -- 【库】上品应天武德宝箱[属性:9]
	tNewPKReward_Reward[3314758]["RewardItem"] = {}
	tNewPKReward_Reward[3314758]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314758]["RewardItem"][1]["Id"] = 3314715 -- 上品应天武德礼盒[3314715][属性:0][叠加:10000][金币:0], 【表格】上品应天武德礼盒
	tNewPKReward_Reward[3314758]["RewardItem"][1]["Attr"] = "0 5" -- 上品应天武德礼盒*5
	tNewPKReward_Reward[3314758]["RewardEffect"] = {}
	tNewPKReward_Reward[3314758]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314758]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314759] = {}
	-- ===上品承运武睿宝箱
	-- ===索引:tNewPKReward_Reward[3314759]
	-- ===删除:3314759,1
	tNewPKReward_Reward[3314759]["LogId"] = 12001778
	tNewPKReward_Reward[3314759]["DeleteItem"] = {}
	tNewPKReward_Reward[3314759]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314759]["DeleteItem"][1]["Id"] = 3314759 -- 【库】上品承运武睿宝箱[属性:9]
	tNewPKReward_Reward[3314759]["RewardItem"] = {}
	tNewPKReward_Reward[3314759]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314759]["RewardItem"][1]["Id"] = 3314716 -- 上品承运武睿礼盒[3314716][属性:0][叠加:10000][金币:0], 【表格】上品承运武睿礼盒
	tNewPKReward_Reward[3314759]["RewardItem"][1]["Attr"] = "0 5" -- 上品承运武睿礼盒*5
	tNewPKReward_Reward[3314759]["RewardEffect"] = {}
	tNewPKReward_Reward[3314759]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314759]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314760] = {}
	-- ===上品百烈豪情宝箱
	-- ===索引:tNewPKReward_Reward[3314760]
	-- ===删除:3314760,1
	tNewPKReward_Reward[3314760]["LogId"] = 12001778
	tNewPKReward_Reward[3314760]["DeleteItem"] = {}
	tNewPKReward_Reward[3314760]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314760]["DeleteItem"][1]["Id"] = 3314760 -- 【库】上品百烈豪情宝箱[属性:9]
	tNewPKReward_Reward[3314760]["RewardItem"] = {}
	tNewPKReward_Reward[3314760]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314760]["RewardItem"][1]["Id"] = 3314717 -- 上品百烈豪情礼盒[3314717][属性:0][叠加:10000][金币:0], 【表格】上品百烈豪情礼盒
	tNewPKReward_Reward[3314760]["RewardItem"][1]["Attr"] = "0 5" -- 上品百烈豪情礼盒*5
	tNewPKReward_Reward[3314760]["RewardEffect"] = {}
	tNewPKReward_Reward[3314760]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314760]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314761] = {}
	-- ===优质御龙武圣宝箱
	-- ===索引:tNewPKReward_Reward[3314761]
	-- ===删除:3314761,1
	tNewPKReward_Reward[3314761]["LogId"] = 12001778
	tNewPKReward_Reward[3314761]["DeleteItem"] = {}
	tNewPKReward_Reward[3314761]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314761]["DeleteItem"][1]["Id"] = 3314761 -- 【库】优质御龙武圣宝箱[属性:9]
	tNewPKReward_Reward[3314761]["RewardItem"] = {}
	tNewPKReward_Reward[3314761]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314761]["RewardItem"][1]["Id"] = 3314718 -- 优质御龙武圣礼盒[3314718][属性:0][叠加:10000][金币:0], 【表格】优质御龙武圣礼盒
	tNewPKReward_Reward[3314761]["RewardItem"][1]["Attr"] = "0 5" -- 优质御龙武圣礼盒*5
	tNewPKReward_Reward[3314761]["RewardEffect"] = {}
	tNewPKReward_Reward[3314761]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314761]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314762] = {}
	-- ===优质应天武德宝箱
	-- ===索引:tNewPKReward_Reward[3314762]
	-- ===删除:3314762,1
	tNewPKReward_Reward[3314762]["LogId"] = 12001778
	tNewPKReward_Reward[3314762]["DeleteItem"] = {}
	tNewPKReward_Reward[3314762]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314762]["DeleteItem"][1]["Id"] = 3314762 -- 【库】优质应天武德宝箱[属性:9]
	tNewPKReward_Reward[3314762]["RewardItem"] = {}
	tNewPKReward_Reward[3314762]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314762]["RewardItem"][1]["Id"] = 3314719 -- 优质应天武德礼盒[3314719][属性:0][叠加:10000][金币:0], 【表格】优质应天武德礼盒
	tNewPKReward_Reward[3314762]["RewardItem"][1]["Attr"] = "0 5" -- 优质应天武德礼盒*5
	tNewPKReward_Reward[3314762]["RewardEffect"] = {}
	tNewPKReward_Reward[3314762]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314762]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314763] = {}
	-- ===优质承运武睿宝箱
	-- ===索引:tNewPKReward_Reward[3314763]
	-- ===删除:3314763,1
	tNewPKReward_Reward[3314763]["LogId"] = 12001778
	tNewPKReward_Reward[3314763]["DeleteItem"] = {}
	tNewPKReward_Reward[3314763]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314763]["DeleteItem"][1]["Id"] = 3314763 -- 【库】优质承运武睿宝箱[属性:9]
	tNewPKReward_Reward[3314763]["RewardItem"] = {}
	tNewPKReward_Reward[3314763]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314763]["RewardItem"][1]["Id"] = 3314720 -- 优质承运武睿礼盒[3314720][属性:0][叠加:10000][金币:0], 【表格】优质承运武睿礼盒
	tNewPKReward_Reward[3314763]["RewardItem"][1]["Attr"] = "0 5" -- 优质承运武睿礼盒*5
	tNewPKReward_Reward[3314763]["RewardEffect"] = {}
	tNewPKReward_Reward[3314763]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314763]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314764] = {}
	-- ===优质百烈豪情宝箱
	-- ===索引:tNewPKReward_Reward[3314764]
	-- ===删除:3314764,1
	tNewPKReward_Reward[3314764]["LogId"] = 12001778
	tNewPKReward_Reward[3314764]["DeleteItem"] = {}
	tNewPKReward_Reward[3314764]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314764]["DeleteItem"][1]["Id"] = 3314764 -- 【库】优质百烈豪情宝箱[属性:9]
	tNewPKReward_Reward[3314764]["RewardItem"] = {}
	tNewPKReward_Reward[3314764]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314764]["RewardItem"][1]["Id"] = 3314721 -- 优质百烈豪情礼盒[3314721][属性:0][叠加:10000][金币:0], 【表格】优质百烈豪情礼盒
	tNewPKReward_Reward[3314764]["RewardItem"][1]["Attr"] = "0 5" -- 优质百烈豪情礼盒*5
	tNewPKReward_Reward[3314764]["RewardEffect"] = {}
	tNewPKReward_Reward[3314764]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314764]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314765] = {}
	-- ===极品御龙武圣宝箱
	-- ===索引:tNewPKReward_Reward[3314765]
	-- ===删除:3314765,1
	tNewPKReward_Reward[3314765]["LogId"] = 12001778
	tNewPKReward_Reward[3314765]["DeleteItem"] = {}
	tNewPKReward_Reward[3314765]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314765]["DeleteItem"][1]["Id"] = 3314765 -- 【库】极品御龙武圣宝箱[属性:9]
	tNewPKReward_Reward[3314765]["RewardItem"] = {}
	tNewPKReward_Reward[3314765]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314765]["RewardItem"][1]["Id"] = 3314722 -- 极品御龙武圣礼盒[3314722][属性:0][叠加:10000][金币:0], 【表格】极品御龙武圣礼盒
	tNewPKReward_Reward[3314765]["RewardItem"][1]["Attr"] = "0 5" -- 极品御龙武圣礼盒*5
	tNewPKReward_Reward[3314765]["RewardEffect"] = {}
	tNewPKReward_Reward[3314765]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314765]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314766] = {}
	-- ===极品应天武德宝箱
	-- ===索引:tNewPKReward_Reward[3314766]
	-- ===删除:3314766,1
	tNewPKReward_Reward[3314766]["LogId"] = 12001778
	tNewPKReward_Reward[3314766]["DeleteItem"] = {}
	tNewPKReward_Reward[3314766]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314766]["DeleteItem"][1]["Id"] = 3314766 -- 【库】极品应天武德宝箱[属性:9]
	tNewPKReward_Reward[3314766]["RewardItem"] = {}
	tNewPKReward_Reward[3314766]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314766]["RewardItem"][1]["Id"] = 3314723 -- 极品应天武德礼盒[3314723][属性:0][叠加:10000][金币:0], 【表格】极品应天武德礼盒
	tNewPKReward_Reward[3314766]["RewardItem"][1]["Attr"] = "0 5" -- 极品应天武德礼盒*5
	tNewPKReward_Reward[3314766]["RewardEffect"] = {}
	tNewPKReward_Reward[3314766]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314766]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314767] = {}
	-- ===极品承运武睿宝箱
	-- ===索引:tNewPKReward_Reward[3314767]
	-- ===删除:3314767,1
	tNewPKReward_Reward[3314767]["LogId"] = 12001778
	tNewPKReward_Reward[3314767]["DeleteItem"] = {}
	tNewPKReward_Reward[3314767]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314767]["DeleteItem"][1]["Id"] = 3314767 -- 【库】极品承运武睿宝箱[属性:9]
	tNewPKReward_Reward[3314767]["RewardItem"] = {}
	tNewPKReward_Reward[3314767]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314767]["RewardItem"][1]["Id"] = 3314724 -- 极品承运武睿礼盒[3314724][属性:0][叠加:10000][金币:0], 【表格】极品承运武睿礼盒
	tNewPKReward_Reward[3314767]["RewardItem"][1]["Attr"] = "0 5" -- 极品承运武睿礼盒*5
	tNewPKReward_Reward[3314767]["RewardEffect"] = {}
	tNewPKReward_Reward[3314767]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314767]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Reward[3314768] = {}
	-- ===极品百烈豪情宝箱
	-- ===索引:tNewPKReward_Reward[3314768]
	-- ===删除:3314768,1
	tNewPKReward_Reward[3314768]["LogId"] = 12001778
	tNewPKReward_Reward[3314768]["DeleteItem"] = {}
	tNewPKReward_Reward[3314768]["DeleteItem"][1] = {}
	tNewPKReward_Reward[3314768]["DeleteItem"][1]["Id"] = 3314768 -- 【库】极品百烈豪情宝箱[属性:9]
	tNewPKReward_Reward[3314768]["RewardItem"] = {}
	tNewPKReward_Reward[3314768]["RewardItem"][1] = {}
	tNewPKReward_Reward[3314768]["RewardItem"][1]["Id"] = 3314725 -- 极品百烈豪情礼盒[3314725][属性:0][叠加:10000][金币:0], 【表格】极品百烈豪情礼盒
	tNewPKReward_Reward[3314768]["RewardItem"][1]["Attr"] = "0 5" -- 极品百烈豪情礼盒*5
	tNewPKReward_Reward[3314768]["RewardEffect"] = {}
	tNewPKReward_Reward[3314768]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Reward[3314768]["RewardEffect"]["Effect"] = "angelwing"
	
	local tNewPKReward_Data={}
	
	tNewPKReward_Data[3327115] = {}
	-- ===新PK周赛随机礼包 
	-- ===索引:tNewPKReward_Data[3327115][1]
	-- ===删除: 3327115,1
	-- ===
	-- ===
	-- ===
	tNewPKReward_Data[3327115][1] = {}
	tNewPKReward_Data[3327115][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Data[3327115][1]["DeleteItem"] = {}
	tNewPKReward_Data[3327115][1]["DeleteItem"][1] = {}
	tNewPKReward_Data[3327115][1]["DeleteItem"][1]["Id"] = 3327115 -- 【库】PK赛精锐礼包[属性:9]
	tNewPKReward_Data[3327115][1]["LogId"] = 12001773
	-- +9黄色神纹随机包（限时）-- 【必给】
	tNewPKReward_Data[3327115][1][1] = {}
	tNewPKReward_Data[3327115][1][1]["RandomItemChanceType"] = 1
	tNewPKReward_Data[3327115][1][1]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][1]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][1]["RewardItem"][1]["Id"] = 3314727 -- +9黄色神纹随机包（限时）[3314727][属性:9][叠加:0][金币:0], 【表格】+9黄色神纹随机包（限时）
	tNewPKReward_Data[3327115][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的+9黄色神纹随机包（限时）*1
	tNewPKReward_Data[3327115][1][1]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 8%
	tNewPKReward_Data[3327115][1][2] = {}
	tNewPKReward_Data[3327115][1][2]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][2]["ItemChance"] = 800
	tNewPKReward_Data[3327115][1][2]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][2]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Data[3327115][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNewPKReward_Data[3327115][1][2]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Data[3327115][1][3] = {}
	tNewPKReward_Data[3327115][1][3]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][3]["ItemChance"] = 800
	tNewPKReward_Data[3327115][1][3]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][3]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Data[3327115][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Data[3327115][1][3]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Data[3327115][1][4] = {}
	tNewPKReward_Data[3327115][1][4]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][4]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][1][4]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][4]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Data[3327115][1][4]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNewPKReward_Data[3327115][1][4]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 12%
	tNewPKReward_Data[3327115][1][5] = {}
	tNewPKReward_Data[3327115][1][5]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][5]["ItemChance"] = 1200
	tNewPKReward_Data[3327115][1][5]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][5]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][5]["RewardItem"][1]["Id"] = 3006245 -- 60分钟经验礼包[3006245][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Data[3327115][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 60分钟经验礼包*1
	tNewPKReward_Data[3327115][1][5]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品神纹源晶 - 2%
	tNewPKReward_Data[3327115][1][6] = {}
	tNewPKReward_Data[3327115][1][6]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][6]["ItemChance"] = 200
	tNewPKReward_Data[3327115][1][6]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][6]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][6]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Data[3327115][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Data[3327115][1][6]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Data[3327115][1][7] = {}
	tNewPKReward_Data[3327115][1][7]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][7]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][1][7]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][7]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][7]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Data[3327115][1][7]["RewardItem"][1]["Attr"] = "0 1" -- +2马匹（赠）福禄袋*1
	tNewPKReward_Data[3327115][1][7]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327115][1][8] = {}
	tNewPKReward_Data[3327115][1][8]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][8]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][1][8]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][8]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][8]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Data[3327115][1][8]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tNewPKReward_Data[3327115][1][8]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327115][1][9] = {}
	tNewPKReward_Data[3327115][1][9]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][9]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][1][9]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][9]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][9]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Data[3327115][1][9]["RewardItem"][1]["Attr"] = "0 10 3" -- 蓝色神纹精粹（赠）*10
	tNewPKReward_Data[3327115][1][9]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327115][1][10] = {}
	tNewPKReward_Data[3327115][1][10]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][10]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][1][10]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][10]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][10]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Data[3327115][1][10]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tNewPKReward_Data[3327115][1][10]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327115][1][11] = {}
	tNewPKReward_Data[3327115][1][11]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][11]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][1][11]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][11]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][11]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Data[3327115][1][11]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tNewPKReward_Data[3327115][1][11]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327115][1][12] = {}
	tNewPKReward_Data[3327115][1][12]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][1][12]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][1][12]["RewardItem"] = {}
	tNewPKReward_Data[3327115][1][12]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][1][12]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Data[3327115][1][12]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tNewPKReward_Data[3327115][1][12]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][1][12]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Data[3327115][2] = {}
	-- ===新PK周赛随机礼包 
	-- ===索引:tNewPKReward_Data[3327115][2]
	-- ===删除: 3327115,1
	-- ===
	-- ===
	-- ===
	tNewPKReward_Data[3327115][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Data[3327115][2]["DeleteItem"] = {}
	tNewPKReward_Data[3327115][2]["DeleteItem"][1] = {}
	tNewPKReward_Data[3327115][2]["DeleteItem"][1]["Id"] = 3327115 -- 【库】PK赛精锐礼包[属性:9]
	tNewPKReward_Data[3327115][2]["LogId"] = 12001773
	-- +9黄色神纹随机包（限时）-- 【必给】
	tNewPKReward_Data[3327115][2][1] = {}
	tNewPKReward_Data[3327115][2][1]["RandomItemChanceType"] = 1
	tNewPKReward_Data[3327115][2][1]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][1]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][1]["RewardItem"][1]["Id"] = 3314727 -- +9黄色神纹随机包（限时）[3314727][属性:9][叠加:0][金币:0], 【表格】+9黄色神纹随机包（限时）
	tNewPKReward_Data[3327115][2][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的+9黄色神纹随机包（限时）*2
	tNewPKReward_Data[3327115][2][1]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 8%
	tNewPKReward_Data[3327115][2][2] = {}
	tNewPKReward_Data[3327115][2][2]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][2]["ItemChance"] = 800
	tNewPKReward_Data[3327115][2][2]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][2]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Data[3327115][2][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Data[3327115][2][2]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Data[3327115][2][3] = {}
	tNewPKReward_Data[3327115][2][3]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][3]["ItemChance"] = 800
	tNewPKReward_Data[3327115][2][3]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][3]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Data[3327115][2][3]["RewardItem"][1]["Attr"] = "0 2" -- 龙鳞果*2
	tNewPKReward_Data[3327115][2][3]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Data[3327115][2][4] = {}
	tNewPKReward_Data[3327115][2][4]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][4]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][2][4]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][4]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Data[3327115][2][4]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Data[3327115][2][4]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 12%
	tNewPKReward_Data[3327115][2][5] = {}
	tNewPKReward_Data[3327115][2][5]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][5]["ItemChance"] = 1200
	tNewPKReward_Data[3327115][2][5]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][5]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][5]["RewardItem"][1]["Id"] = 3006245 -- 60分钟经验礼包[3006245][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Data[3327115][2][5]["RewardItem"][1]["Attr"] = "0 2" -- 60分钟经验礼包*2
	tNewPKReward_Data[3327115][2][5]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品神纹源晶 - 2%
	tNewPKReward_Data[3327115][2][6] = {}
	tNewPKReward_Data[3327115][2][6]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][6]["ItemChance"] = 200
	tNewPKReward_Data[3327115][2][6]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][6]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][6]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Data[3327115][2][6]["RewardItem"][1]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Data[3327115][2][6]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Data[3327115][2][7] = {}
	tNewPKReward_Data[3327115][2][7]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][7]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][2][7]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][7]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][7]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Data[3327115][2][7]["RewardItem"][1]["Attr"] = "0 2" -- +2马匹（赠）福禄袋*2
	tNewPKReward_Data[3327115][2][7]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327115][2][8] = {}
	tNewPKReward_Data[3327115][2][8]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][8]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][2][8]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][8]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][8]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Data[3327115][2][8]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹（赠）*20
	tNewPKReward_Data[3327115][2][8]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327115][2][9] = {}
	tNewPKReward_Data[3327115][2][9]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][9]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][2][9]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][9]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][9]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Data[3327115][2][9]["RewardItem"][1]["Attr"] = "0 20 3" -- 蓝色神纹精粹（赠）*20
	tNewPKReward_Data[3327115][2][9]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327115][2][10] = {}
	tNewPKReward_Data[3327115][2][10]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][10]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][2][10]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][10]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][10]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Data[3327115][2][10]["RewardItem"][1]["Attr"] = "0 4" -- 红色神纹碎片*4
	tNewPKReward_Data[3327115][2][10]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327115][2][11] = {}
	tNewPKReward_Data[3327115][2][11]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][11]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][2][11]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][11]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][11]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Data[3327115][2][11]["RewardItem"][1]["Attr"] = "0 4" -- 黄色神纹碎片*4
	tNewPKReward_Data[3327115][2][11]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327115][2][12] = {}
	tNewPKReward_Data[3327115][2][12]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327115][2][12]["ItemChance"] = 1000
	tNewPKReward_Data[3327115][2][12]["RewardItem"] = {}
	tNewPKReward_Data[3327115][2][12]["RewardItem"][1] = {}
	tNewPKReward_Data[3327115][2][12]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Data[3327115][2][12]["RewardItem"][1]["Attr"] = "0 4" -- 蓝色神纹碎片*4
	tNewPKReward_Data[3327115][2][12]["RewardEffect"] = {}
	tNewPKReward_Data[3327115][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327115][2][12]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Data[3327121] = {}
	-- ===PK月赛参与礼包 
	-- ===索引:tNewPKReward_Data[3327121][1]
	-- ===删除: 3327121,1
	-- ===
	-- ===
	-- ===
	tNewPKReward_Data[3327121][1] = {}
	tNewPKReward_Data[3327121][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Data[3327121][1]["DeleteItem"] = {}
	tNewPKReward_Data[3327121][1]["DeleteItem"][1] = {}
	tNewPKReward_Data[3327121][1]["DeleteItem"][1]["Id"] = 3327121 -- 【库】PK赛精锐礼包[属性:9]
	tNewPKReward_Data[3327121][1]["LogId"] = 12001773
	-- +9黄色神纹随机包（限时）-- 【必给】
	tNewPKReward_Data[3327121][1][1] = {}
	tNewPKReward_Data[3327121][1][1]["RandomItemChanceType"] = 1
	tNewPKReward_Data[3327121][1][1]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][1]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][1]["RewardItem"][1]["Id"] = 3314727 -- +9黄色神纹随机包（限时）[3314727][属性:9][叠加:0][金币:0], 【表格】+9黄色神纹随机包（限时）
	tNewPKReward_Data[3327121][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的+9黄色神纹随机包（限时）*1
	tNewPKReward_Data[3327121][1][1]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 8%
	tNewPKReward_Data[3327121][1][2] = {}
	tNewPKReward_Data[3327121][1][2]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][2]["ItemChance"] = 800
	tNewPKReward_Data[3327121][1][2]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][2]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Data[3327121][1][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNewPKReward_Data[3327121][1][2]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Data[3327121][1][3] = {}
	tNewPKReward_Data[3327121][1][3]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][3]["ItemChance"] = 800
	tNewPKReward_Data[3327121][1][3]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][3]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Data[3327121][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Data[3327121][1][3]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Data[3327121][1][4] = {}
	tNewPKReward_Data[3327121][1][4]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][4]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][1][4]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][4]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Data[3327121][1][4]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNewPKReward_Data[3327121][1][4]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 12%
	tNewPKReward_Data[3327121][1][5] = {}
	tNewPKReward_Data[3327121][1][5]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][5]["ItemChance"] = 1200
	tNewPKReward_Data[3327121][1][5]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][5]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][5]["RewardItem"][1]["Id"] = 3006245 -- 60分钟经验礼包[3006245][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Data[3327121][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 60分钟经验礼包*1
	tNewPKReward_Data[3327121][1][5]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品神纹源晶 - 2%
	tNewPKReward_Data[3327121][1][6] = {}
	tNewPKReward_Data[3327121][1][6]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][6]["ItemChance"] = 200
	tNewPKReward_Data[3327121][1][6]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][6]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][6]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Data[3327121][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 良品神纹源晶*1
	tNewPKReward_Data[3327121][1][6]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Data[3327121][1][7] = {}
	tNewPKReward_Data[3327121][1][7]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][7]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][1][7]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][7]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][7]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Data[3327121][1][7]["RewardItem"][1]["Attr"] = "0 1" -- +2马匹（赠）福禄袋*1
	tNewPKReward_Data[3327121][1][7]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327121][1][8] = {}
	tNewPKReward_Data[3327121][1][8]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][8]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][1][8]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][8]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][8]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Data[3327121][1][8]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tNewPKReward_Data[3327121][1][8]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327121][1][9] = {}
	tNewPKReward_Data[3327121][1][9]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][9]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][1][9]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][9]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][9]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Data[3327121][1][9]["RewardItem"][1]["Attr"] = "0 10 3" -- 蓝色神纹精粹（赠）*10
	tNewPKReward_Data[3327121][1][9]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327121][1][10] = {}
	tNewPKReward_Data[3327121][1][10]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][10]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][1][10]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][10]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][10]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Data[3327121][1][10]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tNewPKReward_Data[3327121][1][10]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327121][1][11] = {}
	tNewPKReward_Data[3327121][1][11]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][11]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][1][11]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][11]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][11]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Data[3327121][1][11]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tNewPKReward_Data[3327121][1][11]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327121][1][12] = {}
	tNewPKReward_Data[3327121][1][12]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][1][12]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][1][12]["RewardItem"] = {}
	tNewPKReward_Data[3327121][1][12]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][1][12]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Data[3327121][1][12]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tNewPKReward_Data[3327121][1][12]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][1][12]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Data[3327121][2] = {}
	-- ===PK月赛参与礼包 
	-- ===索引:tNewPKReward_Data[3327121][2]
	-- ===删除: 3327121,1
	-- ===
	-- ===
	-- ===
	tNewPKReward_Data[3327121][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Data[3327121][2]["DeleteItem"] = {}
	tNewPKReward_Data[3327121][2]["DeleteItem"][1] = {}
	tNewPKReward_Data[3327121][2]["DeleteItem"][1]["Id"] = 3327121 -- 【库】PK赛精锐礼包[属性:9]
	tNewPKReward_Data[3327121][2]["LogId"] = 12001773
	-- +9黄色神纹随机包（限时）-- 【必给】
	tNewPKReward_Data[3327121][2][1] = {}
	tNewPKReward_Data[3327121][2][1]["RandomItemChanceType"] = 1
	tNewPKReward_Data[3327121][2][1]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][1]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][1]["RewardItem"][1]["Id"] = 3314727 -- +9黄色神纹随机包（限时）[3314727][属性:9][叠加:0][金币:0], 【表格】+9黄色神纹随机包（限时）
	tNewPKReward_Data[3327121][2][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的+9黄色神纹随机包（限时）*2
	tNewPKReward_Data[3327121][2][1]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 8%
	tNewPKReward_Data[3327121][2][2] = {}
	tNewPKReward_Data[3327121][2][2]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][2]["ItemChance"] = 800
	tNewPKReward_Data[3327121][2][2]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][2]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][2]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Data[3327121][2][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Data[3327121][2][2]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 8%
	tNewPKReward_Data[3327121][2][3] = {}
	tNewPKReward_Data[3327121][2][3]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][3]["ItemChance"] = 800
	tNewPKReward_Data[3327121][2][3]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][3]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][3]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Data[3327121][2][3]["RewardItem"][1]["Attr"] = "0 2" -- 龙鳞果*2
	tNewPKReward_Data[3327121][2][3]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Data[3327121][2][4] = {}
	tNewPKReward_Data[3327121][2][4]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][4]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][2][4]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][4]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][4]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Data[3327121][2][4]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Data[3327121][2][4]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 12%
	tNewPKReward_Data[3327121][2][5] = {}
	tNewPKReward_Data[3327121][2][5]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][5]["ItemChance"] = 1200
	tNewPKReward_Data[3327121][2][5]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][5]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][5]["RewardItem"][1]["Id"] = 3006245 -- 60分钟经验礼包[3006245][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Data[3327121][2][5]["RewardItem"][1]["Attr"] = "0 2" -- 60分钟经验礼包*2
	tNewPKReward_Data[3327121][2][5]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品神纹源晶 - 2%
	tNewPKReward_Data[3327121][2][6] = {}
	tNewPKReward_Data[3327121][2][6]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][6]["ItemChance"] = 200
	tNewPKReward_Data[3327121][2][6]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][6]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][6]["RewardItem"][1]["Id"] = 3311820 -- 良品神纹源晶[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶
	tNewPKReward_Data[3327121][2][6]["RewardItem"][1]["Attr"] = "0 2" -- 良品神纹源晶*2
	tNewPKReward_Data[3327121][2][6]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Data[3327121][2][7] = {}
	tNewPKReward_Data[3327121][2][7]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][7]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][2][7]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][7]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][7]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Data[3327121][2][7]["RewardItem"][1]["Attr"] = "0 2" -- +2马匹（赠）福禄袋*2
	tNewPKReward_Data[3327121][2][7]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327121][2][8] = {}
	tNewPKReward_Data[3327121][2][8]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][8]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][2][8]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][8]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][8]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Data[3327121][2][8]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹（赠）*20
	tNewPKReward_Data[3327121][2][8]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327121][2][9] = {}
	tNewPKReward_Data[3327121][2][9]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][9]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][2][9]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][9]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][9]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Data[3327121][2][9]["RewardItem"][1]["Attr"] = "0 20 3" -- 蓝色神纹精粹（赠）*20
	tNewPKReward_Data[3327121][2][9]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327121][2][10] = {}
	tNewPKReward_Data[3327121][2][10]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][10]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][2][10]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][10]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][10]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Data[3327121][2][10]["RewardItem"][1]["Attr"] = "0 4" -- 红色神纹碎片*4
	tNewPKReward_Data[3327121][2][10]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327121][2][11] = {}
	tNewPKReward_Data[3327121][2][11]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][11]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][2][11]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][11]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][11]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Data[3327121][2][11]["RewardItem"][1]["Attr"] = "0 4" -- 黄色神纹碎片*4
	tNewPKReward_Data[3327121][2][11]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327121][2][12] = {}
	tNewPKReward_Data[3327121][2][12]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327121][2][12]["ItemChance"] = 1000
	tNewPKReward_Data[3327121][2][12]["RewardItem"] = {}
	tNewPKReward_Data[3327121][2][12]["RewardItem"][1] = {}
	tNewPKReward_Data[3327121][2][12]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Data[3327121][2][12]["RewardItem"][1]["Attr"] = "0 4" -- 蓝色神纹碎片*4
	tNewPKReward_Data[3327121][2][12]["RewardEffect"] = {}
	tNewPKReward_Data[3327121][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327121][2][12]["RewardEffect"]["Effect"] = "angelwing"

	
	
	tNewPKReward_Data[3327132] = {}
	-- ===职业PK参与礼包
	-- ===索引:tNewPKReward_Data[3327132][1]
	-- ===删除: 3327132,1
	-- ===
	-- ===
	-- ===
	-- ===
	tNewPKReward_Data[3327132][1] = {}
	tNewPKReward_Data[3327132][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Data[3327132][1]["DeleteItem"] = {}
	tNewPKReward_Data[3327132][1]["DeleteItem"][1] = {}
	tNewPKReward_Data[3327132][1]["DeleteItem"][1]["Id"] = 3327132 -- 【库】职业PK参与礼包[属性:9]
	tNewPKReward_Data[3327132][1]["LogId"] = 12001773
	-- 明亮星陨石 - 10%
	tNewPKReward_Data[3327132][1][1] = {}
	tNewPKReward_Data[3327132][1][1]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][1]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][1]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][1]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Data[3327132][1][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tNewPKReward_Data[3327132][1][1]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 9.9%
	tNewPKReward_Data[3327132][1][2] = {}
	tNewPKReward_Data[3327132][1][2]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][2]["ItemChance"] = 990
	tNewPKReward_Data[3327132][1][2]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][2]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Data[3327132][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1
	tNewPKReward_Data[3327132][1][2]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Data[3327132][1][3] = {}
	tNewPKReward_Data[3327132][1][3]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][3]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][3]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][3]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Data[3327132][1][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*1
	tNewPKReward_Data[3327132][1][3]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 10%
	tNewPKReward_Data[3327132][1][4] = {}
	tNewPKReward_Data[3327132][1][4]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][4]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][4]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][4]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][4]["RewardItem"][1]["Id"] = 3006245 -- 60分钟经验礼包[3006245][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Data[3327132][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 60分钟经验礼包*1
	tNewPKReward_Data[3327132][1][4]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 0.1%
	tNewPKReward_Data[3327132][1][5] = {}
	tNewPKReward_Data[3327132][1][5]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][5]["ItemChance"] = 10
	tNewPKReward_Data[3327132][1][5]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][5]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tNewPKReward_Data[3327132][1][5]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的+5赤炼石（赠）*1
	tNewPKReward_Data[3327132][1][5]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Data[3327132][1][6] = {}
	tNewPKReward_Data[3327132][1][6]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][6]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][6]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][6]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][6]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Data[3327132][1][6]["RewardItem"][1]["Attr"] = "0 1" -- +2马匹（赠）福禄袋*1
	tNewPKReward_Data[3327132][1][6]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327132][1][7] = {}
	tNewPKReward_Data[3327132][1][7]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][7]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][7]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][7]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][7]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Data[3327132][1][7]["RewardItem"][1]["Attr"] = "0 10 3" -- 黄色神纹精粹（赠）*10
	tNewPKReward_Data[3327132][1][7]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327132][1][8] = {}
	tNewPKReward_Data[3327132][1][8]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][8]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][8]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][8]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][8]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Data[3327132][1][8]["RewardItem"][1]["Attr"] = "0 10 3" -- 蓝色神纹精粹（赠）*10
	tNewPKReward_Data[3327132][1][8]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327132][1][9] = {}
	tNewPKReward_Data[3327132][1][9]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][9]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][9]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][9]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][9]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Data[3327132][1][9]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tNewPKReward_Data[3327132][1][9]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327132][1][10] = {}
	tNewPKReward_Data[3327132][1][10]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][10]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][10]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][10]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][10]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Data[3327132][1][10]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tNewPKReward_Data[3327132][1][10]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327132][1][11] = {}
	tNewPKReward_Data[3327132][1][11]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][1][11]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][1][11]["RewardItem"] = {}
	tNewPKReward_Data[3327132][1][11]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][1][11]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Data[3327132][1][11]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tNewPKReward_Data[3327132][1][11]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tNewPKReward_Data[3327132][2] = {}
	-- ===职业PK参与礼包
	-- ===索引:tNewPKReward_Data[3327132][2]
	-- ===删除: 3327132,1
	-- ===
	-- ===
	-- ===
	-- ===
	tNewPKReward_Data[3327132][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPKReward_Data[3327132][2]["DeleteItem"] = {}
	tNewPKReward_Data[3327132][2]["DeleteItem"][1] = {}
	tNewPKReward_Data[3327132][2]["DeleteItem"][1]["Id"] = 3327132 -- 【库】职业PK参与礼包[属性:9]
	tNewPKReward_Data[3327132][2]["LogId"] = 12001773
	-- 明亮星陨石 - 10%
	tNewPKReward_Data[3327132][2][1] = {}
	tNewPKReward_Data[3327132][2][1]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][1]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][1]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][1]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][1]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPKReward_Data[3327132][2][1]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的明亮星陨石*2
	tNewPKReward_Data[3327132][2][1]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙鳞果 - 9.9%
	tNewPKReward_Data[3327132][2][2] = {}
	tNewPKReward_Data[3327132][2][2]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][2]["ItemChance"] = 990
	tNewPKReward_Data[3327132][2][2]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][2]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][2]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tNewPKReward_Data[3327132][2][2]["RewardItem"][1]["Attr"] = "0 2" -- 龙鳞果*2
	tNewPKReward_Data[3327132][2][2]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+2 - 10%
	tNewPKReward_Data[3327132][2][3] = {}
	tNewPKReward_Data[3327132][2][3]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][3]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][3]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][3]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][3]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tNewPKReward_Data[3327132][2][3]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+2赤炼石（赠）*2
	tNewPKReward_Data[3327132][2][3]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 60分钟经验礼包 - 10%
	tNewPKReward_Data[3327132][2][4] = {}
	tNewPKReward_Data[3327132][2][4]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][4]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][4]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][4]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][4]["RewardItem"][1]["Id"] = 3006245 -- 60分钟经验礼包[3006245][属性:9][叠加:10000][金币:0], 【表格】60分钟经验礼包
	tNewPKReward_Data[3327132][2][4]["RewardItem"][1]["Attr"] = "0 2" -- 60分钟经验礼包*2
	tNewPKReward_Data[3327132][2][4]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5 - 0.1%
	tNewPKReward_Data[3327132][2][5] = {}
	tNewPKReward_Data[3327132][2][5]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][5]["ItemChance"] = 10
	tNewPKReward_Data[3327132][2][5]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][5]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5
	tNewPKReward_Data[3327132][2][5]["RewardItem"][1]["Attr"] = "0 2 3 2880 1" -- 2天时效(激活)的+5赤炼石（赠）*2
	tNewPKReward_Data[3327132][2][5]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+2马匹（赠） - 10%
	tNewPKReward_Data[3327132][2][6] = {}
	tNewPKReward_Data[3327132][2][6]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][6]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][6]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][6]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][6]["RewardItem"][1]["Id"] = 3303247 -- +2马匹（赠）福禄袋[3303247][属性:11][叠加:0][金币:0], 【表格】‘+2马匹（赠）
	tNewPKReward_Data[3327132][2][6]["RewardItem"][1]["Attr"] = "0 2" -- +2马匹（赠）福禄袋*2
	tNewPKReward_Data[3327132][2][6]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个黄色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327132][2][7] = {}
	tNewPKReward_Data[3327132][2][7]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][7]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][7]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][7]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][7]["RewardItem"][1]["Id"] = 4050001 -- 黄色神纹精粹[4050001][属性:9][叠加:10000][金币:0], 【表格】10个黄色神纹精粹（赠）
	tNewPKReward_Data[3327132][2][7]["RewardItem"][1]["Attr"] = "0 20 3" -- 黄色神纹精粹（赠）*20
	tNewPKReward_Data[3327132][2][7]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10个蓝色神纹精粹（赠） - 10%
	tNewPKReward_Data[3327132][2][8] = {}
	tNewPKReward_Data[3327132][2][8]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][8]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][8]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][8]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][8]["RewardItem"][1]["Id"] = 4040001 -- 蓝色神纹精粹[4040001][属性:9][叠加:10000][金币:0], 【表格】10个蓝色神纹精粹（赠）
	tNewPKReward_Data[3327132][2][8]["RewardItem"][1]["Attr"] = "0 20 3" -- 蓝色神纹精粹（赠）*20
	tNewPKReward_Data[3327132][2][8]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个红色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327132][2][9] = {}
	tNewPKReward_Data[3327132][2][9]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][9]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][9]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][9]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][9]["RewardItem"][1]["Id"] = 3306369 -- 红色神纹碎片[3306369][属性:9][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tNewPKReward_Data[3327132][2][9]["RewardItem"][1]["Attr"] = "0 4" -- 红色神纹碎片*4
	tNewPKReward_Data[3327132][2][9]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个黄色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327132][2][10] = {}
	tNewPKReward_Data[3327132][2][10]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][10]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][10]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][10]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][10]["RewardItem"][1]["Id"] = 3306370 -- 黄色神纹碎片[3306370][属性:9][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tNewPKReward_Data[3327132][2][10]["RewardItem"][1]["Attr"] = "0 4" -- 黄色神纹碎片*4
	tNewPKReward_Data[3327132][2][10]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 2个蓝色神纹碎片（赠） - 10%
	tNewPKReward_Data[3327132][2][11] = {}
	tNewPKReward_Data[3327132][2][11]["RandomItemChanceType"] = 2
	tNewPKReward_Data[3327132][2][11]["ItemChance"] = 1000
	tNewPKReward_Data[3327132][2][11]["RewardItem"] = {}
	tNewPKReward_Data[3327132][2][11]["RewardItem"][1] = {}
	tNewPKReward_Data[3327132][2][11]["RewardItem"][1]["Id"] = 3306371 -- 蓝色神纹碎片[3306371][属性:9][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tNewPKReward_Data[3327132][2][11]["RewardItem"][1]["Attr"] = "0 4" -- 蓝色神纹碎片*4
	tNewPKReward_Data[3327132][2][11]["RewardEffect"] = {}
	tNewPKReward_Data[3327132][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[3327132][2][11]["RewardEffect"]["Effect"] = "angelwing"

	
	tNewPKReward_Data[0] = {}
	-- ===参与奖
	-- ===索引:tNewPKReward_Data[0]
	-- ===
	-- ===
	-- ===
	-- ===
	tNewPKReward_Data[0][0]={}
	tNewPKReward_Data[0][0]["LogId"] = 12001773
	tNewPKReward_Data[0][0]["RewardItem"] = {}
	tNewPKReward_Data[0][0]["RewardItem"][1] = {}
	tNewPKReward_Data[0][0]["RewardItem"][1]["Id"] = 3327132 --  3327132 【库里没有该物品】, 【表格】职业PK参与礼包
	tNewPKReward_Data[0][0]["RewardItem"][1]["Attr"] = "0 1" --  3327132 【库里没有该物品】*1
	tNewPKReward_Data[0][0]["RewardEffect"] = {}
	tNewPKReward_Data[0][0]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[0][0]["RewardEffect"]["Effect"] = "angelwing"

	
	--pk周赛
	tNewPKReward_Data[0][1] = {}
	tNewPKReward_Data[0][1]["LogId"] = 12001773
	tNewPKReward_Data[0][1]["RewardItem"] = {}
	tNewPKReward_Data[0][1]["RewardItem"][1] = {}
	tNewPKReward_Data[0][1]["RewardItem"][1]["Id"] = 3327115 --  3327115 【库里没有该物品】, 【表格】职业PK参与礼包
	tNewPKReward_Data[0][1]["RewardItem"][1]["Attr"] = "0 1" --  3327115 【库里没有该物品】*1
	tNewPKReward_Data[0][1]["RewardEffect"] = {}
	tNewPKReward_Data[0][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[0][1]["RewardEffect"]["Effect"] = "angelwing"


	
	--pk月赛
	tNewPKReward_Data[0][2] = {}
	tNewPKReward_Data[0][2]["LogId"] = 12001773
	tNewPKReward_Data[0][2]["RewardItem"] = {}
	tNewPKReward_Data[0][2]["RewardItem"][1] = {}
	tNewPKReward_Data[0][2]["RewardItem"][1]["Id"] = 3327115 --  3327115 【库里没有该物品】, 【表格】职业PK参与礼包
	tNewPKReward_Data[0][2]["RewardItem"][1]["Attr"] = "0 1" --  3327115 【库里没有该物品】*1
	tNewPKReward_Data[0][2]["RewardEffect"] = {}
	tNewPKReward_Data[0][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[0][2]["RewardEffect"]["Effect"] = "angelwing"
                              

	
	--战斗力pk赛
	tNewPKReward_Data[0][3] = {}
	tNewPKReward_Data[0][3]["LogId"] = 12001773
	tNewPKReward_Data[0][3]["RewardItem"] = {}
	tNewPKReward_Data[0][3]["RewardItem"][1] = {}
	tNewPKReward_Data[0][3]["RewardItem"][1]["Id"] = 3327126 --  3327126 【库里没有该物品】, 【表格】职业PK参与礼包
	tNewPKReward_Data[0][3]["RewardItem"][1]["Attr"] = "0 1" --  3327126 【库里没有该物品】*1
	tNewPKReward_Data[0][3]["RewardEffect"] = {}
	tNewPKReward_Data[0][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPKReward_Data[0][3]["RewardEffect"]["Effect"] = "angelwing"

	tNewPKReward_Data["Stc"]={}
	tNewPKReward_Data["Stc"][0]={}
	tNewPKReward_Data["Stc"][0]["EventType"] = 211
	tNewPKReward_Data["Stc"][0]["DataType"] = 3
	tNewPKReward_Data["Stc"][1]={}
	tNewPKReward_Data["Stc"][1]["EventType"] = 211
	tNewPKReward_Data["Stc"][1]["DataType"] = 4
	tNewPKReward_Data["Stc"][2]={}
	tNewPKReward_Data["Stc"][2]["EventType"] = 211
	tNewPKReward_Data["Stc"][2]["DataType"] = 5
	tNewPKReward_Data["Stc"][3]={}
	tNewPKReward_Data["Stc"][3]["EventType"] = 211
	tNewPKReward_Data["Stc"][3]["DataType"] = 6
	
	
	
	local tNewPKReward__PKJoinReward={}
	tNewPKReward__PKJoinReward[3327115]={}
	tNewPKReward__PKJoinReward[3327115]["Event"]=210
	tNewPKReward__PKJoinReward[3327115]["Type"]=86
	
	tNewPKReward__PKJoinReward[3327121]={}
	tNewPKReward__PKJoinReward[3327121]["Event"]=210
	tNewPKReward__PKJoinReward[3327121]["Type"]=87
	
	tNewPKReward__PKJoinReward[3327132]={}
	tNewPKReward__PKJoinReward[3327132]["Event"]=210
	tNewPKReward__PKJoinReward[3327132]["Type"]=89
	
	
	
	
	local tNewPKReward_NewPKMap={}
	tNewPKReward_NewPKMap["ProfessionPk"]={3012,3013,3014,3015,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3016,3017,3018,3019,9903,9904,9905,9906,3862,3863,3864,3865,10392,10393,10394,10395,1500,1501,1502,1947,1837,1838,1839,1948,10062,10063,10064,10065}
	tNewPKReward_NewPKMap["MonthlyWeeklyPK"]={1508,1518,1528,1072}
	
	
	local tNewPKReward_NewPKAction={}
	
	tNewPKReward_NewPKAction[0]=575450 --职业pk
	tNewPKReward_NewPKAction[1]=575451 --pk周赛
	tNewPKReward_NewPKAction[2]=575451 --pk月赛
----------------------------------逻辑部分---------------------------------------------
-- 打开竞技场参与奖礼包（1为直接打开，2为花费10W金币打开；记线上奖励掩码
function NewPKReward_UseArenaParticipatePack(nItemId,nIndex)
	local NewPKReward_nEventType = tNewPKReward_ArenaStc["EventType"]
	local NewPKReward_nDataType = tNewPKReward_ArenaStc["DataType"]
		-- 判断是否隔天
	if Task_StcInterval(NewPKReward_nEventType,NewPKReward_nDataType,1,4) then
		Task_SetStatistic(NewPKReward_nEventType,NewPKReward_nDataType,0,1)
		Task_SetStcTimestamp(NewPKReward_nEventType,NewPKReward_nDataType,0)
	end
	local nUserId = Get_UserId()
	local nSpace = RewardTemplate_GetRandomSpace(tNewPKReward_Reward[nItemId],nIndex)
	
	-- 200415[简体征服][活动脚本]全球儿童节活动--打地鼠
	if (Sys_ChkFullTime(tActivityTime["ChildrenDay2020"]["ActivityTime"]))then
		if User_JudgeLevelAndMetempsychosis(80,0) then
			--判断掩码
			nSpace = nSpace + 1
		end
	end
	
	-- 200514[英文征服][活动脚本]6月夏日祭-神木灌溉（6.23-7.7）
	if Sys_ChkFullTime(tActivityTime["IrrigateSacredTree"]["ActivityTime"])then
		nSpace = nSpace + IrrigateSacredTree_ExtraChkSpace(2)
	end
	
	if not User_CheckLeftSpace(nSpace,nUserId) then
		Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end 
	
	if RewardTemplate_RandomReward(tNewPKReward_Reward[nItemId],nIndex) then
		Task_AddStatistic(NewPKReward_nEventType,NewPKReward_nDataType,1,1)
		Task_SetStcTimestamp(NewPKReward_nEventType,NewPKReward_nDataType,0)
		
		-- 200514[英文征服][活动脚本]6月夏日祭-神木灌溉（6.23-7.7）
		IrrigateSacredTree_ExtraGetReward(2)
	end
end
-- 打开参与奖礼包（1为直接打开，2为花费10W金币打开
function NewPKReward_UseParticipatePack(nItemId,nIndex)
	RewardTemplate_RandomReward(tNewPKReward_Reward[nItemId],nIndex)
end

-- 打开参与奖礼包（1为直接打开，2为花费10W金币打开
function NewPKReward_UseArenaPack(nItemId,nIndex)
	RewardTemplate_UseItemAndMsg(tNewPKReward_Reward[nItemId][nIndex])
end

function NewPKReward_ChkSpace(nLev,nIndex,nUserId)

	local nNowUserId=nUserId or Get_UserId()
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tNewPKReward_Data[nLev][nIndex],nNowUserId)
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tNewPKReward_Data[nLev][nIndex],nNowUserId)

	local nSpace = nGetRewardSpace - nDelRewardSpace

	if not User_CheckLeftSpace(nSpace,nNowUserId) then
		return false
	else
		return true
	end 
end 

--杀人触发
function NewPKReward_KillOther(nKiller, nBeKilled)



	local nUserId = nKiller or Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	
	local nFlag=10000
	
	--职业pk赛地图内杀人
	for i,v in ipairs(tNewPKReward_NewPKMap["ProfessionPk"]) do 
		if nUserMap == v then 
			nFlag=0
		end 
	end 
	
	--pk月/周赛地图内杀人
	for i,v in ipairs(tNewPKReward_NewPKMap["MonthlyWeeklyPK"]) do 
		if nUserMap == v then 
			nFlag=1
		end 
	end 
	
	
	if nFlag == 10000 then 
		return 
	end 
	
	local nPackEvent=tNewPKReward_Data["Stc"][nFlag]["EventType"] 
	local nPackType=tNewPKReward_Data["Stc"][nFlag]["DataType"]

	--隔天清掩码
	Task_StcReset(nPackEvent,nPackType,nUserId)
	
	if Get_UserStatisticValue(nPackEvent,nPackType,nUserId) >=5 then 
		return
	end 
	
	--背包空间判断
	if not NewPKReward_ChkSpace(0,nFlag,nUserId) then
		NewPKReward_SenEmail(nFlag,nUserId)
	else
	
		Task_AddStatistic(nPackEvent, nPackType, 1, 1,nUserId)
		Task_SetStcTimestamp(nPackEvent, nPackType, 0,nUserId)
		
		--给礼包
		RewardTemplate_UseItemAndMsg(tNewPKReward_Data[0][nFlag],nUserId)
	end 
end


----pk赛参与奖
function NewPKReward_Compete(nIndex)
	
	local nPackEvent = tNewPKReward_Data["Stc"][nIndex]["EventType"]
	local nPackType = tNewPKReward_Data["Stc"][nIndex]["DataType"]
	
	--隔天清掩码
	Task_StcReset(nPackEvent,nPackType)
	
	
	if Get_UserStatisticValue(nPackEvent,nPackType) == 0 then 
		--判断背包空间
		if not NewPKReward_ChkSpace(0,nIndex) then
			NewPKReward_SenEmail(nIndex)
		else
			--加掩码
			Task_AddStatistic(nPackEvent,nPackType,1,1)
			Task_SetStcTimestamp(nPackEvent,nPackType,0)
			
			--发奖
			RewardTemplate_UseItemAndMsg(tNewPKReward_Data[0][nIndex])
		end 
	end 	
	
	
end 

--邮件发奖
function NewPKReward_SenEmail(nIndex,nNowUserId)

	local nPackEvent= tNewPKReward_Data["Stc"][nIndex]["EventType"]
	local nPackType = tNewPKReward_Data["Stc"][nIndex]["DataType"]
	local nUserId = nNowUserId or Get_UserId()
	--隔天清掩码
	Task_StcReset(nPackEvent,nPackType,nUserId)
	
	if Get_UserStatisticValue(nPackEvent,nPackType,nUserId)>=5 then 
		return 
	end 
	
	--加掩码
	Task_AddStatistic(nPackEvent,nPackType,1,1,nUserId)
	Task_SetStcTimestamp(nPackEvent,nPackType,0,nUserId)
	
	--邮件发奖
	local sSender =  tNewPKReward_Text["NewPkEmail"]["Sender"]
	local sTitle =   tNewPKReward_Text["NewPkEmail"]["Title"]
	local sContent = tNewPKReward_Text["NewPkEmail"]["Content"]
	local nExistDay = 30
	local nActionId = tNewPKReward_NewPKAction[nIndex]
	
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
end 


function NewPKReward_PKJoinPack(nItemId,nIndex)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return 
	end 
	
	local nEvent=tNewPKReward__PKJoinReward[nItemId]["Event"]
	local nType=tNewPKReward__PKJoinReward[nItemId]["Type"]
	
	--隔天清掩码	
	Task_StcReset(nEvent,nType)
	
	--次数不足
	if Get_UserStatisticValue(nEvent,nType) >=5 then 
		Sys_MsgBox(tNewPKReward_Text["PKRewardTip"]["NoTime"])
		return 
	end
	
	if nIndex ==2 then
		--判断金币是否充足
		if not User_CanPutMoney2Bag(-100000) then
			Sys_MsgBox(tNewPKReward_Text["PKRewardTip"]["NoMoney"])
			return 
		end
	end
	
	-- 背包空间不足
	if not RewardTemplate_ChkRandomSpace(tNewPKReward_Data[nItemId],nIndex) then
		Sys_MsgBox(tNewPKReward_Text["PKRewardTip"]["NoSpace"])
		return
	end
	
	--加掩码
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	if nIndex ==2 then
		--扣除金币
		if User_AddMoney(-100000) then
			RewardTemplate_RandomReward(tNewPKReward_Data[nItemId],nIndex)
		end 
	else
		RewardTemplate_RandomReward(tNewPKReward_Data[nItemId],nIndex)
	end
end 
--------------------------杀人触发--------------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"], NewPKReward_KillOther)
---------------------------------物品部分---------------------------------------------
-- 精英PK赛固定奖励名次礼包
tItem[3314676] = tItem[3314676] or {}
tItem[3314676]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tNewPKReward_Reward[nItemId])
end
tItem[3314677] = tItem[3314676]
tItem[3314678] = tItem[3314676]
tItem[3314679] = tItem[3314676]
tItem[3314680] = tItem[3314676]
tItem[3314681] = tItem[3314676]
tItem[3314682] = tItem[3314676]
tItem[3314683] = tItem[3314676]
tItem[3314684] = tItem[3314676]
tItem[3314685] = tItem[3314676]
tItem[3314686] = tItem[3314676]
tItem[3314687] = tItem[3314676]
tItem[3314688] = tItem[3314676]
tItem[3314689] = tItem[3314676]
tItem[3314690] = tItem[3314676]
tItem[3314691] = tItem[3314676]
-- 组队PK赛固定奖励名次礼包
tItem[3314693] = tItem[3314693] or {}
tItem[3314693]["Function"] = function(nItemId,sItemName)
	local NewPKReward_nEventType = tNewPKReward_TeamPackUseStc["Team"]["EventType"]
	local NewPKReward_nDataType = tNewPKReward_TeamPackUseStc["Team"]["DataType"]
		-- 判断是否隔天
	if Task_StcInterval(NewPKReward_nEventType,NewPKReward_nDataType,1,4) then
		Task_SetStatistic(NewPKReward_nEventType,NewPKReward_nDataType,0,1)
		Task_SetStcTimestamp(NewPKReward_nEventType,NewPKReward_nDataType,0)
	end
	local NewPKReward_nData = Get_UserStatisticValue(NewPKReward_nEventType,NewPKReward_nDataType)
	if NewPKReward_nData >= 1 then
		Sys_MsgBox(tNewPKReward_Text["MsgBox"]["HaveOpenedTeam"])
	elseif RewardTemplate_UseItemAndMsg(tNewPKReward_Reward[nItemId]) then
		Task_AddStatistic(NewPKReward_nEventType,NewPKReward_nDataType,1,1)
		Task_SetStcTimestamp(NewPKReward_nEventType,NewPKReward_nDataType,0)
	end
end
tItem[3314694] = tItem[3314693]
tItem[3314695] = tItem[3314693]
tItem[3314696] = tItem[3314693]
tItem[3314697] = tItem[3314693]
tItem[3314698] = tItem[3314693]
tItem[3314699] = tItem[3314693]
tItem[3314700] = tItem[3314693]
tItem[3314701] = tItem[3314693]
tItem[3314702] = tItem[3314693]
tItem[3314703] = tItem[3314693]
tItem[3314704] = tItem[3314693]
tItem[3314705] = tItem[3314693]
tItem[3314706] = tItem[3314693]
tItem[3314707] = tItem[3314693]
tItem[3314708] = tItem[3314693]
-- 组队大众PK赛固定奖励名次礼包
tItem[3314710] = tItem[3314710] or {}
tItem[3314710]["Function"] = function(nItemId,sItemName)
	local NewPKReward_nEventType = tNewPKReward_TeamPackUseStc["SkillTeam"]["EventType"]
	local NewPKReward_nDataType = tNewPKReward_TeamPackUseStc["SkillTeam"]["DataType"]
		-- 判断是否隔天
	if Task_StcInterval(NewPKReward_nEventType,NewPKReward_nDataType,1,4) then
		Task_SetStatistic(NewPKReward_nEventType,NewPKReward_nDataType,0,1)
		Task_SetStcTimestamp(NewPKReward_nEventType,NewPKReward_nDataType,0)
	end
	local NewPKReward_nData = Get_UserStatisticValue(NewPKReward_nEventType,NewPKReward_nDataType)
	if NewPKReward_nData >= 1 then
		Sys_MsgBox(tNewPKReward_Text["MsgBox"]["HaveOpenedSkillTeam"])
	elseif RewardTemplate_UseItemAndMsg(tNewPKReward_Reward[nItemId]) then
		Task_AddStatistic(NewPKReward_nEventType,NewPKReward_nDataType,1,1)
		Task_SetStcTimestamp(NewPKReward_nEventType,NewPKReward_nDataType,0)
	end
end
tItem[3314711] = tItem[3314710]
tItem[3314712] = tItem[3314710]
tItem[3314713] = tItem[3314710]
tItem[3314714] = tItem[3314710]
tItem[3314715] = tItem[3314710]
tItem[3314716] = tItem[3314710]
tItem[3314717] = tItem[3314710]
tItem[3314718] = tItem[3314710]
tItem[3314719] = tItem[3314710]
tItem[3314720] = tItem[3314710]
tItem[3314721] = tItem[3314710]
tItem[3314722] = tItem[3314710]
tItem[3314723] = tItem[3314710]
tItem[3314724] = tItem[3314710]
tItem[3314725] = tItem[3314710]
-- 组队PK赛大包奖励
tItem[3314737] = tItem[3314676]
tItem[3314738] = tItem[3314676]
tItem[3314739] = tItem[3314676]
tItem[3314740] = tItem[3314676]
tItem[3314741] = tItem[3314676]
tItem[3314742] = tItem[3314676]
tItem[3314743] = tItem[3314676]
tItem[3314744] = tItem[3314676]
tItem[3314745] = tItem[3314676]
tItem[3314746] = tItem[3314676]
tItem[3314747] = tItem[3314676]
tItem[3314748] = tItem[3314676]
tItem[3314749] = tItem[3314676]
tItem[3314750] = tItem[3314676]
tItem[3314751] = tItem[3314676]
tItem[3314752] = tItem[3314676]
-- 组队大众PK赛大包奖励
tItem[3314753] = tItem[3314676]
tItem[3314754] = tItem[3314676]
tItem[3314755] = tItem[3314676]
tItem[3314756] = tItem[3314676]
tItem[3314757] = tItem[3314676]
tItem[3314758] = tItem[3314676]
tItem[3314759] = tItem[3314676]
tItem[3314760] = tItem[3314676]
tItem[3314761] = tItem[3314676]
tItem[3314762] = tItem[3314676]
tItem[3314763] = tItem[3314676]
tItem[3314764] = tItem[3314676]
tItem[3314765] = tItem[3314676]
tItem[3314766] = tItem[3314676]
tItem[3314767] = tItem[3314676]
tItem[3314768] = tItem[3314676]
-- 稀有黄色神纹随机包
tItem[3314727] = tItem[3314727] or {}
tItem[3314727]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tNewPKReward_Reward,nItemId)
end
-- 参与奖礼包（可花费10W金币奖励翻倍
tItemFace[3314674] = 2700
tItem[3314674] = tItem[3314674] or {}
tItem[3314674]["DialogueText"] = tNewPKReward_Text[3314674]
tItem[3314674]["Text1-1"] = {111,112}
tItem[3314674]["tOption1-1"] = {112,111,113}
tItem[3314674]["OptionFunc111"] = "NewPKReward_UseArenaParticipatePack</N>3314674</N>1"
tItem[3314674]["OptionFunc112"] = "NewPKReward_UseArenaParticipatePack</N>3314674</N>2"
tItemFace[3314692] = 2701
tItem[3314692] = tItem[3314692] or {}
tItem[3314692]["DialogueText"] = tNewPKReward_Text[3314692]
tItem[3314692]["Text1-1"] = {111,112}
tItem[3314692]["tOption1-1"] = {112,111,113}
tItem[3314692]["OptionFunc111"] = "NewPKReward_UseParticipatePack</N>3314692</N>1"
tItem[3314692]["OptionFunc112"] = "NewPKReward_UseParticipatePack</N>3314692</N>2"
tItemFace[3314709] = 1532
tItem[3314709] = tItem[3314709] or {}
tItem[3314709]["DialogueText"] = tNewPKReward_Text[3314709]
tItem[3314709]["Text1-1"] = {111,112}
tItem[3314709]["tOption1-1"] = {112,111,113}
tItem[3314709]["OptionFunc111"] = "NewPKReward_UseParticipatePack</N>3314709</N>1"
tItem[3314709]["OptionFunc112"] = "NewPKReward_UseParticipatePack</N>3314709</N>2"
tItemFace[3314726] = 2702
tItem[3314726] = tItem[3314726] or {}
tItem[3314726]["DialogueText"] = tNewPKReward_Text[3314726]
tItem[3314726]["Text1-1"] = {111,112}
tItem[3314726]["tOption1-1"] = {112,111,113}
tItem[3314726]["OptionFunc111"] = "NewPKReward_UseParticipatePack</N>3314726</N>1"
tItem[3314726]["OptionFunc112"] = "NewPKReward_UseParticipatePack</N>3314726</N>2"
-- 【竞技场荣誉礼包】
tItemFace[3314675] = 918
tItem[3314675] = tItem[3314675] or {}
tItem[3314675]["DialogueText"] = tNewPKReward_Text[3314675]
tItem[3314675]["Text1-1"] = {111}
tItem[3314675]["tOption1-1"] = {112,111,113}
tItem[3314675]["OptionFunc111"] = "NewPKReward_UseArenaPack</N>3314675</N>1"
tItem[3314675]["OptionFunc112"] = "NewPKReward_UseArenaPack</N>3314675</N>2"
tItem[3314675]["OptionFunc113"] = "NewPKReward_UseArenaPack</N>3314675</N>3"
-- 60分钟经验包
tItem[3315253] = tItem[3315253] or {}
tItem[3315253]["Function"] = function(nItemId,sItemName)
	if Get_UserLevel() >= G_User_MaxLev then
		RewardTemplate_UseItemAndMsg(tNewPKReward_Reward[nItemId][2])
	else
		RewardTemplate_UseItemAndMsg(tNewPKReward_Reward[nItemId][1])
	end
end

--参与礼包
tItemFace[3327115] = 1925
tItem[3327115] = tItem[3327115] or {}
tItem[3327115]["OptionHidden"] = 1
tItem[3327115]["DialogueText"] = tNewPKReward_Text[3327115]

tItem[3327115]["Text1-1"] = {111,112}
tItem[3327115]["tOption1-1"] = {111,112,113}
tItem[3327115]["OptionFunc111"] = "NewPKReward_PKJoinPack</N>3327115</N>2"
tItem[3327115]["OptionFunc112"] = "NewPKReward_PKJoinPack</N>3327115</N>1"

tItemFace[3327121] = 1547
tItem[3327121] = tItem[3327121] or {}
tItem[3327121]["OptionHidden"] = 1
tItem[3327121]["DialogueText"] = tNewPKReward_Text[3327121]

tItem[3327121]["Text1-1"] = {111,112}
tItem[3327121]["tOption1-1"] = {111,112,113}
tItem[3327121]["OptionFunc111"] = "NewPKReward_PKJoinPack</N>3327121</N>2"
tItem[3327121]["OptionFunc112"] = "NewPKReward_PKJoinPack</N>3327121</N>1"

tItemFace[3327132] = 2404
tItem[3327132] = tItem[3327132] or {}
tItem[3327132]["OptionHidden"] = 1
tItem[3327132]["DialogueText"] = tNewPKReward_Text[3327132]

tItem[3327132]["Text1-1"] = {111,112}
tItem[3327132]["tOption1-1"] = {111,112,113}
tItem[3327132]["OptionFunc111"] = "NewPKReward_PKJoinPack</N>3327132</N>2"
tItem[3327132]["OptionFunc112"] = "NewPKReward_PKJoinPack</N>3327132</N>1"

-- 每天清除动态码
tGlobalData_Info[54025] = {}
tGlobalData_Info[54025]["Time"] = {}
tGlobalData_Info[54025]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54025]["Rest"] = {}
tGlobalData_Info[54025]["Rest"]["GlobalId"] = {54025}
tGlobalData_Info[54025]["Rest"]["Pos"] = {0,1,2,3,4,5}