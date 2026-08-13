------------------------------------------------------------------------------------
--Name：      191211[ios英文征服][活动脚本]老玩家召回（1.9-1.31）
--Creator:      郑洵
--Created:     2019/12/11
------------------------------------------------------------------------------------

--命名前缀
--RecallOfOldPlayers_

-- logid:12001785
-- 41663 = V100\ActiveScript\[Conquer][ActiveScript]RecallOfOldPlayers.lua
-- 41663 = V100\活动脚本\[征服][活动脚本]老玩家召回.lua

--stc掩码说明
--stc(211 41)			记录背包信获得
--stc(211 42)			记录回归礼盒使用
--stc(211 43)			记录侠义令使用
--stc(211 44)			记录1000赠点包使用
--stc(211 45)			记录5000修为值礼包使用
--stc(211 46)			记录通关1次镇魔塔
--stc(211 47)			记录使用5次正气令
--stc(211 48)			记录完成1次精英PK赛
--stc(211 49)			记录完成1次本服战旗争霸赛
--stc(211 50)			记录累计登陆7天


--动态全局表说明
--ID: 54080: Data0位标记上架本活动的服务器
--ID: 54081: Data0-Data5位记录流失玩家,
--					DataStr0-DataStr5位标识流失玩家回归
--ID: 54082: Data0-Data5位记录流失玩家,
--					DataStr0-DataStr5位标识流失玩家回归
--ID: 54083: Data0-Data5位记录流失玩家,
--					DataStr0-DataStr5位标识流失玩家回归
--ID: 54084: Data0-Data5位记录流失玩家,
--					DataStr0-DataStr5位标识流失玩家回归


--------------------------------------------------常量表---------------------------------------------
-- 常量表
local tRecallOfOldPlayers_Cont = {}
	--等级限制
	tRecallOfOldPlayers_Cont["Level"] = 0
	tRecallOfOldPlayers_Cont["Metempsychosis"] = 2
	--聚星辰 ID
	tRecallOfOldPlayers_Cont["MainNPCId"] = 25758
	--背包信 ID
	tRecallOfOldPlayers_Cont["BackpackLetter"] = 3314791
	--侠义令 ID
	tRecallOfOldPlayers_Cont["ChgItemId"] = 3314793
	--回归礼包 ID
	tRecallOfOldPlayers_Cont["BackItemId"] = 3314792
	--接任务光效
	tRecallOfOldPlayers_Cont["TaskEffect"] = "zf2-e128"
	--回归奖励
	tRecallOfOldPlayers_Cont["BackReward"] = 575513
	--回归任务奖励
	tRecallOfOldPlayers_Cont["BackTaskReward"] = {}
	tRecallOfOldPlayers_Cont["BackTaskReward"][1] = 575508
	tRecallOfOldPlayers_Cont["BackTaskReward"][2] = 575509
	tRecallOfOldPlayers_Cont["BackTaskReward"][3] = 575510
	tRecallOfOldPlayers_Cont["BackTaskReward"][4] = 575511
	tRecallOfOldPlayers_Cont["BackTaskReward"][5] = 575512
	--标记服务器有本活动
	tRecallOfOldPlayers_Cont["OldPlayerGlobal"] = 54080
	--流失玩家名单
	tRecallOfOldPlayers_Cont["OldPlayer"] = {}
	tRecallOfOldPlayers_Cont["OldPlayer"][1] = 54081
	tRecallOfOldPlayers_Cont["OldPlayer"][2] = 54082
	tRecallOfOldPlayers_Cont["OldPlayer"][3] = 54083
	tRecallOfOldPlayers_Cont["OldPlayer"][4] = 54084

-- 活动时间
local tRecallOfOldPlayers_ActivityTime = {}
	tRecallOfOldPlayers_ActivityTime["ActivityTime"] = tActivityTime["RecallOfOldPlayers"]["ActivityTime"] 

-- 记录LOG
local tRecallOfOldPlayers_Log = {}
	-- 删除物品LOG
	tRecallOfOldPlayers_Log["Del"] = "0,0,%d,%d,12001785,2,0,0"
	-- 回归任务LOG
	tRecallOfOldPlayers_Log["BackTask"] = {}
	tRecallOfOldPlayers_Log["BackTask"][1] = "0,0,0,0,12001785,2[1],0,0"
	tRecallOfOldPlayers_Log["BackTask"][2] = "0,0,0,0,12001785,2[2],0,0"
	tRecallOfOldPlayers_Log["BackTask"][3] = "0,0,0,0,12001785,2[3],0,0"
	tRecallOfOldPlayers_Log["BackTask"][4] = "0,0,0,0,12001785,2[4],0,0"
	tRecallOfOldPlayers_Log["BackTask"][5] = "0,0,0,0,12001785,2[5],0,0"
	-- 老玩家回归奖励LOG
	tRecallOfOldPlayers_Log["BackReward"] = "0,0,12001785,2,3314792[3314793],1[5]"
	-- 运营要求的emoney_buy log
	tRecallOfOldPlayers_Log["Emoney_buy"] = {}
	tRecallOfOldPlayers_Log["Emoney_buy"]["ChgReward"] = "350	23049	0	0	1	"
	tRecallOfOldPlayers_Log["Emoney_buy"]["BackReward"] = "350	23050	0	0	1	"
	tRecallOfOldPlayers_Log["Emoney_buy"]["BackTask"] = {}
	tRecallOfOldPlayers_Log["Emoney_buy"]["BackTask"][1] = "350	23044	0	0	1	"
	tRecallOfOldPlayers_Log["Emoney_buy"]["BackTask"][2] = "350	23045	0	0	1	"
	tRecallOfOldPlayers_Log["Emoney_buy"]["BackTask"][3] = "350	23046	0	0	1	"
	tRecallOfOldPlayers_Log["Emoney_buy"]["BackTask"][4] = "350	23047	0	0	1	"
	tRecallOfOldPlayers_Log["Emoney_buy"]["BackTask"][5] = "350	23048	0	0	1	"


	--隔天清零掩码
local tRecallOfOldPlayers_Stc = {}
	--背包信
	tRecallOfOldPlayers_Stc[3314791] = {}
	tRecallOfOldPlayers_Stc[3314791]["EventType"] = 211
	tRecallOfOldPlayers_Stc[3314791]["DataType"] = 41
	--回归礼盒
	tRecallOfOldPlayers_Stc[3314792] = {}
	tRecallOfOldPlayers_Stc[3314792]["EventType"] = 211
	tRecallOfOldPlayers_Stc[3314792]["DataType"] = 42
	--侠义令
	tRecallOfOldPlayers_Stc[3314793] = {}
	tRecallOfOldPlayers_Stc[3314793]["EventType"] = 211
	tRecallOfOldPlayers_Stc[3314793]["DataType"] = 43
	tRecallOfOldPlayers_Stc[3314793]["LimitData"] = 10
	--1000赠点包
	tRecallOfOldPlayers_Stc[3314795] = {}
	tRecallOfOldPlayers_Stc[3314795]["EventType"] = 211
	tRecallOfOldPlayers_Stc[3314795]["DataType"] = 44
	tRecallOfOldPlayers_Stc[3314795]["LimitData"] = 10
	tRecallOfOldPlayers_Stc[3314795]["EMoneyMono"] = 1
	--5000修为值礼包
	tRecallOfOldPlayers_Stc[3314796] = {}
	tRecallOfOldPlayers_Stc[3314796]["EventType"] = 211
	tRecallOfOldPlayers_Stc[3314796]["DataType"] = 45
	tRecallOfOldPlayers_Stc[3314796]["LimitData"] = 5
	tRecallOfOldPlayers_Stc[3314796]["EMoneyMono"] = 0

	-- 2020.4.12复用 3314795 1000赠点包
	tRecallOfOldPlayers_Stc[3315897] = {}
	tRecallOfOldPlayers_Stc[3315897]["EventType"] = 218
	tRecallOfOldPlayers_Stc[3315897]["DataType"] = 67
	tRecallOfOldPlayers_Stc[3315897]["LimitData"] = 10
	tRecallOfOldPlayers_Stc[3315897]["EMoneyMono"] = 1
	--通关1次镇魔塔
	tRecallOfOldPlayers_Stc[1] = {}
	tRecallOfOldPlayers_Stc[1]["EventType"] = 211
	tRecallOfOldPlayers_Stc[1]["DataType"] = 46
	tRecallOfOldPlayers_Stc[1]["LimitData"] = 1
	--使用5次正气令
	tRecallOfOldPlayers_Stc[2] = {}
	tRecallOfOldPlayers_Stc[2]["EventType"] = 211
	tRecallOfOldPlayers_Stc[2]["DataType"] = 47
	tRecallOfOldPlayers_Stc[2]["LimitData"] = 5
	--完成1次精英PK赛
	tRecallOfOldPlayers_Stc[3] = {}
	tRecallOfOldPlayers_Stc[3]["EventType"] = 211
	tRecallOfOldPlayers_Stc[3]["DataType"] = 48
	tRecallOfOldPlayers_Stc[3]["LimitData"] = 1
	--完成1次本服战旗争霸赛
	tRecallOfOldPlayers_Stc[4] = {}
	tRecallOfOldPlayers_Stc[4]["EventType"] = 211
	tRecallOfOldPlayers_Stc[4]["DataType"] = 49
	tRecallOfOldPlayers_Stc[4]["LimitData"] = 1
	--累计登陆7天
	tRecallOfOldPlayers_Stc[5] = {}
	tRecallOfOldPlayers_Stc[5]["EventType"] = 211
	tRecallOfOldPlayers_Stc[5]["DataType"] = 50
	tRecallOfOldPlayers_Stc[5]["LimitData"] = 7

--奖励模板
local tRecallOfOldPlayers_Reward = {}
	-- ===江湖聚首礼盒
	-- ===索引:tRecallOfOldPlayers_Reward[3314792]
	-- ===删除:3314792,1
	tRecallOfOldPlayers_Reward[3314792] = {}
	tRecallOfOldPlayers_Reward[3314792]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314792]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314792]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314792]["DeleteItem"][1]["Id"] = 3314792 -- 【库】HeroReunionPack[属性:9]
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"] = {}
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][1]["Id"] = 195045 -- BlissfulForeverHeart[195045][属性:8][叠加:0][金币:0], 【表格】BlissfulForeverHeart*1
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1" -- 7天时效(激活)的1%神佑BlissfulForeverHeart（赠）*1
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][2] = {}
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][2]["Id"] = 3314795 -- 1000CPs(B)Pack[3314795][属性:9][叠加:10000][金币:0], 【表格】1000赠点包*1
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][2]["Attr"] = "0 1" -- 1000CPs(B)Pack*1
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][3] = {}
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][3]["Id"] = 3314796 -- 5000PotencyPointsPack[3314796][属性:9][叠加:10000][金币:0], 【表格】5000修为值礼包*1
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][3]["Attr"] = "0 1" -- 5000PotencyPointsPack*1
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][4] = {}
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][4]["Id"] = 3314794 -- LuckyReturnWheel[3314794][属性:9][叠加:10000][金币:0], 【表格】幸运回归轮盘*1
	tRecallOfOldPlayers_Reward[3314792]["RewardItem"][4]["Attr"] = "0 1" -- LuckyReturnWheel*1
	tRecallOfOldPlayers_Reward[3314792]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314792]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314792]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314793] = {}
	-- ===召回奖励
	-- ===索引:tRecallOfOldPlayers_Reward[3314793]
	-- ===删除:3314793,1
	tRecallOfOldPlayers_Reward[3314793]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314793]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314793]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314793]["DeleteItem"][1]["Id"] = 3314793 -- 【库】BrotherhoodToken[属性:10]
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"] = {}
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】+2赤炼石*1
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][2] = {}
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][2]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][3] = {}
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][3]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强练丹*30
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][3]["Attr"] = "0 30 3" -- FavoredTrainingPill（赠）*30
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][4] = {}
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][4]["Id"] = 3314797 -- CP(B)Pack[3314797][属性:9][叠加:10000][金币:0], 【表格】爱心赠点盒*1
	tRecallOfOldPlayers_Reward[3314793]["RewardItem"][4]["Attr"] = "0 1" -- CP(B)Pack*1
	tRecallOfOldPlayers_Reward[3314793]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314793]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314793]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314797] = {}
	-- ===爱心赠点盒
	-- ===索引:tRecallOfOldPlayers_Reward[3314797]
	-- ===删除:3314797,1
	-- ===NewEMoneyLog: 1000,1371
	tRecallOfOldPlayers_Reward[3314797]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tRecallOfOldPlayers_Reward[3314797]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314797]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314797]["DeleteItem"][1]["Id"] = 3314797 -- 【库】CP(B)Pack[属性:9]
	tRecallOfOldPlayers_Reward[3314797]["LogId"] = 12001785
	-- 50赠点 - 40%
	tRecallOfOldPlayers_Reward[3314797][1] = {}
	tRecallOfOldPlayers_Reward[3314797][1]["RandomItemChanceType"] = 2
	tRecallOfOldPlayers_Reward[3314797][1]["ItemChance"] = 4000
	tRecallOfOldPlayers_Reward[3314797][1]["RewardEMoneyMono"] = {}
	tRecallOfOldPlayers_Reward[3314797][1]["RewardEMoneyMono"]["Value"] = 50 -- 天石（赠）, 【需求】50赠点
	tRecallOfOldPlayers_Reward[3314797][1]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1371"
	tRecallOfOldPlayers_Reward[3314797][1]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314797][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314797][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 100赠点 - 55%
	tRecallOfOldPlayers_Reward[3314797][2] = {}
	tRecallOfOldPlayers_Reward[3314797][2]["RandomItemChanceType"] = 2
	tRecallOfOldPlayers_Reward[3314797][2]["ItemChance"] = 5500
	tRecallOfOldPlayers_Reward[3314797][2]["RewardEMoneyMono"] = {}
	tRecallOfOldPlayers_Reward[3314797][2]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100赠点
	tRecallOfOldPlayers_Reward[3314797][2]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1371"
	tRecallOfOldPlayers_Reward[3314797][2]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314797][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314797][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 200赠点 - 5%
	tRecallOfOldPlayers_Reward[3314797][3] = {}
	tRecallOfOldPlayers_Reward[3314797][3]["RandomItemChanceType"] = 2
	tRecallOfOldPlayers_Reward[3314797][3]["ItemChance"] = 500
	tRecallOfOldPlayers_Reward[3314797][3]["RewardEMoneyMono"] = {}
	tRecallOfOldPlayers_Reward[3314797][3]["RewardEMoneyMono"]["Value"] = 200 -- 天石（赠）, 【需求】200赠点
	tRecallOfOldPlayers_Reward[3314797][3]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1371"
	tRecallOfOldPlayers_Reward[3314797][3]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314797][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314797][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 500赠点 - 0%
	tRecallOfOldPlayers_Reward[3314797][4] = {}
	tRecallOfOldPlayers_Reward[3314797][4]["RandomItemChanceType"] = 2
	tRecallOfOldPlayers_Reward[3314797][4]["ItemChance"] = 0
	tRecallOfOldPlayers_Reward[3314797][4]["RewardEMoneyMono"] = {}
	tRecallOfOldPlayers_Reward[3314797][4]["RewardEMoneyMono"]["Value"] = 500 -- 天石（赠）, 【需求】500赠点
	tRecallOfOldPlayers_Reward[3314797][4]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1371"
	tRecallOfOldPlayers_Reward[3314797][4]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314797][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314797][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000赠点 - 0%
	tRecallOfOldPlayers_Reward[3314797][5] = {}
	tRecallOfOldPlayers_Reward[3314797][5]["RandomItemChanceType"] = 2
	tRecallOfOldPlayers_Reward[3314797][5]["ItemChance"] = 0
	tRecallOfOldPlayers_Reward[3314797][5]["RewardEMoneyMono"] = {}
	tRecallOfOldPlayers_Reward[3314797][5]["RewardEMoneyMono"]["Value"] = 1000 -- 天石（赠）, 【需求】1000赠点
	tRecallOfOldPlayers_Reward[3314797][5]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1371"
	tRecallOfOldPlayers_Reward[3314797][5]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314797][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314797][5]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314795] = {}
	-- ===1000赠点包
	-- ===索引:tRecallOfOldPlayers_Reward[3314795]
	-- ===NewEMoneyLog: 1000,1372
	tRecallOfOldPlayers_Reward[3314795]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314795]["RewardEMoneyMono"] = {}
	tRecallOfOldPlayers_Reward[3314795]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100赠点
	tRecallOfOldPlayers_Reward[3314795]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1372"
	tRecallOfOldPlayers_Reward[3314795]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314795]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314795]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314796] = {}
	-- ===5000点修为值礼盒
	-- ===索引:tRecallOfOldPlayers_Reward[3314796]
	tRecallOfOldPlayers_Reward[3314796]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314796]["RewardRepairValue"] = {}
	tRecallOfOldPlayers_Reward[3314796]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】500修为值
	tRecallOfOldPlayers_Reward[3314796]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314796]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314796]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314798] = {}
	-- ===‘+3赤炼石（赠）
	-- ===索引:tRecallOfOldPlayers_Reward[3314798]
	-- ===删除:3314798,1
	tRecallOfOldPlayers_Reward[3314798]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314798]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314798]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314798]["DeleteItem"][1]["Id"] = 3314798 -- 【库】+3StonePack[属性:9]
	tRecallOfOldPlayers_Reward[3314798]["RewardItem"] = {}
	tRecallOfOldPlayers_Reward[3314798]["RewardItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314798]["RewardItem"][1]["Id"] = 730003 -- +3Stone[730003][属性:0][叠加:0][金币:0], 【表格】‘+3赤炼石（赠）
	tRecallOfOldPlayers_Reward[3314798]["RewardItem"][1]["Attr"] = "0 1 3" -- +3Stone（赠）*1
	tRecallOfOldPlayers_Reward[3314798]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314798]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314798]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314799] = {}
	-- ===固化石（赠）
	-- ===索引:tRecallOfOldPlayers_Reward[3314799]
	-- ===删除:3314799,1
	tRecallOfOldPlayers_Reward[3314799]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314799]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314799]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314799]["DeleteItem"][1]["Id"] = 3314799 -- 【库】PermanentStonePack[属性:9]
	tRecallOfOldPlayers_Reward[3314799]["RewardItem"] = {}
	tRecallOfOldPlayers_Reward[3314799]["RewardItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314799]["RewardItem"][1]["Id"] = 723694 -- PermanentStone[723694][属性:0][叠加:0][金币:0], 【表格】固化石（赠）
	tRecallOfOldPlayers_Reward[3314799]["RewardItem"][1]["Attr"] = "0 1 3" -- PermanentStone（赠）*1
	tRecallOfOldPlayers_Reward[3314799]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314799]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314799]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314800] = {}
	-- ===明亮星陨石*1
	-- ===索引:tRecallOfOldPlayers_Reward[3314800]
	-- ===删除:3314800,1
	tRecallOfOldPlayers_Reward[3314800]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314800]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314800]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314800]["DeleteItem"][1]["Id"] = 3314800 -- 【库】BrightStarStonePack[属性:9]
	tRecallOfOldPlayers_Reward[3314800]["RewardItem"] = {}
	tRecallOfOldPlayers_Reward[3314800]["RewardItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314800]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石*1
	tRecallOfOldPlayers_Reward[3314800]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的BrightStarStone*1
	tRecallOfOldPlayers_Reward[3314800]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314800]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314800]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314801] = {}
	-- ===赠优质玄元宝石*1
	-- ===索引:tRecallOfOldPlayers_Reward[3314801]
	-- ===删除:3314801,1
	tRecallOfOldPlayers_Reward[3314801]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314801]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314801]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314801]["DeleteItem"][1]["Id"] = 3314801 -- 【库】SuperTortoiseGemPack[属性:9]
	tRecallOfOldPlayers_Reward[3314801]["RewardItem"] = {}
	tRecallOfOldPlayers_Reward[3314801]["RewardItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314801]["RewardItem"][1]["Id"] = 700073 -- TortoiseGem[700073][属性:0][叠加:0][金币:0], 【表格】优质玄元宝石（赠）*1
	tRecallOfOldPlayers_Reward[3314801]["RewardItem"][1]["Attr"] = "0 1 3" -- TortoiseGem（赠）*1
	tRecallOfOldPlayers_Reward[3314801]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314801]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314801]["RewardEffect"]["Effect"] = "angelwing"


	tRecallOfOldPlayers_Reward[3314802] = {}
	-- ===‘+6赤炼石（赠）
	-- ===索引:tRecallOfOldPlayers_Reward[3314802]
	-- ===删除:3314802,1
	tRecallOfOldPlayers_Reward[3314802]["LogId"] = 12001785
	tRecallOfOldPlayers_Reward[3314802]["DeleteItem"] = {}
	tRecallOfOldPlayers_Reward[3314802]["DeleteItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314802]["DeleteItem"][1]["Id"] = 3314802 -- 【库】+6StonePack[属性:9]
	tRecallOfOldPlayers_Reward[3314802]["RewardItem"] = {}
	tRecallOfOldPlayers_Reward[3314802]["RewardItem"][1] = {}
	tRecallOfOldPlayers_Reward[3314802]["RewardItem"][1]["Id"] = 730006 -- +6Stone[730006][属性:0][叠加:0][金币:0], 【表格】’+6赤炼石（赠）
	tRecallOfOldPlayers_Reward[3314802]["RewardItem"][1]["Attr"] = "0 1 3" -- +6Stone（赠）*1
	tRecallOfOldPlayers_Reward[3314802]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3314802]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3314802]["RewardEffect"]["Effect"] = "angelwing"

	-- 2020.4.12复用 3314795 1000赠点包
	tRecallOfOldPlayers_Reward[3315897] = {}
	-- ===1000赠点包
	-- ===索引:tRecallOfOldPlayers_Reward[3315897]
	-- ===NewEMoneyLog: 1000,1736
	tRecallOfOldPlayers_Reward[3315897]["LogId"] = 12001950
	tRecallOfOldPlayers_Reward[3315897]["RewardEMoneyMono"] = {}
	tRecallOfOldPlayers_Reward[3315897]["RewardEMoneyMono"]["Value"] = 100 -- 天石（赠）, 【需求】100赠点
	tRecallOfOldPlayers_Reward[3315897]["RewardEMoneyMono"]["NewEmoneyLog"] = "1000	1736"
	tRecallOfOldPlayers_Reward[3315897]["RewardEffect"] = {}
	tRecallOfOldPlayers_Reward[3315897]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tRecallOfOldPlayers_Reward[3315897]["RewardEffect"]["Effect"] = "angelwing"


---------------------------------------------逻辑模块---------------------------------------------
--上线触发
function RecallOfOldPlayers_Login()
	--判断服务器是否上架老玩家召回活动
	local nRecallOfOldPlayers_OldPlayerGlobal = tRecallOfOldPlayers_Cont["OldPlayerGlobal"]
	local nRecallOfOldPlayers_OldPlayerData0 = Get_SysDynaGlobalData0(nRecallOfOldPlayers_OldPlayerGlobal)
	if nRecallOfOldPlayers_OldPlayerData0 == 0 then
		return
	end
	
	--判断在活动时间内
	if not Sys_ChkFullTime(tRecallOfOldPlayers_ActivityTime["ActivityTime"]) then
		return
	end
	
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local nRecallOfOldPlayers_BackItemId = tRecallOfOldPlayers_Cont["BackItemId"]
	local nRecallOfOldPlayers_BackItemStc = RecallOfOldPlayers_GetStcValue(nRecallOfOldPlayers_BackItemId,nRecallOfOldPlayers_UserId) or 0
	
	--判断是否流失玩家
	if not RecallOfOldPlayers_IsOldPlayer(nRecallOfOldPlayers_UserId) then
		return
	end
	
	--打上回归标记
	if not RecallOfOldPlayers_IsOldPlayerBack(nRecallOfOldPlayers_UserId) then
		RecallOfOldPlayers_SetOldPlayerBack(nRecallOfOldPlayers_UserId)
	end
	
	--判断是否已领取
	if nRecallOfOldPlayers_BackItemStc >= 1 then
		return
	end
	
	--打领奖掩码
	if not RecallOfOldPlayers_AddStatistic(nRecallOfOldPlayers_BackItemId,1,nRecallOfOldPlayers_UserId) then
		return
	end
	
	--邮件发奖
	local nRecallOfOldPlayers_ActionId = tRecallOfOldPlayers_Cont["BackReward"]
	local sRecallOfOldPlayers_Sender = tRecallOfOldPlayers_Text["Mail"][nRecallOfOldPlayers_BackItemId]["Sender"]
	local sRecallOfOldPlayers_Title = tRecallOfOldPlayers_Text["Mail"][nRecallOfOldPlayers_BackItemId]["Title"]
	local sRecallOfOldPlayers_Content = tRecallOfOldPlayers_Text["Mail"][nRecallOfOldPlayers_BackItemId]["Content"]
	
	if Sys_SendMail(nRecallOfOldPlayers_UserId,0,0,nRecallOfOldPlayers_ActionId,0,30,sRecallOfOldPlayers_Sender,sRecallOfOldPlayers_Title,sRecallOfOldPlayers_Content) then
		Sys_SaveActionFestivalLog(tRecallOfOldPlayers_Log["BackReward"],nRecallOfOldPlayers_UserId)
		Sys_SaveEmoneyBuy(tRecallOfOldPlayers_Log["Emoney_buy"]["BackReward"],nRecallOfOldPlayers_UserId)
	end
end

--换取召回好礼
function RecallOfOldPlayers_GetBackReward()
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local nRecallOfOldPlayers_ItemId = tRecallOfOldPlayers_Cont["ChgItemId"]
	
	--判断身上有没有侠义令
	if not Item_ChkItem(nRecallOfOldPlayers_ItemId) then
		LinkNpcGossipFunc_New(25758,"2-1")
		return
	end
	
	--判断是否流失玩家
	if RecallOfOldPlayers_IsOldPlayer(nRecallOfOldPlayers_UserId) then
		LinkNpcGossipFunc_New(25758,"2-2")
		return
	end
	
	--判断使用次数
	local nRecallOfOldPlayers_UseNum = RecallOfOldPlayers_GetStcValue(nRecallOfOldPlayers_ItemId,nRecallOfOldPlayers_UserId) or 0
	local nRecallOfOldPlayers_MaxNum = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_ItemId]["LimitData"]
	
	--领取召回奖励达到上限次数
	if nRecallOfOldPlayers_UseNum >= nRecallOfOldPlayers_MaxNum then
		LinkNpcGossipFunc_New(25758,"2-3")
		return
	end
	
	--判断背包空间
	local nRecallOfOldPlayers_Space = RewardTemplate_GetRewardSpace(tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId])
	if not RecallOfOldPlayers_CheckLeftSpace(nRecallOfOldPlayers_Space,nRecallOfOldPlayers_UserId) then
		return
	end
	
	--打掩码领奖
	if RecallOfOldPlayers_AddStatistic(nRecallOfOldPlayers_ItemId,1,nRecallOfOldPlayers_UserId) then
		RewardTemplate_UseItemAndMsg(tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId])
		Sys_SaveEmoneyBuy(tRecallOfOldPlayers_Log["Emoney_buy"]["ChgReward"],nRecallOfOldPlayers_UserId)
		return
	end
end

--查看隐世大侠名册
function RecallOfOldPlayers_ChkList(nRecallOfOldPlayers_Index)
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local nRecallOfOldPlayers_OldPlayerNum = 0
	local nRecallOfOldPlayers_ItemId = tRecallOfOldPlayers_Cont["BackpackLetter"]
	local sRecallOfOldPlayers_ItemName = Get_ItemtypeName(nRecallOfOldPlayers_ItemId)
	
	--过期删除
	if not RecallOfOldPlayers_ChkTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName) then
		return
	end
	
	--对白初始化
	tNpcGossip[25758]["Text3-1"] = {211,212,213}
	tItem[3314791]["Text1-1"] = {111,112,113}
	
	--遍历全局表取流失玩家名字
	for i, v in pairs(tRecallOfOldPlayers_Cont["OldPlayer"]) do
		for j = 0,5 do
			local nRecallOfOldPlayers_OldPlayerId = Get_SysDynaGlobalData(v,j) or 0
			
			--判断该data位是否有玩家
			if nRecallOfOldPlayers_OldPlayerId > 0 then
				local nRecallOfOldPlayers_IsOldPlayer = Get_SysDynaGlobalTime(v,j) or 0
				local sRecallOfOldPlayers_IsOldPlayerReturn = tRecallOfOldPlayers_Text["Text"][7]
				local sRecallOfOldPlayers_OldPlayerName = Get_UserName(nRecallOfOldPlayers_OldPlayerId)
				
				--玩家不在线则读取全局表记录的玩家姓名
				if not User_IsUserOnline(nRecallOfOldPlayers_OldPlayerId) then
					sRecallOfOldPlayers_OldPlayerName = Get_SysDynaGlobalDataStr(v,j) or ""
				end
				
				--判断流失玩家是否已召回
				if nRecallOfOldPlayers_IsOldPlayer == 1 then
					sRecallOfOldPlayers_IsOldPlayerReturn = tRecallOfOldPlayers_Text["Text"][2]
				end
				
				--记录本服第n位流失玩家
				nRecallOfOldPlayers_OldPlayerNum = nRecallOfOldPlayers_OldPlayerNum + 1
				
				--聚星辰对白
				tNpcGossip[25758]["Text"..nRecallOfOldPlayers_OldPlayerNum] = Sys_Alignment(sRecallOfOldPlayers_OldPlayerName,0,sRecallOfOldPlayers_IsOldPlayerReturn,45)
				table.insert(tNpcGossip[25758]["Text3-1"],nRecallOfOldPlayers_OldPlayerNum)
				
				--背包信对白
				tItem[3314791]["Text"..nRecallOfOldPlayers_OldPlayerNum] = Sys_Alignment(sRecallOfOldPlayers_OldPlayerName,0,sRecallOfOldPlayers_IsOldPlayerReturn,45)
				table.insert(tItem[3314791]["Text1-1"],nRecallOfOldPlayers_OldPlayerNum)
			end
		end
	end
	
	--对白生成
	if nRecallOfOldPlayers_Index == 1 then
		--聚星辰对白
		tNpcGossip[25758]["Text213"] = Sys_Alignment(tRecallOfOldPlayers_Text["Text"][1],0,tRecallOfOldPlayers_Text["Text"][6],45)
		table.insert(tNpcGossip[25758]["Text3-1"],224)
	else
		--背包信对白
		tItem[3314791]["Text113"] = Sys_Alignment(tRecallOfOldPlayers_Text["Text"][1],0,tRecallOfOldPlayers_Text["Text"][6],45)
		table.insert(tItem[3314791]["Text1-1"],124)
		table.insert(tItem[3314791]["Text1-1"],125)
		table.insert(tItem[3314791]["Text1-1"],126)
		LinkItemGossipFunc_New(nRecallOfOldPlayers_ItemId,"1-1")
	end
	
	return true
end

--查看回归激励任务
function RecallOfOldPlayers_ChkTask()
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local tRecallOfOldPlayers_ChkTask = {}
	
	--判断是否流失玩家
	if not RecallOfOldPlayers_IsOldPlayer(nRecallOfOldPlayers_UserId) then
		return false
	end
	
	--判断回归激励任务完成
	for i = 1,5 do
		local nRecallOfOldPlayers_ChkTask = RecallOfOldPlayers_GetStcValue(i,nRecallOfOldPlayers_UserId) or 0
		local nRecallOfOldPlayers_NeedTask = tRecallOfOldPlayers_Stc[i]["LimitData"]
		local nRecallOfOldPlayers_TextIndex = 312 + i
		
		tNpcGossip[25758]["Text"..nRecallOfOldPlayers_TextIndex] = string.format(tRecallOfOldPlayers_Text[25758]["Text"..nRecallOfOldPlayers_TextIndex],nRecallOfOldPlayers_ChkTask,nRecallOfOldPlayers_NeedTask)
	end
	
	return true
end

--完成回归激励任务
function RecallOfOldPlayers_CompleteTask(nRecallOfOldPlayers_Index)
	--判断服务器是否上架老玩家召回活动
	local nRecallOfOldPlayers_OldPlayerGlobal = tRecallOfOldPlayers_Cont["OldPlayerGlobal"]
	local nRecallOfOldPlayers_OldPlayerData0 = Get_SysDynaGlobalData0(nRecallOfOldPlayers_OldPlayerGlobal)
	if nRecallOfOldPlayers_OldPlayerData0 == 0 then
		return false
	end
	
	--判断在活动时间内
	if not Sys_ChkFullTime(tRecallOfOldPlayers_ActivityTime["ActivityTime"]) then
		return false
	end
	
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local nRecallOfOldPlayers_Complete = RecallOfOldPlayers_GetStcValue(nRecallOfOldPlayers_Index,nRecallOfOldPlayers_UserId) or 0
	local nRecallOfOldPlayers_CompleteNext = nRecallOfOldPlayers_Complete + 1
	local nRecallOfOldPlayers_MaxComplete = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["LimitData"]
	
	--判断是否流失玩家
	if not RecallOfOldPlayers_IsOldPlayer(nRecallOfOldPlayers_UserId) then
		return false
	end
	
	--判断是否已领取奖励
	if nRecallOfOldPlayers_Complete >= nRecallOfOldPlayers_MaxComplete then
		return false
	end
	
	--任务完成数+1
	if not RecallOfOldPlayers_AddStatistic(nRecallOfOldPlayers_Index,1,nRecallOfOldPlayers_UserId) then
		return false
	end
	
	--判断任务完成
	if nRecallOfOldPlayers_CompleteNext ~= nRecallOfOldPlayers_MaxComplete then
		return true
	end
	
	--邮件发奖
	local nRecallOfOldPlayers_ActionId = tRecallOfOldPlayers_Cont["BackTaskReward"][nRecallOfOldPlayers_Index]
	local sRecallOfOldPlayers_Sender = tRecallOfOldPlayers_Text["Mail"][nRecallOfOldPlayers_Index]["Sender"]
	local sRecallOfOldPlayers_Title = tRecallOfOldPlayers_Text["Mail"][nRecallOfOldPlayers_Index]["Title"]
	local sRecallOfOldPlayers_Content = tRecallOfOldPlayers_Text["Mail"][nRecallOfOldPlayers_Index]["Content"]
	
	if Sys_SendMail(nRecallOfOldPlayers_UserId,0,0,nRecallOfOldPlayers_ActionId,0,30,sRecallOfOldPlayers_Sender,sRecallOfOldPlayers_Title,sRecallOfOldPlayers_Content) then
		Sys_SaveActionFestivalLog(tRecallOfOldPlayers_Log["BackTask"][nRecallOfOldPlayers_Index],nRecallOfOldPlayers_UserId)
		Sys_SaveEmoneyBuy(tRecallOfOldPlayers_Log["Emoney_buy"]["BackTask"][nRecallOfOldPlayers_Index],nRecallOfOldPlayers_UserId)
		return true
	else
		return false
	end
end

--回归侠士每日签到
function RecallOfOldPlayers_SignIn()
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local nRecallOfOldPlayers_SignInNum = RecallOfOldPlayers_GetStcValue(5,nRecallOfOldPlayers_UserId) or 0
	local nRecallOfOldPlayers_SignInMax = tRecallOfOldPlayers_Stc[5]["LimitData"]
	local nRecallOfOldPlayers_SignInNext = nRecallOfOldPlayers_SignInNum + 1
	
	--判断签到次数
	if nRecallOfOldPlayers_SignInNum >= nRecallOfOldPlayers_SignInMax then
		tNpcGossip[25758]["Text5-1"] = {111,431,432}
		tNpcGossip[25758]["tOption5-1"] = {431}
		LinkNpcGossipFunc_New(25758,"5-1")
		return
	end
	
	--判断隔天
	if not RecallOfOldPlayers_ClearStcInterval(5,nRecallOfOldPlayers_UserId) then
		tNpcGossip[25758]["Text421"] = string.format(tNpcGossip[25758]["Text421"],nRecallOfOldPlayers_SignInNum)
		tNpcGossip[25758]["Text5-1"] = {111,421,422}
		tNpcGossip[25758]["tOption5-1"] = {421}
		LinkNpcGossipFunc_New(25758,"5-1")
		return
	end
	
	--签到
	if RecallOfOldPlayers_CompleteTask(5) then
		tNpcGossip[25758]["Text411"] = string.format(tNpcGossip[25758]["Text411"],nRecallOfOldPlayers_SignInNext)
		tNpcGossip[25758]["Text5-1"] = {111,411,412}
		tNpcGossip[25758]["tOption5-1"] = {411}
		LinkNpcGossipFunc_New(25758,"5-1")
	end
end

--判断是否在流失玩家名单
function RecallOfOldPlayers_IsOldPlayer(nRecallOfOldPlayers_NowUserId)
	local nRecallOfOldPlayers_UserId = nRecallOfOldPlayers_NowUserId or Get_UserId()
	local bRecallOfOldPlayers_OldPlayer = false
	
	for i, v in pairs(tRecallOfOldPlayers_Cont["OldPlayer"]) do
		for j = 0,5 do
			local nRecallOfOldPlayers_OldPlayerId = Get_SysDynaGlobalData(v,j)
			if nRecallOfOldPlayers_UserId == nRecallOfOldPlayers_OldPlayerId then
				bRecallOfOldPlayers_OldPlayer = true
			end
		end
	end
	
	return bRecallOfOldPlayers_OldPlayer
end

--标记流失玩家召回
function RecallOfOldPlayers_SetOldPlayerBack(nRecallOfOldPlayers_NowUserId)
	local nRecallOfOldPlayers_UserId = nRecallOfOldPlayers_NowUserId or Get_UserId()
	
	--获取流失玩家所在全局表及所在位
	local nRecallOfOldPlayers_OldPlayerGlobal,nRecallOfOldPlayers_OldPlayerPos = RecallOfOldPlayers_GetOldPlayerPos(nRecallOfOldPlayers_UserId)
	
	--标记流失玩家召回
	Sys_SetSynaGlobalTime(nRecallOfOldPlayers_OldPlayerGlobal,nRecallOfOldPlayers_OldPlayerPos,1)
end

--判断该流失玩家是否已召回
function RecallOfOldPlayers_IsOldPlayerBack(nRecallOfOldPlayers_NowUserId)
	local nRecallOfOldPlayers_UserId = nRecallOfOldPlayers_NowUserId or Get_UserId()
	local bRecallOfOldPlayers_IsOldPlayer = false
	
	--获取流失玩家所在全局表及所在位
	local nRecallOfOldPlayers_OldPlayerGlobal,nRecallOfOldPlayers_OldPlayerPos = RecallOfOldPlayers_GetOldPlayerPos(nRecallOfOldPlayers_UserId)
	local nRecallOfOldPlayers_IsOldPlayer = Get_SysDynaGlobalTime(nRecallOfOldPlayers_OldPlayerGlobal,nRecallOfOldPlayers_OldPlayerPos) or 0
	
	--判断该流失玩家是否已召回
	if nRecallOfOldPlayers_IsOldPlayer == 1 then
		bRecallOfOldPlayers_IsOldPlayer = true
	end
	
	return bRecallOfOldPlayers_IsOldPlayer
end

--获取流失玩家所在全局表及所在位
function RecallOfOldPlayers_GetOldPlayerPos(nRecallOfOldPlayers_NowUserId)
	local nRecallOfOldPlayers_UserId = nRecallOfOldPlayers_NowUserId or Get_UserId()
	local nRecallOfOldPlayers_OldPlayerGlobal = 0
	local nRecallOfOldPlayers_OldPlayerPos = 0
	
	for i, v in pairs(tRecallOfOldPlayers_Cont["OldPlayer"]) do
		for j = 0,5 do
			local nRecallOfOldPlayers_OldPlayerId = Get_SysDynaGlobalData(v,j)
			if nRecallOfOldPlayers_UserId == nRecallOfOldPlayers_OldPlayerId then
				nRecallOfOldPlayers_OldPlayerGlobal = v
				nRecallOfOldPlayers_OldPlayerPos = j
			end
		end
	end
	
	return nRecallOfOldPlayers_OldPlayerGlobal,nRecallOfOldPlayers_OldPlayerPos
end

--江湖聚首礼盒
function RecallOfOldPlayers_OpenTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	local nRecallOfOldPlayers_UserId = Get_UserId()
	--判断物品在背包
	if not Item_ChkItem(nRecallOfOldPlayers_ItemId) then
		return
	end
	
	--过期删除
	if not RecallOfOldPlayers_ChkTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName) then
		return
	end
	
	--判断背包空间
	local nRecallOfOldPlayers_Space = RewardTemplate_GetRewardSpace(tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId])
	if not RecallOfOldPlayers_CheckLeftSpace(nRecallOfOldPlayers_Space,nRecallOfOldPlayers_UserId) then
		return
	end
	
	--发奖
	RewardTemplate_UseItemAndMsg(tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId])
end

--侠义令
function RecallOfOldPlayers_UseTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	--判断物品在背包
	if not Item_ChkItem(nRecallOfOldPlayers_ItemId) then
		return
	end
	
	--过期删除
	if not RecallOfOldPlayers_ChkTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName) then
		return
	end
	
	--寻找主NPC
	local nRecallOfOldPlayers_MainNPCId = tRecallOfOldPlayers_Cont["MainNPCId"]
	RecallOfOldPlayers_Where(nRecallOfOldPlayers_MainNPCId)
end

--多次礼包使用
function RecallOfOldPlayers_UseLimitItem(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	local nRecallOfOldPlayers_UserId = Get_UserId()
	--判断物品在背包
	if not Item_ChkItem(nRecallOfOldPlayers_ItemId) then
		return
	end
	
	--判断使用次数
	local nRecallOfOldPlayers_UseNum = RecallOfOldPlayers_GetStcValue(nRecallOfOldPlayers_ItemId,nRecallOfOldPlayers_UserId) or 0
	local nRecallOfOldPlayers_MaxNum = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_ItemId]["LimitData"]
	local nRecallOfOldPlayers_NextNum = nRecallOfOldPlayers_UseNum + 1
	
	--没有使用次数
	if nRecallOfOldPlayers_UseNum >= nRecallOfOldPlayers_MaxNum then
		Item_DelItem(nRecallOfOldPlayers_ItemId)
		return
	end
	
	--判断隔天
	if not RecallOfOldPlayers_ClearStcInterval(nRecallOfOldPlayers_ItemId,nRecallOfOldPlayers_UserId) then
		User_TalkChannel2005(tRecallOfOldPlayers_Text["Msg"]["Already"])
		Sys_MsgBox(tRecallOfOldPlayers_Text["Msg"]["Already"])
		return
	end
	
	--判断是赠点礼包
	if tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_ItemId]["EMoneyMono"] == 1 then
		--判断赠点天石上限
		local nRecallOfOldPlayers_MonoEMoney = tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nRecallOfOldPlayers_MonoEMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tRecallOfOldPlayers_Text["Msg"]["NoMoneySpace"])
			Sys_MsgBox(tRecallOfOldPlayers_Text["Msg"]["NoMoneySpace"])
			return
		end
	end
	
	--打掩码
	if not RecallOfOldPlayers_AddStatistic(nRecallOfOldPlayers_ItemId,1,nRecallOfOldPlayers_UserId) then
		return
	end
	
	--判断最后一次使用
	if nRecallOfOldPlayers_NextNum == nRecallOfOldPlayers_MaxNum then
		--最后一次使用删除礼包
		if not Item_DelItem(nRecallOfOldPlayers_ItemId) then
			return
		end
	end
	
	--领奖出提示
	if RewardTemplate_UseItemAndMsg(tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId]) then
		User_TalkChannel2005(string.format(tRecallOfOldPlayers_Text[nRecallOfOldPlayers_ItemId]["GetReward"],nRecallOfOldPlayers_NextNum))
		Sys_MsgBox(string.format(tRecallOfOldPlayers_Text[nRecallOfOldPlayers_ItemId]["GetReward"],nRecallOfOldPlayers_NextNum))
	end
end

--随机赠点包使用
function RecallOfOldPlayers_UseRandomMonoEMoney(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	local nRecallOfOldPlayers_UserId = Get_UserId()
	--判断物品在背包
	if not Item_ChkItem(nRecallOfOldPlayers_ItemId) then
		return
	end
	
	--判断赠点天石上限
	local nRecallOfOldPlayers_MonoEMoney = tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId][5]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nRecallOfOldPlayers_MonoEMoney > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tRecallOfOldPlayers_Text["Msg"]["NoMoneySpace"])
		Sys_MsgBox(tRecallOfOldPlayers_Text["Msg"]["NoMoneySpace"])
		return
	end
	
	--发奖
	RewardTemplate_RandomReward(tRecallOfOldPlayers_Reward, nRecallOfOldPlayers_ItemId, nRecallOfOldPlayers_UserId)
end

--简单礼包使用
function RecallOfOldPlayers_UseItem(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	local nRecallOfOldPlayers_UserId = Get_UserId()
	--判断物品在背包
	if not Item_ChkItem(nRecallOfOldPlayers_ItemId) then
		return
	end
	
	--判断背包空间
	local nRecallOfOldPlayers_Space = RewardTemplate_GetRewardSpace(tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId])
	if not RecallOfOldPlayers_CheckLeftSpace(nRecallOfOldPlayers_Space,nRecallOfOldPlayers_UserId) then
		return
	end
	
	--发奖
	RewardTemplate_UseItemAndMsg(tRecallOfOldPlayers_Reward[nRecallOfOldPlayers_ItemId])
end

--过期删除
function RecallOfOldPlayers_ChkTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	if not Sys_ChkFullTime(tActivityTime["RecallOfOldPlayers"]["ItemUseTime"]) then
		if Item_ChkItem(nRecallOfOldPlayers_ItemId) and Item_DelItem(nRecallOfOldPlayers_ItemId) then
			Sys_SaveActionRewardLog(string.format(tRecallOfOldPlayers_Log["Del"],nRecallOfOldPlayers_ItemId,1))
			User_TalkChannel2005(string.format(tRecallOfOldPlayers_Text["Msg"]["ItemOverTime"],sRecallOfOldPlayers_ItemName))
			Sys_MsgBox(string.format(tRecallOfOldPlayers_Text["Msg"]["ItemOverTime"],sRecallOfOldPlayers_ItemName))
		end
		return false
	else
		return true
	end
end

--判断背包空间
function RecallOfOldPlayers_CheckLeftSpace(nRecallOfOldPlayers_Index,nRecallOfOldPlayers_UserId)
	if not User_CheckLeftSpace(nRecallOfOldPlayers_Index,nRecallOfOldPlayers_UserId) then
		Sys_MsgBox(string.format(tRecallOfOldPlayers_Text["Msg"]["NoSpace"],nRecallOfOldPlayers_Index),nil,nil,nRecallOfOldPlayers_UserId)
		User_TalkChannel2005(string.format(tRecallOfOldPlayers_Text["Msg"]["NoSpace"],nRecallOfOldPlayers_Index),nRecallOfOldPlayers_UserId)
		return false
	else
		return true
	end
end

--获取掩码值
function RecallOfOldPlayers_GetStcValue(nRecallOfOldPlayers_Index,nRecallOfOldPlayers_UserId)
	local nRecallOfOldPlayers_Event = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["EventType"]
	local nRecallOfOldPlayers_Type = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["DataType"]
	local nRecallOfOldPlayers_Data = Get_UserStatisticValue(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,nRecallOfOldPlayers_UserId) or 0

	return nRecallOfOldPlayers_Data
end

--设置掩码值（定值）
function RecallOfOldPlayers_SetStcValue(nRecallOfOldPlayers_Index,nRecallOfOldPlayers_Data,nRecallOfOldPlayers_UserId)
	local nRecallOfOldPlayers_Event = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["EventType"]
	local nRecallOfOldPlayers_Type = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["DataType"]

	--打掩码、时间戳
	if Task_SetStatistic(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,nRecallOfOldPlayers_Data,1,nRecallOfOldPlayers_UserId) then 
		Task_SetStcTimestamp(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,0,nRecallOfOldPlayers_UserId)
		return true
	else
		return false
	end
end

--设置掩码值（增加）
function RecallOfOldPlayers_AddStatistic(nRecallOfOldPlayers_Index,nRecallOfOldPlayers_Data,nRecallOfOldPlayers_UserId)
	local nRecallOfOldPlayers_Event = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["EventType"]
	local nRecallOfOldPlayers_Type = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["DataType"]

	--打掩码、时间戳
	if Task_AddStatistic(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,nRecallOfOldPlayers_Data,1,nRecallOfOldPlayers_UserId) then 
		Task_SetStcTimestamp(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,0,nRecallOfOldPlayers_UserId)
		return true
	else
		return false
	end
end

-- 隔天重置
function RecallOfOldPlayers_ClearStcInterval(nRecallOfOldPlayers_Index,nRecallOfOldPlayers_UserId)
	local nRecallOfOldPlayers_Event = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["EventType"]
	local nRecallOfOldPlayers_Type = tRecallOfOldPlayers_Stc[nRecallOfOldPlayers_Index]["DataType"]

	--判断隔天
	if Task_StcInterval(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,1,4,nRecallOfOldPlayers_UserId) then
		-- Task_SetStatistic(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,0,1,nRecallOfOldPlayers_UserId)
		-- Task_SetStcTimestamp(nRecallOfOldPlayers_Event,nRecallOfOldPlayers_Type,0,nRecallOfOldPlayers_UserId)
		return true
	else
		return false
	end
end

--寻路
function RecallOfOldPlayers_Where(nRecallOfOldPlayers_NpcId)
	--获取玩家和NPC的地图ID
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local nRecallOfOldPlayers_NpcMap = Get_NpcMapID(nRecallOfOldPlayers_NpcId)
	local nRecallOfOldPlayers_NowMapId = Get_UserMapId(nRecallOfOldPlayers_UserId)

	--判断是否在一张地图
	if nRecallOfOldPlayers_NowMapId == nRecallOfOldPlayers_NpcMap then
		NpcPosition_PathFind(nRecallOfOldPlayers_NpcId)
		return true
	else
		return false
	end
end


---------------------------------------------NPC模块---------------------------------------------
--聚星辰
tNpcFace[2222] = 72
tNpcGossip[25758] = tNpcGossip[25758] or DefaultNpc:new{}
tNpcGossip[25758]["DialogueText"] = tRecallOfOldPlayers_Text[25758]
tNpcGossip[25758]["OptionHidden"] = 1

tNpcGossip[25758]["Text1-1"] = {111,112,113,114,115,116,117,118,121}
tNpcGossip[25758]["tOption1-1"] = {111,121,131,132,133,134,135}
tNpcGossip[25758]["ChkFunc1-1"] = function()
	local nRecallOfOldPlayers_UserId = Get_UserId()
	local nRecallOfOldPlayers_Level = tRecallOfOldPlayers_Cont["Level"]
	local nRecallOfOldPlayers_Metempsychosis = tRecallOfOldPlayers_Cont["Metempsychosis"]
	
	--判断活动时间
	if CommonFunc_GetBeforeActivityTime(tRecallOfOldPlayers_ActivityTime["ActivityTime"]) then
		tNpcGossip[25758]["Text1-1"] = {111,112,113,114,115,116,117,118}
		tNpcGossip[25758]["tOption1-1"] = {111}
		return true
	end
	if CommonFunc_GetAfterActivityTime(tRecallOfOldPlayers_ActivityTime["ActivityTime"]) then
		tNpcGossip[25758]["Text1-1"] = {111,121}
		tNpcGossip[25758]["tOption1-1"] = {121}
		return true
	end
	
	--判断等级
	if not User_JudgeLevelAndMetempsychosis(nRecallOfOldPlayers_Level,nRecallOfOldPlayers_Metempsychosis,nUserId) then
		--等级未达到
		tNpcGossip[25758]["Text1-1"] = {111,112,113,114,115,116,117,118}
		tNpcGossip[25758]["tOption1-1"] = {111}
		return true
	end
	
	--判断是否是流失玩家
	if RecallOfOldPlayers_IsOldPlayer(nRecallOfOldPlayers_NowUserId) then
		tNpcGossip[25758]["Text1-1"] = {111,112,113,114,115,116,118}
		tNpcGossip[25758]["tOption1-1"] = {132,133,134,135}
		return true
	else
		tNpcGossip[25758]["Text1-1"] = {111,112,113,114,115,116,118}
		tNpcGossip[25758]["tOption1-1"] = {131,132,135}
		return true
	end
end
tNpcGossip[25758]["OptionFunc131"] = "RecallOfOldPlayers_GetBackReward"--接1、换取召回好礼。
tNpcGossip[25758]["OptionPoint132"] = "3-1"--接2、查看隐世大侠名册
tNpcGossip[25758]["OptionPoint133"] = "4-1"--接3、查看回归激励任务
tNpcGossip[25758]["OptionFunc134"] = "RecallOfOldPlayers_SignIn"--接4、回归侠士每日签到。

--接1、换取召回好礼。
--【身上没有侠义令】
tNpcGossip[25758]["Text2-1"] = {111,511}
tNpcGossip[25758]["tOption2-1"] = {511}

--【流失的玩家来兑换】
tNpcGossip[25758]["Text2-2"] = {111,521}
tNpcGossip[25758]["tOption2-2"] = {521}

--【领取召回奖励达到上限次数】
tNpcGossip[25758]["Text2-3"] = {111,531}
tNpcGossip[25758]["tOption2-3"] = {531}

--接2、查看隐世大侠名册
tNpcGossip[25758]["Text3-1"] = {211,212,213,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,224}
tNpcGossip[25758]["tOption3-1"] = {211}
tNpcGossip[25758]["ChkFunc3-1"] = function()
	return RecallOfOldPlayers_ChkList(1)
end

--接3、查看回归激励任务
tNpcGossip[25758]["Text4-1"] = {311,312,313,318,314,319,315,320,316,321,317,322,323,324,325}
tNpcGossip[25758]["tOption4-1"] = {311}
tNpcGossip[25758]["ChkFunc4-1"] = function()
	return RecallOfOldPlayers_ChkTask()
end

--接4、回归侠士每日签到。
tNpcGossip[25758]["Text5-1"] = {111,411,412,421,422,431,432}
tNpcGossip[25758]["tOption5-1"] = {411,421,431}



---------------------------------------------物品模板---------------------------------------------
--江湖重聚首邀请函
tItemFace[3314791] = 838
tItem[3314791] = tItem[3314791] or {}
tItem[3314791]["Function"]=function(nItemId)
	RecallOfOldPlayers_ChkList(2)
end
tItem[3314791]["DialogueText"] = tRecallOfOldPlayers_Text[3314791]
tItem[3314791]["Text1-1"] = {111,112,113,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,124,125,126}
tItem[3314791]["tOption1-1"] = {111}
tItem[3314791]["OptionFunc111"] = "RecallOfOldPlayers_Where</N>25758"--"寻找聚星辰"

--江湖聚首礼盒
tItem[3314792] = tItem[3314792] or {}
tItem[3314792]["Function"]=function(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	RecallOfOldPlayers_OpenTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
end

--侠义令
tItem[3314793] = tItem[3314793] or {}
tItem[3314793]["Function"]=function(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	RecallOfOldPlayers_UseTimeOut(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
end

--1000天石（赠）礼盒
tItem[3314795] = tItem[3314795] or {}
tItem[3314795]["Function"]=function(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	RecallOfOldPlayers_UseLimitItem(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
end

--5000点修为值礼盒
tItem[3314796] = tItem[3314795]

--随机天石（赠）礼盒
tItem[3314797] = tItem[3314797] or {}
tItem[3314797]["Function"]=function(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	RecallOfOldPlayers_UseRandomMonoEMoney(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
end

--+3赤炼石(赠)
tItem[3314798] = tItem[3314798] or {}
tItem[3314798]["Function"]=function(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
	RecallOfOldPlayers_UseItem(nRecallOfOldPlayers_ItemId,sRecallOfOldPlayers_ItemName)
end

--固化石(赠)
tItem[3314799] = tItem[3314798]
--明亮星陨石*1
tItem[3314800] = tItem[3314798]
--赠优质玄元宝石*1
tItem[3314801] = tItem[3314798]
--+6赤炼石(赠)
tItem[3314802] = tItem[3314798]
-- 2020.4.12复用 3314795 1000赠点包
tItem[3315897] = tItem[3314795]

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,RecallOfOldPlayers_Login)

