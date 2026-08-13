------------------------------------------------------------------------------------
--Name：        191021[英文征服][活动脚本]新版个人养宠型TTT活动（11.14-12.04）
--Creator:      茅志伟
--Created:      2019/10/14
------------------------------------------------------------------------------------
-- 命名前缀 tNewPetsCultivate_

-- lua.ini = 41574
-- 41574 = V100\ActiveScript\[Conquer][ActiveScript]NewPetsCultivate.lua
-- 41574 = V100\活动脚本\[征服][活动脚本]新版个人养宠型TTT活动（11.14-12.04）.lua
-- LogId = 12001699



local tNewPetsCultivate_Stc = {}
--记录玩家是否领养了神兽，0 未领养 ，1 已领养
tNewPetsCultivate_Stc["AdopPet"] = {}
tNewPetsCultivate_Stc["AdopPet"]["EventType"] = 208
tNewPetsCultivate_Stc["AdopPet"]["DataType"] = 71
-- 记录神兽等级
tNewPetsCultivate_Stc["PetLevel"] = {}
tNewPetsCultivate_Stc["PetLevel"]["EventType"] = 208
tNewPetsCultivate_Stc["PetLevel"]["DataType"] = 72
-- 记录神兽当前经验
tNewPetsCultivate_Stc["PetExperience"] = {}
tNewPetsCultivate_Stc["PetExperience"]["EventType"] = 208
tNewPetsCultivate_Stc["PetExperience"]["DataType"] = 73
-- 记录神兽Id
tNewPetsCultivate_Stc["PetId"] = {}
tNewPetsCultivate_Stc["PetId"]["EventType"] = 208
tNewPetsCultivate_Stc["PetId"]["DataType"] = 74
-- 记录是否使用神兽训练手册 进行普通训练  0为当前未使用  1为已使用且还未击杀
tNewPetsCultivate_Stc["OrdinaryTrain"] = {}
tNewPetsCultivate_Stc["OrdinaryTrain"]["EventType"] = 208
tNewPetsCultivate_Stc["OrdinaryTrain"]["DataType"] = 75
-- 记录是否使用圣灵果 进行高级训练  0为当前未使用  大于0为已使用且还未击杀 数值记录使用的圣灵果等级
tNewPetsCultivate_Stc["SeniorTrain"] = {}
tNewPetsCultivate_Stc["SeniorTrain"]["EventType"] = 208
tNewPetsCultivate_Stc["SeniorTrain"]["DataType"] = 76
-- 记录玩家当天第几次普通训练
tNewPetsCultivate_Stc["OrdinaryTrainTimes"] = {}
tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["EventType"] = 208
tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["DataType"] = 77

-- 记录玩家当天片区怪物掉落神兽训练手册数量
tNewPetsCultivate_Stc["MonsterRewNum"] = {}
tNewPetsCultivate_Stc["MonsterRewNum"]["EventType"] = 208
tNewPetsCultivate_Stc["MonsterRewNum"]["DataType"] = 84

local tNewPetsCultivate_Data = {}
-- 领养神兽所需金币
tNewPetsCultivate_Data["Price"] = 100000
tNewPetsCultivate_Data["GlocalId"] = 53827
-- 刷怪的Gen
tNewPetsCultivate_Data["GeneratorId"] = {}
tNewPetsCultivate_Data["GeneratorId"][1] = 30171
tNewPetsCultivate_Data["GeneratorId"][2] = 30171
tNewPetsCultivate_Data["GeneratorId"][3] = 30171
tNewPetsCultivate_Data["GeneratorId"][4] = 30171
tNewPetsCultivate_Data["GeneratorId"][5] = 30171
tNewPetsCultivate_Data["GeneratorId"][6] = 30171
-- 各个级别的房屋中创建NPC的坐标
tNewPetsCultivate_Data["MapId"] = {}
tNewPetsCultivate_Data["NPCPosXY"] = {}
tNewPetsCultivate_Data["NPCPosXY"][1] = {{30,31},{30,27}}
tNewPetsCultivate_Data["NPCPosXY"][2] = {{40,66},{40,62}}
tNewPetsCultivate_Data["NPCPosXY"][3] = {{57,63},{57,59}}
tNewPetsCultivate_Data["NPCPosXY"][4] = {{57,63},{57,59}}
tNewPetsCultivate_Data["NPCPosXY"][5] = {{77,122},{77,118}}
tNewPetsCultivate_Data["NPCPosXY"][6] = {{119,150},{119,146}}
-- 各个级别的房屋中召唤神兽的坐标
tNewPetsCultivate_Data["MonsterPosXY"] = {}
tNewPetsCultivate_Data["MonsterPosXY"][1] = {35,29}
tNewPetsCultivate_Data["MonsterPosXY"][2] = {47,64}
tNewPetsCultivate_Data["MonsterPosXY"][3] = {61,61}
tNewPetsCultivate_Data["MonsterPosXY"][4] = {61,61}
tNewPetsCultivate_Data["MonsterPosXY"][5] = {81,121}
tNewPetsCultivate_Data["MonsterPosXY"][6] = {126,151}
-- 怪物ID
tNewPetsCultivate_Data["MonsterId"] = {}
tNewPetsCultivate_Data["MonsterId"][1] = 5759
tNewPetsCultivate_Data["MonsterId"][2] = 5760
tNewPetsCultivate_Data["MonsterId"][3] = 5761
tNewPetsCultivate_Data["MonsterId"][4] = 5762
tNewPetsCultivate_Data["MonsterId"][5] = 5763
tNewPetsCultivate_Data["MonsterId"][6] = 5764
tNewPetsCultivate_Data["MonsterId"][7] = 5765
tNewPetsCultivate_Data["MonsterId"][8] = 5766
tNewPetsCultivate_Data["MonsterId"][9] = 5767
tNewPetsCultivate_Data["MonsterId"][10] = 5768
tNewPetsCultivate_Data["MonsterId"][11] = 5769
tNewPetsCultivate_Data["MonsterId"][12] = 5770
tNewPetsCultivate_Data["MonsterId"][13] = 5771
tNewPetsCultivate_Data["MonsterId"][14] = 5772
tNewPetsCultivate_Data["MonsterId"][15] = 5773

-- 每级圣灵果能获得的最大天石数量
tNewPetsCultivate_Data["EMoneyMax"] = {}
tNewPetsCultivate_Data["EMoneyMax"][1] = 1380
tNewPetsCultivate_Data["EMoneyMax"][2] = 6900
tNewPetsCultivate_Data["EMoneyMax"][3] = 13800
tNewPetsCultivate_Data["EMoneyMax"][4] = 69000
tNewPetsCultivate_Data["EMoneyMax"][5] = 138000
tNewPetsCultivate_Data["EMoneyMax"][6] = 276000
tNewPetsCultivate_Data["EMoneyMax"][7] = 690000


-- 动态NPC数据
tNewPetsCultivate_Data["Npc"] = {}
tNewPetsCultivate_Data["Npc"][1] = {}
tNewPetsCultivate_Data["Npc"][1]["Name"] = tNewPetsCultivate_Text["NpcName"][1]
tNewPetsCultivate_Data["Npc"][1]["Type"] = 32
tNewPetsCultivate_Data["Npc"][1]["Sort"] = 0
tNewPetsCultivate_Data["Npc"][1]["Lookface"] = 21466
tNewPetsCultivate_Data["Npc"][1]["nTask0"] = 94491463

tNewPetsCultivate_Data["Npc"][2] = {}
tNewPetsCultivate_Data["Npc"][2]["Name"] = tNewPetsCultivate_Text["NpcName"][2]
tNewPetsCultivate_Data["Npc"][2]["Type"] = 2
tNewPetsCultivate_Data["Npc"][2]["Sort"] = 0
tNewPetsCultivate_Data["Npc"][2]["Lookface"] = 54736
tNewPetsCultivate_Data["Npc"][2]["nTask0"] = 94491464

tNewPetsCultivate_Data["NpcId"] = {}
tNewPetsCultivate_Data["NpcId"][1] = 25207


-- 神兽升级所需成长值
tNewPetsCultivate_Data["PetExperience"] = {}
tNewPetsCultivate_Data["PetExperience"][1] = 50000
tNewPetsCultivate_Data["PetExperience"][2] = 50000
tNewPetsCultivate_Data["PetExperience"][3] = 70000
tNewPetsCultivate_Data["PetExperience"][4] = 70000
tNewPetsCultivate_Data["PetExperience"][5] = 100000
tNewPetsCultivate_Data["PetExperience"][6] = 100000
tNewPetsCultivate_Data["PetExperience"][7] = 120000
tNewPetsCultivate_Data["PetExperience"][8] = 120000
tNewPetsCultivate_Data["PetExperience"][9] = 120000
tNewPetsCultivate_Data["PetExperience"][10] = 150000 
tNewPetsCultivate_Data["PetExperience"][11] = 150000 
tNewPetsCultivate_Data["PetExperience"][12] = 180000 
tNewPetsCultivate_Data["PetExperience"][13] = 180000 
tNewPetsCultivate_Data["PetExperience"][14] = 220000 
tNewPetsCultivate_Data["PetExperience"][15] = 220000 

-- 使用圣灵果训练可获得的成长值
tNewPetsCultivate_Data["SeniorTrainExp"] = {}
tNewPetsCultivate_Data["SeniorTrainExp"][1] = 5
tNewPetsCultivate_Data["SeniorTrainExp"][2] = 25
tNewPetsCultivate_Data["SeniorTrainExp"][3] = 50
tNewPetsCultivate_Data["SeniorTrainExp"][4] = 250
tNewPetsCultivate_Data["SeniorTrainExp"][5] = 500
tNewPetsCultivate_Data["SeniorTrainExp"][6] = 1000
tNewPetsCultivate_Data["SeniorTrainExp"][7] = 2500

-- 使用圣灵果ID
tNewPetsCultivate_Data["SeniorTrainId"] = {}
tNewPetsCultivate_Data["SeniorTrainId"][1] = 3326684
tNewPetsCultivate_Data["SeniorTrainId"][2] = 3326685
tNewPetsCultivate_Data["SeniorTrainId"][3] = 3326686
tNewPetsCultivate_Data["SeniorTrainId"][4] = 3326687
tNewPetsCultivate_Data["SeniorTrainId"][5] = 3326688
tNewPetsCultivate_Data["SeniorTrainId"][6] = 3326689
tNewPetsCultivate_Data["SeniorTrainId"][7] = 3326690
-- 圣灵果价格
tNewPetsCultivate_Data["SeniorTrainEMoney"] = {}
tNewPetsCultivate_Data["SeniorTrainEMoney"][1] = 10
tNewPetsCultivate_Data["SeniorTrainEMoney"][2] = 50
tNewPetsCultivate_Data["SeniorTrainEMoney"][3] = 100
tNewPetsCultivate_Data["SeniorTrainEMoney"][4] = 500
tNewPetsCultivate_Data["SeniorTrainEMoney"][5] = 1000
tNewPetsCultivate_Data["SeniorTrainEMoney"][6] = 2000
tNewPetsCultivate_Data["SeniorTrainEMoney"][7] = 5000

-- 不同房屋等级每天普通训练次数上限
tNewPetsCultivate_Data["OrdTrainTimes"] = {}
tNewPetsCultivate_Data["OrdTrainTimes"][1] = 5
tNewPetsCultivate_Data["OrdTrainTimes"][2] = 6
tNewPetsCultivate_Data["OrdTrainTimes"][3] = 8
tNewPetsCultivate_Data["OrdTrainTimes"][4] = 10
tNewPetsCultivate_Data["OrdTrainTimes"][5] = 12
tNewPetsCultivate_Data["OrdTrainTimes"][6] = 15

-- 神兽训练手册ID
tNewPetsCultivate_Data["OrdTrainId"] = 3326667

tNewPetsCultivate_Data["Malil"] = {}
-- 升级奖励 邮件actionId
tNewPetsCultivate_Data["Malil"]["ActionId"] = {}
tNewPetsCultivate_Data["Malil"]["ActionId"][2] = 575012
tNewPetsCultivate_Data["Malil"]["ActionId"][3] = 575013
tNewPetsCultivate_Data["Malil"]["ActionId"][4] = 575014
tNewPetsCultivate_Data["Malil"]["ActionId"][5] = 575015
tNewPetsCultivate_Data["Malil"]["ActionId"][6] = 575016
tNewPetsCultivate_Data["Malil"]["ActionId"][7] = 575017
tNewPetsCultivate_Data["Malil"]["ActionId"][8] = 575018
tNewPetsCultivate_Data["Malil"]["ActionId"][9] = 575019
tNewPetsCultivate_Data["Malil"]["ActionId"][10] = 575020
tNewPetsCultivate_Data["Malil"]["ActionId"][11] = 575021
tNewPetsCultivate_Data["Malil"]["ActionId"][12] = 575022
tNewPetsCultivate_Data["Malil"]["ActionId"][13] = 575023
tNewPetsCultivate_Data["Malil"]["ActionId"][14] = 575024
tNewPetsCultivate_Data["Malil"]["ActionId"][15] = 575025

-- 神兽之心（圣灵果）奖励对应的天石数量
tNewPetsCultivate_Data["RewardEMoney"] = {}
tNewPetsCultivate_Data["RewardEMoney"][720654] = 1380
tNewPetsCultivate_Data["RewardEMoney"][720653] = 270
tNewPetsCultivate_Data["RewardEMoney"][720655] = 20
tNewPetsCultivate_Data["RewardEMoney"][720656] = 10
tNewPetsCultivate_Data["RewardEMoney"][720657] = 5

tNewPetsCultivate_Data["RewardEMoney"][720662] = 6900
tNewPetsCultivate_Data["RewardEMoney"][720661] = 1350
tNewPetsCultivate_Data["RewardEMoney"][720660] = 100
tNewPetsCultivate_Data["RewardEMoney"][720659] = 50
tNewPetsCultivate_Data["RewardEMoney"][720658] = 25

tNewPetsCultivate_Data["RewardEMoney"][720667] = 13800
tNewPetsCultivate_Data["RewardEMoney"][720666] = 2700
tNewPetsCultivate_Data["RewardEMoney"][720665] = 200
tNewPetsCultivate_Data["RewardEMoney"][720664] = 100
tNewPetsCultivate_Data["RewardEMoney"][720663] = 50

tNewPetsCultivate_Data["RewardEMoney"][720679] = 69000
tNewPetsCultivate_Data["RewardEMoney"][720678] = 13500
tNewPetsCultivate_Data["RewardEMoney"][720677] = 1000
tNewPetsCultivate_Data["RewardEMoney"][720676] = 500
tNewPetsCultivate_Data["RewardEMoney"][720675] = 250

tNewPetsCultivate_Data["RewardEMoney"][720685] = 138000
tNewPetsCultivate_Data["RewardEMoney"][720684] = 27000
tNewPetsCultivate_Data["RewardEMoney"][720683] = 2000
tNewPetsCultivate_Data["RewardEMoney"][720682] = 1000
tNewPetsCultivate_Data["RewardEMoney"][720681] = 500

tNewPetsCultivate_Data["RewardEMoney"][720691] = 276000
tNewPetsCultivate_Data["RewardEMoney"][720690] = 54000
tNewPetsCultivate_Data["RewardEMoney"][720689] = 4000
tNewPetsCultivate_Data["RewardEMoney"][720688] = 2000
tNewPetsCultivate_Data["RewardEMoney"][720687] = 1000

tNewPetsCultivate_Data["RewardEMoney"][720697] = 690000
tNewPetsCultivate_Data["RewardEMoney"][720696] = 135000
tNewPetsCultivate_Data["RewardEMoney"][720695] = 10000
tNewPetsCultivate_Data["RewardEMoney"][720694] = 5000
tNewPetsCultivate_Data["RewardEMoney"][720693] = 2500

tNewPetsCultivate_Data["RewardEMoney"][3326668] = 0
tNewPetsCultivate_Data["RewardEMoney"][720668] = 0
tNewPetsCultivate_Data["RewardEMoney"][720669] = 0




local tNewPetsCultivate_Log = {}
tNewPetsCultivate_Log["DeleteLog"] = "0,0,%d,%d,0,12001699,2,0,0"
tNewPetsCultivate_Log["EMonyeLog"] = {} 
tNewPetsCultivate_Log["EMonyeLog"][3326684] = "1000	1253	0	0	1	"   -- 消耗1级圣灵果
tNewPetsCultivate_Log["EMonyeLog"][3326685] = "1000	1254	0	0	1	"   -- 消耗2级圣灵果
tNewPetsCultivate_Log["EMonyeLog"][3326686] = "1000	1255	0	0	1	"   -- 消耗3级圣灵果
tNewPetsCultivate_Log["EMonyeLog"][3326687] = "1000	1256	0	0	1	"   -- 消耗4级圣灵果
tNewPetsCultivate_Log["EMonyeLog"][3326688] = "1000	1257	0	0	1	"   -- 消耗5级圣灵果
tNewPetsCultivate_Log["EMonyeLog"][3326689] = "1000	1258	0	0	1	"   -- 消耗6级圣灵果
tNewPetsCultivate_Log["EMonyeLog"][3326690] = "1000	1259	0	0	1	"   -- 消耗7级圣灵果
tNewPetsCultivate_Log["EMonyeLog"][3326667] = "1000	1260	0	0	1	"   -- 消耗神兽训练手册
tNewPetsCultivate_Log["EMonyeLog"]["BuyPet"] = "1000	1261	0	0	1	"   -- 购买神兽
tNewPetsCultivate_Log["EMonyeLog"]["CPs"] = "1000	1262	%d	%d	1	"   -- 天石产出
tNewPetsCultivate_Log["EMonyeLog"]["Feather"] = "1000	1263	0	0	1	"   -- 羽毛产出


local tNewPetsCultivate_Random = {}
tNewPetsCultivate_Random["MonsterReward"] = {}
tNewPetsCultivate_Random["MonsterReward"][1] = {}
tNewPetsCultivate_Random["MonsterReward"][1]["ItemChanceSum"] = 10000

tNewPetsCultivate_Random["MonsterReward"][1][1] = {}
tNewPetsCultivate_Random["MonsterReward"][1][1]["RandomItemChanceType"] = 2
tNewPetsCultivate_Random["MonsterReward"][1][1]["ItemChance"] = 9900
tNewPetsCultivate_Random["MonsterReward"][1][1]["Item_1"] = 1

tNewPetsCultivate_Random["MonsterReward"][1][2] = {}
tNewPetsCultivate_Random["MonsterReward"][1][2]["RandomItemChanceType"] = 2
tNewPetsCultivate_Random["MonsterReward"][1][2]["ItemChance"] = 100
tNewPetsCultivate_Random["MonsterReward"][1][2]["Item_1"] = 2


local tNewPetsCultivate_Pack = {}
	-- ===每日驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326669][1]
	-- ===删除:3326669,1
	-- ===
	tNewPetsCultivate_Pack[3326669] = {}
	tNewPetsCultivate_Pack[3326669][1] = {}
	tNewPetsCultivate_Pack[3326669][1]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326669][1]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326669][1]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326669][1]["DeleteItem"][1]["Id"] = 3326669 -- 【库】每日驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326669][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326669][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326669][1]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tNewPetsCultivate_Pack[3326669][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的TwilightStarStone*3
	tNewPetsCultivate_Pack[3326669][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326669][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326669][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326669][2] = {}
	-- ===每日驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326669][2]
	-- ===删除:3326669,1
	-- ===
	tNewPetsCultivate_Pack[3326669][2]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326669][2]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326669][2]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326669][2]["DeleteItem"][1]["Id"] = 3326669 -- 【库】每日驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326669][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326669][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326669][2]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精（赠）
	tNewPetsCultivate_Pack[3326669][2]["RewardItem"][1]["Attr"] = "0 3 3" -- YellowRuneEssence（赠）*3
	tNewPetsCultivate_Pack[3326669][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326669][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326669][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326669][3] = {}
	-- ===每日驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326669][3]
	-- ===删除:3326669,1
	-- ===
	tNewPetsCultivate_Pack[3326669][3]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326669][3]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326669][3]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326669][3]["DeleteItem"][1]["Id"] = 3326669 -- 【库】每日驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326669][3]["RewardStrengthValue"] = {}
	tNewPetsCultivate_Pack[3326669][3]["RewardStrengthValue"]["Value"] = 100 -- 气力值, 【需求】气力值100
	tNewPetsCultivate_Pack[3326669][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326669][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326669][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326670] = {}
	-- ===2阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326670]
	-- ===删除:3326670,1
	-- ===
	tNewPetsCultivate_Pack[3326670]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326670]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326670]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326670]["DeleteItem"][1]["Id"] = 3326670 -- 【库】2阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326670]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326670]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326670]["RewardItem"][1]["Id"] = 3003124 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹（赠）
	tNewPetsCultivate_Pack[3326670]["RewardItem"][1]["Attr"] = "0 20 3" -- FavoredTrainingPill（赠）*20（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326670]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326670]["RewardItem"][2]["Id"] = 729242 -- Vital~Pill[729242][属性:0][叠加:1][金币:0], 【表格】回气丹（赠）
	tNewPetsCultivate_Pack[3326670]["RewardItem"][2]["Attr"] = "0 1 3" -- Vital~Pill（赠）*1
	tNewPetsCultivate_Pack[3326670]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326670]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326670]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326671] = {}
	-- ===3阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326671]
	-- ===删除:3326671,1
	-- ===
	tNewPetsCultivate_Pack[3326671]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326671]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326671]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326671]["DeleteItem"][1]["Id"] = 3326671 -- 【库】3阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326671]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326671]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326671]["RewardItem"][1]["Id"] = 3002030 -- SuperProtectionPill[3002030][属性:9][叠加:10000][金币:1], 【表格】强效护心丹（赠）
	tNewPetsCultivate_Pack[3326671]["RewardItem"][1]["Attr"] = "0 20" -- SuperProtectionPill*20（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326671]["RewardCultivation"] = {}
	tNewPetsCultivate_Pack[3326671]["RewardCultivation"]["Value"] = 1000 -- 修行值, 【需求】修行值1000
	tNewPetsCultivate_Pack[3326671]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326671]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326671]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326672] = {}
	-- ===4阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326672]
	-- ===删除:3326672,1
	-- ===
	tNewPetsCultivate_Pack[3326672]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326672]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326672]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326672]["DeleteItem"][1]["Id"] = 3326672 -- 【库】4阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326672]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326672]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326672]["RewardItem"][1]["Id"] = 3306370 -- YellowRuneFragment[3306370][属性:9][叠加:10000][金币:0], 【表格】随机黄色神纹碎片（赠）
	tNewPetsCultivate_Pack[3326672]["RewardItem"][1]["Attr"] = "0 2" -- YellowRuneFragment*2
	tNewPetsCultivate_Pack[3326672]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326672]["RewardItem"][2]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tNewPetsCultivate_Pack[3326672]["RewardItem"][2]["Attr"] = "0 5 3" -- YellowRuneEssence（赠）*5
	tNewPetsCultivate_Pack[3326672]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326672]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326672]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326673] = {}
	-- ===5阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326673]
	-- ===删除:3326673,1
	-- ===
	tNewPetsCultivate_Pack[3326673]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326673]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326673]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326673]["DeleteItem"][1]["Id"] = 3326673 -- 【库】5阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326673]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326673]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326673]["RewardItem"][1]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）
	tNewPetsCultivate_Pack[3326673]["RewardItem"][1]["Attr"] = "0 8 3" -- SeniorTrainingPill（赠）*8
	tNewPetsCultivate_Pack[3326673]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326673]["RewardItem"][2]["Id"] = 4040001 -- BlueRuneEssence[4040001][属性:9][叠加:10000][金币:0], 【表格】蓝色神纹精粹（赠）
	tNewPetsCultivate_Pack[3326673]["RewardItem"][2]["Attr"] = "0 5 3" -- BlueRuneEssence（赠）*5
	tNewPetsCultivate_Pack[3326673]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326673]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326673]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326674] = {}
	-- ===6阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326674]
	-- ===删除:3326674,1
	-- ===
	tNewPetsCultivate_Pack[3326674]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326674]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326674]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326674]["DeleteItem"][1]["Id"] = 3326674 -- 【库】6阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326674]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326674]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326674]["RewardItem"][1]["Id"] = 700102 -- ThunderGem[700102][属性:0][叠加:0][金币:0], 【表格】良品天怒宝石（赠）
	tNewPetsCultivate_Pack[3326674]["RewardItem"][1]["Attr"] = "0 1 3" -- ThunderGem（赠）*1
	tNewPetsCultivate_Pack[3326674]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326674]["RewardItem"][2]["Id"] = 3007269 -- FrozenChiPillScrap[3007269][属性:9][叠加:10000][金币:0], 【表格】八宝护气丹（碎片）（赠）
	tNewPetsCultivate_Pack[3326674]["RewardItem"][2]["Attr"] = "0 4" -- FrozenChiPillScrap*4
	tNewPetsCultivate_Pack[3326674]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326674]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326674]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326675] = {}
	-- ===7阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326675]
	-- ===删除:3326675,1
	-- ===
	tNewPetsCultivate_Pack[3326675]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326675]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326675]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326675]["DeleteItem"][1]["Id"] = 3326675 -- 【库】7阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326675]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326675]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326675]["RewardItem"][1]["Id"] = 700122 -- GloryGem[700122][属性:0][叠加:0][金币:0], 【表格】良品地灵宝石（赠）
	tNewPetsCultivate_Pack[3326675]["RewardItem"][1]["Attr"] = "0 1 3" -- GloryGem（赠）*1
	tNewPetsCultivate_Pack[3326675]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326675]["RewardItem"][2]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPetsCultivate_Pack[3326675]["RewardItem"][2]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的BrightStarStone*2
	tNewPetsCultivate_Pack[3326675]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326675]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326675]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326676] = {}
	-- ===8阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326676]
	-- ===删除:3326676,1
	-- ===
	tNewPetsCultivate_Pack[3326676]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326676]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326676]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326676]["DeleteItem"][1]["Id"] = 3326676 -- 【库】8阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326676]["RewardRepairValue"] = {}
	tNewPetsCultivate_Pack[3326676]["RewardRepairValue"]["Value"] = 1000 -- 修为值, 【需求】修为值1000
	tNewPetsCultivate_Pack[3326676]["RewardStrengthValue"] = {}
	tNewPetsCultivate_Pack[3326676]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】气力值1000
	tNewPetsCultivate_Pack[3326676]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326676]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326676]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹（赠）
	tNewPetsCultivate_Pack[3326676]["RewardItem"][1]["Attr"] = "0 15 3" -- YellowRuneEssence（赠）*15
	tNewPetsCultivate_Pack[3326676]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326676]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326676]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326677] = {}
	-- ===9阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326677]
	-- ===删除:3326677,1
	-- ===
	tNewPetsCultivate_Pack[3326677]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326677]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326677]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326677]["DeleteItem"][1]["Id"] = 3326677 -- 【库】9阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326677]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326677]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326677]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPetsCultivate_Pack[3326677]["RewardItem"][1]["Attr"] = "0 3 0 2880 1" -- 2天时效(激活)的BrightStarStone*3
	tNewPetsCultivate_Pack[3326677]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326677]["RewardItem"][2]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹（赠）
	tNewPetsCultivate_Pack[3326677]["RewardItem"][2]["Attr"] = "0 8 3" -- SeniorTrainingPill（赠）*8
	tNewPetsCultivate_Pack[3326677]["RewardItem"][3] = {}
	tNewPetsCultivate_Pack[3326677]["RewardItem"][3]["Id"] = 4040001 -- BlueRuneEssence[4040001][属性:9][叠加:10000][金币:0], 【表格】蓝色神纹精粹（赠）
	tNewPetsCultivate_Pack[3326677]["RewardItem"][3]["Attr"] = "0 5 3" -- BlueRuneEssence（赠）*5
	tNewPetsCultivate_Pack[3326677]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326677]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326677]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326678] = {}
	-- ===10阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326678]
	-- ===删除:3326678,1
	-- ===
	tNewPetsCultivate_Pack[3326678]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326678]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326678]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326678]["DeleteItem"][1]["Id"] = 3326678 -- 【库】10阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326678]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326678]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326678]["RewardItem"][1]["Id"] = 3001044 -- MysteryFruit[3001044][属性:9][叠加:99][金币:0], 【表格】百炼天机果（赠）
	tNewPetsCultivate_Pack[3326678]["RewardItem"][1]["Attr"] = "0 1" -- MysteryFruit*1
	tNewPetsCultivate_Pack[3326678]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326678]["RewardItem"][2]["Id"] = 711083 -- OblivionDew[711083][属性:8][叠加:10][金币:0], 【表格】转世药水（赠）
	tNewPetsCultivate_Pack[3326678]["RewardItem"][2]["Attr"] = "0 1 3" -- OblivionDew（赠）*1
	tNewPetsCultivate_Pack[3326678]["RewardItem"][3] = {}
	tNewPetsCultivate_Pack[3326678]["RewardItem"][3]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewPetsCultivate_Pack[3326678]["RewardItem"][3]["Attr"] = "0 5" -- GinsengFruit*5
	tNewPetsCultivate_Pack[3326678]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326678]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326678]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326679] = {}
	-- ===11阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326679]
	-- ===删除:3326679,1
	-- ===
	tNewPetsCultivate_Pack[3326679]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326679]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326679]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326679]["DeleteItem"][1]["Id"] = 3326679 -- 【库】11阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326679]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326679]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326679]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）
	tNewPetsCultivate_Pack[3326679]["RewardItem"][1]["Attr"] = "0 1 3" -- RuneCrystal（赠）*1
	tNewPetsCultivate_Pack[3326679]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326679]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewPetsCultivate_Pack[3326679]["RewardItem"][2]["Attr"] = "0 10" -- GinsengFruit*10
	tNewPetsCultivate_Pack[3326679]["RewardItem"][3] = {}
	tNewPetsCultivate_Pack[3326679]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewPetsCultivate_Pack[3326679]["RewardItem"][3]["Attr"] = "0 3 3" -- UniversalRuneEssence（赠）*3
	tNewPetsCultivate_Pack[3326679]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326679]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326679]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326680] = {}
	-- ===12阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326680]
	-- ===删除:3326680,1
	-- ===
	tNewPetsCultivate_Pack[3326680]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326680]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326680]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326680]["DeleteItem"][1]["Id"] = 3326680 -- 【库】12阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326680]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326680]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326680]["RewardItem"][1]["Id"] = 3009001 -- BrightStarStone[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tNewPetsCultivate_Pack[3326680]["RewardItem"][1]["Attr"] = "0 5 0 2880 1" -- 2天时效(激活)的BrightStarStone*5
	tNewPetsCultivate_Pack[3326680]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326680]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewPetsCultivate_Pack[3326680]["RewardItem"][2]["Attr"] = "0 15" -- GinsengFruit*15（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326680]["RewardItem"][3] = {}
	tNewPetsCultivate_Pack[3326680]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewPetsCultivate_Pack[3326680]["RewardItem"][3]["Attr"] = "0 5 3" -- UniversalRuneEssence（赠）*5
	tNewPetsCultivate_Pack[3326680]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326680]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326680]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326681] = {}
	-- ===13阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326681]
	-- ===删除:3326681,1
	-- ===
	tNewPetsCultivate_Pack[3326681]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326681]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326681]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326681]["DeleteItem"][1]["Id"] = 3326681 -- 【库】13阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326681]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326681]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326681]["RewardItem"][1]["Id"] = 3311759 -- RuneCrystal[3311759][属性:8][叠加:10000][金币:0], 【表格】神纹源晶（赠）
	tNewPetsCultivate_Pack[3326681]["RewardItem"][1]["Attr"] = "0 2 3" -- RuneCrystal（赠）*2
	tNewPetsCultivate_Pack[3326681]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326681]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewPetsCultivate_Pack[3326681]["RewardItem"][2]["Attr"] = "0 20" -- GinsengFruit*20（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326681]["RewardItem"][3] = {}
	tNewPetsCultivate_Pack[3326681]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewPetsCultivate_Pack[3326681]["RewardItem"][3]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tNewPetsCultivate_Pack[3326681]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326681]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326681]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326682] = {}
	-- ===14阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326682]
	-- ===删除:3326682,1
	-- ===
	tNewPetsCultivate_Pack[3326682]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326682]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326682]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326682]["DeleteItem"][1]["Id"] = 3326682 -- 【库】14阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326682]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326682]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326682]["RewardItem"][1]["Id"] = 3009002 -- RadiantStarStone[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tNewPetsCultivate_Pack[3326682]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的RadiantStarStone*1
	tNewPetsCultivate_Pack[3326682]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326682]["RewardItem"][2]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewPetsCultivate_Pack[3326682]["RewardItem"][2]["Attr"] = "0 25" -- GinsengFruit*25（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326682]["RewardItem"][3] = {}
	tNewPetsCultivate_Pack[3326682]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewPetsCultivate_Pack[3326682]["RewardItem"][3]["Attr"] = "0 10 3" -- UniversalRuneEssence（赠）*10
	tNewPetsCultivate_Pack[3326682]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326682]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326682]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326683] = {}
	-- ===15阶驯兽礼盒
	-- ===索引:tNewPetsCultivate_Pack[3326683]
	-- ===删除:3326683,1
	-- ===
	tNewPetsCultivate_Pack[3326683]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326683]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326683]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326683]["DeleteItem"][1]["Id"] = 3326683 -- 【库】15阶驯兽礼盒[属性:9]
	tNewPetsCultivate_Pack[3326683]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326683]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326683]["RewardItem"][1]["Id"] = 3303373 -- KnowledgePill[3303373][属性:9][叠加:10000][金币:0], 【表格】魔武通玄丹（赠）
	tNewPetsCultivate_Pack[3326683]["RewardItem"][1]["Attr"] = "0 10" -- KnowledgePill*10
	tNewPetsCultivate_Pack[3326683]["RewardItem"][2] = {}
	tNewPetsCultivate_Pack[3326683]["RewardItem"][2]["Id"] = 3005412 -- PowerEraser[3005412][属性:0][叠加:10000][金币:0], 【表格】散功丹（赠）
	tNewPetsCultivate_Pack[3326683]["RewardItem"][2]["Attr"] = "0 3 3" -- PowerEraser（赠）*3
	tNewPetsCultivate_Pack[3326683]["RewardItem"][3] = {}
	tNewPetsCultivate_Pack[3326683]["RewardItem"][3]["Id"] = 4060001 -- UniversalRuneEssence[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tNewPetsCultivate_Pack[3326683]["RewardItem"][3]["Attr"] = "0 50 3" -- UniversalRuneEssence（赠）*50
	tNewPetsCultivate_Pack[3326683]["RewardItem"][4] = {}
	tNewPetsCultivate_Pack[3326683]["RewardItem"][4]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:10000][金币:0], 【表格】人参果（赠）
	tNewPetsCultivate_Pack[3326683]["RewardItem"][4]["Attr"] = "0 35" -- GinsengFruit*35（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326683]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326683]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326683]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326684] = {}
	-- ===1级神兽之心
	-- ===索引: tNewPetsCultivate_Pack[3326684]
	-- ===删除:3326684,1
	-- ===
	tNewPetsCultivate_Pack[3326684]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPetsCultivate_Pack[3326684]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326684]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326684]["DeleteItem"][1]["Id"] = 3326684 -- 【库】1级圣灵果[属性:9]
	tNewPetsCultivate_Pack[3326684]["LogId"] = 12001699
	-- 1380天石 - 0.01%
	tNewPetsCultivate_Pack[3326684][1] = {}
	tNewPetsCultivate_Pack[3326684][1]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326684][1]["ItemChance"] = 1
	tNewPetsCultivate_Pack[3326684][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326684][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326684][1]["RewardItem"][1]["Id"] = 720654 -- JoyCPPack[720654][属性:9][叠加:0][金币:0], 【表格】1380天石
	tNewPetsCultivate_Pack[3326684][1]["RewardItem"][1]["Attr"] = "0 1" -- JoyCPPack*1
	tNewPetsCultivate_Pack[3326684][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326684][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326684][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewPetsCultivate_Pack[3326684][1]["Num"] = 1
	-- 270天石 - 0.1%
	tNewPetsCultivate_Pack[3326684][2] = {}
	tNewPetsCultivate_Pack[3326684][2]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326684][2]["ItemChance"] = 10
	tNewPetsCultivate_Pack[3326684][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326684][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326684][2]["RewardItem"][1]["Id"] = 720653 -- DreamCPPack[720653][属性:9][叠加:0][金币:0], 【表格】270天石
	tNewPetsCultivate_Pack[3326684][2]["RewardItem"][1]["Attr"] = "0 1" -- DreamCPPack*1
	tNewPetsCultivate_Pack[3326684][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326684][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326684][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 20天石 - 37%
	tNewPetsCultivate_Pack[3326684][3] = {}
	tNewPetsCultivate_Pack[3326684][3]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326684][3]["ItemChance"] = 3700
	tNewPetsCultivate_Pack[3326684][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326684][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326684][3]["RewardItem"][1]["Id"] = 720655 -- MammonCPPack[720655][属性:9][叠加:0][金币:0], 【表格】20天石
	tNewPetsCultivate_Pack[3326684][3]["RewardItem"][1]["Attr"] = "0 1" -- MammonCPPack*1
	tNewPetsCultivate_Pack[3326684][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326684][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326684][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 10天石 - 12.89%
	tNewPetsCultivate_Pack[3326684][4] = {}
	tNewPetsCultivate_Pack[3326684][4]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326684][4]["ItemChance"] = 1289
	tNewPetsCultivate_Pack[3326684][4]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326684][4]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326684][4]["RewardItem"][1]["Id"] = 720656 -- MascotCPPack[720656][属性:9][叠加:0][金币:0], 【表格】10天石
	tNewPetsCultivate_Pack[3326684][4]["RewardItem"][1]["Attr"] = "0 1" -- MascotCPPack*1
	tNewPetsCultivate_Pack[3326684][4]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326684][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326684][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 5天石 - 10%
	tNewPetsCultivate_Pack[3326684][5] = {}
	tNewPetsCultivate_Pack[3326684][5]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326684][5]["ItemChance"] = 1000
	tNewPetsCultivate_Pack[3326684][5]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326684][5]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326684][5]["RewardItem"][1]["Id"] = 720657 -- HopeCPPack[720657][属性:9][叠加:0][金币:0], 【表格】5天石
	tNewPetsCultivate_Pack[3326684][5]["RewardItem"][1]["Attr"] = "0 1" -- HopeCPPack*1
	tNewPetsCultivate_Pack[3326684][5]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326684][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326684][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 10分钟经验 - 40%
	tNewPetsCultivate_Pack[3326684][6] = {}
	tNewPetsCultivate_Pack[3326684][6]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326684][6]["ItemChance"] = 4000
	tNewPetsCultivate_Pack[3326684][6]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326684][6]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326684][6]["RewardItem"][1]["Id"] = 720668 -- MagicBall[720668][属性:9][叠加:0][金币:0], 【表格】10分钟经验
	tNewPetsCultivate_Pack[3326684][6]["RewardItem"][1]["Attr"] = "0 1" -- MagicBall*1
	tNewPetsCultivate_Pack[3326684][6]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326684][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326684][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326685] = {}
	-- ===2级神兽之心
	-- ===索引: tNewPetsCultivate_Pack[3326685]
	-- ===删除:3326685,1
	-- ===
	tNewPetsCultivate_Pack[3326685]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPetsCultivate_Pack[3326685]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326685]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326685]["DeleteItem"][1]["Id"] = 3326685 -- 【库】2级圣灵果[属性:9]
	tNewPetsCultivate_Pack[3326685]["LogId"] = 12001699
	-- 6900天石 - 0.01%
	tNewPetsCultivate_Pack[3326685][1] = {}
	tNewPetsCultivate_Pack[3326685][1]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326685][1]["ItemChance"] = 1
	tNewPetsCultivate_Pack[3326685][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326685][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326685][1]["RewardItem"][1]["Id"] = 720662 -- MysticCPPack[720662][属性:9][叠加:0][金币:0], 【表格】6900天石
	tNewPetsCultivate_Pack[3326685][1]["RewardItem"][1]["Attr"] = "0 1" -- MysticCPPack*1
	tNewPetsCultivate_Pack[3326685][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326685][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326685][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewPetsCultivate_Pack[3326685][1]["Num"] = 1
	-- 1350天石 - 0.1%
	tNewPetsCultivate_Pack[3326685][2] = {}
	tNewPetsCultivate_Pack[3326685][2]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326685][2]["ItemChance"] = 10
	tNewPetsCultivate_Pack[3326685][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326685][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326685][2]["RewardItem"][1]["Id"] = 720661 -- PureCPPack[720661][属性:9][叠加:0][金币:0], 【表格】1350天石
	tNewPetsCultivate_Pack[3326685][2]["RewardItem"][1]["Attr"] = "0 1" -- PureCPPack*1
	tNewPetsCultivate_Pack[3326685][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326685][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326685][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 100天石 - 37%
	tNewPetsCultivate_Pack[3326685][3] = {}
	tNewPetsCultivate_Pack[3326685][3]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326685][3]["ItemChance"] = 3700
	tNewPetsCultivate_Pack[3326685][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326685][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326685][3]["RewardItem"][1]["Id"] = 720660 -- LegendCPPack[720660][属性:9][叠加:0][金币:0], 【表格】100天石
	tNewPetsCultivate_Pack[3326685][3]["RewardItem"][1]["Attr"] = "0 1" -- LegendCPPack*1
	tNewPetsCultivate_Pack[3326685][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326685][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326685][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 50天石 - 12.89%
	tNewPetsCultivate_Pack[3326685][4] = {}
	tNewPetsCultivate_Pack[3326685][4]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326685][4]["ItemChance"] = 1289
	tNewPetsCultivate_Pack[3326685][4]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326685][4]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326685][4]["RewardItem"][1]["Id"] = 720659 -- SweetCPPack[720659][属性:9][叠加:0][金币:0], 【表格】50天石
	tNewPetsCultivate_Pack[3326685][4]["RewardItem"][1]["Attr"] = "0 1" -- SweetCPPack*1
	tNewPetsCultivate_Pack[3326685][4]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326685][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326685][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 25天石 - 10%
	tNewPetsCultivate_Pack[3326685][5] = {}
	tNewPetsCultivate_Pack[3326685][5]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326685][5]["ItemChance"] = 1000
	tNewPetsCultivate_Pack[3326685][5]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326685][5]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326685][5]["RewardItem"][1]["Id"] = 720658 -- FestivalCPPack[720658][属性:9][叠加:0][金币:0], 【表格】25天石
	tNewPetsCultivate_Pack[3326685][5]["RewardItem"][1]["Attr"] = "0 1" -- FestivalCPPack*1
	tNewPetsCultivate_Pack[3326685][5]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326685][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326685][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 50分钟经验 - 40%
	tNewPetsCultivate_Pack[3326685][6] = {}
	tNewPetsCultivate_Pack[3326685][6]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326685][6]["ItemChance"] = 4000
	tNewPetsCultivate_Pack[3326685][6]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326685][6]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326685][6]["RewardItem"][1]["Id"] = 720669 -- SuperBall[720669][属性:9][叠加:0][金币:0], 【表格】50分钟经验
	tNewPetsCultivate_Pack[3326685][6]["RewardItem"][1]["Attr"] = "0 1" -- SuperBall*1
	tNewPetsCultivate_Pack[3326685][6]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326685][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326685][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326686] = {}
	-- ===3级神兽之心
	-- ===索引: tNewPetsCultivate_Pack[3326686]
	-- ===删除:3326686,1
	-- ===
	tNewPetsCultivate_Pack[3326686]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPetsCultivate_Pack[3326686]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326686]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326686]["DeleteItem"][1]["Id"] = 3326686 -- 【库】3级圣灵果[属性:9]
	tNewPetsCultivate_Pack[3326686]["LogId"] = 12001699
	-- 13800天石 - 0.01%
	tNewPetsCultivate_Pack[3326686][1] = {}
	tNewPetsCultivate_Pack[3326686][1]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326686][1]["ItemChance"] = 1
	tNewPetsCultivate_Pack[3326686][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326686][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326686][1]["RewardItem"][1]["Id"] = 720667 -- FantasyCPPack[720667][属性:9][叠加:0][金币:0], 【表格】13800天石
	tNewPetsCultivate_Pack[3326686][1]["RewardItem"][1]["Attr"] = "0 1" -- FantasyCPPack*1
	tNewPetsCultivate_Pack[3326686][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326686][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326686][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewPetsCultivate_Pack[3326686][1]["Num"] = 1
	-- 2700天石 - 0.1%
	tNewPetsCultivate_Pack[3326686][2] = {}
	tNewPetsCultivate_Pack[3326686][2]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326686][2]["ItemChance"] = 10
	tNewPetsCultivate_Pack[3326686][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326686][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326686][2]["RewardItem"][1]["Id"] = 720666 -- StarCPPack[720666][属性:9][叠加:0][金币:0], 【表格】2700天石
	tNewPetsCultivate_Pack[3326686][2]["RewardItem"][1]["Attr"] = "0 1" -- StarCPPack*1
	tNewPetsCultivate_Pack[3326686][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326686][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326686][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 200天石 - 37%
	tNewPetsCultivate_Pack[3326686][3] = {}
	tNewPetsCultivate_Pack[3326686][3]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326686][3]["ItemChance"] = 3700
	tNewPetsCultivate_Pack[3326686][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326686][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326686][3]["RewardItem"][1]["Id"] = 720665 -- CuteCPPack[720665][属性:9][叠加:0][金币:0], 【表格】200天石
	tNewPetsCultivate_Pack[3326686][3]["RewardItem"][1]["Attr"] = "0 1" -- CuteCPPack*1
	tNewPetsCultivate_Pack[3326686][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326686][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326686][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 100天石 - 12.89%
	tNewPetsCultivate_Pack[3326686][4] = {}
	tNewPetsCultivate_Pack[3326686][4]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326686][4]["ItemChance"] = 1289
	tNewPetsCultivate_Pack[3326686][4]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326686][4]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326686][4]["RewardItem"][1]["Id"] = 720664 -- FlareCPPack[720664][属性:9][叠加:0][金币:0], 【表格】100天石
	tNewPetsCultivate_Pack[3326686][4]["RewardItem"][1]["Attr"] = "0 1" -- FlareCPPack*1
	tNewPetsCultivate_Pack[3326686][4]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326686][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326686][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 50天石 - 10%
	tNewPetsCultivate_Pack[3326686][5] = {}
	tNewPetsCultivate_Pack[3326686][5]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326686][5]["ItemChance"] = 1000
	tNewPetsCultivate_Pack[3326686][5]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326686][5]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326686][5]["RewardItem"][1]["Id"] = 720663 -- VioletCPPack[720663][属性:9][叠加:0][金币:0], 【表格】50天石
	tNewPetsCultivate_Pack[3326686][5]["RewardItem"][1]["Attr"] = "0 1" -- VioletCPPack*1
	tNewPetsCultivate_Pack[3326686][5]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326686][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326686][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 九天凰羽 - 40%
	tNewPetsCultivate_Pack[3326686][6] = {}
	tNewPetsCultivate_Pack[3326686][6]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326686][6]["ItemChance"] = 4000
	tNewPetsCultivate_Pack[3326686][6]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326686][6]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326686][6]["RewardItem"][1]["Id"] = 3326668 -- 九天凰羽[3326668][属性:9][叠加:10000][金币:0], 【表格】九天凰羽
	tNewPetsCultivate_Pack[3326686][6]["RewardItem"][1]["Attr"] = "0 1" -- 九天凰羽*1
	tNewPetsCultivate_Pack[3326686][6]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326686][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326686][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326687] = {}
	-- ===4级神兽之心
	-- ===索引: tNewPetsCultivate_Pack[3326687]
	-- ===删除:3326687,1
	-- ===
	tNewPetsCultivate_Pack[3326687]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPetsCultivate_Pack[3326687]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326687]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326687]["DeleteItem"][1]["Id"] = 3326687 -- 【库】4级圣灵果[属性:9]
	tNewPetsCultivate_Pack[3326687]["LogId"] = 12001699
	-- 69000天石 - 0.01%
	tNewPetsCultivate_Pack[3326687][1] = {}
	tNewPetsCultivate_Pack[3326687][1]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326687][1]["ItemChance"] = 1
	tNewPetsCultivate_Pack[3326687][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326687][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326687][1]["RewardItem"][1]["Id"] = 720679 -- FrostCPPack[720679][属性:9][叠加:0][金币:0], 【表格】69000天石
	tNewPetsCultivate_Pack[3326687][1]["RewardItem"][1]["Attr"] = "0 1" -- FrostCPPack*1
	tNewPetsCultivate_Pack[3326687][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326687][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326687][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewPetsCultivate_Pack[3326687][1]["Num"] = 1
	-- 13500天石 - 0.1%
	tNewPetsCultivate_Pack[3326687][2] = {}
	tNewPetsCultivate_Pack[3326687][2]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326687][2]["ItemChance"] = 10
	tNewPetsCultivate_Pack[3326687][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326687][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326687][2]["RewardItem"][1]["Id"] = 720678 -- LifeCPPack[720678][属性:9][叠加:0][金币:0], 【表格】13500天石
	tNewPetsCultivate_Pack[3326687][2]["RewardItem"][1]["Attr"] = "0 1" -- LifeCPPack*1
	tNewPetsCultivate_Pack[3326687][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326687][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326687][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石 - 37%
	tNewPetsCultivate_Pack[3326687][3] = {}
	tNewPetsCultivate_Pack[3326687][3]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326687][3]["ItemChance"] = 3700
	tNewPetsCultivate_Pack[3326687][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326687][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326687][3]["RewardItem"][1]["Id"] = 720677 -- BloodCPPack[720677][属性:9][叠加:0][金币:0], 【表格】1000天石
	tNewPetsCultivate_Pack[3326687][3]["RewardItem"][1]["Attr"] = "0 1" -- BloodCPPack*1
	tNewPetsCultivate_Pack[3326687][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326687][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326687][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 500天石 - 12.89%
	tNewPetsCultivate_Pack[3326687][4] = {}
	tNewPetsCultivate_Pack[3326687][4]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326687][4]["ItemChance"] = 1289
	tNewPetsCultivate_Pack[3326687][4]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326687][4]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326687][4]["RewardItem"][1]["Id"] = 720676 -- SoulCPPack[720676][属性:9][叠加:0][金币:0], 【表格】500天石
	tNewPetsCultivate_Pack[3326687][4]["RewardItem"][1]["Attr"] = "0 1" -- SoulCPPack*1
	tNewPetsCultivate_Pack[3326687][4]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326687][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326687][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 250天石 - 10%
	tNewPetsCultivate_Pack[3326687][5] = {}
	tNewPetsCultivate_Pack[3326687][5]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326687][5]["ItemChance"] = 1000
	tNewPetsCultivate_Pack[3326687][5]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326687][5]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326687][5]["RewardItem"][1]["Id"] = 720675 -- GhostCPPack[720675][属性:9][叠加:0][金币:0], 【表格】250天石
	tNewPetsCultivate_Pack[3326687][5]["RewardItem"][1]["Attr"] = "0 1" -- GhostCPPack*1
	tNewPetsCultivate_Pack[3326687][5]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326687][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326687][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 九天凰羽 - 40%
	tNewPetsCultivate_Pack[3326687][6] = {}
	tNewPetsCultivate_Pack[3326687][6]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326687][6]["ItemChance"] = 4000
	tNewPetsCultivate_Pack[3326687][6]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326687][6]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326687][6]["RewardItem"][1]["Id"] = 3326668 -- 九天凰羽[3326668][属性:9][叠加:10000][金币:0], 【表格】九天凰羽
	tNewPetsCultivate_Pack[3326687][6]["RewardItem"][1]["Attr"] = "0 5" -- 九天凰羽*5
	tNewPetsCultivate_Pack[3326687][6]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326687][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326687][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326688] = {}
	-- ===5级神兽之心
	-- ===索引: tNewPetsCultivate_Pack[3326688]
	-- ===删除:3326688,1
	-- ===
	tNewPetsCultivate_Pack[3326688]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPetsCultivate_Pack[3326688]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326688]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326688]["DeleteItem"][1]["Id"] = 3326688 -- 【库】5级圣灵果[属性:9]
	tNewPetsCultivate_Pack[3326688]["LogId"] = 12001699
	-- 138000天石 - 0.01%
	tNewPetsCultivate_Pack[3326688][1] = {}
	tNewPetsCultivate_Pack[3326688][1]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326688][1]["ItemChance"] = 1
	tNewPetsCultivate_Pack[3326688][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326688][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326688][1]["RewardItem"][1]["Id"] = 720685 -- NimbusCPPack[720685][属性:9][叠加:0][金币:0], 【表格】138000天石
	tNewPetsCultivate_Pack[3326688][1]["RewardItem"][1]["Attr"] = "0 1" -- NimbusCPPack*1
	tNewPetsCultivate_Pack[3326688][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326688][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326688][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewPetsCultivate_Pack[3326688][1]["Num"] = 1
	-- 27000天石 - 0.1%
	tNewPetsCultivate_Pack[3326688][2] = {}
	tNewPetsCultivate_Pack[3326688][2]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326688][2]["ItemChance"] = 10
	tNewPetsCultivate_Pack[3326688][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326688][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326688][2]["RewardItem"][1]["Id"] = 720684 -- ButterflyCPPack[720684][属性:9][叠加:0][金币:0], 【表格】27000天石
	tNewPetsCultivate_Pack[3326688][2]["RewardItem"][1]["Attr"] = "0 1" -- ButterflyCPPack*1
	tNewPetsCultivate_Pack[3326688][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326688][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326688][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000天石 - 37%
	tNewPetsCultivate_Pack[3326688][3] = {}
	tNewPetsCultivate_Pack[3326688][3]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326688][3]["ItemChance"] = 3700
	tNewPetsCultivate_Pack[3326688][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326688][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326688][3]["RewardItem"][1]["Id"] = 720683 -- HeartCPPack[720683][属性:9][叠加:0][金币:0], 【表格】2000天石
	tNewPetsCultivate_Pack[3326688][3]["RewardItem"][1]["Attr"] = "0 1" -- HeartCPPack*1
	tNewPetsCultivate_Pack[3326688][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326688][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326688][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石 - 12.89%
	tNewPetsCultivate_Pack[3326688][4] = {}
	tNewPetsCultivate_Pack[3326688][4]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326688][4]["ItemChance"] = 1289
	tNewPetsCultivate_Pack[3326688][4]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326688][4]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326688][4]["RewardItem"][1]["Id"] = 720682 -- FlowerCPPack[720682][属性:9][叠加:0][金币:0], 【表格】1000天石
	tNewPetsCultivate_Pack[3326688][4]["RewardItem"][1]["Attr"] = "0 1" -- FlowerCPPack*1
	tNewPetsCultivate_Pack[3326688][4]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326688][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326688][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 500天石 - 10%
	tNewPetsCultivate_Pack[3326688][5] = {}
	tNewPetsCultivate_Pack[3326688][5]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326688][5]["ItemChance"] = 1000
	tNewPetsCultivate_Pack[3326688][5]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326688][5]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326688][5]["RewardItem"][1]["Id"] = 720681 -- DeityCPPack[720681][属性:9][叠加:0][金币:0], 【表格】500天石
	tNewPetsCultivate_Pack[3326688][5]["RewardItem"][1]["Attr"] = "0 1" -- DeityCPPack*1
	tNewPetsCultivate_Pack[3326688][5]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326688][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326688][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 九天凰羽 - 40%
	tNewPetsCultivate_Pack[3326688][6] = {}
	tNewPetsCultivate_Pack[3326688][6]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326688][6]["ItemChance"] = 4000
	tNewPetsCultivate_Pack[3326688][6]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326688][6]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326688][6]["RewardItem"][1]["Id"] = 3326668 -- 九天凰羽[3326668][属性:9][叠加:10000][金币:0], 【表格】九天凰羽
	tNewPetsCultivate_Pack[3326688][6]["RewardItem"][1]["Attr"] = "0 10" -- 九天凰羽*10
	tNewPetsCultivate_Pack[3326688][6]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326688][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326688][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326689] = {}
	-- ===6级神兽之心
	-- ===索引: tNewPetsCultivate_Pack[3326689]
	-- ===删除:3326689,1
	-- ===
	tNewPetsCultivate_Pack[3326689]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPetsCultivate_Pack[3326689]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326689]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326689]["DeleteItem"][1]["Id"] = 3326689 -- 【库】6级圣灵果[属性:9]
	tNewPetsCultivate_Pack[3326689]["LogId"] = 12001699
	-- 276000天石 - 0.01%
	tNewPetsCultivate_Pack[3326689][1] = {}
	tNewPetsCultivate_Pack[3326689][1]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326689][1]["ItemChance"] = 1
	tNewPetsCultivate_Pack[3326689][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326689][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326689][1]["RewardItem"][1]["Id"] = 720691 -- KylinCPPack[720691][属性:9][叠加:0][金币:0], 【表格】276000天石
	tNewPetsCultivate_Pack[3326689][1]["RewardItem"][1]["Attr"] = "0 1" -- KylinCPPack*1
	tNewPetsCultivate_Pack[3326689][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326689][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326689][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewPetsCultivate_Pack[3326689][1]["Num"] = 1
	-- 54000天石 - 0.1%
	tNewPetsCultivate_Pack[3326689][2] = {}
	tNewPetsCultivate_Pack[3326689][2]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326689][2]["ItemChance"] = 10
	tNewPetsCultivate_Pack[3326689][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326689][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326689][2]["RewardItem"][1]["Id"] = 720690 -- RainbowCPPack[720690][属性:9][叠加:0][金币:0], 【表格】54000天石
	tNewPetsCultivate_Pack[3326689][2]["RewardItem"][1]["Attr"] = "0 1" -- RainbowCPPack*1
	tNewPetsCultivate_Pack[3326689][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326689][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326689][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 4000天石 - 37%
	tNewPetsCultivate_Pack[3326689][3] = {}
	tNewPetsCultivate_Pack[3326689][3]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326689][3]["ItemChance"] = 3700
	tNewPetsCultivate_Pack[3326689][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326689][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326689][3]["RewardItem"][1]["Id"] = 720689 -- ShadowCPPack[720689][属性:9][叠加:0][金币:0], 【表格】4000天石
	tNewPetsCultivate_Pack[3326689][3]["RewardItem"][1]["Attr"] = "0 1" -- ShadowCPPack*1
	tNewPetsCultivate_Pack[3326689][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326689][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326689][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 2000天石 - 12.89%
	tNewPetsCultivate_Pack[3326689][4] = {}
	tNewPetsCultivate_Pack[3326689][4]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326689][4]["ItemChance"] = 1289
	tNewPetsCultivate_Pack[3326689][4]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326689][4]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326689][4]["RewardItem"][1]["Id"] = 720688 -- JewelCPPack[720688][属性:9][叠加:0][金币:0], 【表格】2000天石
	tNewPetsCultivate_Pack[3326689][4]["RewardItem"][1]["Attr"] = "0 1" -- JewelCPPack*1
	tNewPetsCultivate_Pack[3326689][4]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326689][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326689][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 1000天石 - 10%
	tNewPetsCultivate_Pack[3326689][5] = {}
	tNewPetsCultivate_Pack[3326689][5]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326689][5]["ItemChance"] = 1000
	tNewPetsCultivate_Pack[3326689][5]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326689][5]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326689][5]["RewardItem"][1]["Id"] = 720687 -- CloudCPPack[720687][属性:9][叠加:0][金币:0], 【表格】1000天石
	tNewPetsCultivate_Pack[3326689][5]["RewardItem"][1]["Attr"] = "0 1" -- CloudCPPack*1
	tNewPetsCultivate_Pack[3326689][5]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326689][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326689][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 九天凰羽 - 40%
	tNewPetsCultivate_Pack[3326689][6] = {}
	tNewPetsCultivate_Pack[3326689][6]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326689][6]["ItemChance"] = 4000
	tNewPetsCultivate_Pack[3326689][6]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326689][6]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326689][6]["RewardItem"][1]["Id"] = 3326668 -- 九天凰羽[3326668][属性:9][叠加:10000][金币:0], 【表格】九天凰羽
	tNewPetsCultivate_Pack[3326689][6]["RewardItem"][1]["Attr"] = "0 20" -- 九天凰羽*20（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326689][6]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326689][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326689][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326690] = {}
	-- ===7级神兽之心
	-- ===索引: tNewPetsCultivate_Pack[3326690]
	-- ===删除:3326690,1
	-- ===
	tNewPetsCultivate_Pack[3326690]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNewPetsCultivate_Pack[3326690]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326690]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326690]["DeleteItem"][1]["Id"] = 3326690 -- 【库】7级圣灵果[属性:9]
	tNewPetsCultivate_Pack[3326690]["LogId"] = 12001699
	-- 690000天石 - 0.01%
	tNewPetsCultivate_Pack[3326690][1] = {}
	tNewPetsCultivate_Pack[3326690][1]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326690][1]["ItemChance"] = 1
	tNewPetsCultivate_Pack[3326690][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326690][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326690][1]["RewardItem"][1]["Id"] = 720697 -- PilgrimCPPack[720697][属性:9][叠加:0][金币:0], 【表格】690000天石
	tNewPetsCultivate_Pack[3326690][1]["RewardItem"][1]["Attr"] = "0 1" -- PilgrimCPPack*1
	tNewPetsCultivate_Pack[3326690][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326690][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326690][1]["RewardEffect"]["Effect"] = "angelwing"
	tNewPetsCultivate_Pack[3326690][1]["Num"] = 1
	-- 135000天石 - 0.1%
	tNewPetsCultivate_Pack[3326690][2] = {}
	tNewPetsCultivate_Pack[3326690][2]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326690][2]["ItemChance"] = 10
	tNewPetsCultivate_Pack[3326690][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326690][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326690][2]["RewardItem"][1]["Id"] = 720696 -- ZephyrCPPack[720696][属性:9][叠加:0][金币:0], 【表格】135000天石
	tNewPetsCultivate_Pack[3326690][2]["RewardItem"][1]["Attr"] = "0 1" -- ZephyrCPPack*1
	tNewPetsCultivate_Pack[3326690][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326690][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326690][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 10000天石 - 37%
	tNewPetsCultivate_Pack[3326690][3] = {}
	tNewPetsCultivate_Pack[3326690][3]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326690][3]["ItemChance"] = 3700
	tNewPetsCultivate_Pack[3326690][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326690][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326690][3]["RewardItem"][1]["Id"] = 720695 -- EarthCPPack[720695][属性:9][叠加:0][金币:0], 【表格】10000天石
	tNewPetsCultivate_Pack[3326690][3]["RewardItem"][1]["Attr"] = "0 1" -- EarthCPPack*1
	tNewPetsCultivate_Pack[3326690][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326690][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326690][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 5000天石 - 12.89%
	tNewPetsCultivate_Pack[3326690][4] = {}
	tNewPetsCultivate_Pack[3326690][4]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326690][4]["ItemChance"] = 1289
	tNewPetsCultivate_Pack[3326690][4]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326690][4]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326690][4]["RewardItem"][1]["Id"] = 720694 -- MoonCPPack[720694][属性:9][叠加:0][金币:0], 【表格】5000天石
	tNewPetsCultivate_Pack[3326690][4]["RewardItem"][1]["Attr"] = "0 1" -- MoonCPPack*1
	tNewPetsCultivate_Pack[3326690][4]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326690][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326690][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 2500天石 - 10%
	tNewPetsCultivate_Pack[3326690][5] = {}
	tNewPetsCultivate_Pack[3326690][5]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326690][5]["ItemChance"] = 1000
	tNewPetsCultivate_Pack[3326690][5]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326690][5]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326690][5]["RewardItem"][1]["Id"] = 720693 -- FogCPPack[720693][属性:9][叠加:0][金币:0], 【表格】2500天石
	tNewPetsCultivate_Pack[3326690][5]["RewardItem"][1]["Attr"] = "0 1" -- FogCPPack*1
	tNewPetsCultivate_Pack[3326690][5]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326690][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326690][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 九天凰羽 - 40%
	tNewPetsCultivate_Pack[3326690][6] = {}
	tNewPetsCultivate_Pack[3326690][6]["RandomItemChanceType"] = 2
	tNewPetsCultivate_Pack[3326690][6]["ItemChance"] = 4000
	tNewPetsCultivate_Pack[3326690][6]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326690][6]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326690][6]["RewardItem"][1]["Id"] = 3326668 -- 九天凰羽[3326668][属性:9][叠加:10000][金币:0], 【表格】九天凰羽
	tNewPetsCultivate_Pack[3326690][6]["RewardItem"][1]["Attr"] = "0 50" -- 九天凰羽*50（[错误]物品数量超10个）
	tNewPetsCultivate_Pack[3326690][6]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326690][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326690][6]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326713] = {}
	-- ===五星人物外套可选包
	-- ===索引:tNewPetsCultivate_Pack[3326713][1]
	-- ===删除:3326713,1
	-- ===
	tNewPetsCultivate_Pack[3326713][1] = {}
	tNewPetsCultivate_Pack[3326713][1]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326713][1]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326713][1]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326713][1]["DeleteItem"][1]["Id"] = 3326713 -- 【库】五星人物外套可选包[属性:9]
	tNewPetsCultivate_Pack[3326713][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326713][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326713][1]["RewardItem"][1]["Id"] = 195575 -- CommanderRobe(Wealth)[195575][属性:8][叠加:0][金币:0], 【表格】天蓬朱衣【鸿福】（赠）
	tNewPetsCultivate_Pack[3326713][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑CommanderRobe(Wealth)（赠）*1
	tNewPetsCultivate_Pack[3326713][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326713][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326713][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326713][2] = {}
	-- ===五星人物外套可选包
	-- ===索引:tNewPetsCultivate_Pack[3326713][2]
	-- ===删除:3326713,1
	-- ===
	tNewPetsCultivate_Pack[3326713][2]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326713][2]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326713][2]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326713][2]["DeleteItem"][1]["Id"] = 3326713 -- 【库】五星人物外套可选包[属性:9]
	tNewPetsCultivate_Pack[3326713][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326713][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326713][2]["RewardItem"][1]["Id"] = 195605 -- RockingRomance(Fantasy)[195605][属性:0][叠加:0][金币:0], 【表格】浪漫进行时【梦幻版】（赠）
	tNewPetsCultivate_Pack[3326713][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑RockingRomance(Fantasy)（赠）*1
	tNewPetsCultivate_Pack[3326713][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326713][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326713][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326713][3] = {}
	-- ===五星人物外套可选包
	-- ===索引:tNewPetsCultivate_Pack[3326713][3]
	-- ===删除:3326713,1
	-- ===
	tNewPetsCultivate_Pack[3326713][3]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326713][3]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326713][3]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326713][3]["DeleteItem"][1]["Id"] = 3326713 -- 【库】五星人物外套可选包[属性:9]
	tNewPetsCultivate_Pack[3326713][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326713][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326713][3]["RewardItem"][1]["Id"] = 189695 -- MonkeyKingArmor(Heaven)[189695][属性:0][叠加:0][金币:0], 【表格】大圣魔铠【齐天】（赠）
	tNewPetsCultivate_Pack[3326713][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑MonkeyKingArmor(Heaven)（赠）*1
	tNewPetsCultivate_Pack[3326713][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326713][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326713][3]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326714] = {}
	-- ===五星坐骑外套可选包
	-- ===索引:tNewPetsCultivate_Pack[3326714][1]
	-- ===删除:3326714,1
	-- ===
	tNewPetsCultivate_Pack[3326714][1] = {}
	tNewPetsCultivate_Pack[3326714][1]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326714][1]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326714][1]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326714][1]["DeleteItem"][1]["Id"] = 3326714 -- 【库】五星坐骑外套可选包[属性:9]
	tNewPetsCultivate_Pack[3326714][1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326714][1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326714][1]["RewardItem"][1]["Id"] = 200613 -- FierceCloud[200613][属性:0][叠加:0][金币:0], 【表格】赤霄火云（赠）
	tNewPetsCultivate_Pack[3326714][1]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑FierceCloud（赠）*1
	tNewPetsCultivate_Pack[3326714][1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326714][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326714][1]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326714][2] = {}
	-- ===五星坐骑外套可选包
	-- ===索引:tNewPetsCultivate_Pack[3326714][2]
	-- ===删除:3326714,1
	-- ===
	tNewPetsCultivate_Pack[3326714][2]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326714][2]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326714][2]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326714][2]["DeleteItem"][1]["Id"] = 3326714 -- 【库】五星坐骑外套可选包[属性:9]
	tNewPetsCultivate_Pack[3326714][2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326714][2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326714][2]["RewardItem"][1]["Id"] = 200614 -- PacificCloud[200614][属性:0][叠加:0][金币:0], 【表格】蓝海苍云（赠）
	tNewPetsCultivate_Pack[3326714][2]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑PacificCloud（赠）*1
	tNewPetsCultivate_Pack[3326714][2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326714][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326714][2]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[3326714][3] = {}
	-- ===五星坐骑外套可选包
	-- ===索引:tNewPetsCultivate_Pack[3326714][3]
	-- ===删除:3326714,1
	-- ===
	tNewPetsCultivate_Pack[3326714][3]["LogId"] = 12001699
	tNewPetsCultivate_Pack[3326714][3]["DeleteItem"] = {}
	tNewPetsCultivate_Pack[3326714][3]["DeleteItem"][1] = {}
	tNewPetsCultivate_Pack[3326714][3]["DeleteItem"][1]["Id"] = 3326714 -- 【库】五星坐骑外套可选包[属性:9]
	tNewPetsCultivate_Pack[3326714][3]["RewardItem"] = {}
	tNewPetsCultivate_Pack[3326714][3]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[3326714][3]["RewardItem"][1]["Id"] = 200629 -- AuspiciousCloud[200629][属性:0][叠加:0][金币:0], 【表格】流金祥云（赠）
	tNewPetsCultivate_Pack[3326714][3]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1" -- 1%神佑AuspiciousCloud（赠）*1
	tNewPetsCultivate_Pack[3326714][3]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[3326714][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[3326714][3]["RewardEffect"]["Effect"] = "angelwing"

	-- -- 普通训练奖励
	-- tNewPetsCultivate_Pack[1] = {}
	-- tNewPetsCultivate_Pack[1]["LogId"] = 12001699
	-- tNewPetsCultivate_Pack[1]["RewardItem"] = {}
	-- tNewPetsCultivate_Pack[1]["RewardItem"][1] = {}
	-- tNewPetsCultivate_Pack[1]["RewardItem"][1]["Id"] = 3326669 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹（赠）
	-- tNewPetsCultivate_Pack[1]["RewardItem"][1]["Attr"] = "0 1 3" -- FavoredTrainingPill（赠）*20（[错误]物品数量超10个）
	-- tNewPetsCultivate_Pack[1]["RewardEffect"] = {}
	-- tNewPetsCultivate_Pack[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_Pack[1]["RewardEffect"]["Effect"] = "angelwing"

	-- -- 片区怪物掉落
	-- tNewPetsCultivate_Pack[2] = {}
	-- tNewPetsCultivate_Pack[2]["LogId"] = 12001699
	-- tNewPetsCultivate_Pack[2]["RewardItem"] = {}
	-- tNewPetsCultivate_Pack[2]["RewardItem"][1] = {}
	-- tNewPetsCultivate_Pack[2]["RewardItem"][1]["Id"] = 3326667 -- FavoredTrainingPill[3003124][属性:0][叠加:10000][金币:0], 【表格】免费强炼丹（赠）
	-- tNewPetsCultivate_Pack[2]["RewardItem"][1]["Attr"] = "0 1 3" -- FavoredTrainingPill（赠）*20（[错误]物品数量超10个）
	-- tNewPetsCultivate_Pack[2]["RewardEffect"] = {}
	-- tNewPetsCultivate_Pack[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_Pack[2]["RewardEffect"]["Effect"] = "angelwing"

		-- ===普通训练奖励
	-- ===索引:tNewPetsCultivate_Pack[1]
	-- ===
	tNewPetsCultivate_Pack[1] = {}
	tNewPetsCultivate_Pack[1]["LogId"] = 12001699
	tNewPetsCultivate_Pack[1]["RewardItem"] = {}
	tNewPetsCultivate_Pack[1]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[1]["RewardItem"][1]["Id"] = 3326669 -- DailyTrainingChest[3326669][属性:9][叠加:10000][金币:0], 【表格】每日驯兽礼盒
	tNewPetsCultivate_Pack[1]["RewardItem"][1]["Attr"] = "0 1" -- DailyTrainingChest*1
	tNewPetsCultivate_Pack[1]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[1]["RewardEffect"]["Effect"] = "angelwing"


	tNewPetsCultivate_Pack[2] = {}
	-- ===片区怪物掉落
	-- ===索引:tNewPetsCultivate_Pack[2]
	-- ===
	tNewPetsCultivate_Pack[2]["LogId"] = 12001699
	tNewPetsCultivate_Pack[2]["RewardItem"] = {}
	tNewPetsCultivate_Pack[2]["RewardItem"][1] = {}
	tNewPetsCultivate_Pack[2]["RewardItem"][1]["Id"] = 3326667 -- BeastTrainingBook[3326667][属性:9][叠加:10000][金币:0], 【表格】神兽训练手册
	tNewPetsCultivate_Pack[2]["RewardItem"][1]["Attr"] = "0 1" -- BeastTrainingBook*1
	tNewPetsCultivate_Pack[2]["RewardEffect"] = {}
	tNewPetsCultivate_Pack[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNewPetsCultivate_Pack[2]["RewardEffect"]["Effect"] = "angelwing"


-- local tNewPetsCultivate_ReturnReward = {}
	-- -- ===每日驯兽礼盒
	-- -- ===索引:tNewPetsCultivate_ReturnReward[3326684]
	-- -- ===删除:3326684,1
	-- -- ===
	-- tNewPetsCultivate_ReturnReward[3326684] = {}
	-- tNewPetsCultivate_ReturnReward[3326684]["LogId"] = 12001699
	-- tNewPetsCultivate_ReturnReward[3326684]["DeleteItem"] = {}
	-- tNewPetsCultivate_ReturnReward[3326684]["DeleteItem"][1] = {}
	-- tNewPetsCultivate_ReturnReward[3326684]["DeleteItem"][1]["Id"] = 3326684 -- 【库】Lv.1SacredFruit[属性:9]
	-- tNewPetsCultivate_ReturnReward[3326684]["RewardEMoney"] = {}
	-- tNewPetsCultivate_ReturnReward[3326684]["RewardEMoney"]["Value"] = 5 -- 天石, 【需求】5天石
	-- tNewPetsCultivate_ReturnReward[3326684]["RewardEMoney"]["NewEmoneyLog"] = "1000	1271"
	-- tNewPetsCultivate_ReturnReward[3326684]["RewardEffect"] = {}
	-- tNewPetsCultivate_ReturnReward[3326684]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_ReturnReward[3326684]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewPetsCultivate_ReturnReward[3326685] = {}
	-- -- ===每日驯兽礼盒
	-- -- ===索引:tNewPetsCultivate_ReturnReward[3326685]
	-- -- ===删除:3326685,1
	-- -- ===
	-- tNewPetsCultivate_ReturnReward[3326685]["LogId"] = 12001699
	-- tNewPetsCultivate_ReturnReward[3326685]["DeleteItem"] = {}
	-- tNewPetsCultivate_ReturnReward[3326685]["DeleteItem"][1] = {}
	-- tNewPetsCultivate_ReturnReward[3326685]["DeleteItem"][1]["Id"] = 3326685 -- 【库】Lv.2SacredFruit[属性:9]
	-- tNewPetsCultivate_ReturnReward[3326685]["RewardEMoney"] = {}
	-- tNewPetsCultivate_ReturnReward[3326685]["RewardEMoney"]["Value"] = 25 -- 天石, 【需求】25天石
	-- tNewPetsCultivate_ReturnReward[3326685]["RewardEMoney"]["NewEmoneyLog"] = "1000	1271"
	-- tNewPetsCultivate_ReturnReward[3326685]["RewardEffect"] = {}
	-- tNewPetsCultivate_ReturnReward[3326685]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_ReturnReward[3326685]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewPetsCultivate_ReturnReward[3326686] = {}
	-- -- ===每日驯兽礼盒
	-- -- ===索引:tNewPetsCultivate_ReturnReward[3326686]
	-- -- ===删除:3326686,1
	-- -- ===
	-- tNewPetsCultivate_ReturnReward[3326686]["LogId"] = 12001699
	-- tNewPetsCultivate_ReturnReward[3326686]["DeleteItem"] = {}
	-- tNewPetsCultivate_ReturnReward[3326686]["DeleteItem"][1] = {}
	-- tNewPetsCultivate_ReturnReward[3326686]["DeleteItem"][1]["Id"] = 3326686 -- 【库】Lv.3SacredFruit[属性:9]
	-- tNewPetsCultivate_ReturnReward[3326686]["RewardEMoney"] = {}
	-- tNewPetsCultivate_ReturnReward[3326686]["RewardEMoney"]["Value"] = 50 -- 天石, 【需求】50天石
	-- tNewPetsCultivate_ReturnReward[3326686]["RewardEMoney"]["NewEmoneyLog"] = "1000	1271"
	-- tNewPetsCultivate_ReturnReward[3326686]["RewardEffect"] = {}
	-- tNewPetsCultivate_ReturnReward[3326686]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_ReturnReward[3326686]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewPetsCultivate_ReturnReward[3326687] = {}
	-- -- ===每日驯兽礼盒
	-- -- ===索引:tNewPetsCultivate_ReturnReward[3326687]
	-- -- ===删除:3326687,1
	-- -- ===
	-- tNewPetsCultivate_ReturnReward[3326687]["LogId"] = 12001699
	-- tNewPetsCultivate_ReturnReward[3326687]["DeleteItem"] = {}
	-- tNewPetsCultivate_ReturnReward[3326687]["DeleteItem"][1] = {}
	-- tNewPetsCultivate_ReturnReward[3326687]["DeleteItem"][1]["Id"] = 3326687 -- 【库】Lv.4SacredFruit[属性:9]
	-- tNewPetsCultivate_ReturnReward[3326687]["RewardEMoney"] = {}
	-- tNewPetsCultivate_ReturnReward[3326687]["RewardEMoney"]["Value"] = 250 -- 天石, 【需求】250天石
	-- tNewPetsCultivate_ReturnReward[3326687]["RewardEMoney"]["NewEmoneyLog"] = "1000	1271"
	-- tNewPetsCultivate_ReturnReward[3326687]["RewardEffect"] = {}
	-- tNewPetsCultivate_ReturnReward[3326687]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_ReturnReward[3326687]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewPetsCultivate_ReturnReward[3326688] = {}
	-- -- ===每日驯兽礼盒
	-- -- ===索引:tNewPetsCultivate_ReturnReward[3326688]
	-- -- ===删除:3326688,1
	-- -- ===
	-- tNewPetsCultivate_ReturnReward[3326688]["LogId"] = 12001699
	-- tNewPetsCultivate_ReturnReward[3326688]["DeleteItem"] = {}
	-- tNewPetsCultivate_ReturnReward[3326688]["DeleteItem"][1] = {}
	-- tNewPetsCultivate_ReturnReward[3326688]["DeleteItem"][1]["Id"] = 3326688 -- 【库】Lv.5SacredFruit[属性:9]
	-- tNewPetsCultivate_ReturnReward[3326688]["RewardEMoney"] = {}
	-- tNewPetsCultivate_ReturnReward[3326688]["RewardEMoney"]["Value"] = 500 -- 天石, 【需求】500天石
	-- tNewPetsCultivate_ReturnReward[3326688]["RewardEMoney"]["NewEmoneyLog"] = "1000	1271"
	-- tNewPetsCultivate_ReturnReward[3326688]["RewardEffect"] = {}
	-- tNewPetsCultivate_ReturnReward[3326688]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_ReturnReward[3326688]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewPetsCultivate_ReturnReward[3326689] = {}
	-- -- ===每日驯兽礼盒
	-- -- ===索引:tNewPetsCultivate_ReturnReward[3326689]
	-- -- ===删除:3326689,1
	-- -- ===
	-- tNewPetsCultivate_ReturnReward[3326689]["LogId"] = 12001699
	-- tNewPetsCultivate_ReturnReward[3326689]["DeleteItem"] = {}
	-- tNewPetsCultivate_ReturnReward[3326689]["DeleteItem"][1] = {}
	-- tNewPetsCultivate_ReturnReward[3326689]["DeleteItem"][1]["Id"] = 3326689 -- 【库】Lv.6SacredFruit[属性:9]
	-- tNewPetsCultivate_ReturnReward[3326689]["RewardEMoney"] = {}
	-- tNewPetsCultivate_ReturnReward[3326689]["RewardEMoney"]["Value"] = 1000 -- 天石, 【需求】1000天石
	-- tNewPetsCultivate_ReturnReward[3326689]["RewardEMoney"]["NewEmoneyLog"] = "1000	1271"
	-- tNewPetsCultivate_ReturnReward[3326689]["RewardEffect"] = {}
	-- tNewPetsCultivate_ReturnReward[3326689]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_ReturnReward[3326689]["RewardEffect"]["Effect"] = "angelwing"


	-- tNewPetsCultivate_ReturnReward[3326690] = {}
	-- -- ===每日驯兽礼盒
	-- -- ===索引:tNewPetsCultivate_ReturnReward[3326690]
	-- -- ===删除:3326690,1
	-- -- ===
	-- tNewPetsCultivate_ReturnReward[3326690]["LogId"] = 12001699
	-- tNewPetsCultivate_ReturnReward[3326690]["DeleteItem"] = {}
	-- tNewPetsCultivate_ReturnReward[3326690]["DeleteItem"][1] = {}
	-- tNewPetsCultivate_ReturnReward[3326690]["DeleteItem"][1]["Id"] = 3326690 -- 【库】Lv.7SacredFruit[属性:9]
	-- tNewPetsCultivate_ReturnReward[3326690]["RewardEMoney"] = {}
	-- tNewPetsCultivate_ReturnReward[3326690]["RewardEMoney"]["Value"] = 2500 -- 天石, 【需求】2500天石
	-- tNewPetsCultivate_ReturnReward[3326690]["RewardEMoney"]["NewEmoneyLog"] = "1000	1271"
	-- tNewPetsCultivate_ReturnReward[3326690]["RewardEffect"] = {}
	-- tNewPetsCultivate_ReturnReward[3326690]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	-- tNewPetsCultivate_ReturnReward[3326690]["RewardEffect"]["Effect"] = "angelwing"




---------------------------------------------------------------逻辑部分
-- 购买领养神兽
function NewPetsCultivate_AdopPet(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return
	end 
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nEventTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	local nPrice = tNewPetsCultivate_Data["Price"]
	if nData1 >= 1 then -- 判断是否已经领养神兽
		return
	end 
	-- 判断是否购买了房屋
	--判断房屋等级
	local nHouseId = Get_UserHouseId()
	-- if Get_MapResLev(nHouseId) <2 then
		-- return false
	-- end
	if nHouseId == 0 then 
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NoHouse"])
		return
	end 
	if not User_CanPutMoney2Bag(-nPrice) then    -- 判断金币是否足够
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NoPrice"])
		return
	end 
	if User_AddMoneyNew(-nPrice,12001699) then 
		Task_SetStatistic(nEventType1,nDataType1,1,1)
		Task_SetStcTimestamp(nEventType1,nDataType1,0)
		
		Task_SetStatistic(nEventTypeLevel,nDataTypeLevel,1,1)
		Task_SetStcTimestamp(nEventTypeLevel,nDataTypeLevel,0)
		
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		
		local tBuyLog = tNewPetsCultivate_Log["EMonyeLog"]["BuyPet"]
		Sys_SaveEmoneyBuy(tBuyLog)
		User_TalkChannel2005(tNewPetsCultivate_Text["Sys_MsgBox"]["AdoptPet"])
	end 
end 

-- 判断是否已经领养神兽
function NewPetsCultivate_ChkAdopPet()
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return false
	end 
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		return false
	else
		return true
	end 
end 

function NewPetsCultivate_ChkAdopPetShop()
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityShopTime"]) then 
		return false
	end 
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		return false
	else
		return true
	end 
end 

-- -- 进入房屋刷出NPC
-- function NewPetsCultivate_GetIntoRoom(MapId)

-- end 

--粉粉
function NewPetsCultivate_NPCFenFen(nNpcId)
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return 
	end
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		User_OpenDialog(0,nNpcId)
	else
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- LinkNpcMain
	end 
end 

-- 普通训练
function NewPetsCultivate_OrdinaryTrain(nItemId)
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return 
	end
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NoItem1"])
		return
	end 
	-- 记录是否使用神兽训练手册
	local nEventTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["EventType"]
	local nDataTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["DataType"]
	local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd)
	-- 记录是否使用圣灵果 进行高级训练
	local nEventTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["EventType"]
	local nDataTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["DataType"]
	local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen)
	-- 记录神兽等级
	local nEventTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	-- 记录玩家当天第几次普通训练
	local nEventTypeOrdTiems = tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["EventType"]
	local nDataTypeOrdTiems = tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["DataType"]
	-- 判断是否正处于训练中
	-- if nDataSen >= 1 or nDataOrd >= 1 then
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	local nGenId = tNewPetsCultivate_Data["GeneratorId"][nMapLev]
	local nMonsterId = tNewPetsCultivate_Data["MonsterId"][nDataLevel]
	local nUserMapId = Get_UserMapId()
	if nHouseId ~= nUserMapId then        -- 判断玩家是否在自己的房屋中，
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NotHouse"])
		return
	end 
	local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)   -- 判断地图上怪物数量
	if nMonsterNum > 0 then 
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["Training"])
		return
	end 
	if Task_StcInterval(nEventTypeOrdTiems,nDataTypeOrdTiems,1,4) then  --时间戳是否隔天
		Task_SetStatistic(nEventTypeOrdTiems,nDataTypeOrdTiems,0,1)     --隔天重置普通训练次数
		Task_SetStcTimestamp(nEventTypeOrdTiems,nDataTypeOrdTiems,0)
	end 
	local nDataOrdTiems = Get_UserStatisticValue(nEventTypeOrdTiems,nDataTypeOrdTiems)
	local nOrdTrainTimes = tNewPetsCultivate_Data["OrdTrainTimes"][nMapLev]
	if nDataOrdTiems >= nOrdTrainTimes then      -- 判断当日训练次数是否已经达到当前房屋等级的训练次数上限
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NoTimes"])
		return
	end 
	-- if Item_DelItem(nItemId) then
		local nPosX = tNewPetsCultivate_Data["MonsterPosXY"][nMapLev][1]
		local nPosY = tNewPetsCultivate_Data["MonsterPosXY"][nMapLev][2]
		-- if Monster_AddMonster(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
		if Monster_AddAndCount(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
			Task_SetStatistic(nEventTypeOrd,nDataTypeOrd,1,1)          -- 记录刷怪掩码
			Task_SetStcTimestamp(nEventTypeOrd,nDataTypeOrd,0)
			
			Task_SetStatistic(nEventTypeSen,nDataTypeSen,0,1)          -- 清除高级训练刷怪掩码 （怪物可能被其他玩家击杀）
			Task_SetStcTimestamp(nEventTypeSen,nDataTypeSen,0)
			User_TalkChannel2005(tNewPetsCultivate_Text["Sys_MsgBox"]["ReleasePet"])
		end 
	-- end 
end 
	
-- 高级训练
function NewPetsCultivate_SeniorTrain(nItemId,nNum)
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return 
	end
	-- local sItemIdName = Get_ItemName(nItemId)
	local sItemIdName = Get_ItemtypeName(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tNewPetsCultivate_Text["Sys_MsgBox"]["NoItem2"],sItemIdName))
		return
	end 
	-- 记录是否使用神兽训练手册
	local nEventTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["EventType"]
	local nDataTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["DataType"]
	local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd)
	-- 记录是否使用圣灵果 进行高级训练
	local nEventTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["EventType"]
	local nDataTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["DataType"]
	local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen)
	-- 记录神兽等级
	local nEventTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	-- 判断是否正处于训练中
	-- if nDataSen >= 1 or nDataOrd >= 1 then 
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	local nGenId = tNewPetsCultivate_Data["GeneratorId"][nMapLev]
	local nMonsterId = tNewPetsCultivate_Data["MonsterId"][nDataLevel]
	local nUserMapId = Get_UserMapId()
	if nHouseId ~= nUserMapId then        -- 判断玩家是否在自己的房屋中，
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NotHouse"])
		return
	end 
	local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)   -- 判断地图上怪物数量
	if nMonsterNum > 0 then 
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["Training"])
		return
	end 
	-- if Item_DelItem(nItemId) then
		local nPosX = tNewPetsCultivate_Data["MonsterPosXY"][nMapLev][1]
		local nPosY = tNewPetsCultivate_Data["MonsterPosXY"][nMapLev][2]
		-- if Monster_AddMonster(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
		if Monster_AddAndCount(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
			Task_SetStatistic(nEventTypeSen,nDataTypeSen,nNum,1)          -- 记录刷怪掩码 记录使用了几级圣灵果
			Task_SetStcTimestamp(nEventTypeSen,nDataTypeSen,0)
			Task_SetStatistic(nEventTypeOrd,nDataTypeOrd,0,1)          -- 清除低级训练刷怪掩码 （怪物可能被其他玩家击杀）
			Task_SetStcTimestamp(nEventTypeOrd,nDataTypeOrd,0)
			User_TalkChannel2005(tNewPetsCultivate_Text["Sys_MsgBox"]["ReleasePet"])
		end 
	-- end 
end 

-- 高级训练对白跳转
function NewPetsCultivate_SeniorTrainText(nNpcId,nItemId,nNum)
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return 
	end
	-- local sItemIdName = Get_ItemName(nItemId)
	local sItemIdName = Get_ItemtypeName(nItemId)
	if not Item_ChkMulItem(nItemId,nItemId,1) then
		Sys_MsgBox(string.format(tNewPetsCultivate_Text["Sys_MsgBox"]["NoItem2"],sItemIdName),"LinkNpcGossipFunc_New</N>" ..nNpcId.. "</S>2-3")
		return
	end 
	local nMaxEMoney = tNewPetsCultivate_Data["EMoneyMax"][nNum]
	local nMaxExp = tNewPetsCultivate_Data["SeniorTrainExp"][nNum]
	tNpcGossip[nNpcId]["Text251"] = string.format(tNewPetsCultivate_Text[nNpcId]["Text251"],nNum,nMaxEMoney,nMaxExp)
	tNpcGossip[nNpcId]["OptionFunc251"] = "NewPetsCultivate_SeniorTrain</N>" ..nItemId.. "</N>" ..nNum
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end 

-- 咕咕咕活动中对白
function NewPetsCultivate_NpcGuGuText()
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return false
	end 
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		-- 记录神兽等级
		local nEventTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["EventType"]
		local nDataTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["DataType"]
		local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
		-- 记录玩家当天第几次普通训练
		local nEventTypeOrdTiems = tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["EventType"]
		local nDataTypeOrdTiems = tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["DataType"]
		-- 记录神兽当前经验
		local nEventTypeExp = tNewPetsCultivate_Stc["PetExperience"]["EventType"]
		local nDataTypeExp = tNewPetsCultivate_Stc["PetExperience"]["DataType"]
		local nDataExp = Get_UserStatisticValue(nEventTypeExp,nDataTypeExp)
		if Task_StcInterval(nEventTypeOrdTiems,nDataTypeOrdTiems,1,4) then  --时间戳是否隔天
			Task_SetStatistic(nEventTypeOrdTiems,nDataTypeOrdTiems,0,1)     --隔天重置普通训练次数
			Task_SetStcTimestamp(nEventTypeOrdTiems,nDataTypeOrdTiems,0)
		end 
		local nDataOrdTiems = Get_UserStatisticValue(nEventTypeOrdTiems,nDataTypeOrdTiems)
		local nTimes = tNewPetsCultivate_Data["OrdTrainTimes"][nMapLev] - nDataOrdTiems 
		local nExp
		if nDataLevel >= 15 then 
			nExp = 0 
		else
			-- User_TalkChannel2005("nDataExp = " ..nDataExp)
			nExp = tNewPetsCultivate_Data["PetExperience"][nDataLevel] - nDataExp
		end 
		tNpcGossip[25209]["Text133"] = string.format(tNewPetsCultivate_Text[25209]["Text133"],nTimes)
		tNpcGossip[25209]["Text134"] = string.format(tNewPetsCultivate_Text[25209]["Text134"],nDataLevel)
		tNpcGossip[25209]["Text135"] = string.format(tNewPetsCultivate_Text[25209]["Text135"],nExp)
		return true
	else
		return false
	end 
end 

-- 怪物死亡触发
function NewPetsCultivate_DieMonster(nMonsterId)
	local nHouseId = Get_UserHouseId()
	local nMapLev = Get_MapResLev(nHouseId)
	local nUserMapId = Get_UserMapId()
	-- User_TalkChannel2005("nHouseId =" ..nHouseId)
	Monster_Death(nMonsterId,nUserMapId)        -- 怪物数量-1
	-- Sys_SetTempData(1,nUserMapId,nMonsterId,0)       -- 怪物数量置0
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return 
	end
	if nHouseId ~= nUserMapId then    -- 不在自己的房屋无法获得奖励
		Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NotHouse"])
		return
	end 
	-- 记录是否使用神兽训练手册
	local nEventTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["EventType"]
	local nDataTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["DataType"]
	local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd)
	-- 记录是否使用圣灵果 进行高级训练
	local nEventTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["EventType"]
	local nDataTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["DataType"]
	local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen)
	-- 记录神兽等级
	local nEventTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	-- 记录神兽当前经验
	local nEventTypeExp = tNewPetsCultivate_Stc["PetExperience"]["EventType"]
	local nDataTypeExp = tNewPetsCultivate_Stc["PetExperience"]["DataType"]
	local nDataExp = Get_UserStatisticValue(nEventTypeExp,nDataTypeExp)
	local nSpace = 1
	if nDataOrd >= 1 then  -- 使用神兽训练手册训练神兽
		Task_SetStatistic(nEventTypeOrd,nDataTypeOrd,0,1)          -- 清空刷怪掩码
		Task_SetStcTimestamp(nEventTypeOrd,nDataTypeOrd,0)
		-- if nHouseId ~= nUserMapId then    -- 不在自己的房屋无法获得奖励
			-- Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NotHouse"])
			-- return
		-- end 
		if not User_CheckLeftSpace(nSpace) then     -- 背包空间不足
			Sys_MsgBox(string.format(tNewPetsCultivate_Text["Sys_MsgBox"]["NoSpacePet"],nSpace))
			return
		end
		local nDelItemId = tNewPetsCultivate_Data["OrdTrainId"]
		if not Item_ChkMulItem(nDelItemId,nDelItemId,1) then
			Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NoItem1"])
			return
		end 
		-- 记录玩家当天第几次普通训练
		local nEventTypeOrdTiems = tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["EventType"]
		local nDataTypeOrdTiems = tNewPetsCultivate_Stc["OrdinaryTrainTimes"]["DataType"]
		if Task_StcInterval(nEventTypeOrdTiems,nDataTypeOrdTiems,1,4) then  --时间戳是否隔天
			Task_SetStatistic(nEventTypeOrdTiems,nEventTypeOrdTiems,0,1)     --隔天重置普通训练次数
			Task_SetStcTimestamp(nEventTypeOrdTiems,nEventTypeOrdTiems,0)
		end 
		local nDataOrdTiems = Get_UserStatisticValue(nEventTypeOrdTiems,nDataTypeOrdTiems)
		local nOrdTrainTimes = tNewPetsCultivate_Data["OrdTrainTimes"][nMapLev]
		if nDataOrdTiems >= nOrdTrainTimes then      -- 判断当日训练次数是否已经达到当前房屋等级的训练次数上限
			Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NoTimes"])
			return
		end 
		
		if Item_DelItem(nDelItemId) then
			local tTextLog = string.format(tNewPetsCultivate_Log["DeleteLog"],nDelItemId,1)
			Sys_SaveActionFestivalLog(tTextLog)
			local tEMoneyLog = tNewPetsCultivate_Log["EMonyeLog"][nDelItemId]
			Sys_SaveEmoneyBuy(tEMoneyLog)
			
			Task_AddStatistic(nEventTypeOrdTiems,nDataTypeOrdTiems,1,1)          -- 记录普通训练次数
			Task_SetStcTimestamp(nEventTypeOrdTiems,nDataTypeOrdTiems,0)
			
			local nNewDataExp = nDataExp + 10000 
			if nDataLevel >= 15 then  -- 等级满级后不再获得经验
				nNewDataExp = 0 
			end 
			if nNewDataExp >= tNewPetsCultivate_Data["PetExperience"][nDataLevel] then     -- 判断神兽是否升级
				nNewDataExp = nNewDataExp - tNewPetsCultivate_Data["PetExperience"][nDataLevel]
				
				Task_AddStatistic(nEventTypeLevel,nDataTypeLevel,1,1)          -- 神兽等级+1
				Task_SetStcTimestamp(nEventTypeLevel,nDataTypeLevel,0)
				-- local nItemId = tNewPetsCultivate_Data["LevelPack"][nDataLevel+1]
				-- RewardTemplate_UseItemAndMsg(tNewPetsCultivate_Pack[nItemId])
				--邮件发奖
				local nUserId = Get_UserId()
				NewPetsCultivate_Mail(nUserId)
			end 
			Task_SetStatistic(nEventTypeExp,nDataTypeExp,nNewDataExp,1)          -- 重置当前经验
			Task_SetStcTimestamp(nEventTypeExp,nDataTypeExp,0)
			-- 给奖励
			RewardTemplate_UseItemAndMsg(tNewPetsCultivate_Pack[1])
		end 
	end 
	if nDataSen >= 1 then 
		Task_SetStatistic(nEventTypeSen,nDataTypeSen,0,1)          -- 清空刷怪掩码
		Task_SetStcTimestamp(nEventTypeSen,nDataTypeSen,0)
		-- if nHouseId ~= nUserMapId then    -- 不在自己的房屋无法获得奖励
			-- Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["NotHouse"])
			-- return
		-- end 
		if not User_CheckLeftSpace(nSpace) then     -- 背包空间不足
			Sys_MsgBox(string.format(tNewPetsCultivate_Text["Sys_MsgBox"]["NoSpacePet"],nSpace))
			return
		end
		local nDelItemId = tNewPetsCultivate_Data["SeniorTrainId"][nDataSen]
		-- local sItemIdName = Get_ItemName(nDelItemId)
		local sItemIdName = Get_ItemtypeName(nDelItemId)
		if not Item_ChkMulItem(nDelItemId,nDelItemId,1) then
			Sys_MsgBox(string.format(tNewPetsCultivate_Text["Sys_MsgBox"]["NoItem2"],sItemIdName))
			return
		end
		if Item_DelItem(nDelItemId) then
			local tTextLog = string.format(tNewPetsCultivate_Log["DeleteLog"],nDelItemId,1)
			Sys_SaveActionFestivalLog(tTextLog)
			local tEMoneyLog = tNewPetsCultivate_Log["EMonyeLog"][nDelItemId]
			Sys_SaveEmoneyBuy(tEMoneyLog)
			
			local nGlobalId = tNewPetsCultivate_Data["GlocalId"]
			local nGloData = Get_SysDynaGlobalData(nGlobalId,0)
			local nEMoney = tNewPetsCultivate_Data["SeniorTrainEMoney"][nDataSen]
			local nNewGloData = nGloData + nEMoney
			Sys_SetSynaGlobalData0(nGlobalId,nNewGloData)  -- 将魔兽之心的价格加入奖池
			local nAddExp = tNewPetsCultivate_Data["SeniorTrainExp"][nDataSen]
			local nNewDataExp = nDataExp + nAddExp 
			if nDataLevel >= 15 then  -- 等级满级后不再获得经验
				nNewDataExp = 0 
			end 
			if nNewDataExp >= tNewPetsCultivate_Data["PetExperience"][nDataLevel] then     -- 判断神兽是否升级
				nNewDataExp = nNewDataExp - tNewPetsCultivate_Data["PetExperience"][nDataLevel]
				
				Task_AddStatistic(nEventTypeLevel,nDataTypeLevel,1,1)          -- 神兽等级+1
				Task_SetStcTimestamp(nEventTypeLevel,nDataTypeLevel,0)
				-- local nItemId = tNewPetsCultivate_Data["LevelPack"][nDataLevel+1]
				-- RewardTemplate_UseItemAndMsg(tNewPetsCultivate_Pack[nItemId])
				--邮件发奖
				local nUserId = Get_UserId()
				NewPetsCultivate_Mail(nUserId)
			end 
			Task_SetStatistic(nEventTypeExp,nDataTypeExp,nNewDataExp,1)          -- 重置当前经验
			Task_SetStcTimestamp(nEventTypeExp,nDataTypeExp,0)
			local nItemId = tNewPetsCultivate_Data["SeniorTrainId"][nDataSen]
			local nFlag,tNewPetAward = Probabil_RandomAward(tNewPetsCultivate_Pack,nItemId)
			-- if tNewPetAward[1]["tAward"][1]["RewardEMoney"] ~= nil then 
				local nRandonItemId = tNewPetAward[1]["tAward"][1]["RewardItem"][1]["Id"]
				-- local nAddEMoney = tNewPetAward[1]["tAward"][1]["RewardEMoney"]["Value"]
				local nAddEMoney = tNewPetsCultivate_Data["RewardEMoney"][nRandonItemId]
				if (nNewGloData - nAddEMoney) < 0 then   -- 奖池减去玩家将获得的天石 要大于0
					RewardTemplate_UseItemAndMsg(tNewPetsCultivate_Pack[nItemId][6])
					local tFeatherLog = tNewPetsCultivate_Log["EMonyeLog"]["Feather"]
					Sys_SaveEmoneyBuy(tFeatherLog)
				else
					nNewGloData = nNewGloData - nAddEMoney
					Sys_SetSynaGlobalData0(nGlobalId,nNewGloData)  -- 将魔兽之心的天石奖励扣除奖池
					RewardTemplate_UseItemAndMsg(tNewPetAward[1]["tAward"][1])
					local tCPsLog = string.format(tNewPetsCultivate_Log["EMonyeLog"]["CPs"],-nAddEMoney,-nAddEMoney)
					Sys_SaveEmoneyBuy(tCPsLog)
					if tNewPetAward[1]["tAward"][1]["Num"] ~= nil and tNewPetAward[1]["tAward"][1]["Num"] == 1 then 
						local sName = Get_UserName()
						local nMaxReward = tNewPetsCultivate_Data["EMoneyMax"][nDataSen]
						Sys_SystemBroadcast(string.format(tNewPetsCultivate_Text["Notice"][1],sName,nMaxReward))
					end 
				end 
			-- end 
		end 
	end 
end 

-- 进入房屋创建NPC和怪物
function NewPetsCultivate_CreatNpc()
	local nHouseId = Get_UserHouseId()        -- 玩家房屋ID
	local nMapLev = Get_MapResLev(nHouseId)   -- 玩家房屋等级
	local nUserMapId = Get_UserMapId()
	local nNpcNum2 = Get_NpcCountByName(tNewPetsCultivate_Text["NpcName"][2])
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		if nNpcNum2 >= 1 then 
			Npc_DelDynaNpc(nHouseId,"name",tNewPetsCultivate_Text["NpcName"][2])
			return
		end 
	end 
		
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return 
	end 
	-- 判断地图上是否有NPC 没有则创建
	-- Npc_DelDynaNpc(nMapId,sField,sData)
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 <= 0 then 
		return
	end 
	if nHouseId == nUserMapId then 
		local nNpcNum1 = Get_NpcCountByName(tNewPetsCultivate_Text["NpcName"][1])
		local nNpcNum2 = Get_NpcCountByName(tNewPetsCultivate_Text["NpcName"][2])
		-- if nNpcNum1 <= 0 then 
			-- local sName = tNewPetsCultivate_Data["Npc"][1]["Name"]
			-- local nNpcType = tNewPetsCultivate_Data["Npc"][1]["Type"]
			-- local nSort = tNewPetsCultivate_Data["Npc"][1]["Sort"]
			-- local nLookFace = tNewPetsCultivate_Data["Npc"][1]["Lookface"]
			-- local nTask0 = tNewPetsCultivate_Data["Npc"][1]["nTask0"]
			-- local nPosX = tNewPetsCultivate_Data["NPCPosXY"][nMapLev][1][1]
			-- local nPosY = tNewPetsCultivate_Data["NPCPosXY"][nMapLev][1][2]
			-- Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,0,nHouseId,nPosX,nPosY,0,0,0,nTask0)
		-- end 
		if nNpcNum2 <= 0 then 
			local sName = tNewPetsCultivate_Data["Npc"][2]["Name"]
			local nNpcType = tNewPetsCultivate_Data["Npc"][2]["Type"]
			local nSort = tNewPetsCultivate_Data["Npc"][2]["Sort"]
			local nLookFace = tNewPetsCultivate_Data["Npc"][2]["Lookface"]
			local nTask0 = tNewPetsCultivate_Data["Npc"][2]["nTask0"]
			local nPosX = tNewPetsCultivate_Data["NPCPosXY"][nMapLev][2][1]
			local nPosY = tNewPetsCultivate_Data["NPCPosXY"][nMapLev][2][2]
			Npc_CreateDynaNpc(sName,nNpcType,nSort,nLookFace,0,0,nHouseId,nPosX,nPosY,0,0,0,nTask0)
		end 
		
		-- 记录是否使用神兽训练手册
		local nEventTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["EventType"]
		local nDataTypeOrd = tNewPetsCultivate_Stc["OrdinaryTrain"]["DataType"]
		local nDataOrd = Get_UserStatisticValue(nEventTypeOrd,nDataTypeOrd)
		-- 记录是否使用圣灵果 进行高级训练
		local nEventTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["EventType"]
		local nDataTypeSen = tNewPetsCultivate_Stc["SeniorTrain"]["DataType"]
		local nDataSen = Get_UserStatisticValue(nEventTypeSen,nDataTypeSen)
		-- 判断是否正处于训练中
		if nDataSen >= 1 or nDataOrd >= 1 then 
			-- 记录神兽等级
			local nEventTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["EventType"]
			local nDataTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["DataType"]
			local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
			local nMonsterId = tNewPetsCultivate_Data["MonsterId"][nDataLevel]
			local nMonsterNum = Get_SysTempData(1,nHouseId,nMonsterId)   -- 判断地图上怪物数量
			-- if nMonsterNum <= 0 then 
				-- local nMapLev = Get_MapResLev(nHouseId)
				-- local nPosX = tNewPetsCultivate_Data["MonsterPosXY"][nMapLev][1]
				-- local nPosY = tNewPetsCultivate_Data["MonsterPosXY"][nMapLev][2]
				-- -- if Monster_AddMonster(nHouseId,nPosX,nPosY,nGenId,nMonsterId) then   -- 指定位置刷怪
				-- Monster_AddAndCount(nHouseId,nPosX,nPosY,nGenId,nMonsterId)   -- 指定位置刷怪
			-- end 
		end 
	end 
end 


-- 邮件发奖
function NewPetsCultivate_Mail(nUserId)

	-- 记录神兽等级
	local nEventTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["EventType"]
	local nDataTypeLevel = tNewPetsCultivate_Stc["PetLevel"]["DataType"]
	local nDataLevel = Get_UserStatisticValue(nEventTypeLevel,nDataTypeLevel)
	if nDataLevel > 15 or nDataLevel < 2 then 
		return
	end 
	local sSender = tNewPetsCultivate_Text["Mail"]["Name"]
	local sTitle = tNewPetsCultivate_Text["Mail"]["ZhuTi"]
	local sContent = tNewPetsCultivate_Text["Mail"]["NeiRong"]
	local nMailActionId = tNewPetsCultivate_Data["Malil"]["ActionId"][nDataLevel]
	Sys_SendMail(nUserId,0,0,nMailActionId,0,7,sSender,sTitle,sContent)
	
end

-- 删除NPC
function NewPetsCultivate_DelNpc()
	local nHouseId = Get_UserHouseId()
	local nUserMapId = Get_UserMapId()
	local nNpcNum1 = Get_NpcCountByName(tNewPetsCultivate_Text["NpcName"][1])
	local nNpcNum2 = Get_NpcCountByName(tNewPetsCultivate_Text["NpcName"][2])
	if nHouseId ~= nUserMapId then 
		return
	end 
	-- if nNpcNum1 >= 1 then 
		-- Npc_DelDynaNpc(nHouseId,"name",tNewPetsCultivate_Text["NpcName"][1])
	-- end 
	if nNpcNum2 >= 1 then 
		Npc_DelDynaNpc(nHouseId,"name",tNewPetsCultivate_Text["NpcName"][2])
	end 
end 

function NewPetsCultivate_LinkNpc(nNpcId)
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return 
	end
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-4")
	end 
end 

function NewPetsCultivate_RewardPack(nItemId,nNum)
	local bJudge = TermsOfUse_Main(nItemId,tNewPetsCultivate_Pack[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tNewPetsCultivate_Pack[nItemId][nNum])
end 


function NewPetsCultivate_MonsterReward()
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return
	end 
	-- 记录玩家当天片区怪物掉落神兽训练手册数量
	local nEventTypeMonRewNum = tNewPetsCultivate_Stc["MonsterRewNum"]["EventType"]
	local nDataTypeMonRewNum = tNewPetsCultivate_Stc["MonsterRewNum"]["DataType"]
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
		-- Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["GetMax"])
		return
	end 
	local nFlag,tAward = Probabil_RandomAward(tNewPetsCultivate_Random["MonsterReward"],1)
	local nItemNum = tAward[1]["tAward"][1]["Item_1"]
	if nItemNum == 2 then 
		Task_AddStatistic(nEventTypeMonRewNum,nDataTypeMonRewNum,1,1) 
		Task_SetStcTimestamp(nEventTypeMonRewNum,nDataTypeMonRewNum,0)
		RewardTemplate_UseItemAndMsg(tNewPetsCultivate_Pack[2])
		-- local nNewDataMonRewNum = Get_UserStatisticValue(nEventTypeMonRewNum,nDataTypeMonRewNum)
		if nDataMonRewNum == 14 then 
			Sys_MsgBox(tNewPetsCultivate_Text["Sys_MsgBox"]["GetMax"])
		end 
	end 
end 
-- 物品寻路
function NewPetsCultivate_FindNpc(nItemId)
	if CommonFunc_GetBeforeActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		return
	end 
	if CommonFunc_GetAfterActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		local nItemNum = Get_CountItemType(nItemId,0)
		local tTextLog = string.format(tNewPetsCultivate_Log["DeleteLog"],nItemId,nItemNum)
		if Item_DelMulItem(nItemId,nItemId,nItemNum) then 
			Sys_SaveActionFestivalLog(tTextLog)
		end 
		return
	end 
	NpcPosition_PathFind(tNewPetsCultivate_Data["NpcId"][1])
end 
--过期返回半价
-- function NewPetsCultivate_ReturnMoney(nItemId)
	-- if CommonFunc_GetBeforeActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		-- return
	-- end 
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"]) then 
		-- local bJudge = TermsOfUse_Main(nItemId,tNewPetsCultivate_ReturnReward[nItemId])
		-- if not bJudge then
			-- return
		-- end
		-- RewardTemplate_UseItemAndMsg(tNewPetsCultivate_ReturnReward[nItemId])
		-- return
	-- end 
	-- NpcPosition_PathFind(tNewPetsCultivate_Data["NpcId"][1])
-- end 


--------------------------------------------------对白部分
--莫妮卡
tNpcFace[5058] = 230
tNpcGossip[25207] = tNpcGossip[25207] or DefaultNpc:new{}
tNpcGossip[25207]["OptionHidden"] = 1
tNpcGossip[25207]["DialogueText"] = tNewPetsCultivate_Text[25207]
--活动前
tNpcGossip[25207]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25207]["tOption1-1"] = {111}
tNpcGossip[25207]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NewPetsCultivate"]["ActivityShopTime"])
end
--活动后
tNpcGossip[25207]["Text1-2"] = {121}
tNpcGossip[25207]["tOption1-2"] = {121}
tNpcGossip[25207]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["NewPetsCultivate"]["ActivityShopTime"])
end
--活动中  ====未领养对白
tNpcGossip[25207]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[25207]["tOption1-3"] = {131,132,133}
tNpcGossip[25207]["ChkFunc1-3"] = function ()
	return NewPetsCultivate_ChkAdopPetShop()
end
tNpcGossip[25207]["OptionPoint131"] = "2-1"   -- 领养神兽
tNpcGossip[25207]["OptionChkFunc131"] = function ()
	return NewPetsCultivate_ChkAdopPet()
end 
tNpcGossip[25207]["OptionPoint132"] = "2-3"  -- 查看神兽训练规则
tNpcGossip[25207]["OptionFunc133"] = "User_OpenExchangeShop</N>25207"    --打开兑换商店
-- tNpcGossip[25207]["OptionPoint131"] = "2-1"

-- 【活动中】     ====领养后对白
tNpcGossip[25207]["Text1-4"] = {141,142,143,144}
tNpcGossip[25207]["tOption1-4"] = {141,142,143}
tNpcGossip[25207]["ChkFunc1-4"] = function ()
	if not Sys_ChkFullTime(tActivityTime["NewPetsCultivate"]["ActivityShopTime"]) then 
		return false
	end 
	local nEventType1 = tNewPetsCultivate_Stc["AdopPet"]["EventType"] 
	local nDataType1 = tNewPetsCultivate_Stc["AdopPet"]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	if nData1 >= 1 then  -- 判断是否已经领养神兽
		return true
	else
		return false
	end 
end
tNpcGossip[25207]["OptionPoint141"] = "2-3"  -- 查看神兽训练规则
tNpcGossip[25207]["OptionFunc142"] = "User_OpenExchangeShop</N>25207"    --打开兑换商店
tNpcGossip[25207]["OptionPoint143"] = "3-1"  -- 查看神兽升阶奖励

-- 接1、领养神兽
tNpcGossip[25207]["Text2-1"] = {211}
tNpcGossip[25207]["tOption2-1"] = {211,212}
tNpcGossip[25207]["OptionFunc211"] = "NewPetsCultivate_AdopPet</N>25207" -- 确认领养
-- 接1-1、确认领养
tNpcGossip[25207]["Text2-2"] = {221}
tNpcGossip[25207]["tOption2-2"] = {221,222}

-- 接 查看神兽训练规则
tNpcGossip[25207]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[25207]["tOption2-3"] = {231}

-- 接3、查看神兽升阶奖励
tNpcGossip[25207]["Text3-1"] = {311,312,313,314,315,316,317,318,319,3110,3111,3112,3113}
tNpcGossip[25207]["tOption3-1"] = {311,312}
tNpcGossip[25207]["OptionPoint311"] = "4-1"  -- 查看11至15阶升阶奖励
-- 接3-1、查看11至15阶升阶奖励
tNpcGossip[25207]["Text4-1"] = {411,412,413,414,415,416,417,418}
tNpcGossip[25207]["tOption4-1"] = {411,412}
tNpcGossip[25207]["OptionPoint411"] = "3-1"  -- 查看神兽升阶奖励


-- 粉粉
tNpcFace[2146] = 2581
tNpcGossip[25208] = tNpcGossip[25208] or DefaultNpc:new{}
tNpcGossip[25208]["OptionHidden"] = 1
tNpcGossip[25208]["DialogueText"] = tNewPetsCultivate_Text[25208]
--活动前
tNpcGossip[25208]["Text1-1"] = {111,112}
tNpcGossip[25208]["tOption1-1"] = {111}
-- tNpcGossip[25208]["ChkFunc1-1"] = function ()
	-- return CommonFunc_GetBeforeActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"])
-- end
tNpcGossip[25208]["OptionFunc111"] = "NpcPosition_PathFind</N>25207"

-- 火羽凤凰
tNpcFace[5473] = 199
tNpcGossip[25209] = tNpcGossip[25209] or DefaultNpc:new{}
tNpcGossip[25209]["OptionHidden"] = 1
tNpcGossip[25209]["DialogueText"] = tNewPetsCultivate_Text[25209]
--活动前
tNpcGossip[25209]["Text1-1"] = {111,112,113,114}
tNpcGossip[25209]["tOption1-1"] = {111}
tNpcGossip[25209]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"])
end
--活动后
tNpcGossip[25209]["Text1-2"] = {121}
tNpcGossip[25209]["tOption1-2"] = {121}
tNpcGossip[25209]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["NewPetsCultivate"]["ActivityTime"])
end
--活动中  ==已领养
tNpcGossip[25209]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[25209]["tOption1-3"] = {131,132,133,134}
tNpcGossip[25209]["ChkFunc1-3"] = function ()
	return NewPetsCultivate_NpcGuGuText()
end
tNpcGossip[25209]["OptionFunc131"] = "NewPetsCultivate_OrdinaryTrain</N>3326667"
tNpcGossip[25209]["OptionPoint132"] = "2-4"
tNpcGossip[25209]["OptionPoint133"] = "2-3"
-- tNpcGossip[25209]["OptionFunc134"] = "NewPetsCultivate_DelNpc"
tNpcGossip[25209]["OptionPoint134"] = "3-1"
-- tNpcGossip[25209]["OptionFunc134"] = "NewPetsCultivate_MonsterReward"

--活动中  ==未领养
tNpcGossip[25209]["Text1-4"] = {141,142,143}
tNpcGossip[25209]["tOption1-4"] = {141}
tNpcGossip[25209]["ChkFunc1-4"] = function ()
	return NewPetsCultivate_ChkAdopPet()
end

-- 接3、查看神兽训练规则
tNpcGossip[25209]["Text2-3"] = {231,232,233,234,235,236,237,238,239}
tNpcGossip[25209]["tOption2-3"] = {231}
-- 高级训练
tNpcGossip[25209]["Text2-4"] = {241}
tNpcGossip[25209]["tOption2-4"] = {241,242,243,244,245,246,247}
tNpcGossip[25209]["OptionFunc241"] = "NewPetsCultivate_SeniorTrainText</N>25209</N>3326684</N>1"
tNpcGossip[25209]["OptionFunc242"] = "NewPetsCultivate_SeniorTrainText</N>25209</N>3326685</N>2"
tNpcGossip[25209]["OptionFunc243"] = "NewPetsCultivate_SeniorTrainText</N>25209</N>3326686</N>3"
tNpcGossip[25209]["OptionFunc244"] = "NewPetsCultivate_SeniorTrainText</N>25209</N>3326687</N>4"
tNpcGossip[25209]["OptionFunc245"] = "NewPetsCultivate_SeniorTrainText</N>25209</N>3326688</N>5"
tNpcGossip[25209]["OptionFunc246"] = "NewPetsCultivate_SeniorTrainText</N>25209</N>3326689</N>6"
tNpcGossip[25209]["OptionFunc247"] = "NewPetsCultivate_SeniorTrainText</N>25209</N>3326690</N>7"
-- 【二次确认】
tNpcGossip[25209]["Text2-5"] = {251}
tNpcGossip[25209]["tOption2-5"] = {251,252}

tNpcGossip[25209]["Text3-1"] = {311}
tNpcGossip[25209]["tOption3-1"] = {311,312}
tNpcGossip[25209]["OptionFunc311"] = "NewPetsCultivate_DelNpc"




-- 超值回馈礼盒
tItemFace[3326669] = 2500
tItem[3326669] = tItem[3326669] or {}
tItem[3326669]["DialogueText"] = tNewPetsCultivate_Text[3326669]
tItem[3326669]["Text1-1"] = {111}
tItem[3326669]["tOption1-1"] = {111,112,113}
tItem[3326669]["OptionFunc111"] = "NewPetsCultivate_RewardPack</N>3326669</N>1"
tItem[3326669]["OptionFunc112"] = "NewPetsCultivate_RewardPack</N>3326669</N>2"
tItem[3326669]["OptionFunc113"] = "NewPetsCultivate_RewardPack</N>3326669</N>3"

-- 五星人物外套可选包
tItemFace[3326713] = 1039
tItem[3326713] = tItem[3326713] or {}
tItem[3326713]["DialogueText"] = tNewPetsCultivate_Text[3326713]
tItem[3326713]["Text1-1"] = {111}
tItem[3326713]["tOption1-1"] = {111,112,113}
tItem[3326713]["OptionFunc111"] = "NewPetsCultivate_RewardPack</N>3326713</N>1"
tItem[3326713]["OptionFunc112"] = "NewPetsCultivate_RewardPack</N>3326713</N>2"
tItem[3326713]["OptionFunc113"] = "NewPetsCultivate_RewardPack</N>3326713</N>3"

-- 五星坐骑外套可选包
tItemFace[3326714] = 1332
tItem[3326714] = tItem[3326714] or {}
tItem[3326714]["DialogueText"] = tNewPetsCultivate_Text[3326714]
tItem[3326714]["Text1-1"] = {111}
tItem[3326714]["tOption1-1"] = {111,112,113}
tItem[3326714]["OptionFunc111"] = "NewPetsCultivate_RewardPack</N>3326714</N>1"
tItem[3326714]["OptionFunc112"] = "NewPetsCultivate_RewardPack</N>3326714</N>2"
tItem[3326714]["OptionFunc113"] = "NewPetsCultivate_RewardPack</N>3326714</N>3"




tItem[3326670] = tItem[3326670] or {}
tItem[3326670]["Function"] = function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tNewPetsCultivate_Pack[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tNewPetsCultivate_Pack[nItemId])
end
tItem[3326671] = tItem[3326670] or {}
tItem[3326672] = tItem[3326670] or {}
tItem[3326673] = tItem[3326670] or {}
tItem[3326674] = tItem[3326670] or {}
tItem[3326675] = tItem[3326670] or {}
tItem[3326676] = tItem[3326670] or {}
tItem[3326677] = tItem[3326670] or {}
tItem[3326678] = tItem[3326670] or {}
tItem[3326679] = tItem[3326670] or {}
tItem[3326680] = tItem[3326670] or {}
tItem[3326681] = tItem[3326670] or {}
tItem[3326682] = tItem[3326670] or {}
tItem[3326683] = tItem[3326670] or {}


tItem[3326667] = tItem[3326667] or {}
tItem[3326667]["Function"] = function(nItemId,sItemName)
	NewPetsCultivate_FindNpc(nItemId)
end
tItem[3326668] = tItem[3326667] or {}

tItem[3326684] = tItem[3326684] or {}
tItem[3326684]["Function"] = function(nItemId,sItemName)
	-- NewPetsCultivate_ReturnMoney(nItemId)
	NewPetsCultivate_FindNpc(nItemId)
end
tItem[3326685] = tItem[3326684] or {}
tItem[3326686] = tItem[3326684] or {}
tItem[3326687] = tItem[3326684] or {}
tItem[3326688] = tItem[3326684] or {}
tItem[3326689] = tItem[3326684] or {}
tItem[3326690] = tItem[3326684] or {}




---------------------------------------------怪物模板
-- 火羽凤凰
local tNewPetsCultivate_KillMonster = {}
tNewPetsCultivate_KillMonster[1] = {}
tNewPetsCultivate_KillMonster[1]["Function"]= NewPetsCultivate_DieMonster
tNewPetsCultivate_KillMonster[1]["MonsterId"] = {5759,5760,5761,5762,5763,5764,5765,5766,5767,5768,5769,5770,5771,5772,5773}
table.insert(tMonsterDrop_AreaLoad,tNewPetsCultivate_KillMonster[1])

-- 五大片区怪物掉落
-- 激情服
tNewPetsCultivate_KillMonster[2] = {}
tNewPetsCultivate_KillMonster[2]["Function"]= NewPetsCultivate_MonsterReward
tNewPetsCultivate_KillMonster[2]["MonsterId"]= {4833,4834,4835,4836,4838,4839,4840,4841,4868,4842,4843,4844,4845,4869,4870,4846,4847,4848,4849,4871,
	4850,4851,4852,4853,4854,4872,4874,4855,4856,4857,4858,4873,4875,4876,4877,4878,4879,4859,4860,4862,4863,4865,4867}
table.insert(tMonsterDrop_AreaLoad,tNewPetsCultivate_KillMonster[2])
-- 普通服
tNewPetsCultivate_KillMonster[3] = {}
tNewPetsCultivate_KillMonster[3]["Function"]= NewPetsCultivate_MonsterReward
table.insert(tMonsterDrop_AreaLoad,tNewPetsCultivate_KillMonster[3])



