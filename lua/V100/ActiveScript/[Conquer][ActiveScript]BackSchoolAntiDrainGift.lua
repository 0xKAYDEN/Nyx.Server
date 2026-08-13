------------------------------------------------------------------------------------
--Name:		190812[英文征服][活动脚本]9月开学防流失礼包（9.5-10.9）
--Creator: 	兰瑞妹
--Created:	2019/08/12
------------------------------------------------------------------------------------
-- 命名前缀
-- BackSchool_AntiDrainGift_

-- logid 12001561

-- #stc 掩码说明 
-- #stc(202,27) 背包信
-- #stc(202,28) 领取新学期活跃礼包 ==1表示已领取 隔天重置

-- 运营新增需求 2019.9.10
-- 领取0转80级礼包 350 22614
-- 领取1转礼包 350 22615
-- 领取2转礼包 350 22616
--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tBackSchool_AntiDrainGift_Count = {}
	-- 活动时间
	tBackSchool_AntiDrainGift_Count["ActivityTime"] = tActivityTime["BackSchoolAntiDrainGift"]["ActivityTime"]
	
	-- 阶段等级
	tBackSchool_AntiDrainGift_Count["Status"] = {}
	-- 第一阶段等级 80级以上
	tBackSchool_AntiDrainGift_Count["Status"][1] = {}
	tBackSchool_AntiDrainGift_Count["Status"][1]["Level"] = 80
	tBackSchool_AntiDrainGift_Count["Status"][1]["Meto"] = 0
	-- 第二阶段等级 1转15级
	tBackSchool_AntiDrainGift_Count["Status"][2] = {}
	tBackSchool_AntiDrainGift_Count["Status"][2]["Level"] = 15
	tBackSchool_AntiDrainGift_Count["Status"][2]["Meto"] = 1
	-- 第三阶段等级 2转15级
	tBackSchool_AntiDrainGift_Count["Status"][3] = {}
	tBackSchool_AntiDrainGift_Count["Status"][3]["Level"] = 15
	tBackSchool_AntiDrainGift_Count["Status"][3]["Meto"] = 2
	
-- stc掩码
local tBackSchool_AntiDrainGift_Stc = {}
	-- 领取新学期活跃礼包 ==1表示已领取 隔天重置
	tBackSchool_AntiDrainGift_Stc[1] = {}
	tBackSchool_AntiDrainGift_Stc[1]["EventType"] = 202
	tBackSchool_AntiDrainGift_Stc[1]["DataType"] = 28
	
-- 等级阶段领取奖励
local tBackSchool_AntiDrainGift_NpcReward = {}
	-- ===第一阶段领取精致活跃礼包
	-- ===索引: tBackSchool_AntiDrainGift_NpcReward[1]
	tBackSchool_AntiDrainGift_NpcReward[1] = {}
	tBackSchool_AntiDrainGift_NpcReward[1]["LogId"] = 12001561
	tBackSchool_AntiDrainGift_NpcReward[1]["EmoneyLog"] = "350	22614	0	0	1	"
	tBackSchool_AntiDrainGift_NpcReward[1]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_NpcReward[1]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_NpcReward[1]["RewardItem"][1]["Id"] = 3313502 -- 精致活跃礼包[3313502][属性:11][叠加:1][金币:0], 【表格】精致活跃礼包
	tBackSchool_AntiDrainGift_NpcReward[1]["RewardItem"][1]["Attr"] = "0 1" -- 精致活跃礼包*1
	tBackSchool_AntiDrainGift_NpcReward[1]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_NpcReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_NpcReward[1]["RewardEffect"]["Effect"] = "angelwing"


	tBackSchool_AntiDrainGift_NpcReward[2] = {}
	-- ===第一阶段领取豪华活跃礼包
	-- ===索引: tBackSchool_AntiDrainGift_NpcReward[2]
	tBackSchool_AntiDrainGift_NpcReward[2]["LogId"] = 12001561
	tBackSchool_AntiDrainGift_NpcReward[2]["EmoneyLog"] = "350	22615	0	0	1	"
	tBackSchool_AntiDrainGift_NpcReward[2]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_NpcReward[2]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_NpcReward[2]["RewardItem"][1]["Id"] = 3313503 -- 豪华活跃礼包[3313503][属性:11][叠加:1][金币:0], 【表格】豪华活跃礼包
	tBackSchool_AntiDrainGift_NpcReward[2]["RewardItem"][1]["Attr"] = "0 1" -- 豪华活跃礼包*1
	tBackSchool_AntiDrainGift_NpcReward[2]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_NpcReward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_NpcReward[2]["RewardEffect"]["Effect"] = "angelwing"

	tBackSchool_AntiDrainGift_NpcReward[3] = {}
	-- ===第一阶段领取至尊活跃礼包
	-- ===索引: tBackSchool_AntiDrainGift_NpcReward[3]
	tBackSchool_AntiDrainGift_NpcReward[3]["LogId"] = 12001561
	tBackSchool_AntiDrainGift_NpcReward[3]["EmoneyLog"] = "350	22616	0	0	1	"
	tBackSchool_AntiDrainGift_NpcReward[3]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_NpcReward[3]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_NpcReward[3]["RewardItem"][1]["Id"] = 3313504 -- 至尊活跃礼包[3313504][属性:11][叠加:1][金币:0], 【表格】至尊活跃礼包
	tBackSchool_AntiDrainGift_NpcReward[3]["RewardItem"][1]["Attr"] = "0 1" -- 至尊活跃礼包*1
	tBackSchool_AntiDrainGift_NpcReward[3]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_NpcReward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_NpcReward[3]["RewardEffect"]["Effect"] = "angelwing"

-- 奖励表
local tBackSchool_AntiDrainGift_Reward = {}
	-- ===精致活跃礼包
	-- ===索引: tBackSchool_AntiDrainGift_Reward[3313502]
	-- ===删除:3313502,1
	-- ===EMoneyLog:10000,706
	tBackSchool_AntiDrainGift_Reward[3313502] = {}
	tBackSchool_AntiDrainGift_Reward[3313502]["EMoneyMonoLimit"] = 10
	tBackSchool_AntiDrainGift_Reward[3313502]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBackSchool_AntiDrainGift_Reward[3313502]["DeleteItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502]["DeleteItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502]["DeleteItem"][1]["Id"] = 3313502 -- 【库】精致活跃礼包[属性:11]
	tBackSchool_AntiDrainGift_Reward[3313502]["LogId"] = 12001561
	-- 聚神丹赠*5-- 【必给】
	tBackSchool_AntiDrainGift_Reward[3313502][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RandomItemChanceType"] = 1
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RewardItem"][1]["Id"] = 723700 -- ExpBall[723700][属性:0][叠加:10][金币:0], 【表格】聚神丹赠*5
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RewardItem"][1]["Attr"] = "0 5 3" -- ExpBall（赠）*5
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 聚神丹赠*1 - 20%
	tBackSchool_AntiDrainGift_Reward[3313502][2] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][2]["ItemChance"] = 2000
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RewardItem"][1]["Id"] = 723700 -- ExpBall[723700][属性:0][叠加:10][金币:0], 【表格】聚神丹赠*1
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RewardItem"][1]["Attr"] = "0 1 3" -- ExpBall（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷赠 - 20%
	tBackSchool_AntiDrainGift_Reward[3313502][3] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][3]["ItemChance"] = 2000
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RewardItem"][1]["Id"] = 720027 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星卷赠
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RewardItem"][1]["Attr"] = "0 1 3" -- MeteorScroll（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 50点修行值赠 - 25%
	tBackSchool_AntiDrainGift_Reward[3313502][4] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][4]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][4]["ItemChance"] = 2500
	tBackSchool_AntiDrainGift_Reward[3313502][4]["RewardCultivation"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][4]["RewardCultivation"]["Value"] = 50 -- 修行值, 【需求】50点修行值赠
	tBackSchool_AntiDrainGift_Reward[3313502][4]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*1 - 15%
	tBackSchool_AntiDrainGift_Reward[3313502][5] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][5]["ItemChance"] = 1500
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*1
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 强炼丹*4赠 - 5%
	tBackSchool_AntiDrainGift_Reward[3313502][6] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][6]["ItemChance"] = 500
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】强炼丹*4赠
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RewardItem"][1]["Attr"] = "0 4 3" -- FavoredTrainingPill（赠）*4
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠赠 - 5%
	tBackSchool_AntiDrainGift_Reward[3313502][7] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][7]["ItemChance"] = 500
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 10点赠点 - 8%
	tBackSchool_AntiDrainGift_Reward[3313502][8] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][8]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][8]["ItemChance"] = 800
	tBackSchool_AntiDrainGift_Reward[3313502][8]["RewardEMoneyMono"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][8]["RewardEMoneyMono"]["Value"] = 10 -- 天石（赠）, 【需求】10点赠点
	tBackSchool_AntiDrainGift_Reward[3313502][8]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	706"
	tBackSchool_AntiDrainGift_Reward[3313502][8]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+1赠 - 2%
	tBackSchool_AntiDrainGift_Reward[3313502][9] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313502][9]["ItemChance"] = 200
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1赠
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313502][9]["RewardEffect"]["Effect"] = "angelwing"


	tBackSchool_AntiDrainGift_Reward[3313503] = {}
	-- ===豪华活跃礼包
	-- ===索引: tBackSchool_AntiDrainGift_Reward[3313503]
	-- ===删除:3313503,1
	-- ===EMoneyLog:10000,707
	tBackSchool_AntiDrainGift_Reward[3313503]["EMoneyMonoLimit"] = 130
	tBackSchool_AntiDrainGift_Reward[3313503]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBackSchool_AntiDrainGift_Reward[3313503]["DeleteItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503]["DeleteItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503]["DeleteItem"][1]["Id"] = 3313503 -- 【库】豪华活跃礼包[属性:11]
	tBackSchool_AntiDrainGift_Reward[3313503]["LogId"] = 12001561
	-- 30赠品天石-- 【必给】
	tBackSchool_AntiDrainGift_Reward[3313503][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][1]["RandomItemChanceType"] = 1
	tBackSchool_AntiDrainGift_Reward[3313503][1]["RewardEMoneyMono"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][1]["RewardEMoneyMono"]["Value"] = 30 -- 天石（赠）, 【需求】30赠品天石
	tBackSchool_AntiDrainGift_Reward[3313503][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	707"
	tBackSchool_AntiDrainGift_Reward[3313503][1]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 流星卷赠 - 23%
	tBackSchool_AntiDrainGift_Reward[3313503][2] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][2]["ItemChance"] = 2300
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RewardItem"][1]["Id"] = 720027 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星卷赠
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RewardItem"][1]["Attr"] = "0 1 3" -- MeteorScroll（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果*1 - 23%
	tBackSchool_AntiDrainGift_Reward[3313503][3] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][3]["ItemChance"] = 2300
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*1
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*2 - 18%
	tBackSchool_AntiDrainGift_Reward[3313503][4] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][4]["ItemChance"] = 1800
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 50点赠品天石 - 12%
	tBackSchool_AntiDrainGift_Reward[3313503][5] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][5]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][5]["ItemChance"] = 1200
	tBackSchool_AntiDrainGift_Reward[3313503][5]["RewardEMoneyMono"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][5]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50点赠品天石
	tBackSchool_AntiDrainGift_Reward[3313503][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	707"
	tBackSchool_AntiDrainGift_Reward[3313503][5]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2赠 - 10%
	tBackSchool_AntiDrainGift_Reward[3313503][6] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][6]["ItemChance"] = 1000
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2赠
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠赠 - 8%
	tBackSchool_AntiDrainGift_Reward[3313503][7] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][7]["ItemChance"] = 800
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤练石+3赠*1 - 5%
	tBackSchool_AntiDrainGift_Reward[3313503][8] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][8]["ItemChance"] = 500
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3赠*1
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 100点赠品天石 - 1%
	tBackSchool_AntiDrainGift_Reward[3313503][9] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][9]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313503][9]["ItemChance"] = 100
	tBackSchool_AntiDrainGift_Reward[3313503][9]["RewardEMoneyMono"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][9]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100点赠品天石
	tBackSchool_AntiDrainGift_Reward[3313503][9]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	707"
	tBackSchool_AntiDrainGift_Reward[3313503][9]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313503][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313503][9]["RewardEffect"]["Effect"] = "angelwing"


	tBackSchool_AntiDrainGift_Reward[3313504] = {}
	-- ===至尊活跃礼包
	-- ===索引: tBackSchool_AntiDrainGift_Reward[3313504]
	-- ===删除:3313504,1
	-- ===EMoneyLog:10000,708
	tBackSchool_AntiDrainGift_Reward[3313504]["EMoneyMonoLimit"] = 250
	tBackSchool_AntiDrainGift_Reward[3313504]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tBackSchool_AntiDrainGift_Reward[3313504]["DeleteItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504]["DeleteItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504]["DeleteItem"][1]["Id"] = 3313504 -- 【库】至尊活跃礼包[属性:11]
	tBackSchool_AntiDrainGift_Reward[3313504]["LogId"] = 12001561
	-- 50点赠品天石-- 【必给】
	tBackSchool_AntiDrainGift_Reward[3313504][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][1]["RandomItemChanceType"] = 1
	tBackSchool_AntiDrainGift_Reward[3313504][1]["RewardEMoneyMono"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][1]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50点赠品天石
	tBackSchool_AntiDrainGift_Reward[3313504][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	708"
	tBackSchool_AntiDrainGift_Reward[3313504][1]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*2 - 30%
	tBackSchool_AntiDrainGift_Reward[3313504][2] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][2]["ItemChance"] = 3000
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹精粹赠*5 - 20%
	tBackSchool_AntiDrainGift_Reward[3313504][3] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][3]["ItemChance"] = 2000
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹赠*5
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RewardItem"][1]["Attr"] = "0 5 3" -- YellowRuneEssence（赠）*5
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+2赠 - 20%
	tBackSchool_AntiDrainGift_Reward[3313504][4] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][4]["ItemChance"] = 2000
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2赠
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果*1 - 15%
	tBackSchool_AntiDrainGift_Reward[3313504][5] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][5]["ItemChance"] = 1500
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*1
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*1 - 10%
	tBackSchool_AntiDrainGift_Reward[3313504][6] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][6]["ItemChance"] = 1000
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 100点赠品天石 - 2%
	tBackSchool_AntiDrainGift_Reward[3313504][7] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][7]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][7]["ItemChance"] = 200
	tBackSchool_AntiDrainGift_Reward[3313504][7]["RewardEMoneyMono"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][7]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100点赠品天石
	tBackSchool_AntiDrainGift_Reward[3313504][7]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	708"
	tBackSchool_AntiDrainGift_Reward[3313504][7]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠赠 - 2%
	tBackSchool_AntiDrainGift_Reward[3313504][8] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][8]["ItemChance"] = 200
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RewardItem"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RewardItem"][1] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠赠
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 200点赠品天石 - 1%
	tBackSchool_AntiDrainGift_Reward[3313504][9] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][9]["RandomItemChanceType"] = 2
	tBackSchool_AntiDrainGift_Reward[3313504][9]["ItemChance"] = 100
	tBackSchool_AntiDrainGift_Reward[3313504][9]["RewardEMoneyMono"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][9]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200点赠品天石
	tBackSchool_AntiDrainGift_Reward[3313504][9]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	708"
	tBackSchool_AntiDrainGift_Reward[3313504][9]["RewardEffect"] = {}
	tBackSchool_AntiDrainGift_Reward[3313504][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tBackSchool_AntiDrainGift_Reward[3313504][9]["RewardEffect"]["Effect"] = "angelwing"
	
--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function BackSchool_AntiDrainGift_GetStcValue(nIndex,nUserId)
	local nEvent = tBackSchool_AntiDrainGift_Stc[nIndex]["EventType"]
	local nType = tBackSchool_AntiDrainGift_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function BackSchool_AntiDrainGift_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tBackSchool_AntiDrainGift_Stc[nIndex]["EventType"]
	local nType = tBackSchool_AntiDrainGift_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function BackSchool_AntiDrainGift_ClearStcInterval(nIndex,nUserId)
	local nEvent = tBackSchool_AntiDrainGift_Stc[nIndex]["EventType"]
	local nType = tBackSchool_AntiDrainGift_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

--------------------------------------npc使用
-- 领取新学期活跃礼包
function BackSchool_AntiDrainGift_Receive(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tBackSchool_AntiDrainGift_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 今日已领取
	BackSchool_AntiDrainGift_ClearStcInterval(1)
	local nData = BackSchool_AntiDrainGift_GetStcValue(1)
	if nData >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 等级不足
	local nLevel = tBackSchool_AntiDrainGift_Count["Status"][1]["Level"]
	local nMete = tBackSchool_AntiDrainGift_Count["Status"][1]["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 背包不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tBackSchool_AntiDrainGift_NpcReward[1],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tBackSchool_AntiDrainGift_Text["FullSpace"])
		return
	end
	
	-- 判断阶段
	local nUserLevel = Get_UserLevel(nUserId)
	local nUserMeto = Get_UserMetempsychosis(nUserId)
	local nStage = 0
	for i,v in pairs(tBackSchool_AntiDrainGift_Count["Status"]) do
		if nUserMeto >= v["Meto"] and nUserLevel >= v["Level"] then
			nStage = i
		end
	end
	
	-- 如果是最后阶段直接领奖，否则二次确认
	if nStage == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	if nStage == 2 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 设掩码
	BackSchool_AntiDrainGift_SetStcValue(1,1)
	
	-- 给奖励/提示/log
	RewardTemplate_UseItemAndMsg(tBackSchool_AntiDrainGift_NpcReward[nStage])
end

-- 提示领取新学期活跃礼包
function BackSchool_AntiDrainGift_SureReceive(nNpcId,nStage)
	-- 活动后
	if not Sys_ChkFullTime(tBackSchool_AntiDrainGift_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 今日已领取
	BackSchool_AntiDrainGift_ClearStcInterval(1)
	local nData = BackSchool_AntiDrainGift_GetStcValue(1)
	if nData >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 等级不足
	local nLevel = tBackSchool_AntiDrainGift_Count["Status"][1]["Level"]
	local nMete = tBackSchool_AntiDrainGift_Count["Status"][1]["Meto"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 背包不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tBackSchool_AntiDrainGift_NpcReward[1],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tBackSchool_AntiDrainGift_Text["FullSpace"])
		return
	end
	
	-- 设掩码
	BackSchool_AntiDrainGift_SetStcValue(1,1)
	
	-- 给奖励/提示/log
	RewardTemplate_UseItemAndMsg(tBackSchool_AntiDrainGift_NpcReward[nStage])
end

--------------------------------------NPC模块--------------------------------------
-- 24792	魏博士
tNpcFace[5929] = 87
tNpcGossip[24792] = tNpcGossip[24792] or DefaultNpc:new{}
tNpcGossip[24792]["OptionHidden"] = 1
tNpcGossip[24792]["DialogueText"] = tBackSchool_AntiDrainGift_Text[24792]
-- 活动前
tNpcGossip[24792]["Text1-1"] = {111,112,113,114}
tNpcGossip[24792]["tOption1-1"] = {111}
tNpcGossip[24792]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tBackSchool_AntiDrainGift_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[24792]["Text1-2"] = {121}
tNpcGossip[24792]["tOption1-2"] = {121}
tNpcGossip[24792]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tBackSchool_AntiDrainGift_Count["ActivityTime"])
end

-- 活动中--等级不足
tNpcGossip[24792]["Text1-3"] = {131,132,133,134}
tNpcGossip[24792]["tOption1-3"] = {131}
tNpcGossip[24792]["ChkFunc1-3"] = function ()
	local nLevel = tBackSchool_AntiDrainGift_Count["Status"][1]["Level"] 
	local nMete = tBackSchool_AntiDrainGift_Count["Status"][1]["Meto"] 
	return not User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end

-- 活动中--等级足够
tNpcGossip[24792]["Text1-4"] = {131,132,133,134}
tNpcGossip[24792]["tOption1-4"] = {141,142}
tNpcGossip[24792]["ChkFunc1-4"] = function ()
	local nLevel = tBackSchool_AntiDrainGift_Count["Status"][1]["Level"]
	local nMete = tBackSchool_AntiDrainGift_Count["Status"][1]["Meto"] 
	-- 隔天重置
	BackSchool_AntiDrainGift_ClearStcInterval(1)
	local nData = BackSchool_AntiDrainGift_GetStcValue(1)
	-- 判断新学期活跃礼包可领
	if nData >= 1 then
		tNpcGossip[24792]["Option141"] = tBackSchool_AntiDrainGift_Text[24792]["Option1410"]
	else
		tNpcGossip[24792]["Option141"] = tBackSchool_AntiDrainGift_Text[24792]["Option141"]
	end
	return User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
-- 领取新学期活跃礼包
tNpcGossip[24792]["OptionFunc141"] = "BackSchool_AntiDrainGift_Receive</N>24792"

-- 接1、领取新学期活跃礼包
-- ===等级小于1转15级
tNpcGossip[24792]["Text2-1"] = {211,212}
tNpcGossip[24792]["tOption2-1"] = {211,212}
tNpcGossip[24792]["OptionFunc211"] = "BackSchool_AntiDrainGift_SureReceive</N>24792</N>1"
-- 活跃度不足200
tNpcGossip[24792]["Text2-2"] = {221}
tNpcGossip[24792]["tOption2-2"] = {221}
-- 今日已领取
tNpcGossip[24792]["Text2-3"] = {231}
tNpcGossip[24792]["tOption2-3"] = {231}
-- 接1、领取新学期活跃礼包。  ===等级大于1转15级，小于2转15级
tNpcGossip[24792]["Text2-4"] = {241,242}
tNpcGossip[24792]["tOption2-4"] = {241,212}
tNpcGossip[24792]["OptionFunc241"] = "BackSchool_AntiDrainGift_SureReceive</N>24792</N>2"
 -- ===等级达到2转15级
 -- 直接领取

 --------------------------------------物品模块--------------------------------------
-- 3313502,'精致活跃礼包'
tItem[3313502] = tItem[3313502] or {}
tItem[3313502]["Function"] = function(nItemId,sItemName)
	local nEMoneyMonoLimit = tBackSchool_AntiDrainGift_Reward[nItemId]["EMoneyMonoLimit"]
	local nEmoney = Get_UserMonoEMoney(nUserId)
	if nEmoney + nEMoneyMonoLimit > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
		return
	end
	
	RewardTemplate_RandomReward(tBackSchool_AntiDrainGift_Reward,nItemId)
end
-- 3313503,'豪华活跃礼包'
-- 3313504,'至尊活跃礼包'
tItem[3313503] = tItem[3313502]
tItem[3313504] = tItem[3313502]
 