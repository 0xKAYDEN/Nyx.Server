------------------------------------------------------------------------------------
--Name：            190617[简体征服][活动脚本]勇士百兵谱促销礼包制作
--Creator:      江宇君
--Created:     2019-06-17
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀
-- WeaponArchivesInstanceBag_

-- emoneylog	100000527
-- stc掩码	198,59 -- 神兵灵魄原石 基础+免费
-- stc掩码	198,60 -- 神兵灵魄原石 2阶+3阶
-- stc掩码	198,61 -- 神兵灵魄原石 4阶+5阶
-- stc掩码	198,62 -- 神兵灵魄原石 6阶+7阶
-- stc掩码	198,63 -- 炼魂玉原石 基础+免费
-- stc掩码	198,64 -- 炼魂玉原石 2阶+3阶
-- stc掩码	198,65 -- 炼魂玉原石 4阶+5阶
-- stc掩码	198,66 -- 炼魂玉原石 6阶+7阶

-- stc掩码	198,85 -- 神兵灵魄原石 8阶+9阶
-- stc掩码	198,86 -- 炼魂玉原石 8阶+9阶

----------------------------------表配置部分--------------------------------------------
local tWeaponArchivesInstanceBag_Stc = {}
	-- 神兵灵魄原石
	tWeaponArchivesInstanceBag_Stc[3312953] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][210] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][211] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][212] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][213] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][214] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][215] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][216] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][217] = {}
	tWeaponArchivesInstanceBag_Stc[3312953][218] = {}
	tWeaponArchivesInstanceBag_Stc[3312953]["Begin"] = 212
	tWeaponArchivesInstanceBag_Stc[3312953]["End"] = 218
	tWeaponArchivesInstanceBag_Stc[3312953]["Basic"] = 210
	-- 基础+免费
	tWeaponArchivesInstanceBag_Stc[3312953][210]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][210]["DataType"] = 59
	tWeaponArchivesInstanceBag_Stc[3312953][210]["Length"] = 10
	-- tWeaponArchivesInstanceBag_Stc[3312953][211]["EventType"] = 198
	-- tWeaponArchivesInstanceBag_Stc[3312953][211]["DataType"] = 59
	-- 2阶+3阶
	tWeaponArchivesInstanceBag_Stc[3312953][212]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][212]["DataType"] = 60
	tWeaponArchivesInstanceBag_Stc[3312953][212]["Length"] = 5
	tWeaponArchivesInstanceBag_Stc[3312953][213]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][213]["DataType"] = 60
	tWeaponArchivesInstanceBag_Stc[3312953][213]["Length"] = 10
	-- 4阶+5阶
	tWeaponArchivesInstanceBag_Stc[3312953][214]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][214]["DataType"] = 61
	tWeaponArchivesInstanceBag_Stc[3312953][214]["Length"] = 5
	tWeaponArchivesInstanceBag_Stc[3312953][215]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][215]["DataType"] = 61
	tWeaponArchivesInstanceBag_Stc[3312953][215]["Length"] = 10
	-- 6阶+7阶
	tWeaponArchivesInstanceBag_Stc[3312953][216]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][216]["DataType"] = 62
	tWeaponArchivesInstanceBag_Stc[3312953][216]["Length"] = 5
	tWeaponArchivesInstanceBag_Stc[3312953][217]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][217]["DataType"] = 62
	tWeaponArchivesInstanceBag_Stc[3312953][217]["Length"] = 10
	-- 8阶+9阶
	tWeaponArchivesInstanceBag_Stc[3312953][218]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312953][218]["DataType"] = 85
	tWeaponArchivesInstanceBag_Stc[3312953][218]["Length"] = 5
	
	-- 炼魂玉原石
	tWeaponArchivesInstanceBag_Stc[3312954] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][210] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][211] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][212] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][213] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][214] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][215] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][216] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][217] = {}
	tWeaponArchivesInstanceBag_Stc[3312954][218] = {}
	tWeaponArchivesInstanceBag_Stc[3312954]["Begin"] = 212
	tWeaponArchivesInstanceBag_Stc[3312954]["End"] = 218
	tWeaponArchivesInstanceBag_Stc[3312954]["Basic"] = 210
	-- 基础+免费
	tWeaponArchivesInstanceBag_Stc[3312954][210]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][210]["DataType"] = 63
	tWeaponArchivesInstanceBag_Stc[3312954][210]["Length"] = 10
	-- tWeaponArchivesInstanceBag_Stc[3312954][211]["EventType"] = 198
	-- tWeaponArchivesInstanceBag_Stc[3312954][211]["DataType"] = 63
	-- 2阶+3阶
	tWeaponArchivesInstanceBag_Stc[3312954][212]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][212]["DataType"] = 64
	tWeaponArchivesInstanceBag_Stc[3312954][212]["Length"] = 5
	tWeaponArchivesInstanceBag_Stc[3312954][213]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][213]["DataType"] = 64
	tWeaponArchivesInstanceBag_Stc[3312954][213]["Length"] = 10
	-- 4阶+5阶
	tWeaponArchivesInstanceBag_Stc[3312954][214]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][214]["DataType"] = 65
	tWeaponArchivesInstanceBag_Stc[3312954][214]["Length"] = 5
	tWeaponArchivesInstanceBag_Stc[3312954][215]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][215]["DataType"] = 65
	tWeaponArchivesInstanceBag_Stc[3312954][215]["Length"] = 10
	-- 6阶+7阶
	tWeaponArchivesInstanceBag_Stc[3312954][216]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][216]["DataType"] = 66
	tWeaponArchivesInstanceBag_Stc[3312954][216]["Length"] = 5
	tWeaponArchivesInstanceBag_Stc[3312954][217]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][217]["DataType"] = 66
	tWeaponArchivesInstanceBag_Stc[3312954][217]["Length"] = 10
	-- 8阶+9阶
	tWeaponArchivesInstanceBag_Stc[3312954][218]["EventType"] = 198
	tWeaponArchivesInstanceBag_Stc[3312954][218]["DataType"] = 86
	tWeaponArchivesInstanceBag_Stc[3312954][218]["Length"] = 5

local tWeaponArchivesInstanceBag_Anima = {}
	tWeaponArchivesInstanceBag_Anima[212] = 4200002
	tWeaponArchivesInstanceBag_Anima[213] = 4200003
	tWeaponArchivesInstanceBag_Anima[214] = 4200004
	tWeaponArchivesInstanceBag_Anima[215] = 4200005
	tWeaponArchivesInstanceBag_Anima[216] = 4200006
	tWeaponArchivesInstanceBag_Anima[217] = 4200007
	tWeaponArchivesInstanceBag_Anima[218] = 4200008
	

local tWeaponArchivesInstanceBag_Log = "10000	0527" -- 快捷注灵的emoenylog
local sWeaponArchivesInstanceBag_DelItemLog = "0,0,0,0,12001467,2,%d,1" -- 删除灵珠的log

-- 掩码的长度
local tWeaponArchivesInstanceBag_Length = {}
	tWeaponArchivesInstanceBag_Length[1] = 5
	tWeaponArchivesInstanceBag_Length[2] = 10

local tWeaponArchivesInstanceBag_Effect = {}
	tWeaponArchivesInstanceBag_Effect["SzObj"] = "self"
	tWeaponArchivesInstanceBag_Effect["Effect"] = "accession"

----------------------奖励表
local tWeaponArchivesInstanceBag_Reward = {}
	-- ===3312953,'神兵灵魄原石',随机基础奖励
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210]
	tWeaponArchivesInstanceBag_Reward[3312953] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210]["LogId"] = 12001467
	
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["ItemChance"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Basic"][210][1]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Free"] = {}
	-- ===3312953,'神兵灵魄原石',随机免费注灵奖励
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210]
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 50.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["ItemChance"] = 5000
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 30.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["ItemChance"] = 3000
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 15.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["ItemChance"] = 1500
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RewardItem"][1]["Attr"] = "0 8" -- 神兵灵魄*8
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 5.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["ItemChance"] = 500
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Free"][210][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"] = {}
	-- ===3312953,'神兵灵魄原石',2阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212]
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引 - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RewardItem"][1]["Attr"] = "0 3" -- 神兵灵魄*3
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引 - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引 - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RewardItem"][1]["Attr"] = "0 8" -- 神兵灵魄*8
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引 - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][212][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213] = {}
	-- ===3312953,'神兵灵魄原石',3阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213]
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RewardItem"][1]["Attr"] = "0 5" -- 神兵灵魄*5
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RewardItem"][1]["Attr"] = "0 8" -- 神兵灵魄*8
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RewardItem"][1]["Attr"] = "0 15" -- 神兵灵魄*15
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][213][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214] = {}
	-- ===3312953,'神兵灵魄原石',4阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214]
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RewardItem"][1]["Attr"] = "0 8" -- 神兵灵魄*8
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RewardItem"][1]["Attr"] = "0 15" -- 神兵灵魄*15
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RewardItem"][1]["Attr"] = "0 20" -- 神兵灵魄*20
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][214][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215] = {}
	-- ===3312953,'神兵灵魄原石',5阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215]
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RewardItem"][1]["Attr"] = "0 10" -- 神兵灵魄*10
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RewardItem"][1]["Attr"] = "0 15" -- 神兵灵魄*15
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RewardItem"][1]["Attr"] = "0 20" -- 神兵灵魄*20
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][215][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216] = {}
	-- ===3312953,'神兵灵魄原石',6阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216]
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RewardItem"][1]["Attr"] = "0 20" -- 神兵灵魄*20
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RewardItem"][1]["Attr"] = "0 30" -- 神兵灵魄*30
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RewardItem"][1]["Attr"] = "0 40" -- 神兵灵魄*40
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RewardItem"][1]["Attr"] = "0 60" -- 神兵灵魄*60
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][216][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217] = {}
	-- ===3312953,'神兵灵魄原石',7阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217]
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RewardItem"][1]["Attr"] = "0 40" -- 神兵灵魄*40
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RewardItem"][1]["Attr"] = "0 60" -- 神兵灵魄*60
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RewardItem"][1]["Attr"] = "0 80" -- 神兵灵魄*80
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RewardItem"][1]["Attr"] = "0 120" -- 神兵灵魄*120
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][217][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218] = {}
	-- ===3312953,'神兵灵魄原石',8阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218]
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218]["LogId"] = 12001467
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RewardItem"][1]["Attr"] = "0 80" -- 神兵灵魄*80
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RewardItem"][1]["Attr"] = "0 120" -- 神兵灵魄*120
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RewardItem"][1]["Attr"] = "0 160" -- 神兵灵魄*160
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神兵灵魄 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RewardItem"][1]["Attr"] = "0 240" -- 神兵灵魄*240
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Anima"][218][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"] = {}
	-- ===3312953,'神兵灵魄原石',奖励表
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]
	-- ===删除:3312953,1
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["LogId"] = 12001467
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["DeleteItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["DeleteItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["DeleteItem"][1]["Id"] = 3312953 -- 【库】神兵灵魄原石[属性:9]
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["RewardItem"][1]["Id"] = 3321098 -- 【库】神兵灵魄[属性:9], 【表格】神兵灵魄
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["RewardItem"][1]["Attr"] = "0 %d" -- 神兵灵魄*1
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312953]["Reward"]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954] = {}
	-- ===3312954,'炼魂玉原石',随机基础奖励
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210]
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210]["LogId"] = 12001467
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 95.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["ItemChance"] = 9500
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RewardItem"][1]["Attr"] = "0 1" -- 炼魂石*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 5.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["ItemChance"] = 500
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RewardItem"][1]["Attr"] = "0 1" -- 鸿蒙炼魂玉*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Basic"][210][2]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Free"] = {}
	-- ===3312954,'炼魂玉原石',随机免费注灵奖励
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210]
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210]["LogId"] = 12001467
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 50.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["ItemChance"] = 5000
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RewardItem"][1]["Attr"] = "0 3" -- 炼魂石*3
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 30.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["ItemChance"] = 3000
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RewardItem"][1]["Attr"] = "0 5" -- 炼魂石*5
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 15.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["ItemChance"] = 1500
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RewardItem"][1]["Attr"] = "0 8" -- 炼魂石*8
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 5.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["ItemChance"] = 500
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RewardItem"][1]["Attr"] = "0 1" -- 鸿蒙炼魂玉*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Free"][210][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"] = {}
	-- ===3312954,'炼魂玉原石',2阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212]
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212]["LogId"] = 12001467
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RewardItem"][1]["Attr"] = "0 3" -- 炼魂石*3
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RewardItem"][1]["Attr"] = "0 5" -- 炼魂石*5
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RewardItem"][1]["Attr"] = "0 8" -- 炼魂石*8
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RewardItem"][1]["Attr"] = "0 1" -- 鸿蒙炼魂玉*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][212][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213] = {}
	-- ===3312954,'炼魂玉原石',3阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213]
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213]["LogId"] = 12001467
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RewardItem"][1]["Attr"] = "0 5" -- 炼魂石*5
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RewardItem"][1]["Attr"] = "0 8" -- 炼魂石*8
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RewardItem"][1]["Attr"] = "0 10" -- 炼魂石*10
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RewardItem"][1]["Attr"] = "0 2" -- 鸿蒙炼魂玉*2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][213][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214] = {}
	-- ===3312954,'炼魂玉原石',4阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214]
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214]["LogId"] = 12001467
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RewardItem"][1]["Attr"] = "0 8" -- 炼魂石*8
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RewardItem"][1]["Attr"] = "0 10" -- 炼魂石*10
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RewardItem"][1]["Attr"] = "0 15" -- 炼魂石*15
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RewardItem"][1]["Attr"] = "0 3" -- 鸿蒙炼魂玉*3
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][214][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215] = {}
	-- ===3312954,'炼魂玉原石',5阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215]
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215]["LogId"] = 12001467
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RewardItem"][1]["Attr"] = "0 10" -- 炼魂石*10
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RewardItem"][1]["Attr"] = "0 15" -- 炼魂石*15
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RewardItem"][1]["Attr"] = "0 1" -- 鸿蒙炼魂玉*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RewardItem"][1]["Attr"] = "0 5" -- 鸿蒙炼魂玉*5
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][215][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216] = {}
	-- ===3312954,'炼魂玉原石',6阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216]
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216]["LogId"] = 12001467
	-- 炼魂玉 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RewardItem"][1]["Attr"] = "0 20" -- 炼魂石*20
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["Item_Flag"] = 1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RewardItem"][1]["Attr"] = "0 1" -- 鸿蒙炼魂玉*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RewardItem"][1]["Attr"] = "0 2" -- 鸿蒙炼魂玉*2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RewardItem"][1]["Attr"] = "0 8" -- 鸿蒙炼魂玉*8
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][216][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217] = {}
	-- ===3312954,'炼魂玉原石',7阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217]
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217]["LogId"] = 12001467
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RewardItem"][1]["Attr"] = "0 1" -- 鸿蒙炼魂玉*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RewardItem"][1]["Attr"] = "0 3" -- 鸿蒙炼魂玉*3
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RewardItem"][1]["Attr"] = "0 5" -- 鸿蒙炼魂玉*5
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RewardItem"][1]["Attr"] = "0 8" -- 鸿蒙炼魂玉*8
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][217][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218] = {}
	-- ===3312954,'炼魂玉原石',8阶灵珠注灵
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218]
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218]["ItemChanceSum"] = 10000
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218]["LogId"] = 12001467
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 59.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["ItemChance"] = 5900
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RewardItem"][1]["Attr"] = "0 3" -- 鸿蒙炼魂玉*3
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 27.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["ItemChance"] = 2700
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RewardItem"][1]["Attr"] = "0 5" -- 鸿蒙炼魂玉*5
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 12.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["ItemChance"] = 1200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RewardItem"][1]["Attr"] = "0 8" -- 鸿蒙炼魂玉*8
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 鸿蒙炼魂玉 + 奖励物品ID索引Item_Flag - 2.00%
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RandomItemChanceType"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["ItemChance"] = 200
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RewardItem"][1]["Id"] = 3321108 -- 【库】鸿蒙炼魂玉[属性:9], 【表格】鸿蒙炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RewardItem"][1]["Attr"] = "0 10" -- 鸿蒙炼魂玉*10
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["Item_Flag"] = 2
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Anima"][218][4]["RewardEffect"]["Effect"] = "angelwing"


	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"] = {}
	-- ===3312954,'炼魂玉原石',奖励表
	-- ===索引: tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]
	-- ===删除:3312954,1
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["LogId"] = 12001467
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["DeleteItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["DeleteItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["DeleteItem"][1]["Id"] = 3312954 -- 【库】炼魂玉原石[属性:9]
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["RewardItem"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["RewardItem"][1] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["RewardItem"][1]["Id"] = 3321107 -- 【库】炼魂石[属性:9], 【表格】炼魂玉
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["RewardItem"][1]["Attr"] = "0 %d" -- 炼魂石*1
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["RewardEffect"] = {}
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tWeaponArchivesInstanceBag_Reward[3312954]["Reward"]["RewardEffect"]["Effect"] = "angelwing"

local tWeaponArchivesInstanceBag_RewardItemId = {}
	tWeaponArchivesInstanceBag_RewardItemId[3312953] = {}
	tWeaponArchivesInstanceBag_RewardItemId[3312953][1] = 3321098
	tWeaponArchivesInstanceBag_RewardItemId[3312953][2] = 3321098
	tWeaponArchivesInstanceBag_RewardItemId[3312954] = {}
	tWeaponArchivesInstanceBag_RewardItemId[3312954][1] = 3321107
	tWeaponArchivesInstanceBag_RewardItemId[3312954][2] = 3321108

----------------------------------逻辑部分---------------------------------------------
-- 判断当前是第几阶灵珠注灵 -- 用于选项显示
function WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local nIndex = tWeaponArchivesInstanceBag_Stc[nItemId]["Basic"]
	for i = tWeaponArchivesInstanceBag_Stc[nItemId]["Basic"], tWeaponArchivesInstanceBag_Stc[nItemId]["End"], 2 do
		local nInjectionData = Get_UserStatisticValue(tWeaponArchivesInstanceBag_Stc[nItemId][i]["EventType"], tWeaponArchivesInstanceBag_Stc[nItemId][i]["DataType"], nUserId)
		
		if string.len(nInjectionData) == tWeaponArchivesInstanceBag_Length[1] then
			nIndex = i + 1
		elseif string.len(nInjectionData) == tWeaponArchivesInstanceBag_Length[2] then
			nIndex = i + 2
		end
	end
	
	if nIndex == 211 then
		nIndex = 210
	end
	-- User_TalkChannel2005("nIndexxxxxxxxxxx="..nIndex)
	return nIndex
end

-- 用于对白显示
function WeaponArchivesInstanceBag_WhichAnimaDialog(nIndex, nItemId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local nInjectionData = Get_UserStatisticValue(tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["EventType"], tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["DataType"], nUserId)
	
	local sStrIndex_1 = tWeaponArchivesInstanceBag_Text[nItemId]["Text"..nIndex]
	local sStrIndex_2 = tWeaponArchivesInstanceBag_Text[nItemId]["Text"..nIndex+1]
	
	if nInjectionData == nil or nInjectionData == 0 then
		sStrIndex_1 = ""
		sStrIndex_2 = ""
		tItem[nItemId]["Text"..nIndex] = sStrIndex_1
		tItem[nItemId]["Text"..nIndex+1] = sStrIndex_2
		return
	end
	
	local nItemIdFlag_1, nItemNum_1, nItemIdFlag_2, nItemNum_2 = WeaponArchivesInstanceBag_Flag(nInjectionData, nUserId)
		
	if (nItemIdFlag_2 == nil or nItemIdFlag_2 == 0) and (nItemNum_2 == nil or nItemNum_2 == 0) then
		tItem[nItemId]["Text"..nIndex] = string.format(sStrIndex_1, nItemNum_1,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_1])
		sStrIndex_2 = ""
		tItem[nItemId]["Text"..nIndex+1] = sStrIndex_2
	else
		tItem[nItemId]["Text"..nIndex] = string.format(sStrIndex_1, nItemNum_1,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_1])
		tItem[nItemId]["Text"..nIndex+1] = string.format(sStrIndex_2, nItemNum_2,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_2])
	end
end

function WeaponArchivesInstanceBag_Flag(nInjectionData, nUserId)
	
	if nInjectionData == nil or nInjectionData == 0 then
		return 0,0,0,0
	end
	
	local nItemIdFlag_1 = tonumber(string.sub(nInjectionData, 1, 1)) -- 奖励id的标志位
	local nItemNum_1 = tonumber(string.sub(nInjectionData, 2, 5)) -- 奖励的数量
	
	if string.len(nInjectionData) == tWeaponArchivesInstanceBag_Length[1] then
		return nItemIdFlag_1, nItemNum_1, 0, 0
	end
	
	local nItemIdFlag_2 = tonumber(string.sub(nInjectionData, 6, 6)) -- 奖励id的标志位
	local nItemNum_2 = tonumber(string.sub(nInjectionData, 7, 10)) -- 奖励的数量
	
	if string.len(nInjectionData) == tWeaponArchivesInstanceBag_Length[2] then
		return nItemIdFlag_1, nItemNum_1, nItemIdFlag_2, nItemNum_2
	end
end

-- 返回灵珠名字和价格
function WeaponArchivesInstanceBag_NameAndEMoney(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nDelItemId = tWeaponArchivesInstanceBag_Anima[nIndex] -- 玩家选择消耗的灵珠id
	local sDelItemName = Get_ItemtypeName(nDelItemId) -- 对应的灵珠名称
	local nDelEMoney = Get_ItemtypeEmoneyPrice(nDelItemId) -- 对应的灵珠价格
	
	return nDelItemId, sDelItemName, nDelEMoney
end

-- 判断玩家注灵状况 根据注灵状况出对白【右键点击时触发】
function WeaponArchivesInstanceBag_ChkInjection(nItemId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	
	-- if nIndex%2 ~= 0 then
		-- nIndex = nIndex - 1
	-- end
	-- 免费注灵过显示2-1对白
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["Basic"] then
		LinkItemGossipFunc_New(nItemId, "2-1", nil, nil, nUserId)
		return
	end
	
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][210]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][210]["DataType"]
	
	-- 已经随机过基础奖励
	if Task_ChkStcValue(nInjectionEvent, nInjectionType, "~=", 0, nUserId) then
		local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
		local nLengthData = string.len(nInjectionData)
		if nLengthData == tWeaponArchivesInstanceBag_Length[1] then
			tItem[nItemId]["OptionFunc111"] = "WeaponArchivesInstanceBag_SetExplore</N>"..nItemId.."</N>210</N>0</N>"..nUserId -- 免费注灵
			LinkItemGossipFunc_New(nItemId, "1-1", nil, nil, nUserId)
			return
		end
	end
	
	-- 随机基础奖励
	local tReward = CommonFunc_Copy(tWeaponArchivesInstanceBag_Reward[nItemId])
	local nFlag_Basic, tReward_Basic = Probabil_RandomAward(tReward["Basic"], nIndex)
	local nItemIdFlag_1 = tonumber(tReward_Basic[1]["tAward"][1]["Item_Flag"]) -- 基础奖励id的标志位
	local nItemNum_1 = tonumber(string.sub(tReward_Basic[1]["tAward"][1]["RewardItem"][1]["Attr"], 3, -1)) -- 基础奖励的数量
	
	local nInjectionData = nItemIdFlag_1 * 10000 + nItemNum_1
	local nLengthData = string.len(nInjectionData)
	if not WeaponArchivesInstanceBag_SetStatistic(nItemId, nIndex, nInjectionData, nLengthData, nUserId) then
		return
	end
	
	tItem[nItemId]["OptionFunc111"] = "WeaponArchivesInstanceBag_SetExplore</N>"..nItemId.."</N>210</N>0</N>"..nUserId -- 免费注灵
	LinkItemGossipFunc_New(nItemId, "1-1", nil, nil, nUserId)
	return
end

-- 读条
function WeaponArchivesInstanceBag_SetExplore(nItemId, nIndex, nSort, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	User_SetExplore(1, tWeaponArchivesInstanceBag_Text["Sys"]["SetExplore"], 100, "WeaponArchivesInstanceBag_Success</N>"..nItemId.."</N>"..nIndex.."</N>"..nSort, nil, nUserId)
end

-- 注灵成功
function WeaponArchivesInstanceBag_Success(nItemId, nIndex, nSort, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	-- 基础奖励 + 免费注灵奖励
	if nSort == 0 then
		if not WeaponArchivesInstanceBag_NowReward(nItemId, nIndex, nUserId) then
			return
		end
		-- LinkItemGossipFunc_New(nItemId, "2-1", nil, nil, nUserId)
	-- 灵珠注灵
	elseif nSort == 1 then
		if not WeaponArchivesInstanceBag_InjectionAnima(nItemId, nIndex, nUserId) then
			return
		end
		if not WeaponArchivesInstanceBag_NowReward(nItemId, nIndex, nUserId) then
			return
		end
	else
		if not WeaponArchivesInstanceBag_InjectionEMoney(nItemId, nIndex, nUserId) then
			return
		end
		if not WeaponArchivesInstanceBag_NowReward(nItemId, nIndex, nUserId) then
			return
		end
	end
	User_EffectAdd(tWeaponArchivesInstanceBag_Effect["SzObj"],tWeaponArchivesInstanceBag_Effect["Effect"], nUserId)
	LinkItemGossipFunc_New(nItemId, "2-1", nil, nil, nUserId)
end

-- 随机当前的奖励
function WeaponArchivesInstanceBag_NowReward(nItemId, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return false
	end
	
	-- if nIndex%2 ~= 0 then
		-- nIndex = nIndex - 1
	-- end
	
	local tReward = CommonFunc_Copy(tWeaponArchivesInstanceBag_Reward[nItemId])
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["DataType"]
	local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
	local nLengthData = string.len(nInjectionData)
	
	-- 免费注灵奖励
	if nIndex == tWeaponArchivesInstanceBag_Stc[nItemId]["Basic"] then
		local nFlag_Free, tReward_Free = Probabil_RandomAward(tReward["Free"], nIndex)
		
		local nItemIdFlag_2 = tonumber(tReward_Free[1]["tAward"][1]["Item_Flag"]) -- 免费奖励id的标志位
		local nItemNum_2 = tonumber(string.sub(tReward_Free[1]["tAward"][1]["RewardItem"][1]["Attr"], 3, -1)) -- 免费奖励的数量
		
		nInjectionData = nInjectionData * 100000 +(nItemIdFlag_2 * 10000 + nItemNum_2)
		if not WeaponArchivesInstanceBag_SetStatistic(nItemId, nIndex, nInjectionData, nLengthData, nUserId) then
			return false
		end
	else
		local nFlag_Anima, tReward_Anima = Probabil_RandomAward(tReward["Anima"], nIndex)
		
		local nItemIdFlag_1 = tonumber(tReward_Anima[1]["tAward"][1]["Item_Flag"])
		local nItemNum_1 = tonumber(string.sub(tReward_Anima[1]["tAward"][1]["RewardItem"][1]["Attr"], 3, -1))
		
		if nInjectionData == nil or nInjectionData == 0 then
			nInjectionData = nItemIdFlag_1 * 10000 + nItemNum_1
		elseif string.len(nInjectionData) == tWeaponArchivesInstanceBag_Length[1] then
			nInjectionData = nInjectionData * 100000 +(nItemIdFlag_1 * 10000 + nItemNum_1)
		end
		
		if not WeaponArchivesInstanceBag_SetStatistic(nItemId, nIndex, nInjectionData, nLengthData, nUserId) then
			return false
		end
	end
	
	return true
end

-- 存入掩码
function WeaponArchivesInstanceBag_SetStatistic(nItemId, nIndex, nInjectionData, nLengthData, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["DataType"]
	local nLength = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["Length"]
	
	if nLengthData == nLength then
		return
	end
	if Task_SetStatistic(nInjectionEvent, nInjectionType, nInjectionData, 1, nUserId) then
		Task_SetStcTimestamp(nInjectionEvent, nInjectionType, 0, nUserId)
		return true -- 存掩码成功
	else
		return false -- 存掩码失败
	end
end

-- 清空掩码
function WeaponArchivesInstanceBag_ClearStatistic(nItemId, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if Task_SetStatistic(tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["EventType"], tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["DataType"], 0, 1, nUserId) then
		Task_SetStcTimestamp(tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["EventType"], tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["DataType"], 0, nUserId)
		return true -- 存掩码成功
	else
		return false -- 存掩码失败
	end
end

function WeaponArchivesInstanceBag_StcReward(nItemId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nRewardItemId_1 = 0
	local nRewardItemId_2 = 0
	local nRewardNum_1 = 0
	local nRewardNum_2 = 0
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	for i = tWeaponArchivesInstanceBag_Stc[nItemId]["Basic"], tWeaponArchivesInstanceBag_Stc[nItemId]["End"], 2 do
		local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][i]["EventType"]
		local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][i]["DataType"]
		local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
		local nItemIdFlag_1, nItemNum_1, nItemIdFlag_2, nItemNum_2 = WeaponArchivesInstanceBag_Flag(nInjectionData, nUserId)
		
		if nItemIdFlag_1 == 1  then
			nRewardItemId_1 = tWeaponArchivesInstanceBag_RewardItemId[nItemId][1]
			nRewardNum_1 = nRewardNum_1 + nItemNum_1
		end
		if nItemIdFlag_2 == 1 then
			nRewardItemId_1 = tWeaponArchivesInstanceBag_RewardItemId[nItemId][1]
			nRewardNum_1 = nRewardNum_1 + nItemNum_2
		end
		if nItemIdFlag_1 == 2 then
			nRewardItemId_2 = tWeaponArchivesInstanceBag_RewardItemId[nItemId][2]
			nRewardNum_2 = nRewardNum_2 + nItemNum_1
		end
		if nItemIdFlag_2 == 2 then
			nRewardItemId_2 = tWeaponArchivesInstanceBag_RewardItemId[nItemId][2]
			nRewardNum_2 = nRewardNum_2 + nItemNum_2
		end
	end
	
	return nRewardItemId_1, nRewardNum_1, nRewardItemId_2, nRewardNum_2
end

-- 领奖
function WeaponArchivesInstanceBag_GetReward(nItemId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local tReward = CommonFunc_Copy(tWeaponArchivesInstanceBag_Reward[nItemId]["Reward"])
	
	local nRewardItemId_1, nRewardNum_1, nRewardItemId_2, nRewardNum_2 = WeaponArchivesInstanceBag_StcReward(nItemId, nUserId)
	
	-- if nRewardItemId_1 == nil or nRewardItemId_1 == 0 then
		-- return
	-- end
	
	if nRewardItemId_2 == nil or nRewardItemId_2 == 0 then
		tReward["RewardItem"][1]["Id"] = nRewardItemId_1
		tReward["RewardItem"][1]["Attr"] = string.format(tWeaponArchivesInstanceBag_Reward[nItemId]["Reward"]["RewardItem"][1]["Attr"],nRewardNum_1)
	else
		if nRewardItemId_1 == nil or nRewardItemId_1 == 0 then
			tReward["RewardItem"][1]["Id"] = nRewardItemId_2
			tReward["RewardItem"][1]["Attr"] = string.format(tWeaponArchivesInstanceBag_Reward[nItemId]["Reward"]["RewardItem"][1]["Attr"],nRewardNum_2)
		else
			tReward["RewardItem"][1]["Id"] = nRewardItemId_1
			tReward["RewardItem"][1]["Attr"] = string.format(tWeaponArchivesInstanceBag_Reward[nItemId]["Reward"]["RewardItem"][1]["Attr"],nRewardNum_1)
			tReward["RewardItem"][2] = {}
			tReward["RewardItem"][2]["Id"] = nRewardItemId_2
			tReward["RewardItem"][2]["Attr"] = "0 "..nRewardNum_2
		end
	end
	
	
	if not RewardTemplate_CheckSpace(tReward,nUserId) then
		Sys_MsgBox(tWeaponArchivesInstanceBag_Text["Sys"]["NoSpace"],nil,nil,nUserId)
		return
	end
	
	for i = tWeaponArchivesInstanceBag_Stc[nItemId]["Basic"], tWeaponArchivesInstanceBag_Stc[nItemId]["End"], 2 do
		if not WeaponArchivesInstanceBag_ClearStatistic(nItemId, i, nUserId) then
			return 
		end
	end
	
	 -- 领奖成功 清空掩码
	RewardTemplate_UseItemAndMsg(tReward,nUserId)
end

-- 选择注灵方式
function WeaponArchivesInstanceBag_ChooseInjection(nItemId, nIndex, sOption, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	if nIndex >= 218 then
		nIndex = 218
	end
	
	if sOption == nil or sOption == "" then
		sOption = WeaponArchivesInstanceBag_Option(nItemId, nUserId)
	end
	local nDelItemId, sDelItemName, nDelEMoney = WeaponArchivesInstanceBag_NameAndEMoney(nIndex, nUserId)
	local nTextFlag = 5131
	-- User_TalkChannel2005("nIndex="..nIndex)
	
	if nItemId == 3312954 then
		if (nIndex >= 212 and nIndex <= 214) or nIndex == 216 then
			nTextFlag = 5132
		elseif nIndex == 215 then
			nTextFlag = 5133
		else
			nTextFlag = 5131
		end
	end
	local sStr13 = tWeaponArchivesInstanceBag_Text[nItemId]["Text"..nTextFlag]
	local sStr15 = tWeaponArchivesInstanceBag_Text[nItemId]["Text515"]
	local sOption11 = tWeaponArchivesInstanceBag_Text[nItemId]["Option511"]
	local sText = ""
	local sSpace = ""
	-- 灵珠不存在 使用天石
	if not Item_ChkMulItem(nDelItemId, nDelItemId, 1, 0, 0, nUserId) then
		nTextFlag = nTextFlag - 1000
		sStr13 = tWeaponArchivesInstanceBag_Text[nItemId]["Text"..nTextFlag]
		sStr15 = tWeaponArchivesInstanceBag_Text[nItemId]["Text415"]
		sOption11 = tWeaponArchivesInstanceBag_Text[nItemId]["Option411"]
		if nTextFlag == 4131 then
			sText = string.format(sStr13, sOption, tWeaponArchivesInstanceBag_Text[nItemId][nIndex][1],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][2],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][3])
			sSpace = tWeaponArchivesInstanceBag_Text["Sys"]["Space1"]
		elseif nTextFlag == 4132 then
			sText = string.format(sStr13, sOption, tWeaponArchivesInstanceBag_Text[nItemId][nIndex][1],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][2], tWeaponArchivesInstanceBag_Text[nItemId][nIndex][3],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][4],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][5])
			sSpace = tWeaponArchivesInstanceBag_Text["Sys"]["Space2"]
		else
			sText = string.format(sStr13, sOption, tWeaponArchivesInstanceBag_Text[nItemId][nIndex][1],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][2], tWeaponArchivesInstanceBag_Text[nItemId][nIndex][3],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][4],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][5],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][6])
			sSpace = tWeaponArchivesInstanceBag_Text["Sys"]["Space3"]
		end
		
		return sText, sStr15, sOption11, sSpace
	end
	
	if nTextFlag == 5131 then
		sText = string.format(sStr13, sOption, tWeaponArchivesInstanceBag_Text[nItemId][nIndex][1],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][2],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][3])
		sSpace = tWeaponArchivesInstanceBag_Text["Sys"]["Space1"]
	elseif nTextFlag == 5132 then
		sText = string.format(sStr13, sOption, tWeaponArchivesInstanceBag_Text[nItemId][nIndex][1],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][2], tWeaponArchivesInstanceBag_Text[nItemId][nIndex][3],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][4],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][5])
		sSpace = tWeaponArchivesInstanceBag_Text["Sys"]["Space2"]
	else
		sText = string.format(sStr13, sOption, tWeaponArchivesInstanceBag_Text[nItemId][nIndex][1],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][2], tWeaponArchivesInstanceBag_Text[nItemId][nIndex][3],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][4],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][5],tWeaponArchivesInstanceBag_Text[nItemId][nIndex][6])
		sSpace = tWeaponArchivesInstanceBag_Text["Sys"]["Space3"]
	end
	
	return sText, sStr15, sOption11, sSpace
end

function WeaponArchivesInstanceBag_Dialog(nItemId, nIndex, sOption, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	if sOption == nil or sOption == "" then
		sOption = WeaponArchivesInstanceBag_Option(nItemId, nUserId)
	end
	
	local sText, sStr15, sOption11, sSpace = WeaponArchivesInstanceBag_ChooseInjection(nItemId, nIndex, sOption, nUserId)
	local nDelItemId, sDelItemName, nDelEMoney = WeaponArchivesInstanceBag_NameAndEMoney(nIndex, nUserId)
	
	if not Item_ChkMulItem(nDelItemId, nDelItemId, 1, 0, 0, nUserId) then
		tItem[nItemId]["Text4131"] = sText
		tItem[nItemId]["Text415"] = string.format(sStr15, sDelItemName, nDelEMoney)
		tItem[nItemId]["Option411"] = string.format(sOption11, nDelEMoney)
		tItem[nItemId]["OptionFunc411"] = "WeaponArchivesInstanceBag_ConfirmAgain</N>"..nItemId.."</N>"..nDelEMoney.."</S>"..sDelItemName.."</N>"..nIndex.."</N>"..nUserId -- 跳转2次确认
		LinkItemGossipFunc_New(nItemId, "4-1", nil, nil, nUserId)
	else
		tItem[nItemId]["Text5131"] = sText
		tItem[nItemId]["Text515"] = string.format(sStr15, sDelItemName)
		tItem[nItemId]["Option511"] = string.format(sOption11, sDelItemName)
		tItem[nItemId]["OptionFunc511"] = "WeaponArchivesInstanceBag_NoAnimaAndEMoney</N>"..nItemId.."</N>1</N>"..nIndex.."</N>"..nUserId -- 检测灵珠是否存在
		LinkItemGossipFunc_New(nItemId, "5-1", nil, nil, nUserId)
	end
end

-- 二次确认对白
function WeaponArchivesInstanceBag_ConfirmAgain(nItemId, nDelEMoney, sDelItemName, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local sStr = tWeaponArchivesInstanceBag_Text[nItemId]["Text611"]
	local sOption = tWeaponArchivesInstanceBag_Text[nItemId]["Option611"]
	
	tItem[nItemId]["Text611"] = string.format(sStr, nDelEMoney, sDelItemName)
	tItem[nItemId]["Option611"] = string.format(sOption, nDelEMoney)
	tItem[nItemId]["OptionFunc611"] = "WeaponArchivesInstanceBag_NoAnimaAndEMoney</N>"..nItemId.."</N>2</N>"..nIndex.."</N>"..nUserId -- 检测天石数量
	LinkItemGossipFunc_New(nItemId, "6-1", nil, nil, nUserId)
end

-- 检测玩家灵珠和天石数量
function WeaponArchivesInstanceBag_NoAnimaAndEMoney(nItemId, nSort, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["DataType"]
	local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
	local nLength = tWeaponArchivesInstanceBag_Stc[nItemId][nIndex]["Length"] 

	if string.len(nInjectionData) == nLength then
		return
	end
	
	local nDelItemId, sDelItemName, nDelEMoney = WeaponArchivesInstanceBag_NameAndEMoney(nIndex, nUserId)
	
	if nSort == 1 then
		-- 检测是否有灵珠
		if Item_ChkMulItem(nDelItemId, nDelItemId, 1, 0, 0, nUserId) then
			WeaponArchivesInstanceBag_SetExplore(nItemId, nIndex, nSort, nUserId) -- 灵珠
			return
		else
			WeaponArchivesInstanceBag_Dialog(nItemId, nIndex, sOption, nUserId)
			return
		end
	end
	
	if nSort == 2 then
		-- 检测是否有足够天石
		if Get_UserEMoney(nUserId) < nDelEMoney then
			Sys_MsgBox(tWeaponArchivesInstanceBag_Text["Sys"]["NoEMoney"], nil, nil, nUserId)
			return
		else
			WeaponArchivesInstanceBag_SetExplore(nItemId, nIndex, nSort, nUserId) -- 天石
			return
		end
	end
	
	return
end

-- 使用天石注灵
function WeaponArchivesInstanceBag_InjectionEMoney(nItemId, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return false
	end
	
	local sEMoneyLog = tWeaponArchivesInstanceBag_Log
	local nDelItemId, sDelItemName, nDelEMoney = WeaponArchivesInstanceBag_NameAndEMoney(nIndex, nUserId)
	
	-- 检测是否有足够天石
	if Get_UserEMoney(nUserId) < nDelEMoney then
		Sys_MsgBox(tWeaponArchivesInstanceBag_Text["Sys"]["NoEMoney"], nil, nil, nUserId)
		return false
	end
	
	-- 扣除玩家天石
	if not User_AddEMoneyAndLog(-nDelEMoney, sEMoneyLog, nUserId) then
		return false
	end
	
	return true
end

-- 使用灵珠注灵
function WeaponArchivesInstanceBag_InjectionAnima(nItemId, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return false
	end
	local nDelItemId, sDelItemName, nDelEMoney = WeaponArchivesInstanceBag_NameAndEMoney(nIndex, nUserId)
	local sDelItemLog = sWeaponArchivesInstanceBag_DelItemLog
	
	-- 检测是否有灵珠
	if not Item_ChkMulItem(nDelItemId, nDelItemId, 1, 0, 0, nUserId) then
		WeaponArchivesInstanceBag_Dialog(nItemId, nIndex, sOption, nUserId)
		return false
	end
	
	-- 扣除灵珠
	if not Item_DelMulItem(nDelItemId, nDelItemId, 1, 0, 0, nUserId) then
		return false
	end
	
	-- 贵重物品统计
	Sys_DecNosuchStatisticCount(364, nDelItemId, 1)
	Sys_SaveActionFestivalLog(string.format(sDelItemLog, nDelItemId), nUserId)
	
	return true
end

function WeaponArchivesInstanceBag_Option(nItemId, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	if not Item_ChkMulItem(nItemId, nItemId, 1, 0, 0, nUserId) then
		return
	end
	
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["End"] then
		return false
	end
	local sOption = tWeaponArchivesInstanceBag_Text[nItemId]["Option"..nIndex]
	return sOption
end
---------------------------------物品部分---------------------------------------------

--------物品有对白模板
-- 3312953,'上古神兵残魂'
tItemFace[3312953] = 2350
tItem[3312953] = tItem[3312953] or {}
tItem[3312953]["DialogueText"] = tWeaponArchivesInstanceBag_Text[3312953]
tItem[3312953]["Function"] = function (nItemId,sItemName)
	local nUserId = Get_UserId()
	local nItemId = 3312953
	WeaponArchivesInstanceBag_ChkInjection(nItemId, nUserId)
end

tItem[3312953]["Text1-1"] = {111, 112, 113, 114, 115}
tItem[3312953]["tOption1-1"] = {111, 112}
tItem[3312953]["ChkFunc1-1"] = function(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312953
	
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][210]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][210]["DataType"]
	local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
	
	local nItemIdFlag_1, nItemNum_1, nItemIdFlag_2, nItemNum_2 = WeaponArchivesInstanceBag_Flag(nInjectionData, nUserId)
	tItem[nItemId]["Text113"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text113"], nItemNum_1,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_1])
	return true
end

-- 接1、立即注灵
tItem[3312953]["Text2-1"] = {2113, 2114, 2115, 210, 212, 213, 214, 215, 216, 217, 218, 2116, 2117}
tItem[3312953]["tOption2-1"] = {212, 210}
tItem[3312953]["ChkFunc2-1"] =  function(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312953
	
	tItem[nItemId]["Text2117"] = tWeaponArchivesInstanceBag_Text[nItemId]["Text2117"]
	
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][210]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][210]["DataType"]
	local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
	
	local nItemIdFlag_1, nItemNum_1, nItemIdFlag_2, nItemNum_2 = WeaponArchivesInstanceBag_Flag(nInjectionData, nUserId)
	
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	
	local sText, sStr15, sOption11, sSpace = WeaponArchivesInstanceBag_ChooseInjection(nItemId, nIndex, sOption, nUserId)
	tItem[nItemId]["Text2115"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text2115"], nItemNum_1,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_1])
	tItem[nItemId]["Text210"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text210"], nItemNum_2,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_2])
	
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["End"] then
		tItem[nItemId]["Text2117"] = ""
		nIndex = tWeaponArchivesInstanceBag_Stc[nItemId]["End"]
	else
		tItem[nItemId]["Text2117"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text2117"], sText)
	end
	
	for i = tWeaponArchivesInstanceBag_Stc[nItemId]["Begin"], tWeaponArchivesInstanceBag_Stc[nItemId]["End"], 2 do
		WeaponArchivesInstanceBag_WhichAnimaDialog(i, nItemId, nUserId)
	end
	
	return true
end
tItem[3312953]["OptionChkFunc210"] = function (nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312953
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	tItem[nItemId]["OptionFunc210"] = ""
	tItem[nItemId]["OptionPoint210"] = ""
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["End"] then
		tItem[nItemId]["OptionFunc210"] = "WeaponArchivesInstanceBag_GetReward</N>3312953"
	else
		tItem[nItemId]["OptionPoint210"] = "3-1"
	end
	return true
end
tItem[3312953]["OptionChkFunc212"] =  function(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312953
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	local sOption = WeaponArchivesInstanceBag_Option(nItemId, nUserId)
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["End"] then
		return false
	end
	tItem[nItemId]["Option212"] = sOption
	tItem[nItemId]["OptionFunc212"] = "WeaponArchivesInstanceBag_Dialog</N>"..nItemId.."</N>"..nIndex.."</S>"..sOption.."</N>"..nUserId
	return true
end

tItem[3312953]["Text3-1"] = {311}
tItem[3312953]["tOption3-1"] = {311, 312}
tItem[3312953]["OptionFunc311"] = "WeaponArchivesInstanceBag_GetReward</N>3312953"

tItem[3312953]["Text4-1"] = {411, 412, 4131, 414, 415, 416, 417}
tItem[3312953]["tOption4-1"] = {411, 412}
tItem[3312953]["OptionPoint412"] = "2-1"

tItem[3312953]["Text5-1"] = {511, 512, 5131, 514, 515, 516, 517}
tItem[3312953]["tOption5-1"] = {511, 512}
tItem[3312953]["OptionPoint512"] = "2-1"

tItem[3312953]["Text6-1"] = {611}
tItem[3312953]["tOption6-1"] = {611, 612}


-- -- 3312954,'炼魂玉原石'
tItemFace[3312954] = 2351
tItem[3312954] = tItem[3312954] or {}
tItem[3312954]["DialogueText"] = tWeaponArchivesInstanceBag_Text[3312954]
tItem[3312954]["Function"] = function (nItemId,sItemName)
	local nUserId = Get_UserId()
	local nItemId = 3312954
	WeaponArchivesInstanceBag_ChkInjection(nItemId, nUserId)
end

tItem[3312954]["Text1-1"] = {111, 112, 113, 114, 115}
tItem[3312954]["tOption1-1"] = {111, 112}
tItem[3312954]["ChkFunc1-1"] = function(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312954
	tItem[nItemId]["Text113"] = tWeaponArchivesInstanceBag_Text[nItemId]["Text113"]
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][210]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][210]["DataType"]
	local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
	local nItemIdFlag_1, nItemNum_1, nItemIdFlag_2, nItemNum_2 = WeaponArchivesInstanceBag_Flag(nInjectionData, nUserId)
	tItem[nItemId]["Text113"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text113"], nItemNum_1,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_1])
	return true
end

-- 接1、立即注灵
tItem[3312954]["Text2-1"] = {2113, 2114, 2115, 210, 212, 213, 214, 215, 216, 217, 218, 2116, 2117}
tItem[3312954]["tOption2-1"] = {212, 210}
tItem[3312954]["ChkFunc2-1"] =  function(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312954
	
	tItem[nItemId]["Text2117"] = tWeaponArchivesInstanceBag_Text[nItemId]["Text2117"]
	
	local nInjectionEvent = tWeaponArchivesInstanceBag_Stc[nItemId][210]["EventType"]
	local nInjectionType = tWeaponArchivesInstanceBag_Stc[nItemId][210]["DataType"]
	local nInjectionData = Get_UserStatisticValue(nInjectionEvent, nInjectionType, nUserId)
	
	local nItemIdFlag_1, nItemNum_1, nItemIdFlag_2, nItemNum_2 = WeaponArchivesInstanceBag_Flag(nInjectionData, nUserId)
	
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	
	local sText, sStr15, sOption11, sSpace = WeaponArchivesInstanceBag_ChooseInjection(nItemId, nIndex, sOption, nUserId)
	tItem[nItemId]["Text2115"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text2115"], nItemNum_1,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_1])
	tItem[nItemId]["Text210"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text210"], nItemNum_2,tWeaponArchivesInstanceBag_Text[nItemId]["RewardName"][nItemIdFlag_2])
	
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["End"] then
		tItem[nItemId]["Text2117"] = ""
		nIndex = tWeaponArchivesInstanceBag_Stc[nItemId]["End"]
	else
		tItem[nItemId]["Text2117"] = string.format(tWeaponArchivesInstanceBag_Text[nItemId]["Text2117"], sText)
	end
	
	for i = tWeaponArchivesInstanceBag_Stc[nItemId]["Begin"], tWeaponArchivesInstanceBag_Stc[nItemId]["End"], 2 do
		WeaponArchivesInstanceBag_WhichAnimaDialog(i, nItemId, nUserId)
	end
	
	return true
end
tItem[3312954]["OptionChkFunc210"] = function (nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312954
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	tItem[nItemId]["OptionFunc210"] = ""
	tItem[nItemId]["OptionPoint210"] = ""
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["End"] then
		tItem[nItemId]["OptionFunc210"] = "WeaponArchivesInstanceBag_GetReward</N>3312954"
	else
		tItem[nItemId]["OptionPoint210"] = "3-1"
	end
	return true
end
tItem[3312954]["OptionChkFunc212"] =  function(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nItemId = 3312954
	local nIndex = WeaponArchivesInstanceBag_WhichAnimaOption(nItemId, nUserId)
	local sOption = WeaponArchivesInstanceBag_Option(nItemId, nUserId)
	if nIndex > tWeaponArchivesInstanceBag_Stc[nItemId]["End"] then
		return false
	end
	tItem[nItemId]["Option212"] = sOption
	tItem[nItemId]["OptionFunc212"] = "WeaponArchivesInstanceBag_Dialog</N>"..nItemId.."</N>"..nIndex.."</S>"..sOption.."</N>"..nUserId
	return true
end

tItem[3312954]["Text3-1"] = {311}
tItem[3312954]["tOption3-1"] = {311, 312}
tItem[3312954]["OptionFunc311"] = "WeaponArchivesInstanceBag_GetReward</N>3312954"

tItem[3312954]["Text4-1"] = {411, 412, 4131, 414, 415, 416, 417}
tItem[3312954]["tOption4-1"] = {411, 412}
tItem[3312954]["OptionPoint412"] = "2-1"

tItem[3312954]["Text5-1"] = {511, 512, 5131, 514, 515, 516, 517}
tItem[3312954]["tOption5-1"] = {511, 512}
tItem[3312954]["OptionPoint512"] = "2-1"

tItem[3312954]["Text6-1"] = {611}
tItem[3312954]["tOption6-1"] = {611, 612}