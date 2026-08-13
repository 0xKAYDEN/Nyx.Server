------------------------------------------------------------------------------------
--Name：            190107[简体征服][活动脚本]2月情人节花魁赛活动制作-物品部分
--Creator:      陈莺
--Created:     2019-01-07
------------------------------------------------------------------------------------
--任务需求：

-- FlowerChiefItem_
-- 53211 1--礼包限量  2 精致真爱礼盒标志服务器  3 是单服抽到灵珠数量  

----------------------------------表配置部分--------------------------------------------
local tFlowerChiefItem_Data = {}
	tFlowerChiefItem_Data["Now_Time"] = tActivityTime["FlowerChiefItem"]["Now_Time"]
	tFlowerChiefItem_Data["Global"] = 53211
	tFlowerChiefItem_Data["Level"] = 80
	tFlowerChiefItem_Data["Metempsychosis"] = 0
-- 单服数量
	tFlowerChiefItem_Data["Num"] = {}

	tFlowerChiefItem_Data["Num"][1] = 110
	
	
	
local tFlowerChiefItem_Reward = {}
-- 情人节礼盒
	tFlowerChiefItem_Reward[3311970] = {}
	tFlowerChiefItem_Reward[3311970]["ItemChanceSum"] = 10000
	-- 浪漫烛光
	tFlowerChiefItem_Reward[3311970][1] ={}
	tFlowerChiefItem_Reward[3311970][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311970][1]["ItemChance"] = 7500
	tFlowerChiefItem_Reward[3311970][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311970][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311970][1]["RewardItem"][1]["Id"] = 3311967  --浪漫烛光
	tFlowerChiefItem_Reward[3311970][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311970][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311970][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311970][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311970][1]["Log"] = "0,0,3311970,1,12001261,2,3311967,1"

	-- 璀璨花火
	tFlowerChiefItem_Reward[3311970][2] ={}
	tFlowerChiefItem_Reward[3311970][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311970][2]["ItemChance"] = 2000
	tFlowerChiefItem_Reward[3311970][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311970][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311970][2]["RewardItem"][1]["Id"] = 3311969  --璀璨花火
	tFlowerChiefItem_Reward[3311970][2]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311970][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311970][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311970][2]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311970][2]["Log"] = "0,0,3311970,1,12001261,2,3311969,1"

	-- 贵族红酒
	tFlowerChiefItem_Reward[3311970][3] ={}
	tFlowerChiefItem_Reward[3311970][3]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311970][3]["ItemChance"] = 500
	tFlowerChiefItem_Reward[3311970][3]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311970][3]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311970][3]["RewardItem"][1]["Id"] = 3311968  --贵族红酒
	tFlowerChiefItem_Reward[3311970][3]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311970][3]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311970][3]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311970][3]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311970][3]["Log"] = "0,0,3311970,1,12001261,2,3311968,1"

-- 情人节礼盒
	tFlowerChiefItem_Reward[3311971] = {}
	tFlowerChiefItem_Reward[3311971]["ItemChanceSum"] = 10000
	-- 浪漫烛光
	tFlowerChiefItem_Reward[3311971][1] ={}
	tFlowerChiefItem_Reward[3311971][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311971][1]["ItemChance"] = 900
	tFlowerChiefItem_Reward[3311971][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311971][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311971][1]["RewardItem"][1]["Id"] = 3311967  --浪漫烛光
	tFlowerChiefItem_Reward[3311971][1]["RewardItem"][1]["Attr"] = "0 3"
	tFlowerChiefItem_Reward[3311971][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311971][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311971][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311971][1]["Log"] = "0,0,3311971,1,12001261,2,3311967,3"

	-- 浪漫烛光
	tFlowerChiefItem_Reward[3311971][2] ={}
	tFlowerChiefItem_Reward[3311971][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311971][2]["ItemChance"] = 4000
	tFlowerChiefItem_Reward[3311971][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311971][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311971][2]["RewardItem"][1]["Id"] = 3311967  -- 浪漫烛光
	tFlowerChiefItem_Reward[3311971][2]["RewardItem"][1]["Attr"] = "0 6"
	tFlowerChiefItem_Reward[3311971][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311971][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311971][2]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311971][2]["Log"] = "0,0,3311971,1,12001261,2,3311967,6"

	-- 贵族红酒
	tFlowerChiefItem_Reward[3311971][3] ={}
	tFlowerChiefItem_Reward[3311971][3]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311971][3]["ItemChance"] = 4200
	tFlowerChiefItem_Reward[3311971][3]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311971][3]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311971][3]["RewardItem"][1]["Id"] = 3311968  --贵族红酒
	tFlowerChiefItem_Reward[3311971][3]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311971][3]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311971][3]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311971][3]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311971][3]["Log"] = "0,0,3311971,1,12001261,2,3311968,1"

	-- 贵族红酒
	tFlowerChiefItem_Reward[3311971][4] ={}
	tFlowerChiefItem_Reward[3311971][4]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311971][4]["ItemChance"] = 650
	tFlowerChiefItem_Reward[3311971][4]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311971][4]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311971][4]["RewardItem"][1]["Id"] = 3311968  --贵族红酒
	tFlowerChiefItem_Reward[3311971][4]["RewardItem"][1]["Attr"] = "0 3"
	tFlowerChiefItem_Reward[3311971][4]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311971][4]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311971][4]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311971][4]["Log"] = "0,0,3311971,1,12001261,2,3311968,3"

	
	-- 贵族红酒
	tFlowerChiefItem_Reward[3311971][5] ={}
	tFlowerChiefItem_Reward[3311971][5]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311971][5]["ItemChance"] = 250
	tFlowerChiefItem_Reward[3311971][5]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311971][5]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311971][5]["RewardItem"][1]["Id"] = 3311968  --贵族红酒
	tFlowerChiefItem_Reward[3311971][5]["RewardItem"][1]["Attr"] = "0 5"
	tFlowerChiefItem_Reward[3311971][5]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311971][5]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311971][5]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311971][5]["Log"] = "0,0,3311971,1,12001261,2,3311968,5"

	tFlowerChiefItem_Reward[3311971][10] ={}
	tFlowerChiefItem_Reward[3311971][10]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311971][10]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311971][10]["RewardItem"][1]["Id"] = 3312003  --2个巧克力甜心碎片
	tFlowerChiefItem_Reward[3311971][10]["RewardItem"][1]["Attr"] = "0 2"
	tFlowerChiefItem_Reward[3311971][10]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311971][10]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311971][10]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311971][10]["Log"] = "0,0,0,0,12001261,2,3312003,2"
	
-- 普通浪漫值礼包
	tFlowerChiefItem_Reward[3311972] = {}
	tFlowerChiefItem_Reward[3311972]["ItemChanceSum"] = 10000
	-- 100气力值
	tFlowerChiefItem_Reward[3311972][1] ={}
	tFlowerChiefItem_Reward[3311972][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311972][1]["ItemChance"] = 5550
	tFlowerChiefItem_Reward[3311972][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311972][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311972][1]["RewardItem"][1]["Id"] = 3304324  --100气力值
	tFlowerChiefItem_Reward[3311972][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311972][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311972][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311972][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311972][1]["Log"] = "0,0,3311972,1,12001261,2,3304324,3"

	-- 赤炼石+2
	tFlowerChiefItem_Reward[3311972][2] ={}
	tFlowerChiefItem_Reward[3311972][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311972][2]["ItemChance"] = 2200
	tFlowerChiefItem_Reward[3311972][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311972][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311972][2]["RewardItem"][1]["Id"] = 730002  -- 赤炼石+2
	tFlowerChiefItem_Reward[3311972][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFlowerChiefItem_Reward[3311972][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311972][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311972][2]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311972][2]["Log"] = "0,0,3311972,1,12001261,2,730002,6"

	-- 明亮星陨石
	tFlowerChiefItem_Reward[3311972][3] ={}
	tFlowerChiefItem_Reward[3311972][3]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311972][3]["ItemChance"] = 750
	tFlowerChiefItem_Reward[3311972][3]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311972][3]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311972][3]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tFlowerChiefItem_Reward[3311972][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFlowerChiefItem_Reward[3311972][3]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311972][3]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311972][3]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311972][3]["Log"] = "0,0,3311972,1,12001261,2,3009001,1"

	-- 万能神纹精粹
	tFlowerChiefItem_Reward[3311972][4] ={}
	tFlowerChiefItem_Reward[3311972][4]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311972][4]["ItemChance"] = 1500
	tFlowerChiefItem_Reward[3311972][4]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311972][4]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311972][4]["RewardItem"][1]["Id"] = 4060001  --万能神纹精粹
	tFlowerChiefItem_Reward[3311972][4]["RewardItem"][1]["Attr"] = "0 5 3"
	tFlowerChiefItem_Reward[3311972][4]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311972][4]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311972][4]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311972][4]["Log"] = "0,0,3311972,1,12001261,2,4060001,5"

-- 高级浪漫值礼包
	tFlowerChiefItem_Reward[3311973] = {}
	tFlowerChiefItem_Reward[3311973]["ItemChanceSum"] = 10000
	-- 浪漫烛光
	tFlowerChiefItem_Reward[3311973][1] ={}
	tFlowerChiefItem_Reward[3311973][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311973][1]["ItemChance"] = 5500
	tFlowerChiefItem_Reward[3311973][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311973][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311973][1]["RewardItem"][1]["Id"] = 3304328  --500气力值
	tFlowerChiefItem_Reward[3311973][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311973][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311973][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311973][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311973][1]["Log"] = "0,0,3311973,1,12001261,2,3304328,3"

	-- 赤炼石+2
	tFlowerChiefItem_Reward[3311973][2] ={}
	tFlowerChiefItem_Reward[3311973][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311973][2]["ItemChance"] = 1500
	tFlowerChiefItem_Reward[3311973][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311973][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311973][2]["RewardItem"][1]["Id"] = 730003  -- 赤炼石+3
	tFlowerChiefItem_Reward[3311973][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tFlowerChiefItem_Reward[3311973][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311973][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311973][2]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311973][2]["Log"] = "0,0,3311973,1,12001261,2,730003,6"

	-- 明亮星陨石
	tFlowerChiefItem_Reward[3311973][3] ={}
	tFlowerChiefItem_Reward[3311973][3]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311973][3]["ItemChance"] = 1500
	tFlowerChiefItem_Reward[3311973][3]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311973][3]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311973][3]["RewardItem"][1]["Id"] = 3009001  --明亮星陨石
	tFlowerChiefItem_Reward[3311973][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tFlowerChiefItem_Reward[3311973][3]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311973][3]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311973][3]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311973][3]["Log"] = "0,0,3311973,1,12001261,2,3009001,1"

	-- 万能神纹精粹
	tFlowerChiefItem_Reward[3311973][4] ={}
	tFlowerChiefItem_Reward[3311973][4]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311973][4]["ItemChance"] = 1400
	tFlowerChiefItem_Reward[3311973][4]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311973][4]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311973][4]["RewardItem"][1]["Id"] = 4060001  --万能神纹精粹
	tFlowerChiefItem_Reward[3311973][4]["RewardItem"][1]["Attr"] = "0 10 3"
	tFlowerChiefItem_Reward[3311973][4]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311973][4]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311973][4]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311973][4]["Log"] = "0,0,3311973,1,12001261,2,4060001,10"

	-- 黄色神纹随机包
	tFlowerChiefItem_Reward[3311973][5] ={}
	tFlowerChiefItem_Reward[3311973][5]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311973][5]["ItemChance"] = 95
	tFlowerChiefItem_Reward[3311973][5]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311973][5]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311973][5]["RewardItem"][1]["Id"] = 3306919  --黄色神纹随机包
	tFlowerChiefItem_Reward[3311973][5]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311973][5]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311973][5]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311973][5]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311973][5]["Log"] = "0,0,3311973,1,12001261,2,3306919,1"
	tFlowerChiefItem_Reward[3311973][5]["Flag"] = 1
	-- 稀有黄色神纹（赠）碎片
	tFlowerChiefItem_Reward[3311973][6] ={}
	tFlowerChiefItem_Reward[3311973][6]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311973][6]["ItemChance"] = 5
	tFlowerChiefItem_Reward[3311973][6]["GlobalId"] = tFlowerChiefItem_Data["Global"]
	tFlowerChiefItem_Reward[3311973][6]["MaxData"] = 1
	tFlowerChiefItem_Reward[3311973][6]["Pos"] = 1
	tFlowerChiefItem_Reward[3311973][6]["FullIndex"] = 1
	tFlowerChiefItem_Reward[3311973][6]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311973][6]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311973][6]["RewardItem"][1]["Id"] = 3311748  --稀有黄色神纹（赠）碎片
	tFlowerChiefItem_Reward[3311973][6]["RewardItem"][1]["Attr"] = "0 20"
	tFlowerChiefItem_Reward[3311973][6]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311973][6]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311973][6]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311973][6]["Log"] = "0,0,3311973,1,12001261,2,3311748,20"
	tFlowerChiefItem_Reward[3311973][6]["Flag"] = 1

-- 浪漫香烛礼包
	tFlowerChiefItem_Reward[3311974] = {}
	tFlowerChiefItem_Reward[3311974][1] = {}
	tFlowerChiefItem_Reward[3311974][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311974][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311974][1]["RewardItem"][1]["Id"] = 3311967  -- 浪漫香烛
	tFlowerChiefItem_Reward[3311974][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311974][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311974][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311974][1]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311974][1]["LogId"] = 12001236
	
	tFlowerChiefItem_Reward[3311974][2] = {}
	tFlowerChiefItem_Reward[3311974][2]["ItemChanceSum"] = 10000
	-- 坐骑碎片
	tFlowerChiefItem_Reward[3311974][2][1] ={}
	tFlowerChiefItem_Reward[3311974][2][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311974][2][1]["ItemChance"] = 2000
	tFlowerChiefItem_Reward[3311974][2][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311974][2][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311974][2][1]["RewardItem"][1]["Id"] = 3312003  --坐骑碎片
	tFlowerChiefItem_Reward[3311974][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311974][2][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311974][2][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311974][2][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311974][2][1]["Log"] = "0,0,3311974,1,12001261,2,3312003,1"

	-- 没获得碎片
	tFlowerChiefItem_Reward[3311974][2][2] ={}
	tFlowerChiefItem_Reward[3311974][2][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311974][2][2]["ItemChance"] = 8000

-- 璀璨烟花礼包
	tFlowerChiefItem_Reward[3311975] = {}
	tFlowerChiefItem_Reward[3311975][1] = {}
	tFlowerChiefItem_Reward[3311975][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311975][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311975][1]["RewardItem"][1]["Id"] = 3311969  -- 璀璨烟花
	tFlowerChiefItem_Reward[3311975][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311975][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311975][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311975][1]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311975][1]["LogId"] = 12001236
	
	tFlowerChiefItem_Reward[3311975][2] = {}
	tFlowerChiefItem_Reward[3311975][2]["ItemChanceSum"] = 10000
	-- 坐骑碎片
	tFlowerChiefItem_Reward[3311975][2][1] ={}
	tFlowerChiefItem_Reward[3311975][2][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311975][2][1]["ItemChance"] = 10000
	tFlowerChiefItem_Reward[3311975][2][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311975][2][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311975][2][1]["RewardItem"][1]["Id"] = 3312003  --坐骑碎片
	tFlowerChiefItem_Reward[3311975][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311975][2][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311975][2][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311975][2][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311975][2][1]["Log"] = "0,0,3311975,1,12001261,2,3312003,1"

	-- 没获得碎片
	tFlowerChiefItem_Reward[3311975][2][2] ={}
	tFlowerChiefItem_Reward[3311975][2][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311975][2][2]["ItemChance"] = 0

-- 拉菲红酒礼包
	tFlowerChiefItem_Reward[3311976] = {}
	tFlowerChiefItem_Reward[3311976][1] = {}
	tFlowerChiefItem_Reward[3311976][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311976][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311976][1]["RewardItem"][1]["Id"] = 3311968  -- 拉菲红酒
	tFlowerChiefItem_Reward[3311976][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311976][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311976][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311976][1]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311976][1]["LogId"] = 12001236
	
	tFlowerChiefItem_Reward[3311976][2] = {}
	tFlowerChiefItem_Reward[3311976][2]["ItemChanceSum"] = 10000
	-- 坐骑碎片
	tFlowerChiefItem_Reward[3311976][2][1] ={}
	tFlowerChiefItem_Reward[3311976][2][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311976][2][1]["ItemChance"] = 10000
	tFlowerChiefItem_Reward[3311976][2][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311976][2][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311976][2][1]["RewardItem"][1]["Id"] = 3312003  --坐骑碎片
	tFlowerChiefItem_Reward[3311976][2][1]["RewardItem"][1]["Attr"] = "0 2"
	tFlowerChiefItem_Reward[3311976][2][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311976][2][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311976][2][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311976][2][1]["Log"] = "0,0,3311976,1,12001261,2,3312003,1"

	-- 没获得碎片
	tFlowerChiefItem_Reward[3311976][2][2] ={}
	tFlowerChiefItem_Reward[3311976][2][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311976][2][2]["ItemChance"] = 0

-- 精致真爱礼盒
	--	tFlowerChiefItem_Reward[3311977] = {}
	--	tFlowerChiefItem_Reward[3311977][1] = {}
	--	tFlowerChiefItem_Reward[3311977][1]["RewardItem"] = {}
	--	tFlowerChiefItem_Reward[3311977][1]["RewardItem"][1] = {}
	--	tFlowerChiefItem_Reward[3311977][1]["RewardItem"][1]["Id"] = 3311972  -- 深情款款礼包
	--	tFlowerChiefItem_Reward[3311977][1]["RewardItem"][1]["Attr"] = "0 1"
	--	tFlowerChiefItem_Reward[3311977][1]["RewardEffect"] = {}
	--	tFlowerChiefItem_Reward[3311977][1]["RewardEffect"]["SzObj"] = "self"
	--	tFlowerChiefItem_Reward[3311977][1]["RewardEffect"]["Effect"] = "angelwing"
	--	tFlowerChiefItem_Reward[3311977][1]["LogId"] = 12001236
	--	
	--	tFlowerChiefItem_Reward[3311977][2] = {}
	--	tFlowerChiefItem_Reward[3311977][2]["ItemChanceSum"] = 10000
	--	-- 坐骑碎片
	--	tFlowerChiefItem_Reward[3311977][2][1] ={}
	--	tFlowerChiefItem_Reward[3311977][2][1]["RandomItemChanceType"] = 2
	--	tFlowerChiefItem_Reward[3311977][2][1]["ItemChance"] = 420
	--	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"][1] = {}
	--	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"][1]["Id"] = 4200003  --3阶灵珠
	--	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"][1]["Attr"] = "0 1"
	--	tFlowerChiefItem_Reward[3311977][2][1]["RewardEffect"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][1]["RewardEffect"]["SzObj"] = "self"
	--	tFlowerChiefItem_Reward[3311977][2][1]["RewardEffect"]["Effect"] = "zf2-e300"
	--	tFlowerChiefItem_Reward[3311977][2][1]["Log"] = "0,0,3311977,1,12001261,2,4200003,1"
	--	tFlowerChiefItem_Reward[3311977][2][1]["Result"] = true
	--	
	--	tFlowerChiefItem_Reward[3311977][2][2] ={}
	--	tFlowerChiefItem_Reward[3311977][2][2]["RandomItemChanceType"] = 2
	--	tFlowerChiefItem_Reward[3311977][2][2]["ItemChance"] = 430
	--	tFlowerChiefItem_Reward[3311977][2][2]["RewardItem"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][2]["RewardItem"][1] = {}
	--	tFlowerChiefItem_Reward[3311977][2][2]["RewardItem"][1]["Id"] = 4200005  --5阶灵珠
	--	tFlowerChiefItem_Reward[3311977][2][2]["RewardItem"][1]["Attr"] = "0 1"
	--	tFlowerChiefItem_Reward[3311977][2][2]["RewardEffect"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][2]["RewardEffect"]["SzObj"] = "self"
	--	tFlowerChiefItem_Reward[3311977][2][2]["RewardEffect"]["Effect"] = "zf2-e300"
	--	tFlowerChiefItem_Reward[3311977][2][2]["Log"] = "0,0,3311977,1,12001261,2,4200005,1"
	--	tFlowerChiefItem_Reward[3311977][2][2]["Result"] = true
	--	
	--	tFlowerChiefItem_Reward[3311977][2][3] ={}
	--	tFlowerChiefItem_Reward[3311977][2][3]["RandomItemChanceType"] = 2
	--	tFlowerChiefItem_Reward[3311977][2][3]["ItemChance"] = 100
	--	tFlowerChiefItem_Reward[3311977][2][3]["RewardItem"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][3]["RewardItem"][1] = {}
	--	tFlowerChiefItem_Reward[3311977][2][3]["RewardItem"][1]["Id"] = 4200006  --6阶灵珠
	--	tFlowerChiefItem_Reward[3311977][2][3]["RewardItem"][1]["Attr"] = "0 1"
	--	tFlowerChiefItem_Reward[3311977][2][3]["RewardEffect"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][3]["RewardEffect"]["SzObj"] = "self"
	--	tFlowerChiefItem_Reward[3311977][2][3]["RewardEffect"]["Effect"] = "zf2-e300"
	--	tFlowerChiefItem_Reward[3311977][2][3]["Log"] = "0,0,3311977,1,12001261,2,4200006,1"
	--	tFlowerChiefItem_Reward[3311977][2][3]["Result"] = true
	--	
	--	tFlowerChiefItem_Reward[3311977][2][4] ={}
	--	tFlowerChiefItem_Reward[3311977][2][4]["RandomItemChanceType"] = 2
	--	tFlowerChiefItem_Reward[3311977][2][4]["ItemChance"] = 50
	--	tFlowerChiefItem_Reward[3311977][2][4]["RewardItem"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][4]["RewardItem"][1] = {}
	--	tFlowerChiefItem_Reward[3311977][2][4]["RewardItem"][1]["Id"] = 4200007  --7阶灵珠
	--	tFlowerChiefItem_Reward[3311977][2][4]["RewardItem"][1]["Attr"] = "0 1"
	--	tFlowerChiefItem_Reward[3311977][2][4]["RewardEffect"] = {}
	--	tFlowerChiefItem_Reward[3311977][2][4]["RewardEffect"]["SzObj"] = "self"
	--	tFlowerChiefItem_Reward[3311977][2][4]["RewardEffect"]["Effect"] = "zf2-e300"
	--	tFlowerChiefItem_Reward[3311977][2][4]["Log"] = "0,0,3311977,1,12001261,2,4200007,1"
	--	tFlowerChiefItem_Reward[3311977][2][4]["Result"] = true
    --	
	--	-- 没获得碎片
	--	tFlowerChiefItem_Reward[3311977][2][5] ={}
	--	tFlowerChiefItem_Reward[3311977][2][5]["RandomItemChanceType"] = 2
	--	tFlowerChiefItem_Reward[3311977][2][5]["ItemChance"] = 9000
	
	-- 精致真爱礼盒
	tFlowerChiefItem_Reward[3311977] = {}
	tFlowerChiefItem_Reward[3311977][1] = {}
	tFlowerChiefItem_Reward[3311977][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311977][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311977][1]["RewardItem"][1]["Id"] = 3311972  -- 深情款款礼包
	tFlowerChiefItem_Reward[3311977][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311977][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311977][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311977][1]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311977][1]["LogId"] = 12001236
	
	tFlowerChiefItem_Reward[3311977][2] = {}
	tFlowerChiefItem_Reward[3311977][2]["ItemChanceSum"] = 10000
	-- 坐骑碎片
	tFlowerChiefItem_Reward[3311977][2][1] ={}
	tFlowerChiefItem_Reward[3311977][2][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311977][2][1]["ItemChance"] = 3000
	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"][1]["Id"] = 3312003  --坐骑碎片
	tFlowerChiefItem_Reward[3311977][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311977][2][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311977][2][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311977][2][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311977][2][1]["Log"] = "0,0,3311977,1,12001261,2,3312003,1"

	-- 没获得碎片
	tFlowerChiefItem_Reward[3311977][2][2] ={}
	tFlowerChiefItem_Reward[3311977][2][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311977][2][2]["ItemChance"] = 7000

-- 豪华真爱礼盒
	tFlowerChiefItem_Reward[3311980] = {}
	tFlowerChiefItem_Reward[3311980][1] = {}
	tFlowerChiefItem_Reward[3311980][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311980][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311980][1]["RewardItem"][1]["Id"] = 3311973  -- 深情款款礼包
	tFlowerChiefItem_Reward[3311980][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311980][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311980][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311980][1]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311980][1]["LogId"] = 12001236

	tFlowerChiefItem_Reward[3311980][2] = {}
	tFlowerChiefItem_Reward[3311980][2]["ItemChanceSum"] = 10000
	-- 坐骑碎片
	tFlowerChiefItem_Reward[3311980][2][1] ={}
	tFlowerChiefItem_Reward[3311980][2][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311980][2][1]["ItemChance"] = 3000
	tFlowerChiefItem_Reward[3311980][2][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311980][2][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311980][2][1]["RewardItem"][1]["Id"] = 3312003  --坐骑碎片
	tFlowerChiefItem_Reward[3311980][2][1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311980][2][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311980][2][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311980][2][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3311980][2][1]["Log"] = "0,0,3311980,1,12001261,2,3312003,1"

	-- 没获得碎片
	tFlowerChiefItem_Reward[3311980][2][2] ={}
	tFlowerChiefItem_Reward[3311980][2][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3311980][2][2]["ItemChance"] = 7000

-- 含情脉脉礼盒
	tFlowerChiefItem_Reward[3311981] = {}
	tFlowerChiefItem_Reward[3311981]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311981]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311981]["DeleteItem"][1]["Id"] = 3311981
	tFlowerChiefItem_Reward[3311981]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311981]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311981]["RewardItem"][1]["Id"] = 3311973  -- 情意绵绵礼包
	tFlowerChiefItem_Reward[3311981]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311981]["RewardItem"][2] = {}
	tFlowerChiefItem_Reward[3311981]["RewardItem"][2]["Id"] = 730003  -- 2颗+3赤炼石（赠）
	tFlowerChiefItem_Reward[3311981]["RewardItem"][2]["Attr"] = "0 2 3 10080 1"
	tFlowerChiefItem_Reward[3311981]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311981]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311981]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311981]["LogId"] = 12001261
-- 情投意合礼盒
	tFlowerChiefItem_Reward[3311982] = {}
	tFlowerChiefItem_Reward[3311982]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311982]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311982]["DeleteItem"][1]["Id"] = 3311982
	tFlowerChiefItem_Reward[3311982]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311982]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311982]["RewardItem"][1]["Id"] = 3311973  -- 情意绵绵礼包
	tFlowerChiefItem_Reward[3311982]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[3311982]["RewardItem"][2] = {}
	tFlowerChiefItem_Reward[3311982]["RewardItem"][2]["Id"] = 3009001  --4颗明亮星陨石
	tFlowerChiefItem_Reward[3311982]["RewardItem"][2]["Attr"] = "0 4 0 2880 1"
	tFlowerChiefItem_Reward[3311982]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311982]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311982]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311982]["LogId"] = 12001261
-- 一往情深礼盒
	tFlowerChiefItem_Reward[3311983] = {}
	tFlowerChiefItem_Reward[3311983]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311983]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311983]["DeleteItem"][1]["Id"] = 3311983
	tFlowerChiefItem_Reward[3311983]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311983]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311983]["RewardItem"][1]["Id"] = 3311973  -- 情意绵绵礼包
	tFlowerChiefItem_Reward[3311983]["RewardItem"][1]["Attr"] = "0 2"
	tFlowerChiefItem_Reward[3311983]["RewardItem"][2] = {}
	tFlowerChiefItem_Reward[3311983]["RewardItem"][2]["Id"] = 730004  --1颗+4赤炼石
	tFlowerChiefItem_Reward[3311983]["RewardItem"][2]["Attr"] = "0 1 3 10080 1"
	tFlowerChiefItem_Reward[3311983]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311983]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311983]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311983]["LogId"] = 12001261
-- 柔情蜜意礼盒
	tFlowerChiefItem_Reward[3311984] = {}
	tFlowerChiefItem_Reward[3311984]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311984]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311984]["DeleteItem"][1]["Id"] = 3311984
	tFlowerChiefItem_Reward[3311984]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311984]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311984]["RewardItem"][1]["Id"] = 3311973  -- 情意绵绵礼包
	tFlowerChiefItem_Reward[3311984]["RewardItem"][1]["Attr"] = "0 3"
	tFlowerChiefItem_Reward[3311984]["RewardItem"][2] = {}
	tFlowerChiefItem_Reward[3311984]["RewardItem"][2]["Id"] = 3009002  --2颗晶莹星陨石
	tFlowerChiefItem_Reward[3311984]["RewardItem"][2]["Attr"] = "0 2 0 2880 1"
	tFlowerChiefItem_Reward[3311984]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311984]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311984]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311984]["LogId"] = 12001261
-- 心有灵犀礼盒
	tFlowerChiefItem_Reward[3311985] = {}
	tFlowerChiefItem_Reward[3311985]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311985]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311985]["DeleteItem"][1]["Id"] = 3311985
	tFlowerChiefItem_Reward[3311985]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311985]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311985]["RewardItem"][1]["Id"] = 3311973  -- 5个情意绵绵礼包
	tFlowerChiefItem_Reward[3311985]["RewardItem"][1]["Attr"] = "0 5"
	tFlowerChiefItem_Reward[3311985]["RewardItem"][2] = {}
	tFlowerChiefItem_Reward[3311985]["RewardItem"][2]["Id"] = 730006  --1颗+6赤炼石（赠）
	tFlowerChiefItem_Reward[3311985]["RewardItem"][2]["Attr"] = "0 1 3 10080 1"
	tFlowerChiefItem_Reward[3311985]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311985]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311985]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311985]["LogId"] = 12001261
-- 心心相印礼盒
	tFlowerChiefItem_Reward[3311986] = {}
	tFlowerChiefItem_Reward[3311986]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311986]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311986]["DeleteItem"][1]["Id"] = 3311986
	tFlowerChiefItem_Reward[3311986]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311986]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311986]["RewardItem"][1]["Id"] = 3311973  -- 10个情意绵绵礼包
	tFlowerChiefItem_Reward[3311986]["RewardItem"][1]["Attr"] = "0 10"
	tFlowerChiefItem_Reward[3311986]["RewardItem"][2] = {}
	tFlowerChiefItem_Reward[3311986]["RewardItem"][2]["Id"] = 195595  -- 1件永久时效XX外套（赠）
	tFlowerChiefItem_Reward[3311986]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1"
	tFlowerChiefItem_Reward[3311986]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311986]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311986]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311986]["LogId"] = 12001261
-- 情有独钟礼盒
	tFlowerChiefItem_Reward[3311987] = {}
	tFlowerChiefItem_Reward[3311987][1] = {}  --男
	tFlowerChiefItem_Reward[3311987][1]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311987][1]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311987][1]["DeleteItem"][1]["Id"] = 3311987
	tFlowerChiefItem_Reward[3311987][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311987][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311987][1]["RewardItem"][1]["Id"] = 3311973  -- 20个情意绵绵礼包
	tFlowerChiefItem_Reward[3311987][1]["RewardItem"][1]["Attr"] = "0 20"
	tFlowerChiefItem_Reward[3311987][1]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311987][1]["RewardTitle"]["TitleType"] = 2101   -- 潇洒帅哥称号
	tFlowerChiefItem_Reward[3311987][1]["RewardTitle"]["TitleId"] = 2101
	tFlowerChiefItem_Reward[3311987][1]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311987][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311987][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311987][1]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311987][1]["LogId"] = 12001261

	tFlowerChiefItem_Reward[3311987][2] = {} --女 
	tFlowerChiefItem_Reward[3311987][2]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311987][2]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311987][2]["DeleteItem"][1]["Id"] = 3311987
	tFlowerChiefItem_Reward[3311987][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311987][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311987][2]["RewardItem"][1]["Id"] = 3311973  -- 20个情意绵绵礼包
	tFlowerChiefItem_Reward[3311987][2]["RewardItem"][1]["Attr"] = "0 20"
	tFlowerChiefItem_Reward[3311987][2]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311987][2]["RewardTitle"]["TitleType"] = 2100   --1个甜心宝贝称号
	tFlowerChiefItem_Reward[3311987][2]["RewardTitle"]["TitleId"] = 2100
	tFlowerChiefItem_Reward[3311987][2]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311987][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311987][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311987][2]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311987][2]["LogId"] = 12001261

-- 魂牵梦绕礼盒
	tFlowerChiefItem_Reward[3311988] = {}
	tFlowerChiefItem_Reward[3311988]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311988]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311988]["DeleteItem"][1]["Id"] = 3311988
	tFlowerChiefItem_Reward[3311988]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3311988]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3311988]["RewardItem"][1]["Id"] = 3311973  -- 30个情意绵绵礼包
	tFlowerChiefItem_Reward[3311988]["RewardItem"][1]["Attr"] = "0 30"
	tFlowerChiefItem_Reward[3311988]["RewardItem"][2] = {}
	tFlowerChiefItem_Reward[3311988]["RewardItem"][2]["Id"] = 195605  -- 1个永久时效XX外套
	tFlowerChiefItem_Reward[3311988]["RewardItem"][2]["Attr"] = "0 1 0 0 0 0 0 1"
	tFlowerChiefItem_Reward[3311988]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311988]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311988]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311988]["LogId"] = 12001261

	-- 真爱男神冠军礼盒
	tFlowerChiefItem_Reward[3311989] = {} 
	tFlowerChiefItem_Reward[3311989]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311989]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311989]["DeleteItem"][1]["Id"] = 3311989
	tFlowerChiefItem_Reward[3311989]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311989]["RewardStrengthValue"]["Value"] = 15000  -- 15000点气力值
	tFlowerChiefItem_Reward[3311989]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311989]["RewardTitle"]["TitleType"] = 2103   --绝世靓仔称号
	tFlowerChiefItem_Reward[3311989]["RewardTitle"]["TitleId"] = 2103
	tFlowerChiefItem_Reward[3311989]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311989]["RewardWing"] = {}   --翅膀
	tFlowerChiefItem_Reward[3311989]["RewardWing"]["TitleType"] = 6022
	tFlowerChiefItem_Reward[3311989]["RewardWing"]["TitleId"] = 6022
	tFlowerChiefItem_Reward[3311989]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311989]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311989]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311989]["LogId"] = 12001261

	-- 真爱女神冠军礼盒
	tFlowerChiefItem_Reward[3311990] = {} 
	tFlowerChiefItem_Reward[3311990]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311990]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311990]["DeleteItem"][1]["Id"] = 3311990
	tFlowerChiefItem_Reward[3311990]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311990]["RewardStrengthValue"]["Value"] = 15000  -- 15000点气力值
	tFlowerChiefItem_Reward[3311990]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311990]["RewardTitle"]["TitleType"] = 2102   --1个超级美女称号
	tFlowerChiefItem_Reward[3311990]["RewardTitle"]["TitleId"] = 2102
	tFlowerChiefItem_Reward[3311990]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311990]["RewardWing"] = {}   --翅膀
	tFlowerChiefItem_Reward[3311990]["RewardWing"]["TitleType"] = 6022
	tFlowerChiefItem_Reward[3311990]["RewardWing"]["TitleId"] = 6022
	tFlowerChiefItem_Reward[3311990]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311990]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311990]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311990]["LogId"] = 12001261
-- 真爱男神亚军礼盒
	tFlowerChiefItem_Reward[3311991] = {} 
	tFlowerChiefItem_Reward[3311991]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311991]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311991]["DeleteItem"][1]["Id"] = 3311991
	tFlowerChiefItem_Reward[3311991]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311991]["RewardStrengthValue"]["Value"] = 15000  -- 15000点气力值
	tFlowerChiefItem_Reward[3311991]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311991]["RewardTitle"]["TitleType"] = 2103   --绝世靓仔称号
	tFlowerChiefItem_Reward[3311991]["RewardTitle"]["TitleId"] = 2103
	tFlowerChiefItem_Reward[3311991]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311991]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311991]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311991]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311991]["LogId"] = 12001261

-- 真爱男神亚军礼盒
	tFlowerChiefItem_Reward[3311992] = {} 
	tFlowerChiefItem_Reward[3311992]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311992]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311992]["DeleteItem"][1]["Id"] = 3311992
	tFlowerChiefItem_Reward[3311992]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311992]["RewardStrengthValue"]["Value"] = 15000  -- 15000点气力值
	tFlowerChiefItem_Reward[3311992]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311992]["RewardTitle"]["TitleType"] = 2102   --超级美女称号
	tFlowerChiefItem_Reward[3311992]["RewardTitle"]["TitleId"] = 2102
	tFlowerChiefItem_Reward[3311992]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311992]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311992]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311992]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311992]["LogId"] = 12001261
-- 真爱男神季军礼盒
	tFlowerChiefItem_Reward[3311993] = {} 
	tFlowerChiefItem_Reward[3311993]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311993]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311993]["DeleteItem"][1]["Id"] = 3311993
	tFlowerChiefItem_Reward[3311993]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311993]["RewardStrengthValue"]["Value"] = 10000  -- 10000点气力值
	tFlowerChiefItem_Reward[3311993]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311993]["RewardTitle"]["TitleType"] = 2103   --绝世靓仔称号
	tFlowerChiefItem_Reward[3311993]["RewardTitle"]["TitleId"] = 2103
	tFlowerChiefItem_Reward[3311993]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311993]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311993]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311993]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311993]["LogId"] = 12001261
-- 真爱女神季军礼盒
	tFlowerChiefItem_Reward[3311994] = {} 
	tFlowerChiefItem_Reward[3311994]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311994]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311994]["DeleteItem"][1]["Id"] = 3311994
	tFlowerChiefItem_Reward[3311994]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311994]["RewardStrengthValue"]["Value"] = 10000  -- 10000点气力值
	tFlowerChiefItem_Reward[3311994]["RewardTitle"] = {}
	tFlowerChiefItem_Reward[3311994]["RewardTitle"]["TitleType"] = 2102   --超级美女称号
	tFlowerChiefItem_Reward[3311994]["RewardTitle"]["TitleId"] = 2102
	tFlowerChiefItem_Reward[3311994]["RewardTitle"]["SaveTime"] = 0
	tFlowerChiefItem_Reward[3311994]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311994]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311994]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311994]["LogId"] = 12001261
-- 真爱男神翘楚礼盒
	tFlowerChiefItem_Reward[3311995] = {} 
	tFlowerChiefItem_Reward[3311995]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311995]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311995]["DeleteItem"][1]["Id"] = 3311995
	tFlowerChiefItem_Reward[3311995]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311995]["RewardStrengthValue"]["Value"] = 10000  -- 10000点气力值
	tFlowerChiefItem_Reward[3311995]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311995]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311995]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311995]["LogId"] = 12001261
-- 真爱女神翘楚礼盒
	tFlowerChiefItem_Reward[3311996] = {} 
	tFlowerChiefItem_Reward[3311996]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311996]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311996]["DeleteItem"][1]["Id"] = 3311996
	tFlowerChiefItem_Reward[3311996]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311996]["RewardStrengthValue"]["Value"] = 10000  -- 10000点气力值
	tFlowerChiefItem_Reward[3311996]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311996]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311996]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311996]["LogId"] = 12001261

-- 真爱男神精英礼盒
	tFlowerChiefItem_Reward[3311997] = {} 
	tFlowerChiefItem_Reward[3311997]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311997]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311997]["DeleteItem"][1]["Id"] = 3311997
	tFlowerChiefItem_Reward[3311997]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311997]["RewardStrengthValue"]["Value"] = 8000  -- 8000点气力值
	tFlowerChiefItem_Reward[3311997]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311997]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311997]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311997]["LogId"] = 12001261

-- 真爱男神精英礼盒
	tFlowerChiefItem_Reward[3311998] = {} 
	tFlowerChiefItem_Reward[3311998]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3311998]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3311998]["DeleteItem"][1]["Id"] = 3311998
	tFlowerChiefItem_Reward[3311998]["RewardStrengthValue"] = {} 
	tFlowerChiefItem_Reward[3311998]["RewardStrengthValue"]["Value"] = 8000  -- 8000点气力值
	tFlowerChiefItem_Reward[3311998]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3311998]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3311998]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3311998]["LogId"] = 12001261


	tFlowerChiefItem_Reward[1] = {} --显著功勋礼包
	tFlowerChiefItem_Reward[1]["EventType"] = 189
	tFlowerChiefItem_Reward[1]["DataType"] = 62
	tFlowerChiefItem_Reward[1]["RewardDelay"] = 1
	tFlowerChiefItem_Reward[1]["RewardTimeType"] = 4
	tFlowerChiefItem_Reward[1]["RewardData"] = 1
	tFlowerChiefItem_Reward[1]["LogId"] = 12001248
	tFlowerChiefItem_Reward[1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[1]["RewardItem"][1]["Id"] = 3312027  --甜蜜小礼包
	tFlowerChiefItem_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[1]["RewardEffect"]["Effect"] = "angelwing"

	tFlowerChiefItem_Reward[2] = {} --杀怪
	tFlowerChiefItem_Reward[2]["LogId"] = 12001248
	tFlowerChiefItem_Reward[2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[2]["RewardItem"][1]["Id"] = 3312027  --甜蜜小礼包
	tFlowerChiefItem_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tFlowerChiefItem_Reward[2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[2]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[2]["Random"] = 200  --概率

	
-- 武器碎片
	tFlowerChiefItem_Reward[3312003] = {}
	tFlowerChiefItem_Reward[3312003][1] = {}
	tFlowerChiefItem_Reward[3312003][1]["ItemChanceSum"] = 10000
	-- 坐骑碎片
	tFlowerChiefItem_Reward[3312003][1][1] ={} --赌赢
	tFlowerChiefItem_Reward[3312003][1][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312003][1][1]["ItemChance"] = 4900
	tFlowerChiefItem_Reward[3312003][1][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][1][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][1][1]["RewardItem"][1]["Id"] = 3312003  --坐骑碎片
	tFlowerChiefItem_Reward[3312003][1][1]["RewardItem"][1]["Attr"] = "0 2"
	tFlowerChiefItem_Reward[3312003][1][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][1][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][1][1]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3312003][1][1]["Log"] = "0,0,3312003,1,12001261,2,3312003,2"
	tFlowerChiefItem_Reward[3312003][1][1]["Result"] = true
	-- 没获得碎片
	tFlowerChiefItem_Reward[3312003][1][2] ={}
	tFlowerChiefItem_Reward[3312003][1][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312003][1][2]["ItemChance"] = 5100
	tFlowerChiefItem_Reward[3312003][1][2]["Log"] = "0,0,3312003,1,12001261,2,0,0"
	tFlowerChiefItem_Reward[3312003][1][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][1][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][1][2]["RewardEffect"]["Effect"] = "zf2-e300"
	tFlowerChiefItem_Reward[3312003][1][2]["Result"] = false
	
	
-- 合成碎片
	
	--长武器
	tFlowerChiefItem_Reward[3312003][10] = {} 
	tFlowerChiefItem_Reward[3312003][10][2] = {} 
	tFlowerChiefItem_Reward[3312003][10][2]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][2]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][2]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][10][2]["DeleteItem"][1]["ItemNum"] = 600
	tFlowerChiefItem_Reward[3312003][10][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][2]["RewardItem"][1]["Id"] = 350029  --武器
	tFlowerChiefItem_Reward[3312003][10][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][10][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][10][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][10][2]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][10][2]["LogId"] = 12001261

	tFlowerChiefItem_Reward[3312003][10][3] = {} 
	tFlowerChiefItem_Reward[3312003][10][3]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][3]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][3]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][10][3]["DeleteItem"][1]["ItemNum"] = 200
	tFlowerChiefItem_Reward[3312003][10][3]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][3]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][3]["RewardItem"][1]["Id"] = 350029  --武器
	tFlowerChiefItem_Reward[3312003][10][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][10][3]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][10][3]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][10][3]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][10][3]["LogId"] = 12001261

	tFlowerChiefItem_Reward[3312003][10][4] = {} 
	tFlowerChiefItem_Reward[3312003][10][4]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][4]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][4]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][10][4]["DeleteItem"][1]["ItemNum"] = 50
	tFlowerChiefItem_Reward[3312003][10][4]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][4]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][4]["RewardItem"][1]["Id"] = 350029  --武器
	tFlowerChiefItem_Reward[3312003][10][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][10][4]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][10][4]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][10][4]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][10][4]["LogId"] = 12001261
	
	tFlowerChiefItem_Reward[3312003][10][5] = {} 
	tFlowerChiefItem_Reward[3312003][10][5]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][5]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][5]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][10][5]["DeleteItem"][1]["ItemNum"] = 20
	tFlowerChiefItem_Reward[3312003][10][5]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][10][5]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][10][5]["RewardItem"][1]["Id"] = 350029  --武器
	tFlowerChiefItem_Reward[3312003][10][5]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][10][5]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][10][5]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][10][5]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][10][5]["LogId"] = 12001261

	--短武器
	tFlowerChiefItem_Reward[3312003][11] = {} 
	tFlowerChiefItem_Reward[3312003][11][2] = {} 
	tFlowerChiefItem_Reward[3312003][11][2]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][2]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][2]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][11][2]["DeleteItem"][1]["ItemNum"] = 600
	tFlowerChiefItem_Reward[3312003][11][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][2]["RewardItem"][1]["Id"] = 360290  --武器
	tFlowerChiefItem_Reward[3312003][11][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][11][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][11][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][11][2]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][11][2]["LogId"] = 12001261

	tFlowerChiefItem_Reward[3312003][11][3] = {} 
	tFlowerChiefItem_Reward[3312003][11][3]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][3]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][3]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][11][3]["DeleteItem"][1]["ItemNum"] = 200
	tFlowerChiefItem_Reward[3312003][11][3]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][3]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][3]["RewardItem"][1]["Id"] = 360290  --武器
	tFlowerChiefItem_Reward[3312003][11][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][11][3]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][11][3]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][11][3]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][11][3]["LogId"] = 12001261

	tFlowerChiefItem_Reward[3312003][11][4] = {} 
	tFlowerChiefItem_Reward[3312003][11][4]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][4]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][4]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][11][4]["DeleteItem"][1]["ItemNum"] = 50
	tFlowerChiefItem_Reward[3312003][11][4]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][4]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][4]["RewardItem"][1]["Id"] = 360290  --武器
	tFlowerChiefItem_Reward[3312003][11][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][11][4]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][11][4]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][11][4]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][11][4]["LogId"] = 12001261
	
	tFlowerChiefItem_Reward[3312003][11][5] = {} 
	tFlowerChiefItem_Reward[3312003][11][5]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][5]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][5]["DeleteItem"][1]["Id"] = 3312003
	tFlowerChiefItem_Reward[3312003][11][5]["DeleteItem"][1]["ItemNum"] = 20
	tFlowerChiefItem_Reward[3312003][11][5]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312003][11][5]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312003][11][5]["RewardItem"][1]["Id"] = 360290  --武器
	tFlowerChiefItem_Reward[3312003][11][5]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tFlowerChiefItem_Reward[3312003][11][5]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312003][11][5]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312003][11][5]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312003][11][5]["LogId"] = 12001261

	-- 甜蜜礼包
	tFlowerChiefItem_Reward[3312026] = {}
	tFlowerChiefItem_Reward[3312026]["ItemChanceSum"] = 10000
	
	tFlowerChiefItem_Reward[3312026][1] = {}
	tFlowerChiefItem_Reward[3312026][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312026][1]["ItemChance"] = 900
	tFlowerChiefItem_Reward[3312026][1]["Data"] = 300
	
	tFlowerChiefItem_Reward[3312026][2] = {}
	tFlowerChiefItem_Reward[3312026][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312026][2]["ItemChance"] = 4000
	tFlowerChiefItem_Reward[3312026][2]["Data"] = 600
	
	tFlowerChiefItem_Reward[3312026][3] = {}
	tFlowerChiefItem_Reward[3312026][3]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312026][3]["ItemChance"] = 4200
	tFlowerChiefItem_Reward[3312026][3]["Data"] = 1000

	tFlowerChiefItem_Reward[3312026][4] = {}
	tFlowerChiefItem_Reward[3312026][4]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312026][4]["ItemChance"] = 650
	tFlowerChiefItem_Reward[3312026][4]["Data"] = 3000

	tFlowerChiefItem_Reward[3312026][5] = {}
	tFlowerChiefItem_Reward[3312026][5]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312026][5]["ItemChance"] = 250
	tFlowerChiefItem_Reward[3312026][5]["Data"] = 5000

	-- 甜蜜礼包
	tFlowerChiefItem_Reward[3312027] = {}
	tFlowerChiefItem_Reward[3312027]["ItemChanceSum"] = 10000
	
	tFlowerChiefItem_Reward[3312027][1] = {}
	tFlowerChiefItem_Reward[3312027][1]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312027][1]["ItemChance"] = 0
	tFlowerChiefItem_Reward[3312027][1]["Data"] = 100
	
	tFlowerChiefItem_Reward[3312027][2] = {}
	tFlowerChiefItem_Reward[3312027][2]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312027][2]["ItemChance"] = 7000
	tFlowerChiefItem_Reward[3312027][2]["Data"] = 500
	
	tFlowerChiefItem_Reward[3312027][3] = {}
	tFlowerChiefItem_Reward[3312027][3]["RandomItemChanceType"] = 2
	tFlowerChiefItem_Reward[3312027][3]["ItemChance"] = 3000
	tFlowerChiefItem_Reward[3312027][3]["Data"] = 1000

-- 巧克力甜心（30天）
	tFlowerChiefItem_Reward[3312028] = {} 
	tFlowerChiefItem_Reward[3312028][1] = {} 
	tFlowerChiefItem_Reward[3312028][1]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312028][1]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312028][1]["DeleteItem"][1]["Id"] = 3312028
	tFlowerChiefItem_Reward[3312028][1]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312028][1]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312028][1]["RewardItem"][1]["Id"] = 350030  --长武器
	tFlowerChiefItem_Reward[3312028][1]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1"
	tFlowerChiefItem_Reward[3312028][1]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312028][1]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312028][1]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312028][1]["LogId"] = 12001261

	tFlowerChiefItem_Reward[3312028][2] = {} 
	tFlowerChiefItem_Reward[3312028][2]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312028][2]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312028][2]["DeleteItem"][1]["Id"] = 3312028
	tFlowerChiefItem_Reward[3312028][2]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312028][2]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312028][2]["RewardItem"][1]["Id"] = 360291  --短武器*2
	tFlowerChiefItem_Reward[3312028][2]["RewardItem"][1]["Attr"] = "0 2 0 43200 1 0 0 1"
	tFlowerChiefItem_Reward[3312028][2]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312028][2]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312028][2]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312028][2]["LogId"] = 12001261
-- 浪漫进行时（永久）
	tFlowerChiefItem_Reward[3312024] = {} 
	tFlowerChiefItem_Reward[3312024]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312024]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312024]["DeleteItem"][1]["Id"] = 3312024
	tFlowerChiefItem_Reward[3312024]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312024]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312024]["RewardItem"][1]["Id"] = 195595  --浪漫进行时
	tFlowerChiefItem_Reward[3312024]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tFlowerChiefItem_Reward[3312024]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312024]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312024]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312024]["LogId"] = 12001261
	
-- 浪漫进行时【梦幻版】外套
	tFlowerChiefItem_Reward[3312025] = {} 
	tFlowerChiefItem_Reward[3312025]["DeleteItem"] = {}
	tFlowerChiefItem_Reward[3312025]["DeleteItem"][1] = {}
	tFlowerChiefItem_Reward[3312025]["DeleteItem"][1]["Id"] = 3312025
	tFlowerChiefItem_Reward[3312025]["RewardItem"] = {}
	tFlowerChiefItem_Reward[3312025]["RewardItem"][1] = {}
	tFlowerChiefItem_Reward[3312025]["RewardItem"][1]["Id"] = 195605  --浪漫进行时【梦幻版】
	tFlowerChiefItem_Reward[3312025]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tFlowerChiefItem_Reward[3312025]["RewardEffect"] = {}
	tFlowerChiefItem_Reward[3312025]["RewardEffect"]["SzObj"] = "self"
	tFlowerChiefItem_Reward[3312025]["RewardEffect"]["Effect"] = "angelwing"
	tFlowerChiefItem_Reward[3312025]["LogId"] = 12001261
	
	

	
local tFlowerChiefItem_Log = {}
---过期删除
	tFlowerChiefItem_Log[1] = "0,0,%d,%d,12001261,3,0,0"
	

local tFlowerChiefItem_Stc = {}
	tFlowerChiefItem_Stc[1] = {}
	tFlowerChiefItem_Stc[1]["EventType"] = 189
	tFlowerChiefItem_Stc[1]["DataType"] = 63
	tFlowerChiefItem_Stc[1]["Data"] = 1
	tFlowerChiefItem_Stc[1]["JiqingData"] = 3


	
----------------------------------逻辑部分---------------------------------------------
--随机给物品逻辑
function FlowerChiefItem_RadomItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	-- 背包空间
	if not RewardTemplate_ChkRandomSpace(tFlowerChiefItem_Reward,nItemId) then
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tFlowerChiefItem_Reward,nItemId)
	end
end


--固定物品加随机碎片
function FlowerChiefItem_AddItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tFlowerChiefItem_Reward[nItemId][1]) + RewardTemplate_GetRandomSpace(tFlowerChiefItem_Reward[nItemId],2)
	if not User_CheckLeftSpace(nSpace) then
		local sSpace = string.format(tFlowerChiefItem_Text["NoSpace"],nSpace)
		Sys_MsgBox(sSpace)
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId][1])
		RewardTemplate_NewRandom(tFlowerChiefItem_Reward[nItemId],2)
	end
end

---直接给物品
function FlowerChiefItem_RewardItem(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	-- 背包空间
	if not RewardTemplate_CheckSpace(tFlowerChiefItem_Reward[nItemId]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId])
end

function FlowerChiefItem_RewardTitle(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	-- 背包空间
	if not RewardTemplate_ChkRandomSpace(tFlowerChiefItem_Reward,nItemId) then
		return
	end
	--判别性别
	local nUserId = Get_UserId()
	local nSex = Get_UserSex(nUserId)
	RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId][nSex])
	
end
-- 过期删除
function FlowerChiefItem_OverTime(nItemId)
	local sTime = tActivityTime["FlowerChiefItem"]["Now_Time"]
	if nItemId >= 3311989 and nItemId <= 3311998 then
		sTime = tActivityTime["FlowerChiefItem"]["ItemNow_Time"]
	end 
	if not Sys_ChkFullTime(sTime) then
		local nNum = Get_CountItemType(nItemId,0)
		if Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tFlowerChiefItem_Text[3311974]["Over"])
			local sLog = string.format(tFlowerChiefItem_Log[1],nItemId,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		return true
	end
	return false
end


-----物品产出
function FlowerChiefItem_Reward(nNum)
	--激情服
	--	if SpecialServer_ChkNoGiftServer() then
	--		return
	--	end
	local nUserId = Get_UserId()
	--判断获得时间
	if not Sys_ChkFullTime(tActivityTime["FlowerChiefItem"]["Now_Time"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tFlowerChiefItem_Data["Level"],tFlowerChiefItem_Data["Metempsychosis"],nUserId) then
		return
	end
	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tFlowerChiefItem_Reward[nNum],nUserId) then
		return
	end
	RewardTemplate_OuterPckage(tFlowerChiefItem_Reward[nNum],nUserId)
end
---片区怪
function FlowerChiefItem_KillReward()
	local nUserId = Get_UserId()
	
	--判断获得时间
	if not Sys_ChkFullTime(tActivityTime["FlowerChiefItem"]["Now_Time"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tFlowerChiefItem_Data["Level"],tFlowerChiefItem_Data["Metempsychosis"],nUserId) then
		return
	end

	-- 背包空间判断
	if not RewardTemplate_CheckSpace(tFlowerChiefItem_Reward[2],nUserId) then
		return
	end
	--判断今日是否获得
	local nEvent = tFlowerChiefItem_Stc[1]["EventType"]
	local nType = tFlowerChiefItem_Stc[1]["DataType"]
	--隔天清零
	if Task_StcInterval(nEvent,nType,1,4) then 
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	local nMax = tFlowerChiefItem_Stc[1]["Data"]
	--激情服
	-- if SpecialServer_ChkNoGiftServer() then
		-- nMax = tFlowerChiefItem_Stc[1]["JiqingData"]
	-- end
	if Task_ChkStcValue(nEvent,nType,">=",nMax,nUserId) then
		return
	end
	if Sys_Random(tFlowerChiefItem_Reward[2]["Random"],10000)then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		--给物品
		RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[2],nUserId)
		if Task_ChkStcValue(nEvent,nType,"==",nMax,nUserId) then
			local sStr = string.format(tFlowerChiefItem_Text["Monster"],nMax)
			Sys_MsgBox(sStr)
		end
	end
end

-------武器碎片
function FlowerChiefItem_Change(nItemId)
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then
		return
	end
	if Item_DelItem(nItemId) then
		local tReward = RewardTemplate_NewRandom(tFlowerChiefItem_Reward[nItemId],1)
		local fRewardResult = tReward[1]["tAward"][1]["Result"]
		if fRewardResult then
			Sys_MsgBox(tFlowerChiefItem_Text[3312003]["Get"])
		else
			Sys_MsgBox(tFlowerChiefItem_Text[3312003]["Lost"])
		end
	end
end
function FlowerChiefItem_GetItem(nItemId,nNum,nData)

	--检测碎片
	local nItemNum = tFlowerChiefItem_Reward[3312003][nData][nNum]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		--提示玩家
		local nStr = string.format(tFlowerChiefItem_Text[3312003]["NoGet"],nItemNum)
		Sys_MsgBox(nStr)
		return
	end
	
	---背包空间
	if not RewardTemplate_CheckSpace(tFlowerChiefItem_Reward[3312003][nData][nNum],nUserId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[3312003][nData][nNum],nUserId)
end


function FlowerChiefItem_AddSet(nItemId)
	if tFlowerChiefItem_Reward[nItemId] == nil then
		return
	end 
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tFlowerChiefItem_Reward,nItemId)  
		local nData = tNum[1]["tAward"][1]["Data"]
		local nAllData = ValentinesDay2019NPC_GetStcValue(5)
		local nTolData = ValentinesDay2019NPC_GetStcValue(6) 
		local nUserId = Get_UserId()
		ValentinesDay2019NPC_SetStcValue(5,nAllData + nData)
		ValentinesDay2019NPC_SetStcValue(6,nTolData+ nData)
		User_TalkChannel2005(string.format(tFlowerChiefItem_Text["Reward"],nData))
		-- 阶段播报
		ValentinesDay2019NPC_StepBrodcast(nAllData,nAllData + nData,nUserId)
		-- 每日奖励
		ValentinesDay2019NPC_DailyAward(nAllData,nAllData + nData,nUserId)
		-- 总奖励
		ValentinesDay2019NPC_TotalAward(nTolData,nTolData+ nData,nUserId)
		
		-- 排行榜
		ValentinesDay2019NPC_Rank(nTolData+ nData)
		
		
		if nData >= 3000 then
			local sUserName = Get_UserName(nUserId)
			Sys_SystemBroadcast(string.format(tFlowerChiefItem_Text["Broad1"],sUserName,nData))
		end
	end
end

function FlowerChiefItem_RewardWuQi(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	-- 背包空间
	if not RewardTemplate_CheckSpace(tFlowerChiefItem_Reward[nItemId][nNum],nUserId) then
		Sys_MsgBox(tFlowerChiefItem_Text[3312028]["NoSpace"])
		return
	end
	RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId][nNum],nUserId)
end

----每日置0
function FlowerChiefItem_SetGlobal()
	local nGlobalId = tFlowerChiefItem_Data["Global"]

	Sys_SetSynaGlobalData1(nGlobalId,0)
	Sys_SetSynaGlobalData3(nGlobalId,0)
end


function lowerChiefItem_Goto(nNum)
	local nUserId = Get_UserId()
	local nUserMap = Get_UserMapId(nUserId)
	if nUserMap ~= 1002 then
		Sys_MsgBox(tFlowerChiefItem_Text["NoPlace"])
		return
	end
	NpcPosition_PathFind(23682)
end 

---服务器启动
-- function FlowerChiefItem_SetData()
	-- local sServerName = Get_SysServerName(Get_UserServerId())
	-- if sServerName == nil then
		-- return
	-- end
	-- if tFlowerChiefItem_Text["Num"][sServerName] == nil then
		-- return
	-- end
	-- tFlowerChiefItem_Data["Num"][1] = tFlowerChiefItem_Text["Num"][sServerName]
-- end
---------------------------------物品部分---------------------------------------------
-- 浪漫香烛 拉菲红酒 璀璨烟花
for i = 3311967,3311969 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		--过期删除
		if FlowerChiefItem_OverTime(nItemId) then
			return
		end
		NpcPosition_PathFind(23682)
	end
end

--------情人节礼盒
-- tItem[3311970] = tItem[3311970] or {}
-- tItem[3311970]["Function"] = function(nItemId,sItemName)
	-- FlowerChiefItem_RadomItem(nItemId)
-- end
--------浪漫礼物包
tItem[3311971] = tItem[3311971] or {}
tItem[3311971]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tFlowerChiefItem_Reward,nItemId) + RewardTemplate_GetRewardSpace(tFlowerChiefItem_Reward[nItemId][10]) - 1
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tFlowerChiefItem_Reward,nItemId)
		RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId][10],nUserId)
	end
end

-- 深情款款礼包
tItem[3311972] = tItem[3311972] or {}
tItem[3311972]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_RadomItem(nItemId)
end

-- 情意绵绵礼包
tItem[3311973] = tItem[3311973] or {}
tItem[3311973]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	-- 背包空间
	if not RewardTemplate_ChkRandomSpace(tFlowerChiefItem_Reward,nItemId) then
		return
	end
	if Item_DelItem(nItemId) then
		local tReward,sRewardStr = RewardTemplate_NewRandom(tFlowerChiefItem_Reward,nItemId)
		--是否需要广播
		if tReward[1]["tAward"][1]["Flag"] ==nil then
			return
		end 
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		local sUseItemName = Get_ItemtypeName(nItemId)
		local nItem = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
		local sAddItemName = Get_ItemtypeName(nItem)
		local sBroad = string.format(tFlowerChiefItem_Text["Broad"],sUserName,sUseItemName,sAddItemName)
		Sys_SystemBroadcast(sBroad)
	end
end

-- 浪漫香烛礼包
tItem[3311974] = tItem[3311974] or {}
tItem[3311974]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_AddItem(nItemId)
end

-- 璀璨烟花礼包
tItem[3311975] = tItem[3311975] or {}
tItem[3311975]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_AddItem(nItemId)
end
-- 拉菲红酒礼包
tItem[3311976] = tItem[3311976] or {}
tItem[3311976]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_AddItem(nItemId)
end
-- 精致真爱礼盒
tItem[3311977] = tItem[3311977] or {}
tItem[3311977]["Function"] = function(nItemId,sItemName)
	--	if not Item_ChkItem(nItemId) then
	--		return
	--	end
	--	--过期删除
	--	if FlowerChiefItem_OverTime(nItemId) then
	--		return
	--	end
	--	-- 背包空间
	--	local nSpace = RewardTemplate_GetRewardSpace(tFlowerChiefItem_Reward[nItemId][1]) + RewardTemplate_GetRandomSpace(tFlowerChiefItem_Reward[nItemId],2)
	--	if not User_CheckLeftSpace(nSpace) then
	--		local sSpace = string.format(tFlowerChiefItem_Text["NoSpace"],nSpace)
	--		Sys_MsgBox(sSpace)
	--		return
	--	end
	--	if Item_DelItem(nItemId) then
	--		RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId][1])
	--		
	--		local nUserId = Get_UserId()
	--		---二转以上玩家每天有10%概率抽到平均价值75的灵珠
	--		local nMetemsy = Get_UserNewMetempsychosis(nUserId)
	--		if nMetemsy >= 2 then
	--			--每日限量
	--			local nGlobalId = tFlowerChiefItem_Data["Global"]
	--			local nData = Get_SysDynaGlobalData(nGlobalId,3)
	--			if nData >= tFlowerChiefItem_Data["Num"][1] then
	--				return
	--			end
	--			local tReward = RewardTemplate_NewRandom(tFlowerChiefItem_Reward[nItemId],2)
	--			local fRewardResult = tReward[1]["tAward"][1]["Result"]
	--			if fRewardResult then
	--				-- 动态码+1
	--				Sys_SetSynaGlobalData3(nGlobalId,nData+1)
	--				local nAddItem = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
	--				local sUserName = Get_UserName(nUserId)
	--				local sRewardItemName = Get_ItemtypeName(nAddItem)
	--				local sBroad = string.format(tFlowerChiefItem_Text["Broad2"],sUserName,sRewardItemName)
	--				Sys_SystemBroadcast(sBroad)
	--			end
	--		end
	--	end
	FlowerChiefItem_AddItem(nItemId)
end

-- 豪华真爱礼盒
tItem[3311980] = tItem[3311980] or {}
tItem[3311980]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_AddItem(nItemId)
end



-- 含情脉脉礼盒
for i=3311981,3311986 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		FlowerChiefItem_RewardItem(nItemId)
	end
end
-- 魂牵梦绕礼盒
tItem[3311988] = tItem[3311988] or {}
tItem[3311988]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_RewardItem(nItemId)
end
-- 情有独钟礼盒
tItem[3311987] = tItem[3311987] or {}
tItem[3311987]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_RewardTitle(nItemId)
end

-- 真爱男神冠军礼盒 - 真爱女神精英礼盒
for i=3311989,3311998 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		FlowerChiefItem_RewardItem(nItemId)
	end
end
---坐骑碎片
tItemFace[3312003] = 1726
tItem[3312003] = tItem[3312003] or {}
tItem[3312003]["Function"] = function(nItemId,sItemName)
	--过期删除
	if FlowerChiefItem_OverTime(nItemId) then
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3312003]["DialogueText"] = tFlowerChiefItem_Text[3312003]
tItem[3312003]["Text1-1"] = {111}
tItem[3312003]["tOption1-1"] = {6,7,1}
tItem[3312003]["OptionFunc1"] = "FlowerChiefItem_Change</N>3312003"
tItem[3312003]["OptionPoint6"] = "2-1"
tItem[3312003]["OptionPoint7"] = "3-1"
tItem[3312003]["Text2-1"] = {211}
tItem[3312003]["tOption2-1"] = {2,3,4,5}
tItem[3312003]["OptionFunc2"] = "FlowerChiefItem_GetItem</N>3312003</N>2</N>10"
tItem[3312003]["OptionFunc3"] = "FlowerChiefItem_GetItem</N>3312003</N>3</N>10"
tItem[3312003]["OptionFunc4"] = "FlowerChiefItem_GetItem</N>3312003</N>4</N>10"
tItem[3312003]["OptionFunc5"] = "FlowerChiefItem_GetItem</N>3312003</N>5</N>10"
tItem[3312003]["Text3-1"] = {311}
tItem[3312003]["tOption3-1"] = {11,12,13,14}
tItem[3312003]["OptionFunc11"] = "FlowerChiefItem_GetItem</N>3312003</N>2</N>11"
tItem[3312003]["OptionFunc12"] = "FlowerChiefItem_GetItem</N>3312003</N>3</N>11"
tItem[3312003]["OptionFunc13"] = "FlowerChiefItem_GetItem</N>3312003</N>4</N>11"
tItem[3312003]["OptionFunc14"] = "FlowerChiefItem_GetItem</N>3312003</N>5</N>11"


-- 甜蜜礼包
tItem[3312026] = tItem[3312026] or {}
tItem[3312026]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_AddSet(nItemId)
end
-- 甜蜜小礼包
tItem[3312027] = tItem[3312027] or {}
tItem[3312027]["Function"] = function(nItemId,sItemName)
	FlowerChiefItem_AddSet(nItemId)
end

-- 巧克力甜心（30天）
tItemFace[3312028] = 1994
tItem[3312028] = tItem[3312028] or {}
tItem[3312028]["DialogueText"] = tFlowerChiefItem_Text[3312028]
tItem[3312028]["Text1-1"] = {111}
tItem[3312028]["tOption1-1"] = {1,2}
tItem[3312028]["OptionFunc1"] = "FlowerChiefItem_RewardWuQi</N>3312028</N>1"
tItem[3312028]["OptionFunc2"] = "FlowerChiefItem_RewardWuQi</N>3312028</N>2"

-- 浪漫进行时【梦幻版】外套
tItem[3312025] = tItem[3312025] or {}
tItem[3312025]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end
	
	--若不是打折物品，则直接打开该礼包
	-- local nCutTip = CommonPackage_ExitTicket() 
	local nReturnMoney,tMemoryBin,sEmoneyLog,nZhengItemId = CommonPackage_ReturnPrice(nItemId,1)
	local nSpace = RewardTemplate_GetRewardSpace(tFlowerChiefItem_Reward[nItemId])+ WarriorsPromotion_JudgeSpace(nItemId)
	
	if tMemoryBin == nil and nReturnMoney == nil then
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return
		end
		return
	end
	
	-- --判断是否在活动时间内
	if not Sys_ChkFullTime(tActivityTime["BoundCarnival"]["OldActivityTime"]) then
		
		if User_CheckLeftSpace(nSpace) then
			if RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId]) then
				WarriorsPromotion_JudgeNinjaItem(nItemId)
			end
		else
			--提示
			Sys_MsgBox(string.format(tPeelingPromotion_Text["MsgSpace"],nSpace))
			return 
		end
	else
		
		--有返利,给玩家返相应的天石
		-- if nCutTip == 2 then
		local nEmoney = Get_UserEMoney()
		if nEmoney + nReturnMoney > G_User_MaxEmoney then
			User_TalkChannel2005(tMayPKMonth_Text["Item"]["Text121"])
			Sys_MsgBox(tMayPKMonth_Text["Item"]["Text121"])
			return
		end
		-- end
		
		if User_CheckLeftSpace(nSpace) then
			RewardTemplate_UseItemAndMsg(tFlowerChiefItem_Reward[nItemId])
			--给玩家对应的印记
			-- CommonPackage_LocationYing(nItemId,nCutTip)
		
			--若是玩家有打折卷则给玩家放对应的天石
			-- if nCutTip == 2  then
				--给对应的天石
			if CommonPackage_DeleteTicket(nZhengItemId,nItemId) and User_AddEMoney(nReturnMoney) then
				Sys_SaveEmoneyBuy(string.format(sEmoneyLog,nReturnMoney,nReturnMoney))
			end
			-- end
		else
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
			Sys_MsgBox(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		end
		
	end
end

-- 浪漫进行时（永久）
tItem[3312024] = tItem[3312025] or {}

---------------------------------怪物部分---------------------------------------------
	-- local tFlowerChiefItem_KillReward = {}
	-- tFlowerChiefItem_KillReward["ActivityTime"] = tFlowerChiefItem_Data["Now_Time"]
	-- tFlowerChiefItem_KillReward["Function"]= FlowerChiefItem_KillReward
	-- table.insert(tMonsterDrop_AreaLoad,tFlowerChiefItem_KillReward)

-------激情服
	--小怪
--	local tFlowerChiefItem_KillReward_NoGift = {}
--		tFlowerChiefItem_KillReward_NoGift[1] = {}
--		tFlowerChiefItem_KillReward_NoGift[1]["ActivityTime"] = tFlowerChiefItem_Data["Now_Time"]
--		tFlowerChiefItem_KillReward_NoGift[1]["Function"] = FlowerChiefItem_KillReward
--		tFlowerChiefItem_KillReward_NoGift[1]["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
--		4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
--		table.insert(tMonsterDrop_AreaLoad_NoGift,tFlowerChiefItem_KillReward_NoGift[1])
--		
--		--精英怪
--		tFlowerChiefItem_KillReward_NoGift[2] = {}
--		tFlowerChiefItem_KillReward_NoGift[2]["ActivityTime"] = tFlowerChiefItem_Data["Now_Time"]
--		tFlowerChiefItem_KillReward_NoGift[2]["Function"] = FlowerChiefItem_KillReward
--		tFlowerChiefItem_KillReward_NoGift[2]["MonsterId"] = {4880,4881,4883,4884,4885,4886,4887,4888,4889,4890,4891,4892,4893,4894,4895,4896,4897}
--		table.insert(tMonsterDrop_AreaLoad_NoGift,tFlowerChiefItem_KillReward_NoGift[2])
--		
--		--boss
--		tFlowerChiefItem_KillReward_NoGift[3] = {}
--		tFlowerChiefItem_KillReward_NoGift[3]["ActivityTime"] = tFlowerChiefItem_Data["Now_Time"]
--		tFlowerChiefItem_KillReward_NoGift[3]["Function"] = FlowerChiefItem_KillReward
--		tFlowerChiefItem_KillReward_NoGift[3]["MonsterId"] = {4898,4899,4900,4901,4902,4903,4904,4905,4906,4907,4908,4909,4910}
--		table.insert(tMonsterDrop_AreaLoad_NoGift,tFlowerChiefItem_KillReward_NoGift[3])
--		
--		--马贼
--		tFlowerChiefItem_KillReward_NoGift[4] = {}
--		tFlowerChiefItem_KillReward_NoGift[4]["ActivityTime"] = tFlowerChiefItem_Data["Now_Time"]
--		tFlowerChiefItem_KillReward_NoGift[4]["Function"] = FlowerChiefItem_KillReward
--		tFlowerChiefItem_KillReward_NoGift[4]["MonsterId"] = {4882}
--		table.insert(tMonsterDrop_AreaLoad_NoGift,tFlowerChiefItem_KillReward_NoGift[4])
--		
--		--梦灵兽、青龙幻影、青龙神兽
--		tFlowerChiefItem_KillReward_NoGift[5] = {}
--		tFlowerChiefItem_KillReward_NoGift[5]["ActivityTime"] = tFlowerChiefItem_Data["Now_Time"]
--		tFlowerChiefItem_KillReward_NoGift[5]["Function"] = FlowerChiefItem_KillReward
--		tFlowerChiefItem_KillReward_NoGift[5]["MonsterId"] = {3504,3505,3506}
--		table.insert(tMonsterDrop_AreaLoad_NoGift,tFlowerChiefItem_KillReward_NoGift[5])
	
--时间函数触发
--00 00
tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
table.insert(tOntimerMin_HM[0000],FlowerChiefItem_SetGlobal)
