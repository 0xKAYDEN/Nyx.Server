------------------------------------------------------------------------------------
--Name：            200224[英文征服][活动脚本]3月忍者觉醒新服-15次签到卡（3.24-4.23）
--Creator:      方政
--Created:     2020-02-24
------------------------------------------------------------------------------------
-- 命名前缀
-- NinjaSign_

-- logid 12001877

-- #stc 掩码说明 
-- #stc(216,36) 记录已领取天数
-- #stc(216,37) 单日已领取
-- #stc(216,39) 7天5星时装自选盒选择索引
-- #stc(216,40) 7天5星坐骑自选盒选择索引
-- #stc(216,48) 签到卡已领取


----------------------------------表配置部分--------------------------------------------
-- 掩码部分
local tNinjaSign_Stc = {}
-- 记录已领取天数
tNinjaSign_Stc[1] = {}
tNinjaSign_Stc[1]["EventType"] = 216
tNinjaSign_Stc[1]["DataType"] = 36
-- 单日已领取
tNinjaSign_Stc[2] = {}
tNinjaSign_Stc[2]["EventType"] = 216
tNinjaSign_Stc[2]["DataType"] = 37
-- 7天5星时装自选盒选择索引
tNinjaSign_Stc[3315583] = {}
tNinjaSign_Stc[3315583]["EventType"] = 216
tNinjaSign_Stc[3315583]["DataType"] = 39
-- 7天5星坐骑自选盒选择索引
tNinjaSign_Stc[3315584] = {}
tNinjaSign_Stc[3315584]["EventType"] = 216
tNinjaSign_Stc[3315584]["DataType"] = 40

-- log部分
local tNinjaSign_Log = {}
-- 消费天石提升奖励
tNinjaSign_Log["EmoneyBuy"] = "1000	1453	27	27	1	"
-- 过期删除签到卡
tNinjaSign_Log["OverDue"] = "0,0,%d,%d,12001877,3,0,0"

local tNinjaSign_Data = {}
-- 花费天石
tNinjaSign_Data["Price"] = 27
-- 签到卡id
tNinjaSign_Data["SignId"] = 3315582
-- 对话引索
tNinjaSign_Data["DiaIndex"] = {}
tNinjaSign_Data["DiaIndex"]["Before15"] = "1-1"
tNinjaSign_Data["DiaIndex"]["Time15"] = "1-2"
tNinjaSign_Data["DiaIndex"][1] = "1-2"
tNinjaSign_Data["DiaIndex"][2] = "1-3"

---------------------------------奖励部分

local tNinjaSign_RewardItem = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][1]
	tNinjaSign_RewardItem[3315582] = {}
	tNinjaSign_RewardItem[3315582][1] = {}
	tNinjaSign_RewardItem[3315582][1]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][1]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][1]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][1]["RewardItem"][1]["Id"] = 722146 -- EXPOrb[722146][属性:11][叠加:0][金币:0], 【表格】经验球*10
	tNinjaSign_RewardItem[3315582][1]["RewardItem"][1]["Attr"] = "0 10" -- EXPOrb*10
	tNinjaSign_RewardItem[3315582][1]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][2] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][2]
	tNinjaSign_RewardItem[3315582][2]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][2]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][2]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][2]["RewardItem"][1]["Id"] = 720027 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星卷*2
	tNinjaSign_RewardItem[3315582][2]["RewardItem"][1]["Attr"] = "0 2 3" -- MeteorScroll（赠）*2
	tNinjaSign_RewardItem[3315582][2]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][3] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][3]
	tNinjaSign_RewardItem[3315582][3]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][3]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][3]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][3]["RewardItem"][1]["Id"] = 3315583 -- 7-day5-starGarmentPack[3315583][属性:9][叠加:1][金币:0], 【表格】时效五星外套可选包（付费升级）
	tNinjaSign_RewardItem[3315582][3]["RewardItem"][1]["Attr"] = "0 1" -- 7-day5-starGarmentPack*1
	tNinjaSign_RewardItem[3315582][3]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][3]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][4] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][4]
	tNinjaSign_RewardItem[3315582][4]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][4]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][4]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][4]["RewardItem"][1]["Id"] = 720027 -- MeteorScroll[720027][属性:0][叠加:0][金币:0], 【表格】流星卷*5
	tNinjaSign_RewardItem[3315582][4]["RewardItem"][1]["Attr"] = "0 5 3" -- MeteorScroll（赠）*5
	tNinjaSign_RewardItem[3315582][4]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][4]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][5] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][5]
	tNinjaSign_RewardItem[3315582][5]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][5]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][5]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][5]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】+3赤炼石*2
	tNinjaSign_RewardItem[3315582][5]["RewardItem"][1]["Attr"] = "0 2 3" -- +3Stone（赠）*2
	tNinjaSign_RewardItem[3315582][5]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][5]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][6] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][6]
	tNinjaSign_RewardItem[3315582][6]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][6]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][6]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][6]["RewardItem"][1]["Id"] = 3314216 -- +3SteedPack[3314216][属性:8][叠加:1][金币:0], 【表格】+3马匹*2
	tNinjaSign_RewardItem[3315582][6]["RewardItem"][1]["Attr"] = "0 2 3" -- +3SteedPack（赠）*2
	tNinjaSign_RewardItem[3315582][6]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][6]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][7] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][7]
	tNinjaSign_RewardItem[3315582][7]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][7]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][7]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][7]["RewardItem"][1]["Id"] = 3315584 -- 7-day5-starMountArmorPack[3315584][属性:9][叠加:1][金币:0], 【表格】时效五星骑宠外套（付费升级）
	tNinjaSign_RewardItem[3315582][7]["RewardItem"][1]["Attr"] = "0 1" -- 7-day5-starMountArmorPack*1
	tNinjaSign_RewardItem[3315582][7]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][7]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][7]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][8] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][8]
	tNinjaSign_RewardItem[3315582][8]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][8]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][8]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][8]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*3
	tNinjaSign_RewardItem[3315582][8]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tNinjaSign_RewardItem[3315582][8]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][8]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][8]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][9] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][9]
	tNinjaSign_RewardItem[3315582][9]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][9]["RewardCultivation"] = {}
	tNinjaSign_RewardItem[3315582][9]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】1000修行值
	tNinjaSign_RewardItem[3315582][9]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][9]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][9]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][10] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][10]
	tNinjaSign_RewardItem[3315582][10]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][10]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][10]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][10]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠*5
	tNinjaSign_RewardItem[3315582][10]["RewardItem"][1]["Attr"] = "0 5 3" -- DragonBall（赠）*5
	tNinjaSign_RewardItem[3315582][10]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][10]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][10]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][11] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][11]
	tNinjaSign_RewardItem[3315582][11]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][11]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][11]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][11]["RewardItem"][1]["Id"] = 3314248 -- YellowRunePack[3314248][属性:8][叠加:10000][金币:0], 【表格】普通黄色神纹精粹随机包*1
	tNinjaSign_RewardItem[3315582][11]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRunePack（赠）*1
	tNinjaSign_RewardItem[3315582][11]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][11]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][12] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][12]
	tNinjaSign_RewardItem[3315582][12]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][12]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][12]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][12]["RewardItem"][1]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】回气丹*2
	tNinjaSign_RewardItem[3315582][12]["RewardItem"][1]["Attr"] = "0 2 3" -- Vital~Pill（赠）*2
	tNinjaSign_RewardItem[3315582][12]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][12]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][13] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][13]
	tNinjaSign_RewardItem[3315582][13]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][13]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][13]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][13]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹*30
	tNinjaSign_RewardItem[3315582][13]["RewardItem"][1]["Attr"] = "0 30 3" -- YellowRuneEssence（赠）*30
	tNinjaSign_RewardItem[3315582][13]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][13]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][13]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][14] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][14]
	tNinjaSign_RewardItem[3315582][14]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][14]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][14]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][14]["RewardItem"][1]["Id"] = 700073 -- TortoiseGem[700073][属性:0][叠加:0][金币:0], 【表格】优质玄元宝石*1
	tNinjaSign_RewardItem[3315582][14]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseGem（赠）*1
	tNinjaSign_RewardItem[3315582][14]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][14]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][14]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315582][15] = {}
	-- ===弦月签到卡
	-- ===索引: tNinjaSign_RewardItem[3315582][15]
	-- ===删除: 3315582,1
	tNinjaSign_RewardItem[3315582][15]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315582][15]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315582][15]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315582][15]["DeleteItem"][1]["Id"] = 3315582 -- 【库】CrescentSign-inCard[属性:9]
	tNinjaSign_RewardItem[3315582][15]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315582][15]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315582][15]["RewardItem"][1]["Id"] = 1088000 -- DragonBall[1088000][属性:0][叠加:0][金币:10000], 【表格】龙珠*10
	tNinjaSign_RewardItem[3315582][15]["RewardItem"][1]["Attr"] = "0 10 3" -- DragonBall（赠）*10
	tNinjaSign_RewardItem[3315582][15]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315582][15]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315582][15]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315583] = {}
	-- ===7天5星时装自选盒
	-- ===索引: tNinjaSign_RewardItem[3315583][1]
	-- ===删除: 3315583,1
	tNinjaSign_RewardItem[3315583][1] = {}
	tNinjaSign_RewardItem[3315583][1]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315583][1]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315583][1]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315583][1]["DeleteItem"][1]["Id"] = 3315583 -- 【库】7-day5-starGarmentPack[属性:9]
	tNinjaSign_RewardItem[3315583][1]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315583][1]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315583][1]["RewardItem"][1]["Id"] = 191095 -- MadnightofFear[191095][属性:0][叠加:0][金币:0], 【表格】Madnightof Fear*1
	tNinjaSign_RewardItem[3315583][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑MadnightofFear（赠）*1
	tNinjaSign_RewardItem[3315583][1]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315583][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315583][1]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315583][2] = {}
	-- ===7天5星时装自选盒
	-- ===索引: tNinjaSign_RewardItem[3315583][2]
	-- ===删除: 3315583,1
	tNinjaSign_RewardItem[3315583][2]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315583][2]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315583][2]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315583][2]["DeleteItem"][1]["Id"] = 3315583 -- 【库】7-day5-starGarmentPack[属性:9]
	tNinjaSign_RewardItem[3315583][2]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315583][2]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315583][2]["RewardItem"][1]["Id"] = 195905 -- GalaxyDream(Grace)[195905][属性:0][叠加:0][金币:0], 【表格】GalaxyDream（Grace）*1
	tNinjaSign_RewardItem[3315583][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑GalaxyDream(Grace)（赠）*1
	tNinjaSign_RewardItem[3315583][2]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315583][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315583][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315583][3] = {}
	-- ===7天5星时装自选盒
	-- ===索引: tNinjaSign_RewardItem[3315583][3]
	-- ===删除: 3315583,1
	tNinjaSign_RewardItem[3315583][3]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315583][3]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315583][3]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315583][3]["DeleteItem"][1]["Id"] = 3315583 -- 【库】7-day5-starGarmentPack[属性:9]
	tNinjaSign_RewardItem[3315583][3]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315583][3]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315583][3]["RewardItem"][1]["Id"] = 194395 --  194395 LunarAngelicRobe, 【表格】LunarAngelicRobe*1
	tNinjaSign_RewardItem[3315583][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的 194395 LunarAngelicRobe（赠）*1
	tNinjaSign_RewardItem[3315583][3]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315583][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315583][3]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315583][4] = {}
	-- ===7天5星时装自选盒
	-- ===索引: tNinjaSign_RewardItem[3315583][4]
	-- ===删除: 3315583,1
	tNinjaSign_RewardItem[3315583][4]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315583][4]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315583][4]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315583][4]["DeleteItem"][1]["Id"] = 3315583 -- 【库】7-day5-starGarmentPack[属性:9]
	tNinjaSign_RewardItem[3315583][4]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315583][4]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315583][4]["RewardItem"][1]["Id"] = 191095 -- MadnightofFear[191095][属性:0][叠加:0][金币:0], 【表格】Madnightof Fear*1
	tNinjaSign_RewardItem[3315583][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑MadnightofFear（赠）*1
	tNinjaSign_RewardItem[3315583][4]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315583][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315583][4]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315583][5] = {}
	-- ===7天5星时装自选盒
	-- ===索引: tNinjaSign_RewardItem[3315583][5]
	-- ===删除: 3315583,1
	tNinjaSign_RewardItem[3315583][5]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315583][5]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315583][5]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315583][5]["DeleteItem"][1]["Id"] = 3315583 -- 【库】7-day5-starGarmentPack[属性:9]
	tNinjaSign_RewardItem[3315583][5]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315583][5]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315583][5]["RewardItem"][1]["Id"] = 195905 -- GalaxyDream(Grace)[195905][属性:0][叠加:0][金币:0], 【表格】GalaxyDream（Grace）*1
	tNinjaSign_RewardItem[3315583][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑GalaxyDream(Grace)（赠）*1
	tNinjaSign_RewardItem[3315583][5]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315583][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315583][5]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315583][6] = {}
	-- ===7天5星时装自选盒
	-- ===索引: tNinjaSign_RewardItem[3315583][6]
	-- ===删除: 3315583,1
	tNinjaSign_RewardItem[3315583][6]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315583][6]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315583][6]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315583][6]["DeleteItem"][1]["Id"] = 3315583 -- 【库】7-day5-starGarmentPack[属性:9]
	tNinjaSign_RewardItem[3315583][6]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315583][6]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315583][6]["RewardItem"][1]["Id"] = 194395 --  194395 LunarAngelicRobe, 【表格】LunarAngelicRobe*1
	tNinjaSign_RewardItem[3315583][6]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的 194395 LunarAngelicRobe（赠）*1
	tNinjaSign_RewardItem[3315583][6]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315583][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315583][6]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315584] = {}
	tNinjaSign_RewardItem[3315584][1] = {}
	-- ===7天5星坐骑自选盒
	-- ===索引: tNinjaSign_RewardItem[3315584][1]
	-- ===删除: 3315584,1
	tNinjaSign_RewardItem[3315584][1]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315584][1]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315584][1]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315584][1]["DeleteItem"][1]["Id"] = 3315584 -- 【库】7-day5-starMountArmorPack[属性:9]
	tNinjaSign_RewardItem[3315584][1]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315584][1]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315584][1]["RewardItem"][1]["Id"] = 200669 -- ShiningLion(Glory)[200669][属性:0][叠加:0][金币:0], 【表格】ShiningLion（Glory）*1
	tNinjaSign_RewardItem[3315584][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑ShiningLion(Glory)（赠）*1
	tNinjaSign_RewardItem[3315584][1]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315584][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315584][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===7天5星坐骑自选盒
	-- ===索引: tNinjaSign_RewardItem[3315584][2]
	-- ===删除: 3315584,1
	tNinjaSign_RewardItem[3315584][2] = {}
	tNinjaSign_RewardItem[3315584][2]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315584][2]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315584][2]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315584][2]["DeleteItem"][1]["Id"] = 3315584 -- 【库】7-day5-starMountArmorPack[属性:9]
	tNinjaSign_RewardItem[3315584][2]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315584][2]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315584][2]["RewardItem"][1]["Id"] = 200560 -- LunarMonkey[200560][属性:0][叠加:0][金币:0], 【表格】LunarMonkey*1
	tNinjaSign_RewardItem[3315584][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑LunarMonkey（赠）*1
	tNinjaSign_RewardItem[3315584][2]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315584][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315584][2]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315584][3] = {}
	-- ===7天5星坐骑自选盒
	-- ===索引: tNinjaSign_RewardItem[3315584][3]
	-- ===删除: 3315584,1
	tNinjaSign_RewardItem[3315584][3]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315584][3]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315584][3]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315584][3]["DeleteItem"][1]["Id"] = 3315584 -- 【库】7-day5-starMountArmorPack[属性:9]
	tNinjaSign_RewardItem[3315584][3]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315584][3]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315584][3]["RewardItem"][1]["Id"] = 200614 -- PacificCloud[200614][属性:0][叠加:0][金币:0], 【表格】PacificCloud*1
	tNinjaSign_RewardItem[3315584][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑PacificCloud（赠）*1
	tNinjaSign_RewardItem[3315584][3]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315584][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315584][3]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315584][4] = {}
	-- ===7天5星坐骑自选盒
	-- ===索引: tNinjaSign_RewardItem[3315584][4]
	-- ===删除: 3315584,1
	tNinjaSign_RewardItem[3315584][4]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315584][4]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315584][4]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315584][4]["DeleteItem"][1]["Id"] = 3315584 -- 【库】7-day5-starMountArmorPack[属性:9]
	tNinjaSign_RewardItem[3315584][4]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315584][4]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315584][4]["RewardItem"][1]["Id"] = 200669 -- ShiningLion(Glory)[200669][属性:0][叠加:0][金币:0], 【表格】ShiningLion（Glory）*1
	tNinjaSign_RewardItem[3315584][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑ShiningLion(Glory)（赠）*1
	tNinjaSign_RewardItem[3315584][4]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315584][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315584][4]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315584][5] = {}
	-- ===7天5星坐骑自选盒
	-- ===索引: tNinjaSign_RewardItem[3315584][5]
	-- ===删除: 3315584,1
	tNinjaSign_RewardItem[3315584][5]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315584][5]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315584][5]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315584][5]["DeleteItem"][1]["Id"] = 3315584 -- 【库】7-day5-starMountArmorPack[属性:9]
	tNinjaSign_RewardItem[3315584][5]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315584][5]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315584][5]["RewardItem"][1]["Id"] = 200560 -- LunarMonkey[200560][属性:0][叠加:0][金币:0], 【表格】LunarMonkey*1
	tNinjaSign_RewardItem[3315584][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑LunarMonkey（赠）*1
	tNinjaSign_RewardItem[3315584][5]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315584][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315584][5]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaSign_RewardItem[3315584][6] = {}
	-- ===7天5星坐骑自选盒
	-- ===索引: tNinjaSign_RewardItem[3315584][6]
	-- ===删除: 3315584,1
	tNinjaSign_RewardItem[3315584][6]["LogId"] = 12001877
	tNinjaSign_RewardItem[3315584][6]["DeleteItem"] = {}
	tNinjaSign_RewardItem[3315584][6]["DeleteItem"][1] = {}
	tNinjaSign_RewardItem[3315584][6]["DeleteItem"][1]["Id"] = 3315584 -- 【库】7-day5-starMountArmorPack[属性:9]
	tNinjaSign_RewardItem[3315584][6]["RewardItem"] = {}
	tNinjaSign_RewardItem[3315584][6]["RewardItem"][1] = {}
	tNinjaSign_RewardItem[3315584][6]["RewardItem"][1]["Id"] = 200614 -- PacificCloud[200614][属性:0][叠加:0][金币:0], 【表格】PacificCloud*1
	tNinjaSign_RewardItem[3315584][6]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1" -- 30天时效(激活)的1%神佑PacificCloud（赠）*1
	tNinjaSign_RewardItem[3315584][6]["RewardEffect"] = {}
	tNinjaSign_RewardItem[3315584][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_RewardItem[3315584][6]["RewardEffect"]["Effect"] = "angelwing"

	local tNinjaSign_Reward = {}
	tNinjaSign_Reward[3315582] = {}
	-- ===上线给签到卡
	-- ===索引: tNinjaSign_Reward[3315582][6]
	-- ===删除: 3315582,1
	tNinjaSign_Reward[3315582]["LogId"] = 12001877
	tNinjaSign_Reward[3315582]["RewardItem"] = {}
	tNinjaSign_Reward[3315582]["RewardItem"][1] = {}
	tNinjaSign_Reward[3315582]["RewardItem"][1]["Id"] = 3315582
	tNinjaSign_Reward[3315582]["RewardItem"][1]["Attr"] = "0 1"
	tNinjaSign_Reward[3315582]["RewardEffect"] = {}
	tNinjaSign_Reward[3315582]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaSign_Reward[3315582]["RewardEffect"]["Effect"] = "angelwing"


----------------------------------逻辑部分---------------------------------------------
-- 设置掩码
function NinjaSign_SetStcValue(nNinjaSign_Index,nNinjaSign_Num)
	local nNinjaSign_Event = tNinjaSign_Stc[nNinjaSign_Index]["EventType"]
	local nNinjaSign_Data = tNinjaSign_Stc[nNinjaSign_Index]["DataType"]
	local nNinjaSign_UserId = Get_UserId()
	
	Task_SetStatistic(nNinjaSign_Event, nNinjaSign_Data,nNinjaSign_Num,1,nNinjaSign_UserId)
	Task_SetStcTimestamp(nNinjaSign_Event,nNinjaSign_Data,0,nNinjaSign_UserId)
end

-- 获取掩码值
function NinjaSign_GetStcValue(nIndex)
	local nNinjaSign_Event = tNinjaSign_Stc[nIndex]["EventType"]
	local nNinjaSign_Data = tNinjaSign_Stc[nIndex]["DataType"]
	local nNinjaSign_UserId = Get_UserId()
	
	local nNinjaSign_Dat = Get_UserStatisticValue(nNinjaSign_Event,nNinjaSign_Data,nNinjaSign_UserId)
	return nNinjaSign_Dat
end

-- 重置掩码
function NinjaSign_ResetStcValue(nNinjaSign_Index)
	local nNinjaSign_UserId = Get_UserId()
	local nNinjaSign_Event = tNinjaSign_Stc[nNinjaSign_Index]["EventType"]
	local nNinjaSign_Data = tNinjaSign_Stc[nNinjaSign_Index]["DataType"]
	
	Task_SetStatistic(nNinjaSign_Event, nNinjaSign_Data,0,1,nNinjaSign_UserId)
	Task_SetStcTimestamp(nNinjaSign_Event, nNinjaSign_Data,0,nNinjaSign_UserId)
end

-- 隔天重置掩码
function NinjaSign_NextDayResetStcValue(nNinjaSign_Index)
	local nNinjaSign_UserId = Get_UserId()
	local nNinjaSign_Event = tNinjaSign_Stc[nNinjaSign_Index]["EventType"]
	local nNinjaSign_Data = tNinjaSign_Stc[nNinjaSign_Index]["DataType"]
	if Task_StcInterval(nNinjaSign_Event, nNinjaSign_Data,1,4,nNinjaSign_UserId) then
		Task_SetStatistic(nNinjaSign_Event, nNinjaSign_Data,0,1,nNinjaSign_UserId)
		Task_SetStcTimestamp(nNinjaSign_Event, nNinjaSign_Data,0,nNinjaSign_UserId)
	end
end
---------------------------------物品使用
-- 忍者签到卡
function NinjaSign_SignCard(nNinjaSign_ItemId)
	-- 过期删除物品
	if NinjaSign_OverdueDelItem(nNinjaSign_ItemId) then
		return
	end
	local nNinjaSign_Dat2 = NinjaSign_GetStcValue(2)
	local nNinjaSign_UserId = Get_UserId()
	-- 判断当天是否已开启
	if nNinjaSign_Dat2 >=1 then
		User_TalkChannel2005(tNinjaSign_Text[nNinjaSign_ItemId]["Get"],nNinjaSign_UserId)
		return
	end
	
	local nNinjaSign_Dat1 = NinjaSign_GetStcValue(1) + 1
	local nNinjaSign_Space = RewardTemplate_GetRewardSpace(tNinjaSign_RewardItem[nNinjaSign_ItemId][nNinjaSign_Dat1])
	-- 背包不足
	if not User_CheckLeftSpace(nNinjaSign_Space) then
		User_TalkChannel2005(string.format(tNinjaSign_Text[nNinjaSign_ItemId]["NoSpace"],nNinjaSign_Space),nNinjaSign_UserId)
		return
	end
	
	-- 给奖励
	NinjaSign_SetStcValue(1,nNinjaSign_Dat1)
	NinjaSign_SetStcValue(2,1)
	RewardTemplate_UseItemAndMsg(tNinjaSign_RewardItem[nNinjaSign_ItemId][nNinjaSign_Dat1])
end

-- 7天外套自选盒
-- 选择外套
function NinjaSign_Choise(nNinjaSign_ItemId,nNinjaSign_Index)
	-- 设置掩码
	NinjaSign_SetStcValue(nNinjaSign_ItemId,nNinjaSign_Index)
	
	local nNinjaSign_Dat = NinjaSign_GetStcValue(nNinjaSign_ItemId)
	local sNinjaSign_Award = tNinjaSign_Text[nNinjaSign_ItemId]["Coat"][nNinjaSign_Dat]
	-- 设置对话内容
	tItem[nNinjaSign_ItemId]["Text121"] = string.format(tNinjaSign_Text[nNinjaSign_ItemId]["Text121"],sNinjaSign_Award)
	
	-- 跳转对话
	LinkItemGossipFunc_New(nNinjaSign_ItemId,tNinjaSign_Data["DiaIndex"][1])
end

-- 不升级奖励
function NinjaSign_NormalAward(nNinjaSign_ItemId)
	-- 奖励引索
	local nNinjaSign_Dat = NinjaSign_GetStcValue(nNinjaSign_ItemId)
	local nNinjaSign_UserId = Get_UserId()
	
	local nNinjaSign_Space = RewardTemplate_GetRewardSpace(tNinjaSign_RewardItem[nNinjaSign_ItemId][nNinjaSign_Dat])
		-- 背包不足
	if not User_CheckLeftSpace(nNinjaSign_Space) then
		User_TalkChannel2005(tNinjaSign_Text[nNinjaSign_ItemId]["NoSpace"],nNinjaSign_UserId)
		return
	end
	
	-- 重置掩码值
	NinjaSign_ResetStcValue(nNinjaSign_ItemId)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tNinjaSign_RewardItem[nNinjaSign_ItemId][nNinjaSign_Dat])
end

-- 二次确认是否消费天石
function NinjaSign_Confirm(nNinjaSign_ItemId)
	local nNinjaSign_Dat = NinjaSign_GetStcValue(nNinjaSign_ItemId)
	local sNinjaSign_Award = tNinjaSign_Text[nNinjaSign_ItemId]["Coat"][nNinjaSign_Dat]
	-- 设置对话内容
	tItem[nNinjaSign_ItemId]["Text131"] = string.format(tNinjaSign_Text[nNinjaSign_ItemId]["Text131"],sNinjaSign_Award)
	
		-- 跳转对话
	LinkItemGossipFunc_New(nNinjaSign_ItemId,tNinjaSign_Data["DiaIndex"][2])
	return
end

-- 升级奖励
function NinjaSign_UpAward(nNinjaSign_ItemId)
	-- 奖励引索
	local nNinjaSign_Dat = NinjaSign_GetStcValue(nNinjaSign_ItemId) + 3
	local nNinjaSign_UserId = Get_UserId()
	
	local nNinjaSign_Space = RewardTemplate_GetRewardSpace(tNinjaSign_RewardItem[nNinjaSign_ItemId][nNinjaSign_Dat])
		-- 背包不足
	if not User_CheckLeftSpace(nNinjaSign_Space) then
		User_TalkChannel2005(tNinjaSign_Text[nNinjaSign_ItemId]["NoSpace"],nNinjaSign_UserId)
		return
	end
	
	-- 天石不足
	local nNinjaSign_Emoney = Get_UserEMoney()
	if nNinjaSign_Emoney < tNinjaSign_Data["Price"] then
		User_TalkChannel2005(tNinjaSign_Text[nNinjaSign_ItemId]["NoEMoney"],nNinjaSign_UserId)
		return
	end
	-- 扣天石
	if not User_AddEMoney(-tNinjaSign_Data["Price"]) then
		return
	end
	-- 打log
	Sys_SaveEmoneyBuy(tNinjaSign_Log["EmoneyBuy"])
	
	-- 重置掩码值
	NinjaSign_ResetStcValue(nNinjaSign_ItemId)
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tNinjaSign_RewardItem[nNinjaSign_ItemId][nNinjaSign_Dat])
end

-- 过期删除物品
function NinjaSign_OverdueDelItem(nNinjaSign_ItemId)
	local nNinjaSign_UserId = Get_UserId()
	local nNinjaSign_ItemNum = Get_CountItemType(nNinjaSign_ItemId,0)
	-- 活动期间
	local sNinjaSign_ActivityTime = tActivityTime["NinjaSign"]["ActivityTime"]
	-- 判断时间
	if not Sys_ChkFullTime(sNinjaSign_ActivityTime) then
		if Item_ChkItem(nNinjaSign_ItemId) and Item_DelAllItemByType(nNinjaSign_ItemId)then
			User_TalkChannel2005(tNinjaSign_Text[nNinjaSign_ItemId]["OverDue"],nNinjaSign_UserId)
			local sNinjaSign_Log = tNinjaSign_Log["OverDue"]
			Sys_SaveActionFestivalLog(string.format(sNinjaSign_Log,nNinjaSign_ItemId,nNinjaSign_ItemNum))
		end
		return true
	end
	return
end

---------------------------------物品部分---------------------------------------------

-- 弦月签到卡
tItemFace[3315582] = 623
tItem[3315582] = tItem[3315582] or {}
tItem[3315582]["DialogueText"] = tNinjaSign_Text[3315582]
tItem[3315582]["Function"] = function(nItemId,sItemName)
	-- 过期删除物品
	if NinjaSign_OverdueDelItem(nItemId) then
		return
	end
	-- 隔天重置掩码
	NinjaSign_NextDayResetStcValue(2)
	
	local nNinjaSign_Dat1 = NinjaSign_GetStcValue(1)
	local nNinjaSign_Dat2 = NinjaSign_GetStcValue(2)
	-- 区分已领取
	if nNinjaSign_Dat2 == 0 then
		nNinjaSign_Dat1 = nNinjaSign_Dat1 + 1
	end
	local sNinjaSign_Award = tNinjaSign_Text[nItemId]["Award"][nNinjaSign_Dat1]
	-- 显示当日奖励信息
	-- 前14次
	if nNinjaSign_Dat1 < 15 then
		local sNinjaSign_NextAward = tNinjaSign_Text[nItemId]["Award"][nNinjaSign_Dat1+1]
		tItem[nItemId]["Text113"] = string.format(tNinjaSign_Text[nItemId]["Text113"],nNinjaSign_Dat1)
		tItem[nItemId]["Text114"] = string.format(tNinjaSign_Text[nItemId]["Text114"],sNinjaSign_Award)
		tItem[nItemId]["Text115"] = string.format(tNinjaSign_Text[nItemId]["Text115"],sNinjaSign_NextAward)
		local sNinjaSign_Res = tNinjaSign_Text[nItemId]["BefGet"]
		if nNinjaSign_Dat2 >= 1 then
			sNinjaSign_Res = tNinjaSign_Text[nItemId]["AftGet"]
		end
		tItem[nItemId]["Option111"] = string.format(tNinjaSign_Text[nItemId]["Option111"],sNinjaSign_Res)
		LinkItemGossipFunc_New(nItemId,tNinjaSign_Data["DiaIndex"]["Before15"])
		return
	end
	-- 第15次
	tItem[nItemId]["Text123"] = string.format(tNinjaSign_Text[nItemId]["Text123"],nNinjaSign_Dat1)
	tItem[nItemId]["Text124"] = string.format(tNinjaSign_Text[nItemId]["Text124"],sNinjaSign_Award)
	LinkItemGossipFunc_New(nItemId,tNinjaSign_Data["DiaIndex"]["Time15"])
end
-- 前14次
tItem[3315582]["Text1-1"] = {111,112,113,114,115,116}
tItem[3315582]["tOption1-1"] = {111}
tItem[3315582]["OptionFunc111"] = "NinjaSign_SignCard</N>3315582"
-- 第15次
tItem[3315582]["Text1-2"] = {121,122,123,124,125}
tItem[3315582]["tOption1-2"] = {121}
tItem[3315582]["OptionFunc121"] = "NinjaSign_SignCard</N>3315582"

-- 7天5星时装自选盒
tItemFace[3315583] = 2818
tItem[3315583] = tItem[3315583] or {}
tItem[3315583]["DialogueText"] = tNinjaSign_Text[3315583]
tItem[3315583]["Text1-1"] = {111}
tItem[3315583]["tOption1-1"] = {111,112,113}
tItem[3315583]["OptionFunc111"] = "NinjaSign_Choise</N>3315583</N>1"
tItem[3315583]["OptionFunc112"] = "NinjaSign_Choise</N>3315583</N>2"
tItem[3315583]["OptionFunc113"] = "NinjaSign_Choise</N>3315583</N>3"
tItem[3315583]["Text1-2"] = {121}
tItem[3315583]["tOption1-2"] = {121,122}
tItem[3315583]["OptionFunc121"] = "NinjaSign_Confirm</N>3315583"
tItem[3315583]["OptionFunc122"] = "NinjaSign_NormalAward</N>3315583"
-- 接1、花费27天石升级外套
tItem[3315583]["Text1-3"] = {131}
tItem[3315583]["tOption1-3"] = {131}
tItem[3315583]["OptionFunc131"] = "NinjaSign_UpAward</N>3315583"

-- 7天5星坐骑自选盒
tItemFace[3315584] = 2819
tItem[3315584] = tItem[3315584] or {}
tItem[3315584]["DialogueText"] = tNinjaSign_Text[3315584]
tItem[3315584]["Text1-1"] = {111}
tItem[3315584]["tOption1-1"] = {111,112,113}
tItem[3315584]["OptionFunc111"] = "NinjaSign_Choise</N>3315584</N>1"
tItem[3315584]["OptionFunc112"] = "NinjaSign_Choise</N>3315584</N>2"
tItem[3315584]["OptionFunc113"] = "NinjaSign_Choise</N>3315584</N>3"
tItem[3315584]["Text1-2"] = {121}
tItem[3315584]["tOption1-2"] = {121,122}
tItem[3315584]["OptionFunc121"] = "NinjaSign_Confirm</N>3315584"
tItem[3315584]["OptionFunc122"] = "NinjaSign_NormalAward</N>3315584"
-- 接1、花费27天石升级外套
tItem[3315584]["Text1-3"] = {131}
tItem[3315584]["tOption1-3"] = {131}
tItem[3315584]["OptionFunc131"] = "NinjaSign_UpAward</N>3315584"



