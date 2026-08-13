------------------------------------------------------------------------------------
--Name：            191105[英文征服][活动脚本]服务器被攻击补偿方案第三波（11.21）
--Creator:      林嘉鑫
--Created:     2019-11-05
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- 命名前缀 tCompensatoryPackThird_

-- logId:
-- 12001719

----------------------------------表配置部分--------------------------------------------
local tCompensatoryPack_Cont = {}
	tCompensatoryPack_Cont["Max"] = 10

local tCompensatoryPack_Stc = {}
	tCompensatoryPack_Stc[3326817] = {}
	tCompensatoryPack_Stc[3326817]["Event"] = 209
	tCompensatoryPack_Stc[3326817]["Data"] = 37
	tCompensatoryPack_Stc[3326818] = {}
	tCompensatoryPack_Stc[3326818]["Event"] = 209
	tCompensatoryPack_Stc[3326818]["Data"] = 38
	tCompensatoryPack_Stc[3326819] = {}
	tCompensatoryPack_Stc[3326819]["Event"] = 209
	tCompensatoryPack_Stc[3326819]["Data"] = 39
	tCompensatoryPack_Stc[3326820] = {}
	tCompensatoryPack_Stc[3326820]["Event"] = 209
	tCompensatoryPack_Stc[3326820]["Data"] = 40
	tCompensatoryPack_Stc[3326821] = {}
	tCompensatoryPack_Stc[3326821]["Event"] = 209
	tCompensatoryPack_Stc[3326821]["Data"] = 41
	tCompensatoryPack_Stc[3326822] = {}
	tCompensatoryPack_Stc[3326822]["Event"] = 209
	tCompensatoryPack_Stc[3326822]["Data"] = 42
	tCompensatoryPack_Stc[3326823] = {}
	tCompensatoryPack_Stc[3326823]["Event"] = 209
	tCompensatoryPack_Stc[3326823]["Data"] = 43

local tCompensatoryPackThird_Pack = {}
	-- ===高级补偿礼包
	-- ===索引: tCompensatoryPackThird_Pack[3326808]
	-- ===删除: 3326808,1
	-- ===NewEmoneyLog: 1000,1240
	tCompensatoryPackThird_Pack[3326808] = {}
	tCompensatoryPackThird_Pack[3326808]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326808]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326808]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326808]["DeleteItem"][1]["Id"] = 3326808 -- 【库】LuxuriousCompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326808]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardEMoneyMono"]["Value"] = 2000 -- 赠点, 【需求】2000赠点
	tCompensatoryPackThird_Pack[3326808]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1240"
	tCompensatoryPackThird_Pack[3326808]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][1]["Id"] = 3306365 -- YellowRune(B)SelectionPack[3306365][属性:9][叠加:10000][金币:0], 【表格】普通黄色神纹可选包*5
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][1]["Attr"] = "0 5" -- YellowRune(B)SelectionPack*5
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*100
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][2]["Attr"] = "0 100 3" -- YellowRuneEssence（赠）*100
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][3]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][4]["Id"] = 3311820 -- RefinedRuneCrystal[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶赠*5
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][4]["Attr"] = "0 5 3" -- RefinedRuneCrystal*5
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][5] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][5]["Id"] = 195825 -- TigerGlory[195825][属性:0][叠加:0][金币:0], 【表格】30天神佑-1四星虎威荣光
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑TigerGlory（赠）*1
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][6] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][6]["Id"] = 200632 -- GiantFish(Gold)[200632][属性:0][叠加:0][金币:0], 【表格】30天神佑-1大鱼海棠金鳞
	tCompensatoryPackThird_Pack[3326808]["RewardItem"][6]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GiantFish(Gold)（赠）*1
	tCompensatoryPackThird_Pack[3326808]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326808]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326808]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326809] = {}
	-- ===顶级补偿礼包
	-- ===索引: tCompensatoryPackThird_Pack[3326809]
	-- ===删除: 3326809,1
	-- ===NewEmoneyLog: 1000,1241
	tCompensatoryPackThird_Pack[3326809]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326809]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326809]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326809]["DeleteItem"][1]["Id"] = 3326809 -- 【库】EliteCompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326809]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardEMoneyMono"]["Value"] = 3000 -- 赠点, 【需求】3000赠点
	tCompensatoryPackThird_Pack[3326809]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1241"
	tCompensatoryPackThird_Pack[3326809]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][1]["Id"] = 3312777 -- Optional+1RareYellowRuneBag(B)[3312777][属性:9][叠加:0][金币:0], 【表格】（+1）稀有黄色神纹可选包（赠）*5
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][1]["Attr"] = "0 5" -- Optional+1RareYellowRuneBag(B)*5
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】赠品黄色神纹精粹*200
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][2]["Attr"] = "0 200 3" -- YellowRuneEssence（赠）*200（[错误]物品数量超100个）
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][3]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*5
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][3]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的RadiantStarStone*5
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][4]["Id"] = 3311820 -- RefinedRuneCrystal[3311820][属性:9][叠加:10000][金币:0], 【表格】良品神纹源晶赠*15
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][4]["Attr"] = "0 15 3" -- RefinedRuneCrystal*15（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][5] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][5]["Id"] = 195825 -- TigerGlory[195825][属性:0][叠加:0][金币:0], 【表格】30天神佑-1四星虎威荣光
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][5]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑TigerGlory（赠）*1
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][6] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][6]["Id"] = 200632 -- GiantFish(Gold)[200632][属性:0][叠加:0][金币:0], 【表格】30天神佑-1大鱼海棠金鳞
	tCompensatoryPackThird_Pack[3326809]["RewardItem"][6]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GiantFish(Gold)（赠）*1
	tCompensatoryPackThird_Pack[3326809]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326809]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326809]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326810] = {}
	-- ===商城VIP1
	-- ===索引: tCompensatoryPackThird_Pack[3326810]
	-- ===删除: 3326810,1
	tCompensatoryPackThird_Pack[3326810]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326810]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326810]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326810]["DeleteItem"][1]["Id"] = 3326810 -- 【库】P1CompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326810]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][1]["Id"] = 3326817 -- 500CPs(B)Pack[3326817][属性:9][叠加:0][金币:0], 【表格】500赠点包
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][1]["Attr"] = "0 1" -- 500CPs(B)Pack*1
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tCompensatoryPackThird_Pack[3326810]["RewardStrengthValue"] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】赠品气力值1000
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*50
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][3]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*20
	tCompensatoryPackThird_Pack[3326810]["RewardItem"][4]["Attr"] = "0 20" -- GinsengFruit*20（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326810]["RewardRepairValue"] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardRepairValue"]["Value"] = 3000 -- 修为值, 【需求】修为值*3000
	tCompensatoryPackThird_Pack[3326810]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326810]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326810]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326811] = {}
	-- ===商城VIP2
	-- ===索引: tCompensatoryPackThird_Pack[3326811]
	-- ===删除: 3326811,1
	tCompensatoryPackThird_Pack[3326811]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326811]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326811]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326811]["DeleteItem"][1]["Id"] = 3326811 -- 【库】P2CompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326811]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][1]["Id"] = 3326818 -- 1000CPs(B)Pack[3326818][属性:9][叠加:0][金币:0], 【表格】1000赠点包
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][1]["Attr"] = "0 1" -- 1000CPs(B)Pack*1
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tCompensatoryPackThird_Pack[3326811]["RewardStrengthValue"] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】赠品气力值2000
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*80
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][3]["Attr"] = "0 80 3" -- UniversalRuneEssence（赠）*80
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*30
	tCompensatoryPackThird_Pack[3326811]["RewardItem"][4]["Attr"] = "0 30" -- GinsengFruit*30（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326811]["RewardRepairValue"] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardRepairValue"]["Value"] = 5000 -- 修为值, 【需求】修为值*5000
	tCompensatoryPackThird_Pack[3326811]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326811]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326811]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326812] = {}
	-- ===商城VIP3
	-- ===索引: tCompensatoryPackThird_Pack[3326812]
	-- ===删除: 3326812,1
	tCompensatoryPackThird_Pack[3326812]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326812]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326812]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326812]["DeleteItem"][1]["Id"] = 3326812 -- 【库】P3CompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326812]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][1]["Id"] = 3326819 -- 1500CPs(B)Pack[3326819][属性:9][叠加:0][金币:0], 【表格】1500赠点包
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][1]["Attr"] = "0 1" -- 1500CPs(B)Pack*1
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*4
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][2]["Attr"] = "0 4 0 2880 1" -- 2天时效(激活)的BrightStarStone*4
	tCompensatoryPackThird_Pack[3326812]["RewardStrengthValue"] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】赠品气力值3000
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*120
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][3]["Attr"] = "0 120 3" -- UniversalRuneEssence（赠）*120（[错误]物品数量超100个）
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*50
	tCompensatoryPackThird_Pack[3326812]["RewardItem"][4]["Attr"] = "0 50" -- GinsengFruit*50（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326812]["RewardRepairValue"] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardRepairValue"]["Value"] = 10000 -- 修为值, 【需求】修为值*10000
	tCompensatoryPackThird_Pack[3326812]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326812]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326812]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326813] = {}
	-- ===商城VIP4
	-- ===索引: tCompensatoryPackThird_Pack[3326813]
	-- ===删除: 3326813,1
	tCompensatoryPackThird_Pack[3326813]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326813]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326813]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326813]["DeleteItem"][1]["Id"] = 3326813 -- 【库】P4CompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326813]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][1]["Id"] = 3326820 -- 2000CPs(B)Pack[3326820][属性:9][叠加:0][金币:0], 【表格】2000赠点包
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][1]["Attr"] = "0 1" -- 2000CPs(B)Pack*1
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tCompensatoryPackThird_Pack[3326813]["RewardStrengthValue"] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】赠品气力值5000
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*150
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][3]["Attr"] = "0 150 3" -- UniversalRuneEssence（赠）*150（[错误]物品数量超100个）
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*80
	tCompensatoryPackThird_Pack[3326813]["RewardItem"][4]["Attr"] = "0 80" -- GinsengFruit*80（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326813]["RewardRepairValue"] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardRepairValue"]["Value"] = 15000 -- 修为值, 【需求】修为值*15000
	tCompensatoryPackThird_Pack[3326813]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326813]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326813]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326814] = {}
	-- ===商城VIP5
	-- ===索引: tCompensatoryPackThird_Pack[3326814]
	-- ===删除: 3326814,1
	tCompensatoryPackThird_Pack[3326814]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326814]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326814]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326814]["DeleteItem"][1]["Id"] = 3326814 -- 【库】P5CompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326814]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][1]["Id"] = 3326821 -- 2500CPs(B)Pack[3326821][属性:9][叠加:0][金币:0], 【表格】2500赠点包
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][1]["Attr"] = "0 1" -- 2500CPs(B)Pack*1
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*8
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tCompensatoryPackThird_Pack[3326814]["RewardStrengthValue"] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardStrengthValue"]["Value"] = 7000 -- 气力值, 【需求】赠品气力值7000
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*180
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][3]["Attr"] = "0 180 3" -- UniversalRuneEssence（赠）*180（[错误]物品数量超100个）
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*100
	tCompensatoryPackThird_Pack[3326814]["RewardItem"][4]["Attr"] = "0 100" -- GinsengFruit*100（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326814]["RewardRepairValue"] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardRepairValue"]["Value"] = 20000 -- 修为值, 【需求】修为值*20000
	tCompensatoryPackThird_Pack[3326814]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326814]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326814]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326815] = {}
	-- ===商城VIP6
	-- ===索引: tCompensatoryPackThird_Pack[3326815]
	-- ===删除: 3326815,1
	tCompensatoryPackThird_Pack[3326815]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326815]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326815]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326815]["DeleteItem"][1]["Id"] = 3326815 -- 【库】P6CompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326815]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][1]["Id"] = 3326822 -- 3000CPs(B)Pack[3326822][属性:9][叠加:0][金币:0], 【表格】3000赠点包
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][1]["Attr"] = "0 1" -- 3000CPs(B)Pack*1
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*2
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的RadiantStarStone*2
	tCompensatoryPackThird_Pack[3326815]["RewardStrengthValue"] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardStrengthValue"]["Value"] = 8000 -- 气力值, 【需求】赠品气力值8000
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*200
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][3]["Attr"] = "0 200 3" -- UniversalRuneEssence（赠）*200（[错误]物品数量超100个）
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*120
	tCompensatoryPackThird_Pack[3326815]["RewardItem"][4]["Attr"] = "0 120" -- GinsengFruit*120（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326815]["RewardRepairValue"] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardRepairValue"]["Value"] = 25000 -- 修为值, 【需求】修为值*25000
	tCompensatoryPackThird_Pack[3326815]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326815]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326815]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326816] = {}
	-- ===商城VIP7
	-- ===索引: tCompensatoryPackThird_Pack[3326816]
	-- ===删除: 3326816,1
	tCompensatoryPackThird_Pack[3326816]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326816]["DeleteItem"] = {}
	tCompensatoryPackThird_Pack[3326816]["DeleteItem"][1] = {}
	tCompensatoryPackThird_Pack[3326816]["DeleteItem"][1]["Id"] = 3326816 -- 【库】P7CompensationBox[属性:9]
	tCompensatoryPackThird_Pack[3326816]["RewardItem"] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][1] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][1]["Id"] = 3326823 -- 3500CPs(B)Pack[3326823][属性:9][叠加:0][金币:0], 【表格】3500赠点包
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][1]["Attr"] = "0 1" -- 3500CPs(B)Pack*1
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][2] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][2]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石*3
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][2]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的RadiantStarStone*3
	tCompensatoryPackThird_Pack[3326816]["RewardStrengthValue"] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】赠品气力值10000
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][3] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】赠万能神纹精粹*250
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][3]["Attr"] = "0 250 3" -- UniversalRuneEssence（赠）*250（[错误]物品数量超100个）
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][4] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果*150
	tCompensatoryPackThird_Pack[3326816]["RewardItem"][4]["Attr"] = "0 150" -- GinsengFruit*150（[错误]物品数量超10个）
	tCompensatoryPackThird_Pack[3326816]["RewardRepairValue"] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardRepairValue"]["Value"] = 30000 -- 修为值, 【需求】修为值*30000
	tCompensatoryPackThird_Pack[3326816]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326816]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326816]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326817] = {}
	-- ===500赠点包
	-- ===索引: tCompensatoryPackThird_Pack[3326817]
	-- ===NewEmoneyLog: 1000,1242
	tCompensatoryPackThird_Pack[3326817]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326817]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326817]["RewardEMoneyMono"]["Value"] = 50 -- 赠点, 【需求】50赠点
	tCompensatoryPackThird_Pack[3326817]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1242"
	tCompensatoryPackThird_Pack[3326817]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326817]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326817]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326818] = {}
	-- ===1000赠点包
	-- ===索引: tCompensatoryPackThird_Pack[3326818]
	-- ===NewEmoneyLog: 1000,1243
	tCompensatoryPackThird_Pack[3326818]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326818]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326818]["RewardEMoneyMono"]["Value"] = 100 -- 赠点, 【需求】100赠点
	tCompensatoryPackThird_Pack[3326818]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1243"
	tCompensatoryPackThird_Pack[3326818]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326818]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326818]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326819] = {}
	-- ===1500赠点包
	-- ===索引: tCompensatoryPackThird_Pack[3326819]
	-- ===NewEmoneyLog: 1000,1244
	tCompensatoryPackThird_Pack[3326819]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326819]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326819]["RewardEMoneyMono"]["Value"] = 150 -- 赠点, 【需求】150赠点
	tCompensatoryPackThird_Pack[3326819]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1244"
	tCompensatoryPackThird_Pack[3326819]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326819]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326819]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326820] = {}
	-- ===2000赠点包
	-- ===索引: tCompensatoryPackThird_Pack[3326820]
	-- ===NewEmoneyLog: 1000,1245
	tCompensatoryPackThird_Pack[3326820]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326820]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326820]["RewardEMoneyMono"]["Value"] = 200 -- 赠点, 【需求】200赠点
	tCompensatoryPackThird_Pack[3326820]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1245"
	tCompensatoryPackThird_Pack[3326820]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326820]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326820]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326821] = {}
	-- ===2500赠点包
	-- ===索引: tCompensatoryPackThird_Pack[3326821]
	-- ===NewEmoneyLog: 1000,1246
	tCompensatoryPackThird_Pack[3326821]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326821]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326821]["RewardEMoneyMono"]["Value"] = 250 -- 赠点, 【需求】250赠点
	tCompensatoryPackThird_Pack[3326821]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1246"
	tCompensatoryPackThird_Pack[3326821]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326821]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326821]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326822] = {}
	-- ===3000赠点包
	-- ===索引: tCompensatoryPackThird_Pack[3326822]
	-- ===NewEmoneyLog: 1000,1247
	tCompensatoryPackThird_Pack[3326822]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326822]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326822]["RewardEMoneyMono"]["Value"] = 300 -- 赠点, 【需求】300赠点
	tCompensatoryPackThird_Pack[3326822]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1247"
	tCompensatoryPackThird_Pack[3326822]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326822]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326822]["RewardEffect"]["Effect"] = "angelwing"


	tCompensatoryPackThird_Pack[3326823] = {}
	-- ===3500赠点包
	-- ===索引: tCompensatoryPackThird_Pack[3326823]
	-- ===NewEmoneyLog: 1000,1248
	tCompensatoryPackThird_Pack[3326823]["LogId"] = 12001719
	tCompensatoryPackThird_Pack[3326823]["RewardEMoneyMono"] = {}
	tCompensatoryPackThird_Pack[3326823]["RewardEMoneyMono"]["Value"] = 350 -- 赠点, 【需求】350赠点
	tCompensatoryPackThird_Pack[3326823]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1248"
	tCompensatoryPackThird_Pack[3326823]["RewardEffect"] = {}
	tCompensatoryPackThird_Pack[3326823]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tCompensatoryPackThird_Pack[3326823]["RewardEffect"]["Effect"] = "angelwing"

----------------------------------逻辑部分---------------------------------------------

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
-- 通常礼包
tItem[3326808] = tItem[3326808] or {}
tItem[3326808]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 赠点天石上限判断
	if tCompensatoryPackThird_Pack[nItemId]["RewardEMoneyMono"] ~= nil then
		if Get_UserMonoEMoney() + tCompensatoryPackThird_Pack[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			Sys_MsgBox(tCompensatoryPackThird_Text["Msg"]["OverMonoEMoney"])
			return
		end
	end
	-- 背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tCompensatoryPackThird_Pack[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tCompensatoryPackThird_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	RewardTemplate_UseItemAndMsg(tCompensatoryPackThird_Pack[nItemId])
end
tItem[3326809] = tItem[3326808]
tItem[3326810] = tItem[3326808]
tItem[3326811] = tItem[3326808]
tItem[3326812] = tItem[3326808]
tItem[3326813] = tItem[3326808]
tItem[3326814] = tItem[3326808]
tItem[3326815] = tItem[3326808]
tItem[3326816] = tItem[3326808]

-- 次数礼包
tItem[3326817] = tItem[3326817] or {}
tItem[3326817]["Function"] = function(nItemId,sItemName)
	--判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tCompensatoryPack_Stc[nItemId]["Event"]
	local nType = tCompensatoryPack_Stc[nItemId]["Data"]
	-- 超出上限未删除时重置并删除
	if Get_UserStatisticValue(nEvent,nType) >= tCompensatoryPack_Cont["Max"] then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,0,1)
			return
		end
	end
	-- 隔天判断
	if not Task_StcInterval(nEvent,nType,1,4) then
		Sys_MsgBox(tCompensatoryPackThird_Text["Msg"]["Opened"])
		return
	end
	-- 赠点天石上限判断
	if tCompensatoryPackThird_Pack[nItemId]["RewardEMoneyMono"] ~= nil then
		if Get_UserMonoEMoney() + tCompensatoryPackThird_Pack[nItemId]["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
			Sys_MsgBox(tCompensatoryPackThird_Text["Msg"]["OverMonoEMoney"])
			return
		end
	end
	if RewardTemplate_UseItemAndMsg(tCompensatoryPackThird_Pack[nItemId]) then
		Task_SetStcTimestamp(nEvent,nType,0)
		Task_AddStatistic(nEvent,nType,1,1)
		-- 最后一次重置并删除
		if Get_UserStatisticValue(nEvent,nType) >= tCompensatoryPack_Cont["Max"] then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				Task_SetStatistic(nEvent,nType,0,1)
			end
		end
	end
end
tItem[3326818] = tItem[3326817]
tItem[3326819] = tItem[3326817]
tItem[3326820] = tItem[3326817]
tItem[3326821] = tItem[3326817]
tItem[3326822] = tItem[3326817]
tItem[3326823] = tItem[3326817]
