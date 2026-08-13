------------------------------------------------------------------------------------
--Name：        191112[英文征服][活动脚本]新的TTT活动-团队TTT（12.17-1.06）
--Creator:      茅志伟
--Created:      2019/11/12
------------------------------------------------------------------------------------

-- 命名前缀 tNewTeamPet_

-- Lua.ini = 41622
-- 41622 = V100\ActiveScript\[Conquer][ActiveScript]NewTreamPet.lua
-- 41622 = V100\活动脚本\[征服][活动脚本]新的TTT活动-团队TTT（12.17-1.06）.lua

-- LogId = 12001747

local tNewTeamPet_Stc = {}
--记录玩家是否领养了神兽，0 未领养 ，1 已领养
tNewTeamPet_Stc["AdopPet"] = {}
tNewTeamPet_Stc["AdopPet"]["EventType"] = 210
tNewTeamPet_Stc["AdopPet"]["DataType"] = 00
-- 记录神兽等级
tNewTeamPet_Stc["PetLevel"] = {}
tNewTeamPet_Stc["PetLevel"]["EventType"] = 210
tNewTeamPet_Stc["PetLevel"]["DataType"] = 01
-- 记录神兽当前经验
tNewTeamPet_Stc["PetExperience"] = {}
tNewTeamPet_Stc["PetExperience"]["EventType"] = 210
tNewTeamPet_Stc["PetExperience"]["DataType"] = 02
-- 记录神兽Id
tNewTeamPet_Stc["PetId"] = {}
tNewTeamPet_Stc["PetId"]["EventType"] = 210
tNewTeamPet_Stc["PetId"]["DataType"] = 03
-- 记录是否使用神兽驯养天书 进行普通训练  0为当前未使用  1为已使用且还未击杀
tNewTeamPet_Stc["OrdinaryTrain"] = {}
tNewTeamPet_Stc["OrdinaryTrain"]["EventType"] = 210
tNewTeamPet_Stc["OrdinaryTrain"]["DataType"] = 04
-- 记录是否使用混元丹 进行高级训练  0为当前未使用  大于0为已使用且还未击杀 数值记录使用的混元丹等级
tNewTeamPet_Stc["SeniorTrain"] = {}
tNewTeamPet_Stc["SeniorTrain"]["EventType"] = 210
tNewTeamPet_Stc["SeniorTrain"]["DataType"] = 05
-- 记录玩家当天第几次普通训练
tNewTeamPet_Stc["OrdinaryTrainTimes"] = {}
tNewTeamPet_Stc["OrdinaryTrainTimes"]["EventType"] = 210
tNewTeamPet_Stc["OrdinaryTrainTimes"]["DataType"] = 06

-- 记录玩家当天片区怪物掉落神兽驯养天书数量
tNewTeamPet_Stc["MonsterRewNum"] = {}
tNewTeamPet_Stc["MonsterRewNum"]["EventType"] = 210
tNewTeamPet_Stc["MonsterRewNum"]["DataType"] = 07

-- 记录玩家当天每日养成礼盒使用次数
tNewTeamPet_Stc["RewardPackTimes"] = {}
tNewTeamPet_Stc["RewardPackTimes"]["EventType"] = 210
tNewTeamPet_Stc["RewardPackTimes"]["DataType"] = 17

local tNewTeamPet_Data = {}
-- 领养神兽所需金币
tNewTeamPet_Data["Price"] = 100000
tNewTeamPet_Data["GlocalId"] = 53895
-- 刷怪的Gen
tNewTeamPet_Data["GeneratorId"] = {}
tNewTeamPet_Data["GeneratorId"][1] = 30171
tNewTeamPet_Data["GeneratorId"][2] = 30171
tNewTeamPet_Data["GeneratorId"][3] = 30171
tNewTeamPet_Data["GeneratorId"][4] = 30171
tNewTeamPet_Data["GeneratorId"][5] = 30171
tNewTeamPet_Data["GeneratorId"][6] = 30171
-- 各个级别的房屋中创建NPC的坐标
tNewTeamPet_Data["MapId"] = {}
tNewTeamPet_Data["NPCPosXY"] = {}
tNewTeamPet_Data["NPCPosXY"][1] = {{30,31},{30,27}}
tNewTeamPet_Data["NPCPosXY"][2] = {{40,66},{40,62}}
tNewTeamPet_Data["NPCPosXY"][3] = {{57,63},{57,59}}
tNewTeamPet_Data["NPCPosXY"][4] = {{57,63},{57,59}}
tNewTeamPet_Data["NPCPosXY"][5] = {{77,122},{77,118}}
tNewTeamPet_Data["NPCPosXY"][6] = {{119,150},{119,146}}
-- 各个级别的房屋中召唤神兽的坐标
tNewTeamPet_Data["MonsterPosXY"] = {}
tNewTeamPet_Data["MonsterPosXY"][1] = {35,29}
tNewTeamPet_Data["MonsterPosXY"][2] = {47,64}
tNewTeamPet_Data["MonsterPosXY"][3] = {61,61}
tNewTeamPet_Data["MonsterPosXY"][4] = {61,61}
tNewTeamPet_Data["MonsterPosXY"][5] = {81,121}
tNewTeamPet_Data["MonsterPosXY"][6] = {126,151}

-- 怪物ID
tNewTeamPet_Data["MonsterId"] = {}
tNewTeamPet_Data["MonsterId"][1] = 5822
tNewTeamPet_Data["MonsterId"][2] = 5823
tNewTeamPet_Data["MonsterId"][3] = 5824
tNewTeamPet_Data["MonsterId"][4] = 5825
tNewTeamPet_Data["MonsterId"][5] = 5826
tNewTeamPet_Data["MonsterId"][6] = 5827
tNewTeamPet_Data["MonsterId"][7] = 5828
tNewTeamPet_Data["MonsterId"][8] = 5829
tNewTeamPet_Data["MonsterId"][9] = 5830
tNewTeamPet_Data["MonsterId"][10] = 5831
tNewTeamPet_Data["MonsterId"][11] = 5832
tNewTeamPet_Data["MonsterId"][12] = 5833
tNewTeamPet_Data["MonsterId"][13] = 5834
tNewTeamPet_Data["MonsterId"][14] = 5835
tNewTeamPet_Data["MonsterId"][15] = 5836


-- 每级混元丹能获得的最大天石数量
tNewTeamPet_Data["EMoneyMax"] = {}
tNewTeamPet_Data["EMoneyMax"][1] = 6900
tNewTeamPet_Data["EMoneyMax"][2] = 34500
tNewTeamPet_Data["EMoneyMax"][3] = 69000
tNewTeamPet_Data["EMoneyMax"][4] = 345000
tNewTeamPet_Data["EMoneyMax"][5] = 690000
tNewTeamPet_Data["EMoneyMax"][6] = 1380000
tNewTeamPet_Data["EMoneyMax"][7] = 3450000

-- 动态NPC数据
tNewTeamPet_Data["Npc"] = {}
tNewTeamPet_Data["Npc"][2] = {}
tNewTeamPet_Data["Npc"][2]["Name"] = tNewTeamPet_Text["NpcName"]
tNewTeamPet_Data["Npc"][2]["Type"] = 2
tNewTeamPet_Data["Npc"][2]["Sort"] = 0
tNewTeamPet_Data["Npc"][2]["Lookface"] = 57866
tNewTeamPet_Data["Npc"][2]["nTask0"] = 94491560

tNewTeamPet_Data["NpcId"] = {}
tNewTeamPet_Data["NpcId"][1] = 25603

-- 神兽升级所需成长值
tNewTeamPet_Data["PetExperience"] = {}
tNewTeamPet_Data["PetExperience"][1] = 50000
tNewTeamPet_Data["PetExperience"][2] = 50000
tNewTeamPet_Data["PetExperience"][3] = 70000
tNewTeamPet_Data["PetExperience"][4] = 70000
tNewTeamPet_Data["PetExperience"][5] = 100000
tNewTeamPet_Data["PetExperience"][6] = 100000
tNewTeamPet_Data["PetExperience"][7] = 120000
tNewTeamPet_Data["PetExperience"][8] = 120000
tNewTeamPet_Data["PetExperience"][9] = 120000
tNewTeamPet_Data["PetExperience"][10] = 150000 
tNewTeamPet_Data["PetExperience"][11] = 150000 
tNewTeamPet_Data["PetExperience"][12] = 180000 
tNewTeamPet_Data["PetExperience"][13] = 180000 
tNewTeamPet_Data["PetExperience"][14] = 220000 
tNewTeamPet_Data["PetExperience"][15] = 220000 

-- 使用混元丹训练可获得的成长值
tNewTeamPet_Data["SeniorTrainExp"] = {}
tNewTeamPet_Data["SeniorTrainExp"][1] = 5
tNewTeamPet_Data["SeniorTrainExp"][2] = 25
tNewTeamPet_Data["SeniorTrainExp"][3] = 50
tNewTeamPet_Data["SeniorTrainExp"][4] = 250
tNewTeamPet_Data["SeniorTrainExp"][5] = 500
tNewTeamPet_Data["SeniorTrainExp"][6] = 1000
tNewTeamPet_Data["SeniorTrainExp"][7] = 2500

-- 使用混元丹ID
tNewTeamPet_Data["SeniorTrainId"] = {}
tNewTeamPet_Data["SeniorTrainId"][1] = 3326963
tNewTeamPet_Data["SeniorTrainId"][2] = 3326964
tNewTeamPet_Data["SeniorTrainId"][3] = 3326965
tNewTeamPet_Data["SeniorTrainId"][4] = 3326966
tNewTeamPet_Data["SeniorTrainId"][5] = 3326967
tNewTeamPet_Data["SeniorTrainId"][6] = 3326968
tNewTeamPet_Data["SeniorTrainId"][7] = 3326969
-- 混元丹价格
tNewTeamPet_Data["SeniorTrainEMoney"] = {}
tNewTeamPet_Data["SeniorTrainEMoney"][1] = 50
tNewTeamPet_Data["SeniorTrainEMoney"][2] = 250
tNewTeamPet_Data["SeniorTrainEMoney"][3] = 500
tNewTeamPet_Data["SeniorTrainEMoney"][4] = 2500
tNewTeamPet_Data["SeniorTrainEMoney"][5] = 5000
tNewTeamPet_Data["SeniorTrainEMoney"][6] = 10000
tNewTeamPet_Data["SeniorTrainEMoney"][7] = 25000

-- 不同房屋等级每天普通训练次数上限
tNewTeamPet_Data["OrdTrainTimes"] = {}
tNewTeamPet_Data["OrdTrainTimes"][1] = 5
tNewTeamPet_Data["OrdTrainTimes"][2] = 6
tNewTeamPet_Data["OrdTrainTimes"][3] = 8
tNewTeamPet_Data["OrdTrainTimes"][4] = 10
tNewTeamPet_Data["OrdTrainTimes"][5] = 12
tNewTeamPet_Data["OrdTrainTimes"][6] = 15

-- 神兽驯养天书ID
tNewTeamPet_Data["OrdTrainId"] = 3326961

tNewTeamPet_Data["Malil"] = {}
-- 升级奖励 邮件actionId
tNewTeamPet_Data["Malil"]["ActionId"] = {}
tNewTeamPet_Data["Malil"]["ActionId"][2] = 575297
tNewTeamPet_Data["Malil"]["ActionId"][3] = 575298
tNewTeamPet_Data["Malil"]["ActionId"][4] = 575299
tNewTeamPet_Data["Malil"]["ActionId"][5] = 575300
tNewTeamPet_Data["Malil"]["ActionId"][6] = 575301
tNewTeamPet_Data["Malil"]["ActionId"][7] = 575302
tNewTeamPet_Data["Malil"]["ActionId"][8] = 575303
tNewTeamPet_Data["Malil"]["ActionId"][9] = 575304
tNewTeamPet_Data["Malil"]["ActionId"][10] = 575305
tNewTeamPet_Data["Malil"]["ActionId"][11] = 575306
tNewTeamPet_Data["Malil"]["ActionId"][12] = 575307
tNewTeamPet_Data["Malil"]["ActionId"][13] = 575308
tNewTeamPet_Data["Malil"]["ActionId"][14] = 575309
tNewTeamPet_Data["Malil"]["ActionId"][15] = 575310


-- 神兽之心（混元丹）奖励对应的天石数量
tNewTeamPet_Data["RewardEMoney"] = {}
tNewTeamPet_Data["RewardEMoney"][720654] = 6900
tNewTeamPet_Data["RewardEMoney"][720653] = 1350
tNewTeamPet_Data["RewardEMoney"][720655] = 100
tNewTeamPet_Data["RewardEMoney"][720656] = 50
tNewTeamPet_Data["RewardEMoney"][720657] = 25

tNewTeamPet_Data["RewardEMoney"][720662] = 34500
tNewTeamPet_Data["RewardEMoney"][720661] = 6750
tNewTeamPet_Data["RewardEMoney"][720660] = 500
tNewTeamPet_Data["RewardEMoney"][720659] = 250
tNewTeamPet_Data["RewardEMoney"][720658] = 125

tNewTeamPet_Data["RewardEMoney"][720667] = 69000
tNewTeamPet_Data["RewardEMoney"][720666] = 13500
tNewTeamPet_Data["RewardEMoney"][720665] = 1000
tNewTeamPet_Data["RewardEMoney"][720664] = 500
tNewTeamPet_Data["RewardEMoney"][720663] = 250

tNewTeamPet_Data["RewardEMoney"][720679] = 345000
tNewTeamPet_Data["RewardEMoney"][720678] = 67500
tNewTeamPet_Data["RewardEMoney"][720677] = 5000
tNewTeamPet_Data["RewardEMoney"][720676] = 2500
tNewTeamPet_Data["RewardEMoney"][720675] = 1250

tNewTeamPet_Data["RewardEMoney"][720685] = 690000
tNewTeamPet_Data["RewardEMoney"][720684] = 135000
tNewTeamPet_Data["RewardEMoney"][720683] = 10000
tNewTeamPet_Data["RewardEMoney"][720682] = 5000
tNewTeamPet_Data["RewardEMoney"][720681] = 2500

tNewTeamPet_Data["RewardEMoney"][720691] = 1380000
tNewTeamPet_Data["RewardEMoney"][720690] = 270000
tNewTeamPet_Data["RewardEMoney"][720689] = 20000
tNewTeamPet_Data["RewardEMoney"][720688] = 10000
tNewTeamPet_Data["RewardEMoney"][720687] = 5000

tNewTeamPet_Data["RewardEMoney"][720697] = 3450000
tNewTeamPet_Data["RewardEMoney"][720696] = 675000
tNewTeamPet_Data["RewardEMoney"][720695] = 50000
tNewTeamPet_Data["RewardEMoney"][720694] = 25000
tNewTeamPet_Data["RewardEMoney"][720693] = 12500

tNewTeamPet_Data["RewardEMoney"][3326962] = 0
tNewTeamPet_Data["RewardEMoney"][3327054] = 0
tNewTeamPet_Data["RewardEMoney"][3327055] = 0

-- 记录队长信息
tNewTeamPet_Data["DataTab"] = {}
tNewTeamPet_Data["LevelTab"] = {}
tNewTeamPet_Data["TImeTab"] = {}
tNewTeamPet_Data["ExpTab"] = {}
tNewTeamPet_Data["LeaderId"] = {}


local tNewTeamPet_Random = {}
tNewTeamPet_Random["MonsterReward"] = {}
tNewTeamPet_Random["MonsterReward"][1] = {}
tNewTeamPet_Random["MonsterReward"][1]["ItemChanceSum"] = 10000

tNewTeamPet_Random["MonsterReward"][1][1] = {}
tNewTeamPet_Random["MonsterReward"][1][1]["RandomItemChanceType"] = 2
tNewTeamPet_Random["MonsterReward"][1][1]["ItemChance"] = 9900
tNewTeamPet_Random["MonsterReward"][1][1]["Item_1"] = 1

tNewTeamPet_Random["MonsterReward"][1][2] = {}
tNewTeamPet_Random["MonsterReward"][1][2]["RandomItemChanceType"] = 2
tNewTeamPet_Random["MonsterReward"][1][2]["ItemChance"] = 100
tNewTeamPet_Random["MonsterReward"][1][2]["Item_1"] = 2

local tNewTeamPet_Log = {}
tNewTeamPet_Log["DeleteLog"] = "0,0,%d,%d,0,12001747,2,0,0"
tNewTeamPet_Log["EMonyeLog"] = {} 
tNewTeamPet_Log["EMonyeLog"][3326963] = "1000	1277	0	0	1	"   -- 消耗1级圣灵果
tNewTeamPet_Log["EMonyeLog"][3326964] = "1000	1278	0	0	1	"   -- 消耗2级圣灵果
tNewTeamPet_Log["EMonyeLog"][3326965] = "1000	1279	0	0	1	"   -- 消耗3级圣灵果
tNewTeamPet_Log["EMonyeLog"][3326966] = "1000	1280	0	0	1	"   -- 消耗4级圣灵果
tNewTeamPet_Log["EMonyeLog"][3326967] = "1000	1281	0	0	1	"   -- 消耗5级圣灵果
tNewTeamPet_Log["EMonyeLog"][3326968] = "1000	1282	0	0	1	"   -- 消耗6级圣灵果
tNewTeamPet_Log["EMonyeLog"][3326969] = "1000	1283	0	0	1	"   -- 消耗7级圣灵果
tNewTeamPet_Log["EMonyeLog"][3326961] = "1000	1284	0	0	1	"   -- 消耗神兽训练手册
tNewTeamPet_Log["EMonyeLog"]["BuyPet"] = "1000	1285	0	0	1	"   -- 购买神兽
tNewTeamPet_Log["EMonyeLog"]["CPs"] = "1000	1286	%d	%d	1	"   -- 天石产出
tNewTeamPet_Log["EMonyeLog"]["Feather"] = "1000	1287	0	0	1	"   -- 羽毛产出

local tNewTeamPet_Pack = {}
	-- ===每日养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327031][1]
	-- ===删除:3327031,1
	-- ===
	tNewTeamPet_Pack[3327031] = {}
	tNewTeamPet_Pack[3327031][1] = {}
	tNewTeamPet_Pack[3327031][1]["LogId"] = 12001747
	tNewTeamPet_Pack[3327031][1]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327031][1]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327031][1]["DeleteItem"][1]["Id"] = 3327031 -- 【库】 3327031 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327031][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3327031][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327031][1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tNewTeamPet_Pack[3327031][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tNewTeamPet_Pack[3327031][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327031][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327031][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327031][2] = {}
	-- ===每日养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327031][2]
	-- ===删除:3327031,1
	-- ===
	tNewTeamPet_Pack[3327031][2]["LogId"] = 12001747
	tNewTeamPet_Pack[3327031][2]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327031][2]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327031][2]["DeleteItem"][1]["Id"] = 3327031 -- 【库】 3327031 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327031][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3327031][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327031][2]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精（赠）
	tNewTeamPet_Pack[3327031][2]["RewardItem"][1]["Attr"] = "0 3 3" -- YellowRuneEssence（赠）*3
	tNewTeamPet_Pack[3327031][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327031][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327031][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327031][3] = {}
	-- ===每日养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327031][3]
	-- ===删除:3327031,1
	-- ===
	tNewTeamPet_Pack[3327031][3]["LogId"] = 12001747
	tNewTeamPet_Pack[3327031][3]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327031][3]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327031][3]["DeleteItem"][1]["Id"] = 3327031 -- 【库】 3327031 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327031][3]["RewardStrengthValue"] = {}
	tNewTeamPet_Pack[3327031][3]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】气力值100
	tNewTeamPet_Pack[3327031][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327031][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327031][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327032] = {}
	-- ===2阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327032]
	-- ===删除:3327032,1
	-- ===
	tNewTeamPet_Pack[3327032]["LogId"] = 12001747
	tNewTeamPet_Pack[3327032]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327032]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327032]["DeleteItem"][1]["Id"] = 3327032 -- 【库】 3327032 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327032]["RewardItem"] = {}
	tNewTeamPet_Pack[3327032]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327032]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹（赠）
	tNewTeamPet_Pack[3327032]["RewardItem"][1]["Attr"] = "0 20 3" -- FavoredTrainingPill（赠）*20（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327032]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327032]["RewardItem"][2]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】回气丹（赠）
	tNewTeamPet_Pack[3327032]["RewardItem"][2]["Attr"] = "0 1 3" -- Vital~Pill（赠）*1
	tNewTeamPet_Pack[3327032]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327032]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327032]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327033] = {}
	-- ===3阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327033]
	-- ===删除:3327033,1
	-- ===
	tNewTeamPet_Pack[3327033]["LogId"] = 12001747
	tNewTeamPet_Pack[3327033]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327033]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327033]["DeleteItem"][1]["Id"] = 3327033 -- 【库】 3327033 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327033]["RewardItem"] = {}
	tNewTeamPet_Pack[3327033]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327033]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹（赠）
	tNewTeamPet_Pack[3327033]["RewardItem"][1]["Attr"] = "0 20" -- SuperProtectionPill*20（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327033]["RewardCultivation"] = {}
	tNewTeamPet_Pack[3327033]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】修行值1000
	tNewTeamPet_Pack[3327033]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327033]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327033]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327034] = {}
	-- ===4阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327034]
	-- ===删除:3327034,1
	-- ===
	tNewTeamPet_Pack[3327034]["LogId"] = 12001747
	tNewTeamPet_Pack[3327034]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327034]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327034]["DeleteItem"][1]["Id"] = 3327034 -- 【库】 3327034 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327034]["RewardItem"] = {}
	tNewTeamPet_Pack[3327034]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327034]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】随机黄色神纹碎片（赠）
	tNewTeamPet_Pack[3327034]["RewardItem"][1]["Attr"] = "0 2" -- YellowRuneFragment*2
	tNewTeamPet_Pack[3327034]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327034]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tNewTeamPet_Pack[3327034]["RewardItem"][2]["Attr"] = "0 5 3" -- YellowRuneEssence（赠）*5
	tNewTeamPet_Pack[3327034]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327034]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327034]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327035] = {}
	-- ===5阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327035]
	-- ===删除:3327035,1
	-- ===
	tNewTeamPet_Pack[3327035]["LogId"] = 12001747
	tNewTeamPet_Pack[3327035]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327035]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327035]["DeleteItem"][1]["Id"] = 3327035 -- 【库】 3327035 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327035]["RewardItem"] = {}
	tNewTeamPet_Pack[3327035]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327035]["RewardItem"][1]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）
	tNewTeamPet_Pack[3327035]["RewardItem"][1]["Attr"] = "0 8 3" -- SeniorTrainingPill（赠）*8
	tNewTeamPet_Pack[3327035]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327035]["RewardItem"][2]["Id"] = 4040001 -- BlueRuneEssence[4040001][属性:9][叠加:10000][金币:0], 【表格】蓝色神纹精粹（赠）
	tNewTeamPet_Pack[3327035]["RewardItem"][2]["Attr"] = "0 5 3" -- BlueRuneEssence（赠）*5
	tNewTeamPet_Pack[3327035]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327035]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327035]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327036] = {}
	-- ===6阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327036]
	-- ===删除:3327036,1
	-- ===
	tNewTeamPet_Pack[3327036]["LogId"] = 12001747
	tNewTeamPet_Pack[3327036]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327036]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327036]["DeleteItem"][1]["Id"] = 3327036 -- 【库】 3327036 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327036]["RewardItem"] = {}
	tNewTeamPet_Pack[3327036]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327036]["RewardItem"][1]["Id"] = 700102 -- ThunderGem[700102][属性:0][叠加:0][金币:0], 【表格】良品天怒宝石（赠）
	tNewTeamPet_Pack[3327036]["RewardItem"][1]["Attr"] = "0 1 3" -- ThunderGem（赠）*1
	tNewTeamPet_Pack[3327036]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327036]["RewardItem"][2]["Id"] = 3007269 -- FrozenChiPillScrap[3007269][属性:9][叠加:10000][金币:0], 【表格】八宝护气丹（碎片）（赠）
	tNewTeamPet_Pack[3327036]["RewardItem"][2]["Attr"] = "0 4" -- FrozenChiPillScrap*4
	tNewTeamPet_Pack[3327036]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327036]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327036]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327037] = {}
	-- ===7阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327037]
	-- ===删除:3327037,1
	-- ===
	tNewTeamPet_Pack[3327037]["LogId"] = 12001747
	tNewTeamPet_Pack[3327037]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327037]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327037]["DeleteItem"][1]["Id"] = 3327037 -- 【库】 3327037 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327037]["RewardItem"] = {}
	tNewTeamPet_Pack[3327037]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327037]["RewardItem"][1]["Id"] = 700122 -- GloryGem[700122][属性:0][叠加:0][金币:0], 【表格】良品地灵宝石（赠）
	tNewTeamPet_Pack[3327037]["RewardItem"][1]["Attr"] = "0 1 3" -- GloryGem（赠）*1
	tNewTeamPet_Pack[3327037]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327037]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewTeamPet_Pack[3327037]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tNewTeamPet_Pack[3327037]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327037]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327037]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327038] = {}
	-- ===8阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327038]
	-- ===删除:3327038,1
	-- ===
	tNewTeamPet_Pack[3327038]["LogId"] = 12001747
	tNewTeamPet_Pack[3327038]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327038]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327038]["DeleteItem"][1]["Id"] = 3327038 -- 【库】 3327038 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327038]["RewardRepairValue"] = {}
	tNewTeamPet_Pack[3327038]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值1000
	tNewTeamPet_Pack[3327038]["RewardStrengthValue"] = {}
	tNewTeamPet_Pack[3327038]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值1000
	tNewTeamPet_Pack[3327038]["RewardItem"] = {}
	tNewTeamPet_Pack[3327038]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327038]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tNewTeamPet_Pack[3327038]["RewardItem"][1]["Attr"] = "0 15 3" -- YellowRuneEssence（赠）*15
	tNewTeamPet_Pack[3327038]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327038]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327038]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327039] = {}
	-- ===9阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327039]
	-- ===删除:3327039,1
	-- ===
	tNewTeamPet_Pack[3327039]["LogId"] = 12001747
	tNewTeamPet_Pack[3327039]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327039]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327039]["DeleteItem"][1]["Id"] = 3327039 -- 【库】 3327039 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327039]["RewardItem"] = {}
	tNewTeamPet_Pack[3327039]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327039]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewTeamPet_Pack[3327039]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tNewTeamPet_Pack[3327039]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327039]["RewardItem"][2]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）
	tNewTeamPet_Pack[3327039]["RewardItem"][2]["Attr"] = "0 8 3" -- SeniorTrainingPill（赠）*8
	tNewTeamPet_Pack[3327039]["RewardItem"][3] = {}
	tNewTeamPet_Pack[3327039]["RewardItem"][3]["Id"] = 4040001 -- BlueRuneEssence[4040001][属性:9][叠加:10000][金币:0], 【表格】蓝色神纹精粹（赠）
	tNewTeamPet_Pack[3327039]["RewardItem"][3]["Attr"] = "0 5 3" -- BlueRuneEssence（赠）*5
	tNewTeamPet_Pack[3327039]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327039]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327039]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327040] = {}
	-- ===10阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327040]
	-- ===删除:3327040,1
	-- ===
	tNewTeamPet_Pack[3327040]["LogId"] = 12001747
	tNewTeamPet_Pack[3327040]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327040]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327040]["DeleteItem"][1]["Id"] = 3327040 -- 【库】 3327040 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327040]["RewardItem"] = {}
	tNewTeamPet_Pack[3327040]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327040]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】百炼天机果（赠）
	tNewTeamPet_Pack[3327040]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tNewTeamPet_Pack[3327040]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327040]["RewardItem"][2]["Id"] = 711083 -- OblivionDew[711083][属性:8][叠加:10][金币:0], 【表格】转世药水（赠）
	tNewTeamPet_Pack[3327040]["RewardItem"][2]["Attr"] = "0 1 3" -- OblivionDew（赠）*1
	tNewTeamPet_Pack[3327040]["RewardItem"][3] = {}
	tNewTeamPet_Pack[3327040]["RewardItem"][3]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewTeamPet_Pack[3327040]["RewardItem"][3]["Attr"] = "0 5" -- GinsengFruit*5
	tNewTeamPet_Pack[3327040]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327040]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327040]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327041] = {}
	-- ===11阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327041]
	-- ===删除:3327041,1
	-- ===
	tNewTeamPet_Pack[3327041]["LogId"] = 12001747
	tNewTeamPet_Pack[3327041]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327041]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327041]["DeleteItem"][1]["Id"] = 3327041 -- 【库】 3327041 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327041]["RewardItem"] = {}
	tNewTeamPet_Pack[3327041]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327041]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）
	tNewTeamPet_Pack[3327041]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tNewTeamPet_Pack[3327041]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327041]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewTeamPet_Pack[3327041]["RewardItem"][2]["Attr"] = "0 10" -- GinsengFruit*10
	tNewTeamPet_Pack[3327041]["RewardItem"][3] = {}
	tNewTeamPet_Pack[3327041]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewTeamPet_Pack[3327041]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tNewTeamPet_Pack[3327041]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327041]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327041]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327042] = {}
	-- ===12阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327042]
	-- ===删除:3327042,1
	-- ===
	tNewTeamPet_Pack[3327042]["LogId"] = 12001747
	tNewTeamPet_Pack[3327042]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327042]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327042]["DeleteItem"][1]["Id"] = 3327042 -- 【库】 3327042 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327042]["RewardItem"] = {}
	tNewTeamPet_Pack[3327042]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327042]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewTeamPet_Pack[3327042]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tNewTeamPet_Pack[3327042]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327042]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewTeamPet_Pack[3327042]["RewardItem"][2]["Attr"] = "0 15" -- GinsengFruit*15（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327042]["RewardItem"][3] = {}
	tNewTeamPet_Pack[3327042]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewTeamPet_Pack[3327042]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tNewTeamPet_Pack[3327042]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327042]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327042]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327043] = {}
	-- ===13阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327043]
	-- ===删除:3327043,1
	-- ===
	tNewTeamPet_Pack[3327043]["LogId"] = 12001747
	tNewTeamPet_Pack[3327043]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327043]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327043]["DeleteItem"][1]["Id"] = 3327043 -- 【库】 3327043 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327043]["RewardItem"] = {}
	tNewTeamPet_Pack[3327043]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327043]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）
	tNewTeamPet_Pack[3327043]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tNewTeamPet_Pack[3327043]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327043]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewTeamPet_Pack[3327043]["RewardItem"][2]["Attr"] = "0 20" -- GinsengFruit*20（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327043]["RewardItem"][3] = {}
	tNewTeamPet_Pack[3327043]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewTeamPet_Pack[3327043]["RewardItem"][3]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tNewTeamPet_Pack[3327043]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327043]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327043]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327044] = {}
	-- ===14阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327044]
	-- ===删除:3327044,1
	-- ===
	tNewTeamPet_Pack[3327044]["LogId"] = 12001747
	tNewTeamPet_Pack[3327044]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327044]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327044]["DeleteItem"][1]["Id"] = 3327044 -- 【库】 3327044 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327044]["RewardItem"] = {}
	tNewTeamPet_Pack[3327044]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327044]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNewTeamPet_Pack[3327044]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tNewTeamPet_Pack[3327044]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327044]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewTeamPet_Pack[3327044]["RewardItem"][2]["Attr"] = "0 25" -- GinsengFruit*25（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327044]["RewardItem"][3] = {}
	tNewTeamPet_Pack[3327044]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewTeamPet_Pack[3327044]["RewardItem"][3]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tNewTeamPet_Pack[3327044]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327044]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327044]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327045] = {}
	-- ===15阶养成礼盒
	-- ===索引:tNewTeamPet_Pack[3327045]
	-- ===删除:3327045,1
	-- ===
	tNewTeamPet_Pack[3327045]["LogId"] = 12001747
	tNewTeamPet_Pack[3327045]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327045]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327045]["DeleteItem"][1]["Id"] = 3327045 -- 【库】 3327045 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327045]["RewardItem"] = {}
	tNewTeamPet_Pack[3327045]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327045]["RewardItem"][1]["Id"] = 3303373 -- KnowledgePill[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹（赠）
	tNewTeamPet_Pack[3327045]["RewardItem"][1]["Attr"] = "0 10" -- KnowledgePill*10
	tNewTeamPet_Pack[3327045]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327045]["RewardItem"][2]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹（赠）
	tNewTeamPet_Pack[3327045]["RewardItem"][2]["Attr"] = "0 3 3" -- PowerEraser（赠）*3
	tNewTeamPet_Pack[3327045]["RewardItem"][3] = {}
	tNewTeamPet_Pack[3327045]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewTeamPet_Pack[3327045]["RewardItem"][3]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tNewTeamPet_Pack[3327045]["RewardItem"][4] = {}
	tNewTeamPet_Pack[3327045]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewTeamPet_Pack[3327045]["RewardItem"][4]["Attr"] = "0 35" -- GinsengFruit*35（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327045]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327045]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327045]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3326963] = {}
	-- ===1级混元丹
	-- ===索引: tNewTeamPet_Pack[3326963]
	-- ===删除:3326963,1
	-- ===
	tNewTeamPet_Pack[3326963]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTeamPet_Pack[3326963]["DeleteItem"] = {}
	tNewTeamPet_Pack[3326963]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3326963]["DeleteItem"][1]["Id"] = 3326963 -- 【库】1级混元丹[属性:8]
	tNewTeamPet_Pack[3326963]["LogId"] = 12001747
	-- 1380天石 - 0.01%
	tNewTeamPet_Pack[3326963][1] = {}
	tNewTeamPet_Pack[3326963][1]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326963][1]["ItemChance"] = 1
	tNewTeamPet_Pack[3326963][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3326963][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326963][1]["RewardItem"][1]["Id"] = 720654 -- JoyCPPack[720654][属性:9][叠加:0][金币:0], 【表格】1380天石
	tNewTeamPet_Pack[3326963][1]["RewardItem"][1]["Attr"] = "0 5" -- JoyCPPack*5
	tNewTeamPet_Pack[3326963][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326963][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326963][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewTeamPet_Pack[3326963][1]["Num"] = 1
	-- 270天石 - 0.1%
	tNewTeamPet_Pack[3326963][2] = {}
	tNewTeamPet_Pack[3326963][2]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326963][2]["ItemChance"] = 10
	tNewTeamPet_Pack[3326963][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3326963][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326963][2]["RewardItem"][1]["Id"] = 720653 -- DreamCPPack[720653][属性:9][叠加:0][金币:0], 【表格】270天石
	tNewTeamPet_Pack[3326963][2]["RewardItem"][1]["Attr"] = "0 5" -- DreamCPPack*5
	tNewTeamPet_Pack[3326963][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326963][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326963][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 20天石 - 37%
	tNewTeamPet_Pack[3326963][3] = {}
	tNewTeamPet_Pack[3326963][3]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326963][3]["ItemChance"] = 3700
	tNewTeamPet_Pack[3326963][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3326963][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326963][3]["RewardItem"][1]["Id"] = 720655 -- MammonCPPack[720655][属性:9][叠加:0][金币:0], 【表格】20天石
	tNewTeamPet_Pack[3326963][3]["RewardItem"][1]["Attr"] = "0 5" -- MammonCPPack*5
	tNewTeamPet_Pack[3326963][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326963][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326963][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 10天石 - 12.89%
	tNewTeamPet_Pack[3326963][4] = {}
	tNewTeamPet_Pack[3326963][4]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326963][4]["ItemChance"] = 1289
	tNewTeamPet_Pack[3326963][4]["RewardItem"] = {}
	tNewTeamPet_Pack[3326963][4]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326963][4]["RewardItem"][1]["Id"] = 720656 -- MascotCPPack[720656][属性:9][叠加:0][金币:0], 【表格】10天石
	tNewTeamPet_Pack[3326963][4]["RewardItem"][1]["Attr"] = "0 5" -- MascotCPPack*5
	tNewTeamPet_Pack[3326963][4]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326963][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326963][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 5天石 - 10%
	tNewTeamPet_Pack[3326963][5] = {}
	tNewTeamPet_Pack[3326963][5]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326963][5]["ItemChance"] = 1000
	tNewTeamPet_Pack[3326963][5]["RewardItem"] = {}
	tNewTeamPet_Pack[3326963][5]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326963][5]["RewardItem"][1]["Id"] = 720657 -- HopeCPPack[720657][属性:9][叠加:0][金币:0], 【表格】5天石
	tNewTeamPet_Pack[3326963][5]["RewardItem"][1]["Attr"] = "0 5" -- HopeCPPack*5
	tNewTeamPet_Pack[3326963][5]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326963][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326963][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 10分钟经验 - 40%
	tNewTeamPet_Pack[3326963][6] = {}
	tNewTeamPet_Pack[3326963][6]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326963][6]["ItemChance"] = 4000
	tNewTeamPet_Pack[3326963][6]["RewardItem"] = {}
	tNewTeamPet_Pack[3326963][6]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326963][6]["RewardItem"][1]["Id"] = 3327054 -- MagicBall[3327054][属性:9][叠加:0][金币:0], 【表格】10分钟经验
	tNewTeamPet_Pack[3326963][6]["RewardItem"][1]["Attr"] = "0 5" -- MagicBall*5
	tNewTeamPet_Pack[3326963][6]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326963][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326963][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3326964] = {}
	-- ===2级混元丹
	-- ===索引: tNewTeamPet_Pack[3326964]
	-- ===删除:3326964,1
	-- ===
	tNewTeamPet_Pack[3326964]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTeamPet_Pack[3326964]["DeleteItem"] = {}
	tNewTeamPet_Pack[3326964]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3326964]["DeleteItem"][1]["Id"] = 3326964 -- 【库】2级混元丹[属性:8]
	tNewTeamPet_Pack[3326964]["LogId"] = 12001747
	-- 6900天石 - 0.01%
	tNewTeamPet_Pack[3326964][1] = {}
	tNewTeamPet_Pack[3326964][1]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326964][1]["ItemChance"] = 1
	tNewTeamPet_Pack[3326964][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3326964][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326964][1]["RewardItem"][1]["Id"] = 720662 -- MysticCPPack[720662][属性:9][叠加:0][金币:0], 【表格】6900天石
	tNewTeamPet_Pack[3326964][1]["RewardItem"][1]["Attr"] = "0 5" -- MysticCPPack*5
	tNewTeamPet_Pack[3326964][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326964][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326964][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewTeamPet_Pack[3326964][1]["Num"] = 1
	-- 1350天石 - 0.1%
	tNewTeamPet_Pack[3326964][2] = {}
	tNewTeamPet_Pack[3326964][2]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326964][2]["ItemChance"] = 10
	tNewTeamPet_Pack[3326964][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3326964][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326964][2]["RewardItem"][1]["Id"] = 720661 -- PureCPPack[720661][属性:9][叠加:0][金币:0], 【表格】1350天石
	tNewTeamPet_Pack[3326964][2]["RewardItem"][1]["Attr"] = "0 5" -- PureCPPack*5
	tNewTeamPet_Pack[3326964][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326964][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326964][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100天石 - 37%
	tNewTeamPet_Pack[3326964][3] = {}
	tNewTeamPet_Pack[3326964][3]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326964][3]["ItemChance"] = 3700
	tNewTeamPet_Pack[3326964][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3326964][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326964][3]["RewardItem"][1]["Id"] = 720660 -- LegendCPPack[720660][属性:9][叠加:0][金币:0], 【表格】100天石
	tNewTeamPet_Pack[3326964][3]["RewardItem"][1]["Attr"] = "0 5" -- LegendCPPack*5
	tNewTeamPet_Pack[3326964][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326964][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326964][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 50天石 - 12.89%
	tNewTeamPet_Pack[3326964][4] = {}
	tNewTeamPet_Pack[3326964][4]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326964][4]["ItemChance"] = 1289
	tNewTeamPet_Pack[3326964][4]["RewardItem"] = {}
	tNewTeamPet_Pack[3326964][4]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326964][4]["RewardItem"][1]["Id"] = 720659 -- SweetCPPack[720659][属性:9][叠加:0][金币:0], 【表格】50天石
	tNewTeamPet_Pack[3326964][4]["RewardItem"][1]["Attr"] = "0 5" -- SweetCPPack*5
	tNewTeamPet_Pack[3326964][4]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326964][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326964][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 25天石 - 10%
	tNewTeamPet_Pack[3326964][5] = {}
	tNewTeamPet_Pack[3326964][5]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326964][5]["ItemChance"] = 1000
	tNewTeamPet_Pack[3326964][5]["RewardItem"] = {}
	tNewTeamPet_Pack[3326964][5]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326964][5]["RewardItem"][1]["Id"] = 720658 -- FestivalCPPack[720658][属性:9][叠加:0][金币:0], 【表格】25天石
	tNewTeamPet_Pack[3326964][5]["RewardItem"][1]["Attr"] = "0 5" -- FestivalCPPack*5
	tNewTeamPet_Pack[3326964][5]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326964][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326964][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 50分钟经验 - 40%
	tNewTeamPet_Pack[3326964][6] = {}
	tNewTeamPet_Pack[3326964][6]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326964][6]["ItemChance"] = 4000
	tNewTeamPet_Pack[3326964][6]["RewardItem"] = {}
	tNewTeamPet_Pack[3326964][6]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326964][6]["RewardItem"][1]["Id"] = 3327055 -- SuperBall[3327055][属性:9][叠加:0][金币:0], 【表格】50分钟经验
	tNewTeamPet_Pack[3326964][6]["RewardItem"][1]["Attr"] = "0 5" -- SuperBall*5
	tNewTeamPet_Pack[3326964][6]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326964][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326964][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3326965] = {}
	-- ===3级混元丹
	-- ===索引: tNewTeamPet_Pack[3326965]
	-- ===删除:3326965,1
	-- ===
	tNewTeamPet_Pack[3326965]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTeamPet_Pack[3326965]["DeleteItem"] = {}
	tNewTeamPet_Pack[3326965]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3326965]["DeleteItem"][1]["Id"] = 3326965 -- 【库】3级混元丹[属性:8]
	tNewTeamPet_Pack[3326965]["LogId"] = 12001747
	-- 13800天石 - 0.01%
	tNewTeamPet_Pack[3326965][1] = {}
	tNewTeamPet_Pack[3326965][1]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326965][1]["ItemChance"] = 1
	tNewTeamPet_Pack[3326965][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3326965][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326965][1]["RewardItem"][1]["Id"] = 720667 -- FantasyCPPack[720667][属性:9][叠加:0][金币:0], 【表格】13800天石
	tNewTeamPet_Pack[3326965][1]["RewardItem"][1]["Attr"] = "0 5" -- FantasyCPPack*5
	tNewTeamPet_Pack[3326965][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326965][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326965][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewTeamPet_Pack[3326965][1]["Num"] = 1
	-- 2700天石 - 0.1%
	tNewTeamPet_Pack[3326965][2] = {}
	tNewTeamPet_Pack[3326965][2]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326965][2]["ItemChance"] = 10
	tNewTeamPet_Pack[3326965][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3326965][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326965][2]["RewardItem"][1]["Id"] = 720666 -- StarCPPack[720666][属性:9][叠加:0][金币:0], 【表格】2700天石
	tNewTeamPet_Pack[3326965][2]["RewardItem"][1]["Attr"] = "0 5" -- StarCPPack*5
	tNewTeamPet_Pack[3326965][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326965][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326965][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 200天石 - 37%
	tNewTeamPet_Pack[3326965][3] = {}
	tNewTeamPet_Pack[3326965][3]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326965][3]["ItemChance"] = 3700
	tNewTeamPet_Pack[3326965][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3326965][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326965][3]["RewardItem"][1]["Id"] = 720665 -- CuteCPPack[720665][属性:9][叠加:0][金币:0], 【表格】200天石
	tNewTeamPet_Pack[3326965][3]["RewardItem"][1]["Attr"] = "0 5" -- CuteCPPack*5
	tNewTeamPet_Pack[3326965][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326965][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326965][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100天石 - 12.89%
	tNewTeamPet_Pack[3326965][4] = {}
	tNewTeamPet_Pack[3326965][4]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326965][4]["ItemChance"] = 1289
	tNewTeamPet_Pack[3326965][4]["RewardItem"] = {}
	tNewTeamPet_Pack[3326965][4]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326965][4]["RewardItem"][1]["Id"] = 720664 -- FlareCPPack[720664][属性:9][叠加:0][金币:0], 【表格】100天石
	tNewTeamPet_Pack[3326965][4]["RewardItem"][1]["Attr"] = "0 5" -- FlareCPPack*5
	tNewTeamPet_Pack[3326965][4]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326965][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326965][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 50天石 - 10%
	tNewTeamPet_Pack[3326965][5] = {}
	tNewTeamPet_Pack[3326965][5]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326965][5]["ItemChance"] = 1000
	tNewTeamPet_Pack[3326965][5]["RewardItem"] = {}
	tNewTeamPet_Pack[3326965][5]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326965][5]["RewardItem"][1]["Id"] = 720663 -- VioletCPPack[720663][属性:9][叠加:0][金币:0], 【表格】50天石
	tNewTeamPet_Pack[3326965][5]["RewardItem"][1]["Attr"] = "0 5" -- VioletCPPack*5
	tNewTeamPet_Pack[3326965][5]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326965][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326965][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟角 - 40%
	tNewTeamPet_Pack[3326965][6] = {}
	tNewTeamPet_Pack[3326965][6]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326965][6]["ItemChance"] = 4000
	tNewTeamPet_Pack[3326965][6]["RewardItem"] = {}
	tNewTeamPet_Pack[3326965][6]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326965][6]["RewardItem"][1]["Id"] = 3326962 -- 麒麟角[3326962][属性:8][叠加:0][金币:0], 【表格】麒麟角
	tNewTeamPet_Pack[3326965][6]["RewardItem"][1]["Attr"] = "0 5" -- 麒麟角*5
	tNewTeamPet_Pack[3326965][6]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326965][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326965][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3326966] = {}
	-- ===4级混元丹
	-- ===索引: tNewTeamPet_Pack[3326966]
	-- ===删除:3326966,1
	-- ===
	tNewTeamPet_Pack[3326966]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTeamPet_Pack[3326966]["DeleteItem"] = {}
	tNewTeamPet_Pack[3326966]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3326966]["DeleteItem"][1]["Id"] = 3326966 -- 【库】4级混元丹[属性:8]
	tNewTeamPet_Pack[3326966]["LogId"] = 12001747
	-- 69000天石 - 0.01%
	tNewTeamPet_Pack[3326966][1] = {}
	tNewTeamPet_Pack[3326966][1]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326966][1]["ItemChance"] = 1
	tNewTeamPet_Pack[3326966][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3326966][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326966][1]["RewardItem"][1]["Id"] = 720679 -- FrostCPPack[720679][属性:9][叠加:0][金币:0], 【表格】69000天石
	tNewTeamPet_Pack[3326966][1]["RewardItem"][1]["Attr"] = "0 5" -- FrostCPPack*5
	tNewTeamPet_Pack[3326966][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326966][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326966][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewTeamPet_Pack[3326966][1]["Num"] = 1
	-- 13500天石 - 0.1%
	tNewTeamPet_Pack[3326966][2] = {}
	tNewTeamPet_Pack[3326966][2]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326966][2]["ItemChance"] = 10
	tNewTeamPet_Pack[3326966][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3326966][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326966][2]["RewardItem"][1]["Id"] = 720678 -- LifeCPPack[720678][属性:9][叠加:0][金币:0], 【表格】13500天石
	tNewTeamPet_Pack[3326966][2]["RewardItem"][1]["Attr"] = "0 5" -- LifeCPPack*5
	tNewTeamPet_Pack[3326966][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326966][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326966][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石 - 37%
	tNewTeamPet_Pack[3326966][3] = {}
	tNewTeamPet_Pack[3326966][3]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326966][3]["ItemChance"] = 3700
	tNewTeamPet_Pack[3326966][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3326966][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326966][3]["RewardItem"][1]["Id"] = 720677 -- BloodCPPack[720677][属性:9][叠加:0][金币:0], 【表格】1000天石
	tNewTeamPet_Pack[3326966][3]["RewardItem"][1]["Attr"] = "0 5" -- BloodCPPack*5
	tNewTeamPet_Pack[3326966][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326966][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326966][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 500天石 - 12.89%
	tNewTeamPet_Pack[3326966][4] = {}
	tNewTeamPet_Pack[3326966][4]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326966][4]["ItemChance"] = 1289
	tNewTeamPet_Pack[3326966][4]["RewardItem"] = {}
	tNewTeamPet_Pack[3326966][4]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326966][4]["RewardItem"][1]["Id"] = 720676 -- SoulCPPack[720676][属性:9][叠加:0][金币:0], 【表格】500天石
	tNewTeamPet_Pack[3326966][4]["RewardItem"][1]["Attr"] = "0 5" -- SoulCPPack*5
	tNewTeamPet_Pack[3326966][4]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326966][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326966][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 250天石 - 10%
	tNewTeamPet_Pack[3326966][5] = {}
	tNewTeamPet_Pack[3326966][5]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326966][5]["ItemChance"] = 1000
	tNewTeamPet_Pack[3326966][5]["RewardItem"] = {}
	tNewTeamPet_Pack[3326966][5]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326966][5]["RewardItem"][1]["Id"] = 720675 -- GhostCPPack[720675][属性:9][叠加:0][金币:0], 【表格】250天石
	tNewTeamPet_Pack[3326966][5]["RewardItem"][1]["Attr"] = "0 5" -- GhostCPPack*5
	tNewTeamPet_Pack[3326966][5]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326966][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326966][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟角 - 40%
	tNewTeamPet_Pack[3326966][6] = {}
	tNewTeamPet_Pack[3326966][6]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326966][6]["ItemChance"] = 4000
	tNewTeamPet_Pack[3326966][6]["RewardItem"] = {}
	tNewTeamPet_Pack[3326966][6]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326966][6]["RewardItem"][1]["Id"] = 3326962 -- 麒麟角[3326962][属性:8][叠加:0][金币:0], 【表格】麒麟角
	tNewTeamPet_Pack[3326966][6]["RewardItem"][1]["Attr"] = "0 25" -- 麒麟角*25（[错误]物品数量超10个）
	tNewTeamPet_Pack[3326966][6]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326966][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326966][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3326967] = {}
	-- ===5级混元丹
	-- ===索引: tNewTeamPet_Pack[3326967]
	-- ===删除:3326967,1
	-- ===
	tNewTeamPet_Pack[3326967]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTeamPet_Pack[3326967]["DeleteItem"] = {}
	tNewTeamPet_Pack[3326967]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3326967]["DeleteItem"][1]["Id"] = 3326967 -- 【库】5级混元丹[属性:8]
	tNewTeamPet_Pack[3326967]["LogId"] = 12001747
	-- 138000天石 - 0.01%
	tNewTeamPet_Pack[3326967][1] = {}
	tNewTeamPet_Pack[3326967][1]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326967][1]["ItemChance"] = 1
	tNewTeamPet_Pack[3326967][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3326967][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326967][1]["RewardItem"][1]["Id"] = 720685 -- NimbusCPPack[720685][属性:9][叠加:0][金币:0], 【表格】138000天石
	tNewTeamPet_Pack[3326967][1]["RewardItem"][1]["Attr"] = "0 5" -- NimbusCPPack*5
	tNewTeamPet_Pack[3326967][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326967][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326967][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewTeamPet_Pack[3326967][1]["Num"] = 1
	-- 27000天石 - 0.1%
	tNewTeamPet_Pack[3326967][2] = {}
	tNewTeamPet_Pack[3326967][2]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326967][2]["ItemChance"] = 10
	tNewTeamPet_Pack[3326967][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3326967][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326967][2]["RewardItem"][1]["Id"] = 720684 -- ButterflyCPPack[720684][属性:9][叠加:0][金币:0], 【表格】27000天石
	tNewTeamPet_Pack[3326967][2]["RewardItem"][1]["Attr"] = "0 5" -- ButterflyCPPack*5
	tNewTeamPet_Pack[3326967][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326967][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326967][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000天石 - 37%
	tNewTeamPet_Pack[3326967][3] = {}
	tNewTeamPet_Pack[3326967][3]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326967][3]["ItemChance"] = 3700
	tNewTeamPet_Pack[3326967][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3326967][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326967][3]["RewardItem"][1]["Id"] = 720683 -- HeartCPPack[720683][属性:9][叠加:0][金币:0], 【表格】2000天石
	tNewTeamPet_Pack[3326967][3]["RewardItem"][1]["Attr"] = "0 5" -- HeartCPPack*5
	tNewTeamPet_Pack[3326967][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326967][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326967][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石 - 12.89%
	tNewTeamPet_Pack[3326967][4] = {}
	tNewTeamPet_Pack[3326967][4]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326967][4]["ItemChance"] = 1289
	tNewTeamPet_Pack[3326967][4]["RewardItem"] = {}
	tNewTeamPet_Pack[3326967][4]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326967][4]["RewardItem"][1]["Id"] = 720682 -- FlowerCPPack[720682][属性:9][叠加:0][金币:0], 【表格】1000天石
	tNewTeamPet_Pack[3326967][4]["RewardItem"][1]["Attr"] = "0 5" -- FlowerCPPack*5
	tNewTeamPet_Pack[3326967][4]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326967][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326967][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 500天石 - 10%
	tNewTeamPet_Pack[3326967][5] = {}
	tNewTeamPet_Pack[3326967][5]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326967][5]["ItemChance"] = 1000
	tNewTeamPet_Pack[3326967][5]["RewardItem"] = {}
	tNewTeamPet_Pack[3326967][5]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326967][5]["RewardItem"][1]["Id"] = 720681 -- DeityCPPack[720681][属性:9][叠加:0][金币:0], 【表格】500天石
	tNewTeamPet_Pack[3326967][5]["RewardItem"][1]["Attr"] = "0 5" -- DeityCPPack*5
	tNewTeamPet_Pack[3326967][5]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326967][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326967][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟角 - 40%
	tNewTeamPet_Pack[3326967][6] = {}
	tNewTeamPet_Pack[3326967][6]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326967][6]["ItemChance"] = 4000
	tNewTeamPet_Pack[3326967][6]["RewardItem"] = {}
	tNewTeamPet_Pack[3326967][6]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326967][6]["RewardItem"][1]["Id"] = 3326962 -- 麒麟角[3326962][属性:8][叠加:0][金币:0], 【表格】麒麟角
	tNewTeamPet_Pack[3326967][6]["RewardItem"][1]["Attr"] = "0 50" -- 麒麟角*50（[错误]物品数量超10个）
	tNewTeamPet_Pack[3326967][6]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326967][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326967][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3326968] = {}
	-- ===6级混元丹
	-- ===索引: tNewTeamPet_Pack[3326968]
	-- ===删除:3326968,1
	-- ===
	tNewTeamPet_Pack[3326968]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTeamPet_Pack[3326968]["DeleteItem"] = {}
	tNewTeamPet_Pack[3326968]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3326968]["DeleteItem"][1]["Id"] = 3326968 -- 【库】6级混元丹[属性:8]
	tNewTeamPet_Pack[3326968]["LogId"] = 12001747
	-- 276000天石 - 0.01%
	tNewTeamPet_Pack[3326968][1] = {}
	tNewTeamPet_Pack[3326968][1]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326968][1]["ItemChance"] = 1
	tNewTeamPet_Pack[3326968][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3326968][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326968][1]["RewardItem"][1]["Id"] = 720691 -- KylinCPPack[720691][属性:9][叠加:0][金币:0], 【表格】276000天石
	tNewTeamPet_Pack[3326968][1]["RewardItem"][1]["Attr"] = "0 5" -- KylinCPPack*5
	tNewTeamPet_Pack[3326968][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326968][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326968][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewTeamPet_Pack[3326968][1]["Num"] = 1
	-- 54000天石 - 0.1%
	tNewTeamPet_Pack[3326968][2] = {}
	tNewTeamPet_Pack[3326968][2]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326968][2]["ItemChance"] = 10
	tNewTeamPet_Pack[3326968][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3326968][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326968][2]["RewardItem"][1]["Id"] = 720690 -- RainbowCPPack[720690][属性:9][叠加:0][金币:0], 【表格】54000天石
	tNewTeamPet_Pack[3326968][2]["RewardItem"][1]["Attr"] = "0 5" -- RainbowCPPack*5
	tNewTeamPet_Pack[3326968][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326968][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326968][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4000天石 - 37%
	tNewTeamPet_Pack[3326968][3] = {}
	tNewTeamPet_Pack[3326968][3]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326968][3]["ItemChance"] = 3700
	tNewTeamPet_Pack[3326968][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3326968][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326968][3]["RewardItem"][1]["Id"] = 720689 -- ShadowCPPack[720689][属性:9][叠加:0][金币:0], 【表格】4000天石
	tNewTeamPet_Pack[3326968][3]["RewardItem"][1]["Attr"] = "0 5" -- ShadowCPPack*5
	tNewTeamPet_Pack[3326968][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326968][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326968][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000天石 - 12.89%
	tNewTeamPet_Pack[3326968][4] = {}
	tNewTeamPet_Pack[3326968][4]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326968][4]["ItemChance"] = 1289
	tNewTeamPet_Pack[3326968][4]["RewardItem"] = {}
	tNewTeamPet_Pack[3326968][4]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326968][4]["RewardItem"][1]["Id"] = 720688 -- JewelCPPack[720688][属性:9][叠加:0][金币:0], 【表格】2000天石
	tNewTeamPet_Pack[3326968][4]["RewardItem"][1]["Attr"] = "0 5" -- JewelCPPack*5
	tNewTeamPet_Pack[3326968][4]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326968][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326968][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石 - 10%
	tNewTeamPet_Pack[3326968][5] = {}
	tNewTeamPet_Pack[3326968][5]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326968][5]["ItemChance"] = 1000
	tNewTeamPet_Pack[3326968][5]["RewardItem"] = {}
	tNewTeamPet_Pack[3326968][5]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326968][5]["RewardItem"][1]["Id"] = 720687 -- CloudCPPack[720687][属性:9][叠加:0][金币:0], 【表格】1000天石
	tNewTeamPet_Pack[3326968][5]["RewardItem"][1]["Attr"] = "0 5" -- CloudCPPack*5
	tNewTeamPet_Pack[3326968][5]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326968][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326968][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟角 - 40%
	tNewTeamPet_Pack[3326968][6] = {}
	tNewTeamPet_Pack[3326968][6]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326968][6]["ItemChance"] = 4000
	tNewTeamPet_Pack[3326968][6]["RewardItem"] = {}
	tNewTeamPet_Pack[3326968][6]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326968][6]["RewardItem"][1]["Id"] = 3326962 -- 麒麟角[3326962][属性:8][叠加:0][金币:0], 【表格】麒麟角
	tNewTeamPet_Pack[3326968][6]["RewardItem"][1]["Attr"] = "0 100" -- 麒麟角*100（[错误]物品数量超10个）
	tNewTeamPet_Pack[3326968][6]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326968][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326968][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3326969] = {}
	-- ===7级混元丹
	-- ===索引: tNewTeamPet_Pack[3326969]
	-- ===删除:3326969,1
	-- ===
	tNewTeamPet_Pack[3326969]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewTeamPet_Pack[3326969]["DeleteItem"] = {}
	tNewTeamPet_Pack[3326969]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3326969]["DeleteItem"][1]["Id"] = 3326969 -- 【库】7级混元丹[属性:8]
	tNewTeamPet_Pack[3326969]["LogId"] = 12001747
	-- 690000天石 - 0.01%
	tNewTeamPet_Pack[3326969][1] = {}
	tNewTeamPet_Pack[3326969][1]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326969][1]["ItemChance"] = 1
	tNewTeamPet_Pack[3326969][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3326969][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326969][1]["RewardItem"][1]["Id"] = 720697 -- PilgrimCPPack[720697][属性:9][叠加:0][金币:0], 【表格】690000天石
	tNewTeamPet_Pack[3326969][1]["RewardItem"][1]["Attr"] = "0 5" -- PilgrimCPPack*5
	tNewTeamPet_Pack[3326969][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326969][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326969][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewTeamPet_Pack[3326969][1]["Num"] = 1
	-- 135000天石 - 0.1%
	tNewTeamPet_Pack[3326969][2] = {}
	tNewTeamPet_Pack[3326969][2]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326969][2]["ItemChance"] = 10
	tNewTeamPet_Pack[3326969][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3326969][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326969][2]["RewardItem"][1]["Id"] = 720696 -- ZephyrCPPack[720696][属性:9][叠加:0][金币:0], 【表格】135000天石
	tNewTeamPet_Pack[3326969][2]["RewardItem"][1]["Attr"] = "0 5" -- ZephyrCPPack*5
	tNewTeamPet_Pack[3326969][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326969][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326969][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000天石 - 37%
	tNewTeamPet_Pack[3326969][3] = {}
	tNewTeamPet_Pack[3326969][3]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326969][3]["ItemChance"] = 3700
	tNewTeamPet_Pack[3326969][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3326969][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326969][3]["RewardItem"][1]["Id"] = 720695 -- EarthCPPack[720695][属性:9][叠加:0][金币:0], 【表格】10000天石
	tNewTeamPet_Pack[3326969][3]["RewardItem"][1]["Attr"] = "0 5" -- EarthCPPack*5
	tNewTeamPet_Pack[3326969][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326969][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326969][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000天石 - 12.89%
	tNewTeamPet_Pack[3326969][4] = {}
	tNewTeamPet_Pack[3326969][4]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326969][4]["ItemChance"] = 1289
	tNewTeamPet_Pack[3326969][4]["RewardItem"] = {}
	tNewTeamPet_Pack[3326969][4]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326969][4]["RewardItem"][1]["Id"] = 720694 -- MoonCPPack[720694][属性:9][叠加:0][金币:0], 【表格】5000天石
	tNewTeamPet_Pack[3326969][4]["RewardItem"][1]["Attr"] = "0 5" -- MoonCPPack*5
	tNewTeamPet_Pack[3326969][4]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326969][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326969][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 2500天石 - 10%
	tNewTeamPet_Pack[3326969][5] = {}
	tNewTeamPet_Pack[3326969][5]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326969][5]["ItemChance"] = 1000
	tNewTeamPet_Pack[3326969][5]["RewardItem"] = {}
	tNewTeamPet_Pack[3326969][5]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326969][5]["RewardItem"][1]["Id"] = 720693 -- FogCPPack[720693][属性:9][叠加:0][金币:0], 【表格】2500天石
	tNewTeamPet_Pack[3326969][5]["RewardItem"][1]["Attr"] = "0 5" -- FogCPPack*5
	tNewTeamPet_Pack[3326969][5]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326969][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326969][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 麒麟角 - 40%
	tNewTeamPet_Pack[3326969][6] = {}
	tNewTeamPet_Pack[3326969][6]["RandomItemChanceType"] = 2
	tNewTeamPet_Pack[3326969][6]["ItemChance"] = 4000
	tNewTeamPet_Pack[3326969][6]["RewardItem"] = {}
	tNewTeamPet_Pack[3326969][6]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3326969][6]["RewardItem"][1]["Id"] = 3326962 -- 麒麟角[3326962][属性:8][叠加:0][金币:0], 【表格】麒麟角
	tNewTeamPet_Pack[3326969][6]["RewardItem"][1]["Attr"] = "0 250" -- 麒麟角*250（[错误]物品数量超10个）
	tNewTeamPet_Pack[3326969][6]["RewardEffect"] = {}
	tNewTeamPet_Pack[3326969][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3326969][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327050] = {}
	-- ===养成时装礼盒
	-- ===索引:tNewTeamPet_Pack[3327050][1]
	-- ===删除:3327050,1
	-- ===
	tNewTeamPet_Pack[3327050][1] = {}
	tNewTeamPet_Pack[3327050][1]["LogId"] = 12001747
	tNewTeamPet_Pack[3327050][1]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327050][1]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327050][1]["DeleteItem"][1]["Id"] = 3327050 -- 【库】 3327050 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327050][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3327050][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327050][1]["RewardItem"][1]["Id"] = 195885 -- BuddingFlower[Legend][195885][属性:0][叠加:0][金币:0], 【表格】四海升平【锦绣版】（赠）
	tNewTeamPet_Pack[3327050][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑BuddingFlower[Legend]（赠）*1
	tNewTeamPet_Pack[3327050][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327050][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327050][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327050][2] = {}
	-- ===养成时装礼盒
	-- ===索引:tNewTeamPet_Pack[3327050][2]
	-- ===删除:3327050,1
	-- ===
	tNewTeamPet_Pack[3327050][2]["LogId"] = 12001747
	tNewTeamPet_Pack[3327050][2]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327050][2]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327050][2]["DeleteItem"][1]["Id"] = 3327050 -- 【库】 3327050 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327050][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3327050][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327050][2]["RewardItem"][1]["Id"] = 195715 -- FlamingWarrior(Elite)[195715][属性:0][叠加:0][金币:0], 【表格】勇霸天下-无双 （赠）
	tNewTeamPet_Pack[3327050][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FlamingWarrior(Elite)（赠）*1
	tNewTeamPet_Pack[3327050][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327050][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327050][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327050][3] = {}
	-- ===养成时装礼盒
	-- ===索引:tNewTeamPet_Pack[3327050][3]
	-- ===删除:3327050,1
	-- ===
	tNewTeamPet_Pack[3327050][3]["LogId"] = 12001747
	tNewTeamPet_Pack[3327050][3]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327050][3]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327050][3]["DeleteItem"][1]["Id"] = 3327050 -- 【库】 3327050 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327050][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3327050][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327050][3]["RewardItem"][1]["Id"] = 195765 -- CelestialGuard(Thunder)[195765][属性:0][叠加:0][金币:0], 【表格】星穹禁卫【雷霆版】（赠）
	tNewTeamPet_Pack[3327050][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CelestialGuard(Thunder)（赠）*1
	tNewTeamPet_Pack[3327050][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327050][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327050][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327051] = {}
	-- ===养成坐骑礼盒
	-- ===索引:tNewTeamPet_Pack[3327051][1]
	-- ===删除:3327051,1
	-- ===
	tNewTeamPet_Pack[3327051][1] = {}
	tNewTeamPet_Pack[3327051][1]["LogId"] = 12001747
	tNewTeamPet_Pack[3327051][1]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327051][1]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327051][1]["DeleteItem"][1]["Id"] = 3327051 -- 【库】 3327051 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327051][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3327051][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327051][1]["RewardItem"][1]["Id"] = 200648 -- SwiftCloud[200648][属性:0][叠加:0][金币:0], 【表格】九天凌云 （赠）
	tNewTeamPet_Pack[3327051][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑SwiftCloud（赠）*1
	tNewTeamPet_Pack[3327051][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327051][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327051][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327051][2] = {}
	-- ===养成坐骑礼盒
	-- ===索引:tNewTeamPet_Pack[3327051][2]
	-- ===删除:3327051,1
	-- ===
	tNewTeamPet_Pack[3327051][2]["LogId"] = 12001747
	tNewTeamPet_Pack[3327051][2]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327051][2]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327051][2]["DeleteItem"][1]["Id"] = 3327051 -- 【库】 3327051 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327051][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3327051][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327051][2]["RewardItem"][1]["Id"] = 200649 -- CherryCloud[200649][属性:0][叠加:0][金币:0], 【表格】紫樱流云 （赠）
	tNewTeamPet_Pack[3327051][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CherryCloud（赠）*1
	tNewTeamPet_Pack[3327051][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327051][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327051][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327051][3] = {}
	-- ===养成坐骑礼盒
	-- ===索引:tNewTeamPet_Pack[3327051][3]
	-- ===删除:3327051,1
	-- ===
	tNewTeamPet_Pack[3327051][3]["LogId"] = 12001747
	tNewTeamPet_Pack[3327051][3]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327051][3]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327051][3]["DeleteItem"][1]["Id"] = 3327051 -- 【库】 3327051 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327051][3]["RewardItem"] = {}
	tNewTeamPet_Pack[3327051][3]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327051][3]["RewardItem"][1]["Id"] = 200629 -- AuspiciousCloud[200629][属性:0][叠加:0][金币:0], 【表格】流金祥云 （赠）
	tNewTeamPet_Pack[3327051][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AuspiciousCloud（赠）*1
	tNewTeamPet_Pack[3327051][3]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327051][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327051][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327046] = {}
	-- ===养成种子礼盒
	-- ===索引:tNewTeamPet_Pack[3327046]
	-- ===删除:3327046,1
	-- ===
	tNewTeamPet_Pack[3327046]["LogId"] = 12001747
	tNewTeamPet_Pack[3327046]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327046]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327046]["DeleteItem"][1]["Id"] = 3327046 -- 【库】 3327046 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327046]["RewardItem"] = {}
	tNewTeamPet_Pack[3327046]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327046]["RewardItem"][1]["Id"] = 3008137 -- EXPFruitSeed[3008137][属性:11][叠加:100][金币:0], 【表格】凝神香果种子（赠）
	tNewTeamPet_Pack[3327046]["RewardItem"][1]["Attr"] = "0 20" -- EXPFruitSeed*20（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327046]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327046]["RewardItem"][2]["Id"] = 3008139 -- StarlightFlowerSeed[3008139][属性:11][叠加:100][金币:0], 【表格】辰星花种子（赠）
	tNewTeamPet_Pack[3327046]["RewardItem"][2]["Attr"] = "0 20" -- StarlightFlowerSeed*20（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327046]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327046]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327046]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327047] = {}
	-- ===养成房屋礼盒
	-- ===索引:tNewTeamPet_Pack[3327047]
	-- ===删除:3327047,1
	-- ===
	tNewTeamPet_Pack[3327047]["LogId"] = 12001747
	tNewTeamPet_Pack[3327047]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327047]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327047]["DeleteItem"][1]["Id"] = 3327047 -- 【库】 3327047 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327047]["RewardItem"] = {}
	tNewTeamPet_Pack[3327047]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327047]["RewardItem"][1]["Id"] = 3100046 -- HouseDesignDrawing[3100046][属性:9][叠加:10000][金币:0], 【表格】房屋设计图（赠）
	tNewTeamPet_Pack[3327047]["RewardItem"][1]["Attr"] = "0 5" -- HouseDesignDrawing*5
	tNewTeamPet_Pack[3327047]["RewardItem"][2] = {}
	tNewTeamPet_Pack[3327047]["RewardItem"][2]["Id"] = 3008100 -- Class6HousePack[3008100][属性:9][叠加:10000][金币:0], 【表格】6级房屋建材包（赠）
	tNewTeamPet_Pack[3327047]["RewardItem"][2]["Attr"] = "0 20" -- Class6HousePack*20
	tNewTeamPet_Pack[3327047]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327047]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327047]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327048] = {}
	-- ===麒麟成才礼盒
	-- ===索引:tNewTeamPet_Pack[3327048][1]
	-- ===删除:3327048,1
	-- ===
	tNewTeamPet_Pack[3327048][1] = {}
	tNewTeamPet_Pack[3327048][1]["LogId"] = 12001747
	tNewTeamPet_Pack[3327048][1]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327048][1]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327048][1]["DeleteItem"][1]["Id"] = 3327048 -- 【库】 3327048 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327048][1]["RewardItem"] = {}
	tNewTeamPet_Pack[3327048][1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327048][1]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNewTeamPet_Pack[3327048][1]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tNewTeamPet_Pack[3327048][1]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327048][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327048][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327048][2] = {}
	-- ===麒麟成才礼盒
	-- ===索引:tNewTeamPet_Pack[3327048][2]
	-- ===删除:3327048,1
	-- ===
	tNewTeamPet_Pack[3327048][2]["LogId"] = 12001747
	tNewTeamPet_Pack[3327048][2]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327048][2]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327048][2]["DeleteItem"][1]["Id"] = 3327048 -- 【库】 3327048 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327048][2]["RewardItem"] = {}
	tNewTeamPet_Pack[3327048][2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327048][2]["RewardItem"][1]["Id"] = 3303373 -- KnowledgePill[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹（赠）
	tNewTeamPet_Pack[3327048][2]["RewardItem"][1]["Attr"] = "0 3" -- KnowledgePill*3
	tNewTeamPet_Pack[3327048][2]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327048][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327048][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[1] = {}
	-- ===普通训练奖励
	-- ===索引:tNewTeamPet_Pack[1]
	-- ===
	tNewTeamPet_Pack[1]["LogId"] = 12001747
	tNewTeamPet_Pack[1]["RewardItem"] = {}
	tNewTeamPet_Pack[1]["RewardItem"][1] = {}
	tNewTeamPet_Pack[1]["RewardItem"][1]["Id"] = 3327031 --  3327031 【库里没有该物品】, 【表格】每日养成礼盒
	tNewTeamPet_Pack[1]["RewardItem"][1]["Attr"] = "0 3" --  3327031 【库里没有该物品】（赠）*3
	tNewTeamPet_Pack[1]["RewardEffect"] = {}
	tNewTeamPet_Pack[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[1]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[2] = {}
	-- ===片区怪物掉落
	-- ===索引:tNewTeamPet_Pack[2]
	-- ===
	tNewTeamPet_Pack[2]["LogId"] = 12001747
	tNewTeamPet_Pack[2]["RewardItem"] = {}
	tNewTeamPet_Pack[2]["RewardItem"][1] = {}
	tNewTeamPet_Pack[2]["RewardItem"][1]["Id"] = 3326961 -- 驯养天书[3326961][属性:8][叠加:0][金币:0], 【表格】驯养天书
	tNewTeamPet_Pack[2]["RewardItem"][1]["Attr"] = "0 1" -- 驯养天书*1
	tNewTeamPet_Pack[2]["RewardEffect"] = {}
	tNewTeamPet_Pack[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[2]["RewardEffect"]["Effect"] = "angelwing"

		-- ===MagicBall
	-- ===索引:tNewTeamPet_Pack[3327054]
	-- ===删除:3327054,1
	tNewTeamPet_Pack[3327054] = {}
	tNewTeamPet_Pack[3327054]["LogId"] = 12001747
	tNewTeamPet_Pack[3327054]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327054]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327054]["DeleteItem"][1]["Id"] = 3327054 -- 【库】 3327054 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327054]["RewardExpTime"] = {}
	tNewTeamPet_Pack[3327054]["RewardExpTime"]["Value"] = 10 -- 分钟经验, 【需求】10分钟经验
	tNewTeamPet_Pack[3327054]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327054]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327054]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327055] = {}
	-- ===SuperBall
	-- ===索引:tNewTeamPet_Pack[3327055]
	-- ===删除:3327055,1
	tNewTeamPet_Pack[3327055]["LogId"] = 12001747
	tNewTeamPet_Pack[3327055]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327055]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327055]["DeleteItem"][1]["Id"] = 3327055 -- 【库】 3327055 【库里没有该物品】[属性:]
	tNewTeamPet_Pack[3327055]["RewardExpTime"] = {}
	tNewTeamPet_Pack[3327055]["RewardExpTime"]["Value"] = 50 -- 分钟经验, 【需求】50分钟经验
	tNewTeamPet_Pack[3327055]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327055]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327055]["RewardEffect"]["Effect"] = "angelwing"


	-- ===二级房屋升级证
	-- ===索引:tNewTeamPet_Pack[3327156]
	-- ===删除:3327156,1
	-- ===
	tNewTeamPet_Pack[3327156] = {}
	tNewTeamPet_Pack[3327156]["LogId"] = 12001747
	tNewTeamPet_Pack[3327156]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327156]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327156]["DeleteItem"][1]["Id"] = 3327156 -- 【库】UpgradeCert.Box[属性:9]
	tNewTeamPet_Pack[3327156]["RewardItem"] = {}
	tNewTeamPet_Pack[3327156]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327156]["RewardItem"][1]["Id"] = 721174 -- UpgradeCert.[721174][属性:0][叠加:0][金币:0], 【表格】二级房屋升级证（赠）
	tNewTeamPet_Pack[3327156]["RewardItem"][1]["Attr"] = "0 1 3" -- UpgradeCert.（赠）*1
	tNewTeamPet_Pack[3327156]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327156]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327156]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327157] = {}
	-- ===三级房屋升级令
	-- ===索引:tNewTeamPet_Pack[3327157]
	-- ===删除:3327157,1
	-- ===
	tNewTeamPet_Pack[3327157]["LogId"] = 12001747
	tNewTeamPet_Pack[3327157]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327157]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327157]["DeleteItem"][1]["Id"] = 3327157 -- 【库】UpgradeCert.(Class3)Box[属性:9]
	tNewTeamPet_Pack[3327157]["RewardItem"] = {}
	tNewTeamPet_Pack[3327157]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327157]["RewardItem"][1]["Id"] = 711198 -- UpgradeCert.(Class3)[711198][属性:8][叠加:0][金币:0], 【表格】三级房屋升级令（赠）
	tNewTeamPet_Pack[3327157]["RewardItem"][1]["Attr"] = "0 1 3" -- UpgradeCert.(Class3)（赠）*1
	tNewTeamPet_Pack[3327157]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327157]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327157]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327158] = {}
	-- ===四级房屋升级令
	-- ===索引:tNewTeamPet_Pack[3327158]
	-- ===删除:3327158,1
	-- ===
	tNewTeamPet_Pack[3327158]["LogId"] = 12001747
	tNewTeamPet_Pack[3327158]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327158]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327158]["DeleteItem"][1]["Id"] = 3327158 -- 【库】UpgradeCert.(Class4)Box[属性:9]
	tNewTeamPet_Pack[3327158]["RewardItem"] = {}
	tNewTeamPet_Pack[3327158]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327158]["RewardItem"][1]["Id"] = 711200 -- UpgradeCert.(Class4)[711200][属性:8][叠加:0][金币:0], 【表格】四级房屋升级令（赠）
	tNewTeamPet_Pack[3327158]["RewardItem"][1]["Attr"] = "0 1 3" -- UpgradeCert.(Class4)（赠）*1
	tNewTeamPet_Pack[3327158]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327158]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327158]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327159] = {}
	-- ===五级房屋升级令
	-- ===索引:tNewTeamPet_Pack[3327159]
	-- ===删除:3327159,1
	-- ===
	tNewTeamPet_Pack[3327159]["LogId"] = 12001747
	tNewTeamPet_Pack[3327159]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327159]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327159]["DeleteItem"][1]["Id"] = 3327159 -- 【库】UpgradeCert.(Class5)Box[属性:9]
	tNewTeamPet_Pack[3327159]["RewardItem"] = {}
	tNewTeamPet_Pack[3327159]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327159]["RewardItem"][1]["Id"] = 3001548 -- UpgradeCert.(Class5)[3001548][属性:9][叠加:1][金币:0], 【表格】五级房屋升级令（赠）
	tNewTeamPet_Pack[3327159]["RewardItem"][1]["Attr"] = "0 1" -- UpgradeCert.(Class5)*1
	tNewTeamPet_Pack[3327159]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327159]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327159]["RewardEffect"]["Effect"] = "angelwing"


	tNewTeamPet_Pack[3327160] = {}
	-- ===500个6级房屋建材包
	-- ===索引:tNewTeamPet_Pack[3327160]
	-- ===删除:3327160,1
	-- ===
	tNewTeamPet_Pack[3327160]["LogId"] = 12001747
	tNewTeamPet_Pack[3327160]["DeleteItem"] = {}
	tNewTeamPet_Pack[3327160]["DeleteItem"][1] = {}
	tNewTeamPet_Pack[3327160]["DeleteItem"][1]["Id"] = 3327160 -- 【库】Class6HousePack[属性:9]
	tNewTeamPet_Pack[3327160]["RewardItem"] = {}
	tNewTeamPet_Pack[3327160]["RewardItem"][1] = {}
	tNewTeamPet_Pack[3327160]["RewardItem"][1]["Id"] = 3008100 -- Class6HousePack[3008100][属性:9][叠加:10000][金币:0], 【表格】6级房屋建材包（赠）
	tNewTeamPet_Pack[3327160]["RewardItem"][1]["Attr"] = "0 500" -- Class6HousePack*500（[错误]物品数量超10个）
	tNewTeamPet_Pack[3327160]["RewardEffect"] = {}
	tNewTeamPet_Pack[3327160]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewTeamPet_Pack[3327160]["RewardEffect"]["Effect"] = "angelwing"



	
	
-- local tNewTeamPet_ReturnReward = {}
	-- -- ===1级混元丹回收
	-- -- ===索引:tNewTeamPet_ReturnReward[3326963]
	-- -- ===删除:3326963,1
	-- -- ===
	-- tNewTeamPet_ReturnReward[3326963] = {}
	-- tNewTeamPet_ReturnReward[3326963]["LogId"] = 12001747
	-- tNewTeamPet_ReturnReward[3326963]["DeleteItem"] = {}
	-- tNewTeamPet_ReturnReward[3326963]["DeleteItem"][1] = {}
	-- tNewTeamPet_ReturnReward[3326963]["DeleteItem"][1]["Id"] = 3326963 -- 【库】1级混元丹[属性:8]
	-- tNewTeamPet_ReturnReward[3326963]["RewardEMoney"] = {}
	-- tNewTeamPet_ReturnReward[3326963]["RewardEMoney"]["Value"] = 5 -- 天石, 【需求】5天石
	-- tNewTeamPet_ReturnReward[3326963]["RewardEMoney"]["NewEmoneyLog"] = "1000	1288"
	-- tNewTeamPet_ReturnReward[3326963]["RewardEffect"] = {}
	-- tNewTeamPet_ReturnReward[3326963]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewTeamPet_ReturnReward[3326963]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewTeamPet_ReturnReward[3326964] = {}
	-- -- ===2级混元丹回收
	-- -- ===索引:tNewTeamPet_ReturnReward[3326964]
	-- -- ===删除:3326964,1
	-- -- ===
	-- tNewTeamPet_ReturnReward[3326964]["LogId"] = 12001747
	-- tNewTeamPet_ReturnReward[3326964]["DeleteItem"] = {}
	-- tNewTeamPet_ReturnReward[3326964]["DeleteItem"][1] = {}
	-- tNewTeamPet_ReturnReward[3326964]["DeleteItem"][1]["Id"] = 3326964 -- 【库】2级混元丹[属性:8]
	-- tNewTeamPet_ReturnReward[3326964]["RewardEMoney"] = {}
	-- tNewTeamPet_ReturnReward[3326964]["RewardEMoney"]["Value"] = 25 -- 天石, 【需求】25天石
	-- tNewTeamPet_ReturnReward[3326964]["RewardEMoney"]["NewEmoneyLog"] = "1000	1288"
	-- tNewTeamPet_ReturnReward[3326964]["RewardEffect"] = {}
	-- tNewTeamPet_ReturnReward[3326964]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewTeamPet_ReturnReward[3326964]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewTeamPet_ReturnReward[3326965] = {}
	-- -- ===3级混元丹回收
	-- -- ===索引:tNewTeamPet_ReturnReward[3326965]
	-- -- ===删除:3326965,1
	-- -- ===
	-- tNewTeamPet_ReturnReward[3326965]["LogId"] = 12001747
	-- tNewTeamPet_ReturnReward[3326965]["DeleteItem"] = {}
	-- tNewTeamPet_ReturnReward[3326965]["DeleteItem"][1] = {}
	-- tNewTeamPet_ReturnReward[3326965]["DeleteItem"][1]["Id"] = 3326965 -- 【库】3级混元丹[属性:8]
	-- tNewTeamPet_ReturnReward[3326965]["RewardEMoney"] = {}
	-- tNewTeamPet_ReturnReward[3326965]["RewardEMoney"]["Value"] = 50 -- 天石, 【需求】50天石
	-- tNewTeamPet_ReturnReward[3326965]["RewardEMoney"]["NewEmoneyLog"] = "1000	1288"
	-- tNewTeamPet_ReturnReward[3326965]["RewardEffect"] = {}
	-- tNewTeamPet_ReturnReward[3326965]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewTeamPet_ReturnReward[3326965]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewTeamPet_ReturnReward[3326966] = {}
	-- -- ===4级混元丹回收
	-- -- ===索引:tNewTeamPet_ReturnReward[3326966]
	-- -- ===删除:3326966,1
	-- -- ===
	-- tNewTeamPet_ReturnReward[3326966]["LogId"] = 12001747
	-- tNewTeamPet_ReturnReward[3326966]["DeleteItem"] = {}
	-- tNewTeamPet_ReturnReward[3326966]["DeleteItem"][1] = {}
	-- tNewTeamPet_ReturnReward[3326966]["DeleteItem"][1]["Id"] = 3326966 -- 【库】4级混元丹[属性:8]
	-- tNewTeamPet_ReturnReward[3326966]["RewardEMoney"] = {}
	-- tNewTeamPet_ReturnReward[3326966]["RewardEMoney"]["Value"] = 250 -- 天石, 【需求】250天石
	-- tNewTeamPet_ReturnReward[3326966]["RewardEMoney"]["NewEmoneyLog"] = "1000	1288"
	-- tNewTeamPet_ReturnReward[3326966]["RewardEffect"] = {}
	-- tNewTeamPet_ReturnReward[3326966]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewTeamPet_ReturnReward[3326966]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewTeamPet_ReturnReward[3326967] = {}
	-- -- ===5级混元丹回收
	-- -- ===索引:tNewTeamPet_ReturnReward[3326967]
	-- -- ===删除:3326967,1
	-- -- ===
	-- tNewTeamPet_ReturnReward[3326967]["LogId"] = 12001747
	-- tNewTeamPet_ReturnReward[3326967]["DeleteItem"] = {}
	-- tNewTeamPet_ReturnReward[3326967]["DeleteItem"][1] = {}
	-- tNewTeamPet_ReturnReward[3326967]["DeleteItem"][1]["Id"] = 3326967 -- 【库】5级混元丹[属性:8]
	-- tNewTeamPet_ReturnReward[3326967]["RewardEMoney"] = {}
	-- tNewTeamPet_ReturnReward[3326967]["RewardEMoney"]["Value"] = 500 -- 天石, 【需求】500天石
	-- tNewTeamPet_ReturnReward[3326967]["RewardEMoney"]["NewEmoneyLog"] = "1000	1288"
	-- tNewTeamPet_ReturnReward[3326967]["RewardEffect"] = {}
	-- tNewTeamPet_ReturnReward[3326967]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewTeamPet_ReturnReward[3326967]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewTeamPet_ReturnReward[3326968] = {}
	-- -- ===6级混元丹回收
	-- -- ===索引:tNewTeamPet_ReturnReward[3326968]
	-- -- ===删除:3326968,1
	-- -- ===
	-- tNewTeamPet_ReturnReward[3326968]["LogId"] = 12001747
	-- tNewTeamPet_ReturnReward[3326968]["DeleteItem"] = {}
	-- tNewTeamPet_ReturnReward[3326968]["DeleteItem"][1] = {}
	-- tNewTeamPet_ReturnReward[3326968]["DeleteItem"][1]["Id"] = 3326968 -- 【库】6级混元丹[属性:8]
	-- tNewTeamPet_ReturnReward[3326968]["RewardEMoney"] = {}
	-- tNewTeamPet_ReturnReward[3326968]["RewardEMoney"]["Value"] = 1000 -- 天石, 【需求】1000天石
	-- tNewTeamPet_ReturnReward[3326968]["RewardEMoney"]["NewEmoneyLog"] = "1000	1288"
	-- tNewTeamPet_ReturnReward[3326968]["RewardEffect"] = {}
	-- tNewTeamPet_ReturnReward[3326968]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewTeamPet_ReturnReward[3326968]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewTeamPet_ReturnReward[3326969] = {}
	-- -- ===7级混元丹回收
	-- -- ===索引:tNewTeamPet_ReturnReward[3326969]
	-- -- ===删除:3326969,1
	-- -- ===
	-- tNewTeamPet_ReturnReward[3326969]["LogId"] = 12001747
	-- tNewTeamPet_ReturnReward[3326969]["DeleteItem"] = {}
	-- tNewTeamPet_ReturnReward[3326969]["DeleteItem"][1] = {}
	-- tNewTeamPet_ReturnReward[3326969]["DeleteItem"][1]["Id"] = 3326969 -- 【库】7级混元丹[属性:8]
	-- tNewTeamPet_ReturnReward[3326969]["RewardEMoney"] = {}
	-- tNewTeamPet_ReturnReward[3326969]["RewardEMoney"]["Value"] = 2500 -- 天石, 【需求】2500天石
	-- tNewTeamPet_ReturnReward[3326969]["RewardEMoney"]["NewEmoneyLog"] = "1000	1288"
	-- tNewTeamPet_ReturnReward[3326969]["RewardEffect"] = {}
	-- tNewTeamPet_ReturnReward[3326969]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewTeamPet_ReturnReward[3326969]["RewardEffect"]["Effect"] = "angelwing"




---------------------------------------------------------------逻辑部分
function NewTeamPet_AdopPet(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return
	end 
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	local nPrice = tNewTeamPet_Data["Price"]
	if nData1 >= 1 then -- 判断是否已经领养神兽
		return
	end 
	-- 判断是否购买了房屋
	--判断房屋等级
	local nHouseId = Get_UserHouseId()
	if nHouseId == 0 then 
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoHouse"])
		return
	end 
	if not User_CanPutMoney2Bag(-nPrice) then    -- 判断金币是否足够
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoPrice"])
		return
	end 
	if User_AddMoneyNew(-nPrice,12001699) then 
		Task_SetStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		
		Task_SetStatistic(nEventTypeLevel,nDataTypeLevel,1,1)
		Task_SetStcTimestamp(nEventTypeLevel,nDataTypeLevel,0)
		
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		
		local tBuyLog = tNewTeamPet_Log["EMonyeLog"]["BuyPet"]
		Sys_SaveEmoneyBuy(tBuyLog)
		User_TalkChannel2005(tNewTeamPet_Text["Sys_MsgBox"]["AdoptPet"])
	end 
end 

-- 判断是否已经领养神兽
function NewTeamPet_ChkAdopPet()
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return false
	end 
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		return false
	else
		return true
	end 
end 

function NewTeamPet_ChkAdopPetShop()
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityShopTime"]) then 
		return false
	end 
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		return false
	else
		return true
	end 
end 

function NewTeamPet_NPCLanLan(nNpcId)
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return 
	end
	-- if nData1 >= 1 then  -- 判断是否已经领养神兽
		User_OpenDialog(0,nNpcId)
	-- else
		-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- -- LinkNpcMain
	-- end 
end 

-- 普通训练
function NewTeamPet_OrdinaryTrain(nItemId)
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return 
	end
	if Get_UserTeamNumbers() < 1 then  -- 判断玩家是否组队（判断队伍人数）
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoTeam"])
		return
	end 
	if not User_IsTeamLeader() then     -- 判断当前玩家是否是队长
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoTeamLeader"])
		return
	end 
	-- 记录是否使用神兽驯养天书
	local nEventTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["EventType"]
	local nDataTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["DataType"]
	local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd)
	-- 记录是否使用混元丹 进行高级训练
	local nEventTypeSen = tNewTeamPet_Stc["SeniorTrain"]["EventType"]
	local nDataTypeSen = tNewTeamPet_Stc["SeniorTrain"]["DataType"]
	local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen)
	-- 记录神兽等级
	local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	-- 记录玩家当天第几次普通训练
	local nEventTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["EventType"]
	local nDataTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["DataType"]
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	local nGenId = tNewTeamPet_Data["GeneratorId"][nMapLev]
	local nMonsterId = tNewTeamPet_Data["MonsterId"][nDataLevel]
	local nUserMapId = Get_UserMapId()
	if nHouseId ~= nUserMapId then        -- 判断玩家是否在自己的房屋中，
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NotHouse"])
		return
	end 
	local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)  -- 获取队长房屋里的怪物数量
	--判断当前是否正在训练
	if nMonsterNum > 0 then     -- 判断队长房屋里的怪物数量
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["Training"])
		return
	end 
	if not Item_ChkMulItem(nItemId,nItemId,5) then
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoItem1"],"LinkNpcGossipFunc_New</N>25605</S>2-3")
		return
	end 
	if Task_StcInterval(nEventTypeOrdTiems,nDataTypeOrdTiems,1,4) then  --时间戳是否隔天
		Task_SetStatistic(nEventTypeOrdTiems,nDataTypeOrdTiems,0,1)     --隔天重置普通训练次数
		Task_SetStcTimestamp(nEventTypeOrdTiems,nDataTypeOrdTiems,0)
	end 
	local nDataOrdTiems = Get_UserStatisticValue(nEventTypeOrdTiems,nDataTypeOrdTiems)
	local nOrdTrainTimes = tNewTeamPet_Data["OrdTrainTimes"][nMapLev]
	if nDataOrdTiems >= nOrdTrainTimes then      -- 判断当日训练次数是否已经达到当前房屋等级的训练次数上限
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoTimes"])
		return
	end 
	local nPosX = tNewTeamPet_Data["MonsterPosXY"][nMapLev][1]
	local nPosY = tNewTeamPet_Data["MonsterPosXY"][nMapLev][2]
	if Monster_AddAndCount(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
		Task_SetStatistic(nEventTypeOrd,nDataTypeOrd,1,1)          -- 记录刷怪掩码
		Task_SetStcTimestamp(nEventTypeOrd,nDataTypeOrd,0)
		
		Task_SetStatistic(nEventTypeSen,nDataTypeSen,0,1)          -- 清除高级训练刷怪掩码 （怪物可能被其他玩家击杀）
		Task_SetStcTimestamp(nEventTypeSen,nDataTypeSen,0)
		User_TalkChannel2005(tNewTeamPet_Text["Sys_MsgBox"]["ReleasePet"])
	end 
end 

-- 高级训练
function NewTeamPet_SeniorTrain(nItemId,nNum)
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return 
	end
	if Get_UserTeamNumbers() < 1 then  -- 判断玩家是否组队（判断队伍人数）
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoTeam"])
		return
	end 
	if not User_IsTeamLeader() then     -- 判断当前玩家是否是队长
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoTeamLeader"])
		return
	end 
	local sItemIdName = Get_ItemtypeName(nItemId)
	
	-- 记录是否使用神兽驯养天书
	local nEventTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["EventType"]
	local nDataTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["DataType"]
	local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd)
	-- 记录是否使用混元丹 进行高级训练
	local nEventTypeSen = tNewTeamPet_Stc["SeniorTrain"]["EventType"]
	local nDataTypeSen = tNewTeamPet_Stc["SeniorTrain"]["DataType"]
	local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen)
	-- 记录神兽等级
	local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	-- 判断是否正处于训练中
	-- if nDataSen >= 1 or nDataOrd >= 1 then 
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	local nGenId = tNewTeamPet_Data["GeneratorId"][nMapLev]
	local nMonsterId = tNewTeamPet_Data["MonsterId"][nDataLevel]
	local nUserMapId = Get_UserMapId()
	if nHouseId ~= nUserMapId then        -- 判断玩家是否在自己的房屋中，
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NotHouse"])
		return
	end 
	local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)   -- 判断地图上怪物数量
	if nMonsterNum > 0 then 
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["Training"])
		return
	end 
	if not Item_ChkMulItem(nItemId,nItemId,5) then
		Sys_MsgBox(string.format(tNewTeamPet_Text["Sys_MsgBox"]["NoItem2"],sItemIdName),"LinkNpcGossipFunc_New</N>25605</S>2-3")
		return
	end 
	local nPosX = tNewTeamPet_Data["MonsterPosXY"][nMapLev][1]
	local nPosY = tNewTeamPet_Data["MonsterPosXY"][nMapLev][2]
	if Monster_AddAndCount(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
		Task_SetStatistic(nEventTypeSen,nDataTypeSen,nNum,1)          -- 记录刷怪掩码 记录使用了几级混元丹
		Task_SetStcTimestamp(nEventTypeSen,nDataTypeSen,0)
		Task_SetStatistic(nEventTypeOrd,nDataTypeOrd,0,1)          -- 清除低级训练刷怪掩码 （怪物可能被其他玩家击杀）
		Task_SetStcTimestamp(nEventTypeOrd,nDataTypeOrd,0)
		User_TalkChannel2005(tNewTeamPet_Text["Sys_MsgBox"]["ReleasePet"])
	end 
end 

-- 高级训练对白跳转
function NewTeamPet_SeniorTrainText(nNpcId,nItemId,nNum)
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return 
	end
	local sItemIdName = Get_ItemtypeName(nItemId)
	-- if not Item_ChkMulItem(nItemId,nItemId,5) then
		-- Sys_MsgBox(string.format(tNewTeamPet_Text["Sys_MsgBox"]["NoItem2"],sItemIdName),"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</S>2-3")
		-- return
	-- end 
	local nMaxEMoney = tNewTeamPet_Data["EMoneyMax"][nNum]
	local nMaxExp = tNewTeamPet_Data["SeniorTrainExp"][nNum]
	tNpcGossip[nNpcId]["Text251"] = string.format(tNewTeamPet_Text[nNpcId]["Text251"],nNum,nMaxEMoney,nMaxExp)
	tNpcGossip[nNpcId]["OptionFunc251"] = "NewTeamPet_SeniorTrain</N>" ..nItemId.. "</N>" ..nNum
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end 

-- 咕咕咕活动中对白
function NewTeamPet_NpcGuGuText()
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers() <= 1 then  -- 判断玩家是否组队（判断队伍人数）
	local nNum = Get_UserTeamNumbers()
		return NewTeamPet_SinglePersonText()
	end 
	local nTeamId = Get_UserTeamId(nUserId)
	if nTeamId ~= nil then 
		User_TeamExeFuncByTeamer(3,"NewTeamPet_GetTeamLeIdText",nUserId)
	end 
	return NewTeamPet_TeamLeaderText(nTeamId)
end
-- 对白获取队长id
function NewTeamPet_GetTeamLeIdText(nUserId)
	if not User_IsTeamLeader(nUserId) then 
		return
	end 
	local nTeamLeaUserId = nUserId
	local nTeamId = Get_UserTeamId(nTeamLeaUserId)
	-- NewTeamPet_TeamLeaderText(nTeamLeaUserId)
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1,nTeamLeaUserId)
	local nHouseId = Get_UserHouseId(nTeamLeaUserId)
	local nMapLev = Get_MapResLev(nHouseId)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		-- 记录神兽等级
		local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
		local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
		local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel,nTeamLeaUserId)
		-- 记录玩家当天第几次普通训练
		local nEventTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["EventType"]
		local nDataTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["DataType"]
		-- 记录神兽当前经验
		local nEventTypeExp = tNewTeamPet_Stc["PetExperience"]["EventType"]
		local nDataTypeExp = tNewTeamPet_Stc["PetExperience"]["DataType"]
		local nDataExp = Get_UserStatisticValue(nEventTypeExp,nDataTypeExp,nTeamLeaUserId)
		if Task_StcInterval(nEventTypeOrdTiems,nDataTypeOrdTiems,1,4,nTeamLeaUserId) then  --时间戳是否隔天
			Task_SetStatistic(nEventTypeOrdTiems,nDataTypeOrdTiems,0,1,nTeamLeaUserId)     --隔天重置普通训练次数
			Task_SetStcTimestamp(nEventTypeOrdTiems,nDataTypeOrdTiems,0,nTeamLeaUserId)
		end 
		local nDataOrdTiems = Get_UserStatisticValue(nEventTypeOrdTiems,nDataTypeOrdTiems,nTeamLeaUserId)
		local nTimes = tNewTeamPet_Data["OrdTrainTimes"][nMapLev] - nDataOrdTiems 
		local nExp
		if nDataLevel >= 15 then 
			nExp = 0 
		else
			nExp = tNewTeamPet_Data["PetExperience"][nDataLevel] - nDataExp
		end 
		tNewTeamPet_Data["DataTab"][nTeamId] = {}
		tNewTeamPet_Data["DataTab"][nTeamId][nTeamLeaUserId] = nData1
		tNewTeamPet_Data["LevelTab"][nTeamId] = {}
		tNewTeamPet_Data["LevelTab"][nTeamId][nTeamLeaUserId] = nDataLevel
		tNewTeamPet_Data["TImeTab"][nTeamId] = {}
		tNewTeamPet_Data["TImeTab"][nTeamId][nTeamLeaUserId] = nTimes
		tNewTeamPet_Data["ExpTab"][nTeamId] = {}
		tNewTeamPet_Data["ExpTab"][nTeamId][nTeamLeaUserId] = nExp
		tNewTeamPet_Data["LeaderId"][nTeamId] = nTeamLeaUserId
	end 
	
end 
-- 咕咕咕活动中显示队长对白
function NewTeamPet_TeamLeaderText(nTeamId)
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return false
	end 
	local nTeamLeaUserId = tNewTeamPet_Data["LeaderId"][nTeamId]
	local nData1 = tNewTeamPet_Data["DataTab"][nTeamId][nTeamLeaUserId]
	local nDataLevel = tNewTeamPet_Data["LevelTab"][nTeamId][nTeamLeaUserId]
	local nTimes = tNewTeamPet_Data["TImeTab"][nTeamId][nTeamLeaUserId]
	local nExp = tNewTeamPet_Data["ExpTab"][nTeamId][nTeamLeaUserId]

	if nData1 >= 1 then  -- 判断是否已经领养神兽
		tNpcGossip[25605]["Text133"] = string.format(tNewTeamPet_Text[25605]["Text133"],nTimes)
		tNpcGossip[25605]["Text134"] = string.format(tNewTeamPet_Text[25605]["Text134"],nDataLevel)
		tNpcGossip[25605]["Text135"] = string.format(tNewTeamPet_Text[25605]["Text135"],nExp)
		return true
	else
		return false
	end 
end 
-- 咕咕咕活动中单人组队或者未组队对白显示
function NewTeamPet_SinglePersonText()
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		-- 记录神兽等级
		local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
		local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
		local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
		-- 记录玩家当天第几次普通训练
		local nEventTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["EventType"]
		local nDataTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["DataType"]
		-- 记录神兽当前经验
		local nEventTypeExp = tNewTeamPet_Stc["PetExperience"]["EventType"]
		local nDataTypeExp = tNewTeamPet_Stc["PetExperience"]["DataType"]
		local nDataExp = Get_UserStatisticValue(nEventTypeExp,nDataTypeExp)
		if Task_StcInterval(nEventTypeOrdTiems,nDataTypeOrdTiems,1,4) then  --时间戳是否隔天
			Task_SetStatistic(nEventTypeOrdTiems,nDataTypeOrdTiems,0,1)     --隔天重置普通训练次数
			Task_SetStcTimestamp(nEventTypeOrdTiems,nDataTypeOrdTiems,0)
		end 
		local nDataOrdTiems = Get_UserStatisticValue(nEventTypeOrdTiems,nDataTypeOrdTiems)
		local nTimes = tNewTeamPet_Data["OrdTrainTimes"][nMapLev] - nDataOrdTiems 
		local nExp
		if nDataLevel >= 15 then 
			nExp = 0 
		else
			nExp = tNewTeamPet_Data["PetExperience"][nDataLevel] - nDataExp
		end 
		if nData1 >= 1 then  -- 判断是否已经领养神兽
		tNpcGossip[25605]["Text133"] = string.format(tNewTeamPet_Text[25605]["Text133"],nTimes)
		tNpcGossip[25605]["Text134"] = string.format(tNewTeamPet_Text[25605]["Text134"],nDataLevel)
		tNpcGossip[25605]["Text135"] = string.format(tNewTeamPet_Text[25605]["Text135"],nExp)
		return true
	else
		return false
	end 
	end 
end 


-- 怪物死亡触发
function NewTeamPet_DieMonster(nMonsterId)
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)        -- 怪物数量-1
	-- Sys_SetTempData(1,nUserMapId,nMonsterId,0)       -- 怪物数量置0
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers() < 1 then  -- 判断玩家是否组队（判断队伍人数）
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoTeam"])           -- 未组队提示
		return
	end 
	if Get_UserTeamNumbers() == 1 then  -- 判断玩家是否组队（判断队伍人数）
		NewTeamPet_TeamReward(nUserId)
		return
	end 
	local nTeamId = Get_UserTeamId(nUserId)
	if nTeamId ~= nil then 
		User_TeamExeFuncByTeamer(3,"NewTeamPet_GetTeamLeaderUserId",nUserId)
	end

	
end 

-- 杀怪获取队长id
function NewTeamPet_GetTeamLeaderUserId(nUserId)
	Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["Reward"],nil,nil,nUserId)
	if not User_IsTeamLeader(nUserId) then 
		return
	end 
	local nTeamLeaUserId = nUserId
	NewTeamPet_TeamReward(nTeamLeaUserId)
end 

-- 队长获得奖励
function NewTeamPet_TeamReward(nUserId)
	local nHouseId = Get_UserHouseId(nUserId)
	local nMapLev = Get_MapResLev(nHouseId)
	local nUserMapId = Get_UserMapId(nUserId)
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return 
	end
	if nHouseId ~= nUserMapId then    -- 不在自己的房屋无法获得奖励
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NotHouse"],nil,nil,nUserId)
		return
	end 
	-- 记录是否使用神兽驯养天书
	local nEventTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["EventType"]
	local nDataTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["DataType"]
	local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd,nUserId)
	-- 记录是否使用混元丹 进行高级训练
	local nEventTypeSen = tNewTeamPet_Stc["SeniorTrain"]["EventType"]
	local nDataTypeSen = tNewTeamPet_Stc["SeniorTrain"]["DataType"]
	local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen,nUserId)
	-- 记录神兽等级
	local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel,nUserId)
	-- 记录神兽当前经验
	local nEventTypeExp = tNewTeamPet_Stc["PetExperience"]["EventType"]
	local nDataTypeExp = tNewTeamPet_Stc["PetExperience"]["DataType"]
	local nDataExp = Get_UserStatisticValue(nEventTypeExp,nDataTypeExp,nUserId)
	local nSpace = 5
	if nDataOrd >= 1 then  -- 使用神兽驯养天书训练神兽
		nSpace = 1
		Task_SetStatistic(nEventTypeOrd,nDataTypeOrd,0,1,nUserId)          -- 清空刷怪掩码
		Task_SetStcTimestamp(nEventTypeOrd,nDataTypeOrd,0,nUserId)
		if not User_CheckLeftSpace(nSpace,nUserId) then     -- 背包空间不足
			Sys_MsgBox(string.format(tNewTeamPet_Text["Sys_MsgBox"]["NoSpacePet"],nSpace),nil,nil,nUserId)
			return
		end
		local nDelItemId = tNewTeamPet_Data["OrdTrainId"]
		if not Item_ChkMulItem(nDelItemId,nDelItemId,5,nil,nil,nUserId) then
			Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoItem1"],nil,nil,nUserId)
			return
		end 
		-- 记录玩家当天第几次普通训练
		local nEventTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["EventType"]
		local nDataTypeOrdTiems = tNewTeamPet_Stc["OrdinaryTrainTimes"]["DataType"]
		if Task_StcInterval(nEventTypeOrdTiems,nDataTypeOrdTiems,1,4,nUserId) then  --时间戳是否隔天
			Task_SetStatistic(nEventTypeOrdTiems,nEventTypeOrdTiems,0,1,nUserId)     --隔天重置普通训练次数
			Task_SetStcTimestamp(nEventTypeOrdTiems,nEventTypeOrdTiems,0,nUserId)
		end 
		local nDataOrdTiems = Get_UserStatisticValue(nEventTypeOrdTiems,nDataTypeOrdTiems,nUserId)
		local nOrdTrainTimes = tNewTeamPet_Data["OrdTrainTimes"][nMapLev]
		if nDataOrdTiems >= nOrdTrainTimes then      -- 判断当日训练次数是否已经达到当前房屋等级的训练次数上限
			Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["NoTimes"],nil,nil,nUserId)
			return
		end 
		if Item_DelMulItem(nDelItemId,nDelItemId,5,nil,nil,nUserId) then
			local tTextLog = string.format(tNewTeamPet_Log["DeleteLog"],nDelItemId,5)
			Sys_SaveActionFestivalLog(tTextLog,nUserId)
			local tEMoneyLog = tNewTeamPet_Log["EMonyeLog"][nDelItemId]
			Sys_SaveEmoneyBuy(tEMoneyLog,nUserId)
			
			Task_AddStatistic(nEventTypeOrdTiems,nDataTypeOrdTiems,1,1,nUserId)          -- 记录普通训练次数
			Task_SetStcTimestamp(nEventTypeOrdTiems,nDataTypeOrdTiems,0,nUserId)
			local nNewDataExp = nDataExp + 10000 
			if nDataLevel >= 15 then  -- 等级满级后不再获得经验
				nNewDataExp = 0 
			end 
			if nNewDataExp >= tNewTeamPet_Data["PetExperience"][nDataLevel] then     -- 判断神兽是否升级
				nNewDataExp = nNewDataExp - tNewTeamPet_Data["PetExperience"][nDataLevel]
				Task_AddStatistic(nEventTypeLevel,nDataTypeLevel,1,1,nUserId)          -- 神兽等级+1
				Task_SetStcTimestamp(nEventTypeLevel,nDataTypeLevel,0,nUserId)
				-- local nItemId = tNewTeamPet_Data["LevelPack"][nDataLevel+1]
				-- RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[nItemId])
				--邮件发奖
				NewTeamPet_Mail(nUserId)
			end 
			Task_SetStatistic(nEventTypeExp,nDataTypeExp,nNewDataExp,1,nUserId)          -- 重置当前经验
			Task_SetStcTimestamp(nEventTypeExp,nDataTypeExp,0,nUserId)
			-- 给奖励
			RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[1],nUserId)
		end 
	end 
	if nDataSen >= 1 then 
		Task_SetStatistic(nEventTypeSen,nDataTypeSen,0,1,nUserId)          -- 清空刷怪掩码
		Task_SetStcTimestamp(nEventTypeSen,nDataTypeSen,0,nUserId)
		if not User_CheckLeftSpace(nSpace,nUserId) then     -- 背包空间不足
			Sys_MsgBox(string.format(tNewTeamPet_Text["Sys_MsgBox"]["NoSpacePet"],nSpace),nil,nil,nUserId)
			return
		end
		local nDelItemId = tNewTeamPet_Data["SeniorTrainId"][nDataSen]
		-- local sItemIdName = Get_ItemName(nDelItemId)
		local sItemIdName = Get_ItemtypeName(nDelItemId)
		if not Item_ChkMulItem(nDelItemId,nDelItemId,5,nil,nil,nUserId) then
			Sys_MsgBox(string.format(tNewTeamPet_Text["Sys_MsgBox"]["NoItem2"],sItemIdName),nil,nil,nUserId)
			return
		end
		if Item_DelMulItem(nDelItemId,nDelItemId,5,nil,nil,nUserId) then
			local tTextLog = string.format(tNewTeamPet_Log["DeleteLog"],nDelItemId,5)
			Sys_SaveActionFestivalLog(tTextLog,nUserId)
			local tEMoneyLog = tNewTeamPet_Log["EMonyeLog"][nDelItemId]
			Sys_SaveEmoneyBuy(tEMoneyLog,nUserId)
			local nGlobalId = tNewTeamPet_Data["GlocalId"]
			local nGloData = Get_SysDynaGlobalData(nGlobalId,0)
			local nEMoney = tNewTeamPet_Data["SeniorTrainEMoney"][nDataSen]
			local nNewGloData = nGloData + nEMoney
			Sys_SetSynaGlobalData0(nGlobalId,nNewGloData)  -- 将魔兽之心的价格加入奖池
			local nAddExp = tNewTeamPet_Data["SeniorTrainExp"][nDataSen]
			local nNewDataExp = nDataExp + nAddExp 
			if nDataLevel >= 15 then  -- 等级满级后不再获得经验
				nNewDataExp = 0 
			end 
			if nNewDataExp >= tNewTeamPet_Data["PetExperience"][nDataLevel] then     -- 判断神兽是否升级
				nNewDataExp = nNewDataExp - tNewTeamPet_Data["PetExperience"][nDataLevel]
				Task_AddStatistic(nEventTypeLevel,nDataTypeLevel,1,1,nUserId)          -- 神兽等级+1
				Task_SetStcTimestamp(nEventTypeLevel,nDataTypeLevel,0,nUserId)
				-- local nItemId = tNewTeamPet_Data["LevelPack"][nDataLevel+1]
				-- RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[nItemId])
				--邮件发奖
				NewTeamPet_Mail(nUserId)
			end 
			Task_SetStatistic(nEventTypeExp,nDataTypeExp,nNewDataExp,1,nUserId)          -- 重置当前经验
			Task_SetStcTimestamp(nEventTypeExp,nDataTypeExp,0,nUserId)
			local nItemId = tNewTeamPet_Data["SeniorTrainId"][nDataSen]
			local nFlag,tNewPetAward = Probabil_RandomAward(tNewTeamPet_Pack,nItemId)
			-- if tNewPetAward[1]["tAward"][1]["RewardEMoney"] ~= nil then 
				local nRandonItemId = tNewPetAward[1]["tAward"][1]["RewardItem"][1]["Id"]
				-- local nAddEMoney = tNewPetAward[1]["tAward"][1]["RewardEMoney"]["Value"]
				local nAddEMoney = tNewTeamPet_Data["RewardEMoney"][nRandonItemId]
				if (nNewGloData - nAddEMoney) < 0 then   -- 奖池减去玩家将获得的天石 要大于0
					RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[nItemId][6],nUserId)
					local tFeatherLog = tNewTeamPet_Log["EMonyeLog"]["Feather"]
					Sys_SaveEmoneyBuy(tFeatherLog,nUserId)
				else
					nNewGloData = nNewGloData - nAddEMoney
					Sys_SetSynaGlobalData0(nGlobalId,nNewGloData)  -- 将魔兽之心的天石奖励扣除奖池
					RewardTemplate_UseItemAndMsg(tNewPetAward[1]["tAward"][1],nUserId)
					local tCPsLog = string.format(tNewTeamPet_Log["EMonyeLog"]["CPs"],-nAddEMoney,-nAddEMoney)
					Sys_SaveEmoneyBuy(tCPsLog,nUserId)
					if tNewPetAward[1]["tAward"][1]["Num"] ~= nil and tNewPetAward[1]["tAward"][1]["Num"] == 1 then 
						local sName = Get_UserName()
						local nMaxReward = tNewTeamPet_Data["EMoneyMax"][nDataSen]
						Sys_SystemBroadcast(string.format(tNewTeamPet_Text["Notice"][1],sName,nMaxReward))
					end 
				end 
			-- end 
		end 
	end 
end 

-- 进入房屋创建NPC和怪物
function NewTeamPet_CreatNpc()
	local nHouseId = Get_UserHouseId()        -- 玩家房屋ID
	local nMapLev = Get_MapResLev(nHouseId)   -- 玩家房屋等级
	local nUserMapId = Get_UserMapId()
	local nNpcNumGR = Get_NpcCountByName(tNewPetsCultivate_Text["NpcName"][2])
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		if nNpcNumGR >= 1 then 
			Npc_DelDynaNpc(nHouseId,"name",tNewPetsCultivate_Text["NpcName"][2])
		end 
	end 
	local nNpcNum2 = Get_NpcCountByName(tNewTeamPet_Text["NpcName"])
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		if nNpcNum2 >= 1 then 
			Npc_DelDynaNpc(nHouseId,"name",tNewTeamPet_Text["NpcName"])
			return
		end 
	end 
		
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return 
	end 
	-- 判断地图上是否有NPC 没有则创建
	-- Npc_DelDynaNpc(nMapId,sField,sData)
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 <= 0 then 
		return
	end 
	if nHouseId == nUserMapId then 
		local nNpcNum2 = Get_NpcCountByName(tNewTeamPet_Text["NpcName"])
		if nNpcNum2 <= 0 then 
			local sName = tNewTeamPet_Data["Npc"][2]["Name"]
			local nNpcType = tNewTeamPet_Data["Npc"][2]["Type"]
			local nSort = tNewTeamPet_Data["Npc"][2]["Sort"]
			local nLookFace = tNewTeamPet_Data["Npc"][2]["Lookface"]
			local nTask0 = tNewTeamPet_Data["Npc"][2]["nTask0"]
			local nPosX = tNewTeamPet_Data["NPCPosXY"][nMapLev][2][1]
			local nPosY = tNewTeamPet_Data["NPCPosXY"][nMapLev][2][2]
			Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,0,nHouseId,nPosX,nPosY,0,0,0,nTask0)
		end 
		
		-- 记录是否使用神兽驯养天书
		local nEventTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["EventType"]
		local nDataTypeOrd = tNewTeamPet_Stc["OrdinaryTrain"]["DataType"]
		local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd)
		-- 记录是否使用混元丹 进行高级训练
		local nEventTypeSen = tNewTeamPet_Stc["SeniorTrain"]["EventType"]
		local nDataTypeSen = tNewTeamPet_Stc["SeniorTrain"]["DataType"]
		local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen)
		-- 判断是否正处于训练中
		if nDataSen >= 1 or nDataOrd >= 1 then 
			-- 记录神兽等级
			local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
			local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
			local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
			local nMonsterId = tNewTeamPet_Data["MonsterId"][nDataLevel]
			local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)   -- 判断地图上怪物数量
			-- if nMonsterNum <= 0 then 
				-- local nMapLev = Get_MapResLev(nHouseId)
				-- local nPosX = tNewTeamPet_Data["MonsterPosXY"][nMapLev][1]
				-- local nPosY = tNewTeamPet_Data["MonsterPosXY"][nMapLev][2]
				-- -- if Monster_AddMonster(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
				-- Monster_AddAndCount(nHouseId,nPosX,nPosY,nGenId,nMonsterId)   -- 指定位置刷怪
			-- end 
		end 
	end 
end 

-- 邮件发奖
function NewTeamPet_Mail(nUserId)
	-- 记录神兽等级
	local nEventTypeLevel = tNewTeamPet_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewTeamPet_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel,nUserId)
	if nDataLevel > 15 or nDataLevel < 2 then 
		return
	end 
	local sSender = tNewTeamPet_Text["Mail"]["Name"]
	local sTitle = tNewTeamPet_Text["Mail"]["ZhuTi"]
	local sContent = tNewTeamPet_Text["Mail"]["NeiRong"]
	local nMailActionId = tNewTeamPet_Data["Malil"]["ActionId"][nDataLevel]
	Sys_SendMail(nUserId,0,0,nMailActionId,0,7,sSender,sTitle,sContent)
	
end

-- 删除NPC
function NewTeamPet_DelNpc()
	local nHouseId = Get_UserHouseId()
	local nUserMapId = Get_UserMapId()
	-- local nNpcNum1 = Get_NpcCountByName(tNewTeamPet_Text["NpcName"][1])
	local nNpcNum2 = Get_NpcCountByName(tNewTeamPet_Text["NpcName"])
	if nHouseId ~= nUserMapId then 
		return
	end 
	-- if nNpcNum1 >= 1 then 
		-- Npc_DelDynaNpc(nHouseId,"name",tNewTeamPet_Text["NpcName"][1])
	-- end 
	if nNpcNum2 >= 1 then 
		Npc_DelDynaNpc(nHouseId,"name",tNewTeamPet_Text["NpcName"])
	end 
end 

function NewTeamPet_LinkNpc(nNpcId)
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return 
	end
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers() < 1 then  -- 判断玩家是否组队（判断队伍人数）
		if nData1 >= 1 then  -- 判断是否已经领养神兽
			LinkNpcGossipFunc_New(nNpcId,"1-3")
		else
			LinkNpcGossipFunc_New(nNpcId,"1-4")
		end 
	else
		if User_IsTeamLeader() then   -- 判断当前玩家是否是队长
			if nData1 >= 1 then  -- 判断是否已经领养神兽
				LinkNpcGossipFunc_New(nNpcId,"1-3")
			else
				LinkNpcGossipFunc_New(nNpcId,"1-4")
			end 
		else
			local nTeamId = Get_UserTeamId(nUserId)
			if nTeamId ~= nil then 
				User_TeamExeFuncByTeamer(3,"NewTeamPet_ChkTeamLeIdLY",nUserId)
			end 
			local nTeamLeaUserId = tNewTeamPet_Data["LeaderId"][nTeamId] 
			local nLeaData1 = tNewTeamPet_Data["DataTab"][nTeamId][nTeamLeaUserId]
			if nLeaData1 >= 1 then  -- 判断队长是否已经领养神兽
				LinkNpcGossipFunc_New(nNpcId,"1-3")
			else
				LinkNpcGossipFunc_New(nNpcId,"4-1")
			end 
		end 
	end 
end 
-- 判断队长领养情况
function NewTeamPet_ChkTeamLeIdLY(nUserId)
	if not User_IsTeamLeader(nUserId) then 
		return
	end 
	local nTeamLeaUserId = nUserId
	local nTeamId = Get_UserTeamId(nTeamLeaUserId)
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1,nTeamLeaUserId)
	tNewTeamPet_Data["DataTab"][nTeamId] = {}
	tNewTeamPet_Data["DataTab"][nTeamId][nTeamLeaUserId] = nData1
	tNewTeamPet_Data["LeaderId"][nTeamId]  = nTeamLeaUserId
end 


function NewTeamPet_RewardPack(nItemId,nNum)
	local bJudge = TermsOfUse_Main(nItemId,tNewTeamPet_Pack[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[nItemId][nNum])
end 

function NewTeamPet_RewardTimesPack(nItemId,nNum)
	local nEventTypePackTimes = tNewTeamPet_Stc["RewardPackTimes"]["EventType"]
	local nDataTypePackTimes = tNewTeamPet_Stc["RewardPackTimes"]["DataType"]
	if Task_StcInterval(nEventTypePackTimes,nDataTypePackTimes,1,4) then  --时间戳是否隔天
		Task_SetStatistic(nEventTypePackTimes,nDataTypePackTimes,0,1)     --隔天重置开启数量
		Task_SetStcTimestamp(nEventTypePackTimes,nDataTypePackTimes,0)
	end 
	local nDataPackTimes = Get_UserStatisticValue(nEventTypePackTimes,nDataTypePackTimes)
	if nDataPackTimes >= 5 then 
		Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["PackTimeMax"])
		return
	end 
	local bJudge = TermsOfUse_Main(nItemId,tNewTeamPet_Pack[nItemId])
	if not bJudge then
		return
	end
	if RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[nItemId][nNum]) then 
		Task_AddStatistic(nEventTypePackTimes,nDataTypePackTimes,1,1)
	end 
end 

-- 片区怪物掉落
function NewTeamPet_MonsterReward()
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return
	end 
	-- 记录玩家当天片区怪物掉落神兽驯养天书数量
	local nEventTypeMonRewNum = tNewTeamPet_Stc["MonsterRewNum"]["EventType"]
	local nDataTypeMonRewNum = tNewTeamPet_Stc["MonsterRewNum"]["DataType"]
	if Task_StcInterval(nEventTypeMonRewNum,nDataTypeMonRewNum,1,4) then  --时间戳是否隔天
		Task_SetStatistic(nEventTypeMonRewNum,nDataTypeMonRewNum,0,1)     --隔天重置掉落数量
		Task_SetStcTimestamp(nEventTypeMonRewNum,nDataTypeMonRewNum,0)
	end 
	local nSpace = 1
	if not User_CheckLeftSpace(nSpace) then     -- 背包空间不足
		return
	end
	local nDataMonRewNum = Get_UserStatisticValue(nEventTypeMonRewNum,nDataTypeMonRewNum)
	if nDataMonRewNum >= 15 then 
		-- Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["GetMax"])
		return
	end 
	local nFlag,tAward = Probabil_RandomAward(tNewTeamPet_Random["MonsterReward"],1)
	local nItemNum = tAward[1]["tAward"][1]["Item_1"]
	if nItemNum == 2 then 
		Task_AddStatistic(nEventTypeMonRewNum,nDataTypeMonRewNum,1,1) 
		Task_SetStcTimestamp(nEventTypeMonRewNum,nDataTypeMonRewNum,0)
		RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[2])
		-- local nNewDataMonRewNum = Get_UserStatisticValue(nEventTypeMonRewNum,nDataTypeMonRewNum)
		if nDataMonRewNum == 14 then 
			Sys_MsgBox(tNewTeamPet_Text["Sys_MsgBox"]["GetMax"])
		end 
	end 
end 

-- 物品寻路 过期删除
function NewTeamPet_FindNpc(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		local tTextLog = string.format(tNewTeamPet_Log["DeleteLog"],nItemId,nItemNum)
		if Item_DelMulItem(nItemId,nItemId,nItemNum) then 
			Sys_SaveActionFestivalLog(tTextLog)
		end 
		return
	end 
	NpcPosition_PathFind(tNewTeamPet_Data["NpcId"][1])
end 

function NewTeamPet_FindNpc2(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NewTeamPet"]["ActivityShopTime"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewTeamPet"]["ActivityShopTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		local tTextLog = string.format(tNewTeamPet_Log["DeleteLog"],nItemId,nItemNum)
		if Item_DelMulItem(nItemId,nItemId,nItemNum) then 
			Sys_SaveActionFestivalLog(tTextLog)
		end 
		return
	end 
	NpcPosition_PathFind(tNewTeamPet_Data["NpcId"][1])
end 
-- 物品寻路 过期返回半价
function NewTeamPet_ReturnMoney(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"]) then 
		local bJudge = TermsOfUse_Main(nItemId,tNewTeamPet_ReturnReward[nItemId])
		if not bJudge then
			return
		end
		RewardTemplate_UseItemAndMsg(tNewTeamPet_ReturnReward[nItemId])
		return
	end 
	NpcPosition_PathFind(tNewTeamPet_Data["NpcId"][1])
end 

-- function NewTeamPet_MapId()
	-- local nMapId = Get_UserHouseId()
	-- local nUserId = Get_UserId()
	-- User_TalkChannel2005("nMapId =" ..nMapId)
	-- User_TalkChannel2005("nUserId =" ..nUserId)
-- end 

--------------------------------------------------对白部分
--菲奥娜
tNpcFace[5785] = 230
tNpcGossip[25603] = tNpcGossip[25603] or DefaultNpc:new{}
tNpcGossip[25603]["OptionHidden"] = 1
tNpcGossip[25603]["DialogueText"] = tNewTeamPet_Text[25603]
--活动前
tNpcGossip[25603]["Text1-1"] = {111,112,113,114}
tNpcGossip[25603]["tOption1-1"] = {111}
tNpcGossip[25603]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NewTeamPet"]["ActivityShopTime"])
end
--活动后
tNpcGossip[25603]["Text1-2"] = {121}
tNpcGossip[25603]["tOption1-2"] = {121}
tNpcGossip[25603]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["NewTeamPet"]["ActivityShopTime"])
end
--活动中  ====未领养对白
tNpcGossip[25603]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[25603]["tOption1-3"] = {131,132,133,134}
tNpcGossip[25603]["ChkFunc1-3"] = function ()
	return NewTeamPet_ChkAdopPetShop()
end
tNpcGossip[25603]["OptionPoint131"] = "2-1"   -- 领养神兽
tNpcGossip[25603]["OptionChkFunc131"] = function ()
	return NewTeamPet_ChkAdopPet()
end 
tNpcGossip[25603]["OptionPoint132"] = "2-3"  -- 查看神兽训练规则
tNpcGossip[25603]["OptionFunc133"] = "User_OpenExchangeShop</N>25603"    --打开兑换商店
tNpcGossip[25603]["OptionPoint134"] = "3-1"

-- 【活动中】     ====领养后对白
tNpcGossip[25603]["Text1-4"] = {141,142,143,144}
tNpcGossip[25603]["tOption1-4"] = {141,142,143}
tNpcGossip[25603]["ChkFunc1-4"] = function ()
	if not Sys_ChkFullTime(tActivityTime["NewTeamPet"]["ActivityShopTime"]) then 
		return false
	end 
	local nEventType1 = tNewTeamPet_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewTeamPet_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		return true
	else
		return false
	end 
end
tNpcGossip[25603]["OptionPoint141"] = "2-3"  -- 查看神兽训练规则
tNpcGossip[25603]["OptionFunc142"] = "User_OpenExchangeShop</N>25603"    --打开兑换商店
tNpcGossip[25603]["OptionPoint143"] = "3-1"  -- 查看神兽升阶奖励

-- 接1、领养神兽
tNpcGossip[25603]["Text2-1"] = {211}
tNpcGossip[25603]["tOption2-1"] = {211,212}
tNpcGossip[25603]["OptionFunc211"] = "NewTeamPet_AdopPet</N>25603" -- 确认领养
-- 接1-1、确认领养
tNpcGossip[25603]["Text2-2"] = {221}
tNpcGossip[25603]["tOption2-2"] = {221,222}

-- 接 查看神兽训练规则
tNpcGossip[25603]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[25603]["tOption2-3"] = {231}

-- 接3、查看神兽升阶奖励
tNpcGossip[25603]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
tNpcGossip[25603]["tOption3-1"] = {311,312}
tNpcGossip[25603]["OptionPoint311"] = "4-1"  -- 查看11至15阶升阶奖励
-- 接3-1、查看11至15阶升阶奖励
tNpcGossip[25603]["Text4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[25603]["tOption4-1"] = {411,412}
tNpcGossip[25603]["OptionPoint411"] = "3-1"  -- 查看神兽升阶奖励

-- 踏云麒麟
tNpcFace[5786] = 2662
tNpcGossip[25605] = tNpcGossip[25605] or DefaultNpc:new{}
tNpcGossip[25605]["OptionHidden"] = 1
tNpcGossip[25605]["DialogueText"] = tNewTeamPet_Text[25605]
--活动前
tNpcGossip[25605]["Text1-1"] = {111,112,113,114}
tNpcGossip[25605]["tOption1-1"] = {111}
tNpcGossip[25605]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"])
end
--活动后
tNpcGossip[25605]["Text1-2"] = {121}
tNpcGossip[25605]["tOption1-2"] = {121}
tNpcGossip[25605]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["NewTeamPet"]["ActivityTime"])
end
--活动中  ==已领养
tNpcGossip[25605]["Text1-3"] = {131,132,133,134,135,136,139,137,138}
tNpcGossip[25605]["tOption1-3"] = {131,132,133,134}
tNpcGossip[25605]["ChkFunc1-3"] = function ()
	return NewTeamPet_NpcGuGuText()
end
-- tNpcGossip[25605]["OptionFunc131"] = "NewTeamPet_OrdinaryTrain</N>3326961"
tNpcGossip[25605]["OptionPoint131"] = "2-1"
tNpcGossip[25605]["OptionPoint132"] = "2-4"
tNpcGossip[25605]["OptionPoint133"] = "2-3"
-- tNpcGossip[25605]["OptionFunc134"] = "NewTeamPet_DelNpc"
tNpcGossip[25605]["OptionPoint134"] = "3-1"
-- tNpcGossip[25605]["OptionFunc134"] = "NewTeamPet_MonsterReward"

--活动中  ==未领养
tNpcGossip[25605]["Text1-4"] = {141,142}
tNpcGossip[25605]["tOption1-4"] = {141}
-- tNpcGossip[25605]["ChkFunc1-4"] = function ()
	-- return NewTeamPet_ChkAdopPet()
-- end

-- 接1、普通训练
tNpcGossip[25605]["Text2-1"] = {211}
tNpcGossip[25605]["tOption2-1"] = {211,212}
tNpcGossip[25605]["OptionFunc211"] = "NewTeamPet_OrdinaryTrain</N>3326961"

-- 接3、查看神兽训练规则
tNpcGossip[25605]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[25605]["tOption2-3"] = {231}
-- 高级训练
tNpcGossip[25605]["Text2-4"] = {241}
tNpcGossip[25605]["tOption2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[25605]["OptionFunc241"] = "NewTeamPet_SeniorTrainText</N>25605</N>3326963</N>1"
tNpcGossip[25605]["OptionFunc242"] = "NewTeamPet_SeniorTrainText</N>25605</N>3326964</N>2"
tNpcGossip[25605]["OptionFunc243"] = "NewTeamPet_SeniorTrainText</N>25605</N>3326965</N>3"
tNpcGossip[25605]["OptionFunc244"] = "NewTeamPet_SeniorTrainText</N>25605</N>3326966</N>4"
tNpcGossip[25605]["OptionFunc245"] = "NewTeamPet_SeniorTrainText</N>25605</N>3326967</N>5"
tNpcGossip[25605]["OptionFunc246"] = "NewTeamPet_SeniorTrainText</N>25605</N>3326968</N>6"
tNpcGossip[25605]["OptionFunc247"] = "NewTeamPet_SeniorTrainText</N>25605</N>3326969</N>7"
-- 【二次确认】
tNpcGossip[25605]["Text2-5"] = {251}
tNpcGossip[25605]["tOption2-5"] = {251,252}

tNpcGossip[25605]["Text3-1"] = {311}
tNpcGossip[25605]["tOption3-1"] = {311,312}
tNpcGossip[25605]["OptionFunc311"] = "NewTeamPet_DelNpc"
-- 队长未领养时队员对白
tNpcGossip[25605]["Text4-1"] = {411}
tNpcGossip[25605]["tOption4-1"] = {411}

-- 养成时装礼盒
tItemFace[3327050] = 951
tItem[3327050] = tItem[3327050] or {}
tItem[3327050]["DialogueText"] = tNewTeamPet_Text[3327050]
tItem[3327050]["Text1-1"] = {111,112}
tItem[3327050]["tOption1-1"] = {111,112,113}
tItem[3327050]["OptionFunc111"] = "NewTeamPet_RewardPack</N>3327050</N>1"
tItem[3327050]["OptionFunc112"] = "NewTeamPet_RewardPack</N>3327050</N>2"
tItem[3327050]["OptionFunc113"] = "NewTeamPet_RewardPack</N>3327050</N>3"
-- 养成坐骑礼盒
tItemFace[3327051] = 950
tItem[3327051] = tItem[3327051] or {}
tItem[3327051]["DialogueText"] = tNewTeamPet_Text[3327051]
tItem[3327051]["Text1-1"] = {111}
tItem[3327051]["tOption1-1"] = {111,112,113}
tItem[3327051]["OptionFunc111"] = "NewTeamPet_RewardPack</N>3327051</N>1"
tItem[3327051]["OptionFunc112"] = "NewTeamPet_RewardPack</N>3327051</N>2"
tItem[3327051]["OptionFunc113"] = "NewTeamPet_RewardPack</N>3327051</N>3"
-- 麒麟成才礼盒
tItemFace[3327048] = 2663
tItem[3327048] = tItem[3327048] or {}
tItem[3327048]["DialogueText"] = tNewTeamPet_Text[3327048]
tItem[3327048]["Text1-1"] = {111}
tItem[3327048]["tOption1-1"] = {111,112,113}
tItem[3327048]["OptionFunc111"] = "NewTeamPet_RewardPack</N>3327048</N>1"
tItem[3327048]["OptionFunc112"] = "NewTeamPet_RewardPack</N>3327048</N>2"

-- 每日养成礼盒
tItemFace[3327031] = 2500
tItem[3327031] = tItem[3327031] or {}
tItem[3327031]["DialogueText"] = tNewTeamPet_Text[3327031]
tItem[3327031]["Text1-1"] = {111}
tItem[3327031]["tOption1-1"] = {111,112,113}
tItem[3327031]["OptionFunc111"] = "NewTeamPet_RewardTimesPack</N>3327031</N>1"
tItem[3327031]["OptionFunc112"] = "NewTeamPet_RewardTimesPack</N>3327031</N>2"
tItem[3327031]["OptionFunc113"] = "NewTeamPet_RewardTimesPack</N>3327031</N>3"


tItem[3327032] = tItem[3327032] or {}
tItem[3327032]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tNewTeamPet_Pack[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tNewTeamPet_Pack[nItemId])
end
tItem[3327033] = tItem[3327032] or {}
tItem[3327034] = tItem[3327032] or {}
tItem[3327035] = tItem[3327032] or {}
tItem[3327036] = tItem[3327032] or {}
tItem[3327037] = tItem[3327032] or {}
tItem[3327038] = tItem[3327032] or {}
tItem[3327039] = tItem[3327032] or {}
tItem[3327040] = tItem[3327032] or {}
tItem[3327041] = tItem[3327032] or {}
tItem[3327042] = tItem[3327032] or {}
tItem[3327043] = tItem[3327032] or {}
tItem[3327044] = tItem[3327032] or {}
tItem[3327045] = tItem[3327032] or {}
tItem[3327046] = tItem[3327032] or {}
tItem[3327047] = tItem[3327032] or {}
tItem[3327054] = tItem[3327032] or {}
tItem[3327055] = tItem[3327032] or {}

tItem[3327156] = tItem[3327032] or {}
tItem[3327157] = tItem[3327032] or {}
tItem[3327158] = tItem[3327032] or {}
tItem[3327159] = tItem[3327032] or {}
tItem[3327160] = tItem[3327032] or {}

tItem[3326963] = tItem[3326963] or {}
tItem[3326963]["Function"] = function(nItemId,sItemName)
	NewTeamPet_FindNpc(nItemId)
end
tItem[3326964] = tItem[3326963] or {}
tItem[3326965] = tItem[3326963] or {}
tItem[3326966] = tItem[3326963] or {}
tItem[3326967] = tItem[3326963] or {}
tItem[3326968] = tItem[3326963] or {}
tItem[3326969] = tItem[3326963] or {}
tItem[3326961] = tItem[3326963] or {}

tItem[3326962] = tItem[3326962] or {}
tItem[3326962]["Function"] = function(nItemId,sItemName)
	NewTeamPet_FindNpc2(nItemId)
end


---------------------------------------------怪物模板
-- 火羽凤凰
local tNewTeamPet_KillMonster = {}
tNewTeamPet_KillMonster[1] = {}
tNewTeamPet_KillMonster[1]["Function"]= NewTeamPet_DieMonster
tNewTeamPet_KillMonster[1]["MonsterId"] = {5822,5823,5824,5825,5826,5827,5828,5829,5830,5831,5832,5833,5834,5835,5836}
table.insert(tMonsterDrop_AreaLoad,tNewTeamPet_KillMonster[1])

-- 五大片区怪物掉落
-- 激情服
tNewTeamPet_KillMonster[2] = {}
tNewTeamPet_KillMonster[2]["Function"]= NewTeamPet_MonsterReward
tNewTeamPet_KillMonster[2]["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad,tNewTeamPet_KillMonster[2])
-- 普通服
tNewTeamPet_KillMonster[3] = {}
tNewTeamPet_KillMonster[3]["Function"]= NewTeamPet_MonsterReward
table.insert(tMonsterDrop_AreaLoad,tNewTeamPet_KillMonster[3])









