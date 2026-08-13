------------------------------------------------------------------------------------
--Name：            191011[英文征服][活动脚本]11月精准推送（11.05-11.30）
--Creator:      林嘉鑫
--Created:     2019-10-11
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀
-- tNovPrecisionPush_

-- stc:
-- 206,99	特转特惠礼盒 开300次
-- 207,0	1阶天石（赠）成长礼盒 开6次
-- 207,1	2阶天石（赠）成长礼盒 开6次
-- 207,2	3阶天石（赠）成长礼盒 开6次
-- 207,3	4阶天石（赠）成长礼盒 开6次
-- 207,4	5阶天石（赠）成长礼盒 开6次
-- 207,5	1阶天石（赠）超值礼盒 开6次
-- 207,6	2阶天石（赠）超值礼盒 开6次
-- 207,7	3阶天石（赠）超值礼盒 开6次
-- 207,8	4阶天石（赠）超值礼盒 开6次
-- 207,9	5阶天石（赠）超值礼盒 开6次

-- logId:12001688

-- emoney_buy_log：
-- 1000 1067 0 0 -60	1阶天石（赠）成长礼盒（90级）
-- 1000 1068 0 0 -65	1阶天石（赠）成长礼盒（100级）
-- 1000 1069 0 0 -70	1阶天石（赠）成长礼盒（105级）
-- 1000 1070 0 0 -75	1阶天石（赠）成长礼盒（110级）
-- 1000 1071 0 0 -80	1阶天石（赠）成长礼盒（115级）
-- 1000 1072 0 0 -85	1阶天石（赠）成长礼盒（120级）
-- 1000 1073 0 0 -120	2阶天石（赠）成长礼盒（90级）
-- 1000 1074 0 0 -130	2阶天石（赠）成长礼盒（100级）
-- 1000 1075 0 0 -140	2阶天石（赠）成长礼盒（105级）
-- 1000 1076 0 0 -150	2阶天石（赠）成长礼盒（110级）
-- 1000 1077 0 0 -160	2阶天石（赠）成长礼盒（115级）
-- 1000 1078 0 0 -170	2阶天石（赠）成长礼盒（120级）
-- 1000 1079 0 0 -220	3阶天石（赠）成长礼盒（90级）
-- 1000 1080 0 0 -240	3阶天石（赠）成长礼盒（100级）
-- 1000 1081 0 0 -260	3阶天石（赠）成长礼盒（105级）
-- 1000 1082 0 0 -280	3阶天石（赠）成长礼盒（110级）
-- 1000 1083 0 0 -300	3阶天石（赠）成长礼盒（115级）
-- 1000 1084 0 0 -320	3阶天石（赠）成长礼盒（120级）
-- 1000 1085 0 0 -500	4阶天石（赠）成长礼盒（90级）
-- 1000 1086 0 0 -550	4阶天石（赠）成长礼盒（100级）
-- 1000 1087 0 0 -600	4阶天石（赠）成长礼盒（105级）
-- 1000 1088 0 0 -650	4阶天石（赠）成长礼盒（110级）
-- 1000 1089 0 0 -700	4阶天石（赠）成长礼盒（115级）
-- 1000 1090 0 0 -750	4阶天石（赠）成长礼盒（120级）
-- 1000 1091 0 0 -800	5阶天石（赠）成长礼盒（90级）
-- 1000 1092 0 0 -850	5阶天石（赠）成长礼盒（100级）
-- 1000 1093 0 0 -900	5阶天石（赠）成长礼盒（105级）
-- 1000 1094 0 0 -950	5阶天石（赠）成长礼盒（110级）
-- 1000 1095 0 0 -1000	5阶天石（赠）成长礼盒（115级）
-- 1000 1096 0 0 -1050	5阶天石（赠）成长礼盒（120级）
-- 1000 1097 0 0 -80	1阶天石（赠）超值礼盒（90级）
-- 1000 1098 0 0 -85	1阶天石（赠）超值礼盒（100级）
-- 1000 1099 0 0 -90	1阶天石（赠）超值礼盒（105级）
-- 1000 1100 0 0 -95	1阶天石（赠）超值礼盒（110级）
-- 1000 1101 0 0 -100	1阶天石（赠）超值礼盒（115级）
-- 1000 1102 0 0 -105	1阶天石（赠）超值礼盒（120级）
-- 1000 1103 0 0 -150	2阶天石（赠）超值礼盒（90级）
-- 1000 1104 0 0 -160	2阶天石（赠）超值礼盒（100级）
-- 1000 1105 0 0 -170	2阶天石（赠）超值礼盒（105级）
-- 1000 1106 0 0 -180	2阶天石（赠）超值礼盒（110级）
-- 1000 1107 0 0 -190	2阶天石（赠）超值礼盒（115级）
-- 1000 1108 0 0 -200	2阶天石（赠）超值礼盒（120级）
-- 1000 1109 0 0 -250	3阶天石（赠）超值礼盒（90级）
-- 1000 1110 0 0 -280	3阶天石（赠）超值礼盒（100级）
-- 1000 1111 0 0 -310	3阶天石（赠）超值礼盒（105级）
-- 1000 1112 0 0 -340	3阶天石（赠）超值礼盒（110级）
-- 1000 1113 0 0 -370	3阶天石（赠）超值礼盒（115级）
-- 1000 1114 0 0 -400	3阶天石（赠）超值礼盒（120级）
-- 1000 1115 0 0 -600	4阶天石（赠）超值礼盒（90级）
-- 1000 1116 0 0 -650	4阶天石（赠）超值礼盒（100级）
-- 1000 1117 0 0 -700	4阶天石（赠）超值礼盒（105级）
-- 1000 1118 0 0 -750	4阶天石（赠）超值礼盒（110级）
-- 1000 1119 0 0 -800	4阶天石（赠）超值礼盒（115级）
-- 1000 1120 0 0 -850	4阶天石（赠）超值礼盒（120级）
-- 1000 1121 0 0 -1000	5阶天石（赠）超值礼盒（90级）
-- 1000 1122 0 0 -1050	5阶天石（赠）超值礼盒（100级）
-- 1000 1123 0 0 -1100	5阶天石（赠）超值礼盒（105级）
-- 1000 1124 0 0 -1150	5阶天石（赠）超值礼盒（110级）
-- 1000 1125 0 0 -1200	5阶天石（赠）超值礼盒（115级）
-- 1000 1126 0 0 -1250	5阶天石（赠）超值礼盒（120级）
-- 1000 1127 0 0 1	一转特惠礼盒
-- 1000 1128 0 0 1	二转特惠礼盒
-- 1000 1129 0 0 1	特转特惠礼盒
-- 1000 1130 0 0 1	升级冲刺礼盒
-- 1000 1131 0 0 1	勇士装备特惠礼盒
-- 1000 1132 0 0 1	战士装备特惠礼盒
-- 1000 1133 0 0 1	海盗装备特惠礼盒
-- 1000 1134 0 0 1	道士装备特惠礼盒
-- 1000 1135 0 0 1	铁扇门装备特惠礼盒
-- 1000 1136 0 0 1	截拳师装备特惠礼盒
-- 1000 1137 0 0 1	弓手装备特惠礼盒
-- 1000 1138 0 0 1	武僧装备特惠礼盒
-- 1000 1139 0 0 1	忍者装备特惠礼盒
-- 1000 1140 0 0 1	斗士装备特惠礼盒
-- 1000 1141 0 0 1	初级灵珠转盘
-- 1000 1142 0 0 1	中级灵珠转盘
-- 1000 1143 0 0 1	高级灵珠转盘

----------------------------------表配置部分--------------------------------------------
local tNovPrecisionPush_Cont = {}
	tNovPrecisionPush_Cont["Level"] = {90,100,105,110,115,120}
	tNovPrecisionPush_Cont["Metempsychosis"] = 0
	
local tNovPrecisionPush_Stc = {}
	tNovPrecisionPush_Stc["Limit"] = 6
	tNovPrecisionPush_Stc[3326504] = {}
	tNovPrecisionPush_Stc[3326504]["EventType"] = 207
	tNovPrecisionPush_Stc[3326504]["DataType"] = 0
	tNovPrecisionPush_Stc[3326505] = {}
	tNovPrecisionPush_Stc[3326505]["EventType"] = 207
	tNovPrecisionPush_Stc[3326505]["DataType"] = 1
	tNovPrecisionPush_Stc[3326506] = {}
	tNovPrecisionPush_Stc[3326506]["EventType"] = 207
	tNovPrecisionPush_Stc[3326506]["DataType"] = 2
	tNovPrecisionPush_Stc[3326507] = {}
	tNovPrecisionPush_Stc[3326507]["EventType"] = 207
	tNovPrecisionPush_Stc[3326507]["DataType"] = 3
	tNovPrecisionPush_Stc[3326508] = {}
	tNovPrecisionPush_Stc[3326508]["EventType"] = 207
	tNovPrecisionPush_Stc[3326508]["DataType"] = 4
	tNovPrecisionPush_Stc[3326509] = {}
	tNovPrecisionPush_Stc[3326509]["EventType"] = 207
	tNovPrecisionPush_Stc[3326509]["DataType"] = 5
	tNovPrecisionPush_Stc[3326510] = {}
	tNovPrecisionPush_Stc[3326510]["EventType"] = 207
	tNovPrecisionPush_Stc[3326510]["DataType"] = 6
	tNovPrecisionPush_Stc[3326511] = {}
	tNovPrecisionPush_Stc[3326511]["EventType"] = 207
	tNovPrecisionPush_Stc[3326511]["DataType"] = 7
	tNovPrecisionPush_Stc[3326512] = {}
	tNovPrecisionPush_Stc[3326512]["EventType"] = 207
	tNovPrecisionPush_Stc[3326512]["DataType"] = 8
	tNovPrecisionPush_Stc[3326513] = {}
	tNovPrecisionPush_Stc[3326513]["EventType"] = 207
	tNovPrecisionPush_Stc[3326513]["DataType"] = 9
	tNovPrecisionPush_Stc[3326519] = {}
	tNovPrecisionPush_Stc[3326519]["EventType"] = 206
	tNovPrecisionPush_Stc[3326519]["DataType"] = 99
	tNovPrecisionPush_Stc[3326519]["Limit"] = 300

local tNovPrecisionPush_Pack = {}
	-- ===1阶天石（赠）成长礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326504][1]
	-- ===NewEmoneyLog: 1000,1067
	tNovPrecisionPush_Pack[3326504] = {}
	tNovPrecisionPush_Pack[3326504][1] = {}
	tNovPrecisionPush_Pack[3326504][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326504][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326504][1]["RewardEMoneyMono"]["Value"] = 60 -- 赠点天石, 【需求】60赠点天石
	tNovPrecisionPush_Pack[3326504][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1067"
	tNovPrecisionPush_Pack[3326504][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326504][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326504][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326504][2] = {}
	-- ===1阶天石（赠）成长礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326504][2]
	-- ===NewEmoneyLog: 1000,1068
	tNovPrecisionPush_Pack[3326504][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326504][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326504][2]["RewardEMoneyMono"]["Value"] = 65 -- 赠点天石, 【需求】65赠点天石
	tNovPrecisionPush_Pack[3326504][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1068"
	tNovPrecisionPush_Pack[3326504][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326504][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326504][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326504][3] = {}
	-- ===1阶天石（赠）成长礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326504][3]
	-- ===NewEmoneyLog: 1000,1069
	tNovPrecisionPush_Pack[3326504][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326504][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326504][3]["RewardEMoneyMono"]["Value"] = 70 -- 赠点天石, 【需求】70赠点天石
	tNovPrecisionPush_Pack[3326504][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1069"
	tNovPrecisionPush_Pack[3326504][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326504][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326504][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326504][4] = {}
	-- ===1阶天石（赠）成长礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326504][4]
	-- ===NewEmoneyLog: 1000,1070
	tNovPrecisionPush_Pack[3326504][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326504][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326504][4]["RewardEMoneyMono"]["Value"] = 75 -- 赠点天石, 【需求】75赠点天石
	tNovPrecisionPush_Pack[3326504][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1070"
	tNovPrecisionPush_Pack[3326504][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326504][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326504][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326504][5] = {}
	-- ===1阶天石（赠）成长礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326504][5]
	-- ===NewEmoneyLog: 1000,1071
	tNovPrecisionPush_Pack[3326504][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326504][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326504][5]["RewardEMoneyMono"]["Value"] = 80 -- 赠点天石, 【需求】80赠点天石
	tNovPrecisionPush_Pack[3326504][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1071"
	tNovPrecisionPush_Pack[3326504][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326504][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326504][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326504][6] = {}
	-- ===1阶天石（赠）成长礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326504][6]
	-- ===删除: 3326504,1
	-- ===NewEmoneyLog: 1000,1072
	tNovPrecisionPush_Pack[3326504][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326504][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326504][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326504][6]["DeleteItem"][1]["Id"] = 3326504 -- 【库】Phase-1CP(B)GrowthBox[属性:9]
	tNovPrecisionPush_Pack[3326504][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326504][6]["RewardEMoneyMono"]["Value"] = 85 -- 赠点天石, 【需求】85赠点天石
	tNovPrecisionPush_Pack[3326504][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1072"
	tNovPrecisionPush_Pack[3326504][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326504][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326504][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326505] = {}
	-- ===2阶天石（赠）成长礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326505][1]
	-- ===NewEmoneyLog: 1000,1073
	tNovPrecisionPush_Pack[3326505][1] = {}
	tNovPrecisionPush_Pack[3326505][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326505][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326505][1]["RewardEMoneyMono"]["Value"] = 120 -- 赠点天石, 【需求】120赠点天石
	tNovPrecisionPush_Pack[3326505][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1073"
	tNovPrecisionPush_Pack[3326505][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326505][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326505][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326505][2] = {}
	-- ===2阶天石（赠）成长礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326505][2]
	-- ===NewEmoneyLog: 1000,1074
	tNovPrecisionPush_Pack[3326505][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326505][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326505][2]["RewardEMoneyMono"]["Value"] = 130 -- 赠点天石, 【需求】130赠点天石
	tNovPrecisionPush_Pack[3326505][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1074"
	tNovPrecisionPush_Pack[3326505][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326505][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326505][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326505][3] = {}
	-- ===2阶天石（赠）成长礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326505][3]
	-- ===NewEmoneyLog: 1000,1075
	tNovPrecisionPush_Pack[3326505][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326505][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326505][3]["RewardEMoneyMono"]["Value"] = 140 -- 赠点天石, 【需求】140赠点天石
	tNovPrecisionPush_Pack[3326505][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1075"
	tNovPrecisionPush_Pack[3326505][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326505][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326505][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326505][4] = {}
	-- ===2阶天石（赠）成长礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326505][4]
	-- ===NewEmoneyLog: 1000,1076
	tNovPrecisionPush_Pack[3326505][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326505][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326505][4]["RewardEMoneyMono"]["Value"] = 150 -- 赠点天石, 【需求】150赠点天石
	tNovPrecisionPush_Pack[3326505][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1076"
	tNovPrecisionPush_Pack[3326505][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326505][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326505][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326505][5] = {}
	-- ===2阶天石（赠）成长礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326505][5]
	-- ===NewEmoneyLog: 1000,1077
	tNovPrecisionPush_Pack[3326505][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326505][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326505][5]["RewardEMoneyMono"]["Value"] = 160 -- 赠点天石, 【需求】160赠点天石
	tNovPrecisionPush_Pack[3326505][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1077"
	tNovPrecisionPush_Pack[3326505][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326505][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326505][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326505][6] = {}
	-- ===2阶天石（赠）成长礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326505][6]
	-- ===删除: 3326505,1
	-- ===NewEmoneyLog: 1000,1078
	tNovPrecisionPush_Pack[3326505][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326505][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326505][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326505][6]["DeleteItem"][1]["Id"] = 3326505 -- 【库】Phase-2CP(B)GrowthBox[属性:9]
	tNovPrecisionPush_Pack[3326505][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326505][6]["RewardEMoneyMono"]["Value"] = 170 -- 赠点天石, 【需求】170赠点天石
	tNovPrecisionPush_Pack[3326505][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1078"
	tNovPrecisionPush_Pack[3326505][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326505][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326505][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326506] = {}
	-- ===3阶天石（赠）成长礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326506][1]
	-- ===NewEmoneyLog: 1000,1079
	tNovPrecisionPush_Pack[3326506][1] = {}
	tNovPrecisionPush_Pack[3326506][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326506][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326506][1]["RewardEMoneyMono"]["Value"] = 220 -- 赠点天石, 【需求】220赠点天石
	tNovPrecisionPush_Pack[3326506][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1079"
	tNovPrecisionPush_Pack[3326506][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326506][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326506][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326506][2] = {}
	-- ===3阶天石（赠）成长礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326506][2]
	-- ===NewEmoneyLog: 1000,1080
	tNovPrecisionPush_Pack[3326506][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326506][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326506][2]["RewardEMoneyMono"]["Value"] = 240 -- 赠点天石, 【需求】240赠点天石
	tNovPrecisionPush_Pack[3326506][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1080"
	tNovPrecisionPush_Pack[3326506][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326506][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326506][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326506][3] = {}
	-- ===3阶天石（赠）成长礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326506][3]
	-- ===NewEmoneyLog: 1000,1081
	tNovPrecisionPush_Pack[3326506][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326506][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326506][3]["RewardEMoneyMono"]["Value"] = 260 -- 赠点天石, 【需求】260赠点天石
	tNovPrecisionPush_Pack[3326506][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1081"
	tNovPrecisionPush_Pack[3326506][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326506][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326506][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326506][4] = {}
	-- ===3阶天石（赠）成长礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326506][4]
	-- ===NewEmoneyLog: 1000,1082
	tNovPrecisionPush_Pack[3326506][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326506][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326506][4]["RewardEMoneyMono"]["Value"] = 280 -- 赠点天石, 【需求】280赠点天石
	tNovPrecisionPush_Pack[3326506][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1082"
	tNovPrecisionPush_Pack[3326506][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326506][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326506][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326506][5] = {}
	-- ===3阶天石（赠）成长礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326506][5]
	-- ===NewEmoneyLog: 1000,1083
	tNovPrecisionPush_Pack[3326506][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326506][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326506][5]["RewardEMoneyMono"]["Value"] = 300 -- 赠点天石, 【需求】300赠点天石
	tNovPrecisionPush_Pack[3326506][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1083"
	tNovPrecisionPush_Pack[3326506][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326506][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326506][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326506][6] = {}
	-- ===3阶天石（赠）成长礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326506][6]
	-- ===删除: 3326506,1
	-- ===NewEmoneyLog: 1000,1084
	tNovPrecisionPush_Pack[3326506][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326506][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326506][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326506][6]["DeleteItem"][1]["Id"] = 3326506 -- 【库】Phase-3CP(B)GrowthBox[属性:9]
	tNovPrecisionPush_Pack[3326506][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326506][6]["RewardEMoneyMono"]["Value"] = 320 -- 赠点天石, 【需求】320赠点天石
	tNovPrecisionPush_Pack[3326506][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1084"
	tNovPrecisionPush_Pack[3326506][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326506][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326506][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326507] = {}
	-- ===4阶天石（赠）成长礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326507][1]
	-- ===NewEmoneyLog: 1000,1085
	tNovPrecisionPush_Pack[3326507][1] = {}
	tNovPrecisionPush_Pack[3326507][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326507][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326507][1]["RewardEMoneyMono"]["Value"] = 500 -- 赠点天石, 【需求】500赠点天石
	tNovPrecisionPush_Pack[3326507][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1085"
	tNovPrecisionPush_Pack[3326507][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326507][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326507][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326507][2] = {}
	-- ===4阶天石（赠）成长礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326507][2]
	-- ===NewEmoneyLog: 1000,1086
	tNovPrecisionPush_Pack[3326507][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326507][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326507][2]["RewardEMoneyMono"]["Value"] = 550 -- 赠点天石, 【需求】550赠点天石
	tNovPrecisionPush_Pack[3326507][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1086"
	tNovPrecisionPush_Pack[3326507][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326507][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326507][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326507][3] = {}
	-- ===4阶天石（赠）成长礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326507][3]
	-- ===NewEmoneyLog: 1000,1087
	tNovPrecisionPush_Pack[3326507][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326507][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326507][3]["RewardEMoneyMono"]["Value"] = 600 -- 赠点天石, 【需求】600赠点天石
	tNovPrecisionPush_Pack[3326507][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1087"
	tNovPrecisionPush_Pack[3326507][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326507][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326507][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326507][4] = {}
	-- ===4阶天石（赠）成长礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326507][4]
	-- ===NewEmoneyLog: 1000,1088
	tNovPrecisionPush_Pack[3326507][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326507][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326507][4]["RewardEMoneyMono"]["Value"] = 650 -- 赠点天石, 【需求】650赠点天石
	tNovPrecisionPush_Pack[3326507][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1088"
	tNovPrecisionPush_Pack[3326507][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326507][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326507][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326507][5] = {}
	-- ===4阶天石（赠）成长礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326507][5]
	-- ===NewEmoneyLog: 1000,1089
	tNovPrecisionPush_Pack[3326507][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326507][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326507][5]["RewardEMoneyMono"]["Value"] = 700 -- 赠点天石, 【需求】700赠点天石
	tNovPrecisionPush_Pack[3326507][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1089"
	tNovPrecisionPush_Pack[3326507][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326507][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326507][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326507][6] = {}
	-- ===4阶天石（赠）成长礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326507][6]
	-- ===删除: 3326507,1
	-- ===NewEmoneyLog: 1000,1090
	tNovPrecisionPush_Pack[3326507][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326507][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326507][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326507][6]["DeleteItem"][1]["Id"] = 3326507 -- 【库】Phase-4CP(B)GrowthBox[属性:9]
	tNovPrecisionPush_Pack[3326507][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326507][6]["RewardEMoneyMono"]["Value"] = 750 -- 赠点天石, 【需求】750赠点天石
	tNovPrecisionPush_Pack[3326507][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1090"
	tNovPrecisionPush_Pack[3326507][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326507][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326507][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326508] = {}
	-- ===5阶天石（赠）成长礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326508][1]
	-- ===NewEmoneyLog: 1000,1091
	tNovPrecisionPush_Pack[3326508][1] = {}
	tNovPrecisionPush_Pack[3326508][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326508][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326508][1]["RewardEMoneyMono"]["Value"] = 800 -- 赠点天石, 【需求】800赠点天石
	tNovPrecisionPush_Pack[3326508][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1091"
	tNovPrecisionPush_Pack[3326508][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326508][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326508][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326508][2] = {}
	-- ===5阶天石（赠）成长礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326508][2]
	-- ===NewEmoneyLog: 1000,1092
	tNovPrecisionPush_Pack[3326508][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326508][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326508][2]["RewardEMoneyMono"]["Value"] = 850 -- 赠点天石, 【需求】850赠点天石
	tNovPrecisionPush_Pack[3326508][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1092"
	tNovPrecisionPush_Pack[3326508][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326508][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326508][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326508][3] = {}
	-- ===5阶天石（赠）成长礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326508][3]
	-- ===NewEmoneyLog: 1000,1093
	tNovPrecisionPush_Pack[3326508][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326508][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326508][3]["RewardEMoneyMono"]["Value"] = 900 -- 赠点天石, 【需求】900赠点天石
	tNovPrecisionPush_Pack[3326508][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1093"
	tNovPrecisionPush_Pack[3326508][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326508][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326508][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326508][4] = {}
	-- ===5阶天石（赠）成长礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326508][4]
	-- ===NewEmoneyLog: 1000,1094
	tNovPrecisionPush_Pack[3326508][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326508][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326508][4]["RewardEMoneyMono"]["Value"] = 950 -- 赠点天石, 【需求】950赠点天石
	tNovPrecisionPush_Pack[3326508][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1094"
	tNovPrecisionPush_Pack[3326508][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326508][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326508][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326508][5] = {}
	-- ===5阶天石（赠）成长礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326508][5]
	-- ===NewEmoneyLog: 1000,1095
	tNovPrecisionPush_Pack[3326508][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326508][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326508][5]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点天石, 【需求】1000赠点天石
	tNovPrecisionPush_Pack[3326508][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1095"
	tNovPrecisionPush_Pack[3326508][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326508][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326508][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326508][6] = {}
	-- ===5阶天石（赠）成长礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326508][6]
	-- ===删除: 3326508,1
	-- ===NewEmoneyLog: 1000,1096
	tNovPrecisionPush_Pack[3326508][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326508][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326508][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326508][6]["DeleteItem"][1]["Id"] = 3326508 -- 【库】Phase-5CP(B)GrowthBox[属性:9]
	tNovPrecisionPush_Pack[3326508][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326508][6]["RewardEMoneyMono"]["Value"] = 1050 -- 赠点天石, 【需求】1050赠点天石
	tNovPrecisionPush_Pack[3326508][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1096"
	tNovPrecisionPush_Pack[3326508][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326508][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326508][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326509] = {}
	-- ===1阶天石（赠）超值礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326509][1]
	-- ===NewEmoneyLog: 1000,1097
	tNovPrecisionPush_Pack[3326509][1] = {}
	tNovPrecisionPush_Pack[3326509][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326509][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326509][1]["RewardEMoneyMono"]["Value"] = 80 -- 赠点天石, 【需求】80赠点天石
	tNovPrecisionPush_Pack[3326509][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1097"
	tNovPrecisionPush_Pack[3326509][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326509][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326509][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326509][2] = {}
	-- ===1阶天石（赠）超值礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326509][2]
	-- ===NewEmoneyLog: 1000,1098
	tNovPrecisionPush_Pack[3326509][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326509][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326509][2]["RewardEMoneyMono"]["Value"] = 85 -- 赠点天石, 【需求】85赠点天石
	tNovPrecisionPush_Pack[3326509][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1098"
	tNovPrecisionPush_Pack[3326509][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326509][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326509][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326509][3] = {}
	-- ===1阶天石（赠）超值礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326509][3]
	-- ===NewEmoneyLog: 1000,1099
	tNovPrecisionPush_Pack[3326509][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326509][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326509][3]["RewardEMoneyMono"]["Value"] = 90 -- 赠点天石, 【需求】90赠点天石
	tNovPrecisionPush_Pack[3326509][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1099"
	tNovPrecisionPush_Pack[3326509][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326509][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326509][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326509][4] = {}
	-- ===1阶天石（赠）超值礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326509][4]
	-- ===NewEmoneyLog: 1000,1100
	tNovPrecisionPush_Pack[3326509][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326509][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326509][4]["RewardEMoneyMono"]["Value"] = 95 -- 赠点天石, 【需求】95赠点天石
	tNovPrecisionPush_Pack[3326509][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1100"
	tNovPrecisionPush_Pack[3326509][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326509][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326509][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326509][5] = {}
	-- ===1阶天石（赠）超值礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326509][5]
	-- ===NewEmoneyLog: 1000,1101
	tNovPrecisionPush_Pack[3326509][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326509][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326509][5]["RewardEMoneyMono"]["Value"] = 100 -- 赠点天石, 【需求】100赠点天石
	tNovPrecisionPush_Pack[3326509][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1101"
	tNovPrecisionPush_Pack[3326509][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326509][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326509][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326509][6] = {}
	-- ===1阶天石（赠）超值礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326509][6]
	-- ===删除: 3326509,1
	-- ===NewEmoneyLog: 1000,1102
	tNovPrecisionPush_Pack[3326509][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326509][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326509][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326509][6]["DeleteItem"][1]["Id"] = 3326509 -- 【库】Phase-1CP(B)ValuedBox[属性:9]
	tNovPrecisionPush_Pack[3326509][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326509][6]["RewardEMoneyMono"]["Value"] = 105 -- 赠点天石, 【需求】105赠点天石
	tNovPrecisionPush_Pack[3326509][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1102"
	tNovPrecisionPush_Pack[3326509][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326509][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326509][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326510] = {}
	-- ===2阶天石（赠）超值礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326510][1]
	-- ===NewEmoneyLog: 1000,1103
	tNovPrecisionPush_Pack[3326510][1] = {}
	tNovPrecisionPush_Pack[3326510][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326510][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326510][1]["RewardEMoneyMono"]["Value"] = 150 -- 赠点天石, 【需求】150赠点天石
	tNovPrecisionPush_Pack[3326510][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1103"
	tNovPrecisionPush_Pack[3326510][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326510][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326510][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326510][2] = {}
	-- ===2阶天石（赠）超值礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326510][2]
	-- ===NewEmoneyLog: 1000,1104
	tNovPrecisionPush_Pack[3326510][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326510][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326510][2]["RewardEMoneyMono"]["Value"] = 160 -- 赠点天石, 【需求】160赠点天石
	tNovPrecisionPush_Pack[3326510][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1104"
	tNovPrecisionPush_Pack[3326510][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326510][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326510][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326510][3] = {}
	-- ===2阶天石（赠）超值礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326510][3]
	-- ===NewEmoneyLog: 1000,1105
	tNovPrecisionPush_Pack[3326510][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326510][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326510][3]["RewardEMoneyMono"]["Value"] = 170 -- 赠点天石, 【需求】170赠点天石
	tNovPrecisionPush_Pack[3326510][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1105"
	tNovPrecisionPush_Pack[3326510][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326510][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326510][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326510][4] = {}
	-- ===2阶天石（赠）超值礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326510][4]
	-- ===NewEmoneyLog: 1000,1106
	tNovPrecisionPush_Pack[3326510][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326510][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326510][4]["RewardEMoneyMono"]["Value"] = 180 -- 赠点天石, 【需求】180赠点天石
	tNovPrecisionPush_Pack[3326510][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1106"
	tNovPrecisionPush_Pack[3326510][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326510][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326510][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326510][5] = {}
	-- ===2阶天石（赠）超值礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326510][5]
	-- ===NewEmoneyLog: 1000,1107
	tNovPrecisionPush_Pack[3326510][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326510][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326510][5]["RewardEMoneyMono"]["Value"] = 190 -- 赠点天石, 【需求】190赠点天石
	tNovPrecisionPush_Pack[3326510][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1107"
	tNovPrecisionPush_Pack[3326510][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326510][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326510][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326510][6] = {}
	-- ===2阶天石（赠）超值礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326510][6]
	-- ===删除: 3326510,1
	-- ===NewEmoneyLog: 1000,1108
	tNovPrecisionPush_Pack[3326510][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326510][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326510][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326510][6]["DeleteItem"][1]["Id"] = 3326510 -- 【库】Phase-2CP(B)ValuedBox[属性:9]
	tNovPrecisionPush_Pack[3326510][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326510][6]["RewardEMoneyMono"]["Value"] = 200 -- 赠点天石, 【需求】200赠点天石
	tNovPrecisionPush_Pack[3326510][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1108"
	tNovPrecisionPush_Pack[3326510][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326510][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326510][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326511] = {}
	-- ===3阶天石（赠）超值礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326511][1]
	-- ===NewEmoneyLog: 1000,1109
	tNovPrecisionPush_Pack[3326511][1] = {}
	tNovPrecisionPush_Pack[3326511][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326511][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326511][1]["RewardEMoneyMono"]["Value"] = 250 -- 赠点天石, 【需求】250赠点天石
	tNovPrecisionPush_Pack[3326511][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1109"
	tNovPrecisionPush_Pack[3326511][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326511][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326511][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326511][2] = {}
	-- ===3阶天石（赠）超值礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326511][2]
	-- ===NewEmoneyLog: 1000,1110
	tNovPrecisionPush_Pack[3326511][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326511][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326511][2]["RewardEMoneyMono"]["Value"] = 280 -- 赠点天石, 【需求】280赠点天石
	tNovPrecisionPush_Pack[3326511][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1110"
	tNovPrecisionPush_Pack[3326511][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326511][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326511][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326511][3] = {}
	-- ===3阶天石（赠）超值礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326511][3]
	-- ===NewEmoneyLog: 1000,1111
	tNovPrecisionPush_Pack[3326511][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326511][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326511][3]["RewardEMoneyMono"]["Value"] = 310 -- 赠点天石, 【需求】310赠点天石
	tNovPrecisionPush_Pack[3326511][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1111"
	tNovPrecisionPush_Pack[3326511][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326511][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326511][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326511][4] = {}
	-- ===3阶天石（赠）超值礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326511][4]
	-- ===NewEmoneyLog: 1000,1112
	tNovPrecisionPush_Pack[3326511][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326511][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326511][4]["RewardEMoneyMono"]["Value"] = 340 -- 赠点天石, 【需求】340赠点天石
	tNovPrecisionPush_Pack[3326511][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1112"
	tNovPrecisionPush_Pack[3326511][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326511][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326511][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326511][5] = {}
	-- ===3阶天石（赠）超值礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326511][5]
	-- ===NewEmoneyLog: 1000,1113
	tNovPrecisionPush_Pack[3326511][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326511][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326511][5]["RewardEMoneyMono"]["Value"] = 370 -- 赠点天石, 【需求】370赠点天石
	tNovPrecisionPush_Pack[3326511][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1113"
	tNovPrecisionPush_Pack[3326511][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326511][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326511][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326511][6] = {}
	-- ===3阶天石（赠）超值礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326511][6]
	-- ===删除: 3326511,1
	-- ===NewEmoneyLog: 1000,1114
	tNovPrecisionPush_Pack[3326511][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326511][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326511][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326511][6]["DeleteItem"][1]["Id"] = 3326511 -- 【库】Phase-3CP(B)ValuedBox[属性:9]
	tNovPrecisionPush_Pack[3326511][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326511][6]["RewardEMoneyMono"]["Value"] = 400 -- 赠点天石, 【需求】400赠点天石
	tNovPrecisionPush_Pack[3326511][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1114"
	tNovPrecisionPush_Pack[3326511][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326511][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326511][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326512] = {}
	-- ===4阶天石（赠）超值礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326512][1]
	-- ===NewEmoneyLog: 1000,1115
	tNovPrecisionPush_Pack[3326512][1] = {}
	tNovPrecisionPush_Pack[3326512][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326512][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326512][1]["RewardEMoneyMono"]["Value"] = 600 -- 赠点天石, 【需求】600赠点天石
	tNovPrecisionPush_Pack[3326512][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1115"
	tNovPrecisionPush_Pack[3326512][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326512][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326512][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326512][2] = {}
	-- ===4阶天石（赠）超值礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326512][2]
	-- ===NewEmoneyLog: 1000,1116
	tNovPrecisionPush_Pack[3326512][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326512][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326512][2]["RewardEMoneyMono"]["Value"] = 650 -- 赠点天石, 【需求】650赠点天石
	tNovPrecisionPush_Pack[3326512][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1116"
	tNovPrecisionPush_Pack[3326512][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326512][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326512][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326512][3] = {}
	-- ===4阶天石（赠）超值礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326512][3]
	-- ===NewEmoneyLog: 1000,1117
	tNovPrecisionPush_Pack[3326512][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326512][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326512][3]["RewardEMoneyMono"]["Value"] = 700 -- 赠点天石, 【需求】700赠点天石
	tNovPrecisionPush_Pack[3326512][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1117"
	tNovPrecisionPush_Pack[3326512][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326512][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326512][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326512][4] = {}
	-- ===4阶天石（赠）超值礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326512][4]
	-- ===NewEmoneyLog: 1000,1118
	tNovPrecisionPush_Pack[3326512][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326512][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326512][4]["RewardEMoneyMono"]["Value"] = 750 -- 赠点天石, 【需求】750赠点天石
	tNovPrecisionPush_Pack[3326512][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1118"
	tNovPrecisionPush_Pack[3326512][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326512][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326512][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326512][5] = {}
	-- ===4阶天石（赠）超值礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326512][5]
	-- ===NewEmoneyLog: 1000,1119
	tNovPrecisionPush_Pack[3326512][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326512][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326512][5]["RewardEMoneyMono"]["Value"] = 800 -- 赠点天石, 【需求】800赠点天石
	tNovPrecisionPush_Pack[3326512][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1119"
	tNovPrecisionPush_Pack[3326512][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326512][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326512][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326512][6] = {}
	-- ===4阶天石（赠）超值礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326512][6]
	-- ===删除: 3326512,1
	-- ===NewEmoneyLog: 1000,1120
	tNovPrecisionPush_Pack[3326512][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326512][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326512][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326512][6]["DeleteItem"][1]["Id"] = 3326512 -- 【库】Phase-4CP(B)ValuedBox[属性:9]
	tNovPrecisionPush_Pack[3326512][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326512][6]["RewardEMoneyMono"]["Value"] = 850 -- 赠点天石, 【需求】850赠点天石
	tNovPrecisionPush_Pack[3326512][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1120"
	tNovPrecisionPush_Pack[3326512][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326512][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326512][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326513] = {}
	-- ===5阶天石（赠）超值礼盒（90级）
	-- ===索引: tNovPrecisionPush_Pack[3326513][1]
	-- ===NewEmoneyLog: 1000,1121
	tNovPrecisionPush_Pack[3326513][1] = {}
	tNovPrecisionPush_Pack[3326513][1]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326513][1]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326513][1]["RewardEMoneyMono"]["Value"] = 1000 -- 赠点天石, 【需求】1000赠点天石
	tNovPrecisionPush_Pack[3326513][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1121"
	tNovPrecisionPush_Pack[3326513][1]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326513][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326513][1]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326513][2] = {}
	-- ===5阶天石（赠）超值礼盒（100级）
	-- ===索引: tNovPrecisionPush_Pack[3326513][2]
	-- ===NewEmoneyLog: 1000,1122
	tNovPrecisionPush_Pack[3326513][2]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326513][2]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326513][2]["RewardEMoneyMono"]["Value"] = 1050 -- 赠点天石, 【需求】1050赠点天石
	tNovPrecisionPush_Pack[3326513][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1122"
	tNovPrecisionPush_Pack[3326513][2]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326513][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326513][2]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326513][3] = {}
	-- ===5阶天石（赠）超值礼盒（105级）
	-- ===索引: tNovPrecisionPush_Pack[3326513][3]
	-- ===NewEmoneyLog: 1000,1123
	tNovPrecisionPush_Pack[3326513][3]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326513][3]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326513][3]["RewardEMoneyMono"]["Value"] = 1100 -- 赠点天石, 【需求】1100赠点天石
	tNovPrecisionPush_Pack[3326513][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1123"
	tNovPrecisionPush_Pack[3326513][3]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326513][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326513][3]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326513][4] = {}
	-- ===5阶天石（赠）超值礼盒（110级）
	-- ===索引: tNovPrecisionPush_Pack[3326513][4]
	-- ===NewEmoneyLog: 1000,1124
	tNovPrecisionPush_Pack[3326513][4]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326513][4]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326513][4]["RewardEMoneyMono"]["Value"] = 1150 -- 赠点天石, 【需求】1150赠点天石
	tNovPrecisionPush_Pack[3326513][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1124"
	tNovPrecisionPush_Pack[3326513][4]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326513][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326513][4]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326513][5] = {}
	-- ===5阶天石（赠）超值礼盒（115级）
	-- ===索引: tNovPrecisionPush_Pack[3326513][5]
	-- ===NewEmoneyLog: 1000,1125
	tNovPrecisionPush_Pack[3326513][5]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326513][5]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326513][5]["RewardEMoneyMono"]["Value"] = 1200 -- 赠点天石, 【需求】1200赠点天石
	tNovPrecisionPush_Pack[3326513][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1125"
	tNovPrecisionPush_Pack[3326513][5]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326513][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326513][5]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326513][6] = {}
	-- ===5阶天石（赠）超值礼盒（120级）
	-- ===索引: tNovPrecisionPush_Pack[3326513][6]
	-- ===删除: 3326513,1
	-- ===NewEmoneyLog: 1000,1126
	tNovPrecisionPush_Pack[3326513][6]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326513][6]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326513][6]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326513][6]["DeleteItem"][1]["Id"] = 3326513 -- 【库】Phase-5CP(B)ValuedBox[属性:9]
	tNovPrecisionPush_Pack[3326513][6]["RewardEMoneyMono"] = {}
	tNovPrecisionPush_Pack[3326513][6]["RewardEMoneyMono"]["Value"] = 1250 -- 赠点天石, 【需求】1250赠点天石
	tNovPrecisionPush_Pack[3326513][6]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1126"
	tNovPrecisionPush_Pack[3326513][6]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326513][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326513][6]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326517] = {}
	-- ===一转特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326517]
	-- ===删除: 3326517,1
	-- ===EMoneyLog: 1000,1127
	tNovPrecisionPush_Pack[3326517]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326517]["EmoneyLog"] = "1000	1127	0	0	1	"
	tNovPrecisionPush_Pack[3326517]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326517]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326517]["DeleteItem"][1]["Id"] = 3326517 -- 【库】1stRebirthPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326517]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326517]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326517]["RewardItem"][1]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0], 【表格】涅槃灵石（赠）
	tNovPrecisionPush_Pack[3326517]["RewardItem"][1]["Attr"] = "0 1 3" -- CelestialStone（赠）*1
	tNovPrecisionPush_Pack[3326517]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326517]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326517]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326518] = {}
	-- ===二转特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326518]
	-- ===删除: 3326518,1
	-- ===EMoneyLog: 1000,1128
	tNovPrecisionPush_Pack[3326518]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326518]["EmoneyLog"] = "1000	1128	0	0	1	"
	tNovPrecisionPush_Pack[3326518]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326518]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326518]["DeleteItem"][1]["Id"] = 3326518 -- 【库】2ndRebirthPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326518]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326518]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326518]["RewardItem"][1]["Id"] = 723701 -- ExemptionToken[723701][属性:0][叠加:0][金币:0], 【表格】免试金牌（赠）
	tNovPrecisionPush_Pack[3326518]["RewardItem"][1]["Attr"] = "0 1 3" -- ExemptionToken（赠）*1
	tNovPrecisionPush_Pack[3326518]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326518]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326518]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326519] = {}
	-- ===特转特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326519]
	-- ===EMoneyLog: 1000,1129
	tNovPrecisionPush_Pack[3326519]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326519]["EmoneyLog"] = "1000	1129	0	0	1	"
	tNovPrecisionPush_Pack[3326519]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326519]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326519]["RewardItem"][1]["Id"] = 711083 -- OblivionDew[711083][属性:8][叠加:10][金币:0], 【表格】乾坤九转神露（赠）
	tNovPrecisionPush_Pack[3326519]["RewardItem"][1]["Attr"] = "0 1 3" -- OblivionDew（赠）*1
	tNovPrecisionPush_Pack[3326519]["RewardNoNeedTip"] = 1
	tNovPrecisionPush_Pack[3326519]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326519]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326519]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326520] = {}
	-- ===升级冲刺礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326520]
	-- ===删除: 3326520,1
	-- ===EMoneyLog: 1000,1130
	tNovPrecisionPush_Pack[3326520]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326520]["EmoneyLog"] = "1000	1130	0	0	1	"
	tNovPrecisionPush_Pack[3326520]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326520]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326520]["DeleteItem"][1]["Id"] = 3326520 -- 【库】UpgradingSprintBox[属性:9]
	tNovPrecisionPush_Pack[3326520]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326520]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326520]["RewardItem"][1]["Id"] = 3001283 -- EXPBall[3001283][属性:0][叠加:10][金币:0], 【表格】聚神丹（赠）
	tNovPrecisionPush_Pack[3326520]["RewardItem"][1]["Attr"] = "0 70 3" -- EXPBall（赠）*70（[错误]物品数量超10个）
	tNovPrecisionPush_Pack[3326520]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326520]["RewardItem"][2]["Id"] = 723017 -- ExpPotion[3003677][属性:0][叠加:100][金币:0], 【表格】昆仑雪水（赠）
	tNovPrecisionPush_Pack[3326520]["RewardItem"][2]["Attr"] = "0 7 3" -- ExpPotion（赠）*7
	tNovPrecisionPush_Pack[3326520]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326520]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326520]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326521] = {}
	-- ===勇士装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326521]
	-- ===删除: 3326521,1
	-- ===EMoneyLog: 1000,1131
	tNovPrecisionPush_Pack[3326521]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326521]["EmoneyLog"] = "1000	1131	0	0	1	"
	tNovPrecisionPush_Pack[3326521]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326521]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326521]["DeleteItem"][1]["Id"] = 3326521 -- 【库】TrojanPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326521]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326521]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326521]["RewardItem"][1]["Id"] = 118009 -- GuardCoronet[118009][属性:0][叠加:0][金币:150], 【表格】极品勇士头盔*1
	tNovPrecisionPush_Pack[3326521]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）GuardCoronet（赠）*1
	tNovPrecisionPush_Pack[3326521]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326521]["RewardItem"][2]["Id"] = 130009 -- LeatherArmor[130009][属性:0][叠加:0][金币:390], 【表格】极品勇士盔甲*1
	tNovPrecisionPush_Pack[3326521]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）LeatherArmor（赠）*1
	tNovPrecisionPush_Pack[3326521]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326521]["RewardItem"][3]["Id"] = 481009 -- ShortScepter[481009][属性:0][叠加:0][金币:102], 【表格】极品勇士武器*1
	tNovPrecisionPush_Pack[3326521]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）ShortScepter（赠）*1
	tNovPrecisionPush_Pack[3326521]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326521]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326521]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326522] = {}
	-- ===战士装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326522]
	-- ===删除: 3326522,1
	-- ===EMoneyLog: 1000,1132
	tNovPrecisionPush_Pack[3326522]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326522]["EmoneyLog"] = "1000	1132	0	0	1	"
	tNovPrecisionPush_Pack[3326522]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326522]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326522]["DeleteItem"][1]["Id"] = 3326522 -- 【库】WarriorPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326522]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326522]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326522]["RewardItem"][1]["Id"] = 111009 -- IronHelmet[111009][属性:0][叠加:0][金币:150], 【表格】极品战士头盔*1
	tNovPrecisionPush_Pack[3326522]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）IronHelmet（赠）*1
	tNovPrecisionPush_Pack[3326522]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326522]["RewardItem"][2]["Id"] = 131009 -- OxhideArmor[131009][属性:0][叠加:0][金币:390], 【表格】极品战士盔甲*1
	tNovPrecisionPush_Pack[3326522]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）OxhideArmor（赠）*1
	tNovPrecisionPush_Pack[3326522]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326522]["RewardItem"][3]["Id"] = 624009 -- SkyFlame[624009][属性:0][叠加:0][金币:153], 【表格】极品战士武器*1
	tNovPrecisionPush_Pack[3326522]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）SkyFlame（赠）*1
	tNovPrecisionPush_Pack[3326522]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326522]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326522]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326523] = {}
	-- ===海盗装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326523]
	-- ===删除: 3326523,1
	-- ===EMoneyLog: 1000,1133
	tNovPrecisionPush_Pack[3326523]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326523]["EmoneyLog"] = "1000	1133	0	0	1	"
	tNovPrecisionPush_Pack[3326523]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326523]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326523]["DeleteItem"][1]["Id"] = 3326523 -- 【库】PiratePreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326523]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326523]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326523]["RewardItem"][1]["Id"] = 144009 -- PatrolHeadgear[144009][属性:0][叠加:0][金币:150], 【表格】极品海盗头盔*1
	tNovPrecisionPush_Pack[3326523]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）PatrolHeadgear（赠）*1
	tNovPrecisionPush_Pack[3326523]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326523]["RewardItem"][2]["Id"] = 139009 -- RecruitCoat[139009][属性:0][叠加:0][金币:390], 【表格】极品海盗盔甲*1
	tNovPrecisionPush_Pack[3326523]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）RecruitCoat（赠）*1
	tNovPrecisionPush_Pack[3326523]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326523]["RewardItem"][3]["Id"] = 611009 -- ApprenticeRapier[611009][属性:0][叠加:0][金币:102], 【表格】极品海盗武器*1
	tNovPrecisionPush_Pack[3326523]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）ApprenticeRapier（赠）*1
	tNovPrecisionPush_Pack[3326523]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326523]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326523]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326524] = {}
	-- ===道士装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326524]
	-- ===删除: 3326524,1
	-- ===EMoneyLog: 1000,1134
	tNovPrecisionPush_Pack[3326524]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326524]["EmoneyLog"] = "1000	1134	0	0	1	"
	tNovPrecisionPush_Pack[3326524]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326524]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326524]["DeleteItem"][1]["Id"] = 3326524 -- 【库】TaoistPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326524]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326524]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326524]["RewardItem"][1]["Id"] = 114009 -- DestinyCap[114009][属性:0][叠加:0][金币:150], 【表格】极品道士头盔*1
	tNovPrecisionPush_Pack[3326524]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）DestinyCap（赠）*1
	tNovPrecisionPush_Pack[3326524]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326524]["RewardItem"][2]["Id"] = 134009 -- TaoRobe[134009][属性:0][叠加:0][金币:390], 【表格】极品道士盔甲*1
	tNovPrecisionPush_Pack[3326524]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）TaoRobe（赠）*1
	tNovPrecisionPush_Pack[3326524]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326524]["RewardItem"][3]["Id"] = 421009 -- PeachBacksword[421009][属性:0][叠加:0][金币:102], 【表格】极品道士武器*1
	tNovPrecisionPush_Pack[3326524]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）PeachBacksword（赠）*1
	tNovPrecisionPush_Pack[3326524]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326524]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326524]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326525] = {}
	-- ===铁扇门装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326525]
	-- ===删除: 3326525,1
	-- ===EMoneyLog: 1000,1135
	tNovPrecisionPush_Pack[3326525]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326525]["EmoneyLog"] = "1000	1135	0	0	1	"
	tNovPrecisionPush_Pack[3326525]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326525]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326525]["DeleteItem"][1]["Id"] = 3326525 -- 【库】WindwalkerPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326525]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326525]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326525]["RewardItem"][1]["Id"] = 170009 -- DarkCloudHat[170009][属性:0][叠加:0][金币:150], 【表格】极品铁扇门头盔*1
	tNovPrecisionPush_Pack[3326525]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）DarkCloudHat（赠）*1
	tNovPrecisionPush_Pack[3326525]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326525]["RewardItem"][2]["Id"] = 101009 -- MysticWindrobe[101009][属性:0][叠加:0][金币:390], 【表格】极品铁扇门盔甲*1
	tNovPrecisionPush_Pack[3326525]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）MysticWindrobe（赠）*1
	tNovPrecisionPush_Pack[3326525]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326525]["RewardItem"][3]["Id"] = 626009 -- PrideFan[626009][属性:0][叠加:0][金币:153], 【表格】极品铁扇门武器*1
	tNovPrecisionPush_Pack[3326525]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）PrideFan（赠）*1
	tNovPrecisionPush_Pack[3326525]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326525]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326525]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326526] = {}
	-- ===截拳师装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326526]
	-- ===删除: 3326526,1
	-- ===EMoneyLog: 1000,1136
	tNovPrecisionPush_Pack[3326526]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326526]["EmoneyLog"] = "1000	1136	0	0	1	"
	tNovPrecisionPush_Pack[3326526]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326526]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326526]["DeleteItem"][1]["Id"] = 3326526 -- 【库】DragonWarriorPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326526]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326526]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326526]["RewardItem"][1]["Id"] = 148009 -- LinenHood[148009][属性:0][叠加:0][金币:150], 【表格】极品截拳师头盔*1
	tNovPrecisionPush_Pack[3326526]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）LinenHood（赠）*1
	tNovPrecisionPush_Pack[3326526]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326526]["RewardItem"][2]["Id"] = 138009 -- CombatSuit(Lv.15)[138009][属性:0][叠加:0][金币:390], 【表格】极品截拳师盔甲*1
	tNovPrecisionPush_Pack[3326526]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）CombatSuit(Lv.15)（赠）*1
	tNovPrecisionPush_Pack[3326526]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326526]["RewardItem"][3]["Id"] = 617009 -- RopeNunchaku[617009][属性:0][叠加:0][金币:102], 【表格】极品截拳师武器*1
	tNovPrecisionPush_Pack[3326526]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）RopeNunchaku（赠）*1
	tNovPrecisionPush_Pack[3326526]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326526]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326526]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326527] = {}
	-- ===弓手装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326527]
	-- ===删除: 3326527,1
	-- ===EMoneyLog: 1000,1137
	tNovPrecisionPush_Pack[3326527]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326527]["EmoneyLog"] = "1000	1137	0	0	1	"
	tNovPrecisionPush_Pack[3326527]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326527]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326527]["DeleteItem"][1]["Id"] = 3326527 -- 【库】ArcherPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326527]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326527]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326527]["RewardItem"][1]["Id"] = 113009 -- BadgerHat[113009][属性:0][叠加:0][金币:300], 【表格】极品弓手头盔*1
	tNovPrecisionPush_Pack[3326527]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）BadgerHat（赠）*1
	tNovPrecisionPush_Pack[3326527]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326527]["RewardItem"][2]["Id"] = 133009 -- DeerskinCoat[133009][属性:0][叠加:0][金币:780], 【表格】极品弓手盔甲*1
	tNovPrecisionPush_Pack[3326527]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）DeerskinCoat（赠）*1
	tNovPrecisionPush_Pack[3326527]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326527]["RewardItem"][3]["Id"] = 613009 -- PetalKnife[613009][属性:0][叠加:0][金币:102], 【表格】极品弓手武器*1
	tNovPrecisionPush_Pack[3326527]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）PetalKnife（赠）*1
	tNovPrecisionPush_Pack[3326527]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326527]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326527]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326528] = {}
	-- ===武僧装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326528]
	-- ===删除: 3326528,1
	-- ===EMoneyLog: 1000,1138
	tNovPrecisionPush_Pack[3326528]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326528]["EmoneyLog"] = "1000	1138	0	0	1	"
	tNovPrecisionPush_Pack[3326528]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326528]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326528]["DeleteItem"][1]["Id"] = 3326528 -- 【库】MonkPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326528]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326528]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326528]["RewardItem"][1]["Id"] = 143009 -- BronzeHeadband[143009][属性:0][叠加:0][金币:150], 【表格】极品武僧头盔*1
	tNovPrecisionPush_Pack[3326528]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）BronzeHeadband（赠）*1
	tNovPrecisionPush_Pack[3326528]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326528]["RewardItem"][2]["Id"] = 136009 -- BurlapFrock[136009][属性:0][叠加:0][金币:390], 【表格】极品武僧盔甲*1
	tNovPrecisionPush_Pack[3326528]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）BurlapFrock（赠）*1
	tNovPrecisionPush_Pack[3326528]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326528]["RewardItem"][3]["Id"] = 610009 -- WillowPrayerBeads[610009][属性:0][叠加:0][金币:102], 【表格】极品武僧武器*1
	tNovPrecisionPush_Pack[3326528]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）WillowPrayerBeads（赠）*1
	tNovPrecisionPush_Pack[3326528]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326528]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326528]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326529] = {}
	-- ===忍者装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326529]
	-- ===删除: 3326529,1
	-- ===EMoneyLog: 1000,1139
	tNovPrecisionPush_Pack[3326529]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326529]["EmoneyLog"] = "1000	1139	0	0	1	"
	tNovPrecisionPush_Pack[3326529]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326529]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326529]["DeleteItem"][1]["Id"] = 3326529 -- 【库】NinjaPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326529]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326529]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326529]["RewardItem"][1]["Id"] = 123009 -- CottonHood[123009][属性:0][叠加:0][金币:150], 【表格】极品忍者头盔*1
	tNovPrecisionPush_Pack[3326529]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）CottonHood（赠）*1
	tNovPrecisionPush_Pack[3326529]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326529]["RewardItem"][2]["Id"] = 135009 -- LowerNinjaVest[135009][属性:0][叠加:0][金币:390], 【表格】极品忍者盔甲*1
	tNovPrecisionPush_Pack[3326529]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）LowerNinjaVest（赠）*1
	tNovPrecisionPush_Pack[3326529]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326529]["RewardItem"][3]["Id"] = 601009 -- MetalKatana[601009][属性:0][叠加:0][金币:102], 【表格】极品忍者武器*1
	tNovPrecisionPush_Pack[3326529]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）MetalKatana（赠）*1
	tNovPrecisionPush_Pack[3326529]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326529]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326529]["RewardEffect"]["Effect"] = "angelwing"


	tNovPrecisionPush_Pack[3326530] = {}
	-- ===斗士装备特惠礼盒
	-- ===索引: tNovPrecisionPush_Pack[3326530]
	-- ===删除: 3326530,1
	-- ===EMoneyLog: 1000,1140
	tNovPrecisionPush_Pack[3326530]["LogId"] = 12001688
	tNovPrecisionPush_Pack[3326530]["EmoneyLog"] = "1000	1140	0	0	1	"
	tNovPrecisionPush_Pack[3326530]["DeleteItem"] = {}
	tNovPrecisionPush_Pack[3326530]["DeleteItem"][1] = {}
	tNovPrecisionPush_Pack[3326530]["DeleteItem"][1]["Id"] = 3326530 -- 【库】ThunderstrikerPreferentialBox[属性:9]
	tNovPrecisionPush_Pack[3326530]["RewardItem"] = {}
	tNovPrecisionPush_Pack[3326530]["RewardItem"][1] = {}
	tNovPrecisionPush_Pack[3326530]["RewardItem"][1]["Id"] = 146009 -- ThunderHelmet[146009][属性:0][叠加:0][金币:150], 【表格】极品斗士头盔*1
	tNovPrecisionPush_Pack[3326530]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）ThunderHelmet（赠）*1
	tNovPrecisionPush_Pack[3326530]["RewardItem"][2] = {}
	tNovPrecisionPush_Pack[3326530]["RewardItem"][2]["Id"] = 102009 -- RumbleArmor[102009][属性:0][叠加:0][金币:390], 【表格】极品斗士盔甲*1
	tNovPrecisionPush_Pack[3326530]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）RumbleArmor（赠）*1
	tNovPrecisionPush_Pack[3326530]["RewardItem"][3] = {}
	tNovPrecisionPush_Pack[3326530]["RewardItem"][3]["Id"] = 681009 -- GloryStormhammer[681009][属性:0][叠加:0][金币:153], 【表格】极品斗士武器*1
	tNovPrecisionPush_Pack[3326530]["RewardItem"][3]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）GloryStormhammer（赠）*1
	tNovPrecisionPush_Pack[3326530]["RewardItem"][4] = {}
	tNovPrecisionPush_Pack[3326530]["RewardItem"][4]["Id"] = 680009 -- ShadowFlashaxe[680009][属性:0][叠加:0][金币:153], 【表格】极品斗士武器*1
	tNovPrecisionPush_Pack[3326530]["RewardItem"][4]["Attr"] = "0 1 3 0 0 0 0 3 0 0 4 255" -- 1洞3%神佑（追加+4）ShadowFlashaxe（赠）*1
	tNovPrecisionPush_Pack[3326530]["RewardEffect"] = {}
	tNovPrecisionPush_Pack[3326530]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNovPrecisionPush_Pack[3326530]["RewardEffect"]["Effect"] = "angelwing"

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3326504] = tItem[3326504] or {}
tItem[3326504]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tNovPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tNovPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData == nil or nData == 0 then
		nData = 1
	end
	-- 没有删除时，次数上限判断
	if nData > tNovPrecisionPush_Stc["Limit"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
		end
		return
	end
	--等级不足
	local nLevel = tNovPrecisionPush_Cont["Level"][nData] or 0
	local nMetempsychosis = tNovPrecisionPush_Cont["Metempsychosis"]
	local nEmoney = tNovPrecisionPush_Pack[nItemId][nData]["RewardEMoneyMono"]["Value"] or 0
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		Sys_MsgBox(string.format(tNovPrecisionPush_Text["Msg"]["UnderLevel"],nLevel,nEmoney))
		return
	end
	-- 赠点上限判断
	if Get_UserMonoEMoney() + nEmoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tNovPrecisionPush_Text["Msg"]["OverEMoney"])
		return
	end
	-- 打掩码
	Task_SetStatistic(nEvent,nType,nData + 1,1)
	RewardTemplate_UseItemAndMsg(tNovPrecisionPush_Pack[nItemId][nData])
	-- 最后一次重置
	if Get_UserStatisticValue(nEvent,nType) > tNovPrecisionPush_Stc["Limit"] then
		Task_SetStatistic(nEvent,nType,0,1)
	end
	return
end
tItem[3326505] = tItem[3326504]
tItem[3326506] = tItem[3326504]
tItem[3326507] = tItem[3326504]
tItem[3326508] = tItem[3326504]
tItem[3326509] = tItem[3326504]
tItem[3326510] = tItem[3326504]
tItem[3326511] = tItem[3326504]
tItem[3326512] = tItem[3326504]
tItem[3326513] = tItem[3326504]

-- 轮盘
tItem[3326514] = tItem[3326514] or {}
tItem[3326514]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(7082)
end
tItem[3326515] = tItem[3326515] or {}
tItem[3326515]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(7083)
end
tItem[3326516] = tItem[3326516] or {}
tItem[3326516]["Function"] = function (nItemId,sItemName)
	RouletteMould_Main(7084)
end

tItem[3326517] = tItem[3326517] or {}
tItem[3326517]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 判断背包空间
	local nSpace= RewardTemplate_GetRewardSpace(tNovPrecisionPush_Pack[nItemId]) - RewardTemplate_GetDelSpace(tNovPrecisionPush_Pack[nItemId])
	if not RewardTemplate_CheckSpace(tNovPrecisionPush_Pack[nItemId]) then
		Sys_MsgBox(string.format(tNovPrecisionPush_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tNovPrecisionPush_Pack[nItemId])
end
tItem[3326518] = tItem[3326517]
tItem[3326520] = tItem[3326517]
tItem[3326521] = tItem[3326517]
tItem[3326522] = tItem[3326517]
tItem[3326523] = tItem[3326517]
tItem[3326524] = tItem[3326517]
tItem[3326525] = tItem[3326517]
tItem[3326526] = tItem[3326517]
tItem[3326527] = tItem[3326517]
tItem[3326528] = tItem[3326517]
tItem[3326529] = tItem[3326517]
tItem[3326530] = tItem[3326517]

tItem[3326519] = tItem[3326519] or {}
tItem[3326519]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tNovPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tNovPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 没有删除时，次数上限判断
	if nData >= tNovPrecisionPush_Stc[nItemId]["Limit"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
		end
		return
	end
	-- 判断背包空间
	local nSpace= RewardTemplate_GetRewardSpace(tNovPrecisionPush_Pack[nItemId]) - RewardTemplate_GetDelSpace(tNovPrecisionPush_Pack[nItemId])
	if not RewardTemplate_CheckSpace(tNovPrecisionPush_Pack[nItemId]) then
		Sys_MsgBox(string.format(tNovPrecisionPush_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	-- 打掩码
	Task_AddStatistic(nEvent,nType,1,1)
	RewardTemplate_UseItem(tNovPrecisionPush_Pack[nItemId])
	-- 上限判断
	local nNowData = Get_UserStatisticValue(nEvent,nType)
	if nNowData >= tNovPrecisionPush_Stc[nItemId]["Limit"] then
		Item_DelItem(nItemId)
		-- 最后一次重置
		Task_SetStatistic(nEvent,nType,0,1)
		return
	else
		User_TalkChannel2005(string.format(tNovPrecisionPush_Text["Msg"]["RewardOblivionDew"],tNovPrecisionPush_Stc[nItemId]["Limit"] - nNowData))
	end
end
