------------------------------------------------------------------------------------
--Name：            190528[英文征服][活动脚本]6月投资理财（6.4-7.2）
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tSurpriseInvestment_Cont = {}
	tSurpriseInvestment_Cont["Level"] = 0
	tSurpriseInvestment_Cont["Metempsychosis"] = 2
	-- 当前活动期数，期数之间至少间隔60天礼包才不会影响
	-- 1期:2019.8.22-2019.9.10
	-- 2期:2019.9.19-2019.10.15
	-- 3期:2019.10.22-2019.11.18
	-- 新1期:2019.11.26-2019.12.17
	-- 新2期:2019.12.26-2019.1.26	2期礼包奖励修改
	-- 新3期:2020.05.21-2020.06.12	3期礼包奖励修改
	tSurpriseInvestment_Cont["ActivityTimes"] = 3
	
	tSurpriseInvestment_Cont["MaxTimes"] = {}
	-- 物品投资
	tSurpriseInvestment_Cont["MaxTimes"][1] = {}
	tSurpriseInvestment_Cont["MaxTimes"][1][1] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][2] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][3] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][4] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][5] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][6] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][7] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][8] = 10
	tSurpriseInvestment_Cont["MaxTimes"][1][9] = 10
	-- 天石投资
	tSurpriseInvestment_Cont["MaxTimes"][2] = {}
	tSurpriseInvestment_Cont["MaxTimes"][2][1] = 3
	tSurpriseInvestment_Cont["MaxTimes"][2][2] = 3
	tSurpriseInvestment_Cont["MaxTimes"][2][3] = 5
	tSurpriseInvestment_Cont["MaxTimes"][2][4] = 5
	tSurpriseInvestment_Cont["MaxTimes"][2][5] = 10
	tSurpriseInvestment_Cont["MaxTimes"][2][6] = 10
	tSurpriseInvestment_Cont["MaxTimes"][2][7] = 10
	
	tSurpriseInvestment_Cont["OneTimes"] = {}
	-- 物品投资
	tSurpriseInvestment_Cont["OneTimes"][1] = {}
	tSurpriseInvestment_Cont["OneTimes"][1][1] = 99
	tSurpriseInvestment_Cont["OneTimes"][1][2] = 99
	tSurpriseInvestment_Cont["OneTimes"][1][3] = 10
	tSurpriseInvestment_Cont["OneTimes"][1][4] = 7
	tSurpriseInvestment_Cont["OneTimes"][1][5] = 3
	tSurpriseInvestment_Cont["OneTimes"][1][6] = 10
	tSurpriseInvestment_Cont["OneTimes"][1][7] = 100
	tSurpriseInvestment_Cont["OneTimes"][1][8] = 5
	tSurpriseInvestment_Cont["OneTimes"][1][9] = 1
	-- 天石投资
	tSurpriseInvestment_Cont["OneTimes"][2] = {}
	tSurpriseInvestment_Cont["OneTimes"][2][1] = 650
	tSurpriseInvestment_Cont["OneTimes"][2][2] = 6650
	tSurpriseInvestment_Cont["OneTimes"][2][3] = 1000
	tSurpriseInvestment_Cont["OneTimes"][2][4] = 10000
	tSurpriseInvestment_Cont["OneTimes"][2][5] = 200
	tSurpriseInvestment_Cont["OneTimes"][2][6] = 1000
	tSurpriseInvestment_Cont["OneTimes"][2][7] = 10000
	
	-- 物资募集符同名id
	tSurpriseInvestment_Cont["SameItem"] = {}
	tSurpriseInvestment_Cont["SameItem"][1] = 3007311
	tSurpriseInvestment_Cont["SameItem"][2] = 3600014
	
	tSurpriseInvestment_Cont[24315] = {}
	-- 物品投资总类型数
	tSurpriseInvestment_Cont[24315]["MaxNum"] = 9
	-- 物品投资领取掩码位
	tSurpriseInvestment_Cont[24315]["Stc"] = 3
	tSurpriseInvestment_Cont[24316] = {}
	-- 天石投资总类型数
	tSurpriseInvestment_Cont[24316]["MaxNum"] = 7
	-- 天石投资领取掩码位
	tSurpriseInvestment_Cont[24316]["Stc"] = 4
	
	tSurpriseInvestment_Cont["CPsNPC"] = 24316
	
	-- 同等奖励表
	tSurpriseInvestment_Cont["SameReward"] = {}
	tSurpriseInvestment_Cont["SameReward"][24315] = {{1,2},{3},{4},{5,6,7,8,9}}
	tSurpriseInvestment_Cont["SameReward"][24316] = {{1},{2},{3},{4},{5},{6},{7}}
	
	-- 黄色神纹随机礼包最大值等效礼包
	tSurpriseInvestment_Cont["MaxItem"] = {}
	-- 黄色神纹随机礼包
	-- tSurpriseInvestment_Cont["MaxItem"][3306919] = {}
	-- tSurpriseInvestment_Cont["MaxItem"][3306919]["Num"] = 20
	-- tSurpriseInvestment_Cont["MaxItem"][3306919]["GetId"] = 3321923
	-- 九转聚神丹碎片
	tSurpriseInvestment_Cont["MaxItem"][728596] = {}
	tSurpriseInvestment_Cont["MaxItem"][728596]["Num"] = 5
	tSurpriseInvestment_Cont["MaxItem"][728596]["GetId"] = 3326790
	-- 九转聚神丹
	tSurpriseInvestment_Cont["MaxItem"][722057] = {}
	tSurpriseInvestment_Cont["MaxItem"][722057]["Num"] = 5
	tSurpriseInvestment_Cont["MaxItem"][722057]["GetId"] = 3326791
	-- 黄色神纹随机礼包
	tSurpriseInvestment_Cont["MaxItem"][3306919] = {}
	tSurpriseInvestment_Cont["MaxItem"][3306919]["Num"] = 5
	tSurpriseInvestment_Cont["MaxItem"][3306919]["GetId"] = 3326792
	
	-- 天石投资返利期礼包
	tSurpriseInvestment_Cont["CPsPack"] = {}
	-- 1期礼包
	tSurpriseInvestment_Cont["CPsPack"][1] = {}
	tSurpriseInvestment_Cont["CPsPack"][1][1] = 3321898
	tSurpriseInvestment_Cont["CPsPack"][1][2] = 3321899
	tSurpriseInvestment_Cont["CPsPack"][1][3] = 3321900
	tSurpriseInvestment_Cont["CPsPack"][1][4] = 3321901
	tSurpriseInvestment_Cont["CPsPack"][1][5] = 3321902
	tSurpriseInvestment_Cont["CPsPack"][1][6] = 3321903
	tSurpriseInvestment_Cont["CPsPack"][1][7] = 3321904
	-- 2期礼包
	tSurpriseInvestment_Cont["CPsPack"][2] = {}
	tSurpriseInvestment_Cont["CPsPack"][2][1] = 3323340
	tSurpriseInvestment_Cont["CPsPack"][2][2] = 3323341
	tSurpriseInvestment_Cont["CPsPack"][2][3] = 3323342
	tSurpriseInvestment_Cont["CPsPack"][2][4] = 3323343
	tSurpriseInvestment_Cont["CPsPack"][2][5] = 3323344
	tSurpriseInvestment_Cont["CPsPack"][2][6] = 3323345
	tSurpriseInvestment_Cont["CPsPack"][2][7] = 3323346
	-- 3期礼包
	tSurpriseInvestment_Cont["CPsPack"][3] = {}
	tSurpriseInvestment_Cont["CPsPack"][3][1] = 3323495
	tSurpriseInvestment_Cont["CPsPack"][3][2] = 3323496
	tSurpriseInvestment_Cont["CPsPack"][3][3] = 3323497
	tSurpriseInvestment_Cont["CPsPack"][3][4] = 3323498
	tSurpriseInvestment_Cont["CPsPack"][3][5] = 3323499
	tSurpriseInvestment_Cont["CPsPack"][3][6] = 3323500
	tSurpriseInvestment_Cont["CPsPack"][3][7] = 3323501

local tSurpriseInvestment_Stc = {}
	-- 物品投资
	tSurpriseInvestment_Stc[1] = {}
	-- 万能神纹精粹
	tSurpriseInvestment_Stc[1][1] = {}
	tSurpriseInvestment_Stc[1][1]["Event"] = 197
	tSurpriseInvestment_Stc[1][1]["Data"] = 78
	-- 黄色神纹精粹
	tSurpriseInvestment_Stc[1][2] = {}
	tSurpriseInvestment_Stc[1][2]["Event"] = 197
	tSurpriseInvestment_Stc[1][2]["Data"] = 79
	-- 日常任务物品
	tSurpriseInvestment_Stc[1][3] = {}
	tSurpriseInvestment_Stc[1][3]["Event"] = 197
	tSurpriseInvestment_Stc[1][3]["Data"] = 80
	-- 正气令
	tSurpriseInvestment_Stc[1][4] = {}
	tSurpriseInvestment_Stc[1][4]["Event"] = 197
	tSurpriseInvestment_Stc[1][4]["Data"] = 81
	-- 魔武通玄丹
	tSurpriseInvestment_Stc[1][5] = {}
	tSurpriseInvestment_Stc[1][5]["Event"] = 197
	tSurpriseInvestment_Stc[1][5]["Data"] = 82
	-- 强效护心丹
	tSurpriseInvestment_Stc[1][6] = {}
	tSurpriseInvestment_Stc[1][6]["Event"] = 197
	tSurpriseInvestment_Stc[1][6]["Data"] = 83
	-- 免费强炼丹
	tSurpriseInvestment_Stc[1][7] = {}
	tSurpriseInvestment_Stc[1][7]["Event"] = 197
	tSurpriseInvestment_Stc[1][7]["Data"] = 84
	-- 秘制免费修炼丹
	tSurpriseInvestment_Stc[1][8] = {}
	tSurpriseInvestment_Stc[1][8]["Event"] = 197
	tSurpriseInvestment_Stc[1][8]["Data"] = 85
	-- 炼魂石
	tSurpriseInvestment_Stc[1][9] = {}
	tSurpriseInvestment_Stc[1][9]["Event"] = 203
	tSurpriseInvestment_Stc[1][9]["Data"] = 97
	-- 珍宝领取
	tSurpriseInvestment_Stc[3] = {}
	tSurpriseInvestment_Stc[3]["Event"] = 197
	tSurpriseInvestment_Stc[3]["Data"] = 95
	-- 天石领取
	tSurpriseInvestment_Stc[4] = {}
	tSurpriseInvestment_Stc[4]["Event"] = 197
	tSurpriseInvestment_Stc[4]["Data"] = 96
	
	-- 天石礼包掩码
	tSurpriseInvestment_Stc["CPsPack"] = {}
	-- 1期掩码
	tSurpriseInvestment_Stc["CPsPack"][1] = {}
	-- 天石投资
	tSurpriseInvestment_Stc["CPsPack"][1][2] = {}
	-- 650天石 7天
	tSurpriseInvestment_Stc["CPsPack"][1][2][1] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][2][1]["Event"] = 197
	tSurpriseInvestment_Stc["CPsPack"][1][2][1]["Data"] = 88
	-- 6650天石 7天
	tSurpriseInvestment_Stc["CPsPack"][1][2][2] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][2][2]["Event"] = 197
	tSurpriseInvestment_Stc["CPsPack"][1][2][2]["Data"] = 89
	-- 1000天石 15天
	tSurpriseInvestment_Stc["CPsPack"][1][2][3] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][2][3]["Event"] = 197
	tSurpriseInvestment_Stc["CPsPack"][1][2][3]["Data"] = 90
	-- 10000天石 15天
	tSurpriseInvestment_Stc["CPsPack"][1][2][4] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][2][4]["Event"] = 197
	tSurpriseInvestment_Stc["CPsPack"][1][2][4]["Data"] = 91
	-- 200天石 30天
	tSurpriseInvestment_Stc["CPsPack"][1][2][5] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][2][5]["Event"] = 197
	tSurpriseInvestment_Stc["CPsPack"][1][2][5]["Data"] = 92
	-- 1000天石 30天
	tSurpriseInvestment_Stc["CPsPack"][1][2][6] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][2][6]["Event"] = 197
	tSurpriseInvestment_Stc["CPsPack"][1][2][6]["Data"] = 93
	-- 10000天石 30天
	tSurpriseInvestment_Stc["CPsPack"][1][2][7] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][2][7]["Event"] = 197
	tSurpriseInvestment_Stc["CPsPack"][1][2][7]["Data"] = 94
	-- 礼包领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5] = {}
	-- 650天石 7天领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5][1] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][5][1]["Event"] = 198
	tSurpriseInvestment_Stc["CPsPack"][1][5][1]["Data"] = 2
	tSurpriseInvestment_Stc["CPsPack"][1][5][1]["Max"] = 7
	-- 6650天石 7天领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5][2] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][5][2]["Event"] = 198
	tSurpriseInvestment_Stc["CPsPack"][1][5][2]["Data"] = 3
	tSurpriseInvestment_Stc["CPsPack"][1][5][2]["Max"] = 7
	-- 1000天石 15天领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5][3] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][5][3]["Event"] = 198
	tSurpriseInvestment_Stc["CPsPack"][1][5][3]["Data"] = 4
	tSurpriseInvestment_Stc["CPsPack"][1][5][3]["Max"] = 15
	-- 10000天石 15天领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5][4] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][5][4]["Event"] = 198
	tSurpriseInvestment_Stc["CPsPack"][1][5][4]["Data"] = 5
	tSurpriseInvestment_Stc["CPsPack"][1][5][4]["Max"] = 15
	-- 200天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5][5] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][5][5]["Event"] = 198
	tSurpriseInvestment_Stc["CPsPack"][1][5][5]["Data"] = 6
	tSurpriseInvestment_Stc["CPsPack"][1][5][5]["Max"] = 30
	-- 1000天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5][6] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][5][6]["Event"] = 198
	tSurpriseInvestment_Stc["CPsPack"][1][5][6]["Data"] = 7
	tSurpriseInvestment_Stc["CPsPack"][1][5][6]["Max"] = 30
	-- 10000天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][1][5][7] = {}
	tSurpriseInvestment_Stc["CPsPack"][1][5][7]["Event"] = 198
	tSurpriseInvestment_Stc["CPsPack"][1][5][7]["Data"] = 8
	tSurpriseInvestment_Stc["CPsPack"][1][5][7]["Max"] = 30
	-- 2期掩码
	tSurpriseInvestment_Stc["CPsPack"][2] = {}
	-- 天石投资
	tSurpriseInvestment_Stc["CPsPack"][2][2] = {}
	-- 650天石 7天
	tSurpriseInvestment_Stc["CPsPack"][2][2][1] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][2][1]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][2][1]["Data"] = 32
	-- 6650天石 7天
	tSurpriseInvestment_Stc["CPsPack"][2][2][2] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][2][2]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][2][2]["Data"] = 33
	-- 1000天石 15天
	tSurpriseInvestment_Stc["CPsPack"][2][2][3] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][2][3]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][2][3]["Data"] = 34
	-- 10000天石 15天
	tSurpriseInvestment_Stc["CPsPack"][2][2][4] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][2][4]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][2][4]["Data"] = 35
	-- 200天石 30天
	tSurpriseInvestment_Stc["CPsPack"][2][2][5] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][2][5]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][2][5]["Data"] = 36
	-- 1000天石 30天
	tSurpriseInvestment_Stc["CPsPack"][2][2][6] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][2][6]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][2][6]["Data"] = 37
	-- 10000天石 30天
	tSurpriseInvestment_Stc["CPsPack"][2][2][7] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][2][7]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][2][7]["Data"] = 38
	-- 礼包领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5] = {}
	-- 650天石 7天领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5][1] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][5][1]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][5][1]["Data"] = 39
	tSurpriseInvestment_Stc["CPsPack"][2][5][1]["Max"] = 7
	-- 6650天石 7天领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5][2] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][5][2]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][5][2]["Data"] = 40
	tSurpriseInvestment_Stc["CPsPack"][2][5][2]["Max"] = 7
	-- 1000天石 15天领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5][3] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][5][3]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][5][3]["Data"] = 41
	tSurpriseInvestment_Stc["CPsPack"][2][5][3]["Max"] = 15
	-- 10000天石 15天领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5][4] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][5][4]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][5][4]["Data"] = 42
	tSurpriseInvestment_Stc["CPsPack"][2][5][4]["Max"] = 15
	-- 200天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5][5] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][5][5]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][5][5]["Data"] = 43
	tSurpriseInvestment_Stc["CPsPack"][2][5][5]["Max"] = 30
	-- 1000天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5][6] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][5][6]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][5][6]["Data"] = 44
	tSurpriseInvestment_Stc["CPsPack"][2][5][6]["Max"] = 30
	-- 10000天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][2][5][7] = {}
	tSurpriseInvestment_Stc["CPsPack"][2][5][7]["Event"] = 203
	tSurpriseInvestment_Stc["CPsPack"][2][5][7]["Data"] = 45
	tSurpriseInvestment_Stc["CPsPack"][2][5][7]["Max"] = 30
	-- 3期掩码
	tSurpriseInvestment_Stc["CPsPack"][3] = {}
	-- 天石投资
	tSurpriseInvestment_Stc["CPsPack"][3][2] = {}
	-- 650天石 7天
	tSurpriseInvestment_Stc["CPsPack"][3][2][1] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][2][1]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][2][1]["Data"] = 00
	-- 6650天石 7天
	tSurpriseInvestment_Stc["CPsPack"][3][2][2] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][2][2]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][2][2]["Data"] = 1
	-- 1000天石 15天
	tSurpriseInvestment_Stc["CPsPack"][3][2][3] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][2][3]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][2][3]["Data"] = 2
	-- 10000天石 15天
	tSurpriseInvestment_Stc["CPsPack"][3][2][4] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][2][4]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][2][4]["Data"] = 3
	-- 200天石 30天
	tSurpriseInvestment_Stc["CPsPack"][3][2][5] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][2][5]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][2][5]["Data"] = 4
	-- 1000天石 30天
	tSurpriseInvestment_Stc["CPsPack"][3][2][6] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][2][6]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][2][6]["Data"] = 5
	-- 10000天石 30天
	tSurpriseInvestment_Stc["CPsPack"][3][2][7] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][2][7]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][2][7]["Data"] = 6
	-- 礼包领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5] = {}
	-- 650天石 7天领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5][1] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][5][1]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][5][1]["Data"] = 7
	tSurpriseInvestment_Stc["CPsPack"][3][5][1]["Max"] = 7
	-- 6650天石 7天领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5][2] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][5][2]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][5][2]["Data"] = 8
	tSurpriseInvestment_Stc["CPsPack"][3][5][2]["Max"] = 7
	-- 1000天石 15天领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5][3] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][5][3]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][5][3]["Data"] = 9
	tSurpriseInvestment_Stc["CPsPack"][3][5][3]["Max"] = 15
	-- 10000天石 15天领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5][4] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][5][4]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][5][4]["Data"] = 10
	tSurpriseInvestment_Stc["CPsPack"][3][5][4]["Max"] = 15
	-- 200天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5][5] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][5][5]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][5][5]["Data"] = 11
	tSurpriseInvestment_Stc["CPsPack"][3][5][5]["Max"] = 30
	-- 1000天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5][6] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][5][6]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][5][6]["Data"] = 12
	tSurpriseInvestment_Stc["CPsPack"][3][5][6]["Max"] = 30
	-- 10000天石 30天领取次数
	tSurpriseInvestment_Stc["CPsPack"][3][5][7] = {}
	tSurpriseInvestment_Stc["CPsPack"][3][5][7]["Event"] = 204
	tSurpriseInvestment_Stc["CPsPack"][3][5][7]["Data"] = 13
	tSurpriseInvestment_Stc["CPsPack"][3][5][7]["Max"] = 30
	
local tSurpriseInvestment_Data = {}
	-- 物品投资id
	tSurpriseInvestment_Data[1] = 4060001
	tSurpriseInvestment_Data[2] = 4050001
	tSurpriseInvestment_Data[3] = {3303084,3007311,3008729,3008731,3007870,3600013}
	tSurpriseInvestment_Data[4] = 729304
	tSurpriseInvestment_Data[5] = 3303373
	tSurpriseInvestment_Data[6] = 3002030
	tSurpriseInvestment_Data[7] = 3003124
	tSurpriseInvestment_Data[8] = 3002926
	tSurpriseInvestment_Data[9] = 3321107

local tSurpriseInvestment_Pack = {}
	-- 1期礼包
	-- ===7日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3321898]
	tSurpriseInvestment_Pack[3321898] = {}
	tSurpriseInvestment_Pack[3321898]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3321898]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3321898]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3321898]["RewardItem"][1]["Id"] = 3312286 -- 【库】7-diaBolsaBonus[属性:9], 【表格】7日返利礼盒
	tSurpriseInvestment_Pack[3321898]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3321898]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3321898]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3321898]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3321898]["Mark"] = 1


	tSurpriseInvestment_Pack[3321899] = {}
	-- ===7日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3321899]
	tSurpriseInvestment_Pack[3321899]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3321899]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3321899]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3321899]["RewardItem"][1]["Id"] = 3312287 -- 【库】7-diaPaqBonusPrecioso[属性:9], 【表格】7日返利精致礼盒
	tSurpriseInvestment_Pack[3321899]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3321899]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3321899]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3321899]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3321899]["Mark"] = 2


	tSurpriseInvestment_Pack[3321900] = {}
	-- ===15日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3321900]
	tSurpriseInvestment_Pack[3321900]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3321900]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3321900]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3321900]["RewardItem"][1]["Id"] = 3312288 -- 【库】15-diaBolsaBonus[属性:9], 【表格】15日返利礼盒
	tSurpriseInvestment_Pack[3321900]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3321900]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3321900]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3321900]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3321900]["Mark"] = 3


	tSurpriseInvestment_Pack[3321901] = {}
	-- ===15日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3321901]
	tSurpriseInvestment_Pack[3321901]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3321901]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3321901]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3321901]["RewardItem"][1]["Id"] = 3312289 -- 【库】15-diaPaqBonusPrecioso[属性:9], 【表格】15日返利精致礼盒
	tSurpriseInvestment_Pack[3321901]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3321901]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3321901]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3321901]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3321901]["Mark"] = 4


	tSurpriseInvestment_Pack[3321902] = {}
	-- ===30日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3321902]
	tSurpriseInvestment_Pack[3321902]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3321902]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3321902]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3321902]["RewardItem"][1]["Id"] = 3312290 -- 【库】30-diaBolsaBonus[属性:9], 【表格】30日返利礼盒
	tSurpriseInvestment_Pack[3321902]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3321902]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3321902]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3321902]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3321902]["Mark"] = 5


	tSurpriseInvestment_Pack[3321903] = {}
	-- ===30日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3321903]
	tSurpriseInvestment_Pack[3321903]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3321903]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3321903]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3321903]["RewardItem"][1]["Id"] = 3312291 -- 【库】30-diaPaqBonusPrecioso[属性:9], 【表格】30日返利精致礼盒
	tSurpriseInvestment_Pack[3321903]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3321903]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3321903]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3321903]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3321903]["Mark"] = 6


	tSurpriseInvestment_Pack[3321904] = {}
	-- ===30日特级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3321904]
	tSurpriseInvestment_Pack[3321904]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3321904]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3321904]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3321904]["RewardItem"][1]["Id"] = 3312292 -- 【库】7-diaPaqBonusSuper[属性:9], 【表格】30日返利豪华礼盒
	tSurpriseInvestment_Pack[3321904]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqBonusSuper*1
	tSurpriseInvestment_Pack[3321904]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3321904]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3321904]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3321904]["Mark"] = 7


	-- 2期礼包
	-- ===7日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323340]
	tSurpriseInvestment_Pack[3323340] = {}
	tSurpriseInvestment_Pack[3323340]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323340]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323340]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323340]["RewardItem"][1]["Id"] = 3327023 -- 【库】7-diaBolsaBonus[属性:9], 【表格】7日返利礼盒
	tSurpriseInvestment_Pack[3323340]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3323340]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323340]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323340]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323340]["Mark"] = 1


	tSurpriseInvestment_Pack[3323341] = {}
	-- ===7日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323341]
	tSurpriseInvestment_Pack[3323341]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323341]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323341]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323341]["RewardItem"][1]["Id"] = 3327024 -- 【库】7-diaPaqBonusPrecioso[属性:9], 【表格】7日返利精致礼盒
	tSurpriseInvestment_Pack[3323341]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3323341]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323341]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323341]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323341]["Mark"] = 2


	tSurpriseInvestment_Pack[3323342] = {}
	-- ===15日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323342]
	tSurpriseInvestment_Pack[3323342]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323342]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323342]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323342]["RewardItem"][1]["Id"] = 3327025 -- 【库】15-diaBolsaBonus[属性:9], 【表格】15日返利礼盒
	tSurpriseInvestment_Pack[3323342]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3323342]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323342]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323342]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323342]["Mark"] = 3


	tSurpriseInvestment_Pack[3323343] = {}
	-- ===15日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323343]
	tSurpriseInvestment_Pack[3323343]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323343]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323343]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323343]["RewardItem"][1]["Id"] = 3327026 -- 【库】15-diaPaqBonusPrecioso[属性:9], 【表格】15日返利精致礼盒
	tSurpriseInvestment_Pack[3323343]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3323343]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323343]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323343]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323343]["Mark"] = 4


	tSurpriseInvestment_Pack[3323344] = {}
	-- ===30日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323344]
	tSurpriseInvestment_Pack[3323344]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323344]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323344]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323344]["RewardItem"][1]["Id"] = 3327027 -- 【库】30-diaBolsaBonus[属性:9], 【表格】30日返利礼盒
	tSurpriseInvestment_Pack[3323344]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3323344]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323344]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323344]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323344]["Mark"] = 5


	tSurpriseInvestment_Pack[3323345] = {}
	-- ===30日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323345]
	tSurpriseInvestment_Pack[3323345]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323345]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323345]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323345]["RewardItem"][1]["Id"] = 3327028 -- 【库】30-diaPaqBonusPrecioso[属性:9], 【表格】30日返利精致礼盒
	tSurpriseInvestment_Pack[3323345]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3323345]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323345]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323345]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323345]["Mark"] = 6


	tSurpriseInvestment_Pack[3323346] = {}
	-- ===30日特级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323346]
	tSurpriseInvestment_Pack[3323346]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323346]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323346]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323346]["RewardItem"][1]["Id"] = 3327435 -- 【库】7-diaPaqBonusSuper[属性:9], 【表格】30日返利豪华礼盒
	tSurpriseInvestment_Pack[3323346]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqBonusSuper*1
	tSurpriseInvestment_Pack[3323346]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323346]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323346]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323346]["Mark"] = 7


	-- 3期礼包
	-- ===7日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323495]
	tSurpriseInvestment_Pack[3323495] = {}
	tSurpriseInvestment_Pack[3323495]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323495]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323495]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323495]["RewardItem"][1]["Id"] = 3330729 -- 【库】7-diaBolsaBonus[属性:9], 【表格】7日返利礼盒
	tSurpriseInvestment_Pack[3323495]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3323495]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323495]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323495]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323495]["Mark"] = 1


	tSurpriseInvestment_Pack[3323496] = {}
	-- ===7日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323496]
	tSurpriseInvestment_Pack[3323496]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323496]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323496]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323496]["RewardItem"][1]["Id"] = 3330730 -- 【库】7-diaPaqBonusPrecioso[属性:9], 【表格】7日返利精致礼盒
	tSurpriseInvestment_Pack[3323496]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3323496]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323496]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323496]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323496]["Mark"] = 2


	tSurpriseInvestment_Pack[3323497] = {}
	-- ===15日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323497]
	tSurpriseInvestment_Pack[3323497]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323497]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323497]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323497]["RewardItem"][1]["Id"] = 3330731 -- 【库】15-diaBolsaBonus[属性:9], 【表格】15日返利礼盒
	tSurpriseInvestment_Pack[3323497]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3323497]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323497]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323497]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323497]["Mark"] = 3


	tSurpriseInvestment_Pack[3323498] = {}
	-- ===15日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323498]
	tSurpriseInvestment_Pack[3323498]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323498]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323498]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323498]["RewardItem"][1]["Id"] = 3330732 -- 【库】15-diaPaqBonusPrecioso[属性:9], 【表格】15日返利精致礼盒
	tSurpriseInvestment_Pack[3323498]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3323498]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323498]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323498]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323498]["Mark"] = 4


	tSurpriseInvestment_Pack[3323499] = {}
	-- ===30日返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323499]
	tSurpriseInvestment_Pack[3323499]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323499]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323499]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323499]["RewardItem"][1]["Id"] = 3330733 -- 【库】30-diaBolsaBonus[属性:9], 【表格】30日返利礼盒
	tSurpriseInvestment_Pack[3323499]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaBolsaBonus*1
	tSurpriseInvestment_Pack[3323499]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323499]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323499]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323499]["Mark"] = 5


	tSurpriseInvestment_Pack[3323500] = {}
	-- ===30日高级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323500]
	tSurpriseInvestment_Pack[3323500]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323500]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323500]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323500]["RewardItem"][1]["Id"] = 3330734 -- 【库】30-diaPaqBonusPrecioso[属性:9], 【表格】30日返利精致礼盒
	tSurpriseInvestment_Pack[3323500]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaPaqBonusPrecioso*1
	tSurpriseInvestment_Pack[3323500]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323500]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323500]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323500]["Mark"] = 6


	tSurpriseInvestment_Pack[3323501] = {}
	-- ===30日特级返利大礼盒
	-- ===索引: tSurpriseInvestment_Pack[3323501]
	tSurpriseInvestment_Pack[3323501]["LogId"] = 12001453
	tSurpriseInvestment_Pack[3323501]["RewardItem"] = {}
	tSurpriseInvestment_Pack[3323501]["RewardItem"][1] = {}
	tSurpriseInvestment_Pack[3323501]["RewardItem"][1]["Id"] = 3330735 -- 【库】7-diaPaqBonusSuper[属性:9], 【表格】30日返利豪华礼盒
	tSurpriseInvestment_Pack[3323501]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqBonusSuper*1
	tSurpriseInvestment_Pack[3323501]["RewardEffect"] = {}
	tSurpriseInvestment_Pack[3323501]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Pack[3323501]["RewardEffect"]["Effect"] = "angelwing"
	tSurpriseInvestment_Pack[3323501]["Mark"] = 7


local tSurpriseInvestment_Reward = {}
	tSurpriseInvestment_Reward["GetReward"] = {}
	tSurpriseInvestment_Reward["GetReward"]["LogId"] = 12001453
	tSurpriseInvestment_Reward["GetReward"]["RewardItem"] = {}
	tSurpriseInvestment_Reward["GetReward"]["RewardEffect"] = {}
	tSurpriseInvestment_Reward["GetReward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward["GetReward"]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 物品投资奖励
	tSurpriseInvestment_Reward[1] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][1]
	tSurpriseInvestment_Reward[1][1] = {}
	tSurpriseInvestment_Reward[1][1]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][1]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][1]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][1]["RewardItem"][1]["Id"] = 3306919 -- 【库】PaqAleatorioRunaAmarilla[属性:9], 【表格】黄色神纹随机包*1（赠）
	tSurpriseInvestment_Reward[1][1]["RewardItem"][1]["Attr"] = "0 1" -- PaqAleatorioRunaAmarilla*1
	tSurpriseInvestment_Reward[1][1]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][1]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][2] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][2]
	tSurpriseInvestment_Reward[1][2]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][2]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][2]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][2]["RewardItem"][1]["Id"] = 3306919 -- 【库】PaqAleatorioRunaAmarilla[属性:9], 【表格】黄色神纹随机包*1（赠）
	tSurpriseInvestment_Reward[1][2]["RewardItem"][1]["Attr"] = "0 1" -- PaqAleatorioRunaAmarilla*1
	tSurpriseInvestment_Reward[1][2]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][2]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][3] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][3]
	tSurpriseInvestment_Reward[1][3]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][3]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][3]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][3]["RewardItem"][1]["Id"] = 728596 -- 【库】PedazoBolaDeDios[属性:9], 【表格】九转聚神丹碎片（赠）
	tSurpriseInvestment_Reward[1][3]["RewardItem"][1]["Attr"] = "0 1" -- PedazoBolaDeDios*1
	tSurpriseInvestment_Reward[1][3]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][3]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][4] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][4]
	tSurpriseInvestment_Reward[1][4]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][4]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][4]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][4]["RewardItem"][1]["Id"] = 722057 -- 【库】BolaDeDios[属性:0], 【表格】九转聚神丹（赠）
	tSurpriseInvestment_Reward[1][4]["RewardItem"][1]["Attr"] = "0 1 3" -- BolaDeDios（赠）*1
	tSurpriseInvestment_Reward[1][4]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][4]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][5] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][5]
	tSurpriseInvestment_Reward[1][5]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][5]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][5]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][5]["RewardItem"][1]["Id"] = 3320507 -- 【库】PaqInversorSorpresa[属性:9], 【表格】投资惊喜礼盒*1
	tSurpriseInvestment_Reward[1][5]["RewardItem"][1]["Attr"] = "0 1" -- PaqInversorSorpresa*1
	tSurpriseInvestment_Reward[1][5]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][5]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][6] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][6]
	tSurpriseInvestment_Reward[1][6]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][6]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][6]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][6]["RewardItem"][1]["Id"] = 3320507 -- 【库】PaqInversorSorpresa[属性:9], 【表格】投资惊喜礼盒*1
	tSurpriseInvestment_Reward[1][6]["RewardItem"][1]["Attr"] = "0 1" -- PaqInversorSorpresa*1
	tSurpriseInvestment_Reward[1][6]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][6]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][7] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][7]
	tSurpriseInvestment_Reward[1][7]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][7]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][7]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][7]["RewardItem"][1]["Id"] = 3320507 -- 【库】PaqInversorSorpresa[属性:9], 【表格】投资惊喜礼盒*1
	tSurpriseInvestment_Reward[1][7]["RewardItem"][1]["Attr"] = "0 1" -- PaqInversorSorpresa*1
	tSurpriseInvestment_Reward[1][7]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][7]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][8] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][8]
	tSurpriseInvestment_Reward[1][8]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][8]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][8]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][8]["RewardItem"][1]["Id"] = 3320507 -- 【库】PaqInversorSorpresa[属性:9], 【表格】投资惊喜礼盒*1
	tSurpriseInvestment_Reward[1][8]["RewardItem"][1]["Attr"] = "0 1" -- PaqInversorSorpresa*1
	tSurpriseInvestment_Reward[1][8]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][8]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[1][9] = {}
	-- ===索引: tSurpriseInvestment_Reward[1][8]
	tSurpriseInvestment_Reward[1][9]["LogId"] = 12001453
	tSurpriseInvestment_Reward[1][9]["RewardItem"] = {}
	tSurpriseInvestment_Reward[1][9]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[1][9]["RewardItem"][1]["Id"] = 3320507 -- 【库】PaqInversorSorpresa[属性:9], 【表格】投资惊喜礼盒*1
	tSurpriseInvestment_Reward[1][9]["RewardItem"][1]["Attr"] = "0 1" -- PaqInversorSorpresa*1
	tSurpriseInvestment_Reward[1][9]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[1][9]["RewardEffect"]["Effect"] = "angelwing"

	-- 天石投资奖励
	tSurpriseInvestment_Reward[2] = {}
	tSurpriseInvestment_Reward[2][1] = {}
	-- ===索引: tSurpriseInvestment_Reward[2][1]
	tSurpriseInvestment_Reward[2][1]["LogId"] = 12001453
	tSurpriseInvestment_Reward[2][1]["RewardItem"] = {}
	tSurpriseInvestment_Reward[2][1]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[2][1]["RewardItem"][1]["Id"] = 3321898 -- 【库】7-diaPaqBonus[属性:9], 【表格】7日返利大礼盒
	tSurpriseInvestment_Reward[2][1]["RewardItem"][1]["Attr"] = "0 1 0 20160 1" -- 14天时效(激活)的7-diaPaqBonus*1
	tSurpriseInvestment_Reward[2][1]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[2][1]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[2][2] = {}
	-- ===索引: tSurpriseInvestment_Reward[2][2]
	tSurpriseInvestment_Reward[2][2]["LogId"] = 12001453
	tSurpriseInvestment_Reward[2][2]["RewardItem"] = {}
	tSurpriseInvestment_Reward[2][2]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[2][2]["RewardItem"][1]["Id"] = 3321899 -- 【库】7-diaPaqBonusGrande[属性:9], 【表格】7日高级返利大礼盒
	tSurpriseInvestment_Reward[2][2]["RewardItem"][1]["Attr"] = "0 1 0 20160 1" -- 14天时效(激活)的7-diaPaqBonusGrande*1
	tSurpriseInvestment_Reward[2][2]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[2][2]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[2][3] = {}
	-- ===索引: tSurpriseInvestment_Reward[2][3]
	tSurpriseInvestment_Reward[2][3]["LogId"] = 12001453
	tSurpriseInvestment_Reward[2][3]["RewardItem"] = {}
	tSurpriseInvestment_Reward[2][3]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[2][3]["RewardItem"][1]["Id"] = 3321900 -- 【库】15-diaPaqBonus[属性:9], 【表格】15日返利大礼盒
	tSurpriseInvestment_Reward[2][3]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的15-diaPaqBonus*1
	tSurpriseInvestment_Reward[2][3]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[2][3]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[2][4] = {}
	-- ===索引: tSurpriseInvestment_Reward[2][4]
	tSurpriseInvestment_Reward[2][4]["LogId"] = 12001453
	tSurpriseInvestment_Reward[2][4]["RewardItem"] = {}
	tSurpriseInvestment_Reward[2][4]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[2][4]["RewardItem"][1]["Id"] = 3321901 -- 【库】15-diaPaqBonusGrande[属性:9], 【表格】15日高级返利大礼盒
	tSurpriseInvestment_Reward[2][4]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的15-diaPaqBonusGrande*1
	tSurpriseInvestment_Reward[2][4]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[2][4]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[2][5] = {}
	-- ===索引: tSurpriseInvestment_Reward[2][5]
	tSurpriseInvestment_Reward[2][5]["LogId"] = 12001453
	tSurpriseInvestment_Reward[2][5]["RewardItem"] = {}
	tSurpriseInvestment_Reward[2][5]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[2][5]["RewardItem"][1]["Id"] = 3321902 -- 【库】30-diaPaqBonus[属性:9], 【表格】30日返利大礼盒
	tSurpriseInvestment_Reward[2][5]["RewardItem"][1]["Attr"] = "0 1 0 86400 1" -- 60天时效(激活)的30-diaPaqBonus*1
	tSurpriseInvestment_Reward[2][5]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[2][5]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[2][6] = {}
	-- ===索引: tSurpriseInvestment_Reward[2][6]
	tSurpriseInvestment_Reward[2][6]["LogId"] = 12001453
	tSurpriseInvestment_Reward[2][6]["RewardItem"] = {}
	tSurpriseInvestment_Reward[2][6]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[2][6]["RewardItem"][1]["Id"] = 3321903 -- 【库】30-diaPaqBonusGrande[属性:9], 【表格】30日高级返利大礼盒
	tSurpriseInvestment_Reward[2][6]["RewardItem"][1]["Attr"] = "0 1 0 86400 1" -- 60天时效(激活)的30-diaPaqBonusGrande*1
	tSurpriseInvestment_Reward[2][6]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[2][6]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_Reward[2][7] = {}
	-- ===索引: tSurpriseInvestment_Reward[2][7]
	tSurpriseInvestment_Reward[2][7]["LogId"] = 12001453
	tSurpriseInvestment_Reward[2][7]["RewardItem"] = {}
	tSurpriseInvestment_Reward[2][7]["RewardItem"][1] = {}
	tSurpriseInvestment_Reward[2][7]["RewardItem"][1]["Id"] = 3321904 -- 【库】30-diaPaqBonusEspecial[属性:9], 【表格】30日特级返利大礼盒
	tSurpriseInvestment_Reward[2][7]["RewardItem"][1]["Attr"] = "0 1 0 86400 1" -- 60天时效(激活)的30-diaPaqBonusEspecial*1
	tSurpriseInvestment_Reward[2][7]["RewardEffect"] = {}
	tSurpriseInvestment_Reward[2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Reward[2][7]["RewardEffect"]["Effect"] = "angelwing"


local tSurpriseInvestment_EMoney = {}
	-- ===索引: tSurpriseInvestment_EMoney[1]
	tSurpriseInvestment_EMoney[1] = {}
	tSurpriseInvestment_EMoney[1]["LogId"] = 12001453
	tSurpriseInvestment_EMoney[1]["RewardItem"] = {}
	tSurpriseInvestment_EMoney[1]["RewardItem"][1] = {}
	tSurpriseInvestment_EMoney[1]["RewardItem"][1]["Id"] = 3330971 -- 【库】7-diaPaqInversorSuper[属性:9], 【表格】7日投资豪华礼盒
	tSurpriseInvestment_EMoney[1]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqInversorSuper*1
	tSurpriseInvestment_EMoney[1]["RewardEffect"] = {}
	tSurpriseInvestment_EMoney[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_EMoney[1]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_EMoney[2] = {}
	-- ===索引: tSurpriseInvestment_EMoney[2]
	tSurpriseInvestment_EMoney[2]["LogId"] = 12001453
	tSurpriseInvestment_EMoney[2]["RewardItem"] = {}
	tSurpriseInvestment_EMoney[2]["RewardItem"][1] = {}
	tSurpriseInvestment_EMoney[2]["RewardItem"][1]["Id"] = 3330972 -- 【库】7-diaPaqInversorLujo[属性:9], 【表格】7日投资奢华礼盒
	tSurpriseInvestment_EMoney[2]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的7-diaPaqInversorLujo*1
	tSurpriseInvestment_EMoney[2]["RewardEffect"] = {}
	tSurpriseInvestment_EMoney[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_EMoney[2]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_EMoney[3] = {}
	-- ===索引: tSurpriseInvestment_EMoney[3]
	tSurpriseInvestment_EMoney[3]["LogId"] = 12001453
	tSurpriseInvestment_EMoney[3]["RewardItem"] = {}
	tSurpriseInvestment_EMoney[3]["RewardItem"][1] = {}
	tSurpriseInvestment_EMoney[3]["RewardItem"][1]["Id"] = 3330973 -- 【库】15-diaPaqInversorSuper[属性:9], 【表格】15日投资豪华礼盒
	tSurpriseInvestment_EMoney[3]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaPaqInversorSuper*1
	tSurpriseInvestment_EMoney[3]["RewardEffect"] = {}
	tSurpriseInvestment_EMoney[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_EMoney[3]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_EMoney[4] = {}
	-- ===索引: tSurpriseInvestment_EMoney[4]
	tSurpriseInvestment_EMoney[4]["LogId"] = 12001453
	tSurpriseInvestment_EMoney[4]["RewardItem"] = {}
	tSurpriseInvestment_EMoney[4]["RewardItem"][1] = {}
	tSurpriseInvestment_EMoney[4]["RewardItem"][1]["Id"] = 3330974 -- 【库】15-diaPaqInversorLujo[属性:9], 【表格】15日投资奢华礼盒
	tSurpriseInvestment_EMoney[4]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的15-diaPaqInversorLujo*1
	tSurpriseInvestment_EMoney[4]["RewardEffect"] = {}
	tSurpriseInvestment_EMoney[4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_EMoney[4]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_EMoney[5] = {}
	-- ===索引: tSurpriseInvestment_EMoney[5]
	tSurpriseInvestment_EMoney[5]["LogId"] = 12001453
	tSurpriseInvestment_EMoney[5]["RewardItem"] = {}
	tSurpriseInvestment_EMoney[5]["RewardItem"][1] = {}
	tSurpriseInvestment_EMoney[5]["RewardItem"][1]["Id"] = 3330975 -- 【库】30-diaPaqInversorPrecioso[属性:9], 【表格】30日投资精致礼盒
	tSurpriseInvestment_EMoney[5]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaPaqInversorPrecioso*1
	tSurpriseInvestment_EMoney[5]["RewardEffect"] = {}
	tSurpriseInvestment_EMoney[5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_EMoney[5]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_EMoney[6] = {}
	-- ===索引: tSurpriseInvestment_EMoney[6]
	tSurpriseInvestment_EMoney[6]["LogId"] = 12001453
	tSurpriseInvestment_EMoney[6]["RewardItem"] = {}
	tSurpriseInvestment_EMoney[6]["RewardItem"][1] = {}
	tSurpriseInvestment_EMoney[6]["RewardItem"][1]["Id"] = 3330976 -- 【库】30-diaPaqInversorSuper[属性:9], 【表格】30日投资豪华礼盒
	tSurpriseInvestment_EMoney[6]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaPaqInversorSuper*1
	tSurpriseInvestment_EMoney[6]["RewardEffect"] = {}
	tSurpriseInvestment_EMoney[6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_EMoney[6]["RewardEffect"]["Effect"] = "angelwing"


	tSurpriseInvestment_EMoney[7] = {}
	-- ===索引: tSurpriseInvestment_EMoney[7]
	tSurpriseInvestment_EMoney[7]["LogId"] = 12001453
	tSurpriseInvestment_EMoney[7]["RewardItem"] = {}
	tSurpriseInvestment_EMoney[7]["RewardItem"][1] = {}
	tSurpriseInvestment_EMoney[7]["RewardItem"][1]["Id"] = 3330977 -- 【库】30-diaPaqInversorLujo[属性:9], 【表格】30日投资奢华礼盒
	tSurpriseInvestment_EMoney[7]["RewardItem"][1]["Attr"] = "0 1 0 7200 1" -- 5天时效(激活)的30-diaPaqInversorLujo*1
	tSurpriseInvestment_EMoney[7]["RewardEffect"] = {}
	tSurpriseInvestment_EMoney[7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_EMoney[7]["RewardEffect"]["Effect"] = "angelwing"

local tSurpriseInvestment_EMoneyLog = {}
	-- 投资log
	tSurpriseInvestment_EMoneyLog["Investment"] = {}
	tSurpriseInvestment_EMoneyLog["Investment"][1] = {}
	tSurpriseInvestment_EMoneyLog["Investment"][1][1] = "1000	822	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][2] = "1000	823	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][3] = "1000	824	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][4] = "1000	825	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][5] = "1000	826	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][6] = "1000	827	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][7] = "1000	828	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][8] = "1000	829	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][1][9] = "1000	870	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][2] = {}
	tSurpriseInvestment_EMoneyLog["Investment"][2][1] = "1000	498	650	650	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][2][2] = "1000	499	6650	6650	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][2][3] = "1000	500	1000	1000	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][2][4] = "1000	501	10000	10000	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][2][5] = "1000	502	200	200	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][2][6] = "1000	503	1000	1000	1	"
	tSurpriseInvestment_EMoneyLog["Investment"][2][7] = "1000	504	10000	10000	1	"
	-- 返利log
	tSurpriseInvestment_EMoneyLog["Reward"] = {}
	tSurpriseInvestment_EMoneyLog["Reward"][24315] = "1000	831	0	0	1	"
	tSurpriseInvestment_EMoneyLog["Reward"][24316] = "1000	832	0	0	1	"
	-- 返利礼包log
	tSurpriseInvestment_EMoneyLog["RewardPack"] = {}
	tSurpriseInvestment_EMoneyLog["RewardPack"][1] = "1000	833	0	0	1	"
	tSurpriseInvestment_EMoneyLog["RewardPack"][2] = "1000	834	0	0	1	"
	tSurpriseInvestment_EMoneyLog["RewardPack"][3] = "1000	835	0	0	1	"
	tSurpriseInvestment_EMoneyLog["RewardPack"][4] = "1000	836	0	0	1	"
	tSurpriseInvestment_EMoneyLog["RewardPack"][5] = "1000	837	0	0	1	"
	tSurpriseInvestment_EMoneyLog["RewardPack"][6] = "1000	838	0	0	1	"
	tSurpriseInvestment_EMoneyLog["RewardPack"][7] = "1000	839	0	0	1	"

local tSurpriseInvestment_Package = {}
	-- ===索引: tSurpriseInvestment_Package[3321923]
	-- ===删除: 3321923,1
	tSurpriseInvestment_Package[3321923] = {}
	tSurpriseInvestment_Package[3321923]["LogId"] = 12001453
	tSurpriseInvestment_Package[3321923]["DeleteItem"] = {}
	tSurpriseInvestment_Package[3321923]["DeleteItem"][1] = {}
	tSurpriseInvestment_Package[3321923]["DeleteItem"][1]["Id"] = 3321923 -- 【库】RandomYellowRunePack*20[属性:9]
	tSurpriseInvestment_Package[3321923]["RewardItem"] = {}
	tSurpriseInvestment_Package[3321923]["RewardItem"][1] = {}
	tSurpriseInvestment_Package[3321923]["RewardItem"][1]["Id"] = 3306919 -- 【库】RandomYellowRunePack[属性:9], 【表格】RandomYellowRunePack*20
	tSurpriseInvestment_Package[3321923]["RewardItem"][1]["Attr"] = "0 20" -- RandomYellowRunePack*20
	tSurpriseInvestment_Package[3321923]["RewardEffect"] = {}
	tSurpriseInvestment_Package[3321923]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Package[3321923]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===索引: tSurpriseInvestment_Package[3326790]
	-- ===删除: 3326790,1
	tSurpriseInvestment_Package[3326790] = {}
	tSurpriseInvestment_Package[3326790]["LogId"] = 12001453
	tSurpriseInvestment_Package[3326790]["DeleteItem"] = {}
	tSurpriseInvestment_Package[3326790]["DeleteItem"][1] = {}
	tSurpriseInvestment_Package[3326790]["DeleteItem"][1]["Id"] = 3326790 -- 【库】EXPBallFragment*5[属性:9]
	tSurpriseInvestment_Package[3326790]["RewardItem"] = {}
	tSurpriseInvestment_Package[3326790]["RewardItem"][1] = {}
	tSurpriseInvestment_Package[3326790]["RewardItem"][1]["Id"] = 728596 -- 【库】EXPBallFragment[属性:9], 【表格】EXPBallFragment*5
	tSurpriseInvestment_Package[3326790]["RewardItem"][1]["Attr"] = "0 5" -- EXPBallFragment*5
	tSurpriseInvestment_Package[3326790]["RewardEffect"] = {}
	tSurpriseInvestment_Package[3326790]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Package[3326790]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===索引: tSurpriseInvestment_Package[3326791]
	-- ===删除: 3326791,1
	tSurpriseInvestment_Package[3326791] = {}
	tSurpriseInvestment_Package[3326791]["LogId"] = 12001453
	tSurpriseInvestment_Package[3326791]["DeleteItem"] = {}
	tSurpriseInvestment_Package[3326791]["DeleteItem"][1] = {}
	tSurpriseInvestment_Package[3326791]["DeleteItem"][1]["Id"] = 3326791 -- 【库】PowerEXPBall*5[属性:9]
	tSurpriseInvestment_Package[3326791]["RewardItem"] = {}
	tSurpriseInvestment_Package[3326791]["RewardItem"][1] = {}
	tSurpriseInvestment_Package[3326791]["RewardItem"][1]["Id"] = 722057 -- 【库】PowerEXPBall[属性:0], 【表格】PowerEXPBall*5
	tSurpriseInvestment_Package[3326791]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEXPBall*5
	tSurpriseInvestment_Package[3326791]["RewardEffect"] = {}
	tSurpriseInvestment_Package[3326791]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Package[3326791]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===索引: tSurpriseInvestment_Package[3326792]
	-- ===删除: 3326792,1
	tSurpriseInvestment_Package[3326792] = {}
	tSurpriseInvestment_Package[3326792]["LogId"] = 12001453
	tSurpriseInvestment_Package[3326792]["DeleteItem"] = {}
	tSurpriseInvestment_Package[3326792]["DeleteItem"][1] = {}
	tSurpriseInvestment_Package[3326792]["DeleteItem"][1]["Id"] = 3326792 -- 【库】RandomYellowRunePack*5[属性:9]
	tSurpriseInvestment_Package[3326792]["RewardItem"] = {}
	tSurpriseInvestment_Package[3326792]["RewardItem"][1] = {}
	tSurpriseInvestment_Package[3326792]["RewardItem"][1]["Id"] = 3306919 -- 【库】RandomYellowRunePack[属性:9], 【表格】RandomYellowRunePack*5
	tSurpriseInvestment_Package[3326792]["RewardItem"][1]["Attr"] = "0 5" -- RandomYellowRunePack*20
	tSurpriseInvestment_Package[3326792]["RewardEffect"] = {}
	tSurpriseInvestment_Package[3326792]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSurpriseInvestment_Package[3326792]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------
-- 文字初步处理
function SurpriseInvestment_TextFirst(nNpcId,nChooseType)
	local nEvent = tSurpriseInvestment_Stc[1][nChooseType]["Event"]
	local nType = tSurpriseInvestment_Stc[1][nChooseType]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nLeft = tSurpriseInvestment_Cont["MaxTimes"][1][nChooseType] - nData
	local nTextId = tonumber(2 .. nChooseType .. 4)
	tNpcGossip[nNpcId]["Text"..nTextId] = string.format(tSurpriseInvestment_Text[nNpcId]["Text"..nTextId],nData,nLeft)
	SurpriseInvestment_TextCenterAline(nNpcId,2,nChooseType,4)
end

-- 文字居中功能(nTop: 文字头位; nChooseType: 文字中位; nData: 数据文字尾位)
function SurpriseInvestment_TextCenterAline(nNpcId,nTop,nChooseType,nData)
	if nData == nil then
		nData = 0
	end
	for i,nTextId in pairs(tNpcGossip[nNpcId]["Text"..nTop.."-"..nChooseType]) do
		if nTextId == tonumber(nTop..nChooseType..nData) then
			if #tNpcGossip[nNpcId]["Text"..nTextId] <= 80 then
				tNpcGossip[nNpcId]["Text"..nTextId] = Sys_CenterAline(tNpcGossip[nNpcId]["Text"..nTextId],40)
			end
		else
			local sTempText = tSurpriseInvestment_Text[nNpcId]["Text"..nTextId]
			if #sTempText <= 80 then
				tNpcGossip[nNpcId]["Text"..nTextId] = Sys_CenterAline(sTempText,40)
			end
		end
	end
end

-- 选择天数
function SurpriseInvestment_DayChoose(nNpcId,nChooseDay)
	if nChooseDay == 7 then
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,213,214,215,216,2117}
		tNpcGossip[nNpcId]["tOption2-1"] = {211,212,218}
	elseif nChooseDay == 15 then
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,217,218,219,2110,2117}
		tNpcGossip[nNpcId]["tOption2-1"] = {213,214,218}
	else
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,2111,2112,2113,2114,2115,2116,2117}
		tNpcGossip[nNpcId]["tOption2-1"] = {215,216,217,218}
	end
	tNpcGossip[nNpcId]["Text211"] = Sys_CenterAline(tSurpriseInvestment_Text[nNpcId]["Text211"],40)
	for i = 1,tSurpriseInvestment_Cont[nNpcId]["MaxNum"] do
		local nEvent = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][2][i]["Event"]
		local nType = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][2][i]["Data"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		tNpcGossip[nNpcId]["Option21"..i] = string.format(tSurpriseInvestment_Text[nNpcId]["Option21"..i],nData)
		tNpcGossip[nNpcId]["OptionFunc21"..i] = "SurpriseInvestment_EMoneyChoose</N>"..nNpcId.."</N>"..i
	end
	SurpriseInvestment_TextCenterAline(nNpcId,2,1)
	LinkNpcGossipFunc_New(nNpcId, "2-1")
	return
end

-- 选择天石
function SurpriseInvestment_EMoneyChoose(nNpcId,nChooseEMoney)
	if nChooseEMoney == 1 then
		tNpcGossip[nNpcId]["Text3-1"] = {311,312,313,314,3117,3118,3119}
		tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	elseif nChooseEMoney == 2 then
		tNpcGossip[nNpcId]["Text3-1"] = {311,312,315,316,3117,3118,3119}
		tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	elseif nChooseEMoney == 3 then
		tNpcGossip[nNpcId]["Text3-1"] = {311,312,317,318,3117,3118,3119}
		tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	elseif nChooseEMoney == 4 then
		tNpcGossip[nNpcId]["Text3-1"] = {311,312,319,3110,3117,3118,3119}
		tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	elseif nChooseEMoney == 5 then
		tNpcGossip[nNpcId]["Text3-1"] = {311,312,3111,3112,3117,3118,3119}
		tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	elseif nChooseEMoney == 6 then
		tNpcGossip[nNpcId]["Text3-1"] = {311,312,3113,3114,3117,3118,3119}
		tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	else
		tNpcGossip[nNpcId]["Text3-1"] = {311,312,3115,3116,3117,3118,3119}
		tNpcGossip[nNpcId]["tOption3-1"] = {311,312}
	end
	local nEvent = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][2][nChooseEMoney]["Event"]
	local nType = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][2][nChooseEMoney]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nLeft = tSurpriseInvestment_Cont["MaxTimes"][2][nChooseEMoney] - nData
	tNpcGossip[nNpcId]["Text3117"] = string.format(tSurpriseInvestment_Text[nNpcId]["Text3117"],nData,nLeft)
	tNpcGossip[nNpcId]["OptionFunc311"] = "SurpriseInvestment_Investment</N>2</N>"..nChooseEMoney
	SurpriseInvestment_TextCenterAline(nNpcId,3,1,17)
	LinkNpcGossipFunc_New(nNpcId, "3-1")
	return
end

-- 投资
function SurpriseInvestment_Investment(nKind,nChooseType,nChooseItemId)
	local nUserId = Get_UserId()
	local nEvent
	local nType
	if nKind == 2 then
		nEvent = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][nKind][nChooseType]["Event"]
		nType = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][nKind][nChooseType]["Data"]
	else
		nEvent = tSurpriseInvestment_Stc[nKind][nChooseType]["Event"]
		nType = tSurpriseInvestment_Stc[nKind][nChooseType]["Data"]
	end
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData >= tSurpriseInvestment_Cont["MaxTimes"][nKind][nChooseType] then
		Sys_MsgBox(string.format(tSurpriseInvestment_Text["Msg"]["ItemLimit"],tSurpriseInvestment_Text["InvestmentItem"][nKind][nChooseType]))
		return
	end
	if nKind == 1 then
		if nChooseType == 3 then
			local nItemId = nChooseItemId or nil
			local nItemNum = tSurpriseInvestment_Cont["OneTimes"][nKind][nChooseType]
			if nItemId == tSurpriseInvestment_Cont["SameItem"][1] then
				local nSameItemId = tSurpriseInvestment_Cont["SameItem"][2]
				local nFirCount = Get_CountItemType(nItemId,0)
				local nSecCount = Get_CountItemType(nSameItemId,0)
				if nFirCount + nSecCount < nItemNum then
					Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoItem"])
					return
				end
				if nFirCount >= nItemNum then
					if not Item_DelMulItem(nItemId,nItemId,nItemNum) then
						Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoItem"])
						return
					end
				elseif nFirCount == 0 then
					if not Item_DelMulItem(nSameItemId,nSameItemId,nItemNum) then
						Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoItem"])
						return
					end
				else
					if not (Item_DelMulItem(nItemId,nItemId,nFirCount) and Item_DelMulItem(nSameItemId,nSameItemId,nItemNum - nFirCount)) then
						Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoItem"])
						return
					end
				end
			else
				if not (Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum)) then
					Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoItem"])
					return
				end
			end
		else
			local nItemId = tSurpriseInvestment_Data[nChooseType]
			local nItemNum = tSurpriseInvestment_Cont["OneTimes"][nKind][nChooseType]
			if not (Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum)) then
				Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoItem"])
				return
			end
		end
	else
		local nCostEMoney = tSurpriseInvestment_Cont["OneTimes"][nKind][nChooseType]
		local nUserEMoney = Get_UserEMoney()
		-- 天石不足
		if nUserEMoney < nCostEMoney then
			Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoEMoney"])
			return
		end
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tSurpriseInvestment_EMoney[nChooseType])
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["NoSpace"])
			return
		end
		if User_AddEMoney(-nCostEMoney, nUserId) then
			RewardTemplate_UseItem(tSurpriseInvestment_EMoney[nChooseType])
		end
	end
	Task_AddStatistic(nEvent,nType,1,1,nUserId)
	Sys_SaveEmoneyBuy(tSurpriseInvestment_EMoneyLog["Investment"][nKind][nChooseType])
	Sys_MsgBox(string.format(tSurpriseInvestment_Text["Msg"]["ItemSuccess"],tSurpriseInvestment_Text["InvestmentItem"][nKind][nChooseType]))
end

-- 领取
function SurpriseInvestment_GetReward(nNpcId)
	-- 复制礼包
	local nKind = 1
	if nNpcId == tSurpriseInvestment_Cont["CPsNPC"] then
		nKind = 2
	end
	local tReward = CommonFunc_Copy(tSurpriseInvestment_Reward["GetReward"])
	local nStc = tSurpriseInvestment_Cont[nNpcId]["Stc"]
	local nRewardEvent = tSurpriseInvestment_Stc[nStc]["Event"]
	local nRewardType = tSurpriseInvestment_Stc[nStc]["Data"]
	local nRewardData = Get_UserStatisticValue(nRewardEvent,nRewardType)
	local tTemp = {}
	for i = 1,tSurpriseInvestment_Cont[nNpcId]["MaxNum"] do
		local nEvent
		local nType
		if nKind == 2 then
			nEvent = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][nKind][i]["Event"]
			nType = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][nKind][i]["Data"]
		else
			nEvent = tSurpriseInvestment_Stc[nKind][i]["Event"]
			nType = tSurpriseInvestment_Stc[nKind][i]["Data"]
		end
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData ~= nil and nData ~= 0 then
			for j,tNum in pairs(tSurpriseInvestment_Cont["SameReward"][nNpcId]) do
				for k,nNum in pairs(tNum) do
					if nNum == i then
						if tTemp[j] ~= nil and tTemp[j] ~= 0 then
							tTemp[j] = tTemp[j] + nData
						else
							tTemp[j] = nData
						end
					end
				end
			end
		end
	end
	local nItemType = 1
	for i,tNum in pairs(tSurpriseInvestment_Cont["SameReward"][nNpcId]) do
		local bGet = false
		if tTemp[i] ~= nil and tTemp[i] ~= 0 then
			bGet = true
		end
		if bGet == true then
			for j,tRewardItem in pairs(tSurpriseInvestment_Reward[nKind][tNum[1]]["RewardItem"]) do
				tReward["RewardItem"][nItemType] = {}
				-- 奖励物品
				tReward["RewardItem"][nItemType]["Id"] = tSurpriseInvestment_Reward[nKind][tNum[1]]["RewardItem"][j]["Id"]
				if nNpcId == tSurpriseInvestment_Cont["CPsNPC"] then
					tReward["RewardItem"][nItemType]["Id"] = tSurpriseInvestment_Cont["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][tNum[1]]
				end
				-- 奖励数量
				local nItemNum = math.ceil(string.match(tSurpriseInvestment_Reward[nKind][tNum[1]]["RewardItem"][j]["Attr"],"0 (%d+)") * tTemp[i])
				-- 物品上限打包处理
				local nLimitIItemId = tReward["RewardItem"][nItemType]["Id"]
				local nLimitItemNum = nItemNum
				local nLimitFlag = 0
				if tSurpriseInvestment_Cont["MaxItem"][nLimitIItemId] ~= nil and nItemNum >= tSurpriseInvestment_Cont["MaxItem"][nLimitIItemId]["Num"] then
					nLimitFlag = 1
					tReward["RewardItem"][nItemType]["Id"] = tSurpriseInvestment_Cont["MaxItem"][nLimitIItemId]["GetId"]
					nItemNum = math.modf(nLimitItemNum/tSurpriseInvestment_Cont["MaxItem"][nLimitIItemId]["Num"])
				end
				if nNpcId == tSurpriseInvestment_Cont["CPsNPC"] then
					nItemNum = 1
				end
				tReward["RewardItem"][nItemType]["Attr"] = string.gsub(tSurpriseInvestment_Reward[nKind][tNum[1]]["RewardItem"][j]["Attr"],"0 (%d+)","0 "..nItemNum,1)
				-- 上限打包外处理
				if nLimitFlag ~= 0 then
					nItemNum = math.fmod(nLimitItemNum,tSurpriseInvestment_Cont["MaxItem"][nLimitIItemId]["Num"])
					if nItemNum > 0 then
						nItemType = nItemType + 1
						tReward["RewardItem"][nItemType] = {}
						tReward["RewardItem"][nItemType]["Id"] = tSurpriseInvestment_Reward[nKind][tNum[1]]["RewardItem"][j]["Id"]
						tReward["RewardItem"][nItemType]["Attr"] = string.gsub(tSurpriseInvestment_Reward[nKind][tNum[1]]["RewardItem"][j]["Attr"],"0 (%d+)","0 "..nItemNum,1)
					end
				end
			end
		end
		nItemType = nItemType + 1
	end
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tSurpriseInvestment_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	if RewardTemplate_UseItem(tReward) then
		Task_SetStatistic(nRewardEvent,nRewardType,1,1,nUserId)
		Task_SetStcTimestamp(nRewardEvent,nRewardType,0)
		Sys_SaveEmoneyBuy(tSurpriseInvestment_EMoneyLog["Reward"][nNpcId])
	end
end

----------------------------------NPC部分---------------------------------------------
tNpcFace[5010] = 237
tNpcGossip[24315]= tNpcGossip[24315] or DefaultNpc:new{}
tNpcGossip[24315]["OptionHidden"] = 1
tNpcGossip[24315]["DialogueText"] = tSurpriseInvestment_Text[24315]
tNpcGossip[24315]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24315]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["SurpriseInvestment"]["ActivityTime"])
end
tNpcGossip[24315]["tOption1-1"] = {111}

tNpcGossip[24315]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[24315]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tActivityTime["SurpriseInvestment"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tSurpriseInvestment_Cont["Level"],tSurpriseInvestment_Cont["Metempsychosis"])
end
tNpcGossip[24315]["tOption1-2"] = {121}

tNpcGossip[24315]["Text1-3"] = {131,132,133,134}
tNpcGossip[24315]["ChkFunc1-3"]= function()
	for i = 1,tSurpriseInvestment_Cont[24315]["MaxNum"] do
		local nEvent = tSurpriseInvestment_Stc[1][i]["Event"]
		local nType = tSurpriseInvestment_Stc[1][i]["Data"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		tNpcGossip[24315]["Option13"..i] = string.format(tSurpriseInvestment_Text[24315]["Option13"..i],nData)
		tNpcGossip[24315]["OptionPoint13"..i] = "2-"..i
	end
	return Sys_ChkFullTime(tActivityTime["SurpriseInvestment"]["InvestmentTime"]) and User_JudgeLevelAndMetempsychosis(tSurpriseInvestment_Cont["Level"],tSurpriseInvestment_Cont["Metempsychosis"])
end
tNpcGossip[24315]["tOption1-3"] = {131,132,133,134,135,136,137,139}

tNpcGossip[24315]["Text1-4"] = {141,142,143}
tNpcGossip[24315]["ChkFunc1-4"]= function()
	local nEvent = tSurpriseInvestment_Stc[tSurpriseInvestment_Cont[24315]["Stc"]]["Event"]
	local nType = tSurpriseInvestment_Stc[tSurpriseInvestment_Cont[24315]["Stc"]]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData < 1 then
		tNpcGossip[24315]["tOption1-4"] = {141,143}
	else
		tNpcGossip[24315]["tOption1-4"] = {142,143}
	end
	return Sys_ChkFullTime(tActivityTime["SurpriseInvestment"]["BackTime"])
end
tNpcGossip[24315]["tOption1-4"] = {141,142,143}
tNpcGossip[24315]["OptionPoint141"] = "3-2"
tNpcGossip[24315]["OptionPoint142"] = "3-1"

-- 万能神纹精粹投资
tNpcGossip[24315]["Text2-1"] = {211,212,213,214,215}
tNpcGossip[24315]["ChkFunc2-1"]= function()
	SurpriseInvestment_TextFirst(24315,1)
	return true
end
tNpcGossip[24315]["tOption2-1"] = {211,212}
tNpcGossip[24315]["OptionFunc211"] = "SurpriseInvestment_Investment</N>1</N>1"
tNpcGossip[24315]["OptionPoint212"] = "1-3"

-- 黄色神纹精粹投资
tNpcGossip[24315]["Text2-2"] = {221,222,223,224,225}
tNpcGossip[24315]["ChkFunc2-2"]= function()
	SurpriseInvestment_TextFirst(24315,2)
	return true
end
tNpcGossip[24315]["tOption2-2"] = {221,222}
tNpcGossip[24315]["OptionFunc221"] = "SurpriseInvestment_Investment</N>1</N>2"
tNpcGossip[24315]["OptionPoint222"] = "1-3"

-- 日常任务物品投资
tNpcGossip[24315]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[24315]["ChkFunc2-3"]= function()
	SurpriseInvestment_TextFirst(24315,3)
	for i,nItemId in pairs(tSurpriseInvestment_Data[3]) do
		tNpcGossip[24315]["OptionFunc23"..i] = "SurpriseInvestment_Investment</N>1</N>3</N>"..nItemId
	end
	return true
end
tNpcGossip[24315]["tOption2-3"] = {231,232,233,234,235,236,237}
tNpcGossip[24315]["OptionPoint237"] = "1-3"

-- 正气令投资
tNpcGossip[24315]["Text2-4"] = {241,242,243,244,245}
tNpcGossip[24315]["ChkFunc2-4"]= function()
	SurpriseInvestment_TextFirst(24315,4)
	return true
end
tNpcGossip[24315]["tOption2-4"] = {241,242}
tNpcGossip[24315]["OptionFunc241"] = "SurpriseInvestment_Investment</N>1</N>4"
tNpcGossip[24315]["OptionPoint242"] = "1-3"

-- 魔武通玄丹投资
tNpcGossip[24315]["Text2-5"] = {251,252,253,254,255}
tNpcGossip[24315]["ChkFunc2-5"]= function()
	SurpriseInvestment_TextFirst(24315,5)
	return true
end
tNpcGossip[24315]["tOption2-5"] = {251,252}
tNpcGossip[24315]["OptionFunc251"] = "SurpriseInvestment_Investment</N>1</N>5"
tNpcGossip[24315]["OptionPoint252"] = "1-3"

-- 强效护心丹投资
tNpcGossip[24315]["Text2-6"] = {261,262,263,264,265}
tNpcGossip[24315]["ChkFunc2-6"]= function()
	SurpriseInvestment_TextFirst(24315,6)
	return true
end
tNpcGossip[24315]["tOption2-6"] = {261,262}
tNpcGossip[24315]["OptionFunc261"] = "SurpriseInvestment_Investment</N>1</N>6"
tNpcGossip[24315]["OptionPoint262"] = "1-3"

-- 免费强炼丹投资
tNpcGossip[24315]["Text2-7"] = {271,272,273,274,275}
tNpcGossip[24315]["ChkFunc2-7"]= function()
	SurpriseInvestment_TextFirst(24315,7)
	return true
end
tNpcGossip[24315]["tOption2-7"] = {271,272}
tNpcGossip[24315]["OptionFunc271"] = "SurpriseInvestment_Investment</N>1</N>7"
tNpcGossip[24315]["OptionPoint272"] = "1-3"

-- 秘制免费修炼丹投资
tNpcGossip[24315]["Text2-8"] = {281,282,283,284,285}
tNpcGossip[24315]["ChkFunc2-8"]= function()
	SurpriseInvestment_TextFirst(24315,8)
	return true
end
tNpcGossip[24315]["tOption2-8"] = {281,282}
tNpcGossip[24315]["OptionFunc281"] = "SurpriseInvestment_Investment</N>1</N>8"
tNpcGossip[24315]["OptionPoint282"] = "1-3"

-- 炼魂石投资
tNpcGossip[24315]["Text2-9"] = {291,292,293,294,295}
tNpcGossip[24315]["ChkFunc2-9"]= function()
	SurpriseInvestment_TextFirst(24315,9)
	return true
end
tNpcGossip[24315]["tOption2-9"] = {291,292}
tNpcGossip[24315]["OptionFunc291"] = "SurpriseInvestment_Investment</N>1</N>9"
tNpcGossip[24315]["OptionPoint292"] = "1-3"

-- 已领取
tNpcGossip[24315]["Text3-1"] = {311}
tNpcGossip[24315]["tOption3-1"] = {311}

-- 未领取
tNpcGossip[24315]["Text3-2"] = {321,322,323,324,325}
tNpcGossip[24315]["ChkFunc3-2"]= function()
	local sRewardItem = ""
	local sRewardItem2 = ""
	local bFirst = true
	local tTemp = {}
	for i = 1,tSurpriseInvestment_Cont[24315]["MaxNum"] do
		local nEvent = tSurpriseInvestment_Stc[1][i]["Event"]
		local nType = tSurpriseInvestment_Stc[1][i]["Data"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData ~= nil and nData ~= 0 then
			for j,tNum in pairs(tSurpriseInvestment_Cont["SameReward"][24315]) do
				for k,nNum in pairs(tNum) do
					if nNum == i then
						if tTemp[j] ~= nil and tTemp[j] ~= 0 then
							tTemp[j] = tTemp[j] + nData
						else
							tTemp[j] = nData
						end
					end
				end
			end
		end
	end
	local nLong = 0
	for j,tNum in pairs(tSurpriseInvestment_Cont["SameReward"][24315]) do
		local sItemName = tSurpriseInvestment_Text["RewardItem"][1][tNum[1]]
		if tTemp[j] ~= nil and tTemp[j] ~= 0 then
			nLong = nLong + 1
			if nLong < 4 then
				if bFirst == true then
					sRewardItem = string.format(tGlobalFormat[3],sItemName,tSurpriseInvestment_Text["Link"]["Plus"],tTemp[j])
					bFirst = false
				else
					sRewardItem = string.format(tGlobalFormat[6],sRewardItem,tSurpriseInvestment_Text["Link"]["And"],sItemName,tSurpriseInvestment_Text["Link"]["Plus"],tTemp[j])
				end
			else
				sRewardItem2 = string.format(tGlobalFormat[6],sRewardItem2,tSurpriseInvestment_Text["Link"]["And"],sItemName,tSurpriseInvestment_Text["Link"]["Plus"],tTemp[j])
			end
		end
	end
	if sRewardItem == "" then
		sRewardItem = tSurpriseInvestment_Text["None"]
	end
	tNpcGossip[24315]["Text323"] = string.format(tSurpriseInvestment_Text[24315]["Text323"],sRewardItem)
	SurpriseInvestment_TextCenterAline(24315,3,2,3)
	tNpcGossip[24315]["Text324"] = string.format(tSurpriseInvestment_Text[24315]["Text324"],sRewardItem2)
	return true
end
tNpcGossip[24315]["tOption3-2"] = {321,322}
tNpcGossip[24315]["OptionFunc321"] = "SurpriseInvestment_GetReward</N>24315"

-- 爱丽丝
tNpcFace[4995] = 119
tNpcGossip[24316]= tNpcGossip[24316] or DefaultNpc:new{}
tNpcGossip[24316]["OptionHidden"] = 1
tNpcGossip[24316]["DialogueText"] = tSurpriseInvestment_Text[24316]
tNpcGossip[24316]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24316]["ChkFunc1-1"]= function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["SurpriseInvestment"]["ActivityTime"])
end
tNpcGossip[24316]["tOption1-1"] = {111}

tNpcGossip[24316]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[24316]["ChkFunc1-2"]= function()
	return Sys_ChkFullTime(tActivityTime["SurpriseInvestment"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tSurpriseInvestment_Cont["Level"],tSurpriseInvestment_Cont["Metempsychosis"])
end
tNpcGossip[24316]["tOption1-2"] = {121}

tNpcGossip[24316]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[24316]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tActivityTime["SurpriseInvestment"]["InvestmentTime"]) and User_JudgeLevelAndMetempsychosis(tSurpriseInvestment_Cont["Level"],tSurpriseInvestment_Cont["Metempsychosis"])
end
tNpcGossip[24316]["tOption1-3"] = {131,132,133}
tNpcGossip[24316]["OptionFunc131"] = "SurpriseInvestment_DayChoose</N>24316</N>7"
tNpcGossip[24316]["OptionFunc132"] = "SurpriseInvestment_DayChoose</N>24316</N>15"
tNpcGossip[24316]["OptionFunc133"] = "SurpriseInvestment_DayChoose</N>24316</N>30"

tNpcGossip[24316]["Text1-4"] = {141,142,143}
tNpcGossip[24316]["ChkFunc1-4"]= function()
	local nEvent = tSurpriseInvestment_Stc[tSurpriseInvestment_Cont[24316]["Stc"]]["Event"]
	local nType = tSurpriseInvestment_Stc[tSurpriseInvestment_Cont[24316]["Stc"]]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData < 1 then
		tNpcGossip[24316]["tOption1-4"] = {141,143}
	else
		tNpcGossip[24316]["tOption1-4"] = {142,143}
	end
	return Sys_ChkFullTime(tActivityTime["SurpriseInvestment"]["BackTime"])
end
tNpcGossip[24316]["tOption1-4"] = {141,142,143}
tNpcGossip[24316]["OptionPoint141"] = "2-3"
tNpcGossip[24316]["OptionPoint142"] = "2-2"

tNpcGossip[24316]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116,2117}
tNpcGossip[24316]["tOption2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[24316]["OptionPoint218"] = "1-3"

tNpcGossip[24316]["Text2-2"] = {221}
tNpcGossip[24316]["tOption2-2"] = {221}

tNpcGossip[24316]["Text2-3"] = {231,232,233,234,235}
tNpcGossip[24316]["ChkFunc2-3"]= function()
	local sRewardItem = ""
	local sRewardItem2 = ""
	local bFirst = true
	local tTemp = {}
	for i = 1,tSurpriseInvestment_Cont[24316]["MaxNum"] do
		local nEvent = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][2][i]["Event"]
		local nType = tSurpriseInvestment_Stc["CPsPack"][tSurpriseInvestment_Cont["ActivityTimes"]][2][i]["Data"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData ~= nil and nData ~= 0 then
			for j,tNum in pairs(tSurpriseInvestment_Cont["SameReward"][24316]) do
				for k,nNum in pairs(tNum) do
					if nNum == i then
						if tTemp[j] ~= nil and tTemp[j] ~= 0 then
							tTemp[j] = tTemp[j] + nData
						else
							tTemp[j] = nData
						end
					end
				end
			end
		end
	end
	local nLong = 0
	for j,tNum in pairs(tSurpriseInvestment_Cont["SameReward"][24316]) do
		local sItemName = tSurpriseInvestment_Text["RewardItem"][2][tNum[1]]
		if tTemp[j] ~= nil and tTemp[j] ~= 0 then
			nLong = nLong + 1
			if nLong < 5 then
				if bFirst == true then
					sRewardItem = sItemName
					bFirst = false
				else
					sRewardItem = string.format(tGlobalFormat[3],sRewardItem,tSurpriseInvestment_Text["Link"]["And"],sItemName)
				end
			else
				sRewardItem2 = string.format(tGlobalFormat[3],sRewardItem2,tSurpriseInvestment_Text["Link"]["And"],sItemName)
			end
		end
	end
	if sRewardItem == "" then
		sRewardItem = tSurpriseInvestment_Text["None"]
	end
	tNpcGossip[24316]["Text233"] = string.format(tSurpriseInvestment_Text[24316]["Text233"],sRewardItem)
	SurpriseInvestment_TextCenterAline(24316,2,3,3)
	tNpcGossip[24316]["Text234"] = string.format(tSurpriseInvestment_Text[24316]["Text234"],sRewardItem2)
	return true
end
tNpcGossip[24316]["tOption2-3"] = {231,232}
tNpcGossip[24316]["OptionFunc231"] = "SurpriseInvestment_GetReward</N>24316"

tNpcGossip[24316]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113,3114,3115,3116,3117,3118,3119}
tNpcGossip[24316]["tOption3-1"] = {311,312}
tNpcGossip[24316]["OptionPoint312"] = "1-3"

---------------------------------物品部分---------------------------------------------
-- 1期礼包
tItem[3321898] = tItem[3321898] or {}
tItem[3321898]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	-- 物品检查
	if not Item_ChkItem(nItemId) then
		return
	end
	local nMark = tSurpriseInvestment_Pack[nItemId]["Mark"]
	local nGetEvent = tSurpriseInvestment_Stc["CPsPack"][1][5][nMark]["Event"]
	local nGetType = tSurpriseInvestment_Stc["CPsPack"][1][5][nMark]["Data"]
	local nGetData = Get_UserStatisticValue(nGetEvent,nGetType)
	-- 隔天判断
	if not Task_StcInterval(nGetEvent,nGetType,1,4) then
		Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["AlreadyOpen"])
		return
	end
	-- 复制礼包
	local tReward = CommonFunc_Copy(tSurpriseInvestment_Pack[nItemId])
	local nEvent = tSurpriseInvestment_Stc["CPsPack"][1][2][nMark]["Event"]
	local nType = tSurpriseInvestment_Stc["CPsPack"][1][2][nMark]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 未投资获取礼包直接删除
	if nData == nil or nData == 0 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			return
		end
	end
	-- 奖励数量
	local nItemNum = math.ceil(string.match(tSurpriseInvestment_Pack[nItemId]["RewardItem"][1]["Attr"],"0 (%d+)") * nData)
	tReward["RewardItem"][1]["Attr"] = string.gsub(tSurpriseInvestment_Pack[nItemId]["RewardItem"][1]["Attr"],"0 (%d+)","0 "..nItemNum,1)
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tSurpriseInvestment_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	-- 最后一次删除
	if nGetData >= tSurpriseInvestment_Stc["CPsPack"][1][5][nMark]["Max"] - 1 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
	end
	if RewardTemplate_UseItem(tReward) then
		Task_SetStcTimestamp(nGetEvent,nGetType,0)
		Task_AddStatistic(nGetEvent,nGetType,1,1,nUserId)
		Sys_SaveEmoneyBuy(tSurpriseInvestment_EMoneyLog["RewardPack"][tSurpriseInvestment_Pack[nItemId]["Mark"]])
	end
end
tItem[3321899] = tItem[3321898]
tItem[3321900] = tItem[3321898]
tItem[3321901] = tItem[3321898]
tItem[3321902] = tItem[3321898]
tItem[3321903] = tItem[3321898]
tItem[3321904] = tItem[3321898]

-- 2期礼包
tItem[3323340] = tItem[3323340] or {}
tItem[3323340]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	-- 物品检查
	if not Item_ChkItem(nItemId) then
		return
	end
	local nMark = tSurpriseInvestment_Pack[nItemId]["Mark"]
	local nGetEvent = tSurpriseInvestment_Stc["CPsPack"][2][5][nMark]["Event"]
	local nGetType = tSurpriseInvestment_Stc["CPsPack"][2][5][nMark]["Data"]
	local nGetData = Get_UserStatisticValue(nGetEvent,nGetType)
	-- 隔天判断
	if not Task_StcInterval(nGetEvent,nGetType,1,4) then
		Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["AlreadyOpen"])
		return
	end
	-- 复制礼包
	local tReward = CommonFunc_Copy(tSurpriseInvestment_Pack[nItemId])
	local nEvent = tSurpriseInvestment_Stc["CPsPack"][2][2][nMark]["Event"]
	local nType = tSurpriseInvestment_Stc["CPsPack"][2][2][nMark]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 未投资获取礼包直接删除
	if nData == nil or nData == 0 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			return
		end
	end
	-- 奖励数量
	local nItemNum = math.ceil(string.match(tSurpriseInvestment_Pack[nItemId]["RewardItem"][1]["Attr"],"0 (%d+)") * nData)
	tReward["RewardItem"][1]["Attr"] = string.gsub(tSurpriseInvestment_Pack[nItemId]["RewardItem"][1]["Attr"],"0 (%d+)","0 "..nItemNum,1)
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tSurpriseInvestment_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	-- 最后一次删除
	if nGetData >= tSurpriseInvestment_Stc["CPsPack"][2][5][nMark]["Max"] - 1 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
	end
	if RewardTemplate_UseItem(tReward) then
		Task_SetStcTimestamp(nGetEvent,nGetType,0)
		Task_AddStatistic(nGetEvent,nGetType,1,1,nUserId)
		Sys_SaveEmoneyBuy(tSurpriseInvestment_EMoneyLog["RewardPack"][tSurpriseInvestment_Pack[nItemId]["Mark"]])
	end
end
tItem[3323341] = tItem[3323340]
tItem[3323342] = tItem[3323340]
tItem[3323343] = tItem[3323340]
tItem[3323344] = tItem[3323340]
tItem[3323345] = tItem[3323340]
tItem[3323346] = tItem[3323340]

-- 3期礼包
tItem[3323495] = tItem[3323495] or {}
tItem[3323495]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	-- 物品检查
	if not Item_ChkItem(nItemId) then
		return
	end
	local nMark = tSurpriseInvestment_Pack[nItemId]["Mark"]
	local nGetEvent = tSurpriseInvestment_Stc["CPsPack"][3][5][nMark]["Event"]
	local nGetType = tSurpriseInvestment_Stc["CPsPack"][3][5][nMark]["Data"]
	local nGetData = Get_UserStatisticValue(nGetEvent,nGetType)
	-- 隔天判断
	if not Task_StcInterval(nGetEvent,nGetType,1,4) then
		Sys_MsgBox(tSurpriseInvestment_Text["Msg"]["AlreadyOpen"])
		return
	end
	-- 复制礼包
	local tReward = CommonFunc_Copy(tSurpriseInvestment_Pack[nItemId])
	local nEvent = tSurpriseInvestment_Stc["CPsPack"][3][2][nMark]["Event"]
	local nType = tSurpriseInvestment_Stc["CPsPack"][3][2][nMark]["Data"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 未投资获取礼包直接删除
	if nData == nil or nData == 0 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			return
		end
	end
	-- 奖励数量
	local nItemNum = math.ceil(string.match(tSurpriseInvestment_Pack[nItemId]["RewardItem"][1]["Attr"],"0 (%d+)") * nData)
	tReward["RewardItem"][1]["Attr"] = string.gsub(tSurpriseInvestment_Pack[nItemId]["RewardItem"][1]["Attr"],"0 (%d+)","0 "..nItemNum,1)
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tSurpriseInvestment_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	-- 最后一次删除
	if nGetData >= tSurpriseInvestment_Stc["CPsPack"][3][5][nMark]["Max"] - 1 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		end
	end
	if RewardTemplate_UseItem(tReward) then
		Task_SetStcTimestamp(nGetEvent,nGetType,0)
		Task_AddStatistic(nGetEvent,nGetType,1,1,nUserId)
		Sys_SaveEmoneyBuy(tSurpriseInvestment_EMoneyLog["RewardPack"][tSurpriseInvestment_Pack[nItemId]["Mark"]])
	end
end
tItem[3323496] = tItem[3323495]
tItem[3323497] = tItem[3323495]
tItem[3323498] = tItem[3323495]
tItem[3323499] = tItem[3323495]
tItem[3323500] = tItem[3323495]
tItem[3323501] = tItem[3323495]

tItem[3321923] = tItem[3321923] or {}
tItem[3321923]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tSurpriseInvestment_Package[nItemId])
end
tItem[3326790] = tItem[3321923]
tItem[3326791] = tItem[3321923]
tItem[3326792] = tItem[3321923]