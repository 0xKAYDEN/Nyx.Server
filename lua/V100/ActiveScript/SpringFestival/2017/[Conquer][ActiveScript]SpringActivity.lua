------------------------------------------------------------------------------------
--Name：            161104[简体征服][活动脚本]春节元宵节小活动
--Creator:      丁雨浩
--Created:     2016/11/04
------------------------------------------------------------------------------------
--任务需求：
--NPC:
--- 11236 - 11239,礼炮 11240 - 11243 灯笼,11244 兑换商店,11245 宝箱
--物品:
-- 3301454 五铢钱,3301455 新年福钱,3301456 新年红包,3301457 福运元宵,
-- 3301458 新春200气力值礼包,3301459 微光星陨石礼盒,3301460 明亮星陨石礼盒,3301461 新年赠点包
-- 3301462 金色富贵外套包,3301463 红色富贵外套包,3301464 龙凤呈祥外套碎片
--stc 掩码
---152 67 标记从NPC出领取的红包
---152 68 是否猜过灯谜了,是否全部猜过
---152 72 记录点燃礼炮的时间
---152 73 记录从礼炮出领取的奖励
---152 74 记录是否参与过年兽击杀
---152 75 记录是否领取过宝箱的礼物 
---188 75 背包信 
--动态掩码
---51364 data0，用来记录是否开出过180天套装。 
---data2，用来记录是否开出过永久套装
---data3，data4用来几率年兽生成的位置

-- yzf新增
---51439 data0，用来记录【新春红包】（3301456）打开次数。 
---51439 data1，用来记录系统红包发放次数。 


--logid
--12000582
------------------------------------------------------------------------------------
--特别注意：
--+1赤练石酷乐礼包升级时使用的Log已改为250 4001
--+2赤练石酷乐礼包升级时使用的Log已改为250 4002	
--lua文件为：[Conquer][ActiveScript]DoubleElevenActivity.lua
--位置：V100\ActiveScript\NoSales\

--命名格式：SpringActivity_
----------------------------------表配置部分--------------------------------------------
local tSpringActivity_Data = {}
	--活动前时间
	tSpringActivity_Data["BeforeTime"] = tActivityTime["SpringActivity"]["BeforeTime"]
	--活动后时间
	tSpringActivity_Data["AfterTime"] = tActivityTime["SpringActivity"]["AfterTime"]
	--两个活动的总时间
	tSpringActivity_Data["NowTime"] = tActivityTime["SpringActivity"]["NowTime"]
	--物品使用期限
	tSpringActivity_Data["UseTime"] = tActivityTime["SpringActivity"]["UseTime"]
	--春节活动时间和元宵活动时间
	tSpringActivity_Data["ChunJieTime"] = tActivityTime["SpringActivity"]["ChunJieTime"]
	tSpringActivity_Data["YuanXiaoTime"] = tActivityTime["SpringActivity"]["YuanXiaoTime"]
	tSpringActivity_Data["RewardRed"] = tActivityTime["SpringActivity"]["RewardRed"]
	
	--儿童节时间数据
	tSpringActivity_Data["ChildrensDayTime"] = tActivityTime["ChildrenCandy"]["Activity"]
	-- tSpringActivity_Data["ChildrensDayNpc"] = 20514
	tSpringActivity_Data["ChildrensDayNpc"] = 25621
	--元宵第一天---第五天
	-- tSpringActivity_Data["RiddleTime"] = {}
	-- tSpringActivity_Data["RiddleTime"][1] = "2017-02-07 00:00 2017-02-07 23:59"
	-- tSpringActivity_Data["RiddleTime"][2] = "2017-02-08 00:00 2017-02-08 23:59"
	-- tSpringActivity_Data["RiddleTime"][3] = "2017-02-09 00:00 2017-02-09 23:59"
	-- tSpringActivity_Data["RiddleTime"][4] = "2017-02-10 00:00 2017-02-10 23:59"
	-- tSpringActivity_Data["RiddleTime"][5] = "2017-02-11 00:00 2017-02-11 23:59"
	-- tSpringActivity_Data["RiddleText"] = {}
	-- tSpringActivity_Data["RiddleText"][1] = "1-1"
	-- tSpringActivity_Data["RiddleText"][2] = "1-2"
	-- tSpringActivity_Data["RiddleText"][3] = "1-3"
	-- tSpringActivity_Data["RiddleText"][4] = "1-4"
	-- tSpringActivity_Data["RiddleText"][5] = "1-5"
	
-- 系统红包数据
local tSpringActivity_SysRedPacket = {}
	tSpringActivity_SysRedPacket[51439] = {}
	tSpringActivity_SysRedPacket[51439]["RedType"] = 4 
	tSpringActivity_SysRedPacket[51439]["nType"] = 0
	tSpringActivity_SysRedPacket[51439]["nMoneyType"] = 3
	tSpringActivity_SysRedPacket[51439]["nMoneyNum"] = 270
	tSpringActivity_SysRedPacket[51439]["nManyNum"] = 10
	--各种条件
	tSpringActivity_Data["Level"] = 80
	tSpringActivity_Data["Metempsychosis"] = 0
	tSpringActivity_Data["MapId"] = 1002
	tSpringActivity_Data["GenId"] = 1851
	tSpringActivity_Data["MonsterId"] = 5555
	tSpringActivity_Data["Space"] = 1
	--怪物刷新的四个地点
	tSpringActivity_Data[1] = {}
	tSpringActivity_Data[1]["GenId"] = 20156
	tSpringActivity_Data[1]["PosX"] = 674
	tSpringActivity_Data[1]["PosY"] = 370
	tSpringActivity_Data[2] = {}
	tSpringActivity_Data[2]["GenId"] = 20157
	tSpringActivity_Data[2]["PosX"] = 573
	tSpringActivity_Data[2]["PosY"] = 491
	tSpringActivity_Data[3] = {}
	tSpringActivity_Data[3]["GenId"] = 20158
	tSpringActivity_Data[3]["PosX"] = 383
	tSpringActivity_Data[3]["PosY"] = 724
	tSpringActivity_Data[4] = {}
	tSpringActivity_Data[4]["GenId"] = 20159
	tSpringActivity_Data[4]["PosX"] = 255
	tSpringActivity_Data[4]["PosY"] = 664
	
	tSpringActivity_Data["AwardNpc"] = 11245
	tSpringActivity_Data["Sum"] = 15
	tSpringActivity_Data["Flag1"] = 111
	tSpringActivity_Data["Flag2"] = 201
	--赠点包给的最大赠点数量
	tSpringActivity_Data["Limit"] = 88
	tSpringActivity_Data["2018Limit"] = 2018
	tSpringActivity_Data["2019Limit"] = 2019
	--兑换商店坐标
	tSpringActivity_Data["NpcId"] = 11244
	--动态掩码
	--data0，用来记录是否开出过180天套装。
	--data2，用来记录是否开出过永久套装
	--data3，data4用来几率年兽生成的位置
	tSpringActivity_Data["GlobalId"] = 51364
	--光效相关
	tSpringActivity_Data["Type"] = "self"
	tSpringActivity_Data["Effect"] = "2017Spring"
	tSpringActivity_Data["EffectKill"] = "FF12"
	tSpringActivity_Data["EffectDrop"] = "FF12-01"
	tSpringActivity_Data["EffectNew"] = "warrior-s"
	tSpringActivity_Data["EffectDoubleNew"] = "CircleUp"
	tSpringActivity_Data["EffectWea"] = "zf2-e128"

	--物品过期删除log
	tSpringActivity_Data["DelLog"] = "0,0,%d,1,12000582,2,0,0"

	--礼炮的四个位置
	tSpringActivity_Data[11236] = {}
	tSpringActivity_Data[11236]["Pox"] = 326--315--340
	tSpringActivity_Data[11236]["Poy"] = 492--437--476
	tSpringActivity_Data[11237] = {}
	tSpringActivity_Data[11237]["Pox"] = 337--326--355
	tSpringActivity_Data[11237]["Poy"] = 492--437--476
	tSpringActivity_Data[11238] = {}
	tSpringActivity_Data[11238]["Pox"] = 326--315--340
	tSpringActivity_Data[11238]["Poy"] = 502--448--483
	tSpringActivity_Data[11239] = {}
	tSpringActivity_Data[11239]["Pox"] = 337--355
	tSpringActivity_Data[11239]["Poy"] = 502--483
	--记录灯谜
	tSpringActivity_Data[11240] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}
	tSpringActivity_Data[11241] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}
	tSpringActivity_Data[11242] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}
	tSpringActivity_Data[11243] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}
	--记录玩家猜过那个猜过了。
	tSpringActivity_Data["User"] = {}
	tSpringActivity_Data["User"][11240] = {}
	tSpringActivity_Data["User"][11241] = {}
	tSpringActivity_Data["User"][11242] = {}
	tSpringActivity_Data["User"][11243] = {}
	tSpringActivity_Data["Red"] = {}
	tSpringActivity_Data["Red"]["MapId"] = 1002
	
	tSpringActivity_Data["Red"]["ItemId"] = 3306395
	tSpringActivity_Data["Red"]["PosX"] = 327--342
	tSpringActivity_Data["Red"]["PosY"] = 493--480

	tSpringActivity_Data["Red"]["Num"] = 20
	tSpringActivity_Data["Red"]["Time"] = 180
	tSpringActivity_Data[3301456] = 3301456
	
local tSpringActivity_Probability = {}
	--全服杀怪有机会掉落红包\元宵
	tSpringActivity_Probability["Money"] = {}
	tSpringActivity_Probability["Money"][1] = {}
	tSpringActivity_Probability["Money"][1]["ItemChanceSum"] = 10000

	tSpringActivity_Probability["Money"][1][1] = {}
	tSpringActivity_Probability["Money"][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Money"][1][1]["ItemChance"] = 300
	tSpringActivity_Probability["Money"][1][1]["Item_1"] = 110
  
	tSpringActivity_Probability["Money"][1][2] = {}
	tSpringActivity_Probability["Money"][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Money"][1][2]["ItemChance"] = 9700
	tSpringActivity_Probability["Money"][1][2]["Item_1"] = 0

	--红包/元宵开启获得物品几率
	tSpringActivity_Probability["Paize"] = {}
	tSpringActivity_Probability["Paize"][1] = {}
	tSpringActivity_Probability["Paize"][1]["ItemChanceSum"] = 10000
	
	tSpringActivity_Probability["Paize"][1][1] = {}
	tSpringActivity_Probability["Paize"][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Paize"][1][1]["ItemChance"] = 3200
	tSpringActivity_Probability["Paize"][1][1]["Item_1"] = 3
	
	tSpringActivity_Probability["Paize"][1][2] = {}
	tSpringActivity_Probability["Paize"][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Paize"][1][2]["ItemChance"] = 2000
	tSpringActivity_Probability["Paize"][1][2]["Item_1"] = 4
	
	tSpringActivity_Probability["Paize"][1][3] = {}
	tSpringActivity_Probability["Paize"][1][3]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Paize"][1][3]["ItemChance"] = 1500
	tSpringActivity_Probability["Paize"][1][3]["Item_1"] = 5
	
	tSpringActivity_Probability["Paize"][1][4] = {}
	tSpringActivity_Probability["Paize"][1][4]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Paize"][1][4]["ItemChance"] = 800
	tSpringActivity_Probability["Paize"][1][4]["Item_1"] = 6
	
	tSpringActivity_Probability["Paize"][1][5] = {}
	tSpringActivity_Probability["Paize"][1][5]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Paize"][1][5]["ItemChance"] = 1700
	tSpringActivity_Probability["Paize"][1][5]["Item_1"] = 7
	
	tSpringActivity_Probability["Paize"][1][6] = {}
	tSpringActivity_Probability["Paize"][1][6]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Paize"][1][6]["ItemChance"] = 800
	tSpringActivity_Probability["Paize"][1][6]["Item_1"] = 8
	
	--龙凤呈祥合成几率
	tSpringActivity_Probability[3301464] = {}
	tSpringActivity_Probability[3301464][1] = {}
	tSpringActivity_Probability[3301464][1]["ItemChanceSum"] = 10000
	
	tSpringActivity_Probability[3301464][1][1] = {}
	tSpringActivity_Probability[3301464][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301464][1][1]["ItemChance"] = 7000
	tSpringActivity_Probability[3301464][1][1]["Item_1"] = 1
	
	tSpringActivity_Probability[3301464][1][2] = {}
	tSpringActivity_Probability[3301464][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301464][1][2]["ItemChance"] = 2600
	tSpringActivity_Probability[3301464][1][2]["Item_1"] = 2
	
	tSpringActivity_Probability[3301464][1][3] = {}
	tSpringActivity_Probability[3301464][1][3]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301464][1][3]["ItemChance"] = 350
	tSpringActivity_Probability[3301464][1][3]["Item_1"] = 3
	tSpringActivity_Probability[3301464][1][3]["DataFlag"] = 0
	
	tSpringActivity_Probability[3301464][1][4] = {}
	tSpringActivity_Probability[3301464][1][4]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301464][1][4]["ItemChance"] = 50
	tSpringActivity_Probability[3301464][1][4]["Item_1"] = 4
	tSpringActivity_Probability[3301464][1][4]["DataFlag"] = 2
	
	--新年赠点包
	tSpringActivity_Probability[3301461] = {} 
	tSpringActivity_Probability[3301461]["Reward"] = {}
	tSpringActivity_Probability[3301461]["Reward"][1] = {}
	tSpringActivity_Probability[3301461]["Reward"][1]["ItemChanceSum"] = 10000

	tSpringActivity_Probability[3301461]["Reward"][1][1] = {}
	tSpringActivity_Probability[3301461]["Reward"][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][1]["ItemChance"] = 500
	tSpringActivity_Probability[3301461]["Reward"][1][1]["Item_1"] = 1
	tSpringActivity_Probability[3301461]["Reward"][1][1]["Start"] = 1
	tSpringActivity_Probability[3301461]["Reward"][1][1]["End"] = 10

	tSpringActivity_Probability[3301461]["Reward"][1][2] = {}
	tSpringActivity_Probability[3301461]["Reward"][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][2]["ItemChance"] = 2500
	tSpringActivity_Probability[3301461]["Reward"][1][2]["Item_1"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][2]["Start"] = 11
	tSpringActivity_Probability[3301461]["Reward"][1][2]["End"] = 20

	tSpringActivity_Probability[3301461]["Reward"][1][3] = {}
	tSpringActivity_Probability[3301461]["Reward"][1][3]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][3]["ItemChance"] = 3500
	tSpringActivity_Probability[3301461]["Reward"][1][3]["Item_1"] = 3
	tSpringActivity_Probability[3301461]["Reward"][1][3]["Start"] = 21
	tSpringActivity_Probability[3301461]["Reward"][1][3]["End"] = 30

	tSpringActivity_Probability[3301461]["Reward"][1][4] = {}
	tSpringActivity_Probability[3301461]["Reward"][1][4]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][4]["ItemChance"] = 1800
	tSpringActivity_Probability[3301461]["Reward"][1][4]["Item_1"] = 4
	tSpringActivity_Probability[3301461]["Reward"][1][4]["Start"] = 31
	tSpringActivity_Probability[3301461]["Reward"][1][4]["End"] = 40
	
	tSpringActivity_Probability[3301461]["Reward"][1][5] = {}
	tSpringActivity_Probability[3301461]["Reward"][1][5]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][5]["ItemChance"] = 1200
	tSpringActivity_Probability[3301461]["Reward"][1][5]["Item_1"] = 5
	tSpringActivity_Probability[3301461]["Reward"][1][5]["Start"] = 41
	tSpringActivity_Probability[3301461]["Reward"][1][5]["End"] = 50
	
	tSpringActivity_Probability[3301461]["Reward"][1][6] = {}
	tSpringActivity_Probability[3301461]["Reward"][1][6]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][6]["ItemChance"] = 400
	tSpringActivity_Probability[3301461]["Reward"][1][6]["Item_1"] = 6
	tSpringActivity_Probability[3301461]["Reward"][1][6]["Start"] = 51
	tSpringActivity_Probability[3301461]["Reward"][1][6]["End"] = 60

	tSpringActivity_Probability[3301461]["Reward"][1][7] = {}
	tSpringActivity_Probability[3301461]["Reward"][1][7]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3301461]["Reward"][1][7]["ItemChance"] = 100
	tSpringActivity_Probability[3301461]["Reward"][1][7]["Item_1"] = 7
	tSpringActivity_Probability[3301461]["Reward"][1][7]["Start"] = 61
	tSpringActivity_Probability[3301461]["Reward"][1][7]["End"] = 88
	
	--新增赠点包
	tSpringActivity_Probability[3306395] = {} 
	tSpringActivity_Probability[3306395]["Reward"] = {}
	tSpringActivity_Probability[3306395]["Reward"][1] = {}
	tSpringActivity_Probability[3306395]["Reward"][1]["ItemChanceSum"] = 10000

	tSpringActivity_Probability[3306395]["Reward"][1][1] = {}
	tSpringActivity_Probability[3306395]["Reward"][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][1]["ItemChance"] = 500
	tSpringActivity_Probability[3306395]["Reward"][1][1]["Item_1"] = 1
	tSpringActivity_Probability[3306395]["Reward"][1][1]["Start"] = 1
	tSpringActivity_Probability[3306395]["Reward"][1][1]["End"] = 10

	tSpringActivity_Probability[3306395]["Reward"][1][2] = {}
	tSpringActivity_Probability[3306395]["Reward"][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][2]["ItemChance"] = 2500
	tSpringActivity_Probability[3306395]["Reward"][1][2]["Item_1"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][2]["Start"] = 11
	tSpringActivity_Probability[3306395]["Reward"][1][2]["End"] = 20

	tSpringActivity_Probability[3306395]["Reward"][1][3] = {}
	tSpringActivity_Probability[3306395]["Reward"][1][3]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][3]["ItemChance"] = 3500
	tSpringActivity_Probability[3306395]["Reward"][1][3]["Item_1"] = 3
	tSpringActivity_Probability[3306395]["Reward"][1][3]["Start"] = 21
	tSpringActivity_Probability[3306395]["Reward"][1][3]["End"] = 30

	tSpringActivity_Probability[3306395]["Reward"][1][4] = {}
	tSpringActivity_Probability[3306395]["Reward"][1][4]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][4]["ItemChance"] = 1800
	tSpringActivity_Probability[3306395]["Reward"][1][4]["Item_1"] = 4
	tSpringActivity_Probability[3306395]["Reward"][1][4]["Start"] = 31
	tSpringActivity_Probability[3306395]["Reward"][1][4]["End"] = 40
	
	tSpringActivity_Probability[3306395]["Reward"][1][5] = {}
	tSpringActivity_Probability[3306395]["Reward"][1][5]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][5]["ItemChance"] = 1200
	tSpringActivity_Probability[3306395]["Reward"][1][5]["Item_1"] = 5
	tSpringActivity_Probability[3306395]["Reward"][1][5]["Start"] = 41
	tSpringActivity_Probability[3306395]["Reward"][1][5]["End"] = 50
	
	tSpringActivity_Probability[3306395]["Reward"][1][6] = {}
	tSpringActivity_Probability[3306395]["Reward"][1][6]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][6]["ItemChance"] = 400
	tSpringActivity_Probability[3306395]["Reward"][1][6]["Item_1"] = 6
	tSpringActivity_Probability[3306395]["Reward"][1][6]["Start"] = 51
	tSpringActivity_Probability[3306395]["Reward"][1][6]["End"] = 60

	tSpringActivity_Probability[3306395]["Reward"][1][7] = {}
	tSpringActivity_Probability[3306395]["Reward"][1][7]["RandomItemChanceType"] = 2
	tSpringActivity_Probability[3306395]["Reward"][1][7]["ItemChance"] = 100
	tSpringActivity_Probability[3306395]["Reward"][1][7]["Item_1"] = 7
	tSpringActivity_Probability[3306395]["Reward"][1][7]["Start"] = 61
	tSpringActivity_Probability[3306395]["Reward"][1][7]["End"] = 66
	
	--年兽随机生成地点
	tSpringActivity_Probability["Zodiac"] = {}
	tSpringActivity_Probability["Zodiac"][1] = {}
	tSpringActivity_Probability["Zodiac"][1]["ItemChanceSum"] = 10000
	
	tSpringActivity_Probability["Zodiac"][1][1] = {}
	tSpringActivity_Probability["Zodiac"][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Zodiac"][1][1]["ItemChance"] = 2500
	tSpringActivity_Probability["Zodiac"][1][1]["Item_1"] = 1
	
	tSpringActivity_Probability["Zodiac"][1][2] = {}
	tSpringActivity_Probability["Zodiac"][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Zodiac"][1][2]["ItemChance"] = 2500
	tSpringActivity_Probability["Zodiac"][1][2]["Item_1"] = 2
	
	tSpringActivity_Probability["Zodiac"][1][3] = {}
	tSpringActivity_Probability["Zodiac"][1][3]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Zodiac"][1][3]["ItemChance"] = 2500
	tSpringActivity_Probability["Zodiac"][1][3]["Item_1"] = 3
	
	tSpringActivity_Probability["Zodiac"][1][4] = {}
	tSpringActivity_Probability["Zodiac"][1][4]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Zodiac"][1][4]["ItemChance"] = 2500
	tSpringActivity_Probability["Zodiac"][1][4]["Item_1"] = 4
	
	--礼包点燃
	tSpringActivity_Probability["Salute"] = {}
	tSpringActivity_Probability["Salute"][1] = {}
	tSpringActivity_Probability["Salute"][1]["ItemChanceSum"] = 10000
	
	tSpringActivity_Probability["Salute"][1][1] = {}
	tSpringActivity_Probability["Salute"][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Salute"][1][1]["ItemChance"] = 2000
	tSpringActivity_Probability["Salute"][1][1]["Item_1"] = 3301456
	
	tSpringActivity_Probability["Salute"][1][2] = {}
	tSpringActivity_Probability["Salute"][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Salute"][1][2]["ItemChance"] = 8000
	tSpringActivity_Probability["Salute"][1][2]["Item_1"] = 0
	
	--节日欢庆礼包
	tSpringActivity_Probability["Festive"] = {}
	tSpringActivity_Probability["Festive"][1] = {}
	tSpringActivity_Probability["Festive"][1]["ItemChanceSum"] = 10000
	
	tSpringActivity_Probability["Festive"][1][1] = {}
	tSpringActivity_Probability["Festive"][1][1]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Festive"][1][1]["ItemChance"] = 4500
	tSpringActivity_Probability["Festive"][1][1]["Item_1"] = 1
	tSpringActivity_Probability["Festive"][1][1]["Num"] = 5
	
	tSpringActivity_Probability["Festive"][1][2] = {}
	tSpringActivity_Probability["Festive"][1][2]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Festive"][1][2]["ItemChance"] = 3600
	tSpringActivity_Probability["Festive"][1][2]["Item_1"] = 2	
	tSpringActivity_Probability["Festive"][1][2]["Num"] = 10
	
	tSpringActivity_Probability["Festive"][1][3] = {}
	tSpringActivity_Probability["Festive"][1][3]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Festive"][1][3]["ItemChance"] = 1500
	tSpringActivity_Probability["Festive"][1][3]["Item_1"] = 3
	tSpringActivity_Probability["Festive"][1][3]["Num"] = 15
	
	tSpringActivity_Probability["Festive"][1][4] = {}
	tSpringActivity_Probability["Festive"][1][4]["RandomItemChanceType"] = 2
	tSpringActivity_Probability["Festive"][1][4]["ItemChance"] = 400
	tSpringActivity_Probability["Festive"][1][4]["Item_1"] = 4
	tSpringActivity_Probability["Festive"][1][4]["Num"] = 20
	
local tSpringActivity_Stc = {}
	--灯谜掩码:
	tSpringActivity_Stc["Lantern"] = {}
	tSpringActivity_Stc["Lantern"]["EventType"] = 152
	tSpringActivity_Stc["Lantern"]["DataType"] = 68
	tSpringActivity_Stc["Lantern"]["All"] = 15
	tSpringActivity_Stc["Lantern"][11240] = 1
	tSpringActivity_Stc["Lantern"][11241] = 2
	tSpringActivity_Stc["Lantern"][11242] = 4
	tSpringActivity_Stc["Lantern"][11243] = 8

	--时间判断，是否在5秒内点燃礼炮
	tSpringActivity_Stc["Time"] = {}
	tSpringActivity_Stc["Time"]["EventType"] = 152
	tSpringActivity_Stc["Time"]["DataType"] = 72
	--记录在礼炮出领取的红包数量
	tSpringActivity_Stc["Salute"] = {}
	tSpringActivity_Stc["Salute"]["EventType"] = 152
	tSpringActivity_Stc["Salute"]["DataType"] = 73
	--参与击杀BOSS标记
	tSpringActivity_Stc["Kill"] = {}
	tSpringActivity_Stc["Kill"]["EventType"] = 152
	tSpringActivity_Stc["Kill"]["DataType"] = 74
	--标记玩家从宝箱出领取过红包
	tSpringActivity_Stc["Chest"] = {}
	tSpringActivity_Stc["Chest"]["EventType"] = 152
	tSpringActivity_Stc["Chest"]["DataType"] = 75
	--记录玩家从魔物身上获得的红包数量
	tSpringActivity_Stc["Monster"] = {}
	tSpringActivity_Stc["Monster"]["EventType"] = 152
	tSpringActivity_Stc["Monster"]["DataType"] = 94
	
local tSpringActivity_Reward = {}
	--给红包
	--logid :12000582
	--礼炮给的
	tSpringActivity_Reward[1] = {}
	tSpringActivity_Reward[1]["RewardItem"] = {}
	tSpringActivity_Reward[1]["RewardItem"][1] = {}
	tSpringActivity_Reward[1]["RewardItem"][1]["Id"] = 3301456
	tSpringActivity_Reward[1]["RewardItem"][1]["Attr"] = "0 1"
	tSpringActivity_Reward[1]["Log"] = "0,0,0,0,12000582,1[1],3301456,1"
	--宝箱给的
	tSpringActivity_Reward[101] = {}
	-- tSpringActivity_Reward[101]["RewardEffect"] = {}
	-- tSpringActivity_Reward[101]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[101]["RewardEffect"]["Effect"] = "2017chunjie"
	tSpringActivity_Reward[101]["RewardItem"] = {}
	tSpringActivity_Reward[101]["RewardItem"][1] = {}
	tSpringActivity_Reward[101]["RewardItem"][1]["Id"] = 3301456
	tSpringActivity_Reward[101]["RewardItem"][1]["Attr"] = "0 3"
	tSpringActivity_Reward[101]["Log"] = "0,0,0,0,12000582,1[5],3301456,3"
	--打怪给的
	tSpringActivity_Reward[111] = {}
	-- tSpringActivity_Reward[111]["RewardEffect"] = {}
	-- tSpringActivity_Reward[111]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[111]["RewardEffect"]["Effect"] = "2017chunjie"
	tSpringActivity_Reward[111]["RewardItem"] = {}
	tSpringActivity_Reward[111]["RewardItem"][1] = {}
	tSpringActivity_Reward[111]["RewardItem"][1]["Id"] = 3301456
	tSpringActivity_Reward[111]["RewardItem"][1]["Attr"] = "0 1"
	tSpringActivity_Reward[111]["Log"] = "0,0,0,0,12000582,1[3],3301456,1"
	
	--给元宵
	--猜灯谜给的
	tSpringActivity_Reward[2] = {}
	-- tSpringActivity_Reward[2]["RewardEffect"] = {}
	-- tSpringActivity_Reward[2]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[2]["RewardEffect"]["Effect"] = "2017chunjie"
	tSpringActivity_Reward[2]["RewardItem"] = {}
	tSpringActivity_Reward[2]["RewardItem"][1] = {}
	tSpringActivity_Reward[2]["RewardItem"][1]["Id"] = 3301457
	tSpringActivity_Reward[2]["RewardItem"][1]["Attr"] = "0 1"
	tSpringActivity_Reward[2]["Log"] = "0,0,0,0,12000582,1[9],3301457,1"
	--打怪给的
	tSpringActivity_Reward[201] = {}
	-- tSpringActivity_Reward[201]["RewardEffect"] = {}
	-- tSpringActivity_Reward[201]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[201]["RewardEffect"]["Effect"] = "2017chunjie"
	tSpringActivity_Reward[201]["RewardItem"] = {}
	tSpringActivity_Reward[201]["RewardItem"][1] = {}
	tSpringActivity_Reward[201]["RewardItem"][1]["Id"] = 3301457
	tSpringActivity_Reward[201]["RewardItem"][1]["Attr"] = "0 1"
	tSpringActivity_Reward[201]["Log"] = "0,0,0,0,12000582,1[8],3301457,1"
	
	--红包开启
	tSpringActivity_Reward[3301456] = {}
	tSpringActivity_Reward[3301456][3] = {}
	-- tSpringActivity_Reward[3301456][3]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301456][3]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301456][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301456][3]["DeleteItem"] = {}
	tSpringActivity_Reward[3301456][3]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301456][3]["DeleteItem"][1]["Id"] = 3301456
	tSpringActivity_Reward[3301456][3]["RewardItem"] = {}
	tSpringActivity_Reward[3301456][3]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301456][3]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301456][3]["RewardItem"][1]["Attr"] = "0 3"
	tSpringActivity_Reward[3301456][3]["Log"] = "0,0,3301456,1,12000582,1[7],3301455,3"

	tSpringActivity_Reward[3301456][4] = {}
	-- tSpringActivity_Reward[3301456][4]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301456][4]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301456][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301456][4]["DeleteItem"] = {}
	tSpringActivity_Reward[3301456][4]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301456][4]["DeleteItem"][1]["Id"] = 3301456
	tSpringActivity_Reward[3301456][4]["RewardItem"] = {}
	tSpringActivity_Reward[3301456][4]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301456][4]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301456][4]["RewardItem"][1]["Attr"] = "0 5"
	tSpringActivity_Reward[3301456][4]["Log"] = "0,0,3301456,1,12000582,1[7],3301455,5"

	tSpringActivity_Reward[3301456][5] = {}
	-- tSpringActivity_Reward[3301456][5]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301456][5]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301456][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301456][5]["DeleteItem"] = {}
	tSpringActivity_Reward[3301456][5]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301456][5]["DeleteItem"][1]["Id"] = 3301456
	tSpringActivity_Reward[3301456][5]["RewardItem"] = {}
	tSpringActivity_Reward[3301456][5]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301456][5]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301456][5]["RewardItem"][1]["Attr"] = "0 8"
	tSpringActivity_Reward[3301456][5]["Log"] = "0,0,3301456,1,12000582,1[7],3301455,8"

	tSpringActivity_Reward[3301456][6] = {}
	-- tSpringActivity_Reward[3301456][6]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301456][6]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301456][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301456][6]["DeleteItem"] = {}
	tSpringActivity_Reward[3301456][6]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301456][6]["DeleteItem"][1]["Id"] = 3301456
	tSpringActivity_Reward[3301456][6]["RewardItem"] = {}
	tSpringActivity_Reward[3301456][6]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301456][6]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301456][6]["RewardItem"][1]["Attr"] = "0 10"
	tSpringActivity_Reward[3301456][6]["Log"] = "0,0,3301456,1,12000582,1[7],3301455,10"

	tSpringActivity_Reward[3301456][7] = {}
	-- tSpringActivity_Reward[3301456][7]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301456][7]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301456][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301456][7]["DeleteItem"] = {}
	tSpringActivity_Reward[3301456][7]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301456][7]["DeleteItem"][1]["Id"] = 3301456
	-- tSpringActivity_Reward[3301456][7]["RewardEMoneyMono"] = {}
	-- tSpringActivity_Reward[3301456][7]["RewardEMoneyMono"]["Value"] = 5
	-- tSpringActivity_Reward[3301456][7]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	5	"
	-- tSpringActivity_Reward[3301456][7]["Log"] = "0,0,3301456,1,12000582,1[6],3,5"
	tSpringActivity_Reward[3301456][7]["RewardStrengthValue"] = {}
	tSpringActivity_Reward[3301456][7]["RewardStrengthValue"]["Value"] = 50
	tSpringActivity_Reward[3301456][7]["LogId"] = 12000582
	tSpringActivity_Reward[3301456][7]["LogStep"] = "1[6]"
	
	tSpringActivity_Reward[3301456][8] = {}
	-- tSpringActivity_Reward[3301456][8]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301456][8]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301456][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301456][8]["DeleteItem"] = {}
	tSpringActivity_Reward[3301456][8]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301456][8]["DeleteItem"][1]["Id"] = 3301456
	-- tSpringActivity_Reward[3301456][8]["RewardEMoneyMono"] = {}
	-- tSpringActivity_Reward[3301456][8]["RewardEMoneyMono"]["Value"] = 10
	-- tSpringActivity_Reward[3301456][8]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	10	"
	-- tSpringActivity_Reward[3301456][8]["Log"] = "0,0,3301456,1,12000582,1[6],3,10"
	tSpringActivity_Reward[3301456][8]["RewardStrengthValue"] = {}
	tSpringActivity_Reward[3301456][8]["RewardStrengthValue"]["Value"] = 100
	tSpringActivity_Reward[3301456][8]["LogId"] = 12000582
	tSpringActivity_Reward[3301456][8]["LogStep"] = "1[6]"
	--元宵开启
	tSpringActivity_Reward[3301457] = {}
	tSpringActivity_Reward[3301457][3] = {}
	-- tSpringActivity_Reward[3301457][3]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301457][3]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301457][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301457][3]["DeleteItem"] = {}
	tSpringActivity_Reward[3301457][3]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301457][3]["DeleteItem"][1]["Id"] = 3301457
	tSpringActivity_Reward[3301457][3]["RewardItem"] = {}
	tSpringActivity_Reward[3301457][3]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301457][3]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301457][3]["RewardItem"][1]["Attr"] = "0 3"
	tSpringActivity_Reward[3301457][3]["Log"] = "0,0,3301457,1,12000582,1[11],3301455,3"

	tSpringActivity_Reward[3301457][4] = {}
	-- tSpringActivity_Reward[3301457][4]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301457][4]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301457][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301457][4]["DeleteItem"] = {}
	tSpringActivity_Reward[3301457][4]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301457][4]["DeleteItem"][1]["Id"] = 3301457
	tSpringActivity_Reward[3301457][4]["RewardItem"] = {}
	tSpringActivity_Reward[3301457][4]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301457][4]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301457][4]["RewardItem"][1]["Attr"] = "0 5"
	tSpringActivity_Reward[3301457][4]["Log"] = "0,0,3301457,1,12000582,1[11],3301455,5"

	tSpringActivity_Reward[3301457][5] = {}
	-- tSpringActivity_Reward[3301457][5]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301457][5]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301457][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301457][5]["DeleteItem"] = {}
	tSpringActivity_Reward[3301457][5]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301457][5]["DeleteItem"][1]["Id"] = 3301457
	tSpringActivity_Reward[3301457][5]["RewardItem"] = {}
	tSpringActivity_Reward[3301457][5]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301457][5]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301457][5]["RewardItem"][1]["Attr"] = "0 8"
	tSpringActivity_Reward[3301457][5]["Log"] = "0,0,3301457,1,12000582,1[11],3301455,8"

	tSpringActivity_Reward[3301457][6] = {}
	-- tSpringActivity_Reward[3301457][6]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301457][6]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301457][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301457][6]["DeleteItem"] = {}
	tSpringActivity_Reward[3301457][6]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301457][6]["DeleteItem"][1]["Id"] = 3301457
	tSpringActivity_Reward[3301457][6]["RewardItem"] = {}
	tSpringActivity_Reward[3301457][6]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301457][6]["RewardItem"][1]["Id"] = 3301455
	tSpringActivity_Reward[3301457][6]["RewardItem"][1]["Attr"] = "0 10"
	tSpringActivity_Reward[3301457][6]["Log"] = "0,0,3301457,1,12000582,1[11],3301455,10"

	tSpringActivity_Reward[3301457][7] = {}
	-- tSpringActivity_Reward[3301457][7]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301457][7]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301457][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301457][7]["DeleteItem"] = {}
	tSpringActivity_Reward[3301457][7]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301457][7]["DeleteItem"][1]["Id"] = 3301457
	-- tSpringActivity_Reward[3301457][7]["RewardEMoneyMono"] = {}
	-- tSpringActivity_Reward[3301457][7]["RewardEMoneyMono"]["Value"] = 5
	-- tSpringActivity_Reward[3301457][7]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	5	"
	-- tSpringActivity_Reward[3301457][7]["Log"] = "0,0,3301456,1,12000582,1[12],3,5"
	tSpringActivity_Reward[3301457][7]["RewardStrengthValue"] = {}
	tSpringActivity_Reward[3301457][7]["RewardStrengthValue"]["Value"] = 50
	tSpringActivity_Reward[3301457][7]["LogId"] = 12000582
	tSpringActivity_Reward[3301457][7]["LogStep"] = "1[12]"
	
	tSpringActivity_Reward[3301457][8] = {}
	-- tSpringActivity_Reward[3301457][8]["RewardEffect"] = {}
	-- tSpringActivity_Reward[3301457][8]["RewardEffect"]["SzObj"] = "self"
	-- tSpringActivity_Reward[3301457][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tSpringActivity_Reward[3301457][8]["DeleteItem"] = {}
	tSpringActivity_Reward[3301457][8]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301457][8]["DeleteItem"][1]["Id"] = 3301457
	-- tSpringActivity_Reward[3301457][8]["RewardEMoneyMono"] = {}
	-- tSpringActivity_Reward[3301457][8]["RewardEMoneyMono"]["Value"] = 10
	-- tSpringActivity_Reward[3301457][8]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	10	"
	-- tSpringActivity_Reward[3301457][8]["Log"] = "0,0,3301456,1,12000582,1[12],3,10"
	tSpringActivity_Reward[3301457][8]["RewardStrengthValue"] = {}
	tSpringActivity_Reward[3301457][8]["RewardStrengthValue"]["Value"] = 100
	tSpringActivity_Reward[3301457][8]["LogId"] = 12000582
	tSpringActivity_Reward[3301457][8]["LogStep"] = "1[12]"
	--气力值礼包
	tSpringActivity_Reward[3301458] = {}
	tSpringActivity_Reward[3301458]["LogId"] = 12000582
	tSpringActivity_Reward[3301458]["DeleteItem"] = {}
	tSpringActivity_Reward[3301458]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301458]["DeleteItem"][1]["Id"] = 3301458
	tSpringActivity_Reward[3301458]["RewardStrengthValue"] = {}
	tSpringActivity_Reward[3301458]["RewardStrengthValue"]["Value"] = 200
	
	--微光星陨石礼盒
	tSpringActivity_Reward[3301459] = {}
	tSpringActivity_Reward[3301459]["LogId"] = 12000582
	tSpringActivity_Reward[3301459]["DeleteItem"] = {}
	tSpringActivity_Reward[3301459]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301459]["DeleteItem"][1]["Id"] = 3301459
	tSpringActivity_Reward[3301459]["RewardItem"] = {}
	tSpringActivity_Reward[3301459]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301459]["RewardItem"][1]["Id"] = 3009000
	tSpringActivity_Reward[3301459]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--明亮星陨石礼盒
	tSpringActivity_Reward[3301460] = {}
	tSpringActivity_Reward[3301460]["LogId"] = 12000582
	tSpringActivity_Reward[3301460]["DeleteItem"] = {}
	tSpringActivity_Reward[3301460]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301460]["DeleteItem"][1]["Id"] = 3301460
	tSpringActivity_Reward[3301460]["RewardItem"] = {}
	tSpringActivity_Reward[3301460]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301460]["RewardItem"][1]["Id"] = 3009001
	tSpringActivity_Reward[3301460]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--金色富贵外套包
	tSpringActivity_Reward[3301462] = {}
	tSpringActivity_Reward[3301462]["LogId"] = 12000582
	tSpringActivity_Reward[3301462]["DeleteItem"] = {}
	tSpringActivity_Reward[3301462]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301462]["DeleteItem"][1]["Id"] = 3301462
	tSpringActivity_Reward[3301462]["RewardItem"] = {}
	tSpringActivity_Reward[3301462]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301462]["RewardItem"][1]["Id"] = 191405
	tSpringActivity_Reward[3301462]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	--红色富贵外套包
	tSpringActivity_Reward[3301463] = {}
	tSpringActivity_Reward[3301463]["LogId"] = 12000582
	tSpringActivity_Reward[3301463]["DeleteItem"] = {}
	tSpringActivity_Reward[3301463]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3301463]["DeleteItem"][1]["Id"] = 3301463
	tSpringActivity_Reward[3301463]["RewardItem"] = {}
	tSpringActivity_Reward[3301463]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301463]["RewardItem"][1]["Id"] = 191305
	tSpringActivity_Reward[3301463]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	
	--龙凤呈祥
	
	tSpringActivity_Reward[3301464] = {}
	tSpringActivity_Reward[3301464][1] = {}
	tSpringActivity_Reward[3301464][1]["LogId"] = 12000582
	tSpringActivity_Reward[3301464][1]["LogStep"] = "2[1]"
	tSpringActivity_Reward[3301464][1]["RewardItem"] = {}
	tSpringActivity_Reward[3301464][1]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301464][1]["RewardItem"][1]["Id"] = 192575
	tSpringActivity_Reward[3301464][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	
	tSpringActivity_Reward[3301464][2] = {}
	tSpringActivity_Reward[3301464][2]["LogId"] = 12000582
	tSpringActivity_Reward[3301464][2]["LogStep"] = "2[2]"
	tSpringActivity_Reward[3301464][2]["RewardItem"] = {}
	tSpringActivity_Reward[3301464][2]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301464][2]["RewardItem"][1]["Id"] = 192575
	tSpringActivity_Reward[3301464][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	
	tSpringActivity_Reward[3301464][3] = {}
	tSpringActivity_Reward[3301464][3]["LogId"] = 12000582
	tSpringActivity_Reward[3301464][3]["LogStep"] = "2[3]"
	tSpringActivity_Reward[3301464][3]["RewardItem"] = {}
	tSpringActivity_Reward[3301464][3]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301464][3]["RewardItem"][1]["Id"] = 192575
	tSpringActivity_Reward[3301464][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1 0 0 1"
	
	tSpringActivity_Reward[3301464][4] = {}
	tSpringActivity_Reward[3301464][4]["LogId"] = 12000582
	tSpringActivity_Reward[3301464][4]["LogStep"] = "2[4]"
	tSpringActivity_Reward[3301464][4]["RewardItem"] = {}
	tSpringActivity_Reward[3301464][4]["RewardItem"][1] = {}
	tSpringActivity_Reward[3301464][4]["RewardItem"][1]["Id"] = 192575
	tSpringActivity_Reward[3301464][4]["RewardItem"][1]["Attr"] = "0 1 3 0 1 0 0 1"
	
	tSpringActivity_Reward[3306390] = {}
	tSpringActivity_Reward[3306390]["LogId"] = 12000582
	tSpringActivity_Reward[3306390]["RewardItem"] = {}
	tSpringActivity_Reward[3306390]["RewardItem"][1] = {}
	tSpringActivity_Reward[3306390]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tSpringActivity_Reward[3306390]["DeleteItem"] = {}
	tSpringActivity_Reward[3306390]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3306390]["DeleteItem"][1]["Id"] = 3306390
	
	tSpringActivity_Reward[3306391] = {}
	tSpringActivity_Reward[3306391]["LogId"] = 12000582
	tSpringActivity_Reward[3306391]["RewardItem"] = {}
	tSpringActivity_Reward[3306391]["RewardItem"][1] = {}
	tSpringActivity_Reward[3306391]["RewardItem"][1]["Id"] = 192575
	tSpringActivity_Reward[3306391]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSpringActivity_Reward[3306391]["DeleteItem"] = {}
	tSpringActivity_Reward[3306391]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3306391]["DeleteItem"][1]["Id"] = 3306391
	
	tSpringActivity_Reward[3306392] = {}
	tSpringActivity_Reward[3306392]["DeleteItem"] = {}
	tSpringActivity_Reward[3306392]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3306392]["DeleteItem"][1]["Id"] = 3306392
	tSpringActivity_Reward[3306392]["RewardEMoneyMono"] = {}
	tSpringActivity_Reward[3306392]["RewardEMoneyMono"]["Value"] = 2018
	tSpringActivity_Reward[3306392]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	2018	"
	tSpringActivity_Reward[3306392]["Log"] = "0,0,3306392,1,12000582,1[12],3,2018"
	
	--复用怀旧武器外套包
	tSpringActivity_Reward["Weapons"] = {}
	tSpringActivity_Reward["Weapons"]["LogId"] = 12000582
	tSpringActivity_Reward["Weapons"]["RewardItem"] = {}
	tSpringActivity_Reward["Weapons"]["RewardItem"][1] = {}
	tSpringActivity_Reward["Weapons"]["DeleteItem"] = {}
	tSpringActivity_Reward["Weapons"]["DeleteItem"][1] = {}
	tSpringActivity_Reward["Weapons"]["RewardEffect"] = {}
	tSpringActivity_Reward["Weapons"]["RewardEffect"]["SzObj"] = "self"
	tSpringActivity_Reward["Weapons"]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 临时表修改 赠点包
	tSpringActivity_Reward["Donative"] = {}
	tSpringActivity_Reward["Donative"]["LogId"] = 12000582
	tSpringActivity_Reward["Donative"]["DeleteItem"] = {}
	tSpringActivity_Reward["Donative"]["DeleteItem"][1] = {}
	tSpringActivity_Reward["Donative"]["RewardEMoneyMono"] = {}
	
	-- 钱币的转换
	tSpringActivity_Reward["ExchangeMoney"] = {}
	tSpringActivity_Reward["ExchangeMoney"]["LogId"] = 12000582
	tSpringActivity_Reward["ExchangeMoney"]["LogStep"] = "1[2]"
	tSpringActivity_Reward["ExchangeMoney"]["RewardItem"] = {}
	tSpringActivity_Reward["ExchangeMoney"]["RewardItem"][1] = {}
	tSpringActivity_Reward["ExchangeMoney"]["RewardItem"][1]["Id"] = 3301454
	tSpringActivity_Reward["ExchangeMoney"]["DeleteItem"] = {}
	tSpringActivity_Reward["ExchangeMoney"]["DeleteItem"][1] = {}
	
	-- 节日欢庆礼包
	tSpringActivity_Reward["Special"] = {}
	tSpringActivity_Reward["Special"]["RewardItem"] = {}
	tSpringActivity_Reward["Special"]["RewardItem"][1] = {}
	tSpringActivity_Reward["Special"]["RewardItem"][1]["Id"] = 3301454
	
	-- 30天洋洋得意时装包
	tSpringActivity_Reward[3319164] = {}
	tSpringActivity_Reward[3319164]["DeleteItem"] = {}
	tSpringActivity_Reward[3319164]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3319164]["DeleteItem"][1]["Id"] = 3319164
	tSpringActivity_Reward[3319164]["RewardItem"] = {}
	tSpringActivity_Reward[3319164]["RewardItem"][1] = {}
	tSpringActivity_Reward[3319164]["RewardItem"][1]["Id"] = 193205
	tSpringActivity_Reward[3319164]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSpringActivity_Reward[3319164]["LogId"] = 12000582
	
	-- 2019惊喜财运宝箱
	tSpringActivity_Reward[3319163] = {}
	tSpringActivity_Reward[3319163]["DeleteItem"] = {}
	tSpringActivity_Reward[3319163]["DeleteItem"][1] = {}
	tSpringActivity_Reward[3319163]["DeleteItem"][1]["Id"] = 3319163
	tSpringActivity_Reward[3319163]["RewardEMoneyMono"] = {}
	tSpringActivity_Reward[3319163]["RewardEMoneyMono"]["Value"] = 2019
	tSpringActivity_Reward[3319163]["RewardEMoneyMono"]["EmoneyLog"] = "350	4873	0	0	2019	"
	tSpringActivity_Reward[3319163]["LogId"] = 12000582
	
local nRiddle_Flag = {}
	nRiddle_Flag[11240] = {}
	nRiddle_Flag[11241] = {}
	nRiddle_Flag[11242] = {}
	nRiddle_Flag[11243] = {}
	
local tDoubleElevenActivity_Cont = {}
	tDoubleElevenActivity_Cont["space"] = 1
--天石升级包表
local tDoubleElevenActivity_Award = {}
	tDoubleElevenActivity_Award[3301223] = {}
	tDoubleElevenActivity_Award[3301223][1] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"][1]["Id"] = 730001
	tDoubleElevenActivity_Award[3301223][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3301223][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301223][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301223][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301223][1]["DeleteItem"][1]["Id"]=3301223
	tDoubleElevenActivity_Award[3301223][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301223][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301223][2] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"][1]["Id"] = 730002
	tDoubleElevenActivity_Award[3301223][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301223][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301223][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301223][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301223][2]["DeleteItem"][1]["Id"]=3301223
	tDoubleElevenActivity_Award[3301223][2]["EmoneyPrice"] = 10
	tDoubleElevenActivity_Award[3301223][2]["EmoneyBuyLog"] = "250	4001	%d	%d	1	"
	tDoubleElevenActivity_Award[3301223][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301223][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	
	
	tDoubleElevenActivity_Award[3301224] = {}
	tDoubleElevenActivity_Award[3301224][1] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"][1]["Id"] = 730002
	tDoubleElevenActivity_Award[3301224][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tDoubleElevenActivity_Award[3301224][1]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301224][1]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301224][1]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301224][1]["DeleteItem"][1]["Id"]=3301224
	tDoubleElevenActivity_Award[3301224][1]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301224][1]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"
	
	tDoubleElevenActivity_Award[3301224][2] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"][1] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"][1]["Id"] = 730003
	tDoubleElevenActivity_Award[3301224][2]["RewardItem"][1]["Attr"] = "0 1"
	tDoubleElevenActivity_Award[3301224][2]["LogId"] = 12000547
	tDoubleElevenActivity_Award[3301224][2]["DeleteItem"]={}
	tDoubleElevenActivity_Award[3301224][2]["DeleteItem"][1]={}
	tDoubleElevenActivity_Award[3301224][2]["DeleteItem"][1]["Id"]=3301224
	tDoubleElevenActivity_Award[3301224][2]["EmoneyPrice"] = 30
	tDoubleElevenActivity_Award[3301224][2]["EmoneyBuyLog"] = "250	4002	%d	%d	1	"
	tDoubleElevenActivity_Award[3301224][2]["RewardEffect"] = {}
	tDoubleElevenActivity_Award[3301224][2]["RewardEffect"]["Effect"] = "WarFlagEscortBegin"	
	
----------------------------------逻辑部分---------------------------------------------
--钱币的使用
function SpringActivity_UseMoney(nItemId)
	--时间判断
	-- if not Sys_ChkFullTime(tSpringActivity_Data["ChildrensDayTime"]) then
	if not Sys_ChkFullTime(tActivityTime["GlobalChristmas"]["ActivityTime"]) then
		return Sys_MsgBox(tSpringActivity_Text["Money"])
	else 
		return NpcPosition_PathFind(tSpringActivity_Data["ChildrensDayNpc"])
	end
	-- FathersDaySmallActivity_UseMoney(nItemId)
end

--新年福钱的使用
function SpringActivity_UseFuMoney(nItemId)
	--活动时间内寻路值天官，时间外自动兑换成年运通宝
	if	Sys_ChkFullTime(tSpringActivity_Data["NowTime"]) then
		return NpcPosition_PathFind(tSpringActivity_Data["NpcId"])
	else
		local nNum = Get_CountItemType(nItemId,0)
		tSpringActivity_Reward["ExchangeMoney"]["RewardItem"][1]["Attr"] = "0 "..nNum
		tSpringActivity_Reward["ExchangeMoney"]["DeleteItem"][1]["Id"] = nItemId
		tSpringActivity_Reward["ExchangeMoney"]["DeleteItem"][1]["ItemNum"] = nNum
		RewardTemplate_UseItemAndMsg(tSpringActivity_Reward["ExchangeMoney"])
	end
end

--红包、元宵开启
function SpringActivity_RedBag(nId)
	--超时,红包元宵使用期限2月11日之前
	if not Sys_ChkFullTime(tSpringActivity_Data["NowTime"]) then
		if Item_ChkItem(nId) and Item_DelAllItemByType(nId)then
			local sLog = string.format(tSpringActivity_Data["DelLog"],nId)
			User_TalkChannel2005(tSpringActivity_Text[nId]["OverTime"])
			Sys_SaveActionFestivalLog(sLog)
		end
		return
	end
	--空间判断
	if User_CheckLeftSpace(tSpringActivity_Data["Space"]) then
		local flat,tNum = Probabil_RandomAward(tSpringActivity_Probability["Paize"],1)
		local nItemId = tNum[1]["tAward"][1]["Item_1"]
		
		---- 170117-yzf-新增------
		if RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nId][nItemId]) then
			-- 新增全服祝福
			local sUserName = Get_UserName()
			local sBless = string.format(tSpringActivity_Text[3301456]["Blessing"],sUserName)
			if Sys_Random(2000,10000) and nId == tSpringActivity_Data[3301456] then
				Sys_SystemBroadcast(sBless)
			end
			--新增光效
			if Sys_Random(5000,10000) then
				User_EffectAdd(tSpringActivity_Data["Type"],tSpringActivity_Data["EffectNew"])
			else
				User_EffectAdd(tSpringActivity_Data["Type"],tSpringActivity_Data["EffectDoubleNew"])
			end
			
			--系统红包时间
			-- if not Sys_ChkFullTime(tSpringActivity_Data["OpenRedTime"]) then
				-- return
			-- end
			
			-- local nRedGlobalId = tSpringActivity_Data["RedLimitGlobal"]
			-- local nOldNum = Get_SysDynaGlobalData0(nRedGlobalId)
			-- local nOpenLimit = Get_SysDynaGlobalData1(nRedGlobalId)
			-- local nNewNum = nOldNum + 1
			
			--系统红包未超过限制
			-- if not (nOpenLimit >= tSpringActivity_Data["OpenLimit"]) then
				-- Sys_SetSynaGlobalData0(nRedGlobalId,nNewNum)
				
				--是否开启100个红包
				-- if nNewNum >= tSpringActivity_Data["OpenRed"] then
					--重置计数
					-- Sys_SetSynaGlobalData0(nRedGlobalId,0)
					
					--系统红包次数+1
					-- Sys_SetSynaGlobalData1(nRedGlobalId,nOpenLimit + 1)
					
					--发系统红包
					-- local nRedType = tSpringActivity_SysRedPacket[nRedGlobalId]["RedType"]
					-- local nType = tSpringActivity_SysRedPacket[nRedGlobalId]["nType"]
					-- local nMoneyType = tSpringActivity_SysRedPacket[nRedGlobalId]["nMoneyType"]
					-- local nMoneyNum = tSpringActivity_SysRedPacket[nRedGlobalId]["nMoneyNum"]
					-- local nManyNum = tSpringActivity_SysRedPacket[nRedGlobalId]["nManyNum"]
					-- local sUserName = Get_UserName()
					-- local nIndex = math.random(1,#tSpringActivity_Text["RedBlessing"])
					-- local sWord = tSpringActivity_Text["RedBlessing"][nIndex]
					-- Sys_SendRedEnvelops(nRedType,nType,nMoneyType,nMoneyNum,nManyNum,"征服",sWord,sWord)
				-- end
			-- end
		end
		--------------------------
		
		return
	else
		local nText = string.format(tSpringActivity_Text[nId]["Text1"],tSpringActivity_Data["Space"])
		User_TalkChannel2005(nText)
	end
end

--新年赠点包
function SpringActivity_GiftEmoney(nItemId)
	--超时，2月28日之前使用
	if not Sys_ChkFullTime(tActivityTime["SpringActivity"]["NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId)then
			User_TalkChannel2005(tSpringActivity_Text["RewardOverTime"])
			local sLog = string.format(tSpringActivity_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			return
		end
	end
	--判断赠点上限
	if Get_UserMonoEMoney() + tSpringActivity_Data["Limit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tSpringActivity_Text["Luck1"])
		return
	end
--给赠点
	if Item_ChkItem(nItemId) then
		local flat,tNum = Probabil_RandomAward(tSpringActivity_Probability[nItemId]["Reward"],1)
		local nStart = tNum[1]["tAward"][1]["Start"]
		local nEnd = tNum[1]["tAward"][1]["End"]
		local nCp = math.random(nStart,nEnd)
		
		tSpringActivity_Reward["Donative"]["DeleteItem"][1]["Id"] = nItemId
		tSpringActivity_Reward["Donative"]["RewardEMoneyMono"]["Value"] = nCp
		tSpringActivity_Reward["Donative"]["RewardEMoneyMono"]["EmoneyLog"] = "250	4079	0	0	"..nCp.."	"
		
		RewardTemplate_UseItemAndMsg(tSpringActivity_Reward["Donative"])
	end
end

--各种礼包的使用，2月28日之前使用
function SpringActivity_UseGift(nItemId)
	if Item_ChkItem(nItemId) then
		if nItemId ==  3301462 or nItemId == 3301463 then
			RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nItemId])
		else
			if not Sys_ChkFullTime(tSpringActivity_Data["UseTime"]) then
				if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
					local sLog = string.format(tSpringActivity_Data["DelLog"],nItemId)
					Sys_SaveActionFestivalLog(sLog)
					User_TalkChannel2005(tSpringActivity_Text["RewardOverTime"])
				end
				return
			end
			RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nItemId])
		end
	end
end

--是否猜过灯谜了
function SpringActivity_RiddleCheck(nNpcId)
	--时间判断
	if	not Sys_ChkFullTime(tSpringActivity_Data["YuanXiaoTime"]) then
		return User_TalkChannel2005(tSpringActivity_Text["Riddle"]["Text3"])
	end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tSpringActivity_Data["Level"],tSpringActivity_Data["Metempsychosis"]) then
		User_TalkChannel2005(tSpringActivity_Text["MsgBox"][6])
	return
	end
	--背包空间判断
	if	not User_CheckLeftSpace(tSpringActivity_Data["Space"]) then
		return User_TalkChannel2005(tSpringActivity_Text["Riddle"]["Text6"])
	end
	--判断是否隔天，是否猜过，是否全部猜完
	local nEvent = tSpringActivity_Stc["Lantern"]["EventType"]
	local nData = tSpringActivity_Stc["Lantern"]["DataType"]
	local nSum = tSpringActivity_Stc["Lantern"]["All"]
	local nFlag = tSpringActivity_Stc["Lantern"][nNpcId]
	--隔天,置零
	if	Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	
	local nNum = Get_UserStatisticValue(nEvent,nData)
	
	--判断该灯笼是否猜过
	if Sys_ParseNumbersContain(nFlag,nNum) then
		--是否全部猜过
		if nNum == nSum then
			return User_TalkChannel2005(tSpringActivity_Text["Riddle"]["Text5"])
		else
			return User_TalkChannel2005(tSpringActivity_Text["Riddle"]["Text4"])
		end
	end
	--该灯笼未猜过
	SpringActivity_Riddle(nNpcId)

end

--随机出现灯谜
function SpringActivity_Riddle(nNpcId)
	
	--首先判断选择的题目有没有被答过
	local nUserId = Get_UserId()
	local nFlag = math.random(1,#tSpringActivity_Data[nNpcId])
	-- 第一次答题 建表
	if nRiddle_Flag[nNpcId][nUserId] == nil then
		nRiddle_Flag[nNpcId][nUserId] = 0
	end
	if nRiddle_Flag[nNpcId][nUserId] == 0 then
	
		tSpringActivity_Data["User"][nNpcId][nUserId] = {}
		for i = 1,#tSpringActivity_Data[nNpcId] do
			tSpringActivity_Data["User"][nNpcId][nUserId][i] = 0 
		end
		nRiddle_Flag[nNpcId][nUserId] = 1
	end
	local nChoose = tSpringActivity_Data[nNpcId][nFlag]
	
	-- 判断是否选取过
	local nNum = tSpringActivity_Data["User"][nNpcId][nUserId][nFlag]
	if nNum == nChoose then
		SpringActivity_Riddle(nNpcId)
		return
	end
	
	--确定题目没有答对过，出题目
	local sPos = string.format("1-%d",nChoose)
	LinkNpcGossipFunc_New(nNpcId,sPos)
	
end

--灯谜结果反馈
function SpringActivity_Result(nNpcId,nNum,nPos)

	--背包空间判断
	if	not User_CheckLeftSpace(tSpringActivity_Data["Space"]) then
		return User_TalkChannel2005(tSpringActivity_Text["Riddle"]["Text6"])
	end
	
	local nEvent = tSpringActivity_Stc["Lantern"]["EventType"]
	local nData = tSpringActivity_Stc["Lantern"]["DataType"]
	local nFlag = tSpringActivity_Stc["Lantern"][nNpcId]

	if nNum == 1 then
		Task_AddStatistic(nEvent,nData,nFlag,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[2])
		Sys_MsgBox(tSpringActivity_Text["Riddle"]["True"])
		-- 标记答对过的题目
		local nUserId = Get_UserId()
		tSpringActivity_Data["User"][nNpcId][nUserId][nPos] = nPos
	else
		LinkNpcGossipFunc_New(nNpcId,"1-16")
	end
end

--点击礼炮后
function SpringActivity_Salute()
	--时间判断
	if	not Sys_ChkFullTime(tSpringActivity_Data["ChunJieTime"]) then
		return User_TalkChannel2005(tSpringActivity_Text[11236]["Text1"])
	end
	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tSpringActivity_Data["Level"],tSpringActivity_Data["Metempsychosis"]) then
		User_TalkChannel2005(tSpringActivity_Text["MsgBox"][6])
		return
	end
	local nTimeEvent = tSpringActivity_Stc["Time"]["EventType"]
	local nTimeData = tSpringActivity_Stc["Time"]["DataType"]
	if (not Task_StcInterval(nTimeEvent,nTimeData,5,0)) then
		Sys_MsgBox(tSpringActivity_Text[11236]["Text2"])
		return 
	end
	Task_SetStatistic(nTimeEvent,nTimeData,1,1)
	Task_SetStcTimestamp(nTimeEvent,nTimeData,0)
	local nNpcId = Get_NpcId()
	--背包有空间
	if User_CheckLeftSpace(tSpringActivity_Data["Space"]) then
		local flat,tNum = Probabil_RandomAward(tSpringActivity_Probability["Salute"],1)
		local nItemId = tNum[1]["tAward"][1]["Item_1"]
		if nItemId == 3301456 then
			local nEvent = tSpringActivity_Stc["Salute"]["EventType"]
			local nData = tSpringActivity_Stc["Salute"]["DataType"]
			--判断是否等于3，等于则提示一次。掩码掩码加一
			if Task_ChkStcValue(nEvent,nData,"==",3) then
				if not Task_StcInterval(nEvent,nData,1,4) then
					Task_AddStatistic(nEvent,nData,1,1)
					Task_SetStcTimestamp(nEvent,nData,0)
					Sys_MsgBox(tSpringActivity_Text["MsgBox"][102])
					return
				end
			end
			
			--判断是否超过三次
			if Task_ChkStcValue(nEvent,nData,">=",4,0) then
				--没超过一天
				if not Task_StcInterval(nEvent,nData,1,4) then
					Sys_MsgBox(tSpringActivity_Text[11236]["Text5"])
					Map_Effect(tSpringActivity_Data["MapId"],tSpringActivity_Data[nNpcId]["Pox"],tSpringActivity_Data[nNpcId]["Poy"],tSpringActivity_Data["Effect"])
					return
				else
				--超过一天，掩码清零，时间戳清零
					Task_SetStatistic(nEvent,nData,0,1)
					Task_SetStcTimestamp(nEvent,nData,0)
				end
			end
			Task_AddStatistic(nEvent,nData,1,1)
			Task_SetStcTimestamp(nEvent,nData,0)
			RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[1])
			if Sys_Random(5000,10000) then
				User_EffectAdd(tSpringActivity_Data["Type"],tSpringActivity_Data["EffectNew"])
			else
				User_EffectAdd(tSpringActivity_Data["Type"],tSpringActivity_Data["EffectDoubleNew"])
			end
			Sys_MsgBox(tSpringActivity_Text[11236]["Text3"])
		else
			Sys_MsgBox(tSpringActivity_Text[11236]["Text5"])
			Map_Effect(tSpringActivity_Data["MapId"],tSpringActivity_Data[nNpcId]["Pox"],tSpringActivity_Data[nNpcId]["Poy"],tSpringActivity_Data["Effect"])
		end
	--没空间直接出特效
	else
		Sys_MsgBox(tSpringActivity_Text[11236]["Text4"])
		return Map_Effect(tSpringActivity_Data["MapId"],tSpringActivity_Data[nNpcId]["Pox"],tSpringActivity_Data[nNpcId]["Poy"],tSpringActivity_Data["Effect"])
	end
end

--节日欢庆礼包开启
function SpringActivity_Festive(nItemId)
	local flat,tNum = Probabil_RandomAward(tSpringActivity_Probability["Festive"],1)
	local nNum = tNum[1]["tAward"][1]["Num"]
	
	tSpringActivity_Reward["Special"]["RewardItem"][1]["Attr"] = "0 "..nNum
	tSpringActivity_Reward["Special"]["Log"] = "0,0,"..nItemId..",1,12000582,1[1],3301454,"..nNum
	RewardTemplate_UseItemAndMsg(tSpringActivity_Reward["Special"])
end

--年兽生成
function SpringActivity_BirthMonster()
	if Sys_ChkFullTime(tSpringActivity_Data["ChunJieTime"]) then	
		local flat,tNum = Probabil_RandomAward(tSpringActivity_Probability["Zodiac"],1)
		local nItemId = tNum[1]["tAward"][1]["Item_1"]
		local nGlobalId = tSpringActivity_Data["GlobalId"]
		local sText1
		local sText2
		
		Sys_SetSynaGlobalData3(nGlobalId,tSpringActivity_Data[nItemId]["PosX"])
		Sys_SetSynaGlobalData4(nGlobalId,tSpringActivity_Data[nItemId]["PosY"])
		Monster_AddAndCount(tSpringActivity_Data["MapId"],tSpringActivity_Data[nItemId]["PosX"],tSpringActivity_Data[nItemId]["PosY"],tSpringActivity_Data[nItemId]["GenId"],tSpringActivity_Data["MonsterId"])
		sText1 = string.format(tSpringActivity_Text["MsgBox"][1],tSpringActivity_Data[nItemId]["PosX"],tSpringActivity_Data[nItemId]["PosY"])
		sText2 = string.format(tSpringActivity_Text["MsgBox"][7],tSpringActivity_Data[nItemId]["PosX"],tSpringActivity_Data[nItemId]["PosY"])
		
		Sys_SystemBroadcast(sText1)
		Sys_TalkBroadcast(sText2)
	end
end

--年兽击杀掉落1个NPC宝箱
function SpringActivity_DropAward()
	local nPox = Get_MonsterPosX()
	local nPoy = Get_MonsterPosY()
	Npc_MoveNpcPos(tSpringActivity_Data["AwardNpc"],tSpringActivity_Data["MapId"],nPox,nPoy)
	Monster_Death(tSpringActivity_Data["MonsterId"],tSpringActivity_Data["MapId"])
	User_EffectAdd(tSpringActivity_Data["Type"],tSpringActivity_Data["EffectKill"])
	Sys_SystemBroadcast(tSpringActivity_Text["MsgBox"][5])
	Sys_TalkBroadcast(tSpringActivity_Text["MsgBox"][5])
end

--标记参与击杀的人
function SpringActivity_MakeFlag(nServerId,nUserId,nRank,nDmg,nMonsterType)
	--给击杀年兽的人打上掩码，时间戳置零
	local nEvent = tSpringActivity_Stc["Kill"]["EventType"]
	local nData = tSpringActivity_Stc["Kill"]["DataType"]
	Task_SetStatistic(nEvent,nData,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nData,0,nUserId)
	--给从宝箱出领取红包的掩码置零
	local nChestEvent = tSpringActivity_Stc["Chest"]["EventType"]
	local nChestData = tSpringActivity_Stc["Chest"]["DataType"]
	--两次击杀年兽超过2小时，再将掩码置零
	if Task_StcInterval(nChestEvent,nChestData,2,2) then
		Task_SetStatistic(nChestEvent,nChestData,0,1,nUserId)
		Task_SetStcTimestamp(nChestEvent,nChestData,0,nUserId)
	end
end
--参与击杀的人可以点击宝箱获得红包
function SpringActivity_GiveRed()
	--时间判断
	if not Sys_ChkFullTime(tSpringActivity_Data["ChunJieTime"]) then
		return
	end
	--等级判断
	if  not User_JudgeLevelAndMetempsychosis(tSpringActivity_Data["Level"],tSpringActivity_Data["Metempsychosis"]) then
			Sys_MsgBox(tSpringActivity_Text["MsgBox"][6])
		return	
	end
	--背包空间判断
	if not User_CheckLeftSpace(tSpringActivity_Data["Space"]) then
			Sys_MsgBox(tSpringActivity_Text[11245]["Text1"])
		return
	end
	
	local nEvent = tSpringActivity_Stc["Kill"]["EventType"]
	local nData = tSpringActivity_Stc["Kill"]["DataType"]
	local nChestEvent = tSpringActivity_Stc["Chest"]["EventType"]
	local nChestData = tSpringActivity_Stc["Chest"]["DataType"]
	
	--判断是否是在刷宝箱的那一次参与击杀年兽
	if Task_ChkStcValue(nEvent,nData,">=",1) and (not Task_StcInterval(nEvent,nData,1,2)) then
		--是否领取过奖励
		if	Task_ChkStcValue(nChestEvent,nChestData,"==",0) then
			RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[101])
			Task_SetStatistic(nChestEvent,nChestData,1,1)
			Sys_MsgBox(tSpringActivity_Text[11245]["Text3"])
			return
		else
			return Sys_MsgBox(tSpringActivity_Text[11245]["Text2"])
		end
	else
		Sys_MsgBox(tSpringActivity_Text[11245]["Text4"])	
	end
end

--领取完宝箱奖励后，将宝箱移走
function SpringActivity_MoveChest()
	Npc_MoveNpcPos(tSpringActivity_Data["AwardNpc"],5000,100,100)
end

function SpringActivity_Drop()
	--时间判断
	if not Sys_ChkFullTime(tSpringActivity_Data["NowTime"]) then
		return
	end
	--等级判断
	if  not User_JudgeLevelAndMetempsychosis(tSpringActivity_Data["Level"],tSpringActivity_Data["Metempsychosis"]) then
		return
	end
	
	--背包判断
	if not User_CheckLeftSpace(tSpringActivity_Data["Space"]) then
		return
	end
	
	local nEvent = tSpringActivity_Stc["Monster"]["EventType"]
	local nData = tSpringActivity_Stc["Monster"]["DataType"]
	--隔天。置零。
	if	Task_StcInterval(nEvent,nData,1,4) then
		Task_SetStatistic(nEvent,nData,0,1)
		Task_SetStcTimestamp(nEvent,nData,0)
	end
	--已经弹框提醒过了。
	if	Task_ChkStcValue(nEvent,nData,">=",11) then
		return
	end
	--标记是春节还是元宵
	local nFlag
	if Sys_ChkFullTime(tSpringActivity_Data["ChunJieTime"]) then
		nFlag = tSpringActivity_Data["Flag1"]
	else
		nFlag = tSpringActivity_Data["Flag2"]
	end
	--已经10个了，弹框提醒一次。
	if 	Task_ChkStcValue(nEvent,nData,"==",10) then
		Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		Sys_MsgBox(tSpringActivity_Text["MsgBox"][nFlag])
		return
	end
	local flat,tNum = Probabil_RandomAward(tSpringActivity_Probability["Money"],1)
	local nItemId = tNum[1]["tAward"][1]["Item_1"]
	if	nItemId == 110 then	
		Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nFlag])
		--User_EffectAdd(tSpringActivity_Data["Type"],tSpringActivity_Data["EffectDrop"])
	end
end

--兑换商店
function SpringActivity_ExchangeShop(nNpcId)
	if not Sys_ChkFullTime(tSpringActivity_Data["NowTime"]) then
		return LinkNpcGossipFunc_New(nNpcId,"1-7")
	end
	User_OpenExchangeShop(nNpcId)
end

--移动玩家到怪兽生成位置
function SpringActivity_MovePlayer()
	--时间判断
	if not Sys_ChkFullTime(tSpringActivity_Data["ChunJieTime"]) then
		return
	end
	local nGlobalId = tSpringActivity_Data["GlobalId"]
	local nPox = Get_SysDynaGlobalData3(nGlobalId)
	local nPoy = Get_SysDynaGlobalData4(nGlobalId)
	User_UserRandBoundTrans(tSpringActivity_Data["MapId"],nPox,nPoy,1,1,1)
	Sys_MsgBox(tSpringActivity_Text["MsgBox"][2])
end

--碎片合成
function SpringActivity_Mix(nItemId)
--时间判断
	if not Sys_ChkFullTime(tActivityTime["SpringActivity"]["NowTime"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			local sLog = string.format(tSpringActivity_Data["DelLog"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tSpringActivity_Text["RewardOverTime"])
		end
		return
	end

	--背包判断
	if not User_CheckLeftSpace(tSpringActivity_Data["Space"]) then
		return User_TalkChannel2005(tSpringActivity_Text["Splinter2"])
	end

	--数量判断
	local nNum = Get_CountItemType(nItemId,0)
	local nSum = tSpringActivity_Data["Sum"]
	if nNum < nSum then
		return User_TalkChannel2005(tSpringActivity_Text["Splinter1"])
	end
			
	if Item_ChkMulItem(nItemId,nItemId,nSum) and Item_DelMulItem(nItemId,nItemId,nSum) then
		local flat,tNum = Probabil_RandomAward(tSpringActivity_Probability[nItemId],1)
		local nChoose = tNum[1]["tAward"][1]["Item_1"]
		
		if nChoose == 3 or nChoose ==4 then
			--判断是否出现过180天或永久套装
			local nDataFlag = tNum[1]["tAward"][1]["DataFlag"]
			local nGlobalId = tSpringActivity_Data["GlobalId"]
			local nFlag = Get_SysDynaGlobalData(nGlobalId,nDataFlag)
			
			if nFlag >= 1 then
				nChoose = 1
			else
				Sys_SetSynaGlobalData(nGlobalId,nDataFlag,1)
			end
		end
		RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nItemId][nChoose])
	end
end

--隔天动态掩码清零
function SpringActivity_Clean()
	local nGlobalId = tSpringActivity_Data["GlobalId"]
	if Get_SysDynaGlobalData1(nGlobalId) == 0 then
	
	Sys_SetSynaGlobalData0(nGlobalId,0)
	Sys_SetSynaGlobalData1(nGlobalId,2)
	end
end

function SpringActivity_Clean1()
	local nGlobalId = tSpringActivity_Data["GlobalId"]
	if Get_SysDynaGlobalData1(nGlobalId) == 2 then
		Sys_SetSynaGlobalData1(nGlobalId,0)
	end
end

--没有击杀年兽的话就删除年兽
function SpringActivity_DeleteMonster()
	local nNum = Get_SysTempData(1,tSpringActivity_Data["MapId"],tSpringActivity_Data["MonsterId"])
	if nNum ~= 0 then
		Monster_Death(tSpringActivity_Data["MonsterId"],tSpringActivity_Data["MapId"])
		Monster_DelMonster(tSpringActivity_Data["MapId"],tSpringActivity_Data["MonsterId"])
	end
end
--复用简体
--天石升级包逻辑
--[[
function DoubleElevenActivity_UpPack(nItemId,nOption)
	if nOption == 1 then
		RewardTemplate_UseItemAndMsg(tDoubleElevenActivity_Award[nItemId][nOption])
	else
		local nEmoney = (tDoubleElevenActivity_Award[nItemId][nOption]["EmoneyPrice"]) 
		--判断天石数
		if Get_UserEMoney() < nEmoney then
			LinkItemGossipFunc_New(3301223,"1-2")
			return
		end
		
		local nOldItem = tDoubleElevenActivity_Award[nItemId][1]["RewardItem"][1]["Id"]
		local nNewItem = tDoubleElevenActivity_Award[nItemId][2]["RewardItem"][1]["Id"]
		
		local nOldAdd = nOldItem - 730000
		local nNewAdd = nNewItem - 730000
		
		local sOldAdd = tDoubleElevenActivity_Text["Add"] .. nOldAdd .. Get_ItemtypeName(730001) .. tDoubleElevenActivity_Text["Gift"]
		
		local sNewAdd = tDoubleElevenActivity_Text["Add"] .. nNewAdd .. Get_ItemtypeName(730001)
		
		local sDialogText = string.format(tDoubleElevenActivity_Text["Text1"],nEmoney,sOldAdd,sNewAdd)
		local sDialogOption1 = tDoubleElevenActivity_Text["Option1"]
		local sDialogOption2 = tDoubleElevenActivity_Text["Option2"]
		
		Sys_DialogText(sDialogText)
		Sys_DialogOption(sDialogOption1,"</F>DoubleElevenActivity_UpAward</N>" .. nItemId .. "</N>" .. nEmoney .. "</N>" .. nOption)
		Sys_DialogOption(sDialogOption2,"</F>NULL")
		Sys_DialogItemFace(nItemId)
		Sys_DialogEnd()
	end
end
--升级奖励
function DoubleElevenActivity_UpAward(nItemId,nEmoney,nOption)
	--判断天石数
	if Get_UserEMoney() < nEmoney then
		LinkItemGossipFunc_New(3301223,"1-2")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tDoubleElevenActivity_Cont["space"]) then
		User_TalkChannel2005(tDoubleElevenActivity_Text["NoSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) then
		local sEmoneyLog = string.format(tDoubleElevenActivity_Award[nItemId][nOption]["EmoneyBuyLog"],nEmoney,nEmoney)
		User_AddEMoney(-nEmoney)
		Sys_SaveEmoneyBuy(sEmoneyLog)
		RewardTemplate_UseItemAndMsg(tDoubleElevenActivity_Award[nItemId][nOption])
	end
	
end]]--

--新增3天神装外套
function SpringActivity_OpenGodCoat(nItemId,nChoose)
	--检测物品存在
	if not Item_ChkItem(nItemId) then
		return
	end
	tSpringActivity_Reward[nItemId]["RewardItem"][1]["Id"] = nChoose
	RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nItemId])
end
--2018新春财运大礼包
function SpringActivity_OpenMonoGift(nItemId)
	--检测物品存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断赠点上限
	if Get_UserMonoEMoney() + tSpringActivity_Data["2018Limit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tSpringActivity_Text["Luck2"])
		return
	end
	RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nItemId])
end

----2019新春财运大礼包
function SpringActivity_OpenMonoGift2019(nItemId)
	--检测物品存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断赠点上限
	if Get_UserMonoEMoney() + tSpringActivity_Data["2019Limit"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tSpringActivity_Text["Luck2"])
		return
	end
	RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nItemId])
end

-- 怀旧武器外套包
function SpringActivity_UseWeaponPack(nItemId,nChoose,nDays)
	--填充表
	tSpringActivity_Reward["Weapons"]["RewardItem"][1]["Id"] = nChoose
	if nDays == 3 then
		tSpringActivity_Reward["Weapons"]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	else
		tSpringActivity_Reward["Weapons"]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	end
	tSpringActivity_Reward["Weapons"]["DeleteItem"][1]["Id"] = nItemId
	
	if Item_ChkItem(nItemId) then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tSpringActivity_Reward["Weapons"])
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(string.format(tNewWarmUpActivity_Text[nItemId]["BagFull"],nSpace))
			return
		end
		RewardTemplate_UseItemAndMsg(tSpringActivity_Reward["Weapons"])
	end
end

-- 每天刷新红包
--活动前5分钟全服公告
function SpringActivity_TellAllPeople()
	-- 判断时间
	if not Sys_ChkFullTime(tSpringActivity_Data["RewardRed"]) then
		return
	end

	Sys_SystemBroadcast(tSpringActivity_Text["MsgBox"]["Five"])
	
end
--活动前1分钟
function SpringActivity_LastTell()
	-- 判断时间
	if not Sys_ChkFullTime(tSpringActivity_Data["RewardRed"]) then
		return
	end
	Sys_SystemBroadcast(tSpringActivity_Text["MsgBox"]["Last"])
end
function SpringActivity_RefreshRed()
	-- 判断时间
	if not Sys_ChkFullTime(tSpringActivity_Data["RewardRed"]) then
		return
	end

	Sys_SystemBroadcast(tSpringActivity_Text["MsgBox"]["Red"])
	Map_DropMultiItems(tSpringActivity_Data["Red"]["MapId"],tSpringActivity_Data["Red"]["ItemId"],tSpringActivity_Data["Red"]["PosX"],tSpringActivity_Data["Red"]["PosY"],14,9,tSpringActivity_Data["Red"]["Num"],tSpringActivity_Data["Red"]["Time"])
	
end

function SpringActivity_Txet(nNpcId)
	if not Sys_ChkFullTime(tSpringActivity_Data["NowTime"]) then
		return
	end 
	

	tNpcGossip[11244]["Text1-8"] ={801,802,803,804,805,806,807,808,809,810,811,812,813}
	
	LinkNpcGossipFunc_New(nNpcId,"1-8")
end 
function SpringActivity_Txet2(nNpcId)
	if not Sys_ChkFullTime(tSpringActivity_Data["NowTime"]) then
		return
	end 
	

	tNpcGossip[11244]["Text1-9"] = {901,902,903,904,905,906,907,908,909}
	
	LinkNpcGossipFunc_New(nNpcId,"1-9")
end 
----------------------------------NPC部分---------------------------------------------
--纳福天官
tNpcFace[4502] = 247
tNpcGossip[11244]= tNpcGossip[11244] or DefaultNpc:new{}
tNpcGossip[11244]["OptionHidden"] = 1

tNpcGossip[11244]["DialogueText"] = tSpringActivity_Text[11244]
--活动前对话
tNpcGossip[11244]["Text1-1"] = {101,102,103,104,105}
tNpcGossip[11244]["tOption1-1"] = {101}
tNpcGossip[11244]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSpringActivity_Data["BeforeTime"])
end
--活动结束后的对白
tNpcGossip[11244]["Text1-2"] = {201,202}
tNpcGossip[11244]["tOption1-2"] = {201}
tNpcGossip[11244]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tSpringActivity_Data["AfterTime"])
end
--活动中对白(未满足条件，春节)
tNpcGossip[11244]["Text1-3"] = {301,302,303,304,305}
tNpcGossip[11244]["tOption1-3"] = {301}
tNpcGossip[11244]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tSpringActivity_Data["ChunJieTime"]) and ( not User_JudgeLevelAndMetempsychosis(tSpringActivity_Data["Level"],tSpringActivity_Data["Metempsychosis"]))
end
--活动中对白
tNpcGossip[11244]["Text1-4"] = {401,402,403,404}
tNpcGossip[11244]["tOption1-4"] = {401,402,403,404}
tNpcGossip[11244]["OptionFunc401"] = "SpringActivity_ExchangeShop</N>11244"
tNpcGossip[11244]["OptionFunc402"] = "SpringActivity_MovePlayer"
tNpcGossip[11244]["OptionChkFunc402"] = function()
	return (Get_SysTempData(1,tSpringActivity_Data["MapId"],tSpringActivity_Data["MonsterId"]) ~= 0)--年兽出现
end
tNpcGossip[11244]["OptionFunc403"] = "SpringActivity_Txet</N>11244"
-- tNpcGossip[11244]["OptionPoint403"] = "1-8"
tNpcGossip[11244]["ChkFunc1-4"] = function()
	return Sys_ChkFullTime(tSpringActivity_Data["ChunJieTime"])
end
--元宵活动，未满足条件，元宵
tNpcGossip[11244]["Text1-5"] = {501,502,503,504,505}
tNpcGossip[11244]["tOption1-5"] = {501}
tNpcGossip[11244]["ChkFunc1-5"] = function()
	return Sys_ChkFullTime(tSpringActivity_Data["YuanXiaoTime"]) and ( not User_JudgeLevelAndMetempsychosis(tSpringActivity_Data["Level"],tSpringActivity_Data["Metempsychosis"]))
end
--元宵活动，满足条件
tNpcGossip[11244]["Text1-6"] = {601,602,603,604}
tNpcGossip[11244]["tOption1-6"] = {601,602,603}
tNpcGossip[11244]["OptionFunc601"] = "SpringActivity_ExchangeShop</N>11244"
-- tNpcGossip[11244]["OptionPoint602"] = "1-9"
tNpcGossip[11244]["OptionFunc602"] = "SpringActivity_Txet2</N>11244"
tNpcGossip[11244]["ChkFunc1-6"] = function()
	return Sys_ChkFullTime(tSpringActivity_Data["YuanXiaoTime"])
end
--兑换年礼失败
tNpcGossip[11244]["Text1-7"] = {701}
tNpcGossip[11244]["tOption1-7"] = {701}
--新春惊喜
tNpcGossip[11244]["Text1-8"] = {801,802,803,804,805,806,807,808,815,809,810,814,811,812,813}
tNpcGossip[11244]["tOption1-8"] = {801}
--元宵惊喜
tNpcGossip[11244]["Text1-9"] = {901,902,903,904,905,906,910,907,908,909}
tNpcGossip[11244]["tOption1-9"] = {901}

--2018 新增礼炮对白
tNpcFace[4500] = 2071
tNpcGossip[11236] = tNpcGossip[11236] or DefaultNpc:new{}
tNpcGossip[11236]["OptionHidden"] = 1
tNpcGossip[11236]["DialogueText"] = tSpringActivity_Text[11236]

tNpcGossip[11236]["Text1-1"] = {101}
tNpcGossip[11236]["tOption1-1"] = {101,102}
tNpcGossip[11236]["OptionFunc101"] = "SpringActivity_Salute"

tNpcGossip[11237] = tNpcGossip[11236]
tNpcGossip[11238] = tNpcGossip[11236]
tNpcGossip[11239] = tNpcGossip[11236]

--宝箱对白
tNpcFace[4503] = 1700
tNpcGossip[11245] = tNpcGossip[11245] or DefaultNpc:new{}
tNpcGossip[11245]["OptionHidden"] = 1
tNpcGossip[11245]["DialogueText"] = tSpringActivity_Text[11245]

tNpcGossip[11245]["Text1-1"] = {101}
tNpcGossip[11245]["tOption1-1"] = {101,102}
tNpcGossip[11245]["OptionFunc101"] = "SpringActivity_GiveRed"
--灯谜修改为题库内容
--花灯1灯谜内容
tNpcFace[4501] = 2072
tNpcGossip[11240]= tNpcGossip[11240] or DefaultNpc:new{}
tNpcGossip[11240]["OptionHidden"] = 1
tNpcGossip[11240]["DialogueText"] = tSpringActivity_Text["Riddles"]

tNpcGossip[11240]["Text1-1"] = {1}
tNpcGossip[11240]["tOption1-1"] = {11,12,13}
tNpcGossip[11240]["OptionFunc11"] = "SpringActivity_Result</N>11240</N>1</N>1"
tNpcGossip[11240]["OptionFunc12"] = "SpringActivity_Result</N>11240</N>2</N>1"
tNpcGossip[11240]["OptionFunc13"] = "SpringActivity_Result</N>11240</N>2</N>1"

tNpcGossip[11240]["Text1-2"] = {2}
tNpcGossip[11240]["tOption1-2"] = {21,22,23}
tNpcGossip[11240]["OptionFunc21"] = "SpringActivity_Result</N>11240</N>2</N>2"
tNpcGossip[11240]["OptionFunc22"] = "SpringActivity_Result</N>11240</N>2</N>2"
tNpcGossip[11240]["OptionFunc23"] = "SpringActivity_Result</N>11240</N>1</N>2"

tNpcGossip[11240]["Text1-3"] = {3}
tNpcGossip[11240]["tOption1-3"] = {31,32,33}
tNpcGossip[11240]["OptionFunc31"] = "SpringActivity_Result</N>11240</N>1</N>3"
tNpcGossip[11240]["OptionFunc32"] = "SpringActivity_Result</N>11240</N>2</N>3"
tNpcGossip[11240]["OptionFunc33"] = "SpringActivity_Result</N>11240</N>2</N>3"

tNpcGossip[11240]["Text1-4"] = {4}
tNpcGossip[11240]["tOption1-4"] = {41,42,43}
tNpcGossip[11240]["OptionFunc41"] = "SpringActivity_Result</N>11240</N>2</N>4"
tNpcGossip[11240]["OptionFunc42"] = "SpringActivity_Result</N>11240</N>1</N>4"
tNpcGossip[11240]["OptionFunc43"] = "SpringActivity_Result</N>11240</N>2</N>4"

tNpcGossip[11240]["Text1-5"] = {5}
tNpcGossip[11240]["tOption1-5"] = {51,52,53}
tNpcGossip[11240]["OptionFunc51"] = "SpringActivity_Result</N>11240</N>1</N>5"
tNpcGossip[11240]["OptionFunc52"] = "SpringActivity_Result</N>11240</N>2</N>5"
tNpcGossip[11240]["OptionFunc53"] = "SpringActivity_Result</N>11240</N>2</N>5"

--猜对灯谜
tNpcGossip[11240]["Text1-6"] = {6}
tNpcGossip[11240]["tOption1-6"] = {61,62,63}
tNpcGossip[11240]["OptionFunc61"] = "SpringActivity_Result</N>11240</N>2</N>6"
tNpcGossip[11240]["OptionFunc62"] = "SpringActivity_Result</N>11240</N>2</N>6"
tNpcGossip[11240]["OptionFunc63"] = "SpringActivity_Result</N>11240</N>1</N>6"
tNpcGossip[11240]["Text1-7"] = {7}
tNpcGossip[11240]["tOption1-7"] = {71,72,73}
tNpcGossip[11240]["OptionFunc71"] = "SpringActivity_Result</N>11240</N>2</N>7"
tNpcGossip[11240]["OptionFunc72"] = "SpringActivity_Result</N>11240</N>2</N>7"
tNpcGossip[11240]["OptionFunc73"] = "SpringActivity_Result</N>11240</N>1</N>7"
tNpcGossip[11240]["Text1-8"] = {8}
tNpcGossip[11240]["tOption1-8"] = {81,82,83}
tNpcGossip[11240]["OptionFunc81"] = "SpringActivity_Result</N>11240</N>1</N>8"
tNpcGossip[11240]["OptionFunc82"] = "SpringActivity_Result</N>11240</N>2</N>8"
tNpcGossip[11240]["OptionFunc83"] = "SpringActivity_Result</N>11240</N>2</N>8"
tNpcGossip[11240]["Text1-9"] = {9}
tNpcGossip[11240]["tOption1-9"] = {91,92,93}
tNpcGossip[11240]["OptionFunc91"] = "SpringActivity_Result</N>11240</N>2</N>9"
tNpcGossip[11240]["OptionFunc92"] = "SpringActivity_Result</N>11240</N>2</N>9"
tNpcGossip[11240]["OptionFunc93"] = "SpringActivity_Result</N>11240</N>1</N>9"
tNpcGossip[11240]["Text1-10"] = {10}
tNpcGossip[11240]["tOption1-10"] = {101,102,103}
tNpcGossip[11240]["OptionFunc101"] = "SpringActivity_Result</N>11240</N>2</N>10"
tNpcGossip[11240]["OptionFunc102"] = "SpringActivity_Result</N>11240</N>2</N>10"
tNpcGossip[11240]["OptionFunc103"] = "SpringActivity_Result</N>11240</N>1</N>10"
tNpcGossip[11240]["Text1-11"] = {11}
tNpcGossip[11240]["tOption1-11"] = {111,112,113}
tNpcGossip[11240]["OptionFunc111"] = "SpringActivity_Result</N>11240</N>2</N>11"
tNpcGossip[11240]["OptionFunc112"] = "SpringActivity_Result</N>11240</N>1</N>11"
tNpcGossip[11240]["OptionFunc113"] = "SpringActivity_Result</N>11240</N>2</N>11"
tNpcGossip[11240]["Text1-12"] = {12}
tNpcGossip[11240]["tOption1-12"] = {121,122,123}
tNpcGossip[11240]["OptionFunc121"] = "SpringActivity_Result</N>11240</N>2</N>12"
tNpcGossip[11240]["OptionFunc122"] = "SpringActivity_Result</N>11240</N>2</N>12"
tNpcGossip[11240]["OptionFunc123"] = "SpringActivity_Result</N>11240</N>1</N>12"
tNpcGossip[11240]["Text1-13"] = {13}
tNpcGossip[11240]["tOption1-13"] = {131,132,133}
tNpcGossip[11240]["OptionFunc131"] = "SpringActivity_Result</N>11240</N>1</N>13"
tNpcGossip[11240]["OptionFunc132"] = "SpringActivity_Result</N>11240</N>2</N>13"
tNpcGossip[11240]["OptionFunc133"] = "SpringActivity_Result</N>11240</N>2</N>13"
tNpcGossip[11240]["Text1-14"] = {14}
tNpcGossip[11240]["tOption1-14"] = {141,142,143}
tNpcGossip[11240]["OptionFunc141"] = "SpringActivity_Result</N>11240</N>2</N>14"
tNpcGossip[11240]["OptionFunc142"] = "SpringActivity_Result</N>11240</N>2</N>14"
tNpcGossip[11240]["OptionFunc143"] = "SpringActivity_Result</N>11240</N>1</N>14"
tNpcGossip[11240]["Text1-15"] = {15}
tNpcGossip[11240]["tOption1-15"] = {151,152,153}
tNpcGossip[11240]["OptionFunc151"] = "SpringActivity_Result</N>11240</N>1</N>15"
tNpcGossip[11240]["OptionFunc152"] = "SpringActivity_Result</N>11240</N>2</N>15"
tNpcGossip[11240]["OptionFunc153"] = "SpringActivity_Result</N>11240</N>2</N>15"
--猜错灯谜
tNpcGossip[11240]["Text1-16"] = {701}
tNpcGossip[11240]["tOption1-16"] = {701,702}
tNpcGossip[11240]["OptionFunc701"] = "SpringActivity_Riddle</N>11240"--返回题面



--花灯2灯谜内容
tNpcGossip[11241]= tNpcGossip[11241] or DefaultNpc:new{}
tNpcGossip[11241]["OptionHidden"] = 1
tNpcGossip[11241]["DialogueText"] = tSpringActivity_Text["Riddles"]
   
tNpcGossip[11241]["Text1-1"] = {16}
tNpcGossip[11241]["tOption1-1"] = {161,162,163}
tNpcGossip[11241]["OptionFunc161"] = "SpringActivity_Result</N>11241</N>2</N>1"
tNpcGossip[11241]["OptionFunc162"] = "SpringActivity_Result</N>11241</N>2</N>1"
tNpcGossip[11241]["OptionFunc163"] = "SpringActivity_Result</N>11241</N>1</N>1"

tNpcGossip[11241]["Text1-2"] = {17}
tNpcGossip[11241]["tOption1-2"] = {171,172,173}
tNpcGossip[11241]["OptionFunc171"] = "SpringActivity_Result</N>11241</N>1</N>2"
tNpcGossip[11241]["OptionFunc172"] = "SpringActivity_Result</N>11241</N>2</N>2"
tNpcGossip[11241]["OptionFunc173"] = "SpringActivity_Result</N>11241</N>2</N>2"
 
tNpcGossip[11241]["Text1-3"] = {18}
tNpcGossip[11241]["tOption1-3"] = {181,182,183}
tNpcGossip[11241]["OptionFunc181"] = "SpringActivity_Result</N>11241</N>2</N>3"
tNpcGossip[11241]["OptionFunc182"] = "SpringActivity_Result</N>11241</N>2</N>3"
tNpcGossip[11241]["OptionFunc183"] = "SpringActivity_Result</N>11241</N>1</N>3"

tNpcGossip[11241]["Text1-4"] = {19}
tNpcGossip[11241]["tOption1-4"] = {191,192,193}
tNpcGossip[11241]["OptionFunc191"] = "SpringActivity_Result</N>11241</N>1</N>4"
tNpcGossip[11241]["OptionFunc192"] = "SpringActivity_Result</N>11241</N>2</N>4"
tNpcGossip[11241]["OptionFunc193"] = "SpringActivity_Result</N>11241</N>2</N>4"
  
tNpcGossip[11241]["Text1-5"] = {20}
tNpcGossip[11241]["tOption1-5"] = {201,202,203}
tNpcGossip[11241]["OptionFunc201"] = "SpringActivity_Result</N>11241</N>2</N>5"
tNpcGossip[11241]["OptionFunc202"] = "SpringActivity_Result</N>11241</N>2</N>5"
tNpcGossip[11241]["OptionFunc203"] = "SpringActivity_Result</N>11241</N>1</N>5"

tNpcGossip[11241]["Text1-6"] = {21}
tNpcGossip[11241]["tOption1-6"] = {211,212,213}
tNpcGossip[11241]["OptionFunc211"] = "SpringActivity_Result</N>11241</N>1</N>6"
tNpcGossip[11241]["OptionFunc212"] = "SpringActivity_Result</N>11241</N>2</N>6"
tNpcGossip[11241]["OptionFunc213"] = "SpringActivity_Result</N>11241</N>2</N>6"

tNpcGossip[11241]["Text1-7"] = {22}
tNpcGossip[11241]["tOption1-7"] = {221,222,223}
tNpcGossip[11241]["OptionFunc221"] = "SpringActivity_Result</N>11241</N>2</N>7"
tNpcGossip[11241]["OptionFunc222"] = "SpringActivity_Result</N>11241</N>2</N>7"
tNpcGossip[11241]["OptionFunc223"] = "SpringActivity_Result</N>11241</N>1</N>7"

tNpcGossip[11241]["Text1-8"] = {23}
tNpcGossip[11241]["tOption1-8"] = {231,232,233}
tNpcGossip[11241]["OptionFunc231"] = "SpringActivity_Result</N>11241</N>1</N>8"
tNpcGossip[11241]["OptionFunc232"] = "SpringActivity_Result</N>11241</N>2</N>8"
tNpcGossip[11241]["OptionFunc233"] = "SpringActivity_Result</N>11241</N>2</N>8"

tNpcGossip[11241]["Text1-9"] = {24}
tNpcGossip[11241]["tOption1-9"] = {241,242,243}
tNpcGossip[11241]["OptionFunc241"] = "SpringActivity_Result</N>11241</N>1</N>9"
tNpcGossip[11241]["OptionFunc242"] = "SpringActivity_Result</N>11241</N>2</N>9"
tNpcGossip[11241]["OptionFunc243"] = "SpringActivity_Result</N>11241</N>2</N>9"

tNpcGossip[11241]["Text1-10"] = {25}
tNpcGossip[11241]["tOption1-10"] = {251,252,253}
tNpcGossip[11241]["OptionFunc251"] = "SpringActivity_Result</N>11241</N>2</N>10"
tNpcGossip[11241]["OptionFunc252"] = "SpringActivity_Result</N>11241</N>1</N>10"
tNpcGossip[11241]["OptionFunc253"] = "SpringActivity_Result</N>11241</N>2</N>10"

tNpcGossip[11241]["Text1-11"] = {26}
tNpcGossip[11241]["tOption1-11"] = {261,262,263}
tNpcGossip[11241]["OptionFunc261"] = "SpringActivity_Result</N>11241</N>2</N>11"
tNpcGossip[11241]["OptionFunc262"] = "SpringActivity_Result</N>11241</N>2</N>11"
tNpcGossip[11241]["OptionFunc263"] = "SpringActivity_Result</N>11241</N>1</N>11"

tNpcGossip[11241]["Text1-12"] = {27}
tNpcGossip[11241]["tOption1-12"] = {271,272,273}
tNpcGossip[11241]["OptionFunc271"] = "SpringActivity_Result</N>11241</N>1</N>12"
tNpcGossip[11241]["OptionFunc272"] = "SpringActivity_Result</N>11241</N>2</N>12"
tNpcGossip[11241]["OptionFunc273"] = "SpringActivity_Result</N>11241</N>2</N>12"

tNpcGossip[11241]["Text1-13"] = {28}
tNpcGossip[11241]["tOption1-13"] = {281,282,283}
tNpcGossip[11241]["OptionFunc281"] = "SpringActivity_Result</N>11241</N>1</N>13"
tNpcGossip[11241]["OptionFunc282"] = "SpringActivity_Result</N>11241</N>2</N>13"
tNpcGossip[11241]["OptionFunc283"] = "SpringActivity_Result</N>11241</N>2</N>13"

tNpcGossip[11241]["Text1-14"] = {29}
tNpcGossip[11241]["tOption1-14"] = {291,292,293}
tNpcGossip[11241]["OptionFunc291"] = "SpringActivity_Result</N>11241</N>2</N>14"
tNpcGossip[11241]["OptionFunc292"] = "SpringActivity_Result</N>11241</N>1</N>14"
tNpcGossip[11241]["OptionFunc293"] = "SpringActivity_Result</N>11241</N>2</N>14"

tNpcGossip[11241]["Text1-15"] = {30}
tNpcGossip[11241]["tOption1-15"] = {301,302,303}
tNpcGossip[11241]["OptionFunc301"] = "SpringActivity_Result</N>11241</N>2</N>15"
tNpcGossip[11241]["OptionFunc302"] = "SpringActivity_Result</N>11241</N>2</N>15"
tNpcGossip[11241]["OptionFunc303"] = "SpringActivity_Result</N>11241</N>1</N>15"
--猜错灯谜
tNpcGossip[11241]["Text1-16"] = {701}
tNpcGossip[11241]["tOption1-16"] = {701,702}
tNpcGossip[11241]["OptionFunc701"] = "SpringActivity_Riddle</N>11241"--返回题面



--花灯3灯谜内容
tNpcGossip[11242]= tNpcGossip[11242] or DefaultNpc:new{}
tNpcGossip[11242]["OptionHidden"] = 1
tNpcGossip[11242]["DialogueText"] = tSpringActivity_Text["Riddles"]

tNpcGossip[11242]["Text1-1"] = {31}
tNpcGossip[11242]["tOption1-1"] = {311,312,313}
tNpcGossip[11242]["OptionFunc311"] = "SpringActivity_Result</N>11242</N>1</N>1"
tNpcGossip[11242]["OptionFunc312"] = "SpringActivity_Result</N>11242</N>2</N>1"
tNpcGossip[11242]["OptionFunc313"] = "SpringActivity_Result</N>11242</N>2</N>1"

tNpcGossip[11242]["Text1-2"] = {32}
tNpcGossip[11242]["tOption1-2"] = {321,322,323}
tNpcGossip[11242]["OptionFunc321"] = "SpringActivity_Result</N>11242</N>2</N>2"
tNpcGossip[11242]["OptionFunc322"] = "SpringActivity_Result</N>11242</N>2</N>2"
tNpcGossip[11242]["OptionFunc323"] = "SpringActivity_Result</N>11242</N>1</N>2"

tNpcGossip[11242]["Text1-3"] = {33}
tNpcGossip[11242]["tOption1-3"] = {331,332,333}
tNpcGossip[11242]["OptionFunc331"] = "SpringActivity_Result</N>11242</N>2</N>3"
tNpcGossip[11242]["OptionFunc332"] = "SpringActivity_Result</N>11242</N>2</N>3"
tNpcGossip[11242]["OptionFunc333"] = "SpringActivity_Result</N>11242</N>1</N>3"

tNpcGossip[11242]["Text1-4"] = {34}
tNpcGossip[11242]["tOption1-4"] = {341,342,343}
tNpcGossip[11242]["OptionFunc341"] = "SpringActivity_Result</N>11242</N>2</N>4"
tNpcGossip[11242]["OptionFunc342"] = "SpringActivity_Result</N>11242</N>1</N>4"
tNpcGossip[11242]["OptionFunc343"] = "SpringActivity_Result</N>11242</N>2</N>4"

tNpcGossip[11242]["Text1-5"] = {35}
tNpcGossip[11242]["tOption1-5"] = {351,352,353}
tNpcGossip[11242]["OptionFunc351"] = "SpringActivity_Result</N>11242</N>2</N>5"
tNpcGossip[11242]["OptionFunc352"] = "SpringActivity_Result</N>11242</N>2</N>5"
tNpcGossip[11242]["OptionFunc353"] = "SpringActivity_Result</N>11242</N>1</N>5"

tNpcGossip[11242]["Text1-6"] = {36}
tNpcGossip[11242]["tOption1-6"] = {361,362,363}
tNpcGossip[11242]["OptionFunc361"] = "SpringActivity_Result</N>11242</N>1</N>6"
tNpcGossip[11242]["OptionFunc362"] = "SpringActivity_Result</N>11242</N>2</N>6"
tNpcGossip[11242]["OptionFunc363"] = "SpringActivity_Result</N>11242</N>2</N>6"

tNpcGossip[11242]["Text1-7"] = {37}
tNpcGossip[11242]["tOption1-7"] = {371,372,373}
tNpcGossip[11242]["OptionFunc371"] = "SpringActivity_Result</N>11242</N>1</N>7"
tNpcGossip[11242]["OptionFunc372"] = "SpringActivity_Result</N>11242</N>2</N>7"
tNpcGossip[11242]["OptionFunc373"] = "SpringActivity_Result</N>11242</N>2</N>7"

tNpcGossip[11242]["Text1-8"] = {38}
tNpcGossip[11242]["tOption1-8"] = {381,382,383}
tNpcGossip[11242]["OptionFunc381"] = "SpringActivity_Result</N>11242</N>1</N>8"
tNpcGossip[11242]["OptionFunc382"] = "SpringActivity_Result</N>11242</N>2</N>8"
tNpcGossip[11242]["OptionFunc383"] = "SpringActivity_Result</N>11242</N>2</N>8"

tNpcGossip[11242]["Text1-9"] = {39}
tNpcGossip[11242]["tOption1-9"] = {391,392,393}
tNpcGossip[11242]["OptionFunc391"] = "SpringActivity_Result</N>11242</N>1</N>9"
tNpcGossip[11242]["OptionFunc392"] = "SpringActivity_Result</N>11242</N>2</N>9"
tNpcGossip[11242]["OptionFunc393"] = "SpringActivity_Result</N>11242</N>2</N>9"

tNpcGossip[11242]["Text1-10"] = {40}
tNpcGossip[11242]["tOption1-10"] = {401,402,403}
tNpcGossip[11242]["OptionFunc401"] = "SpringActivity_Result</N>11242</N>1</N>10"
tNpcGossip[11242]["OptionFunc402"] = "SpringActivity_Result</N>11242</N>2</N>10"
tNpcGossip[11242]["OptionFunc403"] = "SpringActivity_Result</N>11242</N>2</N>10"

tNpcGossip[11242]["Text1-11"] = {41}
tNpcGossip[11242]["tOption1-11"] = {411,412,413}
tNpcGossip[11242]["OptionFunc411"] = "SpringActivity_Result</N>11242</N>2</N>11"
tNpcGossip[11242]["OptionFunc412"] = "SpringActivity_Result</N>11242</N>1</N>11"
tNpcGossip[11242]["OptionFunc413"] = "SpringActivity_Result</N>11242</N>2</N>11"

tNpcGossip[11242]["Text1-12"] = {42}
tNpcGossip[11242]["tOption1-12"] = {421,422,423}
tNpcGossip[11242]["OptionFunc421"] = "SpringActivity_Result</N>11242</N>1</N>12"
tNpcGossip[11242]["OptionFunc422"] = "SpringActivity_Result</N>11242</N>2</N>12"
tNpcGossip[11242]["OptionFunc423"] = "SpringActivity_Result</N>11242</N>2</N>12"

tNpcGossip[11242]["Text1-13"] = {43}
tNpcGossip[11242]["tOption1-13"] = {431,432,433}
tNpcGossip[11242]["OptionFunc431"] = "SpringActivity_Result</N>11242</N>2</N>13"
tNpcGossip[11242]["OptionFunc432"] = "SpringActivity_Result</N>11242</N>1</N>13"
tNpcGossip[11242]["OptionFunc433"] = "SpringActivity_Result</N>11242</N>2</N>13"

tNpcGossip[11242]["Text1-14"] = {44}
tNpcGossip[11242]["tOption1-14"] = {441,442,443}
tNpcGossip[11242]["OptionFunc441"] = "SpringActivity_Result</N>11242</N>2</N>14"
tNpcGossip[11242]["OptionFunc442"] = "SpringActivity_Result</N>11242</N>1</N>14"
tNpcGossip[11242]["OptionFunc443"] = "SpringActivity_Result</N>11242</N>2</N>14"

tNpcGossip[11242]["Text1-15"] = {45}
tNpcGossip[11242]["tOption1-15"] = {451,452,453}
tNpcGossip[11242]["OptionFunc451"] = "SpringActivity_Result</N>11242</N>2</N>15"
tNpcGossip[11242]["OptionFunc452"] = "SpringActivity_Result</N>11242</N>2</N>15"
tNpcGossip[11242]["OptionFunc453"] = "SpringActivity_Result</N>11242</N>1</N>15"


tNpcGossip[11242]["Text1-16"] = {701}
tNpcGossip[11242]["tOption1-16"] = {701,702}
tNpcGossip[11242]["OptionFunc701"] = "SpringActivity_Riddle</N>11242"--返回题面

--花灯4灯谜内容
tNpcGossip[11243]= tNpcGossip[11243] or DefaultNpc:new{}
tNpcGossip[11243]["OptionHidden"] = 1
tNpcGossip[11243]["DialogueText"] = tSpringActivity_Text["Riddles"]
  
tNpcGossip[11243]["Text1-1"] = {46}
tNpcGossip[11243]["tOption1-1"] = {461,462,463}
tNpcGossip[11243]["OptionFunc461"] = "SpringActivity_Result</N>11243</N>2</N>1"
tNpcGossip[11243]["OptionFunc462"] = "SpringActivity_Result</N>11243</N>2</N>1"
tNpcGossip[11243]["OptionFunc463"] = "SpringActivity_Result</N>11243</N>1</N>1"

tNpcGossip[11243]["Text1-2"] = {47}
tNpcGossip[11243]["tOption1-2"] = {471,472,473}
tNpcGossip[11243]["OptionFunc471"] = "SpringActivity_Result</N>11243</N>2</N>2"
tNpcGossip[11243]["OptionFunc472"] = "SpringActivity_Result</N>11243</N>2</N>2"
tNpcGossip[11243]["OptionFunc473"] = "SpringActivity_Result</N>11243</N>1</N>2"

tNpcGossip[11243]["Text1-3"] = {48}
tNpcGossip[11243]["tOption1-3"] = {481,482,483}
tNpcGossip[11243]["OptionFunc481"] = "SpringActivity_Result</N>11243</N>1</N>3"
tNpcGossip[11243]["OptionFunc482"] = "SpringActivity_Result</N>11243</N>2</N>3"
tNpcGossip[11243]["OptionFunc483"] = "SpringActivity_Result</N>11243</N>2</N>3"
    
tNpcGossip[11243]["Text1-4"] = {49}
tNpcGossip[11243]["tOption1-4"] = {491,492,493}
tNpcGossip[11243]["OptionFunc491"] = "SpringActivity_Result</N>11243</N>1</N>4"
tNpcGossip[11243]["OptionFunc492"] = "SpringActivity_Result</N>11243</N>2</N>4"
tNpcGossip[11243]["OptionFunc493"] = "SpringActivity_Result</N>11243</N>2</N>4"
   
tNpcGossip[11243]["Text1-5"] = {50}
tNpcGossip[11243]["tOption1-5"] = {501,502,503}
tNpcGossip[11243]["OptionFunc501"] = "SpringActivity_Result</N>11243</N>2</N>5"
tNpcGossip[11243]["OptionFunc502"] = "SpringActivity_Result</N>11243</N>2</N>5"
tNpcGossip[11243]["OptionFunc503"] = "SpringActivity_Result</N>11243</N>1</N>5"

tNpcGossip[11243]["Text1-6"] = {51}
tNpcGossip[11243]["tOption1-6"] = {511,512,513}
tNpcGossip[11243]["OptionFunc511"] = "SpringActivity_Result</N>11243</N>1</N>6"
tNpcGossip[11243]["OptionFunc512"] = "SpringActivity_Result</N>11243</N>2</N>6"
tNpcGossip[11243]["OptionFunc513"] = "SpringActivity_Result</N>11243</N>2</N>6"

tNpcGossip[11243]["Text1-7"] = {52}
tNpcGossip[11243]["tOption1-7"] = {521,522,523}
tNpcGossip[11243]["OptionFunc521"] = "SpringActivity_Result</N>11243</N>1</N>7"
tNpcGossip[11243]["OptionFunc522"] = "SpringActivity_Result</N>11243</N>2</N>7"
tNpcGossip[11243]["OptionFunc523"] = "SpringActivity_Result</N>11243</N>2</N>7"

tNpcGossip[11243]["Text1-8"] = {53}
tNpcGossip[11243]["tOption1-8"] = {531,532,533}
tNpcGossip[11243]["OptionFunc531"] = "SpringActivity_Result</N>11243</N>2</N>8"
tNpcGossip[11243]["OptionFunc532"] = "SpringActivity_Result</N>11243</N>1</N>8"
tNpcGossip[11243]["OptionFunc533"] = "SpringActivity_Result</N>11243</N>2</N>8"

tNpcGossip[11243]["Text1-9"] = {54}
tNpcGossip[11243]["tOption1-9"] = {541,542,543}
tNpcGossip[11243]["OptionFunc541"] = "SpringActivity_Result</N>11243</N>1</N>9"
tNpcGossip[11243]["OptionFunc542"] = "SpringActivity_Result</N>11243</N>2</N>9"
tNpcGossip[11243]["OptionFunc543"] = "SpringActivity_Result</N>11243</N>2</N>9"

tNpcGossip[11243]["Text1-10"] = {55}
tNpcGossip[11243]["tOption1-10"] = {551,552,553}
tNpcGossip[11243]["OptionFunc551"] = "SpringActivity_Result</N>11243</N>2</N>10"
tNpcGossip[11243]["OptionFunc552"] = "SpringActivity_Result</N>11243</N>2</N>10"
tNpcGossip[11243]["OptionFunc553"] = "SpringActivity_Result</N>11243</N>1</N>10"

tNpcGossip[11243]["Text1-11"] = {56}
tNpcGossip[11243]["tOption1-11"] = {561,562,563}
tNpcGossip[11243]["OptionFunc561"] = "SpringActivity_Result</N>11243</N>2</N>11"
tNpcGossip[11243]["OptionFunc562"] = "SpringActivity_Result</N>11243</N>2</N>11"
tNpcGossip[11243]["OptionFunc563"] = "SpringActivity_Result</N>11243</N>1</N>11"

tNpcGossip[11243]["Text1-12"] = {57}
tNpcGossip[11243]["tOption1-12"] = {571,572,573}
tNpcGossip[11243]["OptionFunc571"] = "SpringActivity_Result</N>11243</N>2</N>12"
tNpcGossip[11243]["OptionFunc572"] = "SpringActivity_Result</N>11243</N>2</N>12"
tNpcGossip[11243]["OptionFunc573"] = "SpringActivity_Result</N>11243</N>1</N>12"

tNpcGossip[11243]["Text1-13"] = {58}
tNpcGossip[11243]["tOption1-13"] = {581,582,583}
tNpcGossip[11243]["OptionFunc581"] = "SpringActivity_Result</N>11243</N>2</N>13"
tNpcGossip[11243]["OptionFunc582"] = "SpringActivity_Result</N>11243</N>1</N>13"
tNpcGossip[11243]["OptionFunc583"] = "SpringActivity_Result</N>11243</N>2</N>13"

tNpcGossip[11243]["Text1-14"] = {59}
tNpcGossip[11243]["tOption1-14"] = {591,592,593}
tNpcGossip[11243]["OptionFunc591"] = "SpringActivity_Result</N>11243</N>1</N>14"
tNpcGossip[11243]["OptionFunc592"] = "SpringActivity_Result</N>11243</N>2</N>14"
tNpcGossip[11243]["OptionFunc593"] = "SpringActivity_Result</N>11243</N>2</N>14"

tNpcGossip[11243]["Text1-15"] = {60}
tNpcGossip[11243]["tOption1-15"] = {601,602,603}
tNpcGossip[11243]["OptionFunc601"] = "SpringActivity_Result</N>11243</N>2</N>15"
tNpcGossip[11243]["OptionFunc602"] = "SpringActivity_Result</N>11243</N>2</N>15"
tNpcGossip[11243]["OptionFunc603"] = "SpringActivity_Result</N>11243</N>1</N>15"

--猜错灯谜，
tNpcGossip[11243]["Text1-16"] = {701}
tNpcGossip[11243]["tOption1-16"] = {701,702}
tNpcGossip[11243]["OptionFunc701"] = "SpringActivity_Riddle</N>11243"--返回题面
tNpcFace[5162] = 1

---------------------------------物品部分---------------------------------------------
--新年福钱
tItem[3301455] = tItem[3301455] or {}
tItem[3301455]["Function"] = function(nItemId,sItemName)
	SpringActivity_UseFuMoney(nItemId)
end
--五铢钱
tItem[3301454] = tItem[3301454] or {}
tItem[3301454]["Function"] = function(nItemId,sItemName)
	SpringActivity_UseMoney(nItemId)
end

--红包
tItem[3301456] = tItem[3301456] or {}
tItem[3301456]["Function"] = function(nItemId,sItemName)
	SpringActivity_RedBag(nItemId)
end
--元宵
tItem[3301457] = tItem[3301457] or {}
tItem[3301457]["Function"] = function(nItemId,sItemName)
	SpringActivity_RedBag(nItemId)
end
--气力值礼包
tItem[3301458] = tItem[3301458] or {}
tItem[3301458]["Function"] = function(nItemId,sItemName)
	SpringActivity_UseGift(nItemId)
end
--微光星陨石礼盒
tItem[3301459] = tItem[3301459] or {}
tItem[3301459]["Function"] = function(nItemId,sItemName)
	SpringActivity_UseGift(nItemId)
end
--明亮星陨石礼盒
tItem[3301460] = tItem[3301460] or {}
tItem[3301460]["Function"] = function(nItemId,sItemName)
	SpringActivity_UseGift(nItemId)
end
--新年赠点包
tItem[3301461] = tItem[3301461] or {}
tItem[3301461]["Function"] = function(nItemId,sItemName)
	SpringActivity_GiftEmoney(nItemId)
end
--金色富贵外套包
tItem[3301462] = tItem[3301462] or {}
tItem[3301462]["Function"] = function(nItemId,sItemName)
	SpringActivity_UseGift(nItemId)
end
--红色富贵外套包
tItem[3301463] = tItem[3301463] or {}
tItem[3301463]["Function"] = function(nItemId,sItemName)
	SpringActivity_UseGift(nItemId)
end
--龙凤呈祥合成
tItem[3301464] = tItem[3301464] or {}
tItem[3301464]["Function"] = function(nItemId,sItemName)
	SpringActivity_Mix(nItemId)
end

-- 30天洋洋得意时装包
tItem[3319164] = tItem[3319164] or {}
tItem[3319164]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSpringActivity_Reward[nItemId])
end
--2019新春财运大礼包
tItem[3319163] = tItem[3319163] or {}
tItem[3319163]["Function"] = function(nItemId,sItemName)
	SpringActivity_OpenMonoGift2019(nItemId)
end
--天石升级包逻辑
--[[
tItem[3301223] = tItem[3301223] or {}
tItem[3301223]["DialogueText"] = tDoubleElevenActivity_Text[3301223]
tItem[3301223]["Text1-1"] ={111}
tItem[3301223]["tOption1-1"] = {1,2}
tItem[3301223]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3301223</N>1"
tItem[3301223]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3301223</N>2"
tItem[3301223]["Text1-2"] ={121}
tItem[3301223]["tOption1-2"] = {3}

tItem[3301224] = tItem[3301224] or {}
tItem[3301224]["DialogueText"] = tDoubleElevenActivity_Text[3301224]
tItem[3301224]["Text1-1"] ={111}
tItem[3301224]["tOption1-1"] = {1,2}
tItem[3301224]["OptionFunc1"] ="DoubleElevenActivity_UpPack</N>3301224</N>1" 
tItem[3301224]["OptionFunc2"] ="DoubleElevenActivity_UpPack</N>3301224</N>2"]]--


--同步春节活动，纳福天官的兑换商店物品
--3天神装外套
tItemFace[3306390] = 1094
tItem[3306390] = tItem[3306390] or {}
tItem[3306390]["DialogueText"] = tSpringActivity_Text[3306390]
tItem[3306390]["Text1-1"] = {101}
tItem[3306390]["tOption1-1"] = {101,102,103,104,105,106,107,108}
tItem[3306390]["OptionFunc101"] = "SpringActivity_OpenGodCoat</N>3306390</N>194885"
tItem[3306390]["OptionFunc102"] = "SpringActivity_OpenGodCoat</N>3306390</N>194895"
tItem[3306390]["OptionFunc103"] = "SpringActivity_OpenGodCoat</N>3306390</N>194905"
tItem[3306390]["OptionFunc104"] = "SpringActivity_OpenGodCoat</N>3306390</N>194915"
tItem[3306390]["OptionFunc105"] = "SpringActivity_OpenGodCoat</N>3306390</N>194925"
tItem[3306390]["OptionFunc106"] = "SpringActivity_OpenGodCoat</N>3306390</N>194935"
tItem[3306390]["OptionFunc107"] = "SpringActivity_OpenGodCoat</N>3306390</N>194945"

--30天龙凤呈祥
tItem[3306391] = tItem[3301463]

--2018新春财运大礼包
tItem[3306392] = tItem[3306392] or {}
tItem[3306392]["Function"] = function(nItemId,sItemName)
	SpringActivity_OpenMonoGift(nItemId)
end

--3天/15天怀旧武器外套包
tItemFace[3306393] = 692
tItem[3306393] = tItem[3306393] or {}
tItem[3306393]["DialogueText"] = tSpringActivity_Text[3306393]
tItem[3306393]["Text1-1"] = {111}
tItem[3306393]["tOption1-1"] = {1,2,3,4,5,6,7,8,9,10,11}
tItem[3306393]["OptionFunc1"] = "SpringActivity_UseWeaponPack</N>3306393</N>370008</N>3"
tItem[3306393]["OptionFunc2"] = "SpringActivity_UseWeaponPack</N>3306393</N>350022</N>3"
tItem[3306393]["OptionFunc3"] = "SpringActivity_UseWeaponPack</N>3306393</N>380010</N>3"
tItem[3306393]["OptionFunc4"] = "SpringActivity_UseWeaponPack</N>3306393</N>360220</N>3"
tItem[3306393]["OptionFunc5"] = "SpringActivity_UseWeaponPack</N>3306393</N>360221</N>3"
tItem[3306393]["OptionFunc6"] = "SpringActivity_UseWeaponPack</N>3306393</N>360222</N>3"
tItem[3306393]["OptionFunc7"] = "SpringActivity_UseWeaponPack</N>3306393</N>360223</N>3"
tItem[3306393]["OptionFunc8"] = "SpringActivity_UseWeaponPack</N>3306393</N>360224</N>3"
tItem[3306393]["OptionFunc9"] = "SpringActivity_UseWeaponPack</N>3306393</N>360225</N>3"
tItem[3306393]["OptionFunc10"] = "SpringActivity_UseWeaponPack</N>3306393</N>360226</N>3"
tItem[3306393]["OptionFunc11"] = "SpringActivity_UseWeaponPack</N>3306393</N>360227</N>3"

tItemFace[3306394] = 949
tItem[3306394] = tItem[3306394] or {}
tItem[3306394]["DialogueText"] = tSpringActivity_Text[3306394]
tItem[3306394]["Text1-1"] = {111}
tItem[3306394]["tOption1-1"] = {1,2,3,4,5,6,7,8,9,10,11}
tItem[3306394]["OptionFunc1"] = "SpringActivity_UseWeaponPack</N>3306394</N>370008</N>15"
tItem[3306394]["OptionFunc2"] = "SpringActivity_UseWeaponPack</N>3306394</N>350022</N>15"
tItem[3306394]["OptionFunc3"] = "SpringActivity_UseWeaponPack</N>3306394</N>380010</N>15"
tItem[3306394]["OptionFunc4"] = "SpringActivity_UseWeaponPack</N>3306394</N>360220</N>15"
tItem[3306394]["OptionFunc5"] = "SpringActivity_UseWeaponPack</N>3306394</N>360221</N>15"
tItem[3306394]["OptionFunc6"] = "SpringActivity_UseWeaponPack</N>3306394</N>360222</N>15"
tItem[3306394]["OptionFunc7"] = "SpringActivity_UseWeaponPack</N>3306394</N>360223</N>15"
tItem[3306394]["OptionFunc8"] = "SpringActivity_UseWeaponPack</N>3306394</N>360224</N>15"
tItem[3306394]["OptionFunc9"] = "SpringActivity_UseWeaponPack</N>3306394</N>360225</N>15"
tItem[3306394]["OptionFunc10"] = "SpringActivity_UseWeaponPack</N>3306394</N>360226</N>15"
tItem[3306394]["OptionFunc11"] = "SpringActivity_UseWeaponPack</N>3306394</N>360227</N>15"

--新春财运大礼包
tItem[3306395] = tItem[3301461]



---------------------------------陷阱部分---------------------------------------------

---------------------------------怪物部分---------------------------------------------
-- local tSpringActivity_KillMonster = {}
-- tSpringActivity_KillMonster["ActivityTime"] = tActivityTime["SpringActivity"]["NowTime"]
-- tSpringActivity_KillMonster["Function"]= SpringActivity_Drop
-- tSpringActivity_KillMonster["Area"] = {1,2,3,4,5,6,7,8,9,10,11}
-- table.insert(tMonsterDrop_AreaLoad,tSpringActivity_KillMonster)

 tMonster[5555] = tMonster[5555] or {}
 tMonster[5555]["tFunction"] = tMonster[5555]["tFunction"] or {}
 table.insert(tMonster[5555]["tFunction"],SpringActivity_DropAward)
 
 tBossRewardEnd[5555] = tBossRewardEnd[5555] or {}
 tBossRewardEnd[5555]["tFunction"] = tBossRewardEnd[5555]["tFunction"] or {}
 table.insert(tBossRewardEnd[5555]["tFunction"],SpringActivity_MakeFlag)

--定点刷出年兽
local tSpringActivity_BirthMonster = {}
tSpringActivity_BirthMonster["Type"] = 3
tSpringActivity_BirthMonster["TimeType"] = 4
tSpringActivity_BirthMonster["Multiple"] = {}
tSpringActivity_BirthMonster["Multiple"][1]  = "13:00 13:00"
tSpringActivity_BirthMonster["Multiple"][2]  = "19:00 19:00"
tSpringActivity_BirthMonster["Func"] = SpringActivity_BirthMonster
table.insert(tSystemTime_InitialData,tSpringActivity_BirthMonster)
--定点移除宝箱
local tSpringActivity_MoveChest = {}
tSpringActivity_MoveChest["Type"] = 1
tSpringActivity_MoveChest["TimeType"] = 4
tSpringActivity_MoveChest["Multiple"] = {}
tSpringActivity_MoveChest["Multiple"][1]  = "17:00 17:00"
tSpringActivity_MoveChest["Multiple"][2]  = "23:00 23:00"
tSpringActivity_MoveChest["Func"] = SpringActivity_MoveChest
table.insert(tSystemTime_InitialData,tSpringActivity_MoveChest)
--没有击杀年兽，删除
local tSpringActivity_DeleteMonster = {}
tSpringActivity_DeleteMonster["Type"] = 1
tSpringActivity_DeleteMonster["TimeType"] = 4
tSpringActivity_DeleteMonster["Multiple"] = {}
tSpringActivity_DeleteMonster["Multiple"][1]  = "17:00 17:00"
tSpringActivity_DeleteMonster["Multiple"][2]  = "23:00 23:00"
tSpringActivity_DeleteMonster["Func"] = SpringActivity_DeleteMonster
table.insert(tSystemTime_InitialData,tSpringActivity_DeleteMonster)

--定点刷新红包
local tSpringActivity_TellAllPeople = {}
tSpringActivity_TellAllPeople["Type"] = 6
tSpringActivity_TellAllPeople["TimeType"] = 4
tSpringActivity_TellAllPeople["Time"] = "11:55 11:55"
tSpringActivity_TellAllPeople["Func"] = SpringActivity_TellAllPeople
table.insert(tSystemTime_InitialData,tSpringActivity_TellAllPeople)

local tSpringActivity_LastTell = {}
tSpringActivity_LastTell["Type"] = 6
tSpringActivity_LastTell["TimeType"] = 4
tSpringActivity_LastTell["Time"] = "11:59 11:59"
tSpringActivity_LastTell["Func"] = SpringActivity_LastTell
table.insert(tSystemTime_InitialData,tSpringActivity_LastTell)

local tSpringActivity_RefreshRed = {}
tSpringActivity_RefreshRed["Type"] = 6
tSpringActivity_RefreshRed["TimeType"] = 4
tSpringActivity_RefreshRed["Time"] = "12:00 12:00"
tSpringActivity_RefreshRed["Func"] = SpringActivity_RefreshRed
table.insert(tSystemTime_InitialData,tSpringActivity_RefreshRed)

--每天清零
local tSpringActivity_Clean = {}
tSpringActivity_Clean["Type"] = 2
tSpringActivity_Clean["TimeType"] = 4
tSpringActivity_Clean["Time"] = "00:00 00:02"
tSpringActivity_Clean["Func"] = SpringActivity_Clean
table.insert(tSystemTime_InitialData,tSpringActivity_Clean)

local tSpringActivity_Clean1 = {}
tSpringActivity_Clean1["Type"] = 2
tSpringActivity_Clean1["TimeType"] = 4
tSpringActivity_Clean1["Time"] = "00:03 00:05"
tSpringActivity_Clean1["Func"] = SpringActivity_Clean1
table.insert(tSystemTime_InitialData,tSpringActivity_Clean1)
