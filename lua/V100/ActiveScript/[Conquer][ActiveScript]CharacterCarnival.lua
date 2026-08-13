------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]年终盛典-集字嘉年华(12.5-12.24)
--Creator:		翁清海
--Created:		2019/11/12
------------------------------------------------------------------------------------

--命名前缀
--CharacterCarnival_

--logid:12001738

--Stc掩码说明
--(209,81)			背包信
--(209,85)			火焰“？”开出的火焰“J”数量（隔天重置）
--(209,86)			提交5种火焰次数
--(209,87)			获得火焰？次数（隔天重置）

--动态码说明
--53892,0			区分服务器
--53899,0			火焰“？”开出的火焰“N”数量
--53899,1			火焰“？”开出的火焰“J”数量
--53899,2			火焰“？”开出的火焰“O”数量
--53899,3			火焰“？”开出的火焰“Y”数量
--53899,4			“J、O、Y”火焰盲盒开出的火焰“J”数量
--53902,0			红脸商人购买“E、N”火焰盲盒全服限量
--53902,1			红脸商人购买“J、O、Y”火焰盲盒全服限量
--53902,2			红脸商人购买优质玄元宝石全服限量
--53902,3			红脸商人购买大固化石全服限量
--53902,4			红脸商人购买+6RareSteedPack全服限量

--------------------------------------------数据部分配置--------------------------------------------
--记录玩家选择的商品
local tCharacterCarnival_Choose = {}
--记录玩家打怪数量
local tCharacterCarnival_KillNum = {}

local tCharacterCarnival_Time = {}
	tCharacterCarnival_Time["ActivityTime"] = tActivityTime["CharacterCarnival"]["ActivityTime"]
	
local tCharacterCarnival_Log = {}
	tCharacterCarnival_Log["DelItem"] = "0,0,%d,%d,12001738,2,0,0"
	tCharacterCarnival_Log["Hand"] = "0,0,3326940[3326941][3326942][3326943][3326944],1[1][1][1][1],12001738,1[1],0,0"
	
local tCharacterCarnival_Cont = {}
	--打怪计数
	tCharacterCarnival_Cont["KillNum"] = 100
	--打怪概率
	tCharacterCarnival_Cont["Random"] = {}
	tCharacterCarnival_Cont["Random"]["StartNum"] = 50
	tCharacterCarnival_Cont["Random"]["EndNum"] = 10000
	--线下活动页面
	tCharacterCarnival_Cont["Web"] = "https://coevent.99.com/lantern1912/client/"
	--火焰id
	tCharacterCarnival_Cont["FireId"] = {3326940,3326941,3326942,3326943,3326944}
	--升级包需要的天石
	tCharacterCarnival_Cont["Cost"] = {}
	tCharacterCarnival_Cont["Cost"][3326948] = 10
	tCharacterCarnival_Cont["Cost"][3326949] = 35
	tCharacterCarnival_Cont["Cost"][3326950] = 100
	tCharacterCarnival_Cont["Cost"][3326951] = 130
	tCharacterCarnival_Cont["Cost"][3326952] = 180
	tCharacterCarnival_Cont["Cost"][3326953] = 450
	tCharacterCarnival_Cont["Cost"][3326954] = 1000
	tCharacterCarnival_Cont["Cost"][3326955] = 3
	tCharacterCarnival_Cont["Cost"][3326956] = 5
	tCharacterCarnival_Cont["Cost"][3326957] = 10
	tCharacterCarnival_Cont["Cost"][3326958] = 20
	tCharacterCarnival_Cont["Cost"][3326959] = 40
	--红脸商人时间表
	tCharacterCarnival_Cont["BuyTime"] = {}
	tCharacterCarnival_Cont["BuyTime"][1]  = "02:00 03:59"
	tCharacterCarnival_Cont["BuyTime"][2] = "10:00 11:59"
	tCharacterCarnival_Cont["BuyTime"][3] = "18:00 19:59"
	--红脸商人商品表
	tCharacterCarnival_Cont["Goods"] = {}
	tCharacterCarnival_Cont["Goods"]["GlobalId"] = 53902
	tCharacterCarnival_Cont["Goods"][1] = {}
	tCharacterCarnival_Cont["Goods"][1]["Cost"] = 10
	tCharacterCarnival_Cont["Goods"][1]["CostType"] = 2
	tCharacterCarnival_Cont["Goods"][1]["Pos"] = 0
	tCharacterCarnival_Cont["Goods"][1]["Limit"] = 20
	tCharacterCarnival_Cont["Goods"][1]["ItemId"] = 3326946
	tCharacterCarnival_Cont["Goods"][2] = {}
	tCharacterCarnival_Cont["Goods"][2]["Cost"] = 5
	tCharacterCarnival_Cont["Goods"][2]["CostType"] = 1
	tCharacterCarnival_Cont["Goods"][2]["Pos"] = 1
	tCharacterCarnival_Cont["Goods"][2]["Limit"] = 20
	tCharacterCarnival_Cont["Goods"][2]["ItemId"] = 3326947
	tCharacterCarnival_Cont["Goods"][3] = {}
	tCharacterCarnival_Cont["Goods"][3]["Cost"] = 199
	tCharacterCarnival_Cont["Goods"][3]["CostType"] = 1
	tCharacterCarnival_Cont["Goods"][3]["Pos"] = 2
	tCharacterCarnival_Cont["Goods"][3]["Limit"] = 5
	tCharacterCarnival_Cont["Goods"][3]["ItemId"] = 700073
	tCharacterCarnival_Cont["Goods"][4] = {}
	tCharacterCarnival_Cont["Goods"][4]["Cost"] = 900
	tCharacterCarnival_Cont["Goods"][4]["CostType"] = 1
	tCharacterCarnival_Cont["Goods"][4]["Pos"] = 3
	tCharacterCarnival_Cont["Goods"][4]["Limit"] = 5
	tCharacterCarnival_Cont["Goods"][4]["ItemId"] = 723695
	tCharacterCarnival_Cont["Goods"][5] = {}
	tCharacterCarnival_Cont["Goods"][5]["Cost"] = 1099
	tCharacterCarnival_Cont["Goods"][5]["CostType"] = 1
	tCharacterCarnival_Cont["Goods"][5]["Pos"] = 4
	tCharacterCarnival_Cont["Goods"][5]["Limit"] = 1
	tCharacterCarnival_Cont["Goods"][5]["ItemId"] = 720049
	
	--移出红脸商人
	tCharacterCarnival_Cont["Move"] = {}
	tCharacterCarnival_Cont["Move"]["NpcId"] = 25597
	tCharacterCarnival_Cont["Move"]["GlobalId"] = 53892
	tCharacterCarnival_Cont["Move"][1] = {}
	tCharacterCarnival_Cont["Move"][1]["MapId"] = 1002
	tCharacterCarnival_Cont["Move"][1]["PosX"] = 331
	tCharacterCarnival_Cont["Move"][1]["PosY"] = 451
	tCharacterCarnival_Cont["Move"][2] = {}
	tCharacterCarnival_Cont["Move"][2]["MapId"] = 5000
	tCharacterCarnival_Cont["Move"][2]["PosX"] = 100
	tCharacterCarnival_Cont["Move"][2]["PosY"] = 100
	
local tCharacterCarnival_ELog = {}
	tCharacterCarnival_ELog["Hand"] = "350	22853	0	0	1	"
	tCharacterCarnival_ELog["Cost"] = {}
	tCharacterCarnival_ELog["Cost"][3326948] = "350	22872"
	tCharacterCarnival_ELog["Cost"][3326949] = "350	22873"
	tCharacterCarnival_ELog["Cost"][3326950] = "350	22874"
	tCharacterCarnival_ELog["Cost"][3326951] = "350	22875"
	tCharacterCarnival_ELog["Cost"][3326952] = "350	22876"
	tCharacterCarnival_ELog["Cost"][3326953] = "350	22877"
	tCharacterCarnival_ELog["Cost"][3326954] = "350	22878"
	tCharacterCarnival_ELog["Cost"][3326955] = "350	22884"
	tCharacterCarnival_ELog["Cost"][3326956] = "350	22885"
	tCharacterCarnival_ELog["Cost"][3326957] = "350	22886"
	tCharacterCarnival_ELog["Cost"][3326958] = "350	22887"
	tCharacterCarnival_ELog["Cost"][3326959] = "350	22888"
	tCharacterCarnival_ELog["Buy"] = {}
	tCharacterCarnival_ELog["Buy"][1] = "350	22889"
	tCharacterCarnival_ELog["Buy"][2] = "350	22890"
	tCharacterCarnival_ELog["Buy"][3] = "350	22891"
	tCharacterCarnival_ELog["Buy"][4] = "350	22892"
	tCharacterCarnival_ELog["Buy"][5] = "350	22893"
	
local tCharacterCarnival_Stc = {}
	--提交5种火焰次数
	tCharacterCarnival_Stc[1] = {}
	tCharacterCarnival_Stc[1]["Event"] = 209
	tCharacterCarnival_Stc[1]["Type"] = 86
	tCharacterCarnival_Stc[1]["Limit"] = 10
	--获得火焰？次数
	tCharacterCarnival_Stc[2] = {}
	tCharacterCarnival_Stc[2]["Event"] = 209
	tCharacterCarnival_Stc[2]["Type"] = 87
	tCharacterCarnival_Stc[2]["Limit"] = 50
	tCharacterCarnival_Stc[2]["VipLimit"] = 80
	
local tCharacterCarnival_Reward = {}
	-- ===火焰“?”
	-- ===索引: tCharacterCarnival_Reward[3326945]
	-- ===删除: 3326945,1
	-- ===EMoneyLog: 350,22852
	tCharacterCarnival_Reward[3326945] = {}
	tCharacterCarnival_Reward[3326945]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCharacterCarnival_Reward[3326945]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326945]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326945]["DeleteItem"][1]["Id"] = 3326945 -- 【库】火焰“?”[属性:8]
	tCharacterCarnival_Reward[3326945]["LogId"] = 12001738
	-- tCharacterCarnival_Reward[3326945]["EmoneyLog"] = "350	22852	0	0	1	"
	-- 火焰“E” - 24.75%
	tCharacterCarnival_Reward[3326945][1] = {}
	tCharacterCarnival_Reward[3326945][1]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326945][1]["ItemChance"] = 2475
	tCharacterCarnival_Reward[3326945][1]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326945][1]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326945][1]["RewardItem"][1]["Id"] = 3326940 -- 火焰“E”[3326940][属性:8][叠加:10000][金币:0], 【表格】火焰“E”
	tCharacterCarnival_Reward[3326945][1]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“E”*1
	tCharacterCarnival_Reward[3326945][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326945][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326945][1]["RewardEffect"]["Effect"] = "angelwing"
	tCharacterCarnival_Reward[3326945][1]["EmoneyLog"] = "350	22852	0	0	1	"
	-- 火焰“N” - 24.75%
	tCharacterCarnival_Reward[3326945][2] = {}
	tCharacterCarnival_Reward[3326945][2]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326945][2]["ItemChance"] = 2475
	tCharacterCarnival_Reward[3326945][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326945][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326945][2]["RewardItem"][1]["Id"] = 3326941 -- 火焰“N”[3326941][属性:8][叠加:10000][金币:0], 【表格】火焰“N”
	tCharacterCarnival_Reward[3326945][2]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“N”*1
	tCharacterCarnival_Reward[3326945][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326945][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326945][2]["RewardEffect"]["Effect"] = "angelwing"
	tCharacterCarnival_Reward[3326945][2]["EmoneyLog"] = "350	22852	0	0	1	"
			-- 【动态掩码（53899, data0）】全服限量:（8000）, 超限给编号（1）-
	tCharacterCarnival_Reward[3326945][2]["GlobalId"] = 53899
	tCharacterCarnival_Reward[3326945][2]["Pos"] = 0
	tCharacterCarnival_Reward[3326945][2]["MaxData"] = 8000
	tCharacterCarnival_Reward[3326945][2]["FullIndex"] = 1
	-- 火焰“J” - 1%
	tCharacterCarnival_Reward[3326945][3] = {}
	tCharacterCarnival_Reward[3326945][3]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326945][3]["ItemChance"] = 100
	tCharacterCarnival_Reward[3326945][3]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326945][3]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326945][3]["RewardItem"][1]["Id"] = 3326942 -- 火焰“J”[3326942][属性:8][叠加:10000][金币:0], 【表格】火焰“J”
	tCharacterCarnival_Reward[3326945][3]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“J”*1
	tCharacterCarnival_Reward[3326945][3]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326945][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326945][3]["RewardEffect"]["Effect"] = "angelwing"
	tCharacterCarnival_Reward[3326945][3]["EmoneyLog"] = "350	22852	0	0	1	"
			-- 【动态掩码（53899, data1）】全服限量:（10）, 超限给编号（1）-
	tCharacterCarnival_Reward[3326945][3]["GlobalId"] = 53899
	tCharacterCarnival_Reward[3326945][3]["Pos"] = 1
	tCharacterCarnival_Reward[3326945][3]["MaxData"] = 10
	tCharacterCarnival_Reward[3326945][3]["FullIndex"] = 1
			-- 【stc（209,85）】1天（零点重置）1个
	tCharacterCarnival_Reward[3326945][3]["EventType"] = 209
	tCharacterCarnival_Reward[3326945][3]["DataType"] = 85
	tCharacterCarnival_Reward[3326945][3]["RewardDelay"] = 1
	tCharacterCarnival_Reward[3326945][3]["RewardTimeType"] = 4
	tCharacterCarnival_Reward[3326945][3]["RewardData"] = 1
	-- 火焰“O” - 24.75%
	tCharacterCarnival_Reward[3326945][4] = {}
	tCharacterCarnival_Reward[3326945][4]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326945][4]["ItemChance"] = 2475
	tCharacterCarnival_Reward[3326945][4]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326945][4]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326945][4]["RewardItem"][1]["Id"] = 3326943 -- 火焰“O”[3326943][属性:8][叠加:10000][金币:0], 【表格】火焰“O”
	tCharacterCarnival_Reward[3326945][4]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“O”*1
	tCharacterCarnival_Reward[3326945][4]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326945][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326945][4]["RewardEffect"]["Effect"] = "angelwing"
	tCharacterCarnival_Reward[3326945][4]["EmoneyLog"] = "350	22852	0	0	1	"
			-- 【动态掩码（53899, data2）】全服限量:（10000）, 超限给编号（1）-
	tCharacterCarnival_Reward[3326945][4]["GlobalId"] = 53899
	tCharacterCarnival_Reward[3326945][4]["Pos"] = 2
	tCharacterCarnival_Reward[3326945][4]["MaxData"] = 10000
	tCharacterCarnival_Reward[3326945][4]["FullIndex"] = 1
	-- 火焰“Y” - 24.75%
	tCharacterCarnival_Reward[3326945][5] = {}
	tCharacterCarnival_Reward[3326945][5]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326945][5]["ItemChance"] = 2475
	tCharacterCarnival_Reward[3326945][5]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326945][5]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326945][5]["RewardItem"][1]["Id"] = 3326944 -- 火焰“Y”[3326944][属性:8][叠加:10000][金币:0], 【表格】火焰“Y”
	tCharacterCarnival_Reward[3326945][5]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“Y”*1
	tCharacterCarnival_Reward[3326945][5]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326945][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326945][5]["RewardEffect"]["Effect"] = "angelwing"
	tCharacterCarnival_Reward[3326945][5]["EmoneyLog"] = "350	22852	0	0	1	"
			-- 【动态掩码（53899, data3）】全服限量:（10000）, 超限给编号（1）-
	tCharacterCarnival_Reward[3326945][5]["GlobalId"] = 53899
	tCharacterCarnival_Reward[3326945][5]["Pos"] = 3
	tCharacterCarnival_Reward[3326945][5]["MaxData"] = 10000
	tCharacterCarnival_Reward[3326945][5]["FullIndex"] = 1


	tCharacterCarnival_Reward[3326946] = {}
	-- ===“E、N”火焰盲盒
	-- ===索引: tCharacterCarnival_Reward[3326946]
	-- ===删除: 3326946,1
	tCharacterCarnival_Reward[3326946]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCharacterCarnival_Reward[3326946]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326946]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326946]["DeleteItem"][1]["Id"] = 3326946 -- 【库】“E、N”火焰盲盒[属性:11]
	tCharacterCarnival_Reward[3326946]["LogId"] = 12001738
	-- 火焰“E” - 50%
	tCharacterCarnival_Reward[3326946][1] = {}
	tCharacterCarnival_Reward[3326946][1]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326946][1]["ItemChance"] = 5000
	tCharacterCarnival_Reward[3326946][1]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326946][1]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326946][1]["RewardItem"][1]["Id"] = 3326940 -- 火焰“E”[3326940][属性:8][叠加:10000][金币:0], 【表格】火焰“E”
	tCharacterCarnival_Reward[3326946][1]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“E”*1
	tCharacterCarnival_Reward[3326946][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326946][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326946][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 火焰“N” - 50%
	tCharacterCarnival_Reward[3326946][2] = {}
	tCharacterCarnival_Reward[3326946][2]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326946][2]["ItemChance"] = 5000
	tCharacterCarnival_Reward[3326946][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326946][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326946][2]["RewardItem"][1]["Id"] = 3326941 -- 火焰“N”[3326941][属性:8][叠加:10000][金币:0], 【表格】火焰“N”
	tCharacterCarnival_Reward[3326946][2]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“N”*1
	tCharacterCarnival_Reward[3326946][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326946][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326946][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326947] = {}
	-- ===“J、O、Y”火焰盲盒
	-- ===索引: tCharacterCarnival_Reward[3326947]
	-- ===删除: 3326947,1
	tCharacterCarnival_Reward[3326947]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCharacterCarnival_Reward[3326947]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326947]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326947]["DeleteItem"][1]["Id"] = 3326947 -- 【库】“J、O、Y”火焰盲盒[属性:11]
	tCharacterCarnival_Reward[3326947]["LogId"] = 12001738
	-- 火焰“J” - 5%
	tCharacterCarnival_Reward[3326947][1] = {}
	tCharacterCarnival_Reward[3326947][1]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326947][1]["ItemChance"] = 500
	tCharacterCarnival_Reward[3326947][1]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326947][1]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326947][1]["RewardItem"][1]["Id"] = 3326942 -- 火焰“J”[3326942][属性:8][叠加:10000][金币:0], 【表格】火焰“J”
	tCharacterCarnival_Reward[3326947][1]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“J”*1
	tCharacterCarnival_Reward[3326947][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326947][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326947][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53899, data4）】全服限量:（20）, 超限给编号（2）-
	tCharacterCarnival_Reward[3326947][1]["GlobalId"] = 53899
	tCharacterCarnival_Reward[3326947][1]["Pos"] = 4
	tCharacterCarnival_Reward[3326947][1]["MaxData"] = 20
	tCharacterCarnival_Reward[3326947][1]["FullIndex"] = 2
	-- 火焰“O” - 47.5%
	tCharacterCarnival_Reward[3326947][2] = {}
	tCharacterCarnival_Reward[3326947][2]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326947][2]["ItemChance"] = 4750
	tCharacterCarnival_Reward[3326947][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326947][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326947][2]["RewardItem"][1]["Id"] = 3326943 -- 火焰“O”[3326943][属性:8][叠加:10000][金币:0], 【表格】火焰“O”
	tCharacterCarnival_Reward[3326947][2]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“O”*1
	tCharacterCarnival_Reward[3326947][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326947][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326947][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 火焰“Y” - 47.5%
	tCharacterCarnival_Reward[3326947][3] = {}
	tCharacterCarnival_Reward[3326947][3]["RandomItemChanceType"] = 2
	tCharacterCarnival_Reward[3326947][3]["ItemChance"] = 4750
	tCharacterCarnival_Reward[3326947][3]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326947][3]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326947][3]["RewardItem"][1]["Id"] = 3326944 -- 火焰“Y”[3326944][属性:8][叠加:10000][金币:0], 【表格】火焰“Y”
	tCharacterCarnival_Reward[3326947][3]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“Y”*1
	tCharacterCarnival_Reward[3326947][3]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326947][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326947][3]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326948] = {}
	-- ===1级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326948][1]
	-- ===删除: 3326948,1
	-- ===NewEMoneyLog: 350,22865
	tCharacterCarnival_Reward[3326948][1] = {}
	tCharacterCarnival_Reward[3326948][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326948][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326948][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326948][1]["DeleteItem"][1]["Id"] = 3326948 -- 【库】1级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326948][1]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326948][1]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tCharacterCarnival_Reward[3326948][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22865"
	tCharacterCarnival_Reward[3326948][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326948][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326948][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326948][2] = {}
	-- ===1级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326948][2]
	-- ===删除: 3326948,1
	tCharacterCarnival_Reward[3326948][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326948][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326948][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326948][2]["DeleteItem"][1]["Id"] = 3326948 -- 【库】1级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326948][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326948][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326948][2]["RewardItem"][1]["Id"] = 3326949 -- 2级天石（赠）聚宝盆[3326949][属性:9][叠加:10000][金币:0], 【表格】2级天石（赠）聚宝盆
	tCharacterCarnival_Reward[3326948][2]["RewardItem"][1]["Attr"] = "0 1" -- 2级天石（赠）聚宝盆*1
	tCharacterCarnival_Reward[3326948][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326948][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326948][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326949] = {}
	-- ===2级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326949][1]
	-- ===删除: 3326949,1
	-- ===NewEMoneyLog: 350,22866
	tCharacterCarnival_Reward[3326949][1] = {}
	tCharacterCarnival_Reward[3326949][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326949][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326949][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326949][1]["DeleteItem"][1]["Id"] = 3326949 -- 【库】2级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326949][1]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326949][1]["RewardEMoneyMono"]["Value"] = 150 -- 天石（赠）, 【需求】150天石（赠）
	tCharacterCarnival_Reward[3326949][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22866"
	tCharacterCarnival_Reward[3326949][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326949][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326949][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326949][2] = {}
	-- ===2级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326949][2]
	-- ===删除: 3326949,1
	tCharacterCarnival_Reward[3326949][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326949][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326949][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326949][2]["DeleteItem"][1]["Id"] = 3326949 -- 【库】2级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326949][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326949][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326949][2]["RewardItem"][1]["Id"] = 3326950 -- 3级天石（赠）聚宝盆[3326950][属性:9][叠加:10000][金币:0], 【表格】3级天石（赠）聚宝盆
	tCharacterCarnival_Reward[3326949][2]["RewardItem"][1]["Attr"] = "0 1" -- 3级天石（赠）聚宝盆*1
	tCharacterCarnival_Reward[3326949][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326949][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326949][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326950] = {}
	-- ===3级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326950][1]
	-- ===删除: 3326950,1
	-- ===NewEMoneyLog: 350,22867
	tCharacterCarnival_Reward[3326950][1] = {}
	tCharacterCarnival_Reward[3326950][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326950][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326950][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326950][1]["DeleteItem"][1]["Id"] = 3326950 -- 【库】3级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326950][1]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326950][1]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tCharacterCarnival_Reward[3326950][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22867"
	tCharacterCarnival_Reward[3326950][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326950][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326950][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326950][2] = {}
	-- ===3级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326950][2]
	-- ===删除: 3326950,1
	tCharacterCarnival_Reward[3326950][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326950][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326950][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326950][2]["DeleteItem"][1]["Id"] = 3326950 -- 【库】3级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326950][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326950][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326950][2]["RewardItem"][1]["Id"] = 3326951 -- 4级天石（赠）聚宝盆[3326951][属性:9][叠加:10000][金币:0], 【表格】4级天石（赠）聚宝盆
	tCharacterCarnival_Reward[3326950][2]["RewardItem"][1]["Attr"] = "0 1" -- 4级天石（赠）聚宝盆*1
	tCharacterCarnival_Reward[3326950][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326950][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326950][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326951] = {}
	-- ===4级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326951][1]
	-- ===删除: 3326951,1
	-- ===NewEMoneyLog: 350,22868
	tCharacterCarnival_Reward[3326951][1] = {}
	tCharacterCarnival_Reward[3326951][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326951][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326951][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326951][1]["DeleteItem"][1]["Id"] = 3326951 -- 【库】4级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326951][1]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326951][1]["RewardEMoneyMono"]["Value"] = 800 -- 天石（赠）, 【需求】800天石（赠）
	tCharacterCarnival_Reward[3326951][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22868"
	tCharacterCarnival_Reward[3326951][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326951][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326951][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326951][2] = {}
	-- ===4级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326951][2]
	-- ===删除: 3326951,1
	tCharacterCarnival_Reward[3326951][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326951][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326951][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326951][2]["DeleteItem"][1]["Id"] = 3326951 -- 【库】4级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326951][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326951][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326951][2]["RewardItem"][1]["Id"] = 3326952 -- 5级天石（赠）聚宝盆[3326952][属性:9][叠加:10000][金币:0], 【表格】5级天石（赠）聚宝盆
	tCharacterCarnival_Reward[3326951][2]["RewardItem"][1]["Attr"] = "0 1" -- 5级天石（赠）聚宝盆*1
	tCharacterCarnival_Reward[3326951][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326951][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326951][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326952] = {}
	-- ===5级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326952][1]
	-- ===删除: 3326952,1
	-- ===NewEMoneyLog: 350,22869
	tCharacterCarnival_Reward[3326952][1] = {}
	tCharacterCarnival_Reward[3326952][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326952][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326952][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326952][1]["DeleteItem"][1]["Id"] = 3326952 -- 【库】5级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326952][1]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326952][1]["RewardEMoneyMono"]["Value"] = 1600 -- 天石（赠）, 【需求】1600天石（赠）
	tCharacterCarnival_Reward[3326952][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22869"
	tCharacterCarnival_Reward[3326952][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326952][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326952][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326952][2] = {}
	-- ===5级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326952][2]
	-- ===删除: 3326952,1
	tCharacterCarnival_Reward[3326952][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326952][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326952][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326952][2]["DeleteItem"][1]["Id"] = 3326952 -- 【库】5级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326952][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326952][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326952][2]["RewardItem"][1]["Id"] = 3326953 -- 6级天石（赠）聚宝盆[3326953][属性:9][叠加:10000][金币:0], 【表格】6级天石（赠）聚宝盆
	tCharacterCarnival_Reward[3326952][2]["RewardItem"][1]["Attr"] = "0 1" -- 6级天石（赠）聚宝盆*1
	tCharacterCarnival_Reward[3326952][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326952][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326952][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326953] = {}
	-- ===6级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326953][1]
	-- ===删除: 3326953,1
	-- ===NewEMoneyLog: 350,22870
	tCharacterCarnival_Reward[3326953][1] = {}
	tCharacterCarnival_Reward[3326953][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326953][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326953][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326953][1]["DeleteItem"][1]["Id"] = 3326953 -- 【库】6级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326953][1]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326953][1]["RewardEMoneyMono"]["Value"] = 2500 -- 天石（赠）, 【需求】2500天石（赠）
	tCharacterCarnival_Reward[3326953][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22870"
	tCharacterCarnival_Reward[3326953][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326953][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326953][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326953][2] = {}
	-- ===6级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326953][2]
	-- ===删除: 3326953,1
	tCharacterCarnival_Reward[3326953][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326953][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326953][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326953][2]["DeleteItem"][1]["Id"] = 3326953 -- 【库】6级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326953][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326953][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326953][2]["RewardItem"][1]["Id"] = 3326954 -- 7级天石（赠）聚宝盆[3326954][属性:9][叠加:10000][金币:0], 【表格】7级天石（赠）聚宝盆
	tCharacterCarnival_Reward[3326953][2]["RewardItem"][1]["Attr"] = "0 1" -- 7级天石（赠）聚宝盆*1
	tCharacterCarnival_Reward[3326953][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326953][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326953][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326954] = {}
	-- ===7级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326954][1]
	-- ===删除: 3326954,1
	-- ===NewEMoneyLog: 350,22871
	tCharacterCarnival_Reward[3326954][1] = {}
	tCharacterCarnival_Reward[3326954][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326954][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326954][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326954][1]["DeleteItem"][1]["Id"] = 3326954 -- 【库】7级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326954][1]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326954][1]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000天石（赠）
	tCharacterCarnival_Reward[3326954][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "350	22871"
	tCharacterCarnival_Reward[3326954][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326954][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326954][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326954][2] = {}
	-- ===7级天石（赠）聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326954][2]
	-- ===删除: 3326954,1
	-- ===NewEMoneyLog: 1000,1272
	tCharacterCarnival_Reward[3326954][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326954][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326954][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326954][2]["DeleteItem"][1]["Id"] = 3326954 -- 【库】7级天石（赠）聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326954][2]["RewardEMoneyMono"] = {}
	tCharacterCarnival_Reward[3326954][2]["RewardEMoneyMono"]["Value"] = 10000 -- 天石（赠）, 【需求】10000天石（赠）
	tCharacterCarnival_Reward[3326954][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1272"
	tCharacterCarnival_Reward[3326954][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326954][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326954][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326955] = {}
	-- ===1级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326955][1]
	-- ===删除: 3326955,1
	-- ===EMoneyLog: 350,22879
	tCharacterCarnival_Reward[3326955][1] = {}
	tCharacterCarnival_Reward[3326955][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326955][1]["EmoneyLog"] = "350	22879	0	0	1	"
	tCharacterCarnival_Reward[3326955][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326955][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326955][1]["DeleteItem"][1]["Id"] = 3326955 -- 【库】1级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326955][1]["RewardMoney"] = {}
	tCharacterCarnival_Reward[3326955][1]["RewardMoney"]["Value"] = 10000 -- 金币, 【需求】10000金币
	tCharacterCarnival_Reward[3326955][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326955][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326955][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326955][2] = {}
	-- ===1级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326955][2]
	-- ===删除: 3326955,1
	tCharacterCarnival_Reward[3326955][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326955][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326955][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326955][2]["DeleteItem"][1]["Id"] = 3326955 -- 【库】1级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326955][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326955][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326955][2]["RewardItem"][1]["Id"] = 3326956 -- 2级金币聚宝盆[3326956][属性:9][叠加:10000][金币:0], 【表格】2级金币聚宝盆
	tCharacterCarnival_Reward[3326955][2]["RewardItem"][1]["Attr"] = "0 1" -- 2级金币聚宝盆*1
	tCharacterCarnival_Reward[3326955][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326955][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326955][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326956] = {}
	-- ===2级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326956][1]
	-- ===删除: 3326956,1
	-- ===EMoneyLog: 350,22880
	tCharacterCarnival_Reward[3326956][1] = {}
	tCharacterCarnival_Reward[3326956][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326956][1]["EmoneyLog"] = "350	22880	0	0	1	"
	tCharacterCarnival_Reward[3326956][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326956][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326956][1]["DeleteItem"][1]["Id"] = 3326956 -- 【库】2级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326956][1]["RewardMoney"] = {}
	tCharacterCarnival_Reward[3326956][1]["RewardMoney"]["Value"] = 160000 -- 金币, 【需求】160000金币
	tCharacterCarnival_Reward[3326956][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326956][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326956][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326956][2] = {}
	-- ===2级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326956][2]
	-- ===删除: 3326956,1
	tCharacterCarnival_Reward[3326956][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326956][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326956][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326956][2]["DeleteItem"][1]["Id"] = 3326956 -- 【库】2级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326956][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326956][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326956][2]["RewardItem"][1]["Id"] = 3326957 -- 3级金币聚宝盆[3326957][属性:9][叠加:10000][金币:0], 【表格】3级金币聚宝盆
	tCharacterCarnival_Reward[3326956][2]["RewardItem"][1]["Attr"] = "0 1" -- 3级金币聚宝盆*1
	tCharacterCarnival_Reward[3326956][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326956][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326956][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326957] = {}
	-- ===3级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326957][1]
	-- ===删除: 3326957,1
	-- ===EMoneyLog: 350,22881
	tCharacterCarnival_Reward[3326957][1] = {}
	tCharacterCarnival_Reward[3326957][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326957][1]["EmoneyLog"] = "350	22881	0	0	1	"
	tCharacterCarnival_Reward[3326957][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326957][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326957][1]["DeleteItem"][1]["Id"] = 3326957 -- 【库】3级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326957][1]["RewardMoney"] = {}
	tCharacterCarnival_Reward[3326957][1]["RewardMoney"]["Value"] = 430000 -- 金币, 【需求】430000金币
	tCharacterCarnival_Reward[3326957][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326957][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326957][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326957][2] = {}
	-- ===3级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326957][2]
	-- ===删除: 3326957,1
	tCharacterCarnival_Reward[3326957][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326957][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326957][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326957][2]["DeleteItem"][1]["Id"] = 3326957 -- 【库】3级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326957][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326957][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326957][2]["RewardItem"][1]["Id"] = 3326958 -- 4级金币聚宝盆[3326958][属性:9][叠加:10000][金币:0], 【表格】4级金币聚宝盆
	tCharacterCarnival_Reward[3326957][2]["RewardItem"][1]["Attr"] = "0 1" -- 4级金币聚宝盆*1
	tCharacterCarnival_Reward[3326957][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326957][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326957][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326958] = {}
	-- ===4级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326958][1]
	-- ===删除: 3326958,1
	-- ===EMoneyLog: 350,22882
	tCharacterCarnival_Reward[3326958][1] = {}
	tCharacterCarnival_Reward[3326958][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326958][1]["EmoneyLog"] = "350	22882	0	0	1	"
	tCharacterCarnival_Reward[3326958][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326958][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326958][1]["DeleteItem"][1]["Id"] = 3326958 -- 【库】4级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326958][1]["RewardMoney"] = {}
	tCharacterCarnival_Reward[3326958][1]["RewardMoney"]["Value"] = 930000 -- 金币, 【需求】930000金币
	tCharacterCarnival_Reward[3326958][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326958][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326958][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326958][2] = {}
	-- ===4级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326958][2]
	-- ===删除: 3326958,1
	tCharacterCarnival_Reward[3326958][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326958][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326958][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326958][2]["DeleteItem"][1]["Id"] = 3326958 -- 【库】4级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326958][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326958][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326958][2]["RewardItem"][1]["Id"] = 3326959 -- 5级金币聚宝盆[3326959][属性:9][叠加:10000][金币:0], 【表格】5级金币聚宝盆
	tCharacterCarnival_Reward[3326958][2]["RewardItem"][1]["Attr"] = "0 1" -- 5级金币聚宝盆*1
	tCharacterCarnival_Reward[3326958][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326958][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326958][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326959] = {}
	-- ===5级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326959][1]
	-- ===删除: 3326959,1
	-- ===EMoneyLog: 350,22883
	tCharacterCarnival_Reward[3326959][1] = {}
	tCharacterCarnival_Reward[3326959][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326959][1]["EmoneyLog"] = "350	22883	0	0	1	"
	tCharacterCarnival_Reward[3326959][1]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326959][1]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326959][1]["DeleteItem"][1]["Id"] = 3326959 -- 【库】5级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326959][1]["RewardMoney"] = {}
	tCharacterCarnival_Reward[3326959][1]["RewardMoney"]["Value"] = 2000000 -- 金币, 【需求】2000000金币
	tCharacterCarnival_Reward[3326959][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326959][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326959][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326959][2] = {}
	-- ===5级金币聚宝盆
	-- ===索引: tCharacterCarnival_Reward[3326959][2]
	-- ===删除: 3326959,1
	tCharacterCarnival_Reward[3326959][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326959][2]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326959][2]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326959][2]["DeleteItem"][1]["Id"] = 3326959 -- 【库】5级金币聚宝盆[属性:9]
	tCharacterCarnival_Reward[3326959][2]["RewardMoney"] = {}
	tCharacterCarnival_Reward[3326959][2]["RewardMoney"]["Value"] = 4000000 -- 金币, 【需求】4000000金币
	tCharacterCarnival_Reward[3326959][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326959][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326959][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[25597] = {}
	-- ===红脸商人商品
	-- ===索引: tCharacterCarnival_Reward[25597][1]
	tCharacterCarnival_Reward[25597][1] = {}
	tCharacterCarnival_Reward[25597][1]["LogId"] = 12001738
	tCharacterCarnival_Reward[25597][1]["RewardItem"] = {}
	tCharacterCarnival_Reward[25597][1]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[25597][1]["RewardItem"][1]["Id"] = 3326946 -- “E、N”火焰盲盒[3326946][属性:11][叠加:10000][金币:0], 【表格】“E、N”火焰盲盒
	tCharacterCarnival_Reward[25597][1]["RewardItem"][1]["Attr"] = "0 1" -- “E、N”火焰盲盒*1
	tCharacterCarnival_Reward[25597][1]["RewardEffect"] = {}
	tCharacterCarnival_Reward[25597][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[25597][1]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[25597][2] = {}
	-- ===红脸商人商品
	-- ===索引: tCharacterCarnival_Reward[25597][2]
	tCharacterCarnival_Reward[25597][2]["LogId"] = 12001738
	tCharacterCarnival_Reward[25597][2]["RewardItem"] = {}
	tCharacterCarnival_Reward[25597][2]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[25597][2]["RewardItem"][1]["Id"] = 3326947 -- “J、O、Y”火焰盲盒[3326947][属性:11][叠加:10000][金币:0], 【表格】“J、O、Y”火焰盲盒
	tCharacterCarnival_Reward[25597][2]["RewardItem"][1]["Attr"] = "0 1" -- “J、O、Y”火焰盲盒*1
	tCharacterCarnival_Reward[25597][2]["RewardEffect"] = {}
	tCharacterCarnival_Reward[25597][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[25597][2]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[25597][3] = {}
	-- ===红脸商人商品
	-- ===索引: tCharacterCarnival_Reward[25597][3]
	tCharacterCarnival_Reward[25597][3]["LogId"] = 12001738
	tCharacterCarnival_Reward[25597][3]["RewardItem"] = {}
	tCharacterCarnival_Reward[25597][3]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[25597][3]["RewardItem"][1]["Id"] = 700073 -- TortoiseGem[700073][属性:0][叠加:0][金币:0], 【表格】优质玄元宝石（赠）
	tCharacterCarnival_Reward[25597][3]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseGem（赠）*1
	tCharacterCarnival_Reward[25597][3]["RewardEffect"] = {}
	tCharacterCarnival_Reward[25597][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[25597][3]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[25597][4] = {}
	-- ===红脸商人商品
	-- ===索引: tCharacterCarnival_Reward[25597][4]
	tCharacterCarnival_Reward[25597][4]["LogId"] = 12001738
	tCharacterCarnival_Reward[25597][4]["RewardItem"] = {}
	tCharacterCarnival_Reward[25597][4]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[25597][4]["RewardItem"][1]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0], 【表格】超大固化石（赠）
	tCharacterCarnival_Reward[25597][4]["RewardItem"][1]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tCharacterCarnival_Reward[25597][4]["RewardEffect"] = {}
	tCharacterCarnival_Reward[25597][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[25597][4]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[25597][5] = {}
	-- ===红脸商人商品
	-- ===索引: tCharacterCarnival_Reward[25597][5]
	tCharacterCarnival_Reward[25597][5]["LogId"] = 12001738
	tCharacterCarnival_Reward[25597][5]["RewardItem"] = {}
	tCharacterCarnival_Reward[25597][5]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[25597][5]["RewardItem"][1]["Id"] = 720049 -- +6RandomSteedPack[720049][属性:9][叠加:0][金币:0], 【表格】+6RandomSteedPack（赠）
	tCharacterCarnival_Reward[25597][5]["RewardItem"][1]["Attr"] = "0 1 3" -- +6RandomSteedPack（赠）*1
	tCharacterCarnival_Reward[25597][5]["RewardEffect"] = {}
	tCharacterCarnival_Reward[25597][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[25597][5]["RewardEffect"]["Effect"] = "angelwing"

	tCharacterCarnival_Reward[3326974] = {}
	-- ===RockingRomanceBag
	-- ===索引: tCharacterCarnival_Reward[3326974]
	-- ===删除: 3326974,1
	tCharacterCarnival_Reward[3326974]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326974]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326974]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326974]["DeleteItem"][1]["Id"] = 3326974 -- 【库】RockingRomanceBag[属性:9]
	tCharacterCarnival_Reward[3326974]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326974]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326974]["RewardItem"][1]["Id"] = 195595 -- RockingRomance[195595][属性:0][叠加:0][金币:0], 【表格】90天时效RockingRomance（赠）
	tCharacterCarnival_Reward[3326974]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑RockingRomance（赠）*1
	tCharacterCarnival_Reward[3326974]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326974]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326974]["RewardEffect"]["Effect"] = "angelwing"


	tCharacterCarnival_Reward[3326975] = {}
	-- ===FavoredTrainingPillPack
	-- ===索引: tCharacterCarnival_Reward[3326975]
	-- ===删除: 3326975,1
	tCharacterCarnival_Reward[3326975]["LogId"] = 12001738
	tCharacterCarnival_Reward[3326975]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3326975]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3326975]["DeleteItem"][1]["Id"] = 3326975 -- 【库】FavoredTrainingPillPack[属性:9]
	tCharacterCarnival_Reward[3326975]["RewardItem"] = {}
	tCharacterCarnival_Reward[3326975]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3326975]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】FavoredTrainingPill*100（赠）
	tCharacterCarnival_Reward[3326975]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100（[错误]物品数量超10个）
	tCharacterCarnival_Reward[3326975]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3326975]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3326975]["RewardEffect"]["Effect"] = "angelwing"

	tCharacterCarnival_Reward[3327109] = {}
	-- ===FieryLion(B)Pack
	-- ===索引: tCharacterCarnival_Reward[3327109]
	-- ===删除: 3327109,1
	tCharacterCarnival_Reward[3327109]["LogId"] = 12001738
	tCharacterCarnival_Reward[3327109]["DeleteItem"] = {}
	tCharacterCarnival_Reward[3327109]["DeleteItem"][1] = {}
	tCharacterCarnival_Reward[3327109]["DeleteItem"][1]["Id"] = 3327109 -- 【库】FieryLion(B)Pack[属性:9]
	tCharacterCarnival_Reward[3327109]["RewardItem"] = {}
	tCharacterCarnival_Reward[3327109]["RewardItem"][1] = {}
	tCharacterCarnival_Reward[3327109]["RewardItem"][1]["Id"] = 200445 -- FieryLion[200445][属性:0][叠加:0][金币:0], 
	tCharacterCarnival_Reward[3327109]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- FieryLion
	tCharacterCarnival_Reward[3327109]["RewardEffect"] = {}
	tCharacterCarnival_Reward[3327109]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward[3327109]["RewardEffect"]["Effect"] = "angelwing"

	tCharacterCarnival_Reward["Attend"] = {}
	-- ===获得火焰“?”
	-- ===索引: tCharacterCarnival_Reward["Attend"]
	tCharacterCarnival_Reward["Attend"]["LogId"] = 12001738
	tCharacterCarnival_Reward["Attend"]["RewardItem"] = {}
	tCharacterCarnival_Reward["Attend"]["RewardItem"][1] = {}
	tCharacterCarnival_Reward["Attend"]["RewardItem"][1]["Id"] = 3326945 -- 火焰“?”[3326945][属性:8][叠加:10000][金币:0], 【表格】火焰“?”
	tCharacterCarnival_Reward["Attend"]["RewardItem"][1]["Attr"] = "0 1" -- 火焰“?”*1
	tCharacterCarnival_Reward["Attend"]["RewardEffect"] = {}
	tCharacterCarnival_Reward["Attend"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCharacterCarnival_Reward["Attend"]["RewardEffect"]["Effect"] = "angelwing"




--------------------------------------------逻辑部分配置--------------------------------------------
--礼包打开
function CharacterCarnival_OpenBag(nItemId, nIndex, nFlag)
	--无奖励配置
	if tCharacterCarnival_Reward[nItemId] == nil then
		return
	end
	
	if tCharacterCarnival_Reward[nItemId][nIndex] == nil then
		return
	end
	
	local nUserId = Get_UserId()
	
	--判断是否需要天石
	if nIndex == 2 then
		--是否需要二次确认
		if nFlag == nil then
			LinkItemGossipFunc_New(nItemId,"2-1")
			return
		end
		
		local nEMoney = tCharacterCarnival_Cont["Cost"][nItemId]
		
		--天石不足
		if Get_UserEMoney(nUserId) < nEMoney then
			Sys_MsgBox(tCharacterCarnival_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
			return
		end
		
		--赠点上限
		if tCharacterCarnival_Reward[nItemId][nIndex]["RewardEMoneyMono"] ~= nil then
			if not RewardTemplate_EMoneyMonoLimit(tCharacterCarnival_Reward[nItemId][nIndex]["RewardEMoneyMono"],nUserId) then
				return
			end
		end
		
		--银两上限
		if tCharacterCarnival_Reward[nItemId][nIndex]["RewardMoney"] ~= nil then
			if not RewardTemplate_MoneyLimit(tCharacterCarnival_Reward[nItemId][nIndex]["RewardMoney"],nUserId) then
				return
			end
		end
		
		--背包上限
		if tCharacterCarnival_Reward[nItemId][nIndex]["RewardItem"] ~= nil then
			if not RewardTemplate_CheckSpace(tCharacterCarnival_Reward[nItemId][nIndex], nUserId) then
				return
			end
		end
		
		--物品存在
		if not Item_ChkMulItem(nItemId,nItemId,1,nil,nil,nUserId) then
			return
		end
		
		--扣除天石
		local sEmoneyBuyLog = tCharacterCarnival_ELog["Cost"][nItemId]
		
		if not User_AddEMoneyAndLog(-nEMoney,sEmoneyBuyLog,nUserId) then
			Sys_MsgBox(tCharacterCarnival_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
			return
		end
	end
	
	RewardTemplate_UseItemAndMsg(tCharacterCarnival_Reward[nItemId][nIndex],nUserId)
end

--火焰兑换奖励
function CharacterCarnival_Exchange()
	local nNpcId = Get_NpcId()
	
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	User_OpenExchangeShop(nNpcId)
end

--提交5种火焰
function CharacterCarnival_Hand()
	local nNpcId = Get_NpcId()
	
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	
	local bFlag = true
	
	--检查背包是否有5种火焰
	for k,v in pairs(tCharacterCarnival_Cont["FireId"]) do
		if not Item_ChkItem(v,nil,nil,nUserId) then
			bFlag = false
		end
	end
	
	--未集齐一套
	if not bFlag then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	local nEvent = tCharacterCarnival_Stc[1]["Event"]
	local nType = tCharacterCarnival_Stc[1]["Type"]
	local nLimit = tCharacterCarnival_Stc[1]["Limit"]
	
	--提交已达上限
	if Task_ChkStcValue(nEvent,nType,">=",nLimit,nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end
	
	--扣除物品
	for k,v in pairs(tCharacterCarnival_Cont["FireId"]) do
		if not Item_DelItem(v,nil,nil,nUserId) then
			return
		end
	end
	
	--掩码+1
	if not Task_AddStatistic(nEvent,nType,1,1,nUserId) then
		return
	end
	
	--log
	Sys_SaveActionFestivalLog(tCharacterCarnival_Log["Hand"],nUserId)
	
	--Elog
	Sys_SaveEmoneyBuy(tCharacterCarnival_ELog["Hand"],nUserId)
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	tNpcGossip[nNpcId]["Text232"] = string.format(tCharacterCarnival_Text[nNpcId]["Text232"], nData)
	LinkNpcGossipFunc_New(nNpcId, "2-3")
end

--前往盛典第二会场
function CharacterCarnival_Web()
	local nNpcId = Get_NpcId()
	
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	local sPszParam = tCharacterCarnival_Cont["Web"]
	
	User_SendWebDialog(sPszParam,nUserId)
end

--移出红脸商人
function CharacterCarnival_Move(nIndex)
	--区分服务器
	local nGlobalId = tCharacterCarnival_Cont["Move"]["GlobalId"]
	
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	--活动时间
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		nIndex = 2
	end
	
	local nNpcId = tCharacterCarnival_Cont["Move"]["NpcId"]
	local nMapId = tCharacterCarnival_Cont["Move"][nIndex]["MapId"]
	local nPosX = tCharacterCarnival_Cont["Move"][nIndex]["PosX"]
	local nPosY = tCharacterCarnival_Cont["Move"][nIndex]["PosY"]
	local nNowMapId = Get_NpcMapID(nNpcId)
	
	--是否已经移出
	if nNowMapId ~= nMapId then
		Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
		
		--商人移出后限量清零
		if nIndex == 1 then
			Sys_ResetAllSynaGlobalData(tCharacterCarnival_Cont["Goods"]["GlobalId"])
		end
	end
end

--移出红脸商人
function CharacterCarnival_MoveOut()
	CharacterCarnival_Move(1)
end

--移入红脸商人到集中营
function CharacterCarnival_MoveIn()
	CharacterCarnival_Move(2)
end

--NPC判断
function CharacterCarnival_Chk(nNpcId)
	--活动时间后
	if CommonFunc_GetAfterActivityTime(tCharacterCarnival_Time["ActivityTime"]) then
		return false
	end
	
	--不在活动期间
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		tNpcGossip[nNpcId]["tOption1-1"] = {111}
		return true
	end
	
	--存储商品个数动态码
	local nGlobalId = tCharacterCarnival_Cont["Goods"]["GlobalId"]
	
	for i = 1, 5 do
		--花费天石
		local nCost = tCharacterCarnival_Cont["Goods"][i]["Cost"]
		--动态码位
		local nPos = tCharacterCarnival_Cont["Goods"][i]["Pos"]
		--限量
		local nLimit = tCharacterCarnival_Cont["Goods"][i]["Limit"]
		--剩余个数
		local nRemain = nLimit - Get_SysDynaGlobalData(nGlobalId,nPos)
		
		tNpcGossip[nNpcId]["Option11"..(i + 1)] = string.format(tCharacterCarnival_Text[nNpcId]["Option11"..(i + 1)], nCost, nRemain)
	end
	
	tNpcGossip[nNpcId]["tOption1-1"] = {112,113,114,115,116,117}
	return true
end

--购买商品
function CharacterCarnival_Buy(nIndex)
	local nNpcId = Get_NpcId()
	
	--不在活动期间
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local bTime = false
	
	--检查每天时间
	for k,v in pairs(tCharacterCarnival_Cont["BuyTime"]) do
		if Sys_ChkDayTime(v) then
			bTime = true
			break
		end
	end
	
	--不在购买时间
	if not bTime then
		LinkNpcGossipFunc_New(nNpcId, "2-5")
		return
	end
	
	local nUserId = Get_UserId()
	
	--当前选择的索引
	local nNowIndex = nIndex
	
	if nIndex == 0 then
		--没有玩家数据直接退出
		if tCharacterCarnival_Choose[nUserId] == nil then
			return
		end
		
		nNowIndex = tCharacterCarnival_Choose[nUserId]
	end
	
	local nCost = tCharacterCarnival_Cont["Goods"][nNowIndex]["Cost"]
	local nCostType = tCharacterCarnival_Cont["Goods"][nNowIndex]["CostType"]
	
	local bCost = true
	
	--判断是否消耗天石还是赠点
	if nCostType == 1 then
		if Get_UserEMoney(nUserId) < nCost then
			bCost = false
		end
	else
		if Get_UserMonoEMoney(nUserId) < nCost then
			bCost = false
		end
	end
	
	local sCostType = tCharacterCarnival_Text["Cost"][nCostType]
	
	--天石不足或者赠点不足
	if not bCost then
		tNpcGossip[nNpcId]["Text211"] = string.format(tCharacterCarnival_Text[nNpcId]["Text211"],sCostType)
		LinkNpcGossipFunc_New(nNpcId, "2-1")
		return
	end
	
	--存储商品个数动态码
	local nGlobalId = tCharacterCarnival_Cont["Goods"]["GlobalId"]
	local nPos = tCharacterCarnival_Cont["Goods"][nNowIndex]["Pos"]
	local nLimit = tCharacterCarnival_Cont["Goods"][nNowIndex]["Limit"]
	
	local nNowData = Get_SysDynaGlobalData(nGlobalId,nPos)
	
	--已达上限
	if nNowData >= nLimit then
		LinkNpcGossipFunc_New(nNpcId, "2-2")
		return
	end
	
	--背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tCharacterCarnival_Reward[nNpcId][nNowIndex], nUserId)
	
	if nSpace > 0 and not User_CheckLeftSpace(nSpace,nUserId) then
		LinkNpcGossipFunc_New(nNpcId, "2-4")
		return
	end
	
	--二次确认
	if nIndex ~= 0 then
		--记录玩家选择的商品
		tCharacterCarnival_Choose[nUserId] = nIndex
		
		local nItemId = tCharacterCarnival_Cont["Goods"][nIndex]["ItemId"]
		local sItemName = Get_ItemtypeName(nItemId)
		local sAttr = tCharacterCarnival_Reward[nNpcId][nIndex]["RewardItem"][1]["Attr"]
		
		if string.len(sAttr) > 3 then
			sItemName = sItemName..tCharacterCarnival_Text["Mono"]
		end
		
		tNpcGossip[nNpcId]["Text231"] = string.format(tCharacterCarnival_Text[nNpcId]["Text231"],nCost, sCostType, sItemName)
		LinkNpcGossipFunc_New(nNpcId, "2-3")
		return
	end
	
	local sEmoneyBuyLog = tCharacterCarnival_ELog["Buy"][nNowIndex]
	
	--扣除天石或赠点
	if nCostType == 1 then
		if not User_AddEMoneyAndLog(-nCost,sEmoneyBuyLog,nUserId) then
			return
		end
	else
		if not User_AddEMoneyMonoAndLog(-nCost,sEmoneyBuyLog,nUserId) then
			return
		end
	end
	
	--动态码设置
	Sys_SetSynaGlobalData(nGlobalId,nPos,nNowData + 1)
	
	--给奖
	RewardTemplate_UseItemAndMsg(tCharacterCarnival_Reward[nNpcId][nNowIndex],nUserId)
end

--参与奖励
function CharacterCarnival_Attend(nIndex, nNowUserId)
	--区分服务器
	local nGlobalId = tCharacterCarnival_Cont["Move"]["GlobalId"]
	
	if Get_SysDynaGlobalData0(nGlobalId) < 1 then
		return
	end
	
	--不在活动期间
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tCharacterCarnival_Stc[2]["Event"]
	local nType = tCharacterCarnival_Stc[2]["Type"]
	local nLimit = tCharacterCarnival_Stc[2]["Limit"]
	
	--隔天清零
	Task_StcReset(nEvent,nType,nUserId)
	
	--是否VIP
	local nVip = Get_UserVip(nUserId)
	
	if nVip > 0 then
		nLimit = tCharacterCarnival_Stc[2]["VipLimit"]
	end
	
	--今日已达上限
	if Task_ChkStcValue(nEvent,nType,">=",nLimit,nUserId) then
		return
	end
	
	local tAward = CommonFunc_Copy(tCharacterCarnival_Reward["Attend"])
	
	tAward["LogStep"] = "1["..nIndex.."]"
	
	--设置掩码
	if Task_AddStatistic(nEvent,nType,1,1,nUserId) then
		--参与奖励强塞背包，直接跳过背包检查
		RewardTemplate_Reward(tAward,nUserId)
	end
end

--古神灵境怪物
function CharacterCarnival_DeitylandMonster(nMonsterId)
	local nUserId = Get_UserId()
	
	if tCharacterCarnival_KillNum[nUserId] == nil then
		tCharacterCarnival_KillNum[nUserId] = 0
	end
	
	--怪物计数
	tCharacterCarnival_KillNum[nUserId] = tCharacterCarnival_KillNum[nUserId] + 1
	
	--达到一定数量给奖励
	if tCharacterCarnival_KillNum[nUserId] >= tCharacterCarnival_Cont["KillNum"] then
		--计数清零
		tCharacterCarnival_KillNum[nUserId] = 0
		--给奖励
		CharacterCarnival_Attend(2, nUserId)
	end
end

--野外全部怪物
function CharacterCarnival_AllMonster(nMonsterId)
	local nStartNum = tCharacterCarnival_Cont["Random"]["StartNum"]
	local nEndNum = tCharacterCarnival_Cont["Random"]["EndNum"]
	
	if Sys_Random(nStartNum,nEndNum) then
		--给奖励
		CharacterCarnival_Attend(3, nUserId)
	end
end

--参与排位赛
function CharacterCarnival_Arenic(nUserId,nFieldNum)
	CharacterCarnival_Attend(5, nUserId)
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--星如雨
tNpcFace[5343] = 71
tNpcGossip[25596] = tNpcGossip[25596] or DefaultNpc:new{}
tNpcGossip[25596]["DialogueText"] = tCharacterCarnival_Text[25596]
tNpcGossip[25596]["OptionHidden"] = 1
--活动时间前
tNpcGossip[25596]["Text1-1"] = {111,112,113,114}
tNpcGossip[25596]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tCharacterCarnival_Time["ActivityTime"])
end
tNpcGossip[25596]["tOption1-1"] = {111}
--活动时间后
tNpcGossip[25596]["Text1-2"] = {121}
tNpcGossip[25596]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tCharacterCarnival_Time["ActivityTime"])
end
tNpcGossip[25596]["tOption1-2"] = {121}
--活动时间内
tNpcGossip[25596]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[25596]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"])
end
tNpcGossip[25596]["tOption1-3"] = {131,132,133,134}
tNpcGossip[25596]["OptionPoint131"] = "2-1"
tNpcGossip[25596]["OptionFunc132"] = "CharacterCarnival_Exchange"
tNpcGossip[25596]["OptionFunc133"] = "CharacterCarnival_Hand"
tNpcGossip[25596]["OptionFunc134"] = "CharacterCarnival_Web"
--我该如何获得火焰？
tNpcGossip[25596]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[25596]["tOption2-1"] = {211}
tNpcGossip[25596]["OptionPoint211"] = "1"
--未集齐5种火焰
tNpcGossip[25596]["Text2-2"] = {221}
tNpcGossip[25596]["tOption2-2"] = {221}
--集齐5种火焰
tNpcGossip[25596]["Text2-3"] = {231,232,233}
tNpcGossip[25596]["tOption2-3"] = {231,232}
tNpcGossip[25596]["OptionFunc231"] = "CharacterCarnival_Web"
--集齐5种火焰已满10次
tNpcGossip[25596]["Text2-4"] = {241,242}
tNpcGossip[25596]["tOption2-4"] = {241,242}
tNpcGossip[25596]["OptionFunc241"] = "CharacterCarnival_Web"

--红脸商人
tNpcFace[5344] = 52
tNpcGossip[25597] = tNpcGossip[25597] or DefaultNpc:new{}
tNpcGossip[25597]["DialogueText"] = tCharacterCarnival_Text[25597]
tNpcGossip[25597]["OptionHidden"] = 1
--活动时间前、内
tNpcGossip[25597]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25597]["ChkFunc1-1"] = function()
	return CharacterCarnival_Chk(25597)
end
tNpcGossip[25597]["tOption1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[25597]["OptionFunc112"] = "CharacterCarnival_Buy</N>1"
tNpcGossip[25597]["OptionFunc113"] = "CharacterCarnival_Buy</N>2"
tNpcGossip[25597]["OptionFunc114"] = "CharacterCarnival_Buy</N>3"
tNpcGossip[25597]["OptionFunc115"] = "CharacterCarnival_Buy</N>4"
tNpcGossip[25597]["OptionFunc116"] = "CharacterCarnival_Buy</N>5"

--活动时间后
tNpcGossip[25597]["Text1-2"] = {121}
tNpcGossip[25597]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tCharacterCarnival_Time["ActivityTime"])
end
--天石不足
tNpcGossip[25597]["Text2-1"] = {211}
tNpcGossip[25597]["tOption2-1"] = {211}
--购买数量达到上限
tNpcGossip[25597]["Text2-2"] = {221}
tNpcGossip[25597]["tOption2-2"] = {221}
tNpcGossip[25597]["OptionPoint221"] = "1"
--购买二次确认
tNpcGossip[25597]["Text2-3"] = {231}
tNpcGossip[25597]["tOption2-3"] = {231,232}
tNpcGossip[25597]["OptionFunc231"] = "CharacterCarnival_Buy</N>0"
tNpcGossip[25597]["OptionPoint232"] = "1"
--背包满
tNpcGossip[25597]["Text2-4"] = {241}
tNpcGossip[25597]["tOption2-4"] = {241}
--不在购买时间
tNpcGossip[25597]["Text2-5"] = {251}
tNpcGossip[25597]["tOption2-5"] = {251}

--阿啾
tNpcFace[3820] = 191
tNpcGossip[25598] = tNpcGossip[25598] or DefaultNpc:new{}
tNpcGossip[25598]["DialogueText"] = tCharacterCarnival_Text[25598]
tNpcGossip[25598]["OptionHidden"] = 1

tNpcGossip[25598]["Text1-1"] = {111}
tNpcGossip[25598]["ChkFunc1-1"] = function()
	return true
end
tNpcGossip[25598]["tOption1-1"] = {111}
tNpcGossip[25598]["OptionFunc111"] = "NpcPosition_PathFind</N>25596"

---------------------------------------------物品模块---------------------------------------------
--火焰“E”
tItem[3326940] = tItem[3326940] or {}
tItem[3326940]["Function"] = function(nItemId,sItemName)
	--活动时间判断
	if not Sys_ChkFullTime(tCharacterCarnival_Time["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0,nil,nil,nUserId)
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelAllItemByType(nItemId,nUserId) then
			Sys_SaveActionFestivalLog(string.format(tCharacterCarnival_Log["DelItem"], nItemId, nCount),nUserId)
			User_TalkChannel2005(tCharacterCarnival_Text["Channel2005"]["ItemOverTime"],nUserId)
		end
		
		return
	end
	
	NpcPosition_PathFind(25596)
end

--火焰“N”
tItem[3326941] = tItem[3326940]
--火焰“J”
tItem[3326942] = tItem[3326940]
--火焰“O”
tItem[3326943] = tItem[3326940]
--火焰“Y”
tItem[3326944] = tItem[3326940]

--火焰“?”
tItem[3326945] = tItem[3326945] or {}
tItem[3326945]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tCharacterCarnival_Reward,nItemId)
end

--“E、N”火焰盲盒
tItem[3326946] = tItem[3326945]
--“J、O、Y”火焰盲盒
tItem[3326947] = tItem[3326945]

-- 3326948,'1级天石（赠）聚宝盆'
-- 3326949,'2级天石（赠）聚宝盆'
-- 3326950,'3级天石（赠）聚宝盆'
-- 3326951,'4级天石（赠）聚宝盆'
-- 3326952,'5级天石（赠）聚宝盆'
-- 3326953,'6级天石（赠）聚宝盆'
-- 3326954,'7级天石（赠）聚宝盆'
-- 3326955,'1级金币聚宝盆'
-- 3326956,'2级金币聚宝盆'
-- 3326957,'3级金币聚宝盆'
-- 3326958,'4级金币聚宝盆'
-- 3326959,'5级金币聚宝盆'
for i = 3326948, 3326959, 1 do
	tItemFace[i] = i - 3324307
	tItem[i] = tItem[i] or {}
	tItem[i]["DialogueText"] = tCharacterCarnival_Text[i]
	tItem[i]["Text1-1"] = {111,112}
	tItem[i]["ChkFunc1-1"] = function() return true end
	tItem[i]["tOption1-1"] = {111,112}
	tItem[i]["OptionFunc111"] = string.format("CharacterCarnival_OpenBag</N>%d</N>2", i)
	tItem[i]["OptionFunc112"] = string.format("CharacterCarnival_OpenBag</N>%d</N>1", i)

	tItem[i]["Text2-1"] = {211}
	tItem[i]["tOption2-1"] = {211}
	tItem[i]["OptionFunc211"] = string.format("CharacterCarnival_OpenBag</N>%d</N>2</N>1", i)
end

--RockingRomanceBag
tItem[3326974] = tItem[3326974] or {}
tItem[3326974]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tCharacterCarnival_Reward[nItemId])
end
--FavoredTrainingPillPack
tItem[3326975] = tItem[3326974]
--FieryLion(B)Pack
tItem[3327109] = tItem[3326974]

---------------------------------------------怪物模块---------------------------------------------
local tCharacterCarnival_KillMonster = {}
	tCharacterCarnival_KillMonster[1] = {}
	tCharacterCarnival_KillMonster[1]["ActivityTime"] = tCharacterCarnival_Time["ActivityTime"]
	tCharacterCarnival_KillMonster[1]["Function"]= CharacterCarnival_DeitylandMonster
	tCharacterCarnival_KillMonster[1]["MonsterId"] = {3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,8415,8420}
	tCharacterCarnival_KillMonster[2] = {}
	tCharacterCarnival_KillMonster[2]["ActivityTime"] = tCharacterCarnival_Time["ActivityTime"]
	tCharacterCarnival_KillMonster[2]["Function"]= CharacterCarnival_AllMonster
	
table.insert(tMonsterDrop_AreaLoad,tCharacterCarnival_KillMonster[1])
table.insert(tMonsterDrop_AreaLoad,tCharacterCarnival_KillMonster[2])

-- 个人排位赛：	参赛场
tArenicCompetes["tFunction"] = tArenicCompetes["tFunction"] or {}
table.insert(tArenicCompetes["tFunction"],CharacterCarnival_Arenic)

---------------------------------------------时间自检---------------------------------------------

local tCharacterCarnival_OnTime = {}
	tCharacterCarnival_OnTime[1] = {}
	tCharacterCarnival_OnTime[1]["Type"] = 2
	tCharacterCarnival_OnTime[1]["TimeType"] = 4
	tCharacterCarnival_OnTime[1]["Multiple"] = {}
	tCharacterCarnival_OnTime[1]["Multiple"][1]  = "02:00 03:59"
	tCharacterCarnival_OnTime[1]["Multiple"][2]  = "10:00 11:59"
	tCharacterCarnival_OnTime[1]["Multiple"][3]  = "18:00 19:59"
	tCharacterCarnival_OnTime[1]["Func"] = CharacterCarnival_MoveOut
	tCharacterCarnival_OnTime[2] = {}
	tCharacterCarnival_OnTime[2]["Type"] = 2
	tCharacterCarnival_OnTime[2]["TimeType"] = 4
	tCharacterCarnival_OnTime[2]["Multiple"] = {}
	tCharacterCarnival_OnTime[2]["Multiple"][1]  = "00:00 01:59"
	tCharacterCarnival_OnTime[2]["Multiple"][2]  = "04:00 09:59"
	tCharacterCarnival_OnTime[2]["Multiple"][3]  = "12:00 17:59"
	tCharacterCarnival_OnTime[2]["Multiple"][4]  = "20:00 23:59"
	tCharacterCarnival_OnTime[2]["Func"] = CharacterCarnival_MoveIn
	
table.insert(tSystemTime_InitialData,tCharacterCarnival_OnTime[1])
table.insert(tSystemTime_InitialData,tCharacterCarnival_OnTime[2])

-- 动态存储表清零
tGlobalData_Info[53899] = {}
tGlobalData_Info[53899]["Time"] = {}
tGlobalData_Info[53899]["Time"]["ActivityTime"] = tCharacterCarnival_Time["ActivityTime"]
tGlobalData_Info[53899]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[53899]["Rest"] = {}
tGlobalData_Info[53899]["Rest"]["GlobalId"] = {53899}
tGlobalData_Info[53899]["Rest"]["Pos"] = {0,1,2,3,4}


