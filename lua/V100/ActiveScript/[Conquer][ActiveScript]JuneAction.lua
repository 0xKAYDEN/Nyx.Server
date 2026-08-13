------------------------------------------------------------------------------------
--Name：            200518[英文征服][活动脚本]6月新服预约礼包发奖ID制作
--Creator:      耿力兀
--Created:     2020-05-18
------------------------------------------------------------------------------------
--任务需求：
--前缀：JuneAction_
--log id:12001998
--emoneylog :100001876-1879
--1876 新服喝彩礼盒赠点奖励
--1877 新服狂欢礼盒赠点奖励
--1878 人物外套礼包升级
--1879 坐骑外套礼包升级
--stc掩码：22190-22192
--22190 成长礼包领取记录
--22191 人物外套升级记录
--22192 坐骑外套升级记录
------------------------------------------------------------------------------------


----------------------------------表配置部分--------------------------------------------
local tJuneAction_Stc = {}
	tJuneAction_Stc["EventType"] = 221
	tJuneAction_Stc["Level"] = 90
	tJuneAction_Stc["Coat"] = 91
	tJuneAction_Stc["Mount"] = 92
	
local tJuneAction_Log={}
	--购买外套
	tJuneAction_Log[3316224] = "1000	1878"
	tJuneAction_Log[3316225] = "1000	1879"
	tJuneAction_Log["Package"]="0,0,%d,1,12001998,2,%d,1"				--获得奖励log
	
local tJuneAction_Level = {20,30,40,50,60,70,80,90,100,105,110,115,120,125,130,135,136,137,138,139,140}
local tJuneAction_Reward = {}
	-- ===30级极品装备（赠）礼盒
	-- ===索引:tJuneAction_Reward[3316218]
	-- ===删除:3316218,1
	tJuneAction_Reward[3316218] = {}
	tJuneAction_Reward[3316218]["LogId"] = 12001998
	tJuneAction_Reward[3316218]["DeleteItem"] = {}
	tJuneAction_Reward[3316218]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316218]["DeleteItem"][1]["Id"] = 3316218 -- 【库】 3316218 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316218]["RewardItem"] = {}
	tJuneAction_Reward[3316218]["RewardItem"][1] = {}
	tJuneAction_Reward[3316218]["RewardItem"][1]["Id"] = 3316227 --  3316227 【enzf库里没有该物品】, 【表格】极品武器自选
	tJuneAction_Reward[3316218]["RewardItem"][1]["Attr"] = "0 2" --  3316227 【enzf库里没有该物品】*2
	tJuneAction_Reward[3316218]["RewardItem"][2] = {}
	tJuneAction_Reward[3316218]["RewardItem"][2]["Id"] = 3316228 --  3316228 【enzf库里没有该物品】, 【表格】极品防具自选
	tJuneAction_Reward[3316218]["RewardItem"][2]["Attr"] = "0 2" --  3316228 【enzf库里没有该物品】*2
	tJuneAction_Reward[3316218]["RewardItem"][3] = {}
	tJuneAction_Reward[3316218]["RewardItem"][3]["Id"] = 150059 -- GoldRing[150059][属性:0][叠加:0][金币:1640], 【表格】戒指
	tJuneAction_Reward[3316218]["RewardItem"][3]["Attr"] = "0 1 3" -- GoldRing（赠）*1
	tJuneAction_Reward[3316218]["RewardItem"][4] = {}
	tJuneAction_Reward[3316218]["RewardItem"][4]["Id"] = 120049 -- ThreadNecklace[120049][属性:0][叠加:0][金币:200], 【表格】项链
	tJuneAction_Reward[3316218]["RewardItem"][4]["Attr"] = "0 1 3" -- ThreadNecklace（赠）*1
	tJuneAction_Reward[3316218]["RewardItem"][5] = {}
	tJuneAction_Reward[3316218]["RewardItem"][5]["Id"] = 160059 -- SoftBoots[160059][属性:0][叠加:0][金币:1700], 【表格】鞋
	tJuneAction_Reward[3316218]["RewardItem"][5]["Attr"] = "0 1 3" -- SoftBoots（赠）*1
	tJuneAction_Reward[3316218]["RewardEffect"] = {}
	tJuneAction_Reward[3316218]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316218]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===新服庆祝礼盒
	-- ===索引:tJuneAction_Reward[3316219]
	-- ===删除:3316219,1
	tJuneAction_Reward[3316219] = {}
	tJuneAction_Reward[3316219]["LogId"] = 12001998
	tJuneAction_Reward[3316219]["DeleteItem"] = {}
	tJuneAction_Reward[3316219]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316219]["DeleteItem"][1]["Id"] = 3316219 -- 【库】 3316219 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316219]["RewardItem"] = {}
	tJuneAction_Reward[3316219]["RewardItem"][1] = {}
	tJuneAction_Reward[3316219]["RewardItem"][1]["Id"] = 195055 -- ForeverHeart[195055][属性:8][叠加:0][金币:0], 【表格】赠品神佑1无属性外套ForeverHeart*1
	tJuneAction_Reward[3316219]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑ForeverHeart（赠）*1
	tJuneAction_Reward[3316219]["RewardItem"][2] = {}
	tJuneAction_Reward[3316219]["RewardItem"][2]["Id"] = 721259 -- CelestialStone[721259][属性:0][叠加:10][金币:0], 【表格】赠涅槃灵石*1
	tJuneAction_Reward[3316219]["RewardItem"][2]["Attr"] = "0 1 3" -- CelestialStone（赠）*1
	tJuneAction_Reward[3316219]["RewardItem"][3] = {}
	tJuneAction_Reward[3316219]["RewardItem"][3]["Id"] = 730003 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】+3赠品赤练石*6
	tJuneAction_Reward[3316219]["RewardItem"][3]["Attr"] = "0 6 3" -- +3Stone（赠）*6
	tJuneAction_Reward[3316219]["RewardCultivation"] = {}
	tJuneAction_Reward[3316219]["RewardCultivation"]["Value"] = 5000 -- 修行值, 【需求】修行值5000
	tJuneAction_Reward[3316219]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316219]["RewardEffect"] = {}
	tJuneAction_Reward[3316219]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316219]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服喝彩礼盒
	-- ===索引:tJuneAction_Reward[3316220]
	-- ===删除:3316220,1
	-- ===NewEMoneyLog:1000,1876
	tJuneAction_Reward[3316220] = {}
	tJuneAction_Reward[3316220]["LogId"] = 12001998
	tJuneAction_Reward[3316220]["DeleteItem"] = {}
	tJuneAction_Reward[3316220]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316220]["DeleteItem"][1]["Id"] = 3316220 -- 【库】 3316220 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316220]["RewardEMoneyMono"] = {}
	tJuneAction_Reward[3316220]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500赠品天石
	tJuneAction_Reward[3316220]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1876"
	tJuneAction_Reward[3316220]["RewardItem"] = {}
	tJuneAction_Reward[3316220]["RewardItem"][1] = {}
	tJuneAction_Reward[3316220]["RewardItem"][1]["Id"] = 3300190 -- DBScroll[3300190][属性:11][叠加:0][金币:0], 【表格】赠龙珠卷*1
	tJuneAction_Reward[3316220]["RewardItem"][1]["Attr"] = "0 1" -- DBScroll*1
	tJuneAction_Reward[3316220]["RewardStrengthValue"] = {}
	tJuneAction_Reward[3316220]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气力值
	tJuneAction_Reward[3316220]["RewardItem"][2] = {}
	tJuneAction_Reward[3316220]["RewardItem"][2]["Id"] = 727003 -- WeaponAccessoryPack[727003][属性:9][叠加:0][金币:0], 【表格】赠武器外套*2
	tJuneAction_Reward[3316220]["RewardItem"][2]["Attr"] = "0 2" -- WeaponAccessoryPack*2
	tJuneAction_Reward[3316220]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316220]["RewardEffect"] = {}
	tJuneAction_Reward[3316220]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316220]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服狂欢礼盒
	-- ===索引:tJuneAction_Reward[3316221]
	-- ===删除:3316221,1
	-- ===NewEMoneyLog:1000,1877
	tJuneAction_Reward[3316221] = {}
	tJuneAction_Reward[3316221]["LogId"] = 12001998
	tJuneAction_Reward[3316221]["DeleteItem"] = {}
	tJuneAction_Reward[3316221]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316221]["DeleteItem"][1]["Id"] = 3316221 -- 【库】 3316221 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316221]["RewardItem"] = {}
	tJuneAction_Reward[3316221]["RewardItem"][1] = {}
	tJuneAction_Reward[3316221]["RewardItem"][1]["Id"] = 200595 -- CelestialFox[200595][属性:0][叠加:0][金币:0], 【表格】赠品神佑1无属性坐骑CelestialFox*1
	tJuneAction_Reward[3316221]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialFox（赠）*1
	tJuneAction_Reward[3316221]["RewardItem"][2] = {}
	tJuneAction_Reward[3316221]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*8
	tJuneAction_Reward[3316221]["RewardItem"][2]["Attr"] = "0 8 0 2880 1" -- 2天时效(激活)的BrightStarStone*8
	tJuneAction_Reward[3316221]["RewardItem"][3] = {}
	tJuneAction_Reward[3316221]["RewardItem"][3]["Id"] = 3306510 -- RandomYellowRune(B)Pack[3306510][属性:9][叠加:10000][金币:0], 【表格】赠随机黄色神纹包*1（非稀有神纹）
	tJuneAction_Reward[3316221]["RewardItem"][3]["Attr"] = "0 1" -- RandomYellowRune(B)Pack*1
	tJuneAction_Reward[3316221]["RewardEMoneyMono"] = {}
	tJuneAction_Reward[3316221]["RewardEMoneyMono"]["Value"] = 3000 -- 天石（赠）, 【需求】3000赠品天石
	tJuneAction_Reward[3316221]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1877"
	tJuneAction_Reward[3316221]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316221]["RewardEffect"] = {}
	tJuneAction_Reward[3316221]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316221]["RewardEffect"]["Effect"] = "angelwing"


	tJuneAction_Reward[3316222] = {}
	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][20]
	tJuneAction_Reward[3316222][20] = {}
	tJuneAction_Reward[3316222][20]["LogId"] = 12001998
	tJuneAction_Reward[3316222][20]["RewardItem"] = {}
	tJuneAction_Reward[3316222][20]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][20]["RewardItem"][1]["Id"] = 723700 -- ExpBall[723700][属性:0][叠加:10][金币:0], 【表格】经验球*10
	tJuneAction_Reward[3316222][20]["RewardItem"][1]["Attr"] = "0 10 3" -- ExpBall（赠）*10
	tJuneAction_Reward[3316222][20]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][20]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][20]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][20]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][30]
	tJuneAction_Reward[3316222][30] = {}
	tJuneAction_Reward[3316222][30]["LogId"] = 12001998
	tJuneAction_Reward[3316222][30]["RewardItem"] = {}
	tJuneAction_Reward[3316222][30]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][30]["RewardItem"][1]["Id"] = 3006277 -- MeteorScroll[3006277][属性:11][叠加:1][金币:1], 【表格】赠流星卷
	tJuneAction_Reward[3316222][30]["RewardItem"][1]["Attr"] = "0 1" -- MeteorScroll*1
	tJuneAction_Reward[3316222][30]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][30]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][30]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][30]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][40]
	tJuneAction_Reward[3316222][40] = {}
	tJuneAction_Reward[3316222][40]["LogId"] = 12001998
	tJuneAction_Reward[3316222][40]["RewardItem"] = {}
	tJuneAction_Reward[3316222][40]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][40]["RewardItem"][1]["Id"] = 723017 -- ExpPotion[723017][属性:0][叠加:10000][金币:0], 【表格】昆仑雪水*5
	tJuneAction_Reward[3316222][40]["RewardItem"][1]["Attr"] = "0 5 3" -- ExpPotion（赠）*5
	tJuneAction_Reward[3316222][40]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][40]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][40]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][40]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][50]
	tJuneAction_Reward[3316222][50] = {}
	tJuneAction_Reward[3316222][50]["LogId"] = 12001998
	tJuneAction_Reward[3316222][50]["RewardItem"] = {}
	tJuneAction_Reward[3316222][50]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][50]["RewardItem"][1]["Id"] = 700012 -- DragonGem[700012][属性:0][叠加:0][金币:0], 【表格】良品龙恨宝石*2
	tJuneAction_Reward[3316222][50]["RewardItem"][1]["Attr"] = "0 2 3" -- DragonGem（赠）*2
	tJuneAction_Reward[3316222][50]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][50]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][50]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][50]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][60]
	tJuneAction_Reward[3316222][60] = {}
	tJuneAction_Reward[3316222][60]["LogId"] = 12001998
	tJuneAction_Reward[3316222][60]["RewardItem"] = {}
	tJuneAction_Reward[3316222][60]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][60]["RewardItem"][1]["Id"] = 3316224 --  3316224 【enzf库里没有该物品】, 【表格】五星人物外套可选包（付费升级）
	tJuneAction_Reward[3316222][60]["RewardItem"][1]["Attr"] = "0 1" --  3316224 【enzf库里没有该物品】*1
	tJuneAction_Reward[3316222][60]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][60]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][60]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][60]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][70]
	tJuneAction_Reward[3316222][70] = {}
	tJuneAction_Reward[3316222][70]["LogId"] = 12001998
	tJuneAction_Reward[3316222][70]["RewardItem"] = {}
	tJuneAction_Reward[3316222][70]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][70]["RewardItem"][1]["Id"] = 730003 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】+3赤练石*2
	tJuneAction_Reward[3316222][70]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tJuneAction_Reward[3316222][70]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][70]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][70]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][70]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][80]
	tJuneAction_Reward[3316222][80] = {}
	tJuneAction_Reward[3316222][80]["LogId"] = 12001998
	tJuneAction_Reward[3316222][80]["RewardItem"] = {}
	tJuneAction_Reward[3316222][80]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][80]["RewardItem"][1]["Id"] = 3316226 --  3316226 【enzf库里没有该物品】, 【表格】P6武器神魂可选包
	tJuneAction_Reward[3316222][80]["RewardItem"][1]["Attr"] = "0 1" --  3316226 【enzf库里没有该物品】*1
	tJuneAction_Reward[3316222][80]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][80]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][80]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][80]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][90]
	tJuneAction_Reward[3316222][90] = {}
	tJuneAction_Reward[3316222][90]["LogId"] = 12001998
	tJuneAction_Reward[3316222][90]["RewardItem"] = {}
	tJuneAction_Reward[3316222][90]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][90]["RewardItem"][1]["Id"] = 3001407 -- EndeavorScroll[3001407][属性:0][叠加:0][金币:0], 【表格】天道酬勤券*2
	tJuneAction_Reward[3316222][90]["RewardItem"][1]["Attr"] = "0 2 3" -- EndeavorScroll（赠）*2
	tJuneAction_Reward[3316222][90]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][90]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][90]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][90]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][100]
	tJuneAction_Reward[3316222][100] = {}
	tJuneAction_Reward[3316222][100]["LogId"] = 12001998
	tJuneAction_Reward[3316222][100]["RewardCultivation"] = {}
	tJuneAction_Reward[3316222][100]["RewardCultivation"]["Value"] = 2000 -- 修行值, 【需求】2000点修行值
	tJuneAction_Reward[3316222][100]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][100]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][100]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][100]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][105]
	tJuneAction_Reward[3316222][105] = {}
	tJuneAction_Reward[3316222][105]["LogId"] = 12001998
	tJuneAction_Reward[3316222][105]["RewardItem"] = {}
	tJuneAction_Reward[3316222][105]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][105]["RewardItem"][1]["Id"] = 3006277 -- MeteorScroll[3006277][属性:11][叠加:1][金币:1], 【表格】赠流星卷*3
	tJuneAction_Reward[3316222][105]["RewardItem"][1]["Attr"] = "0 3 3" -- MeteorScroll*3
	tJuneAction_Reward[3316222][105]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][105]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][105]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][105]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][110]
	tJuneAction_Reward[3316222][110] = {}
	tJuneAction_Reward[3316222][110]["LogId"] = 12001998
	tJuneAction_Reward[3316222][110]["RewardItem"] = {}
	tJuneAction_Reward[3316222][110]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][110]["RewardItem"][1]["Id"] = 3316225 --  3316225 【enzf库里没有该物品】, 【表格】五星骑宠外套可选包（付费升级）
	tJuneAction_Reward[3316222][110]["RewardItem"][1]["Attr"] = "0 1" --  3316225 【enzf库里没有该物品】*1
	tJuneAction_Reward[3316222][110]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][110]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][110]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][110]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][115]
	tJuneAction_Reward[3316222][115] = {}
	tJuneAction_Reward[3316222][115]["LogId"] = 12001998
	tJuneAction_Reward[3316222][115]["RewardItem"] = {}
	tJuneAction_Reward[3316222][115]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][115]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠*3
	tJuneAction_Reward[3316222][115]["RewardItem"][1]["Attr"] = "0 3 3" -- DragonBall（赠）*3
	tJuneAction_Reward[3316222][115]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][115]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][115]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][115]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][120]
	tJuneAction_Reward[3316222][120] = {}
	tJuneAction_Reward[3316222][120]["LogId"] = 12001998
	tJuneAction_Reward[3316222][120]["RewardItem"] = {}
	tJuneAction_Reward[3316222][120]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][120]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】强练（50）
	tJuneAction_Reward[3316222][120]["RewardItem"][1]["Attr"] = "0 50 3" -- FavoredTrainingPill（赠）*50（[错误]物品数量超10个）
	tJuneAction_Reward[3316222][120]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][120]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][120]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][120]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][125]
	tJuneAction_Reward[3316222][125] = {}
	tJuneAction_Reward[3316222][125]["LogId"] = 12001998
	tJuneAction_Reward[3316222][125]["RewardItem"] = {}
	tJuneAction_Reward[3316222][125]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][125]["RewardItem"][1]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】大爆丹（20）
	tJuneAction_Reward[3316222][125]["RewardItem"][1]["Attr"] = "0 20 3" -- SeniorTrainingPill（赠）*20（[错误]物品数量超10个）
	tJuneAction_Reward[3316222][125]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][125]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][125]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][125]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][130]
	tJuneAction_Reward[3316222][130] = {}
	tJuneAction_Reward[3316222][130]["LogId"] = 12001998
	tJuneAction_Reward[3316222][130]["RewardStrengthValue"] = {}
	tJuneAction_Reward[3316222][130]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】气力值5000
	tJuneAction_Reward[3316222][130]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][130]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][130]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][130]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][135]
	tJuneAction_Reward[3316222][135] = {}
	tJuneAction_Reward[3316222][135]["LogId"] = 12001998
	tJuneAction_Reward[3316222][135]["RewardItem"] = {}
	tJuneAction_Reward[3316222][135]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][135]["RewardItem"][1]["Id"] = 3300190 -- DBScroll[3300190][属性:11][叠加:0][金币:0], 【表格】龙珠卷
	tJuneAction_Reward[3316222][135]["RewardItem"][1]["Attr"] = "0 1 3" -- DBScroll*1
	tJuneAction_Reward[3316222][135]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][135]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][135]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][135]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][136]
	tJuneAction_Reward[3316222][136] = {}
	tJuneAction_Reward[3316222][136]["LogId"] = 12001998
	tJuneAction_Reward[3316222][136]["RewardItem"] = {}
	tJuneAction_Reward[3316222][136]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][136]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*5
	tJuneAction_Reward[3316222][136]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tJuneAction_Reward[3316222][136]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][136]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][136]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][136]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][137]
	tJuneAction_Reward[3316222][137] = {}
	tJuneAction_Reward[3316222][137]["LogId"] = 12001998
	tJuneAction_Reward[3316222][137]["RewardItem"] = {}
	tJuneAction_Reward[3316222][137]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][137]["RewardItem"][1]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹
	tJuneAction_Reward[3316222][137]["RewardItem"][1]["Attr"] = "0 1 3" -- PowerEraser（赠）*1
	tJuneAction_Reward[3316222][137]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][137]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][137]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][137]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][138]
	tJuneAction_Reward[3316222][138] = {}
	tJuneAction_Reward[3316222][138]["LogId"] = 12001998
	tJuneAction_Reward[3316222][138]["RewardItem"] = {}
	tJuneAction_Reward[3316222][138]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][138]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹*100
	tJuneAction_Reward[3316222][138]["RewardItem"][1]["Attr"] = "0 100 3" -- UniversalRuneEssence（赠）*100
	tJuneAction_Reward[3316222][138]["RewardItem"][2] = {}
	tJuneAction_Reward[3316222][138]["RewardItem"][2]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】天机果*3
	tJuneAction_Reward[3316222][138]["RewardItem"][2]["Attr"] = "0 3" -- MysteryFruit*3
	tJuneAction_Reward[3316222][138]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][138]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][138]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][138]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][139]
	tJuneAction_Reward[3316222][139] = {}
	tJuneAction_Reward[3316222][139]["LogId"] = 12001998
	tJuneAction_Reward[3316222][139]["RewardItem"] = {}
	tJuneAction_Reward[3316222][139]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][139]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶*2
	tJuneAction_Reward[3316222][139]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tJuneAction_Reward[3316222][139]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][139]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][139]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][139]["RewardEffect"]["Effect"] = "angelwing"


	-- ===新服成长大礼盒
	-- ===索引:tJuneAction_Reward[3316222][140]
	-- ===删除:3316222,1
	tJuneAction_Reward[3316222][140] = {}
	tJuneAction_Reward[3316222][140]["LogId"] = 12001998
	tJuneAction_Reward[3316222][140]["DeleteItem"] = {}
	tJuneAction_Reward[3316222][140]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316222][140]["DeleteItem"][1]["Id"] = 3316222 -- 【库】 3316222 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316222][140]["RewardItem"] = {}
	tJuneAction_Reward[3316222][140]["RewardItem"][1] = {}
	tJuneAction_Reward[3316222][140]["RewardItem"][1]["Id"] = 3316223 --  3316223 【enzf库里没有该物品】, 【表格】极品天怒/地灵宝石二选一
	tJuneAction_Reward[3316222][140]["RewardItem"][1]["Attr"] = "0 1" --  3316223 【enzf库里没有该物品】*1
	tJuneAction_Reward[3316222][140]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316222][140]["RewardEffect"] = {}
	tJuneAction_Reward[3316222][140]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316222][140]["RewardEffect"]["Effect"] = "angelwing"


	tJuneAction_Reward[3316223] = {}
	-- ===优质宝石精选礼盒
	-- ===索引:tJuneAction_Reward[3316223][1]
	-- ===删除:3316223,1
	tJuneAction_Reward[3316223][1] = {}
	tJuneAction_Reward[3316223][1]["LogId"] = 12001998
	tJuneAction_Reward[3316223][1]["DeleteItem"] = {}
	tJuneAction_Reward[3316223][1]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316223][1]["DeleteItem"][1]["Id"] = 3316223 -- 【库】 3316223 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316223][1]["RewardItem"] = {}
	tJuneAction_Reward[3316223][1]["RewardItem"][1] = {}
	tJuneAction_Reward[3316223][1]["RewardItem"][1]["Id"] = 700103 -- ThunderGem[700103][属性:0][叠加:0][金币:0], 【表格】优质天怒宝石（赠）
	tJuneAction_Reward[3316223][1]["RewardItem"][1]["Attr"] = "0 1 3" -- ThunderGem*1
	tJuneAction_Reward[3316223][1]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316223][1]["RewardEffect"] = {}
	tJuneAction_Reward[3316223][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316223][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===优质宝石精选礼盒
	-- ===索引:tJuneAction_Reward[3316223][2]
	-- ===删除:3316223,1
	tJuneAction_Reward[3316223][2] = {}
	tJuneAction_Reward[3316223][2]["LogId"] = 12001998
	tJuneAction_Reward[3316223][2]["DeleteItem"] = {}
	tJuneAction_Reward[3316223][2]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316223][2]["DeleteItem"][1]["Id"] = 3316223 -- 【库】 3316223 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316223][2]["RewardItem"] = {}
	tJuneAction_Reward[3316223][2]["RewardItem"][1] = {}
	tJuneAction_Reward[3316223][2]["RewardItem"][1]["Id"] = 700123 -- GloryGem[700123][属性:0][叠加:0][金币:0], 【表格】优质地灵宝石（赠）
	tJuneAction_Reward[3316223][2]["RewardItem"][1]["Attr"] = "0 1 3" -- GloryGem*1
	tJuneAction_Reward[3316223][2]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316223][2]["RewardEffect"] = {}
	tJuneAction_Reward[3316223][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316223][2]["RewardEffect"]["Effect"] = "angelwing"


	tJuneAction_Reward[3316224] = {}
	tJuneAction_Reward[3316224][7] = {}
	-- ===5星时装外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316224][7][1]
	-- ===删除:3316224,1
	tJuneAction_Reward[3316224][7][1] = {}
	tJuneAction_Reward[3316224][7][1]["LogId"] = 12001998
	tJuneAction_Reward[3316224][7][1]["DeleteItem"] = {}
	tJuneAction_Reward[3316224][7][1]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316224][7][1]["DeleteItem"][1]["Id"] = 3316224 -- 【库】 3316224 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316224][7][1]["RewardItem"] = {}
	tJuneAction_Reward[3316224][7][1]["RewardItem"][1] = {}
	tJuneAction_Reward[3316224][7][1]["RewardItem"][1]["Id"] = 191095 -- MadnightofFear[191095][属性:0][叠加:0][金币:0], 【表格】MadnightofFear*1
	tJuneAction_Reward[3316224][7][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑MadnightofFear（赠）*1
	tJuneAction_Reward[3316224][7][1]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316224][7][1]["RewardEffect"] = {}
	tJuneAction_Reward[3316224][7][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316224][7][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星时装外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316224][7][2]
	-- ===删除:3316224,1
	tJuneAction_Reward[3316224][7][2] = {}
	tJuneAction_Reward[3316224][7][2]["LogId"] = 12001998
	tJuneAction_Reward[3316224][7][2]["DeleteItem"] = {}
	tJuneAction_Reward[3316224][7][2]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316224][7][2]["DeleteItem"][1]["Id"] = 3316224 -- 【库】 3316224 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316224][7][2]["RewardItem"] = {}
	tJuneAction_Reward[3316224][7][2]["RewardItem"][1] = {}
	tJuneAction_Reward[3316224][7][2]["RewardItem"][1]["Id"] = 195905 -- GalaxyDream(Grace)[195905][属性:0][叠加:0][金币:0], 【表格】GalaxyDream（Grace）*1
	tJuneAction_Reward[3316224][7][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑GalaxyDream(Grace)（赠）*1
	tJuneAction_Reward[3316224][7][2]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316224][7][2]["RewardEffect"] = {}
	tJuneAction_Reward[3316224][7][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316224][7][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星时装外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316224][7][3]
	-- ===删除:3316224,1
	tJuneAction_Reward[3316224][7][3] = {}
	tJuneAction_Reward[3316224][7][3]["LogId"] = 12001998
	tJuneAction_Reward[3316224][7][3]["DeleteItem"] = {}
	tJuneAction_Reward[3316224][7][3]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316224][7][3]["DeleteItem"][1]["Id"] = 3316224 -- 【库】 3316224 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316224][7][3]["RewardItem"] = {}
	tJuneAction_Reward[3316224][7][3]["RewardItem"][1] = {}
	tJuneAction_Reward[3316224][7][3]["RewardItem"][1]["Id"] = 194395 -- LunarAngelicRobe[194395][属性:8][叠加:0][金币:0], 【表格】LunarAngelicRobe*1
	tJuneAction_Reward[3316224][7][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑LunarAngelicRobe（赠）*1
	tJuneAction_Reward[3316224][7][3]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316224][7][3]["RewardEffect"] = {}
	tJuneAction_Reward[3316224][7][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316224][7][3]["RewardEffect"]["Effect"] = "angelwing"


	tJuneAction_Reward[3316224][30] = {}
	-- ===5星时装外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316224][30][1]
	-- ===删除:3316224,1
	tJuneAction_Reward[3316224][30][1] = {}
	tJuneAction_Reward[3316224][30][1]["LogId"] = 12001998
	tJuneAction_Reward[3316224][30][1]["DeleteItem"] = {}
	tJuneAction_Reward[3316224][30][1]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316224][30][1]["DeleteItem"][1]["Id"] = 3316224 -- 【库】 3316224 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316224][30][1]["RewardItem"] = {}
	tJuneAction_Reward[3316224][30][1]["RewardItem"][1] = {}
	tJuneAction_Reward[3316224][30][1]["RewardItem"][1]["Id"] = 191095 -- MadnightofFear[191095][属性:0][叠加:0][金币:0], 【表格】MadnightofFear*1
	tJuneAction_Reward[3316224][30][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MadnightofFear（赠）*1
	tJuneAction_Reward[3316224][30][1]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316224][30][1]["RewardEffect"] = {}
	tJuneAction_Reward[3316224][30][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316224][30][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星时装外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316224][30][2]
	-- ===删除:3316224,1
	tJuneAction_Reward[3316224][30][2] = {}
	tJuneAction_Reward[3316224][30][2]["LogId"] = 12001998
	tJuneAction_Reward[3316224][30][2]["DeleteItem"] = {}
	tJuneAction_Reward[3316224][30][2]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316224][30][2]["DeleteItem"][1]["Id"] = 3316224 -- 【库】 3316224 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316224][30][2]["RewardItem"] = {}
	tJuneAction_Reward[3316224][30][2]["RewardItem"][1] = {}
	tJuneAction_Reward[3316224][30][2]["RewardItem"][1]["Id"] = 195905 -- GalaxyDream(Grace)[195905][属性:0][叠加:0][金币:0], 【表格】GalaxyDream（Grace）*1
	tJuneAction_Reward[3316224][30][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GalaxyDream(Grace)（赠）*1
	tJuneAction_Reward[3316224][30][2]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316224][30][2]["RewardEffect"] = {}
	tJuneAction_Reward[3316224][30][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316224][30][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星时装外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316224][30][3]
	-- ===删除:3316224,1
	tJuneAction_Reward[3316224][30][3] = {}
	tJuneAction_Reward[3316224][30][3]["LogId"] = 12001998
	tJuneAction_Reward[3316224][30][3]["DeleteItem"] = {}
	tJuneAction_Reward[3316224][30][3]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316224][30][3]["DeleteItem"][1]["Id"] = 3316224 -- 【库】 3316224 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316224][30][3]["RewardItem"] = {}
	tJuneAction_Reward[3316224][30][3]["RewardItem"][1] = {}
	tJuneAction_Reward[3316224][30][3]["RewardItem"][1]["Id"] = 194395 -- LunarAngelicRobe[194395][属性:8][叠加:0][金币:0], 【表格】LunarAngelicRobe*1
	tJuneAction_Reward[3316224][30][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LunarAngelicRobe（赠）*1
	tJuneAction_Reward[3316224][30][3]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316224][30][3]["RewardEffect"] = {}
	tJuneAction_Reward[3316224][30][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316224][30][3]["RewardEffect"]["Effect"] = "angelwing"


	tJuneAction_Reward[3316225] = {}
	tJuneAction_Reward[3316225][7] = {}
	-- ===5星坐骑外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316225][7][1]
	-- ===删除:3316225,1
	tJuneAction_Reward[3316225][7][1] = {}
	tJuneAction_Reward[3316225][7][1]["LogId"] = 12001998
	tJuneAction_Reward[3316225][7][1]["DeleteItem"] = {}
	tJuneAction_Reward[3316225][7][1]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316225][7][1]["DeleteItem"][1]["Id"] = 3316225 -- 【库】 3316225 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316225][7][1]["RewardItem"] = {}
	tJuneAction_Reward[3316225][7][1]["RewardItem"][1] = {}
	tJuneAction_Reward[3316225][7][1]["RewardItem"][1]["Id"] = 200664 -- ChineseLion(Splendid)[200664][属性:0][叠加:0][金币:0], 【表格】ChineseLion（Splendid）*1
	tJuneAction_Reward[3316225][7][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑ChineseLion(Splendid)（赠）*1
	tJuneAction_Reward[3316225][7][1]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316225][7][1]["RewardEffect"] = {}
	tJuneAction_Reward[3316225][7][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316225][7][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星坐骑外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316225][7][2]
	-- ===删除:3316225,1
	tJuneAction_Reward[3316225][7][2] = {}
	tJuneAction_Reward[3316225][7][2]["LogId"] = 12001998
	tJuneAction_Reward[3316225][7][2]["DeleteItem"] = {}
	tJuneAction_Reward[3316225][7][2]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316225][7][2]["DeleteItem"][1]["Id"] = 3316225 -- 【库】 3316225 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316225][7][2]["RewardItem"] = {}
	tJuneAction_Reward[3316225][7][2]["RewardItem"][1] = {}
	tJuneAction_Reward[3316225][7][2]["RewardItem"][1]["Id"] = 200560 -- LunarMonkey[200560][属性:0][叠加:0][金币:0], 【表格】LunarMonkey*1
	tJuneAction_Reward[3316225][7][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑LunarMonkey（赠）*1
	tJuneAction_Reward[3316225][7][2]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316225][7][2]["RewardEffect"] = {}
	tJuneAction_Reward[3316225][7][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316225][7][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星坐骑外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316225][7][3]
	-- ===删除:3316225,1
	tJuneAction_Reward[3316225][7][3] = {}
	tJuneAction_Reward[3316225][7][3]["LogId"] = 12001998
	tJuneAction_Reward[3316225][7][3]["DeleteItem"] = {}
	tJuneAction_Reward[3316225][7][3]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316225][7][3]["DeleteItem"][1]["Id"] = 3316225 -- 【库】 3316225 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316225][7][3]["RewardItem"] = {}
	tJuneAction_Reward[3316225][7][3]["RewardItem"][1] = {}
	tJuneAction_Reward[3316225][7][3]["RewardItem"][1]["Id"] = 200614 -- PacificCloud[200614][属性:0][叠加:0][金币:0], 【表格】PacificCloud*1
	tJuneAction_Reward[3316225][7][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑PacificCloud（赠）*1
	tJuneAction_Reward[3316225][7][3]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316225][7][3]["RewardEffect"] = {}
	tJuneAction_Reward[3316225][7][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316225][7][3]["RewardEffect"]["Effect"] = "angelwing"


	tJuneAction_Reward[3316225][30] = {}
	-- ===5星坐骑外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316225][30][1]
	-- ===删除:3316225,1
	tJuneAction_Reward[3316225][30][1] = {}
	tJuneAction_Reward[3316225][30][1]["LogId"] = 12001998
	tJuneAction_Reward[3316225][30][1]["DeleteItem"] = {}
	tJuneAction_Reward[3316225][30][1]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316225][30][1]["DeleteItem"][1]["Id"] = 3316225 -- 【库】 3316225 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316225][30][1]["RewardItem"] = {}
	tJuneAction_Reward[3316225][30][1]["RewardItem"][1] = {}
	tJuneAction_Reward[3316225][30][1]["RewardItem"][1]["Id"] = 200664 -- ChineseLion(Splendid)[200664][属性:0][叠加:0][金币:0], 【表格】ChineseLion（Splendid）*1
	tJuneAction_Reward[3316225][30][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ChineseLion(Splendid)（赠）*1
	tJuneAction_Reward[3316225][30][1]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316225][30][1]["RewardEffect"] = {}
	tJuneAction_Reward[3316225][30][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316225][30][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星坐骑外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316225][30][2]
	-- ===删除:3316225,1
	tJuneAction_Reward[3316225][30][2] = {}
	tJuneAction_Reward[3316225][30][2]["LogId"] = 12001998
	tJuneAction_Reward[3316225][30][2]["DeleteItem"] = {}
	tJuneAction_Reward[3316225][30][2]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316225][30][2]["DeleteItem"][1]["Id"] = 3316225 -- 【库】 3316225 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316225][30][2]["RewardItem"] = {}
	tJuneAction_Reward[3316225][30][2]["RewardItem"][1] = {}
	tJuneAction_Reward[3316225][30][2]["RewardItem"][1]["Id"] = 200560 -- LunarMonkey[200560][属性:0][叠加:0][金币:0], 【表格】LunarMonkey*1
	tJuneAction_Reward[3316225][30][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LunarMonkey（赠）*1
	tJuneAction_Reward[3316225][30][2]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316225][30][2]["RewardEffect"] = {}
	tJuneAction_Reward[3316225][30][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316225][30][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5星坐骑外套精选礼盒
	-- ===索引:tJuneAction_Reward[3316225][30][3]
	-- ===删除:3316225,1
	tJuneAction_Reward[3316225][30][3] = {}
	tJuneAction_Reward[3316225][30][3]["LogId"] = 12001998
	tJuneAction_Reward[3316225][30][3]["DeleteItem"] = {}
	tJuneAction_Reward[3316225][30][3]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316225][30][3]["DeleteItem"][1]["Id"] = 3316225 -- 【库】 3316225 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316225][30][3]["RewardItem"] = {}
	tJuneAction_Reward[3316225][30][3]["RewardItem"][1] = {}
	tJuneAction_Reward[3316225][30][3]["RewardItem"][1]["Id"] = 200614 -- PacificCloud[200614][属性:0][叠加:0][金币:0], 【表格】PacificCloud*1
	tJuneAction_Reward[3316225][30][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑PacificCloud（赠）*1
	tJuneAction_Reward[3316225][30][3]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316225][30][3]["RewardEffect"] = {}
	tJuneAction_Reward[3316225][30][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316225][30][3]["RewardEffect"]["Effect"] = "angelwing"

	tJuneAction_Reward[3316226] = {}
	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][1]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][1] = {}
	tJuneAction_Reward[3316226][1]["LogId"] = 12001998
	tJuneAction_Reward[3316226][1]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][1]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][1]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][1]["RewardItem"] = {}
	tJuneAction_Reward[3316226][1]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][1]["RewardItem"][1]["Id"] = 800000 -- TombBlade[800000][属性:0][叠加:0][金币:0], 【表格】Tomb Blade
	tJuneAction_Reward[3316226][1]["RewardItem"][1]["Attr"] = "0 1 3" -- TombBlade（赠）*1
	tJuneAction_Reward[3316226][1]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][1]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][2]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][2] = {}
	tJuneAction_Reward[3316226][2]["LogId"] = 12001998
	tJuneAction_Reward[3316226][2]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][2]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][2]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][2]["RewardItem"] = {}
	tJuneAction_Reward[3316226][2]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][2]["RewardItem"][1]["Id"] = 800110 -- GrimHammer[800110][属性:0][叠加:0][金币:0], 【表格】Grim Hammer
	tJuneAction_Reward[3316226][2]["RewardItem"][1]["Attr"] = "0 1 3" -- GrimHammer（赠）*1
	tJuneAction_Reward[3316226][2]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][2]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][3]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][3] = {}
	tJuneAction_Reward[3316226][3]["LogId"] = 12001998
	tJuneAction_Reward[3316226][3]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][3]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][3]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][3]["RewardItem"] = {}
	tJuneAction_Reward[3316226][3]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][3]["RewardItem"][1]["Id"] = 800017 -- StealthKatana[800017][属性:0][叠加:0][金币:0], 【表格】Stealth Katana
	tJuneAction_Reward[3316226][3]["RewardItem"][1]["Attr"] = "0 1 3" -- StealthKatana（赠）*1
	tJuneAction_Reward[3316226][3]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][3]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][4]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][4] = {}
	tJuneAction_Reward[3316226][4]["LogId"] = 12001998
	tJuneAction_Reward[3316226][4]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][4]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][4]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][4]["RewardItem"] = {}
	tJuneAction_Reward[3316226][4]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][4]["RewardItem"][1]["Id"] = 800320 -- ArchonWand[800320][属性:0][叠加:0][金币:0], 【表格】Archon Wand
	tJuneAction_Reward[3316226][4]["RewardItem"][1]["Attr"] = "0 1 3" -- ArchonWand（赠）*1
	tJuneAction_Reward[3316226][4]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][4]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][5]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][5] = {}
	tJuneAction_Reward[3316226][5]["LogId"] = 12001998
	tJuneAction_Reward[3316226][5]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][5]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][5]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][5]["RewardItem"] = {}
	tJuneAction_Reward[3316226][5]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][5]["RewardItem"][1]["Id"] = 800722 -- HolyBeadsOfConsciousness[800722][属性:0][叠加:0][金币:0], 【表格】Holy Beads of Consciousness
	tJuneAction_Reward[3316226][5]["RewardItem"][1]["Attr"] = "0 1 3" -- HolyBeadsOfConsciousness（赠）*1
	tJuneAction_Reward[3316226][5]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][5]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][6]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][6] = {}
	tJuneAction_Reward[3316226][6]["LogId"] = 12001998
	tJuneAction_Reward[3316226][6]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][6]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][6]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][6]["RewardItem"] = {}
	tJuneAction_Reward[3316226][6]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][6]["RewardItem"][1]["Id"] = 800616 -- WingedBow[800616][属性:0][叠加:0][金币:0], 【表格】Winged Bow
	tJuneAction_Reward[3316226][6]["RewardItem"][1]["Attr"] = "0 1 3" -- WingedBow（赠）*1
	tJuneAction_Reward[3316226][6]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][6]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][6]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][7]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][7] = {}
	tJuneAction_Reward[3316226][7]["LogId"] = 12001998
	tJuneAction_Reward[3316226][7]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][7]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][7]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][7]["RewardItem"] = {}
	tJuneAction_Reward[3316226][7]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][7]["RewardItem"][1]["Id"] = 800804 -- TimePistol[800804][属性:0][叠加:0][金币:0], 【表格】Time Pistol
	tJuneAction_Reward[3316226][7]["RewardItem"][1]["Attr"] = "0 1 3" -- TimePistol（赠）*1
	tJuneAction_Reward[3316226][7]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][7]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][7]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][8]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][8] = {}
	tJuneAction_Reward[3316226][8]["LogId"] = 12001998
	tJuneAction_Reward[3316226][8]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][8]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][8]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][8]["RewardItem"] = {}
	tJuneAction_Reward[3316226][8]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][8]["RewardItem"][1]["Id"] = 800809 -- DestinyRapier[800809][属性:0][叠加:0][金币:0], 【表格】Destiny Rapier
	tJuneAction_Reward[3316226][8]["RewardItem"][1]["Attr"] = "0 1 3" -- DestinyRapier（赠）*1
	tJuneAction_Reward[3316226][8]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][8]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][8]["RewardEffect"]["Effect"] = "angelwing"


	-- ===P6WeaponSoulPack
	-- ===索引:tJuneAction_Reward[3316226][9]
	-- ===删除:3316226,1
	tJuneAction_Reward[3316226][9] = {}
	tJuneAction_Reward[3316226][9]["LogId"] = 12001998
	tJuneAction_Reward[3316226][9]["DeleteItem"] = {}
	tJuneAction_Reward[3316226][9]["DeleteItem"][1] = {}
	tJuneAction_Reward[3316226][9]["DeleteItem"][1]["Id"] = 3316226 -- 【库】 3316226 【enzf库里没有该物品】[属性:]
	tJuneAction_Reward[3316226][9]["RewardItem"] = {}
	tJuneAction_Reward[3316226][9]["RewardItem"][1] = {}
	tJuneAction_Reward[3316226][9]["RewardItem"][1]["Id"] = 800513 -- PneumaBacksword[800513][属性:0][叠加:0][金币:0], 【表格】Pneuma Backsword
	tJuneAction_Reward[3316226][9]["RewardItem"][1]["Attr"] = "0 1 3" -- PneumaBacksword（赠）*1
	tJuneAction_Reward[3316226][9]["RewardNoNeedTip"] = 1
	tJuneAction_Reward[3316226][9]["RewardEffect"] = {}
	tJuneAction_Reward[3316226][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tJuneAction_Reward[3316226][9]["RewardEffect"]["Effect"] = "angelwing"

	
local tJuneAction_Pack = {}
	--极品武器自选礼包
	tJuneAction_Pack[3316227]={}
	
	--勇士
	tJuneAction_Pack[3316227][10]={}
	tJuneAction_Pack[3316227][10]["DialogIndex"]="6-1"
	--下面武器三选一
	tJuneAction_Pack[3316227][10]["Option"]={}
	--赠品刀
	tJuneAction_Pack[3316227][10]["Option"][1]={}
	tJuneAction_Pack[3316227][10]["Option"][1]["Item_ID"]=410059
	tJuneAction_Pack[3316227][10]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品剑
	tJuneAction_Pack[3316227][10]["Option"][2]={}
	tJuneAction_Pack[3316227][10]["Option"][2]["Item_ID"]=420059
	tJuneAction_Pack[3316227][10]["Option"][2]["ItemAttr"]="0 1 3"
	--赠品棒
	tJuneAction_Pack[3316227][10]["Option"][3]={}
	tJuneAction_Pack[3316227][10]["Option"][3]["Item_ID"]=480059
	tJuneAction_Pack[3316227][10]["Option"][3]["ItemAttr"]="0 1 3"
	
	--战士
	tJuneAction_Pack[3316227][20]={}
	tJuneAction_Pack[3316227][20]["DialogIndex"]="7-1"
	--下面武器三选一
	tJuneAction_Pack[3316227][20]["Option"]={}
	--赠品枪
	tJuneAction_Pack[3316227][20]["Option"][1]={}
	tJuneAction_Pack[3316227][20]["Option"][1]["Item_ID"]=560059
	tJuneAction_Pack[3316227][20]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品棍
	tJuneAction_Pack[3316227][20]["Option"][2]={}
	tJuneAction_Pack[3316227][20]["Option"][2]["Item_ID"]=561059
	tJuneAction_Pack[3316227][20]["Option"][2]["ItemAttr"]="0 1 3"
	-- 赠品盾
	tJuneAction_Pack[3316227][20]["Option"][3]={}
	tJuneAction_Pack[3316227][20]["Option"][3]["Item_ID"]=900009
	tJuneAction_Pack[3316227][20]["Option"][3]["ItemAttr"]="0 1 3"
	--赠品拳套
	tJuneAction_Pack[3316227][20]["Option"][4]={}
	tJuneAction_Pack[3316227][20]["Option"][4]["Item_ID"]=624059
	tJuneAction_Pack[3316227][20]["Option"][4]["ItemAttr"]="0 1 3"
	
	
	
	--弓手
	tJuneAction_Pack[3316227][40]={}
	tJuneAction_Pack[3316227][40]["DialogIndex"]="8-1"
	--下面武器二选一
	tJuneAction_Pack[3316227][40]["Option"]={}
	--赠品弓
	tJuneAction_Pack[3316227][40]["Option"][1]={}
	tJuneAction_Pack[3316227][40]["Option"][1]["Item_ID"]=500049
	tJuneAction_Pack[3316227][40]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品飞刀
	tJuneAction_Pack[3316227][40]["Option"][2]={}
	tJuneAction_Pack[3316227][40]["Option"][2]["Item_ID"]=613049
	tJuneAction_Pack[3316227][40]["Option"][2]["ItemAttr"]="0 1 3"
	
	
	--刺客
	tJuneAction_Pack[3316227][50]={}
	tJuneAction_Pack[3316227][50]["DialogIndex"]="9-1"
	--下面武器二选一
	tJuneAction_Pack[3316227][50]["Option"]={}
	--赠品钩镰
	tJuneAction_Pack[3316227][50]["Option"][1]={}
	tJuneAction_Pack[3316227][50]["Option"][1]["Item_ID"]=511059
	tJuneAction_Pack[3316227][50]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品忍刀
	tJuneAction_Pack[3316227][50]["Option"][2]={}
	tJuneAction_Pack[3316227][50]["Option"][2]["Item_ID"]=601059
	tJuneAction_Pack[3316227][50]["Option"][2]["ItemAttr"]="0 1 3"
	
	--武僧
	tJuneAction_Pack[3316227][60]= {}
	tJuneAction_Pack[3316227][60]["Item"]={}
	--直接获得一件赠品念珠
	tJuneAction_Pack[3316227][60]["Item"]={}
	tJuneAction_Pack[3316227][60]["Item"]["Item_ID"]= 610059
	tJuneAction_Pack[3316227][60]["Item"]["ItemAttr"]= "0 1 3"
	
	--海盗
	tJuneAction_Pack[3316227][70]={}
	tJuneAction_Pack[3316227][70]["DialogIndex"]="10-1"
	--下面武器二选一
	tJuneAction_Pack[3316227][70]["Option"]={}
	--赠品刺剑
	tJuneAction_Pack[3316227][70]["Option"][1]={}
	tJuneAction_Pack[3316227][70]["Option"][1]["Item_ID"]=611059
	tJuneAction_Pack[3316227][70]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品火枪
	tJuneAction_Pack[3316227][70]["Option"][2]={}
	tJuneAction_Pack[3316227][70]["Option"][2]["Item_ID"]=612059
	tJuneAction_Pack[3316227][70]["Option"][2]["ItemAttr"]="0 1 3"
	
	--截拳
	tJuneAction_Pack[3316227][80]= {}
	tJuneAction_Pack[3316227][80]["Item"]={}
	--直接获得一件赠品双截棍
	tJuneAction_Pack[3316227][80]["Item"]={}
	tJuneAction_Pack[3316227][80]["Item"]["Item_ID"]= 617059
	tJuneAction_Pack[3316227][80]["Item"]["ItemAttr"]= "0 1 3"
	
	--道士
	tJuneAction_Pack[3316227][100]= {}
	tJuneAction_Pack[3316227][100]["DialogIndex"]="11-1"
	
	--下面武器二选一
	tJuneAction_Pack[3316227][100]["Option"]={}
	--赠品赠品法剑
	tJuneAction_Pack[3316227][100]["Option"][1]={}
	tJuneAction_Pack[3316227][100]["Option"][1]["Item_ID"]=421069
	tJuneAction_Pack[3316227][100]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品法器
	tJuneAction_Pack[3316227][100]["Option"][2]={}
	tJuneAction_Pack[3316227][100]["Option"][2]["Item_ID"]=619059
	tJuneAction_Pack[3316227][100]["Option"][2]["ItemAttr"]="0 1 3"
	
	--铁扇门
	tJuneAction_Pack[3316227][160]= {}
	tJuneAction_Pack[3316227][160]["Item"]={}
	--直接获得一件赠品扇子
	tJuneAction_Pack[3316227][160]["Item"]={}
	tJuneAction_Pack[3316227][160]["Item"]["Item_ID"]= 626059
	tJuneAction_Pack[3316227][160]["Item"]["ItemAttr"]= "0 1 3"
	
	--雷神
	tJuneAction_Pack[3316227][90] = {}
	tJuneAction_Pack[3316227][90]["DialogIndex"]="12-1"
	tJuneAction_Pack[3316227][90]["Option"]={}
	--赠品锤
	tJuneAction_Pack[3316227][90]["Option"][1]={}
	tJuneAction_Pack[3316227][90]["Option"][1]["Item_ID"]=681059
	tJuneAction_Pack[3316227][90]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品斧
	tJuneAction_Pack[3316227][90]["Option"][2]={}
	tJuneAction_Pack[3316227][90]["Option"][2]["Item_ID"]=680059
	tJuneAction_Pack[3316227][90]["Option"][2]["ItemAttr"]="0 1 3"
	
--极品装备自选礼包（头盔加护甲）
	tJuneAction_Pack[3316228]={}
	
	--勇士
	tJuneAction_Pack[3316228][10]={}
	tJuneAction_Pack[3316228][10]["DialogIndex"]="6-1"
	tJuneAction_Pack[3316228][10]["Option"]={}
	--赠品护首
	tJuneAction_Pack[3316228][10]["Option"][1]={}
	tJuneAction_Pack[3316228][10]["Option"][1]["Item_ID"]=118029
	tJuneAction_Pack[3316228][10]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品护甲
	tJuneAction_Pack[3316228][10]["Option"][2]={}
	tJuneAction_Pack[3316228][10]["Option"][2]["Item_ID"]=130029
	tJuneAction_Pack[3316228][10]["Option"][2]["ItemAttr"]="0 1 3"

	--战士
	tJuneAction_Pack[3316228][20]={}
	tJuneAction_Pack[3316228][20]["DialogIndex"]="7-1"
	tJuneAction_Pack[3316228][20]["Option"]={}
	--赠品头盔
	tJuneAction_Pack[3316228][20]["Option"][1]={}
	tJuneAction_Pack[3316228][20]["Option"][1]["Item_ID"]=111029
	tJuneAction_Pack[3316228][20]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品铠
	tJuneAction_Pack[3316228][20]["Option"][2]={}
	tJuneAction_Pack[3316228][20]["Option"][2]["Item_ID"]=131029
	tJuneAction_Pack[3316228][20]["Option"][2]["ItemAttr"]="0 1 3"
	
	--弓手
	tJuneAction_Pack[3316228][40]={}
	tJuneAction_Pack[3316228][40]["DialogIndex"]="8-1"
	tJuneAction_Pack[3316228][40]["Option"]={}
	--赠品帽
	tJuneAction_Pack[3316228][40]["Option"][1]={}
	tJuneAction_Pack[3316228][40]["Option"][1]["Item_ID"]=113019
	tJuneAction_Pack[3316228][40]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品褂
	tJuneAction_Pack[3316228][40]["Option"][2]={}
	tJuneAction_Pack[3316228][40]["Option"][2]["Item_ID"]=133019
	tJuneAction_Pack[3316228][40]["Option"][2]["ItemAttr"]="0 1 3"
		
	--忍者
	tJuneAction_Pack[3316228][50]={}
	tJuneAction_Pack[3316228][50]["DialogIndex"]="9-1"
	tJuneAction_Pack[3316228][50]["Option"]={}
	--赠品护额
	tJuneAction_Pack[3316228][50]["Option"][1]={}
	tJuneAction_Pack[3316228][50]["Option"][1]["Item_ID"]=112029
	tJuneAction_Pack[3316228][50]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品护额
	tJuneAction_Pack[3316228][50]["Option"][2]={}
	tJuneAction_Pack[3316228][50]["Option"][2]["Item_ID"]=123029
	tJuneAction_Pack[3316228][50]["Option"][2]["ItemAttr"]="0 1 3"
	--赠品忍服
	tJuneAction_Pack[3316228][50]["Option"][3]={}
	tJuneAction_Pack[3316228][50]["Option"][3]["Item_ID"]=135029
	tJuneAction_Pack[3316228][50]["Option"][3]["ItemAttr"]="0 1 3"
	
	--海盗
	tJuneAction_Pack[3316228][70]={}
	tJuneAction_Pack[3316228][70]["DialogIndex"]="10-1"
	tJuneAction_Pack[3316228][70]["Option"]={}
	--赠品头饰
	tJuneAction_Pack[3316228][70]["Option"][1]={}
	tJuneAction_Pack[3316228][70]["Option"][1]["Item_ID"]=144029
	tJuneAction_Pack[3316228][70]["Option"][1]["ItemAttr"]="0 1 3"
	--裳
	tJuneAction_Pack[3316228][70]["Option"][2]={}
	tJuneAction_Pack[3316228][70]["Option"][2]["Item_ID"]=139029
	tJuneAction_Pack[3316228][70]["Option"][2]["ItemAttr"]="0 1 3"
	
	--道士
	tJuneAction_Pack[3316228][100]= {}
	tJuneAction_Pack[3316228][100]["DialogIndex"]="11-1"
	tJuneAction_Pack[3316228][100]["Option"]={}
	--赠品水纹冠
	tJuneAction_Pack[3316228][100]["Option"][1]={}
	tJuneAction_Pack[3316228][100]["Option"][1]["Item_ID"]=114029
	tJuneAction_Pack[3316228][100]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品太极道袍
	tJuneAction_Pack[3316228][100]["Option"][2]={}
	tJuneAction_Pack[3316228][100]["Option"][2]["Item_ID"]=134029
	tJuneAction_Pack[3316228][100]["Option"][2]["ItemAttr"]="0 1 3"
	
	--雷神
	tJuneAction_Pack[3316228][90] = {}
	tJuneAction_Pack[3316228][90]["DialogIndex"]="12-1"
	tJuneAction_Pack[3316228][90]["Option"]={}
	--赠品雷鸣战盔
	tJuneAction_Pack[3316228][90]["Option"][1]={}
	tJuneAction_Pack[3316228][90]["Option"][1]["Item_ID"]=146029
	tJuneAction_Pack[3316228][90]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品蛮雷战甲
	tJuneAction_Pack[3316228][90]["Option"][2]={}
	tJuneAction_Pack[3316228][90]["Option"][2]["Item_ID"]=102029
	tJuneAction_Pack[3316228][90]["Option"][2]["ItemAttr"]="0 1 3"
	
	--铁扇门
	tJuneAction_Pack[3316228][160]= {}
	tJuneAction_Pack[3316228][160]["DialogIndex"]="13-1"
	tJuneAction_Pack[3316228][160]["Option"]={}
	--赠品墨云冠
	tJuneAction_Pack[3316228][160]["Option"][1]={}
	tJuneAction_Pack[3316228][160]["Option"][1]["Item_ID"]=170029
	tJuneAction_Pack[3316228][160]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品玄素袍
	tJuneAction_Pack[3316228][160]["Option"][2]={}
	tJuneAction_Pack[3316228][160]["Option"][2]["Item_ID"]=101029
	tJuneAction_Pack[3316228][160]["Option"][2]["ItemAttr"]="0 1 3"
	
	--武僧
	tJuneAction_Pack[3316228][60]= {}
	tJuneAction_Pack[3316228][60]["DialogIndex"]="14-1"
	tJuneAction_Pack[3316228][60]["Option"]={}
	--赠品浮生法箍
	tJuneAction_Pack[3316228][60]["Option"][1]={}
	tJuneAction_Pack[3316228][60]["Option"][1]["Item_ID"]=143029
	tJuneAction_Pack[3316228][60]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品金丝战袍
	tJuneAction_Pack[3316228][60]["Option"][2]={}
	tJuneAction_Pack[3316228][60]["Option"][2]["Item_ID"]=136029
	tJuneAction_Pack[3316228][60]["Option"][2]["ItemAttr"]="0 1 3"
	
	--截拳
	tJuneAction_Pack[3316228][80]= {}
	tJuneAction_Pack[3316228][80]["DialogIndex"]="15-1"
	tJuneAction_Pack[3316228][80]["Option"]={}
	--赠品功夫头巾
	tJuneAction_Pack[3316228][80]["Option"][1]={}
	tJuneAction_Pack[3316228][80]["Option"][1]["Item_ID"]=148029
	tJuneAction_Pack[3316228][80]["Option"][1]["ItemAttr"]="0 1 3"
	--赠品连身战衣【32级】
	tJuneAction_Pack[3316228][80]["Option"][2]={}
	tJuneAction_Pack[3316228][80]["Option"][2]["Item_ID"]=138029
	tJuneAction_Pack[3316228][80]["Option"][2]["ItemAttr"]="0 1 3"
	

----------------------------------逻辑部分---------------------------------------------
--成长礼包
function JuneAction_GrowPack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	local nJuneAction_Event = tJuneAction_Stc["EventType"]
	local nJuneAction_Type = tJuneAction_Stc["Level"] 
	local nJuneAction_Date = Get_UserStatisticValue(nJuneAction_Event,nJuneAction_Type)
	for i = 1,#tJuneAction_Level do
		local nLev = tJuneAction_Level[i]
		if nLevel >= nLev and nJuneAction_Date<i then
			--判断背包空间
			local nSpace = RewardTemplate_GetRewardSpace(tJuneAction_Reward[nItemId][nLev])
			if not User_CheckLeftSpace(nSpace) then
				Sys_MsgBox(string.format(tJuneAction_Text["NoSpace"],nSpace))	
				return
			end
			if not Item_ChkItem(nItemId) then
				return
			end
			if Task_SetStatistic(nJuneAction_Event,nJuneAction_Type,i,1) then 
				Task_SetStcTimestamp(nJuneAction_Event,nJuneAction_Type,0)
				RewardTemplate_UseItemAndMsg(tJuneAction_Reward[nItemId][nLev])
				return 
			end 
		end
	end
end 

--可选包
function JuneAction_GemPack(nItemId,nIndex)
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tJuneAction_Reward[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tJuneAction_Text["NoSpace"],nSpace))	
		return
	end
	RewardTemplate_UseItemAndMsg(tJuneAction_Reward[nItemId][nIndex])
end 

--升级外套礼包
function JuneAction_PayMoney(nItemId,nEmoney)
	--判断天石是否足够
	if Get_UserEMoney() < nEmoney then
		Sys_MsgBox(tJuneAction_Text["NoMoney"])
		return 
	end 

	if User_AddEMoneyAndLog(-nEmoney,tJuneAction_Log[nItemId]) then
		local nJuneAction_Event = tJuneAction_Stc["EventType"]
		local nJuneAction_Type = tJuneAction_Stc["Coat"]
		if nItemId == 3316225 then
			nJuneAction_Type = tJuneAction_Stc["Mount"]
		end
		Task_SetStatistic(nJuneAction_Event,nJuneAction_Type,1,1)
		Task_SetStcTimestamp(nJuneAction_Event,nJuneAction_Type,0)
		
	end
end 

--外套时效包
function JuneAction_CoatPack(nItemId,nTime,nIndex)
	--判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tJuneAction_Reward[nItemId][nTime][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(string.format(tJuneAction_Text["NoSpace"],nSpace))	
		return
	end
	
	if RewardTemplate_UseItemAndMsg(tJuneAction_Reward[nItemId][nTime][nIndex]) then 
		local nJuneAction_Event = tJuneAction_Stc["EventType"]
		local nJuneAction_Type = tJuneAction_Stc["Coat"]
		if nItemId == 3316225 then
			nJuneAction_Type = tJuneAction_Stc["Mount"]
		end
		Task_SetStatistic(nJuneAction_Event,nJuneAction_Type,0,1)
		Task_SetStcTimestamp(nJuneAction_Event,nJuneAction_Type,0)
	end
end 

--打开礼包
function JuneAction_UsePack(nItemId)

	local tPack=tJuneAction_Pack[nItemId]
	--判断职业，获得对应的物品ID  
	local nPro=Get_UserProfession()
	if nPro>=100 and nPro <= 145 then
		nPro=100
	elseif nPro >= 160 and nPro <= 165 then
		nPro=160
	else
		nPro=nPro-nPro%10
	end     

	if tPack[nPro]["DialogIndex"] ~= nil then       
		LinkItemGossipFunc_New(nItemId,tPack[nPro]["DialogIndex"])
		return 
	end
	JuneAction_Reward(nItemId,tPack[nPro]["Item"]["Item_ID"],tPack[nPro]["Item"]["ItemAttr"])
end 

--选项
function JuneAction_SelectOption(nPackId,nPro,nOption)
	local tItem=tJuneAction_Pack[nPackId][nPro]["Option"][nOption]
	JuneAction_Reward(nPackId,tItem["Item_ID"],tItem["ItemAttr"]) 
end

--获得物品
function JuneAction_Reward(nPackId,nItemId,sItemAttr)
	local tReward = {}
	tReward["DeleteItem"] = {}
	tReward["DeleteItem"][1] = {}	
	tReward["DeleteItem"][1]["Id"] = nPackId
	tReward["RewardItem"] = {}				
	tReward["RewardItem"][1] = {}				
	tReward["RewardItem"][1]["Id"] = nItemId	
	tReward["RewardItem"][1]["Attr"] = sItemAttr	
	tReward["Log"] = string.format(tJuneAction_Log["Package"],nPackId,nItemId)

	RewardTemplate_UseItemAndMsg(tReward)
end 
----------------------------------NPC部分---------------------------------------------
---------------------------------物品部分---------------------------------------------
tItem[3316218] = tItem[3316218] or {}
tItem[3316218]["Function"] = function(nItemId,sItemName)
	if tJuneAction_Reward[nItemId]["RewardEMoneyMono"] ~=nil then 
		local nUserId = Get_UserId()
		local nEmoney = Get_UserMonoEMoney(nUserId)
		local nAddEmoney = tJuneAction_Reward[nItemId]["RewardEMoneyMono"]["Value"]
		if nEmoney + nAddEmoney > G_User_MaxEmoneyMono then
			Sys_MsgBox(tJuneAction_Text["EMoneyMono"])
			return
		end
	end 
	RewardTemplate_UseItemAndMsg(tJuneAction_Reward[nItemId])
end
tItem[3316219] = tItem[3316218] or {}
tItem[3316220] = tItem[3316218] or {}
tItem[3316221] = tItem[3316218] or {}

--成长礼包
tItemFace[3316222] = 2961
tItem[3316222] = tItem[3316222] or {}
tItem[3316222]["DialogueText"] = tJuneAction_Text[3316222]
tItem[3316222]["Text1-1"] = {113,114}
tItem[3316222]["tOption1-1"] = {111}
tItem[3316222]["OptionFunc111"] = "JuneAction_GrowPack</N>3316222"
tItem[3316222]["ChkFunc1-1"] = function ()
	if not Item_ChkItem(3316222) then
		return
	end
	tItem[3316222]["Text1-1"] = {111,112,113,114}
	local nJuneAction_Event = tJuneAction_Stc["EventType"]
	local nJuneAction_Type = tJuneAction_Stc["Level"] 
	local nJuneAction_Date = Get_UserStatisticValue(nJuneAction_Event,nJuneAction_Type)
	local nUserId = Get_UserId()
	local nLevel = Get_UserLevel(nUserId)
	tItem[3316222]["Text113"] = string.format(tJuneAction_Text[3316222]["Text113"],tJuneAction_Level[nJuneAction_Date+1])
	tItem[3316222]["Text114"] = string.format(tJuneAction_Text[3316222]["Text114"],tJuneAction_Text[nJuneAction_Date])
	return true
end

--优质宝石精选礼盒
tItemFace[3316223] = 2962
tItem[3316223] = tItem[3316223] or {}
tItem[3316223]["DialogueText"] = tJuneAction_Text[3316223]
tItem[3316223]["Text1-1"] = {111}
tItem[3316223]["tOption1-1"] = {111,112}
tItem[3316223]["OptionFunc111"] = "JuneAction_GemPack</N>3316223</N>1"
tItem[3316223]["OptionFunc112"] = "JuneAction_GemPack</N>3316223</N>2"

--p6神魂礼包
tItemFace[3316226] = 2962
tItem[3316226] = tItem[3316226] or {}
tItem[3316226]["DialogueText"] = tJuneAction_Text[3316226]
tItem[3316226]["nPageNum"] = 10
tItem[3316226]["Text1-1"] = {111}
tItem[3316226]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tItem[3316226]["OptionFunc111"] = "JuneAction_GemPack</N>3316226</N>1"
tItem[3316226]["OptionFunc112"] = "JuneAction_GemPack</N>3316226</N>2"
tItem[3316226]["OptionFunc113"] = "JuneAction_GemPack</N>3316226</N>3"
tItem[3316226]["OptionFunc114"] = "JuneAction_GemPack</N>3316226</N>4"
tItem[3316226]["OptionFunc115"] = "JuneAction_GemPack</N>3316226</N>5"
tItem[3316226]["OptionFunc116"] = "JuneAction_GemPack</N>3316226</N>6"
tItem[3316226]["OptionFunc117"] = "JuneAction_GemPack</N>3316226</N>7"
tItem[3316226]["OptionFunc118"] = "JuneAction_GemPack</N>3316226</N>8"
tItem[3316226]["OptionFunc119"] = "JuneAction_GemPack</N>3316226</N>9"

--5星时装外套精选礼盒
tItemFace[3316224] = 2963
tItem[3316224] = tItem[3316224] or {}
tItem[3316224]["Function"] = function(nItemId,sItemName)
	local nJuneAction_Event = tJuneAction_Stc["EventType"]
	local nJuneAction_Type = tJuneAction_Stc["Coat"]
	if Task_ChkStcValue(nJuneAction_Event,nJuneAction_Type,"==",0) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	else 
		LinkItemGossipFunc_New(nItemId,"3-1")
	end 
end
tItem[3316224]["DialogueText"] = tJuneAction_Text[3316224]
tItem[3316224]["Text1-1"] = {111,112}
tItem[3316224]["tOption1-1"] = {111,112,113,114}


tItem[3316224]["OptionPoint111"] = "2-1"
tItem[3316224]["OptionFunc112"] = "JuneAction_CoatPack</N>3316224</N>7</N>1"
tItem[3316224]["OptionFunc113"] = "JuneAction_CoatPack</N>3316224</N>7</N>2"
tItem[3316224]["OptionFunc114"] = "JuneAction_CoatPack</N>3316224</N>7</N>3"

tItem[3316224]["Text2-1"] = {211}
tItem[3316224]["tOption2-1"] = {211,212}
tItem[3316224]["OptionFunc211"] = "JuneAction_PayMoney</N>3316224</N>27"
tItem[3316224]["OptionPoint212"] = "1-1"

tItem[3316224]["Text3-1"] = {311}
tItem[3316224]["tOption3-1"] = {311,312,313}
tItem[3316224]["OptionFunc311"] = "JuneAction_CoatPack</N>3316224</N>30</N>1"
tItem[3316224]["OptionFunc312"] = "JuneAction_CoatPack</N>3316224</N>30</N>2"
tItem[3316224]["OptionFunc313"] = "JuneAction_CoatPack</N>3316224</N>30</N>3"

--5星坐骑外套精选礼盒
tItemFace[3316225] = 2964
tItem[3316225] = tItem[3316225] or {}
tItem[3316225]["Function"] = function(nItemId,sItemName)
	local nJuneAction_Event = tJuneAction_Stc["EventType"]
	local nJuneAction_Type = tJuneAction_Stc["Mount"]
	if Task_ChkStcValue(nJuneAction_Event,nJuneAction_Type,"==",0) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	else 
		LinkItemGossipFunc_New(nItemId,"3-1")
	end 
end
tItem[3316225]["DialogueText"] = tJuneAction_Text[3316225]
tItem[3316225]["Text1-1"] = {111,112}
tItem[3316225]["tOption1-1"] = {111,112,113,114}


tItem[3316225]["OptionPoint111"] = "2-1"
tItem[3316225]["OptionFunc112"] = "JuneAction_CoatPack</N>3316225</N>7</N>1"
tItem[3316225]["OptionFunc113"] = "JuneAction_CoatPack</N>3316225</N>7</N>2"
tItem[3316225]["OptionFunc114"] = "JuneAction_CoatPack</N>3316225</N>7</N>3"

tItem[3316225]["Text2-1"] = {211}
tItem[3316225]["tOption2-1"] = {211,212}
tItem[3316225]["OptionFunc211"] = "JuneAction_PayMoney</N>3316225</N>27"
tItem[3316225]["OptionPoint212"] = "1-1"

tItem[3316225]["Text3-1"] = {311}
tItem[3316225]["tOption3-1"] = {311,312,313}
tItem[3316225]["OptionFunc311"] = "JuneAction_CoatPack</N>3316225</N>30</N>1"
tItem[3316225]["OptionFunc312"] = "JuneAction_CoatPack</N>3316225</N>30</N>2"
tItem[3316225]["OptionFunc313"] = "JuneAction_CoatPack</N>3316225</N>30</N>3"


--武器自选礼包
tItemFace[3316227] = 2965
tItem[3316227]=tItem[3316227] or {}
tItem[3316227]["Function"]=function(nItemId,sItemName)
    JuneAction_UsePack(nItemId)
end

--武器勇士对话
tItem[3316227]["Text6-1"]={111}
tItem[3316227]["Text111"]=tJuneAction_Text["Weapon"]

tItem[3316227]["tOption6-1"]={61,62,63,64}
tItem[3316227]["Option61"]=tJuneAction_Text["ItemName"][410059]
tItem[3316227]["Option62"]=tJuneAction_Text["ItemName"][420059]
tItem[3316227]["Option63"]=tJuneAction_Text["ItemName"][480059]
tItem[3316227]["Option64"]=tJuneAction_Text["ReGive"]
tItem[3316227]["OptionFunc61"]="JuneAction_SelectOption</N>3316227</N>10</N>1"
tItem[3316227]["OptionFunc62"]="JuneAction_SelectOption</N>3316227</N>10</N>2"
tItem[3316227]["OptionFunc63"]="JuneAction_SelectOption</N>3316227</N>10</N>3"

--武器战士对话
tItem[3316227]["Text7-1"]={111}
tItem[3316227]["tOption7-1"]={71,72,74,64}
tItem[3316227]["Option71"]=tJuneAction_Text["ItemName"][560059]
tItem[3316227]["Option72"]=tJuneAction_Text["ItemName"][561059]
tItem[3316227]["Option73"]=tJuneAction_Text["ItemName"][900009]
tItem[3316227]["Option74"]=tJuneAction_Text["ItemName"][624059]

tItem[3316227]["OptionFunc71"]="JuneAction_SelectOption</N>3316227</N>20</N>1"
tItem[3316227]["OptionFunc72"]="JuneAction_SelectOption</N>3316227</N>20</N>2"
tItem[3316227]["OptionFunc73"]="JuneAction_SelectOption</N>3316227</N>20</N>3"
tItem[3316227]["OptionFunc74"]="JuneAction_SelectOption</N>3316227</N>20</N>4"

--武器弓手对话
tItem[3316227]["Text8-1"]={111}
tItem[3316227]["tOption8-1"]={81,82,64}
tItem[3316227]["Option81"]=tJuneAction_Text["ItemName"][500049]
tItem[3316227]["Option82"]=tJuneAction_Text["ItemName"][613049]

tItem[3316227]["OptionFunc81"]="JuneAction_SelectOption</N>3316227</N>40</N>1"
tItem[3316227]["OptionFunc82"]="JuneAction_SelectOption</N>3316227</N>40</N>2"


--武器刺客对话
tItem[3316227]["Text9-1"]={111}
tItem[3316227]["tOption9-1"]={91,92,64}
tItem[3316227]["Option91"]=tJuneAction_Text["ItemName"][511059]
tItem[3316227]["Option92"]=tJuneAction_Text["ItemName"][601059]

tItem[3316227]["OptionFunc91"]="JuneAction_SelectOption</N>3316227</N>50</N>1"
tItem[3316227]["OptionFunc92"]="JuneAction_SelectOption</N>3316227</N>50</N>2"

--武器海盗对话
tItem[3316227]["Text10-1"]={111}
tItem[3316227]["tOption10-1"]={101,102,64}
tItem[3316227]["Option101"]=tJuneAction_Text["ItemName"][611059]
tItem[3316227]["Option102"]=tJuneAction_Text["ItemName"][612059]

tItem[3316227]["OptionFunc101"]="JuneAction_SelectOption</N>3316227</N>70</N>1"
tItem[3316227]["OptionFunc102"]="JuneAction_SelectOption</N>3316227</N>70</N>2"

--道士
tItem[3316227]["Text11-1"]={111}
tItem[3316227]["tOption11-1"]={111,112,64}
tItem[3316227]["Option111"]=tJuneAction_Text["ItemName"][421069]
tItem[3316227]["Option112"]=tJuneAction_Text["ItemName"][619059]

tItem[3316227]["OptionFunc111"]="JuneAction_SelectOption</N>3316227</N>100</N>1"
tItem[3316227]["OptionFunc112"]="JuneAction_SelectOption</N>3316227</N>100</N>2"

--雷神
tItem[3316227]["Text12-1"]={111}
tItem[3316227]["tOption12-1"]={121,122,64}
tItem[3316227]["Option121"]=tJuneAction_Text["ItemName"][681059]
tItem[3316227]["Option122"]=tJuneAction_Text["ItemName"][680059]

tItem[3316227]["OptionFunc121"]="JuneAction_SelectOption</N>3316227</N>90</N>1"
tItem[3316227]["OptionFunc122"]="JuneAction_SelectOption</N>3316227</N>90</N>2"


--防具自选礼包
tItemFace[3316228] = 2966
tItem[3316228]=tItem[3316228] or {}
tItem[3316228]["Function"]=function(nItemId,sItemName)
    JuneAction_UsePack(nItemId)
end

--勇士
tItem[3316228]["Text6-1"]={111}
tItem[3316228]["Text111"]=tJuneAction_Text["Weapon"]

tItem[3316228]["tOption6-1"]={61,62,64}
tItem[3316228]["Option61"]=tJuneAction_Text["ItemName"][118029]
tItem[3316228]["Option62"]=tJuneAction_Text["ItemName"][130029]
tItem[3316228]["Option64"]=tJuneAction_Text["ReGive"]
tItem[3316228]["OptionFunc61"]="JuneAction_SelectOption</N>3316228</N>10</N>1"
tItem[3316228]["OptionFunc62"]="JuneAction_SelectOption</N>3316228</N>10</N>2"


--战士
tItem[3316228]["Text7-1"]={111}
tItem[3316228]["tOption7-1"]={71,72,64}
tItem[3316228]["Option71"]=tJuneAction_Text["ItemName"][111029]
tItem[3316228]["Option72"]=tJuneAction_Text["ItemName"][131029]

tItem[3316228]["OptionFunc71"]="JuneAction_SelectOption</N>3316228</N>20</N>1"
tItem[3316228]["OptionFunc72"]="JuneAction_SelectOption</N>3316228</N>20</N>2"

--弓手
tItem[3316228]["Text8-1"]={111}
tItem[3316228]["tOption8-1"]={81,82,64}
tItem[3316228]["Option81"]=tJuneAction_Text["ItemName"][113019]
tItem[3316228]["Option82"]=tJuneAction_Text["ItemName"][133019]
tItem[3316228]["OptionFunc81"]="JuneAction_SelectOption</N>3316228</N>40</N>1"
tItem[3316228]["OptionFunc82"]="JuneAction_SelectOption</N>3316228</N>40</N>2"


--忍者
tItem[3316228]["Text9-1"]={111}
tItem[3316228]["tOption9-1"]={91,92,93,64}
tItem[3316228]["Option91"]=tJuneAction_Text["ItemName"][112029]
tItem[3316228]["Option92"]=tJuneAction_Text["ItemName"][123029]
tItem[3316228]["Option93"]=tJuneAction_Text["ItemName"][135029]

tItem[3316228]["OptionFunc91"]="JuneAction_SelectOption</N>3316228</N>50</N>1"
tItem[3316228]["OptionFunc92"]="JuneAction_SelectOption</N>3316228</N>50</N>2"
tItem[3316228]["OptionFunc93"]="JuneAction_SelectOption</N>3316228</N>50</N>3"

--海盗
tItem[3316228]["Text10-1"]={111}
tItem[3316228]["tOption10-1"]={101,102,64}
tItem[3316228]["Option101"]=tJuneAction_Text["ItemName"][144029]
tItem[3316228]["Option102"]=tJuneAction_Text["ItemName"][139029]

tItem[3316228]["OptionFunc101"]="JuneAction_SelectOption</N>3316228</N>70</N>1"
tItem[3316228]["OptionFunc102"]="JuneAction_SelectOption</N>3316228</N>70</N>2"

--道士
tItem[3316228]["Text11-1"]={111}
tItem[3316228]["tOption11-1"]={111,112,64}
tItem[3316228]["Option111"]=tJuneAction_Text["ItemName"][114029]
tItem[3316228]["Option112"]=tJuneAction_Text["ItemName"][134029]

tItem[3316228]["OptionFunc111"]="JuneAction_SelectOption</N>3316228</N>100</N>1"
tItem[3316228]["OptionFunc112"]="JuneAction_SelectOption</N>3316228</N>100</N>2"

--雷神
tItem[3316228]["Text12-1"]={111}
tItem[3316228]["tOption12-1"]={121,122,64}
tItem[3316228]["Option121"]=tJuneAction_Text["ItemName"][146029]
tItem[3316228]["Option122"]=tJuneAction_Text["ItemName"][102029]

tItem[3316228]["OptionFunc121"]="JuneAction_SelectOption</N>3316228</N>90</N>1"
tItem[3316228]["OptionFunc122"]="JuneAction_SelectOption</N>3316228</N>90</N>2"

--铁扇
tItem[3316228]["Text13-1"]={111}
tItem[3316228]["tOption13-1"]={131,132,64}
tItem[3316228]["Option131"]=tJuneAction_Text["ItemName"][170029]
tItem[3316228]["Option132"]=tJuneAction_Text["ItemName"][101029]

tItem[3316228]["OptionFunc131"]="JuneAction_SelectOption</N>3316228</N>160</N>1"
tItem[3316228]["OptionFunc132"]="JuneAction_SelectOption</N>3316228</N>160</N>2"

--武僧
tItem[3316228]["Text14-1"]={111}
tItem[3316228]["tOption14-1"]={141,142,64}
tItem[3316228]["Option141"]=tJuneAction_Text["ItemName"][143029]
tItem[3316228]["Option142"]=tJuneAction_Text["ItemName"][136029]

tItem[3316228]["OptionFunc141"]="JuneAction_SelectOption</N>3316228</N>60</N>1"
tItem[3316228]["OptionFunc142"]="JuneAction_SelectOption</N>3316228</N>60</N>2"

--截拳
tItem[3316228]["Text15-1"]={111}
tItem[3316228]["tOption15-1"]={151,152,64}
tItem[3316228]["Option151"]=tJuneAction_Text["ItemName"][148029]
tItem[3316228]["Option152"]=tJuneAction_Text["ItemName"][138029]

tItem[3316228]["OptionFunc151"]="JuneAction_SelectOption</N>3316228</N>80</N>1"
tItem[3316228]["OptionFunc152"]="JuneAction_SelectOption</N>3316228</N>80</N>2"
