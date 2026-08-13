------------------------------------------------------------------------------------
--Name：            191217[英文征服][活动脚本]2月精准营销（2.6-2.29）
--Creator:      林嘉鑫
--Created:     2019-12-17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tFebPrecisionPush_data = {}
	-- 天石（赠）三重礼盒花费奖励
	tFebPrecisionPush_data[3327355] = {}
	tFebPrecisionPush_data[3327355][1] = {}
	tFebPrecisionPush_data[3327355][1]["Emoney"] = 499
	tFebPrecisionPush_data[3327355][1]["CpsValue"] = 2500
	tFebPrecisionPush_data[3327355][2] = {}
	tFebPrecisionPush_data[3327355][2]["Emoney"] = 999
	tFebPrecisionPush_data[3327355][2]["CpsValue"] = 7000
	tFebPrecisionPush_data[3327355][3] = {}
	tFebPrecisionPush_data[3327355][3]["Emoney"] = 1999
	tFebPrecisionPush_data[3327355][3]["CpsValue"] = 16000
	
	-- 天石（赠）聚宝礼盒可以随机出的物品
	tFebPrecisionPush_data[3327356] = {1,2,3,4,5,6,7,8}
	tFebPrecisionPush_data[3327357] = {1,2,3,4,5,6,7,8}
	tFebPrecisionPush_data[3327358] = {1,2,3,4,5,6,7,8}
	-- 具体所需物品与数量
	tFebPrecisionPush_data["NeedItem"] = {}
	tFebPrecisionPush_data["NeedItem"][1] = {}
	tFebPrecisionPush_data["NeedItem"][1]["Id"] = 729304
	tFebPrecisionPush_data["NeedItem"][1]["Num"] = 1
	tFebPrecisionPush_data["NeedItem"][2] = {}
	tFebPrecisionPush_data["NeedItem"][2]["Id"] = 711211
	tFebPrecisionPush_data["NeedItem"][2]["Num"] = 1
	tFebPrecisionPush_data["NeedItem"][3] = {}
	tFebPrecisionPush_data["NeedItem"][3]["Id"] = 723903
	tFebPrecisionPush_data["NeedItem"][3]["Num"] = 20
	tFebPrecisionPush_data["NeedItem"][4] = {}
	tFebPrecisionPush_data["NeedItem"][4]["Id"] = 720027
	tFebPrecisionPush_data["NeedItem"][4]["Num"] = 1
	tFebPrecisionPush_data["NeedItem"][5] = {}
	tFebPrecisionPush_data["NeedItem"][5]["Id"] = 3310001
	tFebPrecisionPush_data["NeedItem"][5]["Num"] = 10
	tFebPrecisionPush_data["NeedItem"][6] = {}
	tFebPrecisionPush_data["NeedItem"][6]["Id"] = 1200000
	tFebPrecisionPush_data["NeedItem"][6]["Num"] = 1
	tFebPrecisionPush_data["NeedItem"][7] = {}
	tFebPrecisionPush_data["NeedItem"][7]["Id"] = 3008059
	tFebPrecisionPush_data["NeedItem"][7]["Num"] = 1
	tFebPrecisionPush_data["NeedItem"][8] = {}
	tFebPrecisionPush_data["NeedItem"][8]["Id"] = 3008060
	tFebPrecisionPush_data["NeedItem"][8]["Num"] = 1
	-- 代替提交需要天石
	tFebPrecisionPush_data["NeedCPs"] = 10
	-- 刷新需要天石
	tFebPrecisionPush_data["FlashCPs"] = 1

local tFebPrecisionPush_Log = {}
	tFebPrecisionPush_Log["DelItem"] = "0,0,%d,%d,12001801,2,0,0"
	tFebPrecisionPush_Log["DelCps"] = "350	23022	%d	%d	1	"
	tFebPrecisionPush_Log["Flash"] = "350	23021	%d	%d	1	"
	tFebPrecisionPush_Log["Flash"] = "350	23021	%d	%d	1	"
	tFebPrecisionPush_Log[3327355] = {}
	tFebPrecisionPush_Log[3327355][1] = "350	23015	499	499	1	"
	tFebPrecisionPush_Log[3327355][2] = "350	23016	999	999	1	"
	tFebPrecisionPush_Log[3327355][3] = "350	23017	1999	1999	1	"
	tFebPrecisionPush_Log[3327356] = "350	23018	300	300	1	"
	tFebPrecisionPush_Log[3327357] = "350	23019	1000	1000	1	"
	tFebPrecisionPush_Log[3327358] = "350	23020	5000	5000	1	"

local tFebPrecisionPush_Stc = {}
	-- 天石（赠）三重礼盒打开次数
	tFebPrecisionPush_Stc[3327355] = {}
	tFebPrecisionPush_Stc[3327355]["EventType"] = 211
	tFebPrecisionPush_Stc[3327355]["DataType"] = 95
	tFebPrecisionPush_Stc[3327355]["LimitData"] = 3
	-- 天石（赠）聚宝礼盒
	tFebPrecisionPush_Stc[3327356] = {}
	-- 所需物品
	tFebPrecisionPush_Stc[3327356]["Item"] = {}
	tFebPrecisionPush_Stc[3327356]["Item"]["EventType"] = 211
	tFebPrecisionPush_Stc[3327356]["Item"]["DataType"] = 96
	-- 打开次数
	tFebPrecisionPush_Stc[3327356]["Times"] = {}
	tFebPrecisionPush_Stc[3327356]["Times"]["EventType"] = 211
	tFebPrecisionPush_Stc[3327356]["Times"]["DataType"] = 97
	tFebPrecisionPush_Stc[3327356]["Times"]["LimitData"] = 5
	-- 购买记录
	tFebPrecisionPush_Stc[3327356]["Buy"] = {}
	tFebPrecisionPush_Stc[3327356]["Buy"]["EventType"] = 214
	tFebPrecisionPush_Stc[3327356]["Buy"]["DataType"] = 86
	-- 天石（赠）聚宝大礼盒
	tFebPrecisionPush_Stc[3327357] = {}
	-- 所需物品
	tFebPrecisionPush_Stc[3327357]["Item"] = {}
	tFebPrecisionPush_Stc[3327357]["Item"]["EventType"] = 211
	tFebPrecisionPush_Stc[3327357]["Item"]["DataType"] = 98
	-- 打开次数
	tFebPrecisionPush_Stc[3327357]["Times"] = {}
	tFebPrecisionPush_Stc[3327357]["Times"]["EventType"] = 211
	tFebPrecisionPush_Stc[3327357]["Times"]["DataType"] = 99
	tFebPrecisionPush_Stc[3327357]["Times"]["LimitData"] = 5
	-- 购买记录
	tFebPrecisionPush_Stc[3327357]["Buy"] = {}
	tFebPrecisionPush_Stc[3327357]["Buy"]["EventType"] = 214
	tFebPrecisionPush_Stc[3327357]["Buy"]["DataType"] = 87
	-- 天石（赠）聚宝超大礼盒
	tFebPrecisionPush_Stc[3327358] = {}
	-- 所需物品
	tFebPrecisionPush_Stc[3327358]["Item"] = {}
	tFebPrecisionPush_Stc[3327358]["Item"]["EventType"] = 212
	tFebPrecisionPush_Stc[3327358]["Item"]["DataType"] = 4
	-- 打开次数
	tFebPrecisionPush_Stc[3327358]["Times"] = {}
	tFebPrecisionPush_Stc[3327358]["Times"]["EventType"] = 212
	tFebPrecisionPush_Stc[3327358]["Times"]["DataType"] = 5
	tFebPrecisionPush_Stc[3327358]["Times"]["LimitData"] = 5
	-- 购买记录
	tFebPrecisionPush_Stc[3327358]["Buy"] = {}
	tFebPrecisionPush_Stc[3327358]["Buy"]["EventType"] = 214
	tFebPrecisionPush_Stc[3327358]["Buy"]["DataType"] = 88
	

local tFebPrecisionPush_Pack = {}
	-- ===天石（赠）三重礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327355][1]
	tFebPrecisionPush_Pack[3327355] = {}
	tFebPrecisionPush_Pack[3327355][1] = {}
	tFebPrecisionPush_Pack[3327355][1]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327355][1]["RewardEMoneyMono"] = {}
	tFebPrecisionPush_Pack[3327355][1]["RewardEMoneyMono"]["Value"] = 2500 -- 天石（赠）, 【需求】2500天石（赠）
	tFebPrecisionPush_Pack[3327355][1]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327355][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327355][1]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327355][2] = {}
	-- ===天石（赠）三重礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327355][2]
	tFebPrecisionPush_Pack[3327355][2]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327355][2]["RewardEMoneyMono"] = {}
	tFebPrecisionPush_Pack[3327355][2]["RewardEMoneyMono"]["Value"] = 7000 -- 天石（赠）, 【需求】7000天石（赠）
	tFebPrecisionPush_Pack[3327355][2]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327355][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327355][2]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327355][3] = {}
	-- ===天石（赠）三重礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327355][3]
	tFebPrecisionPush_Pack[3327355][3]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327355][3]["RewardEMoneyMono"] = {}
	tFebPrecisionPush_Pack[3327355][3]["RewardEMoneyMono"]["Value"] = 16000 -- 天石（赠）, 【需求】16000天石（赠）
	tFebPrecisionPush_Pack[3327355][3]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327355][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327355][3]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327356] = {}
	-- ===天石（赠）聚宝礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327356]
	tFebPrecisionPush_Pack[3327356]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327356]["RewardEMoneyMono"] = {}
	tFebPrecisionPush_Pack[3327356]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500天石（赠）
	tFebPrecisionPush_Pack[3327356]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327356]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327356]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327357] = {}
	-- ===天石（赠）聚宝大礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327357]
	tFebPrecisionPush_Pack[3327357]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327357]["RewardEMoneyMono"] = {}
	tFebPrecisionPush_Pack[3327357]["RewardEMoneyMono"]["Value"] = 1500 -- 天石（赠）, 【需求】1500天石（赠）
	tFebPrecisionPush_Pack[3327357]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327357]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327357]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327358] = {}
	-- ===天石（赠）聚宝超大礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327358]
	tFebPrecisionPush_Pack[3327358]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327358]["RewardEMoneyMono"] = {}
	tFebPrecisionPush_Pack[3327358]["RewardEMoneyMono"]["Value"] = 7000 -- 天石（赠）, 【需求】7000天石（赠）
	tFebPrecisionPush_Pack[3327358]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327358]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327358]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327359] = {}
	-- ===五星外套碎片（赠）*5礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327359]
	-- ===删除: 3327359,1
	-- ===EmoneyLog: 350,23023
	tFebPrecisionPush_Pack[3327359]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327359]["EmoneyLog"] = "350	23023	0	0	1	"
	tFebPrecisionPush_Pack[3327359]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327359]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327359]["DeleteItem"][1]["Id"] = 3327359 -- 【库】5GarmentFragmentsPack[属性:9]
	tFebPrecisionPush_Pack[3327359]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327359]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327359]["RewardItem"][1]["Id"] = 3323483 -- 5-starGarmentFragment(B)[3323483][属性:9][叠加:10000][金币:0], 【表格】五星外套碎片（赠）*5
	tFebPrecisionPush_Pack[3327359]["RewardItem"][1]["Attr"] = "0 5" -- 5-starGarmentFragment(B)*5
	tFebPrecisionPush_Pack[3327359]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327359]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327359]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327360] = {}
	-- ===五星外套碎片（赠）*10礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327360]
	-- ===删除: 3327360,1
	-- ===EmoneyLog: 350,23024
	tFebPrecisionPush_Pack[3327360]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327360]["EmoneyLog"] = "350	23024	0	0	1	"
	tFebPrecisionPush_Pack[3327360]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327360]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327360]["DeleteItem"][1]["Id"] = 3327360 -- 【库】10GarmentFragmentsPack[属性:9]
	tFebPrecisionPush_Pack[3327360]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327360]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327360]["RewardItem"][1]["Id"] = 3323483 -- 5-starGarmentFragment(B)[3323483][属性:9][叠加:10000][金币:0], 【表格】五星外套碎片（赠）*10
	tFebPrecisionPush_Pack[3327360]["RewardItem"][1]["Attr"] = "0 10" -- 5-starGarmentFragment(B)*10
	tFebPrecisionPush_Pack[3327360]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327360]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327360]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327361] = {}
	-- ===勇士专属修炼礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327361]
	-- ===删除: 3327361,1
	-- ===EmoneyLog: 350,23025
	tFebPrecisionPush_Pack[3327361]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327361]["EmoneyLog"] = "350	23025	0	0	1	"
	tFebPrecisionPush_Pack[3327361]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327361]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327361]["DeleteItem"][1]["Id"] = 3327361 -- 【库】TrojanTrainingPack[属性:9]
	tFebPrecisionPush_Pack[3327361]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327361]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327361]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】赠神兵灵魄*100
	tFebPrecisionPush_Pack[3327361]["RewardItem"][1]["Attr"] = "0 100" -- LegendaryEssence*100
	tFebPrecisionPush_Pack[3327361]["RewardItem"][2] = {}
	tFebPrecisionPush_Pack[3327361]["RewardItem"][2]["Id"] = 3321107 -- SpiritStone[3321107][属性:9][叠加:10000][金币:0], 【表格】赠炼魂石*100
	tFebPrecisionPush_Pack[3327361]["RewardItem"][2]["Attr"] = "0 100" -- SpiritStone*100
	tFebPrecisionPush_Pack[3327361]["RewardItem"][3] = {}
	tFebPrecisionPush_Pack[3327361]["RewardItem"][3]["Id"] = 3321108 -- ChaosJade[3321108][属性:9][叠加:10000][金币:0], 【表格】赠鸿蒙炼魂玉*5
	tFebPrecisionPush_Pack[3327361]["RewardItem"][3]["Attr"] = "0 5" -- ChaosJade*5
	tFebPrecisionPush_Pack[3327361]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327361]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327361]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327362] = {}
	-- ===勇士豪华修炼礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327362]
	-- ===删除: 3327362,1
	-- ===EmoneyLog: 350,23026
	tFebPrecisionPush_Pack[3327362]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327362]["EmoneyLog"] = "350	23026	0	0	1	"
	tFebPrecisionPush_Pack[3327362]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327362]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327362]["DeleteItem"][1]["Id"] = 3327362 -- 【库】GrandTrojanTrainingPack[属性:9]
	tFebPrecisionPush_Pack[3327362]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327362]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327362]["RewardItem"][1]["Id"] = 3321098 -- LegendaryEssence[3321098][属性:9][叠加:10000][金币:0], 【表格】神兵灵魄*500
	tFebPrecisionPush_Pack[3327362]["RewardItem"][1]["Attr"] = "0 500" -- LegendaryEssence*500（[错误]物品数量超100个）
	tFebPrecisionPush_Pack[3327362]["RewardItem"][2] = {}
	tFebPrecisionPush_Pack[3327362]["RewardItem"][2]["Id"] = 3321107 -- SpiritStone[3321107][属性:9][叠加:10000][金币:0], 【表格】炼魂石*500
	tFebPrecisionPush_Pack[3327362]["RewardItem"][2]["Attr"] = "0 500" -- SpiritStone*500（[错误]物品数量超100个）
	tFebPrecisionPush_Pack[3327362]["RewardItem"][3] = {}
	tFebPrecisionPush_Pack[3327362]["RewardItem"][3]["Id"] = 3321108 -- ChaosJade[3321108][属性:9][叠加:10000][金币:0], 【表格】鸿蒙炼魂玉*10
	tFebPrecisionPush_Pack[3327362]["RewardItem"][3]["Attr"] = "0 10" -- ChaosJade*10
	tFebPrecisionPush_Pack[3327362]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327362]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327362]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327363] = {}
	-- ===精选神纹礼盒（忍者版）
	-- ===索引: tFebPrecisionPush_Pack[3327363]
	-- ===删除: 3327363,1
	-- ===EmoneyLog: 350,23027
	tFebPrecisionPush_Pack[3327363]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327363]["EmoneyLog"] = "350	23027	0	0	1	"
	tFebPrecisionPush_Pack[3327363]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327363]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327363]["DeleteItem"][1]["Id"] = 3327363 -- 【库】SelectedRunePack(Ninja)[属性:9]
	tFebPrecisionPush_Pack[3327363]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327363]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327363]["RewardItem"][1]["Id"] = 4010301 -- Assassin[4010301][属性:8][叠加:0][金币:0], 【表格】赠1级忍法·暗杀*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][1]["Attr"] = "0 1 3" -- Assassin（赠）*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][2] = {}
	tFebPrecisionPush_Pack[3327363]["RewardItem"][2]["Id"] = 4020401 -- Absolution(+1)[4020401][属性:8][叠加:0][金币:0], 【表格】赠1级忍法·影遁*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][2]["Attr"] = "0 1 3" -- Absolution(+1)（赠）*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][3] = {}
	tFebPrecisionPush_Pack[3327363]["RewardItem"][3]["Id"] = 4030401 -- Healer(+1)[4030401][属性:8][叠加:0][金币:0], 【表格】赠1级万物生*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][3]["Attr"] = "0 1 3" -- Healer(+1)（赠）*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][4] = {}
	tFebPrecisionPush_Pack[3327363]["RewardItem"][4]["Id"] = 4031101 -- XPBooster(+1)[4031101][属性:8][叠加:0][金币:0], 【表格】赠1级奔雷不息*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][4]["Attr"] = "0 1 3" -- XPBooster(+1)（赠）*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][5] = {}
	tFebPrecisionPush_Pack[3327363]["RewardItem"][5]["Id"] = 4030601 -- XPKiller(+1)[4030601][属性:8][叠加:0][金币:0], 【表格】赠1级狂暴克星*1
	tFebPrecisionPush_Pack[3327363]["RewardItem"][5]["Attr"] = "0 1 3" -- XPKiller(+1)（赠）*1
	tFebPrecisionPush_Pack[3327363]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327363]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327363]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327364] = {}
	-- ===+6通用神纹礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327364]
	-- ===删除: 3327364,1
	-- ===EmoneyLog: 350,23028
	tFebPrecisionPush_Pack[3327364]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327364]["EmoneyLog"] = "350	23028	0	0	1	"
	tFebPrecisionPush_Pack[3327364]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327364]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327364]["DeleteItem"][1]["Id"] = 3327364 -- 【库】+6UniversalRunePack[属性:9]
	tFebPrecisionPush_Pack[3327364]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327364]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327364]["RewardItem"][1]["Id"] = 4030406 -- Healer(+6)[4030406][属性:8][叠加:0][金币:0], 【表格】赠6级万物生*1
	tFebPrecisionPush_Pack[3327364]["RewardItem"][1]["Attr"] = "0 1 3" -- Healer(+6)（赠）*1
	tFebPrecisionPush_Pack[3327364]["RewardItem"][2] = {}
	tFebPrecisionPush_Pack[3327364]["RewardItem"][2]["Id"] = 4031106 -- XPBooster(+6)[4031106][属性:8][叠加:0][金币:0], 【表格】赠6级奔雷不息*1
	tFebPrecisionPush_Pack[3327364]["RewardItem"][2]["Attr"] = "0 1 3" -- XPBooster(+6)（赠）*1
	tFebPrecisionPush_Pack[3327364]["RewardItem"][3] = {}
	tFebPrecisionPush_Pack[3327364]["RewardItem"][3]["Id"] = 4030606 -- XPKiller(+6)[4030606][属性:8][叠加:0][金币:0], 【表格】赠6级狂暴克星*1
	tFebPrecisionPush_Pack[3327364]["RewardItem"][3]["Attr"] = "0 1 3" -- XPKiller(+6)（赠）*1
	tFebPrecisionPush_Pack[3327364]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327364]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327364]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327365] = {}
	-- ===15天+6稀有神纹礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327365]
	-- ===删除: 3327365,1
	-- ===EmoneyLog: 350,23029
	tFebPrecisionPush_Pack[3327365]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327365]["EmoneyLog"] = "350	23029	0	0	1	"
	tFebPrecisionPush_Pack[3327365]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327365]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327365]["DeleteItem"][1]["Id"] = 3327365 -- 【库】15-day+6RareRunePack[属性:9]
	tFebPrecisionPush_Pack[3327365]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327365]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327365]["RewardItem"][1]["Id"] = 4034506 -- MiracleTouch(+6)[4034506][属性:8][叠加:0][金币:0], 【表格】15天时效+6妙手回春（赠）*1
	tFebPrecisionPush_Pack[3327365]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的MiracleTouch(+6)（赠）*1
	tFebPrecisionPush_Pack[3327365]["RewardItem"][2] = {}
	tFebPrecisionPush_Pack[3327365]["RewardItem"][2]["Id"] = 4034606 -- CurseBlock(+6)[4034606][属性:8][叠加:0][金币:0], 【表格】15天时效+6碎魔屏障（赠）*1
	tFebPrecisionPush_Pack[3327365]["RewardItem"][2]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的CurseBlock(+6)（赠）*1
	tFebPrecisionPush_Pack[3327365]["RewardItem"][3] = {}
	tFebPrecisionPush_Pack[3327365]["RewardItem"][3]["Id"] = 4034706 -- UniversalShield(+6)[4034706][属性:8][叠加:0][金币:0], 【表格】15天时效+6天地化盾（赠）*1
	tFebPrecisionPush_Pack[3327365]["RewardItem"][3]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的UniversalShield(+6)（赠）*1
	tFebPrecisionPush_Pack[3327365]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327365]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327365]["RewardEffect"]["Effect"] = "angelwing"


	tFebPrecisionPush_Pack[3327366] = {}
	-- ===八宝护气丹特供礼盒
	-- ===索引: tFebPrecisionPush_Pack[3327366]
	-- ===删除: 3327366,1
	-- ===EmoneyLog: 350,23030
	tFebPrecisionPush_Pack[3327366]["LogId"] = 12001801
	tFebPrecisionPush_Pack[3327366]["EmoneyLog"] = "350	23030	0	0	1	"
	tFebPrecisionPush_Pack[3327366]["DeleteItem"] = {}
	tFebPrecisionPush_Pack[3327366]["DeleteItem"][1] = {}
	tFebPrecisionPush_Pack[3327366]["DeleteItem"][1]["Id"] = 3327366 -- 【库】FrozenChiPillPack[属性:9]
	tFebPrecisionPush_Pack[3327366]["RewardItem"] = {}
	tFebPrecisionPush_Pack[3327366]["RewardItem"][1] = {}
	tFebPrecisionPush_Pack[3327366]["RewardItem"][1]["Id"] = 3005360 -- FrozenChiPill[3005360][属性:9][叠加:10000][金币:0], 【表格】八宝护气丹（赠）*1
	tFebPrecisionPush_Pack[3327366]["RewardItem"][1]["Attr"] = "0 1" -- FrozenChiPill*1
	tFebPrecisionPush_Pack[3327366]["RewardEffect"] = {}
	tFebPrecisionPush_Pack[3327366]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebPrecisionPush_Pack[3327366]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
-- 打开天石（赠）三重礼盒
function FebPrecisionPush_OpenCPsPack(nItemId,nEmoney,nAwardValue)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tFebPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tFebPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	-- 超出上限未删除时重置并删除
	if nData >= tFebPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tFebPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	-- 天石数量判断
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tFebPrecisionPush_Text["Msg"]["NoEMoneyOpen"])
		return
	end
	-- 赠点天石上限判断
	if Get_UserMonoEMoney() + nAwardValue > G_User_MaxEmoneyMono then
		Sys_MsgBox(tFebPrecisionPush_Text["Msg"]["OverEMoneyMono"])
		return
	end
	if User_AddEMoney(-nEmoney) then
		Task_AddStatistic(nEvent,nType,1,1)
		RewardTemplate_UseItemAndMsg(tFebPrecisionPush_Pack[nItemId][nData + 1])
		Sys_SaveEmoneyBuy(tFebPrecisionPush_Log[nItemId][nData + 1])
		-- 最后一次重置并删除
		if Get_UserStatisticValue(nEvent,nType) >= tFebPrecisionPush_Stc[nItemId]["LimitData"] then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_SetStatistic(nEvent,nType,0,1)
				-- 删除礼包log
				local sDelPackLog = string.format(tFebPrecisionPush_Log["DelItem"],nItemId,1)
				Sys_SaveActionFestivalLog(sDelPackLog)
			end
		end
	end
end

-- 打开天石（赠）聚宝礼盒
function FebPrecisionPush_OpenItemPack(nItemId,nOpenType)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	-- 超出上限未删除时重置并删除
	local nBuyEvent = tFebPrecisionPush_Stc[nItemId]["Buy"]["EventType"]
	local nBuyType = tFebPrecisionPush_Stc[nItemId]["Buy"]["DataType"]
	local nTimesEvent = tFebPrecisionPush_Stc[nItemId]["Times"]["EventType"]
	local nTimesType = tFebPrecisionPush_Stc[nItemId]["Times"]["DataType"]
	local nTimesData = Get_UserStatisticValue(nTimesEvent,nTimesType,nUserId) or 0
	if nTimesData >= tFebPrecisionPush_Stc[nItemId]["Times"]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nBuyEvent,nBuyType,0,1)
			Task_SetStatistic(nTimesEvent,nTimesType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tFebPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	-- 赠点天石上限判断
	local nAwardValue = tFebPrecisionPush_Pack[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nAwardValue > G_User_MaxEmoneyMono then
		Sys_MsgBox(tFebPrecisionPush_Text["Msg"]["OverEMoneyMono"])
		return
	end
	-- 物品上交
	if nOpenType == 1 then
		-- 提交物品判断
		local nItemEvent = tFebPrecisionPush_Stc[nItemId]["Item"]["EventType"]
		local nItemType = tFebPrecisionPush_Stc[nItemId]["Item"]["DataType"]
		local nItemData = Get_UserStatisticValue(nItemEvent,nItemType,nUserId)
		
		local nNeedItemId = tFebPrecisionPush_data["NeedItem"][nItemData]["Id"]
		local nNeedItemNum = tFebPrecisionPush_data["NeedItem"][nItemData]["Num"]
		
		if not(Item_ChkMulItem(nNeedItemId,nNeedItemId,nNeedItemNum) and Item_DelMulItem(nNeedItemId,nNeedItemId,nNeedItemNum)) then
			LinkItemGossipFunc_New(nItemId,"2-1")
			return
		end
		-- 删除上交物品log
		local sDelItemLog = string.format(tFebPrecisionPush_Log["DelItem"],nNeedItemId,nNeedItemNum)
		Sys_SaveActionFestivalLog(sDelItemLog)
	-- 天石上交
	else
		-- 天石数量判断
		local nNeedEMoney = tFebPrecisionPush_data["NeedCPs"]
		if Get_UserEMoney() < nNeedEMoney then
			Sys_MsgBox(tFebPrecisionPush_Text["Msg"]["NoEMoneyReplace"])
			return
		end
		if not User_AddEMoney(-nNeedEMoney) then
			Sys_MsgBox(tFebPrecisionPush_Text["Msg"]["NoEMoneyReplace"])
			return
		end
		-- 删除上交天石log
		local sDelCpsLog = string.format(tFebPrecisionPush_Log["DelCps"],nNeedEMoney,nNeedEMoney)
		Sys_SaveEmoneyBuy(sDelCpsLog)
		
	end
	
	Task_AddStatistic(nTimesEvent,nTimesType,1,1)
	RewardTemplate_UseItemAndMsg(tFebPrecisionPush_Pack[nItemId])
	-- 每次提交成功重刷道具
	FebPrecisionPush_RandomItem(nItemId)
	-- 最后一次重置并删除
	if Get_UserStatisticValue(nTimesEvent,nTimesType) >= tFebPrecisionPush_Stc[nItemId]["Times"]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nBuyEvent,nBuyType,0,1)
			Task_SetStatistic(nTimesEvent,nTimesType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tFebPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
	end
end

function FebPrecisionPush_FlashItem(nItemId)
	-- 天石数量判断
	local nFlashEMoney = tFebPrecisionPush_data["FlashCPs"]
	if Get_UserEMoney() < nFlashEMoney then
		Sys_MsgBox(tFebPrecisionPush_Text["Msg"]["NoEMoneyFlash"])
		return
	end
	if User_AddEMoney(-nFlashEMoney) then
		FebPrecisionPush_RandomItem(nItemId)
		User_EffectAdd(tFebPrecisionPush_Pack[nItemId]["RewardEffect"]["SzObj"],tFebPrecisionPush_Pack[nItemId]["RewardEffect"]["Effect"])
		Sys_MsgBox(tFebPrecisionPush_Text["Msg"]["Flash"])
		-- 刷新上交log
		local sFlashLog = string.format(tFebPrecisionPush_Log["Flash"],nFlashEMoney,nFlashEMoney)
		Sys_SaveEmoneyBuy(sFlashLog)
	end
end

-- 随机道具
function FebPrecisionPush_RandomItem(nItemId)
	local nUserId = Get_UserId()
	local nEvent = tFebPrecisionPush_Stc[nItemId]["Item"]["EventType"]
	local nType = tFebPrecisionPush_Stc[nItemId]["Item"]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	local nTotal = #tFebPrecisionPush_data[nItemId]
	local nTemp
	repeat
		math.randomseed(os.time())
		nTemp = math.random(1, nTotal)
	until nData ~= tFebPrecisionPush_data[nItemId][nTemp]
	Task_SetStatistic(nEvent,nType,tFebPrecisionPush_data[nItemId][nTemp],1)
	return tFebPrecisionPush_data[nItemId][nTemp]
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3327359] = tItem[3327359] or {}
tItem[3327359]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tFebPrecisionPush_Pack[nItemId])
end
tItem[3327360] = tItem[3327359]
tItem[3327361] = tItem[3327359]
tItem[3327362] = tItem[3327359]
tItem[3327363] = tItem[3327359]
tItem[3327364] = tItem[3327359]
tItem[3327365] = tItem[3327359]
tItem[3327366] = tItem[3327359]

--------物品有对白模板
-- 天石（赠）三重礼盒
tItemFace[3327355] = 524
tItem[3327355] = tItem[3327355] or {}
tItem[3327355]["DialogueText"] = tFebPrecisionPush_Text[3327355]
tItem[3327355]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nEvent = tFebPrecisionPush_Stc[nItemId]["EventType"]
	local nType = tFebPrecisionPush_Stc[nItemId]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId) or 0
	-- 超出上限未删除时重置并删除
	if nData >= tFebPrecisionPush_Stc[nItemId]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tFebPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	if tFebPrecisionPush_data[nItemId][nData + 1] ~= nil then 
		local nEmoney = tFebPrecisionPush_data[nItemId][nData + 1]["Emoney"]
		local nAwardValue = tFebPrecisionPush_data[nItemId][nData + 1]["CpsValue"]
		local nTimes = tFebPrecisionPush_Text["Times"][nData + 1]
		tItem[nItemId]["Text111"] = string.format(tFebPrecisionPush_Text[nItemId]["Text111"],nTimes,nEmoney,nAwardValue)
		tItem[nItemId]["Option111"] = string.format(tFebPrecisionPush_Text[nItemId]["Option111"],nEmoney)
		tItem[nItemId]["Text211"] = string.format(tFebPrecisionPush_Text[nItemId]["Text211"],nEmoney,nAwardValue)
		tItem[nItemId]["Option211"] = string.format(tFebPrecisionPush_Text[nItemId]["Option211"],nEmoney)
		tItem[nItemId]["OptionFunc211"] = "FebPrecisionPush_OpenCPsPack</N>"..nItemId.."</N>"..nEmoney.."</N>"..nAwardValue
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

tItem[3327355]["Text1-1"] = {111}
tItem[3327355]["tOption1-1"] = {111,112}
tItem[3327355]["OptionPoint111"] = "2-1"

tItem[3327355]["Text2-1"] = {211}
tItem[3327355]["tOption2-1"] = {211,212}

-- 天石（赠）聚宝礼盒
tItemFace[3327356] = 1006
tItemFace[3327357] = 1011
tItemFace[3327358] = 1014
tItem[3327356] = tItem[3327356] or {}
tItem[3327356]["DialogueText"] = tFebPrecisionPush_Text["CPsPack"]
tItem[3327356]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	-- 记录购买
	local nBuyEvent = tFebPrecisionPush_Stc[nItemId]["Buy"]["EventType"]
	local nBuyType = tFebPrecisionPush_Stc[nItemId]["Buy"]["DataType"]
	local nBuyData = Get_UserStatisticValue(nBuyEvent,nBuyType,nUserId) or 0
	if nBuyData == nil or nBuyData == 0 then
		Sys_SaveEmoneyBuy(tFebPrecisionPush_Log[nItemId])
		Task_SetStatistic(nBuyEvent,nBuyType,1,1)
	end
	-- 超出上限未删除时重置并删除
	local nTimesEvent = tFebPrecisionPush_Stc[nItemId]["Times"]["EventType"]
	local nTimesType = tFebPrecisionPush_Stc[nItemId]["Times"]["DataType"]
	local nTimesData = Get_UserStatisticValue(nTimesEvent,nTimesType,nUserId) or 0
	if nTimesData >= tFebPrecisionPush_Stc[nItemId]["Times"]["LimitData"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nBuyEvent,nBuyType,0,1)
			Task_SetStatistic(nTimesEvent,nTimesType,0,1)
			-- 删除礼包log
			local sDelPackLog = string.format(tFebPrecisionPush_Log["DelItem"],nItemId,1)
			Sys_SaveActionFestivalLog(sDelPackLog)
		end
		return
	end
	-- 初始随机物品
	local nItemEvent = tFebPrecisionPush_Stc[nItemId]["Item"]["EventType"]
	local nItemType = tFebPrecisionPush_Stc[nItemId]["Item"]["DataType"]
	local nItemData = Get_UserStatisticValue(nItemEvent,nItemType,nUserId) or 0
	if tFebPrecisionPush_Text["CPsPack"][nItemData] == nil then
		math.randomseed(os.time())
		local nRandNum = math.random(1, #tFebPrecisionPush_data[nItemId])
		nItemData = tFebPrecisionPush_data[nItemId][nRandNum]
		Task_SetStatistic(nItemEvent,nItemType,nItemData,1)
	end
	local sNeedItemName = string.format(tFebPrecisionPush_Text["CPsPack"][nItemData],tFebPrecisionPush_data["NeedItem"][nItemData]["Num"])
	local nAwardValue = tFebPrecisionPush_Pack[nItemId]["RewardEMoneyMono"]["Value"]
	local nTimes = tFebPrecisionPush_Text["Times"][nTimesData + 1]
	tItem[nItemId]["Text111"] = Sys_CenterAline(tFebPrecisionPush_Text["CPsPack"]["Text111"],55)
	tItem[nItemId]["Text113"] = Sys_CenterAline(string.format(tFebPrecisionPush_Text["CPsPack"]["Text113"],sNeedItemName),60)
	tItem[nItemId]["Text115"] = string.format(tFebPrecisionPush_Text["CPsPack"]["Text115"],nTimes,nAwardValue)
	tItem[nItemId]["Option111"] = string.format(tFebPrecisionPush_Text["CPsPack"]["Option111"],sNeedItemName)
	tItem[nItemId]["OptionFunc111"] = "FebPrecisionPush_OpenItemPack</N>"..nItemId.."</N>"..1
	tItem[nItemId]["OptionFunc113"] = "FebPrecisionPush_FlashItem</N>"..nItemId
	tItem[nItemId]["OptionFunc311"] = "FebPrecisionPush_OpenItemPack</N>"..nItemId.."</N>"..2
	tItem[nItemId]["Text211"] = string.format(tFebPrecisionPush_Text["CPsPack"]["Text211"],sNeedItemName)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

tItem[3327356]["Text1-1"] = {111,112,113,114,115}
tItem[3327356]["tOption1-1"] = {111,112,113,114}
tItem[3327356]["OptionPoint112"] = "3-1"

tItem[3327356]["Text2-1"] = {211}
tItem[3327356]["tOption2-1"] = {211}

tItem[3327356]["Text3-1"] = {311}
tItem[3327356]["tOption3-1"] = {311,312}

tItem[3327357] = tItem[3327356]
tItem[3327358] = tItem[3327356]
