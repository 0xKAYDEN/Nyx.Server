------------------------------------------------------------------------------------
--Name：            180122[英文征服][活动脚本]金币服除魔得银两
--Creator:      黄啸
--Created:     2018/01/22
------------------------------------------------------------------------------------
--任务需求
-- 除魔得银两
-----------------------------------------------------------------------------------
--命名前缀 GoldBossdeal_

--logid：12000991


----动态表 51999
--data0 每天的金币数量
--data1 用来记录现在是第几周

----动态表申请17个，记录前50名玩家
--52000-52016

-----动态码记录玩家随机生成的星级悬赏boss
----52023 52025
---52023
--data0 记录第一个星级boss
--data1 记录第一个星级boss x坐标
--data2 记录第三个星级boss y坐标

--data3 记录第二个星级boss
--data4 记录第二个星级boss x坐标
--data5 记录第二个星级boss y坐标

---52025
--data0 记录第三个星级boss
--data1 记录第三个星级boss x坐标
--data2 记录第三个星级boss y坐标
--data3 记录今日是否刷新过boss


----掩码
--172 24 世界boss是否已领取奖励
--172 25 记录玩家为第几周(暂时没用)
--172 26 玩家是否参与击杀世界boss
--172 29 玩家今日是否掉落个人boss票卷
--172 32 银两返利卷今日已掉落一张了，提醒玩家今日已获得，只提醒一次
--172 41 判断今日是否已经完成刷新排行版（暂时没用）


---------------------------------------------常量--------------------------------------------------
--掩码
local tGoldBossdeal_Stc = {}
--世界boss是否已领取奖励
tGoldBossdeal_Stc[1] = {}
tGoldBossdeal_Stc[1]["EventType"] = 172
tGoldBossdeal_Stc[1]["DataType"] = 24
--玩家是否参加击杀世界boss
tGoldBossdeal_Stc[2] = {}
tGoldBossdeal_Stc[2]["EventType"] = 172
tGoldBossdeal_Stc[2]["DataType"] = 26
--玩家今日是否掉落个人boss票卷
tGoldBossdeal_Stc[3] = {}
tGoldBossdeal_Stc[3]["EventType"] = 172
tGoldBossdeal_Stc[3]["DataType"] = 29
--银两返利卷今日已掉落一张了，提醒玩家今日已获得，只提醒一次
tGoldBossdeal_Stc[4] = {}
tGoldBossdeal_Stc[4]["EventType"] = 172
tGoldBossdeal_Stc[4]["DataType"] = 32


--动态码
local tGoldBossdeal_Global = {}

tGoldBossdeal_Global[1] = 51999
tGoldBossdeal_Global[2] = 52000
tGoldBossdeal_Global[3] = 52025

--金币总量
local tGoldBossdeal_Money = {}
--第一周
tGoldBossdeal_Money[1] = {}
tGoldBossdeal_Money[1][1] = {}
tGoldBossdeal_Money[1][1]["Money"] = 225000000
tGoldBossdeal_Money[1][1]["MoneyF"] = 180000000
tGoldBossdeal_Money[1][1]["Chance"] = 3500
tGoldBossdeal_Money[1][2] = {}
tGoldBossdeal_Money[1][2]["Money"] = 180000000
tGoldBossdeal_Money[1][2]["MoneyF"] = 112500000
tGoldBossdeal_Money[1][2]["Chance"] = 3300
tGoldBossdeal_Money[1][3] = {}
tGoldBossdeal_Money[1][3]["Money"] = 112500000
tGoldBossdeal_Money[1][3]["MoneyF"] = 56250000
tGoldBossdeal_Money[1][3]["Chance"] = 3000
tGoldBossdeal_Money[1][4] = {}
tGoldBossdeal_Money[1][4]["Money"] = 56250000
tGoldBossdeal_Money[1][4]["MoneyF"] = 22500000
tGoldBossdeal_Money[1][4]["Chance"] = 2800
tGoldBossdeal_Money[1][5] = {}
tGoldBossdeal_Money[1][5]["Money"] = 22500000
tGoldBossdeal_Money[1][5]["MoneyF"] = 0
tGoldBossdeal_Money[1][5]["Chance"] = 2500
--第二周
tGoldBossdeal_Money[2] = {}
tGoldBossdeal_Money[2][1] = {}
tGoldBossdeal_Money[2][1]["Money"] = 200000000
tGoldBossdeal_Money[2][1]["MoneyF"] = 180000000
tGoldBossdeal_Money[2][1]["Chance"] = 3500
tGoldBossdeal_Money[2][2] = {}
tGoldBossdeal_Money[2][2]["Money"] = 180000000
tGoldBossdeal_Money[2][2]["MoneyF"] = 112500000
tGoldBossdeal_Money[2][2]["Chance"] = 3300
tGoldBossdeal_Money[2][3] = {}
tGoldBossdeal_Money[2][3]["Money"] = 112500000
tGoldBossdeal_Money[2][3]["MoneyF"] = 56250000
tGoldBossdeal_Money[2][3]["Chance"] = 3000
tGoldBossdeal_Money[2][4] = {}
tGoldBossdeal_Money[2][4]["Money"] = 56250000
tGoldBossdeal_Money[2][4]["MoneyF"] = 22500000
tGoldBossdeal_Money[2][4]["Chance"] = 2800
tGoldBossdeal_Money[2][5] = {}
tGoldBossdeal_Money[2][5]["Money"] = 22500000
tGoldBossdeal_Money[2][5]["MoneyF"] = 0
tGoldBossdeal_Money[2][5]["Chance"] = 2500
--第三周
tGoldBossdeal_Money[3] = {}
tGoldBossdeal_Money[3][1] = {}
tGoldBossdeal_Money[3][1]["Money"] = 150000000
tGoldBossdeal_Money[3][1]["MoneyF"] = 112500000
tGoldBossdeal_Money[3][1]["Chance"] = 3300
tGoldBossdeal_Money[3][2] = {}
tGoldBossdeal_Money[3][2]["Money"] = 112500000
tGoldBossdeal_Money[3][2]["MoneyF"] = 56250000
tGoldBossdeal_Money[3][2]["Chance"] = 3000
tGoldBossdeal_Money[3][3] = {}
tGoldBossdeal_Money[3][3]["Money"] = 56250000
tGoldBossdeal_Money[3][3]["MoneyF"] = 22500000
tGoldBossdeal_Money[3][3]["Chance"] = 2800
tGoldBossdeal_Money[3][4] = {}
tGoldBossdeal_Money[3][4]["Money"] = 22500000
tGoldBossdeal_Money[3][4]["MoneyF"] = 0
tGoldBossdeal_Money[3][4]["Chance"] = 2500
--第四周
tGoldBossdeal_Money[4] = {}
tGoldBossdeal_Money[4][1] = {}
tGoldBossdeal_Money[4][1]["Money"] = 100000000
tGoldBossdeal_Money[4][1]["MoneyF"] = 56250000
tGoldBossdeal_Money[4][1]["Chance"] = 3000
tGoldBossdeal_Money[4][2] = {}
tGoldBossdeal_Money[4][2]["Money"] = 56250000
tGoldBossdeal_Money[4][2]["MoneyF"] = 22500000
tGoldBossdeal_Money[4][2]["Chance"] = 2800
tGoldBossdeal_Money[4][3] = {}
tGoldBossdeal_Money[4][3]["Money"] = 22500000
tGoldBossdeal_Money[4][3]["MoneyF"] = 0
tGoldBossdeal_Money[4][3]["Chance"] = 2500

--在敦煌，冰封，海底将怪物掉落金币概率
local tGoldBossdeal_DropMoney = {}
tGoldBossdeal_DropMoney["Monstertype"] = {}
tGoldBossdeal_DropMoney["Monstertype"][1] = {}
tGoldBossdeal_DropMoney["Monstertype"][1]["ItemChanceSum"] = 10000

tGoldBossdeal_DropMoney["Monstertype"][1][1] = {}
tGoldBossdeal_DropMoney["Monstertype"][1][1]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][1][1]["ItemChance"] = 3500--3500
tGoldBossdeal_DropMoney["Monstertype"][1][1]["Item_1"] = "Money"

tGoldBossdeal_DropMoney["Monstertype"][1][2] = {}
tGoldBossdeal_DropMoney["Monstertype"][1][2]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][1][2]["ItemChance"] = 6500--6500
tGoldBossdeal_DropMoney["Monstertype"][1][2]["Item_1"] = "No"

--确认在敦煌，冰封，海底将怪物掉落，掉落金币具体概率
tGoldBossdeal_DropMoney["Monstertype"][2] = {}
tGoldBossdeal_DropMoney["Monstertype"][2]["ItemChanceSum"] = 10000

tGoldBossdeal_DropMoney["Monstertype"][2][1] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][1]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][1]["ItemChance"] = 450
tGoldBossdeal_DropMoney["Monstertype"][2][1]["Item_1"] = 10

tGoldBossdeal_DropMoney["Monstertype"][2][2] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][2]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][2]["ItemChance"] = 1000
tGoldBossdeal_DropMoney["Monstertype"][2][2]["Item_1"] = 30

tGoldBossdeal_DropMoney["Monstertype"][2][3] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][3]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][3]["ItemChance"] = 1300
tGoldBossdeal_DropMoney["Monstertype"][2][3]["Item_1"] = 50

tGoldBossdeal_DropMoney["Monstertype"][2][4] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][4]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][4]["ItemChance"] = 1800
tGoldBossdeal_DropMoney["Monstertype"][2][4]["Item_1"] = 80

tGoldBossdeal_DropMoney["Monstertype"][2][5] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][5]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][5]["ItemChance"] = 2000
tGoldBossdeal_DropMoney["Monstertype"][2][5]["Item_1"] = 100

tGoldBossdeal_DropMoney["Monstertype"][2][6] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][6]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][6]["ItemChance"] = 1500
tGoldBossdeal_DropMoney["Monstertype"][2][6]["Item_1"] = 300

tGoldBossdeal_DropMoney["Monstertype"][2][7] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][7]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][7]["ItemChance"] = 800
tGoldBossdeal_DropMoney["Monstertype"][2][7]["Item_1"] = 500

tGoldBossdeal_DropMoney["Monstertype"][2][8] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][8]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][8]["ItemChance"] = 500
tGoldBossdeal_DropMoney["Monstertype"][2][8]["Item_1"] = 800

tGoldBossdeal_DropMoney["Monstertype"][2][9] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][9]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][9]["ItemChance"] = 400
tGoldBossdeal_DropMoney["Monstertype"][2][9]["Item_1"] = 1000

tGoldBossdeal_DropMoney["Monstertype"][2][10] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][10]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][10]["ItemChance"] = 150
tGoldBossdeal_DropMoney["Monstertype"][2][10]["Item_1"] = 2000

tGoldBossdeal_DropMoney["Monstertype"][2][11] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][11]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][11]["ItemChance"] = 60
tGoldBossdeal_DropMoney["Monstertype"][2][11]["Item_1"] = 5000

tGoldBossdeal_DropMoney["Monstertype"][2][12] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][12]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][12]["ItemChance"] = 30
tGoldBossdeal_DropMoney["Monstertype"][2][12]["Item_1"] = 8000

tGoldBossdeal_DropMoney["Monstertype"][2][13] = {}
tGoldBossdeal_DropMoney["Monstertype"][2][13]["RandomItemChanceType"] = 2
tGoldBossdeal_DropMoney["Monstertype"][2][13]["ItemChance"] = 10
tGoldBossdeal_DropMoney["Monstertype"][2][13]["Item_1"] = 10000

--10名以后的世界boss奖励
local tGoldBossdeal_AfterBossaward = {}
tGoldBossdeal_AfterBossaward[11] = {}
tGoldBossdeal_AfterBossaward[11]["RewardStrengthValue"] = {}
tGoldBossdeal_AfterBossaward[11]["RewardStrengthValue"]["Value"] = 2000
tGoldBossdeal_AfterBossaward[11]["LogId"] = 12000991

tGoldBossdeal_AfterBossaward[31] = {}
tGoldBossdeal_AfterBossaward[31]["RewardStrengthValue"] = {}
tGoldBossdeal_AfterBossaward[31]["RewardStrengthValue"]["Value"] = 1000
tGoldBossdeal_AfterBossaward[31]["LogId"] = 12000991

tGoldBossdeal_AfterBossaward[51] = {}
tGoldBossdeal_AfterBossaward[51]["RewardStrengthValue"] = {}
tGoldBossdeal_AfterBossaward[51]["RewardStrengthValue"]["Value"] = 500
tGoldBossdeal_AfterBossaward[51]["LogId"] = 12000991

--个人boss掉落银两折扣卷
local tGoldBossdeal_SelfBossaward = {}
tGoldBossdeal_SelfBossaward[3307245] = {}
tGoldBossdeal_SelfBossaward[3307245][1] = {}
tGoldBossdeal_SelfBossaward[3307245][1]["ItemChanceSum"] = 10000

tGoldBossdeal_SelfBossaward[3307245][1][1] = {}
tGoldBossdeal_SelfBossaward[3307245][1][1]["RandomItemChanceType"] = 2
tGoldBossdeal_SelfBossaward[3307245][1][1]["ItemChance"] = 3300--3300
tGoldBossdeal_SelfBossaward[3307245][1][1]["Item_1"] = 3307245
tGoldBossdeal_SelfBossaward[3307245][1][2] = {}
tGoldBossdeal_SelfBossaward[3307245][1][2]["RandomItemChanceType"] = 2
tGoldBossdeal_SelfBossaward[3307245][1][2]["ItemChance"] = 6700--6700
tGoldBossdeal_SelfBossaward[3307245][1][2]["Item_1"] = nil

--星级boss对应相关掉落的物品
local tGoldBossdeal_StarMonsterDrop = {}
tGoldBossdeal_StarMonsterDrop[4420] = {}
tGoldBossdeal_StarMonsterDrop[4420]["ItemId"] = 3307323
tGoldBossdeal_StarMonsterDrop[4420]["ActionId"] = 568281
tGoldBossdeal_StarMonsterDrop[4420]["Awardmoney"] = 75000
tGoldBossdeal_StarMonsterDrop[4420]["MapId"] = 1002
tGoldBossdeal_StarMonsterDrop[4428] = {}
tGoldBossdeal_StarMonsterDrop[4428]["ItemId"] = 3307324
tGoldBossdeal_StarMonsterDrop[4428]["ActionId"] = 568282 
tGoldBossdeal_StarMonsterDrop[4428]["Awardmoney"] = 150000
tGoldBossdeal_StarMonsterDrop[4428]["MapId"] = 1011
tGoldBossdeal_StarMonsterDrop[4436] = {}
tGoldBossdeal_StarMonsterDrop[4436]["ItemId"] = 3307325
tGoldBossdeal_StarMonsterDrop[4436]["ActionId"] = 568283
tGoldBossdeal_StarMonsterDrop[4436]["Awardmoney"] = 300000
tGoldBossdeal_StarMonsterDrop[4436]["MapId"] = 1020
tGoldBossdeal_StarMonsterDrop[4444] = {}
tGoldBossdeal_StarMonsterDrop[4444]["ItemId"] = 3307326
tGoldBossdeal_StarMonsterDrop[4444]["ActionId"] = 568284
tGoldBossdeal_StarMonsterDrop[4444]["Awardmoney"] = 750000
tGoldBossdeal_StarMonsterDrop[4444]["MapId"] = 1000
tGoldBossdeal_StarMonsterDrop[4452] = {}
tGoldBossdeal_StarMonsterDrop[4452]["ItemId"] = 3307327
tGoldBossdeal_StarMonsterDrop[4452]["ActionId"] = 568285
tGoldBossdeal_StarMonsterDrop[4452]["Awardmoney"] = 1500000
tGoldBossdeal_StarMonsterDrop[4452]["MapId"] = 1015
tGoldBossdeal_StarMonsterDrop[3049] = {}
tGoldBossdeal_StarMonsterDrop[3049]["ItemId"] = 3307328
--tGoldBossdeal_StarMonsterDrop[3049]["ActionId"] = 568286
tGoldBossdeal_StarMonsterDrop[3049]["MapId"] = 1002
tGoldBossdeal_StarMonsterDrop["Exit"] = 30

--星级boss产生时间
local tGoldBossdeal_Reset = {}
--一星
tGoldBossdeal_Reset[1] = {}
tGoldBossdeal_Reset[1]["Max"] = 20
tGoldBossdeal_Reset[1]["MonsterId"] = 4420
tGoldBossdeal_Reset[1]["GenId"] = 24276
tGoldBossdeal_Reset[1]["Mapid"] = 1002
tGoldBossdeal_Reset[1]["Pos"] = {}
tGoldBossdeal_Reset[1]["Pos"][1] = {593,414}
tGoldBossdeal_Reset[1]["Pos"][2] = {395,625}
tGoldBossdeal_Reset[1]["Pos"][3] = {364,697}
tGoldBossdeal_Reset[1]["Num"] = 2
tGoldBossdeal_Reset[1]["Time"] = {}
tGoldBossdeal_Reset[1]["Time"][1] = "09:15 09:15"
tGoldBossdeal_Reset[1]["Time"][2] = "09:30 09:30"
tGoldBossdeal_Reset[1]["Time"][3] = "09:45 09:45"
tGoldBossdeal_Reset[1]["Time"][4] = "10:00 10:00"
tGoldBossdeal_Reset[1]["Time"][5] = "10:15 10:15"
tGoldBossdeal_Reset[1]["Time"][6] = "10:30 10:30"
tGoldBossdeal_Reset[1]["Time"][7] = "10:45 10:45"
tGoldBossdeal_Reset[1]["Time"][8] = "11:00 11:00"
tGoldBossdeal_Reset[1]["Time"][9] = "11:15 11:15"
tGoldBossdeal_Reset[1]["Time"][10] = "11:30 11:30"
tGoldBossdeal_Reset[1]["Time"][11] = "11:45 11:45"
tGoldBossdeal_Reset[1]["Time"][12] = "12:00 12:00"
tGoldBossdeal_Reset[1]["Time"][13] = "12:15 12:15"
tGoldBossdeal_Reset[1]["Time"][14] = "12:30 12:30"
tGoldBossdeal_Reset[1]["Time"][15] = "12:45 12:45"
tGoldBossdeal_Reset[1]["Time"][16] = "13:00 13:00"
tGoldBossdeal_Reset[1]["Time"][17] = "13:15 13:15"
tGoldBossdeal_Reset[1]["Time"][18] = "13:30 13:30"
tGoldBossdeal_Reset[1]["Time"][19] = "13:45 13:45"
tGoldBossdeal_Reset[1]["Time"][20] = "14:00 14:00"
tGoldBossdeal_Reset[1]["Time"][21] = "14:15 14:15"
tGoldBossdeal_Reset[1]["Time"][22] = "14:30 14:30"
tGoldBossdeal_Reset[1]["Time"][23] = "14:45 14:45"
tGoldBossdeal_Reset[1]["Time"][24] = "15:00 15:00"
tGoldBossdeal_Reset[1]["Time"][25] = "15:15 15:15"
tGoldBossdeal_Reset[1]["Time"][26] = "15:30 15:30"
tGoldBossdeal_Reset[1]["Time"][27] = "15:45 15:45"
tGoldBossdeal_Reset[1]["Time"][28] = "16:00 16:00"
tGoldBossdeal_Reset[1]["Time"][29] = "16:15 16:15"
tGoldBossdeal_Reset[1]["Time"][30] = "16:30 16:30"
tGoldBossdeal_Reset[1]["Time"][31] = "16:45 16:45"
tGoldBossdeal_Reset[1]["Time"][32] = "17:00 17:00"

tGoldBossdeal_Reset[2] = {}
tGoldBossdeal_Reset[2]["Max"] = 20
tGoldBossdeal_Reset[2]["MonsterId"] = 4420
tGoldBossdeal_Reset[2]["GenId"] = 24276
tGoldBossdeal_Reset[2]["Mapid"] = 1002
tGoldBossdeal_Reset[2]["Pos"] = {}
tGoldBossdeal_Reset[2]["Pos"][1] = {593,414}
tGoldBossdeal_Reset[2]["Pos"][2] = {395,625}
tGoldBossdeal_Reset[2]["Pos"][3] = {364,697}
tGoldBossdeal_Reset[2]["Num"] = 1
tGoldBossdeal_Reset[2]["Time"] = {}
tGoldBossdeal_Reset[2]["Time"][1] = "17:10 17:10"
tGoldBossdeal_Reset[2]["Time"][2] = "17:20 17:20"
tGoldBossdeal_Reset[2]["Time"][3] = "17:30 17:30"
tGoldBossdeal_Reset[2]["Time"][4] = "17:40 17:40"
tGoldBossdeal_Reset[2]["Time"][5] = "17:50 17:50"
tGoldBossdeal_Reset[2]["Time"][6] = "18:00 18:00"
tGoldBossdeal_Reset[2]["Time"][7] = "18:10 18:10"
tGoldBossdeal_Reset[2]["Time"][8] = "18:20 18:20"
tGoldBossdeal_Reset[2]["Time"][9] = "18:30 18:30"
tGoldBossdeal_Reset[2]["Time"][10] = "18:40 18:40"
tGoldBossdeal_Reset[2]["Time"][11] = "18:50 18:50"
tGoldBossdeal_Reset[2]["Time"][12] = "19:00 19:00"
tGoldBossdeal_Reset[2]["Time"][13] = "19:10 19:10"
tGoldBossdeal_Reset[2]["Time"][14] = "19:20 19:20"
tGoldBossdeal_Reset[2]["Time"][15] = "19:30 19:30"
tGoldBossdeal_Reset[2]["Time"][16] = "19:40 19:40"
tGoldBossdeal_Reset[2]["Time"][17] = "19:50 19:50"
tGoldBossdeal_Reset[2]["Time"][18] = "20:00 20:00"
tGoldBossdeal_Reset[2]["Time"][19] = "20:10 20:10"
tGoldBossdeal_Reset[2]["Time"][20] = "20:20 20:20"
tGoldBossdeal_Reset[2]["Time"][21] = "20:30 20:30"
tGoldBossdeal_Reset[2]["Time"][22] = "20:40 20:40"
tGoldBossdeal_Reset[2]["Time"][23] = "20:50 20:50"
tGoldBossdeal_Reset[2]["Time"][24] = "21:00 21:00"
tGoldBossdeal_Reset[2]["Time"][25] = "21:10 21:10"
tGoldBossdeal_Reset[2]["Time"][26] = "21:20 21:20"
tGoldBossdeal_Reset[2]["Time"][27] = "21:30 21:30"
tGoldBossdeal_Reset[2]["Time"][28] = "21:40 21:40"
tGoldBossdeal_Reset[2]["Time"][29] = "21:50 21:50"
tGoldBossdeal_Reset[2]["Time"][30] = "22:00 22:00"
tGoldBossdeal_Reset[2]["Time"][31] = "22:10 22:10"
tGoldBossdeal_Reset[2]["Time"][32] = "22:20 22:20"
tGoldBossdeal_Reset[2]["Time"][33] = "22:30 22:30"
tGoldBossdeal_Reset[2]["Time"][34] = "22:40 22:40"
tGoldBossdeal_Reset[2]["Time"][35] = "22:50 22:50"
tGoldBossdeal_Reset[2]["Time"][36] = "23:00 23:00" 

--二星
tGoldBossdeal_Reset[3] = {}
tGoldBossdeal_Reset[3]["Max"] = 10
tGoldBossdeal_Reset[3]["MonsterId"] = 4428
tGoldBossdeal_Reset[3]["GenId"] = 24277
tGoldBossdeal_Reset[3]["Mapid"] = 1011
tGoldBossdeal_Reset[3]["Pos"] = {}
tGoldBossdeal_Reset[3]["Pos"][1] = {474,489}
tGoldBossdeal_Reset[3]["Pos"][2] = {390,574}
tGoldBossdeal_Reset[3]["Num"] = 1
tGoldBossdeal_Reset[3]["Time"] = {}
tGoldBossdeal_Reset[3]["Time"][1] = "09:15 09:15"
tGoldBossdeal_Reset[3]["Time"][2] = "09:30 09:30"
tGoldBossdeal_Reset[3]["Time"][3] = "09:45 09:45"
tGoldBossdeal_Reset[3]["Time"][4] = "10:00 10:00"
tGoldBossdeal_Reset[3]["Time"][5] = "10:15 10:15"
tGoldBossdeal_Reset[3]["Time"][6] = "10:30 10:30"
tGoldBossdeal_Reset[3]["Time"][7] = "10:45 10:45"
tGoldBossdeal_Reset[3]["Time"][8] = "11:00 11:00"
tGoldBossdeal_Reset[3]["Time"][9] = "11:15 11:15"
tGoldBossdeal_Reset[3]["Time"][10] = "11:30 11:30"
tGoldBossdeal_Reset[3]["Time"][11] = "11:45 11:45"
tGoldBossdeal_Reset[3]["Time"][12] = "12:00 12:00"
tGoldBossdeal_Reset[3]["Time"][13] = "12:15 12:15"
tGoldBossdeal_Reset[3]["Time"][14] = "12:30 12:30"
tGoldBossdeal_Reset[3]["Time"][15] = "12:45 12:45"
tGoldBossdeal_Reset[3]["Time"][16] = "13:00 13:00"
tGoldBossdeal_Reset[3]["Time"][17] = "13:15 13:15"
tGoldBossdeal_Reset[3]["Time"][18] = "13:30 13:30"
tGoldBossdeal_Reset[3]["Time"][19] = "13:45 13:45"
tGoldBossdeal_Reset[3]["Time"][20] = "14:00 14:00"
tGoldBossdeal_Reset[3]["Time"][21] = "14:15 14:15"
tGoldBossdeal_Reset[3]["Time"][22] = "14:30 14:30"
tGoldBossdeal_Reset[3]["Time"][23] = "14:45 14:45"
tGoldBossdeal_Reset[3]["Time"][24] = "15:00 15:00"
tGoldBossdeal_Reset[3]["Time"][25] = "15:15 15:15"
tGoldBossdeal_Reset[3]["Time"][26] = "15:30 15:30"
tGoldBossdeal_Reset[3]["Time"][27] = "15:45 15:45"
tGoldBossdeal_Reset[3]["Time"][28] = "16:00 16:00"
tGoldBossdeal_Reset[3]["Time"][29] = "16:15 16:15"
tGoldBossdeal_Reset[3]["Time"][30] = "16:30 16:30"
tGoldBossdeal_Reset[3]["Time"][31] = "16:45 16:45"
tGoldBossdeal_Reset[3]["Time"][32] = "17:00 17:00"

tGoldBossdeal_Reset[3]["Time"][33] = "17:20 17:20"
tGoldBossdeal_Reset[3]["Time"][34] = "17:40 17:40"
tGoldBossdeal_Reset[3]["Time"][35] = "18:00 18:00"
tGoldBossdeal_Reset[3]["Time"][36] = "18:20 18:20"
tGoldBossdeal_Reset[3]["Time"][37] = "18:40 18:40"
tGoldBossdeal_Reset[3]["Time"][38] = "19:00 19:00"
tGoldBossdeal_Reset[3]["Time"][39] = "19:20 19:20"
tGoldBossdeal_Reset[3]["Time"][40] = "19:40 19:40"
tGoldBossdeal_Reset[3]["Time"][41] = "20:00 20:00"
tGoldBossdeal_Reset[3]["Time"][42] = "20:20 20:20"
tGoldBossdeal_Reset[3]["Time"][43] = "20:40 20:40"
tGoldBossdeal_Reset[3]["Time"][44] = "21:00 21:00"
tGoldBossdeal_Reset[3]["Time"][45] = "21:20 21:20"
tGoldBossdeal_Reset[3]["Time"][46] = "21:40 21:40"
tGoldBossdeal_Reset[3]["Time"][47] = "22:00 22:00"
tGoldBossdeal_Reset[3]["Time"][48] = "22:20 22:20"
tGoldBossdeal_Reset[3]["Time"][49] = "22:40 22:40"
tGoldBossdeal_Reset[3]["Time"][50] = "23:00 23:00"

--三星
tGoldBossdeal_Reset[4] = {}
tGoldBossdeal_Reset[4]["Max"] = 5
tGoldBossdeal_Reset[4]["MonsterId"] = 4436
tGoldBossdeal_Reset[4]["GenId"] = 24278
tGoldBossdeal_Reset[4]["Mapid"] = 1020
tGoldBossdeal_Reset[4]["Pos"] = {}
tGoldBossdeal_Reset[4]["Pos"][1] = {254,565}
tGoldBossdeal_Reset[4]["Pos"][2] = {318,643}
tGoldBossdeal_Reset[4]["Num"] = 1
tGoldBossdeal_Reset[4]["Time"] = {}
tGoldBossdeal_Reset[4]["Time"][1] = "09:45 09:45"
tGoldBossdeal_Reset[4]["Time"][2] = "10:30 10:30"
tGoldBossdeal_Reset[4]["Time"][3] = "11:15 11:15"
tGoldBossdeal_Reset[4]["Time"][4] = "12:00 12:00"
tGoldBossdeal_Reset[4]["Time"][5] = "12:30 12:30"
tGoldBossdeal_Reset[4]["Time"][6] = "13:30 13:30"
tGoldBossdeal_Reset[4]["Time"][7] = "14:30 14:30"
tGoldBossdeal_Reset[4]["Time"][8] = "15:30 15:30"
tGoldBossdeal_Reset[4]["Time"][9] = "16:30 16:30"
tGoldBossdeal_Reset[4]["Time"][10] = "17:30 17:30"
tGoldBossdeal_Reset[4]["Time"][11] = "18:30 18:30"
tGoldBossdeal_Reset[4]["Time"][12] = "19:30 19:30"
tGoldBossdeal_Reset[4]["Time"][13] = "20:30 20:30"
tGoldBossdeal_Reset[4]["Time"][14] = "21:30 21:30"
tGoldBossdeal_Reset[4]["Time"][15] = "22:30 22:30"

--四星
tGoldBossdeal_Reset[5] = {}
tGoldBossdeal_Reset[5]["Max"] = 2
tGoldBossdeal_Reset[5]["MonsterId"] = 4444
tGoldBossdeal_Reset[5]["GenId"] = 24279
tGoldBossdeal_Reset[5]["Mapid"] = 1000
tGoldBossdeal_Reset[5]["Pos"] = {}
tGoldBossdeal_Reset[5]["Pos"][1] = {748,581}
tGoldBossdeal_Reset[5]["Num"] = 1
tGoldBossdeal_Reset[5]["Time"] = {}
tGoldBossdeal_Reset[5]["Time"][1] = "09:00 09:00"
tGoldBossdeal_Reset[5]["Time"][2] = "10:30 10:30"
tGoldBossdeal_Reset[5]["Time"][3] = "12:00 12:00"
tGoldBossdeal_Reset[5]["Time"][4] = "13:30 13:30"
tGoldBossdeal_Reset[5]["Time"][5] = "15:00 15:00"
tGoldBossdeal_Reset[5]["Time"][6] = "16:30 16:30"
tGoldBossdeal_Reset[5]["Time"][7] = "18:00 18:00"
tGoldBossdeal_Reset[5]["Time"][8] = "19:30 19:30"
tGoldBossdeal_Reset[5]["Time"][9] = "21:00 21:00"
tGoldBossdeal_Reset[5]["Time"][10] = "22:30 22:30"

--五星
tGoldBossdeal_Reset[6] = {}
tGoldBossdeal_Reset[6]["Max"] = 1
tGoldBossdeal_Reset[6]["MonsterId"] = 4452
tGoldBossdeal_Reset[6]["GenId"] = 24280
tGoldBossdeal_Reset[6]["Mapid"] = 1015
tGoldBossdeal_Reset[6]["Pos"] = {}
tGoldBossdeal_Reset[6]["Pos"][1] = {840,680}
tGoldBossdeal_Reset[6]["Num"] = 1
tGoldBossdeal_Reset[6]["Time"] = {}
tGoldBossdeal_Reset[6]["Time"][1] = "10:00 10:00"
tGoldBossdeal_Reset[6]["Time"][2] = "12:00 12:00"
tGoldBossdeal_Reset[6]["Time"][3] = "15:00 15:00"
tGoldBossdeal_Reset[6]["Time"][4] = "17:00 17:00"
tGoldBossdeal_Reset[6]["Time"][5] = "21:00 21:00"

--世界boss刷新
tGoldBossdeal_Reset[7] = {}
tGoldBossdeal_Reset[7]["Max"] = 1
tGoldBossdeal_Reset[7]["MonsterId"] = 3049
tGoldBossdeal_Reset[7]["GenId"] = 24281
tGoldBossdeal_Reset[7]["Mapid"] = 1002
tGoldBossdeal_Reset[7]["Pos"] = {}
tGoldBossdeal_Reset[7]["Pos"][1] = {574,483}
tGoldBossdeal_Reset[7]["Num"] = 1
tGoldBossdeal_Reset[7]["Time"] = {}
tGoldBossdeal_Reset[7]["Time"][1] = "12:00 12:00"

--刷新悬赏榜
local tGoldBossdeal_FunctionRank = {}
tGoldBossdeal_FunctionRank[1] = {}
tGoldBossdeal_FunctionRank[1]["Global"] = 52023
tGoldBossdeal_FunctionRank[1]["Name"] = Sys_SetSynaGlobalData0
tGoldBossdeal_FunctionRank[1]["Postx"] = Sys_SetSynaGlobalData1
tGoldBossdeal_FunctionRank[1]["Posty"] = Sys_SetSynaGlobalData2
tGoldBossdeal_FunctionRank[1]["GName"] = Get_SysDynaGlobalData0
tGoldBossdeal_FunctionRank[1]["GPostx"] = Get_SysDynaGlobalData1
tGoldBossdeal_FunctionRank[1]["GPosty"] = Get_SysDynaGlobalData2

tGoldBossdeal_FunctionRank[2] = {}
tGoldBossdeal_FunctionRank[2]["Global"] = 52023
tGoldBossdeal_FunctionRank[2]["Name"] = Sys_SetSynaGlobalData3
tGoldBossdeal_FunctionRank[2]["Postx"] = Sys_SetSynaGlobalData4
tGoldBossdeal_FunctionRank[2]["Posty"] = Sys_SetSynaGlobalData5
tGoldBossdeal_FunctionRank[2]["GName"] = Get_SysDynaGlobalData3
tGoldBossdeal_FunctionRank[2]["GPostx"] = Get_SysDynaGlobalData4
tGoldBossdeal_FunctionRank[2]["GPosty"] = Get_SysDynaGlobalData5

tGoldBossdeal_FunctionRank[3] = {}
tGoldBossdeal_FunctionRank[3]["Global"] = 52025
tGoldBossdeal_FunctionRank[3]["Name"] = Sys_SetSynaGlobalData0
tGoldBossdeal_FunctionRank[3]["Postx"] = Sys_SetSynaGlobalData1
tGoldBossdeal_FunctionRank[3]["Posty"] = Sys_SetSynaGlobalData2
tGoldBossdeal_FunctionRank[3]["GName"] = Get_SysDynaGlobalData0
tGoldBossdeal_FunctionRank[3]["GPostx"] = Get_SysDynaGlobalData1
tGoldBossdeal_FunctionRank[3]["GPosty"] = Get_SysDynaGlobalData2

local tGoldBossdeal_RankAwardmoney = {}
--悬赏星级boss获得金币Log
tGoldBossdeal_RankAwardmoney["Rank"] = {}
tGoldBossdeal_RankAwardmoney["Rank"]["RewardMoney"] = {}
tGoldBossdeal_RankAwardmoney["Rank"]["RewardMoney"]["Value"] = 1
tGoldBossdeal_RankAwardmoney["Rank"]["LogId"] = 12000991
tGoldBossdeal_RankAwardmoney["Rank"]["Gold"] = true

tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"] = {}
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][1] = {}
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][1]["Id"] = 1
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][1]["Attr"] = "0 1"
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][2] = {}
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][2]["Id"] = 1
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][2]["Attr"] = "0 1"
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][3] = {}
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][3]["Id"] = 1
tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][3]["Attr"] = "0 1"


--片区怪临时表
local tGoldBossdeal_SmallMonster = {}
--怪物数量
tGoldBossdeal_SmallMonster["MonsterNum"] = 0
--金币数量
tGoldBossdeal_SmallMonster["MoneyNum"] = 0

--随机生成序列id
local tGoldBossdeal_SeriserNum = {}
tGoldBossdeal_SeriserNum["Random"] = {}
tGoldBossdeal_SeriserNum["Random"][1] = {}
tGoldBossdeal_SeriserNum["Random"][1]["ItemChanceSum"] = 10000

tGoldBossdeal_SeriserNum["Random"][1][1] ={}
tGoldBossdeal_SeriserNum["Random"][1][1]["RandomItemChanceType"] = 2
tGoldBossdeal_SeriserNum["Random"][1][1]["ItemChance"] = 2000
tGoldBossdeal_SeriserNum["Random"][1][1]["Item_Id"] = 2
tGoldBossdeal_SeriserNum["Random"][1][2] ={}
tGoldBossdeal_SeriserNum["Random"][1][2]["RandomItemChanceType"] = 2
tGoldBossdeal_SeriserNum["Random"][1][2]["ItemChance"] = 2000
tGoldBossdeal_SeriserNum["Random"][1][2]["Item_Id"] = 3
tGoldBossdeal_SeriserNum["Random"][1][3] ={}
tGoldBossdeal_SeriserNum["Random"][1][3]["RandomItemChanceType"] = 2
tGoldBossdeal_SeriserNum["Random"][1][3]["ItemChance"] = 2000
tGoldBossdeal_SeriserNum["Random"][1][3]["Item_Id"] = 4
tGoldBossdeal_SeriserNum["Random"][1][4] ={}
tGoldBossdeal_SeriserNum["Random"][1][4]["RandomItemChanceType"] = 2
tGoldBossdeal_SeriserNum["Random"][1][4]["ItemChance"] = 2000
tGoldBossdeal_SeriserNum["Random"][1][4]["Item_Id"] = 5
tGoldBossdeal_SeriserNum["Random"][1][5] ={}
tGoldBossdeal_SeriserNum["Random"][1][5]["RandomItemChanceType"] = 2
tGoldBossdeal_SeriserNum["Random"][1][5]["ItemChance"] = 2000
tGoldBossdeal_SeriserNum["Random"][1][5]["Item_Id"] = 6

--存贮背包中需要的令牌的个数
local tGoldBossdeal_SaveNeedNum = {}
tGoldBossdeal_SaveNeedNum[3307323] = 0
tGoldBossdeal_SaveNeedNum[3307324] = 0
tGoldBossdeal_SaveNeedNum[3307325] = 0
tGoldBossdeal_SaveNeedNum[3307326] = 0
tGoldBossdeal_SaveNeedNum[3307327] = 0

--获取排行榜奖励表
local tGoldBossdeal_GetRankgift = {}
tGoldBossdeal_GetRankgift[3308405] = {}
tGoldBossdeal_GetRankgift[3308405]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308405]["RewardMoney"]["Value"] = 12000000
tGoldBossdeal_GetRankgift[3308405]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308405]["Gold"] = true
tGoldBossdeal_GetRankgift[3308405]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308405]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308405]["DeleteItem"][1]["Id"] = 3308405
tGoldBossdeal_GetRankgift[3308406] = {}
tGoldBossdeal_GetRankgift[3308406]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308406]["RewardMoney"]["Value"] = 9000000
tGoldBossdeal_GetRankgift[3308406]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308406]["Gold"] = true
tGoldBossdeal_GetRankgift[3308406]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308406]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308406]["DeleteItem"][1]["Id"] = 3308406
tGoldBossdeal_GetRankgift[3308407] = {}
tGoldBossdeal_GetRankgift[3308407]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308407]["RewardMoney"]["Value"] = 6000000
tGoldBossdeal_GetRankgift[3308407]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308407]["Gold"] = true
tGoldBossdeal_GetRankgift[3308407]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308407]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308407]["DeleteItem"][1]["Id"] = 3308407
tGoldBossdeal_GetRankgift[3308408] = {}
tGoldBossdeal_GetRankgift[3308408]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308408]["RewardMoney"]["Value"] = 4000000
tGoldBossdeal_GetRankgift[3308408]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308408]["Gold"] = true
tGoldBossdeal_GetRankgift[3308408]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308408]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308408]["DeleteItem"][1]["Id"] = 3308408
tGoldBossdeal_GetRankgift[3308409] = {}
tGoldBossdeal_GetRankgift[3308409]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308409]["RewardMoney"]["Value"] = 2000000
tGoldBossdeal_GetRankgift[3308409]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308409]["Gold"] = true
tGoldBossdeal_GetRankgift[3308409]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308409]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308409]["DeleteItem"][1]["Id"] = 3308409
tGoldBossdeal_GetRankgift[3308410] = {}
tGoldBossdeal_GetRankgift[3308410]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308410]["RewardMoney"]["Value"] = 1500000
tGoldBossdeal_GetRankgift[3308410]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308410]["Gold"] = true
tGoldBossdeal_GetRankgift[3308410]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308410]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308410]["DeleteItem"][1]["Id"] = 3308410
tGoldBossdeal_GetRankgift[3308411] = {}
tGoldBossdeal_GetRankgift[3308411]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308411]["RewardMoney"]["Value"] = 1200000
tGoldBossdeal_GetRankgift[3308411]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308411]["Gold"] = true
tGoldBossdeal_GetRankgift[3308411]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308411]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308411]["DeleteItem"][1]["Id"] = 3308411
tGoldBossdeal_GetRankgift[3308412] = {}
tGoldBossdeal_GetRankgift[3308412]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308412]["RewardMoney"]["Value"] = 1000000
tGoldBossdeal_GetRankgift[3308412]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308412]["Gold"] = true
tGoldBossdeal_GetRankgift[3308412]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308412]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308412]["DeleteItem"][1]["Id"] = 3308412
tGoldBossdeal_GetRankgift[3308413] = {}
tGoldBossdeal_GetRankgift[3308413]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308413]["RewardMoney"]["Value"] = 500000
tGoldBossdeal_GetRankgift[3308413]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308413]["Gold"] = true
tGoldBossdeal_GetRankgift[3308413]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308413]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308413]["DeleteItem"][1]["Id"] = 3308413
tGoldBossdeal_GetRankgift[3308414] = {}
tGoldBossdeal_GetRankgift[3308414]["RewardMoney"] = {}
tGoldBossdeal_GetRankgift[3308414]["RewardMoney"]["Value"] = 300000
tGoldBossdeal_GetRankgift[3308414]["LogId"] = 12000991
tGoldBossdeal_GetRankgift[3308414]["Gold"] = true
tGoldBossdeal_GetRankgift[3308414]["DeleteItem"] = {}
tGoldBossdeal_GetRankgift[3308414]["DeleteItem"][1] = {}
tGoldBossdeal_GetRankgift[3308414]["DeleteItem"][1]["Id"] = 3308414

--排行榜模板
tRankingFunc_Info[22611] = {}
tRankingFunc_Info[22611]["DayTime"] = {}
tRankingFunc_Info[22611]["DayTime"][1] = "00:00 23:59"
tRankingFunc_Info[22611]["ResetTime"] = {}
tRankingFunc_Info[22611]["ResetTime"][1] = "00:00 00:05"
tRankingFunc_Info[22611]["Global"] = {52000,52001,52002,52003,52004,52005,52006,52007,52008,52009,52010,52011,52012,52013,52014,52015,52016}
tRankingFunc_Info[22611]["RankNum"] = 50

local tGoldBossdeal_RankId = {}
tGoldBossdeal_RankId["id"] = 22611

local tGoldBossdeal_AwardAction = {}
--物品action和物品名
tGoldBossdeal_AwardAction[1] = 568918
tGoldBossdeal_AwardAction[2] = 568919
tGoldBossdeal_AwardAction[3] = 568920
tGoldBossdeal_AwardAction[4] = 568921
tGoldBossdeal_AwardAction[5] = 568922
tGoldBossdeal_AwardAction[6] = 568923
tGoldBossdeal_AwardAction[7] = 568924
tGoldBossdeal_AwardAction[8] = 568925
tGoldBossdeal_AwardAction[9] = 568926
tGoldBossdeal_AwardAction[10] = 568927
tGoldBossdeal_AwardAction[11] = 568928
tGoldBossdeal_AwardAction[12] = 568929
tGoldBossdeal_AwardAction[13] = 568930
---------------------------------------------逻辑--------------------------------------------------
--掩码隔天清理
function GoldBossdeal_StcClean()
	local nUserId = Get_UserId()
	for i,v in pairs (tGoldBossdeal_Stc) do
		local nEvent = v["EventType"]
		local nData = v["DataType"]
		if Task_StcInterval(nEvent,nData,1,4,nUserId) then
			Task_SetStatistic(nEvent,nData,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		end
	end
end

--刷新星级怪榜
function GoldBossdeal_Refreshrank()
	if not CommonFunc_ChkGoldServer() then
		return
	end
	local nGlobalId = tGoldBossdeal_Global[3]
	local nRefreshed = Get_SysDynaGlobalData3(nGlobalId)
	if nRefreshed == 0 then
		--刷新排行榜
		for i,v in pairs (tGoldBossdeal_FunctionRank) do
			
			--重置怪星级榜
			local flat,tNum = Probabil_RandomAward(tGoldBossdeal_SeriserNum["Random"],1)
			local nPosMonster = tNum[1]["tAward"][1]["Item_Id"]
			
			local nMonsterId = tGoldBossdeal_Reset[nPosMonster]["MonsterId"]

			--存储到global表中
			local nGlobal = v["Global"]
			v["Name"](nGlobal,nMonsterId)
			
		end
		Sys_SetSynaGlobalData3(nGlobalId,1)
		
		--记录玩家这是开服第几天
		local nWeek = Get_SysDynaGlobalData1(tGoldBossdeal_Global[1])
		if nWeek < 27 then
			Sys_SetSynaGlobalData1(tGoldBossdeal_Global[1],nWeek+1)
		end
		
		--清空记录玩家金币收集
		Sys_SetSynaGlobalData0(tGoldBossdeal_Global[1],0)
	end
end

--刷新星级怪榜还原动态码
function GoldBossdeal_RefreshrankOrigin()
	if not CommonFunc_ChkGoldServer() then
		return
	end
	Sys_SetSynaGlobalData3(tGoldBossdeal_Global[3],0)
end

--【银两】除魔使者活动中
function GoldBossdeal_Activitychat()
	local nPostX = tGoldBossdeal_Reset[7]["Pos"][1][1]
	local nPostY = tGoldBossdeal_Reset[7]["Pos"][1][2]
	tNpcGossip[22611]["Text113"] = string.format(tGoldBossdeal_Text[22611]["Text113"],nPostX,nPostY) 
	return true
end

--查看银两掉落
function GoldBossdeal_LookSilverDrop()
	local nGlobalmoney = Get_SysDynaGlobalData0(tGoldBossdeal_Global[1])
	if nGlobalmoney <= 0 then 
		tNpcGossip[22611]["Text118"] = string.format(tGoldBossdeal_Text[22611]["Text118"],0)
	else
		tNpcGossip[22611]["Text118"] = string.format(tGoldBossdeal_Text[22611]["Text118"],nGlobalmoney)
	end
	return true
end

--玩家未参与此次杀boss任务
function GoldBossdeal_UnbleRankDamage(nNpcId)
	--掩码清理
	GoldBossdeal_StcClean()
	--判断
	local sText = 123
	local sTextF = 1232
	local sTextFf= 1233
	local nNum = 1
	
	local tRanktable = RankingFunc_GetNowData(tGoldBossdeal_RankId["id"])
	local sName
	local tRanktableTime = {0,0,0,0,0,0,0,0,0,0}
	
	
	for i,v in pairs (tRanktable) do
		if nNum <= 10 then 
			--玩家排名存储进临时表
			tRanktableTime[i] = v["UserId"]
			nNum = nNum + 1
		end
	end
	
	for i = 1,10,1 do
		
		local nUserIdl = tRanktableTime[i]
		
		if nUserIdl ~= 0 then
			sName = tRanktable[i]["UserName"]
		else
			sName = tGoldBossdeal_Text[22611]["Text138"]
		end
		local sAward = tGoldBossdeal_Text[22611]["Text"..sTextF]
		tNpcGossip[nNpcId]["Text"..sText] = Sys_Alignment(i,14,sName,53,sAward,87)
		sText = sText + 1
		sTextF = sTextF + 10
		sTextFf = sTextFf + 10
		
	end
	
	
	--最后三行是没有侠士名的
	tNpcGossip[nNpcId]["Text133"] = Sys_Alignment(tGoldBossdeal_Text[22611]["Text1333"],14,"			",40,tGoldBossdeal_Text[22611]["Text1332"],83)
	tNpcGossip[nNpcId]["Text134"] = Sys_Alignment(tGoldBossdeal_Text[22611]["Text1343"],14,"			",40,tGoldBossdeal_Text[22611]["Text1342"],83)
	tNpcGossip[nNpcId]["Text135"] = Sys_Alignment(tGoldBossdeal_Text[22611]["Text1353"],14,"			",40,tGoldBossdeal_Text[22611]["Text1352"],83)
	tNpcGossip[22611]["Text136"] = string.format(tGoldBossdeal_Text[22611]["Text136"],tGoldBossdeal_Reset[7]["Pos"][1][1],tGoldBossdeal_Reset[7]["Pos"][1][2])
	return true
end

--伤害排行榜
function GoldBossdeal_RankDamage(nNpcId)
	local nUserId = Get_UserId()
	
	--掩码清理
	GoldBossdeal_StcClean()
	
	--判断该怪是否有被杀死，就判断一下动态表data0是否为0，为0说明没有怪被杀死
	--今日没有任何玩家参与世界boss
	local nGlobalId = tGoldBossdeal_Global[2]
	local nGrade = Get_SysDynaGlobalData0(nGlobalId)
	if nGrade == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	--[[
	--玩家没有参与击杀boss任务
	local nEvent = tGoldBossdeal_Stc[2]["EventType"]
	local nData = tGoldBossdeal_Stc[2]["DataType"]
	if Task_ChkStcValue(nEvent,nData,"<",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	]]--
	--判断
	local sText = 123
	local sTextF = 1232
	local sTextFf= 1233
	local nNum = 1
	
	local tRanktable = RankingFunc_GetNowData(tGoldBossdeal_RankId["id"])
	local sName
	local tRanktableTime = {0,0,0,0,0,0,0,0,0,0}
	
	
	for i,v in pairs (tRanktable) do
		if nNum <= 10 then 
			--玩家排名存储进临时表
			tRanktableTime[i] = v["UserId"]
			nNum = nNum + 1
		end
	end
	
	for i = 1,10,1 do
		
		local nUserIdl = tRanktableTime[i]
		
		if nUserIdl ~= 0 then
			sName = tRanktable[i]["UserName"]
		else
			sName = tGoldBossdeal_Text[22611]["Text138"]
		end
		local sAward = tGoldBossdeal_Text[22611]["Text"..sTextF]
		tNpcGossip[nNpcId]["Text"..sText] = Sys_Alignment(i,14,sName,53,sAward,87)
		sText = sText + 1
		sTextF = sTextF + 10
		sTextFf = sTextFf + 10
		
	end
	
	
	--最后三行是没有侠士名的
	tNpcGossip[nNpcId]["Text133"] = Sys_Alignment(tGoldBossdeal_Text[22611]["Text1333"],14,"			",40,tGoldBossdeal_Text[22611]["Text1332"],83)
	tNpcGossip[nNpcId]["Text134"] = Sys_Alignment(tGoldBossdeal_Text[22611]["Text1343"],14,"			",40,tGoldBossdeal_Text[22611]["Text1342"],83)
	tNpcGossip[nNpcId]["Text135"] = Sys_Alignment(tGoldBossdeal_Text[22611]["Text1353"],14,"			",40,tGoldBossdeal_Text[22611]["Text1352"],83)
	
	--玩家排名
	local nRankNum = RankingFunc_GetUserInRank(tGoldBossdeal_RankId["id"],nUserId)
	if (nRankNum <= 50) and (nRankNum ~=0) then
		tNpcGossip[nNpcId]["Text137"] = string.format(tGoldBossdeal_Text[22611]["Text137"],nRankNum)
	else
		tNpcGossip[nNpcId]["Text137"] = tGoldBossdeal_Text[22611]["Text1371"]
	end
	
	--[[
	--选项
	if Task_ChkStcValue(tGoldBossdeal_Stc[1]["EventType"],tGoldBossdeal_Stc[1]["DataType"],"<",1,nUserId) then
		tNpcGossip[nNpcId]["Option5"] = tGoldBossdeal_Text[22611]["Option5"]
	else
		tNpcGossip[nNpcId]["Option5"] = tGoldBossdeal_Text[22611]["Option51"]
	end
	]]--
	tNpcGossip[22611]["Text136"] = string.format(tGoldBossdeal_Text[22611]["Text136"],tGoldBossdeal_Reset[7]["Pos"][1][1],tGoldBossdeal_Reset[7]["Pos"][1][2])
	return true
end


--世界boss
function GoldBossdeal_Rank(nServerId,nUserId,nRank,nDmg,nMonsterId)
	--把玩家对boss造成的伤害接口内
	RankingFunc_SetInfo(tGoldBossdeal_RankId["id"],nDmg,nUserId)
	local nActionId = 0
	if (nRank > 10) then
		if nRank > 10 and nRank <= 30 then
			nActionId = tGoldBossdeal_AwardAction[11]
		end
		
		if nRank >= 31 and nRank <= 50 then
			nActionId = tGoldBossdeal_AwardAction[12]
		end
		
		if nRank > 50 then
			nActionId = tGoldBossdeal_AwardAction[13]
		end
		
	else
		nActionId = tGoldBossdeal_AwardAction[nRank]
	end
	
	local nExistDay = 30
	local sSender = tGoldBossdeal_Text["WorldMail"]["Sender"]
	local sTitle = tGoldBossdeal_Text["WorldMail"]["Title"]
	local nSgetAwardName = tGoldBossdeal_Text["ItemName"][nActionId]
	local sContent = string.format(tGoldBossdeal_Text["WorldMail"]["sContent"],nSgetAwardName)
	--邮件发送
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
	
end

--个人boss
function GoldBossdeal_SelfMonster(nMonsterTypeId)
	if not CommonFunc_ChkGoldServer() then
		return
	end
	
	--隔天清理掩码
	GoldBossdeal_StcClean()
	
	local nUserId = Get_UserId()
	local nEvent = tGoldBossdeal_Stc[3]["EventType"]
	local nData = tGoldBossdeal_Stc[3]["DataType"]
	local nEvento = tGoldBossdeal_Stc[4]["EventType"]
	local nDatao = tGoldBossdeal_Stc[4]["DataType"]
	
	if Task_ChkStcValue(nEvent,nData,">=",1,nUserId) then
	
		if Task_ChkStcValue(nEvento,nDatao,"==",0,nUserId) then
			Task_SetStatistic(nEvento,nDatao,1,1,nUserId)
			Task_SetStcTimestamp(nEvento,nDatao,0,nUserId)
			Sys_MsgBox(tGoldBossdeal_Text["SelfBosshaved"])
		end
		
		return false
	end

	local flat,tNum = Probabil_RandomAward(tGoldBossdeal_SelfBossaward[3307245],1)
	local nReward = tNum[1]["tAward"][1]["Item_1"]
	
	if nReward ~= nil then
		Task_SetStatistic(nEvent,nData,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nData,0,nUserId)
		Monster_SysDropItem(nReward)
	end
end

--片区怪掉落
function GoldBossdeal_PMonster(nMonsterTypeId)
	if not CommonFunc_ChkGoldServer() then
		return
	end
	
	----
	----注意不要对掩码进行频繁的操作
	----
	tGoldBossdeal_SmallMonster["MonsterNum"] = tGoldBossdeal_SmallMonster["MonsterNum"] + 1
	local nSumMonsterNum = tGoldBossdeal_SmallMonster["MonsterNum"]
	----片区怪掉落金币的概率
	--这里杀满50只怪对掩码进行一次读取操作
	
	if nSumMonsterNum >= 50 then
		

		local nWeekDay = Get_SysDynaGlobalData1(tGoldBossdeal_Global[1]) + 1
		local nWeek = math.modf(nWeekDay/7) + 1
		
		if nWeek > 4 then
			nWeek = 4
		end

		--更改最新的金币存量
		local nRemainMoney = Get_SysDynaGlobalData0(tGoldBossdeal_Global[1])
		local nSumMoney = nRemainMoney + tGoldBossdeal_SmallMonster["MoneyNum"]
		Sys_SetSynaGlobalData0(tGoldBossdeal_Global[1],nSumMoney)
		local nGrobalMoney = nSumMoney
		for i,v in pairs (tGoldBossdeal_Money[nWeek]) do
			local nRemain = tGoldBossdeal_Money[nWeek][1]["Money"] - nGrobalMoney
			if nRemain <= v["Money"] and nRemain > v["MoneyF"] then
				tGoldBossdeal_DropMoney["Monstertype"][1][1]["ItemChance"] = v["Chance"]
				tGoldBossdeal_DropMoney["Monstertype"][1][2]["ItemChance"] = 10000 - v["Chance"]
				break
			end
		end
		
		if (tGoldBossdeal_Money[nWeek][1]["Money"] - nGrobalMoney) <= 0 then
			tGoldBossdeal_DropMoney["Monstertype"][1][1]["ItemChance"] = 0
			tGoldBossdeal_DropMoney["Monstertype"][1][2]["ItemChance"] = 10000
		end
		--零时表清零
		tGoldBossdeal_SmallMonster["MonsterNum"] = 0 
		tGoldBossdeal_SmallMonster["MoneyNum"] = 0
	end
	
	
	--掉落金币
	local flat,tNum = Probabil_RandomAward(tGoldBossdeal_DropMoney["Monstertype"],1)
	local sReward = tNum[1]["tAward"][1]["Item_1"]
	if sReward == tGoldBossdeal_DropMoney["Monstertype"][1][1]["Item_1"] then
		local flat,tNum = Probabil_RandomAward(tGoldBossdeal_DropMoney["Monstertype"],2)
		local nMoney = tNum[1]["tAward"][1]["Item_1"]
		--更改动态码
		--Sys_SetSynaGlobalData0(tGoldBossdeal_Global[1],nMoney)
		tGoldBossdeal_SmallMonster["MoneyNum"] = tGoldBossdeal_SmallMonster["MoneyNum"] + nMoney
		Monster_SysDropMoney(nMoney)
	end
	
end

--星级boss掉落
function GoldBossdeal_StarBossDrop(nMonsterTypeId)

	--金币服判断
	if not CommonFunc_ChkGoldServer() then
		return
	end

	--死亡内存数量-1
	local nMapId = tGoldBossdeal_StarMonsterDrop[nMonsterTypeId]["MapId"]
	local nMonsterSumNum =  Get_SysTempData(1,nMapId,nMonsterTypeId)
	if nMonsterSumNum >= 1 then
		Sys_SetTempData(1,nMapId,nMonsterTypeId,nMonsterSumNum-1)
	end
	--星级boss邮件发送
	local nUserId = Get_UserId()
	local nActionId = tGoldBossdeal_StarMonsterDrop[nMonsterTypeId]["ActionId"]
	local nExistDay = tGoldBossdeal_StarMonsterDrop["Exit"]
	local sSender = tGoldBossdeal_Text["Mail"]["Sender"]
	local sTitle = tGoldBossdeal_Text["Mail"]["Title"]
	
	local sName = tGoldBossdeal_Text["Monster"][nMonsterTypeId]
	local sItemName = tGoldBossdeal_Text["MonsterItem"][nMonsterTypeId]
	local sContent = string.format(tGoldBossdeal_Text["Mail"]["Content"],sName,sItemName)
	Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	
	--系统提示
	local sUserName = Get_UserName(nUserId)
	User_TalkChannel2005(string.format(tGoldBossdeal_Text["StarBossTip"],sName))
	Sys_TalkBroadcast(string.format(tGoldBossdeal_Text["StarBossBroad"],sUserName,sName))
end

--星级boss与世界boss产生
function GoldBossdeal_Reset()
	--tGoldBossdeal_Reset
	if not CommonFunc_ChkGoldServer() then
		return
	end
	
	for i = 1,#tGoldBossdeal_Reset do
		--这一分钟产生的boss数量
		local nMonsterNum = tGoldBossdeal_Reset[i]["Num"]
		local nMonsterId = tGoldBossdeal_Reset[i]["MonsterId"]
		local nPostMap = tGoldBossdeal_Reset[i]["Mapid"]
		local nTime = #tGoldBossdeal_Reset[i]["Time"]
		local nGenId = tGoldBossdeal_Reset[i]["GenId"]
		local sBossName = tGoldBossdeal_Text["Monster"][nMonsterId]
		for j = 1,nTime,1 do
			local sTime = tGoldBossdeal_Reset[i]["Time"][j]
			
			--每隔一段时间执行一次
			if  Sys_ChkDayTime(sTime) then
				local nMonsterSumNum =  Get_SysTempData(1,tGoldBossdeal_Reset[i]["Mapid"],tGoldBossdeal_Reset[i]["MonsterId"])
				
					for k = 1,nMonsterNum,1 do
					
						if nMonsterSumNum < tGoldBossdeal_Reset[i]["Max"] then
							local nPosNum = math.random(1,#tGoldBossdeal_Reset[i]["Pos"])
							local nPosX = tGoldBossdeal_Reset[i]["Pos"][nPosNum][1]
							local nPosY = tGoldBossdeal_Reset[i]["Pos"][nPosNum][2]
							
							--世界boss只能有一只
							if nMonsterId == tGoldBossdeal_Reset[7]["MonsterId"] then
								
								Monster_AddMonster(nPostMap,nPosX,nPosY,nGenId,nMonsterId)
								Sys_SetTempData(1,tGoldBossdeal_Reset[7]["Mapid"],nMonsterId,1)
								Sys_SystemBroadcast(string.format(tGoldBossdeal_Text["BossFresh"],sBossName,nPosX,nPosY))
								
							else
								Monster_AddMonster(nPostMap,nPosX,nPosY,nGenId,nMonsterId)
								Sys_SetTempData(1,tGoldBossdeal_Reset[i]["Mapid"],nMonsterId,nMonsterSumNum + 1)
								
								local sMonsterName = tGoldBossdeal_Text["Monster"][nMonsterId]
								local sCityName = tGoldBossdeal_Text["MonsterCity"][nMonsterId]
								local sAward = tGoldBossdeal_Text["MonsterItem"][nMonsterId]
								Sys_TalkBroadcast(string.format(tGoldBossdeal_Text["StarFresh"],sMonsterName,sCityName,nPosX,nPosY,sAward))
							end
						end
						
					end
				
			end
		end
	end
end

--世界boss死亡全服公告
function GoldBossdeal_WorldBossDeath(nMonsterTypeId)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local sMonsterName = tGoldBossdeal_Text["Monster"][nMonsterTypeId]
	--杀了世界boss内存中数据清0
	Sys_SetTempData(1,tGoldBossdeal_Reset[7]["Mapid"],tGoldBossdeal_Reset[7]["MonsterId"],0)
	--Sys_TalkBroadcast
	Sys_SystemBroadcast(string.format(tGoldBossdeal_Text["WorldBoss"],sUserName,sMonsterName))
end

--悬赏令怪生成
function GoldBossdeal_Rewardorder(nNpcId)
	--获得global中的三个悬赏boss
	
	local nNum = 116
	local nSumMoney = 0
	for i,v in pairs (tGoldBossdeal_FunctionRank) do
		local nGlobalId = v["Global"]
		local nMonster_Id = v["GName"](nGlobalId)
		local nMonster_Star = tGoldBossdeal_Text["MonsterStar"][nMonster_Id]
		--local nPosX = v["Postx"]
		--local nPosY = v["Posty"]
		--local nPostSerise = nPosX.." "..nPosY
		local sCityName = tGoldBossdeal_Text["MonsterCity"][nMonster_Id]
		local sMonsterName = tGoldBossdeal_Text["Monster"][nMonster_Id]
		
		--刷新排行榜有段时间版上是没有东西的都写none
		if nMonster_Id ~= 0 then
			sCityName = sCityName.."\n"
			tNpcGossip[nNpcId]["Text"..nNum] = Sys_Alignment(sMonsterName,25,nMonster_Star,52,sCityName,80)
			nSumMoney = nSumMoney + tGoldBossdeal_StarMonsterDrop[nMonster_Id]["Awardmoney"]
		else
			sMonsterName = tGoldBossdeal_Text[22611]["Text138"]
			nMonster_Star = tGoldBossdeal_Text[22611]["Text138"]
			sCityName = tGoldBossdeal_Text[22611]["Text138"].."\n"
			tNpcGossip[nNpcId]["Text"..nNum] = Sys_Alignment(sMonsterName,25,nMonster_Star,52,sCityName,80)
			nSumMoney = 0 
		end
		nNum = nNum + 1
	end
	
	tNpcGossip[nNpcId]["Text120"] = string.format(tGoldBossdeal_Text[22612]["Text120"],nSumMoney)
	return true
end

--悬赏令领取奖励
function GoldBossdeal_RewardorderMoney(nNpcId)
	--判断玩家是否已收集所有画像
	local nUserId = Get_UserId()
	local nCompleted = 0
	local nSumMoney = 0
	
	--物品数量
	--清空临时表
	for i,v in pairs(tGoldBossdeal_SaveNeedNum) do
		tGoldBossdeal_SaveNeedNum[i] = 0
	end
	
	--存贮物品id
	local tSaveRankItem = {}
	for i,v in pairs (tGoldBossdeal_FunctionRank) do
		local nGlobal = v["Global"]
		local nMonsterId = v["GName"](nGlobal)
		
		if nMonsterId == 0 then
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			return
		end
		
		local nRankItemId = tGoldBossdeal_StarMonsterDrop[nMonsterId]["ItemId"]
		
		tGoldBossdeal_SaveNeedNum[nRankItemId] = tGoldBossdeal_SaveNeedNum[nRankItemId] + 1
		
		--储存进临时表
		table.insert(tSaveRankItem,nRankItemId)
		
		--计算赏金
		local money = tGoldBossdeal_StarMonsterDrop[nMonsterId]["Awardmoney"]
		nSumMoney = nSumMoney + money
	end
	
	for i,v in pairs (tGoldBossdeal_SaveNeedNum) do
		
		if v ~= 0 then
			if Item_ChkMulItem(i,i,v) then
				nCompleted = nCompleted + v
			end
		end
	end
	
	--玩家未集齐所有的画像
	if nCompleted < 3 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--玩家背包空间中的银两超过限制
	if not User_CanPutMoney2Bag(nSumMoney,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end

	--成功上交高手画像，获得金币
	for i = 1,3,1 do
		tGoldBossdeal_RankAwardmoney["Rank"]["DeleteItem"][i]["Id"] = tSaveRankItem[i]
	end
	tGoldBossdeal_RankAwardmoney["Rank"]["RewardMoney"]["Value"] = nSumMoney
	RewardTemplate_UseItemAndMsg(tGoldBossdeal_RankAwardmoney["Rank"])
end


--接领取赏金未集齐所有的画像
function GoldBossdeal_UnabledPic(nNpcId)
	
	local nText = 123
	local nTextU = 1231
	local nRankItemId = 0
	local nRankName = ""
	for i,v in pairs (tGoldBossdeal_FunctionRank) do
		local nGlobal = v["Global"]
		local nMonsterId = v["GName"](nGlobal)
		if nMonsterId ~= 0 then
			nRankItemId = tGoldBossdeal_StarMonsterDrop[nMonsterId]["ItemId"]
			nRankName = tGoldBossdeal_Text["MonsterItem"][nMonsterId]
		end
		
		local nItemNum = tGoldBossdeal_SaveNeedNum[nRankItemId]
		--local sText = "Text"..nText
		--local sTextU = "Text"..nTextU
		--判断背包中是否有该物品
		if nMonsterId ~= 0 then
			local nSpace = nItemNum
			
			if Item_ChkMulItem(nRankItemId,nRankItemId,nSpace) then
				tNpcGossip[nNpcId]["Text"..nText] = string.format(tGoldBossdeal_Text[nNpcId]["Text"..nText],nRankName)
			else
				tNpcGossip[nNpcId]["Text"..nText] = string.format(tGoldBossdeal_Text[nNpcId]["Text"..nTextU],nRankName)
			end
			tGoldBossdeal_SaveNeedNum[nRankItemId] = tGoldBossdeal_SaveNeedNum[nRankItemId] - 1
		else
			tNpcGossip[nNpcId]["Text"..nText] = string.format(tGoldBossdeal_Text[nNpcId]["Text"..nTextU],tGoldBossdeal_Text[22611]["Text138"])
		end
		nText = nText + 1
		nTextU = nTextU + 10
	end
	return true
end

--打开金币背包
function GoldBossdeal_OpenPack(nItemId)
	--金币上限判断
	if not User_CanPutMoney2Bag(tGoldBossdeal_GetRankgift[nItemId]["RewardMoney"]["Value"]) then
		Sys_MsgBox(tRewardTemplate_Text["Money"])
		return
	end

	RewardTemplate_UseItemAndMsg(tGoldBossdeal_GetRankgift[nItemId])
end
---------------------------------------------npc模板----------------------------------------------------
--【银两】除魔使者
tNpcFace[513] = 67
tNpcGossip[22611]= tNpcGossip[22611] or DefaultNpc:new{}
tNpcGossip[22611]["OptionHidden"] = 1
tNpcGossip[22611]["DialogueText"] = tGoldBossdeal_Text[22611]

--活动后
tNpcGossip[22611]["Text1-1"] = {111}
tNpcGossip[22611]["tOption1-1"] = {1}
tNpcGossip[22611]["ChkFunc1-1"]= function()
	return false
end

--活动中
tNpcGossip[22611]["Text1-2"] = {112,113,114}
tNpcGossip[22611]["tOption1-2"] = {2,3}
tNpcGossip[22611]["ChkFunc1-2"]= function()
	return GoldBossdeal_Activitychat()
end
tNpcGossip[22611]["OptionPoint2"] = "2-1"
tNpcGossip[22611]["OptionPoint3"] = "3-1"

--查看银两掉落
tNpcGossip[22611]["Text2-1"] = {115,116,117,118,119}
tNpcGossip[22611]["tOption2-1"] = {4}
tNpcGossip[22611]["ChkFunc2-1"]= function()
	return GoldBossdeal_LookSilverDrop()
end
tNpcGossip[22611]["OptionPoint4"] = 1


--查看伤害排行榜(玩家参与)
tNpcGossip[22611]["Text3-1"] = {120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137}
tNpcGossip[22611]["tOption3-1"] = {6}
tNpcGossip[22611]["ChkFunc3-1"]= function()
	return GoldBossdeal_RankDamage(22611)
end

--查看伤害排行榜(未有人击杀boss)
tNpcGossip[22611]["Text4-1"] = {120,121,1221,1231,1241,1251,1261,1271,1281,1291,1301,1311,1321,1331,1341,1351,136,121}
tNpcGossip[22611]["tOption4-1"] = {6}
tNpcGossip[22611]["OptionPoint6"] = 1
tNpcGossip[22611]["ChkFunc4-1"]= function()
	local nPostx = tGoldBossdeal_Reset[7]["Pos"][1][1]
	local nPosty = tGoldBossdeal_Reset[7]["Pos"][1][2]
	tNpcGossip[22611]["Text136"] = string.format(tGoldBossdeal_Text[22611]["Text136"],nPostx,nPosty)
	return true
end



--【银两】悬赏大使 
tNpcFace[514] = 92
tNpcGossip[22612]= tNpcGossip[22612] or DefaultNpc:new{}
tNpcGossip[22612]["OptionHidden"] = 1
tNpcGossip[22612]["DialogueText"] = tGoldBossdeal_Text[22612]

--活动后
tNpcGossip[22612]["Text1-1"] = {111}
tNpcGossip[22612]["tOption1-1"] = {1}
tNpcGossip[22612]["ChkFunc1-1"]= function()
	return false
end

--活动中
tNpcGossip[22612]["Text1-2"] = {112,113,114,115,116,117,118,119,120,121}
tNpcGossip[22612]["tOption1-2"] = {2,3}
tNpcGossip[22612]["ChkFunc1-2"]= function()
	return GoldBossdeal_Rewardorder(22612)
end
tNpcGossip[22612]["OptionFunc2"] = "GoldBossdeal_RewardorderMoney</N>22612"

--接领取赏金未集齐所有的画像
tNpcGossip[22612]["Text2-1"] = {123,124,125,126}
tNpcGossip[22612]["tOption2-1"] = {5}
tNpcGossip[22612]["OptionPoint5"] = 1
tNpcGossip[22612]["ChkFunc2-1"] = function()
	return GoldBossdeal_UnabledPic(22612)
end

--接领取赏金身上银两充足
tNpcGossip[22612]["Text3-1"] = {122}
tNpcGossip[22612]["tOption3-1"] = {4}
tNpcGossip[22612]["OptionPoint4"] = 1

---------------------------------------------物品模板----------------------------------------------------
--物品模板
tItem[3308405] = tItem[3308405] or {}
tItem[3308405]["Function"] = function(nItemId,sItemName)
	GoldBossdeal_OpenPack(nItemId)
end

tItem[3308406] = tItem[3308405]
tItem[3308407] = tItem[3308405]
tItem[3308408] = tItem[3308405]
tItem[3308409] = tItem[3308405]
tItem[3308410] = tItem[3308405]
tItem[3308411] = tItem[3308405]
tItem[3308412] = tItem[3308405]
tItem[3308413] = tItem[3308405]
tItem[3308414] = tItem[3308405]

---------------------------------------------怪物模板----------------------------------------------------
--星级boss
tMonster[4420] = tMonster[4420] or {}
tMonster[4420]["tFunction"] = tMonster[4420]["tFunction"] or {}
table.insert(tMonster[4420]["tFunction"],GoldBossdeal_StarBossDrop)
tMonster[4428] = tMonster[4420]
tMonster[4436] = tMonster[4420]
tMonster[4444] = tMonster[4420]
tMonster[4452] = tMonster[4420]

----世界boss
--死亡触发
tMonster[3049] = tMonster[3049] or {}
tMonster[3049]["tFunction"] = tMonster[3049]["tFunction"] or {}
table.insert(tMonster[3049]["tFunction"],GoldBossdeal_WorldBossDeath)

--伤害排行榜
tBossDamageBonus[3049] = tBossDamageBonus[3049] or {}
tBossDamageBonus[3049]["tFunction"] = tBossDamageBonus[3049]["tFunction"] or {}
table.insert(tBossDamageBonus[3049]["tFunction"],GoldBossdeal_Rank)

--个人boss掉落每日每天掉落银两折扣券
tMonster[3366] = tMonster[3366] or {}
tMonster[3366]["tFunction"] = tMonster[3366]["tFunction"] or {}
table.insert(tMonster[3366]["tFunction"],GoldBossdeal_SelfMonster)

tMonster[3367] = tMonster[3366]
tMonster[3368] = tMonster[3366]
tMonster[3369] = tMonster[3366]
tMonster[3370] = tMonster[3366]
tMonster[3371] = tMonster[3366]
tMonster[3372] = tMonster[3366]
tMonster[3373] = tMonster[3366]
tMonster[3374] = tMonster[3366]
tMonster[3375] = tMonster[3366]
tMonster[3376] = tMonster[3366]
tMonster[3377] = tMonster[3366]
tMonster[3378] = tMonster[3366]

--片区小怪
local tGoldBossdeal_Pdrop = {}
	-- 小怪的掉落
	tGoldBossdeal_Pdrop[1] = {}
	tGoldBossdeal_Pdrop[1]["Function"] = GoldBossdeal_PMonster
	tGoldBossdeal_Pdrop[1]["Area"] = {6,8}
table.insert(tMonsterDrop_AreaLoad,tGoldBossdeal_Pdrop[1])

--冰凌腾蛇
tMonster[2411] = tMonster[2411] or {}
tMonster[2411]["tFunction"] = tMonster[2411]["tFunction"] or {}
table.insert(tMonster[2411]["tFunction"],GoldBossdeal_PMonster)

---------------------------------------------时间自检----------------------------------------------------

tSystem_Prompet_Func = tSystem_Prompet_Func or {}
table.insert(tSystem_Prompet_Func,GoldBossdeal_Reset)


local tGoldBossdeal_Refreshrank = {}
--每天23:59 00:00 00:01 00:02 00:03这些时间刷新星级榜单和每天掉落金币数量
tGoldBossdeal_Refreshrank[1]= {}
tGoldBossdeal_Refreshrank[1]["Type"] = 6
tGoldBossdeal_Refreshrank[1]["TimeType"] = 4
tGoldBossdeal_Refreshrank[1]["Time"] = "00:00 00:03"
tGoldBossdeal_Refreshrank[1]["Func"] = GoldBossdeal_Refreshrank
table.insert(tSystemTime_InitialData,tGoldBossdeal_Refreshrank[1])

--每天23:59 00:04 00:05 00:06 00:07 00:08刷新星级榜单还原动态码
tGoldBossdeal_Refreshrank[2]= {}
tGoldBossdeal_Refreshrank[2]["Type"] = 6
tGoldBossdeal_Refreshrank[2]["TimeType"] = 4
tGoldBossdeal_Refreshrank[2]["Time"] = "00:04 00:08"
tGoldBossdeal_Refreshrank[2]["Func"] = GoldBossdeal_RefreshrankOrigin
table.insert(tSystemTime_InitialData,tGoldBossdeal_Refreshrank[2])


