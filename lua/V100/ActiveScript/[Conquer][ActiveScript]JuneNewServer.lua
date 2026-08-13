------------------------------------------------------------------------------------
--Name：            190528[英文征服][活动脚本]6月新服预约（6.7-6.16）
--Creator:      林嘉鑫
--Created:     2019-05-28
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------

----------------------------------表配置部分--------------------------------------------
local tJuneNewServer_Cont = {}
	tJuneNewServer_Cont["Level"] = {20,30,40,50,60,70,80,90,100,105,110,115,120,125,130,135,136,137,138,139,140}
	tJuneNewServer_Cont["Metempsychosis"] = 0
	tJuneNewServer_Cont["Max"] = 21
	tJuneNewServer_Cont["Stc"] = {}
	tJuneNewServer_Cont["Stc"]["EventType"] = 197
	tJuneNewServer_Cont["Stc"]["DataType"] = 48

local tJuneNewServer_Package = {}
	-- ===抱团闯荡礼包
	-- ===索引: tJuneNewServer_Package[3321792]
	-- ===删除: 3321792,1
	-- ===EMoneyLog: 100000,464
	tJuneNewServer_Package[3321792] = {}
	tJuneNewServer_Package[3321792]["LogId"] = 12001444
	tJuneNewServer_Package[3321792]["DeleteItem"] = {}
	tJuneNewServer_Package[3321792]["DeleteItem"][1] = {}
	tJuneNewServer_Package[3321792]["DeleteItem"][1]["Id"] = 3321792 -- 【库】TeamworkPack[属性:9]
	tJuneNewServer_Package[3321792]["RewardEMoneyMono"] = {}
	tJuneNewServer_Package[3321792]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】500赠点
	tJuneNewServer_Package[3321792]["RewardEMoneyMono"]["NewEmoneyLog"] = "100000	464"
	tJuneNewServer_Package[3321792]["RewardEffect"] = {}
	tJuneNewServer_Package[3321792]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321792]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321793] = {}
	-- ===名扬四海礼包
	-- ===索引: tJuneNewServer_Package[3321793]
	-- ===删除:3321793,1
	tJuneNewServer_Package[3321793]["LogId"] = 12001444
	tJuneNewServer_Package[3321793]["DeleteItem"] = {}
	tJuneNewServer_Package[3321793]["DeleteItem"][1] = {}
	tJuneNewServer_Package[3321793]["DeleteItem"][1]["Id"] = 3321793 -- 【库】RisingStarPack[属性:9]
	tJuneNewServer_Package[3321793]["RewardItem"] = {}
	tJuneNewServer_Package[3321793]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321793]["RewardItem"][1]["Id"] = 192565 -- 【库】CogsoftheHeart[属性:0], 【表格】赠品神佑1无属性外CogsoftheHeart*1
	tJuneNewServer_Package[3321793]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CogsoftheHeart(B)*1
	tJuneNewServer_Package[3321793]["RewardStrengthValue"] = {}
	tJuneNewServer_Package[3321793]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000赠气力值*1
	tJuneNewServer_Package[3321793]["RewardItem"][2] = {}
	tJuneNewServer_Package[3321793]["RewardItem"][2]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】+3赠品赤练石*6
	tJuneNewServer_Package[3321793]["RewardItem"][2]["Attr"] = "0 6 3" -- +3Stone(B)*6
	tJuneNewServer_Package[3321793]["RewardCultivation"] = {}
	tJuneNewServer_Package[3321793]["RewardCultivation"]["Value"] = 5000 -- 修行值, 【需求】修行值5000
	tJuneNewServer_Package[3321793]["RewardEffect"] = {}
	tJuneNewServer_Package[3321793]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321793]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321794] = {}
	-- ===威震八方礼包
	-- ===索引: tJuneNewServer_Package[3321794]
	-- ===删除: 3321794,1
	-- ===EMoneyLog: 100000,464
	tJuneNewServer_Package[3321794]["LogId"] = 12001444
	tJuneNewServer_Package[3321794]["DeleteItem"] = {}
	tJuneNewServer_Package[3321794]["DeleteItem"][1] = {}
	tJuneNewServer_Package[3321794]["DeleteItem"][1]["Id"] = 3321794 -- 【库】SeniorExpertPack[属性:9]
	tJuneNewServer_Package[3321794]["RewardEMoneyMono"] = {}
	tJuneNewServer_Package[3321794]["RewardEMoneyMono"]["Value"] = 500 -- 赠点, 【需求】500赠点
	tJuneNewServer_Package[3321794]["RewardEMoneyMono"]["NewEmoneyLog"] = "100000	464"
	tJuneNewServer_Package[3321794]["RewardItem"] = {}
	tJuneNewServer_Package[3321794]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321794]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】赠龙珠*2
	tJuneNewServer_Package[3321794]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonBall(B)*2
	tJuneNewServer_Package[3321794]["RewardItem"][2] = {}
	tJuneNewServer_Package[3321794]["RewardItem"][2]["Id"] = 3304828 -- 【库】SuperMeteorScroll[属性:9], 【表格】赠流星卷大礼包*1
	tJuneNewServer_Package[3321794]["RewardItem"][2]["Attr"] = "0 1 3" -- SuperMeteorScroll(B)*1
	tJuneNewServer_Package[3321794]["RewardItem"][3] = {}
	tJuneNewServer_Package[3321794]["RewardItem"][3]["Id"] = 727003 -- 【库】WeaponAccessoryPack[属性:9], 【表格】赠武器外套*2
	tJuneNewServer_Package[3321794]["RewardItem"][3]["Attr"] = "0 2" -- WeaponAccessoryPack*2
	tJuneNewServer_Package[3321794]["RewardEffect"] = {}
	tJuneNewServer_Package[3321794]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321794]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321795] = {}
	-- ===名震天下礼包
	-- ===索引: tJuneNewServer_Package[3321795]
	-- ===删除: 3321795,1
	-- ===EMoneyLog: 100000,464
	tJuneNewServer_Package[3321795]["LogId"] = 12001444
	tJuneNewServer_Package[3321795]["DeleteItem"] = {}
	tJuneNewServer_Package[3321795]["DeleteItem"][1] = {}
	tJuneNewServer_Package[3321795]["DeleteItem"][1]["Id"] = 3321795 -- 【库】WorldFamousPack[属性:9]
	tJuneNewServer_Package[3321795]["RewardItem"] = {}
	tJuneNewServer_Package[3321795]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321795]["RewardItem"][1]["Id"] = 200595 -- 【库】CelestialFox[属性:0], 【表格】赠品神佑1无属性坐骑CelestialFox*1
	tJuneNewServer_Package[3321795]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialFox(B)*1
	tJuneNewServer_Package[3321795]["RewardItem"][2] = {}
	tJuneNewServer_Package[3321795]["RewardItem"][2]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石*8
	tJuneNewServer_Package[3321795]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tJuneNewServer_Package[3321795]["RewardItem"][3] = {}
	tJuneNewServer_Package[3321795]["RewardItem"][3]["Id"] = 3306919 -- 【库】RandomYellowRunePack[属性:9], 【表格】赠随机黄色神纹包*1（非稀有神纹）
	tJuneNewServer_Package[3321795]["RewardItem"][3]["Attr"] = "0 1" -- RandomYellowRunePack*1
	tJuneNewServer_Package[3321795]["RewardEMoneyMono"] = {}
	tJuneNewServer_Package[3321795]["RewardEMoneyMono"]["Value"] = 3000 -- 赠点, 【需求】3000赠品天石
	tJuneNewServer_Package[3321795]["RewardEMoneyMono"]["NewEmoneyLog"] = "100000	464"
	tJuneNewServer_Package[3321795]["RewardEffect"] = {}
	tJuneNewServer_Package[3321795]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321795]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][1]
	-- ===LogStep: 2[1]
	tJuneNewServer_Package[3321796][1] = {}
	tJuneNewServer_Package[3321796][1]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][1]["LogStep"] = "2[1]"
	tJuneNewServer_Package[3321796][1]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][1]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][1]["RewardItem"][1]["Id"] = 1200000 -- 【库】PrayingStone(S)[属性:0], 【表格】小祈愿石
	tJuneNewServer_Package[3321796][1]["RewardItem"][1]["Attr"] = "0 1 3" -- PrayingStone(S)(B)*1
	tJuneNewServer_Package[3321796][1]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][1]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][2] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][2]
	-- ===LogStep: 2[2]
	tJuneNewServer_Package[3321796][2]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][2]["LogStep"] = "2[2]"
	tJuneNewServer_Package[3321796][2]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][2]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][2]["RewardItem"][1]["Id"] = 3006277 -- 【库】MeteorScroll[属性:11], 【表格】赠流星卷
	tJuneNewServer_Package[3321796][2]["RewardItem"][1]["Attr"] = "0 1" -- MeteorScroll*1
	tJuneNewServer_Package[3321796][2]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][2]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][3] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][3]
	-- ===LogStep: 2[3]
	tJuneNewServer_Package[3321796][3]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][3]["LogStep"] = "2[3]"
	tJuneNewServer_Package[3321796][3]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][3]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][3]["RewardItem"][1]["Id"] = 723017 -- 【库】ExpPotion[属性:0], 【表格】昆仑雪水
	tJuneNewServer_Package[3321796][3]["RewardItem"][1]["Attr"] = "0 5 3" -- ExpPotion(B)*5
	tJuneNewServer_Package[3321796][3]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][3]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][4] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][4]
	-- ===LogStep: 2[4]
	tJuneNewServer_Package[3321796][4]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][4]["LogStep"] = "2[4]"
	tJuneNewServer_Package[3321796][4]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][4]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][4]["RewardItem"][1]["Id"] = 700012 -- 【库】DragonGem[属性:0], 【表格】良品龙恨宝石
	tJuneNewServer_Package[3321796][4]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonGem(B)*2
	tJuneNewServer_Package[3321796][4]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][4]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][5] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][5]
	-- ===LogStep: 2[5]
	tJuneNewServer_Package[3321796][5]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][5]["LogStep"] = "2[5]"
	tJuneNewServer_Package[3321796][5]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][5]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][5]["RewardItem"][1]["Id"] = 3006277 -- 【库】MeteorScroll[属性:11], 【表格】赠流星卷
	tJuneNewServer_Package[3321796][5]["RewardItem"][1]["Attr"] = "0 1" -- MeteorScroll*1
	tJuneNewServer_Package[3321796][5]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][5]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][6] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][6]
	-- ===LogStep: 2[6]
	tJuneNewServer_Package[3321796][6]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][6]["LogStep"] = "2[6]"
	tJuneNewServer_Package[3321796][6]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][6]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][6]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】+3赤练石
	tJuneNewServer_Package[3321796][6]["RewardItem"][1]["Attr"] = "0 2 3" -- +2Stone(B)*2
	tJuneNewServer_Package[3321796][6]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][6]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][7] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][7]
	-- ===LogStep: 2[7]
	tJuneNewServer_Package[3321796][7]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][7]["LogStep"] = "2[7]"
	tJuneNewServer_Package[3321796][7]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][7]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][7]["RewardItem"][1]["Id"] = 3001407 -- 【库】EndeavorScroll[属性:0], 【表格】天道酬勤券
	tJuneNewServer_Package[3321796][7]["RewardItem"][1]["Attr"] = "0 2 3" -- EndeavorScroll(B)*2
	tJuneNewServer_Package[3321796][7]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][7]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][8] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][8]
	-- ===LogStep: 2[8]
	tJuneNewServer_Package[3321796][8]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][8]["LogStep"] = "2[8]"
	tJuneNewServer_Package[3321796][8]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][8]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][8]["RewardItem"][1]["Id"] = 730003 -- 【库】+3Stone[属性:0], 【表格】+3赤练石
	tJuneNewServer_Package[3321796][8]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone(B)*2
	tJuneNewServer_Package[3321796][8]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][8]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][9] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][9]
	-- ===LogStep: 2[9]
	tJuneNewServer_Package[3321796][9]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][9]["LogStep"] = "2[9]"
	tJuneNewServer_Package[3321796][9]["RewardCultivation"] = {}
	tJuneNewServer_Package[3321796][9]["RewardCultivation"]["Value"] = 2000 -- 修行值, 【需求】2000点修行值
	tJuneNewServer_Package[3321796][9]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][9]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][10] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][10]
	-- ===LogStep: 2[10]
	tJuneNewServer_Package[3321796][10]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][10]["LogStep"] = "2[10]"
	tJuneNewServer_Package[3321796][10]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][10]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][10]["RewardItem"][1]["Id"] = 3006277 -- 【库】MeteorScroll[属性:11], 【表格】赠流星卷
	tJuneNewServer_Package[3321796][10]["RewardItem"][1]["Attr"] = "0 3" -- MeteorScroll*3
	tJuneNewServer_Package[3321796][10]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][10]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][11] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][11]
	-- ===LogStep: 2[11]
	tJuneNewServer_Package[3321796][11]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][11]["LogStep"] = "2[11]"
	tJuneNewServer_Package[3321796][11]["RewardCultivation"] = {}
	tJuneNewServer_Package[3321796][11]["RewardCultivation"]["Value"] = 5000 -- 修行值, 【需求】5000点修行值
	tJuneNewServer_Package[3321796][11]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][11]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][12] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][12]
	-- ===LogStep: 2[12]
	tJuneNewServer_Package[3321796][12]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][12]["LogStep"] = "2[12]"
	tJuneNewServer_Package[3321796][12]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][12]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][12]["RewardItem"][1]["Id"] = 1088000 -- 【库】DragonBall[属性:0], 【表格】龙珠
	tJuneNewServer_Package[3321796][12]["RewardItem"][1]["Attr"] = "0 3 3" -- DragonBall(B)*3
	tJuneNewServer_Package[3321796][12]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][12]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][13] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][13]
	-- ===LogStep: 2[13]
	tJuneNewServer_Package[3321796][13]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][13]["LogStep"] = "2[13]"
	tJuneNewServer_Package[3321796][13]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][13]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][13]["RewardItem"][1]["Id"] = 3003124 -- 【库】FavoredTrainingPill[属性:0], 【表格】强练（50）
	tJuneNewServer_Package[3321796][13]["RewardItem"][1]["Attr"] = "0 50 3" -- FavoredTrainingPill(B)*50
	tJuneNewServer_Package[3321796][13]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][13]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][14] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][14]
	-- ===LogStep: 2[14]
	tJuneNewServer_Package[3321796][14]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][14]["LogStep"] = "2[14]"
	tJuneNewServer_Package[3321796][14]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][14]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][14]["RewardItem"][1]["Id"] = 3003126 -- 【库】SeniorTrainingPill[属性:0], 【表格】大爆丹（20）
	tJuneNewServer_Package[3321796][14]["RewardItem"][1]["Attr"] = "0 20 3" -- SeniorTrainingPill(B)*20
	tJuneNewServer_Package[3321796][14]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][14]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][15] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][15]
	-- ===LogStep: 2[15]
	tJuneNewServer_Package[3321796][15]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][15]["LogStep"] = "2[15]"
	tJuneNewServer_Package[3321796][15]["RewardStrengthValue"] = {}
	tJuneNewServer_Package[3321796][15]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】气力值5000
	tJuneNewServer_Package[3321796][15]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][15]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][16] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][16]
	-- ===LogStep: 2[16]
	tJuneNewServer_Package[3321796][16]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][16]["LogStep"] = "2[16]"
	tJuneNewServer_Package[3321796][16]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][16]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][16]["RewardItem"][1]["Id"] = 3006863 -- 【库】DBScroll[属性:0], 【表格】龙珠卷
	tJuneNewServer_Package[3321796][16]["RewardItem"][1]["Attr"] = "0 1 3" -- DBScroll(B)*1
	tJuneNewServer_Package[3321796][16]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][16]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][17] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][17]
	-- ===LogStep: 2[17]
	tJuneNewServer_Package[3321796][17]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][17]["LogStep"] = "2[17]"
	tJuneNewServer_Package[3321796][17]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][17]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][17]["RewardItem"][1]["Id"] = 3009001 -- 【库】BrightStarStone[属性:9], 【表格】明亮星陨石
	tJuneNewServer_Package[3321796][17]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneNewServer_Package[3321796][17]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][17]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][18] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][18]
	-- ===LogStep: 2[18]
	tJuneNewServer_Package[3321796][18]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][18]["LogStep"] = "2[18]"
	tJuneNewServer_Package[3321796][18]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][18]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][18]["RewardItem"][1]["Id"] = 3005412 -- 【库】PowerEraser[属性:0], 【表格】散功丹
	tJuneNewServer_Package[3321796][18]["RewardItem"][1]["Attr"] = "0 1 3" -- PowerEraser(B)*1
	tJuneNewServer_Package[3321796][18]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][18]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][19] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][19]
	-- ===LogStep: 2[19]
	tJuneNewServer_Package[3321796][19]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][19]["LogStep"] = "2[19]"
	tJuneNewServer_Package[3321796][19]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][19]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][19]["RewardItem"][1]["Id"] = 4060001 -- 【库】UniversalRuneEssence[属性:9], 【表格】万能神纹精粹
	tJuneNewServer_Package[3321796][19]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tJuneNewServer_Package[3321796][19]["RewardItem"][2] = {}
	tJuneNewServer_Package[3321796][19]["RewardItem"][2]["Id"] = 3001044 -- 【库】MysteryFruit[属性:9], 【表格】天机果
	tJuneNewServer_Package[3321796][19]["RewardItem"][2]["Attr"] = "0 3" -- MysteryFruit*3
	tJuneNewServer_Package[3321796][19]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][19]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][20] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][20]
	-- ===LogStep: 2[20]
	tJuneNewServer_Package[3321796][20]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][20]["LogStep"] = "2[20]"
	tJuneNewServer_Package[3321796][20]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][20]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][20]["RewardItem"][1]["Id"] = 3311759 -- 【库】RuneCrystal[属性:8], 【表格】神纹源晶
	tJuneNewServer_Package[3321796][20]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal(B)*2
	tJuneNewServer_Package[3321796][20]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][20]["RewardEffect"]["Effect"] = "angelwing"


	tJuneNewServer_Package[3321796][21] = {}
	-- ===新服成长礼包
	-- ===索引: tJuneNewServer_Package[3321796][21]
	-- ===删除: 3321796,1
	-- ===LogStep: 2[21]
	tJuneNewServer_Package[3321796][21]["LogId"] = 12001444
	tJuneNewServer_Package[3321796][21]["LogStep"] = "2[21]"
	tJuneNewServer_Package[3321796][21]["DeleteItem"] = {}
	tJuneNewServer_Package[3321796][21]["DeleteItem"][1] = {}
	tJuneNewServer_Package[3321796][21]["DeleteItem"][1]["Id"] = 3321796 -- 【库】FancyAdventureBox[属性:9]
	tJuneNewServer_Package[3321796][21]["RewardItem"] = {}
	tJuneNewServer_Package[3321796][21]["RewardItem"][1] = {}
	tJuneNewServer_Package[3321796][21]["RewardItem"][1]["Id"] = 200553 -- 【库】CuteMonkey[属性:0], 【表格】赠永久神佑1无属性CuteMonkey
	tJuneNewServer_Package[3321796][21]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CuteMonkey(B)*1
	tJuneNewServer_Package[3321796][21]["RewardEffect"] = {}
	tJuneNewServer_Package[3321796][21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneNewServer_Package[3321796][21]["RewardEffect"]["Effect"] = "angelwing"

	-- 流星卷大礼包(同步简中)
	tJuneNewServer_Package[3304828] = {}
	tJuneNewServer_Package[3304828]["RewardItem"] = {}
	tJuneNewServer_Package[3304828]["RewardItem"][1] = {}
	tJuneNewServer_Package[3304828]["RewardItem"][1]["Id"] = 720027
	tJuneNewServer_Package[3304828]["RewardItem"][1]["Attr"] = "0 10 3"
	tJuneNewServer_Package[3304828]["DeleteItem"] = {}
	tJuneNewServer_Package[3304828]["DeleteItem"][1] = {}
	tJuneNewServer_Package[3304828]["DeleteItem"][1]["Id"] = 3304828
	tJuneNewServer_Package[3304828]["Log"] = "0,0,3304828,1,12000828,2,720027,10"

----------------------------------逻辑部分---------------------------------------------
-- 开礼包
function JuneNewServer_Open(nItemId,nData)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	-- 没有删除时，次数上限判断
	if nData > tJuneNewServer_Cont["Max"] then
		Item_DelItem(nItemId)
		return
	end
	--等级不足
	local nLevel = tJuneNewServer_Cont["Level"][nData]
	local nMetempsychosis = tJuneNewServer_Cont["Metempsychosis"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then
		Sys_MsgBox(string.format(tJuneNewServer_Text["Msg"]["Level"],nLevel))
		return
	end
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tJuneNewServer_Package[nItemId][nData])
	if not RewardTemplate_CheckSpace(tJuneNewServer_Package[nItemId][nData]) then
		Sys_MsgBox(string.format(tJuneNewServer_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	-- 打掩码
	local nEvent = tJuneNewServer_Cont["Stc"]["EventType"]
	local nType = tJuneNewServer_Cont["Stc"]["DataType"]
	Task_SetStatistic(nEvent,nType,nData + 1,1)
	RewardTemplate_UseItemAndMsg(tJuneNewServer_Package[nItemId][nData])
	local sRewardStr = tJuneNewServer_Text["Reward"][nData]
	Sys_MsgBox(string.format(tJuneNewServer_Text["Msg"]["GetAward"],sRewardStr))
end

---------------------------------物品部分---------------------------------------------
--------物品无对白模板
tItem[3321792] = tItem[3321792] or {}
tItem[3321792]["Function"] = function(nItemId,sItemName)
	-- 判断背包空间
	local nSpace= RewardTemplate_GetRewardSpace(tJuneNewServer_Package[nItemId]) - RewardTemplate_GetDelSpace(tJuneNewServer_Package[nItemId])
	if not RewardTemplate_CheckSpace(tJuneNewServer_Package[nItemId]) then
		Sys_MsgBox(string.format(tJuneNewServer_Text["Msg"]["NoMoreSpace"],nSpace))
		return
	end
	-- 天石溢出
	if tJuneNewServer_Package[nItemId]["RewardEMoneyMono"] ~= nil and tJuneNewServer_Package[nItemId]["RewardEMoneyMono"]["Value"] ~= nil then
		local nUserMonoEMoney = Get_UserMonoEMoney()
		local nEMoney = tJuneNewServer_Package[nItemId]["RewardEMoneyMono"]["Value"]
		if nUserMonoEMoney + nEMoney > G_User_MaxEmoneyMono then
			Sys_MsgBox(tJuneNewServer_Text["Msg"]["EMoneyMono"])
			return
		end
	end
	RewardTemplate_UseItemAndMsg(tJuneNewServer_Package[nItemId])
end
tItem[3321793] = tItem[3321792]
tItem[3321794] = tItem[3321792]
tItem[3321795] = tItem[3321792]

-- 流星卷大礼包
tItem[3304828] = tItem[3304828] or {}
tItem[3304828]["Function"] = function(nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	RewardTemplate_UseItem(tJuneNewServer_Package[nItemId])
end
--------物品有对白模板
tItemFace[3321796] = 766
tItem[3321796] = tItem[3321796] or {}
tItem[3321796]["Function"] = function (nItemId,sItemName)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nEvent = tJuneNewServer_Cont["Stc"]["EventType"]
	local nType = tJuneNewServer_Cont["Stc"]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	if nData == nil or nData == 0 then
		nData = 1
	end
	-- 没有删除时，次数上限判断
	if nData > 21 then
		Item_DelItem(nItemId)
		return
	end
	local nLevel = tJuneNewServer_Cont["Level"][nData]
	local sRewardStr = tJuneNewServer_Text["Reward"][nData]
	tItem[nItemId]["Text111"] = string.format(tJuneNewServer_Text[nItemId]["Text111"],sRewardStr,nLevel)
	tItem[nItemId]["OptionFunc111"] = "JuneNewServer_Open</N>"..nItemId.."</N>"..nData
	LinkItemGossipFunc_New(nItemId,"1-1")
	return
end
tItem[3321796]["DialogueText"] = tJuneNewServer_Text[3321796]
tItem[3321796]["Text1-1"] = {111}
tItem[3321796]["tOption1-1"] = {111,112}
