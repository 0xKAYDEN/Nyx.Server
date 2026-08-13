------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]1月份线上促销活动
--Purpose:		1月份线上促销活动
--Creator: 		郑鋆
--Created:		2014/12/19
------------------------------------------------------------------------------------

-- 命名前缀
-- January_OnlinePromot_

-- 掩码说明
-- 132 12	记录玩家抵用金的数量
-- 132 13	记录玩家总共获得的低佣金数量
-- 132 22	记录玩家是否上线获得过聚钱袋

-- 动态存储表
-- 50684	记录第一名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50685	记录第二名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50686	记录第三名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50687	记录第四名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50688	记录第五名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50689	记录第六名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50690	记录第七名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50691	记录第八名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50692	记录第九名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字
-- 50693	记录第十名玩家数据	data1	玩家低佣金数量	data2	记录玩家ID	datastr1	玩家名字

-- 50851	记录礼包促销价格数据	data0	回气丹促销礼包的价格	datastr0	回气丹促销礼包的物品ID
-- 50851	记录礼包促销价格数据	data1	强炼丹促销礼包的价格	datastr1	强炼丹促销礼包的物品ID
-- 50851	记录礼包促销价格数据	data2	修炼促销礼包的价格		datastr2	修炼促销礼包的物品ID
-- 50851	记录礼包促销价格数据	data3	固化石促销礼包的价格	datastr3	固化石促销礼包的物品ID
-- 50851	记录礼包促销价格数据	data4	功夫外套促销礼包的价格	datastr4	功夫外套促销礼包的物品ID
-- 50851	记录礼包促销价格数据	data5	百年好合促销礼包的价格	datastr5	百年好合促销礼包的物品ID

-- 50852	记录礼包促销价格数据	data0	花团锦簇促销礼包的价格	datastr0	花团锦簇促销礼包的物品ID
-- 50852	记录礼包促销价格数据	data1	赤炼石促销礼包的价格	datastr1	赤炼石促销礼包的物品ID
-- 50852	记录礼包促销价格数据	data2	+6骑宠促销礼包的价格	datastr2	+6骑宠促销礼包的物品ID

-- logID 10002413

-- 常量表
local tJanuary_OnlinePromot_Count = {}
	-- 活动时间
	tJanuary_OnlinePromot_Count["ActivityTime"] = "2015-02-13 00:00 2015-03-06 23:59"
	tJanuary_OnlinePromot_Count["BeforeActivityTime"] = "2014-01-15 00:00 2015-02-12 23:59"

	-- stc掩码
	tJanuary_OnlinePromot_Count["StcEvent"] = 132
	tJanuary_OnlinePromot_Count["StcType"] = 12
	tJanuary_OnlinePromot_Count["TotalStcType"] = 13
	tJanuary_OnlinePromot_Count["RewardStcType"] = 22
	
	-- 聚钱袋
	tJanuary_OnlinePromot_Count["PolyBag"] = 3005559
	tJanuary_OnlinePromot_Count["Space"] = 1
	
	-- 动态存储表
	tJanuary_OnlinePromot_Count["GlobalId"] = 50684
	tJanuary_OnlinePromot_Count["GlobalEndId"] = 50685

	-- 怕怕
	tJanuary_OnlinePromot_Count["MapId"] = 1036
	tJanuary_OnlinePromot_Count["NpcCellX"] = 304
	tJanuary_OnlinePromot_Count["NpcCellY"] = 259
	tJanuary_OnlinePromot_Count["NpcId"] = 9683

-- 物品表配置
local tJanuary_OnlinePromot_Item = {}
	-- 回气丹促销礼包
	tJanuary_OnlinePromot_Item[3005560] = {}
	tJanuary_OnlinePromot_Item[3005560]["EmoneyPrice"] = 2700
	tJanuary_OnlinePromot_Item[3005560]["GoldNum"] = 700
	tJanuary_OnlinePromot_Item[3005560]["BagSpace"] = 11
	tJanuary_OnlinePromot_Item[3005560]["RewardItem"] = {}
	----------- 回气丹*10
	tJanuary_OnlinePromot_Item[3005560]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005560]["RewardItem"][1]["ItemId"] = 729242
	tJanuary_OnlinePromot_Item[3005560]["RewardItem"][1]["Num"] = 10
	----------- 浓情百合礼包
	tJanuary_OnlinePromot_Item[3005560]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005560]["RewardItem"][2]["ItemId"] = 724002
	tJanuary_OnlinePromot_Item[3005560]["RewardItem"][2]["Num"] = 1
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005560]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005560]["Option"][1] = 270
	tJanuary_OnlinePromot_Item[3005560]["Option"][2] = 540
	tJanuary_OnlinePromot_Item[3005560]["Option"][3] = 810
	tJanuary_OnlinePromot_Item[3005560]["Option"][4] = 1080
	tJanuary_OnlinePromot_Item[3005560]["Option"][5] = 1350
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][1]["Num"] = 270
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][1]["Chance"] = 55
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][2]["Num"] = 400
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][2]["Chance"] = 30
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][3]["Num"] = 540
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][3]["Chance"] = 10
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][4]["Num"] = 700
	tJanuary_OnlinePromot_Item[3005560]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005560]["LOG"] = "%d,0,0,0,10002413,2,729242[724002],10[1]"
	
	-- 强炼丹促销礼包
	tJanuary_OnlinePromot_Item[3005561] = {}
	tJanuary_OnlinePromot_Item[3005561]["EmoneyPrice"] = 500
	tJanuary_OnlinePromot_Item[3005561]["GoldNum"] = 125
	tJanuary_OnlinePromot_Item[3005561]["BagSpace"] = 11
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"] = {}
	----------- 免费强炼丹*30
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"][1]["ItemId"] = 3003124
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"][1]["Num"] = 30
	----------- 护心丹*10
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"][2]["ItemId"] = 3002029
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"][2]["Num"] = 10
	tJanuary_OnlinePromot_Item[3005561]["RewardItem"][2]["ItemAtrr"] = "0 10 0 0 1"
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005561]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005561]["Option"][1] = 50
	tJanuary_OnlinePromot_Item[3005561]["Option"][2] = 100
	tJanuary_OnlinePromot_Item[3005561]["Option"][3] = 150
	tJanuary_OnlinePromot_Item[3005561]["Option"][4] = 200
	tJanuary_OnlinePromot_Item[3005561]["Option"][5] = 250
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][1]["Num"] = 50
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][2]["Num"] = 75
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][3]["Num"] = 100
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][4]["Num"] = 125
	tJanuary_OnlinePromot_Item[3005561]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005561]["LOG"] = "%d,0,0,0,10002413,2,3003124[3002029],30[10]"

	-- 修炼促销礼包
	tJanuary_OnlinePromot_Item[3005562] = {}
	tJanuary_OnlinePromot_Item[3005562]["EmoneyPrice"] = 400
	tJanuary_OnlinePromot_Item[3005562]["GoldNum"] = 100
	tJanuary_OnlinePromot_Item[3005562]["BagSpace"] = 2
	tJanuary_OnlinePromot_Item[3005562]["RewardItem"] = {}
	----------- 免费修炼抵用券*5
	tJanuary_OnlinePromot_Item[3005562]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005562]["RewardItem"][1]["ItemId"] = 3003794
	tJanuary_OnlinePromot_Item[3005562]["RewardItem"][1]["Num"] = 5
	----------- 究极通神丹*5
	tJanuary_OnlinePromot_Item[3005562]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005562]["RewardItem"][2]["ItemId"] = 3003126
	tJanuary_OnlinePromot_Item[3005562]["RewardItem"][2]["Num"] = 5
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005562]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005562]["Option"][1] = 26
	tJanuary_OnlinePromot_Item[3005562]["Option"][2] = 51
	tJanuary_OnlinePromot_Item[3005562]["Option"][3] = 77
	tJanuary_OnlinePromot_Item[3005562]["Option"][4] = 103
	tJanuary_OnlinePromot_Item[3005562]["Option"][5] = 129
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][1]["Num"] = 40
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][2]["Num"] = 60
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][3]["Num"] = 80
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][4]["Num"] = 100
	tJanuary_OnlinePromot_Item[3005562]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005562]["LOG"] = "%d,0,0,0,10002413,2,3003794[3003126],5[5]"

	-- 固化石促销礼包
	tJanuary_OnlinePromot_Item[3005563] = {}
	tJanuary_OnlinePromot_Item[3005563]["EmoneyPrice"] = 4450
	tJanuary_OnlinePromot_Item[3005563]["GoldNum"] = 1112
	tJanuary_OnlinePromot_Item[3005563]["BagSpace"] = 10
	tJanuary_OnlinePromot_Item[3005563]["RewardItem"] = {}
	----------- 固化石*5
	tJanuary_OnlinePromot_Item[3005563]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005563]["RewardItem"][1]["ItemId"] = 723694
	tJanuary_OnlinePromot_Item[3005563]["RewardItem"][1]["Num"] = 5
	----------- 龙珠*5
	tJanuary_OnlinePromot_Item[3005563]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005563]["RewardItem"][2]["ItemId"] = 1088000
	tJanuary_OnlinePromot_Item[3005563]["RewardItem"][2]["Num"] = 5
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005563]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005563]["Option"][1] = 410
	tJanuary_OnlinePromot_Item[3005563]["Option"][2] = 820
	tJanuary_OnlinePromot_Item[3005563]["Option"][3] = 1230
	tJanuary_OnlinePromot_Item[3005563]["Option"][4] = 1640
	tJanuary_OnlinePromot_Item[3005563]["Option"][5] = 2050
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][1]["Num"] = 445
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][2]["Num"] = 667
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][3]["Num"] = 890
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][4]["Num"] = 1112
	tJanuary_OnlinePromot_Item[3005563]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005563]["LOG"] = "%d,0,0,0,10002413,2,723694[1088000],5[5]"

	-- 功夫外套促销礼包
	tJanuary_OnlinePromot_Item[3005564] = {}
	tJanuary_OnlinePromot_Item[3005564]["EmoneyPrice"] = 300
	tJanuary_OnlinePromot_Item[3005564]["GoldNum"] = 60
	tJanuary_OnlinePromot_Item[3005564]["BagSpace"] = 1
	tJanuary_OnlinePromot_Item[3005564]["RewardItem"] = {}
	----------- 功夫之王服装配套包
	tJanuary_OnlinePromot_Item[3005564]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005564]["RewardItem"][1]["ItemId"] = 3005578
	tJanuary_OnlinePromot_Item[3005564]["RewardItem"][1]["Num"] = 1
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005564]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005564]["Option"][1] = 30
	tJanuary_OnlinePromot_Item[3005564]["Option"][2] = 60
	tJanuary_OnlinePromot_Item[3005564]["Option"][3] = 90
	tJanuary_OnlinePromot_Item[3005564]["Option"][4] = 120
	tJanuary_OnlinePromot_Item[3005564]["Option"][5] = 150
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][1]["Num"] = 30
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][2]["Num"] = 45
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][3]["Num"] = 50
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][4]["Num"] = 60
	tJanuary_OnlinePromot_Item[3005564]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005564]["LOG"] = "%d,0,0,0,10002413,2,3005578,1"

	-- 百年好合促销礼包
	tJanuary_OnlinePromot_Item[3005565] = {}
	tJanuary_OnlinePromot_Item[3005565]["EmoneyPrice"] = 8749
	tJanuary_OnlinePromot_Item[3005565]["GoldNum"] = 2625
	tJanuary_OnlinePromot_Item[3005565]["BagSpace"] = 6
	tJanuary_OnlinePromot_Item[3005565]["RewardItem"] = {}
	----------- 世纪婚礼券
	tJanuary_OnlinePromot_Item[3005565]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005565]["RewardItem"][1]["ItemId"] = 3000357
	tJanuary_OnlinePromot_Item[3005565]["RewardItem"][1]["Num"] = 1
	----------- 999玫瑰*5
	tJanuary_OnlinePromot_Item[3005565]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005565]["RewardItem"][2]["ItemId"] = 751999
	tJanuary_OnlinePromot_Item[3005565]["RewardItem"][2]["Num"] = 5
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005565]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005565]["Option"][1] = 740
	tJanuary_OnlinePromot_Item[3005565]["Option"][2] = 1480
	tJanuary_OnlinePromot_Item[3005565]["Option"][3] = 2220
	tJanuary_OnlinePromot_Item[3005565]["Option"][4] = 2960
	tJanuary_OnlinePromot_Item[3005565]["Option"][5] = 3700
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][1]["Num"] = 1312
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][2]["Num"] = 1750
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][3]["Num"] = 2187
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][4]["Num"] = 2625
	tJanuary_OnlinePromot_Item[3005565]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005565]["LOG"] = "%d,0,0,0,10002413,2,3000357[751999],1[5]"
	
	-- 花团锦簇促销礼包
	tJanuary_OnlinePromot_Item[3005566] = {}
	tJanuary_OnlinePromot_Item[3005566]["EmoneyPrice"] = 650
	tJanuary_OnlinePromot_Item[3005566]["GoldNum"] = 195
	tJanuary_OnlinePromot_Item[3005566]["BagSpace"] = 3
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"] = {}
	----------- 999玫瑰
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][1]["ItemId"] = 751999
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][1]["Num"] = 1
	----------- 999百合
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][2]["ItemId"] = 752999
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][2]["Num"] = 1
	----------- 999兰花
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][3] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][3]["ItemId"] = 753999
	tJanuary_OnlinePromot_Item[3005566]["RewardItem"][3]["Num"] = 1
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005566]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005566]["Option"][1] = 76
	tJanuary_OnlinePromot_Item[3005566]["Option"][2] = 153
	tJanuary_OnlinePromot_Item[3005566]["Option"][3] = 229
	tJanuary_OnlinePromot_Item[3005566]["Option"][4] = 306
	tJanuary_OnlinePromot_Item[3005566]["Option"][5] = 382
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][1]["Num"] = 98
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][2]["Num"] = 130
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][3]["Num"] = 162
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][4]["Num"] = 195
	tJanuary_OnlinePromot_Item[3005566]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005566]["LOG"] = "%d,0,0,0,10002413,2,752999[751999][753999],1[1][1]"
	
	-- 赤炼石促销礼包
	tJanuary_OnlinePromot_Item[3005567] = {}
	tJanuary_OnlinePromot_Item[3005567]["EmoneyPrice"] = 550
	tJanuary_OnlinePromot_Item[3005567]["GoldNum"] = 165
	tJanuary_OnlinePromot_Item[3005567]["BagSpace"] = 6
	tJanuary_OnlinePromot_Item[3005567]["RewardItem"] = {}
	----------- +3赤练石*5
	tJanuary_OnlinePromot_Item[3005567]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005567]["RewardItem"][1]["ItemId"] = 730003
	tJanuary_OnlinePromot_Item[3005567]["RewardItem"][1]["Num"] = 5
	----------- 完美祈愿石
	tJanuary_OnlinePromot_Item[3005567]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005567]["RewardItem"][2]["ItemId"] = 1200002
	tJanuary_OnlinePromot_Item[3005567]["RewardItem"][2]["Num"] = 1
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005567]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005567]["Option"][1] = 29
	tJanuary_OnlinePromot_Item[3005567]["Option"][2] = 58
	tJanuary_OnlinePromot_Item[3005567]["Option"][3] = 86
	tJanuary_OnlinePromot_Item[3005567]["Option"][4] = 115
	tJanuary_OnlinePromot_Item[3005567]["Option"][5] = 144
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][1]["Num"] = 70
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][2]["Num"] = 90
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][3]["Num"] = 110
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][4]["Num"] = 165
	tJanuary_OnlinePromot_Item[3005567]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005567]["LOG"] = "%d,0,0,0,10002413,2,730003[1200002],5[1]"

	-- +6骑宠促销礼包
	tJanuary_OnlinePromot_Item[3005568] = {}
	tJanuary_OnlinePromot_Item[3005568]["EmoneyPrice"] = 4100
	tJanuary_OnlinePromot_Item[3005568]["GoldNum"] = 1025
	tJanuary_OnlinePromot_Item[3005568]["BagSpace"] = 2
	tJanuary_OnlinePromot_Item[3005568]["RewardItem"] = {}
	----------- +6变幻骑宠礼包
	tJanuary_OnlinePromot_Item[3005568]["RewardItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005568]["RewardItem"][1]["ItemId"] = 720049
	tJanuary_OnlinePromot_Item[3005568]["RewardItem"][1]["Num"] = 1
	----------- 优质宝石随机包
	tJanuary_OnlinePromot_Item[3005568]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005568]["RewardItem"][2]["ItemId"] = 3005569
	tJanuary_OnlinePromot_Item[3005568]["RewardItem"][2]["Num"] = 1
	-- 可以使用的低佣金选项
	tJanuary_OnlinePromot_Item[3005568]["Option"] = {}
	tJanuary_OnlinePromot_Item[3005568]["Option"][1] = 410
	tJanuary_OnlinePromot_Item[3005568]["Option"][2] = 820
	tJanuary_OnlinePromot_Item[3005568]["Option"][3] = 1230
	tJanuary_OnlinePromot_Item[3005568]["Option"][4] = 1640
	tJanuary_OnlinePromot_Item[3005568]["Option"][5] = 2050
	-- 礼包打开返回的低佣金
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"] = {}
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"]["MaxChance"] = 100
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][1] = {}
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][1]["Num"] = 410
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][1]["Chance"] = 60
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][2] = {}
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][2]["Num"] = 615
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][2]["Chance"] = 20
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][3] = {}
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][3]["Num"] = 820
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][3]["Chance"] = 15
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][4] = {}
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][4]["Num"] = 1025
	tJanuary_OnlinePromot_Item[3005568]["RewardGold"][4]["Chance"] = 5
	-- log
	tJanuary_OnlinePromot_Item[3005568]["LOG"] = "%d,0,0,0,10002413,2,720049[3005569],1[1]"
	
	-- 优质宝石礼包
	tJanuary_OnlinePromot_Item[3005569] = {}
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"] = {}
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"][1] = 700003   --优质凤吟宝石
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"][2] = 700013   --优质龙恨宝石
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"][3] = 700023   --优质惊鸿宝石
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"][4] = 700033   --优质青虹宝石
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"][5] = 700043   --优质金麟宝石
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"][6] = 700053   --优质紫霞宝石
	tJanuary_OnlinePromot_Item[3005569]["RewardItem"][7] = 700063   --优质明月宝石
	-- log
	tJanuary_OnlinePromot_Item[3005569]["LOG"] = "0,0,3005569,1,10002413,2,%d,1"
	
	-- 超大固化石特惠礼包
	tJanuary_OnlinePromot_Item[3005838] = {}
	tJanuary_OnlinePromot_Item[3005838]["BagSpace"] = 1
	tJanuary_OnlinePromot_Item[3005838]["RewardItem"] = {}
	tJanuary_OnlinePromot_Item[3005838]["RewardItem"][1] = 723695
	tJanuary_OnlinePromot_Item[3005838]["RewardItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005838]["RewardItem"][2][1] = 3004247
	tJanuary_OnlinePromot_Item[3005838]["RewardItem"][2][2] = 3004248
	-- log
	tJanuary_OnlinePromot_Item[3005838]["LOG"] = "0,0,3005838,1,10002413,2,723695[%d],1[1]"

	tJanuary_OnlinePromot_Item[3005853] = tJanuary_OnlinePromot_Item[3005838]

	-- 功夫之王服装配套包
	tJanuary_OnlinePromot_Item[3005578] = {}
	tJanuary_OnlinePromot_Item[3005578]["RewardItem"] = {}
	tJanuary_OnlinePromot_Item[3005578]["RewardItem"][1] = 193095   --卧虎藏龙
	tJanuary_OnlinePromot_Item[3005578]["RewardItem"][2] = 193065   --精武英雄
	tJanuary_OnlinePromot_Item[3005578]["RewardItem"][3] = 193075   --功夫长衫
	tJanuary_OnlinePromot_Item[3005578]["RewardItem"][4] = 193105   --排扣休闲装
	tJanuary_OnlinePromot_Item[3005578]["RewardItem"]["Attr"] = "0 0 0 43200 0 0 0 1"
	-- log
	tJanuary_OnlinePromot_Item[3005578]["LOG"] = "0,0,3005578,1,10002413,2,%d,1"
	
	-- 极品2洞+6道战勇武器礼包
	tJanuary_OnlinePromot_Item[3005839] = {}
	tJanuary_OnlinePromot_Item[3005839]["BagSpace"] = 6
	tJanuary_OnlinePromot_Item[3005839]["LOG"] = "0,0,3005839,1,10002413,2,723574[700073][3001036][%d],2[2][2][1]"
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"] = {}
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][1] = {}
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][1]["ItemId"] = 723574
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][1]["ItemAtrr"] = "0 2"
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][2] = {}
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][2]["ItemId"] = 700073
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][2]["ItemAtrr"] = "0 2"
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][3] = {}
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][3]["ItemId"] = 3001036
	tJanuary_OnlinePromot_Item[3005839]["FixedItem"][3]["ItemAtrr"] = "0 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	
	tJanuary_OnlinePromot_Item[3005839]["Weapons"] = {}
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][1] = 410139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][2] = 420139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][3] = 430139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][4] = 440139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][5] = 450139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][6] = 460139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][7] = 480139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][9] = 481139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][10] = 490139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][11] = 510139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][12] = 530139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][13] = 540139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][14] = 560139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][17] = 561139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][18] = 580139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"][19] = 421139
	tJanuary_OnlinePromot_Item[3005839]["Weapons"]["Attr"] = "0 1 0 0 0 0 0 3 0 0 6 255 255"
	
	tJanuary_OnlinePromot_Item[3005854] = tJanuary_OnlinePromot_Item[3005839]

-- 前十名排行表对应的掩码
local tJanuary_OnlinePromot_List = {}
	tJanuary_OnlinePromot_List[1] = {}
	tJanuary_OnlinePromot_List[1]["GlobalId"] = 50684
	tJanuary_OnlinePromot_List[2] = {}
	tJanuary_OnlinePromot_List[2]["GlobalId"] = 50685
	tJanuary_OnlinePromot_List[3] = {}
	tJanuary_OnlinePromot_List[3]["GlobalId"] = 50686
	tJanuary_OnlinePromot_List[4] = {}
	tJanuary_OnlinePromot_List[4]["GlobalId"] = 50687
	tJanuary_OnlinePromot_List[5] = {}
	tJanuary_OnlinePromot_List[5]["GlobalId"] = 50688
	tJanuary_OnlinePromot_List[6] = {}
	tJanuary_OnlinePromot_List[6]["GlobalId"] = 50689
	tJanuary_OnlinePromot_List[7] = {}
	tJanuary_OnlinePromot_List[7]["GlobalId"] = 50690
	tJanuary_OnlinePromot_List[8] = {}
	tJanuary_OnlinePromot_List[8]["GlobalId"] = 50691
	tJanuary_OnlinePromot_List[9] = {}
	tJanuary_OnlinePromot_List[9]["GlobalId"] = 50692
	tJanuary_OnlinePromot_List[10] = {}
	tJanuary_OnlinePromot_List[10]["GlobalId"] = 50693

-- 礼包价格配置表
local tJanuary_OnlinePromot_ItemPrice = {}
	tJanuary_OnlinePromot_ItemPrice[3005560] = {}
	tJanuary_OnlinePromot_ItemPrice[3005560]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005560]["GlobalId"] = 50851
	tJanuary_OnlinePromot_ItemPrice[3005560]["Data"] = 0

	tJanuary_OnlinePromot_ItemPrice[3005561] = {}
	tJanuary_OnlinePromot_ItemPrice[3005561]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005561]["GlobalId"] = 50851
	tJanuary_OnlinePromot_ItemPrice[3005561]["Data"] = 1
	
	tJanuary_OnlinePromot_ItemPrice[3005562] = {}
	tJanuary_OnlinePromot_ItemPrice[3005562]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005562]["GlobalId"] = 50851
	tJanuary_OnlinePromot_ItemPrice[3005562]["Data"] = 2
	
	tJanuary_OnlinePromot_ItemPrice[3005563] = {}
	tJanuary_OnlinePromot_ItemPrice[3005563]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005563]["GlobalId"] = 50851
	tJanuary_OnlinePromot_ItemPrice[3005563]["Data"] = 3

	tJanuary_OnlinePromot_ItemPrice[3005564] = {}
	tJanuary_OnlinePromot_ItemPrice[3005564]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005564]["GlobalId"] = 50851
	tJanuary_OnlinePromot_ItemPrice[3005564]["Data"] = 4
	
	tJanuary_OnlinePromot_ItemPrice[3005565] = {}
	tJanuary_OnlinePromot_ItemPrice[3005565]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005565]["GlobalId"] = 50851
	tJanuary_OnlinePromot_ItemPrice[3005565]["Data"] = 5
	
	tJanuary_OnlinePromot_ItemPrice[3005566] = {}
	tJanuary_OnlinePromot_ItemPrice[3005566]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005566]["GlobalId"] = 50852
	tJanuary_OnlinePromot_ItemPrice[3005566]["Data"] = 0
	
	tJanuary_OnlinePromot_ItemPrice[3005567] = {}
	tJanuary_OnlinePromot_ItemPrice[3005567]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005567]["GlobalId"] = 50852
	tJanuary_OnlinePromot_ItemPrice[3005567]["Data"] = 1

	tJanuary_OnlinePromot_ItemPrice[3005568] = {}
	tJanuary_OnlinePromot_ItemPrice[3005568]["Price"] = 0
	tJanuary_OnlinePromot_ItemPrice[3005568]["GlobalId"] = 50852
	tJanuary_OnlinePromot_ItemPrice[3005568]["Data"] = 2
	

--------------------------------------逻辑部分-----------------------------------------
-- 点击聚钱袋
function January_OnlinePromot_UsePolyBag(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tJanuary_OnlinePromot_Text[nItemId]["Be0verdue"])
		end
		return
	end
	
	-- 获取低佣金数量
	local nEvent = tJanuary_OnlinePromot_Count["StcEvent"]
	local nType = tJanuary_OnlinePromot_Count["StcType"]
	local nTotalType = tJanuary_OnlinePromot_Count["TotalStcType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	local nTotalValue = Get_UserStatisticValue(nEvent,nTotalType)
	local sText = string.format(tJanuary_OnlinePromot_Text[nItemId]["Text1"],nValue,nTotalValue)
	
	-- 显示对白
	Sys_DialogText(sText)
	Sys_DialogText(tJanuary_OnlinePromot_Text[nItemId]["Text2"])
	Sys_DialogOption(tJanuary_OnlinePromot_Text[nItemId]["Option"],"</F>January_OnlinePromot_Path")
	Sys_DialogOption(tJanuary_OnlinePromot_Text[nItemId]["Option5"],string.format("</F>January_OnlinePromot_RankingListByItem</N>%d</N>%d",nItemId,1))
	Sys_DialogOption(tJanuary_OnlinePromot_Text[nItemId]["Option4"],string.format("</F>AIFunc_New</N>%d</S>%s",nItemId,"3-1"))

	Sys_DialogEnd()
end

-- 自动寻路
function January_OnlinePromot_Path()
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end
	
	local nMapId = tJanuary_OnlinePromot_Count["MapId"]
	local nPosX = tJanuary_OnlinePromot_Count["NpcCellX"]
	local nPosY = tJanuary_OnlinePromot_Count["NpcCellY"]
	local nNpcId = tJanuary_OnlinePromot_Count["NpcId"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 获取当前服务器的该礼包的价格
function January_OnlinePromot_GetItemPrice(nItemId)
	if tJanuary_OnlinePromot_ItemPrice[nItemId] == nil then
		return 
	end
	
	-- 获取服务器中动态存储表里面存的价格配置
	if tJanuary_OnlinePromot_ItemPrice[nItemId]["Price"] == nil or tJanuary_OnlinePromot_ItemPrice[nItemId]["Price"] <= 0 then
		local nGlobalId = tJanuary_OnlinePromot_ItemPrice[nItemId]["GlobalId"]
		local nData = tJanuary_OnlinePromot_ItemPrice[nItemId]["Data"]
		local nPrice = Get_SysDynaGlobalData(nGlobalId,nData)
		local sItemId = Get_SysDynaGlobalDataStr(nGlobalId,nData)
		
		if nPrice == nil or nPrice <= 0 or sItemId ~= tostring(nItemId) then
			nPrice = tJanuary_OnlinePromot_Item[nItemId]["EmoneyPrice"]
		end
		
		tJanuary_OnlinePromot_ItemPrice[nItemId]["Price"] = nPrice
	end
	
	return tJanuary_OnlinePromot_ItemPrice[nItemId]["Price"]
end

-- 物品对白
function January_OnlinePromot_UseItemText(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tJanuary_OnlinePromot_Text["Item"]["Be0verdue"])
		end
		return
	end
	
	-- 获取礼包的价格及返还的最大低佣金
	local nEmoneyPrice = January_OnlinePromot_GetItemPrice(nItemId)
	local nGoldNum = tJanuary_OnlinePromot_Item[nItemId]["GoldNum"]
	
	local sText = string.format(tJanuary_OnlinePromot_Text["Item"]["Text1"],nEmoneyPrice,nGoldNum)
	local sOptionText = string.format(tJanuary_OnlinePromot_Text["Item"]["Option1"],nEmoneyPrice)
	local sByEmoneyFunc = string.format("</F>January_OnlinePromot_UseItemByEmoneyText</N>%d",nItemId)
	local sByGoldFunc = string.format("</F>January_OnlinePromot_UseItemByGoldText</N>%d",nItemId)

	-- 生成礼包对白
	Sys_DialogText(sText)
	Sys_DialogText(tJanuary_OnlinePromot_Text["Item"]["Text2"])
	Sys_DialogOption(sOptionText,sByEmoneyFunc)
	Sys_DialogOption(tJanuary_OnlinePromot_Text["Item"]["Option2"],sByGoldFunc)
	Sys_DialogEnd()
end

-- 使用天石打开礼包
function January_OnlinePromot_UseItemByEmoneyText(nItemId)
	if nItemId == nil or (not Item_ChkItem(nItemId)) then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end

	-- 二次确认
	local nEmoneyPrice = January_OnlinePromot_GetItemPrice(nItemId)
	local sText = string.format(tJanuary_OnlinePromot_Text["Item"]["Text3"],nEmoneyPrice)
	January_OnlinePromot_ConfirmText(sText,nItemId,0)
end

-- 使用天石打开礼包
function January_OnlinePromot_UseItemByEmoney(nItemId,nGoldNum)
	if nItemId == nil or nGoldNum == nil or (not Item_ChkItem(nItemId)) then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end
	
	local nEmoneyNum = Get_UserEMoney()
	local nEmoneyPrice = January_OnlinePromot_GetItemPrice(nItemId)
	nEmoneyPrice = nEmoneyPrice - nGoldNum
	
	-- 判断天石数量
	if nEmoneyNum < nEmoneyPrice then
		Sys_MsgBox(tJanuary_OnlinePromot_Text["Item"]["NoEmoney"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tJanuary_OnlinePromot_Item[nItemId]["BagSpace"]) then
		Sys_MsgBox(tJanuary_OnlinePromot_Text["Item"]["NoSpace"])
		return
	end

	-- 玩家扣天石
	User_AddEMoney(-nEmoneyPrice)

	-- 扣低佣金
	local nEvent = tJanuary_OnlinePromot_Count["StcEvent"]
	local nType = tJanuary_OnlinePromot_Count["StcType"]
	Task_AddStatistic(nEvent,nType,-nGoldNum,1)
	local sRewardMsg = tJanuary_OnlinePromot_Text[nItemId]
	local sGoldMsg = ""
	
	-- 给奖励
	for nIndex = 1,#tJanuary_OnlinePromot_Item[nItemId]["RewardItem"] do
		local nRewardItemId = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][nIndex]["ItemId"]
		local nNum = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][nIndex]["Num"]
		local nRewardItemAtrr = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][nIndex]["ItemAtrr"]
		
		-- 添加物品
		if nRewardItemAtrr == nil then
			Item_AddItem(nRewardItemId,0,nNum)
		else
			Item_AddNewItem(nRewardItemId,nRewardItemAtrr)
		end
		
		Sys_SaveActionFestivalLog(string.format(tJanuary_OnlinePromot_Item[nItemId]["LOG"],nEmoneyPrice))
	end
	
	-- 给低佣金
	if nGoldNum == 0 then
		local nMaxChance = tJanuary_OnlinePromot_Item[nItemId]["RewardGold"]["MaxChance"]

		for i = 1,4 do
			local nChance = tJanuary_OnlinePromot_Item[nItemId]["RewardGold"][i]["Chance"]
			-- 随机给低佣金
			if Sys_Random(nChance,nMaxChance) then
				local nRewardGoldNum = tJanuary_OnlinePromot_Item[nItemId]["RewardGold"][i]["Num"]
				local nTotalType = tJanuary_OnlinePromot_Count["TotalStcType"]
				sGoldMsg = string.format(tJanuary_OnlinePromot_Text["Item"]["RewardGold"],nRewardGoldNum)
				
				-- 给低佣金
				Task_AddStatistic(nEvent,nType,nRewardGoldNum,1)
				Task_AddStatistic(nEvent,nTotalType,nRewardGoldNum,1)
				break
			else
				nMaxChance = nMaxChance - nChance
			end
		end
	end
	
	-- 获得奖励
	Sys_MsgBox(string.format(sRewardMsg,sGoldMsg))
	
	if nGoldNum == 0 then
		-- 更新排行版数据
		January_OnlinePromot_UpdateList()
	end
end

-- 排序操作
function January_OnlinePromot_RankSort(APlayer,BPlayer)
	local nGlodNumA = APlayer["GoldNum"]
	local nGlodNumB = BPlayer["GoldNum"]
	
	return nGlodNumA > nGlodNumB
end

-- 更新低佣金排行版数据
function January_OnlinePromot_UpdateList()
	local nEvent = tJanuary_OnlinePromot_Count["StcEvent"] 
	local nTotalType = tJanuary_OnlinePromot_Count["TotalStcType"]
	local nGoldValue = Get_UserStatisticValue(nEvent,nTotalType)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName()
	local isAdd = true
	local isUpdate = false
	
	-- 判断玩家抵用金数量
	if nGoldValue <= 0 then
		return
	end
	
	local tJanuary_OnlinePromot_Rank = {}

	-- 取动态掩码表的值
	for nIndex = 1,#tJanuary_OnlinePromot_List do
		local nDyGlobId = tJanuary_OnlinePromot_List[nIndex]["GlobalId"]
		local nGlodNum = Get_SysDynaGlobalData1(nDyGlobId)
		local nGlobalData2 = Get_SysDynaGlobalData2(nDyGlobId)
		local nDataStr = Get_SysDynaGlobalDataStr1(nDyGlobId)
		
		if nGlodNum > 0 then
			tJanuary_OnlinePromot_Rank[nIndex] = {}
			tJanuary_OnlinePromot_Rank[nIndex]["UserName"] = nDataStr
			tJanuary_OnlinePromot_Rank[nIndex]["GoldNum"] = nGlodNum
			tJanuary_OnlinePromot_Rank[nIndex]["UserId"] = nGlobalData2
			
			if nUserId == nGlobalData2 then
				tJanuary_OnlinePromot_Rank[nIndex]["GoldNum"] = nGoldValue
				isAdd = false
				isUpdate = true
			end
		else
			break
		end
	end

	-- 判断这个玩家是否有在原来的名次表里
	if isAdd == true then
		isUpdate = true
		
		local Index = #tJanuary_OnlinePromot_Rank + 1
		tJanuary_OnlinePromot_Rank[Index] = {}
		tJanuary_OnlinePromot_Rank[Index]["UserName"] = sUserName
		tJanuary_OnlinePromot_Rank[Index]["GoldNum"] = nGoldValue
		tJanuary_OnlinePromot_Rank[Index]["UserId"] = nUserId
	end

	-- 判断是否更新动态存储表
	if isUpdate ~= true then
		return
	end

	-- 对名次表进行排序
	table.sort(tJanuary_OnlinePromot_Rank,January_OnlinePromot_RankSort)

	-- 更新动态存储表
	for nIndex = 1,#tJanuary_OnlinePromot_List do
		if tJanuary_OnlinePromot_Rank[nIndex] ~= nil then
			local nSysDyGlobId = tJanuary_OnlinePromot_List[nIndex]["GlobalId"]
			local nGoldNum = tJanuary_OnlinePromot_Rank[nIndex]["GoldNum"]
			local sUserName = tJanuary_OnlinePromot_Rank[nIndex]["UserName"]
			local nRecordUserId = tJanuary_OnlinePromot_Rank[nIndex]["UserId"]

			-- 将排好序的名次表重新赋值到动态表里
			Sys_SetSynaGlobalData1(nSysDyGlobId,nGoldNum)
			Sys_SetSynaGlobalData2(nSysDyGlobId,nRecordUserId)
			Sys_SetSynaGlobalDataStr1(nSysDyGlobId,sUserName)
		end
	end
end

-- 使用低佣金对白
function January_OnlinePromot_UseItemByGoldText(nItemId)
	if nItemId == nil or (not Item_ChkItem(nItemId)) then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end

	-- 获取礼包价格
	local nEmoneyPrice = January_OnlinePromot_GetItemPrice(nItemId)
	-- 获取低佣金数量
	local nEvent = tJanuary_OnlinePromot_Count["StcEvent"]
	local nType = tJanuary_OnlinePromot_Count["StcType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	local sText = string.format(tJanuary_OnlinePromot_Text["Item"]["Text4"],nEmoneyPrice,nValue)
	
	Sys_DialogText(sText)
	for nIndex = 1,#tJanuary_OnlinePromot_Item[nItemId]["Option"] do
		local nGoldNum = tJanuary_OnlinePromot_Item[nItemId]["Option"][nIndex]
		local str = string.format(tJanuary_OnlinePromot_Text["Item"]["Option7"],nGoldNum)
		
		Sys_DialogOption(str,string.format("</F>January_OnlinePromot_GoldConfirm</N>%d</N>%d",nItemId,nGoldNum))
	end
	Sys_DialogOption(tJanuary_OnlinePromot_Text["Item"]["Option5"],string.format("</F>January_OnlinePromot_UseItemReturn</N>%d",nItemId))
	Sys_DialogOption(tJanuary_OnlinePromot_Text["Item"]["Option6"])
	Sys_DialogEnd()
end

-- 返回上一页
function January_OnlinePromot_UseItemReturn(nItemId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end
	
	January_OnlinePromot_UseItemText(nItemId)
end

-- 使用低佣金二次确认对白
function January_OnlinePromot_GoldConfirm(nItemId,nGoldNum)
	if nItemId == nil or nGoldNum == nil or (not Item_ChkItem(nItemId)) then
		return
	end
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end
	
	-- 判断玩家低佣金数量
	local nEvent = tJanuary_OnlinePromot_Count["StcEvent"]
	local nType = tJanuary_OnlinePromot_Count["StcType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)
	
	if nValue < nGoldNum then
		Sys_MsgBox(tJanuary_OnlinePromot_Text["Item"]["NoGold"])
		return
	end
	
	-- 二次确认对白
	local nEmoneyPrice = January_OnlinePromot_GetItemPrice(nItemId)
	nEmoneyPrice = nEmoneyPrice - nGoldNum
	local sText = string.format(tJanuary_OnlinePromot_Text["Item"]["Text5"],nGoldNum,nEmoneyPrice)
	
	January_OnlinePromot_ConfirmText(sText,nItemId,nGoldNum)
end

-- 二次确认对白
function January_OnlinePromot_ConfirmText(sText,nItemId,nGoldNum)
	if nItemId == nil or (not Item_ChkItem(nItemId)) then
		return
	end

	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end
	
	Sys_DialogText(sText)
	Sys_DialogOption(tJanuary_OnlinePromot_Text["Item"]["Option3"],string.format("</F>January_OnlinePromot_UseItemByEmoney</N>%d</N>%d",nItemId,nGoldNum))
	Sys_DialogOption(tJanuary_OnlinePromot_Text["Item"]["Option4"])
	Sys_DialogEnd()
end

-- 使用优质宝石礼包
function January_OnlinePromot_RewardGem(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 获取随机数
		local nIndex = math.random(1,#tJanuary_OnlinePromot_Item[nItemId]["RewardItem"])
		local nRewardItemId = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][nIndex]
		
		Item_AddItem(nRewardItemId)
		Sys_SaveActionFestivalLog(string.format(tJanuary_OnlinePromot_Item[nItemId]["LOG"],nRewardItemId))
		Sys_MsgBox(tJanuary_OnlinePromot_Text[nItemId][nIndex])
	end
end

-- 使用功夫之王服装配套包
function January_OnlinePromot_RewardClothing(nItemId,nChoose)
	if nItemId == nil or nChoose == nil then
		return
	end
	
	-- 检测及删除礼包
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nRewardItemId = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][nChoose]
		local sAttr = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"]["Attr"]
		
		-- 给30天%1神佑外套
		if nRewardItemId ~= nil then
			Item_AddNewItem(nRewardItemId,sAttr)
			Sys_SaveActionFestivalLog(string.format(tJanuary_OnlinePromot_Item[nItemId]["LOG"],nRewardItemId))
			Sys_MsgBox(tJanuary_OnlinePromot_Text[nItemId][nChoose])
		end
	end
end

-- 打开超大固化石特惠礼包
function January_OnlinePromot_SuperCuringStone(nItemId)
	-- 判断背包空间
	local nBagSpace = tJanuary_OnlinePromot_Item[nItemId]["BagSpace"]
	
	if not User_CheckLeftSpace(nBagSpace) then
		Sys_MsgBox(tJanuary_OnlinePromot_Text["Item"]["NoSpace"])
		return
	end
	
	-- 打开礼包
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 获得超大固化石
		local nAddItemId = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][1]
		-- 获得7阶神魂
		local nMaxNum = #tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][2]
		-- 获得随机数
		local nIndex = math.random(1,nMaxNum)
		local nRewardItemId = tJanuary_OnlinePromot_Item[nItemId]["RewardItem"][2][nIndex]
		local nRewardItemName = Get_ItemtypeName(nRewardItemId)
		
		-- 添加物品
		Item_AddItem(nAddItemId)
		Item_AddItem(nRewardItemId)
		
		-- 打log
		local sLog = string.format(tJanuary_OnlinePromot_Item[nItemId]["LOG"],nRewardItemId)
		Sys_SaveActionFestivalLog(sLog)
		
		local sMsg = string.format(tJanuary_OnlinePromot_Text[nItemId]["Msg"],tJanuary_OnlinePromot_Text[nItemId]["Null"])
		
		if nRewardItemName ~= nil then
			sMsg = string.format(tJanuary_OnlinePromot_Text[nItemId]["Msg"],nRewardItemName)
		end

		-- 给提示
		Sys_MsgBox(sMsg)
	end
end

-- 打开极品2洞+6道战勇武器礼包的二次确认对白
function January_OnlinePromot_PromotGiftText(nItemId,nChoose)
	local sText = tJanuary_OnlinePromot_Text[nItemId]["Text"][nChoose]
	
	if sText == nil then
		return
	end
	
	Sys_DialogText(sText)
	Sys_DialogOption(tJanuary_OnlinePromot_Text["Item"]["Option3"],string.format("</F>January_OnlinePromot_PromotGift</N>%d</N>%d",nItemId,nChoose))
	Sys_DialogOption(tJanuary_OnlinePromot_Text["Item"]["Option4"])
	Sys_DialogEnd()
end

-- 打开极品2洞+6道战勇武器礼包
function January_OnlinePromot_PromotGift(nItemId,nChoose)
	if nItemId == nil or nChoose == nil then
		return
	end

	-- 判断背包空间
	local nBagSpace = tJanuary_OnlinePromot_Item[nItemId]["BagSpace"]
	
	if not User_CheckLeftSpace(nBagSpace) then
		Sys_MsgBox(tJanuary_OnlinePromot_Text["Item"]["NoSpace"])
		return
	end
	
	-- 打开礼包
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 获得固定物品
		for i,v in pairs(tJanuary_OnlinePromot_Item[nItemId]["FixedItem"]) do
			local nAddItemId = v["ItemId"]
			local nAddItemAtrr = v["ItemAtrr"]
			
			Item_AddNewItem(nAddItemId,nAddItemAtrr)
		end
		
		-- 获得选择的武器
		local nWeaponsItemId = tJanuary_OnlinePromot_Item[nItemId]["Weapons"][nChoose]
		local nWeaponsItemAtrr = tJanuary_OnlinePromot_Item[nItemId]["Weapons"]["Attr"]
		local nWeaponsItemName = Get_ItemtypeName(nWeaponsItemId)
		
		Item_AddNewItem(nWeaponsItemId,nWeaponsItemAtrr)
		
		-- 打log
		local sLog = string.format(tJanuary_OnlinePromot_Item[nItemId]["LOG"],nWeaponsItemId)
		Sys_SaveActionFestivalLog(sLog)
		
		-- 给提示
		local sMsg = string.format(tJanuary_OnlinePromot_Text[nItemId]["Msg"],tJanuary_OnlinePromot_Text[nItemId]["Null"])
		
		if nWeaponsItemName ~= nil then
			sMsg = string.format(tJanuary_OnlinePromot_Text[nItemId]["Msg"],nWeaponsItemName)
		end

		Sys_MsgBox(sMsg)
	end
end

-- 补领聚钱袋
function January_OnlinePromot_ReplacementItem(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nItemId = tJanuary_OnlinePromot_Count["PolyBag"]

	-- 判断玩家是否有这个物品
	if Item_ChkItem(nItemId) then
		Sys_MsgBox(tJanuary_OnlinePromot_Text[nItemId]["HaveItem"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tJanuary_OnlinePromot_Count["Space"]) then
		Sys_MsgBox(tJanuary_OnlinePromot_Text[nItemId]["NoSpace"])
		return
	end
	
	Item_AddItem(nItemId)
	Sys_MsgBox(tJanuary_OnlinePromot_Text[nItemId]["RewardItem"])
end

-- 获取排行榜数据
function January_OnlinePromot_Ranking(nStartNum,sText)
	local sDisplay = {}
	local nTableLength = 0
	local isDisplay = false
	local nNextStartNum = nStartNum + 5
	
	-- 获取排行榜数据
	for nIndex = nStartNum,nStartNum + 4 do
		local nGlobalId = tJanuary_OnlinePromot_List[nIndex]["GlobalId"]
		local nData = Get_SysDynaGlobalData1(nGlobalId)
		local sDataStr = Get_SysDynaGlobalDataStr1(nGlobalId)
		
		if nData ~= nil and nData > 0 and sDataStr ~= nil then
			sDisplay[nIndex] = string.format(sText,nIndex,sDataStr,nData)
			nTableLength = nTableLength + 1
		else
			break
		end
	end
	
	-- 判断是否要显示查看6—10名选项
	if nTableLength >= 5 and tJanuary_OnlinePromot_List[nNextStartNum] ~= nil then
		local nGlobalId = tJanuary_OnlinePromot_List[nNextStartNum]["GlobalId"]
		local nData = Get_SysDynaGlobalData1(nGlobalId)

		if nData > 0 then
			isDisplay = true
		end
	end
	
	return sDisplay,isDisplay,nTableLength
end

-- NPC查看当前排行榜
function January_OnlinePromot_RankingList(nNpcId,nStartNum)
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- 获取排行版数据
	local nNextStartNum = nStartNum + 5
	local sDisplay,isDisplay,nTableLength = January_OnlinePromot_Ranking(nStartNum,tJanuary_OnlinePromot_Text[nNpcId]["Text331"])
	local strFunc = "</F>NULL"
	
	if tJanuary_OnlinePromot_List[nNextStartNum] ~= nil then
		strFunc = string.format("</F>LinkNpcGossipFunc_New</N>%d</S>%s",nNpcId,"1-3")
	else
		strFunc = string.format("</F>January_OnlinePromot_RankingList</N>%d</N>%s",nNpcId,1)
	end

	-- 显示排行版
	if nTableLength > 0 then
		for Index = nStartNum,nStartNum + nTableLength do
			Sys_DialogText(sDisplay[Index])
		end
		
		if isDisplay == true then
			-- 查看6—10名。
			Sys_DialogOption(tJanuary_OnlinePromot_Text[nNpcId]["Option8"],string.format("</F>January_OnlinePromot_RankingList</N>%d</N>%d",nNpcId,nNextStartNum))
		end
		
		-- 返回上一页。
		Sys_DialogOption(tJanuary_OnlinePromot_Text[nNpcId]["Option7"],strFunc)
	else
		Sys_DialogText(tJanuary_OnlinePromot_Text[nNpcId]["Text321"])
	end
	
	Sys_DialogOption(tJanuary_OnlinePromot_Text[nNpcId]["Option6"])
	Sys_DialogFace()
	Sys_DialogEnd()
end

-- 物品查看当前排行榜
function January_OnlinePromot_RankingListByItem(nItemId,nStartNum)
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tJanuary_OnlinePromot_Text[nItemId]["Be0verdue"])
		end
		return
	end

	-- 获取排行版数据
	local nNextStartNum = nStartNum + 5
	local sDisplay,isDisplay,nTableLength = January_OnlinePromot_Ranking(nStartNum,tJanuary_OnlinePromot_Text[nItemId]["Text331"])
	local strFunc = "</F>NULL"

	if tJanuary_OnlinePromot_List[nNextStartNum] ~= nil then
		strFunc = string.format("</F>January_OnlinePromot_UsePolyBag</N>%d",nItemId)
	else
		strFunc = string.format("</F>January_OnlinePromot_RankingListByItem</N>%d</N>%s",nItemId,1)
	end

	-- 显示排行版
	if nTableLength > 0 then
		for Index = nStartNum,nStartNum + nTableLength do
			Sys_DialogText(sDisplay[Index])
		end
		
		if isDisplay == true then
			-- 查看6—10名。
			Sys_DialogOption(tJanuary_OnlinePromot_Text[nItemId]["Option8"],string.format("</F>January_OnlinePromot_RankingListByItem</N>%d</N>%d",nItemId,nNextStartNum))
		end
		
		-- 返回上一页。
		Sys_DialogOption(tJanuary_OnlinePromot_Text[nItemId]["Option7"],strFunc)
	else
		Sys_DialogText(tJanuary_OnlinePromot_Text[nItemId]["Text321"])
	end

	Sys_DialogOption(tJanuary_OnlinePromot_Text[nItemId]["Option6"])
	Sys_DialogEnd()
end

-- 上线触发函数
function January_OnlinePromot_PlayLogin()
	-- 判断活动时间
	if not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"]) then
		return
	end
	
	local nEvent = tJanuary_OnlinePromot_Count["StcEvent"]
	local nType = tJanuary_OnlinePromot_Count["RewardStcType"]
	-- 判断是否获取过
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end
	
	local nItemId = tJanuary_OnlinePromot_Count["PolyBag"]
	-- 判断玩家是否有这个物品
	if Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tJanuary_OnlinePromot_Count["Space"]) then
		return
	end
	
	-- 掩码设值
	Task_AddStatistic(nEvent,nType,1,1)
	Item_AddItem(nItemId)
	User_TalkChannel2005(tJanuary_OnlinePromot_Text[nItemId]["RewardItem"])
end

--------------------------------------NPC模块-------------------------------------------
-- 劲省榜主持人
tNpcFace[5079] = 54
tNpcGossip[17431] = tNpcGossip[17431] or DefaultNpc:new{}
tNpcGossip[17431]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[17431]["Text1-1"] = {111,112,113,114}
tNpcGossip[17431]["Text111"] = tJanuary_OnlinePromot_Text[17431]["Text111"]
tNpcGossip[17431]["Text112"] = tJanuary_OnlinePromot_Text[17431]["Text112"]
tNpcGossip[17431]["Text113"] = tJanuary_OnlinePromot_Text[17431]["Text113"]
tNpcGossip[17431]["Text114"] = tJanuary_OnlinePromot_Text[17431]["Text114"]
tNpcGossip[17431]["tOption1-1"] = {1}
tNpcGossip[17431]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tJanuary_OnlinePromot_Count["BeforeActivityTime"])
end

-- 活动后对白
tNpcGossip[17431]["Text1-2"] = {121,122}
tNpcGossip[17431]["Text121"] = tJanuary_OnlinePromot_Text[17431]["Text121"]
tNpcGossip[17431]["Text122"] = tJanuary_OnlinePromot_Text[17431]["Text122"]
tNpcGossip[17431]["tOption1-2"] = {2}
tNpcGossip[17431]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"])
end

-- 活动中对白
tNpcGossip[17431]["Text1-3"] = {131,132,133,134}
tNpcGossip[17431]["Text131"] = tJanuary_OnlinePromot_Text[17431]["Text131"]
tNpcGossip[17431]["Text132"] = tJanuary_OnlinePromot_Text[17431]["Text132"]
tNpcGossip[17431]["Text133"] = tJanuary_OnlinePromot_Text[17431]["Text133"]
tNpcGossip[17431]["Text134"] = tJanuary_OnlinePromot_Text[17431]["Text134"]
tNpcGossip[17431]["tOption1-3"] = {3,4,5,6}
tNpcGossip[17431]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tJanuary_OnlinePromot_Count["ActivityTime"])
end

-- 查看前十名奖励。
tNpcGossip[17431]["Text3-1"] = {311,312,313,314,315}
tNpcGossip[17431]["Text311"] = tJanuary_OnlinePromot_Text[17431]["Text311"]
tNpcGossip[17431]["Text312"] = tJanuary_OnlinePromot_Text[17431]["Text312"]
tNpcGossip[17431]["Text313"] = tJanuary_OnlinePromot_Text[17431]["Text313"]
tNpcGossip[17431]["Text314"] = tJanuary_OnlinePromot_Text[17431]["Text314"]
tNpcGossip[17431]["Text315"] = tJanuary_OnlinePromot_Text[17431]["Text315"]
tNpcGossip[17431]["tOption3-1"] = {7,6}

-- 选项
tNpcGossip[17431]["Option1"] = tJanuary_OnlinePromot_Text[17431]["Option1"]
tNpcGossip[17431]["Option2"] = tJanuary_OnlinePromot_Text[17431]["Option2"]
tNpcGossip[17431]["Option3"] = tJanuary_OnlinePromot_Text[17431]["Option3"]
tNpcGossip[17431]["OptionFunc3"]="January_OnlinePromot_ReplacementItem</N>17431"

tNpcGossip[17431]["Option4"] = tJanuary_OnlinePromot_Text[17431]["Option4"]
tNpcGossip[17431]["OptionFunc4"]="January_OnlinePromot_RankingList</N>17431</N>1"

tNpcGossip[17431]["Option5"] = tJanuary_OnlinePromot_Text[17431]["Option5"]
tNpcGossip[17431]["OptionPoint5"]="3"
tNpcGossip[17431]["Option6"] = tJanuary_OnlinePromot_Text[17431]["Option6"]
tNpcGossip[17431]["Option7"] = tJanuary_OnlinePromot_Text[17431]["Option7"]
tNpcGossip[17431]["OptionPoint7"]="1"

--------------------------------------物品模块-------------------------------------------
-- 聚钱袋
tItem[3005559] = tItem[3005559] or {}
tItem[3005559]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UsePolyBag(nItemId)
end

tItem[3005559]["Text3-1"] = {311,312,313,314,315}
tItem[3005559]["Text311"] = tJanuary_OnlinePromot_Text[17431]["Text311"]
tItem[3005559]["Text312"] = tJanuary_OnlinePromot_Text[17431]["Text312"]
tItem[3005559]["Text313"] = tJanuary_OnlinePromot_Text[17431]["Text313"]
tItem[3005559]["Text314"] = tJanuary_OnlinePromot_Text[17431]["Text314"]
tItem[3005559]["Text315"] = tJanuary_OnlinePromot_Text[17431]["Text315"]
tItem[3005559]["tOption3-1"] = {7,6}
tItem[3005559]["Option6"] = tJanuary_OnlinePromot_Text[3005559]["Option6"]
tItem[3005559]["Option7"] = tJanuary_OnlinePromot_Text[3005559]["Option7"]
tItem[3005559]["OptionFunc7"]="January_OnlinePromot_UsePolyBag</N>3005559"

-- 回气丹促销礼包
tItem[3005560] = tItem[3005560] or {}
tItem[3005560]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 强炼丹促销礼包
tItem[3005561] = tItem[3005561] or {}
tItem[3005561]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 修炼促销礼包
tItem[3005562] = tItem[3005562] or {}
tItem[3005562]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 固化石促销礼包
tItem[3005563] = tItem[3005563] or {}
tItem[3005563]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 功夫外套促销礼包
tItem[3005564] = tItem[3005564] or {}
tItem[3005564]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 百年好合促销礼包
tItem[3005565] = tItem[3005565] or {}
tItem[3005565]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 花团锦簇促销礼包
tItem[3005566] = tItem[3005566] or {}
tItem[3005566]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 赤炼石促销礼包
tItem[3005567] = tItem[3005567] or {}
tItem[3005567]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- +6骑宠促销礼包
tItem[3005568] = tItem[3005568] or {}
tItem[3005568]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_UseItemText(nItemId)
end

-- 优质宝石礼包
tItem[3005569] = tItem[3005569] or {}
tItem[3005569]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_RewardGem(nItemId)
end

-- 功夫之王服装配套包
tItem[3005578] = tItem[3005578] or {}
tItem[3005578]["Text1-1"] = {111}
tItem[3005578]["Text111"] = tJanuary_OnlinePromot_Text[3005578]["Text111"]
tItem[3005578]["tOption1-1"] = {1,2,3,4}

tItem[3005578]["Option1"] = tJanuary_OnlinePromot_Text[3005578]["Option1"]
tItem[3005578]["OptionFunc1"] = "January_OnlinePromot_RewardClothing</N>3005578</N>1"
tItem[3005578]["Option2"] = tJanuary_OnlinePromot_Text[3005578]["Option2"]
tItem[3005578]["OptionFunc2"] = "January_OnlinePromot_RewardClothing</N>3005578</N>2"
tItem[3005578]["Option3"] = tJanuary_OnlinePromot_Text[3005578]["Option3"]
tItem[3005578]["OptionFunc3"] = "January_OnlinePromot_RewardClothing</N>3005578</N>3"
tItem[3005578]["Option4"] = tJanuary_OnlinePromot_Text[3005578]["Option4"]
tItem[3005578]["OptionFunc4"] = "January_OnlinePromot_RewardClothing</N>3005578</N>4"

-- 超大固化石特惠礼包
tItem[3005838] = tItem[3005838] or {}
tItem[3005838]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_SuperCuringStone(nItemId)
end

-- 超大固化石特惠礼包
tItem[3005853] = tItem[3005853] or {}
tItem[3005853]["Function"] = function(nItemId,sItemName)
	January_OnlinePromot_SuperCuringStone(nItemId)
end

-- 极品2洞+6道战勇武器礼包
tItem[3005839] = tItem[3005839] or {}
tItem[3005839]["Text1-1"] = {111}
tItem[3005839]["Text111"] = tJanuary_OnlinePromot_Text[3005839]["Text111"]
tItem[3005839]["tOption1-1"] = {1,2,3,4,5,6,7,8}

tItem[3005839]["Text2-1"] = {211}
tItem[3005839]["Text211"] = tJanuary_OnlinePromot_Text[3005839]["Text111"]
tItem[3005839]["tOption2-1"] = {9,10,11,12,13,14,15,16}

tItem[3005839]["Text3-1"] = {311}
tItem[3005839]["Text311"] = tJanuary_OnlinePromot_Text[3005839]["Text111"]
tItem[3005839]["tOption3-1"] = {17,18,19,20}

tItem[3005839]["Option1"] = tJanuary_OnlinePromot_Text[3005839]["Option1"]
tItem[3005839]["OptionFunc1"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>1"
tItem[3005839]["Option2"] = tJanuary_OnlinePromot_Text[3005839]["Option2"]
tItem[3005839]["OptionFunc2"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>2"
tItem[3005839]["Option3"] = tJanuary_OnlinePromot_Text[3005839]["Option3"]
tItem[3005839]["OptionFunc3"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>3"
tItem[3005839]["Option4"] = tJanuary_OnlinePromot_Text[3005839]["Option4"]
tItem[3005839]["OptionFunc4"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>4"
tItem[3005839]["Option5"] = tJanuary_OnlinePromot_Text[3005839]["Option5"]
tItem[3005839]["OptionFunc5"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>5"
tItem[3005839]["Option6"] = tJanuary_OnlinePromot_Text[3005839]["Option6"]
tItem[3005839]["OptionFunc6"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>6"
tItem[3005839]["Option7"] = tJanuary_OnlinePromot_Text[3005839]["Option7"]
tItem[3005839]["OptionFunc7"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>7"
tItem[3005839]["Option8"] = tJanuary_OnlinePromot_Text[3005839]["Option8"]
tItem[3005839]["OptionPoint8"]="2"

tItem[3005839]["Option9"] = tJanuary_OnlinePromot_Text[3005839]["Option9"]
tItem[3005839]["OptionFunc9"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>9"
tItem[3005839]["Option10"] = tJanuary_OnlinePromot_Text[3005839]["Option10"]
tItem[3005839]["OptionFunc10"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>10"
tItem[3005839]["Option11"] = tJanuary_OnlinePromot_Text[3005839]["Option11"]
tItem[3005839]["OptionFunc11"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>11"
tItem[3005839]["Option12"] = tJanuary_OnlinePromot_Text[3005839]["Option12"]
tItem[3005839]["OptionFunc12"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>12"
tItem[3005839]["Option13"] = tJanuary_OnlinePromot_Text[3005839]["Option13"]
tItem[3005839]["OptionFunc13"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>13"
tItem[3005839]["Option14"] = tJanuary_OnlinePromot_Text[3005839]["Option14"]
tItem[3005839]["OptionFunc14"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>14"
tItem[3005839]["Option15"] = tJanuary_OnlinePromot_Text[3005839]["Option15"]
tItem[3005839]["OptionPoint15"]="1"
tItem[3005839]["Option16"] = tJanuary_OnlinePromot_Text[3005839]["Option16"]
tItem[3005839]["OptionPoint16"]="3"

tItem[3005839]["Option17"] = tJanuary_OnlinePromot_Text[3005839]["Option17"]
tItem[3005839]["OptionFunc17"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>17"
tItem[3005839]["Option18"] = tJanuary_OnlinePromot_Text[3005839]["Option18"]
tItem[3005839]["OptionFunc18"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>18"
tItem[3005839]["Option19"] = tJanuary_OnlinePromot_Text[3005839]["Option19"]
tItem[3005839]["OptionFunc19"] = "January_OnlinePromot_PromotGiftText</N>3005839</N>19"
tItem[3005839]["Option20"] = tJanuary_OnlinePromot_Text[3005839]["Option20"]
tItem[3005839]["OptionPoint20"]="2"

-- 极品2洞+6道战勇武器礼包
tItem[3005854] = tItem[3005854] or {}
tItem[3005854]["Text1-1"] = {111}
tItem[3005854]["Text111"] = tJanuary_OnlinePromot_Text[3005854]["Text111"]
tItem[3005854]["tOption1-1"] = {1,2,3,4,5,6,7,8}

tItem[3005854]["Text2-1"] = {211}
tItem[3005854]["Text211"] = tJanuary_OnlinePromot_Text[3005854]["Text111"]
tItem[3005854]["tOption2-1"] = {9,10,11,12,13,14,15,16}

tItem[3005854]["Text3-1"] = {311}
tItem[3005854]["Text311"] = tJanuary_OnlinePromot_Text[3005854]["Text111"]
tItem[3005854]["tOption3-1"] = {17,18,19,20}

tItem[3005854]["Option1"] = tJanuary_OnlinePromot_Text[3005854]["Option1"]
tItem[3005854]["OptionFunc1"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>1"
tItem[3005854]["Option2"] = tJanuary_OnlinePromot_Text[3005854]["Option2"]
tItem[3005854]["OptionFunc2"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>2"
tItem[3005854]["Option3"] = tJanuary_OnlinePromot_Text[3005854]["Option3"]
tItem[3005854]["OptionFunc3"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>3"
tItem[3005854]["Option4"] = tJanuary_OnlinePromot_Text[3005854]["Option4"]
tItem[3005854]["OptionFunc4"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>4"
tItem[3005854]["Option5"] = tJanuary_OnlinePromot_Text[3005854]["Option5"]
tItem[3005854]["OptionFunc5"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>5"
tItem[3005854]["Option6"] = tJanuary_OnlinePromot_Text[3005854]["Option6"]
tItem[3005854]["OptionFunc6"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>6"
tItem[3005854]["Option7"] = tJanuary_OnlinePromot_Text[3005854]["Option7"]
tItem[3005854]["OptionFunc7"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>7"
tItem[3005854]["Option8"] = tJanuary_OnlinePromot_Text[3005854]["Option8"]
tItem[3005854]["OptionPoint8"]="2"

tItem[3005854]["Option9"] = tJanuary_OnlinePromot_Text[3005854]["Option9"]
tItem[3005854]["OptionFunc9"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>9"
tItem[3005854]["Option10"] = tJanuary_OnlinePromot_Text[3005854]["Option10"]
tItem[3005854]["OptionFunc10"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>10"
tItem[3005854]["Option11"] = tJanuary_OnlinePromot_Text[3005854]["Option11"]
tItem[3005854]["OptionFunc11"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>11"
tItem[3005854]["Option12"] = tJanuary_OnlinePromot_Text[3005854]["Option12"]
tItem[3005854]["OptionFunc12"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>12"
tItem[3005854]["Option13"] = tJanuary_OnlinePromot_Text[3005854]["Option13"]
tItem[3005854]["OptionFunc13"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>13"
tItem[3005854]["Option14"] = tJanuary_OnlinePromot_Text[3005854]["Option14"]
tItem[3005854]["OptionFunc14"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>14"
tItem[3005854]["Option15"] = tJanuary_OnlinePromot_Text[3005854]["Option15"]
tItem[3005854]["OptionPoint15"]="1"
tItem[3005854]["Option16"] = tJanuary_OnlinePromot_Text[3005854]["Option16"]
tItem[3005854]["OptionPoint16"]="3"

tItem[3005854]["Option17"] = tJanuary_OnlinePromot_Text[3005854]["Option17"]
tItem[3005854]["OptionFunc17"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>17"
tItem[3005854]["Option18"] = tJanuary_OnlinePromot_Text[3005854]["Option18"]
tItem[3005854]["OptionFunc18"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>18"
tItem[3005854]["Option19"] = tJanuary_OnlinePromot_Text[3005854]["Option19"]
tItem[3005854]["OptionFunc19"] = "January_OnlinePromot_PromotGiftText</N>3005854</N>19"
tItem[3005854]["Option20"] = tJanuary_OnlinePromot_Text[3005854]["Option20"]
tItem[3005854]["OptionPoint20"]="2"

-- 上线触发
-- table.insert(tSystem_PlayLogin_Func,January_OnlinePromot_PlayLogin)