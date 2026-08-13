------------------------------------------------------------------------------------
--Name：            191107[英文征服][活动脚本]12月MMO金币消耗活动（12.5-1.1）
--Creator:      兰瑞妹
--Created:     2019-11-07
------------------------------------------------------------------------------------
--任务需求：

-- 命名前缀
-- MMOGold_Consumption_

-- logid： 12001732

-- 掩码记录：
-- stc(209,64)  记录玩家是否获得背包信
-- stc(209,65)  记录玩家是否屏蔽二次确认单抽
-- stc(209,66)  记录玩家今日是否中一等奖单抽
-- stc(209,67)  记录玩家抽中的奖励单抽
-- stc(209,68)  记录玩家是否屏蔽二次确认10抽
-- stc(209,69)  记录玩家今日是否中一等奖10抽
-- stc(209,92)  记录玩家抽中的奖励--十连抽

-- #GlobalId		53883
-- #0 奖池金币数（100000000）
-- #1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录金币数量  datastr记录玩家名  time记录玩家获得奖励的时间
-- #GlobalId		53884
-- #6-10 最近五名中奖者数据 data最后一位记录获奖名次，前面记录金币数量  datastr记录玩家名  time记录玩家获得奖励的时间
-- #GlobalId		53885
-- #0 奖池金币数（初始值1000000000）
-- #1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录金币数量  datastr记录玩家名  time记录玩家获得奖励的时间
-- #GlobalId		53886
-- #6-10 最近五名中奖者数据 data最后一位记录获奖名次，前面记录金币数量  datastr记录玩家名  time记录玩家获得奖励的时间

----------------------------------表配置部分--------------------------------------------
local tMMOGold_Consumption_Data = {}
-- 活动时间
tMMOGold_Consumption_Data["ActivityTime"] = tActivityTime["MMOGoldConsumption"]["ActivityTime"]
-- 掩码记录
tMMOGold_Consumption_Data["Stc"] = {}
tMMOGold_Consumption_Data["Stc"]["Event"] = {}
tMMOGold_Consumption_Data["Stc"]["Data"] = {}
-- stc(209,65)  记录玩家是否屏蔽二次确认单抽
tMMOGold_Consumption_Data["Stc"]["Event"][1] = 209
tMMOGold_Consumption_Data["Stc"]["Data"][1] = 65
-- stc(209,66)  记录玩家今日是否中一等奖单抽
tMMOGold_Consumption_Data["Stc"]["Event"][3] = 209
tMMOGold_Consumption_Data["Stc"]["Data"][3] = 66
-- stc(209,67)  记录玩家抽中的奖励单抽
tMMOGold_Consumption_Data["Stc"]["Event"][4] = 209
tMMOGold_Consumption_Data["Stc"]["Data"][4] = 67
-- stc(209,68)  记录玩家是否屏蔽二次确认10抽
tMMOGold_Consumption_Data["Stc"]["Event"][5] = 209
tMMOGold_Consumption_Data["Stc"]["Data"][5] = 68
-- stc(209,69)  记录玩家今日是否中一等奖10抽
tMMOGold_Consumption_Data["Stc"]["Event"][6] = 209
tMMOGold_Consumption_Data["Stc"]["Data"][6] = 69
-- stc(209,92)  记录玩家抽中的奖励--十连抽
tMMOGold_Consumption_Data["Stc"]["Event"][7] = 209
tMMOGold_Consumption_Data["Stc"]["Data"][7] = 92
-- 光效
tMMOGold_Consumption_Data["EffectSelf"] = "self"
tMMOGold_Consumption_Data["NotReward"] = "BodyDisapear"
tMMOGold_Consumption_Data["EffectLight"] = {}
tMMOGold_Consumption_Data["EffectLight"][1] = "task104"
tMMOGold_Consumption_Data["EffectLight"][2] = "task105"
tMMOGold_Consumption_Data["EffectLight"][3] = "task106"
tMMOGold_Consumption_Data["EffectLight"][4] = "task107"
tMMOGold_Consumption_Data["EffectLight"][5] = "task108"
tMMOGold_Consumption_Data["EffectLight"][6] = "task109"
tMMOGold_Consumption_Data["EffectLight"][7] = "task110"
tMMOGold_Consumption_Data["EffectLight"][8] = "task111"
tMMOGold_Consumption_Data["EffectLight"][9] = "task112"
-- GlobalId
-- GlobalId1  0 奖池金币数（初始值100000000）
-- GlobalId2  0 单服掉落增点券数量
-- 1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录金币数量  datastr记录玩家名  time记录玩家获得奖励的时间
tMMOGold_Consumption_Data["GlobalId"] = {}
tMMOGold_Consumption_Data["GlobalId"][1] = 53883
tMMOGold_Consumption_Data["GlobalId"][2] = 53884
-- #0 奖池金币数（初始值1000000000）
-- #1-5 最近五名中奖者数据 data最后一位记录获奖名次，前面记录金币数量  datastr记录玩家名  time记录玩家获得奖励的时间
tMMOGold_Consumption_Data["GlobalId"][3] = 53885
tMMOGold_Consumption_Data["GlobalId"][4] = 53886
-- 郝运
tMMOGold_Consumption_Data["NpcId"] = 25502
tMMOGold_Consumption_Data["NpcMapId"] = 1002

-- 需要的金币
tMMOGold_Consumption_Data["NeedMoney"] = 270000
-- 金币倍数
tMMOGold_Consumption_Data["MoneyAdd"] = {}
-- 单抽
tMMOGold_Consumption_Data["MoneyAdd"][1] = 1
-- 十连抽
tMMOGold_Consumption_Data["MoneyAdd"][10] = 10
-- 播报奖池
tMMOGold_Consumption_Data["JackpotBroadCast"] = 150000000
tMMOGold_Consumption_Data["JackpotBroadCastNew"] = 1500000000
-- 被抽中一等奖重置奖池
tMMOGold_Consumption_Data["RestJackpot"] = 50000000
tMMOGold_Consumption_Data["RestJackpotNew"] = 500000000
-- 奖池概率
tMMOGold_Consumption_Data["Probability"] = {}
-- 总概率
tMMOGold_Consumption_Data["Probability"]["Sum"] = 1000000
-- 1-6名概率：X/奖池
tMMOGold_Consumption_Data["Probability"][1] = 2000000000
tMMOGold_Consumption_Data["Probability"][2] = 30000000000
tMMOGold_Consumption_Data["Probability"][3] = 150000000000
tMMOGold_Consumption_Data["Probability"][4] = 400000000000
tMMOGold_Consumption_Data["Probability"][5] = 1500000000000
tMMOGold_Consumption_Data["Probability"][6] = 10000000000000
-- 7-8名概率百万分比
tMMOGold_Consumption_Data["Probability"][7] = 100000
tMMOGold_Consumption_Data["Probability"][8] = 150000
-- 奖池概率（十连抽）
tMMOGold_Consumption_Data["TenProbability"] = {}
-- 总概率
tMMOGold_Consumption_Data["TenProbability"]["Sum"] = 1000000
-- 1-6名概率：X/奖池
tMMOGold_Consumption_Data["TenProbability"][1] = 20000000000
tMMOGold_Consumption_Data["TenProbability"][2] = 300000000000
tMMOGold_Consumption_Data["TenProbability"][3] = 1500000000000
tMMOGold_Consumption_Data["TenProbability"][4] = 4000000000000
tMMOGold_Consumption_Data["TenProbability"][5] = 15000000000000
tMMOGold_Consumption_Data["TenProbability"][6] = 100000000000000
-- 7-8名概率百万分比
tMMOGold_Consumption_Data["TenProbability"][7] = 100000
tMMOGold_Consumption_Data["TenProbability"][8] = 150000
-- 1-6名概率上下限（百万分）
tMMOGold_Consumption_Data["Limits"] = {}
tMMOGold_Consumption_Data["Limits"]["Upper"] = {}
tMMOGold_Consumption_Data["Limits"]["Lower"] = {}
-- 第一名
tMMOGold_Consumption_Data["Limits"]["Upper"][1] = 25
tMMOGold_Consumption_Data["Limits"]["Lower"][1] = 13
-- 第二名
tMMOGold_Consumption_Data["Limits"]["Upper"][2] = 333
tMMOGold_Consumption_Data["Limits"]["Lower"][2] = 167
-- 第三名
tMMOGold_Consumption_Data["Limits"]["Upper"][3] = 1500
tMMOGold_Consumption_Data["Limits"]["Lower"][3] = 750
-- 第四名
tMMOGold_Consumption_Data["Limits"]["Upper"][4] = 4000
tMMOGold_Consumption_Data["Limits"]["Lower"][4] = 2000
-- 第五名
tMMOGold_Consumption_Data["Limits"]["Upper"][5] = 15000
tMMOGold_Consumption_Data["Limits"]["Lower"][5] = 7500
-- 第六名
tMMOGold_Consumption_Data["Limits"]["Upper"][6] = 100000
tMMOGold_Consumption_Data["Limits"]["Lower"][6] = 50000
-- 1-6名概率上下限（百万分）(十连抽)
tMMOGold_Consumption_Data["TenLimits"] = {}
tMMOGold_Consumption_Data["TenLimits"]["Upper"] = {}
tMMOGold_Consumption_Data["TenLimits"]["Lower"] = {}
-- 第一名
tMMOGold_Consumption_Data["TenLimits"]["Upper"][1] = 25
tMMOGold_Consumption_Data["TenLimits"]["Lower"][1] = 17
-- 第二名
tMMOGold_Consumption_Data["TenLimits"]["Upper"][2] = 333
tMMOGold_Consumption_Data["TenLimits"]["Lower"][2] = 222
-- 第三名
tMMOGold_Consumption_Data["TenLimits"]["Upper"][3] = 1500
tMMOGold_Consumption_Data["TenLimits"]["Lower"][3] = 1000
-- 第四名
tMMOGold_Consumption_Data["TenLimits"]["Upper"][4] = 4000
tMMOGold_Consumption_Data["TenLimits"]["Lower"][4] = 2667
-- 第五名
tMMOGold_Consumption_Data["TenLimits"]["Upper"][5] = 15000
tMMOGold_Consumption_Data["TenLimits"]["Lower"][5] = 10000
-- 第六名
tMMOGold_Consumption_Data["TenLimits"]["Upper"][6] = 100000
tMMOGold_Consumption_Data["TenLimits"]["Lower"][6] = 66667
-- 获奖比例
tMMOGold_Consumption_Data["RankRewardMoney"] = {}
tMMOGold_Consumption_Data["RankRewardMoney"][1] = 1
tMMOGold_Consumption_Data["RankRewardMoney"][2] = 0.3
tMMOGold_Consumption_Data["RankRewardMoney"][3] = 0.1
tMMOGold_Consumption_Data["RankRewardMoney"][4] = 0.05
tMMOGold_Consumption_Data["RankRewardMoney"][5] = 0.03
tMMOGold_Consumption_Data["RankRewardMoney"][6] = 0.01
-- 抽奖LOG  天石
tMMOGold_Consumption_Data["UseMoneyLog"] = "0,0,1,%d,12001732,2[1],0,0"
-- 无奖励
tMMOGold_Consumption_Data["NoRewardLog"] = "0,0,0,0,12001732,1[9],0,0"
tMMOGold_Consumption_Data["NoRewardLogNew"] = "0,0,0,0,12001732,3[9],0,0"
-- 十连抽npc
tMMOGold_Consumption_Data["TenDrawNpc"] = 25503
-- 等级限制
tMMOGold_Consumption_Data["Level"] = 80
tMMOGold_Consumption_Data["Mete"] = 0
-- 金币限额
tMMOGold_Consumption_Data["MoneyLimit"] = 2100000000
-- 金币显示除以W
tMMOGold_Consumption_Data["MoneyCount"] = 10000

-- log表
local tMMOGold_Consumption_log = {}
	-- 金币抽奖次数 350 22728
	tMMOGold_Consumption_log["UseMoneyBuyLog"] = "350	22728	0	0	%d	"
	-- 中奖次数
	tMMOGold_Consumption_log["WinRewardMoneyBuy"] = {}
	-- 一等奖中奖次数 350 22729		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][1] = "350	22729	0	0	%d	"
	-- 二等奖中奖次数 350 22730		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][2] = "350	22730	0	0	%d	"
	-- 三等奖中奖次数 350 22731		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][3] = "350	22731	0	0	%d	"
	-- 四等奖中奖次数 350 22732		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][4] = "350	22732	0	0	%d	"
	-- 五等奖中奖次数 350 22733		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][5] = "350	22733	0	0	%d	"
	-- 六等奖中奖次数 350 22734		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][6] = "350	22734	0	0	%d	"
	-- 七等奖中奖次数 350 22735		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][7] = "350	22735	0	0	%d	"
	-- 八等奖中奖次数 350 22736		
	tMMOGold_Consumption_log["WinRewardMoneyBuy"][8] = "350	22736	0	0	%d	"

-- 金币抽奖概率
local tMMOGold_Consumption_JackpotReward = {}
tMMOGold_Consumption_JackpotReward[1] = {}
tMMOGold_Consumption_JackpotReward[1]["ItemChanceSum"] = 1000000
-- 一等奖
tMMOGold_Consumption_JackpotReward[1][1] = {}
tMMOGold_Consumption_JackpotReward[1][1]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][1]["ItemChance"] = 0
tMMOGold_Consumption_JackpotReward[1][1]["Rank"] = 1
-- 二等奖
tMMOGold_Consumption_JackpotReward[1][2] = {}
tMMOGold_Consumption_JackpotReward[1][2]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][2]["ItemChance"] = 0
tMMOGold_Consumption_JackpotReward[1][2]["Rank"] = 2
-- 三等奖
tMMOGold_Consumption_JackpotReward[1][3] = {}
tMMOGold_Consumption_JackpotReward[1][3]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][3]["ItemChance"] = 0
tMMOGold_Consumption_JackpotReward[1][3]["Rank"] = 3
-- 四等奖
tMMOGold_Consumption_JackpotReward[1][4] = {}
tMMOGold_Consumption_JackpotReward[1][4]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][4]["ItemChance"] = 0
tMMOGold_Consumption_JackpotReward[1][4]["Rank"] = 4
-- 五等奖
tMMOGold_Consumption_JackpotReward[1][5] = {}
tMMOGold_Consumption_JackpotReward[1][5]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][5]["ItemChance"] = 0
tMMOGold_Consumption_JackpotReward[1][5]["Rank"] = 5
-- 六等奖
tMMOGold_Consumption_JackpotReward[1][6] = {}
tMMOGold_Consumption_JackpotReward[1][6]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][6]["ItemChance"] = 0
tMMOGold_Consumption_JackpotReward[1][6]["Rank"] = 6
-- 七等奖
tMMOGold_Consumption_JackpotReward[1][7] = {}
tMMOGold_Consumption_JackpotReward[1][7]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][7]["ItemChance"] = 100000
tMMOGold_Consumption_JackpotReward[1][7]["Rank"] = 7
-- 八等奖
tMMOGold_Consumption_JackpotReward[1][8] = {}
tMMOGold_Consumption_JackpotReward[1][8]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][8]["ItemChance"] = 150000
tMMOGold_Consumption_JackpotReward[1][8]["Rank"] = 8
-- 未中奖
tMMOGold_Consumption_JackpotReward[1][9] = {}
tMMOGold_Consumption_JackpotReward[1][9]["RandomItemChanceType"] = 2
tMMOGold_Consumption_JackpotReward[1][9]["ItemChance"] = 750000
tMMOGold_Consumption_JackpotReward[1][9]["RewardItem"] = {}
tMMOGold_Consumption_JackpotReward[1][9]["Rank"] = 9

-- 抽奖获得奖励
tMMOGold_Consumption_JackpotReward[2] = {}
tMMOGold_Consumption_JackpotReward[2][1] = {}
-- 1等奖
tMMOGold_Consumption_JackpotReward[2][1]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[2][1]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[2][1]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][1]["RewardEffect"]["Effect"] = "FF07"
tMMOGold_Consumption_JackpotReward[2][1]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][1]["LogStep"] = "1[1]"
-- 2等奖
tMMOGold_Consumption_JackpotReward[2][2] = {}
tMMOGold_Consumption_JackpotReward[2][2]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[2][2]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[2][2]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][2]["RewardEffect"]["Effect"] = "FF07"
tMMOGold_Consumption_JackpotReward[2][2]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][2]["LogStep"] = "1[2]"
-- 3等奖
tMMOGold_Consumption_JackpotReward[2][3] = {}
tMMOGold_Consumption_JackpotReward[2][3]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[2][3]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[2][3]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][3]["RewardEffect"]["Effect"] = "FF07"
tMMOGold_Consumption_JackpotReward[2][3]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][3]["LogStep"] = "1[3]"
-- 4等奖
tMMOGold_Consumption_JackpotReward[2][4] = {}
tMMOGold_Consumption_JackpotReward[2][4]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[2][4]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[2][4]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][4]["RewardEffect"]["Effect"] = "FF17"
tMMOGold_Consumption_JackpotReward[2][4]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][4]["LogStep"] = "1[4]"
-- 5等奖
tMMOGold_Consumption_JackpotReward[2][5] = {}
tMMOGold_Consumption_JackpotReward[2][5]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[2][5]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[2][5]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][5]["RewardEffect"]["Effect"] = "FF17"
tMMOGold_Consumption_JackpotReward[2][5]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][5]["LogStep"] = "1[5]"
-- 6等奖
tMMOGold_Consumption_JackpotReward[2][6] = {}
tMMOGold_Consumption_JackpotReward[2][6]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[2][6]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[2][6]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][6]["RewardEffect"]["Effect"] = "FF17"
tMMOGold_Consumption_JackpotReward[2][6]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][6]["LogStep"] = "1[6]"
-- 7等奖
tMMOGold_Consumption_JackpotReward[2][7] = {}
-- tMMOGold_Consumption_JackpotReward[2][7]["RewardStrengthValue"] = {}
-- tMMOGold_Consumption_JackpotReward[2][7]["RewardStrengthValue"]["Value"] = 50
tMMOGold_Consumption_JackpotReward[2][7]["RewardItem"] = {}
tMMOGold_Consumption_JackpotReward[2][7]["RewardItem"][1] = {}
tMMOGold_Consumption_JackpotReward[2][7]["RewardItem"][1]["Id"] = 3008222
tMMOGold_Consumption_JackpotReward[2][7]["RewardItem"][1]["Attr"] = "0 1"
tMMOGold_Consumption_JackpotReward[2][7]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][7]["RewardEffect"]["Effect"] = "zf2-e128"
tMMOGold_Consumption_JackpotReward[2][7]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][7]["LogStep"] = "1[7]"
-- 8等奖
tMMOGold_Consumption_JackpotReward[2][8] = {}
tMMOGold_Consumption_JackpotReward[2][8]["RewardStrengthValue"] = {}
tMMOGold_Consumption_JackpotReward[2][8]["RewardStrengthValue"]["Value"] = 50
tMMOGold_Consumption_JackpotReward[2][8]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[2][8]["RewardEffect"]["Effect"] = "zf2-e128"
tMMOGold_Consumption_JackpotReward[2][8]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][8]["LogStep"] = "1[8]"
-- 未中奖
tMMOGold_Consumption_JackpotReward[2][9] = {}
tMMOGold_Consumption_JackpotReward[2][9]["RewardItem"] = {}
tMMOGold_Consumption_JackpotReward[2][9]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[2][9]["LogStep"] = "1[9]"
-- 抽奖获得奖励
tMMOGold_Consumption_JackpotReward[3] = {}
tMMOGold_Consumption_JackpotReward[3][1] = {}
-- 1等奖
tMMOGold_Consumption_JackpotReward[3][1]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[3][1]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[3][1]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][1]["RewardEffect"]["Effect"] = "FF07"
tMMOGold_Consumption_JackpotReward[3][1]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][1]["LogStep"] = "3[1]"
-- 2等奖
tMMOGold_Consumption_JackpotReward[3][2] = {}
tMMOGold_Consumption_JackpotReward[3][2]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[3][2]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[3][2]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][2]["RewardEffect"]["Effect"] = "FF07"
tMMOGold_Consumption_JackpotReward[3][2]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][2]["LogStep"] = "3[2]"
-- 3等奖
tMMOGold_Consumption_JackpotReward[3][3] = {}
tMMOGold_Consumption_JackpotReward[3][3]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[3][3]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[3][3]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][3]["RewardEffect"]["Effect"] = "FF07"
tMMOGold_Consumption_JackpotReward[3][3]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][3]["LogStep"] = "3[3]"
-- 4等奖
tMMOGold_Consumption_JackpotReward[3][4] = {}
tMMOGold_Consumption_JackpotReward[3][4]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[3][4]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[3][4]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][4]["RewardEffect"]["Effect"] = "FF17"
tMMOGold_Consumption_JackpotReward[3][4]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][4]["LogStep"] = "3[4]"
-- 5等奖
tMMOGold_Consumption_JackpotReward[3][5] = {}
tMMOGold_Consumption_JackpotReward[3][5]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[3][5]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[3][5]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][5]["RewardEffect"]["Effect"] = "FF17"
tMMOGold_Consumption_JackpotReward[3][5]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][5]["LogStep"] = "3[5]"
-- 6等奖
tMMOGold_Consumption_JackpotReward[3][6] = {}
tMMOGold_Consumption_JackpotReward[3][6]["RewardMoney"] = {}
tMMOGold_Consumption_JackpotReward[3][6]["RewardMoney"]["Value"] = 0
tMMOGold_Consumption_JackpotReward[3][6]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][6]["RewardEffect"]["Effect"] = "FF17"
tMMOGold_Consumption_JackpotReward[3][6]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][6]["LogStep"] = "3[6]"
-- 7等奖
tMMOGold_Consumption_JackpotReward[3][7] = {}
tMMOGold_Consumption_JackpotReward[3][7]["RewardItem"] = {}
tMMOGold_Consumption_JackpotReward[3][7]["RewardItem"][1] = {}
tMMOGold_Consumption_JackpotReward[3][7]["RewardItem"][1]["Id"] = 3008221
tMMOGold_Consumption_JackpotReward[3][7]["RewardItem"][1]["Attr"] = "0 1"
tMMOGold_Consumption_JackpotReward[3][7]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][7]["RewardEffect"]["Effect"] = "zf2-e128"
tMMOGold_Consumption_JackpotReward[3][7]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][7]["LogStep"] = "3[7]"
-- 8等奖
tMMOGold_Consumption_JackpotReward[3][8] = {}
tMMOGold_Consumption_JackpotReward[3][8]["RewardStrengthValue"] = {}
tMMOGold_Consumption_JackpotReward[3][8]["RewardStrengthValue"]["Value"] = 500
tMMOGold_Consumption_JackpotReward[3][8]["RewardEffect"] = {}
tMMOGold_Consumption_JackpotReward[3][8]["RewardEffect"]["Effect"] = "zf2-e128"
tMMOGold_Consumption_JackpotReward[3][8]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][8]["LogStep"] = "3[8]"
-- 未中奖
tMMOGold_Consumption_JackpotReward[3][9] = {}
tMMOGold_Consumption_JackpotReward[3][9]["RewardItem"] = {}
tMMOGold_Consumption_JackpotReward[3][9]["LogId"] = 12001732
tMMOGold_Consumption_JackpotReward[3][9]["LogStep"] = "3[9]"

----------------------------------逻辑部分---------------------------------------------
-- 检测金币限额
function MMOGold_Consumption_ChkGoldLimit(nMaxMoney)
	local nMoneyLimit = tMMOGold_Consumption_Data["MoneyLimit"]
	if nMaxMoney > nMoneyLimit then
		return nMoneyLimit
	end
	return nMaxMoney
end
-- 链接寻路
function MMOGold_Consumption_JoinTheActivity(nIndex)
	if not Sys_ChkFullTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		return
	end
	
	local nMapId = tMMOGold_Consumption_Data["NpcMapId"]
	local nUserMapId = Get_UserMapId()
	if nUserMapId == nMapId or nUserMapId == 1036 then
		-- Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
		local nNpcId = tMMOGold_Consumption_Data["NpcId"]
		NpcPosition_PathFind(nNpcId)
	else
		Sys_MsgBox(tMMOGold_Consumption_Text["SysMsg"]["GotoPos"])
	end
end

-- 金币开奖选项判断 nIndex:1是单抽 10是十连抽
function MMOGold_Consumption_OptionChk(nIndex)
	local nNpcId = Get_NpcId()
	if nNpcId ~= tMMOGold_Consumption_Data["NpcId"] and nNpcId ~= tMMOGold_Consumption_Data["TenDrawNpc"] then
		return
	end
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	
	local nStcIndex = 0
	if nIndex >= 10 then
		nStcIndex = 4
	end
	local nLastStcIndex = nStcIndex + 1
	local nEvent = tMMOGold_Consumption_Data["Stc"]["Event"][nLastStcIndex]
	local nData = tMMOGold_Consumption_Data["Stc"]["Data"][nLastStcIndex]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	
	if nIndex == 1 then
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		MMOGold_Consumption_Lottery(1)
		return
	else
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		end
	else
		if Task_ChkStcValue(nEvent, nData, ">", 0) then
			MMOGold_Consumption_Lottery(nIndex)
			return
		else
			LinkNpcGossipFunc_New(nNpcId, "2-3")
		end
	end
end

-- 屏蔽二次确认
function MMOGold_Consumption_ShieldingConfirmation()
	local nNpcId = tMMOGold_Consumption_Data["NpcId"]
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	-- 设置二次屏蔽掩码
	local nEvent = tMMOGold_Consumption_Data["Stc"]["Event"][1]
	local nData = tMMOGold_Consumption_Data["Stc"]["Data"][1]
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end

-- 屏蔽二次确认10抽
function MMOGold_Consumption_NewConfirmation()
	local nNpcId = tMMOGold_Consumption_Data["TenDrawNpc"]
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	-- 设置二次屏蔽掩码
	local nEvent = tMMOGold_Consumption_Data["Stc"]["Event"][5]
	local nData = tMMOGold_Consumption_Data["Stc"]["Data"][5]
	Task_SetStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end

-- 开奖   1表示用金币开奖 10表示金币10连抽
function MMOGold_Consumption_Lottery(nChoose)
	local nNpcId = Get_NpcId()
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	local nTime = nChoose
	-- 判断开奖方式
	local nGlobalId = tMMOGold_Consumption_Data["GlobalId"][1]
	if nChoose >= 10 then
		nGlobalId = tMMOGold_Consumption_Data["GlobalId"][3]
	end
	local nJackpotMoneyFirst = Get_SysDynaGlobalData0(nGlobalId)
	-- local nMoneyAdd = tMMOGold_Consumption_Data["MoneyAdd"][nChoose]
	local nNeedMoney = tMMOGold_Consumption_Data["NeedMoney"]*nChoose
	-- 金币不足
	if not User_CanPutMoney2Bag(-nNeedMoney,nUserId) then
		Sys_MsgBox(tMMOGold_Consumption_Text["SysMsg"]["EmoneyNotEnough"])
		return
	end
	-- 背包不足
	if not User_CheckLeftSpace(1,nUserId) then
		Sys_MsgBox(tMMOGold_Consumption_Text["SysMsg"]["BackFull"])
		return
	end
	-- 满金币
	local nMaxMoney = MMOGold_Consumption_ChkGoldLimit(nJackpotMoneyFirst)
	if not User_CanPutMoney2Bag(nMaxMoney,nUserId) then
		Sys_MsgBox(tMMOGold_Consumption_Text["SysMsg"]["EmoneyFull"])
		return
	end
	local nRandomReward = CommonFunc_Copy(tMMOGold_Consumption_JackpotReward)
	-- 判断单抽或者十连抽 概率不一样
	local tProbability = tMMOGold_Consumption_Data["Probability"]
	if  nChoose >= 10 then
		tProbability = tMMOGold_Consumption_Data["TenProbability"]
	end
	
	local nItemChanceSum = tProbability["Sum"]
	-- 去掉第七，八等奖
	nItemChanceSum = nItemChanceSum - tProbability[7] - tProbability[8]
	-- 一等奖
	local nRandomFirst = MMOGold_Consumption_RandomChance(1,nChoose)
	nRandomReward[1][1]["ItemChance"] = nRandomFirst
	nItemChanceSum = nItemChanceSum - nRandomFirst
	-- 二等奖
	local nRandomSecond = MMOGold_Consumption_RandomChance(2,nChoose)
	nRandomReward[1][2]["ItemChance"] = nRandomSecond
	nItemChanceSum = nItemChanceSum - nRandomSecond
	-- 三等奖
	local nRandomThird = MMOGold_Consumption_RandomChance(3,nChoose)
	nRandomReward[1][3]["ItemChance"] = nRandomThird
	nItemChanceSum = nItemChanceSum - nRandomThird
	-- 四等奖
	local nRandomFourth = MMOGold_Consumption_RandomChance(4,nChoose)
	nRandomReward[1][4]["ItemChance"] = nRandomFourth
	nItemChanceSum = nItemChanceSum - nRandomFourth
	-- 五等奖
	local nRandomFifth = MMOGold_Consumption_RandomChance(5,nChoose)
	nRandomReward[1][5]["ItemChance"] = nRandomFifth
	nItemChanceSum = nItemChanceSum - nRandomFifth
	-- 六等奖
	local nRandomSixth = MMOGold_Consumption_RandomChance(6,nChoose)
	nRandomReward[1][6]["ItemChance"] = nRandomSixth
	nItemChanceSum = nItemChanceSum - nRandomSixth
	-- 未中奖
	nRandomReward[1][9]["ItemChance"] = nItemChanceSum
	local flat,tReward = Probabil_RandomAward(nRandomReward, 1)
	local nRank = tReward[1]["tAward"][1]["Rank"]
	nRank = MMOGold_Consumption_ChkRankChange(nRank,nChoose)
	-- 光效+延时
	User_EffectAdd(tMMOGold_Consumption_Data["EffectSelf"], tMMOGold_Consumption_Data["EffectLight"][nRank])
	User_SetTimer(3, "MMOGold_Consumption_RunTheLottery</N>" .. nChoose .. "</N>" .. nRank .. "</N>" .. nNpcId, 0)
	
	-- MMOGold_Consumption_RunTheLottery()
	-- LinkNpcGossipFunc_New(nNpcId, "1-2")
end

-- 判断奖励是否需要修改
function MMOGold_Consumption_ChkRankChange(nRank,nChoose)
	local nIndex = 4
	if nChoose >= 10 then
		 nIndex = 7
	end
	local nRankEvent = tMMOGold_Consumption_Data["Stc"]["Event"][nIndex]
	local nRankData = tMMOGold_Consumption_Data["Stc"]["Data"][nIndex]
	-- 奖励已结算
	if Task_ChkStcValue(nRankEvent, nRankData, "==", 0) then
		Task_SetStatistic(nRankEvent,nRankData, nRank, 1)
		Task_SetStcTimestamp(nRankEvent,nRankData, 0)
		return nRank
	-- 奖励未结算
	else
		local nRankBefore = Get_UserStatisticValue(nRankEvent,nRankData)
		return nRankBefore
	end
end

-- 开奖
function MMOGold_Consumption_RunTheLottery(nChoose, nRank, nNpcId, nUserId)
	-- local nNpcId = tMMOGold_Consumption_Data["NpcId"]
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		return
	end
	-- 奖池奖金
	local nGlobalId = tMMOGold_Consumption_Data["GlobalId"][1]
	local nStcIndex = 0
	if nChoose >= 10 then
		nGlobalId = tMMOGold_Consumption_Data["GlobalId"][3]
		nStcIndex = 3
	end
	local nJackpotMoneyFirst = Get_SysDynaGlobalData0(nGlobalId)
	local nTime = nChoose
	-- 判断开奖方式
	-- local nEmoneyAdd = tMMOGold_Consumption_Data["MoneyAdd"][nMoneyIndex]
	local nNeedMoney = tMMOGold_Consumption_Data["NeedMoney"]*nChoose
	-- 金币不足
	if not User_CanPutMoney2Bag(-nNeedMoney,nUserId) then
		Sys_MsgBox(tMMOGold_Consumption_Text["SysMsg"]["EmoneyNotEnough"], nil, nil, nUserId)
		return
	end
	-- 背包不足
	if not User_CheckLeftSpace(1,nUserId) then
		Sys_MsgBox(tMMOGold_Consumption_Text["SysMsg"]["BackFull"], nil, nil, nUserId)
		return
	end
	-- 满金币
	local nMaxMoney = MMOGold_Consumption_ChkGoldLimit(nJackpotMoneyFirst)
	if not User_CanPutMoney2Bag(nMaxMoney,nUserId) then
		Sys_MsgBox(tMMOGold_Consumption_Text["SysMsg"]["EmoneyFull"], nil, nil, nUserId)
		return
	end
	-- 金币扣除失败，返回
	if not User_AddMoney(-nNeedMoney, nUserId) then
		return
	else
		local sUseEmoneyLog = tMMOGold_Consumption_Data["UseMoneyLog"]
		Sys_SaveActionFestivalLog(string.format(sUseEmoneyLog,nNeedMoney), nUserId)
		local sNewEmoneyLog = tMMOGold_Consumption_log["UseMoneyBuyLog"]
		Sys_SaveEmoneyBuy(string.format(sNewEmoneyLog,nNeedMoney),nUserId)
	end
	local nGetReward
	if nChoose >= 10 then
		nGetReward = CommonFunc_Copy(tMMOGold_Consumption_JackpotReward[3])
	else
		nGetReward = CommonFunc_Copy(tMMOGold_Consumption_JackpotReward[2])
	end
	local nUserName = Get_UserName(nUserId)
	local tMsgBox = {}
	-- -- 一等奖
	local tRewardBroadCastText = {}
	tRewardBroadCastText[1] = string.format(tMMOGold_Consumption_Text["BroadCast"]["OneToThree"], nUserName, tMMOGold_Consumption_Text["BroadCast"][1], nJackpotMoneyFirst)
	nGetReward[1]["RewardBroadCast"] = tRewardBroadCastText[1]
	nGetReward[1]["RewardMoney"]["Value"] = MMOGold_Consumption_ChkGoldLimit(nJackpotMoneyFirst)
	local sRewardFirst = string.format(tMMOGold_Consumption_Text["Dialog"]["RewardGift"]["Money"], nJackpotMoneyFirst)
	tMsgBox[1] = string.format(tMMOGold_Consumption_Text["SysMsg"]["LotterySucc"], sRewardFirst)
	-- 二等奖
	local nJackpotMoneySecond = math.ceil(nJackpotMoneyFirst * 0.3)
	tRewardBroadCastText[2] = string.format(tMMOGold_Consumption_Text["BroadCast"]["OneToThree"], nUserName, tMMOGold_Consumption_Text["BroadCast"][2], nJackpotMoneySecond)
	nGetReward[2]["RewardBroadCast"] = tRewardBroadCastText[2]
	nGetReward[2]["RewardMoney"]["Value"] = nJackpotMoneySecond
	local sRewardSecond = string.format(tMMOGold_Consumption_Text["Dialog"]["RewardGift"]["Money"], nJackpotMoneySecond)
	tMsgBox[2] = string.format(tMMOGold_Consumption_Text["SysMsg"]["LotterySucc"], sRewardSecond)
	-- 三等奖
	local nJackpotMoneyThird = math.ceil(nJackpotMoneyFirst * 0.1)
	tRewardBroadCastText[3] = string.format(tMMOGold_Consumption_Text["BroadCast"]["OneToThree"], nUserName, tMMOGold_Consumption_Text["BroadCast"][3], nJackpotMoneyThird)
	nGetReward[3]["RewardBroadCast"] = tRewardBroadCastText[3]
	nGetReward[3]["RewardMoney"]["Value"] = nJackpotMoneyThird
	local sRewardThird = string.format(tMMOGold_Consumption_Text["Dialog"]["RewardGift"]["Money"], nJackpotMoneyThird)
	tMsgBox[3] = string.format(tMMOGold_Consumption_Text["SysMsg"]["LotterySucc"], sRewardThird)
	-- 四等奖
	local nJackpotMoneyFourth = math.ceil(nJackpotMoneyFirst * 0.05)
	tRewardBroadCastText[4] = string.format(tMMOGold_Consumption_Text["BroadCast"]["FourToSix"], nUserName, tMMOGold_Consumption_Text["BroadCast"][4], nJackpotMoneyFourth)
	nGetReward[4]["RewardBroadCast"] = tRewardBroadCastText[4]
	nGetReward[4]["RewardMoney"]["Value"] = nJackpotMoneyFourth
	local sRewardFourth = string.format(tMMOGold_Consumption_Text["Dialog"]["RewardGift"]["Money"], nJackpotMoneyFourth)
	tMsgBox[4] = string.format(tMMOGold_Consumption_Text["SysMsg"]["LotterySucc"], sRewardFourth)
	-- 五等奖
	local nJackpotMoneyFifth = math.ceil(nJackpotMoneyFirst * 0.03)
	tRewardBroadCastText[5] = string.format(tMMOGold_Consumption_Text["BroadCast"]["FourToSix"], nUserName, tMMOGold_Consumption_Text["BroadCast"][5], nJackpotMoneyFifth)
	nGetReward[5]["RewardBroadCast"] = tRewardBroadCastText[5]
	nGetReward[5]["RewardMoney"]["Value"] = nJackpotMoneyFifth
	local sRewardFifth = string.format(tMMOGold_Consumption_Text["Dialog"]["RewardGift"]["Money"], nJackpotMoneyFifth)
	tMsgBox[5] = string.format(tMMOGold_Consumption_Text["SysMsg"]["LotterySucc"], sRewardFifth)
	-- 六等奖
	local nJackpotMoneySixth = math.ceil(nJackpotMoneyFirst * 0.01)
	tRewardBroadCastText[6] = string.format(tMMOGold_Consumption_Text["BroadCast"]["FourToSix"], nUserName, tMMOGold_Consumption_Text["BroadCast"][6], nJackpotMoneySixth)
	nGetReward[6]["RewardBroadCast"] = tRewardBroadCastText[6]
	nGetReward[6]["RewardMoney"]["Value"] = nJackpotMoneySixth
	local sRewardSixth = string.format(tMMOGold_Consumption_Text["Dialog"]["RewardGift"]["Money"], nJackpotMoneySixth)
	tMsgBox[6] = string.format(tMMOGold_Consumption_Text["SysMsg"]["LotterySucc"], sRewardSixth)
	tMsgBox[7] = tMMOGold_Consumption_Text["SysMsg"]["LotterySucc4"]
	tMsgBox[8] = tMMOGold_Consumption_Text["SysMsg"]["LotterySucc1"]
	tMsgBox[9] = tMMOGold_Consumption_Text["SysMsg"]["LotteryFail"]
	local nJackpotBroadCast = tMMOGold_Consumption_Data["JackpotBroadCast"]
	local sNowLog = tMMOGold_Consumption_Data["NoRewardLog"]
	if nChoose >= 10 then
		tMsgBox[9] = tMMOGold_Consumption_Text["SysMsg"]["LotteryFailTen"]
		tMsgBox[7] = tMMOGold_Consumption_Text["SysMsg"]["LotterySucc5"]
		tMsgBox[8] = tMMOGold_Consumption_Text["SysMsg"]["LotterySucc6"]
		nJackpotBroadCast = tMMOGold_Consumption_Data["JackpotBroadCastNew"]
		sNowLog = tMMOGold_Consumption_Data["NoRewardLogNew"]
	end
	for i=1,8 do 
		local sWinRewardMoneyBuy = tMMOGold_Consumption_log["WinRewardMoneyBuy"][i]
		nGetReward[i]["EmoneyLog"] = string.format(sWinRewardMoneyBuy,nChoose)
	end
	
	-- 奖池奖励领取
	if  nRank >= 1 and nRank <= 6 then
		local nRewardMoney = nGetReward[nRank]["RewardMoney"]["Value"]
		RewardTemplate_UseItem(nGetReward[nRank], nUserId)
		if nRank <= 3 then
			Sys_TalkBroadcast(tRewardBroadCastText[nRank])
		end
		MMOGold_Consumption_RankRecord(nRank, nUserName, nRewardMoney,nChoose)
	elseif nRank >= 7 and nRank <= 8 then
		RewardTemplate_UseItem(nGetReward[nRank], nUserId)
	elseif nRank == 9 then
		-- 播放光效
		User_EffectAdd(tMMOGold_Consumption_Data["EffectSelf"], tMMOGold_Consumption_Data["NotReward"], nUserId)
		local nJackpotMoney = Get_SysDynaGlobalData0(nGlobalId)
		-- 奖池大于15000播报
		local nEmoneyAdd = tMMOGold_Consumption_Data["MoneyAdd"][nChoose]
		local nLastHaveAdd = nJackpotMoney + tMMOGold_Consumption_Data["NeedMoney"]*nEmoneyAdd
		if nJackpotMoney > nJackpotBroadCast then
			local nBeforeAdd = math.floor(nJackpotMoney / 1000)
			local nAfterAdd = math.floor(nLastHaveAdd / 1000)
			if nAfterAdd > nBeforeAdd then
				Sys_SystemBroadcast(string.format(tMMOGold_Consumption_Text["BroadCast"]["LotteryFull"], nLastHaveAdd))
			end
		end
		Sys_SetSynaGlobalData0(nGlobalId, nLastHaveAdd)
		-- RewardTemplate_UseItem(nGetReward[nRank], nUserId)
		Sys_SaveActionRewardLog(sNowLog,nUserId)
	end
	-- 中一等奖设置掩码
	if nRank == 1 then
		local nLastStcIndex = nStcIndex + 3
		local nTopOneEvent = tMMOGold_Consumption_Data["Stc"]["Event"][nLastStcIndex]
		local nTopOneData = tMMOGold_Consumption_Data["Stc"]["Data"][nLastStcIndex]
		Task_SetStatistic(nTopOneEvent,nTopOneData, 1, 1, nUserId)
		Task_SetStcTimestamp(nTopOneEvent,nTopOneData, 0, nUserId)
	end
	-- 奖励掩码清零
	local nSetIndex = nStcIndex + 4
	local nRankEvent = tMMOGold_Consumption_Data["Stc"]["Event"][nSetIndex]
	local nRankData = tMMOGold_Consumption_Data["Stc"]["Data"][nSetIndex]
	Task_SetStatistic(nRankEvent,nRankData, 0, 1, nUserId)
	Task_SetStcTimestamp(nRankEvent,nRankData, 0, nUserId)
	-- 跳转到对白
	Sys_MsgBox(tMsgBox[nRank], string.format("MMOGold_Consumption_OptionChk</N>%d", nChoose),  string.format("MMOGold_Consumption_RewardTip</N>%d", nNpcId), nUserId)
end

-- 抽奖跳转到对白
function MMOGold_Consumption_RewardTip(nNpcId)
	local nNowNpcId = Get_NpcId()
	if nNpcId ~= nNowNpcId then
		return
	end
	if CommonFunc_GetAfterActivityTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-3")
		return
	end
	LinkNpcGossipFunc_New(nNpcId, "1-2")
end

-- 获奖记录，重置奖池
function MMOGold_Consumption_RankRecord(nRank, nUserName, nRewardMoney,nChoose)
	local nGlobalId1 = tMMOGold_Consumption_Data["GlobalId"][1]
	local nGlobalId2 = tMMOGold_Consumption_Data["GlobalId"][2]
	local nRestJackpot = tMMOGold_Consumption_Data["RestJackpot"]
	if nChoose >= 10 then
		nGlobalId1 = tMMOGold_Consumption_Data["GlobalId"][3]
		nGlobalId2 = tMMOGold_Consumption_Data["GlobalId"][4]
		nRestJackpot = tMMOGold_Consumption_Data["RestJackpotNew"]
	end
	local tRankData = {}
	-- 获取当前获奖记录   1-5
	for i = 1, 5 do
		tRankData[i] = {}
		tRankData[i]["Name"] = Get_SysDynaGlobalDataStr(nGlobalId1, i)
		tRankData[i]["Time"] = Get_SysDynaGlobalTime(nGlobalId1, i)
		local nUserMoney = Get_SysDynaGlobalData(nGlobalId1, i)
		if nUserMoney > 0 then
			tRankData[i]["Rank"] = nUserMoney % 10
			tRankData[i]["Money"] = math.floor(nUserMoney / 10)
		else
			tRankData[i]["Rank"] = 0
			tRankData[i]["Money"] = 0
		end
	end
	-- 获取当前获奖记录   6-10
	for i = 6, 10 do
		tRankData[i] = {}
		tRankData[i]["Name"] = Get_SysDynaGlobalDataStr(nGlobalId2, i - 5)
		tRankData[i]["Time"] = Get_SysDynaGlobalTime(nGlobalId2, i - 5)
		local nUserMoney = Get_SysDynaGlobalData(nGlobalId2, i - 5)
		if nUserMoney > 0 then
			tRankData[i]["Rank"] = nUserMoney % 10
			tRankData[i]["Money"] = math.floor(nUserMoney / 10)
		else
			tRankData[i]["Rank"] = 0
			tRankData[i]["Money"] = 0
		end
	end
	-- 刷新获奖记录
	for i = 10, 2, -1 do
		tRankData[i]["Name"] = tRankData[i - 1]["Name"]
		tRankData[i]["Time"] = tRankData[i - 1]["Time"]
		tRankData[i]["Rank"] = tRankData[i - 1]["Rank"]
		tRankData[i]["Money"] = tRankData[i - 1]["Money"]
	end
	tRankData[1]["Name"] = nUserName
	tRankData[1]["Time"] = os.time()
	tRankData[1]["Rank"] = nRank
	local nMoneyCount = tMMOGold_Consumption_Data["MoneyCount"]
	tRankData[1]["Money"] = math.floor(nRewardMoney/nMoneyCount)
	-- 写入数据
	for i = 1, 5 do
		-- 1-5名
		Sys_SetSynaGlobalDataStr(nGlobalId1, i, tRankData[i]["Name"])
		Sys_SetSynaGlobalTime(nGlobalId1, i, tRankData[i]["Time"])
		Sys_SetSynaGlobalData(nGlobalId1, i, tRankData[i]["Money"] * 10 + tRankData[i]["Rank"])
		-- 6-10名
		Sys_SetSynaGlobalDataStr(nGlobalId2, i, tRankData[i + 5]["Name"])
		Sys_SetSynaGlobalTime(nGlobalId2, i, tRankData[i + 5]["Time"])
		Sys_SetSynaGlobalData(nGlobalId2, i, tRankData[i + 5]["Money"] * 10 + tRankData[i + 5]["Rank"])
	end
	-- 奖池奖励计算
	if nRank == 1 then
		Sys_SetSynaGlobalData0(nGlobalId1, nRestJackpot)
	else
		local nJackpotMoney = Get_SysDynaGlobalData0(nGlobalId1)
		Sys_SetSynaGlobalData0(nGlobalId1, nJackpotMoney - nRewardMoney)
	end
end

-- 金币抽奖概率计算
function MMOGold_Consumption_RandomChance(nIndex,nChoose)
	local nGlobalId = tMMOGold_Consumption_Data["GlobalId"][1]
	local nStcIndex = 0
	
	-- 判断单抽或者十连抽 概率不一样
	local tProbability = tMMOGold_Consumption_Data["Probability"]
	local tLimits = tMMOGold_Consumption_Data["Limits"]
	if nChoose >= 10 then
		nGlobalId = tMMOGold_Consumption_Data["GlobalId"][3]
		nStcIndex = 2
		tProbability = tMMOGold_Consumption_Data["TenProbability"]
		tLimits = tMMOGold_Consumption_Data["TenLimits"]
	end
	local nMaxRandom = tLimits["Upper"][nIndex]
	local nMinRandom = tLimits["Lower"][nIndex]
	
	local nJackpotMoney = Get_SysDynaGlobalData0(nGlobalId)
	local nRandom = math.floor(tProbability[nIndex] / nJackpotMoney)
	if nRandom > nMaxRandom then
		nRandom = nMaxRandom
	elseif nRandom < nMinRandom then
		nRandom = nMinRandom
	end
	-- 判断今日是否中过一等奖
	if nIndex == 1 then
		local nLastStcIndex = nStcIndex + 3
		local nTopOneEvent = tMMOGold_Consumption_Data["Stc"]["Event"][nLastStcIndex]
		local nTopOneData = tMMOGold_Consumption_Data["Stc"]["Data"][nLastStcIndex]
		if Task_StcInterval(nTopOneEvent, nTopOneData, 1, 4) then
			Task_SetStatistic(nTopOneEvent,nTopOneData, 0, 1)
			Task_SetStcTimestamp(nTopOneEvent,nTopOneData, 0)
		end
		if Task_ChkStcValue(nTopOneEvent, nTopOneData, ">", 0) then
			nRandom = 0
		end
	end
	return nRandom
end

----------------------------------NPC部分---------------------------------------------
-- 25502,'招财'
tNpcFace[6213] = 28
tNpcGossip[25502]= tNpcGossip[25502] or DefaultNpc:new{}
tNpcGossip[25502]["OptionHidden"] = 1
tNpcGossip[25502]["DialogueText"] = tMMOGold_Consumption_Text[25502] 
-- 活动前
tNpcGossip[25502]["Text1-1"] = {111, 112, 113, 114}
tNpcGossip[25502]["ChkFunc1-1"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text111"] = tMMOGold_Consumption_Text[nNpcId]["Text111"]
	tNpcGossip[nNpcId]["Text112"] = tMMOGold_Consumption_Text[nNpcId]["Text112"]
	tNpcGossip[nNpcId]["Option111"] = tMMOGold_Consumption_Text[nNpcId]["Option111"]
	if CommonFunc_GetBeforeActivityTime(tActivityTime["MMOGoldConsumption"]["ActivityTime"]) then
		return true
	end
	local nLevel = tMMOGold_Consumption_Data["Level"] 
	local nMete = tMMOGold_Consumption_Data["Mete"] 
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	end
	return false
end
tNpcGossip[25502]["tOption1-1"] = {111}
-- 活动中
tNpcGossip[25502]["Text1-2"] = {111, 122, 123, 1240,124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138}
tNpcGossip[25502]["ChkFunc1-2"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text1240"] = tMMOGold_Consumption_Text[nNpcId]["Text1240"]
	-- 获取奖池奖金并赋值
	local nGlobalId = tMMOGold_Consumption_Data["GlobalId"][1]
	if nNpcId == tMMOGold_Consumption_Data["TenDrawNpc"] then
		nGlobalId = tMMOGold_Consumption_Data["GlobalId"][3]
		tNpcGossip[nNpcId]["Text128"] = tMMOGold_Consumption_Text[25502]["Text1280"]
		tNpcGossip[nNpcId]["Text134"] = tMMOGold_Consumption_Text[25502]["Text1340"]
		tNpcGossip[nNpcId]["Text136"] = tMMOGold_Consumption_Text[25502]["Text1360"]
	else
		tNpcGossip[nNpcId]["Text128"] = tMMOGold_Consumption_Text[25502]["Text128"]
		tNpcGossip[nNpcId]["Text134"] = tMMOGold_Consumption_Text[25502]["Text134"]
		tNpcGossip[nNpcId]["Text136"] = tMMOGold_Consumption_Text[25502]["Text136"]
	end
	tNpcGossip[nNpcId]["Text135"] = tMMOGold_Consumption_Text[nNpcId]["Text135"]
	tNpcGossip[nNpcId]["Text138"] = tMMOGold_Consumption_Text[nNpcId]["Text138"]
	local nJackpotMoney = Get_SysDynaGlobalData0(nGlobalId)
	local nLen = Get_StringLenUtf8(tostring(nJackpotMoney))
	local nNeedSpace = 14 - nLen
	local sStr = ""
	for i = 1, nNeedSpace do
		sStr = " " .. sStr
	end
	local sJackpotEmoney = string.format(tMMOGold_Consumption_Text[25502]["Text124"], sStr .. nJackpotMoney)
	tNpcGossip[25502]["Text124"] = sJackpotEmoney
	
	if Sys_ChkFullTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[25502]["tOption1-2"] = {121,124,123}
tNpcGossip[25502]["OptionFunc121"] = "MMOGold_Consumption_OptionChk</N>1"
tNpcGossip[25502]["OptionChkFunc121"] = function ()
	-- local nItemId = tMMOGold_Consumption_Data["ItemId"]
	-- if Item_ChkItem(nItemId) then
		-- return true
	-- end
	-- return false
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tMMOGold_Consumption_Data["TenDrawNpc"] then
		return false
	end
	return true
end
-- tNpcGossip[25502]["Option122"] = tMMOGold_Consumption_Text[25502]["Option122"]
-- tNpcGossip[25502]["OptionFunc122"] = "MMOGold_Consumption_OptionChk"
tNpcGossip[25502]["OptionPoint123"] = "3-1"
-- 十连抽
tNpcGossip[25502]["OptionFunc124"] = "MMOGold_Consumption_OptionChk</N>10"
tNpcGossip[25502]["OptionChkFunc124"] = function ()
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tMMOGold_Consumption_Data["TenDrawNpc"] then
		return true
	end
	return false
end
-- 活动后
tNpcGossip[25502]["Text1-3"] = {111,141}
tNpcGossip[25502]["ChkFunc1-3"]= function()
	local nNpcId = Get_NpcId()
	tNpcGossip[nNpcId]["Text141"] = tMMOGold_Consumption_Text[nNpcId]["Text141"]
	tNpcGossip[nNpcId]["Option131"] = tMMOGold_Consumption_Text[nNpcId]["Option131"]
	if CommonFunc_GetAfterActivityTime(tMMOGold_Consumption_Data["ActivityTime"]) then
		return true
	end
	return false
end
tNpcGossip[25502]["tOption1-3"] = {131}
-- 周年庆礼券开奖   【开奖失败，背包中无礼券】
tNpcGossip[25502]["Text2-1"] = {211}
tNpcGossip[25502]["tOption2-1"] = {211,212}
tNpcGossip[25502]["OptionFunc211"] = "MMOGold_Consumption_OptionChk</N>1"
tNpcGossip[25502]["OptionChkFunc211"] = function()
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tMMOGold_Consumption_Data["TenDrawNpc"] then
		return false
	end
	return true
end
tNpcGossip[25502]["OptionFunc212"] = "MMOGold_Consumption_OptionChk</N>10"
tNpcGossip[25502]["OptionChkFunc212"] = function()
	local nNowNpcId = Get_NpcId()
	if nNowNpcId == tMMOGold_Consumption_Data["TenDrawNpc"] then
		return true
	end
	return false
end
-- 【开奖成功，二次确认】
tNpcGossip[25502]["Text2-2"] = {221}
tNpcGossip[25502]["tOption2-2"] = {221, 222}
tNpcGossip[25502]["OptionFunc221"] = "MMOGold_Consumption_Lottery</N>1"
tNpcGossip[25502]["OptionFunc222"] = "MMOGold_Consumption_ShieldingConfirmation"
-- 【十连抽，二次确认】
tNpcGossip[25502]["Text2-3"] = {231}
tNpcGossip[25502]["tOption2-3"] = {231, 232}
tNpcGossip[25502]["OptionFunc231"] = "MMOGold_Consumption_Lottery</N>10"
tNpcGossip[25502]["OptionFunc232"] = "MMOGold_Consumption_NewConfirmation"
-- 开奖详情
tNpcGossip[25502]["Text3-1"] = {111, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326}
tNpcGossip[25502]["ChkFunc3-1"]= function()
	local nNpcId = Get_NpcId()
	local nText = 314
	local nGlobalId1 = tMMOGold_Consumption_Data["GlobalId"][1]
	local nGlobalId2 = tMMOGold_Consumption_Data["GlobalId"][2]
	if nNpcId == tMMOGold_Consumption_Data["TenDrawNpc"] then
		nGlobalId1 = tMMOGold_Consumption_Data["GlobalId"][3]
		nGlobalId2 = tMMOGold_Consumption_Data["GlobalId"][4]
	end
	local nGlobalId = 0
	local i = 0
	for j = 1, 10 do
		if j <= 5 then
			nGlobalId = nGlobalId1
			i = j
		else
			nGlobalId = nGlobalId2
			i = j - 5
		end
		
		-- 获奖者
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId, i)
		-- 获奖时间
		local sUserTime = Get_SysDynaGlobalTime(nGlobalId, i)
		local sGetRewardTime = ""
		local nTimeLen = 0
		if sUserTime == 0 then
			sGetRewardTime = tMMOGold_Consumption_Text["Dialog"]["LotteryTime"]["NotTime"]
			nTimeLen = 40
		else
			local nNowTime = os.time()
			local nPastTime = nNowTime - sUserTime
			if nPastTime < 60 then
				sGetRewardTime = tMMOGold_Consumption_Text["Dialog"]["LotteryTime"]["JustNow"]
				nTimeLen = 24
			elseif nPastTime < 60 * 60 then
				local sMinute = math.floor(nPastTime / 60)
				sGetRewardTime = string.format(tMMOGold_Consumption_Text["Dialog"]["LotteryTime"]["MinuteAgo"], sMinute)
				nTimeLen = 22
			elseif nPastTime < 60 * 60 * 24 then
				local sHour = math.floor(nPastTime / 60 / 60)
				sGetRewardTime = string.format(tMMOGold_Consumption_Text["Dialog"]["LotteryTime"]["HoursAgo"], sHour)
				nTimeLen = 22
			else
				local sDay = math.floor(nPastTime / 60 / 60 / 24)
				sGetRewardTime = string.format(tMMOGold_Consumption_Text["Dialog"]["LotteryTime"]["DayAgo"], sDay)
				nTimeLen = 23
			end
		end
		-- 开奖好礼
		local nUserMoney = Get_SysDynaGlobalData(nGlobalId, i)
		local sRankReward = ""
		if nUserMoney == 0 then
			sRankReward = tMMOGold_Consumption_Text["Dialog"]["RewardGift"]["NotGift"]
		else
			local nRank = nUserMoney % 10
			local nUserRewardMoney = math.floor(nUserMoney / 10)
			sRankReward = string.format(tMMOGold_Consumption_Text["Dialog"]["RankAward"][nRank], nUserRewardMoney)
		end
		-- 详情赋值
		--名字处理
		sUserName = Sys_StringGSubTip(sUserName)
		if sUserTime == 0 then
			tNpcGossip[nNpcId]["Text" .. nText + j] = Sys_Alignment(sUserName, 5, sGetRewardTime, nTimeLen, sRankReward, 66) .. "\n"
		else
			tNpcGossip[nNpcId]["Text" .. nText + j] = Sys_Alignment(sUserName, 2, sGetRewardTime, nTimeLen, sRankReward, 50) .. "\n"
		end
	end
	return true
end
tNpcGossip[25502]["tOption3-1"] = {311}
tNpcGossip[25502]["OptionPoint311"] = "1-2"
-- 25503,'进宝' -- 十倍抽奖
tNpcFace[6214] = 64
tNpcGossip[25503] = tNpcGossip[25502]
