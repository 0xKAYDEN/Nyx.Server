------------------------------------------------------------------------------------
--Name：            200609[英文征服][活动脚本]7月精准营销（7.7-7.31）
--Creator:      林嘉鑫
--Created:     2020-06-09
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tJulyPrecisionPush_Pack = {}
	tJulyPrecisionPush_Pack[3331480] = {}
	-- ===血狱花*100礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331480]
	-- ===删除: 3331480,1
	-- ===EmoneyLog: 350,23178
	tJulyPrecisionPush_Pack[3331480]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331480]["EmoneyLog"] = "350	23178	2400	2400	1	"
	tJulyPrecisionPush_Pack[3331480]["DeleteItem"] = {}
	tJulyPrecisionPush_Pack[3331480]["DeleteItem"][1] = {}
	tJulyPrecisionPush_Pack[3331480]["DeleteItem"][1]["Id"] = 3331480
	tJulyPrecisionPush_Pack[3331480]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331480]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331480]["RewardItem"][1]["Id"] = 3327203
	tJulyPrecisionPush_Pack[3331480]["RewardItem"][1]["Attr"] = "0 100 3"
	tJulyPrecisionPush_Pack[3331480]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331480]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331480]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331481] = {}
	-- ===轮回莲*100礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331481]
	-- ===删除: 3331481,1
	-- ===EmoneyLog: 350,23179
	tJulyPrecisionPush_Pack[3331481]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331481]["EmoneyLog"] = "350	23179	24000	24000	1	"
	tJulyPrecisionPush_Pack[3331481]["DeleteItem"] = {}
	tJulyPrecisionPush_Pack[3331481]["DeleteItem"][1] = {}
	tJulyPrecisionPush_Pack[3331481]["DeleteItem"][1]["Id"] = 3331481
	tJulyPrecisionPush_Pack[3331481]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331481]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331481]["RewardItem"][1]["Id"] = 3330609
	tJulyPrecisionPush_Pack[3331481]["RewardItem"][1]["Attr"] = "0 100 3"
	tJulyPrecisionPush_Pack[3331481]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331481]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331481]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331482] = {}
	-- ===彼岸幽兰*100礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331482]
	-- ===删除: 3331482,1
	-- ===EmoneyLog: 350,23180
	tJulyPrecisionPush_Pack[3331482]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331482]["EmoneyLog"] = "350	23180	240000	240000	1	"
	tJulyPrecisionPush_Pack[3331482]["DeleteItem"] = {}
	tJulyPrecisionPush_Pack[3331482]["DeleteItem"][1] = {}
	tJulyPrecisionPush_Pack[3331482]["DeleteItem"][1]["Id"] = 3331482
	tJulyPrecisionPush_Pack[3331482]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331482]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331482]["RewardItem"][1]["Id"] = 3330608
	tJulyPrecisionPush_Pack[3331482]["RewardItem"][1]["Attr"] = "0 100 3"
	tJulyPrecisionPush_Pack[3331482]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331482]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331482]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331483] = {}
	-- ===火高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331483][1]
	-- ===删除: 3331483,1
	tJulyPrecisionPush_Pack[3331483][1] = {}
	tJulyPrecisionPush_Pack[3331483][1]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331483][1]["EmoneyLog"] = "350	23181	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331483][1]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331483][1]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331483][1]["RewardItem"][1]["Id"] = 3330029
	tJulyPrecisionPush_Pack[3331483][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331483][1]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331483][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331483][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===火高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331483][2]
	-- ===删除: 3331483,1
	tJulyPrecisionPush_Pack[3331483][2] = {}
	tJulyPrecisionPush_Pack[3331483][2]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331483][2]["EmoneyLog"] = "350	23181	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331483][2]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331483][2]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331483][2]["RewardItem"][1]["Id"] = 3330030
	tJulyPrecisionPush_Pack[3331483][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331483][2]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331483][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331483][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===火高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331483][3]
	-- ===删除: 3331483,1
	tJulyPrecisionPush_Pack[3331483][3] = {}
	tJulyPrecisionPush_Pack[3331483][3]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331483][3]["EmoneyLog"] = "350	23181	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331483][3]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331483][3]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331483][3]["RewardItem"][1]["Id"] = 3330032
	tJulyPrecisionPush_Pack[3331483][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331483][3]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331483][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331483][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===火高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331483][4]
	-- ===删除: 3331483,1
	tJulyPrecisionPush_Pack[3331483][4] = {}
	tJulyPrecisionPush_Pack[3331483][4]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331483][4]["EmoneyLog"] = "350	23181	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331483][4]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331483][4]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331483][4]["RewardItem"][1]["Id"] = 3330033
	tJulyPrecisionPush_Pack[3331483][4]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331483][4]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331483][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331483][4]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331484] = {}
	-- ===水高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331484][1]
	-- ===删除: 3331484,1
	tJulyPrecisionPush_Pack[3331484][1] = {}
	tJulyPrecisionPush_Pack[3331484][1]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331484][1]["EmoneyLog"] = "350	23182	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331484][1]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331484][1]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331484][1]["RewardItem"][1]["Id"] = 3330035
	tJulyPrecisionPush_Pack[3331484][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331484][1]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331484][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331484][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===水高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331484][2]
	-- ===删除: 3331484,1
	tJulyPrecisionPush_Pack[3331484][2] = {}
	tJulyPrecisionPush_Pack[3331484][2]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331484][2]["EmoneyLog"] = "350	23182	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331484][2]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331484][2]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331484][2]["RewardItem"][1]["Id"] = 3330036
	tJulyPrecisionPush_Pack[3331484][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331484][2]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331484][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331484][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===水高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331484][3]
	-- ===删除: 3331484,1
	tJulyPrecisionPush_Pack[3331484][3] = {}
	tJulyPrecisionPush_Pack[3331484][3]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331484][3]["EmoneyLog"] = "350	23182	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331484][3]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331484][3]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331484][3]["RewardItem"][1]["Id"] = 3330038
	tJulyPrecisionPush_Pack[3331484][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331484][3]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331484][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331484][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===水高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331484][4]
	-- ===删除: 3331484,1
	tJulyPrecisionPush_Pack[3331484][4] = {}
	tJulyPrecisionPush_Pack[3331484][4]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331484][4]["EmoneyLog"] = "350	23182	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331484][4]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331484][4]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331484][4]["RewardItem"][1]["Id"] = 3330039
	tJulyPrecisionPush_Pack[3331484][4]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331484][4]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331484][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331484][4]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331485] = {}
	-- ===风高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331485][1]
	-- ===删除: 3331485,1
	tJulyPrecisionPush_Pack[3331485][1] = {}
	tJulyPrecisionPush_Pack[3331485][1]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331485][1]["EmoneyLog"] = "350	23183	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331485][1]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331485][1]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331485][1]["RewardItem"][1]["Id"] = 3330041
	tJulyPrecisionPush_Pack[3331485][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331485][1]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331485][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331485][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===风高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331485][2]
	-- ===删除: 3331485,1
	tJulyPrecisionPush_Pack[3331485][2] = {}
	tJulyPrecisionPush_Pack[3331485][2]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331485][2]["EmoneyLog"] = "350	23183	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331485][2]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331485][2]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331485][2]["RewardItem"][1]["Id"] = 3330042
	tJulyPrecisionPush_Pack[3331485][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331485][2]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331485][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331485][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===风高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331485][3]
	-- ===删除: 3331485,1
	tJulyPrecisionPush_Pack[3331485][3] = {}
	tJulyPrecisionPush_Pack[3331485][3]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331485][3]["EmoneyLog"] = "350	23183	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331485][3]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331485][3]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331485][3]["RewardItem"][1]["Id"] = 3330044
	tJulyPrecisionPush_Pack[3331485][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331485][3]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331485][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331485][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===风高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331485][4]
	-- ===删除: 3331485,1
	tJulyPrecisionPush_Pack[3331485][4] = {}
	tJulyPrecisionPush_Pack[3331485][4]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331485][4]["EmoneyLog"] = "350	23183	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331485][4]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331485][4]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331485][4]["RewardItem"][1]["Id"] = 3330045
	tJulyPrecisionPush_Pack[3331485][4]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331485][4]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331485][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331485][4]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331486] = {}
	-- ===雷高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331486][1]
	-- ===删除: 3331486,1
	tJulyPrecisionPush_Pack[3331486][1] = {}
	tJulyPrecisionPush_Pack[3331486][1]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331486][1]["EmoneyLog"] = "350	23184	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331486][1]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331486][1]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331486][1]["RewardItem"][1]["Id"] = 3330047
	tJulyPrecisionPush_Pack[3331486][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331486][1]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331486][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331486][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雷高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331486][2]
	-- ===删除: 3331486,1
	tJulyPrecisionPush_Pack[3331486][2] = {}
	tJulyPrecisionPush_Pack[3331486][2]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331486][2]["EmoneyLog"] = "350	23184	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331486][2]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331486][2]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331486][2]["RewardItem"][1]["Id"] = 3330048
	tJulyPrecisionPush_Pack[3331486][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331486][2]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331486][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331486][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雷高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331486][3]
	-- ===删除: 3331486,1
	tJulyPrecisionPush_Pack[3331486][3] = {}
	tJulyPrecisionPush_Pack[3331486][3]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331486][3]["EmoneyLog"] = "350	23184	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331486][3]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331486][3]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331486][3]["RewardItem"][1]["Id"] = 3330050
	tJulyPrecisionPush_Pack[3331486][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331486][3]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331486][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331486][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===雷高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331486][4]
	-- ===删除: 3331486,1
	tJulyPrecisionPush_Pack[3331486][4] = {}
	tJulyPrecisionPush_Pack[3331486][4]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331486][4]["EmoneyLog"] = "350	23184	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331486][4]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331486][4]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331486][4]["RewardItem"][1]["Id"] = 3330051
	tJulyPrecisionPush_Pack[3331486][4]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331486][4]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331486][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331486][4]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331487] = {}
	-- ===土高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331487][1]
	-- ===删除: 3331487,1
	tJulyPrecisionPush_Pack[3331487][1] = {}
	tJulyPrecisionPush_Pack[3331487][1]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331487][1]["EmoneyLog"] = "350	23185	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331487][1]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331487][1]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331487][1]["RewardItem"][1]["Id"] = 3330053
	tJulyPrecisionPush_Pack[3331487][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331487][1]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331487][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331487][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===土高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331487][2]
	-- ===删除: 3331487,1
	tJulyPrecisionPush_Pack[3331487][2] = {}
	tJulyPrecisionPush_Pack[3331487][2]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331487][2]["EmoneyLog"] = "350	23185	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331487][2]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331487][2]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331487][2]["RewardItem"][1]["Id"] = 3330054
	tJulyPrecisionPush_Pack[3331487][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331487][2]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331487][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331487][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===土高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331487][3]
	-- ===删除: 3331487,1
	tJulyPrecisionPush_Pack[3331487][3] = {}
	tJulyPrecisionPush_Pack[3331487][3]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331487][3]["EmoneyLog"] = "350	23185	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331487][3]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331487][3]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331487][3]["RewardItem"][1]["Id"] = 3330056
	tJulyPrecisionPush_Pack[3331487][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331487][3]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331487][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331487][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===土高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331487][4]
	-- ===删除: 3331487,1
	tJulyPrecisionPush_Pack[3331487][4] = {}
	tJulyPrecisionPush_Pack[3331487][4]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331487][4]["EmoneyLog"] = "350	23185	1500	1500	1	"
	tJulyPrecisionPush_Pack[3331487][4]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331487][4]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331487][4]["RewardItem"][1]["Id"] = 3330057
	tJulyPrecisionPush_Pack[3331487][4]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331487][4]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331487][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331487][4]["RewardEffect"]["Effect"] = "angelwing"


	tJulyPrecisionPush_Pack[3331488] = {}
	-- ===血继高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331488][1]
	-- ===删除: 3331488,1
	tJulyPrecisionPush_Pack[3331488][1] = {}
	tJulyPrecisionPush_Pack[3331488][1]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331488][1]["EmoneyLog"] = "350	23186	25000	25000	1	"
	tJulyPrecisionPush_Pack[3331488][1]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331488][1]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331488][1]["RewardItem"][1]["Id"] = 3330058
	tJulyPrecisionPush_Pack[3331488][1]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331488][1]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331488][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331488][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血继高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331488][2]
	-- ===删除: 3331488,1
	tJulyPrecisionPush_Pack[3331488][2] = {}
	tJulyPrecisionPush_Pack[3331488][2]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331488][2]["EmoneyLog"] = "350	23186	25000	25000	1	"
	tJulyPrecisionPush_Pack[3331488][2]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331488][2]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331488][2]["RewardItem"][1]["Id"] = 3330059
	tJulyPrecisionPush_Pack[3331488][2]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331488][2]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331488][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331488][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血继高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331488][3]
	-- ===删除: 3331488,1
	tJulyPrecisionPush_Pack[3331488][3] = {}
	tJulyPrecisionPush_Pack[3331488][3]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331488][3]["EmoneyLog"] = "350	23186	25000	25000	1	"
	tJulyPrecisionPush_Pack[3331488][3]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331488][3]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331488][3]["RewardItem"][1]["Id"] = 3330060
	tJulyPrecisionPush_Pack[3331488][3]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331488][3]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331488][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331488][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血继高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331488][4]
	-- ===删除: 3331488,1
	tJulyPrecisionPush_Pack[3331488][4] = {}
	tJulyPrecisionPush_Pack[3331488][4]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331488][4]["EmoneyLog"] = "350	23186	25000	25000	1	"
	tJulyPrecisionPush_Pack[3331488][4]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331488][4]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331488][4]["RewardItem"][1]["Id"] = 3330061
	tJulyPrecisionPush_Pack[3331488][4]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331488][4]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331488][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331488][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血继高级法印礼盒
	-- ===索引: tJulyPrecisionPush_Pack[3331488][5]
	-- ===删除: 3331488,1
	tJulyPrecisionPush_Pack[3331488][5] = {}
	tJulyPrecisionPush_Pack[3331488][5]["LogId"] = 12002027
	tJulyPrecisionPush_Pack[3331488][5]["EmoneyLog"] = "350	23187	25000	25000	1	"
	tJulyPrecisionPush_Pack[3331488][5]["RewardItem"] = {}
	tJulyPrecisionPush_Pack[3331488][5]["RewardItem"][1] = {}
	tJulyPrecisionPush_Pack[3331488][5]["RewardItem"][1]["Id"] = 3330062
	tJulyPrecisionPush_Pack[3331488][5]["RewardItem"][1]["Attr"] = "0 1"
	tJulyPrecisionPush_Pack[3331488][5]["RewardEffect"] = {}
	tJulyPrecisionPush_Pack[3331488][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJulyPrecisionPush_Pack[3331488][5]["RewardEffect"]["Effect"] = "angelwing"
----------------------------------逻辑部分---------------------------------------------
-- 选择
function JulyPrecisionPush_Choose(nItemId,nChoose)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 背包空间判断
	local nSpace = RewardTemplate_GetRewardSpace(tJulyPrecisionPush_Pack[nItemId][nChoose])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace))
		return
	end
	if RewardTemplate_UseItemAndMsg(tJulyPrecisionPush_Pack[nItemId][nChoose]) then
		Item_DelItem(nItemId)
	end
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3331480] = tItem[3331480] or {}
tItem[3331480]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tJulyPrecisionPush_Pack[nItemId])
end
tItem[3331481] = tItem[3331480]
tItem[3331482] = tItem[3331480]

--------物品有对白模板
tItemFace[3331483] = 1011
tItem[3331483] = tItem[3331483] or {}
tItem[3331483]["DialogueText"] = tJulyPrecisionPush_Text["Choose"]
tItem[3331483]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local tOption = {}
	for i = 1,5 do
		local nNum = 110 + i
		tItem[nItemId]["Option"..nNum] = tJulyPrecisionPush_Text[nItemId][i]
		tItem[nItemId]["OptionFunc"..nNum] = "JulyPrecisionPush_Choose</N>"..nItemId.."</N>"..i
		table.insert(tOption,nNum)
	end
	tItem[nItemId]["tOption1-1"] = tOption
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3331483]["Text1-1"] = {111}
tItem[3331483]["tOption1-1"] = {111}

tItemFace[3331484] = 1953
tItemFace[3331485] = 490
tItemFace[3331486] = 747
tItemFace[3331487] = 430
tItemFace[3331488] = 2911
tItem[3331484] = tItem[3331483]
tItem[3331485] = tItem[3331483]
tItem[3331486] = tItem[3331483]
tItem[3331487] = tItem[3331483]
tItem[3331488] = tItem[3331483]
