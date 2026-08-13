------------------------------------------------------------------------------------
--Name：	190428[英文征服][活动脚本]天下第一活动（5月14日-6月3日）
--Creator:	林旭
--Created:	2019/04/30
------------------------------------------------------------------------------------

----------------------------------表配置部分--------------------------------------------

local sTheFirstMonster_Log = "0,0,0,0,12001400,2,%s,%s"
-- 怪物掉落
local tTheFirstMonster_Drop = {}
	-- ===第1层小怪
	-- ===索引: tTheFirstMonster_Drop[5000]
	tTheFirstMonster_Drop[5000] = {}
	tTheFirstMonster_Drop[5000]["LogId"] = 12001400
	-- 2层传送翎 - 5.00%
	tTheFirstMonster_Drop[5000][1] = {}
	tTheFirstMonster_Drop[5000][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5000][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5000][1]["ItemChance"] = 500
	tTheFirstMonster_Drop[5000][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5000][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5000][1]["RewardItem"][1]["Id"] = 3600080 -- 【库】2层传送翎[属性:139], 【表格】2层传送翎
	tTheFirstMonster_Drop[5000][1]["RewardItem"][1]["Attr"] = "0 1" -- 2层传送翎*1
	tTheFirstMonster_Drop[5000][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5000][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5000][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5001] = {}
	-- ===第2层小怪
	-- ===索引: tTheFirstMonster_Drop[5001]
	tTheFirstMonster_Drop[5001]["LogId"] = 12001400
	-- 3层传送翎 - 5.00%
	tTheFirstMonster_Drop[5001][1] = {}
	tTheFirstMonster_Drop[5001][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5001][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5001][1]["ItemChance"] = 500
	tTheFirstMonster_Drop[5001][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5001][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5001][1]["RewardItem"][1]["Id"] = 3600081 -- 【库】3层传送翎[属性:139], 【表格】3层传送翎
	tTheFirstMonster_Drop[5001][1]["RewardItem"][1]["Attr"] = "0 1" -- 3层传送翎*1
	tTheFirstMonster_Drop[5001][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5001][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5001][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5002] = {}
	-- ===第3层小怪
	-- ===索引: tTheFirstMonster_Drop[5002]
	tTheFirstMonster_Drop[5002]["LogId"] = 12001400
	-- 4层传送翎 - 5.00%
	tTheFirstMonster_Drop[5002][1] = {}
	tTheFirstMonster_Drop[5002][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5002][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5002][1]["ItemChance"] = 500
	tTheFirstMonster_Drop[5002][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5002][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5002][1]["RewardItem"][1]["Id"] = 3600082 -- 【库】4层传送翎[属性:139], 【表格】4层传送翎
	tTheFirstMonster_Drop[5002][1]["RewardItem"][1]["Attr"] = "0 1" -- 4层传送翎*1
	tTheFirstMonster_Drop[5002][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5002][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5002][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5003] = {}
	-- ===第4层小怪
	-- ===索引: tTheFirstMonster_Drop[5003]
	tTheFirstMonster_Drop[5003]["LogId"] = 12001400
	-- 5层传送翎 - 4.00%
	tTheFirstMonster_Drop[5003][1] = {}
	tTheFirstMonster_Drop[5003][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5003][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5003][1]["ItemChance"] = 400
	tTheFirstMonster_Drop[5003][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5003][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5003][1]["RewardItem"][1]["Id"] = 3600083 -- 【库】5层传送翎[属性:139], 【表格】5层传送翎
	tTheFirstMonster_Drop[5003][1]["RewardItem"][1]["Attr"] = "0 1" -- 5层传送翎*1
	tTheFirstMonster_Drop[5003][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5003][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5003][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5004] = {}
	-- ===第5层小怪
	-- ===索引: tTheFirstMonster_Drop[5004]
	tTheFirstMonster_Drop[5004]["LogId"] = 12001400
	-- 6层传送翎 - 4.00%
	tTheFirstMonster_Drop[5004][1] = {}
	tTheFirstMonster_Drop[5004][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5004][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5004][1]["ItemChance"] = 400
	tTheFirstMonster_Drop[5004][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5004][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5004][1]["RewardItem"][1]["Id"] = 3600084 -- 【库】6层传送翎[属性:139], 【表格】6层传送翎
	tTheFirstMonster_Drop[5004][1]["RewardItem"][1]["Attr"] = "0 1" -- 6层传送翎*1
	tTheFirstMonster_Drop[5004][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5004][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5004][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5005] = {}
	-- ===第6层小怪
	-- ===索引: tTheFirstMonster_Drop[5005]
	tTheFirstMonster_Drop[5005]["LogId"] = 12001400
	-- 7层传送翎 - 4.00%
	tTheFirstMonster_Drop[5005][1] = {}
	tTheFirstMonster_Drop[5005][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5005][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5005][1]["ItemChance"] = 400
	tTheFirstMonster_Drop[5005][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5005][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5005][1]["RewardItem"][1]["Id"] = 3600085 -- 【库】7层传送翎[属性:139], 【表格】7层传送翎
	tTheFirstMonster_Drop[5005][1]["RewardItem"][1]["Attr"] = "0 1" -- 7层传送翎*1
	tTheFirstMonster_Drop[5005][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5005][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5005][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5006] = {}
	-- ===第7层小怪
	-- ===索引: tTheFirstMonster_Drop[5006]
	tTheFirstMonster_Drop[5006]["LogId"] = 12001400
	-- 8层传送翎 - 3.00%
	tTheFirstMonster_Drop[5006][1] = {}
	tTheFirstMonster_Drop[5006][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5006][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5006][1]["ItemChance"] = 300
	tTheFirstMonster_Drop[5006][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5006][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5006][1]["RewardItem"][1]["Id"] = 3600086 -- 【库】8层传送翎[属性:139], 【表格】8层传送翎
	tTheFirstMonster_Drop[5006][1]["RewardItem"][1]["Attr"] = "0 1" -- 8层传送翎*1
	tTheFirstMonster_Drop[5006][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5006][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5006][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5007] = {}
	-- ===第8层小怪
	-- ===索引: tTheFirstMonster_Drop[5007]
	tTheFirstMonster_Drop[5007]["LogId"] = 12001400
	-- 9层传送翎 - 3.00%
	tTheFirstMonster_Drop[5007][1] = {}
	tTheFirstMonster_Drop[5007][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5007][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5007][1]["ItemChance"] = 300
	tTheFirstMonster_Drop[5007][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5007][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5007][1]["RewardItem"][1]["Id"] = 3600087 -- 【库】9层传送翎[属性:139], 【表格】9层传送翎
	tTheFirstMonster_Drop[5007][1]["RewardItem"][1]["Attr"] = "0 1" -- 9层传送翎*1
	tTheFirstMonster_Drop[5007][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5007][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5007][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5008] = {}
	-- ===第9层小怪
	-- ===索引: tTheFirstMonster_Drop[5008]
	tTheFirstMonster_Drop[5008]["LogId"] = 12001400
	-- 10层传送翎 - 3.00%
	tTheFirstMonster_Drop[5008][1] = {}
	tTheFirstMonster_Drop[5008][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5008][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5008][1]["ItemChance"] = 300
	tTheFirstMonster_Drop[5008][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5008][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5008][1]["RewardItem"][1]["Id"] = 3600088 -- 【库】10层传送翎[属性:139], 【表格】10层传送翎
	tTheFirstMonster_Drop[5008][1]["RewardItem"][1]["Attr"] = "0 1" -- 10层传送翎*1
	tTheFirstMonster_Drop[5008][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5008][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5008][1]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5009] = {}
	-- ===第10层小怪
	-- ===索引: tTheFirstMonster_Drop[5009]
	tTheFirstMonster_Drop[5009]["LogId"] = 12001400
	-- 礼包碎片 - 30.00%
	tTheFirstMonster_Drop[5009][1] = {}
	tTheFirstMonster_Drop[5009][1]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5009][1]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5009][1]["ItemChance"] = 3000
	tTheFirstMonster_Drop[5009][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5009][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5009][1]["RewardItem"][1]["Id"] = 3600091 -- 【库】豪侠宝石碎片[属性:139], 【表格】礼包碎片
	tTheFirstMonster_Drop[5009][1]["RewardItem"][1]["Attr"] = "0 1" -- 豪侠宝石碎片*1
	tTheFirstMonster_Drop[5009][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5009][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5009][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1阶灵珠 - 5.00%
	tTheFirstMonster_Drop[5009][2] = {}
	tTheFirstMonster_Drop[5009][2]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5009][2]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5009][2]["ItemChance"] = 500
	tTheFirstMonster_Drop[5009][2]["RewardItem"] = {}
	tTheFirstMonster_Drop[5009][2]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5009][2]["RewardItem"][1]["Id"] = 3600099 -- 【库】1阶灵珠礼包[属性:139], 【表格】1阶灵珠
	tTheFirstMonster_Drop[5009][2]["RewardItem"][1]["Attr"] = "0 1" -- 1阶灵珠礼包*1
	tTheFirstMonster_Drop[5009][2]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5009][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5009][2]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53373, data0）】全服限量:（90）
	tTheFirstMonster_Drop[5009][2]["GlobalId"] = 53373
	tTheFirstMonster_Drop[5009][2]["Pos"] = 0
	tTheFirstMonster_Drop[5009][2]["MaxData"] = 90
	-- 人参果 - 10.00%
	tTheFirstMonster_Drop[5009][3] = {}
	tTheFirstMonster_Drop[5009][3]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5009][3]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5009][3]["ItemChance"] = 1000
	tTheFirstMonster_Drop[5009][3]["RewardItem"] = {}
	tTheFirstMonster_Drop[5009][3]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5009][3]["RewardItem"][1]["Id"] = 3600100 -- 【库】人参果礼包[属性:139], 【表格】人参果
	tTheFirstMonster_Drop[5009][3]["RewardItem"][1]["Attr"] = "0 1" -- 人参果礼包*1
	tTheFirstMonster_Drop[5009][3]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5009][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5009][3]["RewardEffect"]["Effect"] = "angelwing"


	tTheFirstMonster_Drop[5010] = {}
	-- ===第3层BOSS
	-- ===索引: tTheFirstMonster_Drop[5010]
	tTheFirstMonster_Drop[5010]["LogId"] = 12001400
	-- 礼包碎片-- 【必给】
	tTheFirstMonster_Drop[5010][1] = {}
	tTheFirstMonster_Drop[5010][1]["RandomItemChanceType"] = 1
	tTheFirstMonster_Drop[5010][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5010][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5010][1]["RewardItem"][1]["Id"] = 3600091 -- 【库】豪侠宝石碎片[属性:139], 【表格】礼包碎片
	tTheFirstMonster_Drop[5010][1]["RewardItem"][1]["Attr"] = "0 5" -- 豪侠宝石碎片*5
	tTheFirstMonster_Drop[5010][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5010][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5010][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3层令牌-- 【必给】
	tTheFirstMonster_Drop[5010][2] = {}
	tTheFirstMonster_Drop[5010][2]["RandomItemChanceType"] = 1
	tTheFirstMonster_Drop[5010][2]["RewardItem"] = {}
	tTheFirstMonster_Drop[5010][2]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5010][2]["RewardItem"][1]["Id"] = 3600082 -- 【库】4层传送翎[属性:139], 【表格】3层令牌
	tTheFirstMonster_Drop[5010][2]["RewardItem"][1]["Attr"] = "0 1" -- 4层传送翎*1
	tTheFirstMonster_Drop[5010][2]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5010][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5010][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 2阶灵珠 - 50.00%
	tTheFirstMonster_Drop[5010][3] = {}
	tTheFirstMonster_Drop[5010][3]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5010][3]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5010][3]["ItemChance"] = 5000
	tTheFirstMonster_Drop[5010][3]["RewardItem"] = {}
	tTheFirstMonster_Drop[5010][3]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5010][3]["RewardItem"][1]["Id"] = 3600096 -- 【库】2阶灵珠礼包[属性:139], 【表格】2阶灵珠
	tTheFirstMonster_Drop[5010][3]["RewardItem"][1]["Attr"] = "0 1" -- 2阶灵珠礼包*1
	tTheFirstMonster_Drop[5010][3]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5010][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5010][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53373, data1）】全服限量:（20）
	tTheFirstMonster_Drop[5010][3]["GlobalId"] = 53373
	tTheFirstMonster_Drop[5010][3]["Pos"] = 1
	tTheFirstMonster_Drop[5010][3]["MaxData"] = 20


	tTheFirstMonster_Drop[5011] = {}
	-- ===第6层BOSS
	-- ===索引: tTheFirstMonster_Drop[5011]
	tTheFirstMonster_Drop[5011]["LogId"] = 12001400
	-- 礼包碎片-- 【必给】
	tTheFirstMonster_Drop[5011][1] = {}
	tTheFirstMonster_Drop[5011][1]["RandomItemChanceType"] = 1
	tTheFirstMonster_Drop[5011][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5011][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5011][1]["RewardItem"][1]["Id"] = 3600091 -- 【库】豪侠宝石碎片[属性:139], 【表格】礼包碎片
	tTheFirstMonster_Drop[5011][1]["RewardItem"][1]["Attr"] = "0 10" -- 豪侠宝石碎片*10
	tTheFirstMonster_Drop[5011][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5011][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5011][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 6层令牌-- 【必给】
	tTheFirstMonster_Drop[5011][2] = {}
	tTheFirstMonster_Drop[5011][2]["RandomItemChanceType"] = 1
	tTheFirstMonster_Drop[5011][2]["RewardItem"] = {}
	tTheFirstMonster_Drop[5011][2]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5011][2]["RewardItem"][1]["Id"] = 3600085 -- 【库】7层传送翎[属性:139], 【表格】6层令牌
	tTheFirstMonster_Drop[5011][2]["RewardItem"][1]["Attr"] = "0 1" -- 7层传送翎*1
	tTheFirstMonster_Drop[5011][2]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5011][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5011][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 3阶灵珠 - 50.00%
	tTheFirstMonster_Drop[5011][3] = {}
	tTheFirstMonster_Drop[5011][3]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5011][3]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5011][3]["ItemChance"] = 5000
	tTheFirstMonster_Drop[5011][3]["RewardItem"] = {}
	tTheFirstMonster_Drop[5011][3]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5011][3]["RewardItem"][1]["Id"] = 3600097 -- 【库】3阶灵珠礼包[属性:139], 【表格】3阶灵珠
	tTheFirstMonster_Drop[5011][3]["RewardItem"][1]["Attr"] = "0 1" -- 3阶灵珠礼包*1
	tTheFirstMonster_Drop[5011][3]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5011][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5011][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53373, data2）】全服限量:（10）
	tTheFirstMonster_Drop[5011][3]["GlobalId"] = 53373
	tTheFirstMonster_Drop[5011][3]["Pos"] = 2
	tTheFirstMonster_Drop[5011][3]["MaxData"] = 10



	tTheFirstMonster_Drop[5012] = {}
	-- ===第9层BOSS
	-- ===索引: tTheFirstMonster_Drop[5012]
	tTheFirstMonster_Drop[5012]["LogId"] = 12001400
	-- 礼包碎片-- 【必给】
	tTheFirstMonster_Drop[5012][1] = {}
	tTheFirstMonster_Drop[5012][1]["RandomItemChanceType"] = 1
	tTheFirstMonster_Drop[5012][1]["RewardItem"] = {}
	tTheFirstMonster_Drop[5012][1]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5012][1]["RewardItem"][1]["Id"] = 3600091 -- 【库】豪侠宝石碎片[属性:139], 【表格】礼包碎片
	tTheFirstMonster_Drop[5012][1]["RewardItem"][1]["Attr"] = "0 15" -- 豪侠宝石碎片*15
	tTheFirstMonster_Drop[5012][1]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5012][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5012][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 9层令牌-- 【必给】
	tTheFirstMonster_Drop[5012][2] = {}
	tTheFirstMonster_Drop[5012][2]["RandomItemChanceType"] = 1
	tTheFirstMonster_Drop[5012][2]["RewardItem"] = {}
	tTheFirstMonster_Drop[5012][2]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5012][2]["RewardItem"][1]["Id"] = 3600088 -- 【库】10层传送翎[属性:139], 【表格】9层令牌
	tTheFirstMonster_Drop[5012][2]["RewardItem"][1]["Attr"] = "0 1" -- 10层传送翎*1
	tTheFirstMonster_Drop[5012][2]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5012][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5012][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4阶灵珠 - 30.00%
	tTheFirstMonster_Drop[5012][3] = {}
	tTheFirstMonster_Drop[5012][3]["RandomItemChanceType"] = 3
	tTheFirstMonster_Drop[5012][3]["ItemSelfChanceSum"] = 10000
	tTheFirstMonster_Drop[5012][3]["ItemChance"] = 3000
	tTheFirstMonster_Drop[5012][3]["RewardItem"] = {}
	tTheFirstMonster_Drop[5012][3]["RewardItem"][1] = {}
	tTheFirstMonster_Drop[5012][3]["RewardItem"][1]["Id"] = 3600098 -- 【库】4阶灵珠礼包[属性:139], 【表格】4阶灵珠
	tTheFirstMonster_Drop[5012][3]["RewardItem"][1]["Attr"] = "0 1" -- 4阶灵珠礼包*1
	tTheFirstMonster_Drop[5012][3]["RewardEffect"] = {}
	tTheFirstMonster_Drop[5012][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTheFirstMonster_Drop[5012][3]["RewardEffect"]["Effect"] = "angelwing"
			-- 【动态掩码（53373, data3）】全服限量:（5）
	tTheFirstMonster_Drop[5012][3]["GlobalId"] = 53373
	tTheFirstMonster_Drop[5012][3]["Pos"] = 3
	tTheFirstMonster_Drop[5012][3]["MaxData"] = 5


--增益符状态配置
local tTheFirstMonster_Cont = {}
	tTheFirstMonster_Cont["MaxBuff"] = {}
	tTheFirstMonster_Cont["MaxBuff"][1] = 143	--   最终物理伤害加成 +2000   至     最终物理伤害加成 +20000
	tTheFirstMonster_Cont["MaxBuff"][2] = 138	--   增加生命值上限2000       至     增加生命值上限20000
	tTheFirstMonster_Cont["MaxBuff"][3] = 141	--   最终物理伤害减免 +1000   至     最终物理伤害减免 +10000
	tTheFirstMonster_Cont["MaxBuff"][4] = 142	--   最终法术伤害减免 +1000   至     最终法术伤害减免 +10000
	tTheFirstMonster_Cont["MaxBuff"][5] = 133	--   物理暴击 +10%            至     物理暴击 +50%
	tTheFirstMonster_Cont["MaxBuff"][6] = 134	--   法术暴击 +20%            至     法术暴击 +80%
	tTheFirstMonster_Cont["MaxBuff"][7] = 144	--   最终法术伤害加成 +4500   至     最终法术伤害加成 +4500
	tTheFirstMonster_Cont["MaxBuff"][143] = 20000
	tTheFirstMonster_Cont["MaxBuff"][144] = 45000
	tTheFirstMonster_Cont["MaxBuff"][141] = 10000
	tTheFirstMonster_Cont["MaxBuff"][142] = 10000
	tTheFirstMonster_Cont["MaxBuff"][133] = 50
	tTheFirstMonster_Cont["MaxBuff"][134] = 80
	tTheFirstMonster_Cont["MaxBuff"][138] = 20000
	tTheFirstMonster_Cont["MinBuff"] = {}
	tTheFirstMonster_Cont["MinBuff"][143] = 2000
	tTheFirstMonster_Cont["MinBuff"][144] = 4500
	tTheFirstMonster_Cont["MinBuff"][141] = 1000
	tTheFirstMonster_Cont["MinBuff"][142] = 1000
	tTheFirstMonster_Cont["MinBuff"][133] = 10
	tTheFirstMonster_Cont["MinBuff"][134] = 50
	tTheFirstMonster_Cont["MinBuff"][138] = 2000
	tTheFirstMonster_Cont["Secs"] = 30
	tTheFirstMonster_Cont["Times"] = 1
	tTheFirstMonster_Cont["RemainTime"] = 30
	tTheFirstMonster_Cont["EndTime"] = 1
	tTheFirstMonster_Cont["Recordable"] = 0
	tTheFirstMonster_Cont["Self"] = "self"
	tTheFirstMonster_Cont["Effect"] = "zf2-e127"	
----------------------------------逻辑部分---------------------------------------------
-- 杀怪加Buff
function TheFirstMonster_Buff()
	-- 10%概率加buff
	if math.random(1,100) > 10 then
		return
	end
	local nSecs = tTheFirstMonster_Cont["Secs"]
	local nTimes = tTheFirstMonster_Cont["Times"]
	local nRemainTime = tTheFirstMonster_Cont["RemainTime"]
	local nEndTime = tTheFirstMonster_Cont["EndTime"]
	local nRecordable = tTheFirstMonster_Cont["Recordable"]
	local nUserId = Get_UserId()
	-- 玩家职业
	local nPro = Get_UserProfession(nUserId)
	local nRandom
	-- 道士职业随机有法攻法暴buff
	if nPro >= 100 and nPro <= 145 then
		nRandom = math.random(1,7)
	else
		nRandom = math.random(1,5)
	end
	local nStatus = tTheFirstMonster_Cont["MaxBuff"][nRandom] 
	local nMaxPower = tTheFirstMonster_Cont["MaxBuff"][nStatus]
	local nMinPower = tTheFirstMonster_Cont["MinBuff"][nStatus]
	local nPower = math.random(nMinPower,nMaxPower)
	User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nRemainTime,nEndTime,nRecordable,0,0,nUserId)
	User_EffectAdd(tTheFirstMonster_Cont["Self"],tTheFirstMonster_Cont["Effect"])
end

-- 杀怪掉落
function TheFirstMonster_KillMonster(nMonsterId)
	if not CrossServerBestHero_TimeJudgement() then
		return
	end
	
	TheFirstMonster_Buff()
	if RewardTemplate_RandomUpperLimit(tTheFirstMonster_Drop,nMonsterId) then
		RewardTemplate_RandomReward(tTheFirstMonster_Drop,nMonsterId)
	end
end

-- 杀Boss掉落
function TheFirstMonster_KillBoss(nMonsterId)
	TheFirstMonster_Buff()
	if RewardTemplate_RandomUpperLimit(tTheFirstMonster_Drop,nMonsterId) then
		RewardTemplate_RandomReward(tTheFirstMonster_Drop,nMonsterId)
	else
		User_TalkChannel2005(tTheFirstMonster_Text["NoSpace"])
		-- Boss掉落强插背包
		local sLog = sTheFirstMonster_Log
		local sTypeLog = ""
		local sNumLog = ""
		-- 增加log,强插物品
		for i=1,#tTheFirstMonster_Drop[nMonsterId] do
			local nItemId = tTheFirstMonster_Drop[nMonsterId][i]["RewardItem"][1]["Id"]
			local nItemNum = CommonFunc_GetItemNum(tTheFirstMonster_Drop[nMonsterId][i]["RewardItem"][1]["Attr"])
			if tTheFirstMonster_Drop[nMonsterId][i]["RandomItemChanceType"] == 1 then
				if sTypeLog == "" then
					sTypeLog = tostring(nItemId)
					sNumLog = tostring(nItemNum)
				else
					sTypeLog = sTypeLog .. "[" .. nItemId .. "]"
					sNumLog = sNumLog .. "[" .. nItemNum .. "]"
				end
				Item_AddItem(nItemId,0,nItemNum)
			elseif tTheFirstMonster_Drop[nMonsterId][i]["RandomItemChanceType"] == 3 then
				if math.random(tTheFirstMonster_Drop[nMonsterId][i]["ItemChance"],tTheFirstMonster_Drop[nMonsterId][i]["ItemSelfChanceSum"]) <= tTheFirstMonster_Drop[nMonsterId][i]["ItemChance"] then
					local nGlobalId = tTheFirstMonster_Drop[nMonsterId][i]["GlobalId"]
					local nPos = tTheFirstMonster_Drop[nMonsterId][i]["Pos"]
					local nMaxData = tTheFirstMonster_Drop[nMonsterId][i]["MaxData"]
					local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
					if nMaxData > nData then
						if sTypeLog == "" then
							sTypeLog = tostring(nItemId)
							sNumLog = tostring(nItemNum)
						else
							sTypeLog = sTypeLog .. "[" .. nItemId .. "]"
							sNumLog = sNumLog .. "[" .. nItemNum .. "]"
						end
						Sys_SetSynaGlobalData(nGlobalId,nPos,nData + 1)
						Item_AddItem(nItemId,0,nItemNum)
					end
				end
			end
		end
		sLog = string.format(sLog,sTypeLog,sNumLog)
		Sys_SaveActionFestivalLog(sLog)
	end
end
---------------------------------怪物部分---------------------------------------------
local tTheFirstMonster_KillMonster = {}
tTheFirstMonster_KillMonster["ActivityTime"] = tActivityTime["CrossServerBestHero"]["Activity"]
tTheFirstMonster_KillMonster["Function"]= TheFirstMonster_KillMonster
tTheFirstMonster_KillMonster["MonsterId"] = {5000,5001,5002,5003,5004,5005,5006,5007,5008}
table.insert(tMonsterDrop_AreaLoad,tTheFirstMonster_KillMonster)

local tTheFirstMonster_KillMonster = {}
tTheFirstMonster_KillMonster["ActivityTime"] = tActivityTime["CrossServerBestHero"]["Activity"]
tTheFirstMonster_KillMonster["Function"]= TheFirstMonster_KillMonster
tTheFirstMonster_KillMonster["MonsterId"] = {5009,5010,5011,5012}
table.insert(tMonsterDrop_AreaLoad,tTheFirstMonster_KillMonster)