------------------------------------------------------------------------------------
--Name:		190422[简体征服][活动脚本]麻将收集活动
--Purpose:	麻将收集活动
--Creator: 	傅伟龙
--Created:	2018/04/22
------------------------------------------------------------------------------------
--前缀CollectionMahjongr_
--logid:12001465

--掩码：
-- 198 19 记录玩家积分
-- 198 20 怪物掉落上限
-- 198 21 记录扑克使用cd
-- 198 22 是否领取收纳盒
-- （198 23 -198 54）记录神秘宝盒中存放的记忆卡牌数量

------------------------------------------------------------------------------------
--临时表
tCollectionMahjongr_ClrGlobalTemp = {}

--基础数据
local tCollectionMahjongr_Cont = {}
	
	local tCollectionMahjongr_Cont = {}
	--活动时间
	tCollectionMahjongr_Cont["BefTime"] = tActivityTime["CollectionMahjongr"]["BefTime"]
	tCollectionMahjongr_Cont["ActTime"] = tActivityTime["CollectionMahjongr"]["ActTime"]
	
	tCollectionMahjongr_Cont["MinPro"] = 10000
	tCollectionMahjongr_Cont["MaxPro"] = 14099
	
	tCollectionMahjongr_Cont["GlobalId"] = 53433
	
	
	--物品对应积分
	tCollectionMahjongr_Cont["Integral"] = {}
	tCollectionMahjongr_Cont["Integral"][3321990] = 100
	tCollectionMahjongr_Cont["Integral"][3321991] = 1000

	
	tCollectionMahjongr_Cont["ItemId"] = {}
	tCollectionMahjongr_Cont["ItemId"][1]  = 3321951
	tCollectionMahjongr_Cont["ItemId"][2]  = 3321952
	tCollectionMahjongr_Cont["ItemId"][3]  = 3321953
	tCollectionMahjongr_Cont["ItemId"][4]  = 3321954
	tCollectionMahjongr_Cont["ItemId"][5]  = 3321955
	tCollectionMahjongr_Cont["ItemId"][6]  = 3321956
	tCollectionMahjongr_Cont["ItemId"][7]  = 3321957
	tCollectionMahjongr_Cont["ItemId"][8]  = 3321958
	tCollectionMahjongr_Cont["ItemId"][9]  = 3321959
	tCollectionMahjongr_Cont["ItemId"][10] = 3321960
	tCollectionMahjongr_Cont["ItemId"][11] = 3321961
	tCollectionMahjongr_Cont["ItemId"][12] = 3321962
	tCollectionMahjongr_Cont["ItemId"][13] = 3321963
	tCollectionMahjongr_Cont["ItemId"][14] = 3321964
	tCollectionMahjongr_Cont["ItemId"][15] = 3321965
	tCollectionMahjongr_Cont["ItemId"][16] = 3321966
	
	tCollectionMahjongr_Cont["ItemGiftId"] = {}
	tCollectionMahjongr_Cont["ItemGiftId"][1]  = 3321967
	tCollectionMahjongr_Cont["ItemGiftId"][2]  = 3321968
	tCollectionMahjongr_Cont["ItemGiftId"][3]  = 3321969
	tCollectionMahjongr_Cont["ItemGiftId"][4]  = 3321970
	tCollectionMahjongr_Cont["ItemGiftId"][5]  = 3321971
	tCollectionMahjongr_Cont["ItemGiftId"][6]  = 3321972
	tCollectionMahjongr_Cont["ItemGiftId"][7]  = 3321973
	tCollectionMahjongr_Cont["ItemGiftId"][8]  = 3321974
	tCollectionMahjongr_Cont["ItemGiftId"][9]  = 3321975
	tCollectionMahjongr_Cont["ItemGiftId"][10] = 3321976
	tCollectionMahjongr_Cont["ItemGiftId"][11] = 3321977
	tCollectionMahjongr_Cont["ItemGiftId"][12] = 3321978
	tCollectionMahjongr_Cont["ItemGiftId"][13] = 3321979
	tCollectionMahjongr_Cont["ItemGiftId"][14] = 3321980
	tCollectionMahjongr_Cont["ItemGiftId"][15] = 3321981
	tCollectionMahjongr_Cont["ItemGiftId"][16] = 3321982

	tCollectionMahjongr_Cont["CostMoney"] = {}
	tCollectionMahjongr_Cont["CostMoney"][3321951] = 50000
	tCollectionMahjongr_Cont["CostMoney"][3321952] = 100000
	tCollectionMahjongr_Cont["CostMoney"][3321953] = 200000
	tCollectionMahjongr_Cont["CostMoney"][3321954] = 300000
	tCollectionMahjongr_Cont["CostMoney"][3321955] = 600000
	tCollectionMahjongr_Cont["CostMoney"][3321956] = 1200000
	tCollectionMahjongr_Cont["CostMoney"][3321957] = 2400000
	tCollectionMahjongr_Cont["CostMoney"][3321958] = 4800000
	tCollectionMahjongr_Cont["CostMoney"][3321959] = 9600000
	tCollectionMahjongr_Cont["CostMoney"][3321960] = 19200000
	tCollectionMahjongr_Cont["CostMoney"][3321961] = 38400000
	tCollectionMahjongr_Cont["CostMoney"][3321962] = 76800000
	tCollectionMahjongr_Cont["CostMoney"][3321963] = 153600000
	tCollectionMahjongr_Cont["CostMoney"][3321964] = 307200000
	
	--兑换灵珠的id
	tCollectionMahjongr_Cont["ChgAnima"] = {}
	tCollectionMahjongr_Cont["ChgAnima"][3321960] = 4200005
	tCollectionMahjongr_Cont["ChgAnima"][3321961] = 4200006
	tCollectionMahjongr_Cont["ChgAnima"][3321962] = 4200007
	tCollectionMahjongr_Cont["ChgAnima"][3321963] = 4200008
	tCollectionMahjongr_Cont["ChgAnima"][3321964] = 4200009
	tCollectionMahjongr_Cont["ChgAnima"][3321965] = 4200010
	tCollectionMahjongr_Cont["ChgAnima"][3321966] = 4200011
	
	
	
	local tCollectionMahjongr_RewardItem = {}
	-- ===十年之约
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321951][1]
	-- ===删除: 3321952
	tCollectionMahjongr_RewardItem[3321951] = {}
	tCollectionMahjongr_RewardItem[3321951][1] = {}
	tCollectionMahjongr_RewardItem[3321951][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321951][1]["LogId"] = 12001465
	-- 无 - 50.00%
	tCollectionMahjongr_RewardItem[3321951][1][1] = {}
	tCollectionMahjongr_RewardItem[3321951][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321951][1][1]["ItemChance"] = 5000
	tCollectionMahjongr_RewardItem[3321951][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321951][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321951][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 十年之约 - 12.00%
	tCollectionMahjongr_RewardItem[3321951][1][2] = {}
	tCollectionMahjongr_RewardItem[3321951][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321951][1][2]["ItemChance"] = 1200
	tCollectionMahjongr_RewardItem[3321951][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321951][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321951][1][2]["RewardItem"][1]["Id"] = 3321951 -- 【库】十年之约[属性:8], 【表格】十年之约
	tCollectionMahjongr_RewardItem[3321951][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 十年之约*1
	tCollectionMahjongr_RewardItem[3321951][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321951][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321951][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋 - 37.50%
	tCollectionMahjongr_RewardItem[3321951][1][3] = {}
	tCollectionMahjongr_RewardItem[3321951][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321951][1][3]["ItemChance"] = 3750
	tCollectionMahjongr_RewardItem[3321951][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321951][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321951][1][3]["RewardItem"][1]["Id"] = 3321952 -- 【库】从心出发[属性:8], 【表格】双宝夺谋
	tCollectionMahjongr_RewardItem[3321951][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 从心出发*1
	tCollectionMahjongr_RewardItem[3321951][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321951][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321951][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼 - 0.50%
	tCollectionMahjongr_RewardItem[3321951][1][4] = {}
	tCollectionMahjongr_RewardItem[3321951][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321951][1][4]["ItemChance"] = 50
	tCollectionMahjongr_RewardItem[3321951][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321951][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321951][1][4]["RewardItem"][1]["Id"] = 3321954 -- 【库】千锤百炼[属性:8], 【表格】千锤百炼
	tCollectionMahjongr_RewardItem[3321951][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼*1
	tCollectionMahjongr_RewardItem[3321951][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321951][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321951][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321952] = {}
	-- ===从心出发
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321952][1]
	tCollectionMahjongr_RewardItem[3321952][1] = {}
	tCollectionMahjongr_RewardItem[3321952][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321952][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321952][1][1] = {}
	tCollectionMahjongr_RewardItem[3321952][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321952][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321952][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321952][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 十年之约 - 10.00%
	tCollectionMahjongr_RewardItem[3321952][1][2] = {}
	tCollectionMahjongr_RewardItem[3321952][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321952][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321952][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321952][1][2]["RewardItem"][1]["Id"] = 3321951 -- 【库】十年之约[属性:8], 【表格】十年之约
	tCollectionMahjongr_RewardItem[3321952][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 十年之约*1
	tCollectionMahjongr_RewardItem[3321952][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321952][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 从心出发 - 13.00%
	tCollectionMahjongr_RewardItem[3321952][1][3] = {}
	tCollectionMahjongr_RewardItem[3321952][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321952][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321952][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321952][1][3]["RewardItem"][1]["Id"] = 3321952 -- 【库】从心出发[属性:8], 【表格】从心出发
	tCollectionMahjongr_RewardItem[3321952][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 从心出发*1
	tCollectionMahjongr_RewardItem[3321952][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321952][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋 - 36.80%
	tCollectionMahjongr_RewardItem[3321952][1][4] = {}
	tCollectionMahjongr_RewardItem[3321952][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321952][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321952][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321952][1][4]["RewardItem"][1]["Id"] = 3321953 -- 【库】双宝夺谋[属性:8], 【表格】双宝夺谋
	tCollectionMahjongr_RewardItem[3321952][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 双宝夺谋*1
	tCollectionMahjongr_RewardItem[3321952][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321952][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起 - 0.20%
	tCollectionMahjongr_RewardItem[3321952][1][5] = {}
	tCollectionMahjongr_RewardItem[3321952][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321952][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321952][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321952][1][5]["RewardItem"][1]["Id"] = 3321955 -- 【库】风云再起[属性:8], 【表格】风云再起
	tCollectionMahjongr_RewardItem[3321952][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起*1
	tCollectionMahjongr_RewardItem[3321952][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321952][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321952][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321953] = {}
	-- ===双宝夺谋
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321953][1]
	tCollectionMahjongr_RewardItem[3321953][1] = {}
	tCollectionMahjongr_RewardItem[3321953][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321953][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321953][1][1] = {}
	tCollectionMahjongr_RewardItem[3321953][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321953][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321953][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321953][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 从心出发 - 10.00%
	tCollectionMahjongr_RewardItem[3321953][1][2] = {}
	tCollectionMahjongr_RewardItem[3321953][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321953][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321953][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321953][1][2]["RewardItem"][1]["Id"] = 3321952 -- 【库】从心出发[属性:8], 【表格】从心出发
	tCollectionMahjongr_RewardItem[3321953][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 从心出发*1
	tCollectionMahjongr_RewardItem[3321953][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321953][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋 - 13.00%
	tCollectionMahjongr_RewardItem[3321953][1][3] = {}
	tCollectionMahjongr_RewardItem[3321953][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321953][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321953][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321953][1][3]["RewardItem"][1]["Id"] = 3321953 -- 【库】双宝夺谋[属性:8], 【表格】双宝夺谋
	tCollectionMahjongr_RewardItem[3321953][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 双宝夺谋*1
	tCollectionMahjongr_RewardItem[3321953][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321953][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼 - 36.80%
	tCollectionMahjongr_RewardItem[3321953][1][4] = {}
	tCollectionMahjongr_RewardItem[3321953][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321953][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321953][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321953][1][4]["RewardItem"][1]["Id"] = 3321954 -- 【库】千锤百炼[属性:8], 【表格】千锤百炼
	tCollectionMahjongr_RewardItem[3321953][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼*1
	tCollectionMahjongr_RewardItem[3321953][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321953][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇 - 0.20%
	tCollectionMahjongr_RewardItem[3321953][1][5] = {}
	tCollectionMahjongr_RewardItem[3321953][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321953][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321953][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321953][1][5]["RewardItem"][1]["Id"] = 3321956 -- 【库】神兵传奇[属性:8], 【表格】神兵传奇
	tCollectionMahjongr_RewardItem[3321953][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇*1
	tCollectionMahjongr_RewardItem[3321953][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321953][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321953][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321954] = {}
	-- ===千锤百炼
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321954][1]
	tCollectionMahjongr_RewardItem[3321954][1] = {}
	tCollectionMahjongr_RewardItem[3321954][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321954][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321954][1][1] = {}
	tCollectionMahjongr_RewardItem[3321954][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321954][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321954][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321954][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋 - 10.00%
	tCollectionMahjongr_RewardItem[3321954][1][2] = {}
	tCollectionMahjongr_RewardItem[3321954][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321954][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321954][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321954][1][2]["RewardItem"][1]["Id"] = 3321953 -- 【库】双宝夺谋[属性:8], 【表格】双宝夺谋
	tCollectionMahjongr_RewardItem[3321954][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 双宝夺谋*1
	tCollectionMahjongr_RewardItem[3321954][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321954][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼 - 13.00%
	tCollectionMahjongr_RewardItem[3321954][1][3] = {}
	tCollectionMahjongr_RewardItem[3321954][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321954][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321954][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321954][1][3]["RewardItem"][1]["Id"] = 3321954 -- 【库】千锤百炼[属性:8], 【表格】千锤百炼
	tCollectionMahjongr_RewardItem[3321954][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼*1
	tCollectionMahjongr_RewardItem[3321954][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321954][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起 - 36.80%
	tCollectionMahjongr_RewardItem[3321954][1][4] = {}
	tCollectionMahjongr_RewardItem[3321954][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321954][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321954][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321954][1][4]["RewardItem"][1]["Id"] = 3321955 -- 【库】风云再起[属性:8], 【表格】风云再起
	tCollectionMahjongr_RewardItem[3321954][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起*1
	tCollectionMahjongr_RewardItem[3321954][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321954][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖 - 0.20%
	tCollectionMahjongr_RewardItem[3321954][1][5] = {}
	tCollectionMahjongr_RewardItem[3321954][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321954][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321954][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321954][1][5]["RewardItem"][1]["Id"] = 3321957 -- 【库】纵马江湖[属性:8], 【表格】纵马江湖
	tCollectionMahjongr_RewardItem[3321954][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖*1
	tCollectionMahjongr_RewardItem[3321954][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321954][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321954][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321955] = {}
	-- ===风云再起
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321955][1]
	tCollectionMahjongr_RewardItem[3321955][1] = {}
	tCollectionMahjongr_RewardItem[3321955][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321955][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321955][1][1] = {}
	tCollectionMahjongr_RewardItem[3321955][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321955][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321955][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321955][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼 - 10.00%
	tCollectionMahjongr_RewardItem[3321955][1][2] = {}
	tCollectionMahjongr_RewardItem[3321955][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321955][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321955][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321955][1][2]["RewardItem"][1]["Id"] = 3321954 -- 【库】千锤百炼[属性:8], 【表格】千锤百炼
	tCollectionMahjongr_RewardItem[3321955][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼*1
	tCollectionMahjongr_RewardItem[3321955][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321955][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起 - 13.00%
	tCollectionMahjongr_RewardItem[3321955][1][3] = {}
	tCollectionMahjongr_RewardItem[3321955][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321955][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321955][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321955][1][3]["RewardItem"][1]["Id"] = 3321955 -- 【库】风云再起[属性:8], 【表格】风云再起
	tCollectionMahjongr_RewardItem[3321955][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起*1
	tCollectionMahjongr_RewardItem[3321955][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321955][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇 - 36.80%
	tCollectionMahjongr_RewardItem[3321955][1][4] = {}
	tCollectionMahjongr_RewardItem[3321955][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321955][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321955][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321955][1][4]["RewardItem"][1]["Id"] = 3321956 -- 【库】神兵传奇[属性:8], 【表格】神兵传奇
	tCollectionMahjongr_RewardItem[3321955][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇*1
	tCollectionMahjongr_RewardItem[3321955][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321955][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤 - 0.20%
	tCollectionMahjongr_RewardItem[3321955][1][5] = {}
	tCollectionMahjongr_RewardItem[3321955][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321955][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321955][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321955][1][5]["RewardItem"][1]["Id"] = 3321958 -- 【库】器定乾坤[属性:8], 【表格】器定乾坤
	tCollectionMahjongr_RewardItem[3321955][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤*1
	tCollectionMahjongr_RewardItem[3321955][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321955][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321955][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321956] = {}
	-- ===神兵传奇
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321956][1]
	tCollectionMahjongr_RewardItem[3321956][1] = {}
	tCollectionMahjongr_RewardItem[3321956][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321956][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321956][1][1] = {}
	tCollectionMahjongr_RewardItem[3321956][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321956][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321956][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321956][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起 - 10.00%
	tCollectionMahjongr_RewardItem[3321956][1][2] = {}
	tCollectionMahjongr_RewardItem[3321956][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321956][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321956][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321956][1][2]["RewardItem"][1]["Id"] = 3321955 -- 【库】风云再起[属性:8], 【表格】风云再起
	tCollectionMahjongr_RewardItem[3321956][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起*1
	tCollectionMahjongr_RewardItem[3321956][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321956][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇 - 13.00%
	tCollectionMahjongr_RewardItem[3321956][1][3] = {}
	tCollectionMahjongr_RewardItem[3321956][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321956][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321956][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321956][1][3]["RewardItem"][1]["Id"] = 3321956 -- 【库】神兵传奇[属性:8], 【表格】神兵传奇
	tCollectionMahjongr_RewardItem[3321956][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇*1
	tCollectionMahjongr_RewardItem[3321956][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321956][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖 - 36.80%
	tCollectionMahjongr_RewardItem[3321956][1][4] = {}
	tCollectionMahjongr_RewardItem[3321956][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321956][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321956][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321956][1][4]["RewardItem"][1]["Id"] = 3321957 -- 【库】纵马江湖[属性:8], 【表格】纵马江湖
	tCollectionMahjongr_RewardItem[3321956][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖*1
	tCollectionMahjongr_RewardItem[3321956][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321956][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服 - 0.20%
	tCollectionMahjongr_RewardItem[3321956][1][5] = {}
	tCollectionMahjongr_RewardItem[3321956][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321956][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321956][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321956][1][5]["RewardItem"][1]["Id"] = 3321959 -- 【库】一世征服[属性:8], 【表格】一世征服
	tCollectionMahjongr_RewardItem[3321956][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服*1
	tCollectionMahjongr_RewardItem[3321956][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321956][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321956][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321957] = {}
	-- ===纵马江湖
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321957][1]
	tCollectionMahjongr_RewardItem[3321957][1] = {}
	tCollectionMahjongr_RewardItem[3321957][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321957][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321957][1][1] = {}
	tCollectionMahjongr_RewardItem[3321957][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321957][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321957][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321957][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇 - 10.00%
	tCollectionMahjongr_RewardItem[3321957][1][2] = {}
	tCollectionMahjongr_RewardItem[3321957][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321957][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321957][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321957][1][2]["RewardItem"][1]["Id"] = 3321956 -- 【库】神兵传奇[属性:8], 【表格】神兵传奇
	tCollectionMahjongr_RewardItem[3321957][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇*1
	tCollectionMahjongr_RewardItem[3321957][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321957][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖 - 13.00%
	tCollectionMahjongr_RewardItem[3321957][1][3] = {}
	tCollectionMahjongr_RewardItem[3321957][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321957][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321957][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321957][1][3]["RewardItem"][1]["Id"] = 3321957 -- 【库】纵马江湖[属性:8], 【表格】纵马江湖
	tCollectionMahjongr_RewardItem[3321957][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖*1
	tCollectionMahjongr_RewardItem[3321957][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321957][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤 - 36.80%
	tCollectionMahjongr_RewardItem[3321957][1][4] = {}
	tCollectionMahjongr_RewardItem[3321957][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321957][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321957][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321957][1][4]["RewardItem"][1]["Id"] = 3321958 -- 【库】器定乾坤[属性:8], 【表格】器定乾坤
	tCollectionMahjongr_RewardItem[3321957][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤*1
	tCollectionMahjongr_RewardItem[3321957][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321957][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机 - 0.20%
	tCollectionMahjongr_RewardItem[3321957][1][5] = {}
	tCollectionMahjongr_RewardItem[3321957][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321957][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321957][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321957][1][5]["RewardItem"][1]["Id"] = 3321960 -- 【库】暗忍危机[属性:8], 【表格】暗忍危机
	tCollectionMahjongr_RewardItem[3321957][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机*1
	tCollectionMahjongr_RewardItem[3321957][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321957][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321957][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321958] = {}
	-- ===器定乾坤
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321958][1]
	tCollectionMahjongr_RewardItem[3321958][1] = {}
	tCollectionMahjongr_RewardItem[3321958][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321958][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321958][1][1] = {}
	tCollectionMahjongr_RewardItem[3321958][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321958][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321958][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321958][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖 - 10.00%
	tCollectionMahjongr_RewardItem[3321958][1][2] = {}
	tCollectionMahjongr_RewardItem[3321958][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321958][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321958][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321958][1][2]["RewardItem"][1]["Id"] = 3321957 -- 【库】纵马江湖[属性:8], 【表格】纵马江湖
	tCollectionMahjongr_RewardItem[3321958][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖*1
	tCollectionMahjongr_RewardItem[3321958][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321958][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤 - 13.00%
	tCollectionMahjongr_RewardItem[3321958][1][3] = {}
	tCollectionMahjongr_RewardItem[3321958][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321958][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321958][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321958][1][3]["RewardItem"][1]["Id"] = 3321958 -- 【库】器定乾坤[属性:8], 【表格】器定乾坤
	tCollectionMahjongr_RewardItem[3321958][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤*1
	tCollectionMahjongr_RewardItem[3321958][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321958][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服 - 36.80%
	tCollectionMahjongr_RewardItem[3321958][1][4] = {}
	tCollectionMahjongr_RewardItem[3321958][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321958][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321958][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321958][1][4]["RewardItem"][1]["Id"] = 3321959 -- 【库】一世征服[属性:8], 【表格】一世征服
	tCollectionMahjongr_RewardItem[3321958][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服*1
	tCollectionMahjongr_RewardItem[3321958][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321958][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭 - 0.20%
	tCollectionMahjongr_RewardItem[3321958][1][5] = {}
	tCollectionMahjongr_RewardItem[3321958][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321958][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321958][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321958][1][5]["RewardItem"][1]["Id"] = 3321961 -- 【库】海盗来袭[属性:8], 【表格】海盗来袭
	tCollectionMahjongr_RewardItem[3321958][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭*1
	tCollectionMahjongr_RewardItem[3321958][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321958][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321958][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321959] = {}
	-- ===一世征服
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321959][1]
	tCollectionMahjongr_RewardItem[3321959][1] = {}
	tCollectionMahjongr_RewardItem[3321959][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321959][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321959][1][1] = {}
	tCollectionMahjongr_RewardItem[3321959][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321959][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321959][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321959][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤 - 10.00%
	tCollectionMahjongr_RewardItem[3321959][1][2] = {}
	tCollectionMahjongr_RewardItem[3321959][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321959][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321959][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321959][1][2]["RewardItem"][1]["Id"] = 3321958 -- 【库】器定乾坤[属性:8], 【表格】器定乾坤
	tCollectionMahjongr_RewardItem[3321959][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤*1
	tCollectionMahjongr_RewardItem[3321959][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321959][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服 - 11.00%
	tCollectionMahjongr_RewardItem[3321959][1][3] = {}
	tCollectionMahjongr_RewardItem[3321959][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321959][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321959][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321959][1][3]["RewardItem"][1]["Id"] = 3321959 -- 【库】一世征服[属性:8], 【表格】一世征服
	tCollectionMahjongr_RewardItem[3321959][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服*1
	tCollectionMahjongr_RewardItem[3321959][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321959][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机 - 38.80%
	tCollectionMahjongr_RewardItem[3321959][1][4] = {}
	tCollectionMahjongr_RewardItem[3321959][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321959][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321959][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321959][1][4]["RewardItem"][1]["Id"] = 3321960 -- 【库】暗忍危机[属性:8], 【表格】暗忍危机
	tCollectionMahjongr_RewardItem[3321959][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机*1
	tCollectionMahjongr_RewardItem[3321959][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321959][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山 - 0.20%
	tCollectionMahjongr_RewardItem[3321959][1][5] = {}
	tCollectionMahjongr_RewardItem[3321959][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321959][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321959][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321959][1][5]["RewardItem"][1]["Id"] = 3321962 -- 【库】铁扇江山[属性:8], 【表格】铁扇江山
	tCollectionMahjongr_RewardItem[3321959][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山*1
	tCollectionMahjongr_RewardItem[3321959][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321959][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321959][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321960] = {}
	-- ===暗忍危机
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321960][1]
	tCollectionMahjongr_RewardItem[3321960][1] = {}
	tCollectionMahjongr_RewardItem[3321960][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321960][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321960][1][1] = {}
	tCollectionMahjongr_RewardItem[3321960][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321960][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321960][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321960][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服 - 10.00%
	tCollectionMahjongr_RewardItem[3321960][1][2] = {}
	tCollectionMahjongr_RewardItem[3321960][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321960][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321960][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321960][1][2]["RewardItem"][1]["Id"] = 3321959 -- 【库】一世征服[属性:8], 【表格】一世征服
	tCollectionMahjongr_RewardItem[3321960][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服*1
	tCollectionMahjongr_RewardItem[3321960][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321960][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机 - 11.00%
	tCollectionMahjongr_RewardItem[3321960][1][3] = {}
	tCollectionMahjongr_RewardItem[3321960][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321960][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321960][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321960][1][3]["RewardItem"][1]["Id"] = 3321960 -- 【库】暗忍危机[属性:8], 【表格】暗忍危机
	tCollectionMahjongr_RewardItem[3321960][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机*1
	tCollectionMahjongr_RewardItem[3321960][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321960][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭 - 38.80%
	tCollectionMahjongr_RewardItem[3321960][1][4] = {}
	tCollectionMahjongr_RewardItem[3321960][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321960][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321960][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321960][1][4]["RewardItem"][1]["Id"] = 3321961 -- 【库】海盗来袭[属性:8], 【表格】海盗来袭
	tCollectionMahjongr_RewardItem[3321960][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭*1
	tCollectionMahjongr_RewardItem[3321960][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321960][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹 - 0.20%
	tCollectionMahjongr_RewardItem[3321960][1][5] = {}
	tCollectionMahjongr_RewardItem[3321960][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321960][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321960][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321960][1][5]["RewardItem"][1]["Id"] = 3321963 -- 【库】斗战苍穹[属性:8], 【表格】斗战苍穹
	tCollectionMahjongr_RewardItem[3321960][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹*1
	tCollectionMahjongr_RewardItem[3321960][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321960][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321960][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321961] = {}
	-- ===海盗来袭
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321961][1]
	tCollectionMahjongr_RewardItem[3321961][1] = {}
	tCollectionMahjongr_RewardItem[3321961][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321961][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321961][1][1] = {}
	tCollectionMahjongr_RewardItem[3321961][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321961][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321961][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321961][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机 - 10.00%
	tCollectionMahjongr_RewardItem[3321961][1][2] = {}
	tCollectionMahjongr_RewardItem[3321961][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321961][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321961][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321961][1][2]["RewardItem"][1]["Id"] = 3321960 -- 【库】暗忍危机[属性:8], 【表格】暗忍危机
	tCollectionMahjongr_RewardItem[3321961][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机*1
	tCollectionMahjongr_RewardItem[3321961][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321961][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭 - 11.00%
	tCollectionMahjongr_RewardItem[3321961][1][3] = {}
	tCollectionMahjongr_RewardItem[3321961][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321961][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321961][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321961][1][3]["RewardItem"][1]["Id"] = 3321961 -- 【库】海盗来袭[属性:8], 【表格】海盗来袭
	tCollectionMahjongr_RewardItem[3321961][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭*1
	tCollectionMahjongr_RewardItem[3321961][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321961][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山 - 38.80%
	tCollectionMahjongr_RewardItem[3321961][1][4] = {}
	tCollectionMahjongr_RewardItem[3321961][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321961][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321961][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321961][1][4]["RewardItem"][1]["Id"] = 3321962 -- 【库】铁扇江山[属性:8], 【表格】铁扇江山
	tCollectionMahjongr_RewardItem[3321961][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山*1
	tCollectionMahjongr_RewardItem[3321961][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321961][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云天下 - 0.20%
	tCollectionMahjongr_RewardItem[3321961][1][5] = {}
	tCollectionMahjongr_RewardItem[3321961][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321961][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321961][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321961][1][5]["RewardItem"][1]["Id"] = 3321964 -- 【库】风云天下[属性:8], 【表格】风云天下
	tCollectionMahjongr_RewardItem[3321961][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 风云天下*1
	tCollectionMahjongr_RewardItem[3321961][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321961][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321961][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321962] = {}
	-- ===铁扇江山
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321962][1]
	tCollectionMahjongr_RewardItem[3321962][1] = {}
	tCollectionMahjongr_RewardItem[3321962][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321962][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321962][1][1] = {}
	tCollectionMahjongr_RewardItem[3321962][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321962][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321962][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321962][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭 - 10.00%
	tCollectionMahjongr_RewardItem[3321962][1][2] = {}
	tCollectionMahjongr_RewardItem[3321962][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321962][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321962][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321962][1][2]["RewardItem"][1]["Id"] = 3321961 -- 【库】海盗来袭[属性:8], 【表格】海盗来袭
	tCollectionMahjongr_RewardItem[3321962][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭*1
	tCollectionMahjongr_RewardItem[3321962][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321962][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山 - 11.00%
	tCollectionMahjongr_RewardItem[3321962][1][3] = {}
	tCollectionMahjongr_RewardItem[3321962][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321962][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321962][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321962][1][3]["RewardItem"][1]["Id"] = 3321962 -- 【库】铁扇江山[属性:8], 【表格】铁扇江山
	tCollectionMahjongr_RewardItem[3321962][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山*1
	tCollectionMahjongr_RewardItem[3321962][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321962][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹 - 38.80%
	tCollectionMahjongr_RewardItem[3321962][1][4] = {}
	tCollectionMahjongr_RewardItem[3321962][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321962][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321962][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321962][1][4]["RewardItem"][1]["Id"] = 3321963 -- 【库】斗战苍穹[属性:8], 【表格】斗战苍穹
	tCollectionMahjongr_RewardItem[3321962][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹*1
	tCollectionMahjongr_RewardItem[3321962][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321962][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 超凡入神 - 0.20%
	tCollectionMahjongr_RewardItem[3321962][1][5] = {}
	tCollectionMahjongr_RewardItem[3321962][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321962][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321962][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321962][1][5]["RewardItem"][1]["Id"] = 3321965 -- 【库】超凡入神[属性:9], 【表格】超凡入神
	tCollectionMahjongr_RewardItem[3321962][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 超凡入神*1
	tCollectionMahjongr_RewardItem[3321962][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321962][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321962][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321963] = {}
	-- ===斗战苍穹
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321963][1]
	tCollectionMahjongr_RewardItem[3321963][1] = {}
	tCollectionMahjongr_RewardItem[3321963][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321963][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321963][1][1] = {}
	tCollectionMahjongr_RewardItem[3321963][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321963][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321963][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321963][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山 - 10.00%
	tCollectionMahjongr_RewardItem[3321963][1][2] = {}
	tCollectionMahjongr_RewardItem[3321963][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321963][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321963][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321963][1][2]["RewardItem"][1]["Id"] = 3321962 -- 【库】铁扇江山[属性:8], 【表格】铁扇江山
	tCollectionMahjongr_RewardItem[3321963][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山*1
	tCollectionMahjongr_RewardItem[3321963][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321963][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹 - 11.00%
	tCollectionMahjongr_RewardItem[3321963][1][3] = {}
	tCollectionMahjongr_RewardItem[3321963][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321963][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321963][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321963][1][3]["RewardItem"][1]["Id"] = 3321963 -- 【库】斗战苍穹[属性:8], 【表格】斗战苍穹
	tCollectionMahjongr_RewardItem[3321963][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹*1
	tCollectionMahjongr_RewardItem[3321963][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321963][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云天下 - 38.80%
	tCollectionMahjongr_RewardItem[3321963][1][4] = {}
	tCollectionMahjongr_RewardItem[3321963][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321963][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321963][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321963][1][4]["RewardItem"][1]["Id"] = 3321964 -- 【库】风云天下[属性:8], 【表格】风云天下
	tCollectionMahjongr_RewardItem[3321963][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 风云天下*1
	tCollectionMahjongr_RewardItem[3321963][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321963][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵横四海 - 0.20%
	tCollectionMahjongr_RewardItem[3321963][1][5] = {}
	tCollectionMahjongr_RewardItem[3321963][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321963][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321963][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321963][1][5]["RewardItem"][1]["Id"] = 3321966 -- 【库】纵横四海[属性:8], 【表格】纵横四海
	tCollectionMahjongr_RewardItem[3321963][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 纵横四海*1
	tCollectionMahjongr_RewardItem[3321963][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321963][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321963][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321964] = {}
	-- ===风云天下
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321964][1]
	tCollectionMahjongr_RewardItem[3321964][1] = {}
	tCollectionMahjongr_RewardItem[3321964][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321964][1]["LogId"] = 12001465
	-- 无 - 52.00%
	tCollectionMahjongr_RewardItem[3321964][1][1] = {}
	tCollectionMahjongr_RewardItem[3321964][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321964][1][1]["ItemChance"] = 5200
	tCollectionMahjongr_RewardItem[3321964][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321964][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹 - 0.00%
	tCollectionMahjongr_RewardItem[3321964][1][2] = {}
	tCollectionMahjongr_RewardItem[3321964][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321964][1][2]["ItemChance"] = 0
	tCollectionMahjongr_RewardItem[3321964][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321964][1][2]["RewardItem"][1]["Id"] = 3321963 -- 【库】斗战苍穹[属性:8], 【表格】斗战苍穹
	tCollectionMahjongr_RewardItem[3321964][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹*1
	tCollectionMahjongr_RewardItem[3321964][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321964][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云天下 - 19.00%
	tCollectionMahjongr_RewardItem[3321964][1][3] = {}
	tCollectionMahjongr_RewardItem[3321964][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321964][1][3]["ItemChance"] = 1900
	tCollectionMahjongr_RewardItem[3321964][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321964][1][3]["RewardItem"][1]["Id"] = 3321964 -- 【库】风云天下[属性:8], 【表格】风云天下
	tCollectionMahjongr_RewardItem[3321964][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 风云天下*1
	tCollectionMahjongr_RewardItem[3321964][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321964][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 超凡入神 - 19.00%
	tCollectionMahjongr_RewardItem[3321964][1][4] = {}
	tCollectionMahjongr_RewardItem[3321964][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321964][1][4]["ItemChance"] = 1900
	tCollectionMahjongr_RewardItem[3321964][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321964][1][4]["RewardItem"][1]["Id"] = 3321965 -- 【库】超凡入神[属性:9], 【表格】超凡入神
	tCollectionMahjongr_RewardItem[3321964][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 超凡入神*1
	tCollectionMahjongr_RewardItem[3321964][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321964][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵横四海 - 10.00%
	tCollectionMahjongr_RewardItem[3321964][1][5] = {}
	tCollectionMahjongr_RewardItem[3321964][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321964][1][5]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321964][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321964][1][5]["RewardItem"][1]["Id"] = 3321966 -- 【库】纵横四海[属性:8], 【表格】纵横四海
	tCollectionMahjongr_RewardItem[3321964][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 纵横四海*1
	tCollectionMahjongr_RewardItem[3321964][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321964][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321964][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321967] = {}
	-- ===十年之约（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321967][1]
	tCollectionMahjongr_RewardItem[3321967][1] = {}
	tCollectionMahjongr_RewardItem[3321967][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321967][1]["LogId"] = 12001465
	-- 无 - 50.00%
	tCollectionMahjongr_RewardItem[3321967][1][1] = {}
	tCollectionMahjongr_RewardItem[3321967][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321967][1][1]["ItemChance"] = 5000
	tCollectionMahjongr_RewardItem[3321967][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321967][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321967][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 十年之约（赠） - 12.00%
	tCollectionMahjongr_RewardItem[3321967][1][2] = {}
	tCollectionMahjongr_RewardItem[3321967][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321967][1][2]["ItemChance"] = 1200
	tCollectionMahjongr_RewardItem[3321967][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321967][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321967][1][2]["RewardItem"][1]["Id"] = 3321967 -- 【库】十年之约（赠）[属性:9], 【表格】十年之约（赠）
	tCollectionMahjongr_RewardItem[3321967][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 十年之约（赠）*1
	tCollectionMahjongr_RewardItem[3321967][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321967][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321967][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋（赠） - 37.50%
	tCollectionMahjongr_RewardItem[3321967][1][3] = {}
	tCollectionMahjongr_RewardItem[3321967][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321967][1][3]["ItemChance"] = 3750
	tCollectionMahjongr_RewardItem[3321967][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321967][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321967][1][3]["RewardItem"][1]["Id"] = 3321968 -- 【库】从心出发（赠）[属性:9], 【表格】双宝夺谋（赠）
	tCollectionMahjongr_RewardItem[3321967][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 从心出发（赠）*1
	tCollectionMahjongr_RewardItem[3321967][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321967][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321967][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼（赠） - 0.50%
	tCollectionMahjongr_RewardItem[3321967][1][4] = {}
	tCollectionMahjongr_RewardItem[3321967][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321967][1][4]["ItemChance"] = 50
	tCollectionMahjongr_RewardItem[3321967][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321967][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321967][1][4]["RewardItem"][1]["Id"] = 3321970 -- 【库】千锤百炼（赠）[属性:9], 【表格】千锤百炼（赠）
	tCollectionMahjongr_RewardItem[3321967][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼（赠）*1
	tCollectionMahjongr_RewardItem[3321967][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321967][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321967][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321968] = {}
	-- ===从心出发（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321968][1]
	tCollectionMahjongr_RewardItem[3321968][1] = {}
	tCollectionMahjongr_RewardItem[3321968][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321968][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321968][1][1] = {}
	tCollectionMahjongr_RewardItem[3321968][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321968][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321968][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321968][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 十年之约（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321968][1][2] = {}
	tCollectionMahjongr_RewardItem[3321968][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321968][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321968][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321968][1][2]["RewardItem"][1]["Id"] = 3321967 -- 【库】十年之约（赠）[属性:9], 【表格】十年之约（赠）
	tCollectionMahjongr_RewardItem[3321968][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 十年之约（赠）*1
	tCollectionMahjongr_RewardItem[3321968][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321968][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 从心出发（赠） - 13.00%
	tCollectionMahjongr_RewardItem[3321968][1][3] = {}
	tCollectionMahjongr_RewardItem[3321968][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321968][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321968][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321968][1][3]["RewardItem"][1]["Id"] = 3321968 -- 【库】从心出发（赠）[属性:9], 【表格】从心出发（赠）
	tCollectionMahjongr_RewardItem[3321968][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 从心出发（赠）*1
	tCollectionMahjongr_RewardItem[3321968][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321968][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋（赠） - 36.80%
	tCollectionMahjongr_RewardItem[3321968][1][4] = {}
	tCollectionMahjongr_RewardItem[3321968][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321968][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321968][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321968][1][4]["RewardItem"][1]["Id"] = 3321969 -- 【库】双宝夺谋（赠）[属性:9], 【表格】双宝夺谋（赠）
	tCollectionMahjongr_RewardItem[3321968][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 双宝夺谋（赠）*1
	tCollectionMahjongr_RewardItem[3321968][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321968][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321968][1][5] = {}
	tCollectionMahjongr_RewardItem[3321968][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321968][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321968][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321968][1][5]["RewardItem"][1]["Id"] = 3321971 -- 【库】风云再起（赠）[属性:9], 【表格】风云再起（赠）
	tCollectionMahjongr_RewardItem[3321968][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起（赠）*1
	tCollectionMahjongr_RewardItem[3321968][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321968][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321968][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321969] = {}
	-- ===双宝夺谋（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321969][1]
	tCollectionMahjongr_RewardItem[3321969][1] = {}
	tCollectionMahjongr_RewardItem[3321969][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321969][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321969][1][1] = {}
	tCollectionMahjongr_RewardItem[3321969][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321969][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321969][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321969][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 从心出发（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321969][1][2] = {}
	tCollectionMahjongr_RewardItem[3321969][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321969][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321969][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321969][1][2]["RewardItem"][1]["Id"] = 3321968 -- 【库】从心出发（赠）[属性:9], 【表格】从心出发（赠）
	tCollectionMahjongr_RewardItem[3321969][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 从心出发（赠）*1
	tCollectionMahjongr_RewardItem[3321969][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321969][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋（赠） - 13.00%
	tCollectionMahjongr_RewardItem[3321969][1][3] = {}
	tCollectionMahjongr_RewardItem[3321969][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321969][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321969][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321969][1][3]["RewardItem"][1]["Id"] = 3321969 -- 【库】双宝夺谋（赠）[属性:9], 【表格】双宝夺谋（赠）
	tCollectionMahjongr_RewardItem[3321969][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 双宝夺谋（赠）*1
	tCollectionMahjongr_RewardItem[3321969][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321969][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼（赠） - 36.80%
	tCollectionMahjongr_RewardItem[3321969][1][4] = {}
	tCollectionMahjongr_RewardItem[3321969][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321969][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321969][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321969][1][4]["RewardItem"][1]["Id"] = 3321970 -- 【库】千锤百炼（赠）[属性:9], 【表格】千锤百炼（赠）
	tCollectionMahjongr_RewardItem[3321969][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼（赠）*1
	tCollectionMahjongr_RewardItem[3321969][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321969][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321969][1][5] = {}
	tCollectionMahjongr_RewardItem[3321969][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321969][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321969][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321969][1][5]["RewardItem"][1]["Id"] = 3321972 -- 【库】神兵传奇（赠）[属性:9], 【表格】神兵传奇（赠）
	tCollectionMahjongr_RewardItem[3321969][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇（赠）*1
	tCollectionMahjongr_RewardItem[3321969][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321969][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321969][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321970] = {}
	-- ===千锤百炼（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321970][1]
	tCollectionMahjongr_RewardItem[3321970][1] = {}
	tCollectionMahjongr_RewardItem[3321970][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321970][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321970][1][1] = {}
	tCollectionMahjongr_RewardItem[3321970][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321970][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321970][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321970][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 双宝夺谋（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321970][1][2] = {}
	tCollectionMahjongr_RewardItem[3321970][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321970][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321970][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321970][1][2]["RewardItem"][1]["Id"] = 3321969 -- 【库】双宝夺谋（赠）[属性:9], 【表格】双宝夺谋（赠）
	tCollectionMahjongr_RewardItem[3321970][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 双宝夺谋（赠）*1
	tCollectionMahjongr_RewardItem[3321970][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321970][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼（赠） - 13.00%
	tCollectionMahjongr_RewardItem[3321970][1][3] = {}
	tCollectionMahjongr_RewardItem[3321970][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321970][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321970][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321970][1][3]["RewardItem"][1]["Id"] = 3321970 -- 【库】千锤百炼（赠）[属性:9], 【表格】千锤百炼（赠）
	tCollectionMahjongr_RewardItem[3321970][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼（赠）*1
	tCollectionMahjongr_RewardItem[3321970][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321970][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起（赠） - 36.80%
	tCollectionMahjongr_RewardItem[3321970][1][4] = {}
	tCollectionMahjongr_RewardItem[3321970][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321970][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321970][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321970][1][4]["RewardItem"][1]["Id"] = 3321971 -- 【库】风云再起（赠）[属性:9], 【表格】风云再起（赠）
	tCollectionMahjongr_RewardItem[3321970][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起（赠）*1
	tCollectionMahjongr_RewardItem[3321970][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321970][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321970][1][5] = {}
	tCollectionMahjongr_RewardItem[3321970][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321970][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321970][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321970][1][5]["RewardItem"][1]["Id"] = 3321973 -- 【库】纵马江湖（赠）[属性:9], 【表格】纵马江湖（赠）
	tCollectionMahjongr_RewardItem[3321970][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖（赠）*1
	tCollectionMahjongr_RewardItem[3321970][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321970][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321970][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321971] = {}
	-- ===风云再起（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321971][1]
	tCollectionMahjongr_RewardItem[3321971][1] = {}
	tCollectionMahjongr_RewardItem[3321971][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321971][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321971][1][1] = {}
	tCollectionMahjongr_RewardItem[3321971][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321971][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321971][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321971][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 千锤百炼（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321971][1][2] = {}
	tCollectionMahjongr_RewardItem[3321971][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321971][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321971][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321971][1][2]["RewardItem"][1]["Id"] = 3321970 -- 【库】千锤百炼（赠）[属性:9], 【表格】千锤百炼（赠）
	tCollectionMahjongr_RewardItem[3321971][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 千锤百炼（赠）*1
	tCollectionMahjongr_RewardItem[3321971][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321971][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起（赠） - 13.00%
	tCollectionMahjongr_RewardItem[3321971][1][3] = {}
	tCollectionMahjongr_RewardItem[3321971][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321971][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321971][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321971][1][3]["RewardItem"][1]["Id"] = 3321971 -- 【库】风云再起（赠）[属性:9], 【表格】风云再起（赠）
	tCollectionMahjongr_RewardItem[3321971][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起（赠）*1
	tCollectionMahjongr_RewardItem[3321971][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321971][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇（赠） - 36.80%
	tCollectionMahjongr_RewardItem[3321971][1][4] = {}
	tCollectionMahjongr_RewardItem[3321971][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321971][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321971][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321971][1][4]["RewardItem"][1]["Id"] = 3321972 -- 【库】神兵传奇（赠）[属性:9], 【表格】神兵传奇（赠）
	tCollectionMahjongr_RewardItem[3321971][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇（赠）*1
	tCollectionMahjongr_RewardItem[3321971][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321971][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321971][1][5] = {}
	tCollectionMahjongr_RewardItem[3321971][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321971][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321971][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321971][1][5]["RewardItem"][1]["Id"] = 3321974 -- 【库】器定乾坤（赠）[属性:9], 【表格】器定乾坤（赠）
	tCollectionMahjongr_RewardItem[3321971][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤（赠）*1
	tCollectionMahjongr_RewardItem[3321971][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321971][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321971][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321972] = {}
	-- ===神兵传奇（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321972][1]
	tCollectionMahjongr_RewardItem[3321972][1] = {}
	tCollectionMahjongr_RewardItem[3321972][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321972][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321972][1][1] = {}
	tCollectionMahjongr_RewardItem[3321972][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321972][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321972][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321972][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云再起（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321972][1][2] = {}
	tCollectionMahjongr_RewardItem[3321972][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321972][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321972][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321972][1][2]["RewardItem"][1]["Id"] = 3321971 -- 【库】风云再起（赠）[属性:9], 【表格】风云再起（赠）
	tCollectionMahjongr_RewardItem[3321972][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起（赠）*1
	tCollectionMahjongr_RewardItem[3321972][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321972][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇（赠） - 13.00%
	tCollectionMahjongr_RewardItem[3321972][1][3] = {}
	tCollectionMahjongr_RewardItem[3321972][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321972][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321972][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321972][1][3]["RewardItem"][1]["Id"] = 3321972 -- 【库】神兵传奇（赠）[属性:9], 【表格】神兵传奇（赠）
	tCollectionMahjongr_RewardItem[3321972][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇（赠）*1
	tCollectionMahjongr_RewardItem[3321972][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321972][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖（赠） - 36.80%
	tCollectionMahjongr_RewardItem[3321972][1][4] = {}
	tCollectionMahjongr_RewardItem[3321972][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321972][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321972][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321972][1][4]["RewardItem"][1]["Id"] = 3321973 -- 【库】纵马江湖（赠）[属性:9], 【表格】纵马江湖（赠）
	tCollectionMahjongr_RewardItem[3321972][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖（赠）*1
	tCollectionMahjongr_RewardItem[3321972][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321972][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321972][1][5] = {}
	tCollectionMahjongr_RewardItem[3321972][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321972][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321972][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321972][1][5]["RewardItem"][1]["Id"] = 3321975 -- 【库】一世征服（赠）[属性:9], 【表格】一世征服（赠）
	tCollectionMahjongr_RewardItem[3321972][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服（赠）*1
	tCollectionMahjongr_RewardItem[3321972][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321972][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321972][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321973] = {}
	-- ===纵马江湖（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321973][1]
	tCollectionMahjongr_RewardItem[3321973][1] = {}
	tCollectionMahjongr_RewardItem[3321973][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321973][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321973][1][1] = {}
	tCollectionMahjongr_RewardItem[3321973][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321973][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321973][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321973][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321973][1][2] = {}
	tCollectionMahjongr_RewardItem[3321973][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321973][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321973][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321973][1][2]["RewardItem"][1]["Id"] = 3321972 -- 【库】神兵传奇（赠）[属性:9], 【表格】神兵传奇（赠）
	tCollectionMahjongr_RewardItem[3321973][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇（赠）*1
	tCollectionMahjongr_RewardItem[3321973][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321973][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖（赠） - 13.00%
	tCollectionMahjongr_RewardItem[3321973][1][3] = {}
	tCollectionMahjongr_RewardItem[3321973][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321973][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321973][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321973][1][3]["RewardItem"][1]["Id"] = 3321973 -- 【库】纵马江湖（赠）[属性:9], 【表格】纵马江湖（赠）
	tCollectionMahjongr_RewardItem[3321973][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖（赠）*1
	tCollectionMahjongr_RewardItem[3321973][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321973][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤（赠） - 36.80%
	tCollectionMahjongr_RewardItem[3321973][1][4] = {}
	tCollectionMahjongr_RewardItem[3321973][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321973][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321973][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321973][1][4]["RewardItem"][1]["Id"] = 3321974 -- 【库】器定乾坤（赠）[属性:9], 【表格】器定乾坤（赠）
	tCollectionMahjongr_RewardItem[3321973][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤（赠）*1
	tCollectionMahjongr_RewardItem[3321973][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321973][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321973][1][5] = {}
	tCollectionMahjongr_RewardItem[3321973][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321973][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321973][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321973][1][5]["RewardItem"][1]["Id"] = 3321976 -- 【库】暗忍危机（赠）[属性:9], 【表格】暗忍危机（赠）
	tCollectionMahjongr_RewardItem[3321973][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机（赠）*1
	tCollectionMahjongr_RewardItem[3321973][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321973][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321973][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321974] = {}
	-- ===器定乾坤（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321974][1]
	tCollectionMahjongr_RewardItem[3321974][1] = {}
	tCollectionMahjongr_RewardItem[3321974][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321974][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321974][1][1] = {}
	tCollectionMahjongr_RewardItem[3321974][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321974][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321974][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321974][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321974][1][2] = {}
	tCollectionMahjongr_RewardItem[3321974][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321974][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321974][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321974][1][2]["RewardItem"][1]["Id"] = 3321973 -- 【库】纵马江湖（赠）[属性:9], 【表格】纵马江湖（赠）
	tCollectionMahjongr_RewardItem[3321974][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖（赠）*1
	tCollectionMahjongr_RewardItem[3321974][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321974][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤（赠） - 13.00%
	tCollectionMahjongr_RewardItem[3321974][1][3] = {}
	tCollectionMahjongr_RewardItem[3321974][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321974][1][3]["ItemChance"] = 1300
	tCollectionMahjongr_RewardItem[3321974][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321974][1][3]["RewardItem"][1]["Id"] = 3321974 -- 【库】器定乾坤（赠）[属性:9], 【表格】器定乾坤（赠）
	tCollectionMahjongr_RewardItem[3321974][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤（赠）*1
	tCollectionMahjongr_RewardItem[3321974][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321974][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服（赠） - 36.80%
	tCollectionMahjongr_RewardItem[3321974][1][4] = {}
	tCollectionMahjongr_RewardItem[3321974][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321974][1][4]["ItemChance"] = 3680
	tCollectionMahjongr_RewardItem[3321974][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321974][1][4]["RewardItem"][1]["Id"] = 3321975 -- 【库】一世征服（赠）[属性:9], 【表格】一世征服（赠）
	tCollectionMahjongr_RewardItem[3321974][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服（赠）*1
	tCollectionMahjongr_RewardItem[3321974][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321974][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321974][1][5] = {}
	tCollectionMahjongr_RewardItem[3321974][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321974][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321974][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321974][1][5]["RewardItem"][1]["Id"] = 3321977 -- 【库】海盗来袭（赠）[属性:9], 【表格】海盗来袭（赠）
	tCollectionMahjongr_RewardItem[3321974][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭（赠）*1
	tCollectionMahjongr_RewardItem[3321974][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321974][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321974][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321975] = {}
	-- ===一世征服（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321975][1]
	-- ===删除:  3321975
	tCollectionMahjongr_RewardItem[3321975][1] = {}
	tCollectionMahjongr_RewardItem[3321975][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321975][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321975][1][1] = {}
	tCollectionMahjongr_RewardItem[3321975][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321975][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321975][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321975][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321975][1][2] = {}
	tCollectionMahjongr_RewardItem[3321975][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321975][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321975][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321975][1][2]["RewardItem"][1]["Id"] = 3321974 -- 【库】器定乾坤（赠）[属性:9], 【表格】器定乾坤（赠）
	tCollectionMahjongr_RewardItem[3321975][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤（赠）*1
	tCollectionMahjongr_RewardItem[3321975][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321975][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服（赠） - 11.00%
	tCollectionMahjongr_RewardItem[3321975][1][3] = {}
	tCollectionMahjongr_RewardItem[3321975][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321975][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321975][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321975][1][3]["RewardItem"][1]["Id"] = 3321975 -- 【库】一世征服（赠）[属性:9], 【表格】一世征服（赠）
	tCollectionMahjongr_RewardItem[3321975][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服（赠）*1
	tCollectionMahjongr_RewardItem[3321975][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321975][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机（赠） - 38.80%
	tCollectionMahjongr_RewardItem[3321975][1][4] = {}
	tCollectionMahjongr_RewardItem[3321975][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321975][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321975][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321975][1][4]["RewardItem"][1]["Id"] = 3321976 -- 【库】暗忍危机（赠）[属性:9], 【表格】暗忍危机（赠）
	tCollectionMahjongr_RewardItem[3321975][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机（赠）*1
	tCollectionMahjongr_RewardItem[3321975][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321975][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321975][1][5] = {}
	tCollectionMahjongr_RewardItem[3321975][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321975][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321975][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321975][1][5]["RewardItem"][1]["Id"] = 3321978 -- 【库】铁扇江山（赠）[属性:9], 【表格】铁扇江山（赠）
	tCollectionMahjongr_RewardItem[3321975][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山（赠）*1
	tCollectionMahjongr_RewardItem[3321975][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321975][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321975][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321976] = {}
	-- ===暗忍危机（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321976][1]
	tCollectionMahjongr_RewardItem[3321976][1] = {}
	tCollectionMahjongr_RewardItem[3321976][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321976][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321976][1][1] = {}
	tCollectionMahjongr_RewardItem[3321976][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321976][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321976][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321976][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321976][1][2] = {}
	tCollectionMahjongr_RewardItem[3321976][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321976][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321976][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321976][1][2]["RewardItem"][1]["Id"] = 3321975 -- 【库】一世征服（赠）[属性:9], 【表格】一世征服（赠）
	tCollectionMahjongr_RewardItem[3321976][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服（赠）*1
	tCollectionMahjongr_RewardItem[3321976][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321976][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机（赠） - 11.00%
	tCollectionMahjongr_RewardItem[3321976][1][3] = {}
	tCollectionMahjongr_RewardItem[3321976][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321976][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321976][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321976][1][3]["RewardItem"][1]["Id"] = 3321976 -- 【库】暗忍危机（赠）[属性:9], 【表格】暗忍危机（赠）
	tCollectionMahjongr_RewardItem[3321976][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机（赠）*1
	tCollectionMahjongr_RewardItem[3321976][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321976][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭（赠） - 38.80%
	tCollectionMahjongr_RewardItem[3321976][1][4] = {}
	tCollectionMahjongr_RewardItem[3321976][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321976][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321976][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321976][1][4]["RewardItem"][1]["Id"] = 3321977 -- 【库】海盗来袭（赠）[属性:9], 【表格】海盗来袭（赠）
	tCollectionMahjongr_RewardItem[3321976][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭（赠）*1
	tCollectionMahjongr_RewardItem[3321976][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321976][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321976][1][5] = {}
	tCollectionMahjongr_RewardItem[3321976][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321976][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321976][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321976][1][5]["RewardItem"][1]["Id"] = 3321979 -- 【库】斗战苍穹（赠）[属性:9], 【表格】斗战苍穹（赠）
	tCollectionMahjongr_RewardItem[3321976][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹（赠）*1
	tCollectionMahjongr_RewardItem[3321976][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321976][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321976][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321977] = {}
	-- ===海盗来袭（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321977][1]
	tCollectionMahjongr_RewardItem[3321977][1] = {}
	tCollectionMahjongr_RewardItem[3321977][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321977][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321977][1][1] = {}
	tCollectionMahjongr_RewardItem[3321977][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321977][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321977][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321977][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321977][1][2] = {}
	tCollectionMahjongr_RewardItem[3321977][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321977][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321977][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321977][1][2]["RewardItem"][1]["Id"] = 3321976 -- 【库】暗忍危机（赠）[属性:9], 【表格】暗忍危机（赠）
	tCollectionMahjongr_RewardItem[3321977][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机（赠）*1
	tCollectionMahjongr_RewardItem[3321977][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321977][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭（赠） - 11.00%
	tCollectionMahjongr_RewardItem[3321977][1][3] = {}
	tCollectionMahjongr_RewardItem[3321977][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321977][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321977][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321977][1][3]["RewardItem"][1]["Id"] = 3321977 -- 【库】海盗来袭（赠）[属性:9], 【表格】海盗来袭（赠）
	tCollectionMahjongr_RewardItem[3321977][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭（赠）*1
	tCollectionMahjongr_RewardItem[3321977][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321977][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山（赠） - 38.80%
	tCollectionMahjongr_RewardItem[3321977][1][4] = {}
	tCollectionMahjongr_RewardItem[3321977][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321977][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321977][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321977][1][4]["RewardItem"][1]["Id"] = 3321978 -- 【库】铁扇江山（赠）[属性:9], 【表格】铁扇江山（赠）
	tCollectionMahjongr_RewardItem[3321977][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山（赠）*1
	tCollectionMahjongr_RewardItem[3321977][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321977][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云天下（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321977][1][5] = {}
	tCollectionMahjongr_RewardItem[3321977][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321977][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321977][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321977][1][5]["RewardItem"][1]["Id"] = 3321980 -- 【库】风云天下（赠）[属性:9], 【表格】风云天下（赠）
	tCollectionMahjongr_RewardItem[3321977][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 风云天下（赠）*1
	tCollectionMahjongr_RewardItem[3321977][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321977][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321977][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321978] = {}
	-- ===铁扇江山（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321978][1]
	tCollectionMahjongr_RewardItem[3321978][1] = {}
	tCollectionMahjongr_RewardItem[3321978][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321978][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321978][1][1] = {}
	tCollectionMahjongr_RewardItem[3321978][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321978][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321978][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321978][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321978][1][2] = {}
	tCollectionMahjongr_RewardItem[3321978][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321978][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321978][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321978][1][2]["RewardItem"][1]["Id"] = 3321977 -- 【库】海盗来袭（赠）[属性:9], 【表格】海盗来袭（赠）
	tCollectionMahjongr_RewardItem[3321978][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭（赠）*1
	tCollectionMahjongr_RewardItem[3321978][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321978][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山（赠） - 11.00%
	tCollectionMahjongr_RewardItem[3321978][1][3] = {}
	tCollectionMahjongr_RewardItem[3321978][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321978][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321978][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321978][1][3]["RewardItem"][1]["Id"] = 3321978 -- 【库】铁扇江山（赠）[属性:9], 【表格】铁扇江山（赠）
	tCollectionMahjongr_RewardItem[3321978][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山（赠）*1
	tCollectionMahjongr_RewardItem[3321978][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321978][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹（赠） - 38.80%
	tCollectionMahjongr_RewardItem[3321978][1][4] = {}
	tCollectionMahjongr_RewardItem[3321978][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321978][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321978][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321978][1][4]["RewardItem"][1]["Id"] = 3321979 -- 【库】斗战苍穹（赠）[属性:9], 【表格】斗战苍穹（赠）
	tCollectionMahjongr_RewardItem[3321978][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹（赠）*1
	tCollectionMahjongr_RewardItem[3321978][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321978][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 超凡入神（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321978][1][5] = {}
	tCollectionMahjongr_RewardItem[3321978][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321978][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321978][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321978][1][5]["RewardItem"][1]["Id"] = 3321981 -- 【库】超凡入神（赠）[属性:9], 【表格】超凡入神（赠）
	tCollectionMahjongr_RewardItem[3321978][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 超凡入神（赠）*1
	tCollectionMahjongr_RewardItem[3321978][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321978][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321978][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321979] = {}
	-- ===斗战苍穹（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321979][1]
	tCollectionMahjongr_RewardItem[3321979][1] = {}
	tCollectionMahjongr_RewardItem[3321979][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321979][1]["LogId"] = 12001465
	-- 无 - 40.00%
	tCollectionMahjongr_RewardItem[3321979][1][1] = {}
	tCollectionMahjongr_RewardItem[3321979][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321979][1][1]["ItemChance"] = 4000
	tCollectionMahjongr_RewardItem[3321979][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321979][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321979][1][2] = {}
	tCollectionMahjongr_RewardItem[3321979][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321979][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321979][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321979][1][2]["RewardItem"][1]["Id"] = 3321978 -- 【库】铁扇江山（赠）[属性:9], 【表格】铁扇江山（赠）
	tCollectionMahjongr_RewardItem[3321979][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山（赠）*1
	tCollectionMahjongr_RewardItem[3321979][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321979][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹（赠） - 11.00%
	tCollectionMahjongr_RewardItem[3321979][1][3] = {}
	tCollectionMahjongr_RewardItem[3321979][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321979][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321979][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321979][1][3]["RewardItem"][1]["Id"] = 3321979 -- 【库】斗战苍穹（赠）[属性:9], 【表格】斗战苍穹（赠）
	tCollectionMahjongr_RewardItem[3321979][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹（赠）*1
	tCollectionMahjongr_RewardItem[3321979][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321979][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云天下（赠） - 38.80%
	tCollectionMahjongr_RewardItem[3321979][1][4] = {}
	tCollectionMahjongr_RewardItem[3321979][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321979][1][4]["ItemChance"] = 3880
	tCollectionMahjongr_RewardItem[3321979][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321979][1][4]["RewardItem"][1]["Id"] = 3321980 -- 【库】风云天下（赠）[属性:9], 【表格】风云天下（赠）
	tCollectionMahjongr_RewardItem[3321979][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 风云天下（赠）*1
	tCollectionMahjongr_RewardItem[3321979][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321979][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵横四海（赠） - 0.20%
	tCollectionMahjongr_RewardItem[3321979][1][5] = {}
	tCollectionMahjongr_RewardItem[3321979][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321979][1][5]["ItemChance"] = 20
	tCollectionMahjongr_RewardItem[3321979][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321979][1][5]["RewardItem"][1]["Id"] = 3321982 -- 【库】纵横四海（赠）[属性:9], 【表格】纵横四海（赠）
	tCollectionMahjongr_RewardItem[3321979][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 纵横四海（赠）*1
	tCollectionMahjongr_RewardItem[3321979][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321979][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321979][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321980] = {}
	-- ===风云天下（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[ 3321980][1]
	tCollectionMahjongr_RewardItem[3321980][1] = {}
	tCollectionMahjongr_RewardItem[3321980][1]["ItemChanceSum"] = 10000
	tCollectionMahjongr_RewardItem[3321980][1]["LogId"] = 12001465
	-- 无 - 52.00%
	tCollectionMahjongr_RewardItem[3321980][1][1] = {}
	tCollectionMahjongr_RewardItem[3321980][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321980][1][1]["ItemChance"] = 5200
	tCollectionMahjongr_RewardItem[3321980][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321980][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹（赠） - 0.00%
	tCollectionMahjongr_RewardItem[3321980][1][2] = {}
	tCollectionMahjongr_RewardItem[3321980][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321980][1][2]["ItemChance"] = 0
	tCollectionMahjongr_RewardItem[3321980][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321980][1][2]["RewardItem"][1]["Id"] = 3321979 -- 【库】斗战苍穹（赠）[属性:9], 【表格】斗战苍穹（赠）
	tCollectionMahjongr_RewardItem[3321980][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹（赠）*1
	tCollectionMahjongr_RewardItem[3321980][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321980][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云天下（赠） - 19.00%
	tCollectionMahjongr_RewardItem[3321980][1][3] = {}
	tCollectionMahjongr_RewardItem[3321980][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321980][1][3]["ItemChance"] = 1900
	tCollectionMahjongr_RewardItem[3321980][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321980][1][3]["RewardItem"][1]["Id"] = 3321980 -- 【库】风云天下（赠）[属性:9], 【表格】风云天下（赠）
	tCollectionMahjongr_RewardItem[3321980][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 风云天下（赠）*1
	tCollectionMahjongr_RewardItem[3321980][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321980][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 超凡入神（赠） - 19.00%
	tCollectionMahjongr_RewardItem[3321980][1][4] = {}
	tCollectionMahjongr_RewardItem[3321980][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321980][1][4]["ItemChance"] = 1900
	tCollectionMahjongr_RewardItem[3321980][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321980][1][4]["RewardItem"][1]["Id"] = 3321981 -- 【库】超凡入神（赠）[属性:9], 【表格】超凡入神（赠）
	tCollectionMahjongr_RewardItem[3321980][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 超凡入神（赠）*1
	tCollectionMahjongr_RewardItem[3321980][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321980][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵横四海（赠） - 10.00%
	tCollectionMahjongr_RewardItem[3321980][1][5] = {}
	tCollectionMahjongr_RewardItem[3321980][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321980][1][5]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321980][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321980][1][5]["RewardItem"][1]["Id"] = 3321982 -- 【库】纵横四海（赠）[属性:9], 【表格】纵横四海（赠）
	tCollectionMahjongr_RewardItem[3321980][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 纵横四海（赠）*1
	tCollectionMahjongr_RewardItem[3321980][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321980][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321980][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321985] = {}
	-- ===追忆之玉
	-- ===索引: tCollectionMahjongr_RewardItem[3321985][1]
	-- ===删除: 3321985
	tCollectionMahjongr_RewardItem[3321985][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_RewardItem[3321985][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321985][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1]["DeleteItem"][1]["Id"] = 3321985 -- 【库】追忆之玉[属性:9]
	tCollectionMahjongr_RewardItem[3321985][1]["LogId"] = 12001465
	-- 风云再起 - 54.00%
	tCollectionMahjongr_RewardItem[3321985][1][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321985][1][1]["ItemChance"] = 5400
	tCollectionMahjongr_RewardItem[3321985][1][1]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][1]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1][1]["RewardItem"][1]["Id"] = 3321955 -- 【库】风云再起[属性:8], 【表格】风云再起
	tCollectionMahjongr_RewardItem[3321985][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起*1
	tCollectionMahjongr_RewardItem[3321985][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321985][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇 - 31.00%
	tCollectionMahjongr_RewardItem[3321985][1][2] = {}
	tCollectionMahjongr_RewardItem[3321985][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321985][1][2]["ItemChance"] = 3100
	tCollectionMahjongr_RewardItem[3321985][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1][2]["RewardItem"][1]["Id"] = 3321956 -- 【库】神兵传奇[属性:8], 【表格】神兵传奇
	tCollectionMahjongr_RewardItem[3321985][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇*1
	tCollectionMahjongr_RewardItem[3321985][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321985][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖 - 11.00%
	tCollectionMahjongr_RewardItem[3321985][1][3] = {}
	tCollectionMahjongr_RewardItem[3321985][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321985][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321985][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1][3]["RewardItem"][1]["Id"] = 3321957 -- 【库】纵马江湖[属性:8], 【表格】纵马江湖
	tCollectionMahjongr_RewardItem[3321985][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖*1
	tCollectionMahjongr_RewardItem[3321985][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321985][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤 - 3.00%
	tCollectionMahjongr_RewardItem[3321985][1][4] = {}
	tCollectionMahjongr_RewardItem[3321985][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321985][1][4]["ItemChance"] = 300
	tCollectionMahjongr_RewardItem[3321985][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1][4]["RewardItem"][1]["Id"] = 3321958 -- 【库】器定乾坤[属性:8], 【表格】器定乾坤
	tCollectionMahjongr_RewardItem[3321985][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤*1
	tCollectionMahjongr_RewardItem[3321985][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321985][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服 - 1.00%
	tCollectionMahjongr_RewardItem[3321985][1][5] = {}
	tCollectionMahjongr_RewardItem[3321985][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321985][1][5]["ItemChance"] = 100
	tCollectionMahjongr_RewardItem[3321985][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321985][1][5]["RewardItem"][1]["Id"] = 3321959 -- 【库】一世征服[属性:8], 【表格】一世征服
	tCollectionMahjongr_RewardItem[3321985][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服*1
	tCollectionMahjongr_RewardItem[3321985][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321985][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321985][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321986] = {}
	-- ===追忆之玉（赠）
	-- ===索引: tCollectionMahjongr_RewardItem[3321986][1]
	-- ===删除: 3321986
	tCollectionMahjongr_RewardItem[3321986][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_RewardItem[3321986][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321986][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1]["DeleteItem"][1]["Id"] = 3321986 -- 【库】追忆之玉（赠）[属性:9]
	tCollectionMahjongr_RewardItem[3321986][1]["LogId"] = 12001465
	-- 风云再起（赠） - 54.00%
	tCollectionMahjongr_RewardItem[3321986][1][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321986][1][1]["ItemChance"] = 5400
	tCollectionMahjongr_RewardItem[3321986][1][1]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][1]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1][1]["RewardItem"][1]["Id"] = 3321971 -- 【库】风云再起（赠）[属性:9], 【表格】风云再起（赠）
	tCollectionMahjongr_RewardItem[3321986][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 风云再起（赠）*1
	tCollectionMahjongr_RewardItem[3321986][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321986][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵传奇（赠） - 31.00%
	tCollectionMahjongr_RewardItem[3321986][1][2] = {}
	tCollectionMahjongr_RewardItem[3321986][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321986][1][2]["ItemChance"] = 3100
	tCollectionMahjongr_RewardItem[3321986][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1][2]["RewardItem"][1]["Id"] = 3321972 -- 【库】神兵传奇（赠）[属性:9], 【表格】神兵传奇（赠）
	tCollectionMahjongr_RewardItem[3321986][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 神兵传奇（赠）*1
	tCollectionMahjongr_RewardItem[3321986][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321986][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖（赠） - 11.00%
	tCollectionMahjongr_RewardItem[3321986][1][3] = {}
	tCollectionMahjongr_RewardItem[3321986][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321986][1][3]["ItemChance"] = 1100
	tCollectionMahjongr_RewardItem[3321986][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1][3]["RewardItem"][1]["Id"] = 3321973 -- 【库】纵马江湖（赠）[属性:9], 【表格】纵马江湖（赠）
	tCollectionMahjongr_RewardItem[3321986][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖（赠）*1
	tCollectionMahjongr_RewardItem[3321986][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321986][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤（赠） - 3.00%
	tCollectionMahjongr_RewardItem[3321986][1][4] = {}
	tCollectionMahjongr_RewardItem[3321986][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321986][1][4]["ItemChance"] = 300
	tCollectionMahjongr_RewardItem[3321986][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1][4]["RewardItem"][1]["Id"] = 3321974 -- 【库】器定乾坤（赠）[属性:9], 【表格】器定乾坤（赠）
	tCollectionMahjongr_RewardItem[3321986][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤（赠）*1
	tCollectionMahjongr_RewardItem[3321986][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321986][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服（赠） - 1.00%
	tCollectionMahjongr_RewardItem[3321986][1][5] = {}
	tCollectionMahjongr_RewardItem[3321986][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321986][1][5]["ItemChance"] = 100
	tCollectionMahjongr_RewardItem[3321986][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321986][1][5]["RewardItem"][1]["Id"] = 3321975 -- 【库】一世征服（赠）[属性:9], 【表格】一世征服（赠）
	tCollectionMahjongr_RewardItem[3321986][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服（赠）*1
	tCollectionMahjongr_RewardItem[3321986][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321986][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321986][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321987] = {}
	-- ===征服有约礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321987][1]
	-- ===删除: 3321987,1
	tCollectionMahjongr_RewardItem[3321987][1] = {}
	tCollectionMahjongr_RewardItem[3321987][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_RewardItem[3321987][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321987][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321987][1]["DeleteItem"][1]["Id"] = 3321987 -- 【库】征服有约礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3321987][1]["LogId"] = 12001465
	-- -- 10W银两-- 【必给】
	-- tCollectionMahjongr_RewardItem[3321987][1][1] = {}
	-- tCollectionMahjongr_RewardItem[3321987][1][1]["RandomItemChanceType"] = 1
	-- tCollectionMahjongr_RewardItem[3321987][1][1]["RewardMoney"] = {}
	-- tCollectionMahjongr_RewardItem[3321987][1][1]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10W银两
	-- tCollectionMahjongr_RewardItem[3321987][1][1]["RewardEffect"] = {}
	-- tCollectionMahjongr_RewardItem[3321987][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tCollectionMahjongr_RewardItem[3321987][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵马江湖 - 10.00%
	tCollectionMahjongr_RewardItem[3321987][1][2] = {}
	tCollectionMahjongr_RewardItem[3321987][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321987][1][2]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321987][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321987][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321987][1][2]["RewardItem"][1]["Id"] = 3321957 -- 【库】纵马江湖[属性:8], 【表格】纵马江湖
	tCollectionMahjongr_RewardItem[3321987][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 纵马江湖*1
	tCollectionMahjongr_RewardItem[3321987][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321987][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321987][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 器定乾坤 - 60.00%
	tCollectionMahjongr_RewardItem[3321987][1][3] = {}
	tCollectionMahjongr_RewardItem[3321987][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321987][1][3]["ItemChance"] = 6000
	tCollectionMahjongr_RewardItem[3321987][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321987][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321987][1][3]["RewardItem"][1]["Id"] = 3321958 -- 【库】器定乾坤[属性:8], 【表格】器定乾坤
	tCollectionMahjongr_RewardItem[3321987][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 器定乾坤*1
	tCollectionMahjongr_RewardItem[3321987][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321987][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321987][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 一世征服 - 30.00%
	tCollectionMahjongr_RewardItem[3321987][1][4] = {}
	tCollectionMahjongr_RewardItem[3321987][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321987][1][4]["ItemChance"] = 3000
	tCollectionMahjongr_RewardItem[3321987][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321987][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321987][1][4]["RewardItem"][1]["Id"] = 3321959 -- 【库】一世征服[属性:8], 【表格】一世征服
	tCollectionMahjongr_RewardItem[3321987][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 一世征服*1
	tCollectionMahjongr_RewardItem[3321987][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321987][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321987][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321988] = {}
	-- ===职业淬炼礼
	-- ===索引: tCollectionMahjongr_RewardItem[3321988][1]
	-- ===删除: 3321988
	tCollectionMahjongr_RewardItem[3321988][1] = {}
	tCollectionMahjongr_RewardItem[3321988][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_RewardItem[3321988][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321988][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321988][1]["DeleteItem"][1]["Id"] = 3321988 -- 【库】职业淬炼礼[属性:9]
	tCollectionMahjongr_RewardItem[3321988][1]["LogId"] = 12001465
	-- -- 100W银两-- 【必给】
	-- tCollectionMahjongr_RewardItem[3321988][1][1] = {}
	-- tCollectionMahjongr_RewardItem[3321988][1][1]["RandomItemChanceType"] = 1
	-- tCollectionMahjongr_RewardItem[3321988][1][1]["RewardMoney"] = {}
	-- tCollectionMahjongr_RewardItem[3321988][1][1]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】100W银两
	-- tCollectionMahjongr_RewardItem[3321988][1][1]["RewardEffect"] = {}
	-- tCollectionMahjongr_RewardItem[3321988][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tCollectionMahjongr_RewardItem[3321988][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 暗忍危机 - 5.00%
	tCollectionMahjongr_RewardItem[3321988][1][2] = {}
	tCollectionMahjongr_RewardItem[3321988][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321988][1][2]["ItemChance"] = 500
	tCollectionMahjongr_RewardItem[3321988][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321988][1][2]["RewardItem"][1]["Id"] = 3321960 -- 【库】暗忍危机[属性:8], 【表格】暗忍危机
	tCollectionMahjongr_RewardItem[3321988][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 暗忍危机*1
	tCollectionMahjongr_RewardItem[3321988][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321988][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 海盗来袭 - 45.00%
	tCollectionMahjongr_RewardItem[3321988][1][3] = {}
	tCollectionMahjongr_RewardItem[3321988][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321988][1][3]["ItemChance"] = 4500
	tCollectionMahjongr_RewardItem[3321988][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321988][1][3]["RewardItem"][1]["Id"] = 3321961 -- 【库】海盗来袭[属性:8], 【表格】海盗来袭
	tCollectionMahjongr_RewardItem[3321988][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 海盗来袭*1
	tCollectionMahjongr_RewardItem[3321988][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321988][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 铁扇江山 - 45.00%
	tCollectionMahjongr_RewardItem[3321988][1][4] = {}
	tCollectionMahjongr_RewardItem[3321988][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321988][1][4]["ItemChance"] = 4500
	tCollectionMahjongr_RewardItem[3321988][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321988][1][4]["RewardItem"][1]["Id"] = 3321962 -- 【库】铁扇江山[属性:8], 【表格】铁扇江山
	tCollectionMahjongr_RewardItem[3321988][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 铁扇江山*1
	tCollectionMahjongr_RewardItem[3321988][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321988][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗战苍穹 - 5.00%
	tCollectionMahjongr_RewardItem[3321988][1][5] = {}
	tCollectionMahjongr_RewardItem[3321988][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321988][1][5]["ItemChance"] = 500
	tCollectionMahjongr_RewardItem[3321988][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321988][1][5]["RewardItem"][1]["Id"] = 3321963 -- 【库】斗战苍穹[属性:8], 【表格】斗战苍穹
	tCollectionMahjongr_RewardItem[3321988][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 斗战苍穹*1
	tCollectionMahjongr_RewardItem[3321988][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321988][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321988][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321989] = {}
	-- ===雄霸天下礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321989][1]
	-- ===删除: 3321989,1
	tCollectionMahjongr_RewardItem[3321989][1] = {}
	tCollectionMahjongr_RewardItem[3321989][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_RewardItem[3321989][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321989][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321989][1]["DeleteItem"][1]["Id"] = 3321989 -- 【库】雄霸天下礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3321989][1]["LogId"] = 12001465
	-- -- 1000W银两-- 【必给】
	-- tCollectionMahjongr_RewardItem[3321989][1][1] = {}
	-- tCollectionMahjongr_RewardItem[3321989][1][1]["RandomItemChanceType"] = 1
	-- tCollectionMahjongr_RewardItem[3321989][1][1]["RewardMoney"] = {}
	-- tCollectionMahjongr_RewardItem[3321989][1][1]["RewardMoney"]["Value"] = 10000000 -- 金币, 【需求】1000W银两
	-- tCollectionMahjongr_RewardItem[3321989][1][1]["RewardEffect"] = {}
	-- tCollectionMahjongr_RewardItem[3321989][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tCollectionMahjongr_RewardItem[3321989][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 风云天下 - 31.00%
	tCollectionMahjongr_RewardItem[3321989][1][2] = {}
	tCollectionMahjongr_RewardItem[3321989][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321989][1][2]["ItemChance"] = 3100
	tCollectionMahjongr_RewardItem[3321989][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321989][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321989][1][2]["RewardItem"][1]["Id"] = 3321964 -- 【库】风云天下[属性:8], 【表格】风云天下
	tCollectionMahjongr_RewardItem[3321989][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 风云天下*1
	tCollectionMahjongr_RewardItem[3321989][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321989][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321989][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 超凡入神 - 55.00%
	tCollectionMahjongr_RewardItem[3321989][1][3] = {}
	tCollectionMahjongr_RewardItem[3321989][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321989][1][3]["ItemChance"] = 5500
	tCollectionMahjongr_RewardItem[3321989][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321989][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321989][1][3]["RewardItem"][1]["Id"] = 3321965 -- 【库】超凡入神[属性:9], 【表格】超凡入神
	tCollectionMahjongr_RewardItem[3321989][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 超凡入神*1
	tCollectionMahjongr_RewardItem[3321989][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321989][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321989][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 纵横四海 - 14.00%
	tCollectionMahjongr_RewardItem[3321989][1][4] = {}
	tCollectionMahjongr_RewardItem[3321989][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321989][1][4]["ItemChance"] = 1400
	tCollectionMahjongr_RewardItem[3321989][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321989][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321989][1][4]["RewardItem"][1]["Id"] = 3321966 -- 【库】纵横四海[属性:8], 【表格】纵横四海
	tCollectionMahjongr_RewardItem[3321989][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 纵横四海*1
	tCollectionMahjongr_RewardItem[3321989][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321989][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321989][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321990] = {}
	-- ===行思坐忆轮盘
	-- ===索引: tCollectionMahjongr_RewardItem[3321990][1]
	-- ===删除: 3321990,1
	tCollectionMahjongr_RewardItem[3321990][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_RewardItem[3321990][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321990][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1]["DeleteItem"][1]["Id"] = 3321990 -- 【库】行思坐忆轮盘[属性:9]
	tCollectionMahjongr_RewardItem[3321990][1]["LogId"] = 12001465
	-- 9阶灵珠 - 20%
	tCollectionMahjongr_RewardItem[3321990][1][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321990][1][1]["ItemChance"] = 2000
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】9阶灵珠
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321990][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 8阶灵珠 - 20%
	tCollectionMahjongr_RewardItem[3321990][1][2] = {}
	tCollectionMahjongr_RewardItem[3321990][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321990][1][2]["ItemChance"] = 2000
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardItem"][1]["Id"] = 4200009 -- 【库】9阶灵珠[属性:72], 【表格】8阶灵珠
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321990][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石 - 10%
	tCollectionMahjongr_RewardItem[3321990][1][3] = {}
	tCollectionMahjongr_RewardItem[3321990][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321990][1][3]["ItemChance"] = 1000
	tCollectionMahjongr_RewardItem[3321990][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1][3]["RewardItem"][1]["Id"] = 3302985 -- 【库】1颗璀璨星陨石礼包[属性:11], 【表格】璀璨星陨石
	tCollectionMahjongr_RewardItem[3321990][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 1颗璀璨星陨石礼包*1
	tCollectionMahjongr_RewardItem[3321990][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321990][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 稀有黄色神纹碎片 - 14%
	tCollectionMahjongr_RewardItem[3321990][1][4] = {}
	tCollectionMahjongr_RewardItem[3321990][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321990][1][4]["ItemChance"] = 1400
	tCollectionMahjongr_RewardItem[3321990][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1][4]["RewardItem"][1]["Id"] = 3311744 -- 【库】稀有黄色神纹碎片[属性:8], 【表格】稀有黄色神纹碎片
	tCollectionMahjongr_RewardItem[3321990][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹碎片*1
	tCollectionMahjongr_RewardItem[3321990][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321990][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 50元京东卡 - 1%
	tCollectionMahjongr_RewardItem[3321990][1][5] = {}
	tCollectionMahjongr_RewardItem[3321990][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321990][1][5]["ItemChance"] = 100
	tCollectionMahjongr_RewardItem[3321990][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1][5]["RewardItem"][1]["Id"] = 3322007 -- 【库】50元京东卡[属性:9], 【表格】50元京东卡
	tCollectionMahjongr_RewardItem[3321990][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 50元京东卡*1
	tCollectionMahjongr_RewardItem[3321990][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321990][1][5]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53432, data0）】全服限量:（10）, 超限给编号（4）-
	tCollectionMahjongr_RewardItem[3321990][1][5]["GlobalId"] = 53432
	tCollectionMahjongr_RewardItem[3321990][1][5]["Pos"] = 0
	tCollectionMahjongr_RewardItem[3321990][1][5]["MaxData"] = 10
	tCollectionMahjongr_RewardItem[3321990][1][5]["FullIndex"] = 4
	-- 15000点气力值 - 35%
	tCollectionMahjongr_RewardItem[3321990][1][6] = {}
	tCollectionMahjongr_RewardItem[3321990][1][6]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321990][1][6]["ItemChance"] = 3500
	tCollectionMahjongr_RewardItem[3321990][1][6]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][6]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321990][1][6]["RewardItem"][1]["Id"] = 3003614 -- 【库】超级气力值礼包[属性:9], 【表格】15000点气力值
	tCollectionMahjongr_RewardItem[3321990][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 超级气力值礼包*1
	tCollectionMahjongr_RewardItem[3321990][1][6]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321990][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321990][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321991] = {}
	-- ===追忆之星轮盘
	-- ===索引: tCollectionMahjongr_RewardItem[3321991][1]
	-- ===删除: 3321991,1
	tCollectionMahjongr_RewardItem[3321991][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_RewardItem[3321991][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321991][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1]["DeleteItem"][1]["Id"] = 3321991 -- 【库】追忆之星轮盘[属性:9]
	tCollectionMahjongr_RewardItem[3321991][1]["LogId"] = 12001465
	-- 11阶灵珠 - 15%
	tCollectionMahjongr_RewardItem[3321991][1][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321991][1][1]["ItemChance"] = 1500
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321991][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石*5 - 23%
	tCollectionMahjongr_RewardItem[3321991][1][2] = {}
	tCollectionMahjongr_RewardItem[3321991][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321991][1][2]["ItemChance"] = 2300
	tCollectionMahjongr_RewardItem[3321991][1][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1][2]["RewardItem"][1]["Id"] = 3310251 -- 【库】璀璨星陨石尊享包[属性:0], 【表格】璀璨星陨石*5
	tCollectionMahjongr_RewardItem[3321991][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 璀璨星陨石尊享包*1
	tCollectionMahjongr_RewardItem[3321991][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321991][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 8888天石赠 - 5%
	tCollectionMahjongr_RewardItem[3321991][1][3] = {}
	tCollectionMahjongr_RewardItem[3321991][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321991][1][3]["ItemChance"] = 500
	tCollectionMahjongr_RewardItem[3321991][1][3]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][3]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1][3]["RewardItem"][1]["Id"] = 3322001 -- 【库】8888天石（赠）礼盒[属性:9], 【表格】8888天石赠
	tCollectionMahjongr_RewardItem[3321991][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 8888天石（赠）礼盒*1
	tCollectionMahjongr_RewardItem[3321991][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321991][1][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53432, data1）】全服限量:（50）, 超限给编号（4）-
	tCollectionMahjongr_RewardItem[3321991][1][3]["GlobalId"] = 53432
	tCollectionMahjongr_RewardItem[3321991][1][3]["Pos"] = 1
	tCollectionMahjongr_RewardItem[3321991][1][3]["MaxData"] = 50
	tCollectionMahjongr_RewardItem[3321991][1][3]["FullIndex"] = 4
	-- 稀有黄色神纹随机包 - 41%
	tCollectionMahjongr_RewardItem[3321991][1][4] = {}
	tCollectionMahjongr_RewardItem[3321991][1][4]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321991][1][4]["ItemChance"] = 4100
	tCollectionMahjongr_RewardItem[3321991][1][4]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][4]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1][4]["RewardItem"][1]["Id"] = 3319464 -- 【库】(+1)稀有黄色神纹随机包[属性:8], 【表格】稀有黄色神纹随机包
	tCollectionMahjongr_RewardItem[3321991][1][4]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包*1
	tCollectionMahjongr_RewardItem[3321991][1][4]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321991][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 500元京东卡 - 1%
	tCollectionMahjongr_RewardItem[3321991][1][5] = {}
	tCollectionMahjongr_RewardItem[3321991][1][5]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321991][1][5]["ItemChance"] = 100
	tCollectionMahjongr_RewardItem[3321991][1][5]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][5]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1][5]["RewardItem"][1]["Id"] = 3322005 -- 【库】500元京东卡[属性:9], 【表格】500元京东卡
	tCollectionMahjongr_RewardItem[3321991][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 500元京东卡*1
	tCollectionMahjongr_RewardItem[3321991][1][5]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321991][1][5]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53432, data2）】全服限量:（5）, 超限给编号（4）-
	tCollectionMahjongr_RewardItem[3321991][1][5]["GlobalId"] = 53432
	tCollectionMahjongr_RewardItem[3321991][1][5]["Pos"] = 2
	tCollectionMahjongr_RewardItem[3321991][1][5]["MaxData"] = 5
	tCollectionMahjongr_RewardItem[3321991][1][5]["FullIndex"] = 4
	-- 超大固化石 - 15%
	tCollectionMahjongr_RewardItem[3321991][1][6] = {}
	tCollectionMahjongr_RewardItem[3321991][1][6]["RandomItemChanceType"] = 2
	tCollectionMahjongr_RewardItem[3321991][1][6]["ItemChance"] = 1500
	tCollectionMahjongr_RewardItem[3321991][1][6]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][6]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321991][1][6]["RewardItem"][1]["Id"] = 3303304 -- 【库】超大固化石(赠)[属性:11], 【表格】超大固化石
	tCollectionMahjongr_RewardItem[3321991][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 超大固化石(赠)*1
	tCollectionMahjongr_RewardItem[3321991][1][6]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321991][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321991][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321992] = {}
	-- ===2个黄色神纹精粹（赠）包
	-- ===索引: tCollectionMahjongr_RewardItem[3321992]
	-- ===删除: 3321992,1
	tCollectionMahjongr_RewardItem[3321992]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321992]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321992]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321992]["DeleteItem"][1]["Id"] = 3321992 -- 【库】2个黄色神纹精粹（赠）包[属性:9]
	tCollectionMahjongr_RewardItem[3321992]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321992]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321992]["RewardItem"][1]["Id"] = 4050001 -- 【库】黄色神纹精粹[属性:9], 【表格】（赠）黄色神纹精粹*2
	tCollectionMahjongr_RewardItem[3321992]["RewardItem"][1]["Attr"] = "0 2 3" -- 黄色神纹精粹（赠）*2
	tCollectionMahjongr_RewardItem[3321992]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321992]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321992]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321993] = {}
	-- ===6个人参果包
	-- ===索引: tCollectionMahjongr_RewardItem[3321993]
	-- ===删除: 3321993,1
	tCollectionMahjongr_RewardItem[3321993]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321993]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321993]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321993]["DeleteItem"][1]["Id"] = 3321993 -- 【库】6个人参果包*[属性:9]
	tCollectionMahjongr_RewardItem[3321993]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321993]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321993]["RewardItem"][1]["Id"] = 3009100 -- 【库】人参果[属性:9], 【表格】人参果*6
	tCollectionMahjongr_RewardItem[3321993]["RewardItem"][1]["Attr"] = "0 6" -- 人参果*6
	tCollectionMahjongr_RewardItem[3321993]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321993]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321993]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321994] = {}
	-- ===万能神纹精粹*55
	-- ===索引: tCollectionMahjongr_RewardItem[3321994]
	-- ===删除: 3321994,1
	tCollectionMahjongr_RewardItem[3321994]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321994]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321994]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321994]["DeleteItem"][1]["Id"] = 3321994 -- 【库】55个万能神纹精粹[属性:9]
	tCollectionMahjongr_RewardItem[3321994]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321994]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321994]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9], 【表格】万能神纹精粹*55
	tCollectionMahjongr_RewardItem[3321994]["RewardItem"][1]["Attr"] = "0 55" -- 万能神纹精粹*55
	tCollectionMahjongr_RewardItem[3321994]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321994]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321994]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321995] = {}
	-- ===璀璨气力礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321995]
	-- ===删除: 3321995,1
	tCollectionMahjongr_RewardItem[3321995]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321995]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321995]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321995]["DeleteItem"][1]["Id"] = 3321995 -- 【库】璀璨气力礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3321995]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321995]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321995]["RewardItem"][1]["Id"] = 3009003 -- 【库】璀璨星陨石[属性:9], 【表格】璀璨星陨石
	tCollectionMahjongr_RewardItem[3321995]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tCollectionMahjongr_RewardItem[3321995]["RewardStrengthValue"] = {}
	tCollectionMahjongr_RewardItem[3321995]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】3w气力值
	tCollectionMahjongr_RewardItem[3321995]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321995]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321995]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321996] = {}
	-- ===征服至尊礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321996]
	-- ===删除: 3321996,1
	tCollectionMahjongr_RewardItem[3321996]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321996]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321996]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321996]["DeleteItem"][1]["Id"] = 3321996 -- 【库】征服至尊礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][1]["Id"] = 3322002 -- 【库】华为P30PRO[属性:9], 【表格】华为P30PRO*1
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][1]["Attr"] = "0 1" -- 华为P30PRO*1
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][2] = {}
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][2]["Id"] = 2169015 -- 【库】 2169015 【库里没有该物品】[属性:], 【表格】180天时效专属佩饰*1
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][2]["Attr"] = "0 1 0 259200 1" -- 180天时效(激活)的 2169015 【库里没有该物品】*1
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][3] = {}
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][3]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠*1
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][3]["Attr"] = "0 1" -- 11阶灵珠*1
	tCollectionMahjongr_RewardItem[3321996]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321996]["RewardStrengthValue"] = {}
	tCollectionMahjongr_RewardItem[3321996]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】2w气力值
	tCollectionMahjongr_RewardItem[3321996]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321996]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321996]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321997] = {}
	-- ===征服宗师礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321997]
	-- ===删除: 3321997,1
	tCollectionMahjongr_RewardItem[3321997]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321997]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321997]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321997]["DeleteItem"][1]["Id"] = 3321997 -- 【库】征服宗师礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][1]["Id"] = 3322003 -- 【库】华为FreeBuds 2 Pro无线耳机[属性:9], 【表格】华为FreeBuds 2 Pro无线耳机*1
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][1]["Attr"] = "0 1" -- 华为FreeBuds 2 Pro无线耳机*1
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][2] = {}
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][2]["Id"] = 2169015 -- 【库】 2169015 【库里没有该物品】[属性:], 【表格】90天时效专属佩饰*1
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][2]["Attr"] = "0 1 0 129600 1" -- 90天时效(激活)的 2169015 【库里没有该物品】*1
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][3] = {}
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][3]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠*1
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][3]["Attr"] = "0 1" -- 10阶灵珠*1
	tCollectionMahjongr_RewardItem[3321997]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321997]["RewardStrengthValue"] = {}
	tCollectionMahjongr_RewardItem[3321997]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】1w气力值
	tCollectionMahjongr_RewardItem[3321997]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321997]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321997]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321998] = {}
	-- ===征服高手礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321998]
	-- ===删除: 3321998,1
	tCollectionMahjongr_RewardItem[3321998]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321998]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321998]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321998]["DeleteItem"][1]["Id"] = 3321998 -- 【库】征服高手礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][1]["Id"] = 3322004 -- 【库】华为FreeBuds 2无线耳机[属性:9], 【表格】华为FreeBuds 2无线耳机*1
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][1]["Attr"] = "0 1" -- 华为FreeBuds 2无线耳机*1
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][2] = {}
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][2]["Id"] = 2169015 -- 【库】 2169015 【库里没有该物品】[属性:], 【表格】30天时效专属佩饰*1
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][2]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的 2169015 【库里没有该物品】*1
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][3] = {}
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][3]["Id"] = 4200009 -- 【库】9阶灵珠[属性:72], 【表格】9阶灵珠*1
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][3]["Attr"] = "0 1" -- 9阶灵珠*1
	tCollectionMahjongr_RewardItem[3321998]["RewardItem"][3]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321998]["RewardStrengthValue"] = {}
	tCollectionMahjongr_RewardItem[3321998]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tCollectionMahjongr_RewardItem[3321998]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321998]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321998]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3321999] = {}
	-- ===征服高手礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321999]
	-- ===删除: 3321999,1
	-- ===
	-- ===
	tCollectionMahjongr_RewardItem[3321999]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321999]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321999]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321999]["DeleteItem"][1]["Id"] = 3321999 -- 【库】征服新星礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"][1]["Id"] = 3322006 -- 【库】200元京东卡[属性:9], 【表格】200元京东卡*1
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"][1]["Attr"] = "0 1" -- 200元京东卡*1
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"][2] = {}
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"][2]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠*1
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"][2]["Attr"] = "0 1" -- 8阶灵珠*1
	tCollectionMahjongr_RewardItem[3321999]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321999]["RewardStrengthValue"] = {}
	tCollectionMahjongr_RewardItem[3321999]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tCollectionMahjongr_RewardItem[3321999]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321999]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321999]["RewardEffect"]["Effect"] = "angelwing"



	-- ===征服小将礼盒
	-- ===索引: tCollectionMahjongr_RewardItem[3322000]
	-- ===删除: 3322000,1
	tCollectionMahjongr_RewardItem[3322000] = {}
	tCollectionMahjongr_RewardItem[3322000]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3322000]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3322000]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3322000]["DeleteItem"][1]["Id"] = 3322000 -- 【库】征服小将礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"][1]["Id"] = 3322007 -- 【库】50元京东卡[属性:9], 【表格】50元京东卡*1
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"][1]["Attr"] = "0 1" -- 50元京东卡*1
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"][2] = {}
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"][2]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠*1
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"][2]["Attr"] = "0 1" -- 7阶灵珠*1
	tCollectionMahjongr_RewardItem[3322000]["RewardItem"][2]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3322000]["RewardStrengthValue"] = {}
	tCollectionMahjongr_RewardItem[3322000]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tCollectionMahjongr_RewardItem[3322000]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3322000]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3322000]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3322001] = {}
	-- ===5000赠点包
	-- ===索引: tCollectionMahjongr_RewardItem[3322001]
	-- ===删除: 3322001,1
	tCollectionMahjongr_RewardItem[3322001]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3322001]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3322001]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3322001]["DeleteItem"][1]["Id"] = 3322001 -- 【库】8888天石（赠）礼盒[属性:9]
	tCollectionMahjongr_RewardItem[3322001]["RewardEMoneyMono"] = {}
	tCollectionMahjongr_RewardItem[3322001]["RewardEMoneyMono"]["Value"] = 8888 -- 天石（赠）, 【需求】8888赠天石
	tCollectionMahjongr_RewardItem[3322001]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0515"
	tCollectionMahjongr_RewardItem[3322001]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3322001]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3322001]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3322054] = {}
	-- ===2个稀有黄色神纹碎片包
	-- ===索引: tCollectionMahjongr_RewardItem[3322054]
	-- ===删除: 3322054,1
	tCollectionMahjongr_RewardItem[3322054]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3322054]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3322054]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3322054]["DeleteItem"][1]["Id"] = 3322054 -- 【库】2个稀有黄色神纹碎片包[属性:9]
	tCollectionMahjongr_RewardItem[3322054]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3322054]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3322054]["RewardItem"][1]["Id"] = 3311748 -- 【库】稀有黄色神纹（赠）碎片[属性:9], 【表格】稀有黄色神纹碎片
	tCollectionMahjongr_RewardItem[3322054]["RewardItem"][1]["Attr"] = "0 2" -- 稀有黄色神纹（赠）碎片*2
	tCollectionMahjongr_RewardItem[3322054]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3322054]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3322054]["RewardEffect"]["Effect"] = "angelwing"


	
	-- ===暗忍危机
	-- ===索引: tCollectionMahjongr_RewardItem[3321960][2]
	-- ===删除: 3321960,1
	tCollectionMahjongr_RewardItem[3321960][2] = {}
	tCollectionMahjongr_RewardItem[3321960][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321960][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321960][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321960][2]["DeleteItem"][1]["Id"] = 3321960 -- 【库】暗忍危机[属性:8]
	tCollectionMahjongr_RewardItem[3321960][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321960][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321960][2]["RewardItem"][1]["Id"] = 4200005 -- 【库】5阶灵珠[属性:72], 【表格】5阶灵珠*1
	tCollectionMahjongr_RewardItem[3321960][2]["RewardItem"][1]["Attr"] = "0 1" -- 5阶灵珠*1
	tCollectionMahjongr_RewardItem[3321960][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321960][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321960][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321960][2]["RewardEffect"]["Effect"] = "angelwing"


	
	-- ===海盗来袭
	-- ===索引: tCollectionMahjongr_RewardItem[3321961][2]
	-- ===删除: 3321961,1
	tCollectionMahjongr_RewardItem[3321961][2] = {}
	tCollectionMahjongr_RewardItem[3321961][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321961][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321961][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321961][2]["DeleteItem"][1]["Id"] = 3321961 -- 【库】海盗来袭[属性:8]
	tCollectionMahjongr_RewardItem[3321961][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321961][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321961][2]["RewardItem"][1]["Id"] = 4200006 -- 【库】6阶灵珠[属性:72], 【表格】6阶灵珠*1
	tCollectionMahjongr_RewardItem[3321961][2]["RewardItem"][1]["Attr"] = "0 1" -- 6阶灵珠*1
	tCollectionMahjongr_RewardItem[3321961][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321961][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321961][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321961][2]["RewardEffect"]["Effect"] = "angelwing"


	
	-- ===铁扇江山
	-- ===索引: tCollectionMahjongr_RewardItem[3321962][2]
	-- ===删除: 3321962,1
	tCollectionMahjongr_RewardItem[3321962][2] = {}
	tCollectionMahjongr_RewardItem[3321962][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321962][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321962][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321962][2]["DeleteItem"][1]["Id"] = 3321962 -- 【库】铁扇江山[属性:8]
	tCollectionMahjongr_RewardItem[3321962][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321962][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321962][2]["RewardItem"][1]["Id"] = 4200007 -- 【库】7阶灵珠[属性:72], 【表格】7阶灵珠*1
	tCollectionMahjongr_RewardItem[3321962][2]["RewardItem"][1]["Attr"] = "0 1" -- 7阶灵珠*1
	tCollectionMahjongr_RewardItem[3321962][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321962][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321962][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321962][2]["RewardEffect"]["Effect"] = "angelwing"


	
	-- ===斗战苍穹
	-- ===索引: tCollectionMahjongr_RewardItem[3321963][2]
	-- ===删除: 3321963,1
	tCollectionMahjongr_RewardItem[3321963][2] = {}
	tCollectionMahjongr_RewardItem[3321963][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321963][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321963][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321963][2]["DeleteItem"][1]["Id"] = 3321963 -- 【库】斗战苍穹[属性:8]
	tCollectionMahjongr_RewardItem[3321963][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321963][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321963][2]["RewardItem"][1]["Id"] = 4200008 -- 【库】8阶灵珠[属性:72], 【表格】8阶灵珠*1
	tCollectionMahjongr_RewardItem[3321963][2]["RewardItem"][1]["Attr"] = "0 1" -- 8阶灵珠*1
	tCollectionMahjongr_RewardItem[3321963][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321963][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321963][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321963][2]["RewardEffect"]["Effect"] = "angelwing"


	
	-- ===风云天下
	-- ===索引: tCollectionMahjongr_RewardItem[3321964][2]
	-- ===删除: 3321964,1
	tCollectionMahjongr_RewardItem[3321964][2] = {}
	tCollectionMahjongr_RewardItem[3321964][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321964][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321964][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321964][2]["DeleteItem"][1]["Id"] = 3321964 -- 【库】风云天下[属性:8]
	tCollectionMahjongr_RewardItem[3321964][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321964][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321964][2]["RewardItem"][1]["Id"] = 4200009 -- 【库】9阶灵珠[属性:72], 【表格】9阶灵珠*1
	tCollectionMahjongr_RewardItem[3321964][2]["RewardItem"][1]["Attr"] = "0 1" -- 9阶灵珠*1
	tCollectionMahjongr_RewardItem[3321964][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321964][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321964][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321964][2]["RewardEffect"]["Effect"] = "angelwing"



	-- ===超凡入神
	-- ===索引: tCollectionMahjongr_RewardItem[3321965][2]
	-- ===删除:3321965,1
	tCollectionMahjongr_RewardItem[3321965] = {}
	tCollectionMahjongr_RewardItem[3321965][2] = {}
	tCollectionMahjongr_RewardItem[3321965][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321965][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321965][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321965][2]["DeleteItem"][1]["Id"] = 3321965 -- 【库】超凡入神[属性:9]
	tCollectionMahjongr_RewardItem[3321965][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321965][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321965][2]["RewardItem"][1]["Id"] = 4200010 -- 【库】10阶灵珠[属性:72], 【表格】10阶灵珠*1
	tCollectionMahjongr_RewardItem[3321965][2]["RewardItem"][1]["Attr"] = "0 1" -- 10阶灵珠*1
	tCollectionMahjongr_RewardItem[3321965][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321965][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321965][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321965][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===纵横四海
	-- ===索引: tCollectionMahjongr_RewardItem[3321966][2]
	-- ===删除:3321966,1
	tCollectionMahjongr_RewardItem[3321966] = {}
	tCollectionMahjongr_RewardItem[3321966][2] = {}
	tCollectionMahjongr_RewardItem[3321966][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321966][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3321966][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321966][2]["DeleteItem"][1]["Id"] = 3321966 -- 【库】纵横四海[属性:8]
	tCollectionMahjongr_RewardItem[3321966][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321966][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321966][2]["RewardItem"][1]["Id"] = 4200011 -- 【库】11阶灵珠[属性:72], 【表格】11阶灵珠*1
	tCollectionMahjongr_RewardItem[3321966][2]["RewardItem"][1]["Attr"] = "0 1" -- 11阶灵珠*1
	tCollectionMahjongr_RewardItem[3321966][2]["RewardItem"][1]["PreciousType"] = 307 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tCollectionMahjongr_RewardItem[3321966][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321966][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321966][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tCollectionMahjongr_RewardItem[3321984] = {}
	-- ===神秘宝盒
	-- ===索引: tCollectionMahjongr_RewardItem[3321984]
	-- ===
	-- ===
	tCollectionMahjongr_RewardItem[3321984]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3321984]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3321984]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3321984]["RewardItem"][1]["Id"] = 3321984 -- 【库】记忆收纳盒[属性:11], 【表格】记忆收纳盒
	tCollectionMahjongr_RewardItem[3321984]["RewardItem"][1]["Attr"] = "0 1" -- 记忆收纳盒*1
	tCollectionMahjongr_RewardItem[3321984]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3321984]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3321984]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===普通喂养道具
	-- ===索引:tCollectionMahjongr_RewardItem[3326542]
	-- ===删除: 3326542,1
	tCollectionMahjongr_RewardItem[3326542] = {}
	tCollectionMahjongr_RewardItem[3326542]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3326542]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3326542]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326542]["DeleteItem"][1]["Id"] = 3326542 -- 【库】AdvanvedRunePack[属性:9]
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][1]["Id"] = 3311821 -- SuperRuneCrystal[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶*3
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][1]["Attr"] = "0 3 3" -- SuperRuneCrystal*3
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][2] = {}
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][2]["Id"] = 3311820 -- RefinedRuneCrystal[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶*5
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][2]["Attr"] = "0 5 3" -- RefinedRuneCrystal*5
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][3] = {}
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100
	tCollectionMahjongr_RewardItem[3326542]["RewardItem"][3]["Attr"] = "0 100 3" -- UniversalRuneEssence*100
	tCollectionMahjongr_RewardItem[3326542]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3326542]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3326542]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3326543] = {}
	-- ===普通喂养道具
	-- ===索引:tCollectionMahjongr_RewardItem[3326543][1]
	-- ===删除: 3326543,1
	tCollectionMahjongr_RewardItem[3326543][1] = {}
	tCollectionMahjongr_RewardItem[3326543][1]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3326543][1]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3326543][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326543][1]["DeleteItem"][1]["Id"] = 3326543 -- 【库】AdvanvedGemPack[属性:9]
	tCollectionMahjongr_RewardItem[3326543][1]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3326543][1]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326543][1]["RewardItem"][1]["Id"] = 700103 -- ThunderGem[700103][属性:0][叠加:0][金币:0], 【表格】2颗优质天怒
	tCollectionMahjongr_RewardItem[3326543][1]["RewardItem"][1]["Attr"] = "0 2 3" -- ThunderGem（赠）*2
	tCollectionMahjongr_RewardItem[3326543][1]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3326543][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3326543][1]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3326543][2] = {}
	-- ===普通喂养道具
	-- ===索引:tCollectionMahjongr_RewardItem[3326543][2]
	-- ===删除: 3326543,1
	tCollectionMahjongr_RewardItem[3326543][2]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3326543][2]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3326543][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326543][2]["DeleteItem"][1]["Id"] = 3326543 -- 【库】AdvanvedGemPack[属性:9]
	tCollectionMahjongr_RewardItem[3326543][2]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3326543][2]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326543][2]["RewardItem"][1]["Id"] = 700123 -- GloryGem[700123][属性:0][叠加:0][金币:0], 【表格】2颗地灵宝石
	tCollectionMahjongr_RewardItem[3326543][2]["RewardItem"][1]["Attr"] = "0 2 3" -- GloryGem（赠）*2
	tCollectionMahjongr_RewardItem[3326543][2]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3326543][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3326543][2]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3326544] = {}
	-- ===普通喂养道具
	-- ===索引:tCollectionMahjongr_RewardItem[3326544]
	-- ===删除: 3326544,1
	tCollectionMahjongr_RewardItem[3326544]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3326544]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3326544]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326544]["DeleteItem"][1]["Id"] = 3326544 -- 【库】BuddingFlowerPack[属性:9]
	tCollectionMahjongr_RewardItem[3326544]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3326544]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326544]["RewardItem"][1]["Id"] = 195875 -- BuddingFlower[195875][属性:0][叠加:0][金币:0], 【表格】四海升平赠
	tCollectionMahjongr_RewardItem[3326544]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BuddingFlower（赠）*1
	tCollectionMahjongr_RewardItem[3326544]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3326544]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3326544]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_RewardItem[3326545] = {}
	-- ===普通喂养道具
	-- ===索引:tCollectionMahjongr_RewardItem[3326545]
	-- ===删除: 3326545,1
	tCollectionMahjongr_RewardItem[3326545]["LogId"] = 12001465
	tCollectionMahjongr_RewardItem[3326545]["DeleteItem"] = {}
	tCollectionMahjongr_RewardItem[3326545]["DeleteItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326545]["DeleteItem"][1]["Id"] = 3326545 -- 【库】BuddingFlowerPack[Legend][属性:9]
	tCollectionMahjongr_RewardItem[3326545]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem[3326545]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem[3326545]["RewardItem"][1]["Id"] = 195885 -- BuddingFlower[Legend][195885][属性:0][叠加:0][金币:0], 【表格】四海升平【锦绣版】赠
	tCollectionMahjongr_RewardItem[3326545]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BuddingFlower[Legend]（赠）*1
	tCollectionMahjongr_RewardItem[3326545]["RewardEffect"] = {}
	tCollectionMahjongr_RewardItem[3326545]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_RewardItem[3326545]["RewardEffect"]["Effect"] = "angelwing"



	
	
	--取出物品
	tCollectionMahjongr_RewardItem["MoveItem"] = {}
	tCollectionMahjongr_RewardItem["MoveItem"]["RewardItem"] = {}
	tCollectionMahjongr_RewardItem["MoveItem"]["RewardItem"][1] = {}
	tCollectionMahjongr_RewardItem["MoveItem"]["RewardItem"][1]["Id"] = 1
	tCollectionMahjongr_RewardItem["MoveItem"]["RewardItem"][1]["Attr"] = "0 %d" 
	
	local tCollectionMahjongr_MonsterDrop = {}
	tCollectionMahjongr_MonsterDrop[3321986] = {}
	-- ===追忆之玉（赠）
	-- ===索引: tCollectionMahjongr_MonsterDrop[3321986][1]
	-- ===删除: 3321986
	tCollectionMahjongr_MonsterDrop[3321986][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_MonsterDrop[3321986][1]["DeleteItem"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1]["DeleteItem"][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1]["DeleteItem"][1]["Id"] = 3321986 -- 【库】追忆之玉（赠）[属性:9]
	tCollectionMahjongr_MonsterDrop[3321986][1]["LogId"] = 12001465
	-- 追忆之玉（赠） - 00%
	tCollectionMahjongr_MonsterDrop[3321986][1][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["ItemChance"] = 0
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardItem"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardItem"][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardItem"][1]["Id"] = 3321986 -- 【库】追忆之玉（赠）[属性:9], 【表格】追忆之玉（赠）
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 追忆之玉（赠）*1
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardEffect"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【stc（198,20）】50个, 最多可获得:（3）
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["EventType"] = 198
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["DataType"] = 20
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardData"] = 50
	tCollectionMahjongr_MonsterDrop[3321986][1][1]["RewardTotalData"] = 3
	-- 追忆之玉 - 0.01%
	tCollectionMahjongr_MonsterDrop[3321986][1][2] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["ItemChance"] = 1
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RewardItem"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RewardItem"][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RewardItem"][1]["Id"] = 3321985 -- 【库】追忆之玉[属性:9], 【表格】追忆之玉
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 追忆之玉*1
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RewardEffect"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53433, data0）】全服限量:（30）, 超限给编号（3）-
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["GlobalId"] = 53433
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["Pos"] = 0
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["MaxData"] = 30
	tCollectionMahjongr_MonsterDrop[3321986][1][2]["FullIndex"] = 3
	-- 无 - 99.99%
	tCollectionMahjongr_MonsterDrop[3321986][1][3] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_MonsterDrop[3321986][1][3]["ItemChance"] = 9999
	tCollectionMahjongr_MonsterDrop[3321986][1][3]["RewardEffect"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_MonsterDrop[3321986][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tCollectionMahjongr_MonsterDrop[3321986][2] = {}
	-- ===追忆之玉（赠）
	-- ===索引: tCollectionMahjongr_MonsterDrop[3321986][2]
	-- ===删除: 3321986
	tCollectionMahjongr_MonsterDrop[3321986][2]["ItemChanceSum"] = 10001
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tCollectionMahjongr_MonsterDrop[3321986][2]["DeleteItem"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2]["DeleteItem"][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2]["DeleteItem"][1]["Id"] = 3321986 -- 【库】追忆之玉（赠）[属性:9]
	tCollectionMahjongr_MonsterDrop[3321986][2]["LogId"] = 12001465
	-- 追忆之玉（赠） - 5.00%
	tCollectionMahjongr_MonsterDrop[3321986][2][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RandomItemChanceType"] = 2
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["ItemChance"] = 500
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardItem"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardItem"][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardItem"][1]["Id"] = 3321986 -- 【库】追忆之玉（赠）[属性:9], 【表格】追忆之玉（赠）
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 追忆之玉（赠）*1
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardEffect"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardEffect"]["Effect"] = "angelwing"
			-- 【stc（198,20）】50个, 最多可获得:（3）
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["EventType"] = 198
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["DataType"] = 20
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardData"] = 50
	tCollectionMahjongr_MonsterDrop[3321986][2][1]["RewardTotalData"] = 3
	-- 追忆之玉 - 0.01%
	tCollectionMahjongr_MonsterDrop[3321986][2][2] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RandomItemChanceType"] = 2
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["ItemChance"] = 1
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RewardItem"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RewardItem"][1] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RewardItem"][1]["Id"] = 3321985 -- 【库】追忆之玉[属性:9], 【表格】追忆之玉
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 追忆之玉*1
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RewardEffect"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53433, data0）】全服限量:（30）, 超限给编号（3）-
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["GlobalId"] = 53433
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["Pos"] = 0
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["MaxData"] = 30
	tCollectionMahjongr_MonsterDrop[3321986][2][2]["FullIndex"] = 3
	-- 无 - 95.00%
	tCollectionMahjongr_MonsterDrop[3321986][2][3] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][3]["RandomItemChanceType"] = 2
	tCollectionMahjongr_MonsterDrop[3321986][2][3]["ItemChance"] = 9500
	tCollectionMahjongr_MonsterDrop[3321986][2][3]["RewardEffect"] = {}
	tCollectionMahjongr_MonsterDrop[3321986][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCollectionMahjongr_MonsterDrop[3321986][2][3]["RewardEffect"]["Effect"] = "angelwing"

	
	
	
	
local tCollectionMahjongr_Stc = {}
	--记录玩家积分
	tCollectionMahjongr_Stc[1] = {}
	tCollectionMahjongr_Stc[1]["EventType"] = 198
	tCollectionMahjongr_Stc[1]["DataType"] = 19
	--1转以上玩家每天上线可以获得1张3
	tCollectionMahjongr_Stc[2] = {}
	tCollectionMahjongr_Stc[2]["EventType"] = 198
	tCollectionMahjongr_Stc[2]["DataType"] = 20
	--麻将cd
	tCollectionMahjongr_Stc[3] = {}
	tCollectionMahjongr_Stc[3]["EventType"] = 198
	tCollectionMahjongr_Stc[3]["DataType"] = 21
	
	tCollectionMahjongr_Stc[4] = {}
	tCollectionMahjongr_Stc[4]["EventType"] = 198
	tCollectionMahjongr_Stc[4]["DataType"] = 22
	
	--收纳麻将的数量
	tCollectionMahjongr_Stc[3321951] = {}
	tCollectionMahjongr_Stc[3321951]["EventType"] = 198
	tCollectionMahjongr_Stc[3321951]["DataType"] = 23
	
	tCollectionMahjongr_Stc[3321952] = {}
	tCollectionMahjongr_Stc[3321952]["EventType"] = 198
	tCollectionMahjongr_Stc[3321952]["DataType"] = 24
	
	tCollectionMahjongr_Stc[3321953] = {}
	tCollectionMahjongr_Stc[3321953]["EventType"] = 198
	tCollectionMahjongr_Stc[3321953]["DataType"] = 25
	
	tCollectionMahjongr_Stc[3321954] = {}
	tCollectionMahjongr_Stc[3321954]["EventType"] = 198
	tCollectionMahjongr_Stc[3321954]["DataType"] = 26
	
	tCollectionMahjongr_Stc[3321955] = {}
	tCollectionMahjongr_Stc[3321955]["EventType"] = 198
	tCollectionMahjongr_Stc[3321955]["DataType"] = 27
	
	tCollectionMahjongr_Stc[3321956] = {}
	tCollectionMahjongr_Stc[3321956]["EventType"] = 198
	tCollectionMahjongr_Stc[3321956]["DataType"] = 28
	
	tCollectionMahjongr_Stc[3321957] = {}
	tCollectionMahjongr_Stc[3321957]["EventType"] = 198
	tCollectionMahjongr_Stc[3321957]["DataType"] = 29
	
	tCollectionMahjongr_Stc[3321958] = {}
	tCollectionMahjongr_Stc[3321958]["EventType"] = 198
	tCollectionMahjongr_Stc[3321958]["DataType"] = 30
	
	tCollectionMahjongr_Stc[3321959] = {}
	tCollectionMahjongr_Stc[3321959]["EventType"] = 198
	tCollectionMahjongr_Stc[3321959]["DataType"] = 31
	
	tCollectionMahjongr_Stc[3321960] = {}
	tCollectionMahjongr_Stc[3321960]["EventType"] = 198
	tCollectionMahjongr_Stc[3321960]["DataType"] = 32
	
	tCollectionMahjongr_Stc[3321961] = {}
	tCollectionMahjongr_Stc[3321961]["EventType"] = 198
	tCollectionMahjongr_Stc[3321961]["DataType"] = 33
	
	tCollectionMahjongr_Stc[3321962] = {}
	tCollectionMahjongr_Stc[3321962]["EventType"] = 198
	tCollectionMahjongr_Stc[3321962]["DataType"] = 34
	
	tCollectionMahjongr_Stc[3321963] = {}
	tCollectionMahjongr_Stc[3321963]["EventType"] = 198
	tCollectionMahjongr_Stc[3321963]["DataType"] = 35
	
	tCollectionMahjongr_Stc[3321964] = {}
	tCollectionMahjongr_Stc[3321964]["EventType"] = 198
	tCollectionMahjongr_Stc[3321964]["DataType"] = 36
	
	tCollectionMahjongr_Stc[3321965] = {}
	tCollectionMahjongr_Stc[3321965]["EventType"] = 198
	tCollectionMahjongr_Stc[3321965]["DataType"] = 37
	
	tCollectionMahjongr_Stc[3321966] = {}
	tCollectionMahjongr_Stc[3321966]["EventType"] = 198
	tCollectionMahjongr_Stc[3321966]["DataType"] = 38
	
	tCollectionMahjongr_Stc[3321967] = {}
	tCollectionMahjongr_Stc[3321967]["EventType"] = 198
	tCollectionMahjongr_Stc[3321967]["DataType"] = 39
	
	tCollectionMahjongr_Stc[3321968] = {}
	tCollectionMahjongr_Stc[3321968]["EventType"] = 198
	tCollectionMahjongr_Stc[3321968]["DataType"] = 40
	
	tCollectionMahjongr_Stc[3321969] = {}
	tCollectionMahjongr_Stc[3321969]["EventType"] = 198
	tCollectionMahjongr_Stc[3321969]["DataType"] = 41
	
	tCollectionMahjongr_Stc[3321970] = {}
	tCollectionMahjongr_Stc[3321970]["EventType"] = 198
	tCollectionMahjongr_Stc[3321970]["DataType"] = 42
	
	tCollectionMahjongr_Stc[3321971] = {}
	tCollectionMahjongr_Stc[3321971]["EventType"] = 198
	tCollectionMahjongr_Stc[3321971]["DataType"] = 43
	
	tCollectionMahjongr_Stc[3321972] = {}
	tCollectionMahjongr_Stc[3321972]["EventType"] = 198
	tCollectionMahjongr_Stc[3321972]["DataType"] = 44
	
	tCollectionMahjongr_Stc[3321973] = {}
	tCollectionMahjongr_Stc[3321973]["EventType"] = 198
	tCollectionMahjongr_Stc[3321973]["DataType"] = 45
	
	tCollectionMahjongr_Stc[3321974] = {}
	tCollectionMahjongr_Stc[3321974]["EventType"] = 198
	tCollectionMahjongr_Stc[3321974]["DataType"] = 46
	
	tCollectionMahjongr_Stc[3321975] = {}
	tCollectionMahjongr_Stc[3321975]["EventType"] = 198
	tCollectionMahjongr_Stc[3321975]["DataType"] = 47
	
	tCollectionMahjongr_Stc[3321976] = {}
	tCollectionMahjongr_Stc[3321976]["EventType"] = 198
	tCollectionMahjongr_Stc[3321976]["DataType"] = 48
	
	tCollectionMahjongr_Stc[3321977] = {}
	tCollectionMahjongr_Stc[3321977]["EventType"] = 198
	tCollectionMahjongr_Stc[3321977]["DataType"] = 49
	
	tCollectionMahjongr_Stc[3321978] = {}
	tCollectionMahjongr_Stc[3321978]["EventType"] = 198
	tCollectionMahjongr_Stc[3321978]["DataType"] = 50
	
	tCollectionMahjongr_Stc[3321979] = {}
	tCollectionMahjongr_Stc[3321979]["EventType"] = 198
	tCollectionMahjongr_Stc[3321979]["DataType"] = 51
	
	tCollectionMahjongr_Stc[3321980] = {}
	tCollectionMahjongr_Stc[3321980]["EventType"] = 198
	tCollectionMahjongr_Stc[3321980]["DataType"] = 52
	
	tCollectionMahjongr_Stc[3321981] = {}
	tCollectionMahjongr_Stc[3321981]["EventType"] = 198
	tCollectionMahjongr_Stc[3321981]["DataType"] = 53
	
	tCollectionMahjongr_Stc[3321982] = {}
	tCollectionMahjongr_Stc[3321982]["EventType"] = 198
	tCollectionMahjongr_Stc[3321982]["DataType"] = 54


	--光效
	local tCollectionMahjongr_Effect = {}
		tCollectionMahjongr_Effect[1] = "self"
		tCollectionMahjongr_Effect[2] = "task060"
		tCollectionMahjongr_Effect[3] = "task061"
		tCollectionMahjongr_Effect[4] = "task051"
		tCollectionMahjongr_Effect[5] = "task052"
	
	
	
local tCollectionMahjongr_log = {}

tCollectionMahjongr_log["Itemlog"] = "0,0,%d,1,12001465,1[9],%d,1"
tCollectionMahjongr_log["Integrallog"] = "0,0,%d,1,12001465,1[8],0,%d"
tCollectionMahjongr_log["TimeOut"] = "0,0,%d,%d,12001465,2,0,0"
tCollectionMahjongr_log["EmoneyLog"] = "350	22737	0	0	%d	"
----------------------------------NPC逻辑--------------------------------------
--领取麻将收纳盒
function CollectionMahjongr_RewardItemBox(nNpcId,nItemId) 
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if Item_ChkItem(nItemId) then
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tCollectionMahjongr_RewardItem[nItemId])
	if not(User_CheckLeftSpace(nSpace)) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return 
	end
	
	local nEvent = tCollectionMahjongr_Stc[4]["EventType"]
	local nType = tCollectionMahjongr_Stc[4]["DataType"]
	if Task_SetStatistic(nEvent,nType,1,1) then
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_UseItemAndMsg(tCollectionMahjongr_RewardItem[nItemId])
	end
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

----------------------------------物品逻辑--------------------------------------
function CollectionMahjongr_UserSqueezer(nItemId)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		if nItemNum > 0 then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["TimeOut"],nItemId,nItemNum))
			end
		end
		return
	end
	
	local nUserId = Get_UserId()
	if Item_ChkItem(nItemId) then
		local nEventSquCd = tCollectionMahjongr_Stc[3]["EventType"]
		local nTypeSquCd = tCollectionMahjongr_Stc[3]["DataType"]
		-- cd
		if not Task_StcInterval(nEventSquCd,nTypeSquCd,3,0) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TalkChannel"]["ItemCd"])
			return
		end
		
		local nSpace = RewardTemplate_GetRandomSpace(tCollectionMahjongr_RewardItem[nItemId],1,nUserId)
		if not(User_CheckLeftSpace(nSpace,nUserId)) then
		-- 提示
			User_TalkChannel2005(tCollectionMahjongr_Text["MsgBox"]["NoSpace"])
			return 
		end
		
		local nMoney = tCollectionMahjongr_Cont["CostMoney"][nItemId]
		
		if not User_CanPutMoney2Bag(-nMoney) then 
			Sys_MsgBox(tCollectionMahjongr_Text["MsgBox"]["NotMoney"])
			return 
		end
		
		if User_AddMoney(-nMoney) then
			Sys_SaveEmoneyBuy(string.format(tCollectionMahjongr_log["EmoneyLog"],nMoney))
			local sLoadingText = tCollectionMahjongr_Text["Loading"]
			User_SetExplore(2,sLoadingText,220,string.format("CollectionMahjongr_ItemTimer</N>%d</N>%d",nItemId,nUserId))
		end
	end
end

--时间延时后麻将使用
function CollectionMahjongr_ItemTimer (nItemId,nUserId)
	if Item_ChkItem(nItemId,0,0,nUserId) and Item_DelItem(nItemId,0,0,nUserId) then
		
		
		local nEventSquCd = tCollectionMahjongr_Stc[3]["EventType"]
		local nTypeSquCd = tCollectionMahjongr_Stc[3]["DataType"]
		
		if Task_SetStatistic(nEventSquCd,nTypeSquCd,1,1,nUserId) then
			
			Task_SetStcTimestamp(nEventSquCd,nTypeSquCd,0,nUserId)
			--获得奖励
			local tReward = RewardTemplate_NewRandom(tCollectionMahjongr_RewardItem[nItemId],1,nUserId)
			
			local nRewardItemId = 0
			if tReward[1]["tAward"][1]["RewardItem"]~= nil then
				nRewardItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			end
			
			local sText = ""
			if nRewardItemId == 0 then
				User_EffectAdd(tCollectionMahjongr_Effect[1],tCollectionMahjongr_Effect[5],nUserId)
				sText = tCollectionMahjongr_Text["MsgBox"]["Fluctuate"][4]
				Sys_MsgBox(sText,"NULL","NULL",nUserId)
				
				return
			end	
			
			
			local nItemIdDiff = nRewardItemId - nItemId
			if nItemIdDiff >=1 then
				User_EffectAdd(tCollectionMahjongr_Effect[1],tCollectionMahjongr_Effect[2],nUserId)
				sText = string.format(tCollectionMahjongr_Text["MsgBox"]["Fluctuate"][1],Get_ItemtypeName(nRewardItemId))
			elseif nItemIdDiff ==0 then
				User_EffectAdd(tCollectionMahjongr_Effect[1],tCollectionMahjongr_Effect[3],nUserId)
				sText = tCollectionMahjongr_Text["MsgBox"]["Fluctuate"][2]
			else
				User_EffectAdd(tCollectionMahjongr_Effect[1],tCollectionMahjongr_Effect[4],nUserId)
				sText = string.format(tCollectionMahjongr_Text["MsgBox"]["Fluctuate"][3],Get_ItemtypeName(nRewardItemId))
			end
			
			
			Sys_MsgBox(sText,"NULL","NULL",nUserId)
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["Itemlog"],nItemId,nRewardItemId),nUserId)
		end
		
	end
end
--十次幻化
function CollectionMahjongr_UserNumSqueezer(nItemId,nUseNum)
	--过期删除
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		if nItemNum > 0 then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["TimeOut"],nItemId,nItemNum))
			end
		end
		return
	end
	
	local nUserId = Get_UserId()
	if Item_ChkMulItem(nItemId,nItemId,nUseNum) then
		local nEventSquCd = tCollectionMahjongr_Stc[3]["EventType"]
		local nTypeSquCd = tCollectionMahjongr_Stc[3]["DataType"]
		-- cd
		if not Task_StcInterval(nEventSquCd,nTypeSquCd,3,0) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TalkChannel"]["ItemCd"])
			return
		end
		
		local nSpace = RewardTemplate_GetRewardSpace(tCollectionMahjongr_RewardItem[nItemId],nUserId)
		--背包空间
		if not(User_CheckLeftSpace(4,nUserId)) then
		-- 提示
			User_TalkChannel2005(tCollectionMahjongr_Text["MsgBox"]["NoSpace"])
			return 
		end
		
		local nMoney = tCollectionMahjongr_Cont["CostMoney"][nItemId]
		if not User_CanPutMoney2Bag(-nMoney*10) then 
			Sys_MsgBox(tCollectionMahjongr_Text["MsgBox"]["NotMoney"])
			return 
		end
		
		--打cd掩码
		if Task_SetStatistic(nEventSquCd,nTypeSquCd,1,1,nUserId) then
			Task_SetStcTimestamp(nEventSquCd,nTypeSquCd,0,nUserId)
			for i = 1,nUseNum do
				if User_AddMoney(-nMoney) then
					Sys_SaveEmoneyBuy(string.format(tCollectionMahjongr_log["EmoneyLog"],nMoney))
					if Item_ChkItem(nItemId,0,0,nUserId) and Item_DelItem(nItemId,0,0,nUserId) then
						--获得奖励
						
						local tReward = RewardTemplate_NewRandom(tCollectionMahjongr_RewardItem[nItemId],1,nUserId)
				
						local nRewardItemId = 0
						if tReward[1]["tAward"][1]["RewardItem"]~= nil then
							nRewardItemId = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
						end
						
						local sMiddle = ""
						
						if nRewardItemId == 0 then
							sMiddle = tCollectionMahjongr_Text["States"][4]
						end
						
						Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["Itemlog"],nItemId,nRewardItemId),nUserId)
						
						local nItemIdDiff = nRewardItemId - nItemId
						if nItemIdDiff >=1 then
							sMiddle =string.format(tCollectionMahjongr_Text["States"][1],nItemIdDiff)
						elseif nItemIdDiff ==0 then
							sMiddle = tCollectionMahjongr_Text["States"][2]
						elseif nItemIdDiff ==-1 then
							sMiddle = tCollectionMahjongr_Text["States"][3]
						end
						
						
						local sRight = ""
						
						if nRewardItemId == 0 then
							sRight = tCollectionMahjongr_Text["Null"]
							
						else
							sRight = Get_ItemtypeName(tonumber(nRewardItemId))
						end
						
						local sLeft = tostring(i)
						
						local sText = Sys_CenterAline(sLeft,10,sMiddle,29,sRight,50)
						
						tItem[nItemId]["Text31"..(i+3)] = string.format(tCollectionMahjongr_Text[3321952]["Text31"..(i+3)], sText)
						
					end
			end
		end
		
		LinkItemGossipFunc_New(nItemId,"3-1")
		end
		
	else
		Sys_MsgBox(tCollectionMahjongr_Text["MsgBox"]["NoMahjongrNum"])
	end
end

--检测选项
function CollectionMahjongr_ChkOption(nItemId)
	local nEventSquNum = tCollectionMahjongr_Stc[nItemId]["EventType"]
	local nTypeSquNum = tCollectionMahjongr_Stc[nItemId]["DataType"]
	
	if Task_ChkStcValue(nEventSquNum,nTypeSquNum,">",0) then
		return true
	else
		return false
	end
	
end


--收纳所有麻将
function CollectionMahjongr_MoveSqueezerBox(nItemId)
	
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		if nItemNum > 0 then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["TimeOut"],nItemId,nItemNum))
			end
		end
		return
	end
	
	local nSum = 0 --记录是否收呐卡牌
	--收纳非赠品麻将
	for i =1 ,#tCollectionMahjongr_Cont["ItemId"] do
		local nSquItemId = tCollectionMahjongr_Cont["ItemId"][i]
		
		if Item_ChkItem(nSquItemId) then
			local nItemNum = Get_CountItemType(nSquItemId,0)
			nSum = nSum + nItemNum
			if Item_ChkMulItem(nSquItemId,nSquItemId,nItemNum) and Item_DelMulItem(nSquItemId,nSquItemId,nItemNum) then
				
				local nEventSquNum = tCollectionMahjongr_Stc[nSquItemId]["EventType"]
				local nTypeSquNum = tCollectionMahjongr_Stc[nSquItemId]["DataType"]
				
				Task_AddStatistic(nEventSquNum,nTypeSquNum,nItemNum,1)
				Task_SetStcTimestamp(nEventSquNum,nTypeSquNum,0)
				
			end
			
		end
		
		--收纳赠品麻将
		local nSquGiftItemId = tCollectionMahjongr_Cont["ItemGiftId"][i]
		if Item_ChkItem(nSquGiftItemId) then
			local nItemGigtNum = Get_CountItemType(nSquGiftItemId,0)
			nSum = nSum + nItemGigtNum
			if Item_ChkMulItem(nSquGiftItemId,nSquGiftItemId,nItemGigtNum) and Item_DelMulItem(nSquGiftItemId,nSquGiftItemId,nItemGigtNum) then
				
				local nEventSquGiftNum = tCollectionMahjongr_Stc[nSquGiftItemId]["EventType"]
				local nTypeSquGiftNum = tCollectionMahjongr_Stc[nSquGiftItemId]["DataType"]
				
				Task_AddStatistic(nEventSquGiftNum,nTypeSquGiftNum,nItemGigtNum,1)
				Task_SetStcTimestamp(nEventSquGiftNum,nTypeSquGiftNum,0)
				
			end
			
		end
		
	end
	
	if nNum == 0 then 
		LinkItemGossipFunc_New(nItemId,"2-2")
	else
		LinkItemGossipFunc_New(nItemId,"2-1")
	end
end

-- 打开3-1
function CollectionMahjongr_MoveSquBag(nItemId)
	tItem[3321984]["OptionFunc311"] = "CollectionMahjongr_MoveSqueezerOneBox</N>" .. nItemId .. "</N>1"
	tItem[3321984]["OptionFunc312"] = "CollectionMahjongr_MoveSqueezerOneBox</N>" .. nItemId .. "</N>5"
	tItem[3321984]["OptionFunc313"] = "CollectionMahjongr_MoveSqueezerOneBox</N>" .. nItemId
	LinkItemGossipFunc_New(3321984,"3-1")
end

--取出麻将
function CollectionMahjongr_MoveSqueezerOneBox(nItemId,nNum)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		if nItemNum > 0 then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["TimeOut"],nItemId,nItemNum))
			end
		end
		return
	end
	
	local nEventSquNum = tCollectionMahjongr_Stc[nItemId]["EventType"]
	local nTypeSquNum = tCollectionMahjongr_Stc[nItemId]["DataType"]
	
	if not Task_ChkStcValue(nEventSquNum,nTypeSquNum,">",0) then
		return 
	end
	
	local tReward = CommonFunc_Copy(tCollectionMahjongr_RewardItem["MoveItem"])
	-- local nNum = 1
	
	--全部取出
	if nNum == nil then
		nNum = Get_UserStatisticValue(nEventSquNum,nTypeSquNum)
	end
	
	--收纳的卡牌不足
	if not Task_ChkStcValue(nEventSquNum,nTypeSquNum,">=",nNum) then
		User_TalkChannel2005(tCollectionMahjongr_Text["TalkChannel"]["MahjongrNum"])
		return 
	end
	
	tReward["RewardItem"][1]["Id"] = nItemId
	tReward["RewardItem"][1]["Attr"] = string.format(tCollectionMahjongr_RewardItem["MoveItem"]["RewardItem"][1]["Attr"],nNum)
	
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not(User_CheckLeftSpace(nSpace)) then
		-- 提示
		LinkItemGossipFunc_New(3321984,"4-2")
		return 
	end
	
	if Task_AddStatistic(nEventSquNum,nTypeSquNum,-nNum,1) then
		Task_SetStcTimestamp(nEventSquNum,nTypeSquNum,0)
		RewardTemplate_UseItem(tReward)
		
		tItem[3321984]["Text411"] = string.format(tCollectionMahjongr_Text[3321984]["Text411"],nNum,Get_ItemtypeName(nItemId))
		LinkItemGossipFunc_New(3321984,"4-1")
	end
end

-- 灵珠兑换
function CollectionMahjongr_UseChgAnima(nItemId,nNum)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		if nItemNum > 0 then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["TimeOut"],nItemId,nItemNum))
			end
		end
		return
	end
	
	if nNum == nil then
		nNum = nItemNum
	end
	
	tItem[nItemId]["Text321"] = string.format(tCollectionMahjongr_Text[3321952]["Text321"],nNum,Get_ItemtypeName(nItemId))
	tItem[nItemId]["OptionFunc321"] = "CollectionMahjongr_UseConfirmChgAnima</N>" .. nItemId .. "</N>" .. nNum
	LinkItemGossipFunc_New(nItemId,"3-2")
end
--确认兑换
function CollectionMahjongr_UseConfirmChgAnima(nItemId,nNum)
	local nItemNum = Get_CountItemType(nItemId,0)
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		if nItemNum > 0 then
		if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
			User_TalkChannel2005(tCollectionMahjongr_Text["TimeOut"])
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["TimeOut"],nItemId,nItemNum))
			end
		end
		return
	end
	
	local tReward = CommonFunc_Copy(tCollectionMahjongr_RewardItem[nItemId][2])
	
	tReward["DeleteItem"][1]["ItemNum"] = nNum
	tReward["RewardItem"][1]["Attr"] = "0 " .. nNum
	
	if not Item_ChkMulItem(nItemId,nItemId,nNum) then
		User_TalkChannel2005(tCollectionMahjongr_Text["TalkChannel"]["ItemNoNum"])
		return
	end
	
	RewardTemplate_UseItem(tReward)
end

function CollectionMahjongr_UseItem(nItemId,nIndex)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tCollectionMahjongr_RewardItem[nItemId][nIndex])
end


------------------------------怪物逻辑-------------------------------------
function CollectionMahjongr_KillReward(nMonsterId)
	if not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"]) then
		return
	end
	
	local nEvent = tCollectionMahjongr_Stc[2]["EventType"]
	local nType = tCollectionMahjongr_Stc[2]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	

	local nIndex = 1
	
	local nPro = Get_NewUserProfession()
	
	-- if nPro>=tCollectionMahjongr_Cont["MinPro"] and nPro <= tCollectionMahjongr_Cont["MaxPro"] then
		-- nIndex = 2
	-- end
	
	local nSpace = RewardTemplate_GetRandomSpace(tCollectionMahjongr_MonsterDrop[3321986],nIndex)
	if not User_CheckLeftSpace(nSpace) then
		return
	end
	
	RewardTemplate_NewRandom(tCollectionMahjongr_MonsterDrop[3321986],nIndex)
	
end

-----------------------------------------时间质检----------------------
function CollectionMahjongr_ClrGlobal()
	local nGlobalId = tCollectionMahjongr_Cont["GlobalId"]
	
	if not (tCollectionMahjongr_ClrGlobalTemp[1] == 1) then
		tCollectionMahjongr_ClrGlobalTemp[1] = 1
		Sys_SetSynaGlobalData(nGlobalId,0,0)
	end
end

function CollectionMahjongr_ClrData()
	tCollectionMahjongr_ClrGlobalTemp = {}
end

--------------------------------Npc模板--------------------------------------
tNpcFace[6197] = 49
tNpcGossip[24326] = tNpcGossip[24326] or DefaultNpc:new{}
tNpcGossip[24326]["OptionHidden"] = 1
tNpcGossip[24326]["DialogueText"] = tCollectionMahjongr_Text[24326]

tNpcGossip[24326]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24326]["tOption1-1"] = {111}
tNpcGossip[24326]["ChkFunc1-1"] = function ()
	
	return Sys_ChkFullTime(tCollectionMahjongr_Cont["BefTime"])
end

--活动后
tNpcGossip[24326]["Text1-2"] = {121,122}
tNpcGossip[24326]["tOption1-2"] = {121}
tNpcGossip[24326]["ChkFunc1-2"] = function ()
	
	return not Sys_ChkFullTime(tCollectionMahjongr_Cont["ActTime"])
end

tNpcGossip[24326]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[24326]["tOption1-3"] = {131,132,136,133}
tNpcGossip[24326]["OptionFunc131"] = "CollectionMahjongr_RewardItemBox</N>24326</N>3321984"
tNpcGossip[24326]["OptionFunc132"] = "CollectionMahjongr_RewardItemBox</N>24326</N>3321984"
tNpcGossip[24326]["OptionPoint133"] = "2-3"
tNpcGossip[24326]["OptionChkFunc131"] = function()
	
	local nEvent = tCollectionMahjongr_Stc[4]["EventType"]
	local nType = tCollectionMahjongr_Stc[4]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		return false
	end
	
	return true
end
tNpcGossip[24326]["OptionChkFunc132"] = function()
	
	local nEvent = tCollectionMahjongr_Stc[4]["EventType"]
	local nType = tCollectionMahjongr_Stc[4]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		local nItemId = 3321984
		if Item_ChkItem(nItemId) then
			return false
		else
			return true
		end
	end
	
	return false
end
tNpcGossip[24326]["OptionChkFunc136"] = function()
	
	local nEvent = tCollectionMahjongr_Stc[4]["EventType"]
	local nType = tCollectionMahjongr_Stc[4]["DataType"]
	
	if Task_ChkStcValue(nEvent,nType,"==",1) then
		local nItemId = 3321984
		if Item_ChkItem(nItemId) then
			return true
		else
			return false
		end
	end
	return false
end


tNpcGossip[24326]["Text2-1"] = {211,212}
tNpcGossip[24326]["tOption2-1"] = {211}

tNpcGossip[24326]["Text2-2"] = {221}
tNpcGossip[24326]["tOption2-2"] = {221}

tNpcGossip[24326]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312}
tNpcGossip[24326]["tOption2-3"] = {231}


tNpcGossip[24326]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114,3115}
tNpcGossip[24326]["tOption3-1"] = {311}
tNpcGossip[24326]["OptionPoint311"] = "1-1"


--------------------------------物品模板--------------------------------------
tItemFace[3321951] = 2331
tItemFace[3321952] = 2332
tItemFace[3321953] = 2333
tItemFace[3321954] = 2334
tItemFace[3321955] = 2335
tItemFace[3321956] = 2336
tItemFace[3321957] = 2337
tItemFace[3321958] = 2338
tItemFace[3321959] = 2339
tItemFace[3321960] = 2340
tItemFace[3321961] = 2341
tItemFace[3321962] = 2342
tItemFace[3321963] = 2343
tItemFace[3321964] = 2344
tItemFace[3321965] = 2345
tItemFace[3321966] = 2346

tItemFace[3321967] = 2331
tItemFace[3321968] = 2332
tItemFace[3321969] = 2333
tItemFace[3321970] = 2334
tItemFace[3321971] = 2335
tItemFace[3321972] = 2336
tItemFace[3321973] = 2337
tItemFace[3321974] = 2338
tItemFace[3321975] = 2339
tItemFace[3321976] = 2340
tItemFace[3321977] = 2341
tItemFace[3321978] = 2342
tItemFace[3321979] = 2343
tItemFace[3321980] = 2344
tItemFace[3321981] = 2345
tItemFace[3321982] = 2346

tItemFace[3321984] = 2330

tItem[3321951] = tItem[3321951] or {}
tItem[3321951]["DialogueText"] = tCollectionMahjongr_Text[3321951]
tItem[3321951]["Text1-1"] = {111}
tItem[3321951]["tOption1-1"] = {111,112,113,114}
tItem[3321951]["OptionPoint111"] = "2-1"
tItem[3321951]["OptionPoint112"] = "2-2"
tItem[3321951]["OptionFunc113"] = "NpcPosition_PathFind</N>24326"
tItem[3321951]["ChkFunc1-1"] = function ()
	local nCost = tCollectionMahjongr_Cont["CostMoney"][3321951]
	tItem[3321951]["Text111"] = string.format(tCollectionMahjongr_Text[3321951]["Text111"],nCost,Get_ItemtypeName(3321951),Get_ItemtypeName(3321952),Get_ItemtypeName(3321954))
	return true
end

tItem[3321951]["Text2-1"] = {211,212}
tItem[3321951]["tOption2-1"] = {211,212}
tItem[3321951]["OptionFunc211"] = "CollectionMahjongr_UserSqueezer</N>3321951"


tItem[3321951]["Text2-2"] = {221}
tItem[3321951]["tOption2-2"] = {221,222}
tItem[3321951]["OptionFunc221"] = "CollectionMahjongr_UserNumSqueezer</N>3321951</N>10"

tItem[3321951]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
tItem[3321951]["tOption3-1"] = {311}


for nItemId =3321952 , 3321959 do
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] = tCollectionMahjongr_Text[3321952]
	tItem[nItemId]["Text1-1"] = {111}
	tItem[nItemId]["tOption1-1"] = {111,112,113,114}
	tItem[nItemId]["OptionPoint111"] = "2-1"
	tItem[nItemId]["OptionPoint112"] = "2-2"
	tItem[nItemId]["OptionFunc113"] = "NpcPosition_PathFind</N>24326"
	tItem[nItemId]["ChkFunc1-1"] = function ()
		local nCost = tCollectionMahjongr_Cont["CostMoney"][nItemId]
		tItem[nItemId]["Text111"] = string.format(tCollectionMahjongr_Text[3321952]["Text111"],nCost,Get_ItemtypeName(nItemId-1),Get_ItemtypeName(nItemId),Get_ItemtypeName(nItemId+1),Get_ItemtypeName(nItemId+3))
		return true
	end
	
	tItem[nItemId]["Text2-1"] = {211,212}
	tItem[nItemId]["tOption2-1"] = {211,212}
	tItem[nItemId]["OptionFunc211"] = "CollectionMahjongr_UserSqueezer</N>"..nItemId
	
	
	tItem[nItemId]["Text2-2"] = {221}
	tItem[nItemId]["tOption2-2"] = {221,222}
	tItem[nItemId]["OptionFunc221"] = "CollectionMahjongr_UserNumSqueezer</N>"..nItemId.."</N>10"
	
	tItem[nItemId]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
	tItem[nItemId]["tOption3-1"] = {311}
	
end

for nItemId =3321960 , 3321964 do
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] = tCollectionMahjongr_Text[3321952]
	tItem[nItemId]["Text1-1"] = {111}
	tItem[nItemId]["tOption1-1"] = {111,112,113,115,114}
	tItem[nItemId]["OptionPoint111"] = "2-1"
	tItem[nItemId]["OptionPoint112"] = "2-2"
	tItem[nItemId]["OptionFunc113"] = "NpcPosition_PathFind</N>24326"
	-- tItem[nItemId]["OptionFunc115"] = "CollectionMahjongr_UseChgAnima</N>"..nItemId
	tItem[nItemId]["OptionPoint115"] = "2-3"
	tItem[nItemId]["ChkFunc1-1"] = function ()
		local nCost = tCollectionMahjongr_Cont["CostMoney"][nItemId]
		
		tItem[nItemId]["Option115"] = string.format(tCollectionMahjongr_Text[3321952]["Option115"],Get_ItemtypeName(tCollectionMahjongr_Cont["ChgAnima"][nItemId]))
		
		if nItemId == 3321964 then
			tItem[nItemId]["Text111"] = string.format(tCollectionMahjongr_Text[3321952]["Text111"],nCost,Get_ItemtypeName(nItemId-1),Get_ItemtypeName(nItemId),Get_ItemtypeName(nItemId+1),Get_ItemtypeName(nItemId+2))
			tItem[nItemId]["tOption1-1"] = {111,113,115,114}
		else
			tItem[nItemId]["Text111"] = string.format(tCollectionMahjongr_Text[3321952]["Text111"],nCost,Get_ItemtypeName(nItemId-1),Get_ItemtypeName(nItemId),Get_ItemtypeName(nItemId+1),Get_ItemtypeName(nItemId+3))
			tItem[nItemId]["tOption1-1"] = {111,112,113,115,114}
		end
		
		return true
	end
	
	tItem[nItemId]["Text2-1"] = {211,212}
	tItem[nItemId]["tOption2-1"] = {211,212}
	tItem[nItemId]["OptionFunc211"] = "CollectionMahjongr_UserSqueezer</N>"..nItemId
	
	
	tItem[nItemId]["Text2-2"] = {221}
	tItem[nItemId]["tOption2-2"] = {221,222}
	tItem[nItemId]["OptionFunc221"] = "CollectionMahjongr_UserNumSqueezer</N>"..nItemId.."</N>10"
	
	tItem[nItemId]["Text2-3"] = {231}
	tItem[nItemId]["tOption2-3"] = {231,232,233}
	tItem[nItemId]["OptionFunc231"] = "CollectionMahjongr_UseChgAnima</N>"..nItemId.."</N>1"
	tItem[nItemId]["OptionFunc232"] = "CollectionMahjongr_UseChgAnima</N>"..nItemId.."</N>5"
	tItem[nItemId]["OptionFunc233"] = "CollectionMahjongr_UseChgAnima</N>"..nItemId
	tItem[nItemId]["ChkFunc2-3"] = function ()
		tItem[nItemId]["Text231"] = string.format(tCollectionMahjongr_Text[3321952]["Text231"],Get_ItemtypeName(nItemId),Get_ItemtypeName(tCollectionMahjongr_Cont["ChgAnima"][nItemId]))
		return true
	end
	
	
	tItem[nItemId]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
	tItem[nItemId]["tOption3-1"] = {311}
	
	tItem[nItemId]["Text3-2"] = {321}
	tItem[nItemId]["tOption3-2"] = {321,322}
	
end

for nItemId =3321965 , 3321966 do
	tItem[nItemId] = tItem[nItemId] or {}
	tItem[nItemId]["DialogueText"] = tCollectionMahjongr_Text[3321952]
	tItem[nItemId]["Text1-1"] = {231}
	tItem[nItemId]["tOption1-1"] = {231,232,233}
	tItem[nItemId]["OptionFunc231"] = "CollectionMahjongr_UseChgAnima</N>"..nItemId.."</N>1"
	tItem[nItemId]["OptionFunc232"] = "CollectionMahjongr_UseChgAnima</N>"..nItemId.."</N>5"
	tItem[nItemId]["OptionFunc233"] = "CollectionMahjongr_UseChgAnima</N>"..nItemId
	tItem[nItemId]["ChkFunc1-1"] = function ()
		tItem[nItemId]["Text231"] = string.format(tCollectionMahjongr_Text[3321952]["Text231"],Get_ItemtypeName(nItemId),Get_ItemtypeName(tCollectionMahjongr_Cont["ChgAnima"][nItemId]))
		return true
	end
	
	tItem[nItemId]["Text3-2"] = {321}
	tItem[nItemId]["tOption3-2"] = {321,322}
end


-- tItem[3321967] = tItem[3321967] or {}
-- tItem[3321967]["DialogueText"] = tCollectionMahjongr_Text[3321951]
-- tItem[3321967]["Text1-1"] = {111}
-- tItem[3321967]["tOption1-1"] = {111,112,113,114}
-- tItem[3321967]["OptionPoint111"] = "2-1"
-- tItem[3321967]["OptionPoint112"] = "2-2"
-- tItem[3321967]["OptionFunc113"] = "NpcPosition_PathFind</N>24326"
-- tItem[3321967]["ChkFunc1-1"] = function ()
	-- tItem[3321967]["Text111"] = string.format(tCollectionMahjongr_Text[3321951]["Text111"],Get_ItemtypeName(3321951),Get_ItemtypeName(3321952),Get_ItemtypeName(3321954))
	-- return true
-- end

-- tItem[3321967]["Text2-1"] = {211,212}
-- tItem[3321967]["tOption2-1"] = {211,212}
-- tItem[3321967]["OptionFunc211"] = "CollectionMahjongr_UserSqueezer</N>3321967"


-- tItem[3321967]["Text2-2"] = {221}
-- tItem[3321967]["tOption2-2"] = {221,222}
-- tItem[3321967]["OptionFunc221"] = "CollectionMahjongr_UserNumSqueezer</N>3321967</N>10"

-- tItem[3321967]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
-- tItem[3321967]["tOption3-1"] = {311}


-- for nItemId =3321968 , 3321980 do
	-- tItem[nItemId] = tItem[nItemId] or {}
	-- tItem[nItemId]["DialogueText"] = tCollectionMahjongr_Text[3321952]
	-- tItem[nItemId]["Text1-1"] = {111}
	-- tItem[nItemId]["tOption1-1"] = {111,112,113,114}
	-- tItem[nItemId]["OptionPoint111"] = "2-1"
	-- tItem[nItemId]["OptionPoint112"] = "2-2"
	-- tItem[nItemId]["OptionFunc113"] = "NpcPosition_PathFind</N>24326"
	-- tItem[nItemId]["ChkFunc1-1"] = function ()
		-- tItem[nItemId]["Text111"] = string.format(tCollectionMahjongr_Text[3321952]["Text111"],Get_ItemtypeName(nItemId-1),Get_ItemtypeName(nItemId),Get_ItemtypeName(nItemId+1),Get_ItemtypeName(nItemId+3))
		
		-- return true
	-- end
	
	-- tItem[nItemId]["Text2-1"] = {211,212}
	-- tItem[nItemId]["tOption2-1"] = {211,212}
	-- tItem[nItemId]["OptionFunc211"] = "CollectionMahjongr_UserSqueezer</N>"..nItemId
	
	
	-- tItem[nItemId]["Text2-2"] = {221}
	-- tItem[nItemId]["tOption2-2"] = {221,222}
	-- tItem[nItemId]["OptionFunc221"] = "CollectionMahjongr_UserNumSqueezer</N>"..nItemId.."</N>10"
	
	-- tItem[nItemId]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114}
	-- tItem[nItemId]["tOption3-1"] = {311}
	
-- end


tItem[3321985] = tItem[3321985] or {}
tItem[3321985]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_RandomReward(tCollectionMahjongr_RewardItem[nItemId],1)
end

tItem[3321986] = tItem[3321985] or {}
tItem[3321987] = tItem[3321985] or {}
tItem[3321988] = tItem[3321985] or {}
tItem[3321989] = tItem[3321985] or {}

tItem[3321990] = tItem[3321990] or {}
tItem[3321990]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end

	if RewardTemplate_RandomReward(tCollectionMahjongr_RewardItem[nItemId],1) then
		local nRankData = tCollectionMahjongr_Cont["Integral"][nItemId]
		
		local nEventRank = tCollectionMahjongr_Stc[1]["EventType"]
		local nTypeRank = tCollectionMahjongr_Stc[1]["DataType"]
		
		if Task_AddStatistic(nEventRank,nTypeRank,nRankData,1) then
			Task_SetStcTimestamp(nEventRank,nTypeRank,0)
			Sys_SaveActionFestivalLog(string.format(tCollectionMahjongr_log["Integrallog"],nItemId,nRankData))
			User_TalkChannel2005(tCollectionMahjongr_Text["TalkChannel"]["RewardPoint"][nItemId])
			
		end
	end
end

tItem[3321991] = tItem[3321990] or {}


tItem[3321992] = tItem[3321992] or {}
tItem[3321992]["Function"] = function(nItemId,sItemName)
	--判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItem(tCollectionMahjongr_RewardItem[nItemId])
end

tItem[3321993] = tItem[3321992] or {}
tItem[3321994] = tItem[3321992] or {}
tItem[3321995] = tItem[3321992] or {}
tItem[3321996] = tItem[3321992] or {}
tItem[3321997] = tItem[3321992] or {}
tItem[3321998] = tItem[3321992] or {}
tItem[3321999] = tItem[3321992] or {}
tItem[3322000] = tItem[3321992] or {}
tItem[3322001] = tItem[3321992] or {}
tItem[3322054] = tItem[3321992] or {}
tItem[3326542] = tItem[3321992] or {}
tItem[3326544] = tItem[3321992] or {}
tItem[3326545] = tItem[3321992] or {}

tItemFace[3326543] = 1165
tItem[3326543] = tItem[3326543] or {}
tItem[3326543]["DialogueText"] = tCollectionMahjongr_Text[3326543]
tItem[3326543]["Text1-1"] = {111}
tItem[3326543]["tOption1-1"] = {111,112}
tItem[3326543]["OptionFunc111"] = "CollectionMahjongr_UseItem</N>3326543</N>1"
tItem[3326543]["OptionFunc112"] = "CollectionMahjongr_UseItem</N>3326543</N>2"


tItem[3321984] = tItem[3321984] or {}
tItem[3321984]["DialogueText"] = tCollectionMahjongr_Text[3321984]
tItem[3321984]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119}
tItem[3321984]["tOption1-1"] = {111,112,113}
tItem[3321984]["OptionFunc111"] = "CollectionMahjongr_MoveSqueezerBox</N>3321984"
tItem[3321984]["OptionPoint112"] = "2-3"
tItem[3321984]["ChkFunc1-1"] = function ()
	local tSqueezerNum = {}
	for i =1 ,#tCollectionMahjongr_Cont["ItemId"] do
		local nSquItemId = tCollectionMahjongr_Cont["ItemId"][i]
		local nEventSquNum = tCollectionMahjongr_Stc[nSquItemId]["EventType"]
		local nTypeSquNum = tCollectionMahjongr_Stc[nSquItemId]["DataType"]
		tSqueezerNum[i] = tonumber(Get_UserStatisticValue(nEventSquNum,nTypeSquNum))
		
	end
	
	-- local tSqueezerGiftNum = {}
	-- for j =1 ,#tCollectionMahjongr_Cont["ItemGiftId"] do
		-- local nSquItemId = tCollectionMahjongr_Cont["ItemGiftId"][j]
		-- local nEventSquNum = tCollectionMahjongr_Stc[nSquItemId]["EventType"]
		-- local nTypeSquNum = tCollectionMahjongr_Stc[nSquItemId]["DataType"]
		-- tSqueezerGiftNum[j] = tonumber(Get_UserStatisticValue(nEventSquNum,nTypeSquNum))
		
	-- end
	
	local sLeft = ""
	local sMiddle = ""
	local sRight = ""
	local sLast = ""
	
	for k=1,16 do
		
		sLeft = Get_ItemtypeName(k+3321950)
		sMiddle = tSqueezerNum[k]
		-- sRight = Get_ItemtypeName(k+3321966)
		-- sLast = tSqueezerGiftNum[k]
		
		local sText = Sys_CenterAline(sLeft,10,sMiddle,24)
		
		tItem[3321984]["Text11"..(k+2)] = string.format(tCollectionMahjongr_Text[3321984]["Text11"..(k+2)], sText)
	end
	return true
end


tItem[3321984]["Text2-1"] = {211}
tItem[3321984]["tOption2-1"] = {211}

tItem[3321984]["Text2-2"] = {221}
tItem[3321984]["tOption2-2"] = {221}

tItem[3321984]["Text2-3"] = {231}
tItem[3321984]["tOption2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315,2316}
tItem[3321984]["OptionFunc231"] =  "CollectionMahjongr_MoveSquBag</N>3321951"
tItem[3321984]["OptionFunc232"] =  "CollectionMahjongr_MoveSquBag</N>3321952"
tItem[3321984]["OptionFunc233"] =  "CollectionMahjongr_MoveSquBag</N>3321953"
tItem[3321984]["OptionFunc234"] =  "CollectionMahjongr_MoveSquBag</N>3321954"
tItem[3321984]["OptionFunc235"] =  "CollectionMahjongr_MoveSquBag</N>3321955"
tItem[3321984]["OptionFunc236"] =  "CollectionMahjongr_MoveSquBag</N>3321956"
tItem[3321984]["OptionFunc237"] =  "CollectionMahjongr_MoveSquBag</N>3321957"
tItem[3321984]["OptionFunc238"] =  "CollectionMahjongr_MoveSquBag</N>3321958"
tItem[3321984]["OptionFunc239"] =  "CollectionMahjongr_MoveSquBag</N>3321959"
tItem[3321984]["OptionFunc2310"] = "CollectionMahjongr_MoveSquBag</N>3321960"
tItem[3321984]["OptionFunc2311"] = "CollectionMahjongr_MoveSquBag</N>3321961"
tItem[3321984]["OptionFunc2312"] = "CollectionMahjongr_MoveSquBag</N>3321962"
tItem[3321984]["OptionFunc2313"] = "CollectionMahjongr_MoveSquBag</N>3321963"
tItem[3321984]["OptionFunc2314"] = "CollectionMahjongr_MoveSquBag</N>3321964"
tItem[3321984]["OptionFunc2315"] = "CollectionMahjongr_MoveSquBag</N>3321965"
tItem[3321984]["OptionFunc2316"] = "CollectionMahjongr_MoveSquBag</N>3321966"
-- tItem[3321984]["OptionFunc241"] =  "CollectionMahjongr_MoveSquBag</N>3321967"
-- tItem[3321984]["OptionFunc242"] =  "CollectionMahjongr_MoveSquBag</N>3321968"
-- tItem[3321984]["OptionFunc243"] =  "CollectionMahjongr_MoveSquBag</N>3321969"
-- tItem[3321984]["OptionFunc244"] =  "CollectionMahjongr_MoveSquBag</N>3321970"
-- tItem[3321984]["OptionFunc245"] =  "CollectionMahjongr_MoveSquBag</N>3321971"
-- tItem[3321984]["OptionFunc246"] =  "CollectionMahjongr_MoveSquBag</N>3321972"
-- tItem[3321984]["OptionFunc247"] =  "CollectionMahjongr_MoveSquBag</N>3321973"
-- tItem[3321984]["OptionFunc248"] =  "CollectionMahjongr_MoveSquBag</N>3321974"
-- tItem[3321984]["OptionFunc249"] =  "CollectionMahjongr_MoveSquBag</N>3321975"
-- tItem[3321984]["OptionFunc2410"] = "CollectionMahjongr_MoveSquBag</N>3321976"
-- tItem[3321984]["OptionFunc2411"] = "CollectionMahjongr_MoveSquBag</N>3321977"
-- tItem[3321984]["OptionFunc2412"] = "CollectionMahjongr_MoveSquBag</N>3321978"
-- tItem[3321984]["OptionFunc2413"] = "CollectionMahjongr_MoveSquBag</N>3321979"
-- tItem[3321984]["OptionFunc2414"] = "CollectionMahjongr_MoveSquBag</N>3321980"
-- tItem[3321984]["OptionFunc2415"] = "CollectionMahjongr_MoveSquBag</N>3321981"
-- tItem[3321984]["OptionFunc2416"] = "CollectionMahjongr_MoveSquBag</N>3321982"
tItem[3321984]["OptionChkFunc231"] = function()
	return CollectionMahjongr_ChkOption(3321951)
end
tItem[3321984]["OptionChkFunc232"] = function()
	return CollectionMahjongr_ChkOption(3321952)
end
tItem[3321984]["OptionChkFunc233"] = function()
	return CollectionMahjongr_ChkOption(3321953)
end
tItem[3321984]["OptionChkFunc234"] = function()
	return CollectionMahjongr_ChkOption(3321954)
end
tItem[3321984]["OptionChkFunc235"] = function()
	return CollectionMahjongr_ChkOption(3321955)
end
tItem[3321984]["OptionChkFunc236"] = function()
	return CollectionMahjongr_ChkOption(3321956)
end
tItem[3321984]["OptionChkFunc237"] = function()
	return CollectionMahjongr_ChkOption(3321957)
end
tItem[3321984]["OptionChkFunc238"] = function()
	return CollectionMahjongr_ChkOption(3321958)
end
tItem[3321984]["OptionChkFunc239"] = function()
	return CollectionMahjongr_ChkOption(3321959)
end
tItem[3321984]["OptionChkFunc2310"] = function()
	return CollectionMahjongr_ChkOption(3321960)
end
tItem[3321984]["OptionChkFunc2311"] = function()
	return CollectionMahjongr_ChkOption(3321961)
end
tItem[3321984]["OptionChkFunc2312"] = function()
	return CollectionMahjongr_ChkOption(3321962)
end
tItem[3321984]["OptionChkFunc2313"] = function()
	return CollectionMahjongr_ChkOption(3321963)
end
tItem[3321984]["OptionChkFunc2314"] = function()
	return CollectionMahjongr_ChkOption(3321964)
end
tItem[3321984]["OptionChkFunc2315"] = function()
	return CollectionMahjongr_ChkOption(3321965)
end
tItem[3321984]["OptionChkFunc2316"] = function()
	return CollectionMahjongr_ChkOption(3321966)
end
-- tItem[3321984]["OptionChkFunc241"] = function()
	-- return CollectionMahjongr_ChkOption(3321967)
-- end
-- tItem[3321984]["OptionChkFunc242"] = function()
	-- return CollectionMahjongr_ChkOption(3321968)
-- end
-- tItem[3321984]["OptionChkFunc243"] = function()
	-- return CollectionMahjongr_ChkOption(3321969)
-- end
-- tItem[3321984]["OptionChkFunc244"] = function()
	-- return CollectionMahjongr_ChkOption(3321970)
-- end
-- tItem[3321984]["OptionChkFunc245"] = function()
	-- return CollectionMahjongr_ChkOption(3321971)
-- end
-- tItem[3321984]["OptionChkFunc246"] = function()
	-- return CollectionMahjongr_ChkOption(3321972)
-- end
-- tItem[3321984]["OptionChkFunc247"] = function()
	-- return CollectionMahjongr_ChkOption(3321973)
-- end
-- tItem[3321984]["OptionChkFunc248"] = function()
	-- return CollectionMahjongr_ChkOption(3321974)
-- end
-- tItem[3321984]["OptionChkFunc249"] = function()
	-- return CollectionMahjongr_ChkOption(3321975)
-- end
-- tItem[3321984]["OptionChkFunc2410"] = function()
	-- return CollectionMahjongr_ChkOption(3321976)
-- end
-- tItem[3321984]["OptionChkFunc2411"] = function()
	-- return CollectionMahjongr_ChkOption(3321977)
-- end
-- tItem[3321984]["OptionChkFunc2412"] = function()
	-- return CollectionMahjongr_ChkOption(3321978)
-- end
-- tItem[3321984]["OptionChkFunc2413"] = function()
	-- return CollectionMahjongr_ChkOption(3321979)
-- end
-- tItem[3321984]["OptionChkFunc2414"] = function()
	-- return CollectionMahjongr_ChkOption(3321980)
-- end
-- tItem[3321984]["OptionChkFunc2415"] = function()
	-- return CollectionMahjongr_ChkOption(3321981)
-- end
-- tItem[3321984]["OptionChkFunc2416"] = function()
	-- return CollectionMahjongr_ChkOption(3321982)
-- end



tItem[3321984]["Text3-1"] = {311}
tItem[3321984]["tOption3-1"] = {311,312,313}
-- tItem[3321984]["OptionFunc311"] = "CollectionMahjongr_MoveSqueezerOneBox</N>%d"
-- tItem[3321984]["OptionFunc312"] = "CollectionMahjongr_MoveSqueezerAllBox</N>%d"

tItem[3321984]["Text4-1"] = {411}
tItem[3321984]["tOption4-1"] = {411,412}
tItem[3321984]["OptionPoint411"] = "2-3"

tItem[3321984]["Text4-2"] = {421}
tItem[3321984]["tOption4-2"] = {421}

---------------------------------怪物掉落--------------------------------------------
--全区全服全片区怪物掉落
local tCollectionMahjongr_KillReward = {}
	tCollectionMahjongr_KillReward["ActivityTime"] = tCollectionMahjongr_Cont["ActTime"]
	tCollectionMahjongr_KillReward["Function"]=CollectionMahjongr_KillReward
	table.insert(tMonsterDrop_AreaLoad,tCollectionMahjongr_KillReward)	
	
local tCollectionMahjongr_KillReward_NoGift = {}
tCollectionMahjongr_KillReward_NoGift["ActivityTime"] = tCollectionMahjongr_Cont["ActTime"]
tCollectionMahjongr_KillReward_NoGift["Function"] = CollectionMahjongr_KillReward
tCollectionMahjongr_KillReward_NoGift["MonsterId"] = {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tCollectionMahjongr_KillReward_NoGift)
	
------------------------------------上线自检------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,CollectionMahjongr_LogIn)

--------------------------------时间自检------------------------------------
local tCollectionMahjongr_ClrGlobal = {}
tCollectionMahjongr_ClrGlobal["Type"] = 6  -- 其他
tCollectionMahjongr_ClrGlobal["TimeType"] = 5  -- 日时间
tCollectionMahjongr_ClrGlobal["Multiple"] = {}
tCollectionMahjongr_ClrGlobal["Time"] = "00 02"
tCollectionMahjongr_ClrGlobal["Func"] = CollectionMahjongr_ClrGlobal
table.insert(tSystemTime_InitialData,tCollectionMahjongr_ClrGlobal)

local tCollectionMahjongr_ClrData = {}
tCollectionMahjongr_ClrData["Type"] = 6  -- 其他
tCollectionMahjongr_ClrData["TimeType"] = 5  -- 日时间
tCollectionMahjongr_ClrData["Multiple"] = {}
tCollectionMahjongr_ClrData["Time"] = "03 05"
tCollectionMahjongr_ClrData["Func"] = CollectionMahjongr_ClrData
table.insert(tSystemTime_InitialData,tCollectionMahjongr_ClrData)