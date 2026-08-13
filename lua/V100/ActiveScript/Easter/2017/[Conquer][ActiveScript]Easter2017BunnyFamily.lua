------------------------------------------------------------------------------------
--Name:			170206[英文征服][活动脚本]2017复活节小活动制作
--Purpose:		兔兔合家送彩蛋
--Creator:		陈琳
--Created:		2017/02/06
------------------------------------------------------------------------------------
-- 命名规范
-- BunnyFamily_

-- Luaid 40454

-- Logid 12000642

-- Npcid
---- 20339 兔爸爸 4493
---- 20340 兔妈妈 4494
---- 20341 兔大姐 4495
---- 20342 兔二姐 4496
---- 20343 兔小弟 4497
---- 20344 彩蛋商店 4498
---- 20345 礼炮（气氛NPC） 4499
---- 20346 礼炮（气氛NPC） 4499
---- 20347 礼炮（气氛NPC） 4499
---- 20348 礼炮（气氛NPC） 4499

-- Itemid
---- 3302214 兔兔彩蛋
---- 3302215 小兔币
---- 3302216 复活节天石包
---- 3302217 小兔变身糖果包
---- 3302218 小兔变身糖
---- 3302219 圣灵玉兔外套碎片
---- 3302220 复活节派对邀请函
---- 3302405 新春福气礼包
---- 3302406 微光天星礼盒
---- 3302407 明亮天星礼盒
---- 3301223 +1赤炼石福运包（外部）
---- 3301224 +2赤炼石福运包（外部）
---- 200407  圣灵玉兔外套（外部）
---- 3301454 五铢钱FortuneCoin（外部）
---- 3307310 小兔变身糖彩虹糖
---- 3307311 1%神佑萌萌兔套装礼盒
---- 3307312 1%神佑小精灵套装礼盒
---- 3307313 烤火鸡
---- 3307314 胡萝卜蛋糕
---- 3307315 2018惊喜财运宝箱

-- 掩码说明
---- stc(154,85) 兔爸爸的彩蛋
---- stc(154,86) 兔妈妈的彩蛋
---- stc(154,87) 兔大姐的彩蛋
---- stc(154,88) 兔二姐的彩蛋
---- stc(154,89) 兔小弟的彩蛋
---- stc(154,90) 打怪掉的彩蛋
---- stc(154,91) 一天出一次的提示
---- stc(154,92) 背包信
---- stc(172,59) 记录蛋糕任务完成阶段：0未接任务，1已接任务，2完成任务，3领取奖励
---- stc(172,60) 记录蛋糕任务进行情况：兔大姐，兔二姐，兔小弟
---- stc(172,61) 记录火鸡任务完成阶段：0未接任务，1已接任务，2完成任务，3领取奖励
---- stc(172,62) 记录火鸡任务进行情况：兔大姐，兔二姐，兔小弟
---- stc(172,63) 记录变身时间

-- GlobalID 51444
---- 0 180天时效圣灵玉兔外套（赠） 活动期间单服每天限量1件
---- 1 永久圣灵玉兔外套（赠） 活动期间单服限量1件
---- 2 重置标示位
------------------------------------------------------------------数据区------------------------------------------------------------------------------
local tBunnyFamily_Data = {}
	
	-- 等级要求
	tBunnyFamily_Data["Level"] = 80
	tBunnyFamily_Data["Metempsychosis"] = 0
	
	-- 背包空间
	tBunnyFamily_Data["Space"] = 1
	
	-- 蛋糕/火鸡数量
	tBunnyFamily_Data["NeedNum"] = 3
	
	-- 复活节天石包 随机天石数量
	tBunnyFamily_Data["RandomMin"] = 1
	tBunnyFamily_Data["RandomMax"] = 88
	
	-- 全局表
	tBunnyFamily_Data["GlobalId"] = {}
	tBunnyFamily_Data["GlobalId"]["Coat"] = 51444
	
	-- Log
	tBunnyFamily_Data["Log"] = {}
	tBunnyFamily_Data["Log"]["EmoneyPack"] = "0,0,3302216,1,12000642,2,3,%d"
	tBunnyFamily_Data["Log"]["Del"] = "0,0,%d,1,12000642,2,0,0"
	tBunnyFamily_Data["Log"]["TimeOutDel"] = "0,0,%d,%d,12000642,3,0,0"
	tBunnyFamily_Data["Log"]["MissionItem"] = "0,0,0,0,12000642,2,%d,%d"
	
	-- npcid
	tBunnyFamily_Data["NpcId"] = {}
	tBunnyFamily_Data["NpcId"]["Shop"] = 20344
	tBunnyFamily_Data["NpcId"][3307313] = 20340
	tBunnyFamily_Data["NpcId"][3307314] = 20339
	
	-- itemid
	tBunnyFamily_Data["Itemtype"] = {}
	tBunnyFamily_Data["Itemtype"][20339] = 3307314
	tBunnyFamily_Data["Itemtype"][20340] = 3307313
	
	-- 对白索引
	tBunnyFamily_Data["Dialog"] = {}
	tBunnyFamily_Data["Dialog"][3307314] = "2-4"
	tBunnyFamily_Data["Dialog"][3307313] = "2-6"
	
	-- 道具属性
	tBunnyFamily_Data["Attr"] = "0 %d"
	
	-- 合成圣灵玉兔外套需要的数量
	tBunnyFamily_Data["FragmentNeedNum"] = 15
	
	-- 单个使用圣灵玉兔外套碎片
	tBunnyFamily_Data["FragmentJustOne"] = 1
	
	-- 变身
	tBunnyFamily_Data["TransformTime"] = 30
	tBunnyFamily_Data["SkillType"] = 1280
	
	tBunnyFamily_Data["Transform"] = {}
	
	tBunnyFamily_Data["Transform"]["MonsterType"] = {}
	tBunnyFamily_Data["Transform"]["MonsterType"][1] = 3081
	tBunnyFamily_Data["Transform"]["MonsterType"][2] = 3082
	tBunnyFamily_Data["Transform"]["MonsterType"][3] = 3083
	
local tBunnyFamily_Stc = {}
	
	-- stc(154,85) 兔爸爸的彩蛋
	tBunnyFamily_Stc[20339] = {}
	tBunnyFamily_Stc[20339]["EventType"] = 154
	tBunnyFamily_Stc[20339]["DataType"] = 85
	
	-- stc(154,86) 兔妈妈的彩蛋
	tBunnyFamily_Stc[20340] = {}
	tBunnyFamily_Stc[20340]["EventType"] = 154
	tBunnyFamily_Stc[20340]["DataType"] = 86
	
	-- stc(154,87) 兔大姐的彩蛋
	tBunnyFamily_Stc[20341] = {}
	tBunnyFamily_Stc[20341]["EventType"] = 154
	tBunnyFamily_Stc[20341]["DataType"] = 87
	
	-- stc(154,88) 兔二姐的彩蛋
	tBunnyFamily_Stc[20342] = {}
	tBunnyFamily_Stc[20342]["EventType"] = 154
	tBunnyFamily_Stc[20342]["DataType"] = 88
	
	-- stc(154,89) 兔小弟的彩蛋
	tBunnyFamily_Stc[20343] = {}
	tBunnyFamily_Stc[20343]["EventType"] = 154
	tBunnyFamily_Stc[20343]["DataType"] = 89
	
	-- stc(154,90) 打怪掉的彩蛋
	tBunnyFamily_Stc["Monster"] = {}
	tBunnyFamily_Stc["Monster"]["EventType"] = 154
	tBunnyFamily_Stc["Monster"]["DataType"] = 90
	
	-- stc(154,91) 一天出一次的提示
	tBunnyFamily_Stc["Msg"] = {}
	tBunnyFamily_Stc["Msg"]["EventType"] = 154
	tBunnyFamily_Stc["Msg"]["DataType"] = 91
	
	-- stc(172,59) 记录蛋糕任务完成阶段：0未接任务，1已接任务，2完成任务，3领取奖励
	tBunnyFamily_Stc[3307314] = {}
	tBunnyFamily_Stc[3307314]["EventType"] = 172
	tBunnyFamily_Stc[3307314]["DataType"] = 59
	
	-- stc(172,60) 记录蛋糕任务进行情况：兔大姐，兔二姐，兔小弟
	tBunnyFamily_Stc[4307314] = {}
	tBunnyFamily_Stc[4307314]["EventType"] = 172
	tBunnyFamily_Stc[4307314]["DataType"] = 60
	
	-- stc(172,61) 记录火鸡任务完成阶段：0未接任务，1已接任务，2完成任务，3领取奖励
	tBunnyFamily_Stc[3307313] = {}
	tBunnyFamily_Stc[3307313]["EventType"] = 172
	tBunnyFamily_Stc[3307313]["DataType"] = 61
	
	-- stc(172,62) 记录火鸡任务进行情况：兔大姐，兔二姐，兔小弟
	tBunnyFamily_Stc[4307313] = {}
	tBunnyFamily_Stc[4307313]["EventType"] = 172
	tBunnyFamily_Stc[4307313]["DataType"] = 62
	
	-- stc(172,63) 记录变身时间
	tBunnyFamily_Stc["Change"] = {}
	tBunnyFamily_Stc["Change"]["EventType"] = 172
	tBunnyFamily_Stc["Change"]["DataType"] = 63
	
local tBunnyFamily_Reward = {}
	-- 【 3302214 从NPC处获得兔兔彩蛋 】
	tBunnyFamily_Reward["Egg"] = {}
	tBunnyFamily_Reward["Egg"]["RewardItem"] = {}
	tBunnyFamily_Reward["Egg"]["RewardItem"][1] = {}
	tBunnyFamily_Reward["Egg"]["RewardItem"][1]["Id"] = 3302214
	tBunnyFamily_Reward["Egg"]["RewardItem"][1]["Attr"] = "0 1"
	tBunnyFamily_Reward["Egg"]["Log"] = "0,0,0,0,12000642,2,3302214,1"
	tBunnyFamily_Reward["Egg"]["RewardEffect"] = {}
	tBunnyFamily_Reward["Egg"]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 【 3307314 从NPC处获得胡萝卜蛋糕 】
	tBunnyFamily_Reward["Cake"] = {}
	tBunnyFamily_Reward["Cake"]["RewardItem"] = {}
	tBunnyFamily_Reward["Cake"]["RewardItem"][1] = {}
	tBunnyFamily_Reward["Cake"]["RewardItem"][1]["Id"] = 3307314
	tBunnyFamily_Reward["Cake"]["RewardItem"][1]["Attr"] = "0 3"
	tBunnyFamily_Reward["Cake"]["LogId"] = 12000642
	tBunnyFamily_Reward["Cake"]["RewardEffect"] = {}
	tBunnyFamily_Reward["Cake"]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 【 3307313 从NPC处获得烤火鸡 】
	tBunnyFamily_Reward["Turkey"] = {}
	tBunnyFamily_Reward["Turkey"]["RewardItem"] = {}
	tBunnyFamily_Reward["Turkey"]["RewardItem"][1] = {}
	tBunnyFamily_Reward["Turkey"]["RewardItem"][1]["Id"] = 3307313
	tBunnyFamily_Reward["Turkey"]["RewardItem"][1]["Attr"] = "0 3"
	tBunnyFamily_Reward["Turkey"]["LogId"] = 12000642
	tBunnyFamily_Reward["Turkey"]["RewardEffect"] = {}
	tBunnyFamily_Reward["Turkey"]["RewardEffect"]["Effect"] = "angelwing"
	
	-- 【 3307310 从NPC处获得小兔变身彩虹糖 】
	tBunnyFamily_Reward["NewCandy"] = {}
	tBunnyFamily_Reward["NewCandy"]["RewardItem"] = {}
	tBunnyFamily_Reward["NewCandy"]["RewardItem"][1] = {}
	tBunnyFamily_Reward["NewCandy"]["RewardItem"][1]["Id"] = 3307310
	tBunnyFamily_Reward["NewCandy"]["RewardItem"][1]["Attr"] = "0 1"
	tBunnyFamily_Reward["NewCandy"]["LogId"] = 12000642
	tBunnyFamily_Reward["NewCandy"]["RewardEffect"] = {}
	tBunnyFamily_Reward["NewCandy"]["RewardEffect"]["Effect"] = "angelwing"

	-- 【 3302214 使用兔兔彩蛋 】
	tBunnyFamily_Reward[3302214] = {}
	tBunnyFamily_Reward[3302214][1] = {}
	tBunnyFamily_Reward[3302214][1]["ItemChanceSum"] = 10000
	
	-- 3302215 小兔币 3 32%
	tBunnyFamily_Reward[3302214][1][1] = {}
	tBunnyFamily_Reward[3302214][1][1]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302214][1][1]["ItemChance"] = 3200
	tBunnyFamily_Reward[3302214][1][1]["RewardItem"] = {}
	tBunnyFamily_Reward[3302214][1][1]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302214][1][1]["RewardItem"][1]["Id"] = 3302215
	tBunnyFamily_Reward[3302214][1][1]["RewardItem"][1]["Attr"] = "0 3"
	tBunnyFamily_Reward[3302214][1][1]["RewardEffect"] = {}
	tBunnyFamily_Reward[3302214][1][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tBunnyFamily_Reward[3302214][1][1]["Log"] = "0,0,3302214,1,12000642,2,3302215,3"
	
	-- 3302215 小兔币 5 20%
	tBunnyFamily_Reward[3302214][1][2] = {}
	tBunnyFamily_Reward[3302214][1][2]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302214][1][2]["ItemChance"] = 2000
	tBunnyFamily_Reward[3302214][1][2]["RewardItem"] = {}
	tBunnyFamily_Reward[3302214][1][2]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302214][1][2]["RewardItem"][1]["Id"] = 3302215
	tBunnyFamily_Reward[3302214][1][2]["RewardItem"][1]["Attr"] = "0 5"
	tBunnyFamily_Reward[3302214][1][2]["RewardEffect"] = {}
	tBunnyFamily_Reward[3302214][1][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tBunnyFamily_Reward[3302214][1][2]["Log"] = "0,0,3302214,1,12000642,2,3302215,5"
	
	-- 3302215 小兔币 8 15%
	tBunnyFamily_Reward[3302214][1][3] = {}
	tBunnyFamily_Reward[3302214][1][3]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302214][1][3]["ItemChance"] = 1500
	tBunnyFamily_Reward[3302214][1][3]["RewardItem"] = {}
	tBunnyFamily_Reward[3302214][1][3]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302214][1][3]["RewardItem"][1]["Id"] = 3302215
	tBunnyFamily_Reward[3302214][1][3]["RewardItem"][1]["Attr"] = "0 8"
	tBunnyFamily_Reward[3302214][1][3]["RewardEffect"] = {}
	tBunnyFamily_Reward[3302214][1][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tBunnyFamily_Reward[3302214][1][3]["Log"] = "0,0,3302214,1,12000642,2,3302215,8"
	
	-- 3302215 小兔币 10 8%
	tBunnyFamily_Reward[3302214][1][4] = {}
	tBunnyFamily_Reward[3302214][1][4]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302214][1][4]["ItemChance"] = 800
	tBunnyFamily_Reward[3302214][1][4]["RewardItem"] = {}
	tBunnyFamily_Reward[3302214][1][4]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302214][1][4]["RewardItem"][1]["Id"] = 3302215
	tBunnyFamily_Reward[3302214][1][4]["RewardItem"][1]["Attr"] = "0 10"
	tBunnyFamily_Reward[3302214][1][4]["RewardEffect"] = {}
	tBunnyFamily_Reward[3302214][1][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tBunnyFamily_Reward[3302214][1][4]["Log"] = "0,0,3302214,1,12000642,2,3302215,10"
	
	-- 5CP(B) 17%
	tBunnyFamily_Reward[3302214][1][5] = {}
	tBunnyFamily_Reward[3302214][1][5]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302214][1][5]["ItemChance"] = 1700
	tBunnyFamily_Reward[3302214][1][5]["RewardEMoneyMono"] = {}
	tBunnyFamily_Reward[3302214][1][5]["RewardEMoneyMono"]["Value"] = 5
	tBunnyFamily_Reward[3302214][1][5]["RewardEffect"] = {}
	tBunnyFamily_Reward[3302214][1][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tBunnyFamily_Reward[3302214][1][5]["Log"] = "0,0,3302214,1,12000642,2,3,5"
	
	-- 10CP(B) 8%
	tBunnyFamily_Reward[3302214][1][6] = {}
	tBunnyFamily_Reward[3302214][1][6]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302214][1][6]["ItemChance"] = 800
	tBunnyFamily_Reward[3302214][1][6]["RewardEMoneyMono"] = {}
	tBunnyFamily_Reward[3302214][1][6]["RewardEMoneyMono"]["Value"] = 10
	tBunnyFamily_Reward[3302214][1][6]["RewardEffect"] = {}
	tBunnyFamily_Reward[3302214][1][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tBunnyFamily_Reward[3302214][1][6]["Log"] = "0,0,3302214,1,12000642,2,3,10"
	
	-- 【 3302219 使用圣灵玉兔外套碎片合成外套 】
	tBunnyFamily_Reward[3302219] = {}
	tBunnyFamily_Reward[3302219][1] = {}
	tBunnyFamily_Reward[3302219][1]["ItemChanceSum"] = 10000
	-- 30天时效	70.00%
	tBunnyFamily_Reward[3302219][1][1] = {}
	tBunnyFamily_Reward[3302219][1][1]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302219][1][1]["ItemChance"] = 7000
	tBunnyFamily_Reward[3302219][1][1]["RewardItem"] = {}
	tBunnyFamily_Reward[3302219][1][1]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302219][1][1]["RewardItem"][1]["Id"] = 200407
	tBunnyFamily_Reward[3302219][1][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1"
	tBunnyFamily_Reward[3302219][1][1]["Log"] = "0,0,3302219,1,12000642,2,200407,1"
	
	-- 90天时效	26.00%
	tBunnyFamily_Reward[3302219][1][2] = {}
	tBunnyFamily_Reward[3302219][1][2]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302219][1][2]["ItemChance"] = 2600
	tBunnyFamily_Reward[3302219][1][2]["RewardItem"] = {}
	tBunnyFamily_Reward[3302219][1][2]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302219][1][2]["RewardItem"][1]["Id"] = 200407
	tBunnyFamily_Reward[3302219][1][2]["RewardItem"][1]["Attr"] = "0 1 3 129600 1"
	tBunnyFamily_Reward[3302219][1][2]["Log"] = "0,0,3302219,1,12000642,2,200407,1"
	
	-- 180天时效	3.50%	活动期间单服每天限量1件，超出给30天时效
	tBunnyFamily_Reward[3302219][1][3] = {}
	tBunnyFamily_Reward[3302219][1][3]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302219][1][3]["ItemChance"] = 350
	tBunnyFamily_Reward[3302219][1][3]["GlobalId"] = tBunnyFamily_Data["GlobalId"]["Coat"]
	tBunnyFamily_Reward[3302219][1][3]["Pos"] = 0
	tBunnyFamily_Reward[3302219][1][3]["MaxData"] = 1
	tBunnyFamily_Reward[3302219][1][3]["FullIndex"] = 1
	tBunnyFamily_Reward[3302219][1][3]["RewardItem"] = {}
	tBunnyFamily_Reward[3302219][1][3]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302219][1][3]["RewardItem"][1]["Id"] = 200407
	tBunnyFamily_Reward[3302219][1][3]["RewardItem"][1]["Attr"] = "0 1 3 259200 1"
	tBunnyFamily_Reward[3302219][1][3]["Log"] = "0,0,3302219,1,12000642,2,200407,1"
	
	-- 永久	0.50%	活动期间单服限量1件，超出给30天时效
	tBunnyFamily_Reward[3302219][1][4] = {}
	tBunnyFamily_Reward[3302219][1][4]["RandomItemChanceType"] = 2
	tBunnyFamily_Reward[3302219][1][4]["ItemChance"] = 50
	tBunnyFamily_Reward[3302219][1][4]["GlobalId"] = tBunnyFamily_Data["GlobalId"]["Coat"]
	tBunnyFamily_Reward[3302219][1][4]["Pos"] = 1
	tBunnyFamily_Reward[3302219][1][4]["MaxData"] = 1
	tBunnyFamily_Reward[3302219][1][4]["FullIndex"] = 1
	tBunnyFamily_Reward[3302219][1][4]["RewardBroadCast"] = tBunnyFamily_Text["Msg"][3302219]["GetPermanentCoat"]
	tBunnyFamily_Reward[3302219][1][4]["RewardItem"] = {}
	tBunnyFamily_Reward[3302219][1][4]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302219][1][4]["RewardItem"][1]["Id"] = 200407
	tBunnyFamily_Reward[3302219][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tBunnyFamily_Reward[3302219][1][4]["Log"] = "0,0,3302219,1,12000642,2,200407,1"
	
	-- 【 3302219 使用单个圣灵玉兔外套碎片 】
	tBunnyFamily_Reward[3302219][2] = {}
	tBunnyFamily_Reward[3302219][2]["RewardItem"] = {}
	tBunnyFamily_Reward[3302219][2]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302219][2]["RewardItem"][1]["Id"] = 3302219
	tBunnyFamily_Reward[3302219][2]["RewardItem"][1]["Attr"] = "0 2"
	tBunnyFamily_Reward[3302219][2]["Log"] = "0,0,3302219,1,12000642,2,3302219,2"
	
	-- 【 3302217 使用小兔变身糖果包 】
	tBunnyFamily_Reward[3302217] = {}
	tBunnyFamily_Reward[3302217]["RewardItem"] = {}
	tBunnyFamily_Reward[3302217]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302217]["RewardItem"][1]["Id"] = 3302218
	tBunnyFamily_Reward[3302217]["RewardItem"][1]["Attr"] = "0 1"
	tBunnyFamily_Reward[3302217]["DeleteItem"] = {}
	tBunnyFamily_Reward[3302217]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3302217]["DeleteItem"][1]["Id"] = 3302217
	tBunnyFamily_Reward[3302217]["Log"] = "0,0,3302217,1,12000642,2,3302218,1"
	
	-- 气力值礼包
	tBunnyFamily_Reward[3302405] = {}
	tBunnyFamily_Reward[3302405]["LogId"] = 12000642
	tBunnyFamily_Reward[3302405]["DeleteItem"] = {}
	tBunnyFamily_Reward[3302405]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3302405]["DeleteItem"][1]["Id"] = 3302405
	tBunnyFamily_Reward[3302405]["RewardStrengthValue"] = {}
	tBunnyFamily_Reward[3302405]["RewardStrengthValue"]["Value"] = 200
	
	--微光星陨石礼盒
	tBunnyFamily_Reward[3302406] = {}
	tBunnyFamily_Reward[3302406]["LogId"] = 12000642
	tBunnyFamily_Reward[3302406]["DeleteItem"] = {}
	tBunnyFamily_Reward[3302406]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3302406]["DeleteItem"][1]["Id"] = 3302406
	tBunnyFamily_Reward[3302406]["RewardItem"] = {}
	tBunnyFamily_Reward[3302406]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302406]["RewardItem"][1]["Id"] = 3009000
	tBunnyFamily_Reward[3302406]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	--明亮星陨石礼盒
	tBunnyFamily_Reward[3302407] = {}
	tBunnyFamily_Reward[3302407]["LogId"] = 12000642
	tBunnyFamily_Reward[3302407]["DeleteItem"] = {}
	tBunnyFamily_Reward[3302407]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3302407]["DeleteItem"][1]["Id"] = 3302407
	tBunnyFamily_Reward[3302407]["RewardItem"] = {}
	tBunnyFamily_Reward[3302407]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302407]["RewardItem"][1]["Id"] = 3009001
	tBunnyFamily_Reward[3302407]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	
	-- 3307311 1%神佑萌萌兔套装礼盒
	tBunnyFamily_Reward[3307311] = {}
	tBunnyFamily_Reward[3307311]["LogId"] = 12000642
	tBunnyFamily_Reward[3307311]["DeleteItem"] = {}
	tBunnyFamily_Reward[3307311]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3307311]["DeleteItem"][1]["Id"] = 3307311
	tBunnyFamily_Reward[3307311]["RewardItem"] = {}
	tBunnyFamily_Reward[3307311]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3307311]["RewardItem"][1]["Id"] = 193115
	tBunnyFamily_Reward[3307311]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBunnyFamily_Reward[3307311]["RewardEffect"] = {}
	tBunnyFamily_Reward[3307311]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3307312 1%神佑小精灵套装礼盒
	tBunnyFamily_Reward[3307312] = {}
	tBunnyFamily_Reward[3307312]["LogId"] = 12000642
	tBunnyFamily_Reward[3307312]["DeleteItem"] = {}
	tBunnyFamily_Reward[3307312]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3307312]["DeleteItem"][1]["Id"] = 3307312
	tBunnyFamily_Reward[3307312]["RewardItem"] = {}
	tBunnyFamily_Reward[3307312]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3307312]["RewardItem"][1]["Id"] = 192300
	tBunnyFamily_Reward[3307312]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tBunnyFamily_Reward[3307312]["RewardEffect"] = {}
	tBunnyFamily_Reward[3307312]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3302215 小兔币 过期换成年运通宝
	tBunnyFamily_Reward[3302215] = {}
	tBunnyFamily_Reward[3302215]["LogId"] = 12000642
	tBunnyFamily_Reward[3302215]["DeleteItem"] = {}
	tBunnyFamily_Reward[3302215]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3302215]["DeleteItem"][1]["Id"] = 3302215
	tBunnyFamily_Reward[3302215]["DeleteItem"][1]["ItemNum"] = 1
	tBunnyFamily_Reward[3302215]["RewardItem"] = {}
	tBunnyFamily_Reward[3302215]["RewardItem"][1] = {}
	tBunnyFamily_Reward[3302215]["RewardItem"][1]["Id"] = 3301454
	tBunnyFamily_Reward[3302215]["RewardItem"][1]["Attr"] = "0 1"
	tBunnyFamily_Reward[3302215]["RewardEffect"] = {}
	tBunnyFamily_Reward[3302215]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3307315 2018惊喜财运宝箱
	tBunnyFamily_Reward[3307315] = {}
	tBunnyFamily_Reward[3307315]["LogId"] = 12000642
	tBunnyFamily_Reward[3307315]["DeleteItem"] = {}
	tBunnyFamily_Reward[3307315]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3307315]["DeleteItem"][1]["Id"] = 3307315
	tBunnyFamily_Reward[3307315]["RewardEMoneyMono"] = {}
	tBunnyFamily_Reward[3307315]["RewardEMoneyMono"]["Value"] = 2018
	tBunnyFamily_Reward[3307315]["RewardEffect"] = {}
	tBunnyFamily_Reward[3307315]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 3320165 2019惊喜财运宝箱
	tBunnyFamily_Reward[3320165] = {}
	tBunnyFamily_Reward[3320165]["LogId"] = 12000642
	tBunnyFamily_Reward[3320165]["DeleteItem"] = {}
	tBunnyFamily_Reward[3320165]["DeleteItem"][1] = {}
	tBunnyFamily_Reward[3320165]["DeleteItem"][1]["Id"] = 3320165
	tBunnyFamily_Reward[3320165]["RewardEMoneyMono"] = {}
	tBunnyFamily_Reward[3320165]["RewardEMoneyMono"]["Value"] = 2019
	tBunnyFamily_Reward[3320165]["RewardEffect"] = {}
	tBunnyFamily_Reward[3320165]["RewardEffect"]["Effect"] = "zf2-e128"
	
local tBunnyFamily_Probability = {}
	
	-- 变身兔子
	tBunnyFamily_Probability["Trans"] = {}
	tBunnyFamily_Probability["Trans"][1] = {}
	tBunnyFamily_Probability["Trans"][1]["ItemChanceSum"] = 10000
	
	tBunnyFamily_Probability["Trans"][1][1] = {}
	tBunnyFamily_Probability["Trans"][1][1]["RandomItemChanceType"] = 2
	tBunnyFamily_Probability["Trans"][1][1]["ItemChance"] = 3333
	tBunnyFamily_Probability["Trans"][1][1]["Item_1"] = 1
	
	tBunnyFamily_Probability["Trans"][1][2] = {}
	tBunnyFamily_Probability["Trans"][1][2]["RandomItemChanceType"] = 2
	tBunnyFamily_Probability["Trans"][1][2]["ItemChance"] = 3333
	tBunnyFamily_Probability["Trans"][1][2]["Item_1"] = 2
	
	tBunnyFamily_Probability["Trans"][1][3] = {}
	tBunnyFamily_Probability["Trans"][1][3]["RandomItemChanceType"] = 2
	tBunnyFamily_Probability["Trans"][1][3]["ItemChance"] = 3334
	tBunnyFamily_Probability["Trans"][1][3]["Item_1"] = 3
	
local tBunnyFamily_Mission = {}
	for i = 1,3 do
		tBunnyFamily_Mission[i] = 2^(i-1)
	end
	
	tBunnyFamily_Mission[20341] = 1
	tBunnyFamily_Mission[20342] = 2
	tBunnyFamily_Mission[20343] = 3
--------------------------------------概率测试----------------------------------------------
-- 【 3302214 使用兔兔彩蛋 】
-- tProbabil_Test[3302214] = {}
-- tProbabil_Test[3302214]["Table"] = tBunnyFamily_Reward[3302214]
-- tProbabil_Test[3302214]["Index"] = {1}
-- tProbabil_Test[3302214]["Times"] = 10000
-- tProbabil_Test[3302214]["LogName"] = "2017复活节小活动-使用兔兔彩蛋"
-- tProbabil_Test[3302214]["Single"] = nil
-- Probabil_Main(3302214,10000)

-- 【 3302219 使用圣灵玉兔外套碎片 】
-- tProbabil_Test[3302219] = {}
-- tProbabil_Test[3302219]["Table"] = tBunnyFamily_Reward[3302219]
-- tProbabil_Test[3302219]["Index"] = {1}
-- tProbabil_Test[3302219]["Times"] = 10000
-- tProbabil_Test[3302219]["LogName"] = "2017复活节小活动-使用圣灵玉兔外套碎片"
-- tProbabil_Test[3302219]["Single"] = nil
-- Probabil_Main(3302219,10000)

-- 变身兔子
-- tProbabil_Test["Trans"] = {}
-- tProbabil_Test["Trans"]["Table"] = tBunnyFamily_Probability["Trans"]
-- tProbabil_Test["Trans"]["Index"] = {1}
-- tProbabil_Test["Trans"]["Times"] = 10000
-- tProbabil_Test["Trans"]["LogName"] = "2017复活节小活动-变身兔子"
-- tProbabil_Test["Trans"]["Single"] = nil
-- Probabil_Main("Trans",10000)
--------------------------------------npc逻辑----------------------------------------------
-- 打开兑换商店
function BunnyFamily_OpenShop(nNpcId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		return
	end
	
	User_OpenExchangeShop(nNpcId)
end

-- 选项 领取彩蛋
function BunnyFamily_GetEgg(nNpcId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 是否领取过彩蛋
	local nEventType = tBunnyFamily_Stc[nNpcId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nNpcId]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	if Task_ChkStcValue(nEventType,nDataType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包判断
	local nSpace = tBunnyFamily_Data["Space"]
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 打掩码，给奖励，加光效，打log，出提示
	Task_SetStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward["Egg"])
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 对白选项配置
function BunnyFamily_Option(nNpcId)
	local nEventType = tBunnyFamily_Stc[nNpcId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nNpcId]["DataType"]
	-- 隔天清零
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	
	-- 选项
	if Task_ChkStcValue(nEventType,nDataType,"<",1) then
		tNpcGossip[nNpcId]["Option3"] = tBunnyFamily_Text[nNpcId]["Option3"]
	else
		tNpcGossip[nNpcId]["Option3"] = tBunnyFamily_Text[nNpcId]["Option3"] .. tBunnyFamily_Text["Msg"]["NPC"]["Claimed"]
	end
end

-- 新对白选项配置
function BunnyFamily_NewOption(nNpcId,nIndex)
	local nEventType = tBunnyFamily_Stc[nIndex]["EventType"]
	local nDataType = tBunnyFamily_Stc[nIndex]["DataType"]
	Task_StcReset(nEventType,nDataType)
	
	-- 选项
	if Task_ChkStcValue(nEventType,nDataType,"<",3) then
		tNpcGossip[nNpcId]["Option131"] = tBunnyFamily_Text[nNpcId]["Option131"]
	else
		tNpcGossip[nNpcId]["Option131"] = tBunnyFamily_Text[nNpcId]["Option131"] .. tBunnyFamily_Text["Msg"]["NPC"]["Completed"]
	end
end

-- 蛋糕/火鸡任务
function BunnyFamily_Mission(nNpcId,nItemId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断掩码
	-- 任务完成阶段：0未接任务，1已接任务，2完成任务，3领取奖励
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	-------------------- 今日已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",3) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	-------------------- 今日已完成未领奖
	-- stc(172,63) 记录变身时间
	local nChangeEventType = tBunnyFamily_Stc["Change"]["EventType"]
	local nChangeDataType = tBunnyFamily_Stc["Change"]["DataType"]
	local nCakeId = tBunnyFamily_Data["Itemtype"][20339]
	local nSpace = tBunnyFamily_Data["Space"]
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		-- 蛋糕任务需要判断是否变身为兔子
		if nCakeId == nItemId then
			-- 没有变身兔子 领取失败
			if Task_StcInterval(nChangeEventType,nChangeDataType,30,0) then
				LinkNpcGossipFunc_New(nNpcId,"3-1")
				return
			end
		end
		-- 背包满 领取失败
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-9")
			return
		end
		-- 领取成功
		Task_SetStatistic(nEventType,nDataType,3,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward["Egg"])
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	-------------------- 今日已接任务未完成
	-- 蛋糕任务进行情况：兔大姐，兔二姐，兔小弟
	local nIndex = nItemId + 1000000
	local nEventType1 = tBunnyFamily_Stc[nIndex]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nIndex]["DataType"]
	local nItemNeedNum = BunnyFamily_ChkNum(nEventType1,nDataType1)
	local nItemPossessNum = Get_CountItemType(nItemId,0)
	if Task_ChkStcValue(nEventType,nDataType,">=",1) then
		-- 物品够了
		if nItemPossessNum >= nItemNeedNum then
			LinkNpcGossipFunc_New(nNpcId,"2-8")
			return
		-- 物品不够 背包满
		elseif not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		-- 重新领取物品成功
		else
			local nItemNum = nItemNeedNum-nItemPossessNum
			local sAttr = string.format(tBunnyFamily_Data["Attr"],nItemNum)
			local sLog = string.format(tBunnyFamily_Data["Log"]["MissionItem"],nItemId,nItemNum)
			Item_AddNewItem(nItemId,sAttr)
			Sys_SaveActionFestivalLog(sLog)
			LinkNpcGossipFunc_New(nNpcId,"2-7")
			return
		end
	end
	-------------------- 今日未接任务
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		-- 物品够了
		if nItemPossessNum >= nItemNeedNum then
			Task_SetStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			LinkNpcGossipFunc_New(nNpcId,"2-6")
			return
		elseif not User_CheckLeftSpace(nSpace) then
		-- 物品不够 背包满
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		-- 领取物品成功
		else
			local nItemNum = nItemNeedNum-nItemPossessNum
			local sAttr = string.format(tBunnyFamily_Data["Attr"],nItemNum)
			local sLog = string.format(tBunnyFamily_Data["Log"]["MissionItem"],nItemId,nItemNum)
			Task_SetStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			Item_AddNewItem(nItemId,sAttr)
			Sys_SaveActionFestivalLog(sLog)
			LinkNpcGossipFunc_New(nNpcId,"2-6")
		end
	end
end

-- 蛋糕/火鸡任务还有几个未送
function BunnyFamily_ChkNum(nEventType,nDataType)
	Task_StcReset(nEventType,nDataType)
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	local nNum = 0
	for i = 1,3 do
		if not Sys_ParseNumbersContain(tBunnyFamily_Mission[i],nValue) then
			nNum = nNum + 1
		end
	end
	return nNum
end

-- 送蛋糕/火鸡
function BunnyFamily_Deliver(nNpcId,nIndex,nItemId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断掩码
	-- 记录任务完成阶段：0未接任务，1已接任务，2完成任务，3领取奖励
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	-- 已完成或已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return
	end
	-- 任务未接
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return
	end
	-- 记录任务进行情况：兔大姐，兔二姐，兔小弟
	local nEventType1 = tBunnyFamily_Stc[nItemId+1000000]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nItemId+1000000]["DataType"]
	Task_StcReset(nEventType1,nDataType1)
	local nValue = Get_UserStatisticValue(nEventType1,nDataType1)
	-- 此兔宝宝已送
	if Sys_ParseNumbersContain(tBunnyFamily_Mission[nIndex],nValue) then
		return
	end
	
	-------------------- 完成 删除物品 打掩码 出对白
	
	local nNum = BunnyFamily_ChkNum(nEventType1,nDataType1)
	local nSpace = tBunnyFamily_Data["Space"]
	local nCakeId = tBunnyFamily_Data["Itemtype"][20339]
	-- 送的不是最后一只
	if nNum > 1 then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_AddStatistic(nEventType1,nDataType1,tBunnyFamily_Mission[nIndex],1)
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			LinkNpcGossipFunc_New(nNpcId,tBunnyFamily_Data["Dialog"][nItemId])
		end
	-- 送的是最后一只
	elseif nNum == 1 then
		-- 蛋糕任务需要判断背包空间
		-- 无背包空间
		if nItemId == nCakeId then
			if not User_CheckLeftSpace(nSpace) then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
				return
			end
		end
		-- 有背包空间
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_AddStatistic(nEventType1,nDataType1,tBunnyFamily_Mission[nIndex],1)
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			Task_SetStatistic(nEventType,nDataType,2,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			-- 蛋糕任务给糖果出对白 火鸡任务出对白出提示
			if nItemId == nCakeId then
				RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward["NewCandy"])
				LinkNpcGossipFunc_New(nNpcId,"2-5")
			else
				LinkNpcGossipFunc_New(nNpcId,"2-6")
				local nMissionNpcId = tBunnyFamily_Data["NpcId"][nItemId]
				Sys_MsgBox(tBunnyFamily_Text["Msg"][nItemId]["Turkey"],"NpcPosition_PathFind</N>" .. nMissionNpcId)
			end
		end
	end
end
--------------------------------------物品逻辑----------------------------------------------
-- 使用兔兔彩蛋 3302214
function BunnyFamily_UseEgg(nItemId)
	-- 判断时间
	local nNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tBunnyFamily_Data["Log"]["TimeOutDel"],nItemId,nNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"]) then
		Item_DelMulItem(nItemId,nItemId,nNum)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tBunnyFamily_Text["Msg"][nItemId]["TimeOut"])
		return
	end
	
	-- 检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRandomSpace(tBunnyFamily_Reward[nItemId],1)
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tBunnyFamily_Text["Msg"][nItemId]["NoSpace"])
		return
	end
	
	-- 判断赠点天石上限
	local nMaxRewardMonoEMoney = tBunnyFamily_Reward[nItemId][1][6]["RewardEMoneyMono"]["Value"]
	if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tBunnyFamily_Text["Msg"][nItemId]["TooMuchMonoEmoney"])
		return 
	end
	
	-- 删除物品
	if not Item_DelItem(nItemId) then
		return
	end
	
	-- 给奖励
	RewardTemplate_NewRandom(tBunnyFamily_Reward[nItemId],1)
end

-- 使用小兔币 3302215
function BunnyFamily_Coin(nItemId)
	-- 判断时间
	local nNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tBunnyFamily_Data["Log"]["TimeOutDel"],nItemId,nNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"]) then
		local tReward = tBunnyFamily_Reward[nItemId]
		local sAttr = "0 %d"
		tReward["RewardItem"][1]["Attr"] = string.format(sAttr,nNum)
		tReward["DeleteItem"][1]["ItemNum"] = nNum
		RewardTemplate_UseItemAndMsg(tReward)
		return
	end
	
	-- 寻路到“彩蛋商店”
	local nNpcId = tBunnyFamily_Data["NpcId"]["Shop"]
	NpcPosition_PathFind(nNpcId)
end

-- 使用复活节天石包 3302216
function BunnyFamily_EmoneyPack(nItemId)
	-- 检测物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断赠点天石上限
	local nMaxRewardMonoEMoney = tBunnyFamily_Data["RandomMax"]
	if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
		Sys_MsgBox(tBunnyFamily_Text["Msg"][nItemId]["TooMuchMonoEmoney"])
		return 
	end
	
	-- 给奖励，打log，出提示
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nRandom = math.random(tBunnyFamily_Data["RandomMin"],tBunnyFamily_Data["RandomMax"])
		local sLog = string.format(tBunnyFamily_Data["Log"]["EmoneyPack"],nRandom)
		local sMsg = string.format(tBunnyFamily_Text["Msg"][nItemId]["OpenPackGetEmoney"],nRandom)
		User_AddEMoneyMono(nRandom)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sMsg)
	end
end

-- 使用小兔变身糖果包 3302217
function BunnyFamily_CandyPack(nItemId)
	-- 判断时间
	local nNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tBunnyFamily_Data["Log"]["TimeOutDel"],nItemId,nNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"]) then
		Item_DelMulItem(nItemId,nItemId,nNum)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tBunnyFamily_Text["Msg"][nItemId]["TimeOut"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward[nItemId])
end

-- 使用小兔变身糖 3302218
function BunnyFamily_Candy(nItemId)
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tBunnyFamily_Data["Log"]["TimeOutDel"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"]) then
		Item_DelMulItem(nItemId,nItemId,nItemNum)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tBunnyFamily_Text["Msg"][nItemId]["TimeOut"])
		return
	end
	
	local flat,tNum = Probabil_RandomAward(tBunnyFamily_Probability["Trans"],1)
	local nNum = tNum[1]["tAward"][1]["Item_1"]
	local nSkillType = tBunnyFamily_Data["SkillType"]
	local nMonsterType = tBunnyFamily_Data["Transform"]["MonsterType"][nNum]
	local nTime = tBunnyFamily_Data["TransformTime"]
	-- stc(172,63) 记录变身时间
	local nChangeEventType = tBunnyFamily_Stc["Change"]["EventType"]
	local nChangeDataType = tBunnyFamily_Stc["Change"]["DataType"]
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 变身
		Task_SetStatistic(nChangeEventType,nChangeDataType,1,1)
		Task_SetStcTimestamp(nChangeEventType,nChangeDataType,0)
		User_TransForm(nSkillType,0,nMonsterType,nTime)
		User_TalkChannel2005(tBunnyFamily_Text["Msg"][nItemId]["Change"])
	end
end

-- 圣灵玉兔外套碎片 3302219
function BunnyFamily_Fragment(nItemId,nNum)
	-- 使用多个碎片合成外套
	if nNum == tBunnyFamily_Data["FragmentNeedNum"] then
		-- 数量判断
		if not Item_ChkAccItem(nItemId,nNum) then
			User_TalkChannel2005(tBunnyFamily_Text["Msg"][nItemId]["NotEnough"])
			return
		end
		
		-- 空间判断
		local nSpace = RewardTemplate_GetRandomSpace(tBunnyFamily_Reward[nItemId],1)
		if not User_CheckLeftSpace(nSpace) then
			Sys_MsgBox(tBunnyFamily_Text["Msg"][nItemId]["NoSpace"])
			return 
		end
		
		if Item_DelMulItem(nItemId,nItemId,nNum) then
			RewardTemplate_NewRandom(tBunnyFamily_Reward[nItemId],1)
		end
	
	-- 使用单个碎片五成概率获得翻倍，五成概率消失
	elseif nNum == tBunnyFamily_Data["FragmentJustOne"] then
		-- 判断物品
			if not Item_ChkItem(nItemId) then
				User_TalkChannel2005(tBunnyFamily_Text["Msg"][nItemId]["NotOne"])
				return
			end
			
		-- 判断背包
		local nSpace = RewardTemplate_GetRewardSpace(tBunnyFamily_Reward[nItemId][2])
		if not User_CheckLeftSpace(nSpace) then
				Sys_MsgBox(tBunnyFamily_Text["Msg"][nItemId]["NoSpace"])
				return 
		end
		
		-- 删除物品
		if not Item_DelItem(nItemId) then
			return
		end
		
		-- 成功
		if Sys_Random(48,100) then
				RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward[nItemId][2])
				LinkItemGossipFunc_New(nItemId,"1-2")
		-- 失败
		else
			LinkItemGossipFunc_New(nItemId,"1-3")
		end
		
	end
end

-- 回到碎片主对白
function BunnyFamily_MainDialog(nItemId)
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

-- 各种礼包的使用 使用春节元宵小活动的逻辑
function BunnyFamily_UseGift(nItemId)
	if not Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sLog = string.format(tBunnyFamily_Data["Log"]["Del"],nItemId)
			Sys_SaveActionFestivalLog(sLog)
			User_TalkChannel2005(tBunnyFamily_Text["TimeOut"])
		end
		return
	end
	RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward[nItemId])
end

-- 清动态码数据
function BunnyFamily_ClearSynaGlobalData()
	local nGlobalId = tBunnyFamily_Data["GlobalId"]["Coat"]
	
	if Get_SysDynaGlobalData2(nGlobalId) == 1 then
		return
	end
	
	if Sys_SetSynaGlobalData0(nGlobalId,0) then
		Sys_SetSynaGlobalData2(nGlobalId,1)
	end
end

-- 重置表示位
function BunnyFamily_ClearSynaGlobalDataFlag()
	local nGlobalId = tBunnyFamily_Data["GlobalId"]["Coat"]
	Sys_SetSynaGlobalData2(nGlobalId,0)
end

-- 3307310 小兔变身糖彩虹糖
function BunnyFamily_NewCandy(nItemId)
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tBunnyFamily_Data["Log"]["TimeOutDel"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"]) then
		Item_DelMulItem(nItemId,nItemId,nItemNum)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tBunnyFamily_Text["Msg"][nItemId]["TimeOut"])
		return
	end
	
	local flat,tNum = Probabil_RandomAward(tBunnyFamily_Probability["Trans"],1)
	local nNum = tNum[1]["tAward"][1]["Item_1"]
	local nSkillType = tBunnyFamily_Data["SkillType"]
	local nMonsterType = tBunnyFamily_Data["Transform"]["MonsterType"][nNum]
	local nTime = tBunnyFamily_Data["TransformTime"]
	local sUseLog = string.format(tBunnyFamily_Data["Log"]["Del"],nItemId)
	-- stc(172,63) 记录变身时间
	local nChangeEventType = tBunnyFamily_Stc["Change"]["EventType"]
	local nChangeDataType = tBunnyFamily_Stc["Change"]["DataType"]
	-- 删物品 打掩码 记log 变兔子 出提示 寻路
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nChangeEventType,nChangeDataType,1,1)
		Task_SetStcTimestamp(nChangeEventType,nChangeDataType,0)
		Sys_SaveActionFestivalLog(sUseLog)
		User_TransForm(nSkillType,0,nMonsterType,nTime)
		Sys_MsgBox(tBunnyFamily_Text["Msg"][nItemId]["Change"],"NpcPosition_PathFind</N>20339")
	end
end
----------------------------------------怪物逻辑-------------------------------------------------
-- 击杀怪物
function BunnyFamily_KillMonster()
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		return
	end
	
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
		return
	end
	
	local nEventType = tBunnyFamily_Stc["Monster"]["EventType"]
	local nDataType = tBunnyFamily_Stc["Monster"]["DataType"]
	local nMsgEventType = tBunnyFamily_Stc["Msg"]["EventType"]
	local nMsgDataType = tBunnyFamily_Stc["Msg"]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4) then
		-- 彩蛋掩码隔天清零
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		-- 提示掩码隔天清零
		Task_SetStatistic(nMsgEventType,nMsgDataType,0,1)
		Task_SetStcTimestamp(nMsgEventType,nMsgDataType,0)
	end
	
	-- 掩码判断 获得彩蛋数是否达到上限
	local nValue = Get_UserStatisticValue(nMsgEventType,nMsgDataType)
	if Task_ChkStcValue(nEventType,nDataType,">=",15) then
		-- 获得彩蛋数达到上限提示一天只出现一次
		if not Sys_ParseNumbersContain(1,nValue) then
			Task_AddStatistic(nMsgEventType,nMsgDataType,1,1)
			Task_SetStcTimestamp(nMsgEventType,nMsgDataType,0)
			Sys_MsgBox(tBunnyFamily_Text["Msg"]["NPC"]["Drop"])
		end
		return
	end
	
	-- 背包判断
	local nSpace = tBunnyFamily_Data["Space"]
	if not User_CheckLeftSpace(nSpace) then
		-- 空间不足提示一天只出现一次
		if not Sys_ParseNumbersContain(2,nValue) then
			Task_AddStatistic(nMsgEventType,nMsgDataType,2,1)
			Task_SetStcTimestamp(nMsgEventType,nMsgDataType,0)
			User_TalkChannel2005(tBunnyFamily_Text["Msg"]["NPC"]["NoSpace"])
		end
		return
	end
	
	-- 3% 打掩码，给奖励，加光效，打log，出提示
	if Sys_Random(3,100) then
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward["Egg"])
	end
end
--------------------------------------npc模板----------------------------------------------
-- 【 20339 兔爸爸 4493 】
tNpcFace[4493] = 193

tNpcGossip[20339] = tNpcGossip[20339] or DefaultNpc:new{}
tNpcGossip[20339]["OptionHidden"] = 1
tNpcGossip[20339]["DialogueText"] = tBunnyFamily_Text[20339]

-- 活动前
tNpcGossip[20339]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[20339]["tOption1-1"] = {1}
tNpcGossip[20339]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动后
tNpcGossip[20339]["Text1-4"] = {141,142}
tNpcGossip[20339]["tOption1-4"] = {8}
tNpcGossip[20339]["ChkFunc1-4"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动中，玩家等级未达到条件
tNpcGossip[20339]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[20339]["tOption1-2"] = {2}
tNpcGossip[20339]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 活动中，玩家等级满足
tNpcGossip[20339]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20339]["tOption1-3"] = {3,131,4}
tNpcGossip[20339]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			BunnyFamily_Option(20339)
			BunnyFamily_NewOption(20339,3307314)
			return true
		end
	end
	
	return false
end
tNpcGossip[20339]["OptionFunc3"] = "BunnyFamily_GetEgg</N>20339"
tNpcGossip[20339]["OptionFunc131"] = "BunnyFamily_Mission</N>20339</N>3307314"

-- 接 Option3 玩家等级满足，今日已领取过
tNpcGossip[20339]["Text2-1"] = {211,212}
tNpcGossip[20339]["tOption2-1"] = {5}

-- 接 Option3 玩家等级满足，今日未领取，背包满
tNpcGossip[20339]["Text2-2"] = {221}
tNpcGossip[20339]["tOption2-2"] = {6}

-- 接 Option3 玩家满足条件，领取成功
tNpcGossip[20339]["Text2-3"] = {231}
tNpcGossip[20339]["tOption2-3"] = {7}

-- 接 Option131 胡萝卜蛋糕 领取失败 今日已完成且已领奖
tNpcGossip[20339]["Text2-4"] = {241}
tNpcGossip[20339]["tOption2-4"] = {241}

-- 接 Option131 胡萝卜蛋糕 领取失败 未接任务 背包满
tNpcGossip[20339]["Text2-5"] = {251}
tNpcGossip[20339]["tOption2-5"] = {251}

-- 接 Option131 胡萝卜蛋糕 领取成功
tNpcGossip[20339]["Text2-6"] = {261,262}
tNpcGossip[20339]["tOption2-6"] = {261}

-- 接 Option131 胡萝卜蛋糕 任务未完成 已接任务 蛋糕没有3个
tNpcGossip[20339]["Text2-7"] = {271}
tNpcGossip[20339]["tOption2-7"] = {271}

-- 接 Option131 胡萝卜蛋糕 任务未完成 蛋糕有3个
tNpcGossip[20339]["Text2-8"] = {281}
tNpcGossip[20339]["tOption2-8"] = {281}

-- 接 Option131 胡萝卜蛋糕 任务完成，变身兔子，领彩蛋，失败，背包满
tNpcGossip[20339]["Text2-9"] = {291,292}
tNpcGossip[20339]["tOption2-9"] = {291}

-- 接 Option131 胡萝卜蛋糕 任务完成，没有变身兔子，领彩蛋，失败
tNpcGossip[20339]["Text3-1"] = {311,312}
tNpcGossip[20339]["tOption3-1"] = {311}

-- 接 Option131 胡萝卜蛋糕 任务完成，变身兔子，领彩蛋，成功
tNpcGossip[20339]["Text3-2"] = {321}
tNpcGossip[20339]["tOption3-2"] = {321}

-- 【 20340 兔妈妈 4494 】
tNpcFace[4494] = 193

tNpcGossip[20340] = tNpcGossip[20340] or DefaultNpc:new{}
tNpcGossip[20340]["OptionHidden"] = 1
tNpcGossip[20340]["DialogueText"] = tBunnyFamily_Text[20340]

-- 活动前
tNpcGossip[20340]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20340]["tOption1-1"] = {1}
tNpcGossip[20340]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动后
tNpcGossip[20340]["Text1-4"] = {141,142}
tNpcGossip[20340]["tOption1-4"] = {8}
tNpcGossip[20340]["ChkFunc1-4"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动中，玩家等级未达到条件
tNpcGossip[20340]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[20340]["tOption1-2"] = {2}
tNpcGossip[20340]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 活动中，玩家等级满足
tNpcGossip[20340]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20340]["tOption1-3"] = {3,131,4}
tNpcGossip[20340]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			BunnyFamily_Option(20340)
			BunnyFamily_NewOption(20340,3307313)
			return true
		end
	end
	
	return false
end
tNpcGossip[20340]["OptionFunc3"] = "BunnyFamily_GetEgg</N>20340"
tNpcGossip[20340]["OptionFunc131"] = "BunnyFamily_Mission</N>20340</N>3307313"

-- 接 Option3 玩家等级满足，今日已领取过
tNpcGossip[20340]["Text2-1"] = {211,212}
tNpcGossip[20340]["tOption2-1"] = {5}

-- 接 Option3 玩家等级满足，今日未领取，背包满
tNpcGossip[20340]["Text2-2"] = {221}
tNpcGossip[20340]["tOption2-2"] = {6}

-- 接 Option3 玩家满足条件，领取成功
tNpcGossip[20340]["Text2-3"] = {231}
tNpcGossip[20340]["tOption2-3"] = {7}

-- 接 Option131 烤火鸡 领取失败 今日已完成且已领奖
tNpcGossip[20340]["Text2-4"] = {241}
tNpcGossip[20340]["tOption2-4"] = {241}

-- 接 Option131 烤火鸡 领取失败 未接任务 背包满
tNpcGossip[20340]["Text2-5"] = {251}
tNpcGossip[20340]["tOption2-5"] = {251}

-- 接 Option131 烤火鸡 领取成功
tNpcGossip[20340]["Text2-6"] = {261,262}
tNpcGossip[20340]["tOption2-6"] = {261}

-- 接 Option131 烤火鸡 任务未完成 已接任务 烤火鸡没有3个
tNpcGossip[20340]["Text2-7"] = {271}
tNpcGossip[20340]["tOption2-7"] = {271}

-- 接 Option131 烤火鸡 任务未完成 烤火鸡有3个
tNpcGossip[20340]["Text2-8"] = {281}
tNpcGossip[20340]["tOption2-8"] = {281}

-- 接 Option131 烤火鸡 任务完成 背包满
tNpcGossip[20340]["Text2-9"] = {291,292}
tNpcGossip[20340]["tOption2-9"] = {291}

-- 接 Option131 烤火鸡 任务完成
tNpcGossip[20340]["Text3-1"] = {311}
tNpcGossip[20340]["tOption3-1"] = {311}

-- 【 20341 兔大姐 4495 】
tNpcFace[4495] = 193

tNpcGossip[20341] = tNpcGossip[20341] or DefaultNpc:new{}
tNpcGossip[20341]["OptionHidden"] = 1
tNpcGossip[20341]["DialogueText"] = tBunnyFamily_Text[20341]

-- 活动前
tNpcGossip[20341]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20341]["tOption1-1"] = {1}
tNpcGossip[20341]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动后
tNpcGossip[20341]["Text1-4"] = {141,142}
tNpcGossip[20341]["tOption1-4"] = {8}
tNpcGossip[20341]["ChkFunc1-4"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动中，玩家等级未达到条件
tNpcGossip[20341]["Text1-2"] = {121,122,123,124}
tNpcGossip[20341]["tOption1-2"] = {2}
tNpcGossip[20341]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 活动中，玩家等级满足
tNpcGossip[20341]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20341]["tOption1-3"] = {3,131,132,4}
tNpcGossip[20341]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			BunnyFamily_Option(20341)
			return true
		end
	end
	
	return false
end
tNpcGossip[20341]["OptionChkFunc131"] = function ()
	local nNpcId = Get_NpcId()
	local nItemId = tBunnyFamily_Data["Itemtype"][20339]
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	
	-- 已完成或已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return false
	end
	
	-- 未接任务
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return false
	end
	
	-- 今日已送
	local nEventType1 = tBunnyFamily_Stc[nItemId+1000000]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nItemId+1000000]["DataType"]
	Task_StcReset(nEventType1,nDataType1)
	local nValue = Get_UserStatisticValue(nEventType1,nDataType1)
	local nIndex = tBunnyFamily_Mission[nNpcId]
	if Sys_ParseNumbersContain(tBunnyFamily_Mission[nIndex],nValue) then
		return false
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end
tNpcGossip[20341]["OptionChkFunc132"] = function ()
	local nNpcId = Get_NpcId()
	local nItemId = tBunnyFamily_Data["Itemtype"][20340]
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	
	-- 已完成或已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return false
	end
	
	-- 未接任务
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return false
	end
	
	-- 今日已送
	local nEventType1 = tBunnyFamily_Stc[nItemId+1000000]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nItemId+1000000]["DataType"]
	Task_StcReset(nEventType1,nDataType1)
	local nValue = Get_UserStatisticValue(nEventType1,nDataType1)
	local nIndex = tBunnyFamily_Mission[nNpcId]
	if Sys_ParseNumbersContain(tBunnyFamily_Mission[nIndex],nValue) then
		return false
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end
tNpcGossip[20341]["OptionFunc3"] = "BunnyFamily_GetEgg</N>20341"
tNpcGossip[20341]["OptionFunc131"] = "BunnyFamily_Deliver</N>20341</N>1</N>3307314"
tNpcGossip[20341]["OptionFunc132"] = "BunnyFamily_Deliver</N>20341</N>1</N>3307313"

-- 接 Option3 玩家等级满足，今日已领取过
tNpcGossip[20341]["Text2-1"] = {211,212,213}
tNpcGossip[20341]["tOption2-1"] = {5}

-- 接 Option3 玩家等级满足，今日未领取，背包满
tNpcGossip[20341]["Text2-2"] = {221}
tNpcGossip[20341]["tOption2-2"] = {6}

-- 接 Option3 玩家满足条件，领取成功
tNpcGossip[20341]["Text2-3"] = {231}
tNpcGossip[20341]["tOption2-3"] = {7}

-- 接 Option131 不是最后一个获得蛋糕
tNpcGossip[20341]["Text2-4"] = {241}
tNpcGossip[20341]["tOption2-4"] = {241}

-- 接 Option131 最后一个得到蛋糕
tNpcGossip[20341]["Text2-5"] = {251,252}
tNpcGossip[20341]["tOption2-5"] = {251}

-- 接 Option132
tNpcGossip[20341]["Text2-6"] = {261}
tNpcGossip[20341]["tOption2-6"] = {261}

-- 【 20342 兔二姐 4496 】
tNpcFace[4496] = 193

tNpcGossip[20342] = tNpcGossip[20342] or DefaultNpc:new{}
tNpcGossip[20342]["OptionHidden"] = 1
tNpcGossip[20342]["DialogueText"] = tBunnyFamily_Text[20342]

-- 活动前
tNpcGossip[20342]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20342]["tOption1-1"] = {1}
tNpcGossip[20342]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动后
tNpcGossip[20342]["Text1-4"] = {141}
tNpcGossip[20342]["tOption1-4"] = {8}
tNpcGossip[20342]["ChkFunc1-4"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动中，玩家等级未达到条件
tNpcGossip[20342]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[20342]["tOption1-2"] = {2}
tNpcGossip[20342]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 活动中，玩家等级满足
tNpcGossip[20342]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20342]["tOption1-3"] = {3,131,132,4}
tNpcGossip[20342]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			BunnyFamily_Option(20342)
			return true
		end
	end
	
	return false
end
tNpcGossip[20342]["OptionChkFunc131"] = function ()
	local nNpcId = Get_NpcId()
	local nItemId = tBunnyFamily_Data["Itemtype"][20339]
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	
	-- 已完成或已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return false
	end
	
	-- 未接任务
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return false
	end
	
	-- 今日已送
	local nEventType1 = tBunnyFamily_Stc[nItemId+1000000]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nItemId+1000000]["DataType"]
	Task_StcReset(nEventType1,nDataType1)
	local nValue = Get_UserStatisticValue(nEventType1,nDataType1)
	local nIndex = tBunnyFamily_Mission[nNpcId]
	if Sys_ParseNumbersContain(tBunnyFamily_Mission[nIndex],nValue) then
		return false
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end
tNpcGossip[20342]["OptionChkFunc132"] = function ()
	local nNpcId = Get_NpcId()
	local nItemId = tBunnyFamily_Data["Itemtype"][20340]
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	
	-- 已完成或已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return false
	end
	
	-- 未接任务
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return false
	end
	
	-- 今日已送
	local nEventType1 = tBunnyFamily_Stc[nItemId+1000000]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nItemId+1000000]["DataType"]
	Task_StcReset(nEventType1,nDataType1)
	local nValue = Get_UserStatisticValue(nEventType1,nDataType1)
	local nIndex = tBunnyFamily_Mission[nNpcId]
	if Sys_ParseNumbersContain(tBunnyFamily_Mission[nIndex],nValue) then
		return false
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end
tNpcGossip[20342]["OptionFunc3"] = "BunnyFamily_GetEgg</N>20342"
tNpcGossip[20342]["OptionFunc131"] = "BunnyFamily_Deliver</N>20342</N>2</N>3307314"
tNpcGossip[20342]["OptionFunc132"] = "BunnyFamily_Deliver</N>20342</N>2</N>3307313"

-- 接 Option3 玩家等级满足，今日已领取过
tNpcGossip[20342]["Text2-1"] = {211,212}
tNpcGossip[20342]["tOption2-1"] = {5}

-- 接 Option3 玩家等级满足，今日未领取，背包满
tNpcGossip[20342]["Text2-2"] = {221}
tNpcGossip[20342]["tOption2-2"] = {6}

-- 接 Option3 玩家满足条件，领取成功
tNpcGossip[20342]["Text2-3"] = {231}
tNpcGossip[20342]["tOption2-3"] = {7}

-- 接 Option131 不是最后一个获得蛋糕
tNpcGossip[20342]["Text2-4"] = {241}
tNpcGossip[20342]["tOption2-4"] = {241}

-- 接 Option131 最后一个得到蛋糕
tNpcGossip[20342]["Text2-5"] = {251,252}
tNpcGossip[20342]["tOption2-5"] = {251}

-- 接 Option132
tNpcGossip[20342]["Text2-6"] = {261}
tNpcGossip[20342]["tOption2-6"] = {261}

-- 【 20343 兔小弟 4497 】
tNpcFace[4497] = 192

tNpcGossip[20343] = tNpcGossip[20343] or DefaultNpc:new{}
tNpcGossip[20343]["OptionHidden"] = 1
tNpcGossip[20343]["DialogueText"] = tBunnyFamily_Text[20343]

-- 活动前
tNpcGossip[20343]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[20343]["tOption1-1"] = {1}
tNpcGossip[20343]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动后
tNpcGossip[20343]["Text1-4"] = {141}
tNpcGossip[20343]["tOption1-4"] = {8}
tNpcGossip[20343]["ChkFunc1-4"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动中，玩家等级未达到条件
tNpcGossip[20343]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[20343]["tOption1-2"] = {2}
tNpcGossip[20343]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end

-- 活动中，玩家等级满足
tNpcGossip[20343]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20343]["tOption1-3"] = {3,131,132,4}
tNpcGossip[20343]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tBunnyFamily_Data["Level"],tBunnyFamily_Data["Metempsychosis"]) then
			BunnyFamily_Option(20343)
			return true
		end
	end
	
	return false
end
tNpcGossip[20343]["OptionChkFunc131"] = function ()
	local nNpcId = Get_NpcId()
	local nItemId = tBunnyFamily_Data["Itemtype"][20339]
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	
	-- 已完成或已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return false
	end
	
	-- 未接任务
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return false
	end
	
	-- 今日已送
	local nEventType1 = tBunnyFamily_Stc[nItemId+1000000]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nItemId+1000000]["DataType"]
	Task_StcReset(nEventType1,nDataType1)
	local nValue = Get_UserStatisticValue(nEventType1,nDataType1)
	local nIndex = tBunnyFamily_Mission[nNpcId]
	if Sys_ParseNumbersContain(tBunnyFamily_Mission[nIndex],nValue) then
		return false
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end
tNpcGossip[20343]["OptionChkFunc132"] = function ()
	local nNpcId = Get_NpcId()
	local nItemId = tBunnyFamily_Data["Itemtype"][20340]
	local nEventType = tBunnyFamily_Stc[nItemId]["EventType"]
	local nDataType = tBunnyFamily_Stc[nItemId]["DataType"]
	Task_StcReset(nEventType,nDataType)
	
	-- 已完成或已领奖
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return false
	end
	
	-- 未接任务
	if Task_ChkStcValue(nEventType,nDataType,"<=",0) then
		return false
	end
	
	-- 今日已送
	local nEventType1 = tBunnyFamily_Stc[nItemId+1000000]["EventType"]
	local nDataType1 = tBunnyFamily_Stc[nItemId+1000000]["DataType"]
	Task_StcReset(nEventType1,nDataType1)
	local nValue = Get_UserStatisticValue(nEventType1,nDataType1)
	local nIndex = tBunnyFamily_Mission[nNpcId]
	if Sys_ParseNumbersContain(tBunnyFamily_Mission[nIndex],nValue) then
		return false
	end
	
	-- 无物品
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	return true
end
tNpcGossip[20343]["OptionFunc3"] = "BunnyFamily_GetEgg</N>20343"
tNpcGossip[20343]["OptionFunc131"] = "BunnyFamily_Deliver</N>20343</N>3</N>3307314"
tNpcGossip[20343]["OptionFunc132"] = "BunnyFamily_Deliver</N>20343</N>3</N>3307313"

-- 接 Option3 玩家等级满足，今日已领取过
tNpcGossip[20343]["Text2-1"] = {211,212}
tNpcGossip[20343]["tOption2-1"] = {5}

-- 接 Option3 玩家等级满足，今日未领取，背包满
tNpcGossip[20343]["Text2-2"] = {221}
tNpcGossip[20343]["tOption2-2"] = {6}

-- 接 Option3 玩家满足条件，领取成功
tNpcGossip[20343]["Text2-3"] = {231,232}
tNpcGossip[20343]["tOption2-3"] = {7}

-- 接 Option131 不是最后一个获得蛋糕
tNpcGossip[20343]["Text2-4"] = {241}
tNpcGossip[20343]["tOption2-4"] = {241}

-- 接 Option131 最后一个得到蛋糕
tNpcGossip[20343]["Text2-5"] = {251,252}
tNpcGossip[20343]["tOption2-5"] = {251}

-- 接 Option132
tNpcGossip[20343]["Text2-6"] = {261}
tNpcGossip[20343]["tOption2-6"] = {261}

-- 【 20344 彩蛋商店 4498 】
tNpcFace[4498] = 393

tNpcGossip[20344] = tNpcGossip[20344] or DefaultNpc:new{}
tNpcGossip[20344]["OptionHidden"] = 1
tNpcGossip[20344]["DialogueText"] = tBunnyFamily_Text[20344]

-- 活动前
tNpcGossip[20344]["Text1-1"] = {111,112,113}
tNpcGossip[20344]["tOption1-1"] = {1}
tNpcGossip[20344]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["Easter"]["ActivityTime"])
end

-- 活动中
tNpcGossip[20344]["Text1-2"] = {121,122,123,124}
tNpcGossip[20344]["tOption1-2"] = {2,3}
tNpcGossip[20344]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tActivityTime["Easter"]["ActivityTime"])
end
tNpcGossip[20344]["OptionFunc2"] = "BunnyFamily_OpenShop</N>20344"

-- 活动后
tNpcGossip[20344]["Text1-3"] = {131}
tNpcGossip[20344]["tOption1-3"] = {4}
tNpcGossip[20344]["ChkFunc1-3"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"])
end
-------------------------------------物品模板----------------------------------------------
-- 兔兔彩蛋 3302214
tItem[3302214]=tItem[3302214] or {}
tItem[3302214]["Function"]=function(nItemId,sItemName)
	BunnyFamily_UseEgg(nItemId)
end

-- 小兔币 3302215
tItem[3302215]=tItem[3302215] or {}
tItem[3302215]["Function"]=function(nItemId,sItemName)
	BunnyFamily_Coin(nItemId)
end

-- 复活节天石包 3302216
tItem[3302216]=tItem[3302216] or {}
tItem[3302216]["Function"]=function(nItemId,sItemName)
	BunnyFamily_EmoneyPack(nItemId)
end

-- 小兔变身糖果包 3302217
tItem[3302217]=tItem[3302217] or {}
tItem[3302217]["Function"]=function(nItemId,sItemName)
	BunnyFamily_CandyPack(nItemId)
end

-- 小兔变身糖 3302218
tItem[3302218]=tItem[3302218] or {}
tItem[3302218]["Function"]=function(nItemId,sItemName)
	BunnyFamily_Candy(nItemId)
end

-- 圣灵玉兔外套碎片 3302219
tItem[3302219]=tItem[3302219] or {}
tItem[3302219]["DialogueText"] = tBunnyFamily_Text[3302219]
tItem[3302219]["Text1-1"] = {111,112}
tItem[3302219]["tOption1-1"] = {1,2,3}
tItem[3302219]["OptionFunc1"] = "BunnyFamily_Fragment</N>3302219</N>1"
tItem[3302219]["OptionFunc2"] = "BunnyFamily_Fragment</N>3302219</N>15"

-- 成功
tItem[3302219]["Text1-2"] = {121}
tItem[3302219]["tOption1-2"] = {4}
tItem[3302219]["OptionFunc4"] = "BunnyFamily_MainDialog</N>3302219"

-- 失败
tItem[3302219]["Text1-3"] = {131}
tItem[3302219]["tOption1-3"] = {5}
tItem[3302219]["OptionFunc5"] = "BunnyFamily_MainDialog</N>3302219"

-- 气力值礼包
tItem[3302405] = tItem[3302405] or {}
tItem[3302405]["Function"] = function(nItemId,sItemName)
	BunnyFamily_UseGift(nItemId)
end

-- 微光星陨石礼盒
tItem[3302406] = tItem[3302406] or {}
tItem[3302406]["Function"] = function(nItemId,sItemName)
	BunnyFamily_UseGift(nItemId)
end

-- 明亮星陨石礼盒
tItem[3302407] = tItem[3302407] or {}
tItem[3302407]["Function"] = function(nItemId,sItemName)
	BunnyFamily_UseGift(nItemId)
end

-- 背包信头像
tItemFace[3302220] = 398

-- 3307310 小兔变身糖彩虹糖
tItem[3307310]=tItem[3307310] or {}
tItem[3307310]["Function"]=function(nItemId,sItemName)
	BunnyFamily_NewCandy(nItemId)
end

-- 3307311 1%神佑萌萌兔套装礼盒
-- 3307312 1%神佑小精灵套装礼盒
tItem[3307311]=tItem[3307311] or {}
tItem[3307312]=tItem[3307311] or {}
tItem[3307311]["Function"]=function(nItemId,sItemName)
	-- 判断时间
	local nNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tBunnyFamily_Data["Log"]["TimeOutDel"],nItemId,nNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"]) then
		Item_DelMulItem(nItemId,nItemId,nNum)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tBunnyFamily_Text["TimeOut"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward[nItemId])
end

-- 3307313 烤火鸡
-- 3307314 胡萝卜蛋糕
tItem[3307313]=tItem[3307313] or {}
tItem[3307314]=tItem[3307313] or {}
tItem[3307313]["Function"]=function(nItemId,sItemName)
	-- 判断时间
	local nNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tBunnyFamily_Data["Log"]["TimeOutDel"],nItemId,nNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["Easter"]["ActivityTime"]) then
		Item_DelMulItem(nItemId,nItemId,nNum)
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(tBunnyFamily_Text["TimeOut"])
		return
	end
	
	local nNpcId = tBunnyFamily_Data["NpcId"][nItemId]
	NpcPosition_PathFind(nNpcId)
end

-- 3307315 2018惊喜财运宝箱
tItem[3307315]=tItem[3307315] or {}
tItem[3307315]["Function"]=function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tBunnyFamily_Reward[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward[nItemId],nUserId,bJudge)
end


-- 3320165 2019惊喜财运宝箱
tItem[3320165]=tItem[3320165] or {}
tItem[3320165]["Function"]=function(nItemId,sItemName)
	local nUserId = Get_UserId()
	local bJudge = TermsOfUse_Main(nItemId,tBunnyFamily_Reward[nItemId])
	if not bJudge then
		return
	end
	RewardTemplate_UseItemAndMsg(tBunnyFamily_Reward[nItemId],nUserId,bJudge)
end
----------------------------------------怪物模板-------------------------------------------------
local tBunnyFamily_KillMonster = {}
tBunnyFamily_KillMonster["ActivityTime"] = tActivityTime["Easter"]["ActivityTime"]
tBunnyFamily_KillMonster["Function"] = BunnyFamily_KillMonster
table.insert(tMonsterDrop_AreaLoad,tBunnyFamily_KillMonster)
------------------------------------203W----------------------------------------------------------------
-- 时间函数触发
local tBunnyFamily_Time = {}
	
	tBunnyFamily_Time[1] = {}
	tBunnyFamily_Time[1]["Type"] = 2
	tBunnyFamily_Time[1]["TimeType"] = 4
	tBunnyFamily_Time[1]["Time"] = "00:00 00:02"
	tBunnyFamily_Time[1]["Func"] = BunnyFamily_ClearSynaGlobalData
	
	
	tBunnyFamily_Time[2] = {}
	tBunnyFamily_Time[2]["Type"] = 2
	tBunnyFamily_Time[2]["TimeType"] = 4
	tBunnyFamily_Time[2]["Time"] = "00:03 00:04"
	tBunnyFamily_Time[2]["Func"] = BunnyFamily_ClearSynaGlobalDataFlag
	
table.insert(tSystemTime_InitialData,tBunnyFamily_Time[1])
table.insert(tSystemTime_InitialData,tBunnyFamily_Time[2])