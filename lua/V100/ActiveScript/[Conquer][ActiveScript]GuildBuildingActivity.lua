------------------------------------------------------------------------------------
--Name:			170216[英文征服][活动脚本]3月帮派建设线上活动
--Purpose:		3月帮派建设线上活动
--Creator:		陈琳
--Created:		2017/02/16
------------------------------------------------------------------------------------
-- 命名前缀
-- GuildBuildingActivity_

-- LuaId
-- 40467

-- LogId
-- 12000658

-- stc掩码说明
-- 原有：
-- 122,47 记录玩家是否领取签到和在线奖励
-- 122,48 记录玩家每天上交木材的数量
-- 122,49 记录玩家每天上交大理石的数量
-- 122,50 记录玩家每天上交花岗岩的数量
-- 122,51 记录玩家每天上交金砖的数量
-- 122,59 记录玩家每天上交火药的数量
-- 122,60 记录玩家每天上交防御工事的数量
-- 124,14 记录玩家总的上交积分
-- 124,15 记录玩家今天上交积分
-- 124,16 记录玩家领取积极贡献礼包的次数
-- 124,17 记录玩家是否领取过热心参与礼包
-- 新增：
-- 156,77 记录帮主是否领取签到奖励
-- 156,78 记录帮主是否是第一次领取签到奖励
-- 156,79 记录玩家领取返利礼包的情况
-- 156,87 背包信
-- 157,61 记录每天打开竞技场礼包3007309获得的大理石数
-- 157,62 记录每天打开组队竞技场礼包3007308获得的大理石数

-- 动态码说明
-- 原有：
-- 50479 地图3838
---- data0 记录帮派ID
---- data1 记录当前地图是否下过龙珠雨
---- data2 记录当前地图是否下过天石雨
---- data3 记录PhantomBeast刷新规则
---- data4 记录VolcanoBeast刷新规则
-- 50480 地图3839 同上
-- 50481 地图3840 同上
-- 新增
-- 51485 地图10130 同上
-- 51486 地图3838
---- data0 记录当前地图掉落龙珠数
---- data1 记录当前地图掉落流星数
---- data2 记录当前地图掉落大盒子数
---- data3 记录当前地图掉落小盒子数
-- 51487 地图3839 同上
-- 51488 地图3840 同上
-- 51489 地图10130 同上
-- 51491 用于区分新老服
---- data0 0为老服 1为新服
---- data1 清理动态码开关

-- ItemId
-- 已有部分
-- 3003495 木材
-- 3003496 大理石
-- 3003497 花岗岩 3005912 促销活动里的花岗岩ID
-- 3003498 金砖
-- 3003499 火药
-- 3003500 防御工事
-- 3003504 10块金砖包
-- 3003505 20块金砖包
-- 3003520 30块金砖包
-- 3003525 热心参与礼包
-- 3003526 积极贡献礼包
-- 3003527 实力回馈礼包
-- 新增：
-- 3302461 在线活跃礼包 木材返利礼包
-- 3302462 PK活跃礼包 大理石返利礼包
-- 3302463 充值活跃礼包 金砖返利礼包
-- 3302464 消费活跃礼包 花岗岩返利礼包
-- 3302515 背包信
-- 3302527 50块金砖箱
-- 帮派建设发奖action新增：
-- 3302419 FirstGuildKey
-- 3302420 SecondGuildKey
-- 3302421 ThirdGuildKey
-- 3302422 FourthGuildKey
-- 3302415 FirstGuildBadge
-- 3302416 SecondGuildBadge
-- 3302417 ThirdGuildBadge
-- 3302418 FourthGuildBadge

-- NpcId
-- 20373 帮派建设木材专员
-- 20374 帮主有礼签到专员
-- 20375 帮派建设返利专员
-- 20376 黑市建材商
-- 20377 帮派建设特使
-- 20372 帮派会所管理员（场外）
-- 20393 帮派会所管理员（场内）
-- 20394 帮派会所管理员（场内）
-- 20395 帮派会所管理员（场内）
-- 20396 帮派会所管理员（场内）

-- MapId
-- 原有：
-- 3838 3839 3840 帮派会所
-- 新增：
-- 10130 帮派会所

-- 怪物ID
-- 原有：
-- 2738 PhantomBeast 龙珠雨
-- 2739 VolcanoBeast 天石雨
--------------------------------------数据部分-------------------------------------------
local tGuildBuildingActivity_Data = {}
	-- 活动时间
	tGuildBuildingActivity_Data["ActivityTime"] = "2017-03-20 00:00 2017-04-08 23:59"
	
	-- 等级要求
	tGuildBuildingActivity_Data["MinMeto"] = 0
	tGuildBuildingActivity_Data["Level"] = {}
	tGuildBuildingActivity_Data["Level"][0] = 120
	tGuildBuildingActivity_Data["Level"][1] = 110
	tGuildBuildingActivity_Data["Guild"] = {}
	tGuildBuildingActivity_Data["Guild"][0] = 5
	tGuildBuildingActivity_Data["Guild"][1] = 3
	
	-- 动态码 用于区分新老服
	tGuildBuildingActivity_Data["Server"] = 51491
	
	-- 背包空间
	tGuildBuildingActivity_Data["Space"] = {}
	tGuildBuildingActivity_Data["Space"]["Wood"] = 1
	tGuildBuildingActivity_Data["Space"]["LeaderFirst"] = 2
	tGuildBuildingActivity_Data["Space"]["LeaderNext"] = 1
	tGuildBuildingActivity_Data["Space"]["Pack"] = 1
	tGuildBuildingActivity_Data["Space"]["Packs"] = 2
	
	-- 叠加数
	tGuildBuildingActivity_Data["Accumulate"] = 100
	
	-- 竞技场礼包获得大理石上限
	tGuildBuildingActivity_Data["MarbleLimit"] = 4
	
	-- 记录已领奖的帮主的帮派ID
	tGuildBuildingActivity_Data["RewardGuild"] = {}
	
	-- 活动页面
	tGuildBuildingActivity_Data["WebSite"] = "http://event.co.99.com/guildmap2017/"
	
	-- 帮派建设木材专员 20373 20379 领取木材失败对白选项
	tGuildBuildingActivity_Data["AwardFailTimber"] = {}
	tGuildBuildingActivity_Data["AwardFailTimber"][1] = "2-5"	-- 首次
	tGuildBuildingActivity_Data["AwardFailTimber"][2] = "2-6"	-- 第2次
	tGuildBuildingActivity_Data["AwardFailTimber"][3] = "2-7"	-- 第3次
	
	-- 帮派建设木材专员 20373 20379 领取木材成功对白选项
	tGuildBuildingActivity_Data["AwardTimber"] = {}
	tGuildBuildingActivity_Data["AwardTimber"][1] = "3-1"	-- 首次
	tGuildBuildingActivity_Data["AwardTimber"][2] = "3-2"	-- 第2次
	tGuildBuildingActivity_Data["AwardTimber"][3] = "3-3"	-- 第3次
	
	-- 帮派建设返利专员 20375 20381 领取返利礼包因上交材料不足失败对白
	tGuildBuildingActivity_Data["Fail"] = {}
	tGuildBuildingActivity_Data["Fail"][1] = "2-3"	-- 木材
	tGuildBuildingActivity_Data["Fail"][2] = "2-4"	-- 大理石
	tGuildBuildingActivity_Data["Fail"][3] = "2-5"	-- 金砖
	tGuildBuildingActivity_Data["Fail"][4] = "2-6"	-- 花岗岩
	
	-- 帮派建设返利专员 20375 20381 领取返利礼包成功对白
	tGuildBuildingActivity_Data["Success"] = {}
	tGuildBuildingActivity_Data["Success"][1] = "3-1"	-- 木材
	tGuildBuildingActivity_Data["Success"][2] = "3-2"	-- 大理石
	tGuildBuildingActivity_Data["Success"][3] = "3-3"	-- 金砖
	tGuildBuildingActivity_Data["Success"][4] = "3-4"	-- 花岗岩
	
	-- 帮派建设返利专员 20375 20381  领取返利礼包需要上交材料的数量
	tGuildBuildingActivity_Data["Num"] = {}
	tGuildBuildingActivity_Data["Num"][1] = 7
	tGuildBuildingActivity_Data["Num"][2] = 8
	tGuildBuildingActivity_Data["Num"][3] = 10
	tGuildBuildingActivity_Data["Num"][4] = 10
	
	-- 物品ID
	tGuildBuildingActivity_Data["ItemType"] = {}
	tGuildBuildingActivity_Data["ItemType"]["Bomb"] = 3003499 -- 火药
	tGuildBuildingActivity_Data["ItemType"]["Defense"] = 3003500 -- 防御工事
	tGuildBuildingActivity_Data["ItemType"]["DragonBall"] = 1088000 -- 龙珠
	tGuildBuildingActivity_Data["ItemType"]["Star"] = 1088001 -- 流星
	tGuildBuildingActivity_Data["ItemType"]["Big"] = 720660 -- 大盒子
	tGuildBuildingActivity_Data["ItemType"]["Small"] = 728006 -- 小盒子
	tGuildBuildingActivity_Data["ItemType"][1] = 3003495 -- 木材
	tGuildBuildingActivity_Data["ItemType"][2] = 3003496 -- 大理石
	tGuildBuildingActivity_Data["ItemType"][3] = 3003498 -- 金砖
	tGuildBuildingActivity_Data["ItemType"][4] = 3005912 -- 花岗岩
	tGuildBuildingActivity_Data["ItemType"]["Old"] = 3003497 -- 花岗岩
	
	-- 上交不同建材获得不同的积分
	tGuildBuildingActivity_Data["SubmitPoints"] = {}
	tGuildBuildingActivity_Data["SubmitPoints"][3003495] = 5
	tGuildBuildingActivity_Data["SubmitPoints"][3003496] = 10
	tGuildBuildingActivity_Data["SubmitPoints"][3005912] = 100
	tGuildBuildingActivity_Data["SubmitPoints"][3003498] = 100
	
	-- 上交建材 掩码索引
	tGuildBuildingActivity_Data["SubmitIndex"] = {}
	tGuildBuildingActivity_Data["SubmitIndex"][3003495] = 1
	tGuildBuildingActivity_Data["SubmitIndex"][3003496] = 2
	tGuildBuildingActivity_Data["SubmitIndex"][3005912] = 4
	tGuildBuildingActivity_Data["SubmitIndex"][3003498] = 3
	
	tGuildBuildingActivity_Data["Square"] = {}
	-- NPC索引
	tGuildBuildingActivity_Data["Square"]["NPC"] = {}
	tGuildBuildingActivity_Data["Square"]["NPC"][20393] = 1
	tGuildBuildingActivity_Data["Square"]["NPC"][20394] = 2
	tGuildBuildingActivity_Data["Square"]["NPC"][20395] = 3
	tGuildBuildingActivity_Data["Square"]["NPC"][20396] = 4
	-- 地图索引
	tGuildBuildingActivity_Data["Square"]["Map"] = {}
	tGuildBuildingActivity_Data["Square"]["Map"][3838] = 1
	tGuildBuildingActivity_Data["Square"]["Map"][3839] = 2
	tGuildBuildingActivity_Data["Square"]["Map"][3840] = 3
	tGuildBuildingActivity_Data["Square"]["Map"][10130] = 4
	-- 钥匙
	tGuildBuildingActivity_Data["Square"]["Key"] = {}
	tGuildBuildingActivity_Data["Square"]["Key"][1] = 3302419
	tGuildBuildingActivity_Data["Square"]["Key"][2] = 3302420
	tGuildBuildingActivity_Data["Square"]["Key"][3] = 3302421
	tGuildBuildingActivity_Data["Square"]["Key"][4] = 3302422
	-- 令牌
	tGuildBuildingActivity_Data["Square"]["Badge"] = {}
	tGuildBuildingActivity_Data["Square"]["Badge"][1] = 3302415
	tGuildBuildingActivity_Data["Square"]["Badge"][2] = 3302416
	tGuildBuildingActivity_Data["Square"]["Badge"][3] = 3302417
	tGuildBuildingActivity_Data["Square"]["Badge"][4] = 3302418
	-- 动态码 记录帮派ID、龙珠雨、天石雨及刷怪规则
	tGuildBuildingActivity_Data["Square"]["Global"] = {}
	tGuildBuildingActivity_Data["Square"]["Global"][1] = 50479
	tGuildBuildingActivity_Data["Square"]["Global"][2] = 50480
	tGuildBuildingActivity_Data["Square"]["Global"][3] = 50481
	tGuildBuildingActivity_Data["Square"]["Global"][4] = 51485
	-- 动态码 龙珠、流星、天石掉落
	tGuildBuildingActivity_Data["Square"]["Drop"] = {}
	tGuildBuildingActivity_Data["Square"]["Drop"][1] = 51486
	tGuildBuildingActivity_Data["Square"]["Drop"][2] = 51487
	tGuildBuildingActivity_Data["Square"]["Drop"][3] = 51488
	tGuildBuildingActivity_Data["Square"]["Drop"][4] = 51489
	-- 龙珠掉率
	tGuildBuildingActivity_Data["Square"]["DropBall"] = {}
	tGuildBuildingActivity_Data["Square"]["DropBall"][1] = 50
	tGuildBuildingActivity_Data["Square"]["DropBall"][2] = 40
	tGuildBuildingActivity_Data["Square"]["DropBall"][3] = 26
	tGuildBuildingActivity_Data["Square"]["DropBall"][4] = 16
	-- 龙珠掉落最大量
	tGuildBuildingActivity_Data["Square"]["MaxBall"] = {}
	tGuildBuildingActivity_Data["Square"]["MaxBall"][1] = 150
	tGuildBuildingActivity_Data["Square"]["MaxBall"][2] = 120
	tGuildBuildingActivity_Data["Square"]["MaxBall"][3] = 80
	tGuildBuildingActivity_Data["Square"]["MaxBall"][4] = 50
	-- 流星掉落最大量
	tGuildBuildingActivity_Data["Square"]["MaxStar"] = {}
	tGuildBuildingActivity_Data["Square"]["MaxStar"][1] = 2853
	tGuildBuildingActivity_Data["Square"]["MaxStar"][2] = 2883
	tGuildBuildingActivity_Data["Square"]["MaxStar"][3] = 2923
	tGuildBuildingActivity_Data["Square"]["MaxStar"][4] = 2953
	-- 大盒子掉率
	tGuildBuildingActivity_Data["Square"]["DropBig"] = {}
	tGuildBuildingActivity_Data["Square"]["DropBig"][1] = 16
	tGuildBuildingActivity_Data["Square"]["DropBig"][2] = 0
	tGuildBuildingActivity_Data["Square"]["DropBig"][3] = 0
	tGuildBuildingActivity_Data["Square"]["DropBig"][4] = 0
	-- 小盒子掉率
	tGuildBuildingActivity_Data["Square"]["DropSmall"] = {}
	tGuildBuildingActivity_Data["Square"]["DropSmall"][1] = 974
	tGuildBuildingActivity_Data["Square"]["DropSmall"][2] = 925
	tGuildBuildingActivity_Data["Square"]["DropSmall"][3] = 556
	tGuildBuildingActivity_Data["Square"]["DropSmall"][4] = 370
	-- 大盒子掉落最大量
	tGuildBuildingActivity_Data["Square"]["MaxBig"] = {}
	tGuildBuildingActivity_Data["Square"]["MaxBig"][1] = 47
	tGuildBuildingActivity_Data["Square"]["MaxBig"][2] = 0
	tGuildBuildingActivity_Data["Square"]["MaxBig"][3] = 0
	tGuildBuildingActivity_Data["Square"]["MaxBig"][4] = 0
	-- 小盒子掉落最大量
	tGuildBuildingActivity_Data["Square"]["MaxSmall"] = {}
	tGuildBuildingActivity_Data["Square"]["MaxSmall"][1] = 2956
	tGuildBuildingActivity_Data["Square"]["MaxSmall"][2] = 2778
	tGuildBuildingActivity_Data["Square"]["MaxSmall"][3] = 1667
	tGuildBuildingActivity_Data["Square"]["MaxSmall"][4] = 1111
	-- 传送进地图
	tGuildBuildingActivity_Data["Square"]["InMap"] = {}
	tGuildBuildingActivity_Data["Square"]["InMap"][1] = 3838
	tGuildBuildingActivity_Data["Square"]["InMap"][2] = 3839
	tGuildBuildingActivity_Data["Square"]["InMap"][3] = 3840
	tGuildBuildingActivity_Data["Square"]["InMap"][4] = 10130
	tGuildBuildingActivity_Data["Square"]["InMap"]["CellX"] = 223
	tGuildBuildingActivity_Data["Square"]["InMap"]["CellY"] = 226
	-- 离开地图
	tGuildBuildingActivity_Data["Square"]["OutMap"] = {}
	tGuildBuildingActivity_Data["Square"]["OutMap"]["MapId"] = 1002
	tGuildBuildingActivity_Data["Square"]["OutMap"]["CellX"] = 348
	tGuildBuildingActivity_Data["Square"]["OutMap"]["CellY"] = 246
	-- GenId
	tGuildBuildingActivity_Data["Square"]["GenId"] = {}
	tGuildBuildingActivity_Data["Square"]["GenId"][1] = 16915
	tGuildBuildingActivity_Data["Square"]["GenId"][2] = 16916
	tGuildBuildingActivity_Data["Square"]["GenId"][3] = 16917
	tGuildBuildingActivity_Data["Square"]["GenId"][4] = 21171
	
	-- MonsterId
	tGuildBuildingActivity_Data["Monster"] = {}
	tGuildBuildingActivity_Data["Monster"]["PhantomBeast"] = 2738
	tGuildBuildingActivity_Data["Monster"]["VolcanoBeast"] = 2739
	
	-- 记录刷怪规则的data位
	tGuildBuildingActivity_Data["Pos"] = {}
	tGuildBuildingActivity_Data["Pos"][2738] = 3
	tGuildBuildingActivity_Data["Pos"][2739] = 4
	
	-- 刷怪数量变化的三个掩码临界值
	tGuildBuildingActivity_Data["Appear"] = {}
	tGuildBuildingActivity_Data["Appear"][1] = 2800
	tGuildBuildingActivity_Data["Appear"][2] = 2600
	tGuildBuildingActivity_Data["Appear"][3] = 2400
	
	tGuildBuildingActivity_Data["Log"] = {}
	-- 兑换
	tGuildBuildingActivity_Data["Log"]["Exchange"] = "0,0,3003498,%d,12000658,2,%d,%d"
	-- 上交
	tGuildBuildingActivity_Data["Log"]["Submit"] = "0,0,%d,%d,12000658,2,%d,%d"
	-- 开启帮派会所
	tGuildBuildingActivity_Data["Log"]["OpenGuildSquare"] = "0,0,%d,1,12000658,2,0,0"
	-- 进入帮派会所
	tGuildBuildingActivity_Data["Log"]["InGuildSquare"] = "0,0,%d,1,12000658,2,0,0"
	
	-- 二进制掩码值记录玩家领取返利礼包的情况
	tGuildBuildingActivity_Data["Return"] = {}
	for i = 1,4 do
		tGuildBuildingActivity_Data["Return"][i] = 2^(i-1)
	end
	
	-- stc掩码
	tGuildBuildingActivity_Data["Stc"] = {}
	-- 122,47 记录玩家是否领取签到和在线奖励
	tGuildBuildingActivity_Data["Stc"]["Sign"] = {}
	tGuildBuildingActivity_Data["Stc"]["Sign"]["EventType"] = 122
	tGuildBuildingActivity_Data["Stc"]["Sign"]["DataType"] = 47
	-- 156,77 记录帮主是否领取签到奖励
	tGuildBuildingActivity_Data["Stc"]["Leader"] = {}
	tGuildBuildingActivity_Data["Stc"]["Leader"]["EventType"] = 156
	tGuildBuildingActivity_Data["Stc"]["Leader"]["DataType"] = 77
	-- 156,78 记录帮主是否是第一次领取签到奖励
	tGuildBuildingActivity_Data["Stc"]["First"] = {}
	tGuildBuildingActivity_Data["Stc"]["First"]["EventType"] = 156
	tGuildBuildingActivity_Data["Stc"]["First"]["DataType"] = 78
	-- 156,79 记录玩家领取返利礼包的情况
	tGuildBuildingActivity_Data["Stc"]["Return"] = {}
	tGuildBuildingActivity_Data["Stc"]["Return"]["EventType"] = 156
	tGuildBuildingActivity_Data["Stc"]["Return"]["DataType"] = 79
	-- 122,48 记录玩家每天上交木材的数量
	tGuildBuildingActivity_Data["Stc"][1] = {}
	tGuildBuildingActivity_Data["Stc"][1]["EventType"] = 122
	tGuildBuildingActivity_Data["Stc"][1]["DataType"] = 48
	-- 122,49 记录玩家每天上交大理石的数量
	tGuildBuildingActivity_Data["Stc"][2] = {}
	tGuildBuildingActivity_Data["Stc"][2]["EventType"] = 122
	tGuildBuildingActivity_Data["Stc"][2]["DataType"] = 49
	-- 122,51 记录玩家每天上交金砖的数量
	tGuildBuildingActivity_Data["Stc"][3] = {}
	tGuildBuildingActivity_Data["Stc"][3]["EventType"] = 122
	tGuildBuildingActivity_Data["Stc"][3]["DataType"] = 51
	-- 122,50 记录玩家每天上交花岗岩的数量
	tGuildBuildingActivity_Data["Stc"][4] = {}
	tGuildBuildingActivity_Data["Stc"][4]["EventType"] = 122
	tGuildBuildingActivity_Data["Stc"][4]["DataType"] = 50
	-- 122,59 记录玩家每天上交火药的数量
	tGuildBuildingActivity_Data["Stc"][3003499] = {}
	tGuildBuildingActivity_Data["Stc"][3003499]["EventType"] = 122
	tGuildBuildingActivity_Data["Stc"][3003499]["DataType"] = 59
	-- 122,60 记录玩家每天上交防御工事的数量
	tGuildBuildingActivity_Data["Stc"][3003500] = {}
	tGuildBuildingActivity_Data["Stc"][3003500]["EventType"] = 122
	tGuildBuildingActivity_Data["Stc"][3003500]["DataType"] = 60
	-- 124,14 记录玩家总的上交积分
	tGuildBuildingActivity_Data["Stc"]["Sum"] = {}
	tGuildBuildingActivity_Data["Stc"]["Sum"]["EventType"] = 124
	tGuildBuildingActivity_Data["Stc"]["Sum"]["DataType"] = 14
	-- 124,15 记录玩家今天上交积分
	tGuildBuildingActivity_Data["Stc"]["Today"] = {}
	tGuildBuildingActivity_Data["Stc"]["Today"]["EventType"] = 124
	tGuildBuildingActivity_Data["Stc"]["Today"]["DataType"] = 15
	-- 124,16 记录玩家领取积极贡献礼包的次数
	tGuildBuildingActivity_Data["Stc"]["Contribute"] = {}
	tGuildBuildingActivity_Data["Stc"]["Contribute"]["EventType"] = 124
	tGuildBuildingActivity_Data["Stc"]["Contribute"]["DataType"] = 16
	-- 124,17 记录玩家是否领取过热心参与礼包
	tGuildBuildingActivity_Data["Stc"]["Partake"] = {}
	tGuildBuildingActivity_Data["Stc"]["Partake"]["EventType"] = 124
	tGuildBuildingActivity_Data["Stc"]["Partake"]["DataType"] = 17
	-- 157,61 记录每天打开竞技场礼包3007309获得的大理石数
	tGuildBuildingActivity_Data["Arena"] = {}
	tGuildBuildingActivity_Data["Arena"][1] = {}
	tGuildBuildingActivity_Data["Arena"][1]["EventType"] = 157
	tGuildBuildingActivity_Data["Arena"][1]["DataType"] = 61
	-- 157,62 记录每天打开组队竞技场礼包3007308获得的大理石数
	tGuildBuildingActivity_Data["Arena"][2] = {}
	tGuildBuildingActivity_Data["Arena"][2]["EventType"] = 157
	tGuildBuildingActivity_Data["Arena"][2]["DataType"] = 62
	
-- 刷怪坐标
local tGuildBuildingActivity_MonsterPos = {
	{181,157},{165,174},{261,174},{261,191},{165,225},
	{197,157},{181,174},{277,174},{277,191},{277,225},
	{213,157},{197,174},{165,191},{165,208},{165,242},
	{229,157},{213,174},{181,191},{181,208},{181,242},
	{245,157},{229,174},{197,191},{261,208},{261,242},
	{261,157},{245,174},{245,191},{277,208},{277,242},
	{165,259},{261,259},{197,276},{261,276},{213,293},
	{181,259},{277,259},{213,276},{277,276},{229,293},
	{197,259},{165,276},{229,276},{181,293},{245,293},
	{245,259},{181,276},{245,276},{197,293},{261,293}
}

local tGuildBuildingActivity_Reward = {}
	-- 玩家签到给木材 3003495
	tGuildBuildingActivity_Reward["Sign"] = {}
	tGuildBuildingActivity_Reward["Sign"]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Sign"]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Sign"]["RewardItem"][1]["Id"] = 3003495
	tGuildBuildingActivity_Reward["Sign"]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Sign"]["Log"] = "0,0,0,0,12000658,1,3003495,1"
	
	-- 在线给木材 3003495 第一次
	tGuildBuildingActivity_Reward["Online"] = {}
	tGuildBuildingActivity_Reward["Online"][1] = {}
	tGuildBuildingActivity_Reward["Online"][1]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Online"][1]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Online"][1]["RewardItem"][1]["Id"] = 3003495
	tGuildBuildingActivity_Reward["Online"][1]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Online"][1]["Log"] = "0,0,0,0,12000658,1,3003495,1"
	
	-- 在线给木材 3003495 第二次
	tGuildBuildingActivity_Reward["Online"][2] = {}
	tGuildBuildingActivity_Reward["Online"][2]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Online"][2]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Online"][2]["RewardItem"][1]["Id"] = 3003495
	tGuildBuildingActivity_Reward["Online"][2]["RewardItem"][1]["Attr"] = "0 2"
	tGuildBuildingActivity_Reward["Online"][2]["Log"] = "0,0,0,0,12000658,1,3003495,2"
	
	-- 在线给木材 3003495 第三次
	tGuildBuildingActivity_Reward["Online"][3] = {}
	tGuildBuildingActivity_Reward["Online"][3]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Online"][3]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Online"][3]["RewardItem"][1]["Id"] = 3003495
	tGuildBuildingActivity_Reward["Online"][3]["RewardItem"][1]["Attr"] = "0 3"
	tGuildBuildingActivity_Reward["Online"][3]["Log"] = "0,0,0,0,12000658,1,3003495,3"
	
	-- 帮主签到领建材 第一次 木材 3003495 100 花岗岩 3005912 100
	tGuildBuildingActivity_Reward["Leader"] = {}
	tGuildBuildingActivity_Reward["Leader"][1] = {}
	tGuildBuildingActivity_Reward["Leader"][1]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Leader"][1]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Leader"][1]["RewardItem"][1]["Id"] = 3003495
	tGuildBuildingActivity_Reward["Leader"][1]["RewardItem"][1]["Attr"] = "0 100"
	tGuildBuildingActivity_Reward["Leader"][1]["RewardItem"][2] = {}
	tGuildBuildingActivity_Reward["Leader"][1]["RewardItem"][2]["Id"] = 3005912
	tGuildBuildingActivity_Reward["Leader"][1]["RewardItem"][2]["Attr"] = "0 100"
	tGuildBuildingActivity_Reward["Leader"][1]["Log"] = "0,0,0,0,12000658,1,3003495[3005912],100[100]"
	
	-- 帮主签到领建材 非第一次 金砖 3003498 10
	tGuildBuildingActivity_Reward["Leader"][2] = {}
	tGuildBuildingActivity_Reward["Leader"][2]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Leader"][2]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Leader"][2]["RewardItem"][1]["Id"] = 3003498
	tGuildBuildingActivity_Reward["Leader"][2]["RewardItem"][1]["Attr"] = "0 10"
	tGuildBuildingActivity_Reward["Leader"][2]["Log"] = "0,0,0,0,12000658,1,3003498,10"
	
	-- 返利 3302461 在线活跃礼包
	tGuildBuildingActivity_Reward["Return"] = {}
	tGuildBuildingActivity_Reward["Return"][1] = {}
	tGuildBuildingActivity_Reward["Return"][1]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Return"][1]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Return"][1]["RewardItem"][1]["Id"] = 3302461
	tGuildBuildingActivity_Reward["Return"][1]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Return"][1]["Log"] = "0,0,0,0,12000658,2,3302461,1"
	
	-- 返利 3302462 PK活跃礼包
	tGuildBuildingActivity_Reward["Return"][2] = {}
	tGuildBuildingActivity_Reward["Return"][2]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Return"][2]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Return"][2]["RewardItem"][1]["Id"] = 3302462
	tGuildBuildingActivity_Reward["Return"][2]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Return"][2]["Log"] = "0,0,0,0,12000658,2,3302462,1"
	
	-- 返利 3302463 充值活跃礼包
	tGuildBuildingActivity_Reward["Return"][3] = {}
	tGuildBuildingActivity_Reward["Return"][3]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Return"][3]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Return"][3]["RewardItem"][1]["Id"] = 3302463
	tGuildBuildingActivity_Reward["Return"][3]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Return"][3]["Log"] = "0,0,0,0,12000658,2,3302463,1"
	
	-- 返利 3302464 消费活跃礼包
	tGuildBuildingActivity_Reward["Return"][4] = {}
	tGuildBuildingActivity_Reward["Return"][4]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Return"][4]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Return"][4]["RewardItem"][1]["Id"] = 3302464
	tGuildBuildingActivity_Reward["Return"][4]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Return"][4]["Log"] = "0,0,0,0,12000658,2,3302464,1"
	
	-- 3302461 在线活跃礼包 微光星陨石*1+300分钟经验
	tGuildBuildingActivity_Reward[3302461] = {}
	tGuildBuildingActivity_Reward[3302461]["RewardItem"] = {}
	tGuildBuildingActivity_Reward[3302461]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward[3302461]["RewardItem"][1]["Id"] = 3009000
	tGuildBuildingActivity_Reward[3302461]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tGuildBuildingActivity_Reward[3302461]["RewardItem"][2] = {}
	tGuildBuildingActivity_Reward[3302461]["RewardItem"][2]["Id"] = 3008965
	tGuildBuildingActivity_Reward[3302461]["RewardItem"][2]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward[3302461]["Log"] = "0,0,3302461,1,12000658,2,3009000[3008965],1[1]"
	tGuildBuildingActivity_Reward[3302461]["DeleteItem"] = {}
	tGuildBuildingActivity_Reward[3302461]["DeleteItem"][1] = {}
	tGuildBuildingActivity_Reward[3302461]["DeleteItem"][1]["Id"] = 3302461
	
	-- 3302462 PK活跃礼包 赤炼石+1（赠）*1+微光星陨石*1
	tGuildBuildingActivity_Reward[3302462] = {}
	tGuildBuildingActivity_Reward[3302462]["RewardItem"] = {}
	tGuildBuildingActivity_Reward[3302462]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward[3302462]["RewardItem"][1]["Id"] = 730001
	tGuildBuildingActivity_Reward[3302462]["RewardItem"][1]["Attr"] = "0 1 3"
	tGuildBuildingActivity_Reward[3302462]["RewardItem"][2] = {}
	tGuildBuildingActivity_Reward[3302462]["RewardItem"][2]["Id"] = 3009000
	tGuildBuildingActivity_Reward[3302462]["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	tGuildBuildingActivity_Reward[3302462]["Log"] = "0,0,3302462,1,12000658,2,730001[3009000],1[1]"
	tGuildBuildingActivity_Reward[3302462]["DeleteItem"] = {}
	tGuildBuildingActivity_Reward[3302462]["DeleteItem"][1] = {}
	tGuildBuildingActivity_Reward[3302462]["DeleteItem"][1]["Id"] = 3302462
	
	-- 3302463 充值活跃礼包 龙珠（赠）*1+回气丹*1
	tGuildBuildingActivity_Reward[3302463] = {}
	tGuildBuildingActivity_Reward[3302463]["RewardItem"] = {}
	tGuildBuildingActivity_Reward[3302463]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward[3302463]["RewardItem"][1]["Id"] = 1088000
	tGuildBuildingActivity_Reward[3302463]["RewardItem"][1]["Attr"] = "0 1 3"
	tGuildBuildingActivity_Reward[3302463]["RewardItem"][2] = {}
	tGuildBuildingActivity_Reward[3302463]["RewardItem"][2]["Id"] = 729242
	tGuildBuildingActivity_Reward[3302463]["RewardItem"][2]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward[3302463]["Log"] = "0,0,3302463,1,12000658,2,1088000[729242],1[1]"
	tGuildBuildingActivity_Reward[3302463]["DeleteItem"] = {}
	tGuildBuildingActivity_Reward[3302463]["DeleteItem"][1] = {}
	tGuildBuildingActivity_Reward[3302463]["DeleteItem"][1]["Id"] = 3302463
	
	-- 3302464 消费活跃礼包 大爆丹*1+强炼丹*1
	tGuildBuildingActivity_Reward[3302464] = {}
	tGuildBuildingActivity_Reward[3302464]["RewardItem"] = {}
	tGuildBuildingActivity_Reward[3302464]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward[3302464]["RewardItem"][1]["Id"] = 3003126
	tGuildBuildingActivity_Reward[3302464]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward[3302464]["RewardItem"][2] = {}
	tGuildBuildingActivity_Reward[3302464]["RewardItem"][2]["Id"] = 3003124
	tGuildBuildingActivity_Reward[3302464]["RewardItem"][2]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward[3302464]["Log"] = "0,0,3302464,1,12000658,2,3003126[3003124],1[1]"
	tGuildBuildingActivity_Reward[3302464]["DeleteItem"] = {}
	tGuildBuildingActivity_Reward[3302464]["DeleteItem"][1] = {}
	tGuildBuildingActivity_Reward[3302464]["DeleteItem"][1]["Id"] = 3302464
	
	-- 3003525 热心参与礼包
	tGuildBuildingActivity_Reward["Partake"] = {}
	tGuildBuildingActivity_Reward["Partake"]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Partake"]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Partake"]["RewardItem"][1]["Id"] = 3003525
	tGuildBuildingActivity_Reward["Partake"]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Partake"]["Log"] = "0,0,0,0,12000658,2,3003525,1"
	
	-- 3003526 积极贡献礼包
	tGuildBuildingActivity_Reward["Contribute"] = {}
	tGuildBuildingActivity_Reward["Contribute"]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Contribute"]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Contribute"]["RewardItem"][1]["Id"] = 3003526
	tGuildBuildingActivity_Reward["Contribute"]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Contribute"]["Log"] = "0,0,0,0,12000658,2,3003526,1"
	
	-- 大理石获得方式
	-- 竞技场礼包 ArenaEXPPack 723912 9240900 1个大理石
	tGuildBuildingActivity_Reward["Marble"] = {}
	tGuildBuildingActivity_Reward["Marble"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][1]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][1]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][1]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][1]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Marble"][1]["Log"] = "0,0,723912,1,12000658,2,3003496,1"
	
	-- 组队竞技场礼包 TeamArenaPack 720954 9240800 1个大理石
	tGuildBuildingActivity_Reward["Marble"][2] = {}
	tGuildBuildingActivity_Reward["Marble"][2]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][2]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][2]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][2]["RewardItem"][1]["Attr"] = "0 1"
	tGuildBuildingActivity_Reward["Marble"][2]["Log"] = "0,0,720954,1,12000658,2,3003496,1"
	
	-- 组队PK赛120+
	-- 第一名 优质圣皇武尊礼包 EliteTeamPKChampionPack 720796 9203670 200个大理石
	tGuildBuildingActivity_Reward["Marble"][3] = {}
	tGuildBuildingActivity_Reward["Marble"][3]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][3]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][3]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][3]["RewardItem"][1]["Attr"] = "0 200"
	tGuildBuildingActivity_Reward["Marble"][3]["Log"] = "0,0,720796,1,12000658,2,3003496,200"
	
	-- 第二名 优质翔龙武昭礼包 EliteTeamPK2ndPlacePack 720800 9203770 120个大理石
	tGuildBuildingActivity_Reward["Marble"][4] = {}
	tGuildBuildingActivity_Reward["Marble"][4]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][4]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][4]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][4]["RewardItem"][1]["Attr"] = "0 120"
	tGuildBuildingActivity_Reward["Marble"][4]["Log"] = "0,0,720800,1,12000658,2,3003496,120"
	
	-- 第三名 优质破穹武烈礼包 EliteTeamPK3rdPlacePack 720804 9203870 80个大理石
	tGuildBuildingActivity_Reward["Marble"][5] = {}
	tGuildBuildingActivity_Reward["Marble"][5]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][5]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][5]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][5]["RewardItem"][1]["Attr"] = "0 80"
	tGuildBuildingActivity_Reward["Marble"][5]["Log"] = "0,0,720804,1,12000658,2,3003496,80"
	
	-- 八强队伍 优质精装群雄礼包 EliteTeamPKTop8Pack 720808 9203970 30个大理石
	tGuildBuildingActivity_Reward["Marble"][6] = {}
	tGuildBuildingActivity_Reward["Marble"][6]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][6]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][6]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][6]["RewardItem"][1]["Attr"] = "0 30"
	tGuildBuildingActivity_Reward["Marble"][6]["Log"] = "0,0,720808,1,12000658,2,3003496,30"
	
	-- 组队大众PK赛120+
	-- 第一名 御龙武圣礼包 PerfectPack 721302 9225940 200个大理石
	tGuildBuildingActivity_Reward["Marble"][7] = {}
	tGuildBuildingActivity_Reward["Marble"][7]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][7]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][7]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][7]["RewardItem"][1]["Attr"] = "0 200"
	tGuildBuildingActivity_Reward["Marble"][7]["Log"] = "0,0,721302,1,12000658,2,3003496,200"
	
	-- 第二名 应天武德礼包 OutstandingPack 721306 9225960 120个大理石
	tGuildBuildingActivity_Reward["Marble"][8] = {}
	tGuildBuildingActivity_Reward["Marble"][8]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][8]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][8]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][8]["RewardItem"][1]["Attr"] = "0 120"
	tGuildBuildingActivity_Reward["Marble"][8]["Log"] = "0,0,721306,1,12000658,2,3003496,120"
	
	-- 第三名 承运武睿礼包 SuperiorPack 721310 9225990 80个大理石
	tGuildBuildingActivity_Reward["Marble"][9] = {}
	tGuildBuildingActivity_Reward["Marble"][9]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][9]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][9]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][9]["RewardItem"][1]["Attr"] = "0 80"
	tGuildBuildingActivity_Reward["Marble"][9]["Log"] = "0,0,721310,1,12000658,2,3003496,80"
	
	-- 八强队伍 百烈豪情礼包 DelicatePack 721314 9226020 30个大理石
	tGuildBuildingActivity_Reward["Marble"][10] = {}
	tGuildBuildingActivity_Reward["Marble"][10]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][10]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][10]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][10]["RewardItem"][1]["Attr"] = "0 30"
	tGuildBuildingActivity_Reward["Marble"][10]["Log"] = "0,0,721314,1,12000658,2,3003496,30"
	
	-- 组队PK赛130+
	-- 第一名 720797 SuperTeamPKChampionPack 9203150 200个大理石
	tGuildBuildingActivity_Reward["Marble"][11] = {}
	tGuildBuildingActivity_Reward["Marble"][11]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][11]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][11]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][11]["RewardItem"][1]["Attr"] = "0 200"
	tGuildBuildingActivity_Reward["Marble"][11]["Log"] = "0,0,720797,1,12000658,2,3003496,200"
	
	-- 第二名 720801 SuperTeamPK2ndPlacePack 9203300 120个大理石
	tGuildBuildingActivity_Reward["Marble"][12] = {}
	tGuildBuildingActivity_Reward["Marble"][12]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][12]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][12]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][12]["RewardItem"][1]["Attr"] = "0 120"
	tGuildBuildingActivity_Reward["Marble"][12]["Log"] = "0,0,720801,1,12000658,2,3003496,120"
	
	-- 第三名 720805 SuperTeamPK3rdPlacePack 9203400 80个大理石
	tGuildBuildingActivity_Reward["Marble"][13] = {}
	tGuildBuildingActivity_Reward["Marble"][13]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][13]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][13]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][13]["RewardItem"][1]["Attr"] = "0 80"
	tGuildBuildingActivity_Reward["Marble"][13]["Log"] = "0,0,720805,1,12000658,2,3003496,80"
	
	-- 八强队伍 720809 SuperTeamPKTop8Pack 9203500
	tGuildBuildingActivity_Reward["Marble"][14] = {}
	tGuildBuildingActivity_Reward["Marble"][14]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][14]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][14]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][14]["RewardItem"][1]["Attr"] = "0 30"
	tGuildBuildingActivity_Reward["Marble"][14]["Log"] = "0,0,720809,1,12000658,2,3003496,30"
	
	-- 组队大众PK赛130+
	-- 第一名 721303 PerfectPack 9225300 200个大理石
	tGuildBuildingActivity_Reward["Marble"][15] = {}
	tGuildBuildingActivity_Reward["Marble"][15]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][15]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][15]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][15]["RewardItem"][1]["Attr"] = "0 200"
	tGuildBuildingActivity_Reward["Marble"][15]["Log"] = "0,0,721303,1,12000658,2,3003496,200"
	
	-- 第二名 721307 OutstandingPack 9225550 120个大理石
	tGuildBuildingActivity_Reward["Marble"][16] = {}
	tGuildBuildingActivity_Reward["Marble"][16]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][16]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][16]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][16]["RewardItem"][1]["Attr"] = "0 120"
	tGuildBuildingActivity_Reward["Marble"][16]["Log"] = "0,0,721307,1,12000658,2,3003496,120"
	
	-- 第三名 721311 SuperiorPack 9225590 80个大理石
	tGuildBuildingActivity_Reward["Marble"][17] = {}
	tGuildBuildingActivity_Reward["Marble"][17]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][17]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][17]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][17]["RewardItem"][1]["Attr"] = "0 80"
	tGuildBuildingActivity_Reward["Marble"][17]["Log"] = "0,0,721311,1,12000658,2,3003496,80"
	
	-- 八强队伍 721315 DelicatePack 9225630 30个大理石
	tGuildBuildingActivity_Reward["Marble"][18] = {}
	tGuildBuildingActivity_Reward["Marble"][18]["RewardItem"] = {}
	tGuildBuildingActivity_Reward["Marble"][18]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward["Marble"][18]["RewardItem"][1]["Id"] = 3003496
	tGuildBuildingActivity_Reward["Marble"][18]["RewardItem"][1]["Attr"] = "0 30"
	tGuildBuildingActivity_Reward["Marble"][18]["Log"] = "0,0,721315,1,12000658,2,3003496,30"
	
	-- 使用50块金砖箱
	tGuildBuildingActivity_Reward[3302527] = {}
	tGuildBuildingActivity_Reward[3302527]["RewardItem"] = {}
	tGuildBuildingActivity_Reward[3302527]["RewardItem"][1] = {}
	tGuildBuildingActivity_Reward[3302527]["RewardItem"][1]["Id"] = 3003498
	tGuildBuildingActivity_Reward[3302527]["RewardItem"][1]["Attr"] = "0 50"
	tGuildBuildingActivity_Reward[3302527]["Log"] = "0,0,3302527,1,12000658,2,3003498,50"
--------------------------------------NPC逻辑部分---------------------------------------------
-- 获得玩家等级要求
function GuildBuildingActivity_Level()
	local nGlobalId = tGuildBuildingActivity_Data["Server"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	local nLevel = tGuildBuildingActivity_Data["Level"][nIndex]
	
	return nLevel
end

-- 获得帮派等级要求
function GuildBuildingActivity_Guild()
	local nGlobalId = tGuildBuildingActivity_Data["Server"]
	local nIndex = Get_SysDynaGlobalData0(nGlobalId)
	local nGuild = tGuildBuildingActivity_Data["Guild"][nIndex]
	
	return nGuild
end

-- 玩家领取登陆奖励
function GuildBuildingActivity_Sign(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return
	end
	
	-- 判断等级
	local nLevel = GuildBuildingActivity_Level()
	if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nEventType = tGuildBuildingActivity_Data["Stc"]["Sign"]["EventType"]
	local nDataType = tGuildBuildingActivity_Data["Stc"]["Sign"]["DataType"]
	-- 是否隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	
	-- 判断是否领取过签到奖励
	if not Task_ChkStcValue(nEventType,nDataType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tGuildBuildingActivity_Data["Space"]["Wood"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	Task_SetStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Sign"])
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- 玩家领取在线奖励
function GuildBuildingActivity_Online(nNpcId)

	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return
	end
	
	-- 判断等级
	local nLevel = GuildBuildingActivity_Level()
	if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	local nEventType = tGuildBuildingActivity_Data["Stc"]["Sign"]["EventType"]
	local nDataType = tGuildBuildingActivity_Data["Stc"]["Sign"]["DataType"]
	-- 是否隔天
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	
	-- 判断是否领取过签到奖励
	if Task_ChkStcValue(nEventType,nDataType,"==",0) then
		-- 判断背包空间
		if not User_CheckLeftSpace(tGuildBuildingActivity_Data["Space"]["Wood"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	
		Task_SetStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Sign"])
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 失败、当日可领取的份额都已领取完毕
	if Task_ChkStcValue(nEventType,nDataType,">=",4) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	for i = 3,1,-1 do
		if Task_ChkStcValue(nEventType,nDataType,">=",i) then
			-- 失败、间隔时间不足、无法领取
			if not Task_StcInterval(nEventType,nDataType,i,2) then
				LinkNpcGossipFunc_New(nNpcId,tGuildBuildingActivity_Data["AwardFailTimber"][i])
				return
			end
		
			-- 失败、玩家背包满
			if not User_CheckLeftSpace(tGuildBuildingActivity_Data["Space"]["Wood"]) then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
				return
			end
			
			Task_AddStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Online"][i])
			LinkNpcGossipFunc_New(nNpcId,tGuildBuildingActivity_Data["AwardTimber"][i])
			return
		end
	end
end

-- 前往活动页面
function GuildBuildingActivity_OpenWebAddress()
	local sWebAddress = tGuildBuildingActivity_Data["WebSite"]
	User_SendWebPage(sWebAddress)
end

-- 帮主领取签到奖励
function GuildBuildingActivity_LeaderSign(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断等级
	local nLevel = GuildBuildingActivity_Level()
	if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 判断是否是帮主
	local nRank = Get_UserGuildRank()
	if nRank ~= 1000 then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断帮派等级
	local nGuildId = Get_UserGuildId()
	local nSynLevel = Get_UserSynLevel(nGuildId)
	local nRequestedLevel = GuildBuildingActivity_Guild()
	local sMsg = string.format(tGuildBuildingActivity_Text["Msg"]["LevelNotEnough"],nRequestedLevel)
	if nSynLevel < nRequestedLevel then
		User_TalkChannel2005(sMsg)
		return
	end
	
	-- 是否隔天
	local nLeaderEventType = tGuildBuildingActivity_Data["Stc"]["Leader"]["EventType"]
	local nLeaderDataType = tGuildBuildingActivity_Data["Stc"]["Leader"]["DataType"]
	if Task_StcInterval(nLeaderEventType,nLeaderDataType,1,4) then
		Task_SetStatistic(nLeaderEventType,nLeaderDataType,0,1)
		Task_SetStcTimestamp(nLeaderEventType,nLeaderDataType,0)
	end
	
	-- 判断是否领取过签到奖励
	if not Task_ChkStcValue(nLeaderEventType,nLeaderDataType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	
	-- 判断帮主所在的帮派是否领取过签到奖励
	local nGuildId = Get_UserGuildId()
	if tGuildBuildingActivity_Data["RewardGuild"] ~= nil then
		for i,v in pairs(tGuildBuildingActivity_Data["RewardGuild"]) do
			if v == nGuildId then
				LinkNpcGossipFunc_New(nNpcId,"2-2")
				return
			end
		end
	end
	
	-- 是否是第一次签到
	local nFirstEventType = tGuildBuildingActivity_Data["Stc"]["First"]["EventType"]
	local nFirstDataType = tGuildBuildingActivity_Data["Stc"]["First"]["DataType"]
	if Task_ChkStcValue(nFirstEventType,nFirstDataType,"==",0) then
		-- 判断背包空间
		local nSpace = tGuildBuildingActivity_Data["Space"]["LeaderFirst"]
		if not User_CheckLeftSpace(nSpace) then
			tNpcGossip[nNpcId]["Text231"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text231"],nSpace)
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
		
		-- 打掩码，给奖励，出对白
		table.insert(tGuildBuildingActivity_Data["RewardGuild"],nGuildId)
		Task_SetStatistic(nFirstEventType,nFirstDataType,1,1)
		Task_SetStatistic(nLeaderEventType,nLeaderDataType,1,1)
		Task_SetStcTimestamp(nLeaderEventType,nLeaderDataType,0)
		RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Leader"][1])
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	else
		-- 判断背包空间
		local nSpace = tGuildBuildingActivity_Data["Space"]["LeaderNext"]
		if not User_CheckLeftSpace(nSpace) then
			tNpcGossip[nNpcId]["Text231"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text231"],nSpace)
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		end
		
		-- 打掩码，给奖励，出对白
		table.insert(tGuildBuildingActivity_Data["RewardGuild"],nGuildId)
		Task_SetStatistic(nLeaderEventType,nLeaderDataType,1,1)
		Task_SetStcTimestamp(nLeaderEventType,nLeaderDataType,0)
		RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Leader"][2])
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	end
end

-- 判断二进制掩码
function GuildBuildingActivity_ChkStc(nNum)
	local nEventType = tGuildBuildingActivity_Data["Stc"]["Return"]["EventType"]
	local nDataType = tGuildBuildingActivity_Data["Stc"]["Return"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)

	return Sys_ParseNumbersContain(tGuildBuildingActivity_Data["Return"][nNum],nValue)
end

-- 加二进制掩码值
function GuildBuildingActivity_AddStc(nNum)
	local nEventType = tGuildBuildingActivity_Data["Stc"]["Return"]["EventType"]
	local nDataType = tGuildBuildingActivity_Data["Stc"]["Return"]["DataType"]
	local nValue = Get_UserStatisticValue(nEventType,nDataType)
	
	Task_AddStatistic(nEventType,nDataType,tGuildBuildingActivity_Data["Return"][nNum],1) 
	Task_SetStcTimestamp(nEventType,nDataType,0)
end

-- 掩码隔天清零 每天上交木材、大理石、金砖、花岗岩以及获得返利礼包的掩码
function GuildBuildingActivity_ResetStc()
	-- 获得返利礼包的掩码
	local nEventType = tGuildBuildingActivity_Data["Stc"]["Return"]["EventType"]
	local nDataType = tGuildBuildingActivity_Data["Stc"]["Return"]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	
	-- 每天上交木材、大理石、金砖、花岗岩的掩码
	for i = 1,4 do
		local nEachEventType = tGuildBuildingActivity_Data["Stc"][i]["EventType"]
		local nEachDataType = tGuildBuildingActivity_Data["Stc"][i]["DataType"]
		if Task_StcInterval(nEachEventType,nEachDataType,1,4) then
			for i = 1,4 do
				local nEveryEventType = tGuildBuildingActivity_Data["Stc"][i]["EventType"]
				local nEveryDataType = tGuildBuildingActivity_Data["Stc"][i]["DataType"]
				Task_SetStatistic(nEveryEventType,nEveryDataType,0,1)
				Task_SetStcTimestamp(nEveryEventType,nEveryDataType,0)
			end
			break
		end
	end
end

-- 领取返利礼包
function GuildBuildingActivity_Return(nNpcId,nIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 掩码隔天清零
	GuildBuildingActivity_ResetStc()
	
	-- 失败、今日已领取
	if GuildBuildingActivity_ChkStc(nIndex) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 判断上交材料数量是否足够
	local nSubmitEventType = tGuildBuildingActivity_Data["Stc"][nIndex]["EventType"]
	local nSubmitDataType = tGuildBuildingActivity_Data["Stc"][nIndex]["DataType"]
	local nValue = Get_UserStatisticValue(nSubmitEventType,nSubmitDataType)
	local nNum = tGuildBuildingActivity_Data["Num"][nIndex]
	if nValue < nNum then
		LinkNpcGossipFunc_New(nNpcId,tGuildBuildingActivity_Data["Fail"][nIndex])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tGuildBuildingActivity_Data["Space"]["Pack"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	-- 大掩码，给奖励，出对白
	GuildBuildingActivity_AddStc(nIndex)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Return"][nIndex])
	LinkNpcGossipFunc_New(nNpcId,tGuildBuildingActivity_Data["Success"][nIndex])
end

-- 兑换
function GuildBuildingActivity_Exchange(nNpcId,nItemId,nBrickNum,nItemNum)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	-- 判断金砖数量
	local nBrickId = tGuildBuildingActivity_Data["ItemType"][3]
	if not Item_ChkMulItem(nBrickId,nBrickId,nBrickNum) then
		tNpcGossip[nNpcId]["Text321"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text321"],nBrickNum)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 判断兑换后获得物品的数量，超过叠加上限，需要的背包空间为2，否则为1
	local nSpace = tGuildBuildingActivity_Data["Space"]["Pack"]
	if nItemNum > tGuildBuildingActivity_Data["Accumulate"] then
		nSpace = tGuildBuildingActivity_Data["Space"]["Packs"]
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	local sLog = string.format(tGuildBuildingActivity_Data["Log"]["Exchange"],nBrickNum,nItemId,nItemNum)
	if Item_DelMulItem(nBrickId,nBrickId,nBrickNum) then
		Item_AddItem(nItemId,0,nItemNum)
		Sys_SaveActionFestivalLog(sLog)
		tNpcGossip[nNpcId]["Text341"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text341"],nBrickNum,nItemNum,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	end
end

-- 帮派建设特使
-- 选项配置
function GuildBuildingActivity_ManageNpc(nNpcId,tOption)
	tNpcGossip[nNpcId]["tOption1-4"] = {}
	
	-- 判断等级
	local nLevel = GuildBuildingActivity_Level()
	if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
		table.insert(tNpcGossip[nNpcId]["tOption1-4"],tOption[1])
	end
	
	-- 判断是否有帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		table.insert(tNpcGossip[nNpcId]["tOption1-4"],tOption[2])
	end
end

-- 领取热心参与礼包
function GuildBuildingActivity_AwardPartakePack(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 领取礼包掩码隔天
	local nPartakeEventType = tGuildBuildingActivity_Data["Stc"]["Partake"]["EventType"]
	local nPartakeDataType = tGuildBuildingActivity_Data["Stc"]["Partake"]["DataType"]
	if Task_StcInterval(nPartakeEventType,nPartakeDataType,1,4) then
		Task_SetStatistic(nPartakeEventType,nPartakeDataType,0,1)
		Task_SetStcTimestamp(nPartakeEventType,nPartakeDataType,0)
	end
	
	-- 判断是否已领
	if not Task_ChkStcValue(nPartakeEventType,nPartakeDataType,"==",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 今天上交积分掩码隔天
	local nTodayEventType = tGuildBuildingActivity_Data["Stc"]["Today"]["EventType"]
	local nTodayDataType = tGuildBuildingActivity_Data["Stc"]["Today"]["DataType"]
	if Task_StcInterval(nTodayEventType,nTodayDataType,1,4) then
		Task_SetStatistic(nTodayEventType,nTodayDataType,0,1)
		Task_SetStcTimestamp(nTodayEventType,nTodayDataType,0)
	end
	
	-- 判断积分
	if not Task_ChkStcValue(nTodayEventType,nTodayDataType,">=",50) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tGuildBuildingActivity_Data["Space"]["Pack"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 成功，打掩码给奖
	Task_SetStatistic(nPartakeEventType,nPartakeDataType,1,1)
	Task_SetStcTimestamp(nPartakeEventType,nPartakeDataType,0)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Partake"])
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end

-- 领取积极贡献礼包
function GuildBuildingActivity_AwardContributePack(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 失败、尚未助帮派增加100点积分
	local nSumEventType = tGuildBuildingActivity_Data["Stc"]["Sum"]["EventType"]
	local nSumDataType = tGuildBuildingActivity_Data["Stc"]["Sum"]["DataType"]
	if Task_ChkStcValue(nSumEventType,nSumDataType,"<",100) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	-- 失败、领完累积的积极贡献礼包
	local nValue = Get_UserStatisticValue(nSumEventType,nSumDataType)
	local nContributeEventType = tGuildBuildingActivity_Data["Stc"]["Contribute"]["EventType"]
	local nContributeDataType = tGuildBuildingActivity_Data["Stc"]["Contribute"]["DataType"]
	local nSumTimes = math.floor(nValue/100)
	if Task_ChkStcValue(nContributeEventType,nContributeDataType,">=",nSumTimes) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tGuildBuildingActivity_Data["Space"]["Pack"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	-- 成功
	local nAwardTimes = Get_UserStatisticValue(nContributeEventType,nContributeDataType)
	local nRemainTimes = nSumTimes - nAwardTimes
	
	Task_AddStatistic(nContributeEventType,nContributeDataType,1,1)
	Task_SetStcTimestamp(nContributeEventType,nContributeDataType,0)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Contribute"])
	tNpcGossip[nNpcId]["Text292"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text292"],nValue,nRemainTimes)
	LinkNpcGossipFunc_New(nNpcId,"2-9")
end

-- 上交帮派建设材料
function GuildBuildingActivity_ChooseToSubmit(nNpcId,nItemId)
	-- 修复外部花岗岩ID不同的问题
	local nChangeItem = tGuildBuildingActivity_Data["ItemType"]["Old"]
	local nChangeNum = Get_CountItemType(nChangeItem,0)
	local nNewItem = tGuildBuildingActivity_Data["ItemType"][4]
	if Item_ChkItem(nChangeItem) then
		Item_DelMulItem(nChangeItem,nChangeItem,nChangeNum)
		Item_AddItem(nNewItem,0,nChangeNum)
	end
	
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断等级
	local nLevel = GuildBuildingActivity_Level()
	if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	-- 判断是否有帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 前四个选项
	for i = 1,4 do
		if nItemId == tGuildBuildingActivity_Data["ItemType"][i] then
			tNpcGossip[nNpcId]["OptionFunc40"] = string.format("GuildBuildingActivity_SubmitPoints</N>%d</N>%d</N>%d",nNpcId,nItemId,1)
			tNpcGossip[nNpcId]["OptionFunc41"] = string.format("GuildBuildingActivity_SubmitPoints</N>%d</N>%d</N>%d",nNpcId,nItemId,5)
			tNpcGossip[nNpcId]["OptionFunc42"] = string.format("GuildBuildingActivity_SubmitPoints</N>%d</N>%d</N>%d",nNpcId,nItemId,20)
			tNpcGossip[nNpcId]["OptionFunc43"] = string.format("GuildBuildingActivity_SubmitPoints</N>%d</N>%d</N>%d",nNpcId,nItemId,100)
			LinkNpcGossipFunc_New(nNpcId,"3-1")
		end
	end
	
	-- 后两个选项
	if nItemId >= tGuildBuildingActivity_Data["ItemType"]["Bomb"] and nItemId <= tGuildBuildingActivity_Data["ItemType"]["Defense"] then
		tNpcGossip[nNpcId]["OptionFunc23"] = string.format("GuildBuildingActivity_Submit</N>%d</N>%d</N>%d",nNpcId,nItemId,1)
		tNpcGossip[nNpcId]["OptionFunc24"] = string.format("GuildBuildingActivity_Submit</N>%d</N>%d</N>%d",nNpcId,nItemId,5)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	end
end

-- 前四个选项选择上交数量
function GuildBuildingActivity_SubmitPoints(nNpcId,nItemId,nItemNum)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断是否有帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 失败、数量不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	-- 判断隔天 隔天清理当天今天上交积分掩码
	local nTodayEventType = tGuildBuildingActivity_Data["Stc"]["Today"]["EventType"]
	local nTodayDataType = tGuildBuildingActivity_Data["Stc"]["Today"]["DataType"]
	if Task_StcInterval(nTodayEventType,nTodayDataType,1,4) then
		Task_SetStatistic(nTodayEventType,nTodayDataType,0,1)
		Task_SetStcTimestamp(nTodayEventType,nTodayDataType,0)
		for i = 1,4 do
			local nEveryEventType = tGuildBuildingActivity_Data["Stc"][i]["EventType"]
			local nEveryDataType = tGuildBuildingActivity_Data["Stc"][i]["DataType"]
			Task_SetStatistic(nEveryEventType,nEveryDataType,0,1)
			Task_SetStcTimestamp(nEveryEventType,nEveryDataType,0)
		end
	end
	
	local sItemName = Get_ItemtypeName(nItemId)
	local nSumPoint = nItemNum * tGuildBuildingActivity_Data["SubmitPoints"][nItemId]
	local nOriItemNum = nItemNum
	local sOriItemName = sItemName
	
	local nIndex = tGuildBuildingActivity_Data["SubmitIndex"][nItemId]
	local nSubmitEventType = tGuildBuildingActivity_Data["Stc"][nIndex]["EventType"]
	local nSubmitDataType = tGuildBuildingActivity_Data["Stc"][nIndex]["DataType"]
	local nSumEventType = tGuildBuildingActivity_Data["Stc"]["Sum"]["EventType"]
	local nSumDataType = tGuildBuildingActivity_Data["Stc"]["Sum"]["DataType"]
	
	if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		Task_AddStatistic(nTodayEventType,nTodayDataType,nSumPoint,1)
		Task_AddStatistic(nSumEventType,nSumDataType,nSumPoint,1)
		Task_AddStatistic(nSubmitEventType,nSubmitDataType,nItemNum,1)
		local nTodayValue = Get_UserStatisticValue(nTodayEventType,nTodayDataType)
		local nSubmitValue = Get_UserStatisticValue(nSubmitEventType,nSubmitDataType)
		local nGuildId = Get_UserGuildId()
		local sLog = string.format(tGuildBuildingActivity_Data["Log"]["Submit"],nItemId,nItemNum,nGuildId,nSumPoint)
		local sStr = string.format(tGuildBuildingActivity_Text["Msg"]["Submit"],nItemNum,sItemName,nSumPoint)
		tNpcGossip[nNpcId]["Text421"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text421"],nItemNum,sItemName,nSumPoint)
		-- tNpcGossip[nNpcId]["Text422"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text422"],nTodayValue)
		tNpcGossip[nNpcId]["Text423"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text423"],nSubmitValue,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		User_TalkChannel2005(sStr)
		Sys_SaveActionFestivalLog(sLog)
	end
end

-- 后两个选项选择上交数量
function GuildBuildingActivity_Submit(nNpcId,nItemId,nItemNum)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断是否有帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
	-- 失败、数量不足
	if not Item_ChkMulItem(nItemId,nItemId,nItemNum) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	-- 是否隔天
	local nEventType = tGuildBuildingActivity_Data["Stc"][nItemId]["EventType"]
	local nDataType = tGuildBuildingActivity_Data["Stc"][nItemId]["DataType"]
	if Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	local sItemName = Get_ItemtypeName(nItemId)
	if Item_DelMulItem(nItemId,nItemId,nItemNum) then
		local nValue = Get_UserStatisticValue(nEventType,nDataType) + nItemNum
		local sLog = string.format(tGuildBuildingActivity_Data["Log"]["Submit"],nItemId,nItemNum,nGuildId,0)
		Task_AddStatistic(nEventType,nDataType,nItemNum,1)
		tNpcGossip[nNpcId]["Text431"] = string.format(tGuildBuildingActivity_Text[nNpcId]["Text431"],nItemNum,sItemName,nValue,sItemName)
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		Sys_SaveActionFestivalLog(sLog)
	end
end

-- 大理石获得方式 修改礼包产出
function GuildBuildingActivity_Pack(nIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
		return
	end
	
	if nIndex <= 2 then
		local nEventType = tGuildBuildingActivity_Data["Arena"][nIndex]["EventType"]
		local nDataType = tGuildBuildingActivity_Data["Arena"][nIndex]["DataType"]
		local nLimit = tGuildBuildingActivity_Data["MarbleLimit"]
		-- 是否隔天
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
		-- 判断是否达到上限
		if Task_ChkStcValue(nEventType,nDataType,">=",nLimit) then
			return
		end
		
		Task_AddStatistic(nEventType,nDataType,1,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
	
	
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward["Marble"][nIndex])
end

-- 帮派会所管理员（场外）
-- 开启帮派会所
function GuildBuildingActivity_OpenGuildSquare(nNpcId)
	-- 判断是否是帮主
	local nRank = Get_UserGuildRank()
	if nRank ~= 1000 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断是否有钥匙
	local nGuildId = Get_UserGuildId()
	for i = 1,4 do
		local nItemId = tGuildBuildingActivity_Data["Square"]["Key"][i]
		local nGlobalId = tGuildBuildingActivity_Data["Square"]["Global"][i]
		local sStr = string.format(tGuildBuildingActivity_Data["Log"]["OpenGuildSquare"],nItemId)
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SetSynaGlobalData0(nGlobalId,nGuildId)
			LinkNpcGossipFunc_New(nNpcId,"1-2")
			User_TalkChannel2005(tGuildBuildingActivity_Text["Msg"]["OpenSquare"])
			Sys_SaveActionFestivalLog(sLog)
			return
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 进入帮派会所
function GuildBuildingActivity_InGuildSquare(nNpcId)
	-- 判断帮派
	local nGuildId = Get_UserGuildId()
	if nGuildId == 0 then
		return
	end
	
	for i = 1,4 do
		local nGlobalId = tGuildBuildingActivity_Data["Square"]["Global"][i]
		local nItemId = tGuildBuildingActivity_Data["Square"]["Badge"][i]
		local nMapId = tGuildBuildingActivity_Data["Square"]["InMap"][i]
		local nPosX = tGuildBuildingActivity_Data["Square"]["InMap"]["CellX"]
		local nPosY = tGuildBuildingActivity_Data["Square"]["InMap"]["CellY"]
		local sLog = string.format(tGuildBuildingActivity_Data["Log"]["InGuildSquare"],nItemId)
		if nGuildId == Get_SysDynaGlobalData0(nGlobalId) then
			if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
				User_UserRandBoundTrans(nMapId,nPosX,nPosY,10,10)
				User_TalkChannel2005(tGuildBuildingActivity_Text["Msg"]["InSquare"])
				return
			end
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 帮派会所管理员（场内）
-- 求降“龙珠雨”
function GuildBuildingActivity_DragonBallRain(nNpcId)
	local nIndex = tGuildBuildingActivity_Data["Square"]["NPC"][nNpcId]
	local nGlobalId = tGuildBuildingActivity_Data["Square"]["Global"][nIndex]
	
	-- 失败、已下过
	if Get_SysDynaGlobalData1(nGlobalId) > 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-2")
end

-- 确认求降“龙珠雨”
function GuildBuildingActivity_ConfirmDragonBallRain(nNpcId)
	-- 失败、非帮主
	local nRank = Get_UserGuildRank()
	if nRank ~= 1000 then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 判断地图
	local nUserMapId = Get_UserMapId()
	local nPhantomBeastId = tGuildBuildingActivity_Data["Monster"]["PhantomBeast"]
	local nVolcanoBeastId =tGuildBuildingActivity_Data["Monster"]["VolcanoBeast"]
	for i = 1,4 do
		local nMapId = tGuildBuildingActivity_Data["Square"]["InMap"][i]
		if nMapId == nUserMapId then
		
			-- 失败、正在下“龙珠雨”
			if Get_SysTempData(1,nMapId,nPhantomBeastId) > 0 then
				LinkNpcGossipFunc_New(nNpcId,"3-2")
				return
			end
			
			-- 失败、当前正在下“天石雨”
			if Get_SysTempData(1,nMapId,nVolcanoBeastId) > 0 then
				LinkNpcGossipFunc_New(nNpcId,"3-1")
				return
			end
			
			-- 成功
			local nIndex = tGuildBuildingActivity_Data["Square"]["NPC"][nNpcId]
			local nGlobalId = tGuildBuildingActivity_Data["Square"]["Global"][nIndex]
			local nGenId = tGuildBuildingActivity_Data["Square"]["GenId"][nIndex]
			local nMonsterNum = Get_SysTempData(1,nMapId,nPhantomBeastId)
			Sys_SetSynaGlobalData1(nGlobalId,1)
			for i,v in ipairs(tGuildBuildingActivity_MonsterPos) do
				Monster_AddMonster(nMapId,v[1],v[2],nGenId,nPhantomBeastId)
				Sys_SetTempData(1,nMapId,nPhantomBeastId,nMonsterNum+1)
				LinkNpcGossipFunc_New(nNpcId,"3-4")
			end
		end
	end
end

-- 求降“天石雨”
function GuildBuildingActivity_EmoneyRain(nNpcId)
	local nIndex = tGuildBuildingActivity_Data["Square"]["NPC"][nNpcId]
	local nGlobalId = tGuildBuildingActivity_Data["Square"]["Global"][nIndex]
	
	-- 失败、已下过
	if Get_SysDynaGlobalData2(nGlobalId) > 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end

-- 确认求降“天石雨”。
function GuildBuildingActivity_ConfirmEmoneyRain(nNpcId)
	-- 失败、非帮主
	local nRank = Get_UserGuildRank()
	if nRank ~= 1000 then
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
	
	-- 判断地图
	local nUserMapId = Get_UserMapId()
	local nUserMapId = Get_UserMapId()
	local nPhantomBeastId = tGuildBuildingActivity_Data["Monster"]["PhantomBeast"]
	local nVolcanoBeastId =tGuildBuildingActivity_Data["Monster"]["VolcanoBeast"]
	for i = 1,4 do
		local nMapId = tGuildBuildingActivity_Data["Square"]["InMap"][i]
		if nMapId == nUserMapId then
		
			-- 失败、正在下“龙珠雨”
			if Get_SysTempData(1,nMapId,nPhantomBeastId) > 0 then
				LinkNpcGossipFunc_New(nNpcId,"3-5")
				return
			end
			
			-- 失败、当前正在下“天石雨”
			if Get_SysTempData(1,nMapId,nVolcanoBeastId) > 0 then
				LinkNpcGossipFunc_New(nNpcId,"3-6")
				return
			end
			
			-- 成功
			local nIndex = tGuildBuildingActivity_Data["Square"]["NPC"][nNpcId]
			local nGlobalId = tGuildBuildingActivity_Data["Square"]["Global"][nIndex]
			local nGenId = tGuildBuildingActivity_Data["Square"]["GenId"][nIndex]
			local nMonsterNum = Get_SysTempData(1,nMapId,nVolcanoBeastId)
			Sys_SetSynaGlobalData2(nGlobalId,1)
			for i,v in ipairs(tGuildBuildingActivity_MonsterPos) do
				Monster_AddMonster(nMapId,v[1],v[2],nGenId,nVolcanoBeastId)
				Sys_SetTempData(1,nMapId,nVolcanoBeastId,nMonsterNum+1)
				LinkNpcGossipFunc_New(nNpcId,"3-8")
			end
		end
	end
end

-- 请带我离开会所
function GuildBuildingActivity_Leave()
	local nMapId = tGuildBuildingActivity_Data["Square"]["OutMap"]["MapId"]
	local nPosX = tGuildBuildingActivity_Data["Square"]["OutMap"]["CellX"]
	local nPosY = tGuildBuildingActivity_Data["Square"]["OutMap"]["CellY"]
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,10,10)
	User_TalkChannel2005(tGuildBuildingActivity_Text["Msg"]["OutSquare"])
end
--------------------------------------怪物掉落------------------------------------------
-- 刷怪规则
function GuildBuildingActivity_MonsterAppearRule(nMonsterId)
	-- 记录当前地图中的怪物数量
	local nMapId = Get_UserMapId()
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum > 0 then
		Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum-1)
	end
	
	-- 当前地图中的怪物数量<=0时，不再刷怪
	local nIndex = tGuildBuildingActivity_Data["Square"]["Map"][nMapId]
	local nGlobalId = tGuildBuildingActivity_Data["Square"]["Global"][nIndex]
	local nPos = tGuildBuildingActivity_Data["Pos"][nMonsterId]
	local nValue = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nValue <= 0 then
		return
	end
	
	-- 每击杀1只怪，根据掩码在玩家周围刷不同数量的怪
	if nValue > tGuildBuildingActivity_Data["Appear"][1] then
		GuildBuildingActivity_MonsterAppear(nMapId,nMonsterId,4,nIndex)
		Sys_SetSynaGlobalData(nGlobalId,nPos,nValue-4)
	elseif nValue > tGuildBuildingActivity_Data["Appear"][2] then
		GuildBuildingActivity_MonsterAppear(nMapId,nMonsterId,3,nIndex)
		Sys_SetSynaGlobalData(nGlobalId,nPos,nValue-3)
	elseif nValue > tGuildBuildingActivity_Data["Appear"][3] then
		GuildBuildingActivity_MonsterAppear(nMapId,nMonsterId,2,nIndex)
		Sys_SetSynaGlobalData(nGlobalId,nPos,nValue-2)
	else
		GuildBuildingActivity_MonsterAppear(nMapId,nMonsterId,1,nIndex)
		Sys_SetSynaGlobalData(nGlobalId,nPos,nValue-1)
	end
end

-- 刷怪
function GuildBuildingActivity_MonsterAppear(nMapId,nMonsterId,nBirthNum,nIndex)

	local nGenId = tGuildBuildingActivity_Data["Square"]["GenId"][nIndex]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	for i = 1,nBirthNum do
	
		-- 在玩家周围刷nBirthNum只怪
		local nCellX = Get_UserPositionX() + math.random(-20,20)
		local nCellY = Get_UserPositionY() + math.random(-20,20)
		Monster_AddMonster(nMapId,nCellX,nCellY,nGenId,nMonsterId)
		
		-- 统计当前地图怪物数量
		Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum+1)
	
	end
end

function GuildBuildingActivity_KillPhantomBeast(nMonsterId)
	-- 刷怪
	GuildBuildingActivity_MonsterAppearRule(nMonsterId)
	
	-- 掉落
	-- 地图3838 5%掉龙珠掉满150掉流星 95%掉流星掉满2853掉龙珠
	-- 地图3839 4%掉龙珠掉满120掉流星 96%掉流星掉满2883掉龙珠
	-- 地图3840 2.6%掉龙珠掉满80掉流星 97.4%掉流星掉满2923掉龙珠
	-- 地图10130 1.6%掉龙珠掉满50掉流星 98.4%掉流星掉满2953掉龙珠
	local nMapId = Get_UserMapId()
	local nIndex = tGuildBuildingActivity_Data["Square"]["Map"][nMapId]
	local nDropGlobalID = tGuildBuildingActivity_Data["Square"]["Drop"][nIndex]
	local nProb = tGuildBuildingActivity_Data["Square"]["DropBall"][nIndex]
	local nMaxBall = tGuildBuildingActivity_Data["Square"]["MaxBall"][nIndex]
	local nMaxStar = tGuildBuildingActivity_Data["Square"]["MaxStar"][nIndex]
	local nDragonBall = tGuildBuildingActivity_Data["ItemType"]["DragonBall"]
	local nStar = tGuildBuildingActivity_Data["ItemType"]["Star"]
	local nDragonBallNum = Get_SysDynaGlobalData0(nDropGlobalID)
	local nStarNum = Get_SysDynaGlobalData1(nDropGlobalID)
	if Sys_Random(nProb,1000) then
		if nDragonBallNum < nMaxBall then
			Monster_SysDropItem(nDragonBall)
			Sys_SetSynaGlobalData0(nDropGlobalID,nDragonBallNum+1)
		elseif nStarNum < nMaxStar then
			Monster_SysDropItem(nStar)
			Sys_SetSynaGlobalData1(nDropGlobalID,nStarNum+1)
		end
	elseif nStarNum < nMaxStar then
		Monster_SysDropItem(nStar)
		Sys_SetSynaGlobalData1(nDropGlobalID,nStarNum+1)
	elseif nDragonBallNum < nMaxBall then
		Monster_SysDropItem(nDragonBall)
		Sys_SetSynaGlobalData0(nDropGlobalID,nDragonBallNum+1)
	end
end

function GuildBuildingActivity_KillVolcanoBeast(nMonsterId)
	-- 刷怪
	GuildBuildingActivity_MonsterAppearRule(nMonsterId)
	
	-- 掉落
	-- 地图3838 1.6%掉大盒子掉满47掉小盒子 97.4%掉小盒子掉满2956掉大盒子
	-- 地图3839 92.5%掉小盒子，掉满2778不继续掉落
	-- 地图3840 55.6%掉小盒子，掉满1667不继续掉落
	-- 地图10130 37%掉小盒子，掉满1111不继续掉落
	local nMapId = Get_UserMapId()
	local nIndex = tGuildBuildingActivity_Data["Square"]["Map"][nMapId]
	local nDropGlobalID = tGuildBuildingActivity_Data["Square"]["Drop"][nIndex]
	local nBigProb = tGuildBuildingActivity_Data["Square"]["DropBig"][nIndex]
	local nSmallProb = tGuildBuildingActivity_Data["Square"]["DropSmall"][nIndex]
	local nMaxBig = tGuildBuildingActivity_Data["Square"]["MaxBig"][nIndex]
	local nMaxSmall = tGuildBuildingActivity_Data["Square"]["MaxSmall"][nIndex]
	local nBig = tGuildBuildingActivity_Data["ItemType"]["Big"]
	local nSmall = tGuildBuildingActivity_Data["ItemType"]["Small"]
	local nBigNum = Get_SysDynaGlobalData2(nDropGlobalID)
	local nSmallNum = Get_SysDynaGlobalData3(nDropGlobalID)
	if nIndex == 1 then
		if Sys_Random(nBigProb,1000) then
			if nBigNum < nMaxBig then
				Monster_SysDropItem(nBig)
				Sys_SetSynaGlobalData2(nDropGlobalID,nBigNum+1)
			elseif nSmallNum < nMaxSmall then
				Monster_SysDropItem(nSmall)
				Sys_SetSynaGlobalData3(nDropGlobalID,nSmallNum+1)
			end
		elseif nSmallNum < nMaxSmall then
				Monster_SysDropItem(nSmall)
				Sys_SetSynaGlobalData3(nDropGlobalID,nSmallNum+1)
		end
	elseif Sys_Random(nSmallProb,1000) then
		if nSmallNum < nMaxSmall then
			Monster_SysDropItem(nSmall)
			Sys_SetSynaGlobalData3(nDropGlobalID,nSmallNum+1)
		end
	end
end

-- 清理动态码
function GuildBuildingActivity_ClearGlobal()
	local nGlobalId = tGuildBuildingActivity_Data["Server"]
	if Get_SysDynaGlobalData1(nGlobalId) == 1 then
		return
	end
	
	tGuildBuildingActivity_Data["RewardGuild"] = {}
	
	Sys_SetSynaGlobalData1(nGlobalId,1)
end

-- 重置表示位
function GuildBuildingActivity_ClearGlobalFlag()
	local nGlobalId = tGuildBuildingActivity_Data["Server"]
	Sys_SetSynaGlobalData1(nGlobalId,0)
end
--------------------------------------npc模板----------------------------------------------
-- 20373 帮派建设木材专员
-- 头像
tNpcFace[2948] = 410

tNpcGossip[20373] = tNpcGossip[20373] or DefaultNpc:new{}
tNpcGossip[20373]["OptionHidden"] = 1
tNpcGossip[20373]["DialogueText"] = tGuildBuildingActivity_Text[20373]

-- 活动时间前
tNpcGossip[20373]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20373]["tOption1-1"] = {1}
tNpcGossip[20373]["ChkFunc1-1"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20373]["Text114"] = string.format(tGuildBuildingActivity_Text[20373]["Text114"],nLevel)
	
	return CommonFunc_GetBeforeActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间后
tNpcGossip[20373]["Text1-2"] = {121}
tNpcGossip[20373]["tOption1-2"] = {2}
tNpcGossip[20373]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间中
-- 等级不足
tNpcGossip[20373]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[20373]["tOption1-3"] = {3}
tNpcGossip[20373]["ChkFunc1-3"] = function()
	local nLevel = GuildBuildingActivity_Level()
	local nGuild = GuildBuildingActivity_Guild()
	tNpcGossip[20373]["Text134"] = string.format(tGuildBuildingActivity_Text[20373]["Text134"],nGuild)
	tNpcGossip[20373]["Text136"] = string.format(tGuildBuildingActivity_Text[20373]["Text136"],nLevel)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return true
		else
			return false
		end
	end
end

-- 满足条件
tNpcGossip[20373]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[20373]["tOption1-4"] = {4,5,6,7,8}
tNpcGossip[20373]["ChkFunc1-4"] = function()
	local nGuild = GuildBuildingActivity_Guild()
	tNpcGossip[20373]["Text144"] = string.format(tGuildBuildingActivity_Text[20373]["Text144"],nGuild)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(GuildBuildingActivity_Level(),tGuildBuildingActivity_Data["MinMeto"]) then
			return false
		end
		
		local nEventType = tGuildBuildingActivity_Data["Stc"]["Sign"]["EventType"]
		local nDataType = tGuildBuildingActivity_Data["Stc"]["Sign"]["DataType"]
		-- 是否隔天
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
		-- 领取登陆奖励。（签到完屏蔽）/ 领取在线奖励。（签到完显示）
		if Task_ChkStcValue(nEventType,nDataType,"==",0) then
			tNpcGossip[20373]["tOption1-4"] = {4,6,7,8}
		else
			tNpcGossip[20373]["tOption1-4"] = {5,6,7,8}
		end
		
		return true
	end
end
tNpcGossip[20373]["OptionFunc4"] = "GuildBuildingActivity_Sign</N>20373"
tNpcGossip[20373]["OptionFunc5"] = "GuildBuildingActivity_Online</N>20373"
tNpcGossip[20373]["OptionFunc6"] = "GuildBuildingActivity_OpenWebAddress"
tNpcGossip[20373]["OptionPoint7"] = "2-8"

-- 接【领取登陆福利。】
-- 失败、领取过登陆福利
tNpcGossip[20373]["Text2-1"] = {211}
tNpcGossip[20373]["tOption2-1"] = {9}

-- 失败、背包满
tNpcGossip[20373]["Text2-2"] = {221}
tNpcGossip[20373]["tOption2-2"] = {10}

-- 成功领取登陆福利
tNpcGossip[20373]["Text2-3"] = {231,232}
tNpcGossip[20373]["tOption2-3"] = {11}

-- 失败、当日可领取的份额都已领取完毕
tNpcGossip[20373]["Text2-4"] = {241}
tNpcGossip[20373]["tOption2-4"] = {12}

-- 失败、首次领取在线福利、间隔时间不足、无法领取
tNpcGossip[20373]["Text2-5"] = {251}
tNpcGossip[20373]["tOption2-5"] = {13}

-- 失败、第2次领取在线福利、间隔时间不足、无法领取
tNpcGossip[20373]["Text2-6"] = {261}
tNpcGossip[20373]["tOption2-6"] = {13}

-- 失败、第3次领取在线福利、间隔时间不足、无法领取
tNpcGossip[20373]["Text2-7"] = {271}
tNpcGossip[20373]["tOption2-7"] = {13}

-- 失败、临界点、活动时间已过
tNpcGossip[20373]["Text2-9"] = {291}
tNpcGossip[20373]["tOption2-9"] = {15}

-- 成功领取在线福利
-- 首次领取在线福利
tNpcGossip[20373]["Text3-1"] = {311,312}
tNpcGossip[20373]["tOption3-1"] = {16}

-- 第2次领取在线福利
tNpcGossip[20373]["Text3-2"] = {321,322}
tNpcGossip[20373]["tOption3-2"] = {16}

-- 第3次领取在线福利
tNpcGossip[20373]["Text3-3"] = {331,332}
tNpcGossip[20373]["tOption3-3"] = {16}

-- 接【了解福利详情】
tNpcGossip[20373]["Text2-8"] = {281,282,283,284,285,286,287,288}
tNpcGossip[20373]["tOption2-8"] = {14}


-- 20374 帮主有礼签到专员
-- 头像
tNpcFace[2949] = 411

tNpcGossip[20374] = tNpcGossip[20374] or DefaultNpc:new{}
tNpcGossip[20374]["OptionHidden"] = 1
tNpcGossip[20374]["DialogueText"] = tGuildBuildingActivity_Text[20374]

-- 活动时间前
tNpcGossip[20374]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20374]["tOption1-1"] = {1}
tNpcGossip[20374]["ChkFunc1-1"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20374]["Text114"] = string.format(tGuildBuildingActivity_Text[20374]["Text114"],nLevel)
	
	return CommonFunc_GetBeforeActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间后
tNpcGossip[20374]["Text1-2"] = {121,122}
tNpcGossip[20374]["tOption1-2"] = {2}
tNpcGossip[20374]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间中
-- 等级不足
tNpcGossip[20374]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20374]["tOption1-3"] = {3}
tNpcGossip[20374]["ChkFunc1-3"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20374]["Text135"] = string.format(tGuildBuildingActivity_Text[20374]["Text135"],nLevel)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return true
		else
			return false
		end
	end
end

-- 非帮主
tNpcGossip[20374]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[20374]["tOption1-4"] = {4}
tNpcGossip[20374]["ChkFunc1-4"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20374]["Text145"] = string.format(tGuildBuildingActivity_Text[20374]["Text145"],nLevel)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		local nRank = Get_UserGuildRank()
		if nRank ~= 1000 then
			return true
		else
			return false
		end
	end
end

-- 满足条件
tNpcGossip[20374]["Text1-5"] = {151,152,153,154,155,156}
tNpcGossip[20374]["tOption1-5"] = {5,6,7,8}
tNpcGossip[20374]["ChkFunc1-5"] = function()
	local nLevel = GuildBuildingActivity_Level()
	local nGuild = GuildBuildingActivity_Guild()
	tNpcGossip[20374]["Text154"] = string.format(tGuildBuildingActivity_Text[20374]["Text154"],nGuild)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return false
		end
		
		-- 判断是否是帮主
		local nRank = Get_UserGuildRank()
		if nRank ~= 1000 then
			return false
		end
		
		local nEventType = tGuildBuildingActivity_Data["Stc"]["Leader"]["EventType"]
		local nDataType = tGuildBuildingActivity_Data["Stc"]["Leader"]["DataType"]
		-- 是否隔天
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
		-- 判断帮主是否领取签到奖励
		if not Task_ChkStcValue(nEventType,nDataType,"==",0) then
			tNpcGossip[20374]["tOption1-5"] = {6,7,8}
		else
			tNpcGossip[20374]["tOption1-5"] = {5,7,8}
		end
		
		return true
	end
end
tNpcGossip[20374]["OptionFunc5"] = "GuildBuildingActivity_LeaderSign</N>20374"
tNpcGossip[20374]["OptionFunc6"] = "GuildBuildingActivity_LeaderSign</N>20374"
tNpcGossip[20374]["OptionFunc7"] = "GuildBuildingActivity_OpenWebAddress"

-- 接【签到领建材。】
-- 失败、临界点、活动时间已过
tNpcGossip[20374]["Text2-1"] = {211}
tNpcGossip[20374]["tOption2-1"] = {9}

-- 失败、当日已完成签到
tNpcGossip[20374]["Text2-2"] = {221}
tNpcGossip[20374]["tOption2-2"] = {10}

-- 失败、背包满
tNpcGossip[20374]["Text2-3"] = {231}
tNpcGossip[20374]["tOption2-3"] = {11}

-- 成功、第1次签到
tNpcGossip[20374]["Text2-4"] = {241,242}
tNpcGossip[20374]["tOption2-4"] = {12}

-- 成功、之后每次签到
tNpcGossip[20374]["Text2-5"] = {251}
tNpcGossip[20374]["tOption2-5"] = {12}


-- 20375 帮派建设返利专员
-- 头像
tNpcFace[2950] = 412

tNpcGossip[20375] = tNpcGossip[20375] or DefaultNpc:new{}
tNpcGossip[20375]["OptionHidden"] = 1
tNpcGossip[20375]["DialogueText"] = tGuildBuildingActivity_Text[20375]

-- 活动时间前
tNpcGossip[20375]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20375]["tOption1-1"] = {1}
tNpcGossip[20375]["ChkFunc1-1"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20375]["Text114"] = string.format(tGuildBuildingActivity_Text[20375]["Text114"],nLevel)
	
	return CommonFunc_GetBeforeActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间后
tNpcGossip[20375]["Text1-2"] = {121,122}
tNpcGossip[20375]["tOption1-2"] = {2}
tNpcGossip[20375]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间中
-- 等级不足
tNpcGossip[20375]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20375]["tOption1-3"] = {3}
tNpcGossip[20375]["ChkFunc1-3"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20375]["Text134"] = string.format(tGuildBuildingActivity_Text[20375]["Text134"],nLevel)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return true
		else
			return false
		end
	end
end

-- 满足条件
tNpcGossip[20375]["Text1-4"] = {141,142,143,144,145,146}
tNpcGossip[20375]["tOption1-4"] = {4,5,6,7,8,9}
tNpcGossip[20375]["ChkFunc1-4"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20375]["Text144"] = string.format(tGuildBuildingActivity_Text[20375]["Text144"],nLevel)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return false
		end
		
		local nEventType = tGuildBuildingActivity_Data["Stc"]["Return"]["EventType"]
		local nDataType = tGuildBuildingActivity_Data["Stc"]["Return"]["DataType"]
		-- 是否隔天
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
		
		-- 判断是否已领
		for i = 1,4 do
			local nIndex = i + 3
			if GuildBuildingActivity_ChkStc(i) then
				tNpcGossip[20375]["Option".. nIndex] = tGuildBuildingActivity_Text[20375]["Option".. nIndex]..tGuildBuildingActivity_Text["Already"]
			else
				tNpcGossip[20375]["Option".. nIndex] = tGuildBuildingActivity_Text[20375]["Option".. nIndex]
			end
		end
		
		return true
	end
end
tNpcGossip[20375]["OptionFunc4"] = "GuildBuildingActivity_Return</N>20375</N>1"
tNpcGossip[20375]["OptionFunc5"] = "GuildBuildingActivity_Return</N>20375</N>2"
tNpcGossip[20375]["OptionFunc6"] = "GuildBuildingActivity_Return</N>20375</N>3"
tNpcGossip[20375]["OptionFunc7"] = "GuildBuildingActivity_Return</N>20375</N>4"
tNpcGossip[20375]["OptionPoint8"] = "2-8"

-- 接【领取返利礼包】
-- 失败、临界点、活动时间已过
tNpcGossip[20375]["Text2-1"] = {211}
tNpcGossip[20375]["tOption2-1"] = {10}

-- 失败、今日已领取
tNpcGossip[20375]["Text2-2"] = {221}
tNpcGossip[20375]["tOption2-2"] = {11}

-- 失败、上交材料数量不足
-- 木材
tNpcGossip[20375]["Text2-3"] = {231}
tNpcGossip[20375]["tOption2-3"] = {12}
-- 大理石
tNpcGossip[20375]["Text2-4"] = {241}
tNpcGossip[20375]["tOption2-4"] = {12}
-- 金砖
tNpcGossip[20375]["Text2-5"] = {251}
tNpcGossip[20375]["tOption2-5"] = {12}
-- 花岗岩
tNpcGossip[20375]["Text2-6"] = {261}
tNpcGossip[20375]["tOption2-6"] = {12}

-- 失败、背包满
tNpcGossip[20375]["Text2-7"] = {271}
tNpcGossip[20375]["tOption2-7"] = {13}

-- 成功
-- 木材
tNpcGossip[20375]["Text3-1"] = {311}
tNpcGossip[20375]["tOption3-1"] = {14}
-- 大理石
tNpcGossip[20375]["Text3-2"] = {321}
tNpcGossip[20375]["tOption3-2"] = {14}
-- 金砖
tNpcGossip[20375]["Text3-3"] = {331}
tNpcGossip[20375]["tOption3-3"] = {14}
-- 花岗岩
tNpcGossip[20375]["Text3-4"] = {341}
tNpcGossip[20375]["tOption3-4"] = {14}

-- 了解返利规则
tNpcGossip[20375]["Text2-8"] = {281,282,283,284,285,286,287,288,289,290}
tNpcGossip[20375]["tOption2-8"] = {15}


-- 20376 黑市建材商
-- 头像
tNpcFace[2951] = 413

tNpcGossip[20376] = tNpcGossip[20376] or DefaultNpc:new{}
tNpcGossip[20376]["OptionHidden"] = 1
tNpcGossip[20376]["DialogueText"] = tGuildBuildingActivity_Text[20376]

-- 活动时间前
tNpcGossip[20376]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20376]["tOption1-1"] = {1}
tNpcGossip[20376]["ChkFunc1-1"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20376]["Text114"] = string.format(tGuildBuildingActivity_Text[20376]["Text114"],nLevel)
	
	return CommonFunc_GetBeforeActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间后
tNpcGossip[20376]["Text1-2"] = {121,122}
tNpcGossip[20376]["tOption1-2"] = {2}
tNpcGossip[20376]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间中
-- 等级不足
tNpcGossip[20376]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[20376]["tOption1-3"] = {3}
tNpcGossip[20376]["ChkFunc1-3"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20376]["Text134"] = string.format(tGuildBuildingActivity_Text[20376]["Text134"],nLevel)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return true
		else
			return false
		end
	end
end

-- 满足条件
tNpcGossip[20376]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[20376]["tOption1-4"] = {4,5,6,24,7}
tNpcGossip[20376]["ChkFunc1-4"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20376]["Text144"] = string.format(tGuildBuildingActivity_Text[20376]["Text144"],nLevel)
	
	if Sys_ChkFullTime (tGuildBuildingActivity_Data["ActivityTime"]) then
		-- 判断等级
		if User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return true
		else
			return false
		end
	end
end
tNpcGossip[20376]["OptionPoint4"] = "2-1"
tNpcGossip[20376]["OptionPoint5"] = "2-2"
tNpcGossip[20376]["OptionPoint6"] = "2-3"
tNpcGossip[20376]["OptionPoint24"] = "2-4"

-- 接【金砖兑换木材（1:10）。】
tNpcGossip[20376]["Text2-1"] = {211}
tNpcGossip[20376]["tOption2-1"] = {8,9,10,11}
tNpcGossip[20376]["OptionFunc8"] = "GuildBuildingActivity_Exchange</N>20376</N>3003495</N>1</N>10"
tNpcGossip[20376]["OptionFunc9"] = "GuildBuildingActivity_Exchange</N>20376</N>3003495</N>5</N>50"
tNpcGossip[20376]["OptionFunc10"] = "GuildBuildingActivity_Exchange</N>20376</N>3003495</N>20</N>200"

-- 接【金砖兑换大理石（1:10）。】
tNpcGossip[20376]["Text2-2"] = {221}
tNpcGossip[20376]["tOption2-2"] = {12,13,14,15}
tNpcGossip[20376]["OptionFunc12"] = "GuildBuildingActivity_Exchange</N>20376</N>3003496</N>1</N>10"
tNpcGossip[20376]["OptionFunc13"] = "GuildBuildingActivity_Exchange</N>20376</N>3003496</N>5</N>50"
tNpcGossip[20376]["OptionFunc14"] = "GuildBuildingActivity_Exchange</N>20376</N>3003496</N>20</N>200"

-- 接【金砖兑换花岗岩（1:1）。】
tNpcGossip[20376]["Text2-3"] = {231}
tNpcGossip[20376]["tOption2-3"] = {16,17,18,19}
tNpcGossip[20376]["OptionFunc16"] = "GuildBuildingActivity_Exchange</N>20376</N>3005912</N>1</N>1"
tNpcGossip[20376]["OptionFunc17"] = "GuildBuildingActivity_Exchange</N>20376</N>3005912</N>5</N>5"
tNpcGossip[20376]["OptionFunc18"] = "GuildBuildingActivity_Exchange</N>20376</N>3005912</N>20</N>20"

-- 接【金砖兑换炸弹（1:1）。】
tNpcGossip[20376]["Text2-4"] = {241}
tNpcGossip[20376]["tOption2-4"] = {25,26,27,28}
tNpcGossip[20376]["OptionFunc25"] = "GuildBuildingActivity_Exchange</N>20376</N>3003499</N>1</N>1"
tNpcGossip[20376]["OptionFunc26"] = "GuildBuildingActivity_Exchange</N>20376</N>3003499</N>5</N>5"
tNpcGossip[20376]["OptionFunc27"] = "GuildBuildingActivity_Exchange</N>20376</N>3003499</N>20</N>20"

-- 失败、临界点、活动时间已过
tNpcGossip[20376]["Text3-1"] = {311,312}
tNpcGossip[20376]["tOption3-1"] = {20}

-- 失败、数量不足
tNpcGossip[20376]["Text3-2"] = {321}
tNpcGossip[20376]["tOption3-2"] = {21}

-- 失败、背包满
tNpcGossip[20376]["Text3-3"] = {331}
tNpcGossip[20376]["tOption3-3"] = {22}

-- 成功
tNpcGossip[20376]["Text3-4"] = {341}
tNpcGossip[20376]["tOption3-4"] = {23}


-- 帮派建设特使 20377 4669
-- 头像
tNpcFace[4669] = 111

tNpcGossip[20377] = tNpcGossip[20377] or DefaultNpc:new{}
tNpcGossip[20377]["OptionHidden"] = 1
tNpcGossip[20377]["DialogueText"] = tGuildBuildingActivity_Text[20377]

-- 活动时间前
tNpcGossip[20377]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20377]["tOption1-1"] = {1}
tNpcGossip[20377]["ChkFunc1-1"] = function()
	local nLevel = GuildBuildingActivity_Level()
	tNpcGossip[20377]["Text114"] = string.format(tGuildBuildingActivity_Text[20377]["Text114"],nLevel)
	
	return CommonFunc_GetBeforeActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间后
tNpcGossip[20377]["Text1-2"] = {121}
tNpcGossip[20377]["tOption1-2"] = {2}
tNpcGossip[20377]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 活动时间中
-- 满足条件
tNpcGossip[20377]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[20377]["tOption1-3"] = {5,6,7,8,9,10,11}
tNpcGossip[20377]["ChkFunc1-3"] = function()
	local nLevel = GuildBuildingActivity_Level()
	local nGuild = GuildBuildingActivity_Guild()
	tNpcGossip[20377]["Text134"] = string.format(tGuildBuildingActivity_Text[20377]["Text134"],nGuild)
	
	if Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"]) then
	
		-- 判断等级
		if not User_JudgeLevelAndMetempsychosis(nLevel,tGuildBuildingActivity_Data["MinMeto"]) then
			return false
		end
		
		-- 判断是否有帮派
		local nGuildId = Get_UserGuildId()
		if nGuildId == 0 then
			return false
		end
		
		-- 判断隔天
		local nEventType = tGuildBuildingActivity_Data["Stc"]["Partake"]["EventType"]
		local nDataType = tGuildBuildingActivity_Data["Stc"]["Partake"]["DataType"]
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
		
		if Task_ChkStcValue(nEventType,nDataType,"==",0) then
			tNpcGossip[20377]["tOption1-3"] = {5,6,8,9,10,11}
		else
			tNpcGossip[20377]["tOption1-3"] = {5,7,8,9,10,11}
		end
		
		return true
	end
end
tNpcGossip[20377]["OptionPoint5"] = "2-1"
tNpcGossip[20377]["OptionFunc6"] = "GuildBuildingActivity_AwardPartakePack</N>20377"
tNpcGossip[20377]["OptionFunc7"] = "GuildBuildingActivity_AwardPartakePack</N>20377"
tNpcGossip[20377]["OptionFunc8"] = "GuildBuildingActivity_AwardContributePack</N>20377"
tNpcGossip[20377]["OptionFunc9"] = "GuildBuildingActivity_OpenWebAddress"
tNpcGossip[20377]["OptionPoint10"] = "3-3"

-- 未满足条件
tNpcGossip[20377]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[20377]["tOption1-4"] = {3,4}
tNpcGossip[20377]["ChkFunc1-4"] = function()
	local nLevel = GuildBuildingActivity_Level()
	local nGuild = GuildBuildingActivity_Guild()
	tNpcGossip[20377]["Text144"] = string.format(tGuildBuildingActivity_Text[20377]["Text144"],nGuild)
	tNpcGossip[20377]["Text146"] = string.format(tGuildBuildingActivity_Text[20377]["Text146"],nLevel)
	GuildBuildingActivity_ManageNpc(20377,{3,4})
	return Sys_ChkFullTime(tGuildBuildingActivity_Data["ActivityTime"])
end

-- 接【上交帮派建设材料】
tNpcGossip[20377]["Text2-1"] = {211}
tNpcGossip[20377]["tOption2-1"] = {13,14,15,16,17,18,19}
tNpcGossip[20377]["OptionFunc13"] = "GuildBuildingActivity_ChooseToSubmit</N>20377</N>3003495"
tNpcGossip[20377]["OptionFunc14"] = "GuildBuildingActivity_ChooseToSubmit</N>20377</N>3003496"
tNpcGossip[20377]["OptionFunc15"] = "GuildBuildingActivity_ChooseToSubmit</N>20377</N>3003498"
tNpcGossip[20377]["OptionFunc16"] = "GuildBuildingActivity_ChooseToSubmit</N>20377</N>3005912"
tNpcGossip[20377]["OptionFunc17"] = "GuildBuildingActivity_ChooseToSubmit</N>20377</N>3003499"
tNpcGossip[20377]["OptionFunc18"] = "GuildBuildingActivity_ChooseToSubmit</N>20377</N>3003500"

-- 未加入帮派
tNpcGossip[20377]["Text4-3"] = {431}
tNpcGossip[20377]["tOption4-3"] = {39}

-- 选择上交数量
tNpcGossip[20377]["Text3-1"] = {311}
tNpcGossip[20377]["tOption3-1"] = {40,41,42,43,22}
tNpcGossip[20377]["OptionFunc40"] = "GuildBuildingActivity_SubmitPoints</N>1"
tNpcGossip[20377]["OptionFunc41"] = "GuildBuildingActivity_SubmitPoints</N>5"
tNpcGossip[20377]["OptionFunc42"] = "GuildBuildingActivity_SubmitPoints</N>20"
tNpcGossip[20377]["OptionFunc43"] = "GuildBuildingActivity_SubmitPoints</N>100"

-- 选择上交数量
tNpcGossip[20377]["Text3-2"] = {321}
tNpcGossip[20377]["tOption3-2"] = {23,24,25}
tNpcGossip[20377]["OptionFunc23"] = "GuildBuildingActivity_Submit</N>1</N>20373"
tNpcGossip[20377]["OptionFunc24"] = "GuildBuildingActivity_Submit</N>5</N>20373"

-- 失败、数量不足
tNpcGossip[20377]["Text4-1"] = {411}
tNpcGossip[20377]["tOption4-1"] = {26}

-- 成功上交5-6
tNpcGossip[20377]["Text4-3"] = {431}
tNpcGossip[20377]["tOption4-3"] = {39}

-- 成功上交1-4
tNpcGossip[20377]["Text4-2"] = {421,423}
tNpcGossip[20377]["tOption4-2"] = {27}

-- 接【领取热心参与礼包】
-- 失败、已领取
tNpcGossip[20377]["Text2-2"] = {221}
tNpcGossip[20377]["tOption2-2"] = {28}

-- 失败、尚未助帮派增加50点积分
tNpcGossip[20377]["Text2-3"] = {231}
tNpcGossip[20377]["tOption2-3"] = {29}

-- 失败、背包满
tNpcGossip[20377]["Text2-4"] = {241}
tNpcGossip[20377]["tOption2-4"] = {30}

-- 成功、领取热心参与礼包
tNpcGossip[20377]["Text2-5"] = {251,252}
tNpcGossip[20377]["tOption2-5"] = {31}

-- 接【领取积极贡献礼包】
-- 失败、尚未助帮派增加100点积分
tNpcGossip[20377]["Text2-6"] = {261}
tNpcGossip[20377]["tOption2-6"] = {32}

-- 失败、领完累积的积极贡献礼包
tNpcGossip[20377]["Text2-7"] = {271,272}
tNpcGossip[20377]["tOption2-7"] = {33}

-- 失败、背包满
tNpcGossip[20377]["Text2-8"] = {281}
tNpcGossip[20377]["tOption2-8"] = {34}

-- 成功
tNpcGossip[20377]["Text2-9"] = {291,292}
tNpcGossip[20377]["tOption2-9"] = {35,36}
tNpcGossip[20377]["OptionFunc35"] = "GuildBuildingActivity_AwardContributePack</N>20377"

-- 接【了解活动详情】
tNpcGossip[20377]["Text3-3"] = {331,332,333,334,335,336,337,338,339,340,341,342}
tNpcGossip[20377]["tOption3-3"] = {37}
tNpcGossip[20377]["OptionPoint37"] = "3-5"

-- 接【如何获得建材？】
tNpcGossip[20377]["Text3-5"] = {351,352,353,354,355,356,357,358,359,360}
tNpcGossip[20377]["tOption3-5"] = {38}


-- 帮派会所管理员（场外） 20372
-- 头像
tNpcFace[2972] = 414

tNpcGossip[20372] = tNpcGossip[i] or DefaultNpc:new{}
tNpcGossip[20372]["OptionHidden"] = 1
tNpcGossip[20372]["DialogueText"] = tGuildBuildingActivity_Text[20372]

tNpcGossip[20372]["Text1-1"] = {111,112,113,114}
tNpcGossip[20372]["tOption1-1"] = {1,2}
tNpcGossip[20372]["ChkFunc1-1"] = function()
	-- 判断帮派
	local nGuildId = Get_UserGuildId()
	
	-- 无帮派时
	if nGuildId == 0 then
		return true
	end
	
	-- 如果玩家帮派ID与激活的帮派ID一致
	for i = 1,4 do
		if nGuildId == Get_SysDynaGlobalData0(tGuildBuildingActivity_Data["Square"]["Global"][i]) then
			return false
		end
	end
	
	return true
end
tNpcGossip[20372]["OptionFunc1"] = "GuildBuildingActivity_OpenGuildSquare</N>20372"

tNpcGossip[20372]["Text1-2"] = {121,122,123,124}
tNpcGossip[20372]["tOption1-2"] = {5}
tNpcGossip[20372]["ChkFunc1-2"] = function()
	-- 判断帮派
	local nGuildId = Get_UserGuildId()
	
	-- 无帮派时
	if nGuildId == 0 then
		return false
	end
	
	-- 如果玩家帮派ID与激活的帮派ID一致
	for i = 1,4 do
		if nGuildId == Get_SysDynaGlobalData0(tGuildBuildingActivity_Data["Square"]["Global"][i]) then
			return true
		end
	end
	
	return false
end
tNpcGossip[20372]["OptionFunc5"] = "GuildBuildingActivity_InGuildSquare</N>20372"

tNpcGossip[20372]["Text2-1"] = {211}
tNpcGossip[20372]["tOption2-1"] = {3}

tNpcGossip[20372]["Text3-1"] = {311}
tNpcGossip[20372]["tOption3-1"] = {4}

-- 帮派会所管理员（场内） 20393 20394 20395 20396
-- 头像
tNpcFace[2972] = 414
for i = 20393, 20396 do
	
	tNpcGossip[i] = tNpcGossip[i] or DefaultNpc:new{}
	tNpcGossip[i]["OptionHidden"] = 1
	tNpcGossip[i]["DialogueText"] = tGuildBuildingActivity_Text[i]
	
	-- 主对白
	tNpcGossip[i]["Text1-1"] = {111,112,113,114}
	tNpcGossip[i]["tOption1-1"] = {1,2,3,4}
	tNpcGossip[i]["OptionFunc1"] = "GuildBuildingActivity_DragonBallRain</N>" .. i
	tNpcGossip[i]["OptionFunc2"] = "GuildBuildingActivity_EmoneyRain</N>" .. i
	tNpcGossip[i]["OptionFunc3"] = "GuildBuildingActivity_Leave"
	
	-- 接【求降“龙珠雨”。】
	-- 失败、已下过
	tNpcGossip[i]["Text2-1"] = {211}
	tNpcGossip[i]["tOption2-1"] = {5}
	
	-- 成功、二次确认
	tNpcGossip[i]["Text2-2"] = {221,222,223}
	tNpcGossip[i]["tOption2-2"] = {6,7}
	tNpcGossip[i]["OptionFunc6"] = "GuildBuildingActivity_ConfirmDragonBallRain</N>" .. i
	
	-- 接【确认求降“龙珠雨”。】
	-- 失败、当前正在下“天石雨”
	tNpcGossip[i]["Text3-1"] = {311}
	tNpcGossip[i]["tOption3-1"] = {8}
	
	-- 失败、正在下“龙珠雨”
	tNpcGossip[i]["Text3-2"] = {321,322}
	tNpcGossip[i]["tOption3-2"] = {9}
	
	-- 失败、非帮主
	tNpcGossip[i]["Text3-3"] = {331}
	tNpcGossip[i]["tOption3-3"] = {10}
	
	-- 成功
	tNpcGossip[i]["Text3-4"] = {341}
	tNpcGossip[i]["tOption3-4"] = {11}
	
	-- 接【求降“天石雨”。】
	-- 失败、已下过
	tNpcGossip[i]["Text2-3"] = {231}
	tNpcGossip[i]["tOption2-3"] = {12}
	
	-- 失败、3场都已下过
	tNpcGossip[i]["Text2-4"] = {241}
	tNpcGossip[i]["tOption2-4"] = {13}
	
	-- 成功、二次确认
	tNpcGossip[i]["Text2-5"] = {251,252,253}
	tNpcGossip[i]["tOption2-5"] = {14,15}
	tNpcGossip[i]["OptionFunc14"] = "GuildBuildingActivity_ConfirmEmoneyRain</N>" .. i
	
	-- 接【确认求降“天石雨”。】
	-- 失败、当前正在下“龙珠雨”
	tNpcGossip[i]["Text3-5"] = {351}
	tNpcGossip[i]["tOption3-5"] = {16}
	
	-- 失败、正在下“天石雨”
	tNpcGossip[i]["Text3-6"] = {361,362}
	tNpcGossip[i]["tOption3-6"] = {17}
	
	-- 失败、非帮主
	tNpcGossip[i]["Text3-7"] = {371}
	tNpcGossip[i]["tOption3-7"] = {18}
	
	-- 成功
	tNpcGossip[i]["Text3-8"] = {381,382}
	tNpcGossip[i]["tOption3-8"] = {19}
end
--------------------------------------物品模块-------------------------------------------
-- 木材返利礼包
tItem[3302461] = tItem[3302461] or {}
tItem[3302461]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward[3302461])
end

-- 大理石返利礼包
tItem[3302462] = tItem[3302462] or {}
tItem[3302462]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward[3302462])
end

-- 金砖返利礼包
tItem[3302463] = tItem[3302463] or {}
tItem[3302463]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward[3302463])
end

-- 花岗岩返利礼包
tItem[3302464] = tItem[3302464] or {}
tItem[3302464]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward[3302464])
end

-- 使用50块金砖箱
tItem[3302527] = tItem[3302527] or {}
tItem[3302527]["Function"] = function(nItemId,sItemName)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_UseItemAndMsg(tGuildBuildingActivity_Reward[nItemId])
	end
end
--------------------------------------怪物模块-------------------------------------------
tMonster[2738] = tMonster[2738] or {}
tMonster[2738]["tFunction"] = tMonster[2738]["tFunction"] or {}
table.insert(tMonster[2738]["tFunction"],GuildBuildingActivity_KillPhantomBeast)

tMonster[2739] = tMonster[2739] or {}
tMonster[2739]["tFunction"] = tMonster[2739]["tFunction"] or {}
table.insert(tMonster[2739]["tFunction"],GuildBuildingActivity_KillVolcanoBeast)

------------------------------------------------------------------------------------
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],GuildBuildingActivity_ClearGlobal)
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],GuildBuildingActivity_ClearGlobal)
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],GuildBuildingActivity_ClearGlobalFlag)
-- tOntimerMin_HM[0003] = tOntimerMin_HM[0003] or {}
-- table.insert(tOntimerMin_HM[0003],GuildBuildingActivity_ClearGlobalFlag)