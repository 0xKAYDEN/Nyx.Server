------------------------------------------------------------------------------------
--Name：            191202[英文征服][活动脚本]新年活跃福利活动（1.2-1.31）
--Creator:      冯子鑫
--Created:     2019/12/02
------------------------------------------------------------------------------------
--任务需求：
-- #活动1 个人每日活跃，收集碎片得奖
-- #活动2 个人累计收集碎片得奖
-- #活动3 单服合力收集碎片得奖
-- #活动4 新年祝福送礼：新年礼物，免费和付费版


--前缀 SpringActiveWelfare_
-- logid: 12001768

-- 41651 = V100\ActiveScript\[Conquer][ActiveScript]SpringActiveWelfare.lua
-- 41651 = V100\活动脚本\[征服][活动脚本]新年活跃福利活动（1.2-1.31）.lua

--掩码：
--stc（210,91）记录每日杀怪获得碎片
--stc（210,92）记录每日是否领取个人奖励
--stc（210,93）记录每日签到礼包获得碎片
--stc（211,13）记录玩家上交碎片总数
--stc（211,14）记录玩家领取个人阶段奖励
--stc（211,15）记录玩家领取单服阶段奖励
--stc（211,16）记录每日领取新年福袋
--stc（211,20）记录背包信

-- 全局动态表说明：
-- GlobalId：【53999】
-- 53999 data0：记录全服合力收集碎片数量
-- 53999 data1：【ChristmasGarment包】的全服购买限制次数，单服每日限购20次
-- 53999 data2：【ChristmasSuit包】的全服购买限制次数，单服每日限购20次
-- 53999 data3：【MysteryFoxEar包】的全服购买限制次数，单服每日限购20次
-- 53999 data4：【MagicFate包】的全服购买限制次数，单服每日限购20次
-- 53999 data5：【MadnightofFear包】的全服购买限制次数，单服每日限购20次

-- 全局动态表说明：
-- GlobalId：【54000】
-- 54000 data0：标记全服物品购买限制的清理状态，0表示未清理，1表示已清理
-- 54000 data1：【BrightPurpleRomance包】的全服购买限制次数，单服每日限购5次
-- 54000 data2：【99郁金香】的全服购买限制次数，单服每日限购5次
-- 54000 data3：【999郁金香】的全服购买限制次数，单服每日限购20次
-- 54000 data4：【99兰花/玫瑰/百合】的全服购买限制次数，单服每日限购20次
-- 54000 data5：【999兰花/玫瑰/百合】的全服购买限制次数，单服每日限购20次

--log说明
--1000 1330   100CPsBag（B）3327245 100赠点
--1000 1331   100CPsBag（B）升级 3327245 500赠点



----------------------------------表配置部分--------------------------------------------
local tSpringActiveWelfare_Stc = {}	
	tSpringActiveWelfare_Stc["Kill"] = {}
	tSpringActiveWelfare_Stc["Kill"]["EventType"] = 210
	tSpringActiveWelfare_Stc["Kill"]["TypeData"] = 91
	tSpringActiveWelfare_Stc["Kill"]["Limit"] = {}
	tSpringActiveWelfare_Stc["Kill"]["Limit"][1] = 90
	tSpringActiveWelfare_Stc["Kill"]["Limit"][2] = 180--周末双倍
	tSpringActiveWelfare_Stc["Kill"]["Save"] = 1

	tSpringActiveWelfare_Stc["Reward"] = {}
	tSpringActiveWelfare_Stc["Reward"]["EventType"] = 210
	tSpringActiveWelfare_Stc["Reward"]["TypeData"] = 92
	tSpringActiveWelfare_Stc["Reward"]["Limit"] = {}
	tSpringActiveWelfare_Stc["Reward"]["Limit"][1] = 1
	tSpringActiveWelfare_Stc["Reward"]["Limit"][2] = 2--周末双倍
	
	tSpringActiveWelfare_Stc["Sign"] = {}
	tSpringActiveWelfare_Stc["Sign"]["EventType"] = 210
	tSpringActiveWelfare_Stc["Sign"]["TypeData"] = 93
	
	tSpringActiveWelfare_Stc["CollectNum"] = {}
	tSpringActiveWelfare_Stc["CollectNum"]["EventType"] = 211
	tSpringActiveWelfare_Stc["CollectNum"]["TypeData"] = 13
	
	tSpringActiveWelfare_Stc["PersonalPhaseReward"] = {}
	tSpringActiveWelfare_Stc["PersonalPhaseReward"]["EventType"] = 211
	tSpringActiveWelfare_Stc["PersonalPhaseReward"]["TypeData"] = 14
	
	tSpringActiveWelfare_Stc["GroupPhaseReward"] = {}
	tSpringActiveWelfare_Stc["GroupPhaseReward"]["EventType"] = 211
	tSpringActiveWelfare_Stc["GroupPhaseReward"]["TypeData"] = 15
	
	tSpringActiveWelfare_Stc["LuckyBag"] = {}
	tSpringActiveWelfare_Stc["LuckyBag"]["EventType"] = 211
	tSpringActiveWelfare_Stc["LuckyBag"]["TypeData"] = 16
	
	
local tSpringActiveWelfare_Global = {}	
	tSpringActiveWelfare_Global[1] = 53999
	tSpringActiveWelfare_Global[2] = 54000
	
local tSpringActiveWelfare_Limit = {}	
	-- 每日礼包限购
	tSpringActiveWelfare_Limit[1] = {}
	tSpringActiveWelfare_Limit[1]["GlobalId"] = 53999
	tSpringActiveWelfare_Limit[1]["Pos"] = 1
	tSpringActiveWelfare_Limit[1]["Limit"] = 20
	tSpringActiveWelfare_Limit[1]["Gender"] = 0--性别区分 1为有区分 0为无区分
	tSpringActiveWelfare_Limit[1]["NeedEMoney"] = 999
	tSpringActiveWelfare_Limit[2] = {}
	tSpringActiveWelfare_Limit[2]["GlobalId"] = 53999
	tSpringActiveWelfare_Limit[2]["Pos"] = 2
	tSpringActiveWelfare_Limit[2]["Limit"] = 20
	tSpringActiveWelfare_Limit[2]["Gender"] = 0
	tSpringActiveWelfare_Limit[2]["NeedEMoney"] = 999
	tSpringActiveWelfare_Limit[3] = {}
	tSpringActiveWelfare_Limit[3]["GlobalId"] = 53999
	tSpringActiveWelfare_Limit[3]["Pos"] = 3
	tSpringActiveWelfare_Limit[3]["Limit"] = 20
	tSpringActiveWelfare_Limit[3]["Gender"] = 1
	tSpringActiveWelfare_Limit[3]["NeedEMoney"] = 270
	tSpringActiveWelfare_Limit[4] = {}
	tSpringActiveWelfare_Limit[4]["GlobalId"] = 53999
	tSpringActiveWelfare_Limit[4]["Pos"] = 4
	tSpringActiveWelfare_Limit[4]["Limit"] = 20
	tSpringActiveWelfare_Limit[4]["Gender"] = 1
	tSpringActiveWelfare_Limit[4]["NeedEMoney"] = 270
	tSpringActiveWelfare_Limit[5] = {}
	tSpringActiveWelfare_Limit[5]["GlobalId"] = 53999
	tSpringActiveWelfare_Limit[5]["Pos"] = 5
	tSpringActiveWelfare_Limit[5]["Limit"] = 5
	tSpringActiveWelfare_Limit[5]["Gender"] = 0
	tSpringActiveWelfare_Limit[5]["NeedEMoney"] = 270
	tSpringActiveWelfare_Limit[6] = {}
	tSpringActiveWelfare_Limit[6]["GlobalId"] = 54000
	tSpringActiveWelfare_Limit[6]["Pos"] = 1
	tSpringActiveWelfare_Limit[6]["Limit"] = 5
	tSpringActiveWelfare_Limit[6]["Gender"] = 0
	tSpringActiveWelfare_Limit[6]["NeedEMoney"] = 270
	tSpringActiveWelfare_Limit[7] = {}
	tSpringActiveWelfare_Limit[7]["GlobalId"] = 54000
	tSpringActiveWelfare_Limit[7]["Pos"] = 2
	tSpringActiveWelfare_Limit[7]["Limit"] = 20
	tSpringActiveWelfare_Limit[7]["Gender"] = 0
	tSpringActiveWelfare_Limit[7]["NeedEMoney"] = 79
	tSpringActiveWelfare_Limit[8] = {}
	tSpringActiveWelfare_Limit[8]["GlobalId"] = 54000
	tSpringActiveWelfare_Limit[8]["Pos"] = 3
	tSpringActiveWelfare_Limit[8]["Limit"] = 20
	tSpringActiveWelfare_Limit[8]["Gender"] = 0
	tSpringActiveWelfare_Limit[8]["NeedEMoney"] = 799
	tSpringActiveWelfare_Limit[9] = {}
	tSpringActiveWelfare_Limit[9]["GlobalId"] = 54000
	tSpringActiveWelfare_Limit[9]["Pos"] = 4
	tSpringActiveWelfare_Limit[9]["Limit"] = 20
	tSpringActiveWelfare_Limit[9]["Gender"] = 0
	tSpringActiveWelfare_Limit[9]["NeedEMoney"] = 39
	tSpringActiveWelfare_Limit[10] = {}
	tSpringActiveWelfare_Limit[10]["GlobalId"] = 54000
	tSpringActiveWelfare_Limit[10]["Pos"] = 5
	tSpringActiveWelfare_Limit[10]["Limit"] = 20
	tSpringActiveWelfare_Limit[10]["Gender"] = 0
	tSpringActiveWelfare_Limit[10]["NeedEMoney"] = 399

local tSpringActiveWelfare_Cont = {}	
	-- 等级限制
	tSpringActiveWelfare_Cont["Level"] = 80
	tSpringActiveWelfare_Cont["Metempsychosis"] = 1
	
	-- 双倍奖励日期
	tSpringActiveWelfare_Cont["Weekend"] = {}
	tSpringActiveWelfare_Cont["Weekend"][1] = "6 00:00 6 23:59"
	tSpringActiveWelfare_Cont["Weekend"][2] = "0 00:00 0 23:59"
	
	-- 杀怪获得奖励数量，周一至周五为1，周末为2
	tSpringActiveWelfare_Cont["KillReward"] = {}
	tSpringActiveWelfare_Cont["KillReward"][1] = 1
	tSpringActiveWelfare_Cont["KillReward"][2] = 2
	
	-- 杀怪掉落碎片概率1/1000
	tSpringActiveWelfare_Cont["Drop"] = {}
	tSpringActiveWelfare_Cont["Drop"]["StartNum"] = {}
	tSpringActiveWelfare_Cont["Drop"]["StartNum"][1] = 10
	tSpringActiveWelfare_Cont["Drop"]["StartNum"][2] = 1
	-- tSpringActiveWelfare_Cont["Drop"]["StartNum"] = 500--测试用
	tSpringActiveWelfare_Cont["Drop"]["EndNum"] = 1000
	
	-- 每次上交碎片数量
	tSpringActiveWelfare_Cont["HandDebris"] = {}
	tSpringActiveWelfare_Cont["HandDebris"]["DebrisId"] = 3327250
	tSpringActiveWelfare_Cont["HandDebris"]["DebrisNum"] = 100
	tSpringActiveWelfare_Cont["HandDebris"]["Log"] = "0,0,3327250,%d,12001768,2,0,0"
	

	-- 个人奖励各个阶段需求
	tSpringActiveWelfare_Cont["PersonalPhaseReward"] = {}
	tSpringActiveWelfare_Cont["PersonalPhaseReward"][1] = 300
	tSpringActiveWelfare_Cont["PersonalPhaseReward"][2] = 1000
	tSpringActiveWelfare_Cont["PersonalPhaseReward"][3] = 1500
	tSpringActiveWelfare_Cont["PersonalPhaseReward"][4] = 2000
	tSpringActiveWelfare_Cont["PersonalPhaseReward"][5] = 3000
	tSpringActiveWelfare_Cont["PersonalPhaseReward"][6] = 3800
	
	-- 单服奖励各个阶段需求
	tSpringActiveWelfare_Cont["GroupPhaseReward"] = {}
	tSpringActiveWelfare_Cont["GroupPhaseReward"][1] = 600000
	tSpringActiveWelfare_Cont["GroupPhaseReward"][2] = 1500000
	tSpringActiveWelfare_Cont["GroupPhaseReward"][3] = 2400000
	tSpringActiveWelfare_Cont["GroupPhaseReward"][4] = 3300000
	tSpringActiveWelfare_Cont["GroupPhaseReward"][5] = 4500000
	
	--物品打开或升级所需天石数
	tSpringActiveWelfare_Cont["NeedEMoney"] = {}
	tSpringActiveWelfare_Cont["NeedEMoney"][3327244] = 799
	tSpringActiveWelfare_Cont["NeedEMoney"][3327245] = 9
	tSpringActiveWelfare_Cont["NeedEMoney"][3327246] = 2999
	tSpringActiveWelfare_Cont["NeedEMoney"][3327247] = 59
	tSpringActiveWelfare_Cont["NeedEMoney"][3327248] = 59
	
	--星光碎片寻路
	tSpringActiveWelfare_Cont["FindWay"] = 25690
	
	--发时效发型
	tSpringActiveWelfare_Cont["Hair"] = {}
	tSpringActiveWelfare_Cont["Hair"][3] = 36
	tSpringActiveWelfare_Cont["Hair"][4] = 38
	tSpringActiveWelfare_Cont["Hair"]["Effect"] = "angelwing"

	
	
local tSpringActiveWelfare_Log = {}
	tSpringActiveWelfare_Log[3327244] = "1000	1332	%d	%d	1	"
	tSpringActiveWelfare_Log[3327245] = "1000	1333	%d	%d	1	"
	tSpringActiveWelfare_Log[3327246] = "1000	1334	%d	%d	1	"
	tSpringActiveWelfare_Log[3327247] = "1000	1335	%d	%d	1	"
	tSpringActiveWelfare_Log[3327248] = "1000	1336	%d	%d	1	"
	tSpringActiveWelfare_Log[3327250] = "0,0,3327250,%d,12001768,2,0,0"
	tSpringActiveWelfare_Log["Shop"] = {}
	tSpringActiveWelfare_Log["Shop"][1] = "1000	1337	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][2] = "1000	1338	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][3] = "1000	1339	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][4] = "1000	1340	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][5] = "1000	1341	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][6] = "1000	1342	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][7] = "1000	1343	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][8] = "1000	1344	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][9] = "1000	1345	%d	%d	1	"
	tSpringActiveWelfare_Log["Shop"][10] = "1000	1346	%d	%d	1	"
	
	
local tSpringActiveWelfare_Data = {}
	-- ===每日个人奖励普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["DayReward"][1]
	tSpringActiveWelfare_Data["Reward"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1]["ItemChanceSum"] = 10000
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1]["LogId"] = 12001768
	-- 2天时效PokerMaster - 20%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["ItemChance"] = 2000
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RewardItem"][1]["Id"] = 195215 -- PokerMaster[195215][属性:0][叠加:0][金币:0], 【表格】2天时效PokerMaster
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的PokerMaster（赠）*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 2天时效DancingDress - 20%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["ItemChance"] = 2000
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RewardItem"][1]["Id"] = 188285 -- DancingDress[188285][属性:0][叠加:0][金币:0], 【表格】2天时效DancingDress
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)的DancingDress（赠）*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 2天时效FairyGarment - 20%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["ItemChance"] = 2000
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RewardItem"][1]["Id"] = 192300 -- FairyGarment[192300][属性:0][叠加:0][金币:0], 【表格】2天时效FairyGarment
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RewardItem"][1]["Attr"] = "0 1 3 2880 1" -- 2天时效(激活)FairyGarment（赠）*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天道酬勤卷轴*1EndeavorScroll - 15%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RewardItem"][1]["Id"] = 3001407 -- EndeavorScroll[3001407][属性:0][叠加:0][金币:0], 【表格】天道酬勤卷轴*1EndeavorScroll
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 1天时效(激活)的EndeavorScroll（赠）*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 正气浩然卷轴*1JusticeScroll  - 15%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RewardItem"][1]["Id"] = 3002431 -- JusticeScroll[3002431][属性:9][叠加:10000][金币:0], 【表格】正气浩然卷轴*1JusticeScroll 
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 1天时效(激活)的JusticeScroll*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 强效护心丹*1SuperProtectionPill - 9%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["ItemChance"] = 900
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹*1SuperProtectionPill
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RewardItem"][1]["Attr"] = "0 1" -- SuperProtectionPill*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 10W锦标赛门票100KTournamentTicket - 1%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["ItemChance"] = 100
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RewardItem"][1]["Id"] = 3312416 -- 100KTournamentTicket[3312416][属性:9][叠加:10000][金币:0], 【表格】10W锦标赛门票100KTournamentTicket
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 100KTournamentTicket*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["DayReward"][2] = {}
	-- ===每日个人奖励绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["DayReward"][2]
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2]["ItemChanceSum"] = 10000
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2]["LogId"] = 12001768
	-- 气力值100包*1100ChiPointsPack - 15%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RewardItem"][1]["Id"] = 3004579 -- 100ChiPointsPack[3004579][属性:11][叠加:10][金币:0], 【表格】气力值100包*1100ChiPointsPack
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 100ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*1 - 25%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["ItemChance"] = 2500
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的TwilightStarStone*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 天道酬勤卷轴*1EndeavorScroll - 17%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["ItemChance"] = 1700
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RewardItem"][1]["Id"] = 3001407 -- EndeavorScroll[3001407][属性:0][叠加:0][金币:0], 【表格】天道酬勤卷轴*1EndeavorScroll
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 1天时效(激活)的EndeavorScroll（赠）*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 正气浩然卷轴*1JusticeScroll  - 15%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RewardItem"][1]["Id"] = 3002431 -- JusticeScroll[3002431][属性:9][叠加:10000][金币:0], 【表格】正气浩然卷轴*1JusticeScroll 
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 1天时效(激活)的JusticeScroll*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 强效护心丹*1SuperProtectionPill - 15%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹*1SuperProtectionPill
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RewardItem"][1]["Attr"] = "0 1" -- SuperProtectionPill*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石*1 - 3%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["ItemChance"] = 300
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤炼石*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RewardItem"][1]["Attr"] = "0 1" -- +1Stone*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 免费强炼丹*1 FavoredTrainingPill - 10%
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["ItemChance"] = 1000
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹*1 FavoredTrainingPill
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- FavoredTrainingPill（赠）*1
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayReward"][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"] = {}
	-- ===个人阶段奖励300普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardItem"][1]["Id"] = 3004579 -- 100ChiPointsPack[3004579][属性:11][叠加:10][金币:0], 【表格】气力值100包*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 100ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardItem"][2]["Id"] = 3309117 -- +1Stone(B)*1Pack[3309117][属性:9][叠加:1][金币:0], 【表格】赤练石+1*1 +1Stone（B）*1Pack
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardItem"][2]["Attr"] = "0 1" -- +1Stone(B)*1Pack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2] = {}
	-- ===个人阶段奖励1000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][2]["Id"] = 3004579 -- 100ChiPointsPack[3004579][属性:11][叠加:10][金币:0], 【表格】气力值100包*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][2]["Attr"] = "0 2" -- 100ChiPointsPack*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][3]["Id"] = 3312416 -- 100KTournamentTicket[3312416][属性:9][叠加:10000][金币:0], 【表格】德州10w锦标赛门票
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardItem"][3]["Attr"] = "0 1" -- 100KTournamentTicket*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3] = {}
	-- ===个人阶段奖励1500普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][1]["Id"] = 3327244 -- 30-dayClassicWeaponPack礼盒[3327244][属性:9][叠加:0][金币:0], 【表格】付费版怀旧武器外套礼包
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 30-dayClassicWeaponPack礼盒*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*1GinsengFruit
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][2]["Attr"] = "0 1" -- GinsengFruit*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][3]["Id"] = 3309118 -- +1Stone(B)*2Pack[3309118][属性:9][叠加:1][金币:0], 【表格】赤练石+1*2+1Stone（B）*2Pack
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardItem"][3]["Attr"] = "0 1" -- +1Stone(B)*2Pack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4] = {}
	-- ===个人阶段奖励2000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone*2[3300796][属性:9][叠加:100][金币:0], 【表格】明亮星陨石*2BrightStarStone*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardItem"][2]["Id"] = 3322925 -- +2StonePack(B)[3322925][属性:9][叠加:0][金币:0], 【表格】赤练石+2*1+2StonePack（B）
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardItem"][2]["Attr"] = "0 1" -- +2StonePack(B)*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5] = {}
	-- ===个人阶段奖励3000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][1]["Id"] = 3301807 -- +3Stone(B)Pack[3301807][属性:9][叠加:0][金币:0], 【表格】赤练石+3*1+3Stone（B）Pack
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][1]["Attr"] = "0 1" -- +3Stone(B)Pack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][2]["Id"] = 3309001 -- YellowRuneEssence(B)*10[3309001][属性:9][叠加:1][金币:0], 【表格】黄色神纹精粹*10YellowRuneEssence（B）*10
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][2]["Attr"] = "0 1" -- YellowRuneEssence(B)*10*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][3]["Id"] = 3009001 -- BrightStarStone*2[3300796][属性:9][叠加:100][金币:0], 【表格】明亮星陨石*2BrightStarStone*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6] = {}
	-- ===个人阶段奖励3800普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][1]["Id"] = 3308803 -- UniversalRuneEssence(B)*10Pack[3308803][属性:9][叠加:0][金币:0], 【表格】万能神纹精*10UniversalRuneEssence（B）*10Pack
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][1]["Attr"] = "0 1" -- UniversalRuneEssence(B)*10Pack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][2]["Id"] = 3327245 -- 100CPsBag（B）[3327245][属性:9][叠加:0][金币:0], 【表格】100赠点包100CPsBag（B） ,可花9天石将其升级为500赠点包
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][2]["Attr"] = "0 1" -- 100CPsBag（B）*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][3]["Id"] = 3301810 -- 1000ChiPointsPack[3301810][属性:9][叠加:0][金币:0], 【表格】1000气力值包1000ChiPointsPack
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][3]["Attr"] = "0 1" -- 1000ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][4] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][4]["Id"] = 3327246 -- 100-dayArmorPack礼盒[3327246][属性:9][叠加:0][金币:0], 【表格】付费版人物坐骑外套百日卡花2999非赠天石激活,不付钱不能用
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardItem"][4]["Attr"] = "0 1" -- 100-dayArmorPack礼盒*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2] = {}
	-- ===个人阶段奖励300绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][1]["Id"] = 3004579 -- 100ChiPointsPack[3004579][属性:11][叠加:10][金币:0], 【表格】气力值100包*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][1]["Attr"] = "0 2" -- 100ChiPointsPack*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][2]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1非赠
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][2]["Attr"] = "0 1" -- +1Stone*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][3]["Id"] = 3303399 -- FavoredTrainingPill(B)*10[3303399][属性:9][叠加:10000][金币:0], 【表格】免费强炼丹*10FavoredTrainingPill（B）*10
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardItem"][3]["Attr"] = "0 1" -- FavoredTrainingPill(B)*10*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2] = {}
	-- ===个人阶段奖励1000绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1非赠
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][1]["Attr"] = "0 1" -- +1Stone*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][2]["Attr"] = "0 1" -- GinsengFruit*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][3]["Id"] = 3004579 -- 100ChiPointsPack[3004579][属性:11][叠加:10][金币:0], 【表格】气力值100包*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardItem"][3]["Attr"] = "0 2" -- 100ChiPointsPack*2
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3] = {}
	-- ===个人阶段奖励1500绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][1]["Id"] = 3327244 -- 30-dayClassicWeaponPack礼盒[3327244][属性:9][叠加:0][金币:0], 【表格】付费版怀旧武器外套礼包
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 30-dayClassicWeaponPack礼盒*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][2]["Id"] = 3304569 -- 4TwilightStarStonesBox[3304569][属性:11][叠加:0][金币:0], 【表格】微光星陨石*4
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的4TwilightStarStonesBox*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*10非赠
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardItem"][3]["Attr"] = "0 10" -- YellowRuneEssence*10
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4] = {}
	-- ===个人阶段奖励2000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardItem"][1]["Id"] = 3303399 -- FavoredTrainingPill(B)*10[3303399][属性:9][叠加:10000][金币:0], 【表格】免费强炼丹*10
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardItem"][1]["Attr"] = "0 1" -- FavoredTrainingPill(B)*10*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardItem"][2]["Attr"] = "0 1" -- DragonFruit*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5] = {}
	-- ===个人阶段奖励3000绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardItem"][1]["Id"] = 3327249 -- 1000骑马积分包[3327249][属性:9][叠加:0][金币:0], 【表格】1000骑马积分包*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 1000骑马积分包*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardItem"][2]["Attr"] = "0 1" -- +2Stone*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6] = {}
	-- ===个人阶段奖励3800绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][1]["Attr"] = "0 1" -- +3Stone*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone*3[3300797][属性:9][叠加:100][金币:0], 【表格】明亮星陨石*3
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][3]["Id"] = 3309979 -- UniversalRuneEssence(B)x20Pack[3309979][属性:9][叠加:0][金币:0], 【表格】万能神纹精粹*20
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][3]["Attr"] = "0 1" -- UniversalRuneEssence(B)x20Pack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][4] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][4]["Id"] = 3327246 -- 100-dayArmorPack礼盒[3327246][属性:9][叠加:0][金币:0], 【表格】付费版人物坐骑外套百日卡花2999非赠天石激活,不付钱不能用
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][4]["Attr"] = "0 1" -- 100-dayArmorPack礼盒*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][5] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][5]["Id"] = 3301810 -- 1000ChiPointsPack[3301810][属性:9][叠加:0][金币:0], 【表格】1000气力值包
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardItem"][5]["Attr"] = "0 1" -- 1000ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][2][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"] = {}
	-- ===单服阶段奖励600000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][1]["Id"] = 730001 -- +1Stone[730001][属性:0][叠加:0][金币:0], 【表格】赤练石+1*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +1Stone（赠）*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][2]["Id"] = 3004579 -- 100ChiPointsPack[3004579][属性:11][叠加:10][金币:0], 【表格】气力值100包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][3]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2] = {}
	-- ===单服阶段奖励1500000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][1]["Id"] = 3313534 -- 100PotencyPointsPack[3313534][属性:9][叠加:1][金币:0], 【表格】PotencyPoints*100包
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 100PotencyPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][2]["Id"] = 3327247 -- 15天时效ChristmasHarmony礼盒[3327247][属性:9][叠加:0][金币:0], 【表格】免费15天时效3星外套ChristmasMelody,付59天石可升级15天时效5星ChristmasHarmony,第一次打开选择
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][2]["Attr"] = "0 1" -- 15天时效ChristmasHarmony礼盒*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][3]["Id"] = 3301818 -- MeteorScrollPack[3301818][属性:11][叠加:0][金币:0], 【表格】流星卷*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardItem"][3]["Attr"] = "0 1" -- MeteorScrollPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3] = {}
	-- ===单服阶段奖励2400000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][1]["Id"] = 3304569 -- 4TwilightStarStonesBox[3304569][属性:11][叠加:0][金币:0], 【表格】微光星陨石*4
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的4TwilightStarStonesBox*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][2]["Id"] = 3003313 -- 200ChiPointsPack[3003313][属性:9][叠加:0][金币:0], 【表格】气力值200包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][2]["Attr"] = "0 1" -- 200ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][3]["Id"] = 3313573 -- 2+2Stone(B)Pack[3313573][属性:0][叠加:0][金币:0], 【表格】赤练石+2*2
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardItem"][3]["Attr"] = "0 1" -- 2+2Stone(B)Pack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4] = {}
	-- ===单服阶段奖励3300000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][1]["Id"] = 3319318 -- RuneCrystalPack[3319318][属性:9][叠加:10000][金币:0], 【表格】赠神纹源晶*2
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][1]["Attr"] = "0 1" -- RuneCrystalPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][2]["Id"] = 3327249 -- 1000骑马积分包[3327249][属性:9][叠加:0][金币:0], 【表格】1000骑马积分包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][2]["Attr"] = "0 1" -- 1000骑马积分包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence(B)*20[3309001][属性:9][叠加:1][金币:0][叠加:0][金币:0], 【表格】黄色神纹精粹*20
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardItem"][3]["Attr"] = "0 20 3" -- YellowRuneEssence(B)*20
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5] = {}
	-- ===单服阶段奖励4500000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardItem"][1]["Id"] = 200613 -- FierceCloud[200613][属性:0][叠加:0][金币:0], 【表格】10天时效5星骑宠外套FierceCloud*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardItem"][1]["Attr"] = "0 1 3 14400 1 0 0 1" -- 10天时效(激活)的1%神佑FierceCloud（赠）*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardWing"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardWing"]["TitleType"] = 6015 -- 【库】FlameGlowWings, 【表格】10天时效FlameGlowWings*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardWing"]["TitleId"] = 6015
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardWing"]["SaveTime"] = 14400 -- 10天时效的[翅膀]:FlameGlowWings, 【需求】10天时效FlameGlowWings*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*30
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardItem"][2]["Attr"] = "0 30 3" -- UniversalRuneEssence（赠）*30
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2] = {}
	-- ===单服阶段奖励1000000绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardItem"][1]["Id"] = 3321212 -- YellowRuneEssence(B)*5[3321212][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*5
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardItem"][1]["Attr"] = "0 1" -- YellowRuneEssence(B)*5*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardItem"][2]["Id"] = 3004579 -- 100ChiPointsPack[3004579][属性:11][叠加:10][金币:0], 【表格】气力值100包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardItem"][2]["Attr"] = "0 1" -- 100ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2] = {}
	-- ===单服阶段奖励3000000绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardItem"][1]["Id"] = 3327248 -- 20天时效ChristmasHarmony礼盒[3327248][属性:9][叠加:0][金币:0], 【表格】免费20天时效3星外套ChristmasMelody,付59天石升级20天时效5星ChristmasHarmony,第一次打开选
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 20天时效ChristmasHarmony礼盒*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3] = {}
	-- ===单服阶段奖励5000000绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardItem"][1]["Id"] = 3003313 -- 200ChiPointsPack[3003313][属性:9][叠加:0][金币:0], 【表格】气力值200包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardItem"][1]["Attr"] = "0 1" -- 200ChiPointsPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardItem"][2]["Attr"] = "0 1" -- +3Stone*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4] = {}
	-- ===单服阶段奖励7500000普通服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardItem"][1]["Id"] = 3327249 -- 1000骑马积分包[3327249][属性:9][叠加:0][金币:0], 【表格】1000骑马积分包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 1000骑马积分包*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardItem"][2]["Id"] = 3319318 -- RuneCrystalPack[3319318][属性:9][叠加:10000][金币:0], 【表格】赠品神纹源晶*2
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardItem"][2]["Attr"] = "0 1" -- RuneCrystalPack*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5] = {}
	-- ===单服阶段奖励15000000绿色新服
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardItem"][1]["Id"] = 200613 -- FierceCloud[200613][属性:0][叠加:0][金币:0], 【表格】30天时效5星骑宠外套FierceCloud*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑FierceCloud（赠）*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardWing"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardWing"]["TitleType"] = 6015 -- 【库】FlameGlowWings, 【表格】30天时效FlameGlowWings*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardWing"]["TitleId"] = 6015
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardWing"]["SaveTime"] = 43200 -- 30天时效的[翅膀]:FlameGlowWings, 【需求】30天时效FlameGlowWings*1
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardItem"][2] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*30
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardItem"][2]["Attr"] = "0 30 3" -- UniversalRuneEssence（赠）*30
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][2][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"] = {}
	-- ===新年商城1
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][1]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["RewardItem"][1]["Id"] = 184315 -- ChristmasGarment[184315][属性:0][叠加:0][金币:100], 【表格】ChristmasGarment包
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ChristmasGarment（赠）*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"][2] = {}
	-- ===新年商城2
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][2]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["RewardItem"][1]["Id"] = 183465 -- ChristmasSuit[183465][属性:0][叠加:0][金币:0], 【表格】ChristmasSuit包
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ChristmasSuit（赠）*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"][3] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1] = {}
	-- ===新年商城3
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["RewardItem"][1]["Id"] = 3310763 -- MysteryFoxEar(Male)[3310763][属性:9][叠加:0][金币:0], 【表格】MysteryFoxEar（Male）
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的MysteryFoxEar(Male)*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][1]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===新年商城3
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["RewardItem"][1]["Id"] = 3310762 -- MysteryFoxEar(Female)[3310762][属性:9][叠加:0][金币:0], 【表格】MysteryFoxEar（Female）
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的MysteryFoxEar(Female)*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][3][2]["RewardEffect"]["Effect"] = "angelwing"


	


	tSpringActiveWelfare_Data["Reward"]["Shop"][4] = {}
	
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1] = {}
	-- ===新年商城4
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["RewardItem"][1]["Id"] = 3302203 -- MagicFate(Male)[3302203][属性:9][叠加:1][金币:0], 【表格】MagicFate（Male）
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的MagicFate(Male)*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][1]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===新年商城4
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["RewardItem"][1]["Id"] = 3302202 -- MagicFate(Female)[3302202][属性:9][叠加:1][金币:0], 【表格】MagicFate（Female） 
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["RewardItem"][1]["Attr"] = "0 1 0 21600 1" -- 15天时效(激活)的MagicFate(Female)*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][4][2]["RewardEffect"]["Effect"] = "angelwing"


	


	tSpringActiveWelfare_Data["Reward"]["Shop"][5] = {}
	-- ===新年商城5
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][5]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["RewardItem"][1]["Id"] = 191095 -- MadnightofFear[191095][属性:0][叠加:0][金币:0], 【表格】MadnightofFear包
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的MadnightofFear（赠）*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][5]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"][6] = {}
	-- ===新年商城6
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][6]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["RewardItem"][1]["Id"] = 194875 -- BrightPurpleRomance[194875][属性:8][叠加:0][金币:0], 【表格】BrightPurpleRomance包
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的BrightPurpleRomance（赠）*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"][7] = {}
	-- ===新年商城7
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][7]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["RewardItem"][1]["Id"] = 754099 -- 99Tulips[754099][属性:8][叠加:0][金币:0], 【表格】99郁金香
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["RewardItem"][1]["Attr"] = "0 1" -- 99Tulips*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][7]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"][8] = {}
	-- ===新年商城8
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][8]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["RewardItem"][1]["Id"] = 754999 -- 999Tulips[754999][属性:8][叠加:0][金币:0], 【表格】999郁金香 
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["RewardItem"][1]["Attr"] = "0 1" -- 999Tulips*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][8]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"][9] = {}
	-- ===新年商城9
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][9]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["RewardItem"][1]["Id"] = 3304418 -- 99FlowersBox[3304418][属性:8][叠加:0][金币:0], 【表格】99兰花/玫瑰/百合  
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["RewardItem"][1]["Attr"] = "0 1" -- 99FlowersBox*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][9]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["Shop"][10] = {}
	-- ===新年商城10
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["Shop"][10]
	-- ===
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["RewardItem"][1]["Id"] = 3304419 -- 999FlowersBox[3304419][属性:8][叠加:0][金币:0], 【表格】999兰花/玫瑰/百合  
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["RewardItem"][1]["Attr"] = "0 1" -- 999FlowersBox*1
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["Shop"][10]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327244] = {}
	-- ===30-dayClassicWeaponPack礼盒
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327244]
	-- ===删除: 3327244,1
	tSpringActiveWelfare_Data["Reward"][3327244]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327244]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327244]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327244]["DeleteItem"][1]["Id"] = 3327244 -- 【库】30-dayClassicWeaponPack礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327244]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327244]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327244]["RewardItem"][1]["Id"] = 3309661 -- 30-dayClassicWeaponPack[3309661][属性:9][叠加:10000][金币:0], 【表格】花费799天石方可打开礼盒,打开可得1个30-dayClassicWeaponPack。
	tSpringActiveWelfare_Data["Reward"][3327244]["RewardItem"][1]["Attr"] = "0 1" -- 30-dayClassicWeaponPack*1
	tSpringActiveWelfare_Data["Reward"][3327244]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327244]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327244]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327245] = {}
	-- ===100CPsBag（B）
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327245][1]
	-- ===删除: 3327245,1
	-- ===NewEMoneyLog: 1000,1331
	tSpringActiveWelfare_Data["Reward"][3327245][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327245][1]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][1]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][1]["DeleteItem"][1]["Id"] = 3327245 -- 【库】100CPsBag（B）[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327245][1]["RewardEMoneyMono"] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][1]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】打开可得100天石（赠）,可花费9天石打开获得500天石（赠）。
	tSpringActiveWelfare_Data["Reward"][3327245][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1331"
	tSpringActiveWelfare_Data["Reward"][3327245][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327245][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327245][2] = {}
	-- ===100CPsBag（B）升级
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327245][2]
	-- ===删除: 3327245,1
	-- ===NewEMoneyLog: 1000,1331
	tSpringActiveWelfare_Data["Reward"][3327245][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327245][2]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][2]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][2]["DeleteItem"][1]["Id"] = 3327245 -- 【库】100CPsBag（B）[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327245][2]["RewardEMoneyMono"] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][2]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】打开可得100天石（赠）,可花费9天石打开获得500天石（赠）。
	tSpringActiveWelfare_Data["Reward"][3327245][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1331"
	tSpringActiveWelfare_Data["Reward"][3327245][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327245][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327245][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327246] = {}
	-- ===100-dayArmorPack礼盒
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327246]
	-- ===删除: 3327246,1
	tSpringActiveWelfare_Data["Reward"][3327246]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327246]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327246]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327246]["DeleteItem"][1]["Id"] = 3327246 -- 【库】100-dayArmorPack礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327246]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327246]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327246]["RewardItem"][1]["Id"] = 3323314 -- 100-dayArmorPack[3323314][属性:9][叠加:10000][金币:0], 【表格】花费2999天石方可方可打开礼盒,打开可得1个100-dayArmorPack。
	tSpringActiveWelfare_Data["Reward"][3327246]["RewardItem"][1]["Attr"] = "0 1" -- 100-dayArmorPack*1
	tSpringActiveWelfare_Data["Reward"][3327246]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327246]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327246]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327247] = {}
	-- ===15天时效ChristmasHarmony礼盒-未升级
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327247][1]
	-- ===删除: 3327247,1
	tSpringActiveWelfare_Data["Reward"][3327247][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327247][1]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][1]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][1]["DeleteItem"][1]["Id"] = 3327247 -- 【库】15天时效ChristmasHarmony礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327247][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][1]["RewardItem"][1]["Id"] = 195025 -- ChristmasMelody[195025][属性:8][叠加:0][金币:0], 【表格】打开可得1件15天时效ChristmasHarmony,可花费59天石将它升级成15天时效的5星ChristmasHarmony外套。
	tSpringActiveWelfare_Data["Reward"][3327247][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑ChristmasMelody（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327247][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327247][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327247][2] = {}
	-- ===15天时效ChristmasHarmony礼盒-升级
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327247][2]
	-- ===删除: 3327247,1
	tSpringActiveWelfare_Data["Reward"][3327247][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327247][2]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][2]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][2]["DeleteItem"][1]["Id"] = 3327247 -- 【库】15天时效ChristmasHarmony礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327247][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][2]["RewardItem"][1]["Id"] = 195015 -- ChristmasHarmony[195015][属性:8][叠加:0][金币:0], 【表格】打开可得1件15天时效ChristmasHarmony,可花费59天石将它升级成15天时效的5星ChristmasHarmony外套。
	tSpringActiveWelfare_Data["Reward"][3327247][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1" -- 15天时效(激活)的1%神佑ChristmasHarmony（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327247][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327247][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327247][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327248] = {}
	-- ===20天时效ChristmasHarmony礼盒-未升级
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327248][1]
	-- ===删除: 3327248,1
	tSpringActiveWelfare_Data["Reward"][3327248][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327248][1]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][1]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][1]["DeleteItem"][1]["Id"] = 3327248 -- 【库】20天时效ChristmasHarmony礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327248][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][1]["RewardItem"][1]["Id"] = 195025 -- ChristmasMelody[195025][属性:8][叠加:0][金币:0], 【表格】打开可得1件20天时效ChristmasHarmony,可花费59天石将它升级成20天时效的5星ChristmasHarmony外套。
	tSpringActiveWelfare_Data["Reward"][3327248][1]["RewardItem"][1]["Attr"] = "0 1 3 28800 1 0 0 1" -- 20天时效(激活)的1%神佑ChristmasMelody（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327248][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327248][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327248][2] = {}
	-- ===20天时效ChristmasHarmony礼盒-升级
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327248][2]
	-- ===删除: 3327248,1
	tSpringActiveWelfare_Data["Reward"][3327248][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327248][2]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][2]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][2]["DeleteItem"][1]["Id"] = 3327248 -- 【库】20天时效ChristmasHarmony礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327248][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][2]["RewardItem"][1]["Id"] = 195015 -- ChristmasHarmony[195015][属性:8][叠加:0][金币:0], 【表格】打开可得1件20天时效ChristmasHarmony,可花费59天石将它升级成20天时效的5星ChristmasHarmony外套。
	tSpringActiveWelfare_Data["Reward"][3327248][2]["RewardItem"][1]["Attr"] = "0 1 3 28800 1 0 0 1" -- 20天时效(激活)的1%神佑ChristmasHarmony（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327248][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327248][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327248][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327249] = {}
	-- ===1000骑马积分包
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327249]
	-- ===删除: 3327249,1
	tSpringActiveWelfare_Data["Reward"][3327249]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327249]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327249]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327249]["DeleteItem"][1]["Id"] = 3327249 -- 【库】1000骑马积分包[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327249]["RewardRidingPoint"] = {}
	tSpringActiveWelfare_Data["Reward"][3327249]["RewardRidingPoint"]["Value"] = 1000 -- 骑马积分, 【需求】打开礼包可获得1000点骑马大赛积分。
	tSpringActiveWelfare_Data["Reward"][3327249]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327249]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327249]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327251] = {}
	-- ===新年福袋
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327251]
	-- ===删除: 3327251,1
	tSpringActiveWelfare_Data["Reward"][3327251]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSpringActiveWelfare_Data["Reward"][3327251]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251]["DeleteItem"][1]["Id"] = 3327251 -- 【库】新年福袋[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327251]["LogId"] = 12001768
	-- 家具-新年雪人（物品是圣诞雪人,名字改新年） - 10%
	tSpringActiveWelfare_Data["Reward"][3327251][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"][3327251][1]["ItemChance"] = 1000
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RewardItem"][1]["Id"] = 726110 -- Snowman[726110][属性:0][叠加:0][金币:0], 【表格】家具-新年雪人（物品是圣诞雪人,名字改新年）
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1" -- 3天时效(激活)的Snowman（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327251][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 花卉可选礼盒 - 15%
	tSpringActiveWelfare_Data["Reward"][3327251][2] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"][3327251][2]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RewardItem"][1]["Id"] = 3327253 -- 花卉可选礼盒[3327253][属性:9][叠加:0][金币:0], 【表格】花卉可选礼盒
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RewardItem"][1]["Attr"] = "0 1" -- 花卉可选礼盒*1
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327251][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 幸福烟花*1（使用后烟花绽放效果,纯娱乐道具）HappinessFirework - 25%
	tSpringActiveWelfare_Data["Reward"][3327251][3] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"][3327251][3]["ItemChance"] = 2500
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RewardItem"][1]["Id"] = 3000025 -- HappinessFirework[3000025][属性:0][叠加:10][金币:0], 【表格】幸福烟花*1（使用后烟花绽放效果,纯娱乐道具）HappinessFirework
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RewardItem"][1]["Attr"] = "0 1 3" -- HappinessFirework（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327251][3]["RewardEffect"]["Effect"] = "angelwing"
	-- ChristmasGarment（B）Pack*1 - 15%
	tSpringActiveWelfare_Data["Reward"][3327251][4] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"][3327251][4]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RewardItem"][1]["Id"] = 3306949 -- ChristmasGarment(B)Pack[3306949][属性:9][叠加:0][金币:0], 【表格】ChristmasGarment（B）Pack*1
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RewardItem"][1]["Attr"] = "0 1" -- ChristmasGarment(B)Pack*1
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327251][4]["RewardEffect"]["Effect"] = "angelwing"
	-- ChristmasSuit（B）Pack*1 - 15%
	tSpringActiveWelfare_Data["Reward"][3327251][5] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"][3327251][5]["ItemChance"] = 1500
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RewardItem"][1]["Id"] = 3306950 -- ChristmasSuit(B)Pack[3306950][属性:9][叠加:0][金币:0], 【表格】ChristmasSuit（B）Pack*1
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RewardItem"][1]["Attr"] = "0 1" -- ChristmasSuit(B)Pack*1
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327251][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*2 - 20%
	tSpringActiveWelfare_Data["Reward"][3327251][6] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RandomItemChanceType"] = 2
	tSpringActiveWelfare_Data["Reward"][3327251][6]["ItemChance"] = 2000
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327251][6]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327253] = {}
	-- ===花卉可选礼盒1
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327253][1]
	-- ===删除: 3327253,1
	tSpringActiveWelfare_Data["Reward"][3327253][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327253][1]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][1]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][1]["DeleteItem"][1]["Id"] = 3327253 -- 【库】花卉可选礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327253][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][1]["RewardItem"][1]["Id"] = 756003 -- 3LoveLetters[756003][属性:8][叠加:0][金币:0], 【表格】打开可在3封情书、3朵兰花中任选1个获得。
	tSpringActiveWelfare_Data["Reward"][3327253][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 3LoveLetters（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327253][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327253][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327253][2] = {}
	-- ===花卉可选礼盒2
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327253][2]
	-- ===删除: 3327253,1
	tSpringActiveWelfare_Data["Reward"][3327253][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327253][2]["DeleteItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][2]["DeleteItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][2]["DeleteItem"][1]["Id"] = 3327253 -- 【库】花卉可选礼盒[属性:9]
	tSpringActiveWelfare_Data["Reward"][3327253][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][2]["RewardItem"][1]["Id"] = 753003 -- 3Orchids[753003][属性:8][叠加:0][金币:0], 【表格】打开可在3封情书、3朵兰花中任选1个获得。
	tSpringActiveWelfare_Data["Reward"][3327253][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 3Orchids（赠）*1
	tSpringActiveWelfare_Data["Reward"][3327253][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327253][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327253][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327250] = {}
	-- ===怪物掉落星光碎片1
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327250][1][1]
	tSpringActiveWelfare_Data["Reward"][3327250][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["RewardItem"][1]["Id"] = 3327250 -- 星光碎片[3327250][属性:9][叠加:10000][金币:0], 【表格】打怪获得星光点,周末双倍
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 星光碎片*1
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327250][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327250][1][2] = {}
	-- ===怪物掉落星光碎片2
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327250][1][2]
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["RewardItem"][1]["Id"] = 3327250 -- 星光碎片[3327250][属性:9][叠加:10000][金币:0], 【表格】打怪获得星光点,周末双倍
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["RewardItem"][1]["Attr"] = "0 2" -- 星光碎片*2
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327250][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327250][2] = {}
	-- ===签到礼包获得星光碎片1
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327250][2][1]
	tSpringActiveWelfare_Data["Reward"][3327250][2][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["RewardItem"][1]["Id"] = 3327250 -- 星光碎片[3327250][属性:9][叠加:10000][金币:0], 【表格】签到礼包获得星光点,周末双倍
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["RewardItem"][1]["Attr"] = "0 10" -- 星光碎片*10
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327250][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"][3327250][2][2] = {}
	-- ===签到礼包获得星光碎片2
	-- ===索引: tSpringActiveWelfare_Data["Reward"][3327250][2][2]
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["RewardItem"][1]["Id"] = 3327250 -- 星光碎片[3327250][属性:9][叠加:10000][金币:0], 【表格】签到礼包获得星光点,周末双倍
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["RewardItem"][1]["Attr"] = "0 20" -- 星光碎片*20（[错误]物品数量超10个）
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"][3327250][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tSpringActiveWelfare_Data["Reward"]["DayAward"] = {}
	-- ===每日领取新年福袋
	-- ===索引: tSpringActiveWelfare_Data["Reward"]["DayAward"]
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["LogId"] = 12001768
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["RewardItem"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["RewardItem"][1] = {}
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["RewardItem"][1]["Id"] = 3327251 -- 新年福袋[3327251][属性:9][叠加:0][金币:0], 【表格】每日领取福袋
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["RewardItem"][1]["Attr"] = "0 1" -- 新年福袋*1
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["RewardEffect"] = {}
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSpringActiveWelfare_Data["Reward"]["DayAward"]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------

--每日签到礼包
function SpringActiveWelfare_DailyPack()
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Level = tSpringActiveWelfare_Cont["Level"]
	local nSpringActiveWelfare_Metempsychosis = tSpringActiveWelfare_Cont["Metempsychosis"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	
	--判断是否为周末
	local nSpringActiveWelfare_Weekend = 1
	if Sys_ChkWeedTime(tSpringActiveWelfare_Cont["Weekend"][1]) or Sys_ChkWeedTime(tSpringActiveWelfare_Cont["Weekend"][2]) then 
		nSpringActiveWelfare_Weekend = 2
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nSpringActiveWelfare_Level,nSpringActiveWelfare_Metempsychosis,nSpringActiveWelfare_UserId) then
		return
	end
	
	
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["Sign"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["Sign"]["TypeData"]
	--隔天
	if Task_StcInterval(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,4,nSpringActiveWelfare_UserId) then
		Task_SetStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,1,nSpringActiveWelfare_UserId)
		Task_SetStcTimestamp(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,nSpringActiveWelfare_UserId)
	end
	
	-- 已领取
	if Task_ChkStcValue(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, ">", 0) then
		return
	end
	
	-- 判断背包空间
	local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"][3327250][2][nSpringActiveWelfare_Weekend])
	if not User_CheckLeftSpace(nSpringActiveWelfare_Space) then
		return
	end
	
	if Task_SetStatistic(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 1, 1) then
		Task_SetStcTimestamp(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 0)
		
		RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][3327250][2][nSpringActiveWelfare_Weekend])
		
	end	
end


--怪物掉落
function SpringActiveWelfare_KillMonster()
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Level = tSpringActiveWelfare_Cont["Level"]
	local nSpringActiveWelfare_Metempsychosis = tSpringActiveWelfare_Cont["Metempsychosis"]

	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nSpringActiveWelfare_Level,nSpringActiveWelfare_Metempsychosis,nSpringActiveWelfare_UserId) then
		return
	end
	
	--掉落限制
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["Kill"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["Kill"]["TypeData"]
	local nSpringActiveWelfare_Save = tSpringActiveWelfare_Stc["Kill"]["Save"]
	local nSpringActiveWelfare_Limit = tSpringActiveWelfare_Stc["Kill"]["Limit"][1]
	local nSpringActiveWelfare_AddNum = tSpringActiveWelfare_Cont["KillReward"][1]
	
	--判断是否为周末，周末双倍
	local nSpringActiveWelfare_Weekend = 1
	if Sys_ChkWeedTime(tSpringActiveWelfare_Cont["Weekend"][1]) or Sys_ChkWeedTime(tSpringActiveWelfare_Cont["Weekend"][2]) then 
		nSpringActiveWelfare_Limit = tSpringActiveWelfare_Stc["Kill"]["Limit"][2]
		nSpringActiveWelfare_AddNum = tSpringActiveWelfare_Cont["KillReward"][2]
		nSpringActiveWelfare_Weekend = 2
	end
	
	--隔天清零
	if Task_StcInterval(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,4,nSpringActiveWelfare_UserId) then
		Task_SetStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,1,nSpringActiveWelfare_UserId)
		Task_SetStcTimestamp(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,nSpringActiveWelfare_UserId)
	end
	
	
	local nSpringActiveWelfare_Data = Get_UserStatisticValue(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,nSpringActiveWelfare_UserId)
	
	--达到上限
	if nSpringActiveWelfare_Data > nSpringActiveWelfare_Limit then
		return
	elseif nSpringActiveWelfare_Data == nSpringActiveWelfare_Limit then
		Task_AddStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,nSpringActiveWelfare_AddNum,nSpringActiveWelfare_Save,nSpringActiveWelfare_UserId)
		Task_SetStcTimestamp(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 0)
		sSpringActiveWelfare_MsgBox = string.format(tSpringActiveWelfare_Text["SystemTips"]["DropLimit"], nSpringActiveWelfare_Limit)
		Sys_MsgBox(sSpringActiveWelfare_MsgBox)
		return
	end
	
	
	local nSpringActiveWelfare_Server = SpringActiveWelfare_GreenServer()--判断是否为绿色新服
	--概率掉落
	local nSpringActiveWelfare_StartNum = tSpringActiveWelfare_Cont["Drop"]["StartNum"][nSpringActiveWelfare_Server]
	local nSpringActiveWelfare_EndNum = tSpringActiveWelfare_Cont["Drop"]["EndNum"]
	
	if Sys_Random(nSpringActiveWelfare_StartNum,nSpringActiveWelfare_EndNum) then
	
		--空间不足
		local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"][3327250][1][nSpringActiveWelfare_Weekend])
		
		if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
			Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["DropNoSpace"])
			return
		end
	
		if Task_AddStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,nSpringActiveWelfare_AddNum,nSpringActiveWelfare_Save,nSpringActiveWelfare_UserId) then
			Task_SetStcTimestamp(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 0)
			RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][3327250][1][nSpringActiveWelfare_Weekend])
		end
	end
end

-- 清空每日限购全局表
function SpringActiveWelfare_ClearLimit()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end 
	
	local nSpringActiveWelfare_GlobalId1 = tSpringActiveWelfare_Global[1] 
	local nSpringActiveWelfare_GlobalId2 = tSpringActiveWelfare_Global[2] 
	
	--获取标记位
	if Get_SysDynaGlobalData0(nSpringActiveWelfare_GlobalId2) == 0 then
		for i = 1 , 5 do
			Sys_SetSynaGlobalData(nSpringActiveWelfare_GlobalId1,i,0)
			Sys_SetSynaGlobalData(nSpringActiveWelfare_GlobalId2,i,0)
		end 
		Sys_SetSynaGlobalData(nSpringActiveWelfare_GlobalId2,0,1)
	end
end


-- 清空标记位
function SpringActiveWelfare_ClearTag()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end 
	
	local nSpringActiveWelfare_GlobalId = tSpringActiveWelfare_Global[2] 
		Sys_SetSynaGlobalData0(nSpringActiveWelfare_GlobalId,0)
end
-- 上交碎片判断
function SpringActiveWelfare_HandDebris(nNpcId)
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Level = tSpringActiveWelfare_Cont["Level"]
	local nSpringActiveWelfare_Metempsychosis = tSpringActiveWelfare_Cont["Metempsychosis"]
	local nSpringActiveWelfare_NpcId = nNpcId
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["Reward"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["Reward"]["TypeData"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nSpringActiveWelfare_Level,nSpringActiveWelfare_Metempsychosis,nSpringActiveWelfare_UserId) then
		return
	end
	
	--隔天判断
	if Task_StcInterval(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,4,nSpringActiveWelfare_UserId) then
		Task_SetStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,1,nSpringActiveWelfare_UserId)
		Task_SetStcTimestamp(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,nSpringActiveWelfare_UserId)
	end
	
	
	--判断是否为周末，周末双倍
	local nSpringActiveWelfare_Limit = tSpringActiveWelfare_Stc["Reward"]["Limit"][1]
	if Sys_ChkWeedTime(tSpringActiveWelfare_Cont["Weekend"][1]) or Sys_ChkWeedTime(tSpringActiveWelfare_Cont["Weekend"][2]) then 
		nSpringActiveWelfare_Limit = tSpringActiveWelfare_Stc["Reward"]["Limit"][2]
	end
	
	-- 已领取
	if not Task_ChkStcValue(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, "<", nSpringActiveWelfare_Limit) then
		local sSpringActiveWelfare_MsgBox = string.format(tSpringActiveWelfare_Text["SystemTips"]["RewardLimit"], nSpringActiveWelfare_Limit)
		Sys_MsgBox(sSpringActiveWelfare_MsgBox)
		return
	end
	
	local nSpringActiveWelfare_DebrisId = tSpringActiveWelfare_Cont["HandDebris"]["DebrisId"]
	local nSpringActiveWelfare_NeedDebris = tSpringActiveWelfare_Cont["HandDebris"]["DebrisNum"]
	local nSpringActiveWelfare_Num = Get_CountItemType(tSpringActiveWelfare_Cont["HandDebris"]["DebrisId"],0)
	
	
	-- 判断碎片数量
	if nSpringActiveWelfare_Num >= nSpringActiveWelfare_NeedDebris then
		--判断背包空间
		local nSpringActiveWelfare_Server = SpringActiveWelfare_GreenServer()--判断是否为绿色新服
		local nSpringActiveWelfare_Space = RewardTemplate_GetRandomSpace(tSpringActiveWelfare_Data["Reward"]["DayReward"],nSpringActiveWelfare_Server)
		if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
			Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["RewardNoSpace"])
			return
		end
		if Item_ChkMulItem(nSpringActiveWelfare_DebrisId,nSpringActiveWelfare_DebrisId,nSpringActiveWelfare_NeedDebris) and Item_DelMulItem(nSpringActiveWelfare_DebrisId,nSpringActiveWelfare_DebrisId,nSpringActiveWelfare_NeedDebris) then
			--记删除道具log
			local sSpringActiveWelfare_str = string.format(tSpringActiveWelfare_Cont["HandDebris"]["Log"],nSpringActiveWelfare_NeedDebris)
			Sys_SaveActionFestivalLog(sSpringActiveWelfare_str)
			--打掩码，发奖励
			if Task_AddStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,1,nSpringActiveWelfare_UserId) then
				Task_SetStcTimestamp(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 0)
				
				--单服碎片碎片总数增加
				SpringActiveWelfare_ServerDebris(nSpringActiveWelfare_NeedDebris)
				-- 个人碎片总数记录
				SpringActiveWelfare_PersonalDebris(nSpringActiveWelfare_NeedDebris)
				
				--获取奖励名称
				local tSpringActiveWelfare_Award,sSpringActiveWelfare_RewardName = RewardTemplate_RandomReward(tSpringActiveWelfare_Data["Reward"]["DayReward"],nSpringActiveWelfare_Server)
				tNpcGossip[25690]["Text151"] = string.format(tSpringActiveWelfare_Text[25690]["Text151"],sSpringActiveWelfare_RewardName)
				--提示成功领奖
				LinkNpcGossipFunc_New(nSpringActiveWelfare_NpcId, "1-5")
			end	
		end
	else
		--提示碎片不足
		LinkNpcGossipFunc_New(nSpringActiveWelfare_NpcId, "1-4")
	end
	
end


-- 单服碎片全局表记录
function SpringActiveWelfare_ServerDebris(nSpringActiveWelfare_Num)
	local tSpringActiveWelfare_SysDyGlobId = tSpringActiveWelfare_Global[1]
	local nSpringActiveWelfare_Data0 = Get_SysDynaGlobalData0(tSpringActiveWelfare_SysDyGlobId)
	nSpringActiveWelfare_Data0 = nSpringActiveWelfare_Data0 + nSpringActiveWelfare_Num
	Sys_SetSynaGlobalData0(tSpringActiveWelfare_SysDyGlobId,nSpringActiveWelfare_Data0)
end

-- 个人碎片总数记录
function SpringActiveWelfare_PersonalDebris(nSpringActiveWelfare_Num)
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["CollectNum"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["CollectNum"]["TypeData"]
	if Task_AddStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,nSpringActiveWelfare_Num,1,nSpringActiveWelfare_UserId) then
		Task_SetStcTimestamp(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 0)
	end	
end


-- 领取个人阶段奖励
function SpringActiveWelfare_PersonalPhaseReward(nSpringActiveWelfare_NpcId)
		--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Event1 = tSpringActiveWelfare_Stc["CollectNum"]["EventType"]
	local nSpringActiveWelfare_Type1 = tSpringActiveWelfare_Stc["CollectNum"]["TypeData"]
	local nSpringActiveWelfare_Event2 = tSpringActiveWelfare_Stc["PersonalPhaseReward"]["EventType"]
	local nSpringActiveWelfare_Type2 = tSpringActiveWelfare_Stc["PersonalPhaseReward"]["TypeData"]
	--Data1为玩家收集总数，Data2为玩家个人奖励领取阶段数
	local nSpringActiveWelfare_Data1 = Get_UserStatisticValue(nSpringActiveWelfare_Event1,nSpringActiveWelfare_Type1,nSpringActiveWelfare_UserId) or 0
	local nSpringActiveWelfare_Data2 = Get_UserStatisticValue(nSpringActiveWelfare_Event2,nSpringActiveWelfare_Type2,nSpringActiveWelfare_UserId) or 0
	local nSpringActiveWelfare_Server = SpringActiveWelfare_GreenServer()--判断是否为绿色新服
	--判断个人阶段奖励
	for i = 1 ,6 do
		if (nSpringActiveWelfare_Data1 >= tSpringActiveWelfare_Cont["PersonalPhaseReward"][i]) and (nSpringActiveWelfare_Data2 < i) then
			--判断背包空间
			local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][nSpringActiveWelfare_Server][i])
			if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
				Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoSpace"])
				return
			end
			--打掩码，发奖励
			if Task_AddStatistic(nSpringActiveWelfare_Event2,nSpringActiveWelfare_Type2,1,1,nSpringActiveWelfare_UserId) then
				Task_SetStcTimestamp(nSpringActiveWelfare_Event2, nSpringActiveWelfare_Type2, 0)
				
				--领取个人阶段奖励
				RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"]["PersonalPhaseReward"][nSpringActiveWelfare_Server][i])
				return
			end	
			
		end
	end
	
	if nSpringActiveWelfare_Data2 >= 6 then
		--奖励都领完，提示无法领取
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["LimitAllReward"])
	else
		--奖励未领完，但无奖励可以领取，提示无法领取
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["LimitReward"])
	end
	-- 指向对白
	LinkNpcGossipFunc_New(nSpringActiveWelfare_NpcId,"1-3")
end

-- 领取单服阶段奖励
function SpringActiveWelfare_GroupPhaseReward(nSpringActiveWelfare_NpcId)
		--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	local nSpringActiveWelfare_UserId = Get_UserId()
	local tSpringActiveWelfare_SysDyGlobId = tSpringActiveWelfare_Global[1]
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["GroupPhaseReward"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["GroupPhaseReward"]["TypeData"]
	--Data0为单服收集总数，StcData为玩家个人奖励领取阶段数
	local nSpringActiveWelfare_Data0 = Get_SysDynaGlobalData0(tSpringActiveWelfare_SysDyGlobId)
	local nSpringActiveWelfare_StcData = Get_UserStatisticValue(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,nSpringActiveWelfare_UserId) or 0
	local nSpringActiveWelfare_Server = SpringActiveWelfare_GreenServer()--判断是否为绿色新服
	
	--判断是否上交过碎片
	if not (Get_UserStatisticValue(tSpringActiveWelfare_Stc["CollectNum"]["EventType"],tSpringActiveWelfare_Stc["CollectNum"]["TypeData"],nSpringActiveWelfare_UserId) > 0 ) then 
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoHand"])
		return 
	end
	
	
	--判断单阶段奖励
	for i = 1 ,5 do
		if (nSpringActiveWelfare_Data0 >= tSpringActiveWelfare_Cont["GroupPhaseReward"][i]) and (nSpringActiveWelfare_StcData < i) then
			--判断背包空间
			local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][nSpringActiveWelfare_Server][i])
			if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
				Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoSpace"])
				return
			end
			--打掩码，发奖励
			if Task_AddStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,1,nSpringActiveWelfare_UserId) then
				Task_SetStcTimestamp(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 0)
				
				--领取单服阶段奖励
				RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"]["GroupPhaseReward"][nSpringActiveWelfare_Server][i])
				return
			end	
			
		end
	end
	
	if nSpringActiveWelfare_StcData >= 5 then
		--奖励都领完，提示无法领取
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["LimitAllReward"])
	else
		--奖励未领完，但无奖励可以领取，提示无法领取
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["LimitReward"])
	end
	-- 指向对白
	LinkNpcGossipFunc_New(nSpringActiveWelfare_NpcId,"1-3")
	
end
-- 领取每日福袋
function SpringActiveWelfare_RewardLuckyBag()
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Level = tSpringActiveWelfare_Cont["Level"]
	local nSpringActiveWelfare_Metempsychosis = tSpringActiveWelfare_Cont["Metempsychosis"]
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["LuckyBag"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["LuckyBag"]["TypeData"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(nSpringActiveWelfare_Level,nSpringActiveWelfare_Metempsychosis,nSpringActiveWelfare_UserId) then
		return
	end
	
	--隔天判断
	if Task_StcInterval(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,4,nSpringActiveWelfare_UserId) then
		Task_SetStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,1,nSpringActiveWelfare_UserId)
		Task_SetStcTimestamp(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,nSpringActiveWelfare_UserId)
	end
	-- 已领取
	if not Task_ChkStcValue(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, "<", 1) then
		User_TalkChannel2005(tSpringActiveWelfare_Text["SystemTips"]["HasReward"])
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["HasReward"])
		return
	end
	
	--判断背包空间
	local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"]["DayAward"])
	if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoSpace"])
		return
	end
	--打掩码，发奖励
	if Task_AddStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,1,nSpringActiveWelfare_UserId) then
		Task_SetStcTimestamp(nSpringActiveWelfare_Event, nSpringActiveWelfare_Type, 0)
		
		--领取每日福袋
		RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"]["DayAward"])
		-- 播放光效
		User_EffectAdd("self",tSpringActiveWelfare_Cont["Hair"]["Effect"])
		return
	end	

end

-- 30-dayClassicWeaponPack礼盒、100-dayArmorPack礼盒 打开逻辑
function SpringActiveWelfare_OpenGift(nSpringActiveWelfare_ItemId)
		
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_NeedEMoney = tSpringActiveWelfare_Cont["NeedEMoney"][nSpringActiveWelfare_ItemId]
		--判断天石足够
	if Get_UserEMoney(nSpringActiveWelfare_UserId) < nSpringActiveWelfare_NeedEMoney then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NotEMoney"])
		return
	end
	
	--判断背包空间
	local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId])
	if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoSpace"])
		return
	end
	
	if Item_ChkItem(nSpringActiveWelfare_ItemId) then
		if User_AddEMoney(-nSpringActiveWelfare_NeedEMoney, nSpringActiveWelfare_UserId) then
			-- 领奖打log
			Sys_SaveEmoneyBuy(string.format(tSpringActiveWelfare_Log[nSpringActiveWelfare_ItemId],nSpringActiveWelfare_NeedEMoney,nSpringActiveWelfare_NeedEMoney))
			RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId])

		end
	end
end


-- 100CPsBag（B）使用逻辑
function SpringActiveWelfare_CPsBagUp(nSpringActiveWelfare_ItemId,nSpringActiveWelfare_type)
	--判断赠点是否上限
	local nSpringActiveWelfare_MonoEMoney = tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nSpringActiveWelfare_MonoEMoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["MonoEMoneyMax"])
		return 
	end
	
	--不付费直接获得100赠点
	if nSpringActiveWelfare_type == 1 then
		RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type])
		return
	end
		
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_NeedEMoney = tSpringActiveWelfare_Cont["NeedEMoney"][nSpringActiveWelfare_ItemId]
		--判断天石足够
	if Get_UserEMoney(nSpringActiveWelfare_UserId) < nSpringActiveWelfare_NeedEMoney then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NotEMoney"])
		return
	end
	
	
	if Item_ChkItem(nSpringActiveWelfare_ItemId) then
		if User_AddEMoney(-nSpringActiveWelfare_NeedEMoney, nSpringActiveWelfare_UserId) then
			-- 领奖打log
			Sys_SaveEmoneyBuy(string.format(tSpringActiveWelfare_Log[nSpringActiveWelfare_ItemId],nSpringActiveWelfare_NeedEMoney,nSpringActiveWelfare_NeedEMoney))
			RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type])

		end
	end
end


-- 15天时效ChristmasHarmony礼盒、20天时效ChristmasHarmony礼盒 打开逻辑
function SpringActiveWelfare_OpenChristmasHarmony(nSpringActiveWelfare_ItemId,nSpringActiveWelfare_type)
		
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_NeedEMoney = tSpringActiveWelfare_Cont["NeedEMoney"][nSpringActiveWelfare_ItemId]
		--判断天石足够
	if nSpringActiveWelfare_type == 2 then
		if Get_UserEMoney(nSpringActiveWelfare_UserId) < nSpringActiveWelfare_NeedEMoney then
			Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NotEMoney"])
			return
		end
	end
	
	--判断背包空间
	local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type])
	if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoSpace"])
		return
	end
	
	if Item_ChkItem(nSpringActiveWelfare_ItemId) then
		if nSpringActiveWelfare_type == 2 then 
			if User_AddEMoney(-nSpringActiveWelfare_NeedEMoney, nSpringActiveWelfare_UserId) then
				-- 领奖打log
				Sys_SaveEmoneyBuy(string.format(tSpringActiveWelfare_Log[nSpringActiveWelfare_ItemId],nSpringActiveWelfare_NeedEMoney,nSpringActiveWelfare_NeedEMoney))
				RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type])
			end
		else 
			RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type])
		end
		
	end
	
	
end

-- 花卉可选礼盒 打开逻辑
function SpringActiveWelfare_ChooseFlower(nSpringActiveWelfare_ItemId,nSpringActiveWelfare_type)
		
	local nSpringActiveWelfare_UserId = Get_UserId()
	
	--判断背包空间
	local nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type])
	if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoSpace"])
		return
	end
	if Item_ChkItem(nSpringActiveWelfare_ItemId) then
		RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][nSpringActiveWelfare_ItemId][nSpringActiveWelfare_type])
	end
end

-- 购买贺岁礼盒 跳转至二次确认
function SpringActiveWelfare_SecondaryConfirm(nSpringActiveWelfare_Index,nSpringActiveWelfare_NpcId)
	local nSpringActiveWelfare_UserId = Get_UserId()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	
	--判断是否到达每日上限
	local nSpringActiveWelfare_GlobalId = tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["GlobalId"] or 0
	local nSpringActiveWelfare_Data = Get_SysDynaGlobalData(nSpringActiveWelfare_GlobalId,tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["Pos"]) or 0
		
	if nSpringActiveWelfare_Data >= tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["Limit"] then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["LimitBuy"])
		return 
	end
	
	-- 对白初始化
	tNpcGossip[nSpringActiveWelfare_NpcId]["Text161"] = tSpringActiveWelfare_Text[nSpringActiveWelfare_NpcId]["SecondaryConfirm"][nSpringActiveWelfare_Index]
	tNpcGossip[nSpringActiveWelfare_NpcId]["OptionFunc161"]=string.format("SpringActiveWelfare_LimitBuy</N>%d</N>%d",nSpringActiveWelfare_Index,nSpringActiveWelfare_NpcId)
	
	-- 指向对白
	LinkNpcGossipFunc_New(nSpringActiveWelfare_NpcId,"1-6")
	
end

-- 购买贺岁礼盒 限购逻辑
function SpringActiveWelfare_LimitBuy(nSpringActiveWelfare_Index,nSpringActiveWelfare_NpcId)
		
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_UserSex = Get_UserSex(nSpringActiveWelfare_UserId)--判断玩家性别
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	--判断是否到达每日上限
	local nSpringActiveWelfare_GlobalId = tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["GlobalId"] or 0
	local nSpringActiveWelfare_Data = Get_SysDynaGlobalData(nSpringActiveWelfare_GlobalId,tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["Pos"]) or 0
	if nSpringActiveWelfare_Data >= tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["Limit"] then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["LimitBuy"])
		return 
	end
	
	local nSpringActiveWelfare_NeedEMoney = tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["NeedEMoney"]
		--判断天石足够
	if Get_UserEMoney(nSpringActiveWelfare_UserId) < nSpringActiveWelfare_NeedEMoney then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NotEMoneyBuy"])
		return
	end
	
	--判断是否需要区分性别
	local nSpringActiveWelfare_Space = 0
	if tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["Gender"] >= 1 then 
		nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"]["Shop"][nSpringActiveWelfare_Index][nSpringActiveWelfare_UserSex])
	else
		nSpringActiveWelfare_Space = RewardTemplate_GetRewardSpace(tSpringActiveWelfare_Data["Reward"]["Shop"][nSpringActiveWelfare_Index])
	end
	--判断背包空间
	if not User_CheckLeftSpace(nSpringActiveWelfare_Space,nSpringActiveWelfare_UserId) then
		Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["NoSpace"])
		return
	end
	
	if User_AddEMoney(-nSpringActiveWelfare_NeedEMoney, nSpringActiveWelfare_UserId) then
		-- 购买打log
		Sys_SaveEmoneyBuy(string.format(tSpringActiveWelfare_Log["Shop"][nSpringActiveWelfare_Index],nSpringActiveWelfare_NeedEMoney,nSpringActiveWelfare_NeedEMoney))
		
		--全局表加
		nSpringActiveWelfare_Data = nSpringActiveWelfare_Data +1 
		Sys_SetSynaGlobalData(nSpringActiveWelfare_GlobalId,tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["Pos"],nSpringActiveWelfare_Data)
		--发奖
		if tSpringActiveWelfare_Limit[nSpringActiveWelfare_Index]["Gender"] >= 1 then 
			--由于有性别区分的物品均为帽子，帽子走模板无法给时效，单独用函数给发型
			User_NotifyChgHairstyle(tSpringActiveWelfare_Cont["Hair"][nSpringActiveWelfare_Index],21600,nSpringActiveWelfare_UserId)
			User_EffectAdd("self",tSpringActiveWelfare_Cont["Hair"]["Effect"])
			Sys_MsgBox(tSpringActiveWelfare_Text["SystemTips"]["BuyHair"])
		else
			RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"]["Shop"][nSpringActiveWelfare_Index])
		end
	end
	-- 指向对白
	LinkNpcGossipFunc_New(nSpringActiveWelfare_NpcId,"1-3")
end

--判断是否为绿色新服 1为老服，2为绿色服
function SpringActiveWelfare_GreenServer()
	if SpecialServer_ChkGreenServer() then
		return 2
	else
		return 1
	end
end
----------------------------------NPC部分---------------------------------------------
-- 25690,'锦鲤',0002,62197,
tNpcFace[2223] = 2704
tNpcGossip[25690] = tNpcGossip[25690] or DefaultNpc:new{}
tNpcGossip[25690]["OptionHidden"] = 1
tNpcGossip[25690]["DialogueText"] = tSpringActiveWelfare_Text[25690]

--活动时间前
tNpcGossip[25690]["Text1-1"] = {111,112,113,114}
tNpcGossip[25690]["tOption1-1"] = {111}
tNpcGossip[25690]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"])
end

--活动时间后
tNpcGossip[25690]["Text1-2"] = {121}
tNpcGossip[25690]["tOption1-2"] = {121}
tNpcGossip[25690]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"])
end

--活动时间中
tNpcGossip[25690]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[25690]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[25690]["ChkFunc1-3"] = function()
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Level = tSpringActiveWelfare_Cont["Level"]
	local nSpringActiveWelfare_Metempsychosis = tSpringActiveWelfare_Cont["Metempsychosis"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	
	--等级判断
	tNpcGossip[25690]["Text1-3"] = {131,132,133,134,136}
	tNpcGossip[25690]["tOption1-3"] = {131,132,133,134}
	if not User_JudgeLevelAndMetempsychosis(nSpringActiveWelfare_Level,nSpringActiveWelfare_Metempsychosis,nSpringActiveWelfare_UserId) then
		tNpcGossip[25690]["Text1-3"] = {131,132,133,134,135,136}
		tNpcGossip[25690]["tOption1-3"] = {135}
	end
	return true
end
tNpcGossip[25690]["OptionFunc131"] = "SpringActiveWelfare_HandDebris</N>25690"
tNpcGossip[25690]["OptionPoint132"] = "1-6"
tNpcGossip[25690]["OptionPoint133"] = "1-7"

--失败，碎片不足
tNpcGossip[25690]["Text1-4"] = {141}
tNpcGossip[25690]["tOption1-4"] = {141}

--成功领取每日奖励
tNpcGossip[25690]["Text1-5"] = {151}
tNpcGossip[25690]["tOption1-5"] = {151}

--领取个人阶段奖励
tNpcGossip[25690]["Text1-6"] = {161,162,163,164,165,166,167,168,169,1610}
tNpcGossip[25690]["tOption1-6"] = {161,162}
tNpcGossip[25690]["ChkFunc1-6"] = function()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Event1 = tSpringActiveWelfare_Stc["CollectNum"]["EventType"]
	local nSpringActiveWelfare_Type1 = tSpringActiveWelfare_Stc["CollectNum"]["TypeData"]
	local nSpringActiveWelfare_Event2 = tSpringActiveWelfare_Stc["PersonalPhaseReward"]["EventType"]
	local nSpringActiveWelfare_Type2 = tSpringActiveWelfare_Stc["PersonalPhaseReward"]["TypeData"]
	--Data1为玩家收集总数，Data2为玩家个人奖励领取阶段数
	local nSpringActiveWelfare_Data1 = Get_UserStatisticValue(nSpringActiveWelfare_Event1,nSpringActiveWelfare_Type1,nSpringActiveWelfare_UserId) or 0
	local nSpringActiveWelfare_Data2 = Get_UserStatisticValue(nSpringActiveWelfare_Event2,nSpringActiveWelfare_Type2,nSpringActiveWelfare_UserId)
	local nSpringActiveWelfare_Server = SpringActiveWelfare_GreenServer()--判断是否为绿色新服
	
	tNpcGossip[25690]["Text1610"] = string.format(tSpringActiveWelfare_Text[25690]["Text1610"],nSpringActiveWelfare_Data1)
	--对白提示是否可以领奖，是否已经领奖
	for i = 1 ,6 do
		local nSpringActiveWelfare_TextNum = i + 2
		if nSpringActiveWelfare_Data1 >= tSpringActiveWelfare_Cont["PersonalPhaseReward"][i] then
			tNpcGossip[25690]["Text16"..nSpringActiveWelfare_TextNum] = string.format(tSpringActiveWelfare_Text[25690]["Text16"..nSpringActiveWelfare_TextNum],tSpringActiveWelfare_Text["PersonalPhaseReward"][nSpringActiveWelfare_Server][i],tSpringActiveWelfare_Text["HandDebrisReward"]["CanBrought"])
			if nSpringActiveWelfare_Data2 >= i then
				tNpcGossip[25690]["Text16"..nSpringActiveWelfare_TextNum] = string.format(tSpringActiveWelfare_Text[25690]["Text16"..nSpringActiveWelfare_TextNum],tSpringActiveWelfare_Text["PersonalPhaseReward"][nSpringActiveWelfare_Server][i],tSpringActiveWelfare_Text["HandDebrisReward"]["HasBrought"])
			end
		else
			tNpcGossip[25690]["Text16"..nSpringActiveWelfare_TextNum] = string.format(tSpringActiveWelfare_Text[25690]["Text16"..nSpringActiveWelfare_TextNum],tSpringActiveWelfare_Text["PersonalPhaseReward"][nSpringActiveWelfare_Server][i],tSpringActiveWelfare_Text["HandDebrisReward"]["CanNot"])
		end
	end
	
	return true
	
end
tNpcGossip[25690]["OptionFunc161"] = "SpringActiveWelfare_PersonalPhaseReward</N>25690"

--领取单服阶段奖励
tNpcGossip[25690]["Text1-7"] = {171,172,173,174,175,176,177,178,179}
tNpcGossip[25690]["tOption1-7"] = {171,172}
tNpcGossip[25690]["ChkFunc1-7"] = function()
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end
	local nSpringActiveWelfare_UserId = Get_UserId()
	local tSpringActiveWelfare_SysDyGlobId = tSpringActiveWelfare_Global[1]
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["GroupPhaseReward"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["GroupPhaseReward"]["TypeData"]
	--Data0为单服收集总数，StcData为玩家个人奖励领取阶段数
	local nSpringActiveWelfare_Data0 = Get_SysDynaGlobalData0(tSpringActiveWelfare_SysDyGlobId) or 0
	local nSpringActiveWelfare_StcData = Get_UserStatisticValue(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,nSpringActiveWelfare_UserId)
	local nSpringActiveWelfare_Server = SpringActiveWelfare_GreenServer()--判断是否为绿色新服
	
	tNpcGossip[25690]["Text179"] = string.format(tSpringActiveWelfare_Text[25690]["Text179"],nSpringActiveWelfare_Data0)
	--对白提示是否可以领奖，是否已经领奖
	for i = 1 ,5 do
		local nSpringActiveWelfare_TextNum = i + 2
		if nSpringActiveWelfare_Data0 >= tSpringActiveWelfare_Cont["GroupPhaseReward"][i] then
			tNpcGossip[25690]["Text17"..nSpringActiveWelfare_TextNum] = string.format(tSpringActiveWelfare_Text[25690]["Text17"..nSpringActiveWelfare_TextNum],tSpringActiveWelfare_Text["GroupPhaseReward"][nSpringActiveWelfare_Server][i],tSpringActiveWelfare_Text["HandDebrisReward"]["CanBrought"])
			if nSpringActiveWelfare_StcData >= i then
				tNpcGossip[25690]["Text17"..nSpringActiveWelfare_TextNum] = string.format(tSpringActiveWelfare_Text[25690]["Text17"..nSpringActiveWelfare_TextNum],tSpringActiveWelfare_Text["GroupPhaseReward"][nSpringActiveWelfare_Server][i],tSpringActiveWelfare_Text["HandDebrisReward"]["HasBrought"])
			end
		else
			tNpcGossip[25690]["Text17"..nSpringActiveWelfare_TextNum] = string.format(tSpringActiveWelfare_Text[25690]["Text17"..nSpringActiveWelfare_TextNum],tSpringActiveWelfare_Text["GroupPhaseReward"][nSpringActiveWelfare_Server][i],tSpringActiveWelfare_Text["HandDebrisReward"]["CanNot"])
		end
	end
	
	return true
	
end
tNpcGossip[25690]["OptionFunc171"] = "SpringActiveWelfare_GroupPhaseReward</N>25690"


-- 25691,'祝福大使',0002,62207,
tNpcFace[6220] = 189
tNpcGossip[25691] = tNpcGossip[25691] or DefaultNpc:new{}
tNpcGossip[25691]["OptionHidden"] = 1
tNpcGossip[25691]["DialogueText"] = tSpringActiveWelfare_Text[25691]

--活动时间前
tNpcGossip[25691]["Text1-1"] = {111,112,113,114}
tNpcGossip[25691]["tOption1-1"] = {111}
tNpcGossip[25691]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"])
end

--活动时间后
tNpcGossip[25691]["Text1-2"] = {121}
tNpcGossip[25691]["tOption1-2"] = {121}
tNpcGossip[25691]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"])
end

--活动时间中
tNpcGossip[25691]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[25691]["tOption1-3"] = {131,132,133,134}
tNpcGossip[25691]["ChkFunc1-3"] = function()
	local nSpringActiveWelfare_UserId = Get_UserId()
	local nSpringActiveWelfare_Level = tSpringActiveWelfare_Cont["Level"]
	local nSpringActiveWelfare_Metempsychosis = tSpringActiveWelfare_Cont["Metempsychosis"]
	local nSpringActiveWelfare_Event = tSpringActiveWelfare_Stc["LuckyBag"]["EventType"]
	local nSpringActiveWelfare_Type = tSpringActiveWelfare_Stc["LuckyBag"]["TypeData"]
	
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		return
	end

	--等级判断
	tNpcGossip[25691]["Text1-3"] = {131,132,133,134,136}
	tNpcGossip[25691]["tOption1-3"] = {131,132}
	if not User_JudgeLevelAndMetempsychosis(nSpringActiveWelfare_Level,nSpringActiveWelfare_Metempsychosis,nSpringActiveWelfare_UserId) then
		tNpcGossip[25691]["Text1-3"] = {131,132,133,134,135,136}
		tNpcGossip[25691]["tOption1-3"] = {134}
	end
	
	--隔天判断
	if Task_StcInterval(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,1,4,nSpringActiveWelfare_UserId) then

		Task_SetStatistic(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,1,nSpringActiveWelfare_UserId)
		Task_SetStcTimestamp(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,0,nSpringActiveWelfare_UserId)
	end
	
	-- 已领取
	if not Task_ChkStcValue(nSpringActiveWelfare_Event,nSpringActiveWelfare_Type,"<",1) then

		tNpcGossip[25691]["tOption1-3"] = {133,132}
	end
	
	return true

end
tNpcGossip[25691]["OptionFunc131"] = "SpringActiveWelfare_RewardLuckyBag"
tNpcGossip[25691]["OptionFunc133"] = "SpringActiveWelfare_RewardLuckyBag"
tNpcGossip[25691]["OptionPoint132"] = "1-4"

--购买贺岁礼盒 第一页
tNpcGossip[25691]["Text1-4"] = {141}
tNpcGossip[25691]["tOption1-4"] = {141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[25691]["ChkFunc1-4"] = function()
	local nSpringActiveWelfare_GlobalId = 0
	local nSpringActiveWelfare_Data = 0
	
	for i = 1,10 do
		
		nSpringActiveWelfare_GlobalId = tSpringActiveWelfare_Limit[i]["GlobalId"] or 0

		nSpringActiveWelfare_Data = Get_SysDynaGlobalData(nSpringActiveWelfare_GlobalId,tSpringActiveWelfare_Limit[i]["Pos"]) or 0
		tNpcGossip[25691]["Option14"..i] = string.format(tSpringActiveWelfare_Text[25691]["Option14"..i],nSpringActiveWelfare_Data)
	end
	
	return true
end
tNpcGossip[25691]["OptionFunc141"] = "SpringActiveWelfare_SecondaryConfirm</N>1</N>25691"
tNpcGossip[25691]["OptionFunc142"] = "SpringActiveWelfare_SecondaryConfirm</N>2</N>25691"
tNpcGossip[25691]["OptionFunc143"] = "SpringActiveWelfare_SecondaryConfirm</N>3</N>25691"
tNpcGossip[25691]["OptionFunc144"] = "SpringActiveWelfare_SecondaryConfirm</N>4</N>25691"
tNpcGossip[25691]["OptionFunc145"] = "SpringActiveWelfare_SecondaryConfirm</N>5</N>25691"
tNpcGossip[25691]["OptionFunc146"] = "SpringActiveWelfare_SecondaryConfirm</N>6</N>25691"
tNpcGossip[25691]["OptionFunc147"] = "SpringActiveWelfare_SecondaryConfirm</N>7</N>25691"
tNpcGossip[25691]["OptionFunc148"] = "SpringActiveWelfare_SecondaryConfirm</N>8</N>25691"
tNpcGossip[25691]["OptionFunc149"] = "SpringActiveWelfare_SecondaryConfirm</N>9</N>25691"
tNpcGossip[25691]["OptionFunc1410"] = "SpringActiveWelfare_SecondaryConfirm</N>10</N>25691"


--二次确认
tNpcGossip[25691]["Text1-6"] = {161}
tNpcGossip[25691]["tOption1-6"] = {161,162}

---------------------------------物品部分---------------------------------------------
--3327244  30-dayClassicWeaponPack礼盒
tItemFace[3327244] = 428
tItem[3327244] = tItem[3327244] or {}
tItem[3327244]["DialogueText"] = tSpringActiveWelfare_Text[3327244]
--提示打开获得
tItem[3327244]["Text1-1"] = {111}
tItem[3327244]["tOption1-1"] = {111,112}
tItem[3327244]["OptionPoint111"] = "1-2"
--二次确认
tItem[3327244]["Text1-2"] = {121}
tItem[3327244]["tOption1-2"] = {121,122}
--确认打开
tItem[3327244]["OptionFunc121"] = "SpringActiveWelfare_OpenGift</N>3327244"



--3327245  100CPsBag（B）
tItemFace[3327245] = 833
tItem[3327245] = tItem[3327245] or {}
tItem[3327245]["DialogueText"] = tSpringActiveWelfare_Text[3327245]
--提示打开获得
tItem[3327245]["Text1-1"] = {111}
tItem[3327245]["tOption1-1"] = {111,112}
--确认打开
tItem[3327245]["OptionFunc111"] = "SpringActiveWelfare_CPsBagUp</N>3327245</N>1"
tItem[3327245]["OptionPoint112"] = "1-2"
--二次确认
tItem[3327245]["Text1-2"] = {121}
tItem[3327245]["tOption1-2"] = {121,122}
--确认打开
tItem[3327245]["OptionFunc112"] = "SpringActiveWelfare_CPsBagUp</N>3327245</N>2"



--3327246  100-dayArmorPack礼盒
tItemFace[3327246] = 430
tItem[3327246] = tItem[3327246] or {}
tItem[3327246]["DialogueText"] = tSpringActiveWelfare_Text[3327246]
--提示打开获得
tItem[3327246]["Text1-1"] = {111}
tItem[3327246]["tOption1-1"] = {111,112}
tItem[3327246]["OptionPoint111"] = "1-2"
--二次确认
tItem[3327246]["Text1-2"] = {121}
tItem[3327246]["tOption1-2"] = {121,122}
--确认打开
tItem[3327246]["OptionFunc121"] = "SpringActiveWelfare_OpenGift</N>3327246"



--3327247  15天时效ChristmasHarmony礼盒
tItemFace[3327247] = 644
tItem[3327247] = tItem[3327247] or {}
tItem[3327247]["DialogueText"] = tSpringActiveWelfare_Text[3327247]
--提示打开获得
tItem[3327247]["Text1-1"] = {111}
tItem[3327247]["tOption1-1"] = {111,112}
tItem[3327247]["OptionFunc111"] = "SpringActiveWelfare_OpenChristmasHarmony</N>3327247</N>1"
tItem[3327247]["OptionPoint112"] = "1-2"
--二次确认
tItem[3327247]["Text1-2"] = {121}
tItem[3327247]["tOption1-2"] = {121,122}
--确认打开
tItem[3327247]["OptionFunc121"] = "SpringActiveWelfare_OpenChristmasHarmony</N>3327247</N>2"


--3327248  20天时效ChristmasHarmony礼盒
tItemFace[3327248] = 671
tItem[3327248] = tItem[3327248] or {}
tItem[3327248]["DialogueText"] = tSpringActiveWelfare_Text[3327248]
--提示打开获得
tItem[3327248]["Text1-1"] = {111}
tItem[3327248]["tOption1-1"] = {111,112}
tItem[3327248]["OptionFunc111"] = "SpringActiveWelfare_OpenChristmasHarmony</N>3327248</N>1"
tItem[3327248]["OptionPoint112"] = "1-2"
--二次确认
tItem[3327248]["Text1-2"] = {121}
tItem[3327248]["tOption1-2"] = {121,122}
--确认打开
tItem[3327248]["OptionFunc121"] = "SpringActiveWelfare_OpenChristmasHarmony</N>3327248</N>2"


--3327253  花卉可选礼盒
tItemFace[3327253] = 843
tItem[3327253] = tItem[3327253] or {}
tItem[3327253]["DialogueText"] = tSpringActiveWelfare_Text[3327253]
--提示打开获得
tItem[3327253]["Text1-1"] = {111}
tItem[3327253]["tOption1-1"] = {111,112}
tItem[3327253]["OptionFunc111"] = "SpringActiveWelfare_ChooseFlower</N>3327253</N>1"
tItem[3327253]["OptionFunc112"] = "SpringActiveWelfare_ChooseFlower</N>3327253</N>2"

--3327250  星光碎片
tItem[3327250] = tItem[3327250] or {}
tItem[3327250]["Function"] = function(nItemId,sItemName)
	local nSpringActiveWelfare_ItemId = nItemId
	-- 判断是否处于活动期内，过期删除
	if CommonFunc_GetAfterActivityTime(tActivityTime["SpringActiveWelfare"]["ActivityTime"]) then
		local nSpringActiveWelfare_Num = Get_CountItemType(nSpringActiveWelfare_ItemId,0)
		if Item_ChkItem(nSpringActiveWelfare_ItemId) and Item_DelAllItemByType(nSpringActiveWelfare_ItemId) then
		--过期删除log
		local sSpringActiveWelfare_str = string.format(tSpringActiveWelfare_Log[nSpringActiveWelfare_ItemId],nSpringActiveWelfare_Num)
		Sys_SaveActionFestivalLog(sSpringActiveWelfare_str)
		User_TalkChannel2005(tSpringActiveWelfare_Text["SystemTips"]["TimeOut"])
		end 
		return
	end

	--寻路到锦鲤
	NpcPosition_PathFind(tSpringActiveWelfare_Cont["FindWay"])
end

--3327249  1000骑马积分包
tItem[3327249] = tItem[3327249] or {}
tItem[3327249]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSpringActiveWelfare_Data["Reward"][nItemId])
end
--3327251  新年福袋
tItem[3327251] = tItem[3327251] or {}
tItem[3327251]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tSpringActiveWelfare_Data["Reward"],nItemId)
end
--背包信头像
tItemFace[3327252] = 2197
---------------------------------------------怪物模块---------------------------------------------
-- 普通服
local tSpringActiveWelfare_Monster = {}
	tSpringActiveWelfare_Monster["ActivityTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
	tSpringActiveWelfare_Monster["Function"] = SpringActiveWelfare_KillMonster
	tSpringActiveWelfare_Monster["MonsterId"] = {3973,3974,3975,4709,2411,2416,2460,2461,2466,2473,2474,2479}
table.insert(tMonsterDrop_AreaLoad,tSpringActiveWelfare_Monster)
-- 激情服
local tSpringActiveWelfare_Monster_NoGift = {}
	tSpringActiveWelfare_Monster_NoGift["ActivityTime"] = tActivityTime["SpringActiveWelfare"]["ActivityTime"]
	tSpringActiveWelfare_Monster_NoGift["Function"] = SpringActiveWelfare_KillMonster
	tSpringActiveWelfare_Monster_NoGift["MonsterId"] = {4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tSpringActiveWelfare_Monster_NoGift)

---------------------------------------------时间自检---------------------------------------------
local tSpringActiveWelfare_Time = {}
-- 清空每日限购全局表
tSpringActiveWelfare_Time[1] = {}
tSpringActiveWelfare_Time[1]["Type"] = 2
tSpringActiveWelfare_Time[1]["TimeType"] = 4
tSpringActiveWelfare_Time[1]["Multiple"] = {}
tSpringActiveWelfare_Time[1]["Multiple"][1]  = "00:00 00:05"
tSpringActiveWelfare_Time[1]["Func"] = SpringActiveWelfare_ClearLimit
table.insert(tSystemTime_InitialData,tSpringActiveWelfare_Time[1])

-- 清理标识
tSpringActiveWelfare_Time[2] = {}
tSpringActiveWelfare_Time[2]["Type"] = 2
tSpringActiveWelfare_Time[2]["TimeType"] = 4
tSpringActiveWelfare_Time[2]["Multiple"] = {}
tSpringActiveWelfare_Time[2]["Multiple"][1]  = "00:05 00:10"
tSpringActiveWelfare_Time[2]["Func"] = SpringActiveWelfare_ClearTag
table.insert(tSystemTime_InitialData,tSpringActiveWelfare_Time[2])
