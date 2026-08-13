------------------------------------------------------------------------------------
--Name:		190916[英文征服][活动脚本]万圣惊喜特卖会
--Creator: 	郑飞
--Created:	2019/09/16
-----------------------------------------------------------------------------------
--命名前缀：HalloweenSale_
--lua.ini: 41514 = V100\ActiveScript\[Conquer][ActiveScript]HalloweenSale.lua
--cnlua.txt:41514 = V100\活动脚本\[征服][活动脚本]万圣惊喜特卖会.lua

--logid:12001641
--stc:(204,71)-(204,76)、(204,87)-(204,92)
--stc:(204,71)		背包信		0未领取,1已领取
--stc:(204,72)		每日限量购买1种礼包1个	使用范围（1000000-1111111）	后六位每一位控制一种礼包的限量
--stc:(204,73)		每天第一次点击npc先打开对白，第二次直接打开购买界面	使用范围（0-1）
--stc:(204,74)		记录 炼气冲刺包 打开次数	使用范围（1-5）
--stc:(204,75)		记录 练功冲刺包 打开次数	使用范围（1-5）
--stc:(204,76)		记录 内功冲刺包 打开次数	使用范围（1-5）
--stc:(204,87)		记录 副职业冲刺包 打开次数	使用范围（1-5）

--------------------------------------数据配置部分--------------------------------------
local tHalloweenSale_Constant = {}
	-- 活动时间
	tHalloweenSale_Constant["ActivityTime"] = tActivityTime["HalloweenSale"]["ActivityTime"]
	-- 物品使用时间
	tHalloweenSale_Constant["ItemAct"] = tActivityTime["HalloweenSale"]["ItemAct"]
	-- 物品打开次数限制
	tHalloweenSale_Constant["ItemLimt"] = 5
	-- 过期删除Log
	tHalloweenSale_Constant["DelLog"] = "0,0,%d,1,12001641,2,0,0"
	-- 扣除天石EmoneyLog
	tHalloweenSale_Constant["EmoneyLog"] = {}
	tHalloweenSale_Constant["EmoneyLog"]["Buy"] = "100000	943	%d	%d	1	"
	-- 购买万圣节惊喜礼包
	tHalloweenSale_Constant["EmoneyLog"][3323634] = "350	22619	%d	%d	1	"
	-- 购买万圣节超值礼包
	tHalloweenSale_Constant["EmoneyLog"][3323635] = "350	22620	%d	%d	1	"
	-- 打开 炼气冲刺包
	tHalloweenSale_Constant["EmoneyLog"][3323636] = {}
	tHalloweenSale_Constant["EmoneyLog"][3323636][1] = "350	22621	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323636][2] = "350	22622	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323636][3] = "350	22623	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323636][4] = "350	22624	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323636][5] = "350	22625	%d	%d	1	"
	-- 打开 练功冲刺包
	tHalloweenSale_Constant["EmoneyLog"][3323637] = {}
	tHalloweenSale_Constant["EmoneyLog"][3323637][1] = "350	22626	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323637][2] = "350	22627	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323637][3] = "350	22628	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323637][4] = "350	22629	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323637][5] = "350	22630	%d	%d	1	"
	-- 打开 内功冲刺包
	tHalloweenSale_Constant["EmoneyLog"][3323638] = {}
	tHalloweenSale_Constant["EmoneyLog"][3323638][1] = "350	22631	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323638][2] = "350	22632	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323638][3] = "350	22633	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323638][4] = "350	22634	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323638][5] = "350	22635	%d	%d	1	"
	-- 打开 副职业冲刺包
	tHalloweenSale_Constant["EmoneyLog"][3323639] = {}
	tHalloweenSale_Constant["EmoneyLog"][3323639][1] = "350	22636	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323639][2] = "350	22637	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323639][3] = "350	22638	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323639][4] = "350	22639	%d	%d	1	"
	tHalloweenSale_Constant["EmoneyLog"][3323639][5] = "350	22640	%d	%d	1	"
	
	-- 初始掩码数值
	tHalloweenSale_Constant["StcBasicData"] = 1000000
	tHalloweenSale_Constant["StcBasicOrder"] = {5,4,3,2,1,0}
	-- 物品购买价格
	tHalloweenSale_Constant["Emoney"] = {}
	tHalloweenSale_Constant["Emoney"][3323634] = 3000
	tHalloweenSale_Constant["Emoney"][3323635] = 199
	tHalloweenSale_Constant["Emoney"][3323636] = 1
	tHalloweenSale_Constant["Emoney"][3323637] = 1
	tHalloweenSale_Constant["Emoney"][3323638] = 1
	tHalloweenSale_Constant["Emoney"][3323639] = 1
	-- 礼包 每次打开的价格
	tHalloweenSale_Constant["EmoneyOpen"] = {}
	tHalloweenSale_Constant["EmoneyOpen"][3323636] = {}
	tHalloweenSale_Constant["EmoneyOpen"][3323636][1] = 399
	tHalloweenSale_Constant["EmoneyOpen"][3323636][2] = 369
	tHalloweenSale_Constant["EmoneyOpen"][3323636][3] = 349
	tHalloweenSale_Constant["EmoneyOpen"][3323636][4] = 299
	tHalloweenSale_Constant["EmoneyOpen"][3323636][5] = 259
	tHalloweenSale_Constant["EmoneyOpen"][3323637] = {}
	tHalloweenSale_Constant["EmoneyOpen"][3323637][1] = 799
	tHalloweenSale_Constant["EmoneyOpen"][3323637][2] = 699
	tHalloweenSale_Constant["EmoneyOpen"][3323637][3] = 599
	tHalloweenSale_Constant["EmoneyOpen"][3323637][4] = 499
	tHalloweenSale_Constant["EmoneyOpen"][3323637][5] = 399
	tHalloweenSale_Constant["EmoneyOpen"][3323638] = {}
	tHalloweenSale_Constant["EmoneyOpen"][3323638][1] = 300
	tHalloweenSale_Constant["EmoneyOpen"][3323638][2] = 280
	tHalloweenSale_Constant["EmoneyOpen"][3323638][3] = 255
	tHalloweenSale_Constant["EmoneyOpen"][3323638][4] = 225
	tHalloweenSale_Constant["EmoneyOpen"][3323638][5] = 190
	tHalloweenSale_Constant["EmoneyOpen"][3323639] = {}
	tHalloweenSale_Constant["EmoneyOpen"][3323639][1] = 300
	tHalloweenSale_Constant["EmoneyOpen"][3323639][2] = 280
	tHalloweenSale_Constant["EmoneyOpen"][3323639][3] = 255
	tHalloweenSale_Constant["EmoneyOpen"][3323639][4] = 225
	tHalloweenSale_Constant["EmoneyOpen"][3323639][5] = 190
	-- 物品名称
	tHalloweenSale_Constant["ItemName"] = {}
	tHalloweenSale_Constant["ItemName"][3323634] = tHalloweenSale_Text["ItemName"][3323634]
	tHalloweenSale_Constant["ItemName"][3323635] = tHalloweenSale_Text["ItemName"][3323635]
	tHalloweenSale_Constant["ItemName"][3323636] = tHalloweenSale_Text["ItemName"][3323636]
	tHalloweenSale_Constant["ItemName"][3323637] = tHalloweenSale_Text["ItemName"][3323637]
	tHalloweenSale_Constant["ItemName"][3323638] = tHalloweenSale_Text["ItemName"][3323638]
	tHalloweenSale_Constant["ItemName"][3323639] = tHalloweenSale_Text["ItemName"][3323639]
	tHalloweenSale_Constant["ItemName"][3008529] = tHalloweenSale_Text["ItemName"][3008529]
	tHalloweenSale_Constant["ItemName"][3008530] = tHalloweenSale_Text["ItemName"][3008530]
	tHalloweenSale_Constant["ItemName"][3008679] = tHalloweenSale_Text["ItemName"][3008679]
	-- 提示文本
	tHalloweenSale_Constant["NoSapce"] = tHalloweenSale_Text[24954]["NoSapce"]
	tHalloweenSale_Constant["Reward"] = tHalloweenSale_Text[24954]["Reward"]
	tHalloweenSale_Constant["TimeOut"] = tHalloweenSale_Text[24954]["TimeOut"]
	tHalloweenSale_Constant["NoMoney"] = tHalloweenSale_Text[24954]["NoMoney"]
	tHalloweenSale_Constant["NoMoneyOpen"] = tHalloweenSale_Text[24954]["NoMoneyOpen"]
	
-- stc掩码
local tHalloweenSale_Stc = {}
	--每日限量购买1种礼包1个	使用范围（1000000-1111111）
	tHalloweenSale_Stc[1]= {}
	tHalloweenSale_Stc[1]["EventType"] = 204
	tHalloweenSale_Stc[1]["DataType"] = 72
	--控制npc对白
	tHalloweenSale_Stc[2] = {}
	tHalloweenSale_Stc[2]["EventType"] = 204
	tHalloweenSale_Stc[2]["DataType"] = 73
	--礼包的打开次数
	--记录 炼气冲刺包 打开次数	使用范围（1-5）
	tHalloweenSale_Stc[3] = {}
	tHalloweenSale_Stc[3]["EventType"] = 204
	tHalloweenSale_Stc[3]["DataType"] = 74
	--记录 练功冲刺包 打开次数	使用范围（1-5）
	tHalloweenSale_Stc[4] = {}
	tHalloweenSale_Stc[4]["EventType"] = 204
	tHalloweenSale_Stc[4]["DataType"] = 75
	--记录 内功冲刺包 打开次数	使用范围（1-5）
	tHalloweenSale_Stc[5] = {}
	tHalloweenSale_Stc[5]["EventType"] = 204
	tHalloweenSale_Stc[5]["DataType"] = 76
	--记录 副职业冲刺包 打开次数	使用范围（1-5）
	tHalloweenSale_Stc[6] = {}
	tHalloweenSale_Stc[6]["EventType"] = 204
	tHalloweenSale_Stc[6]["DataType"] = 87
	
------------------------------------------奖励配置部分---------------------------------------------------
local tHalloweenSale_Reward = {}
	-- ===万圣节惊喜礼包
	-- ===索引:tHalloweenSale_Reward[3323634]
	-- ===删除:3323634,1
	-- ===NewEMoneyLog:100000,942
	tHalloweenSale_Reward[3323634] = {}
	tHalloweenSale_Reward[3323634]["LogId"] = 12001641
	tHalloweenSale_Reward[3323634]["DeleteItem"] = {}
	tHalloweenSale_Reward[3323634]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3323634]["DeleteItem"][1]["Id"] = 3323634 -- 【库】HalloweenSurprisePack[属性:11]
	tHalloweenSale_Reward[3323634]["RewardEMoneyMono"] = {}
	tHalloweenSale_Reward[3323634]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000赠点
	tHalloweenSale_Reward[3323634]["RewardEMoneyMono"]["NewEmoneyLog"] = "100000	942"
	tHalloweenSale_Reward[3323634]["RewardItem"] = {}
	tHalloweenSale_Reward[3323634]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323634]["RewardItem"][1]["Id"] = 195765 -- StarryArmor(Thunder)[195765][属性:0][叠加:0][金币:0], 【表格】星穹禁卫【雷霆版】
	tHalloweenSale_Reward[3323634]["RewardItem"][1]["Attr"] = "0 1 3 518400 1 0 0 1" -- 360天时效(激活)的1%神佑StarryArmor(Thunder)（赠）*1
	tHalloweenSale_Reward[3323634]["RewardItem"][2] = {}
	tHalloweenSale_Reward[3323634]["RewardItem"][2]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】赤炼石+8
	tHalloweenSale_Reward[3323634]["RewardItem"][2]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tHalloweenSale_Reward[3323634]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323634]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323634]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323635] = {}
	-- ===万圣节超值礼包
	-- ===索引:tHalloweenSale_Reward[3323635]
	-- ===删除:3323635,1
	tHalloweenSale_Reward[3323635]["LogId"] = 12001641
	tHalloweenSale_Reward[3323635]["DeleteItem"] = {}
	tHalloweenSale_Reward[3323635]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3323635]["DeleteItem"][1]["Id"] = 3323635 -- 【库】HalloweenValuablePack[属性:11]
	tHalloweenSale_Reward[3323635]["RewardItem"] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][1]["Id"] = 3008136 -- LifeFruitSeed[3008136][属性:11][叠加:100][金币:0], 【表格】王母蟠桃种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][1]["Attr"] = "0 10" -- LifeFruitSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][2] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][2]["Id"] = 3008137 -- EXPFruitSeed[3008137][属性:11][叠加:100][金币:0], 【表格】凝神香果种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][2]["Attr"] = "0 10" -- EXPFruitSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][3] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][3]["Id"] = 3008139 -- StarlightFlowerSeed[3008139][属性:11][叠加:100][金币:0], 【表格】星辰花种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][3]["Attr"] = "0 10" -- StarlightFlowerSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][4] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][4]["Id"] = 3326356 -- NormalEggSelectionPack[3326356][属性:11][叠加:10000][金币:0], 【表格】普通宠物蛋*30
	tHalloweenSale_Reward[3323635]["RewardItem"][4]["Attr"] = "0 30" -- NormalEggSelectionPack*30
	tHalloweenSale_Reward[3323635]["RewardItem"][5] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][5]["Id"] = 3008140 -- ChiFruitSeed[3008140][属性:11][叠加:100][金币:0], 【表格】通元神果种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][5]["Attr"] = "0 10" -- ChiFruitSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][6] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][6]["Id"] = 3008141 -- ProtectionHerbSeed[3008141][属性:11][叠加:100][金币:0], 【表格】护心草种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][6]["Attr"] = "0 10" -- ProtectionHerbSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][7] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][7]["Id"] = 3008138 -- SpiritHerbSeed[3008138][属性:11][叠加:100][金币:0], 【表格】灵山仙草种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][7]["Attr"] = "0 10" -- SpiritHerbSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][8] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][8]["Id"] = 3008142 -- UniqueSpiritHerbSeed[3008142][属性:11][叠加:100][金币:0], 【表格】上品灵山仙草种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][8]["Attr"] = "0 10" -- UniqueSpiritHerbSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][9] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][9]["Id"] = 3326355 -- BeastEggRandomPack[3326355][属性:11][叠加:10000][金币:0], 【表格】神兽宠物蛋*10
	tHalloweenSale_Reward[3323635]["RewardItem"][9]["Attr"] = "0 10" -- BeastEggRandomPack*10
	tHalloweenSale_Reward[3323635]["RewardItem"][10] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][10]["Id"] = 3008144 -- FrozenChiFruitSeed[3008144][属性:11][叠加:100][金币:0], 【表格】八宝护气果种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][10]["Attr"] = "0 10" -- FrozenChiFruitSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][11] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][11]["Id"] = 3008143 -- EpicSpiritHerbSeed[3008143][属性:11][叠加:100][金币:0], 【表格】绝品灵山仙草种子*10
	tHalloweenSale_Reward[3323635]["RewardItem"][11]["Attr"] = "0 10" -- EpicSpiritHerbSeed*10
	tHalloweenSale_Reward[3323635]["RewardItem"][12] = {}
	tHalloweenSale_Reward[3323635]["RewardItem"][12]["Id"] = 3008145 -- BegoniaSeed[3008145][属性:11][叠加:100][金币:0], 【表格】闭月海棠种子*20
	tHalloweenSale_Reward[3323635]["RewardItem"][12]["Attr"] = "0 20" -- BegoniaSeed*20
	tHalloweenSale_Reward[3323635]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323635]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323635]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323636] = {}
	-- ===炼气冲刺包
	-- ===索引:tHalloweenSale_Reward[3323636][1]
	-- ===
	tHalloweenSale_Reward[3323636][1] = {}
	tHalloweenSale_Reward[3323636][1]["LogId"] = 12001641
	tHalloweenSale_Reward[3323636][1]["RewardItem"] = {}
	tHalloweenSale_Reward[3323636][1]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323636][1]["RewardItem"][1]["Id"] = 3008201 -- ChiCrystal[3008201][属性:9][叠加:0][金币:0], 【表格】10000气力值
	tHalloweenSale_Reward[3323636][1]["RewardItem"][1]["Attr"] = "0 1" -- ChiCrystal*1
	tHalloweenSale_Reward[3323636][1]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323636][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323636][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323636][5] = {}
	-- ===炼气冲刺包
	-- ===索引:tHalloweenSale_Reward[3323636][5]
	-- ===删除:3323636,1
	tHalloweenSale_Reward[3323636][5]["LogId"] = 12001641
	tHalloweenSale_Reward[3323636][5]["DeleteItem"] = {}
	tHalloweenSale_Reward[3323636][5]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3323636][5]["DeleteItem"][1]["Id"] = 3323636 -- 【库】ChiSprintPack[属性:11]
	tHalloweenSale_Reward[3323636][5]["RewardItem"] = {}
	tHalloweenSale_Reward[3323636][5]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323636][5]["RewardItem"][1]["Id"] = 3008201 -- ChiCrystal[3008201][属性:9][叠加:0][金币:0], 【表格】10000气力值
	tHalloweenSale_Reward[3323636][5]["RewardItem"][1]["Attr"] = "0 1" -- ChiCrystal*1
	tHalloweenSale_Reward[3323636][5]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323636][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323636][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323637] = {}
	-- ===练功冲刺包
	-- ===索引:tHalloweenSale_Reward[3323637][1]
	tHalloweenSale_Reward[3323637][1] = {}
	tHalloweenSale_Reward[3323637][1]["LogId"] = 12001641
	tHalloweenSale_Reward[3323637][1]["RewardItem"] = {}
	tHalloweenSale_Reward[3323637][1]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323637][1]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tHalloweenSale_Reward[3323637][1]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100
	tHalloweenSale_Reward[3323637][1]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323637][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323637][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323637][5] = {}
	-- ===练功冲刺包
	-- ===索引:tHalloweenSale_Reward[3323637][5]
	-- ===删除:3323637,1
	tHalloweenSale_Reward[3323637][5]["LogId"] = 12001641
	tHalloweenSale_Reward[3323637][5]["DeleteItem"] = {}
	tHalloweenSale_Reward[3323637][5]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3323637][5]["DeleteItem"][1]["Id"] = 3323637 -- 【库】TrainingSprintPack[属性:11]
	tHalloweenSale_Reward[3323637][5]["RewardItem"] = {}
	tHalloweenSale_Reward[3323637][5]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323637][5]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹
	tHalloweenSale_Reward[3323637][5]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100
	tHalloweenSale_Reward[3323637][5]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323637][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323637][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323638] = {}
	-- ===内功冲刺包
	-- ===索引:tHalloweenSale_Reward[3323638][1]
	tHalloweenSale_Reward[3323638][1] = {}
	tHalloweenSale_Reward[3323638][1]["LogId"] = 12001641
	tHalloweenSale_Reward[3323638][1]["RewardItem"] = {}
	tHalloweenSale_Reward[3323638][1]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323638][1]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹
	tHalloweenSale_Reward[3323638][1]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tHalloweenSale_Reward[3323638][1]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323638][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323638][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323638][5] = {}
	-- ===内功冲刺包
	-- ===索引:tHalloweenSale_Reward[3323638][5]
	-- ===删除:3323638,1
	tHalloweenSale_Reward[3323638][5]["LogId"] = 12001641
	tHalloweenSale_Reward[3323638][5]["DeleteItem"] = {}
	tHalloweenSale_Reward[3323638][5]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3323638][5]["DeleteItem"][1]["Id"] = 3323638 -- 【库】InnerPowerSpringPack[属性:11]
	tHalloweenSale_Reward[3323638][5]["RewardItem"] = {}
	tHalloweenSale_Reward[3323638][5]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323638][5]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹
	tHalloweenSale_Reward[3323638][5]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tHalloweenSale_Reward[3323638][5]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323638][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323638][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323639] = {}
	-- ===副职业冲刺包
	-- ===索引:tHalloweenSale_Reward[3323639][1]
	tHalloweenSale_Reward[3323639][1] = {}
	tHalloweenSale_Reward[3323639][1]["LogId"] = 12001641
	tHalloweenSale_Reward[3323639][1]["RewardItem"] = {}
	tHalloweenSale_Reward[3323639][1]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323639][1]["RewardItem"][1]["Id"] = 723342 -- ModestyBook[723342][属性:0][叠加:10000][金币:0], 【表格】造化天书
	tHalloweenSale_Reward[3323639][1]["RewardItem"][1]["Attr"] = "0 50 3" -- ModestyBook（赠）*50
	tHalloweenSale_Reward[3323639][1]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323639][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323639][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3323639][5] = {}
	-- ===副职业冲刺包
	-- ===索引:tHalloweenSale_Reward[3323639][5]
	-- ===删除:3323639,1
	tHalloweenSale_Reward[3323639][5]["LogId"] = 12001641
	tHalloweenSale_Reward[3323639][5]["DeleteItem"] = {}
	tHalloweenSale_Reward[3323639][5]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3323639][5]["DeleteItem"][1]["Id"] = 3323639 -- 【库】ModestySprintPack[属性:11]
	tHalloweenSale_Reward[3323639][5]["RewardItem"] = {}
	tHalloweenSale_Reward[3323639][5]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3323639][5]["RewardItem"][1]["Id"] = 723342 -- ModestyBook[723342][属性:0][叠加:10000][金币:0], 【表格】造化天书
	tHalloweenSale_Reward[3323639][5]["RewardItem"][1]["Attr"] = "0 50 3" -- ModestyBook（赠）*50
	tHalloweenSale_Reward[3323639][5]["RewardEffect"] = {}
	tHalloweenSale_Reward[3323639][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3323639][5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[1] = {}
	-- ===万圣节惊喜礼包
	-- ===索引:tHalloweenSale_Reward[1]
	-- ===        
	tHalloweenSale_Reward[1]["LogId"] = 12001641
	tHalloweenSale_Reward[1]["RewardItem"] = {}
	tHalloweenSale_Reward[1]["RewardItem"][1] = {}
	tHalloweenSale_Reward[1]["RewardItem"][1]["Id"] = 3323634 -- HalloweenSurprisePack[3323634][属性:11][叠加:0][金币:0], 【表格】万圣节惊喜礼包
	tHalloweenSale_Reward[1]["RewardItem"][1]["Attr"] = "0 1" -- HalloweenSurprisePack*1
	tHalloweenSale_Reward[1]["RewardEffect"] = {}
	tHalloweenSale_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[2] = {}
	-- ===万圣节超值礼包
	-- ===索引:tHalloweenSale_Reward[2]
	tHalloweenSale_Reward[2]["LogId"] = 12001641
	tHalloweenSale_Reward[2]["RewardItem"] = {}
	tHalloweenSale_Reward[2]["RewardItem"][1] = {}
	tHalloweenSale_Reward[2]["RewardItem"][1]["Id"] = 3323635 -- HalloweenValuablePack[3323635][属性:11][叠加:0][金币:0], 【表格】万圣节超值礼包
	tHalloweenSale_Reward[2]["RewardItem"][1]["Attr"] = "0 1" -- HalloweenValuablePack*1
	tHalloweenSale_Reward[2]["RewardEffect"] = {}
	tHalloweenSale_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3] = {}
	-- ===炼气冲刺包
	-- ===索引:tHalloweenSale_Reward[3]
	-- ===
	-- ===        
	tHalloweenSale_Reward[3]["LogId"] = 12001641
	tHalloweenSale_Reward[3]["RewardItem"] = {}
	tHalloweenSale_Reward[3]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3]["RewardItem"][1]["Id"] = 3323636 -- ChiSprintPack[3323636][属性:11][叠加:0][金币:0], 【表格】炼气冲刺包
	tHalloweenSale_Reward[3]["RewardItem"][1]["Attr"] = "0 1" -- ChiSprintPack*1
	tHalloweenSale_Reward[3]["RewardEffect"] = {}
	tHalloweenSale_Reward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[4] = {}
	-- ===练功冲刺包
	-- ===索引:tHalloweenSale_Reward[4]
	-- ===        
	tHalloweenSale_Reward[4]["LogId"] = 12001641
	tHalloweenSale_Reward[4]["RewardItem"] = {}
	tHalloweenSale_Reward[4]["RewardItem"][1] = {}
	tHalloweenSale_Reward[4]["RewardItem"][1]["Id"] = 3323637 -- TrainingSprintPack[3323637][属性:11][叠加:0][金币:0], 【表格】练功冲刺包
	tHalloweenSale_Reward[4]["RewardItem"][1]["Attr"] = "0 1" -- TrainingSprintPack*1
	tHalloweenSale_Reward[4]["RewardEffect"] = {}
	tHalloweenSale_Reward[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[4]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[5] = {}
	-- ===内功冲刺包
	-- ===索引:tHalloweenSale_Reward[5]
	-- ===        
	tHalloweenSale_Reward[5]["LogId"] = 12001641
	tHalloweenSale_Reward[5]["RewardItem"] = {}
	tHalloweenSale_Reward[5]["RewardItem"][1] = {}
	tHalloweenSale_Reward[5]["RewardItem"][1]["Id"] = 3323638 -- InnerPowerSpringPack[3323638][属性:11][叠加:0][金币:0], 【表格】内功冲刺包
	tHalloweenSale_Reward[5]["RewardItem"][1]["Attr"] = "0 1" -- InnerPowerSpringPack*1
	tHalloweenSale_Reward[5]["RewardEffect"] = {}
	tHalloweenSale_Reward[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[5]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[6] = {}
	-- ===副职业冲刺包
	-- ===索引:tHalloweenSale_Reward[6]
	-- ===        
	tHalloweenSale_Reward[6]["LogId"] = 12001641
	tHalloweenSale_Reward[6]["RewardItem"] = {}
	tHalloweenSale_Reward[6]["RewardItem"][1] = {}
	tHalloweenSale_Reward[6]["RewardItem"][1]["Id"] = 3323639 -- ModestySprintPack[3323639][属性:11][叠加:0][金币:0], 【表格】副职业冲刺包
	tHalloweenSale_Reward[6]["RewardItem"][1]["Attr"] = "0 1" -- ModestySprintPack*1
	tHalloweenSale_Reward[6]["RewardEffect"] = {}
	tHalloweenSale_Reward[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[6]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3326356] = {}
	-- ===精卫宠物蛋
	-- ===索引:tHalloweenSale_Reward[3326356][1]
	-- ===删除:3326356,1
	-- ===
	-- ===        
	tHalloweenSale_Reward[3326356][1] = {}
	tHalloweenSale_Reward[3326356][1]["LogId"] = 12001641
	tHalloweenSale_Reward[3326356][1]["DeleteItem"] = {}
	tHalloweenSale_Reward[3326356][1]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3326356][1]["DeleteItem"][1]["Id"] = 3326356 -- 【库】NormalEggSelectionPack[属性:11]
	tHalloweenSale_Reward[3326356][1]["RewardItem"] = {}
	tHalloweenSale_Reward[3326356][1]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326356][1]["RewardItem"][1]["Id"] = 3008529 -- CraneEgg[3008529][属性:9][叠加:100][金币:0], 【表格】精卫宠物蛋
	tHalloweenSale_Reward[3326356][1]["RewardItem"][1]["Attr"] = "0 1" -- CraneEgg*1
	tHalloweenSale_Reward[3326356][1]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326356][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326356][1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3326356][2] = {}
	-- ===熊猫宠物蛋
	-- ===索引:tHalloweenSale_Reward[3326356][2]
	-- ===删除:3326356,1
	-- ===
	-- ===        
	tHalloweenSale_Reward[3326356][2]["LogId"] = 12001641
	tHalloweenSale_Reward[3326356][2]["DeleteItem"] = {}
	tHalloweenSale_Reward[3326356][2]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3326356][2]["DeleteItem"][1]["Id"] = 3326356 -- 【库】NormalEggSelectionPack[属性:11]
	tHalloweenSale_Reward[3326356][2]["RewardItem"] = {}
	tHalloweenSale_Reward[3326356][2]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326356][2]["RewardItem"][1]["Id"] = 3008530 -- PandaEgg[3008530][属性:9][叠加:100][金币:0], 【表格】熊猫宠物蛋
	tHalloweenSale_Reward[3326356][2]["RewardItem"][1]["Attr"] = "0 1" -- PandaEgg*1
	tHalloweenSale_Reward[3326356][2]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326356][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326356][2]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3326356][3] = {}
	-- ===秘色狐宠物蛋
	-- ===索引:tHalloweenSale_Reward[3326356][3]
	-- ===删除:3326356,1
	-- ===
	-- ===        
	tHalloweenSale_Reward[3326356][3]["LogId"] = 12001641
	tHalloweenSale_Reward[3326356][3]["DeleteItem"] = {}
	tHalloweenSale_Reward[3326356][3]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3326356][3]["DeleteItem"][1]["Id"] = 3326356 -- 【库】NormalEggSelectionPack[属性:11]
	tHalloweenSale_Reward[3326356][3]["RewardItem"] = {}
	tHalloweenSale_Reward[3326356][3]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326356][3]["RewardItem"][1]["Id"] = 3008679 -- FoxEgg[3008679][属性:9][叠加:100][金币:0], 【表格】秘色狐宠物蛋
	tHalloweenSale_Reward[3326356][3]["RewardItem"][1]["Attr"] = "0 1" -- FoxEgg*1
	tHalloweenSale_Reward[3326356][3]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326356][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326356][3]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenSale_Reward[3326355] = {}
	-- ===神兽宠物蛋随机包
	-- ===索引:tHalloweenSale_Reward[3326355]
	-- ===删除:3326355,1
	tHalloweenSale_Reward[3326355]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHalloweenSale_Reward[3326355]["DeleteItem"] = {}
	tHalloweenSale_Reward[3326355]["DeleteItem"][1] = {}
	tHalloweenSale_Reward[3326355]["DeleteItem"][1]["Id"] = 3326355 -- 【库】BeastEggRandomPack[属性:11]
	tHalloweenSale_Reward[3326355]["LogId"] = 12001641
	-- 青龙宠物蛋 - 20%
	tHalloweenSale_Reward[3326355][1] = {}
	tHalloweenSale_Reward[3326355][1]["RandomItemChanceType"] = 2
	tHalloweenSale_Reward[3326355][1]["ItemChance"] = 2000
	tHalloweenSale_Reward[3326355][1]["RewardItem"] = {}
	tHalloweenSale_Reward[3326355][1]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326355][1]["RewardItem"][1]["Id"] = 3008680 -- GreenDragonEgg[3008680][属性:9][叠加:100][金币:0], 【表格】青龙宠物蛋
	tHalloweenSale_Reward[3326355][1]["RewardItem"][1]["Attr"] = "0 1" -- GreenDragonEgg*1
	tHalloweenSale_Reward[3326355][1]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326355][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326355][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 穷奇宠物蛋 - 20%
	tHalloweenSale_Reward[3326355][2] = {}
	tHalloweenSale_Reward[3326355][2]["RandomItemChanceType"] = 2
	tHalloweenSale_Reward[3326355][2]["ItemChance"] = 2000
	tHalloweenSale_Reward[3326355][2]["RewardItem"] = {}
	tHalloweenSale_Reward[3326355][2]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326355][2]["RewardItem"][1]["Id"] = 3008681 -- ViolentBeastEgg[3008681][属性:9][叠加:100][金币:0], 【表格】穷奇宠物蛋
	tHalloweenSale_Reward[3326355][2]["RewardItem"][1]["Attr"] = "0 1" -- ViolentBeastEgg*1
	tHalloweenSale_Reward[3326355][2]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326355][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326355][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 辟水金睛兽宠物蛋 - 20%
	tHalloweenSale_Reward[3326355][3] = {}
	tHalloweenSale_Reward[3326355][3]["RandomItemChanceType"] = 2
	tHalloweenSale_Reward[3326355][3]["ItemChance"] = 2000
	tHalloweenSale_Reward[3326355][3]["RewardItem"] = {}
	tHalloweenSale_Reward[3326355][3]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326355][3]["RewardItem"][1]["Id"] = 3008682 -- EvilPiercerEgg[3008682][属性:9][叠加:100][金币:0], 【表格】辟水金睛兽宠物蛋
	tHalloweenSale_Reward[3326355][3]["RewardItem"][1]["Attr"] = "0 1" -- EvilPiercerEgg*1
	tHalloweenSale_Reward[3326355][3]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326355][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326355][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 火麒麟宠物蛋 - 20%
	tHalloweenSale_Reward[3326355][4] = {}
	tHalloweenSale_Reward[3326355][4]["RandomItemChanceType"] = 2
	tHalloweenSale_Reward[3326355][4]["ItemChance"] = 2000
	tHalloweenSale_Reward[3326355][4]["RewardItem"] = {}
	tHalloweenSale_Reward[3326355][4]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326355][4]["RewardItem"][1]["Id"] = 3008683 -- FireKylinEgg[3008683][属性:9][叠加:100][金币:0], 【表格】火麒麟宠物蛋
	tHalloweenSale_Reward[3326355][4]["RewardItem"][1]["Attr"] = "0 1" -- FireKylinEgg*1
	tHalloweenSale_Reward[3326355][4]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326355][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326355][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 火狱狂狼宠物蛋 - 20%
	tHalloweenSale_Reward[3326355][5] = {}
	tHalloweenSale_Reward[3326355][5]["RandomItemChanceType"] = 2
	tHalloweenSale_Reward[3326355][5]["ItemChance"] = 2000
	tHalloweenSale_Reward[3326355][5]["RewardItem"] = {}
	tHalloweenSale_Reward[3326355][5]["RewardItem"][1] = {}
	tHalloweenSale_Reward[3326355][5]["RewardItem"][1]["Id"] = 3008684 -- InfernalWolfEgg[3008684][属性:9][叠加:100][金币:0], 【表格】火狱狂狼宠物蛋
	tHalloweenSale_Reward[3326355][5]["RewardItem"][1]["Attr"] = "0 1" -- InfernalWolfEgg*1
	tHalloweenSale_Reward[3326355][5]["RewardEffect"] = {}
	tHalloweenSale_Reward[3326355][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenSale_Reward[3326355][5]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------逻辑部分--------------------------------------
-- 获取掩码值
function HalloweenSale_GetStcValue(nIndex,nUserId)
	local nEvent = tHalloweenSale_Stc[nIndex]["EventType"]
	local nType = tHalloweenSale_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function HalloweenSale_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tHalloweenSale_Stc[nIndex]["EventType"]
	local nType = tHalloweenSale_Stc[nIndex]["DataType"]
	
	if Task_SetStatistic(nEvent,nType,nData,1,nUserId) then
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	end
	
	return false
end

-- 隔天重置
function HalloweenSale_ClearStcInterval(nIndex,nData,nUserId)
	local nEvent = tHalloweenSale_Stc[nIndex]["EventType"]
	local nType = tHalloweenSale_Stc[nIndex]["DataType"]
	if nData == nil then
		nData = 0
	end
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 次方函数
function HalloweenSale_Pow(nNum,nIndex)
	local nSum = 1
	for i = 1,nIndex do
		nSum = nSum * nNum
	end
	
	return nSum
end

-- 过期删除物品
function HalloweenSale_DeleteItem(nItemId)
	if not Sys_ChkFullTime(tHalloweenSale_Constant["ItemAct"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tHalloweenSale_Constant["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			Sys_MsgBox(tHalloweenSale_Constant["TimeOut"])
		end
		return true
	end
	return false
end

-- 打开商品界面
function HalloweenSale_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tHalloweenSale_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 每天第一次点击npc先打开对白，第二次直接打开购买界面
	if not HalloweenSale_SetStcValue(2,1) then
		return 
	end
	
	local nBasciData = tHalloweenSale_Constant["StcBasicData"]
	--隔天重置掩码为初始值	1000000
	HalloweenSale_ClearStcInterval(1,nBasciData)
	
	local nData = HalloweenSale_GetStcValue(1)
	-- 设掩码为初始值
	if nData < nBasciData then
		if not HalloweenSale_SetStcValue(1,nBasciData) then
			return
		end
	end
	
	nData = HalloweenSale_GetStcValue(1)
	
	tNpcGossip[nNpcId]["tOption1-4"] = {}
	for i = 1,6 do
		--获取每一位对应数字 0/1
		local nTemp = tonumber(string.sub(nData,i+1,i+1))
		
		-- 当前位值为0 今日未购买
		if nTemp == 0 then
			local nNum = 140 + i
			-- 未购买的礼包显示选项，已购买的礼包不显示
			table.insert(tNpcGossip[nNpcId]["tOption1-4"],nNum)
		end
	end
	
	table.insert(tNpcGossip[nNpcId]["tOption1-4"],147)
	
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

-- 购买礼包
function HalloweenSale_BuyPack(nNpcId,nItemId,nIndex)
	if not Sys_ChkFullTime(tHalloweenSale_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--背包空间不足
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tHalloweenSale_Reward[nIndex])
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tHalloweenSale_Reward[nIndex])
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(string.format(tHalloweenSale_Constant["NoSapce"],nSpaceNum))
		return
	end
	
	--获取玩家天石数量
	local nEmoneyNum = Get_UserEMoney()
	local nCostEmoney = tHalloweenSale_Constant["Emoney"][nItemId]
	if nEmoneyNum < nCostEmoney then 
		Sys_MsgBox(tHalloweenSale_Text[nNpcId]["NoMoney"])
		return
	end
	
	-- 二次确认 是否购买
	tNpcGossip[nNpcId]["Text151"] = string.format(tHalloweenSale_Text[nNpcId]["Text151"],nCostEmoney)
	tNpcGossip[nNpcId]["OptionFunc151"] = "HalloweenSale_ConfirmBuy</N>24954</N>".. nItemId .."</N>".. nIndex
	LinkNpcGossipFunc_New(nNpcId,"1-5")

end

-- 确定购买
function HalloweenSale_ConfirmBuy(nNpcId,nItemId,nIndex)
	
	local nCostEmoney = tHalloweenSale_Constant["Emoney"][nItemId]
	
	--天石不足 无法购买
	local nEmoneyNum = Get_UserEMoney()
	if nEmoneyNum < nCostEmoney then 
		Sys_MsgBox(tHalloweenSale_Constant["NoMoney"])
		return
	end
	
	--背包空间不足
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tHalloweenSale_Reward[nIndex])
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tHalloweenSale_Reward[nIndex])
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(string.format(tHalloweenSale_Constant["NoSapce"],nSpaceNum))
		return
	end
	
	local nData = HalloweenSale_GetStcValue(1)
	
	-- 扣除天石
	if User_AddEMoney(-nCostEmoney) then
		-- 打log
		if type(tHalloweenSale_Constant["EmoneyLog"][nItemId]) == "string" then
			Sys_SaveEmoneyBuy(string.format(tHalloweenSale_Constant["EmoneyLog"][nItemId],nCostEmoney,nCostEmoney))
		else
			Sys_SaveEmoneyBuy(string.format(tHalloweenSale_Constant["EmoneyLog"]["Buy"],nCostEmoney,nCostEmoney))
		end
		
		-- 设置掩码 每种礼包每天限量1个
		nData = nData + HalloweenSale_Pow(10,tHalloweenSale_Constant["StcBasicOrder"][nIndex])
		
		if HalloweenSale_SetStcValue(1,nData) then
			--获得奖励
			RewardTemplate_UseItemAndMsg(tHalloweenSale_Reward[nIndex])
			Sys_MsgBox(tHalloweenSale_Constant["Reward"]..tHalloweenSale_Constant["ItemName"][nItemId])
			return
		end
	end

end

-- 打开礼包
function HalloweenSale_OpenPack(nBasciItemId,nItemId,nIndex,nCostEmoney)
	--获取玩家天石数量
	local nEmoneyNum = Get_UserEMoney()
	if nEmoneyNum < nCostEmoney then 
		Sys_MsgBox(tHalloweenSale_Constant["NoMoneyOpen"])
		return
	end
	
	local nData = HalloweenSale_GetStcValue(nIndex)
	local nCount = tHalloweenSale_Constant["ItemLimt"]
	if nData < tHalloweenSale_Constant["ItemLimt"] then 
		nCount = 1
	end
	--背包空间不足
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tHalloweenSale_Reward[nItemId][nCount])
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tHalloweenSale_Reward[nItemId][nCount])
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(string.format(tHalloweenSale_Constant["NoSapce"],nSpaceNum))
		return
	end
	
	-- 二次确认 是否打开礼包
	tItem[nItemId]["Text121"] = string.format(tHalloweenSale_Text[nItemId]["Text121"],nCostEmoney)
	tItem[nItemId]["OptionFunc121"] = "HalloweenSale_ConfirmOpen</N>".. nItemId .."</N>".. nIndex .."</N>".. nCostEmoney
	LinkItemGossipFunc_New(nItemId,"1-2")
	
end

-- 确认打开礼包
function HalloweenSale_ConfirmOpen(nItemId,nIndex,nCostEmoney)
	
	--天石不足 无法开启
	local nEmoneyNum = Get_UserEMoney()
	if nEmoneyNum < nCostEmoney then 
		Sys_MsgBox(tHalloweenSale_Constant["NoMoneyOpen"])
		return
	end
	
	local nData = HalloweenSale_GetStcValue(nIndex)
	local nCount = tHalloweenSale_Constant["ItemLimt"]
	if nData < tHalloweenSale_Constant["ItemLimt"] then 
		nCount = 1
	end
	--背包空间不足
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tHalloweenSale_Reward[nItemId][nCount])
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tHalloweenSale_Reward[nItemId][nCount])
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(string.format(tHalloweenSale_Constant["NoSapce"],nSpaceNum))
		return
	end
	
	-- 扣除天石
	if User_AddEMoney(-nCostEmoney) then
		-- 打log
		Sys_SaveEmoneyBuy(string.format(tHalloweenSale_Constant["EmoneyLog"][nItemId][nData],nCostEmoney,nCostEmoney))
		-- 设置掩码
		if HalloweenSale_SetStcValue(nIndex,nData + 1) then
			--获得奖励
			RewardTemplate_UseItemAndMsg(tHalloweenSale_Reward[nItemId][nCount])
			return
		end
	end
end

-- 物品使用
function HalloweenSale_ItemUse(nItemId,nIndex)
	if HalloweenSale_DeleteItem(nItemId) then
		return
	end

	local nData = HalloweenSale_GetStcValue(nIndex)
	
	if (nData == 0) or (nData > 5) then
		if not HalloweenSale_SetStcValue(nIndex,1) then
			return
		end
		nData = HalloweenSale_GetStcValue(nIndex)
	end
	
	--初始化对白 选项
	local nCostEmoney = tHalloweenSale_Constant["EmoneyOpen"][nItemId][nData]
	tItem[nItemId]["Text111"] = string.format(tHalloweenSale_Text[nItemId]["Text111"],nData)
	tItem[nItemId]["Text112"] = string.format(tHalloweenSale_Text[nItemId]["Text112"],nCostEmoney)
	tItem[nItemId]["Option111"] = string.format(tHalloweenSale_Text[nItemId]["Option111"],nCostEmoney)
	tItem[nItemId]["OptionFunc111"] = "HalloweenSale_OpenPack</N>3326356</N>".. nItemId .."</N>".. nIndex .."</N>".. nCostEmoney
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 选择宠物蛋
function HalloweenSale_Choose(nItemId,nIndex)
	tItem[nItemId]["Text121"] = string.format(tHalloweenSale_Text[nItemId]["Text121"],tHalloweenSale_Constant["ItemName"][nItemId])
	tItem[nItemId]["OptionFunc121"] = "HalloweenSale_Confirm</N>".. nItemId .. "</N>"..nIndex
	
	LinkItemGossipFunc_New(nItemId,"1-2")
end

-- 二次确认 是否选择该宠物蛋
function HalloweenSale_Confirm(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tHalloweenSale_Reward[nItemId][nIndex])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tHalloweenSale_Reward[nItemId][nIndex],nUserId,bJudge)
	
end
----------------------------------NPC部分---------------------------------------------
tNpcFace[2094] = 195
tNpcGossip[24954]= tNpcGossip[24954] or DefaultNpc:new{}
tNpcGossip[24954]["OptionHidden"] = 1
tNpcGossip[24954]["DialogueText"] = tHalloweenSale_Text[24954]

--活动前
tNpcGossip[24954]["Text1-1"] = {111,112,113}
tNpcGossip[24954]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tHalloweenSale_Constant["ActivityTime"])
end
tNpcGossip[24954]["tOption1-1"] = {111}

--活动后
tNpcGossip[24954]["Text1-2"] = {121}
tNpcGossip[24954]["ChkFunc1-2"]= function()
	return not Sys_ChkFullTime(tHalloweenSale_Constant["ActivityTime"])
end
tNpcGossip[24954]["tOption1-2"] = {121}

--活动中
tNpcGossip[24954]["Text1-3"] = {131,132,133}
tNpcGossip[24954]["ChkFunc1-3"]= function()
	if Sys_ChkFullTime(tHalloweenSale_Constant["ActivityTime"]) then
		HalloweenSale_ClearStcInterval(2)
		local nData = HalloweenSale_GetStcValue(2)
		if nData == 0 then
			return true
		else
			HalloweenSale_OpenShop(24954)
		end
	end
	
	return false
end
tNpcGossip[24954]["tOption1-3"] = {131,132}
tNpcGossip[24954]["OptionFunc131"] = "HalloweenSale_OpenShop</N>24954"

tNpcGossip[24954]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[24954]["tOption1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[24954]["OptionFunc141"] = "HalloweenSale_BuyPack</N>24954</N>3323634</N>1"
tNpcGossip[24954]["OptionFunc142"] = "HalloweenSale_BuyPack</N>24954</N>3323635</N>2"
tNpcGossip[24954]["OptionFunc143"] = "HalloweenSale_BuyPack</N>24954</N>3323636</N>3"
tNpcGossip[24954]["OptionFunc144"] = "HalloweenSale_BuyPack</N>24954</N>3323637</N>4"
tNpcGossip[24954]["OptionFunc145"] = "HalloweenSale_BuyPack</N>24954</N>3323638</N>5"
tNpcGossip[24954]["OptionFunc146"] = "HalloweenSale_BuyPack</N>24954</N>3323639</N>6"

tNpcGossip[24954]["Text1-5"] = {151}
tNpcGossip[24954]["tOption1-5"] = {151,152}

---------------------------------物品使用--------------------------------------------
-- ===万圣节惊喜礼包
tItem[3323634] = tItem[3323634] or {}
tItem[3323634]["Function"] = function(nItemId,sItemName)
	if HalloweenSale_DeleteItem(nItemId) then
		return
	end
	
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tHalloweenSale_Reward[nItemId])
	
	if not bJudge then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tHalloweenSale_Reward[nItemId],nUserId,bJudge)
	
end
-- ===万圣节超值礼包
tItem[3323635] = tItem[3323634]

-- ===炼气冲刺包
tItemFace[3323636] = 1448
tItem[3323636] = tItem[3323636] or {}
tItem[3323636]["Function"] = function(nItemId)
	HalloweenSale_ItemUse(nItemId,3)
end
tItem[3323636]["DialogueText"] = tHalloweenSale_Text[3323636]
tItem[3323636]["Text1-1"] = {111,112}
tItem[3323636]["tOption1-1"] = {111,112}
tItem[3323636]["Text1-2"] = {121}
tItem[3323636]["tOption1-2"] = {121,122}

-- ===练功冲刺包
tItemFace[3323637] = 2198
tItem[3323637] = tItem[3323637] or {}
tItem[3323637]["Function"] = function(nItemId)
	HalloweenSale_ItemUse(nItemId,4)
end
tItem[3323637]["DialogueText"] = tHalloweenSale_Text[3323637]
tItem[3323637]["Text1-1"] = {111,112}
tItem[3323637]["tOption1-1"] = {111,112}
tItem[3323637]["Text1-2"] = {121}
tItem[3323637]["tOption1-2"] = {121,122}

-- ===内功冲刺包
tItemFace[3323638] = 1418
tItem[3323638] = tItem[3323638] or {}
tItem[3323638]["Function"] = function(nItemId)
	HalloweenSale_ItemUse(nItemId,5)
end
tItem[3323638]["DialogueText"] = tHalloweenSale_Text[3323638]
tItem[3323638]["Text1-1"] = {111,112}
tItem[3323638]["tOption1-1"] = {111,112}
tItem[3323638]["Text1-2"] = {121}
tItem[3323638]["tOption1-2"] = {121,122}

-- ===副职业冲刺包
tItemFace[3323639] = 1165
tItem[3323639] = tItem[3323639] or {}
tItem[3323639]["Function"] = function(nItemId)
	HalloweenSale_ItemUse(nItemId,6)
end
tItem[3323639]["DialogueText"] = tHalloweenSale_Text[3323639]
tItem[3323639]["Text1-1"] = {111,112}
tItem[3323639]["tOption1-1"] = {111,112}
tItem[3323639]["Text1-2"] = {121}
tItem[3323639]["tOption1-2"] = {121,122}

-- ===神兽宠物蛋随机包
tItem[3326355] = tItem[3326355] or {}
tItem[3326355]["Function"] = function(nItemId,sItemName)
	if HalloweenSale_DeleteItem(nItemId) then
		return
	end
	
	RewardTemplate_RandomReward(tHalloweenSale_Reward,nItemId,nNowUserId)
end

-- ===普通宠物蛋自选包
tItemFace[3326356] = 1547
tItem[3326356] = tItem[3326356] or {}
tItem[3326356]["DialogueText"] = tHalloweenSale_Text[3326356]

tItem[3326356]["Text1-1"] = {111}
tItem[3326356]["tOption1-1"] = {111,112,113}
tItem[3326356]["OptionFunc111"] = "HalloweenSale_Choose</N>3326356</N>1"
tItem[3326356]["OptionFunc112"] = "HalloweenSale_Choose</N>3326356</N>2"
tItem[3326356]["OptionFunc113"] = "HalloweenSale_Choose</N>3326356</N>3"

tItem[3326356]["Text1-2"] = {121}
tItem[3326356]["tOption1-2"] = {121,122}

tItem[3326356]["Text1-3"] = {131}
tItem[3326356]["tOption1-3"] = {131,132}

-- ===奇怪的南瓜灯
tItemFace[3323633] = 2525
