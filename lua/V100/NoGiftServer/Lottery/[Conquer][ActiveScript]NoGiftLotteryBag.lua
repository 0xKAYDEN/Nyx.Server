------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]无赠品服务器-抽奖相关
--Creator:		翁清海
--Created:		2018/09/25
------------------------------------------------------------------------------------

--命名前缀
--NoGiftLotteryBag_

--logid:12001173

--------------------------------------------数据部分配置--------------------------------------------
local tNoGiftLotteryBag_Choose = {}

local tNoGiftLotteryBag_Trans = {}
	--传送符配置
	tNoGiftLotteryBag_Trans[3310868] = {}
	tNoGiftLotteryBag_Trans[3310868]["MapId"] = 10370
	tNoGiftLotteryBag_Trans[3310868]["BoundX"] = 330
	tNoGiftLotteryBag_Trans[3310868]["BoundY"] = 355
	tNoGiftLotteryBag_Trans[3310868]["MapLevel"] = 1
	tNoGiftLotteryBag_Trans[3310868]["BattleLevel"] = 100
	tNoGiftLotteryBag_Trans[3310869] = {}
	tNoGiftLotteryBag_Trans[3310869]["MapId"] = 10371
	tNoGiftLotteryBag_Trans[3310869]["BoundX"] = 333
	tNoGiftLotteryBag_Trans[3310869]["BoundY"] = 92
	tNoGiftLotteryBag_Trans[3310869]["MapLevel"] = 2
	tNoGiftLotteryBag_Trans[3310869]["BattleLevel"] = 200
	tNoGiftLotteryBag_Trans[3310870] = {}
	tNoGiftLotteryBag_Trans[3310870]["MapId"] = 10372
	tNoGiftLotteryBag_Trans[3310870]["BoundX"] = 144
	tNoGiftLotteryBag_Trans[3310870]["BoundY"] = 219
	tNoGiftLotteryBag_Trans[3310870]["MapLevel"] = 3
	tNoGiftLotteryBag_Trans[3310870]["BattleLevel"] = 300
	--传送限制
	tNoGiftLotteryBag_Trans["NoTrans"] = {6000,10137}
	
local tNoGiftLotteryBag_Log = {}
	tNoGiftLotteryBag_Log["DelItem"] = "0,0,%d,%d,12001173,2,0,0"

local tNoGiftLotteryBag_Reword = {}
	--【装备类】概率稀有马礼包
	tNoGiftLotteryBag_Reword[3310871] = {}
	tNoGiftLotteryBag_Reword[3310871]["DeleteItem"] = {}
	tNoGiftLotteryBag_Reword[3310871]["DeleteItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310871]["DeleteItem"][1]["Id"] = 3310871
	tNoGiftLotteryBag_Reword[3310871]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310871]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310871]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310871]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310871]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310871]["RewardItem"][1]["Id"] = 720049
	tNoGiftLotteryBag_Reword[3310871]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310871]["LogId"] =12001173
	-- 【鲜花类】鲜花小礼包
	tNoGiftLotteryBag_Reword[3310872] = {}
	tNoGiftLotteryBag_Reword[3310872][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1]["ItemChanceSum"] = 10000
	--751001	1朵红玫瑰	15.00%
	tNoGiftLotteryBag_Reword[3310872][1][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][1]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][1]["ItemChance"] = 1500
	tNoGiftLotteryBag_Reword[3310872][1][1]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][1]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][1]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][1]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][1]["RewardItem"][1]["Id"] = 751001
	tNoGiftLotteryBag_Reword[3310872][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][1]["Log"] = "0,0,3310872,1,12001173,2,751001,1"
	--751003	3朵红玫瑰	9.00%
	tNoGiftLotteryBag_Reword[3310872][1][2] = {}
	tNoGiftLotteryBag_Reword[3310872][1][2]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][2]["ItemChance"] = 900
	tNoGiftLotteryBag_Reword[3310872][1][2]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][2]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][2]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][2]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][2]["RewardItem"][1]["Id"] = 751003
	tNoGiftLotteryBag_Reword[3310872][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][2]["Log"] = "0,0,3310872,1,12001173,2,751003,1"
	--751009	9朵红玫瑰	6.50%
	tNoGiftLotteryBag_Reword[3310872][1][3] = {}
	tNoGiftLotteryBag_Reword[3310872][1][3]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][3]["ItemChance"] = 650
	tNoGiftLotteryBag_Reword[3310872][1][3]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][3]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][3]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][3]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][3]["RewardItem"][1]["Id"] = 751009
	tNoGiftLotteryBag_Reword[3310872][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][3]["Log"] = "0,0,3310872,1,12001173,2,751009,1"
	--751099	99朵红玫瑰	1.20%
	tNoGiftLotteryBag_Reword[3310872][1][4] = {}
	tNoGiftLotteryBag_Reword[3310872][1][4]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][4]["ItemChance"] = 120
	tNoGiftLotteryBag_Reword[3310872][1][4]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][4]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][4]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][4]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][4]["RewardItem"][1]["Id"] = 751099
	tNoGiftLotteryBag_Reword[3310872][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][4]["Log"] = "0,0,3310872,1,12001173,2,751099,1"
	--751999	999朵红玫瑰	0.30%
	tNoGiftLotteryBag_Reword[3310872][1][5] = {}
	tNoGiftLotteryBag_Reword[3310872][1][5]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][5]["ItemChance"] = 30
	tNoGiftLotteryBag_Reword[3310872][1][5]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][5]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][5]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][5]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][5]["RewardItem"][1]["Id"] = 751999
	tNoGiftLotteryBag_Reword[3310872][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][5]["Log"] = "0,0,3310872,1,12001173,2,751999,1"
	--752003	3朵百合花	16.00%
	tNoGiftLotteryBag_Reword[3310872][1][6] = {}
	tNoGiftLotteryBag_Reword[3310872][1][6]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][6]["ItemChance"] = 1600
	tNoGiftLotteryBag_Reword[3310872][1][6]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][6]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][6]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][6]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][6]["RewardItem"][1]["Id"] = 752003
	tNoGiftLotteryBag_Reword[3310872][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][6]["Log"] = "0,0,3310872,1,12001173,2,752003,1"
	--752009	9朵百合花	8.00%
	tNoGiftLotteryBag_Reword[3310872][1][7] = {}
	tNoGiftLotteryBag_Reword[3310872][1][7]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][7]["ItemChance"] = 800
	tNoGiftLotteryBag_Reword[3310872][1][7]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][7]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][7]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][7]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][7]["RewardItem"][1]["Id"] = 752009
	tNoGiftLotteryBag_Reword[3310872][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][7]["Log"] = "0,0,3310872,1,12001173,2,752009,1"
	--752099	99朵百合花	1.50%
	tNoGiftLotteryBag_Reword[3310872][1][8] = {}
	tNoGiftLotteryBag_Reword[3310872][1][8]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][8]["ItemChance"] = 150
	tNoGiftLotteryBag_Reword[3310872][1][8]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][8]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][8]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][8]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][8]["RewardItem"][1]["Id"] = 752099
	tNoGiftLotteryBag_Reword[3310872][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][8]["Log"] = "0,0,3310872,1,12001173,2,752099,1"
	--752999	999朵百合花	0.50%
	tNoGiftLotteryBag_Reword[3310872][1][9] = {}
	tNoGiftLotteryBag_Reword[3310872][1][9]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][9]["ItemChance"] = 50
	tNoGiftLotteryBag_Reword[3310872][1][9]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][9]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][9]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][9]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][9]["RewardItem"][1]["Id"] = 752999
	tNoGiftLotteryBag_Reword[3310872][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][9]["Log"] = "0,0,3310872,1,12001173,2,752999,1"
	--753001	1朵兰花	15.00%
	tNoGiftLotteryBag_Reword[3310872][1][10] = {}
	tNoGiftLotteryBag_Reword[3310872][1][10]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][10]["ItemChance"] = 1500
	tNoGiftLotteryBag_Reword[3310872][1][10]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][10]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][10]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][10]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][10]["RewardItem"][1]["Id"] = 753001
	tNoGiftLotteryBag_Reword[3310872][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][10]["Log"] = "0,0,3310872,1,12001173,2,753001,1"
	--753003	3朵兰花	9.00%
	tNoGiftLotteryBag_Reword[3310872][1][11] = {}
	tNoGiftLotteryBag_Reword[3310872][1][11]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][11]["ItemChance"] = 900
	tNoGiftLotteryBag_Reword[3310872][1][11]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][11]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][11]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][11]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][11]["RewardItem"][1]["Id"] = 753003
	tNoGiftLotteryBag_Reword[3310872][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][11]["Log"] = "0,0,3310872,1,12001173,2,753003,1"
	--753009	9朵兰花	6.50%
	tNoGiftLotteryBag_Reword[3310872][1][12] = {}
	tNoGiftLotteryBag_Reword[3310872][1][12]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][12]["ItemChance"] = 650
	tNoGiftLotteryBag_Reword[3310872][1][12]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][12]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][12]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][12]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][12]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][12]["RewardItem"][1]["Id"] = 753009
	tNoGiftLotteryBag_Reword[3310872][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][12]["Log"] = "0,0,3310872,1,12001173,2,753009,1"
	--753099	99朵兰花	1.20%
	tNoGiftLotteryBag_Reword[3310872][1][13] = {}
	tNoGiftLotteryBag_Reword[3310872][1][13]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][13]["ItemChance"] = 120
	tNoGiftLotteryBag_Reword[3310872][1][13]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][13]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][13]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][13]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][13]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][13]["RewardItem"][1]["Id"] = 753099
	tNoGiftLotteryBag_Reword[3310872][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][13]["Log"] = "0,0,3310872,1,12001173,2,753099,1"
	--753999	999朵兰花	0.30%
	tNoGiftLotteryBag_Reword[3310872][1][14] = {}
	tNoGiftLotteryBag_Reword[3310872][1][14]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][14]["ItemChance"] = 30
	tNoGiftLotteryBag_Reword[3310872][1][14]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][14]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][14]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][14]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][14]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][14]["RewardItem"][1]["Id"] = 753999
	tNoGiftLotteryBag_Reword[3310872][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][14]["Log"] = "0,0,3310872,1,12001173,2,753999,1"
	--754001	1朵郁金香	6.50%
	tNoGiftLotteryBag_Reword[3310872][1][15] = {}
	tNoGiftLotteryBag_Reword[3310872][1][15]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][15]["ItemChance"] = 650
	tNoGiftLotteryBag_Reword[3310872][1][15]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][15]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][15]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][15]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][15]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][15]["RewardItem"][1]["Id"] = 754001
	tNoGiftLotteryBag_Reword[3310872][1][15]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][15]["Log"] = "0,0,3310872,1,12001173,2,754001,1"
	--754003	3朵郁金香	2.50%
	tNoGiftLotteryBag_Reword[3310872][1][16] = {}
	tNoGiftLotteryBag_Reword[3310872][1][16]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][16]["ItemChance"] = 250
	tNoGiftLotteryBag_Reword[3310872][1][16]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][16]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][16]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][16]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][16]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][16]["RewardItem"][1]["Id"] = 754003
	tNoGiftLotteryBag_Reword[3310872][1][16]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][16]["Log"] = "0,0,3310872,1,12001173,2,754003,1"
	--754009	9朵郁金香	0.80%
	tNoGiftLotteryBag_Reword[3310872][1][17] = {}
	tNoGiftLotteryBag_Reword[3310872][1][17]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][17]["ItemChance"] = 80
	tNoGiftLotteryBag_Reword[3310872][1][17]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][17]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][17]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][17]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][17]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][17]["RewardItem"][1]["Id"] = 754009
	tNoGiftLotteryBag_Reword[3310872][1][17]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][17]["Log"] = "0,0,3310872,1,12001173,2,754009,1"
	--754099	99朵郁金香	0.20%
	tNoGiftLotteryBag_Reword[3310872][1][18] = {}
	tNoGiftLotteryBag_Reword[3310872][1][18]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310872][1][18]["ItemChance"] = 20
	tNoGiftLotteryBag_Reword[3310872][1][18]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][18]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310872][1][18]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310872][1][18]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310872][1][18]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310872][1][18]["RewardItem"][1]["Id"] = 754099
	tNoGiftLotteryBag_Reword[3310872][1][18]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310872][1][18]["Log"] = "0,0,3310872,1,12001173,2,754099,1"
	-- 【鲜花类】鲜花大礼包
	tNoGiftLotteryBag_Reword[3310873] = {}
	tNoGiftLotteryBag_Reword[3310873][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1]["ItemChanceSum"] = 10000
	--751009	9朵红玫瑰	22.00%
	tNoGiftLotteryBag_Reword[3310873][1][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][1]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][1]["ItemChance"] = 2200
	tNoGiftLotteryBag_Reword[3310873][1][1]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][1]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][1]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][1]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][1]["RewardItem"][1]["Id"] = 751009
	tNoGiftLotteryBag_Reword[3310873][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][1]["Log"] = "0,0,3310873,1,12001173,2,751009,1"
	--751099	99朵红玫瑰	8.00%
	tNoGiftLotteryBag_Reword[3310873][1][2] = {}
	tNoGiftLotteryBag_Reword[3310873][1][2]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][2]["ItemChance"] = 800
	tNoGiftLotteryBag_Reword[3310873][1][2]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][2]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][2]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][2]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][2]["RewardItem"][1]["Id"] = 751099
	tNoGiftLotteryBag_Reword[3310873][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][2]["Log"] = "0,0,3310873,1,12001173,2,751099,1"
	--751999	999朵红玫瑰	2.00%
	tNoGiftLotteryBag_Reword[3310873][1][3] = {}
	tNoGiftLotteryBag_Reword[3310873][1][3]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][3]["ItemChance"] = 200
	tNoGiftLotteryBag_Reword[3310873][1][3]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][3]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][3]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][3]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][3]["RewardItem"][1]["Id"] = 751999
	tNoGiftLotteryBag_Reword[3310873][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][3]["Log"] = "0,0,3310873,1,12001173,2,751999,1"
	--752009	9朵百合花	16.00%
	tNoGiftLotteryBag_Reword[3310873][1][4] = {}
	tNoGiftLotteryBag_Reword[3310873][1][4]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][4]["ItemChance"] = 1600
	tNoGiftLotteryBag_Reword[3310873][1][4]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][4]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][4]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][4]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][4]["RewardItem"][1]["Id"] = 752009
	tNoGiftLotteryBag_Reword[3310873][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][4]["Log"] = "0,0,3310873,1,12001173,2,752009,1"
	--752099	99朵百合花	8.00%
	tNoGiftLotteryBag_Reword[3310873][1][5] = {}
	tNoGiftLotteryBag_Reword[3310873][1][5]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][5]["ItemChance"] = 800
	tNoGiftLotteryBag_Reword[3310873][1][5]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][5]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][5]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][5]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][5]["RewardItem"][1]["Id"] = 752099
	tNoGiftLotteryBag_Reword[3310873][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][5]["Log"] = "0,0,3310873,1,12001173,2,752099,1"
	--752999	999朵百合花	2.00%
	tNoGiftLotteryBag_Reword[3310873][1][6] = {}
	tNoGiftLotteryBag_Reword[3310873][1][6]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][6]["ItemChance"] = 200
	tNoGiftLotteryBag_Reword[3310873][1][6]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][6]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][6]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][6]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][6]["RewardItem"][1]["Id"] = 752999
	tNoGiftLotteryBag_Reword[3310873][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][6]["Log"] = "0,0,3310873,1,12001173,2,752999,1"
	--753009	9朵兰花	22.00%
	tNoGiftLotteryBag_Reword[3310873][1][7] = {}
	tNoGiftLotteryBag_Reword[3310873][1][7]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][7]["ItemChance"] = 2200
	tNoGiftLotteryBag_Reword[3310873][1][7]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][7]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][7]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][7]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][7]["RewardItem"][1]["Id"] = 753009
	tNoGiftLotteryBag_Reword[3310873][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][7]["Log"] = "0,0,3310873,1,12001173,2,753009,1"
	--753099	99朵兰花	8.00%
	tNoGiftLotteryBag_Reword[3310873][1][8] = {}
	tNoGiftLotteryBag_Reword[3310873][1][8]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][8]["ItemChance"] = 800
	tNoGiftLotteryBag_Reword[3310873][1][8]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][8]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][8]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][8]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][8]["RewardItem"][1]["Id"] = 753099
	tNoGiftLotteryBag_Reword[3310873][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][8]["Log"] = "0,0,3310873,1,12001173,2,753099,1"
	--753999	999朵兰花	2.00%
	tNoGiftLotteryBag_Reword[3310873][1][9] = {}
	tNoGiftLotteryBag_Reword[3310873][1][9]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][9]["ItemChance"] = 200
	tNoGiftLotteryBag_Reword[3310873][1][9]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][9]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][9]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][9]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][9]["RewardItem"][1]["Id"] = 753999
	tNoGiftLotteryBag_Reword[3310873][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][9]["Log"] = "0,0,3310873,1,12001173,2,753999,1"
	--754009	9朵郁金香	8.50%
	tNoGiftLotteryBag_Reword[3310873][1][10] = {}
	tNoGiftLotteryBag_Reword[3310873][1][10]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][10]["ItemChance"] = 850
	tNoGiftLotteryBag_Reword[3310873][1][10]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][10]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][10]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][10]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][10]["RewardItem"][1]["Id"] = 754009
	tNoGiftLotteryBag_Reword[3310873][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][10]["Log"] = "0,0,3310873,1,12001173,2,754009,1"
	--754099	99朵郁金香	1.20%
	tNoGiftLotteryBag_Reword[3310873][1][11] = {}
	tNoGiftLotteryBag_Reword[3310873][1][11]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][11]["ItemChance"] = 120
	tNoGiftLotteryBag_Reword[3310873][1][11]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][11]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][11]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][11]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][11]["RewardItem"][1]["Id"] = 754099
	tNoGiftLotteryBag_Reword[3310873][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][11]["Log"] = "0,0,3310873,1,12001173,2,754099,1"
	--754999	999朵郁金香	0.30%
	tNoGiftLotteryBag_Reword[3310873][1][12] = {}
	tNoGiftLotteryBag_Reword[3310873][1][12]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310873][1][12]["ItemChance"] = 30
	tNoGiftLotteryBag_Reword[3310873][1][12]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][12]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310873][1][12]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310873][1][12]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310873][1][12]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310873][1][12]["RewardItem"][1]["Id"] = 754999
	tNoGiftLotteryBag_Reword[3310873][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310873][1][12]["Log"] = "0,0,3310873,1,12001173,2,754999,1"
	-- 【礼物类】礼物小礼包
	tNoGiftLotteryBag_Reword[3310874] = {}
	tNoGiftLotteryBag_Reword[3310874][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1]["ItemChanceSum"] = 10000
	--755001	1个飞吻	15.00%
	tNoGiftLotteryBag_Reword[3310874][1][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][1]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][1]["ItemChance"] = 1500
	tNoGiftLotteryBag_Reword[3310874][1][1]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][1]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][1]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][1]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][1]["RewardItem"][1]["Id"] = 755001
	tNoGiftLotteryBag_Reword[3310874][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][1]["Log"] = "0,0,3310874,1,12001173,2,755001,1"
	--755003	3个飞吻	12.00%
	tNoGiftLotteryBag_Reword[3310874][1][2] = {}
	tNoGiftLotteryBag_Reword[3310874][1][2]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][2]["ItemChance"] = 1200
	tNoGiftLotteryBag_Reword[3310874][1][2]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][2]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][2]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][2]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][2]["RewardItem"][1]["Id"] = 755003
	tNoGiftLotteryBag_Reword[3310874][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][2]["Log"] = "0,0,3310874,1,12001173,2,755003,1"
	--755009	9个飞吻	8.00%
	tNoGiftLotteryBag_Reword[3310874][1][3] = {}
	tNoGiftLotteryBag_Reword[3310874][1][3]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][3]["ItemChance"] = 800
	tNoGiftLotteryBag_Reword[3310874][1][3]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][3]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][3]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][3]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][3]["RewardItem"][1]["Id"] = 755009
	tNoGiftLotteryBag_Reword[3310874][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][3]["Log"] = "0,0,3310874,1,12001173,2,755009,1"
	--755099	99个飞吻	1.50%
	tNoGiftLotteryBag_Reword[3310874][1][4] = {}
	tNoGiftLotteryBag_Reword[3310874][1][4]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][4]["ItemChance"] = 150
	tNoGiftLotteryBag_Reword[3310874][1][4]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][4]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][4]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][4]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][4]["RewardItem"][1]["Id"] = 755099
	tNoGiftLotteryBag_Reword[3310874][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][4]["Log"] = "0,0,3310874,1,12001173,2,755099,1"
	--755999	999个飞吻	0.50%
	tNoGiftLotteryBag_Reword[3310874][1][5] = {}
	tNoGiftLotteryBag_Reword[3310874][1][5]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][5]["ItemChance"] = 50
	tNoGiftLotteryBag_Reword[3310874][1][5]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][5]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][5]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][5]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][5]["RewardItem"][1]["Id"] = 755999
	tNoGiftLotteryBag_Reword[3310874][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][5]["Log"] = "0,0,3310874,1,12001173,2,755999,1"
	--756001	1封情书	20.00%
	tNoGiftLotteryBag_Reword[3310874][1][6] = {}
	tNoGiftLotteryBag_Reword[3310874][1][6]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][6]["ItemChance"] = 2000
	tNoGiftLotteryBag_Reword[3310874][1][6]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][6]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][6]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][6]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][6]["RewardItem"][1]["Id"] = 756001
	tNoGiftLotteryBag_Reword[3310874][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][6]["Log"] = "0,0,3310874,1,12001173,2,756001,1"
	--756003	3封情书	15.00%
	tNoGiftLotteryBag_Reword[3310874][1][7] = {}
	tNoGiftLotteryBag_Reword[3310874][1][7]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][7]["ItemChance"] = 1500
	tNoGiftLotteryBag_Reword[3310874][1][7]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][7]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][7]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][7]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][7]["RewardItem"][1]["Id"] = 756003
	tNoGiftLotteryBag_Reword[3310874][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][7]["Log"] = "0,0,3310874,1,12001173,2,756003,1"
	--756009	9封情书	10.00%
	tNoGiftLotteryBag_Reword[3310874][1][8] = {}
	tNoGiftLotteryBag_Reword[3310874][1][8]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][8]["ItemChance"] = 1000
	tNoGiftLotteryBag_Reword[3310874][1][8]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][8]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][8]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][8]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][8]["RewardItem"][1]["Id"] = 756009
	tNoGiftLotteryBag_Reword[3310874][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][8]["Log"] = "0,0,3310874,1,12001173,2,756009,1"
	--756099	99封情书	2.50%
	tNoGiftLotteryBag_Reword[3310874][1][9] = {}
	tNoGiftLotteryBag_Reword[3310874][1][9]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][9]["ItemChance"] = 250
	tNoGiftLotteryBag_Reword[3310874][1][9]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][9]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][9]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][9]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][9]["RewardItem"][1]["Id"] = 756099
	tNoGiftLotteryBag_Reword[3310874][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][9]["Log"] = "0,0,3310874,1,12001173,2,756099,1"
	--756999	999封情书	0.50%
	tNoGiftLotteryBag_Reword[3310874][1][10] = {}
	tNoGiftLotteryBag_Reword[3310874][1][10]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][10]["ItemChance"] = 50
	tNoGiftLotteryBag_Reword[3310874][1][10]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][10]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][10]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][10]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][10]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][10]["RewardItem"][1]["Id"] = 756999
	tNoGiftLotteryBag_Reword[3310874][1][10]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][10]["Log"] = "0,0,3310874,1,12001173,2,756999,1"
	--757001	1瓶啤酒	10.00%
	tNoGiftLotteryBag_Reword[3310874][1][11] = {}
	tNoGiftLotteryBag_Reword[3310874][1][11]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][11]["ItemChance"] = 1000
	tNoGiftLotteryBag_Reword[3310874][1][11]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][11]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][11]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][11]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][11]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][11]["RewardItem"][1]["Id"] = 757001
	tNoGiftLotteryBag_Reword[3310874][1][11]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][11]["Log"] = "0,0,3310874,1,12001173,2,757001,1"
	--757003	3瓶啤酒	3.50%
	tNoGiftLotteryBag_Reword[3310874][1][12] = {}
	tNoGiftLotteryBag_Reword[3310874][1][12]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][12]["ItemChance"] = 350
	tNoGiftLotteryBag_Reword[3310874][1][12]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][12]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][12]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][12]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][12]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][12]["RewardItem"][1]["Id"] = 757003
	tNoGiftLotteryBag_Reword[3310874][1][12]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][12]["Log"] = "0,0,3310874,1,12001173,2,757003,1"
	--757009	9瓶啤酒	1.20%
	tNoGiftLotteryBag_Reword[3310874][1][13] = {}
	tNoGiftLotteryBag_Reword[3310874][1][13]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][13]["ItemChance"] = 120
	tNoGiftLotteryBag_Reword[3310874][1][13]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][13]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][13]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][13]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][13]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][13]["RewardItem"][1]["Id"] = 757009
	tNoGiftLotteryBag_Reword[3310874][1][13]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][13]["Log"] = "0,0,3310874,1,12001173,2,757009,1"
	--757099	99瓶啤酒	0.30%
	tNoGiftLotteryBag_Reword[3310874][1][14] = {}
	tNoGiftLotteryBag_Reword[3310874][1][14]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310874][1][14]["ItemChance"] = 30
	tNoGiftLotteryBag_Reword[3310874][1][14]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][14]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310874][1][14]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310874][1][14]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310874][1][14]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310874][1][14]["RewardItem"][1]["Id"] = 757099
	tNoGiftLotteryBag_Reword[3310874][1][14]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310874][1][14]["Log"] = "0,0,3310874,1,12001173,2,757099,1"
	-- 【礼物类】礼物大礼包
	tNoGiftLotteryBag_Reword[3310875] = {}
	tNoGiftLotteryBag_Reword[3310875][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1]["ItemChanceSum"] = 10000
	--755009	9个飞吻	25.00%
	tNoGiftLotteryBag_Reword[3310875][1][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][1]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][1]["ItemChance"] = 2500
	tNoGiftLotteryBag_Reword[3310875][1][1]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][1]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][1]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][1]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][1]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][1]["RewardItem"][1]["Id"] = 755009
	tNoGiftLotteryBag_Reword[3310875][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][1]["Log"] = "0,0,3310875,1,12001173,2,755009,1"
	--755099	99个飞吻	10.00%
	tNoGiftLotteryBag_Reword[3310875][1][2] = {}
	tNoGiftLotteryBag_Reword[3310875][1][2]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][2]["ItemChance"] = 1000
	tNoGiftLotteryBag_Reword[3310875][1][2]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][2]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][2]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][2]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][2]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][2]["RewardItem"][1]["Id"] = 755099
	tNoGiftLotteryBag_Reword[3310875][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][2]["Log"] = "0,0,3310875,1,12001173,2,755099,1"
	--755999	999个飞吻	2.00%
	tNoGiftLotteryBag_Reword[3310875][1][3] = {}
	tNoGiftLotteryBag_Reword[3310875][1][3]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][3]["ItemChance"] = 200
	tNoGiftLotteryBag_Reword[3310875][1][3]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][3]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][3]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][3]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][3]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][3]["RewardItem"][1]["Id"] = 755999
	tNoGiftLotteryBag_Reword[3310875][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][3]["Log"] = "0,0,3310875,1,12001173,2,755999,1"
	--756009	9封情书	30.00%
	tNoGiftLotteryBag_Reword[3310875][1][4] = {}
	tNoGiftLotteryBag_Reword[3310875][1][4]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][4]["ItemChance"] = 3000
	tNoGiftLotteryBag_Reword[3310875][1][4]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][4]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][4]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][4]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][4]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][4]["RewardItem"][1]["Id"] = 756009
	tNoGiftLotteryBag_Reword[3310875][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][4]["Log"] = "0,0,3310875,1,12001173,2,756009,1"
	--756099	99封情书	15.00%
	tNoGiftLotteryBag_Reword[3310875][1][5] = {}
	tNoGiftLotteryBag_Reword[3310875][1][5]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][5]["ItemChance"] = 1500
	tNoGiftLotteryBag_Reword[3310875][1][5]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][5]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][5]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][5]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][5]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][5]["RewardItem"][1]["Id"] = 756099
	tNoGiftLotteryBag_Reword[3310875][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][5]["Log"] = "0,0,3310875,1,12001173,2,756099,1"
	--756999	999封情书	3.00%
	tNoGiftLotteryBag_Reword[3310875][1][6] = {}
	tNoGiftLotteryBag_Reword[3310875][1][6]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][6]["ItemChance"] = 300
	tNoGiftLotteryBag_Reword[3310875][1][6]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][6]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][6]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][6]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][6]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][6]["RewardItem"][1]["Id"] = 756999
	tNoGiftLotteryBag_Reword[3310875][1][6]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][6]["Log"] = "0,0,3310875,1,12001173,2,756999,1"
	--757009	9瓶啤酒	13.00%
	tNoGiftLotteryBag_Reword[3310875][1][7] = {}
	tNoGiftLotteryBag_Reword[3310875][1][7]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][7]["ItemChance"] = 1300
	tNoGiftLotteryBag_Reword[3310875][1][7]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][7]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][7]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][7]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][7]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][7]["RewardItem"][1]["Id"] = 757009
	tNoGiftLotteryBag_Reword[3310875][1][7]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][7]["Log"] = "0,0,3310875,1,12001173,2,757009,1"
	--757099	99瓶啤酒	1.60%
	tNoGiftLotteryBag_Reword[3310875][1][8] = {}
	tNoGiftLotteryBag_Reword[3310875][1][8]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][8]["ItemChance"] = 160
	tNoGiftLotteryBag_Reword[3310875][1][8]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][8]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][8]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][8]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][8]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][8]["RewardItem"][1]["Id"] = 757099
	tNoGiftLotteryBag_Reword[3310875][1][8]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][8]["Log"] = "0,0,3310875,1,12001173,2,757099,1"
	--757999	999瓶啤酒	0.40%
	tNoGiftLotteryBag_Reword[3310875][1][9] = {}
	tNoGiftLotteryBag_Reword[3310875][1][9]["RandomItemChanceType"] = 2
	tNoGiftLotteryBag_Reword[3310875][1][9]["ItemChance"] = 40
	tNoGiftLotteryBag_Reword[3310875][1][9]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][9]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310875][1][9]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310875][1][9]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310875][1][9]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310875][1][9]["RewardItem"][1]["Id"] = 757999
	tNoGiftLotteryBag_Reword[3310875][1][9]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310875][1][9]["Log"] = "0,0,3310875,1,12001173,2,757999,1"
	--【装备类】史诗武器碎片包
	tNoGiftLotteryBag_Reword[3310985] = {}
	tNoGiftLotteryBag_Reword[3310985][1] = {}
	tNoGiftLotteryBag_Reword[3310985][1]["DeleteItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][1]["DeleteItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][1]["DeleteItem"][1]["Id"] = 3310985
	tNoGiftLotteryBag_Reword[3310985][1]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310985][1]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310985][1]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310985][1]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][1]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][1]["RewardItem"][1]["Id"] = 3310825
	tNoGiftLotteryBag_Reword[3310985][1]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310985][1]["LogId"] =12001173
	tNoGiftLotteryBag_Reword[3310985][2] = {}
	tNoGiftLotteryBag_Reword[3310985][2]["DeleteItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][2]["DeleteItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][2]["DeleteItem"][1]["Id"] = 3310985
	tNoGiftLotteryBag_Reword[3310985][2]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310985][2]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310985][2]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310985][2]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][2]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][2]["RewardItem"][1]["Id"] = 3310823
	tNoGiftLotteryBag_Reword[3310985][2]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310985][2]["LogId"] =12001173
	tNoGiftLotteryBag_Reword[3310985][3] = {}
	tNoGiftLotteryBag_Reword[3310985][3]["DeleteItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][3]["DeleteItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][3]["DeleteItem"][1]["Id"] = 3310985
	tNoGiftLotteryBag_Reword[3310985][3]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310985][3]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310985][3]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310985][3]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][3]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][3]["RewardItem"][1]["Id"] = 3310824
	tNoGiftLotteryBag_Reword[3310985][3]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310985][3]["LogId"] =12001173
	tNoGiftLotteryBag_Reword[3310985][4] = {}
	tNoGiftLotteryBag_Reword[3310985][4]["DeleteItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][4]["DeleteItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][4]["DeleteItem"][1]["Id"] = 3310985
	tNoGiftLotteryBag_Reword[3310985][4]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310985][4]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310985][4]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310985][4]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][4]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][4]["RewardItem"][1]["Id"] = 3310826
	tNoGiftLotteryBag_Reword[3310985][4]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310985][4]["LogId"] =12001173
	tNoGiftLotteryBag_Reword[3310985][5] = {}
	tNoGiftLotteryBag_Reword[3310985][5]["DeleteItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][5]["DeleteItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][5]["DeleteItem"][1]["Id"] = 3310985
	tNoGiftLotteryBag_Reword[3310985][5]["RewardEffect"] = {}
	tNoGiftLotteryBag_Reword[3310985][5]["RewardEffect"]["SzObj"] = "self"
	tNoGiftLotteryBag_Reword[3310985][5]["RewardEffect"]["Effect"] = "angelwing"
	tNoGiftLotteryBag_Reword[3310985][5]["RewardItem"] = {}
	tNoGiftLotteryBag_Reword[3310985][5]["RewardItem"][1] = {}
	tNoGiftLotteryBag_Reword[3310985][5]["RewardItem"][1]["Id"] = 3310827
	tNoGiftLotteryBag_Reword[3310985][5]["RewardItem"][1]["Attr"] = "0 1"
	tNoGiftLotteryBag_Reword[3310985][5]["LogId"] =12001173
	
	
--------------------------------------------逻辑部分配置--------------------------------------------
--物品打开
function NoGiftLotteryBag_ItemOpen(nItemId, nIndex)
	if tNoGiftLotteryBag_Reword[nItemId] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	--判断是否随机奖励
	if tNoGiftLotteryBag_Reword[nItemId][1] ~= nil and tNoGiftLotteryBag_Reword[nItemId][1]["ItemChanceSum"] ~= nil then
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelItem(nItemId,nil,nil,nUserId) then
			RewardTemplate_NewRandom(tNoGiftLotteryBag_Reword[nItemId],1,nUserId)
		end
	else
		if nIndex == nil then
			RewardTemplate_UseItemAndMsg(tNoGiftLotteryBag_Reword[nItemId],nUserId)
		else
			RewardTemplate_UseItemAndMsg(tNoGiftLotteryBag_Reword[nItemId][nIndex],nUserId)
		end
	end
end

--传送符
function NoGiftLotteryBag_Trans(nItemId)
	--没有相关数据配置
	if tNoGiftLotteryBag_Trans[nItemId] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	--玩家当前战斗力
	local nUserBattleLevel = Get_UserBattleLevel(nUserId)
	--需要的战斗力
	local nBattleLevel = tNoGiftLotteryBag_Trans[nItemId]["BattleLevel"]
	
	--战斗力不满足
	if nUserBattleLevel < nBattleLevel then
		Sys_MsgBox(string.format(tNoGiftLotteryBag_Text["MsgBox"]["NoBattle"], nBattleLevel),nil,nil,nUserId)
		return
	end
	
	--玩家当前地图
	local nUserMapId = Get_UserMapId(nUserId)
	--传送的地图
	local nMapId = tNoGiftLotteryBag_Trans[nItemId]["MapId"]
	--地图层数
	local nMapLevel = tNoGiftLotteryBag_Trans[nItemId]["MapLevel"]
	
	--已经在当前地图
	if nUserMapId == nMapId then
		Sys_MsgBox(string.format(tNoGiftLotteryBag_Text["MsgBox"]["Map"], nMapLevel),nil,nil,nUserId)
		return
	end
	
	local nMapDoc = Get_MapDoc(nUserMapId)
	
	--特殊地图不能传送
	for k,v in pairs(tNoGiftLotteryBag_Trans["NoTrans"]) do
		if nMapDoc == v then
			Sys_MsgBox(tNoGiftLotteryBag_Text["MsgBox"]["NoTrans"][v], nil, nil, nUserId)
			return
		end
	end
	
	local nBoundX = tNoGiftLotteryBag_Trans[nItemId]["BoundX"]
	local nBoundY = tNoGiftLotteryBag_Trans[nItemId]["BoundY"]
	
	--传送
	if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelItem(nItemId,nil,nil,nUserId) then
		Sys_SaveActionRewardLog(string.format(tNoGiftLotteryBag_Log["DelItem"], nItemId ,1),nUserId)
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,0,nUserId)
		Sys_MsgBox(string.format(tNoGiftLotteryBag_Text["MsgBox"]["TransSucc"],nMapLevel),nil,nil,nUserId)
	end
end

--可选包打开
function NewLotteryBag_ItemChoose(nItemId, nIndex)
	local nUserId = Get_UserId()
	
	--是否二次确认
	if nIndex == nil then
		if tNoGiftLotteryBag_Choose[nUserId] == nil then
			return
		end
		
		local nChoose = tNoGiftLotteryBag_Choose[nUserId]
		
		--获得奖励
		NoGiftLotteryBag_ItemOpen(nItemId, nChoose)
	else
		tNoGiftLotteryBag_Choose[nUserId] = nIndex
		
		local sItemName = tNoGiftLotteryBag_Text["ItemName"][nIndex]
		
		tItem[nItemId]["Text211"] = string.format(tNoGiftLotteryBag_Text[nItemId]["Text211"], sItemName)
		
		--链接二次确认对白
		LinkItemGossipFunc_New(nItemId, "2-1")
	end
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------物品模块---------------------------------------------
--传送符
tItem[3310868] = tItem[3310868] or {}
tItem[3310868]["Function"] = function(nItemId,sItemName)
	NoGiftLotteryBag_Trans(nItemId)
end

tItem[3310869] = tItem[3310868]
tItem[3310870] = tItem[3310868]

--【装备类】概率稀有马礼包
tItem[3310871] = tItem[3310871] or {}
tItem[3310871]["Function"] = function(nItemId,sItemName)
	NoGiftLotteryBag_ItemOpen(nItemId)
end

--【鲜花类】鲜花小礼包
tItem[3310872] = tItem[3310871]
--【鲜花类】鲜花大礼包
tItem[3310873] = tItem[3310871]
--【礼物类】礼物小礼包
tItem[3310874] = tItem[3310871]
--【礼物类】礼物大礼包
tItem[3310875] = tItem[3310871]

--【装备类】史诗武器碎片包
tItemFace[3310985] = 826
tItem[3310985] = tItem[3310985] or {}
tItem[3310985]["Function"] = function(nItemId,sItemName)
	LinkItemGossipFunc_New(nItemId, "1-1")
end
tItem[3310985]["DialogueText"] = tNoGiftLotteryBag_Text[3310985]
tItem[3310985]["Text1-1"] = {111}
tItem[3310985]["tOption1-1"] = {111,112,113,114,115}
tItem[3310985]["OptionFunc111"] = "NewLotteryBag_ItemChoose</N>3310985</N>1"
tItem[3310985]["OptionFunc112"] = "NewLotteryBag_ItemChoose</N>3310985</N>2"
tItem[3310985]["OptionFunc113"] = "NewLotteryBag_ItemChoose</N>3310985</N>3"
tItem[3310985]["OptionFunc114"] = "NewLotteryBag_ItemChoose</N>3310985</N>4"
tItem[3310985]["OptionFunc115"] = "NewLotteryBag_ItemChoose</N>3310985</N>5"

tItem[3310985]["Text2-1"] = {211}
tItem[3310985]["tOption2-1"] = {211,212}
tItem[3310985]["OptionFunc211"] = "NewLotteryBag_ItemChoose</N>3310985"

