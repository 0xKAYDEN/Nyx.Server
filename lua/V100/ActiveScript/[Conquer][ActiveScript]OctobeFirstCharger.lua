------------------------------------------------------------------------------------
--Name:			190905[英文征服][活动脚本]10月首充（10.24-10.31）
--Purpose:		10月首充（10.24-10.31）
--Creator:		茅志伟
--Created:		2019/08/27
------------------------------------------------------------------------------------
-- 命名前缀 tOctobeFirstCharger_

-- lua.ini = 41503
-- 41503 = V100\ActiveScript\[Conquer][ActiveScript]OctobeFirstCharger.lua
-- 41503 = V100\活动脚本\[征服][活动脚本]10月首充（10.24-10.31）.lua

-- LogId = 12001622

-- EMoneyBuyLog = 100000905

-- 掩码表
local tOctobeFirstCharger_Stc = {}
-- 2000天石（赠）礼包
tOctobeFirstCharger_Stc[3323539] = {}
tOctobeFirstCharger_Stc[3323539]["EventType"] = 204
tOctobeFirstCharger_Stc[3323539]["DataType"] = 79
-- 5000修为值礼包
tOctobeFirstCharger_Stc[3323540] = {}
tOctobeFirstCharger_Stc[3323540]["EventType"] = 204
tOctobeFirstCharger_Stc[3323540]["DataType"] = 80
-- 10颗明亮星陨石礼包
tOctobeFirstCharger_Stc[3323541] = {}
tOctobeFirstCharger_Stc[3323541]["EventType"] = 204
tOctobeFirstCharger_Stc[3323541]["DataType"] = 81
-- 10000气力值礼包
tOctobeFirstCharger_Stc[3323542] = {}
tOctobeFirstCharger_Stc[3323542]["EventType"] = 204
tOctobeFirstCharger_Stc[3323542]["DataType"] = 82
-- 10颗+2赤炼石（赠）礼包
tOctobeFirstCharger_Stc[3323543] = {}
tOctobeFirstCharger_Stc[3323543]["EventType"] = 204
tOctobeFirstCharger_Stc[3323543]["DataType"] = 83
-- 20颗人参果礼包
tOctobeFirstCharger_Stc[3323544] = {}
tOctobeFirstCharger_Stc[3323544]["EventType"] = 204
tOctobeFirstCharger_Stc[3323544]["DataType"] = 84
-- SpiritStone（赠）礼盒
tOctobeFirstCharger_Stc[3323545] = {}
tOctobeFirstCharger_Stc[3323545]["EventType"] = 204
tOctobeFirstCharger_Stc[3323545]["DataType"] = 85
-- 神兵礼盒
tOctobeFirstCharger_Stc[3323546] = {}
tOctobeFirstCharger_Stc[3323546]["EventType"] = 204
tOctobeFirstCharger_Stc[3323546]["DataType"] = 86

-- 常量表
local tOctobeFirstCharger_Data = {}
-- 礼包最大使用次数-1
tOctobeFirstCharger_Data["Times"] = {}
tOctobeFirstCharger_Data["Times"][3323539] = 9
tOctobeFirstCharger_Data["Times"][3323540] = 9
tOctobeFirstCharger_Data["Times"][3323541] = 9
tOctobeFirstCharger_Data["Times"][3323542] = 9
tOctobeFirstCharger_Data["Times"][3323543] = 9
tOctobeFirstCharger_Data["Times"][3323544] = 9
tOctobeFirstCharger_Data["Times"][3323545] = 9
tOctobeFirstCharger_Data["Times"][3323546] = 1


tOctobeFirstCharger_Data["EMoneyNum"] = 399


local tOctobeFirstCharger_Pack = {}
	-- ===2000天石（赠）礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323539][1]
	-- ===
	-- ===
	tOctobeFirstCharger_Pack[3323539] = {}
	tOctobeFirstCharger_Pack[3323539][1] = {}
	tOctobeFirstCharger_Pack[3323539][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323539][1]["RewardEMoneyMono"] = {}
	tOctobeFirstCharger_Pack[3323539][1]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200天石（赠）
	tOctobeFirstCharger_Pack[3323539][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	905"
	tOctobeFirstCharger_Pack[3323539][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323539][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323539][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323539][2] = {}
	-- ===2000天石（赠）礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323539][2]
	-- ===删除:3323539,1
	-- ===
	tOctobeFirstCharger_Pack[3323539][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323539][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323539][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323539][2]["DeleteItem"][1]["Id"] = 3323539 -- 【库】2000CPs(B)Pack[属性:9]
	tOctobeFirstCharger_Pack[3323539][2]["RewardEMoneyMono"] = {}
	tOctobeFirstCharger_Pack[3323539][2]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200天石（赠）
	tOctobeFirstCharger_Pack[3323539][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	905"
	tOctobeFirstCharger_Pack[3323539][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323539][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323539][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323539][3] = {}
	-- ===100天石礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323539]
	-- ===删除:3323539,1
	-- ===
	tOctobeFirstCharger_Pack[3323539][3]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323539][3]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323539][3]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323539][3]["DeleteItem"][1]["Id"] = 3323539 -- 【库】2000CPs(B)Pack[属性:9]
	tOctobeFirstCharger_Pack[3323539][3]["RewardEMoney"] = {}
	tOctobeFirstCharger_Pack[3323539][3]["RewardEMoney"]["Value"] = 100 -- 天石, 【需求】100天石
	tOctobeFirstCharger_Pack[3323539][3]["RewardEMoney"]["NewEmoneyLog"] = "1000	905"
	tOctobeFirstCharger_Pack[3323539][3]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323539][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323539][3]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323540] = {}
	-- ===5000修为值礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323540][1]
	-- ===
	tOctobeFirstCharger_Pack[3323540][1] = {}
	tOctobeFirstCharger_Pack[3323540][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323540][1]["RewardRepairValue"] = {}
	tOctobeFirstCharger_Pack[3323540][1]["RewardRepairValue"]["Value"] = 500 -- 修为值, 【需求】500修为值
	tOctobeFirstCharger_Pack[3323540][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323540][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323540][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323540][2] = {}
	-- ===5000修为值礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323540][2]
	-- ===删除:3323540,1
	-- ===
	tOctobeFirstCharger_Pack[3323540][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323540][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323540][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323540][2]["DeleteItem"][1]["Id"] = 3323540 -- 【库】5000PotencyPtsPack[属性:9]
	tOctobeFirstCharger_Pack[3323540][2]["RewardRepairValue"] = {}
	tOctobeFirstCharger_Pack[3323540][2]["RewardRepairValue"]["Value"] = 500 -- 修为值, 【需求】500修为值
	tOctobeFirstCharger_Pack[3323540][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323540][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323540][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323541] = {}
	-- ===10颗明亮星陨石礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323541][1]
	-- ===
	-- ===
	tOctobeFirstCharger_Pack[3323541][1] = {}
	tOctobeFirstCharger_Pack[3323541][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323541][1]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323541][1]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323541][1]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】1颗明亮星陨石
	tOctobeFirstCharger_Pack[3323541][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tOctobeFirstCharger_Pack[3323541][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323541][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323541][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323541][2] = {}
	-- ===10颗明亮星陨石礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323541][2]
	-- ===删除:3323541,1
	-- ===
	tOctobeFirstCharger_Pack[3323541][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323541][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323541][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323541][2]["DeleteItem"][1]["Id"] = 3323541 -- 【库】10BrightStarStonesPack[属性:9]
	tOctobeFirstCharger_Pack[3323541][2]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323541][2]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323541][2]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】1颗明亮星陨石
	tOctobeFirstCharger_Pack[3323541][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tOctobeFirstCharger_Pack[3323541][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323541][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323541][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323542] = {}
	-- ===10000气力值礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323542][1]
	-- ===
	-- ===
	tOctobeFirstCharger_Pack[3323542][1] = {}
	tOctobeFirstCharger_Pack[3323542][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323542][1]["RewardStrengthValue"] = {}
	tOctobeFirstCharger_Pack[3323542][1]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tOctobeFirstCharger_Pack[3323542][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323542][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323542][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323542][2] = {}
	-- ===10000气力值礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323542][2]
	-- ===删除:3323542,1
	-- ===
	tOctobeFirstCharger_Pack[3323542][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323542][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323542][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323542][2]["DeleteItem"][1]["Id"] = 3323542 -- 【库】10000ChiPtsPack[属性:9]
	tOctobeFirstCharger_Pack[3323542][2]["RewardStrengthValue"] = {}
	tOctobeFirstCharger_Pack[3323542][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000气力值
	tOctobeFirstCharger_Pack[3323542][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323542][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323542][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323543] = {}
	-- ===10颗+2赤炼石（赠）礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323543][1]
	-- ===
	-- ===
	tOctobeFirstCharger_Pack[3323543][1] = {}
	tOctobeFirstCharger_Pack[3323543][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323543][1]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323543][1]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323543][1]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】‘+2赤炼石（赠）
	tOctobeFirstCharger_Pack[3323543][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tOctobeFirstCharger_Pack[3323543][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323543][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323543][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323543][2] = {}
	-- ===10颗+2赤炼石（赠）礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323543][2]
	-- ===删除:3323543,1
	-- ===
	tOctobeFirstCharger_Pack[3323543][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323543][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323543][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323543][2]["DeleteItem"][1]["Id"] = 3323543 -- 【库】10+2Stones(B)Pack[属性:9]
	tOctobeFirstCharger_Pack[3323543][2]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323543][2]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323543][2]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】‘+2赤炼石（赠）
	tOctobeFirstCharger_Pack[3323543][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tOctobeFirstCharger_Pack[3323543][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323543][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323543][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323543][3] = {}
	-- ===2颗+2赤炼石礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323543]
	-- ===删除:3323543,1
	-- ===
	tOctobeFirstCharger_Pack[3323543][3]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323543][3]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323543][3]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323543][3]["DeleteItem"][1]["Id"] = 3323543 --【库】10+2Stones(B)Pack[属性:9]
	tOctobeFirstCharger_Pack[3323543][3]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323543][3]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323543][3]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】‘+2赤炼石
	tOctobeFirstCharger_Pack[3323543][3]["RewardItem"][1]["Attr"] = "0 2" -- +2Stone*2
	tOctobeFirstCharger_Pack[3323543][3]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323543][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323543][3]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323544] = {}
	-- ===20颗人参果礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323544][1]
	-- ===
	-- ===
	tOctobeFirstCharger_Pack[3323544][1] = {}
	tOctobeFirstCharger_Pack[3323544][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323544][1]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323544][1]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323544][1]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】2颗人参果
	tOctobeFirstCharger_Pack[3323544][1]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tOctobeFirstCharger_Pack[3323544][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323544][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323544][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323544][2] = {}
	-- ===20颗人参果礼包
	-- ===索引: tOctobeFirstCharger_Pack[3323544][2]
	-- ===删除:3323544,1
	-- ===
	tOctobeFirstCharger_Pack[3323544][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323544][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323544][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323544][2]["DeleteItem"][1]["Id"] = 3323544 -- 【库】20GinsengFruitsPack[属性:9]
	tOctobeFirstCharger_Pack[3323544][2]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323544][2]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323544][2]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】2颗人参果
	tOctobeFirstCharger_Pack[3323544][2]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tOctobeFirstCharger_Pack[3323544][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323544][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323544][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323545] = {}
	-- ===SpiritStone（赠）礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323545][1]
	-- ===
	-- ===
	tOctobeFirstCharger_Pack[3323545][1] = {}
	tOctobeFirstCharger_Pack[3323545][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323545][1]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323545][1]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323545][1]["RewardItem"][1]["Id"] = 3321107 -- SpiritStone[3321107][属性:9][叠加:10000][金币:0], 【表格】1颗SpiritStone
	tOctobeFirstCharger_Pack[3323545][1]["RewardItem"][1]["Attr"] = "0 1" -- SpiritStone*1
	tOctobeFirstCharger_Pack[3323545][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323545][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323545][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323545][2] = {}
	-- ===SpiritStone（赠）礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323545][2]
	-- ===删除:3323545,1
	-- ===
	tOctobeFirstCharger_Pack[3323545][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323545][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323545][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323545][2]["DeleteItem"][1]["Id"] = 3323545 -- 【库】SpiritStone(B)Pack[属性:9]
	tOctobeFirstCharger_Pack[3323545][2]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323545][2]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323545][2]["RewardItem"][1]["Id"] = 3321107 -- SpiritStone[3321107][属性:9][叠加:10000][金币:0], 【表格】1颗SpiritStone
	tOctobeFirstCharger_Pack[3323545][2]["RewardItem"][1]["Attr"] = "0 1" -- SpiritStone*1
	tOctobeFirstCharger_Pack[3323545][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323545][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323545][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1]
	-- ===
	-- ===
	tOctobeFirstCharger_Pack[3323546][1] = {}
	tOctobeFirstCharger_Pack[3323546][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][1] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][1]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][1]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][1]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][1]["RewardItem"][1]["Id"] = 560199 -- Lance[560199][属性:0][叠加:0][金币:45000], 【表格】梅花枪（赠）
	tOctobeFirstCharger_Pack[3323546][1][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）Lance（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][2] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][2]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][2]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][2]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][2]["RewardItem"][1]["Id"] = 561199 -- CopperWand[561199][属性:0][叠加:0][金币:45000], 【表格】熟铜棍（赠）
	tOctobeFirstCharger_Pack[3323546][1][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）CopperWand（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][3] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][3]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][3]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][3]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][3]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][3]["RewardItem"][1]["Id"] = 900069 -- TurtleShield[900069][属性:0][叠加:0][金币:23900], 【表格】巨龟盾（赠）
	tOctobeFirstCharger_Pack[3323546][1][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）TurtleShield（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][3]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][4] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][4]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][4]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][4]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][4]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][4]["RewardItem"][1]["Id"] = 500189 -- RosewoodBow[500189][属性:0][叠加:0][金币:77800], 【表格】乐浪檀弓（赠）
	tOctobeFirstCharger_Pack[3323546][1][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）RosewoodBow（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][4]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][4]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][5] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][5]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][5]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][5]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][5]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][5]["RewardItem"][1]["Id"] = 613189 -- HadesKnife[613189][属性:0][叠加:0][金币:39000], 【表格】幽冥飞刀（赠）
	tOctobeFirstCharger_Pack[3323546][1][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）HadesKnife（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][5]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][5]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][6] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][6]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][6]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][6]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][6]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][6]["RewardItem"][1]["Id"] = 511199 -- Exorcist`sScythe[511199][属性:0][叠加:0][金币:45000], 【表格】封魔战镰（赠）
	tOctobeFirstCharger_Pack[3323546][1][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）Exorcist`sScythe（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][6]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][6]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][7] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][7]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][7]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][7]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][7]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][7]["RewardItem"][1]["Id"] = 601199 -- LordKatana[601199][属性:0][叠加:0][金币:45000], 【表格】太岁宗道（赠）
	tOctobeFirstCharger_Pack[3323546][1][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）LordKatana（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][7]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][7]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][8] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][8]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][8]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][8]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][8]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][8]["RewardItem"][1]["Id"] = 610199 -- BeadsOfConcentration[610199][属性:0][叠加:0][金币:45000], 【表格】镇狱念珠（赠）
	tOctobeFirstCharger_Pack[3323546][1][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）BeadsOfConcentration（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][8]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][8]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][9] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][9]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][9]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][9]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][9]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][9]["RewardItem"][1]["Id"] = 611199 -- BloodRapier[611199][属性:0][叠加:0][金币:45000], 【表格】血狱之剑（赠）
	tOctobeFirstCharger_Pack[3323546][1][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）BloodRapier（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][9]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][9]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][10] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][10]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][10]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][10]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][10]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][10]["RewardItem"][1]["Id"] = 612199 -- WailingPistol[612199][属性:0][叠加:0][金币:45000], 【表格】恸哭火枪（赠）
	tOctobeFirstCharger_Pack[3323546][1][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）WailingPistol（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][10]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][10]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][11] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][11]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][11]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][11]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][11]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][11]["RewardItem"][1]["Id"] = 617199 -- SpiritNunchaku[617199][属性:0][叠加:0][金币:45000], 【表格】聚灵双龙棍（赠）
	tOctobeFirstCharger_Pack[3323546][1][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）SpiritNunchaku（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][11]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][11]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][12] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][12]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][12]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][12]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][12]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][12]["RewardItem"][1]["Id"] = 421199 -- CloudBacksword[421199][属性:0][叠加:0][金币:43800], 【表格】赤霞剑（赠）
	tOctobeFirstCharger_Pack[3323546][1][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）CloudBacksword（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][12]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][12]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][13] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][13]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][13]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][13]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][13]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][13]["RewardItem"][1]["Id"] = 619199 -- DragonRuler[619199][属性:0][叠加:0][金币:87600], 【表格】御龙（赠）
	tOctobeFirstCharger_Pack[3323546][1][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）DragonRuler（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][13]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][13]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][14] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][14]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][14]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][14]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][14]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][14]["RewardItem"][1]["Id"] = 626199 -- PrideFan[626199][属性:0][叠加:0][金币:77800], 【表格】傲雪凌霜扇（赠）
	tOctobeFirstCharger_Pack[3323546][1][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）PrideFan（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][14]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][14]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][15] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][15]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][15]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][15]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][15]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][15]["RewardItem"][1]["Id"] = 681199 -- GloryStormhammer[681199][属性:0][叠加:0][金币:77800], 【表格】雷光战锤（赠）
	tOctobeFirstCharger_Pack[3323546][1][15]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）GloryStormhammer（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][15]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][15]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][16] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][16]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][16]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][16]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][16]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][16]["RewardItem"][1]["Id"] = 680199 -- ShadowFlashaxe[680199][属性:0][叠加:0][金币:77800], 【表格】凛风战斧（赠）
	tOctobeFirstCharger_Pack[3323546][1][16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）ShadowFlashaxe（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][16]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][16]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][17] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][17]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][17]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][17]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][17]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][17]["RewardItem"][1]["Id"] = 410199 -- RainbowBlade[410199][属性:0][叠加:0][金币:45000], 【表格】沉虹斩（赠）
	tOctobeFirstCharger_Pack[3323546][1][17]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）RainbowBlade（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][17]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][17]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][18] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][18]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][18]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][18]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][18]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][18]["RewardItem"][1]["Id"] = 420199 -- LoyalSword[420199][属性:0][叠加:0][金币:45000], 【表格】赤霄剑（赠）
	tOctobeFirstCharger_Pack[3323546][1][18]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）LoyalSword（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][18]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][18]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][19] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][19]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][19]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][19]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][19]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][19]["RewardItem"][1]["Id"] = 430199 -- DemonHook[430199][属性:0][叠加:0][金币:45000], 【表格】索命钩（赠）
	tOctobeFirstCharger_Pack[3323546][1][19]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）DemonHook（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][19]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][19]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][20] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][20]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][20]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][20]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][20]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][20]["RewardItem"][1]["Id"] = 440199 -- LightningWhip[440199][属性:0][叠加:0][金币:45000], 【表格】雷公鞭（赠）
	tOctobeFirstCharger_Pack[3323546][1][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）LightningWhip（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][20]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][20]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][21] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][21]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][21]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][21]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][21]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][21]["RewardItem"][1]["Id"] = 450199 -- GoldAxe[450199][属性:0][叠加:0][金币:45000], 【表格】湛金斧（赠）
	tOctobeFirstCharger_Pack[3323546][1][21]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）GoldAxe（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][21]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][21]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][22] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][22]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][22]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][22]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][22]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][22]["RewardItem"][1]["Id"] = 460199 -- ShiningHammer[460199][属性:0][叠加:0][金币:45000], 【表格】灿银锤（赠）
	tOctobeFirstCharger_Pack[3323546][1][22]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）ShiningHammer（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][22]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][22]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][23] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][23]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][23]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][23]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][23]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][23]["RewardItem"][1]["Id"] = 480199 -- SnakeClub[480199][属性:0][叠加:0][金币:45000], 【表格】珊银棒（赠）
	tOctobeFirstCharger_Pack[3323546][1][23]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）SnakeClub（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][23]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][23]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][24] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][24]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][24]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][24]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][24]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][24]["RewardItem"][1]["Id"] = 490199 -- RainbowDagger[490199][属性:0][叠加:0][金币:45000], 【表格】虹艳匕（赠）
	tOctobeFirstCharger_Pack[3323546][1][24]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）RainbowDagger（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][24]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][24]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][1][25] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][1][25]
	-- ===
	tOctobeFirstCharger_Pack[3323546][1][25]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][1][25]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][1][25]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][1][25]["RewardItem"][1]["Id"] = 481199 -- ThunderScepter[481199][属性:0][叠加:0][金币:45000], 【表格】霹雳神杵（赠）
	tOctobeFirstCharger_Pack[3323546][1][25]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）ThunderScepter（赠）*1
	tOctobeFirstCharger_Pack[3323546][1][25]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][1][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][1][25]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][1]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][1]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][1]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][1]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][1]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][1]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][1]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][1]["RewardItem"][1]["Id"] = 560199 -- Lance[560199][属性:0][叠加:0][金币:45000], 【表格】梅花枪（赠）
	tOctobeFirstCharger_Pack[3323546][2][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）Lance（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][1]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][1]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][2] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][2]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][2]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][2]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][2]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][2]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][2]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][2]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][2]["RewardItem"][1]["Id"] = 561199 -- CopperWand[561199][属性:0][叠加:0][金币:45000], 【表格】熟铜棍（赠）
	tOctobeFirstCharger_Pack[3323546][2][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）CopperWand（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][2]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][2]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][3] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][3]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][3]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][3]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][3]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][3]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][3]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][3]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][3]["RewardItem"][1]["Id"] = 900069 -- TurtleShield[900069][属性:0][叠加:0][金币:23900], 【表格】巨龟盾（赠）
	tOctobeFirstCharger_Pack[3323546][2][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）TurtleShield（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][3]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][3]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][4] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][4]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][4]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][4]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][4]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][4]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][4]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][4]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][4]["RewardItem"][1]["Id"] = 500189 -- RosewoodBow[500189][属性:0][叠加:0][金币:77800], 【表格】乐浪檀弓（赠）
	tOctobeFirstCharger_Pack[3323546][2][4]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）RosewoodBow（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][4]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][4]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][5] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][5]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][5]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][5]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][5]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][5]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][5]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][5]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][5]["RewardItem"][1]["Id"] = 613189 -- HadesKnife[613189][属性:0][叠加:0][金币:39000], 【表格】幽冥飞刀（赠）
	tOctobeFirstCharger_Pack[3323546][2][5]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）HadesKnife（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][5]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][5]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][6] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][6]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][6]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][6]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][6]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][6]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][6]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][6]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][6]["RewardItem"][1]["Id"] = 511199 -- Exorcist`sScythe[511199][属性:0][叠加:0][金币:45000], 【表格】封魔战镰（赠）
	tOctobeFirstCharger_Pack[3323546][2][6]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）Exorcist`sScythe（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][6]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][6]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][7] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][7]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][7]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][7]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][7]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][7]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][7]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][7]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][7]["RewardItem"][1]["Id"] = 601199 -- LordKatana[601199][属性:0][叠加:0][金币:45000], 【表格】太岁宗道（赠）
	tOctobeFirstCharger_Pack[3323546][2][7]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）LordKatana（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][7]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][8] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][8]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][8]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][8]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][8]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][8]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][8]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][8]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][8]["RewardItem"][1]["Id"] = 610199 -- BeadsOfConcentration[610199][属性:0][叠加:0][金币:45000], 【表格】镇狱念珠（赠）
	tOctobeFirstCharger_Pack[3323546][2][8]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）BeadsOfConcentration（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][8]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][8]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][9] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][9]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][9]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][9]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][9]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][9]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][9]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][9]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][9]["RewardItem"][1]["Id"] = 611199 -- BloodRapier[611199][属性:0][叠加:0][金币:45000], 【表格】血狱之剑（赠）
	tOctobeFirstCharger_Pack[3323546][2][9]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）BloodRapier（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][9]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][9]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][10] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][10]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][10]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][10]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][10]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][10]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][10]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][10]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][10]["RewardItem"][1]["Id"] = 612199 -- WailingPistol[612199][属性:0][叠加:0][金币:45000], 【表格】恸哭火枪（赠）
	tOctobeFirstCharger_Pack[3323546][2][10]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）WailingPistol（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][10]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][10]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][11] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][11]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][11]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][11]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][11]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][11]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][11]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][11]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][11]["RewardItem"][1]["Id"] = 617199 -- SpiritNunchaku[617199][属性:0][叠加:0][金币:45000], 【表格】聚灵双龙棍（赠）
	tOctobeFirstCharger_Pack[3323546][2][11]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）SpiritNunchaku（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][11]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][11]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][12] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][12]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][12]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][12]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][12]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][12]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][12]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][12]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][12]["RewardItem"][1]["Id"] = 421199 -- CloudBacksword[421199][属性:0][叠加:0][金币:43800], 【表格】赤霞剑（赠）
	tOctobeFirstCharger_Pack[3323546][2][12]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）CloudBacksword（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][12]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][12]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][13] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][13]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][13]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][13]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][13]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][13]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][13]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][13]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][13]["RewardItem"][1]["Id"] = 619199 -- DragonRuler[619199][属性:0][叠加:0][金币:87600], 【表格】御龙（赠）
	tOctobeFirstCharger_Pack[3323546][2][13]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）DragonRuler（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][13]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][13]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][14] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][14]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][14]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][14]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][14]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][14]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][14]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][14]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][14]["RewardItem"][1]["Id"] = 626199 -- PrideFan[626199][属性:0][叠加:0][金币:77800], 【表格】傲雪凌霜扇（赠）
	tOctobeFirstCharger_Pack[3323546][2][14]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）PrideFan（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][14]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][14]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][15] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][15]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][15]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][15]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][15]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][15]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][15]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][15]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][15]["RewardItem"][1]["Id"] = 681199 -- GloryStormhammer[681199][属性:0][叠加:0][金币:77800], 【表格】雷光战锤（赠）
	tOctobeFirstCharger_Pack[3323546][2][15]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）GloryStormhammer（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][15]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][15]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][16] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][16]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][16]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][16]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][16]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][16]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][16]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][16]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][16]["RewardItem"][1]["Id"] = 680199 -- ShadowFlashaxe[680199][属性:0][叠加:0][金币:77800], 【表格】凛风战斧（赠）
	tOctobeFirstCharger_Pack[3323546][2][16]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）ShadowFlashaxe（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][16]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][16]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][17] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][17]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][17]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][17]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][17]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][17]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][17]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][17]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][17]["RewardItem"][1]["Id"] = 410199 -- RainbowBlade[410199][属性:0][叠加:0][金币:45000], 【表格】沉虹斩（赠）
	tOctobeFirstCharger_Pack[3323546][2][17]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）RainbowBlade（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][17]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][17]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][18] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][18]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][18]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][18]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][18]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][18]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][18]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][18]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][18]["RewardItem"][1]["Id"] = 420199 -- LoyalSword[420199][属性:0][叠加:0][金币:45000], 【表格】赤霄剑（赠）
	tOctobeFirstCharger_Pack[3323546][2][18]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）LoyalSword（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][18]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][18]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][19] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][19]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][19]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][19]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][19]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][19]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][19]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][19]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][19]["RewardItem"][1]["Id"] = 430199 -- DemonHook[430199][属性:0][叠加:0][金币:45000], 【表格】索命钩（赠）
	tOctobeFirstCharger_Pack[3323546][2][19]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）DemonHook（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][19]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][19]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][20] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][20]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][20]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][20]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][20]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][20]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][20]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][20]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][20]["RewardItem"][1]["Id"] = 440199 -- LightningWhip[440199][属性:0][叠加:0][金币:45000], 【表格】雷公鞭（赠）
	tOctobeFirstCharger_Pack[3323546][2][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）LightningWhip（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][20]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][20]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][21] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][21]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][21]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][21]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][21]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][21]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][21]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][21]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][21]["RewardItem"][1]["Id"] = 450199 -- GoldAxe[450199][属性:0][叠加:0][金币:45000], 【表格】湛金斧（赠）
	tOctobeFirstCharger_Pack[3323546][2][21]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）GoldAxe（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][21]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][21]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][22] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][22]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][22]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][22]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][22]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][22]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][22]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][22]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][22]["RewardItem"][1]["Id"] = 460199 -- ShiningHammer[460199][属性:0][叠加:0][金币:45000], 【表格】灿银锤（赠）
	tOctobeFirstCharger_Pack[3323546][2][22]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）ShiningHammer（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][22]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][22]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][23] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][23]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][23]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][23]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][23]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][23]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][23]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][23]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][23]["RewardItem"][1]["Id"] = 480199 -- SnakeClub[480199][属性:0][叠加:0][金币:45000], 【表格】珊银棒（赠）
	tOctobeFirstCharger_Pack[3323546][2][23]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）SnakeClub（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][23]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][23]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][23]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][24] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][24]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][24]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][24]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][24]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][24]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][24]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][24]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][24]["RewardItem"][1]["Id"] = 490199 -- RainbowDagger[490199][属性:0][叠加:0][金币:45000], 【表格】虹艳匕（赠）
	tOctobeFirstCharger_Pack[3323546][2][24]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）RainbowDagger（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][24]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][24]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][24]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323546][2][25] = {}
	-- ===神兵礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323546][2][25]
	-- ===删除:3323546,1
	tOctobeFirstCharger_Pack[3323546][2][25]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323546][2][25]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][25]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][25]["DeleteItem"][1]["Id"] = 3323546 -- 【库】WeaponsPack[属性:9]
	tOctobeFirstCharger_Pack[3323546][2][25]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323546][2][25]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323546][2][25]["RewardItem"][1]["Id"] = 481199 -- ThunderScepter[481199][属性:0][叠加:0][金币:45000], 【表格】霹雳神杵（赠）
	tOctobeFirstCharger_Pack[3323546][2][25]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 0 0 0 5" -- （追加+5）ThunderScepter（赠）*1
	tOctobeFirstCharger_Pack[3323546][2][25]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323546][2][25]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323546][2][25]["RewardEffect"]["Effect"] = "angelwing"


	tOctobeFirstCharger_Pack[3323547] = {}
	-- ===超值回馈礼盒
	-- ===索引: tOctobeFirstCharger_Pack[3323547]
	-- ===删除:3323547,1
	-- ===
	tOctobeFirstCharger_Pack[3323547]["LogId"] = 12001622
	tOctobeFirstCharger_Pack[3323547]["DeleteItem"] = {}
	tOctobeFirstCharger_Pack[3323547]["DeleteItem"][1] = {}
	tOctobeFirstCharger_Pack[3323547]["DeleteItem"][1]["Id"] = 3323547 -- 【库】GrandReturnPack[属性:9]
	tOctobeFirstCharger_Pack[3323547]["RewardStrengthValue"] = {}
	tOctobeFirstCharger_Pack[3323547]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tOctobeFirstCharger_Pack[3323547]["RewardItem"] = {}
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][1] = {}
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][2] = {}
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][2]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】赠品赤练石+6（赠）
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][2]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][3] = {}
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*100（赠）
	tOctobeFirstCharger_Pack[3323547]["RewardItem"][3]["Attr"] = "0 100 3" -- YellowRuneEssence（赠）*100
	tOctobeFirstCharger_Pack[3323547]["RewardEffect"] = {}
	tOctobeFirstCharger_Pack[3323547]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctobeFirstCharger_Pack[3323547]["RewardEffect"]["Effect"] = "angelwing"






-----------------------------------------------------逻辑部分
-- 隔天礼包开启逻辑
function OctobeFirstCharger_OpenPack(nItemId)
	local nEventType1 = tOctobeFirstCharger_Stc[nItemId]["EventType"]
	local nDataType1 = tOctobeFirstCharger_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nTimes = tOctobeFirstCharger_Data["Times"][nItemId]
	if not Task_StcInterval(nEventType1,nDataType1,1,4) then  --时间戳是否隔天
		Sys_MsgBox(tOctobeFirstCharger_Text["Sys_MsgBox"]["NotOnce"])
		return 
	end 
	if nData1 > nTimes then    -- 判断是否达到领取上限
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tOctobeFirstCharger_Pack[nItemId][1])
	if not User_CheckLeftSpace(nSpace) then 
		Sys_MsgBox(tOctobeFirstCharger_Text["Sys_MsgBox"]["NoSpace"])
		return
	end
	if nData1 >= nTimes then         --判断是否是最后一次领奖
		if Task_AddStatistic(nEventType1,nDataType1,1,1) then 
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId][2])
			return
		end 
	else
		if Task_AddStatistic(nEventType1,nDataType1,1,1) then 
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId][1])
			return
		end
	end 
end 

function OctobeFirstCharger_OpenEMonoPack(nItemId)
	local nEventType1 = tOctobeFirstCharger_Stc[nItemId]["EventType"]
	local nDataType1 = tOctobeFirstCharger_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nTimes = tOctobeFirstCharger_Data["Times"][nItemId]
	if not Task_StcInterval(nEventType1,nDataType1,1,4) then  --时间戳是否隔天
		Sys_MsgBox(tOctobeFirstCharger_Text["Sys_MsgBox"]["NotOnce"])
		return 
	end 
	if nData1 > nTimes then    -- 判断是否达到领取上限
		return
	end 
	local nEMoneyMono = tOctobeFirstCharger_Pack[nItemId][1]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nEMoneyMono > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tChildrenCandy_Text["Msg"]["CPMono"])
		return
	end
	if nData1 >= nTimes then         --判断是否是最后一次领奖
		if Task_AddStatistic(nEventType1,nDataType1,1,1) then 
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId][2])
			return
		end 
	else
		if Task_AddStatistic(nEventType1,nDataType1,1,1) then 
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId][1])
			return
		end
	end 
end 



-- 天石礼包开启对白
function OctobeFirstCharger_EmoneyPackText(nItemId)
	local nEMoney = tOctobeFirstCharger_Data["EMoneyNum"] 
	local nUserEMoney = Get_UserEMoney()
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	
	if nEMoney > nUserEMoney then     --判断玩家天石是否足够
		Sys_MsgBox(tOctobeFirstCharger_Text["Sys_MsgBox"]["NotEnoughEMoney"])
		return 
	end 
	LinkItemGossipFunc_New(nItemId,"2-1")
end 

-- 天石礼包开启逻辑
function OctobeFirstCharger_EmoneyPack(nItemId)
	local nEMoney = tOctobeFirstCharger_Data["EMoneyNum"] 
	local nUserEMoney = Get_UserEMoney()
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tOctobeFirstCharger_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then 
		Sys_MsgBox(tOctobeFirstCharger_Text["Sys_MsgBox"]["NoSpace"])
		return
	end 
	if nEMoney > nUserEMoney then     --判断玩家天石是否足够
		Sys_MsgBox(tOctobeFirstCharger_Text["Sys_MsgBox"]["NotEnoughEMoney"])
		return 
	end 
	if User_AddEMoney(-nEMoney) then   --判断是否成功扣除天石
		RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId])
		return
	end 
end 
-- 武器礼包开启逻辑
function OctobeFirstCharger_OpenweaponPack(nItemId,nNum)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nEventType2 = tOctobeFirstCharger_Stc[nItemId]["EventType"]
	local nDataType2 = tOctobeFirstCharger_Stc[nItemId]["DataType"]
	local nData2 = Get_UserStatisticValue(nEventType2,nDataType2)
	local nTimes = tOctobeFirstCharger_Data["Times"][nItemId]
	if nData2 > nTimes then    -- 判断是否达到领取上限
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tOctobeFirstCharger_Pack[nItemId][1][nNum])
	if not User_CheckLeftSpace(nSpace) then 
		Sys_MsgBox(tOctobeFirstCharger_Text["Sys_MsgBox"]["NoSpace"])
		return
	end
	if nData2 >= nTimes then         --判断是否是最后一次领奖
		if Task_AddStatistic(nEventType2,nDataType2,1,1) then 
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId][2][nNum])
			return
		end 
	else
		if Task_AddStatistic(nEventType2,nDataType2,1,1) then 
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId][1][nNum])
			return
		end
	end 
end 

function OctobeFirstCharger_OpenBox(nItemId)
	local bJudge = TermsOfUse_Main(nItemId,tOctobeFirstCharger_Pack[nItemId][3])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tOctobeFirstCharger_Pack[nItemId][3])
end 

-- 服务器判断
function OctobeFirstCharger_DistinguishServer(nItemId)
	if SpecialServer_ChkNoGiftServer() then
		OctobeFirstCharger_OpenBox(nItemId)
	else
		if nItemId == 3323539 then 
			OctobeFirstCharger_OpenEMonoPack(nItemId)
		else
			OctobeFirstCharger_OpenPack(nItemId)
		end 
	end 
end 



----------------------------------------对白模板
-- 神兵礼盒
tItemFace[3323546] = 2394
tItem[3323546] = tItem[3323546] or {}
tItem[3323546]["DialogueText"] = tOctobeFirstCharger_Text[3323546]
tItem[3323546]["Text1-1"] = {111}
tItem[3323546]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125}
tItem[3323546]["OptionFunc111"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>1"
tItem[3323546]["OptionFunc112"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>2"
tItem[3323546]["OptionFunc113"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>3"
tItem[3323546]["OptionFunc114"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>4"
tItem[3323546]["OptionFunc115"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>5"
tItem[3323546]["OptionFunc116"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>6"
tItem[3323546]["OptionFunc117"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>7"
tItem[3323546]["OptionFunc118"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>8"
tItem[3323546]["OptionFunc119"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>9"
tItem[3323546]["OptionFunc1110"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>10"
tItem[3323546]["OptionFunc1111"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>11"
tItem[3323546]["OptionFunc1112"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>12"
tItem[3323546]["OptionFunc1113"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>13"
tItem[3323546]["OptionFunc1114"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>14"
tItem[3323546]["OptionFunc1115"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>15"
tItem[3323546]["OptionFunc1116"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>16"
tItem[3323546]["OptionFunc1117"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>17"
tItem[3323546]["OptionFunc1118"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>18"
tItem[3323546]["OptionFunc1119"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>19"
tItem[3323546]["OptionFunc1120"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>20"
tItem[3323546]["OptionFunc1121"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>21"
tItem[3323546]["OptionFunc1122"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>22"
tItem[3323546]["OptionFunc1123"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>23"
tItem[3323546]["OptionFunc1124"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>24"
tItem[3323546]["OptionFunc1125"] = "OctobeFirstCharger_OpenweaponPack</N>3323546</N>25"
-- 超值回馈礼盒
tItemFace[3323547] = 1008
tItem[3323547] = tItem[3323547] or {}
tItem[3323547]["DialogueText"] = tOctobeFirstCharger_Text[3323547]
tItem[3323547]["Text1-1"] = {111}
tItem[3323547]["tOption1-1"] = {111,112}
tItem[3323547]["OptionFunc111"] = "OctobeFirstCharger_EmoneyPackText</N>3323547"
tItem[3323547]["Text2-1"] = {211}
tItem[3323547]["tOption2-1"] = {211,212}
tItem[3323547]["OptionFunc211"] = "OctobeFirstCharger_EmoneyPack</N>3323547"


---------------------------------------物品使用逻辑

tItem[3323539] = tItem[3323539] or {}
tItem[3323539]["Function"] = function(nItemId,sItemName)
	OctobeFirstCharger_DistinguishServer(nItemId)
end
tItem[3323543] = tItem[3323539] or {}

tItem[3323540] = tItem[3323540] or {}
tItem[3323540]["Function"] = function(nItemId,sItemName)
	OctobeFirstCharger_OpenPack(nItemId)
end
tItem[3323541] = tItem[3323540] or {}
tItem[3323542] = tItem[3323540] or {}
-- tItem[3323543] = tItem[3323540] or {}
tItem[3323544] = tItem[3323540] or {}
tItem[3323545] = tItem[3323540] or {}

