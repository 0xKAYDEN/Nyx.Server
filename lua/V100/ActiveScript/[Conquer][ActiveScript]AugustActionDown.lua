------------------------------------------------------------------------------------
--Name:			190716[英文征服][活动脚本]8月发奖id第二期（8.6）
--Creator: 		茅志伟
--Created:		2019/07/16
------------------------------------------------------------------------------------

-- 命名前缀 tAugustActionDown_

-- lua.ini = 41401
-- 41401 = V100\ActiveScript\[Conquer][ActiveScript]AugustActionDown.lua
-- 41401 = V100\活动脚本\[征服][活动脚本]8月发奖id第二期（8.6）.lua
-- logId = 12001518

local tAugustActionDown_Pack = {}
	-- ===黄色神纹精粹豪华包
	-- ===索引:tAugustActionDown_Pack[3322651]
	-- ===删除:3322651,1
	-- ===
	tAugustActionDown_Pack[3322651] = {}
	tAugustActionDown_Pack[3322651]["LogId"] = 12001518
	tAugustActionDown_Pack[3322651]["DeleteItem"] = {}
	tAugustActionDown_Pack[3322651]["DeleteItem"][1] = {}
	tAugustActionDown_Pack[3322651]["DeleteItem"][1]["Id"] = 3322651 -- 【库】LuxuryYellowRuneEssencePack[属性:9]
	tAugustActionDown_Pack[3322651]["RewardItem"] = {}
	tAugustActionDown_Pack[3322651]["RewardItem"][1] = {}
	tAugustActionDown_Pack[3322651]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*100（赠）
	tAugustActionDown_Pack[3322651]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence（赠）*100
	tAugustActionDown_Pack[3322651]["RewardEffect"] = {}
	tAugustActionDown_Pack[3322651]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionDown_Pack[3322651]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionDown_Pack[3322652] = {}
	-- ===明亮星陨石豪华包
	-- ===索引:tAugustActionDown_Pack[3322652]
	-- ===删除:3322652,1
	-- ===
	tAugustActionDown_Pack[3322652]["LogId"] = 12001518
	tAugustActionDown_Pack[3322652]["DeleteItem"] = {}
	tAugustActionDown_Pack[3322652]["DeleteItem"][1] = {}
	tAugustActionDown_Pack[3322652]["DeleteItem"][1]["Id"] = 3322652 -- 【库】LuxuryBrightStarStonePack[属性:9]
	tAugustActionDown_Pack[3322652]["RewardItem"] = {}
	tAugustActionDown_Pack[3322652]["RewardItem"][1] = {}
	tAugustActionDown_Pack[3322652]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*15
	tAugustActionDown_Pack[3322652]["RewardItem"][1]["Attr"] = "0 15 0 2880 1" -- 2天时效(激活)的BrightStarStone*15
	tAugustActionDown_Pack[3322652]["RewardEffect"] = {}
	tAugustActionDown_Pack[3322652]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionDown_Pack[3322652]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionDown_Pack[3322653] = {}
	-- ===马匹气力值豪华包
	-- ===索引:tAugustActionDown_Pack[3322653]
	-- ===删除:3322653,1
	-- ===
	tAugustActionDown_Pack[3322653]["LogId"] = 12001518
	tAugustActionDown_Pack[3322653]["DeleteItem"] = {}
	tAugustActionDown_Pack[3322653]["DeleteItem"][1] = {}
	tAugustActionDown_Pack[3322653]["DeleteItem"][1]["Id"] = 3322653 -- 【库】LuxurySteed&ChiPack[属性:9]
	tAugustActionDown_Pack[3322653]["RewardStrengthValue"] = {}
	tAugustActionDown_Pack[3322653]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】8000气力值
	tAugustActionDown_Pack[3322653]["RewardItem"] = {}
	tAugustActionDown_Pack[3322653]["RewardItem"][1] = {}
	tAugustActionDown_Pack[3322653]["RewardItem"][1]["Id"] = 3305399 -- Bound+5SteedPack[3305399][属性:9][叠加:1][金币:45000000], 【表格】 +5马匹赠*2（赠）
	tAugustActionDown_Pack[3322653]["RewardItem"][1]["Attr"] = "0 1" -- Bound+5SteedPack*2
	tAugustActionDown_Pack[3322653]["RewardEffect"] = {}
	tAugustActionDown_Pack[3322653]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionDown_Pack[3322653]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionDown_Pack[3322654] = {}
	-- ===VIP升星典藏宝箱
	-- ===索引:tAugustActionDown_Pack[3322654]
	-- ===删除:3322654,1
	-- ===
	tAugustActionDown_Pack[3322654]["LogId"] = 12001518
	tAugustActionDown_Pack[3322654]["DeleteItem"] = {}
	tAugustActionDown_Pack[3322654]["DeleteItem"][1] = {}
	tAugustActionDown_Pack[3322654]["DeleteItem"][1]["Id"] = 3322654 -- 【库】ClassicVIPStarPack[属性:9]
	tAugustActionDown_Pack[3322654]["RewardItem"] = {}
	tAugustActionDown_Pack[3322654]["RewardItem"][1] = {}
	tAugustActionDown_Pack[3322654]["RewardItem"][1]["Id"] = 3322655 -- BoostSelectionPack[3322655][属性:9][叠加:0][金币:0], 【表格】实力提升可选包（赠）
	tAugustActionDown_Pack[3322654]["RewardItem"][1]["Attr"] = "0 1" -- BoostSelectionPack*1
	tAugustActionDown_Pack[3322654]["RewardItem"][2] = {}
	tAugustActionDown_Pack[3322654]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*150（赠）
	tAugustActionDown_Pack[3322654]["RewardItem"][2]["Attr"] = "0 150 3" -- UniversalRuneEssence（赠）*150
	tAugustActionDown_Pack[3322654]["RewardItem"][3] = {}
	tAugustActionDown_Pack[3322654]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tAugustActionDown_Pack[3322654]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tAugustActionDown_Pack[3322654]["RewardEffect"] = {}
	tAugustActionDown_Pack[3322654]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionDown_Pack[3322654]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionDown_Pack[3322655] = {}
	-- ===实力提升可选包
	-- ===索引:tAugustActionDown_Pack[3322655][1]
	-- ===删除:3322655,1
	-- ===
	tAugustActionDown_Pack[3322655][1] = {}
	tAugustActionDown_Pack[3322655][1]["LogId"] = 12001518
	tAugustActionDown_Pack[3322655][1]["DeleteItem"] = {}
	tAugustActionDown_Pack[3322655][1]["DeleteItem"][1] = {}
	tAugustActionDown_Pack[3322655][1]["DeleteItem"][1]["Id"] = 3322655 -- 【库】BoostSelectionPack[属性:9]
	tAugustActionDown_Pack[3322655][1]["RewardStrengthValue"] = {}
	tAugustActionDown_Pack[3322655][1]["RewardStrengthValue"]["Value"] = 50000 -- 气力值, 【需求】50000气力值
	tAugustActionDown_Pack[3322655][1]["RewardEffect"] = {}
	tAugustActionDown_Pack[3322655][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionDown_Pack[3322655][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionDown_Pack[3322655][2] = {}
	-- ===实力提升可选包
	-- ===索引:tAugustActionDown_Pack[3322655][2]
	-- ===删除:3322655,1
	-- ===
	tAugustActionDown_Pack[3322655][2]["LogId"] = 12001518
	tAugustActionDown_Pack[3322655][2]["DeleteItem"] = {}
	tAugustActionDown_Pack[3322655][2]["DeleteItem"][1] = {}
	tAugustActionDown_Pack[3322655][2]["DeleteItem"][1]["Id"] = 3322655 -- 【库】BoostSelectionPack[属性:9]
	tAugustActionDown_Pack[3322655][2]["RewardCultivation"] = {}
	tAugustActionDown_Pack[3322655][2]["RewardCultivation"]["Value"] = 50000 -- 修行值, 【需求】50000修行值
	tAugustActionDown_Pack[3322655][2]["RewardEffect"] = {}
	tAugustActionDown_Pack[3322655][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionDown_Pack[3322655][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionDown_Pack[3322655][3] = {}
	-- ===实力提升可选包
	-- ===索引:tAugustActionDown_Pack[3322655][3]
	-- ===删除:3322655,1
	-- ===
	tAugustActionDown_Pack[3322655][3]["LogId"] = 12001518
	tAugustActionDown_Pack[3322655][3]["DeleteItem"] = {}
	tAugustActionDown_Pack[3322655][3]["DeleteItem"][1] = {}
	tAugustActionDown_Pack[3322655][3]["DeleteItem"][1]["Id"] = 3322655 -- 【库】BoostSelectionPack[属性:9]
	tAugustActionDown_Pack[3322655][3]["RewardRepairValue"] = {}
	tAugustActionDown_Pack[3322655][3]["RewardRepairValue"]["Value"] = 100000 -- 修为值, 【需求】100000修为值
	tAugustActionDown_Pack[3322655][3]["RewardEffect"] = {}
	tAugustActionDown_Pack[3322655][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionDown_Pack[3322655][3]["RewardEffect"]["Effect"] = "angelwing"




-------------------------------------------------逻辑

function AugustActionDown_Rewarditem(nItemId,nNum)
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		return
	end 
	RewardTemplate_UseItemAndMsg(tAugustActionDown_Pack[nItemId][nNum])
end 
	
	


------------------------------------------对白模板
-- 实力提升可选包
tItemFace[3322655] = 2434
tItem[3322655] = tItem[3322655] or {}
tItem[3322655]["DialogueText"] = tAugustActionDown_Text[3322655]
tItem[3322655]["Text1-1"] = {111}
tItem[3322655]["tOption1-1"] = {111,112,113}
tItem[3322655]["OptionFunc111"] = "AugustActionDown_Rewarditem</N>3322655</N>1"
tItem[3322655]["OptionFunc112"] = "AugustActionDown_Rewarditem</N>3322655</N>2"
tItem[3322655]["OptionFunc113"] = "AugustActionDown_Rewarditem</N>3322655</N>3"

tItem[3322651] = tItem[3322651] or {}
tItem[3322651]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAugustActionDown_Pack[nItemId])
end
tItem[3322652] = tItem[3322651] or {}
tItem[3322653] = tItem[3322651] or {}
tItem[3322654] = tItem[3322651] or {}



tItem[3322651] = tItem[3322651] or {}
tItem[3322651]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAugustActionDown_Pack[nItemId])
end
tItem[3322652] = tItem[3322651] or {}
tItem[3322653] = tItem[3322651] or {}
tItem[3322654] = tItem[3322651] or {}











