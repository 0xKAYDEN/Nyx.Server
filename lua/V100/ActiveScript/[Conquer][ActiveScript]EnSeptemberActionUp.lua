------------------------------------------------------------------------------------
--Name：        190806[英文征服][活动脚本]9月发奖ID第一波（8.27）
--Creator:      茅志伟
--Created:      2019/08/06
------------------------------------------------------------------------------------
-- 命名前缀 tEnSeptemberActionUp_

-- lua.ini = 41434
-- 41434 = V100\活动脚本\[征服][活动脚本]9月发奖ID第一波（8.27）.lua
-- 41434 = V100\ActiveScript\[Conquer][ActiveScript]EnSeptemberActionUp.lua
-- LogId = 12001551


-- Globalid 53569
	-- data0:3阶灵珠*2单服每日限量1000个
	-- data1:4阶灵珠*1单服每日限量500个
	-- data2:5阶灵珠*1单服每日限量300个
-- Globalid 53570
	-- data0:6阶灵珠*2单服每日限量1000个
	-- data1:7阶灵珠*1单服每日限量500个
	-- data2:8阶灵珠*1单服每日限量300个
-- Globalid 53571
	-- data0:9阶灵珠*2单服每日限量200个
	-- data1:10阶灵珠*1单服每日限量200个
	-- data2:10阶灵珠*2单服每日限量50个
	-- data3:11阶灵珠*1单服每日限量50个
	-- data4:12阶灵珠*1单服每日限量10个

local tEnSeptemberActionUp_Data = {}
tEnSeptemberActionUp_Data["Golobal1"] = 53569 
tEnSeptemberActionUp_Data["Golobal2"] = 53570 
tEnSeptemberActionUp_Data["Golobal3"] = 53571 



local tEnSeptemberActionUp_Pack = {}
	-- ===CelestialDragon（Star）礼包
	-- ===索引:tEnSeptemberActionUp_Pack[3322861]
	-- ===删除:3322861,1
	-- ===
	tEnSeptemberActionUp_Pack[3322861] = {}
	tEnSeptemberActionUp_Pack[3322861]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322861]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322861]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322861]["DeleteItem"][1]["Id"] = 3322861 -- 【库】 3322861 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322861]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322861]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322861]["RewardItem"][1]["Id"] = 200646 -- CelestialDragon(Star)[200646][属性:0][叠加:0][金币:0], 【表格】30天时效CelestialDragon（Star）
	tEnSeptemberActionUp_Pack[3322861]["RewardItem"][1]["Attr"] = "0 1 0 43200 1 0 0 1" -- 30天时效(激活)的1%神佑CelestialDragon(Star)*1
	tEnSeptemberActionUp_Pack[3322861]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322861]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322861]["RewardEffect"]["Effect"] = "angelwing"



	tEnSeptemberActionUp_Pack[3322902] = {}
	-- ===百兵谱豪享包
	-- ===索引:tEnSeptemberActionUp_Pack[3322902]
	-- ===删除:3322902,1
	-- ===
	tEnSeptemberActionUp_Pack[3322902]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322902]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322902]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322902]["DeleteItem"][1]["Id"] = 3322902 -- 【库】 3322902 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322902]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322902]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322902]["RewardItem"][1]["Id"] = 3311744 -- RareYellowRuneFragment[3311744][属性:8][叠加:10000][金币:0], 【表格】赠品稀有黄色神纹碎片*1（赠）
	tEnSeptemberActionUp_Pack[3322902]["RewardItem"][1]["Attr"] = "0 1 3" -- RareYellowRuneFragment（赠）*1
	tEnSeptemberActionUp_Pack[3322902]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322902]["RewardItem"][2]["Id"] = 3322210 -- 2DragonFruitsPack[3322210][属性:9][叠加:1][金币:0], 【表格】龙鳞果*2
	tEnSeptemberActionUp_Pack[3322902]["RewardItem"][2]["Attr"] = "0 1" -- 2DragonFruitsPack*1
	tEnSeptemberActionUp_Pack[3322902]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322902]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322902]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322866] = {}
	-- ===招财礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322866]
	-- ===删除:3322866,1
	-- ===
	tEnSeptemberActionUp_Pack[3322866]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322866]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322866]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322866]["DeleteItem"][1]["Id"] = 3322866 -- 【库】 3322866 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322866]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322866]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322866]["RewardItem"][1]["Id"] = 3301810 -- 1000ChiPointsPack[3301810][属性:9][叠加:0][金币:0], 【表格】1000气力值（赠）
	tEnSeptemberActionUp_Pack[3322866]["RewardItem"][1]["Attr"] = "0 1" -- 1000ChiPointsPack*1
	tEnSeptemberActionUp_Pack[3322866]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322866]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tEnSeptemberActionUp_Pack[3322866]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tEnSeptemberActionUp_Pack[3322866]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322866]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322866]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322867] = {}
	-- ===进宝礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322867]
	-- ===删除:3322867,1
	-- ===
	tEnSeptemberActionUp_Pack[3322867]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322867]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322867]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322867]["DeleteItem"][1]["Id"] = 3322867 -- 【库】 3322867 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322867]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322867]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322867]["RewardItem"][1]["Id"] = 3306976 -- 10000ChiPromoPack[3306976][属性:9][叠加:10000][金币:0], 【表格】赠品10000气力值（赠）
	tEnSeptemberActionUp_Pack[3322867]["RewardItem"][1]["Attr"] = "0 1" -- 10000ChiPromoPack*1
	tEnSeptemberActionUp_Pack[3322867]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322867]["RewardItem"][2]["Id"] = 3321689 -- RuneCrystal(B)Bag[3321689][属性:9][叠加:1][金币:0], 【表格】赠品神纹源晶*1（赠）
	tEnSeptemberActionUp_Pack[3322867]["RewardItem"][2]["Attr"] = "0 1" -- RuneCrystal(B)Bag*1
	tEnSeptemberActionUp_Pack[3322867]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322867]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322867]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322868] = {}
	-- ===招财进宝礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322868]
	-- ===删除:3322868,1
	-- ===
	tEnSeptemberActionUp_Pack[3322868]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322868]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322868]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322868]["DeleteItem"][1]["Id"] = 3322868 -- 【库】 3322868 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322868]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322868]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322868]["RewardItem"][1]["Id"] = 3311148 -- 500000ChiPtsBag[3311148][属性:9][叠加:0][金币:0], 【表格】赠品500000气力值（赠）
	tEnSeptemberActionUp_Pack[3322868]["RewardItem"][1]["Attr"] = "0 1" -- 500000ChiPtsBag*1
	tEnSeptemberActionUp_Pack[3322868]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322868]["RewardItem"][2]["Id"] = 3311821 -- SuperRuneCrystal[3311821][属性:9][叠加:10000][金币:0], 【表格】优质神纹源晶*1（赠）
	tEnSeptemberActionUp_Pack[3322868]["RewardItem"][2]["Attr"] = "0 1" -- SuperRuneCrystal*1
	tEnSeptemberActionUp_Pack[3322868]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322868]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322868]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322869] = {}
	-- ===气力值随机包
	-- ===索引:  tEnSeptemberActionUp_Pack[3322869]
	-- ===删除:3322869,1
	tEnSeptemberActionUp_Pack[3322869]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tEnSeptemberActionUp_Pack[3322869]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322869]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322869]["DeleteItem"][1]["Id"] = 3322869 -- 【库】 3322869 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322869]["LogId"] = 12001551
	-- 1000气力值赠（赠） - 3.00%
	tEnSeptemberActionUp_Pack[3322869][1] = {}
	tEnSeptemberActionUp_Pack[3322869][1]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322869][1]["ItemChance"] = 300
	tEnSeptemberActionUp_Pack[3322869][1]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322869][1]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322869][1]["RewardItem"][1]["Id"] = 3301810 -- 1000ChiPointsPack[3301810][属性:9][叠加:0][金币:0], 【表格】1000气力值赠（赠）
	tEnSeptemberActionUp_Pack[3322869][1]["RewardItem"][1]["Attr"] = "0 1" -- 1000ChiPointsPack*1
	tEnSeptemberActionUp_Pack[3322869][1]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322869][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322869][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 3000气力值赠（赠） - 20.00%
	tEnSeptemberActionUp_Pack[3322869][2] = {}
	tEnSeptemberActionUp_Pack[3322869][2]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322869][2]["ItemChance"] = 2000
	tEnSeptemberActionUp_Pack[3322869][2]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322869][2]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322869][2]["RewardItem"][1]["Id"] = 3309993 -- 3000ChiPointsBag[3309993][属性:9][叠加:1][金币:0], 【表格】3000气力值赠（赠）
	tEnSeptemberActionUp_Pack[3322869][2]["RewardItem"][1]["Attr"] = "0 1" -- 3000ChiPointsBag*1
	tEnSeptemberActionUp_Pack[3322869][2]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322869][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322869][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000气力值赠（赠） - 31.00%
	tEnSeptemberActionUp_Pack[3322869][3] = {}
	tEnSeptemberActionUp_Pack[3322869][3]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322869][3]["ItemChance"] = 3100
	tEnSeptemberActionUp_Pack[3322869][3]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322869][3]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322869][3]["RewardItem"][1]["Id"] = 3321225 -- 5000ChiPointsPack[3321225][属性:9][叠加:1][金币:0], 【表格】5000气力值赠（赠）
	tEnSeptemberActionUp_Pack[3322869][3]["RewardItem"][1]["Attr"] = "0 1" -- 5000ChiPointsPack*1
	tEnSeptemberActionUp_Pack[3322869][3]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322869][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322869][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 6000气力值赠（赠） - 37.00%
	tEnSeptemberActionUp_Pack[3322869][4] = {}
	tEnSeptemberActionUp_Pack[3322869][4]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322869][4]["ItemChance"] = 3700
	tEnSeptemberActionUp_Pack[3322869][4]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322869][4]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322869][4]["RewardItem"][1]["Id"] = 3310152 -- 6000ChiPointsPack[3310152][属性:9][叠加:1][金币:0], 【表格】6000气力值赠（赠）
	tEnSeptemberActionUp_Pack[3322869][4]["RewardItem"][1]["Attr"] = "0 1" -- 6000ChiPointsPack*1
	tEnSeptemberActionUp_Pack[3322869][4]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322869][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322869][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000气力值赠（赠） - 9.00%
	tEnSeptemberActionUp_Pack[3322869][5] = {}
	tEnSeptemberActionUp_Pack[3322869][5]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322869][5]["ItemChance"] = 900
	tEnSeptemberActionUp_Pack[3322869][5]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322869][5]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322869][5]["RewardItem"][1]["Id"] = 3306976 -- 10000ChiPromoPack[3306976][属性:9][叠加:10000][金币:0], 【表格】10000气力值赠（赠）
	tEnSeptemberActionUp_Pack[3322869][5]["RewardItem"][1]["Attr"] = "0 1" -- 10000ChiPromoPack*1
	tEnSeptemberActionUp_Pack[3322869][5]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322869][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322869][5]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322870] = {}
	-- ===招财进宝豪华礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322870]
	-- ===删除:3322870,1
	-- ===
	tEnSeptemberActionUp_Pack[3322870]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322870]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322870]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322870]["DeleteItem"][1]["Id"] = 3322870 -- 【库】 3322870 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322870]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322870]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322870]["RewardItem"][1]["Id"] = 3304581 -- 3RadiantStarStonesBox[3304581][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tEnSeptemberActionUp_Pack[3322870]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的3RadiantStarStonesBox*1
	tEnSeptemberActionUp_Pack[3322870]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322870]["RewardItem"][2]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*3（赠）
	tEnSeptemberActionUp_Pack[3322870]["RewardItem"][2]["Attr"] = "0 3" -- DragonFruit*3
	tEnSeptemberActionUp_Pack[3322870]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322870]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322870]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322871] = {}
	-- ===招财进宝至尊礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322871]
	-- ===删除:3322871,1
	-- ===
	tEnSeptemberActionUp_Pack[3322871]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322871]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322871]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322871]["DeleteItem"][1]["Id"] = 3322871 -- 【库】 3322871 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322871]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322871]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322871]["RewardItem"][1]["Id"] = 3009003 -- SplendidStarStone[3009003][属性:9][叠加:0][金币:0], 【表格】璀璨星陨石*1
	tEnSeptemberActionUp_Pack[3322871]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的SplendidStarStone*1
	tEnSeptemberActionUp_Pack[3322871]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322871]["RewardItem"][2]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果*2（赠）
	tEnSeptemberActionUp_Pack[3322871]["RewardItem"][2]["Attr"] = "0 2" -- MoonFruit*2
	tEnSeptemberActionUp_Pack[3322871]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322871]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322871]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322872] = {}
	-- ===万能神纹精粹（赠）随机包
	-- ===索引:  tEnSeptemberActionUp_Pack[3322872]
	-- ===删除:3322872,1
	tEnSeptemberActionUp_Pack[3322872]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tEnSeptemberActionUp_Pack[3322872]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322872]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322872]["DeleteItem"][1]["Id"] = 3322872 -- 【库】 3322872 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322872]["LogId"] = 12001551
	-- 赠万能神纹精粹*50（赠） - 1.00%
	tEnSeptemberActionUp_Pack[3322872][1] = {}
	tEnSeptemberActionUp_Pack[3322872][1]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322872][1]["ItemChance"] = 100
	tEnSeptemberActionUp_Pack[3322872][1]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322872][1]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322872][1]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence(B)Bag(50)[3321685][属性:9][叠加:1][金币:0], 【表格】赠万能神纹精粹*50（赠）
	tEnSeptemberActionUp_Pack[3322872][1]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence(B)Bag(50)*1
	tEnSeptemberActionUp_Pack[3322872][1]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322872][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322872][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠万能神纹精粹*100（赠） - 42.40%
	tEnSeptemberActionUp_Pack[3322872][2] = {}
	tEnSeptemberActionUp_Pack[3322872][2]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322872][2]["ItemChance"] = 4240
	tEnSeptemberActionUp_Pack[3322872][2]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322872][2]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322872][2]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*100（赠）
	tEnSeptemberActionUp_Pack[3322872][2]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tEnSeptemberActionUp_Pack[3322872][2]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322872][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322872][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠万能神纹精粹*150（赠） - 53.00%
	tEnSeptemberActionUp_Pack[3322872][3] = {}
	tEnSeptemberActionUp_Pack[3322872][3]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322872][3]["ItemChance"] = 5300
	tEnSeptemberActionUp_Pack[3322872][3]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322872][3]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322872][3]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*150（赠）
	tEnSeptemberActionUp_Pack[3322872][3]["RewardItem"][1]["Attr"] = "0 150 3" -- UniversalRuneEssence（赠）*150
	tEnSeptemberActionUp_Pack[3322872][3]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322872][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322872][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠万能神纹精粹*300（赠） - 3.00%
	tEnSeptemberActionUp_Pack[3322872][4] = {}
	tEnSeptemberActionUp_Pack[3322872][4]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322872][4]["ItemChance"] = 300
	tEnSeptemberActionUp_Pack[3322872][4]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322872][4]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322872][4]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*300（赠）
	tEnSeptemberActionUp_Pack[3322872][4]["RewardItem"][1]["Attr"] = "0 300 3" -- UniversalRuneEssence（赠）*300
	tEnSeptemberActionUp_Pack[3322872][4]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322872][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322872][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠万能神纹精粹*600（赠） - 0.50%
	tEnSeptemberActionUp_Pack[3322872][5] = {}
	tEnSeptemberActionUp_Pack[3322872][5]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322872][5]["ItemChance"] = 50
	tEnSeptemberActionUp_Pack[3322872][5]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322872][5]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322872][5]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*600（赠）
	tEnSeptemberActionUp_Pack[3322872][5]["RewardItem"][1]["Attr"] = "0 600 3" -- UniversalRuneEssence（赠）*600
	tEnSeptemberActionUp_Pack[3322872][5]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322872][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322872][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 赠万能神纹精粹*1000（赠） - 0.10%
	tEnSeptemberActionUp_Pack[3322872][6] = {}
	tEnSeptemberActionUp_Pack[3322872][6]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322872][6]["ItemChance"] = 10
	tEnSeptemberActionUp_Pack[3322872][6]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322872][6]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322872][6]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*1000（赠）
	tEnSeptemberActionUp_Pack[3322872][6]["RewardItem"][1]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tEnSeptemberActionUp_Pack[3322872][6]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322872][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322872][6]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322873] = {}
	-- ===修炼礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322873]
	-- ===删除:3322873,1
	-- ===
	tEnSeptemberActionUp_Pack[3322873]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322873]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322873]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322873]["DeleteItem"][1]["Id"] = 3322873 -- 【库】 3322873 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322873]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322873]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322873]["RewardItem"][1]["Id"] = 3002926 -- FreeTrainingPill[3002926][属性:11][叠加:10000][金币:0], 【表格】赠秘制免费修炼丹*50（赠）
	tEnSeptemberActionUp_Pack[3322873]["RewardItem"][1]["Attr"] = "0 50" -- FreeTrainingPill*50
	tEnSeptemberActionUp_Pack[3322873]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322873]["RewardItem"][2]["Id"] = 3303373 -- KnowledgePill[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹*5（赠）
	tEnSeptemberActionUp_Pack[3322873]["RewardItem"][2]["Attr"] = "0 5" -- KnowledgePill*5
	tEnSeptemberActionUp_Pack[3322873]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322873]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322873]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322874] = {}
	-- ===内功礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322874]
	-- ===删除:3322874,1
	-- ===
	tEnSeptemberActionUp_Pack[3322874]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322874]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322874]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322874]["DeleteItem"][1]["Id"] = 3322874 -- 【库】 3322874 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322874]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322874]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322874]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】赠散功丹*5（赠）
	tEnSeptemberActionUp_Pack[3322874]["RewardItem"][1]["Attr"] = "0 5 3" -- PowerEraser（赠）*5
	tEnSeptemberActionUp_Pack[3322874]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322874]["RewardItem"][2]["Id"] = 3303373 -- KnowledgePill[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹*10（赠）
	tEnSeptemberActionUp_Pack[3322874]["RewardItem"][2]["Attr"] = "0 10" -- KnowledgePill*10
	tEnSeptemberActionUp_Pack[3322874]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322874]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322874]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322875] = {}
	-- ===珍宝礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322875]
	-- ===删除:3322875,1
	-- ===
	tEnSeptemberActionUp_Pack[3322875]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322875]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322875]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322875]["DeleteItem"][1]["Id"] = 3322875 -- 【库】 3322875 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322875]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322875]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322875]["RewardItem"][1]["Id"] = 3003651 -- SmallLotteryTicketPack[3003651][属性:0][叠加:0][金币:0], 【表格】非赠小抽奖券*30
	tEnSeptemberActionUp_Pack[3322875]["RewardItem"][1]["Attr"] = "0 1" -- SmallLotteryTicketPack*1
	tEnSeptemberActionUp_Pack[3322875]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322875]["RewardItem"][2]["Id"] = 3321852 -- BigDragonBall(B)Pack[3321852][属性:9][叠加:1][金币:0], 【表格】赠龙珠*2（赠）
	tEnSeptemberActionUp_Pack[3322875]["RewardItem"][2]["Attr"] = "0 1" -- BigDragonBall(B)Pack*1
	tEnSeptemberActionUp_Pack[3322875]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322875]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322875]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322876] = {}
	-- ===珍宝精装盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322876]
	-- ===删除:3322876,1
	-- ===
	tEnSeptemberActionUp_Pack[3322876]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322876]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322876]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322876]["DeleteItem"][1]["Id"] = 3322876 -- 【库】 3322876 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322876]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322876]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322876]["RewardItem"][1]["Id"] = 3319363 -- SmallLotteryTicketPack[3319363][属性:0][叠加:0][金币:0], 【表格】非赠小抽奖券*300
	tEnSeptemberActionUp_Pack[3322876]["RewardItem"][1]["Attr"] = "0 1" -- SmallLotteryTicketPack*1
	tEnSeptemberActionUp_Pack[3322876]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322876]["RewardItem"][2]["Id"] = 3321685 -- UniversalRuneEssence(B)Bag(50)[3321685][属性:9][叠加:1][金币:0], 【表格】万能神纹精粹*50（赠）
	tEnSeptemberActionUp_Pack[3322876]["RewardItem"][2]["Attr"] = "0 1 3" -- UniversalRuneEssence(B)Bag(50)（赠）*1
	tEnSeptemberActionUp_Pack[3322876]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322876]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322876]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322877] = {}
	-- ===赤炼石（赠）随机包
	-- ===索引:  tEnSeptemberActionUp_Pack[3322877]
	-- ===删除:3322877,1
	tEnSeptemberActionUp_Pack[3322877]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tEnSeptemberActionUp_Pack[3322877]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322877]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322877]["DeleteItem"][1]["Id"] = 3322877 -- 【库】 3322877 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322877]["LogId"] = 12001551
	-- +1赤炼石*1（赠） - 4.39%
	tEnSeptemberActionUp_Pack[3322877][1] = {}
	tEnSeptemberActionUp_Pack[3322877][1]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322877][1]["ItemChance"] = 439
	tEnSeptemberActionUp_Pack[3322877][1]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322877][1]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322877][1]["RewardItem"][1]["Id"] = 3309117 -- +1Stone(B)*1Pack[3309117][属性:9][叠加:1][金币:0], 【表格】+1赤炼石*1（赠）
	tEnSeptemberActionUp_Pack[3322877][1]["RewardItem"][1]["Attr"] = "0 1" -- +1Stone(B)*1Pack*1
	tEnSeptemberActionUp_Pack[3322877][1]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322877][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322877][1]["RewardEffect"]["Effect"] = "angelwing"
	-- +2赤炼石*1（赠） - 43.00%
	tEnSeptemberActionUp_Pack[3322877][2] = {}
	tEnSeptemberActionUp_Pack[3322877][2]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322877][2]["ItemChance"] = 4300
	tEnSeptemberActionUp_Pack[3322877][2]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322877][2]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322877][2]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】+2赤炼石*1（赠）
	tEnSeptemberActionUp_Pack[3322877][2]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tEnSeptemberActionUp_Pack[3322877][2]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322877][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322877][2]["RewardEffect"]["Effect"] = "angelwing"
	-- +3赤炼石*1（赠） - 52.00%
	tEnSeptemberActionUp_Pack[3322877][3] = {}
	tEnSeptemberActionUp_Pack[3322877][3]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322877][3]["ItemChance"] = 5200
	tEnSeptemberActionUp_Pack[3322877][3]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322877][3]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322877][3]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3赤炼石*1（赠）
	tEnSeptemberActionUp_Pack[3322877][3]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tEnSeptemberActionUp_Pack[3322877][3]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322877][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322877][3]["RewardEffect"]["Effect"] = "angelwing"
	-- +4赤炼石*1（赠） - 0.50%
	tEnSeptemberActionUp_Pack[3322877][4] = {}
	tEnSeptemberActionUp_Pack[3322877][4]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322877][4]["ItemChance"] = 50
	tEnSeptemberActionUp_Pack[3322877][4]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322877][4]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322877][4]["RewardItem"][1]["Id"] = 3320887 -- +4Stone(B)Pack[3320887][属性:9][叠加:0][金币:0], 【表格】+4赤炼石*1（赠）
	tEnSeptemberActionUp_Pack[3322877][4]["RewardItem"][1]["Attr"] = "0 1" -- +4Stone(B)Pack*1
	tEnSeptemberActionUp_Pack[3322877][4]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322877][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322877][4]["RewardEffect"]["Effect"] = "angelwing"
	-- +5赤炼石*1（赠） - 0.10%
	tEnSeptemberActionUp_Pack[3322877][5] = {}
	tEnSeptemberActionUp_Pack[3322877][5]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322877][5]["ItemChance"] = 10
	tEnSeptemberActionUp_Pack[3322877][5]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322877][5]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322877][5]["RewardItem"][1]["Id"] = 3309005 -- +5Stone(B)Pack[3309005][属性:9][叠加:1][金币:0], 【表格】+5赤炼石*1（赠）
	tEnSeptemberActionUp_Pack[3322877][5]["RewardItem"][1]["Attr"] = "0 1" -- +5Stone(B)Pack*1
	tEnSeptemberActionUp_Pack[3322877][5]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322877][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322877][5]["RewardEffect"]["Effect"] = "angelwing"
	-- +6赤炼石*1（赠） - 0.01%
	tEnSeptemberActionUp_Pack[3322877][6] = {}
	tEnSeptemberActionUp_Pack[3322877][6]["RandomItemChanceType"] = 2
	tEnSeptemberActionUp_Pack[3322877][6]["ItemChance"] = 1
	tEnSeptemberActionUp_Pack[3322877][6]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322877][6]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322877][6]["RewardItem"][1]["Id"] = 3320890 -- +6Stone(B)Pack[3320890][属性:9][叠加:0][金币:0], 【表格】+6赤炼石*1（赠）
	tEnSeptemberActionUp_Pack[3322877][6]["RewardItem"][1]["Attr"] = "0 1" -- +6Stone(B)Pack*1
	tEnSeptemberActionUp_Pack[3322877][6]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322877][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322877][6]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322878] = {}
	-- ===珍宝豪华盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322878]
	-- ===删除:3322878,1
	-- ===
	tEnSeptemberActionUp_Pack[3322878]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322878]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322878]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322878]["DeleteItem"][1]["Id"] = 3322878 -- 【库】 3322878 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322878]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322878]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322878]["RewardItem"][1]["Id"] = 3311632 -- EliteFantasyCrystal[3311632][属性:0][叠加:1][金币:0], 【表格】精品玄晶*1（赠）
	tEnSeptemberActionUp_Pack[3322878]["RewardItem"][1]["Attr"] = "0 1 3" -- EliteFantasyCrystal（赠）*1
	tEnSeptemberActionUp_Pack[3322878]["RewardItem"][2] = {}
	tEnSeptemberActionUp_Pack[3322878]["RewardItem"][2]["Id"] = 3321225 -- 5000ChiPointsPack[3321225][属性:9][叠加:1][金币:0], 【表格】气力值5000点（赠）
	tEnSeptemberActionUp_Pack[3322878]["RewardItem"][2]["Attr"] = "0 1" -- 5000ChiPointsPack*1
	tEnSeptemberActionUp_Pack[3322878]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322878]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322878]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322879] = {}
	-- ===玫瑰花系列武器外套礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322879][1]
	-- ===删除:3322879,1
	-- ===
	tEnSeptemberActionUp_Pack[3322879][1] = {}
	tEnSeptemberActionUp_Pack[3322879][1]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322879][1]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322879][1]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322879][1]["DeleteItem"][1]["Id"] = 3322879 -- 【库】 3322879 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322879][1]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322879][1]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322879][1]["RewardItem"][1]["Id"] = 360149 -- RodofRoses[360149][属性:0][叠加:0][金币:0], 【表格】单手玫瑰花武器外套（赠）
	tEnSeptemberActionUp_Pack[3322879][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- RodofRoses（赠）*1
	tEnSeptemberActionUp_Pack[3322879][1]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322879][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322879][1]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322879][2] = {}
	-- ===玫瑰花系列武器外套礼盒
	-- ===索引:tEnSeptemberActionUp_Pack[3322879][2]
	-- ===删除:3322879,1
	-- ===
	tEnSeptemberActionUp_Pack[3322879][2]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322879][2]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322879][2]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322879][2]["DeleteItem"][1]["Id"] = 3322879 -- 【库】 3322879 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322879][2]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3322879][2]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322879][2]["RewardItem"][1]["Id"] = 350079 -- RodofRoses[350079][属性:0][叠加:0][金币:0], 【表格】双手玫瑰花武器外套（赠）
	tEnSeptemberActionUp_Pack[3322879][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- RodofRoses（赠）*1
	tEnSeptemberActionUp_Pack[3322879][2]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322879][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322879][2]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3322918] = {}
	-- ===1000000天石（赠）礼包
	-- ===索引:tEnSeptemberActionUp_Pack[3322918]
	-- ===删除:3322918,1
	-- ===
	tEnSeptemberActionUp_Pack[3322918] = {}
	tEnSeptemberActionUp_Pack[3322918]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3322918]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3322918]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3322918]["DeleteItem"][1]["Id"] = 3322918 -- 【库】 3322918 【库里没有该物品】[属性:]
	tEnSeptemberActionUp_Pack[3322918]["RewardEMoneyMono"] = {}
	tEnSeptemberActionUp_Pack[3322918]["RewardEMoneyMono"]["Value"] = 1000000 -- 天石（赠）, 【需求】1000000天石（赠）
	tEnSeptemberActionUp_Pack[3322918]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0703"
	tEnSeptemberActionUp_Pack[3322918]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3322918]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3322918]["RewardEffect"]["Effect"] = "angelwing"


	-- ===赠品黄色神纹精粹*1000
	-- ===索引:tEnSeptemberActionUp_Pack[3323244]
	-- ===删除:3323244,1
	-- ===
	tEnSeptemberActionUp_Pack[3323244] = {}
	tEnSeptemberActionUp_Pack[3323244]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3323244]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3323244]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3323244]["DeleteItem"][1]["Id"] = 3323244 -- 【库】YellowRuneEssence(B)Pack[属性:9]
	tEnSeptemberActionUp_Pack[3323244]["RewardItem"] = {}
	tEnSeptemberActionUp_Pack[3323244]["RewardItem"][1] = {}
	tEnSeptemberActionUp_Pack[3323244]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*1000（赠）
	tEnSeptemberActionUp_Pack[3323244]["RewardItem"][1]["Attr"] = "0 1000 3" -- YellowRuneEssence（赠）*1000（[错误]物品数量超100个）
	tEnSeptemberActionUp_Pack[3323244]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3323244]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3323244]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberActionUp_Pack[3323245] = {}
	-- ===修为值5000赠
	-- ===索引:tEnSeptemberActionUp_Pack[3323245]
	-- ===删除:3323245,1
	-- ===
	tEnSeptemberActionUp_Pack[3323245]["LogId"] = 12001551
	tEnSeptemberActionUp_Pack[3323245]["DeleteItem"] = {}
	tEnSeptemberActionUp_Pack[3323245]["DeleteItem"][1] = {}
	tEnSeptemberActionUp_Pack[3323245]["DeleteItem"][1]["Id"] = 3323245 -- 【库】5KPotencyPtsPack[属性:9]
	tEnSeptemberActionUp_Pack[3323245]["RewardRepairValue"] = {}
	tEnSeptemberActionUp_Pack[3323245]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】修为值5000（赠）
	tEnSeptemberActionUp_Pack[3323245]["RewardEffect"] = {}
	tEnSeptemberActionUp_Pack[3323245]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberActionUp_Pack[3323245]["RewardEffect"]["Effect"] = "angelwing"



-------------------------------------------逻辑部分
--随机奖励礼包逻辑
function EnSeptemberActionUp_RandomPack(nItemId)
	-- local nSpace = 2
	local nSpace = RewardTemplate_GetRandomSpace(tEnSeptemberActionUp_Pack,nItemId)
	if not User_CheckLeftSpace(nSpace) then  --背包空间
		User_TalkChannel2005(tEnSeptemberActionUp_Text["Sys_MsgBox"]["NoSpace"])
		return
	end
	-- RewardTemplate_NewRandom(tAugustActionUp_Pack,nItemId)
	RewardTemplate_RandomReward(tEnSeptemberActionUp_Pack,nItemId)
end
--可选包逻辑
function EnSeptemberActionUp_ChoicePack(nItemId,nChoNum)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		return
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tEnSeptemberActionUp_Pack[nItemId][nChoNum])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tEnSeptemberActionUp_Text["Sys_MsgBox"]["NoSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tEnSeptemberActionUp_Pack[nItemId][nChoNum])
end
-- --可选包对白跳转
-- function EnSeptemberActionUp_ChoiceWT(nPackId,nNum,nItemId)
	-- local nItemName = Get_ItemtypeName(nItemId)
	-- tItem[nPackId]["Text121"] = string.format(tEnSeptemberActionUp_Text[nPackId]["Text121"],nItemName)
	-- tItem[nPackId]["OptionFunc121"] = "EnSeptemberActionUp_ChoicePack</N>" ..nPackId.. "</N>" ..nNum
	-- LinkItemGossipFunc_New(nPackId,"1-2")
-- end 
--可选包对白跳转
function EnSeptemberActionUp_ChoiceReward(nPackId,nNum,nOptionId)
	local nItemName = tEnSeptemberActionUp_Text[nPackId]["Option" ..nOptionId]
	tItem[nPackId]["Text121"] = string.format(tEnSeptemberActionUp_Text[nPackId]["Text121"],nItemName)
	tItem[nPackId]["OptionFunc121"] = "EnSeptemberActionUp_ChoicePack</N>" ..nPackId.. "</N>" ..nNum
	-- tItem[nPackId]["OptionFunc121"] = "RewardTemplate_UseItemAndMsg</N>[" ..nPackId.. "][" ..nNum.. "]"
	LinkItemGossipFunc_New(nPackId,"1-2")
end 


--赠点礼包逻辑
function EnSeptemberActionUp_RewardMono(nItemId)
	local nRewardEMoneyM = tEnSeptemberActionUp_Pack[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tEnSeptemberActionUp_Text["Sys_MsgBox"]["NoMonomoney"])
		return
	end 
	RewardTemplate_UseItemAndMsg(tEnSeptemberActionUp_Pack[nItemId])
end 

--清理限量
function EnSeptemberActionUp_ClearGlobal()
	local GolobalId1 = tEnSeptemberActionUp_Data["Golobal1"]
	local GolobalId2 = tEnSeptemberActionUp_Data["Golobal2"]
	local GolobalId3 = tEnSeptemberActionUp_Data["Golobal3"]
	local data5 = Get_SysDynaGlobalData5(GolobalId1)
	if data5 ~= 1 then 
		-- 低阶灵珠转盘
		--重置3阶灵珠*2每日限量
		Sys_SetSynaGlobalData0(GolobalId1,0)
		--重置4阶灵珠*1
		Sys_SetSynaGlobalData1(GolobalId1,0)
		--重置5阶灵珠*1
		Sys_SetSynaGlobalData2(GolobalId1,0)
		-- 中阶灵珠转盘
		--重置6阶灵珠*2
		Sys_SetSynaGlobalData0(GolobalId2,0)
		--重置7阶灵珠*1
		Sys_SetSynaGlobalData1(GolobalId2,0)
		--重置8阶灵珠*1
		Sys_SetSynaGlobalData2(GolobalId2,0)
		-- 高阶灵珠转盘
		--重置9阶灵珠*2
		Sys_SetSynaGlobalData0(GolobalId3,0)
		--重置10阶灵珠*1
		Sys_SetSynaGlobalData1(GolobalId3,0)
		--重置10阶灵珠*2
		Sys_SetSynaGlobalData2(GolobalId3,0)
		--重置11阶灵珠*1
		Sys_SetSynaGlobalData3(GolobalId3,0)
		--重置12阶灵珠*1
		Sys_SetSynaGlobalData4(GolobalId3,0)
		--设置重置动态码表示位，data5 = 1 表示已经重置
		Sys_SetSynaGlobalData5(GolobalId1,1)
	end 
end 

--重置 动态码表示为
function EnSeptemberActionUp_ClearGlobalIdentification()
	local GolobalId1 = tEnSeptemberActionUp_Data["Golobal1"]
	Sys_SetSynaGlobalData5(GolobalId1,0)
end 
----------------------------------------对白模板
--90天时效称号三选一包
tItemFace[3322879] = 2394
tItem[3322879] = tItem[3322879] or {}
tItem[3322879]["DialogueText"] = tEnSeptemberActionUp_Text[3322879]
tItem[3322879]["Text1-1"] = {111}
tItem[3322879]["tOption1-1"] = {111,112}
tItem[3322879]["OptionFunc111"] = "EnSeptemberActionUp_ChoicePack</N>3322879</N>2"
tItem[3322879]["OptionFunc112"] = "EnSeptemberActionUp_ChoicePack</N>3322879</N>1"
tItem[3322879]["Text1-2"] = {121}
tItem[3322879]["tOption1-2"] = {121,122}


---------------------------------------物品使用逻辑

tItem[3322902] = tItem[3322902] or {}
tItem[3322902]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tEnSeptemberActionUp_Pack[nItemId])
end
tItem[3322861] = tItem[3322902] or {}
tItem[3322866] = tItem[3322902] or {}
tItem[3322867] = tItem[3322902] or {}
tItem[3322868] = tItem[3322902] or {}
tItem[3322870] = tItem[3322902] or {}
tItem[3322871] = tItem[3322902] or {}
tItem[3322873] = tItem[3322902] or {}
tItem[3322874] = tItem[3322902] or {}
tItem[3322875] = tItem[3322902] or {}
tItem[3322876] = tItem[3322902] or {}
tItem[3322878] = tItem[3322902] or {}

tItem[3323244] = tItem[3322902] or {}
tItem[3323245] = tItem[3322902] or {}


tItem[3322869] = tItem[3322869] or {}
tItem[3322869]["Function"] = function(nItemId,sItemName)
	EnSeptemberActionUp_RandomPack(nItemId)
end
tItem[3322872] = tItem[3322869] or {}
tItem[3322877] = tItem[3322869] or {}


tItem[3322918] = tItem[3322918] or {}
tItem[3322918]["Function"] = function(nItemId,sItemName)
	EnSeptemberActionUp_RewardMono(nItemId)
end




---------------------------------------------时间自检
--每日清理动态码
	tEnSeptemberActionUp_ClearGlobal = {}
	tEnSeptemberActionUp_ClearGlobal["Type"] = 6
	tEnSeptemberActionUp_ClearGlobal["TimeType"] = 4
	tEnSeptemberActionUp_ClearGlobal["Multiple"] = {}
	tEnSeptemberActionUp_ClearGlobal["Multiple"][1] = "00:00 00:05"
	tEnSeptemberActionUp_ClearGlobal["Func"] = EnSeptemberActionUp_ClearGlobal
table.insert(tSystemTime_InitialData,tEnSeptemberActionUp_ClearGlobal)
--重置动态码标识
--每日清理动态表
	tEnSeptemberActionUp_ClearGlobalIdentification = {}
	tEnSeptemberActionUp_ClearGlobalIdentification["Type"] = 6
	tEnSeptemberActionUp_ClearGlobalIdentification["TimeType"] = 4
	tEnSeptemberActionUp_ClearGlobalIdentification["Multiple"] = {}
	tEnSeptemberActionUp_ClearGlobalIdentification["Multiple"][1] = "00:06 00:10"
	tEnSeptemberActionUp_ClearGlobalIdentification["Func"] = EnSeptemberActionUp_ClearGlobalIdentification
table.insert(tSystemTime_InitialData,tEnSeptemberActionUp_ClearGlobalIdentification)
