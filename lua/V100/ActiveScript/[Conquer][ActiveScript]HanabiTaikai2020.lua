------------------------------------------------------------------------------------
--Name:		200506[英文征服][活动脚本]6月夏日祭-花火大会
--Purpose:	6月夏日祭-花火大会（6.2-6.20）
--Creator: 	杨志翔
--Created:	2020/05/06
------------------------------------------------------------------------------------
--前缀 Hanabi
--54474 服务器限制
--54475 限量
--22195 背包信
--22196 提交物品
--22197 购买次数
--22198 打怪掉落
--22199 正气令
--222xx 个人排位赛
--222xx 签到礼包

tHanabi_Cont = {}
tHanabi_Cont["ActivityTime"] =tActivityTime["HanabiTaiKai"]["ActivityTime"]
tHanabi_Cont["Map"] = {}
tHanabi_Cont["Map"]["Act"] = {}
tHanabi_Cont["Map"]["Act"]["MapId"] = 10862
tHanabi_Cont["Map"]["Act"]["PosX"] = 51
tHanabi_Cont["Map"]["Act"]["PosY"] = 49

tHanabi_Cont["Map"]["Back"] = {}

tHanabi_Cont["Map"]["Back"][1] = {}
tHanabi_Cont["Map"]["Back"][1]["MapId"] = 1002
tHanabi_Cont["Map"]["Back"][1]["PosX"] = 331
tHanabi_Cont["Map"]["Back"][1]["PosY"] = 447

tHanabi_Cont["Map"]["Back"][2] = {}
tHanabi_Cont["Map"]["Back"][2]["MapId"] = 1036
tHanabi_Cont["Map"]["Back"][2]["PosX"] = 232
tHanabi_Cont["Map"]["Back"][2]["PosY"] = 266

tHanabi_Cont["Web"] = "https://coevent.99.com/rank/summerfireworkfestival/" 
tHanabi_Cont["Npc"] = {}
tHanabi_Cont["Npc"]["Main"] = 26563
tHanabi_Cont["Npc"]["Exchange"] = 26562
tHanabi_Cont["Npc"]["Shop"] = 26561
tHanabi_Cont["Npc"]["Pool"] = 26561
tHanabi_Cont["Mail"] = {}
tHanabi_Cont["Mail"]["Action"] = 577812
tHanabi_Cont["Mail"]["Chi"] = 577813
tHanabi_Cont["Mail"]["ExistDay"] = 3

--池子
tHanabi_Cont["Pool"] = {}
tHanabi_Cont["Pool"]["PosX"] = 42
tHanabi_Cont["Pool"]["PosY"] = 41
tHanabi_Cont["Pool"]["Range"] = 2

tHanabi_Cont["Global"] = {}
tHanabi_Cont["Global"]["Record"] = 54483


tHanabi_Cont["Item"] = {}
tHanabi_Cont["Item"]["HandIn"] = 3331139
tHanabi_Cont["Item"]["Koi"] = 3331130

tHanabi_Cont["Stc"] = {}
tHanabi_Cont["Stc"]["HandIn"] = {}
tHanabi_Cont["Stc"]["HandIn"]["Event"] = 221
tHanabi_Cont["Stc"]["HandIn"]["Data"] = 96
tHanabi_Cont["Stc"]["Buy"] = {}
tHanabi_Cont["Stc"]["Buy"]["Event"] = 221
tHanabi_Cont["Stc"]["Buy"]["Data"] = 97
tHanabi_Cont["Stc"]["Drop"] = {}
tHanabi_Cont["Stc"]["Drop"]["Event"] = 221
tHanabi_Cont["Stc"]["Drop"]["Data"] = 98
tHanabi_Cont["Stc"]["Chi"] = {}
tHanabi_Cont["Stc"]["Chi"]["Event"] = 221
tHanabi_Cont["Stc"]["Chi"]["Data"] = 99
tHanabi_Cont["Stc"]["Rank"] = {}
tHanabi_Cont["Stc"]["Rank"]["Event"] = 222
tHanabi_Cont["Stc"]["Rank"]["Data"] = 19
tHanabi_Cont["Stc"]["Signin"] = {}
tHanabi_Cont["Stc"]["Signin"]["Event"] = 222
tHanabi_Cont["Stc"]["Signin"]["Data"] = 20
--队伍检测用临时表
local tHanabi_Team = {}
	-- ===提交御守
	-- ===索引:tHanabi_HandIn
	-- ===删除: 3331139,2
	-- ===
	local tHanabi_HandIn = {}
	tHanabi_HandIn["LogId"] = 12002000
	tHanabi_HandIn["DeleteItem"] = {}
	tHanabi_HandIn["DeleteItem"][1] = {}
	tHanabi_HandIn["DeleteItem"][1]["Id"] = 3331139 -- 【库】Amulet[属性:9]
	tHanabi_HandIn["DeleteItem"][1]["ItemNum"] = 2
	tHanabi_HandIn["RewardEffect"] = {}
	tHanabi_HandIn["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_HandIn["RewardEffect"]["Effect"] = "angelwing"


	-- ===购买超值包
	-- ===索引:tHanabi_Buy
	-- ===消耗天石:350
	-- ===NewEmoneyLog:1000,01881
	-- ===
local tHanabi_Buy = {}
	tHanabi_Buy["LogId"] = 12002000
	tHanabi_Buy["CostEMoney"] = {}
	tHanabi_Buy["CostEMoney"]["Value"] = 350 -- 消耗天石
	tHanabi_Buy["CostEMoney"]["EmoneyLog"] = "1000	1881"
	tHanabi_Buy["RewardItem"] = {}
	tHanabi_Buy["RewardItem"][1] = {}
	tHanabi_Buy["RewardItem"][1]["Id"] = 3331132 -- QualityPromoPack[3331132][属性:9][叠加:0][金币:0], 【表格】3331132
	tHanabi_Buy["RewardItem"][1]["Attr"] = "0 1" -- QualityPromoPack*1
	tHanabi_Buy["RewardEffect"] = {}
	tHanabi_Buy["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Buy["RewardEffect"]["Effect"] = "angelwing"


	-- ===签到
	-- ===索引:tHanabi_Sign
	-- ===
	-- ===
local tHanabi_Sign = {}
	tHanabi_Sign["LogId"] = 12002000
	tHanabi_Sign["RewardItem"] = {}
	tHanabi_Sign["RewardItem"][1] = {}
	tHanabi_Sign["RewardItem"][1]["Id"] = 3331123 -- SummerCopper[3331123][属性:9][叠加:0][金币:0], 【表格】3331123
	tHanabi_Sign["RewardItem"][1]["Attr"] = "0 10" -- SummerCopper*10
	tHanabi_Sign["RewardEffect"] = {}
	tHanabi_Sign["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Sign["RewardEffect"]["Effect"] = "angelwing"


	-- ===打怪掉落
	-- ===索引:tHanabi_Kill
	-- ===
	-- ===
local tHanabi_Kill = {}
	tHanabi_Kill["LogId"] = 12002000
	tHanabi_Kill["RewardItem"] = {}
	tHanabi_Kill["RewardItem"][1] = {}
	tHanabi_Kill["RewardItem"][1]["Id"] = 3331123 -- SummerCopper[3331123][属性:9][叠加:0][金币:0], 【表格】3331123
	tHanabi_Kill["RewardItem"][1]["Attr"] = "0 1" -- SummerCopper*1
	tHanabi_Kill["RewardEffect"] = {}
	tHanabi_Kill["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Kill["RewardEffect"]["Effect"] = "angelwing"


local tHanabi_Reward = {}
	tHanabi_Reward[3331124] = {}
	-- ===普通烟花
	-- ===索引:tHanabi_Reward[3331124][1]
	-- ===删除:3331124,1
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tHanabi_Reward[3331124],1)
	tHanabi_Reward[3331124][1] = {}
	tHanabi_Reward[3331124][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331124][1]["DeleteItem"] = {}
	tHanabi_Reward[3331124][1]["DeleteItem"][1] = {}
	tHanabi_Reward[3331124][1]["DeleteItem"][1]["Id"] = 3331124 -- 【库】CommonSummerFirework[属性:9]
	tHanabi_Reward[3331124][1]["LogId"] = 12002000
	-- 黄色神纹精粹 - 28%
	tHanabi_Reward[3331124][1][1] = {}
	tHanabi_Reward[3331124][1][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][1][1]["ItemChance"] = 2800
	tHanabi_Reward[3331124][1][1]["RewardItem"] = {}
	tHanabi_Reward[3331124][1][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][1][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tHanabi_Reward[3331124][1][1]["RewardItem"][1]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*10
	tHanabi_Reward[3331124][1][1]["RewardEffect"] = {}
	tHanabi_Reward[3331124][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][1][1]["RewardEffect"]["Effect"] = "FF03"
	-- 人参果 - 22%
	tHanabi_Reward[3331124][1][2] = {}
	tHanabi_Reward[3331124][1][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][1][2]["ItemChance"] = 2200
	tHanabi_Reward[3331124][1][2]["RewardItem"] = {}
	tHanabi_Reward[3331124][1][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][1][2]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tHanabi_Reward[3331124][1][2]["RewardItem"][1]["Attr"] = "0 1" -- GinsengFruit*1
	tHanabi_Reward[3331124][1][2]["RewardEffect"] = {}
	tHanabi_Reward[3331124][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][1][2]["RewardEffect"]["Effect"] = "FF03"
	-- 500气力值 - 28%
	tHanabi_Reward[3331124][1][3] = {}
	tHanabi_Reward[3331124][1][3]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][1][3]["ItemChance"] = 2800
	tHanabi_Reward[3331124][1][3]["RewardStrengthValue"] = {}
	tHanabi_Reward[3331124][1][3]["RewardStrengthValue"]["Value"] = 500 -- 气力值, 【需求】500气力值
	tHanabi_Reward[3331124][1][3]["RewardEffect"] = {}
	tHanabi_Reward[3331124][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][1][3]["RewardEffect"]["Effect"] = "FF03"
	-- 免费强练丹 - 22%
	tHanabi_Reward[3331124][1][4] = {}
	tHanabi_Reward[3331124][1][4]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][1][4]["ItemChance"] = 2200
	tHanabi_Reward[3331124][1][4]["RewardItem"] = {}
	tHanabi_Reward[3331124][1][4]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][1][4]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强练丹
	tHanabi_Reward[3331124][1][4]["RewardItem"][1]["Attr"] = "0 10 3" -- FavoredTrainingPill（赠）*10
	tHanabi_Reward[3331124][1][4]["RewardEffect"] = {}
	tHanabi_Reward[3331124][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][1][4]["RewardEffect"]["Effect"] = "FF03"
	-- 御守-- 【必给】
	tHanabi_Reward[3331124][1][5] = {}
	tHanabi_Reward[3331124][1][5]["RandomItemChanceType"] = 1
	tHanabi_Reward[3331124][1][5]["RewardItem"] = {}
	tHanabi_Reward[3331124][1][5]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][1][5]["RewardItem"][1]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331124][1][5]["RewardItem"][1]["Attr"] = "0 10" -- Amulet*10
	tHanabi_Reward[3331124][1][5]["RewardEffect"] = {}
	tHanabi_Reward[3331124][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][1][5]["RewardEffect"]["Effect"] = "FF03"


	-- ===普通烟花组队
	-- ===索引:tHanabi_Reward[3331124][2]
	-- ===删除:3331124,1
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tHanabi_Reward[3331124],2)
	tHanabi_Reward[3331124][2] = {}
	tHanabi_Reward[3331124][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331124][2]["DeleteItem"] = {}
	tHanabi_Reward[3331124][2]["DeleteItem"][1] = {}
	tHanabi_Reward[3331124][2]["DeleteItem"][1]["Id"] = 3331124 -- 【库】CommonSummerFirework[属性:9]
	tHanabi_Reward[3331124][2]["LogId"] = 12002000
	-- 黄色神纹精粹 - 28%
	tHanabi_Reward[3331124][2][1] = {}
	tHanabi_Reward[3331124][2][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][2][1]["ItemChance"] = 2800
	tHanabi_Reward[3331124][2][1]["RewardItem"] = {}
	tHanabi_Reward[3331124][2][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][2][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tHanabi_Reward[3331124][2][1]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence（赠）*20
	tHanabi_Reward[3331124][2][1]["RewardEffect"] = {}
	tHanabi_Reward[3331124][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][2][1]["RewardEffect"]["Effect"] = "FF03"
	-- 人参果 - 22%
	tHanabi_Reward[3331124][2][2] = {}
	tHanabi_Reward[3331124][2][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][2][2]["ItemChance"] = 2200
	tHanabi_Reward[3331124][2][2]["RewardItem"] = {}
	tHanabi_Reward[3331124][2][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][2][2]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果
	tHanabi_Reward[3331124][2][2]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tHanabi_Reward[3331124][2][2]["RewardEffect"] = {}
	tHanabi_Reward[3331124][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][2][2]["RewardEffect"]["Effect"] = "FF03"
	-- 500气力值 - 28%
	tHanabi_Reward[3331124][2][3] = {}
	tHanabi_Reward[3331124][2][3]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][2][3]["ItemChance"] = 2800
	tHanabi_Reward[3331124][2][3]["RewardStrengthValue"] = {}
	tHanabi_Reward[3331124][2][3]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】500气力值
	tHanabi_Reward[3331124][2][3]["RewardEffect"] = {}
	tHanabi_Reward[3331124][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][2][3]["RewardEffect"]["Effect"] = "FF03"
	-- 免费强练丹 - 22%
	tHanabi_Reward[3331124][2][4] = {}
	tHanabi_Reward[3331124][2][4]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331124][2][4]["ItemChance"] = 2200
	tHanabi_Reward[3331124][2][4]["RewardItem"] = {}
	tHanabi_Reward[3331124][2][4]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][2][4]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强练丹
	tHanabi_Reward[3331124][2][4]["RewardItem"][1]["Attr"] = "0 20 3" -- FavoredTrainingPill（赠）*20（[错误]物品数量超10个）
	tHanabi_Reward[3331124][2][4]["RewardEffect"] = {}
	tHanabi_Reward[3331124][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][2][4]["RewardEffect"]["Effect"] = "FF03"
	-- 御守-- 【必给】
	tHanabi_Reward[3331124][2][5] = {}
	tHanabi_Reward[3331124][2][5]["RandomItemChanceType"] = 1
	tHanabi_Reward[3331124][2][5]["RewardItem"] = {}
	tHanabi_Reward[3331124][2][5]["RewardItem"][1] = {}
	tHanabi_Reward[3331124][2][5]["RewardItem"][1]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331124][2][5]["RewardItem"][1]["Attr"] = "0 20" -- Amulet*20（[错误]物品数量超10个）
	tHanabi_Reward[3331124][2][5]["RewardEffect"] = {}
	tHanabi_Reward[3331124][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331124][2][5]["RewardEffect"]["Effect"] = "FF03"


	tHanabi_Reward[3331125] = {}
	-- ===中等烟花
	-- ===索引:tHanabi_Reward[3331125][1]
	-- ===删除:3331125,1
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tHanabi_Reward[3331125],1)
	tHanabi_Reward[3331125][1] = {}
	tHanabi_Reward[3331125][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331125][1]["DeleteItem"] = {}
	tHanabi_Reward[3331125][1]["DeleteItem"][1] = {}
	tHanabi_Reward[3331125][1]["DeleteItem"][1]["Id"] = 3331125 -- 【库】MediumSummerFirework[属性:9]
	tHanabi_Reward[3331125][1]["LogId"] = 12002000
	-- 黄色神纹精粹 - 28%
	tHanabi_Reward[3331125][1][1] = {}
	tHanabi_Reward[3331125][1][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][1][1]["ItemChance"] = 2800
	tHanabi_Reward[3331125][1][1]["RewardItem"] = {}
	tHanabi_Reward[3331125][1][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][1][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tHanabi_Reward[3331125][1][1]["RewardItem"][1]["Attr"] = "0 20 3" -- YellowRuneEssence（赠）*20
	tHanabi_Reward[3331125][1][1]["RewardEffect"] = {}
	tHanabi_Reward[3331125][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][1][1]["RewardEffect"]["Effect"] = "FF03"
	-- 龙鳞果 - 22%
	tHanabi_Reward[3331125][1][2] = {}
	tHanabi_Reward[3331125][1][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][1][2]["ItemChance"] = 2200
	tHanabi_Reward[3331125][1][2]["RewardItem"] = {}
	tHanabi_Reward[3331125][1][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][1][2]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tHanabi_Reward[3331125][1][2]["RewardItem"][1]["Attr"] = "0 1" -- DragonFruit*1
	tHanabi_Reward[3331125][1][2]["RewardEffect"] = {}
	tHanabi_Reward[3331125][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][1][2]["RewardEffect"]["Effect"] = "FF03"
	-- 1500气力值 - 28%
	tHanabi_Reward[3331125][1][3] = {}
	tHanabi_Reward[3331125][1][3]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][1][3]["ItemChance"] = 2800
	tHanabi_Reward[3331125][1][3]["RewardStrengthValue"] = {}
	tHanabi_Reward[3331125][1][3]["RewardStrengthValue"]["Value"] = 1500 -- 气力值, 【需求】1500气力值
	tHanabi_Reward[3331125][1][3]["RewardEffect"] = {}
	tHanabi_Reward[3331125][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][1][3]["RewardEffect"]["Effect"] = "FF03"
	-- 免费强练丹 - 22%
	tHanabi_Reward[3331125][1][4] = {}
	tHanabi_Reward[3331125][1][4]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][1][4]["ItemChance"] = 2200
	tHanabi_Reward[3331125][1][4]["RewardItem"] = {}
	tHanabi_Reward[3331125][1][4]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][1][4]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强练丹
	tHanabi_Reward[3331125][1][4]["RewardItem"][1]["Attr"] = "0 25 3" -- FavoredTrainingPill（赠）*25（[错误]物品数量超10个）
	tHanabi_Reward[3331125][1][4]["RewardEffect"] = {}
	tHanabi_Reward[3331125][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][1][4]["RewardEffect"]["Effect"] = "FF03"
	-- 御守-- 【必给】
	tHanabi_Reward[3331125][1][5] = {}
	tHanabi_Reward[3331125][1][5]["RandomItemChanceType"] = 1
	tHanabi_Reward[3331125][1][5]["RewardItem"] = {}
	tHanabi_Reward[3331125][1][5]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][1][5]["RewardItem"][1]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331125][1][5]["RewardItem"][1]["Attr"] = "0 30" -- Amulet*30（[错误]物品数量超10个）
	tHanabi_Reward[3331125][1][5]["RewardEffect"] = {}
	tHanabi_Reward[3331125][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][1][5]["RewardEffect"]["Effect"] = "FF03"


	-- ===中等烟花组队
	-- ===索引:tHanabi_Reward[3331125][2]
	-- ===删除:3331125,1
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tHanabi_Reward[3331125],2)
	tHanabi_Reward[3331125][2] = {}
	tHanabi_Reward[3331125][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331125][2]["DeleteItem"] = {}
	tHanabi_Reward[3331125][2]["DeleteItem"][1] = {}
	tHanabi_Reward[3331125][2]["DeleteItem"][1]["Id"] = 3331125 -- 【库】MediumSummerFirework[属性:9]
	tHanabi_Reward[3331125][2]["LogId"] = 12002000
	-- 黄色神纹精粹 - 28%
	tHanabi_Reward[3331125][2][1] = {}
	tHanabi_Reward[3331125][2][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][2][1]["ItemChance"] = 2800
	tHanabi_Reward[3331125][2][1]["RewardItem"] = {}
	tHanabi_Reward[3331125][2][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][2][1]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tHanabi_Reward[3331125][2][1]["RewardItem"][1]["Attr"] = "0 40 3" -- YellowRuneEssence（赠）*40
	tHanabi_Reward[3331125][2][1]["RewardEffect"] = {}
	tHanabi_Reward[3331125][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][2][1]["RewardEffect"]["Effect"] = "FF03"
	-- 龙鳞果 - 22%
	tHanabi_Reward[3331125][2][2] = {}
	tHanabi_Reward[3331125][2][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][2][2]["ItemChance"] = 2200
	tHanabi_Reward[3331125][2][2]["RewardItem"] = {}
	tHanabi_Reward[3331125][2][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][2][2]["RewardItem"][1]["Id"] = 3009101 -- DragonFruit[3009101][属性:9][叠加:10000][金币:0], 【表格】龙鳞果
	tHanabi_Reward[3331125][2][2]["RewardItem"][1]["Attr"] = "0 2" -- DragonFruit*2
	tHanabi_Reward[3331125][2][2]["RewardEffect"] = {}
	tHanabi_Reward[3331125][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][2][2]["RewardEffect"]["Effect"] = "FF03"
	-- 1500气力值 - 28%
	tHanabi_Reward[3331125][2][3] = {}
	tHanabi_Reward[3331125][2][3]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][2][3]["ItemChance"] = 2800
	tHanabi_Reward[3331125][2][3]["RewardStrengthValue"] = {}
	tHanabi_Reward[3331125][2][3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】1500气力值
	tHanabi_Reward[3331125][2][3]["RewardEffect"] = {}
	tHanabi_Reward[3331125][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][2][3]["RewardEffect"]["Effect"] = "FF03"
	-- 免费强练丹 - 22%
	tHanabi_Reward[3331125][2][4] = {}
	tHanabi_Reward[3331125][2][4]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331125][2][4]["ItemChance"] = 2200
	tHanabi_Reward[3331125][2][4]["RewardItem"] = {}
	tHanabi_Reward[3331125][2][4]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][2][4]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强练丹
	tHanabi_Reward[3331125][2][4]["RewardItem"][1]["Attr"] = "0 50 3" -- FavoredTrainingPill（赠）*50（[错误]物品数量超10个）
	tHanabi_Reward[3331125][2][4]["RewardEffect"] = {}
	tHanabi_Reward[3331125][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][2][4]["RewardEffect"]["Effect"] = "FF03"
	-- 御守-- 【必给】
	tHanabi_Reward[3331125][2][5] = {}
	tHanabi_Reward[3331125][2][5]["RandomItemChanceType"] = 1
	tHanabi_Reward[3331125][2][5]["RewardItem"] = {}
	tHanabi_Reward[3331125][2][5]["RewardItem"][1] = {}
	tHanabi_Reward[3331125][2][5]["RewardItem"][1]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331125][2][5]["RewardItem"][1]["Attr"] = "0 60" -- Amulet*60（[错误]物品数量超10个）
	tHanabi_Reward[3331125][2][5]["RewardEffect"] = {}
	tHanabi_Reward[3331125][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331125][2][5]["RewardEffect"]["Effect"] = "FF03"


	tHanabi_Reward[3331126] = {}
	-- ===高级烟花
	-- ===索引:tHanabi_Reward[3331126][1]
	-- ===删除:3331126,1
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tHanabi_Reward[3331126],1)
	tHanabi_Reward[3331126][1] = {}
	tHanabi_Reward[3331126][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331126][1]["DeleteItem"] = {}
	tHanabi_Reward[3331126][1]["DeleteItem"][1] = {}
	tHanabi_Reward[3331126][1]["DeleteItem"][1]["Id"] = 3331126 -- 【库】AdvancedSummerFirework[属性:9]
	tHanabi_Reward[3331126][1]["LogId"] = 12002000
	-- 万能神纹精粹 - 25%
	tHanabi_Reward[3331126][1][1] = {}
	tHanabi_Reward[3331126][1][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][1][1]["ItemChance"] = 2500
	tHanabi_Reward[3331126][1][1]["RewardItem"] = {}
	tHanabi_Reward[3331126][1][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][1][1]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHanabi_Reward[3331126][1][1]["RewardItem"][1]["Attr"] = "0 25 3" -- UniversalRuneEssence（赠）*25
	tHanabi_Reward[3331126][1][1]["RewardEffect"] = {}
	tHanabi_Reward[3331126][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][1][1]["RewardEffect"]["Effect"] = "FF03"
	-- 辉月果 - 20%
	tHanabi_Reward[3331126][1][2] = {}
	tHanabi_Reward[3331126][1][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][1][2]["ItemChance"] = 2000
	tHanabi_Reward[3331126][1][2]["RewardItem"] = {}
	tHanabi_Reward[3331126][1][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][1][2]["RewardItem"][1]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tHanabi_Reward[3331126][1][2]["RewardItem"][1]["Attr"] = "0 1" -- MoonFruit*1
	tHanabi_Reward[3331126][1][2]["RewardEffect"] = {}
	tHanabi_Reward[3331126][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][1][2]["RewardEffect"]["Effect"] = "FF03"
	-- 3000气力值 - 25%
	tHanabi_Reward[3331126][1][3] = {}
	tHanabi_Reward[3331126][1][3]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][1][3]["ItemChance"] = 2500
	tHanabi_Reward[3331126][1][3]["RewardStrengthValue"] = {}
	tHanabi_Reward[3331126][1][3]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气力值
	tHanabi_Reward[3331126][1][3]["RewardEffect"] = {}
	tHanabi_Reward[3331126][1][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][1][3]["RewardEffect"]["Effect"] = "FF03"
	-- 免费强练丹 - 20%
	tHanabi_Reward[3331126][1][4] = {}
	tHanabi_Reward[3331126][1][4]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][1][4]["ItemChance"] = 2000
	tHanabi_Reward[3331126][1][4]["RewardItem"] = {}
	tHanabi_Reward[3331126][1][4]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][1][4]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强练丹
	tHanabi_Reward[3331126][1][4]["RewardItem"][1]["Attr"] = "0 50 3" -- FavoredTrainingPill（赠）*50（[错误]物品数量超10个）
	tHanabi_Reward[3331126][1][4]["RewardEffect"] = {}
	tHanabi_Reward[3331126][1][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][1][4]["RewardEffect"]["Effect"] = "FF03"
	-- 御守-- 【必给】
	tHanabi_Reward[3331126][1][5] = {}
	tHanabi_Reward[3331126][1][5]["RandomItemChanceType"] = 1
	tHanabi_Reward[3331126][1][5]["RewardItem"] = {}
	tHanabi_Reward[3331126][1][5]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][1][5]["RewardItem"][1]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331126][1][5]["RewardItem"][1]["Attr"] = "0 50" -- Amulet*50（[错误]物品数量超10个）
	tHanabi_Reward[3331126][1][5]["RewardEffect"] = {}
	tHanabi_Reward[3331126][1][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][1][5]["RewardEffect"]["Effect"] = "FF03"
	-- 30-dayGarmentSelectionPack - 10%
	tHanabi_Reward[3331126][1][6] = {}
	tHanabi_Reward[3331126][1][6]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][1][6]["ItemChance"] = 1000
	tHanabi_Reward[3331126][1][6]["RewardItem"] = {}
	tHanabi_Reward[3331126][1][6]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][1][6]["RewardItem"][1]["Id"] = 3331131 -- 30-dayGarmentSelectionPack[3331131][属性:9][叠加:0][金币:0], 【表格】30-dayGarmentSelectionPack
	tHanabi_Reward[3331126][1][6]["RewardItem"][1]["Attr"] = "0 1" -- 30-dayGarmentSelectionPack*1
	tHanabi_Reward[3331126][1][6]["RewardEffect"] = {}
	tHanabi_Reward[3331126][1][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][1][6]["RewardEffect"]["Effect"] = "FF03"


	-- ===高级烟花组队
	-- ===索引:tHanabi_Reward[3331126][2]
	-- ===删除:3331126,1
	-- ===
	-- ===
	-- RewardTemplate_RandomReward(tHanabi_Reward[3331126],2)
	tHanabi_Reward[3331126][2] = {}
	tHanabi_Reward[3331126][2]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331126][2]["DeleteItem"] = {}
	tHanabi_Reward[3331126][2]["DeleteItem"][1] = {}
	tHanabi_Reward[3331126][2]["DeleteItem"][1]["Id"] = 3331126 -- 【库】AdvancedSummerFirework[属性:9]
	tHanabi_Reward[3331126][2]["LogId"] = 12002000
	-- 万能神纹精粹 - 25%
	tHanabi_Reward[3331126][2][1] = {}
	tHanabi_Reward[3331126][2][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][2][1]["ItemChance"] = 2500
	tHanabi_Reward[3331126][2][1]["RewardItem"] = {}
	tHanabi_Reward[3331126][2][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][2][1]["RewardItem"][1]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹
	tHanabi_Reward[3331126][2][1]["RewardItem"][1]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tHanabi_Reward[3331126][2][1]["RewardEffect"] = {}
	tHanabi_Reward[3331126][2][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][2][1]["RewardEffect"]["Effect"] = "FF03"
	-- 辉月果 - 20%
	tHanabi_Reward[3331126][2][2] = {}
	tHanabi_Reward[3331126][2][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][2][2]["ItemChance"] = 2000
	tHanabi_Reward[3331126][2][2]["RewardItem"] = {}
	tHanabi_Reward[3331126][2][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][2][2]["RewardItem"][1]["Id"] = 3009102 -- MoonFruit[3009102][属性:9][叠加:10000][金币:0], 【表格】辉月果
	tHanabi_Reward[3331126][2][2]["RewardItem"][1]["Attr"] = "0 2" -- MoonFruit*2
	tHanabi_Reward[3331126][2][2]["RewardEffect"] = {}
	tHanabi_Reward[3331126][2][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][2][2]["RewardEffect"]["Effect"] = "FF03"
	-- 6000气力值 - 25%
	tHanabi_Reward[3331126][2][3] = {}
	tHanabi_Reward[3331126][2][3]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][2][3]["ItemChance"] = 2500
	tHanabi_Reward[3331126][2][3]["RewardStrengthValue"] = {}
	tHanabi_Reward[3331126][2][3]["RewardStrengthValue"]["Value"] = 6000 -- 气力值, 【需求】6000气力值
	tHanabi_Reward[3331126][2][3]["RewardEffect"] = {}
	tHanabi_Reward[3331126][2][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][2][3]["RewardEffect"]["Effect"] = "FF03"
	-- 免费强练丹 - 20%
	tHanabi_Reward[3331126][2][4] = {}
	tHanabi_Reward[3331126][2][4]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][2][4]["ItemChance"] = 2000
	tHanabi_Reward[3331126][2][4]["RewardItem"] = {}
	tHanabi_Reward[3331126][2][4]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][2][4]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强练丹
	tHanabi_Reward[3331126][2][4]["RewardItem"][1]["Attr"] = "0 100 3" -- FavoredTrainingPill（赠）*100（[错误]物品数量超10个）
	tHanabi_Reward[3331126][2][4]["RewardEffect"] = {}
	tHanabi_Reward[3331126][2][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][2][4]["RewardEffect"]["Effect"] = "FF03"
	-- 御守-- 【必给】
	tHanabi_Reward[3331126][2][5] = {}
	tHanabi_Reward[3331126][2][5]["RandomItemChanceType"] = 1
	tHanabi_Reward[3331126][2][5]["RewardItem"] = {}
	tHanabi_Reward[3331126][2][5]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][2][5]["RewardItem"][1]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331126][2][5]["RewardItem"][1]["Attr"] = "0 100" -- Amulet*60（[错误]物品数量超10个）
	tHanabi_Reward[3331126][2][5]["RewardEffect"] = {}
	tHanabi_Reward[3331126][2][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][2][5]["RewardEffect"]["Effect"] = "FF03"
	-- 30-dayGarmentSelectionPack - 10%
	tHanabi_Reward[3331126][2][6] = {}
	tHanabi_Reward[3331126][2][6]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331126][2][6]["ItemChance"] = 1000
	tHanabi_Reward[3331126][2][6]["RewardItem"] = {}
	tHanabi_Reward[3331126][2][6]["RewardItem"][1] = {}
	tHanabi_Reward[3331126][2][6]["RewardItem"][1]["Id"] = 3331131 -- 30-dayGarmentSelectionPack[3331131][属性:9][叠加:0][金币:0], 【表格】30-dayGarmentSelectionPack
	tHanabi_Reward[3331126][2][6]["RewardItem"][1]["Attr"] = "0 2" -- 30-dayGarmentSelectionPack*2
	tHanabi_Reward[3331126][2][6]["RewardEffect"] = {}
	tHanabi_Reward[3331126][2][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331126][2][6]["RewardEffect"]["Effect"] = "FF03"


	-- ===普通纸网
	-- ===索引:tHanabi_Reward[3331127]
	-- ===删除:3331127,1
	-- RewardTemplate_RandomReward(tHanabi_Reward,3331127)
	tHanabi_Reward[3331127] = {}
	tHanabi_Reward[3331127]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331127]["DeleteItem"] = {}
	tHanabi_Reward[3331127]["DeleteItem"][1] = {}
	tHanabi_Reward[3331127]["DeleteItem"][1]["Id"] = 3331127 -- 【库】PaperFishnet[属性:9]
	tHanabi_Reward[3331127]["LogId"] = 12002000
	-- SummerGoldfish - 50%
	tHanabi_Reward[3331127][1] = {}
	tHanabi_Reward[3331127][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331127][1]["ItemChance"] = 5000
	tHanabi_Reward[3331127][1]["RewardItem"] = {}
	tHanabi_Reward[3331127][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331127][1]["RewardItem"][1]["Id"] = 3331129 -- SummerGoldfish[3331129][属性:9][叠加:0][金币:0], 【表格】SummerGoldfish
	tHanabi_Reward[3331127][1]["RewardItem"][1]["Attr"] = "0 1" -- SummerGoldfish*1
	tHanabi_Reward[3331127][1]["RewardEffect"] = {}
	tHanabi_Reward[3331127][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331127][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 50气力值
	tHanabi_Reward[3331127][2] = {}
	tHanabi_Reward[3331127][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331127][2]["ItemChance"] = 5000
	tHanabi_Reward[3331127][2]["RewardStrengthValue"] = {}
	tHanabi_Reward[3331127][2]["RewardStrengthValue"]["Value"] = 50 -- 气力值, 【需求】50气力值
	tHanabi_Reward[3331127][2]["RewardEffect"] = {}
	tHanabi_Reward[3331127][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331127][2]["RewardEffect"]["Effect"] = "angelwing"



	tHanabi_Reward[3331128] = {}
	-- ===坚固纸网
	-- ===索引:tHanabi_Reward[3331128][1]
	-- ===删除:3331128,1
	-- RewardTemplate_RandomReward(tHanabi_Reward[3331128],1)
	tHanabi_Reward[3331128][1] = {}
	tHanabi_Reward[3331128][1]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tHanabi_Reward[3331128][1]["DeleteItem"] = {}
	tHanabi_Reward[3331128][1]["DeleteItem"][1] = {}
	tHanabi_Reward[3331128][1]["DeleteItem"][1]["Id"] = 3331128 -- 【库】FirmFishnet[属性:9]
	tHanabi_Reward[3331128][1]["LogId"] = 12002000
	-- SummerGoldfish - 95%
	tHanabi_Reward[3331128][1][1] = {}
	tHanabi_Reward[3331128][1][1]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331128][1][1]["ItemChance"] = 9500
	tHanabi_Reward[3331128][1][1]["RewardItem"] = {}
	tHanabi_Reward[3331128][1][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331128][1][1]["RewardItem"][1]["Id"] = 3331129 -- SummerGoldfish[3331129][属性:9][叠加:0][金币:0], 【表格】SummerGoldfish
	tHanabi_Reward[3331128][1][1]["RewardItem"][1]["Attr"] = "0 1" -- SummerGoldfish*1
	tHanabi_Reward[3331128][1][1]["RewardEffect"] = {}
	tHanabi_Reward[3331128][1][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331128][1][1]["RewardEffect"]["Effect"] = "angelwing"
	-- FancyCarp - 5%
	tHanabi_Reward[3331128][1][2] = {}
	tHanabi_Reward[3331128][1][2]["RandomItemChanceType"] = 2
	tHanabi_Reward[3331128][1][2]["ItemChance"] = 500
	tHanabi_Reward[3331128][1][2]["RewardItem"] = {}
	tHanabi_Reward[3331128][1][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331128][1][2]["RewardItem"][1]["Id"] = 3331130 -- FancyCarp[3331130][属性:9][叠加:0][金币:0], 【表格】FancyCarp
	tHanabi_Reward[3331128][1][2]["RewardItem"][1]["Attr"] = "0 1" -- FancyCarp*1
	tHanabi_Reward[3331128][1][2]["RewardEffect"] = {}
	tHanabi_Reward[3331128][1][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331128][1][2]["RewardEffect"]["Effect"] = "angelwing"
-- 	tHanabi_Reward[3331128][1][2]["RewardBroadCast"] = "sBroadCastText" -- 全服公告
-- 	tHanabi_Reward[3331128][1][2]["RewardBroadCastType"] = 2005 -- 2005为【左上角】；2007为【左下角】
			-- 【动态掩码（54483, data0）】全服限量:（3）, 超限给编号（1）-
	tHanabi_Reward[3331128][1][2]["GlobalId"] = 54483
	tHanabi_Reward[3331128][1][2]["Pos"] = 0
	tHanabi_Reward[3331128][1][2]["MaxData"] = 3
	tHanabi_Reward[3331128][1][2]["FullIndex"] = 1

	-- ===坚固纸网
	-- ===索引:tHanabi_Reward[3331128][2]
	-- ===删除:3331128,1
	tHanabi_Reward[3331128][2] = {}
	tHanabi_Reward[3331128][2]["LogId"] = 12002000
	tHanabi_Reward[3331128][2]["DeleteItem"] = {}
	tHanabi_Reward[3331128][2]["DeleteItem"][1] = {}
	tHanabi_Reward[3331128][2]["DeleteItem"][1]["Id"] = 3331128 -- 【库】FirmFishnet[属性:9]
	tHanabi_Reward[3331128][2]["RewardItem"] = {}
	tHanabi_Reward[3331128][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331128][2]["RewardItem"][1]["Id"] = 3331129 -- SummerGoldfish[3331129][属性:9][叠加:0][金币:0], 【表格】SummerGoldfish
	tHanabi_Reward[3331128][2]["RewardItem"][1]["Attr"] = "0 1" -- SummerGoldfish*1
	tHanabi_Reward[3331128][2]["RewardEffect"] = {}
	tHanabi_Reward[3331128][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331128][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===SummerGoldfish
	-- ===索引:tHanabi_Reward[3331129]
	-- ===删除:3331129,1
	tHanabi_Reward[3331129] = {}
	tHanabi_Reward[3331129]["LogId"] = 12002000
	tHanabi_Reward[3331129]["DeleteItem"] = {}
	tHanabi_Reward[3331129]["DeleteItem"][1] = {}
	tHanabi_Reward[3331129]["DeleteItem"][1]["Id"] = 3331129 -- 【库】SummerGoldfish[属性:9]
	tHanabi_Reward[3331129]["RewardItem"] = {}
	tHanabi_Reward[3331129]["RewardItem"][1] = {}
	tHanabi_Reward[3331129]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tHanabi_Reward[3331129]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tHanabi_Reward[3331129]["RewardItem"][2] = {}
	tHanabi_Reward[3331129]["RewardItem"][2]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2
	tHanabi_Reward[3331129]["RewardItem"][2]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tHanabi_Reward[3331129]["RewardItem"][3] = {}
	tHanabi_Reward[3331129]["RewardItem"][3]["Id"] = 3322762 -- 10KKContributionMedal[3322762][属性:8][叠加:1][金币:0], 【表格】10M爵位勋章
	tHanabi_Reward[3331129]["RewardItem"][3]["Attr"] = "0 1 3 10080 1" -- 10KKContributionMedal（赠）*1
	tHanabi_Reward[3331129]["RewardItem"][4] = {}
	tHanabi_Reward[3331129]["RewardItem"][4]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331129]["RewardItem"][4]["Attr"] = "0 50" -- Amulet*50（[错误]物品数量超10个）
	tHanabi_Reward[3331129]["RewardEffect"] = {}
	tHanabi_Reward[3331129]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331129]["RewardEffect"]["Effect"] = "angelwing"


	-- ===FancyCarp
	-- ===索引:tHanabi_Reward[3331130]
	-- ===删除:3331130,1
	tHanabi_Reward[3331130] = {}
	tHanabi_Reward[3331130]["LogId"] = 12002000
	tHanabi_Reward[3331130]["DeleteItem"] = {}
	tHanabi_Reward[3331130]["DeleteItem"][1] = {}
	tHanabi_Reward[3331130]["DeleteItem"][1]["Id"] = 3331130 -- 【库】FancyCarp[属性:9]
	tHanabi_Reward[3331130]["RewardItem"] = {}
	tHanabi_Reward[3331130]["RewardItem"][1] = {}
	tHanabi_Reward[3331130]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tHanabi_Reward[3331130]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tHanabi_Reward[3331130]["RewardItem"][2] = {}
	tHanabi_Reward[3331130]["RewardItem"][2]["Id"] = 730004 -- +4Stone[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4
	tHanabi_Reward[3331130]["RewardItem"][2]["Attr"] = "0 1 3" -- +4Stone（赠）*1
	tHanabi_Reward[3331130]["RewardItem"][3] = {}
	tHanabi_Reward[3331130]["RewardItem"][3]["Id"] = 3322813 -- 100KKContributionMedal[3322813][属性:8][叠加:1][金币:0], 【表格】100M爵位勋章
	tHanabi_Reward[3331130]["RewardItem"][3]["Attr"] = "0 1 3 10080 1" -- 100KKContributionMedal（赠）*1
	tHanabi_Reward[3331130]["RewardItem"][4] = {}
	tHanabi_Reward[3331130]["RewardItem"][4]["Id"] = 3331139 -- Amulet[3331139][属性:9][叠加:0][金币:0], 【表格】御守
	tHanabi_Reward[3331130]["RewardItem"][4]["Attr"] = "0 500" -- Amulet*500（[错误]物品数量超10个）
	tHanabi_Reward[3331130]["RewardEffect"] = {}
	tHanabi_Reward[3331130]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331130]["RewardEffect"]["Effect"] = "angelwing"


	tHanabi_Reward[3331131] = {}
	-- ===5选1
	-- ===索引:tHanabi_Reward[3331131][1]
	-- ===删除:3331131,1
	tHanabi_Reward[3331131][1] = {}
	tHanabi_Reward[3331131][1]["LogId"] = 12002000
	tHanabi_Reward[3331131][1]["DeleteItem"] = {}
	tHanabi_Reward[3331131][1]["DeleteItem"][1] = {}
	tHanabi_Reward[3331131][1]["DeleteItem"][1]["Id"] = 3331131 -- 【库】30-dayGarmentSelectionPack[属性:9]
	tHanabi_Reward[3331131][1]["RewardItem"] = {}
	tHanabi_Reward[3331131][1]["RewardItem"][1] = {}
	tHanabi_Reward[3331131][1]["RewardItem"][1]["Id"] = 191075 -- MyersJumpsuit[191075][属性:0][叠加:0][金币:0], 【表格】191075
	tHanabi_Reward[3331131][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的MyersJumpsuit（赠）*1
	tHanabi_Reward[3331131][1]["RewardEffect"] = {}
	tHanabi_Reward[3331131][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331131][1]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5选1
	-- ===索引:tHanabi_Reward[3331131][2]
	-- ===删除:3331131,1
	tHanabi_Reward[3331131][2] = {}
	tHanabi_Reward[3331131][2]["LogId"] = 12002000
	tHanabi_Reward[3331131][2]["DeleteItem"] = {}
	tHanabi_Reward[3331131][2]["DeleteItem"][1] = {}
	tHanabi_Reward[3331131][2]["DeleteItem"][1]["Id"] = 3331131 -- 【库】30-dayGarmentSelectionPack[属性:9]
	tHanabi_Reward[3331131][2]["RewardItem"] = {}
	tHanabi_Reward[3331131][2]["RewardItem"][1] = {}
	tHanabi_Reward[3331131][2]["RewardItem"][1]["Id"] = 194405 -- FoxSpirit(Charm)[194405][属性:8][叠加:0][金币:0], 【表格】194405
	tHanabi_Reward[3331131][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的FoxSpirit(Charm)（赠）*1
	tHanabi_Reward[3331131][2]["RewardEffect"] = {}
	tHanabi_Reward[3331131][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331131][2]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5选1
	-- ===索引:tHanabi_Reward[3331131][3]
	-- ===删除:3331131,1
	tHanabi_Reward[3331131][3] = {}
	tHanabi_Reward[3331131][3]["LogId"] = 12002000
	tHanabi_Reward[3331131][3]["DeleteItem"] = {}
	tHanabi_Reward[3331131][3]["DeleteItem"][1] = {}
	tHanabi_Reward[3331131][3]["DeleteItem"][1]["Id"] = 3331131 -- 【库】30-dayGarmentSelectionPack[属性:9]
	tHanabi_Reward[3331131][3]["RewardItem"] = {}
	tHanabi_Reward[3331131][3]["RewardItem"][1] = {}
	tHanabi_Reward[3331131][3]["RewardItem"][1]["Id"] = 188395 -- FairyTale[188395][属性:0][叠加:0][金币:0], 【表格】188395
	tHanabi_Reward[3331131][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的FairyTale（赠）*1
	tHanabi_Reward[3331131][3]["RewardEffect"] = {}
	tHanabi_Reward[3331131][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331131][3]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5选1
	-- ===索引:tHanabi_Reward[3331131][4]
	-- ===删除:3331131,1
	tHanabi_Reward[3331131][4] = {}
	tHanabi_Reward[3331131][4]["LogId"] = 12002000
	tHanabi_Reward[3331131][4]["DeleteItem"] = {}
	tHanabi_Reward[3331131][4]["DeleteItem"][1] = {}
	tHanabi_Reward[3331131][4]["DeleteItem"][1]["Id"] = 3331131 -- 【库】30-dayGarmentSelectionPack[属性:9]
	tHanabi_Reward[3331131][4]["RewardItem"] = {}
	tHanabi_Reward[3331131][4]["RewardItem"][1] = {}
	tHanabi_Reward[3331131][4]["RewardItem"][1]["Id"] = 192495 -- MidsummerSuit[192495][属性:0][叠加:0][金币:0], 【表格】192495
	tHanabi_Reward[3331131][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的MidsummerSuit（赠）*1
	tHanabi_Reward[3331131][4]["RewardEffect"] = {}
	tHanabi_Reward[3331131][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331131][4]["RewardEffect"]["Effect"] = "angelwing"


	-- ===5选1
	-- ===索引:tHanabi_Reward[3331131][5]
	-- ===删除:3331131,1
	tHanabi_Reward[3331131][5] = {}
	tHanabi_Reward[3331131][5]["LogId"] = 12002000
	tHanabi_Reward[3331131][5]["DeleteItem"] = {}
	tHanabi_Reward[3331131][5]["DeleteItem"][1] = {}
	tHanabi_Reward[3331131][5]["DeleteItem"][1]["Id"] = 3331131 -- 【库】30-dayGarmentSelectionPack[属性:9]
	tHanabi_Reward[3331131][5]["RewardItem"] = {}
	tHanabi_Reward[3331131][5]["RewardItem"][1] = {}
	tHanabi_Reward[3331131][5]["RewardItem"][1]["Id"] = 192425 -- ColorOfWind[192425][属性:0][叠加:0][金币:100], 【表格】192425
	tHanabi_Reward[3331131][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1" -- 30天时效(激活)的ColorOfWind（赠）*1
	tHanabi_Reward[3331131][5]["RewardEffect"] = {}
	tHanabi_Reward[3331131][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331131][5]["RewardEffect"]["Effect"] = "angelwing"


	-- ===QualityPromoPack
	-- ===索引:tHanabi_Reward[3331132]
	-- ===删除:3331132,1
	tHanabi_Reward[3331132] = {}
	tHanabi_Reward[3331132]["LogId"] = 12002000
	tHanabi_Reward[3331132]["DeleteItem"] = {}
	tHanabi_Reward[3331132]["DeleteItem"][1] = {}
	tHanabi_Reward[3331132]["DeleteItem"][1]["Id"] = 3331132 -- 【库】QualityPromoPack[属性:9]
	tHanabi_Reward[3331132]["RewardItem"] = {}
	tHanabi_Reward[3331132]["RewardItem"][1] = {}
	tHanabi_Reward[3331132]["RewardItem"][1]["Id"] = 3331128 -- FirmFishnet[3331128][属性:9][叠加:0][金币:0], 【表格】3331128
	tHanabi_Reward[3331132]["RewardItem"][1]["Attr"] = "0 1" -- FirmFishnet*1
	tHanabi_Reward[3331132]["RewardItem"][2] = {}
	tHanabi_Reward[3331132]["RewardItem"][2]["Id"] = 3331126 -- AdvancedSummerFirework[3331126][属性:9][叠加:0][金币:0], 【表格】3331126
	tHanabi_Reward[3331132]["RewardItem"][2]["Attr"] = "0 1" -- AdvancedSummerFirework*1
	tHanabi_Reward[3331132]["RewardEffect"] = {}
	tHanabi_Reward[3331132]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331132]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10CommonFireworksPack
	-- ===索引:tHanabi_Reward[3331133]
	-- ===删除:3331133,1
	tHanabi_Reward[3331133] = {}
	tHanabi_Reward[3331133]["LogId"] = 12002000
	tHanabi_Reward[3331133]["DeleteItem"] = {}
	tHanabi_Reward[3331133]["DeleteItem"][1] = {}
	tHanabi_Reward[3331133]["DeleteItem"][1]["Id"] = 3331133 -- 【库】10CommonFireworksPack[属性:9]
	tHanabi_Reward[3331133]["RewardItem"] = {}
	tHanabi_Reward[3331133]["RewardItem"][1] = {}
	tHanabi_Reward[3331133]["RewardItem"][1]["Id"] = 3331124 -- CommonSummerFirework[3331124][属性:9][叠加:0][金币:0], 【表格】3331124
	tHanabi_Reward[3331133]["RewardItem"][1]["Attr"] = "0 10" -- CommonSummerFirework*10
	tHanabi_Reward[3331133]["RewardEffect"] = {}
	tHanabi_Reward[3331133]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331133]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10MediumFireworksPack
	-- ===索引:tHanabi_Reward[3331134]
	-- ===删除:3331134,1
	tHanabi_Reward[3331134] = {}
	tHanabi_Reward[3331134]["LogId"] = 12002000
	tHanabi_Reward[3331134]["DeleteItem"] = {}
	tHanabi_Reward[3331134]["DeleteItem"][1] = {}
	tHanabi_Reward[3331134]["DeleteItem"][1]["Id"] = 3331134 -- 【库】10MediumFireworksPack[属性:9]
	tHanabi_Reward[3331134]["RewardItem"] = {}
	tHanabi_Reward[3331134]["RewardItem"][1] = {}
	tHanabi_Reward[3331134]["RewardItem"][1]["Id"] = 3331125 -- MediumSummerFirework[3331125][属性:9][叠加:0][金币:0], 【表格】3331125
	tHanabi_Reward[3331134]["RewardItem"][1]["Attr"] = "0 10" -- MediumSummerFirework*10
	tHanabi_Reward[3331134]["RewardEffect"] = {}
	tHanabi_Reward[3331134]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331134]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10AdvancedSummerFirework
	-- ===索引:tHanabi_Reward[3331135]
	-- ===删除:3331135,1
	tHanabi_Reward[3331135] = {}
	tHanabi_Reward[3331135]["LogId"] = 12002000
	tHanabi_Reward[3331135]["DeleteItem"] = {}
	tHanabi_Reward[3331135]["DeleteItem"][1] = {}
	tHanabi_Reward[3331135]["DeleteItem"][1]["Id"] = 3331135 -- 【库】10AdvancedFireworksPack[属性:9]
	tHanabi_Reward[3331135]["RewardItem"] = {}
	tHanabi_Reward[3331135]["RewardItem"][1] = {}
	tHanabi_Reward[3331135]["RewardItem"][1]["Id"] = 3331126 -- AdvancedSummerFirework[3331126][属性:9][叠加:0][金币:0], 【表格】3331126
	tHanabi_Reward[3331135]["RewardItem"][1]["Attr"] = "0 10" -- AdvancedSummerFirework*10
	tHanabi_Reward[3331135]["RewardEffect"] = {}
	tHanabi_Reward[3331135]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331135]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10PaperFishnetsPack
	-- ===索引:tHanabi_Reward[3331136]
	-- ===删除:3331136,1
	tHanabi_Reward[3331136] = {}
	tHanabi_Reward[3331136]["LogId"] = 12002000
	tHanabi_Reward[3331136]["DeleteItem"] = {}
	tHanabi_Reward[3331136]["DeleteItem"][1] = {}
	tHanabi_Reward[3331136]["DeleteItem"][1]["Id"] = 3331136 -- 【库】10PaperFishnetsPack[属性:9]
	tHanabi_Reward[3331136]["RewardItem"] = {}
	tHanabi_Reward[3331136]["RewardItem"][1] = {}
	tHanabi_Reward[3331136]["RewardItem"][1]["Id"] = 3331127 -- PaperFishnet[3331127][属性:9][叠加:0][金币:0], 【表格】3331127
	tHanabi_Reward[3331136]["RewardItem"][1]["Attr"] = "0 10" -- PaperFishnet*10
	tHanabi_Reward[3331136]["RewardEffect"] = {}
	tHanabi_Reward[3331136]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331136]["RewardEffect"]["Effect"] = "angelwing"


	-- ===10FirmFishnetsPack
	-- ===索引:tHanabi_Reward[3331137]
	-- ===删除:3331137,1
	tHanabi_Reward[3331137] = {}
	tHanabi_Reward[3331137]["LogId"] = 12002000
	tHanabi_Reward[3331137]["DeleteItem"] = {}
	tHanabi_Reward[3331137]["DeleteItem"][1] = {}
	tHanabi_Reward[3331137]["DeleteItem"][1]["Id"] = 3331137 -- 【库】10FirmFishnetsPack[属性:9]
	tHanabi_Reward[3331137]["RewardItem"] = {}
	tHanabi_Reward[3331137]["RewardItem"][1] = {}
	tHanabi_Reward[3331137]["RewardItem"][1]["Id"] = 3331128 -- FirmFishnet[3331128][属性:9][叠加:0][金币:0], 【表格】3331128
	tHanabi_Reward[3331137]["RewardItem"][1]["Attr"] = "0 10" -- FirmFishnet*10
	tHanabi_Reward[3331137]["RewardEffect"] = {}
	tHanabi_Reward[3331137]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHanabi_Reward[3331137]["RewardEffect"]["Effect"] = "angelwing"


-------------------------------------------------------------------------------------
--进入地图
function Hanabi_Enter()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	local nHanabi_UserId = Get_UserId()

	local nHanabi_Map = tHanabi_Cont["Map"]["Act"]["MapId"]
	local nHanabi_PosX = tHanabi_Cont["Map"]["Act"]["PosX"]
	local nHanabi_PosY = tHanabi_Cont["Map"]["Act"]["PosY"]
	User_UserRandBoundTrans(nHanabi_Map,nHanabi_PosX,nHanabi_PosY,2,2,1)
end	
--提交
function Hanabi_HandIn()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	local nHanabi_UserId = Get_UserId()
	--无等级限制
	--复制表 并获取背包的御守总数
	local tCopyHandin = CommonFunc_Copy(tHanabi_HandIn)
	local nHanabi_Num = Get_CountItemType(tHanabi_Cont["Item"]["HandIn"],0)
	if nHanabi_Num == 0 then
		--无提交物品
		LinkNpcGossipFunc_New(tHanabi_Cont["Npc"]["Main"],"3-1")
		return
	end
	tCopyHandin["DeleteItem"][1]["ItemNum"] = nHanabi_Num
	--if not RewardTemplate_CheckSpace(tCopyHandin) then
	--	return
	--end
	if RewardTemplate_UseItemAndMsg(tCopyHandin) then
		--提交成功
		Task_AddStatistic(tHanabi_Cont["Stc"]["HandIn"]["Event"],tHanabi_Cont["Stc"]["HandIn"]["Data"],nHanabi_Num,1)
		LinkNpcGossipFunc_New(tHanabi_Cont["Npc"]["Main"],"4-1")
		return
	end
end

function Hanabi_UseChi()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	local nHanabi_UserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(0,1,nHanabi_UserId) then
		return
	end
	Task_StcReset(tHanabi_Cont["Stc"]["Chi"]["Event"],tHanabi_Cont["Stc"]["Chi"]["Data"])
	local nHanabi_Stc = Get_UserStatisticValue(tHanabi_Cont["Stc"]["Chi"]["Event"],tHanabi_Cont["Stc"]["Chi"]["Data"],nHanabi_UserId)
	if nHanabi_Stc >= 1 then
		return
	end
	local sSender = tHanabi_Text["SendMail"]["Sender"] 
	local sTitle = tHanabi_Text["SendMail"]["Title"]
	local sContent = tHanabi_Text["SendMail"]["Content"]
	local nExistDay = tHanabi_Cont["Mail"]["ExistDay"]
	local nActionId = tHanabi_Cont["Mail"]["Chi"]
	Sys_SendMail(nHanabi_UserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	Task_AddStatistic(tHanabi_Cont["Stc"]["Chi"]["Event"],tHanabi_Cont["Stc"]["Chi"]["Data"],1,1)
	Task_SetStcTimestamp(tHanabi_Cont["Stc"]["Chi"]["Event"],tHanabi_Cont["Stc"]["Chi"]["Data"],0)

end

function Hanabi_Sign()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	local nHanabi_UserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(0,1,nHanabi_UserId) then
		return
	end
	--每日重置
	Task_StcReset(tHanabi_Cont["Stc"]["Signin"]["Event"],tHanabi_Cont["Stc"]["Signin"]["Data"])
	local nHanabi_Stc = Get_UserStatisticValue(tHanabi_Cont["Stc"]["Signin"]["Event"],tHanabi_Cont["Stc"]["Signin"]["Data"],nHanabi_UserId)
	if nHanabi_Stc >= 1 then
		return
	end
	if RewardTemplate_UseItemAndMsg(tHanabi_Sign) then
		Task_AddStatistic(tHanabi_Cont["Stc"]["Signin"]["Event"],tHanabi_Cont["Stc"]["Signin"]["Data"],1,1)
		Task_SetStcTimestamp(tHanabi_Cont["Stc"]["Signin"]["Event"],tHanabi_Cont["Stc"]["Signin"]["Data"],0)
	end
end	
--打开网页
function Hanabi_OpenWeb()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	
	local sHanabi_Web = tHanabi_Cont["Web"]
	User_SendWebPage(sHanabi_Web)
end
--打开天石商店
function Hanabi_OpenShop()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	User_OpenDialog()
end
--个人排位赛获胜
--传入的userid
function Hanabi_Win(nUserId,nFieldNum)
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	if not User_JudgeLevelAndMetempsychosis(0,1,nUserId) then
		return
	end
	Task_StcReset(tHanabi_Cont["Stc"]["Rank"]["Event"],tHanabi_Cont["Stc"]["Rank"]["Data"],nUserId)
	local nHanabi_Stc = Get_UserStatisticValue(tHanabi_Cont["Stc"]["Rank"]["Event"],tHanabi_Cont["Stc"]["Rank"]["Data"],nUserId)
	--达到每日限量
	if nHanabi_Stc >= 10 then 
		return
	end
	--
	local sSender = tHanabi_Text["SendMail"]["Sender"] 
	local sTitle = tHanabi_Text["SendMail"]["Title"]
	local sContent = tHanabi_Text["SendMail"]["Content"]
	local nExistDay = tHanabi_Cont["Mail"]["ExistDay"]
	local nActionId = tHanabi_Cont["Mail"]["Action"]
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	Task_AddStatistic(tHanabi_Cont["Stc"]["Rank"]["Event"],tHanabi_Cont["Stc"]["Rank"]["Data"],1,1,nUserId)
	Task_SetStcTimestamp(tHanabi_Cont["Stc"]["Rank"]["Event"],tHanabi_Cont["Stc"]["Rank"]["Data"],0,nUserId)
end
--
function Hanabi_Buy()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	local nHanabi_UserId = Get_UserId()
	if Get_UserEMoney(nHanabi_UserId) < tHanabi_Buy["CostEMoney"]["Value"] then
		Sys_MsgBox(tHanabi_Text["NoMoney"])
		return
	end
	if RewardTemplate_UseItemAndMsg(tHanabi_Buy) then
		Task_AddStatistic(tHanabi_Cont["Stc"]["Buy"]["Event"],tHanabi_Cont["Stc"]["Buy"]["Data"],1,1)
		Task_SetStcTimestamp(tHanabi_Cont["Stc"]["Buy"]["Event"],tHanabi_Cont["Stc"]["Buy"]["Data"],0)
	end
end

function Hanabi_Kill()
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	local nHanabi_UserId = Get_UserId()
	if not User_JudgeLevelAndMetempsychosis(0,1,nHanabi_UserId) then
		return
	end
	--每日重置
	Task_StcReset(tHanabi_Cont["Stc"]["Drop"]["Event"],tHanabi_Cont["Stc"]["Drop"]["Data"])
	local nHanabi_Stc = Get_UserStatisticValue(tHanabi_Cont["Stc"]["Drop"]["Event"],tHanabi_Cont["Stc"]["Drop"]["Data"],nHanabi_UserId)
	if nHanabi_Stc >= 100 then
		return
	end
	--1%掉落
	if Sys_Random(1,100) then
		if RewardTemplate_UseItemAndMsg(tHanabi_Kill) then
			Task_AddStatistic(tHanabi_Cont["Stc"]["Drop"]["Event"],tHanabi_Cont["Stc"]["Drop"]["Data"],1,1)
			Task_SetStcTimestamp(tHanabi_Cont["Stc"]["Drop"]["Event"],tHanabi_Cont["Stc"]["Drop"]["Data"],0,nHanabi_UserId)
			if nHanabi_Stc == 99 then
				Sys_MsgBox(tHanabi_Text["MonsterCoin"])
			end
		end
	end
end
function Hanabi_Exit()
	local nHanabi_Flag = 1
	if SpecialServer_ChkNoGiftServer() then
		nHanabi_Flag = 2
	end
	local nHanabi_Map = tHanabi_Cont["Map"]["Back"][nHanabi_Flag]["MapId"]
	local nHanabi_PosX = tHanabi_Cont["Map"]["Back"][nHanabi_Flag]["PosX"]
	local nHanabi_PosY = tHanabi_Cont["Map"]["Back"][nHanabi_Flag]["PosY"]
	User_UserRandBoundTrans(nHanabi_Map,nHanabi_PosX,nHanabi_PosY,2,2,1)
end
function Hanabi_TeamEnterChk(nHanabi_TeamId,nHanabi_UserId)
	if Get_UserMapId(nHanabi_UserId) == tHanabi_Cont["Map"]["Act"]["MapId"] then
		tHanabi_Team[nHanabi_TeamId] = tHanabi_Team[nHanabi_TeamId] + 1
	end
end
function Hanabi_JudgeDistance()
	local nUserCellx = Get_UserPositionX()
	local nUserCelly = Get_UserPositionY()
	if math.abs(nUserCellx-tHanabi_Cont["Pool"]["PosX"]) > 3 then
		return false
	end
	if math.abs(nUserCelly-tHanabi_Cont["Pool"]["PosY"]) > 3 then
		return false
	end
	return true
end
function Hanabi_OpenBag(nItemId,nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tHanabi_Reward[nItemId][nNum])
end
function Hanabi_Scoop(nItemId,nUserId)
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then 
		return
	end
	if nItemId == 3331128 then
		local nFlag = true
		for i = 1,3 do 
			local nGlobalData = Get_SysDynaGlobalData(tHanabi_Cont["Global"]["Record"],i)
			if nUserId == nGlobalData then
				nFlag = false
			end
		end
		if not nFlag then
			RewardTemplate_UseItemAndMsg(tHanabi_Reward[nItemId][2],nUserId)
		else
			local tReward = RewardTemplate_RandomReward(tHanabi_Reward[nItemId],1,nUserId)
			if type(tReward) == "table" then
				if tReward[1]["tAward"][1]["RewardItem"][1]["Id"] == tHanabi_Cont["Item"]["Koi"] then
					Sys_SystemBroadcast(string.format(tHanabi_Text["Broad"]["Koi"],Get_UserName(nHanabi_UserId)))
					Sys_MsgBox(tHanabi_Text["SuccessKoi"],nil,nil,nUserId)
					Hanabi_Record(nUserId)
					return
				else
					Sys_MsgBox(tHanabi_Text["SuccessPaper"],nil,nil,nUserId)
				end
			end
		end
	else 
		local tReward = RewardTemplate_RandomReward(tHanabi_Reward,nItemId,nUserId)
		if type(tReward) == "table" then
			if tReward[1]["tAward"][1]["RewardStrengthValue"] ~= nil then
				Sys_MsgBox(tHanabi_Text["Fail"],nil,nil,nUserId)
			else
				Sys_MsgBox(tHanabi_Text["SuccessPaper"],nil,nil,nUserId)
			end
		end
	end
end

function Hanabi_Record(nHanabi_UserId)
	for j = 1,3 do 
		if Get_SysDynaGlobalData(tHanabi_Cont["Global"]["Record"],j) == 0 then
			Sys_SetSynaGlobalData(tHanabi_Cont["Global"]["Record"],j,nHanabi_UserId)
			break
		end
	end
end


-------------------------------------------------------------------------------------
--夏日铜币

tItem[3331123] = tItem[3331123] or {}
tItem[3331123]["Function"] = function(nItemId)
	local nHanabi_UserId = Get_UserId() 
	--过期删除
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId,nHanabi_UserId)
		return
	end
	if Get_UserMapId(nHanabi_UserId) ~= tHanabi_Cont["Map"]["Act"]["MapId"] then
		--寻路至主npc
		NpcPosition_PathFind(tHanabi_Cont["Npc"]["Main"])
	else
		NpcPosition_PathFind(tHanabi_Cont["Npc"]["Exchange"])
	end
end
--
tItem[3331124] = tItem[3331124] or {}
tItem[3331124]["Function"] = function(nItemId)
	local nHanabi_UserId = Get_UserId() 
	--过期删除
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId,nHanabi_UserId)
		return
	end
	--获取队伍id 检验本地图是否有3个队伍成员
	if Get_UserMapId(nHanabi_UserId) ~= tHanabi_Cont["Map"]["Act"]["MapId"] then
		--寻路至主npc
		NpcPosition_PathFind(tHanabi_Cont["Npc"]["Main"])
		return
	end
	if Get_UserTeamNumbers() >= 3 then
		local nHanabi_TeamId = Get_UserTeamId(nHanabi_UserId)
		tHanabi_Team[nHanabi_TeamId] = 0
		--执行团队检测 查询该地图是否有3个队伍成员 
		User_TeamExeFuncByTeamer(3,"Hanabi_TeamEnterChk</N>"..nHanabi_TeamId,nHanabi_UserId)
		--三个以上的队友在该地图时翻倍
		if tHanabi_Team[nHanabi_TeamId] >= 3 then
			RewardTemplate_RandomReward(tHanabi_Reward[nItemId],2)
		else
			RewardTemplate_RandomReward(tHanabi_Reward[nItemId],1)
		end
	else
		RewardTemplate_RandomReward(tHanabi_Reward[nItemId],1)
	end
end
tItem[3331125] = tItem[3331124]
tItem[3331126] = tItem[3331124]

tItem[3331127] = tItem[3331127] or {} 
tItem[3331127]["Function"] = function(nItemId)
	local nHanabi_UserId = Get_UserId() 
	--过期删除
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId,nHanabi_UserId)
		return
	end
	if Get_UserMapId(nHanabi_UserId) ~= tHanabi_Cont["Map"]["Act"]["MapId"] then
		--寻路至主npc
		NpcPosition_PathFind(tHanabi_Cont["Npc"]["Main"])
	else
		if not Hanabi_JudgeDistance() then
			Sys_MsgBox(tHanabi_Text["Near"])
			Sys_GotoSomeWhere(tHanabi_Cont["Pool"]["PosX"],tHanabi_Cont["Pool"]["PosY"],10862)
		else
			User_SetExplore(2,tHanabi_Text["Scooping"],220,"Hanabi_Scoop</N>"..nItemId)
		end
	end
end
--坚固的网 逻辑放在函数中 这里只链接npc
tItem[3331128] = tItem[3331127] 


--金鱼
tItem[3331129] = tItem[3331129] or {}
tItem[3331129]["Function"] = function(nItemId)
	local nHanabi_UserId = Get_UserId() 
	--过期删除
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId,nHanabi_UserId)
		return
	end
	if Get_UserMapId(nHanabi_UserId) ~= tHanabi_Cont["Map"]["Act"]["MapId"] then
		--寻路至主npc
		NpcPosition_PathFind(tHanabi_Cont["Npc"]["Main"])
	else
		if not Hanabi_JudgeDistance() then
			Sys_MsgBox(tHanabi_Text["Near"])
			Sys_GotoSomeWhere(tHanabi_Cont["Pool"]["PosX"],tHanabi_Cont["Pool"]["PosY"],10862)
		else
			--读条 捞鱼
			if RewardTemplate_UseItemAndMsg(tHanabi_Reward[nItemId]) then
				Sys_MsgBox(tHanabi_Text["Free"])
			end
		end
	end
end
tItem[3331130] = tItem[3331129]

tItem[3331131] = tItem[3331131] or {}
tItem[3331131]["Function"] = function(nItemId) 
	local nHanabi_UserId = Get_UserId() 
	--过期删除
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId,nHanabi_UserId)
		return
	end
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3331131]["OptionHidden"] = 1
tItem[3331131]["DialogueText"] = tHanabi_Text[3331131]
tItem[3331131]["Text1-1"] = {111}
tItem[3331131]["tOption1-1"] = {111,112,113,114,115}
tItem[3331131]["OptionFunc111"] = "Hanabi_OpenBag</N>3331131</N>1"
tItem[3331131]["OptionFunc112"] = "Hanabi_OpenBag</N>3331131</N>2"
tItem[3331131]["OptionFunc113"] = "Hanabi_OpenBag</N>3331131</N>3"
tItem[3331131]["OptionFunc114"] = "Hanabi_OpenBag</N>3331131</N>4"
tItem[3331131]["OptionFunc115"] = "Hanabi_OpenBag</N>3331131</N>5"

tItem[3331132] = tItem[3331132] or {}
tItem[3331132]["Function"] = function(nItemId)
	local nHanabi_UserId = Get_UserId() 
	--过期删除
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId,nHanabi_UserId)
		return
	end
	if not Item_ChkItem(nItemId) then
		return
	end
	RewardTemplate_UseItemAndMsg(tHanabi_Reward[nItemId])
end
tItem[3331133] = tItem[3331132]
tItem[3331134] = tItem[3331132]
tItem[3331135] = tItem[3331132]
tItem[3331136] = tItem[3331132]
tItem[3331137] = tItem[3331132]

tItem[3331139] = tItem[3331139] or {}
tItem[3331139]["Function"] = function(nItemId)
	local nHanabi_UserId = Get_UserId() 
	--过期删除
	if not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) then
		Item_DelAllItemByType(nItemId,nHanabi_UserId)
		return
	end
	NpcPosition_PathFind(tHanabi_Cont["Npc"]["Main"])

end


tNpcFace[5018] = 2
tNpcGossip[26563] = tNpcGossip[26563] or DefaultNpc:new{}
tNpcGossip[26563]["OptionHidden"] = 1

--活动前
tNpcGossip[26563]["DialogueText"] = tHanabi_Text[26563]
tNpcGossip[26563]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[26563]["tOption1-1"] = {111}
tNpcGossip[26563]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tHanabi_Cont["ActivityTime"])
end
--活动后
tNpcGossip[26563]["Text1-2"] = {111,121}
tNpcGossip[26563]["tOption1-2"] = {121}
tNpcGossip[26563]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tHanabi_Cont["ActivityTime"])
end
--活动中
tNpcGossip[26563]["Text1-3"] = {111,112,131,113,114,115}
tNpcGossip[26563]["tOption1-3"] = {131,132,133,134}
tNpcGossip[26563]["ChkFunc1-3"] = function()
	local nUserId = Get_UserId()
	return Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(0,1,nUserId) 
end
--进入地图
tNpcGossip[26563]["OptionFunc131"] = "Hanabi_Enter"
tNpcGossip[26563]["OptionFunc132"] = "Hanabi_HandIn"
tNpcGossip[26563]["OptionPoint133"] = "2-1"
tNpcGossip[26563]["OptionFunc134"] = "Hanabi_OpenWeb"

tNpcGossip[26563]["Text1-4"] = {111,112,113,114,115}
tNpcGossip[26563]["tOption1-4"] = {141}
tNpcGossip[26563]["ChkFunc1-4"] = function()
	local nUserId = Get_UserId()
	return Sys_ChkFullTime(tHanabi_Cont["ActivityTime"]) and (not User_JudgeLevelAndMetempsychosis(0,1,nUserId))
end

tNpcGossip[26563]["Text2-1"] = {211,212,213,214,215,216,217,218}
tNpcGossip[26563]["tOption2-1"] = {211}

tNpcGossip[26563]["Text4-1"] = {411}
tNpcGossip[26563]["tOption4-1"] = {411}

tNpcGossip[26563]["Text3-1"] = {311}
tNpcGossip[26563]["tOption3-1"] = {311}

--商店
tNpcFace[2560] = 193
tNpcGossip[26561] = tNpcGossip[26561] or DefaultNpc:new{}
tNpcGossip[26561]["OptionHidden"] = 1
tNpcGossip[26561]["DialogueText"] = tHanabi_Text[26561]

tNpcGossip[26561]["Text1-1"] = {111,112,113}
tNpcGossip[26561]["tOption1-1"] = {111,112}
tNpcGossip[26561]["OptionFunc111"] = "Hanabi_OpenShop"
tNpcGossip[26561]["ChkFunc1-1"] = function()
	if Get_UserStatisticValue(tHanabi_Cont["Stc"]["Buy"]["Event"],tHanabi_Cont["Stc"]["Buy"]["Data"]) >= 10 then
		tNpcGossip[26561]["tOption1-1"] = {111}
	end
	return true
end
tNpcGossip[26561]["OptionPoint112"] = "2-1"

tNpcGossip[26561]["Text2-1"] = {211,212}
tNpcGossip[26561]["tOption2-1"] = {211,212}
tNpcGossip[26561]["ChkFunc2-1"] = function()
	local nHanabi_Stc = Get_UserStatisticValue(tHanabi_Cont["Stc"]["Buy"]["Event"],tHanabi_Cont["Stc"]["Buy"]["Data"]) or 0
	tNpcGossip[26561]["Text212"] = string.format(tHanabi_Text[26561]["Text212"],nHanabi_Stc)
	return true
end
tNpcGossip[26561]["OptionFunc211"] = "Hanabi_Buy"





--杀怪掉落 每日限量100个铜币
local tHanabi_KillMonster = {}
tHanabi_KillMonster["ActivityTime"] = tHanabi_Cont["ActivityTime"]
tHanabi_KillMonster["Function"] = Hanabi_Kill
table.insert(tMonsterDrop_AreaLoad,tHanabi_KillMonster)

--激情服怪物掉落
local tHanabi_KillMonster_NoGift = {}
tHanabi_KillMonster_NoGift["Function"] = Hanabi_Kill
tHanabi_KillMonster_NoGift["ActivityTime"] = tHanabi_Cont["ActivityTime"]
tHanabi_KillMonster_NoGift["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad_NoGift,tHanabi_KillMonster_NoGift)

tGlobalData_Info[54483] = {}
tGlobalData_Info[54483]["Time"] = {}
tGlobalData_Info[54483]["Time"]["ActivityTime"] = tHanabi_Cont["ActivityTime"]
tGlobalData_Info[54483]["Time"]["ClearTime"] = "00:00 00:03"
tGlobalData_Info[54483]["Rest"] = {}
tGlobalData_Info[54483]["Rest"]["GlobalId"] = {54483}
tGlobalData_Info[54483]["Rest"]["Pos"] = {0,1,2,3}

--个人排位赛 赢场触发
tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
table.insert(tArenicWins["tFunction"],Hanabi_Win)