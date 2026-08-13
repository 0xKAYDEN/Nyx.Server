------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]团购灵珠赢好礼(12.24-1.13)
--Creator:		翁清海
--Created:		2019/11/14
------------------------------------------------------------------------------------

--命名前缀
--AnimaGroupPurchase_

--logid:12001743

--------------------------------------------数据部分配置--------------------------------------------
--团购记录表
local tAnimaGroupPurchase_Group = {}
	tAnimaGroupPurchase_Group[4] = {}
	tAnimaGroupPurchase_Group[5] = {}
	tAnimaGroupPurchase_Group[6] = {}
	tAnimaGroupPurchase_Group[7] = {}
	tAnimaGroupPurchase_Group[8] = {}
	tAnimaGroupPurchase_Group[9] = {}
	tAnimaGroupPurchase_Group[10] = {}
	tAnimaGroupPurchase_Group[11] = {}
	tAnimaGroupPurchase_Group[12] = {}
	
local tAnimaGroupPurchase_Global = {}
	tAnimaGroupPurchase_Global[4] = {}
	tAnimaGroupPurchase_Global[4][1] = {54090, 0}
	tAnimaGroupPurchase_Global[4][2] = {54090, 1}
	tAnimaGroupPurchase_Global[4][3] = {54090, 2}
	tAnimaGroupPurchase_Global[4][4] = {54090, 3}
	tAnimaGroupPurchase_Global[4][5] = {54090, 4}
	tAnimaGroupPurchase_Global[4][6] = {54090, 5}
	tAnimaGroupPurchase_Global[4][7] = {54091, 0}
	tAnimaGroupPurchase_Global[4][8] = {54091, 1}
	tAnimaGroupPurchase_Global[4][9] = {54091, 2}
	tAnimaGroupPurchase_Global[4][10] = {54091, 3}
	tAnimaGroupPurchase_Global[5] = {}
	tAnimaGroupPurchase_Global[5][1] = {54091, 4}
	tAnimaGroupPurchase_Global[5][2] = {54091, 5}
	tAnimaGroupPurchase_Global[5][3] = {54092, 0}
	tAnimaGroupPurchase_Global[5][4] = {54092, 1}
	tAnimaGroupPurchase_Global[5][5] = {54092, 2}
	tAnimaGroupPurchase_Global[5][6] = {54092, 3}
	tAnimaGroupPurchase_Global[5][7] = {54092, 4}
	tAnimaGroupPurchase_Global[5][8] = {54092, 5}
	tAnimaGroupPurchase_Global[5][9] = {54093, 0}
	tAnimaGroupPurchase_Global[5][10] = {54093, 1}
	tAnimaGroupPurchase_Global[6] = {}
	tAnimaGroupPurchase_Global[6][1] = {54093, 2}
	tAnimaGroupPurchase_Global[6][2] = {54093, 3}
	tAnimaGroupPurchase_Global[6][3] = {54093, 4}
	tAnimaGroupPurchase_Global[6][4] = {54093, 5}
	tAnimaGroupPurchase_Global[6][5] = {54094, 0}
	tAnimaGroupPurchase_Global[6][6] = {54094, 1}
	tAnimaGroupPurchase_Global[6][7] = {54094, 2}
	tAnimaGroupPurchase_Global[6][8] = {54094, 3}
	tAnimaGroupPurchase_Global[6][9] = {54094, 4}
	tAnimaGroupPurchase_Global[6][10] = {54094, 5}
	tAnimaGroupPurchase_Global[7] = {}
	tAnimaGroupPurchase_Global[7][1] = {54095, 0}
	tAnimaGroupPurchase_Global[7][2] = {54095, 1}
	tAnimaGroupPurchase_Global[7][3] = {54095, 2}
	tAnimaGroupPurchase_Global[7][4] = {54095, 3}
	tAnimaGroupPurchase_Global[7][5] = {54095, 4}
	tAnimaGroupPurchase_Global[7][6] = {54095, 5}
	tAnimaGroupPurchase_Global[7][7] = {54096, 0}
	tAnimaGroupPurchase_Global[7][8] = {54096, 1}
	tAnimaGroupPurchase_Global[7][9] = {54096, 2}
	tAnimaGroupPurchase_Global[7][10] = {54096, 3}
	tAnimaGroupPurchase_Global[8] = {}
	tAnimaGroupPurchase_Global[8][1] = {54096, 4}
	tAnimaGroupPurchase_Global[8][2] = {54096, 5}
	tAnimaGroupPurchase_Global[8][3] = {54097, 0}
	tAnimaGroupPurchase_Global[8][4] = {54097, 1}
	tAnimaGroupPurchase_Global[8][5] = {54097, 2}
	tAnimaGroupPurchase_Global[8][6] = {54097, 3}
	tAnimaGroupPurchase_Global[8][7] = {54097, 4}
	tAnimaGroupPurchase_Global[8][8] = {54097, 5}
	tAnimaGroupPurchase_Global[8][9] = {54098, 0}
	tAnimaGroupPurchase_Global[8][10] = {54098, 1}
	tAnimaGroupPurchase_Global[9] = {}
	tAnimaGroupPurchase_Global[9][1] = {54098, 2}
	tAnimaGroupPurchase_Global[9][2] = {54098, 3}
	tAnimaGroupPurchase_Global[9][3] = {54098, 4}
	tAnimaGroupPurchase_Global[9][4] = {54098, 5}
	tAnimaGroupPurchase_Global[9][5] = {54099, 0}
	tAnimaGroupPurchase_Global[9][6] = {54099, 1}
	tAnimaGroupPurchase_Global[9][7] = {54099, 2}
	tAnimaGroupPurchase_Global[9][8] = {54099, 3}
	tAnimaGroupPurchase_Global[9][9] = {54099, 4}
	tAnimaGroupPurchase_Global[9][10] = {54099, 5}
	tAnimaGroupPurchase_Global[10] = {}
	tAnimaGroupPurchase_Global[10][1] = {54100, 0}
	tAnimaGroupPurchase_Global[10][2] = {54100, 1}
	tAnimaGroupPurchase_Global[10][3] = {54100, 2}
	tAnimaGroupPurchase_Global[10][4] = {54100, 3}
	tAnimaGroupPurchase_Global[10][5] = {54100, 4}
	tAnimaGroupPurchase_Global[10][6] = {54100, 5}
	tAnimaGroupPurchase_Global[10][7] = {54101, 0}
	tAnimaGroupPurchase_Global[10][8] = {54101, 1}
	tAnimaGroupPurchase_Global[10][9] = {54101, 2}
	tAnimaGroupPurchase_Global[10][10] = {54101, 3}
	tAnimaGroupPurchase_Global[11] = {}
	tAnimaGroupPurchase_Global[11][1] = {54101, 4}
	tAnimaGroupPurchase_Global[11][2] = {54101, 5}
	tAnimaGroupPurchase_Global[11][3] = {54102, 0}
	tAnimaGroupPurchase_Global[11][4] = {54102, 1}
	tAnimaGroupPurchase_Global[11][5] = {54102, 2}
	tAnimaGroupPurchase_Global[11][6] = {54102, 3}
	tAnimaGroupPurchase_Global[11][7] = {54102, 4}
	tAnimaGroupPurchase_Global[11][8] = {54102, 5}
	tAnimaGroupPurchase_Global[11][9] = {54103, 0}
	tAnimaGroupPurchase_Global[11][10] = {54103, 1}
	tAnimaGroupPurchase_Global[12] = {}
	tAnimaGroupPurchase_Global[12][1] = {54103, 2}
	tAnimaGroupPurchase_Global[12][2] = {54103, 3}
	tAnimaGroupPurchase_Global[12][3] = {54103, 4}
	tAnimaGroupPurchase_Global[12][4] = {54103, 5}
	tAnimaGroupPurchase_Global[12][5] = {54104, 0}
	tAnimaGroupPurchase_Global[12][6] = {54104, 1}
	tAnimaGroupPurchase_Global[12][7] = {54104, 2}
	tAnimaGroupPurchase_Global[12][8] = {54104, 3}
	tAnimaGroupPurchase_Global[12][9] = {54104, 4}
	tAnimaGroupPurchase_Global[12][10] = {54104, 5}
	
--灵珠选择记录表
local tAnimaGroupPurchase_Choose = {}

local tAnimaGroupPurchase_Time = {}
	tAnimaGroupPurchase_Time["ActivityTime"] = tActivityTime["AnimaGroupPurchase"]["ActivityTime"]
	tAnimaGroupPurchase_Time["ReturnTime"] = tActivityTime["AnimaGroupPurchase"]["ReturnTime"]
	
local tAnimaGroupPurchase_Cont = {}
	--等级限制
	tAnimaGroupPurchase_Cont["Level"] = 15
	tAnimaGroupPurchase_Cont["Metempsychosis"] = 2
	--最大参与人数
	tAnimaGroupPurchase_Cont["MaxNum"] = 10
	--邮件存在天数
	tAnimaGroupPurchase_Cont["ExistDay"] = 7
	--灵珠团购配置
	tAnimaGroupPurchase_Cont["Anima"] = {}
	tAnimaGroupPurchase_Cont["Anima"][4] = {}
	tAnimaGroupPurchase_Cont["Anima"][4]["Need"] = 4 --参与所需
	tAnimaGroupPurchase_Cont["Anima"][4]["Get"] = 8 --开团成功后获得的天石
	tAnimaGroupPurchase_Cont["Anima"][4]["Fail"] = 2 --失败获得赠点
	tAnimaGroupPurchase_Cont["Anima"][4]["Action"] = 575316 --发赠点用到的action
	tAnimaGroupPurchase_Cont["Anima"][5] = {}
	tAnimaGroupPurchase_Cont["Anima"][5]["Need"] = 8
	tAnimaGroupPurchase_Cont["Anima"][5]["Get"] = 16
	tAnimaGroupPurchase_Cont["Anima"][5]["Fail"] = 4
	tAnimaGroupPurchase_Cont["Anima"][5]["Action"] = 575317
	tAnimaGroupPurchase_Cont["Anima"][6] = {}
	tAnimaGroupPurchase_Cont["Anima"][6]["Need"] = 16
	tAnimaGroupPurchase_Cont["Anima"][6]["Get"] = 32
	tAnimaGroupPurchase_Cont["Anima"][6]["Fail"] = 8
	tAnimaGroupPurchase_Cont["Anima"][6]["Action"] = 575318
	tAnimaGroupPurchase_Cont["Anima"][7] = {}
	tAnimaGroupPurchase_Cont["Anima"][7]["Need"] = 32
	tAnimaGroupPurchase_Cont["Anima"][7]["Get"] = 64
	tAnimaGroupPurchase_Cont["Anima"][7]["Fail"] = 16
	tAnimaGroupPurchase_Cont["Anima"][7]["Action"] = 575319
	tAnimaGroupPurchase_Cont["Anima"][8] = {}
	tAnimaGroupPurchase_Cont["Anima"][8]["Need"] = 64
	tAnimaGroupPurchase_Cont["Anima"][8]["Get"] = 128
	tAnimaGroupPurchase_Cont["Anima"][8]["Fail"] = 32
	tAnimaGroupPurchase_Cont["Anima"][8]["Action"] = 575320
	tAnimaGroupPurchase_Cont["Anima"][9] = {}
	tAnimaGroupPurchase_Cont["Anima"][9]["Need"] = 128
	tAnimaGroupPurchase_Cont["Anima"][9]["Get"] = 256
	tAnimaGroupPurchase_Cont["Anima"][9]["Fail"] = 64
	tAnimaGroupPurchase_Cont["Anima"][9]["Action"] = 575321
	tAnimaGroupPurchase_Cont["Anima"][10] = {}
	tAnimaGroupPurchase_Cont["Anima"][10]["Need"] = 256
	tAnimaGroupPurchase_Cont["Anima"][10]["Get"] = 512
	tAnimaGroupPurchase_Cont["Anima"][10]["Fail"] = 128
	tAnimaGroupPurchase_Cont["Anima"][10]["Action"] = 575322
	tAnimaGroupPurchase_Cont["Anima"][11] = {}
	tAnimaGroupPurchase_Cont["Anima"][11]["Need"] = 512
	tAnimaGroupPurchase_Cont["Anima"][11]["Get"] = 1024
	tAnimaGroupPurchase_Cont["Anima"][11]["Fail"] = 256
	tAnimaGroupPurchase_Cont["Anima"][11]["Action"] = 575323
	tAnimaGroupPurchase_Cont["Anima"][12] = {}
	tAnimaGroupPurchase_Cont["Anima"][12]["Need"] = 1024
	tAnimaGroupPurchase_Cont["Anima"][12]["Get"] = 2048
	tAnimaGroupPurchase_Cont["Anima"][12]["Fail"] = 512
	tAnimaGroupPurchase_Cont["Anima"][12]["Action"] = 575324
	
local tAnimaGroupPurchase_ELog = {}
	tAnimaGroupPurchase_ELog["Buy"] = "1000	1294"
	tAnimaGroupPurchase_ELog["Attend"] = {}
	tAnimaGroupPurchase_ELog["Attend"][4] = "350	22795	4	4	1	"
	tAnimaGroupPurchase_ELog["Attend"][5] = "350	22796	8	8	1	"
	tAnimaGroupPurchase_ELog["Attend"][6] = "350	22797	16	16	1	"
	tAnimaGroupPurchase_ELog["Attend"][7] = "350	22798	32	32	1	"
	tAnimaGroupPurchase_ELog["Attend"][8] = "350	22799	64	64	1	"
	tAnimaGroupPurchase_ELog["Attend"][9] = "350	22800	128	128	1	"
	tAnimaGroupPurchase_ELog["Attend"][10] = "350	22801	256	256	1	"
	tAnimaGroupPurchase_ELog["Attend"][11] = "350	22802	512	512	1	"
	tAnimaGroupPurchase_ELog["Attend"][12] = "350	22803	1024	1024	1	"
	tAnimaGroupPurchase_ELog["Succ"] = {}
	tAnimaGroupPurchase_ELog["Succ"][4] = "350	22804	-8	-8	1	"
	tAnimaGroupPurchase_ELog["Succ"][5] = "350	22805	-16	-16	1	"
	tAnimaGroupPurchase_ELog["Succ"][6] = "350	22806	-32	-32	1	"
	tAnimaGroupPurchase_ELog["Succ"][7] = "350	22807	-64	-64	1	"
	tAnimaGroupPurchase_ELog["Succ"][8] = "350	22808	-128	-128	1	"
	tAnimaGroupPurchase_ELog["Succ"][9] = "350	22809	-256	-256	1	"
	tAnimaGroupPurchase_ELog["Succ"][10] = "350	22810	-512	-512	1	"
	tAnimaGroupPurchase_ELog["Succ"][11] = "350	22811	-1024	-1024	1	"
	tAnimaGroupPurchase_ELog["Succ"][12] = "350	22812	-2048	-2048	1	"
	
--开奖随机
local tAnimaGroupPurchase_Prob = {}
	tAnimaGroupPurchase_Prob[1] = {}
	tAnimaGroupPurchase_Prob[1]["ItemChanceSum"] = 10000
	
	tAnimaGroupPurchase_Prob[1][1] = {}
	tAnimaGroupPurchase_Prob[1][1]["RandomItemChanceType"] = 2
	tAnimaGroupPurchase_Prob[1][1]["ItemChance"] = 4500
	tAnimaGroupPurchase_Prob[1][1]["Item_1"]= 1
	
	tAnimaGroupPurchase_Prob[1][2] = {}
	tAnimaGroupPurchase_Prob[1][2]["RandomItemChanceType"] = 2
	tAnimaGroupPurchase_Prob[1][2]["ItemChance"] = 5500
	tAnimaGroupPurchase_Prob[1][2]["Item_1"]= 0
	
local tAnimaGroupPurchase_Reward = {}
	-- ===2CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327080]
	-- ===删除: 3327080,1
	-- ===NewEMoneyLog: 1000,1295
	tAnimaGroupPurchase_Reward[3327080] = {}
	tAnimaGroupPurchase_Reward[3327080]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327080]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327080]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327080]["DeleteItem"][1]["Id"] = 3327080 -- 【库】2CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327080]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327080]["RewardEMoneyMono"]["Value"] = 2 -- 天石（赠）, 【需求】2天石（赠）
	tAnimaGroupPurchase_Reward[3327080]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1295"
	tAnimaGroupPurchase_Reward[3327080]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327080]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327080]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327081] = {}
	-- ===4CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327081]
	-- ===删除: 3327081,1
	-- ===NewEMoneyLog: 1000,1296
	tAnimaGroupPurchase_Reward[3327081]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327081]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327081]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327081]["DeleteItem"][1]["Id"] = 3327081 -- 【库】4CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327081]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327081]["RewardEMoneyMono"]["Value"] = 4 -- 天石（赠）, 【需求】4天石（赠）
	tAnimaGroupPurchase_Reward[3327081]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1296"
	tAnimaGroupPurchase_Reward[3327081]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327081]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327081]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327082] = {}
	-- ===8CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327082]
	-- ===删除: 3327082,1
	-- ===NewEMoneyLog: 1000,1297
	tAnimaGroupPurchase_Reward[3327082]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327082]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327082]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327082]["DeleteItem"][1]["Id"] = 3327082 -- 【库】8CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327082]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327082]["RewardEMoneyMono"]["Value"] = 8 -- 天石（赠）, 【需求】8天石（赠）
	tAnimaGroupPurchase_Reward[3327082]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1297"
	tAnimaGroupPurchase_Reward[3327082]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327082]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327082]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327083] = {}
	-- ===16CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327083]
	-- ===删除: 3327083,1
	-- ===NewEMoneyLog: 1000,1298
	tAnimaGroupPurchase_Reward[3327083]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327083]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327083]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327083]["DeleteItem"][1]["Id"] = 3327083 -- 【库】16CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327083]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327083]["RewardEMoneyMono"]["Value"] = 16 -- 天石（赠）, 【需求】16天石（赠）
	tAnimaGroupPurchase_Reward[3327083]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1298"
	tAnimaGroupPurchase_Reward[3327083]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327083]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327083]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327084] = {}
	-- ===32CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327084]
	-- ===删除: 3327084,1
	-- ===NewEMoneyLog: 1000,1299
	tAnimaGroupPurchase_Reward[3327084]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327084]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327084]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327084]["DeleteItem"][1]["Id"] = 3327084 -- 【库】32CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327084]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327084]["RewardEMoneyMono"]["Value"] = 32 -- 天石（赠）, 【需求】32天石（赠）
	tAnimaGroupPurchase_Reward[3327084]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1299"
	tAnimaGroupPurchase_Reward[3327084]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327084]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327084]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327085] = {}
	-- ===64CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327085]
	-- ===删除: 3327085,1
	-- ===NewEMoneyLog: 1000,1300
	tAnimaGroupPurchase_Reward[3327085]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327085]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327085]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327085]["DeleteItem"][1]["Id"] = 3327085 -- 【库】64CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327085]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327085]["RewardEMoneyMono"]["Value"] = 64 -- 天石（赠）, 【需求】64天石（赠）
	tAnimaGroupPurchase_Reward[3327085]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1300"
	tAnimaGroupPurchase_Reward[3327085]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327085]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327085]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327086] = {}
	-- ===128CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327086]
	-- ===删除: 3327086,1
	-- ===NewEMoneyLog: 1000,1301
	tAnimaGroupPurchase_Reward[3327086]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327086]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327086]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327086]["DeleteItem"][1]["Id"] = 3327086 -- 【库】128CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327086]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327086]["RewardEMoneyMono"]["Value"] = 128 -- 天石（赠）, 【需求】128天石（赠）
	tAnimaGroupPurchase_Reward[3327086]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1301"
	tAnimaGroupPurchase_Reward[3327086]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327086]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327086]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327087] = {}
	-- ===256CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327087]
	-- ===删除: 3327087,1
	-- ===NewEMoneyLog: 1000,1302
	tAnimaGroupPurchase_Reward[3327087]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327087]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327087]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327087]["DeleteItem"][1]["Id"] = 3327087 -- 【库】256CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327087]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327087]["RewardEMoneyMono"]["Value"] = 256 -- 天石（赠）, 【需求】256天石（赠）
	tAnimaGroupPurchase_Reward[3327087]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1302"
	tAnimaGroupPurchase_Reward[3327087]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327087]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327087]["RewardEffect"]["Effect"] = "angelwing"


	tAnimaGroupPurchase_Reward[3327088] = {}
	-- ===512CPs（B）Bag
	-- ===索引: tAnimaGroupPurchase_Reward[3327088]
	-- ===删除: 3327088,1
	-- ===NewEMoneyLog: 1000,1303
	tAnimaGroupPurchase_Reward[3327088]["LogId"] = 12001743
	tAnimaGroupPurchase_Reward[3327088]["DeleteItem"] = {}
	tAnimaGroupPurchase_Reward[3327088]["DeleteItem"][1] = {}
	tAnimaGroupPurchase_Reward[3327088]["DeleteItem"][1]["Id"] = 3327088 -- 【库】512CPs(B)Bag[属性:9]
	tAnimaGroupPurchase_Reward[3327088]["RewardEMoneyMono"] = {}
	tAnimaGroupPurchase_Reward[3327088]["RewardEMoneyMono"]["Value"] = 512 -- 天石（赠）, 【需求】512天石（赠）
	tAnimaGroupPurchase_Reward[3327088]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1303"
	tAnimaGroupPurchase_Reward[3327088]["RewardEffect"] = {}
	tAnimaGroupPurchase_Reward[3327088]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAnimaGroupPurchase_Reward[3327088]["RewardEffect"]["Effect"] = "angelwing"



--------------------------------------------逻辑部分配置--------------------------------------------
--参加团购对白显示
function AnimaGroupPurchase_ChkAttend()
	local nNpcId = Get_NpcId()
	
	--活动时间
	if not Sys_ChkFullTime(tAnimaGroupPurchase_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	for k,v in pairs(tAnimaGroupPurchase_Group) do
		local nTotalNum = #tAnimaGroupPurchase_Group[k]
		
		tNpcGossip[nNpcId]["Text21"..k] = string.format(tAnimaGroupPurchase_Text[nNpcId]["Text21"..k], nTotalNum)
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-1", nil, 10)
end

--团购操作
function AnimaGroupPurchase_Action(nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--最大参与人数
	local nMaxNum = tAnimaGroupPurchase_Cont["MaxNum"]
	
	--往团购表里面插入玩家数据
	table.insert(tAnimaGroupPurchase_Group[nIndex], nUserId)
	
	--当前人数
	local nNowNum = #tAnimaGroupPurchase_Group[nIndex]
	
	--同步记录全局表
	local nGlobalId = tAnimaGroupPurchase_Global[nIndex][nNowNum][1]
	local nPos = tAnimaGroupPurchase_Global[nIndex][nNowNum][2]
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,nUserId)
	
	--判断是否已经达到人数上限
	if nNowNum < nMaxNum then
		return
	end
	
	--达到上限后开奖
	local flat,tNum1= Probabil_RandomAward(tAnimaGroupPurchase_Prob,1)
	local nResult = tNum1[1]["tAward"][1]["Item_1"]
	
	--可以获得的天石
	local nEmoney = tAnimaGroupPurchase_Cont["Anima"][nIndex]["Get"]
	local nActionId = tAnimaGroupPurchase_Cont["Anima"][nIndex]["Action"]
	local nExistDay = tAnimaGroupPurchase_Cont["ExistDay"]
	local sSender = tAnimaGroupPurchase_Text["Mail"]["Sender"]
	local sTitle = tAnimaGroupPurchase_Text["Mail"]["Title"]
	local sContent = ""
	
	--成功
	if nResult == 1 then
		sContent = tAnimaGroupPurchase_Text["Mail"]["Content"]["Succ"]
		--成功直接发天石，所以action置0
		nActionId = 0
	--失败
	elseif nResult == 0 then
		sContent = tAnimaGroupPurchase_Text["Mail"]["Content"]["Fail"]
		--失败发action，所以Emoney置0
		nEmoney = 0
	else
		return
	end
	
	sContent = string.format(sContent, nIndex)
	
	--邮件发奖
	for k,v in pairs(tAnimaGroupPurchase_Group[nIndex]) do
		Sys_SendMail(v,0,nEmoney,nActionId,0,nExistDay,sSender,sTitle,sContent)
		
		--打成功log
		if nResult == 1 then
			Sys_SaveEmoneyBuy(tAnimaGroupPurchase_ELog["Succ"][nIndex],v)
		end
	end
	
	--开奖后清除当前数据
	tAnimaGroupPurchase_Group[nIndex] = {}
	
	--清除动态码数据
	for k,v in pairs(tAnimaGroupPurchase_Global[nIndex]) do
		Sys_SetSynaGlobalData(v[1],v[2],0)
	end
end

--参加团购
function AnimaGroupPurchase_Attend(nIndex)
	local nNpcId = Get_NpcId()
	
	--活动时间
	if not Sys_ChkFullTime(tAnimaGroupPurchase_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nUserId = Get_UserId()
	local nNowIndex = 0
	
	if nIndex == nil then
		--没有数据记录，直接退出
		if tAnimaGroupPurchase_Choose[nUserId] == nil then
			return
		end
		
		nNowIndex = tAnimaGroupPurchase_Choose[nUserId]
	else
		--记录选择的灵珠
		tAnimaGroupPurchase_Choose[nUserId] = nIndex
		nNowIndex = nIndex
	end
	
	--参与需要的天石
	local nNeedEMoney = tAnimaGroupPurchase_Cont["Anima"][nNowIndex]["Need"]
	--可获得的天石
	local nGetEMoney = tAnimaGroupPurchase_Cont["Anima"][nNowIndex]["Get"]
	--可获得的赠点
	local nGetEMoneyMono = tAnimaGroupPurchase_Cont["Anima"][nNowIndex]["Fail"]
	
	--天石不足
	if Get_UserEMoney(nUserId) < nNeedEMoney then
		Sys_MsgBox(tAnimaGroupPurchase_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
		return
	end
	
	--判断已经参与
	if #tAnimaGroupPurchase_Group[nNowIndex] ~= 0 then
		for k,v in pairs(tAnimaGroupPurchase_Group[nNowIndex]) do
			if nUserId == v then
				Sys_MsgBox(tAnimaGroupPurchase_Text["MsgBox"]["Attend"],nil,nil,nUserId)
				return
			end
		end
	end
	
	--是否需要二次确认
	if nIndex ~= nil then
		tNpcGossip[nNpcId]["Text311"] = string.format(tAnimaGroupPurchase_Text[nNpcId]["Text311"], nIndex, nNeedEMoney)
		tNpcGossip[nNpcId]["Text312"] = string.format(tAnimaGroupPurchase_Text[nNpcId]["Text312"], nGetEMoney, nGetEMoneyMono)
		tNpcGossip[nNpcId]["Text314"] = string.format(tAnimaGroupPurchase_Text[nNpcId]["Text314"], nIndex)
		
		LinkNpcGossipFunc_New(nNpcId, "3-1")
		return
	end
	
	local sEmoneyBuyLog = tAnimaGroupPurchase_ELog["Buy"]
	
	--扣除天石
	if User_AddEMoneyAndLog(-nNeedEMoney,sEmoneyBuyLog,nUserId) then
		--进入团购操作
		AnimaGroupPurchase_Action(nNowIndex, nUserId)
		
		--打参与log
		Sys_SaveEmoneyBuy(tAnimaGroupPurchase_ELog["Attend"][nNowIndex],nUserId)
		
		--提示
		User_TalkChannel2005(string.format(tAnimaGroupPurchase_Text["Channel2005"]["Succ"],nNowIndex),nUserId)
	end
end

--活动时间后退还天石
function AnimaGroupPurchase_Return()
	--退还时间不对
	if not Sys_ChkFullTime(tAnimaGroupPurchase_Time["ReturnTime"]) then
		return
	end
	
	local nExistDay = tAnimaGroupPurchase_Cont["ExistDay"]
	local sSender = tAnimaGroupPurchase_Text["Mail"]["Sender"]
	local sTitle = tAnimaGroupPurchase_Text["Mail"]["Title"]
	
	for k,v in pairs(tAnimaGroupPurchase_Group) do
		if #tAnimaGroupPurchase_Group[k] ~= 0 then
			local nRetuenEMoney = tAnimaGroupPurchase_Cont["Anima"][k]["Need"]
			local sContent = string.format(tAnimaGroupPurchase_Text["Mail"]["Content"]["Return"], k)
			
			--开始发天石
			for _,nUserId in pairs(tAnimaGroupPurchase_Group[k]) do
				Sys_SendMail(nUserId,0,nRetuenEMoney,0,0,nExistDay,sSender,sTitle,sContent)
			end
			
			--发完后清空团购表
			tAnimaGroupPurchase_Group[k] = {}
			
			--清除动态码数据
			for m,n in pairs(tAnimaGroupPurchase_Global[k]) do
				Sys_SetSynaGlobalData(n[1],n[2],0)
			end
		end
	end
end

--服务器启动
function AnimaGroupPurchase_StartServer()
	--将动态码上面的数据复制到临时表上
	for k,v in pairs(tAnimaGroupPurchase_Global) do
		for m,n in pairs(v) do
			local nGlobalData = Get_SysDynaGlobalData(n[1],n[2])
			
			if nGlobalData > 0 then
				tAnimaGroupPurchase_Group[k][m] = nGlobalData
			end
		end
	end
end

--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--欧冶子
tNpcFace[5345] = 147
tNpcGossip[25617] = tNpcGossip[25617] or DefaultNpc:new{}
tNpcGossip[25617]["DialogueText"] = tAnimaGroupPurchase_Text[25617]
tNpcGossip[25617]["OptionHidden"] = 1
--活动时间前、中
tNpcGossip[25617]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25617]["ChkFunc1-1"] = function()
	--活动时间后返回false
	if CommonFunc_GetAfterActivityTime(tAnimaGroupPurchase_Time["ActivityTime"]) then
		return false
	end
	
	if CommonFunc_GetBeforeActivityTime(tAnimaGroupPurchase_Time["ActivityTime"]) then
		tNpcGossip[25617]["tOption1-1"] = {111}
		return true
	end
	
	local nLevel = tAnimaGroupPurchase_Cont["Level"]
	local nMetempsychosis = tAnimaGroupPurchase_Cont["Metempsychosis"]
	
	--等级限制
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		tNpcGossip[25617]["Text1-1"] = {111,112,113,114,115}
		tNpcGossip[25617]["tOption1-1"] = {112}
		return true
	end
	
	tNpcGossip[25617]["Text1-1"] = {111,112,113,114}
	tNpcGossip[25617]["tOption1-1"] = {113,114}
	
	return true
end
tNpcGossip[25617]["tOption1-1"] = {111,112,113,114}
tNpcGossip[25617]["OptionFunc113"] = "AnimaGroupPurchase_ChkAttend"
tNpcGossip[25617]["OptionPoint114"] = "2-2"

--活动时间后
tNpcGossip[25617]["Text1-2"] = {121}
tNpcGossip[25617]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tAnimaGroupPurchase_Time["ActivityTime"])
end
tNpcGossip[25617]["tOption1-2"] = {121}
--参加团购
tNpcGossip[25617]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114}
tNpcGossip[25617]["tOption2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[25617]["OptionFunc211"] = "AnimaGroupPurchase_Attend</N>4"
tNpcGossip[25617]["OptionFunc212"] = "AnimaGroupPurchase_Attend</N>5"
tNpcGossip[25617]["OptionFunc213"] = "AnimaGroupPurchase_Attend</N>6"
tNpcGossip[25617]["OptionFunc214"] = "AnimaGroupPurchase_Attend</N>7"
tNpcGossip[25617]["OptionFunc215"] = "AnimaGroupPurchase_Attend</N>8"
tNpcGossip[25617]["OptionFunc216"] = "AnimaGroupPurchase_Attend</N>9"
tNpcGossip[25617]["OptionFunc217"] = "AnimaGroupPurchase_Attend</N>10"
tNpcGossip[25617]["OptionFunc218"] = "AnimaGroupPurchase_Attend</N>11"
tNpcGossip[25617]["OptionFunc219"] = "AnimaGroupPurchase_Attend</N>12"
tNpcGossip[25617]["OptionPoint2110"] = "1"
--团购规则
tNpcGossip[25617]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211}
tNpcGossip[25617]["tOption2-2"] = {221}
tNpcGossip[25617]["OptionPoint221"] = "1"
--确认参加团购
tNpcGossip[25617]["Text3-1"] = {311,312,313,314}
tNpcGossip[25617]["tOption3-1"] = {311,312}
tNpcGossip[25617]["OptionFunc311"] = "AnimaGroupPurchase_Attend"
tNpcGossip[25617]["OptionPoint312"] = "1"

---------------------------------------------物品模块---------------------------------------------
--8CPs(B)Bag
tItem[3327080] = tItem[3327080] or {}
tItem[3327080]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAnimaGroupPurchase_Reward[nItemId])
end

-- 16CPs(B)Bag
tItem[3327081] = tItem[3327080]
-- 32CPs(B)Bag
tItem[3327082] = tItem[3327080]
-- 64CPs(B)Bag
tItem[3327083] = tItem[3327080]
-- 128CPs(B)Bag
tItem[3327084] = tItem[3327080]
-- 256CPs(B)Bag
tItem[3327085] = tItem[3327080]
-- 512CPs(B)Bag
tItem[3327086] = tItem[3327080]
-- 1024CPs(B)Bag
tItem[3327087] = tItem[3327080]
-- 2048CPs(B)Bag
tItem[3327088] = tItem[3327080]

---------------------------------------------时间自检---------------------------------------------

local tAnimaGroupPurchase_OnTime = {}
	tAnimaGroupPurchase_OnTime["TimeType"] = 1
	tAnimaGroupPurchase_OnTime["Time"] = "01-14 00:00 01-14 00:01"
	tAnimaGroupPurchase_OnTime["Func"] = AnimaGroupPurchase_Return
	
table.insert(tSystemTime_InitialData,tAnimaGroupPurchase_OnTime)

-- 服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],AnimaGroupPurchase_StartServer)


