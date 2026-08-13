------------------------------------------------------------------------------------
--Name:		191015[简体征服][任务脚本]规范奖励池道具制作
--Creator: 	兰瑞妹
--Created:	2019/10/17
------------------------------------------------------------------------------------
-- 命名前缀
-- Standardize_RewardPoolProps_

-- logid 12001700

-- #stc 掩码说明 
-- #stc(208,35) 化气聚神丹 1天（零点重置）可使用10个
-- #stc(213,23) 聚神丹 1天（零点重置）可使用10个

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tStandardize_RewardPoolProps_Count = {}
	-- 上限赋值
	-- 天石
	tStandardize_RewardPoolProps_Count["MaxEMoney"] = G_User_MaxEmoney
	-- 赠点
	tStandardize_RewardPoolProps_Count["MaxEMoneyMono"] = G_User_MaxEmoneyMono
	-- 黄金联赛积分
	tStandardize_RewardPoolProps_Count["MaxGoldenLeague"] = G_User_GoldenLeague
	-- 天石
	tStandardize_RewardPoolProps_Count["CostEmoney"] = {}
	tStandardize_RewardPoolProps_Count["CostEmoney"][5] = 599 -- 非赠的价格
	tStandardize_RewardPoolProps_Count["CostEmoney"][6] = 599 -- 赠品的价格
	
	-- 批量开启标准
	tStandardize_RewardPoolProps_Count["BatchNum"] = 100
	-- 金额过多的批量开启数量
	tStandardize_RewardPoolProps_Count["MinBatchNum"] = 10
	-- 批量索引对应
	tStandardize_RewardPoolProps_Count["BatchIndex"] = {}
	-- 天石
	tStandardize_RewardPoolProps_Count["BatchIndex"][1] = "RewardEMoney"
	-- 天石（赠）
	tStandardize_RewardPoolProps_Count["BatchIndex"][2] = "RewardEMoneyMono"
	-- 银两
	tStandardize_RewardPoolProps_Count["BatchIndex"][3] = "RewardMoney"
	-- 骑乘积分
	tStandardize_RewardPoolProps_Count["BatchIndex"][4] = "RewardRidingPoint"
	-- 气力值
	tStandardize_RewardPoolProps_Count["BatchIndex"][5] = "RewardStrengthValue"
	-- 修行值
	tStandardize_RewardPoolProps_Count["BatchIndex"][6] = "RewardCultivation"
	-- 修为值
	tStandardize_RewardPoolProps_Count["BatchIndex"][7] = "RewardRepairValue"
	
	-- 天石赠点银两礼包最大的判断上限
	tStandardize_RewardPoolProps_Count["LimitNum"] = {}
	-- 天石
	tStandardize_RewardPoolProps_Count["LimitNum"][3314183] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314183]["Min"] = 1
	tStandardize_RewardPoolProps_Count["LimitNum"][3314183]["Max"] = 88
	tStandardize_RewardPoolProps_Count["LimitNum"][3314184] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314184]["Min"] = 8
	tStandardize_RewardPoolProps_Count["LimitNum"][3314184]["Max"] = 888
	tStandardize_RewardPoolProps_Count["LimitNum"][3314185] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314185]["Min"] = 88
	tStandardize_RewardPoolProps_Count["LimitNum"][3314185]["Max"] = 8888
	-- 赠点
	tStandardize_RewardPoolProps_Count["LimitNum"][3314189] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314189]["Min"] = 1
	tStandardize_RewardPoolProps_Count["LimitNum"][3314189]["Max"] = 88
	tStandardize_RewardPoolProps_Count["LimitNum"][3314190] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314190]["Min"] = 8
	tStandardize_RewardPoolProps_Count["LimitNum"][3314190]["Max"] = 888
	tStandardize_RewardPoolProps_Count["LimitNum"][3314191] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314191]["Min"] = 88
	tStandardize_RewardPoolProps_Count["LimitNum"][3314191]["Max"] = 8888
	-- 银两
	tStandardize_RewardPoolProps_Count["LimitNum"][3314196] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314196]["Min"] = 10000
	tStandardize_RewardPoolProps_Count["LimitNum"][3314196]["Max"] = 880000
	tStandardize_RewardPoolProps_Count["LimitNum"][3314197] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314197]["Min"] = 80000
	tStandardize_RewardPoolProps_Count["LimitNum"][3314197]["Max"] = 8880000
	tStandardize_RewardPoolProps_Count["LimitNum"][3314198] = {}
	tStandardize_RewardPoolProps_Count["LimitNum"][3314198]["Min"] = 880000
	tStandardize_RewardPoolProps_Count["LimitNum"][3314198]["Max"] = 88880000
	
	-- 3314201,'100特殊黄金积分券'
	tStandardize_RewardPoolProps_Count["SpeGoldenLeague"] = 100
	
	-- 选项初始索引数值
	tStandardize_RewardPoolProps_Count["OptionStartIndex"] = 111
	
	-- 碎片赌概率
	tStandardize_RewardPoolProps_Count["BetPiece"] = {}
	tStandardize_RewardPoolProps_Count["BetPiece"]["StartNum"] = 48
	tStandardize_RewardPoolProps_Count["BetPiece"]["EndNum"] = 100
	
	-- 固化石碎片
	tStandardize_RewardPoolProps_Count["NewBetPiece"] = {}
	tStandardize_RewardPoolProps_Count["NewBetPiece"]["StartNum"] = 960
	tStandardize_RewardPoolProps_Count["NewBetPiece"]["EndNum"] = 10000
	
	-- 九转碎片
	tStandardize_RewardPoolProps_Count["DanPiece"] = {}
	tStandardize_RewardPoolProps_Count["DanPiece"]["StartNum"] = 1000
	tStandardize_RewardPoolProps_Count["DanPiece"]["EndNum"] = 10000
	
	
	-- 神魂碎片
	tStandardize_RewardPoolProps_Count["MindBetPiece"] = {}
	tStandardize_RewardPoolProps_Count["MindBetPiece"]["StartNum"] = 100
	tStandardize_RewardPoolProps_Count["MindBetPiece"]["EndNum"] = 1500
	
	-- 使用爵位勋章等级限制
	tStandardize_RewardPoolProps_Count["Level"] = 70
	tStandardize_RewardPoolProps_Count["Mete"] = 0
	
	-- 获得物品数量
	tStandardize_RewardPoolProps_Count["NormalAttr"] = "0 %d"
	tStandardize_RewardPoolProps_Count["MonopolyAttr"] = "0 %d 3"

	-- 经验丹碎片数量
	tStandardize_RewardPoolProps_Count["ExpPieceNum"] = 10
	-- 等级对应的1%
	tStandardize_RewardPoolProps_Count["Percent"] = {}
	tStandardize_RewardPoolProps_Count["Percent"][140] = 10
	tStandardize_RewardPoolProps_Count["Percent"][141] = 9
	tStandardize_RewardPoolProps_Count["Percent"][142] = 8
	tStandardize_RewardPoolProps_Count["Percent"][143] = 7
	tStandardize_RewardPoolProps_Count["Percent"][144] = 6
	tStandardize_RewardPoolProps_Count["Percent"][145] = 5
	tStandardize_RewardPoolProps_Count["Percent"][146] = 4
	tStandardize_RewardPoolProps_Count["Percent"][147] = 3
	tStandardize_RewardPoolProps_Count["Percent"][148] = 2
	tStandardize_RewardPoolProps_Count["Percent"][149] = 1
	
	-- 使用等级
	tStandardize_RewardPoolProps_Count["SpeLevel"] = 140
	
	
-- Log表
local tStandardize_RewardPoolProps_Log = {}
	-- 100特殊黄金积分券
	tStandardize_RewardPoolProps_Log["SpeGoldenLeague"] = "0,0,3314201,1,12001700,2,21,100"
	-- 赌碎片
	tStandardize_RewardPoolProps_Log["BetPiece"] = "0,0,%d,1,12001700,2,0,0"
	
	tStandardize_RewardPoolProps_Log["EmoneyLog"]  = "1000	01789"
	--使用神器礼包
	tStandardize_RewardPoolProps_Log["UseAftiaItem"] = "0,0,%d,1,12001700,2,%s,1"

-- 神纹物品id可选包
local tStandardize_RewardPoolProps_Rune = {}
	-- 红色神纹
	tStandardize_RewardPoolProps_Rune[3314242] = {4010901,4010801,4010701,4010601,4010401,4010201,4010301,4010501,4010001,4010101,4011501,4011401}
	-- 黄色神纹
	tStandardize_RewardPoolProps_Rune[3314243] = {4030101,4030201,4030301,4030401,4030501,4030601,4030701,4030801,4030901,4031001,4031101,4031201,4031301,4033801,4033701,4033101,4033601}
	-- 蓝色神纹
	tStandardize_RewardPoolProps_Rune[3314244] = {4020101,4020201,4020301,4020401,4020501,4020601,4020701,4020801,4020901,4021001,4022201}
	-- 稀有黄色神纹
	tStandardize_RewardPoolProps_Rune[3314245] = {4032001,4032101,4032201,4032301,4032401,4032501,4032601,4032701,4032801,4031601,4031501,4031401,4034001,4033901,4033401,4034101,4033301,4032901,4033001,4034201,4034301,4034401,4034501,4034601,4034701,4034801,4035101,4035201}
	-- 稀有蓝色神纹
	tStandardize_RewardPoolProps_Rune[3314246] = {4021101,4021201,4021301,4021401,4021501,4021601,4021701,4021801,4021901,4022001,4023001}
	
	-- 非赠可选包
	tStandardize_RewardPoolProps_Rune[10] = {}
	tStandardize_RewardPoolProps_Rune[10]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Rune[10]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Rune[10]["DeleteItem"][1]["Id"] = 0
	tStandardize_RewardPoolProps_Rune[10]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Rune[10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Rune[10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Rune[10]["RewardItem"][1]["Id"] = 0
	tStandardize_RewardPoolProps_Rune[10]["RewardItem"][1]["Attr"] = "0 1"
	tStandardize_RewardPoolProps_Rune[10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Rune[10]["RewardEffect"]["Effect"] = "angelwing"
	tStandardize_RewardPoolProps_Rune[10]["LogId"] = 12001700
	-- 赠可选包
	tStandardize_RewardPoolProps_Rune[20] = {}
	tStandardize_RewardPoolProps_Rune[20]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Rune[20]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Rune[20]["DeleteItem"][1]["Id"] = 0
	tStandardize_RewardPoolProps_Rune[20]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Rune[20]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Rune[20]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Rune[20]["RewardItem"][1]["Id"] = 0
	tStandardize_RewardPoolProps_Rune[20]["RewardItem"][1]["Attr"] = "0 1 3"
	tStandardize_RewardPoolProps_Rune[20]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Rune[20]["RewardEffect"]["Effect"] = "angelwing"
	tStandardize_RewardPoolProps_Rune[20]["LogId"] = 12001700

-- 神魂可选
local tStandardize_RewardPoolProps_Mind = {}
	--七阶武器神魂
	tStandardize_RewardPoolProps_Mind[3314226]={}
	tStandardize_RewardPoolProps_Mind[3314226][111]=800020
	tStandardize_RewardPoolProps_Mind[3314226][112]=800111
	tStandardize_RewardPoolProps_Mind[3314226][113]=800215
	tStandardize_RewardPoolProps_Mind[3314226][114]=800811
	tStandardize_RewardPoolProps_Mind[3314226][115]=800810
	tStandardize_RewardPoolProps_Mind[3314226][116]=800142
	tStandardize_RewardPoolProps_Mind[3314226][117]=800917
	tStandardize_RewardPoolProps_Mind[3314226][118]=800255
	tStandardize_RewardPoolProps_Mind[3314226][119]=800422
	tStandardize_RewardPoolProps_Mind[3314226][120]=800522
	tStandardize_RewardPoolProps_Mind[3314226][121]=800618
	tStandardize_RewardPoolProps_Mind[3314226][122]=800725
	tStandardize_RewardPoolProps_Mind[3314226][123]=801004
	tStandardize_RewardPoolProps_Mind[3314226][124]=801104
	tStandardize_RewardPoolProps_Mind[3314226][125]=801216
	tStandardize_RewardPoolProps_Mind[3314226][126]=801218
	tStandardize_RewardPoolProps_Mind[3314226][127]=801308
	tStandardize_RewardPoolProps_Mind[3314226][128]=827010
	tStandardize_RewardPoolProps_Mind[3314226][129]=827011
	tStandardize_RewardPoolProps_Mind[3314226][130]=827012
	tStandardize_RewardPoolProps_Mind[3314226][131]=827013
	-- 七阶防具神魂
	tStandardize_RewardPoolProps_Mind[3314227]={}
	tStandardize_RewardPoolProps_Mind[3314227][111]=820073
	tStandardize_RewardPoolProps_Mind[3314227][112]=820074
	tStandardize_RewardPoolProps_Mind[3314227][113]=820075
	tStandardize_RewardPoolProps_Mind[3314227][114]=820076
	tStandardize_RewardPoolProps_Mind[3314227][115]=822071
	tStandardize_RewardPoolProps_Mind[3314227][116]=822072
	tStandardize_RewardPoolProps_Mind[3314227][117]=821034
	tStandardize_RewardPoolProps_Mind[3314227][118]=821033
	tStandardize_RewardPoolProps_Mind[3314227][119]=823058
	tStandardize_RewardPoolProps_Mind[3314227][120]=823059
	tStandardize_RewardPoolProps_Mind[3314227][121]=823061
	tStandardize_RewardPoolProps_Mind[3314227][122]=823062
	tStandardize_RewardPoolProps_Mind[3314227][123]=823060
	tStandardize_RewardPoolProps_Mind[3314227][124]=824018
	tStandardize_RewardPoolProps_Mind[3314227][125]=824019
	tStandardize_RewardPoolProps_Mind[3314227][126]=824020
	
-- 礼包奖励表
local tStandardize_RewardPoolProps_Reward = {}
	-- ===天石英杰礼盒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314180]
	-- ===删除: 3314180,1
	-- ===NewEMoneyLog:1000,1163
	tStandardize_RewardPoolProps_Reward[3314180] = {}
	tStandardize_RewardPoolProps_Reward[3314180]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314180]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314180]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314180]["DeleteItem"][1]["Id"] = 3314180 -- 【库】天石英杰礼盒[属性:8]
	tStandardize_RewardPoolProps_Reward[3314180]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314180]["RewardEMoney"]["Value"] = 10 -- 天石, 【需求】10天石
	tStandardize_RewardPoolProps_Reward[3314180]["RewardEMoney"]["NewEmoneyLog"] = "1000	1163"
	tStandardize_RewardPoolProps_Reward[3314180]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314180]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314180]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314181] = {}
	-- ===天石豪侠礼盒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314181]
	-- ===删除: 3314181,1
	-- ===NewEMoneyLog:1000,1164
	tStandardize_RewardPoolProps_Reward[3314181]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314181]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314181]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314181]["DeleteItem"][1]["Id"] = 3314181 -- 【库】天石豪侠礼盒[属性:8]
	tStandardize_RewardPoolProps_Reward[3314181]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314181]["RewardEMoney"]["Value"] = 100 -- 天石, 【需求】100天石
	tStandardize_RewardPoolProps_Reward[3314181]["RewardEMoney"]["NewEmoneyLog"] = "1000	1164"
	tStandardize_RewardPoolProps_Reward[3314181]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314181]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314181]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314182] = {}
	-- ===天石宗师礼盒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314182]
	-- ===删除: 3314182,1
	-- ===NewEMoneyLog:1000,1165
	tStandardize_RewardPoolProps_Reward[3314182]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314182]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314182]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314182]["DeleteItem"][1]["Id"] = 3314182 -- 【库】天石宗师礼盒[属性:8]
	tStandardize_RewardPoolProps_Reward[3314182]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314182]["RewardEMoney"]["Value"] = 1000 -- 天石, 【需求】1000天石
	tStandardize_RewardPoolProps_Reward[3314182]["RewardEMoney"]["NewEmoneyLog"] = "1000	1165"
	tStandardize_RewardPoolProps_Reward[3314182]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314182]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314182]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314183] = {}
	-- ===天石福运礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314183]
	-- ===删除: 3314183,1
	-- ===NewEMoneyLog:1000,1166
	tStandardize_RewardPoolProps_Reward[3314183]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314183]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314183]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314183]["DeleteItem"][1]["Id"] = 3314183 -- 【库】天石福运礼包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314183]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314183]["RewardEMoney"]["Value"] = 1 -- 天石, 【需求】1-88天石
	tStandardize_RewardPoolProps_Reward[3314183]["RewardEMoney"]["NewEmoneyLog"] = "1000	1166"
	tStandardize_RewardPoolProps_Reward[3314183]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314183]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314183]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314184] = {}
	-- ===天石鸿运礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314184]
	-- ===删除: 3314184,1
	-- ===NewEMoneyLog:1000,1167
	tStandardize_RewardPoolProps_Reward[3314184]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314184]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314184]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314184]["DeleteItem"][1]["Id"] = 3314184 -- 【库】天石鸿运礼包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314184]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314184]["RewardEMoney"]["Value"] = 1 -- 天石, 【需求】8-888天石
	tStandardize_RewardPoolProps_Reward[3314184]["RewardEMoney"]["NewEmoneyLog"] = "1000	1167"
	tStandardize_RewardPoolProps_Reward[3314184]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314184]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314184]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314185] = {}
	-- ===天石极运礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314185]
	-- ===删除: 3314185,1
	-- ===NewEMoneyLog:1000,1168
	tStandardize_RewardPoolProps_Reward[3314185]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314185]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314185]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314185]["DeleteItem"][1]["Id"] = 3314185 -- 【库】天石极运礼包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314185]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314185]["RewardEMoney"]["Value"] = 1 -- 天石, 【需求】88-8888天石
	tStandardize_RewardPoolProps_Reward[3314185]["RewardEMoney"]["NewEmoneyLog"] = "1000	1168"
	tStandardize_RewardPoolProps_Reward[3314185]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314185]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314185]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314186] = {}
	-- ===天石（赠）英杰礼盒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314186]
	-- ===删除: 3314186,1
	-- ===NewEMoneyLog:1000,1169
	tStandardize_RewardPoolProps_Reward[3314186]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314186]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314186]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314186]["DeleteItem"][1]["Id"] = 3314186 -- 【库】天石（赠）英杰礼盒[属性:9]
	tStandardize_RewardPoolProps_Reward[3314186]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_Reward[3314186]["RewardEMoneyMono"]["Value"] = 10 -- 天石（赠）, 【需求】10天石（赠）
	tStandardize_RewardPoolProps_Reward[3314186]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1169"
	tStandardize_RewardPoolProps_Reward[3314186]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314186]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314186]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314187] = {}
	-- ===天石（赠）豪侠礼盒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314187]
	-- ===删除: 3314187,1
	-- ===NewEMoneyLog:1000,1170
	tStandardize_RewardPoolProps_Reward[3314187]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314187]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314187]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314187]["DeleteItem"][1]["Id"] = 3314187 -- 【库】天石（赠）豪侠礼盒[属性:9]
	tStandardize_RewardPoolProps_Reward[3314187]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_Reward[3314187]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tStandardize_RewardPoolProps_Reward[3314187]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1170"
	tStandardize_RewardPoolProps_Reward[3314187]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314187]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314187]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314188] = {}
	-- ===天石（赠）宗师礼盒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314188]
	-- ===删除: 3314188,1
	-- ===NewEMoneyLog:1000,1171
	tStandardize_RewardPoolProps_Reward[3314188]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314188]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314188]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314188]["DeleteItem"][1]["Id"] = 3314188 -- 【库】天石（赠）宗师礼盒[属性:9]
	tStandardize_RewardPoolProps_Reward[3314188]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_Reward[3314188]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tStandardize_RewardPoolProps_Reward[3314188]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1171"
	tStandardize_RewardPoolProps_Reward[3314188]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314188]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314188]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314189] = {}
	-- ===天石（赠）福运礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314189]
	-- ===删除: 3314189,1
	-- ===NewEMoneyLog:1000,1172
	tStandardize_RewardPoolProps_Reward[3314189]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314189]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314189]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314189]["DeleteItem"][1]["Id"] = 3314189 -- 【库】天石（赠）福运礼包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314189]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_Reward[3314189]["RewardEMoneyMono"]["Value"] = 1 -- 天石（赠）, 【需求】1-88天石（赠）
	tStandardize_RewardPoolProps_Reward[3314189]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1172"
	tStandardize_RewardPoolProps_Reward[3314189]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314189]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314189]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314190] = {}
	-- ===天石（赠）鸿运礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314190]
	-- ===删除: 3314190,1
	-- ===NewEMoneyLog:1000,1173
	tStandardize_RewardPoolProps_Reward[3314190]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314190]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314190]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314190]["DeleteItem"][1]["Id"] = 3314190 -- 【库】天石（赠）鸿运礼包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314190]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_Reward[3314190]["RewardEMoneyMono"]["Value"] = 1 -- 天石（赠）, 【需求】8-888天石（赠）
	tStandardize_RewardPoolProps_Reward[3314190]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1173"
	tStandardize_RewardPoolProps_Reward[3314190]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314190]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314190]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314191] = {}
	-- ===天石（赠）极运礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314191]
	-- ===删除: 3314191,1
	-- ===NewEMoneyLog:1000,1174
	tStandardize_RewardPoolProps_Reward[3314191]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314191]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314191]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314191]["DeleteItem"][1]["Id"] = 3314191 -- 【库】天石（赠）极运礼包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314191]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_Reward[3314191]["RewardEMoneyMono"]["Value"] = 1 -- 天石（赠）, 【需求】88-8888天石（赠）
	tStandardize_RewardPoolProps_Reward[3314191]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1174"
	tStandardize_RewardPoolProps_Reward[3314191]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314191]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314191]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314192] = {}
	-- ===安居乐业财宝箱
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314192]
	-- ===删除: 3314192,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314192]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314192]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314192]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314192]["DeleteItem"][1]["Id"] = 3314192 -- 【库】安居乐业财宝箱[属性:8]
	tStandardize_RewardPoolProps_Reward[3314192]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314192]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10万银两
	tStandardize_RewardPoolProps_Reward[3314192]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314192]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314192]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314193] = {}
	-- ===腰缠万贯财宝箱
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314193]
	-- ===删除: 3314193,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314193]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314193]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314193]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314193]["DeleteItem"][1]["Id"] = 3314193 -- 【库】腰缠万贯财宝箱[属性:8]
	tStandardize_RewardPoolProps_Reward[3314193]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314193]["RewardMoney"]["Value"] = 1000000 -- 金币, 【需求】100万银两
	tStandardize_RewardPoolProps_Reward[3314193]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314193]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314193]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314194] = {}
	-- ===金玉满堂财宝箱
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314194]
	-- ===删除: 3314194,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314194]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314194]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314194]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314194]["DeleteItem"][1]["Id"] = 3314194 -- 【库】金玉满堂财宝箱[属性:8]
	tStandardize_RewardPoolProps_Reward[3314194]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314194]["RewardMoney"]["Value"] = 10000000 -- 金币, 【需求】1000万银两
	tStandardize_RewardPoolProps_Reward[3314194]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314194]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314194]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314195] = {}
	-- ===富可敌国财宝箱
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314195]
	-- ===删除: 3314195,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314195]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314195]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314195]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314195]["DeleteItem"][1]["Id"] = 3314195 -- 【库】富可敌国财宝箱[属性:8]
	tStandardize_RewardPoolProps_Reward[3314195]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314195]["RewardMoney"]["Value"] = 100000000 -- 金币, 【需求】1亿银两
	tStandardize_RewardPoolProps_Reward[3314195]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314195]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314195]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314196] = {}
	-- ===吉祥如意财富包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314196]
	-- ===删除: 3314196,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314196]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314196]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314196]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314196]["DeleteItem"][1]["Id"] = 3314196 -- 【库】吉祥如意财富包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314196]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314196]["RewardMoney"]["Value"] = 1 -- 金币, 【需求】1-88万银两
	tStandardize_RewardPoolProps_Reward[3314196]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314196]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314196]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314197] = {}
	-- ===吉星高照财富包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314197]
	-- ===删除: 3314197,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314197]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314197]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314197]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314197]["DeleteItem"][1]["Id"] = 3314197 -- 【库】吉星高照财富包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314197]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314197]["RewardMoney"]["Value"] = 1 -- 金币, 【需求】8-888万银两
	tStandardize_RewardPoolProps_Reward[3314197]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314197]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314197]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314198] = {}
	-- ===洪福齐天财富包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314198]
	-- ===删除: 3314198,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314198]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314198]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314198]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314198]["DeleteItem"][1]["Id"] = 3314198 -- 【库】洪福齐天财富包[属性:9]
	tStandardize_RewardPoolProps_Reward[3314198]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_Reward[3314198]["RewardMoney"]["Value"] = 1 -- 金币, 【需求】88-8888万银两
	tStandardize_RewardPoolProps_Reward[3314198]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314198]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314198]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314199] = {}
	-- ===100万爵位勋章
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314199]
	-- ===删除: 3314199,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314199]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314199]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314199]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314199]["DeleteItem"][1]["Id"] = 3314199 -- 【库】100万爵位勋章[属性:8]
	tStandardize_RewardPoolProps_Reward[3314199]["RewardDonate"] = {}
	tStandardize_RewardPoolProps_Reward[3314199]["RewardDonate"]["Value"] = 1000000 -- 爵位贡献, 【需求】100万点爵位贡献度
	tStandardize_RewardPoolProps_Reward[3314199]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314199]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314199]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314200] = {}
	-- ===黄金积分券
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314200]
	-- ===删除: 3314200,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314200]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314200]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314200]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314200]["DeleteItem"][1]["Id"] = 3314200 -- 【库】黄金积分券[属性:9]
	tStandardize_RewardPoolProps_Reward[3314200]["RewardGoldenLeague"] = {}
	tStandardize_RewardPoolProps_Reward[3314200]["RewardGoldenLeague"]["Value"] = 650 -- 黄金联赛积分, 【需求】650点黄金联赛积分
	tStandardize_RewardPoolProps_Reward[3314200]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314200]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314200]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314202] = {}
	-- ===100骑乘积分券
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314202]
	-- ===删除: 3314202,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314202]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314202]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314202]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314202]["DeleteItem"][1]["Id"] = 3314202 -- 【库】100骑乘积分券[属性:8]
	tStandardize_RewardPoolProps_Reward[3314202]["RewardRidingPoint"] = {}
	tStandardize_RewardPoolProps_Reward[3314202]["RewardRidingPoint"]["Value"] = 100 -- 骑马积分, 【需求】100点骑马积分
	tStandardize_RewardPoolProps_Reward[3314202]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314202]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314202]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314203] = {}
	-- ===1000骑乘积分券
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314203]
	-- ===删除: 3314203,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314203]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314203]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314203]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314203]["DeleteItem"][1]["Id"] = 3314203 -- 【库】1000骑乘积分券[属性:8]
	tStandardize_RewardPoolProps_Reward[3314203]["RewardRidingPoint"] = {}
	tStandardize_RewardPoolProps_Reward[3314203]["RewardRidingPoint"]["Value"] = 1000 -- 骑马积分, 【需求】1000点骑马积分
	tStandardize_RewardPoolProps_Reward[3314203]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314203]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314203]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314204] = {}
	-- ===10000骑乘积分券
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314204]
	-- ===删除: 3314204,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314204]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314204]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314204]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314204]["DeleteItem"][1]["Id"] = 3314204 -- 【库】10000骑乘积分券[属性:8]
	tStandardize_RewardPoolProps_Reward[3314204]["RewardRidingPoint"] = {}
	tStandardize_RewardPoolProps_Reward[3314204]["RewardRidingPoint"]["Value"] = 10000 -- 骑马积分, 【需求】10000点骑马积分
	tStandardize_RewardPoolProps_Reward[3314204]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314204]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314204]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314205] = {}
	-- ===秘制聚神丹
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314205]
	-- ===删除: 3314205,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314205]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314205]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314205]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314205]["DeleteItem"][1]["Id"] = 3314205 -- 【库】秘制聚神丹[属性:8]
	tStandardize_RewardPoolProps_Reward[3314205]["RewardExpTime"] = {}
	tStandardize_RewardPoolProps_Reward[3314205]["RewardExpTime"]["Value"] = 60 -- 分钟经验, 【需求】60分钟经验
	tStandardize_RewardPoolProps_Reward[3314205]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tStandardize_RewardPoolProps_Reward[3314205]["RewardExpTime"]["FullValue"] = 30 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tStandardize_RewardPoolProps_Reward[3314205]["RewardExpTime"]["FullLog"] = "0,0,3314205,1,12001700,2,6,30"
	tStandardize_RewardPoolProps_Reward[3314205]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314205]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314205]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314206] = {}
	-- ===化气聚神丹
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314206]
	-- ===删除: 3314206,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314206]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314206]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314206]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314206]["DeleteItem"][1]["Id"] = 3314206 -- 【库】化气聚神丹[属性:8]
	tStandardize_RewardPoolProps_Reward[3314206]["RewardExpTime"] = {}
	tStandardize_RewardPoolProps_Reward[3314206]["RewardExpTime"]["Value"] = 300 -- 分钟经验, 【需求】300分钟经验
	tStandardize_RewardPoolProps_Reward[3314206]["RewardExpTime"]["FullIndex"] = "RewardStrengthValue"
	tStandardize_RewardPoolProps_Reward[3314206]["RewardExpTime"]["FullValue"] = 100 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tStandardize_RewardPoolProps_Reward[3314206]["RewardExpTime"]["FullLog"] = "0,0,0,0,12001700,2,12,100"
	-- 【stc（208,35）】1天（零点重置）1个, 最多可获得:（10）
	tStandardize_RewardPoolProps_Reward[3314206]["EventType"] = 208
	tStandardize_RewardPoolProps_Reward[3314206]["DataType"] = 35
	tStandardize_RewardPoolProps_Reward[3314206]["RewardDelay"] = 1
	tStandardize_RewardPoolProps_Reward[3314206]["RewardTimeType"] = 4
	tStandardize_RewardPoolProps_Reward[3314206]["RewardData"] = 10
	tStandardize_RewardPoolProps_Reward[3314206]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314206]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314206]["RewardEffect"]["Effect"] = "angelwing"
	tStandardize_RewardPoolProps_Reward[3314206]["HaveReceive"] = tStandardize_RewardPoolProps_Text["LimitUse"]


	tStandardize_RewardPoolProps_Reward[3314207] = {}
	-- ===虎骨气力酒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314207]
	-- ===删除: 3314207,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314207]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314207]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314207]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314207]["DeleteItem"][1]["Id"] = 3314207 -- 【库】虎骨气力酒[属性:8]
	tStandardize_RewardPoolProps_Reward[3314207]["RewardStrengthValue"] = {}
	tStandardize_RewardPoolProps_Reward[3314207]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值
	tStandardize_RewardPoolProps_Reward[3314207]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314207]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314207]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314208] = {}
	-- ===龙涎气力酒
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314208]
	-- ===删除: 3314208,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314208]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314208]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314208]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314208]["DeleteItem"][1]["Id"] = 3314208 -- 【库】龙涎气力酒[属性:8]
	tStandardize_RewardPoolProps_Reward[3314208]["RewardStrengthValue"] = {}
	tStandardize_RewardPoolProps_Reward[3314208]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tStandardize_RewardPoolProps_Reward[3314208]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314208]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314208]["RewardEffect"]["Effect"] = "angelwing"

	tStandardize_RewardPoolProps_Reward[723340] = {}
	-- ===奇门秘籍
	-- ===索引:tStandardize_RewardPoolProps_Reward[723340]
	-- ===删除: 723340,1
	-- ===
	tStandardize_RewardPoolProps_Reward[723340]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[723340]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[723340]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[723340]["DeleteItem"][1]["Id"] = 723340 -- 【库】奇门秘籍[属性:0]
	tStandardize_RewardPoolProps_Reward[723340]["RewardCultivation"] = {}
	tStandardize_RewardPoolProps_Reward[723340]["RewardCultivation"]["Value"] = 5 -- 修行值, 【需求】5点修行值
	tStandardize_RewardPoolProps_Reward[723340]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[723340]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[723340]["RewardEffect"]["Effect"] = "angelwing"

	tStandardize_RewardPoolProps_Reward[723341] = {}
	-- ===玄灵秘录
	-- ===索引:tStandardize_RewardPoolProps_Reward[723341]
	-- ===删除: 723341,1
	-- ===
	tStandardize_RewardPoolProps_Reward[723341]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[723341]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[723341]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[723341]["DeleteItem"][1]["Id"] = 723341 -- 【库】玄灵秘录[属性:0]
	tStandardize_RewardPoolProps_Reward[723341]["RewardCultivation"] = {}
	tStandardize_RewardPoolProps_Reward[723341]["RewardCultivation"]["Value"] = 20 -- 修行值, 【需求】20点修行值
	tStandardize_RewardPoolProps_Reward[723341]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[723341]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[723341]["RewardEffect"]["Effect"] = "angelwing"

	tStandardize_RewardPoolProps_Reward[723342] = {}
	-- ===造化天书
	-- ===索引:tStandardize_RewardPoolProps_Reward[723342]
	-- ===删除: 723342,1
	-- ===
	tStandardize_RewardPoolProps_Reward[723342]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[723342]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[723342]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[723342]["DeleteItem"][1]["Id"] = 723342 -- 【库】造化天书[属性:0]
	tStandardize_RewardPoolProps_Reward[723342]["RewardCultivation"] = {}
	tStandardize_RewardPoolProps_Reward[723342]["RewardCultivation"]["Value"] = 500 -- 修行值, 【需求】500点修行值
	tStandardize_RewardPoolProps_Reward[723342]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[723342]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[723342]["RewardEffect"]["Effect"] = "angelwing"


	-- ===奇门秘籍
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314907]
	-- ===删除: 3314907,1
	tStandardize_RewardPoolProps_Reward[3314907] = {}
	tStandardize_RewardPoolProps_Reward[3314907]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314907]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314907]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314907]["DeleteItem"][1]["Id"] = 3314907 -- 【库】奇门秘籍[属性:0]
	tStandardize_RewardPoolProps_Reward[3314907]["RewardCultivation"] = {}
	tStandardize_RewardPoolProps_Reward[3314907]["RewardCultivation"]["Value"] = 5 -- 修行值, 【需求】5点修行值
	tStandardize_RewardPoolProps_Reward[3314907]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314907]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314907]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314908] = {}
	-- ===玄灵秘录
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314908]
	-- ===删除: 3314908,1
	tStandardize_RewardPoolProps_Reward[3314908]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314908]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314908]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314908]["DeleteItem"][1]["Id"] = 3314908 -- 【库】玄灵秘录[属性:0]
	tStandardize_RewardPoolProps_Reward[3314908]["RewardCultivation"] = {}
	tStandardize_RewardPoolProps_Reward[3314908]["RewardCultivation"]["Value"] = 20 -- 修行值, 【需求】20点修行值
	tStandardize_RewardPoolProps_Reward[3314908]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314908]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314908]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314909] = {}
	-- ===造化天书
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314909]
	-- ===删除: 3314909,1
	tStandardize_RewardPoolProps_Reward[3314909]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314909]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314909]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314909]["DeleteItem"][1]["Id"] = 3314909 -- 【库】造化天书[属性:0]
	tStandardize_RewardPoolProps_Reward[3314909]["RewardCultivation"] = {}
	tStandardize_RewardPoolProps_Reward[3314909]["RewardCultivation"]["Value"] = 500 -- 修行值, 【需求】500点修行值
	tStandardize_RewardPoolProps_Reward[3314909]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314909]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314909]["RewardEffect"]["Effect"] = "angelwing"

	tStandardize_RewardPoolProps_Reward[3314209] = {}
	-- ===鸿钧宝典
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314209]
	-- ===删除: 3314209,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314209]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314209]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314209]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314209]["DeleteItem"][1]["Id"] = 3314209 -- 【库】鸿钧宝典[属性:8]
	tStandardize_RewardPoolProps_Reward[3314209]["RewardCultivation"] = {}
	tStandardize_RewardPoolProps_Reward[3314209]["RewardCultivation"]["Value"] = 5000 -- 修行值, 【需求】5000点修行值
	tStandardize_RewardPoolProps_Reward[3314209]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314209]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314209]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314911] = {}
	-- ===真气丹
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314911]
	-- ===删除: 3314911,1
	tStandardize_RewardPoolProps_Reward[3314911]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314911]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314911]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314911]["DeleteItem"][1]["Id"] = 3314911 -- 【库】真气丹[属性:9]
	tStandardize_RewardPoolProps_Reward[3314911]["RewardZhenQi"] = {}
	tStandardize_RewardPoolProps_Reward[3314911]["RewardZhenQi"]["Value"] = 1 -- 真气, 【需求】一道真气
	tStandardize_RewardPoolProps_Reward[3314911]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314911]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314911]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314912] = {}
	-- ===修炼丹
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314912]
	-- ===删除: 3314912,1
	tStandardize_RewardPoolProps_Reward[3314912]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314912]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314912]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314912]["DeleteItem"][1]["Id"] = 3314912 -- 【库】修炼丹[属性:9]
	tStandardize_RewardPoolProps_Reward[3314912]["RewardFreePractNum"] = {}
	tStandardize_RewardPoolProps_Reward[3314912]["RewardFreePractNum"]["Value"] = 1 -- 免费修炼次数, 【需求】一次免费修炼次数
	tStandardize_RewardPoolProps_Reward[3314912]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314912]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314912]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314210] = {}
	-- ===杨枝甘露
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314210]
	-- ===删除: 3314210,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314210]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314210]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314210]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314210]["DeleteItem"][1]["Id"] = 3314210 -- 【库】杨枝甘露[属性:8]
	tStandardize_RewardPoolProps_Reward[3314210]["RewardRepairValue"] = {}
	tStandardize_RewardPoolProps_Reward[3314210]["RewardRepairValue"]["Value"] = 10 -- 修为值, 【需求】10点修为值
	tStandardize_RewardPoolProps_Reward[3314210]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314210]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314210]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314211] = {}
	-- ===九花玉露
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314211]
	-- ===删除: 3314211,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314211]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314211]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314211]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314211]["DeleteItem"][1]["Id"] = 3314211 -- 【库】九花玉露[属性:8]
	tStandardize_RewardPoolProps_Reward[3314211]["RewardRepairValue"] = {}
	tStandardize_RewardPoolProps_Reward[3314211]["RewardRepairValue"]["Value"] = 100 -- 修为值, 【需求】100点修为值
	tStandardize_RewardPoolProps_Reward[3314211]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314211]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314211]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314212] = {}
	-- ===雪参灵露
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314212]
	-- ===删除: 3314212,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314212]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314212]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314212]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314212]["DeleteItem"][1]["Id"] = 3314212 -- 【库】雪参灵露[属性:8]
	tStandardize_RewardPoolProps_Reward[3314212]["RewardRepairValue"] = {}
	tStandardize_RewardPoolProps_Reward[3314212]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】1000点修为值
	tStandardize_RewardPoolProps_Reward[3314212]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314212]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314212]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314213] = {}
	-- ===宝莲仙露
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314213]
	-- ===删除: 3314213,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314213]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314213]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314213]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314213]["DeleteItem"][1]["Id"] = 3314213 -- 【库】宝莲仙露[属性:8]
	tStandardize_RewardPoolProps_Reward[3314213]["RewardRepairValue"] = {}
	tStandardize_RewardPoolProps_Reward[3314213]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】10000点修为值
	tStandardize_RewardPoolProps_Reward[3314213]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314213]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314213]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314214] = {}
	-- === +1马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314214][1]
	-- ===删除: 3314214,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314214][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314214][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1]["DeleteItem"][1]["Id"] = 3314214 -- 【库】 +1马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314214][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314214][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314214][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 1" -- （追加+1）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314214][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314214][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150" -- （追加+1）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314214][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314214][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 1 0 0 0 0 0 0 255" -- （追加+1）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314214][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314215] = {}
	-- === +2马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314215][1]
	-- ===删除: 3314215,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314215][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314215][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1]["DeleteItem"][1]["Id"] = 3314215 -- 【库】 +2马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314215][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314215][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314215][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 2" -- （追加+2）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314215][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314215][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 2 0 0 0 0 0 0 150" -- （追加+2）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314215][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314215][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 2 0 0 0 0 0 0 255" -- （追加+2）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314215][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314216] = {}
	-- === +3马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314216][1]
	-- ===删除: 3314216,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314216][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314216][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1]["DeleteItem"][1]["Id"] = 3314216 -- 【库】 +3马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314216][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314216][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314216][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 3" -- （追加+3）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314216][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314216][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150" -- （追加+3）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314216][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314216][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 3 0 0 0 0 0 0 255" -- （追加+3）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314216][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314217] = {}
	-- === +4马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314217][1]
	-- ===删除: 3314217,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314217][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314217][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1]["DeleteItem"][1]["Id"] = 3314217 -- 【库】 +4马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314217][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314217][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314217][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 4" -- （追加+4）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314217][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314217][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150" -- （追加+4）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314217][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314217][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 4 0 0 0 0 0 0 255" -- （追加+4）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314217][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314218] = {}
	-- === +5马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314218][1]
	-- ===删除: 3314218,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314218][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314218][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1]["DeleteItem"][1]["Id"] = 3314218 -- 【库】 +5马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314218][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314218][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314218][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 5" -- （追加+5）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314218][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314218][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 5 0 0 0 0 0 0 150" -- （追加+5）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314218][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314218][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 5 0 0 0 0 0 0 255" -- （追加+5）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314218][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314219] = {}
	-- === +6马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314219][1]
	-- ===删除: 3314219,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314219][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314219][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1]["DeleteItem"][1]["Id"] = 3314219 -- 【库】 +6马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314219][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314219][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314219][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 6" -- （追加+6）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314219][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314219][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150" -- （追加+6）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314219][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314219][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 6 0 0 0 0 0 0 255" -- （追加+6）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314219][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314220] = {}
	-- === +7马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314220][1]
	-- ===删除: 3314220,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314220][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314220][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1]["DeleteItem"][1]["Id"] = 3314220 -- 【库】 +7马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314220][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314220][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314220][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 7" -- （追加+7）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314220][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314220][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 7 0 0 0 0 0 0 150" -- （追加+7）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314220][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314220][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255" -- （追加+7）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314220][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314221] = {}
	-- === +8马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314221][1]
	-- ===删除: 3314221,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314221][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314221][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1]["DeleteItem"][1]["Id"] = 3314221 -- 【库】 +8马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314221][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314221][1]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314221][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 16750080 255 150 0 8" -- （追加+8）枣红马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314221][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314221][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 65430 0 255 0 8 0 0 0 0 0 0 150" -- （追加+8）雪脂马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314221][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314221][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9830655 150 0 0 8 0 0 0 0 0 0 255" -- （追加+8）黑颈马(普通马)*1
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314221][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314222] = {}
	-- === +6稀有马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314222][1]
	-- ===删除: 3314222,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314222][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314222][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1]["DeleteItem"][1]["Id"] = 3314222 -- 【库】 +6稀有马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314222][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314222][1]["LogId"] = 12001700
	-- 熔岩马 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】熔岩马
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 12289993 187 135 0 6 0 0 0 0 0 0 201" -- （追加+6）熔岩马(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碧湖驹 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】碧湖驹
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 4079544 62 63 0 6 0 0 0 0 0 0 184" -- （追加+6）碧湖驹(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 烈火马 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】烈火马
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9739401 148 156 0 6 0 0 0 0 0 0 137" -- （追加+6）烈火马(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 小奶牛 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][1][4] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】小奶牛
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9668218 147 134 0 6 0 0 0 0 0 0 122" -- （追加+6）小奶牛(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 条纹马 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][1][5] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】条纹马
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9316142 142 39 0 6 0 0 0 0 0 0 46" -- （追加+6）条纹马(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314223] = {}
	-- === +8稀有马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314223][1]
	-- ===删除: 3314223,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314223][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314223][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1]["DeleteItem"][1]["Id"] = 3314223 -- 【库】 +8稀有马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314223][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314223][1]["LogId"] = 12001700
	-- 熔岩马 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】熔岩马
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 12289993 187 135 0 8 0 0 0 0 0 0 201" -- （追加+8）熔岩马(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碧湖驹 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】碧湖驹
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 4079544 62 63 0 8 0 0 0 0 0 0 184" -- （追加+8）碧湖驹(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 烈火马 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】烈火马
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9739401 148 156 0 8 0 0 0 0 0 0 137" -- （追加+8）烈火马(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 小奶牛 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][1][4] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】小奶牛
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9668218 147 134 0 8 0 0 0 0 0 0 122" -- （追加+8）小奶牛(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 条纹马 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][1][5] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】条纹马
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 9316142 142 39 0 8 0 0 0 0 0 0 46" -- （追加+8）条纹马(稀有马)*1
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314214][2] = {}
	-- === +1马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314214][2]
	-- ===删除: 3314214,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314214][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314214][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2]["DeleteItem"][1]["Id"] = 3314214 -- 【库】 +1马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314214][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314214][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314214][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 1" -- （追加+1）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314214][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314214][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 1 0 0 0 0 0 0 150" -- （追加+1）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314214][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314214][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 1 0 0 0 0 0 0 255" -- （追加+1）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314214][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314215][2] = {}
	-- === +2马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314215][2]
	-- ===删除: 3314215,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314215][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314215][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2]["DeleteItem"][1]["Id"] = 3314215 -- 【库】 +2马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314215][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314215][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314215][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 2" -- （追加+2）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314215][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314215][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 2 0 0 0 0 0 0 150" -- （追加+2）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314215][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314215][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 2 0 0 0 0 0 0 255" -- （追加+2）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314215][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314216][2] = {}
	-- === +3马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314216][2]
	-- ===删除: 3314216,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314216][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314216][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2]["DeleteItem"][1]["Id"] = 3314216 -- 【库】 +3马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314216][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314216][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314216][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 3" -- （追加+3）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314216][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314216][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150" -- （追加+3）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314216][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314216][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 3 0 0 0 0 0 0 255" -- （追加+3）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314216][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314217][2] = {}
	-- === +4马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314217][2]
	-- ===删除: 3314217,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314217][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314217][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2]["DeleteItem"][1]["Id"] = 3314217 -- 【库】 +4马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314217][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314217][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314217][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 4" -- （追加+4）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314217][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314217][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 4 0 0 0 0 0 0 150" -- （追加+4）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314217][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314217][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 4 0 0 0 0 0 0 255" -- （追加+4）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314217][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314218][2] = {}
	-- === +5马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314218][2]
	-- ===删除: 3314218,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314218][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314218][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2]["DeleteItem"][1]["Id"] = 3314218 -- 【库】 +5马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314218][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314218][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314218][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 5" -- （追加+5）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314218][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314218][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 5 0 0 0 0 0 0 150" -- （追加+5）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314218][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314218][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 5 0 0 0 0 0 0 255" -- （追加+5）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314218][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314219][2] = {}
	-- === +6马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314219][2]
	-- ===删除: 3314219,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314219][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314219][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2]["DeleteItem"][1]["Id"] = 3314219 -- 【库】 +6马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314219][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314219][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314219][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 6" -- （追加+6）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314219][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314219][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 6 0 0 0 0 0 0 150" -- （追加+6）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314219][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314219][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 6 0 0 0 0 0 0 255" -- （追加+6）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314219][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314220][2] = {}
	-- === +7马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314220][2]
	-- ===删除: 3314220,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314220][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314220][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2]["DeleteItem"][1]["Id"] = 3314220 -- 【库】 +7马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314220][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314220][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314220][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 7" -- （追加+7）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314220][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314220][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 7 0 0 0 0 0 0 150" -- （追加+7）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314220][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314220][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 7 0 0 0 0 0 0 255" -- （追加+7）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314220][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314221][2] = {}
	-- === +8马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314221][2]
	-- ===删除: 3314221,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314221][2]["ItemChanceSum"] = 9000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314221][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2]["DeleteItem"][1]["Id"] = 3314221 -- 【库】 +8马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314221][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314221][2]["LogId"] = 12001700
	-- 枣红马 - 30%
	tStandardize_RewardPoolProps_Reward[3314221][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】枣红马
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 16750080 255 150 0 8" -- （追加+8）枣红马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314221][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 雪脂马 - 30%
	tStandardize_RewardPoolProps_Reward[3314221][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 8 0 0 0 0 0 0 150" -- （追加+8）雪脂马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314221][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 黑颈马 - 30%
	tStandardize_RewardPoolProps_Reward[3314221][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["ItemChance"] = 3000
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】黑颈马
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9830655 150 0 0 8 0 0 0 0 0 0 255" -- （追加+8）黑颈马(普通马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314221][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314222][2] = {}
	-- === +6稀有马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314222][2]
	-- ===删除: 3314222,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314222][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314222][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2]["DeleteItem"][1]["Id"] = 3314222 -- 【库】 +6稀有马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314222][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][2]["LogId"] = 12001700
	-- 熔岩马 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】熔岩马
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 12289993 187 135 0 6 0 0 0 0 0 0 201" -- （追加+6）熔岩马(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碧湖驹 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】碧湖驹
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 4079544 62 63 0 6 0 0 0 0 0 0 184" -- （追加+6）碧湖驹(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 烈火马 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】烈火马
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9739401 148 156 0 6 0 0 0 0 0 0 137" -- （追加+6）烈火马(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 小奶牛 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][2][4] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】小奶牛
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9668218 147 134 0 6 0 0 0 0 0 0 122" -- （追加+6）小奶牛(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 条纹马 - 20%
	tStandardize_RewardPoolProps_Reward[3314222][2][5] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】条纹马
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9316142 142 39 0 6 0 0 0 0 0 0 46" -- （追加+6）条纹马(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314222][2][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314223][2] = {}
	-- === +8稀有马礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314223][2]
	-- ===删除: 3314223,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314223][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314223][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2]["DeleteItem"][1]["Id"] = 3314223 -- 【库】 +8稀有马礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314223][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][2]["LogId"] = 12001700
	-- 熔岩马 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】熔岩马
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 12289993 187 135 0 8 0 0 0 0 0 0 201" -- （追加+8）熔岩马(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碧湖驹 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】碧湖驹
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 4079544 62 63 0 8 0 0 0 0 0 0 184" -- （追加+8）碧湖驹(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 烈火马 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】烈火马
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9739401 148 156 0 8 0 0 0 0 0 0 137" -- （追加+8）烈火马(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 小奶牛 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][2][4] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】小奶牛
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9668218 147 134 0 8 0 0 0 0 0 0 122" -- （追加+8）小奶牛(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 条纹马 - 20%
	tStandardize_RewardPoolProps_Reward[3314223][2][5] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["ItemChance"] = 2000
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RewardItem"][1]["Id"] = 300000 -- 骏马[300000][属性:0][叠加:0][金币:0], 【表格】条纹马
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 9316142 142 39 0 8 0 0 0 0 0 0 46" -- （追加+8）条纹马(稀有马)（赠）*1
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314223][2][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314224] = {}
	-- ===良品宝石礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314224][1]
	-- ===删除: 3314224,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314224][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314224][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1]["DeleteItem"][1]["Id"] = 3314224 -- 【库】良品宝石礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314224][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314224][1]["LogId"] = 12001700
	-- 良品凤吟 - 10%
	tStandardize_RewardPoolProps_Reward[3314224][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RewardItem"][1]["Id"] = 700002 -- 良品凤吟宝石[700002][属性:0][叠加:0][金币:0], 【表格】良品凤吟
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 良品凤吟宝石*1
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品龙恨 - 10%
	tStandardize_RewardPoolProps_Reward[3314224][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RewardItem"][1]["Id"] = 700012 -- 良品龙恨宝石[700012][属性:0][叠加:0][金币:0], 【表格】良品龙恨
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 良品龙恨宝石*1
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品惊鸿 - 16%
	tStandardize_RewardPoolProps_Reward[3314224][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RewardItem"][1]["Id"] = 700022 -- 良品惊鸿宝石[700022][属性:0][叠加:0][金币:0], 【表格】良品惊鸿
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 良品惊鸿宝石*1
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品青虹 - 16%
	tStandardize_RewardPoolProps_Reward[3314224][1][4] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RewardItem"][1]["Id"] = 700032 -- 良品青虹宝石[700032][属性:0][叠加:0][金币:0], 【表格】良品青虹
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 良品青虹宝石*1
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品金鳞 - 16%
	tStandardize_RewardPoolProps_Reward[3314224][1][5] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RewardItem"][1]["Id"] = 700042 -- 良品金麟宝石[700042][属性:0][叠加:0][金币:0], 【表格】良品金鳞
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 良品金麟宝石*1
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品紫霞 - 16%
	tStandardize_RewardPoolProps_Reward[3314224][1][6] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RewardItem"][1]["Id"] = 700052 -- 良品紫霞宝石[700052][属性:0][叠加:0][金币:0], 【表格】良品紫霞
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 良品紫霞宝石*1
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品明月 - 16%
	tStandardize_RewardPoolProps_Reward[3314224][1][7] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RewardItem"][1]["Id"] = 700062 -- 良品明月宝石[700062][属性:0][叠加:0][金币:0], 【表格】良品明月
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 良品明月宝石*1
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314224][2] = {}
	-- ===良品宝石礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314224][2]
	-- ===删除: 3314224,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314224][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314224][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2]["DeleteItem"][1]["Id"] = 3314224 -- 【库】良品宝石礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314224][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2]["LogId"] = 12001700
	-- 良品凤吟（赠） - 10%
	tStandardize_RewardPoolProps_Reward[3314224][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RewardItem"][1]["Id"] = 700002 -- 良品凤吟宝石[700002][属性:0][叠加:0][金币:0], 【表格】良品凤吟（赠）
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品凤吟宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品龙恨（赠） - 10%
	tStandardize_RewardPoolProps_Reward[3314224][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RewardItem"][1]["Id"] = 700012 -- 良品龙恨宝石[700012][属性:0][叠加:0][金币:0], 【表格】良品龙恨（赠）
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品龙恨宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品惊鸿（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314224][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RewardItem"][1]["Id"] = 700022 -- 良品惊鸿宝石[700022][属性:0][叠加:0][金币:0], 【表格】良品惊鸿（赠）
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品惊鸿宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品青虹（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314224][2][4] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RewardItem"][1]["Id"] = 700032 -- 良品青虹宝石[700032][属性:0][叠加:0][金币:0], 【表格】良品青虹（赠）
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品青虹宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品金鳞（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314224][2][5] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RewardItem"][1]["Id"] = 700042 -- 良品金麟宝石[700042][属性:0][叠加:0][金币:0], 【表格】良品金鳞（赠）
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品金麟宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品紫霞（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314224][2][6] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RewardItem"][1]["Id"] = 700052 -- 良品紫霞宝石[700052][属性:0][叠加:0][金币:0], 【表格】良品紫霞（赠）
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品紫霞宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 良品明月（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314224][2][7] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RewardItem"][1]["Id"] = 700062 -- 良品明月宝石[700062][属性:0][叠加:0][金币:0], 【表格】良品明月（赠）
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 良品明月宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314224][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314225] = {}
	-- ===优质宝石礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314225][1]
	-- ===删除: 3314225,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314225][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314225][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1]["DeleteItem"][1]["Id"] = 3314225 -- 【库】优质宝石礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314225][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314225][1]["LogId"] = 12001700
	-- 优质凤吟 - 10%
	tStandardize_RewardPoolProps_Reward[3314225][1][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RewardItem"][1]["Id"] = 700003 -- 优质凤吟宝石[700003][属性:0][叠加:0][金币:0], 【表格】优质凤吟
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 优质凤吟宝石*1
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质龙恨 - 10%
	tStandardize_RewardPoolProps_Reward[3314225][1][2] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RewardItem"][1]["Id"] = 700013 -- 优质龙恨宝石[700013][属性:0][叠加:0][金币:0], 【表格】优质龙恨
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 优质龙恨宝石*1
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质惊鸿 - 16%
	tStandardize_RewardPoolProps_Reward[3314225][1][3] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RewardItem"][1]["Id"] = 700023 -- 优质惊鸿宝石[700023][属性:0][叠加:0][金币:0], 【表格】优质惊鸿
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 优质惊鸿宝石*1
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质青虹 - 16%
	tStandardize_RewardPoolProps_Reward[3314225][1][4] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RewardItem"][1]["Id"] = 700033 -- 优质青虹宝石[700033][属性:0][叠加:0][金币:0], 【表格】优质青虹
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 优质青虹宝石*1
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质金鳞 - 16%
	tStandardize_RewardPoolProps_Reward[3314225][1][5] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RewardItem"][1]["Id"] = 700043 -- 优质金麟宝石[700043][属性:0][叠加:0][金币:0], 【表格】优质金鳞
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 优质金麟宝石*1
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质紫霞 - 16%
	tStandardize_RewardPoolProps_Reward[3314225][1][6] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RewardItem"][1]["Id"] = 700053 -- 优质紫霞宝石[700053][属性:0][叠加:0][金币:0], 【表格】优质紫霞
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 优质紫霞宝石*1
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质明月 - 16%
	tStandardize_RewardPoolProps_Reward[3314225][1][7] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RewardItem"][1]["Id"] = 700063 -- 优质明月宝石[700063][属性:0][叠加:0][金币:0], 【表格】优质明月
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 优质明月宝石*1
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314225][2] = {}
	-- ===优质宝石礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314225][2]
	-- ===删除: 3314225,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314225][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314225][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2]["DeleteItem"][1]["Id"] = 3314225 -- 【库】优质宝石礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314225][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2]["LogId"] = 12001700
	-- 优质凤吟（赠） - 10%
	tStandardize_RewardPoolProps_Reward[3314225][2][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RewardItem"][1]["Id"] = 700003 -- 优质凤吟宝石[700003][属性:0][叠加:0][金币:0], 【表格】优质凤吟（赠）
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质凤吟宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质龙恨（赠） - 10%
	tStandardize_RewardPoolProps_Reward[3314225][2][2] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RewardItem"][1]["Id"] = 700013 -- 优质龙恨宝石[700013][属性:0][叠加:0][金币:0], 【表格】优质龙恨（赠）
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质龙恨宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质惊鸿（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314225][2][3] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RewardItem"][1]["Id"] = 700023 -- 优质惊鸿宝石[700023][属性:0][叠加:0][金币:0], 【表格】优质惊鸿（赠）
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质惊鸿宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质青虹（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314225][2][4] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RewardItem"][1]["Id"] = 700033 -- 优质青虹宝石[700033][属性:0][叠加:0][金币:0], 【表格】优质青虹（赠）
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质青虹宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质金鳞（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314225][2][5] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RewardItem"][1]["Id"] = 700043 -- 优质金麟宝石[700043][属性:0][叠加:0][金币:0], 【表格】优质金鳞（赠）
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质金麟宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质紫霞（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314225][2][6] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RewardItem"][1]["Id"] = 700053 -- 优质紫霞宝石[700053][属性:0][叠加:0][金币:0], 【表格】优质紫霞（赠）
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质紫霞宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 优质明月（赠） - 16%
	tStandardize_RewardPoolProps_Reward[3314225][2][7] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["ItemChance"] = 1600
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RewardItem"][1]["Id"] = 700063 -- 优质明月宝石[700063][属性:0][叠加:0][金币:0], 【表格】优质明月（赠）
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 优质明月宝石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314225][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314226] = {}
	-- ===七阶武器神魂礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314226][1]
	-- ===删除: 3314226,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314226][1] = {}
	tStandardize_RewardPoolProps_Reward[3314226][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314226][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314226][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314226][1]["DeleteItem"][1]["Id"] = 3314226 -- 【库】七阶武器神魂礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314226][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314226][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314226][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314226][1]["RewardItem"][1]["Id"] = 800020 -- 鬼狱狂刀[800020][属性:0][叠加:0][金币:0], 【表格】武器神魂
	tStandardize_RewardPoolProps_Reward[3314226][1]["RewardItem"][1]["Attr"] = "0 1" -- 鬼狱狂刀*1
	tStandardize_RewardPoolProps_Reward[3314226][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314226][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314226][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314226][2] = {}
	-- ===七阶武器神魂礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314226][2]
	-- ===删除: 3314226,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314226][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314226][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314226][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314226][2]["DeleteItem"][1]["Id"] = 3314226 -- 【库】七阶武器神魂礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314226][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314226][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314226][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314226][2]["RewardItem"][1]["Id"] = 800020 -- 鬼狱狂刀[800020][属性:0][叠加:0][金币:0], 【表格】武器神魂
	tStandardize_RewardPoolProps_Reward[3314226][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 鬼狱狂刀（赠）*1
	tStandardize_RewardPoolProps_Reward[3314226][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314226][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314226][2]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314227] = {}
	-- ===七阶防具神魂礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314227][1]
	-- ===删除: 3314227,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314227][1] = {}
	tStandardize_RewardPoolProps_Reward[3314227][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314227][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314227][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314227][1]["DeleteItem"][1]["Id"] = 3314227 -- 【库】七阶防具神魂礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314227][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314227][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314227][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314227][1]["RewardItem"][1]["Id"] = 820073 -- 摧月魔冠[820073][属性:0][叠加:0][金币:0], 【表格】防具神魂
	tStandardize_RewardPoolProps_Reward[3314227][1]["RewardItem"][1]["Attr"] = "0 1" -- 摧月魔冠*1
	tStandardize_RewardPoolProps_Reward[3314227][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314227][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314227][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314227][2] = {}
	-- ===七阶防具神魂礼包
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314227][2]
	-- ===删除: 3314227,1
	-- ===
	tStandardize_RewardPoolProps_Reward[3314227][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314227][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314227][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314227][2]["DeleteItem"][1]["Id"] = 3314227 -- 【库】七阶防具神魂礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3314227][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314227][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314227][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314227][2]["RewardItem"][1]["Id"] = 820073 -- 摧月魔冠[820073][属性:0][叠加:0][金币:0], 【表格】防具神魂
	tStandardize_RewardPoolProps_Reward[3314227][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 摧月魔冠（赠）*1
	tStandardize_RewardPoolProps_Reward[3314227][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314227][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314227][2]["RewardEffect"]["Effect"] = "angelwing"

	-- ===七阶武器神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315497][1]
	-- ===删除: 3315497,15
	-- ===
	tStandardize_RewardPoolProps_Reward[3315497] = {}
	tStandardize_RewardPoolProps_Reward[3315497][1] = {}
	tStandardize_RewardPoolProps_Reward[3315497][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315497][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315497][1]["DeleteItem"][1]["Id"] = 3315497 -- 【库】七阶武器神魂碎片[属性:8]
	tStandardize_RewardPoolProps_Reward[3315497][1]["DeleteItem"][1]["ItemNum"] = 15
	tStandardize_RewardPoolProps_Reward[3315497][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3315497][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315497][1]["RewardItem"][1]["Id"] = 3004247 -- 七阶武器神魂礼包[3004247][属性:9][叠加:10000][金币:0], 【表格】七阶武器神魂礼包
	tStandardize_RewardPoolProps_Reward[3315497][1]["RewardItem"][1]["Attr"] = "0 1" -- 七阶武器神魂礼包*1
	tStandardize_RewardPoolProps_Reward[3315497][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315497][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3315497][2] = {}
	-- ===七阶武器神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315497][2]
	-- ===删除: 3315497,15
	-- ===
	tStandardize_RewardPoolProps_Reward[3315497][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315497][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315497][2]["DeleteItem"][1]["Id"] = 3315497 -- 【库】七阶武器神魂礼包[属性:8]
	tStandardize_RewardPoolProps_Reward[3315497][2]["DeleteItem"][1]["ItemNum"] = 15
	tStandardize_RewardPoolProps_Reward[3315497][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3315497][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315497][2]["RewardItem"][1]["Id"] = 3006745 -- 七阶武器神魂礼包[3006745][属性:9][叠加:10000][金币:0], 【表格】七阶武器神魂礼包
	tStandardize_RewardPoolProps_Reward[3315497][2]["RewardItem"][1]["Attr"] = "0 1" -- 七阶武器神魂礼包（赠）*1
	tStandardize_RewardPoolProps_Reward[3315497][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315497][2]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3315497][3] = {}
	-- ===七阶武器神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315497][3]
	-- ===
	-- tStandardize_RewardPoolProps_Reward[3315497][3]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315497][3]["Log"] = "0,0,3315497,1,12001700,2,3004247,1"
	tStandardize_RewardPoolProps_Reward[3315497][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315497][3]["RewardItem"][1]["Id"] = 3004247 -- 七阶武器神魂礼盒[3004247][属性:9][叠加:10000][金币:0], 【表格】七阶武器神魂礼包
	tStandardize_RewardPoolProps_Reward[3315497][3]["RewardItem"][1]["Attr"] = "0 1" -- 七阶武器神魂礼盒*1
	tStandardize_RewardPoolProps_Reward[3315497][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315497][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3315497][4] = {}
	-- ===七阶武器神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315497][4]
	-- ===
	-- tStandardize_RewardPoolProps_Reward[3315497][4]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315497][4]["Log"] = "0,0,3315497,1,12001700,2,3006745,1"
	tStandardize_RewardPoolProps_Reward[3315497][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315497][4]["RewardItem"][1]["Id"] = 3006745 -- 七阶武器神魂礼盒[3006745][属性:9][叠加:10000][金币:0], 【表格】七阶武器神魂礼包
	tStandardize_RewardPoolProps_Reward[3315497][4]["RewardItem"][1]["Attr"] = "0 1" -- 七阶武器神魂礼盒（赠）*1
	tStandardize_RewardPoolProps_Reward[3315497][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315497][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315497][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3315498] = {}
	-- ===七阶防具神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315498][1]
	-- ===删除: 3315498,15
	-- ===
	tStandardize_RewardPoolProps_Reward[3315498][1] = {}
	tStandardize_RewardPoolProps_Reward[3315498][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315498][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315498][1]["DeleteItem"][1]["Id"] = 3315498 -- 【库】七阶防具神魂碎片[属性:8]
	tStandardize_RewardPoolProps_Reward[3315498][1]["DeleteItem"][1]["ItemNum"] = 15
	tStandardize_RewardPoolProps_Reward[3315498][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3315498][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315498][1]["RewardItem"][1]["Id"] = 3004248 -- 七阶防具神魂礼包[3004248][属性:9][叠加:10000][金币:0], 【表格】七阶防具神魂礼包
	tStandardize_RewardPoolProps_Reward[3315498][1]["RewardItem"][1]["Attr"] = "0 1" -- 七阶防具神魂礼包*1
	tStandardize_RewardPoolProps_Reward[3315498][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315498][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3315498][2] = {}
	-- ===七阶防具神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315498][2]
	-- ===删除: 3315498,15
	-- ===
	tStandardize_RewardPoolProps_Reward[3315498][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315498][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315498][2]["DeleteItem"][1]["Id"] = 3315498 -- 【库】七阶防具神魂碎片[属性:8]
	tStandardize_RewardPoolProps_Reward[3315498][2]["DeleteItem"][1]["ItemNum"] = 15
	tStandardize_RewardPoolProps_Reward[3315498][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3315498][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315498][2]["RewardItem"][1]["Id"] = 3006746 -- 七阶防具神魂礼包[3006746][属性:9][叠加:10000][金币:0], 【表格】七阶防具神魂礼包
	tStandardize_RewardPoolProps_Reward[3315498][2]["RewardItem"][1]["Attr"] = "0 1" -- 七阶防具神魂礼包（赠）*1
	tStandardize_RewardPoolProps_Reward[3315498][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315498][2]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3315498][3] = {}
	-- ===七阶防具神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315498][3]
	-- ===
	-- tStandardize_RewardPoolProps_Reward[3315498][3]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315498][3]["Log"] = "0,0,3315498,1,12001700,2,3004248,1"
	tStandardize_RewardPoolProps_Reward[3315498][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315498][3]["RewardItem"][1]["Id"] = 3004248 -- 七阶防具神魂礼盒[3004248][属性:9][叠加:10000][金币:0], 【表格】七阶防具神魂礼包
	tStandardize_RewardPoolProps_Reward[3315498][3]["RewardItem"][1]["Attr"] = "0 1" -- 七阶防具神魂礼盒*1
	tStandardize_RewardPoolProps_Reward[3315498][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315498][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3315498][4] = {}
	-- ===七阶防具神魂碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3315498][4]
	-- ===
	-- tStandardize_RewardPoolProps_Reward[3315498][4]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3315498][4]["Log"] = "0,0,3315498,1,12001700,2,3006746,1"
	tStandardize_RewardPoolProps_Reward[3315498][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3315498][4]["RewardItem"][1]["Id"] = 3006746 -- 七阶防具神魂礼盒[3006746][属性:9][叠加:10000][金币:0], 【表格】七阶防具神魂礼包
	tStandardize_RewardPoolProps_Reward[3315498][4]["RewardItem"][1]["Attr"] = "0 1" -- 七阶防具神魂礼盒（赠）*1
	tStandardize_RewardPoolProps_Reward[3315498][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3315498][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3315498][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314553] = {}
	-- ===固化石碎片
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314553][1]
	tStandardize_RewardPoolProps_Reward[3314553][1] = {}
	tStandardize_RewardPoolProps_Reward[3314553][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314553][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314553][1]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】碎片合成【表格】１／１０碎片
	tStandardize_RewardPoolProps_Reward[3314553][1]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tStandardize_RewardPoolProps_Reward[3314553][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314553][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314553][2] = {}
	-- ===固化石碎片（赠）
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314553][２]
	tStandardize_RewardPoolProps_Reward[3314553][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314553][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314553][2]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】１／１０碎片（赠）
	tStandardize_RewardPoolProps_Reward[3314553][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 固化石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314553][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314553][2]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314553][3] = {}
	-- ===固化石碎片合成
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314553][3]
	-- ===删除: 3314553,10
	tStandardize_RewardPoolProps_Reward[3314553][3]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314553][3]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][3]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314553][3]["DeleteItem"][1]["Id"] = 3314553 -- 【库】固化石碎片[属性:8]
	tStandardize_RewardPoolProps_Reward[3314553][3]["DeleteItem"][1]["ItemNum"] = 10
	tStandardize_RewardPoolProps_Reward[3314553][3]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314553][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314553][3]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】碎片合成
	tStandardize_RewardPoolProps_Reward[3314553][3]["RewardItem"][1]["Attr"] = "0 1" -- 固化石*1
	tStandardize_RewardPoolProps_Reward[3314553][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314553][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314553][4] = {}
	-- ===固化石碎片（赠）合成
	-- ===索引:tStandardize_RewardPoolProps_Reward[3314553][4]
	-- ===删除: 3314553,10
	tStandardize_RewardPoolProps_Reward[3314553][4]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314553][4]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][4]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314553][4]["DeleteItem"][1]["Id"] = 3314553 -- 【库】固化石碎片[属性:8]
	tStandardize_RewardPoolProps_Reward[3314553][4]["DeleteItem"][1]["ItemNum"] = 10
	tStandardize_RewardPoolProps_Reward[3314553][4]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314553][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314553][4]["RewardItem"][1]["Id"] = 723694 -- 固化石[723694][属性:0][叠加:0][金币:0], 【表格】碎片合成（赠）
	tStandardize_RewardPoolProps_Reward[3314553][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 固化石（赠）*1
	tStandardize_RewardPoolProps_Reward[3314553][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314553][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314553][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314900] = {}
	-- ===聚神丹
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314900]
	-- ===删除: 3314900,1
	tStandardize_RewardPoolProps_Reward[3314900]["UseMap"] = true
	tStandardize_RewardPoolProps_Reward[3314900]["MaxLevel"] = false
	tStandardize_RewardPoolProps_Reward[3314900]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314900]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314900]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314900]["DeleteItem"][1]["Id"] = 3314900 -- 【库】聚神丹[属性:0]
	tStandardize_RewardPoolProps_Reward[3314900]["RewardExpTime"] = {}
	tStandardize_RewardPoolProps_Reward[3314900]["RewardExpTime"]["Value"] = 60 -- 分钟经验, 【需求】60分钟经验
	tStandardize_RewardPoolProps_Reward[3314900]["RewardExpTime"]["FullIndex"] = "RewardCultivation"
	tStandardize_RewardPoolProps_Reward[3314900]["RewardExpTime"]["FullValue"] = 30 -- 分钟经验, 默认给一半修行值（可按需求自行修改）
	tStandardize_RewardPoolProps_Reward[3314900]["RewardExpTime"]["FullLog"] = "0,0,3314900,1,12001700,2,6,30"
	-- 【stc（213,23）】1天（零点重置）可使用10个
	tStandardize_RewardPoolProps_Reward[3314900]["EventType"] = 213
	tStandardize_RewardPoolProps_Reward[3314900]["DataType"] = 23
	tStandardize_RewardPoolProps_Reward[3314900]["RewardDelay"] = 1
	tStandardize_RewardPoolProps_Reward[3314900]["RewardTimeType"] = 4
	tStandardize_RewardPoolProps_Reward[3314900]["RewardData"] = 10
	tStandardize_RewardPoolProps_Reward[3314900]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314900]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314900]["RewardEffect"]["Effect"] = "angelwing"
	tStandardize_RewardPoolProps_Reward[3314900]["HaveReceive"] = tStandardize_RewardPoolProps_Text[3314900]["MaxData"]


	tStandardize_RewardPoolProps_Reward[3314903] = {}
	-- ===九转聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314903][1]
	-- ===删除: 3314903,1
	tStandardize_RewardPoolProps_Reward[3314903]["ChkSurplus"] = true
	tStandardize_RewardPoolProps_Reward[3314903]["UseLev"] = 140
	tStandardize_RewardPoolProps_Reward[3314903][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314903][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][1]["DeleteItem"][1]["Id"] = 3314903 -- 【库】九转聚神丹碎片[属性:9]
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardExpPercent"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardExpPercent"]["Value"] = 1 -- 百分比经验, 【需求】等级1%的经验奖励
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardExpPercent"]["FullIndex"] = "RewardCultivation"
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardExpPercent"]["FullValue"] = 500 -- 百分比经验 , 默认1比500修行值（可按需求自行修改）
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardExpPercent"]["FullLog"] = "0,0,3314903,1,12001700,2,6,500"
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314903][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314903][2] = {}
	-- ===九转聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314903][2]
	-- ===删除: 3314903,10
	tStandardize_RewardPoolProps_Reward[3314903][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314903][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][2]["DeleteItem"][1]["Id"] = 3314903 -- 【库】九转聚神丹碎片[属性:9]
	tStandardize_RewardPoolProps_Reward[3314903][2]["DeleteItem"][1]["ItemNum"] = 10
	tStandardize_RewardPoolProps_Reward[3314903][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][2]["RewardItem"][1]["Id"] = 3314904 -- 九转聚神丹[3314904][属性:0][叠加:1][金币:0], 【表格】九转聚神丹
	tStandardize_RewardPoolProps_Reward[3314903][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 九转聚神丹*1
	tStandardize_RewardPoolProps_Reward[3314903][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314903][2]["RewardEffect"]["Effect"] = "angelwing"
	tStandardize_RewardPoolProps_Reward[3314903][2]["NoItem"] = tStandardize_RewardPoolProps_Text[3314903]["NoItem"]
	tStandardize_RewardPoolProps_Reward[3314903][2]["NoSpace"] = tStandardize_RewardPoolProps_Text[3314903]["NoSpace"]


	tStandardize_RewardPoolProps_Reward[3314903][3] = {}
	-- ===九转聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314903][3]
	-- ===删除: 3314903,1
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314903][3]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][3]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][3]["DeleteItem"][1]["Id"] = 3314903 -- 【库】九转聚神丹碎片[属性:9]
	tStandardize_RewardPoolProps_Reward[3314903][3]["LogId"] = 12001700
	-- 九转聚神丹-- 【自身概率】 - 10%
	tStandardize_RewardPoolProps_Reward[3314903][3][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RandomItemChanceType"] = 3
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["ItemSelfChanceSum"] = 10000
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RewardItem"][1]["Id"] = 3314904 -- 九转聚神丹[3314904][属性:0][叠加:1][金币:0], 【表格】九转聚神丹
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 九转聚神丹*1
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314903][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314903][4] = {}
	-- ===九转聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314903][4]
	-- tStandardize_RewardPoolProps_Reward[3314903][4]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314903][4]["Log"] = "0,0,3314903,1,12001700,2,3314904,1"
	tStandardize_RewardPoolProps_Reward[3314903][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314903][4]["RewardItem"][1]["Id"] = 3314904 -- 九转聚神丹[3314904][属性:9][叠加:1][金币:0], 【表格】九转聚神丹
	tStandardize_RewardPoolProps_Reward[3314903][4]["RewardItem"][1]["Attr"] = "0 1" -- 九转聚神丹*1
	tStandardize_RewardPoolProps_Reward[3314903][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314903][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314903][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314904] = {}
	-- ===九转聚神丹
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314904]
	-- ===删除: 3314904,1
	tStandardize_RewardPoolProps_Reward[3314904]["ChkSurplus"] = true
	tStandardize_RewardPoolProps_Reward[3314904]["MaxLevel"] = true
	tStandardize_RewardPoolProps_Reward[3314904]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314904]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314904]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314904]["DeleteItem"][1]["Id"] = 3314904 -- 【库】九转聚神丹[属性:9]
	tStandardize_RewardPoolProps_Reward[3314904]["RewardExpPercent"] = {}
	tStandardize_RewardPoolProps_Reward[3314904]["RewardExpPercent"]["Value"] = 10 -- 百分比经验, 【需求】等级10%的经验
	tStandardize_RewardPoolProps_Reward[3314904]["RewardExpPercent"]["FullIndex"] = "RewardStrengthValue"
	tStandardize_RewardPoolProps_Reward[3314904]["RewardExpPercent"]["FullValue"] = 1000 -- 百分比经验 , 默认1比500修行值（可按需求自行修改）
	tStandardize_RewardPoolProps_Reward[3314904]["RewardExpPercent"]["FullLog"] = "0,0,3314904,1,12001700,2,12,1000"
	tStandardize_RewardPoolProps_Reward[3314904]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314904]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314904]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314905] = {}
	-- ===六阳聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314905][1]
	-- ===删除: 3314905,10
	tStandardize_RewardPoolProps_Reward[3314905][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314905][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][1]["DeleteItem"][1]["Id"] = 3314905 -- 【库】六阳聚神丹碎片[属性:0]
	tStandardize_RewardPoolProps_Reward[3314905][1]["DeleteItem"][1]["ItemNum"] = 10
	tStandardize_RewardPoolProps_Reward[3314905][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_Reward[3314905][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][1]["RewardItem"][1]["Id"] = 3314906 -- 六阳聚神丹[3314906][属性:0][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314905][1]["RewardItem"][1]["Attr"] = "0 1" -- 六阳聚神丹*1
	tStandardize_RewardPoolProps_Reward[3314905][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314905][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314905][2] = {}
	-- ===六阳聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314905][2]
	-- ===删除: 3314905,10
	tStandardize_RewardPoolProps_Reward[3314905][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314905][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][2]["DeleteItem"][1]["Id"] = 3314905 -- 【库】六阳聚神丹碎片[属性:0]
	tStandardize_RewardPoolProps_Reward[3314905][2]["DeleteItem"][1]["ItemNum"] = 10
	tStandardize_RewardPoolProps_Reward[3314905][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_Reward[3314905][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][2]["RewardItem"][1]["Id"] = 3314906 -- 六阳聚神丹[3314906][属性:0][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314905][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 六阳聚神丹（赠）*1
	tStandardize_RewardPoolProps_Reward[3314905][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314905][2]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314905][3] = {}
	-- ===六阳聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314905][3]
	-- ===删除: 3314905,1
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314905][3]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][3]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][3]["DeleteItem"][1]["Id"] = 3314905 -- 【库】六阳聚神丹碎片[属性:0]
	tStandardize_RewardPoolProps_Reward[3314905][3]["LogId"] = 12001700
	-- 六阳聚神丹-- 【自身概率】 - 10%
	tStandardize_RewardPoolProps_Reward[3314905][3][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RandomItemChanceType"] = 3
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["ItemSelfChanceSum"] = 10000
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RewardItem"][1]["Id"] = 3314906 -- 六阳聚神丹[3314906][属性:0][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RewardItem"][1]["Attr"] = "0 1" -- 六阳聚神丹*1
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314905][3][1]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314905][4] = {}
	-- ===六阳聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314905][4]
	-- ===删除: 3314905,1
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_Reward[3314905][4]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][4]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][4]["DeleteItem"][1]["Id"] = 3314905 -- 【库】六阳聚神丹碎片[属性:0]
	tStandardize_RewardPoolProps_Reward[3314905][4]["LogId"] = 12001700
	-- 六阳聚神丹-- 【自身概率】 - 10%
	tStandardize_RewardPoolProps_Reward[3314905][4][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RandomItemChanceType"] = 3
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["ItemSelfChanceSum"] = 10000
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RewardItem"][1]["Id"] = 3314906 -- 六阳聚神丹[3314906][属性:0][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 六阳聚神丹（赠）*1
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314905][4][1]["RewardEffect"]["Effect"] = "angelwing"



	tStandardize_RewardPoolProps_Reward[3314905][5] = {}
	-- ===六阳聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314905][5]
	tStandardize_RewardPoolProps_Reward[3314905][5]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314905][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][5]["RewardItem"][1]["Id"] = 3314906 -- 六阳聚神丹[3314906][属性:0][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314905][5]["RewardItem"][1]["Attr"] = "0 1" -- 六阳聚神丹*1
	tStandardize_RewardPoolProps_Reward[3314905][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314905][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314905][6] = {}
	-- ===六阳聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314905][6]
	tStandardize_RewardPoolProps_Reward[3314905][6]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314905][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][6]["RewardItem"][1]["Id"] = 3314906 -- 六阳聚神丹[3314906][属性:0][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314905][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 六阳聚神丹（赠）*1
	tStandardize_RewardPoolProps_Reward[3314905][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314905][6]["RewardEffect"]["Effect"] = "angelwing"



	tStandardize_RewardPoolProps_Reward[3314905][7] = {}
	-- ===六阳聚神丹碎片
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314905][7]
	-- ===删除: 3314905,10
	tStandardize_RewardPoolProps_Reward[3314905][7]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314905][7]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][7]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][7]["DeleteItem"][1]["Id"] = 3314905 -- 【库】六阳聚神丹碎片[属性:0]
	tStandardize_RewardPoolProps_Reward[3314905][7]["DeleteItem"][1]["ItemNum"] = 10
	tStandardize_RewardPoolProps_Reward[3314905][7]["DeleteItem"][1]["Monopoly"] = 1
	tStandardize_RewardPoolProps_Reward[3314905][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314905][7]["RewardItem"][1]["Id"] = 3314906 -- 六阳聚神丹[3314906][属性:0][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314905][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 六阳聚神丹（赠）*1
	tStandardize_RewardPoolProps_Reward[3314905][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314905][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314905][7]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_Reward[3314906] = {}
	tStandardize_RewardPoolProps_Reward[3314906][1] = {}
	-- ===六阳聚神丹
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314906][1]
	-- ===删除: 3314906,1
	tStandardize_RewardPoolProps_Reward[3314906][1]["ChkSurplus"] = true
	-- tStandardize_RewardPoolProps_Reward[3314906][1]["MaxLevel"] = true
	tStandardize_RewardPoolProps_Reward[3314906][1]["UseLev"] = 130
	tStandardize_RewardPoolProps_Reward[3314906][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314906][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314906][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314906][1]["DeleteItem"][1]["Id"] = 3314906 -- 【库】六阳聚神丹[属性:0]
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardExpPercent"] = {}
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardExpPercent"]["Value"] = 10 -- 百分比经验, 【需求】等级10%的经验
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardExpPercent"]["FullIndex"] = "RewardStrengthValue"
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardExpPercent"]["FullValue"] = 1000 -- 百分比经验 , 默认1比500修行值（可按需求自行修改）
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardExpPercent"]["FullLog"] = "0,0,3314906,1,12001700,2,12,1000"
	-- 【stc（213,28）】1天（零点重置）10个
	tStandardize_RewardPoolProps_Reward[3314906][1]["EventType"] = 213
	tStandardize_RewardPoolProps_Reward[3314906][1]["DataType"] = 28
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardDelay"] = 1
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardTimeType"] = 4
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardData"] = 1
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314906][1]["RewardEffect"]["Effect"] = "angelwing"
	tStandardize_RewardPoolProps_Reward[3314906][1]["HaveReceive"] = tStandardize_RewardPoolProps_Text[3314906]["MaxData"]
	tStandardize_RewardPoolProps_Reward[3314906][2] = {}
	-- ===六阳聚神丹
	-- ===索引: tStandardize_RewardPoolProps_Reward[3314906][2]
	-- ===删除: 3314906,1
	tStandardize_RewardPoolProps_Reward[3314906][2]["UseLev"] = 130
	tStandardize_RewardPoolProps_Reward[3314906][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_Reward[3314906][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314906][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314906][2]["DeleteItem"][1]["Id"] = 3314906 -- 【库】六阳聚神丹[属性:0]
	tStandardize_RewardPoolProps_Reward[3314906][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_Reward[3314906][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_Reward[3314906][2]["RewardItem"][1]["Id"] = 3314903 -- 九转聚神丹碎片[3314903][属性:9][叠加:1][金币:0], 【表格】六阳聚神丹
	tStandardize_RewardPoolProps_Reward[3314906][2]["RewardItem"][1]["Attr"] = "0 1" -- 九转聚神丹碎片*1
	tStandardize_RewardPoolProps_Reward[3314906][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_Reward[3314906][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_Reward[3314906][2]["RewardEffect"]["Effect"] = "angelwing"

-- 随机奖励表
local tStandardize_RewardPoolProps_RandomReward = {}
	-- ===天石福运礼包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314183]
	-- ===删除: 3314183,1
	-- ===NewEMoneyLog:1000,1166
	tStandardize_RewardPoolProps_RandomReward[3314183] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314183]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183]["DeleteItem"][1]["Id"] = 3314183 -- 【库】天石福运礼包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314183]["LogId"] = 12001700
	-- 5天石 - 40.9%
	tStandardize_RewardPoolProps_RandomReward[3314183][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["ItemChance"] = 4090
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["RewardEMoney"]["Value"] = 5 -- 天石, 【需求】5天石
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["RewardEMoney"]["NewEmoneyLog"] = "1000	1166"
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314183][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 8天石 - 51%
	tStandardize_RewardPoolProps_RandomReward[3314183][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["ItemChance"] = 5100
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["RewardEMoney"]["Value"] = 8 -- 天石, 【需求】8天石
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["RewardEMoney"]["NewEmoneyLog"] = "1000	1166"
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314183][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 18天石 - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314183][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["RewardEMoney"]["Value"] = 18 -- 天石, 【需求】18天石
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["RewardEMoney"]["NewEmoneyLog"] = "1000	1166"
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314183][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 38天石 - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314183][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["RewardEMoney"]["Value"] = 38 -- 天石, 【需求】38天石
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["RewardEMoney"]["NewEmoneyLog"] = "1000	1166"
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314183][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 88天石 - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314183][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["RewardEMoney"]["Value"] = 88 -- 天石, 【需求】88天石
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["RewardEMoney"]["NewEmoneyLog"] = "1000	1166"
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314183][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314184] = {}
	-- ===天石鸿运礼包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314184]
	-- ===删除: 3314184,1
	-- ===NewEMoneyLog:1000,1167
	tStandardize_RewardPoolProps_RandomReward[3314184]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314184]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184]["DeleteItem"][1]["Id"] = 3314184 -- 【库】天石鸿运礼包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314184]["LogId"] = 12001700
	-- 8天石 - 25%
	tStandardize_RewardPoolProps_RandomReward[3314184][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["ItemChance"] = 2500
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["RewardEMoney"]["Value"] = 8 -- 天石, 【需求】8天石
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["RewardEMoney"]["NewEmoneyLog"] = "1000	1167"
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314184][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 88天石 - 66.9%
	tStandardize_RewardPoolProps_RandomReward[3314184][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["ItemChance"] = 6690
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["RewardEMoney"]["Value"] = 88 -- 天石, 【需求】88天石
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["RewardEMoney"]["NewEmoneyLog"] = "1000	1167"
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314184][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 188天石 - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314184][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["RewardEMoney"]["Value"] = 188 -- 天石, 【需求】188天石
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["RewardEMoney"]["NewEmoneyLog"] = "1000	1167"
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314184][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 388天石 - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314184][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["RewardEMoney"]["Value"] = 388 -- 天石, 【需求】388天石
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["RewardEMoney"]["NewEmoneyLog"] = "1000	1167"
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314184][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 888天石 - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314184][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["RewardEMoney"]["Value"] = 888 -- 天石, 【需求】888天石
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["RewardEMoney"]["NewEmoneyLog"] = "1000	1167"
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314184][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314185] = {}
	-- ===天石极运礼包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314185]
	-- ===删除: 3314185,1
	-- ===NewEMoneyLog:1000,1168
	tStandardize_RewardPoolProps_RandomReward[3314185]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314185]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185]["DeleteItem"][1]["Id"] = 3314185 -- 【库】天石极运礼包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314185]["LogId"] = 12001700
	-- 188天石 - 38.9%
	tStandardize_RewardPoolProps_RandomReward[3314185][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["ItemChance"] = 3890
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["RewardEMoney"]["Value"] = 188 -- 天石, 【需求】188天石
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["RewardEMoney"]["NewEmoneyLog"] = "1000	1168"
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314185][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 888天石 - 53%
	tStandardize_RewardPoolProps_RandomReward[3314185][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["ItemChance"] = 5300
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["RewardEMoney"]["Value"] = 888 -- 天石, 【需求】888天石
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["RewardEMoney"]["NewEmoneyLog"] = "1000	1168"
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314185][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 2888天石 - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314185][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["RewardEMoney"]["Value"] = 2888 -- 天石, 【需求】2888天石
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["RewardEMoney"]["NewEmoneyLog"] = "1000	1168"
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314185][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3888天石 - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314185][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["RewardEMoney"]["Value"] = 3888 -- 天石, 【需求】3888天石
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["RewardEMoney"]["NewEmoneyLog"] = "1000	1168"
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314185][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 8888天石 - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314185][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["RewardEMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["RewardEMoney"]["Value"] = 8888 -- 天石, 【需求】8888天石
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["RewardEMoney"]["NewEmoneyLog"] = "1000	1168"
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314185][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314189] = {}
	-- ===天石（赠）福运礼包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314189]
	-- ===删除: 3314189,1
	-- ===NewEMoneyLog:1000,1172
	tStandardize_RewardPoolProps_RandomReward[3314189]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314189]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189]["DeleteItem"][1]["Id"] = 3314189 -- 【库】天石（赠）福运礼包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314189]["LogId"] = 12001700
	-- 5天石（赠） - 40.9%
	tStandardize_RewardPoolProps_RandomReward[3314189][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["ItemChance"] = 4090
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["RewardEMoneyMono"]["Value"] = 5 -- 天石（赠）, 【需求】5天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1172"
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314189][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 8天石（赠） - 51%
	tStandardize_RewardPoolProps_RandomReward[3314189][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["ItemChance"] = 5100
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["RewardEMoneyMono"]["Value"] = 8 -- 天石（赠）, 【需求】8天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1172"
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314189][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 18天石（赠） - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314189][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["RewardEMoneyMono"]["Value"] = 18 -- 天石（赠）, 【需求】18天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1172"
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314189][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 38天石（赠） - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314189][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["RewardEMoneyMono"]["Value"] = 38 -- 天石（赠）, 【需求】38天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1172"
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314189][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 88天石（赠） - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314189][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["RewardEMoneyMono"]["Value"] = 88 -- 天石（赠）, 【需求】88天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1172"
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314189][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314190] = {}
	-- ===天石（赠）鸿运礼包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314190]
	-- ===删除: 3314190,1
	-- ===NewEMoneyLog:1000,1173
	tStandardize_RewardPoolProps_RandomReward[3314190]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314190]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190]["DeleteItem"][1]["Id"] = 3314190 -- 【库】天石（赠）鸿运礼包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314190]["LogId"] = 12001700
	-- 8天石（赠） - 25%
	tStandardize_RewardPoolProps_RandomReward[3314190][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["ItemChance"] = 2500
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["RewardEMoneyMono"]["Value"] = 8 -- 天石（赠）, 【需求】8天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1173"
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314190][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 88天石（赠） - 66.9%
	tStandardize_RewardPoolProps_RandomReward[3314190][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["ItemChance"] = 6690
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["RewardEMoneyMono"]["Value"] = 88 -- 天石（赠）, 【需求】88天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1173"
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314190][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 188天石（赠） - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314190][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["RewardEMoneyMono"]["Value"] = 188 -- 天石（赠）, 【需求】188天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1173"
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314190][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 388天石（赠） - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314190][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["RewardEMoneyMono"]["Value"] = 388 -- 天石（赠）, 【需求】388天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1173"
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314190][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 888天石（赠） - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314190][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["RewardEMoneyMono"]["Value"] = 888 -- 天石（赠）, 【需求】888天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1173"
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314190][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314191] = {}
	-- ===天石（赠）极运礼包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314191]
	-- ===删除: 3314191,1
	-- ===NewEMoneyLog:1000,1174
	tStandardize_RewardPoolProps_RandomReward[3314191]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314191]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191]["DeleteItem"][1]["Id"] = 3314191 -- 【库】天石（赠）极运礼包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314191]["LogId"] = 12001700
	-- 188天石（赠） - 38.9%
	tStandardize_RewardPoolProps_RandomReward[3314191][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["ItemChance"] = 3890
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["RewardEMoneyMono"]["Value"] = 188 -- 天石（赠）, 【需求】188天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1174"
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314191][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 888天石（赠） - 53%
	tStandardize_RewardPoolProps_RandomReward[3314191][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["ItemChance"] = 5300
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["RewardEMoneyMono"]["Value"] = 888 -- 天石（赠）, 【需求】888天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1174"
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314191][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 2888天石（赠） - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314191][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["RewardEMoneyMono"]["Value"] = 2888 -- 天石（赠）, 【需求】2888天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1174"
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314191][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3888天石（赠） - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314191][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["RewardEMoneyMono"]["Value"] = 3888 -- 天石（赠）, 【需求】3888天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1174"
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314191][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 8888天石（赠） - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314191][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["RewardEMoneyMono"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["RewardEMoneyMono"]["Value"] = 8888 -- 天石（赠）, 【需求】8888天石（赠）
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1174"
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314191][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314196] = {}
	-- ===吉祥如意财富包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314196]
	-- ===删除: 3314196,1
	-- ===
	tStandardize_RewardPoolProps_RandomReward[3314196]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314196]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196]["DeleteItem"][1]["Id"] = 3314196 -- 【库】吉祥如意财富包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314196]["LogId"] = 12001700
	-- 50000金币 - 40.9%
	tStandardize_RewardPoolProps_RandomReward[3314196][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314196][1]["ItemChance"] = 4090
	tStandardize_RewardPoolProps_RandomReward[3314196][1]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][1]["RewardMoney"]["Value"] = 50000 -- 金币, 【需求】50000金币
	tStandardize_RewardPoolProps_RandomReward[3314196][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314196][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 80000金币 - 51%
	tStandardize_RewardPoolProps_RandomReward[3314196][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314196][2]["ItemChance"] = 5100
	tStandardize_RewardPoolProps_RandomReward[3314196][2]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][2]["RewardMoney"]["Value"] = 80000 -- 金币, 【需求】80000金币
	tStandardize_RewardPoolProps_RandomReward[3314196][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314196][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 180000金币 - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314196][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314196][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314196][3]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][3]["RewardMoney"]["Value"] = 180000 -- 金币, 【需求】180000金币
	tStandardize_RewardPoolProps_RandomReward[3314196][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314196][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 380000金币 - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314196][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314196][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314196][4]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][4]["RewardMoney"]["Value"] = 380000 -- 金币, 【需求】380000金币
	tStandardize_RewardPoolProps_RandomReward[3314196][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314196][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 880000金币 - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314196][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314196][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314196][5]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][5]["RewardMoney"]["Value"] = 880000 -- 金币, 【需求】880000金币
	tStandardize_RewardPoolProps_RandomReward[3314196][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314196][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314196][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314197] = {}
	-- ===吉星高照财富包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314197]
	-- ===删除: 3314197,1
	-- ===
	tStandardize_RewardPoolProps_RandomReward[3314197]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314197]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197]["DeleteItem"][1]["Id"] = 3314197 -- 【库】吉星高照财富包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314197]["LogId"] = 12001700
	-- 80000金币 - 25%
	tStandardize_RewardPoolProps_RandomReward[3314197][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314197][1]["ItemChance"] = 2500
	tStandardize_RewardPoolProps_RandomReward[3314197][1]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][1]["RewardMoney"]["Value"] = 80000 -- 金币, 【需求】80000金币
	tStandardize_RewardPoolProps_RandomReward[3314197][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314197][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 880000金币 - 66.9%
	tStandardize_RewardPoolProps_RandomReward[3314197][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314197][2]["ItemChance"] = 6690
	tStandardize_RewardPoolProps_RandomReward[3314197][2]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][2]["RewardMoney"]["Value"] = 880000 -- 金币, 【需求】880000金币
	tStandardize_RewardPoolProps_RandomReward[3314197][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314197][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1880000金币 - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314197][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314197][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314197][3]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][3]["RewardMoney"]["Value"] = 1880000 -- 金币, 【需求】1880000金币
	tStandardize_RewardPoolProps_RandomReward[3314197][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314197][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 3880000金币 - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314197][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314197][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314197][4]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][4]["RewardMoney"]["Value"] = 3880000 -- 金币, 【需求】3880000金币
	tStandardize_RewardPoolProps_RandomReward[3314197][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314197][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 8880000金币 - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314197][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314197][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314197][5]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][5]["RewardMoney"]["Value"] = 8880000 -- 金币, 【需求】8880000金币
	tStandardize_RewardPoolProps_RandomReward[3314197][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314197][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314197][5]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RandomReward[3314198] = {}
	-- ===洪福齐天财富包
	-- ===索引:tStandardize_RewardPoolProps_RandomReward[3314198]
	-- ===删除: 3314198,1
	-- ===
	tStandardize_RewardPoolProps_RandomReward[3314198]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RandomReward[3314198]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198]["DeleteItem"][1]["Id"] = 3314198 -- 【库】洪福齐天财富包[属性:9]
	tStandardize_RewardPoolProps_RandomReward[3314198]["LogId"] = 12001700
	-- 1880000金币 - 38.9%
	tStandardize_RewardPoolProps_RandomReward[3314198][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314198][1]["ItemChance"] = 3890
	tStandardize_RewardPoolProps_RandomReward[3314198][1]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][1]["RewardMoney"]["Value"] = 1880000 -- 金币, 【需求】1880000金币
	tStandardize_RewardPoolProps_RandomReward[3314198][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314198][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 8880000金币 - 53%
	tStandardize_RewardPoolProps_RandomReward[3314198][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314198][2]["ItemChance"] = 5300
	tStandardize_RewardPoolProps_RandomReward[3314198][2]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][2]["RewardMoney"]["Value"] = 8880000 -- 金币, 【需求】8880000金币
	tStandardize_RewardPoolProps_RandomReward[3314198][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314198][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 28880000金币 - 6.5%
	tStandardize_RewardPoolProps_RandomReward[3314198][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314198][3]["ItemChance"] = 650
	tStandardize_RewardPoolProps_RandomReward[3314198][3]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][3]["RewardMoney"]["Value"] = 28880000 -- 金币, 【需求】28880000金币
	tStandardize_RewardPoolProps_RandomReward[3314198][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314198][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 38880000金币 - 1.5%
	tStandardize_RewardPoolProps_RandomReward[3314198][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314198][4]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RandomReward[3314198][4]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][4]["RewardMoney"]["Value"] = 38880000 -- 金币, 【需求】38880000金币
	tStandardize_RewardPoolProps_RandomReward[3314198][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314198][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 88880000金币 - 0.1%
	tStandardize_RewardPoolProps_RandomReward[3314198][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314198][5]["ItemChance"] = 10
	tStandardize_RewardPoolProps_RandomReward[3314198][5]["RewardMoney"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][5]["RewardMoney"]["Value"] = 88880000 -- 金币, 【需求】88880000金币
	tStandardize_RewardPoolProps_RandomReward[3314198][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RandomReward[3314198][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RandomReward[3314198][5]["RewardEffect"]["Effect"] = "angelwing"


	-- 3314913,'乾坤神器宝盒'
	tStandardize_RewardPoolProps_RandomReward[3314913] = {}
	tStandardize_RewardPoolProps_RandomReward[3314913][1] = {} --此处5代表随机出来的属性条数
	tStandardize_RewardPoolProps_RandomReward[3314913][1]["ItemChanceSum"] = 10000
	tStandardize_RewardPoolProps_RandomReward[3314913][1][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314913][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314913][1][1]["ItemChance"] = 300
	tStandardize_RewardPoolProps_RandomReward[3314913][1][1]["Item_1"] = 5 
	tStandardize_RewardPoolProps_RandomReward[3314913][1][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314913][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314913][1][2]["ItemChance"] = 2700
	tStandardize_RewardPoolProps_RandomReward[3314913][1][2]["Item_1"] = 4 
	tStandardize_RewardPoolProps_RandomReward[3314913][1][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314913][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314913][1][3]["ItemChance"] = 7000
	tStandardize_RewardPoolProps_RandomReward[3314913][1][3]["Item_1"] = 3 


	-- 3314914,'精装神器礼包'
	tStandardize_RewardPoolProps_RandomReward[3314914] = {}
	tStandardize_RewardPoolProps_RandomReward[3314914][1] = {} --此处5代表随机出来的属性条数
	tStandardize_RewardPoolProps_RandomReward[3314914][1]["ItemChanceSum"] = 10000
	tStandardize_RewardPoolProps_RandomReward[3314914][1][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314914][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314914][1][1]["ItemChance"] = 0
	tStandardize_RewardPoolProps_RandomReward[3314914][1][1]["Item_1"] = 5 
	tStandardize_RewardPoolProps_RandomReward[3314914][1][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314914][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314914][1][2]["ItemChance"] = 50
	tStandardize_RewardPoolProps_RandomReward[3314914][1][2]["Item_1"] = 4 
	tStandardize_RewardPoolProps_RandomReward[3314914][1][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314914][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314914][1][3]["ItemChance"] = 250
	tStandardize_RewardPoolProps_RandomReward[3314914][1][3]["Item_1"] = 3 
	tStandardize_RewardPoolProps_RandomReward[3314914][1][4] = {}
	tStandardize_RewardPoolProps_RandomReward[3314914][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314914][1][4]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RandomReward[3314914][1][4]["Item_1"] = 2 
	tStandardize_RewardPoolProps_RandomReward[3314914][1][5] = {}
	tStandardize_RewardPoolProps_RandomReward[3314914][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314914][1][5]["ItemChance"] = 9000
	tStandardize_RewardPoolProps_RandomReward[3314914][1][5]["Item_1"] = 1 


	-- 3314915,'豪华神器礼包'
	tStandardize_RewardPoolProps_RandomReward[3314915] = {}
	tStandardize_RewardPoolProps_RandomReward[3314915][1] = {} --此处5代表随机出来的属性条数
	tStandardize_RewardPoolProps_RandomReward[3314915][1]["ItemChanceSum"] = 10000
	tStandardize_RewardPoolProps_RandomReward[3314915][1][1] = {}
	tStandardize_RewardPoolProps_RandomReward[3314915][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314915][1][1]["ItemChance"] = 10000
	tStandardize_RewardPoolProps_RandomReward[3314915][1][1]["Item_1"] = 5 
	tStandardize_RewardPoolProps_RandomReward[3314915][1][2] = {}
	tStandardize_RewardPoolProps_RandomReward[3314915][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314915][1][2]["ItemChance"] = 0
	tStandardize_RewardPoolProps_RandomReward[3314915][1][2]["Item_1"] = 4 
	tStandardize_RewardPoolProps_RandomReward[3314915][1][3] = {}
	tStandardize_RewardPoolProps_RandomReward[3314915][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RandomReward[3314915][1][3]["ItemChance"] = 0
	tStandardize_RewardPoolProps_RandomReward[3314915][1][3]["Item_1"] = 3 

-- 神纹礼包随机表
local tStandardize_RewardPoolProps_RuneRandom = {}
	-- ===红色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314247][1]
	-- ===删除: 3314247,1
	tStandardize_RewardPoolProps_RuneRandom[3314247] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1]["ItemChanceSum"] = 12000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314247][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1]["DeleteItem"][1]["Id"] = 3314247 -- 【库】红色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314247][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RuneRandom[3314247][1]["DeleteItem"][1]["LogStep"] = "2[1]"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1]["LogId"] = 12001700
	-- 狂风刃 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RewardItem"][1]["Id"] = 4010901 -- 狂风刃[4010901][属性:8][叠加:0][金币:0], 【表格】狂风刃
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 狂风刃*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 焚天诀 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RewardItem"][1]["Id"] = 4010801 -- 焚天诀[4010801][属性:8][叠加:0][金币:0], 【表格】焚天诀
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 焚天诀*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 逆水寒 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RewardItem"][1]["Id"] = 4010701 -- 逆水寒[4010701][属性:8][叠加:0][金币:0], 【表格】逆水寒
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 逆水寒*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 迷踪步 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RewardItem"][1]["Id"] = 4010601 -- 迷踪步[4010601][属性:8][叠加:0][金币:0], 【表格】迷踪步
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 迷踪步*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 不动明王身 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RewardItem"][1]["Id"] = 4010401 -- 不动明王身[4010401][属性:8][叠加:0][金币:0], 【表格】不动明王身
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 不动明王身*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 寒冰箭雨 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RewardItem"][1]["Id"] = 4010201 -- 寒冰箭雨[4010201][属性:8][叠加:0][金币:0], 【表格】寒冰箭雨
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 寒冰箭雨*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·暗杀 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RewardItem"][1]["Id"] = 4010301 -- 忍法·暗杀[4010301][属性:8][叠加:0][金币:0], 【表格】忍法·暗杀
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 忍法·暗杀*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 潮汐奔涌 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RewardItem"][1]["Id"] = 4010501 -- 潮汐奔涌[4010501][属性:8][叠加:0][金币:0], 【表格】潮汐奔涌
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 潮汐奔涌*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 融会贯通 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RewardItem"][1]["Id"] = 4010001 -- 融会贯通[4010001][属性:8][叠加:0][金币:0], 【表格】融会贯通
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 融会贯通*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 挫志投掷 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RewardItem"][1]["Id"] = 4010101 -- 挫志投掷[4010101][属性:8][叠加:0][金币:0], 【表格】挫志投掷
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 挫志投掷*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗志昂扬 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RewardItem"][1]["Id"] = 4011401 -- 斗志昂扬[4011401][属性:8][叠加:0][金币:0], 【表格】斗志昂扬
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 斗志昂扬*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 连环风暴 - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RewardItem"][1]["Id"] = 4011501 -- 连环风暴[4011501][属性:8][叠加:0][金币:0], 【表格】连环风暴
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 连环风暴*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][1][12]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314247][2] = {}
	-- ===红色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314247][2]
	-- ===删除: 3314247,1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2]["ItemChanceSum"] = 12000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314247][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2]["DeleteItem"][1]["Id"] = 3314247 -- 【库】红色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314247][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2]["DeleteItem"][1]["LogStep"] = "2[2]"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2]["LogId"] = 12001700
	-- 狂风刃（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RewardItem"][1]["Id"] = 4010901 -- 狂风刃[4010901][属性:8][叠加:0][金币:0], 【表格】狂风刃（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 狂风刃（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 焚天诀（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RewardItem"][1]["Id"] = 4010801 -- 焚天诀[4010801][属性:8][叠加:0][金币:0], 【表格】焚天诀（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 焚天诀（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 逆水寒（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RewardItem"][1]["Id"] = 4010701 -- 逆水寒[4010701][属性:8][叠加:0][金币:0], 【表格】逆水寒（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 逆水寒（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 迷踪步（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RewardItem"][1]["Id"] = 4010601 -- 迷踪步[4010601][属性:8][叠加:0][金币:0], 【表格】迷踪步（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 迷踪步（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 不动明王身（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RewardItem"][1]["Id"] = 4010401 -- 不动明王身[4010401][属性:8][叠加:0][金币:0], 【表格】不动明王身（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 不动明王身（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 寒冰箭雨（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RewardItem"][1]["Id"] = 4010201 -- 寒冰箭雨[4010201][属性:8][叠加:0][金币:0], 【表格】寒冰箭雨（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 寒冰箭雨（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·暗杀（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RewardItem"][1]["Id"] = 4010301 -- 忍法·暗杀[4010301][属性:8][叠加:0][金币:0], 【表格】忍法·暗杀（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 忍法·暗杀（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 潮汐奔涌（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RewardItem"][1]["Id"] = 4010501 -- 潮汐奔涌[4010501][属性:8][叠加:0][金币:0], 【表格】潮汐奔涌（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 潮汐奔涌（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 融会贯通（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RewardItem"][1]["Id"] = 4010001 -- 融会贯通[4010001][属性:8][叠加:0][金币:0], 【表格】融会贯通（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 融会贯通（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 挫志投掷（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RewardItem"][1]["Id"] = 4010101 -- 挫志投掷[4010101][属性:8][叠加:0][金币:0], 【表格】挫志投掷（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 挫志投掷（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗志昂扬（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RewardItem"][1]["Id"] = 4011401 -- 斗志昂扬[4011401][属性:8][叠加:0][金币:0], 【表格】斗志昂扬（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗志昂扬（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 连环风暴（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RewardItem"][1]["Id"] = 4011501 -- 连环风暴[4011501][属性:8][叠加:0][金币:0], 【表格】连环风暴（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 连环风暴（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314247][2][12]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314248] = {}
	-- ===黄色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314248][1]
	-- ===删除: 3314248,1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314248][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1]["DeleteItem"][1]["Id"] = 3314248 -- 【库】黄色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314248][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RuneRandom[3314248][1]["DeleteItem"][1]["LogStep"] = "2[1]"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1]["LogId"] = 12001700
	-- 破玄元（+1） - 3%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["ItemChance"] = 300
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RewardItem"][1]["Id"] = 4030101 -- 破玄元(+1)[4030101][属性:8][叠加:0][金币:0], 【表格】破玄元（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 破玄元(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+1） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RewardItem"][1]["Id"] = 4030201 -- 撼星诀(+1)[4030201][属性:8][叠加:0][金币:0], 【表格】撼星诀（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 撼星诀(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+1） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RewardItem"][1]["Id"] = 4030301 -- 血回元(+1)[4030301][属性:8][叠加:0][金币:0], 【表格】血回元（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 血回元(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RewardItem"][1]["Id"] = 4030401 -- 万物生(+1)[4030401][属性:8][叠加:0][金币:0], 【表格】万物生（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 万物生(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+1） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RewardItem"][1]["Id"] = 4030501 -- 无懈可击(+1)[4030501][属性:8][叠加:0][金币:0], 【表格】无懈可击（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 无懈可击(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RewardItem"][1]["Id"] = 4030601 -- 狂暴克星(+1)[4030601][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 狂暴克星(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RewardItem"][1]["Id"] = 4030701 -- 风卷残云(+1)[4030701][属性:8][叠加:0][金币:0], 【表格】风卷残云（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 风卷残云(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RewardItem"][1]["Id"] = 4030801 -- 回灵术(+1)[4030801][属性:8][叠加:0][金币:0], 【表格】回灵术（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 回灵术(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+1） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RewardItem"][1]["Id"] = 4030901 -- 杀破狼(+1)[4030901][属性:8][叠加:0][金币:0], 【表格】杀破狼（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 杀破狼(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+1） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RewardItem"][1]["Id"] = 4031001 -- 追命(+1)[4031001][属性:8][叠加:0][金币:0], 【表格】追命（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 追命(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+1） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RewardItem"][1]["Id"] = 4031101 -- 奔雷不息(+1)[4031101][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 奔雷不息(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+1） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RewardItem"][1]["Id"] = 4031201 -- 安魂定魄(+1)[4031201][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 安魂定魄(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+1） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RewardItem"][1]["Id"] = 4031301 -- 夺魂(+1)[4031301][属性:8][叠加:0][金币:0], 【表格】夺魂（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 夺魂(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+1） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RewardItem"][1]["Id"] = 4033101 -- 怒海狂涛(+1)[4033101][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 怒海狂涛(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+1） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RewardItem"][1]["Id"] = 4033601 -- 狂暴净化(+1)[4033601][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 狂暴净化(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+1） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RewardItem"][1]["Id"] = 4033701 -- 饮血盛宴(+1)[4033701][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 饮血盛宴(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+1） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RewardItem"][1]["Id"] = 4033801 -- 生命汲取(+1)[4033801][属性:8][叠加:0][金币:0], 【表格】生命汲取（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 生命汲取(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][1][17]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314248][2] = {}
	-- ===黄色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314248][2]
	-- ===删除: 3314248,1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314248][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2]["DeleteItem"][1]["Id"] = 3314248 -- 【库】黄色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314248][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2]["DeleteItem"][1]["LogStep"] = "2[2]"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2]["LogId"] = 12001700
	-- 破玄元（+1）（赠） - 3%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["ItemChance"] = 300
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RewardItem"][1]["Id"] = 4030101 -- 破玄元(+1)[4030101][属性:8][叠加:0][金币:0], 【表格】破玄元（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 破玄元(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RewardItem"][1]["Id"] = 4030201 -- 撼星诀(+1)[4030201][属性:8][叠加:0][金币:0], 【表格】撼星诀（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 撼星诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RewardItem"][1]["Id"] = 4030301 -- 血回元(+1)[4030301][属性:8][叠加:0][金币:0], 【表格】血回元（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 血回元(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RewardItem"][1]["Id"] = 4030401 -- 万物生(+1)[4030401][属性:8][叠加:0][金币:0], 【表格】万物生（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 万物生(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RewardItem"][1]["Id"] = 4030501 -- 无懈可击(+1)[4030501][属性:8][叠加:0][金币:0], 【表格】无懈可击（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 无懈可击(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RewardItem"][1]["Id"] = 4030601 -- 狂暴克星(+1)[4030601][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 狂暴克星(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RewardItem"][1]["Id"] = 4030701 -- 风卷残云(+1)[4030701][属性:8][叠加:0][金币:0], 【表格】风卷残云（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 风卷残云(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RewardItem"][1]["Id"] = 4030801 -- 回灵术(+1)[4030801][属性:8][叠加:0][金币:0], 【表格】回灵术（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 回灵术(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RewardItem"][1]["Id"] = 4030901 -- 杀破狼(+1)[4030901][属性:8][叠加:0][金币:0], 【表格】杀破狼（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 杀破狼(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RewardItem"][1]["Id"] = 4031001 -- 追命(+1)[4031001][属性:8][叠加:0][金币:0], 【表格】追命（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 追命(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RewardItem"][1]["Id"] = 4031101 -- 奔雷不息(+1)[4031101][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 奔雷不息(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["ItemChance"] = 700
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RewardItem"][1]["Id"] = 4031201 -- 安魂定魄(+1)[4031201][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 安魂定魄(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RewardItem"][1]["Id"] = 4031301 -- 夺魂(+1)[4031301][属性:8][叠加:0][金币:0], 【表格】夺魂（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 夺魂(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RewardItem"][1]["Id"] = 4033101 -- 怒海狂涛(+1)[4033101][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 怒海狂涛(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RewardItem"][1]["Id"] = 4033601 -- 狂暴净化(+1)[4033601][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 狂暴净化(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RewardItem"][1]["Id"] = 4033701 -- 饮血盛宴(+1)[4033701][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 饮血盛宴(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["ItemChance"] = 750
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RewardItem"][1]["Id"] = 4033801 -- 生命汲取(+1)[4033801][属性:8][叠加:0][金币:0], 【表格】生命汲取（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 生命汲取(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314248][2][17]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314249] = {}
	-- ===蓝色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314249][1]
	-- ===删除: 3314249,1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314249][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1]["DeleteItem"][1]["Id"] = 3314249 -- 【库】蓝色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314249][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RuneRandom[3314249][1]["DeleteItem"][1]["LogStep"] = "2[1]"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1]["LogId"] = 12001700
	-- 裂苍穹（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RewardItem"][1]["Id"] = 4021001 -- 裂苍穹(+1)[4021001][属性:8][叠加:0][金币:0], 【表格】裂苍穹（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 裂苍穹(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 星火燎原（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RewardItem"][1]["Id"] = 4020901 -- 星火燎原(+1)[4020901][属性:8][叠加:0][金币:0], 【表格】星火燎原（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 星火燎原(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 沐雨含光（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RewardItem"][1]["Id"] = 4020801 -- 沐雨含光(+1)[4020801][属性:8][叠加:0][金币:0], 【表格】沐雨含光（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 沐雨含光(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 寸拳反击（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RewardItem"][1]["Id"] = 4020701 -- 寸拳反击(+1)[4020701][属性:8][叠加:0][金币:0], 【表格】寸拳反击（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 寸拳反击(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 金刚不坏体（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RewardItem"][1]["Id"] = 4020501 -- 金刚不坏体(+1)[4020501][属性:8][叠加:0][金币:0], 【表格】金刚不坏体（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 金刚不坏体(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 无限火力（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RewardItem"][1]["Id"] = 4020301 -- 无限火力(+1)[4020301][属性:8][叠加:0][金币:0], 【表格】无限火力（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 无限火力(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·影遁（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RewardItem"][1]["Id"] = 4020401 -- 忍法·影遁(+1)[4020401][属性:8][叠加:0][金币:0], 【表格】忍法·影遁（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 忍法·影遁(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀神模式（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RewardItem"][1]["Id"] = 4020601 -- 杀神模式(+1)[4020601][属性:8][叠加:0][金币:0], 【表格】杀神模式（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 杀神模式(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 血之狂暴（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RewardItem"][1]["Id"] = 4020101 -- 血之狂暴(+1)[4020101][属性:8][叠加:0][金币:0], 【表格】血之狂暴（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 血之狂暴(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻守兼备（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RewardItem"][1]["Id"] = 4020201 -- 攻守兼备(+1)[4020201][属性:8][叠加:0][金币:0], 【表格】攻守兼备（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 攻守兼备(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷霆圣盾（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RewardItem"][1]["Id"] = 4022201 -- 雷霆圣盾(+1)[4022201][属性:8][叠加:0][金币:0], 【表格】雷霆圣盾（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 雷霆圣盾(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314249][2] = {}
	-- ===蓝色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314249][2]
	-- ===删除: 3314249,1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314249][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2]["DeleteItem"][1]["Id"] = 3314249 -- 【库】蓝色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314249][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2]["DeleteItem"][1]["LogStep"] = "2[2]"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2]["LogId"] = 12001700
	-- 裂苍穹（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RewardItem"][1]["Id"] = 4021001 -- 裂苍穹(+1)[4021001][属性:8][叠加:0][金币:0], 【表格】裂苍穹（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 裂苍穹(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 星火燎原（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RewardItem"][1]["Id"] = 4020901 -- 星火燎原(+1)[4020901][属性:8][叠加:0][金币:0], 【表格】星火燎原（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 星火燎原(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 沐雨含光（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RewardItem"][1]["Id"] = 4020801 -- 沐雨含光(+1)[4020801][属性:8][叠加:0][金币:0], 【表格】沐雨含光（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 沐雨含光(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 寸拳反击（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RewardItem"][1]["Id"] = 4020701 -- 寸拳反击(+1)[4020701][属性:8][叠加:0][金币:0], 【表格】寸拳反击（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 寸拳反击(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 金刚不坏体（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RewardItem"][1]["Id"] = 4020501 -- 金刚不坏体(+1)[4020501][属性:8][叠加:0][金币:0], 【表格】金刚不坏体（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 金刚不坏体(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 无限火力（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RewardItem"][1]["Id"] = 4020301 -- 无限火力(+1)[4020301][属性:8][叠加:0][金币:0], 【表格】无限火力（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 无限火力(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·影遁（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RewardItem"][1]["Id"] = 4020401 -- 忍法·影遁(+1)[4020401][属性:8][叠加:0][金币:0], 【表格】忍法·影遁（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 忍法·影遁(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀神模式（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RewardItem"][1]["Id"] = 4020601 -- 杀神模式(+1)[4020601][属性:8][叠加:0][金币:0], 【表格】杀神模式（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 杀神模式(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 血之狂暴（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RewardItem"][1]["Id"] = 4020101 -- 血之狂暴(+1)[4020101][属性:8][叠加:0][金币:0], 【表格】血之狂暴（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 血之狂暴(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻守兼备（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RewardItem"][1]["Id"] = 4020201 -- 攻守兼备(+1)[4020201][属性:8][叠加:0][金币:0], 【表格】攻守兼备（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻守兼备(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷霆圣盾（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RewardItem"][1]["Id"] = 4022201 -- 雷霆圣盾(+1)[4022201][属性:8][叠加:0][金币:0], 【表格】雷霆圣盾（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷霆圣盾(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314249][2][11]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314250] = {}
	-- ===稀有黄色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314250][1]
	-- ===删除: 3314250,1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314250][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1]["DeleteItem"][1]["Id"] = 3314250 -- 【库】稀有黄色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314250][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RuneRandom[3314250][1]["DeleteItem"][1]["LogStep"] = "2[1]"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1]["LogId"] = 12001700
	-- 神罗天尊（+1） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RewardItem"][1]["Id"] = 4032001 -- 神罗天征(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天尊（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 神罗天征(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+1） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RewardItem"][1]["Id"] = 4032101 -- 爆炎诀(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 爆炎诀(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+1） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RewardItem"][1]["Id"] = 4032201 -- 清心诀(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心诀（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 清心诀(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+1） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RewardItem"][1]["Id"] = 4032301 -- 天衣无缝(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 天衣无缝(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+1） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RewardItem"][1]["Id"] = 4032401 -- 祭灵诀(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 祭灵诀(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+1） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RewardItem"][1]["Id"] = 4032501 -- 横扫千军(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 横扫千军(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RewardItem"][1]["Id"] = 4032601 -- 涅槃重生(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 涅槃重生(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+1） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RewardItem"][1]["Id"] = 4032701 -- 锋芒毕露(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 锋芒毕露(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RewardItem"][1]["Id"] = 4032801 -- 魂兮归来(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 魂兮归来(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+1） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RewardItem"][1]["Id"] = 4031601 -- 玄武护体(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 玄武护体(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RewardItem"][1]["Id"] = 4031501 -- 攻城掠地(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 攻城掠地(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RewardItem"][1]["Id"] = 4031401 -- 策马扬鞭(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 策马扬鞭(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RewardItem"][1]["Id"] = 4034001 -- 乾坤护法(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤护法(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RewardItem"][1]["Id"] = 4033901 -- 斗转星移(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 斗转星移(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RewardItem"][1]["Id"] = 4033401 -- 会心一击(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 会心一击(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RewardItem"][1]["Id"] = 4034101 -- 威慑(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 威慑(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RewardItem"][1]["Id"] = 4033301 -- 致命准星(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 致命准星(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RewardItem"][1]["Id"] = 4032901 -- 例无虚发(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 例无虚发(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+1） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RewardItem"][1]["Id"] = 4033001 -- 审判(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 审判(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+1） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤妙法(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+1） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RewardItem"][1]["Attr"] = "0 1" -- 罡气护体(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+1） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RewardItem"][1]["Attr"] = "0 1" -- 沧澜破(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+1） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RewardItem"][1]["Attr"] = "0 1" -- 妙手回春(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+1） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RewardItem"][1]["Attr"] = "0 1" -- 碎魔屏障(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+1） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RewardItem"][1]["Attr"] = "0 1" -- 天地化盾(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+1） - 2.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["ItemChance"] = 250
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RewardItem"][1]["Attr"] = "0 1" -- 碎玄元(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 天行有常（+1） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RewardItem"][1]["Id"] = 4035101 -- 天行有常(+1)[4035101][属性:8][叠加:0][金币:0], 【表格】天行有常（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RewardItem"][1]["Attr"] = "0 1" -- 天行有常(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 紫气东来（+1） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RewardItem"][1]["Id"] = 4035201 -- 紫气东来(+1)[4035201][属性:8][叠加:0][金币:0], 【表格】紫气东来（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RewardItem"][1]["Attr"] = "0 1" -- 紫气东来(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][1][28]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314250][2] = {}
	-- ===稀有黄色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314250][2]
	-- ===删除: 3314250,1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314250][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2]["DeleteItem"][1]["Id"] = 3314250 -- 【库】稀有黄色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314250][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2]["DeleteItem"][1]["LogStep"] = "2[2]"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2]["LogId"] = 12001700
	-- 神罗天尊（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RewardItem"][1]["Id"] = 4032001 -- 神罗天征(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天尊（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天征(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RewardItem"][1]["Id"] = 4032101 -- 爆炎诀(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RewardItem"][1]["Id"] = 4032201 -- 清心诀(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心诀（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RewardItem"][1]["Id"] = 4032301 -- 天衣无缝(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RewardItem"][1]["Id"] = 4032401 -- 祭灵诀(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RewardItem"][1]["Id"] = 4032501 -- 横扫千军(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RewardItem"][1]["Id"] = 4032601 -- 涅槃重生(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RewardItem"][1]["Id"] = 4032701 -- 锋芒毕露(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RewardItem"][1]["Id"] = 4032801 -- 魂兮归来(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RewardItem"][1]["Id"] = 4031601 -- 玄武护体(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RewardItem"][1]["Id"] = 4031501 -- 攻城掠地(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RewardItem"][1]["Id"] = 4031401 -- 策马扬鞭(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RewardItem"][1]["Id"] = 4034001 -- 乾坤护法(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RewardItem"][1]["Id"] = 4033901 -- 斗转星移(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RewardItem"][1]["Id"] = 4033401 -- 会心一击(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RewardItem"][1]["Id"] = 4034101 -- 威慑(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RewardItem"][1]["Id"] = 4033301 -- 致命准星(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RewardItem"][1]["Id"] = 4032901 -- 例无虚发(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RewardItem"][1]["Id"] = 4033001 -- 审判(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+1）（赠） - 2.5%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["ItemChance"] = 250
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 天行有常（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RewardItem"][1]["Id"] = 4035101 -- 天行有常(+1)[4035101][属性:8][叠加:0][金币:0], 【表格】天行有常（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 天行有常(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 紫气东来（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RewardItem"][1]["Id"] = 4035201 -- 紫气东来(+1)[4035201][属性:8][叠加:0][金币:0], 【表格】紫气东来（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RewardItem"][1]["Attr"] = "0 1 3" -- 紫气东来(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314250][2][28]["RewardEffect"]["Effect"] = "angelwing"
	

	tStandardize_RewardPoolProps_RuneRandom[3314251] = {}
	-- ===稀有蓝色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314251][1]
	-- ===删除: 3314251,1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314251][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1]["DeleteItem"][1]["Id"] = 3314251 -- 【库】稀有蓝色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314251][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RuneRandom[3314251][1]["DeleteItem"][1]["LogStep"] = "2[1]"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1]["LogId"] = 12001700
	-- 子母雷旋（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RewardItem"][1]["Id"] = 4021101 -- 子母雷旋(+1)[4021101][属性:8][叠加:0][金币:0], 【表格】子母雷旋（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 子母雷旋(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎星辰（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RewardItem"][1]["Id"] = 4021201 -- 碎星辰(+1)[4021201][属性:8][叠加:0][金币:0], 【表格】碎星辰（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 碎星辰(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 天尊降世（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RewardItem"][1]["Id"] = 4021901 -- 天尊降世(+1)[4021901][属性:8][叠加:0][金币:0], 【表格】天尊降世（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 天尊降世(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 时空传送（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RewardItem"][1]["Id"] = 4021801 -- 时空传送(+1)[4021801][属性:8][叠加:0][金币:0], 【表格】时空传送（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 时空传送(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙影冲拳（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RewardItem"][1]["Id"] = 4021301 -- 龙影冲拳(+1)[4021301][属性:8][叠加:0][金币:0], 【表格】龙影冲拳（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 龙影冲拳(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒意狂击（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RewardItem"][1]["Id"] = 4022001 -- 怒意狂击(+1)[4022001][属性:8][叠加:0][金币:0], 【表格】怒意狂击（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 怒意狂击(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 星飞云散（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RewardItem"][1]["Id"] = 4021501 -- 星飞云散(+1)[4021501][属性:8][叠加:0][金币:0], 【表格】星飞云散（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 星飞云散(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·决斗（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RewardItem"][1]["Id"] = 4021601 -- 忍法·决斗(+1)[4021601][属性:8][叠加:0][金币:0], 【表格】忍法·决斗（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍法·决斗(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 海神诅咒（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RewardItem"][1]["Id"] = 4021701 -- 海神诅咒(+1)[4021701][属性:8][叠加:0][金币:0], 【表格】海神诅咒（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 海神诅咒(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 嗜血狂潮（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RewardItem"][1]["Id"] = 4023001 -- 嗜血狂潮(+1)[4023001][属性:8][叠加:0][金币:0], 【表格】嗜血狂潮（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 嗜血狂潮(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 反击风暴（+1） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RewardItem"][1]["Id"] = 4021401 -- 反击风暴(+1)[4021401][属性:8][叠加:0][金币:0], 【表格】反击风暴（+1）
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 反击风暴(+1)*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RuneRandom[3314251][2] = {}
	-- ===稀有蓝色神纹礼包
	-- ===索引:tStandardize_RewardPoolProps_RuneRandom[3314251][2]
	-- ===删除: 3314251,1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RuneRandom[3314251][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2]["DeleteItem"][1]["Id"] = 3314251 -- 【库】稀有蓝色神纹礼包[属性:8]
	tStandardize_RewardPoolProps_RuneRandom[3314251][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2]["DeleteItem"][1]["LogStep"] = "2[2]"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2]["LogId"] = 12001700
	-- 子母雷旋（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RewardItem"][1]["Id"] = 4021101 -- 子母雷旋(+1)[4021101][属性:8][叠加:0][金币:0], 【表格】子母雷旋（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 子母雷旋(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎星辰（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RewardItem"][1]["Id"] = 4021201 -- 碎星辰(+1)[4021201][属性:8][叠加:0][金币:0], 【表格】碎星辰（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎星辰(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 天尊降世（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RewardItem"][1]["Id"] = 4021901 -- 天尊降世(+1)[4021901][属性:8][叠加:0][金币:0], 【表格】天尊降世（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 天尊降世(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 时空传送（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RewardItem"][1]["Id"] = 4021801 -- 时空传送(+1)[4021801][属性:8][叠加:0][金币:0], 【表格】时空传送（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 时空传送(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙影冲拳（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RewardItem"][1]["Id"] = 4021301 -- 龙影冲拳(+1)[4021301][属性:8][叠加:0][金币:0], 【表格】龙影冲拳（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙影冲拳(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒意狂击（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RewardItem"][1]["Id"] = 4022001 -- 怒意狂击(+1)[4022001][属性:8][叠加:0][金币:0], 【表格】怒意狂击（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 怒意狂击(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 星飞云散（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RewardItem"][1]["Id"] = 4021501 -- 星飞云散(+1)[4021501][属性:8][叠加:0][金币:0], 【表格】星飞云散（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 星飞云散(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·决斗（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RewardItem"][1]["Id"] = 4021601 -- 忍法·决斗(+1)[4021601][属性:8][叠加:0][金币:0], 【表格】忍法·决斗（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 忍法·决斗(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 海神诅咒（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RewardItem"][1]["Id"] = 4021701 -- 海神诅咒(+1)[4021701][属性:8][叠加:0][金币:0], 【表格】海神诅咒（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 海神诅咒(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 嗜血狂潮（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RewardItem"][1]["Id"] = 4023001 -- 嗜血狂潮(+1)[4023001][属性:8][叠加:0][金币:0], 【表格】嗜血狂潮（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 嗜血狂潮(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 反击风暴（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RewardItem"][1]["Id"] = 4021401 -- 反击风暴(+1)[4021401][属性:8][叠加:0][金币:0], 【表格】反击风暴（+1）（赠）
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 反击风暴(+1)（赠）*1
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RuneRandom[3314251][2][11]["RewardEffect"]["Effect"] = "angelwing"

-- 神纹碎片随机表
local tStandardize_RewardPoolProps_RunePieceRandom = {}
	-- ===红色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]
	-- ===删除: 3314252,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314252] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]["ItemChanceSum"] = 12000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]["DeleteItem"][1]["Id"] = 3314252 -- 【库】红色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1]["LogId"] = 12001700
	-- 狂风刃 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RewardItem"][1]["Id"] = 4010901 -- 狂风刃[4010901][属性:8][叠加:0][金币:0], 【表格】狂风刃
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 狂风刃*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 焚天诀 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RewardItem"][1]["Id"] = 4010801 -- 焚天诀[4010801][属性:8][叠加:0][金币:0], 【表格】焚天诀
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 焚天诀*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 逆水寒 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RewardItem"][1]["Id"] = 4010701 -- 逆水寒[4010701][属性:8][叠加:0][金币:0], 【表格】逆水寒
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 逆水寒*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 迷踪步 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RewardItem"][1]["Id"] = 4010601 -- 迷踪步[4010601][属性:8][叠加:0][金币:0], 【表格】迷踪步
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 迷踪步*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 不动明王身 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RewardItem"][1]["Id"] = 4010401 -- 不动明王身[4010401][属性:8][叠加:0][金币:0], 【表格】不动明王身
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 不动明王身*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 寒冰箭雨 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RewardItem"][1]["Id"] = 4010201 -- 寒冰箭雨[4010201][属性:8][叠加:0][金币:0], 【表格】寒冰箭雨
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 寒冰箭雨*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·暗杀 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RewardItem"][1]["Id"] = 4010301 -- 忍法·暗杀[4010301][属性:8][叠加:0][金币:0], 【表格】忍法·暗杀
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 忍法·暗杀*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 潮汐奔涌 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RewardItem"][1]["Id"] = 4010501 -- 潮汐奔涌[4010501][属性:8][叠加:0][金币:0], 【表格】潮汐奔涌
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 潮汐奔涌*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 融会贯通 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RewardItem"][1]["Id"] = 4010001 -- 融会贯通[4010001][属性:8][叠加:0][金币:0], 【表格】融会贯通
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 融会贯通*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 挫志投掷 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RewardItem"][1]["Id"] = 4010101 -- 挫志投掷[4010101][属性:8][叠加:0][金币:0], 【表格】挫志投掷
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 挫志投掷*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗志昂扬 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RewardItem"][1]["Id"] = 4011401 -- 斗志昂扬[4011401][属性:8][叠加:0][金币:0], 【表格】斗志昂扬
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 斗志昂扬*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 连环风暴 - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RewardItem"][1]["Id"] = 4011501 -- 连环风暴[4011501][属性:8][叠加:0][金币:0], 【表格】连环风暴
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 连环风暴*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][1][12]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2] = {}
	-- ===红色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]
	-- ===删除: 3314252,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]["ItemChanceSum"] = 12000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]["DeleteItem"][1]["Id"] = 3314252 -- 【库】红色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2]["LogId"] = 12001700
	-- 狂风刃（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RewardItem"][1]["Id"] = 4010901 -- 狂风刃[4010901][属性:8][叠加:0][金币:0], 【表格】狂风刃（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 狂风刃（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 焚天诀（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RewardItem"][1]["Id"] = 4010801 -- 焚天诀[4010801][属性:8][叠加:0][金币:0], 【表格】焚天诀（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 焚天诀（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 逆水寒（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RewardItem"][1]["Id"] = 4010701 -- 逆水寒[4010701][属性:8][叠加:0][金币:0], 【表格】逆水寒（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 逆水寒（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 迷踪步（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RewardItem"][1]["Id"] = 4010601 -- 迷踪步[4010601][属性:8][叠加:0][金币:0], 【表格】迷踪步（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 迷踪步（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 不动明王身（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RewardItem"][1]["Id"] = 4010401 -- 不动明王身[4010401][属性:8][叠加:0][金币:0], 【表格】不动明王身（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 不动明王身（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 寒冰箭雨（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RewardItem"][1]["Id"] = 4010201 -- 寒冰箭雨[4010201][属性:8][叠加:0][金币:0], 【表格】寒冰箭雨（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 寒冰箭雨（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·暗杀（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RewardItem"][1]["Id"] = 4010301 -- 忍法·暗杀[4010301][属性:8][叠加:0][金币:0], 【表格】忍法·暗杀（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 忍法·暗杀（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 潮汐奔涌（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RewardItem"][1]["Id"] = 4010501 -- 潮汐奔涌[4010501][属性:8][叠加:0][金币:0], 【表格】潮汐奔涌（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 潮汐奔涌（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 融会贯通（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RewardItem"][1]["Id"] = 4010001 -- 融会贯通[4010001][属性:8][叠加:0][金币:0], 【表格】融会贯通（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 融会贯通（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 挫志投掷（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RewardItem"][1]["Id"] = 4010101 -- 挫志投掷[4010101][属性:8][叠加:0][金币:0], 【表格】挫志投掷（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 挫志投掷（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗志昂扬（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RewardItem"][1]["Id"] = 4011401 -- 斗志昂扬[4011401][属性:8][叠加:0][金币:0], 【表格】斗志昂扬（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗志昂扬（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 连环风暴（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RewardItem"][1]["Id"] = 4011501 -- 连环风暴[4011501][属性:8][叠加:0][金币:0], 【表格】连环风暴（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 连环风暴（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][2][12]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3] = {}
	-- ===红色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]
	-- ===删除: 3314252,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["DeleteItem"][1]["Id"] = 3314252 -- 【库】红色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["RewardItem"][1]["Id"] = 3314252 -- 红色神纹碎片[3314252][属性:8][叠加:10000][金币:0], 【表格】2个红色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4] = {}
	-- ===红色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]
	-- ===删除: 3314252,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["DeleteItem"][1]["Id"] = 3314252 -- 【库】红色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["RewardItem"][1]["Id"] = 3314252 -- 红色神纹碎片[3314252][属性:8][叠加:10000][金币:0], 【表格】2个红色神纹碎片（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 红色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314252][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314253] = {}
	-- ===黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]
	-- ===删除: 3314253,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]["ItemChanceSum"] = 1e+018
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]["DeleteItem"][1]["Id"] = 3314253 -- 【库】黄色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1]["LogId"] = 12001700
	-- 破玄元（+1） - 3%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["ItemChance"] = 3e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RewardItem"][1]["Id"] = 4030101 -- 破玄元(+1)[4030101][属性:8][叠加:0][金币:0], 【表格】破玄元（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 破玄元(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+1） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RewardItem"][1]["Id"] = 4030201 -- 撼星诀(+1)[4030201][属性:8][叠加:0][金币:0], 【表格】撼星诀（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 撼星诀(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+1） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RewardItem"][1]["Id"] = 4030301 -- 血回元(+1)[4030301][属性:8][叠加:0][金币:0], 【表格】血回元（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 血回元(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RewardItem"][1]["Id"] = 4030401 -- 万物生(+1)[4030401][属性:8][叠加:0][金币:0], 【表格】万物生（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 万物生(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+1） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RewardItem"][1]["Id"] = 4030501 -- 无懈可击(+1)[4030501][属性:8][叠加:0][金币:0], 【表格】无懈可击（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 无懈可击(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RewardItem"][1]["Id"] = 4030601 -- 狂暴克星(+1)[4030601][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 狂暴克星(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RewardItem"][1]["Id"] = 4030701 -- 风卷残云(+1)[4030701][属性:8][叠加:0][金币:0], 【表格】风卷残云（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 风卷残云(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RewardItem"][1]["Id"] = 4030801 -- 回灵术(+1)[4030801][属性:8][叠加:0][金币:0], 【表格】回灵术（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 回灵术(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+1） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RewardItem"][1]["Id"] = 4030901 -- 杀破狼(+1)[4030901][属性:8][叠加:0][金币:0], 【表格】杀破狼（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 杀破狼(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+1） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["ItemChance"] = 2e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RewardItem"][1]["Id"] = 4031001 -- 追命(+1)[4031001][属性:8][叠加:0][金币:0], 【表格】追命（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 追命(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+1） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RewardItem"][1]["Id"] = 4031101 -- 奔雷不息(+1)[4031101][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 奔雷不息(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+1） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RewardItem"][1]["Id"] = 4031201 -- 安魂定魄(+1)[4031201][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 安魂定魄(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+1） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["ItemChance"] = 2e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RewardItem"][1]["Id"] = 4031301 -- 夺魂(+1)[4031301][属性:8][叠加:0][金币:0], 【表格】夺魂（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 夺魂(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+1） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RewardItem"][1]["Id"] = 4033101 -- 怒海狂涛(+1)[4033101][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 怒海狂涛(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+1） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RewardItem"][1]["Id"] = 4033601 -- 狂暴净化(+1)[4033601][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 狂暴净化(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+1） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RewardItem"][1]["Id"] = 4033701 -- 饮血盛宴(+1)[4033701][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 饮血盛宴(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+1） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RewardItem"][1]["Id"] = 4033801 -- 生命汲取(+1)[4033801][属性:8][叠加:0][金币:0], 【表格】生命汲取（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 生命汲取(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][1][17]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2] = {}
	-- ===黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]
	-- ===删除: 3314253,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]["ItemChanceSum"] = 1e+018
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]["DeleteItem"][1]["Id"] = 3314253 -- 【库】黄色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2]["LogId"] = 12001700
	-- 破玄元（+1）（赠） - 3%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["ItemChance"] = 3e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RewardItem"][1]["Id"] = 4030101 -- 破玄元(+1)[4030101][属性:8][叠加:0][金币:0], 【表格】破玄元（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 破玄元(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 撼星诀（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RewardItem"][1]["Id"] = 4030201 -- 撼星诀(+1)[4030201][属性:8][叠加:0][金币:0], 【表格】撼星诀（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 撼星诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 血回元（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RewardItem"][1]["Id"] = 4030301 -- 血回元(+1)[4030301][属性:8][叠加:0][金币:0], 【表格】血回元（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 血回元(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万物生（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RewardItem"][1]["Id"] = 4030401 -- 万物生(+1)[4030401][属性:8][叠加:0][金币:0], 【表格】万物生（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 万物生(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 无懈可击（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RewardItem"][1]["Id"] = 4030501 -- 无懈可击(+1)[4030501][属性:8][叠加:0][金币:0], 【表格】无懈可击（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 无懈可击(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴克星（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RewardItem"][1]["Id"] = 4030601 -- 狂暴克星(+1)[4030601][属性:8][叠加:0][金币:0], 【表格】狂暴克星（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 狂暴克星(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 风卷残云（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RewardItem"][1]["Id"] = 4030701 -- 风卷残云(+1)[4030701][属性:8][叠加:0][金币:0], 【表格】风卷残云（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 风卷残云(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 回灵术（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["ItemChance"] = 5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RewardItem"][1]["Id"] = 4030801 -- 回灵术(+1)[4030801][属性:8][叠加:0][金币:0], 【表格】回灵术（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 回灵术(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀破狼（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RewardItem"][1]["Id"] = 4030901 -- 杀破狼(+1)[4030901][属性:8][叠加:0][金币:0], 【表格】杀破狼（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 杀破狼(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 追命（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["ItemChance"] = 2e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RewardItem"][1]["Id"] = 4031001 -- 追命(+1)[4031001][属性:8][叠加:0][金币:0], 【表格】追命（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 追命(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 奔雷不息（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RewardItem"][1]["Id"] = 4031101 -- 奔雷不息(+1)[4031101][属性:8][叠加:0][金币:0], 【表格】奔雷不息（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 奔雷不息(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 安魂定魄（+1）（赠） - 7%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["ItemChance"] = 7e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RewardItem"][1]["Id"] = 4031201 -- 安魂定魄(+1)[4031201][属性:8][叠加:0][金币:0], 【表格】安魂定魄（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 安魂定魄(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 夺魂（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["ItemChance"] = 2e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RewardItem"][1]["Id"] = 4031301 -- 夺魂(+1)[4031301][属性:8][叠加:0][金币:0], 【表格】夺魂（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 夺魂(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒海狂涛（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RewardItem"][1]["Id"] = 4033101 -- 怒海狂涛(+1)[4033101][属性:8][叠加:0][金币:0], 【表格】怒海狂涛（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 怒海狂涛(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 狂暴净化（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RewardItem"][1]["Id"] = 4033601 -- 狂暴净化(+1)[4033601][属性:8][叠加:0][金币:0], 【表格】狂暴净化（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 狂暴净化(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 饮血盛宴（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RewardItem"][1]["Id"] = 4033701 -- 饮血盛宴(+1)[4033701][属性:8][叠加:0][金币:0], 【表格】饮血盛宴（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 饮血盛宴(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 生命汲取（+1）（赠） - 7.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["ItemChance"] = 7.5e+016
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RewardItem"][1]["Id"] = 4033801 -- 生命汲取(+1)[4033801][属性:8][叠加:0][金币:0], 【表格】生命汲取（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 生命汲取(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][2][17]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3] = {}
	-- ===赌黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]
	-- ===删除: 3314253,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["DeleteItem"][1]["Id"] = 3314253 -- 【库】黄色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["RewardItem"][1]["Id"] = 3314253 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】2个黄色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4] = {}
	-- ===赌黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]
	-- ===删除: 3314253,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["DeleteItem"][1]["Id"] = 3314253 -- 【库】黄色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["RewardItem"][1]["Id"] = 3314253 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】2个黄色神纹碎片（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 黄色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314253][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314254] = {}
	-- ===蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]
	-- ===删除: 3314254,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]["DeleteItem"][1]["Id"] = 3314254 -- 【库】蓝色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1]["LogId"] = 12001700
	-- 裂苍穹（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RewardItem"][1]["Id"] = 4021001 -- 裂苍穹(+1)[4021001][属性:8][叠加:0][金币:0], 【表格】裂苍穹（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 裂苍穹(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 星火燎原（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RewardItem"][1]["Id"] = 4020901 -- 星火燎原(+1)[4020901][属性:8][叠加:0][金币:0], 【表格】星火燎原（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 星火燎原(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 沐雨含光（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RewardItem"][1]["Id"] = 4020801 -- 沐雨含光(+1)[4020801][属性:8][叠加:0][金币:0], 【表格】沐雨含光（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 沐雨含光(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 寸拳反击（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RewardItem"][1]["Id"] = 4020701 -- 寸拳反击(+1)[4020701][属性:8][叠加:0][金币:0], 【表格】寸拳反击（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 寸拳反击(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 金刚不坏体（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RewardItem"][1]["Id"] = 4020501 -- 金刚不坏体(+1)[4020501][属性:8][叠加:0][金币:0], 【表格】金刚不坏体（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 金刚不坏体(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 无限火力（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RewardItem"][1]["Id"] = 4020301 -- 无限火力(+1)[4020301][属性:8][叠加:0][金币:0], 【表格】无限火力（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 无限火力(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·影遁（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RewardItem"][1]["Id"] = 4020401 -- 忍法·影遁(+1)[4020401][属性:8][叠加:0][金币:0], 【表格】忍法·影遁（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 忍法·影遁(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀神模式（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RewardItem"][1]["Id"] = 4020601 -- 杀神模式(+1)[4020601][属性:8][叠加:0][金币:0], 【表格】杀神模式（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 杀神模式(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 血之狂暴（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RewardItem"][1]["Id"] = 4020101 -- 血之狂暴(+1)[4020101][属性:8][叠加:0][金币:0], 【表格】血之狂暴（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 血之狂暴(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻守兼备（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RewardItem"][1]["Id"] = 4020201 -- 攻守兼备(+1)[4020201][属性:8][叠加:0][金币:0], 【表格】攻守兼备（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 攻守兼备(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷霆圣盾（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RewardItem"][1]["Id"] = 4022201 -- 雷霆圣盾(+1)[4022201][属性:8][叠加:0][金币:0], 【表格】雷霆圣盾（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 雷霆圣盾(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2] = {}
	-- ===蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]
	-- ===删除: 3314254,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]["DeleteItem"][1]["Id"] = 3314254 -- 【库】蓝色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2]["LogId"] = 12001700
	-- 裂苍穹（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RewardItem"][1]["Id"] = 4021001 -- 裂苍穹(+1)[4021001][属性:8][叠加:0][金币:0], 【表格】裂苍穹（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 裂苍穹(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 星火燎原（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RewardItem"][1]["Id"] = 4020901 -- 星火燎原(+1)[4020901][属性:8][叠加:0][金币:0], 【表格】星火燎原（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 星火燎原(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 沐雨含光（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RewardItem"][1]["Id"] = 4020801 -- 沐雨含光(+1)[4020801][属性:8][叠加:0][金币:0], 【表格】沐雨含光（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 沐雨含光(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 寸拳反击（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RewardItem"][1]["Id"] = 4020701 -- 寸拳反击(+1)[4020701][属性:8][叠加:0][金币:0], 【表格】寸拳反击（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 寸拳反击(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 金刚不坏体（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RewardItem"][1]["Id"] = 4020501 -- 金刚不坏体(+1)[4020501][属性:8][叠加:0][金币:0], 【表格】金刚不坏体（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 金刚不坏体(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 无限火力（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RewardItem"][1]["Id"] = 4020301 -- 无限火力(+1)[4020301][属性:8][叠加:0][金币:0], 【表格】无限火力（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 无限火力(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·影遁（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RewardItem"][1]["Id"] = 4020401 -- 忍法·影遁(+1)[4020401][属性:8][叠加:0][金币:0], 【表格】忍法·影遁（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 忍法·影遁(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 杀神模式（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RewardItem"][1]["Id"] = 4020601 -- 杀神模式(+1)[4020601][属性:8][叠加:0][金币:0], 【表格】杀神模式（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 杀神模式(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 血之狂暴（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RewardItem"][1]["Id"] = 4020101 -- 血之狂暴(+1)[4020101][属性:8][叠加:0][金币:0], 【表格】血之狂暴（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 血之狂暴(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻守兼备（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RewardItem"][1]["Id"] = 4020201 -- 攻守兼备(+1)[4020201][属性:8][叠加:0][金币:0], 【表格】攻守兼备（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻守兼备(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 雷霆圣盾（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RewardItem"][1]["Id"] = 4022201 -- 雷霆圣盾(+1)[4022201][属性:8][叠加:0][金币:0], 【表格】雷霆圣盾（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 雷霆圣盾(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][2][11]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3] = {}
	-- ===赌蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]
	-- ===删除: 3314254,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["DeleteItem"][1]["Id"] = 3314254 -- 【库】蓝色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["RewardItem"][1]["Id"] = 3314254 -- 蓝色神纹碎片[3314254][属性:8][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4] = {}
	-- ===赌蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]
	-- ===删除: 3314254,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["DeleteItem"][1]["Id"] = 3314254 -- 【库】蓝色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["RewardItem"][1]["Id"] = 3314254 -- 蓝色神纹碎片[3314254][属性:8][叠加:10000][金币:0], 【表格】2个蓝色神纹碎片（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 蓝色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314254][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314255] = {}
	-- ===稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]
	-- ===删除: 3314255,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]["DeleteItem"][1]["Id"] = 3314255 -- 【库】稀有黄色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1]["LogId"] = 12001700
	-- 神罗天尊（+1） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RewardItem"][1]["Id"] = 4032001 -- 神罗天征(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天尊（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 神罗天征(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+1） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RewardItem"][1]["Id"] = 4032101 -- 爆炎诀(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 爆炎诀(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+1） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RewardItem"][1]["Id"] = 4032201 -- 清心诀(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心诀（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 清心诀(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+1） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RewardItem"][1]["Id"] = 4032301 -- 天衣无缝(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 天衣无缝(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RewardItem"][1]["Id"] = 4032401 -- 祭灵诀(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 祭灵诀(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RewardItem"][1]["Id"] = 4032501 -- 横扫千军(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 横扫千军(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RewardItem"][1]["Id"] = 4032601 -- 涅槃重生(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 涅槃重生(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RewardItem"][1]["Id"] = 4032701 -- 锋芒毕露(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 锋芒毕露(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RewardItem"][1]["Id"] = 4032801 -- 魂兮归来(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 魂兮归来(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RewardItem"][1]["Id"] = 4031601 -- 玄武护体(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 玄武护体(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RewardItem"][1]["Id"] = 4031501 -- 攻城掠地(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 攻城掠地(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RewardItem"][1]["Id"] = 4031401 -- 策马扬鞭(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 策马扬鞭(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RewardItem"][1]["Id"] = 4034001 -- 乾坤护法(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤护法(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RewardItem"][1]["Id"] = 4033901 -- 斗转星移(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 斗转星移(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RewardItem"][1]["Id"] = 4033401 -- 会心一击(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 会心一击(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RewardItem"][1]["Id"] = 4034101 -- 威慑(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 威慑(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RewardItem"][1]["Id"] = 4033301 -- 致命准星(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 致命准星(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RewardItem"][1]["Id"] = 4032901 -- 例无虚发(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 例无虚发(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RewardItem"][1]["Id"] = 4033001 -- 审判(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 审判(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤妙法(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RewardItem"][1]["Attr"] = "0 1" -- 罡气护体(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RewardItem"][1]["Attr"] = "0 1" -- 沧澜破(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RewardItem"][1]["Attr"] = "0 1" -- 妙手回春(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RewardItem"][1]["Attr"] = "0 1" -- 碎魔屏障(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RewardItem"][1]["Attr"] = "0 1" -- 天地化盾(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+1） - 2.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["ItemChance"] = 250
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RewardItem"][1]["Attr"] = "0 1" -- 碎玄元(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 天行有常（+1） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RewardItem"][1]["Id"] = 4035101 -- 天行有常(+1)[4035101][属性:8][叠加:0][金币:0], 【表格】天行有常（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RewardItem"][1]["Attr"] = "0 1" -- 天行有常(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 紫气东来（+1） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RewardItem"][1]["Id"] = 4035201 -- 紫气东来(+1)[4035201][属性:8][叠加:0][金币:0], 【表格】紫气东来（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RewardItem"][1]["Attr"] = "0 1" -- 紫气东来(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][1][28]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2] = {}
	-- ===稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]
	-- ===删除: 3314255,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]["DeleteItem"][1]["Id"] = 3314255 -- 【库】稀有黄色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2]["LogId"] = 12001700
	-- 神罗天尊（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RewardItem"][1]["Id"] = 4032001 -- 神罗天征(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天尊（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天征(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RewardItem"][1]["Id"] = 4032101 -- 爆炎诀(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RewardItem"][1]["Id"] = 4032201 -- 清心诀(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心诀（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+1）（赠） - 4%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["ItemChance"] = 400
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RewardItem"][1]["Id"] = 4032301 -- 天衣无缝(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RewardItem"][1]["Id"] = 4032401 -- 祭灵诀(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RewardItem"][1]["Id"] = 4032501 -- 横扫千军(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RewardItem"][1]["Id"] = 4032601 -- 涅槃重生(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RewardItem"][1]["Id"] = 4032701 -- 锋芒毕露(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RewardItem"][1]["Id"] = 4032801 -- 魂兮归来(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RewardItem"][1]["Id"] = 4031601 -- 玄武护体(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RewardItem"][1]["Id"] = 4031501 -- 攻城掠地(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RewardItem"][1]["Id"] = 4031401 -- 策马扬鞭(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RewardItem"][1]["Id"] = 4034001 -- 乾坤护法(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RewardItem"][1]["Id"] = 4033901 -- 斗转星移(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RewardItem"][1]["Id"] = 4033401 -- 会心一击(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RewardItem"][1]["Id"] = 4034101 -- 威慑(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RewardItem"][1]["Id"] = 4033301 -- 致命准星(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RewardItem"][1]["Id"] = 4032901 -- 例无虚发(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RewardItem"][1]["Id"] = 4033001 -- 审判(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+1）（赠） - 2.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["ItemChance"] = 250
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][26]["RewardEffect"]["Effect"] = "angelwing"
	-- 天行有常（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RewardItem"][1]["Id"] = 4035101 -- 天行有常(+1)[4035101][属性:8][叠加:0][金币:0], 【表格】天行有常（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RewardItem"][1]["Attr"] = "0 1 3" -- 天行有常(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][27]["RewardEffect"]["Effect"] = "angelwing"
	-- 紫气东来（+1）（赠） - 2%
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["ItemChance"] = 200
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RewardItem"][1]["Id"] = 4035201 -- 紫气东来(+1)[4035201][属性:8][叠加:0][金币:0], 【表格】紫气东来（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RewardItem"][1]["Attr"] = "0 1 3" -- 紫气东来(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][2][28]["RewardEffect"]["Effect"] = "angelwing"




	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3] = {}
	-- ===赌稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]
	-- ===删除: 3314255,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["DeleteItem"][1]["Id"] = 3314255 -- 【库】稀有黄色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】2个稀有黄色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["RewardItem"][1]["Attr"] = "0 2" -- 稀有黄色神纹碎片*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4] = {}
	-- ===赌稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]
	-- ===删除: 3314255,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["DeleteItem"][1]["Id"] = 3314255 -- 【库】稀有黄色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】2个稀有黄色神纹碎片（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 稀有黄色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314255][4]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314256] = {}
	-- ===稀有蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]
	-- ===删除: 3314256,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]["DeleteItem"][1]["Id"] = 3314256 -- 【库】稀有蓝色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1]["LogId"] = 12001700
	-- 子母雷旋（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RewardItem"][1]["Id"] = 4021101 -- 子母雷旋(+1)[4021101][属性:8][叠加:0][金币:0], 【表格】子母雷旋（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 子母雷旋(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎星辰（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RewardItem"][1]["Id"] = 4021201 -- 碎星辰(+1)[4021201][属性:8][叠加:0][金币:0], 【表格】碎星辰（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 碎星辰(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 天尊降世（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RewardItem"][1]["Id"] = 4021901 -- 天尊降世(+1)[4021901][属性:8][叠加:0][金币:0], 【表格】天尊降世（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 天尊降世(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 时空传送（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RewardItem"][1]["Id"] = 4021801 -- 时空传送(+1)[4021801][属性:8][叠加:0][金币:0], 【表格】时空传送（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 时空传送(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙影冲拳（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RewardItem"][1]["Id"] = 4021301 -- 龙影冲拳(+1)[4021301][属性:8][叠加:0][金币:0], 【表格】龙影冲拳（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 龙影冲拳(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒意狂击（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RewardItem"][1]["Id"] = 4022001 -- 怒意狂击(+1)[4022001][属性:8][叠加:0][金币:0], 【表格】怒意狂击（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 怒意狂击(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 星飞云散（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RewardItem"][1]["Id"] = 4021501 -- 星飞云散(+1)[4021501][属性:8][叠加:0][金币:0], 【表格】星飞云散（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 星飞云散(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·决斗（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RewardItem"][1]["Id"] = 4021601 -- 忍法·决斗(+1)[4021601][属性:8][叠加:0][金币:0], 【表格】忍法·决斗（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 忍法·决斗(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 海神诅咒（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RewardItem"][1]["Id"] = 4021701 -- 海神诅咒(+1)[4021701][属性:8][叠加:0][金币:0], 【表格】海神诅咒（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 海神诅咒(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 嗜血狂潮（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RewardItem"][1]["Id"] = 4023001 -- 嗜血狂潮(+1)[4023001][属性:8][叠加:0][金币:0], 【表格】嗜血狂潮（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 嗜血狂潮(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 反击风暴（+1） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RewardItem"][1]["Id"] = 4021401 -- 反击风暴(+1)[4021401][属性:8][叠加:0][金币:0], 【表格】反击风暴（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 反击风暴(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2] = {}
	-- ===稀有蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]
	-- ===删除: 3314256,20
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]["ItemChanceSum"] = 11000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]["DeleteItem"][1]["Id"] = 3314256 -- 【库】稀有蓝色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2]["LogId"] = 12001700
	-- 子母雷旋（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RewardItem"][1]["Id"] = 4021101 -- 子母雷旋(+1)[4021101][属性:8][叠加:0][金币:0], 【表格】子母雷旋（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 子母雷旋(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎星辰（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RewardItem"][1]["Id"] = 4021201 -- 碎星辰(+1)[4021201][属性:8][叠加:0][金币:0], 【表格】碎星辰（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎星辰(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 天尊降世（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RewardItem"][1]["Id"] = 4021901 -- 天尊降世(+1)[4021901][属性:8][叠加:0][金币:0], 【表格】天尊降世（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 天尊降世(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 时空传送（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RewardItem"][1]["Id"] = 4021801 -- 时空传送(+1)[4021801][属性:8][叠加:0][金币:0], 【表格】时空传送（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 时空传送(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙影冲拳（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RewardItem"][1]["Id"] = 4021301 -- 龙影冲拳(+1)[4021301][属性:8][叠加:0][金币:0], 【表格】龙影冲拳（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 龙影冲拳(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 怒意狂击（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RewardItem"][1]["Id"] = 4022001 -- 怒意狂击(+1)[4022001][属性:8][叠加:0][金币:0], 【表格】怒意狂击（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 怒意狂击(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 星飞云散（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RewardItem"][1]["Id"] = 4021501 -- 星飞云散(+1)[4021501][属性:8][叠加:0][金币:0], 【表格】星飞云散（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 星飞云散(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 忍法·决斗（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RewardItem"][1]["Id"] = 4021601 -- 忍法·决斗(+1)[4021601][属性:8][叠加:0][金币:0], 【表格】忍法·决斗（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 忍法·决斗(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 海神诅咒（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RewardItem"][1]["Id"] = 4021701 -- 海神诅咒(+1)[4021701][属性:8][叠加:0][金币:0], 【表格】海神诅咒（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 海神诅咒(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 嗜血狂潮（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RewardItem"][1]["Id"] = 4023001 -- 嗜血狂潮(+1)[4023001][属性:8][叠加:0][金币:0], 【表格】嗜血狂潮（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 嗜血狂潮(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 反击风暴（+1）（赠） - 10%
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["ItemChance"] = 1000
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RewardItem"][1]["Id"] = 4021401 -- 反击风暴(+1)[4021401][属性:8][叠加:0][金币:0], 【表格】反击风暴（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 反击风暴(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][2][11]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3] = {}
	-- ===赌稀有蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]
	-- ===删除: 3314256,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["DeleteItem"][1]["Id"] = 3314256 -- 【库】稀有蓝色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["RewardItem"][1]["Id"] = 3314256 -- 稀有蓝色神纹碎片[3314256][属性:8][叠加:10000][金币:0], 【表格】2个稀有蓝色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["RewardItem"][1]["Attr"] = "0 2" -- 稀有蓝色神纹碎片*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4] = {}
	-- ===赌稀有蓝色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]
	-- ===删除: 3314256,1
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["DeleteItem"][1]["Id"] = 3314256 -- 【库】稀有蓝色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["RewardItem"][1]["Id"] = 3314256 -- 稀有蓝色神纹碎片[3314256][属性:8][叠加:10000][金币:0], 【表格】2个稀有蓝色神纹碎片（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 稀有蓝色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3314256][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tStandardize_RewardPoolProps_RunePieceRandom[3330765] = {}
	-- ===稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]
	-- ===删除: 3330765,20
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]["DeleteItem"][1]["Id"] = 3330765 -- 【库】稀有黄色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1]["LogId"] = 12001700
	-- 神罗天尊（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RewardItem"][1]["Id"] = 4032001 -- 神罗天征(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天尊（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 神罗天征(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RewardItem"][1]["Id"] = 4032101 -- 爆炎诀(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 爆炎诀(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RewardItem"][1]["Id"] = 4032201 -- 清心诀(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心诀（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 清心诀(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RewardItem"][1]["Id"] = 4032301 -- 天衣无缝(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RewardItem"][1]["Attr"] = "0 1" -- 天衣无缝(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RewardItem"][1]["Id"] = 4032401 -- 祭灵诀(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RewardItem"][1]["Attr"] = "0 1" -- 祭灵诀(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RewardItem"][1]["Id"] = 4032501 -- 横扫千军(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 横扫千军(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RewardItem"][1]["Id"] = 4032601 -- 涅槃重生(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RewardItem"][1]["Attr"] = "0 1" -- 涅槃重生(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RewardItem"][1]["Id"] = 4032701 -- 锋芒毕露(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RewardItem"][1]["Attr"] = "0 1" -- 锋芒毕露(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RewardItem"][1]["Id"] = 4032801 -- 魂兮归来(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 魂兮归来(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+1） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RewardItem"][1]["Id"] = 4031601 -- 玄武护体(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RewardItem"][1]["Attr"] = "0 1" -- 玄武护体(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RewardItem"][1]["Id"] = 4031501 -- 攻城掠地(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RewardItem"][1]["Attr"] = "0 1" -- 攻城掠地(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RewardItem"][1]["Id"] = 4031401 -- 策马扬鞭(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RewardItem"][1]["Attr"] = "0 1" -- 策马扬鞭(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RewardItem"][1]["Id"] = 4034001 -- 乾坤护法(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤护法(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RewardItem"][1]["Id"] = 4033901 -- 斗转星移(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RewardItem"][1]["Attr"] = "0 1" -- 斗转星移(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RewardItem"][1]["Id"] = 4033401 -- 会心一击(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RewardItem"][1]["Attr"] = "0 1" -- 会心一击(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RewardItem"][1]["Id"] = 4034101 -- 威慑(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RewardItem"][1]["Attr"] = "0 1" -- 威慑(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RewardItem"][1]["Id"] = 4033301 -- 致命准星(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RewardItem"][1]["Attr"] = "0 1" -- 致命准星(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RewardItem"][1]["Id"] = 4032901 -- 例无虚发(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RewardItem"][1]["Attr"] = "0 1" -- 例无虚发(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+1） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RewardItem"][1]["Id"] = 4033001 -- 审判(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RewardItem"][1]["Attr"] = "0 1" -- 审判(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤妙法(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RewardItem"][1]["Attr"] = "0 1" -- 罡气护体(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RewardItem"][1]["Attr"] = "0 1" -- 沧澜破(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RewardItem"][1]["Attr"] = "0 1" -- 妙手回春(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RewardItem"][1]["Attr"] = "0 1" -- 碎魔屏障(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+1） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RewardItem"][1]["Attr"] = "0 1" -- 天地化盾(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+1） - 2.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["ItemChance"] = 250
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RewardItem"][1]["Attr"] = "0 1" -- 碎玄元(+1)*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][1][26]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2] = {}
	-- ===稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]
	-- ===删除: 3330765,20
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]["DeleteItem"][1]["Id"] = 3330765 -- 【库】稀有黄色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]["DeleteItem"][1]["ItemNum"] = 20
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2]["LogId"] = 12001700
	-- 神罗天尊（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RewardItem"][1]["Id"] = 4032001 -- 神罗天征(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天尊（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 神罗天征(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RewardItem"][1]["Id"] = 4032101 -- 爆炎诀(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RewardItem"][1]["Attr"] = "0 1 3" -- 爆炎诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心诀（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RewardItem"][1]["Id"] = 4032201 -- 清心诀(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心诀（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- 清心诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RewardItem"][1]["Id"] = 4032301 -- 天衣无缝(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- 天衣无缝(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RewardItem"][1]["Id"] = 4032401 -- 祭灵诀(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RewardItem"][1]["Attr"] = "0 1 3" -- 祭灵诀(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RewardItem"][1]["Id"] = 4032501 -- 横扫千军(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 横扫千军(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RewardItem"][1]["Id"] = 4032601 -- 涅槃重生(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- 涅槃重生(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RewardItem"][1]["Id"] = 4032701 -- 锋芒毕露(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RewardItem"][1]["Attr"] = "0 1 3" -- 锋芒毕露(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RewardItem"][1]["Id"] = 4032801 -- 魂兮归来(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RewardItem"][1]["Attr"] = "0 1 3" -- 魂兮归来(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（+1）（赠） - 1.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["ItemChance"] = 150
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RewardItem"][1]["Id"] = 4031601 -- 玄武护体(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RewardItem"][1]["Attr"] = "0 1 3" -- 玄武护体(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RewardItem"][1]["Id"] = 4031501 -- 攻城掠地(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RewardItem"][1]["Attr"] = "0 1 3" -- 攻城掠地(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RewardItem"][1]["Id"] = 4031401 -- 策马扬鞭(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RewardItem"][1]["Attr"] = "0 1 3" -- 策马扬鞭(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RewardItem"][1]["Id"] = 4034001 -- 乾坤护法(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤护法(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RewardItem"][1]["Id"] = 4033901 -- 斗转星移(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RewardItem"][1]["Attr"] = "0 1 3" -- 斗转星移(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RewardItem"][1]["Id"] = 4033401 -- 会心一击(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RewardItem"][1]["Attr"] = "0 1 3" -- 会心一击(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RewardItem"][1]["Id"] = 4034101 -- 威慑(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RewardItem"][1]["Attr"] = "0 1 3" -- 威慑(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RewardItem"][1]["Id"] = 4033301 -- 致命准星(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RewardItem"][1]["Attr"] = "0 1 3" -- 致命准星(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RewardItem"][1]["Id"] = 4032901 -- 例无虚发(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RewardItem"][1]["Attr"] = "0 1 3" -- 例无虚发(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（+1）（赠） - 5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["ItemChance"] = 500
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RewardItem"][1]["Id"] = 4033001 -- 审判(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RewardItem"][1]["Attr"] = "0 1 3" -- 审判(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][19]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤妙法（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RewardItem"][1]["Id"] = 4034201 -- 乾坤妙法(+1)[4034201][属性:8][叠加:0][金币:0], 【表格】乾坤妙法（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RewardItem"][1]["Attr"] = "0 1 3" -- 乾坤妙法(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][20]["RewardEffect"]["Effect"] = "angelwing"
	-- 罡气护体（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RewardItem"][1]["Id"] = 4034301 -- 罡气护体(+1)[4034301][属性:8][叠加:0][金币:0], 【表格】罡气护体（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RewardItem"][1]["Attr"] = "0 1 3" -- 罡气护体(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][21]["RewardEffect"]["Effect"] = "angelwing"
	-- 沧澜破（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RewardItem"][1]["Id"] = 4034401 -- 沧澜破(+1)[4034401][属性:8][叠加:0][金币:0], 【表格】沧澜破（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RewardItem"][1]["Attr"] = "0 1 3" -- 沧澜破(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][22]["RewardEffect"]["Effect"] = "angelwing"
	-- 妙手回春（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RewardItem"][1]["Id"] = 4034501 -- 妙手回春(+1)[4034501][属性:8][叠加:0][金币:0], 【表格】妙手回春（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RewardItem"][1]["Attr"] = "0 1 3" -- 妙手回春(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][23]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终法伤免疫（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RewardItem"][1]["Id"] = 4034601 -- 碎魔屏障(+1)[4034601][属性:8][叠加:0][金币:0], 【表格】最终法伤免疫（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎魔屏障(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][24]["RewardEffect"]["Effect"] = "angelwing"
	-- 最终物伤免疫（+1）（赠） - 2.75%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["ItemChance"] = 275
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RewardItem"][1]["Id"] = 4034701 -- 天地化盾(+1)[4034701][属性:8][叠加:0][金币:0], 【表格】最终物伤免疫（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RewardItem"][1]["Attr"] = "0 1 3" -- 天地化盾(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][25]["RewardEffect"]["Effect"] = "angelwing"
	-- 碎玄元（+1）（赠） - 2.5%
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RandomItemChanceType"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["ItemChance"] = 250
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RewardItem"][1]["Id"] = 4034801 -- 碎玄元(+1)[4034801][属性:8][叠加:0][金币:0], 【表格】碎玄元（+1）（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RewardItem"][1]["Attr"] = "0 1 3" -- 碎玄元(+1)（赠）*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][2][26]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3] = {}
	-- ===赌稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]
	-- ===删除: 3330765,1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["DeleteItem"][1]["Id"] = 3330765 -- 【库】稀有黄色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["RewardItem"][1]["Id"] = 3330765 -- 稀有黄色神纹碎片[3330765][属性:8][叠加:10000][金币:0], 【表格】2个稀有黄色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["RewardItem"][1]["Attr"] = "0 2" -- 稀有黄色神纹碎片*2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][3]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4] = {}
	-- ===赌稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]
	-- ===删除: 3330765,1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["LogId"] = 12001700
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["DeleteItem"] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["DeleteItem"][1] = {}
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["DeleteItem"][1]["Id"] = 3330765 -- 【库】稀有黄色神纹碎片[属性:8]
	-- tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["RewardItem"][1]["Id"] = 3330765 -- 稀有黄色神纹碎片[3330765][属性:8][叠加:10000][金币:0], 【表格】2个稀有黄色神纹碎片（赠）
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["RewardItem"][1]["Attr"] = "0 2 3" -- 稀有黄色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5] = {}
	-- ===赌稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]
	-- ===删除: 3330765,1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["LogId"] = 12001700
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["RewardItem"][1]["Id"] = 3330765 -- 稀有黄色神纹碎片[3330765][属性:8][叠加:10000][金币:0], 【表格】1个稀有黄色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["RewardItem"][1]["Attr"] = "0 1" -- 稀有黄色神纹碎片*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][5]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6] = {}
	-- ===赌稀有黄色神纹碎片
	-- ===索引:tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]
	-- ===删除: 3330765,1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["LogId"] = 12001700
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["RewardItem"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["RewardItem"][1]["Id"] = 3330765 -- 稀有黄色神纹碎片[3330765][属性:8][叠加:10000][金币:0], 【表格】1个稀有黄色神纹碎片
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["RewardItem"][1]["Attr"] = "0 1 3" -- 稀有黄色神纹碎片*1
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_RunePieceRandom[3330765][6]["RewardEffect"]["Effect"] = "angelwing"

-- 旧物品ID替换
local tStandardize_RewardPoolProps_OldItemExchange = {}
	-- ===红色神纹碎片转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3306366]
	-- ===删除: 3306366,2
	tStandardize_RewardPoolProps_OldItemExchange[3306366] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["DeleteItem"][1]["Id"] = 3306366 -- 【库】红色神纹碎片[属性:0]
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["RewardItem"][1]["Id"] = 3314252 -- 红色神纹碎片[3314252][属性:8][叠加:10000][金币:0], 【表格】红色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["RewardItem"][1]["Attr"] = "0 2" -- 红色神纹碎片*2
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3306366]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3306369] = {}
	-- ===红色神纹碎片赠转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3306369]
	-- ===删除: 3306369,2
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["DeleteItem"][1]["Id"] = 3306369 -- 【库】红色神纹碎片[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["RewardItem"][1]["Id"] = 3314252 -- 红色神纹碎片[3314252][属性:8][叠加:10000][金币:0], 【表格】红色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["RewardItem"][1]["Attr"] = "0 2 3" -- 红色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3306369]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3306367] = {}
	-- ===黄色神纹碎片转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3306367]
	-- ===删除: 3306367,2
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["DeleteItem"][1]["Id"] = 3306367 -- 【库】黄色神纹碎片[属性:0]
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["RewardItem"][1]["Id"] = 3314253 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["RewardItem"][1]["Attr"] = "0 2" -- 黄色神纹碎片*2
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3306367]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3306370] = {}
	-- ===黄色神纹碎片赠转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3306370]
	-- ===删除: 3306370,2
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["DeleteItem"][1]["Id"] = 3306370 -- 【库】黄色神纹碎片[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["RewardItem"][1]["Id"] = 3314253 -- 黄色神纹碎片[3314253][属性:8][叠加:10000][金币:0], 【表格】黄色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["RewardItem"][1]["Attr"] = "0 2 3" -- 黄色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3306370]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3306368] = {}
	-- ===蓝色神纹碎片转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3306368]
	-- ===删除: 3306368,2
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["DeleteItem"][1]["Id"] = 3306368 -- 【库】蓝色神纹碎片[属性:0]
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["RewardItem"][1]["Id"] = 3314254 -- 蓝色神纹碎片[3314254][属性:8][叠加:10000][金币:0], 【表格】蓝色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["RewardItem"][1]["Attr"] = "0 2" -- 蓝色神纹碎片*2
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3306368]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3306371] = {}
	-- ===蓝色神纹碎片赠转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3306371]
	-- ===删除: 3306371,2
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["DeleteItem"][1]["Id"] = 3306371 -- 【库】蓝色神纹碎片[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["RewardItem"][1]["Id"] = 3314254 -- 蓝色神纹碎片[3314254][属性:8][叠加:10000][金币:0], 【表格】蓝色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["RewardItem"][1]["Attr"] = "0 2 3" -- 蓝色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3306371]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3311744] = {}
	-- ===稀有黄色神纹碎片转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3311744]
	-- ===删除: 3311744,2
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["DeleteItem"][1]["Id"] = 3311744 -- 【库】稀有黄色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】蓝色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["RewardItem"][1]["Attr"] = "0 2" -- 稀有黄色神纹碎片*2
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3311744]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3311745] = {}
	-- ===稀有蓝色神纹碎片转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3311745]
	-- ===删除: 3311745,2
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["DeleteItem"][1]["Id"] = 3311745 -- 【库】稀有蓝色神纹碎片[属性:8]
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["RewardItem"][1]["Id"] = 3314256 -- 稀有蓝色神纹碎片[3314256][属性:8][叠加:10000][金币:0], 【表格】稀有蓝色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["RewardItem"][1]["Attr"] = "0 2" -- 稀有蓝色神纹碎片*2
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3311745]["RewardEffect"]["Effect"] = "angelwing"
	
	
	tStandardize_RewardPoolProps_OldItemExchange[3311748] = {}
	-- ===稀有黄色神纹碎片转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3311748]
	-- ===删除: 3311748,2
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["DeleteItem"][1]["Id"] = 3311748 -- 【库】稀有黄色神纹（赠）碎片[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["RewardItem"][1]["Id"] = 3314255 -- 稀有黄色神纹碎片[3314255][属性:8][叠加:10000][金币:0], 【表格】蓝色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["RewardItem"][1]["Attr"] = "0 2 3" -- 稀有黄色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3311748]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldItemExchange[3311749] = {}
	-- ===稀有蓝色神纹碎片转id
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3311749]
	-- ===删除: 3311749,2
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["DeleteItem"][1]["Id"] = 3311749 -- 【库】稀有蓝色神纹（赠）碎片[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["RewardItem"][1]["Id"] = 3314256 -- 稀有蓝色神纹碎片[3314256][属性:8][叠加:10000][金币:0], 【表格】稀有蓝色神纹碎片
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["RewardItem"][1]["Attr"] = "0 2 3" -- 稀有蓝色神纹碎片（赠）*2
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3311749]["RewardEffect"]["Effect"] = "angelwing"

	-- ===真气礼包
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3006542]
	-- ===删除: 3006542,2
	tStandardize_RewardPoolProps_OldItemExchange[3006542] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["DeleteItem"][1]["Id"] = 3006542 -- 【库】真气礼包[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["RewardItem"][1]["Id"] = 3314911 -- 真气丹[3314911][属性:9][叠加:10000][金币:0], 【表格】真气丹
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["RewardItem"][1]["Attr"] = "0 2" -- 真气丹*2
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3006542]["RewardEffect"]["Effect"] = "angelwing"


	-- ===修炼礼包
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3006543]
	-- ===删除: 3006543,2
	tStandardize_RewardPoolProps_OldItemExchange[3006543] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["DeleteItem"][1]["Id"] = 3006543 -- 【库】修炼礼包[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["RewardItem"][1]["Id"] = 3314912 -- 修炼丹[3314912][属性:9][叠加:10000][金币:0], 【表格】修炼丹
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["RewardItem"][1]["Attr"] = "0 2" -- 修炼丹*2
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3006543]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===七阶武器神魂礼包碎片
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3004243]
	-- ===删除: 3004243,2
	-- ===
	tStandardize_RewardPoolProps_OldItemExchange[3004243] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["DeleteItem"][1]["Id"] = 3004243 -- 【库】七阶武器神魂礼包碎片[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["RewardItem"][1]["Id"] = 3315497 -- 七阶武器神魂碎片[3315497][属性:9][叠加:10000][金币:0], 【表格】七阶武器神魂碎片
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["RewardItem"][1]["Attr"] = "0 2" -- 七阶武器神魂碎片*2
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3004243]["RewardEffect"]["Effect"] = "angelwing"


	-- ===七阶武器神魂礼包碎片（赠）
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3006765]
	-- ===删除: 3006765,2
	-- ===
	tStandardize_RewardPoolProps_OldItemExchange[3006765] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["DeleteItem"][1]["Id"] = 3006765 -- 【库】七阶武器神魂礼包碎片（赠）[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["RewardItem"][1]["Id"] = 3315497 -- 七阶武器神魂碎片[3315497][属性:9][叠加:10000][金币:0], 【表格】七阶武器神魂碎片
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["RewardItem"][1]["Attr"] = "0 2 3" -- 七阶武器神魂碎片（赠）*2
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3006765]["RewardEffect"]["Effect"] = "angelwing"


	-- ===七阶防具配饰神魂礼包碎片
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3004244]
	-- ===删除: 3004244,2
	-- ===
	tStandardize_RewardPoolProps_OldItemExchange[3004244] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["DeleteItem"][1]["Id"] = 3004244 -- 【库】七阶防具配饰神魂礼包碎片[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["RewardItem"][1]["Id"] = 3315498 -- 七阶防具神魂碎片[3315498][属性:9][叠加:10000][金币:0], 【表格】七阶防具神魂碎片
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["RewardItem"][1]["Attr"] = "0 2" -- 七阶防具神魂碎片*2
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3004244]["RewardEffect"]["Effect"] = "angelwing"


	-- ===七阶防具配饰神魂礼包碎片（赠）
	-- ===索引:tStandardize_RewardPoolProps_OldItemExchange[3006766]
	-- ===删除: 3006766,2
	-- ===
	tStandardize_RewardPoolProps_OldItemExchange[3006766] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["DeleteItem"][1]["Id"] = 3006766 -- 【库】七阶防具配饰神魂礼包碎片（赠）[属性:9]
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["RewardItem"][1]["Id"] = 3315498 -- 七阶防具神魂碎片[3315498][属性:9][叠加:10000][金币:0], 【表格】七阶防具神魂碎片
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["RewardItem"][1]["Attr"] = "0 2 3" -- 七阶防具神魂碎片（赠）*2
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldItemExchange[3006766]["RewardEffect"]["Effect"] = "angelwing"
	
local tStandardize_RewardPoolProps_OldExchange = {}
	tStandardize_RewardPoolProps_OldExchange[728596] = {}
	-- ===九转聚神丹碎片
	-- ===索引:tStandardize_RewardPoolProps_OldExchange[728596][1]
	-- ===删除: 728596,2,0
	-- ===
	tStandardize_RewardPoolProps_OldExchange[728596][1] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldExchange[728596][1]["LogStep"] = "2[1]"
	tStandardize_RewardPoolProps_OldExchange[728596][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][1]["DeleteItem"][1]["Id"] = 728596 -- 【库】九转聚神丹碎片[属性:9]
	tStandardize_RewardPoolProps_OldExchange[728596][1]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldExchange[728596][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_OldExchange[728596][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][1]["RewardItem"][1]["Id"] = 3314903 -- 九转聚神丹碎片[3314903][属性:9][叠加:1][金币:0], 【表格】九转聚神丹碎片
	tStandardize_RewardPoolProps_OldExchange[728596][1]["RewardItem"][1]["Attr"] = "0 2" -- 九转聚神丹碎片*2
	tStandardize_RewardPoolProps_OldExchange[728596][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldExchange[728596][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===九转聚神丹碎片（赠）
	-- ===索引:tStandardize_RewardPoolProps_OldExchange[728596][2]
	-- ===删除: 728596,2,2
	-- ===
	tStandardize_RewardPoolProps_OldExchange[728596][2] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldExchange[728596][2]["LogStep"] = "2[2]"
	tStandardize_RewardPoolProps_OldExchange[728596][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][2]["DeleteItem"][1]["Id"] = 728596 -- 【库】九转聚神丹碎片[属性:9]
	tStandardize_RewardPoolProps_OldExchange[728596][2]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldExchange[728596][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_OldExchange[728596][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][2]["RewardItem"][1]["Id"] = 3314903 -- 九转聚神丹碎片[3314903][属性:9][叠加:1][金币:0], 【表格】九转聚神丹碎片（赠）
	tStandardize_RewardPoolProps_OldExchange[728596][2]["RewardItem"][1]["Attr"] = "0 2" -- 九转聚神丹碎片*2
	tStandardize_RewardPoolProps_OldExchange[728596][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldExchange[728596][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldExchange[728596][2]["RewardEffect"]["Effect"] = "angelwing"


	tStandardize_RewardPoolProps_OldExchange[3303101] = {}
	-- ===六阳聚神丹碎片
	-- ===索引:tStandardize_RewardPoolProps_OldExchange[3303101][1]
	-- ===删除: 3303101,2,0
	-- ===
	tStandardize_RewardPoolProps_OldExchange[3303101][1] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["LogStep"] = "2[1]"
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["DeleteItem"][1]["Id"] = 3303101 -- 【库】六阳聚神丹碎片[属性:0]
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["DeleteItem"][1]["Monopoly"] = 0
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["RewardItem"][1]["Id"] = 3314905 -- 六阳聚神丹碎片[3314905][属性:0][叠加:10000][金币:0], 【表格】六阳聚神丹碎片
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["RewardItem"][1]["Attr"] = "0 2" -- 六阳聚神丹碎片*2
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldExchange[3303101][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===六阳聚神丹碎片（赠）
	-- ===索引:tStandardize_RewardPoolProps_OldExchange[3303101][2]
	-- ===删除: 3303101,2,2
	-- ===
	tStandardize_RewardPoolProps_OldExchange[3303101][2] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["LogId"] = 12001700
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["LogStep"] = "2[2]"
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["DeleteItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["DeleteItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["DeleteItem"][1]["Id"] = 3303101 -- 【库】六阳聚神丹碎片[属性:0]
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["DeleteItem"][1]["ItemNum"] = 2
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["DeleteItem"][1]["Monopoly"] = 2
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["RewardItem"] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["RewardItem"][1] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["RewardItem"][1]["Id"] = 3314905 -- 六阳聚神丹碎片[3314905][属性:0][叠加:10000][金币:0], 【表格】六阳聚神丹碎片（赠）
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["RewardItem"][1]["Attr"] = "0 2 3" -- 六阳聚神丹碎片（赠）*2
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["RewardEffect"] = {}
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tStandardize_RewardPoolProps_OldExchange[3303101][2]["RewardEffect"]["Effect"] = "angelwing"


--------------------------------------逻辑配置部分--------------------------------------
--------------------------------------物品使用
-- 批量开启礼包
function Standardize_RewardPoolProps_UseBatchItem(nItemId,nType)
	-- 批量开启标准
	local nBatchNum = tStandardize_RewardPoolProps_Count["BatchNum"]
	-- 金额过多的批量开启数量
	if nItemId == 3314195 then
		nBatchNum = tStandardize_RewardPoolProps_Count["MinBatchNum"]
	end
	-- 背包数量
	local nBagHaveNum = Get_CountItemType(nItemId,0)
	-- 删除数量
	local nDelNum = nBagHaveNum
	if nBagHaveNum > nBatchNum then
		nDelNum = nBatchNum
	end
	
	-- 赋值奖励表格
	local tMoneyItemReward = CommonFunc_Copy(tStandardize_RewardPoolProps_Reward[nItemId])
	local sIndex = tStandardize_RewardPoolProps_Count["BatchIndex"][nType]
	tMoneyItemReward[sIndex]["Value"] = tMoneyItemReward[sIndex]["Value"]*nDelNum
	tMoneyItemReward["DeleteItem"][1]["ItemNum"] = nDelNum
	RewardTemplate_UseItemAndMsg(tMoneyItemReward)
end

-- 天石赠点银两礼包使用 nType ==1 天石 nType == 2 赠点 nType ==3 银两
function Standardize_RewardPoolProps_UseMoneyLimitItem(nItemId,nType)
	-- 判断上限
	local nMaxLimitNum = tStandardize_RewardPoolProps_Count["LimitNum"][nItemId]["Max"]
	if nType == 1 then
		local nUserEmoney = Get_UserEMoney()
		
		if nUserEmoney + nMaxLimitNum > tStandardize_RewardPoolProps_Count["MaxEMoney"] then
			User_TalkChannel2005(tRewardTemplate_Text["EMoney"])
			return
		end
	elseif nType == 2 then
		local nUserEmoneyMono = Get_UserMonoEMoney()
		
		if nUserEmoneyMono + nMaxLimitNum > tStandardize_RewardPoolProps_Count["MaxEMoneyMono"] then
			User_TalkChannel2005(tRewardTemplate_Text["EMoneyMono"])
			return
		end
	else
		if not User_CanPutMoney2Bag(nMaxLimitNum) then
			User_TalkChannel2005(tRewardTemplate_Text["Money"])
			return
		end
	end
	
	-- if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- RewardTemplate_NewRandom(tStandardize_RewardPoolProps_RandomReward,nItemId)
	-- end
	RewardTemplate_RandomReward(tStandardize_RewardPoolProps_RandomReward,nItemId)
	-- 随机金额
	-- local nMinLimitNum = tStandardize_RewardPoolProps_Count["LimitNum"][nItemId]["Min"]
	-- local nRewardMoney = math.random(nMinLimitNum,nMaxLimitNum)
	
	-- 给奖励
	-- local tMoneyItemReward = CommonFunc_Copy(tStandardize_RewardPoolProps_Reward[nItemId])
	-- if nType == 1 then
		-- tMoneyItemReward["RewardEMoney"]["Value"] = nRewardMoney
	-- elseif nType == 2 then
		-- tMoneyItemReward["RewardEMoneyMono"]["Value"] = nRewardMoney
	-- else
		-- tMoneyItemReward["RewardMoney"]["Value"] = nRewardMoney
	-- end
	-- RewardTemplate_UseItemAndMsg(tMoneyItemReward)
	
end

-- 3314200,'黄金积分券'
-- 使用后可将当日黄金联赛积分补满至上限
function Standardize_RewardPoolProps_UseGoldenLeagueItem(nItemId)
	-- 判断今日上限
	if not GoldenLeaguePoints_Chk() then
		return
	end
	
	-- 判断最大上限（新的黄金联赛积分不用判断上限）
	-- local nUserPoint = Get_UserLeaguePoint()
	-- if nUserPoint >= tStandardize_RewardPoolProps_Count["MaxGoldenLeague"] then
		-- User_TalkChannel2005(tInternalTaskCheats_Text["Max"])
		-- return
	-- end
	
	-- 给黄金联赛积分
	RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_Reward[nItemId])
end

-- 3314201,'100特殊黄金积分券'
-- 使用后获得100特殊黄金积分，不受每日积分上限限制（新的黄金联赛积分不用判断上限）
function Standardize_RewardPoolProps_UseSpeGoldenLeagueItem(nItemId)
	-- 判断最大上限
	-- local nUserPoint = Get_UserLeaguePoint()
	-- if nUserPoint >= tStandardize_RewardPoolProps_Count["MaxGoldenLeague"] then
		-- User_TalkChannel2005(tInternalTaskCheats_Text["Max"])
		-- return
	-- end
	
	-- 获得积分
	local nAddPoint = tStandardize_RewardPoolProps_Count["SpeGoldenLeague"]
	-- if nUserPoint+nAddPoint >= tStandardize_RewardPoolProps_Count["MaxGoldenLeague"] then
		-- User_TalkChannel2005(tInternalTaskCheats_Text["Max"])
		-- return
	-- end
	
	-- 给黄金联赛积分
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		User_AddLeaguePoint(nAddPoint)
		local sTip = tInternalTaskCheats_Text["GolderLeaguePoint"]
		User_TalkChannel2005(string.format(sTip,nAddPoint))
		Sys_SaveActionRewardLog(tStandardize_RewardPoolProps_Log["SpeGoldenLeague"])
	end
end

-- 骑乘积分券
function Standardize_RewardPoolProps_UseRidingBatchItem(nItemId)
	-- 批量开启标准
	local nBatchNum = tStandardize_RewardPoolProps_Count["BatchNum"]
	-- 背包数量
	local nBagHaveNum = Get_CountItemType(nItemId,0)
	-- 删除数量
	local nDelNum = nBagHaveNum
	if nBagHaveNum > nBatchNum then
		nDelNum = nBatchNum
	end
	
	-- 赋值奖励表格
	local tStandardizeReward = tStandardize_RewardPoolProps_Reward[nItemId]
	local tRidingItemReward = CommonFunc_Copy(tStandardize_RewardPoolProps_Reward[nItemId])
	tRidingItemReward["RewardRidingPoint"]["Value"] = tStandardizeReward["RewardRidingPoint"]["Value"]*nDelNum
	tRidingItemReward["DeleteItem"][1]["ItemNum"] = nDelNum
	RewardTemplate_UseItemAndMsg(tRidingItemReward)
end

-- 神魂礼盒  nItemIndex == 1 非赠 ==2 赠
function Standardize_RewardPoolProps_MindChoose(nItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	-- 判断赠
	local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
	local sStandardize_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	
	-- 物品不够
	local nItemNum = 1
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return
	end
	
	-- 初始化选项，函数
	-- local nOptionStartIndex = tStandardize_RewardPoolProps_Count["OptionStartIndex"]
	local sFunc = "Standardize_RewardPoolProps_SureMindChooseDialog</N>%d</N>%d</N>%d"
	-- local nEndIndex = #tItem[nItemId]["tOption1-1"] - 1
	-- local nOptionEndIndex = nEndIndex + nOptionStartIndex
	
	for v,i in pairs(tItem[nItemId]["tOption1-1"]) do
		local sOptionIndex = "Option" .. i
		local sItemName = string.format(sStandardize_Basic,tStandardize_RewardPoolProps_Text[nItemId][sOptionIndex],sMonopoly)
		tItem[nItemId][sOptionIndex] = sItemName
		local sOptionFuncIndex = "OptionFunc" .. i
		local nChooseItemId = tStandardize_RewardPoolProps_Mind[nItemId][i]
		tItem[nItemId][sOptionFuncIndex] = string.format(sFunc,nItemId,nChooseItemId,nItemIndex)
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end


-- 二次确认对白
function Standardize_RewardPoolProps_SureMindChooseDialog(nItemId,nChooseItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	-- 物品不够
	local nItemNum = 1
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return
	end
	
	local tWindReward = CommonFunc_Copy(tStandardize_RewardPoolProps_Reward[nItemId][nItemIndex])
	tWindReward["DeleteItem"][1]["Id"] = nItemId
	tWindReward["RewardItem"][1]["Id"] = nChooseItemId
	RewardTemplate_UseItemAndMsg(tWindReward)
end

-- 二次确认
function Standardize_RewardPoolProps_SureMindChoose(nItemId,nChooseItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	-- 物品不够
	local nItemNum = 1
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return
	end
	
	local tWindReward = CommonFunc_Copy(tStandardize_RewardPoolProps_Reward[nItemId][nItemIndex])
	tWindReward["DeleteItem"][1]["Id"] = nItemId
	tWindReward["RewardItem"][1]["Id"] = nChooseItemId
	RewardTemplate_UseItemAndMsg(tWindReward)
end

-- 神魂碎片  nItemIndex == 1 非赠 ==2 赠
function Standardize_RewardPoolProps_MindPieceChoose(nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex)
	local nRewardPoolProps_Monopoly = 0
	if nRewardPoolProps_ItemIndex == 2 then
		nRewardPoolProps_Monopoly = nRewardPoolProps_ItemIndex
	end
	if not Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1,nRewardPoolProps_Monopoly) then
		return
	end
	-- 赠文字赋值
	local sRewardPoolProps_Monopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nRewardPoolProps_ItemIndex]
	local sRewardPoolProps_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	local sRewardPoolProps_ItemName = string.format(sRewardPoolProps_Basic,tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Name"][1],sRewardPoolProps_Monopoly)
	local sRewardPoolProps_BasicText = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Text112"]
	tItem[nRewardPoolProps_ItemId]["Text112"] = string.format(sRewardPoolProps_BasicText,sRewardPoolProps_ItemName)
	-- 初始化对白
	local sRewardPoolProps_Func = "Standardize_RewardPoolProps_SureMindPieceDialog</N>%d</N>%d</N>%d"
	-- 使用1个
	tItem[nRewardPoolProps_ItemId]["OptionFunc111"] = string.format(sRewardPoolProps_Func,nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex,1)
	-- 使用15个
	tItem[nRewardPoolProps_ItemId]["OptionFunc112"] = string.format(sRewardPoolProps_Func,nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex,2)
	LinkItemGossipFunc_New(nRewardPoolProps_ItemId,"1-1")
end

-- 二次确认对白
function Standardize_RewardPoolProps_SureMindPieceDialog(nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex,nRewardPoolProps_ChooseIndex)
	local nRewardPoolProps_Monopoly = 0
	if nRewardPoolProps_ItemIndex == 2 then
		nRewardPoolProps_Monopoly = nRewardPoolProps_ItemIndex
	end
	if not Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1,nRewardPoolProps_Monopoly) then
		Sys_MsgBox(tRewardTemplate_Text["NoItem"])
		return
	end
	-- 赠文字赋值
	local sRewardPoolProps_Monopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nRewardPoolProps_ItemIndex]
	local sRewardPoolProps_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	local sRewardPoolProps_ItemName = string.format(sRewardPoolProps_Basic,tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Name"][1],sRewardPoolProps_Monopoly)
	if nRewardPoolProps_ChooseIndex == 1 then
		local sRewardPoolProps_BasicTextOne = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Text211"]
		tItem[nRewardPoolProps_ItemId]["Text211"] = string.format(sRewardPoolProps_BasicTextOne,sRewardPoolProps_ItemName)
		local sRewardPoolProps_FuncOne = "Standardize_RewardPoolProps_BetMindPieceChoose</N>%d</N>%d"
		tItem[nRewardPoolProps_ItemId]["OptionFunc211"] = string.format(sRewardPoolProps_FuncOne,nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex)
		LinkItemGossipFunc_New(nRewardPoolProps_ItemId,"2-1")
	else
		local sRewardPoolProps_BasicTextTwo = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Text221"]
		tItem[nRewardPoolProps_ItemId]["Text221"] = string.format(sRewardPoolProps_BasicTextTwo,sRewardPoolProps_ItemName)
		local sRewardPoolProps_FuncTwo = "Standardize_RewardPoolProps_SureMindPieceChoose</N>%d</N>%d"
		tItem[nRewardPoolProps_ItemId]["OptionFunc221"] = string.format(sRewardPoolProps_FuncTwo,nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex)
		LinkItemGossipFunc_New(nRewardPoolProps_ItemId,"2-2")
	end
end

-- 神魂碎片赌
function Standardize_RewardPoolProps_BetMindPieceChoose(nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex)
	local nRewardPoolProps_Monopoly = 0
	if nRewardPoolProps_ItemIndex == 2 then
		nRewardPoolProps_Monopoly = nRewardPoolProps_ItemIndex
	end
	if not Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1,nRewardPoolProps_Monopoly) then
		Sys_MsgBox(tRewardTemplate_Text["NoItem"])
		return
	end
	
	local tItemText = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]
	-- 背包不足
	local nRewardPoolProps_RewardIndex = nRewardPoolProps_ItemIndex + 2
	local sRewardPoolProps_Monopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nRewardPoolProps_ItemIndex]
	local sRewardPoolProps_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	local sRewardPoolProps_ItemName = string.format(sRewardPoolProps_Basic,tItemText["Name"][1],sRewardPoolProps_Monopoly)
	local tRewardMindItem = tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId][nRewardPoolProps_RewardIndex]
	local nRewardPoolProps_NeedSpace = RewardTemplate_GetRewardSpace(tRewardMindItem)
	if nRewardPoolProps_NeedSpace > 0 and not User_CheckLeftSpace(nRewardPoolProps_NeedSpace) then
		Sys_MsgBox(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["SpaceFull"])
		return
	end
	
	if Item_DelMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1,nRewardPoolProps_Monopoly) then
		local sLog = tStandardize_RewardPoolProps_Log["BetPiece"]
		local tBetNum = tStandardize_RewardPoolProps_Count["MindBetPiece"]
		if Sys_Random(tBetNum["StartNum"],tBetNum["EndNum"]) then
			local sSuccessText = tItemText["BetSuccess"]
			local sRewardPoolProps_NewItemName = string.format(sRewardPoolProps_Basic,tItemText["Name"][2],sRewardPoolProps_Monopoly)
			RewardTemplate_UseItemAndMsg(tRewardMindItem)
			Sys_MsgBox(string.format(sSuccessText,sRewardPoolProps_NewItemName,sRewardPoolProps_ItemName))
			-- Standardize_RewardPoolProps_MindPieceChoose(nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex)
		else
			Sys_SaveActionRewardLog(string.format(sLog,nRewardPoolProps_ItemId))
			local sNewFunc = "Standardize_RewardPoolProps_MindPieceChoose</N>%d</N>%d"
			local sFailText = tItemText["BetFail"]
			Sys_MsgBox(string.format(sFailText,sRewardPoolProps_ItemName),string.format(sNewFunc,nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex))
		end
	end
end

-- 碎片合成
function Standardize_RewardPoolProps_SureMindPieceChoose(nRewardPoolProps_ItemId,nRewardPoolProps_ItemIndex)
	local nRewardPoolProps_Monopoly = 0
	if nRewardPoolProps_ItemIndex == 2 then
		nRewardPoolProps_Monopoly = nRewardPoolProps_ItemIndex
	end
	if not Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,15,nRewardPoolProps_Monopoly) then
		Sys_MsgBox(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["NoeEnoughItem"])
		return
	end
	
	-- 背包不足
	RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId][nRewardPoolProps_ItemIndex])
end

-- 神纹可选包 nItemIndex == 1 非赠 ==2 赠
function Standardize_RewardPoolProps_RuneChoose(nItemId,nItemIndex)
	local tRune = tStandardize_RewardPoolProps_Rune[nItemId]
	local nItemNum = #tRune
	
	-- 判断赠
	local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
	local sStandardize_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	
	-- 初始化选项，函数
	local tOption = {}
	local nOptionStartIndex = tStandardize_RewardPoolProps_Count["OptionStartIndex"]
	local sFunc = "Standardize_RewardPoolProps_SureRuneChooseDialog</N>%d</S>%s</N>%d</N>%d"
	for i=1,nItemNum do
		local nOptionIndex = nOptionStartIndex+i-1
		table.insert(tOption,nOptionIndex)
		local sOptionIndex = "Option" .. nOptionIndex
		local sItemName = string.format(sStandardize_Basic,tStandardize_RewardPoolProps_Text[nItemId][sOptionIndex],sMonopoly)
		-- local sItemName = tStandardize_RewardPoolProps_Text[nItemId][sOptionIndex]..sMonopoly
		tItem[nItemId][sOptionIndex] = sItemName
		local sOptionFuncIndex = "OptionFunc" .. nOptionIndex
		local nChooseItemId = tRune[i]
		tItem[nItemId][sOptionFuncIndex] = string.format(sFunc,nItemId,sOptionIndex,nChooseItemId,nItemIndex)
	end
	tItem[nItemId]["Text111"] = tStandardize_RewardPoolProps_Text[nItemId]["Text111"]
	tItem[nItemId]["tOption1-1"] = tOption
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 二次确认对白
function Standardize_RewardPoolProps_SureRuneChooseDialog(nItemId,sOptionIndex,nChooseItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	-- 物品不存在
	if not Item_ChkItem(nItemId,nMonopoly) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return
	end
	
	local sItemNameIndex = tStandardize_RewardPoolProps_Text[nItemId][sOptionIndex]
	local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
	local sStandardize_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	local sItemName = string.format(sStandardize_Basic,sItemNameIndex,sMonopoly)
	-- 初始化对白
	local sBasicItemName = tStandardize_RewardPoolProps_Text[nItemId]["Text211"]
	tItem[nItemId]["Text211"] = string.format(sBasicItemName,sItemName)
	-- 初始化说明
	local sDesc = tStandardize_RewardPoolProps_Text["ItemDesc"][nChooseItemId]
	local sBasicDesc = tStandardize_RewardPoolProps_Text[nItemId]["Text212"]
	tItem[nItemId]["Text212"] = string.format(sBasicDesc,sDesc)
	-- 初始化选项
	local sFunc = "Standardize_RewardPoolProps_SureRuneChoose</N>%d</N>%d</N>%d"
	tItem[nItemId]["OptionFunc211"] = string.format(sFunc,nItemId,nChooseItemId,nItemIndex)
	
	local sBackFunc = "Standardize_RewardPoolProps_RuneChoose</N>%d</N>%d"
	if nItemId == 3314245 then
		sBackFunc = "Standardize_RewardPoolProps_NewRuneChoose</N>%d</N>%d"
	end
	tItem[nItemId]["OptionFunc212"] =string.format(sBackFunc,nItemId,nItemIndex)
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 二次确认
function Standardize_RewardPoolProps_SureRuneChoose(nItemId,nChooseItemId,nItemIndex)
	local nMonopoly = 0
	local nRewardIndex = 10
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
		nRewardIndex = 20
	end
	-- 物品不存在
	if not Item_ChkItem(nItemId,nMonopoly) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return
	end
	
	local tRuneReward = CommonFunc_Copy(tStandardize_RewardPoolProps_Rune[nRewardIndex])
	tRuneReward["DeleteItem"][1]["Id"] = nItemId
	tRuneReward["RewardItem"][1]["Id"] = nChooseItemId
	RewardTemplate_UseItemAndMsg(tRuneReward)
end

-- 黄色神纹可选包 nItemIndex == 1 非赠 ==2 赠
function Standardize_RewardPoolProps_NewRuneChoose(nItemId,nItemIndex)
	local tRune = tStandardize_RewardPoolProps_Rune[nItemId]
	local nItemNum = #tRune
	
	-- 判断赠
	local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
	local sStandardize_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	
	-- 初始化选项，函数
	local nOptionStartIndex = tStandardize_RewardPoolProps_Count["OptionStartIndex"]
	local sFunc = "Standardize_RewardPoolProps_SureRuneChooseDialog</N>%d</S>%s</N>%d</N>%d"
	for i=1,nItemNum do
		local nOptionIndex = nOptionStartIndex+i-1
		local sOptionIndex = "Option" .. nOptionIndex
		local sItemName = string.format(sStandardize_Basic,tStandardize_RewardPoolProps_Text[nItemId][sOptionIndex],sMonopoly)
		-- local sItemName = tStandardize_RewardPoolProps_Text[nItemId][sOptionIndex]..sMonopoly
		tItem[nItemId][sOptionIndex] = sItemName
		local sOptionFuncIndex = "OptionFunc" .. nOptionIndex
		local nChooseItemId = tRune[i]
		tItem[nItemId][sOptionFuncIndex] = string.format(sFunc,nItemId,sOptionIndex,nChooseItemId,nItemIndex)
	end
	local sNewFunc = "LinkItemGossipFunc_New</N>%d</S>%s"
	tItem[nItemId]["OptionFunc1100"] = string.format(sNewFunc,nItemId,"1-2")
	tItem[nItemId]["OptionFunc1101"] = string.format(sNewFunc,nItemId,"1-1")
	tItem[nItemId]["OptionFunc1102"] = string.format(sNewFunc,nItemId,"1-3")
	tItem[nItemId]["OptionFunc1103"] = string.format(sNewFunc,nItemId,"1-2")
	tItem[nItemId]["OptionFunc1104"] = string.format(sNewFunc,nItemId,"1-4")
	tItem[nItemId]["OptionFunc1105"] = string.format(sNewFunc,nItemId,"1-3")
	tItem[nItemId]["OptionFunc1106"] = string.format(sNewFunc,nItemId,"1-5")
	tItem[nItemId]["OptionFunc1107"] = string.format(sNewFunc,nItemId,"1-4")
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 神纹碎片
function Standardize_RewardPoolProps_RunePieceUse(nItemId,nItemIndex)
	-- 判断赠
	local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
	
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly) then
		return
	end
	
	-- 初始化选项，函数
	local sFunc = "Standardize_RewardPoolProps_ComposeRunePiece</N>%d</N>%d"
	local sNewFunc = "Standardize_RewardPoolProps_BetRunePiece</N>%d</N>%d"
	-- 合成神纹
	local sText = tStandardize_RewardPoolProps_Text[nItemId]["Text111"]
	tItem[nItemId]["Text111"] = string.format(sText,sMonopoly,sMonopoly)
	local sNewText = tStandardize_RewardPoolProps_Text[nItemId]["Text112"]
	tItem[nItemId]["Text112"] = string.format(sNewText,sMonopoly)
	tItem[nItemId]["OptionFunc111"] = string.format(sFunc,nItemId,nItemIndex)
	tItem[nItemId]["OptionFunc112"] = string.format(sNewFunc,nItemId,nItemIndex)
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 合成神纹（20个碎片）
function Standardize_RewardPoolProps_ComposeRunePiece(nItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	-- 物品不够
	local nItemNum = tStandardize_RewardPoolProps_RunePieceRandom[nItemId][nItemIndex]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) then
		User_TalkChannel2005(tRewardTemplate_Text["Consume"]["DeleteItem"])
		return
	end
	
	RewardTemplate_RandomReward(tStandardize_RewardPoolProps_RunePieceRandom[nItemId],nItemIndex)
end

-- 合成2个碎片（1个碎片）
function Standardize_RewardPoolProps_BetRunePiece(nItemId,nItemIndex)
	local nMonopoly = 0
	local nRewardIndex = 3
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
		nRewardIndex = nRewardIndex + 1
	end
	-- 物品不够
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly) then
		User_TalkChannel2005(tRewardTemplate_Text["Consume"]["DeleteItem"])
		return
	end
	
	local tRunePieceReward = tStandardize_RewardPoolProps_RunePieceRandom[nItemId][nRewardIndex]
	local nNeedSpace = RewardTemplate_GetRewardSpace(tRunePieceReward)
	-- 赌碎片
	if nNeedSpace > 0 and not User_CheckLeftSpace(nNeedSpace) then
		User_TalkChannel2005(tStandardize_RewardPoolProps_Text["NoSpace"])
		return
	end
	local sStandardize_Basic = tStandardize_RewardPoolProps_Text["Monopoly"][3]
	
	local sFunc = "Standardize_RewardPoolProps_RunePieceUse</N>%d</N>%d"
	if Item_DelMulItem(nItemId,nItemId,1,nMonopoly) then
		if Sys_Random(tStandardize_RewardPoolProps_Count["BetPiece"]["StartNum"],tStandardize_RewardPoolProps_Count["BetPiece"]["EndNum"]) then
			local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
			local sItemName = string.format(Get_ItemtypeName(nItemId),sMonopoly)
			local sUserTip = tStandardize_RewardPoolProps_Text["ComposeSuccess"]
			-- User_TalkChannel2005(string.format(sUserTip,sItemName))
			tRunePieceReward["Talk"] = string.format(sUserTip,sItemName)
			RewardTemplate_UseItem(tRunePieceReward)
			Standardize_RewardPoolProps_RunePieceUse(nItemId,nItemIndex)
		else
			local sTip = tStandardize_RewardPoolProps_Text["ComposeFail"]
			if nItemId == 3330765 then
				if Sys_Random(2000,10000) then
					if  nMonopoly == 2 then
						LinkItemGossipFunc_New(nItemId,"2-2")
					else
						LinkItemGossipFunc_New(nItemId,"2-1")
					end
				else
					Sys_MsgBox(sTip,string.format(sFunc,nItemId,nItemIndex),nil)
					local sLog = tStandardize_RewardPoolProps_Log["BetPiece"]
					Sys_SaveActionRewardLog(string.format(sLog,nItemId))
				end
			else
				Sys_MsgBox(sTip,string.format(sFunc,nItemId,nItemIndex),nil)
				local sLog = tStandardize_RewardPoolProps_Log["BetPiece"]
				Sys_SaveActionRewardLog(string.format(sLog,nItemId))
			end
		end
	end
	-- if Sys_Random(tStandardize_RewardPoolProps_Count["BetPiece"]["StartNum"],tStandardize_RewardPoolProps_Count["BetPiece"]["EndNum"]) then
		-- local sMonopoly = tStandardize_RewardPoolProps_Text["Monopoly"][nItemIndex]
		-- local sItemName = Get_ItemtypeName(nItemId) .. sMonopoly
		-- local sUserTip = tStandardize_RewardPoolProps_Text["ComposeSuccess"]
		-- User_TalkChannel2005(string.format(sUserTip,sItemName))
		-- tRunePieceReward["Talk"] = string.format(sUserTip,sItemName)
		-- RewardTemplate_UseItem(tRunePieceReward)
		-- Standardize_RewardPoolProps_RunePieceUse(nItemId,nItemIndex)
	-- else
		-- if Item_DelMulItem(nItemId,nItemId,1,nMonopoly) then
			-- local sTip = tStandardize_RewardPoolProps_Text["ComposeFail"]
			-- Sys_MsgBox(sTip,string.format(sFunc,nItemId,nItemIndex),nil)
			-- local sLog = tStandardize_RewardPoolProps_Log["BetPiece"]
			-- Sys_SaveActionRewardLog(string.format(sLog,nItemId))
		-- end
	-- end
end

-- 3314553,'固化石碎片'
function Standardize_RewardPoolProps_SolidPieceUse(nItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly) then
		-- Sys_MsgBox(tRewardTemplate_Text["NoItem"])
		return
	end
	-- 初始化
	local sItenName = tStandardize_RewardPoolProps_Text[nItemId]["Name"][nItemIndex]
	local sComposeName = tStandardize_RewardPoolProps_Text[nItemId]["NewName"][nItemIndex]
	local sBasicText = tStandardize_RewardPoolProps_Text[nItemId]["Text111"]
	tItem[nItemId]["Text111"] = string.format(sBasicText,sComposeName,sItenName,sItenName)
	local sFunc = "Standardize_RewardPoolProps_SolidPieceBet</N>%d</N>%d"
	local sNewFunc = "Standardize_RewardPoolProps_SolidPieceCompose</N>%d</N>%d"
	tItem[nItemId]["OptionFunc111"] =  string.format(sFunc,nItemId,nItemIndex)
	tItem[nItemId]["OptionFunc112"] =  string.format(sNewFunc,nItemId,nItemIndex)
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 赌碎片
function Standardize_RewardPoolProps_SolidPieceBet(nItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly) then
		Sys_MsgBox(tRewardTemplate_Text["NoItem"])
		return
	end
	-- 初始化
	local sItenName = tStandardize_RewardPoolProps_Text[nItemId]["Name"][nItemIndex]
	local sBasicText = tStandardize_RewardPoolProps_Text[nItemId]["Text211"]
	tItem[nItemId]["Text211"] = string.format(sBasicText,sItenName)
	local sFunc = "Standardize_RewardPoolProps_SolidPieceBetSure</N>%d</N>%d"
	tItem[nItemId]["OptionFunc211"] =  string.format(sFunc,nItemId,nItemIndex)
	
	LinkItemGossipFunc_New(nItemId,"2-1")
end

function Standardize_RewardPoolProps_SolidPieceBetSure(nItemId,nItemIndex)
	local nMonopoly = 0
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	if not Item_ChkMulItem(nItemId,nItemId,1,nMonopoly) then
		Sys_MsgBox(tRewardTemplate_Text["NoItem"])
		return
	end
	
	local tItemText = tStandardize_RewardPoolProps_Text[nItemId]
	-- 背包不足
	local sItemName = tItemText["Name"][nItemIndex]
	local tRewardItem = tStandardize_RewardPoolProps_Reward[nItemId][nItemIndex]
	local nNeedSpace = RewardTemplate_GetRewardSpace(tRewardItem)
	if nNeedSpace > 0 and not User_CheckLeftSpace(nNeedSpace) then
		local sText = tItemText["SpaceFull"]
		Sys_MsgBox(string.format(sText,sItemName,nNeedSpace))
		return
	end
	
	if Item_DelMulItem(nItemId,nItemId,1,nMonopoly) then
		local sLog = tStandardize_RewardPoolProps_Log["BetPiece"]
		Sys_SaveActionRewardLog(string.format(sLog,nItemId))
		local tBetNum = tStandardize_RewardPoolProps_Count["NewBetPiece"]
		if Sys_Random(tBetNum["StartNum"],tBetNum["EndNum"]) then
			local sSuccessText = tItemText["OneSuccess"]
			local sNewItemName = tItemText["NewName"][nItemIndex]
			tRewardItem["Talk"] = string.format(sSuccessText,sNewItemName,sItemName)
			RewardTemplate_UseItem(tRewardItem)
			Standardize_RewardPoolProps_SolidPieceUse(nItemId,nItemIndex)
		else
			local sNewFunc = "Standardize_RewardPoolProps_SolidPieceUse</N>%d</N>%d"
			local sFailText = tItemText["OneFailure"]
			Sys_MsgBox(string.format(sFailText,sItemName),string.format(sNewFunc,nItemId,nItemIndex))
		end
	end
end
-- 碎片合成
function Standardize_RewardPoolProps_SolidPieceCompose(nItemId,nItemIndex)
	local nMonopoly = 0
	local nRewardIndex = nItemIndex + 2
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	local tRewardItem = tStandardize_RewardPoolProps_Reward[nItemId][nRewardIndex]
	local nItemNum = tRewardItem["DeleteItem"][1]["ItemNum"]
	local sItenNewName = tStandardize_RewardPoolProps_Text[nItemId]["NewName"][nItemIndex]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) then
		local sTenFailure = tStandardize_RewardPoolProps_Text[nItemId]["TenFailure"]
		Sys_MsgBox(string.format(sTenFailure,sItenNewName))
		return
	end
	-- 初始化
	local sItenName = tStandardize_RewardPoolProps_Text[nItemId]["Name"][nItemIndex]
	local sBasicText = tStandardize_RewardPoolProps_Text[nItemId]["Text221"]
	tItem[nItemId]["Text221"] = string.format(sBasicText,sItenName)
	local sFunc = "Standardize_RewardPoolProps_SolidPieceComposeSure</N>%d</N>%d"
	tItem[nItemId]["OptionFunc221"] =  string.format(sFunc,nItemId,nItemIndex)
	
	LinkItemGossipFunc_New(nItemId,"2-2")
end

function Standardize_RewardPoolProps_SolidPieceComposeSure(nItemId,nItemIndex)
	local nMonopoly = 0
	local nRewardIndex = nItemIndex + 2
	if nItemIndex == 2 then
		nMonopoly = nItemIndex
	end
	local tRewardItem = tStandardize_RewardPoolProps_Reward[nItemId][nRewardIndex]
	local nItemNum = tRewardItem["DeleteItem"][1]["ItemNum"]
	local tItemText = tStandardize_RewardPoolProps_Text[nItemId]
	local sItenNewName = tStandardize_RewardPoolProps_Text[nItemId]["NewName"][nItemIndex]
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum,nMonopoly) then
		local sTenFailure = tStandardize_RewardPoolProps_Text[nItemId]["TenFailure"]
		Sys_MsgBox(string.format(sTenFailure,sItenNewName))
		return
	end
	
	-- 背包不足
	local sItemName = tItemText["NewName"][nItemIndex]
	local nNeedSpace = RewardTemplate_GetRewardSpace(tRewardItem)
	if nNeedSpace > 0 and not User_CheckLeftSpace(nNeedSpace) then
		local sText = tItemText["SpaceFull"]
		Sys_MsgBox(string.format(sText,sItemName,nNeedSpace))
		return
	end
	
	RewardTemplate_UseItem(tRewardItem)
	Standardize_RewardPoolProps_SolidPieceUse(nItemId,nItemIndex)
end

-- 旧物品批量删除替换
function Standardize_RewardPoolProps_ExhangeOldItem(nRewardPoolProps_Item,nMonopoly)
	local nRewardPoolProps_ItemNum = Get_CountItemType(nRewardPoolProps_Item,0)
	local tRewardPoolProps_Reward = CommonFunc_Copy(tStandardize_RewardPoolProps_OldItemExchange[nRewardPoolProps_Item])
	tRewardPoolProps_Reward["DeleteItem"][1]["ItemNum"] = nRewardPoolProps_ItemNum
	local sRewardPoolProps_Attr = tStandardize_RewardPoolProps_Count["NormalAttr"]
	if nMonopoly == 3 then
		sRewardPoolProps_Attr = tStandardize_RewardPoolProps_Count["MonopolyAttr"]
	end
	tRewardPoolProps_Reward["RewardItem"][1]["Attr"] = string.format(sRewardPoolProps_Attr,nRewardPoolProps_ItemNum)
	RewardTemplate_UseItemAndMsg(tRewardPoolProps_Reward)
end

-- 旧物品批量删除替换
function Standardize_RewardPoolProps_ExhangeItemOld(nRewardPoolProps_Item,nItemIndex)
	local nRewardPoolProps_ItemNum = Get_CountItemType(nRewardPoolProps_Item,0,0)
	if nItemIndex == 2 then
		nRewardPoolProps_ItemNum = Get_CountItemType(nRewardPoolProps_Item,0,nItemIndex)
	end
	local tRewardPoolProps_Reward = CommonFunc_Copy(tStandardize_RewardPoolProps_OldExchange[nRewardPoolProps_Item][nItemIndex])
	tRewardPoolProps_Reward["DeleteItem"][1]["ItemNum"] = nRewardPoolProps_ItemNum
	local sRewardPoolProps_Attr = tStandardize_RewardPoolProps_Count["NormalAttr"]
	if nItemIndex == 2 then
		sRewardPoolProps_Attr = tStandardize_RewardPoolProps_Count["MonopolyAttr"]
	end
	tRewardPoolProps_Reward["RewardItem"][1]["Attr"] = string.format(sRewardPoolProps_Attr,nRewardPoolProps_ItemNum)
	RewardTemplate_UseItemAndMsg(tRewardPoolProps_Reward)
end

-- 自创武功道具
function Standardize_RewardPoolProps_OwnKungFu(nItemId)
	-- 判断是否已经创建过功夫
	if not User_IsAlreadyCreateGongFu(0) then
		User_TalkChannel2007(tStandardize_RewardPoolProps_Text["NoCreateGongFu"])
		return
	end
	
	RewardTemplate_UseItem(tStandardize_RewardPoolProps_Reward[nItemId])
end

-- 神器
-- 3314913,'乾坤神器宝盒' 二次确认
function Standardize_RewardPoolProps_ChosseArtifact(nRewardPoolProps_ItemId,nRewardPoolProps_ChooseItemId)
	-- 选中物品id
	local sItemName = Get_ItemtypeName(nRewardPoolProps_ChooseItemId)
	tItem[nRewardPoolProps_ItemId]["Text211"] = string.format(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Text211"],sItemName)
	tItem[nRewardPoolProps_ItemId]["OptionFunc211"] = "Standardize_RewardPoolProps_OpenArtifactBox</N>" .. nRewardPoolProps_ItemId .. "</N>" .. nRewardPoolProps_ChooseItemId
	LinkItemGossipFunc_New(nRewardPoolProps_ItemId,"2-1")
end

--确认选择神器
function Standardize_RewardPoolProps_OpenArtifactBox(nRewardPoolProps_ItemId,nRewardPoolProps_ChooseItemId)
	-- 背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tStandardize_RewardPoolProps_Text["NoSapce"])
		return
	end
	if Item_ChkItem(nRewardPoolProps_ItemId) and Item_DelItem(nRewardPoolProps_ItemId) then
		local nFlag,tReward = Probabil_RandomAward(tStandardize_RewardPoolProps_RandomReward[nRewardPoolProps_ItemId],1)
		local nGoldAttrNum = tReward[1]["tAward"][1]["Item_1"]
		
		local nXuanBaoId,nItem = Xuanbao_Reward(nRewardPoolProps_ChooseItemId,0,10,0,0,5,0,0,nGoldAttrNum,0)
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		local sStandardize_RewardPoolProps_RewardText = tStandardize_RewardPoolProps_Text["MsgRewardItem"]
		local sStandardize_RewardPoolProps_Last = string.format(sStandardize_RewardPoolProps_RewardText,sItemName)
		Sys_MsgBox(sStandardize_RewardPoolProps_Last)
		User_TalkChannel2005(sStandardize_RewardPoolProps_Last)
		
		local sStr1 = Get_ItemData1(nItem)
		local sStr2 = Get_ItemData2(nItem)
		local sStr3 = Get_ItemData3(nItem)
		local sStr4 = Get_ItemData4(nItem)
		local sStr5 = Get_ItemData5(nItem)
		local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
		Sys_SaveActionRewardLog(string.format(tStandardize_RewardPoolProps_Log["UseAftiaItem"],nRewardPoolProps_ItemId,sAttr))
	end
end

-- 3314914,'精装神器礼包'
function Standardize_RewardPoolProps_OpenArtifactBag(nRewardPoolProps_ItemId)
	if Item_ChkItem(nRewardPoolProps_ItemId) and Item_DelItem(nRewardPoolProps_ItemId) then
		local nFlag,tReward = Probabil_RandomAward(tStandardize_RewardPoolProps_RandomReward[nRewardPoolProps_ItemId],1)
		local nGoldAttrNum = tReward[1]["tAward"][1]["Item_1"]
		local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,5,0,0,nGoldAttrNum,0)
		local sItemName = Get_ItemtypeName(nXuanBaoId)
		
		local sStandardize_RewardPoolProps_RewardText = tStandardize_RewardPoolProps_Text["MsgRewardItem"]
		local sStandardize_RewardPoolProps_Last = string.format(sStandardize_RewardPoolProps_RewardText,sItemName)
		Sys_MsgBox(sStandardize_RewardPoolProps_Last)
		User_TalkChannel2005(sStandardize_RewardPoolProps_Last)
		
		local sStr1 = Get_ItemData1(nItem)
		local sStr2 = Get_ItemData2(nItem)
		local sStr3 = Get_ItemData3(nItem)
		local sStr4 = Get_ItemData4(nItem)
		local sStr5 = Get_ItemData5(nItem)
		local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "&" .. sStr5 .. "}"
		Sys_SaveActionRewardLog(string.format(tStandardize_RewardPoolProps_Log["UseAftiaItem"],nRewardPoolProps_ItemId,sAttr))
	end
end

-- 经验丹
-- 检测是否满级
function Standardize_RewardPoolProps_ChkLev()
	local nStandardize_RewardPoolProps_Lev = Get_UserLevel()
	-- 判断是否满级
	if nStandardize_RewardPoolProps_Lev >= G_User_MaxLev then
		return false
	end
	
	return true
end

-- 检测是否可添加经验
function Standardize_RewardPoolProps_ChkMapType(nRewardPoolProps_ItemId,nRewardPoolProps_NowMapId)
	local nStandardize_RewardPoolProps_MapId = nRewardPoolProps_NowMapId or Get_UserMapId()
	
	-- 判断当前地图属性
	if Sys_ChkAccessExp(nStandardize_RewardPoolProps_MapId) then
		User_TalkChannel2005(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["NoExp"])
		return false
	end
	
	return true
end

-- 3314900,'聚神丹'
function Standardize_RewardPoolProps_ExpDan(nRewardPoolProps_ItemId,nRewardPoolProps_Confirm)
	local tStandardize_RewardPoolProps_ExpReward = tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId]
	-- 判断当前地图属性
	if tStandardize_RewardPoolProps_ExpReward["UseMap"] then
		if not ExpProps_ChkMapType(nRewardPoolProps_ItemId) then
			return
		end
	end
	
	-- 判断是否满级
	local tStandardize_RewardPoolProps_ExpTip = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]
	if not Standardize_RewardPoolProps_ChkLev() then
		-- 满级给气力
		-- if tStandardize_RewardPoolProps_ExpReward["MaxLevel"] then
			-- RewardTemplate_UseItem(tStandardize_RewardPoolProps_ExpReward)
			-- return
		-- else
			User_TalkChannel2005(tStandardize_RewardPoolProps_ExpTip["MaxLevel"])
			return
		-- end
	end
	
	-- if User_ChkSurplusExp() then
		-- User_TalkChannel2005(tStandardize_RewardPoolProps_ExpTip["NoAddExp"])
		-- return
	-- end
	
	-- 判断是否经验池
	-- local nStandardize_RewardPoolProps_Lev = Get_UserLevel()
	-- if tStandardize_RewardPoolProps_ExpReward["ChkSurplus"] then
		
		-- local nStandardize_SpeLevel = tStandardize_RewardPoolProps_Count["SpeLevel"]
		-- -- 判断是否是二次确认使用该物品
		-- if nRewardPoolProps_Confirm == nil then
			-- local nSurplusExp = Get_UserSurplusExp()
			-- local nStandardize_RewardPoolProps_Percent = tStandardize_RewardPoolProps_Count["Percent"][nStandardize_SpeLevel]
			-- if nStandardize_RewardPoolProps_Lev > nStandardize_SpeLevel and nRewardPoolProps_ItemId == 3314906 then
				-- nStandardize_RewardPoolProps_Percent = tStandardize_RewardPoolProps_Count["Percent"][nStandardize_RewardPoolProps_Lev]
			-- end
			-- local nStandardize_RewardPoolProps_UpExp = tUpLevTime[nStandardize_RewardPoolProps_Lev]*(nStandardize_RewardPoolProps_Percent/100)
			
			-- if (nSurplusExp ~= -1) and (nSurplusExp < nStandardize_RewardPoolProps_UpExp) then
				-- Standardize_RewardPoolProps_Confirm(nRewardPoolProps_ItemId)
				-- return
			-- end
		-- end
		
		-- -- 判断是否超过140级
		-- if nStandardize_RewardPoolProps_Lev >= nStandardize_SpeLevel and nRewardPoolProps_ItemId == 3314904 then
			-- tStandardize_RewardPoolProps_ExpReward["Talk"] = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["NewTalk"]
		-- else
			-- tStandardize_RewardPoolProps_ExpReward["Talk"] = nil
		-- end
	-- end
	
	RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward)
	
end

-- 3314906,'六阳聚神丹'
function Standardize_RewardPoolProps_SixExpDan(nRewardPoolProps_ItemId)
	local tStandardize_RewardPoolProps_ExpReward = tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId]
	
	-- 判断是否满级
	local nStandardize_RewardPoolProps_Lev = Get_UserLevel()
	if nStandardize_RewardPoolProps_Lev > tStandardize_RewardPoolProps_ExpReward[1]["UseLev"] then
		RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[2])
	else
		RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[1])
	end
end

-- 二次确认
function Standardize_RewardPoolProps_Confirm(nRewardPoolProps_ItemId)
	Sys_MsgBox(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Confirm"],string.format("Standardize_RewardPoolProps_ExpDan</N>%d</N>1",nRewardPoolProps_ItemId))
end

-- 九转聚神丹碎片
function Standardize_RewardPoolProps_NineDanPiece(nRewardPoolProps_ItemId)
	if not Item_ChkItem(nRewardPoolProps_ItemId) then
		return
	end
	local tStandardize_RewardPoolProps_ExpReward = tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId]
	-- 判断当前地图属性
	if tStandardize_RewardPoolProps_ExpReward["UseMap"] then
		if not ExpProps_ChkMapType(nRewardPoolProps_ItemId) then
			return
		end
	end
	
	
	-- 判断等级
	local tStandardize_RewardPoolProps_ExpTip = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]
	local nStandardize_RewardPoolProps_Lev = Get_UserLevel()
	if nStandardize_RewardPoolProps_Lev < tStandardize_RewardPoolProps_ExpReward["UseLev"] then
		-- 判断今天经验池是否已满
		-- if User_ChkSurplusExp() then
			-- User_TalkChannel2005(tStandardize_RewardPoolProps_ExpTip["NoAddExp"])
			-- return
		-- end
		
		RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[1])
		return
	else
		-- 提示不可使用
		Sys_MsgBox(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["MaxLevel"])
		return
	end
	
	-- 出对白
	-- LinkItemGossipFunc_New(nRewardPoolProps_ItemId,"1-1")
end

-- 九转聚神丹碎片合成
function Standardize_RewardPoolProps_ComposeNineDanPiece(nRewardPoolProps_ItemId,nRewardPoolProps_Index)
	local tStandardize_RewardPoolProps_ExpReward = tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId]
	-- 判断当前地图属性
	if tStandardize_RewardPoolProps_ExpReward["UseMap"] then
		if not ExpProps_ChkMapType(nRewardPoolProps_ItemId) then
			return
		end
	end
	
	-- 检测背包空间
	if nRewardPoolProps_Index == 2 then
		if not RewardTemplate_CheckSpace(tStandardize_RewardPoolProps_ExpReward[nRewardPoolProps_Index]) then
			return
		end
		
		local nRewardPoolProps_DelNum = tStandardize_RewardPoolProps_Count["ExpPieceNum"]
		if not Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,nRewardPoolProps_DelNum) then
			User_TalkChannel2005(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["NoItem"])
			return
		end
		
		RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[nRewardPoolProps_Index])
	else
		if not Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1) then
			User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
			return
		end
		
		if not RewardTemplate_ChkRandomSpace(tStandardize_RewardPoolProps_ExpReward,nRewardPoolProps_Index) then
			User_TalkChannel2005(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["NoSpace"])
			return
		end
		
		local sFunc = "Standardize_RewardPoolProps_NineDanPiece</N>%d"
		if Item_DelMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1) then
			if Sys_Random(tStandardize_RewardPoolProps_Count["DanPiece"]["StartNum"],tStandardize_RewardPoolProps_Count["DanPiece"]["EndNum"]) then
				local sUserTip = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Bet"]
				-- User_TalkChannel2005(string.format(sUserTip,sItemName))
				RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[4])
				Sys_MsgBox(sUserTip,string.format(sFunc,nRewardPoolProps_ItemId))
			else
				local sTip = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["BetFail"]
				Sys_MsgBox(sTip,string.format(sFunc,nRewardPoolProps_ItemId))
				local sLog = tStandardize_RewardPoolProps_Log["BetPiece"]
				Sys_SaveActionRewardLog(string.format(sLog,nRewardPoolProps_ItemId))
			end
		end
	end
end

-- 3314905,'六阳聚神丹碎片'
function Standardize_RewardPoolProps_SixDanPiece(nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly)
	if not Item_ChkItem(nRewardPoolProps_ItemId) then
		return
	end
	local tStandardize_RewardPoolProps_ExpTip = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]
	local sRewardPoolProps_Tip = tStandardize_RewardPoolProps_ExpTip["Text112"]
	if nRewardPoolProps_Monopoly == 2 then
		sRewardPoolProps_Tip= tStandardize_RewardPoolProps_ExpTip["Text113"]
	end
	local sRewardPoolProps_Flow = tGlobalFormat[2]
	tItem[nRewardPoolProps_ItemId]["Text111"] = string.format(sRewardPoolProps_Flow,tStandardize_RewardPoolProps_ExpTip["Text111"],sRewardPoolProps_Tip)
	tItem[nRewardPoolProps_ItemId]["Text114"] = string.format(sRewardPoolProps_Flow,tStandardize_RewardPoolProps_ExpTip["Text114"],sRewardPoolProps_Tip)
	
	local sRewardPoolProps_Func = "Standardize_RewardPoolProps_ComposeSixDanPiece</N>%d</N>%d</N>%d"
	tItem[nRewardPoolProps_ItemId]["OptionFunc111"] = string.format(sRewardPoolProps_Func,nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly,1)
	tItem[nRewardPoolProps_ItemId]["OptionFunc112"] = string.format(sRewardPoolProps_Func,nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly,3)
	-- 出对白
	LinkItemGossipFunc_New(nRewardPoolProps_ItemId,"1-1")
end

-- 六阳聚神丹碎片合成
function Standardize_RewardPoolProps_ComposeSixDanPiece(nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly,nRewardPoolProps_Index)
	local tStandardize_RewardPoolProps_ExpReward = tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId]
	local tStandardize_RewardPoolProps_ExpText = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]
	-- 检测背包空间
	if nRewardPoolProps_Index == 1 then
		local nRewardPoolProps_Reward = 1
		if nRewardPoolProps_Monopoly == 2 then
			nRewardPoolProps_Reward = nRewardPoolProps_Monopoly
		end
		if not RewardTemplate_CheckSpace(tStandardize_RewardPoolProps_ExpReward[nRewardPoolProps_Index]) then
			return
		end
		local nRewardPoolProps_DelNum = tStandardize_RewardPoolProps_Count["ExpPieceNum"]
		if Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,nRewardPoolProps_DelNum,nRewardPoolProps_Monopoly) then
			RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[nRewardPoolProps_Reward])
			return
		else
			local nRewardPoolProps_ItemNum = Get_CountItemType(nRewardPoolProps_ItemId,0)
			if nRewardPoolProps_ItemNum < nRewardPoolProps_DelNum then
				Sys_MsgBox(tStandardize_RewardPoolProps_ExpText["NoItem"])
				return
			end
			
			local sRewardPoolProps_Func = "Standardize_RewardPoolProps_ComposeNewSixDanPiece</N>%d</N>%d</N>%d"
			tItem[nRewardPoolProps_ItemId]["OptionFunc211"] = string.format(sRewardPoolProps_Func,nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly,nRewardPoolProps_Index)
			LinkItemGossipFunc_New(nRewardPoolProps_ItemId,"2-1")
		end
		
	else
		if not Item_ChkMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1,nRewardPoolProps_Monopoly) then
			User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
			return
		end
		
		if not RewardTemplate_ChkRandomSpace(tStandardize_RewardPoolProps_ExpReward,nRewardPoolProps_Index) then
			User_TalkChannel2005(tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["NoSpace"])
			return
		end
		
		local nRewardPoolProps_NewReward = 5
		if nRewardPoolProps_Monopoly == 2 then
			nRewardPoolProps_NewReward = 6
		end
		local sFunc = "Standardize_RewardPoolProps_SixDanPiece</N>%d</N>%d"
		if Item_DelMulItem(nRewardPoolProps_ItemId,nRewardPoolProps_ItemId,1,nRewardPoolProps_Monopoly) then
			if Sys_Random(tStandardize_RewardPoolProps_Count["DanPiece"]["StartNum"],tStandardize_RewardPoolProps_Count["DanPiece"]["EndNum"]) then
				local sUserTip = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["Bet"]
				-- User_TalkChannel2005(string.format(sUserTip,sItemName))
				RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[nRewardPoolProps_NewReward])
				Sys_MsgBox(sUserTip,string.format(sFunc,nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly))
			else
				local sTip = tStandardize_RewardPoolProps_Text[nRewardPoolProps_ItemId]["BetFail"]
				Sys_MsgBox(sTip,string.format(sFunc,nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly))
				local sLog = tStandardize_RewardPoolProps_Log["BetPiece"]
				Sys_SaveActionRewardLog(string.format(sLog,nRewardPoolProps_ItemId))
			end
		end
	end
end

-- 六阳聚神丹碎片合成不区分赠非赠
function Standardize_RewardPoolProps_ComposeNewSixDanPiece(nRewardPoolProps_ItemId,nRewardPoolProps_Monopoly,nRewardPoolProps_Index)
	local tStandardize_RewardPoolProps_ExpReward = tStandardize_RewardPoolProps_Reward[nRewardPoolProps_ItemId]
	RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_ExpReward[7])
end

function Standardize_RewardPoolProps_PayItem(nItemId,nIndex)
	local nEmoney = tStandardize_RewardPoolProps_Count["CostEmoney"][nIndex]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		Sys_MsgBox(tCollectionMahjongr_Text["Msg"]["NoEmoney"])
		return
	end
	
	local nSpace = RewardTemplate_GetRewardSpace(tStandardize_RewardPoolProps_RunePieceRandom[nItemId][nIndex],nUserId)
	if not(User_CheckLeftSpace(nSpace,nUserId)) then
		-- 提示
		User_TalkChannel2005(tStandardize_RewardPoolProps_Text["NoSpace"])
		return 
	end
	local sEmoneyBuyLog = tStandardize_RewardPoolProps_Log["EmoneyLog"]
	if User_AddEMoneyAndLog(-nEmoney,sEmoneyBuyLog,nUserId) then
		RewardTemplate_UseItem(tStandardize_RewardPoolProps_RunePieceRandom[nItemId][nIndex])
	end
end
--------------------------------------物品模块--------------------------------------
-- 3314180,'天石英杰礼盒'
tItem[3314180] = tItem[3314180] or {}
tItem[3314180]["Function"] = function(nItemId,sItemName)
	-- 批量开启礼包
	Standardize_RewardPoolProps_UseBatchItem(nItemId,1)
end
-- 3314181,'天石豪侠礼盒'
tItem[3314181] = tItem[3314180]
-- 3314182,'天石宗师礼盒'
tItem[3314182] = tItem[3314180]

-- 3314183,'天石福运礼包'
tItem[3314183] = tItem[3314183] or {}
tItem[3314183]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_UseMoneyLimitItem(nItemId,1)
end
-- 3314184,'天石鸿运礼包'
tItem[3314184] = tItem[3314183]
-- 3314185,'天石极运礼包'
tItem[3314185] = tItem[3314183]

-- 3314186,'天石（赠）英杰礼盒'
tItem[3314186] = tItem[3314186] or {}
tItem[3314186]["Function"] = function(nItemId,sItemName)
	-- 批量开启礼包
	Standardize_RewardPoolProps_UseBatchItem(nItemId,2)
end
-- 3314187,'天石（赠）豪侠礼盒'
tItem[3314187] = tItem[3314186]
-- 3314188,'天石（赠）宗师礼盒'
tItem[3314188] = tItem[3314186]

-- 3314189,'天石（赠）福运礼包'
tItem[3314189] = tItem[3314189] or {}
tItem[3314189]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_UseMoneyLimitItem(nItemId,2)
end
-- 3314190,'天石（赠）鸿运礼包'
tItem[3314190] = tItem[3314189]
-- 3314191,'天石（赠）极运礼包'
tItem[3314191] = tItem[3314189]

-- 3314192,'安居乐业财宝箱'
tItem[3314192] = tItem[3314192] or {}
tItem[3314192]["Function"] = function(nItemId,sItemName)
	-- 批量开启礼包
	Standardize_RewardPoolProps_UseBatchItem(nItemId,3)
end
-- 3314193,'腰缠万贯财宝箱'
tItem[3314193] = tItem[3314192]
-- 3314194,'金玉满堂财宝箱'
tItem[3314194] = tItem[3314192]
-- 3314195,'富可敌国财宝箱'
tItem[3314195] = tItem[3314192]

-- 3314196,'吉祥如意财富包'
tItem[3314196] = tItem[3314196] or {}
tItem[3314196]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_UseMoneyLimitItem(nItemId,3)
end
-- 3314197,'吉星高照财富包'
tItem[3314197] = tItem[3314196]
-- 3314198,'洪福齐天财富包'
tItem[3314198] = tItem[3314196]

-- 3314199,'100万爵位勋章'
tItem[3314199] = tItem[3314199] or {}
tItem[3314199]["Function"] = function(nItemId,sItemName)
	local nLevel = tStandardize_RewardPoolProps_Count["Level"]
	local nMete = tStandardize_RewardPoolProps_Count["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		User_TalkChannel2005(tStandardize_RewardPoolProps_Text["DonateLevelLimit"])
		return
	end
	RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_Reward[nItemId])
end

-- 3314200,'黄金积分券'
tItem[3314200] = tItem[3314200] or {}
tItem[3314200]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_UseGoldenLeagueItem(nItemId)
end

-- 3314201,'100特殊黄金积分券'
tItem[3314201] = tItem[3314201] or {}
tItem[3314201]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_UseSpeGoldenLeagueItem(nItemId)
end

-- 3314202,'100骑乘积分券'
tItem[3314202] = tItem[3314202] or {}
tItem[3314202]["Function"] = function(nItemId,sItemName)
	-- 批量打开
	Standardize_RewardPoolProps_UseBatchItem(nItemId,4)
end
-- 3314203,'1000骑乘积分券'
tItem[3314203] = tItem[3314202]
-- 3314204,'10000骑乘积分券'
tItem[3314204] = tItem[3314202]

-- 3314205,'秘制聚神丹'
tItem[3314205] = tItem[3314205] or {}
tItem[3314205]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tStandardize_RewardPoolProps_Reward[nItemId])
end
-- 3314206,'化气聚神丹'
tItem[3314206] = tItem[3314205]

-- 3314207,'虎骨气力酒'
tItem[3314207] = tItem[3314207] or {}
tItem[3314207]["Function"] = function(nItemId,sItemName)
	-- 批量打开
	Standardize_RewardPoolProps_UseBatchItem(nItemId,5)
end
-- 3314208,'龙涎气力酒'
tItem[3314208] = tItem[3314207]

-- 723342	造化天书
tItem[723342] = tItem[723342] or {}
tItem[723342]["Function"] = function(nItemId,sItemName)
	-- 批量打开
	Standardize_RewardPoolProps_UseBatchItem(nItemId,6)
end
-- 3314209,'鸿钧宝典'
tItem[3314209] = tItem[723342]
-- 723340	奇门秘籍
tItem[723340] = tItem[723342]
-- 723341	玄灵秘录
tItem[723341] = tItem[723342]
-- 3314907,'奇门秘籍'
tItem[3314907] = tItem[723342]
-- 3314908,'玄灵秘录'
tItem[3314908] = tItem[723342]
-- 3314909,'造化天书'
tItem[3314909] = tItem[723342]


-- 3314210,'杨枝甘露'
tItem[3314210] = tItem[3314210] or {}
tItem[3314210]["Function"] = function(nItemId,sItemName)
	-- 批量打开
	Standardize_RewardPoolProps_UseBatchItem(nItemId,7)
end
-- 3314211,'九花玉露'
tItem[3314211] = tItem[3314210]
-- 3314212,'雪参灵露'
tItem[3314212] = tItem[3314210]
-- 3314213,'宝莲仙露'
tItem[3314213] = tItem[3314210]

-- 3314214,'+1马礼包'
tItem[3314214] = tItem[3314214] or {}
tItem[3314214]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	RewardTemplate_RandomReward(tStandardize_RewardPoolProps_Reward[nItemId],nItemIndex)
end
-- 3314215,'+2马礼包'
tItem[3314215] = tItem[3314214]
-- 3314216,'+3马礼包'
tItem[3314216] = tItem[3314214]
-- 3314217,'+4马礼包'
tItem[3314217] = tItem[3314214]
-- 3314218,'+5马礼包'
tItem[3314218] = tItem[3314214]
-- 3314219,'+6马礼包'
tItem[3314219] = tItem[3314214]
-- 3314220,'+7马礼包'
tItem[3314220] = tItem[3314214]
-- 3314221,'+8马礼包'
tItem[3314221] = tItem[3314214]
-- 3314222,'+6稀有马礼包'
tItem[3314222] = tItem[3314214]
-- 3314223,'+8稀有马礼包'
tItem[3314223] = tItem[3314214]

-- 3314224,'良品宝石礼包'
tItem[3314224] = tItem[3314214]
-- 3314225,'优质宝石礼包'
tItem[3314225] = tItem[3314214]

-- 3314226,'七阶武器神魂礼盒'
tItemFace[3314226] = 2680
tItem[3314226] = tItem[3314226] or {}
tItem[3314226]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314226]
tItem[3314226]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_MindChoose(nItemId,nItemIndex)
end
tItem[3314226]["Text1-1"] = {111}
tItem[3314226]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131}
-- 二次确认
tItem[3314226]["Text2-1"] = {211}
tItem[3314226]["tOption2-1"] = {212}
-- 3314227,'七阶防具神魂礼盒'
tItemFace[3314227] = 2681
tItem[3314227] = tItem[3314227] or {}
tItem[3314227]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314227]
tItem[3314227]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_MindChoose(nItemId,nItemIndex)
end
tItem[3314227]["Text1-1"] = {111}
tItem[3314227]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126}
-- 二次确认
tItem[3314227]["Text2-1"] = {211}
tItem[3314227]["tOption2-1"] = {211,212}
-- 3315497,'七阶武器神魂碎片'
tItemFace[3315497] = 2816
tItem[3315497] = tItem[3315497] or {}
tItem[3315497]["DialogueText"] = tStandardize_RewardPoolProps_Text[3315497]
tItem[3315497]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_MindPieceChoose(nItemId,nItemIndex)
end
tItem[3315497]["Text1-1"] = {111,112}
tItem[3315497]["tOption1-1"] = {111,112}
-- 二次确认--1个碎片
tItem[3315497]["Text2-1"] = {211}
tItem[3315497]["tOption2-1"] = {211,212}
-- 二次确认--15个碎片
tItem[3315497]["Text2-2"] = {221}
tItem[3315497]["tOption2-2"] = {221,222}
-- 3315498,'七阶防具神魂碎片'
tItemFace[3315498] = 2817
tItem[3315498] = tItem[3315497] or {}
-- 3004243	七阶武器神魂礼包碎片
-- 3006765	七阶武器神魂礼包碎片（赠）
-- 3004244	七阶防具配饰神魂礼包碎片
-- 3006766	七阶防具配饰神魂礼包碎片（赠）
tItem[3004243] = tItem[3004243] or {}
tItem[3004243]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemId)
end
tItem[3004244] = tItem[3004243]

-- 3314242,'红色神纹礼盒'
tItem[3314242] = tItem[3314242] or {}
tItem[3314242]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314242]
tItem[3314242]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_RuneChoose(nItemId,nItemIndex)
end
tItem[3314242]["Text1-1"] = {111}
tItem[3314242]["tOption1-1"] = {111}
-- 二次确认
tItem[3314242]["Text2-1"] = {211,212}
tItem[3314242]["tOption2-1"] = {211,212}
-- 3314243,'黄色神纹礼盒'
tItem[3314243] = tItem[3314242]
-- 3314244,'蓝色神纹礼盒'
tItem[3314244] = tItem[3314242]
-- 3314245,'稀有黄色神纹礼盒'
tItem[3314245] = tItem[3314245] or {}
tItem[3314245]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314245]
tItem[3314245]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_NewRuneChoose(nItemId,nItemIndex)
end
tItem[3314245]["Text1-1"] = {111}
tItem[3314245]["tOption1-1"] = {111,112,113,114,115,116,117,1100}
tItem[3314245]["Text1-2"] = {111}
tItem[3314245]["tOption1-2"] = {118,119,120,121,122,123,1101,1102}
tItem[3314245]["Text1-3"] = {111}
tItem[3314245]["tOption1-3"] = {124,125,126,127,128,129,1103,1104}
tItem[3314245]["Text1-4"] = {111}
tItem[3314245]["tOption1-4"] = {130,131,132,133,134,135,1105,1106}
tItem[3314245]["Text1-5"] = {111}
tItem[3314245]["tOption1-5"] = {136,137,138,1107}
-- 二次确认
tItem[3314245]["Text2-1"] = {211,212}
tItem[3314245]["tOption2-1"] = {211,212}
-- 3314246,'稀有蓝色神纹礼盒'
tItem[3314246] = tItem[3314242]

tItemFace[3314242] = 2682
tItemFace[3314243] = 2683
tItemFace[3314244] = 2684
tItemFace[3314245] = 2685
tItemFace[3314246] = 2686

-- 3314247,'红色神纹礼包'
tItem[3314247] = tItem[3314247] or {}
tItem[3314247]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	RewardTemplate_RandomReward(tStandardize_RewardPoolProps_RuneRandom[nItemId],nItemIndex)
end
-- 3314248,'黄色神纹礼包'
tItem[3314248] = tItem[3314247]
-- 3314249,'蓝色神纹礼包'
tItem[3314249] = tItem[3314247]
-- 3314250,'稀有黄色神纹礼包'
tItem[3314250] = tItem[3314247]
-- 3314251,'稀有蓝色神纹礼包'
tItem[3314251] = tItem[3314247]

-- 3314252,'红色神纹碎片'
tItem[3314252] = tItem[3314252] or {}
tItem[3314252]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314252]
tItem[3314252]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_RunePieceUse(nItemId,nItemIndex)
end
tItem[3314252]["Text1-1"] = {111,112}
tItem[3314252]["tOption1-1"] = {111,112}
-- 3314253,'黄色神纹碎片'
tItem[3314253] = tItem[3314252]
-- 3314254,'蓝色神纹碎片'
tItem[3314254] = tItem[3314252]
-- 3314255,'稀有黄色神纹碎片'
tItem[3314255] = tItem[3314252]
-- 3314256,'稀有蓝色神纹碎片'
tItem[3314256] = tItem[3314252]

tItem[3330765] = tItem[3330765] or {}
tItem[3330765]["DialogueText"] = tStandardize_RewardPoolProps_Text[3330765]
tItem[3330765]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_RunePieceUse(nItemId,nItemIndex)
end
tItem[3330765]["Text1-1"] = {111,112}
tItem[3330765]["tOption1-1"] = {111,112}

tItem[3330765]["Text2-1"] = {211,212}
tItem[3330765]["tOption2-1"] = {211,212}
tItem[3330765]["OptionPoint211"] = "3-1"

tItem[3330765]["Text3-1"] = {311,312}
tItem[3330765]["tOption3-1"] = {311,312}
tItem[3330765]["OptionFunc311"] = "Standardize_RewardPoolProps_PayItem</N>3330765</N>5"

tItem[3330765]["Text2-2"] = {221,222}
tItem[3330765]["tOption2-2"] = {221,222}
tItem[3330765]["OptionPoint221"] = "3-2"

tItem[3330765]["Text3-2"] = {321,322}
tItem[3330765]["tOption3-2"] = {321,322}
tItem[3330765]["OptionFunc321"] = "Standardize_RewardPoolProps_PayItem</N>3330765</N>6"

tItemFace[3314252] = 2687
tItemFace[3314253] = 2688
tItemFace[3314254] = 2689
tItemFace[3314255] = 2690
tItemFace[3314256] = 2691
tItemFace[3330765] = 1954

-- 3314553,'固化石碎片'
tItemFace[3314553] = 2692
tItem[3314553] = tItem[3314553] or {}
tItem[3314553]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314553]
tItem[3314553]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_SolidPieceUse(nItemId,nItemIndex)
end
tItem[3314553]["Text1-1"] = {111,112}
tItem[3314553]["tOption1-1"] = {111,112,113}
-- "使用1个碎片"
 -- "使用10个碎片"
 -- "收起碎片"
tItem[3314553]["Text2-1"] = {211}
tItem[3314553]["tOption2-1"] = {211,113}
tItem[3314553]["Text2-2"] = {221}
tItem[3314553]["tOption2-2"] = {221,113}

-- 3314900,'聚神丹'
tItem[3314900] = tItem[3314900] or {}
tItem[3314900]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_ExpDan(nItemId)
end

-- 3314903,'九转聚神丹碎片'
tItemFace[3314903] = 2762
tItem[3314903] = tItem[3314903] or {}
tItem[3314903]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314903]
tItem[3314903]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_NineDanPiece(nItemId)
end
tItem[3314903]["Text1-1"] = {111}
tItem[3314903]["tOption1-1"] = {111,112,113}
tItem[3314903]["OptionFunc111"] = "Standardize_RewardPoolProps_ComposeNineDanPiece</N>3314903</N>2"
tItem[3314903]["OptionFunc112"] = "Standardize_RewardPoolProps_ComposeNineDanPiece</N>3314903</N>3"
-- 3314904,'九转聚神丹'
tItem[3314904] = tItem[3314900]
-- 3314905,'六阳聚神丹碎片''
tItemFace[3314905] = 2763
tItem[3314905] = tItem[3314905] or {}
tItem[3314905]["DialogueText"] = tStandardize_RewardPoolProps_Text[3314905]
tItem[3314905]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 0
	if nMonopoly == 3 then
		nItemIndex = 2
	end
	Standardize_RewardPoolProps_SixDanPiece(nItemId,nItemIndex)
end
-- 主对白
tItem[3314905]["Text1-1"] = {111,114,115}
tItem[3314905]["tOption1-1"] = {111,112,113}
-- 使用10个碎片、含有赠品碎片和非赠碎片
tItem[3314905]["Text2-1"] = {211}
tItem[3314905]["tOption2-1"] = {211,212}
-- 3314906,'六阳聚神丹'
tItem[3314906] = tItem[3314906] or {}
tItem[3314906]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_SixExpDan(nItemId)
end

-- 自创武功道具
-- 3314911,'真气丹'
tItem[3314911] = tItem[3314911] or {}
tItem[3314911]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_OwnKungFu(nItemId)
end
-- 3314912,'修炼丹'
tItem[3314912] = tItem[3314911]

-- 3314913,'乾坤神器宝盒'
tItemFace[3314913] = 2764
tItem[3314913] = tItem[3314913] or {}
tItem[3314913]["DialogueText"] = tTreasureArea_Text[3322219]
tItem[3314913]["Text1-1"] = {111,112}
tItem[3314913]["tOption1-1"] = {111,112,113,114,115}
tItem[3314913]["OptionFunc111"]="Standardize_RewardPoolProps_ChosseArtifact</N>3314913</N>4100001"
tItem[3314913]["OptionFunc112"]="Standardize_RewardPoolProps_ChosseArtifact</N>3314913</N>4100002"
tItem[3314913]["OptionFunc113"]="Standardize_RewardPoolProps_ChosseArtifact</N>3314913</N>4100003"
tItem[3314913]["OptionFunc114"]="Standardize_RewardPoolProps_ChosseArtifact</N>3314913</N>4100004"
tItem[3314913]["OptionFunc115"]="Standardize_RewardPoolProps_ChosseArtifact</N>3314913</N>4100005"
tItem[3314913]["Text2-1"] = {211}
tItem[3314913]["tOption2-1"] = {211}

-- 3314914,'精装神器礼包'
tItem[3314914] = tItem[3314914] or {}
tItem[3314914]["Function"] = function (nItemId,sItemName)
	Standardize_RewardPoolProps_OpenArtifactBag(nItemId)
end
-- 3314915,'豪华神器礼包'
tItem[3314915] = tItem[3314914]

-- 728596	九转聚神丹碎片
tItem[728596] = tItem[728596] or {}
tItem[728596]["Function"] = function(nItemId,sItemName)
	-- 赠品继承
	local nMonopoly = Get_ItemMonopoly()
	local nItemIndex = 1
	if nMonopoly == 3 then
		nItemIndex = 2
	end 
	Standardize_RewardPoolProps_ExhangeItemOld(nItemId,nItemIndex)
end
