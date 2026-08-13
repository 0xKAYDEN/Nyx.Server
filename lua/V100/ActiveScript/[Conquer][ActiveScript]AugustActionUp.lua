------------------------------------------------------------------------------------
--Name:			190705[英文征服][活动脚本]8月发奖id第一期（7.25）
--Creator: 		茅志伟
--Created:		2019/06/11
------------------------------------------------------------------------------------

-- 命名前缀  tAugustActionUp_

-- lua.ini = 41385
-- 41385 = V100\ActiveScript\[Conquer][ActiveScript]AugustActionUp.lua
-- 41385 = V100\活动脚本\[征服][活动脚本]8月发奖id第一期（7.25）.lua
-- LogId = 12001502

-- emoneybuylog = 100000624

local tAugustActionUp_Pack = {}
	-- ===神纹源晶随机包
	-- ===索引: tAugustActionUp_Pack[3322338]
	-- ===删除:3322338,1
	-- ===
	tAugustActionUp_Pack[3322338] = {}
	tAugustActionUp_Pack[3322338]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAugustActionUp_Pack[3322338]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322338]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322338]["DeleteItem"][1]["Id"] = 3322338 -- 【库】 3322338 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322338]["LogId"] = 12001502
	-- 赠神纹源晶*2（赠） - 45.00%
	tAugustActionUp_Pack[3322338][1] = {}
	tAugustActionUp_Pack[3322338][1]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322338][1]["ItemChance"] = 4500
	tAugustActionUp_Pack[3322338][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322338][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322338][1]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠神纹源晶*2（赠）
	tAugustActionUp_Pack[3322338][1]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tAugustActionUp_Pack[3322338][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322338][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322338][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠神纹源晶*3（赠） - 45.00%
	tAugustActionUp_Pack[3322338][2] = {}
	tAugustActionUp_Pack[3322338][2]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322338][2]["ItemChance"] = 4500
	tAugustActionUp_Pack[3322338][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322338][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322338][2]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠神纹源晶*3（赠）
	tAugustActionUp_Pack[3322338][2]["RewardItem"][1]["Attr"] = "0 3 3" -- RuneCrystal（赠）*3
	tAugustActionUp_Pack[3322338][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322338][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322338][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠神纹源晶*5（赠） - 10.00%
	tAugustActionUp_Pack[3322338][3] = {}
	tAugustActionUp_Pack[3322338][3]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322338][3]["ItemChance"] = 1000
	tAugustActionUp_Pack[3322338][3]["RewardItem"] = {}
	tAugustActionUp_Pack[3322338][3]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322338][3]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠神纹源晶*5（赠）
	tAugustActionUp_Pack[3322338][3]["RewardItem"][1]["Attr"] = "0 5 3" -- RuneCrystal（赠）*5
	tAugustActionUp_Pack[3322338][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322338][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322338][3]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322339] = {}
	-- ===天石（赠）随机包
	-- ===索引: tAugustActionUp_Pack[3322339]
	-- ===删除:3322339,1
	-- ===
	tAugustActionUp_Pack[3322339]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAugustActionUp_Pack[3322339]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322339]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322339]["DeleteItem"][1]["Id"] = 3322339 -- 【库】 3322339 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322339]["LogId"] = 12001502
	-- 300天石（赠） - 45.00%
	tAugustActionUp_Pack[3322339][1] = {}
	tAugustActionUp_Pack[3322339][1]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322339][1]["ItemChance"] = 4500
	tAugustActionUp_Pack[3322339][1]["RewardEMoneyMono"] = {}
	tAugustActionUp_Pack[3322339][1]["RewardEMoneyMono"]["Value"] = 300 -- 天石（赠）, 【需求】300天石（赠）
	tAugustActionUp_Pack[3322339][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322339][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322339][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322339][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 600天石（赠） - 45.00%
	tAugustActionUp_Pack[3322339][2] = {}
	tAugustActionUp_Pack[3322339][2]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322339][2]["ItemChance"] = 4500
	tAugustActionUp_Pack[3322339][2]["RewardEMoneyMono"] = {}
	tAugustActionUp_Pack[3322339][2]["RewardEMoneyMono"]["Value"] = 600 -- 天石（赠）, 【需求】600天石（赠）
	tAugustActionUp_Pack[3322339][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322339][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322339][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322339][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 900天石（赠） - 10.00%
	tAugustActionUp_Pack[3322339][3] = {}
	tAugustActionUp_Pack[3322339][3]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322339][3]["ItemChance"] = 1000
	tAugustActionUp_Pack[3322339][3]["RewardEMoneyMono"] = {}
	tAugustActionUp_Pack[3322339][3]["RewardEMoneyMono"]["Value"] = 900 -- 天石（赠）, 【需求】900天石（赠）
	tAugustActionUp_Pack[3322339][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322339][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322339][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322339][3]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322340] = {}
	-- ===珍宝随机包
	-- ===索引: tAugustActionUp_Pack[3322340]
	-- ===删除:3322340,1
	-- ===
	tAugustActionUp_Pack[3322340]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tAugustActionUp_Pack[3322340]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322340]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322340]["DeleteItem"][1]["Id"] = 3322340 -- 【库】 3322340 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322340]["LogId"] = 12001502
	-- 万能神纹精粹*50 - 35.00%
	tAugustActionUp_Pack[3322340][1] = {}
	tAugustActionUp_Pack[3322340][1]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322340][1]["ItemChance"] = 3500
	tAugustActionUp_Pack[3322340][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322340][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322340][1]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*50
	tAugustActionUp_Pack[3322340][1]["RewardItem"][1]["Attr"] = "0 50" -- UniversalRuneEssence*50
	tAugustActionUp_Pack[3322340][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322340][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322340][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石（赠） - 30.00%
	tAugustActionUp_Pack[3322340][2] = {}
	tAugustActionUp_Pack[3322340][2]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322340][2]["ItemChance"] = 3000
	tAugustActionUp_Pack[3322340][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322340][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322340][2]["RewardItem"][1]["Id"] = 3300762 -- 500CP(B)Pack[3300762][属性:9][叠加:1][金币:0], 【表格】1000天石（赠）
	tAugustActionUp_Pack[3322340][2]["RewardItem"][1]["Attr"] = "0 2 3" -- 500CP(B)Pack（赠）*2
	tAugustActionUp_Pack[3322340][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322340][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322340][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 晶莹星陨石*2 - 10.00%
	tAugustActionUp_Pack[3322340][3] = {}
	tAugustActionUp_Pack[3322340][3]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322340][3]["ItemChance"] = 1000
	tAugustActionUp_Pack[3322340][3]["RewardItem"] = {}
	tAugustActionUp_Pack[3322340][3]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322340][3]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tAugustActionUp_Pack[3322340][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tAugustActionUp_Pack[3322340][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322340][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322340][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赤炼石+5（赠） - 10.00%
	tAugustActionUp_Pack[3322340][4] = {}
	tAugustActionUp_Pack[3322340][4]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322340][4]["ItemChance"] = 1000
	tAugustActionUp_Pack[3322340][4]["RewardItem"] = {}
	tAugustActionUp_Pack[3322340][4]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322340][4]["RewardItem"][1]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tAugustActionUp_Pack[3322340][4]["RewardItem"][1]["Attr"] = "0 1 3" -- +5Stone（赠）*1
	tAugustActionUp_Pack[3322340][4]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322340][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322340][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 6级灵珠 - 15.00%
	tAugustActionUp_Pack[3322340][5] = {}
	tAugustActionUp_Pack[3322340][5]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322340][5]["ItemChance"] = 1500
	tAugustActionUp_Pack[3322340][5]["RewardItem"] = {}
	tAugustActionUp_Pack[3322340][5]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322340][5]["RewardItem"][1]["Id"] = 4200006 -- P6Anima[4200006][属性:72][叠加:99][金币:0], 【表格】6级灵珠
	tAugustActionUp_Pack[3322340][5]["RewardItem"][1]["Attr"] = "0 1" -- P6Anima*1
	tAugustActionUp_Pack[3322340][5]["RewardItem"][1]["PreciousType"] = 314 -- =301//重铸活动获得=302//融合活动获得=303//冶炼活动获得=304//灵珠塔活动获得=305//龙冢试炼获得=306//熔炼炉获得=307//其他LUA获得
	tAugustActionUp_Pack[3322340][5]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322340][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322340][5]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322341] = {}
	-- ===天下巨富礼盒
	-- ===索引: tAugustActionUp_Pack[3322341]
	-- ===删除:3322341,1
	-- ===
	tAugustActionUp_Pack[3322341]["LogId"] = 12001502
	tAugustActionUp_Pack[3322341]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322341]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322341]["DeleteItem"][1]["Id"] = 3322341 -- 【库】 3322341 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322341]["RewardItem"] = {}
	tAugustActionUp_Pack[3322341]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322341]["RewardItem"][1]["Id"] = 3322092 --  3322345 【库里没有该物品】, 【表格】称号三选一礼包（赠）
	tAugustActionUp_Pack[3322341]["RewardItem"][1]["Attr"] = "0 1" --  3322345 【库里没有该物品】（赠）*1
	tAugustActionUp_Pack[3322341]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322341]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*300
	tAugustActionUp_Pack[3322341]["RewardItem"][2]["Attr"] = "0 300" -- UniversalRuneEssence*300
	tAugustActionUp_Pack[3322341]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322341]["RewardItem"][3]["Id"] = 711903 -- ChiBooster(+1)[711903][属性:9][叠加:100][金币:0], 【表格】练气+1券（赠）
	tAugustActionUp_Pack[3322341]["RewardItem"][3]["Attr"] = "0 1" -- ChiBooster(+1)*1
	tAugustActionUp_Pack[3322341]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322341]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322341]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322342] = {}
	-- ===富甲一方礼盒
	-- ===索引: tAugustActionUp_Pack[3322342]
	-- ===删除:3322342,1
	-- ===
	tAugustActionUp_Pack[3322342]["LogId"] = 12001502
	tAugustActionUp_Pack[3322342]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322342]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322342]["DeleteItem"][1]["Id"] = 3322342 -- 【库】 3322342 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322342]["RewardItem"] = {}
	tAugustActionUp_Pack[3322342]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322342]["RewardItem"][1]["Id"] = 3322093 --  3322346 【库里没有该物品】, 【表格】称号二选一礼包（赠）
	tAugustActionUp_Pack[3322342]["RewardItem"][1]["Attr"] = "0 1" --  3322346 【库里没有该物品】（赠）*1
	tAugustActionUp_Pack[3322342]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322342]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*200
	tAugustActionUp_Pack[3322342]["RewardItem"][2]["Attr"] = "0 200" -- UniversalRuneEssence*200
	tAugustActionUp_Pack[3322342]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322342]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322342]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322343] = {}
	-- ===腰缠万贯礼盒
	-- ===索引: tAugustActionUp_Pack[3322343]
	-- ===删除:3322343,1
	-- ===
	tAugustActionUp_Pack[3322343]["LogId"] = 12001502
	tAugustActionUp_Pack[3322343]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322343]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322343]["DeleteItem"][1]["Id"] = 3322343 -- 【库】 3322343 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322343]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322343]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】永久Millionaire称号
	tAugustActionUp_Pack[3322343]["RewardTitle"]["TitleId"] = 2136
	-- tAugustActionUp_Pack[3322343]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Millionaire , 【需求】永久Millionaire称号
	tAugustActionUp_Pack[3322343]["RewardItem"] = {}
	tAugustActionUp_Pack[3322343]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322343]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100
	tAugustActionUp_Pack[3322343]["RewardItem"][1]["Attr"] = "0 100" -- UniversalRuneEssence*100
	tAugustActionUp_Pack[3322343]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322343]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322343]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322344] = {}
	-- ===快乐小资礼盒
	-- ===索引: tAugustActionUp_Pack[3322344]
	-- ===删除:3322344,1
	-- ===
	tAugustActionUp_Pack[3322344]["LogId"] = 12001502
	tAugustActionUp_Pack[3322344]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322344]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322344]["DeleteItem"][1]["Id"] = 3322344 -- 【库】 3322344 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322344]["RewardItem"] = {}
	tAugustActionUp_Pack[3322344]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322344]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*10
	tAugustActionUp_Pack[3322344]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的RadiantStarStone*10
	tAugustActionUp_Pack[3322344]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322344]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*50
	tAugustActionUp_Pack[3322344]["RewardItem"][2]["Attr"] = "0 50" -- UniversalRuneEssence*50
	tAugustActionUp_Pack[3322344]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322344]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322344]["RewardEffect"]["Effect"] = "angelwing"


	-- -- ===永久称号3选1包
	-- -- ===索引: tAugustActionUp_Pack[3322345][1]
	-- -- ===删除:3322345,1
	-- -- ===
	-- tAugustActionUp_Pack[3322345] = {}
	-- tAugustActionUp_Pack[3322345][1] = {}
	-- tAugustActionUp_Pack[3322345][1]["LogId"] = 12001502
	-- tAugustActionUp_Pack[3322345][1]["DeleteItem"] = {}
	-- tAugustActionUp_Pack[3322345][1]["DeleteItem"][1] = {}
	-- tAugustActionUp_Pack[3322345][1]["DeleteItem"][1]["Id"] = 3322345 -- 【库】 3322345 【库里没有该物品】[属性:]
-- --（数量）	tAugustActionUp_Pack[3322345][1]["RewardTitle"] = {}
-- --（数量）	tAugustActionUp_Pack[3322345][1]["RewardTitle"]["TitleType"] = 2134 -- 【库】Tycoon, 【表格】永久Tycoon称号
-- --（数量）	tAugustActionUp_Pack[3322345][1]["RewardTitle"]["TitleId"] = 2134
-- --（数量）	tAugustActionUp_Pack[3322345][1]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Tycoon, 【需求】永久Tycoon称号
	-- tAugustActionUp_Pack[3322345][1]["RewardEffect"] = {}
	-- tAugustActionUp_Pack[3322345][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAugustActionUp_Pack[3322345][1]["RewardEffect"]["Effect"] = "angelwing"


	-- tAugustActionUp_Pack[3322345] = {}
	-- -- ===永久称号3选1包
	-- -- ===索引: tAugustActionUp_Pack[3322345][2]
	-- -- ===删除:3322345,1
	-- -- ===
	-- tAugustActionUp_Pack[3322345][2] = {}
	-- tAugustActionUp_Pack[3322345][2]["LogId"] = 12001502
	-- tAugustActionUp_Pack[3322345][2]["DeleteItem"] = {}
	-- tAugustActionUp_Pack[3322345][2]["DeleteItem"][1] = {}
	-- tAugustActionUp_Pack[3322345][2]["DeleteItem"][1]["Id"] = 3322345 -- 【库】 3322345 【库里没有该物品】[属性:]
-- --（数量）	tAugustActionUp_Pack[3322345][2]["RewardTitle"] = {}
-- --（数量）	tAugustActionUp_Pack[3322345][2]["RewardTitle"]["TitleType"] = 2135 -- 【库】Magnifico, 【表格】永久Magnifico称号
-- --（数量）	tAugustActionUp_Pack[3322345][2]["RewardTitle"]["TitleId"] = 2135
-- --（数量）	tAugustActionUp_Pack[3322345][2]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Magnifico, 【需求】永久Magnifico称号
	-- tAugustActionUp_Pack[3322345][2]["RewardEffect"] = {}
	-- tAugustActionUp_Pack[3322345][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAugustActionUp_Pack[3322345][2]["RewardEffect"]["Effect"] = "angelwing"


	-- tAugustActionUp_Pack[3322345][3] = {}
	-- -- ===永久称号3选1包
	-- -- ===索引: tAugustActionUp_Pack[3322345][3]
	-- -- ===删除:3322345,1
	-- -- ===
	-- tAugustActionUp_Pack[3322345][3]["LogId"] = 12001502
	-- tAugustActionUp_Pack[3322345][3]["DeleteItem"] = {}
	-- tAugustActionUp_Pack[3322345][3]["DeleteItem"][1] = {}
	-- tAugustActionUp_Pack[3322345][3]["DeleteItem"][1]["Id"] = 3322345 -- 【库】 3322345 【库里没有该物品】[属性:]
-- --（数量）	tAugustActionUp_Pack[3322345][3]["RewardTitle"] = {}
-- --（数量）	tAugustActionUp_Pack[3322345][3]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】永久Millionaire称号
-- --（数量）	tAugustActionUp_Pack[3322345][3]["RewardTitle"]["TitleId"] = 2136
-- --（数量）	tAugustActionUp_Pack[3322345][3]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Millionaire , 【需求】永久Millionaire称号
	-- tAugustActionUp_Pack[3322345][3]["RewardEffect"] = {}
	-- tAugustActionUp_Pack[3322345][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAugustActionUp_Pack[3322345][3]["RewardEffect"]["Effect"] = "angelwing"


	-- tAugustActionUp_Pack[3322346] = {}
	-- -- ===永久称号2选1包
	-- -- ===索引: tAugustActionUp_Pack[3322346][1]
	-- -- ===删除:3322346,1
	-- -- ===
	-- tAugustActionUp_Pack[3322346][1] = {}
	-- tAugustActionUp_Pack[3322346][1]["LogId"] = 12001502
	-- tAugustActionUp_Pack[3322346][1]["DeleteItem"] = {}
	-- tAugustActionUp_Pack[3322346][1]["DeleteItem"][1] = {}
	-- tAugustActionUp_Pack[3322346][1]["DeleteItem"][1]["Id"] = 3322346 -- 【库】 3322346 【库里没有该物品】[属性:]
-- --（数量）	tAugustActionUp_Pack[3322346][1]["RewardTitle"] = {}
-- --（数量）	tAugustActionUp_Pack[3322346][1]["RewardTitle"]["TitleType"] = 2135 -- 【库】Magnifico, 【表格】永久Magnifico称号
-- --（数量）	tAugustActionUp_Pack[3322346][1]["RewardTitle"]["TitleId"] = 2135
-- --（数量）	tAugustActionUp_Pack[3322346][1]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Magnifico, 【需求】永久Magnifico称号
	-- tAugustActionUp_Pack[3322346][1]["RewardEffect"] = {}
	-- tAugustActionUp_Pack[3322346][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAugustActionUp_Pack[3322346][1]["RewardEffect"]["Effect"] = "angelwing"


	-- tAugustActionUp_Pack[3322346][2] = {}
	-- -- ===永久称号2选1包
	-- -- ===索引: tAugustActionUp_Pack[3322346][2]
	-- -- ===删除:3322346,1
	-- -- ===
	-- tAugustActionUp_Pack[3322346][2]["LogId"] = 12001502
	-- tAugustActionUp_Pack[3322346][2]["DeleteItem"] = {}
	-- tAugustActionUp_Pack[3322346][2]["DeleteItem"][1] = {}
	-- tAugustActionUp_Pack[3322346][2]["DeleteItem"][1]["Id"] = 3322346 -- 【库】 3322346 【库里没有该物品】[属性:]
-- --（数量）	tAugustActionUp_Pack[3322346][2]["RewardTitle"] = {}
-- --（数量）	tAugustActionUp_Pack[3322346][2]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】永久Millionaire称号 
-- --（数量）	tAugustActionUp_Pack[3322346][2]["RewardTitle"]["TitleId"] = 2136
-- --（数量）	tAugustActionUp_Pack[3322346][2]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:Millionaire , 【需求】永久Millionaire称号 
	-- tAugustActionUp_Pack[3322346][2]["RewardEffect"] = {}
	-- tAugustActionUp_Pack[3322346][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tAugustActionUp_Pack[3322346][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322347] = {}
	-- ===抢金之王礼盒
	-- ===索引: tAugustActionUp_Pack[3322347]
	-- ===删除:3322347,1
	-- ===
	tAugustActionUp_Pack[3322347]["LogId"] = 12001502
	tAugustActionUp_Pack[3322347]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322347]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322347]["DeleteItem"][1]["Id"] = 3322347 -- 【库】 3322347 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322347]["RewardItem"] = {}
	tAugustActionUp_Pack[3322347]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322347]["RewardItem"][1]["Id"] = 3319014 -- +2RandomRareYellowRunePack(B)[3319014][属性:9][叠加:0][金币:0], 【表格】（+2）稀有黄色神纹随机包（赠）
	tAugustActionUp_Pack[3322347]["RewardItem"][1]["Attr"] = "0 1" -- +2RandomRareYellowRunePack(B)*1
	tAugustActionUp_Pack[3322347]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322347]["RewardItem"][2]["Id"] = 3307136 -- 20000CPs(B)Pack[3307136][属性:11][叠加:0][金币:0], 【表格】赠品天石20000（赠）
	tAugustActionUp_Pack[3322347]["RewardItem"][2]["Attr"] = "0 1" -- 20000CPs(B)Pack*1
	tAugustActionUp_Pack[3322347]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322347]["RewardItem"][3]["Id"] = 3322427 -- 90DTitleSelectionBag(1of3)[3322427][属性:9][叠加:0][金币:0], 【表格】90天称号 三选一（赠）
	tAugustActionUp_Pack[3322347]["RewardItem"][3]["Attr"] = "0 1" -- 90DTitleSelectionBag(1of3)*1
	tAugustActionUp_Pack[3322347]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322347]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322347]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322348] = {}
	-- ===吸金明星礼盒
	-- ===索引: tAugustActionUp_Pack[3322348]
	-- ===删除:3322348,1
	-- ===
	tAugustActionUp_Pack[3322348]["LogId"] = 12001502
	tAugustActionUp_Pack[3322348]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322348]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322348]["DeleteItem"][1]["Id"] = 3322348 -- 【库】 3322348 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322348]["RewardItem"] = {}
	tAugustActionUp_Pack[3322348]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322348]["RewardItem"][1]["Id"] = 3319013 -- RareRandomYellowRunePack(B)[3319013][属性:9][叠加:0][金币:0], 【表格】（+1）稀有黄色神纹随机包（赠）
	tAugustActionUp_Pack[3322348]["RewardItem"][1]["Attr"] = "0 1" -- RareRandomYellowRunePack(B)*1
	tAugustActionUp_Pack[3322348]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322348]["RewardItem"][2]["Id"] = 3200570 -- 15000CPs(B)Pack[3200570][属性:11][叠加:0][金币:0], 【表格】赠品天石15000（赠）
	tAugustActionUp_Pack[3322348]["RewardItem"][2]["Attr"] = "0 1" -- 15000CPs(B)Pack*1
	tAugustActionUp_Pack[3322348]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322348]["RewardItem"][3]["Id"] = 3322428 -- 90DTitleSelectionBag(1of2)[3322428][属性:9][叠加:0][金币:0], 【表格】90天称号 二选一（赠）
	tAugustActionUp_Pack[3322348]["RewardItem"][3]["Attr"] = "0 1" -- 90DTitleSelectionBag(1of2)*1
	tAugustActionUp_Pack[3322348]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322348]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322348]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322349] = {}
	-- ===金币高手礼盒
	-- ===索引: tAugustActionUp_Pack[3322349]
	-- ===删除:3322349,1
	-- ===
	tAugustActionUp_Pack[3322349]["LogId"] = 12001502
	tAugustActionUp_Pack[3322349]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322349]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322349]["DeleteItem"][1]["Id"] = 3322349 -- 【库】 3322349 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322349]["RewardItem"] = {}
	tAugustActionUp_Pack[3322349]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322349]["RewardItem"][1]["Id"] = 3319013 -- RareRandomYellowRunePack(B)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包（赠）
	tAugustActionUp_Pack[3322349]["RewardItem"][1]["Attr"] = "0 1" -- RareRandomYellowRunePack(B)*1
	tAugustActionUp_Pack[3322349]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322349]["RewardItem"][2]["Id"] = 3300767 -- 5000CP(B)Pack[3300767][属性:9][叠加:1][金币:0], 【表格】10000天石（赠）
	tAugustActionUp_Pack[3322349]["RewardItem"][2]["Attr"] = "0 2" -- 5000CP(B)Pack*2
	tAugustActionUp_Pack[3322349]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322349]["RewardItem"][3]["Id"] = 3322429 -- 60DTitleSelectionBag(1of2)[3322429][属性:9][叠加:0][金币:0], 【表格】60天称号 二选一（赠）
	tAugustActionUp_Pack[3322349]["RewardItem"][3]["Attr"] = "0 1" -- 60DTitleSelectionBag(1of2)*1
	tAugustActionUp_Pack[3322349]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322349]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322349]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322350] = {}
	-- ===金币狂欢礼盒
	-- ===索引: tAugustActionUp_Pack[3322350]
	-- ===删除:3322350,1
	-- ===
	tAugustActionUp_Pack[3322350]["LogId"] = 12001502
	tAugustActionUp_Pack[3322350]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322350]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322350]["DeleteItem"][1]["Id"] = 3322350 -- 【库】 3322350 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322350]["RewardItem"] = {}
	tAugustActionUp_Pack[3322350]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322350]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRune(B)Fragment[3311748][属性:9][叠加:10000][金币:0], 【表格】稀有黄色神纹（赠）碎片*5（赠）
	tAugustActionUp_Pack[3322350]["RewardItem"][1]["Attr"] = "0 5" -- RareYellowRune(B)Fragment（赠）*5
	tAugustActionUp_Pack[3322350]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322350]["RewardItem"][2]["Id"] = 3300767 -- 5000CP(B)Pack[3300767][属性:9][叠加:1][金币:0], 【表格】 赠品天石5000（赠）
	tAugustActionUp_Pack[3322350]["RewardItem"][2]["Attr"] = "0 1" -- 5000CP(B)Pack*1
	tAugustActionUp_Pack[3322350]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322350]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】30天Millionaire称号
	tAugustActionUp_Pack[3322350]["RewardTitle"]["TitleId"] = 2136
	tAugustActionUp_Pack[3322350]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:Millionaire , 【需求】30天Millionaire称号
	tAugustActionUp_Pack[3322350]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322350]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322350]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322351] = {}
	-- ===黄色神纹精粹（赠）*30包
	-- ===索引: tAugustActionUp_Pack[3322351]
	-- ===删除:3322351,1
	-- ===
	tAugustActionUp_Pack[3322351]["LogId"] = 12001502
	tAugustActionUp_Pack[3322351]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322351]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322351]["DeleteItem"][1]["Id"] = 3322351 -- 【库】 3322351 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322351]["RewardItem"] = {}
	tAugustActionUp_Pack[3322351]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322351]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*30（赠）
	tAugustActionUp_Pack[3322351]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence（赠）*30
	tAugustActionUp_Pack[3322351]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322351]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322351]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322352] = {}
	-- ===6阶防具神魂（赠）*2可选包
	-- ===索引: tAugustActionUp_Pack[3322352]
	-- ===删除:3322352,1
	-- ===
	tAugustActionUp_Pack[3322352]["LogId"] = 12001502
	tAugustActionUp_Pack[3322352]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322352]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322352]["DeleteItem"][1]["Id"] = 3322352 -- 【库】 3322352 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322352]["RewardItem"] = {}
	tAugustActionUp_Pack[3322352]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322352]["RewardItem"][1]["Id"] = 3304221 -- P6EquipmentSoulPack[3304221][属性:11][叠加:10000][金币:0], 【表格】防具神魂+6*2可选包（赠）
	tAugustActionUp_Pack[3322352]["RewardItem"][1]["Attr"] = "0 2" -- P6EquipmentSoulPack*2
	tAugustActionUp_Pack[3322352]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322352]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322352]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322353] = {}
	-- ===清心符（赠）*50包
	-- ===索引: tAugustActionUp_Pack[3322353]
	-- ===删除:3322353,1
	-- ===
	tAugustActionUp_Pack[3322353]["LogId"] = 12001502
	tAugustActionUp_Pack[3322353]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322353]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322353]["DeleteItem"][1]["Id"] = 3322353 -- 【库】 3322353 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322353]["RewardItem"] = {}
	tAugustActionUp_Pack[3322353]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322353]["RewardItem"][1]["Id"] = 720128 -- PenitenceAmulet[720128][属性:0][叠加:10000][金币:0], 【表格】清心符*50（可叠加,但是不能兑换天石）（赠）
	tAugustActionUp_Pack[3322353]["RewardItem"][1]["Attr"] = "0 50 3" -- PenitenceAmulet（赠）*50
	tAugustActionUp_Pack[3322353]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322353]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322353]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322354] = {}
	-- ===强效护心丹*20包
	-- ===索引: tAugustActionUp_Pack[3322354]
	-- ===删除:3322354,1
	-- ===
	tAugustActionUp_Pack[3322354]["LogId"] = 12001502
	tAugustActionUp_Pack[3322354]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322354]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322354]["DeleteItem"][1]["Id"] = 3322354 -- 【库】 3322354 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322354]["RewardItem"] = {}
	tAugustActionUp_Pack[3322354]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322354]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】赠强效护心丹*20（赠）
	tAugustActionUp_Pack[3322354]["RewardItem"][1]["Attr"] = "0 20" -- SuperProtectionPill*20
	tAugustActionUp_Pack[3322354]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322354]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322354]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322355] = {}
	-- ===加4骏马（赠）*2包
	-- ===索引: tAugustActionUp_Pack[3322355]
	-- ===删除:3322355,1
	-- ===
	tAugustActionUp_Pack[3322355]["LogId"] = 12001502
	tAugustActionUp_Pack[3322355]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322355]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322355]["DeleteItem"][1]["Id"] = 3322355 -- 【库】 3322355 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322355]["RewardItem"] = {}
	tAugustActionUp_Pack[3322355]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322355]["RewardItem"][1]["Id"] = 3305398 -- 2+4Steed(B)Pack[3305398][属性:9][叠加:10000][金币:0], 【表格】加4马匹*2（赠）
	tAugustActionUp_Pack[3322355]["RewardItem"][1]["Attr"] = "0 1" -- 2+4Steed(B)Pack*1
	tAugustActionUp_Pack[3322355]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322355]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322355]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322356] = {}
	-- ===人参果*10包
	-- ===索引: tAugustActionUp_Pack[3322356]
	-- ===删除:3322356,1
	-- ===
	tAugustActionUp_Pack[3322356]["LogId"] = 12001502
	tAugustActionUp_Pack[3322356]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322356]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322356]["DeleteItem"][1]["Id"] = 3322356 -- 【库】 3322356 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322356]["RewardItem"] = {}
	tAugustActionUp_Pack[3322356]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322356]["RewardItem"][1]["Id"] = 3320989 -- 10GinsengFruitsPack[3320989][属性:9][叠加:1][金币:0], 【表格】人参果*10（赠）
	tAugustActionUp_Pack[3322356]["RewardItem"][1]["Attr"] = "0 1" -- 10GinsengFruitsPack*1
	tAugustActionUp_Pack[3322356]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322356]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322356]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322357] = {}
	-- ===稀有黄色神纹碎片（赠）包
	-- ===索引: tAugustActionUp_Pack[3322357]
	-- ===删除:3322357,1
	-- ===
	tAugustActionUp_Pack[3322357]["LogId"] = 12001502
	tAugustActionUp_Pack[3322357]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322357]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322357]["DeleteItem"][1]["Id"] = 3322357 -- 【库】 3322357 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322357]["RewardItem"] = {}
	tAugustActionUp_Pack[3322357]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322357]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRune(B)Fragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*1（赠）
	tAugustActionUp_Pack[3322357]["RewardItem"][1]["Attr"] = "0 1" -- RareYellowRune(B)Fragment（赠）*1
	tAugustActionUp_Pack[3322357]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322357]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322357]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322358] = {}
	-- ===600精炼奖励包
	-- ===索引: tAugustActionUp_Pack[3322358]
	-- ===删除:3322358,1
	-- ===
	tAugustActionUp_Pack[3322358]["LogId"] = 12001502
	tAugustActionUp_Pack[3322358]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322358]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322358]["DeleteItem"][1]["Id"] = 3322358 -- 【库】 3322358 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322358]["RewardItem"] = {}
	tAugustActionUp_Pack[3322358]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322358]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tAugustActionUp_Pack[3322358]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tAugustActionUp_Pack[3322358]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322358]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322358]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322359] = {}
	-- ===3000精炼奖励包
	-- ===索引: tAugustActionUp_Pack[3322359]
	-- ===删除:3322359,1
	-- ===
	tAugustActionUp_Pack[3322359]["LogId"] = 12001502
	tAugustActionUp_Pack[3322359]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322359]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322359]["DeleteItem"][1]["Id"] = 3322359 -- 【库】 3322359 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322359]["RewardItem"] = {}
	tAugustActionUp_Pack[3322359]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322359]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tAugustActionUp_Pack[3322359]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tAugustActionUp_Pack[3322359]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322359]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322359]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322360] = {}
	-- ===6000精炼奖励包
	-- ===索引: tAugustActionUp_Pack[3322360]
	-- ===删除:3322360,1
	-- ===
	tAugustActionUp_Pack[3322360]["LogId"] = 12001502
	tAugustActionUp_Pack[3322360]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322360]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322360]["DeleteItem"][1]["Id"] = 3322360 -- 【库】 3322360 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322360]["RewardItem"] = {}
	tAugustActionUp_Pack[3322360]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322360]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tAugustActionUp_Pack[3322360]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tAugustActionUp_Pack[3322360]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322360]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322360]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322361] = {}
	-- ===12000精炼奖励包
	-- ===索引: tAugustActionUp_Pack[3322361]
	-- ===删除:3322361,1
	-- ===
	tAugustActionUp_Pack[3322361]["LogId"] = 12001502
	tAugustActionUp_Pack[3322361]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322361]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322361]["DeleteItem"][1]["Id"] = 3322361 -- 【库】 3322361 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322361]["RewardItem"] = {}
	tAugustActionUp_Pack[3322361]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322361]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tAugustActionUp_Pack[3322361]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tAugustActionUp_Pack[3322361]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322361]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322361]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322362] = {}
	-- ===18000精炼奖励包
	-- ===索引: tAugustActionUp_Pack[3322362]
	-- ===删除:3322362,1
	-- ===
	tAugustActionUp_Pack[3322362]["LogId"] = 12001502
	tAugustActionUp_Pack[3322362]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322362]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322362]["DeleteItem"][1]["Id"] = 3322362 -- 【库】 3322362 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322362]["RewardItem"] = {}
	tAugustActionUp_Pack[3322362]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322362]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tAugustActionUp_Pack[3322362]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tAugustActionUp_Pack[3322362]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322362]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322362]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322363] = {}
	-- ===30000精炼奖励包
	-- ===索引: tAugustActionUp_Pack[3322363]
	-- ===删除:3322363,1
	-- ===
	tAugustActionUp_Pack[3322363]["LogId"] = 12001502
	tAugustActionUp_Pack[3322363]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322363]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322363]["DeleteItem"][1]["Id"] = 3322363 -- 【库】 3322363 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322363]["RewardItem"] = {}
	tAugustActionUp_Pack[3322363]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322363]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tAugustActionUp_Pack[3322363]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tAugustActionUp_Pack[3322363]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322363]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322363]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322364] = {}
	-- ===60000精炼奖励包
	-- ===索引: tAugustActionUp_Pack[3322364]
	-- ===删除:3322364,1
	-- ===
	tAugustActionUp_Pack[3322364]["LogId"] = 12001502
	tAugustActionUp_Pack[3322364]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322364]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322364]["DeleteItem"][1]["Id"] = 3322364 -- 【库】 3322364 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322364]["RewardItem"] = {}
	tAugustActionUp_Pack[3322364]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322364]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*3（赠）
	tAugustActionUp_Pack[3322364]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tAugustActionUp_Pack[3322364]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322364]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322364]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322365] = {}
	-- ===600追加奖励包
	-- ===索引: tAugustActionUp_Pack[3322365]
	-- ===删除:3322365,1
	-- ===
	tAugustActionUp_Pack[3322365]["LogId"] = 12001502
	tAugustActionUp_Pack[3322365]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322365]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322365]["DeleteItem"][1]["Id"] = 3322365 -- 【库】 3322365 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322365]["RewardItem"] = {}
	tAugustActionUp_Pack[3322365]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322365]["RewardItem"][1]["Id"] = 3305436 -- Bound+2StonePack[3305436][属性:9][叠加:10000][金币:0], 【表格】赠品赤练石+2（赠）
	tAugustActionUp_Pack[3322365]["RewardItem"][1]["Attr"] = "0 1" -- Bound+2StonePack*1
	tAugustActionUp_Pack[3322365]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322365]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322365]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322366] = {}
	-- ===3000追加奖励包
	-- ===索引: tAugustActionUp_Pack[3322366]
	-- ===删除:3322366,1
	-- ===
	tAugustActionUp_Pack[3322366]["LogId"] = 12001502
	tAugustActionUp_Pack[3322366]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322366]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322366]["DeleteItem"][1]["Id"] = 3322366 -- 【库】 3322366 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322366]["RewardItem"] = {}
	tAugustActionUp_Pack[3322366]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322366]["RewardItem"][1]["Id"] = 3305382 -- 2+2Stone(B)Pack[3305382][属性:9][叠加:10000][金币:0], 【表格】赠品赤练石+2*2（赠）
	tAugustActionUp_Pack[3322366]["RewardItem"][1]["Attr"] = "0 1" -- 2+2Stone(B)Pack*1
	tAugustActionUp_Pack[3322366]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322366]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322366]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322367] = {}
	-- ===6000追加奖励包
	-- ===索引: tAugustActionUp_Pack[3322367]
	-- ===删除:3322367,1
	-- ===
	tAugustActionUp_Pack[3322367]["LogId"] = 12001502
	tAugustActionUp_Pack[3322367]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322367]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322367]["DeleteItem"][1]["Id"] = 3322367 -- 【库】 3322367 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322367]["RewardItem"] = {}
	tAugustActionUp_Pack[3322367]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322367]["RewardItem"][1]["Id"] = 3301807 -- +3Stone(B)Pack[3301807][属性:9][叠加:0][金币:0], 【表格】赠品赤练石+3（赠）
	tAugustActionUp_Pack[3322367]["RewardItem"][1]["Attr"] = "0 1" -- +3Stone(B)Pack*1
	tAugustActionUp_Pack[3322367]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322367]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322367]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322368] = {}
	-- ===12000追加奖励包
	-- ===索引: tAugustActionUp_Pack[3322368]
	-- ===删除:3322368,1
	-- ===
	tAugustActionUp_Pack[3322368]["LogId"] = 12001502
	tAugustActionUp_Pack[3322368]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322368]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322368]["DeleteItem"][1]["Id"] = 3322368 -- 【库】 3322368 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322368]["RewardItem"] = {}
	tAugustActionUp_Pack[3322368]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322368]["RewardItem"][1]["Id"] = 3301807 -- +3Stone(B)Pack[3301807][属性:9][叠加:0][金币:0], 【表格】赠品赤练石+3*2（赠）
	tAugustActionUp_Pack[3322368]["RewardItem"][1]["Attr"] = "0 2" -- +3Stone(B)Pack*2
	tAugustActionUp_Pack[3322368]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322368]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322368]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322369] = {}
	-- ===18000追加奖励包
	-- ===索引: tAugustActionUp_Pack[3322369]
	-- ===删除:3322369,1
	-- ===
	tAugustActionUp_Pack[3322369]["LogId"] = 12001502
	tAugustActionUp_Pack[3322369]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322369]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322369]["DeleteItem"][1]["Id"] = 3322369 -- 【库】 3322369 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322369]["RewardItem"] = {}
	tAugustActionUp_Pack[3322369]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322369]["RewardItem"][1]["Id"] = 3303531 -- +4Stone(B)Pack[3303531][属性:9][叠加:10000][金币:0], 【表格】赠品赤练石+4（赠）
	tAugustActionUp_Pack[3322369]["RewardItem"][1]["Attr"] = "0 1" -- +4Stone(B)Pack*1
	tAugustActionUp_Pack[3322369]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322369]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322369]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322370] = {}
	-- ===30000追加奖励包
	-- ===索引: tAugustActionUp_Pack[3322370]
	-- ===删除:3322370,1
	-- ===
	tAugustActionUp_Pack[3322370]["LogId"] = 12001502
	tAugustActionUp_Pack[3322370]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322370]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322370]["DeleteItem"][1]["Id"] = 3322370 -- 【库】 3322370 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322370]["RewardItem"] = {}
	tAugustActionUp_Pack[3322370]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322370]["RewardItem"][1]["Id"] = 3305386 -- 2+4Stone(B)Pack[3305386][属性:9][叠加:10000][金币:0], 【表格】赠品赤练石+4*2（赠）
	tAugustActionUp_Pack[3322370]["RewardItem"][1]["Attr"] = "0 1" -- 2+4Stone(B)Pack*1
	tAugustActionUp_Pack[3322370]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322370]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322370]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322371] = {}
	-- ===30000追加奖励包
	-- ===索引: tAugustActionUp_Pack[3322371]
	-- ===删除:3322371,1
	-- ===
	tAugustActionUp_Pack[3322371]["LogId"] = 12001502
	tAugustActionUp_Pack[3322371]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322371]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322371]["DeleteItem"][1]["Id"] = 3322371 -- 【库】 3322371 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322371]["RewardItem"] = {}
	tAugustActionUp_Pack[3322371]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322371]["RewardItem"][1]["Id"] = 3309005 -- +5Stone(B)Pack[3309005][属性:9][叠加:1][金币:0], 【表格】赠品赤练石+5（赠）
	tAugustActionUp_Pack[3322371]["RewardItem"][1]["Attr"] = "0 1" -- +5Stone(B)Pack*1
	tAugustActionUp_Pack[3322371]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322371]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322371]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322372] = {}
	-- ===500开洞奖励包
	-- ===索引: tAugustActionUp_Pack[3322372]
	-- ===删除:3322372,1
	-- ===
	tAugustActionUp_Pack[3322372]["LogId"] = 12001502
	tAugustActionUp_Pack[3322372]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322372]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322372]["DeleteItem"][1]["Id"] = 3322372 -- 【库】 3322372 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322372]["RewardItem"] = {}
	tAugustActionUp_Pack[3322372]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322372]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】赠强效护心丹*10（赠）
	tAugustActionUp_Pack[3322372]["RewardItem"][1]["Attr"] = "0 10" -- SuperProtectionPill*10
	tAugustActionUp_Pack[3322372]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322372]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322372]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322373] = {}
	-- ===2500开洞奖励包
	-- ===索引: tAugustActionUp_Pack[3322373]
	-- ===删除:3322373,1
	-- ===
	tAugustActionUp_Pack[3322373]["LogId"] = 12001502
	tAugustActionUp_Pack[3322373]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322373]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322373]["DeleteItem"][1]["Id"] = 3322373 -- 【库】 3322373 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322373]["RewardItem"] = {}
	tAugustActionUp_Pack[3322373]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322373]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*1（赠）
	tAugustActionUp_Pack[3322373]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tAugustActionUp_Pack[3322373]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322373]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322373]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322374] = {}
	-- ===5000开洞奖励包
	-- ===索引: tAugustActionUp_Pack[3322374]
	-- ===删除:3322374,1
	-- ===
	tAugustActionUp_Pack[3322374]["LogId"] = 12001502
	tAugustActionUp_Pack[3322374]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322374]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322374]["DeleteItem"][1]["Id"] = 3322374 -- 【库】 3322374 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322374]["RewardItem"] = {}
	tAugustActionUp_Pack[3322374]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322374]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】赠强效护心丹*30（赠）
	tAugustActionUp_Pack[3322374]["RewardItem"][1]["Attr"] = "0 30" -- SuperProtectionPill*30
	tAugustActionUp_Pack[3322374]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322374]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322374]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322375] = {}
	-- ===3000炼气奖励包
	-- ===索引: tAugustActionUp_Pack[3322375]
	-- ===删除:3322375,1
	-- ===
	tAugustActionUp_Pack[3322375]["LogId"] = 12001502
	tAugustActionUp_Pack[3322375]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322375]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322375]["DeleteItem"][1]["Id"] = 3322375 -- 【库】 3322375 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322375]["RewardItem"] = {}
	tAugustActionUp_Pack[3322375]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322375]["RewardItem"][1]["Id"] = 3301807 -- +3Stone(B)Pack[3301807][属性:9][叠加:0][金币:0], 【表格】赠+3赤炼石*1（赠）
	tAugustActionUp_Pack[3322375]["RewardItem"][1]["Attr"] = "0 1" -- +3Stone(B)Pack*1
	tAugustActionUp_Pack[3322375]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322375]["RewardItem"][2]["Id"] = 3321212 -- YellowRuneEssence(B)*5[3321212][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*5（赠）
	tAugustActionUp_Pack[3322375]["RewardItem"][2]["Attr"] = "0 1 3" -- YellowRuneEssence(B)*5（赠）*1
	tAugustActionUp_Pack[3322375]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322375]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322375]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322376] = {}
	-- ===单服成长冠军礼盒
	-- ===索引: tAugustActionUp_Pack[3322376]
	-- ===删除:3322376,1
	-- ===
	tAugustActionUp_Pack[3322376]["LogId"] = 12001502
	tAugustActionUp_Pack[3322376]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322376]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322376]["DeleteItem"][1]["Id"] = 3322376 -- 【库】 3322376 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322376]["RewardItem"] = {}
	tAugustActionUp_Pack[3322376]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322376]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*50（赠）
	tAugustActionUp_Pack[3322376]["RewardItem"][1]["Attr"] = "0 50 3" -- YellowRuneEssence（赠）*50
	tAugustActionUp_Pack[3322376]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322376]["RewardItem"][2]["Id"] = 3308943 -- 6BrightStarStonesPack[3308943][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*6
	tAugustActionUp_Pack[3322376]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的6BrightStarStonesPack*1
	tAugustActionUp_Pack[3322376]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322376]["RewardItem"][3]["Id"] = 3319365 -- 5000ChiPointsPack[3319365][属性:9][叠加:0][金币:0], 【表格】5000气力（赠）
	tAugustActionUp_Pack[3322376]["RewardItem"][3]["Attr"] = "0 1" -- 5000ChiPointsPack*1
	tAugustActionUp_Pack[3322376]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322376]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322376]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322377] = {}
	-- ===单服成长亚军礼盒
	-- ===索引: tAugustActionUp_Pack[3322377]
	-- ===删除:3322377,1
	-- ===
	tAugustActionUp_Pack[3322377]["LogId"] = 12001502
	tAugustActionUp_Pack[3322377]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322377]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322377]["DeleteItem"][1]["Id"] = 3322377 -- 【库】 3322377 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322377]["RewardItem"] = {}
	tAugustActionUp_Pack[3322377]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322377]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*40（赠）
	tAugustActionUp_Pack[3322377]["RewardItem"][1]["Attr"] = "0 40 3" -- YellowRuneEssence（赠）*40
	tAugustActionUp_Pack[3322377]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322377]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tAugustActionUp_Pack[3322377]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tAugustActionUp_Pack[3322377]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322377]["RewardItem"][3]["Id"] = 3309993 -- 3000ChiPointsBag[3309993][属性:9][叠加:1][金币:0], 【表格】3000气力（赠）
	tAugustActionUp_Pack[3322377]["RewardItem"][3]["Attr"] = "0 1" -- 3000ChiPointsBag*1
	tAugustActionUp_Pack[3322377]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322377]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322377]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322378] = {}
	-- ===单服成长季军礼盒
	-- ===索引: tAugustActionUp_Pack[3322378]
	-- ===删除:3322378,1
	-- ===
	tAugustActionUp_Pack[3322378]["LogId"] = 12001502
	tAugustActionUp_Pack[3322378]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322378]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322378]["DeleteItem"][1]["Id"] = 3322378 -- 【库】 3322378 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322378]["RewardItem"] = {}
	tAugustActionUp_Pack[3322378]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322378]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*30（赠）
	tAugustActionUp_Pack[3322378]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence（赠）*30
	tAugustActionUp_Pack[3322378]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322378]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tAugustActionUp_Pack[3322378]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tAugustActionUp_Pack[3322378]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322378]["RewardItem"][3]["Id"] = 3300136 -- 2000ChiPointsPack[3300136][属性:9][叠加:0][金币:0], 【表格】2000气力（赠）
	tAugustActionUp_Pack[3322378]["RewardItem"][3]["Attr"] = "0 1" -- 2000ChiPointsPack*1
	tAugustActionUp_Pack[3322378]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322378]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322378]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322379] = {}
	-- ===单服成长6强礼盒
	-- ===索引: tAugustActionUp_Pack[3322379]
	-- ===删除:3322379,1
	-- ===
	tAugustActionUp_Pack[3322379]["LogId"] = 12001502
	tAugustActionUp_Pack[3322379]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322379]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322379]["DeleteItem"][1]["Id"] = 3322379 -- 【库】 3322379 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322379]["RewardItem"] = {}
	tAugustActionUp_Pack[3322379]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322379]["RewardItem"][1]["Id"] = 3309002 -- YellowRuneEssence(B)*20[3309002][属性:9][叠加:1][金币:0], 【表格】赠黄色神纹精粹*20（赠）
	tAugustActionUp_Pack[3322379]["RewardItem"][1]["Attr"] = "0 1" -- YellowRuneEssence(B)*20*1
	tAugustActionUp_Pack[3322379]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322379]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tAugustActionUp_Pack[3322379]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tAugustActionUp_Pack[3322379]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322379]["RewardItem"][3]["Id"] = 3301810 -- 1000ChiPointsPack[3301810][属性:9][叠加:0][金币:0], 【表格】1000气力（赠）
	tAugustActionUp_Pack[3322379]["RewardItem"][3]["Attr"] = "0 1" -- 1000ChiPointsPack*1
	tAugustActionUp_Pack[3322379]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322379]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322379]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322380] = {}
	-- ===单服成长10强礼盒
	-- ===索引: tAugustActionUp_Pack[3322380]
	-- ===删除:3322380,1
	-- ===
	tAugustActionUp_Pack[3322380]["LogId"] = 12001502
	tAugustActionUp_Pack[3322380]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322380]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322380]["DeleteItem"][1]["Id"] = 3322380 -- 【库】 3322380 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322380]["RewardItem"] = {}
	tAugustActionUp_Pack[3322380]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322380]["RewardItem"][1]["Id"] = 3309001 -- YellowRuneEssence(B)*10[3309001][属性:9][叠加:1][金币:0], 【表格】赠黄色神纹精粹*10（赠）
	tAugustActionUp_Pack[3322380]["RewardItem"][1]["Attr"] = "0 1" -- YellowRuneEssence(B)*10*1
	tAugustActionUp_Pack[3322380]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322380]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tAugustActionUp_Pack[3322380]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tAugustActionUp_Pack[3322380]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322380]["RewardItem"][3]["Id"] = 3306155 -- 500ChiPointsPack[3306155][属性:9][叠加:10000][金币:0], 【表格】500气力（赠）
	tAugustActionUp_Pack[3322380]["RewardItem"][3]["Attr"] = "0 1" -- 500ChiPointsPack*1
	tAugustActionUp_Pack[3322380]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322380]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322380]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322381] = {}
	-- ===全服成长冠军礼盒
	-- ===索引: tAugustActionUp_Pack[3322381]
	-- ===删除:3322381,1
	-- ===
	tAugustActionUp_Pack[3322381]["LogId"] = 12001502
	tAugustActionUp_Pack[3322381]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322381]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322381]["DeleteItem"][1]["Id"] = 3322381 -- 【库】 3322381 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322381]["RewardItem"] = {}
	tAugustActionUp_Pack[3322381]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322381]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*10（赠）
	tAugustActionUp_Pack[3322381]["RewardItem"][1]["Attr"] = "0 10" -- RareYellowRuneFragment（赠）*10
	tAugustActionUp_Pack[3322381]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322381]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*200（赠）
	tAugustActionUp_Pack[3322381]["RewardItem"][2]["Attr"] = "0 200 3" -- UniversalRuneEssence（赠）*200
	tAugustActionUp_Pack[3322381]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322381]["RewardItem"][3]["Id"] = 3304566 -- 6RadiantStarStonesBox[3304566][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*6
	tAugustActionUp_Pack[3322381]["RewardItem"][3]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的6RadiantStarStonesBox*1
	tAugustActionUp_Pack[3322381]["RewardItem"][4] = {}
	tAugustActionUp_Pack[3322381]["RewardItem"][4]["Id"] = 3322387 -- 90-day1/3FoxesPack[3322387][属性:9][叠加:0][金币:0], 【表格】90天5星狐狸坐骑三选一包（赠）
	tAugustActionUp_Pack[3322381]["RewardItem"][4]["Attr"] = "0 1" -- 90-day1/3FoxesPack*1
	tAugustActionUp_Pack[3322381]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322381]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322381]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322382] = {}
	-- ===全服成长亚军礼盒
	-- ===索引: tAugustActionUp_Pack[3322382]
	-- ===删除:3322382,1
	-- ===
	tAugustActionUp_Pack[3322382]["LogId"] = 12001502
	tAugustActionUp_Pack[3322382]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322382]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322382]["DeleteItem"][1]["Id"] = 3322382 -- 【库】 3322382 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322382]["RewardItem"] = {}
	tAugustActionUp_Pack[3322382]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322382]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*8（赠）
	tAugustActionUp_Pack[3322382]["RewardItem"][1]["Attr"] = "0 8" -- RareYellowRuneFragment（赠）*8
	tAugustActionUp_Pack[3322382]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322382]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*150（赠）
	tAugustActionUp_Pack[3322382]["RewardItem"][2]["Attr"] = "0 150 3" -- UniversalRuneEssence（赠）*150
	tAugustActionUp_Pack[3322382]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322382]["RewardItem"][3]["Id"] = 3304565 -- 5RadiantStarStonesBox[3304565][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tAugustActionUp_Pack[3322382]["RewardItem"][3]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的5RadiantStarStonesBox*1
	tAugustActionUp_Pack[3322382]["RewardItem"][4] = {}
	tAugustActionUp_Pack[3322382]["RewardItem"][4]["Id"] = 3322388 -- 90-day1/2FoxesPack[3322388][属性:9][叠加:0][金币:0], 【表格】90天5星狐狸坐骑二选一包（赠）
	tAugustActionUp_Pack[3322382]["RewardItem"][4]["Attr"] = "0 1" -- 90-day1/2FoxesPack*1
	tAugustActionUp_Pack[3322382]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322382]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322382]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322383] = {}
	-- ===全服成长季军礼盒
	-- ===索引: tAugustActionUp_Pack[3322383]
	-- ===删除:3322383,1
	-- ===
	tAugustActionUp_Pack[3322383]["LogId"] = 12001502
	tAugustActionUp_Pack[3322383]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322383]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322383]["DeleteItem"][1]["Id"] = 3322383 -- 【库】 3322383 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322383]["RewardItem"] = {}
	tAugustActionUp_Pack[3322383]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322383]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*6（赠）
	tAugustActionUp_Pack[3322383]["RewardItem"][1]["Attr"] = "0 6" -- RareYellowRuneFragment（赠）*6
	tAugustActionUp_Pack[3322383]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322383]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*100（赠）
	tAugustActionUp_Pack[3322383]["RewardItem"][2]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tAugustActionUp_Pack[3322383]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322383]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*4
	tAugustActionUp_Pack[3322383]["RewardItem"][3]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的RadiantStarStone*4
	tAugustActionUp_Pack[3322383]["RewardItem"][4] = {}
	tAugustActionUp_Pack[3322383]["RewardItem"][4]["Id"] = 3322389 -- 60-day1/2FoxesPack[3322389][属性:9][叠加:0][金币:0], 【表格】60天5星狐狸坐骑二选一包（赠）
	tAugustActionUp_Pack[3322383]["RewardItem"][4]["Attr"] = "0 1" -- 60-day1/2FoxesPack*1
	tAugustActionUp_Pack[3322383]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322383]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322383]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322384] = {}
	-- ===全服成长6强礼盒
	-- ===索引: tAugustActionUp_Pack[3322384]
	-- ===删除:3322384,1
	-- ===
	tAugustActionUp_Pack[3322384]["LogId"] = 12001502
	tAugustActionUp_Pack[3322384]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322384]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322384]["DeleteItem"][1]["Id"] = 3322384 -- 【库】 3322384 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322384]["RewardItem"] = {}
	tAugustActionUp_Pack[3322384]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322384]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*3（赠）
	tAugustActionUp_Pack[3322384]["RewardItem"][1]["Attr"] = "0 3" -- RareYellowRuneFragment（赠）*3
	tAugustActionUp_Pack[3322384]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322384]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*80（赠）
	tAugustActionUp_Pack[3322384]["RewardItem"][2]["Attr"] = "0 80 3" -- UniversalRuneEssence（赠）*80
	tAugustActionUp_Pack[3322384]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322384]["RewardItem"][3]["Id"] = 3304581 -- 3RadiantStarStonesBox[3304581][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tAugustActionUp_Pack[3322384]["RewardItem"][3]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的3RadiantStarStonesBox*1
	tAugustActionUp_Pack[3322384]["RewardItem"][4] = {}
	tAugustActionUp_Pack[3322384]["RewardItem"][4]["Id"] = 3322390 -- 60-dayCatsOrDogsPack[3322390][属性:9][叠加:0][金币:0], 【表格】60天猫狗坐骑三选一包（赠）
	tAugustActionUp_Pack[3322384]["RewardItem"][4]["Attr"] = "0 1" -- 60-dayCatsOrDogsPack*1
	tAugustActionUp_Pack[3322384]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322384]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322384]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322385] = {}
	-- ===全服成长10强礼盒
	-- ===索引: tAugustActionUp_Pack[3322385]
	-- ===删除:3322385,1
	-- ===
	tAugustActionUp_Pack[3322385]["LogId"] = 12001502
	tAugustActionUp_Pack[3322385]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322385]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322385]["DeleteItem"][1]["Id"] = 3322385 -- 【库】 3322385 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322385]["RewardItem"] = {}
	tAugustActionUp_Pack[3322385]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322385]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*2（赠）
	tAugustActionUp_Pack[3322385]["RewardItem"][1]["Attr"] = "0 2" -- RareYellowRuneFragment（赠）*2
	tAugustActionUp_Pack[3322385]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322385]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*50（赠）
	tAugustActionUp_Pack[3322385]["RewardItem"][2]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tAugustActionUp_Pack[3322385]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322385]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tAugustActionUp_Pack[3322385]["RewardItem"][3]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tAugustActionUp_Pack[3322385]["RewardItem"][4] = {}
	tAugustActionUp_Pack[3322385]["RewardItem"][4]["Id"] = 3322391 -- 60-day1/2DogsPack[3322391][属性:9][叠加:0][金币:0], 【表格】60天狗狗坐骑二选一包（赠）
	tAugustActionUp_Pack[3322385]["RewardItem"][4]["Attr"] = "0 1" -- 60-day1/2DogsPack*1
	tAugustActionUp_Pack[3322385]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322385]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322385]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322386] = {}
	-- ===全服成长20强礼盒
	-- ===索引: tAugustActionUp_Pack[3322386]
	-- ===删除:3322386,1
	-- ===
	tAugustActionUp_Pack[3322386]["LogId"] = 12001502
	tAugustActionUp_Pack[3322386]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322386]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322386]["DeleteItem"][1]["Id"] = 3322386 -- 【库】 3322386 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322386]["RewardItem"] = {}
	tAugustActionUp_Pack[3322386]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322386]["RewardItem"][1]["Id"] = 3311748 -- RareYellowRuneFragment[3311748][属性:9][叠加:10000][金币:0], 【表格】赠稀有黄色神纹碎片*1（赠）
	tAugustActionUp_Pack[3322386]["RewardItem"][1]["Attr"] = "0 1" -- RareYellowRuneFragment（赠）*1
	tAugustActionUp_Pack[3322386]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322386]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*30（赠）
	tAugustActionUp_Pack[3322386]["RewardItem"][2]["Attr"] = "0 30 3" -- UniversalRuneEssence（赠）*30
	tAugustActionUp_Pack[3322386]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322386]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*1
	tAugustActionUp_Pack[3322386]["RewardItem"][3]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tAugustActionUp_Pack[3322386]["RewardItem"][4] = {}
	tAugustActionUp_Pack[3322386]["RewardItem"][4]["Id"] = 3322392 -- 30-day1/2FoxesPack[3322392][属性:9][叠加:0][金币:0], 【表格】30天狗狗坐骑二选一包（赠）
	tAugustActionUp_Pack[3322386]["RewardItem"][4]["Attr"] = "0 1" -- 30-day1/2FoxesPack*1
	tAugustActionUp_Pack[3322386]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322386]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322386]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322387] = {}
	-- ===90天5星狐狸坐骑三选一包
	-- ===索引: tAugustActionUp_Pack[3322387][1]
	-- ===删除:3322387,1
	-- ===
	tAugustActionUp_Pack[3322387][1] = {}
	tAugustActionUp_Pack[3322387][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322387][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322387][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322387][1]["DeleteItem"][1]["Id"] = 3322387 -- 【库】 3322387 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322387][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322387][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322387][1]["RewardItem"][1]["Id"] = 200638 -- ShadowFox(Shura)[200638][属性:0][叠加:0][金币:0], 【表格】魅影魔狐【修罗版】（赠）
	tAugustActionUp_Pack[3322387][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑ShadowFox(Shura)（赠）*1
	tAugustActionUp_Pack[3322387][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322387][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322387][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322387][2] = {}
	-- ===90天5星狐狸坐骑三选一包
	-- ===索引: tAugustActionUp_Pack[3322387][2]
	-- ===删除:3322387,1
	-- ===
	tAugustActionUp_Pack[3322387][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322387][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322387][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322387][2]["DeleteItem"][1]["Id"] = 3322387 -- 【库】 3322387 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322387][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322387][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322387][2]["RewardItem"][1]["Id"] = 200639 -- AzureFox(Freedom)[200639][属性:0][叠加:0][金币:0], 【表格】碧宵灵狐【悠然版】（赠）
	tAugustActionUp_Pack[3322387][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑AzureFox(Freedom)（赠）*1
	tAugustActionUp_Pack[3322387][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322387][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322387][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322387][3] = {}
	-- ===90天5星狐狸坐骑三选一包
	-- ===索引: tAugustActionUp_Pack[3322387][3]
	-- ===删除:3322387,1
	-- ===
	tAugustActionUp_Pack[3322387][3]["LogId"] = 12001502
	tAugustActionUp_Pack[3322387][3]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322387][3]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322387][3]["DeleteItem"][1]["Id"] = 3322387 -- 【库】 3322387 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322387][3]["RewardItem"] = {}
	tAugustActionUp_Pack[3322387][3]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322387][3]["RewardItem"][1]["Id"] = 200640 -- LunarFox(Illusion)[200640][属性:0][叠加:0][金币:0], 【表格】幻月仙狐【缥缈版】（赠）
	tAugustActionUp_Pack[3322387][3]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑LunarFox(Illusion)（赠）*1
	tAugustActionUp_Pack[3322387][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322387][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322387][3]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322388] = {}
	-- ===90天5星狐狸坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322388][1]
	-- ===删除:3322388,1
	-- ===
	tAugustActionUp_Pack[3322388][1] = {}
	tAugustActionUp_Pack[3322388][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322388][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322388][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322388][1]["DeleteItem"][1]["Id"] = 3322388 -- 【库】 3322388 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322388][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322388][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322388][1]["RewardItem"][1]["Id"] = 200639 -- AzureFox(Freedom)[200639][属性:0][叠加:0][金币:0], 【表格】碧宵灵狐【悠然版】（赠）
	tAugustActionUp_Pack[3322388][1]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑AzureFox(Freedom)（赠）*1
	tAugustActionUp_Pack[3322388][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322388][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322388][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322388][2] = {}
	-- ===90天5星狐狸坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322388][2]
	-- ===删除:3322388,1
	-- ===
	tAugustActionUp_Pack[3322388][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322388][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322388][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322388][2]["DeleteItem"][1]["Id"] = 3322388 -- 【库】 3322388 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322388][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322388][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322388][2]["RewardItem"][1]["Id"] = 200640 -- LunarFox(Illusion)[200640][属性:0][叠加:0][金币:0], 【表格】幻月仙狐【缥缈版】（赠）
	tAugustActionUp_Pack[3322388][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1" -- 90天时效(激活)的1%神佑LunarFox(Illusion)（赠）*1
	tAugustActionUp_Pack[3322388][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322388][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322388][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322389] = {}
	-- ===60天5星狐狸坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322389][1]
	-- ===删除:3322389,1
	-- ===
	tAugustActionUp_Pack[3322389][1] = {}
	tAugustActionUp_Pack[3322389][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322389][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322389][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322389][1]["DeleteItem"][1]["Id"] = 3322389 -- 【库】 3322389 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322389][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322389][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322389][1]["RewardItem"][1]["Id"] = 200639 -- AzureFox(Freedom)[200639][属性:0][叠加:0][金币:0], 【表格】碧宵灵狐【悠然版】（赠）
	tAugustActionUp_Pack[3322389][1]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑AzureFox(Freedom)（赠）*1
	tAugustActionUp_Pack[3322389][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322389][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322389][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322389][2] = {}
	-- ===60天5星狐狸坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322389][2]
	-- ===删除:3322389,1
	-- ===
	tAugustActionUp_Pack[3322389][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322389][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322389][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322389][2]["DeleteItem"][1]["Id"] = 3322389 -- 【库】 3322389 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322389][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322389][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322389][2]["RewardItem"][1]["Id"] = 200640 -- LunarFox(Illusion)[200640][属性:0][叠加:0][金币:0], 【表格】幻月仙狐【缥缈版】（赠）
	tAugustActionUp_Pack[3322389][2]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑LunarFox(Illusion)（赠）*1
	tAugustActionUp_Pack[3322389][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322389][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322389][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322390] = {}
	-- ===60天猫狗坐骑三选一包
	-- ===索引: tAugustActionUp_Pack[3322390][1]
	-- ===删除:3322390,1
	-- ===
	tAugustActionUp_Pack[3322390][1] = {}
	tAugustActionUp_Pack[3322390][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322390][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322390][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322390][1]["DeleteItem"][1]["Id"] = 3322390 -- 【库】 3322390 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322390][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322390][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322390][1]["RewardItem"][1]["Id"] = 200622 -- RadiantHusky[200622][属性:0][叠加:0][金币:0], 【表格】二哈将军（赠）
	tAugustActionUp_Pack[3322390][1]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑RadiantHusky（赠）*1
	tAugustActionUp_Pack[3322390][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322390][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322390][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322390][2] = {}
	-- ===60天猫狗坐骑三选一包
	-- ===索引: tAugustActionUp_Pack[3322390][2]
	-- ===删除:3322390,1
	-- ===
	tAugustActionUp_Pack[3322390][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322390][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322390][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322390][2]["DeleteItem"][1]["Id"] = 3322390 -- 【库】 3322390 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322390][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322390][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322390][2]["RewardItem"][1]["Id"] = 200621 -- RadiantSamoyed[200621][属性:0][叠加:0][金币:0], 【表格】萨摩王子（赠）
	tAugustActionUp_Pack[3322390][2]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑RadiantSamoyed（赠）*1
	tAugustActionUp_Pack[3322390][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322390][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322390][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322390][3] = {}
	-- ===60天猫狗坐骑三选一包
	-- ===索引: tAugustActionUp_Pack[3322390][3]
	-- ===删除:3322390,1
	-- ===
	tAugustActionUp_Pack[3322390][3]["LogId"] = 12001502
	tAugustActionUp_Pack[3322390][3]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322390][3]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322390][3]["DeleteItem"][1]["Id"] = 3322390 -- 【库】 3322390 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322390][3]["RewardItem"] = {}
	tAugustActionUp_Pack[3322390][3]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322390][3]["RewardItem"][1]["Id"] = 200543 -- GeneralCat(Charm)[200543][属性:0][叠加:0][金币:0], 【表格】喵呜将军【魅力版】（赠）
	tAugustActionUp_Pack[3322390][3]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑GeneralCat(Charm)（赠）*1
	tAugustActionUp_Pack[3322390][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322390][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322390][3]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322391] = {}
	-- ===60天狗狗坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322391][1]
	-- ===删除:3322391,1
	-- ===
	tAugustActionUp_Pack[3322391][1] = {}
	tAugustActionUp_Pack[3322391][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322391][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322391][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322391][1]["DeleteItem"][1]["Id"] = 3322391 -- 【库】 3322391 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322391][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322391][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322391][1]["RewardItem"][1]["Id"] = 200622 -- RadiantHusky[200622][属性:0][叠加:0][金币:0], 【表格】二哈将军（赠）
	tAugustActionUp_Pack[3322391][1]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑RadiantHusky（赠）*1
	tAugustActionUp_Pack[3322391][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322391][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322391][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322391][2] = {}
	-- ===60天狗狗坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322391][2]
	-- ===删除:3322391,1
	-- ===
	tAugustActionUp_Pack[3322391][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322391][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322391][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322391][2]["DeleteItem"][1]["Id"] = 3322391 -- 【库】 3322391 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322391][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322391][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322391][2]["RewardItem"][1]["Id"] = 200621 -- RadiantSamoyed[200621][属性:0][叠加:0][金币:0], 【表格】萨摩王子（赠）
	tAugustActionUp_Pack[3322391][2]["RewardItem"][1]["Attr"] = "0 1 3 86400 1 0 0 1" -- 60天时效(激活)的1%神佑RadiantSamoyed（赠）*1
	tAugustActionUp_Pack[3322391][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322391][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322391][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322392] = {}
	-- ===30天狗狗坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322392][1]
	-- ===删除:3322392,1
	-- ===
	tAugustActionUp_Pack[3322392][1] = {}
	tAugustActionUp_Pack[3322392][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322392][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322392][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322392][1]["DeleteItem"][1]["Id"] = 3322392 -- 【库】 3322392 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322392][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322392][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322392][1]["RewardItem"][1]["Id"] = 200622 -- RadiantHusky[200622][属性:0][叠加:0][金币:0], 【表格】二哈将军（赠）
	tAugustActionUp_Pack[3322392][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑RadiantHusky（赠）*1
	tAugustActionUp_Pack[3322392][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322392][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322392][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322392][2] = {}
	-- ===30天狗狗坐骑二选一包
	-- ===索引: tAugustActionUp_Pack[3322392][2]
	-- ===删除:3322392,1
	-- ===
	tAugustActionUp_Pack[3322392][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322392][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322392][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322392][2]["DeleteItem"][1]["Id"] = 3322392 -- 【库】 3322392 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322392][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322392][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322392][2]["RewardItem"][1]["Id"] = 200621 -- RadiantSamoyed[200621][属性:0][叠加:0][金币:0], 【表格】萨摩王子（赠）
	tAugustActionUp_Pack[3322392][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑RadiantSamoyed（赠）*1
	tAugustActionUp_Pack[3322392][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322392][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322392][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322393] = {}
	-- ===王者服预约豪礼盒
	-- ===索引: tAugustActionUp_Pack[3322393]
	-- ===删除:3322393,1
	-- ===
	tAugustActionUp_Pack[3322393]["LogId"] = 12001502
	tAugustActionUp_Pack[3322393]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322393]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322393]["DeleteItem"][1]["Id"] = 3322393 -- 【库】 3322393 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322393]["RewardItem"] = {}
	tAugustActionUp_Pack[3322393]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322393]["RewardItem"][1]["Id"] = 193625 -- ButterflyRose[193625][属性:0][叠加:0][金币:0], 【表格】赠品永久-1%神佑ButterflyRose外套（赠）
	tAugustActionUp_Pack[3322393]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ButterflyRose（赠）*1
	tAugustActionUp_Pack[3322393]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322393]["RewardItem"][2]["Id"] = 200629 -- AuspiciousCloud[200629][属性:0][叠加:0][金币:0], 【表格】赠品永久-1%神佑AuspicousCloud骑宠外套（赠）
	tAugustActionUp_Pack[3322393]["RewardItem"][2]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AuspiciousCloud（赠）*1
	tAugustActionUp_Pack[3322393]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322393]["RewardItem"][3]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】赠品+4赤练石（赠）
	tAugustActionUp_Pack[3322393]["RewardItem"][3]["Attr"] = "0 12 3" -- +4Stone（赠）*12
	tAugustActionUp_Pack[3322393]["RewardStrengthValue"] = {}
	tAugustActionUp_Pack[3322393]["RewardStrengthValue"]["Value"] = 100000 -- 气力值, 【需求】100000气力值
	tAugustActionUp_Pack[3322393]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322393]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322393]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322394] = {}
	-- ===600天石包
	-- ===索引: tAugustActionUp_Pack[3322394]
	-- ===删除:3322394,1
	-- ===
	tAugustActionUp_Pack[3322394]["LogId"] = 12001502
	tAugustActionUp_Pack[3322394]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322394]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322394]["DeleteItem"][1]["Id"] = 3322394 -- 【库】 3322394 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322394]["RewardEMoney"] = {}
	tAugustActionUp_Pack[3322394]["RewardEMoney"]["Value"] = 600 -- 天石, 【需求】600 天石
	tAugustActionUp_Pack[3322394]["RewardEMoney"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322394]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322394]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322394]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322395] = {}
	-- ===1250天石包
	-- ===索引: tAugustActionUp_Pack[3322395]
	-- ===删除:3322395,1
	-- ===
	tAugustActionUp_Pack[3322395]["LogId"] = 12001502
	tAugustActionUp_Pack[3322395]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322395]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322395]["DeleteItem"][1]["Id"] = 3322395 -- 【库】 3322395 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322395]["RewardEMoney"] = {}
	tAugustActionUp_Pack[3322395]["RewardEMoney"]["Value"] = 1250 -- 天石, 【需求】1250 天石
	tAugustActionUp_Pack[3322395]["RewardEMoney"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322395]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322395]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322395]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322396] = {}
	-- ===3200天石包
	-- ===索引: tAugustActionUp_Pack[3322396]
	-- ===删除:3322396,1
	-- ===
	tAugustActionUp_Pack[3322396]["LogId"] = 12001502
	tAugustActionUp_Pack[3322396]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322396]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322396]["DeleteItem"][1]["Id"] = 3322396 -- 【库】 3322396 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322396]["RewardEMoney"] = {}
	tAugustActionUp_Pack[3322396]["RewardEMoney"]["Value"] = 3200 -- 天石, 【需求】3200 天石
	tAugustActionUp_Pack[3322396]["RewardEMoney"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322396]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322396]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322396]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322397] = {}
	-- ===5300天石包
	-- ===索引: tAugustActionUp_Pack[3322397]
	-- ===删除:3322397,1
	-- ===
	tAugustActionUp_Pack[3322397]["LogId"] = 12001502
	tAugustActionUp_Pack[3322397]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322397]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322397]["DeleteItem"][1]["Id"] = 3322397 -- 【库】 3322397 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322397]["RewardEMoney"] = {}
	tAugustActionUp_Pack[3322397]["RewardEMoney"]["Value"] = 5300 -- 天石, 【需求】5300 天石
	tAugustActionUp_Pack[3322397]["RewardEMoney"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322397]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322397]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322397]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322398] = {}
	-- ===10750天石包
	-- ===索引: tAugustActionUp_Pack[3322398]
	-- ===删除:3322398,1
	-- ===
	tAugustActionUp_Pack[3322398]["LogId"] = 12001502
	tAugustActionUp_Pack[3322398]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322398]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322398]["DeleteItem"][1]["Id"] = 3322398 -- 【库】 3322398 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322398]["RewardEMoney"] = {}
	tAugustActionUp_Pack[3322398]["RewardEMoney"]["Value"] = 10750 -- 天石, 【需求】10750 天石
	tAugustActionUp_Pack[3322398]["RewardEMoney"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322398]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322398]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322398]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322399] = {}
	-- ===20500天石包
	-- ===索引: tAugustActionUp_Pack[3322399]
	-- ===删除:3322399,1
	-- ===
	tAugustActionUp_Pack[3322399]["LogId"] = 12001502
	tAugustActionUp_Pack[3322399]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322399]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322399]["DeleteItem"][1]["Id"] = 3322399 -- 【库】 3322399 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322399]["RewardEMoney"] = {}
	tAugustActionUp_Pack[3322399]["RewardEMoney"]["Value"] = 20500 -- 天石, 【需求】20500天石
	tAugustActionUp_Pack[3322399]["RewardEMoney"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322399]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322399]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322399]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322400] = {}
	-- ===42000天石包
	-- ===索引: tAugustActionUp_Pack[3322400]
	-- ===删除:3322400,1
	-- ===
	tAugustActionUp_Pack[3322400]["LogId"] = 12001502
	tAugustActionUp_Pack[3322400]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322400]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322400]["DeleteItem"][1]["Id"] = 3322400 -- 【库】 3322400 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322400]["RewardEMoney"] = {}
	tAugustActionUp_Pack[3322400]["RewardEMoney"]["Value"] = 42000 -- 天石, 【需求】42000天石
	tAugustActionUp_Pack[3322400]["RewardEMoney"]["NewEmoneyLog"] = "10000	0624"
	tAugustActionUp_Pack[3322400]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322400]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322400]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322409] = {}
	-- ===万能神纹精粹（赠）*2包
	-- ===索引: tAugustActionUp_Pack[3322409]
	-- ===删除:3322409,1
	-- ===
	tAugustActionUp_Pack[3322409]["LogId"] = 12001502
	tAugustActionUp_Pack[3322409]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322409]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322409]["DeleteItem"][1]["Id"] = 3322409 -- 【库】 3322409 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322409]["RewardItem"] = {}
	tAugustActionUp_Pack[3322409]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322409]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*2（赠）
	tAugustActionUp_Pack[3322409]["RewardItem"][1]["Attr"] = "0 2 3" -- UniversalRuneEssence（赠）*2
	tAugustActionUp_Pack[3322409]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322409]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322409]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322410] = {}
	-- ===万能神纹精粹（赠）*10包
	-- ===索引: tAugustActionUp_Pack[3322410]
	-- ===删除:3322410,1
	-- ===
	tAugustActionUp_Pack[3322410]["LogId"] = 12001502
	tAugustActionUp_Pack[3322410]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322410]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322410]["DeleteItem"][1]["Id"] = 3322410 -- 【库】 3322410 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322410]["RewardItem"] = {}
	tAugustActionUp_Pack[3322410]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322410]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*10（赠）
	tAugustActionUp_Pack[3322410]["RewardItem"][1]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tAugustActionUp_Pack[3322410]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322410]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322410]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322411] = {}
	-- ===神器源晶（赠）*5包
	-- ===索引: tAugustActionUp_Pack[3322411]
	-- ===删除:3322411,1
	-- ===
	tAugustActionUp_Pack[3322411]["LogId"] = 12001502
	tAugustActionUp_Pack[3322411]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322411]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322411]["DeleteItem"][1]["Id"] = 3322411 -- 【库】 3322411 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322411]["RewardItem"] = {}
	tAugustActionUp_Pack[3322411]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322411]["RewardItem"][1]["Id"] = 3306885 -- RelicCrystal[3306885][属性:9][叠加:10000][金币:0], 【表格】赠神器源晶*5（赠）
	tAugustActionUp_Pack[3322411]["RewardItem"][1]["Attr"] = "0 5" -- RelicCrystal*5
	tAugustActionUp_Pack[3322411]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322411]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322411]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322412] = {}
	-- ===强效护心丹*10包
	-- ===索引: tAugustActionUp_Pack[3322412]
	-- ===删除:3322412,1
	-- ===
	tAugustActionUp_Pack[3322412]["LogId"] = 12001502
	tAugustActionUp_Pack[3322412]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322412]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322412]["DeleteItem"][1]["Id"] = 3322412 -- 【库】 3322412 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322412]["RewardItem"] = {}
	tAugustActionUp_Pack[3322412]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322412]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】赠强效护心丹*10（赠）
	tAugustActionUp_Pack[3322412]["RewardItem"][1]["Attr"] = "0 10" -- SuperProtectionPill*10
	tAugustActionUp_Pack[3322412]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322412]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322412]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322413] = {}
	-- ===回气丹（赠）*10包
	-- ===索引: tAugustActionUp_Pack[3322413]
	-- ===删除:3322413,1
	-- ===
	tAugustActionUp_Pack[3322413]["LogId"] = 12001502
	tAugustActionUp_Pack[3322413]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322413]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322413]["DeleteItem"][1]["Id"] = 3322413 -- 【库】 3322413 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322413]["RewardItem"] = {}
	tAugustActionUp_Pack[3322413]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322413]["RewardItem"][1]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】赠品回气丹*10（赠）
	tAugustActionUp_Pack[3322413]["RewardItem"][1]["Attr"] = "0 10 3" -- Vital~Pill（赠）*10
	tAugustActionUp_Pack[3322413]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322413]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322413]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322414] = {}
	-- ===黄色神纹碎片（赠）*15包
	-- ===索引: tAugustActionUp_Pack[3322414]
	-- ===删除:3322414,1
	-- ===
	tAugustActionUp_Pack[3322414]["LogId"] = 12001502
	tAugustActionUp_Pack[3322414]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322414]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322414]["DeleteItem"][1]["Id"] = 3322414 -- 【库】 3322414 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322414]["RewardItem"] = {}
	tAugustActionUp_Pack[3322414]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322414]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹碎片*15（赠）
	tAugustActionUp_Pack[3322414]["RewardItem"][1]["Attr"] = "0 15" -- YellowRuneFragment（赠）*15
	tAugustActionUp_Pack[3322414]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322414]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322414]["RewardEffect"]["Effect"] = "angelwing"

	
	tAugustActionUp_Pack[3322415] = {}
	tAugustActionUp_Pack[3322415]["LogId"] = 12001502
	-- ===黄色神纹碎片（赠）*20包
	-- ===索引: tAugustActionUp_Pack[3322415]
	-- ===删除:3322415,1
	-- ===
	tAugustActionUp_Pack[3322415]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322415]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322415]["DeleteItem"][1]["Id"] = 3322415 -- 【库】 3322414 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322415]["RewardItem"] = {}
	tAugustActionUp_Pack[3322415]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322415]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹碎片*20（赠）
	tAugustActionUp_Pack[3322415]["RewardItem"][1]["Attr"] = "0 20" -- YellowRuneFragment（赠）*20
	tAugustActionUp_Pack[3322415]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322415]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322415]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322416] = {}
	-- ===8月月卡礼盒
	-- ===索引:  tAugustActionUp_Pack[3322416][1]
	-- ===
	tAugustActionUp_Pack[3322416][1] = {}
	tAugustActionUp_Pack[3322416][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322416][1]["RewardWing"] = {}
	tAugustActionUp_Pack[3322416][1]["RewardWing"]["TitleType"] = 6017 -- 【库】SirenSong, 【表格】15天时效SirenSong
	tAugustActionUp_Pack[3322416][1]["RewardWing"]["TitleId"] = 6017
	tAugustActionUp_Pack[3322416][1]["RewardWing"]["SaveTime"] = 21600 -- 15天时效的[翅膀]:SirenSong, 【需求】15天时效SirenSong
	tAugustActionUp_Pack[3322416][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][1]["RewardItem"][1]["Id"] = 3306976 -- 10000ChiPromoPack[3306976][属性:9][叠加:10000][金币:0], 【表格】1W气力值（赠）
	tAugustActionUp_Pack[3322416][1]["RewardItem"][1]["Attr"] = "0 1" -- 10000ChiPromoPack*1
	tAugustActionUp_Pack[3322416][1]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322416][1]["RewardItem"][2]["Id"] = 3300246 -- RadiantStarPack(5)[3300246][属性:9][叠加:1][金币:0], 【表格】晶莹星陨石
	tAugustActionUp_Pack[3322416][1]["RewardItem"][2]["Attr"] = "0 1" -- RadiantStarPack(5)*1
	tAugustActionUp_Pack[3322416][1]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322416][1]["RewardItem"][3]["Id"] = 3320890 -- +6Stone(B)Pack[3320890][属性:9][叠加:0][金币:0], 【表格】+6赤练石赠（赠）
	tAugustActionUp_Pack[3322416][1]["RewardItem"][3]["Attr"] = "0 1" -- +6Stone(B)Pack*1
	tAugustActionUp_Pack[3322416][1]["RewardItem"][4] = {}
	tAugustActionUp_Pack[3322416][1]["RewardItem"][4]["Id"] = 720652 -- FloodDemonBox[720652][属性:9][叠加:0][金币:0], 【表格】100天石锁妖盒（赠）
	tAugustActionUp_Pack[3322416][1]["RewardItem"][4]["Attr"] = "0 3" -- FloodDemonBox*3
	tAugustActionUp_Pack[3322416][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322416][2] = {}
	-- ===8月月卡礼盒
	-- ===索引:  tAugustActionUp_Pack[3322416][2]
	tAugustActionUp_Pack[3322416][2]["ItemChanceSum"] = 10000
	tAugustActionUp_Pack[3322416][2]["LogId"] = 12001502
	-- 小抽奖券（赠） - 25.00%
	tAugustActionUp_Pack[3322416][2][1] = {}
	tAugustActionUp_Pack[3322416][2][1]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322416][2][1]["ItemChance"] = 2500
	tAugustActionUp_Pack[3322416][2][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][2][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][2][1]["RewardItem"][1]["Id"] = 711504 -- SmallLotteryTicket[711504][属性:9][叠加:10000][金币:0], 【表格】小抽奖券（赠）
	tAugustActionUp_Pack[3322416][2][1]["RewardItem"][1]["Attr"] = "0 1" -- SmallLotteryTicket*1
	tAugustActionUp_Pack[3322416][2][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 明亮星陨石 - 29.00%
	tAugustActionUp_Pack[3322416][2][2] = {}
	tAugustActionUp_Pack[3322416][2][2]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322416][2][2]["ItemChance"] = 2900
	tAugustActionUp_Pack[3322416][2][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][2][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][2][2]["RewardItem"][1]["Id"] = 3300243 -- BrightStarPack(5)[3300243][属性:9][叠加:1][金币:0], 【表格】明亮星陨石
	tAugustActionUp_Pack[3322416][2][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarPack(5)*1
	tAugustActionUp_Pack[3322416][2][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） - 25.50%
	tAugustActionUp_Pack[3322416][2][3] = {}
	tAugustActionUp_Pack[3322416][2][3]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322416][2][3]["ItemChance"] = 2550
	tAugustActionUp_Pack[3322416][2][3]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][2][3]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][2][3]["RewardItem"][1]["Id"] = 3308803 -- UniversalRuneEssence(B)*10Pack[3308803][属性:9][叠加:0][金币:0], 【表格】万能神纹精粹（赠）
	tAugustActionUp_Pack[3322416][2][3]["RewardItem"][1]["Attr"] = "0 1" -- UniversalRuneEssence(B)*10Pack*1
	tAugustActionUp_Pack[3322416][2][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 神纹源晶（赠） - 10.00%
	tAugustActionUp_Pack[3322416][2][4] = {}
	tAugustActionUp_Pack[3322416][2][4]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322416][2][4]["ItemChance"] = 1000
	tAugustActionUp_Pack[3322416][2][4]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][2][4]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][2][4]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）
	tAugustActionUp_Pack[3322416][2][4]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tAugustActionUp_Pack[3322416][2][4]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 300点天石（赠） - 5.00%
	tAugustActionUp_Pack[3322416][2][5] = {}
	tAugustActionUp_Pack[3322416][2][5]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322416][2][5]["ItemChance"] = 500
	tAugustActionUp_Pack[3322416][2][5]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][2][5]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][2][5]["RewardItem"][1]["Id"] = 3321119 -- 300CPs(B)Bag[3321119][属性:9][叠加:10000][金币:0], 【表格】300点天石（赠）
	tAugustActionUp_Pack[3322416][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 300CPs(B)Bag*1
	tAugustActionUp_Pack[3322416][2][5]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 1500气力值（赠） - 5.00%
	tAugustActionUp_Pack[3322416][2][6] = {}
	tAugustActionUp_Pack[3322416][2][6]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322416][2][6]["ItemChance"] = 500
	tAugustActionUp_Pack[3322416][2][6]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][2][6]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][2][6]["RewardItem"][1]["Id"] = 3310677 -- 1500ChiPointsPack[3310677][属性:9][叠加:10000][金币:0], 【表格】1500气力值（赠）
	tAugustActionUp_Pack[3322416][2][6]["RewardItem"][1]["Attr"] = "0 1" -- 1500ChiPointsPack*1
	tAugustActionUp_Pack[3322416][2][6]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][2][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 金刚尖钻（赠） - 0.50%
	tAugustActionUp_Pack[3322416][2][7] = {}
	tAugustActionUp_Pack[3322416][2][7]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322416][2][7]["ItemChance"] = 50
	tAugustActionUp_Pack[3322416][2][7]["RewardItem"] = {}
	tAugustActionUp_Pack[3322416][2][7]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322416][2][7]["RewardItem"][1]["Id"] = 1200005 -- ToughDrill[1200005][属性:0][叠加:0][金币:0], 【表格】金刚尖钻（赠）
	tAugustActionUp_Pack[3322416][2][7]["RewardItem"][1]["Attr"] = "0 1 3" -- ToughDrill（赠）*1
	tAugustActionUp_Pack[3322416][2][7]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322416][2][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322416][2][7]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322417] = {}
	-- ===终生卡礼盒
	-- ===索引:  tAugustActionUp_Pack[3322417][1]
	-- ===
	tAugustActionUp_Pack[3322417][1] = {}
	tAugustActionUp_Pack[3322417][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322417][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322417][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322417][1]["RewardItem"][1]["Id"] = 193625 -- ButterflyRose[193625][属性:0][叠加:0][金币:0], 【表格】30天时效ButterflyRose（赠）
	tAugustActionUp_Pack[3322417][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的ButterflyRose（赠）*1
	tAugustActionUp_Pack[3322417][1]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322417][1]["RewardItem"][2]["Id"] = 3300137 -- 20000ChiPointsPack[3300137][属性:9][叠加:0][金币:0], 【表格】2W气力值（赠）
	tAugustActionUp_Pack[3322417][1]["RewardItem"][2]["Attr"] = "0 1" -- 20000ChiPointsPack*1
	tAugustActionUp_Pack[3322417][1]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322417][1]["RewardItem"][3]["Id"] = 4050001 -- UniversalRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tAugustActionUp_Pack[3322417][1]["RewardItem"][3]["Attr"] = "0 200 3" -- UniversalRuneEssence（赠）*200
	tAugustActionUp_Pack[3322417][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322417][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322417][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322417][2] = {}
	-- ===终生卡礼盒
	-- ===索引:  tAugustActionUp_Pack[3322417][2]
	tAugustActionUp_Pack[3322417][2]["ItemChanceSum"] = 10000
	tAugustActionUp_Pack[3322417][2]["LogId"] = 12001502
	-- 微光星陨石 - 29.00%
	tAugustActionUp_Pack[3322417][2][1] = {}
	tAugustActionUp_Pack[3322417][2][1]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322417][2][1]["ItemChance"] = 2900
	tAugustActionUp_Pack[3322417][2][1]["RewardItem"] = {}
	tAugustActionUp_Pack[3322417][2][1]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322417][2][1]["RewardItem"][1]["Id"] = 3312159 -- 5TwilightStarPack[3312159][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tAugustActionUp_Pack[3322417][2][1]["RewardItem"][1]["Attr"] = "0 1" -- 5TwilightStarPack*1
	tAugustActionUp_Pack[3322417][2][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322417][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322417][2][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值（赠） - 35.00%
	tAugustActionUp_Pack[3322417][2][2] = {}
	tAugustActionUp_Pack[3322417][2][2]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322417][2][2]["ItemChance"] = 3500
	tAugustActionUp_Pack[3322417][2][2]["RewardItem"] = {}
	tAugustActionUp_Pack[3322417][2][2]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322417][2][2]["RewardItem"][1]["Id"] = 3003313 -- 200ChiPointsPack[3003313][属性:9][叠加:0][金币:0], 【表格】200气力值（赠）
	tAugustActionUp_Pack[3322417][2][2]["RewardItem"][1]["Attr"] = "0 1" -- 200ChiPointsPack*1
	tAugustActionUp_Pack[3322417][2][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322417][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322417][2][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 万能神纹精粹（赠） - 25.50%
	tAugustActionUp_Pack[3322417][2][3] = {}
	tAugustActionUp_Pack[3322417][2][3]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322417][2][3]["ItemChance"] = 2550
	tAugustActionUp_Pack[3322417][2][3]["RewardItem"] = {}
	tAugustActionUp_Pack[3322417][2][3]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322417][2][3]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tAugustActionUp_Pack[3322417][2][3]["RewardItem"][1]["Attr"] = "0 1 3" -- UniversalRuneEssence（赠）*1
	tAugustActionUp_Pack[3322417][2][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322417][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322417][2][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 50点天石（赠） - 5.00%
	tAugustActionUp_Pack[3322417][2][4] = {}
	tAugustActionUp_Pack[3322417][2][4]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322417][2][4]["ItemChance"] = 500
	tAugustActionUp_Pack[3322417][2][4]["RewardItem"] = {}
	tAugustActionUp_Pack[3322417][2][4]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322417][2][4]["RewardItem"][1]["Id"] = 3311738 -- 50CPs(B)Bag[3311738][属性:9][叠加:10000][金币:0], 【表格】50点天石（赠）
	tAugustActionUp_Pack[3322417][2][4]["RewardItem"][1]["Attr"] = "0 1" -- 50CPs(B)Bag*1
	tAugustActionUp_Pack[3322417][2][4]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322417][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322417][2][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 500气力值（赠） - 5.00%
	tAugustActionUp_Pack[3322417][2][5] = {}
	tAugustActionUp_Pack[3322417][2][5]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322417][2][5]["ItemChance"] = 500
	tAugustActionUp_Pack[3322417][2][5]["RewardItem"] = {}
	tAugustActionUp_Pack[3322417][2][5]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322417][2][5]["RewardItem"][1]["Id"] = 3306155 -- 500ChiPointsPack[3306155][属性:9][叠加:10000][金币:0], 【表格】500气力值（赠）
	tAugustActionUp_Pack[3322417][2][5]["RewardItem"][1]["Attr"] = "0 1" -- 500ChiPointsPack*1
	tAugustActionUp_Pack[3322417][2][5]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322417][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322417][2][5]["RewardEffect"]["Effect"] = "angelwing"
	-- +4赤练石（赠） - 0.50%
	tAugustActionUp_Pack[3322417][2][6] = {}
	tAugustActionUp_Pack[3322417][2][6]["RandomItemChanceType"] = 2
	tAugustActionUp_Pack[3322417][2][6]["ItemChance"] = 50
	tAugustActionUp_Pack[3322417][2][6]["RewardItem"] = {}
	tAugustActionUp_Pack[3322417][2][6]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322417][2][6]["RewardItem"][1]["Id"] = 3320887 -- +4Stone(B)Pack[3320887][属性:9][叠加:0][金币:0], 【表格】+4赤练石（赠）
	tAugustActionUp_Pack[3322417][2][6]["RewardItem"][1]["Attr"] = "0 1" -- +4Stone(B)Pack*1
	tAugustActionUp_Pack[3322417][2][6]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322417][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322417][2][6]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322418] = {}
	-- ===锁妖盒狂欢包
	-- ===索引: tAugustActionUp_Pack[3322418]
	-- ===删除:3322418,1
	-- ===
	tAugustActionUp_Pack[3322418]["LogId"] = 12001502
	tAugustActionUp_Pack[3322418]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322418]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322418]["DeleteItem"][1]["Id"] = 3322418 -- 【库】 3322418 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322418]["RewardItem"] = {}
	tAugustActionUp_Pack[3322418]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322418]["RewardItem"][1]["Id"] = 3322430 -- FloodDemonChest[3322430][属性:9][叠加:0][金币:0], 【表格】100天石锁妖盒（赠）
	tAugustActionUp_Pack[3322418]["RewardItem"][1]["Attr"] = "0 10" -- FloodDemonChest*10
	tAugustActionUp_Pack[3322418]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322418]["RewardItem"][2]["Id"] = 3303244 -- 30000ChiPointsPack[3303244][属性:11][叠加:0][金币:0], 【表格】3W气力值（赠）
	tAugustActionUp_Pack[3322418]["RewardItem"][2]["Attr"] = "0 1" -- 30000ChiPointsPack*1
	tAugustActionUp_Pack[3322418]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322418]["RewardItem"][3]["Id"] = 3322423 -- 10+3Stones(B)Pack[3322423][属性:9][叠加:0][金币:0], 【表格】+3赤练石*10（赠）
	tAugustActionUp_Pack[3322418]["RewardItem"][3]["Attr"] = "0 1" -- 10+3Stones(B)Pack*1
	tAugustActionUp_Pack[3322418]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322418]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322418]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322419] = {}
	-- ===寻宝狂欢包
	-- ===索引: tAugustActionUp_Pack[3322419]
	-- ===删除:3322419,1
	-- ===
	tAugustActionUp_Pack[3322419]["LogId"] = 12001502
	tAugustActionUp_Pack[3322419]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322419]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322419]["DeleteItem"][1]["Id"] = 3322419 -- 【库】 3322419 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322419]["RewardItem"] = {}
	tAugustActionUp_Pack[3322419]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322419]["RewardItem"][1]["Id"] = 711504 -- SmallLotteryTicket[711504][属性:9][叠加:10000][金币:0], 【表格】小抽奖券礼包（赠）
	tAugustActionUp_Pack[3322419]["RewardItem"][1]["Attr"] = "0 1500" -- SmallLotteryTicket*1500
	tAugustActionUp_Pack[3322419]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322419]["RewardItem"][2]["Id"] = 3303244 -- 30000ChiPointsPack[3303244][属性:11][叠加:0][金币:0], 【表格】3W气力值（赠）
	tAugustActionUp_Pack[3322419]["RewardItem"][2]["Attr"] = "0 1" -- 30000ChiPointsPack*1
	tAugustActionUp_Pack[3322419]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322419]["RewardItem"][3]["Id"] = 3322423 -- 10+3Stones(B)Pack[3322423][属性:9][叠加:0][金币:0], 【表格】+3赤练石*10（赠）
	tAugustActionUp_Pack[3322419]["RewardItem"][3]["Attr"] = "0 1" -- 10+3Stones(B)Pack*1
	tAugustActionUp_Pack[3322419]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322419]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322419]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322420] = {}
	-- ===追加精炼狂欢包
	-- ===索引: tAugustActionUp_Pack[3322420]
	-- ===删除:3322420,1
	-- ===
	tAugustActionUp_Pack[3322420]["LogId"] = 12001502
	tAugustActionUp_Pack[3322420]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322420]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322420]["DeleteItem"][1]["Id"] = 3322420 -- 【库】 3322420 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322420]["RewardItem"] = {}
	tAugustActionUp_Pack[3322420]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322420]["RewardItem"][1]["Id"] = 3303244 -- 30000ChiPointsPack[3303244][属性:11][叠加:0][金币:0], 【表格】3W气力值（赠）
	tAugustActionUp_Pack[3322420]["RewardItem"][1]["Attr"] = "0 1" -- 30000ChiPointsPack*1
	tAugustActionUp_Pack[3322420]["RewardItem"][2] = {}
	tAugustActionUp_Pack[3322420]["RewardItem"][2]["Id"] = 3322424 -- 100BrightStarStonesPack[3322424][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tAugustActionUp_Pack[3322420]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的100BrightStarStonesPack*1
	tAugustActionUp_Pack[3322420]["RewardItem"][3] = {}
	tAugustActionUp_Pack[3322420]["RewardItem"][3]["Id"] = 3322425 -- 20+6Stones(B)Pack[3322425][属性:9][叠加:0][金币:0], 【表格】+6赤练石（赠）
	tAugustActionUp_Pack[3322420]["RewardItem"][3]["Attr"] = "0 1" -- 20+6Stones(B)Pack*1
	tAugustActionUp_Pack[3322420]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322420]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322420]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322421] = {}
	-- ===15天SirenSong包
	-- ===索引: tAugustActionUp_Pack[3322421]
	-- ===删除:3322421,1
	-- ===
	tAugustActionUp_Pack[3322421]["LogId"] = 12001502
	tAugustActionUp_Pack[3322421]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322421]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322421]["DeleteItem"][1]["Id"] = 3322421 -- 【库】 3322421 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322421]["RewardWing"] = {}
	tAugustActionUp_Pack[3322421]["RewardWing"]["TitleType"] = 6017 -- 【库】SirenSong, 【表格】15天时效SirenSong
	tAugustActionUp_Pack[3322421]["RewardWing"]["TitleId"] = 6017
	tAugustActionUp_Pack[3322421]["RewardWing"]["SaveTime"] = 21600 -- 15天时效的[翅膀]:SirenSong, 【需求】15天时效SirenSong
	tAugustActionUp_Pack[3322421]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322421]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322421]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322422] = {}
	-- ===30天ButterflyRose包
	-- ===索引: tAugustActionUp_Pack[3322422]
	-- ===删除:3322422,1
	-- ===
	tAugustActionUp_Pack[3322422]["LogId"] = 12001502
	tAugustActionUp_Pack[3322422]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322422]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322422]["DeleteItem"][1]["Id"] = 3322422 -- 【库】 3322422 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322422]["RewardItem"] = {}
	tAugustActionUp_Pack[3322422]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322422]["RewardItem"][1]["Id"] = 193625 -- ButterflyRose[193625][属性:0][叠加:0][金币:0], 【表格】30天时效ButterflyRose
	tAugustActionUp_Pack[3322422]["RewardItem"][1]["Attr"] = "0 1 0 43200 1" -- 30天时效(激活)的ButterflyRose*1
	tAugustActionUp_Pack[3322422]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322422]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322422]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322423] = {}
	-- ===加3赤炼石（赠）*10包
	-- ===索引: tAugustActionUp_Pack[3322423]
	-- ===删除:3322423,1
	-- ===
	tAugustActionUp_Pack[3322423]["LogId"] = 12001502
	tAugustActionUp_Pack[3322423]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322423]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322423]["DeleteItem"][1]["Id"] = 3322423 -- 【库】 3322423 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322423]["RewardItem"] = {}
	tAugustActionUp_Pack[3322423]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322423]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】加3赤练石*10（赠）
	tAugustActionUp_Pack[3322423]["RewardItem"][1]["Attr"] = "0 10 3" -- +3Stone（赠）*10
	tAugustActionUp_Pack[3322423]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322423]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322423]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322424] = {}
	-- ===明亮星陨石*100包
	-- ===索引: tAugustActionUp_Pack[3322424]
	-- ===删除:3322424,1
	-- ===
	tAugustActionUp_Pack[3322424]["LogId"] = 12001502
	tAugustActionUp_Pack[3322424]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322424]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322424]["DeleteItem"][1]["Id"] = 3322424 -- 【库】 3322424 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322424]["RewardItem"] = {}
	tAugustActionUp_Pack[3322424]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322424]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*10包*10
	tAugustActionUp_Pack[3322424]["RewardItem"][1]["Attr"] = "0 10 0 2880 1" -- 2天时效(激活)的RadiantStarStone*10
	tAugustActionUp_Pack[3322424]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322424]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322424]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322425] = {}
	-- ===加6赤炼石（赠）*20包
	-- ===索引: tAugustActionUp_Pack[3322425]
	-- ===删除:3322425,1
	-- ===
	tAugustActionUp_Pack[3322425]["LogId"] = 12001502
	tAugustActionUp_Pack[3322425]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322425]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322425]["DeleteItem"][1]["Id"] = 3322425 -- 【库】 3322425 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322425]["RewardItem"] = {}
	tAugustActionUp_Pack[3322425]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322425]["RewardItem"][1]["Id"] = 3322426 -- 10+6Stones(B)Pack[3322426][属性:9][叠加:0][金币:0], 【表格】加6赤炼石（赠）*10包*2
	tAugustActionUp_Pack[3322425]["RewardItem"][1]["Attr"] = "0 2" -- 10+6Stones(B)Pack*2
	tAugustActionUp_Pack[3322425]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322425]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322425]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322426] = {}
	-- ===加6赤炼石（赠）*10包
	-- ===索引: tAugustActionUp_Pack[3322426]
	-- ===删除:3322426,1
	-- ===
	tAugustActionUp_Pack[3322426]["LogId"] = 12001502
	tAugustActionUp_Pack[3322426]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322426]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322426]["DeleteItem"][1]["Id"] = 3322426 -- 【库】 3322426 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322426]["RewardItem"] = {}
	tAugustActionUp_Pack[3322426]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322426]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】加6赤炼石（赠）*10
	tAugustActionUp_Pack[3322426]["RewardItem"][1]["Attr"] = "0 10 3" -- +6Stone（赠）*10
	tAugustActionUp_Pack[3322426]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322426]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322426]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322427] = {}
	-- ===90天时效称号3选1包
	-- ===索引: tAugustActionUp_Pack[3322427][1]
	-- ===删除:3322427,1
	-- ===
	tAugustActionUp_Pack[3322427][1] = {}
	tAugustActionUp_Pack[3322427][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322427][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322427][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322427][1]["DeleteItem"][1]["Id"] = 3322427 -- 【库】 3322427 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322427][1]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322427][1]["RewardTitle"]["TitleType"] = 2134 -- 【库】Tycoon, 【表格】90天时效Tycoon称号
	tAugustActionUp_Pack[3322427][1]["RewardTitle"]["TitleId"] = 2134
	tAugustActionUp_Pack[3322427][1]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Tycoon, 【需求】90天时效Tycoon称号
	tAugustActionUp_Pack[3322427][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322427][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322427][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===90天时效称号3选1包
	-- ===索引: tAugustActionUp_Pack[3322427][2]
	-- ===删除:3322427,1
	-- ===
	tAugustActionUp_Pack[3322427][2] = {}
	tAugustActionUp_Pack[3322427][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322427][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322427][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322427][2]["DeleteItem"][1]["Id"] = 3322427 -- 【库】 3322427 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322427][2]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322427][2]["RewardTitle"]["TitleType"] = 2135 -- 【库】Magnifico, 【表格】90天时效Magnifico称号
	tAugustActionUp_Pack[3322427][2]["RewardTitle"]["TitleId"] = 2135
	tAugustActionUp_Pack[3322427][2]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Magnifico, 【需求】90天时效Magnifico称号
	tAugustActionUp_Pack[3322427][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322427][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322427][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===90天时效称号3选1包
	-- ===索引: tAugustActionUp_Pack[3322427][3]
	-- ===删除:3322427,1
	-- ===
	tAugustActionUp_Pack[3322427][3] = {}
	tAugustActionUp_Pack[3322427][3]["LogId"] = 12001502
	tAugustActionUp_Pack[3322427][3]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322427][3]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322427][3]["DeleteItem"][1]["Id"] = 3322427 -- 【库】 3322427 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322427][3]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322427][3]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】90天时效Millionaire称号
	tAugustActionUp_Pack[3322427][3]["RewardTitle"]["TitleId"] = 2136
	tAugustActionUp_Pack[3322427][3]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Millionaire , 【需求】90天时效Millionaire称号
	tAugustActionUp_Pack[3322427][3]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322427][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322427][3]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322428] = {}
	-- ===90天时效称号2选1包
	-- ===索引: tAugustActionUp_Pack[3322428][1]
	-- ===删除:3322428,1
	-- ===
	tAugustActionUp_Pack[3322428][1] = {}
	tAugustActionUp_Pack[3322428][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322428][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322428][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322428][1]["DeleteItem"][1]["Id"] = 3322428 -- 【库】 3322428 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322428][1]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322428][1]["RewardTitle"]["TitleType"] = 2135 -- 【库】Magnifico, 【表格】90天时效Magnifico称号
	tAugustActionUp_Pack[3322428][1]["RewardTitle"]["TitleId"] = 2135
	tAugustActionUp_Pack[3322428][1]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Magnifico, 【需求】90天时效Magnifico称号
	tAugustActionUp_Pack[3322428][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322428][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322428][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322428][2] = {}
	-- ===90天时效称号2选1包
	-- ===索引: tAugustActionUp_Pack[3322428][2]
	-- ===删除:3322428,1
	-- ===
	tAugustActionUp_Pack[3322428][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322428][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322428][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322428][2]["DeleteItem"][1]["Id"] = 3322428 -- 【库】 3322428 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322428][2]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322428][2]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】90天时效Millionaire称号 
	tAugustActionUp_Pack[3322428][2]["RewardTitle"]["TitleId"] = 2136
	tAugustActionUp_Pack[3322428][2]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Millionaire , 【需求】90天时效Millionaire称号 
	tAugustActionUp_Pack[3322428][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322428][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322428][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322429] = {}
	-- ===60天时效称号2选1包
	-- ===索引: tAugustActionUp_Pack[3322429][1]
	-- ===删除:3322429,1
	-- ===
	tAugustActionUp_Pack[3322429][1] = {}
	tAugustActionUp_Pack[3322429][1]["LogId"] = 12001502
	tAugustActionUp_Pack[3322429][1]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322429][1]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322429][1]["DeleteItem"][1]["Id"] = 3322429 -- 【库】 3322429 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322429][1]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322429][1]["RewardTitle"]["TitleType"] = 2135 -- 【库】Magnifico, 【表格】60天时效Magnifico称号
	tAugustActionUp_Pack[3322429][1]["RewardTitle"]["TitleId"] = 2135
	tAugustActionUp_Pack[3322429][1]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:Magnifico, 【需求】60天时效Magnifico称号
	tAugustActionUp_Pack[3322429][1]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322429][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322429][1]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322429][2] = {}
	-- ===60天时效称号2选1包
	-- ===索引: tAugustActionUp_Pack[3322429][2]
	-- ===删除:3322429,1
	-- ===
	tAugustActionUp_Pack[3322429][2]["LogId"] = 12001502
	tAugustActionUp_Pack[3322429][2]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322429][2]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322429][2]["DeleteItem"][1]["Id"] = 3322429 -- 【库】 3322429 【库里没有该物品】[属性:]
	tAugustActionUp_Pack[3322429][2]["RewardTitle"] = {}
	tAugustActionUp_Pack[3322429][2]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】60天时效Millionaire称号 
	tAugustActionUp_Pack[3322429][2]["RewardTitle"]["TitleId"] = 2136
	tAugustActionUp_Pack[3322429][2]["RewardTitle"]["SaveTime"] = 86400 -- 60天时效的[称号]:Millionaire , 【需求】60天时效Millionaire称号 
	tAugustActionUp_Pack[3322429][2]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322429][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322429][2]["RewardEffect"]["Effect"] = "angelwing"


	tAugustActionUp_Pack[3322430] = {}
	-- ===100天石锁妖盒*10包
	-- ===索引: tAugustActionUp_Pack[3322430]
	-- ===删除:3322430,1
	-- ===
	tAugustActionUp_Pack[3322430]["LogId"] = 12001502
	tAugustActionUp_Pack[3322430]["DeleteItem"] = {}
	tAugustActionUp_Pack[3322430]["DeleteItem"][1] = {}
	tAugustActionUp_Pack[3322430]["DeleteItem"][1]["Id"] = 3322430 -- 【库】FloodDemonChest[属性:9]
	tAugustActionUp_Pack[3322430]["RewardItem"] = {}
	tAugustActionUp_Pack[3322430]["RewardItem"][1] = {}
	tAugustActionUp_Pack[3322430]["RewardItem"][1]["Id"] = 720652 -- FloodDemonBox[720652][属性:9][叠加:0][金币:0], 【表格】100天石锁妖盒*10（赠）
	tAugustActionUp_Pack[3322430]["RewardItem"][1]["Attr"] = "0 10" -- FloodDemonBox*10
	tAugustActionUp_Pack[3322430]["RewardEffect"] = {}
	tAugustActionUp_Pack[3322430]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tAugustActionUp_Pack[3322430]["RewardEffect"]["Effect"] = "angelwing"










local tAugustActionUp_Data = {}
tAugustActionUp_Data["EMoney"] = {}
tAugustActionUp_Data["EMoney"][3322394] = 600
tAugustActionUp_Data["EMoney"][3322395] = 1250
tAugustActionUp_Data["EMoney"][3322396] = 3200
tAugustActionUp_Data["EMoney"][3322397] = 5300
tAugustActionUp_Data["EMoney"][3322398] = 10750
tAugustActionUp_Data["EMoney"][3322399] = 20500
tAugustActionUp_Data["EMoney"][3322400] = 42000



local tAugustActionUp_Stc = {}
--记录月卡开启次数
tAugustActionUp_Stc[3322416] = {}
tAugustActionUp_Stc[3322416]["EventType"] = 200
tAugustActionUp_Stc[3322416]["DataType"] = 43
--记录终身卡开启次数
tAugustActionUp_Stc[3322417] = {}
tAugustActionUp_Stc[3322417]["EventType"] = 200
tAugustActionUp_Stc[3322417]["DataType"] = 44

local tAugustActionUp_Log = {}
tAugustActionUp_Log["DeleteLog"] = "0,0,%d,%d,0,12001502,2,0,0"
tAugustActionUp_Log["EMonyeLog"] = {}
tAugustActionUp_Log["EMonyeLog"]["EMonoMony"] = "10000	0607	0	0	%d	"

----------------------------------------------------------------逻辑部分
--可选包逻辑
function AugustActionUp_ChoicePack(nItemId,nChoNum)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tAugustActionUp_Pack[nItemId][nChoNum])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tAugustActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tAugustActionUp_Pack[nItemId][nChoNum])
end
--可选包对白跳转
function AugustActionUp_ChoiceWT(nPackId,nNum,nItemId)
	local nItemName = Get_ItemtypeName(nItemId)
	tItem[nPackId]["Text121"] = string.format(tAugustActionUp_Text[nPackId]["Text121"],nItemName)
	tItem[nPackId]["OptionFunc121"] = "AugustActionUp_ChoicePack</N>" ..nPackId.. "</N>" ..nNum
	LinkItemGossipFunc_New(nPackId,"1-2")
end 

--可选包对白跳转
function AugustActionUp_ChoiceReward(nPackId,nNum,nOptionId)
	local nItemName = tAugustActionUp_Text[nPackId]["Option" ..nOptionId]
	tItem[nPackId]["Text121"] = string.format(tAugustActionUp_Text[nPackId]["Text121"],nItemName)
	tItem[nPackId]["OptionFunc121"] = "AugustActionUp_ChoicePack</N>" ..nPackId.. "</N>" ..nNum
	-- tItem[nPackId]["OptionFunc121"] = "RewardTemplate_UseItemAndMsg</N>[" ..nPackId.. "][" ..nNum.. "]"
	LinkItemGossipFunc_New(nPackId,"1-2")
end 

--随机奖励礼包逻辑
function AugustActionUp_RandomPack(nItemId)
	-- local nSpace = 2
	local nSpace = RewardTemplate_GetRandomSpace(tAugustActionUp_Pack,nItemId)
	if not User_CheckLeftSpace(nSpace) then  --背包空间
		User_TalkChannel2005(tAugustActionUp_Text["Sys_MsgBox"]["NoSpace"])
		return
	end
	-- RewardTemplate_NewRandom(tAugustActionUp_Pack,nItemId)
	RewardTemplate_RandomReward(tAugustActionUp_Pack,nItemId)
end

--随机赠点礼包逻辑
function AugustActionUp_RandomMono(nItemId)
	local nRewardEMoneyM = 900
	if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tAugustActionUp_Text["Sys_MsgBox"]["NoMonomoney"])
		return
	end 
	-- RewardTemplate_NewRandom(tAugustActionUp_Pack,nItemId)
	-- RewardTemplate_RandomReward(tAugustActionUp_Pack,nItemId)
	local tNum,sText = RewardTemplate_RandomReward(tAugustActionUp_Pack,nItemId)
	-- if tNum[1]["tAward"][1]["RewardEMoneyMono"]["NewEmoneyLog"] ~= nil then 
		-- -- local tTextLog2 = string.format(tAugustActionUp_Log["EMonyeLog"]["EMonoMony"],-nRewardEMoneyM)
		-- local tTextLog2 = tNum[1]["tAward"][1]["RewardEMoneyMono"]["NewEmoneyLog"]
		-- Sys_SaveEmoneyBuy(tTextLog2)
	-- end 
end

-- function AugustActionUp_RandomPack(nItemId)
	-- local nSpace = 2
	-- if not User_CheckLeftSpace(nSpace) then  --背包空间
		-- User_TalkChannel2005(string.format(tAugustActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
		-- return
	-- end
	-- -- RewardTemplate_NewRandom(tAugustActionUp_Pack,nItemId)
	-- RewardTemplate_RandomReward(tAugustActionUp_Pack,nItemId)
-- end
--天石礼包逻辑
function AugustActionUp_RewardEMoney(nItemId)
	local nEMoney = tAugustActionUp_Data["EMoney"][nItemId]
	if Get_UserEMoney() + nEMoney > G_User_MaxEmoney then 
		User_TalkChannel2005(tAugustActionUp_Text["Sys_MsgBox"]["NotEMoney"])
		return
	end  
	RewardTemplate_UseItemAndMsg(tAugustActionUp_Pack[nItemId])
end

--月卡卡包逻辑
function AugustActionUp_MonthPack(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	if CommonFunc_GetBeforeActivityTime(tActivityTime["AugustActionUp"]["ActionTime"]) then  
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["AugustActionUp"]["ActionTime"]) then   --过期删除
		if Item_DelMulItem(nItemId,nItemId,1) then 
			local tTextLog = string.format(tAugustActionUp_Log["DeleteLog"],nItemId,1)
			Sys_SaveActionFestivalLog(tTextLog)
			return
		end 
	end 
	local nEventType1 = tAugustActionUp_Stc[nItemId]["EventType"]
	local nDataType1 = tAugustActionUp_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 == 0 then 
		local nFirstSpace = 6
		if not User_CheckLeftSpace(nFirstSpace) then --背包空间
			User_TalkChannel2005(string.format(tAugustActionUp_Text["Sys_MsgBox"]["NoSpace"],nFirstSpace))
			return
		end
		Task_AddStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		RewardTemplate_UseItemAndMsg(tAugustActionUp_Pack[nItemId][1])
	else
		if not Task_StcInterval(nEventType1,nDataType1,1,4) then   --判断是否隔天
			Sys_MsgBox(tAugustActionUp_Text["Sys_MsgBox"]["Once"])
			return
		end 
		-- local nRewardEMoneyM = tJulyActionUp_Pack[nItemId][2][5]["RewardEMoneyMono"]["Value"]
		-- if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
			-- User_TalkChannel2005(tAugustActionUp_Text["Sys_MsgBox"]["NotEMoneyMono"])
			-- return
		-- end 
		local nSpace = 1
		if not User_CheckLeftSpace(nSpace) then  --背包空间
			User_TalkChannel2005(string.format(tAugustActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
			return
		end
		if nData1 >= 29 then  --判断是否开满30次，开满删除
			if Item_DelMulItem(nItemId,nItemId,1) then 
				local tTextLog = string.format(tAugustActionUp_Log["DeleteLog"],nItemId,1)
				Sys_SaveActionFestivalLog(tTextLog)
			end 
		end 
		Task_AddStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		local tNum,sText = RewardTemplate_NewRandom(tAugustActionUp_Pack[nItemId],2)
		-- if tNum[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then 
			-- local tTextLog2 = string.format(tAugustActionUp_Log["EMonyeLog"]["EMonoMony"],-nRewardEMoneyM)
			-- Sys_SaveEmoneyBuy(tTextLog2)
		-- end 
	end 
end 

--终身卡包逻辑
function AugustActionUp_ZSPack(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	
	local nEventTypeZS1 = tAugustActionUp_Stc[nItemId]["EventType"]
	local nDataTypeZS1 = tAugustActionUp_Stc[nItemId]["DataType"]
	local nDataZS1 = Get_UserStatisticValue(nEventTypeZS1,nDataTypeZS1)
	if nDataZS1 == 0 then 
		local nFirstSpace = 3
		if not User_CheckLeftSpace(nFirstSpace) then --背包空间
			User_TalkChannel2005(string.format(tAugustActionUp_Text["Sys_MsgBox"]["NoSpace"],nFirstSpace))
			return
		end
		Task_AddStatistic(nEventTypeZS1,nDataTypeZS1,1,1)
		Task_SetStcTimestamp(nEventTypeZS1,nDataTypeZS1,0)
		RewardTemplate_UseItemAndMsg(tAugustActionUp_Pack[nItemId][1])
	else
		if not Task_StcInterval(nEventTypeZS1,nDataTypeZS1,1,4) then   --判断是否隔天
			Sys_MsgBox(tAugustActionUp_Text["Sys_MsgBox"]["Once"])
			return
		end 
		-- local nRewardEMoneyM = tJulyActionUp_Pack[nItemId][2][4]["RewardEMoneyMono"]["Value"]
		-- if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
			-- User_TalkChannel2005(tAugustActionUp_Text["Sys_MsgBox"]["NotEMoneyMono"])
			-- return
		-- end 
		local nSpace = 1
		if not User_CheckLeftSpace(nSpace) then  --背包空间
			User_TalkChannel2005(string.format(tAugustActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
			return
		end
		-- if nDataZS1 >= 29 then  --判断是否开满30次，开满删除
			-- if Item_DelMulItem(nItemId,nItemId,1) then 
				-- local tTextLog = string.format(tAugustActionUp_Log["DeleteLog"],nItemId,1)
				-- Sys_SaveActionFestivalLog(tTextLog)
			-- end 
		-- end 
		Task_AddStatistic(nEventTypeZS1,nDataTypeZS1,1,1)
		Task_SetStcTimestamp(nEventTypeZS1,nDataTypeZS1,0)
		local tNum,sText = RewardTemplate_NewRandom(tAugustActionUp_Pack[nItemId],2)
		-- if tNum[1]["tAward"][1]["RewardEMoneyMono"] ~= nil then 
			-- local tTextLog2 = string.format(tAugustActionUp_Log["EMonyeLog"]["EMonoMony"],-nRewardEMoneyM)
			-- Sys_SaveEmoneyBuy(tTextLog2)
		-- end 
	end 
end 









--------------------------------------------------------对白

--90天时效称号三选一包
tItemFace[3322427] = 1925
tItem[3322427] = tItem[3322427] or {}
tItem[3322427]["DialogueText"] = tAugustActionUp_Text[3322427]
tItem[3322427]["Text1-1"] = {111}
tItem[3322427]["tOption1-1"] = {111,112,113}
tItem[3322427]["OptionFunc111"] = "AugustActionUp_ChoiceReward</N>3322427</N>1</N>111"
tItem[3322427]["OptionFunc112"] = "AugustActionUp_ChoiceReward</N>3322427</N>2</N>112"
tItem[3322427]["OptionFunc113"] = "AugustActionUp_ChoiceReward</N>3322427</N>3</N>113"
tItem[3322427]["Text1-2"] = {121}
tItem[3322427]["tOption1-2"] = {121,122}

--90天时效称号二选一包
tItemFace[3322428] = 1906
tItem[3322428] = tItem[3322428] or {}
tItem[3322428]["DialogueText"] = tAugustActionUp_Text[3322428]
tItem[3322428]["Text1-1"] = {111}
tItem[3322428]["tOption1-1"] = {111,112}
tItem[3322428]["OptionFunc111"] = "AugustActionUp_ChoiceReward</N>3322428</N>1</N>111"
tItem[3322428]["OptionFunc112"] = "AugustActionUp_ChoiceReward</N>3322428</N>2</N>112"
tItem[3322428]["Text1-2"] = {121}
tItem[3322428]["tOption1-2"] = {121,122}

--60天时效称号二选一包
tItemFace[3322429] = 1905
tItem[3322429] = tItem[3322429] or {}
tItem[3322429]["DialogueText"] = tAugustActionUp_Text[3322429]
tItem[3322429]["Text1-1"] = {111}
tItem[3322429]["tOption1-1"] = {111,112}
tItem[3322429]["OptionFunc111"] = "AugustActionUp_ChoiceReward</N>3322429</N>1</N>111"
tItem[3322429]["OptionFunc112"] = "AugustActionUp_ChoiceReward</N>3322429</N>2</N>112"
tItem[3322429]["Text1-2"] = {121}
tItem[3322429]["tOption1-2"] = {121,122}

--90天5星狐狸坐骑三选一包
tItemFace[3322387] = 944
tItem[3322387] = tItem[3322387] or {}
tItem[3322387]["DialogueText"] = tAugustActionUp_Text[3322387]
tItem[3322387]["Text1-1"] = {111}
tItem[3322387]["tOption1-1"] = {111,112,113}
tItem[3322387]["OptionFunc111"] = "AugustActionUp_ChoiceWT</N>3322387</N>1</N>200638"
tItem[3322387]["OptionFunc112"] = "AugustActionUp_ChoiceWT</N>3322387</N>2</N>200639"
tItem[3322387]["OptionFunc113"] = "AugustActionUp_ChoiceWT</N>3322387</N>3</N>200640"
tItem[3322387]["Text1-2"] = {121}
tItem[3322387]["tOption1-2"] = {121,122}

--90天5星狐狸坐骑二选一包
tItemFace[3322388] = 1031
tItem[3322388] = tItem[3322388] or {}
tItem[3322388]["DialogueText"] = tAugustActionUp_Text[3322388]
tItem[3322388]["Text1-1"] = {111}
tItem[3322388]["tOption1-1"] = {111,112}
tItem[3322388]["OptionFunc111"] = "AugustActionUp_ChoiceWT</N>3322388</N>1</N>200639"
tItem[3322388]["OptionFunc112"] = "AugustActionUp_ChoiceWT</N>3322388</N>2</N>200640"
tItem[3322388]["Text1-2"] = {121}
tItem[3322388]["tOption1-2"] = {121,122}

--60天5星狐狸坐骑二选一包
tItemFace[3322389] = 424
tItem[3322389] = tItem[3322389] or {}
tItem[3322389]["DialogueText"] = tAugustActionUp_Text[3322389]
tItem[3322389]["Text1-1"] = {111}
tItem[3322389]["tOption1-1"] = {111,112}
tItem[3322389]["OptionFunc111"] = "AugustActionUp_ChoiceWT</N>3322389</N>1</N>200639"
tItem[3322389]["OptionFunc112"] = "AugustActionUp_ChoiceWT</N>3322389</N>2</N>200640"
tItem[3322389]["Text1-2"] = {121}
tItem[3322389]["tOption1-2"] = {121,122}

--60天猫狗坐骑三选一包
tItemFace[3322390] = 1925
tItem[3322390] = tItem[3322390] or {}
tItem[3322390]["DialogueText"] = tAugustActionUp_Text[3322390]
tItem[3322390]["Text1-1"] = {111}
tItem[3322390]["tOption1-1"] = {111,112,113}
tItem[3322390]["OptionFunc111"] = "AugustActionUp_ChoiceWT</N>3322390</N>1</N>200622"
tItem[3322390]["OptionFunc112"] = "AugustActionUp_ChoiceWT</N>3322390</N>2</N>200621"
tItem[3322390]["OptionFunc113"] = "AugustActionUp_ChoiceWT</N>3322390</N>3</N>200543"
tItem[3322390]["Text1-2"] = {121}
tItem[3322390]["tOption1-2"] = {121,122}

--60天狗狗坐骑二选一包
tItemFace[3322391] = 1906
tItem[3322391] = tItem[3322391] or {}
tItem[3322391]["DialogueText"] = tAugustActionUp_Text[3322391]
tItem[3322391]["Text1-1"] = {111}
tItem[3322391]["tOption1-1"] = {111,112}
tItem[3322391]["OptionFunc111"] = "AugustActionUp_ChoiceWT</N>3322391</N>1</N>200622"
tItem[3322391]["OptionFunc112"] = "AugustActionUp_ChoiceWT</N>3322391</N>2</N>200621"
tItem[3322391]["Text1-2"] = {121}
tItem[3322391]["tOption1-2"] = {121,122}

--30天狗狗坐骑二选一包
tItemFace[3322392] = 1905
tItem[3322392] = tItem[3322392] or {}
tItem[3322392]["DialogueText"] = tAugustActionUp_Text[3322392]
tItem[3322392]["Text1-1"] = {111}
tItem[3322392]["tOption1-1"] = {111,112}
tItem[3322392]["OptionFunc111"] = "AugustActionUp_ChoiceWT</N>3322392</N>1</N>200622"
tItem[3322392]["OptionFunc112"] = "AugustActionUp_ChoiceWT</N>3322392</N>2</N>200621"
tItem[3322392]["Text1-2"] = {121}
tItem[3322392]["tOption1-2"] = {121,122}

-- --璀璨气力豪华可选礼盒
-- tItemFace[3322407] = 1403
-- tItem[3322407] = tItem[3322407] or {}
-- tItem[3322407]["DialogueText"] = tAugustActionUp_Text[3322407]
-- tItem[3322407]["Text1-1"] = {111}
-- tItem[3322407]["tOption1-1"] = {111,112}
-- tItem[3322407]["OptionFunc111"] = "AugustActionUp_ChoiceReward</N>3322407</N>1</N>111"
-- tItem[3322407]["OptionFunc112"] = "AugustActionUp_ChoiceReward</N>3322407</N>2</N>112"
-- tItem[3322407]["Text1-2"] = {121}
-- tItem[3322407]["tOption1-2"] = {121,122}

-- --璀璨气力豪华可选礼盒
-- tItemFace[3322408] = 1403
-- tItem[3322408] = tItem[3322408] or {}
-- tItem[3322408]["DialogueText"] = tAugustActionUp_Text[3322408]
-- tItem[3322408]["Text1-1"] = {111}
-- tItem[3322408]["tOption1-1"] = {111,112}
-- tItem[3322408]["OptionFunc111"] = "AugustActionUp_ChoiceReward</N>3322408</N>1</N>111"
-- tItem[3322408]["OptionFunc112"] = "AugustActionUp_ChoiceReward</N>3322408</N>2</N>112"
-- tItem[3322408]["Text1-2"] = {121}
-- tItem[3322408]["tOption1-2"] = {121,122}




---------------------------------------物品使用逻辑
--随机奖励礼包
tItem[3322338] = tItem[3322338] or {}
tItem[3322338]["Function"] = function(nItemId,sItemName)
	AugustActionUp_RandomPack(nItemId)
end
tItem[3322340] = tItem[3322338] or {}
--随机赠点礼包
tItem[3322339] = tItem[3322339] or {}
tItem[3322339]["Function"] = function(nItemId,sItemName)
	AugustActionUp_RandomMono(nItemId)
end


tItem[3322341] = tItem[3322341] or {}
tItem[3322341]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tAugustActionUp_Pack[nItemId])
end
tItem[3322342] = tItem[3322341] or {}
tItem[3322343] = tItem[3322341] or {}
tItem[3322344] = tItem[3322341] or {}

tItem[3322347] = tItem[3322341] or {}
tItem[3322348] = tItem[3322341] or {}
tItem[3322349] = tItem[3322341] or {}
tItem[3322350] = tItem[3322341] or {}
tItem[3322351] = tItem[3322341] or {}
tItem[3322352] = tItem[3322341] or {}
tItem[3322353] = tItem[3322341] or {}
tItem[3322354] = tItem[3322341] or {}
tItem[3322355] = tItem[3322341] or {}
tItem[3322356] = tItem[3322341] or {}
tItem[3322357] = tItem[3322341] or {}
tItem[3322358] = tItem[3322341] or {}
tItem[3322359] = tItem[3322341] or {}
tItem[3322360] = tItem[3322341] or {}
tItem[3322361] = tItem[3322341] or {}
tItem[3322362] = tItem[3322341] or {}
tItem[3322363] = tItem[3322341] or {}
tItem[3322364] = tItem[3322341] or {}
tItem[3322365] = tItem[3322341] or {}
tItem[3322366] = tItem[3322341] or {}
tItem[3322367] = tItem[3322341] or {}
tItem[3322368] = tItem[3322341] or {}
tItem[3322369] = tItem[3322341] or {}
tItem[3322370] = tItem[3322341] or {}
tItem[3322371] = tItem[3322341] or {}
tItem[3322372] = tItem[3322341] or {}
tItem[3322373] = tItem[3322341] or {}
tItem[3322374] = tItem[3322341] or {}
tItem[3322375] = tItem[3322341] or {}

tItem[3322376] = tItem[3322341] or {}
tItem[3322377] = tItem[3322341] or {}
tItem[3322378] = tItem[3322341] or {}
tItem[3322379] = tItem[3322341] or {}
tItem[3322380] = tItem[3322341] or {}
tItem[3322381] = tItem[3322341] or {}
tItem[3322382] = tItem[3322341] or {}
tItem[3322383] = tItem[3322341] or {}
tItem[3322384] = tItem[3322341] or {}
tItem[3322385] = tItem[3322341] or {}
tItem[3322386] = tItem[3322341] or {}

tItem[3322393] = tItem[3322341] or {}

tItem[3322409] = tItem[3322341] or {}
tItem[3322410] = tItem[3322341] or {}
tItem[3322411] = tItem[3322341] or {}
tItem[3322412] = tItem[3322341] or {}
tItem[3322413] = tItem[3322341] or {}
tItem[3322414] = tItem[3322341] or {}
tItem[3322415] = tItem[3322341] or {}
-- tItem[3322416] = tItem[3322341] or {}
-- tItem[3322417] = tItem[3322341] or {}
tItem[3322418] = tItem[3322341] or {}
tItem[3322419] = tItem[3322341] or {}
tItem[3322420] = tItem[3322341] or {}
-- tItem[3322421] = tItem[3322341] or {}
-- tItem[3322422] = tItem[3322341] or {}

tItem[3322423] = tItem[3322341] or {}
tItem[3322424] = tItem[3322341] or {}
tItem[3322425] = tItem[3322341] or {}
tItem[3322426] = tItem[3322341] or {}
tItem[3322430] = tItem[3322341] or {}

--天石礼包
tItem[3322394] = tItem[3322394] or {}
tItem[3322394]["Function"] = function(nItemId,sItemName)
	AugustActionUp_RewardEMoney(nItemId)
end
tItem[3322395] = tItem[3322394] or {}
tItem[3322396] = tItem[3322394] or {}
tItem[3322397] = tItem[3322394] or {}
tItem[3322398] = tItem[3322394] or {}
tItem[3322399] = tItem[3322394] or {}
tItem[3322400] = tItem[3322394] or {}

-- 月卡卡包
tItem[3322416] = tItem[3322416] or {}
tItem[3322416]["Function"] = function(nItemId,sItemName)
	AugustActionUp_MonthPack(nItemId)
end

--终身卡包
tItem[3322417] = tItem[3322417] or {}
tItem[3322417]["Function"] = function(nItemId,sItemName)
	AugustActionUp_ZSPack(nItemId)
end

-- 3311748