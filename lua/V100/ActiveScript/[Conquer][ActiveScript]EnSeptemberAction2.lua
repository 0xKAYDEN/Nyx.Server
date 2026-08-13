------------------------------------------------------------------------------------
--Name：        190811[英文征服][活动脚本]9月发奖ID第二波（9.03）
--Creator:      茅志伟
--Created:      2019/08/11
------------------------------------------------------------------------------------
-- 命名前缀 tEnSeptemberAction2_


-- lua.ini = 41447
-- 41447 = V100\ActiveScript\[Conquer][ActiveScript]EnSeptemberAction2.lua
-- 41447 = V100\活动脚本\[征服][活动脚本]9月发奖ID第二波（9.03）.lua
-- LogId = 12001564

-- EMoneyBuyLog = 10000	0728

-- stc掩码
-- 202,78 记录新服成长礼包开启次数

local  tEnSeptemberAction2_Data = {}
tEnSeptemberAction2_Data["Count"] = {}
tEnSeptemberAction2_Data["Count"][3323061] = 20
tEnSeptemberAction2_Data["Count"][3323057] = {1,30}
tEnSeptemberAction2_Data["Level"] = {}
tEnSeptemberAction2_Data["Level"][3323075] = {20,30,40,50,60,70,80,90,100,105,110,115,130,135,136,137,138,138,139,140}

local  tEnSeptemberAction2_Stc = {}
--记录新服成长礼包开启次数
tEnSeptemberAction2_Stc[3323075] = {}
tEnSeptemberAction2_Stc[3323075]["EventType"] = 202
tEnSeptemberAction2_Stc[3323075]["DataType"] = 78

local  tEnSeptemberAction2_Log = {}
tEnSeptemberAction2_Log["UseAftiaItem"] = "0,0,%d,0,12001564,2,%s,1"
tEnSeptemberAction2_Log["DeleteLog"] = "0,0,%d,%d,0,12001564,2,0,0"

local tEnSeptemberAction2_Pack = {}
	-- ===优秀学员礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323049]
	-- ===删除:3323049,1
	-- ===
	tEnSeptemberAction2_Pack[3323049] = {}
	tEnSeptemberAction2_Pack[3323049]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323049]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323049]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323049]["DeleteItem"][1]["Id"] = 3323049 -- 【库】ExcellentStudentPack[属性:9]
	tEnSeptemberAction2_Pack[3323049]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][1]["Id"] = 3301827 -- MeteorScroll(B)[3301827][属性:9][叠加:1][金币:0], 【表格】流星卷赠（赠）
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][1]["Attr"] = "0 1" -- MeteorScroll(B)*1
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][3]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2赠*2（赠）
	tEnSeptemberAction2_Pack[3323049]["RewardItem"][3]["Attr"] = "0 2 3" -- +2Stone（赠）*2
	tEnSeptemberAction2_Pack[3323049]["RewardEMoneyMono"] = {}
	tEnSeptemberAction2_Pack[3323049]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100天石（赠）
	tEnSeptemberAction2_Pack[3323049]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0728"
	tEnSeptemberAction2_Pack[3323049]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323049]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】2000点气力
	tEnSeptemberAction2_Pack[3323049]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323049]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323049]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323050] = {}
	-- ===学霸礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323050]
	-- ===删除:3323050,1
	-- ===
	tEnSeptemberAction2_Pack[3323050]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323050]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323050]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323050]["DeleteItem"][1]["Id"] = 3323050 -- 【库】PowerfulTalentPack[属性:9]
	tEnSeptemberAction2_Pack[3323050]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][1]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】大爆丹赠*5（赠）
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][1]["Attr"] = "0 5 3" -- SeniorTrainingPill（赠）*5
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*2
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][3]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤练石+3赠*1（赠）
	tEnSeptemberAction2_Pack[3323050]["RewardItem"][3]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tEnSeptemberAction2_Pack[3323050]["RewardEMoneyMono"] = {}
	tEnSeptemberAction2_Pack[3323050]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100点天石（赠）
	tEnSeptemberAction2_Pack[3323050]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0728"
	tEnSeptemberAction2_Pack[3323050]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323050]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000点气力
	tEnSeptemberAction2_Pack[3323050]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323050]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323050]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323051] = {}
	-- ===学神礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323051]
	-- ===删除:3323051,1
	-- ===
	tEnSeptemberAction2_Pack[3323051]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323051]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323051]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323051]["DeleteItem"][1]["Id"] = 3323051 -- 【库】LegendaryGeniusPack[属性:9]
	tEnSeptemberAction2_Pack[3323051]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠（赠）
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][1]["Attr"] = "0 1 3" -- DragonBall（赠）*1
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][2]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][3]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3赠*2（赠）
	tEnSeptemberAction2_Pack[3323051]["RewardItem"][3]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tEnSeptemberAction2_Pack[3323051]["RewardEMoneyMono"] = {}
	tEnSeptemberAction2_Pack[3323051]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200点天石（赠）
	tEnSeptemberAction2_Pack[3323051]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0728"
	tEnSeptemberAction2_Pack[3323051]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323051]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力
	tEnSeptemberAction2_Pack[3323051]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323051]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323051]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323052] = {}
	-- ===促销排行冠军礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323052]
	-- ===删除:3323052,1
	-- ===
	tEnSeptemberAction2_Pack[3323052]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323052]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323052]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323052]["DeleteItem"][1]["Id"] = 3323052 -- 【库】PromoRanking1stPrizePack[属性:9]
	tEnSeptemberAction2_Pack[3323052]["RewardTitle"] = {}
	tEnSeptemberAction2_Pack[3323052]["RewardTitle"]["TitleType"] = 2135 -- 【库】Magnifico, 【表格】180天Magnifico称号
	tEnSeptemberAction2_Pack[3323052]["RewardTitle"]["TitleId"] = 2135
	tEnSeptemberAction2_Pack[3323052]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:Magnifico, 【需求】180天Magnifico称号
	tEnSeptemberAction2_Pack[3323052]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323052]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323052]["RewardItem"][1]["Id"] = 195575 -- CommanderRobe(Wealth)[195575][属性:8][叠加:0][金币:0], 【表格】永久CommanderRobe（Wealth）外套神佑-1
	tEnSeptemberAction2_Pack[3323052]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑CommanderRobe(Wealth)*1
	tEnSeptemberAction2_Pack[3323052]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323052]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tEnSeptemberAction2_Pack[3323052]["RewardItem"][2]["Attr"] = "0 3000 3" -- UniversalRuneEssence（赠）*3000
	tEnSeptemberAction2_Pack[3323052]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323052]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323052]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323053] = {}
	-- ===促销排行亚军礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323053]
	-- ===删除:3323053,1
	-- ===
	tEnSeptemberAction2_Pack[3323053]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323053]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323053]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323053]["DeleteItem"][1]["Id"] = 3323053 -- 【库】PromoRanking2ndPrizePack[属性:9]
	tEnSeptemberAction2_Pack[3323053]["RewardTitle"] = {}
	tEnSeptemberAction2_Pack[3323053]["RewardTitle"]["TitleType"] = 2135 -- 【库】Magnifico, 【表格】180天Magnifico称号
	tEnSeptemberAction2_Pack[3323053]["RewardTitle"]["TitleId"] = 2135
	tEnSeptemberAction2_Pack[3323053]["RewardTitle"]["SaveTime"] = 259200 -- 180天时效的[称号]:Magnifico, 【需求】180天Magnifico称号
	tEnSeptemberAction2_Pack[3323053]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323053]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323053]["RewardItem"][1]["Id"] = 195575 -- CommanderRobe(Wealth)[195575][属性:8][叠加:0][金币:0], 【表格】永久CommanderRobe（Wealth）外套神佑-1
	tEnSeptemberAction2_Pack[3323053]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑CommanderRobe(Wealth)*1
	tEnSeptemberAction2_Pack[3323053]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323053]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tEnSeptemberAction2_Pack[3323053]["RewardItem"][2]["Attr"] = "0 2000 3" -- UniversalRuneEssence（赠）*2000
	tEnSeptemberAction2_Pack[3323053]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323053]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323053]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323054] = {}
	-- ===促销排行季军礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323054]
	-- ===删除:3323054,1
	-- ===
	tEnSeptemberAction2_Pack[3323054]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323054]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323054]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323054]["DeleteItem"][1]["Id"] = 3323054 -- 【库】PromoRanking3rdPrizePack[属性:9]
	tEnSeptemberAction2_Pack[3323054]["RewardTitle"] = {}
	tEnSeptemberAction2_Pack[3323054]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】120天Millionaire称号
	tEnSeptemberAction2_Pack[3323054]["RewardTitle"]["TitleId"] = 2136
	tEnSeptemberAction2_Pack[3323054]["RewardTitle"]["SaveTime"] = 172800 -- 120天时效的[称号]:Millionaire , 【需求】120天Millionaire称号
	tEnSeptemberAction2_Pack[3323054]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323054]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323054]["RewardItem"][1]["Id"] = 195485 -- InvincibleEastern(Supreme)[195485][属性:0][叠加:0][金币:0], 【表格】永久InvincibleEaster（Superme）外套神佑-1
	tEnSeptemberAction2_Pack[3323054]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1" -- 1%神佑InvincibleEastern(Supreme)*1
	tEnSeptemberAction2_Pack[3323054]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323054]["RewardItem"][2]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tEnSeptemberAction2_Pack[3323054]["RewardItem"][2]["Attr"] = "0 1000 3" -- UniversalRuneEssence（赠）*1000
	tEnSeptemberAction2_Pack[3323054]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323054]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323054]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323055] = {}
	-- ===促销排行豪华礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323055]
	-- ===删除:3323055,1
	-- ===
	tEnSeptemberAction2_Pack[3323055]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323055]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323055]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323055]["DeleteItem"][1]["Id"] = 3323055 -- 【库】PromoRankingLuxuryRewardPack[属性:9]
	tEnSeptemberAction2_Pack[3323055]["RewardTitle"] = {}
	tEnSeptemberAction2_Pack[3323055]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】120天Millionaire称号
	tEnSeptemberAction2_Pack[3323055]["RewardTitle"]["TitleId"] = 2136
	tEnSeptemberAction2_Pack[3323055]["RewardTitle"]["SaveTime"] = 172800 -- 120天时效的[称号]:Millionaire , 【需求】120天Millionaire称号
	tEnSeptemberAction2_Pack[3323055]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323055]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323055]["RewardItem"][1]["Id"] = 195575 -- CommanderRobe(Wealth)[195575][属性:8][叠加:0][金币:0], 【表格】120天CommanderRobe（Wealth）神佑-1
	tEnSeptemberAction2_Pack[3323055]["RewardItem"][1]["Attr"] = "0 1 0 172800 1 0 0 1" -- 120天时效(激活)的1%神佑CommanderRobe(Wealth)*1
	tEnSeptemberAction2_Pack[3323055]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323055]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】气力值20000
	tEnSeptemberAction2_Pack[3323055]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323055]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323055]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323056] = {}
	-- ===促销排行精装包
	-- ===索引: tEnSeptemberAction2_Pack[3323056]
	-- ===删除:3323056,1
	-- ===
	tEnSeptemberAction2_Pack[3323056]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323056]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323056]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323056]["DeleteItem"][1]["Id"] = 3323056 -- 【库】PromoRankingFancyRewardPack[属性:9]
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】90天Millionaire称号
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"]["TitleId"] = 2136
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Millionaire , 【需求】90天Millionaire称号
	tEnSeptemberAction2_Pack[3323056]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardItem"][1]["Id"] = 195485 -- InvincibleEastern(Supreme)[195485][属性:0][叠加:0][金币:0], 【表格】90天InvincibleEaster（Superme）外套神佑-1
	tEnSeptemberAction2_Pack[3323056]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的1%神佑InvincibleEastern(Supreme)*1
	tEnSeptemberAction2_Pack[3323056]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值10000
	tEnSeptemberAction2_Pack[3323056]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323056]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323056]["LogId"] = 12001564
	-- ===促销排行精装包
	-- ===索引: tEnSeptemberAction2_Pack[3323056]
	-- ===删除:3323056,1
	-- ===
	tEnSeptemberAction2_Pack[3323056]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323056]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323056]["DeleteItem"][1]["Id"] = 3323056 -- 【库】PromoRankingFancyRewardPack[属性:9]
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"]["TitleType"] = 2136 -- 【库】Millionaire , 【表格】90天Millionaire称号
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"]["TitleId"] = 2136
	tEnSeptemberAction2_Pack[3323056]["RewardTitle"]["SaveTime"] = 129600 -- 90天时效的[称号]:Millionaire , 【需求】90天Millionaire称号
	tEnSeptemberAction2_Pack[3323056]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardItem"][1]["Id"] = 195485 -- InvincibleEastern(Supreme)[195485][属性:0][叠加:0][金币:0], 【表格】90天InvincibleEaster（Superme）外套神佑-1
	tEnSeptemberAction2_Pack[3323056]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的1%神佑InvincibleEastern(Supreme)*1
	tEnSeptemberAction2_Pack[3323056]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】气力值10000
	tEnSeptemberAction2_Pack[3323056]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323056]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323056]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323057] = {}
	-- ===MonkeyKingArmor时装外套碎片
	-- ===索引: tEnSeptemberAction2_Pack[3323057][1]
	-- ===删除:3323057,1
	-- ===
	tEnSeptemberAction2_Pack[3323057][1] = {}
	tEnSeptemberAction2_Pack[3323057][1]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323057][1]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323057][1]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323057][1]["DeleteItem"][1]["Id"] = 3323057 -- 【库】MonkeyKingArmorFragment[属性:9]
	tEnSeptemberAction2_Pack[3323057][1]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323057][1]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323057][1]["RewardItem"][1]["Id"] = 189685 -- MonkeyKingArmor[189685][属性:0][叠加:0][金币:0], 【表格】MonkeyKingArmor外套（赠）
	tEnSeptemberAction2_Pack[3323057][1]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1" -- 3天时效(激活)的1%神佑MonkeyKingArmor（赠）*1
	tEnSeptemberAction2_Pack[3323057][1]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323057][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323057][1]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323057][2] = {}
	-- ===MonkeyKingArmor时装外套碎片
	-- ===索引: tEnSeptemberAction2_Pack[3323057][2]
	-- ===删除:3323057,1
	-- ===
	tEnSeptemberAction2_Pack[3323057][2]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323057][2]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323057][2]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323057][2]["DeleteItem"][1]["Id"] = 3323057 -- 【库】MonkeyKingArmorFragment[属性:9]
	tEnSeptemberAction2_Pack[3323057][2]["DeleteItem"][1]["ItemNum"] = 30
	tEnSeptemberAction2_Pack[3323057][2]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323057][2]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323057][2]["RewardItem"][1]["Id"] = 189685 -- MonkeyKingArmor[189685][属性:0][叠加:0][金币:0], 【表格】MonkeyKingArmor外套（赠）
	tEnSeptemberAction2_Pack[3323057][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MonkeyKingArmor（赠）*1
	tEnSeptemberAction2_Pack[3323057][2]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323057][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323057][2]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323059] = {}
	-- ===冠军翅膀碎片礼包
	-- ===索引:  tEnSeptemberAction2_Pack[3323059]
	-- ===删除:3323059,1
	tEnSeptemberAction2_Pack[3323059]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tEnSeptemberAction2_Pack[3323059]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323059]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323059]["DeleteItem"][1]["Id"] = 3323059 -- 【库】ChampionPlumePack[属性:9]
	tEnSeptemberAction2_Pack[3323059]["LogId"] = 12001564
	-- 换色版冠军翅膀 - 3.00%
	tEnSeptemberAction2_Pack[3323059][1] = {}
	tEnSeptemberAction2_Pack[3323059][1]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323059][1]["ItemChance"] = 300
	tEnSeptemberAction2_Pack[3323059][1]["RewardWing"] = {}
	tEnSeptemberAction2_Pack[3323059][1]["RewardWing"]["TitleType"] = 6024 -- 【库】紫霄碧虹羽, 【表格】换色版冠军翅膀
	tEnSeptemberAction2_Pack[3323059][1]["RewardWing"]["TitleId"] = 6024
	tEnSeptemberAction2_Pack[3323059][1]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:紫霄碧虹羽, 【需求】换色版冠军翅膀
	tEnSeptemberAction2_Pack[3323059][1]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323059][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323059][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 换色版冠军翅膀碎片 - 97.00%
	tEnSeptemberAction2_Pack[3323059][2] = {}
	tEnSeptemberAction2_Pack[3323059][2]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323059][2]["ItemChance"] = 9700
	tEnSeptemberAction2_Pack[3323059][2]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323059][2]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323059][2]["RewardItem"][1]["Id"] = 3323061 -- ChampionPlume[3323061][属性:9][叠加:0][金币:0], 【表格】换色版冠军翅膀碎片
	tEnSeptemberAction2_Pack[3323059][2]["RewardItem"][1]["Attr"] = "0 1" -- ChampionPlume*1
	tEnSeptemberAction2_Pack[3323059][2]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323059][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323059][2]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323061] = {}
	-- ===冠军翅膀碎片
	-- ===索引: tEnSeptemberAction2_Pack[3323061]
	-- ===删除:3323061,1
	-- ===
	tEnSeptemberAction2_Pack[3323061]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323061]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323061]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323061]["DeleteItem"][1]["Id"] = 3323061 -- 【库】ChampionPlume[属性:9]
	tEnSeptemberAction2_Pack[3323061]["DeleteItem"][1]["ItemNum"] = 20
	tEnSeptemberAction2_Pack[3323061]["RewardWing"] = {}
	tEnSeptemberAction2_Pack[3323061]["RewardWing"]["TitleType"] = 6024 -- 【库】紫霄碧虹羽, 【表格】换色版冠军翅膀
	tEnSeptemberAction2_Pack[3323061]["RewardWing"]["TitleId"] = 6024
	tEnSeptemberAction2_Pack[3323061]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:紫霄碧虹羽, 【需求】换色版冠军翅膀
	tEnSeptemberAction2_Pack[3323061]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323061]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323061]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323062] = {}
	-- ===组队PK冠军大礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323062]
	-- ===删除:3323062,1
	-- ===
	tEnSeptemberAction2_Pack[3323062]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323062]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323062]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323062]["DeleteItem"][1]["Id"] = 3323062 -- 【库】TeamPK1stPrizePack[属性:9]
	tEnSeptemberAction2_Pack[3323062]["RewardTitle"] = {}
	tEnSeptemberAction2_Pack[3323062]["RewardTitle"]["TitleType"] = 2000 -- 【库】至尊荣耀, 【表格】冠军称号（永久有效）
	tEnSeptemberAction2_Pack[3323062]["RewardTitle"]["TitleId"] = 2000
	-- tEnSeptemberAction2_Pack[3323062]["RewardTitle"]["SaveTime"] = 0 -- 永久时效的[称号]:至尊荣耀, 【需求】冠军称号（永久有效）
	tEnSeptemberAction2_Pack[3323062]["RewardWing"] = {}
	tEnSeptemberAction2_Pack[3323062]["RewardWing"]["TitleType"] = 6000 -- 【库】炫金流光羽, 【表格】冠军翅膀（永久有效）
	tEnSeptemberAction2_Pack[3323062]["RewardWing"]["TitleId"] = 6000
	-- tEnSeptemberAction2_Pack[3323062]["RewardWing"]["SaveTime"] = 0 -- 永久时效的[翅膀]:炫金流光羽, 【需求】冠军翅膀（永久有效）
	tEnSeptemberAction2_Pack[3323062]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323062]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323062]["RewardItem"][1]["Id"] = 2169025 -- 英雄荣光[2169025][属性:9][叠加:0][金币:1], 【表格】专属配饰（赠）
	tEnSeptemberAction2_Pack[3323062]["RewardItem"][1]["Attr"] = "0 1 0 259200 1 0 0 1" -- 180天时效(激活)的英雄荣光*1
	tEnSeptemberAction2_Pack[3323062]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323062]["RewardItem"][2]["Id"] = 3323066 -- LegendaryPKTournamentPack[3323066][属性:9][叠加:0][金币:0], 【表格】PK赛至尊包（赠）
	tEnSeptemberAction2_Pack[3323062]["RewardItem"][2]["Attr"] = "0 1" -- LegendaryPKTournamentPack*1
	tEnSeptemberAction2_Pack[3323062]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323062]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323062]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323063] = {}
	-- ===组队PK亚军礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323063]
	-- ===删除:3323063,1
	-- ===
	tEnSeptemberAction2_Pack[3323063]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323063]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323063]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323063]["DeleteItem"][1]["Id"] = 3323063 -- 【库】TeamPK2ndPrizePack[属性:9]
	tEnSeptemberAction2_Pack[3323063]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323063]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323063]["RewardItem"][1]["Id"] = 2169025 -- 英雄荣光[2169025][属性:9][叠加:0][金币:1], 【表格】专属配饰（赠）
	tEnSeptemberAction2_Pack[3323063]["RewardItem"][1]["Attr"] = "0 1 0 172800 1 0 0 1" -- 120天时效(激活)的英雄荣光*1
	tEnSeptemberAction2_Pack[3323063]["RewardWing"] = {}
	tEnSeptemberAction2_Pack[3323063]["RewardWing"]["TitleType"] = 6000 -- 【库】炫金流光羽, 【表格】冠军翅膀（120天）
	tEnSeptemberAction2_Pack[3323063]["RewardWing"]["TitleId"] = 6000
	tEnSeptemberAction2_Pack[3323063]["RewardWing"]["SaveTime"] = 172800 -- 120天时效的[翅膀]:炫金流光羽, 【需求】冠军翅膀（120天）
	tEnSeptemberAction2_Pack[3323063]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323063]["RewardItem"][2]["Id"] = 3323067 -- SuperPKTournamentPack[3323067][属性:9][叠加:0][金币:0], 【表格】PK赛尊享包（赠）
	tEnSeptemberAction2_Pack[3323063]["RewardItem"][2]["Attr"] = "0 1" -- SuperPKTournamentPack*1
	tEnSeptemberAction2_Pack[3323063]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323063]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323063]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323064] = {}
	-- ===组队PK季军礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323064]
	-- ===删除:3323064,1
	-- ===
	tEnSeptemberAction2_Pack[3323064]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323064]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323064]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323064]["DeleteItem"][1]["Id"] = 3323064 -- 【库】TeamPK3rdPrizePack[属性:9]
	tEnSeptemberAction2_Pack[3323064]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323064]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323064]["RewardItem"][1]["Id"] = 2169025 -- 英雄荣光[2169025][属性:9][叠加:0][金币:1], 【表格】专属配饰（赠）
	tEnSeptemberAction2_Pack[3323064]["RewardItem"][1]["Attr"] = "0 1 0 129600 1 0 0 1" -- 90天时效(激活)的英雄荣光*1
	tEnSeptemberAction2_Pack[3323064]["RewardWing"] = {}
	tEnSeptemberAction2_Pack[3323064]["RewardWing"]["TitleType"] = 6000 -- 【库】炫金流光羽, 【表格】 冠军翅膀
	tEnSeptemberAction2_Pack[3323064]["RewardWing"]["TitleId"] = 6000
	tEnSeptemberAction2_Pack[3323064]["RewardWing"]["SaveTime"] = 129600 -- 90天时效的[翅膀]:炫金流光羽, 【需求】 冠军翅膀
	tEnSeptemberAction2_Pack[3323064]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323064]["RewardItem"][2]["Id"] = 3323068 -- LuxuryPKTournamentPack[3323068][属性:9][叠加:0][金币:0], 【表格】PK赛豪华包（赠）
	tEnSeptemberAction2_Pack[3323064]["RewardItem"][2]["Attr"] = "0 1" -- LuxuryPKTournamentPack*1
	tEnSeptemberAction2_Pack[3323064]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323064]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323064]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323065] = {}
	-- ===组队PK殿军礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323065]
	-- ===删除:3323065,1
	-- ===
	tEnSeptemberAction2_Pack[3323065]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323065]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323065]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323065]["DeleteItem"][1]["Id"] = 3323065 -- 【库】TeamPK4thPrizePack[属性:9]
	tEnSeptemberAction2_Pack[3323065]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323065]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323065]["RewardItem"][1]["Id"] = 2169025 -- 英雄荣光[2169025][属性:9][叠加:0][金币:1], 【表格】专属配饰（赠）
	tEnSeptemberAction2_Pack[3323065]["RewardItem"][1]["Attr"] = "0 1 0 86400 1 0 0 1" -- 60天时效(激活)的英雄荣光*1
	tEnSeptemberAction2_Pack[3323065]["RewardWing"] = {}
	tEnSeptemberAction2_Pack[3323065]["RewardWing"]["TitleType"] = 6000 -- 【库】炫金流光羽, 【表格】 冠军翅膀
	tEnSeptemberAction2_Pack[3323065]["RewardWing"]["TitleId"] = 6000
	tEnSeptemberAction2_Pack[3323065]["RewardWing"]["SaveTime"] = 86400 -- 60天时效的[翅膀]:炫金流光羽, 【需求】 冠军翅膀
	tEnSeptemberAction2_Pack[3323065]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323065]["RewardItem"][2]["Id"] = 3323069 -- FancyPKTournamentPack[3323069][属性:9][叠加:0][金币:0], 【表格】PK赛精装包（赠）
	tEnSeptemberAction2_Pack[3323065]["RewardItem"][2]["Attr"] = "0 1" -- FancyPKTournamentPack*1
	tEnSeptemberAction2_Pack[3323065]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323065]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323065]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323066] = {}
	-- ===PK赛至尊包
	-- ===索引: tEnSeptemberAction2_Pack[3323066]
	-- ===删除:3323066,1
	-- ===
	tEnSeptemberAction2_Pack[3323066]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323066]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323066]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323066]["DeleteItem"][1]["Id"] = 3323066 -- 【库】LegendaryPKTournamentPack[属性:9]
	tEnSeptemberAction2_Pack[3323066]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323066]["RewardStrengthValue"]["Value"] = 30000 -- 气力值, 【需求】30000点气力值
	tEnSeptemberAction2_Pack[3323066]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*500（赠）
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][1]["Attr"] = "0 500 3" -- UniversalRuneEssence（赠）*500
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][2]["Id"] = 3323072 -- RandomRareYellowRunePack(B)[3323072][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包*2（赠）
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][2]["Attr"] = "0 2" -- RandomRareYellowRunePack(B)*2
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][3]["Id"] = 730008 -- +8Stone[730008][属性:0][叠加:0][金币:0], 【表格】赠赤练石+8*1（赠）
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][3]["Attr"] = "0 1 3" -- +8Stone（赠）*1
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][4] = {}
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][4]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提*5
	tEnSeptemberAction2_Pack[3323066]["RewardItem"][4]["Attr"] = "0 5" -- RedBodhiBean*5
	tEnSeptemberAction2_Pack[3323066]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323066]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323066]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323067] = {}
	-- ===PK赛尊享包
	-- ===索引: tEnSeptemberAction2_Pack[3323067]
	-- ===删除:3323067,1
	-- ===
	tEnSeptemberAction2_Pack[3323067]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323067]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323067]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323067]["DeleteItem"][1]["Id"] = 3323067 -- 【库】SuperPKTournamentPack[属性:9]
	tEnSeptemberAction2_Pack[3323067]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323067]["RewardStrengthValue"]["Value"] = 20000 -- 气力值, 【需求】20000点气力值
	tEnSeptemberAction2_Pack[3323067]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*300（赠）
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][1]["Attr"] = "0 300 3" -- UniversalRuneEssence（赠）*300
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][2]["Id"] = 3323072 -- RandomRareYellowRunePack(B)[3323072][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包*1（赠）
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][2]["Attr"] = "0 1" -- RandomRareYellowRunePack(B)*1
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][3]["Id"] = 730007 -- +7Stone[730007][属性:0][叠加:0][金币:0], 【表格】赠赤练石+7*2（赠）
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][3]["Attr"] = "0 2 3" -- +7Stone（赠）*2
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][4] = {}
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][4]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提*3
	tEnSeptemberAction2_Pack[3323067]["RewardItem"][4]["Attr"] = "0 3" -- RedBodhiBean*3
	tEnSeptemberAction2_Pack[3323067]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323067]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323067]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323068] = {}
	-- ===PK赛豪华包
	-- ===索引: tEnSeptemberAction2_Pack[3323068]
	-- ===删除:3323068,1
	-- ===
	tEnSeptemberAction2_Pack[3323068]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323068]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323068]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323068]["DeleteItem"][1]["Id"] = 3323068 -- 【库】LuxuryPKTournamentPack[属性:9]
	tEnSeptemberAction2_Pack[3323068]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323068]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tEnSeptemberAction2_Pack[3323068]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*200（赠）
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][1]["Attr"] = "0 200 3" -- UniversalRuneEssence（赠）*200
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][2]["Id"] = 3323072 -- RandomRareYellowRunePack(B)[3323072][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包*1（赠）
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][2]["Attr"] = "0 1" -- RandomRareYellowRunePack(B)*1
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][3]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】赠赤练石+6*1（赠）
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][3]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][4] = {}
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][4]["Id"] = 3009104 -- RedBodhiBean[3009104][属性:9][叠加:99][金币:0], 【表格】血菩提*2
	tEnSeptemberAction2_Pack[3323068]["RewardItem"][4]["Attr"] = "0 2" -- RedBodhiBean*2
	tEnSeptemberAction2_Pack[3323068]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323068]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323068]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323069] = {}
	-- ===PK赛精装包
	-- ===索引: tEnSeptemberAction2_Pack[3323069]
	-- ===删除:3323069,1
	-- ===
	tEnSeptemberAction2_Pack[3323069]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323069]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323069]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323069]["DeleteItem"][1]["Id"] = 3323069 -- 【库】FancyPKTournamentPack[属性:9]
	tEnSeptemberAction2_Pack[3323069]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323069]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000点气力值
	tEnSeptemberAction2_Pack[3323069]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100（赠）
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][2]["Id"] = 730005 -- +5Stone[730005][属性:0][叠加:0][金币:0], 【表格】赠赤练石+5*2（赠）
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][2]["Attr"] = "0 2 3" -- +5Stone（赠）*2
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][3]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果*5
	tEnSeptemberAction2_Pack[3323069]["RewardItem"][3]["Attr"] = "0 5" -- MoonFruit*5
	tEnSeptemberAction2_Pack[3323069]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323069]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323069]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323070] = {}
	-- ===组队PK精英礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323070]
	-- ===删除:3323070,1
	-- ===
	tEnSeptemberAction2_Pack[3323070]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323070]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323070]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323070]["DeleteItem"][1]["Id"] = 3323070 -- 【库】TeamPKElitePack[属性:9]
	tEnSeptemberAction2_Pack[3323070]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323070]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tEnSeptemberAction2_Pack[3323070]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323070]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323070]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*50（赠）
	tEnSeptemberAction2_Pack[3323070]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tEnSeptemberAction2_Pack[3323070]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323070]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*2
	tEnSeptemberAction2_Pack[3323070]["RewardItem"][2]["Attr"] = "0 2" -- GinsengFruit*2
	tEnSeptemberAction2_Pack[3323070]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323070]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323070]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323071] = {}
	-- ===组队PK参与礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323071]
	-- ===删除:3323071,1
	-- ===
	tEnSeptemberAction2_Pack[3323071]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323071]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323071]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323071]["DeleteItem"][1]["Id"] = 3323071 -- 【库】TeamPKParticipationPack[属性:9]
	tEnSeptemberAction2_Pack[3323071]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323071]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323071]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*2
	tEnSeptemberAction2_Pack[3323071]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tEnSeptemberAction2_Pack[3323071]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323071]["RewardStrengthValue"]["Value"] = 200 -- 气力值, 【需求】气力值200点
	tEnSeptemberAction2_Pack[3323071]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323071]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323071]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323072] = {}
	-- ===稀有黄色神纹随机包
	-- ===索引: tEnSeptemberAction2_Pack[3323072]
	-- ===删除:3323072,1
	tEnSeptemberAction2_Pack[3323072]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tEnSeptemberAction2_Pack[3323072]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323072]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072]["DeleteItem"][1]["Id"] = 3323072 -- 【库】RandomRareYellowRunePack(B)[属性:9]
	tEnSeptemberAction2_Pack[3323072]["LogId"] = 12001564
	-- 神罗天尊（赠） - 5.32%
	tEnSeptemberAction2_Pack[3323072][1] = {}
	tEnSeptemberAction2_Pack[3323072][1]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][1]["ItemChance"] = 532
	tEnSeptemberAction2_Pack[3323072][1]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][1]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][1]["RewardItem"][1]["Id"] = 4032001 -- Sanctity(+1)[4032001][属性:8][叠加:0][金币:0], 【表格】神罗天尊（赠）
	tEnSeptemberAction2_Pack[3323072][1]["RewardItem"][1]["Attr"] = "0 1 3" -- Sanctity(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][1]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 爆炎诀（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][2] = {}
	tEnSeptemberAction2_Pack[3323072][2]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][2]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][2]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][2]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][2]["RewardItem"][1]["Id"] = 4032101 -- FireBlast(+1)[4032101][属性:8][叠加:0][金币:0], 【表格】爆炎诀（赠）
	tEnSeptemberAction2_Pack[3323072][2]["RewardItem"][1]["Attr"] = "0 1 3" -- FireBlast(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][2]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 清心决（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][3] = {}
	tEnSeptemberAction2_Pack[3323072][3]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][3]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][3]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][3]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][3]["RewardItem"][1]["Id"] = 4032201 -- Serenity(+1)[4032201][属性:8][叠加:0][金币:0], 【表格】清心决（赠）
	tEnSeptemberAction2_Pack[3323072][3]["RewardItem"][1]["Attr"] = "0 1 3" -- Serenity(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][3]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 天衣无缝（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][4] = {}
	tEnSeptemberAction2_Pack[3323072][4]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][4]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][4]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][4]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][4]["RewardItem"][1]["Id"] = 4032301 -- Wonder(+1)[4032301][属性:8][叠加:0][金币:0], 【表格】天衣无缝（赠）
	tEnSeptemberAction2_Pack[3323072][4]["RewardItem"][1]["Attr"] = "0 1 3" -- Wonder(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][4]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 祭灵诀（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][5] = {}
	tEnSeptemberAction2_Pack[3323072][5]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][5]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][5]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][5]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][5]["RewardItem"][1]["Id"] = 4032401 -- SoulChant(+1)[4032401][属性:8][叠加:0][金币:0], 【表格】祭灵诀（赠）
	tEnSeptemberAction2_Pack[3323072][5]["RewardItem"][1]["Attr"] = "0 1 3" -- SoulChant(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][5]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 横扫千军（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][6] = {}
	tEnSeptemberAction2_Pack[3323072][6]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][6]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][6]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][6]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][6]["RewardItem"][1]["Id"] = 4032501 -- WideSwipe(+1)[4032501][属性:8][叠加:0][金币:0], 【表格】横扫千军（赠）
	tEnSeptemberAction2_Pack[3323072][6]["RewardItem"][1]["Attr"] = "0 1 3" -- WideSwipe(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][6]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][6]["RewardEffect"]["Effect"] = "angelwing"
	-- 涅槃重生（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][7] = {}
	tEnSeptemberAction2_Pack[3323072][7]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][7]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][7]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][7]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][7]["RewardItem"][1]["Id"] = 4032601 -- Nirvana(+1)[4032601][属性:8][叠加:0][金币:0], 【表格】涅槃重生（赠）
	tEnSeptemberAction2_Pack[3323072][7]["RewardItem"][1]["Attr"] = "0 1 3" -- Nirvana(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][7]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][7]["RewardEffect"]["Effect"] = "angelwing"
	-- 锋芒毕露（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][8] = {}
	tEnSeptemberAction2_Pack[3323072][8]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][8]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][8]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][8]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][8]["RewardItem"][1]["Id"] = 4032701 -- Sharpness(+1)[4032701][属性:8][叠加:0][金币:0], 【表格】锋芒毕露（赠）
	tEnSeptemberAction2_Pack[3323072][8]["RewardItem"][1]["Attr"] = "0 1 3" -- Sharpness(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][8]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][8]["RewardEffect"]["Effect"] = "angelwing"
	-- 魂兮归来（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][9] = {}
	tEnSeptemberAction2_Pack[3323072][9]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][9]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][9]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][9]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][9]["RewardItem"][1]["Id"] = 4032801 -- Evocation(+1)[4032801][属性:8][叠加:0][金币:0], 【表格】魂兮归来（赠）
	tEnSeptemberAction2_Pack[3323072][9]["RewardItem"][1]["Attr"] = "0 1 3" -- Evocation(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][9]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][9]["RewardEffect"]["Effect"] = "angelwing"
	-- 玄武护体（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][10] = {}
	tEnSeptemberAction2_Pack[3323072][10]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][10]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][10]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][10]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][10]["RewardItem"][1]["Id"] = 4031601 -- Barrier(+1)[4031601][属性:8][叠加:0][金币:0], 【表格】玄武护体（赠）
	tEnSeptemberAction2_Pack[3323072][10]["RewardItem"][1]["Attr"] = "0 1 3" -- Barrier(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][10]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][10]["RewardEffect"]["Effect"] = "angelwing"
	-- 攻城掠地（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][11] = {}
	tEnSeptemberAction2_Pack[3323072][11]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][11]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][11]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][11]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][11]["RewardItem"][1]["Id"] = 4031501 -- Breakdown(+1)[4031501][属性:8][叠加:0][金币:0], 【表格】攻城掠地（赠）
	tEnSeptemberAction2_Pack[3323072][11]["RewardItem"][1]["Attr"] = "0 1 3" -- Breakdown(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][11]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][11]["RewardEffect"]["Effect"] = "angelwing"
	-- 策马扬鞭（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][12] = {}
	tEnSeptemberAction2_Pack[3323072][12]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][12]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][12]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][12]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][12]["RewardItem"][1]["Id"] = 4031401 -- QuickMount(+1)[4031401][属性:8][叠加:0][金币:0], 【表格】策马扬鞭（赠）
	tEnSeptemberAction2_Pack[3323072][12]["RewardItem"][1]["Attr"] = "0 1 3" -- QuickMount(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][12]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][12]["RewardEffect"]["Effect"] = "angelwing"
	-- 乾坤护法（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][13] = {}
	tEnSeptemberAction2_Pack[3323072][13]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][13]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][13]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][13]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][13]["RewardItem"][1]["Id"] = 4034001 -- DivineShield(+1)[4034001][属性:8][叠加:0][金币:0], 【表格】乾坤护法（赠）
	tEnSeptemberAction2_Pack[3323072][13]["RewardItem"][1]["Attr"] = "0 1 3" -- DivineShield(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][13]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][13]["RewardEffect"]["Effect"] = "angelwing"
	-- 斗转星移（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][14] = {}
	tEnSeptemberAction2_Pack[3323072][14]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][14]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][14]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][14]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][14]["RewardItem"][1]["Id"] = 4033901 -- ReverseMagic(+1)[4033901][属性:8][叠加:0][金币:0], 【表格】斗转星移（赠）
	tEnSeptemberAction2_Pack[3323072][14]["RewardItem"][1]["Attr"] = "0 1 3" -- ReverseMagic(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][14]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][14]["RewardEffect"]["Effect"] = "angelwing"
	-- 会心一击（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][15] = {}
	tEnSeptemberAction2_Pack[3323072][15]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][15]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][15]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][15]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][15]["RewardItem"][1]["Id"] = 4033401 -- TacitStrike(+1)[4033401][属性:8][叠加:0][金币:0], 【表格】会心一击（赠）
	tEnSeptemberAction2_Pack[3323072][15]["RewardItem"][1]["Attr"] = "0 1 3" -- TacitStrike(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][15]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][15]["RewardEffect"]["Effect"] = "angelwing"
	-- 威慑（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][16] = {}
	tEnSeptemberAction2_Pack[3323072][16]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][16]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][16]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][16]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][16]["RewardItem"][1]["Id"] = 4034101 -- Deterrence(+1)[4034101][属性:8][叠加:0][金币:0], 【表格】威慑（赠）
	tEnSeptemberAction2_Pack[3323072][16]["RewardItem"][1]["Attr"] = "0 1 3" -- Deterrence(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][16]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][16]["RewardEffect"]["Effect"] = "angelwing"
	-- 致命准星（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][17] = {}
	tEnSeptemberAction2_Pack[3323072][17]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][17]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][17]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][17]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][17]["RewardItem"][1]["Id"] = 4033301 -- DeadlySight(+1)[4033301][属性:8][叠加:0][金币:0], 【表格】致命准星（赠）
	tEnSeptemberAction2_Pack[3323072][17]["RewardItem"][1]["Attr"] = "0 1 3" -- DeadlySight(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][17]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][17]["RewardEffect"]["Effect"] = "angelwing"
	-- 审判（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][18] = {}
	tEnSeptemberAction2_Pack[3323072][18]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][18]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][18]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][18]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][18]["RewardItem"][1]["Id"] = 4033001 -- Judgment(+1)[4033001][属性:8][叠加:0][金币:0], 【表格】审判（赠）
	tEnSeptemberAction2_Pack[3323072][18]["RewardItem"][1]["Attr"] = "0 1 3" -- Judgment(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][18]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][18]["RewardEffect"]["Effect"] = "angelwing"
	-- 例无虚发（赠） - 5.26%
	tEnSeptemberAction2_Pack[3323072][19] = {}
	tEnSeptemberAction2_Pack[3323072][19]["RandomItemChanceType"] = 2
	tEnSeptemberAction2_Pack[3323072][19]["ItemChance"] = 526
	tEnSeptemberAction2_Pack[3323072][19]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323072][19]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323072][19]["RewardItem"][1]["Id"] = 4032901 -- Overwhelm(+1)[4032901][属性:8][叠加:0][金币:0], 【表格】例无虚发（赠）
	tEnSeptemberAction2_Pack[3323072][19]["RewardItem"][1]["Attr"] = "0 1 3" -- Overwhelm(+1)（赠）*1
	tEnSeptemberAction2_Pack[3323072][19]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323072][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323072][19]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323073] = {}
	-- ===抱团闯荡礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323073]
	-- ===删除:3323073,1
	-- ===
	tEnSeptemberAction2_Pack[3323073]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323073]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323073]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323073]["DeleteItem"][1]["Id"] = 3323073 -- 【库】TeamHonorPack[属性:9]
	tEnSeptemberAction2_Pack[3323073]["RewardEMoneyMono"] = {}
	tEnSeptemberAction2_Pack[3323073]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200天石（赠）
	tEnSeptemberAction2_Pack[3323073]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0728"
	tEnSeptemberAction2_Pack[3323073]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323073]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323073]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323074] = {}
	-- ===名震天下礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323074]
	-- ===删除:3323074,1
	-- ===
	tEnSeptemberAction2_Pack[3323074]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323074]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323074]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323074]["DeleteItem"][1]["Id"] = 3323074 -- 【库】WorldFamePack[属性:9]
	tEnSeptemberAction2_Pack[3323074]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][1]["Id"] = 200595 -- CelestialFox[200595][属性:0][叠加:0][金币:0], 【表格】赠品神佑1无属性坐骑CelestialFox*1（赠）
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialFox（赠）*1
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][2] = {}
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*8
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][3] = {}
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][3]["Id"] = 3306919 -- RandomYellowRunePack[3306919][属性:9][叠加:0][金币:0], 【表格】赠随机黄色神纹包*1（非稀有神纹）（赠）
	tEnSeptemberAction2_Pack[3323074]["RewardItem"][3]["Attr"] = "0 1" -- RandomYellowRunePack*1
	tEnSeptemberAction2_Pack[3323074]["RewardEMoneyMono"] = {}
	tEnSeptemberAction2_Pack[3323074]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000天石（赠）
	tEnSeptemberAction2_Pack[3323074]["RewardEMoneyMono"]["NewEmoneyLog"] = "10000	0728"
	tEnSeptemberAction2_Pack[3323074]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323074]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323074]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][1]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][1] = {}
	tEnSeptemberAction2_Pack[3323075][1]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][1]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][1]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][1]["RewardItem"][1]["Id"] = 1200000 -- PrayingStone(S)[1200000][属性:0][叠加:10][金币:0], 【表格】小祈愿石（赠）
	tEnSeptemberAction2_Pack[3323075][1]["RewardItem"][1]["Attr"] = "0 1 3" -- PrayingStone(S)（赠）*1
	tEnSeptemberAction2_Pack[3323075][1]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][1]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][2] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][2]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][2]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][2]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][2]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][2]["RewardItem"][1]["Id"] = 3006277 -- MeteorScroll[3006277][属性:11][叠加:1][金币:1], 【表格】赠流星卷（赠）
	tEnSeptemberAction2_Pack[3323075][2]["RewardItem"][1]["Attr"] = "0 1" -- MeteorScroll*1
	tEnSeptemberAction2_Pack[3323075][2]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][2]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][3] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][3]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][3]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][3]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][3]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][3]["RewardItem"][1]["Id"] = 723017 -- ExpPotion[723017][属性:0][叠加:10000][金币:0], 【表格】昆仑雪水（赠）
	tEnSeptemberAction2_Pack[3323075][3]["RewardItem"][1]["Attr"] = "0 5 3" -- ExpPotion（赠）*5
	tEnSeptemberAction2_Pack[3323075][3]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][3]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][4] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][4]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][4]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][4]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][4]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][4]["RewardItem"][1]["Id"] = 700012 -- DragonGem[700012][属性:0][叠加:0][金币:0], 【表格】良品龙恨宝石（赠）
	tEnSeptemberAction2_Pack[3323075][4]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonGem（赠）*2
	tEnSeptemberAction2_Pack[3323075][4]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][4]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][5] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][5]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][5]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][5]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][5]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][5]["RewardItem"][1]["Id"] = 3006277 -- MeteorScroll[3006277][属性:11][叠加:1][金币:1], 【表格】赠流星卷（赠）
	tEnSeptemberAction2_Pack[3323075][5]["RewardItem"][1]["Attr"] = "0 1" -- MeteorScroll*1
	tEnSeptemberAction2_Pack[3323075][5]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][5]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][6] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][6]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][6]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][6]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][6]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][6]["RewardItem"][1]["Id"] = 730003 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】3赤练石（赠）
	tEnSeptemberAction2_Pack[3323075][6]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*2
	tEnSeptemberAction2_Pack[3323075][6]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][6]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][7] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][7]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][7]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][7]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][7]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][7]["RewardItem"][1]["Id"] = 3001407 -- EndeavorScroll[3001407][属性:0][叠加:0][金币:0], 【表格】天道酬勤券（赠）
	tEnSeptemberAction2_Pack[3323075][7]["RewardItem"][1]["Attr"] = "0 2 3" -- EndeavorScroll（赠）*2
	tEnSeptemberAction2_Pack[3323075][7]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][7]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][8] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][8]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][8]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][8]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][8]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][8]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】3赤练石（赠）
	tEnSeptemberAction2_Pack[3323075][8]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*2
	tEnSeptemberAction2_Pack[3323075][8]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][8]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][9] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][9]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][9]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][9]["RewardCultivation"] = {}
	tEnSeptemberAction2_Pack[3323075][9]["RewardCultivation"]["Value"] = 500 -- 修行值, 【需求】500点修行值（赠）
	tEnSeptemberAction2_Pack[3323075][9]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][9]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][10] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][10]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][10]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][10]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][10]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][10]["RewardItem"][1]["Id"] = 3006277 -- MeteorScroll[3006277][属性:11][叠加:1][金币:1], 【表格】流星卷（赠）
	tEnSeptemberAction2_Pack[3323075][10]["RewardItem"][1]["Attr"] = "0 3" -- MeteorScroll*3
	tEnSeptemberAction2_Pack[3323075][10]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][10]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][11] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][11]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][11]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][11]["RewardCultivation"] = {}
	tEnSeptemberAction2_Pack[3323075][11]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】1000点修行值（赠）
	tEnSeptemberAction2_Pack[3323075][11]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][11]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][12] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][12]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][12]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][12]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][12]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][12]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠（赠）
	tEnSeptemberAction2_Pack[3323075][12]["RewardItem"][1]["Attr"] = "0 3 3" -- DragonBall（赠）*3
	tEnSeptemberAction2_Pack[3323075][12]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][12]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][13] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][13]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][13]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][13]["RewardStrengthValue"] = {}
	tEnSeptemberAction2_Pack[3323075][13]["RewardStrengthValue"]["Value"] = 2000 -- 气力值, 【需求】气力值2000（赠）
	tEnSeptemberAction2_Pack[3323075][13]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][13]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][14] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][14]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][14]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][14]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][14]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][14]["RewardItem"][1]["Id"] = 3006863 -- DBScroll[3006863][属性:0][叠加:0][金币:0], 【表格】龙珠卷（赠）
	tEnSeptemberAction2_Pack[3323075][14]["RewardItem"][1]["Attr"] = "0 1 3" -- DBScroll（赠）*1
	tEnSeptemberAction2_Pack[3323075][14]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][14]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][15] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][15]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][15]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][15]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][15]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][15]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tEnSeptemberAction2_Pack[3323075][15]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tEnSeptemberAction2_Pack[3323075][15]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][15]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][16] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][16]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][16]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][16]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][16]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][16]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹（赠）
	tEnSeptemberAction2_Pack[3323075][16]["RewardItem"][1]["Attr"] = "0 1 3" -- PowerEraser（赠）*1
	tEnSeptemberAction2_Pack[3323075][16]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][16]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][16]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][17] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][17]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][17]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][17]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][17]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][17]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tEnSeptemberAction2_Pack[3323075][17]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tEnSeptemberAction2_Pack[3323075][17]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][17]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][17]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][18] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][18]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][18]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][18]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][18]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][18]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】天机果（赠）
	tEnSeptemberAction2_Pack[3323075][18]["RewardItem"][1]["Attr"] = "0 3" -- MysteryFruit*3
	tEnSeptemberAction2_Pack[3323075][18]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][18]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][18]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][19] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][19]
	-- ===
	-- ===
	tEnSeptemberAction2_Pack[3323075][19]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][19]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][19]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][19]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）
	tEnSeptemberAction2_Pack[3323075][19]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tEnSeptemberAction2_Pack[3323075][19]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][19]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][19]["RewardEffect"]["Effect"] = "angelwing"


	tEnSeptemberAction2_Pack[3323075][20] = {}
	-- ===新服成长礼包
	-- ===索引: tEnSeptemberAction2_Pack[3323075][20]
	-- ===删除:3323075,1
	-- ===
	tEnSeptemberAction2_Pack[3323075][20]["LogId"] = 12001564
	tEnSeptemberAction2_Pack[3323075][20]["DeleteItem"] = {}
	tEnSeptemberAction2_Pack[3323075][20]["DeleteItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][20]["DeleteItem"][1]["Id"] = 3323075 -- 【库】NewServerGrowthPack[属性:9]
	tEnSeptemberAction2_Pack[3323075][20]["RewardItem"] = {}
	tEnSeptemberAction2_Pack[3323075][20]["RewardItem"][1] = {}
	tEnSeptemberAction2_Pack[3323075][20]["RewardItem"][1]["Id"] = 200553 -- CuteMonkey[200553][属性:0][叠加:0][金币:0], 【表格】赠永久神佑1无属性CuteMonkey（赠）
	tEnSeptemberAction2_Pack[3323075][20]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CuteMonkey（赠）*1
	tEnSeptemberAction2_Pack[3323075][20]["RewardEffect"] = {}
	tEnSeptemberAction2_Pack[3323075][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tEnSeptemberAction2_Pack[3323075][20]["RewardEffect"]["Effect"] = "angelwing"







---------------------------------------逻辑部分----------------------------------
--赠点礼包逻辑
function EnSeptemberAction2_RewardMono(nItemId)
	local nRewardEMoneyM = tEnSeptemberAction2_Pack[nItemId]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nRewardEMoneyM > G_User_MaxEmoneyMono then  --赠点上限
		User_TalkChannel2005(tEnSeptemberAction2_Text["Sys_MsgBox"]["NoMonomoney"])
		return
	end 
	RewardTemplate_UseItemAndMsg(tEnSeptemberAction2_Pack[nItemId])
end 

-- 翅膀碎片逻辑
function EnSeptemberAction2_WingFragments(nItemId)
	local nCount = tEnSeptemberAction2_Data["Count"][nItemId]
	if not Item_ChkMulItem(nItemId,nItemId,nCount) then 
		Sys_MsgBox(tEnSeptemberAction2_Text["Sys_MsgBox"]["NoItem"])
		return
	end 
	RewardTemplate_UseItemAndMsg(tEnSeptemberAction2_Pack[nItemId])
end 
-- 外套碎片逻辑
function EnSeptemberAction2_CoatFragments(nItemId,nNum)
	User_TalkChannel2005("nNum = " ..nNum)
	local nCount = tEnSeptemberAction2_Data["Count"][nItemId][nNum]
	if not Item_ChkMulItem(nItemId,nItemId,nCount) then 
		Sys_MsgBox(tEnSeptemberAction2_Text["Sys_MsgBox"]["NoItem"])
		return
	end
	RewardTemplate_UseItemAndMsg(tEnSeptemberAction2_Pack[nItemId][nNum])
end 


--新服成长礼包对白
function EnSeptemberAction2_NewServerPackText(nItemId)
	local nEventType1 = tEnSeptemberAction2_Stc[nItemId]["EventType"]
	local nDataType1 = tEnSeptemberAction2_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nNum = nData1 + 1
	if nData1>= 20 then 
		return
	end 
	local nLevel = tEnSeptemberAction2_Data["Level"][nItemId][nNum]
	local sItemName = tEnSeptemberAction2_Text[nItemId][nNum]
	tItem[nItemId]["Text111"] = string.format(tEnSeptemberAction2_Text[nItemId]["Text111"],nLevel,sItemName)
	tItem[nItemId]["OptionFunc111"] = "EnSeptemberAction2_NewServerPack</N>" ..nItemId
	LinkItemGossipFunc_New(nItemId,"1-1")
end 
--新服成长礼包
function EnSeptemberAction2_NewServerPack(nItemId)
	local nEventType1 = tEnSeptemberAction2_Stc[nItemId]["EventType"]
	local nDataType1 = tEnSeptemberAction2_Stc[nItemId]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nNum = nData1 + 1
	local nLevel = tEnSeptemberAction2_Data["Level"][nItemId][nNum]
	local nUserLev = Get_UserLevel()
	if nData1>= 20 then 
		return
	end 
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		return
	end 
	local nUserMetempsychosis = Get_UserMetempsychosis(nNowUserId)
	if nUserMetempsychosis <= 0 then 
		if nLevel > nUserLev then 
			Sys_MsgBox(tEnSeptemberAction2_Text["Sys_MsgBox"]["Once"])
			return
		end 
	end 
	local nSpace = RewardTemplate_GetRewardSpace(tEnSeptemberAction2_Pack[nItemId][nNum])
	if not User_CheckLeftSpace(nSpace) then  --背包空间
		Sys_MsgBox(tEnSeptemberAction2_Text["Sys_MsgBox"]["NoSpace"])
		return
	end 
	Task_AddStatistic(nEventType1,nDataType1,1,1)
	Task_SetStcTimestamp(nEventType1,nDataType1,0)
	RewardTemplate_UseItemAndMsg(tEnSeptemberAction2_Pack[nItemId][nNum])
	
end 

-- 上古神器随机包
function EnSeptemberAction2_SGSQPack(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then 
		return
	end 
	local nXuanBaoId,nItem = Xuanbao_Reward(0,0,10,0,0,4,0,0,0,0)
	local sItemName = Get_ItemtypeName(nXuanBaoId)
	
	if Item_DelMulItem(nItemId,nItemId,1) then 
		local tTextLog = string.format(tEnSeptemberAction2_Log["DeleteLog"],nItemId,1)
		Sys_SaveActionFestivalLog(tTextLog)  --删除log
	end 
	User_TalkChannel2005(string.format(tEnSeptemberAction2_Text["Sys_MsgBox"]["Reward"],sItemName))
	local sStr1 = Get_ItemData1(nItem)
	local sStr2 = Get_ItemData2(nItem)
	local sStr3 = Get_ItemData3(nItem)
	local sStr4 = Get_ItemData4(nItem)
	local sAttr = nXuanBaoId .. "{" .. sStr1 .. "&" .. sStr2 .. "&" .. sStr3 .. "&" .. sStr4 .. "}"
	--玄宝属性log
	Sys_SaveActionFestivalLog(string.format(tEnSeptemberAction2_Log["UseAftiaItem"] ,nItemId,sAttr))
end 
	
	
-------------------------------------------------Npc对白
--
tItemFace[3323057] = 2465
tItem[3323057] = tItem[3323057] or {}
tItem[3323057]["DialogueText"] = tEnSeptemberAction2_Text[3323057]
tItem[3323057]["Text1-1"] = {111}
tItem[3323057]["ChkFunc1-1"] = function ()
	return true
end
tItem[3323057]["tOption1-1"] = {111,112}
tItem[3323057]["OptionFunc111"] = "EnSeptemberAction2_CoatFragments</N>3323057</N>1"
tItem[3323057]["OptionFunc112"] = "EnSeptemberAction2_CoatFragments</N>3323057</N>2"
--新服成长礼包
tItemFace[3323075] = 384
tItem[3323075] = tItem[3323075] or {}
tItem[3323075]["DialogueText"] = tEnSeptemberAction2_Text[3323075]
tItem[3323075]["Text1-1"] = {111,112}
tItem[3323075]["tOption1-1"] = {111,112}









-------------------------------------------------------------------------物品使用
--新服成长礼包
tItem[3323075] = tItem[3323075] or {}
tItem[3323075]["Function"] = function(nItemId,sItemName)
	EnSeptemberAction2_NewServerPackText(nItemId)
end

tItem[3323049] = tItem[3323049] or {}
tItem[3323049]["Function"] = function(nItemId,sItemName)
	EnSeptemberAction2_RewardMono(nItemId)
end
tItem[3323050] = tItem[3323049] or {}
tItem[3323051] = tItem[3323049] or {}
tItem[3323073] = tItem[3323049] or {}
tItem[3323074] = tItem[3323049] or {}


tItem[3323052] = tItem[3323052] or {}
tItem[3323052]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tEnSeptemberAction2_Pack[nItemId])
end
tItem[3323053] = tItem[3323052] or {}
tItem[3323054] = tItem[3323052] or {}
tItem[3323055] = tItem[3323052] or {}
tItem[3323056] = tItem[3323052] or {}

-- tItem[3323057] = tItem[3323052] or {}


tItem[3323060] = tItem[3323052] or {}
tItem[3323062] = tItem[3323052] or {}
tItem[3323063] = tItem[3323052] or {}
tItem[3323064] = tItem[3323052] or {}
tItem[3323065] = tItem[3323052] or {}
tItem[3323066] = tItem[3323052] or {}
tItem[3323067] = tItem[3323052] or {}
tItem[3323068] = tItem[3323052] or {}
tItem[3323069] = tItem[3323052] or {}
tItem[3323070] = tItem[3323052] or {}
tItem[3323071] = tItem[3323052] or {}

-- ===冠军翅膀碎片礼包
tItem[3323059] = tItem[3323059] or {}
tItem[3323059]["Function"] = function(nItemId,sItemName)
	RewardTemplate_RandomReward(tEnSeptemberAction2_Pack,nItemId)
end
-- ===稀有黄色神纹随机包
tItem[3323072] = tItem[3323059] or {}
-- ===冠军翅膀碎片
tItem[3323061] = tItem[3323061] or {}
tItem[3323061]["Function"] = function(nItemId,sItemName)
	EnSeptemberAction2_WingFragments(nItemId)
end

tItem[3323058] = tItem[3323058] or {}
tItem[3323058]["Function"] = function(nItemId,sItemName)
	EnSeptemberAction2_SGSQPack(nItemId)
end
