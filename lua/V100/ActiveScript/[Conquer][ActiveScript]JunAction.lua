------------------------------------------------------------------------------------
--Name：            200509[英文征服][活动脚本]6月发奖ID第一波（5.26）（返利部分）
--Creator:      耿力兀
--Created:     2020-05-09
------------------------------------------------------------------------------------
--任务需求：
--lua.ini：41829
--前缀：JunAction_
--logid :12001978
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tJunAction_Reward = {}
	-- ===充值返利尊享礼盒
	-- ===索引:tJunAction_Reward[3316173]
	-- ===删除: 3316173,1
	tJunAction_Reward[3316173] = {}
	tJunAction_Reward[3316173]["LogId"] = 12001978
	tJunAction_Reward[3316173]["DeleteItem"] = {}
	tJunAction_Reward[3316173]["DeleteItem"][1] = {}
	tJunAction_Reward[3316173]["DeleteItem"][1]["Id"] = 3316173 -- 【库】CreditRebateDelicateBox[属性:9]
	tJunAction_Reward[3316173]["RewardItem"] = {}
	tJunAction_Reward[3316173]["RewardItem"][1] = {}
	tJunAction_Reward[3316173]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tJunAction_Reward[3316173]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tJunAction_Reward[3316173]["RewardItem"][2] = {}
	tJunAction_Reward[3316173]["RewardItem"][2]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】赠究极通神丹*100
	tJunAction_Reward[3316173]["RewardItem"][2]["Attr"] = "0 100 3" -- SeniorTrainingPill（赠）*100（[错误]物品数量超10个）
	tJunAction_Reward[3316173]["RewardItem"][3] = {}
	tJunAction_Reward[3316173]["RewardItem"][3]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹*50
	tJunAction_Reward[3316173]["RewardItem"][3]["Attr"] = "0 50" -- SuperProtectionPill*50（[错误]物品数量超10个）
	tJunAction_Reward[3316173]["RewardItem"][4] = {}
	tJunAction_Reward[3316173]["RewardItem"][4]["Id"] = 3306367 -- YellowRuneFragment[3306367][属性:0][叠加:10000][金币:0], 【表格】非赠黄色神纹碎片*8
	tJunAction_Reward[3316173]["RewardItem"][4]["Attr"] = "0 8" -- YellowRuneFragment*8
	tJunAction_Reward[3316173]["RewardItem"][5] = {}
	tJunAction_Reward[3316173]["RewardItem"][5]["Id"] = 3316184 -- Rune&ArcaneEliteBox1[3316184][属性:9][叠加:1][金币:0], 【表格】非赠黄色神纹精粹*100或秘术精华*20二选一
	tJunAction_Reward[3316173]["RewardItem"][5]["Attr"] = "0 1" -- Rune&ArcaneEliteBox1*1
	tJunAction_Reward[3316173]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316173]["RewardEffect"] = {}
	tJunAction_Reward[3316173]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316173]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316174] = {}
	-- ===充值返利豪华礼盒
	-- ===索引:tJunAction_Reward[3316174]
	-- ===删除: 3316174,1
	tJunAction_Reward[3316174]["LogId"] = 12001978
	tJunAction_Reward[3316174]["DeleteItem"] = {}
	tJunAction_Reward[3316174]["DeleteItem"][1] = {}
	tJunAction_Reward[3316174]["DeleteItem"][1]["Id"] = 3316174 -- 【库】CreditRebateLuxuryBox[属性:9]
	tJunAction_Reward[3316174]["RewardItem"] = {}
	tJunAction_Reward[3316174]["RewardItem"][1] = {}
	tJunAction_Reward[3316174]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*4
	tJunAction_Reward[3316174]["RewardItem"][1]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的RadiantStarStone*4
	tJunAction_Reward[3316174]["RewardItem"][2] = {}
	tJunAction_Reward[3316174]["RewardItem"][2]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】赠免费强炼丹*200
	tJunAction_Reward[3316174]["RewardItem"][2]["Attr"] = "0 200 3" -- FavoredTrainingPill（赠）*200（[错误]物品数量超10个）
	tJunAction_Reward[3316174]["RewardItem"][3] = {}
	tJunAction_Reward[3316174]["RewardItem"][3]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】赠究极通神丹*50
	tJunAction_Reward[3316174]["RewardItem"][3]["Attr"] = "0 50 3" -- SeniorTrainingPill（赠）*50（[错误]物品数量超10个）
	tJunAction_Reward[3316174]["RewardItem"][4] = {}
	tJunAction_Reward[3316174]["RewardItem"][4]["Id"] = 3306367 -- YellowRuneFragment[3306367][属性:0][叠加:10000][金币:0], 【表格】非赠黄色神纹碎片*7
	tJunAction_Reward[3316174]["RewardItem"][4]["Attr"] = "0 7" -- YellowRuneFragment*7
	tJunAction_Reward[3316174]["RewardItem"][5] = {}
	tJunAction_Reward[3316174]["RewardItem"][5]["Id"] = 3316185 -- Rune&ArcaneEliteBox2[3316185][属性:9][叠加:1][金币:0], 【表格】非赠黄色神纹精粹*80或秘术精华*15二选一
	tJunAction_Reward[3316174]["RewardItem"][5]["Attr"] = "0 1" -- Rune&ArcaneEliteBox2*1
	tJunAction_Reward[3316174]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316174]["RewardEffect"] = {}
	tJunAction_Reward[3316174]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316174]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316175] = {}
	-- ===充值返利精装礼盒
	-- ===索引:tJunAction_Reward[3316175]
	-- ===删除: 3316175,1
	tJunAction_Reward[3316175]["LogId"] = 12001978
	tJunAction_Reward[3316175]["DeleteItem"] = {}
	tJunAction_Reward[3316175]["DeleteItem"][1] = {}
	tJunAction_Reward[3316175]["DeleteItem"][1]["Id"] = 3316175 -- 【库】CreditRebateEliteBox[属性:9]
	tJunAction_Reward[3316175]["RewardItem"] = {}
	tJunAction_Reward[3316175]["RewardItem"][1] = {}
	tJunAction_Reward[3316175]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tJunAction_Reward[3316175]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tJunAction_Reward[3316175]["RewardItem"][2] = {}
	tJunAction_Reward[3316175]["RewardItem"][2]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】非赠天机果*5
	tJunAction_Reward[3316175]["RewardItem"][2]["Attr"] = "0 5" -- MysteryFruit*5
	tJunAction_Reward[3316175]["RewardItem"][3] = {}
	tJunAction_Reward[3316175]["RewardItem"][3]["Id"] = 700073 -- TortoiseGem[700073][属性:0][叠加:0][金币:0], 【表格】非赠极品玄元*3
	tJunAction_Reward[3316175]["RewardItem"][3]["Attr"] = "0 3" -- TortoiseGem*3
	tJunAction_Reward[3316175]["RewardItem"][4] = {}
	tJunAction_Reward[3316175]["RewardItem"][4]["Id"] = 3306367 -- YellowRuneFragment[3306367][属性:0][叠加:10000][金币:0], 【表格】非赠黄色神纹碎片*6
	tJunAction_Reward[3316175]["RewardItem"][4]["Attr"] = "0 6" -- YellowRuneFragment*6
	tJunAction_Reward[3316175]["RewardItem"][5] = {}
	tJunAction_Reward[3316175]["RewardItem"][5]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】非赠黄色神纹精粹*70
	tJunAction_Reward[3316175]["RewardItem"][5]["Attr"] = "0 70" -- YellowRuneEssence*70
	tJunAction_Reward[3316175]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316175]["RewardEffect"] = {}
	tJunAction_Reward[3316175]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316175]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316176] = {}
	-- ===充值返利高级礼盒
	-- ===索引:tJunAction_Reward[3316176]
	-- ===删除: 3316176,1
	tJunAction_Reward[3316176]["LogId"] = 12001978
	tJunAction_Reward[3316176]["DeleteItem"] = {}
	tJunAction_Reward[3316176]["DeleteItem"][1] = {}
	tJunAction_Reward[3316176]["DeleteItem"][1]["Id"] = 3316176 -- 【库】CreditRebateAdvancedBox[属性:9]
	tJunAction_Reward[3316176]["RewardItem"] = {}
	tJunAction_Reward[3316176]["RewardItem"][1] = {}
	tJunAction_Reward[3316176]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tJunAction_Reward[3316176]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tJunAction_Reward[3316176]["RewardItem"][2] = {}
	tJunAction_Reward[3316176]["RewardItem"][2]["Id"] = 3306367 -- YellowRuneFragment[3306367][属性:0][叠加:10000][金币:0], 【表格】非赠黄色神纹碎片*5
	tJunAction_Reward[3316176]["RewardItem"][2]["Attr"] = "0 5" -- YellowRuneFragment*5
	tJunAction_Reward[3316176]["RewardItem"][3] = {}
	tJunAction_Reward[3316176]["RewardItem"][3]["Id"] = 723695 -- BigPermanentStone[723695][属性:0][叠加:0][金币:0], 【表格】赠大固化石*1
	tJunAction_Reward[3316176]["RewardItem"][3]["Attr"] = "0 1 3" -- BigPermanentStone（赠）*1
	tJunAction_Reward[3316176]["RewardItem"][4] = {}
	tJunAction_Reward[3316176]["RewardItem"][4]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】非赠黄色神纹精粹*60
	tJunAction_Reward[3316176]["RewardItem"][4]["Attr"] = "0 60" -- YellowRuneEssence*60
	tJunAction_Reward[3316176]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316176]["RewardEffect"] = {}
	tJunAction_Reward[3316176]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316176]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316177] = {}
	-- ===充值返利中级礼盒
	-- ===索引:tJunAction_Reward[3316177]
	-- ===删除: 3316177,1
	tJunAction_Reward[3316177]["LogId"] = 12001978
	tJunAction_Reward[3316177]["DeleteItem"] = {}
	tJunAction_Reward[3316177]["DeleteItem"][1] = {}
	tJunAction_Reward[3316177]["DeleteItem"][1]["Id"] = 3316177 -- 【库】CreditRebateMediumBox[属性:9]
	tJunAction_Reward[3316177]["RewardItem"] = {}
	tJunAction_Reward[3316177]["RewardItem"][1] = {}
	tJunAction_Reward[3316177]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*1
	tJunAction_Reward[3316177]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tJunAction_Reward[3316177]["RewardItem"][2] = {}
	tJunAction_Reward[3316177]["RewardItem"][2]["Id"] = 3306367 -- YellowRuneFragment[3306367][属性:0][叠加:10000][金币:0], 【表格】非赠黄色神纹碎片*4
	tJunAction_Reward[3316177]["RewardItem"][2]["Attr"] = "0 4" -- YellowRuneFragment*4
	tJunAction_Reward[3316177]["RewardItem"][3] = {}
	tJunAction_Reward[3316177]["RewardItem"][3]["Id"] = 1200006 -- StarDrill[1200006][属性:0][叠加:0][金币:0], 【表格】非赠七星宝钻*1
	tJunAction_Reward[3316177]["RewardItem"][3]["Attr"] = "0 1" -- StarDrill*1
	tJunAction_Reward[3316177]["RewardItem"][4] = {}
	tJunAction_Reward[3316177]["RewardItem"][4]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】非赠黄色神纹精粹*50
	tJunAction_Reward[3316177]["RewardItem"][4]["Attr"] = "0 50" -- YellowRuneEssence*50
	tJunAction_Reward[3316177]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316177]["RewardEffect"] = {}
	tJunAction_Reward[3316177]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316177]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316178] = {}
	-- ===充值返利礼盒
	-- ===索引:tJunAction_Reward[3316178]
	-- ===删除: 3316178,1
	tJunAction_Reward[3316178]["LogId"] = 12001978
	tJunAction_Reward[3316178]["DeleteItem"] = {}
	tJunAction_Reward[3316178]["DeleteItem"][1] = {}
	tJunAction_Reward[3316178]["DeleteItem"][1]["Id"] = 3316178 -- 【库】CreditRebateBox[属性:9]
	tJunAction_Reward[3316178]["RewardItem"] = {}
	tJunAction_Reward[3316178]["RewardItem"][1] = {}
	tJunAction_Reward[3316178]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tJunAction_Reward[3316178]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tJunAction_Reward[3316178]["RewardItem"][2] = {}
	tJunAction_Reward[3316178]["RewardItem"][2]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赠+3赤炼石*1
	tJunAction_Reward[3316178]["RewardItem"][2]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tJunAction_Reward[3316178]["RewardItem"][3] = {}
	tJunAction_Reward[3316178]["RewardItem"][3]["Id"] = 3311820 -- RefinedRuneCrystal[3311820][属性:9][叠加:10000][金币:0], 【表格】赠良品神纹源晶*1
	tJunAction_Reward[3316178]["RewardItem"][3]["Attr"] = "0 1 3" -- RefinedRuneCrystal*1
	tJunAction_Reward[3316178]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316178]["RewardEffect"] = {}
	tJunAction_Reward[3316178]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316178]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316179] = {}
	-- ===+8赤炼石精选礼盒
	-- ===索引:tJunAction_Reward[3316179][1]
	-- ===删除: 3316179,1
	tJunAction_Reward[3316179][1] = {}
	tJunAction_Reward[3316179][1]["LogId"] = 12001978
	tJunAction_Reward[3316179][1]["DeleteItem"] = {}
	tJunAction_Reward[3316179][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316179][1]["DeleteItem"][1]["Id"] = 3316179 -- 【库】+8StoneEliteBox[属性:9]
	tJunAction_Reward[3316179][1]["RewardItem"] = {}
	tJunAction_Reward[3316179][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316179][1]["RewardItem"][1]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】 +8赤炼石*1
	tJunAction_Reward[3316179][1]["RewardItem"][1]["Attr"] = "0 1" -- +8Stone*1
	tJunAction_Reward[3316179][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316179][1]["RewardEffect"] = {}
	tJunAction_Reward[3316179][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316179][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316179][2] = {}
	-- ===+8赤炼石精选礼盒
	-- ===索引:tJunAction_Reward[3316179][2]
	-- ===删除: 3316179,1
	tJunAction_Reward[3316179][2]["LogId"] = 12001978
	tJunAction_Reward[3316179][2]["DeleteItem"] = {}
	tJunAction_Reward[3316179][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316179][2]["DeleteItem"][1]["Id"] = 3316179 -- 【库】+8StoneEliteBox[属性:9]
	tJunAction_Reward[3316179][2]["RewardItem"] = {}
	tJunAction_Reward[3316179][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316179][2]["RewardItem"][1]["Id"] = 3330064 -- AdvancedSigilBox[3330064][属性:9][叠加:10000][金币:0], 【表格】高级法印宝盒*1
	tJunAction_Reward[3316179][2]["RewardItem"][1]["Attr"] = "0 1" -- AdvancedSigilBox*1
	tJunAction_Reward[3316179][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316179][2]["RewardEffect"] = {}
	tJunAction_Reward[3316179][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316179][2]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316180] = {}
	-- ===神纹秘术精选礼盒A
	-- ===索引:tJunAction_Reward[3316180][1]
	-- ===删除: 3316180,1
	tJunAction_Reward[3316180][1] = {}
	tJunAction_Reward[3316180][1]["LogId"] = 12001978
	tJunAction_Reward[3316180][1]["DeleteItem"] = {}
	tJunAction_Reward[3316180][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316180][1]["DeleteItem"][1]["Id"] = 3316180 -- 【库】Rune&ArcaneEliteBoxA[属性:9]
	tJunAction_Reward[3316180][1]["RewardItem"] = {}
	tJunAction_Reward[3316180][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316180][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*400
	tJunAction_Reward[3316180][1]["RewardItem"][1]["Attr"] = "0 400 3" -- YellowRuneEssence（赠）*400（[错误]物品数量超100个）
	tJunAction_Reward[3316180][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316180][1]["RewardEffect"] = {}
	tJunAction_Reward[3316180][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316180][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316180][2] = {}
	-- ===神纹秘术精选礼盒A
	-- ===索引:tJunAction_Reward[3316180][2]
	-- ===删除: 3316180,1
	tJunAction_Reward[3316180][2]["LogId"] = 12001978
	tJunAction_Reward[3316180][2]["DeleteItem"] = {}
	tJunAction_Reward[3316180][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316180][2]["DeleteItem"][1]["Id"] = 3316180 -- 【库】Rune&ArcaneEliteBoxA[属性:9]
	tJunAction_Reward[3316180][2]["RewardItem"] = {}
	tJunAction_Reward[3316180][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316180][2]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*40
	tJunAction_Reward[3316180][2]["RewardItem"][1]["Attr"] = "0 40" -- ArcaneEssence*40（[错误]物品数量超10个）
	tJunAction_Reward[3316180][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316180][2]["RewardEffect"] = {}
	tJunAction_Reward[3316180][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316180][2]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316181] = {}
	-- ===神纹秘术精选礼盒B
	-- ===索引:tJunAction_Reward[3316181][1]
	-- ===删除: 3316181,1
	tJunAction_Reward[3316181][1] = {}
	tJunAction_Reward[3316181][1]["LogId"] = 12001978
	tJunAction_Reward[3316181][1]["DeleteItem"] = {}
	tJunAction_Reward[3316181][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316181][1]["DeleteItem"][1]["Id"] = 3316181 -- 【库】Rune&ArcaneEliteBoxB[属性:9]
	tJunAction_Reward[3316181][1]["RewardItem"] = {}
	tJunAction_Reward[3316181][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316181][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*100
	tJunAction_Reward[3316181][1]["RewardItem"][1]["Attr"] = "0 100 3" -- YellowRuneEssence（赠）*100
	tJunAction_Reward[3316181][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316181][1]["RewardEffect"] = {}
	tJunAction_Reward[3316181][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316181][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316181][2] = {}
	-- ===神纹秘术精选礼盒B
	-- ===索引:tJunAction_Reward[3316181][2]
	-- ===删除: 3316181,1
	tJunAction_Reward[3316181][2]["LogId"] = 12001978
	tJunAction_Reward[3316181][2]["DeleteItem"] = {}
	tJunAction_Reward[3316181][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316181][2]["DeleteItem"][1]["Id"] = 3316181 -- 【库】Rune&ArcaneEliteBoxB[属性:9]
	tJunAction_Reward[3316181][2]["RewardItem"] = {}
	tJunAction_Reward[3316181][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316181][2]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*10
	tJunAction_Reward[3316181][2]["RewardItem"][1]["Attr"] = "0 10" -- ArcaneEssence*10
	tJunAction_Reward[3316181][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316181][2]["RewardEffect"] = {}
	tJunAction_Reward[3316181][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316181][2]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316182] = {}
	-- ===神纹秘术精选礼盒C
	-- ===索引:tJunAction_Reward[3316182][1]
	-- ===删除: 3316182,1
	tJunAction_Reward[3316182][1] = {}
	tJunAction_Reward[3316182][1]["LogId"] = 12001978
	tJunAction_Reward[3316182][1]["DeleteItem"] = {}
	tJunAction_Reward[3316182][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316182][1]["DeleteItem"][1]["Id"] = 3316182 -- 【库】Rune&ArcaneEliteBoxC[属性:9]
	tJunAction_Reward[3316182][1]["RewardItem"] = {}
	tJunAction_Reward[3316182][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316182][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*60
	tJunAction_Reward[3316182][1]["RewardItem"][1]["Attr"] = "0 60 3" -- YellowRuneEssence（赠）*60
	tJunAction_Reward[3316182][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316182][1]["RewardEffect"] = {}
	tJunAction_Reward[3316182][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316182][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316182][2] = {}
	-- ===神纹秘术精选礼盒C
	-- ===索引:tJunAction_Reward[3316182][2]
	-- ===删除: 3316182,1
	tJunAction_Reward[3316182][2]["LogId"] = 12001978
	tJunAction_Reward[3316182][2]["DeleteItem"] = {}
	tJunAction_Reward[3316182][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316182][2]["DeleteItem"][1]["Id"] = 3316182 -- 【库】Rune&ArcaneEliteBoxC[属性:9]
	tJunAction_Reward[3316182][2]["RewardItem"] = {}
	tJunAction_Reward[3316182][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316182][2]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*6
	tJunAction_Reward[3316182][2]["RewardItem"][1]["Attr"] = "0 6" -- ArcaneEssence*6
	tJunAction_Reward[3316182][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316182][2]["RewardEffect"] = {}
	tJunAction_Reward[3316182][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316182][2]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316183] = {}
	-- ===神纹秘术精选礼盒D
	-- ===索引:tJunAction_Reward[3316183][1]
	-- ===删除: 3316183,1
	tJunAction_Reward[3316183][1] = {}
	tJunAction_Reward[3316183][1]["LogId"] = 12001978
	tJunAction_Reward[3316183][1]["DeleteItem"] = {}
	tJunAction_Reward[3316183][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316183][1]["DeleteItem"][1]["Id"] = 3316183 -- 【库】Rune&ArcaneEliteBoxD[属性:9]
	tJunAction_Reward[3316183][1]["RewardItem"] = {}
	tJunAction_Reward[3316183][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316183][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠黄色神纹精粹*40
	tJunAction_Reward[3316183][1]["RewardItem"][1]["Attr"] = "0 40 3" -- YellowRuneEssence（赠）*40
	tJunAction_Reward[3316183][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316183][1]["RewardEffect"] = {}
	tJunAction_Reward[3316183][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316183][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316183][2] = {}
	-- ===神纹秘术精选礼盒D
	-- ===索引:tJunAction_Reward[3316183][2]
	-- ===删除: 3316183,1
	tJunAction_Reward[3316183][2]["LogId"] = 12001978
	tJunAction_Reward[3316183][2]["DeleteItem"] = {}
	tJunAction_Reward[3316183][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316183][2]["DeleteItem"][1]["Id"] = 3316183 -- 【库】Rune&ArcaneEliteBoxD[属性:9]
	tJunAction_Reward[3316183][2]["RewardItem"] = {}
	tJunAction_Reward[3316183][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316183][2]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*4
	tJunAction_Reward[3316183][2]["RewardItem"][1]["Attr"] = "0 4" -- ArcaneEssence*4
	tJunAction_Reward[3316183][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316183][2]["RewardEffect"] = {}
	tJunAction_Reward[3316183][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316183][2]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316184] = {}
	-- ===神纹秘术精选礼盒1
	-- ===索引:tJunAction_Reward[3316184][1]
	-- ===删除: 3316184,1
	tJunAction_Reward[3316184][1] = {}
	tJunAction_Reward[3316184][1]["LogId"] = 12001978
	tJunAction_Reward[3316184][1]["DeleteItem"] = {}
	tJunAction_Reward[3316184][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316184][1]["DeleteItem"][1]["Id"] = 3316184 -- 【库】Rune&ArcaneEliteBox1[属性:9]
	tJunAction_Reward[3316184][1]["RewardItem"] = {}
	tJunAction_Reward[3316184][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316184][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*100
	tJunAction_Reward[3316184][1]["RewardItem"][1]["Attr"] = "0 100" -- YellowRuneEssence*100
	tJunAction_Reward[3316184][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316184][1]["RewardEffect"] = {}
	tJunAction_Reward[3316184][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316184][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316184][2] = {}
	-- ===神纹秘术精选礼盒1
	-- ===索引:tJunAction_Reward[3316184][2]
	-- ===删除: 3316184,1
	tJunAction_Reward[3316184][2]["LogId"] = 12001978
	tJunAction_Reward[3316184][2]["DeleteItem"] = {}
	tJunAction_Reward[3316184][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316184][2]["DeleteItem"][1]["Id"] = 3316184 -- 【库】Rune&ArcaneEliteBox1[属性:9]
	tJunAction_Reward[3316184][2]["RewardItem"] = {}
	tJunAction_Reward[3316184][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316184][2]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*20
	tJunAction_Reward[3316184][2]["RewardItem"][1]["Attr"] = "0 20" -- ArcaneEssence*20（[错误]物品数量超10个）
	tJunAction_Reward[3316184][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316184][2]["RewardEffect"] = {}
	tJunAction_Reward[3316184][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316184][2]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316185] = {}
	-- ===神纹秘术精选礼盒2
	-- ===索引:tJunAction_Reward[3316185][1]
	-- ===删除: 3316185,1
	tJunAction_Reward[3316185][1] = {}
	tJunAction_Reward[3316185][1]["LogId"] = 12001978
	tJunAction_Reward[3316185][1]["DeleteItem"] = {}
	tJunAction_Reward[3316185][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316185][1]["DeleteItem"][1]["Id"] = 3316185 -- 【库】Rune&ArcaneEliteBox2[属性:9]
	tJunAction_Reward[3316185][1]["RewardItem"] = {}
	tJunAction_Reward[3316185][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316185][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*80
	tJunAction_Reward[3316185][1]["RewardItem"][1]["Attr"] = "0 80" -- YellowRuneEssence*80
	tJunAction_Reward[3316185][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316185][1]["RewardEffect"] = {}
	tJunAction_Reward[3316185][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316185][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316185][2] = {}
	-- ===神纹秘术精选礼盒2
	-- ===索引:tJunAction_Reward[3316185][2]
	-- ===删除: 3316185,1
	tJunAction_Reward[3316185][2]["LogId"] = 12001978
	tJunAction_Reward[3316185][2]["DeleteItem"] = {}
	tJunAction_Reward[3316185][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316185][2]["DeleteItem"][1]["Id"] = 3316185 -- 【库】Rune&ArcaneEliteBox2[属性:9]
	tJunAction_Reward[3316185][2]["RewardItem"] = {}
	tJunAction_Reward[3316185][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316185][2]["RewardItem"][1]["Id"] = 3329979 -- ArcaneEssence[3329979][属性:9][叠加:10000][金币:0], 【表格】秘术精华*15
	tJunAction_Reward[3316185][2]["RewardItem"][1]["Attr"] = "0 15" -- ArcaneEssence*15（[错误]物品数量超10个）
	tJunAction_Reward[3316185][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316185][2]["RewardEffect"] = {}
	tJunAction_Reward[3316185][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316185][2]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316186] = {}
	-- ===天机果法印精选礼盒
	-- ===索引:tJunAction_Reward[3316186][1]
	-- ===删除: 3316186,1
	tJunAction_Reward[3316186][1] = {}
	tJunAction_Reward[3316186][1]["LogId"] = 12001978
	tJunAction_Reward[3316186][1]["DeleteItem"] = {}
	tJunAction_Reward[3316186][1]["DeleteItem"][1] = {}
	tJunAction_Reward[3316186][1]["DeleteItem"][1]["Id"] = 3316186 -- 【库】FruitSigilEliteBox[属性:9]
	tJunAction_Reward[3316186][1]["RewardItem"] = {}
	tJunAction_Reward[3316186][1]["RewardItem"][1] = {}
	tJunAction_Reward[3316186][1]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】天机果*2
	tJunAction_Reward[3316186][1]["RewardItem"][1]["Attr"] = "0 2" -- MysteryFruit*2
	tJunAction_Reward[3316186][1]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316186][1]["RewardEffect"] = {}
	tJunAction_Reward[3316186][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316186][1]["RewardEffect"]["Effect"] = "angelwing"


	tJunAction_Reward[3316186][2] = {}
	-- ===天机果法印精选礼盒
	-- ===索引:tJunAction_Reward[3316186][2]
	-- ===删除: 3316186,1
	tJunAction_Reward[3316186][2]["LogId"] = 12001978
	tJunAction_Reward[3316186][2]["DeleteItem"] = {}
	tJunAction_Reward[3316186][2]["DeleteItem"][1] = {}
	tJunAction_Reward[3316186][2]["DeleteItem"][1]["Id"] = 3316186 -- 【库】FruitSigilEliteBox[属性:9]
	tJunAction_Reward[3316186][2]["RewardItem"] = {}
	tJunAction_Reward[3316186][2]["RewardItem"][1] = {}
	tJunAction_Reward[3316186][2]["RewardItem"][1]["Id"] = 3330063 -- SigilBox[3330063][属性:9][叠加:10000][金币:0], 【表格】法印宝盒*1
	tJunAction_Reward[3316186][2]["RewardItem"][1]["Attr"] = "0 1" -- SigilBox*1
	tJunAction_Reward[3316186][2]["RewardNoNeedTip"] = 1
	tJunAction_Reward[3316186][2]["RewardEffect"] = {}
	tJunAction_Reward[3316186][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJunAction_Reward[3316186][2]["RewardEffect"]["Effect"] = "angelwing"




----------------------------------逻辑部分---------------------------------------------
--自选礼包
function JunAction_OptionalGift(nItemId,nOption)
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tJunAction_Reward[nItemId][nOption])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tJunAction_Text["NoSpace"],nSpace))	
		return
	end
	RewardTemplate_UseItemAndMsg(tJunAction_Reward[nItemId][nOption])
end


----------------------------------NPC部分---------------------------------------------

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3316173] = tItem[3316173] or {}
tItem[3316173]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tJunAction_Reward[nItemId])
end
tItem[3316174] = tItem[3316173] or {}
tItem[3316175] = tItem[3316173] or {}
tItem[3316176] = tItem[3316173] or {}
tItem[3316177] = tItem[3316173] or {}
tItem[3316178] = tItem[3316173] or {}

--------可选包
tItemFace[3316179] = 2947
tItemFace[3316180] = 2948
tItemFace[3316181] = 2949
tItemFace[3316182] = 2950
tItemFace[3316183] = 2951
tItemFace[3316184] = 2952
tItemFace[3316185] = 2953
tItemFace[3316186] = 2954
tItem[3316179] = tItem[3316179] or {}
tItem[3316179]["Text1-1"] = {111}
tItem[3316179]["Text111"] =tJunAction_Text[3316179]["Text111"]
tItem[3316179]["tOption1-1"] = {1,2}
tItem[3316179]["Option1"] = tJunAction_Text[3316179]["Option1"]
tItem[3316179]["OptionFunc1"]="JunAction_OptionalGift</N>3316179</N>1"
tItem[3316179]["Option2"] = tJunAction_Text[3316179]["Option2"]
tItem[3316179]["OptionFunc2"]="JunAction_OptionalGift</N>3316179</N>2"

tItem[3316180] = tItem[3316180] or {}
tItem[3316180]["Text1-1"] = {111}
tItem[3316180]["Text111"] =tJunAction_Text[3316180]["Text111"]
tItem[3316180]["tOption1-1"] = {1,2}
tItem[3316180]["Option1"] = tJunAction_Text[3316180]["Option1"]
tItem[3316180]["OptionFunc1"]="JunAction_OptionalGift</N>3316180</N>1"
tItem[3316180]["Option2"] = tJunAction_Text[3316180]["Option2"]
tItem[3316180]["OptionFunc2"]="JunAction_OptionalGift</N>3316180</N>2"


tItem[3316181] = tItem[3316181] or {}
tItem[3316181]["Text1-1"] = {111}
tItem[3316181]["Text111"] =tJunAction_Text[3316181]["Text111"]
tItem[3316181]["tOption1-1"] = {1,2}
tItem[3316181]["Option1"] = tJunAction_Text[3316181]["Option1"]
tItem[3316181]["OptionFunc1"]="JunAction_OptionalGift</N>3316181</N>1"
tItem[3316181]["Option2"] = tJunAction_Text[3316181]["Option2"]
tItem[3316181]["OptionFunc2"]="JunAction_OptionalGift</N>3316181</N>2"


tItem[3316182] = tItem[3316182] or {}
tItem[3316182]["Text1-1"] = {111}
tItem[3316182]["Text111"] =tJunAction_Text[3316182]["Text111"]
tItem[3316182]["tOption1-1"] = {1,2}
tItem[3316182]["Option1"] = tJunAction_Text[3316182]["Option1"]
tItem[3316182]["OptionFunc1"]="JunAction_OptionalGift</N>3316182</N>1"
tItem[3316182]["Option2"] = tJunAction_Text[3316182]["Option2"]
tItem[3316182]["OptionFunc2"]="JunAction_OptionalGift</N>3316182</N>2"


tItem[3316183] = tItem[3316183] or {}
tItem[3316183]["Text1-1"] = {111}
tItem[3316183]["Text111"] =tJunAction_Text[3316183]["Text111"]
tItem[3316183]["tOption1-1"] = {1,2}
tItem[3316183]["Option1"] = tJunAction_Text[3316183]["Option1"]
tItem[3316183]["OptionFunc1"]="JunAction_OptionalGift</N>3316183</N>1"
tItem[3316183]["Option2"] = tJunAction_Text[3316183]["Option2"]
tItem[3316183]["OptionFunc2"]="JunAction_OptionalGift</N>3316183</N>2"


tItem[3316184] = tItem[3316184] or {}
tItem[3316184]["Text1-1"] = {111}
tItem[3316184]["Text111"] =tJunAction_Text[3316184]["Text111"]
tItem[3316184]["tOption1-1"] = {1,2}
tItem[3316184]["Option1"] = tJunAction_Text[3316184]["Option1"]
tItem[3316184]["OptionFunc1"]="JunAction_OptionalGift</N>3316184</N>1"
tItem[3316184]["Option2"] = tJunAction_Text[3316184]["Option2"]
tItem[3316184]["OptionFunc2"]="JunAction_OptionalGift</N>3316184</N>2"


tItem[3316185] = tItem[3316185] or {}
tItem[3316185]["Text1-1"] = {111}
tItem[3316185]["Text111"] =tJunAction_Text[3316185]["Text111"]
tItem[3316185]["tOption1-1"] = {1,2}
tItem[3316185]["Option1"] = tJunAction_Text[3316185]["Option1"]
tItem[3316185]["OptionFunc1"]="JunAction_OptionalGift</N>3316185</N>1"
tItem[3316185]["Option2"] = tJunAction_Text[3316185]["Option2"]
tItem[3316185]["OptionFunc2"]="JunAction_OptionalGift</N>3316185</N>2"


tItem[3316186] = tItem[3316186] or {}
tItem[3316186]["Text1-1"] = {111}
tItem[3316186]["Text111"] =tJunAction_Text[3316186]["Text111"]
tItem[3316186]["tOption1-1"] = {1,2}
tItem[3316186]["Option1"] = tJunAction_Text[3316186]["Option1"]
tItem[3316186]["OptionFunc1"]="JunAction_OptionalGift</N>3316186</N>1"
tItem[3316186]["Option2"] = tJunAction_Text[3316186]["Option2"]
tItem[3316186]["OptionFunc2"]="JunAction_OptionalGift</N>3316186</N>2"

