------------------------------------------------------------------------------------
--Name:		190819[英文征服][活动脚本]以旧换新活动（9.26-10.16）
--Creator: 	兰瑞妹
--Created:	2019/08/19
------------------------------------------------------------------------------------

-- 命名前缀
-- TradeNew_GoodForOld_

-- logid 12001565

-- #stc 掩码说明 
-- #stc(203,46) 背包信
-- #stc(203,47) 兑换券上限记录,基础数据100000000,表ItemLimit中1~4物品上限每日次数记录 隔天清除
-- #stc(203,48) 兑换券上限记录,基础数据100000000,表ItemLimit中5~8物品上限每日次数记录 隔天清除
-- #stc(203,49) 兑换券上限记录,基础数据100000000,表ItemLimit中9~12物品上限每日次数记录 隔天清除
-- #stc(203,50) 兑换券上限记录,基础数据100000000,表ItemLimit中13~16物品上限每日次数记录 隔天清除
-- #stc(203,51) 兑换券上限记录,基础数据100000000 ,表ItemLimit中17~20物品上限每日次数记录 隔天清除
-- #stc(203,52) 兑换券上限记录,基础数据100000000,表ItemLimit中21~24物品上限每日次数记录 隔天清除
-- #stc(203,53) 兑换券上限记录,基础数据100000000,表ItemLimit中25~28物品上限每日次数记录 隔天清除
-- #stc(203,54) 兑换券上限记录,基础数据100000000,表ItemLimit中29~30物品上限每日次数记录 隔天清除

--------------------------------------数据配置部分--------------------------------------
-- 常量表
local tTradeNew_GoodForOld_Count = {}
	-- 活动时间
	tTradeNew_GoodForOld_Count["ActivityTime"] = tActivityTime["TradeNewGoodForOld"]["ActivityTime"]
	--物品使用时间
	tTradeNew_GoodForOld_Count["ItemUseTime"] = tActivityTime["TradeNewGoodForOld"]["ItemUseTime"]
	
	-- 初始掩码数值
	tTradeNew_GoodForOld_Count["StcBasicData"] = 100000000
	-- 赋值个数
	tTradeNew_GoodForOld_Count["InitNum"] = "0 %d"
	
	-- 物品上交对应集合
	-- Item 物品索引集合对应ItemLimit
	-- MainDialog 物品主对白
	tTradeNew_GoodForOld_Count["Gather"] = {}
	tTradeNew_GoodForOld_Count["Gather"][1] = {}
	tTradeNew_GoodForOld_Count["Gather"][1]["Item"] = {4,5,6,7,8,9,14,15,16}
	tTradeNew_GoodForOld_Count["Gather"][1]["MainDialog"] = "2-1"
	tTradeNew_GoodForOld_Count["Gather"][1]["OptionStart"] = 211
	tTradeNew_GoodForOld_Count["Gather"][2] = {}
	tTradeNew_GoodForOld_Count["Gather"][2]["Item"] = {2,30,26,27}
	tTradeNew_GoodForOld_Count["Gather"][2]["MainDialog"] = "3-1"
	tTradeNew_GoodForOld_Count["Gather"][3] = {}
	tTradeNew_GoodForOld_Count["Gather"][3]["Item"] = {10,11,12,13}
	tTradeNew_GoodForOld_Count["Gather"][3]["MainDialog"] = "3-2"
	tTradeNew_GoodForOld_Count["Gather"][4] = {}
	tTradeNew_GoodForOld_Count["Gather"][4]["Item"] = {25,21,22}
	tTradeNew_GoodForOld_Count["Gather"][4]["MainDialog"] = "3-3"
	tTradeNew_GoodForOld_Count["Gather"][5] = {}
	tTradeNew_GoodForOld_Count["Gather"][5]["Item"] = {28,24,20}
	tTradeNew_GoodForOld_Count["Gather"][5]["MainDialog"] = "3-4"
	tTradeNew_GoodForOld_Count["Gather"][6] = {}
	tTradeNew_GoodForOld_Count["Gather"][6]["Item"] = {17,18,23,1}
	tTradeNew_GoodForOld_Count["Gather"][6]["MainDialog"] = "3-5"
	tTradeNew_GoodForOld_Count["Gather"][2]["OptionStart"] = 311
	tTradeNew_GoodForOld_Count["Gather"][3]["OptionStart"] = 321
	tTradeNew_GoodForOld_Count["Gather"][4]["OptionStart"] = 331
	tTradeNew_GoodForOld_Count["Gather"][5]["OptionStart"] = 341
	tTradeNew_GoodForOld_Count["Gather"][6]["OptionStart"] = 351
-- Log表
local tTradeNew_GoodForOld_Log = {}
	-- 过期删除
	tTradeNew_GoodForOld_Log["OverDue"] = "0,0,%d,%d,12001565,2,0,0"
	-- 消耗天石log
	tTradeNew_GoodForOld_Log["CostNormalEmoneyLog"] = "%d,0,0,0,12001565,2,0,0"
	-- 消耗金币log
	tTradeNew_GoodForOld_Log["CostNormalMoneyLog"] = "0,0,1,%d,12001565,2,0,0"

-- stc掩码
local tTradeNew_GoodForOld_Stc = {}
	-- 兑换券上限记录
	tTradeNew_GoodForOld_Stc[1] = {}
	tTradeNew_GoodForOld_Stc[1]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[1]["DataType"] = 47
	tTradeNew_GoodForOld_Stc[2] = {}
	tTradeNew_GoodForOld_Stc[2]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[2]["DataType"] = 48
	tTradeNew_GoodForOld_Stc[3] = {}
	tTradeNew_GoodForOld_Stc[3]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[3]["DataType"] = 49
	tTradeNew_GoodForOld_Stc[4] = {}
	tTradeNew_GoodForOld_Stc[4]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[4]["DataType"] = 50
	tTradeNew_GoodForOld_Stc[5] = {}
	tTradeNew_GoodForOld_Stc[5]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[5]["DataType"] = 51
	tTradeNew_GoodForOld_Stc[6] = {}
	tTradeNew_GoodForOld_Stc[6]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[6]["DataType"] = 52
	tTradeNew_GoodForOld_Stc[7] = {}
	tTradeNew_GoodForOld_Stc[7]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[7]["DataType"] = 53
	tTradeNew_GoodForOld_Stc[8] = {}
	tTradeNew_GoodForOld_Stc[8]["EventType"] = 203
	tTradeNew_GoodForOld_Stc[8]["DataType"] = 54
	
-- 物品兑换限制配置
local tTradeNew_GoodForOld_ItemLimit = {}
	-- 索引1 对应物品表名称的索引
	-- ItemId 可兑换物品id，可多个,多个配表
	-- ItemNum 兑换物品物品数量
	-- ExchangeNum 可获得兑换券数量
	-- EmoneyLog 上交记录emoneylog,%d表示上交数量
	-- Monopoly 是否赠品 	// 0 必须是非赠品 1 不管是不是赠品非赠品 2 必须是赠品
	-- StcIndex 对应tTradeNew_GoodForOld_Stc的索引
	-- StcLimit 每日上交的限量
	-- StcAdd 初始掩码值100000000，对应位置对应增量不一样
	-- StcStartIndex,StcEndIndex 上交物品限量记录掩码时对应掩码的位置
	-- 上交祖母绿 350 22454
	tTradeNew_GoodForOld_ItemLimit[1] = {}
	tTradeNew_GoodForOld_ItemLimit[1]["ItemId"] = 1080001
	tTradeNew_GoodForOld_ItemLimit[1]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[1]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[1]["EmoneyLog"] = "350	22454	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[1]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[1]["StcIndex"] = 1
	tTradeNew_GoodForOld_ItemLimit[1]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[1]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[1]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[1]["StcEndIndex"] = 3
	-- 上交流星卷大礼包（10个流星卷） 350 22455
	tTradeNew_GoodForOld_ItemLimit[2] = {}
	tTradeNew_GoodForOld_ItemLimit[2]["ItemId"] = 3302769
	tTradeNew_GoodForOld_ItemLimit[2]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[2]["ExchangeNum"] = 20
	tTradeNew_GoodForOld_ItemLimit[2]["EmoneyLog"] = "350	22455	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[2]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[2]["StcIndex"] = 1
	tTradeNew_GoodForOld_ItemLimit[2]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[2]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[2]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[2]["StcEndIndex"] = 5
	-- 上交流星卷大礼包（10个流星卷） 350 22456
	tTradeNew_GoodForOld_ItemLimit[3] = {}
	tTradeNew_GoodForOld_ItemLimit[3]["ItemId"] = {3308948,3304828}
	tTradeNew_GoodForOld_ItemLimit[3]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[3]["ExchangeNum"] = 5
	tTradeNew_GoodForOld_ItemLimit[3]["EmoneyLog"] = "350	22456	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[3]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[3]["StcIndex"] = 1
	tTradeNew_GoodForOld_ItemLimit[3]["StcLimit"] = 2
	tTradeNew_GoodForOld_ItemLimit[3]["StcAdd"] = 100
	tTradeNew_GoodForOld_ItemLimit[3]["StcStartIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[3]["StcEndIndex"] = 7
	-- 上交1朵郁金香/玫瑰/百合/兰花 350 22457
	tTradeNew_GoodForOld_ItemLimit[4] = {}
	tTradeNew_GoodForOld_ItemLimit[4]["ItemId"] = {754001,751001,752001,753001}
	tTradeNew_GoodForOld_ItemLimit[4]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[4]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[4]["EmoneyLog"] = "350	22457	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[4]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[4]["StcIndex"] = 1
	tTradeNew_GoodForOld_ItemLimit[4]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[4]["StcAdd"] = 1
	tTradeNew_GoodForOld_ItemLimit[4]["StcStartIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[4]["StcEndIndex"] = 9
	-- 上交3朵郁金香/玫瑰/百合/兰花 350 22458
	tTradeNew_GoodForOld_ItemLimit[5] = {}
	tTradeNew_GoodForOld_ItemLimit[5]["ItemId"] = {754003,751003,752003,753003}
	tTradeNew_GoodForOld_ItemLimit[5]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[5]["ExchangeNum"] = 3
	tTradeNew_GoodForOld_ItemLimit[5]["EmoneyLog"] = "350	22458	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[5]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[5]["StcIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[5]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[5]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[5]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[5]["StcEndIndex"] = 3
	-- 上交9朵郁金香/玫瑰/百合/兰花 350 22459
	tTradeNew_GoodForOld_ItemLimit[6] = {}
	tTradeNew_GoodForOld_ItemLimit[6]["ItemId"] = {754009,751009,752009,753009}
	tTradeNew_GoodForOld_ItemLimit[6]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[6]["ExchangeNum"] = 9
	tTradeNew_GoodForOld_ItemLimit[6]["EmoneyLog"] = "350	22459	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[6]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[6]["StcIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[6]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[6]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[6]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[6]["StcEndIndex"] = 5
	-- 上交99朵郁金香/玫瑰/百合/兰花 350 22460
	tTradeNew_GoodForOld_ItemLimit[7] = {}
	tTradeNew_GoodForOld_ItemLimit[7]["ItemId"] =  {754099,751099,752099,753099}
	tTradeNew_GoodForOld_ItemLimit[7]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[7]["ExchangeNum"] = 25
	tTradeNew_GoodForOld_ItemLimit[7]["EmoneyLog"] = "350	22460	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[7]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[7]["StcIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[7]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[7]["StcAdd"] = 100
	tTradeNew_GoodForOld_ItemLimit[7]["StcStartIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[7]["StcEndIndex"] = 7
	-- 上交房屋设计图30个 350 22461
	tTradeNew_GoodForOld_ItemLimit[8] = {}
	tTradeNew_GoodForOld_ItemLimit[8]["ItemId"] = 3100046
	tTradeNew_GoodForOld_ItemLimit[8]["ItemNum"] = 30
	tTradeNew_GoodForOld_ItemLimit[8]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[8]["EmoneyLog"] = "350	22461	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[8]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[8]["StcIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[8]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[8]["StcAdd"] = 1
	tTradeNew_GoodForOld_ItemLimit[8]["StcStartIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[8]["StcEndIndex"] = 9
	-- 上交6级房屋建材包10个 350 22462
	tTradeNew_GoodForOld_ItemLimit[9] = {}
	tTradeNew_GoodForOld_ItemLimit[9]["ItemId"] = 3008100
	tTradeNew_GoodForOld_ItemLimit[9]["ItemNum"] = 10
	tTradeNew_GoodForOld_ItemLimit[9]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[9]["EmoneyLog"] = "350	22462	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[9]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[9]["StcIndex"] = 3
	tTradeNew_GoodForOld_ItemLimit[9]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[9]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[9]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[9]["StcEndIndex"] = 3
	-- 上交修炼礼包5个 350 22463
	tTradeNew_GoodForOld_ItemLimit[10] = {}
	tTradeNew_GoodForOld_ItemLimit[10]["ItemId"] = 3314912
	tTradeNew_GoodForOld_ItemLimit[10]["ItemNum"] = 5
	tTradeNew_GoodForOld_ItemLimit[10]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[10]["EmoneyLog"] = "350	22463	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[10]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[10]["StcIndex"] = 3
	tTradeNew_GoodForOld_ItemLimit[10]["StcLimit"] = 5
	tTradeNew_GoodForOld_ItemLimit[10]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[10]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[10]["StcEndIndex"] = 5
	-- 上交真气礼包5个 350 22464
	tTradeNew_GoodForOld_ItemLimit[11] = {}
	tTradeNew_GoodForOld_ItemLimit[11]["ItemId"] = 3314911
	tTradeNew_GoodForOld_ItemLimit[11]["ItemNum"] = 5
	tTradeNew_GoodForOld_ItemLimit[11]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[11]["EmoneyLog"] = "350	22464	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[11]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[11]["StcIndex"] = 3
	tTradeNew_GoodForOld_ItemLimit[11]["StcLimit"] = 5
	tTradeNew_GoodForOld_ItemLimit[11]["StcAdd"] = 100
	tTradeNew_GoodForOld_ItemLimit[11]["StcStartIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[11]["StcEndIndex"] = 7
	-- 上交天道酬勤卷轴2个 350 22465
	tTradeNew_GoodForOld_ItemLimit[12] = {}
	tTradeNew_GoodForOld_ItemLimit[12]["ItemId"] = 3001407
	tTradeNew_GoodForOld_ItemLimit[12]["ItemNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[12]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[12]["EmoneyLog"] = "350	22465	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[12]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[12]["StcIndex"] = 3
	tTradeNew_GoodForOld_ItemLimit[12]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[12]["StcAdd"] = 1
	tTradeNew_GoodForOld_ItemLimit[12]["StcStartIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[12]["StcEndIndex"] = 9
	-- 上交昆仑雪水5个 350 22466
	tTradeNew_GoodForOld_ItemLimit[13] = {}
	tTradeNew_GoodForOld_ItemLimit[13]["ItemId"] = 723017
	tTradeNew_GoodForOld_ItemLimit[13]["ItemNum"] = 5
	tTradeNew_GoodForOld_ItemLimit[13]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[13]["EmoneyLog"] = "350	22466	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[13]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[13]["StcIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[13]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[13]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[13]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[13]["StcEndIndex"] = 3
	-- 上交白色恶之花10个 350 22467
	tTradeNew_GoodForOld_ItemLimit[14] = {}
	tTradeNew_GoodForOld_ItemLimit[14]["ItemId"] = 722736
	tTradeNew_GoodForOld_ItemLimit[14]["ItemNum"] = 10
	tTradeNew_GoodForOld_ItemLimit[14]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[14]["EmoneyLog"] = "350	22467	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[14]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[14]["StcIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[14]["StcLimit"] = 3
	tTradeNew_GoodForOld_ItemLimit[14]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[14]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[14]["StcEndIndex"] = 5
	-- 上交红色恶之花10个 350 22468
	tTradeNew_GoodForOld_ItemLimit[15] = {}
	tTradeNew_GoodForOld_ItemLimit[15]["ItemId"] = 722732
	tTradeNew_GoodForOld_ItemLimit[15]["ItemNum"] = 10
	tTradeNew_GoodForOld_ItemLimit[15]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[15]["EmoneyLog"] = "350	22468	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[15]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[15]["StcIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[15]["StcLimit"] = 3
	tTradeNew_GoodForOld_ItemLimit[15]["StcAdd"] = 100
	tTradeNew_GoodForOld_ItemLimit[15]["StcStartIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[15]["StcEndIndex"] = 7
	-- 上交流云锁片+繁星碎片+残月碎片+炫日碎片各15个 350 22469
	tTradeNew_GoodForOld_ItemLimit[16] = {}
	tTradeNew_GoodForOld_ItemLimit[16]["ItemId"] = {721533,721534,721535,721536}
	tTradeNew_GoodForOld_ItemLimit[16]["ItemNum"] = 15
	tTradeNew_GoodForOld_ItemLimit[16]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[16]["EmoneyLog"] = "350	22469	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[16]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[16]["StcIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[16]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[16]["StcAdd"] = 1
	tTradeNew_GoodForOld_ItemLimit[16]["StcStartIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[16]["StcEndIndex"] = 9
	-- 上交月光宝盒1个 350 22470
	tTradeNew_GoodForOld_ItemLimit[17] = {}
	tTradeNew_GoodForOld_ItemLimit[17]["ItemId"] = {721020,721021,721022,721023,721024,721025,721030,721031,721032,721033,721034,721035,721040,721041,721042,721043,721051,721052,721053,721054,721055,721061,721062,721063,721064,721065,721080,721081,721082,721083,721084,721090}
	tTradeNew_GoodForOld_ItemLimit[17]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[17]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[17]["EmoneyLog"] = "350	22470	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[17]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[17]["StcIndex"] = 5
	tTradeNew_GoodForOld_ItemLimit[17]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[17]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[17]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[17]["StcEndIndex"] = 3
	-- 上交封魔牌10个 350 22471
	tTradeNew_GoodForOld_ItemLimit[18] = {}
	tTradeNew_GoodForOld_ItemLimit[18]["ItemId"] = 711211
	tTradeNew_GoodForOld_ItemLimit[18]["ItemNum"] = 10
	tTradeNew_GoodForOld_ItemLimit[18]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[18]["EmoneyLog"] = "350	22471	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[18]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[18]["StcIndex"] = 5
	tTradeNew_GoodForOld_ItemLimit[18]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[18]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[18]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[18]["StcEndIndex"] = 5
	-- 上交10个天香续命精装包（赠） 350 22472
	tTradeNew_GoodForOld_ItemLimit[19] = {}
	tTradeNew_GoodForOld_ItemLimit[19]["ItemId"] = 729549
	tTradeNew_GoodForOld_ItemLimit[19]["ItemNum"] = 10
	tTradeNew_GoodForOld_ItemLimit[19]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[19]["EmoneyLog"] = "350	22472	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[19]["Monopoly"] = 1
	tTradeNew_GoodForOld_ItemLimit[19]["StcIndex"] = 5
	tTradeNew_GoodForOld_ItemLimit[19]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[19]["StcAdd"] = 100
	tTradeNew_GoodForOld_ItemLimit[19]["StcStartIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[19]["StcEndIndex"] = 7
	-- 上交辟邪护符 350 22473
	tTradeNew_GoodForOld_ItemLimit[20] = {}
	tTradeNew_GoodForOld_ItemLimit[20]["ItemId"] = 723087
	tTradeNew_GoodForOld_ItemLimit[20]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[20]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[20]["EmoneyLog"] = "350	22473	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[20]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[20]["StcIndex"] = 5
	tTradeNew_GoodForOld_ItemLimit[20]["StcLimit"] = 1
	tTradeNew_GoodForOld_ItemLimit[20]["StcAdd"] = 1
	tTradeNew_GoodForOld_ItemLimit[20]["StcStartIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[20]["StcEndIndex"] = 9
	-- 上交被偷走的马鞍20个 350 22474
	tTradeNew_GoodForOld_ItemLimit[21] = {}
	tTradeNew_GoodForOld_ItemLimit[21]["ItemId"] = 723903
	tTradeNew_GoodForOld_ItemLimit[21]["ItemNum"] = 20
	tTradeNew_GoodForOld_ItemLimit[21]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[21]["EmoneyLog"] = "350	22474	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[21]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[21]["StcIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[21]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[21]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[21]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[21]["StcEndIndex"] = 3
	-- 上交1封情书/3封情书 350 22475
	tTradeNew_GoodForOld_ItemLimit[22] = {}
	tTradeNew_GoodForOld_ItemLimit[22]["ItemId"] = {756001,756003}
	tTradeNew_GoodForOld_ItemLimit[22]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[22]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[22]["EmoneyLog"] = "350	22475	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[22]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[22]["StcIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[22]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[22]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[22]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[22]["StcEndIndex"] = 5
	-- 上交1个记忆宝珠 350 22476
	tTradeNew_GoodForOld_ItemLimit[23] = {}
	tTradeNew_GoodForOld_ItemLimit[23]["ItemId"] = 720828
	tTradeNew_GoodForOld_ItemLimit[23]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[23]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[23]["EmoneyLog"] = "350	22476	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[23]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[23]["StcIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[23]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[23]["StcAdd"] = 100
	tTradeNew_GoodForOld_ItemLimit[23]["StcStartIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[23]["StcEndIndex"] = 7
	-- 上交清心符（不可兑换天石）*2 350 22477
	tTradeNew_GoodForOld_ItemLimit[24] = {}
	tTradeNew_GoodForOld_ItemLimit[24]["ItemId"] = 720128
	tTradeNew_GoodForOld_ItemLimit[24]["ItemNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[24]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[24]["EmoneyLog"] = "350	22477	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[24]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[24]["StcIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[24]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[24]["StcAdd"] = 1
	tTradeNew_GoodForOld_ItemLimit[24]["StcStartIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[24]["StcEndIndex"] = 9
	-- 上交破城火雷*5 350 22478
	tTradeNew_GoodForOld_ItemLimit[25] = {}
	tTradeNew_GoodForOld_ItemLimit[25]["ItemId"] = 721261
	tTradeNew_GoodForOld_ItemLimit[25]["ItemNum"] = 5
	tTradeNew_GoodForOld_ItemLimit[25]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[25]["EmoneyLog"] = "350	22478	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[25]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[25]["StcIndex"] = 7
	tTradeNew_GoodForOld_ItemLimit[25]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[25]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[25]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[25]["StcEndIndex"] = 3
	-- 上交任意2个普通金鳞or青虹or惊鸿or龙恨or凤鸣or紫霞or明月 350 22479
	tTradeNew_GoodForOld_ItemLimit[26] = {}
	tTradeNew_GoodForOld_ItemLimit[26]["ItemId"] = {700041,700031,700021,700011,700001,700051,700061}
	tTradeNew_GoodForOld_ItemLimit[26]["ItemNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[26]["ExchangeNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[26]["EmoneyLog"] = "350	22479	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[26]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[26]["StcIndex"] = 7
	tTradeNew_GoodForOld_ItemLimit[26]["StcLimit"] = 20
	tTradeNew_GoodForOld_ItemLimit[26]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[26]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[26]["StcEndIndex"] = 5
	-- 上交任意1个普通的天怒/地灵宝石 350 22480
	tTradeNew_GoodForOld_ItemLimit[27] = {}
	tTradeNew_GoodForOld_ItemLimit[27]["ItemId"] = {700101,700121}
	tTradeNew_GoodForOld_ItemLimit[27]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[27]["ExchangeNum"] = 2
	tTradeNew_GoodForOld_ItemLimit[27]["EmoneyLog"] = "350	22480	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[27]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[27]["StcIndex"] = 7
	tTradeNew_GoodForOld_ItemLimit[27]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[27]["StcAdd"] = 100
	tTradeNew_GoodForOld_ItemLimit[27]["StcStartIndex"] = 6
	tTradeNew_GoodForOld_ItemLimit[27]["StcEndIndex"] = 7
	-- 上交上交500W金币 350 22481
	tTradeNew_GoodForOld_ItemLimit[28] = {}
	tTradeNew_GoodForOld_ItemLimit[28]["ItemId"] = 0
	tTradeNew_GoodForOld_ItemLimit[28]["ItemNum"] = 5000000
	tTradeNew_GoodForOld_ItemLimit[28]["ExchangeNum"] = 200
	tTradeNew_GoodForOld_ItemLimit[28]["EmoneyLog"] = "350	22481	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[28]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[28]["StcIndex"] = 7
	tTradeNew_GoodForOld_ItemLimit[28]["StcLimit"] = 20
	tTradeNew_GoodForOld_ItemLimit[28]["StcAdd"] = 1
	tTradeNew_GoodForOld_ItemLimit[28]["StcStartIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[28]["StcEndIndex"] = 9
	-- 上交龙珠赠 350 22482
	tTradeNew_GoodForOld_ItemLimit[29] = {}
	tTradeNew_GoodForOld_ItemLimit[29]["ItemId"] = 1088000
	tTradeNew_GoodForOld_ItemLimit[29]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[29]["ExchangeNum"] = 5
	tTradeNew_GoodForOld_ItemLimit[29]["EmoneyLog"] = "350	22482	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[29]["Monopoly"] = 2
	tTradeNew_GoodForOld_ItemLimit[29]["StcIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[29]["StcLimit"] = 5
	tTradeNew_GoodForOld_ItemLimit[29]["StcAdd"] = 1000000
	tTradeNew_GoodForOld_ItemLimit[29]["StcStartIndex"] = 2
	tTradeNew_GoodForOld_ItemLimit[29]["StcEndIndex"] = 3
	-- 上交龙珠非赠 350 22483
	tTradeNew_GoodForOld_ItemLimit[30] = {}
	tTradeNew_GoodForOld_ItemLimit[30]["ItemId"] = 1088000
	tTradeNew_GoodForOld_ItemLimit[30]["ItemNum"] = 1
	tTradeNew_GoodForOld_ItemLimit[30]["ExchangeNum"] = 30
	tTradeNew_GoodForOld_ItemLimit[30]["EmoneyLog"] = "350	22483	0	0	%d	"
	tTradeNew_GoodForOld_ItemLimit[30]["Monopoly"] = 0
	tTradeNew_GoodForOld_ItemLimit[30]["StcIndex"] = 8
	tTradeNew_GoodForOld_ItemLimit[30]["StcLimit"] = 10
	tTradeNew_GoodForOld_ItemLimit[30]["StcAdd"] = 10000
	tTradeNew_GoodForOld_ItemLimit[30]["StcStartIndex"] = 4
	tTradeNew_GoodForOld_ItemLimit[30]["StcEndIndex"] = 5
	
-- 珍宝以旧换新消耗
local tTradeNew_GoodForOld_CostReward = {}
	-- 普通扣除
	tTradeNew_GoodForOld_CostReward[1] = {}
	tTradeNew_GoodForOld_CostReward[1]["LogId"] = 12001565
	tTradeNew_GoodForOld_CostReward[1]["EmoneyLog"] = ""
	tTradeNew_GoodForOld_CostReward[1]["DeleteItem"] = {}
	tTradeNew_GoodForOld_CostReward[1]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_CostReward[1]["DeleteItem"][1]["Id"] = 0
	tTradeNew_GoodForOld_CostReward[1]["DeleteItem"][1]["ItemNum"] = 1
	tTradeNew_GoodForOld_CostReward[1]["DeleteItem"][1]["Monopoly"] = 0
	tTradeNew_GoodForOld_CostReward[1]["RewardItem"] = {}
	tTradeNew_GoodForOld_CostReward[1]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_CostReward[1]["RewardItem"][1]["Id"] = 3313620
	tTradeNew_GoodForOld_CostReward[1]["RewardItem"][1]["Attr"] = "0 1"
	tTradeNew_GoodForOld_CostReward[1]["RewardEffect"] = {}
	tTradeNew_GoodForOld_CostReward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_CostReward[1]["RewardEffect"]["Effect"] = "angelwing"
	-- 合并扣除
	tTradeNew_GoodForOld_CostReward[2] = {}
	tTradeNew_GoodForOld_CostReward[2]["LogId"] = 12001565
	tTradeNew_GoodForOld_CostReward[2]["EmoneyLog"] = ""
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"] = {}
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][1]["Id"] = 721533
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][1]["ItemNum"] = 15
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][1]["Monopoly"] = 0
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][2] = {}
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][2]["Id"] = 721534
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][2]["ItemNum"] = 15
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][2]["Monopoly"] = 0
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][3] = {}
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][3]["Id"] = 721535
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][3]["ItemNum"] = 15
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][3]["Monopoly"] = 0
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][4] = {}
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][4]["Id"] = 721536
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][4]["ItemNum"] = 15
	tTradeNew_GoodForOld_CostReward[2]["DeleteItem"][4]["Monopoly"] = 0
	tTradeNew_GoodForOld_CostReward[2]["RewardItem"] = {}
	tTradeNew_GoodForOld_CostReward[2]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_CostReward[2]["RewardItem"][1]["Id"] = 3313620
	tTradeNew_GoodForOld_CostReward[2]["RewardItem"][1]["Attr"] = "0 2"
	tTradeNew_GoodForOld_CostReward[2]["RewardEffect"] = {}
	tTradeNew_GoodForOld_CostReward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_CostReward[2]["RewardEffect"]["Effect"] = "angelwing"
	-- 扣除金币
	tTradeNew_GoodForOld_CostReward[3] = {}
	tTradeNew_GoodForOld_CostReward[3]["LogId"] = 12001565
	tTradeNew_GoodForOld_CostReward[3]["EmoneyLog"] = ""
	tTradeNew_GoodForOld_CostReward[3]["RewardItem"] = {}
	tTradeNew_GoodForOld_CostReward[3]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_CostReward[3]["RewardItem"][1]["Id"] = 3313620
	tTradeNew_GoodForOld_CostReward[3]["RewardItem"][1]["Attr"] = "0 200"
	tTradeNew_GoodForOld_CostReward[3]["RewardEffect"] = {}
	tTradeNew_GoodForOld_CostReward[3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_CostReward[3]["RewardEffect"]["Effect"] = "angelwing"

-- 物品消耗金币或者天石打开蝴蝶
local tTradeNew_GoodForOld_CostOpen = {}
	-- 索引对应物品id
	-- CostEmoney 所需消耗的天石 CostMoney 所需消耗的金币
	-- CostEmoneyLog 消耗天石对应log。%d对应天石数量
	--  CostMoneyLog 消耗金币对应log,记录步骤方式
	-- 打开+3马匹*1礼包 350 22601
	tTradeNew_GoodForOld_CostOpen[3313525] = {}
	tTradeNew_GoodForOld_CostOpen[3313525]["CostEmoney"] = 9
	tTradeNew_GoodForOld_CostOpen[3313525]["CostMoney"] = 360000
	tTradeNew_GoodForOld_CostOpen[3313525]["CostEmoneyLog"] = "350	22601	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313525]["CostMoneyLog"] = "350	22601	0	0	1	"
	-- 打开明亮星陨石礼包 350 22602
	tTradeNew_GoodForOld_CostOpen[3313526] = {}
	tTradeNew_GoodForOld_CostOpen[3313526]["CostEmoney"] = 9
	tTradeNew_GoodForOld_CostOpen[3313526]["CostMoney"] = 360000
	tTradeNew_GoodForOld_CostOpen[3313526]["CostEmoneyLog"] = "350	22602	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313526]["CostMoneyLog"] = "350	22602	0	0	1	"
	-- 打开500气力值礼包 350 22603
	tTradeNew_GoodForOld_CostOpen[3313527] = {}
	tTradeNew_GoodForOld_CostOpen[3313527]["CostEmoney"] = 9
	tTradeNew_GoodForOld_CostOpen[3313527]["CostMoney"] = 360000
	tTradeNew_GoodForOld_CostOpen[3313527]["CostEmoneyLog"] = "350	22603	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313527]["CostMoneyLog"] = "350	22603	0	0	1	"
	-- 打开赤炼石奖盘礼包 350 22604
	tTradeNew_GoodForOld_CostOpen[3313528] = {}
	tTradeNew_GoodForOld_CostOpen[3313528]["CostEmoney"] = 19
	tTradeNew_GoodForOld_CostOpen[3313528]["CostMoney"] = 760000
	tTradeNew_GoodForOld_CostOpen[3313528]["CostEmoneyLog"] = "350	22604	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313528]["CostMoneyLog"] = "350	22604	0	0	1	"
	-- 打开星陨石奖盘*1 350 22605
	tTradeNew_GoodForOld_CostOpen[3313529] = {}
	tTradeNew_GoodForOld_CostOpen[3313529]["CostEmoney"] = 9
	tTradeNew_GoodForOld_CostOpen[3313529]["CostMoney"] = 360000
	tTradeNew_GoodForOld_CostOpen[3313529]["CostEmoneyLog"] = "350	22605	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313529]["CostMoneyLog"] = "350	22605	0	0	1	"
	-- 打开气力值奖盘*1 350 22606
	tTradeNew_GoodForOld_CostOpen[3313530] = {}
	tTradeNew_GoodForOld_CostOpen[3313530]["CostEmoney"] = 6
	tTradeNew_GoodForOld_CostOpen[3313530]["CostMoney"] = 240000
	tTradeNew_GoodForOld_CostOpen[3313530]["CostEmoneyLog"] = "350	22606	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313530]["CostMoneyLog"] = "350	22606	0	0	1	"
	-- 打开天石（赠）奖盘礼包 350 22608
	tTradeNew_GoodForOld_CostOpen[3313531] = {}
	tTradeNew_GoodForOld_CostOpen[3313531]["CostEmoney"] = 27
	tTradeNew_GoodForOld_CostOpen[3313531]["CostMoney"] = 1100000
	tTradeNew_GoodForOld_CostOpen[3313531]["CostEmoneyLog"] = "350	22608	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313531]["CostMoneyLog"] = "350	22608	0	0	1	"
	-- 打开赠品神纹源晶礼包 350 22611
	tTradeNew_GoodForOld_CostOpen[3313532] = {}
	tTradeNew_GoodForOld_CostOpen[3313532]["CostEmoney"] = 69
	tTradeNew_GoodForOld_CostOpen[3313532]["CostMoney"] = 3200000
	tTradeNew_GoodForOld_CostOpen[3313532]["CostEmoneyLog"] = "350	22611	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3313532]["CostMoneyLog"] = "350	22611	0	0	1	"
	-- 百炼天机果礼盒 350 22944
	tTradeNew_GoodForOld_CostOpen[3314819] = {}
	tTradeNew_GoodForOld_CostOpen[3314819]["CostEmoney"] = 27
	tTradeNew_GoodForOld_CostOpen[3314819]["CostMoney"] = 1100000
	tTradeNew_GoodForOld_CostOpen[3314819]["CostEmoneyLog"] = "350	22944	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3314819]["CostMoneyLog"] = "350	22944	0	0	1	"
	
	-- 忍法帖材料转盘礼包 350 22944
	tTradeNew_GoodForOld_CostOpen[3332001] = {}
	tTradeNew_GoodForOld_CostOpen[3332001]["CostEmoney"] = 50
	tTradeNew_GoodForOld_CostOpen[3332001]["CostMoney"] = 4000000
	tTradeNew_GoodForOld_CostOpen[3332001]["CostEmoneyLog"] = "350	23215	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3332001]["CostMoneyLog"] = "350	23215	0	0	1	"
	
	-- 百兵谱材料转盘礼包 350 22944
	tTradeNew_GoodForOld_CostOpen[3332002] = {}
	tTradeNew_GoodForOld_CostOpen[3332002]["CostEmoney"] = 50
	tTradeNew_GoodForOld_CostOpen[3332002]["CostMoney"] = 4000000
	tTradeNew_GoodForOld_CostOpen[3332002]["CostEmoneyLog"] = "350	23216	%d	%d	1	"
	tTradeNew_GoodForOld_CostOpen[3332002]["CostMoneyLog"] = "350	23216	0	0	1	"
	
-- 奖励表
local tTradeNew_GoodForOld_Reward = {}
	-- === +3马匹礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3313525]
	-- ===删除: 3313525,1
	tTradeNew_GoodForOld_Reward[3313525] = {}
	tTradeNew_GoodForOld_Reward[3313525]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313525]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313525]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313525]["DeleteItem"][1]["Id"] = 3313525 -- 【库】+3马匹礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3313525]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3313525]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313525]["RewardItem"][1]["Id"] = 300000 -- Steed[300000][属性:0][叠加:0][金币:0], 【表格】雪脂马
	tTradeNew_GoodForOld_Reward[3313525]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 65430 0 255 0 3 0 0 0 0 0 0 150" -- （追加+3）雪脂马(普通马)（赠）*1
	tTradeNew_GoodForOld_Reward[3313525]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313525]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313525]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313526] = {}
	-- ===明亮星陨石礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3313526]
	-- ===删除: 3313526,1
	tTradeNew_GoodForOld_Reward[3313526]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313526]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313526]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313526]["DeleteItem"][1]["Id"] = 3313526 -- 【库】明亮星陨石礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3313526]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3313526]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313526]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tTradeNew_GoodForOld_Reward[3313526]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tTradeNew_GoodForOld_Reward[3313526]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313526]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313526]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313527] = {}
	-- ===500气力值礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3313527]
	-- ===删除: 3313527,1
	tTradeNew_GoodForOld_Reward[3313527]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313527]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313527]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313527]["DeleteItem"][1]["Id"] = 3313527 -- 【库】500气力值礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3313527]["RewardStrengthValue"] = {}
	tTradeNew_GoodForOld_Reward[3313527]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tTradeNew_GoodForOld_Reward[3313527]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313527]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313527]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313528] = {}
	-- ===赤炼石轮盘包
	-- ===索引: tTradeNew_GoodForOld_Reward[3313528]
	-- ===删除: 3313528,1
	tTradeNew_GoodForOld_Reward[3313528]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313528]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313528]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313528]["DeleteItem"][1]["Id"] = 3313528 -- 【库】赤炼石轮盘包[属性:9]
	tTradeNew_GoodForOld_Reward[3313528]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3313528]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313528]["RewardItem"][1]["Id"] = 3313535 -- 赤炼石极运轮盘[3313535][属性:9][叠加:1][金币:0], 【表格】赤炼石极运轮盘
	tTradeNew_GoodForOld_Reward[3313528]["RewardItem"][1]["Attr"] = "0 1" -- 赤炼石极运轮盘*1
	tTradeNew_GoodForOld_Reward[3313528]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313528]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313528]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313529] = {}
	-- ===星陨石轮盘包
	-- ===索引: tTradeNew_GoodForOld_Reward[3313529]
	-- ===删除: 33135229,1
	tTradeNew_GoodForOld_Reward[3313529]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313529]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313529]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313529]["DeleteItem"][1]["Id"] = 3313529 -- 【库】 3313529 【库里没有该物品】[属性:]
	tTradeNew_GoodForOld_Reward[3313529]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3313529]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313529]["RewardItem"][1]["Id"] = 3313536 -- 星陨石极运轮盘[3313536][属性:9][叠加:1][金币:0], 【表格】星陨石极运轮盘
	tTradeNew_GoodForOld_Reward[3313529]["RewardItem"][1]["Attr"] = "0 1" -- 星陨石极运轮盘*1
	tTradeNew_GoodForOld_Reward[3313529]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313529]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313529]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313530] = {}
	-- ===气力值轮盘包
	-- ===索引: tTradeNew_GoodForOld_Reward[3313530]
	-- ===删除: 3313530,1
	tTradeNew_GoodForOld_Reward[3313530]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313530]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313530]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313530]["DeleteItem"][1]["Id"] = 3313530 -- 【库】气力值轮盘包[属性:9]
	tTradeNew_GoodForOld_Reward[3313530]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3313530]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313530]["RewardItem"][1]["Id"] = 3313537 -- 气力值极运轮盘[3313537][属性:9][叠加:1][金币:0], 【表格】气力值极运轮盘
	tTradeNew_GoodForOld_Reward[3313530]["RewardItem"][1]["Attr"] = "0 1" -- 气力值极运轮盘*1
	tTradeNew_GoodForOld_Reward[3313530]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313530]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313530]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313531] = {}
	-- ===天石（赠）轮盘包
	-- ===索引: tTradeNew_GoodForOld_Reward[3313531]
	-- ===删除: 3313531,1
	tTradeNew_GoodForOld_Reward[3313531]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313531]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313531]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313531]["DeleteItem"][1]["Id"] = 3313531 -- 【库】天石（赠）轮盘包[属性:9]
	tTradeNew_GoodForOld_Reward[3313531]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3313531]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313531]["RewardItem"][1]["Id"] = 3313538 -- 天石（赠）极运轮盘[3313538][属性:9][叠加:1][金币:0], 【表格】天石（赠）极运轮盘
	tTradeNew_GoodForOld_Reward[3313531]["RewardItem"][1]["Attr"] = "0 1" -- 天石（赠）极运轮盘*1
	tTradeNew_GoodForOld_Reward[3313531]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313531]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313531]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313532] = {}
	-- ===神纹源晶（赠）礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3313532]
	-- ===删除: 3313532,1
	tTradeNew_GoodForOld_Reward[3313532]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313532]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313532]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313532]["DeleteItem"][1]["Id"] = 3313532 -- 【库】神纹源晶（赠）礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3313532]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3313532]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313532]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）
	tTradeNew_GoodForOld_Reward[3313532]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tTradeNew_GoodForOld_Reward[3313532]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313532]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313532]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313533] = {}
	-- ===100修行值礼包
	-- ===索引: tTradeNew_GoodForOld_Reward[3313533]
	-- ===删除: 3313533,1
	-- ===EMoneyLog:350,22609
	tTradeNew_GoodForOld_Reward[3313533]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313533]["EmoneyLog"] = "350	22609	0	0	1	"
	tTradeNew_GoodForOld_Reward[3313533]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313533]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313533]["DeleteItem"][1]["Id"] = 3313533 -- 【库】100修行值礼包[属性:9]
	tTradeNew_GoodForOld_Reward[3313533]["RewardCultivation"] = {}
	tTradeNew_GoodForOld_Reward[3313533]["RewardCultivation"]["Value"] = 100 -- 修行值, 【需求】100修行值
	tTradeNew_GoodForOld_Reward[3313533]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313533]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313533]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313534] = {}
	-- ===100修为值礼包
	-- ===索引: tTradeNew_GoodForOld_Reward[3313534]
	-- ===删除: 3313534,1
	-- ===EMoneyLog:350,22610
	tTradeNew_GoodForOld_Reward[3313534]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313534]["EmoneyLog"] = "350	22610	0	0	1	"
	tTradeNew_GoodForOld_Reward[3313534]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313534]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313534]["DeleteItem"][1]["Id"] = 3313534 -- 【库】100修为值礼包[属性:9]
	tTradeNew_GoodForOld_Reward[3313534]["RewardRepairValue"] = {}
	tTradeNew_GoodForOld_Reward[3313534]["RewardRepairValue"]["Value"] = 100 -- 修为值, 【需求】100修为值
	tTradeNew_GoodForOld_Reward[3313534]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313534]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313534]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3313620] = {}
	-- ===珍宝币过期删除
	-- ===索引: tTradeNew_GoodForOld_Reward[3313620]
	-- ===删除: 3313620,1
	tTradeNew_GoodForOld_Reward[3313620]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3313620]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3313620]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3313620]["DeleteItem"][1]["Id"] = 3313620 -- 【库】珍宝币[属性:9]
	tTradeNew_GoodForOld_Reward[3313620]["DeleteItem"][1]["ItemNum"] = 1
	tTradeNew_GoodForOld_Reward[3313620]["RewardStrengthValue"] = {}
	tTradeNew_GoodForOld_Reward[3313620]["RewardStrengthValue"]["Value"] = 1 -- 气力值, 【需求】1气力值
	tTradeNew_GoodForOld_Reward[3313620]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3313620]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3313620]["RewardEffect"]["Effect"] = "angelwing"
	
	
	-- ===龙鳞果礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3314818]
	-- ===删除: 3314818,1
	-- ===EMoneyLog:350,22943
	tTradeNew_GoodForOld_Reward[3314818] = {}
	tTradeNew_GoodForOld_Reward[3314818]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3314818]["EmoneyLog"] = "350	22943	0	0	1	"
	tTradeNew_GoodForOld_Reward[3314818]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3314818]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3314818]["DeleteItem"][1]["Id"] = 3314818 -- 【库】DragonFruitPack[属性:9]
	tTradeNew_GoodForOld_Reward[3314818]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3314818]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3314818]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果
	tTradeNew_GoodForOld_Reward[3314818]["RewardItem"][1]["Attr"] = "0 1" -- DragonFruit*1
	tTradeNew_GoodForOld_Reward[3314818]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3314818]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3314818]["RewardEffect"]["Effect"] = "angelwing"


	tTradeNew_GoodForOld_Reward[3314819] = {}
	-- ===百炼天机果礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3314819]
	-- ===删除: 3314819,1
	tTradeNew_GoodForOld_Reward[3314819]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3314819]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3314819]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3314819]["DeleteItem"][1]["Id"] = 3314819 -- 【库】MysteryFruitPack[属性:9]
	tTradeNew_GoodForOld_Reward[3314819]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3314819]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3314819]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】百炼天机果
	tTradeNew_GoodForOld_Reward[3314819]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tTradeNew_GoodForOld_Reward[3314819]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3314819]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3314819]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===忍法帖材料转盘礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3332001]
	-- ===删除: 3332001,1
	-- ===
	tTradeNew_GoodForOld_Reward[3332001] = {}
	tTradeNew_GoodForOld_Reward[3332001]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3332001]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3332001]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3332001]["DeleteItem"][1]["Id"] = 3332001 -- 【库】 3332001 【enzf15库里没有该物品】[属性:]
	tTradeNew_GoodForOld_Reward[3332001]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3332001]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3332001]["RewardItem"][1]["Id"] = 3331832 -- NinpoScrollWheel[3331832][属性:9][叠加:10000][金币:0], 【表格】忍法帖材料转盘
	tTradeNew_GoodForOld_Reward[3332001]["RewardItem"][1]["Attr"] = "0 1" -- NinpoScrollWheel*1
	tTradeNew_GoodForOld_Reward[3332001]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3332001]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3332001]["RewardEffect"]["Effect"] = "angelwing"


	-- ===百兵谱材料转盘礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3332002]
	-- ===删除: 3332002,1
	-- ===
	tTradeNew_GoodForOld_Reward[3332002] = {}
	tTradeNew_GoodForOld_Reward[3332002]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3332002]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3332002]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3332002]["DeleteItem"][1]["Id"] = 3332002 -- 【库】 3332002 【enzf15库里没有该物品】[属性:]
	tTradeNew_GoodForOld_Reward[3332002]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3332002]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3332002]["RewardItem"][1]["Id"] = 3331833 -- WeaponArchiveWheel[3331833][属性:9][叠加:10000][金币:0], 【表格】百兵谱材料转盘
	tTradeNew_GoodForOld_Reward[3332002]["RewardItem"][1]["Attr"] = "0 1" -- WeaponArchiveWheel*1
	tTradeNew_GoodForOld_Reward[3332002]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3332002]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3332002]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===秘术精华*1礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331866]
	-- ===删除: 3331866,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331866] = {}
	tTradeNew_GoodForOld_Reward[3331866]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331866]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331866]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331866]["DeleteItem"][1]["Id"] = 3331866 -- 【库】秘术精华*1礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331866]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331866]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331866]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tTradeNew_GoodForOld_Reward[3331866]["RewardItem"][1]["Attr"] = "0 1" -- ArcaneEssence*1
	tTradeNew_GoodForOld_Reward[3331866]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331866]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331866]["RewardEffect"]["Effect"] = "angelwing"


	-- ===秘术精华*3礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331867]
	-- ===删除: 3331867,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331867] = {}
	tTradeNew_GoodForOld_Reward[3331867]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331867]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331867]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331867]["DeleteItem"][1]["Id"] = 3331867 -- 【库】秘术精华*3礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331867]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331867]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331867]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tTradeNew_GoodForOld_Reward[3331867]["RewardItem"][1]["Attr"] = "0 3" -- ArcaneEssence*3
	tTradeNew_GoodForOld_Reward[3331867]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331867]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331867]["RewardEffect"]["Effect"] = "angelwing"


	-- ===秘术精华*4礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331868]
	-- ===删除: 3331868,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331868] = {}
	tTradeNew_GoodForOld_Reward[3331868]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331868]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331868]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331868]["DeleteItem"][1]["Id"] = 3331868 -- 【库】秘术精华*4礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331868]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331868]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331868]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tTradeNew_GoodForOld_Reward[3331868]["RewardItem"][1]["Attr"] = "0 4" -- ArcaneEssence*4
	tTradeNew_GoodForOld_Reward[3331868]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331868]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331868]["RewardEffect"]["Effect"] = "angelwing"


	-- ===秘术精华*8礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331869]
	-- ===删除: 3331869,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331869] = {}
	tTradeNew_GoodForOld_Reward[3331869]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331869]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331869]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331869]["DeleteItem"][1]["Id"] = 3331869 -- 【库】秘术精华*8礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331869]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331869]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331869]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tTradeNew_GoodForOld_Reward[3331869]["RewardItem"][1]["Attr"] = "0 8" -- ArcaneEssence*8
	tTradeNew_GoodForOld_Reward[3331869]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331869]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331869]["RewardEffect"]["Effect"] = "angelwing"


	-- ===秘术精华*10礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331870]
	-- ===删除: 3331870,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331870] = {}
	tTradeNew_GoodForOld_Reward[3331870]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331870]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331870]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331870]["DeleteItem"][1]["Id"] = 3331870 -- 【库】秘术精华*10礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331870]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331870]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331870]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华
	tTradeNew_GoodForOld_Reward[3331870]["RewardItem"][1]["Attr"] = "0 10" -- ArcaneEssence*10
	tTradeNew_GoodForOld_Reward[3331870]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331870]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331870]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血狱花*1礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331871]
	-- ===删除: 3331871,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331871] = {}
	tTradeNew_GoodForOld_Reward[3331871]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331871]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331871]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331871]["DeleteItem"][1]["Id"] = 3331871 -- 【库】血狱花*1礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331871]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331871]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331871]["RewardItem"][1]["Id"] = 3327203 -- BloodLotus[3327203][属性:8][叠加:10000][金币:0], 【表格】血玉花
	tTradeNew_GoodForOld_Reward[3331871]["RewardItem"][1]["Attr"] = "0 1 3" -- BloodLotus（赠）*1
	tTradeNew_GoodForOld_Reward[3331871]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331871]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331871]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血狱花*2礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331872]
	-- ===删除: 3331872,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331872] = {}
	tTradeNew_GoodForOld_Reward[3331872]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331872]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331872]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331872]["DeleteItem"][1]["Id"] = 3331872 -- 【库】血狱花*2礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331872]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331872]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331872]["RewardItem"][1]["Id"] = 3327203 -- BloodLotus[3327203][属性:8][叠加:10000][金币:0], 【表格】血玉花
	tTradeNew_GoodForOld_Reward[3331872]["RewardItem"][1]["Attr"] = "0 2 3" -- BloodLotus（赠）*2
	tTradeNew_GoodForOld_Reward[3331872]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331872]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331872]["RewardEffect"]["Effect"] = "angelwing"


	-- ===血狱花*3礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331873]
	-- ===删除: 3331873,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331873] = {}
	tTradeNew_GoodForOld_Reward[3331873]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331873]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331873]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331873]["DeleteItem"][1]["Id"] = 3331873 -- 【库】血狱花*3礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331873]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331873]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331873]["RewardItem"][1]["Id"] = 3327203 -- BloodLotus[3327203][属性:8][叠加:10000][金币:0], 【表格】血玉花
	tTradeNew_GoodForOld_Reward[3331873]["RewardItem"][1]["Attr"] = "0 3 3" -- BloodLotus（赠）*3
	tTradeNew_GoodForOld_Reward[3331873]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331873]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331873]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*1礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331874]
	-- ===删除: 3331874,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331874] = {}
	tTradeNew_GoodForOld_Reward[3331874]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331874]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331874]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331874]["DeleteItem"][1]["Id"] = 3331874 -- 【库】神兵灵魂*1礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331874]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331874]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331874]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331874]["RewardItem"][1]["Attr"] = "0 1" -- LegendaryEssence*1
	tTradeNew_GoodForOld_Reward[3331874]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331874]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331874]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*2礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331875]
	-- ===删除: 3331875,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331875] = {}
	tTradeNew_GoodForOld_Reward[3331875]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331875]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331875]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331875]["DeleteItem"][1]["Id"] = 3331875 -- 【库】神兵灵魂*2礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331875]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331875]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331875]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331875]["RewardItem"][1]["Attr"] = "0 2" -- LegendaryEssence*2
	tTradeNew_GoodForOld_Reward[3331875]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331875]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331875]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*4礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331876]
	-- ===删除: 3331876,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331876] = {}
	tTradeNew_GoodForOld_Reward[3331876]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331876]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331876]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331876]["DeleteItem"][1]["Id"] = 3331876 -- 【库】神兵灵魂*4礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331876]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331876]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331876]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331876]["RewardItem"][1]["Attr"] = "0 4" -- LegendaryEssence*4
	tTradeNew_GoodForOld_Reward[3331876]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331876]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331876]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*5礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331877]
	-- ===删除: 3331877,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331877] = {}
	tTradeNew_GoodForOld_Reward[3331877]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331877]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331877]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331877]["DeleteItem"][1]["Id"] = 3331877 -- 【库】神兵灵魂*5礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331877]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331877]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331877]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331877]["RewardItem"][1]["Attr"] = "0 5" -- LegendaryEssence*5
	tTradeNew_GoodForOld_Reward[3331877]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331877]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331877]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*6礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331878]
	-- ===删除: 3331878,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331878] = {}
	tTradeNew_GoodForOld_Reward[3331878]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331878]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331878]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331878]["DeleteItem"][1]["Id"] = 3331878 -- 【库】神兵灵魂*6礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331878]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331878]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331878]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331878]["RewardItem"][1]["Attr"] = "0 6" -- LegendaryEssence*6
	tTradeNew_GoodForOld_Reward[3331878]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331878]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331878]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*8礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331879]
	-- ===删除: 3331879,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331879] = {}
	tTradeNew_GoodForOld_Reward[3331879]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331879]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331879]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331879]["DeleteItem"][1]["Id"] = 3331879 -- 【库】神兵灵魂*8礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331879]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331879]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331879]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331879]["RewardItem"][1]["Attr"] = "0 8" -- LegendaryEssence*8
	tTradeNew_GoodForOld_Reward[3331879]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331879]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331879]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*10礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331880]
	-- ===删除: 3331880,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331880] = {}
	tTradeNew_GoodForOld_Reward[3331880]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331880]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331880]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331880]["DeleteItem"][1]["Id"] = 3331880 -- 【库】神兵灵魂*10礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331880]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331880]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331880]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331880]["RewardItem"][1]["Attr"] = "0 10" -- LegendaryEssence*10
	tTradeNew_GoodForOld_Reward[3331880]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331880]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331880]["RewardEffect"]["Effect"] = "angelwing"


	-- ===神兵灵魂*15礼盒
	-- ===索引: tTradeNew_GoodForOld_Reward[3331881]
	-- ===删除: 3331881,1
	-- ===
	tTradeNew_GoodForOld_Reward[3331881] = {}
	tTradeNew_GoodForOld_Reward[3331881]["LogId"] = 12001565
	tTradeNew_GoodForOld_Reward[3331881]["DeleteItem"] = {}
	tTradeNew_GoodForOld_Reward[3331881]["DeleteItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331881]["DeleteItem"][1]["Id"] = 3331881 -- 【库】神兵灵魂*15礼盒[属性:9]
	tTradeNew_GoodForOld_Reward[3331881]["RewardItem"] = {}
	tTradeNew_GoodForOld_Reward[3331881]["RewardItem"][1] = {}
	tTradeNew_GoodForOld_Reward[3331881]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄
	tTradeNew_GoodForOld_Reward[3331881]["RewardItem"][1]["Attr"] = "0 15" -- LegendaryEssence*15
	tTradeNew_GoodForOld_Reward[3331881]["RewardEffect"] = {}
	tTradeNew_GoodForOld_Reward[3331881]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tTradeNew_GoodForOld_Reward[3331881]["RewardEffect"]["Effect"] = "angelwing"
	
--------------------------------------逻辑配置部分--------------------------------------
-- 获取掩码值
function TradeNew_GoodForOld_GetStcValue(nIndex,nUserId)
	local nEvent = tTradeNew_GoodForOld_Stc[nIndex]["EventType"]
	local nType = tTradeNew_GoodForOld_Stc[nIndex]["DataType"]
	
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function TradeNew_GoodForOld_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tTradeNew_GoodForOld_Stc[nIndex]["EventType"]
	local nType = tTradeNew_GoodForOld_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 增加掩码值
function TradeNew_GoodForOld_AddStcValue(nIndex,nData,nUserId)
	local nEvent = tTradeNew_GoodForOld_Stc[nIndex]["EventType"]
	local nType = tTradeNew_GoodForOld_Stc[nIndex]["DataType"]
	
	Task_AddStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置初始化
function TradeNew_GoodForOld_ClearStcInterval(nUserId)
	local bClear = false
	local nStcNum = #tTradeNew_GoodForOld_Stc
	for i=1,nStcNum do
		local nEvent = tTradeNew_GoodForOld_Stc[i]["EventType"]
		local nType = tTradeNew_GoodForOld_Stc[i]["DataType"]
		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			bClear = true
			break
		end
	end
	
	if bClear then
		for nIndex=1,nStcNum do
			local nEvent = tTradeNew_GoodForOld_Stc[nIndex]["EventType"]
			local nType = tTradeNew_GoodForOld_Stc[nIndex]["DataType"]
			Task_SetStatistic(nEvent,nType,tTradeNew_GoodForOld_Count["StcBasicData"],1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
end

-- 掩码初次初始化
function TradeNew_GoodForOld_InitStcInterval(nUserId)
	local nData = TradeNew_GoodForOld_GetStcValue(1)
	local nStcBasicData = tTradeNew_GoodForOld_Count["StcBasicData"]
	local nStcNum = #tTradeNew_GoodForOld_Stc
	if nData < nStcBasicData then
		for nIndex=1,nStcNum do
			local nEvent = tTradeNew_GoodForOld_Stc[nIndex]["EventType"]
			local nType = tTradeNew_GoodForOld_Stc[nIndex]["DataType"]
			Task_SetStatistic(nEvent,nType,nStcBasicData,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
	end
end

-- 兑换物品上限
function TradeNew_GoodForOld_ChkLimit(nIndex)
	local tItemLimit = tTradeNew_GoodForOld_ItemLimit[nIndex]
	-- 获得上限的stc值
	local nStcIndex = tItemLimit["StcIndex"]
	local nData = TradeNew_GoodForOld_GetStcValue(nStcIndex)
	-- 获得当前物品的上限值
	local nStart = tItemLimit["StcStartIndex"]
	local nEnd = tItemLimit["StcEndIndex"]
	local nHaveAdd = tonumber(string.sub(nData,nStart,nEnd))
	if nHaveAdd >= tItemLimit["StcLimit"] then
		return false
	end
	return true
end

--------------------------------------npc使用
-- 上交物品
function TradeNew_GoodForOld_ExchangeItem(nNpcId,nGatherIndex)
	if not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 初始化掩码
	TradeNew_GoodForOld_InitStcInterval(nUserId)
	-- 隔天清除
	TradeNew_GoodForOld_ClearStcInterval(nUserId)
	
	-- 选项初始化
	TradeNew_GoodForOld_InitOption(nNpcId,nGatherIndex)
	
	local sMainDialog = tTradeNew_GoodForOld_Count["Gather"][nGatherIndex]["MainDialog"]
	LinkNpcGossipFunc_New(nNpcId,sMainDialog)
end

-- 选项初始化
function TradeNew_GoodForOld_InitOption(nNpcId,nGatherIndex)
	local sMainDialog = tTradeNew_GoodForOld_Count["Gather"][nGatherIndex]["MainDialog"]
	tNpcGossip[nNpcId]["tOption"..sMainDialog] = {}
	
	local nOption = tTradeNew_GoodForOld_Count["Gather"][nGatherIndex]["OptionStart"]
	local tOption = tNpcGossip[nNpcId]["tOption"..sMainDialog]
	local tOptionText = {}
	local sFunc = "TradeNew_GoodForOld_RealExchangeItem</N>%d</N>%d</N>%d"
	local sNewFunc = "TradeNew_GoodForOld_GoalExchangeItem</N>%d</N>%d</N>%d"
	local sNewNewFunc = "TradeNew_GoodForOld_MergeExchangeItem</N>%d</N>%d</N>%d"
	for i,v in pairs(tTradeNew_GoodForOld_Count["Gather"][nGatherIndex]["Item"]) do
		local tItemLimit = tTradeNew_GoodForOld_ItemLimit[v]
		local tItemId = tItemLimit["ItemId"]
		local nItemNum = tItemLimit["ItemNum"]
		local nMonopoly = tItemLimit["Monopoly"]
		local sTextName = tTradeNew_GoodForOld_Text["ExchangeName"][v]
		if type(tItemId) == "table" then
			local bHave = true
			for a,b in pairs(tItemId) do
				-- 合并删除的矿洞道具
				if v == 16 then
					if not Item_ChkMulItem(b,b,nItemNum,nMonopoly) then
						bHave = false
					end
				else
					if Item_ChkMulItem(b,b,nItemNum,nMonopoly) then
						bHave = false
					end
				end
			end
			if v == 16 and bHave then
				if TradeNew_GoodForOld_ChkLimit(v) then
					table.insert(tOption,nOption)
					tNpcGossip[nNpcId]["Option"..nOption] = sTextName
					tNpcGossip[nNpcId]["OptionFunc"..nOption] = string.format(sNewNewFunc,nNpcId,nGatherIndex,v)
					nOption = nOption + 1
				end
			end
			if v ~= 16 and not bHave then
				if TradeNew_GoodForOld_ChkLimit(v) then
					table.insert(tOption,nOption)
					tNpcGossip[nNpcId]["Option"..nOption] = sTextName
					tNpcGossip[nNpcId]["OptionFunc"..nOption] = string.format(sFunc,nNpcId,nGatherIndex,v)
					nOption = nOption + 1
				end
			end
		else
			-- 判断金币
			if tItemId == 0 then
				if User_CanPutMoney2Bag(-nItemNum,nUserId) then
					if TradeNew_GoodForOld_ChkLimit(v) then
						table.insert(tOption,nOption)
						tNpcGossip[nNpcId]["Option"..nOption] = sTextName
						tNpcGossip[nNpcId]["OptionFunc"..nOption] = string.format(sNewFunc,nNpcId,nGatherIndex,v)
						nOption = nOption + 1
					end
				end
			else
				if Item_ChkMulItem(tItemId,tItemId,nItemNum,nMonopoly) then
					if TradeNew_GoodForOld_ChkLimit(v) then
						table.insert(tOption,nOption)
						tNpcGossip[nNpcId]["Option"..nOption] = sTextName
						tNpcGossip[nNpcId]["OptionFunc"..nOption] = string.format(sFunc,nNpcId,nGatherIndex,v)
						nOption = nOption + 1
					end
				end
			end
		end
	end
	-- 闲聊
	table.insert(tOption,400)
	tNpcGossip[nNpcId]["Option400"] = tTradeNew_GoodForOld_Text[nNpcId]["Option213"]
	tNpcGossip[nNpcId]["OptionPoint400"] = 1
end

-- 上交物品
function TradeNew_GoodForOld_RealExchangeItem(nNpcId,nGatherIndex,nItemIndex)
	if not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 隔天清除
	TradeNew_GoodForOld_ClearStcInterval(nUserId)
	
	-- 检测上限
	if not TradeNew_GoodForOld_ChkLimit(nItemIndex) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["Limit"])
		return
	end
	
	if nItemIndex == 26 then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	if nItemIndex == 27 then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	-- 检测物品存在
	local tItemLimit = tTradeNew_GoodForOld_ItemLimit[nItemIndex]
	local nDelItemId = 0
	local tItemId = tItemLimit["ItemId"]
	local nItemNum = tItemLimit["ItemNum"]
	local nMonopoly = tItemLimit["Monopoly"]
	if type(tItemId) == "table" then
		local bHave = false
		for a,b in pairs(tItemId) do
			-- 合并删除的矿洞道具
			if Item_ChkMulItem(b,b,nItemNum,nMonopoly) then
				bHave = true
				nDelItemId = b
				break
			end
		end
		if not bHave then
			Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["NoItem"])
			return
		end
	else
		nDelItemId = tItemId
		if not Item_ChkMulItem(tItemId,tItemId,nItemNum,nMonopoly) then
			Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["NoItem"])
			return
		end
	end
	-- 判断背包空间
	local tReward = CommonFunc_Copy(tTradeNew_GoodForOld_CostReward[1])
	tReward["EmoneyLog"] = string.format(tItemLimit["EmoneyLog"],1)
	tReward["DeleteItem"][1]["Id"] = nDelItemId
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	tReward["DeleteItem"][1]["Monopoly"] = nMonopoly
	local sAttr = tTradeNew_GoodForOld_Count["InitNum"]
	tReward["RewardItem"][1]["Attr"]  = string.format(sAttr,tItemLimit["ExchangeNum"])
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tReward)
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["FullSpace"])
		return
	end
	
	TradeNew_GoodForOld_AddStcValue(tItemLimit["StcIndex"],tItemLimit["StcAdd"])
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	TradeNew_GoodForOld_ExchangeItem(nNpcId,nGatherIndex)
end

-- 上交矿洞道具
function TradeNew_GoodForOld_MergeExchangeItem(nNpcId,nGatherIndex,nItemIndex)
	if not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 隔天清除
	TradeNew_GoodForOld_ClearStcInterval(nUserId)
	
	-- 检测上限
	if not TradeNew_GoodForOld_ChkLimit(nItemIndex) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["Limit"])
		return
	end
	
	-- 检测物品存在
	local tItemLimit = tTradeNew_GoodForOld_ItemLimit[nItemIndex]
	local tItemId = tItemLimit["ItemId"]
	local nItemNum = tItemLimit["ItemNum"]
	local nMonopoly = tItemLimit["Monopoly"]
	for a,b in pairs(tItemId) do
		if Item_ChkMulItem(b,b,nItemNum,nMonopoly) then
			bHave = true
			nDelItemId = b
			break
		end
	end
	if not bHave then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["NoItem"])
		return
	end
	-- 判断背包空间
	local tReward = CommonFunc_Copy(tTradeNew_GoodForOld_CostReward[2])
	tReward["EmoneyLog"] = string.format(tItemLimit["EmoneyLog"],1)
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tReward)
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["FullSpace"])
		return
	end
	
	TradeNew_GoodForOld_AddStcValue(tItemLimit["StcIndex"],tItemLimit["StcAdd"])
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	TradeNew_GoodForOld_ExchangeItem(nNpcId,nGatherIndex)
end

-- 上交银两
function TradeNew_GoodForOld_GoalExchangeItem(nNpcId,nGatherIndex,nItemIndex)
	if not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 隔天清除
	TradeNew_GoodForOld_ClearStcInterval(nUserId)
	
	-- 检测上限
	if not TradeNew_GoodForOld_ChkLimit(nItemIndex) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["Limit"])
		return
	end
	
	-- 判断金币
	local nMoney = tTradeNew_GoodForOld_ItemLimit[nItemIndex]["ItemNum"]
	if not User_CanPutMoney2Bag(-nMoney,nUserId) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["NoMoney"])
		return
	end
	
	-- 判断背包空间
	local tItemLimit = tTradeNew_GoodForOld_ItemLimit[nItemIndex]
	local tReward = CommonFunc_Copy(tTradeNew_GoodForOld_CostReward[3])
	tReward["EmoneyLog"] = string.format(tItemLimit["EmoneyLog"],1)
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tReward)
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["FullSpace"])
		return
	end
	
	if not User_AddMoney(-nMoney) then
		return
	end
	local sCostNormalMoneyLog = tTradeNew_GoodForOld_Log["CostNormalMoneyLog"]
	Sys_SaveActionFestivalLog(string.format(sCostNormalMoneyLog,nMoney))
	TradeNew_GoodForOld_AddStcValue(tItemLimit["StcIndex"],tItemLimit["StcAdd"])
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	TradeNew_GoodForOld_ExchangeItem(nNpcId,nGatherIndex)
end

-- 上交宝石
function TradeNew_GoodForOld_GemExchangeItem(nNpcId,nGatherIndex,nItemIndex,nItemId)
	if not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 隔天清除
	TradeNew_GoodForOld_ClearStcInterval(nUserId)
	
	-- 检测上限
	if not TradeNew_GoodForOld_ChkLimit(nItemIndex) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["Limit"])
		return
	end
	
	-- 检测物品存在
	local tItemLimit = tTradeNew_GoodForOld_ItemLimit[nItemIndex]
	local nDelItemId = nItemId
	local nItemNum = tItemLimit["ItemNum"]
	local nMonopoly = tItemLimit["Monopoly"]
	if not Item_ChkMulItem(nDelItemId,nDelItemId,nItemNum,nMonopoly) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["NoItem"])
		return
	end
	-- 判断背包空间
	local tReward = CommonFunc_Copy(tTradeNew_GoodForOld_CostReward[1])
	tReward["EmoneyLog"] = string.format(tItemLimit["EmoneyLog"],1)
	tReward["DeleteItem"][1]["Id"] = nDelItemId
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	tReward["DeleteItem"][1]["Monopoly"] = nMonopoly
	local sAttr = tTradeNew_GoodForOld_Count["InitNum"]
	tReward["RewardItem"][1]["Attr"]  = string.format(sAttr,tItemLimit["ExchangeNum"])
	local nRewardSpaceNum = RewardTemplate_GetRewardSpace(tReward)
	local nDelSpaceNum = RewardTemplate_GetDelSpace(tReward)
	local nSpaceNum = nRewardSpaceNum - nDelSpaceNum
	if nSpaceNum > 0 and not User_CheckLeftSpace(nSpaceNum,nUserId) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text[nNpcId]["FullSpace"])
		return
	end
	
	TradeNew_GoodForOld_AddStcValue(tItemLimit["StcIndex"],tItemLimit["StcAdd"])
	
	RewardTemplate_UseItemAndMsg(tReward)
	
	TradeNew_GoodForOld_ExchangeItem(nNpcId,nGatherIndex)
end
--------------------------------------物品使用
-- 珍宝币使用
function TradeNew_GoodForOld_UseItem(nItemId)
	-- 过期删除1个对应1气力
	if not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ActivityTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		local tReward = CommonFunc_Copy(tTradeNew_GoodForOld_Reward[nItemId])
		tReward["DeleteItem"][1]["ItemNum"] = nItemNum
		tReward["RewardStrengthValue"]["Value"] = nItemNum
		RewardTemplate_UseItemAndMsg(tReward)
		return
	end
	
	-- 寻路豪礼兑换专员
	NpcPosition_PathFind(24824)
end

-- 物品过期删除
function TradeNew_GoodForOld_OverDel(nItemId)
	if not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ItemUseTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			User_TalkChannel2005(tTradeNew_GoodForOld_Text["OverDue"])
			local sLog = tTradeNew_GoodForOld_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sLog,nItemId,nItemNum))
 		end
		return false
	end
	
	return true
end

-- 其他物品使用
function TradeNew_GoodForOld_OpenItem(nItemId,nType)
	-- 过期删除
	if not TradeNew_GoodForOld_OverDel(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return 
	end
	-- 初始化对白
	local sItemTitle = tTradeNew_GoodForOld_Text[nItemId]["Title"]
	local sItemReward = tTradeNew_GoodForOld_Text[nItemId]["RewardName"]
	-- 消耗天石和金币
	local nCostEmoney = tTradeNew_GoodForOld_CostOpen[nItemId]["CostEmoney"]
	local nCostMoney = tTradeNew_GoodForOld_CostOpen[nItemId]["CostMoney"]
	if nType == 1 then
		tItem[nItemId]["Text111"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Text111"],sItemTitle)
		tItem[nItemId]["Text114"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Text114"],sItemReward)
		tItem[nItemId]["Text113"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Text113"],nCostEmoney,nCostMoney)
		tItem[nItemId]["Option111"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Option111"],nCostEmoney)
		tItem[nItemId]["Option112"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Option112"],nCostMoney)
	else
		tItem[nItemId]["Text111"] = string.format(tTradeNew_GoodForOld_Text[3313528]["Text111"],nCostEmoney,nCostMoney,sItemTitle)
		tItem[nItemId]["Text112"] = sItemReward
		tItem[nItemId]["Option111"] = string.format(tTradeNew_GoodForOld_Text[3313528]["Option111"],nCostEmoney)
		tItem[nItemId]["Option112"] = string.format(tTradeNew_GoodForOld_Text[3313528]["Option112"],nCostMoney)
	end
	tItem[nItemId]["OptionFunc111"] = "TradeNew_GoodForOld_CostEmoney</N>"..nItemId .. "</N>" .. nType .. "</N>" .. nCostEmoney
	tItem[nItemId]["OptionFunc112"] = "TradeNew_GoodForOld_CostMoney</N>"..nItemId .. "</N>" .. nType .. "</N>" .. nCostMoney
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 消耗天石
function TradeNew_GoodForOld_CostEmoney(nItemId,nType,nCostEmoney)
	-- 过期删除
	if not TradeNew_GoodForOld_OverDel(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return 
	end
	-- 天石不足
	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney < nCostEmoney then
		Sys_MsgBox(tTradeNew_GoodForOld_Text["NoEmoney"])
		return
	end
	
	-- 二次确认
	local sItemTitle = tTradeNew_GoodForOld_Text[nItemId]["Title"]
	local sRewardName = tTradeNew_GoodForOld_Text[nItemId]["RewardName"]
	local nCostEmoney = tTradeNew_GoodForOld_CostOpen[nItemId]["CostEmoney"]
	if nType == 1 then
		tItem[nItemId]["Text211"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Text211"],nCostEmoney)
		tItem[nItemId]["Text212"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Text212"],sRewardName)
		tItem[nItemId]["Option211"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Option211"],nCostEmoney)
	else
		tItem[nItemId]["Text211"] = string.format(tTradeNew_GoodForOld_Text[3313528]["Text211"],nCostEmoney,sItemTitle)
		tItem[nItemId]["Option211"] = string.format(tTradeNew_GoodForOld_Text[3313528]["Option211"],nCostEmoney)
	end
	
	tItem[nItemId]["OptionFunc211"] = "TradeNew_GoodForOld_SureCostEmoney</N>"..nItemId .. "</N>" .. nType .. "</N>" .. nCostEmoney
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 二次确认消耗天石
function TradeNew_GoodForOld_SureCostEmoney(nItemId,nType,nCostEmoney)
	-- 过期删除
	if not TradeNew_GoodForOld_OverDel(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return 
	end
	-- 天石不足
	local nUserEmoney = Get_UserEMoney(nUserId)
	if nUserEmoney < nCostEmoney then
		Sys_MsgBox(tTradeNew_GoodForOld_Text["NoEmoney"])
		return
	end
	
	-- 扣除天石给奖励
	if not User_AddEMoney(-nCostEmoney,nUserId) then
		return
	end
	
	local sCostEmoneyLog = tTradeNew_GoodForOld_CostOpen[nItemId]["CostEmoneyLog"]
	local sCostNormalEmoneyLog = tTradeNew_GoodForOld_Log["CostNormalEmoneyLog"]
	Sys_SaveEmoneyBuy(string.format(sCostEmoneyLog,nCostEmoney,nCostEmoney))
	Sys_SaveActionFestivalLog(string.format(sCostNormalEmoneyLog,nCostEmoney))
	
	RewardTemplate_UseItemAndMsg(tTradeNew_GoodForOld_Reward[nItemId])
end

-- 消耗金币
function TradeNew_GoodForOld_CostMoney(nItemId,nType,nCostMoney)
	-- 过期删除
	if not TradeNew_GoodForOld_OverDel(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return 
	end
	-- 银两不足
	if not User_CanPutMoney2Bag(-nCostMoney,nUserId) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text["NoMoney"])
		return
	end
	
	-- 二次确认
	local sItemTitle = tTradeNew_GoodForOld_Text[nItemId]["Title"]
	local sRewardName = tTradeNew_GoodForOld_Text[nItemId]["RewardName"]
	local nCostMoney = tTradeNew_GoodForOld_CostOpen[nItemId]["CostMoney"]
	if nType == 1 then
		tItem[nItemId]["Text221"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Text221"],nCostMoney)
		tItem[nItemId]["Text222"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Text222"],sRewardName)
		tItem[nItemId]["Option221"] = string.format(tTradeNew_GoodForOld_Text[3313525]["Option221"],nCostMoney)
	else
		tItem[nItemId]["Text221"] = string.format(tTradeNew_GoodForOld_Text[3313528]["Text221"],nCostMoney,sItemTitle)
		tItem[nItemId]["Option221"] = string.format(tTradeNew_GoodForOld_Text[3313528]["Option221"],nCostMoney)
	end
	
	tItem[nItemId]["OptionFunc221"] = "TradeNew_GoodForOld_SureCostMoney</N>"..nItemId .. "</N>" .. nType .. "</N>" .. nCostMoney
	LinkItemGossipFunc_New(nItemId,"2-2")
end

-- 二次确认消耗银两
function TradeNew_GoodForOld_SureCostMoney(nItemId,nType,nCostMoney)
	-- 过期删除
	if not TradeNew_GoodForOld_OverDel(nItemId) then
		return
	end
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tRewardTemplate_Text["NoItem"])
		return 
	end
	-- 银两不足
	if not User_CanPutMoney2Bag(-nCostMoney,nUserId) then
		Sys_MsgBox(tTradeNew_GoodForOld_Text["NoMoney"])
		return
	end
	
	-- 扣除银两
	if not User_AddMoney(-nCostMoney,nUserId) then
		return
	end
	
	local sCostMoneyLog = tTradeNew_GoodForOld_CostOpen[nItemId]["CostMoneyLog"]
	local sCostNormalMoneyLog = tTradeNew_GoodForOld_Log["CostNormalMoneyLog"]
	Sys_SaveEmoneyBuy(sCostMoneyLog)
	Sys_SaveActionFestivalLog(string.format(sCostNormalMoneyLog,nCostMoney))
	
	RewardTemplate_UseItemAndMsg(tTradeNew_GoodForOld_Reward[nItemId])
end

--新增物品开包函数 2020(8.20~9.9)
function TradeNew_GoodForOld_newPackOpen(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	local nSpace = RewardTemplate_GetRewardSpace(tTradeNew_GoodForOld_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
	-- 提示
		Sys_MsgBox(string.format(tTradeNew_GoodForOld_Text["FullSpace"],nSpace))
		return
	end
	if Item_DelItem(nItemId) then
		RewardTemplate_Reward(tTradeNew_GoodForOld_Reward[nItemId])
		Sys_SaveActionFestivalLog(string.format("0,0,%d,0,12001565,2,0,0",nItemId))
	end	
end
--------------------------------------NPC模块--------------------------------------
-- 24823,'珍宝回收炉'
tNpcFace[2088] = 407
tNpcGossip[24823] = tNpcGossip[24823] or DefaultNpc:new{}
tNpcGossip[24823]["OptionHidden"] = 1
tNpcGossip[24823]["DialogueText"] = tTradeNew_GoodForOld_Text[24823]
-- 活动前
tNpcGossip[24823]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24823]["tOption1-1"] = {111}
tNpcGossip[24823]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tTradeNew_GoodForOld_Count["ActivityTime"])
end

-- 活动后
tNpcGossip[24823]["Text1-2"] = {121}
tNpcGossip[24823]["tOption1-2"] = {121}
tNpcGossip[24823]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tTradeNew_GoodForOld_Count["ActivityTime"])
end

-- 活动中
tNpcGossip[24823]["Text1-3"] = {131,132,133,114,115}
tNpcGossip[24823]["tOption1-3"] = {131,132,133,134,135,136}
tNpcGossip[24823]["ChkFunc1-3"] = function ()
	return true
end
-- 1、上交鲜花、建材、矿洞道具。
tNpcGossip[24823]["OptionFunc131"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>1"
-- 2、上交流星、龙珠、宝石。
tNpcGossip[24823]["OptionFunc132"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>2"
-- 3、上交日常道具、修炼道具。
tNpcGossip[24823]["OptionFunc133"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>3"
 -- 4、上交副职业道具、情书。
tNpcGossip[24823]["OptionFunc134"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>4"
-- 5、上交银两、药品、清心符。
tNpcGossip[24823]["OptionFunc135"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>5"
-- 6、上交其它道具。
tNpcGossip[24823]["OptionFunc136"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>6"

-- 上交鲜花、建材、矿洞道具
tNpcGossip[24823]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,212,2114}
tNpcGossip[24823]["tOption2-1"] = {211,212,213}
 -- "上交%s"
 -- "一键上交全部珍宝"
 -- "我知道了"
 
-- 阁下请选择上交
 tNpcGossip[24823]["Text2-2"] = {221}
tNpcGossip[24823]["tOption2-2"] = {221,222,223}
-- "上交1个"
 -- "一键上交"
 -- "重新选择"
-- 失败，没有该物品--105提示
-- 失败，背包满--105提示
-- 失败，达到上限--105提示
-- 选择上交上交成功
tNpcGossip[24823]["Text2-3"] = {231,212,232,233,212}
tNpcGossip[24823]["tOption2-3"] = {231}
-- 继续上交。  ====返回上一页 
-- 系统提示
-- 一键上交全部珍宝
tNpcGossip[24823]["Text2-4"] = {241,212,242,243,212}
tNpcGossip[24823]["tOption2-4"] = {241}
-- 确认上交
-- 继续上交其它珍宝

-- 上交任意2颗普通宝石
tNpcGossip[24823]["Text2-5"] = {251}
tNpcGossip[24823]["tOption2-5"] = {251,252,253,254,255,256,257,258}
tNpcGossip[24823]["ChkFunc2-5"] = function ()
	local tItemLimit = tTradeNew_GoodForOld_ItemLimit[26]
	local tItemId = tItemLimit["ItemId"]
	local nItemNum = tItemLimit["ItemNum"]
	local nMonopoly = tItemLimit["Monopoly"]
	for a,b in pairs(tItemId) do
		if not Item_ChkMulItem(b,b,nItemNum,nMonopoly) then
			tNpcGossip[24823]["Option25"..a] = ""
		else
			tNpcGossip[24823]["Option25"..a] = tTradeNew_GoodForOld_Text[24823]["Option25"..a]
		end
	end
	return true
end
tNpcGossip[24823]["OptionFunc251"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>26</N>700041"
tNpcGossip[24823]["OptionFunc252"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>26</N>700031"
tNpcGossip[24823]["OptionFunc253"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>26</N>700021"
tNpcGossip[24823]["OptionFunc254"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>26</N>700011"
tNpcGossip[24823]["OptionFunc255"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>26</N>700001"
tNpcGossip[24823]["OptionFunc256"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>26</N>700051"
tNpcGossip[24823]["OptionFunc257"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>26</N>700061"
tNpcGossip[24823]["OptionFunc258"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>2"
-- 上交1颗天怒/地灵宝石
tNpcGossip[24823]["Text2-6"] = {261}
tNpcGossip[24823]["tOption2-6"] = {261,262,263}
tNpcGossip[24823]["ChkFunc2-6"] = function ()
	local tItemLimit = tTradeNew_GoodForOld_ItemLimit[27]
	local tItemId = tItemLimit["ItemId"]
	local nItemNum = tItemLimit["ItemNum"]
	local nMonopoly = tItemLimit["Monopoly"]
	for a,b in pairs(tItemId) do
		if not Item_ChkMulItem(b,b,nItemNum,nMonopoly) then
			tNpcGossip[24823]["Option26"..a] = ""
		else
			tNpcGossip[24823]["Option26"..a] = tTradeNew_GoodForOld_Text[24823]["Option26"..a]
		end
	end
	return true
end
tNpcGossip[24823]["OptionFunc261"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>27</N>700101"
tNpcGossip[24823]["OptionFunc262"] = "TradeNew_GoodForOld_GemExchangeItem</N>24823</N>2</N>27</N>700121"
tNpcGossip[24823]["OptionFunc263"] = "TradeNew_GoodForOld_ExchangeItem</N>24823</N>2"

-- 接2、上交流星、龙珠、宝石
tNpcGossip[24823]["Text3-1"] = {211,212,311,312,314,316,317,318,212,2114}
tNpcGossip[24823]["tOption3-1"] = {211,212,213}
-- 接3、上交日常道具、修炼道具
tNpcGossip[24823]["Text3-2"] = {211,212,321,322,323,324,325,212,2114}
tNpcGossip[24823]["tOption3-2"] = {211,212,213}
-- 接4、上交副职业道具、情书。
tNpcGossip[24823]["Text3-3"] = {211,212,331,332,333,334,212,2114}
tNpcGossip[24823]["tOption3-3"] = {211,212,213}
-- 接5、上交银两、药品、清心符。
tNpcGossip[24823]["Text3-4"] = {211,212,341,342,344,345,212,2114}
tNpcGossip[24823]["tOption3-4"] = {211,212,213}
-- 接6、上交其它道具。
tNpcGossip[24823]["Text3-5"] = {211,212,351,352,353,354,355,212,2114}
tNpcGossip[24823]["tOption3-5"] = {211,212,213}

-- 24824,'豪礼兑换专员'
tNpcFace[5937] = 115
tNpcGossip[24824] = tNpcGossip[24824] or DefaultNpc:new{}
tNpcGossip[24824]["OptionHidden"] = 1
tNpcGossip[24824]["DialogueText"] = tTradeNew_GoodForOld_Text[24824] 
-- 活动前
tNpcGossip[24824]["Text1-1"] = {111,112,113}
tNpcGossip[24824]["tOption1-1"] = {111}
-- 兑换商店
tNpcGossip[24824]["OptionFunc111"] = "User_OpenExchangeShop</N>24824"
--------------------------------------物品模块--------------------------------------
-- 3313525,'+3马匹礼盒'
tItemFace[3313525] = 2500
tItem[3313525] = tItem[3313525] or {}
tItem[3313525]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_OpenItem(nItemId,1)
end
tItem[3313525]["DialogueText"] = tTradeNew_GoodForOld_Text[3313525]
tItem[3313525]["Text1-1"] = {111,112,113,114,115}
tItem[3313525]["tOption1-1"] = {111,112}
-- 开启礼包（9天石）
-- 开启礼包（36万银两）
-- 天石足够
tItem[3313525]["Text2-1"] = {211,212}
tItem[3313525]["tOption2-1"] = {211,212}
-- 银两足够
tItem[3313525]["Text2-2"] = {221,222}
tItem[3313525]["tOption2-2"] = {221,222}

-- 3313526,'明亮星陨石礼盒'
tItemFace[3313526] = 424
tItem[3313526] = tItem[3313525]
-- 3313527,'500气力值礼盒'
tItemFace[3313527] = 425
tItem[3313527] = tItem[3313525]
-- 3313528,'赤炼石轮盘包'
tItemFace[3313528] = 2404
tItem[3313528] = tItem[3313528] or {}
tItem[3313528]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_OpenItem(nItemId,2)
end
tItem[3313528]["DialogueText"] = tTradeNew_GoodForOld_Text[3313528]
tItem[3313528]["Text1-1"] = {111,112}
tItem[3313528]["tOption1-1"] = {111,112}
-- 开启礼包（天石）
-- 开启礼包（万银两）
-- 天石足够
tItem[3313528]["Text2-1"] = {211}
tItem[3313528]["tOption2-1"] = {211,212}
-- 银两足够
tItem[3313528]["Text2-2"] = {221}
tItem[3313528]["tOption2-2"] = {221,222}
-- 3313529,'星陨石轮盘包'
tItemFace[3313529] = 2405
tItem[3313529] = tItem[3313528]
-- 3313530,'气力值轮盘包'
tItemFace[3313530] = 2501
tItem[3313530] = tItem[3313528]
-- 3313531,'天石（赠）轮盘包'
tItemFace[3313531] = 2502
tItem[3313531] = tItem[3313528]
-- 3313532,'神纹源晶（赠）礼盒'
tItemFace[3313532] = 430
tItem[3313532] = tItem[3313525]
-- 3313533,'100修行值礼包'
tItem[3313533] = tItem[3313533] or {}
tItem[3313533]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tTradeNew_GoodForOld_Reward[nItemId])
end
-- 3313534,'100修为值礼包'
tItem[3313534] = tItem[3313533]
-- 3313620,'珍宝币'
tItem[3313620] = tItem[3313620] or {}
tItem[3313620]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_UseItem(nItemId)
end
-- 3314818,'龙鳞果礼盒'
-- tItem[3314818] = tItem[3313533]
tItem[3314818] = tItem[3314818] or {}
tItem[3314818]["Function"] = function(nItemId,sItemName)
	-- 过期删除
	if not TradeNew_GoodForOld_OverDel(nItemId) then
		return
	end

	RewardTemplate_UseItemAndMsg(tTradeNew_GoodForOld_Reward[nItemId])
end

-- 3314819,'百炼天机果礼盒'
tItemFace[3314819] = 429
tItem[3314819] = tItem[3313525]
------------------------------------------------------------------------------------
--Name:		200629[英文征服][活动脚本]以旧换新二期（8.20-9.9）
--Creator: 	王荣俊
--Created:	2020/06/29
------------------------------------------------------------------------------------

-- 3332001,'忍法帖材料转盘礼盒'
tItemFace[3332001] = 2590
tItem[3332001] = tItem[3313528]


-- 3332002,'百兵谱材料转盘礼盒'
tItemFace[3332002] = 948
tItem[3332002] = tItem[3313528]



-- 3331866 '秘术精华*1礼盒'
tItem[3331866] = tItem[3331866] or {}
tItem[3331866]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end

-- 3331867 '秘术精华*3礼盒'
tItem[3331867] = tItem[3331867] or {}
tItem[3331867]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331868 秘术精华*4礼盒
tItem[3331868] = tItem[3331868] or {}
tItem[3331868]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331869 秘术精华*8礼盒
tItem[3331869] = tItem[3331869] or {}
tItem[3331869]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331870 秘术精华*10礼盒
tItem[3331870] = tItem[3331870] or {}
tItem[3331870]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331871 血狱花*1礼盒
tItem[3331871] = tItem[3331871] or {}
tItem[3331871]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331872 血狱花*2礼盒
tItem[3331872] = tItem[3331872] or {}
tItem[3331872]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331873 血狱花*3礼盒
tItem[3331873] = tItem[3331873] or {}
tItem[3331873]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331874 神兵灵魂*1礼盒
tItem[3331874] = tItem[3331874] or {}
tItem[3331874]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end
-- 3331875 神兵灵魂*2礼盒
tItem[3331875] = tItem[3331875] or {}
tItem[3331875]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end

-- 3331876 神兵灵魂*4礼盒
tItem[3331876] = tItem[3331876] or {}
tItem[3331876]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end

-- 3331877 神兵灵魂*5礼盒
tItem[3331877] = tItem[3331877] or {}
tItem[3331877]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end

-- 3331878 神兵灵魂*6礼盒
tItem[3331878] = tItem[3331878] or {}
tItem[3331878]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end

-- 3331879 神兵灵魂*8礼盒
tItem[3331879] = tItem[3331879] or {}
tItem[3331879]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end

-- 3331880 神兵灵魂*10礼盒
tItem[3331880] = tItem[3331880] or {}
tItem[3331880]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end

-- 3331881 神兵灵魂*15礼盒
tItem[3331881] = tItem[3331881] or {}
tItem[3331881]["Function"] = function(nItemId,sItemName)
	TradeNew_GoodForOld_newPackOpen(nItemId)
end