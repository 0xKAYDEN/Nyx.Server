------------------------------------------------------------------------------------
--Name:		190422[英文征服][活动脚本]扑克收集活动
--Purpose:	扑克收集活动
--Creator: 	傅伟龙
--Created:	2018/04/22
------------------------------------------------------------------------------------
--前缀CollectionSqueezer_
--logid:12001411

--掩码：
-- 194 86 记录玩家积分
-- 194 87 记录领取黑桃3
-- 194 88 记录扑克使用cd
-- （194 89 -195 03）记录神秘宝盒中存放的扑克数量

------------------------------------------------------------------------------------
--临时表
tCollectionSqueezer_ClrGlobalTemp = {}

--基础数据
local tCollectionSqueezer_Cont = {}
	
	local tCollectionSqueezer_Cont = {}
	--活动时间
	tCollectionSqueezer_Cont["BefTime"] = tActivityTime["CollectionSqueezer"]["BefTime"]
	tCollectionSqueezer_Cont["ActTime"] = tActivityTime["CollectionSqueezer"]["ActTime"]
	
	tCollectionSqueezer_Cont["DoubleTime"] = {}
	tCollectionSqueezer_Cont["DoubleTime"][1] = "4:00 6:00"
	tCollectionSqueezer_Cont["DoubleTime"][2] = "10:00 12:00"
	tCollectionSqueezer_Cont["DoubleTime"][3] = "18:00 20:00"
	
	tCollectionSqueezer_Cont["RewLevel"] = 0
	tCollectionSqueezer_Cont["RewMete"] = 1

	
	--物品对应积分
	tCollectionSqueezer_Cont["Integral"] = {}
	tCollectionSqueezer_Cont["Integral"][3321255] = 5
	tCollectionSqueezer_Cont["Integral"][3321256] = 15
	tCollectionSqueezer_Cont["Integral"][3321257] = 50
	tCollectionSqueezer_Cont["Integral"][3321258] = 150
	tCollectionSqueezer_Cont["Integral"][3321259] = 500
	tCollectionSqueezer_Cont["Integral"][3321260] = 1500
	
	tCollectionSqueezer_Cont["ItemId"] = {}
	tCollectionSqueezer_Cont["ItemId"][1]  = 3321232
	tCollectionSqueezer_Cont["ItemId"][2]  = 3321233
	tCollectionSqueezer_Cont["ItemId"][3]  = 3321234
	tCollectionSqueezer_Cont["ItemId"][4]  = 3321235
	tCollectionSqueezer_Cont["ItemId"][5]  = 3321236
	tCollectionSqueezer_Cont["ItemId"][6]  = 3321237
	tCollectionSqueezer_Cont["ItemId"][7]  = 3321238
	tCollectionSqueezer_Cont["ItemId"][8]  = 3321239
	tCollectionSqueezer_Cont["ItemId"][9]  = 3321240
	tCollectionSqueezer_Cont["ItemId"][10] = 3321241
	tCollectionSqueezer_Cont["ItemId"][11] = 3321242
	tCollectionSqueezer_Cont["ItemId"][12] = 3321243
	tCollectionSqueezer_Cont["ItemId"][13] = 3321244
	tCollectionSqueezer_Cont["ItemId"][14] = 3321245
	tCollectionSqueezer_Cont["ItemId"][15] = 3321246

	--全局表
	tCollectionSqueezer_Cont["GlobalId"] = 53370
	--怪物掉落总量
	tCollectionSqueezer_Cont["DropMaxData"] = {}
	tCollectionSqueezer_Cont["DropMaxData"][1] = 20000
	tCollectionSqueezer_Cont["DropMaxData"][2] = 40000
	--排行榜
	tCollectionSqueezer_Cont["DayRankIndex"] = 24193
	
	
	local tCollectionSqueezer_MonsterDrop = {}
	-- ===黑桃2
	-- ===索引: 3321232,1
	-- ===
	tCollectionSqueezer_MonsterDrop[3321232] = {}
	tCollectionSqueezer_MonsterDrop[3321232][1] = {}
	tCollectionSqueezer_MonsterDrop[3321232][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_MonsterDrop[3321232][1]["LogId"] = 12001411
	-- 2牌 - 0.50%
	tCollectionSqueezer_MonsterDrop[3321232][1][1] = {}
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["ItemChance"] = 50
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["RewardItem"] = {}
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["RewardItem"][1] = {}
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["RewardItem"][1]["Id"] = 3321232 -- 【库】黑桃2[属性:9]【表格】2牌
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃2*1
	-- 全服cq_dyna_global_data存储表
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["GlobalId"] = 53370 -- 需手动配：[cq_dyna_global_data]表id
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["Pos"] = 0 -- 全服限量data位
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["MaxData"] = 20000 -- 全服限量总数
	tCollectionSqueezer_MonsterDrop[3321232][1][1]["FullIndex"] = 2 -- 全服限量超出给其他【下标】奖励
	
	-- 消失 - 99.50%
	tCollectionSqueezer_MonsterDrop[3321232][1][2] = {}
	tCollectionSqueezer_MonsterDrop[3321232][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_MonsterDrop[3321232][1][2]["ItemChance"] = 9950
	-- ===黑桃2
	-- ===索引: 3321232,2
	-- ===
	tCollectionSqueezer_MonsterDrop[3321232][2] = {}
	tCollectionSqueezer_MonsterDrop[3321232][2]["ItemChanceSum"] = 10000
	tCollectionSqueezer_MonsterDrop[3321232][2]["LogId"] = 12001411

	-- 2牌 - 1.00%
	tCollectionSqueezer_MonsterDrop[3321232][2][1] = {}
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["ItemChance"] = 100
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["RewardItem"] = {}
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["RewardItem"][1] = {}
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["RewardItem"][1]["Id"] = 3321232 -- 【库】黑桃2[属性:9]【表格】2牌
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃2*1
	-- 全服cq_dyna_global_data存储表
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["GlobalId"] = 53370 -- 需手动配：[cq_dyna_global_data]表id
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["Pos"] = 0 -- 全服限量data位
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["MaxData"] = 40000 -- 全服限量总数
	tCollectionSqueezer_MonsterDrop[3321232][2][1]["FullIndex"] = 2 -- 全服限量超出给其他【下标】奖励
	
	-- 消失 - 99.00%
	tCollectionSqueezer_MonsterDrop[3321232][2][2] = {}
	tCollectionSqueezer_MonsterDrop[3321232][2][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_MonsterDrop[3321232][2][2]["ItemChance"] = 9900
	
	local tCollectionSqueezer_RandomItemId = {}
	-- ===黑桃2
	-- ===索引: 3321232,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321232] = {}
	tCollectionSqueezer_RandomItemId[3321232][1] = {}
	tCollectionSqueezer_RandomItemId[3321232][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321232][1]["LogId"] = 12001411
	-- 消失 - 50.00%
	tCollectionSqueezer_RandomItemId[3321232][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321232][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321232][1][1]["ItemChance"] = 5000
	tCollectionSqueezer_RandomItemId[3321232][1][1]["Item_1"] = 0
	-- 2牌 - 12.00%
	tCollectionSqueezer_RandomItemId[3321232][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321232][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321232][1][2]["ItemChance"] = 1200
	tCollectionSqueezer_RandomItemId[3321232][1][2]["Item_1"] = 3321232
	-- 3牌 - 37.50%
	tCollectionSqueezer_RandomItemId[3321232][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321232][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321232][1][3]["ItemChance"] = 3750
	tCollectionSqueezer_RandomItemId[3321232][1][3]["Item_1"] = 3321233
	-- 5牌 - 0.50%
	tCollectionSqueezer_RandomItemId[3321232][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321232][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321232][1][4]["ItemChance"] = 50
	tCollectionSqueezer_RandomItemId[3321232][1][4]["Item_1"] = 3321235


	-- ===黑桃3
	-- ===索引: 3321233,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321233] = {}
	tCollectionSqueezer_RandomItemId[3321233][1] = {}
	tCollectionSqueezer_RandomItemId[3321233][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321233][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321233][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321233][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321233][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321233][1][1]["Item_1"] = 0
	-- 2牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321233][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321233][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321233][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321233][1][2]["Item_1"] = 3321232
	-- 3牌 - 13.00%
	tCollectionSqueezer_RandomItemId[3321233][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321233][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321233][1][3]["ItemChance"] = 1300
	tCollectionSqueezer_RandomItemId[3321233][1][3]["Item_1"] = 3321233
	-- 4牌 - 36.80%
	tCollectionSqueezer_RandomItemId[3321233][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321233][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321233][1][4]["ItemChance"] = 3680
	tCollectionSqueezer_RandomItemId[3321233][1][4]["Item_1"] = 3321234
	-- 6牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321233][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321233][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321233][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321233][1][5]["Item_1"] = 3321236


	-- ===黑桃4
	-- ===索引: 3321234,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321234] = {}
	tCollectionSqueezer_RandomItemId[3321234][1] = {}
	tCollectionSqueezer_RandomItemId[3321234][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321234][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321234][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321234][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321234][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321234][1][1]["Item_1"] = 0
	-- 3牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321234][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321234][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321234][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321234][1][2]["Item_1"] = 3321233
	-- 4牌 - 13.00%
	tCollectionSqueezer_RandomItemId[3321234][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321234][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321234][1][3]["ItemChance"] = 1300
	tCollectionSqueezer_RandomItemId[3321234][1][3]["Item_1"] = 3321234
	-- 5牌 - 36.80%
	tCollectionSqueezer_RandomItemId[3321234][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321234][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321234][1][4]["ItemChance"] = 3680
	tCollectionSqueezer_RandomItemId[3321234][1][4]["Item_1"] = 3321235
	-- 7牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321234][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321234][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321234][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321234][1][5]["Item_1"] = 3321237


	-- ===黑桃5
	-- ===索引: 3321235,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321235] = {}
	tCollectionSqueezer_RandomItemId[3321235][1] = {}
	tCollectionSqueezer_RandomItemId[3321235][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321235][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321235][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321235][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321235][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321235][1][1]["Item_1"] = 0
	-- 4牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321235][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321235][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321235][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321235][1][2]["Item_1"] = 3321234
	-- 5牌 - 13.00%
	tCollectionSqueezer_RandomItemId[3321235][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321235][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321235][1][3]["ItemChance"] = 1300
	tCollectionSqueezer_RandomItemId[3321235][1][3]["Item_1"] = 3321235
	-- 6牌 - 36.80%
	tCollectionSqueezer_RandomItemId[3321235][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321235][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321235][1][4]["ItemChance"] = 3680
	tCollectionSqueezer_RandomItemId[3321235][1][4]["Item_1"] = 3321236
	-- 8牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321235][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321235][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321235][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321235][1][5]["Item_1"] = 3321238


	-- ===黑桃6
	-- ===索引: 3321236,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321236] = {}
	tCollectionSqueezer_RandomItemId[3321236][1] = {}
	tCollectionSqueezer_RandomItemId[3321236][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321236][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321236][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321236][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321236][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321236][1][1]["Item_1"] = 0
	-- 5牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321236][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321236][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321236][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321236][1][2]["Item_1"] = 3321235
	-- 6牌 - 13.00%
	tCollectionSqueezer_RandomItemId[3321236][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321236][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321236][1][3]["ItemChance"] = 1300
	tCollectionSqueezer_RandomItemId[3321236][1][3]["Item_1"] = 3321236
	-- 7牌 - 36.80%
	tCollectionSqueezer_RandomItemId[3321236][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321236][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321236][1][4]["ItemChance"] = 3680
	tCollectionSqueezer_RandomItemId[3321236][1][4]["Item_1"] = 3321237
	-- 9牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321236][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321236][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321236][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321236][1][5]["Item_1"] = 3321239


	-- ===黑桃7
	-- ===索引: 3321237,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321237] = {}
	tCollectionSqueezer_RandomItemId[3321237][1] = {}
	tCollectionSqueezer_RandomItemId[3321237][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321237][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321237][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321237][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321237][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321237][1][1]["Item_1"] = 0
	-- 6牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321237][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321237][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321237][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321237][1][2]["Item_1"] = 3321236
	-- 7牌 - 13.00%
	tCollectionSqueezer_RandomItemId[3321237][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321237][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321237][1][3]["ItemChance"] = 1300
	tCollectionSqueezer_RandomItemId[3321237][1][3]["Item_1"] = 3321237
	-- 8牌 - 36.80%
	tCollectionSqueezer_RandomItemId[3321237][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321237][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321237][1][4]["ItemChance"] = 3680
	tCollectionSqueezer_RandomItemId[3321237][1][4]["Item_1"] = 3321238
	-- 10牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321237][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321237][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321237][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321237][1][5]["Item_1"] = 3321240


	-- ===黑桃8
	-- ===索引: 3321238,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321238] = {}
	tCollectionSqueezer_RandomItemId[3321238][1] = {}
	tCollectionSqueezer_RandomItemId[3321238][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321238][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321238][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321238][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321238][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321238][1][1]["Item_1"] = 0
	-- 7牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321238][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321238][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321238][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321238][1][2]["Item_1"] = 3321237
	-- 8牌 - 13.00%
	tCollectionSqueezer_RandomItemId[3321238][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321238][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321238][1][3]["ItemChance"] = 1300
	tCollectionSqueezer_RandomItemId[3321238][1][3]["Item_1"] = 3321238
	-- 9牌 - 36.80%
	tCollectionSqueezer_RandomItemId[3321238][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321238][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321238][1][4]["ItemChance"] = 3680
	tCollectionSqueezer_RandomItemId[3321238][1][4]["Item_1"] = 3321239
	-- J牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321238][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321238][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321238][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321238][1][5]["Item_1"] = 3321241


	-- ===黑桃9
	-- ===索引: 3321239,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321239] = {}
	tCollectionSqueezer_RandomItemId[3321239][1] = {}
	tCollectionSqueezer_RandomItemId[3321239][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321239][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321239][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321239][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321239][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321239][1][1]["Item_1"] = 0
	-- 8牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321239][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321239][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321239][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321239][1][2]["Item_1"] = 3321238
	-- 9牌 - 11.00%
	tCollectionSqueezer_RandomItemId[3321239][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321239][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321239][1][3]["ItemChance"] = 1100
	tCollectionSqueezer_RandomItemId[3321239][1][3]["Item_1"] = 3321239
	-- 10牌 - 38.80%
	tCollectionSqueezer_RandomItemId[3321239][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321239][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321239][1][4]["ItemChance"] = 3880
	tCollectionSqueezer_RandomItemId[3321239][1][4]["Item_1"] = 3321240
	-- Q牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321239][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321239][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321239][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321239][1][5]["Item_1"] = 3321242


	-- ===黑桃10
	-- ===索引: 3321240,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321240] = {}
	tCollectionSqueezer_RandomItemId[3321240][1] = {}
	tCollectionSqueezer_RandomItemId[3321240][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321240][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321240][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321240][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321240][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321240][1][1]["Item_1"] = 0
	-- 9牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321240][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321240][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321240][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321240][1][2]["Item_1"] = 3321239
	-- 10牌 - 11.00%
	tCollectionSqueezer_RandomItemId[3321240][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321240][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321240][1][3]["ItemChance"] = 1100
	tCollectionSqueezer_RandomItemId[3321240][1][3]["Item_1"] = 3321240
	-- J牌 - 38.80%
	tCollectionSqueezer_RandomItemId[3321240][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321240][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321240][1][4]["ItemChance"] = 3880
	tCollectionSqueezer_RandomItemId[3321240][1][4]["Item_1"] = 3321241
	-- K牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321240][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321240][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321240][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321240][1][5]["Item_1"] = 3321243


	-- ===黑桃J
	-- ===索引: 3321241,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321241] = {}
	tCollectionSqueezer_RandomItemId[3321241][1] = {}
	tCollectionSqueezer_RandomItemId[3321241][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321241][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321241][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321241][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321241][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321241][1][1]["Item_1"] = 0
	-- 10牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321241][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321241][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321241][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321241][1][2]["Item_1"] = 3321240
	-- J牌 - 11.00%
	tCollectionSqueezer_RandomItemId[3321241][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321241][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321241][1][3]["ItemChance"] = 1100
	tCollectionSqueezer_RandomItemId[3321241][1][3]["Item_1"] = 3321241
	-- Q牌 - 38.80%
	tCollectionSqueezer_RandomItemId[3321241][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321241][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321241][1][4]["ItemChance"] = 3880
	tCollectionSqueezer_RandomItemId[3321241][1][4]["Item_1"] = 3321242
	-- A牌 - 0.20%
	tCollectionSqueezer_RandomItemId[3321241][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321241][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321241][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321241][1][5]["Item_1"] = 3321244


	-- ===黑桃Q
	-- ===索引: 3321242,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321242] = {}
	tCollectionSqueezer_RandomItemId[3321242][1] = {}
	tCollectionSqueezer_RandomItemId[3321242][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321242][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321242][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321242][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321242][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321242][1][1]["Item_1"] = 0
	-- J牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321242][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321242][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321242][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321242][1][2]["Item_1"] = 3321241
	-- Q牌 - 11.00%
	tCollectionSqueezer_RandomItemId[3321242][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321242][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321242][1][3]["ItemChance"] = 1100
	tCollectionSqueezer_RandomItemId[3321242][1][3]["Item_1"] = 3321242
	-- K牌 - 38.80%
	tCollectionSqueezer_RandomItemId[3321242][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321242][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321242][1][4]["ItemChance"] = 3880
	tCollectionSqueezer_RandomItemId[3321242][1][4]["Item_1"] = 3321243
	-- 小王 - 0.20%
	tCollectionSqueezer_RandomItemId[3321242][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321242][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321242][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321242][1][5]["Item_1"] = 3321245


	-- ===黑桃K
	-- ===索引: 3321243,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321243] = {}
	tCollectionSqueezer_RandomItemId[3321243][1] = {}
	tCollectionSqueezer_RandomItemId[3321243][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321243][1]["LogId"] = 12001411
	-- 消失 - 40.00%
	tCollectionSqueezer_RandomItemId[3321243][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321243][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321243][1][1]["ItemChance"] = 4000
	tCollectionSqueezer_RandomItemId[3321243][1][1]["Item_1"] = 0
	-- Q牌 - 10.00%
	tCollectionSqueezer_RandomItemId[3321243][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321243][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321243][1][2]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321243][1][2]["Item_1"] = 3321242
	-- K牌 - 11.00%
	tCollectionSqueezer_RandomItemId[3321243][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321243][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321243][1][3]["ItemChance"] = 1100
	tCollectionSqueezer_RandomItemId[3321243][1][3]["Item_1"] = 3321243
	-- A牌 - 38.80%
	tCollectionSqueezer_RandomItemId[3321243][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321243][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321243][1][4]["ItemChance"] = 3880
	tCollectionSqueezer_RandomItemId[3321243][1][4]["Item_1"] = 3321244
	-- 大王 - 0.20%
	tCollectionSqueezer_RandomItemId[3321243][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321243][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321243][1][5]["ItemChance"] = 20
	tCollectionSqueezer_RandomItemId[3321243][1][5]["Item_1"] = 3321246


	-- ===黑桃A
	-- ===索引: 3321244,1
	-- ===
	tCollectionSqueezer_RandomItemId[3321244] = {}
	tCollectionSqueezer_RandomItemId[3321244][1] = {}
	tCollectionSqueezer_RandomItemId[3321244][1]["ItemChanceSum"] = 10000
	tCollectionSqueezer_RandomItemId[3321244][1]["LogId"] = 12001411
	-- 消失 - 52.00%
	tCollectionSqueezer_RandomItemId[3321244][1][1] = {}
	tCollectionSqueezer_RandomItemId[3321244][1][1]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321244][1][1]["ItemChance"] = 5200
	tCollectionSqueezer_RandomItemId[3321244][1][1]["Item_1"] = 0
	-- K牌 - 0.00%
	tCollectionSqueezer_RandomItemId[3321244][1][2] = {}
	tCollectionSqueezer_RandomItemId[3321244][1][2]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321244][1][2]["ItemChance"] = 0
	tCollectionSqueezer_RandomItemId[3321244][1][2]["Item_1"] = 3321243
	-- A牌 - 19.00%
	tCollectionSqueezer_RandomItemId[3321244][1][3] = {}
	tCollectionSqueezer_RandomItemId[3321244][1][3]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321244][1][3]["ItemChance"] = 1900
	tCollectionSqueezer_RandomItemId[3321244][1][3]["Item_1"] = 3321244
	-- 小王 - 19.00%
	tCollectionSqueezer_RandomItemId[3321244][1][4] = {}
	tCollectionSqueezer_RandomItemId[3321244][1][4]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321244][1][4]["ItemChance"] = 1900
	tCollectionSqueezer_RandomItemId[3321244][1][4]["Item_1"] = 3321245
	-- 大王 - 10.00%
	tCollectionSqueezer_RandomItemId[3321244][1][5] = {}
	tCollectionSqueezer_RandomItemId[3321244][1][5]["RandomItemChanceType"] = 2
	tCollectionSqueezer_RandomItemId[3321244][1][5]["ItemChance"] = 1000
	tCollectionSqueezer_RandomItemId[3321244][1][5]["Item_1"] = 3321246

	
	local tCollectionSqueezer_RewardItem = {}
	
	tCollectionSqueezer_RewardItem[3321248] = {}
	-- ===赠黄色神纹精粹*2
	-- ===索引: tCollectionSqueezer_RewardItem[3321248]
	-- ===删除: 3321248
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321248]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321248]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321248]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321248]["DeleteItem"][1]["Id"] = 3321248 -- 【库】RuneEssencePack[属性:9]
	tCollectionSqueezer_RewardItem[3321248]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321248]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321248]["RewardItem"][1]["Id"] = 4050001 -- 【库】黄色神纹精粹[属性:9], 【表格】（赠）黄色神纹精粹*2
	tCollectionSqueezer_RewardItem[3321248]["RewardItem"][1]["Attr"] = "0 2 3" -- 黄色神纹精粹（赠）*2
	tCollectionSqueezer_RewardItem[3321248]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321248]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321248]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321249] = {}
	-- ===赠黄色神纹精粹*40
	-- ===索引: tCollectionSqueezer_RewardItem[3321249]
	-- ===删除: 3321249
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321249]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321249]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321249]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321249]["DeleteItem"][1]["Id"] = 3321249 -- 【库】RuneEssencePack[属性:9]
	tCollectionSqueezer_RewardItem[3321249]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321249]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321249]["RewardItem"][1]["Id"] = 4050001 -- 【库】黄色神纹精粹[属性:9], 【表格】（赠）黄色神纹精粹*40
	tCollectionSqueezer_RewardItem[3321249]["RewardItem"][1]["Attr"] = "0 40 3" -- 黄色神纹精粹（赠）*40
	tCollectionSqueezer_RewardItem[3321249]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321249]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321249]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321250] = {}
	-- ===赠神纹源晶*6
	-- ===索引: tCollectionSqueezer_RewardItem[3321250]
	-- ===删除: 3321250
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321250]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321250]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321250]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321250]["DeleteItem"][1]["Id"] = 3321250 -- 【库】RuneCrystal(B)Pack(6)[属性:9]
	tCollectionSqueezer_RewardItem[3321250]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321250]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321250]["RewardItem"][1]["Id"] = 3311759 -- 【库】神纹源晶[属性:8], 【表格】（赠）神纹源晶*6
	tCollectionSqueezer_RewardItem[3321250]["RewardItem"][1]["Attr"] = "0 6 3" -- 神纹源晶（赠）*6
	tCollectionSqueezer_RewardItem[3321250]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321250]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321250]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321251] = {}
	-- ===赠品赤炼石+4*7
	-- ===索引: tCollectionSqueezer_RewardItem[3321251]
	-- ===删除: 3321251
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321251]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321251]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321251]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321251]["DeleteItem"][1]["Id"] = 3321251 -- 【库】7+4Stones(B)Pack[属性:9]
	tCollectionSqueezer_RewardItem[3321251]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321251]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321251]["RewardItem"][1]["Id"] = 730004 -- 【库】+4赤炼石[属性:0], 【表格】（赠）品赤炼石+4*7
	tCollectionSqueezer_RewardItem[3321251]["RewardItem"][1]["Attr"] = "0 7 3" -- +4赤炼石（赠）*7
	tCollectionSqueezer_RewardItem[3321251]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321251]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321251]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321252] = {}
	-- ===赠小固化石*4
	-- ===索引: tCollectionSqueezer_RewardItem[3321252]
	-- ===删除: 3321252
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321252]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321252]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321252]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321252]["DeleteItem"][1]["Id"] = 3321252 -- 【库】PermanentStoneBox(4)[属性:9]
	tCollectionSqueezer_RewardItem[3321252]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321252]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321252]["RewardItem"][1]["Id"] = 723694 -- 【库】固化石[属性:0], 【表格】（赠）小固化石*4
	tCollectionSqueezer_RewardItem[3321252]["RewardItem"][1]["Attr"] = "0 4 3" -- 固化石（赠）*4
	tCollectionSqueezer_RewardItem[3321252]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321252]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321252]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321253] = {}
	-- ===5000赠点包
	-- ===索引: tCollectionSqueezer_RewardItem[3321253]
	-- ===删除: 3321253
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321253]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321253]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321253]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321253]["DeleteItem"][1]["Id"] = 3321253 -- 【库】5000CPs(B)Pack[属性:9]
	tCollectionSqueezer_RewardItem[3321253]["RewardEMoneyMono"] = {}
	tCollectionSqueezer_RewardItem[3321253]["RewardEMoneyMono"]["Value"] = 5000 -- 天石（赠）, 【需求】5000赠天石
	tCollectionSqueezer_RewardItem[3321253]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0417"
	tCollectionSqueezer_RewardItem[3321253]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321253]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321253]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321254] = {}
	-- ===至尊礼包
	-- ===索引: tCollectionSqueezer_RewardItem[3321254]
	-- ===删除: 3321254
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321254]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321254]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321254]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321254]["DeleteItem"][1]["Id"] = 3321254 -- 【库】至尊礼包[属性:9]
	tCollectionSqueezer_RewardItem[3321254]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321254]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321254]["RewardItem"][1]["Id"] = 3009101 -- 【库】龙鳞果[属性:9], 【表格】龙鳞果
	tCollectionSqueezer_RewardItem[3321254]["RewardItem"][1]["Attr"] = "0 100" -- 龙鳞果*100
	tCollectionSqueezer_RewardItem[3321254]["RewardStrengthValue"] = {}
	tCollectionSqueezer_RewardItem[3321254]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】2w气力值
	tCollectionSqueezer_RewardItem[3321254]["RewardItem"][2] = {}
	tCollectionSqueezer_RewardItem[3321254]["RewardItem"][2]["Id"] = 4050001 -- 【库】黄色神纹精粹[属性:9], 【表格】（赠）黄色神纹精粹*50
	tCollectionSqueezer_RewardItem[3321254]["RewardItem"][2]["Attr"] = "0 50 3" -- 黄色神纹精粹（赠）*50
	tCollectionSqueezer_RewardItem[3321254]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321254]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321254]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321255] = {}
	-- ===J礼包
	-- ===索引: tCollectionSqueezer_RewardItem[3321255]
	-- ===删除: 3321255
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321255]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321255]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321255]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321255]["DeleteItem"][1]["Id"] = 3321255 -- 【库】J礼包[属性:9]
	tCollectionSqueezer_RewardItem[3321255]["RewardMoney"] = {}
	tCollectionSqueezer_RewardItem[3321255]["RewardMoney"]["Value"] = 2000000 -- 金币, 【需求】2百万金币
	tCollectionSqueezer_RewardItem[3321255]["RewardNoNeedTip"] = 1
	tCollectionSqueezer_RewardItem[3321255]["Gold"] = true
	tCollectionSqueezer_RewardItem[3321255]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321255]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321255]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321256] = {}
	-- ===Q礼包
	-- ===索引: tCollectionSqueezer_RewardItem[3321256]
	-- ===删除: 3321256
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321256]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321256]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321256]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321256]["DeleteItem"][1]["Id"] = 3321256 -- 【库】Q礼包[属性:9]
	tCollectionSqueezer_RewardItem[3321256]["RewardMoney"] = {}
	tCollectionSqueezer_RewardItem[3321256]["RewardMoney"]["Value"] = 4000000 -- 金币, 【需求】4百万金币
	tCollectionSqueezer_RewardItem[3321256]["RewardNoNeedTip"] = 1
	tCollectionSqueezer_RewardItem[3321256]["Gold"] = true
	tCollectionSqueezer_RewardItem[3321256]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321256]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321256]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321257] = {}
	-- ===K礼包
	-- ===索引: tCollectionSqueezer_RewardItem[3321257]
	-- ===删除: 3321257
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321257]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321257]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321257]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321257]["DeleteItem"][1]["Id"] = 3321257 -- 【库】K礼包[属性:9]
	tCollectionSqueezer_RewardItem[3321257]["RewardMoney"] = {}
	tCollectionSqueezer_RewardItem[3321257]["RewardMoney"]["Value"] = 8000000 -- 金币, 【需求】8百万金币
	tCollectionSqueezer_RewardItem[3321257]["RewardNoNeedTip"] = 1
	tCollectionSqueezer_RewardItem[3321257]["Gold"] = true
	tCollectionSqueezer_RewardItem[3321257]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321257]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321257]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321258] = {}
	-- ===A礼包
	-- ===索引: tCollectionSqueezer_RewardItem[3321258]
	-- ===删除: 3321258
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321258]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321258]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321258]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321258]["DeleteItem"][1]["Id"] = 3321258 -- 【库】A礼包[属性:9]
	tCollectionSqueezer_RewardItem[3321258]["RewardMoney"] = {}
	tCollectionSqueezer_RewardItem[3321258]["RewardMoney"]["Value"] = 16000000 -- 金币, 【需求】1600w金币
	tCollectionSqueezer_RewardItem[3321258]["RewardNoNeedTip"] = 1
	tCollectionSqueezer_RewardItem[3321258]["Gold"] = true
	tCollectionSqueezer_RewardItem[3321258]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321258]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321258]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321259] = {}
	-- ===小王礼包
	-- ===索引: tCollectionSqueezer_RewardItem[3321259]
	-- ===删除: 3321259
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321259]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321259]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321259]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321259]["DeleteItem"][1]["Id"] = 3321259 -- 【库】小王礼包[属性:9]
	tCollectionSqueezer_RewardItem[3321259]["RewardMoney"] = {}
	tCollectionSqueezer_RewardItem[3321259]["RewardMoney"]["Value"] = 32000000 -- 金币, 【需求】3200w金币
	tCollectionSqueezer_RewardItem[3321259]["RewardNoNeedTip"] = 1
	tCollectionSqueezer_RewardItem[3321259]["Gold"] = true
	tCollectionSqueezer_RewardItem[3321259]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321259]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321259]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionSqueezer_RewardItem[3321260] = {}
	-- ===大王礼包
	-- ===索引: tCollectionSqueezer_RewardItem[3321260]
	-- ===删除: 3321260
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321260]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321260]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321260]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321260]["DeleteItem"][1]["Id"] = 3321260 -- 【库】大王礼包[属性:9]
	tCollectionSqueezer_RewardItem[3321260]["RewardMoney"] = {}
	tCollectionSqueezer_RewardItem[3321260]["RewardMoney"]["Value"] = 64000000 -- 金币, 【需求】6400w金币
	tCollectionSqueezer_RewardItem[3321260]["RewardNoNeedTip"] = 1
	tCollectionSqueezer_RewardItem[3321260]["Gold"] = true
	tCollectionSqueezer_RewardItem[3321260]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321260]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321260]["RewardEffect"]["Effect"] = "angelwing"
	
	tCollectionSqueezer_RewardItem[3321551] = {}
	-- ===龙珠赠*3
	-- ===索引: tCollectionSqueezer_RewardItem[3321551]
	-- ===删除: 3321551
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321551]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321551]["DeleteItem"] = {}
	tCollectionSqueezer_RewardItem[3321551]["DeleteItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321551]["DeleteItem"][1]["Id"] = 3321551 -- 【库】 3321551 【DragonBallPack(3)】[属性:9]
	tCollectionSqueezer_RewardItem[3321551]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321551]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321551]["RewardItem"][1]["Id"] = 1088000 -- 【库】龙珠[属性:0], 【表格】龙珠赠*3
	tCollectionSqueezer_RewardItem[3321551]["RewardItem"][1]["Attr"] = "0 3 3" -- 龙珠（赠）*3
	tCollectionSqueezer_RewardItem[3321551]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321551]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321551]["RewardEffect"]["Effect"] = "angelwing"
	
	tCollectionSqueezer_RewardItem[3321232] = {}
	-- ===黑桃2
	-- ===索引: tCollectionSqueezer_RewardItem[3321232]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321232]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321232]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321232]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321232]["RewardItem"][1]["Id"] = 3321232 -- 【库】黑桃2[属性:9], 【表格】黑桃2
	tCollectionSqueezer_RewardItem[3321232]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃2*1


	tCollectionSqueezer_RewardItem[3321233] = {}
	-- ===黑桃3
	-- ===索引: tCollectionSqueezer_RewardItem[3321233]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321233]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321233]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321233]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321233]["RewardItem"][1]["Id"] = 3321233 -- 【库】黑桃3[属性:9], 【表格】黑桃3
	tCollectionSqueezer_RewardItem[3321233]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃3*1


	tCollectionSqueezer_RewardItem[3321234] = {}
	-- ===黑桃4
	-- ===索引: tCollectionSqueezer_RewardItem[3321234]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321234]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321234]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321234]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321234]["RewardItem"][1]["Id"] = 3321234 -- 【库】黑桃4[属性:9], 【表格】黑桃4
	tCollectionSqueezer_RewardItem[3321234]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃4*1


	tCollectionSqueezer_RewardItem[3321235] = {}
	-- ===黑桃5
	-- ===索引: tCollectionSqueezer_RewardItem[3321235]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321235]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321235]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321235]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321235]["RewardItem"][1]["Id"] = 3321235 -- 【库】黑桃5[属性:9], 【表格】黑桃5
	tCollectionSqueezer_RewardItem[3321235]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃5*1


	tCollectionSqueezer_RewardItem[3321236] = {}
	-- ===黑桃6
	-- ===索引: tCollectionSqueezer_RewardItem[3321236]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321236]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321236]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321236]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321236]["RewardItem"][1]["Id"] = 3321236 -- 【库】黑桃6[属性:8], 【表格】黑桃6
	tCollectionSqueezer_RewardItem[3321236]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃6*1


	tCollectionSqueezer_RewardItem[3321237] = {}
	-- ===黑桃7
	-- ===索引: tCollectionSqueezer_RewardItem[3321237]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321237]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321237]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321237]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321237]["RewardItem"][1]["Id"] = 3321237 -- 【库】黑桃7[属性:8], 【表格】黑桃7
	tCollectionSqueezer_RewardItem[3321237]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃7*1


	tCollectionSqueezer_RewardItem[3321238] = {}
	-- ===黑桃8
	-- ===索引: tCollectionSqueezer_RewardItem[3321238]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321238]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321238]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321238]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321238]["RewardItem"][1]["Id"] = 3321238 -- 【库】黑桃8[属性:8], 【表格】黑桃8
	tCollectionSqueezer_RewardItem[3321238]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃8*1


	tCollectionSqueezer_RewardItem[3321239] = {}
	-- ===黑桃9
	-- ===索引: tCollectionSqueezer_RewardItem[3321239]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321239]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321239]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321239]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321239]["RewardItem"][1]["Id"] = 3321239 -- 【库】黑桃9[属性:8], 【表格】黑桃9
	tCollectionSqueezer_RewardItem[3321239]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃9*1


	tCollectionSqueezer_RewardItem[3321240] = {}
	-- ===黑桃10
	-- ===索引: tCollectionSqueezer_RewardItem[3321240]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321240]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321240]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321240]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321240]["RewardItem"][1]["Id"] = 3321240 -- 【库】黑桃10[属性:8], 【表格】黑桃10
	tCollectionSqueezer_RewardItem[3321240]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃10*1


	tCollectionSqueezer_RewardItem[3321241] = {}
	-- ===黑桃J
	-- ===索引: tCollectionSqueezer_RewardItem[3321241]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321241]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321241]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321241]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321241]["RewardItem"][1]["Id"] = 3321241 -- 【库】黑桃J[属性:8], 【表格】黑桃J
	tCollectionSqueezer_RewardItem[3321241]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃J*1


	tCollectionSqueezer_RewardItem[3321242] = {}
	-- ===黑桃Q
	-- ===索引: tCollectionSqueezer_RewardItem[3321242]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321242]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321242]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321242]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321242]["RewardItem"][1]["Id"] = 3321242 -- 【库】黑桃Q[属性:8], 【表格】黑桃Q
	tCollectionSqueezer_RewardItem[3321242]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃Q*1


	tCollectionSqueezer_RewardItem[3321243] = {}
	-- ===黑桃K
	-- ===索引: tCollectionSqueezer_RewardItem[3321243]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321243]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321243]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321243]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321243]["RewardItem"][1]["Id"] = 3321243 -- 【库】黑桃K[属性:8], 【表格】黑桃K
	tCollectionSqueezer_RewardItem[3321243]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃K*1


	tCollectionSqueezer_RewardItem[3321244] = {}
	-- ===黑桃A
	-- ===索引: tCollectionSqueezer_RewardItem[3321244]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321244]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321244]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321244]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321244]["RewardItem"][1]["Id"] = 3321244 -- 【库】黑桃A[属性:8], 【表格】黑桃A
	tCollectionSqueezer_RewardItem[3321244]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃A*1


	tCollectionSqueezer_RewardItem[3321245] = {}
	-- ===小王
	-- ===索引: tCollectionSqueezer_RewardItem[3321245]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321245]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321245]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321245]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321245]["RewardItem"][1]["Id"] = 3321245 -- 【库】小王[属性:8], 【表格】小王
	tCollectionSqueezer_RewardItem[3321245]["RewardItem"][1]["Attr"] = "0 1" -- 小王*1


	tCollectionSqueezer_RewardItem[3321246] = {}
	-- ===大王
	-- ===索引: tCollectionSqueezer_RewardItem[3321246]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321246]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321246]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321246]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321246]["RewardItem"][1]["Id"] = 3321246 -- 【库】大王[属性:8], 【表格】大王
	tCollectionSqueezer_RewardItem[3321246]["RewardItem"][1]["Attr"] = "0 1" -- 大王*1

	tCollectionSqueezer_RewardItem[3321312] = {}
	-- ===神秘宝盒
	-- ===索引: tCollectionSqueezer_RewardItem[3321312]
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem[3321312]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem[3321312]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem[3321312]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem[3321312]["RewardItem"][1]["Id"] = 3321312 -- 【库】神秘宝盒[属性:11], 【表格】神秘宝盒
	tCollectionSqueezer_RewardItem[3321312]["RewardItem"][1]["Attr"] = "0 1" -- 神秘宝盒*1
	tCollectionSqueezer_RewardItem[3321312]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem[3321312]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem[3321312]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===
	-- ===索引: tCollectionSqueezer_RewardItem["RewandItem"]
	-- ===
	-- ===
	-- ===
	tCollectionSqueezer_RewardItem["RewandItem"] = {}
	tCollectionSqueezer_RewardItem["RewandItem"]["LogId"] = 12001411
	tCollectionSqueezer_RewardItem["RewandItem"]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem["RewandItem"]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem["RewandItem"]["RewardItem"][1]["Id"] = 3321233 -- 【库】黑桃3[属性:9], 【表格】黑桃3
	tCollectionSqueezer_RewardItem["RewandItem"]["RewardItem"][1]["Attr"] = "0 1" -- 黑桃3*1
	tCollectionSqueezer_RewardItem["RewandItem"]["RewardEffect"] = {}
	tCollectionSqueezer_RewardItem["RewandItem"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionSqueezer_RewardItem["RewandItem"]["RewardEffect"]["Effect"] = "angelwing"
	
	--取出物品
	tCollectionSqueezer_RewardItem["MoveItem"] = {}
	tCollectionSqueezer_RewardItem["MoveItem"]["RewardItem"] = {}
	tCollectionSqueezer_RewardItem["MoveItem"]["RewardItem"][1] = {}
	tCollectionSqueezer_RewardItem["MoveItem"]["RewardItem"][1]["Id"] = 1
	tCollectionSqueezer_RewardItem["MoveItem"]["RewardItem"][1]["Attr"] = "0 %d" 
	
	
local tCollectionSqueezer_Stc = {}
	--记录玩家积分
	tCollectionSqueezer_Stc[1] = {}
	tCollectionSqueezer_Stc[1]["EventType"] = 194
	tCollectionSqueezer_Stc[1]["DataType"] = 86
	--1转以上玩家每天上线可以获得1张3
	tCollectionSqueezer_Stc[2] = {}
	tCollectionSqueezer_Stc[2]["EventType"] = 194
	tCollectionSqueezer_Stc[2]["DataType"] = 87
	--扑克牌cd
	tCollectionSqueezer_Stc[3] = {}
	tCollectionSqueezer_Stc[3]["EventType"] = 194
	tCollectionSqueezer_Stc[3]["DataType"] = 88
	
	--收纳扑克牌的数量
	tCollectionSqueezer_Stc[3321232] = {}
	tCollectionSqueezer_Stc[3321232]["EventType"] = 194
	tCollectionSqueezer_Stc[3321232]["DataType"] = 89
	
	tCollectionSqueezer_Stc[3321233] = {}
	tCollectionSqueezer_Stc[3321233]["EventType"] = 194
	tCollectionSqueezer_Stc[3321233]["DataType"] = 90
	
	tCollectionSqueezer_Stc[3321234] = {}
	tCollectionSqueezer_Stc[3321234]["EventType"] = 194
	tCollectionSqueezer_Stc[3321234]["DataType"] = 91
	
	tCollectionSqueezer_Stc[3321235] = {}
	tCollectionSqueezer_Stc[3321235]["EventType"] = 194
	tCollectionSqueezer_Stc[3321235]["DataType"] = 92
	
	tCollectionSqueezer_Stc[3321236] = {}
	tCollectionSqueezer_Stc[3321236]["EventType"] = 194
	tCollectionSqueezer_Stc[3321236]["DataType"] = 93
	
	tCollectionSqueezer_Stc[3321237] = {}
	tCollectionSqueezer_Stc[3321237]["EventType"] = 194
	tCollectionSqueezer_Stc[3321237]["DataType"] = 94
	
	tCollectionSqueezer_Stc[3321238] = {}
	tCollectionSqueezer_Stc[3321238]["EventType"] = 194
	tCollectionSqueezer_Stc[3321238]["DataType"] = 95
	
	tCollectionSqueezer_Stc[3321239] = {}
	tCollectionSqueezer_Stc[3321239]["EventType"] = 194
	tCollectionSqueezer_Stc[3321239]["DataType"] = 96
	
	tCollectionSqueezer_Stc[3321240] = {}
	tCollectionSqueezer_Stc[3321240]["EventType"] = 194
	tCollectionSqueezer_Stc[3321240]["DataType"] = 97
	
	tCollectionSqueezer_Stc[3321241] = {}
	tCollectionSqueezer_Stc[3321241]["EventType"] = 194
	tCollectionSqueezer_Stc[3321241]["DataType"] = 98
	
	tCollectionSqueezer_Stc[3321242] = {}
	tCollectionSqueezer_Stc[3321242]["EventType"] = 194
	tCollectionSqueezer_Stc[3321242]["DataType"] = 99
	
	tCollectionSqueezer_Stc[3321243] = {}
	tCollectionSqueezer_Stc[3321243]["EventType"] = 195
	tCollectionSqueezer_Stc[3321243]["DataType"] = 00
	
	tCollectionSqueezer_Stc[3321244] = {}
	tCollectionSqueezer_Stc[3321244]["EventType"] = 195
	tCollectionSqueezer_Stc[3321244]["DataType"] = 01
	
	tCollectionSqueezer_Stc[3321245] = {}
	tCollectionSqueezer_Stc[3321245]["EventType"] = 195
	tCollectionSqueezer_Stc[3321245]["DataType"] = 02
	
	tCollectionSqueezer_Stc[3321246] = {}
	tCollectionSqueezer_Stc[3321246]["EventType"] = 195
	tCollectionSqueezer_Stc[3321246]["DataType"] = 03

	-- 排行榜
	tRankingFunc_Info[24193] = {}
	tRankingFunc_Info[24193]["ActiveTime"] = tActivityTime["CollectionSqueezer"]["RankActTime"]
	tRankingFunc_Info[24193]["DayTime"] = {}
	tRankingFunc_Info[24193]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[24193]["ResetTime"] = {}
	tRankingFunc_Info[24193]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[24193]["Global"] = {53380,53381,53382,53383}
	tRankingFunc_Info[24193]["BeforeGlobal"] = {53384,53385,53386,53387}
	tRankingFunc_Info[24193]["RankNum"] = 10
	tRankingFunc_Info[24193]["RankMode"] = 1
	
	tRankingFunc_Info[24193]["Mail"] = {}
	tRankingFunc_Info[24193]["Mail"]["ActiveTime"] = tActivityTime["CollectionSqueezer"]["RankActTime"]
	tRankingFunc_Info[24193]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[24193]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[24193]["Mail"]["Reward"] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[24193]["Mail"]["Reward"][1]["ActionId"] = 572094
	tRankingFunc_Info[24193]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][1]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][1]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][1]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][1]
	tRankingFunc_Info[24193]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[24193]["Mail"]["Reward"][2]["ActionId"] = 572095
	tRankingFunc_Info[24193]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][2]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][2]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][2]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][2]
	tRankingFunc_Info[24193]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[24193]["Mail"]["Reward"][3]["ActionId"] = 572096
	tRankingFunc_Info[24193]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][3]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][3]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][3]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][3]
	tRankingFunc_Info[24193]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[24193]["Mail"]["Reward"][4]["ActionId"] = 572097
	tRankingFunc_Info[24193]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][4]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][4]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][4]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][4]
	tRankingFunc_Info[24193]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[24193]["Mail"]["Reward"][5]["ActionId"] = 572098
	tRankingFunc_Info[24193]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][5]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][5]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][5]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][5]
	tRankingFunc_Info[24193]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[24193]["Mail"]["Reward"][6]["ActionId"] = 572099
	tRankingFunc_Info[24193]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][6]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][6]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][6]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][6]
	tRankingFunc_Info[24193]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[24193]["Mail"]["Reward"][7]["ActionId"] = 572100
	tRankingFunc_Info[24193]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][7]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][7]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][7]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][7]
	tRankingFunc_Info[24193]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[24193]["Mail"]["Reward"][8]["ActionId"] = 572101
	tRankingFunc_Info[24193]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][8]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][8]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][8]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][8]
	tRankingFunc_Info[24193]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[24193]["Mail"]["Reward"][9]["ActionId"] = 572102
	tRankingFunc_Info[24193]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][9]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][9]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][9]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][9]
	tRankingFunc_Info[24193]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[24193]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[24193]["Mail"]["Reward"][10]["ActionId"] = 572103
	tRankingFunc_Info[24193]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[24193]["Mail"]["Reward"][10]["Title"] = tCollectionSqueezer_Text["Mail"]["Title"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][10]["Sender"] = tCollectionSqueezer_Text["Mail"]["Sender"]
	tRankingFunc_Info[24193]["Mail"]["Reward"][10]["Content"] = tCollectionSqueezer_Text["Mail"]["Content"][10]
	
	
	--光效
	local tCollectionSqueezer_Effect = {}
		tCollectionSqueezer_Effect[1] = "self"
		tCollectionSqueezer_Effect[2] = "task060"
		tCollectionSqueezer_Effect[3] = "task061"
		tCollectionSqueezer_Effect[4] = "task051"
		tCollectionSqueezer_Effect[5] = "task052"
	
	
	
local tCollectionSqueezer_log = {}

tCollectionSqueezer_log["Itemlog"] = "0,0,%d,1,12001411,1[9],%d,1"
tCollectionSqueezer_log["Integrallog"] = "0,0,%d,1,12001411,1[8],0,%d"
tCollectionSqueezer_log["TimeOut"] = "0,0,%d,1,12001411,2,0,0"
----------------------------------NPC逻辑--------------------------------------
function CollectionSqueezer_RewardItemBox(nNpcId,nItemId) 
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if Item_ChkItem(nItemId) then
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tCollectionSqueezer_RewardItem[nItemId])
	if not(User_CheckLeftSpace(nSpace)) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return 
	end
	
	RewardTemplate_UseItemAndMsg(tCollectionSqueezer_RewardItem[nItemId],nUserId)
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end


function CollectionSqueezer_OpenCpShop(nNpcId)
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	User_OpenExchangeShop(nNpcId)
end

----------------------------------物品逻辑-------------------------------------
--扑克牌使用
function CollectionSqueezer_UserSqueezer(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionSqueezer_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["TimeOut"],nItemId))
		end
		return
	end
	
	local nUserId = Get_UserId()
	if Item_ChkItem(nItemId) then
		local nEventSquCd = tCollectionSqueezer_Stc[3]["EventType"]
		local nTypeSquCd = tCollectionSqueezer_Stc[3]["DataType"]
		-- cd
		if not Task_StcInterval(nEventSquCd,nTypeSquCd,3,0) then
			User_TalkChannel2005(tCollectionSqueezer_Text["TalkChannel"]["ItemCd"])
			return
		end
		
		local nSpace = RewardTemplate_GetRewardSpace(tCollectionSqueezer_RewardItem[nItemId],nUserId)
		if not(User_CheckLeftSpace(nSpace,nUserId)) then
		-- 提示
			User_TalkChannel2005(tCollectionSqueezer_Text["MsgBox"]["NoSpace"])
			return 
		end
		
		-- local flat,tReward = Probabil_RandomAward(tCollectionSqueezer_RandomItemId[nItemId],1)
		-- local nRewardItemId = tReward[1]["tAward"][1]["Item_1"]
		-- local nItemIdDiff = nRewardItemId - nItemId
		-- if nRewardItemId ==0 then
			-- User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[5],nUserId)
		-- elseif nItemIdDiff >=1 then
			-- User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[2],nUserId)
		-- elseif nItemIdDiff ==0 then
			-- User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[3],nUserId)
		-- else
			-- User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[4],nUserId)
		-- end
		local sLoadingText = tDragonSoulNpc_Text["Loading"]
		User_SetExplore(2,sLoadingText,220,string.format("CollectionSqueezer_ItemTimer</N>%d</N>%d",nItemId,nUserId))
	end
end
--时间延时后扑克牌使用
function CollectionSqueezer_ItemTimer (nItemId,nUserId)
	if Item_ChkItem(nItemId,0,0,nUserId) and Item_DelItem(nItemId,0,0,nUserId) then
		
		
		local nEventSquCd = tCollectionSqueezer_Stc[3]["EventType"]
		local nTypeSquCd = tCollectionSqueezer_Stc[3]["DataType"]
		
		if Task_SetStatistic(nEventSquCd,nTypeSquCd,1,1,nUserId) then
		
			local flat,tReward = Probabil_RandomAward(tCollectionSqueezer_RandomItemId[nItemId],1)
			local nRewardItemId = tReward[1]["tAward"][1]["Item_1"]
		
			Task_SetStcTimestamp(nEventSquCd,nTypeSquCd,0,nUserId)
			local sText = ""
			if nRewardItemId == 0 then
				User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[5],nUserId)
				sText = string.format(tCollectionSqueezer_Text[3321233]["Text341"],Get_ItemtypeName(nItemId))
				Sys_MsgBox(sText,"NULL","NULL",nUserId)
				
				return
			end
			--获得奖励
			RewardTemplate_UseItemAndMsg(tCollectionSqueezer_RewardItem[nRewardItemId],nUserId)
			
			local nItemIdDiff = nRewardItemId - nItemId
			if nItemIdDiff >=1 then
				User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[2],nUserId)
				sText = string.format(tCollectionSqueezer_Text[3321233]["Text311"],Get_ItemtypeName(nItemId),nItemIdDiff,Get_ItemtypeName(nRewardItemId))
			elseif nItemIdDiff ==0 then
				User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[3],nUserId)
				sText = string.format(tCollectionSqueezer_Text[3321233]["Text321"],Get_ItemtypeName(nItemId))
			else
				User_EffectAdd(tCollectionSqueezer_Effect[1],tCollectionSqueezer_Effect[4],nUserId)
				sText = string.format(tCollectionSqueezer_Text[3321233]["Text331"],Get_ItemtypeName(nItemId),Get_ItemtypeName(nRewardItemId))
			end
			

			
			Sys_MsgBox(sText,"NULL","NULL",nUserId)
			Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["Itemlog"],nItemId,nRewardItemId),nUserId)
		end
		
	end
end


function CollectionSqueezer_UserNumSqueezer(nItemId,nUseNum)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionSqueezer_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["TimeOut"],nItemId))
		end
		return
	end
	
	local nUserId = Get_UserId()
	if Item_ChkMulItem(nItemId,nItemId,nUseNum) then
		local nEventSquCd = tCollectionSqueezer_Stc[3]["EventType"]
		local nTypeSquCd = tCollectionSqueezer_Stc[3]["DataType"]
		-- cd
		if not Task_StcInterval(nEventSquCd,nTypeSquCd,3,0) then
			User_TalkChannel2005(tCollectionSqueezer_Text["TalkChannel"]["ItemCd"])
			return
		end
		
		local nSpace = RewardTemplate_GetRewardSpace(tCollectionSqueezer_RewardItem[nItemId],nUserId)
		if not(User_CheckLeftSpace(4,nUserId)) then
		-- 提示
			User_TalkChannel2005(tCollectionSqueezer_Text["MsgBox"]["NoSpace"])
			return 
		end
		local sLoadingText = tDragonSoulNpc_Text["Loading"]
		local sFunc = ""
		
		if nUseNum == 10 then
			-- User_SetExplore(2,sLoadingText,220,string.format("CollectionSqueezer_ItemTenTimer</N>%d</N>%d</N>%d",nItemId,nUseNum,nUserId))
			if Task_SetStatistic(nEventSquCd,nTypeSquCd,1,1,nUserId) then
				Task_SetStcTimestamp(nEventSquCd,nTypeSquCd,0,nUserId)
				CollectionSqueezer_ItemTenTimer(nItemId,nUseNum,nUserId)
			end
		else
			if Task_SetStatistic(nEventSquCd,nTypeSquCd,1,1,nUserId) then
				Task_SetStcTimestamp(nEventSquCd,nTypeSquCd,0,nUserId)
				CollectionSqueezer_ItemFivTyTimer(nItemId,nUseNum,nUserId)
			end
			-- User_SetExplore(2,sLoadingText,220,string.format("CollectionSqueezer_ItemFivTyTimer</N>%d</N>%d</N>%d",nItemId,nUseNum,nUserId))
		end
	else
		if nUseNum == 10 then
			tItem[nItemId]["Text351"] = string.format(tCollectionSqueezer_Text[3321232]["Text351"],Get_ItemtypeName(nItemId))
			LinkItemGossipFunc_New(nItemId,"3-5")
		else
			tItem[nItemId]["Text371"] = string.format(tCollectionSqueezer_Text[3321232]["Text371"],Get_ItemtypeName(nItemId))
			LinkItemGossipFunc_New(nItemId,"3-7")
		end
	end
end

--时间延时后10CI扑克牌使用
function CollectionSqueezer_ItemTenTimer(nItemId,nUseNum,nUserId)
	if Item_ChkMulItem(nItemId,nItemId,nUseNum,0,0,nUserId) then
		for i = 1,nUseNum do
			if Item_ChkItem(nItemId,0,0,nUserId) and Item_DelItem(nItemId,0,0,nUserId) then
				
				local flat,tReward = Probabil_RandomAward(tCollectionSqueezer_RandomItemId[nItemId],1)
				local nRewardItemId = tReward[1]["tAward"][1]["Item_1"]
				

				local sMiddle = ""
				
				if nRewardItemId == 0 then
					sMiddle = tCollectionSqueezer_Text["States"][4]
				else
					--获得奖励
					RewardTemplate_UseItemAndMsg(tCollectionSqueezer_RewardItem[nRewardItemId],nUserId)
				end
				
				Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["Itemlog"],nItemId,nRewardItemId),nUserId)
				
				local nItemIdDiff = nRewardItemId - nItemId
				if nItemIdDiff >=1 then
					sMiddle = tCollectionSqueezer_Text["States"][1]
				elseif nItemIdDiff ==0 then
					sMiddle = tCollectionSqueezer_Text["States"][2]
				elseif nItemIdDiff ==-1 then
					sMiddle = tCollectionSqueezer_Text["States"][3]
				end
				
				
				local sRight = ""
				
				if nRewardItemId == 0 then
					sRight = tCollectionSqueezer_Text["Null"]
				else
					sRight = Get_ItemtypeName(tonumber(nRewardItemId))
				end
				
				local sLeft = tCollectionSqueezer_Text["Num"][i]
				
				local sText = Sys_CenterAline(sLeft,10,sMiddle,39,sRight,68)
				
				tItem[nItemId]["Text36"..(i+3)] = string.format(tCollectionSqueezer_Text[3321233]["Text36"..(i+3)], sText)
				
			end
		end
		
		LinkItemGossipFunc_New(nItemId,"3-6")
	else
		tItem[nItemId]["Text351"] = string.format(tCollectionSqueezer_Text[3321232]["Text351"],Get_ItemtypeName(nItemId))
		LinkItemGossipFunc_New(nItemId,"3-5")
	end
end

function CollectionSqueezer_ItemFivTyTimer(nItemId,nUseNum,nUserId)
	if Item_ChkMulItem(nItemId,nItemId,nUseNum,0,0,nUserId) then
		local nUpgradeNumTH = 0
		local nUpgradeNumOne = 0
		local nUchangedNum = 0
		local nOwngradeNum = 0
		local nBurnItOutNum = 0
		
		for i = 1,nUseNum do
			if Item_ChkItem(nItemId,0,0,nUserId) and Item_DelItem(nItemId,0,0,nUserId) then
				
				local flat,tReward = Probabil_RandomAward(tCollectionSqueezer_RandomItemId[nItemId],1)
				local nRewardItemId = tReward[1]["tAward"][1]["Item_1"]
				
				
				if nRewardItemId == 0 then
					nBurnItOutNum = nBurnItOutNum + 1
					sMiddle = tCollectionSqueezer_Text["States"][4]
				else
					--获得奖励
					RewardTemplate_UseItemAndMsg(tCollectionSqueezer_RewardItem[nRewardItemId],nUserId)
					
				end
				Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["Itemlog"],nItemId,nRewardItemId),nUserId)
				local nItemIdDiff = nRewardItemId - nItemId
				if nItemIdDiff >=3 then
					nUpgradeNumTH = nUpgradeNumTH + 1
				elseif nItemIdDiff ==1 then
					nUpgradeNumOne = nUpgradeNumOne + 1
				elseif nItemIdDiff ==0 then
					nUchangedNum = nUchangedNum + 1
				elseif nItemIdDiff ==-1 then
					nOwngradeNum = nOwngradeNum + 1
				end
				
				
			end
		end
		
		tItem[nItemId]["Text383"] = string.format(tCollectionSqueezer_Text[3321233]["Text383"],nBurnItOutNum)
		tItem[nItemId]["Text384"] = string.format(tCollectionSqueezer_Text[3321233]["Text384"],Get_ItemtypeName(nItemId+3),nUpgradeNumTH)
		tItem[nItemId]["Text385"] = string.format(tCollectionSqueezer_Text[3321233]["Text385"],Get_ItemtypeName(nItemId+1),nUpgradeNumOne)
		tItem[nItemId]["Text386"] = string.format(tCollectionSqueezer_Text[3321233]["Text386"],Get_ItemtypeName(nItemId),nUchangedNum)
		if nItemId ~= 3321232 then
			tItem[nItemId]["Text387"] = string.format(tCollectionSqueezer_Text[3321233]["Text387"],Get_ItemtypeName(nItemId-1),nOwngradeNum)
		end
		LinkItemGossipFunc_New(nItemId,"3-8")
	else
		tItem[nItemId]["Text371"] = string.format(tCollectionSqueezer_Text[3321232]["Text371"],Get_ItemtypeName(nItemId))
		LinkItemGossipFunc_New(nItemId,"3-7")
	end
end
--每日排行榜
function CollectionSqueezer_EverydayRanking(nRankData)
	local nUserId = Get_UserId()
	local nEventRank = tCollectionSqueezer_Stc[1]["EventType"]
	local nTypeRank = tCollectionSqueezer_Stc[1]["DataType"]
	
	--隔天重置掩码
	if Task_StcInterval(nEventRank,nTypeRank,1,4) then
		Task_SetStatistic(nEventRank,nTypeRank,0,1)
		Task_SetStcTimestamp(nEventRank,nTypeRank,0)
	end
	
	local nRankId = tCollectionSqueezer_Cont["DayRankIndex"]
	
	--获取之前的排行榜名次
	local nBeforeRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	
	if Task_AddStatistic(nEventRank,nTypeRank,nRankData,1) then
		Task_SetStcTimestamp(nEventRank,nTypeRank,0)
		
		local nStcRankData = Get_UserStatisticValue(nEventRank,nTypeRank)
		--写入排行榜
		RankingFunc_SetInfo(nRankId,nStcRankData)
		
	end
end

function CollectionSqueezer_MoveSqueezerBox(nItemId)
	
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionSqueezer_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["TimeOut"],nItemId))
		end
		return
	end
	
	local nSum = 0 --记录是否收呐卡牌
	
	for i =1 ,#tCollectionSqueezer_Cont["ItemId"] do
		local nSquItemId = tCollectionSqueezer_Cont["ItemId"][i]
		
		if Item_ChkItem(nSquItemId) then
			local nItemNum = Get_CountItemType(nSquItemId,0)
			nSum = nSum + nItemNum
			if Item_ChkMulItem(nSquItemId,nSquItemId,nItemNum) and Item_DelMulItem(nSquItemId,nSquItemId,nItemNum) then
				
				local nEventSquNum = tCollectionSqueezer_Stc[nSquItemId]["EventType"]
				local nTypeSquNum = tCollectionSqueezer_Stc[nSquItemId]["DataType"]
				
				Task_AddStatistic(nEventSquNum,nTypeSquNum,nItemNum,1)
				Task_SetStcTimestamp(nEventSquNum,nTypeSquNum,0)
				
			end
			
		end
	end
	if nNum == 0 then 
		LinkItemGossipFunc_New(nItemId,"2-2")
	else
		LinkItemGossipFunc_New(nItemId,"2-1")
	end
end

function CollectionSqueezer_MoveSqueezerOneBox(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionSqueezer_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["TimeOut"],nItemId))
		end
		return
	end
	
	local nEventSquNum = tCollectionSqueezer_Stc[nItemId]["EventType"]
	local nTypeSquNum = tCollectionSqueezer_Stc[nItemId]["DataType"]
	
	if not Task_ChkStcValue(nEventSquNum,nTypeSquNum,">",0) then
		return 
	end
	
	local tReward = CommonFunc_Copy(tCollectionSqueezer_RewardItem["MoveItem"])
	local nNum = 1
	tReward["RewardItem"][1]["Id"] = nItemId
	tReward["RewardItem"][1]["Attr"] = string.format(tCollectionSqueezer_RewardItem["MoveItem"]["RewardItem"][1]["Attr"],nNum)
	
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not(User_CheckLeftSpace(nSpace)) then
		-- 提示
		LinkItemGossipFunc_New(3321312,"4-2")
		return 
	end
	
	if Task_AddStatistic(nEventSquNum,nTypeSquNum,-nNum,1) then
		Task_SetStcTimestamp(nEventSquNum,nTypeSquNum,0)
		RewardTemplate_UseItem(tReward)
		
		tItem[3321312]["Text411"] = string.format(tCollectionSqueezer_Text[3321312]["Text411"],nNum,Get_ItemtypeName(nItemId))
		LinkItemGossipFunc_New(3321312,"4-1")
	end
end

function CollectionSqueezer_MoveSqueezerAllBox(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionSqueezer_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["TimeOut"],nItemId))
		end
		return
	end
	
	local nEventSquNum = tCollectionSqueezer_Stc[nItemId]["EventType"]
	local nTypeSquNum = tCollectionSqueezer_Stc[nItemId]["DataType"]
	
	if not Task_ChkStcValue(nEventSquNum,nTypeSquNum,">",0) then
		return 
	end
	
	local tReward = CommonFunc_Copy(tCollectionSqueezer_RewardItem["MoveItem"])
	local nNum = Get_UserStatisticValue(nEventSquNum,nTypeSquNum)
	tReward["RewardItem"][1]["Id"] = nItemId
	tReward["RewardItem"][1]["Attr"] = string.format(tCollectionSqueezer_RewardItem["MoveItem"]["RewardItem"][1]["Attr"],nNum)
	
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not(User_CheckLeftSpace(nSpace)) then
		-- 提示
		LinkItemGossipFunc_New(3321312,"4-2")
		return 
	end
	
	if Task_AddStatistic(nEventSquNum,nTypeSquNum,-nNum,1) then
		Task_SetStcTimestamp(nEventSquNum,nTypeSquNum,0)
		RewardTemplate_UseItem(tReward)
		
		tItem[3321312]["Text411"] = string.format(tCollectionSqueezer_Text[3321312]["Text411"],nNum,Get_ItemtypeName(nItemId))
		LinkItemGossipFunc_New(3321312,"4-1")
		
	end
	
end

-- 打开3-1
function CollectionSqueezer_MoveSquBag(nItemId)
	tItem[3321312]["OptionFunc311"] = "CollectionSqueezer_MoveSqueezerOneBox</N>" .. nItemId
	tItem[3321312]["OptionFunc312"] = "CollectionSqueezer_MoveSqueezerAllBox</N>" .. nItemId
	LinkItemGossipFunc_New(3321312,"3-1")
end
--检测选项
function CollectionSqueezer_ChkOption(nItemId)
	local nEventSquNum = tCollectionSqueezer_Stc[nItemId]["EventType"]
	local nTypeSquNum = tCollectionSqueezer_Stc[nItemId]["DataType"]
	
	if Task_ChkStcValue(nEventSquNum,nTypeSquNum,">",0) then
		return true
	else
		return false
	end
	
end
------------------------------怪物逻辑-------------------------------------


function CollectionSqueezer_KillReward(nMonsterId)
	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		return
	end
	
	--判断是否是激情服
	if SpecialServer_ChkNoGiftServer() then
		return
	end

	local nIndex = 1
	
	for i = 1,#tCollectionSqueezer_Cont["DoubleTime"] do
		if Sys_ChkDayTime(tCollectionSqueezer_Cont["DoubleTime"][i]) then
			nIndex = 2
		end
	end
	
	local nSpace = RewardTemplate_GetRandomSpace(tCollectionSqueezer_MonsterDrop[3321232],nIndex)
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	
	local nGlobalId = tCollectionSqueezer_Cont["GlobalId"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	if nData >=  tCollectionSqueezer_Cont["DropMaxData"][nIndex] then
		return
	end
	
	-- if Sys_SetSynaGlobalData(nGlobalId,0,nData + 1) then
		RewardTemplate_NewRandom(tCollectionSqueezer_MonsterDrop[3321232],nIndex)
	-- end
end
-----------------------------------------时间质检----------------------
function CollectionSqueezer_ClrGlobal()
	local nGlobalId = tCollectionSqueezer_Cont["GlobalId"]
	
	if not (tCollectionSqueezer_ClrGlobalTemp[1] == 1) then
		tCollectionSqueezer_ClrGlobalTemp[1] = 1
		Sys_SetSynaGlobalData(nGlobalId,0,0)
	end
end

function CollectionSqueezer_ClrData()
	tCollectionSqueezer_ClrGlobalTemp = {}
end

-------------------------------------------上线逻辑------------------------------
function CollectionSqueezer_LogIn()
	if SpecialServer_ChkNoGiftServer() then
		return
	end

	if not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"]) then
		return
	end
	
	local nLevel = tCollectionSqueezer_Cont["RewLevel"]
	local nMete = tCollectionSqueezer_Cont["RewMete"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return 
	end
	
	local nEventLogIn = tCollectionSqueezer_Stc[2]["EventType"]
	local nTypeLogIn = tCollectionSqueezer_Stc[2]["DataType"]
	
	--隔天重置掩码
	if Task_StcInterval(nEventLogIn,nTypeLogIn,1,4) then
		Task_SetStatistic(nEventLogIn,nTypeLogIn,0,1)
		Task_SetStcTimestamp(nEventLogIn,nTypeLogIn,0)
	end
	
	if Task_ChkStcValue(nEventLogIn,nTypeLogIn,">=",1) then
		return 
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tCollectionSqueezer_RewardItem["RewandItem"])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tCollectionSqueezer_Text["MsgBox"]["NoSpace"])
		return 
	end
	
	if Task_SetStatistic(nEventLogIn,nTypeLogIn,1,1) then
		Task_SetStcTimestamp(nEventLogIn,nTypeLogIn,0)
		RewardTemplate_UseItemAndMsg(tCollectionSqueezer_RewardItem["RewandItem"])
	end
	
end

--------------------------------Npc模板--------------------------------------
tNpcFace[5993] = 50
tNpcGossip[24193] = tNpcGossip[24193] or DefaultNpc:new{}
tNpcGossip[24193]["OptionHidden"] = 1
tNpcGossip[24193]["DialogueText"] = tCollectionSqueezer_Text[24193]

tNpcGossip[24193]["Text1-1"] = {111,112,113,114}
tNpcGossip[24193]["tOption1-1"] = {111}
tNpcGossip[24193]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCollectionSqueezer_Cont["BefTime"])
end

--活动后
tNpcGossip[24193]["Text1-2"] = {121}
tNpcGossip[24193]["tOption1-2"] = {121}
tNpcGossip[24193]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tCollectionSqueezer_Cont["ActTime"])
end

tNpcGossip[24193]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[24193]["tOption1-3"] = {131,132,135,133}
tNpcGossip[24193]["OptionFunc131"] = "CollectionSqueezer_RewardItemBox</N>24193</N>3321312"
tNpcGossip[24193]["OptionFunc132"] = "CollectionSqueezer_OpenCpShop</N>24193"
tNpcGossip[24193]["OptionPoint133"] = "2-3"
tNpcGossip[24193]["OptionPoint135"] = "2-4"
tNpcGossip[24193]["OptionChkFunc131"] = function()
	local nItemId = 3321312
	if Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end


tNpcGossip[24193]["Text2-1"] = {211,212}
tNpcGossip[24193]["tOption2-1"] = {211}

tNpcGossip[24193]["Text2-2"] = {221}
tNpcGossip[24193]["tOption2-2"] = {221}

tNpcGossip[24193]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312}
tNpcGossip[24193]["tOption2-3"] = {231}

tNpcGossip[24193]["Text2-4"] = {241,242,243,244,245,246,247,248,249,2410,2411,2412,2413,2414,2415}
tNpcGossip[24193]["tOption2-4"] = {241,242}
tNpcGossip[24193]["OptionPoint241"] = "3-1"
tNpcGossip[24193]["ChkFunc2-4"] = function ()
	local nRankId =tCollectionSqueezer_Cont["DayRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,10 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			sRight = "0"
			sMiddle = tCollectionSqueezer_Text["Null"]
		end
		
		local sLeft = string.format(tCollectionSqueezer_Text["Rank"],i)
		
		local sText = Sys_CenterAline(sLeft,10,sMiddle,39,sRight,68)
		
		tNpcGossip[24193]["Text24"..(i+3)] = string.format(tCollectionSqueezer_Text[24193]["Text24"..(i+3)], sText)
	end
	
	local nEventRank = tCollectionSqueezer_Stc[1]["EventType"]
	local nTypeRank = tCollectionSqueezer_Stc[1]["DataType"]
	
	--隔天重置掩码
	if Task_StcInterval(nEventRank,nTypeRank,1,4) then
		Task_SetStatistic(nEventRank,nTypeRank,0,1)
		Task_SetStcTimestamp(nEventRank,nTypeRank,0)
	end
	
	local nStcData = Get_UserStatisticValue(nEventRank,nTypeRank)
	local nUserId = Get_UserId()
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	if nNowRank == 0 then
		tNpcGossip[24193]["Text2415"] = string.format(tCollectionSqueezer_Text[24193]["Text2415"],nStcData)
	else
		tNpcGossip[24193]["Text2415"] = string.format(tCollectionSqueezer_Text[24193]["Text2416"],nNowRank,nStcData)
	end
	
	return true
end

tNpcGossip[24193]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114,3115}
tNpcGossip[24193]["tOption3-1"] = {311}
tNpcGossip[24193]["OptionPoint311"] = "1-1"
--------------------------------物品模板--------------------------------------
tItemFace[3321232] = 2263
tItemFace[3321233] = 2247
tItemFace[3321234] = 2248
tItemFace[3321235] = 2249
tItemFace[3321236] = 2250
tItemFace[3321237] = 2251
tItemFace[3321238] = 2252
tItemFace[3321239] = 2253
tItemFace[3321240] = 2254
tItemFace[3321241] = 2255
tItemFace[3321242] = 2256
tItemFace[3321243] = 2257
tItemFace[3321244] = 2258
tItemFace[3321245] = 2259
tItemFace[3321246] = 2260
tItemFace[3321247] = 2261
tItemFace[3321312] = 2262

tItem[3321232] = tItem[3321232] or {}
tItem[3321232]["DialogueText"] = tCollectionSqueezer_Text[3321232]
tItem[3321232]["Text1-1"] = {111,112}
tItem[3321232]["tOption1-1"] = {111,112,113,114}
tItem[3321232]["OptionPoint111"] = "2-1"
tItem[3321232]["OptionPoint112"] = "2-2"
tItem[3321232]["OptionPoint113"] = "2-3"

tItem[3321232]["Text2-1"] = {211,212}
tItem[3321232]["tOption2-1"] = {211,212}
tItem[3321232]["OptionFunc211"] = "CollectionSqueezer_UserSqueezer</N>3321232"

tItem[3321232]["Text2-2"] = {221}
tItem[3321232]["tOption2-2"] = {221,222}
tItem[3321232]["OptionFunc221"] = "CollectionSqueezer_UserNumSqueezer</N>3321232</N>10"

tItem[3321232]["Text2-3"] = {231}
tItem[3321232]["tOption2-3"] = {231,232}
tItem[3321232]["OptionFunc231"] = "CollectionSqueezer_UserNumSqueezer</N>3321232</N>50"

tItem[3321232]["Text3-1"] = {311}
tItem[3321232]["tOption3-1"] = {311}

tItem[3321232]["Text3-2"] = {321}
tItem[3321232]["tOption3-2"] = {321}

-- tItem[3321232]["Text3-3"] = {331}
-- tItem[3321232]["tOption3-3"] = {331}

tItem[3321232]["Text3-4"] = {341}
tItem[3321232]["tOption3-4"] = {341}

tItem[3321232]["Text3-5"] = {351}
tItem[3321232]["tOption3-5"] = {351}

tItem[3321232]["Text3-6"] = {361,362,363,364,365,366,367,368,369,3610,3611,3612,3613,3614,3615}
tItem[3321232]["tOption3-6"] = {361}

tItem[3321232]["Text3-7"] = {371}
tItem[3321232]["tOption3-7"] = {371}

tItem[3321232]["Text3-8"] = {381,382,383,384,385,386,388,389}
tItem[3321232]["tOption3-8"] = {381}

for nItemId =3321233 , 3321240 do
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] = tCollectionSqueezer_Text[3321233]
	tItem[nItemId]["Text1-1"] = {111,112}
	tItem[nItemId]["tOption1-1"] = {111,112,113,114}
	tItem[nItemId]["OptionPoint111"] = "2-1"
	tItem[nItemId]["OptionPoint112"] = "2-2"
	tItem[nItemId]["OptionPoint113"] = "2-3"
	
	tItem[nItemId]["Text2-1"] = {211,212}
	tItem[nItemId]["tOption2-1"] = {211,212}
	tItem[nItemId]["OptionFunc211"] = "CollectionSqueezer_UserSqueezer</N>"..nItemId
	
	
	tItem[nItemId]["Text2-2"] = {221}
	tItem[nItemId]["tOption2-2"] = {221,222}
	tItem[nItemId]["OptionFunc221"] = "CollectionSqueezer_UserNumSqueezer</N>"..nItemId.."</N>10"
	
	tItem[nItemId]["Text2-3"] = {231}
	tItem[nItemId]["tOption2-3"] = {231,232}
	tItem[nItemId]["OptionFunc231"] = "CollectionSqueezer_UserNumSqueezer</N>"..nItemId.."</N>50"
	
	
	tItem[nItemId]["Text3-1"] = {311}
	tItem[nItemId]["tOption3-1"] = {311}
	
	tItem[nItemId]["Text3-2"] = {321}
	tItem[nItemId]["tOption3-2"] = {321}
	
	tItem[nItemId]["Text3-3"] = {331}
	tItem[nItemId]["tOption3-3"] = {331}
	
	tItem[nItemId]["Text3-4"] = {341}
	tItem[nItemId]["tOption3-4"] = {341}
	
	tItem[nItemId]["Text3-5"] = {351}
	tItem[nItemId]["tOption3-5"] = {351}
	
	tItem[nItemId]["Text3-6"] = {361,362,363,364,365,366,367,368,369,3610,3611,3612,3613,3614,3615}
	tItem[nItemId]["tOption3-6"] = {361}
	
	tItem[nItemId]["Text3-7"] = {371}
	tItem[nItemId]["tOption3-7"] = {371}
	
	tItem[nItemId]["Text3-8"] = {381,382,383,384,385,386,387,388,389}
	tItem[nItemId]["tOption3-8"] = {381}
end

for nItemId =3321241 , 3321243 do
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] = tCollectionSqueezer_Text[3321241]
	tItem[nItemId]["Text1-1"] = {111,112}
	tItem[nItemId]["tOption1-1"] = {111,112}
	tItem[nItemId]["OptionPoint111"] = "2-1"
	
	tItem[nItemId]["Text2-1"] = {211,212}
	tItem[nItemId]["tOption2-1"] = {211,212}
	tItem[nItemId]["OptionFunc211"] = "CollectionSqueezer_UserSqueezer</N>"..nItemId
	
	tItem[nItemId]["Text3-1"] = {311}
	tItem[nItemId]["tOption3-1"] = {311}
	
	tItem[nItemId]["Text3-2"] = {321}
	tItem[nItemId]["tOption3-2"] = {321}
	
	tItem[nItemId]["Text3-3"] = {331}
	tItem[nItemId]["tOption3-3"] = {331}
	
	tItem[nItemId]["Text3-4"] = {341}
	tItem[nItemId]["tOption3-4"] = {341}
end

tItem[3321244] = tItem[3321244] or {}
tItem[3321244]["DialogueText"] = tCollectionSqueezer_Text[3321244]
tItem[3321244]["Text1-1"] = {111,112}
tItem[3321244]["tOption1-1"] = {111,112}
tItem[3321244]["OptionPoint111"] = "2-1"

tItem[3321244]["Text2-1"] = {211,212}
tItem[3321244]["tOption2-1"] = {211,212}
tItem[3321244]["OptionFunc211"] = "CollectionSqueezer_UserSqueezer</N>3321244"

tItem[3321244]["Text3-1"] = {311}
tItem[3321244]["tOption3-1"] = {311}

tItem[3321244]["Text3-2"] = {321}
tItem[3321244]["tOption3-2"] = {321}

tItem[3321244]["Text3-3"] = {331}
tItem[3321244]["tOption3-3"] = {331}

tItem[3321244]["Text3-4"] = {341}
tItem[3321244]["tOption3-4"] = {341}

tItem[3321248] = tItem[3321248] or {}
tItem[3321248]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tCollectionSqueezer_RewardItem[nItemId])
end
tItem[3321249] = tItem[3321248] or {}
tItem[3321250] = tItem[3321248] or {}
tItem[3321251] = tItem[3321248] or {}
tItem[3321252] = tItem[3321248] or {}
tItem[3321253] = tItem[3321248] or {}
tItem[3321254] = tItem[3321248] or {}
tItem[3321551] = tItem[3321248] or {}

tItem[3321255] = tItem[3321255] or {}
tItem[3321255]["Function"] = function(nItemId,sItemName)
	if RewardTemplate_UseItem(tCollectionSqueezer_RewardItem[nItemId]) then
		local nRankData = tCollectionSqueezer_Cont["Integral"][nItemId]
		CollectionSqueezer_EverydayRanking(nRankData)
		User_TalkChannel2005(tCollectionSqueezer_Text["TalkChannel"]["RewardPoint"][nItemId])
		Sys_SaveActionFestivalLog(string.format(tCollectionSqueezer_log["Integrallog"],nItemId,nRankData))
	end
end
tItem[3321256] = tItem[3321255] or {}
tItem[3321257] = tItem[3321255] or {}
tItem[3321258] = tItem[3321255] or {}
tItem[3321259] = tItem[3321255] or {}
tItem[3321260] = tItem[3321255] or {}



tItem[3321312] = tItem[3321312] or {}
tItem[3321312]["DialogueText"] = tCollectionSqueezer_Text[3321312]
tItem[3321312]["Text1-1"] = {111,112,113,114,115,116,117,118}
tItem[3321312]["tOption1-1"] = {111,112,113}
tItem[3321312]["OptionFunc111"] = "CollectionSqueezer_MoveSqueezerBox</N>3321312"
tItem[3321312]["OptionPoint112"] = "2-3"
tItem[3321312]["ChkFunc1-1"] = function ()
	local tSqueezerNum = {}
	for i =1 ,#tCollectionSqueezer_Cont["ItemId"] do
		local nSquItemId = tCollectionSqueezer_Cont["ItemId"][i]
		local nEventSquNum = tCollectionSqueezer_Stc[nSquItemId]["EventType"]
		local nTypeSquNum = tCollectionSqueezer_Stc[nSquItemId]["DataType"]
		tSqueezerNum[i] = tonumber(Get_UserStatisticValue(nEventSquNum,nTypeSquNum))
		
	end
	
	tItem[3321312]["Text113"] = string.format(tCollectionSqueezer_Text[3321312]["Text113"],tSqueezerNum[1],tSqueezerNum[2],tSqueezerNum[3],tSqueezerNum[4])
	tItem[3321312]["Text114"] = string.format(tCollectionSqueezer_Text[3321312]["Text114"],tSqueezerNum[5],tSqueezerNum[6],tSqueezerNum[7],tSqueezerNum[8])
	tItem[3321312]["Text115"] = string.format(tCollectionSqueezer_Text[3321312]["Text115"],tSqueezerNum[9],tSqueezerNum[10],tSqueezerNum[11],tSqueezerNum[12])
	tItem[3321312]["Text116"] = string.format(tCollectionSqueezer_Text[3321312]["Text116"],tSqueezerNum[13],tSqueezerNum[14],tSqueezerNum[15])
	return true
end


tItem[3321312]["Text2-1"] = {211}
tItem[3321312]["tOption2-1"] = {211}

tItem[3321312]["Text2-2"] = {221}
tItem[3321312]["tOption2-2"] = {221}

tItem[3321312]["Text2-3"] = {231}
tItem[3321312]["tOption2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315}
tItem[3321312]["OptionFunc231"] =  "CollectionSqueezer_MoveSquBag</N>3321232"
tItem[3321312]["OptionFunc232"] =  "CollectionSqueezer_MoveSquBag</N>3321233"
tItem[3321312]["OptionFunc233"] =  "CollectionSqueezer_MoveSquBag</N>3321234"
tItem[3321312]["OptionFunc234"] =  "CollectionSqueezer_MoveSquBag</N>3321235"
tItem[3321312]["OptionFunc235"] =  "CollectionSqueezer_MoveSquBag</N>3321236"
tItem[3321312]["OptionFunc236"] =  "CollectionSqueezer_MoveSquBag</N>3321237"
tItem[3321312]["OptionFunc237"] =  "CollectionSqueezer_MoveSquBag</N>3321238"
tItem[3321312]["OptionFunc238"] =  "CollectionSqueezer_MoveSquBag</N>3321239"
tItem[3321312]["OptionFunc239"] =  "CollectionSqueezer_MoveSquBag</N>3321240"
tItem[3321312]["OptionFunc2310"] = "CollectionSqueezer_MoveSquBag</N>3321241"
tItem[3321312]["OptionFunc2311"] = "CollectionSqueezer_MoveSquBag</N>3321242"
tItem[3321312]["OptionFunc2312"] = "CollectionSqueezer_MoveSquBag</N>3321243"
tItem[3321312]["OptionFunc2313"] = "CollectionSqueezer_MoveSquBag</N>3321244"
tItem[3321312]["OptionFunc2314"] = "CollectionSqueezer_MoveSquBag</N>3321245"
tItem[3321312]["OptionFunc2315"] = "CollectionSqueezer_MoveSquBag</N>3321246"
tItem[3321312]["OptionChkFunc231"] = function()
	return CollectionSqueezer_ChkOption(3321232)
end
tItem[3321312]["OptionChkFunc232"] = function()
	return CollectionSqueezer_ChkOption(3321233)
end
tItem[3321312]["OptionChkFunc233"] = function()
	return CollectionSqueezer_ChkOption(3321234)
end
tItem[3321312]["OptionChkFunc234"] = function()
	return CollectionSqueezer_ChkOption(3321235)
end
tItem[3321312]["OptionChkFunc235"] = function()
	return CollectionSqueezer_ChkOption(3321236)
end
tItem[3321312]["OptionChkFunc236"] = function()
	return CollectionSqueezer_ChkOption(3321237)
end
tItem[3321312]["OptionChkFunc237"] = function()
	return CollectionSqueezer_ChkOption(3321238)
end
tItem[3321312]["OptionChkFunc238"] = function()
	return CollectionSqueezer_ChkOption(3321239)
end
tItem[3321312]["OptionChkFunc239"] = function()
	return CollectionSqueezer_ChkOption(3321240)
end
tItem[3321312]["OptionChkFunc2310"] = function()
	return CollectionSqueezer_ChkOption(3321241)
end
tItem[3321312]["OptionChkFunc2311"] = function()
	return CollectionSqueezer_ChkOption(3321242)
end
tItem[3321312]["OptionChkFunc2312"] = function()
	return CollectionSqueezer_ChkOption(3321243)
end
tItem[3321312]["OptionChkFunc2313"] = function()
	return CollectionSqueezer_ChkOption(3321244)
end
tItem[3321312]["OptionChkFunc2314"] = function()
	return CollectionSqueezer_ChkOption(3321245)
end
tItem[3321312]["OptionChkFunc2315"] = function()
	return CollectionSqueezer_ChkOption(3321246)
end

tItem[3321312]["Text3-1"] = {311}
tItem[3321312]["tOption3-1"] = {311,312}
-- tItem[3321312]["OptionFunc311"] = "CollectionSqueezer_MoveSqueezerOneBox</N>%d"
-- tItem[3321312]["OptionFunc312"] = "CollectionSqueezer_MoveSqueezerAllBox</N>%d"

tItem[3321312]["Text4-1"] = {411}
tItem[3321312]["tOption4-1"] = {411,412}
tItem[3321312]["OptionPoint411"] = "2-3"

tItem[3321312]["Text4-2"] = {421}
tItem[3321312]["tOption4-2"] = {421}
---------------------------------怪物掉落--------------------------------------------
--全区全服全片区怪物掉落
local tCollectionSqueezer_KillReward = {}
	tCollectionSqueezer_KillReward["Function"]=CollectionSqueezer_KillReward
	table.insert(tMonsterDrop_AreaLoad,tCollectionSqueezer_KillReward)	
	
--激情服怪物掉落
-- local tCollectionSqueezer_KillReward_NoGift = {}
	-- tCollectionSqueezer_KillReward_NoGift["Function"] = CollectionSqueezer_KillReward
	-- tCollectionSqueezer_KillReward_NoGift["MonsterId"]={4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
	-- table.insert(tMonsterDrop_AreaLoad_NoGift,tCollectionSqueezer_KillReward_NoGift)
	
------------------------------------上线自检------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,CollectionSqueezer_LogIn)

--------------------------------时间自检------------------------------------
local tCollectionSqueezer_ClrGlobal = {}
tCollectionSqueezer_ClrGlobal["Type"] = 6  -- 其他
tCollectionSqueezer_ClrGlobal["TimeType"] = 5  -- 日时间
tCollectionSqueezer_ClrGlobal["Multiple"] = {}
tCollectionSqueezer_ClrGlobal["Time"] = "00 02"
tCollectionSqueezer_ClrGlobal["Func"] = CollectionSqueezer_ClrGlobal
table.insert(tSystemTime_InitialData,tCollectionSqueezer_ClrGlobal)

local tCollectionSqueezer_ClrData = {}
tCollectionSqueezer_ClrData["Type"] = 6  -- 其他
tCollectionSqueezer_ClrData["TimeType"] = 5  -- 日时间
tCollectionSqueezer_ClrData["Multiple"] = {}
tCollectionSqueezer_ClrData["Time"] = "03 05"
tCollectionSqueezer_ClrData["Func"] = CollectionSqueezer_ClrData
table.insert(tSystemTime_InitialData,tCollectionSqueezer_ClrData)