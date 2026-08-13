------------------------------------------------------------------------------------
--Name：            170821[简体征服][活动脚本]万圣节小活动
--Creator:      潘云锋
--Created:     2017/08/21
------------------------------------------------------------------------------------
--任务需求：
--	【简体征服】2017万圣节活动
--		活动时间：10.26-11.1
--		1、	新制作节日小活动及兑换商店
--			根据附件文档制作万圣节小活动
--NPC：	魔女艾琳  21124
--		小灵狐    21125 - 21127
--物品：水晶南瓜  3304785
--		万圣糖果  3304786
--STC掩码表：
--		南瓜掉落  165 03
--		糖果掉落  165 04
--怪物：暴走南瓜  1022
------------------------------------------------------------------------------------
--命名规范：Halloween_Activity_
----------------------------------表配置部分--------------------------------------------
--掩码常量表
local tHalloween_Activity_Stc = {}
	--万圣南瓜掉落掩码
	tHalloween_Activity_Stc["DropPumpkin"] = {}
	tHalloween_Activity_Stc["DropPumpkin"]["EventType"] = 165
	tHalloween_Activity_Stc["DropPumpkin"]["DataType"] = 03
	tHalloween_Activity_Stc["DropPumpkin"]["AddNum"] = 1
	tHalloween_Activity_Stc["DropPumpkin"]["MaxNum"] = 20
	--万圣糖果掉落掩码
	tHalloween_Activity_Stc["DropCandy"] = {}
	tHalloween_Activity_Stc["DropCandy"]["EventType"] = 165
	tHalloween_Activity_Stc["DropCandy"]["DataType"] = 04
	tHalloween_Activity_Stc["DropCandy"]["AddNum"] = 1
	tHalloween_Activity_Stc["DropCandy"]["MaxNum"] = 5

--活动配置
local tHalloween_Activity_ConstData = {}
	--活动前
	tHalloween_Activity_ConstData["BeforeActiveTime"] = tActivityTime["Halloween_Activity"]["BeforeActiveTime"]
	--活动中
	tHalloween_Activity_ConstData["ActiveTime"] = tActivityTime["Halloween_Activity"]["ActiveTime"]
	--背包空间
	tHalloween_Activity_ConstData["nChkSpace"] = 1
	--物品ID
	tHalloween_Activity_ConstData["ItemId"] = {}
	tHalloween_Activity_ConstData["ItemId"][3304785] = 3304785
	tHalloween_Activity_ConstData["ItemId"][3304786] = 3304786
	tHalloween_Activity_ConstData["ItemId"][3301454] = 3301454
	--怪物生成地图ID
	tHalloween_Activity_ConstData["MapId"] = 1002
	--怪物ID
	tHalloween_Activity_ConstData["MonsterId"] = 1022
	--BOSS掉落
	tHalloween_Activity_ConstData["BossDropNum"] = 20
	tHalloween_Activity_ConstData["Cellx"] = 10
	tHalloween_Activity_ConstData["Celly"] = 10
	tHalloween_Activity_ConstData["ItemExistTime"] = 60
	--等级限制
	tHalloween_Activity_ConstData["MinLevel"] = 80
	tHalloween_Activity_ConstData["MinMeto"] = 0
	--动态全局存储表  51752
	tHalloween_Activity_ConstData["nGlobalDynaId"] = 51752
	--最大领取天石数
	tHalloween_Activity_ConstData["MostMonoEMoneyGift"] = 88
	
	--全服邀请
	tHalloween_Activity_ConstData["Invite_MapId"] = 1002
	tHalloween_Activity_ConstData["Activity_Invite_Lev"] = "level >= 80"
	tHalloween_Activity_ConstData["Activity_InviteId"] = 4
	tHalloween_Activity_ConstData["Invite_Pos"] ={}
	tHalloween_Activity_ConstData["Invite_Pos"][1] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][1]["X"] = 682
	tHalloween_Activity_ConstData["Invite_Pos"][1]["Y"] = 390
	
	tHalloween_Activity_ConstData["Invite_Pos"][2] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][2]["X"] = 675
	tHalloween_Activity_ConstData["Invite_Pos"][2]["Y"] = 390
	
	tHalloween_Activity_ConstData["Invite_Pos"][3] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][3]["X"] = 675
	tHalloween_Activity_ConstData["Invite_Pos"][3]["Y"] = 383
	
	tHalloween_Activity_ConstData["Invite_Pos"][4] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][4]["X"] = 675
	tHalloween_Activity_ConstData["Invite_Pos"][4]["Y"] = 376
	
	tHalloween_Activity_ConstData["Invite_Pos"][5] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][5]["X"] = 682
	tHalloween_Activity_ConstData["Invite_Pos"][5]["Y"] = 376
	
	tHalloween_Activity_ConstData["Invite_Pos"][6] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][6]["X"] = 689
	tHalloween_Activity_ConstData["Invite_Pos"][6]["Y"] = 376
	
	tHalloween_Activity_ConstData["Invite_Pos"][7] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][7]["X"] = 689
	tHalloween_Activity_ConstData["Invite_Pos"][7]["Y"] = 383
	
	tHalloween_Activity_ConstData["Invite_Pos"][8] = {}
	tHalloween_Activity_ConstData["Invite_Pos"][8]["X"] = 689
	tHalloween_Activity_ConstData["Invite_Pos"][8]["Y"] = 390
	--全服邀请对白   --ini/StrRes.ini  序号顺延，提示框对白
	tHalloween_Activity_ConstData["InviteSendId"] = 10565
	tHalloween_Activity_ConstData["InviteSendOkId"] = 10566
	--全服邀请倒计时
	tHalloween_Activity_ConstData["InviteCountDown"] = 30
	
--怪物坐标配置
local tHalloween_Activity_MonsterPosition = {}
	tHalloween_Activity_MonsterPosition[1022] = {}
	tHalloween_Activity_MonsterPosition[1022]["nPosX"] = 682
	tHalloween_Activity_MonsterPosition[1022]["nPosY"] = 383
	tHalloween_Activity_MonsterPosition[1022]["nMapId"] = 1002
	tHalloween_Activity_MonsterPosition[1022]["nGenId"] = 22551
	tHalloween_Activity_MonsterPosition[1022]["nMonsterId"] = 1022
--自动寻路坐标配置
local tHalloween_Activity_GotoSomeWhere = {}
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"] = {}
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1] = {}
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1]["ItemChanceSum"] = 9999
	--33%普鲁托
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][1] = {}
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][1]["RandomItemChanceType"] = 2
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][1]["ItemChance"] = 3333
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][1]["Item_1"] = 21125
	--33%亚可
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][2] = {}
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][2]["RandomItemChanceType"] = 2
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][2]["ItemChance"] = 3333
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][2]["Item_1"] = 21126
	--33%米娅
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][3] = {}
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][3]["RandomItemChanceType"] = 2
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][3]["ItemChance"] = 3333
	tHalloween_Activity_GotoSomeWhere["PumpkinBulb"][1][3]["Item_1"] = 21127
	
	----小魔女坐标
	tHalloween_Activity_GotoSomeWhere["PumpkinSpirit"] = {}
	tHalloween_Activity_GotoSomeWhere["PumpkinSpirit"]["nMapId"] = 1002
	tHalloween_Activity_GotoSomeWhere["PumpkinSpirit"]["nPosX"] = 342
	tHalloween_Activity_GotoSomeWhere["PumpkinSpirit"]["nPosY"] = 478
	tHalloween_Activity_GotoSomeWhere["PumpkinSpirit"]["nNpcId"] = 21124
	
	
--礼包配置表
local tHalloween_Activity_PackageCout = {}
	--给水晶南瓜
	tHalloween_Activity_PackageCout[3304785] = {}
	tHalloween_Activity_PackageCout[3304785]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3304785]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3304785]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3304785]["RewardItem"][1]["Id"] = 3304785
	tHalloween_Activity_PackageCout[3304785]["RewardItem"][1]["Attr"] = "0 1"
	-- tHalloween_Activity_PackageCout[3304785]["Talk"] = tHalloween_Activity_Text["System"]["GetPumpkin"]
	tHalloween_Activity_PackageCout[3304785]["RewardEffect"] = {}
	tHalloween_Activity_PackageCout[3304785]["RewardEffect"]["SzObj"] = "self"
	tHalloween_Activity_PackageCout[3304785]["RewardEffect"]["Effect"] = "angelwing"

	
	--给万圣糖果
	tHalloween_Activity_PackageCout[3304786] = {}
	tHalloween_Activity_PackageCout[3304786]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3304786]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3304786]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3304786]["RewardItem"][1]["Id"] = 3304786
	tHalloween_Activity_PackageCout[3304786]["RewardItem"][1]["Attr"] = "0 1"
	-- tHalloween_Activity_PackageCout[3304786]["Talk"] = tHalloween_Activity_Text["System"]["GetCandy"]
	tHalloween_Activity_PackageCout[3304786]["RewardEffect"] = {}
	tHalloween_Activity_PackageCout[3304786]["RewardEffect"]["SzObj"] = "self"
	tHalloween_Activity_PackageCout[3304786]["RewardEffect"]["Effect"] = "angelwing"

	--微光星陨石包
	tHalloween_Activity_PackageCout[3305001] = {}
	tHalloween_Activity_PackageCout[3305001]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305001]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305001]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305001]["DeleteItem"][1]["Id"] = 3305001
	tHalloween_Activity_PackageCout[3305001]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305001]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305001]["RewardItem"][1]["Id"] = 3009000
	tHalloween_Activity_PackageCout[3305001]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tHalloween_Activity_PackageCout[3305001]["Talk"] = tHalloween_Activity_Text["PackageReward"][3305001]
	tHalloween_Activity_PackageCout[3305001]["RewardEffect"] = {}
	tHalloween_Activity_PackageCout[3305001]["RewardEffect"]["SzObj"] = "self"
	tHalloween_Activity_PackageCout[3305001]["RewardEffect"]["Effect"] = "angelwing"

	--明亮星陨石包
	tHalloween_Activity_PackageCout[3305002] = {}
	tHalloween_Activity_PackageCout[3305002]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305002]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305002]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305002]["DeleteItem"][1]["Id"] = 3305002
	tHalloween_Activity_PackageCout[3305002]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305002]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305002]["RewardItem"][1]["Id"] = 3009001
	tHalloween_Activity_PackageCout[3305002]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tHalloween_Activity_PackageCout[3305002]["Talk"] = tHalloween_Activity_Text["PackageReward"][3305002]
	tHalloween_Activity_PackageCout[3305002]["RewardEffect"] = {}
	tHalloween_Activity_PackageCout[3305002]["RewardEffect"]["SzObj"] = "self"
	tHalloween_Activity_PackageCout[3305002]["RewardEffect"]["Effect"] = "angelwing"

	-- 1%神佑迷情血族套装包（3天）
	tHalloween_Activity_PackageCout[3310780] = {}
	tHalloween_Activity_PackageCout[3310780]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3310780]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3310780]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3310780]["DeleteItem"][1]["Id"] = 3310780
	tHalloween_Activity_PackageCout[3310780]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3310780]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3310780]["RewardItem"][1]["Id"] = 187475
	tHalloween_Activity_PackageCout[3310780]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	tHalloween_Activity_PackageCout[3310780]["RewardEffect"] = {}
	tHalloween_Activity_PackageCout[3310780]["RewardEffect"]["SzObj"] = "self"
	tHalloween_Activity_PackageCout[3310780]["RewardEffect"]["Effect"] = "angelwing"

	
	--万圣节赠点包
	tHalloween_Activity_PackageCout[3305003] = {} 
	tHalloween_Activity_PackageCout[3305003][1] = {}
	tHalloween_Activity_PackageCout[3305003][1]["ItemChanceSum"] = 10000

	--5%获得1到11的赠点
	tHalloween_Activity_PackageCout[3305003][1][1] = {}
	tHalloween_Activity_PackageCout[3305003][1][1]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][1]["ItemChance"] = 500
	tHalloween_Activity_PackageCout[3305003][1][1]["Item_1"] = 1
	tHalloween_Activity_PackageCout[3305003][1][1]["Start"] = 1
	tHalloween_Activity_PackageCout[3305003][1][1]["End"] = 11
	--25%获得11到22的赠点
	tHalloween_Activity_PackageCout[3305003][1][2] = {}
	tHalloween_Activity_PackageCout[3305003][1][2]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][2]["ItemChance"] = 2500
	tHalloween_Activity_PackageCout[3305003][1][2]["Item_1"] = 2
	tHalloween_Activity_PackageCout[3305003][1][2]["Start"] = 12
	tHalloween_Activity_PackageCout[3305003][1][2]["End"] = 22
	--35%获得23到33的赠点
	tHalloween_Activity_PackageCout[3305003][1][3] = {}
	tHalloween_Activity_PackageCout[3305003][1][3]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][3]["ItemChance"] = 3500
	tHalloween_Activity_PackageCout[3305003][1][3]["Item_1"] = 3
	tHalloween_Activity_PackageCout[3305003][1][3]["Start"] = 23
	tHalloween_Activity_PackageCout[3305003][1][3]["End"] = 33
	--18%获得34到44的赠点
	tHalloween_Activity_PackageCout[3305003][1][4] = {}
	tHalloween_Activity_PackageCout[3305003][1][4]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][4]["ItemChance"] = 1800
	tHalloween_Activity_PackageCout[3305003][1][4]["Item_1"] = 4
	tHalloween_Activity_PackageCout[3305003][1][4]["Start"] = 34
	tHalloween_Activity_PackageCout[3305003][1][4]["End"] = 44
	--12%获得44到55的赠点
	tHalloween_Activity_PackageCout[3305003][1][5] = {}
	tHalloween_Activity_PackageCout[3305003][1][5]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][5]["ItemChance"] = 1100
	tHalloween_Activity_PackageCout[3305003][1][5]["Item_1"] = 5
	tHalloween_Activity_PackageCout[3305003][1][5]["Start"] = 45
	tHalloween_Activity_PackageCout[3305003][1][5]["End"] = 55
	--4%获得56到66的赠点
	tHalloween_Activity_PackageCout[3305003][1][6] = {}
	tHalloween_Activity_PackageCout[3305003][1][6]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][6]["ItemChance"] = 400
	tHalloween_Activity_PackageCout[3305003][1][6]["Item_1"] = 6
	tHalloween_Activity_PackageCout[3305003][1][6]["Start"] = 56
	tHalloween_Activity_PackageCout[3305003][1][6]["End"] = 66
	--1%获得67到77的赠点
	tHalloween_Activity_PackageCout[3305003][1][7] = {}
	tHalloween_Activity_PackageCout[3305003][1][7]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][7]["ItemChance"] = 100
	tHalloween_Activity_PackageCout[3305003][1][7]["Item_1"] = 7
	tHalloween_Activity_PackageCout[3305003][1][7]["Start"] = 67
	tHalloween_Activity_PackageCout[3305003][1][7]["End"] = 77
	--1%获得78到88的赠点
	tHalloween_Activity_PackageCout[3305003][1][8] = {}
	tHalloween_Activity_PackageCout[3305003][1][8]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305003][1][8]["ItemChance"] = 100
	tHalloween_Activity_PackageCout[3305003][1][8]["Item_1"] = 8
	tHalloween_Activity_PackageCout[3305003][1][8]["Start"] = 78
	tHalloween_Activity_PackageCout[3305003][1][8]["End"] = 88
	--获得赠点
	tHalloween_Activity_PackageCout["MonoEMoney"] = {}
	tHalloween_Activity_PackageCout["MonoEMoney"]["LogId"] = 12000845
	tHalloween_Activity_PackageCout["MonoEMoney"]["RewardEMoneyMono"] = {}
	tHalloween_Activity_PackageCout["MonoEMoney"]["RewardEMoneyMono"]["Value"] = 1
	tHalloween_Activity_PackageCout["MonoEMoney"]["Talk"] = tHalloween_Activity_Text["PackageReward"][3305003]
	
	--万圣永夜外套随机包  万圣永夜套装  184325
	tHalloween_Activity_PackageCout[3305004] = {}
	tHalloween_Activity_PackageCout[3305004]["LogId"] = 12000845
	--外套随机
	tHalloween_Activity_PackageCout[3305004]["ItemNum"] = 1
	tHalloween_Activity_PackageCout[3305004][1] = {}
	tHalloween_Activity_PackageCout[3305004][1]["ItemChanceSum"] = 10000
	--40% 外套1天
	tHalloween_Activity_PackageCout[3305004][1][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305004][1][1]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305004][1][1]["ItemChance"] = 4000
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1]["Id"] = 3305004
	tHalloween_Activity_PackageCout[3305004][1][1]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["RewardItem"][1]["Id"] = 184325
	tHalloween_Activity_PackageCout[3305004][1][1]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	--40% 外套3天
	tHalloween_Activity_PackageCout[3305004][1][2] = {}
	tHalloween_Activity_PackageCout[3305004][1][2]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305004][1][2]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305004][1][2]["ItemChance"] = 4000
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1]["Id"] = 3305004
	tHalloween_Activity_PackageCout[3305004][1][2]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][2]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][2]["RewardItem"][1]["Id"] = 184325
	tHalloween_Activity_PackageCout[3305004][1][2]["RewardItem"][1]["Attr"] = "0 1 3 4320 1 0 0 1"
	--12% 外套7天
	tHalloween_Activity_PackageCout[3305004][1][3] = {}
	tHalloween_Activity_PackageCout[3305004][1][3]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305004][1][3]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305004][1][3]["ItemChance"] = 1200
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1]["Id"] = 3305004
	tHalloween_Activity_PackageCout[3305004][1][3]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][3]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][3]["RewardItem"][1]["Id"] = 184325
	tHalloween_Activity_PackageCout[3305004][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	--5% 外套15天
	tHalloween_Activity_PackageCout[3305004][1][4] = {}
	tHalloween_Activity_PackageCout[3305004][1][4]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305004][1][4]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305004][1][4]["ItemChance"] = 500
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1]["Id"] = 3305004
	tHalloween_Activity_PackageCout[3305004][1][4]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][4]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][4]["RewardItem"][1]["Id"] = 184325
	tHalloween_Activity_PackageCout[3305004][1][4]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	--2% 外套30天
	tHalloween_Activity_PackageCout[3305004][1][5] = {}
	tHalloween_Activity_PackageCout[3305004][1][5]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305004][1][5]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305004][1][5]["ItemChance"] = 200
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1]["Id"] = 3305004
	tHalloween_Activity_PackageCout[3305004][1][5]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][5]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][5]["RewardItem"][1]["Id"] = 184325
	tHalloween_Activity_PackageCout[3305004][1][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	--1% 外套90天
	tHalloween_Activity_PackageCout[3305004][1][6] = {}
	tHalloween_Activity_PackageCout[3305004][1][6]["LogId"] = 12000845
	tHalloween_Activity_PackageCout[3305004][1][6]["RandomItemChanceType"] = 2
	tHalloween_Activity_PackageCout[3305004][1][6]["ItemChance"] = 100
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][1]["DeleteItem"][1]["Id"] = 3305004
	tHalloween_Activity_PackageCout[3305004][1][6]["RewardItem"] = {}
	tHalloween_Activity_PackageCout[3305004][1][6]["RewardItem"][1] = {}
	tHalloween_Activity_PackageCout[3305004][1][6]["RewardItem"][1]["Id"] = 184325
	tHalloween_Activity_PackageCout[3305004][1][6]["RewardItem"][1]["Attr"] = "0 1 3 129600 1 0 0 1"
	tHalloween_Activity_PackageCout[3305004][1][6]["GlobalId"] = tHalloween_Activity_ConstData["nGlobalDynaId"]
	tHalloween_Activity_PackageCout[3305004][1][6]["Pos"] = 1
	tHalloween_Activity_PackageCout[3305004][1][6]["MaxData"] = 1
	tHalloween_Activity_PackageCout[3305004][1][6]["FullIndex"] = 5
	
	
--Log配置表
local tHalloween_Activity_Log = {}
	tHalloween_Activity_Log["LogId"] = 12000845
	tHalloween_Activity_Log["GetPumpkin"] = "0,0,0,0,12000845,1[1],3304785,1"
	tHalloween_Activity_Log["GetCandy"] = "0,0,0,0,12000845,1[1],3304786,1"
	tHalloween_Activity_Log["GetGeneralCoin"] = "0,0,3304785,%d,12000845,2,3301454,%d"
	tHalloween_Activity_Log["ExchangePumpkin"] = "0,0,3304786,%d,12000845,1[1],3304785,%d"

----------------------------------逻辑部分---------------------------------------------
--和小灵狐对话，换万圣南瓜
function Halloween_Activity_ExchangeCandy(nNpcId)
	--判断是否在活动期内
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	--判断符合等级  对白时等级已经判断一次了
	if not Halloween_Activity_IsAchieveLevel() then
		return
	end	
	
	--判断背包是否有糖果
	if not Item_ChkItem(tHalloween_Activity_ConstData["ItemId"][3304786]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--判断背包是否有空位
	if not User_CheckLeftSpace(tHalloween_Activity_ConstData["nChkSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--获取玩家背包中的糖果数量
	local nNum = Get_CountItemType(tHalloween_Activity_ConstData["ItemId"][3304786],0)
	if Item_ChkMulItem(tHalloween_Activity_ConstData["ItemId"][3304786],tHalloween_Activity_ConstData["ItemId"][3304786],nNum) then
		if Item_DelMulItem(tHalloween_Activity_ConstData["ItemId"][3304786],tHalloween_Activity_ConstData["ItemId"][3304786],nNum) then
			--给万圣南瓜
			Item_AddItem(tHalloween_Activity_ConstData["ItemId"][3304785],0,nNum)
			User_TalkChannel2005(string.format(tHalloween_Activity_Text["System"]["GetPumpkin"],nNum))
			
			--打log
			local sLog = string.format(tHalloween_Activity_Log["ExchangePumpkin"],nNum,nNum)
			Sys_SaveActionFestivalLog(sLog)
			
			LinkNpcGossipFunc_New(nNpcId,"2-1")
		end
	end
end

--击杀怪物掉落万圣南瓜和万圣糖果
function Halloween_Activity_MonsterKillDrop()
	--判断是否在活动期内
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		return
	end
	
	--判断符合等级
	if not Halloween_Activity_IsAchieveLevel() then
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(tHalloween_Activity_ConstData["nChkSpace"]) then
		return
	end
	
	--判断隔天 清零
	local nPumpkinEvent = tHalloween_Activity_Stc["DropPumpkin"]["EventType"]
	local nPumpkinData = tHalloween_Activity_Stc["DropPumpkin"]["DataType"]
	local nCandyEvent = tHalloween_Activity_Stc["DropCandy"]["EventType"]
	local nCandyData = tHalloween_Activity_Stc["DropCandy"]["DataType"]
	if Task_StcInterval(nPumpkinEvent,nPumpkinData,1,4) or Task_StcInterval(nCandyEvent,nCandyData,1,4) then
		Halloween_Activity_ResetStc()
	end
	
	--判断是否掉落万圣南瓜
	if Halloween_Activity_IsDropItem(nPumpkinEvent,nPumpkinData,tHalloween_Activity_Stc["DropPumpkin"]["MaxNum"],tHalloween_Activity_Text["ItemName"][3304785]) then
		--3%概率
		if Sys_Random(3,100) then
			--置掩码,打log
			Task_AddStatistic(nPumpkinEvent,nPumpkinData,tHalloween_Activity_Stc["DropPumpkin"]["AddNum"],1)
			Task_SetStcTimestamp(nPumpkinEvent,nPumpkinData,0)
			--给物品
			RewardTemplate_UseItemAndMsg(tHalloween_Activity_PackageCout[3304785])
		end
	end
	
	--判断是否掉落万圣糖果
	if Halloween_Activity_IsDropItem(nCandyEvent,nCandyData,tHalloween_Activity_Stc["DropCandy"]["MaxNum"],tHalloween_Activity_Text["ItemName"][3304786]) then
		--1%概率
		if Sys_Random(1,100) then
			--置掩码,打log
			Task_AddStatistic(nCandyEvent,nCandyData,tHalloween_Activity_Stc["DropCandy"]["AddNum"],1)
			Task_SetStcTimestamp(nCandyEvent,nCandyData,0)
			--给物品
			RewardTemplate_UseItemAndMsg(tHalloween_Activity_PackageCout[3304786])
		end
	end
	
end

--使用糖果，自动寻路找到小灵狐
function Halloween_Activity_FindPumpkinBulb(nItemId)
	--检查物品是否存在
	if not Item_ChkItem(nItemId) then
		return
	end
	--如果过期了。则丢弃
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		--获取背包中的数量
		local nCandyNum = Get_CountItemType(nItemId,0)
		if nCandyNum > 0 then 
			if Item_DelMulItem(nItemId,nItemId,nCandyNum) then
				--提示丢弃
				User_TalkChannel2005(tHalloween_Activity_Text["System"]["CandyTimeOut"])
			end
		end
		return
	end
	
	--随机找到一个小灵狐
	local flat,tNum = Probabil_RandomAward(tHalloween_Activity_GotoSomeWhere["PumpkinBulb"],1)
	local nIndex = tNum[1]["tAward"][1]["Item_1"]
	--非空
	if nIndex ~= nil and nIndex ~= null then
		--自动寻路
		NpcPosition_PathFind(nIndex)
	end
end
--使用水晶南瓜，自动寻路找到小魔女
function Halloween_Activity_FindPumpkinSpirit(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	--物品过期，则自动换成年运通宝
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		
		if not User_CheckLeftSpace(tHalloween_Activity_ConstData["nChkSpace"]) then
			local sText = string.format(tHalloween_Activity_Text["System"]["ExChangeCoin"],tHalloween_Activity_ConstData["nChkSpace"])
			User_TalkChannel2005(sText)
			return
		end
		
		--获取背包物品数量
		local nNum = Get_CountItemType(nItemId,0)
		if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
			--兑换一个年运通宝
			Item_AddItem(tHalloween_Activity_ConstData["ItemId"][3301454],0,nNum)
			--提示+log
			User_TalkChannel2005(tHalloween_Activity_Text["System"]["PumpkinTimeOut"])
			local sLog = string.format(tHalloween_Activity_Log["GetGeneralCoin"],nNum,nNum)
			Sys_SaveActionFestivalLog(sLog)
		end
		
		return
	end
	--自动寻路
	NpcPosition_PathFind(tHalloween_Activity_GotoSomeWhere["PumpkinSpirit"]["nNpcId"])
end

--打开兑换商店
function Halloween_Activity_OpenExchangeStore(nNpcId)
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	User_OpenExchangeShop(nNpcId)
end

--每天19点，定时刷出南瓜BOSS
function Halloween_Activity_BossMonsterBirth()
	local nMapId = tHalloween_Activity_MonsterPosition[1022]["nMapId"]
	local nPosX = tHalloween_Activity_MonsterPosition[1022]["nPosX"]
	local nPosY = tHalloween_Activity_MonsterPosition[1022]["nPosY"]
	local nGenId = tHalloween_Activity_MonsterPosition[1022]["nGenId"]
	local nMonsterId = tHalloween_Activity_MonsterPosition[1022]["nMonsterId"]

	--是否在活动期
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		return
	end
	--判断BOSS是否还存在
	local nNum = Get_SysTempData(1,tHalloween_Activity_ConstData["MapId"],tHalloween_Activity_ConstData["MonsterId"])
	if nNum == 0 then
		--创建BOSS怪物
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
	--全服邀请
	local nInviteMapId = tHalloween_Activity_ConstData["Invite_MapId"]
	local nInvite_SendId = tHalloween_Activity_ConstData["InviteSendId"]
	local nInvite_SendOkId = tHalloween_Activity_ConstData["InviteSendOkId"]
	local nActive_InviteId = tHalloween_Activity_ConstData["Activity_InviteId"]
	local nInvite_CountDown = tHalloween_Activity_ConstData["InviteCountDown"]
	Sys_DelInvite(nActive_InviteId)
	if Sys_InviteFilter(nActive_InviteId,tHalloween_Activity_ConstData["Activity_Invite_Lev"]) then
		--发出邀请传送
		Sys_InviteTrans(nInviteMapId,tHalloween_Activity_ConstData["Invite_Pos"],nInvite_SendId,nInvite_SendOkId,nActive_InviteId,nInvite_CountDown)
	end
end

--BOSS死亡掉落物品
function Halloween_Activity_BossDropItem()
	Monster_Death(tHalloween_Activity_ConstData["MonsterId"],tHalloween_Activity_ConstData["MapId"])
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		return
	end
	local nMapId = tHalloween_Activity_MonsterPosition[1022]["nMapId"]
	--获取怪物死亡坐标
	local nPosX = Get_MonsterPosX() - 5
	local nPosY = Get_MonsterPosY() - 5
	local nCellx = tHalloween_Activity_ConstData["Cellx"]
	local nCelly = tHalloween_Activity_ConstData["Celly"]
	local nNum = tHalloween_Activity_ConstData["BossDropNum"]
	local nExistTime = tHalloween_Activity_ConstData["ItemExistTime"]
	
	Map_DropMultiItems(nMapId,tHalloween_Activity_ConstData["ItemId"][3304785],nPosX,nPosY,nCellx,nCelly,nNum,nExistTime)
end

--没有击杀的话，就删除BOSS
function Halloween_Activity_DelBossMonster()
	--判断BOSS是否还存在
	local nNum = Get_SysTempData(1,tHalloween_Activity_ConstData["MapId"],tHalloween_Activity_ConstData["MonsterId"])

	if nNum ~= 0 then
		Monster_Death(tHalloween_Activity_ConstData["MonsterId"],tHalloween_Activity_ConstData["MapId"])
		Monster_DelMonster(tHalloween_Activity_ConstData["MapId"],tHalloween_Activity_ConstData["MonsterId"])
		
		Sys_SystemBroadcastToOS(tHalloween_Activity_Text["System"]["BossGo"])
	end
end


--打开外套礼包
function Halloween_Activity_OpenOverCoatPackage(nItemId)
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		if Item_ChkItem(nItemId) then
			if Item_DelItem(nItemId) then
				--提示丢弃
				User_TalkChannel2005(tHalloween_Activity_Text["System"]["PackageTimeOut"])
			end
		end
		return
	end
	
	local bCheckSpace,nGetRewardSpace = RewardTemplate_ChkRandomSpace(tHalloween_Activity_PackageCout[nItemId][1],1)
	
	--判断空间
	if not bCheckSpace then
		local sText = string.format(tHalloween_Activity_Text["System"]["BagFull"],nGetRewardSpace)
		User_TalkChannel2005(sText,nUserId)
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tHalloween_Activity_PackageCout[nItemId],1)
	end
end
--打开一般礼包
function Halloween_Activity_OpenGeneralPackage(nItemId)
	--判断是否存在物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		if Item_DelItem(nItemId) then
			--提示丢弃
			User_TalkChannel2005(tHalloween_Activity_Text["System"]["PackageTimeOut"])
		end
		return
	end
	
	--计算背包空间
	local nGetRewardSpace = RewardTemplate_GetRewardSpace(tHalloween_Activity_PackageCout[nItemId])
	local nDelRewardSpace = RewardTemplate_GetDelSpace(tHalloween_Activity_PackageCout[nItemId])
	local nNeedSpace = nGetRewardSpace - nDelRewardSpace
	
	if not RewardTemplate_CheckSpace(tHalloween_Activity_PackageCout[nItemId],nUserId) then
		local sText = string.format(tHalloween_Activity_Text["System"]["BagFull"],nNeedSpace)
		User_TalkChannel2005(sText,nUserId)
		return
	end
	RewardTemplate_UseItem(tHalloween_Activity_PackageCout[nItemId])
	
end
--打开赠点礼包
function Halloween_Activity_OpenCpBPackage(nItemId)
	--判断是否存在物品
	if not Item_ChkItem(nItemId) then
		return
	end
	--判断是否在活动时间内
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		if Item_DelItem(nItemId) then
			--提示丢弃
			User_TalkChannel2005(tHalloween_Activity_Text["System"]["PackageTimeOut"])
		end
		return
	end

	--赠点上限判断
	if Get_UserMonoEMoney() + tHalloween_Activity_ConstData["MostMonoEMoneyGift"] > G_User_MaxEmoneyMono then
		User_TalkChannel2005(tHalloween_Activity_Text["System"]["CpsFull"])
		return
	end
	
	--赠点概率
	local flat,tNum = Probabil_RandomAward(tHalloween_Activity_PackageCout[nItemId],1)
	local nIndex = tNum[1]["tAward"][1]["Item_1"]
	--非空
	if nIndex ~= nil and nIndex ~= null then
		--获取赠点奖励区间
		local nStart = tHalloween_Activity_PackageCout[nItemId][1][nIndex]["Start"]
		local nEnd = tHalloween_Activity_PackageCout[nItemId][1][nIndex]["End"]
		--随机概率
		local nCp = math.random(nStart,nEnd)
		tHalloween_Activity_PackageCout["MonoEMoney"]["RewardEMoneyMono"]["Value"] = nCp
		
		--先删除后给赠点
		if Item_DelItem(nItemId) then
			--发放赠点+提示
			tHalloween_Activity_PackageCout["MonoEMoney"]["Talk"] = string.format(tHalloween_Activity_Text["PackageReward"][nItemId],nCp)
			RewardTemplate_Reward(tHalloween_Activity_PackageCout["MonoEMoney"])
		end
	end
end
---------------------------------逻辑封装、抽取 函数部分-------------------------------
--重置掉落掩码
function Halloween_Activity_ResetStc()
	Task_SetStatistic(tHalloween_Activity_Stc["DropPumpkin"]["EventType"],tHalloween_Activity_Stc["DropPumpkin"]["DataType"],0,1)
	Task_SetStcTimestamp(tHalloween_Activity_Stc["DropPumpkin"]["EventType"],tHalloween_Activity_Stc["DropPumpkin"]["DataType"],0)
	Task_SetStatistic(tHalloween_Activity_Stc["DropCandy"]["EventType"],tHalloween_Activity_Stc["DropCandy"]["DataType"],0,1)
	Task_SetStcTimestamp(tHalloween_Activity_Stc["DropCandy"]["EventType"],tHalloween_Activity_Stc["DropCandy"]["DataType"],0)
end

--判断是否掉落物品
function Halloween_Activity_IsDropItem(nEvent,nData,nMaxNum,sItemName)
	--判断掉落次数（已提醒过则直接 false）
	if Task_ChkStcValue(nEvent,nData,">=",nMaxNum) then
		--判断是否上限提示
		if Task_ChkStcValue(nEvent,nData,">=",nMaxNum+1) then
			return false
		end
		--掩码+1表示已提醒
		Task_AddStatistic(nEvent,nData,1,1)
		Task_SetStcTimestamp(nEvent,nData,0)
		--弹框提醒
		sText = string.format(tHalloween_Activity_Text["System"]["ItemDrop"],nMaxNum,sItemName)
		Sys_MsgBox(sText)
		return false
	else
		return true
	end
end

--判断玩家等级是否符合
function Halloween_Activity_IsAchieveLevel()
	local nMinLevel = tHalloween_Activity_ConstData["MinLevel"]
	local nMinMeto = tHalloween_Activity_ConstData["MinMeto"]
	
	if not User_JudgeLevelAndMetempsychosis(nMinLevel,nMinMeto) then
		return false
	else
		return true
	end
end
----------------------------------NPC部分---------------------------------------------

------小魔女艾琳-------
tNpcFace[5753] = 185
tNpcGossip[21124]= tNpcGossip[21124] or DefaultNpc:new{}
tNpcGossip[21124]["OptionHidden"] = 1
--NPC对白部分 活动前
tNpcGossip[21124]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[21124]["Text111"] = tHalloween_Activity_Text[21124]["Text111"]
tNpcGossip[21124]["Text112"] = tHalloween_Activity_Text[21124]["Text112"]
tNpcGossip[21124]["Text113"] = tHalloween_Activity_Text[21124]["Text113"]
tNpcGossip[21124]["Text114"] = tHalloween_Activity_Text[21124]["Text114"]
tNpcGossip[21124]["Text115"] = tHalloween_Activity_Text[21124]["Text115"]
tNpcGossip[21124]["Text116"] = tHalloween_Activity_Text[21124]["Text116"]
tNpcGossip[21124]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tHalloween_Activity_ConstData["BeforeActiveTime"])
end
tNpcGossip[21124]["tOption1-1"] = {1}
tNpcGossip[21124]["Option1"] = tHalloween_Activity_Text[21124]["Option1"]

--活动中
tNpcGossip[21124]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[21124]["Text121"] = tHalloween_Activity_Text[21124]["Text121"]
tNpcGossip[21124]["Text122"] = tHalloween_Activity_Text[21124]["Text122"]
tNpcGossip[21124]["Text123"] = tHalloween_Activity_Text[21124]["Text123"]
tNpcGossip[21124]["Text124"] = tHalloween_Activity_Text[21124]["Text124"]
tNpcGossip[21124]["Text125"] = tHalloween_Activity_Text[21124]["Text125"]
tNpcGossip[21124]["Text126"] = tHalloween_Activity_Text[21124]["Text126"]
tNpcGossip[21124]["Text127"] = tHalloween_Activity_Text[21124]["Text127"]
tNpcGossip[21124]["Text128"] = tHalloween_Activity_Text[21124]["Text128"]
tNpcGossip[21124]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		return false
	end
	--判断等级
	if Halloween_Activity_IsAchieveLevel() then
		--对白置空
		tNpcGossip[21124]["Text127"] = ""
	else
		tNpcGossip[21124]["Text127"] = tHalloween_Activity_Text[21124]["Text127"]
	end
	return true
end
tNpcGossip[21124]["tOption1-2"] = {2,3,4}
tNpcGossip[21124]["Option2"] = tHalloween_Activity_Text[21124]["Option2"]
tNpcGossip[21124]["OptionFunc2"] = "Halloween_Activity_OpenExchangeStore</N>21124"
tNpcGossip[21124]["OptionChkFunc2"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end
tNpcGossip[21124]["Option3"] = tHalloween_Activity_Text[21124]["Option3"]
tNpcGossip[21124]["OptionChkFunc3"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end 
tNpcGossip[21124]["Option4"] = tHalloween_Activity_Text[21124]["Option4"]
tNpcGossip[21124]["OptionChkFunc4"] = function ()
	return not Halloween_Activity_IsAchieveLevel()
end 


--活动后
tNpcGossip[21124]["Text1-3"] = {131,132,133}
tNpcGossip[21124]["Text131"] = tHalloween_Activity_Text[21124]["Text131"]
tNpcGossip[21124]["Text132"] = tHalloween_Activity_Text[21124]["Text132"]
tNpcGossip[21124]["Text133"] = tHalloween_Activity_Text[21124]["Text133"]
tNpcGossip[21124]["ChkFunc1-3"] = function ()
	return not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"])
end
tNpcGossip[21124]["tOption1-3"] = {5}
tNpcGossip[21124]["Option5"] = tHalloween_Activity_Text[21124]["Option5"]

---------------------小令狐普鲁托--------------------
tNpcFace[4992] = 832
tNpcGossip[21125]= tNpcGossip[21125] or DefaultNpc:new{}
tNpcGossip[21125]["OptionHidden"] = 1
--NPC对白部分 活动前
tNpcGossip[21125]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21125]["Text111"] = tHalloween_Activity_Text[21125]["Text111"]
tNpcGossip[21125]["Text112"] = tHalloween_Activity_Text[21125]["Text112"]
tNpcGossip[21125]["Text113"] = tHalloween_Activity_Text[21125]["Text113"]
tNpcGossip[21125]["Text114"] = tHalloween_Activity_Text[21125]["Text114"]
tNpcGossip[21125]["Text115"] = tHalloween_Activity_Text[21125]["Text115"]
tNpcGossip[21125]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tHalloween_Activity_ConstData["BeforeActiveTime"])
end
tNpcGossip[21125]["tOption1-1"] = {1}
tNpcGossip[21125]["Option1"] = tHalloween_Activity_Text[21125]["Option1"]

--活动中
tNpcGossip[21125]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[21125]["Text121"] = tHalloween_Activity_Text[21125]["Text121"]
tNpcGossip[21125]["Text122"] = tHalloween_Activity_Text[21125]["Text122"]
tNpcGossip[21125]["Text123"] = tHalloween_Activity_Text[21125]["Text123"]
tNpcGossip[21125]["Text124"] = tHalloween_Activity_Text[21125]["Text124"]
tNpcGossip[21125]["Text125"] = tHalloween_Activity_Text[21125]["Text125"]
tNpcGossip[21125]["Text126"] = tHalloween_Activity_Text[21125]["Text126"]
tNpcGossip[21125]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		return false
	end
	--判断等级
	if Halloween_Activity_IsAchieveLevel() then
		--对白置空
		tNpcGossip[21125]["Text125"] = ""
	else
		tNpcGossip[21125]["Text125"] = tHalloween_Activity_Text[21125]["Text125"]
	end
	return true
end
tNpcGossip[21125]["tOption1-2"] = {2,3,4}
tNpcGossip[21125]["Option2"] = tHalloween_Activity_Text[21125]["Option2"]
tNpcGossip[21125]["OptionFunc2"] = "Halloween_Activity_ExchangeCandy</N>21125"
tNpcGossip[21125]["OptionChkFunc2"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end 
tNpcGossip[21125]["Option3"] = tHalloween_Activity_Text[21125]["Option3"]
tNpcGossip[21125]["OptionChkFunc3"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end 
tNpcGossip[21125]["Option4"] = tHalloween_Activity_Text[21125]["Option4"]
tNpcGossip[21125]["OptionChkFunc4"] = function ()
	return not Halloween_Activity_IsAchieveLevel()
end 

--活动后
tNpcGossip[21125]["Text1-3"] = {131,132}
tNpcGossip[21125]["Text131"] = tHalloween_Activity_Text[21125]["Text131"]
tNpcGossip[21125]["Text132"] = tHalloween_Activity_Text[21125]["Text132"]
tNpcGossip[21125]["ChkFunc1-3"] = function ()
	return not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"])
end
tNpcGossip[21125]["tOption1-3"] = {5}
tNpcGossip[21125]["Option5"] = tHalloween_Activity_Text[21125]["Option5"]

--接option2 成功兑换
tNpcGossip[21125]["Text2-1"] = {211}
tNpcGossip[21125]["Text211"] = tHalloween_Activity_Text[21125]["Text211"]
tNpcGossip[21125]["tOption2-1"] = {6}
tNpcGossip[21125]["Option6"] = tHalloween_Activity_Text[21125]["Option6"]
--兑换失败
tNpcGossip[21125]["Text2-2"] = {221}
tNpcGossip[21125]["Text221"] = tHalloween_Activity_Text[21125]["Text221"]
tNpcGossip[21125]["tOption2-2"] = {7}
tNpcGossip[21125]["Option7"] = tHalloween_Activity_Text[21125]["Option7"]
--背包已满
tNpcGossip[21125]["Text2-3"] = {231}
tNpcGossip[21125]["Text231"] = tHalloween_Activity_Text[21125]["Text231"]
tNpcGossip[21125]["tOption2-3"] = {8}
tNpcGossip[21125]["Option8"] = tHalloween_Activity_Text[21125]["Option8"]


---------------------小令狐亚可--------------------
tNpcFace[4993] = 831
tNpcGossip[21126]= tNpcGossip[21126] or DefaultNpc:new{}
tNpcGossip[21126]["OptionHidden"] = 1
--NPC对白部分 活动前
tNpcGossip[21126]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21126]["Text111"] = tHalloween_Activity_Text[21126]["Text111"]
tNpcGossip[21126]["Text112"] = tHalloween_Activity_Text[21126]["Text112"]
tNpcGossip[21126]["Text113"] = tHalloween_Activity_Text[21126]["Text113"]
tNpcGossip[21126]["Text114"] = tHalloween_Activity_Text[21126]["Text114"]
tNpcGossip[21126]["Text115"] = tHalloween_Activity_Text[21126]["Text115"]
tNpcGossip[21126]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tHalloween_Activity_ConstData["BeforeActiveTime"])
end
tNpcGossip[21126]["tOption1-1"] = {1}
tNpcGossip[21126]["Option1"] = tHalloween_Activity_Text[21126]["Option1"]

--活动中
tNpcGossip[21126]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[21126]["Text121"] = tHalloween_Activity_Text[21126]["Text121"]
tNpcGossip[21126]["Text122"] = tHalloween_Activity_Text[21126]["Text122"]
tNpcGossip[21126]["Text123"] = tHalloween_Activity_Text[21126]["Text123"]
tNpcGossip[21126]["Text124"] = tHalloween_Activity_Text[21126]["Text124"]
tNpcGossip[21126]["Text125"] = tHalloween_Activity_Text[21126]["Text125"]
tNpcGossip[21126]["Text126"] = tHalloween_Activity_Text[21126]["Text126"]
tNpcGossip[21126]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		return false
	end
	--判断等级
	if Halloween_Activity_IsAchieveLevel() then
		--对白置空
		tNpcGossip[21126]["Text125"] = ""
	else
		tNpcGossip[21126]["Text125"] = tHalloween_Activity_Text[21126]["Text125"]
	end
	return true
end
tNpcGossip[21126]["tOption1-2"] = {2,3,4}
tNpcGossip[21126]["Option2"] = tHalloween_Activity_Text[21126]["Option2"]
tNpcGossip[21126]["OptionFunc2"] = "Halloween_Activity_ExchangeCandy</N>21126"
tNpcGossip[21126]["OptionChkFunc2"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end 
tNpcGossip[21126]["Option3"] = tHalloween_Activity_Text[21126]["Option3"]
tNpcGossip[21126]["OptionChkFunc3"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end 
tNpcGossip[21126]["Option4"] = tHalloween_Activity_Text[21126]["Option4"]
tNpcGossip[21126]["OptionChkFunc4"] = function ()
	return not Halloween_Activity_IsAchieveLevel()
end 

--活动后
tNpcGossip[21126]["Text1-3"] = {131,132}
tNpcGossip[21126]["Text131"] = tHalloween_Activity_Text[21126]["Text131"]
tNpcGossip[21126]["Text132"] = tHalloween_Activity_Text[21126]["Text132"]
tNpcGossip[21126]["ChkFunc1-3"] = function ()
	return not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"])
end
tNpcGossip[21126]["tOption1-3"] = {5}
tNpcGossip[21126]["Option5"] = tHalloween_Activity_Text[21126]["Option5"]

--接option2 成功兑换
tNpcGossip[21126]["Text2-1"] = {211}
tNpcGossip[21126]["Text211"] = tHalloween_Activity_Text[21126]["Text211"]
tNpcGossip[21126]["tOption2-1"] = {6}
tNpcGossip[21126]["Option6"] = tHalloween_Activity_Text[21126]["Option6"]
--兑换失败
tNpcGossip[21126]["Text2-2"] = {221}
tNpcGossip[21126]["Text221"] = tHalloween_Activity_Text[21126]["Text221"]
tNpcGossip[21126]["tOption2-2"] = {7}
tNpcGossip[21126]["Option7"] = tHalloween_Activity_Text[21126]["Option7"]
--背包已满
tNpcGossip[21126]["Text2-3"] = {231}
tNpcGossip[21126]["Text231"] = tHalloween_Activity_Text[21126]["Text231"]
tNpcGossip[21126]["tOption2-3"] = {8}
tNpcGossip[21126]["Option8"] = tHalloween_Activity_Text[21126]["Option8"]

---------------------小令狐米娅----------------------------
tNpcFace[4994] = 831
tNpcGossip[21127]= tNpcGossip[21127] or DefaultNpc:new{}
tNpcGossip[21127]["OptionHidden"] = 1
--NPC对白部分 活动前
tNpcGossip[21127]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[21127]["Text111"] = tHalloween_Activity_Text[21127]["Text111"]
tNpcGossip[21127]["Text112"] = tHalloween_Activity_Text[21127]["Text112"]
tNpcGossip[21127]["Text113"] = tHalloween_Activity_Text[21127]["Text113"]
tNpcGossip[21127]["Text114"] = tHalloween_Activity_Text[21127]["Text114"]
tNpcGossip[21127]["Text115"] = tHalloween_Activity_Text[21127]["Text115"]
tNpcGossip[21127]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tHalloween_Activity_ConstData["BeforeActiveTime"])
end
tNpcGossip[21127]["tOption1-1"] = {1}
tNpcGossip[21127]["Option1"] = tHalloween_Activity_Text[21127]["Option1"]

--活动中
tNpcGossip[21127]["Text1-2"] = {121,122,123,124,125,126}
tNpcGossip[21127]["Text121"] = tHalloween_Activity_Text[21127]["Text121"]
tNpcGossip[21127]["Text122"] = tHalloween_Activity_Text[21127]["Text122"]
tNpcGossip[21127]["Text123"] = tHalloween_Activity_Text[21127]["Text123"]
tNpcGossip[21127]["Text124"] = tHalloween_Activity_Text[21127]["Text124"]
tNpcGossip[21127]["Text125"] = tHalloween_Activity_Text[21127]["Text125"]
tNpcGossip[21127]["Text126"] = tHalloween_Activity_Text[21127]["Text126"]
tNpcGossip[21127]["ChkFunc1-2"] = function ()
	if not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"]) then
		return false
	end
	--判断等级
	if Halloween_Activity_IsAchieveLevel() then
		--对白置空
		tNpcGossip[21127]["Text125"] = ""
	else
		tNpcGossip[21127]["Text125"] = tHalloween_Activity_Text[21127]["Text125"]
	end
	return true
end
tNpcGossip[21127]["tOption1-2"] = {2,3,4}
tNpcGossip[21127]["Option2"] = tHalloween_Activity_Text[21127]["Option2"]
tNpcGossip[21127]["OptionFunc2"] = "Halloween_Activity_ExchangeCandy</N>21127"
tNpcGossip[21127]["OptionChkFunc2"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end 
tNpcGossip[21127]["Option3"] = tHalloween_Activity_Text[21127]["Option3"]
tNpcGossip[21127]["OptionChkFunc3"] = function ()
	return Halloween_Activity_IsAchieveLevel()
end 
tNpcGossip[21127]["Option4"] = tHalloween_Activity_Text[21127]["Option4"]
tNpcGossip[21127]["OptionChkFunc4"] = function ()
	return not Halloween_Activity_IsAchieveLevel()
end 

--活动后
tNpcGossip[21127]["Text1-3"] = {131,132}
tNpcGossip[21127]["Text131"] = tHalloween_Activity_Text[21127]["Text131"]
tNpcGossip[21127]["Text132"] = tHalloween_Activity_Text[21127]["Text132"]
tNpcGossip[21127]["ChkFunc1-3"] = function ()
	return not Sys_ChkFullTime(tHalloween_Activity_ConstData["ActiveTime"])
end
tNpcGossip[21127]["tOption1-3"] = {5}
tNpcGossip[21127]["Option5"] = tHalloween_Activity_Text[21127]["Option5"]

--接option2 成功兑换
tNpcGossip[21127]["Text2-1"] = {211}
tNpcGossip[21127]["Text211"] = tHalloween_Activity_Text[21127]["Text211"]
tNpcGossip[21127]["tOption2-1"] = {6}
tNpcGossip[21127]["Option6"] = tHalloween_Activity_Text[21127]["Option6"]
--兑换失败
tNpcGossip[21127]["Text2-2"] = {221}
tNpcGossip[21127]["Text221"] = tHalloween_Activity_Text[21127]["Text221"]
tNpcGossip[21127]["tOption2-2"] = {7}
tNpcGossip[21127]["Option7"] = tHalloween_Activity_Text[21127]["Option7"]
--背包已满
tNpcGossip[21127]["Text2-3"] = {231}
tNpcGossip[21127]["Text231"] = tHalloween_Activity_Text[21127]["Text231"]
tNpcGossip[21127]["tOption2-3"] = {8}
tNpcGossip[21127]["Option8"] = tHalloween_Activity_Text[21127]["Option8"]


---------------------------------物品部分---------------------------------------------
--------物品无对白模板
--使用水晶南瓜
tItem[3304785] = tItem[3304785] or {}
tItem[3304785]["Function"] = function(nItemId,sItemName)
	Halloween_Activity_FindPumpkinSpirit(nItemId)
end
--使用万圣糖果
tItem[3304786] = tItem[3304786] or {}
tItem[3304786]["Function"] = function(nItemId,sItemName)
	Halloween_Activity_FindPumpkinBulb(nItemId)
end
--使用普通礼包
tItem[3305001] = tItem[3305001] or {}
tItem[3305002] = tItem[3305001]
tItem[3305001]["Function"] = function(nItemId,sItemName)
	Halloween_Activity_OpenGeneralPackage(nItemId)
end
--使用赠点礼包
tItem[3305003] = tItem[3305003] or {}
tItem[3305003]["Function"] = function(nItemId,sItemName)
	Halloween_Activity_OpenCpBPackage(nItemId)
end
--使用外套随机包
tItem[3305004] = tItem[3305004] or {}
tItem[3305004]["Function"] = function(nItemId,sItemName)
	Halloween_Activity_OpenOverCoatPackage(nItemId)
end

--使用外套随机包
tItem[3310780] = tItem[3310780] or {}
tItem[3310780]["Function"] = function(nItemId,sItemName)
		--判断是否存在物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	RewardTemplate_UseItem(tHalloween_Activity_PackageCout[nItemId])
end
---------------------------------怪物部分---------------------------------------------
-- local tHalloween_Activity_Monster = {}
-- tHalloween_Activity_Monster["ActivityTime"] = tHalloween_Activity_ConstData["ActiveTime"]
-- tHalloween_Activity_Monster["Function"] = Halloween_Activity_MonsterKillDrop
-- tHalloween_Activity_Monster["Area"] = {}
-- table.insert(tMonsterDrop_AreaLoad,tHalloween_Activity_Monster)

-- tMonster[1022] = tMonster[1022] or {}
-- tMonster[1022]["tFunction"] = tMonster[1022]["tFunction"] or {}
-- table.insert(tMonster[1022]["tFunction"],Halloween_Activity_BossDropItem)

--------------------------------203W自检表--------------------------------------------
--新版203W。服务器代码没整进去，暂时注释
-- local tHalloween_Activity_System = {}
-- tHalloween_Activity_System["Type"] = 2
-- tHalloween_Activity_System["TimeType"] = 4
-- tHalloween_Activity_System["Time"] = "19:00 19:00"
-- tHalloween_Activity_System["Func"] = Halloween_Activity_BossMonsterBirth
-- table.insert(tSystemTime_InitialData,tHalloween_Activity_System)

--每天20点检查BOSS是否还在，在就删除
-- local tHalloween_Activity_DelBoss = {}
-- tHalloween_Activity_DelBoss["Type"] = 2
-- tHalloween_Activity_DelBoss["TimeType"] = 4
-- tHalloween_Activity_DelBoss["Time"] = "20:00 20:00"
-- tHalloween_Activity_DelBoss["Func"] = Halloween_Activity_DelBossMonster
-- table.insert(tSystemTime_InitialData,tHalloween_Activity_DelBoss)


--旧版203W。 小时/分钟（每天的19点00分执行）
-- tOntimerMin_HM[1900] = tOntimerMin_HM[1900] or {}
-- table.insert(tOntimerMin_HM[1900],Halloween_Activity_BossMonsterBirth)
--每天20点检查BOSS是否还在，在就删除
-- tOntimerMin_HM[2000] = tOntimerMin_HM[2000] or {}
-- table.insert(tOntimerMin_HM[2000],Halloween_Activity_DelBossMonster)
