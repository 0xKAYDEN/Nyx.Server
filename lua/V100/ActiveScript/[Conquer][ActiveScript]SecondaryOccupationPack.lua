------------------------------------------------------------------------------------
--Name:			190827[英文征服][活动脚本]副职业提升发奖ID制作（9.05）
--Purpose:		副职业提升发奖ID制作（9.05）
--Creator:		茅志伟
--Created:		2019/08/27
------------------------------------------------------------------------------------

-- 命名前缀 tSecondaryOccupationPack_

-- lua.ini = 41474
-- 41474 = V100\ActiveScript\[Conquer][ActiveScript]SecondaryOccupationPack.lua
-- 41474 = V100\活动脚本\[征服][活动脚本]副职业提升发奖ID制作（9.05）.lua

-- LogId = 12001594


local tSecondaryOccupationPack_Pack = {}
	-- ===副职业1级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323247]
	-- ===删除:3323247,1
	-- ===
	tSecondaryOccupationPack_Pack[3323247] = {}
	tSecondaryOccupationPack_Pack[3323247]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323247]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323247]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323247]["DeleteItem"][1]["Id"] = 3323247 -- 【库】Sub-classL1Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*1
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][2]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠非稀有黄色神纹碎片*2（赠）
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][2]["Attr"] = "0 2" -- YellowRuneFragment*2
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][3]["Id"] = 3309000 -- YellowRuneEssence(B)*2[3309000][属性:9][叠加:1][金币:0], 【表格】黄色神纹精粹*2（赠）
	tSecondaryOccupationPack_Pack[3323247]["RewardItem"][3]["Attr"] = "0 1" -- YellowRuneEssence(B)*2*1
	tSecondaryOccupationPack_Pack[3323247]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323247]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323247]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323248] = {}
	-- ===副职业2级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323248]
	-- ===删除:3323248,1
	-- ===
	tSecondaryOccupationPack_Pack[3323248]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323248]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323248]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323248]["DeleteItem"][1]["Id"] = 3323248 -- 【库】Sub-classL2Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][1]["Id"] = 3306978 -- 3TwilightStarStonesPack[3306978][属性:0][叠加:10][金币:0], 【表格】微光星陨石*3
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的3TwilightStarStonesPack*1
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][2]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠非稀有黄色神纹碎片*2（赠）
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][2]["Attr"] = "0 2" -- YellowRuneFragment*2
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*3（赠）
	tSecondaryOccupationPack_Pack[3323248]["RewardItem"][3]["Attr"] = "0 3 3" -- YellowRuneEssence（赠）*3
	tSecondaryOccupationPack_Pack[3323248]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323248]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323248]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323249] = {}
	-- ===副职业3级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323249]
	-- ===删除:3323249,1
	-- ===
	tSecondaryOccupationPack_Pack[3323249]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323249]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323249]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323249]["DeleteItem"][1]["Id"] = 3323249 -- 【库】Sub-classL3Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*2
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][2]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠非稀有黄色神纹碎片*2（赠）
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][2]["Attr"] = "0 2" -- YellowRuneFragment*2
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][3]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*4（赠）
	tSecondaryOccupationPack_Pack[3323249]["RewardItem"][3]["Attr"] = "0 4 3" -- YellowRuneEssence（赠）*4
	tSecondaryOccupationPack_Pack[3323249]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323249]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323249]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323250] = {}
	-- ===副职业4级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323250]
	-- ===删除:3323250,1
	-- ===
	tSecondaryOccupationPack_Pack[3323250]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323250]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323250]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323250]["DeleteItem"][1]["Id"] = 3323250 -- 【库】Sub-classL4Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3*1（赠）
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][2]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹*10（赠）
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][2]["Attr"] = "0 10" -- SuperProtectionPill*10
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][3]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠非稀有黄色神纹碎片*2（赠）
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][3]["Attr"] = "0 2" -- YellowRuneFragment*2
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][4] = {}
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][4]["Id"] = 3321212 -- YellowRuneEssence(B)*5[3321212][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*5（赠）
	tSecondaryOccupationPack_Pack[3323250]["RewardItem"][4]["Attr"] = "0 1 3" -- YellowRuneEssence(B)*5（赠）*1
	tSecondaryOccupationPack_Pack[3323250]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323250]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323250]["RewardEffect"]["Effect"] = "angelwing"

	tSecondaryOccupationPack_Pack[3323251] = {}
	-- ===副职业5级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323251]
	-- ===删除:3323251,1
	-- ===
	tSecondaryOccupationPack_Pack[3323251]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323251]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323251]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323251]["DeleteItem"][1]["Id"] = 3323251 -- 【库】Sub-classL5Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][1]["Id"] = 3305385 -- 2+3Stone(B)Pack[3305385][属性:9][叠加:10000][金币:0], 【表格】赤炼石+3*2（赠）
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][1]["Attr"] = "0 1" -- 2+3Stone(B)Pack*1
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][2]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】赠非稀有黄色神纹碎片*12（赠）
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][2]["Attr"] = "0 12" -- YellowRuneFragment*12（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][3]["Id"] = 3309009 -- SuperProtectionPill(B)*2[3309009][属性:9][叠加:1][金币:0], 【表格】强效护心丹*2（赠）
	tSecondaryOccupationPack_Pack[3323251]["RewardItem"][3]["Attr"] = "0 1" -- SuperProtectionPill(B)*2*1
	tSecondaryOccupationPack_Pack[3323251]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323251]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323251]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323252] = {}
	-- ===副职业6级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323252]
	-- ===删除:3323252,1
	-- ===
	tSecondaryOccupationPack_Pack[3323252]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323252]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323252]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323252]["DeleteItem"][1]["Id"] = 3323252 -- 【库】Sub-classL6Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][1]["Id"] = 3320887 -- +4Stone(B)Pack[3320887][属性:9][叠加:0][金币:0], 【表格】赤炼石+4 *1（赠）
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][1]["Attr"] = "0 1" -- +4Stone(B)Pack*1
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][2]["Id"] = 3308948 -- 10MeteorScrolls(B)Pack[3308948][属性:9][叠加:0][金币:0], 【表格】流星卷大礼包*3（赠）
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][2]["Attr"] = "0 3" -- 10MeteorScrolls(B)Pack*3
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][3]["Id"] = 3319319 -- PowerEraserPack[3319319][属性:9][叠加:10000][金币:0], 【表格】散功丹*1（赠）
	tSecondaryOccupationPack_Pack[3323252]["RewardItem"][3]["Attr"] = "0 1" -- PowerEraserPack*1
	tSecondaryOccupationPack_Pack[3323252]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323252]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323252]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323253] = {}
	-- ===副职业7级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323253]
	-- ===删除:3323253,1
	-- ===
	tSecondaryOccupationPack_Pack[3323253]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323253]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323253]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323253]["DeleteItem"][1]["Id"] = 3323253 -- 【库】Sub-classL7Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][1]["Id"] = 3305802 -- +5Stone(B)Pack(1)[3305802][属性:9][叠加:10000][金币:0], 【表格】赤炼石+5 *1（赠）
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][1]["Attr"] = "0 1" -- +5Stone(B)Pack(1)*1
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】秘制免费强炼丹*5（赠）
	tSecondaryOccupationPack_Pack[3323253]["RewardItem"][3]["Attr"] = "0 5 3" -- FavoredTrainingPill（赠）*5
	tSecondaryOccupationPack_Pack[3323253]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323253]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323253]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323254] = {}
	-- ===副职业8级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323254]
	-- ===删除:3323254,1
	-- ===
	tSecondaryOccupationPack_Pack[3323254]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323254]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323254]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323254]["DeleteItem"][1]["Id"] = 3323254 -- 【库】Sub-classL8Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*3（赠）
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][2]["Attr"] = "0 3" -- GinsengFruit*3
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】秘制免费强炼丹*10（赠）
	tSecondaryOccupationPack_Pack[3323254]["RewardItem"][3]["Attr"] = "0 10 3" -- FavoredTrainingPill（赠）*10
	tSecondaryOccupationPack_Pack[3323254]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323254]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323254]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323255] = {}
	-- ===副职业9级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323255]
	-- ===删除:3323255,1
	-- ===
	tSecondaryOccupationPack_Pack[3323255]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323255]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323255]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323255]["DeleteItem"][1]["Id"] = 3323255 -- 【库】Sub-classL9Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][2]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】秘制免费强炼丹*10（赠）
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][2]["Attr"] = "0 10 3" -- FavoredTrainingPill（赠）*10
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][3]["Id"] = 3308597 -- +5Steed(B)Box[3308597][属性:9][叠加:0][金币:0], 【表格】马匹+5*1（赠）
	tSecondaryOccupationPack_Pack[3323255]["RewardItem"][3]["Attr"] = "0 1" -- +5Steed(B)Box*1
	tSecondaryOccupationPack_Pack[3323255]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323255]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323255]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323256] = {}
	-- ===副职业10级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323256]
	-- ===删除:3323256,1
	-- ===
	tSecondaryOccupationPack_Pack[3323256]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323256]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323256]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323256]["DeleteItem"][1]["Id"] = 3323256 -- 【库】Sub-classL10Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][1]["Id"] = 3309993 -- 3000ChiPointsBag[3309993][属性:9][叠加:1][金币:0], 【表格】气力值3000（赠）
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][1]["Attr"] = "0 1" -- 3000ChiPointsBag*1
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][2]["Id"] = 3300251 -- BrightStarPack(8)[3300251][属性:9][叠加:1][金币:0], 【表格】明亮星陨石*8
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarPack(8)*1
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][3]["Id"] = 3320989 -- 10GinsengFruitsPack[3320989][属性:9][叠加:1][金币:0], 【表格】人参果*10
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][3]["Attr"] = "0 1" -- 10GinsengFruitsPack*1
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][4] = {}
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][4]["Id"] = 729619 -- PenitenceAmuletPack[729619][属性:11][叠加:0][金币:0], 【表格】清心符*20（赠）
	tSecondaryOccupationPack_Pack[3323256]["RewardItem"][4]["Attr"] = "0 1" -- PenitenceAmuletPack*1
	tSecondaryOccupationPack_Pack[3323256]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323256]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323256]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323257] = {}
	-- ===副职业11级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323257]
	-- ===删除:3323257,1
	-- ===
	tSecondaryOccupationPack_Pack[3323257]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323257]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323257]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323257]["DeleteItem"][1]["Id"] = 3323257 -- 【库】Sub-classL11Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][1]["Id"] = 3304335 -- 5000ChiPointsPack[3304335][属性:9][叠加:10000][金币:0], 【表格】气力值5000（赠）
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][1]["Attr"] = "0 1" -- 5000ChiPointsPack*1
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*1
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][3]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*15
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][3]["Attr"] = "0 15" -- GinsengFruit*15（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][4] = {}
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][4]["Id"] = 720128 -- PenitenceAmulet[720128][属性:0][叠加:10000][金币:0], 【表格】清心符*30（赠）
	tSecondaryOccupationPack_Pack[3323257]["RewardItem"][4]["Attr"] = "0 30 3" -- PenitenceAmulet（赠）*30（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323257]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323257]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323257]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323258] = {}
	-- ===副职业12级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323258]
	-- ===删除:3323258,1
	-- ===
	tSecondaryOccupationPack_Pack[3323258]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323258]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323258]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323258]["DeleteItem"][1]["Id"] = 3323258 -- 【库】Sub-classL12Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][1]["Id"] = 3300172 -- 8000ChiPointsPack[3300172][属性:9][叠加:0][金币:0], 【表格】气力值8000（赠）
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][1]["Attr"] = "0 1" -- 8000ChiPointsPack*1
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][2]["Id"] = 3302938 -- RadiantStarBag(3)[3302938][属性:11][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarBag(3)*1
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][3]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*20
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][3]["Attr"] = "0 20" -- GinsengFruit*20（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][4] = {}
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][4]["Id"] = 723744 -- PowerEXPBall[723744][属性:9][叠加:0][金币:0], 【表格】赠超级经验丹*1（赠）
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][4]["Attr"] = "0 1" -- PowerEXPBall*1
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][5] = {}
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][5]["Id"] = 711083 -- OblivionDew[711083][属性:8][叠加:10][金币:0], 【表格】转世药水*20（赠）
	tSecondaryOccupationPack_Pack[3323258]["RewardItem"][5]["Attr"] = "0 20 3" -- OblivionDew（赠）*20（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323258]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323258]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323258]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323259] = {}
	-- ===副职业13级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323259]
	-- ===删除:3323259,1
	-- ===
	tSecondaryOccupationPack_Pack[3323259]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323259]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323259]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323259]["DeleteItem"][1]["Id"] = 3323259 -- 【库】Sub-classL13Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][1]["Id"] = 3306976 -- 10000ChiPromoPack[3306976][属性:9][叠加:10000][金币:0], 【表格】气力值10000（赠）
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][1]["Attr"] = "0 1" -- 10000ChiPromoPack*1
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][2]["Id"] = 3321941 -- YellowRuneEssences(B)Pack[3321941][属性:9][叠加:0][金币:0], 【表格】黄色神纹精粹*50（赠）
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][2]["Attr"] = "0 1 3" -- YellowRuneEssences(B)Pack（赠）*1
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][3]["Id"] = 3320243 -- RuneCrystal(B)Pack(5)[3320243][属性:9][叠加:0][金币:0], 【表格】赠神纹源晶*5（赠）
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][3]["Attr"] = "0 1" -- RuneCrystal(B)Pack(5)*1
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][4] = {}
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][4]["Id"] = 3320990 -- 30GinsengFruitsPack[3320990][属性:9][叠加:1][金币:0], 【表格】人参果*30
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][4]["Attr"] = "0 1" -- 30GinsengFruitsPack*1
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][5] = {}
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][5]["Id"] = 3322219 -- LuxuryRelicBox[3322219][属性:9][叠加:1][金币:0], 【表格】豪华神器宝箱（赠）
	tSecondaryOccupationPack_Pack[3323259]["RewardItem"][5]["Attr"] = "0 1" -- LuxuryRelicBox*1
	tSecondaryOccupationPack_Pack[3323259]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323259]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323259]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323260] = {}
	-- ===副职业14级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323260]
	-- ===删除:3323260,1
	-- ===
	tSecondaryOccupationPack_Pack[3323260]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323260]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323260]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323260]["DeleteItem"][1]["Id"] = 3323260 -- 【库】Sub-classL14Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][1]["Id"] = 3300137 -- 20000ChiPointsPack[3300137][属性:9][叠加:0][金币:0], 【表格】气力值20000（赠）
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][1]["Attr"] = "0 1" -- 20000ChiPointsPack*1
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][2]["Id"] = 4040001 -- BlueRuneEssence[4040001][属性:9][叠加:10000][金币:0], 【表格】蓝色神纹精粹*80（赠）
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][2]["Attr"] = "0 80 3" -- BlueRuneEssence（赠）*80
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][3]["Id"] = 3320244 -- RuneCrystal(B)Pack(10)[3320244][属性:9][叠加:0][金币:0], 【表格】赠神纹源晶*10（赠）
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][3]["Attr"] = "0 1" -- RuneCrystal(B)Pack(10)*1
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][4] = {}
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][4]["Id"] = 3303373 -- KnowledgePill[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹*40（赠）
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][4]["Attr"] = "0 40" -- KnowledgePill*40（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][5] = {}
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][5]["Id"] = 3323262 -- 5-starMountArmorPack[3323262][属性:9][叠加:0][金币:0], 【表格】赠180天时效神佑-1五星外套三选一包*1（赠）
	tSecondaryOccupationPack_Pack[3323260]["RewardItem"][5]["Attr"] = "0 1" -- 5-starMountArmorPack*1
	tSecondaryOccupationPack_Pack[3323260]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323260]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323260]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323261] = {}
	-- ===副职业15级礼包
	-- ===索引: tSecondaryOccupationPack_Pack[3323261]
	-- ===删除:3323261,1
	-- ===
	tSecondaryOccupationPack_Pack[3323261]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323261]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323261]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323261]["DeleteItem"][1]["Id"] = 3323261 -- 【库】Sub-classL15Pack[属性:9]
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][1]["Id"] = 3303244 -- 30000ChiPointsPack[3303244][属性:11][叠加:0][金币:0], 【表格】气力值30000（赠）
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][1]["Attr"] = "0 1" -- 30000ChiPointsPack*1
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][2] = {}
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100（赠）
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][2]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][3] = {}
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][3]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】赠神纹源晶*15（赠）
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][3]["Attr"] = "0 15 3" -- RuneCrystal（赠）*15（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][4] = {}
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][4]["Id"] = 3301425 -- SuperSkillSoulSplinter[3301425][属性:9][叠加:10000][金币:0], 【表格】赠极品技能外套碎片*20（赠）
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][4]["Attr"] = "0 20" -- SuperSkillSoulSplinter*20（[错误]物品数量超10个）
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][5] = {}
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][5]["Id"] = 3323263 -- 5-starGarmentPack[3323263][属性:9][叠加:0][金币:0], 【表格】赠180天时效神佑-1五星外套三选一包*1（赠）
	tSecondaryOccupationPack_Pack[3323261]["RewardItem"][5]["Attr"] = "0 1" -- 5-starGarmentPack*1
	tSecondaryOccupationPack_Pack[3323261]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323261]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323261]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323262] = {}
	-- ===五星坐骑外套三选一包
	-- ===索引: tSecondaryOccupationPack_Pack[3323262][1]
	-- ===删除:3323262,1
	-- ===
	tSecondaryOccupationPack_Pack[3323262][1] = {}
	tSecondaryOccupationPack_Pack[3323262][1]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323262][1]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323262][1]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323262][1]["DeleteItem"][1]["Id"] = 3323262 -- 【库】5-starMountArmorPack[属性:9]
	tSecondaryOccupationPack_Pack[3323262][1]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323262][1]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323262][1]["RewardItem"][1]["Id"] = 200613 -- FierceCloud[200613][属性:0][叠加:0][金币:0], 【表格】赤霄火云（赠）
	tSecondaryOccupationPack_Pack[3323262][1]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑FierceCloud（赠）*1
	tSecondaryOccupationPack_Pack[3323262][1]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323262][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323262][1]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323262][2] = {}
	-- ===五星坐骑外套三选一包
	-- ===索引: tSecondaryOccupationPack_Pack[3323262][2]
	-- ===删除:3323262,1
	-- ===
	tSecondaryOccupationPack_Pack[3323262][2]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323262][2]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323262][2]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323262][2]["DeleteItem"][1]["Id"] = 3323262 -- 【库】5-starMountArmorPack[属性:9]
	tSecondaryOccupationPack_Pack[3323262][2]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323262][2]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323262][2]["RewardItem"][1]["Id"] = 200614 -- PacificCloud[200614][属性:0][叠加:0][金币:0], 【表格】蓝海苍云（赠）
	tSecondaryOccupationPack_Pack[3323262][2]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑PacificCloud（赠）*1
	tSecondaryOccupationPack_Pack[3323262][2]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323262][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323262][2]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323262][3] = {}
	-- ===五星坐骑外套三选一包
	-- ===索引: tSecondaryOccupationPack_Pack[3323262][3]
	-- ===删除:3323262,1
	-- ===
	tSecondaryOccupationPack_Pack[3323262][3]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323262][3]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323262][3]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323262][3]["DeleteItem"][1]["Id"] = 3323262 -- 【库】5-starMountArmorPack[属性:9]
	tSecondaryOccupationPack_Pack[3323262][3]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323262][3]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323262][3]["RewardItem"][1]["Id"] = 200629 -- AuspiciousCloud[200629][属性:0][叠加:0][金币:0], 【表格】流金祥云（赠）
	tSecondaryOccupationPack_Pack[3323262][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑AuspiciousCloud（赠）*1
	tSecondaryOccupationPack_Pack[3323262][3]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323262][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323262][3]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323263] = {}
	-- ===五星人物外套三选一包
	-- ===索引: tSecondaryOccupationPack_Pack[3323263][1]
	-- ===删除:3323263,1
	-- ===
	tSecondaryOccupationPack_Pack[3323263][1] = {}
	tSecondaryOccupationPack_Pack[3323263][1]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323263][1]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323263][1]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323263][1]["DeleteItem"][1]["Id"] = 3323263 -- 【库】5-starGarmentPack[属性:9]
	tSecondaryOccupationPack_Pack[3323263][1]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323263][1]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323263][1]["RewardItem"][1]["Id"] = 195575 -- CommanderRobe(Wealth)[195575][属性:8][叠加:0][金币:0], 【表格】天蓬朱衣【鸿福】（赠）
	tSecondaryOccupationPack_Pack[3323263][1]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑CommanderRobe(Wealth)（赠）*1
	tSecondaryOccupationPack_Pack[3323263][1]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323263][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323263][1]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323263][2] = {}
	-- ===五星人物外套三选一包
	-- ===索引: tSecondaryOccupationPack_Pack[3323263][2]
	-- ===删除:3323263,1
	-- ===
	tSecondaryOccupationPack_Pack[3323263][2]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323263][2]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323263][2]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323263][2]["DeleteItem"][1]["Id"] = 3323263 -- 【库】5-starGarmentPack[属性:9]
	tSecondaryOccupationPack_Pack[3323263][2]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323263][2]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323263][2]["RewardItem"][1]["Id"] = 195605 -- RockingRomance(Fantasy)[195605][属性:0][叠加:0][金币:0], 【表格】浪漫进行时【梦幻版】（赠）
	tSecondaryOccupationPack_Pack[3323263][2]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑RockingRomance(Fantasy)（赠）*1
	tSecondaryOccupationPack_Pack[3323263][2]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323263][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323263][2]["RewardEffect"]["Effect"] = "angelwing"


	tSecondaryOccupationPack_Pack[3323263][3] = {}
	-- ===五星人物外套三选一包
	-- ===索引: tSecondaryOccupationPack_Pack[3323263][3]
	-- ===删除:3323263,1
	-- ===
	tSecondaryOccupationPack_Pack[3323263][3]["LogId"] = 12001594
	tSecondaryOccupationPack_Pack[3323263][3]["DeleteItem"] = {}
	tSecondaryOccupationPack_Pack[3323263][3]["DeleteItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323263][3]["DeleteItem"][1]["Id"] = 3323263 -- 【库】5-starGarmentPack[属性:9]
	tSecondaryOccupationPack_Pack[3323263][3]["RewardItem"] = {}
	tSecondaryOccupationPack_Pack[3323263][3]["RewardItem"][1] = {}
	tSecondaryOccupationPack_Pack[3323263][3]["RewardItem"][1]["Id"] = 189695 -- MonkeyKingArmor(Heaven)[189695][属性:0][叠加:0][金币:0], 【表格】大圣魔铠【齐天】（赠）
	tSecondaryOccupationPack_Pack[3323263][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1" -- 180天时效(激活)的1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tSecondaryOccupationPack_Pack[3323263][3]["RewardEffect"] = {}
	tSecondaryOccupationPack_Pack[3323263][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSecondaryOccupationPack_Pack[3323263][3]["RewardEffect"]["Effect"] = "angelwing"





-----------------------------------------逻辑
--可选包
function SecondaryOccupationPack_Rewarditem(nItemId,nNum)
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		return
	end 
	RewardTemplate_UseItemAndMsg(tSecondaryOccupationPack_Pack[nItemId][nNum])
end 



-------------------------------------------对白部分
-- 五星坐骑外套三选一包
tItemFace[3323262] = 1008
tItem[3323262] = tItem[3323262] or {}
tItem[3323262]["DialogueText"] = tSecondaryOccupationPack_Text[3323262]
tItem[3323262]["Text1-1"] = {111}
tItem[3323262]["tOption1-1"] = {111,112,113}
tItem[3323262]["OptionFunc111"] = "SecondaryOccupationPack_Rewarditem</N>3323262</N>1"
tItem[3323262]["OptionFunc112"] = "SecondaryOccupationPack_Rewarditem</N>3323262</N>2"
tItem[3323262]["OptionFunc113"] = "SecondaryOccupationPack_Rewarditem</N>3323262</N>3"



-- 五星人物外套三选一包
tItemFace[3323263] = 1007
tItem[3323263] = tItem[3323263] or {}
tItem[3323263]["DialogueText"] = tSecondaryOccupationPack_Text[3323263]
tItem[3323263]["Text1-1"] = {111}
tItem[3323263]["tOption1-1"] = {111,112,113}
tItem[3323263]["OptionFunc111"] = "SecondaryOccupationPack_Rewarditem</N>3323263</N>1"
tItem[3323263]["OptionFunc112"] = "SecondaryOccupationPack_Rewarditem</N>3323263</N>2"
tItem[3323263]["OptionFunc113"] = "SecondaryOccupationPack_Rewarditem</N>3323263</N>3"


-------------------------------------------------礼包使用

tItem[3323247] = tItem[3323247] or {}
tItem[3323247]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSecondaryOccupationPack_Pack[nItemId])
end
tItem[3323248] = tItem[3323247] or {}
tItem[3323249] = tItem[3323247] or {}
tItem[3323250] = tItem[3323247] or {}
tItem[3323251] = tItem[3323247] or {}
tItem[3323252] = tItem[3323247] or {}
tItem[3323253] = tItem[3323247] or {}
tItem[3323254] = tItem[3323247] or {}
tItem[3323255] = tItem[3323247] or {}
tItem[3323256] = tItem[3323247] or {}
tItem[3323257] = tItem[3323247] or {}
tItem[3323258] = tItem[3323247] or {}
tItem[3323259] = tItem[3323247] or {}
tItem[3323260] = tItem[3323247] or {}
tItem[3323261] = tItem[3323247] or {}


