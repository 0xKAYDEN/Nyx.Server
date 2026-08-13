------------------------------------------------------------------------------------
--Name：            190306[简体征服][活动脚本]烦请安排制作假日理财活动活动发奖ID
--Creator:      杨艳
--Created:     2019-03-06
------------------------------------------------------------------------------------


--命名前缀
--FinancialAct_

--logid： 12001323



-------------------------------------------数据部分-----------------------------------------
local tFinancialAct_Reward = {}
	-- 7日投资666档参与包,3320500,1
	tFinancialAct_Reward[3320500] = {}
	tFinancialAct_Reward[3320500]["LogId"] = 12001323
	tFinancialAct_Reward[3320500]["EmoneyLog"] = "10000	0195	-135	-135	1	"
	tFinancialAct_Reward[3320500]["DeleteItem"] = {}
	tFinancialAct_Reward[3320500]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320500]["DeleteItem"][1]["Id"] = 3320500 -- 【库】7日投资666档参与包[属性:9]
	tFinancialAct_Reward[3320500]["RewardEMoney"] = {}
	tFinancialAct_Reward[3320500]["RewardEMoney"]["Value"] = 135 -- 天石
	tFinancialAct_Reward[3320500]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320500]["RewardEMoneyMono"]["Value"] = 27 -- 天石（赠）
	tFinancialAct_Reward[3320500]["RewardEffect"] = {}
	tFinancialAct_Reward[3320500]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320500]["RewardEffect"]["Effect"] = "angelwing"


	-- 7日投资6666档参与包,3320501,1
	tFinancialAct_Reward[3320501] = {}
	tFinancialAct_Reward[3320501]["LogId"] = 12001323
	tFinancialAct_Reward[3320501]["EmoneyLog"] = "10000	0196	-2700	-2700	1	"
	tFinancialAct_Reward[3320501]["DeleteItem"] = {}
	tFinancialAct_Reward[3320501]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320501]["DeleteItem"][1]["Id"] = 3320501 -- 【库】7日投资6666档参与包[属性:9]
	tFinancialAct_Reward[3320501]["RewardEMoney"] = {}
	tFinancialAct_Reward[3320501]["RewardEMoney"]["Value"] = 2700 -- 天石
	tFinancialAct_Reward[3320501]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320501]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）
	tFinancialAct_Reward[3320501]["RewardEffect"] = {}
	tFinancialAct_Reward[3320501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320501]["RewardEffect"]["Effect"] = "angelwing"


	-- 15日投资999档参与包,3320502,1
	tFinancialAct_Reward[3320502] = {}
	tFinancialAct_Reward[3320502]["LogId"] = 12001323
	tFinancialAct_Reward[3320502]["EmoneyLog"] = "10000	0197	-270	-270	1	"
	tFinancialAct_Reward[3320502]["DeleteItem"] = {}
	tFinancialAct_Reward[3320502]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320502]["DeleteItem"][1]["Id"] = 3320502 -- 【库】15日投资999档参与包[属性:9]
	tFinancialAct_Reward[3320502]["RewardEMoney"] = {}
	tFinancialAct_Reward[3320502]["RewardEMoney"]["Value"] = 270 -- 天石
	tFinancialAct_Reward[3320502]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320502]["RewardEMoneyMono"]["Value"] = 54 -- 天石（赠）
	tFinancialAct_Reward[3320502]["RewardEffect"] = {}
	tFinancialAct_Reward[3320502]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320502]["RewardEffect"]["Effect"] = "angelwing"


	-- 15日投资9999档参与包,3320503,1
	tFinancialAct_Reward[3320503] = {}
	tFinancialAct_Reward[3320503]["LogId"] = 12001323
	tFinancialAct_Reward[3320503]["EmoneyLog"] = "10000	0198	-5400	-5400	1	"
	tFinancialAct_Reward[3320503]["DeleteItem"] = {}
	tFinancialAct_Reward[3320503]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320503]["DeleteItem"][1]["Id"] = 3320503 -- 【库】15日投资9999档参与包[属性:9]
	tFinancialAct_Reward[3320503]["RewardEMoney"] = {}
	tFinancialAct_Reward[3320503]["RewardEMoney"]["Value"] = 5400 -- 天石
	tFinancialAct_Reward[3320503]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320503]["RewardEMoneyMono"]["Value"] = 900 -- 天石（赠）
	tFinancialAct_Reward[3320503]["RewardEffect"] = {}
	tFinancialAct_Reward[3320503]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320503]["RewardEffect"]["Effect"] = "angelwing"


	-- 30日投资100档参与包,3320504,1
	tFinancialAct_Reward[3320504] = {}
	tFinancialAct_Reward[3320504]["LogId"] = 12001323
	tFinancialAct_Reward[3320504]["EmoneyLog"] = "10000	0199	-50	-50	1	"
	tFinancialAct_Reward[3320504]["DeleteItem"] = {}
	tFinancialAct_Reward[3320504]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320504]["DeleteItem"][1]["Id"] = 3320504 -- 【库】30日投资100档参与包[属性:9]
	tFinancialAct_Reward[3320504]["RewardEMoney"] = {}
	tFinancialAct_Reward[3320504]["RewardEMoney"]["Value"] = 50 -- 天石
	tFinancialAct_Reward[3320504]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320504]["RewardEMoneyMono"]["Value"] = 5 -- 天石（赠）
	tFinancialAct_Reward[3320504]["RewardEffect"] = {}
	tFinancialAct_Reward[3320504]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320504]["RewardEffect"]["Effect"] = "angelwing"


	-- 30日投资1000档参与包,3320505,1
	tFinancialAct_Reward[3320505] = {}
	tFinancialAct_Reward[3320505]["LogId"] = 12001323
	tFinancialAct_Reward[3320505]["EmoneyLog"] = "10000	0200	-300	-300	1	"
	tFinancialAct_Reward[3320505]["DeleteItem"] = {}
	tFinancialAct_Reward[3320505]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320505]["DeleteItem"][1]["Id"] = 3320505 -- 【库】30日投资1000档参与包[属性:9]
	tFinancialAct_Reward[3320505]["RewardEMoney"] = {}
	tFinancialAct_Reward[3320505]["RewardEMoney"]["Value"] = 300 -- 天石
	tFinancialAct_Reward[3320505]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320505]["RewardEMoneyMono"]["Value"] = 30 -- 天石（赠）
	tFinancialAct_Reward[3320505]["RewardEffect"] = {}
	tFinancialAct_Reward[3320505]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320505]["RewardEffect"]["Effect"] = "angelwing"


	-- 30日投资10000档参与包,3320506,1
	tFinancialAct_Reward[3320506] = {}
	tFinancialAct_Reward[3320506]["LogId"] = 12001323
	tFinancialAct_Reward[3320506]["EmoneyLog"] = "10000	0201	-3000	-3000	1	"
	tFinancialAct_Reward[3320506]["DeleteItem"] = {}
	tFinancialAct_Reward[3320506]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320506]["DeleteItem"][1]["Id"] = 3320506 -- 【库】30日投资10000档参与包[属性:9]
	tFinancialAct_Reward[3320506]["RewardEMoney"] = {}
	tFinancialAct_Reward[3320506]["RewardEMoney"]["Value"] = 3000 -- 天石
	tFinancialAct_Reward[3320506]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320506]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）
	tFinancialAct_Reward[3320506]["RewardStrengthValue"] = {}
	tFinancialAct_Reward[3320506]["RewardStrengthValue"]["Value"] = 2000 -- 气力值
	tFinancialAct_Reward[3320506]["RewardEffect"] = {}
	tFinancialAct_Reward[3320506]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320506]["RewardEffect"]["Effect"] = "angelwing"


	--=========[投资惊喜礼盒,3320507,1]=========
	tFinancialAct_Reward[3320507] = {}
	tFinancialAct_Reward[3320507]["ItemChanceSum"] = 10000
	tFinancialAct_Reward[3320507]["LogId"] = 12001323
	tFinancialAct_Reward[3320507]["DeleteItem"] = {}
	tFinancialAct_Reward[3320507]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320507]["DeleteItem"][1]["Id"] = 3320507
	-- 1000气力值 - 50.00%
	tFinancialAct_Reward[3320507][1] = {}
	tFinancialAct_Reward[3320507][1]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320507][1]["ItemChance"] = 5000
	tFinancialAct_Reward[3320507][1]["RewardStrengthValue"] = {}
	tFinancialAct_Reward[3320507][1]["RewardStrengthValue"]["Value"] = 1000 -- 气力值
	tFinancialAct_Reward[3320507][1]["RewardEffect"] = {}
	tFinancialAct_Reward[3320507][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320507][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石 - 21.50%
	tFinancialAct_Reward[3320507][2] = {}
	tFinancialAct_Reward[3320507][2]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320507][2]["ItemChance"] = 2150
	tFinancialAct_Reward[3320507][2]["RewardItem"] = {}
	tFinancialAct_Reward[3320507][2]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320507][2]["RewardItem"][1]["Id"] = 3009002 -- 【库】晶莹星陨石[属性:9]【表格】晶莹星陨石
	tFinancialAct_Reward[3320507][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	tFinancialAct_Reward[3320507][2]["RewardEffect"] = {}
	tFinancialAct_Reward[3320507][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320507][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 30天5星1%神佑时装外套随机包 - 20.00%
	tFinancialAct_Reward[3320507][3] = {}
	tFinancialAct_Reward[3320507][3]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320507][3]["ItemChance"] = 2000
	tFinancialAct_Reward[3320507][3]["RewardItem"] = {}
	tFinancialAct_Reward[3320507][3]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320507][3]["RewardItem"][1]["Id"] = 3311859 -- 【库】30天时装外套可选礼盒[属性:9]【表格】30天5星1%神佑时装外套随机包
	tFinancialAct_Reward[3320507][3]["RewardItem"][1]["Attr"] = "0 1" -- 30天时装外套可选礼盒*1
	tFinancialAct_Reward[3320507][3]["RewardEffect"] = {}
	tFinancialAct_Reward[3320507][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320507][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹随机包（赠） - 5.00%
	tFinancialAct_Reward[3320507][4] = {}
	tFinancialAct_Reward[3320507][4]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320507][4]["ItemChance"] = 500
	tFinancialAct_Reward[3320507][4]["RewardItem"] = {}
	tFinancialAct_Reward[3320507][4]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320507][4]["RewardItem"][1]["Id"] = 3306510 -- 【库】黄色神纹(赠)随机包[属性:9]【表格】黄色神纹随机包（赠）
	tFinancialAct_Reward[3320507][4]["RewardItem"][1]["Attr"] = "0 1" -- 黄色神纹(赠)随机包*1
	tFinancialAct_Reward[3320507][4]["RewardEffect"] = {}
	tFinancialAct_Reward[3320507][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320507][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） - 3.00%
	tFinancialAct_Reward[3320507][5] = {}
	tFinancialAct_Reward[3320507][5]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320507][5]["ItemChance"] = 300
	tFinancialAct_Reward[3320507][5]["RewardItem"] = {}
	tFinancialAct_Reward[3320507][5]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320507][5]["RewardItem"][1]["Id"] = 4060001 -- 【库】万能神纹精粹[属性:9]【表格】万能神纹精粹（赠）
	tFinancialAct_Reward[3320507][5]["RewardItem"][1]["Attr"] = "0 300 3" -- 万能神纹精粹*300
	tFinancialAct_Reward[3320507][5]["RewardEffect"] = {}
	tFinancialAct_Reward[3320507][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320507][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 1380赠点天石 - 0.30%
	tFinancialAct_Reward[3320507][6] = {}
	tFinancialAct_Reward[3320507][6]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320507][6]["ItemChance"] = 30
	tFinancialAct_Reward[3320507][6]["RewardEMoneyMono"] = {}
	tFinancialAct_Reward[3320507][6]["RewardEMoneyMono"]["Value"] = 1380 -- 天石（赠）
	tFinancialAct_Reward[3320507][6]["RewardEMoneyMono"]["EmoneyLog"] = "10000	0830	0	0	1380	"
	tFinancialAct_Reward[3320507][6]["RewardEffect"] = {}
	tFinancialAct_Reward[3320507][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320507][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 璀璨星陨石 - 0.20%
	tFinancialAct_Reward[3320507][7] = {}
	tFinancialAct_Reward[3320507][7]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320507][7]["ItemChance"] = 20
	tFinancialAct_Reward[3320507][7]["RewardItem"] = {}
	tFinancialAct_Reward[3320507][7]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320507][7]["RewardItem"][1]["Id"] = 3009003 -- 【库】璀璨星陨石[属性:9]【表格】璀璨星陨石
	tFinancialAct_Reward[3320507][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的璀璨星陨石*1
	tFinancialAct_Reward[3320507][7]["RewardEffect"] = {}
	tFinancialAct_Reward[3320507][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320507][7]["RewardEffect"]["Effect"] = "angelwing"


	--=========[随机三星外套包,3320508,1]=========
	tFinancialAct_Reward[3320508] = {}
	tFinancialAct_Reward[3320508]["ItemChanceSum"] = 10000
	tFinancialAct_Reward[3320508]["LogId"] = 12001323
	tFinancialAct_Reward[3320508]["DeleteItem"] = {}
	tFinancialAct_Reward[3320508]["DeleteItem"][1] = {}
	tFinancialAct_Reward[3320508]["DeleteItem"][1]["Id"] = 3320508
	-- 辉耀之刺 - 10.00%
	tFinancialAct_Reward[3320508][1] = {}
	tFinancialAct_Reward[3320508][1]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][1]["ItemChance"] = 1000
	tFinancialAct_Reward[3320508][1]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][1]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][1]["RewardItem"][1]["Id"] = 188905 -- 【库】辉耀之刺[属性:8]【表格】辉耀之刺
	tFinancialAct_Reward[3320508][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑辉耀之刺(赠)*1
	tFinancialAct_Reward[3320508][1]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 念奴娇套装 - 10.00%
	tFinancialAct_Reward[3320508][2] = {}
	tFinancialAct_Reward[3320508][2]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][2]["ItemChance"] = 1000
	tFinancialAct_Reward[3320508][2]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][2]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][2]["RewardItem"][1]["Id"] = 187605 -- 【库】念奴娇套装[属性:0]【表格】念奴娇套装
	tFinancialAct_Reward[3320508][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑念奴娇套装(赠)*1
	tFinancialAct_Reward[3320508][2]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 英伦学院风外套 - 10.00%
	tFinancialAct_Reward[3320508][3] = {}
	tFinancialAct_Reward[3320508][3]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][3]["ItemChance"] = 1000
	tFinancialAct_Reward[3320508][3]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][3]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][3]["RewardItem"][1]["Id"] = 192395 -- 【库】英伦学院风外套[属性:0]【表格】英伦学院风外套
	tFinancialAct_Reward[3320508][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑英伦学院风外套(赠)*1
	tFinancialAct_Reward[3320508][3]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 喵基尼 - 10.00%
	tFinancialAct_Reward[3320508][4] = {}
	tFinancialAct_Reward[3320508][4]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][4]["ItemChance"] = 1000
	tFinancialAct_Reward[3320508][4]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][4]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][4]["RewardItem"][1]["Id"] = 193535 -- 【库】喵基尼[属性:0]【表格】喵基尼
	tFinancialAct_Reward[3320508][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑喵基尼(赠)*1
	tFinancialAct_Reward[3320508][4]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 夜舞未央 - 5.00%
	tFinancialAct_Reward[3320508][5] = {}
	tFinancialAct_Reward[3320508][5]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][5]["ItemChance"] = 500
	tFinancialAct_Reward[3320508][5]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][5]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][5]["RewardItem"][1]["Id"] = 188575 -- 【库】夜舞未央[属性:0]【表格】夜舞未央
	tFinancialAct_Reward[3320508][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑夜舞未央(赠)*1
	tFinancialAct_Reward[3320508][5]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 猛龙战队 - 5.00%
	tFinancialAct_Reward[3320508][6] = {}
	tFinancialAct_Reward[3320508][6]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][6]["ItemChance"] = 500
	tFinancialAct_Reward[3320508][6]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][6]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][6]["RewardItem"][1]["Id"] = 195085 -- 【库】猛龙战队[属性:0]【表格】猛龙战队
	tFinancialAct_Reward[3320508][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑猛龙战队(赠)*1
	tFinancialAct_Reward[3320508][6]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 大圣魔铠 - 10.00%
	tFinancialAct_Reward[3320508][7] = {}
	tFinancialAct_Reward[3320508][7]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][7]["ItemChance"] = 1000
	tFinancialAct_Reward[3320508][7]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][7]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][7]["RewardItem"][1]["Id"] = 189685 -- 【库】大圣魔铠[属性:0]【表格】大圣魔铠
	tFinancialAct_Reward[3320508][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑大圣魔铠(赠)*1
	tFinancialAct_Reward[3320508][7]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 花之吻 - 5.00%
	tFinancialAct_Reward[3320508][8] = {}
	tFinancialAct_Reward[3320508][8]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][8]["ItemChance"] = 500
	tFinancialAct_Reward[3320508][8]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][8]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][8]["RewardItem"][1]["Id"] = 195415 -- 【库】花之吻[属性:0]【表格】花之吻
	tFinancialAct_Reward[3320508][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑花之吻(赠)*1
	tFinancialAct_Reward[3320508][8]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 东方不败 - 10.00%
	tFinancialAct_Reward[3320508][9] = {}
	tFinancialAct_Reward[3320508][9]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][9]["ItemChance"] = 1000
	tFinancialAct_Reward[3320508][9]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][9]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][9]["RewardItem"][1]["Id"] = 195475 -- 【库】东方不败[属性:0]【表格】东方不败
	tFinancialAct_Reward[3320508][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑东方不败(赠)*1
	tFinancialAct_Reward[3320508][9]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 天龙八部 - 5.00%
	tFinancialAct_Reward[3320508][10] = {}
	tFinancialAct_Reward[3320508][10]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][10]["ItemChance"] = 500
	tFinancialAct_Reward[3320508][10]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][10]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][10]["RewardItem"][1]["Id"] = 195495 -- 【库】天龙八部[属性:0]【表格】天龙八部
	tFinancialAct_Reward[3320508][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑天龙八部(赠)*1
	tFinancialAct_Reward[3320508][10]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 夏威夷阳光 - 10.00%
	tFinancialAct_Reward[3320508][11] = {}
	tFinancialAct_Reward[3320508][11]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][11]["ItemChance"] = 1000
	tFinancialAct_Reward[3320508][11]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][11]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][11]["RewardItem"][1]["Id"] = 189725 -- 【库】夏威夷阳光[属性:0]【表格】夏威夷阳光
	tFinancialAct_Reward[3320508][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑夏威夷阳光(赠)*1
	tFinancialAct_Reward[3320508][11]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 水晶之恋 - 5.00%
	tFinancialAct_Reward[3320508][12] = {}
	tFinancialAct_Reward[3320508][12]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][12]["ItemChance"] = 500
	tFinancialAct_Reward[3320508][12]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][12]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][12]["RewardItem"][1]["Id"] = 195535 -- 【库】水晶之恋[属性:0]【表格】水晶之恋
	tFinancialAct_Reward[3320508][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑水晶之恋(赠)*1
	tFinancialAct_Reward[3320508][12]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 福星天降 - 5.00%
	tFinancialAct_Reward[3320508][13] = {}
	tFinancialAct_Reward[3320508][13]["RandomItemChanceType"] = 2
	tFinancialAct_Reward[3320508][13]["ItemChance"] = 500
	tFinancialAct_Reward[3320508][13]["RewardItem"] = {}
	tFinancialAct_Reward[3320508][13]["RewardItem"][1] = {}
	tFinancialAct_Reward[3320508][13]["RewardItem"][1]["Id"] = 195065 -- 【库】福星天降[属性:0]【表格】福星天降
	tFinancialAct_Reward[3320508][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑福星天降(赠)*1
	tFinancialAct_Reward[3320508][13]["RewardEffect"] = {}
	tFinancialAct_Reward[3320508][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFinancialAct_Reward[3320508][13]["RewardEffect"]["Effect"] = "angelwing"

local tFinancialAc_Log = {}	
	tFinancialAc_Log["DelItem"] = "0,0,%d,1,12001323,2,0,0"	
	tFinancialAc_Log["DelAllItem"] = "0,0,%d,%d,12001323,2,0,0"	

	
---------------------------------逻辑部分--------------------------------------------- 

--礼包打开
function FinancialAc_OpenPack(nItemId)
	local nUserId = Get_UserId()
	
	if nItemId == 3320507 or nItemId == 3320508 then
		-- 判断赠点
		if nItemId == 3320507 then
			local nMaxRewardMonoEMoney = tFinancialAct_Reward[nItemId][6]["RewardEMoneyMono"]["Value"]
			if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
				User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
				return
			end
		end
		local sDelItemLog = string.format(tFinancialAc_Log["DelItem"],nItemId)
		Sys_SaveActionFestivalLog(sDelItemLog)
		RewardTemplate_RandomReward(tFinancialAct_Reward,nItemId)
		
	else
		RewardTemplate_UseItemAndMsg(tFinancialAct_Reward[nItemId])
	end 
	
end

---------------------------------物品部分---------------------------------------------
-- 3320500,'7日投资666档参与包',9,9
-- 3320501,'7日投资6666档参与包',9,
-- 3320502,'15日投资999档参与包',9,
-- 3320503,'15日投资9999档参与包',9
-- 3320504,'30日投资100档参与包',9,
-- 3320505,'30日投资1000档参与包',9
-- 3320506,'30日投资10000档参与包',
-- 3320507,'投资惊喜礼盒',9,9847150
-- 3320508,'随机三星外套包',9,98471

tItem[3320500] = tItem[3320500] or {}
tItem[3320500]["Function"] = function(nItemId,sItemName)
	FinancialAc_OpenPack(nItemId)
end
tItem[3320501] = tItem[3320500] or {}
tItem[3320502] = tItem[3320500] or {}
tItem[3320503] = tItem[3320500] or {}
tItem[3320504] = tItem[3320500] or {}
tItem[3320505] = tItem[3320500] or {}
tItem[3320506] = tItem[3320500] or {}
tItem[3320507] = tItem[3320500] or {}
tItem[3320508] = tItem[3320500] or {}



