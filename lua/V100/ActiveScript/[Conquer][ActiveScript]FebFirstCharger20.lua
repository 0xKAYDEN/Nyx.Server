------------------------------------------------------------------------------------
--Name：        191223[英文征服][活动脚本]2月首充（2.4-2.29）
--Creator:      茅志伟
--Created:      2019/12/23
------------------------------------------------------------------------------------
-- 命名前缀 ：tFebFirstCharger20_

-- Lua.ini = 41683
-- 41683 = V100\ActiveScript\[Conquer][ActiveScript]FebFirstCharger20.lua
-- 41683 = V100\活动脚本\[征服][活动脚本]2月首充（2.4-2.29）.lua

-- LogId = 12001808



local tFebFirstCharger20_Data = {}
tFebFirstCharger20_Data["GlobalId"] = 54183

local tFebFirstCharger20_Pack = {}
	-- ===30天时效ButterflyFlower礼包
	-- ===索引: tFebFirstCharger20_Pack[3327385]
	-- ===删除:3327385,1
	-- ===EMoneyLog: 350,23031
	-- ===
	tFebFirstCharger20_Pack[3327385] = {}
	tFebFirstCharger20_Pack[3327385]["LogId"] = 12001808
	tFebFirstCharger20_Pack[3327385]["EmoneyLog"] = "350	23031	0	0	1	"
	tFebFirstCharger20_Pack[3327385]["DeleteItem"] = {}
	tFebFirstCharger20_Pack[3327385]["DeleteItem"][1] = {}
	tFebFirstCharger20_Pack[3327385]["DeleteItem"][1]["Id"] = 3327385 -- 【库】30-dayButterflyFlowerPack[属性:9]
	tFebFirstCharger20_Pack[3327385]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327385]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327385]["RewardItem"][1]["Id"] = 193695 -- ButterflyFlower[193695][属性:0][叠加:0][金币:0], 【表格】30天时效赠品ButterflyFlower*1（赠）
	tFebFirstCharger20_Pack[3327385]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ButterflyFlower（赠）*1
	tFebFirstCharger20_Pack[3327385]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327385]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327385]["RewardEffect"]["Effect"] = "angelwing"


	tFebFirstCharger20_Pack[3327386] = {}
	-- ===特惠+3赤炼石礼包
	-- ===索引: tFebFirstCharger20_Pack[3327386]
	-- ===删除:3327386,1
	-- ===EMoneyLog: 350,23032
	-- ===
	tFebFirstCharger20_Pack[3327386]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tFebFirstCharger20_Pack[3327386]["DeleteItem"] = {}
	tFebFirstCharger20_Pack[3327386]["DeleteItem"][1] = {}
	tFebFirstCharger20_Pack[3327386]["DeleteItem"][1]["Id"] = 3327386 -- 【库】+3StoneLuckyPack[属性:9]
	tFebFirstCharger20_Pack[3327386]["LogId"] = 12001808
	tFebFirstCharger20_Pack[3327386]["EmoneyLog"] = "350	23032	0	0	1	"
	-- ‘+3赤炼石*2（赠） - 65%
	tFebFirstCharger20_Pack[3327386][1] = {}
	tFebFirstCharger20_Pack[3327386][1]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327386][1]["ItemChance"] = 6500
	tFebFirstCharger20_Pack[3327386][1]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327386][1]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327386][1]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*2（赠）
	tFebFirstCharger20_Pack[3327386][1]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tFebFirstCharger20_Pack[3327386][1]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327386][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327386][1]["RewardEffect"]["Effect"] = "angelwing"
	-- ‘+3赤炼石*3（赠） - 35%
	tFebFirstCharger20_Pack[3327386][2] = {}
	tFebFirstCharger20_Pack[3327386][2]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327386][2]["ItemChance"] = 3500
	tFebFirstCharger20_Pack[3327386][2]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327386][2]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327386][2]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石*3（赠）
	tFebFirstCharger20_Pack[3327386][2]["RewardItem"][1]["Attr"] = "0 3 3" -- +3Stone（赠）*3
	tFebFirstCharger20_Pack[3327386][2]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327386][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327386][2]["RewardEffect"]["Effect"] = "angelwing"


	tFebFirstCharger20_Pack[3327387] = {}
	-- ===黄色神纹碎片礼包
	-- ===索引: tFebFirstCharger20_Pack[3327387]
	-- ===删除:3327387,1
	-- ===EMoneyLog: 350,23033
	-- ===
	-- ===
	tFebFirstCharger20_Pack[3327387]["LogId"] = 12001808
	tFebFirstCharger20_Pack[3327387]["EmoneyLog"] = "350	23033	0	0	1	"
	tFebFirstCharger20_Pack[3327387]["DeleteItem"] = {}
	tFebFirstCharger20_Pack[3327387]["DeleteItem"][1] = {}
	tFebFirstCharger20_Pack[3327387]["DeleteItem"][1]["Id"] = 3327387 -- 【库】YellowRuneFragmentPack[属性:9]
	tFebFirstCharger20_Pack[3327387]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327387]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327387]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】黄色神纹碎片*20（赠）
	tFebFirstCharger20_Pack[3327387]["RewardItem"][1]["Attr"] = "0 20" -- YellowRuneFragment*20（[错误]物品数量超10个）
	tFebFirstCharger20_Pack[3327387]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327387]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327387]["RewardEffect"]["Effect"] = "angelwing"


	tFebFirstCharger20_Pack[3327388] = {}
	-- ===龙鳞果礼包
	-- ===索引: tFebFirstCharger20_Pack[3327388]
	-- ===删除:3327388,1 
	-- ===EMoneyLog: 350,23034
	-- ===
	tFebFirstCharger20_Pack[3327388]["LogId"] = 12001808
	tFebFirstCharger20_Pack[3327388]["EmoneyLog"] = "350	23034	0	0	1	"
	tFebFirstCharger20_Pack[3327388]["DeleteItem"] = {}
	tFebFirstCharger20_Pack[3327388]["DeleteItem"][1] = {}
	tFebFirstCharger20_Pack[3327388]["DeleteItem"][1]["Id"] = 3327388 -- 【库】DragonFruitPack[属性:9]
	tFebFirstCharger20_Pack[3327388]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327388]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327388]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*3（赠）
	tFebFirstCharger20_Pack[3327388]["RewardItem"][1]["Attr"] = "0 3" -- DragonFruit*3
	tFebFirstCharger20_Pack[3327388]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327388]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327388]["RewardEffect"]["Effect"] = "angelwing"


	tFebFirstCharger20_Pack[3327389] = {}
	-- ===1000气力值礼盒
	-- ===索引: tFebFirstCharger20_Pack[3327389]
	-- ===删除:3327389,1 
	-- ===EMoneyLog: 350,23035
	-- ===
	tFebFirstCharger20_Pack[3327389]["LogId"] = 12001808
	tFebFirstCharger20_Pack[3327389]["EmoneyLog"] = "350	23035	0	0	1	"
	tFebFirstCharger20_Pack[3327389]["DeleteItem"] = {}
	tFebFirstCharger20_Pack[3327389]["DeleteItem"][1] = {}
	tFebFirstCharger20_Pack[3327389]["DeleteItem"][1]["Id"] = 3327389 -- 【库】1000ChiPointsPack[属性:9]
	tFebFirstCharger20_Pack[3327389]["RewardStrengthValue"] = {}
	tFebFirstCharger20_Pack[3327389]["RewardStrengthValue"]["Value"] = 1000 -- 气力, 【需求】1000气力值
	tFebFirstCharger20_Pack[3327389]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327389]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327389]["RewardEffect"]["Effect"] = "angelwing"


	tFebFirstCharger20_Pack[3327390] = {}
	-- ===惊喜灵珠大礼包
	-- ===索引: tFebFirstCharger20_Pack[3327390][1]
	-- ===删除:3327390,1
	-- ===EMoneyLog: 350,23036
	-- ===
	-- ===
	tFebFirstCharger20_Pack[3327390][1] = {}
	tFebFirstCharger20_Pack[3327390][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tFebFirstCharger20_Pack[3327390][1]["DeleteItem"] = {}
	tFebFirstCharger20_Pack[3327390][1]["DeleteItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][1]["DeleteItem"][1]["Id"] = 3327390 -- 【库】AnimaSurprisePack[属性:9]
	tFebFirstCharger20_Pack[3327390][1]["LogId"] = 12001808
	tFebFirstCharger20_Pack[3327390][1]["EmoneyLog"] = "350	23036	0	0	1	"
	-- 百炼天机果（赠） - 15%
	tFebFirstCharger20_Pack[3327390][1][1] = {}
	tFebFirstCharger20_Pack[3327390][1][1]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327390][1][1]["ItemChance"] = 1500
	tFebFirstCharger20_Pack[3327390][1][1]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327390][1][1]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][1][1]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】百炼天机果（赠）
	tFebFirstCharger20_Pack[3327390][1][1]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tFebFirstCharger20_Pack[3327390][1][1]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327390][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327390][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 龙珠（赠） - 35%
	tFebFirstCharger20_Pack[3327390][1][2] = {}
	tFebFirstCharger20_Pack[3327390][1][2]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327390][1][2]["ItemChance"] = 3500
	tFebFirstCharger20_Pack[3327390][1][2]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327390][1][2]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][1][2]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠（赠）
	tFebFirstCharger20_Pack[3327390][1][2]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tFebFirstCharger20_Pack[3327390][1][2]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327390][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327390][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*2 - 50%
	tFebFirstCharger20_Pack[3327390][1][3] = {}
	tFebFirstCharger20_Pack[3327390][1][3]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327390][1][3]["ItemChance"] = 5000
	tFebFirstCharger20_Pack[3327390][1][3]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327390][1][3]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][1][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tFebFirstCharger20_Pack[3327390][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tFebFirstCharger20_Pack[3327390][1][3]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327390][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327390][1][3]["RewardEffect"]["Effect"] = "angelwing"


	tFebFirstCharger20_Pack[3327390][2] = {}
	-- ===惊喜灵珠大礼包
	-- ===索引: tFebFirstCharger20_Pack[3327390][2]
	-- ===删除:3327390,1
	-- ===EMoneyLog: 350,23036
	-- ===
	-- ===
	tFebFirstCharger20_Pack[3327390][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tFebFirstCharger20_Pack[3327390][2]["DeleteItem"] = {}
	tFebFirstCharger20_Pack[3327390][2]["DeleteItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][2]["DeleteItem"][1]["Id"] = 3327390 -- 【库】AnimaSurprisePack[属性:9]
	tFebFirstCharger20_Pack[3327390][2]["LogId"] = 12001808
	tFebFirstCharger20_Pack[3327390][2]["EmoneyLog"] = "350	23036	0	0	1	"
	-- 百炼天机果（赠） - 15%
	tFebFirstCharger20_Pack[3327390][2][1] = {}
	tFebFirstCharger20_Pack[3327390][2][1]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327390][2][1]["ItemChance"] = 1500
	tFebFirstCharger20_Pack[3327390][2][1]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327390][2][1]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][2][1]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】百炼天机果（赠）
	tFebFirstCharger20_Pack[3327390][2][1]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tFebFirstCharger20_Pack[3327390][2][1]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327390][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327390][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 回气丹*2（赠） - 35%
	tFebFirstCharger20_Pack[3327390][2][2] = {}
	tFebFirstCharger20_Pack[3327390][2][2]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327390][2][2]["ItemChance"] = 3500
	tFebFirstCharger20_Pack[3327390][2][2]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327390][2][2]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][2][2]["RewardItem"][1]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】回气丹*2（赠）
	tFebFirstCharger20_Pack[3327390][2][2]["RewardItem"][1]["Attr"] = "0 2 3" -- Vital~Pill（赠）*2
	tFebFirstCharger20_Pack[3327390][2][2]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327390][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327390][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石*2 - 50%
	tFebFirstCharger20_Pack[3327390][2][3] = {}
	tFebFirstCharger20_Pack[3327390][2][3]["RandomItemChanceType"] = 2
	tFebFirstCharger20_Pack[3327390][2][3]["ItemChance"] = 5000
	tFebFirstCharger20_Pack[3327390][2][3]["RewardItem"] = {}
	tFebFirstCharger20_Pack[3327390][2][3]["RewardItem"][1] = {}
	tFebFirstCharger20_Pack[3327390][2][3]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tFebFirstCharger20_Pack[3327390][2][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tFebFirstCharger20_Pack[3327390][2][3]["RewardEffect"] = {}
	tFebFirstCharger20_Pack[3327390][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tFebFirstCharger20_Pack[3327390][2][3]["RewardEffect"]["Effect"] = "angelwing"


---------------------------------------------------------逻辑部分
-- 区分服务器礼包
function FebFirstCharger20_ServerPack(nFebFirstCharger20_ItemId)
	local nFebFirstCharger20_GlobalId = tFebFirstCharger20_Data["GlobalId"]
	local nFebFirstCharger20_GloData0 = Get_SysDynaGlobalData(nFebFirstCharger20_GlobalId,0)
	
	if nFebFirstCharger20_GloData0 == 0 then 
		local bFebFirstCharger20_Judge = TermsOfUse_Main(nFebFirstCharger20_ItemId,tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId][1])
		if not bFebFirstCharger20_Judge then
			return
		end
		RewardTemplate_RandomReward(tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId],1)
		local sFebFirstCharger20_Text = tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId][1]["EmoneyLog"]
		Sys_SaveEmoneyBuy(sFebFirstCharger20_Text)
	else
		local bFebFirstCharger20_Judge = TermsOfUse_Main(nFebFirstCharger20_ItemId,tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId][2])
		if not bFebFirstCharger20_Judge then
			return
		end
		RewardTemplate_RandomReward(tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId],2)
		local sFebFirstCharger20_Text = tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId][2]["EmoneyLog"]
		Sys_SaveEmoneyBuy(sFebFirstCharger20_Text)
	end 
end 

------------------------------------------------对白
-- 一般礼包
tItem[3327385] = tItem[3327385] or {}
tItem[3327385]["Function"] = function(nFebFirstCharger20_ItemId,sFebFirstCharger20_ItemName)
	local bFebFirstCharger20_Judge = TermsOfUse_Main(nFebFirstCharger20_ItemId,tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId])
	if not bFebFirstCharger20_Judge then
		return
	end
	RewardTemplate_UseItemAndMsg(tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId])
end
tItem[3327387] = tItem[3327385] or {}
tItem[3327388] = tItem[3327385] or {}
tItem[3327389] = tItem[3327389] or {}
tItem[3327389]["Function"] = function(nFebFirstCharger20_ItemId,sFebFirstCharger20_ItemName)
	RewardTemplate_UseItemAndMsg(tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId])
end 

-- 随机奖励礼包
tItem[3327386] = tItem[3327386] or {}
tItem[3327386]["Function"] = function(nFebFirstCharger20_ItemId,sFebFirstCharger20_ItemName)
	local bFebFirstCharger20_Judge = TermsOfUse_Main(nFebFirstCharger20_ItemId,tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId])
	if not bFebFirstCharger20_Judge then
		return
	end
	RewardTemplate_RandomReward(tFebFirstCharger20_Pack,nFebFirstCharger20_ItemId)
	local sFebFirstCharger20_Text = tFebFirstCharger20_Pack[nFebFirstCharger20_ItemId]["EmoneyLog"]
	Sys_SaveEmoneyBuy(sFebFirstCharger20_Text)
	
end

-- 区分服务器礼包
tItem[3327390] = tItem[3327390] or {}
tItem[3327390]["Function"] = function(nItemId,sItemName)
	FebFirstCharger20_ServerPack(nItemId)
end
