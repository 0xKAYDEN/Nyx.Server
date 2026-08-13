------------------------------------------------------------------------------------
--Name：        191101[英文征服][活动脚本]12月首充（12.3-12.31）
--Creator:      茅志伟
--Created:      2019/11/01
------------------------------------------------------------------------------------
-- 命名前缀 ：tDecemberFirstCharger_

-- Lua.ini = 41603
-- 41603 = V100\ActiveScript\[Conquer][ActiveScript]DecemberFirstCharger.lua
-- 41603 = V100\活动脚本\[征服][活动脚本]12月首充（12.3-12.31）.lua

-- LogId = 12001717

local tDecemberFirstCharger_Pack = {}
	-- ===30天时效ChristmasHarmony礼包
	-- ===索引: tDecemberFirstCharger_Pack[3326793]
	-- ===删除:3326793,1
	-- ===EMoneyLog: 350,22945
	-- ===
	tDecemberFirstCharger_Pack[3326793] = {}
	tDecemberFirstCharger_Pack[3326793]["LogId"] = 12001717
	tDecemberFirstCharger_Pack[3326793]["EmoneyLog"] = "350	22945	0	0	1	"
	tDecemberFirstCharger_Pack[3326793]["DeleteItem"] = {}
	tDecemberFirstCharger_Pack[3326793]["DeleteItem"][1] = {}
	tDecemberFirstCharger_Pack[3326793]["DeleteItem"][1]["Id"] = 3326793 -- 【库】30-dayChristmasHarmonyPack[属性:9]
	tDecemberFirstCharger_Pack[3326793]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326793]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326793]["RewardItem"][1]["Id"] = 195015 -- ChristmasHarmony[195015][属性:8][叠加:0][金币:0], 【表格】30天时效赠品ChristmasHarmony*1（赠）
	tDecemberFirstCharger_Pack[3326793]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ChristmasHarmony（赠）*1
	tDecemberFirstCharger_Pack[3326793]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326793]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326793]["RewardEffect"]["Effect"] = "angelwing"


	tDecemberFirstCharger_Pack[3326794] = {}
	-- ===特惠+3赤炼石礼包
	-- ===索引: tDecemberFirstCharger_Pack[3326794]
	-- ===删除:3326794,1
	-- ===EMoneyLog: 350,22946
	-- ===
	tDecemberFirstCharger_Pack[3326794]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecemberFirstCharger_Pack[3326794]["DeleteItem"] = {}
	tDecemberFirstCharger_Pack[3326794]["DeleteItem"][1] = {}
	tDecemberFirstCharger_Pack[3326794]["DeleteItem"][1]["Id"] = 3326794 -- 【库】+3StoneLuckyPack[属性:9]
	tDecemberFirstCharger_Pack[3326794]["LogId"] = 12001717
	tDecemberFirstCharger_Pack[3326794]["EmoneyLog"] = "350	22946	0	0	1	"
	-- ‘+3赤炼石*2（赠） - 65%
	tDecemberFirstCharger_Pack[3326794][1] = {}
	tDecemberFirstCharger_Pack[3326794][1]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326794][1]["ItemChance"] = 6500
	tDecemberFirstCharger_Pack[3326794][1]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326794][1]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326794][1]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*2（赠）
	tDecemberFirstCharger_Pack[3326794][1]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tDecemberFirstCharger_Pack[3326794][1]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326794][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326794][1]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+3赤炼石*3（赠） - 35%
	tDecemberFirstCharger_Pack[3326794][2] = {}
	tDecemberFirstCharger_Pack[3326794][2]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326794][2]["ItemChance"] = 3500
	tDecemberFirstCharger_Pack[3326794][2]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326794][2]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326794][2]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*3（赠）
	tDecemberFirstCharger_Pack[3326794][2]["RewardItem"][1]["Attr"] = "0 3 3" -- +3Stone（赠）*3
	tDecemberFirstCharger_Pack[3326794][2]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326794][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326794][2]["RewardEffect"]["Effect"] = "angelwing"


	tDecemberFirstCharger_Pack[3326795] = {}
	-- ===黄色神纹碎片礼包
	-- ===索引: tDecemberFirstCharger_Pack[3326795]
	-- ===删除:3326795,1
	-- ===EMoneyLog: 350,22947
	-- ===
	tDecemberFirstCharger_Pack[3326795]["LogId"] = 12001717
	tDecemberFirstCharger_Pack[3326795]["EmoneyLog"] = "350	22947	0	0	1	"
	tDecemberFirstCharger_Pack[3326795]["DeleteItem"] = {}
	tDecemberFirstCharger_Pack[3326795]["DeleteItem"][1] = {}
	tDecemberFirstCharger_Pack[3326795]["DeleteItem"][1]["Id"] = 3326795 -- 【库】YellowRuneFragmentPack[属性:9]
	tDecemberFirstCharger_Pack[3326795]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326795]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326795]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片*20（赠）
	tDecemberFirstCharger_Pack[3326795]["RewardItem"][1]["Attr"] = "0 20" -- YellowRuneFragment*20（[错误]物品数量超10个）
	tDecemberFirstCharger_Pack[3326795]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326795]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326795]["RewardEffect"]["Effect"] = "angelwing"


	tDecemberFirstCharger_Pack[3326796] = {}
	-- ===龙鳞果礼包
	-- ===索引: tDecemberFirstCharger_Pack[3326796]
	-- ===删除:3326796,1 
	-- ===EMoneyLog: 350,22948
	-- ===
	tDecemberFirstCharger_Pack[3326796]["LogId"] = 12001717
	tDecemberFirstCharger_Pack[3326796]["EmoneyLog"] = "350	22948	0	0	1	"
	tDecemberFirstCharger_Pack[3326796]["DeleteItem"] = {}
	tDecemberFirstCharger_Pack[3326796]["DeleteItem"][1] = {}
	tDecemberFirstCharger_Pack[3326796]["DeleteItem"][1]["Id"] = 3326796 -- 【库】DragonFruitPack[属性:9]
	tDecemberFirstCharger_Pack[3326796]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326796]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326796]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*3（赠）
	tDecemberFirstCharger_Pack[3326796]["RewardItem"][1]["Attr"] = "0 3" -- DragonFruit*3
	tDecemberFirstCharger_Pack[3326796]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326796]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326796]["RewardEffect"]["Effect"] = "angelwing"


	tDecemberFirstCharger_Pack[3326797] = {}
	-- ===1级赠点聚宝盆礼包
	-- ===索引: tDecemberFirstCharger_Pack[3326797]
	-- ===删除:3326797,1
	-- ===EMoneyLog: 350,22949
	-- ===
	tDecemberFirstCharger_Pack[3326797]["LogId"] = 12001717
	tDecemberFirstCharger_Pack[3326797]["EmoneyLog"] = "350	22949	0	0	1	"
	tDecemberFirstCharger_Pack[3326797]["DeleteItem"] = {}
	tDecemberFirstCharger_Pack[3326797]["DeleteItem"][1] = {}
	tDecemberFirstCharger_Pack[3326797]["DeleteItem"][1]["Id"] = 3326797 -- 【库】 3326797 【库里没有该物品】[属性:]
	tDecemberFirstCharger_Pack[3326797]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326797]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326797]["RewardItem"][1]["Id"] = 3326948 -- Level1CPTreasureBowl[3326948][属性:9][叠加:10000][金币:0], 【表格】1级赠点聚宝盆*5（赠）
	tDecemberFirstCharger_Pack[3326797]["RewardItem"][1]["Attr"] = "0 5" -- Level1CPTreasureBowl*5
	tDecemberFirstCharger_Pack[3326797]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326797]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326797]["RewardEffect"]["Effect"] = "angelwing"


	tDecemberFirstCharger_Pack[3326798] = {}
	-- ===惊喜灵珠大礼包
	-- ===索引: tDecemberFirstCharger_Pack[3326798][1]
	-- ===删除:3326798,1
	-- ===EMoneyLog: 350,22950
	-- ===
	tDecemberFirstCharger_Pack[3326798][1] = {}
	tDecemberFirstCharger_Pack[3326798][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecemberFirstCharger_Pack[3326798][1]["DeleteItem"] = {}
	tDecemberFirstCharger_Pack[3326798][1]["DeleteItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][1]["DeleteItem"][1]["Id"] = 3326798 -- 【库】AnimaSurprisePack[属性:9]
	tDecemberFirstCharger_Pack[3326798][1]["LogId"] = 12001717
	tDecemberFirstCharger_Pack[3326798][1]["EmoneyLog"] = "350	22950	0	0	1	"
	-- 鸿蒙炼魂玉（赠） - 15%
	tDecemberFirstCharger_Pack[3326798][1][1] = {}
	tDecemberFirstCharger_Pack[3326798][1][1]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326798][1][1]["ItemChance"] = 1500
	tDecemberFirstCharger_Pack[3326798][1][1]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326798][1][1]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][1][1]["RewardItem"][1]["Id"] = 3321108 -- ChaosJade[3321108][属性:9][叠加:10000][金币:0], 【表格】鸿蒙炼魂玉（赠）
	tDecemberFirstCharger_Pack[3326798][1][1]["RewardItem"][1]["Attr"] = "0 1" -- ChaosJade*1
	tDecemberFirstCharger_Pack[3326798][1][1]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326798][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326798][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠（赠） - 35%
	tDecemberFirstCharger_Pack[3326798][1][2] = {}
	tDecemberFirstCharger_Pack[3326798][1][2]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326798][1][2]["ItemChance"] = 3500
	tDecemberFirstCharger_Pack[3326798][1][2]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326798][1][2]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][1][2]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠（赠）
	tDecemberFirstCharger_Pack[3326798][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tDecemberFirstCharger_Pack[3326798][1][2]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326798][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326798][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*2 - 50%
	tDecemberFirstCharger_Pack[3326798][1][3] = {}
	tDecemberFirstCharger_Pack[3326798][1][3]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326798][1][3]["ItemChance"] = 5000
	tDecemberFirstCharger_Pack[3326798][1][3]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326798][1][3]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][1][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tDecemberFirstCharger_Pack[3326798][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tDecemberFirstCharger_Pack[3326798][1][3]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326798][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326798][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tDecemberFirstCharger_Pack[3326798][2] = {}
	-- ===惊喜灵珠大礼包
	-- ===索引: tDecemberFirstCharger_Pack[3326798][2]
	-- ===删除:3326798,1
	-- ===EMoneyLog: 350,22950
	-- ===
	tDecemberFirstCharger_Pack[3326798][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tDecemberFirstCharger_Pack[3326798][2]["DeleteItem"] = {}
	tDecemberFirstCharger_Pack[3326798][2]["DeleteItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][2]["DeleteItem"][1]["Id"] = 3326798 -- 【库】AnimaSurprisePack[属性:9]
	tDecemberFirstCharger_Pack[3326798][2]["LogId"] = 12001717
	tDecemberFirstCharger_Pack[3326798][2]["EmoneyLog"] = "350	22950	0	0	1	"
	-- 鸿蒙炼魂玉（赠） - 15%
	tDecemberFirstCharger_Pack[3326798][2][1] = {}
	tDecemberFirstCharger_Pack[3326798][2][1]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326798][2][1]["ItemChance"] = 1500
	tDecemberFirstCharger_Pack[3326798][2][1]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326798][2][1]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][2][1]["RewardItem"][1]["Id"] = 3321108 -- ChaosJade[3321108][属性:9][叠加:10000][金币:0], 【表格】鸿蒙炼魂玉（赠）
	tDecemberFirstCharger_Pack[3326798][2][1]["RewardItem"][1]["Attr"] = "0 1" -- ChaosJade*1
	tDecemberFirstCharger_Pack[3326798][2][1]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326798][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326798][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 回气丹*2（赠） - 35%
	tDecemberFirstCharger_Pack[3326798][2][2] = {}
	tDecemberFirstCharger_Pack[3326798][2][2]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326798][2][2]["ItemChance"] = 3500
	tDecemberFirstCharger_Pack[3326798][2][2]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326798][2][2]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][2][2]["RewardItem"][1]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】回气丹*2（赠）
	tDecemberFirstCharger_Pack[3326798][2][2]["RewardItem"][1]["Attr"] = "0 2 3" -- Vital~Pill（赠）*2
	tDecemberFirstCharger_Pack[3326798][2][2]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326798][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326798][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*2 - 50%
	tDecemberFirstCharger_Pack[3326798][2][3] = {}
	tDecemberFirstCharger_Pack[3326798][2][3]["RandomItemChanceType"] = 2
	tDecemberFirstCharger_Pack[3326798][2][3]["ItemChance"] = 5000
	tDecemberFirstCharger_Pack[3326798][2][3]["RewardItem"] = {}
	tDecemberFirstCharger_Pack[3326798][2][3]["RewardItem"][1] = {}
	tDecemberFirstCharger_Pack[3326798][2][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tDecemberFirstCharger_Pack[3326798][2][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tDecemberFirstCharger_Pack[3326798][2][3]["RewardEffect"] = {}
	tDecemberFirstCharger_Pack[3326798][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tDecemberFirstCharger_Pack[3326798][2][3]["RewardEffect"]["Effect"] = "angelwing"







local tDecemberFirstCharger_Data = {}

tDecemberFirstCharger_Data["GlobalId"] = 53860


------------------------------------------------逻辑部分
function DecemberFirstCharger_ServerPack(nItemId)
	local nGlobalId = tDecemberFirstCharger_Data["GlobalId"]
	local nGloData0 = Get_SysDynaGlobalData(nGlobalId,0)
	
	if nGloData0 == 0 then 
		local bJudge = TermsOfUse_Main(nItemId,tDecemberFirstCharger_Pack[nItemId][1])
		if not bJudge then
			return
		end
		RewardTemplate_RandomReward(tDecemberFirstCharger_Pack[nItemId],1)
		local nText = tDecemberFirstCharger_Pack[3326798][1]["EmoneyLog"]
		Sys_SaveEmoneyBuy(nText)
	else
		local bJudge = TermsOfUse_Main(nItemId,tDecemberFirstCharger_Pack[nItemId][2])
		if not bJudge then
			return
		end
		RewardTemplate_RandomReward(tDecemberFirstCharger_Pack[nItemId],2)
		local nText = tDecemberFirstCharger_Pack[3326798][2]["EmoneyLog"]
		Sys_SaveEmoneyBuy(nText)
	end 
end 





---------------------------------------物品使用逻辑

tItem[3326793] = tItem[3326793] or {}
tItem[3326793]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tDecemberFirstCharger_Pack[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tDecemberFirstCharger_Pack[nItemId])
end
tItem[3326795] = tItem[3326793] or {}
tItem[3326796] = tItem[3326793] or {}
tItem[3326797] = tItem[3326793] or {}


tItem[3326798] = tItem[3326798] or {}
tItem[3326798]["Function"] = function(nItemId,sItemName)
	DecemberFirstCharger_ServerPack(nItemId)
end



tItem[3326794] = tItem[3326794] or {}
tItem[3326794]["Function"] = function(nItemId,sItemName)
	local bJudge = TermsOfUse_Main(nItemId,tDecemberFirstCharger_Pack[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_RandomReward(tDecemberFirstCharger_Pack,nItemId)
	local nText = tDecemberFirstCharger_Pack[3326794]["EmoneyLog"]
	Sys_SaveEmoneyBuy(nText)
end




