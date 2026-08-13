------------------------------------------------------------------------------------
--Name：        200516[简体征服][活动脚本]全球暑期活动-主Npc(7.7-7.20)
--Creator:      陈莺
--Created:     2020-05-16
------------------------------------------------------------------------------------
--任务需求：

-- SummerActivityMainNpc_
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tSummerActivityMainNpc_Data = {}
	tSummerActivityMainNpc_Data["Level"] = 80
	tSummerActivityMainNpc_Data["Metempsychosis"] = 0
	tSummerActivityMainNpc_Data["MetempsyTwo"] = 2
	
	--材料
	tSummerActivityMainNpc_Data["Itemtype"] = {}
	tSummerActivityMainNpc_Data["Itemtype"][1] = 3316211
	tSummerActivityMainNpc_Data["Itemtype"][2] = 3316212
	tSummerActivityMainNpc_Data["Itemtype"][3] = 3316213
	tSummerActivityMainNpc_Data["Itemtype"][4] = 3316214
	tSummerActivityMainNpc_Data["Itemtype"][5] = 3316215
	
	-- 材料对应文字和奖励数字基数
	tSummerActivityMainNpc_Data["TextIndex"] = {}
	tSummerActivityMainNpc_Data["TextIndex"][3316211] = {}
	tSummerActivityMainNpc_Data["TextIndex"][3316211][1] = "Text338"
	tSummerActivityMainNpc_Data["TextIndex"][3316211][2] = 1
	tSummerActivityMainNpc_Data["TextIndex"][3316212] = {}
	tSummerActivityMainNpc_Data["TextIndex"][3316212][1] = "Text334"
	tSummerActivityMainNpc_Data["TextIndex"][3316212][2] = 1
	tSummerActivityMainNpc_Data["TextIndex"][3316213] = {}
	tSummerActivityMainNpc_Data["TextIndex"][3316213][1] = "Text337"
	tSummerActivityMainNpc_Data["TextIndex"][3316213][2] = 15
	tSummerActivityMainNpc_Data["TextIndex"][3316214] = {}
	tSummerActivityMainNpc_Data["TextIndex"][3316214][1] = "Text335"
	tSummerActivityMainNpc_Data["TextIndex"][3316214][2] = 1000
	tSummerActivityMainNpc_Data["TextIndex"][3316215] = {}
	tSummerActivityMainNpc_Data["TextIndex"][3316215][1] = "Text336"
	tSummerActivityMainNpc_Data["TextIndex"][3316215][2] = 1
	
	-- 杀怪掉落
	tSummerActivityMainNpc_Data["Min"] = 300
	tSummerActivityMainNpc_Data["Max"] = 10000
	-- 获得限制
	tSummerActivityMainNpc_Data["Limit"] = 5
	
	
local tSummerActivityMainNpc_Stc = {}
-- 记录预热玩家是否第一次点NPC
	tSummerActivityMainNpc_Stc[1] = {}
	tSummerActivityMainNpc_Stc[1]["EventType"] = 222
	tSummerActivityMainNpc_Stc[1]["DataType"] = 14
	-- 记录是否参加过预热活动  =1 表示参加过  =2表示领过奖励
	tSummerActivityMainNpc_Stc[2] = {}
	tSummerActivityMainNpc_Stc[2]["EventType"] = 222
	tSummerActivityMainNpc_Stc[2]["DataType"] = 15
-- 记录杀怪获得次数
	tSummerActivityMainNpc_Stc[3] = {}
	tSummerActivityMainNpc_Stc[3]["EventType"] = 222
	tSummerActivityMainNpc_Stc[3]["DataType"] = 16
	
local tSummerActivityMainNpc_Reward = {}
-- 鱼丸专用盒子
	tSummerActivityMainNpc_Reward[3316211] = {}
	tSummerActivityMainNpc_Reward[3316211]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316211]["LogStep"] = " 1[1]"
	tSummerActivityMainNpc_Reward[3316211]["AddNum"] = 1
	tSummerActivityMainNpc_Reward[3316211]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316211]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316211]["DeleteItem"][1]["Id"] = 3316211 -- 【库】 3316211 【库里没有该物品】[属性:]
	tSummerActivityMainNpc_Reward[3316211]["DeleteItem"][1]["ItemNum"] = 1
	tSummerActivityMainNpc_Reward[3316211]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316211]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316211]["RewardItem"][1]["Id"] = 730002  -- 赤炼石+2
	tSummerActivityMainNpc_Reward[3316211]["RewardItem"][1]["Attr"] = "0 %d 3 7200 1"
	tSummerActivityMainNpc_Reward[3316211]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316211]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316211]["RewardEffect"]["Effect"] = "angelwing"
-- 烧烤炭火
	tSummerActivityMainNpc_Reward[3316212] = {}
	tSummerActivityMainNpc_Reward[3316212]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316212]["LogStep"] = " 1[1]"
	tSummerActivityMainNpc_Reward[3316212]["AddNum"] = 1
	tSummerActivityMainNpc_Reward[3316212]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316212]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316212]["DeleteItem"][1]["Id"] = 3316212 -- 【库】 3316212 【库里没有该物品】[属性:]
	tSummerActivityMainNpc_Reward[3316212]["DeleteItem"][1]["ItemNum"] = 1
	tSummerActivityMainNpc_Reward[3316212]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316212]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316212]["RewardItem"][1]["Id"] = 3009001  ---明亮星陨石
	tSummerActivityMainNpc_Reward[3316212]["RewardItem"][1]["Attr"] = "0 %d 0 2880 1"
	tSummerActivityMainNpc_Reward[3316212]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316212]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316212]["RewardEffect"]["Effect"] = "angelwing"

-- 大排档碗筷
	tSummerActivityMainNpc_Reward[3316213] = {}
	tSummerActivityMainNpc_Reward[3316213]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316213]["LogStep"] = " 1[1]"
	tSummerActivityMainNpc_Reward[3316213]["AddNum"] = 15
	tSummerActivityMainNpc_Reward[3316213]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316213]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316213]["DeleteItem"][1]["Id"] = 3316213 -- 【库】 3316213 【库里没有该物品】[属性:]
	tSummerActivityMainNpc_Reward[3316213]["DeleteItem"][1]["ItemNum"] = 1
	tSummerActivityMainNpc_Reward[3316213]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316213]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316213]["RewardItem"][1]["Id"] = 4060001  --万能神纹精粹
	tSummerActivityMainNpc_Reward[3316213]["RewardItem"][1]["Attr"] = "0 %d 3"
	tSummerActivityMainNpc_Reward[3316213]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316213]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316213]["RewardEffect"]["Effect"] = "angelwing"

-- 水果叉子
	tSummerActivityMainNpc_Reward[3316214] = {}
	tSummerActivityMainNpc_Reward[3316214]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316214]["LogStep"] = " 1[1]"
	tSummerActivityMainNpc_Reward[3316214]["AddNum"] = 1000
	tSummerActivityMainNpc_Reward[3316214]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316214]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316214]["DeleteItem"][1]["Id"] = 3316214 -- 【库】 3316214 【库里没有该物品】[属性:]
	tSummerActivityMainNpc_Reward[3316214]["DeleteItem"][1]["ItemNum"] = 1
	tSummerActivityMainNpc_Reward[3316214]["RewardRepairValue"] = {}
	tSummerActivityMainNpc_Reward[3316214]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值
	tSummerActivityMainNpc_Reward[3316214]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316214]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316214]["RewardEffect"]["Effect"] = "angelwing"
-- 起瓶器
	tSummerActivityMainNpc_Reward[3316215] = {}
	tSummerActivityMainNpc_Reward[3316215]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316215]["LogStep"] = " 1[1]"
	tSummerActivityMainNpc_Reward[3316215]["AddNum"] = 1
	tSummerActivityMainNpc_Reward[3316215]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316215]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316215]["DeleteItem"][1]["Id"] = 3316215 -- 【库】 3316215 【库里没有该物品】[属性:]
	tSummerActivityMainNpc_Reward[3316215]["DeleteItem"][1]["ItemNum"] = 1
	tSummerActivityMainNpc_Reward[3316215]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316215]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316215]["RewardItem"][1]["Id"] = 3322219  --乾坤神器宝盒
	tSummerActivityMainNpc_Reward[3316215]["RewardItem"][1]["Attr"] = "0 %d"
	tSummerActivityMainNpc_Reward[3316215]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316215]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316215]["RewardEffect"]["Effect"] = "angelwing"

	tSummerActivityMainNpc_Reward[3316217] = {}
	-- ===仲夏助力福袋
	-- ===索引:tSummerActivityMainNpc_Reward[3316217][1]
	-- ===删除:3316217
	-- ===LogStep: 1[2]
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tSummerActivityMainNpc_Reward[3316217],1)
	tSummerActivityMainNpc_Reward[3316217][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSummerActivityMainNpc_Reward[3316217][1]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][1]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1]["DeleteItem"][1]["Id"] = 3316217 -- 【库】仲夏助力福袋[属性:11]
	tSummerActivityMainNpc_Reward[3316217][1]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316217][1]["LogStep"] = " 1[2]"
	-- 电池-- 【必给】
	tSummerActivityMainNpc_Reward[3316217][1][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1][1]["RandomItemChanceType"] = 1
	tSummerActivityMainNpc_Reward[3316217][1][1]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][1]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1][1]["RewardItem"][1]["Id"] = 3316216 -- 言灵珠[3316216][属性:11][叠加:0][金币:0], 【表格】电池
	tSummerActivityMainNpc_Reward[3316217][1][1]["RewardItem"][1]["Attr"] = "0 5" -- 言灵珠*5
	tSummerActivityMainNpc_Reward[3316217][1][1]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤神器宝盒[ - 5%
	tSummerActivityMainNpc_Reward[3316217][1][2] = {}
	tSummerActivityMainNpc_Reward[3316217][1][2]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][1][2]["ItemChance"] = 500
	tSummerActivityMainNpc_Reward[3316217][1][2]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][2]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1][2]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[[3322774][属性:8][叠加:1][金币:0], 【表格】乾坤神器宝盒
	tSummerActivityMainNpc_Reward[3316217][1][2]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒[*1
	tSummerActivityMainNpc_Reward[3316217][1][2]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][1][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 【动态掩码（54473, data2）】全服限量:（700）, 超限给编号（7）-
	tSummerActivityMainNpc_Reward[3316217][1][2]["GlobalId"] = 54473
	tSummerActivityMainNpc_Reward[3316217][1][2]["Pos"] = 4
	tSummerActivityMainNpc_Reward[3316217][1][2]["MaxData"] = 700
	tSummerActivityMainNpc_Reward[3316217][1][2]["FullIndex"] = 7
	-- 【动态掩码（54473, data3）】单日限量:（50）, 超限给编号（7）-
	tSummerActivityMainNpc_Reward[3316217][1][2]["OtherPos"] = 5
	tSummerActivityMainNpc_Reward[3316217][1][2]["OtherMaxData"] = 50
	tSummerActivityMainNpc_Reward[3316217][1][2]["OtherFullIndex"] = 7
	-- 乾坤神器宝盒 - 15%
	tSummerActivityMainNpc_Reward[3316217][1][3] = {}
	tSummerActivityMainNpc_Reward[3316217][1][3]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][1][3]["ItemChance"] = 1500
	tSummerActivityMainNpc_Reward[3316217][1][3]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][3]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1][3]["RewardItem"][1]["Id"] = 3322219 -- 乾坤神器宝盒[3322219][属性:9][叠加:10000][金币:0], 【表格】乾坤神器宝盒
	tSummerActivityMainNpc_Reward[3316217][1][3]["RewardItem"][1]["Attr"] = "0 1" -- 乾坤神器宝盒*1
	tSummerActivityMainNpc_Reward[3316217][1][3]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][1][3]["RewardEffect"]["Effect"] = "angelwing"
		-- 【动态掩码（54473, data4）】全服限量:（700）, 超限给编号（7）-
	tSummerActivityMainNpc_Reward[3316217][1][3]["GlobalId"] = 54473
	tSummerActivityMainNpc_Reward[3316217][1][3]["Pos"] = 4
	tSummerActivityMainNpc_Reward[3316217][1][3]["MaxData"] = 700
	tSummerActivityMainNpc_Reward[3316217][1][3]["FullIndex"] = 7
			-- 【动态掩码（54473, data5）】单日限量:（50）, 超限给编号（7）-
	tSummerActivityMainNpc_Reward[3316217][1][3]["OtherPos"] = 5
	tSummerActivityMainNpc_Reward[3316217][1][3]["OtherMaxData"] = 50
	tSummerActivityMainNpc_Reward[3316217][1][3]["OtherFullIndex"] = 7
	-- 赤炼石+3 - 22%
	tSummerActivityMainNpc_Reward[3316217][1][4] = {}
	tSummerActivityMainNpc_Reward[3316217][1][4]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][1][4]["ItemChance"] = 2200
	tSummerActivityMainNpc_Reward[3316217][1][4]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][4]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1][4]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tSummerActivityMainNpc_Reward[3316217][1][4]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tSummerActivityMainNpc_Reward[3316217][1][4]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][1][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 18%
	tSummerActivityMainNpc_Reward[3316217][1][5] = {}
	tSummerActivityMainNpc_Reward[3316217][1][5]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][1][5]["ItemChance"] = 1800
	tSummerActivityMainNpc_Reward[3316217][1][5]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][5]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1][5]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSummerActivityMainNpc_Reward[3316217][1][5]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tSummerActivityMainNpc_Reward[3316217][1][5]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][1][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 18%
	tSummerActivityMainNpc_Reward[3316217][1][6] = {}
	tSummerActivityMainNpc_Reward[3316217][1][6]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][1][6]["ItemChance"] = 1800
	tSummerActivityMainNpc_Reward[3316217][1][6]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][6]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][1][6]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSummerActivityMainNpc_Reward[3316217][1][6]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tSummerActivityMainNpc_Reward[3316217][1][6]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][1][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 22%
	tSummerActivityMainNpc_Reward[3316217][1][7] = {}
	tSummerActivityMainNpc_Reward[3316217][1][7]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][1][7]["ItemChance"] = 2200
	tSummerActivityMainNpc_Reward[3316217][1][7]["RewardStrengthValue"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][7]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	tSummerActivityMainNpc_Reward[3316217][1][7]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][1][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][1][7]["RewardEffect"]["Effect"] = "angelwing"

	-- ===仲夏助力福袋
	-- ===索引:tSummerActivityMainNpc_Reward[3316217][2]
	-- ===删除:3316217
	-- ===LogStep: 1[2]
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tSummerActivityMainNpc_Reward[3316217],2)
	tSummerActivityMainNpc_Reward[3316217][2] = {}
	tSummerActivityMainNpc_Reward[3316217][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSummerActivityMainNpc_Reward[3316217][2]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][2]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][2]["DeleteItem"][1]["Id"] = 3316217 -- 【库】仲夏助力福袋[属性:11]
	tSummerActivityMainNpc_Reward[3316217][2]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316217][2]["LogStep"] = " 1[2]"
	-- 电池-- 【必给】
	tSummerActivityMainNpc_Reward[3316217][2][1] = {}
	tSummerActivityMainNpc_Reward[3316217][2][1]["RandomItemChanceType"] = 1
	tSummerActivityMainNpc_Reward[3316217][2][1]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][1]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][2][1]["RewardItem"][1]["Id"] = 3316216 -- 言灵珠[3316216][属性:11][叠加:0][金币:0], 【表格】电池
	tSummerActivityMainNpc_Reward[3316217][2][1]["RewardItem"][1]["Attr"] = "0 5" -- 言灵珠*5
	tSummerActivityMainNpc_Reward[3316217][2][1]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+3 - 22%
	tSummerActivityMainNpc_Reward[3316217][2][2] = {}
	tSummerActivityMainNpc_Reward[3316217][2][2]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][2][2]["ItemChance"] = 2200
	tSummerActivityMainNpc_Reward[3316217][2][2]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][2]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][2][2]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3
	tSummerActivityMainNpc_Reward[3316217][2][2]["RewardItem"][1]["Attr"] = "0 1 3 7200 1" -- 5天时效(激活)的+3赤炼石（赠）*1
	tSummerActivityMainNpc_Reward[3316217][2][2]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 18%
	tSummerActivityMainNpc_Reward[3316217][2][3] = {}
	tSummerActivityMainNpc_Reward[3316217][2][3]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][2][3]["ItemChance"] = 1800
	tSummerActivityMainNpc_Reward[3316217][2][3]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][3]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][2][3]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSummerActivityMainNpc_Reward[3316217][2][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	tSummerActivityMainNpc_Reward[3316217][2][3]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹 - 18%
	tSummerActivityMainNpc_Reward[3316217][2][4] = {}
	tSummerActivityMainNpc_Reward[3316217][2][4]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][2][4]["ItemChance"] = 1800
	tSummerActivityMainNpc_Reward[3316217][2][4]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][4]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316217][2][4]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tSummerActivityMainNpc_Reward[3316217][2][4]["RewardItem"][1]["Attr"] = "0 15 3" -- 万能神纹精粹*15
	tSummerActivityMainNpc_Reward[3316217][2][4]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 气力值 - 42%
	tSummerActivityMainNpc_Reward[3316217][2][5] = {}
	tSummerActivityMainNpc_Reward[3316217][2][5]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316217][2][5]["ItemChance"] = 4200
	tSummerActivityMainNpc_Reward[3316217][2][5]["RewardStrengthValue"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][5]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】气力值
	tSummerActivityMainNpc_Reward[3316217][2][5]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316217][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316217][2][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===建材礼包
	-- ===索引:tSummerActivityMainNpc_Reward[3316258]
	-- ===删除:3316258
	-- ===LogStep: 1[2]
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tSummerActivityMainNpc_Reward,3316258)
	tSummerActivityMainNpc_Reward[3316258] = {}
	tSummerActivityMainNpc_Reward[3316258]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tSummerActivityMainNpc_Reward[3316258]["DeleteItem"] = {}
	tSummerActivityMainNpc_Reward[3316258]["DeleteItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316258]["DeleteItem"][1]["Id"] = 3316258 -- 【库】建材礼包[属性:11]
	tSummerActivityMainNpc_Reward[3316258]["LogId"] = 12001988
	tSummerActivityMainNpc_Reward[3316258]["LogStep"] = " 1[2]"
	-- 鱼丸专用盒子 - 30%
	tSummerActivityMainNpc_Reward[3316258][1] = {}
	tSummerActivityMainNpc_Reward[3316258][1]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316258][1]["ItemChance"] = 3000
	tSummerActivityMainNpc_Reward[3316258][1]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316258][1]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316258][1]["RewardItem"][1]["Id"] = 3316211 -- 章鱼烧打包盒[3316211][属性:11][叠加:0][金币:0], 【表格】鱼丸专用盒子
	tSummerActivityMainNpc_Reward[3316258][1]["RewardItem"][1]["Attr"] = "0 1" -- 章鱼烧打包盒*1
	tSummerActivityMainNpc_Reward[3316258][1]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316258][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316258][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 烧烤炭火 - 25%
	tSummerActivityMainNpc_Reward[3316258][2] = {}
	tSummerActivityMainNpc_Reward[3316258][2]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316258][2]["ItemChance"] = 2500
	tSummerActivityMainNpc_Reward[3316258][2]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316258][2]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316258][2]["RewardItem"][1]["Id"] = 3316212 -- 木炭[3316212][属性:11][叠加:0][金币:0], 【表格】烧烤炭火
	tSummerActivityMainNpc_Reward[3316258][2]["RewardItem"][1]["Attr"] = "0 1" -- 木炭*1
	tSummerActivityMainNpc_Reward[3316258][2]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316258][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316258][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 大排档碗筷 - 20%
	tSummerActivityMainNpc_Reward[3316258][3] = {}
	tSummerActivityMainNpc_Reward[3316258][3]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316258][3]["ItemChance"] = 2000
	tSummerActivityMainNpc_Reward[3316258][3]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316258][3]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316258][3]["RewardItem"][1]["Id"] = 3316213 -- 一次性餐具[3316213][属性:11][叠加:0][金币:0], 【表格】大排档碗筷
	tSummerActivityMainNpc_Reward[3316258][3]["RewardItem"][1]["Attr"] = "0 1" -- 一次性餐具*1
	tSummerActivityMainNpc_Reward[3316258][3]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316258][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316258][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 水果叉子 - 15%
	tSummerActivityMainNpc_Reward[3316258][4] = {}
	tSummerActivityMainNpc_Reward[3316258][4]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316258][4]["ItemChance"] = 1500
	tSummerActivityMainNpc_Reward[3316258][4]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316258][4]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316258][4]["RewardItem"][1]["Id"] = 3316214 -- 水果叉[3316214][属性:11][叠加:0][金币:0], 【表格】水果叉子
	tSummerActivityMainNpc_Reward[3316258][4]["RewardItem"][1]["Attr"] = "0 1" -- 水果叉*1
	tSummerActivityMainNpc_Reward[3316258][4]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316258][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316258][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 起瓶器 - 10%
	tSummerActivityMainNpc_Reward[3316258][5] = {}
	tSummerActivityMainNpc_Reward[3316258][5]["RandomItemChanceType"] = 2
	tSummerActivityMainNpc_Reward[3316258][5]["ItemChance"] = 1000
	tSummerActivityMainNpc_Reward[3316258][5]["RewardItem"] = {}
	tSummerActivityMainNpc_Reward[3316258][5]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Reward[3316258][5]["RewardItem"][1]["Id"] = 3316215 -- 启瓶器[3316215][属性:11][叠加:0][金币:0], 【表格】起瓶器
	tSummerActivityMainNpc_Reward[3316258][5]["RewardItem"][1]["Attr"] = "0 1" -- 启瓶器*1
	tSummerActivityMainNpc_Reward[3316258][5]["RewardEffect"] = {}
	tSummerActivityMainNpc_Reward[3316258][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Reward[3316258][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 【动态掩码（54508, data1）】全服限量:（150）, 超限给编号（1）-
	tSummerActivityMainNpc_Reward[3316258][5]["GlobalId"] = 54508
	tSummerActivityMainNpc_Reward[3316258][5]["Pos"] = 1
	tSummerActivityMainNpc_Reward[3316258][5]["MaxData"] = 150
	tSummerActivityMainNpc_Reward[3316258][5]["FullIndex"] = 1
	-- 【动态掩码（54508, data2）】单日限量:（50）, 超限给编号（1）-
	tSummerActivityMainNpc_Reward[3316258][5]["OtherPos"] = 2
	tSummerActivityMainNpc_Reward[3316258][5]["OtherMaxData"] = 50
	tSummerActivityMainNpc_Reward[3316258][5]["OtherFullIndex"] = 1


local tSummerActivityMainNpc_Get = {}
-- 使用显著贡献礼包
	tSummerActivityMainNpc_Get[1] = {}
	tSummerActivityMainNpc_Get[1]["LogId"] = 12001988
	tSummerActivityMainNpc_Get[1]["LogStep"] = " 1[1]"
	tSummerActivityMainNpc_Get[1]["RewardItem"] = {}
	tSummerActivityMainNpc_Get[1]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Get[1]["RewardItem"][1]["Id"] = 3316258  --建造材料礼包
	tSummerActivityMainNpc_Get[1]["RewardItem"][1]["Attr"] = "0 2"
	tSummerActivityMainNpc_Get[1]["RewardEffect"] = {}
	tSummerActivityMainNpc_Get[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Get[1]["RewardEffect"]["Effect"] = "angelwing"
	
-- 杀怪
	tSummerActivityMainNpc_Get[2] = {}
	tSummerActivityMainNpc_Get[2]["LogId"] = 12001988
	tSummerActivityMainNpc_Get[2]["LogStep"] = " 1[1]"
	tSummerActivityMainNpc_Get[2]["RewardItem"] = {}
	tSummerActivityMainNpc_Get[2]["RewardItem"][1] = {}
	tSummerActivityMainNpc_Get[2]["RewardItem"][1]["Id"] = 3316258  --建造材料礼包
	tSummerActivityMainNpc_Get[2]["RewardItem"][1]["Attr"] = "0 1"
	tSummerActivityMainNpc_Get[2]["RewardEffect"] = {}
	tSummerActivityMainNpc_Get[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSummerActivityMainNpc_Get[2]["RewardEffect"]["Effect"] = "angelwing"
	
local tSummerActivityMainNpc_Mail = {}
	--邮件action
	tSummerActivityMainNpc_Mail["Mail"] = {}
	tSummerActivityMainNpc_Mail["Mail"]["ExistDay"] = 7
	tSummerActivityMainNpc_Mail["Mail"]["Action"] = 577826
	
local tSummerActivityMainNpc_Log = {}
	tSummerActivityMainNpc_Log[1] = "0,0,3316216,1,12001988,1[3],0,0"
	-- 过期删除
	tSummerActivityMainNpc_Log["OverDue"] = "0,0,%d,%d,12001988,1[4],0,0"

----------------------------------逻辑部分---------------------------------------------
---判断是否是第一次点NPC
function SummerActivityMainNpc_ChkNpcDia(nNum)
	local nSummerActivityMainNpc_Event = tSummerActivityMainNpc_Stc[nNum]["EventType"]
	local nSummerActivityMainNpc_Type = tSummerActivityMainNpc_Stc[nNum]["DataType"]
	if Task_ChkStcValue(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,">",0)  then
		return true
	else
		return false
	end
end
---点选项 打掩码
function SummerActivityMainNpc_First(nNpcId)
	local nSummerActivityMainNpc_Event = tSummerActivityMainNpc_Stc[1]["EventType"]
	local nSummerActivityMainNpc_Type = tSummerActivityMainNpc_Stc[1]["DataType"]
	Task_SetStatistic(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,1,1)
	Task_SetStcTimestamp(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,0)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end
---
function SummerActivityMainNpc_Link(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-3")
end 
---判断是否有材料
function SummerActivityMainNpc_ChkItem(nNum) 
	local nItemId = tSummerActivityMainNpc_Data["Itemtype"][nNum]
	if Item_ChkItem(nItemId) then
		return true
	else
		return false
	end
end
function SummerActivityMainNpc_ChkUserItem()
	for nNum = 1,5 do
		if SummerActivityMainNpc_ChkItem(nNum) then
			return true
		end
	end
	return false
end

function SummerActivityMainNpc_TakeDai(nNpcId)
	if not SummerActivityMainNpc_ChkUserItem() then
		Sys_MsgBox(tSummerActivityMainNpc_Text[26578]["Msg"]["NoItem"])
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end
---上交物品 出对白
function SummerActivityMainNpc_TakeIn(nNpcId,nNum) 
	if not SummerActivityMainNpc_ChkItem(nNum) then
		Sys_MsgBox(tSummerActivityMainNpc_Text[26578]["Msg"]["NoItem"])
		return
	end
	local nItemId = tSummerActivityMainNpc_Data["Itemtype"][nNum]
	--物品数量
	-- local nItemNum = Get_CountItemType(nItemId,0)
	tNpcGossip[26578]["OptionFunc321"] = string.format("SummerActivityMainNpc_TakeInItem</N>26578</N>%d</N>1",nItemId)
	tNpcGossip[26578]["OptionFunc322"] = string.format("SummerActivityMainNpc_TakeInItem</N>26578</N>%d</N>5",nItemId)
	tNpcGossip[26578]["OptionFunc323"] = string.format("SummerActivityMainNpc_TakeInItemAll</N>26578</N>%d",nItemId)
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end

---上交物品获得奖励
function SummerActivityMainNpc_TakeInItem(nNpcId,nItemId,nItemNum)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) then
		return
	end
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		Sys_MsgBox(tSummerActivityMainNpc_Text[26578]["Msg"]["NoItem"])
		return
	end
	local tSummerActivityMainNpc_Tab = SummerActivityMainNpc_RewardTab(nNpcId,nItemId,nItemNum)
	--判断背包空间
	local nDelSpace = RewardTemplate_GetDelSpace(tSummerActivityMainNpc_Tab)
	local nAddSpace = RewardTemplate_GetRewardSpace(tSummerActivityMainNpc_Tab)
	local nSummerActivityMainNpc_Space = nAddSpace - nDelSpace
	if nSummerActivityMainNpc_Space > 0 and (not User_CheckLeftSpace(nSummerActivityMainNpc_Space)) then 
		Sys_MsgBox(string.format(tSummerActivityMainNpc_Text[26578]["Msg"]["NoSpace"],nSummerActivityMainNpc_Space))
		return
	end
	-- 打掩码 给奖励
	local nSummerActivityMainNpc_Event = tSummerActivityMainNpc_Stc[2]["EventType"]
	local nSummerActivityMainNpc_Type = tSummerActivityMainNpc_Stc[2]["DataType"]
	Task_SetStatistic(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,1,1)
	Task_SetStcTimestamp(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,0)
	--给奖励
	local BFlag,sRewardStr = RewardTemplate_UseItemAndMsg(tSummerActivityMainNpc_Tab)
	--出105
	local sItemName = Get_ItemtypeName(nItemId)
	local sSummerActivityMainNpc_Str = string.format(tSummerActivityMainNpc_Text[26578]["Msg"]["Exchange"],nItemNum,sItemName,sRewardStr)
	Sys_MsgBox(sSummerActivityMainNpc_Str)
end 

-- 全部提交对白初始
function SummerActivityMainNpc_AllTakeDialog(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) then
		return
	end
	
	-- 无物品
	if not SummerActivityMainNpc_ChkUserItem() then
		Sys_MsgBox(tSummerActivityMainNpc_Text[nNpcId]["Msg"]["NoItem"])
		return
	end
	
	-- 初始化对白
	for i,v in pairs(tSummerActivityMainNpc_Data["TextIndex"]) do
		local sSummerActivityMainNpc_Index = tSummerActivityMainNpc_Data["TextIndex"][i][1]
		local nSummerActivityMainNpc_BasicNum = tSummerActivityMainNpc_Data["TextIndex"][i][2]
		if Item_ChkItem(i) then
			local nSummerActivityMainNpc_ItemNum = Get_CountItemType(i,0)
			local sSummerActivityMainNpc_BasicText = tSummerActivityMainNpc_Text[nNpcId][sSummerActivityMainNpc_Index]
			tNpcGossip[nNpcId][sSummerActivityMainNpc_Index] = string.format(sSummerActivityMainNpc_BasicText,nSummerActivityMainNpc_ItemNum,nSummerActivityMainNpc_ItemNum*nSummerActivityMainNpc_BasicNum)
		else
			tNpcGossip[nNpcId][sSummerActivityMainNpc_Index] = ""
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-3")
end


-- 全部提交
function SummerActivityMainNpc_AllTakeIn(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) then
		return
	end
	
	-- 无物品
	if not SummerActivityMainNpc_ChkUserItem() then
		Sys_MsgBox(tSummerActivityMainNpc_Text[nNpcId]["Msg"]["NoItem"])
		return
	end
	
	-- 判断空间
	local tSummerActivityMainNpc_Tab = {}
	local tSummerActivityMainNpc_ItemNum = {}
	local nDelSpace = 0
	local nAddSpace = 0
	for i,v in pairs(tSummerActivityMainNpc_Data["Itemtype"]) do
		local nItemNum = Get_CountItemType(v,0)
		if nItemNum > 0 then
			tSummerActivityMainNpc_Tab[i] = SummerActivityMainNpc_RewardTab(nNpcId,v,nItemNum)
			nDelSpace = nDelSpace + RewardTemplate_GetDelSpace(tSummerActivityMainNpc_Tab[i])
			nAddSpace = nAddSpace + RewardTemplate_GetRewardSpace(tSummerActivityMainNpc_Tab[i])
			tSummerActivityMainNpc_ItemNum[i] = nItemNum
		end
	end
	
	--判断背包空间
	local nSummerActivityMainNpc_Space = nAddSpace - nDelSpace
	if nSummerActivityMainNpc_Space > 0 and (not User_CheckLeftSpace(nSummerActivityMainNpc_Space)) then 
		Sys_MsgBox(string.format(tSummerActivityMainNpc_Text[nNpcId]["Msg"]["NoSpace"],nSummerActivityMainNpc_Space))
		return
	end
	
	-- 打掩码 给奖励
	local nSummerActivityMainNpc_Event = tSummerActivityMainNpc_Stc[2]["EventType"]
	local nSummerActivityMainNpc_Type = tSummerActivityMainNpc_Stc[2]["DataType"]
	Task_SetStatistic(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,1,1)
	Task_SetStcTimestamp(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,0)
	
	for g,h in pairs(tSummerActivityMainNpc_Tab) do
		--给奖励
		h["RewardNoNeedTip"] = 1
		local BFlag,sRewardStr = RewardTemplate_UseItem(h)
		local sItemName = Get_ItemtypeName(tSummerActivityMainNpc_Data["Itemtype"][g])
		local sSummerActivityMainNpc_Str = string.format(tSummerActivityMainNpc_Text[nNpcId]["Msg"]["Exchange"],tSummerActivityMainNpc_ItemNum[g],sItemName,sRewardStr)
		User_TalkChannel2005(sSummerActivityMainNpc_Str)
	end
	Sys_MsgBox(tSummerActivityMainNpc_Text[nNpcId]["Msg"]["ExchangeALL"])
end

function SummerActivityMainNpc_RewardTab(nNpcId,nItemId,nItemNum)
	--重装表
	local tSummerActivityMainNpc_Tab = CommonFunc_Copy(tSummerActivityMainNpc_Reward[nItemId])
	local nSummerActivityMainNpc_AddNum = tSummerActivityMainNpc_Reward[nItemId]["AddNum"]* nItemNum
	tSummerActivityMainNpc_Tab["DeleteItem"][1]["ItemNum"] = nItemNum
	-- 修为值
	if nItemId == 3316214 then
		tSummerActivityMainNpc_Tab["RewardRepairValue"]["Value"] = nSummerActivityMainNpc_AddNum
	else
		tSummerActivityMainNpc_Tab["RewardItem"][1]["Attr"] = string.format(tSummerActivityMainNpc_Reward[nItemId]["RewardItem"][1]["Attr"],nSummerActivityMainNpc_AddNum)
	end
	return tSummerActivityMainNpc_Tab
end 


---上交所有的材料
function SummerActivityMainNpc_TakeInItemAll(nNpcId,nItemId)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) then
		return
	end
	if not Item_ChkItem(nItemId) then
		Sys_MsgBox(tSummerActivityMainNpc_Text[26578]["Msg"]["NoItem"])
		return
	end
	local nItemNum = Get_CountItemType(nItemId,0)
	SummerActivityMainNpc_TakeInItem(nNpcId,nItemId,nItemNum)
end 


------------材料获得
function SummerActivityMainNpc_GetItem(nNum)
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) then
		return
	end
	--背包空间判断
	if not RewardTemplate_CheckSpace(tSummerActivityMainNpc_Get[nNum]) then
		return
	end
	RewardTemplate_UseItemAndMsg(tSummerActivityMainNpc_Get[nNum])
end
--杀怪逻辑
function SummerActivityMainNpc_KillMonster()
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) then
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) then
		return
	end
	---掩码判断
	local nSummerActivityMainNpc_Event = tSummerActivityMainNpc_Stc[3]["EventType"]
	local nSummerActivityMainNpc_Type = tSummerActivityMainNpc_Stc[3]["EventType"]
 --隔天清零
	if Task_StcInterval(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,1,4) then 
		Task_SetStatistic(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,0,1)
		Task_SetStcTimestamp(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,0)
	end
	local nSummerActivityMainNpc_Limit = tSummerActivityMainNpc_Data["Limit"]
	if Task_ChkStcValue(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,">=",nSummerActivityMainNpc_Limit)  then
		return
	end
	
	--背包空间判断
	if not RewardTemplate_CheckSpace(tSummerActivityMainNpc_Get[2]) then
		return
	end
	
	if Sys_Random(tSummerActivityMainNpc_Data["Min"],tSummerActivityMainNpc_Data["Max"]) then
		--加掩码
		Task_AddStatistic(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,1,1)
		Task_SetStcTimestamp(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,0)
		if Task_ChkStcValue(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,">=",nSummerActivityMainNpc_Limit) then
			Sys_MsgBox(tSummerActivityMainNpc_Text["DropLimit"])
		end 
		---给奖励
		RewardTemplate_UseItemAndMsg(tSummerActivityMainNpc_Get[2])
	end
end


function SummerActivityMainNpc_Login()
	if not Sys_ChkFullTime(tActivityTime["SummerActive"]["ActivityTime"] ) then
		return
	end
	--判断玩家是否有参与过预热活动
	local nSummerActivityMainNpc_Event = tSummerActivityMainNpc_Stc[2]["EventType"]
	local nSummerActivityMainNpc_Type = tSummerActivityMainNpc_Stc[2]["DataType"]
	--领过奖励
	if Task_ChkStcValue(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,">=",2)  then
		return
	end
	-- 没参与过
	if Task_ChkStcValue(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,"<=",0)  then
		return
	end
	--打掩码领取奖励
	Task_SetStatistic(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,2,1)
	Task_SetStcTimestamp(nSummerActivityMainNpc_Event,nSummerActivityMainNpc_Type,0)
	--邮件
	local nExistDay = tSummerActivityMainNpc_Mail["Mail"]["ExistDay"]
	local nActionId = tSummerActivityMainNpc_Mail["Mail"]["Action"]
	local sSender = tSummerActivityMainNpc_Text[26578]["Mail"]["Sender"]
	local sTitle = tSummerActivityMainNpc_Text[26578]["Mail"]["Title"]
	local sContent = tSummerActivityMainNpc_Text[26578]["Mail"]["Content"]
	local nSummerActivityMainNpc_UserId = Get_UserId()
	Sys_SendMail(nSummerActivityMainNpc_UserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)

end

----------------------------------NPC部分---------------------------------------------
tNpcFace[6258] = 46
tNpcGossip[26578]= tNpcGossip[26578] or DefaultNpc:new{}
tNpcGossip[26578]["OptionHidden"] = 1
tNpcGossip[26578]["DialogueText"] = tSummerActivityMainNpc_Text[26578]
-- 首次对白
tNpcGossip[26578]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[26578]["tOption1-1"] = {111}
tNpcGossip[26578]["OptionFunc111"] = "SummerActivityMainNpc_First</N>26578"  
tNpcGossip[26578]["ChkFunc1-1"]= function()
	return Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) and not SummerActivityMainNpc_ChkNpcDia(1)
end
-- 二次之后对白
tNpcGossip[26578]["Text1-2"] = {121,122,123,124,125,126,127,128,129,130,131,132,133,134,135}
tNpcGossip[26578]["tOption1-2"] = {123}
tNpcGossip[26578]["ChkFunc1-2"]= function()
	return not User_JudgeLevelAndMetempsychosis(tSummerActivityMainNpc_Data["Level"],tSummerActivityMainNpc_Data["Metempsychosis"]) and SummerActivityMainNpc_ChkNpcDia(1)
end

tNpcGossip[26578]["Text1-3"] = {121,122,123,124,125,126,127,128,129,130,131,132,133,134,135}
tNpcGossip[26578]["tOption1-3"] = {121,122}
-- tNpcGossip[26578]["OptionPoint121"] = "3-1"
tNpcGossip[26578]["OptionFunc121"] = "SummerActivityMainNpc_TakeDai</N>26578"  
tNpcGossip[26578]["ChkFunc1-3"]= function()
	return Sys_ChkFullTime(tActivityTime["SummerActive"]["Preheat"]) and SummerActivityMainNpc_ChkNpcDia(1)
end

-- 接、吩咐便是
tNpcGossip[26578]["Text2-1"] = {211,212}
tNpcGossip[26578]["tOption2-1"] = {211}
tNpcGossip[26578]["OptionFunc211"] = "SummerActivityMainNpc_Link</N>26578"  
-- 接1、提交建造材料
tNpcGossip[26578]["Text3-1"] = {311}
tNpcGossip[26578]["tOption3-1"] = {311,312,313,314,315,316}
tNpcGossip[26578]["OptionFunc311"] = "SummerActivityMainNpc_TakeIn</N>26578</N>1"  
tNpcGossip[26578]["OptionChkFunc311"]= function()
	return SummerActivityMainNpc_ChkItem(1) 
end
tNpcGossip[26578]["OptionFunc312"] = "SummerActivityMainNpc_TakeIn</N>26578</N>2"  
tNpcGossip[26578]["OptionChkFunc312"]= function()
	return SummerActivityMainNpc_ChkItem(2) 
end
tNpcGossip[26578]["OptionFunc313"] = "SummerActivityMainNpc_TakeIn</N>26578</N>3"  
tNpcGossip[26578]["OptionChkFunc313"]= function()
	return SummerActivityMainNpc_ChkItem(3) 
end
tNpcGossip[26578]["OptionFunc314"] = "SummerActivityMainNpc_TakeIn</N>26578</N>4"  
tNpcGossip[26578]["OptionChkFunc314"]= function()
	return SummerActivityMainNpc_ChkItem(4) 
end
tNpcGossip[26578]["OptionFunc315"] = "SummerActivityMainNpc_TakeIn</N>26578</N>5"  
tNpcGossip[26578]["OptionChkFunc315"]= function()
	return SummerActivityMainNpc_ChkItem(5) 
end
-- 全部提交
tNpcGossip[26578]["OptionFunc316"] = "SummerActivityMainNpc_AllTakeDialog</N>26578"
  


-- -- 接1~5 【道具名】
tNpcGossip[26578]["Text3-2"] = {321}
tNpcGossip[26578]["tOption3-2"] = {321,322,323}
tNpcGossip[26578]["OptionFunc321"] = "SummerActivityMainNpc_TakeInItem</N>26578</N>3316211</N>1"  
tNpcGossip[26578]["OptionFunc322"] = "SummerActivityMainNpc_TakeInItem</N>26578</N>3316211</N>5"  
tNpcGossip[26578]["OptionFunc323"] = "SummerActivityMainNpc_TakeInItemAll</N>26578</N>3316211"  

-- 全部提交
tNpcGossip[26578]["Text3-3"] = {331,332,333,334,335,336,337,338,339}
tNpcGossip[26578]["tOption3-3"] = {331,332}
-- 6-1、确认提交
tNpcGossip[26578]["OptionFunc331"] = "SummerActivityMainNpc_AllTakeIn</N>26578"
-- 6-2、暂不提交
tNpcGossip[26578]["OptionPoint332"] = 1


-- 接2、查看仲夏积分排行
tNpcGossip[26578]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422,423,412}
tNpcGossip[26578]["tOption4-1"] = {411,412}

-- 接2、查看排行奖励
tNpcGossip[26578]["Text5-1"] = {511,512,513,514,515,516,517,518}
tNpcGossip[26578]["tOption5-1"] = {511}

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3316211] = tItem[3316211] or {}
tItem[3316211]["Function"] = function(nItemId,sItemName)
	NpcPosition_PathFind(26578) 
end
tItem[3316211]["Time"] = tActivityTime["SummerActive"]["Preheat"]

tItem[3316212] = tItem[3316211] or {}
tItem[3316212]["Time"] = tActivityTime["SummerActive"]["Preheat"]

tItem[3316213] = tItem[3316211] or {}
tItem[3316213]["Time"] = tActivityTime["SummerActive"]["Preheat"]

tItem[3316214] = tItem[3316211] or {}
tItem[3316214]["Time"] = tActivityTime["SummerActive"]["Preheat"]

tItem[3316215] = tItem[3316211] or {}
tItem[3316215]["Time"] = tActivityTime["SummerActive"]["Preheat"]
---电池
-- tItem[3316216] = tItem[3316216] or {}
-- tItem[3316216]["Function"] = function(nItemId,sItemName)
	-- if not Item_ChkItem(nItemId) then
		-- return
	-- end
	-- if not Item_DelItem(nItemId) then
		-- return
	-- end
	-- SummerActivityOrder_AddOrderTimes(1)
	-- User_TalkChannel2005(tSummerActivityMainNpc_Text[26578]["Msg"]["Add"])
	-- --打log
	-- Sys_SaveActionRewardLog(tSummerActivityMainNpc_Log[1])
-- end
-- tItem[3316216]["Time"] = tActivityTime["SummerActive"]["ActivityTime"]

tItem[3316217] = tItem[3316217] or {}
tItem[3316217]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end

	---判断玩家转世
	local nSummerActivityMainNpc_UserId = Get_UserId()
	local nSummerActivityMainNpc_UserMet = Get_UserMetempsychosis(nSummerActivityMainNpc_UserId)
	local nSummerActivityMainNpc_nNum = 2
	-- 二转以上走1表
	if nSummerActivityMainNpc_UserMet >= tSummerActivityMainNpc_Data["MetempsyTwo"] then
		nSummerActivityMainNpc_nNum = 1
	end
	--判断背包空间
	if not RewardTemplate_ChkRandomSpace(tSummerActivityMainNpc_Reward[nItemId],nSummerActivityMainNpc_nNum) then
		return
	end
	RewardTemplate_RandomReward(tSummerActivityMainNpc_Reward[nItemId],nSummerActivityMainNpc_nNum)
end

tItem[3316258] = tItem[3316258] or {}
tItem[3316258]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--判断背包空间
	if not RewardTemplate_ChkRandomSpace(tSummerActivityMainNpc_Reward,3316258) then
		return
	end
	 RewardTemplate_RandomReward(tSummerActivityMainNpc_Reward,3316258)
end
tItem[3316258]["Time"] = tActivityTime["SummerActive"]["Preheat"]
---------------------------------怪物部分---------------------------------------------
-- 击杀神龙岛跟古神灵境 小怪掉落（普通服）
local tSummerActivityMainNpc_Monster = {}
	tSummerActivityMainNpc_Monster["ActivityTime"] = tActivityTime["SummerActive"]["Preheat"]
	tSummerActivityMainNpc_Monster["Function"] = SummerActivityMainNpc_KillMonster
	tSummerActivityMainNpc_Monster["MonsterId"] = {6299,3973,3974,3975,3979,3980,3981,3982,3983,3984,3985,3986,3992,4709,4710,4711,4712,4713,4720,4912,4935,5747,8415,8420,3967,3968,3969,4151}
	table.insert(tMonsterDrop_AreaLoad,tSummerActivityMainNpc_Monster)
-- 击杀噩梦回廊怪物掉落（激情服）
local tSummerActivityMainNpc_Monster_NoGift = {}
	tSummerActivityMainNpc_Monster_NoGift["ActivityTime"] = tActivityTime["SummerActive"]["Preheat"]
	tSummerActivityMainNpc_Monster_NoGift["Function"] = SummerActivityMainNpc_KillMonster
	tSummerActivityMainNpc_Monster_NoGift["MonsterId"] = {5018,5019,5020,5021,5022,5023,5024,5025,5026,5027,5028,5029,5030,5031,5032,5033,5034,5035,5036,5278,5279,5280,5281,5282,5283,5284,5285,5286,5287,5288,5289,5290,5291,5292,5293,5294,5295,5296,5309,5310,5311,5312,5313,5314,5315,5316,5317,5318,5319,5320,5321,5322,5323,5324,5325,5326,5327,5339,5340,5341,5342,5343,5344,5345,5346,5347,5348,5349,5350,5351,5352,5353,5354,5747}
	table.insert(tMonsterDrop_AreaLoad_NoGift,tSummerActivityMainNpc_Monster_NoGift)

-- 限量删除
tGlobalData_Info[54508] = {}
tGlobalData_Info[54508]["Time"] = {}
tGlobalData_Info[54508]["Time"]["ActivityTime"] = tActivityTime["SummerActive"]["Preheat"]
tGlobalData_Info[54508]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54508]["Rest"] = {}
tGlobalData_Info[54508]["Rest"]["GlobalId"] = {54508}
tGlobalData_Info[54508]["Rest"]["Pos"] = {2}

--上线触发
table.insert(tSystem_PlayLogin_Func,SummerActivityMainNpc_Login)