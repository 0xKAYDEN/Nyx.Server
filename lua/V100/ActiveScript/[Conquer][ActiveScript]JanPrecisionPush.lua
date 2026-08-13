------------------------------------------------------------------------------------
--Name：            191128[英文征服][活动脚本]1月精准营销（1.02-1.31）
--Creator:      林嘉鑫
--Created:     2019-11-28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------

local tJanPrecisionPush_data = {}
	-- 赠点花费奖励
	tJanPrecisionPush_data[3327177] = {}
	tJanPrecisionPush_data[3327177][1] = {}
	tJanPrecisionPush_data[3327177][1]["Emoney"] = 1000
	tJanPrecisionPush_data[3327177][1]["CpsValue"] = 5000
	tJanPrecisionPush_data[3327177][2] = {}
	tJanPrecisionPush_data[3327177][2]["Emoney"] = 5000
	tJanPrecisionPush_data[3327177][2]["CpsValue"] = 35000
	tJanPrecisionPush_data[3327177][3] = {}
	tJanPrecisionPush_data[3327177][3]["Emoney"] = 10000
	tJanPrecisionPush_data[3327177][3]["CpsValue"] = 80000
	-- 轮盘
	tJanPrecisionPush_data[3327174] = 7094
	tJanPrecisionPush_data[3327175] = 7095
	tJanPrecisionPush_data[3327176] = 7096
	-- 神魂id
	tJanPrecisionPush_data["IsSoul"] = {3327235,3327236,3327237,3327238,3327239,3327240,3327241}
	-- 选项数量
	tJanPrecisionPush_data[3327193] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
	tJanPrecisionPush_data[3327195] = {111,112}
	tJanPrecisionPush_data[3327196] = {111,112,113,114,115,116,117,118}
	tJanPrecisionPush_data[3327199] = {111,112,113,114,115,116,117,118,119,1110,1111}
	tJanPrecisionPush_data[3327200] = {111,112,113,114}
	tJanPrecisionPush_data[3327201] = {111,112}
	tJanPrecisionPush_data[3327235] = {111,112}
	tJanPrecisionPush_data[3327236] = {111,112}
	tJanPrecisionPush_data[3327237] = {111,112,113,114}
	tJanPrecisionPush_data[3327238] = {111,112}
	tJanPrecisionPush_data[3327239] = {111,112}
	tJanPrecisionPush_data[3327240] = {111,112}
	tJanPrecisionPush_data[3327241] = {111,112}
	
local tJanPrecisionPush_Stc = {}
	-- 赠点包中包打开次数
	tJanPrecisionPush_Stc[3327177] = {}
	tJanPrecisionPush_Stc[3327177]["EventType"] = 211
	tJanPrecisionPush_Stc[3327177]["DataType"] = 21
	tJanPrecisionPush_Stc[3327177]["LimitData"] = 3
	-- 初级灵珠转盘
	tJanPrecisionPush_Stc[3327174] = {}
	tJanPrecisionPush_Stc[3327174]["EventType"] = 211
	tJanPrecisionPush_Stc[3327174]["DataType"] = 29
	tJanPrecisionPush_Stc[3327174]["LimitData"] = 50
	-- 中级灵珠转盘
	tJanPrecisionPush_Stc[3327175] = {}
	tJanPrecisionPush_Stc[3327175]["EventType"] = 211
	tJanPrecisionPush_Stc[3327175]["DataType"] = 30
	tJanPrecisionPush_Stc[3327175]["LimitData"] = 50
	-- 高级灵珠转盘
	tJanPrecisionPush_Stc[3327176] = {}
	tJanPrecisionPush_Stc[3327176]["EventType"] = 211
	tJanPrecisionPush_Stc[3327176]["DataType"] = 31
	tJanPrecisionPush_Stc[3327176]["LimitData"] = 50

local tJanPrecisionPush_Log = {}
	tJanPrecisionPush_Log["DelAllItem"] = "0,0,%d,%d,12001783,2,0,0"
	tJanPrecisionPush_Log[3327177] = {}
	tJanPrecisionPush_Log[3327177][1] = "350	22961	1000	10000	1	"
	tJanPrecisionPush_Log[3327177][2] = "350	22962	5000	5000	1	"
	tJanPrecisionPush_Log[3327177][3] = "350	22963	10000	10000	1	"
	
local tJanPrecisionPush_Pack = {}
	-- ===初级灵珠转盘
	-- ===索引: tJanPrecisionPush_Pack[3327171]
	-- ===删除: 3327171,1
	tJanPrecisionPush_Pack[3327171] = {}
	tJanPrecisionPush_Pack[3327171]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327171]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327171]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327171]["DeleteItem"][1]["Id"] = 3327171 -- 【库】PrimaryAnimaWheel[属性:11]
	tJanPrecisionPush_Pack[3327171]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327171]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327171]["RewardItem"][1]["Id"] = 3327174 -- PrimaryAnimaWheel[3327174][属性:11][叠加:0][金币:0], 【表格】初级灵珠转盘
	tJanPrecisionPush_Pack[3327171]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的PrimaryAnimaWheel*1
	tJanPrecisionPush_Pack[3327171]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327171]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327171]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327172] = {}
	-- ===中级灵珠转盘
	-- ===索引: tJanPrecisionPush_Pack[3327172]
	-- ===删除: 3327172,1
	tJanPrecisionPush_Pack[3327172]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327172]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327172]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327172]["DeleteItem"][1]["Id"] = 3327172 -- 【库】MediumAnimaWheel[属性:11]
	tJanPrecisionPush_Pack[3327172]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327172]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327172]["RewardItem"][1]["Id"] = 3327175 -- MediumAnimaWheel[3327175][属性:11][叠加:0][金币:0], 【表格】中级灵珠转盘
	tJanPrecisionPush_Pack[3327172]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的MediumAnimaWheel*1
	tJanPrecisionPush_Pack[3327172]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327172]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327172]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327173] = {}
	-- ===高级灵珠转盘
	-- ===索引: tJanPrecisionPush_Pack[3327173]
	-- ===删除: 3327173,1
	tJanPrecisionPush_Pack[3327173]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327173]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327173]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327173]["DeleteItem"][1]["Id"] = 3327173 -- 【库】AdvancedAnimaWheel[属性:11]
	tJanPrecisionPush_Pack[3327173]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327173]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327173]["RewardItem"][1]["Id"] = 3327176 -- AdvancedAnimaWheel[3327176][属性:11][叠加:0][金币:0], 【表格】高级灵珠转盘
	tJanPrecisionPush_Pack[3327173]["RewardItem"][1]["Attr"] = "0 1 0 4320 1" -- 3天时效(激活)的AdvancedAnimaWheel*1
	tJanPrecisionPush_Pack[3327173]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327173]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327173]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327177] = {}
	-- ===赠点包中包
	-- ===索引: tJanPrecisionPush_Pack[3327177][1]
	tJanPrecisionPush_Pack[3327177][1] = {}
	tJanPrecisionPush_Pack[3327177][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327177][1]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327177][1]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】第一次付费1000,打开获得5000赠品天石
	tJanPrecisionPush_Pack[3327177][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327177][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327177][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327177][2] = {}
	-- ===赠点包中包
	-- ===索引: tJanPrecisionPush_Pack[3327177][2]
	tJanPrecisionPush_Pack[3327177][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327177][2]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327177][2]["RewardEMoneyMono"]["Value"] = 35000 -- 天石（赠）, 【需求】第二次付费5000,打开获得35000赠品天石
	tJanPrecisionPush_Pack[3327177][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327177][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327177][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327177][3] = {}
	-- ===赠点包中包
	-- ===索引: tJanPrecisionPush_Pack[3327177][3]
	-- ===删除: 3327177,1
	tJanPrecisionPush_Pack[3327177][3]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327177][3]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327177][3]["RewardEMoneyMono"]["Value"] = 80000 -- 天石（赠）, 【需求】第三次付费10000,打开获得80000赠品天石
	tJanPrecisionPush_Pack[3327177][3]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327177][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327177][3]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327180] = {}
	-- ===极品玄晶必买包
	-- ===索引: tJanPrecisionPush_Pack[3327180]
	-- ===删除: 3327180,1
	-- ===EmoneyLog: 350,22966
	tJanPrecisionPush_Pack[3327180]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327180]["EmoneyLog"] = "350	22966	0	0	1	"
	tJanPrecisionPush_Pack[3327180]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327180]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327180]["DeleteItem"][1]["Id"] = 3327180 -- 【库】FantasyCrystalPromoPack[属性:9]
	tJanPrecisionPush_Pack[3327180]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327180]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327180]["RewardItem"][1]["Id"] = 3311633 -- SuperFantasyCrystal[3311633][属性:0][叠加:1][金币:0], 【表格】打开可获得赠极品玄晶*1
	tJanPrecisionPush_Pack[3327180]["RewardItem"][1]["Attr"] = "0 1 3" -- SuperFantasyCrystal（赠）*1
	tJanPrecisionPush_Pack[3327180]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327180]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327180]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327181] = {}
	-- ===爵位捐献必买包A
	-- ===索引: tJanPrecisionPush_Pack[3327181]
	-- ===删除: 3327181,1
	-- ===EmoneyLog: 350,22967
	tJanPrecisionPush_Pack[3327181]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327181]["EmoneyLog"] = "350	22967	0	0	1	"
	tJanPrecisionPush_Pack[3327181]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327181]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327181]["DeleteItem"][1]["Id"] = 3327181 -- 【库】ContributionPromoPack[属性:9]
	tJanPrecisionPush_Pack[3327181]["RewardDonate"] = {}
	tJanPrecisionPush_Pack[3327181]["RewardDonate"]["Value"] = 100000000 -- 贡献, 【需求】打开可获得捐献值1亿
	tJanPrecisionPush_Pack[3327181]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327181]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327181]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327182] = {}
	-- ===爵位捐献必买包B
	-- ===索引: tJanPrecisionPush_Pack[3327182]
	-- ===删除: 3327182,1
	-- ===EmoneyLog: 350,22968
	tJanPrecisionPush_Pack[3327182]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327182]["EmoneyLog"] = "350	22968	0	0	1	"
	tJanPrecisionPush_Pack[3327182]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327182]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327182]["DeleteItem"][1]["Id"] = 3327182 -- 【库】SuperContributionPromoPack[属性:9]
	tJanPrecisionPush_Pack[3327182]["RewardDonate"] = {}
	tJanPrecisionPush_Pack[3327182]["RewardDonate"]["Value"] = 1000000000 -- 贡献, 【需求】打开可获得捐献值10亿
	tJanPrecisionPush_Pack[3327182]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327182]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327182]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327183] = {}
	-- ===加持必买包
	-- ===索引: tJanPrecisionPush_Pack[3327183]
	-- ===删除: 3327183,1
	-- ===EmoneyLog: 350,22969
	tJanPrecisionPush_Pack[3327183]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327183]["EmoneyLog"] = "350	22969	0	0	1	"
	tJanPrecisionPush_Pack[3327183]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327183]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327183]["DeleteItem"][1]["Id"] = 3327183 -- 【库】EnchantmentPromoPack[属性:9]
	tJanPrecisionPush_Pack[3327183]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327183]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327183]["RewardItem"][1]["Id"] = 3326433 -- NormalDragonGem(B)*20[3326433][属性:9][叠加:0][金币:0], 【表格】打开可获得新道具,可以把某件装备的加持生命值直接升到255
	tJanPrecisionPush_Pack[3327183]["RewardItem"][1]["Attr"] = "0 10" -- NormalDragonGem(B)*20*10
	tJanPrecisionPush_Pack[3327183]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327183]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327183]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327184] = {}
	-- ===修行值必买包
	-- ===索引: tJanPrecisionPush_Pack[3327184]
	-- ===删除: 3327184,1
	-- ===EmoneyLog: 350,22970
	tJanPrecisionPush_Pack[3327184]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327184]["EmoneyLog"] = "350	22970	0	0	1	"
	tJanPrecisionPush_Pack[3327184]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327184]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327184]["DeleteItem"][1]["Id"] = 3327184 -- 【库】StudyPtsPromoPack[属性:9]
	tJanPrecisionPush_Pack[3327184]["RewardCultivation"] = {}
	tJanPrecisionPush_Pack[3327184]["RewardCultivation"]["Value"] = 25000 -- 修行值, 【需求】打开可以获得修行值25000,送全套副职业入门道具
	tJanPrecisionPush_Pack[3327184]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][1]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0]
	tJanPrecisionPush_Pack[3327184]["RewardItem"][1]["Attr"] = "0 5 3" -- CelestialStone（赠）*5
	tJanPrecisionPush_Pack[3327184]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][2]["Id"] = 723087 -- LuckyAmulet[723087][属性:0][叠加:10000][金币:0]
	tJanPrecisionPush_Pack[3327184]["RewardItem"][2]["Attr"] = "0 20 3" -- LuckyAmulet（赠）*20（[错误]物品数量超10个）
	tJanPrecisionPush_Pack[3327184]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][3]["Id"] = 723903 -- Saddle[723903][属性:0][叠加:100][金币:0]
	tJanPrecisionPush_Pack[3327184]["RewardItem"][3]["Attr"] = "0 40 3" -- Saddle（赠）*40（[错误]物品数量超10个）
	tJanPrecisionPush_Pack[3327184]["RewardItem"][4] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][4]["Id"] = 721261 -- Bomb[721261][属性:0][叠加:10000][金币:1]
	tJanPrecisionPush_Pack[3327184]["RewardItem"][4]["Attr"] = "0 10 3" -- Bomb（赠）*10
	tJanPrecisionPush_Pack[3327184]["RewardItem"][5] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][5]["Id"] = 1088001 -- Meteor[1088001][属性:0][叠加:0][金币:10000]
	tJanPrecisionPush_Pack[3327184]["RewardItem"][5]["Attr"] = "0 10 3" -- Meteor（赠）*10
	tJanPrecisionPush_Pack[3327184]["RewardItem"][6] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][6]["Id"] = 711188 -- YinYangFruit[711188][属性:8][叠加:10][金币:0]
	tJanPrecisionPush_Pack[3327184]["RewardItem"][6]["Attr"] = "0 1 3" -- YinYangFruit（赠）*1
	tJanPrecisionPush_Pack[3327184]["RewardItem"][7] = {}
	tJanPrecisionPush_Pack[3327184]["RewardItem"][7]["Id"] = 711679 -- PerformerCard[711679][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327184]["RewardItem"][7]["Attr"] = "0 1 3" -- PerformerCard（赠）*1
	tJanPrecisionPush_Pack[3327184]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327184]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327184]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327185] = {}
	-- ===固化石精选包
	-- ===索引: tJanPrecisionPush_Pack[3327185]
	-- ===删除: 3327185,1
	-- ===EmoneyLog: 350,22971
	tJanPrecisionPush_Pack[3327185]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327185]["EmoneyLog"] = "350	22971	0	0	1	"
	tJanPrecisionPush_Pack[3327185]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327185]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327185]["DeleteItem"][1]["Id"] = 3327185 -- 【库】PermanentStonePromoPack[属性:9]
	tJanPrecisionPush_Pack[3327185]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327185]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327185]["RewardItem"][1]["Id"] = 723694 -- PermanentStone[723694][属性:0][叠加:0][金币:0], 【表格】赠小固化石*5
	tJanPrecisionPush_Pack[3327185]["RewardItem"][1]["Attr"] = "0 5 3" -- PermanentStone（赠）*5
	tJanPrecisionPush_Pack[3327185]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327185]["RewardItem"][2]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0], 【表格】赠大固化石*1
	tJanPrecisionPush_Pack[3327185]["RewardItem"][2]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJanPrecisionPush_Pack[3327185]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327185]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327185]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327186] = {}
	-- ===灵宝葫芦特惠包
	-- ===索引: tJanPrecisionPush_Pack[3327186]
	-- ===删除: 3327186,1
	-- ===EmoneyLog: 350,22972
	tJanPrecisionPush_Pack[3327186]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327186]["EmoneyLog"] = "350	22972	0	0	1	"
	tJanPrecisionPush_Pack[3327186]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327186]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327186]["DeleteItem"][1]["Id"] = 3327186 -- 【库】MiraculousGourdPromoPack[属性:9]
	tJanPrecisionPush_Pack[3327186]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327186]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327186]["RewardItem"][1]["Id"] = 2100025 -- MiraculousGourd[2100025][属性:0][叠加:0][金币:1], 【表格】赠灵宝葫芦*1
	tJanPrecisionPush_Pack[3327186]["RewardItem"][1]["Attr"] = "0 1 3" -- MiraculousGourd（赠）*1
	tJanPrecisionPush_Pack[3327186]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327186]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327186]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327187] = {}
	-- ===净水玉瓶特惠包
	-- ===索引: tJanPrecisionPush_Pack[3327187]
	-- ===删除: 3327187,1
	-- ===EmoneyLog: 350,22973
	tJanPrecisionPush_Pack[3327187]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327187]["EmoneyLog"] = "350	22973	0	0	1	"
	tJanPrecisionPush_Pack[3327187]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327187]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327187]["DeleteItem"][1]["Id"] = 3327187 -- 【库】MagicalBottlePromoPack[属性:9]
	tJanPrecisionPush_Pack[3327187]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327187]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327187]["RewardItem"][1]["Id"] = 2100045 -- MagicalBottle[2100045][属性:0][叠加:0][金币:1], 【表格】赠净水玉瓶*1
	tJanPrecisionPush_Pack[3327187]["RewardItem"][1]["Attr"] = "0 1 3" -- MagicalBottle（赠）*1
	tJanPrecisionPush_Pack[3327187]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327187]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327187]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327188] = {}
	-- ===爵位捐献必买包C
	-- ===索引: tJanPrecisionPush_Pack[3327188]
	-- ===删除: 3327188,1
	-- ===EmoneyLog: 350,22974
	tJanPrecisionPush_Pack[3327188]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327188]["EmoneyLog"] = "350	22974	0	0	1	"
	tJanPrecisionPush_Pack[3327188]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327188]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327188]["DeleteItem"][1]["Id"] = 3327188 -- 【库】GrandContributionPromoPack[属性:9]
	tJanPrecisionPush_Pack[3327188]["RewardDonate"] = {}
	tJanPrecisionPush_Pack[3327188]["RewardDonate"]["Value"] = 500000000 -- 贡献, 【需求】打开可获得捐献值5亿
	tJanPrecisionPush_Pack[3327188]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327188]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327188]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327189] = {}
	-- ===顶级+12戒指狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327189]
	-- ===删除: 3327189,1
	-- ===EmoneyLog: 350,22975
	tJanPrecisionPush_Pack[3327189]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327189]["EmoneyLog"] = "350	22975	0	0	1	"
	tJanPrecisionPush_Pack[3327189]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327189]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327189]["DeleteItem"][1]["Id"] = 3327189 -- 【库】+12RingJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327189]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327189]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327189]["RewardItem"][1]["Id"] = 150269 -- CrimsonRing[150269][属性:0][叠加:0][金币:46480], 【表格】打开可获得一件赠品顶级+12戒指,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327189]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）CrimsonRing（赠）*1
	tJanPrecisionPush_Pack[3327189]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327189]["RewardItem"][2]["Id"] = 3327235 -- P7RingSoulPack[3327235][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327189]["RewardItem"][2]["Attr"] = "0 1" -- P7RingSoulPack*1
	tJanPrecisionPush_Pack[3327189]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327189]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327189]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327189]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327189]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327189]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327190] = {}
	-- ===顶级+12项链狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327190]
	-- ===删除: 3327190,1
	-- ===EmoneyLog: 350,22976
	tJanPrecisionPush_Pack[3327190]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327190]["EmoneyLog"] = "350	22976	0	0	1	"
	tJanPrecisionPush_Pack[3327190]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327190]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327190]["DeleteItem"][1]["Id"] = 3327190 -- 【库】+12NecklaceJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327190]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327190]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327190]["RewardItem"][1]["Id"] = 120269 -- FloridNecklace[120269][属性:0][叠加:0][金币:32000], 【表格】打开可获得一件赠品顶级+12项链,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327190]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）FloridNecklace（赠）*1
	tJanPrecisionPush_Pack[3327190]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327190]["RewardItem"][2]["Id"] = 821033 -- HeavenNecklace[821033][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327190]["RewardItem"][2]["Attr"] = "0 1 3" -- HeavenNecklace（赠）*1
	tJanPrecisionPush_Pack[3327190]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327190]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327190]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327190]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327190]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327190]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327191] = {}
	-- ===顶级+12道士香囊狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327191]
	-- ===删除: 3327191,1
	-- ===EmoneyLog: 350,22977
	tJanPrecisionPush_Pack[3327191]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327191]["EmoneyLog"] = "350	22977	0	0	1	"
	tJanPrecisionPush_Pack[3327191]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327191]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327191]["DeleteItem"][1]["Id"] = 3327191 -- 【库】+12TaoistBagJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327191]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327191]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327191]["RewardItem"][1]["Id"] = 121269 -- NiftyBag[121269][属性:0][叠加:0][金币:32000], 【表格】打开可获得一件赠品顶级+12道士香囊,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327191]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 073 073" -- 2洞（加持+255）7%神佑（追加+12）NiftyBag（赠）*1
	tJanPrecisionPush_Pack[3327191]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327191]["RewardItem"][2]["Id"] = 821034 -- FervorBag[821034][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327191]["RewardItem"][2]["Attr"] = "0 1 3" -- FervorBag（赠）*1
	tJanPrecisionPush_Pack[3327191]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327191]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327191]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327191]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327191]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327191]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327192] = {}
	-- ===顶级+12靴子狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327192]
	-- ===删除: 3327192,1
	-- ===EmoneyLog: 350,22978
	tJanPrecisionPush_Pack[3327192]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327192]["EmoneyLog"] = "350	22978	0	0	1	"
	tJanPrecisionPush_Pack[3327192]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327192]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327192]["DeleteItem"][1]["Id"] = 3327192 -- 【库】+12BootsJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327192]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327192]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327192]["RewardItem"][1]["Id"] = 160249 -- Blizzard[160249][属性:0][叠加:0][金币:41180], 【表格】打开可获得一件赠品顶级+12靴子,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327192]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）Blizzard（赠）*1
	tJanPrecisionPush_Pack[3327192]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327192]["RewardItem"][2]["Id"] = 3327236 -- P7BootsSoulPack[3327236][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327192]["RewardItem"][2]["Attr"] = "0 1" -- P7BootsSoulPack*1
	tJanPrecisionPush_Pack[3327192]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327192]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327192]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327192]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327192]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327192]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][1]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][1] = {}
	tJanPrecisionPush_Pack[3327193][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][1]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][1]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][1]["Id"] = 118309 -- PeerlessCoronet[118309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（勇士）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）PeerlessCoronet（赠）*1
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][1]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][2] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][2]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][2]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][2]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][1]["Id"] = 114309 -- DistinctCap[114309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（道士）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 003 003" -- 2洞（加持+255）7%神佑（追加+12）DistinctCap（赠）*1
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][2]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][3] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][3]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][3]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][3]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][3]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][3]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][3]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][1]["Id"] = 123309 -- NightmareHood[123309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（忍者1）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）NightmareHood（赠）*1
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][3]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][3]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][3]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][4] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][4]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][4]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][4]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][4]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][4]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][4]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][1]["Id"] = 112309 -- RambleVeil[112309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（忍者2）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）RambleVeil（赠）*1
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][4]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][4]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][4]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][5] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][5]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][5]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][5]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][5]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][5]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][5]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][1]["Id"] = 143309 -- XumiCap[143309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（武僧）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）XumiCap（赠）*1
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][5]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][5]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][5]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][6] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][6]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][6]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][6]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][6]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][6]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][6]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][1]["Id"] = 145309 -- PieceRoger`sHood[145309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（海盗1）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）PieceRoger`sHood（赠）*1
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][6]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][6]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][6]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][7] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][7]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][7]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][7]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][7]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][7]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][7]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][1]["Id"] = 144309 -- DominatorHat[144309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（海盗2）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）DominatorHat（赠）*1
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][7]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][7]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][7]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][8] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][8]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][8]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][8]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][8]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][8]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][8]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][1]["Id"] = 142309 -- HeavenPlume[142309][属性:0][叠加:0][金币:96160], 【表格】打开可自选一件赠品顶级+12头盔（弓手1）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）HeavenPlume（赠）*1
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][8]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][8]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][8]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][9] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][9]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][9]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][9]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][9]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][9]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][9]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][1]["Id"] = 113309 -- WhiteTigerHat[113309][属性:0][叠加:0][金币:96160], 【表格】打开可自选一件赠品顶级+12头盔（弓手2）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）WhiteTigerHat（赠）*1
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][9]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][9]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][9]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][10] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][10]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][10]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][10]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][10]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][10]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][10]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][1]["Id"] = 141309 -- DragonHeadband[141309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（战士1）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）DragonHeadband（赠）*1
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][10]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][10]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][10]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][11] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][11]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][11]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][11]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][11]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][11]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][11]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][1]["Id"] = 111309 -- SteelHelmet[111309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（战士2）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）SteelHelmet（赠）*1
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][11]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][11]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][11]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327193][12] = {}
	-- ===顶级+12头盔自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327193][12]
	-- ===删除: 3327193,1
	-- ===EmoneyLog: 350,22979
	tJanPrecisionPush_Pack[3327193][12]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327193][12]["EmoneyLog"] = "350	22979	0	0	1	"
	tJanPrecisionPush_Pack[3327193][12]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327193][12]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][12]["DeleteItem"][1]["Id"] = 3327193 -- 【库】+12HelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][1]["Id"] = 148309 -- LegendHood[148309][属性:0][叠加:0][金币:48080], 【表格】打开可自选一件赠品顶级+12头盔（小龙）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）LegendHood（赠）*1
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327193][12]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327193][12]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327193][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327193][12]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327194] = {}
	-- ===顶级+12铁扇头盔狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327194]
	-- ===删除: 3327194,1
	-- ===EmoneyLog: 350,22980
	tJanPrecisionPush_Pack[3327194]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327194]["EmoneyLog"] = "350	22980	0	0	1	"
	tJanPrecisionPush_Pack[3327194]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327194]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327194]["DeleteItem"][1]["Id"] = 3327194 -- 【库】+12WindwalkerHelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327194]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327194]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327194]["RewardItem"][1]["Id"] = 170309 -- DivineCloudHat[170309][属性:0][叠加:0][金币:48080], 【表格】打开可获得一件赠品顶级+12铁扇头盔,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327194]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）DivineCloudHat（赠）*1
	tJanPrecisionPush_Pack[3327194]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327194]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327194]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327194]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327194]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327194]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327194]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327194]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327194]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327195] = {}
	-- ===顶级+12雷神头盔狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327195][1]
	-- ===删除: 3327195,1
	-- ===EmoneyLog: 350,22981
	tJanPrecisionPush_Pack[3327195][1] = {}
	tJanPrecisionPush_Pack[3327195][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327195][1]["EmoneyLog"] = "350	22981	0	0	1	"
	tJanPrecisionPush_Pack[3327195][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327195][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327195][1]["DeleteItem"][1]["Id"] = 3327195 -- 【库】+12ThunderstrikerHelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][1]["Id"] = 147309 -- BlitzHeadwear[147309][属性:0][叠加:0][金币:48080], 【表格】打开可获得一件赠品顶级+12雷神头盔1,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）BlitzHeadwear（赠）*1
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327195][1]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327195][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327195][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327195][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327195][2] = {}
	-- ===顶级+12雷神头盔狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327195][2]
	-- ===删除: 3327195,1
	-- ===EmoneyLog: 350,22981
	tJanPrecisionPush_Pack[3327195][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327195][2]["EmoneyLog"] = "350	22981	0	0	1	"
	tJanPrecisionPush_Pack[3327195][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327195][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327195][2]["DeleteItem"][1]["Id"] = 3327195 -- 【库】+12ThunderstrikerHelmetJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][1]["Id"] = 146309 -- MightyHelmet[146309][属性:0][叠加:0][金币:48080], 【表格】打开可获得一件赠品顶级+12雷神头盔2,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）MightyHelmet（赠）*1
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][2]["Id"] = 3327237 -- P7HeadgearSoulPack[3327237][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][2]["Attr"] = "0 1" -- P7HeadgearSoulPack*1
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327195][2]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327195][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327195][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327195][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][1]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][1] = {}
	tJanPrecisionPush_Pack[3327196][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][1]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][1]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][1]["Id"] = 130309 -- ObsidianArmor[130309][属性:0][叠加:0][金币:129000], 【表格】打开可自选一件赠品顶级+12盔甲（勇士）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）ObsidianArmor（赠）*1
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][1]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196][2] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][2]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][2]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][2]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][1]["Id"] = 134309 -- EternalRobe[134309][属性:0][叠加:0][金币:129000], 【表格】打开可自选一件赠品顶级+12盔甲（道士）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 003 003" -- 2洞（加持+255）7%神佑（追加+12）EternalRobe（赠）*1
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][2]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196][3] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][3]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][3]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][3]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][3]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][3]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][3]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][1]["Id"] = 135309 -- NightmareVest[135309][属性:0][叠加:0][金币:129000], 【表格】打开可自选一件赠品顶级+12盔甲（忍者）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）NightmareVest（赠）*1
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][3]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][3]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][3]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196][4] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][4]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][4]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][4]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][4]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][4]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][4]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][1]["Id"] = 136309 -- WhiteLotusFrock[136309][属性:0][叠加:0][金币:129000], 【表格】打开可自选一件赠品顶级+12盔甲（武僧）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）WhiteLotusFrock（赠）*1
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][4]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][4]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][4]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196][5] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][5]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][5]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][5]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][5]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][5]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][5]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][1]["Id"] = 139309 -- DarkDragonCoat[139309][属性:0][叠加:0][金币:129000], 【表格】打开可自选一件赠品顶级+12盔甲（海盗）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）DarkDragonCoat（赠）*1
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][5]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][5]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][5]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196][6] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][6]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][6]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][6]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][6]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][6]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][6]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][1]["Id"] = 133309 -- WelkinCoat[133309][属性:0][叠加:0][金币:258000], 【表格】打开可自选一件赠品顶级+12盔甲（弓手）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）WelkinCoat（赠）*1
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][6]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][6]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][6]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196][7] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][7]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][7]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][7]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][7]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][7]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][7]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][1]["Id"] = 131309 -- ImperiousArmor[131309][属性:0][叠加:0][金币:129000], 【表格】打开可自选一件赠品顶级+12盔甲（战士）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）ImperiousArmor（赠）*1
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][7]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][7]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][7]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327196][8] = {}
	-- ===顶级+12盔甲自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327196][8]
	-- ===删除: 3327196,1
	-- ===EmoneyLog: 350,22982
	tJanPrecisionPush_Pack[3327196][8]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327196][8]["EmoneyLog"] = "350	22982	0	0	1	"
	tJanPrecisionPush_Pack[3327196][8]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327196][8]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][8]["DeleteItem"][1]["Id"] = 3327196 -- 【库】+12ArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][1]["Id"] = 138309 -- CombatSuit(Lv.140)[138309][属性:0][叠加:0][金币:129000], 【表格】打开可自选一件赠品顶级+12盔甲（小龙）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）CombatSuit(Lv.140)（赠）*1
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327196][8]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327196][8]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327196][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327196][8]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327197] = {}
	-- ===顶级+12铁扇盔甲狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327197]
	-- ===删除: 3327197,1
	-- ===EmoneyLog: 350,22983
	tJanPrecisionPush_Pack[3327197]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327197]["EmoneyLog"] = "350	22983	0	0	1	"
	tJanPrecisionPush_Pack[3327197]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327197]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327197]["DeleteItem"][1]["Id"] = 3327197 -- 【库】+12WindwalkerArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327197]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327197]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327197]["RewardItem"][1]["Id"] = 101309 -- BrilliantWindrobe[101309][属性:0][叠加:0][金币:129000], 【表格】打开可获得一件赠品顶级+12铁扇盔甲,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327197]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）BrilliantWindrobe（赠）*1
	tJanPrecisionPush_Pack[3327197]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327197]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327197]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327197]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327197]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327197]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327197]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327197]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327197]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327198] = {}
	-- ===顶级+12雷神盔甲狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327198]
	-- ===删除: 3327198,1
	-- ===EmoneyLog: 350,22984
	tJanPrecisionPush_Pack[3327198]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327198]["EmoneyLog"] = "350	22984	0	0	1	"
	tJanPrecisionPush_Pack[3327198]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327198]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327198]["DeleteItem"][1]["Id"] = 3327198 -- 【库】+12ThunderstrikerArmorJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327198]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327198]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327198]["RewardItem"][1]["Id"] = 102309 -- TitanArmor[102309][属性:0][叠加:0][金币:129000], 【表格】打开可获得一件赠品顶级+12雷神盔甲,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327198]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）TitanArmor（赠）*1
	tJanPrecisionPush_Pack[3327198]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327198]["RewardItem"][2]["Id"] = 3327238 -- P7ArmorSoulPack[3327238][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327198]["RewardItem"][2]["Attr"] = "0 1" -- P7ArmorSoulPack*1
	tJanPrecisionPush_Pack[3327198]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327198]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327198]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327198]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327198]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327198]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][1]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][1] = {}
	tJanPrecisionPush_Pack[3327199][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][1]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][1]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][1]["Id"] = 410439 -- SkyBlade[410439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（刀）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）SkyBlade（赠）*1
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][2]["Id"] = 3327239 -- P7.1-handedSoulPack[3327239][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][2]["Attr"] = "0 1" -- P7.1-handedSoulPack*1
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][1]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][2] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][2]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][2]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][2]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][1]["Id"] = 420439 -- SquallSword[420439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（剑）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）SquallSword（赠）*1
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][2]["Id"] = 3327239 -- P7.1-handedSoulPack[3327239][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][2]["Attr"] = "0 1" -- P7.1-handedSoulPack*1
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][2]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][3] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][3]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][3]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][3]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][3]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][3]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][3]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][1]["Id"] = 480439 -- NirvanaClub[480439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（棒）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）NirvanaClub（赠）*1
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][2]["Id"] = 3327239 -- P7.1-handedSoulPack[3327239][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][2]["Attr"] = "0 1" -- P7.1-handedSoulPack*1
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][3]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][3]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][3]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][4] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][4]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][4]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][4]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][4]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][4]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][4]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][1]["Id"] = 421439 -- SupremeSword[421439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（法剑）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 003 003" -- 2洞（加持+255）7%神佑（追加+12）SupremeSword（赠）*1
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][2]["Id"] = 800522 -- TimeBacksword[800522][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][2]["Attr"] = "0 1 3" -- TimeBacksword（赠）*1
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][4]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][4]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][4]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][5] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][5]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][5]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][5]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][5]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][5]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][5]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][1]["Id"] = 500429 -- HeavenlyBow[500429][属性:0][叠加:0][金币:200000], 【表格】打开可自选一件赠品顶级+12武器（弓）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）HeavenlyBow（赠）*1
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][2]["Id"] = 800618 -- SunBow[800618][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][2]["Attr"] = "0 1 3" -- SunBow（赠）*1
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][5]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][5]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][5]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][6] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][6]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][6]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][6]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][6]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][6]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][6]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][1]["Id"] = 561439 -- OccultWand[561439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（长棍）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）OccultWand（赠）*1
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][2]["Id"] = 800215 -- SkyHalberd[800215][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][2]["Attr"] = "0 1 3" -- SkyHalberd（赠）*1
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][6]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][6]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][6]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][7] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][7]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][7]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][7]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][7]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][7]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][7]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][1]["Id"] = 560439 -- SpearOfWrath[560439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（长枪）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）SpearOfWrath（赠）*1
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][2]["Id"] = 800215 -- SkyHalberd[800215][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][2]["Attr"] = "0 1 3" -- SkyHalberd（赠）*1
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][7]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][7]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][7]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][8] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][8]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][8]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][8]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][8]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][8]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][8]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][1]["Id"] = 900309 -- CelestialShield[900309][属性:0][叠加:0][金币:113020], 【表格】打开可自选一件赠品顶级+12武器（盾牌）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- CelestialShield（赠）*1
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][2]["Id"] = 800422 -- SpiritShield[800422][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][2]["Attr"] = "0 1 3" -- SpiritShield（赠）*1
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][8]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][8]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][8]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][9] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][9]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][9]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][9]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][9]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][9]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][9]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][1]["Id"] = 601439 -- HanzoKatana[601439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（忍刀）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）HanzoKatana（赠）*1
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][2]["Id"] = 800142 -- ShadowKatana[800142][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][2]["Attr"] = "0 1 3" -- ShadowKatana（赠）*1
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][9]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][9]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][9]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][10] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][10]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][10]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][10]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][10]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][10]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][10]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][1]["Id"] = 611439 -- CaptainRapier[611439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（刺剑）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）CaptainRapier（赠）*1
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][2]["Id"] = 800811 -- RepentRapier[800811][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][2]["Attr"] = "0 1 3" -- RepentRapier（赠）*1
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][10]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][10]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][10]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327199][11] = {}
	-- ===顶级+12武器自选狂欢包A
	-- ===索引: tJanPrecisionPush_Pack[3327199][11]
	-- ===删除: 3327199,1
	-- ===EmoneyLog: 350,22985
	tJanPrecisionPush_Pack[3327199][11]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327199][11]["EmoneyLog"] = "350	22985	0	0	1	"
	tJanPrecisionPush_Pack[3327199][11]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327199][11]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][11]["DeleteItem"][1]["Id"] = 3327199 -- 【库】+12WeaponJoyPackA[属性:11]
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][1]["Id"] = 612439 -- LordPistol[612439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（火枪）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）LordPistol（赠）*1
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][2]["Id"] = 800810 -- DeathPistol[800810][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][2]["Attr"] = "0 1 3" -- DeathPistol（赠）*1
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327199][11]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327199][11]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327199][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327199][11]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327200] = {}
	-- ===顶级+12武器自选狂欢包B
	-- ===索引: tJanPrecisionPush_Pack[3327200][1]
	-- ===删除: 3327200,1
	-- ===EmoneyLog: 350,22986
	tJanPrecisionPush_Pack[3327200][1] = {}
	tJanPrecisionPush_Pack[3327200][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327200][1]["EmoneyLog"] = "350	22986	0	0	1	"
	tJanPrecisionPush_Pack[3327200][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327200][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][1]["DeleteItem"][1]["Id"] = 3327200 -- 【库】+12WeaponJoyPackB[属性:11]
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][1]["Id"] = 410439 -- SkyBlade[410439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（毒刀）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013 200" -- 2洞（加持+255）7%神佑（追加+12）SkyBlade（赠）*1
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][2]["Id"] = 3327239 -- P7.1-handedSoulPack[3327239][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][2]["Attr"] = "0 1" -- P7.1-handedSoulPack*1
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][1]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327200][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327200][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327200][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327200][2] = {}
	-- ===顶级+12武器自选狂欢包B
	-- ===索引: tJanPrecisionPush_Pack[3327200][2]
	-- ===删除: 3327200,1
	-- ===EmoneyLog: 350,22986
	tJanPrecisionPush_Pack[3327200][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327200][2]["EmoneyLog"] = "350	22986	0	0	1	"
	tJanPrecisionPush_Pack[3327200][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327200][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][2]["DeleteItem"][1]["Id"] = 3327200 -- 【库】+12WeaponJoyPackB[属性:11]
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][1]["Id"] = 613429 -- FantasyKnife[613429][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（飞刀）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）FantasyKnife（赠）*1
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][2]["Id"] = 800917 -- GhostKnife[800917][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][2]["Attr"] = "0 1 3" -- GhostKnife（赠）*1
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][2]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327200][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327200][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327200][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327200][3] = {}
	-- ===顶级+12武器自选狂欢包B
	-- ===索引: tJanPrecisionPush_Pack[3327200][3]
	-- ===删除: 3327200,1
	-- ===EmoneyLog: 350,22986
	tJanPrecisionPush_Pack[3327200][3]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327200][3]["EmoneyLog"] = "350	22986	0	0	1	"
	tJanPrecisionPush_Pack[3327200][3]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327200][3]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][3]["DeleteItem"][1]["Id"] = 3327200 -- 【库】+12WeaponJoyPackB[属性:11]
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][1]["Id"] = 511439 -- SilenceScythe[511439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（钩镰）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）SilenceScythe（赠）*1
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][2]["Id"] = 800255 -- DemonScythe[800255][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][2]["Attr"] = "0 1 3" -- DemonScythe（赠）*1
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][3]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327200][3]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327200][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327200][3]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327200][4] = {}
	-- ===顶级+12武器自选狂欢包B
	-- ===索引: tJanPrecisionPush_Pack[3327200][4]
	-- ===删除: 3327200,1
	-- ===EmoneyLog: 350,22986
	tJanPrecisionPush_Pack[3327200][4]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327200][4]["EmoneyLog"] = "350	22986	0	0	1	"
	tJanPrecisionPush_Pack[3327200][4]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327200][4]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][4]["DeleteItem"][1]["Id"] = 3327200 -- 【库】+12WeaponJoyPackB[属性:11]
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][1]["Id"] = 610439 -- LazuritePrayerBeads[610439][属性:0][叠加:0][金币:100000], 【表格】打开可自选一件赠品顶级+12武器（念珠）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）LazuritePrayerBeads（赠）*1
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][2]["Id"] = 800725 -- BuddaBeads[800725][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][2]["Attr"] = "0 1 3" -- BuddaBeads（赠）*1
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327200][4]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327200][4]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327200][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327200][4]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327201] = {}
	-- ===顶级+12雷神武器自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327201][1]
	-- ===删除: 3327201,1
	-- ===EmoneyLog: 350,22987
	tJanPrecisionPush_Pack[3327201][1] = {}
	tJanPrecisionPush_Pack[3327201][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327201][1]["EmoneyLog"] = "350	22987	0	0	1	"
	tJanPrecisionPush_Pack[3327201][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327201][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327201][1]["DeleteItem"][1]["Id"] = 3327201 -- 【库】+12ThunderstrikerWeaponJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][1]["Id"] = 681439 -- ChaoticStormhammer[681439][属性:0][叠加:0][金币:200000], 【表格】打开可自选一件赠品顶级+12雷神武器（战锤）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）ChaoticStormhammer（赠）*1
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][2]["Id"] = 3327240 -- P7StormhammerSoulPack[3327240][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][2]["Attr"] = "0 1" -- P7StormhammerSoulPack*1
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327201][1]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327201][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327201][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327201][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327201][2] = {}
	-- ===顶级+12雷神武器自选狂欢包
	-- ===索引: tJanPrecisionPush_Pack[3327201][2]
	-- ===删除: 3327201,1
	-- ===EmoneyLog: 350,22987
	tJanPrecisionPush_Pack[3327201][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327201][2]["EmoneyLog"] = "350	22987	0	0	1	"
	tJanPrecisionPush_Pack[3327201][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327201][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327201][2]["DeleteItem"][1]["Id"] = 3327201 -- 【库】+12ThunderstrikerWeaponJoyPack[属性:11]
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][1]["Id"] = 680439 -- InfiniteFlashaxe[680439][属性:0][叠加:0][金币:200000], 【表格】打开可自选一件赠品顶级+12雷神武器（战斧）,对应7级神魂道具,3颗大固化石
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 7 255 0 12 013 013" -- 2洞（加持+255）7%神佑（追加+12）InfiniteFlashaxe（赠）*1
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][2]["Id"] = 3327241 -- P7FlashaxeSoulPack[3327241][属性:11][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][2]["Attr"] = "0 1" -- P7FlashaxeSoulPack*1
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][3] = {}
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0]
	tJanPrecisionPush_Pack[3327201][2]["RewardItem"][3]["Attr"] = "0 3 3" -- BigPermanentStone（赠）*3
	tJanPrecisionPush_Pack[3327201][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327201][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327201][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327242] = {}
	-- ===满精炼星陨石大礼包
	-- ===索引: tJanPrecisionPush_Pack[3327242]
	-- ===删除: 3327242,1
	-- ===EmoneyLog: 350,22988
	tJanPrecisionPush_Pack[3327242]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327242]["EmoneyLog"] = "350	22988	0	0	1	"
	tJanPrecisionPush_Pack[3327242]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327242]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327242]["DeleteItem"][1]["Id"] = 3327242 -- 【库】LuxuryStarStonePack[属性:11]
	tJanPrecisionPush_Pack[3327242]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327242]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327242]["RewardItem"][1]["Id"] = 3327243 -- SplendidStarStonePack[3327243][属性:11][叠加:0][金币:0], 【表格】打开可获得4个璀璨星陨石小礼包
	tJanPrecisionPush_Pack[3327242]["RewardItem"][1]["Attr"] = "0 4" -- SplendidStarStonePack*4
	tJanPrecisionPush_Pack[3327242]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327242]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327242]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327243] = {}
	-- ===璀璨星陨石小礼包
	-- ===索引: tJanPrecisionPush_Pack[3327243]
	-- ===删除: 3327243,1
	tJanPrecisionPush_Pack[3327243]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327243]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327243]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327243]["DeleteItem"][1]["Id"] = 3327243 -- 【库】SplendidStarStonePack[属性:11]
	tJanPrecisionPush_Pack[3327243]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327243]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327243]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】小礼包打开含有13个璀璨星陨石
	tJanPrecisionPush_Pack[3327243]["RewardItem"][1]["Attr"] = "0 13 0 2880 1" -- 2天时效(激活)的SplendidStarStone*13（[错误]物品数量超10个）
	tJanPrecisionPush_Pack[3327243]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327243]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327243]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327235] = {}
	-- ===七阶戒指神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327235][1]
	-- ===删除: 3327235,1
	tJanPrecisionPush_Pack[3327235][1] = {}
	tJanPrecisionPush_Pack[3327235][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327235][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327235][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327235][1]["DeleteItem"][1]["Id"] = 3327235 -- 【库】P7RingSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327235][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327235][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327235][1]["RewardItem"][1]["Id"] = 823059 -- DragonRing[823059][属性:0][叠加:0][金币:0], 【表格】[粉碎]
	tJanPrecisionPush_Pack[3327235][1]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonRing（赠）*1
	tJanPrecisionPush_Pack[3327235][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327235][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327235][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327235][2] = {}
	-- ===七阶戒指神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327235][2]
	-- ===删除: 3327235,1
	tJanPrecisionPush_Pack[3327235][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327235][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327235][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327235][2]["DeleteItem"][1]["Id"] = 3327235 -- 【库】P7RingSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327235][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327235][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327235][2]["RewardItem"][1]["Id"] = 823058 -- CraneRing[823058][属性:0][叠加:0][金币:0], 【表格】[暴击]
	tJanPrecisionPush_Pack[3327235][2]["RewardItem"][1]["Attr"] = "0 1 3" -- CraneRing（赠）*1
	tJanPrecisionPush_Pack[3327235][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327235][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327235][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327236] = {}
	-- ===七阶靴子神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327236][1]
	-- ===删除: 3327236,1
	tJanPrecisionPush_Pack[3327236][1] = {}
	tJanPrecisionPush_Pack[3327236][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327236][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327236][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327236][1]["DeleteItem"][1]["Id"] = 3327236 -- 【库】P7BootsSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327236][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327236][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327236][1]["RewardItem"][1]["Id"] = 824019 -- DragonBoots[824019][属性:0][叠加:0][金币:0], 【表格】[粉碎]
	tJanPrecisionPush_Pack[3327236][1]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBoots（赠）*1
	tJanPrecisionPush_Pack[3327236][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327236][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327236][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327236][2] = {}
	-- ===七阶靴子神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327236][2]
	-- ===删除: 3327236,1
	tJanPrecisionPush_Pack[3327236][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327236][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327236][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327236][2]["DeleteItem"][1]["Id"] = 3327236 -- 【库】P7BootsSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327236][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327236][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327236][2]["RewardItem"][1]["Id"] = 824018 -- FoxBoots[824018][属性:0][叠加:0][金币:0], 【表格】[暴击]
	tJanPrecisionPush_Pack[3327236][2]["RewardItem"][1]["Attr"] = "0 1 3" -- FoxBoots（赠）*1
	tJanPrecisionPush_Pack[3327236][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327236][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327236][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327237] = {}
	-- ===七阶头部神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327237][1]
	-- ===删除: 3327237,1
	tJanPrecisionPush_Pack[3327237][1] = {}
	tJanPrecisionPush_Pack[3327237][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327237][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327237][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][1]["DeleteItem"][1]["Id"] = 3327237 -- 【库】P7HeadgearSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327237][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327237][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][1]["RewardItem"][1]["Id"] = 820076 -- IceHeadgear[820076][属性:0][叠加:0][金币:0], 【表格】法术[坚固]
	tJanPrecisionPush_Pack[3327237][1]["RewardItem"][1]["Attr"] = "0 1 3" -- IceHeadgear（赠）*1
	tJanPrecisionPush_Pack[3327237][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327237][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327237][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327237][2] = {}
	-- ===七阶头部神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327237][2]
	-- ===删除: 3327237,1
	tJanPrecisionPush_Pack[3327237][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327237][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327237][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][2]["DeleteItem"][1]["Id"] = 3327237 -- 【库】P7HeadgearSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327237][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327237][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][2]["RewardItem"][1]["Id"] = 820075 -- StarHeadgear[820075][属性:0][叠加:0][金币:0], 【表格】法术[防暴]
	tJanPrecisionPush_Pack[3327237][2]["RewardItem"][1]["Attr"] = "0 1 3" -- StarHeadgear（赠）*1
	tJanPrecisionPush_Pack[3327237][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327237][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327237][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327237][3] = {}
	-- ===七阶头部神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327237][3]
	-- ===删除: 3327237,1
	tJanPrecisionPush_Pack[3327237][3]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327237][3]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327237][3]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][3]["DeleteItem"][1]["Id"] = 3327237 -- 【库】P7HeadgearSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327237][3]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327237][3]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][3]["RewardItem"][1]["Id"] = 820074 -- SunHeadgear[820074][属性:0][叠加:0][金币:0], 【表格】物理[坚固]
	tJanPrecisionPush_Pack[3327237][3]["RewardItem"][1]["Attr"] = "0 1 3" -- SunHeadgear（赠）*1
	tJanPrecisionPush_Pack[3327237][3]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327237][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327237][3]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327237][4] = {}
	-- ===七阶头部神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327237][4]
	-- ===删除: 3327237,1
	tJanPrecisionPush_Pack[3327237][4]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327237][4]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327237][4]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][4]["DeleteItem"][1]["Id"] = 3327237 -- 【库】P7HeadgearSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327237][4]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327237][4]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327237][4]["RewardItem"][1]["Id"] = 820073 -- MoonHeadgear[820073][属性:0][叠加:0][金币:0], 【表格】物理[防暴]
	tJanPrecisionPush_Pack[3327237][4]["RewardItem"][1]["Attr"] = "0 1 3" -- MoonHeadgear（赠）*1
	tJanPrecisionPush_Pack[3327237][4]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327237][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327237][4]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327238] = {}
	-- ===七阶盔甲神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327238][1]
	-- ===删除: 3327238,1
	tJanPrecisionPush_Pack[3327238][1] = {}
	tJanPrecisionPush_Pack[3327238][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327238][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327238][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327238][1]["DeleteItem"][1]["Id"] = 3327238 -- 【库】P7ArmorSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327238][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327238][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327238][1]["RewardItem"][1]["Id"] = 822072 -- EclipseArmor[822072][属性:0][叠加:0][金币:0], 【表格】[法防]
	tJanPrecisionPush_Pack[3327238][1]["RewardItem"][1]["Attr"] = "0 1 3" -- EclipseArmor（赠）*1
	tJanPrecisionPush_Pack[3327238][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327238][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327238][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327238][2] = {}
	-- ===七阶盔甲神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327238][2]
	-- ===删除: 3327238,1
	tJanPrecisionPush_Pack[3327238][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327238][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327238][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327238][2]["DeleteItem"][1]["Id"] = 3327238 -- 【库】P7ArmorSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327238][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327238][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327238][2]["RewardItem"][1]["Id"] = 822071 -- NetherArmor[822071][属性:0][叠加:0][金币:0], 【表格】[物防]
	tJanPrecisionPush_Pack[3327238][2]["RewardItem"][1]["Attr"] = "0 1 3" -- NetherArmor（赠）*1
	tJanPrecisionPush_Pack[3327238][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327238][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327238][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327239] = {}
	-- ===七阶单手武器神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327239][1]
	-- ===删除: 3327239,1
	tJanPrecisionPush_Pack[3327239][1] = {}
	tJanPrecisionPush_Pack[3327239][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327239][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327239][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327239][1]["DeleteItem"][1]["Id"] = 3327239 -- 【库】P7.1-handedSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327239][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327239][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327239][1]["RewardItem"][1]["Id"] = 800020 -- MonsterSaber[800020][属性:0][叠加:0][金币:0], 【表格】刀
	tJanPrecisionPush_Pack[3327239][1]["RewardItem"][1]["Attr"] = "0 1 3" -- MonsterSaber（赠）*1
	tJanPrecisionPush_Pack[3327239][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327239][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327239][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327239][2] = {}
	-- ===七阶单手武器神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327239][2]
	-- ===删除: 3327239,1
	tJanPrecisionPush_Pack[3327239][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327239][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327239][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327239][2]["DeleteItem"][1]["Id"] = 3327239 -- 【库】P7.1-handedSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327239][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327239][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327239][2]["RewardItem"][1]["Id"] = 800111 -- SkyHammer[800111][属性:0][叠加:0][金币:0], 【表格】锤
	tJanPrecisionPush_Pack[3327239][2]["RewardItem"][1]["Attr"] = "0 1 3" -- SkyHammer（赠）*1
	tJanPrecisionPush_Pack[3327239][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327239][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327239][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327240] = {}
	-- ===七阶战锤神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327240][1]
	-- ===删除: 3327240,1
	tJanPrecisionPush_Pack[3327240][1] = {}
	tJanPrecisionPush_Pack[3327240][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327240][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327240][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327240][1]["DeleteItem"][1]["Id"] = 3327240 -- 【库】P7StormhammerSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327240][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327240][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327240][1]["RewardItem"][1]["Id"] = 827010 -- DivineShockwave(Stormhammer)[827010][属性:0][叠加:0][金币:0], 【表格】战锤
	tJanPrecisionPush_Pack[3327240][1]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineShockwave(Stormhammer)（赠）*1
	tJanPrecisionPush_Pack[3327240][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327240][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327240][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327240][2] = {}
	-- ===七阶战锤神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327240][2]
	-- ===删除: 3327240,1
	tJanPrecisionPush_Pack[3327240][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327240][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327240][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327240][2]["DeleteItem"][1]["Id"] = 3327240 -- 【库】P7StormhammerSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327240][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327240][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327240][2]["RewardItem"][1]["Id"] = 827012 -- DivineVoidSplitter(Stormhammer)[827012][属性:0][叠加:0][金币:0], 【表格】战锤
	tJanPrecisionPush_Pack[3327240][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineVoidSplitter(Stormhammer)（赠）*1
	tJanPrecisionPush_Pack[3327240][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327240][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327240][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327241] = {}
	-- ===七阶战斧神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327241][1]
	-- ===删除: 3327240,1
	tJanPrecisionPush_Pack[3327241][1] = {}
	tJanPrecisionPush_Pack[3327241][1]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327241][1]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327241][1]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327241][1]["DeleteItem"][1]["Id"] = 3327241 -- 【库】P7StormhammerSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327241][1]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327241][1]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327241][1]["RewardItem"][1]["Id"] = 827011 -- DivineShockwave(Flashaxe)[827011][属性:0][叠加:0][金币:0], 【表格】战斧
	tJanPrecisionPush_Pack[3327241][1]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineShockwave(Flashaxe)（赠）*1
	tJanPrecisionPush_Pack[3327241][1]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327241][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327241][1]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327241][2] = {}
	-- ===七阶战斧神魂包
	-- ===索引: tJanPrecisionPush_Pack[3327241][2]
	-- ===删除: 3327240,1
	tJanPrecisionPush_Pack[3327241][2]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327241][2]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327241][2]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327241][2]["DeleteItem"][1]["Id"] = 3327241 -- 【库】P7StormhammerSoulPack[属性:11]
	tJanPrecisionPush_Pack[3327241][2]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327241][2]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327241][2]["RewardItem"][1]["Id"] = 827013 -- DivineVoidSplitter(Flashaxe)[827013][属性:0][叠加:0][金币:0], 【表格】战斧
	tJanPrecisionPush_Pack[3327241][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineVoidSplitter(Flashaxe)（赠）*1
	tJanPrecisionPush_Pack[3327241][2]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327241][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327241][2]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327258] = {}
	-- ===Paypal充值第一名礼包
	-- ===索引: tJanPrecisionPush_Pack[3327258]
	-- ===删除: 3327258,1
	-- ===NewEmoneyLog: 1000,1347
	tJanPrecisionPush_Pack[3327258]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327258]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327258]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327258]["DeleteItem"][1]["Id"] = 3327258 -- 【库】PayPalCredit1stPlacePack[属性:9]
	tJanPrecisionPush_Pack[3327258]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327258]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327258]["RewardItem"][1]["Id"] = 195645 -- StarSea(Hymn)[195645][属性:0][叠加:0][金币:0], 【表格】StarSea（Hymn）
	tJanPrecisionPush_Pack[3327258]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑StarSea(Hymn)（赠）*1
	tJanPrecisionPush_Pack[3327258]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327258]["RewardEMoneyMono"]["Value"] = 10000 -- 天石（赠）, 【需求】10000赠点天石
	tJanPrecisionPush_Pack[3327258]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1347"
	tJanPrecisionPush_Pack[3327258]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327258]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*500
	tJanPrecisionPush_Pack[3327258]["RewardItem"][2]["Attr"] = "0 500 3" -- UniversalRuneEssence（赠）*500（[错误]物品数量超100个）
	tJanPrecisionPush_Pack[3327258]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327258]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327258]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327259] = {}
	-- ===Paypal充值第二名礼包
	-- ===索引: tJanPrecisionPush_Pack[3327259]
	-- ===删除: 3327259,1
	-- ===NewEmoneyLog: 1000,1348
	tJanPrecisionPush_Pack[3327259]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327259]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327259]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327259]["DeleteItem"][1]["Id"] = 3327259 -- 【库】PayPalCredit2ndPlacePack[属性:9]
	tJanPrecisionPush_Pack[3327259]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327259]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327259]["RewardItem"][1]["Id"] = 195645 -- StarSea(Hymn)[195645][属性:0][叠加:0][金币:0], 【表格】StarSea（Hymn）
	tJanPrecisionPush_Pack[3327259]["RewardItem"][1]["Attr"] = "0 1 3 172800 1 0 0 1" -- 120天时效(激活)的1%神佑StarSea(Hymn)（赠）*1
	tJanPrecisionPush_Pack[3327259]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327259]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000赠点天石
	tJanPrecisionPush_Pack[3327259]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1348"
	tJanPrecisionPush_Pack[3327259]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327259]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*500
	tJanPrecisionPush_Pack[3327259]["RewardItem"][2]["Attr"] = "0 500 3" -- UniversalRuneEssence（赠）*500（[错误]物品数量超100个）
	tJanPrecisionPush_Pack[3327259]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327259]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327259]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327260] = {}
	-- ===Paypal充值第三名礼包
	-- ===索引: tJanPrecisionPush_Pack[3327260]
	-- ===删除: 3327260,1
	-- ===NewEmoneyLog: 1000,1349
	tJanPrecisionPush_Pack[3327260]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327260]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327260]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327260]["DeleteItem"][1]["Id"] = 3327260 -- 【库】PayPalCredit3rdPlacePack[属性:9]
	tJanPrecisionPush_Pack[3327260]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327260]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327260]["RewardItem"][1]["Id"] = 195645 -- StarSea(Hymn)[195645][属性:0][叠加:0][金币:0], 【表格】StarSea（Hymn）
	tJanPrecisionPush_Pack[3327260]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑StarSea(Hymn)（赠）*1
	tJanPrecisionPush_Pack[3327260]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327260]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000赠点天石
	tJanPrecisionPush_Pack[3327260]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1349"
	tJanPrecisionPush_Pack[3327260]["RewardItem"][2] = {}
	tJanPrecisionPush_Pack[3327260]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*500
	tJanPrecisionPush_Pack[3327260]["RewardItem"][2]["Attr"] = "0 500 3" -- UniversalRuneEssence（赠）*500（[错误]物品数量超100个）
	tJanPrecisionPush_Pack[3327260]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327260]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327260]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327261] = {}
	-- ===Paypal充值第4-5名礼包
	-- ===索引: tJanPrecisionPush_Pack[3327261]
	-- ===删除: 3327261,1
	-- ===NewEmoneyLog: 1000,1350
	tJanPrecisionPush_Pack[3327261]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327261]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327261]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327261]["DeleteItem"][1]["Id"] = 3327261 -- 【库】PayPalCreditStandoutPlacePack[属性:9]
	tJanPrecisionPush_Pack[3327261]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327261]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000赠点天石
	tJanPrecisionPush_Pack[3327261]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1350"
	tJanPrecisionPush_Pack[3327261]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327261]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327261]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*300
	tJanPrecisionPush_Pack[3327261]["RewardItem"][1]["Attr"] = "0 300 3" -- UniversalRuneEssence（赠）*300（[错误]物品数量超100个）
	tJanPrecisionPush_Pack[3327261]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327261]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327261]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327262] = {}
	-- ===Paypal充值第6-10名礼包
	-- ===索引: tJanPrecisionPush_Pack[3327262]
	-- ===删除: 3327262,1
	-- ===NewEmoneyLog: 1000,1351
	tJanPrecisionPush_Pack[3327262]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327262]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327262]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327262]["DeleteItem"][1]["Id"] = 3327262 -- 【库】PayPalCreditElitePlacePack[属性:9]
	tJanPrecisionPush_Pack[3327262]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327262]["RewardEMoneyMono"]["Value"] = 2000 -- 天石（赠）, 【需求】2000赠点天石
	tJanPrecisionPush_Pack[3327262]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1351"
	tJanPrecisionPush_Pack[3327262]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327262]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327262]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*200
	tJanPrecisionPush_Pack[3327262]["RewardItem"][1]["Attr"] = "0 200 3" -- UniversalRuneEssence（赠）*200（[错误]物品数量超100个）
	tJanPrecisionPush_Pack[3327262]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327262]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327262]["RewardEffect"]["Effect"] = "angelwing"


	tJanPrecisionPush_Pack[3327263] = {}
	-- ===Paypal充值第11-20名礼包
	-- ===索引: tJanPrecisionPush_Pack[3327263]
	-- ===删除: 3327263,1
	-- ===NewEmoneyLog: 1000,1352
	tJanPrecisionPush_Pack[3327263]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327263]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327263]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327263]["DeleteItem"][1]["Id"] = 3327263 -- 【库】PayPalCreditPlacePack[属性:9]
	tJanPrecisionPush_Pack[3327263]["RewardEMoneyMono"] = {}
	tJanPrecisionPush_Pack[3327263]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000赠点天石
	tJanPrecisionPush_Pack[3327263]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1352"
	tJanPrecisionPush_Pack[3327263]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327263]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327263]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*100
	tJanPrecisionPush_Pack[3327263]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tJanPrecisionPush_Pack[3327263]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327263]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327263]["RewardEffect"]["Effect"] = "angelwing"


	--P7武器神魂可选包（赠）
	tJanPrecisionPush_Pack[3327178] = {}
	tJanPrecisionPush_Pack[3327178][21] = {}
	tJanPrecisionPush_Pack[3327178][21]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][21]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][21]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][21]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][21]["RewardItem"][1]["Id"] = 800020
	tJanPrecisionPush_Pack[3327178][21]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][21]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][21]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][21]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][21]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][21]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][22] = {}
	tJanPrecisionPush_Pack[3327178][22]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][22]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][22]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][22]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][22]["RewardItem"][1]["Id"] = 800111
	tJanPrecisionPush_Pack[3327178][22]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][22]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][22]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][22]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][22]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][22]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][23] = {}
	tJanPrecisionPush_Pack[3327178][23]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][23]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][23]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][23]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][23]["RewardItem"][1]["Id"] = 800215
	tJanPrecisionPush_Pack[3327178][23]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][23]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][23]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][23]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][23]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][23]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][24] = {}
	tJanPrecisionPush_Pack[3327178][24]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][24]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][24]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][24]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][24]["RewardItem"][1]["Id"] = 800811
	tJanPrecisionPush_Pack[3327178][24]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][24]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][24]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][24]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][24]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][24]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][25] = {}
	tJanPrecisionPush_Pack[3327178][25]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][25]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][25]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][25]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][25]["RewardItem"][1]["Id"] = 800810
	tJanPrecisionPush_Pack[3327178][25]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][25]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][25]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][25]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][25]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][25]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][26] = {}
	tJanPrecisionPush_Pack[3327178][26]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][26]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][26]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][26]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][26]["RewardItem"][1]["Id"] = 800142
	tJanPrecisionPush_Pack[3327178][26]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][26]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][26]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][26]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][26]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][26]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][31] = {}
	tJanPrecisionPush_Pack[3327178][31]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][31]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][31]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][31]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][31]["RewardItem"][1]["Id"] = 800917
	tJanPrecisionPush_Pack[3327178][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][31]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][31]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][31]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][31]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][31]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][32] = {}
	tJanPrecisionPush_Pack[3327178][32]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][32]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][32]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][32]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][32]["RewardItem"][1]["Id"] = 800255
	tJanPrecisionPush_Pack[3327178][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][32]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][32]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][32]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][32]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][32]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][33] = {}
	tJanPrecisionPush_Pack[3327178][33]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][33]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][33]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][33]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][33]["RewardItem"][1]["Id"] = 800422
	tJanPrecisionPush_Pack[3327178][33]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][33]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][33]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][33]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][33]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][33]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][34] = {}
	tJanPrecisionPush_Pack[3327178][34]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][34]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][34]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][34]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][34]["RewardItem"][1]["Id"] = 800522
	tJanPrecisionPush_Pack[3327178][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][34]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][34]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][34]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][34]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][34]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][35] = {}
	tJanPrecisionPush_Pack[3327178][35]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][35]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][35]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][35]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][35]["RewardItem"][1]["Id"] = 800618
	tJanPrecisionPush_Pack[3327178][35]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][35]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][35]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][35]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][35]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][35]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][35]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][41] = {}
	tJanPrecisionPush_Pack[3327178][41]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][41]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][41]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][41]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][41]["RewardItem"][1]["Id"] = 800725
	tJanPrecisionPush_Pack[3327178][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][41]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][41]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][41]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][41]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][41]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][42] = {}
	tJanPrecisionPush_Pack[3327178][42]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][42]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][42]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][42]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][42]["RewardItem"][1]["Id"] = 801004
	tJanPrecisionPush_Pack[3327178][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][42]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][42]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][42]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][42]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][42]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][43] = {}
	tJanPrecisionPush_Pack[3327178][43]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][43]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][43]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][43]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][43]["RewardItem"][1]["Id"] = 801104
	tJanPrecisionPush_Pack[3327178][43]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][43]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][43]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][43]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][43]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][43]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][43]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][44] = {}
	tJanPrecisionPush_Pack[3327178][44]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][44]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][44]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][44]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][44]["RewardItem"][1]["Id"] = 801216
	tJanPrecisionPush_Pack[3327178][44]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][44]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][44]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][44]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][44]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][44]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][44]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][45] = {}
	tJanPrecisionPush_Pack[3327178][45]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][45]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][45]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][45]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][45]["RewardItem"][1]["Id"] = 801218
	tJanPrecisionPush_Pack[3327178][45]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][45]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][45]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][45]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][45]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][45]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][45]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327178][46] = {}
	tJanPrecisionPush_Pack[3327178][46]["LogId"] = 12001783
	tJanPrecisionPush_Pack[3327178][46]["EmoneyLog"] = "350	22964	0	0	1	"
	tJanPrecisionPush_Pack[3327178][46]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327178][46]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][46]["RewardItem"][1]["Id"] = 801308
	tJanPrecisionPush_Pack[3327178][46]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327178][46]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327178][46]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327178][46]["DeleteItem"][1]["Id"] = 3327178
	tJanPrecisionPush_Pack[3327178][46]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327178][46]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327178][46]["RewardEffect"]["Effect"] = "angelwing"


	-- P7防具神魂可选包（赠）
	tJanPrecisionPush_Pack[3327179] = {}
	tJanPrecisionPush_Pack[3327179][31] = {}
	tJanPrecisionPush_Pack[3327179][31]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][31]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][31]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][31]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][31]["RewardItem"][1]["Id"] = 820073
	tJanPrecisionPush_Pack[3327179][31]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][31]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][31]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][31]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][31]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][31]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][31]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][32] = {}
	tJanPrecisionPush_Pack[3327179][32]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][32]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][32]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][32]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][32]["RewardItem"][1]["Id"] = 820074
	tJanPrecisionPush_Pack[3327179][32]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][32]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][32]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][32]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][32]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][32]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][32]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][33] = {}
	tJanPrecisionPush_Pack[3327179][33]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][33]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][33]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][33]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][33]["RewardItem"][1]["Id"] = 820075
	tJanPrecisionPush_Pack[3327179][33]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][33]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][33]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][33]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][33]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][33]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][33]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][34] = {}
	tJanPrecisionPush_Pack[3327179][34]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][34]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][34]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][34]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][34]["RewardItem"][1]["Id"] = 820076
	tJanPrecisionPush_Pack[3327179][34]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][34]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][34]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][34]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][34]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][34]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][34]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][41] = {}
	tJanPrecisionPush_Pack[3327179][41]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][41]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][41]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][41]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][41]["RewardItem"][1]["Id"] = 822071
	tJanPrecisionPush_Pack[3327179][41]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][41]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][41]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][41]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][41]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][41]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][41]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][42] = {}
	tJanPrecisionPush_Pack[3327179][42]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][42]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][42]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][42]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][42]["RewardItem"][1]["Id"] = 822072
	tJanPrecisionPush_Pack[3327179][42]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][42]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][42]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][42]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][42]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][42]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][42]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][51] = {}
	tJanPrecisionPush_Pack[3327179][51]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][51]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][51]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][51]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][51]["RewardItem"][1]["Id"] = 821034
	tJanPrecisionPush_Pack[3327179][51]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][51]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][51]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][51]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][51]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][51]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][51]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][52] = {}
	tJanPrecisionPush_Pack[3327179][52]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][52]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][52]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][52]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][52]["RewardItem"][1]["Id"] = 821033
	tJanPrecisionPush_Pack[3327179][52]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][52]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][52]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][52]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][52]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][52]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][52]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][61] = {}
	tJanPrecisionPush_Pack[3327179][61]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][61]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][61]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][61]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][61]["RewardItem"][1]["Id"] = 823058
	tJanPrecisionPush_Pack[3327179][61]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][61]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][61]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][61]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][61]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][61]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][61]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][62] = {}
	tJanPrecisionPush_Pack[3327179][62]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][62]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][62]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][62]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][62]["RewardItem"][1]["Id"] = 823059
	tJanPrecisionPush_Pack[3327179][62]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][62]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][62]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][62]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][62]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][62]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][62]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][63] = {}
	tJanPrecisionPush_Pack[3327179][63]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][63]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][63]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][63]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][63]["RewardItem"][1]["Id"] = 823061
	tJanPrecisionPush_Pack[3327179][63]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][63]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][63]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][63]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][63]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][63]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][63]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][64] = {}
	tJanPrecisionPush_Pack[3327179][64]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][64]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][64]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][64]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][64]["RewardItem"][1]["Id"] = 823062
	tJanPrecisionPush_Pack[3327179][64]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][64]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][64]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][64]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][64]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][64]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][64]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][65] = {}
	tJanPrecisionPush_Pack[3327179][65]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][65]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][65]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][65]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][65]["RewardItem"][1]["Id"] = 823060
	tJanPrecisionPush_Pack[3327179][65]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][65]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][65]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][65]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][65]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][65]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][65]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][71] = {}
	tJanPrecisionPush_Pack[3327179][71]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][71]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][71]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][71]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][71]["RewardItem"][1]["Id"] = 824018
	tJanPrecisionPush_Pack[3327179][71]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][71]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][71]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][71]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][71]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][71]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][71]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][72] = {}
	tJanPrecisionPush_Pack[3327179][72]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][72]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][72]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][72]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][72]["RewardItem"][1]["Id"] = 824019
	tJanPrecisionPush_Pack[3327179][72]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][72]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][72]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][72]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][72]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][72]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][72]["RewardEffect"]["Effect"] = "angelwing"
	
	tJanPrecisionPush_Pack[3327179][73] = {}
	tJanPrecisionPush_Pack[3327179][73]["LogId"] = 12001725
	tJanPrecisionPush_Pack[3327179][73]["EmoneyLog"] = "350	22965	0	0	1	"
	tJanPrecisionPush_Pack[3327179][73]["RewardItem"] = {}
	tJanPrecisionPush_Pack[3327179][73]["RewardItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][73]["RewardItem"][1]["Id"] = 824020
	tJanPrecisionPush_Pack[3327179][73]["RewardItem"][1]["Attr"] = "0 1 3"
	tJanPrecisionPush_Pack[3327179][73]["DeleteItem"] = {}
	tJanPrecisionPush_Pack[3327179][73]["DeleteItem"][1] = {}
	tJanPrecisionPush_Pack[3327179][73]["DeleteItem"][1]["Id"] = 3327179
	tJanPrecisionPush_Pack[3327179][73]["RewardEffect"] = {}
	tJanPrecisionPush_Pack[3327179][73]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJanPrecisionPush_Pack[3327179][73]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
-- 赠点包中包
function JanPrecisionPush_OpenCPsPack(nItemId,nEmoney,nAwardValue)
	if not Item_ChkItem(nItemId) then 
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tJanPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tJanPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	if nData >= tJanPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			local sDelItemLog = string.format(tJanPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tJanPrecisionPush_Text["Msg"]["NoTimes"])
		end
		return
	end
	--天石判断
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tJanPrecisionPush_Text["Msg"]["NoEmoney"])
		return
	end
	--赠点天石上限判断
	if Get_UserMonoEMoney() + nAwardValue > G_User_MaxEmoneyMono then
		Sys_MsgBox(tJanPrecisionPush_Text["Msg"]["OverEmoneyMono"])
		return
	end
	if User_AddEMoney(-nEmoney) then
		Task_AddStatistic(nEvent,nType,1,1)
		RewardTemplate_UseItemAndMsg(tJanPrecisionPush_Pack[nItemId][nData + 1])
		Sys_SaveEmoneyBuy(tJanPrecisionPush_Log[nItemId][nData + 1])
		-- 最后一次重置并删除
		if Get_UserStatisticValue(nEvent,nType) >= tJanPrecisionPush_Stc[nItemId]["LimitData"] then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_SetStatistic(nEvent,nType,0,1)
				local sDelItemLog = string.format(tJanPrecisionPush_Log["DelAllItem"],nItemId,1)
				Sys_SaveActionFestivalLog(sDelItemLog)
			end
			return
		end
	end
end

-- 神魂可选包逻辑
function JanPrecisionPush_P7SoulSelect(nItemId,nIndex)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tJanPrecisionPush_Pack[nItemId][nIndex])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tJanPrecisionPush_Pack[nItemId][nIndex],nUserId,bJudge)
end

-- +12自选包二次确认
function JanPrecisionPush_ChooseItemSure(nItemId,nChoose)
	if not Item_ChkItem(nItemId) then 
		return
	end
	local sItemName = Get_ItemtypeName(tJanPrecisionPush_Pack[nItemId][nChoose]["RewardItem"][1]["Id"])
	tItem[nItemId]["Text121"] = string.format(tJanPrecisionPush_Text["Item"]["Text121"],sItemName)
	tItem[nItemId]["OptionFunc121"] = "JanPrecisionPush_OpenItemPack</N>"..nItemId.."</N>"..nChoose
	LinkItemGossipFunc_New(nItemId,"1-2")
end

-- 打开+12自选包
function JanPrecisionPush_OpenItemPack(nItemId,nChoose)
	if not Item_ChkItem(nItemId) then 
		return
	end
	RewardTemplate_UseItemAndMsg(tJanPrecisionPush_Pack[nItemId][nChoose])
end

---------------------------------物品部分---------------------------------------------
-- 普通礼包
tItem[3327171] = tItem[3327171] or {}
tItem[3327171]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tJanPrecisionPush_Pack[nItemId])
end
tItem[3327172] = tItem[3327171]
tItem[3327173] = tItem[3327171]
tItem[3327180] = tItem[3327171]
tItem[3327181] = tItem[3327171]
tItem[3327182] = tItem[3327171]
tItem[3327183] = tItem[3327171]
tItem[3327184] = tItem[3327171]
tItem[3327185] = tItem[3327171]
tItem[3327186] = tItem[3327171]
tItem[3327187] = tItem[3327171]
tItem[3327188] = tItem[3327171]
tItem[3327189] = tItem[3327171]
tItem[3327190] = tItem[3327171]
tItem[3327191] = tItem[3327171]
tItem[3327192] = tItem[3327171]
tItem[3327194] = tItem[3327171]
tItem[3327197] = tItem[3327171]
tItem[3327198] = tItem[3327171]
tItem[3327242] = tItem[3327171]
tItem[3327243] = tItem[3327171]
tItem[3327258] = tItem[3327171]
tItem[3327259] = tItem[3327171]
tItem[3327260] = tItem[3327171]
tItem[3327261] = tItem[3327171]
tItem[3327262] = tItem[3327171]
tItem[3327263] = tItem[3327171]

-- 轮盘
tItem[3327174] = tItem[3327174] or {}
tItem[3327174]["Function"] = function (nItemId,sItemName)
	local nEvent = tJanPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tJanPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType) or 0
	-- 对掩码值进行分解，取出今天的次数
	local nNowSingleData = nData % 10000
	-- 50次删除
	if nNowSingleData >= tJanPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			local sDelItemLog = string.format(tJanPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tJanPrecisionPush_Text["Msg"]["NoTimes"])
		end
		return
	end
	RouletteMould_Main(tJanPrecisionPush_data[nItemId])
end
tItem[3327175] = tItem[3327174]
tItem[3327176] = tItem[3327174]

-- 3327177,'赠点包中包',9
tItemFace[3327177] = 1029
tItem[3327177] = tItem[3327177] or {}
tItem[3327177]["DialogueText"] = tJanPrecisionPush_Text[3327177]
tItem[3327177]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tJanPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tJanPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	if nData >= tJanPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			local sDelItemLog = string.format(tJanPrecisionPush_Log["DelAllItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelItemLog)
			User_TalkChannel2005(tJanPrecisionPush_Text["Msg"]["NoTimes"])
		end
		return
	end
	if tJanPrecisionPush_data[nItemId][nData + 1] ~= nil then 
		local nEmoney = tJanPrecisionPush_data[nItemId][nData + 1]["Emoney"]
		local nAwardValue = tJanPrecisionPush_data[nItemId][nData + 1]["CpsValue"]
		tItem[nItemId]["Text111"] = string.format(tJanPrecisionPush_Text[nItemId]["Text111"],nData + 1,nEmoney,nAwardValue)
		tItem[nItemId]["OptionFunc111"] = "JanPrecisionPush_OpenCPsPack</N>"..nItemId.."</N>"..nEmoney.."</N>"..nAwardValue
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end
tItem[3327177]["Text1-1"] = {111,112}
tItem[3327177]["tOption1-1"] = {111,112}

-- P7武器神魂可选包（赠）
tItemFace[3327178] = 2703
tItem[3327178] = tItem[3327178] or {}
tItem[3327178]["DialogueText"] = tJanPrecisionPush_Text[3327178]

tItem[3327178]["Text1-1"] = {111}
tItem[3327178]["tOption1-1"] = {21,22,23,24,25,26,27,28}
tItem[3327178]["OptionPoint21"] = "2-1"
tItem[3327178]["OptionPoint22"] = "2-2"
tItem[3327178]["OptionPoint23"] = "2-3"
tItem[3327178]["OptionPoint24"] = "2-4"
tItem[3327178]["OptionPoint25"] = "2-5"
tItem[3327178]["OptionPoint26"] = "2-6"
tItem[3327178]["OptionPoint27"] = "1-2"

tItem[3327178]["Text1-2"] = {121}
tItem[3327178]["tOption1-2"] = {31,32,33,34,35,36,37,38}
tItem[3327178]["OptionPoint31"] = "3-1"
tItem[3327178]["OptionPoint32"] = "3-2"
tItem[3327178]["OptionPoint33"] = "3-3"
tItem[3327178]["OptionPoint34"] = "3-4"
tItem[3327178]["OptionPoint35"] = "3-5"
tItem[3327178]["OptionPoint36"] = "1-1"
tItem[3327178]["OptionPoint37"] = "1-3"

tItem[3327178]["Text1-3"] = {131}
tItem[3327178]["tOption1-3"] = {41,42,43,44,45,46,47,48}
tItem[3327178]["OptionPoint41"] = "4-1"
tItem[3327178]["OptionPoint42"] = "4-2"
tItem[3327178]["OptionPoint43"] = "4-3"
tItem[3327178]["OptionPoint44"] = "4-4"
tItem[3327178]["OptionPoint45"] = "4-5"
tItem[3327178]["OptionPoint46"] = "4-6"
tItem[3327178]["OptionPoint47"] = "1-2"

tItem[3327178]["Text2-1"] = {211}
tItem[3327178]["tOption2-1"] = {211,1}
tItem[3327178]["OptionFunc211"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>21"

tItem[3327178]["Text2-2"] = {221}
tItem[3327178]["tOption2-2"] = {221,1}
tItem[3327178]["OptionFunc221"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>22"

tItem[3327178]["Text2-3"] = {231}
tItem[3327178]["tOption2-3"] = {231,1}
tItem[3327178]["OptionFunc231"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>23"

tItem[3327178]["Text2-4"] = {241}
tItem[3327178]["tOption2-4"] = {241,1}
tItem[3327178]["OptionFunc241"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>24"

tItem[3327178]["Text2-5"] = {251}
tItem[3327178]["tOption2-5"] = {251,1}
tItem[3327178]["OptionFunc251"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>25"

tItem[3327178]["Text2-6"] = {261}
tItem[3327178]["tOption2-6"] = {261,1}
tItem[3327178]["OptionFunc261"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>26"

tItem[3327178]["Text3-1"] = {311}
tItem[3327178]["tOption3-1"] = {311,1}
tItem[3327178]["OptionFunc311"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>31"

tItem[3327178]["Text3-2"] = {321}
tItem[3327178]["tOption3-2"] = {321,1}
tItem[3327178]["OptionFunc321"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>32"

tItem[3327178]["Text3-3"] = {331}
tItem[3327178]["tOption3-3"] = {331,1}
tItem[3327178]["OptionFunc331"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>33"

tItem[3327178]["Text3-4"] = {341}
tItem[3327178]["tOption3-4"] = {341,1}
tItem[3327178]["OptionFunc341"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>34"

tItem[3327178]["Text3-5"] = {351}
tItem[3327178]["tOption3-5"] = {351,1}
tItem[3327178]["OptionFunc351"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>35"

tItem[3327178]["Text4-1"] = {411}
tItem[3327178]["tOption4-1"] = {411,1}
tItem[3327178]["OptionFunc411"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>41"

tItem[3327178]["Text4-2"] = {421}
tItem[3327178]["tOption4-2"] = {421,1}
tItem[3327178]["OptionFunc421"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>42"

tItem[3327178]["Text4-3"] = {431}
tItem[3327178]["tOption4-3"] = {431,1}
tItem[3327178]["OptionFunc431"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>43"

tItem[3327178]["Text4-4"] = {441}
tItem[3327178]["tOption4-4"] = {441,1}
tItem[3327178]["OptionFunc441"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>44"

tItem[3327178]["Text4-5"] = {451}
tItem[3327178]["tOption4-5"] = {451,1}
tItem[3327178]["OptionFunc451"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>45"

tItem[3327178]["Text4-6"] = {461}
tItem[3327178]["tOption4-6"] = {461,1}
tItem[3327178]["OptionFunc461"] = "JanPrecisionPush_P7SoulSelect</N>3327178</N>46"

-- P7防具神魂可选包（赠）
tItemFace[3327179] = 2394
tItem[3327179] = tItem[3327179] or {}
tItem[3327179]["DialogueText"] = tJanPrecisionPush_Text[3327179]

tItem[3327179]["Text1-1"] = {111}
tItem[3327179]["tOption1-1"] = {11,12,13,14,15,16}
tItem[3327179]["OptionPoint11"] = "2-1"
tItem[3327179]["OptionPoint12"] = "2-2"
tItem[3327179]["OptionPoint13"] = "2-3"
tItem[3327179]["OptionPoint14"] = "2-4"
tItem[3327179]["OptionPoint15"] = "2-5"

tItem[3327179]["Text2-1"] = {211}
tItem[3327179]["tOption2-1"] = {31,32,33,34,35,36}
tItem[3327179]["OptionPoint31"] = "3-1"
tItem[3327179]["OptionPoint32"] = "3-2"
tItem[3327179]["OptionPoint33"] = "3-3"
tItem[3327179]["OptionPoint34"] = "3-4"
tItem[3327179]["OptionPoint35"] = "1-1"

tItem[3327179]["Text2-2"] = {221}
tItem[3327179]["tOption2-2"] = {41,42,43,44}
tItem[3327179]["OptionPoint41"] = "4-1"
tItem[3327179]["OptionPoint42"] = "4-2"
tItem[3327179]["OptionPoint43"] = "1-1"

tItem[3327179]["Text2-3"] = {231}
tItem[3327179]["tOption2-3"] = {51,52,53,54}
tItem[3327179]["OptionPoint51"] = "5-1"
tItem[3327179]["OptionPoint52"] = "5-2"
tItem[3327179]["OptionPoint53"] = "1-1"

tItem[3327179]["Text2-4"] = {241}
tItem[3327179]["tOption2-4"] = {61,62,63,64,65,66,67}
tItem[3327179]["OptionPoint61"] = "6-1"
tItem[3327179]["OptionPoint62"] = "6-2"
tItem[3327179]["OptionPoint63"] = "6-3"
tItem[3327179]["OptionPoint64"] = "6-4"
tItem[3327179]["OptionPoint65"] = "6-5"
tItem[3327179]["OptionPoint66"] = "1-1"

tItem[3327179]["Text2-5"] = {251}
tItem[3327179]["tOption2-5"] = {71,72,73,74,75}
tItem[3327179]["OptionPoint71"] = "7-1"
tItem[3327179]["OptionPoint72"] = "7-2"
tItem[3327179]["OptionPoint73"] = "7-3"
tItem[3327179]["OptionPoint74"] = "1-1"

tItem[3327179]["Text3-1"] = {311}
tItem[3327179]["tOption3-1"] = {311,1}
tItem[3327179]["OptionFunc311"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>31"

tItem[3327179]["Text3-2"] = {321}
tItem[3327179]["tOption3-2"] = {321,1}
tItem[3327179]["OptionFunc321"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>32"

tItem[3327179]["Text3-3"] = {331}
tItem[3327179]["tOption3-3"] = {331,1}
tItem[3327179]["OptionFunc331"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>33"

tItem[3327179]["Text3-4"] = {341}
tItem[3327179]["tOption3-4"] = {341,1}
tItem[3327179]["OptionFunc341"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>34"

tItem[3327179]["Text4-1"] = {411}
tItem[3327179]["tOption4-1"] = {411,1}
tItem[3327179]["OptionFunc411"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>41"

tItem[3327179]["Text4-2"] = {421}
tItem[3327179]["tOption4-2"] = {421,1}
tItem[3327179]["OptionFunc421"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>42"

tItem[3327179]["Text5-1"] = {511}
tItem[3327179]["tOption5-1"] = {511,1}
tItem[3327179]["OptionFunc511"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>51"

tItem[3327179]["Text5-2"] = {521}
tItem[3327179]["tOption5-2"] = {521,1}
tItem[3327179]["OptionFunc521"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>52"

tItem[3327179]["Text6-1"] = {611}
tItem[3327179]["tOption6-1"] = {611,1}
tItem[3327179]["OptionFunc611"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>61"

tItem[3327179]["Text6-2"] = {621}
tItem[3327179]["tOption6-2"] = {621,1}
tItem[3327179]["OptionFunc621"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>62"

tItem[3327179]["Text6-3"] = {631}
tItem[3327179]["tOption6-3"] = {631,1}
tItem[3327179]["OptionFunc631"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>63"

tItem[3327179]["Text6-4"] = {641}
tItem[3327179]["tOption6-4"] = {641,1}
tItem[3327179]["OptionFunc641"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>64"

tItem[3327179]["Text6-5"] = {651}
tItem[3327179]["tOption6-5"] = {651,1}
tItem[3327179]["OptionFunc651"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>65"

tItem[3327179]["Text7-1"] = {711}
tItem[3327179]["tOption7-1"] = {711,1}
tItem[3327179]["OptionFunc711"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>71"

tItem[3327179]["Text7-2"] = {721}
tItem[3327179]["tOption7-2"] = {721,1}
tItem[3327179]["OptionFunc721"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>72"

tItem[3327179]["Text7-3"] = {731}
tItem[3327179]["tOption7-3"] = {731,1}
tItem[3327179]["OptionFunc731"] = "JanPrecisionPush_P7SoulSelect</N>3327179</N>73"

-- 可选包
tItemFace[3327193] = 2409
tItem[3327193] = tItem[3327193] or {}
tItem[3327193]["DialogueText"] = tJanPrecisionPush_Text["Item"]
tItem[3327193]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local sType = tJanPrecisionPush_Text["Item"][nItemId]
	for i,nNum in pairs(tJanPrecisionPush_data[nItemId]) do
		local sItemName = Get_ItemtypeName(tJanPrecisionPush_Pack[nItemId][i]["RewardItem"][1]["Id"])
		-- 毒刀加说明
		if nItemId == 3327200 and i == 1 then
			sItemName = sItemName..tJanPrecisionPush_Text["Msg"]["Poison"]
		end
		tItem[nItemId]["Option"..nNum] = string.format(tJanPrecisionPush_Text["Item"]["Option111"],sItemName)
		tItem[nItemId]["OptionFunc"..nNum] = "JanPrecisionPush_ChooseItemSure</N>"..nItemId.."</N>"..i
	end
	-- 判断是否为神魂
	local bIsSoul = false
	for i,nSoulItemId in pairs(tJanPrecisionPush_data["IsSoul"]) do
		if nItemId == nSoulItemId then
			bIsSoul = true
			break
		end
	end
	if bIsSoul == false then
		tItem[nItemId]["Text111"] = string.format(tJanPrecisionPush_Text["Item"]["Text111"],sType,sType,sType)
		tItem[nItemId]["Text1-1"] = {111}
	else
		tItem[nItemId]["Text112"] = string.format(tJanPrecisionPush_Text["Item"]["Text112"],sType)
		tItem[nItemId]["Text1-1"] = {112}
	end
	tItem[nItemId]["tOption1-1"] = tJanPrecisionPush_data[nItemId]
	LinkItemGossipFunc_New(nItemId,"1-1")
	
end

tItem[3327193]["Text1-2"] = {121}
tItem[3327193]["tOption1-2"] = {121,122}
tItem[3327193]["OptionPoint122"]="1-1"


tItemFace[3327195] = 1012
tItemFace[3327196] = 1153
tItemFace[3327199] = 1039
tItemFace[3327200] = 1419
tItemFace[3327201] = 2600
tItemFace[3327235] = 1006
tItemFace[3327236] = 1007
tItemFace[3327237] = 1008
tItemFace[3327238] = 1009
tItemFace[3327239] = 1010
tItemFace[3327240] = 1011
tItemFace[3327241] = 1015
tItem[3327195] = tItem[3327193]
tItem[3327196] = tItem[3327193]
tItem[3327199] = tItem[3327193]
tItem[3327200] = tItem[3327193]
tItem[3327201] = tItem[3327193]
tItem[3327235] = tItem[3327193]
tItem[3327236] = tItem[3327193]
tItem[3327237] = tItem[3327193]
tItem[3327238] = tItem[3327193]
tItem[3327239] = tItem[3327193]
tItem[3327240] = tItem[3327193]
tItem[3327241] = tItem[3327193]
