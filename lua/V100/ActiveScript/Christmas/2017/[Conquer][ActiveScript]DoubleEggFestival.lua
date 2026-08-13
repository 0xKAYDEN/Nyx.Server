------------------------------------------------------------------------------------
--Name：            171031[简体征服][活动脚本]复用圣诞元旦小活动
--Creator:      江宇君
--Created:     2018/12/05
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--Name：            171031[简体征服][活动脚本]2017圣诞元旦活动
--Creator:      王贤
--Created:     2017/10/31
------------------------------------------------------------------------------------
-- 前缀： DoubleEggFestival_
-- LogId: 12000926
------------------------------------------------------------------------------------
--任务需求：
-- 活动时间：2017.12.21-2018.1.3

-- 1.制作双蛋节小活动

-- 2.双蛋节活动NPC移到城外，城外划分一个区域为安全区作为活动区域

------------------------------------------------------------------------------------
-- 掩码记录：
-- stc(169,40)	记录玩家圣诞红包打开的次数
-- stc(169,41)	记录玩家元旦红包打开的次数
-- stc(169,42)	记录玩家每天获得雪人NPC祝福的次数
-- stc(169,43)	记录玩家每天获得双蛋币的数量
-- stc(169,44)	记录玩家每天获得烟花的数量
-- stc(169,45)	记录玩家每天击杀老鼠获得双蛋礼盒的数量
-- stc(169,46)	记录玩家每天击杀老鼠BOSS获得双蛋外套礼盒的数量
-- stc(169,92)	记录玩家摇圣诞树掉红包的次数

----------------------------------表配置部分--------------------------------------------
local tDoubleEggFestival_Data = {}
-- 对白时间
tDoubleEggFestival_Data["ActivityTime"] = {}
tDoubleEggFestival_Data["ActivityTime"]["BeforeTime"] = tActivityTime["DoubleEgg"]["ActivityTime"]["BeforeTime"]
tDoubleEggFestival_Data["ActivityTime"]["NowTime"] = tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]
tDoubleEggFestival_Data["ActivityTime"]["ExchangeTime"] = tActivityTime["DoubleEgg"]["ActivityTime"]["ExchangeTime"]

-- 圣诞节  元旦节
tDoubleEggFestival_Data["DoubleEgg"] = {}
tDoubleEggFestival_Data["DoubleEgg"]["ChristmasTime"] = tActivityTime["DoubleEgg"]["ChristmasTime"]
tDoubleEggFestival_Data["DoubleEgg"]["NewYearTime"] = tActivityTime["DoubleEgg"]["NewYearTime"]
tDoubleEggFestival_Data["DoubleEgg"]["MapId"] = 1002
tDoubleEggFestival_Data["DoubleEgg"]["ChristmasItemId"] = 3311706
tDoubleEggFestival_Data["DoubleEgg"]["NewYearItemId"] = 3311707
tDoubleEggFestival_Data["DoubleEgg"]["PosX"] = 533
tDoubleEggFestival_Data["DoubleEgg"]["PosY"] = 273
tDoubleEggFestival_Data["DoubleEgg"]["Range"] = 5
tDoubleEggFestival_Data["DoubleEgg"]["ItemNum"] = 5
tDoubleEggFestival_Data["DoubleEgg"]["ExistTime"] = 60

-- 双蛋节红包
tDoubleEggFestival_Data["RedPacket"] = {}
tDoubleEggFestival_Data["RedPacket"][1] = tActivityTime["DoubleEgg"]["RedPacket"][1]
tDoubleEggFestival_Data["RedPacket"][2] = tActivityTime["DoubleEgg"]["RedPacket"][2]
tDoubleEggFestival_Data["RedPacket"]["EmoneyMonoNotice"] = 50
tDoubleEggFestival_Data["RedPacket"]["ChristmasEmoneyMonoMax"] = 150
-- 双蛋节烟花
tDoubleEggFestival_Data["FireWork"] = {}
tDoubleEggFestival_Data["FireWork"]["UseTime"] = tActivityTime["DoubleEgg"]["FireWork"]["UseTime"]
tDoubleEggFestival_Data["FireWork"]["MapId"] = 1002
tDoubleEggFestival_Data["FireWork"]["PosX1"] = 358
tDoubleEggFestival_Data["FireWork"]["PosX2"] = 289
tDoubleEggFestival_Data["FireWork"]["PosY1"] = 566
tDoubleEggFestival_Data["FireWork"]["PosY2"] = 504
tDoubleEggFestival_Data["FireWork"]["GoToMap"] = 1002
tDoubleEggFestival_Data["FireWork"]["GoToPosX"] = 332
tDoubleEggFestival_Data["FireWork"]["GoToPosY"] = 543
tDoubleEggFestival_Data["FireWork"]["EmoneyMonoMax"] = 50

-- 怪物
tDoubleEggFestival_Data["Monster"] = {}
tDoubleEggFestival_Data["Monster"]["DoubleEggCoinTime"] = tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]
tDoubleEggFestival_Data["Monster"]["DoubleEggCoinNum"] = 100
tDoubleEggFestival_Data["Monster"]["DoubleEggCoinId"] = 3311702
tDoubleEggFestival_Data["Monster"]["FireWorkTime"] = tActivityTime["DoubleEgg"]["Monster"]["FireWorkTime"]
tDoubleEggFestival_Data["Monster"]["FireWorkNum"] = 5
tDoubleEggFestival_Data["Monster"]["FireWorkId"] = 3311703
tDoubleEggFestival_Data["Monster"]["SuppriseGiftTime"] = tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]
tDoubleEggFestival_Data["Monster"]["SuppriseGiftNum"] = 5
tDoubleEggFestival_Data["Monster"]["SuppriseGiftId"] = 3311704
tDoubleEggFestival_Data["Monster"]["CoatGiftTime"] = tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]
tDoubleEggFestival_Data["Monster"]["CoatGiftNum"] = 1
tDoubleEggFestival_Data["Monster"]["CoatGiftId"] = 3311705
-- 其他
tDoubleEggFestival_Data["DoubleEggUseTime"] = tActivityTime["DoubleEgg"]["DoubleEggUseTime"]
tDoubleEggFestival_Data["DoubleEggBagTime"] = tActivityTime["DoubleEgg"]["DoubleEggBagTime"]
tDoubleEggFestival_Data["Level"] = 80
tDoubleEggFestival_Data["MinMeto"] = 0
tDoubleEggFestival_Data["EmoneyMonoMax"] = 88
tDoubleEggFestival_Data["Self"] = "self"
tDoubleEggFestival_Data["Effect"] = "eidolon"
tDoubleEggFestival_Data["OverTimeLog"] = "0,0,%d,1,12000926,2,0,0"
-- 传送
tDoubleEggFestival_Data["ChgMap"] = {}
tDoubleEggFestival_Data["ChgMap"]["MapId"] = 1002
tDoubleEggFestival_Data["ChgMap"]["PosX"] = 536
tDoubleEggFestival_Data["ChgMap"]["PosY"] = 283
tDoubleEggFestival_Data["ChgMap"]["Range"] = 5
tDoubleEggFestival_Data["ChgMapDD"] = {}
tDoubleEggFestival_Data["ChgMapDD"]["MapId"] = 1002
tDoubleEggFestival_Data["ChgMapDD"]["PosX"] = 347
tDoubleEggFestival_Data["ChgMapDD"]["PosY"] = 486
tDoubleEggFestival_Data["ChgMapDD"]["Range"] = 5

-- 幸运小雪人领奖随机后传送
tDoubleEggFestival_Data["LuckSnowMan"] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["NpcId"] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["NpcId"][1] = 22278
tDoubleEggFestival_Data["LuckSnowMan"]["NpcId"][2] = 22353
tDoubleEggFestival_Data["LuckSnowMan"]["NpcId"][3] = 22354
tDoubleEggFestival_Data["LuckSnowMan"]["NpcId"][4] = 22355
tDoubleEggFestival_Data["LuckSnowMan"]["NpcId"][5] = 22356
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][1] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][1]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][1]["PosX"] = 427
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][1]["PosY"] = 371
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][1]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][2] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][2]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][2]["PosX"] = 450
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][2]["PosY"] = 350
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][2]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][3] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][3]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][3]["PosX"] = 449
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][3]["PosY"] = 412
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][3]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][4] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][4]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][4]["PosX"] = 449
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][4]["PosY"] = 432
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][4]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][5] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][5]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][5]["PosX"] = 434
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][5]["PosY"] = 281
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][5]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][6] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][6]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][6]["PosX"] = 413
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][6]["PosY"] = 322
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][6]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][7] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][7]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][7]["PosX"] = 340
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][7]["PosY"] = 274
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][7]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][8] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][8]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][8]["PosX"] = 339
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][8]["PosY"] = 212
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][8]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][9] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][9]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][9]["PosX"] = 329
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][9]["PosY"] = 339
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][9]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][10] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][10]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][10]["PosX"] = 345
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][10]["PosY"] = 391
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][10]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][11] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][11]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][11]["PosX"] = 354
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][11]["PosY"] = 503
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][11]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][12] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][12]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][12]["PosX"] = 274
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][12]["PosY"] = 427
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][12]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][13] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][13]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][13]["PosX"] = 216
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][13]["PosY"] = 376
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][13]["Sign"] = 0
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][14] = {}
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][14]["MapId"] = 1002
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][14]["PosX"] = 316
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][14]["PosY"] = 384
tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"][14]["Sign"] = 0

-- 掩码记录
tDoubleEggFestival_Data["EventType"] = {}
tDoubleEggFestival_Data["DataType"] = {}
-- stc(169,40)	记录玩家圣诞红包打开的次数
tDoubleEggFestival_Data["EventType"][1] = 169
tDoubleEggFestival_Data["DataType"][1] = 40
-- stc(169,41)	记录玩家元旦红包打开的次数
tDoubleEggFestival_Data["EventType"][2] = 169
tDoubleEggFestival_Data["DataType"][2] = 41
-- stc(169,42)	记录玩家每天获得雪人NPC祝福的次数
tDoubleEggFestival_Data["EventType"][3] = 169
tDoubleEggFestival_Data["DataType"][3] = 42
-- stc(169,43)	记录玩家每天获得双蛋币的数量
tDoubleEggFestival_Data["EventType"][4] = 169
tDoubleEggFestival_Data["DataType"][4] = 43
-- stc(169,44)	记录玩家每天获得烟花的数量
tDoubleEggFestival_Data["EventType"][5] = 169
tDoubleEggFestival_Data["DataType"][5] = 44
-- stc(169,45)	记录玩家每天击杀老鼠获得双蛋礼盒的数量
tDoubleEggFestival_Data["EventType"][6] = 169
tDoubleEggFestival_Data["DataType"][6] = 45
-- stc(169,46)	记录玩家每天击杀老鼠BOSS获得双蛋外套礼盒的数量
tDoubleEggFestival_Data["EventType"][7] = 169
tDoubleEggFestival_Data["DataType"][7] = 46
-- stc(169,92)	记录玩家摇圣诞树掉红包的次数
tDoubleEggFestival_Data["EventType"][8] = 169
tDoubleEggFestival_Data["DataType"][8] = 92

-- 双蛋节奖励使用
local tDoubleEggFestival_Reward = {}

-- 双旦礼盒
tDoubleEggFestival_Reward[3311704] = {}
tDoubleEggFestival_Reward[3311704]["ItemChanceSum"] = 10000
-- 赤练石+2
tDoubleEggFestival_Reward[3311704][1] = {}
tDoubleEggFestival_Reward[3311704][1]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311704][1]["ItemChance"] = 2200
tDoubleEggFestival_Reward[3311704][1]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311704][1]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311704][1]["RewardItem"][1]["Id"] = 730002
tDoubleEggFestival_Reward[3311704][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 1个 赠品 激活时效7天
tDoubleEggFestival_Reward[3311704][1]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311704][1]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311704][1]["LogId"] = 12000926
-- 明亮星陨石
tDoubleEggFestival_Reward[3311704][2] = {}
tDoubleEggFestival_Reward[3311704][2]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311704][2]["ItemChance"] = 2000
tDoubleEggFestival_Reward[3311704][2]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311704][2]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311704][2]["RewardItem"][1]["Id"] = 3009001
tDoubleEggFestival_Reward[3311704][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tDoubleEggFestival_Reward[3311704][2]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311704][2]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311704][2]["LogId"] = 12000926
-- 秘制免费修炼丹
tDoubleEggFestival_Reward[3311704][3] = {}
tDoubleEggFestival_Reward[3311704][3]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311704][3]["ItemChance"] = 1500
tDoubleEggFestival_Reward[3311704][3]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311704][3]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311704][3]["RewardItem"][1]["Id"] = 3002926
tDoubleEggFestival_Reward[3311704][3]["RewardItem"][1]["Attr"] = "0 1"
tDoubleEggFestival_Reward[3311704][3]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311704][3]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311704][3]["LogId"] = 12000926
-- 究极通神丹
tDoubleEggFestival_Reward[3311704][4] = {}
tDoubleEggFestival_Reward[3311704][4]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311704][4]["ItemChance"] = 2300
tDoubleEggFestival_Reward[3311704][4]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311704][4]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311704][4]["RewardItem"][1]["Id"] = 3003126
tDoubleEggFestival_Reward[3311704][4]["RewardItem"][1]["Attr"] = "0 1 3"
tDoubleEggFestival_Reward[3311704][4]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311704][4]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311704][4]["LogId"] = 12000926
-- 气力值100
tDoubleEggFestival_Reward[3311704][5] = {}
tDoubleEggFestival_Reward[3311704][5]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311704][5]["ItemChance"] = 2000
tDoubleEggFestival_Reward[3311704][5]["RewardStrengthValue"] = {}
tDoubleEggFestival_Reward[3311704][5]["RewardStrengthValue"]["Value"] = 100
tDoubleEggFestival_Reward[3311704][5]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311704][5]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311704][5]["LogId"] = 12000926

-- 圣诞红包
tDoubleEggFestival_Reward[3311706] = {}
tDoubleEggFestival_Reward[3311706]["ItemChanceSum"] = 10000

-- 赤炼石+1
tDoubleEggFestival_Reward[3311706][1] = {}
tDoubleEggFestival_Reward[3311706][1]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311706][1]["ItemChance"] = 2500
tDoubleEggFestival_Reward[3311706][1]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311706][1]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311706][1]["RewardItem"][1]["Id"] = 730001
tDoubleEggFestival_Reward[3311706][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tDoubleEggFestival_Reward[3311706][1]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311706][1]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311706][1]["LogId"] = 12000926
-- 赤炼石+2
tDoubleEggFestival_Reward[3311706][2] = {}
tDoubleEggFestival_Reward[3311706][2]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311706][2]["ItemChance"] = 2500
tDoubleEggFestival_Reward[3311706][2]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311706][2]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311706][2]["RewardItem"][1]["Id"] = 730002
tDoubleEggFestival_Reward[3311706][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tDoubleEggFestival_Reward[3311706][2]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311706][2]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311706][2]["LogId"] = 12000926
-- 赤炼石+3
tDoubleEggFestival_Reward[3311706][3] = {}
tDoubleEggFestival_Reward[3311706][3]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311706][3]["ItemChance"] = 1000
tDoubleEggFestival_Reward[3311706][3]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311706][3]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311706][3]["RewardItem"][1]["Id"] = 730003
tDoubleEggFestival_Reward[3311706][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tDoubleEggFestival_Reward[3311706][3]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311706][3]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311706][3]["LogId"] = 12000926
-- 气力值100
tDoubleEggFestival_Reward[3311706][4] = {}
tDoubleEggFestival_Reward[3311706][4]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311706][4]["ItemChance"] = 3000
tDoubleEggFestival_Reward[3311706][4]["RewardStrengthValue"] = {}
tDoubleEggFestival_Reward[3311706][4]["RewardStrengthValue"]["Value"] = 100
tDoubleEggFestival_Reward[3311706][4]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311706][4]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311706][4]["LogId"] = 12000926
-- 气力值200
tDoubleEggFestival_Reward[3311706][5] = {}
tDoubleEggFestival_Reward[3311706][5]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311706][5]["ItemChance"] = 1000
tDoubleEggFestival_Reward[3311706][5]["RewardStrengthValue"] = {}
tDoubleEggFestival_Reward[3311706][5]["RewardStrengthValue"]["Value"] = 200
tDoubleEggFestival_Reward[3311706][5]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311706][5]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311706][5]["LogId"] = 12000926


-- 元旦红包
tDoubleEggFestival_Reward[3311707] = {}
tDoubleEggFestival_Reward[3311707]["ItemChanceSum"] = 10000

-- 赤炼石+1
tDoubleEggFestival_Reward[3311707][1] = {}
tDoubleEggFestival_Reward[3311707][1]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311707][1]["ItemChance"] = 2500
tDoubleEggFestival_Reward[3311707][1]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311707][1]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311707][1]["RewardItem"][1]["Id"] = 730001
tDoubleEggFestival_Reward[3311707][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tDoubleEggFestival_Reward[3311707][1]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311707][1]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311707][1]["LogId"] = 12000926
-- 赤炼石+2               
tDoubleEggFestival_Reward[3311707][2] = {}
tDoubleEggFestival_Reward[3311707][2]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311707][2]["ItemChance"] = 2500
tDoubleEggFestival_Reward[3311707][2]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311707][2]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311707][2]["RewardItem"][1]["Id"] = 730002
tDoubleEggFestival_Reward[3311707][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tDoubleEggFestival_Reward[3311707][2]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311707][2]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311707][2]["LogId"] = 12000926
-- 赤炼石+3               
tDoubleEggFestival_Reward[3311707][3] = {}
tDoubleEggFestival_Reward[3311707][3]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311707][3]["ItemChance"] = 1000
tDoubleEggFestival_Reward[3311707][3]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311707][3]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311707][3]["RewardItem"][1]["Id"] = 730003
tDoubleEggFestival_Reward[3311707][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tDoubleEggFestival_Reward[3311707][3]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311707][3]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311707][3]["LogId"] = 12000926
-- 气力值100
tDoubleEggFestival_Reward[3311707][4] = {}
tDoubleEggFestival_Reward[3311707][4]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311707][4]["ItemChance"] = 3000
tDoubleEggFestival_Reward[3311707][4]["RewardStrengthValue"] = {}
tDoubleEggFestival_Reward[3311707][4]["RewardStrengthValue"]["Value"] = 100
tDoubleEggFestival_Reward[3311707][4]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311707][4]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311707][4]["LogId"] = 12000926
-- 气力值200
tDoubleEggFestival_Reward[3311707][5] = {}
tDoubleEggFestival_Reward[3311707][5]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311707][5]["ItemChance"] = 1000
tDoubleEggFestival_Reward[3311707][5]["RewardStrengthValue"] = {}
tDoubleEggFestival_Reward[3311707][5]["RewardStrengthValue"]["Value"] = 200
tDoubleEggFestival_Reward[3311707][5]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311707][5]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311707][5]["LogId"] = 12000926


-- 双蛋暖冬外套礼盒
tDoubleEggFestival_Reward[3311705] = {}
-- 圣诞嘉年华外套
tDoubleEggFestival_Reward[3311705][1] = {}
tDoubleEggFestival_Reward[3311705][1]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311705][1]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311705][1]["DeleteItem"][1]["Id"] = 3311705
tDoubleEggFestival_Reward[3311705][1]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311705][1]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311705][1]["RewardItem"][1]["Id"] = 187515
tDoubleEggFestival_Reward[3311705][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 0 0 0 1"
tDoubleEggFestival_Reward[3311705][1]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311705][1]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311705][1]["LogId"] = 12000926

-- 圣诞嗨皮
tDoubleEggFestival_Reward[3311705][2] = {}
tDoubleEggFestival_Reward[3311705][2]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311705][2]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311705][2]["DeleteItem"][1]["Id"] = 3311705
tDoubleEggFestival_Reward[3311705][2]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311705][2]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311705][2]["RewardItem"][1]["Id"] = 192555
tDoubleEggFestival_Reward[3311705][2]["RewardItem"][1]["Attr"] = "0 1 3 1440 0 0 0 1"
tDoubleEggFestival_Reward[3311705][2]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311705][2]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311705][2]["LogId"] = 12000926

-- 圣诞雪花
tDoubleEggFestival_Reward[3311705][3] = {}
tDoubleEggFestival_Reward[3311705][3]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311705][3]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311705][3]["DeleteItem"][1]["Id"] = 3311705
tDoubleEggFestival_Reward[3311705][3]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311705][3]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311705][3]["RewardItem"][1]["Id"] = 188975
tDoubleEggFestival_Reward[3311705][3]["RewardItem"][1]["Attr"] = "0 1 3 1440 0 0 0 1"
tDoubleEggFestival_Reward[3311705][3]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311705][3]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311705][3]["LogId"] = 12000926

-- 圣诞套装
tDoubleEggFestival_Reward[3311705][4] = {}
tDoubleEggFestival_Reward[3311705][4]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311705][4]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311705][4]["DeleteItem"][1]["Id"] = 3311705
tDoubleEggFestival_Reward[3311705][4]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311705][4]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311705][4]["RewardItem"][1]["Id"] = 183465
tDoubleEggFestival_Reward[3311705][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 0 0 0 1"
tDoubleEggFestival_Reward[3311705][4]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311705][4]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311705][4]["LogId"] = 12000926

-- 双蛋币过期使用
tDoubleEggFestival_Reward[3311702] = {}
tDoubleEggFestival_Reward[3311702]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311702]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311702]["DeleteItem"][1]["Id"] = 3311702
tDoubleEggFestival_Reward[3311702]["DeleteItem"][1]["ItemNum"] = 0
tDoubleEggFestival_Reward[3311702]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311702]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311702]["RewardItem"][1]["Id"] = 3301454
tDoubleEggFestival_Reward[3311702]["RewardItem"][1]["Attr"] = "0 %d"
tDoubleEggFestival_Reward[3311702]["LogId"] = 12000926
-- 烟花使用  1天神佑祝福 随机赠点
tDoubleEggFestival_Reward[3311703] = {}
tDoubleEggFestival_Reward[3311703]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311703]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311703]["DeleteItem"][1]["Id"] = 3311703
tDoubleEggFestival_Reward[3311703]["RewardBless"] = {}
tDoubleEggFestival_Reward[3311703]["RewardBless"]["Value"] = 24 -- 1天祝福
tDoubleEggFestival_Reward[3311703]["RewardStrengthValue"] = {}
tDoubleEggFestival_Reward[3311703]["RewardStrengthValue"]["Value"] = 0
tDoubleEggFestival_Reward[3311703]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311703]["RewardEffect"]["Effect"] = "FF07"
tDoubleEggFestival_Reward[3311703]["LogId"] = 12000926

-- 双蛋天石赠礼袋 随机赠点 1-88
tDoubleEggFestival_Reward[3311761] = {}
tDoubleEggFestival_Reward[3311761][1] = {}
tDoubleEggFestival_Reward[3311761][1]["ItemChanceSum"] = 10000
-- 1-10 赠点
tDoubleEggFestival_Reward[3311761][1][1] = {}
tDoubleEggFestival_Reward[3311761][1][1]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311761][1][1]["ItemChance"] = 500
tDoubleEggFestival_Reward[3311761][1][1]["Start"] = 1
tDoubleEggFestival_Reward[3311761][1][1]["End"] = 10
-- 11-20赠点
tDoubleEggFestival_Reward[3311761][1][2] = {}
tDoubleEggFestival_Reward[3311761][1][2]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311761][1][2]["ItemChance"] = 2500
tDoubleEggFestival_Reward[3311761][1][2]["Start"] = 11
tDoubleEggFestival_Reward[3311761][1][2]["End"] = 20
-- 21-30赠点
tDoubleEggFestival_Reward[3311761][1][3] = {}
tDoubleEggFestival_Reward[3311761][1][3]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311761][1][3]["ItemChance"] = 3500
tDoubleEggFestival_Reward[3311761][1][3]["Start"] = 21
tDoubleEggFestival_Reward[3311761][1][3]["End"] = 30
-- 31-40赠点
tDoubleEggFestival_Reward[3311761][1][4] = {}
tDoubleEggFestival_Reward[3311761][1][4]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311761][1][4]["ItemChance"] = 1800
tDoubleEggFestival_Reward[3311761][1][4]["Start"] = 31
tDoubleEggFestival_Reward[3311761][1][4]["End"] = 40
-- 41-50赠点
tDoubleEggFestival_Reward[3311761][1][5] = {}
tDoubleEggFestival_Reward[3311761][1][5]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311761][1][5]["ItemChance"] = 1200
tDoubleEggFestival_Reward[3311761][1][5]["Start"] = 41
tDoubleEggFestival_Reward[3311761][1][5]["End"] = 50
-- 51-60赠点
tDoubleEggFestival_Reward[3311761][1][6] = {}
tDoubleEggFestival_Reward[3311761][1][6]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311761][1][6]["ItemChance"] = 400
tDoubleEggFestival_Reward[3311761][1][6]["Start"] = 51
tDoubleEggFestival_Reward[3311761][1][6]["End"] = 60
-- 61-88赠点
tDoubleEggFestival_Reward[3311761][1][7] = {}
tDoubleEggFestival_Reward[3311761][1][7]["RandomItemChanceType"] = 2
tDoubleEggFestival_Reward[3311761][1][7]["ItemChance"] = 100
tDoubleEggFestival_Reward[3311761][1][7]["Start"] = 61
tDoubleEggFestival_Reward[3311761][1][7]["End"] = 88

tDoubleEggFestival_Reward[3311761][2] = {}
tDoubleEggFestival_Reward[3311761][2]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311761][2]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311761][2]["DeleteItem"][1]["Id"] = 3311761
tDoubleEggFestival_Reward[3311761][2]["RewardEMoneyMono"] = {}
tDoubleEggFestival_Reward[3311761][2]["RewardEMoneyMono"]["Value"] = 0
tDoubleEggFestival_Reward[3311761][2]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311761][2]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311761][2]["LogId"] = 12000926

-- 3天圣诞嗨皮礼包
tDoubleEggFestival_Reward[3311708] = {}
tDoubleEggFestival_Reward[3311708]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311708]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311708]["DeleteItem"][1]["Id"] = 3311708
tDoubleEggFestival_Reward[3311708]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311708]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311708]["RewardItem"][1]["Id"] = 192555
tDoubleEggFestival_Reward[3311708]["RewardItem"][1]["Attr"] = "0 1 3 10080 0 0 0 1"
tDoubleEggFestival_Reward[3311708]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311708]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311708]["LogId"] = 12000926

-- 3天圣诞嘉年华
tDoubleEggFestival_Reward[3311709] = {}
tDoubleEggFestival_Reward[3311709]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311709]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311709]["DeleteItem"][1]["Id"] = 3311709
tDoubleEggFestival_Reward[3311709]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311709]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311709]["RewardItem"][1]["Id"] = 187515
tDoubleEggFestival_Reward[3311709]["RewardItem"][1]["Attr"] = "0 1 3 10080 0 0 0 1"
tDoubleEggFestival_Reward[3311709]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311709]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311709]["LogId"] = 12000926

-- 3天圣诞雪花
tDoubleEggFestival_Reward[3311710] = {}
tDoubleEggFestival_Reward[3311710]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311710]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311710]["DeleteItem"][1]["Id"] = 3311710
tDoubleEggFestival_Reward[3311710]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311710]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311710]["RewardItem"][1]["Id"] = 188975
tDoubleEggFestival_Reward[3311710]["RewardItem"][1]["Attr"] = "0 1 3 10080 0 0 0 1"
tDoubleEggFestival_Reward[3311710]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311710]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311710]["LogId"] = 12000926

-- 3天圣诞恋歌
tDoubleEggFestival_Reward[3311718] = {}
tDoubleEggFestival_Reward[3311718]["DeleteItem"] = {}
tDoubleEggFestival_Reward[3311718]["DeleteItem"][1] = {}
tDoubleEggFestival_Reward[3311718]["DeleteItem"][1]["Id"] = 3311718
tDoubleEggFestival_Reward[3311718]["RewardItem"] = {}
tDoubleEggFestival_Reward[3311718]["RewardItem"][1] = {}
tDoubleEggFestival_Reward[3311718]["RewardItem"][1]["Id"] = 195015
tDoubleEggFestival_Reward[3311718]["RewardItem"][1]["Attr"] = "0 1 3 10080 0 0 0 1"
tDoubleEggFestival_Reward[3311718]["RewardEffect"] = {}
tDoubleEggFestival_Reward[3311718]["RewardEffect"]["Effect"] = "angelwing"
tDoubleEggFestival_Reward[3311718]["LogId"] = 12000926


local tDoubleEggFestival_Award = {}

-- 雪人  3天神佑祝福
tDoubleEggFestival_Award["Bless"] = {}
tDoubleEggFestival_Award["Bless"]["RewardBless"] = {}
tDoubleEggFestival_Award["Bless"]["RewardBless"]["Value"] = 72 -- 3天祝福
tDoubleEggFestival_Award["Bless"]["LogStep"] = "1[1]"
tDoubleEggFestival_Award["Bless"]["RewardEffect"] = {}
tDoubleEggFestival_Award["Bless"]["RewardEffect"]["Effect"] = "zf2-e128"
tDoubleEggFestival_Award["Bless"]["LogId"] = 12000926

-- 双蛋币 概率表
tDoubleEggFestival_Award[3311702] = {}
tDoubleEggFestival_Award[3311702][1] = {}
tDoubleEggFestival_Award[3311702][1]["ItemChanceSum"] = 10000
tDoubleEggFestival_Award[3311702][1][1] = {}
tDoubleEggFestival_Award[3311702][1][1]["RandomItemChanceType"] = 2
tDoubleEggFestival_Award[3311702][1][1]["ItemChance"] = 1000
tDoubleEggFestival_Award[3311702][1][1]["Item_1"] = 3311702
tDoubleEggFestival_Award[3311702][1][2] = {}
tDoubleEggFestival_Award[3311702][1][2]["RandomItemChanceType"] = 2
tDoubleEggFestival_Award[3311702][1][2]["ItemChance"] = 9000
tDoubleEggFestival_Award[3311702][1][2]["Item_1"] = 0
-- 双蛋币 奖励表
tDoubleEggFestival_Award[3311702][2] = {}
tDoubleEggFestival_Award[3311702][2]["RewardItem"] = {}
tDoubleEggFestival_Award[3311702][2]["RewardItem"][1] = {}
tDoubleEggFestival_Award[3311702][2]["RewardItem"][1]["Id"] = 3311702
tDoubleEggFestival_Award[3311702][2]["RewardItem"][1]["Attr"] = "0 1"
tDoubleEggFestival_Award[3311702][2]["LogStep"] = "1[2]"
tDoubleEggFestival_Award[3311702][2]["LogId"] = 12000926
-- 双蛋节烟花 概率表
tDoubleEggFestival_Award[3311703] = {}
tDoubleEggFestival_Award[3311703][1] = {}
tDoubleEggFestival_Award[3311703][1]["ItemChanceSum"] = 10000
tDoubleEggFestival_Award[3311703][1][1] = {}
tDoubleEggFestival_Award[3311703][1][1]["RandomItemChanceType"] = 2
tDoubleEggFestival_Award[3311703][1][1]["ItemChance"] = 300
tDoubleEggFestival_Award[3311703][1][1]["Item_1"] = 3311703
tDoubleEggFestival_Award[3311703][1][2] = {}
tDoubleEggFestival_Award[3311703][1][2]["RandomItemChanceType"] = 2
tDoubleEggFestival_Award[3311703][1][2]["ItemChance"] = 9700
tDoubleEggFestival_Award[3311703][1][2]["Item_1"] = 0
-- 双蛋节烟花 奖励表
tDoubleEggFestival_Award[3311703][2] = {}
tDoubleEggFestival_Award[3311703][2]["RewardItem"] = {}
tDoubleEggFestival_Award[3311703][2]["RewardItem"][1] = {}
tDoubleEggFestival_Award[3311703][2]["RewardItem"][1]["Id"] = 3311703
tDoubleEggFestival_Award[3311703][2]["RewardItem"][1]["Attr"] = "0 1"
tDoubleEggFestival_Award[3311703][2]["LogStep"] = "1[3]"
tDoubleEggFestival_Award[3311703][2]["LogId"] = 12000926
-- 双蛋惊喜礼盒 概率表
tDoubleEggFestival_Award[3311704] = {}
tDoubleEggFestival_Award[3311704][1] = {}
tDoubleEggFestival_Award[3311704][1]["ItemChanceSum"] = 10000
tDoubleEggFestival_Award[3311704][1][1] = {}
tDoubleEggFestival_Award[3311704][1][1]["RandomItemChanceType"] = 2
tDoubleEggFestival_Award[3311704][1][1]["ItemChance"] = 1000
tDoubleEggFestival_Award[3311704][1][1]["Item_1"] = 3311704
tDoubleEggFestival_Award[3311704][1][2] = {}
tDoubleEggFestival_Award[3311704][1][2]["RandomItemChanceType"] = 2
tDoubleEggFestival_Award[3311704][1][2]["ItemChance"] = 9000
tDoubleEggFestival_Award[3311704][1][2]["Item_1"] = 0
-- 双蛋惊喜礼盒 奖励表
tDoubleEggFestival_Award[3311704][2] = {}
tDoubleEggFestival_Award[3311704][2]["RewardItem"] = {}
tDoubleEggFestival_Award[3311704][2]["RewardItem"][1] = {}
tDoubleEggFestival_Award[3311704][2]["RewardItem"][1]["Id"] = 3311704
tDoubleEggFestival_Award[3311704][2]["RewardItem"][1]["Attr"] = "0 1"
tDoubleEggFestival_Award[3311704][2]["LogStep"] = "1[5]"
tDoubleEggFestival_Award[3311704][2]["LogId"] = 12000926

-- 双蛋暖冬外套礼盒
tDoubleEggFestival_Award[3311705] = {}
tDoubleEggFestival_Award[3311705]["RewardItem"] = {}
tDoubleEggFestival_Award[3311705]["RewardItem"][1] = {}
tDoubleEggFestival_Award[3311705]["RewardItem"][1]["Id"] = 3311705
tDoubleEggFestival_Award[3311705]["RewardItem"][1]["Attr"] = "0 1"
tDoubleEggFestival_Award[3311705]["LogStep"] = "1[6]"
tDoubleEggFestival_Award[3311705]["LogId"] = 12000926

----------------------------------逻辑部分---------------------------------------------

-- 双蛋币过期使用
function DoubleEggFestival_DoubleEggCoin(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEggUseTime"]) then
		local nNum = Get_CountItemType(nItemId, 0)
		local tReward = CommonFunc_Copy(tDoubleEggFestival_Reward[nItemId])
		tReward["DeleteItem"][1]["ItemNum"] = nNum
		tReward["RewardItem"][1]["Attr"] = string.format(tDoubleEggFestival_Reward[3311702]["RewardItem"][1]["Attr"], nNum)
		if RewardTemplate_UseItem(tReward) then
			User_TalkChannel2005(string.format(tDoubleEggFestival_Text["Sys"]["DoubleEggCoinOverTime"], nNum))
		end
	else
		if DoubleEggFestival_ChkCentralPlain() then
			return
		end
		
		local nPosX = tDoubleEggFestival_Data["ChgMap"]["PosX"]
		local nPosY = tDoubleEggFestival_Data["ChgMap"]["PosY"]
		local nMapId = tDoubleEggFestival_Data["ChgMap"]["MapId"]
		Sys_GotoSomeWhere(nPosX, nPosY, nMapId)
	end
end

--- 判断玩家是否在固定点
function DoubleEggFestival_ChkMap()
	local nUserMapId = Get_UserMapId()
	local nUserPosX = Get_UserPositionX()
	local nUserPosY = Get_UserPositionY()

	if nUserMapId == tDoubleEggFestival_Data["FireWork"]["MapId"] then
		if nUserPosX <= tDoubleEggFestival_Data["FireWork"]["PosX1"] and nUserPosX >= tDoubleEggFestival_Data["FireWork"]["PosX2"] then
			if nUserPosY <= tDoubleEggFestival_Data["FireWork"]["PosY1"] and nUserPosY >= tDoubleEggFestival_Data["FireWork"]["PosY2"] then
				return false
			end
		end
	end
	return true
end

-- 判断是否在双龙城
function DoubleEggFestival_ChkCentralPlain()
	local nUserMapId = Get_UserMapId()

	if nUserMapId == tDoubleEggFestival_Data["FireWork"]["MapId"] then
		return false
	end
	return true
end

-- 自动寻路到燃放烟花地点
function DoubleEggFestival_MoveToFireWorkMap()
	if DoubleEggFestival_ChkCentralPlain() then
		User_TalkChannel2005(tDoubleEggFestival_Text["Sys"]["ChkMap"])
		return
	end
	
	local nPosX = tDoubleEggFestival_Data["FireWork"]["GoToPosX"]
	local nPosY = tDoubleEggFestival_Data["FireWork"]["GoToPosY"]
	local nMapId = tDoubleEggFestival_Data["FireWork"]["GoToMap"]
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId)
end


-- 双蛋节烟花使用
function DoubleEggFestival_FireworkNew(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["FireWork"]["UseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tDoubleEggFestival_Data["OverTimeLog"], nItemId)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tDoubleEggFestival_Text["Sys"]["CoinOverTime"])
		end
		return
	end
	
	if DoubleEggFestival_ChkMap() then
		Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["ErroMap"], "DoubleEggFestival_MoveToFireWorkMap")
		return
	end
	
	local tReward = CommonFunc_Copy(tDoubleEggFestival_Reward[nItemId])
	local nStrengthValue = math.random(50, 200)
	tReward["RewardStrengthValue"]["Value"] = nStrengthValue
	
	RewardTemplate_UseItem(tReward)
end

-- 双蛋惊喜礼盒
function DoubleEggFestival_SuppriseGift(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEggUseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tDoubleEggFestival_Data["OverTimeLog"], nItemId)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["GiftOverTime"])
		end
		return
	end
	
	if not RewardTemplate_CheckSpace(tDoubleEggFestival_Reward[nItemId]) then
		return
	end
	
	if Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tDoubleEggFestival_Reward, nItemId)
	end
end

-- 双蛋天石赠礼袋
function DoubleEggFestival_EmoneyMonoPackage(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEggBagTime"]) then
		if Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tDoubleEggFestival_Data["OverTimeLog"], nItemId)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["PackageOverTime"])
		end
		return
	end
	
	-- 赠点上限判断
	if Get_UserMonoEMoney() + tDoubleEggFestival_Data["EmoneyMonoMax"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["FullEmoneyMonoT"])
		return
	end
	
	local tReward = RewardTemplate_NewRandom(tDoubleEggFestival_Reward[nItemId], 1)
	
	local nStart = tReward[1]["tAward"][1]["Start"]
	local nEnd = tReward[1]["tAward"][1]["End"]
	local nEmoneyMono = math.random(nStart,nEnd)
	local tDoubleReward = CommonFunc_Copy(tDoubleEggFestival_Reward[nItemId][2])
	tDoubleReward["RewardEMoneyMono"]["Value"] = nEmoneyMono
	RewardTemplate_UseItem(tDoubleReward)
end

-- 双蛋节红包
function DoubleEggFestival_ChristmasRedPacketNew(nItemId, nNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["RedPacket"][nNum]) then
		if Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tDoubleEggFestival_Data["OverTimeLog"], nItemId)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["RedPacketOverTime"])
		end
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["NotEnoughLev"])
		return
	end
	
	local nEvent = tDoubleEggFestival_Data["EventType"][nNum]
	local nData = tDoubleEggFestival_Data["DataType"][nNum]
	if Task_ChkStcValue(nEvent, nData, ">=", 5) then
		Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["FullTimes"])
		return
	end
	
	-- 背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tDoubleEggFestival_Reward, nItemId)
	
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["FullBag"])
		return
	end
	
	if Item_DelItem(nItemId) then
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		local tReward = RewardTemplate_NewRandom(tDoubleEggFestival_Reward, nItemId)
	end
end

-- 双蛋暖冬外套礼盒  时效判断
function DoubleEggFestival_CoatGiftChkTime(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEggUseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tDoubleEggFestival_Data["OverTimeLog"], nItemId)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["GiftOverTime"])
		end
		return
	end
	LinkItemGossipFunc_New(nItemId, "1-1")
end

-- 双蛋暖冬外套礼盒
function DoubleEggFestival_CoatGift(nItemId, nCoatNum)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEggUseTime"]) then
		if Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tDoubleEggFestival_Data["OverTimeLog"], nItemId)
			Sys_SaveActionFestivalLog(sLog)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["GiftOverTime"])
		end
		return
	end
	
	if not RewardTemplate_CheckSpace(tDoubleEggFestival_Reward[nItemId]) then
		return
	end
	RewardTemplate_UseItem(tDoubleEggFestival_Reward[nItemId][nCoatNum])
end

-- 传送到活动地图
function DoubleEggFestival_MoveToMap()
	local nMapId = tDoubleEggFestival_Data["ChgMap"]["MapId"]
	local nPosX = tDoubleEggFestival_Data["ChgMap"]["PosX"]
	local nPosY = tDoubleEggFestival_Data["ChgMap"]["PosY"]
	local nRange = tDoubleEggFestival_Data["ChgMap"]["Range"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
end

-- 传送去找诞诞
function DoubleEggFestival_MoveToDanDan()
	local nMapId = tDoubleEggFestival_Data["ChgMapDD"]["MapId"]
	local nPosX = tDoubleEggFestival_Data["ChgMapDD"]["PosX"]
	local nPosY = tDoubleEggFestival_Data["ChgMapDD"]["PosY"]
	local nRange = tDoubleEggFestival_Data["ChgMapDD"]["Range"]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
end

-- 幸运小雪人对白随机
function DoubleEggFestival_RadomDialog()
	local nText = math.random(112, 114)
	
	local nEvent = tDoubleEggFestival_Data["EventType"][3]
	local nData = tDoubleEggFestival_Data["DataType"][3]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		nText = 115
	end
	
	tNpcGossip[22278]["Text112"] = tDoubleEggFestival_Text[22278]["Text" .. nText]
end

-- 幸运小雪人领取奖励
function DoubleEggFestival_SnowManGetRadom(nNpcId)
	local nEvent = tDoubleEggFestival_Data["EventType"][3]
	local nData = tDoubleEggFestival_Data["DataType"][3]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItem(tDoubleEggFestival_Award["Bless"])
	DoubleEggFestival_SnowManGetRadomChangeSpace()
end

-- 幸运小雪人领奖传送
function DoubleEggFestival_SnowManGetRadomChangeSpace(nNpcId)
	local tNpcPos = {}
	-- 获取NPC坐标
	for i = 1, 5 do
		local nMapId, nPosX, nPosY = NpcPosition_Get(tDoubleEggFestival_Data["LuckSnowMan"]["NpcId"][i])
		tNpcPos[i] = {}
		tNpcPos[i]["MapId"] = nMapId
		tNpcPos[i]["PosX"] = nPosX
		tNpcPos[i]["PosY"] = nPosY
	end
	-- 标记空坐标
	local tChgMap = CommonFunc_Copy(tDoubleEggFestival_Data["LuckSnowMan"]["ChgMap"])
	for j = 1, 14 do
		for k = 1, 5 do
			if tChgMap[j]["MapId"] == tNpcPos[k]["MapId"] and tChgMap[j]["PosX"] == tNpcPos[k]["PosX"] and tChgMap[j]["PosY"] == tNpcPos[k]["PosY"] then
				tChgMap[j]["Sign"] = 1
			end
		end
	end
	-- 去除已经存在NPC的坐标
	local tChgMapSign = {}
	local nSign = 0
	for k, v in pairs(tChgMap) do
		if v["Sign"] == 0 then
			nSign = nSign + 1
			tChgMapSign[nSign] = tChgMap[k]
		end
	end
	
	local nNum = math.random(1, nSign)
	local nMapId = tChgMapSign[nNum]["MapId"]
	local nPosX = tChgMapSign[nNum]["PosX"]
	local nPosY = tChgMapSign[nNum]["PosY"]
	if Npc_MoveNpcPos(nNpcId, nMapId, nPosX, nPosY) then
		Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["LuckSnowManChgMap"])
	end
end

-- 兑换商店
function DoubleEggFestival_ExchangeShop(nNpcId)
	User_OpenExchangeShop(nNpcId)
end

-- 怪物击杀  双蛋币
function DoubleEggFestival_DoubleEggCoinMonster(nMonsterId)
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["Monster"]["DoubleEggCoinTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return
	end
	
	local nItemId = tDoubleEggFestival_Data["Monster"]["DoubleEggCoinId"]
	-- if not RewardTemplate_ChkRandomSpace(tDoubleEggFestival_Award[nItemId], 2) then
		-- return
	-- end
	-- 判断每日获得双蛋币上限
	local nEvent = tDoubleEggFestival_Data["EventType"][4]
	local nData = tDoubleEggFestival_Data["DataType"][4]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">=", tDoubleEggFestival_Data["Monster"]["DoubleEggCoinNum"]) then
		if Task_ChkStcValue(nEvent, nData, "==", tDoubleEggFestival_Data["Monster"]["DoubleEggCoinNum"]) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["DailyDoubleEggCoin"])
		end
		return
	end
	
	local tReward = RewardTemplate_NewRandom(tDoubleEggFestival_Award[nItemId], 1)
	local nDoubleEggCoinItem = tReward[1]["tAward"][1]["Item_1"]
	if nDoubleEggCoinItem > 0 then
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tDoubleEggFestival_Text["Sys"]["SpaceDoubleEggCoin"])
			return
		end
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItem(tDoubleEggFestival_Award[nItemId][2])
	end
end

-- 怪物击杀  双蛋烟花
function DoubleEggFestival_FireWorkMonster(nMonsterId)
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["Monster"]["FireWorkTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return
	end

	
	local nItemId = tDoubleEggFestival_Data["Monster"]["FireWorkId"]
	-- if not RewardTemplate_ChkRandomSpace(tDoubleEggFestival_Award[nItemId], 2) then
		-- return
	-- end
	
	-- 判断每日获得双蛋烟花上限
	local nEvent = tDoubleEggFestival_Data["EventType"][5]
	local nData = tDoubleEggFestival_Data["DataType"][5]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">=", tDoubleEggFestival_Data["Monster"]["FireWorkNum"]) then
		if Task_ChkStcValue(nEvent, nData, "==", tDoubleEggFestival_Data["Monster"]["FireWorkNum"]) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["DailyFireWork"])
		end
		return
	end
	
	local tReward = RewardTemplate_NewRandom(tDoubleEggFestival_Award[nItemId], 1)
	local nFireWorkItem = tReward[1]["tAward"][1]["Item_1"]
	if nFireWorkItem > 0 then
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tDoubleEggFestival_Text["Sys"]["SpaceFireWork"])
			return
		end
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItem(tDoubleEggFestival_Award[nItemId][2])
	end
end

-- 怪物击杀  双蛋惊喜礼包
function DoubleEggFestival_SuppriseGiftMonster(nMonsterId)
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["Monster"]["SuppriseGiftTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return
	end

	
	local nItemId = tDoubleEggFestival_Data["Monster"]["SuppriseGiftId"]
	-- if not RewardTemplate_ChkRandomSpace(tDoubleEggFestival_Award[nItemId], 2) then
		-- return
	-- end
	
	-- 判断每日获得双蛋惊喜礼包上限
	local nEvent = tDoubleEggFestival_Data["EventType"][6]
	local nData = tDoubleEggFestival_Data["DataType"][6]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">=", tDoubleEggFestival_Data["Monster"]["SuppriseGiftNum"]) then
		if Task_ChkStcValue(nEvent, nData, "==", tDoubleEggFestival_Data["Monster"]["SuppriseGiftNum"]) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["DailySuppriseGift"])
		end
		return
	end
	
	local tReward = RewardTemplate_NewRandom(tDoubleEggFestival_Award[nItemId], 1)
	local nSuppriseGiftItem = tReward[1]["tAward"][1]["Item_1"]
	if nSuppriseGiftItem > 0 then
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tDoubleEggFestival_Text["Sys"]["SpaceSuppriseGift"])
			return
		end
		Task_AddStatistic(nEvent, nData, 1, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
		RewardTemplate_UseItem(tDoubleEggFestival_Award[nItemId][2])
	end
end

-- 怪物击杀  双蛋暖冬外套礼盒
function DoubleEggFestival_CoatGiftMonster(nMonsterId)
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["Monster"]["CoatGiftTime"]) then
		return
	end
	
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return
	end
	
	local nItemId = tDoubleEggFestival_Data["Monster"]["CoatGiftId"]
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tDoubleEggFestival_Text["Sys"]["SpaceCoat"])
		return
	end
	-- 判断每日获得双蛋外套礼包上限
	local nEvent = tDoubleEggFestival_Data["EventType"][7]
	local nData = tDoubleEggFestival_Data["DataType"][7]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">=", tDoubleEggFestival_Data["Monster"]["CoatGiftNum"]) then
		if Task_ChkStcValue(nEvent, nData, "==", tDoubleEggFestival_Data["Monster"]["CoatGiftNum"]) then
			Task_AddStatistic(nEvent, nData, 1, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
			Sys_MsgBox(tDoubleEggFestival_Text["Sys"]["DailyCoat"])
		end
		return
	end
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	RewardTemplate_UseItem(tDoubleEggFestival_Award[nItemId])
end

-- 元旦，圣诞节，掉落红包
function DoubleEggFestival_NewYearChristmas()
	local nItemId = 0
	if Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["NewYearTime"]) then
		nItemId = tDoubleEggFestival_Data["DoubleEgg"]["NewYearItemId"]
	elseif Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["ChristmasTime"]) then
		nItemId = tDoubleEggFestival_Data["DoubleEgg"]["ChristmasItemId"]
	else
		return
	end
	
	local nEvent = tDoubleEggFestival_Data["EventType"][8]
	local nData = tDoubleEggFestival_Data["DataType"][8]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return
	end
	
	Task_AddStatistic(nEvent, nData, 1, 1)
	Task_SetStcTimestamp(nEvent, nData, 0)
	
	-- 掉落红包
	local nMapId = tDoubleEggFestival_Data["DoubleEgg"]["MapId"]
	local nPosX = tDoubleEggFestival_Data["DoubleEgg"]["PosX"]
	local nPosY = tDoubleEggFestival_Data["DoubleEgg"]["PosY"]
	local nRange = tDoubleEggFestival_Data["DoubleEgg"]["Range"]
	local nItemNum = tDoubleEggFestival_Data["DoubleEgg"]["ItemNum"]
	local nExistTime = tDoubleEggFestival_Data["DoubleEgg"]["ExistTime"]
	if Map_DropMultiItems(nMapId, nItemId, nPosX, nPosY, nRange, nRange, nItemNum, nExistTime) then
		User_EffectAdd(tDoubleEggFestival_Data["Self"], tDoubleEggFestival_Data["Effect"])
		local nUserName = Get_UserName()
		Sys_SystemBroadcast(string.format(tDoubleEggFestival_Text["Notice"]["ChristmasTree"], nUserName))
	end
end


function DoubleEggFestival_CoatGet(nItemId)
	local nUserId = Get_UserId()
	
	-- 判断物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断背包空间是否足够
	if not RewardTemplate_CheckSpace(tDoubleEggFestival_Reward[nItemId]) then
		return
	end
	
	RewardTemplate_UseItem(tDoubleEggFestival_Reward[nItemId])
end

----------------------------------NPC部分---------------------------------------------
-- 汤姆  活动前
tNpcFace[869] = 237
tNpcGossip[22277]= tNpcGossip[22277] or DefaultNpc:new{}
tNpcGossip[22277]["OptionHidden"] = 1
tNpcGossip[22277]["Text1-1"] = {111, 112, 113, 114, 115}
tNpcGossip[22277]["Text111"] = tDoubleEggFestival_Text[22277]["Text111"]
tNpcGossip[22277]["Text112"] = tDoubleEggFestival_Text[22277]["Text112"]
tNpcGossip[22277]["Text113"] = tDoubleEggFestival_Text[22277]["Text113"]
tNpcGossip[22277]["Text114"] = tDoubleEggFestival_Text[22277]["Text114"]
tNpcGossip[22277]["Text115"] = tDoubleEggFestival_Text[22277]["Text115"]
tNpcGossip[22277]["ChkFunc1-1"]= function()
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["ActivityTime"]["BeforeTime"]) then
		return false
	end
	return true
end
tNpcGossip[22277]["tOption1-1"] = {111}
tNpcGossip[22277]["Option111"] = tDoubleEggFestival_Text[22277]["Option111"]
-- 汤姆  活动中  条件不符
tNpcGossip[22277]["Text1-2"] = {121, 122, 126, 123, 124, 125}
tNpcGossip[22277]["Text121"] = tDoubleEggFestival_Text[22277]["Text121"]
tNpcGossip[22277]["Text122"] = tDoubleEggFestival_Text[22277]["Text122"]
tNpcGossip[22277]["Text126"] = tDoubleEggFestival_Text[22277]["Text126"]
tNpcGossip[22277]["Text127"] = tDoubleEggFestival_Text[22277]["Text127"]
tNpcGossip[22277]["Text123"] = tDoubleEggFestival_Text[22277]["Text123"]
tNpcGossip[22277]["Text124"] = tDoubleEggFestival_Text[22277]["Text124"]
tNpcGossip[22277]["Text125"] = tDoubleEggFestival_Text[22277]["Text125"]
tNpcGossip[22277]["ChkFunc1-2"]= function()
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["ActivityTime"]["NowTime"]) then
		return false
	end
	if User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[22277]["tOption1-2"] = {121}
tNpcGossip[22277]["Option121"] = tDoubleEggFestival_Text[22277]["Option121"]
-- 汤姆  活动中  条件符合
tNpcGossip[22277]["Text1-3"] = {131, 132, 136, 133, 134, 135}
tNpcGossip[22277]["Text131"] = tDoubleEggFestival_Text[22277]["Text131"]
tNpcGossip[22277]["Text132"] = tDoubleEggFestival_Text[22277]["Text132"]
tNpcGossip[22277]["Text136"] = tDoubleEggFestival_Text[22277]["Text136"]
tNpcGossip[22277]["Text137"] = tDoubleEggFestival_Text[22277]["Text137"]
tNpcGossip[22277]["Text133"] = tDoubleEggFestival_Text[22277]["Text133"]
tNpcGossip[22277]["Text134"] = tDoubleEggFestival_Text[22277]["Text134"]
tNpcGossip[22277]["Text135"] = tDoubleEggFestival_Text[22277]["Text135"]
tNpcGossip[22277]["ChkFunc1-3"]= function()
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["ActivityTime"]["NowTime"]) then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[22277]["tOption1-3"] = {132, 131, 133}
tNpcGossip[22277]["Option131"] = tDoubleEggFestival_Text[22277]["Option131"]
tNpcGossip[22277]["OptionFunc131"] = "DoubleEggFestival_ExchangeShop</N>22277"
tNpcGossip[22277]["Option132"] = tDoubleEggFestival_Text[22277]["Option132"]
-- tNpcGossip[22277]["OptionFunc132"] = "DoubleEggFestival_MoveToDanDan"
tNpcGossip[22277]["OptionPoint132"] = "2-1"
tNpcGossip[22277]["Option133"] = tDoubleEggFestival_Text[22277]["Option133"]

tNpcGossip[22277]["Text2-1"] = {211, 212, 213, 214, 215, 216, 217, 218, 219}
tNpcGossip[22277]["Text211"] = tDoubleEggFestival_Text[22277]["Text211"]
tNpcGossip[22277]["Text212"] = tDoubleEggFestival_Text[22277]["Text212"]
tNpcGossip[22277]["Text213"] = tDoubleEggFestival_Text[22277]["Text213"]
tNpcGossip[22277]["Text214"] = tDoubleEggFestival_Text[22277]["Text214"]
tNpcGossip[22277]["Text215"] = tDoubleEggFestival_Text[22277]["Text215"]
tNpcGossip[22277]["Text216"] = tDoubleEggFestival_Text[22277]["Text216"]
tNpcGossip[22277]["Text217"] = tDoubleEggFestival_Text[22277]["Text217"]
tNpcGossip[22277]["Text218"] = tDoubleEggFestival_Text[22277]["Text218"]
tNpcGossip[22277]["Text219"] = tDoubleEggFestival_Text[22277]["Text219"]
tNpcGossip[22277]["tOption2-1"] = {211}
tNpcGossip[22277]["Option211"] = tDoubleEggFestival_Text[22277]["Option211"]

-- 汤姆  活动后兑换时间
tNpcGossip[22277]["Text1-4"] = {141, 142}
tNpcGossip[22277]["Text141"] = tDoubleEggFestival_Text[22277]["Text141"]
tNpcGossip[22277]["Text142"] = tDoubleEggFestival_Text[22277]["Text142"]
-- tNpcGossip[22277]["Text143"] = tDoubleEggFestival_Text[22277]["Text143"]
-- tNpcGossip[22277]["Text144"] = tDoubleEggFestival_Text[22277]["Text144"]
tNpcGossip[22277]["ChkFunc1-4"]= function()
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["ActivityTime"]["ExchangeTime"]) then
		return false
	end
	return true
end
tNpcGossip[22277]["tOption1-4"] = {141, 143, 142}
tNpcGossip[22277]["Option141"] = tDoubleEggFestival_Text[22277]["Option141"]
tNpcGossip[22277]["OptionFunc141"] = "DoubleEggFestival_ExchangeShop</N>22277"
tNpcGossip[22277]["Option143"] = tDoubleEggFestival_Text[22277]["Option143"]
tNpcGossip[22277]["OptionFunc143"] = "DoubleEggFestival_MoveToDanDan"
tNpcGossip[22277]["Option142"] = tDoubleEggFestival_Text[22277]["Option142"]
-- 汤姆  活动后
tNpcGossip[22277]["Text1-5"] = {151}
tNpcGossip[22277]["Text151"] = tDoubleEggFestival_Text[22277]["Text151"]
tNpcGossip[22277]["ChkFunc1-5"]= function()
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEggUseTime"]) then
		return true
	end
	return false
end
tNpcGossip[22277]["tOption1-5"] = {151}
tNpcGossip[22277]["Option151"] = tDoubleEggFestival_Text[22277]["Option151"]
-- 幸运小雪人
tNpcFace[870] = 943
tNpcGossip[22278]= tNpcGossip[22278] or DefaultNpc:new{}
tNpcGossip[22278]["OptionHidden"] = 1
tNpcGossip[22278]["Text1-1"] = {111, 112}
tNpcGossip[22278]["Text111"] = tDoubleEggFestival_Text[22278]["Text111"]
tNpcGossip[22278]["Text112"] = tDoubleEggFestival_Text[22278]["Text112"]
tNpcGossip[22278]["ChkFunc1-1"]= function()
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return false
	end
	-- 随机对白
	DoubleEggFestival_RadomDialog()
	return true
end
tNpcGossip[22278]["tOption1-1"] = {111, 112}
tNpcGossip[22278]["Option111"] = tDoubleEggFestival_Text[22278]["Option111"]
tNpcGossip[22278]["OptionFunc111"] = "DoubleEggFestival_SnowManGetRadom</N>22278"
tNpcGossip[22278]["OptionChkFunc111"] = function ()
	local nEvent = tDoubleEggFestival_Data["EventType"][3]
	local nData = tDoubleEggFestival_Data["DataType"][3]
	if Task_StcInterval(nEvent, nData, 1, 4) then
		Task_SetStatistic(nEvent, nData, 0, 1)
		Task_SetStcTimestamp(nEvent, nData, 0)
	end
	if Task_ChkStcValue(nEvent, nData, ">", 0) then
		return false
	end
	return true
end
tNpcGossip[22278]["Option112"] = tDoubleEggFestival_Text[22278]["Option112"]
-- 幸运小雪人   等级不足
tNpcGossip[22278]["Text1-2"] = {121, 122}
tNpcGossip[22278]["Text121"] = tDoubleEggFestival_Text[22278]["Text121"]
tNpcGossip[22278]["Text122"] = tDoubleEggFestival_Text[22278]["Text122"]
tNpcGossip[22278]["tOption1-2"] = {121}
tNpcGossip[22278]["Option121"] = tDoubleEggFestival_Text[22278]["Option121"]
-- 其他四只幸运小雪人
tNpcGossip[22353]= tNpcGossip[22278]
tNpcGossip[22353]["OptionFunc111"] = "DoubleEggFestival_SnowManGetRadom</N>22353"
tNpcGossip[22354]= tNpcGossip[22278]
tNpcGossip[22354]["OptionFunc111"] = "DoubleEggFestival_SnowManGetRadom</N>22354"
tNpcGossip[22355]= tNpcGossip[22278]
tNpcGossip[22355]["OptionFunc111"] = "DoubleEggFestival_SnowManGetRadom</N>22355"
tNpcGossip[22356]= tNpcGossip[22278]
tNpcGossip[22356]["OptionFunc111"] = "DoubleEggFestival_SnowManGetRadom</N>22356"
-- 欢乐小雪人
tNpcFace[871] = 220
tNpcGossip[22279]= tNpcGossip[22279] or DefaultNpc:new{}
tNpcGossip[22279]["OptionHidden"] = 1
tNpcGossip[22279]["Text1-1"] = {111, 112}
tNpcGossip[22279]["Text111"] = tDoubleEggFestival_Text[22279]["Text111"]
tNpcGossip[22279]["Text112"] = tDoubleEggFestival_Text[22279]["Text112"]
tNpcGossip[22279]["ChkFunc1-1"]= function()
	local nText = math.random(112, 114)
	tNpcGossip[22279]["Text112"] = tDoubleEggFestival_Text[22279]["Text" .. nText]
	tNpcGossip[22279]["Option111"] = tDoubleEggFestival_Text[22279]["Option" .. nText]
	return true
end
tNpcGossip[22279]["tOption1-1"] = {111}
tNpcGossip[22279]["Option111"] = tDoubleEggFestival_Text[22279]["Option112"]

tNpcGossip[22358] = tNpcGossip[22279]
tNpcGossip[22359] = tNpcGossip[22279]
tNpcGossip[22360] = tNpcGossip[22279]
tNpcGossip[22361] = tNpcGossip[22279]

-- 圣诞元旦两天的欢乐小雪人
tNpcFace[970] = 220
tNpcGossip[22349] = tNpcGossip[22279]
tNpcGossip[22362] = tNpcGossip[22279]
tNpcGossip[22363] = tNpcGossip[22279]
tNpcGossip[22364] = tNpcGossip[22279]
tNpcGossip[22365] = tNpcGossip[22279]

tNpcFace[971] = 220
tNpcGossip[22350] = tNpcGossip[22279]
tNpcGossip[22366] = tNpcGossip[22279]
tNpcGossip[22367] = tNpcGossip[22279]
tNpcGossip[22368] = tNpcGossip[22279]
tNpcGossip[22369] = tNpcGossip[22279]

-- 暖冬圣诞树  平时对白
tNpcFace[872] = 201
tNpcGossip[22280]= tNpcGossip[22280] or DefaultNpc:new{}
tNpcGossip[22280]["OptionHidden"] = 1
tNpcGossip[22280]["Text1-1"] = {111, 112}
tNpcGossip[22280]["Text111"] = tDoubleEggFestival_Text[22280]["Text111"]
tNpcGossip[22280]["Text112"] = tDoubleEggFestival_Text[22280]["Text112"]
tNpcGossip[22280]["ChkFunc1-1"] = function()
	if Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["ChristmasTime"]) or Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["NewYearTime"]) then
		return false
	end
	return true
end
tNpcGossip[22280]["tOption1-1"] = {111}
tNpcGossip[22280]["Option111"] = tDoubleEggFestival_Text[22280]["Option111"]
-- 暖冬圣诞树  圣诞元旦对白
tNpcGossip[22280]["Text1-2"] = {121, 122}
tNpcGossip[22280]["Text121"] = tDoubleEggFestival_Text[22280]["Text121"]
tNpcGossip[22280]["Text122"] = tDoubleEggFestival_Text[22280]["Text122"]
tNpcGossip[22280]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["ChristmasTime"]) or Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["NewYearTime"]) then
		local nEvent = tDoubleEggFestival_Data["EventType"][8]
		local nData = tDoubleEggFestival_Data["DataType"][8]
		if Task_StcInterval(nEvent, nData, 1, 4) then
			Task_SetStatistic(nEvent, nData, 0, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
		end
		if Task_ChkStcValue(nEvent, nData, ">", 0) then
			return false
		end
		return true
	end
	return false
end
tNpcGossip[22280]["tOption1-2"] = {121}
tNpcGossip[22280]["Option121"] = tDoubleEggFestival_Text[22280]["Option121"]
tNpcGossip[22280]["OptionFunc121"] = "DoubleEggFestival_NewYearChristmas"
-- 暖冬圣诞树  圣诞元旦对白  已摇曳圣诞树
tNpcGossip[22280]["Text1-3"] = {131, 132}
tNpcGossip[22280]["Text131"] = tDoubleEggFestival_Text[22280]["Text131"]
tNpcGossip[22280]["Text132"] = tDoubleEggFestival_Text[22280]["Text132"]
tNpcGossip[22280]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["ChristmasTime"]) or Sys_ChkFullTime(tDoubleEggFestival_Data["DoubleEgg"]["NewYearTime"]) then
		local nEvent = tDoubleEggFestival_Data["EventType"][8]
		local nData = tDoubleEggFestival_Data["DataType"][8]
		if Task_StcInterval(nEvent, nData, 1, 4) then
			Task_SetStatistic(nEvent, nData, 0, 1)
			Task_SetStcTimestamp(nEvent, nData, 0)
		end
		if Task_ChkStcValue(nEvent, nData, ">", 0) then
			return true
		end
		return false
	end
	return false
end
tNpcGossip[22280]["tOption1-3"] = {131}
tNpcGossip[22280]["Option131"] = tDoubleEggFestival_Text[22280]["Option131"]

-- 诞诞
tNpcFace[5864] = 231
tNpcGossip[22282]= tNpcGossip[22282] or DefaultNpc:new{}
tNpcGossip[22282]["OptionHidden"] = 1
-- 诞诞  活动前
tNpcGossip[22282]["Text1-1"] = {111, 112}
tNpcGossip[22282]["Text111"] = tDoubleEggFestival_Text[22282]["Text111"]
tNpcGossip[22282]["Text112"] = tDoubleEggFestival_Text[22282]["Text112"]
tNpcGossip[22282]["ChkFunc1-1"] = function()
	if not Sys_ChkFullTime(tDoubleEggFestival_Data["ActivityTime"]["BeforeTime"]) then
		return false
	end
	return true
end
tNpcGossip[22282]["tOption1-1"] = {111}
tNpcGossip[22282]["Option111"] = tDoubleEggFestival_Text[22282]["Option111"]
-- 诞诞  活动中  等级满足
tNpcGossip[22282]["Text1-2"] = {121, 122}
tNpcGossip[22282]["Text121"] = tDoubleEggFestival_Text[22282]["Text121"]
tNpcGossip[22282]["Text122"] = tDoubleEggFestival_Text[22282]["Text122"]
tNpcGossip[22282]["ChkFunc1-2"] = function()
	if not Sys_ChkFullTime(tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]) then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[22282]["tOption1-2"] = {121, 122}
tNpcGossip[22282]["Option121"] = tDoubleEggFestival_Text[22282]["Option121"]
tNpcGossip[22282]["OptionFunc121"] = "DoubleEggFestival_MoveToMap"
tNpcGossip[22282]["Option122"] = tDoubleEggFestival_Text[22282]["Option122"]
-- 诞诞  活动中  等级不足
tNpcGossip[22282]["Text1-3"] = {131, 132}
tNpcGossip[22282]["Text131"] = tDoubleEggFestival_Text[22282]["Text131"]
tNpcGossip[22282]["Text132"] = tDoubleEggFestival_Text[22282]["Text132"]
tNpcGossip[22282]["ChkFunc1-3"] = function()
	if not Sys_ChkFullTime(tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]) then
		return false
	end
	if User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[22282]["tOption1-3"] = {131}
tNpcGossip[22282]["Option131"] = tDoubleEggFestival_Text[22282]["Option131"]
-- 诞诞  活动后  等级满足
tNpcGossip[22282]["Text1-4"] = {141, 142}
tNpcGossip[22282]["Text141"] = tDoubleEggFestival_Text[22282]["Text141"]
tNpcGossip[22282]["Text142"] = tDoubleEggFestival_Text[22282]["Text142"]
tNpcGossip[22282]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]) or Sys_ChkFullTime(tDoubleEggFestival_Data["ActivityTime"]["BeforeTime"]) then
		return false
	end
	if not User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[22282]["tOption1-4"] = {141, 142}
tNpcGossip[22282]["Option141"] = tDoubleEggFestival_Text[22282]["Option141"]
tNpcGossip[22282]["OptionFunc141"] = "DoubleEggFestival_MoveToMap"
tNpcGossip[22282]["Option142"] = tDoubleEggFestival_Text[22282]["Option142"]
-- 诞诞  活动后  等级不足
tNpcGossip[22282]["Text1-5"] = {151, 152}
tNpcGossip[22282]["Text151"] = tDoubleEggFestival_Text[22282]["Text151"]
tNpcGossip[22282]["Text152"] = tDoubleEggFestival_Text[22282]["Text152"]
tNpcGossip[22282]["ChkFunc1-5"] = function()
	if Sys_ChkFullTime(tActivityTime["DoubleEgg"]["ActivityTime"]["NowTime"]) or Sys_ChkFullTime(tDoubleEggFestival_Data["ActivityTime"]["BeforeTime"]) then
		return false
	end
	if User_JudgeLevelAndMetempsychosis(tDoubleEggFestival_Data["Level"], tDoubleEggFestival_Data["MinMeto"]) then
		return false
	end
	return true
end
tNpcGossip[22282]["tOption1-5"] = {151}
tNpcGossip[22282]["Option151"] = tDoubleEggFestival_Text[22282]["Option151"]

---------------------------------物品部分---------------------------------------------
-- 双蛋币
tItem[3311702] = tItem[3311702] or {}
tItem[3311702]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_DoubleEggCoin(nItemId)
end
-- 双蛋节烟花
tItem[3311703] = tItem[3311703] or {}
tItem[3311703]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_FireworkNew(nItemId)
end
-- 双蛋惊喜礼盒
tItem[3311704] = tItem[3311704] or {}
tItem[3311704]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_SuppriseGift(nItemId)
end

-- 圣诞节红包
tItem[3311706] = tItem[3311706] or {}
tItem[3311706]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_ChristmasRedPacketNew(nItemId, 1)
end
-- 元旦红包
tItem[3311707] = tItem[3311707] or {}
tItem[3311707]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_ChristmasRedPacketNew(nItemId, 2)
end
-- 双蛋天石赠礼袋
tItem[3311761] = tItem[3311761] or {}
tItem[3311761]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_EmoneyMonoPackage(nItemId)
end

-- 双蛋暖冬外套礼盒
tItemFace[3311705] = 944
tItem[3311705] = tItem[3311705] or {}
tItem[3311705]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_CoatGiftChkTime(nItemId)
end
tItem[3311705]["Text1-1"] = {111}
tItem[3311705]["Text111"] = tDoubleEggFestival_Text[3311705]["Text111"]
tItem[3311705]["tOption1-1"] = {111, 114, 115, 116, 118}
tItem[3311705]["Option111"] = tDoubleEggFestival_Text[3311705]["Option111"]
tItem[3311705]["OptionFunc111"] = "DoubleEggFestival_CoatGift</N>3311705</N>1"
tItem[3311705]["Option114"] = tDoubleEggFestival_Text[3311705]["Option114"]
tItem[3311705]["OptionFunc114"] = "DoubleEggFestival_CoatGift</N>3311705</N>2"
tItem[3311705]["Option115"] = tDoubleEggFestival_Text[3311705]["Option115"]
tItem[3311705]["OptionFunc115"] = "DoubleEggFestival_CoatGift</N>3311705</N>3"
tItem[3311705]["Option116"] = tDoubleEggFestival_Text[3311705]["Option116"]
tItem[3311705]["OptionFunc116"] = "DoubleEggFestival_CoatGift</N>3311705</N>4"
tItem[3311705]["Option118"] = tDoubleEggFestival_Text[3311705]["Option118"]

for i = 3311708, 3311710 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemId,sItemName)
		DoubleEggFestival_CoatGet(nItemId)
	end
end

tItem[3311718] = tItem[3311718] or {}
tItem[3311718]["Function"] = function(nItemId,sItemName)
	DoubleEggFestival_CoatGet(nItemId)
end

---------------------------------怪物部分---------------------------------------------
-- 击杀获得双蛋币  全区
-- local tDoubleEggFestival_DoubleEggCoinMonster = {}
-- tDoubleEggFestival_DoubleEggCoinMonster["ActivityTime"] = tDoubleEggFestival_Data["Monster"]["DoubleEggCoinTime"]
-- tDoubleEggFestival_DoubleEggCoinMonster["Function"]= DoubleEggFestival_DoubleEggCoinMonster
-- table.insert(tMonsterDrop_AreaLoad,tDoubleEggFestival_DoubleEggCoinMonster)

-- 击杀获得双蛋烟花  全区
-- local tDoubleEggFestival_FireWorkMonster = {}
-- tDoubleEggFestival_FireWorkMonster["ActivityTime"] = tDoubleEggFestival_Data["Monster"]["FireWorkTime"]
-- tDoubleEggFestival_FireWorkMonster["Function"]= DoubleEggFestival_FireWorkMonster
-- table.insert(tMonsterDrop_AreaLoad,tDoubleEggFestival_FireWorkMonster)


-- 击杀获得双蛋惊喜礼包  老鼠
-- local tDoubleEggFestival_SuppriseGiftMonster = {}
-- tDoubleEggFestival_SuppriseGiftMonster["ActivityTime"] = tDoubleEggFestival_Data["Monster"]["SuppriseGiftTime"]
-- tDoubleEggFestival_SuppriseGiftMonster["Function"]= DoubleEggFestival_SuppriseGiftMonster
-- tDoubleEggFestival_SuppriseGiftMonster["MonsterId"] = {2841}
-- table.insert(tMonsterDrop_AreaLoad,tDoubleEggFestival_SuppriseGiftMonster)

-- 击杀获得双蛋暖冬外套礼盒  老鼠
-- local tDoubleEggFestival_CoatGiftMonster = {}
-- tDoubleEggFestival_CoatGiftMonster["ActivityTime"] = tDoubleEggFestival_Data["Monster"]["SuppriseGiftTime"]
-- tDoubleEggFestival_CoatGiftMonster["Function"]= DoubleEggFestival_CoatGiftMonster
-- tDoubleEggFestival_CoatGiftMonster["MonsterId"] = {2842}
-- table.insert(tMonsterDrop_AreaLoad,tDoubleEggFestival_CoatGiftMonster)
