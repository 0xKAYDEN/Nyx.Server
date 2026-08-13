------------------------------------------------------------------------------------
--Name:			170712[简体征服][活动脚本]七夕节活动制作
--Purpose:		七夕节活动制作
--Creator:		陈琳
--Created:		2017/07/12
------------------------------------------------------------------------------------
-- lua.ini
-- 40573

-- logid
-- 12000783

-- 掩码说明
-- stc(163,27) 背包信
-- stc(163,28) 记录是否是首次点击至尊宝主对白
-- stc(163,29) 记录每天进入天河之畔的情况
-- stc(163,30) 记录累计星月值
-- stc(163,31) 记录每天上交星光次数
-- stc(163,32) 记录 3304155 星光灿烂礼包 打开次数
-- stc(163,78) 记录每天上交月华次数
-- stc(163,79) 记录每天上交星光非首次后获得奖励次数
-- stc(163,80) 记录鲜花任务每天免费完成次数
-- stc(163,81) 记录鲜花任务额外完成次数
-- stc(163,82) 记录每天刷新鲜花任务的次数
-- stc(163,83) 记录玩家开启每颗星星的奖励礼包的情况
-- stc(163,84) 记录鲜花任务完成情况
-- stc(163,85) 记录每天完成鲜花任务的次数
-- stc(163,87) 记录打开星月值兑换的礼包的情况
-- stc(163,88) 记录打怪次数令牌的产出（每天）
-- stc(163,89) 记录是否是首次点击【前往天河之畔收集星光月华】选项
-- stc(163,95) 记录是否是首次点击青霞仙子选项
-- stc(163,96) 记录3304151 赤霄火云坐骑碎片翻倍成功的次数
-- stc(900,00) 记录片区怪物杀怪数（每天）
-- stc(165,54) 记录点亮星星的情况

-- cq_dyna_global_data
-- 51704
-- data1~data5 前五名玩家成绩
-- datastr1~datastr5 前五名玩家名字
-- 51705
-- data1~data5 前五名玩家ID
-- 51709
-- data1~data5 后五名玩家成绩
-- datastr1~datastr5 后五名玩家名字
-- 51728
-- data1~data5 后五名玩家ID
-- 51729
-- data1~data5 昨天前五名玩家ID
-- data0 开关
-- 51730
-- data1~data5 昨天后五名玩家ID

-- npc
-- 21997 至尊宝 5692
-- 21998 青霞仙子 5693

-- itemtype
-- 194865 紫音青衫 无光效七夕外套 可显示玩家发型的外套
-- 194875 紫音青衫 光效七夕外套 可显示玩家发型的外套
-- 200613 赤霄火云 坐骑外套
-- 200614 蓝海苍云 坐骑外套
-- 3304134 玫瑰兑换券
-- 3304135 兰花兑换券
-- 3304136 百合兑换券
-- 3304137 郁金香兑换券
-- 3304138 星光碎片
-- 3304139 星光
-- 3304140 月华
-- 3304141 相思泪
-- 3304142 七夕鲜花礼包
-- 3304143 七夕鲜花豪华包
-- 3304144 1天【外套名】包
-- 3304145 1天【光效外套名】包
-- 3304146 7天【外套名】包
-- 3304147 15天【外套名】包
-- 3304148 永久【外套名】礼包
-- 3304149 忘情水礼包
-- 3304150 永久【高级外套名】包
-- 3304151 赤霄火云坐骑碎片
-- 3304152 永久赤霄火云坐骑外套典藏包
-- 3304676 永久蓝海苍云坐骑外套典藏包
-- 3304153 七夕气力礼包
-- 3304154 忘情水
-- 3304155 星光灿烂礼包
-- 3304156 一个金箍
-- 3304546 月华礼盒
-- 3304547 永久蓝海苍云坐骑外套包

-- 南宫
-- 189685 大圣魔铠 216
-- 189695 大圣魔铠【齐天】 217

-- 前缀	ChineseValentinesDay_
--------------------------------------数据部分-------------------------------------------
local tChineseValentinesDay_Data = {}
	
	-- 等级
	tChineseValentinesDay_Data["Level"] = 80
	tChineseValentinesDay_Data["Metempsychosis"] = 0
	
	-- 停留天河之畔时间
	tChineseValentinesDay_Data["StayInTheMap"] = 1800
	
	-- 花天石获得额外鲜花任务次数
	tChineseValentinesDay_Data["EmoneyExchange"] = 270
	-- 话银两刷新鲜花任务
	tChineseValentinesDay_Data["SilverExchange"] = 30000
	
	-- 排行榜对应对白
	-- tChineseValentinesDay_Data["Rank"] = {}
	-- tChineseValentinesDay_Data["Rank"][1] = "Text2811"
	-- tChineseValentinesDay_Data["Rank"][2] = "Text2812"
	-- tChineseValentinesDay_Data["Rank"][3] = "Text2813"
	-- tChineseValentinesDay_Data["Rank"][4] = "Text2814"
	-- tChineseValentinesDay_Data["Rank"][5] = "Text2815"
	-- tChineseValentinesDay_Data["Rank"][6] = "Text2816"
	-- tChineseValentinesDay_Data["Rank"][7] = "Text2817"
	-- tChineseValentinesDay_Data["Rank"][8] = "Text2818"
	-- tChineseValentinesDay_Data["Rank"][9] = "Text2819"
	-- tChineseValentinesDay_Data["Rank"][10] = "Text2820"
	
	-- tChineseValentinesDay_Data["Left"] = 1
	-- tChineseValentinesDay_Data["Middle"] = 15
	-- tChineseValentinesDay_Data["Right"] = 37
	
	-- tChineseValentinesDay_Data["Global"] = {}
	-- tChineseValentinesDay_Data["Global"][1] = {51704,51705}
	-- tChineseValentinesDay_Data["Global"][2] = {51709,51728}
	-- tChineseValentinesDay_Data["Global"][3] = {51729,51730}
	
	-- 邮件发奖
	-- tChineseValentinesDay_Data["SendMail"] = {}
	-- 排行榜
	-- tChineseValentinesDay_Data["SendMail"]["Rank"] = {}
	-- tChineseValentinesDay_Data["SendMail"]["Rank"]["ExistDay"] = 30
	-- tChineseValentinesDay_Data["SendMail"]["Rank"]["ActionId"] = {}
	-- tChineseValentinesDay_Data["SendMail"]["Rank"]["ActionId"][1] = 566052
	-- tChineseValentinesDay_Data["SendMail"]["Rank"]["ActionId"][2] = 566105
	
	-- 外套
	tChineseValentinesDay_Data["GeneralTitleCoatId"] = {}
	tChineseValentinesDay_Data["GeneralTitleCoatId"][1] = 218
	tChineseValentinesDay_Data["GeneralTitleCoatId"][2] = 219
	-- tChineseValentinesDay_Data["GeneralTitleCoatId"][3] = 216
	-- tChineseValentinesDay_Data["GeneralTitleCoatId"][4] = 217
	
	tChineseValentinesDay_Data["SpecialTitleCoatId"] = {}
	tChineseValentinesDay_Data["SpecialTitleCoatId"][1] = {219,1}
	tChineseValentinesDay_Data["SpecialTitleCoatId"][2] = {157,2}
	tChineseValentinesDay_Data["SpecialTitleCoatId"][3] = {158,2}
	
	tChineseValentinesDay_Data["TitleId"] = {}
	tChineseValentinesDay_Data["TitleId"]["General"] = 2063
	tChineseValentinesDay_Data["TitleId"]["Special"] = {}
	tChineseValentinesDay_Data["TitleId"]["Special"][1] = 2065
	tChineseValentinesDay_Data["TitleId"]["Special"][2] = 2064
	
	-- 星星奖励
	tChineseValentinesDay_Data["Star"] = {3304146,3304147,3304153,3304148,3304149,3304150,3304547}
	
	-- 点亮星星需要的星月值
	tChineseValentinesDay_Data["NeedPoints"] = {}
	tChineseValentinesDay_Data["NeedPoints"][1] = 100
	tChineseValentinesDay_Data["NeedPoints"][2] = 150
	tChineseValentinesDay_Data["NeedPoints"][3] = 200
	tChineseValentinesDay_Data["NeedPoints"][4] = 300
	tChineseValentinesDay_Data["NeedPoints"][5] = 500
	tChineseValentinesDay_Data["NeedPoints"][6] = 700
	tChineseValentinesDay_Data["NeedPoints"][7] = 1000
	
	-- 掩码
	tChineseValentinesDay_Data["Stc"] = {}
	-- stc(163,27) 背包信
	tChineseValentinesDay_Data["Stc"]["BackpackLetter"] = {}
	tChineseValentinesDay_Data["Stc"]["BackpackLetter"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["BackpackLetter"]["DataType"] = 27
	tChineseValentinesDay_Data["Stc"]["BackpackLetter"]["Complete"] = 1
	-- stc(163,28) 记录是否是首次点击至尊宝主对白
	tChineseValentinesDay_Data["Stc"]["Click"] = {}
	tChineseValentinesDay_Data["Stc"]["Click"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Click"]["DataType"] = 28
	tChineseValentinesDay_Data["Stc"]["Click"]["Complete"] = 1
	-- stc(163,29) 记录每天进入天河之畔的情况
	tChineseValentinesDay_Data["Stc"]["ChgMap"] = {}
	tChineseValentinesDay_Data["Stc"]["ChgMap"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["ChgMap"]["DataType"] = 29
	tChineseValentinesDay_Data["Stc"]["ChgMap"]["Complete"] = 1
	tChineseValentinesDay_Data["Stc"]["ChgMap"]["TimeType"] = 1
	tChineseValentinesDay_Data["Stc"]["ChgMap"]["Delay"] = 30
	-- stc(163,30) 记录累计星月值
	tChineseValentinesDay_Data["Stc"]["Points"] = {}
	tChineseValentinesDay_Data["Stc"]["Points"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Points"]["DataType"] = 30
	-- stc(163,31) 记录每天上交星光次数
	tChineseValentinesDay_Data["Stc"]["SubmitStarlight"] = {}
	tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["DataType"] = 31
	tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["Complete"] = 30
	-- stc(163,32) 记录 3304155 星光灿烂礼包 打开次数
	tChineseValentinesDay_Data["Stc"]["StarlightPack"] = {}
	tChineseValentinesDay_Data["Stc"]["StarlightPack"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["StarlightPack"]["DataType"] = 32
	tChineseValentinesDay_Data["Stc"]["StarlightPack"]["Complete"] = 10
	-- stc(163,78) 记录每天上交月华次数
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"] = {}
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["DataType"] = 78
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["Complete"] = 10
	-- stc(163,79) 记录每天上交星光非首次后获得奖励次数
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlightReward"] = {}
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlightReward"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlightReward"]["DataType"] = 79
	tChineseValentinesDay_Data["Stc"]["SubmitMoonlightReward"]["Complete"] = 4
	-- stc(163,80) 记录鲜花任务每天免费完成次数
	tChineseValentinesDay_Data["Stc"]["Free"] = {}
	tChineseValentinesDay_Data["Stc"]["Free"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Free"]["DataType"] = 80
	tChineseValentinesDay_Data["Stc"]["Free"]["Complete"] = 10
	-- stc(163,81) 记录鲜花任务额外完成次数
	tChineseValentinesDay_Data["Stc"]["Extra"] = {}
	tChineseValentinesDay_Data["Stc"]["Extra"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Extra"]["DataType"] = 81
	-- stc(163,82) 记录每天刷新鲜花任务的次数
	tChineseValentinesDay_Data["Stc"]["Fresh"] = {}
	tChineseValentinesDay_Data["Stc"]["Fresh"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Fresh"]["DataType"] = 82
	-- stc(163,84) 记录鲜花任务完成情况
	tChineseValentinesDay_Data["Stc"]["Complete"] = {}
	tChineseValentinesDay_Data["Stc"]["Complete"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Complete"]["DataType"] = 84
	-- stc(163,85) 记录每天完成鲜花任务的次数
	tChineseValentinesDay_Data["Stc"]["Rank"] = {}
	tChineseValentinesDay_Data["Stc"]["Rank"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Rank"]["DataType"] = 85
	-- stc(900,00) 记录片区怪物杀怪数（每天）
	tChineseValentinesDay_Data["Stc"]["Monster"] = {}
	tChineseValentinesDay_Data["Stc"]["Monster"]["EventType"] = 900
	tChineseValentinesDay_Data["Stc"]["Monster"]["DataType"] = 00
	tChineseValentinesDay_Data["Stc"]["Monster"]["High"] = 5001
	tChineseValentinesDay_Data["Stc"]["Monster"]["Low"] = 1001
	-- stc(163,89) 记录是否是首次点击【前往天河之畔收集星光月华】选项
	tChineseValentinesDay_Data["Stc"]["ClickOption"] = {}
	tChineseValentinesDay_Data["Stc"]["ClickOption"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["ClickOption"]["DataType"] = 89
	tChineseValentinesDay_Data["Stc"]["ClickOption"]["Complete"] = 1
	-- stc(163,95) 记录是否是首次点击青霞仙子选项
	tChineseValentinesDay_Data["Stc"]["OldMan"] = {}
	tChineseValentinesDay_Data["Stc"]["OldMan"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["OldMan"]["DataType"] = 95
	tChineseValentinesDay_Data["Stc"]["OldMan"]["Complete"] = 1
	-- stc(163,96) 记录3304151 赤霄火云坐骑碎片翻倍成功的次数
	tChineseValentinesDay_Data["Stc"]["Gamble"] = {}
	tChineseValentinesDay_Data["Stc"]["Gamble"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Gamble"]["DataType"] = 96
	tChineseValentinesDay_Data["Stc"]["Gamble"]["Complete"] = 5
	-- stc(163,83) 记录玩家开启每颗星星的奖励礼包的情况
	tChineseValentinesDay_Data["Stc"]["Star"] = {}
	tChineseValentinesDay_Data["Stc"]["Star"]["EventType"] = 163
	tChineseValentinesDay_Data["Stc"]["Star"]["DataType"] = 83
	-- stc(165,54) 记录点亮星星的情况
	tChineseValentinesDay_Data["Stc"]["Light"] = {}
	tChineseValentinesDay_Data["Stc"]["Light"]["EventType"] = 165
	tChineseValentinesDay_Data["Stc"]["Light"]["DataType"] = 54
	tChineseValentinesDay_Data["Stc"]["Light"]["Complete"] = 7
	
	-- 光效
	tChineseValentinesDay_Data["Effect"] = {}
	tChineseValentinesDay_Data["Effect"]["ComposeStarlight"] = "dispel"
	tChineseValentinesDay_Data["Effect"]["DropStarlight"] = "bless"
	tChineseValentinesDay_Data["Effect"]["DropMoonlight"] = "allcure"
	tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"] = "zf2-e128"
	tChineseValentinesDay_Data["Effect"]["Mission"] = "pie"
	tChineseValentinesDay_Data["Effect"]["Submit"] = "card_beacon"
	
	-- itemtype
	tChineseValentinesDay_Data["Itemtype"] = {}
	tChineseValentinesDay_Data["Itemtype"]["BackpackLetter"] = 3304156
	tChineseValentinesDay_Data["Itemtype"]["Coat"] = 194865
	tChineseValentinesDay_Data["Itemtype"]["Starlight"] = 3304139
	tChineseValentinesDay_Data["Itemtype"]["Moonlight"] = 3304140
	tChineseValentinesDay_Data["Itemtype"]["Tears"] = 3304141
	
	-- 怪物掉落
	tChineseValentinesDay_Data["Drop"] = {}
	-- 片区
	tChineseValentinesDay_Data["Drop"]["Area"] = {}
	tChineseValentinesDay_Data["Drop"]["Area"][1] = 50
	tChineseValentinesDay_Data["Drop"]["Area"][2] = 100
	tChineseValentinesDay_Data["Drop"]["Area"][3] = 300
	tChineseValentinesDay_Data["Drop"]["Area"]["Sum"] = 10000
	
	-- 链接
	tChineseValentinesDay_Data["Web"] = {}
	-- 活动页面
	-- tChineseValentinesDay_Data["Web"][1] = "http://co.99.com/guide/event/2017/loveacrosstime/"
	-- 了解详情 图片攻略
	tChineseValentinesDay_Data["Web"][2] = "http://co.99.com/guide/event/2017/loveacrosstime/"
	
	-- log
	tChineseValentinesDay_Data["Log"] = {}
	tChineseValentinesDay_Data["Log"]["Timeout"] = "0,0,%d,%d,12000783,1,0,0"
	tChineseValentinesDay_Data["Log"]["InTheMap"] = "0,0,0,0,12000783,1[10201],0,0"
	tChineseValentinesDay_Data["Log"]["OutOfTheMap"] = "0,0,0,0,12000783,1[1002],0,0"
	tChineseValentinesDay_Data["Log"]["SubmitStarlight"] = "0,0,3304139,1,12000783,1[5],0,0"
	tChineseValentinesDay_Data["Log"]["SubmitMoonlight"] = "0,0,3304140,1,12000783,1[6],0,0"
	tChineseValentinesDay_Data["Log"]["TearsAddTimes"] = "0,0,%d,%d,12000783,1[4],0,0"
	tChineseValentinesDay_Data["Log"]["NewMission"] = "0,0,1,30000,12000783,1[3],0,0"
	
	-- Emoneylog
	tChineseValentinesDay_Data["Emoneylog"] = {}
	tChineseValentinesDay_Data["Emoneylog"]["AddTimes"] = "250	4012	270	270	1	"
	tChineseValentinesDay_Data["Emoneylog"]["NewMission"] = "350	20764	0	0	1	"
	
	-- 上交【星光】
	tChineseValentinesDay_Data["Log"]["SubmitStartlight"] = "0,0,3304139,1,12000783,1[5],0,0"
	-- 上交【月华】
	tChineseValentinesDay_Data["Log"]["SubmitMoonlight"] = "0,0,3304140,1,12000783,1[6],0,0"
	-- 排行榜
	-- tChineseValentinesDay_Data["Log"]["Rank"] = {}
	-- tChineseValentinesDay_Data["Log"]["Rank"][1] = "0,0,0,1,12000783,2,3304151,1"
	-- tChineseValentinesDay_Data["Log"]["Rank"][2] = "0,0,0,1,12000783,2,3304142,1"
	
	-- 坐标
	tChineseValentinesDay_Data["Location"] = {}
	-- 至尊宝
	tChineseValentinesDay_Data["Location"]["MonkeyKing"] = {}
	tChineseValentinesDay_Data["Location"]["MonkeyKing"]["NpcId"] = 21997
	tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosX"] = 330 --245
	tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosY"] = 438 --230
	tChineseValentinesDay_Data["Location"]["MonkeyKing"]["MapId"] = 1002 --1036
	-- 青霞仙子
	tChineseValentinesDay_Data["Location"]["OldMan"] = {}
	tChineseValentinesDay_Data["Location"]["OldMan"]["NpcId"] = 21998
	tChineseValentinesDay_Data["Location"]["OldMan"]["PosX"] = 317 --245
	tChineseValentinesDay_Data["Location"]["OldMan"]["PosY"] = 438 --244
	tChineseValentinesDay_Data["Location"]["OldMan"]["MapId"] = 1002 --1036
	-- 天河之畔
	tChineseValentinesDay_Data["Location"]["River"] = {}
	tChineseValentinesDay_Data["Location"]["River"]["PosX"] = 238
	tChineseValentinesDay_Data["Location"]["River"]["PosY"] = 115
	tChineseValentinesDay_Data["Location"]["River"]["MapId"] = 10201
	-- 市场
	tChineseValentinesDay_Data["Location"]["Market"] = {}
	tChineseValentinesDay_Data["Location"]["Market"]["PosX"] = 323 --250 -- 测试用 待定
	tChineseValentinesDay_Data["Location"]["Market"]["PosY"] = 442 --230 -- 测试用 待定
	tChineseValentinesDay_Data["Location"]["Market"]["MapId"] = 1002 --1036
	
	-- 兑换券选项
	tChineseValentinesDay_Data["CouponOption"] = {}
	tChineseValentinesDay_Data["CouponOption"][1] = 1
	tChineseValentinesDay_Data["CouponOption"][2] = 3
	tChineseValentinesDay_Data["CouponOption"][3] = 9
	tChineseValentinesDay_Data["CouponOption"][4] = 99
	tChineseValentinesDay_Data["CouponOption"][5] = 999
	
	-- 概率
	tChineseValentinesDay_Data["Random"] = {}
	-- 赤霄火云坐骑碎片
	tChineseValentinesDay_Data["Random"]["MountCoat"] = {}
	tChineseValentinesDay_Data["Random"]["MountCoat"]["StartNum"] = 48
	tChineseValentinesDay_Data["Random"]["MountCoat"]["EndNum"] = 100
	-- 上交星光
	tChineseValentinesDay_Data["Random"]["SubmitStarlight"] = {}
	tChineseValentinesDay_Data["Random"]["SubmitStarlight"]["StartNum"] = 10
	tChineseValentinesDay_Data["Random"]["SubmitStarlight"]["EndNum"] = 100
	
	-- 鲜花任务
	tChineseValentinesDay_Data["Flowes"] = {}
	tChineseValentinesDay_Data["Flowes"][1] = {754001,3304137,1}
	tChineseValentinesDay_Data["Flowes"][2] = {754003,3304137,3}
	tChineseValentinesDay_Data["Flowes"][3] = {754009,3304137,9}
	tChineseValentinesDay_Data["Flowes"][4] = {754099,3304137,99}
	tChineseValentinesDay_Data["Flowes"][5] = {754999,3304137,999}
	tChineseValentinesDay_Data["Flowes"][6] = {753001,3304135,1}
	tChineseValentinesDay_Data["Flowes"][7] = {753003,3304135,3}
	tChineseValentinesDay_Data["Flowes"][8] = {753009,3304135,9}
	tChineseValentinesDay_Data["Flowes"][9] = {753099,3304135,99}
	tChineseValentinesDay_Data["Flowes"][10] = {753999,3304135,999}
	tChineseValentinesDay_Data["Flowes"][11] = {752001,3304136,1}
	tChineseValentinesDay_Data["Flowes"][12] = {752003,3304136,3}
	tChineseValentinesDay_Data["Flowes"][13] = {752009,3304136,9}
	tChineseValentinesDay_Data["Flowes"][14] = {752099,3304136,99}
	tChineseValentinesDay_Data["Flowes"][15] = {752999,3304136,999}
	tChineseValentinesDay_Data["Flowes"][16] = {751001,3304134,1}
	tChineseValentinesDay_Data["Flowes"][17] = {751003,3304134,3}
	tChineseValentinesDay_Data["Flowes"][18] = {751009,3304134,9}
	tChineseValentinesDay_Data["Flowes"][19] = {751099,3304134,99}
	tChineseValentinesDay_Data["Flowes"][20] = {751999,3304134,999}
	
local tChineseValentinesDay_Reward = {}
	-- 上线获得背包信 3304156
	tChineseValentinesDay_Reward["BackpackLetter"] = {}
	tChineseValentinesDay_Reward["BackpackLetter"]["RewardItem"] = {}
	tChineseValentinesDay_Reward["BackpackLetter"]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["BackpackLetter"]["RewardItem"][1]["Id"] = 3304156
	tChineseValentinesDay_Reward["BackpackLetter"]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["BackpackLetter"]["LogId"] = 12000783
	tChineseValentinesDay_Reward["BackpackLetter"]["Talk"] = tChineseValentinesDay_Text[3304156]["RewardItem"]
	
	-- 背包信 3304156
	tChineseValentinesDay_Reward[3304156] = {}
	-- 正常使用
	tChineseValentinesDay_Reward[3304156]["Use"] = {}
	tChineseValentinesDay_Reward[3304156]["Use"]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304156]["Use"]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304156]["Use"]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304156]["Use"]["RewardItem"][1]["Attr"] = "0 1 3 360 1 0 0 1"
	tChineseValentinesDay_Reward[3304156]["Use"]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304156]["Use"]["RewardCultivation"]["Value"] = 30
	tChineseValentinesDay_Reward[3304156]["Use"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304156]["Use"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304156]["Use"]["DeleteItem"][1]["Id"] = 3304156
	tChineseValentinesDay_Reward[3304156]["Use"]["LogId"] = 12000783
	-- 过期删除
	tChineseValentinesDay_Reward[3304156]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304156]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304156]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304156]["TimeOut"]["DeleteItem"][1]["Id"] = 3304156
	tChineseValentinesDay_Reward[3304156]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304156]["TimeOut"]["Talk"] = tChineseValentinesDay_Text[3304156]["TimeOut"]
	
	-- 3304134 玫瑰兑换券
	tChineseValentinesDay_Reward[3304134] = {}
	-- 751001	1朵红玫瑰
	tChineseValentinesDay_Reward[3304134][1] = {}
	tChineseValentinesDay_Reward[3304134][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304134][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][1]["RewardItem"][1]["Id"] = 751001
	tChineseValentinesDay_Reward[3304134][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304134][1]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304134][1]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][1]["DeleteItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304134][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304134][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304134][1]["RewardNoNeedTip"] = 1
	-- 751003	3朵红玫瑰
	tChineseValentinesDay_Reward[3304134][2] = {}
	tChineseValentinesDay_Reward[3304134][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304134][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][2]["RewardItem"][1]["Id"] = 751003
	tChineseValentinesDay_Reward[3304134][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304134][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304134][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][2]["DeleteItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304134][2]["DeleteItem"][1]["ItemNum"] = 3
	tChineseValentinesDay_Reward[3304134][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304134][2]["RewardNoNeedTip"] = 1
	-- 751009	9朵红玫瑰
	tChineseValentinesDay_Reward[3304134][3] = {}
	tChineseValentinesDay_Reward[3304134][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304134][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][3]["RewardItem"][1]["Id"] = 751009
	tChineseValentinesDay_Reward[3304134][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304134][3]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304134][3]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][3]["DeleteItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304134][3]["DeleteItem"][1]["ItemNum"] = 9
	tChineseValentinesDay_Reward[3304134][3]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304134][3]["RewardNoNeedTip"] = 1
	-- 751099	99朵红玫瑰
	tChineseValentinesDay_Reward[3304134][4] = {}
	tChineseValentinesDay_Reward[3304134][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304134][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][4]["RewardItem"][1]["Id"] = 751099
	tChineseValentinesDay_Reward[3304134][4]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304134][4]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304134][4]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][4]["DeleteItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304134][4]["DeleteItem"][1]["ItemNum"] = 99
	tChineseValentinesDay_Reward[3304134][4]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304134][4]["RewardNoNeedTip"] = 1
	-- 751999	999朵红玫瑰
	tChineseValentinesDay_Reward[3304134][5] = {}
	tChineseValentinesDay_Reward[3304134][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304134][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][5]["RewardItem"][1]["Id"] = 751999
	tChineseValentinesDay_Reward[3304134][5]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304134][5]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304134][5]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304134][5]["DeleteItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304134][5]["DeleteItem"][1]["ItemNum"] = 999
	tChineseValentinesDay_Reward[3304134][5]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304134][5]["RewardNoNeedTip"] = 1
	-- 过期删除
	tChineseValentinesDay_Reward[3304134]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["RewardCultivation"]["Value"] = 1
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["DeleteItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304134]["TimeOut"]["RewardNoNeedTip"] = 1
	
	-- 3304135 兰花兑换券
	tChineseValentinesDay_Reward[3304135] = {}
	-- 753001	1朵兰花
	tChineseValentinesDay_Reward[3304135][1] = {}
	tChineseValentinesDay_Reward[3304135][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304135][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][1]["RewardItem"][1]["Id"] = 753001
	tChineseValentinesDay_Reward[3304135][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304135][1]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304135][1]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][1]["DeleteItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304135][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304135][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304135][1]["RewardNoNeedTip"] = 1
	-- 753003	3朵兰花
	tChineseValentinesDay_Reward[3304135][2] = {}
	tChineseValentinesDay_Reward[3304135][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304135][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][2]["RewardItem"][1]["Id"] = 753003
	tChineseValentinesDay_Reward[3304135][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304135][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304135][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][2]["DeleteItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304135][2]["DeleteItem"][1]["ItemNum"] = 3
	tChineseValentinesDay_Reward[3304135][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304135][2]["RewardNoNeedTip"] = 1
	-- 753009	9朵兰花
	tChineseValentinesDay_Reward[3304135][3] = {}
	tChineseValentinesDay_Reward[3304135][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304135][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][3]["RewardItem"][1]["Id"] = 753009
	tChineseValentinesDay_Reward[3304135][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304135][3]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304135][3]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][3]["DeleteItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304135][3]["DeleteItem"][1]["ItemNum"] = 9
	tChineseValentinesDay_Reward[3304135][3]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304135][3]["RewardNoNeedTip"] = 1
	-- 753099	99朵兰花
	tChineseValentinesDay_Reward[3304135][4] = {}
	tChineseValentinesDay_Reward[3304135][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304135][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][4]["RewardItem"][1]["Id"] = 753099
	tChineseValentinesDay_Reward[3304135][4]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304135][4]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304135][4]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][4]["DeleteItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304135][4]["DeleteItem"][1]["ItemNum"] = 99
	tChineseValentinesDay_Reward[3304135][4]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304135][4]["RewardNoNeedTip"] = 1
	-- 753999	999朵兰花
	tChineseValentinesDay_Reward[3304135][5] = {}
	tChineseValentinesDay_Reward[3304135][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304135][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][5]["RewardItem"][1]["Id"] = 753999
	tChineseValentinesDay_Reward[3304135][5]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304135][5]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304135][5]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304135][5]["DeleteItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304135][5]["DeleteItem"][1]["ItemNum"] = 999
	tChineseValentinesDay_Reward[3304135][5]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304135][5]["RewardNoNeedTip"] = 1
	-- 过期删除
	tChineseValentinesDay_Reward[3304135]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["RewardCultivation"]["Value"] = 1
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["DeleteItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304135]["TimeOut"]["RewardNoNeedTip"] = 1
	
	-- 3304136 百合兑换券
	tChineseValentinesDay_Reward[3304136] = {}
	-- 752001	1朵百合花
	tChineseValentinesDay_Reward[3304136][1] = {}
	tChineseValentinesDay_Reward[3304136][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304136][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][1]["RewardItem"][1]["Id"] = 752001
	tChineseValentinesDay_Reward[3304136][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304136][1]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304136][1]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][1]["DeleteItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304136][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304136][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304136][1]["RewardNoNeedTip"] = 1
	-- 752003	3朵百合花
	tChineseValentinesDay_Reward[3304136][2] = {}
	tChineseValentinesDay_Reward[3304136][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304136][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][2]["RewardItem"][1]["Id"] = 752003
	tChineseValentinesDay_Reward[3304136][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304136][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304136][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][2]["DeleteItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304136][2]["DeleteItem"][1]["ItemNum"] = 3
	tChineseValentinesDay_Reward[3304136][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304136][2]["RewardNoNeedTip"] = 1
	-- 752009	9朵百合花
	tChineseValentinesDay_Reward[3304136][3] = {}
	tChineseValentinesDay_Reward[3304136][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304136][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][3]["RewardItem"][1]["Id"] = 752009
	tChineseValentinesDay_Reward[3304136][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304136][3]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304136][3]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][3]["DeleteItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304136][3]["DeleteItem"][1]["ItemNum"] = 9
	tChineseValentinesDay_Reward[3304136][3]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304136][3]["RewardNoNeedTip"] = 1
	-- 752099	99朵百合花
	tChineseValentinesDay_Reward[3304136][4] = {}
	tChineseValentinesDay_Reward[3304136][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304136][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][4]["RewardItem"][1]["Id"] = 752099
	tChineseValentinesDay_Reward[3304136][4]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304136][4]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304136][4]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][4]["DeleteItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304136][4]["DeleteItem"][1]["ItemNum"] = 99
	tChineseValentinesDay_Reward[3304136][4]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304136][4]["RewardNoNeedTip"] = 1
	-- 752999	999朵百合花
	tChineseValentinesDay_Reward[3304136][5] = {}
	tChineseValentinesDay_Reward[3304136][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304136][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][5]["RewardItem"][1]["Id"] = 752999
	tChineseValentinesDay_Reward[3304136][5]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304136][5]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304136][5]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304136][5]["DeleteItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304136][5]["DeleteItem"][1]["ItemNum"] = 999
	tChineseValentinesDay_Reward[3304136][5]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304136][5]["RewardNoNeedTip"] = 1
	-- 过期删除
	tChineseValentinesDay_Reward[3304136]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["RewardCultivation"]["Value"] = 1
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["DeleteItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304136]["TimeOut"]["RewardNoNeedTip"] = 1
	
	-- 3304137 郁金香兑换券
	tChineseValentinesDay_Reward[3304137] = {}
	-- 754001	1朵郁金香
	tChineseValentinesDay_Reward[3304137][1] = {}
	tChineseValentinesDay_Reward[3304137][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304137][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][1]["RewardItem"][1]["Id"] = 754001
	tChineseValentinesDay_Reward[3304137][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304137][1]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304137][1]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][1]["DeleteItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304137][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304137][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304137][1]["RewardNoNeedTip"] = 1
	-- 754003	3朵郁金香
	tChineseValentinesDay_Reward[3304137][2] = {}
	tChineseValentinesDay_Reward[3304137][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304137][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][2]["RewardItem"][1]["Id"] = 754003
	tChineseValentinesDay_Reward[3304137][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304137][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304137][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][2]["DeleteItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304137][2]["DeleteItem"][1]["ItemNum"] = 3
	tChineseValentinesDay_Reward[3304137][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304137][2]["RewardNoNeedTip"] = 1
	-- 754009	9朵郁金香
	tChineseValentinesDay_Reward[3304137][3] = {}
	tChineseValentinesDay_Reward[3304137][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304137][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][3]["RewardItem"][1]["Id"] = 754009
	tChineseValentinesDay_Reward[3304137][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304137][3]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304137][3]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][3]["DeleteItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304137][3]["DeleteItem"][1]["ItemNum"] = 9
	tChineseValentinesDay_Reward[3304137][3]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304137][3]["RewardNoNeedTip"] = 1
	-- 754099	99朵郁金香
	tChineseValentinesDay_Reward[3304137][4] = {}
	tChineseValentinesDay_Reward[3304137][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304137][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][4]["RewardItem"][1]["Id"] = 754099
	tChineseValentinesDay_Reward[3304137][4]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304137][4]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304137][4]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][4]["DeleteItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304137][4]["DeleteItem"][1]["ItemNum"] = 99
	tChineseValentinesDay_Reward[3304137][4]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304137][4]["RewardNoNeedTip"] = 1
	-- 754999	999朵郁金香
	tChineseValentinesDay_Reward[3304137][5] = {}
	tChineseValentinesDay_Reward[3304137][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304137][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][5]["RewardItem"][1]["Id"] = 754999
	tChineseValentinesDay_Reward[3304137][5]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304137][5]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304137][5]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304137][5]["DeleteItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304137][5]["DeleteItem"][1]["ItemNum"] = 999
	tChineseValentinesDay_Reward[3304137][5]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304137][5]["RewardNoNeedTip"] = 1
	-- 过期删除
	tChineseValentinesDay_Reward[3304137]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["RewardCultivation"]["Value"] = 1
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["DeleteItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304137]["TimeOut"]["RewardNoNeedTip"] = 1
	
	-- 3304138 星光碎片
	tChineseValentinesDay_Reward[3304138] = {}
	-- 正常使用 合成
	tChineseValentinesDay_Reward[3304138]["Use"] = {}
	tChineseValentinesDay_Reward[3304138]["Use"]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304138]["Use"]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304138]["Use"]["RewardItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[3304138]["Use"]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304138]["Use"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304138]["Use"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304138]["Use"]["DeleteItem"][1]["Id"] = 3304138
	tChineseValentinesDay_Reward[3304138]["Use"]["DeleteItem"][1]["ItemNum"] = 10
	tChineseValentinesDay_Reward[3304138]["Use"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304138]["Use"]["LogStep"] = "1[1]"
	tChineseValentinesDay_Reward[3304138]["Use"]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304138]["Use"]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["ComposeStarlight"]
	-- 过期删除
	tChineseValentinesDay_Reward[3304138]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304138]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304138]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304138]["TimeOut"]["DeleteItem"][1]["Id"] = 3304138
	tChineseValentinesDay_Reward[3304138]["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304138]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304138]["TimeOut"]["Talk"] = tChineseValentinesDay_Text[3304138]["TimeOut"]
	
	-- 3304141 相思泪
	tChineseValentinesDay_Reward[3304141] = {}
	tChineseValentinesDay_Reward[3304141]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304141]["RewardStrengthValue"]["Value"] = 30
	tChineseValentinesDay_Reward[3304141]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304141]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304141]["DeleteItem"][1]["Id"] = 3304141
	tChineseValentinesDay_Reward[3304141]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304141]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304141]["RewardNoNeedTip"] = 1
	
	-- 3304142 七夕鲜花礼包
	tChineseValentinesDay_Reward[3304142] = {}
	tChineseValentinesDay_Reward[3304142][1] = {}
	tChineseValentinesDay_Reward[3304142][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304142][1]["ItemChanceSum"] = 10000
	-- 100% 次数令牌*1 3304141
	tChineseValentinesDay_Reward[3304142][1][1] = {}
	tChineseValentinesDay_Reward[3304142][1][1]["RandomItemChanceType"] = 1
	tChineseValentinesDay_Reward[3304142][1][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][1]["RewardItem"][1]["Id"] = 3304141
	tChineseValentinesDay_Reward[3304142][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 玫瑰兑换券	新物品	50	不可交易		9.00%
	tChineseValentinesDay_Reward[3304142][1][2] = {}
	tChineseValentinesDay_Reward[3304142][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][2]["ItemChance"] = 900
	tChineseValentinesDay_Reward[3304142][1][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][2]["RewardItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304142][1][2]["RewardItem"][1]["Attr"] = "0 50"
	-- 玫瑰兑换券	新物品	100	不可交易		6.00%
	tChineseValentinesDay_Reward[3304142][1][3] = {}
	tChineseValentinesDay_Reward[3304142][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][3]["ItemChance"] = 600
	tChineseValentinesDay_Reward[3304142][1][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][3]["RewardItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304142][1][3]["RewardItem"][1]["Attr"] = "0 100"
	-- 玫瑰兑换券	新物品	150	不可交易		3.00%
	tChineseValentinesDay_Reward[3304142][1][4] = {}
	tChineseValentinesDay_Reward[3304142][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][4]["ItemChance"] = 300
	tChineseValentinesDay_Reward[3304142][1][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][4]["RewardItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304142][1][4]["RewardItem"][1]["Attr"] = "0 150"
	-- 兰花兑换券	新物品	50	不可交易		15.00%
	tChineseValentinesDay_Reward[3304142][1][5] = {}
	tChineseValentinesDay_Reward[3304142][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][5]["ItemChance"] = 1500
	tChineseValentinesDay_Reward[3304142][1][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][5]["RewardItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304142][1][5]["RewardItem"][1]["Attr"] = "0 50"
	-- 兰花兑换券	新物品	100	不可交易		10.00%
	tChineseValentinesDay_Reward[3304142][1][6] = {}
	tChineseValentinesDay_Reward[3304142][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][6]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304142][1][6]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][6]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][6]["RewardItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304142][1][6]["RewardItem"][1]["Attr"] = "0 100"
	-- 兰花兑换券	新物品	200	不可交易		8.00%
	tChineseValentinesDay_Reward[3304142][1][7] = {}
	tChineseValentinesDay_Reward[3304142][1][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][7]["ItemChance"] = 800
	tChineseValentinesDay_Reward[3304142][1][7]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][7]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][7]["RewardItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304142][1][7]["RewardItem"][1]["Attr"] = "0 200"
	-- 百合兑换券	新物品	80	不可交易		13.00%
	tChineseValentinesDay_Reward[3304142][1][8] = {}
	tChineseValentinesDay_Reward[3304142][1][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][8]["ItemChance"] = 1300
	tChineseValentinesDay_Reward[3304142][1][8]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][8]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][8]["RewardItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304142][1][8]["RewardItem"][1]["Attr"] = "0 80"
	-- 百合兑换券	新物品	100	不可交易		10.00%
	tChineseValentinesDay_Reward[3304142][1][9] = {}
	tChineseValentinesDay_Reward[3304142][1][9]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][9]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304142][1][9]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][9]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][9]["RewardItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304142][1][9]["RewardItem"][1]["Attr"] = "0 100"
	-- 百合兑换券	新物品	150	不可交易		3.00%
	tChineseValentinesDay_Reward[3304142][1][10] = {}
	tChineseValentinesDay_Reward[3304142][1][10]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][10]["ItemChance"] = 300
	tChineseValentinesDay_Reward[3304142][1][10]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][10]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][10]["RewardItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304142][1][10]["RewardItem"][1]["Attr"] = "0 150"
	-- 郁金香兑换券	新物品	30	不可交易		8.00%
	tChineseValentinesDay_Reward[3304142][1][11] = {}
	tChineseValentinesDay_Reward[3304142][1][11]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][11]["ItemChance"] = 800
	tChineseValentinesDay_Reward[3304142][1][11]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][11]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][11]["RewardItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304142][1][11]["RewardItem"][1]["Attr"] = "0 30"
	-- 郁金香兑换券	新物品	50	不可交易		5.00%
	tChineseValentinesDay_Reward[3304142][1][12] = {}
	tChineseValentinesDay_Reward[3304142][1][12]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][12]["ItemChance"] = 500
	tChineseValentinesDay_Reward[3304142][1][12]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][12]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][12]["RewardItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304142][1][12]["RewardItem"][1]["Attr"] = "0 50"
	-- 郁金香兑换券	新物品	80	不可交易		1.00%
	tChineseValentinesDay_Reward[3304142][1][13] = {}
	tChineseValentinesDay_Reward[3304142][1][13]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][13]["ItemChance"] = 100
	tChineseValentinesDay_Reward[3304142][1][13]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][13]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][13]["RewardItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304142][1][13]["RewardItem"][1]["Attr"] = "0 80"
	-- 月华	新物品	1	不可交易		9.00%
	tChineseValentinesDay_Reward[3304142][1][14] = {}
	tChineseValentinesDay_Reward[3304142][1][14]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304142][1][14]["ItemChance"] = 900
	tChineseValentinesDay_Reward[3304142][1][14]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304142][1][14]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][1][14]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[3304142][1][14]["RewardItem"][1]["Attr"] = "0 1"
	
	-- 过期
	tChineseValentinesDay_Reward[3304142][2] = {}
	tChineseValentinesDay_Reward[3304142][2]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304142][2]["RewardStrengthValue"]["Value"] = 120
	tChineseValentinesDay_Reward[3304142][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304142][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304142][2]["DeleteItem"][1]["Id"] = 3304142
	tChineseValentinesDay_Reward[3304142][2]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304142][2]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304142][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304142][2]["Talk"] = tChineseValentinesDay_Text[3304142]["TimeOut"]
	
	-- 3304143 七夕鲜花豪华包
	tChineseValentinesDay_Reward[3304143] = {}
	tChineseValentinesDay_Reward[3304143][1] = {}
	tChineseValentinesDay_Reward[3304143][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304143][1]["ItemChanceSum"] = 10000
	-- 100% 次数令牌*10 3304141
	tChineseValentinesDay_Reward[3304143][1][1] = {}
	tChineseValentinesDay_Reward[3304143][1][1]["RandomItemChanceType"] = 1
	tChineseValentinesDay_Reward[3304143][1][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][1]["RewardItem"][1]["Id"] = 3304141
	tChineseValentinesDay_Reward[3304143][1][1]["RewardItem"][1]["Attr"] = "0 10"
	-- 玫瑰兑换券	新物品	500	不可交易		9.00%
	tChineseValentinesDay_Reward[3304143][1][2] = {}
	tChineseValentinesDay_Reward[3304143][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][2]["ItemChance"] = 900
	tChineseValentinesDay_Reward[3304143][1][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][2]["RewardItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304143][1][2]["RewardItem"][1]["Attr"] = "0 500"
	-- 玫瑰兑换券	新物品	1000	不可交易		6.00%
	tChineseValentinesDay_Reward[3304143][1][3] = {}
	tChineseValentinesDay_Reward[3304143][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][3]["ItemChance"] = 600
	tChineseValentinesDay_Reward[3304143][1][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][3]["RewardItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304143][1][3]["RewardItem"][1]["Attr"] = "0 1000"
	-- 玫瑰兑换券	新物品	1500	不可交易		3.00%
	tChineseValentinesDay_Reward[3304143][1][4] = {}
	tChineseValentinesDay_Reward[3304143][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][4]["ItemChance"] = 300
	tChineseValentinesDay_Reward[3304143][1][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][4]["RewardItem"][1]["Id"] = 3304134
	tChineseValentinesDay_Reward[3304143][1][4]["RewardItem"][1]["Attr"] = "0 1500"
	-- 兰花兑换券	新物品	500	不可交易		15.00%
	tChineseValentinesDay_Reward[3304143][1][5] = {}
	tChineseValentinesDay_Reward[3304143][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][5]["ItemChance"] = 1500
	tChineseValentinesDay_Reward[3304143][1][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][5]["RewardItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304143][1][5]["RewardItem"][1]["Attr"] = "0 500"
	-- 兰花兑换券	新物品	1000	不可交易		10.00%
	tChineseValentinesDay_Reward[3304143][1][6] = {}
	tChineseValentinesDay_Reward[3304143][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][6]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304143][1][6]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][6]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][6]["RewardItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304143][1][6]["RewardItem"][1]["Attr"] = "0 1000"
	-- 兰花兑换券	新物品	2000	不可交易		8.00%
	tChineseValentinesDay_Reward[3304143][1][7] = {}
	tChineseValentinesDay_Reward[3304143][1][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][7]["ItemChance"] = 800
	tChineseValentinesDay_Reward[3304143][1][7]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][7]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][7]["RewardItem"][1]["Id"] = 3304135
	tChineseValentinesDay_Reward[3304143][1][7]["RewardItem"][1]["Attr"] = "0 2000"
	-- 百合兑换券	新物品	800	不可交易		13.00%
	tChineseValentinesDay_Reward[3304143][1][8] = {}
	tChineseValentinesDay_Reward[3304143][1][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][8]["ItemChance"] = 1300
	tChineseValentinesDay_Reward[3304143][1][8]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][8]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][8]["RewardItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304143][1][8]["RewardItem"][1]["Attr"] = "0 800"
	-- 百合兑换券	新物品	1000	不可交易		10.00%
	tChineseValentinesDay_Reward[3304143][1][9] = {}
	tChineseValentinesDay_Reward[3304143][1][9]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][9]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304143][1][9]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][9]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][9]["RewardItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304143][1][9]["RewardItem"][1]["Attr"] = "0 1000"
	-- 百合兑换券	新物品	1500	不可交易		3.00%
	tChineseValentinesDay_Reward[3304143][1][10] = {}
	tChineseValentinesDay_Reward[3304143][1][10]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][10]["ItemChance"] = 300
	tChineseValentinesDay_Reward[3304143][1][10]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][10]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][10]["RewardItem"][1]["Id"] = 3304136
	tChineseValentinesDay_Reward[3304143][1][10]["RewardItem"][1]["Attr"] = "0 1500"
	-- 郁金香兑换券	新物品	300	不可交易		8.00%
	tChineseValentinesDay_Reward[3304143][1][11] = {}
	tChineseValentinesDay_Reward[3304143][1][11]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][11]["ItemChance"] = 800
	tChineseValentinesDay_Reward[3304143][1][11]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][11]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][11]["RewardItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304143][1][11]["RewardItem"][1]["Attr"] = "0 300"
	-- 郁金香兑换券	新物品	500	不可交易		5.00%
	tChineseValentinesDay_Reward[3304143][1][12] = {}
	tChineseValentinesDay_Reward[3304143][1][12]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][12]["ItemChance"] = 500
	tChineseValentinesDay_Reward[3304143][1][12]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][12]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][12]["RewardItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304143][1][12]["RewardItem"][1]["Attr"] = "0 500"
	-- 郁金香兑换券	新物品	800	不可交易		1.00%
	tChineseValentinesDay_Reward[3304143][1][13] = {}
	tChineseValentinesDay_Reward[3304143][1][13]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][13]["ItemChance"] = 100
	tChineseValentinesDay_Reward[3304143][1][13]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][13]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][13]["RewardItem"][1]["Id"] = 3304137
	tChineseValentinesDay_Reward[3304143][1][13]["RewardItem"][1]["Attr"] = "0 800"
	-- 月华	新物品	10	不可交易		9.00%
	tChineseValentinesDay_Reward[3304143][1][14] = {}
	tChineseValentinesDay_Reward[3304143][1][14]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304143][1][14]["ItemChance"] = 900
	tChineseValentinesDay_Reward[3304143][1][14]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304143][1][14]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][1][14]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[3304143][1][14]["RewardItem"][1]["Attr"] = "0 10"
	
	-- 过期
	tChineseValentinesDay_Reward[3304143][2] = {}
	tChineseValentinesDay_Reward[3304143][2]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304143][2]["RewardStrengthValue"]["Value"] = 1200
	tChineseValentinesDay_Reward[3304143][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304143][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304143][2]["DeleteItem"][1]["Id"] = 3304143
	tChineseValentinesDay_Reward[3304143][2]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304143][2]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304143][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304143][2]["Talk"] = tChineseValentinesDay_Text[3304143]["TimeOut"]
	
	-- 3304144 1天【外套名】包 1%神佑
	tChineseValentinesDay_Reward[3304144] = {}
	tChineseValentinesDay_Reward[3304144]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304144]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304144]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304144]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tChineseValentinesDay_Reward[3304144]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304144]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304144]["DeleteItem"][1]["Id"] = 3304144
	tChineseValentinesDay_Reward[3304144]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304144]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304144]["LogId"] = 12000783
	
	-- 3304145 1天【光效外套名】包 1%神佑
	tChineseValentinesDay_Reward[3304145] = {}
	tChineseValentinesDay_Reward[3304145]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304145]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304145]["RewardItem"][1]["Id"] = 194875
	tChineseValentinesDay_Reward[3304145]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	tChineseValentinesDay_Reward[3304145]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304145]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304145]["DeleteItem"][1]["Id"] = 3304145
	tChineseValentinesDay_Reward[3304145]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304145]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304145]["LogId"] = 12000783
	
	-- 3304146 7天紫音青衫外套包
	tChineseValentinesDay_Reward[3304146] = {}
	tChineseValentinesDay_Reward[3304146]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304146]["LogStep"] = "1[7][1]"
	tChineseValentinesDay_Reward[3304146]["ItemChanceSum"] = 10000
	tChineseValentinesDay_Reward[3304146][1] = {}
	tChineseValentinesDay_Reward[3304146][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304146][1]["ItemChance"] = 10000
	tChineseValentinesDay_Reward[3304146][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304146][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304146][1]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304146][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tChineseValentinesDay_Reward[3304146][1]["RewardBroadCast"] = tChineseValentinesDay_Text[3304146]["NoEffect"] 
	tChineseValentinesDay_Reward[3304146][2] = {}
	tChineseValentinesDay_Reward[3304146][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304146][2]["ItemChance"] = 0
	tChineseValentinesDay_Reward[3304146][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304146][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304146][2]["RewardItem"][1]["Id"] = 194875
	tChineseValentinesDay_Reward[3304146][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1 0 0 1"
	tChineseValentinesDay_Reward[3304146][2]["RewardBroadCast"] = tChineseValentinesDay_Text[3304146]["Effect"]
	
	-- 3304147 15天紫音青衫外套包
	tChineseValentinesDay_Reward[3304147] = {}
	tChineseValentinesDay_Reward[3304147]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304147]["LogStep"] = "1[7][2]"
	tChineseValentinesDay_Reward[3304147]["ItemChanceSum"] = 10000
	tChineseValentinesDay_Reward[3304147][1] = {}
	tChineseValentinesDay_Reward[3304147][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304147][1]["ItemChance"] = 10000
	tChineseValentinesDay_Reward[3304147][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304147][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304147][1]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304147][1]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tChineseValentinesDay_Reward[3304147][1]["RewardBroadCast"] = tChineseValentinesDay_Text[3304147]["NoEffect"]
	tChineseValentinesDay_Reward[3304147][2] = {}
	tChineseValentinesDay_Reward[3304147][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304147][2]["ItemChance"] = 0
	tChineseValentinesDay_Reward[3304147][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304147][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304147][2]["RewardItem"][1]["Id"] = 194875
	tChineseValentinesDay_Reward[3304147][2]["RewardItem"][1]["Attr"] = "0 1 3 21600 1 0 0 1"
	tChineseValentinesDay_Reward[3304147][2]["RewardBroadCast"] = tChineseValentinesDay_Text[3304147]["Effect"]
	
	-- 3304148 永久【外套名】礼包
	tChineseValentinesDay_Reward[3304148] = {}
	tChineseValentinesDay_Reward[3304148]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304148]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304148]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304148]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304148]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304148]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304148]["DeleteItem"][1]["Id"] = 3304148
	tChineseValentinesDay_Reward[3304148]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304148]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304148]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304148]["LogStep"] = "1[7][4]"
	tChineseValentinesDay_Reward[3304148]["EmoneyLog"] = "350	20765	0	0	1	"
	tChineseValentinesDay_Reward[3304148]["RewardBroadCast"] = tChineseValentinesDay_Text["Msg"][3304148]
	
	-- 3304150 永久【高级外套名】包
	tChineseValentinesDay_Reward[3304150] = {}
	tChineseValentinesDay_Reward[3304150]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304150]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304150]["RewardItem"][1]["Id"] = 194875
	tChineseValentinesDay_Reward[3304150]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304150]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304150]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304150]["DeleteItem"][1]["Id"] = 3304150
	tChineseValentinesDay_Reward[3304150]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304150]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304150]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304150]["LogStep"] = "1[7][6]"
	tChineseValentinesDay_Reward[3304150]["EmoneyLog"] = "350	20766	0	0	1	"
	tChineseValentinesDay_Reward[3304150]["RewardBroadCast"] = tChineseValentinesDay_Text["Msg"][3304150]
	
	-- 3304149 忘情水礼包
	tChineseValentinesDay_Reward[3304149] = {}
	tChineseValentinesDay_Reward[3304149]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304149]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304149]["RewardItem"][1]["Id"] = 3304154
	tChineseValentinesDay_Reward[3304149]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304149]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304149]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304149]["DeleteItem"][1]["Id"] = 3304149
	tChineseValentinesDay_Reward[3304149]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304149]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304149]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304149]["LogStep"] = "1[7][5]"
	tChineseValentinesDay_Reward[3304149]["RewardBroadCast"] = tChineseValentinesDay_Text["Msg"][3304149]
	
	-- 3304154 忘情水
	tChineseValentinesDay_Reward[3304154] = {}
	tChineseValentinesDay_Reward[3304154]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304154]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304154]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304154]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304154]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304154]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304154]["DeleteItem"][1]["Id"] = 3304154
	tChineseValentinesDay_Reward[3304154]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[3304154]["DeleteItem"][2]["Id"] = 194865
	tChineseValentinesDay_Reward[3304154]["DeleteItem"][2]["Attr"] = "0 1 3 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304154]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304154]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304154]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304154]["EmoneyLog"] = "350	20765	0	0	1	"
	tChineseValentinesDay_Reward[3304154]["Talk"] = tChineseValentinesDay_Text["Msg"][3304154]
	
	-- 3304151 赤霄火云坐骑碎片
	tChineseValentinesDay_Reward[3304151] = {}
	tChineseValentinesDay_Reward[3304151]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["RewardStrengthValue"]["Value"] = 300
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["DeleteItem"][1]["Id"] = 3304151
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304151]["TimeOut"]["RewardNoNeedTip"] = 1
	
	tChineseValentinesDay_Reward[3304151][1] = {}
	tChineseValentinesDay_Reward[3304151][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304151][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304151][1]["RewardItem"][1]["Id"] = 3304151
	tChineseValentinesDay_Reward[3304151][1]["RewardItem"][1]["Attr"] = "0 2"
	tChineseValentinesDay_Reward[3304151][1]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304151][1]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304151][1]["DeleteItem"][1]["Id"] = 3304151
	tChineseValentinesDay_Reward[3304151][1]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304151][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304151][1]["RewardNoNeedTip"] = 1
	
	tChineseValentinesDay_Reward[3304151][2] = {}
	tChineseValentinesDay_Reward[3304151][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304151][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304151][2]["DeleteItem"][1]["Id"] = 3304151
	tChineseValentinesDay_Reward[3304151][2]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304151][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304151][2]["RewardNoNeedTip"] = 1
	
	tChineseValentinesDay_Reward[3304151][25] = {}
	tChineseValentinesDay_Reward[3304151][25]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304151][25]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304151][25]["RewardItem"][1]["Id"] = 200613
	tChineseValentinesDay_Reward[3304151][25]["RewardItem"][1]["Attr"] = "0 1 3 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304151][25]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304151][25]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304151][25]["DeleteItem"][1]["Id"] = 3304151
	tChineseValentinesDay_Reward[3304151][25]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[3304151][25]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304151][25]["EmoneyLog"] = "350	20768	0	0	1	"
	tChineseValentinesDay_Reward[3304151][25]["Talk"] = tChineseValentinesDay_Text[3304151]["Success"]
	tChineseValentinesDay_Reward[3304151][25]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304151][25]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["ComposeStarlight"]
	
	-- 3304152 永久赤霄火云坐骑外套典藏包
	tChineseValentinesDay_Reward[3304152] = {}
	tChineseValentinesDay_Reward[3304152]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304152]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304152]["RewardItem"][1]["Id"] = 200613
	tChineseValentinesDay_Reward[3304152]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304152]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304152]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304152]["DeleteItem"][1]["Id"] = 3304152
	tChineseValentinesDay_Reward[3304152]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304152]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304152]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304152]["EmoneyLog"] = "350	20768	0	0	1	"
	
	-- 3304676 永久蓝海苍云坐骑外套典藏包
	tChineseValentinesDay_Reward[3304676] = {}
	tChineseValentinesDay_Reward[3304676]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304676]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304676]["RewardItem"][1]["Id"] = 200614
	tChineseValentinesDay_Reward[3304676]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304676]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304676]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304676]["DeleteItem"][1]["Id"] = 3304676
	tChineseValentinesDay_Reward[3304676]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304676]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304676]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304676]["EmoneyLog"] = "350	20767	0	0	1	"
	
	-- 3304153 七夕气力礼包
	tChineseValentinesDay_Reward[3304153] = {}
	tChineseValentinesDay_Reward[3304153]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304153]["RewardStrengthValue"]["Value"] = 1000
	tChineseValentinesDay_Reward[3304153]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304153]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304153]["DeleteItem"][1]["Id"] = 3304153
	tChineseValentinesDay_Reward[3304153]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304153]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304153]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304153]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304153]["LogStep"] = "1[7][3]"
	tChineseValentinesDay_Reward[3304153]["RewardBroadCast"] = tChineseValentinesDay_Text["Msg"][3304153]
	
	-- 3304155 星光灿烂礼包
	tChineseValentinesDay_Reward[3304155] = {}
	tChineseValentinesDay_Reward[3304155][1] = {}
	tChineseValentinesDay_Reward[3304155][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304155][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304155][1]["RewardItem"][1]["Id"] = 3304151
	tChineseValentinesDay_Reward[3304155][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3304155][1]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304155][1]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304155][1]["DeleteItem"][1]["Id"] = 3304155
	tChineseValentinesDay_Reward[3304155][1]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304155][1]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304155][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304155][1]["RewardBroadCast"] = tChineseValentinesDay_Text["Msg"][3304155]
	
	tChineseValentinesDay_Reward[3304155][2] = {}
	tChineseValentinesDay_Reward[3304155][2]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304155][2]["RewardStrengthValue"]["Value"] = 300
	tChineseValentinesDay_Reward[3304155][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304155][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304155][2]["DeleteItem"][1]["Id"] = 3304155
	tChineseValentinesDay_Reward[3304155][2]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304155][2]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304155][2]["LogId"] = 12000783
	
	-- 3304546 月华礼盒
	tChineseValentinesDay_Reward[3304546] = {}
	tChineseValentinesDay_Reward[3304546]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304546]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304546]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[3304546]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesDay_Reward[3304546]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304546]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304546]["DeleteItem"][1]["Id"] = 3304546
	tChineseValentinesDay_Reward[3304546]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304546]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304546]["LogId"] = 12000783
	
	-- 3304547 永久蓝海苍云坐骑外套包
	tChineseValentinesDay_Reward[3304547] = {}
	tChineseValentinesDay_Reward[3304547]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304547]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304547]["RewardItem"][1]["Id"] = 200614
	tChineseValentinesDay_Reward[3304547]["RewardItem"][1]["Attr"] = "0 1 0 0 0 0 0 1"
	tChineseValentinesDay_Reward[3304547]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304547]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304547]["DeleteItem"][1]["Id"] = 3304547
	tChineseValentinesDay_Reward[3304547]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304547]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[3304547]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	tChineseValentinesDay_Reward[3304547]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304547]["LogStep"] = "1[7][7]"
	tChineseValentinesDay_Reward[3304547]["EmoneyLog"] = "350	20767	0	0	1	"
	tChineseValentinesDay_Reward[3304547]["RewardBroadCast"] = tChineseValentinesDay_Text["Msg"][3304547]
	
	-- 上交星光 3304139
	tChineseValentinesDay_Reward[3304139] = {}
	-- 每天首次
	tChineseValentinesDay_Reward[3304139][1] = {}
	tChineseValentinesDay_Reward[3304139][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304139][1]["LogStep"] = "1[5]"
	tChineseValentinesDay_Reward[3304139][1]["ItemChanceSum"] = 10000
	-- 筋斗云气力包		1	直接给		100.00%
	tChineseValentinesDay_Reward[3304139][1][1] = {}
	tChineseValentinesDay_Reward[3304139][1][1]["RandomItemChanceType"] = 1
	tChineseValentinesDay_Reward[3304139][1][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][1][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][1][1]["RewardItem"][1]["Id"] = 3304155
	tChineseValentinesDay_Reward[3304139][1][1]["RewardItem"][1]["Attr"] = "0 1"
	-- 经验（min）		30	直接给		20.00%
	tChineseValentinesDay_Reward[3304139][1][2] = {}
	tChineseValentinesDay_Reward[3304139][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][1][2]["ItemChance"] = 2000
	tChineseValentinesDay_Reward[3304139][1][2]["RewardExpTime"] = {}
	tChineseValentinesDay_Reward[3304139][1][2]["RewardExpTime"]["Value"] = 30
	tChineseValentinesDay_Reward[3304139][1][2]["FullIndex"] = "RewardCultivation"
	tChineseValentinesDay_Reward[3304139][1][2]["FullValue"] = 15
	-- 修行值		50	直接给		25.00%
	tChineseValentinesDay_Reward[3304139][1][3] = {}
	tChineseValentinesDay_Reward[3304139][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][1][3]["ItemChance"] = 2500
	tChineseValentinesDay_Reward[3304139][1][3]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304139][1][3]["RewardCultivation"]["Value"] = 50
	-- 1天时效无光效外套	新物品	1	不可交易		19.00%
	tChineseValentinesDay_Reward[3304139][1][4] = {}
	tChineseValentinesDay_Reward[3304139][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][1][4]["ItemChance"] = 2000
	tChineseValentinesDay_Reward[3304139][1][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][1][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][1][4]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304139][1][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 1天时效光效外套	新物品	1	不可交易		1.00%
	tChineseValentinesDay_Reward[3304139][1][5] = {}
	tChineseValentinesDay_Reward[3304139][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][1][5]["ItemChance"] = 0
	tChineseValentinesDay_Reward[3304139][1][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][1][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][1][5]["RewardItem"][1]["Id"] = 194875
	tChineseValentinesDay_Reward[3304139][1][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 微光星陨石		1	不可交易	激活时效	10.00%
	tChineseValentinesDay_Reward[3304139][1][6] = {}
	tChineseValentinesDay_Reward[3304139][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][1][6]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304139][1][6]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][1][6]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][1][6]["RewardItem"][1]["Id"] = 3009000
	tChineseValentinesDay_Reward[3304139][1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	--  +1赤炼石		1	赠		10.00%
	tChineseValentinesDay_Reward[3304139][1][7] = {}
	tChineseValentinesDay_Reward[3304139][1][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][1][7]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304139][1][7]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][1][7]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][1][7]["RewardItem"][1]["Id"] = 730001
	tChineseValentinesDay_Reward[3304139][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 赠点		30	直接给		15.00%
	tChineseValentinesDay_Reward[3304139][1][8] = {}
	tChineseValentinesDay_Reward[3304139][1][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][1][8]["ItemChance"] = 1500
	tChineseValentinesDay_Reward[3304139][1][8]["RewardEMoneyMono"] = {}
	tChineseValentinesDay_Reward[3304139][1][8]["RewardEMoneyMono"]["Value"] = 30
	-- 另外四次
	tChineseValentinesDay_Reward[3304139][2] = {}
	tChineseValentinesDay_Reward[3304139][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304139][2]["LogStep"] = "1[5]"
	tChineseValentinesDay_Reward[3304139][2]["ItemChanceSum"] = 10000
	-- 气力值		5	直接给		15.00%
	tChineseValentinesDay_Reward[3304139][2][1] = {}
	tChineseValentinesDay_Reward[3304139][2][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][1]["ItemChance"] = 1500
	tChineseValentinesDay_Reward[3304139][2][1]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304139][2][1]["RewardStrengthValue"]["Value"] = 5
	-- 经验（min）		5	直接给		15.00%
	tChineseValentinesDay_Reward[3304139][2][2] = {}
	tChineseValentinesDay_Reward[3304139][2][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][2]["ItemChance"] = 1500
	tChineseValentinesDay_Reward[3304139][2][2]["RewardExpTime"] = {}
	tChineseValentinesDay_Reward[3304139][2][2]["RewardExpTime"]["Value"] = 5
	tChineseValentinesDay_Reward[3304139][2][2]["FullIndex"] = "RewardCultivation"
	tChineseValentinesDay_Reward[3304139][2][2]["FullValue"] = 3
	-- 修行值		10	直接给		30.00%
	tChineseValentinesDay_Reward[3304139][2][3] = {}
	tChineseValentinesDay_Reward[3304139][2][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][3]["ItemChance"] = 3000
	tChineseValentinesDay_Reward[3304139][2][3]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304139][2][3]["RewardCultivation"]["Value"] = 10
	-- 1天时效无光效外套	新物品	1	不可交易		19.00%
	tChineseValentinesDay_Reward[3304139][2][4] = {}
	tChineseValentinesDay_Reward[3304139][2][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][4]["ItemChance"] = 2000
	tChineseValentinesDay_Reward[3304139][2][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][2][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][2][4]["RewardItem"][1]["Id"] = 194865
	tChineseValentinesDay_Reward[3304139][2][4]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 1天时效光效外套	新物品	1	不可交易		1.00%
	tChineseValentinesDay_Reward[3304139][2][5] = {}
	tChineseValentinesDay_Reward[3304139][2][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][5]["ItemChance"] = 0
	tChineseValentinesDay_Reward[3304139][2][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][2][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][2][5]["RewardItem"][1]["Id"] = 194875
	tChineseValentinesDay_Reward[3304139][2][5]["RewardItem"][1]["Attr"] = "0 1 3 1440 1 0 0 1"
	-- 微光星陨石		1	不可交易	激活时效	5.00%
	tChineseValentinesDay_Reward[3304139][2][6] = {}
	tChineseValentinesDay_Reward[3304139][2][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][6]["ItemChance"] = 500
	tChineseValentinesDay_Reward[3304139][2][6]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][2][6]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][2][6]["RewardItem"][1]["Id"] = 3009000
	tChineseValentinesDay_Reward[3304139][2][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	--  +1赤炼石		1	赠		5.00%
	tChineseValentinesDay_Reward[3304139][2][7] = {}
	tChineseValentinesDay_Reward[3304139][2][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][7]["ItemChance"] = 500
	tChineseValentinesDay_Reward[3304139][2][7]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304139][2][7]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304139][2][7]["RewardItem"][1]["Id"] = 730001
	tChineseValentinesDay_Reward[3304139][2][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 赠点		10	直接给		10.00%
	tChineseValentinesDay_Reward[3304139][2][8] = {}
	tChineseValentinesDay_Reward[3304139][2][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304139][2][8]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304139][2][8]["RewardEMoneyMono"] = {}
	tChineseValentinesDay_Reward[3304139][2][8]["RewardEMoneyMono"]["Value"] = 10
	
	-- 3304140 月华
	-- 过期删除
	tChineseValentinesDay_Reward[3304140] = {}
	tChineseValentinesDay_Reward[3304140]["TimeOut"] = {}
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["RewardStrengthValue"]["Value"] = 30
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["DeleteItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["DeleteItem"][1]["ItemNum"] = 1
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304140]["TimeOut"]["RewardNoNeedTip"] = 1
	
	-- 上交月华 前十次
	tChineseValentinesDay_Reward[3304140][1] = {}
	tChineseValentinesDay_Reward[3304140][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward[3304140][1]["LogStep"] = "1[6]"
	tChineseValentinesDay_Reward[3304140][1]["ItemChanceSum"] = 10000
	-- 气力值		50	直接给		15.00%
	tChineseValentinesDay_Reward[3304140][1][1] = {}
	tChineseValentinesDay_Reward[3304140][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][1]["ItemChance"] = 1500
	tChineseValentinesDay_Reward[3304140][1][1]["RewardStrengthValue"] = {}
	tChineseValentinesDay_Reward[3304140][1][1]["RewardStrengthValue"]["Value"] = 50
	-- 经验（min）		20	直接给		15.00%
	tChineseValentinesDay_Reward[3304140][1][2] = {}
	tChineseValentinesDay_Reward[3304140][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][2]["ItemChance"] = 1500
	tChineseValentinesDay_Reward[3304140][1][2]["RewardExpTime"] = {}
	tChineseValentinesDay_Reward[3304140][1][2]["RewardExpTime"]["Value"] = 20
	tChineseValentinesDay_Reward[3304140][1][2]["FullIndex"] = "RewardCultivation"
	tChineseValentinesDay_Reward[3304140][1][2]["FullValue"] = 10
	-- 修行值		50	直接给		30.00%
	tChineseValentinesDay_Reward[3304140][1][3] = {}
	tChineseValentinesDay_Reward[3304140][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][3]["ItemChance"] = 3000
	tChineseValentinesDay_Reward[3304140][1][3]["RewardCultivation"] = {}
	tChineseValentinesDay_Reward[3304140][1][3]["RewardCultivation"]["Value"] = 50
	-- 通神丹		1	不可交易		10.00%	monopoly 0
	tChineseValentinesDay_Reward[3304140][1][4] = {}
	tChineseValentinesDay_Reward[3304140][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][4]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304140][1][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304140][1][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304140][1][4]["RewardItem"][1]["Id"] = 3003125
	tChineseValentinesDay_Reward[3304140][1][4]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 免费强炼丹		1	不可交易		10.00%	monopoly 0
	tChineseValentinesDay_Reward[3304140][1][5] = {}
	tChineseValentinesDay_Reward[3304140][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][5]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304140][1][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304140][1][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304140][1][5]["RewardItem"][1]["Id"] = 3003124
	tChineseValentinesDay_Reward[3304140][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 微光星陨石		1	不可交易	激活时效	5.00%
	tChineseValentinesDay_Reward[3304140][1][6] = {}
	tChineseValentinesDay_Reward[3304140][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][6]["ItemChance"] = 500
	tChineseValentinesDay_Reward[3304140][1][6]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304140][1][6]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304140][1][6]["RewardItem"][1]["Id"] = 3009000
	tChineseValentinesDay_Reward[3304140][1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	--  +1赤炼石		1	赠		5.00%
	tChineseValentinesDay_Reward[3304140][1][7] = {}
	tChineseValentinesDay_Reward[3304140][1][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][7]["ItemChance"] = 500
	tChineseValentinesDay_Reward[3304140][1][7]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3304140][1][7]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3304140][1][7]["RewardItem"][1]["Id"] = 730001
	tChineseValentinesDay_Reward[3304140][1][7]["RewardItem"][1]["Attr"] = "0 1 3"
	-- 赠点		20	直接给		10.00%
	tChineseValentinesDay_Reward[3304140][1][8] = {}
	tChineseValentinesDay_Reward[3304140][1][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Reward[3304140][1][8]["ItemChance"] = 1000
	tChineseValentinesDay_Reward[3304140][1][8]["RewardEMoneyMono"] = {}
	tChineseValentinesDay_Reward[3304140][1][8]["RewardEMoneyMono"]["Value"] = 20
	
	-- 南宫 素衣阁 18996 星光 加赠属性
	-- tChineseValentinesDay_Reward[18996] = {}
	-- tChineseValentinesDay_Reward[18996][1] = {}
	-- tChineseValentinesDay_Reward[18996][1]["RewardItem"] = {}
	-- tChineseValentinesDay_Reward[18996][1]["RewardItem"][1] = {}
	-- tChineseValentinesDay_Reward[18996][1]["RewardItem"][1]["Id"] = 3304139
	-- tChineseValentinesDay_Reward[18996][1]["RewardItem"][1]["Attr"] = "0 1 3"
	-- tChineseValentinesDay_Reward[18996][1]["LogId"] = 12000783
	
	-- tChineseValentinesDay_Reward[18996][3] = {}
	-- tChineseValentinesDay_Reward[18996][3]["RewardItem"] = {}
	-- tChineseValentinesDay_Reward[18996][3]["RewardItem"][1] = {}
	-- tChineseValentinesDay_Reward[18996][3]["RewardItem"][1]["Id"] = 3304139
	-- tChineseValentinesDay_Reward[18996][3]["RewardItem"][1]["Attr"] = "0 3 3"
	-- tChineseValentinesDay_Reward[18996][3]["LogId"] = 12000783
	
	-- 南宫 锦衣阁 18997 月华
	-- tChineseValentinesDay_Reward[18997] = {}
	-- tChineseValentinesDay_Reward[18997][1] = {}
	-- tChineseValentinesDay_Reward[18997][1]["RewardItem"] = {}
	-- tChineseValentinesDay_Reward[18997][1]["RewardItem"][1] = {}
	-- tChineseValentinesDay_Reward[18997][1]["RewardItem"][1]["Id"] = 3304140
	-- tChineseValentinesDay_Reward[18997][1]["RewardItem"][1]["Attr"] = "0 1"
	-- tChineseValentinesDay_Reward[18997][1]["LogId"] = 12000783
	
	-- tChineseValentinesDay_Reward[18997][3] = {}
	-- tChineseValentinesDay_Reward[18997][3]["RewardItem"] = {}
	-- tChineseValentinesDay_Reward[18997][3]["RewardItem"][1] = {}
	-- tChineseValentinesDay_Reward[18997][3]["RewardItem"][1]["Id"] = 3304140
	-- tChineseValentinesDay_Reward[18997][3]["RewardItem"][1]["Attr"] = "0 3"
	-- tChineseValentinesDay_Reward[18997][3]["LogId"] = 12000783
	
	-- 青霞仙子 鲜花任务
	tChineseValentinesDay_Reward[21998] = {}
	tChineseValentinesDay_Reward[21998][1] = {}
	tChineseValentinesDay_Reward[21998][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][1]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][1]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][1]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][1]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][1]["DeleteItem"][1]["ItemNum"] = 10
	tChineseValentinesDay_Reward[21998][1]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][1]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][1]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][2] = {}
	tChineseValentinesDay_Reward[21998][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][2]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][2]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][2]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][2]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][2]["DeleteItem"][1]["ItemNum"] = 20
	tChineseValentinesDay_Reward[21998][2]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][2]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][2]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][3] = {}
	tChineseValentinesDay_Reward[21998][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][3]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][3]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][3]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][3]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][3]["DeleteItem"][1]["ItemNum"] = 30
	tChineseValentinesDay_Reward[21998][3]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][3]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][3]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][4] = {}
	tChineseValentinesDay_Reward[21998][4]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][4]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][4]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][4]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][4]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][4]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][4]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][4]["DeleteItem"][1]["ItemNum"] = 20
	tChineseValentinesDay_Reward[21998][4]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][4]["DeleteItem"][2]["Id"] = 754001
	tChineseValentinesDay_Reward[21998][4]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][4]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][4]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][4]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][5] = {}
	tChineseValentinesDay_Reward[21998][5]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][5]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][5]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][5]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][5]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][5]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][5]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][5]["DeleteItem"][1]["ItemNum"] = 10
	tChineseValentinesDay_Reward[21998][5]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][5]["DeleteItem"][2]["Id"] = 754003
	tChineseValentinesDay_Reward[21998][5]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][5]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][5]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][5]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][6] = {}
	tChineseValentinesDay_Reward[21998][6]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][6]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][6]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][6]["RewardItem"][1]["Attr"] = "0 2"
	tChineseValentinesDay_Reward[21998][6]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][6]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][6]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][6]["DeleteItem"][1]["ItemNum"] = 20
	tChineseValentinesDay_Reward[21998][6]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][6]["DeleteItem"][2]["Id"] = 754009
	tChineseValentinesDay_Reward[21998][6]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][6]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][6]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][6]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][7] = {}
	tChineseValentinesDay_Reward[21998][7]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][7]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][7]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][7]["RewardItem"][1]["Attr"] = "0 15"
	tChineseValentinesDay_Reward[21998][7]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][7]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][7]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][7]["DeleteItem"][1]["ItemNum"] = 30
	tChineseValentinesDay_Reward[21998][7]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][7]["DeleteItem"][2]["Id"] = 754099
	tChineseValentinesDay_Reward[21998][7]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][7]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][7]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][7]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][8] = {}
	tChineseValentinesDay_Reward[21998][8]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][8]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][8]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][8]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][8]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][8]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][8]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][8]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][8]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][8]["DeleteItem"][2]["Id"] = 753001
	tChineseValentinesDay_Reward[21998][8]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][8]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][8]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][8]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][9] = {}
	tChineseValentinesDay_Reward[21998][9]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][9]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][9]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][9]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][9]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][9]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][9]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][9]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][9]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][9]["DeleteItem"][2]["Id"] = 753003
	tChineseValentinesDay_Reward[21998][9]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][9]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][9]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][9]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][10] = {}
	tChineseValentinesDay_Reward[21998][10]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][10]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][10]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][10]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][10]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][10]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][10]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][10]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][10]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][10]["DeleteItem"][2]["Id"] = 753009
	tChineseValentinesDay_Reward[21998][10]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][10]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][10]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][10]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][11] = {}
	tChineseValentinesDay_Reward[21998][11]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][11]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][11]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][11]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][11]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][11]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][11]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][11]["DeleteItem"][1]["ItemNum"] = 30
	tChineseValentinesDay_Reward[21998][11]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][11]["DeleteItem"][2]["Id"] = 753099
	tChineseValentinesDay_Reward[21998][11]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][11]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][11]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][11]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][12] = {}
	tChineseValentinesDay_Reward[21998][12]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][12]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][12]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][12]["RewardItem"][1]["Attr"] = "0 10"
	tChineseValentinesDay_Reward[21998][12]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][12]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][12]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][12]["DeleteItem"][1]["ItemNum"] = 50
	tChineseValentinesDay_Reward[21998][12]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][12]["DeleteItem"][2]["Id"] = 753999
	tChineseValentinesDay_Reward[21998][12]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][12]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][12]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][12]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][13] = {}
	tChineseValentinesDay_Reward[21998][13]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][13]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][13]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][13]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][13]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][13]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][13]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][13]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][13]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][13]["DeleteItem"][2]["Id"] = 752003
	tChineseValentinesDay_Reward[21998][13]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][13]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][13]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][13]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][14] = {}
	tChineseValentinesDay_Reward[21998][14]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][14]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][14]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][14]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][14]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][14]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][14]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][14]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][14]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][14]["DeleteItem"][2]["Id"] = 752009
	tChineseValentinesDay_Reward[21998][14]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][14]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][14]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][14]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][15] = {}
	tChineseValentinesDay_Reward[21998][15]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][15]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][15]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][15]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][15]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][15]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][15]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][15]["DeleteItem"][1]["ItemNum"] = 20
	tChineseValentinesDay_Reward[21998][15]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][15]["DeleteItem"][2]["Id"] = 752099
	tChineseValentinesDay_Reward[21998][15]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][15]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][15]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][15]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][16] = {}
	tChineseValentinesDay_Reward[21998][16]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][16]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][16]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][16]["RewardItem"][1]["Attr"] = "0 3"
	tChineseValentinesDay_Reward[21998][16]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][16]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][16]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][16]["DeleteItem"][1]["ItemNum"] = 50
	tChineseValentinesDay_Reward[21998][16]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][16]["DeleteItem"][2]["Id"] = 752999
	tChineseValentinesDay_Reward[21998][16]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][16]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][16]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][16]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][17] = {}
	tChineseValentinesDay_Reward[21998][17]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][17]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][17]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][17]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][17]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][17]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][17]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][17]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][17]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][17]["DeleteItem"][2]["Id"] = 751001
	tChineseValentinesDay_Reward[21998][17]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][17]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][17]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][17]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][18] = {}
	tChineseValentinesDay_Reward[21998][18]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][18]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][18]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][18]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][18]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][18]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][18]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][18]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][18]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][18]["DeleteItem"][2]["Id"] = 751003
	tChineseValentinesDay_Reward[21998][18]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][18]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][18]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][18]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][19] = {}
	tChineseValentinesDay_Reward[21998][19]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][19]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][19]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][19]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][19]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][19]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][19]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][19]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][19]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][19]["DeleteItem"][2]["Id"] = 751009
	tChineseValentinesDay_Reward[21998][19]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][19]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][19]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][19]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][20] = {}
	tChineseValentinesDay_Reward[21998][20]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][20]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][20]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][20]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][20]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][20]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][20]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][20]["DeleteItem"][1]["ItemNum"] = 25
	tChineseValentinesDay_Reward[21998][20]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][20]["DeleteItem"][2]["Id"] = 751099
	tChineseValentinesDay_Reward[21998][20]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][20]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][20]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][20]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][21] = {}
	tChineseValentinesDay_Reward[21998][21]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][21]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][21]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[21998][21]["RewardItem"][1]["Attr"] = "0 10"
	tChineseValentinesDay_Reward[21998][21]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][21]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][21]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][21]["DeleteItem"][1]["ItemNum"] = 50
	tChineseValentinesDay_Reward[21998][21]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][21]["DeleteItem"][2]["Id"] = 751999
	tChineseValentinesDay_Reward[21998][21]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][21]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][21]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][21]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[21998][22] = {}
	tChineseValentinesDay_Reward[21998][22]["RewardItem"] = {}
	tChineseValentinesDay_Reward[21998][22]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[21998][22]["RewardItem"][1]["Id"] = 3304151
	tChineseValentinesDay_Reward[21998][22]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[21998][22]["DeleteItem"] = {}
	tChineseValentinesDay_Reward[21998][22]["DeleteItem"][1] = {}
	tChineseValentinesDay_Reward[21998][22]["DeleteItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward[21998][22]["DeleteItem"][1]["ItemNum"] = 50
	tChineseValentinesDay_Reward[21998][22]["DeleteItem"][2] = {}
	tChineseValentinesDay_Reward[21998][22]["DeleteItem"][2]["Id"] = 754999
	tChineseValentinesDay_Reward[21998][22]["DeleteItem"][2]["ItemNum"] = 1
	tChineseValentinesDay_Reward[21998][22]["RewardEffect"] = {}
	tChineseValentinesDay_Reward[21998][22]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["Submit"]
	tChineseValentinesDay_Reward[21998][22]["LogId"] = 12000783
	tChineseValentinesDay_Reward[21998][22]["RewardBroadCast"] = tChineseValentinesDay_Text["Msg"][21998]

	-- 怪物掉率
	tChineseValentinesDay_Reward["Monster"] = {}
	-- 片区
	tChineseValentinesDay_Reward["Monster"]["Area"] = {}
	tChineseValentinesDay_Reward["Monster"]["Area"]["RewardItem"] = {}
	tChineseValentinesDay_Reward["Monster"]["Area"]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["Monster"]["Area"]["RewardItem"][1]["Id"] = 3304138
	tChineseValentinesDay_Reward["Monster"]["Area"]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["Monster"]["Area"]["LogId"] = 12000783
	tChineseValentinesDay_Reward["Monster"]["Area"]["RewardEffect"] = {}
	tChineseValentinesDay_Reward["Monster"]["Area"]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["DropStarlight"]
	
	-- 活动地图
	tChineseValentinesDay_Reward["Monster"][4402] = {}

	tChineseValentinesDay_Reward["Monster"][4402][1] = {}
	tChineseValentinesDay_Reward["Monster"][4402][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward["Monster"][4402][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["Monster"][4402][1]["RewardItem"][1]["Id"] = 3304138
	tChineseValentinesDay_Reward["Monster"][4402][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["Monster"][4402][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward["Monster"][4402][1]["RewardEffect"] = {}
	tChineseValentinesDay_Reward["Monster"][4402][1]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["DropStarlight"]
	
	tChineseValentinesDay_Reward["Monster"][4402][2] = {}
	tChineseValentinesDay_Reward["Monster"][4402][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward["Monster"][4402][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["Monster"][4402][2]["RewardItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward["Monster"][4402][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["Monster"][4402][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward["Monster"][4402][2]["LogStep"] = "1[1]"
	tChineseValentinesDay_Reward["Monster"][4402][2]["RewardEffect"] = {}
	tChineseValentinesDay_Reward["Monster"][4402][2]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["DropStarlight"]

	tChineseValentinesDay_Reward["Monster"][4402][3] = {}
	tChineseValentinesDay_Reward["Monster"][4402][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward["Monster"][4402][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["Monster"][4402][3]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward["Monster"][4402][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["Monster"][4402][3]["LogId"] = 12000783
	tChineseValentinesDay_Reward["Monster"][4402][3]["LogStep"] = "1[2]"
	tChineseValentinesDay_Reward["Monster"][4402][3]["RewardEffect"] = {}
	tChineseValentinesDay_Reward["Monster"][4402][3]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["DropMoonlight"]
	
	tChineseValentinesDay_Reward["Monster"][4403] = {}
	
	tChineseValentinesDay_Reward["Monster"][4403][1] = {}
	tChineseValentinesDay_Reward["Monster"][4403][1]["RewardItem"] = {}
	tChineseValentinesDay_Reward["Monster"][4403][1]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["Monster"][4403][1]["RewardItem"][1]["Id"] = 3304139
	tChineseValentinesDay_Reward["Monster"][4403][1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["Monster"][4403][1]["LogStep"] = "1[1]"
	tChineseValentinesDay_Reward["Monster"][4403][1]["LogId"] = 12000783
	tChineseValentinesDay_Reward["Monster"][4403][1]["RewardEffect"] = {}
	tChineseValentinesDay_Reward["Monster"][4403][1]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["DropStarlight"]

	tChineseValentinesDay_Reward["Monster"][4403][2] = {}
	tChineseValentinesDay_Reward["Monster"][4403][2]["RewardItem"] = {}
	tChineseValentinesDay_Reward["Monster"][4403][2]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["Monster"][4403][2]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward["Monster"][4403][2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["Monster"][4403][2]["LogId"] = 12000783
	tChineseValentinesDay_Reward["Monster"][4403][2]["LogStep"] = "1[2]"
	tChineseValentinesDay_Reward["Monster"][4403][2]["RewardEffect"] = {}
	tChineseValentinesDay_Reward["Monster"][4403][2]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["DropMoonlight"]

	tChineseValentinesDay_Reward["Monster"][4403][3] = {}
	tChineseValentinesDay_Reward["Monster"][4403][3]["EventType"] = 163
	tChineseValentinesDay_Reward["Monster"][4403][3]["DataType"] = 88
	tChineseValentinesDay_Reward["Monster"][4403][3]["RewardDelay"] = 1
	tChineseValentinesDay_Reward["Monster"][4403][3]["RewardTimeType"] = 4
	tChineseValentinesDay_Reward["Monster"][4403][3]["RewardData"] = 1
	tChineseValentinesDay_Reward["Monster"][4403][3]["RewardItem"] = {}
	tChineseValentinesDay_Reward["Monster"][4403][3]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward["Monster"][4403][3]["RewardItem"][1]["Id"] = 3304141
	tChineseValentinesDay_Reward["Monster"][4403][3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward["Monster"][4403][3]["LogId"] = 12000783
	
	tChineseValentinesDay_Reward[2063]={}
	tChineseValentinesDay_Reward[2063]["RewardTitle"] = {}
	tChineseValentinesDay_Reward[2063]["RewardTitle"]["TitleType"] = 2063
	tChineseValentinesDay_Reward[2063]["RewardTitle"]["TitleId"] = 2063
	tChineseValentinesDay_Reward[2063]["RewardTitle"]["SaveTime"] = 0
	
	tChineseValentinesDay_Reward[2064]={}
	tChineseValentinesDay_Reward[2064]["RewardTitle"] = {}
	tChineseValentinesDay_Reward[2064]["RewardTitle"]["TitleType"] = 2064
	tChineseValentinesDay_Reward[2064]["RewardTitle"]["TitleId"] = 2064
	tChineseValentinesDay_Reward[2064]["RewardTitle"]["SaveTime"] = 0
	
	tChineseValentinesDay_Reward[2065]={}
	tChineseValentinesDay_Reward[2065]["RewardTitle"] = {}
	tChineseValentinesDay_Reward[2065]["RewardTitle"]["TitleType"] = 2065
	tChineseValentinesDay_Reward[2065]["RewardTitle"]["TitleId"] = 2065
	tChineseValentinesDay_Reward[2065]["RewardTitle"]["SaveTime"] = 0
	
	-- 显著功勋礼包 3007108
	tChineseValentinesDay_Reward[3007108] = {}
	tChineseValentinesDay_Reward[3007108]["RewardItem"] = {}
	tChineseValentinesDay_Reward[3007108]["RewardItem"][1] = {}
	tChineseValentinesDay_Reward[3007108]["RewardItem"][1]["Id"] = 3304140
	tChineseValentinesDay_Reward[3007108]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Reward[3007108]["Log"] = "0,0,3007108,1,12000783,1[2],3304140,1"
	
local tChineseValentinesDay_Probabil = {}
	
	tChineseValentinesDay_Probabil[21998] = {}
	tChineseValentinesDay_Probabil[21998][1] = {}
	tChineseValentinesDay_Probabil[21998][1]["ItemChanceSum"] = 10000
	tChineseValentinesDay_Probabil[21998][1][1] = {}
	tChineseValentinesDay_Probabil[21998][1][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][1]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][1][1]["Item_1"] = 1
	tChineseValentinesDay_Probabil[21998][1][2] = {}
	tChineseValentinesDay_Probabil[21998][1][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][2]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][1][2]["Item_1"] = 2
	tChineseValentinesDay_Probabil[21998][1][3] = {}
	tChineseValentinesDay_Probabil[21998][1][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][3]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][1][3]["Item_1"] = 3
	tChineseValentinesDay_Probabil[21998][1][4] = {}
	tChineseValentinesDay_Probabil[21998][1][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][4]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][1][4]["Item_1"] = 4
	tChineseValentinesDay_Probabil[21998][1][5] = {}
	tChineseValentinesDay_Probabil[21998][1][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][5]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][1][5]["Item_1"] = 5
	tChineseValentinesDay_Probabil[21998][1][6] = {}
	tChineseValentinesDay_Probabil[21998][1][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][6]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][6]["Item_1"] = 6
	tChineseValentinesDay_Probabil[21998][1][7] = {}
	tChineseValentinesDay_Probabil[21998][1][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][7]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][7]["Item_1"] = 7
	tChineseValentinesDay_Probabil[21998][1][8] = {}
	tChineseValentinesDay_Probabil[21998][1][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][8]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][1][8]["Item_1"] = 8
	tChineseValentinesDay_Probabil[21998][1][9] = {}
	tChineseValentinesDay_Probabil[21998][1][9]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][9]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][1][9]["Item_1"] = 9
	tChineseValentinesDay_Probabil[21998][1][10] = {}
	tChineseValentinesDay_Probabil[21998][1][10]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][10]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][1][10]["Item_1"] = 10
	tChineseValentinesDay_Probabil[21998][1][11] = {}
	tChineseValentinesDay_Probabil[21998][1][11]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][11]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][11]["Item_1"] = 11
	tChineseValentinesDay_Probabil[21998][1][12] = {}
	tChineseValentinesDay_Probabil[21998][1][12]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][12]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][12]["Item_1"] = 12
	tChineseValentinesDay_Probabil[21998][1][13] = {}
	tChineseValentinesDay_Probabil[21998][1][13]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][13]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][1][13]["Item_1"] = 13
	tChineseValentinesDay_Probabil[21998][1][14] = {}
	tChineseValentinesDay_Probabil[21998][1][14]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][14]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][1][14]["Item_1"] = 14
	tChineseValentinesDay_Probabil[21998][1][15] = {}
	tChineseValentinesDay_Probabil[21998][1][15]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][15]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][15]["Item_1"] = 15
	tChineseValentinesDay_Probabil[21998][1][16] = {}
	tChineseValentinesDay_Probabil[21998][1][16]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][16]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][16]["Item_1"] = 16
	tChineseValentinesDay_Probabil[21998][1][17] = {}
	tChineseValentinesDay_Probabil[21998][1][17]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][17]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][1][17]["Item_1"] = 17
	tChineseValentinesDay_Probabil[21998][1][18] = {}
	tChineseValentinesDay_Probabil[21998][1][18]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][18]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][1][18]["Item_1"] = 18
	tChineseValentinesDay_Probabil[21998][1][19] = {}
	tChineseValentinesDay_Probabil[21998][1][19]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][19]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][1][19]["Item_1"] = 19
	tChineseValentinesDay_Probabil[21998][1][20] = {}
	tChineseValentinesDay_Probabil[21998][1][20]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][20]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][20]["Item_1"] = 20
	tChineseValentinesDay_Probabil[21998][1][21] = {}
	tChineseValentinesDay_Probabil[21998][1][21]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][21]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][21]["Item_1"] = 21
	tChineseValentinesDay_Probabil[21998][1][22] = {}
	tChineseValentinesDay_Probabil[21998][1][22]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][1][22]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][1][22]["Item_1"] = 22
	
	tChineseValentinesDay_Probabil[21998][2] = {}
	tChineseValentinesDay_Probabil[21998][2]["ItemChanceSum"] = 10000
	tChineseValentinesDay_Probabil[21998][2][1] = {}
	tChineseValentinesDay_Probabil[21998][2][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][1]["ItemChance"] = 200
	tChineseValentinesDay_Probabil[21998][2][1]["Item_1"] = 1
	tChineseValentinesDay_Probabil[21998][2][2] = {}
	tChineseValentinesDay_Probabil[21998][2][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][2]["ItemChance"] = 200
	tChineseValentinesDay_Probabil[21998][2][2]["Item_1"] = 2
	tChineseValentinesDay_Probabil[21998][2][3] = {}
	tChineseValentinesDay_Probabil[21998][2][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][3]["ItemChance"] = 300
	tChineseValentinesDay_Probabil[21998][2][3]["Item_1"] = 3
	tChineseValentinesDay_Probabil[21998][2][4] = {}
	tChineseValentinesDay_Probabil[21998][2][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][4]["ItemChance"] = 800
	tChineseValentinesDay_Probabil[21998][2][4]["Item_1"] = 4
	tChineseValentinesDay_Probabil[21998][2][5] = {}
	tChineseValentinesDay_Probabil[21998][2][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][5]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][2][5]["Item_1"] = 5
	tChineseValentinesDay_Probabil[21998][2][6] = {}
	tChineseValentinesDay_Probabil[21998][2][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][6]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][2][6]["Item_1"] = 6
	tChineseValentinesDay_Probabil[21998][2][7] = {}
	tChineseValentinesDay_Probabil[21998][2][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][7]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][2][7]["Item_1"] = 7
	tChineseValentinesDay_Probabil[21998][2][8] = {}
	tChineseValentinesDay_Probabil[21998][2][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][8]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][2][8]["Item_1"] = 8
	tChineseValentinesDay_Probabil[21998][2][9] = {}
	tChineseValentinesDay_Probabil[21998][2][9]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][9]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][2][9]["Item_1"] = 9
	tChineseValentinesDay_Probabil[21998][2][10] = {}
	tChineseValentinesDay_Probabil[21998][2][10]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][10]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][2][10]["Item_1"] = 10
	tChineseValentinesDay_Probabil[21998][2][11] = {}
	tChineseValentinesDay_Probabil[21998][2][11]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][11]["ItemChance"] = 600
	tChineseValentinesDay_Probabil[21998][2][11]["Item_1"] = 11
	tChineseValentinesDay_Probabil[21998][2][12] = {}
	tChineseValentinesDay_Probabil[21998][2][12]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][12]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][2][12]["Item_1"] = 12
	tChineseValentinesDay_Probabil[21998][2][13] = {}
	tChineseValentinesDay_Probabil[21998][2][13]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][13]["ItemChance"] = 700
	tChineseValentinesDay_Probabil[21998][2][13]["Item_1"] = 13
	tChineseValentinesDay_Probabil[21998][2][14] = {}
	tChineseValentinesDay_Probabil[21998][2][14]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][14]["ItemChance"] = 1000
	tChineseValentinesDay_Probabil[21998][2][14]["Item_1"] = 14
	tChineseValentinesDay_Probabil[21998][2][15] = {}
	tChineseValentinesDay_Probabil[21998][2][15]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][15]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][2][15]["Item_1"] = 15
	tChineseValentinesDay_Probabil[21998][2][16] = {}
	tChineseValentinesDay_Probabil[21998][2][16]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][16]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][2][16]["Item_1"] = 16
	tChineseValentinesDay_Probabil[21998][2][17] = {}
	tChineseValentinesDay_Probabil[21998][2][17]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][17]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][2][17]["Item_1"] = 17
	tChineseValentinesDay_Probabil[21998][2][18] = {}
	tChineseValentinesDay_Probabil[21998][2][18]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][18]["ItemChance"] = 800
	tChineseValentinesDay_Probabil[21998][2][18]["Item_1"] = 18
	tChineseValentinesDay_Probabil[21998][2][19] = {}
	tChineseValentinesDay_Probabil[21998][2][19]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][19]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][2][19]["Item_1"] = 19
	tChineseValentinesDay_Probabil[21998][2][20] = {}
	tChineseValentinesDay_Probabil[21998][2][20]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][20]["ItemChance"] = 400
	tChineseValentinesDay_Probabil[21998][2][20]["Item_1"] = 20
	tChineseValentinesDay_Probabil[21998][2][21] = {}
	tChineseValentinesDay_Probabil[21998][2][21]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][21]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][2][21]["Item_1"] = 21
	tChineseValentinesDay_Probabil[21998][2][21] = {}
	tChineseValentinesDay_Probabil[21998][2][21]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][2][21]["ItemChance"] = 0
	tChineseValentinesDay_Probabil[21998][2][21]["Item_1"] = 21
	
	tChineseValentinesDay_Probabil[21998][3] = {}
	tChineseValentinesDay_Probabil[21998][3]["ItemChanceSum"] = 10000
	tChineseValentinesDay_Probabil[21998][3][1] = {}
	tChineseValentinesDay_Probabil[21998][3][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][1]["ItemChance"] = 200
	tChineseValentinesDay_Probabil[21998][3][1]["Item_1"] = 1
	tChineseValentinesDay_Probabil[21998][3][2] = {}
	tChineseValentinesDay_Probabil[21998][3][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][2]["ItemChance"] = 200
	tChineseValentinesDay_Probabil[21998][3][2]["Item_1"] = 2
	tChineseValentinesDay_Probabil[21998][3][3] = {}
	tChineseValentinesDay_Probabil[21998][3][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][3]["ItemChance"] = 200
	tChineseValentinesDay_Probabil[21998][3][3]["Item_1"] = 3
	tChineseValentinesDay_Probabil[21998][3][4] = {}
	tChineseValentinesDay_Probabil[21998][3][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][4]["ItemChance"] = 600
	tChineseValentinesDay_Probabil[21998][3][4]["Item_1"] = 4
	tChineseValentinesDay_Probabil[21998][3][5] = {}
	tChineseValentinesDay_Probabil[21998][3][5]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][5]["ItemChance"] = 800
	tChineseValentinesDay_Probabil[21998][3][5]["Item_1"] = 5
	tChineseValentinesDay_Probabil[21998][3][6] = {}
	tChineseValentinesDay_Probabil[21998][3][6]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][6]["ItemChance"] = 800
	tChineseValentinesDay_Probabil[21998][3][6]["Item_1"] = 6
	tChineseValentinesDay_Probabil[21998][3][7] = {}
	tChineseValentinesDay_Probabil[21998][3][7]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][7]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][3][7]["Item_1"] = 7
	tChineseValentinesDay_Probabil[21998][3][8] = {}
	tChineseValentinesDay_Probabil[21998][3][8]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][8]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][3][8]["Item_1"] = 8
	tChineseValentinesDay_Probabil[21998][3][9] = {}
	tChineseValentinesDay_Probabil[21998][3][9]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][9]["ItemChance"] = 700
	tChineseValentinesDay_Probabil[21998][3][9]["Item_1"] = 9
	tChineseValentinesDay_Probabil[21998][3][10] = {}
	tChineseValentinesDay_Probabil[21998][3][10]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][10]["ItemChance"] = 700
	tChineseValentinesDay_Probabil[21998][3][10]["Item_1"] = 10
	tChineseValentinesDay_Probabil[21998][3][11] = {}
	tChineseValentinesDay_Probabil[21998][3][11]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][11]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][3][11]["Item_1"] = 11
	tChineseValentinesDay_Probabil[21998][3][12] = {}
	tChineseValentinesDay_Probabil[21998][3][12]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][12]["ItemChance"] = 100
	tChineseValentinesDay_Probabil[21998][3][12]["Item_1"] = 12
	tChineseValentinesDay_Probabil[21998][3][13] = {}
	tChineseValentinesDay_Probabil[21998][3][13]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][13]["ItemChance"] = 300
	tChineseValentinesDay_Probabil[21998][3][13]["Item_1"] = 13
	tChineseValentinesDay_Probabil[21998][3][14] = {}
	tChineseValentinesDay_Probabil[21998][3][14]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][14]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][3][14]["Item_1"] = 14
	tChineseValentinesDay_Probabil[21998][3][15] = {}
	tChineseValentinesDay_Probabil[21998][3][15]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][15]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][3][15]["Item_1"] = 15
	tChineseValentinesDay_Probabil[21998][3][16] = {}
	tChineseValentinesDay_Probabil[21998][3][16]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][16]["ItemChance"] = 100
	tChineseValentinesDay_Probabil[21998][3][16]["Item_1"] = 16
	tChineseValentinesDay_Probabil[21998][3][17] = {}
	tChineseValentinesDay_Probabil[21998][3][17]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][17]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][3][17]["Item_1"] = 17
	tChineseValentinesDay_Probabil[21998][3][18] = {}
	tChineseValentinesDay_Probabil[21998][3][18]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][18]["ItemChance"] = 400
	tChineseValentinesDay_Probabil[21998][3][18]["Item_1"] = 18
	tChineseValentinesDay_Probabil[21998][3][19] = {}
	tChineseValentinesDay_Probabil[21998][3][19]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][19]["ItemChance"] = 700
	tChineseValentinesDay_Probabil[21998][3][19]["Item_1"] = 19
	tChineseValentinesDay_Probabil[21998][3][20] = {}
	tChineseValentinesDay_Probabil[21998][3][20]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][20]["ItemChance"] = 600
	tChineseValentinesDay_Probabil[21998][3][20]["Item_1"] = 20
	tChineseValentinesDay_Probabil[21998][3][21] = {}
	tChineseValentinesDay_Probabil[21998][3][21]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][21]["ItemChance"] = 100
	tChineseValentinesDay_Probabil[21998][3][21]["Item_1"] = 21
	tChineseValentinesDay_Probabil[21998][3][22] = {}
	tChineseValentinesDay_Probabil[21998][3][22]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[21998][3][22]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[21998][3][22]["Item_1"] = 22
	
	-- 新地图 怪物掉落
	tChineseValentinesDay_Probabil[4402] = {}
	tChineseValentinesDay_Probabil[4402]["ItemChanceSum"] = 10000
	tChineseValentinesDay_Probabil[4402][1] = {}
	tChineseValentinesDay_Probabil[4402][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4402][1]["ItemChance"] = 500
	tChineseValentinesDay_Probabil[4402][1]["Item_1"] = 1
	tChineseValentinesDay_Probabil[4402][2] = {}
	tChineseValentinesDay_Probabil[4402][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4402][2]["ItemChance"] = 50
	tChineseValentinesDay_Probabil[4402][2]["Item_1"] = 2
	tChineseValentinesDay_Probabil[4402][3] = {}
	tChineseValentinesDay_Probabil[4402][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4402][3]["ItemChance"] = 10
	tChineseValentinesDay_Probabil[4402][3]["Item_1"] = 3
	tChineseValentinesDay_Probabil[4402][4] = {}
	tChineseValentinesDay_Probabil[4402][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4402][4]["ItemChance"] = 9440
	tChineseValentinesDay_Probabil[4402][4]["Item_1"] = 0
	
	tChineseValentinesDay_Probabil[4403] = {}
	tChineseValentinesDay_Probabil[4403]["ItemChanceSum"] = 10000
	tChineseValentinesDay_Probabil[4403][1] = {}
	tChineseValentinesDay_Probabil[4403][1]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4403][1]["ItemChance"] = 200
	tChineseValentinesDay_Probabil[4403][1]["Item_1"] = 1
	tChineseValentinesDay_Probabil[4403][2] = {}
	tChineseValentinesDay_Probabil[4403][2]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4403][2]["ItemChance"] = 50
	tChineseValentinesDay_Probabil[4403][2]["Item_1"] = 2
	tChineseValentinesDay_Probabil[4403][3] = {}
	tChineseValentinesDay_Probabil[4403][3]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4403][3]["ItemChance"] = 30
	tChineseValentinesDay_Probabil[4403][3]["Item_1"] = 3
	tChineseValentinesDay_Probabil[4403][4] = {}
	tChineseValentinesDay_Probabil[4403][4]["RandomItemChanceType"] = 2
	tChineseValentinesDay_Probabil[4403][4]["ItemChance"] = 9720
	tChineseValentinesDay_Probabil[4403][4]["Item_1"] = 0
	
-- 点亮星星
local tChineseValentinesDay_Light = {}
	
	tChineseValentinesDay_Light[1] = {}
	tChineseValentinesDay_Light[1]["RewardItem"] = {}
	tChineseValentinesDay_Light[1]["RewardItem"][1] = {}
	tChineseValentinesDay_Light[1]["RewardItem"][1]["Id"] = 3304146
	tChineseValentinesDay_Light[1]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Light[1]["LogId"] = 12000783
	tChineseValentinesDay_Light[1]["LogStep"] = "1[8][1]"
	tChineseValentinesDay_Light[1]["RewardEffect"] = {}
	tChineseValentinesDay_Light[1]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	
	tChineseValentinesDay_Light[2] = {}
	tChineseValentinesDay_Light[2]["RewardItem"] = {}
	tChineseValentinesDay_Light[2]["RewardItem"][1] = {}
	tChineseValentinesDay_Light[2]["RewardItem"][1]["Id"] = 3304147
	tChineseValentinesDay_Light[2]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Light[2]["LogId"] = 12000783
	tChineseValentinesDay_Light[2]["LogStep"] = "1[8][2]"
	tChineseValentinesDay_Light[2]["RewardEffect"] = {}
	tChineseValentinesDay_Light[2]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	
	tChineseValentinesDay_Light[3] = {}
	tChineseValentinesDay_Light[3]["RewardItem"] = {}
	tChineseValentinesDay_Light[3]["RewardItem"][1] = {}
	tChineseValentinesDay_Light[3]["RewardItem"][1]["Id"] = 3304153
	tChineseValentinesDay_Light[3]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Light[3]["LogId"] = 12000783
	tChineseValentinesDay_Light[3]["LogStep"] = "1[8][3]"
	tChineseValentinesDay_Light[3]["RewardEffect"] = {}
	tChineseValentinesDay_Light[3]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	
	tChineseValentinesDay_Light[4] = {}
	tChineseValentinesDay_Light[4]["RewardItem"] = {}
	tChineseValentinesDay_Light[4]["RewardItem"][1] = {}
	tChineseValentinesDay_Light[4]["RewardItem"][1]["Id"] = 3304148
	tChineseValentinesDay_Light[4]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Light[4]["LogId"] = 12000783
	tChineseValentinesDay_Light[4]["LogStep"] = "1[8][4]"
	tChineseValentinesDay_Light[4]["RewardEffect"] = {}
	tChineseValentinesDay_Light[4]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	
	tChineseValentinesDay_Light[5] = {}
	tChineseValentinesDay_Light[5]["RewardItem"] = {}
	tChineseValentinesDay_Light[5]["RewardItem"][1] = {}
	tChineseValentinesDay_Light[5]["RewardItem"][1]["Id"] = 3304149
	tChineseValentinesDay_Light[5]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Light[5]["LogId"] = 12000783
	tChineseValentinesDay_Light[5]["LogStep"] = "1[8][5]"
	tChineseValentinesDay_Light[5]["RewardEffect"] = {}
	tChineseValentinesDay_Light[5]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	
	tChineseValentinesDay_Light[6] = {}
	tChineseValentinesDay_Light[6]["RewardItem"] = {}
	tChineseValentinesDay_Light[6]["RewardItem"][1] = {}
	tChineseValentinesDay_Light[6]["RewardItem"][1]["Id"] = 3304150
	tChineseValentinesDay_Light[6]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Light[6]["LogId"] = 12000783
	tChineseValentinesDay_Light[6]["LogStep"] = "1[8][6]"
	tChineseValentinesDay_Light[6]["RewardEffect"] = {}
	tChineseValentinesDay_Light[6]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
	
	tChineseValentinesDay_Light[7] = {}
	tChineseValentinesDay_Light[7]["RewardItem"] = {}
	tChineseValentinesDay_Light[7]["RewardItem"][1] = {}
	tChineseValentinesDay_Light[7]["RewardItem"][1]["Id"] = 3304547
	tChineseValentinesDay_Light[7]["RewardItem"][1]["Attr"] = "0 1"
	tChineseValentinesDay_Light[7]["LogId"] = 12000783
	tChineseValentinesDay_Light[7]["LogStep"] = "1[8][7]"
	tChineseValentinesDay_Light[7]["RewardEffect"] = {}
	tChineseValentinesDay_Light[7]["RewardEffect"]["Effect"] = tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"]
--------------------------------------npc逻辑--------------------------------------------
-- 南宫
-- function ChineseValentinesDay_CuYiHui(nNpcId,nIndex)
	-- 判断时间
	-- if not Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		-- return
	-- end
	
	-- RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nNpcId][nIndex])
-- end

-- 【前往天河之畔】
function ChineseValentinesDay_ChgMap(nNpcId)
	-- 【判断时间】
	-- 活动前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	
	-- 活动后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断掩码】
	-- stc(163,29) 记录每天进入天河之畔的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["ChgMap"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["ChgMap"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["ChgMap"]["Complete"]
	local nDelay = tChineseValentinesDay_Data["Stc"]["ChgMap"]["Delay"]
	local nTimeType = tChineseValentinesDay_Data["Stc"]["ChgMap"]["TimeType"] 
	Task_StcReset(nEventType,nDataType)
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		if Task_StcInterval(nEventType,nDataType,nDelay,nTimeType) then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		end
	end
	
	-- 【判断是否是首次点击【前往天河之畔收集星光月华】选项】
	-- stc(163,89) 记录是否是首次点击【前往天河之畔收集星光月华】选项
	local nClickEventType = tChineseValentinesDay_Data["Stc"]["ClickOption"]["EventType"]
	local nClickDataType = tChineseValentinesDay_Data["Stc"]["ClickOption"]["DataType"]
	local nClickComplete = tChineseValentinesDay_Data["Stc"]["ClickOption"]["Complete"]
	if Task_ChkStcValue(nClickEventType,nClickDataType,"<",nClickComplete) then
		Task_SetStatistic(nClickEventType,nClickDataType,nClickComplete,1)
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	else
		-- 进入活动地图 打掩码 打log 出提示 倒计时
		local nMapId = tChineseValentinesDay_Data["Location"]["River"]["MapId"]
		local nBoundX = tChineseValentinesDay_Data["Location"]["River"]["PosX"]
		local nBoundY = tChineseValentinesDay_Data["Location"]["River"]["PosY"]
		local nTimeDelay = tChineseValentinesDay_Data["StayInTheMap"]
		-- 传送 打log
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
		Sys_SaveActionFestivalLog(tChineseValentinesDay_Data["Log"]["InTheMap"])
		-- 如果是每天首次进入 置掩码 打时间戳 出提示
		if Task_ChkStcValue(nEventType,nDataType,"<",nComplete) then
			Task_SetStatistic(nEventType,nDataType,nComplete,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			Sys_MsgBox(tChineseValentinesDay_Text["Msg"]["InTheMap"])
			User_SetTimer(nTimeDelay,"ChineseValentinesDay_TimeOut",1)
		end
	end
end

-- 停留天河之畔时间到
function ChineseValentinesDay_TimeOut(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nNewMapId = tChineseValentinesDay_Data["Location"]["River"]["MapId"]
	local nUserMapId = Get_UserMapId(nUserId)
	
	-- 判断地图
	if nNewMapId ~= nUserMapId then
		return
	end
	
	local nMapId = tChineseValentinesDay_Data["Location"]["Market"]["MapId"]
	local nBoundX = tChineseValentinesDay_Data["Location"]["Market"]["PosX"]
	local nBoundY = tChineseValentinesDay_Data["Location"]["Market"]["PosY"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1,nUserId)
	Sys_SaveActionFestivalLog(tChineseValentinesDay_Data["Log"]["OutOfTheMap"],nUserId)
	Sys_MsgBox(tChineseValentinesDay_Text["Msg"]["OutOfTheMap"],"NULL","NULL",nUserId)
end

-- 上交星光
function ChineseValentinesDay_SubmitStarlight(nNpcId)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断物品】
	local nItemId = tChineseValentinesDay_Data["Itemtype"]["Starlight"]
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	-- 一次性上交
	local nItemNum = Get_CountItemType(nItemId,0)
	local nTimes = ChineseValentinesDay_SubmitStarlightTimes(nNpcId)
	local sMsg = ""
	if nTimes == 0 then
		sMsg = string.format(tChineseValentinesDay_Text["Msg"]["SubmitStarlightTimes"],nItemNum,nItemNum)
		Sys_MsgBox(sMsg)
	elseif nTimes > 1 then
		sMsg = string.format(tChineseValentinesDay_Text["Msg"]["SubmitStarlightTimes"],nTimes-1,nTimes-1)
		Sys_MsgBox(sMsg)
	end
end

-- 一次性上交星光
function ChineseValentinesDay_SubmitStarlightTimes(nNpcId)
	local nItemId = tChineseValentinesDay_Data["Itemtype"]["Starlight"]
	local nItemNum = Get_CountItemType(nItemId,0)
	for i = 1,nItemNum do
		-- 【判断掩码】
		-- stc(163,31) 记录每天上交星光次数
		local nEventType = tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["EventType"]
		local nDataType = tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["DataType"]
		local nComplete = tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["Complete"]
		Task_StcReset(nEventType,nDataType)
		local nTimes = Get_UserStatisticValue(nEventType,nDataType)
		if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return i
		end
		
		-- 【判断物品】
		if not Item_ChkItem(nItemId) then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return i
		end
		
		-- 【判断赠点】
		local nMaxRewardMonoEMoney = tChineseValentinesDay_Reward[nItemId][1][8]["RewardEMoneyMono"]["Value"]
		if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
			User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["TooMuch"])
			return i
		end
		
		-- 【判断背包】
		local nSpace = 0
		if Task_ChkStcValue(nEventType,nDataType,"<",1) then
			nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesDay_Reward[nItemId],1)
		else
			nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesDay_Reward[nItemId],2)
		end
		if not User_CheckLeftSpace(nSpace) then
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return i
		end
		
		-- 【给奖】
		-- stc(163,79) 记录每天上交星光非首次后获得奖励次数
		local nRewardEventType = tChineseValentinesDay_Data["Stc"]["SubmitMoonlightReward"]["EventType"]
		local nRewardDataType = tChineseValentinesDay_Data["Stc"]["SubmitMoonlightReward"]["DataType"]
		local nRewardComplete = tChineseValentinesDay_Data["Stc"]["SubmitMoonlightReward"]["Complete"]
		Task_StcReset(nRewardEventType,nRewardDataType)
		-- stc(163,30) 记录累计星月值
		local nPointsEventType = tChineseValentinesDay_Data["Stc"]["Points"]["EventType"]
		local nPointsDataType = tChineseValentinesDay_Data["Stc"]["Points"]["DataType"]
		local nStartNum = tChineseValentinesDay_Data["Random"]["SubmitStarlight"]["StartNum"]
		local nEndNum = tChineseValentinesDay_Data["Random"]["SubmitStarlight"]["EndNum"]
		-- 删物品 打掩码 给奖励 加光效
		if Item_DelItem(nItemId) then
			Task_AddStatistic(nPointsEventType,nPointsDataType,1,1)
			Task_AddStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			Sys_SaveActionRewardLog(tChineseValentinesDay_Data["Log"]["SubmitStarlight"])
			-- 每天首次
			if nTimes < 1 then
				RewardTemplate_NewRandom(tChineseValentinesDay_Reward[nItemId],1)
			-- 非首次
			elseif Sys_Random(nStartNum,nEndNum) then
				-- 判断掩码 stc(163,79) 记录每天上交星光非首次后获得奖励次数
				if Task_ChkStcValue(nRewardEventType,nRewardDataType,"<",nRewardComplete) then
					Task_AddStatistic(nRewardEventType,nRewardDataType,1,1)
					Task_SetStcTimestamp(nRewardEventType,nRewardDataType,0)
					RewardTemplate_NewRandom(tChineseValentinesDay_Reward[nItemId],2)
				end
			end
			User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["SubmitStarlight"])
			User_EffectAdd("self",tChineseValentinesDay_Data["Effect"]["Submit"])
		end
	end
	return 0
end

-- 上交月华
function ChineseValentinesDay_SubmitMoonlight(nNpcId,nPiece)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断物品】
	local nItemId = tChineseValentinesDay_Data["Itemtype"]["Moonlight"]
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
	
	-- 是否是一次性上交
	local nItemNum = Get_CountItemType(nItemId,0)
	if nPiece == 1 then
		nItemNum = 1
	end
	local nTimes = ChineseValentinesDay_SubmitMoonlightTimes(nNpcId,nItemNum)
	local sMsg = ""
	if nTimes == 0 then
		sMsg = string.format(tChineseValentinesDay_Text["Msg"]["SubmitMoonlightTimes"],nItemNum,nItemNum)
		Sys_MsgBox(sMsg)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	elseif nTimes > 1 then
		sMsg = string.format(tChineseValentinesDay_Text["Msg"]["SubmitMoonlightTimes"],nTimes-1,nTimes-1)
		Sys_MsgBox(sMsg)
	end
end

-- 一次性上交月华
function ChineseValentinesDay_SubmitMoonlightTimes(nNpcId,nItemNum)
	local nItemId = tChineseValentinesDay_Data["Itemtype"]["Moonlight"]
	for i = 1,nItemNum do
		-- stc(163,78) 记录每天上交月华次数
		local nEventType = tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["EventType"]
		local nDataType = tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["DataType"]
		local nComplete = tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["Complete"]
		Task_StcReset(nEventType,nDataType)
		local nTimes = Get_UserStatisticValue(nEventType,nDataType)
		
		-- 【判断物品】
		if not Item_ChkItem(nItemId) then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return i
		end
		
		-- 【判断背包】
		local nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesDay_Reward[nItemId],1)
		if nTimes < nComplete then
			if not User_CheckLeftSpace(nSpace) then
				LinkNpcGossipFunc_New(nNpcId,"3-5")
				return i
			end
		end
		
		-- 【判断赠点】
		local nMaxRewardMonoEMoney = tChineseValentinesDay_Reward[nItemId][1][8]["RewardEMoneyMono"]["Value"]
		if nTimes < nComplete then
			if Get_UserMonoEMoney() + nMaxRewardMonoEMoney > G_User_MaxEmoneyMono then
				User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["TooMuch"])
				return i
			end
		end
		
		-- 【给奖】
		local nPointsEventType = tChineseValentinesDay_Data["Stc"]["Points"]["EventType"]
		local nPointsDataType = tChineseValentinesDay_Data["Stc"]["Points"]["DataType"]
		-- 删物品 打掩码 给奖励 加光效
		if Item_DelItem(nItemId) then
			Task_AddStatistic(nPointsEventType,nPointsDataType,1,1)
			Task_AddStatistic(nEventType,nDataType,1,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
			Sys_SaveActionRewardLog(tChineseValentinesDay_Data["Log"]["SubmitMoonlight"])
			if nTimes < nComplete then
				RewardTemplate_NewRandom(tChineseValentinesDay_Reward[nItemId],1)
			end
			User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["SubmitMoonlight"])
		end
	end
	return 0
end

-- 鲜花任务
function ChineseValentinesDay_FlowersMission(nNpcId)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断次数】
	-- 免费次数
	-- stc(163,80) 记录鲜花任务每天免费完成次数
	local nFreeEventType = tChineseValentinesDay_Data["Stc"]["Free"]["EventType"]
	local nFreeDataType = tChineseValentinesDay_Data["Stc"]["Free"]["DataType"]
	Task_StcReset(nFreeEventType,nFreeDataType)
	local nFree = Get_UserStatisticValue(nFreeEventType,nFreeDataType)
	local nFreeComplete = tChineseValentinesDay_Data["Stc"]["Free"]["Complete"]
	local nRestFree = nFreeComplete - nFree
	-- 额外次数
	local nExtraEventType = tChineseValentinesDay_Data["Stc"]["Extra"]["EventType"]
	local nExtraDataType = tChineseValentinesDay_Data["Stc"]["Extra"]["DataType"]
	local nExtra = Get_UserStatisticValue(nExtraEventType,nExtraDataType)
	if (nRestFree + nExtra) < 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 【判断物品】
	local nCompleteEventType = tChineseValentinesDay_Data["Stc"]["Complete"]["EventType"]
	local nCompleteDataType = tChineseValentinesDay_Data["Stc"]["Complete"]["DataType"]
	local nIndex =  Get_UserStatisticValue(nCompleteEventType,nCompleteDataType)
	local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nNpcId][nIndex])
	tNpcGossip[nNpcId]["Text212"] = string.format(tChineseValentinesDay_Text[nNpcId]["Text212"],tChineseValentinesDay_Text[nNpcId][nIndex])
	-- 物品1
	local nItem1Id = tReward["DeleteItem"][1]["Id"]
	local nItem1Num = tReward["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItem1Id,nItem1Id,nItem1Num) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- 物品2
	local nItem2Id = 0
	local nItem2Num = 0
	if tReward["DeleteItem"][2] ~= nil then
		nItem2Id = tReward["DeleteItem"][2]["Id"]
		nItem2Num = tReward["DeleteItem"][2]["ItemNum"]
		if not Item_ChkMulItem(nItem2Id,nItem2Id,nItem2Num) then
			for x = 1,20 do
				if nItem2Id == tChineseValentinesDay_Data["Flowes"][x][1] then
					nExchangeItemId = tChineseValentinesDay_Data["Flowes"][x][2]
					nExchangeNum = tChineseValentinesDay_Data["Flowes"][x][3]
					if not Item_ChkMulItem(nExchangeItemId,nExchangeItemId,nExchangeNum) then
						LinkNpcGossipFunc_New(nNpcId,"2-1")
						return
					else
						tReward["DeleteItem"][2]["Id"] = nExchangeItemId
						tReward["DeleteItem"][2]["ItemNum"] = nExchangeNum
					end
				end
			end
		end
	end
	
	-- 【判断背包】
	local nSpace = RewardTemplate_GetRewardSpace(tReward)
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 完成任务
	-- 置掩码
	-- stc(163,80) 记录鲜花任务每天免费完成次数
	-- stc(163,81) 记录鲜花任务额外完成次数
	if nRestFree > 0 then
		Task_AddStatistic(nFreeEventType,nFreeDataType,1,1)
		Task_SetStcTimestamp(nFreeEventType,nFreeDataType,0)
	else
		Task_AddStatistic(nExtraEventType,nExtraDataType,-1,1)
	end
	-- stc(163,85) 记录每天完成鲜花任务的次数
	local nRankEventType = tChineseValentinesDay_Data["Stc"]["Rank"]["EventType"]
	local nRankDataType = tChineseValentinesDay_Data["Stc"]["Rank"]["DataType"]
	Task_StcReset(nRankEventType,nRankDataType)
	Task_AddStatistic(nRankEventType,nRankDataType,1,1)
	Task_SetStcTimestamp(nRankEventType,nRankDataType,0)
	-- stc(163,84) 记录鲜花任务完成情况
	local nCompleteEventType = tChineseValentinesDay_Data["Stc"]["Complete"]["EventType"]
	local nCompleteDataType = tChineseValentinesDay_Data["Stc"]["Complete"]["DataType"]
	Task_SetStatistic(nCompleteEventType,nCompleteDataType,0,1)
	
	RewardTemplate_UseItemAndMsg(tReward)
	local nRewardItemNum = CommonFunc_GetItemNum(tReward["RewardItem"][1]["Attr"])
	tNpcGossip[nNpcId]["Text2111"] = string.format(tChineseValentinesDay_Text[nNpcId]["Text2111"],nRewardItemNum)
	LinkNpcGossipFunc_New(nNpcId,"2-9")
	
	-- 不大于排行榜最后一名不进行排名
	-- local nRankGlobalId = tChineseValentinesDay_Data["Global"][2][1]
	-- local nRankTen = Get_SysDynaGlobalData5(nRankGlobalId)
	-- if Task_ChkStcValue(nRankEventType,nRankDataType,"<=",nRankTen) then
		-- return
	-- end
	-- local nNowScore = Get_UserStatisticValue(nRankEventType,nRankDataType)
	-- ChineseValentinesDay_Rank(nNowScore)
end

-- 排行榜排序
-- function ChineseValentinesDay_Rank(nNowScore)
	-- local tRankUserData = {}
	-- 获得前10名玩家信息
	-- local nIndex = 0
	-- for j = 1,2 do
		-- for i = 1,5 do
			-- local nGlobalId = tChineseValentinesDay_Data["Global"][j][1]
			-- local nScore = Get_SysDynaGlobalData(nGlobalId,i)
			-- local sUsername = Get_SysDynaGlobalDataStr(nGlobalId,i)
			-- nIndex = nIndex + 1
			-- tRankUserData[nIndex] = {}
			-- tRankUserData[nIndex]["Score"] = nScore == "" and 0 or nScore
			-- tRankUserData[nIndex]["Username"] = sUsername == "" and "null" or sUsername
		-- end
	-- end
	-- nIndex = 0
	-- for j = 1,2 do
		-- for i = 1,5 do
			-- local nGlobalId = tChineseValentinesDay_Data["Global"][j][2]
			-- local nUserId = Get_SysDynaGlobalData(nGlobalId,i)
			-- nIndex = nIndex + 1
			-- tRankUserData[nIndex]["UserId"] = nUserId
		-- end
	-- end
	
	-- 将玩家加入到临时排行表中
	-- nIndex = #tRankUserData + 1
	-- local nNowUserId = Get_UserId()
	-- for i = 1,10 do
		-- if nNowUserId == tRankUserData[i]["UserId"] then
			-- nIndex = i
		-- end
	-- end
	-- tRankUserData[nIndex] = {}
	-- tRankUserData[nIndex]["Score"] = nNowScore
	-- tRankUserData[nIndex]["UserId"] = nNowUserId
	-- tRankUserData[nIndex]["Username"] = Get_UserName(nNowUserId)
	
	-- 对临时排行榜表进行排序
	-- local t = {}
	-- for i = 1, #tRankUserData do
		-- for j = 1, #tRankUserData - i do
			-- if tRankUserData[j]["UserId"] == 0 or (tRankUserData[j]["Score"] < tRankUserData[j+1]["Score"] and tRankUserData[j+1]["UserId"] ~= 0) then
				-- t = tRankUserData[j]
				-- tRankUserData[j] = tRankUserData[j+1]
				-- tRankUserData[j+1] = t
			-- end
		-- end
	-- end
	
	-- 将排序完的数据更新到全局表中
	-- for i = 1,10 do
		-- local nScore = tRankUserData[i]["Score"]
		-- local nUserId = tRankUserData[i]["UserId"]
		-- local sUsername = tRankUserData[i]["Username"]
		
		-- if nScore == 0 then
			-- nUserId = 0
			-- sUsername = ""
		-- end
		
		-- if i > 5 then
			-- Sys_SetSynaGlobalData(tChineseValentinesDay_Data["Global"][2][1],i-5,nScore)
			-- Sys_SetSynaGlobalDataStr(tChineseValentinesDay_Data["Global"][2][1],i-5,sUsername)
			-- Sys_SetSynaGlobalData(tChineseValentinesDay_Data["Global"][2][2],i-5,nUserId)
		-- else
			-- Sys_SetSynaGlobalData(tChineseValentinesDay_Data["Global"][1][1],i,nScore)
			-- Sys_SetSynaGlobalDataStr(tChineseValentinesDay_Data["Global"][1][1],i,sUsername)
			-- Sys_SetSynaGlobalData(tChineseValentinesDay_Data["Global"][1][2],i,nUserId)
		-- end
	-- end
-- end

-- 获得额外任务次数（相思泪）
function ChineseValentinesDay_Tears(nNpcId)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断物品】
	local nItemId = tChineseValentinesDay_Data["Itemtype"]["Tears"]
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum < 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	local nExtraEventType = tChineseValentinesDay_Data["Stc"]["Extra"]["EventType"]
	local nExtraDataType = tChineseValentinesDay_Data["Stc"]["Extra"]["DataType"]
	local sLog = string.format(tChineseValentinesDay_Data["Log"]["TearsAddTimes"],nItemId,nItemNum)
	tNpcGossip[nNpcId]["Text321"] = string.format(tChineseValentinesDay_Text[nNpcId]["Text321"],nItemNum)
	if Item_ChkMulItem(nItemId,nItemId,nItemNum) and Item_DelMulItem(nItemId,nItemId,nItemNum) then
		Task_AddStatistic(nExtraEventType,nExtraDataType,nItemNum,1)
		Sys_SaveActionFestivalLog(sLog)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	end
end

-- 获得额外任务次数（270天石）
function ChineseValentinesDay_Emoney(nNpcId)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断天石】
	local nNeedEMoney = tChineseValentinesDay_Data["EmoneyExchange"]
	if Get_UserEMoney() < nNeedEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-6")
end

-- 二次确认
function ChineseValentinesDay_Confirm(nNpcId)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断天石】
	local nNeedEMoney = tChineseValentinesDay_Data["EmoneyExchange"]
	if Get_UserEMoney() < nNeedEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	local nExtraEventType = tChineseValentinesDay_Data["Stc"]["Extra"]["EventType"]
	local nExtraDataType = tChineseValentinesDay_Data["Stc"]["Extra"]["DataType"]
	local sEmoneylog = tChineseValentinesDay_Data["Emoneylog"]["AddTimes"]
	if User_AddEMoney(-nNeedEMoney) then
		Task_AddStatistic(nExtraEventType,nExtraDataType,10,1)
		Sys_SaveEmoneyBuy(sEmoneylog)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	end
end

function ChineseValentinesDay_NewMission(nNpcId)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断银两】
	local nSilver = tChineseValentinesDay_Data["SilverExchange"]
	if not User_CanPutMoney2Bag(-nSilver) then
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	-- 刷新任务
	User_AddMoney(-nSilver)
	Sys_SaveActionFestivalLog(tChineseValentinesDay_Data["Log"]["NewMission"])
	Sys_SaveEmoneyBuy(tChineseValentinesDay_Data["Emoneylog"]["NewMission"])
	User_EffectAdd("self",tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"])
	
	-- stc(163,82) 记录每天刷新鲜花任务的次数
	local nFreshEventType = tChineseValentinesDay_Data["Stc"]["Fresh"]["EventType"]
	local nFreshDataType = tChineseValentinesDay_Data["Stc"]["Fresh"]["DataType"]
	Task_StcReset(nFreshEventType,nFreshDataType)
	-- +1
	Task_AddStatistic(nFreshEventType,nFreshDataType,1,1)
	Task_SetStcTimestamp(nFreshEventType,nFreshDataType,0)
	
	-- stc(163,84) 记录鲜花任务完成情况
	local nCompleteEventType = tChineseValentinesDay_Data["Stc"]["Complete"]["EventType"]
	local nCompleteDataType = tChineseValentinesDay_Data["Stc"]["Complete"]["DataType"]
	local nIndex = Get_UserStatisticValue(nCompleteEventType,nCompleteDataType)
	if Task_ChkStcValue(nFreshEventType,nFreshDataType,">=",11) then
		local nFlag,tAward = Probabil_RandomAward(tChineseValentinesDay_Probabil[nNpcId],3)
		nIndex = tAward[1]["tAward"][1]["Item_1"]
	elseif Task_ChkStcValue(nFreshEventType,nFreshDataType,">=",3) then
		local nFlag,tAward = Probabil_RandomAward(tChineseValentinesDay_Probabil[nNpcId],2)
		nIndex = tAward[1]["tAward"][1]["Item_1"]
	else
		local nFlag,tAward = Probabil_RandomAward(tChineseValentinesDay_Probabil[nNpcId],1)
		nIndex = tAward[1]["tAward"][1]["Item_1"]
	end
	Task_SetStatistic(nCompleteEventType,nCompleteDataType,nIndex,1)
	LinkNpcGossipFunc_New(nNpcId,"1-4")
end

-- 22024 天河星官 5734
function ChineseValentinesDay_Back()
	local nNewMapId = tChineseValentinesDay_Data["Location"]["River"]["MapId"]
	local nUserMapId = Get_UserMapId()
	
	-- 判断地图
	if nNewMapId ~= nUserMapId then
		return
	end
	
	local nMapId = tChineseValentinesDay_Data["Location"]["Market"]["MapId"]
	local nBoundX = tChineseValentinesDay_Data["Location"]["Market"]["PosX"]
	local nBoundY = tChineseValentinesDay_Data["Location"]["Market"]["PosY"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5,1)
	Sys_SaveActionFestivalLog(tChineseValentinesDay_Data["Log"]["OutOfTheMap"])
	User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["LeaveMap"])
end

-- 打开页面
function ChineseValentinesDay_Web(nNpcId,nIndex)
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	
	local sWebPage = tChineseValentinesDay_Data["Web"][nIndex]
	User_SendWebDialog(sWebPage)
end

-- 筋斗云
function ChineseValentinesDay_Cloud()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	
	local sText = tChineseValentinesDay_Text["Msg"]["Cloud"]
	local sFunc = "ChineseValentinesDay_FindNPC"
	Sys_MsgBox(sText,sFunc)
end

-- 寻路至尊宝
function ChineseValentinesDay_FindNPC()
	local nPosX = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosX"]
	local nPosY = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosY"]
	local nMapId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["MapId"]
	local nNpcId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 点亮星星
function ChineseValentinesDay_Light(nNpcId,nIndex)
	-- 【判断时间】
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-1")
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 【判断掩码】
	-- stc(165,54) 记录点亮星星的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["Light"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Light"]["DataType"]
	local sAlreadyLight = string.format(tChineseValentinesDay_Text["Msg"]["AlreadyLight"],nIndex)
	if Task_ChkStcValue(nEventType,nDataType,">=",nIndex) then
		Sys_MsgBox(sAlreadyLight)
		return
	end
	
	-- stc(163,30) 记录累计星月值
	local nPointsEventType = tChineseValentinesDay_Data["Stc"]["Points"]["EventType"]
	local nPointsDataType = tChineseValentinesDay_Data["Stc"]["Points"]["DataType"]
	local nNeedPoints = tChineseValentinesDay_Data["NeedPoints"][nIndex]
	local sNeedMore = string.format(tChineseValentinesDay_Text["Msg"]["NeedMore"],nIndex)
	if Task_ChkStcValue(nPointsEventType,nPointsDataType,"<",nNeedPoints) then
		Sys_MsgBox(sNeedMore)
		return
	end
	
	-- 【判断背包】
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesDay_Light[nIndex])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["NoSpace"])
		return
	end
	
	-------------------------------------- 给奖
	
	local sLight = string.format(tChineseValentinesDay_Text["Msg"]["LightUp"],nIndex)
	Task_SetStatistic(nEventType,nDataType,nIndex,1)
	Task_AddStatistic(nPointsEventType,nPointsDataType,-nNeedPoints,1)
	User_TalkChannel2005(sLight)
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Light[nIndex])
end
--------------------------------------物品逻辑-------------------------------------------
-- 上线获得背包信 3304156
function ChineseValentinesDay_BackpackLetter()
	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断物品
	local nItemId = tChineseValentinesDay_Data["Itemtype"]["BackpackLetter"]
	if Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断掩码
	local nEventType = tChineseValentinesDay_Data["Stc"]["BackpackLetter"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["BackpackLetter"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["BackpackLetter"]["Complete"]
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesDay_Reward["BackpackLetter"])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesDay_Text[nItemId]["NoSpace"])
		return
	end
	
	----------------------------------------- 获得物品
	
	Task_SetStatistic(nEventType,nDataType,nComplete,1)
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward["BackpackLetter"])
end

-- 使用背包信 3304156
function ChineseValentinesDay_UseBackpackLetter(nItemId)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
		return
	end
	
	-- 给奖 寻路
	local nPosX = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosX"]
	local nPosY = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosY"]
	local nMapId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["MapId"]
	local nNpcId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["NpcId"]
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId]["Use"])
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 鲜花兑换券
function ChineseValentinesDay_FlowersCoupon(nItemId)
	-- 判断物品
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum <= 0 then
		return
	end
	
	-- 判断时间
	-- local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
	-- tReward["RewardCultivation"]["Value"] = nItemNum
	-- tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	-- local sMsg = string.format(tChineseValentinesDay_Text["CouponTimeOut"],nItemNum)
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]) then
		-- RewardTemplate_UseItemAndMsg(tReward)
		-- User_TalkChannel2005(sMsg)
		-- return
	-- end
	
	-- 选项配置
	tItem[nItemId]["tOption1-1"] = {}
	for i,v in pairs(tChineseValentinesDay_Data["CouponOption"]) do
		if nItemNum >= v then
			table.insert(tItem[nItemId]["tOption1-1"],i)
		end
	end
	table.insert(tItem[nItemId]["tOption1-1"],6)
	LinkItemGossipFunc_New(nItemId,"1-1")
end

function ChineseValentinesDay_UseFlowersCoupon(nItemId,nIndex)
	-- 判断物品
	local nItemNum = Get_CountItemType(nItemId,0)
	if nItemNum <= 0 then
		return
	end
	
	-- 判断时间
	-- local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
	-- tReward["RewardCultivation"]["Value"] = nItemNum
	-- tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	-- local sMsg = string.format(tChineseValentinesDay_Text["CouponTimeOut"],nItemNum)
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["ValentinesDay2018"]["ActivityTime"]) then
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]) then
		-- RewardTemplate_UseItemAndMsg(tReward)
		-- User_TalkChannel2005(sMsg)
		-- return
	-- end
	
	-- 判断数量
	local nNeedItemNum = tChineseValentinesDay_Data["CouponOption"][nIndex]
	tItem[nItemId]["Text211"] = string.format(tChineseValentinesDay_Text[nItemId]["Text211"],tChineseValentinesDay_Text[nItemId]["Option" .. nIndex])
	if nItemNum < nNeedItemNum then
		LinkItemGossipFunc_New(nItemId,"2-1")
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesDay_Reward[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		LinkItemGossipFunc_New(nItemId,"2-2")
		return
	end
	
	-- 给奖
	local sItemName =  Get_ItemtypeName(nItemId)
	local sStr = string.format(tChineseValentinesDay_Text["UseCoupon"],nNeedItemNum,sItemName,tChineseValentinesDay_Text[nItemId]["Option" .. nIndex])
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId][nIndex])
end

-- 3304138 星光碎片
function ChineseValentinesDay_StarlightDebris(nItemId)
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId,0)
	local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
	local sLog = string.format(tChineseValentinesDay_Data["Log"]["Timeout"],nItemId,nItemNum)
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tReward)
		User_TalkChannel2005(tChineseValentinesDay_Text[nItemId]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 判断空间
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesDay_Reward[nItemId]["Use"])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesDay_Text[nItemId]["NoSpace"])
		return
	end
	
	-- 判断数量
	local nNeedItemNum = tChineseValentinesDay_Reward[nItemId]["Use"]["DeleteItem"][1]["ItemNum"]
	if not Item_ChkMulItem(nItemId,nItemId,nNeedItemNum) then
		Sys_MsgBox(tChineseValentinesDay_Text[nItemId]["NotEnough"])
		return
	end
	
	-- 给奖
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId]["Use"])
end

-- 花包
function ChineseValentinesDay_FlowersPack(nItemId)
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["Deadline"]) then
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["Deadline"]) then
		RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId][2])
		return
	end
	
	-- 判断背包 随机给奖不能配删除物品 花包不可叠加所以需要判断的背包空间要-1
	local nSpace = RewardTemplate_GetRandomSpace(tChineseValentinesDay_Reward[nItemId],1) - 1
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesDay_Text[nItemId]["NoSpace"])
		return
	end
	
	-- 给奖
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		RewardTemplate_NewRandom(tChineseValentinesDay_Reward[nItemId],1)
		User_EffectAdd("self",tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"])
	end
end

-- 3304154 忘情水
function ChineseValentinesDay_Water(nItemId)
	-- 判断物品
	-- 道具
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 外套
	local nCoatId = tChineseValentinesDay_Data["Itemtype"]["Coat"]
	if not Item_ChkMulItem(nCoatId,nCoatId,1,2,0,0,0) then
		Sys_MsgBox(tChineseValentinesDay_Text[nItemId]["Falure"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId])
end

-- 3304151 赤霄火云坐骑碎片
function ChineseValentinesDay_Gamble(nItemId,nIndex)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	-- 后
	local nItemNum = Get_CountItemType(nItemId,0)
	local nSingleValue = tChineseValentinesDay_Reward[nItemId]["TimeOut"]["RewardStrengthValue"]["Value"]
	local nTotalValue = nSingleValue * nItemNum
	local sMsg = string.format(tChineseValentinesDay_Text[nItemId]["TimeOut"],nTotalValue)
	local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
	tReward["RewardStrengthValue"]["Value"] = nTotalValue
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tReward)
		User_TalkChannel2005(sMsg)
		return
	end
	
	-- 赌博
	local nEventType = tChineseValentinesDay_Data["Stc"]["Gamble"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Gamble"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["Gamble"]["Complete"]
	local nStartNum = tChineseValentinesDay_Data["Random"]["MountCoat"]["StartNum"]
	local nEndNum = tChineseValentinesDay_Data["Random"]["MountCoat"]["EndNum"]
	if Sys_Random(nStartNum,nEndNum) then
		-- 最多成功5次
		if Task_ChkStcValue(nEventType,nDataType,"<",nComplete) then
			-- 判断背包
			local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesDay_Reward[nItemId][1])
			if not User_CheckLeftSpace(nSpace) then
				Sys_MsgBox(tChineseValentinesDay_Text[nItemId]["GambleNoSpace"])
				return
			end
			Task_AddStatistic(nEventType,nDataType,1,1)
			RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId][1])
			LinkItemGossipFunc_New(nItemId,"2-1")
			return
		end
	end
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId][2])
	if Task_ChkStcValue(nEventType,nDataType,">",0) then
		Task_AddStatistic(nEventType,nDataType,-1,1)
	end
	LinkItemGossipFunc_New(nItemId,"2-2")
end

-- 碎片消失 选项判断
function ChineseValentinesDay_Option(nItemId)
	if Item_ChkItem(nItemId) then
		LinkItemGossipFunc_New(nItemId,"1-1")
	end
end

-- 3304151 赤霄火云坐骑碎片
function ChineseValentinesDay_Compose(nItemId,nIndex)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	-- 后
	local nItemNum = Get_CountItemType(nItemId,0)
	local nSingleValue = tChineseValentinesDay_Reward[nItemId]["TimeOut"]["RewardStrengthValue"]["Value"]
	local nTotalValue = nSingleValue * nItemNum
	local sMsg = string.format(tChineseValentinesDay_Text[nItemId]["TimeOut"],nTotalValue)
	local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
	tReward["RewardStrengthValue"]["Value"] = nTotalValue
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tReward)
		User_TalkChannel2005(sMsg)
		return
	end
	
	-- 合成
	-- 判断物品
	if not Item_ChkMulItem(nItemId,nItemId,nIndex) then
		Sys_MsgBox(tChineseValentinesDay_Text[nItemId]["NotEnough"])
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesDay_Reward[nItemId][nIndex])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tChineseValentinesDay_Text[nItemId]["NoSpace"])
		return
	end
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId][nIndex])
end

-- 显著功勋礼包 3007108
function ChineseValentinesDay_Daily()
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[3007108])
end
--------------------------------------时间自检-------------------------------------------
-- 第二日凌晨，将昨日前五玩家ID存入相应动态码，清空记录今日前五玩家信息的动态码
function ChineseValentinesDay_RankInfo()
	-- 取数据
	local tRankUserData = {}
	local nIndex = 0
	for j = 1,2 do
		for i = 1,5 do
			local nGlobalId = tChineseValentinesDay_Data["Global"][j][2]
			local nUserId = Get_SysDynaGlobalData(nGlobalId,i)
			nIndex = nIndex + 1
			tRankUserData[nIndex] = nUserId
		end
	end
	
	-- 转存
	for i = 1,10 do
		local nUserId = tRankUserData[i]
		if i > 5 then
			Sys_SetSynaGlobalData(tChineseValentinesDay_Data["Global"][3][2],i-5,nUserId)
		else
			Sys_SetSynaGlobalData(tChineseValentinesDay_Data["Global"][3][1],i,nUserId)
		end
	end
	
	-- 清数据
	for j = 1,2 do
		for i = 1,2 do
			Sys_ResetAllSynaGlobalData(tChineseValentinesDay_Data["Global"][j][i])
			Sys_ResetAllSynaGlobalDataStr(tChineseValentinesDay_Data["Global"][j][i])
		end
	end
end

-- 邮件发奖
function ChineseValentinesDay_SendMail()
	-- 活动时间判断
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["MailTime"]) then
		return
	end
	
	-- 判断是否发奖
	local nGlobalId = tChineseValentinesDay_Data["Global"][3][1]
	local nData0 = Get_SysDynaGlobalData0(nGlobalId)
	if nData0 ~= 0 then
		return
	end
	
	-- 发奖：置开关，取数据，发邮件，打emoneylog
	Sys_SetSynaGlobalData0(nGlobalId,1)
	local tRankUserData = {}
	local nIndex = 0
	for j = 1,2 do
		for i = 1,5 do
			local nRankGlobalId = tChineseValentinesDay_Data["Global"][3][j]
			local nUserId = Get_SysDynaGlobalData(nRankGlobalId,i)
			nIndex = nIndex + 1
			tRankUserData[nIndex] = nUserId
		end
	end
	
	local tUserRankReward = CommonFunc_Copy(tRankUserData)
	for k,v in ipairs(tUserRankReward) do
		if v ~= nil and v ~= 0 then
			local sSender = tChineseValentinesDay_Text["SendMail"]["Rank"]["Sender"]
			local sTitle = tChineseValentinesDay_Text["SendMail"]["Rank"]["Title"]
			local sContent = ""
			local nExistDay = tChineseValentinesDay_Data["SendMail"]["Rank"]["ExistDay"]
			local nActionId = 0
			local sLog = ""
			if k <= 5 then
				sContent = string.format(tChineseValentinesDay_Text["SendMail"]["Rank"]["Content"][1],k)
				nActionId = tChineseValentinesDay_Data["SendMail"]["Rank"]["ActionId"][1]
				sLog = tChineseValentinesDay_Data["Log"]["Rank"][1]
			else
				sContent = string.format(tChineseValentinesDay_Text["SendMail"]["Rank"]["Content"][2],k)
				nActionId = tChineseValentinesDay_Data["SendMail"]["Rank"]["ActionId"][2]
				sLog = tChineseValentinesDay_Data["Log"]["Rank"][2]
			end
			Sys_SendMail(v,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
			Sys_SaveActionFestivalLog(sLog,v)
		end
	end
end

-- 自检限制清除
function ChineseValentinesDay_ResetLimit()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["MailTime"]) then
		return
	end
	
	local nGlobalId = tChineseValentinesDay_Data["Global"][3][1]
	Sys_SetSynaGlobalData0(nGlobalId,0)
end
--------------------------------------怪物掉落-------------------------------------------
function ChineseValentinesDay_MonsterDeath()
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
		return
	end
	
	-- 判断背包
	local nSpace = RewardTemplate_GetRewardSpace(tChineseValentinesDay_Reward["Monster"]["Area"])
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["NoSpace"])
		return
	end
	
	-- stc(900,00) 记录片区怪物杀怪数（每天）
	local nEventType = tChineseValentinesDay_Data["Stc"]["Monster"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Monster"]["DataType"]
	Task_StcReset(nEventType,nDataType)
	Task_AddStatistic(nEventType,nDataType,1,1)
	Task_SetStcTimestamp(nEventType,nDataType,0)
	
	-- 给奖
	local nHigh = tChineseValentinesDay_Data["Stc"]["Monster"]["High"]
	local nLow = tChineseValentinesDay_Data["Stc"]["Monster"]["Low"]
	local nIndex = 3
	if Task_ChkStcValue(nEventType,nDataType,">=",nHigh) then
		nIndex = 1
	elseif Task_ChkStcValue(nEventType,nDataType,">=",nLow) then
		nIndex = 2
	end
	local nStartNum = tChineseValentinesDay_Data["Drop"]["Area"][nIndex]
	local nEndNum = tChineseValentinesDay_Data["Drop"]["Area"]["Sum"]
	if Sys_Random(nStartNum,nEndNum) then
		RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward["Monster"]["Area"])
	end
end

function ChineseValentinesDay_NewMap(nMonsterId)
	local nUserId = Get_UserId()
	
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		ChineseValentinesDay_TimeOut(nUserId)
		return
	end
	-- 后
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		ChineseValentinesDay_TimeOut(nUserId)
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
		ChineseValentinesDay_TimeOut(nUserId)
		return
	end
	
	-- 判断时间
	-- stc(163,29) 记录每天进入天河之畔的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["ChgMap"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["ChgMap"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["ChgMap"]["Complete"]
	local nDelay = tChineseValentinesDay_Data["Stc"]["ChgMap"]["Delay"]
	local nTimeType = tChineseValentinesDay_Data["Stc"]["ChgMap"]["TimeType"] 
	Task_StcReset(nEventType,nDataType)
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		if Task_StcInterval(nEventType,nDataType,nDelay,nTimeType) then
			ChineseValentinesDay_TimeOut(nUserId)
			return
		end
	end
	
	-- 判断背包
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["NoSpace"])
		return
	end
	
	-- 给奖
	local nFlag,tAward = Probabil_RandomAward(tChineseValentinesDay_Probabil,nMonsterId)
	local nIndex = tAward[1]["tAward"][1]["Item_1"]
	if nIndex ~= 0 then
		RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward["Monster"][nMonsterId][nIndex])
	end
end
--------------------------------------外套称号-------------------------------------------
function ChineseValentinesDay_CheckItemToCoat(nUserId)
	-- 低级称号
	local nGeneralCoatType = 1
	local nGeneralTitleId = tChineseValentinesDay_Data["TitleId"]["General"]
	local nCount = 0
	-- 四件外套有任意一件就获得低级称号
	for i,v in pairs(tChineseValentinesDay_Data["GeneralTitleCoatId"]) do
		if User_ChkStorageCoat(nGeneralCoatType,v,nUserId) then
			if not User_CheckTitle(nGeneralTitleId,nGeneralTitleId,nUserId) then
				RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nGeneralTitleId],nUserId)
				break
			end
		else
			nCount = nCount + 1
		end
	end
	-- 这四件外套都没有就删除低级称号
	if nCount == 2 then
		if User_CheckTitle(nGeneralTitleId,nGeneralTitleId,nUserId) then
			User_DeleteTitle(nGeneralTitleId,nGeneralTitleId,nUserId)
		end
	end
	
	-- 高级称号
	-- 集体一件光效外套两件坐骑外套就获得高级称号
	local nUserSex = Get_UserSex(nUserId)
	local nSpecialTitleId = tChineseValentinesDay_Data["TitleId"]["Special"][nUserSex]
	local nIndex = 0
	for i,v in pairs(tChineseValentinesDay_Data["SpecialTitleCoatId"]) do
		if not User_ChkStorageCoat(v[2],v[1],nUserId) then
			for j,k in pairs(tChineseValentinesDay_Data["TitleId"]["Special"]) do
				if User_CheckTitle(k,k,nUserId) then
					User_DeleteTitle(k,k,nUserId)
				end
			end
		else
			nIndex = nIndex + 1
		end
	end
	if nIndex == 3 then
		if not User_CheckTitle(nSpecialTitleId,nSpecialTitleId,nUserId) then
			RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nSpecialTitleId],nUserId)
		end
	end
end
--------------------------------------npc配置-------------------------------------------
-- 21997 至尊宝 5692
tNpcFace[5692] = 62

tNpcGossip[21997] = tNpcGossip[21997] or DefaultNpc:new{}
tNpcGossip[21997]["OptionHidden"] = 1
tNpcGossip[21997]["DialogueText"] = tChineseValentinesDay_Text[21997]

-- 活动前
tNpcGossip[21997]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[21997]["tOption1-1"] = {1}
tNpcGossip[21997]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"])
end

-- 活动后
tNpcGossip[21997]["Text1-2"] = {111,112,123}
tNpcGossip[21997]["tOption1-2"] = {2}
tNpcGossip[21997]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"])
end

-- 活动中
-- 等级不满足条件
tNpcGossip[21997]["Text1-3"] = {111,112,133,134,135,136,137,138,139}
tNpcGossip[21997]["tOption1-3"] = {3}
tNpcGossip[21997]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end
-- 等级满足条件
tNpcGossip[21997]["Text1-4"] = {111,112,141,142,143,144,145,146,147,148,149,121,122}
tNpcGossip[21997]["tOption1-4"] = {5,4,7,8,9}
tNpcGossip[21997]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
			-- stc(163,28) 记录是否是首次点击至尊宝主对白
			-- 对白
			local nEventType = tChineseValentinesDay_Data["Stc"]["Click"]["EventType"]
			local nDataType = tChineseValentinesDay_Data["Stc"]["Click"]["DataType"]
			local nComplete = tChineseValentinesDay_Data["Stc"]["Click"]["Complete"]
			if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
				tNpcGossip[21997]["Text1-4"] = {111,112,149,121,122,147,148}
				tNpcGossip[21997]["tOption1-4"] = {5,4,7,8}
			else
				tNpcGossip[21997]["Text1-4"] = {111,112,141,142,143,144,145,146,147,148}
				tNpcGossip[21997]["tOption1-4"] = {9}
			end
			Task_SetStatistic(nEventType,nDataType,nComplete,1)
			
			return true
		end
	end
	
	return false
end
tNpcGossip[21997]["OptionPoint4"] = "2-1"
tNpcGossip[21997]["OptionFunc5"] = "ChineseValentinesDay_ChgMap</N>21997"
tNpcGossip[21997]["OptionPoint7"] = "2-6"
-- tNpcGossip[21997]["OptionFunc7"] = "ChineseValentinesDay_Web</N>21997</N>1"
tNpcGossip[21997]["OptionFunc8"] = "ChineseValentinesDay_Web</N>21997</N>2"
-- tNpcGossip[21997]["OptionPoint8"] = "2-5"
tNpcGossip[21997]["OptionPoint9"] = "1-4"

-- 上交星光月华
tNpcGossip[21997]["Text2-1"] = {211,212,213,214,215,216,217,218,219,220,212,221,222}
tNpcGossip[21997]["tOption2-1"] = {211,213,212}
tNpcGossip[21997]["ChkFunc2-1"] = function()
	-- 对白
	-- stc(163,78) 记录每天上交月华次数
	local nMEventType = tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["EventType"]
	local nMDataType = tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["DataType"]
	local nMComplete = tChineseValentinesDay_Data["Stc"]["SubmitMoonlight"]["Complete"]
	Task_StcReset(nMEventType,nMDataType)
	local nMTimes = Get_UserStatisticValue(nMEventType,nMDataType)
	if nMTimes >= nMComplete then
		tNpcGossip[21997]["Text220"] = string.format(tChineseValentinesDay_Text[21997]["Text220"],0)
	else
		tNpcGossip[21997]["Text220"] = string.format(tChineseValentinesDay_Text[21997]["Text220"],nMComplete-nMTimes)
	end
	
	-- 选项
	-- stc(163,31) 记录每天上交星光次数
	local nEventType = tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["SubmitStarlight"]["Complete"]
	Task_StcReset(nEventType,nDataType)
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		tNpcGossip[21997]["tOption2-1"] = {213,212}
	else
		tNpcGossip[21997]["Option211"] = string.format(tChineseValentinesDay_Text[21997]["Option211"],Get_UserStatisticValue(nEventType,nDataType))
		tNpcGossip[21997]["tOption2-1"] = {211,213,212}
	end
	
	return true
end
tNpcGossip[21997]["OptionFunc211"] = "ChineseValentinesDay_SubmitStarlight</N>21997"
tNpcGossip[21997]["OptionFunc212"] = "ChineseValentinesDay_SubmitMoonlight</N>21997</N>0"
tNpcGossip[21997]["OptionFunc213"] = "ChineseValentinesDay_SubmitMoonlight</N>21997</N>1"

-- 了解详情
tNpcGossip[21997]["Text2-5"] = {251,252,253,254,255,256,257,258,252}
tNpcGossip[21997]["tOption2-5"] = {251}

-- 前往天河之畔
tNpcGossip[21997]["Text2-3"] = {231,232,233}
tNpcGossip[21997]["tOption2-3"] = {231}
tNpcGossip[21997]["OptionFunc231"] = "ChineseValentinesDay_ChgMap</N>21997"
-- 30分钟后点击
tNpcGossip[21997]["Text2-4"] = {241}
tNpcGossip[21997]["tOption2-4"] = {241}
-- 接 Option211 上交星光（剩%d次）
-- 失败，次数已用完
tNpcGossip[21997]["Text3-1"] = {311}
tNpcGossip[21997]["tOption3-1"] = {311}
-- 失败，没有星光
tNpcGossip[21997]["Text3-2"] = {321}
tNpcGossip[21997]["tOption3-2"] = {321}
-- 失败，背包空间不足
tNpcGossip[21997]["Text3-3"] = {331}
tNpcGossip[21997]["tOption3-3"] = {331}
-- 接 Option212 上交月华
-- 失败，没有月华
tNpcGossip[21997]["Text3-4"] = {341}
tNpcGossip[21997]["tOption3-4"] = {341}
-- 失败，背包空间不足
tNpcGossip[21997]["Text3-5"] = {351}
tNpcGossip[21997]["tOption3-5"] = {351}
-- 新增对白
tNpcGossip[21997]["Text2-6"] = {261,262,263,264,265,266,267,268,269,270,262,271}
tNpcGossip[21997]["tOption2-6"] = {261,262}
tNpcGossip[21997]["ChkFunc2-6"] = function()
	-- 对白
	-- stc(165,54) 记录点亮星星的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["Light"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Light"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["Light"]["Complete"]
	local nStar = Get_UserStatisticValue(nEventType,nDataType)
	-- stc(163,30) 记录累计星月值
	local nPointsEventType = tChineseValentinesDay_Data["Stc"]["Points"]["EventType"]
	local nPointsDataType = tChineseValentinesDay_Data["Stc"]["Points"]["DataType"]
	local nValue = Get_UserStatisticValue(nPointsEventType,nPointsDataType)
	tNpcGossip[21997]["Text271"] = string.format(tChineseValentinesDay_Text[21997]["Text271"],nStar,nValue)
	
	-- 选项
	local nNext = nStar + 1
	if nStar >= nComplete then
		tNpcGossip[21997]["Option261"] = string.format(tChineseValentinesDay_Text[21997]["Option261"],nStar)
		tNpcGossip[21997]["tOption2-6"] = {262}
		tNpcGossip[21997]["OptionFunc261"] = "ChineseValentinesDay_Light</N>21997</N>" .. nStar
		
	else
		tNpcGossip[21997]["Option261"] = string.format(tChineseValentinesDay_Text[21997]["Option261"],nNext)
		tNpcGossip[21997]["tOption2-6"] = {261,262}
		tNpcGossip[21997]["OptionFunc261"] = "ChineseValentinesDay_Light</N>21997</N>" .. nNext
	end
	
	return true
end
tNpcGossip[21997]["OptionChkFunc261"] = function()
	-- stc(165,54) 记录点亮星星的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["Light"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Light"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["Light"]["Complete"]
	
	if Task_ChkStcValue(nEventType,nDataType,">=",nComplete) then
		return false
	end
	
	return true
end
tNpcGossip[21997]["OptionPoint262"] = "1-4"

-- 21998 青霞仙子 5693
tNpcFace[5693] = 112

tNpcGossip[21998] = tNpcGossip[21998] or DefaultNpc:new{}
tNpcGossip[21998]["OptionHidden"] = 1
tNpcGossip[21998]["DialogueText"] = tChineseValentinesDay_Text[21998]

-- 活动前
tNpcGossip[21998]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[21998]["tOption1-1"] = {1}
tNpcGossip[21998]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"])
end

-- 活动后
tNpcGossip[21998]["Text1-2"] = {111,112,123,124}
tNpcGossip[21998]["tOption1-2"] = {2}
tNpcGossip[21998]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"])
end

-- 活动中
-- 等级不满足条件
tNpcGossip[21998]["Text1-3"] = {111,112,133,134,135,136,137}
tNpcGossip[21998]["tOption1-3"] = {3}
tNpcGossip[21998]["ChkFunc1-3"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		if not User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
			return true
		end
	end
	
	return false
end
-- 等级满足条件
tNpcGossip[21998]["Text1-4"] = {111,112,131,132,135,137,141,1411,1412,143,144,145,146,147,148,149,150,151,152,153,154}
-- tNpcGossip[21998]["tOption1-4"] = {4,5,6,7,8,9}
tNpcGossip[21998]["tOption1-4"] = {4,5,6,8,9}
tNpcGossip[21998]["ChkFunc1-4"] = function()
	if Sys_ChkFullTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		if User_JudgeLevelAndMetempsychosis(tChineseValentinesDay_Data["Level"],tChineseValentinesDay_Data["Metempsychosis"]) then
			-- stc(163,95) 记录是否是首次点击青霞仙子选项
			local nClickEventType = tChineseValentinesDay_Data["Stc"]["OldMan"]["EventType"]
			local nClickDataType = tChineseValentinesDay_Data["Stc"]["OldMan"]["DataType"]
			local nClickComplete = tChineseValentinesDay_Data["Stc"]["OldMan"]["Complete"]
			if Task_ChkStcValue(nClickEventType,nClickDataType,"<",nClickComplete) then
				Task_SetStatistic(nClickEventType,nClickDataType,nClickComplete,1)
				tNpcGossip[21998]["Text1-4"] = {111,112,131,132,135,137}
				tNpcGossip[21998]["tOption1-4"] = {8}
			else
				-- stc(163,82) 记录每天刷新鲜花任务的次数
				local nTotalEventType = tChineseValentinesDay_Data["Stc"]["Fresh"]["EventType"]
				local nTotalDataType = tChineseValentinesDay_Data["Stc"]["Fresh"]["DataType"]
				Task_StcReset(nTotalEventType,nTotalDataType)
				local nFreshTimes = Get_UserStatisticValue(nTotalEventType,nTotalDataType)
				tNpcGossip[21998]["Text154"] = string.format(tChineseValentinesDay_Text[21998]["Text154"],nFreshTimes)
				
				-- stc(163,80) 记录鲜花任务每天免费完成次数
				local nFreeEventType = tChineseValentinesDay_Data["Stc"]["Free"]["EventType"]
				local nFreeDataType = tChineseValentinesDay_Data["Stc"]["Free"]["DataType"]
				local nFreeComplete = tChineseValentinesDay_Data["Stc"]["Free"]["Complete"]
				Task_StcReset(nFreeEventType,nFreeDataType)
				local nFreeCompleteTimes = Get_UserStatisticValue(nFreeEventType,nFreeDataType)
				local nRestFreeTimes = nFreeComplete - nFreeCompleteTimes
				tNpcGossip[21998]["Text152"] = string.format(tChineseValentinesDay_Text[21998]["Text152"],nRestFreeTimes)
				
				-- stc(163,81) 记录鲜花任务额外完成次数
				local nExtraEventType = tChineseValentinesDay_Data["Stc"]["Extra"]["EventType"]
				local nExtraDataType = tChineseValentinesDay_Data["Stc"]["Extra"]["DataType"]
				local nExtra = Get_UserStatisticValue(nExtraEventType,nExtraDataType)
				tNpcGossip[21998]["Text153"] = string.format(tChineseValentinesDay_Text[21998]["Text153"],nExtra)
				
				-- stc(163,84) 记录鲜花任务完成情况
				local nCompleteEventType = tChineseValentinesDay_Data["Stc"]["Complete"]["EventType"]
				local nCompleteDataType = tChineseValentinesDay_Data["Stc"]["Complete"]["DataType"]
				local nTotalTimes = nFreshTimes + nFreeCompleteTimes
				-- 未完成
				local nIndex = 0
				if Task_ChkStcValue(nCompleteEventType,nCompleteDataType,">",0) then
					nIndex = Get_UserStatisticValue(nCompleteEventType,nCompleteDataType)
				-- 已完成
				elseif nTotalTimes >= 11 then
					local nFlag,tAward = Probabil_RandomAward(tChineseValentinesDay_Probabil[21998],3)
					nIndex = tAward[1]["tAward"][1]["Item_1"]
					Task_SetStatistic(nCompleteEventType,nCompleteDataType,nIndex,1)
				elseif nTotalTimes >= 3 then
					local nFlag,tAward = Probabil_RandomAward(tChineseValentinesDay_Probabil[21998],2)
					nIndex = tAward[1]["tAward"][1]["Item_1"]
					Task_SetStatistic(nCompleteEventType,nCompleteDataType,nIndex,1)
				else
					local nFlag,tAward = Probabil_RandomAward(tChineseValentinesDay_Probabil[21998],1)
					nIndex = tAward[1]["tAward"][1]["Item_1"]
					Task_SetStatistic(nCompleteEventType,nCompleteDataType,nIndex,1)
				end
				
				-- 对白配置
				if nIndex ~= 22 then
					local nNum = CommonFunc_GetItemNum(tChineseValentinesDay_Reward[21998][nIndex]["RewardItem"][1]["Attr"])
					tNpcGossip[21998]["Text145"] = string.format(tChineseValentinesDay_Text[21998]["Text145"],nNum)
					tNpcGossip[21998]["Text143"] = string.format(tChineseValentinesDay_Text[21998]["Text143"],tChineseValentinesDay_Text[21998][nIndex])
					tNpcGossip[21998]["Text1-4"] = {1411,1412,141,143,144,145,146,147,141,154,152,153}
					-- tNpcGossip[21998]["tOption1-4"] = {4,5,6,7}
					tNpcGossip[21998]["tOption1-4"] = {4,5,6}
				else
					tNpcGossip[21998]["Text1-4"] = {148,141,149,150,151,141,154,152,153}
					-- tNpcGossip[21998]["tOption1-4"] = {9,5,6,7}
					tNpcGossip[21998]["tOption1-4"] = {9,5,6}
				end
			end
			return true
		end
	end
	
	return false
end
tNpcGossip[21998]["OptionFunc4"] = "ChineseValentinesDay_FlowersMission</N>21998"
tNpcGossip[21998]["OptionFunc5"] = "ChineseValentinesDay_NewMission</N>21998"
tNpcGossip[21998]["OptionFunc6"] = "ChineseValentinesDay_Tears</N>21998</N>1"
-- tNpcGossip[21998]["OptionPoint7"] = "2-8"
tNpcGossip[21998]["OptionPoint8"] = "1-4"
tNpcGossip[21998]["OptionFunc9"] = "ChineseValentinesDay_FlowersMission</N>21998"
-- 接 Option4 完成任务
-- 成功
tNpcGossip[21998]["Text2-9"] = {2111}
tNpcGossip[21998]["tOption2-9"] = {2111}
tNpcGossip[21998]["OptionPoint2111"] = "1-4"
-- 失败，没有道具
tNpcGossip[21998]["Text2-1"] = {211,212}
tNpcGossip[21998]["tOption2-1"] = {211}
tNpcGossip[21998]["OptionPoint211"] = "1-4"
-- 失败，背包空间不足
tNpcGossip[21998]["Text2-2"] = {221}
tNpcGossip[21998]["tOption2-2"] = {221}
-- 失败，次数已用完
tNpcGossip[21998]["Text2-3"] = {231}
tNpcGossip[21998]["tOption2-3"] = {231,232,233}
tNpcGossip[21998]["OptionFunc231"] = "ChineseValentinesDay_Tears</N>21998"
tNpcGossip[21998]["OptionFunc232"] = "ChineseValentinesDay_Emoney</N>21998"
-- 接 Option231 获得额外任务次数（相思泪）
-- 失败，没有相思泪
tNpcGossip[21998]["Text2-4"] = {241,242,243}
tNpcGossip[21998]["tOption2-4"] = {241,242}
tNpcGossip[21998]["OptionFunc241"] = "ChineseValentinesDay_Emoney</N>21998"
-- 成功
tNpcGossip[21998]["Text3-2"] = {321}
tNpcGossip[21998]["tOption3-2"] = {321}
tNpcGossip[21998]["OptionPoint321"] = "1-4"
-- 接 Option232 获得额外任务次数（270天石）
-- 失败，天石不足
tNpcGossip[21998]["Text2-5"] = {251}
tNpcGossip[21998]["tOption2-5"] = {251}
-- 成功，二次确认
tNpcGossip[21998]["Text2-6"] = {261}
tNpcGossip[21998]["tOption2-6"] = {261,262}
tNpcGossip[21998]["OptionFunc261"] = "ChineseValentinesDay_Confirm</N>21998"
-- 接 Option5 刷新任务（3万银两）
-- 失败，银两不足
tNpcGossip[21998]["Text2-7"] = {271}
tNpcGossip[21998]["tOption2-7"] = {271}
-- 成功
tNpcGossip[21998]["Text3-1"] = {311}
tNpcGossip[21998]["tOption3-1"] = {311}
tNpcGossip[21998]["OptionPoint311"] = "1-4"
-- 接 Option7 每日任务完成排行榜
-- tNpcGossip[21998]["Text2-8"] = {281,282,283,2811,2812,2813,2814,2815,2816,2817,2818,2819,2820,282,284,285,286}
-- tNpcGossip[21998]["tOption2-8"] = {311}
-- tNpcGossip[21998]["ChkFunc2-8"] = function()
	-- 获得前5名玩家信息
	-- local tRankUserData = {}
	-- local nIndex = 0
	-- for j = 1,2 do
		-- for k = 1,5 do
			-- local nGlobalId = tChineseValentinesDay_Data["Global"][j][1]
			-- local nScore = Get_SysDynaGlobalData(nGlobalId,k)
			-- local sUsername = Get_SysDynaGlobalDataStr(nGlobalId,k)
			-- nIndex = nIndex + 1
			-- tRankUserData[nIndex] = {}
			-- tRankUserData[nIndex]["Score"] = nScore == "" and 0 or nScore
			-- tRankUserData[nIndex]["Username"] = sUsername == "" and "null" or sUsername
		-- end
	-- end
	
	-- nIndex = 0
	-- local nNowUserId = Get_UserId()
	-- local nFlag = 0
	-- for j = 1,2 do
		-- for k = 1,5 do
			-- local nGlobalId = tChineseValentinesDay_Data["Global"][j][2]
			-- local nUserId = Get_SysDynaGlobalData(nGlobalId,k)
			-- if nUserId == nNowUserId then
				-- nFlag = k
			-- end
			-- nIndex = nIndex + 1
			-- tRankUserData[nIndex]["UserId"] = nUserId
		-- end
	-- end
	
	-- for j = 1,10 do
		-- local sText = tChineseValentinesDay_Data["Rank"][j]
		-- local nScore = tRankUserData[j]["Score"]
		-- local sUsername = tRankUserData[j]["Username"]
		-- if nScore == nil or nScore == 0 then
			-- nScore = 0
			-- sUsername = tChineseValentinesDay_Text[21998]["NoOne"]
		-- end
		-- local sLeft = string.format(tChineseValentinesDay_Text[21998]["Rank"],j)
		-- local sMiddle = string.format(tChineseValentinesDay_Text[21998]["Score"],nScore)
		-- local sRight = string.format(tChineseValentinesDay_Text[21998]["Name"],sUsername)
		-- local nLeft = tChineseValentinesDay_Data["Left"]
		-- local nMiddle = tChineseValentinesDay_Data["Middle"]
		-- local nRight = tChineseValentinesDay_Data["Right"]
		-- tNpcGossip[21998][sText] = Sys_Alignment(sLeft,nLeft,sMiddle,nMiddle,sRight,nRight)
	-- end
	
	-- stc(163,85) 记录每天完成鲜花任务的次数
	-- local nEventType = tChineseValentinesDay_Data["Stc"]["Rank"]["EventType"]
	-- local nDataType = tChineseValentinesDay_Data["Stc"]["Rank"]["DataType"]
	-- Task_StcReset(nEventType,nDataType)
	-- local nValue = Get_UserStatisticValue(nEventType,nDataType)
	-- if nFlag ~= 0 then
		-- tNpcGossip[21998]["Text284"] = string.format(tChineseValentinesDay_Text[21998]["InTheRank"],nValue,nFlag)
	-- else
		-- tNpcGossip[21998]["Text284"] = string.format(tChineseValentinesDay_Text[21998]["NotInTheRank"],nValue)
	-- end
	
	-- return true
-- end

-- 22024 天河星官 112
tNpcFace[5734] = 27

tNpcGossip[22024] = tNpcGossip[22024] or DefaultNpc:new{}
tNpcGossip[22024]["OptionHidden"] = 1
tNpcGossip[22024]["DialogueText"] = tChineseValentinesDay_Text[22024]

tNpcGossip[22024]["Text1-1"] = {111,112,113}
tNpcGossip[22024]["tOption1-1"] = {1,2}
tNpcGossip[22024]["OptionFunc1"] = "ChineseValentinesDay_Back"
--------------------------------------物品配置-------------------------------------------
-- 背包信 3304156
tItemFace[3304156] = 778
tItem[3304156] = tItem[3304156] or {}
tItem[3304156]["DialogueText"] = tChineseValentinesDay_Text[3304156]

tItem[3304156]["Text1-1"] = {111,112,113,114}
tItem[3304156]["tOption1-1"] = {1}
tItem[3304156]["OptionFunc1"] = "ChineseValentinesDay_UseBackpackLetter</N>3304156"


-- 3304134 玫瑰兑换券
tItemFace[3304134] = 779
tItem[3304134] = tItem[3304134] or {}
tItem[3304134]["Function"] = function(nItemId,sItemName)
	-- 情人节活动
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]) then
		ValentinesDay2019NPC_UseFlowerTicket(nItemId)
		return
	end
	
	ChineseValentinesDay_FlowersCoupon(nItemId)
end
tItem[3304134]["DialogueText"] = tChineseValentinesDay_Text[3304134]
tItem[3304134]["Text1-1"] = {111}
tItem[3304134]["tOption1-1"] = {1,2,3,4,5,6}
tItem[3304134]["OptionFunc1"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304134</N>1"
tItem[3304134]["OptionFunc2"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304134</N>2"
tItem[3304134]["OptionFunc3"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304134</N>3"
tItem[3304134]["OptionFunc4"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304134</N>4"
tItem[3304134]["OptionFunc5"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304134</N>5"
-- 失败，数量不足
tItem[3304134]["Text2-1"] = {211}
tItem[3304134]["tOption2-1"] = {7}
-- 失败，背包空间不足
tItem[3304134]["Text2-2"] = {221}
tItem[3304134]["tOption2-2"] = {8}

-------------------------------情人节
tItem[3304134]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113,5114}
-- tItem[3304134]["tOption5-1"] = {511,512,513,514}
tItem[3304134]["tOption5-1"] = {511,512,513}

tItem[3304134]["OptionFunc511"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304134</N>1"
tItem[3304134]["OptionFunc512"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304134</N>5"
tItem[3304134]["OptionChkFunc512"] = function()
	return Item_ChkMulItem(3304134,3304134,5)
end	
tItem[3304134]["OptionFunc513"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304134"
tItem[3304134]["OptionFunc514"] = "ValentinesDay2019NPC_SubmitAllGiftConfirm</N>3304134"

tItem[3304134]["Text3-1"] = {311}
tItem[3304134]["tOption3-1"] = {311}

tItem[3304134]["Text4-1"] = {411}
tItem[3304134]["tOption4-1"] = {411,412}
tItem[3304134]["OptionFunc411"] = "ValentinesDay2019NPC_SubmitAllGift</N>3304134"
-------------------------------


-- 3304135 兰花兑换券
tItemFace[3304135] = 780
tItem[3304135] = tItem[3304135] or {}
tItem[3304135]["Function"] = function(nItemId,sItemName)
	-- 情人节活动
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]) then
		ValentinesDay2019NPC_UseFlowerTicket(nItemId)
		return
	end
	
	ChineseValentinesDay_FlowersCoupon(nItemId)
end
tItem[3304135]["DialogueText"] = tChineseValentinesDay_Text[3304135]
tItem[3304135]["Text1-1"] = {111}
tItem[3304135]["tOption1-1"] = {1,2,3,4,5,6}
tItem[3304135]["OptionFunc1"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304135</N>1"
tItem[3304135]["OptionFunc2"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304135</N>2"
tItem[3304135]["OptionFunc3"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304135</N>3"
tItem[3304135]["OptionFunc4"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304135</N>4"
tItem[3304135]["OptionFunc5"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304135</N>5"
-- 失败，数量不足
tItem[3304135]["Text2-1"] = {211}
tItem[3304135]["tOption2-1"] = {7}
-- 失败，背包空间不足
tItem[3304135]["Text2-2"] = {221}
tItem[3304135]["tOption2-2"] = {8}

-------------------------------情人节
tItem[3304135]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113,5114}
-- tItem[3304135]["tOption5-1"] = {511,512,513,514}
tItem[3304135]["tOption5-1"] = {511,512,513}

tItem[3304135]["OptionFunc511"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304135</N>1"
tItem[3304135]["OptionFunc512"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304135</N>5"
tItem[3304135]["OptionChkFunc512"] = function()
	return Item_ChkMulItem(3304135,3304135,5)
end	
tItem[3304135]["OptionFunc513"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304135"
tItem[3304135]["OptionFunc514"] = "ValentinesDay2019NPC_SubmitAllGiftConfirm</N>3304135"

tItem[3304135]["Text3-1"] = {311}
tItem[3304135]["tOption3-1"] = {311}

tItem[3304135]["Text4-1"] = {411}
tItem[3304135]["tOption4-1"] = {411,412}
tItem[3304135]["OptionFunc411"] = "ValentinesDay2019NPC_SubmitAllGift</N>3304135"
-------------------------------

-- 3304136 百合兑换券
tItemFace[3304136] = 781
tItem[3304136] = tItem[3304136] or {}
tItem[3304136]["Function"] = function(nItemId,sItemName)
	-- 情人节活动
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]) then
		ValentinesDay2019NPC_UseFlowerTicket(nItemId)
		return
	end
	
	ChineseValentinesDay_FlowersCoupon(nItemId)
end
tItem[3304136]["DialogueText"] = tChineseValentinesDay_Text[3304136]
tItem[3304136]["Text1-1"] = {111}
tItem[3304136]["tOption1-1"] = {1,2,3,4,5,6}
tItem[3304136]["OptionFunc1"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304136</N>1"
tItem[3304136]["OptionFunc2"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304136</N>2"
tItem[3304136]["OptionFunc3"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304136</N>3"
tItem[3304136]["OptionFunc4"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304136</N>4"
tItem[3304136]["OptionFunc5"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304136</N>5"
-- 失败，数量不足
tItem[3304136]["Text2-1"] = {211}
tItem[3304136]["tOption2-1"] = {7}
-- 失败，背包空间不足
tItem[3304136]["Text2-2"] = {221}
tItem[3304136]["tOption2-2"] = {8}

-------------------------------情人节
tItem[3304136]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113,5114}
-- tItem[3304136]["tOption5-1"] = {511,512,513,514}
tItem[3304136]["tOption5-1"] = {511,512,513}

tItem[3304136]["OptionFunc511"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304136</N>1"
tItem[3304136]["OptionFunc512"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304136</N>5"
tItem[3304136]["OptionChkFunc512"] = function()
	return Item_ChkMulItem(3304136,3304136,5)
end	
tItem[3304136]["OptionFunc513"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304136"
tItem[3304136]["OptionFunc514"] = "ValentinesDay2019NPC_SubmitAllGiftConfirm</N>3304136"

tItem[3304136]["Text3-1"] = {311}
tItem[3304136]["tOption3-1"] = {311}

tItem[3304136]["Text4-1"] = {411}
tItem[3304136]["tOption4-1"] = {411,412}
tItem[3304136]["OptionFunc411"] = "ValentinesDay2019NPC_SubmitAllGift</N>3304136"
-------------------------------


-- 3304137 郁金香兑换券
tItemFace[3304137] = 782
tItem[3304137] = tItem[3304137] or {}
tItem[3304137]["Function"] = function(nItemId,sItemName)
	-- 情人节活动
	if Sys_ChkFullTime(tActivityTime["ValentinesDay2019NPC"]["ActivityTime"]) then
		ValentinesDay2019NPC_UseFlowerTicket(nItemId)
		return
	end
	
	ChineseValentinesDay_FlowersCoupon(nItemId)
end
tItem[3304137]["DialogueText"] = tChineseValentinesDay_Text[3304137]
tItem[3304137]["Text1-1"] = {111}
tItem[3304137]["tOption1-1"] = {1,2,3,4,5,6}
tItem[3304137]["OptionFunc1"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304137</N>1"
tItem[3304137]["OptionFunc2"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304137</N>2"
tItem[3304137]["OptionFunc3"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304137</N>3"
tItem[3304137]["OptionFunc4"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304137</N>4"
tItem[3304137]["OptionFunc5"] = "ChineseValentinesDay_UseFlowersCoupon</N>3304137</N>5"
-- 失败，数量不足
tItem[3304137]["Text2-1"] = {211}
tItem[3304137]["tOption2-1"] = {7}
-- 失败，背包空间不足
tItem[3304137]["Text2-2"] = {221}
tItem[3304137]["tOption2-2"] = {8}

-------------------------------情人节
tItem[3304137]["Text5-1"] = {511,512,513,514,515,516,517,518,519,5110,5111,5112,5113,5114}
-- tItem[3304137]["tOption5-1"] = {511,512,513,514}
tItem[3304137]["tOption5-1"] = {511,512,513}

tItem[3304137]["OptionFunc511"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304137</N>1"
tItem[3304137]["OptionFunc512"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304137</N>5"
tItem[3304137]["OptionChkFunc512"] = function()
	return Item_ChkMulItem(3304137,3304137,5)
end	
tItem[3304137]["OptionFunc513"] = "ValentinesDay2019NPC_SubmitSingleItem</N>3304137"
tItem[3304137]["OptionFunc514"] = "ValentinesDay2019NPC_SubmitAllGiftConfirm</N>3304137"

tItem[3304137]["Text3-1"] = {311}
tItem[3304137]["tOption3-1"] = {311}

tItem[3304137]["Text4-1"] = {411}
tItem[3304137]["tOption4-1"] = {411,412}
tItem[3304137]["OptionFunc411"] = "ValentinesDay2019NPC_SubmitAllGift</N>3304137"
-------------------------------

-- 3304138 星光碎片
tItem[3304138] = tItem[3304138] or {}
tItem[3304138]["Function"] = function(nItemId,sItemName)
	ChineseValentinesDay_StarlightDebris(nItemId)
end

-- 3304139 星光
tItem[3304139] = tItem[3304139] or {}
tItem[3304139]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesDay_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesDay_Text[nItemId]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- 寻路
	local nPosX = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosX"]
	local nPosY = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosY"]
	local nMapId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["MapId"]
	local nNpcId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 3304140 月华
tItem[3304140] = tItem[3304140] or {}
tItem[3304140]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId,0)
	local nSingleValue = tChineseValentinesDay_Reward[nItemId]["TimeOut"]["RewardStrengthValue"]["Value"]
	local nTotalValue = nSingleValue * nItemNum
	local sMsg = string.format(tChineseValentinesDay_Text[nItemId]["TimeOut"],nTotalValue)
	local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
	tReward["RewardStrengthValue"]["Value"] = nTotalValue
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tReward)
		User_TalkChannel2005(sMsg)
		return
	end
	
	-- 寻路
	local nPosX = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosX"]
	local nPosY = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["PosY"]
	local nMapId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["MapId"]
	local nNpcId = tChineseValentinesDay_Data["Location"]["MonkeyKing"]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 3304141 相思泪
tItem[3304141] = tItem[3304141] or {}
tItem[3304141]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId,0)
	local nSingleValue = tChineseValentinesDay_Reward[nItemId]["RewardStrengthValue"]["Value"]
	local nTotalValue = nSingleValue * nItemNum
	local sMsg = string.format(tChineseValentinesDay_Text[nItemId]["TimeOut"],nTotalValue)
	local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId])
	tReward["RewardStrengthValue"]["Value"] = nTotalValue
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tReward)
		User_TalkChannel2005(sMsg)
		return
	end
	
	-- 寻路
	local nPosX = tChineseValentinesDay_Data["Location"]["OldMan"]["PosX"]
	local nPosY = tChineseValentinesDay_Data["Location"]["OldMan"]["PosY"]
	local nMapId = tChineseValentinesDay_Data["Location"]["OldMan"]["MapId"]
	local nNpcId = tChineseValentinesDay_Data["Location"]["OldMan"]["NpcId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-- 3304142 七夕鲜花礼包
-- 3304143 七夕鲜花豪华包
tItem[3304142] = tItem[3304142] or {}
tItem[3304143] = tItem[3304142] or {}
tItem[3304142]["Function"] = function(nItemId,sItemName)
	ChineseValentinesDay_FlowersPack(nItemId)
end

-- 3304144 1天【外套名】包
-- 3304145 1天【光效外套名】包
-- 3304546 月华礼盒
-- 3304547 永久蓝海苍云坐骑外套包
tItem[3304144] = tItem[3304144] or {}
tItem[3304145] = tItem[3304144] or {}
tItem[3304546] = tItem[3304144] or {}
tItem[3304144]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	-- 后
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesDay_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId])
end

-- 3304146 7天【外套名】包
-- 3304147 15天【外套名】包
tItem[3304146] = tItem[3304146] or {}
tItem[3304147] = tItem[3304146] or {}
tItem[3304146]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	-- 后
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesDay_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	-- stc(163,83) 记录玩家开启每颗星星的奖励礼包的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["Star"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Star"]["DataType"]
	local nValue = 0
	for i,v in pairs(tChineseValentinesDay_Data["Star"]) do
		if v == nItemId then
			nValue = i
		end
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if Task_ChkStcValue(nEventType,nDataType,"<",nValue) then
			Task_SetStatistic(nEventType,nDataType,nValue,1)
		end
		RewardTemplate_NewRandom(tChineseValentinesDay_Reward,nItemId)
		User_EffectAdd("self",tChineseValentinesDay_Data["Effect"]["OpenFlowersPack"])
	end
end

-- 3304148 永久【外套名】礼包
-- 3304150 永久【高级外套名】包
-- 3304149 忘情水礼包
tItem[3304148] = tItem[3304148] or {}
tItem[3304150] = tItem[3304148] or {}
tItem[3304149] = tItem[3304148] or {}
tItem[3304148]["Function"] = function(nItemId,sItemName)
	-- stc(163,83) 记录玩家开启每颗星星的奖励礼包的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["Star"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Star"]["DataType"]
	local nValue = 0
	for i,v in pairs(tChineseValentinesDay_Data["Star"]) do
		if v == nItemId then
			nValue = i
		end
	end
	if Task_ChkStcValue(nEventType,nDataType,"<",nValue) then
		Task_SetStatistic(nEventType,nDataType,nValue,1)
	end
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId])
end

-- 3304154 忘情水
tItem[3304154] = tItem[3304154] or {}
tItem[3304154]["Function"] = function(nItemId,sItemName)
	ChineseValentinesDay_Water(nItemId)
end

-- 3304151 赤霄火云坐骑碎片
tItemFace[3304151] = 783
tItem[3304151] = tItem[3304151] or {}
tItem[3304151]["Function"] = function(nItemId,sItemName)
	-- 判断物品
	if not Item_ChkItem(nItemId) then
		return
	end
	
	-- 判断时间
	-- 前
	if CommonFunc_GetBeforeActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		return
	end
	-- 后
	local nItemNum = Get_CountItemType(nItemId,0)
	local nSingleValue = tChineseValentinesDay_Reward[nItemId]["TimeOut"]["RewardStrengthValue"]["Value"]
	local nTotalValue = nSingleValue * nItemNum
	local sMsg = string.format(tChineseValentinesDay_Text[nItemId]["TimeOut"],nTotalValue)
	local tReward = CommonFunc_Copy(tChineseValentinesDay_Reward[nItemId]["TimeOut"])
	tReward["RewardStrengthValue"]["Value"] = nTotalValue
	tReward["DeleteItem"][1]["ItemNum"] = nItemNum
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		RewardTemplate_UseItemAndMsg(tReward)
		User_TalkChannel2005(sMsg)
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end
tItem[3304151]["DialogueText"] = tChineseValentinesDay_Text[3304151]
tItem[3304151]["Text1-1"] = {111,112,113}
tItem[3304151]["tOption1-1"] = {1,2}
tItem[3304151]["OptionFunc1"] = "ChineseValentinesDay_Gamble</N>3304151</N>1"
tItem[3304151]["OptionFunc2"] = "ChineseValentinesDay_Compose</N>3304151</N>25"
-- 成功翻倍
tItem[3304151]["Text2-1"] = {211}
tItem[3304151]["tOption2-1"] = {3}
tItem[3304151]["OptionPoint3"] = "1-1"
-- 碎片消失
tItem[3304151]["Text2-2"] = {221}
tItem[3304151]["tOption2-2"] = {4}
tItem[3304151]["OptionFunc4"] = "ChineseValentinesDay_Option</N>3304151"

-- 3304152 永久赤霄火云坐骑外套典藏包
-- 3304676 永久蓝海苍云坐骑外套典藏包
tItem[3304152] = tItem[3304152] or {}
tItem[3304676] = tItem[3304152] or {}
tItem[3304152]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId])
end

-- 3304153 七夕气力礼包
-- 3304547 永久蓝海苍云坐骑外套包
tItem[3304153] = tItem[3304153] or {}
tItem[3304547] = tItem[3304153] or {}
tItem[3304153]["Function"] = function(nItemId,sItemName)
	-- stc(163,83) 记录玩家开启每颗星星的奖励礼包的情况
	local nEventType = tChineseValentinesDay_Data["Stc"]["Star"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["Star"]["DataType"]
	local nValue = 0
	for i,v in pairs(tChineseValentinesDay_Data["Star"]) do
		if v == nItemId then
			nValue = i
		end
	end
	if Task_ChkStcValue(nEventType,nDataType,"<",nValue) then
		Task_SetStatistic(nEventType,nDataType,nValue,1)
	end
	RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId])
end

-- 3304155 星光灿烂礼包
tItem[3304155] = tItem[3304155] or {}
tItem[3304155]["Function"] = function(nItemId,sItemName)
	-- 判断时间
	local nItemNum = Get_CountItemType(nItemId,0)
	local sLog = string.format(tChineseValentinesDay_Data["Log"]["Timeout"],nItemId,nItemNum)
	if CommonFunc_GetAfterActivityTime(tActivityTime["ChineseValentinesDay"]["ActivityTime"]) then
		Item_DelAllItemByType(nItemId)
		User_TalkChannel2005(tChineseValentinesDay_Text["Msg"]["TimeOut"])
		Sys_SaveActionRewardLog(sLog)
		return
	end
	
	local nEventType = tChineseValentinesDay_Data["Stc"]["StarlightPack"]["EventType"]
	local nDataType = tChineseValentinesDay_Data["Stc"]["StarlightPack"]["DataType"]
	local nComplete = tChineseValentinesDay_Data["Stc"]["StarlightPack"]["Complete"]
	Task_AddStatistic(nEventType,nDataType,1,1)
	if Task_ChkStcValue(nEventType,nDataType,"<=",nComplete) then
		RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId][1])
	else
		RewardTemplate_UseItemAndMsg(tChineseValentinesDay_Reward[nItemId][2])
	end
end
--------------------------------------外套称号-------------------------------------------
--放进外套
tCheckInItemToCoatStorage["tFunction"] = tCheckInItemToCoatStorage["tFunction"] or {}
table.insert(tCheckInItemToCoatStorage["tFunction"],ChineseValentinesDay_CheckItemToCoat)
--取出外套
tCheckOutItemFromCoatStorage["tFunction"] = tCheckOutItemFromCoatStorage["tFunction"] or {}
table.insert(tCheckOutItemFromCoatStorage["tFunction"],ChineseValentinesDay_CheckItemToCoat)
--外套过时
tDelUserItemFromCoatStorage["tFunction"] = tDelUserItemFromCoatStorage["tFunction"] or {}
table.insert(tDelUserItemFromCoatStorage["tFunction"],ChineseValentinesDay_CheckItemToCoat)
--------------------------------------怪物模块-------------------------------------------

-- local tChineseValentinesDay_Drop = {}
	-- 全片区怪物掉落
	-- tChineseValentinesDay_Drop[1] = {}
	-- tChineseValentinesDay_Drop[1]["ActivityTime"] = tActivityTime["ChineseValentinesDay"]["ActivityTime"]
	-- tChineseValentinesDay_Drop[1]["Function"] = ChineseValentinesDay_MonsterDeath
	-- 活动地图
	-- tChineseValentinesDay_Drop[2] = {}
	-- tChineseValentinesDay_Drop[2]["ActivityTime"] = tActivityTime["ChineseValentinesDay"]["ActivityTime"]
	-- tChineseValentinesDay_Drop[2]["Function"] = ChineseValentinesDay_NewMap
	-- tChineseValentinesDay_Drop[2]["MonsterId"] = {4402,4403}
-- table.insert(tMonsterDrop_AreaLoad,tChineseValentinesDay_Drop[1])
-- table.insert(tMonsterDrop_AreaLoad,tChineseValentinesDay_Drop[2])
--------------------------------------上线触发-------------------------------------------
-- 上线获得背包信 3304156
-- table.insert(tSystem_PlayLogin_Func,ChineseValentinesDay_BackpackLetter)
--------------------------------------时间自检-------------------------------------------
-- 将昨日前五玩家ID存入相应动态码，清空记录今日前五玩家信息的动态码
-- tOntimerMin_HM[0000] = tOntimerMin_HM[0000] or {}
-- table.insert(tOntimerMin_HM[0000],ChineseValentinesDay_RankInfo)
-- 邮件发奖
-- tOntimerMin_HM[0001] = tOntimerMin_HM[0001] or {}
-- table.insert(tOntimerMin_HM[0001],ChineseValentinesDay_SendMail)
-- 自检限制清除
-- tOntimerMin_HM[0002] = tOntimerMin_HM[0002] or {}
-- table.insert(tOntimerMin_HM[0002],ChineseValentinesDay_ResetLimit)
