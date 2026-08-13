------------------------------------------------------------------------------------
--Name:			[英文征服][活动脚本]3月赠品狂欢
--Creator: 		翁清海
--Created:		2017/02/20
------------------------------------------------------------------------------------

--命名前缀
--Nov_Mono_Revel_

--掩码说明：
--stc(150,86)			背包信限制
--stc(150,75)			购买锁妖盒数量限制
--stc(150,76)			购买远古锁妖盒数量限制
--stc(150,77)			购买洪荒锁妖盒数量限制
--stc(150,78)			购买乾坤锁妖盒数量限制
--stc(150,79)			买锁妖盒获得领取特购金卡权限
--stc(150,80)			买锁妖盒获得领取500赠点权限
--stc(150,81)			黄金积分包购买数量限制
--stc(150,82)			购买黄金积分包获得领取500赠点权限
--stc(150,83)			使用转盘20次获得领取500赠点权限
--stc(150,84)			购买黄金积分包获得领取特购金卡权限
--stc(150,85)			记录转盘转动的次数
--170612[英文征服][活动脚本]7月暑期赠品大狂欢(7.13-7.26)
--以下掩码没有上，测试的时候请忽略
--stc(150,93)			购买金刚尖钻数量限制
--stc(150,94)			购买固化石数量限制
--stc(150,95)			购买1000气力包数量限制
--stc(150,96)			购买龙珠数量限制
--stc(150,97)			购买+3赤炼石数量限制
--stc(151,78)			记录玩家当天众筹天石上限
--stc(151,79)			记录玩家七星宝钻投天石数量
--stc(151,80)			记录玩家固化石投天石数量
--stc(151,81)			记录玩家龙珠投天石数量
--stc(151,82)			记录玩家+3赤炼石投天石数量

--全局动态表说明：
--Id = 51384			data0			记录全服七星宝钻轮数
--								data1			记录全服固化石轮数
--								data2			记录全服龙珠轮数
--								data3			记录全服+3赤炼石轮数
--								data4			标识服务器（美服、欧服）
--Id = 51385			data0			记录全服七星宝钻投天石数量
--								data1			记录全服固化石投天石数量
--								data2			记录全服龙珠投天石数量
--								data3			记录全服+3赤炼石投天石数量
--								data4			清0开关控制
--Id = 51596                    data0                   等于0为旧服，等于1为新服
local gNov_Mono_Revel_Server = 0

--众筹统计表
local tG_Nov_Mono_Revel_Count = {}
tG_Nov_Mono_Revel_Count[1200006] = {}
tG_Nov_Mono_Revel_Count[723694] = {}
tG_Nov_Mono_Revel_Count[1088000] = {}
tG_Nov_Mono_Revel_Count[730003] = {}

local tG_Nov_Mono_Revel_Name = {}
tG_Nov_Mono_Revel_Name[1200006] = {}
tG_Nov_Mono_Revel_Name[723694] = {}
tG_Nov_Mono_Revel_Name[1088000] = {}
tG_Nov_Mono_Revel_Name[730003] = {}

local tG_Nov_Mono_Revel_Record = {}
tG_Nov_Mono_Revel_Record[1200006] = {}
tG_Nov_Mono_Revel_Record[723694] = {}
tG_Nov_Mono_Revel_Record[1088000] = {}
tG_Nov_Mono_Revel_Record[730003] = {}

--常量
local tNov_Mono_Revel_Cont = {}
	tNov_Mono_Revel_Cont["GlobalId"] = 51596
	tNov_Mono_Revel_Cont["NewGlobalId"] = 51131
	--黄金联赛积分
	tNov_Mono_Revel_Cont["LeaguePoint"] = 3000
	--黄金积分上限
	tNov_Mono_Revel_Cont["LimitPoint"] = 343700
	--地图属性
	tNov_Mono_Revel_Cont["Mapdoc"] = 900000
	--背包空间
	tNov_Mono_Revel_Cont["Space"] = 2
	--给物品同一属性
	tNov_Mono_Revel_Cont["Attr"] = {}
	tNov_Mono_Revel_Cont["Attr"][1] = "0 1"
	tNov_Mono_Revel_Cont["Attr"][2] = "0 1 3"
	--物品Id
	tNov_Mono_Revel_Cont["Id"] = {}
	--背包信id
	tNov_Mono_Revel_Cont["Id"]["BagLetter"] = 3301162
	--特购金卡id
	tNov_Mono_Revel_Cont["Id"]["Discount"] = 3301167
	--黄金积分包Id
	tNov_Mono_Revel_Cont["Id"]["League"] = 3301168
	--转盘Id
	tNov_Mono_Revel_Cont["Id"]["Roulette"] = 3320245
	tNov_Mono_Revel_Cont["Id"]["HairRoulette"] = 3314577
	tNov_Mono_Revel_Cont["Id"]["Roulette_New"] = 3321812
	--赤炼石+3Id
	tNov_Mono_Revel_Cont["Id"]["Stone"] = 730003
	--七星宝钻Id
	tNov_Mono_Revel_Cont["Id"]["Drill"] = 1200006
	
	--默认修行值
	tNov_Mono_Revel_Cont["Cultivation"] = 30
	--掩码值设定
	tNov_Mono_Revel_Cont["Data"] = {}
	tNov_Mono_Revel_Cont["Data"]["Can"] = 1
	tNov_Mono_Revel_Cont["Data"]["Already"] = 2
	--天石赠
	tNov_Mono_Revel_Cont["EMoneyMono"] = 500
	--转盘使用次数
	tNov_Mono_Revel_Cont["RouletteNum"] = 20
	--黄金积分礼包天石价格
	tNov_Mono_Revel_Cont["LeagueEMoney"] = 459
	--开启轮盘价格
	tNov_Mono_Revel_Cont["RouletteEMoney"] = {}
	tNov_Mono_Revel_Cont["RouletteEMoney"][1] = 27
	tNov_Mono_Revel_Cont["RouletteEMoney"][10] = 270
	--夺宝券购买上限
	tNov_Mono_Revel_Cont["TicketNum"] = 100
	--投券数量上限和记录卡Id
	tNov_Mono_Revel_Cont[1200006] = {}
	tNov_Mono_Revel_Cont[1200006]["Num"] = 500
	tNov_Mono_Revel_Cont[1200006]["Id"] = 3301318
	tNov_Mono_Revel_Cont[1200006]["Index"] = 2
	tNov_Mono_Revel_Cont[1200006]["ActionId"] = 564893
	tNov_Mono_Revel_Cont[1200006]["ExistDay"] = 30
	tNov_Mono_Revel_Cont[723694] = {}
	tNov_Mono_Revel_Cont[723694]["Num"] = 100
	tNov_Mono_Revel_Cont[723694]["Id"] = 3301319
	tNov_Mono_Revel_Cont[723694]["Index"] = 3
	tNov_Mono_Revel_Cont[723694]["ActionId"] = 564894
	tNov_Mono_Revel_Cont[723694]["ExistDay"] = 30
	tNov_Mono_Revel_Cont[1088000] = {}
	tNov_Mono_Revel_Cont[1088000]["Num"] = 30
	tNov_Mono_Revel_Cont[1088000]["Id"] = 3301320
	tNov_Mono_Revel_Cont[1088000]["Index"] = 4
	tNov_Mono_Revel_Cont[1088000]["ActionId"] = 564895
	tNov_Mono_Revel_Cont[1088000]["ExistDay"] = 30
	tNov_Mono_Revel_Cont[730003] = {}
	tNov_Mono_Revel_Cont[730003]["Num"] = 26
	tNov_Mono_Revel_Cont[730003]["Id"] = 3301321
	tNov_Mono_Revel_Cont[730003]["Index"] = 5
	tNov_Mono_Revel_Cont[730003]["ActionId"] = 564896
	tNov_Mono_Revel_Cont[730003]["ExistDay"] = 30
	--气力值
	tNov_Mono_Revel_Cont["Strength"] = 10
	--发奖ActionId
	tNov_Mono_Revel_Cont["ActionId"] = 564896
	--光效配置
	tNov_Mono_Revel_Cont["Effect"] = {}
	tNov_Mono_Revel_Cont["Effect"]["SzObj"] = "self"
	tNov_Mono_Revel_Cont["Effect"]["Effect"] = "angelwing"

--时间
local tNov_Mono_Revel_Time = {}
	--活动时间
	tNov_Mono_Revel_Time["Activity"] = tActivityTime["BoundCarnival"]["ActivityTime"]
	--众筹投天石截止时间
	tNov_Mono_Revel_Time["Buy"] = {}
	tNov_Mono_Revel_Time["Buy"][1] = {}
	tNov_Mono_Revel_Time["Buy"][1][1] = "23:00 23:59"
	tNov_Mono_Revel_Time["Buy"][1][2] = "00:00 00:59"
	tNov_Mono_Revel_Time["Buy"][2] = {}
	tNov_Mono_Revel_Time["Buy"][2][1] = "07:00 08:59"

--寻路地点
local tNov_Mono_Revel_Where = {}
	tNov_Mono_Revel_Where[1] = {}
	tNov_Mono_Revel_Where[1]["PosX"] = 312
	tNov_Mono_Revel_Where[1]["PosY"] = 247
	tNov_Mono_Revel_Where[1]["MapId"] = 1002
	tNov_Mono_Revel_Where[1]["NpcId"] = 19783
	tNov_Mono_Revel_Where[2] = {}
	tNov_Mono_Revel_Where[2]["PosX"] = 316
	tNov_Mono_Revel_Where[2]["PosY"] = 247
	tNov_Mono_Revel_Where[2]["MapId"] = 1002
	tNov_Mono_Revel_Where[2]["NpcId"] = 19784
	tNov_Mono_Revel_Where[3] = {}
	tNov_Mono_Revel_Where[3]["PosX"] = 237
	tNov_Mono_Revel_Where[3]["PosY"] = 240
	tNov_Mono_Revel_Where[3]["MapId"] = 1002
	tNov_Mono_Revel_Where[3]["NpcId"] = 19785
	tNov_Mono_Revel_Where[4] = {}
	tNov_Mono_Revel_Where[4]["PosX"] = 324
	tNov_Mono_Revel_Where[4]["PosY"] = 247
	tNov_Mono_Revel_Where[4]["MapId"] = 1002
	tNov_Mono_Revel_Where[4]["NpcId"] = 19786

--购买锁妖盒花的天石数
local tNov_Mono_Revel_EMoney = {}
	tNov_Mono_Revel_EMoney[1] = {}
	tNov_Mono_Revel_EMoney[1]["Num"] = 3
	tNov_Mono_Revel_EMoney[1]["ItemTypeId"] = 3301163
	tNov_Mono_Revel_EMoney[1]["EmoneyLog"] = "350	20365	3	3	1	"
	tNov_Mono_Revel_EMoney[2] = {}
	tNov_Mono_Revel_EMoney[2]["Num"] = 15
	tNov_Mono_Revel_EMoney[2]["ItemTypeId"] = 3301164
	tNov_Mono_Revel_EMoney[2]["EmoneyLog"] = "350	20366	15	15	1	"
	tNov_Mono_Revel_EMoney[3] = {}
	tNov_Mono_Revel_EMoney[3]["Num"] = 30
	tNov_Mono_Revel_EMoney[3]["ItemTypeId"] = 3301165
	tNov_Mono_Revel_EMoney[3]["EmoneyLog"] = "350	20367	30	30	1	"
	tNov_Mono_Revel_EMoney[4] = {}
	tNov_Mono_Revel_EMoney[4]["Num"] = 150
	tNov_Mono_Revel_EMoney[4]["ItemTypeId"] = 3301166
	tNov_Mono_Revel_EMoney[4]["EmoneyLog"] = "350	20368	150	150	1	"

--购买促销品花的天石数
local tNov_Mono_Revel_EMoneyMono = {}
	tNov_Mono_Revel_EMoneyMono[1] = {}
	tNov_Mono_Revel_EMoneyMono[1]["Discount"] = 1500
	tNov_Mono_Revel_EMoneyMono[1]["NoDiscount"] = 1650
	tNov_Mono_Revel_EMoneyMono[1]["ItemTypeId"] = 1200005
	tNov_Mono_Revel_EMoneyMono[1]["DiscountEmoneyLog"] = "350	20394	0	0	1500	"
	tNov_Mono_Revel_EMoneyMono[1]["NoDiscountEmoneyLog"] = "350	20389	0	0	1650	"
	tNov_Mono_Revel_EMoneyMono[2] = {}
	tNov_Mono_Revel_EMoneyMono[2]["Discount"] = 330
	tNov_Mono_Revel_EMoneyMono[2]["NoDiscount"] = 365
	tNov_Mono_Revel_EMoneyMono[2]["ItemTypeId"] = 723694
	tNov_Mono_Revel_EMoneyMono[2]["DiscountEmoneyLog"] = "350	20395	0	0	330	"
	tNov_Mono_Revel_EMoneyMono[2]["NoDiscountEmoneyLog"] = "350	20390	0	0	365	"
	tNov_Mono_Revel_EMoneyMono[3] = {}
	tNov_Mono_Revel_EMoneyMono[3]["Discount"] = 120
	tNov_Mono_Revel_EMoneyMono[3]["NoDiscount"] = 140
	tNov_Mono_Revel_EMoneyMono[3]["ItemTypeId"] = 3001036
	tNov_Mono_Revel_EMoneyMono[3]["DiscountEmoneyLog"] = "350	20396	0	0	120	"
	tNov_Mono_Revel_EMoneyMono[3]["NoDiscountEmoneyLog"] = "350	20391	0	0	140	"
	tNov_Mono_Revel_EMoneyMono[4] = {}
	tNov_Mono_Revel_EMoneyMono[4]["Discount"] = 90
	tNov_Mono_Revel_EMoneyMono[4]["NoDiscount"] = 105
	tNov_Mono_Revel_EMoneyMono[4]["ItemTypeId"] = 1088000
	tNov_Mono_Revel_EMoneyMono[4]["DiscountEmoneyLog"] = "350	20397	0	0	90	"
	tNov_Mono_Revel_EMoneyMono[4]["NoDiscountEmoneyLog"] = "350	20392	0	0	105	"
	tNov_Mono_Revel_EMoneyMono[5] = {}
	tNov_Mono_Revel_EMoneyMono[5]["Discount"] = 70
	tNov_Mono_Revel_EMoneyMono[5]["NoDiscount"] = 85
	tNov_Mono_Revel_EMoneyMono[5]["ItemTypeId"] = 730003
	tNov_Mono_Revel_EMoneyMono[5]["DiscountEmoneyLog"] = "350	20398	0	0	70	"
	tNov_Mono_Revel_EMoneyMono[5]["NoDiscountEmoneyLog"] = "350	20393	0	0	85	"

--stc
local tNov_Mono_Revel_Stc = {}
	tNov_Mono_Revel_Stc["Box"] = {}
	--购买锁妖盒限制
	tNov_Mono_Revel_Stc["Box"][1] = {}
	tNov_Mono_Revel_Stc["Box"][1]["Event"] = 150
	tNov_Mono_Revel_Stc["Box"][1]["Type"] = 75
	tNov_Mono_Revel_Stc["Box"][1]["Save"] = 1
	tNov_Mono_Revel_Stc["Box"][1]["Data"] = 5
	--购买远古锁妖盒限制
	tNov_Mono_Revel_Stc["Box"][2] = {}
	tNov_Mono_Revel_Stc["Box"][2]["Event"] = 150
	tNov_Mono_Revel_Stc["Box"][2]["Type"] = 76
	tNov_Mono_Revel_Stc["Box"][2]["Save"] = 1
	tNov_Mono_Revel_Stc["Box"][2]["Data"] = 5
	--购买洪荒锁妖盒限制
	tNov_Mono_Revel_Stc["Box"][3] = {}
	tNov_Mono_Revel_Stc["Box"][3]["Event"] = 150
	tNov_Mono_Revel_Stc["Box"][3]["Type"] = 77
	tNov_Mono_Revel_Stc["Box"][3]["Save"] = 1
	tNov_Mono_Revel_Stc["Box"][3]["Data"] = 5
	--购买乾坤锁妖盒限制
	tNov_Mono_Revel_Stc["Box"][4] = {}
	tNov_Mono_Revel_Stc["Box"][4]["Event"] = 150
	tNov_Mono_Revel_Stc["Box"][4]["Type"] = 78
	tNov_Mono_Revel_Stc["Box"][4]["Save"] = 1
	tNov_Mono_Revel_Stc["Box"][4]["Data"] = 5
	--买锁妖盒获得领取特购金卡权限
	tNov_Mono_Revel_Stc["BoxDiscount"] = {}
	tNov_Mono_Revel_Stc["BoxDiscount"]["Event"] = 150
	tNov_Mono_Revel_Stc["BoxDiscount"]["Type"] = 79
	tNov_Mono_Revel_Stc["BoxDiscount"]["Save"] = 1
	--买锁妖盒获得领取500赠点权限
	tNov_Mono_Revel_Stc["BoxMono"] = {}
	tNov_Mono_Revel_Stc["BoxMono"]["Event"] = 150
	tNov_Mono_Revel_Stc["BoxMono"]["Type"] = 80
	tNov_Mono_Revel_Stc["BoxMono"]["Save"] = 1
	--黄金积分包购买限制
	tNov_Mono_Revel_Stc["League"] = {}
	tNov_Mono_Revel_Stc["League"]["Event"] = 150
	tNov_Mono_Revel_Stc["League"]["Type"] = 81
	tNov_Mono_Revel_Stc["League"]["Save"] = 1
	--购买黄金积分包获得领取500赠点权限
	tNov_Mono_Revel_Stc["LeagueMono"] = {}
	tNov_Mono_Revel_Stc["LeagueMono"]["Event"] = 150
	tNov_Mono_Revel_Stc["LeagueMono"]["Type"] = 82
	tNov_Mono_Revel_Stc["LeagueMono"]["Save"] = 1
	--使用转盘20次获得领取500赠点权限
	tNov_Mono_Revel_Stc["RouletteMono"] = {}
	tNov_Mono_Revel_Stc["RouletteMono"]["Event"] = 150
	tNov_Mono_Revel_Stc["RouletteMono"]["Type"] = 83
	tNov_Mono_Revel_Stc["RouletteMono"]["Save"] = 1
	--购买黄金积分包获得领取特购金卡权限
	tNov_Mono_Revel_Stc["LeagueDiscount"] = {}
	tNov_Mono_Revel_Stc["LeagueDiscount"]["Event"] = 150
	tNov_Mono_Revel_Stc["LeagueDiscount"]["Type"] = 84
	tNov_Mono_Revel_Stc["LeagueDiscount"]["Save"] = 1
	--记录转盘转动的次数
	tNov_Mono_Revel_Stc["Roulette"] = {}
	tNov_Mono_Revel_Stc["Roulette"]["Event"] = 150
	tNov_Mono_Revel_Stc["Roulette"]["Type"] = 85
	tNov_Mono_Revel_Stc["Roulette"]["Save"] = 1
	
	tNov_Mono_Revel_Stc["Goods"] = {}
	--购买金刚尖钻数量限制
	tNov_Mono_Revel_Stc["Goods"][1] = {}
	tNov_Mono_Revel_Stc["Goods"][1]["Event"] = 150
	tNov_Mono_Revel_Stc["Goods"][1]["Type"] = 93
	tNov_Mono_Revel_Stc["Goods"][1]["Save"] = 1
	tNov_Mono_Revel_Stc["Goods"][1]["Data"] = 1
	--购买固化石数量限制
	tNov_Mono_Revel_Stc["Goods"][2] = {}
	tNov_Mono_Revel_Stc["Goods"][2]["Event"] = 150
	tNov_Mono_Revel_Stc["Goods"][2]["Type"] = 94
	tNov_Mono_Revel_Stc["Goods"][2]["Save"] = 1
	tNov_Mono_Revel_Stc["Goods"][2]["Data"] = 2
	--购买1000气力包数量限制
	tNov_Mono_Revel_Stc["Goods"][3] = {}
	tNov_Mono_Revel_Stc["Goods"][3]["Event"] = 150
	tNov_Mono_Revel_Stc["Goods"][3]["Type"] = 95
	tNov_Mono_Revel_Stc["Goods"][3]["Save"] = 1
	tNov_Mono_Revel_Stc["Goods"][3]["Data"] = 5
	--购买龙珠数量限制
	tNov_Mono_Revel_Stc["Goods"][4] = {}
	tNov_Mono_Revel_Stc["Goods"][4]["Event"] = 150
	tNov_Mono_Revel_Stc["Goods"][4]["Type"] = 96
	tNov_Mono_Revel_Stc["Goods"][4]["Save"] = 1
	tNov_Mono_Revel_Stc["Goods"][4]["Data"] = 5
	--购买+3赤炼石数量限制
	tNov_Mono_Revel_Stc["Goods"][5] = {}
	tNov_Mono_Revel_Stc["Goods"][5]["Event"] = 150
	tNov_Mono_Revel_Stc["Goods"][5]["Type"] = 97
	tNov_Mono_Revel_Stc["Goods"][5]["Save"] = 1
	tNov_Mono_Revel_Stc["Goods"][5]["Data"] = 6
	
	tNov_Mono_Revel_Stc["One"] = {}
	--记录玩家当天众筹天石上限
	tNov_Mono_Revel_Stc["One"]["Num"] = {}
	tNov_Mono_Revel_Stc["One"]["Num"]["Event"] = 151
	tNov_Mono_Revel_Stc["One"]["Num"]["Type"] = 78
	tNov_Mono_Revel_Stc["One"]["Num"]["Save"] = 1
	tNov_Mono_Revel_Stc["One"]["Num"]["Delay"] = 1
	tNov_Mono_Revel_Stc["One"]["Num"]["TimeType"] = 4
	--记录玩家七星宝钻投天石数量
	tNov_Mono_Revel_Stc["One"][1200006] = {}
	tNov_Mono_Revel_Stc["One"][1200006]["Event"] = 151
	tNov_Mono_Revel_Stc["One"][1200006]["Type"] = 79
	tNov_Mono_Revel_Stc["One"][1200006]["Save"] = 1
	--记录玩家固化石投天石数量
	tNov_Mono_Revel_Stc["One"][723694] = {}
	tNov_Mono_Revel_Stc["One"][723694]["Event"] = 151
	tNov_Mono_Revel_Stc["One"][723694]["Type"] = 80
	tNov_Mono_Revel_Stc["One"][723694]["Save"] = 1
	--记录玩家龙珠投天石数量
	tNov_Mono_Revel_Stc["One"][1088000] = {}
	tNov_Mono_Revel_Stc["One"][1088000]["Event"] = 151
	tNov_Mono_Revel_Stc["One"][1088000]["Type"] = 81
	tNov_Mono_Revel_Stc["One"][1088000]["Save"] = 1
	--记录玩家+3赤炼石投天石数量
	tNov_Mono_Revel_Stc["One"][730003] = {}
	tNov_Mono_Revel_Stc["One"][730003]["Event"] = 151
	tNov_Mono_Revel_Stc["One"][730003]["Type"] = 82
	tNov_Mono_Revel_Stc["One"][730003]["Save"] = 1

--特购金卡对应Stc
local tNov_Mono_Revel_Discount = {}
	tNov_Mono_Revel_Discount[1] = {}
	tNov_Mono_Revel_Discount[1]["Stc"] = tNov_Mono_Revel_Stc["BoxDiscount"]
	tNov_Mono_Revel_Discount[1]["NoCan"] = "2-5"
	tNov_Mono_Revel_Discount[1]["Have"] = "2-6"
	tNov_Mono_Revel_Discount[1]["NoSpace"] = "2-7"
	tNov_Mono_Revel_Discount[1]["Already"] = "3-2"
	tNov_Mono_Revel_Discount[2] = {}
	tNov_Mono_Revel_Discount[2]["Stc"] = tNov_Mono_Revel_Stc["LeagueDiscount"]
	tNov_Mono_Revel_Discount[2]["NoCan"] = "2-6"
	tNov_Mono_Revel_Discount[2]["Have"] = "2-8"
	tNov_Mono_Revel_Discount[2]["NoSpace"] = "2-9"
	tNov_Mono_Revel_Discount[2]["Already"] = "2-7"

local tNov_Mono_Revel_Log = {}
	tNov_Mono_Revel_Log["League"] = "0,0,3301168,1,12000541,2,0,0"
	tNov_Mono_Revel_Log["GetItem"] = "0,0,0,0,12000541,2,%d,1"
	tNov_Mono_Revel_Log["GetEMoney"] = "0,0,0,0,12000541,2,2,%d"
	tNov_Mono_Revel_Log["DelItem"] = "0,0,%d,1,12000541,2,0,0"
	tNov_Mono_Revel_Log["BuyBox"] = {}
	tNov_Mono_Revel_Log["BuyBox"][1] = "0,0,2,%d,12000541,2,%d,1"
	tNov_Mono_Revel_Log["BuyBox"][2] = "0,0,3,%d,12000541,2,%d,1"
	tNov_Mono_Revel_Log["UseBagLetter"] = "0,0,3301162,1,12000541,2,6,30"
	tNov_Mono_Revel_Log["Discount"] = "0,0,0,0,12000541,2,3301167,1"
	tNov_Mono_Revel_Log["BuyLeague"] = "0,0,2,459,12000541,2,3301168,1"
	tNov_Mono_Revel_Log["Roulette"] = "0,0,0,0,12000541,2,3320245,1"
	tNov_Mono_Revel_Log["HairRoulette"] = "0,0,0,0,12000541,2,3314577,1"
	tNov_Mono_Revel_Log["GetCard"] = "0,0,2,%d,12000541,2,%d[12],1[%d]"
	tNov_Mono_Revel_Log["GetStrength"] = "0,0,2,%d,12000541,2,12,%d"

local tNov_Mono_Revel_EMoneyLog = {}
	tNov_Mono_Revel_EMoneyLog["League"] = "350	20399	459	459	1	"
	tNov_Mono_Revel_EMoneyLog[1200006] = "350	20404	%d	%d	1	"
	tNov_Mono_Revel_EMoneyLog[723694] = "350	20403	%d	%d	1	"
	tNov_Mono_Revel_EMoneyLog[1088000] = "350	20401	%d	%d	1	"
	tNov_Mono_Revel_EMoneyLog[730003] = "350	20402	%d	%d	1	"
	
--刷怪Id
local tNov_Mono_Revel_Monster = {}
	tNov_Mono_Revel_Monster[3301163] = {}
	tNov_Mono_Revel_Monster[3301163]["Id"] = 2798
	tNov_Mono_Revel_Monster[3301163]["GenId"] = 5631
	tNov_Mono_Revel_Monster[3301164] = {}
	tNov_Mono_Revel_Monster[3301164]["Id"] = 2799
	tNov_Mono_Revel_Monster[3301164]["GenId"] = 5632
	tNov_Mono_Revel_Monster[3301165] = {}
	tNov_Mono_Revel_Monster[3301165]["Id"] = 2800
	tNov_Mono_Revel_Monster[3301165]["GenId"] = 5633
	tNov_Mono_Revel_Monster[3301166] = {}
	tNov_Mono_Revel_Monster[3301166]["Id"] = 2801
	tNov_Mono_Revel_Monster[3301166]["GenId"] = 5655

--锁妖盒地区限制
local tNov_Mono_Revel_Area = {}
	tNov_Mono_Revel_Area[1000] = {}
	tNov_Mono_Revel_Area[1000]["MinX"] = 442
	tNov_Mono_Revel_Area[1000]["MaxX"] = 547
	tNov_Mono_Revel_Area[1000]["MinY"] = 535
	tNov_Mono_Revel_Area[1000]["MaxY"] = 702
	tNov_Mono_Revel_Area[1002] = {}
	tNov_Mono_Revel_Area[1002]["MinX"] = 140
	tNov_Mono_Revel_Area[1002]["MaxX"] = 540
	tNov_Mono_Revel_Area[1002]["MinY"] = 150
	tNov_Mono_Revel_Area[1002]["MaxY"] = 570
	tNov_Mono_Revel_Area[1006] = {}
	tNov_Mono_Revel_Area[1008] = {}
	tNov_Mono_Revel_Area[1011] = {}
	tNov_Mono_Revel_Area[1011]["MinX"] = 151
	tNov_Mono_Revel_Area[1011]["MaxX"] = 249
	tNov_Mono_Revel_Area[1011]["MinY"] = 192
	tNov_Mono_Revel_Area[1011]["MaxY"] = 298
	tNov_Mono_Revel_Area[1015] = {}
	tNov_Mono_Revel_Area[1015]["MinX"] = 683
	tNov_Mono_Revel_Area[1015]["MaxX"] = 783
	tNov_Mono_Revel_Area[1015]["MinY"] = 499
	tNov_Mono_Revel_Area[1015]["MaxY"] = 617
	tNov_Mono_Revel_Area[1020] = {}
	tNov_Mono_Revel_Area[1020]["MinX"] = 514
	tNov_Mono_Revel_Area[1020]["MaxX"] = 590
	tNov_Mono_Revel_Area[1020]["MinY"] = 482
	tNov_Mono_Revel_Area[1020]["MaxY"] = 618
	tNov_Mono_Revel_Area[1036] = {}
	tNov_Mono_Revel_Area[1039] = {}
	tNov_Mono_Revel_Area[1068] = {}
	tNov_Mono_Revel_Area[1511] = {}
	tNov_Mono_Revel_Area[1858] = {}
	tNov_Mono_Revel_Area[1860] = {}
	tNov_Mono_Revel_Area[1950] = {}
	tNov_Mono_Revel_Area[3053] = {}

--天石赠礼包奖励
local tNov_Mono_Revel_Reward = {}
	tNov_Mono_Revel_Reward[3301183] = {}
	tNov_Mono_Revel_Reward[3301183]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301183]["RewardEMoneyMono"]["Value"] = 3
	tNov_Mono_Revel_Reward[3301183]["RewardEMoneyMono"]["EmoneyLog"] = "350	20369	0	0	3	"
	tNov_Mono_Revel_Reward[3301183]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301183]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301183]["DeleteItem"][1]["Id"] = 3301183
	tNov_Mono_Revel_Reward[3301183]["Log"] = "0,0,3301183,1,12000541,2,3,3"
	tNov_Mono_Revel_Reward[3301184] = {}
	tNov_Mono_Revel_Reward[3301184]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301184]["RewardEMoneyMono"]["Value"] = 10
	tNov_Mono_Revel_Reward[3301184]["RewardEMoneyMono"]["EmoneyLog"] = "350	20370	0	0	10	"
	tNov_Mono_Revel_Reward[3301184]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301184]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301184]["DeleteItem"][1]["Id"] = 3301184
	tNov_Mono_Revel_Reward[3301184]["Log"] = "0,0,3301184,1,12000541,2,3,10"
	tNov_Mono_Revel_Reward[3301185] = {}
	tNov_Mono_Revel_Reward[3301185]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301185]["RewardEMoneyMono"]["Value"] = 15
	tNov_Mono_Revel_Reward[3301185]["RewardEMoneyMono"]["EmoneyLog"] = "350	20371	0	0	15	"
	tNov_Mono_Revel_Reward[3301185]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301185]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301185]["DeleteItem"][1]["Id"] = 3301185
	tNov_Mono_Revel_Reward[3301185]["Log"] = "0,0,3301185,1,12000541,2,3,10"
	tNov_Mono_Revel_Reward[3301186] = {}
	tNov_Mono_Revel_Reward[3301186]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301186]["RewardEMoneyMono"]["Value"] = 20
	tNov_Mono_Revel_Reward[3301186]["RewardEMoneyMono"]["EmoneyLog"] = "350	20372	0	0	20	"
	tNov_Mono_Revel_Reward[3301186]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301186]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301186]["DeleteItem"][1]["Id"] = 3301186
	tNov_Mono_Revel_Reward[3301186]["Log"] = "0,0,3301186,1,12000541,2,3,20"
	tNov_Mono_Revel_Reward[3301187] = {}
	tNov_Mono_Revel_Reward[3301187]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301187]["RewardEMoneyMono"]["Value"] = 30
	tNov_Mono_Revel_Reward[3301187]["RewardEMoneyMono"]["EmoneyLog"] = "350	20373	0	0	30	"
	tNov_Mono_Revel_Reward[3301187]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301187]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301187]["DeleteItem"][1]["Id"] = 3301187
	tNov_Mono_Revel_Reward[3301187]["Log"] = "0,0,3301187,1,12000541,2,3,30"
	tNov_Mono_Revel_Reward[3301188] = {}
	tNov_Mono_Revel_Reward[3301188]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301188]["RewardEMoneyMono"]["Value"] = 50
	tNov_Mono_Revel_Reward[3301188]["RewardEMoneyMono"]["EmoneyLog"] = "350	20374	0	0	50	"
	tNov_Mono_Revel_Reward[3301188]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301188]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301188]["DeleteItem"][1]["Id"] = 3301188
	tNov_Mono_Revel_Reward[3301188]["Log"] = "0,0,3301188,1,12000541,2,3,50"
	tNov_Mono_Revel_Reward[3301189] = {}
	tNov_Mono_Revel_Reward[3301189]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301189]["RewardEMoneyMono"]["Value"] = 100
	tNov_Mono_Revel_Reward[3301189]["RewardEMoneyMono"]["EmoneyLog"] = "350	20375	0	0	100	"
	tNov_Mono_Revel_Reward[3301189]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301189]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301189]["DeleteItem"][1]["Id"] = 3301189
	tNov_Mono_Revel_Reward[3301189]["Log"] = "0,0,3301189,1,12000541,2,3,100"
	tNov_Mono_Revel_Reward[3301191] = {}
	tNov_Mono_Revel_Reward[3301191]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301191]["RewardEMoneyMono"]["Value"] = 150
	tNov_Mono_Revel_Reward[3301191]["RewardEMoneyMono"]["EmoneyLog"] = "350	20376	0	0	150	"
	tNov_Mono_Revel_Reward[3301191]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301191]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301191]["DeleteItem"][1]["Id"] = 3301191
	tNov_Mono_Revel_Reward[3301191]["Log"] = "0,0,3301191,1,12000541,2,3,150"
	tNov_Mono_Revel_Reward[3301192] = {}
	tNov_Mono_Revel_Reward[3301192]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301192]["RewardEMoneyMono"]["Value"] = 200
	tNov_Mono_Revel_Reward[3301192]["RewardEMoneyMono"]["EmoneyLog"] = "350	20377	0	0	200	"
	tNov_Mono_Revel_Reward[3301192]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301192]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301192]["DeleteItem"][1]["Id"] = 3301192
	tNov_Mono_Revel_Reward[3301192]["Log"] = "0,0,3301192,1,12000541,2,3,200"
	tNov_Mono_Revel_Reward[3301193] = {}
	tNov_Mono_Revel_Reward[3301193]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301193]["RewardEMoneyMono"]["Value"] = 270
	tNov_Mono_Revel_Reward[3301193]["RewardEMoneyMono"]["EmoneyLog"] = "350	20378	0	0	270	"
	tNov_Mono_Revel_Reward[3301193]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301193]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301193]["DeleteItem"][1]["Id"] = 3301193
	tNov_Mono_Revel_Reward[3301193]["Log"] = "0,0,3301193,1,12000541,2,3,270"
	tNov_Mono_Revel_Reward[3301194] = {}
	tNov_Mono_Revel_Reward[3301194]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301194]["RewardEMoneyMono"]["Value"] = 500
	tNov_Mono_Revel_Reward[3301194]["RewardEMoneyMono"]["EmoneyLog"] = "350	20379	0	0	500	"
	tNov_Mono_Revel_Reward[3301194]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301194]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301194]["DeleteItem"][1]["Id"] = 3301194
	tNov_Mono_Revel_Reward[3301194]["Log"] = "0,0,3301194,1,12000541,2,3,500"
	tNov_Mono_Revel_Reward[3301195] = {}
	tNov_Mono_Revel_Reward[3301195]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301195]["RewardEMoneyMono"]["Value"] = 1000
	tNov_Mono_Revel_Reward[3301195]["RewardEMoneyMono"]["EmoneyLog"] = "350	20380	0	0	1000	"
	tNov_Mono_Revel_Reward[3301195]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301195]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301195]["DeleteItem"][1]["Id"] = 3301195
	tNov_Mono_Revel_Reward[3301195]["Log"] = "0,0,3301195,1,12000541,2,3,1000"
	tNov_Mono_Revel_Reward[3301196] = {}
	tNov_Mono_Revel_Reward[3301196]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301196]["RewardEMoneyMono"]["Value"] = 1350
	tNov_Mono_Revel_Reward[3301196]["RewardEMoneyMono"]["EmoneyLog"] = "350	20381	0	0	1350	"
	tNov_Mono_Revel_Reward[3301196]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301196]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301196]["DeleteItem"][1]["Id"] = 3301196
	tNov_Mono_Revel_Reward[3301196]["Log"] = "0,0,3301196,1,12000541,2,3,1350"
	tNov_Mono_Revel_Reward[3301197] = {}
	tNov_Mono_Revel_Reward[3301197]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301197]["RewardEMoneyMono"]["Value"] = 1380
	tNov_Mono_Revel_Reward[3301197]["RewardEMoneyMono"]["EmoneyLog"] = "350	20382	0	0	1380	"
	tNov_Mono_Revel_Reward[3301197]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301197]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301197]["DeleteItem"][1]["Id"] = 3301197
	tNov_Mono_Revel_Reward[3301197]["Log"] = "0,0,3301197,1,12000541,2,3,1380"
	tNov_Mono_Revel_Reward[3301198] = {}
	tNov_Mono_Revel_Reward[3301198]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301198]["RewardEMoneyMono"]["Value"] = 2700
	tNov_Mono_Revel_Reward[3301198]["RewardEMoneyMono"]["EmoneyLog"] = "350	20383	0	0	2700	"
	tNov_Mono_Revel_Reward[3301198]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301198]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301198]["DeleteItem"][1]["Id"] = 3301198
	tNov_Mono_Revel_Reward[3301198]["Log"] = "0,0,3301198,1,12000541,2,3,2700"
	tNov_Mono_Revel_Reward[3301199] = {}
	tNov_Mono_Revel_Reward[3301199]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301199]["RewardEMoneyMono"]["Value"] = 6900
	tNov_Mono_Revel_Reward[3301199]["RewardEMoneyMono"]["EmoneyLog"] = "350	20384	0	0	6900	"
	tNov_Mono_Revel_Reward[3301199]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301199]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301199]["DeleteItem"][1]["Id"] = 3301199
	tNov_Mono_Revel_Reward[3301199]["Log"] = "0,0,3301199,1,12000541,2,3,6900"
	tNov_Mono_Revel_Reward[3301201] = {}
	tNov_Mono_Revel_Reward[3301201]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301201]["RewardEMoneyMono"]["Value"] = 13500
	tNov_Mono_Revel_Reward[3301201]["RewardEMoneyMono"]["EmoneyLog"] = "350	20385	0	0	13500	"
	tNov_Mono_Revel_Reward[3301201]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301201]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301201]["DeleteItem"][1]["Id"] = 3301201
	tNov_Mono_Revel_Reward[3301201]["Log"] = "0,0,3301201,1,12000541,2,3,13500"
	tNov_Mono_Revel_Reward[3301202] = {}
	tNov_Mono_Revel_Reward[3301202]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301202]["RewardEMoneyMono"]["Value"] = 13800
	tNov_Mono_Revel_Reward[3301202]["RewardEMoneyMono"]["EmoneyLog"] = "350	20386	0	0	13800	"
	tNov_Mono_Revel_Reward[3301202]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301202]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301202]["DeleteItem"][1]["Id"] = 3301202
	tNov_Mono_Revel_Reward[3301202]["Log"] = "0,0,3301202,1,12000541,2,3,13800"
	tNov_Mono_Revel_Reward[3301203] = {}
	tNov_Mono_Revel_Reward[3301203]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward[3301203]["RewardEMoneyMono"]["Value"] = 69000
	tNov_Mono_Revel_Reward[3301203]["RewardEMoneyMono"]["EmoneyLog"] = "350	20387	0	0	69000	"
	tNov_Mono_Revel_Reward[3301203]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301203]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301203]["DeleteItem"][1]["Id"] = 3301203
	tNov_Mono_Revel_Reward[3301203]["Log"] = "0,0,3301203,1,12000541,2,3,69000"
	
	tNov_Mono_Revel_Reward[3301408] = {}
	tNov_Mono_Revel_Reward[3301408]["RewardItem"] = {}
	tNov_Mono_Revel_Reward[3301408]["RewardItem"][1] = {}
	tNov_Mono_Revel_Reward[3301408]["RewardItem"][1]["Id"] = 730003
	tNov_Mono_Revel_Reward[3301408]["RewardItem"][1]["Attr"] = "0 1 3"
	tNov_Mono_Revel_Reward[3301408]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301408]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301408]["DeleteItem"][1]["Id"] = 3301408
	tNov_Mono_Revel_Reward[3301408]["Log"] = "0,0,3301408,1,12000541,2,730003,1"
	tNov_Mono_Revel_Reward[3301409] = {}
	tNov_Mono_Revel_Reward[3301409]["RewardItem"] = {}
	tNov_Mono_Revel_Reward[3301409]["RewardItem"][1] = {}
	tNov_Mono_Revel_Reward[3301409]["RewardItem"][1]["Id"] = 1088000
	tNov_Mono_Revel_Reward[3301409]["RewardItem"][1]["Attr"] = "0 1 3"
	tNov_Mono_Revel_Reward[3301409]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301409]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301409]["DeleteItem"][1]["Id"] = 3301409
	tNov_Mono_Revel_Reward[3301409]["Log"] = "0,0,3301409,1,12000541,2,1088000,1"
	tNov_Mono_Revel_Reward[3301410] = {}
	tNov_Mono_Revel_Reward[3301410]["RewardItem"] = {}
	tNov_Mono_Revel_Reward[3301410]["RewardItem"][1] = {}
	tNov_Mono_Revel_Reward[3301410]["RewardItem"][1]["Id"] = 729481
	tNov_Mono_Revel_Reward[3301410]["RewardItem"][1]["Attr"] = "0 2 3"
	tNov_Mono_Revel_Reward[3301410]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301410]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301410]["DeleteItem"][1]["Id"] = 3301410
	tNov_Mono_Revel_Reward[3301410]["Log"] = "0,0,3301410,1,12000541,2,729481,2"
	tNov_Mono_Revel_Reward[3301411] = {}
	tNov_Mono_Revel_Reward[3301411]["RewardItem"] = {}
	tNov_Mono_Revel_Reward[3301411]["RewardItem"][1] = {}
	tNov_Mono_Revel_Reward[3301411]["RewardItem"][1]["Id"] = 3009001
	tNov_Mono_Revel_Reward[3301411]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tNov_Mono_Revel_Reward[3301411]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301411]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301411]["DeleteItem"][1]["Id"] = 3301411
	tNov_Mono_Revel_Reward[3301411]["Log"] = "0,0,3301411,1,12000541,2,3009001,2"
	tNov_Mono_Revel_Reward[3301412] = {}
	tNov_Mono_Revel_Reward[3301412]["RewardItem"] = {}
	tNov_Mono_Revel_Reward[3301412]["RewardItem"][1] = {}
	tNov_Mono_Revel_Reward[3301412]["RewardItem"][1]["Id"] = 723694
	tNov_Mono_Revel_Reward[3301412]["RewardItem"][1]["Attr"] = "0 1 3"
	tNov_Mono_Revel_Reward[3301412]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301412]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301412]["DeleteItem"][1]["Id"] = 3301412
	tNov_Mono_Revel_Reward[3301412]["Log"] = "0,0,3301412,1,12000541,2,723694,1"
	tNov_Mono_Revel_Reward[3301413] = {}
	tNov_Mono_Revel_Reward[3301413]["RewardItem"] = {}
	tNov_Mono_Revel_Reward[3301413]["RewardItem"][1] = {}
	tNov_Mono_Revel_Reward[3301413]["RewardItem"][1]["Id"] = 1200005
	tNov_Mono_Revel_Reward[3301413]["RewardItem"][1]["Attr"] = "0 1 3"
	tNov_Mono_Revel_Reward[3301413]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301413]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301413]["DeleteItem"][1]["Id"] = 3301413
	tNov_Mono_Revel_Reward[3301413]["Log"] = "0,0,3301413,1,12000541,2,1200005,1"
	tNov_Mono_Revel_Reward[3301414] = {}
	tNov_Mono_Revel_Reward[3301414]["RewardItem"] = {}
	tNov_Mono_Revel_Reward[3301414]["RewardItem"][1] = {}
	tNov_Mono_Revel_Reward[3301414]["RewardItem"][1]["Id"] = 730006
	tNov_Mono_Revel_Reward[3301414]["RewardItem"][1]["Attr"] = "0 1 3"
	tNov_Mono_Revel_Reward[3301414]["DeleteItem"] = {}
	tNov_Mono_Revel_Reward[3301414]["DeleteItem"][1] = {}
	tNov_Mono_Revel_Reward[3301414]["DeleteItem"][1]["Id"] = 3301414
	tNov_Mono_Revel_Reward[3301414]["Log"] = "0,0,3301414,1,12000541,2,730006,1"
	
	tNov_Mono_Revel_Reward["Mono"] = {}
	tNov_Mono_Revel_Reward["Mono"]["RewardEMoneyMono"] = {}
	tNov_Mono_Revel_Reward["Mono"]["RewardEMoneyMono"]["Value"] = 500
	tNov_Mono_Revel_Reward["Mono"]["RewardEMoneyMono"]["EmoneyLog"] = "350	20388	0	0	500	"
	tNov_Mono_Revel_Reward["Mono"]["Talk"] = tNov_Mono_Revel_Text["Channel2005"]["Mono"]
	tNov_Mono_Revel_Reward["Mono"]["Log"] = "0,0,0,0,12000541,2,3,500"

	tNov_Mono_Revel_Reward["LeaguePoint"] = {}
	tNov_Mono_Revel_Reward["LeaguePoint"]["RewardStrengthValue"] = {}
	tNov_Mono_Revel_Reward["LeaguePoint"]["RewardStrengthValue"]["Value"] = 5000
	tNov_Mono_Revel_Reward["LeaguePoint"]["Log"] = "0,0,3301168,1,12000541,2,12,5000"
	
--怪物掉落物品随机
local tNov_Mono_Revel_RewardRandom = {}
	tNov_Mono_Revel_RewardRandom[2798] = {}
	tNov_Mono_Revel_RewardRandom[2798][1] = {}
	tNov_Mono_Revel_RewardRandom[2798][1]["ItemChanceSum"] = 10000
	tNov_Mono_Revel_RewardRandom[2798][1][1] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][1]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2798][1][1]["ItemChance"] = 1
	tNov_Mono_Revel_RewardRandom[2798][1][1]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][1]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][1]["RewardItem"][1]["Id"] = 3301197
	tNov_Mono_Revel_RewardRandom[2798][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2798][1][1]["Log"] = "0,0,0,0,12000541,2,3301197,1"
	tNov_Mono_Revel_RewardRandom[2798][1][1]["Item_1"] = 1
	tNov_Mono_Revel_RewardRandom[2798][1][2] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][2]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2798][1][2]["ItemChance"] = 10
	tNov_Mono_Revel_RewardRandom[2798][1][2]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][2]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][2]["RewardItem"][1]["Id"] = 3301193
	tNov_Mono_Revel_RewardRandom[2798][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2798][1][2]["Log"] = "0,0,0,0,12000541,2,3301193,1"
	tNov_Mono_Revel_RewardRandom[2798][1][2]["Item_1"] = 2
	tNov_Mono_Revel_RewardRandom[2798][1][3] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][3]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2798][1][3]["ItemChance"] = 1800
	tNov_Mono_Revel_RewardRandom[2798][1][3]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][3]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][3]["RewardItem"][1]["Id"] = 3301186
	tNov_Mono_Revel_RewardRandom[2798][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2798][1][3]["Log"] = "0,0,0,0,12000541,2,3301186,1"
	tNov_Mono_Revel_RewardRandom[2798][1][3]["Item_1"] = 3
	tNov_Mono_Revel_RewardRandom[2798][1][4] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][4]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2798][1][4]["ItemChance"] = 2689
	tNov_Mono_Revel_RewardRandom[2798][1][4]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][4]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][4]["RewardItem"][1]["Id"] = 3301184
	tNov_Mono_Revel_RewardRandom[2798][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2798][1][4]["Log"] = "0,0,0,0,12000541,2,3301184,1"
	tNov_Mono_Revel_RewardRandom[2798][1][4]["Item_1"] = 4
	tNov_Mono_Revel_RewardRandom[2798][1][5] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][5]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2798][1][5]["ItemChance"] = 5500
	tNov_Mono_Revel_RewardRandom[2798][1][5]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][5]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2798][1][5]["RewardItem"][1]["Id"] = 3301183
	tNov_Mono_Revel_RewardRandom[2798][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2798][1][5]["Log"] = "0,0,0,0,12000541,2,3301183,1"
	tNov_Mono_Revel_RewardRandom[2798][1][5]["Item_1"] = 5
	
	tNov_Mono_Revel_RewardRandom[2799] = {}
	tNov_Mono_Revel_RewardRandom[2799][1] = {}
	tNov_Mono_Revel_RewardRandom[2799][1]["ItemChanceSum"] = 10000
	tNov_Mono_Revel_RewardRandom[2799][1][1] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][1]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2799][1][1]["ItemChance"] = 1
	tNov_Mono_Revel_RewardRandom[2799][1][1]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][1]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][1]["RewardItem"][1]["Id"] = 3301199
	tNov_Mono_Revel_RewardRandom[2799][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2799][1][1]["Log"] = "0,0,0,0,12000541,2,3301199,1"
	tNov_Mono_Revel_RewardRandom[2799][1][1]["Item_1"] = 1
	tNov_Mono_Revel_RewardRandom[2799][1][2] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][2]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2799][1][2]["ItemChance"] = 10
	tNov_Mono_Revel_RewardRandom[2799][1][2]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][2]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][2]["RewardItem"][1]["Id"] = 3301196
	tNov_Mono_Revel_RewardRandom[2799][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2799][1][2]["Log"] = "0,0,0,0,12000541,2,3301196,1"
	tNov_Mono_Revel_RewardRandom[2799][1][2]["Item_1"] = 2
	tNov_Mono_Revel_RewardRandom[2799][1][3] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][3]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2799][1][3]["ItemChance"] = 1800
	tNov_Mono_Revel_RewardRandom[2799][1][3]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][3]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][3]["RewardItem"][1]["Id"] = 3301189
	tNov_Mono_Revel_RewardRandom[2799][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2799][1][3]["Log"] = "0,0,0,0,12000541,2,3301189,1"
	tNov_Mono_Revel_RewardRandom[2799][1][3]["Item_1"] = 3
	tNov_Mono_Revel_RewardRandom[2799][1][4] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][4]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2799][1][4]["ItemChance"] = 2689
	tNov_Mono_Revel_RewardRandom[2799][1][4]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][4]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][4]["RewardItem"][1]["Id"] = 3301188
	tNov_Mono_Revel_RewardRandom[2799][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2799][1][4]["Log"] = "0,0,0,0,12000541,2,3301188,1"
	tNov_Mono_Revel_RewardRandom[2799][1][4]["Item_1"] = 4
	tNov_Mono_Revel_RewardRandom[2799][1][5] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][5]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2799][1][5]["ItemChance"] = 5500
	tNov_Mono_Revel_RewardRandom[2799][1][5]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][5]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2799][1][5]["RewardItem"][1]["Id"] = 3301185
	tNov_Mono_Revel_RewardRandom[2799][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2799][1][5]["Log"] = "0,0,0,0,12000541,2,3301185,1"
	tNov_Mono_Revel_RewardRandom[2799][1][5]["Item_1"] = 5
	
	tNov_Mono_Revel_RewardRandom[2800] = {}
	tNov_Mono_Revel_RewardRandom[2800][1] = {}
	tNov_Mono_Revel_RewardRandom[2800][1]["ItemChanceSum"] = 10000
	tNov_Mono_Revel_RewardRandom[2800][1][1] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][1]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2800][1][1]["ItemChance"] = 1
	tNov_Mono_Revel_RewardRandom[2800][1][1]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][1]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][1]["RewardItem"][1]["Id"] = 3301202
	tNov_Mono_Revel_RewardRandom[2800][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2800][1][1]["Log"] = "0,0,0,0,12000541,2,3301202,1"
	tNov_Mono_Revel_RewardRandom[2800][1][1]["Item_1"] = 1
	tNov_Mono_Revel_RewardRandom[2800][1][2] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][2]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2800][1][2]["ItemChance"] = 10
	tNov_Mono_Revel_RewardRandom[2800][1][2]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][2]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][2]["RewardItem"][1]["Id"] = 3301198
	tNov_Mono_Revel_RewardRandom[2800][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2800][1][2]["Log"] = "0,0,0,0,12000541,2,3301198,1"
	tNov_Mono_Revel_RewardRandom[2800][1][2]["Item_1"] = 2
	tNov_Mono_Revel_RewardRandom[2800][1][3] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][3]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2800][1][3]["ItemChance"] = 1800
	tNov_Mono_Revel_RewardRandom[2800][1][3]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][3]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][3]["RewardItem"][1]["Id"] = 3301192
	tNov_Mono_Revel_RewardRandom[2800][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2800][1][3]["Log"] = "0,0,0,0,12000541,2,3301192,1"
	tNov_Mono_Revel_RewardRandom[2800][1][3]["Item_1"] = 3
	tNov_Mono_Revel_RewardRandom[2800][1][4] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][4]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2800][1][4]["ItemChance"] = 2689
	tNov_Mono_Revel_RewardRandom[2800][1][4]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][4]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][4]["RewardItem"][1]["Id"] = 3301189
	tNov_Mono_Revel_RewardRandom[2800][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2800][1][4]["Log"] = "0,0,0,0,12000541,2,3301189,1"
	tNov_Mono_Revel_RewardRandom[2800][1][4]["Item_1"] = 4
	tNov_Mono_Revel_RewardRandom[2800][1][5] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][5]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2800][1][5]["ItemChance"] = 5500
	tNov_Mono_Revel_RewardRandom[2800][1][5]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][5]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2800][1][5]["RewardItem"][1]["Id"] = 3301187
	tNov_Mono_Revel_RewardRandom[2800][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2800][1][5]["Log"] = "0,0,0,0,12000541,2,3301187,1"
	tNov_Mono_Revel_RewardRandom[2800][1][5]["Item_1"] = 5
	
	tNov_Mono_Revel_RewardRandom[2801] = {}
	tNov_Mono_Revel_RewardRandom[2801][1] = {}
	tNov_Mono_Revel_RewardRandom[2801][1]["ItemChanceSum"] = 10000
	tNov_Mono_Revel_RewardRandom[2801][1][1] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][1]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2801][1][1]["ItemChance"] = 1
	tNov_Mono_Revel_RewardRandom[2801][1][1]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][1]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][1]["RewardItem"][1]["Id"] = 3301203
	tNov_Mono_Revel_RewardRandom[2801][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2801][1][1]["Log"] = "0,0,0,0,12000541,2,3301203,1"
	tNov_Mono_Revel_RewardRandom[2801][1][1]["Item_1"] = 1
	tNov_Mono_Revel_RewardRandom[2801][1][2] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][2]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2801][1][2]["ItemChance"] = 10
	tNov_Mono_Revel_RewardRandom[2801][1][2]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][2]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][2]["RewardItem"][1]["Id"] = 3301201
	tNov_Mono_Revel_RewardRandom[2801][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2801][1][2]["Log"] = "0,0,0,0,12000541,2,3301201,1"
	tNov_Mono_Revel_RewardRandom[2801][1][2]["Item_1"] = 2
	tNov_Mono_Revel_RewardRandom[2801][1][3] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][3]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2801][1][3]["ItemChance"] = 1800
	tNov_Mono_Revel_RewardRandom[2801][1][3]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][3]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][3]["RewardItem"][1]["Id"] = 3301195
	tNov_Mono_Revel_RewardRandom[2801][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2801][1][3]["Log"] = "0,0,0,0,12000541,2,3301195,1"
	tNov_Mono_Revel_RewardRandom[2801][1][3]["Item_1"] = 3
	tNov_Mono_Revel_RewardRandom[2801][1][4] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][4]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2801][1][4]["ItemChance"] = 2689
	tNov_Mono_Revel_RewardRandom[2801][1][4]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][4]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][4]["RewardItem"][1]["Id"] = 3301194
	tNov_Mono_Revel_RewardRandom[2801][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2801][1][4]["Log"] = "0,0,0,0,12000541,2,3301194,1"
	tNov_Mono_Revel_RewardRandom[2801][1][4]["Item_1"] = 4
	tNov_Mono_Revel_RewardRandom[2801][1][5] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][5]["RandomItemChanceType"] = 2
	tNov_Mono_Revel_RewardRandom[2801][1][5]["ItemChance"] = 5500
	tNov_Mono_Revel_RewardRandom[2801][1][5]["RewardItem"] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][5]["RewardItem"][1] = {}
	tNov_Mono_Revel_RewardRandom[2801][1][5]["RewardItem"][1]["Id"] = 3301191
	tNov_Mono_Revel_RewardRandom[2801][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNov_Mono_Revel_RewardRandom[2801][1][5]["Log"] = "0,0,0,0,12000541,2,3301191,1"
	tNov_Mono_Revel_RewardRandom[2801][1][5]["Item_1"] = 5

	--概率测试
	-- tProbabil_Test[2798] = {}																	--------------概率测试表的ID一般为礼包的ID或者怪物ID															
	-- tProbabil_Test[2798]["Table"] = tNov_Mono_Revel_RewardRandom[2798]									--------------对应要测试的概率表
	-- tProbabil_Test[2798]["Index"] = {1}														--------------对应要测试的概率表里面的下标，一般是填1
	-- tProbabil_Test[2798]["Times"] = 10000														--------------测试规模（次数）
	-- tProbabil_Test[2798]["LogName"] = "锁妖盒测试log"		--------------LOG文件名
	-- tProbabil_Test[2798]["MultiLog"] = 1												--------------配置为1则处理多文件输出
	
	-- Probabil_Main(2798,10000)
	
	-- tProbabil_Test[2799] = {}																	--------------概率测试表的ID一般为礼包的ID或者怪物ID															
	-- tProbabil_Test[2799]["Table"] = tNov_Mono_Revel_RewardRandom[2799]									--------------对应要测试的概率表
	-- tProbabil_Test[2799]["Index"] = {1}														--------------对应要测试的概率表里面的下标，一般是填1
	-- tProbabil_Test[2799]["Times"] = 10000														--------------测试规模（次数）
	-- tProbabil_Test[2799]["LogName"] = "远古锁妖盒测试log"		--------------LOG文件名
	-- tProbabil_Test[2799]["MultiLog"] = 1												--------------配置为1则处理多文件输出
	
	-- Probabil_Main(2799,10000)
	
	-- tProbabil_Test[2800] = {}																	--------------概率测试表的ID一般为礼包的ID或者怪物ID															
	-- tProbabil_Test[2800]["Table"] = tNov_Mono_Revel_RewardRandom[2800]									--------------对应要测试的概率表
	-- tProbabil_Test[2800]["Index"] = {1}														--------------对应要测试的概率表里面的下标，一般是填1
	-- tProbabil_Test[2800]["Times"] = 10000														--------------测试规模（次数）
	-- tProbabil_Test[2800]["LogName"] = "洪荒锁妖盒测试log"		--------------LOG文件名
	-- tProbabil_Test[2800]["MultiLog"] = 1												--------------配置为1则处理多文件输出
	
	-- Probabil_Main(2800,10000)
	
	-- tProbabil_Test[2801] = {}																	--------------概率测试表的ID一般为礼包的ID或者怪物ID															
	-- tProbabil_Test[2801]["Table"] = tNov_Mono_Revel_RewardRandom[2801]									--------------对应要测试的概率表
	-- tProbabil_Test[2801]["Index"] = {1}														--------------对应要测试的概率表里面的下标，一般是填1
	-- tProbabil_Test[2801]["Times"] = 10000														--------------测试规模（次数）
	-- tProbabil_Test[2801]["LogName"] = "乾坤锁妖盒测试log"		--------------LOG文件名
	-- tProbabil_Test[2801]["MultiLog"] = 1												--------------配置为1则处理多文件输出
	
	-- Probabil_Main(2801,10000)
	
--全局动态表
local tNov_Mono_Revel_GlobalData = {}
	tNov_Mono_Revel_GlobalData["Round"] = {}
	tNov_Mono_Revel_GlobalData["Round"][1200006] = {}
	tNov_Mono_Revel_GlobalData["Round"][1200006]["Id"] = 51384
	tNov_Mono_Revel_GlobalData["Round"][1200006]["Pos"] = 0
	tNov_Mono_Revel_GlobalData["Round"][723694] = {}
	tNov_Mono_Revel_GlobalData["Round"][723694]["Id"] = 51384
	tNov_Mono_Revel_GlobalData["Round"][723694]["Pos"] = 1
	tNov_Mono_Revel_GlobalData["Round"][1088000] = {}
	tNov_Mono_Revel_GlobalData["Round"][1088000]["Id"] = 51384
	tNov_Mono_Revel_GlobalData["Round"][1088000]["Pos"] = 2
	tNov_Mono_Revel_GlobalData["Round"][730003] = {}
	tNov_Mono_Revel_GlobalData["Round"][730003]["Id"] = 51384
	tNov_Mono_Revel_GlobalData["Round"][730003]["Pos"] = 3
	tNov_Mono_Revel_GlobalData["Num"] = {}
	tNov_Mono_Revel_GlobalData["Num"][1200006] = {}
	tNov_Mono_Revel_GlobalData["Num"][1200006]["Id"] = 51385
	tNov_Mono_Revel_GlobalData["Num"][1200006]["Pos"] = 0
	tNov_Mono_Revel_GlobalData["Num"][723694] = {}
	tNov_Mono_Revel_GlobalData["Num"][723694]["Id"] = 51385
	tNov_Mono_Revel_GlobalData["Num"][723694]["Pos"] = 1
	tNov_Mono_Revel_GlobalData["Num"][1088000] = {}
	tNov_Mono_Revel_GlobalData["Num"][1088000]["Id"] = 51385
	tNov_Mono_Revel_GlobalData["Num"][1088000]["Pos"] = 2
	tNov_Mono_Revel_GlobalData["Num"][730003] = {}
	tNov_Mono_Revel_GlobalData["Num"][730003]["Id"] = 51385
	tNov_Mono_Revel_GlobalData["Num"][730003]["Pos"] = 3
	tNov_Mono_Revel_GlobalData["Zero"] = {}
	tNov_Mono_Revel_GlobalData["Zero"]["Id"] = 51385
	tNov_Mono_Revel_GlobalData["Zero"]["Pos"] = 4

local tNov_Mono_Revel_IdChange = {}
	tNov_Mono_Revel_IdChange[3301318] = 1200006
	tNov_Mono_Revel_IdChange[3301319] = 723694
	tNov_Mono_Revel_IdChange[3301320] = 1088000
	tNov_Mono_Revel_IdChange[3301321] = 730003

--------------------------------------逻辑模块-------------------------------------------
-- 新服检测
function Nov_Mono_Revel_NewServerChk()
	local nGlobalId = tNov_Mono_Revel_Cont["GlobalId"]
	-- if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		-- return true
	-- else
		-- return false
	-- end
	 return false
end

--新老服判断
function Nov_Mono_Revel_NewaugustServerChk()
	local nGlobalId = tNov_Mono_Revel_Cont["NewGlobalId"]
	if Get_SysDynaGlobalData0(nGlobalId) >= 1 then
		return true
	else
		return false
	end
	return false
end

-- 活动时间检测
function Nov_Mono_Revel_ActivityTimeChk()
	local nGlobalId = tNov_Mono_Revel_Cont["GlobalId"]
	if Nov_Mono_Revel_NewServerChk() then
		return Sys_ChkFullTime(Get_SysDynaGlobalDataStr1(nGlobalId))
	else
		return Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"])
	end
end

--背包信打开
function Nov_Mono_Revel_BagLetterOpen(nIndex)
	local nUserId = Get_UserId()
	local nItemId = tNov_Mono_Revel_Cont["Id"]["BagLetter"]
	local nCultivation = tNov_Mono_Revel_Cont["Cultivation"]
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		
	else
		return
	end

	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["TimeOut"])
		Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["DelItem"], nItemId)
		return
	end
	
	local nPosX = tNov_Mono_Revel_Where[nIndex]["PosX"]
	local nPosY = tNov_Mono_Revel_Where[nIndex]["PosY"]
	local nMapId = tNov_Mono_Revel_Where[nIndex]["MapId"]
	local nNpcId = tNov_Mono_Revel_Where[nIndex]["NpcId"]
	
	User_AddCultivation(nCultivation)
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
	Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["UseBagLetter"])
	User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["Cultivation"])
end

--锁妖盒地区限制
function Nov_Mono_Revel_Area()
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	local nMapdoc = Get_MapDoc(nMapId)
	
	if tNov_Mono_Revel_Area[nMapId] == nil then
		if nMapdoc == tNov_Mono_Revel_Cont["Mapdoc"] then
			return false
		else
			return true
		end
	elseif tNov_Mono_Revel_Area[nMapId]["MinX"] == nil then
		return false
	else
		local nMinX = tNov_Mono_Revel_Area[nMapId]["MinX"]
		local nMaxX = tNov_Mono_Revel_Area[nMapId]["MaxX"]
		local nMinY = tNov_Mono_Revel_Area[nMapId]["MinY"]
		local nMaxY = tNov_Mono_Revel_Area[nMapId]["MaxY"]
		if nPosX > nMinX and nPosX < nMaxX and nPosY > nMinY and nPosY < nMaxY then
			return false
		else
			return true
		end
	end
end

--锁妖盒对白检查
function Nov_Mono_Revel_Chk(nItemTypeId)
	local nUserId = Get_UserId()
	
	--地区限制
	if Nov_Mono_Revel_Area() then
		LinkItemGossipFunc_New(nItemTypeId,"1-1")
	else
		User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["Area"])
	end
	
end

--锁妖盒刷怪
function Nov_Mono_Revel_RefreshMonster(nItemTypeId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	local nGenId = tNov_Mono_Revel_Monster[nItemTypeId]["GenId"]
	local nMonsterId = tNov_Mono_Revel_Monster[nItemTypeId]["Id"]
	
	--地区限制
	if not Nov_Mono_Revel_Area() then
		User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["Area"])
		return
	end
	
	--检查锁妖盒是否还存在
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		--刷怪
		if Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
			User_TalkChannel2007(tNov_Mono_Revel_Text["Channel2007"][nItemTypeId])
		end
		Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["DelItem"], nItemTypeId)
	else
		User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"][nItemTypeId])
		return
	end
end

--怪物掉落
function Nov_Mono_Revel_KillMonster(nMonsterId)
	RewardTemplate_Random(tNov_Mono_Revel_RewardRandom[nMonsterId],1)
end

--夺宝记录卡对白检查
function Nov_Mono_Revel_CardChk(nItemTypeId)
	local nUserId = Get_UserId()
	local nTemp = 0
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		--删除记录卡
		if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
			User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["TimeOut"])
			Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["DelItem"], nItemTypeId)
		end
		return
	end
	
	local nItemId = tNov_Mono_Revel_IdChange[nItemTypeId]
	
	--清掩码
	for k,v in pairs(tG_Nov_Mono_Revel_Count[nItemId]) do
		if nUserId == v then
			nTemp = 1
			break
		end
	end
	if nTemp == 0 then
		Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["One"][nItemId], 0)
	end
	
	local nGlobalId = tNov_Mono_Revel_GlobalData["Round"][nItemId]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Round"][nItemId]["Pos"]
	local nTimes = Get_SysDynaGlobalData(nGlobalId, nPos)
	local nNum = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["One"][nItemId])
	
	nGlobalId = tNov_Mono_Revel_GlobalData["Num"][nItemId]["Id"]
	nPos = tNov_Mono_Revel_GlobalData["Num"][nItemId]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId, nPos)
	
	local nIndex = 0
	
	if nGlobalData == 0 then
		if tG_Nov_Mono_Revel_Record[nItemId][nUserId] == nil then
			nTimes = nTimes - 1
			nGlobalData = tNov_Mono_Revel_Cont[nItemId]["Num"]
			nIndex = 9
		else
			nTimes = tG_Nov_Mono_Revel_Record[nItemId][nUserId][1]
			nGlobalData = tG_Nov_Mono_Revel_Record[nItemId][nUserId][2]
			nNum = tG_Nov_Mono_Revel_Record[nItemId][nUserId][3]
			nIndex = tG_Nov_Mono_Revel_Record[nItemId][nUserId][4]
		end
	else
		if #tG_Nov_Mono_Revel_Record[nItemId] ~= 0 then
			tG_Nov_Mono_Revel_Record[nItemId] = {}
		end
		nIndex = 6
	end
	
	tItem[nItemTypeId]["Text113"] = string.format(tNov_Mono_Revel_Text[nItemTypeId]["Text113"], nTimes)
	tItem[nItemTypeId]["Text114"] = string.format(tNov_Mono_Revel_Text[nItemTypeId]["Text114"], nNum)
	tItem[nItemTypeId]["Text115"] = string.format(tNov_Mono_Revel_Text[nItemTypeId]["Text115"], nGlobalData)
	tItem[nItemTypeId]["Text116"] = tNov_Mono_Revel_Text[nItemTypeId]["Text11"..nIndex]
	
	local nPosX = tNov_Mono_Revel_Where[4]["PosX"]
	local nPosY = tNov_Mono_Revel_Where[4]["PosY"]
	local nMapId = tNov_Mono_Revel_Where[4]["MapId"]
	local nNpcId = tNov_Mono_Revel_Where[4]["NpcId"]
	local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d", nPosX,nPosY,nMapId,nNpcId)
	
	tItem[nItemTypeId]["OptionFunc1"] = sFunc
	
	LinkItemGossipFunc_New(nItemTypeId,"1-1")
end

function Nov_Mono_Revel_DelItem(nItemTypeId)
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
			User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["TimeOut"])
			Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["DelItem"], nItemTypeId)
		end
	end
end

--黄金积分包打开获取
function Nov_Mono_Revel_Open(nItemTypeId, nIndex)
	local nUserId = Get_UserId()
	local nPoint = tNov_Mono_Revel_Cont["LeaguePoint"]
	
	--删除礼包
	if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
		if nIndex == 0 then
			RewardTemplate_UseItemAndMsg(tNov_Mono_Revel_Reward["LeaguePoint"])
		else
			User_AddLeaguePoint(nPoint, nUserId)
			Sys_SaveActionRewardLog(tNov_Mono_Revel_Log["League"], nUserId)
			User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["League"])
		end
	end
end

--天石赠礼包
function Nov_Mono_Revel_OpenBag(nItemTypeId)
	RewardTemplate_UseItemAndMsg(tNov_Mono_Revel_Reward[nItemTypeId])
end

--掩码设置为可领取
function Nov_Mono_Revel_SetCanStc(tStc)
	local nUserId = Get_UserId()
	local nEvent = tStc["Event"]
	local nType = tStc["Type"]
	local nSave = tStc["Save"]
	local nData = tNov_Mono_Revel_Cont["Data"]["Can"]
	
	if not Task_ChkStatistic(nEvent,nType,nUserId) then
		Task_SetStatistic(nEvent,nType,nData,nSave,nUserId)
	end
end

--掩码设置
function Nov_Mono_Revel_SetStc(tStc, nData)
	local nUserId = Get_UserId()
	local nEvent = tStc["Event"]
	local nType = tStc["Type"]
	local nSave = tStc["Save"]
	
	Task_SetStatistic(nEvent,nType,nData,nSave,nUserId)
end

--返回掩码值
function Nov_Mono_Revel_GetStc(tStc)
	local nUserId = Get_UserId()
	local nEvent = tStc["Event"]
	local nType = tStc["Type"]
	
	return Get_UserStatisticValue(nEvent,nType,nUserId)
end

--天石大甩卖NPC
function Nov_Mono_Revel_ChkMonoNPC()
	local nUserId = Get_UserId()
	local nEvent = 0
	local nType = 0
	local nSave = 0
	local nData = 0
	local sText = ""
	local sStr = ""
	
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		return false
	end
	
	for k,v in pairs(tNov_Mono_Revel_Stc["Box"]) do
		nEvent = v["Event"]
		nType = v["Type"]
		nSave = v["Save"]
		
		if not Task_ChkStatistic(nEvent,nType,nUserId) then
			Task_SetStatistic(nEvent,nType,v["Data"],nSave,nUserId)
		end
		
		nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		sText = string.format("Option%d", k)
		sStr = tNov_Mono_Revel_Text[19783][sText]
		tNpcGossip[19783][sText] = string.format(sStr, nData)
	end
	
	--500赠天石是否已领判断
	nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["BoxMono"])
	if nData == tNov_Mono_Revel_Cont["Data"]["Already"] then
		tNpcGossip[19783]["Option6"] = tNov_Mono_Revel_Text[19783]["Option21"]
	else
		tNpcGossip[19783]["Option6"] = tNov_Mono_Revel_Text[19783]["Option6"]
	end
	
	return true
end

--百宝大放送NPC
function Nov_Mono_Revel_ChkGoodsNPC()
	local nUserId = Get_UserId()
	local nEvent = 0
	local nType = 0
	local nSave = 0
	local nEMoneyMono = 0
	local sText = ""
	local sStr = ""
	
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		return false
	end
	
	for k,v in pairs(tNov_Mono_Revel_Stc["Goods"]) do
		nEvent = v["Event"]
		nType = v["Type"]
		nSave = v["Save"]
		
		if not Task_ChkStatistic(nEvent,nType,nUserId) then
			Task_SetStatistic(nEvent,nType,v["Data"],nSave,nUserId)
		end
		
		nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		sText = string.format("Option%d", k)
		sStr = tNov_Mono_Revel_Text[19784][sText]
		tNpcGossip[19784][sText] = string.format(sStr, nData)
	end
	
	return true
end

--黄金积分风暴NPC
function Nov_Mono_Revel_ChkLeagueNPC()
	--local nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["League"])
	
	if not Nov_Mono_Revel_ActivityTimeChk() then
		return false
	end
	
	--if nData == tNov_Mono_Revel_Cont["Data"]["Already"] then
		-- tNpcGossip[19785]["tOption1-1"] = {211,5}
		tNpcGossip[19785]["tOption1-1"] = {2,5}
	--else
	--	tNpcGossip[19785]["tOption1-1"] = {1,2,3,4,5}
	--end
	
	local nLeagueData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["LeagueMono"])
	local nRouletteData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["RouletteMono"])
	
	if nLeagueData == tNov_Mono_Revel_Cont["Data"]["Already"] and nRouletteData == tNov_Mono_Revel_Cont["Data"]["Already"] then
		tNpcGossip[19785]["Option4"] = tNov_Mono_Revel_Text[19785]["Option6"]
	else
		tNpcGossip[19785]["Option4"] = tNov_Mono_Revel_Text[19785]["Option4"]
	end
	
	return true
end

--夺宝幸运星NPC
function Nov_Mono_Revel_ChkOneNPC() 
	local nUserId = Get_UserId()
	local nEvent = tNov_Mono_Revel_Stc["One"]["Num"]["Event"]
	local nType = tNov_Mono_Revel_Stc["One"]["Num"]["Type"]
	local nSave = tNov_Mono_Revel_Stc["One"]["Num"]["Save"]
	local nDelay = tNov_Mono_Revel_Stc["One"]["Num"]["Delay"]
	local nTimeType = tNov_Mono_Revel_Stc["One"]["Num"]["TimeType"]
	local nData = tNov_Mono_Revel_Cont["TicketNum"]
	
	if gNov_Mono_Revel_Server == 0 then
		gNov_Mono_Revel_Server = Get_SysDynaGlobalData4(51384)
	end
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		return false
	end
	
	if Task_ChkStatistic(nEvent,nType,nUserId) then
		if Task_StcInterval(nEvent,nType,nDelay,nTimeType) then
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			--重设掩码
			Task_SetStatistic(nEvent,nType,nData,nSave,nUserId)
		end
	else
		Task_SetStatistic(nEvent,nType,nData,nSave,nUserId)
	end
	
	tNpcGossip[19786]["Text113"] = tNov_Mono_Revel_Text[19786]["Text113"][gNov_Mono_Revel_Server]
	tNpcGossip[19786]["Text226"] = tNov_Mono_Revel_Text[19786]["Text226"][gNov_Mono_Revel_Server]
	tNpcGossip[19786]["Text311"] = tNov_Mono_Revel_Text[19786]["Text311"][gNov_Mono_Revel_Server]
	
	return true
end

--购买选项
function Nov_Mono_Revel_Buy(nIndex, nFlag)
	if nFlag == 1 then
		Nov_Mono_Revel_BuyBox(nIndex, tNov_Mono_Revel_Stc["Box"], tNov_Mono_Revel_EMoney, nFlag)
	elseif nFlag == 2 then
		Nov_Mono_Revel_BuyBox(nIndex, tNov_Mono_Revel_Stc["Goods"], tNov_Mono_Revel_EMoneyMono, nFlag)
	end
end

function Nov_Mono_Revel_BuyBox(nIndex, tStc, tEMoney, nFlag)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nEvent = tStc[nIndex]["Event"]
	local nType = tStc[nIndex]["Type"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nItemTypeId = tEMoney[nIndex]["ItemTypeId"]
	local sItemName = Get_ItemtypeName(tonumber(nItemTypeId))
	local nTotalNum =  tStc[nIndex]["Data"]
	local nNeedEMoney = 0
	local nEMoney = 0
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if nItemTypeId == tNov_Mono_Revel_Cont["Id"]["Stone"] then
		sItemName = "+3"..sItemName
	end
	
	if tEMoney[nIndex]["Num"] == nil then
		if Item_ChkItem(tNov_Mono_Revel_Cont["Id"]["Discount"]) then
			nNeedEMoney = tEMoney[nIndex]["Discount"]
		else
			nNeedEMoney = tEMoney[nIndex]["NoDiscount"]
		end
		nEMoney = Get_UserMonoEMoney(nUserId)
	else
		nNeedEMoney = tEMoney[nIndex]["Num"]
		nEMoney = Get_UserEMoney(nUserId)
	end
	
	--天石判断
	if nEMoney < nNeedEMoney then
		tNpcGossip[nNpcId]["Text211"] = string.format(tNov_Mono_Revel_Text[nNpcId]["Text211"], nNeedEMoney)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--购买次数判断
	if nData < 1 then
		tNpcGossip[nNpcId]["Text221"] = string.format(tNov_Mono_Revel_Text[nNpcId]["Text221"], nTotalNum, sItemName)
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end

	--二次确认
	tNpcGossip[nNpcId]["Text241"] = string.format(tNov_Mono_Revel_Text[nNpcId]["Text241"], nNeedEMoney, sItemName)
	tNpcGossip[nNpcId]["OptionFunc12"] = string.format("Nov_Mono_Revel_BuyConfirm</N>%d</N>%d", nIndex, nFlag)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

--接二次确认
function Nov_Mono_Revel_BuyConfirm(nIndex, nFlag)
	if nFlag == 1 then
		Nov_Mono_Revel_BuyBoxConfirm(nIndex, tNov_Mono_Revel_Stc["Box"], tNov_Mono_Revel_EMoney, nFlag)
	elseif nFlag == 2 then
		Nov_Mono_Revel_BuyBoxConfirm(nIndex, tNov_Mono_Revel_Stc["Goods"], tNov_Mono_Revel_EMoneyMono, nFlag)
	end
end

function Nov_Mono_Revel_BuyBoxConfirm(nIndex, tStc, tEMoney, nFlag)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nEvent = tStc[nIndex]["Event"]
	local nType = tStc[nIndex]["Type"]
	local nSave = tStc[nIndex]["Save"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nItemTypeId = tEMoney[nIndex]["ItemTypeId"]
	local sAttr = tNov_Mono_Revel_Cont["Attr"][nFlag]
	local nNeedEMoney = 0
	local nEMoney = 0
	local sEMoneyLog = ""
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	if tEMoney[nIndex]["Num"] == nil then
		if Item_ChkItem(tNov_Mono_Revel_Cont["Id"]["Discount"]) then
			nNeedEMoney = tEMoney[nIndex]["Discount"]
			sEMoneyLog = tEMoney[nIndex]["DiscountEmoneyLog"]
		else
			nNeedEMoney = tEMoney[nIndex]["NoDiscount"]
			sEMoneyLog = tEMoney[nIndex]["NoDiscountEmoneyLog"]
		end
		nEMoney = Get_UserMonoEMoney(nUserId)
	else
		nNeedEMoney = tEMoney[nIndex]["Num"]
		nEMoney = Get_UserEMoney(nUserId)
		sEMoneyLog = tEMoney[nIndex]["EmoneyLog"]
	end
	
	--天石判断
	if nEMoney < nNeedEMoney then
		tNpcGossip[nNpcId]["Text211"] = string.format(tNov_Mono_Revel_Text[nNpcId]["Text211"], nNeedEMoney)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end

	--扣除天石或天石（赠）
	if nFlag == 1 then
		User_AddEMoney((-1) * nNeedEMoney,nUserId)
	elseif nFlag == 2 then
		User_AddEMoneyMono((-1) * nNeedEMoney,nUserId)
	end
	
	--设置掩码
	Task_SetStatistic(nEvent,nType,nData - 1,nSave,nUserId)
	if nFlag == 1 then
		--Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["BoxDiscount"], tNov_Mono_Revel_Cont["Data"]["Can"])
		if nIndex == 4 and nData == 1 then
			Nov_Mono_Revel_SetCanStc(tNov_Mono_Revel_Stc["BoxMono"])
		end
	end
	
	--给物品
	Item_AddNewItem(nItemTypeId,sAttr,nUserId)
	--打log
	local sLog = string.format(tNov_Mono_Revel_Log["BuyBox"][nFlag], nNeedEMoney, nItemTypeId)
	Sys_SaveActionFestivalLog(sLog)
	--打天石log
	Sys_SaveEmoneyBuy(sEMoneyLog)
	--提示
	User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["Box"][nFlag][nIndex])
	--给光效
	User_EffectAdd(tNov_Mono_Revel_Cont["Effect"]["SzObj"],tNov_Mono_Revel_Cont["Effect"]["Effect"],nUserId)
end

--购买黄金积分礼包
function Nov_Mono_Revel_BuyLeague()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedEMoney = tNov_Mono_Revel_Cont["LeagueEMoney"]
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--天石判断
	if nEMoney < nNeedEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--二次确认
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

--购买黄金积分礼包二次确认
function Nov_Mono_Revel_BuyLeagueConfirm()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nNeedEMoney = tNov_Mono_Revel_Cont["LeagueEMoney"]
	local sAttr = tNov_Mono_Revel_Cont["Attr"][1]
	local nItemTypeId = tNov_Mono_Revel_Cont["Id"]["League"]
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--天石判断
	if nEMoney < nNeedEMoney then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	--扣除天石
	User_AddEMoney((-1) * nNeedEMoney,nUserId)
	
	--设置掩码
	Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["League"], tNov_Mono_Revel_Cont["Data"]["Already"])
	Nov_Mono_Revel_SetCanStc(tNov_Mono_Revel_Stc["LeagueMono"])
	Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["LeagueDiscount"], tNov_Mono_Revel_Cont["Data"]["Can"])
	
	--给物品
	Item_AddNewItem(nItemTypeId,sAttr,nUserId)
	--打log
	Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["BuyLeague"])
	--打天石log
	Sys_SaveEmoneyBuy(tNov_Mono_Revel_EMoneyLog["League"])
	--提示
	User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["BuyLeague"])
	--给光效
	User_EffectAdd(tNov_Mono_Revel_Cont["Effect"]["SzObj"],tNov_Mono_Revel_Cont["Effect"]["Effect"],nUserId)
end

--领取发型轮盘
function Nov_Mono_Revel_HairGetRoulette()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nItemTypeId = tNov_Mono_Revel_Cont["Id"]["HairRoulette"]
	
	local sAttr = tNov_Mono_Revel_Cont["Attr"][1]
	
	--活动时间检查
	if not Nov_Mono_Revel_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--检查背包是否已有
	if Item_ChkItem(nItemTypeId) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	--给物品
	-- if not Item_ChkItem(nItemTypeId) then 
	Item_AddNewItem(nItemTypeId,sAttr,nUserId)
	-- end
	-- if not Item_ChkItem(nItemTypeId_New) then
	-- Item_AddNewItem(nItemTypeId_New,sAttr,nUserId)
	-- end
	--打log
	Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["HairRoulette"])
	--提示
	User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["HairRoulette"])
end
--领取转盘
function Nov_Mono_Revel_GetRoulette()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nItemTypeId = tNov_Mono_Revel_Cont["Id"]["Roulette"]
	local nItemTypeId_New = tNov_Mono_Revel_Cont["Id"]["Roulette_New"]
	local sAttr = tNov_Mono_Revel_Cont["Attr"][1]
	
	--活动时间检查
	if not Nov_Mono_Revel_ActivityTimeChk() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--检查背包是否已有
	if Item_ChkItem(nItemTypeId) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	--给物品
	if not Item_ChkItem(nItemTypeId) then 
	Item_AddNewItem(nItemTypeId,sAttr,nUserId)
	end
	if not Item_ChkItem(nItemTypeId_New) then
	Item_AddNewItem(nItemTypeId_New,sAttr,nUserId)
	end
	--打log
	Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["Roulette"])
	--提示
	User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["Roulette"])
end

--领特购金卡
function Nov_Mono_Revel_GetDiscount(nIndex)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nItemTypeId = tNov_Mono_Revel_Cont["Id"]["Discount"]
	local sAttr = tNov_Mono_Revel_Cont["Attr"][1]
	
	local nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Discount[nIndex]["Stc"])
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--背包已有
	if Item_ChkItem(nItemTypeId) then
		LinkNpcGossipFunc_New(nNpcId,tNov_Mono_Revel_Discount[nIndex]["Have"])
		return
	end
	
	--不能领
	if nData ~= tNov_Mono_Revel_Cont["Data"]["Already"] and nData ~= tNov_Mono_Revel_Cont["Data"]["Can"] then
		LinkNpcGossipFunc_New(nNpcId,tNov_Mono_Revel_Discount[nIndex]["NoCan"])
		return
	end
	
	--已领过
	if nData == tNov_Mono_Revel_Cont["Data"]["Already"] then
		LinkNpcGossipFunc_New(nNpcId,tNov_Mono_Revel_Discount[nIndex]["Already"])
		return
	end
	
	--背包空间检查
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,tNov_Mono_Revel_Discount[nIndex]["NoSpace"])
		return
	end
	
	--设掩码
	Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Discount[nIndex]["Stc"], tNov_Mono_Revel_Cont["Data"]["Already"])
	
	--给物品
	Item_AddNewItem(nItemTypeId,sAttr,nUserId)
	
	--打log
	Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["Discount"])
	
	--提示
	User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["Discount"])
	
	--给光效
	User_EffectAdd(tNov_Mono_Revel_Cont["Effect"]["SzObj"],tNov_Mono_Revel_Cont["Effect"]["Effect"],nUserId)
end

--领500赠天石
function Nov_Mono_Revel_GetBoxMono()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	
	local nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["BoxMono"])
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--不能领
	if nData ~= tNov_Mono_Revel_Cont["Data"]["Already"] and nData ~= tNov_Mono_Revel_Cont["Data"]["Can"] then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return
	end
	
	--已领过
	if nData == tNov_Mono_Revel_Cont["Data"]["Already"] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--天石赠满
	local nEMoneyMono = Get_UserMonoEMoney(nUserId)
	local nAddEMoneyMono = tNov_Mono_Revel_Cont["EMoneyMono"]
	if nEMoneyMono + nAddEMoneyMono > G_User_MaxEmoneyMono then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	--设掩码
	Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["BoxMono"], tNov_Mono_Revel_Cont["Data"]["Already"])
	
	--给500天石赠
	RewardTemplate_UseItem(tNov_Mono_Revel_Reward["Mono"])
	
	--给光效
	User_EffectAdd(tNov_Mono_Revel_Cont["Effect"]["SzObj"],tNov_Mono_Revel_Cont["Effect"]["Effect"],nUserId)
end

--黄金积分风暴NPC500天石赠领取
function Nov_Mono_Revel_GetLeagueMono()
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local tStc = {}
	
	local nLeagueData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["LeagueMono"])
	local nRouletteData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["RouletteMono"])
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--天石赠满
	local nEMoneyMono = Get_UserMonoEMoney(nUserId)
	local nAddEMoneyMono = tNov_Mono_Revel_Cont["EMoneyMono"]
	if nEMoneyMono + nAddEMoneyMono > G_User_MaxEmoneyMono then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--判断领取情况
	if nLeagueData == tNov_Mono_Revel_Cont["Data"]["Already"] then
		if nRouletteData == tNov_Mono_Revel_Cont["Data"]["Already"] then
			LinkNpcGossipFunc_New(nNpcId,"3-5")
			return
		elseif nRouletteData == tNov_Mono_Revel_Cont["Data"]["Can"] then
			tStc = tNov_Mono_Revel_Stc["RouletteMono"]
		else
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return
		end
	elseif nLeagueData == tNov_Mono_Revel_Cont["Data"]["Can"] then
		if nRouletteData == tNov_Mono_Revel_Cont["Data"]["Already"] then
			tStc = tNov_Mono_Revel_Stc["LeagueMono"]
		else
			tStc = tNov_Mono_Revel_Stc["LeagueMono"]
		end
	else
		if nRouletteData == tNov_Mono_Revel_Cont["Data"]["Already"] then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		elseif nRouletteData == tNov_Mono_Revel_Cont["Data"]["Can"] then
			tStc = tNov_Mono_Revel_Stc["RouletteMono"]
		else
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return
		end
	end
	
	--设掩码
	Nov_Mono_Revel_SetStc(tStc, tNov_Mono_Revel_Cont["Data"]["Already"])
	--给500天石赠
	RewardTemplate_UseItem(tNov_Mono_Revel_Reward["Mono"])
	
	--给光效
	User_EffectAdd(tNov_Mono_Revel_Cont["Effect"]["SzObj"],tNov_Mono_Revel_Cont["Effect"]["Effect"],nUserId)
end

--使用轮盘
function Nov_Mono_Revel_UseRoulette(nIndex)
	local nUserId = Get_UserId()
	local nEMoney = Get_UserEMoney(nUserId)
	
	if nIndex == 1 then
		Roulette_Extract(6811)
	elseif nIndex == 10 then
		Roulette_TenEvenPumping(6811)
	end
	
	-- if nEMoney < tNov_Mono_Revel_Cont["RouletteEMoney"][nIndex] then
		-- return
	-- end
	
	-- Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["LeagueDiscount"], tNov_Mono_Revel_Cont["Data"]["Can"])
	
	-- local nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["Roulette"])
	-- Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["Roulette"], nData + nIndex)
	
	-- nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["Roulette"])
	-- if nData >= tNov_Mono_Revel_Cont["RouletteNum"] then
		-- Nov_Mono_Revel_SetCanStc(tNov_Mono_Revel_Stc["RouletteMono"])
	-- end
end

--接投注选项
function Nov_Mono_Revel_UseEMoneyChk(nItemTypeId)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nTemp = 0
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--投注时间检查
	for k,v in pairs(tNov_Mono_Revel_Time["Buy"][gNov_Mono_Revel_Server]) do
		if Sys_ChkDayTime(v) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	
	--清掩码
	for k,v in pairs(tG_Nov_Mono_Revel_Count[nItemTypeId]) do
		if nUserId == v then
			nTemp = 1
			break
		end
	end
	if nTemp == 0 then
		Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["One"][nItemTypeId], 0)
	end
	
	local nDataNum = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["One"][nItemTypeId])
	local nHalfNum = tNov_Mono_Revel_Cont[nItemTypeId]["Num"] / 2
	local nTotalNum = tNov_Mono_Revel_Cont[nItemTypeId]["Num"]
	local nGlobalId = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId, nPos)
	
	if nItemTypeId == tNov_Mono_Revel_Cont["Id"]["Drill"] then
		nHalfNum = tNov_Mono_Revel_Cont["TicketNum"]
		tNpcGossip[19786]["tOption2-1"] = {8,9,10,25}
	else
		tNpcGossip[19786]["tOption2-1"] = {8,9,10}
	end
	
	tNpcGossip[19786]["Text212"] = string.format(tNov_Mono_Revel_Text[19786]["Text212"], nDataNum, nHalfNum)
	tNpcGossip[19786]["Text213"] = string.format(tNov_Mono_Revel_Text[19786]["Text213"], nGlobalData, nTotalNum)
	tNpcGossip[19786]["OptionFunc8"] = string.format("Nov_Mono_Revel_UseEMoney</N>%d</N>1", nItemTypeId)
	tNpcGossip[19786]["OptionFunc9"] = string.format("Nov_Mono_Revel_UseEMoney</N>%d</N>5", nItemTypeId)
	tNpcGossip[19786]["OptionFunc10"] = string.format("Nov_Mono_Revel_UseEMoney</N>%d</N>10", nItemTypeId)
	tNpcGossip[19786]["OptionFunc25"] = string.format("Nov_Mono_Revel_UseEMoney</N>%d</N>50", nItemTypeId)
	
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--接投注多少天石
function Nov_Mono_Revel_UseEMoney(nItemTypeId, nNum)
	local nUserId = Get_UserId()
	local nNpcId = Get_NpcId()
	local nEMoney = Get_UserEMoney(nUserId)
	local nTotalNum = tNov_Mono_Revel_Cont["TicketNum"]
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--天石判断
	if nEMoney < nNum then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--是否购满100天石
	local nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["One"]["Num"])
	if nData <= 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	elseif nData - nNum < 0 then
		tNpcGossip[19786]["Text351"] = string.format(tNov_Mono_Revel_Text[19786]["Text351"], nTotalNum - nData, nData)
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	end
	
	--背包空间判断
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	--投注天石上限
	local nDataNum = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["One"][nItemTypeId])
	local sItemName = Get_ItemtypeName(tonumber(nItemTypeId))
	local nHalfNum = tNov_Mono_Revel_Cont[nItemTypeId]["Num"] / 2
	local nGlobalId = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId, nPos)
	local sTalk = ""
	
	if nDataNum >= nHalfNum then
		sTalk = string.format(tNov_Mono_Revel_Text["Channel2005"]["UseTicket"], sItemName, nHalfNum)
		User_TalkChannel2005(sTalk)
		return
	elseif nDataNum + nNum > nHalfNum then
		tNpcGossip[19786]["Text361"] = string.format(tNov_Mono_Revel_Text[19786]["Text361"], sItemName, nDataNum, nHalfNum - nDataNum)
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	
	if nGlobalData + nNum > tNov_Mono_Revel_Cont[nItemTypeId]["Num"] then
		tNpcGossip[19786]["Text371"] = string.format(tNov_Mono_Revel_Text[19786]["Text371"], sItemName, nGlobalData, tNov_Mono_Revel_Cont[nItemTypeId]["Num"] - nGlobalData)
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
	
	--接确认购买选项
	tNpcGossip[19786]["Text411"] = string.format(tNov_Mono_Revel_Text[19786]["Text411"], nNum)
	tNpcGossip[19786]["OptionFunc19"] = string.format("Nov_Mono_Revel_UseEMoneyConfirm</N>%d</N>%d", nItemTypeId, nNum)
	LinkNpcGossipFunc_New(nNpcId,"4-1")
end

function Nov_Mono_Revel_UseEMoneyConfirm(nItemTypeId, nNum)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nNpcId = Get_NpcId()
	local nEMoney = Get_UserEMoney(nUserId)
	
	--活动时间检查
	if not Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--投注时间检查
	for k,v in pairs(tNov_Mono_Revel_Time["Buy"][gNov_Mono_Revel_Server]) do
		if Sys_ChkDayTime(v) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
	end
	
	--天石判断
	if nEMoney < nNum then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	
	--背包空间判断
	if not User_CheckLeftSpace(tNov_Mono_Revel_Cont["Space"],nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	--投注天石上限
	local nDataNum = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["One"][nItemTypeId])
	local sItemName = Get_ItemtypeName(tonumber(nItemTypeId))
	local nHalfNum = tNov_Mono_Revel_Cont[nItemTypeId]["Num"] / 2
	local nGlobalId = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId, nPos)
	local sTalk = ""
	
	if nDataNum >= nHalfNum then
		sTalk = string.format(tNov_Mono_Revel_Text["Channel2005"]["UseTicket"], sItemName, nHalfNum)
		User_TalkChannel2005(sTalk)
		return
	elseif nDataNum + nNum > nHalfNum then
		tNpcGossip[19786]["Text361"] = string.format(tNov_Mono_Revel_Text[19786]["Text361"], sItemName, nDataNum, nHalfNum - nDataNum)
		LinkNpcGossipFunc_New(nNpcId,"3-6")
		return
	end
	
	if nGlobalData + nNum > tNov_Mono_Revel_Cont[nItemTypeId]["Num"] then
		tNpcGossip[19786]["Text371"] = string.format(tNov_Mono_Revel_Text[19786]["Text371"], sItemName, nGlobalData, tNov_Mono_Revel_Cont[nItemTypeId]["Num"] - nGlobalData)
		LinkNpcGossipFunc_New(nNpcId,"3-7")
		return
	end
	
	--扣除天石
	User_AddEMoney((-1) * nNum,nUserId)
	
	--设置掩码
	local nData = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["One"]["Num"])
	local nDataNum = Nov_Mono_Revel_GetStc(tNov_Mono_Revel_Stc["One"][nItemTypeId])
	local nGlobalId = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId, nPos)
	Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["One"]["Num"], nData - nNum)
	Nov_Mono_Revel_SetStc(tNov_Mono_Revel_Stc["One"][nItemTypeId], nDataNum + nNum)
	Sys_SetSynaGlobalData(nGlobalId,nPos,nGlobalData + nNum)
	
	--天石log
	local sEMoneyLog = tNov_Mono_Revel_EMoneyLog[nItemTypeId]
	Sys_SaveEmoneyBuy(string.format(sEMoneyLog, nNum, nNum))
	
	--给物品
	local nCardId = tNov_Mono_Revel_Cont[nItemTypeId]["Id"]
	local sAttr = tNov_Mono_Revel_Cont["Attr"][1]
	local nStrength = tNov_Mono_Revel_Cont["Strength"] * nNum
	local sLog = ""
	
	if not Item_ChkItem(nCardId) then
		Item_AddNewItem(nCardId,sAttr,nUserId)
		sLog = string.format(tNov_Mono_Revel_Log["GetCard"], nNum, nCardId, nStrength)
		User_TalkChannel2005(tNov_Mono_Revel_Text["Channel2005"]["Ticket"])
	else
		sLog = string.format(tNov_Mono_Revel_Log["GetStrength"], nNum, nStrength)
	end
	
	User_AddStrengthValue(nStrength ,nUserId)
	
	--log
	Sys_SaveActionFestivalLog(sLog)
	
	sTalk = string.format(tNov_Mono_Revel_Text["Channel2005"]["UseTicketSuc"], nNum, sItemName, nStrength)
	User_TalkChannel2005(sTalk)
	
	--给光效
	User_EffectAdd(tNov_Mono_Revel_Cont["Effect"]["SzObj"],tNov_Mono_Revel_Cont["Effect"]["Effect"],nUserId)
	
	--显示夺宝几率
	local nProba = (nDataNum + nNum) * 100 / tNov_Mono_Revel_Cont[nItemTypeId]["Num"]
	local nIndex = tNov_Mono_Revel_Cont[nItemTypeId]["Index"]
	local sText3 = "Text4"..nIndex.."3"
	local sText4 = "Text4"..nIndex.."4"
	local sText6 = "Text4"..nIndex.."6"
	tNpcGossip[19786][sText3] = string.format(tNov_Mono_Revel_Text[19786][sText3], nDataNum + nNum)
	tNpcGossip[19786][sText4] = string.format(tNov_Mono_Revel_Text[19786][sText4], nProba)
	tNpcGossip[19786][sText6] = string.format(tNov_Mono_Revel_Text[19786][sText6], nGlobalData + nNum)
	LinkNpcGossipFunc_New(nNpcId, "4-"..nIndex)
	
	--往众筹统计表增加数据
	for i = 1, nNum do
		table.insert(tG_Nov_Mono_Revel_Count[nItemTypeId], nUserId)
		table.insert(tG_Nov_Mono_Revel_Name[nItemTypeId], sUserName)
	end
	
	--开奖
	local nTotalNum = tNov_Mono_Revel_Cont[nItemTypeId]["Num"]
	if nGlobalData + nNum == nTotalNum then
		Nov_Mono_Revel_GetAward(nItemTypeId)
	end
end

--开奖
function Nov_Mono_Revel_GetAward(nItemTypeId)
	local nTotalNum = #tG_Nov_Mono_Revel_Count[nItemTypeId]
	
	--从众筹统计表随机一个人
	local nRand = math.random(1, nTotalNum)
	local nUserGetId = tG_Nov_Mono_Revel_Count[nItemTypeId][nRand]
	local sUserGetName = tG_Nov_Mono_Revel_Name[nItemTypeId][nRand]
	
	--建立用户id临时表，tTemp[Id] = true
	local tTemp = {}
	for k,v in pairs(tG_Nov_Mono_Revel_Count[nItemTypeId]) do
		tTemp[v] = true
	end
	
	--清动态全局表
	local nGlobalId = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Num"][nItemTypeId]["Pos"]
	local nNum = Get_SysDynaGlobalData(nGlobalId, nPos)
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
	
	local nRoundGlobalId = tNov_Mono_Revel_GlobalData["Round"][nItemTypeId]["Id"]
	local nRoundPos = tNov_Mono_Revel_GlobalData["Round"][nItemTypeId]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nRoundGlobalId, nRoundPos)
	
	Sys_SetSynaGlobalData(nRoundGlobalId,nRoundPos,nGlobalData + 1)
	
	local nData = 0
	local tTab = {}
	
	for k,v in pairs(tTemp) do
		nData = 0
		for i,j in pairs(tG_Nov_Mono_Revel_Count[nItemTypeId]) do
			if j == k then
				nData = nData + 1
			end
		end
		
		--往记录卡添加数据
		tTab = {}
		table.insert(tTab, nGlobalData)
		table.insert(tTab, nNum)
		table.insert(tTab, nData)
		if k == nUserGetId then
			table.insert(tTab, 8)
		else
			table.insert(tTab, 9)
		end
		
		tG_Nov_Mono_Revel_Record[nItemTypeId][k] = tTab
	end
	
	--清众筹统计表
	tG_Nov_Mono_Revel_Count[nItemTypeId] = {}
	tG_Nov_Mono_Revel_Name[nItemTypeId] = {}
	
	--邮件发奖
	local sItemName = Get_ItemtypeName(tonumber(nItemTypeId))
	local nActionId = tNov_Mono_Revel_Cont[nItemTypeId]["ActionId"]
	local nExistDay = tNov_Mono_Revel_Cont[nItemTypeId]["ExistDay"]
	local sSender =tNov_Mono_Revel_Text["Mail"]["Award"]["Sender"]
	local sTitle = tNov_Mono_Revel_Text["Mail"]["Award"]["Title"]
	local sContent = string.format(tNov_Mono_Revel_Text["Mail"]["Award"]["Content"], sItemName)

	Sys_SendMail(nUserGetId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
	
	Sys_SaveActionFestivalLog(string.format(tNov_Mono_Revel_Log["GetItem"], nItemTypeId))
	
	--全服公告
	local sBroadcast = string.format(tNov_Mono_Revel_Text["Broadcast"]["GetAward"], nGlobalData, sUserGetName, sItemName)
	Sys_SystemBroadcast(sBroadcast)
end

--多次检测清零
function Nov_Mono_Revel_ToZero(nHour, nMinute)
	local nGlobalId = tNov_Mono_Revel_GlobalData["Zero"]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Zero"]["Pos"]
	local nGlobalData = Get_SysDynaGlobalData(nGlobalId, nPos)

	if gNov_Mono_Revel_Server == 0 then
		gNov_Mono_Revel_Server = Get_SysDynaGlobalData4(51384)
	end
	
	--判断服务器
	if nHour == 23 and gNov_Mono_Revel_Server == 2 then
		return
	end
	
	if nHour == 7 and gNov_Mono_Revel_Server == 1 then
		return
	end
	
	if nGlobalData == 0 then
		Sys_SetSynaGlobalData(nGlobalId,nPos,1)
		Nov_Mono_Revel_IsGetAward(nHour, nMinute)
	end
end

--清零开关重置
function Nov_Mono_Revel_ReturnZero()
	local nGlobalId = tNov_Mono_Revel_GlobalData["Zero"]["Id"]
	local nPos = tNov_Mono_Revel_GlobalData["Zero"]["Pos"]
	
	Sys_SetSynaGlobalData(nGlobalId,nPos,0)
end

--时间自检检查到服务器维护时间时是否未成团
function Nov_Mono_Revel_IsGetAward(nHour, nMinute)
	local nGlobalId = 0
	local nPos = 0
	local nGlobalData = 0
	local nRound = 0
	local nEvent = 0
	local nType = 0
	local nSave = 0
	local nData = 0
	local nActionId = 0
	local nExistDay = 0
	local sSender = ""
	local sTitle = ""
	local sContent = ""
	local sEMoneyLog = ""
	local tTemp = {}
	local tTab = {}
	
	if gNov_Mono_Revel_Server == 0 then
		gNov_Mono_Revel_Server = Get_SysDynaGlobalData4(51384)
	end
	
	--判断服务器
	if nHour == 23 and gNov_Mono_Revel_Server == 2 then
		return
	end
	
	if nHour == 7 and gNov_Mono_Revel_Server == 1 then
		return
	end
	
	for k,v in pairs(tG_Nov_Mono_Revel_Count) do
		nGlobalId = tNov_Mono_Revel_GlobalData["Num"][k]["Id"]
		nPos = tNov_Mono_Revel_GlobalData["Num"][k]["Pos"]
		nGlobalData = Get_SysDynaGlobalData(nGlobalId, nPos)
		
		if nGlobalData > 0 then
			--清空全局投券数量
			Sys_SetSynaGlobalData(nGlobalId,nPos,0)
			--建立有投券玩家id临时表
			tTemp = {}
			for i,j in pairs(tG_Nov_Mono_Revel_Count[k]) do
				tTemp[j] = true
			end
			
			nGlobalId = tNov_Mono_Revel_GlobalData["Round"][k]["Id"]
			nPos = tNov_Mono_Revel_GlobalData["Round"][k]["Pos"]
			nRound = Get_SysDynaGlobalData(nGlobalId, nPos)
			
			for i,j in pairs(tTemp) do
				nData = 0
				for m,n in pairs(tG_Nov_Mono_Revel_Count[k]) do
					if n == i then
						nData = nData + 1
					end
				end
				
				--往记录卡添加数据
				tTab = {}
				table.insert(tTab, nRound)
				table.insert(tTab, nGlobalData)
				table.insert(tTab, nData)
				table.insert(tTab, 10)
				tG_Nov_Mono_Revel_Record[k][i] = tTab
				
				if nData > 0 then
					nActionId = nData + tNov_Mono_Revel_Cont["ActionId"]
					nExistDay = tNov_Mono_Revel_Cont[k]["ExistDay"]
					sSender =tNov_Mono_Revel_Text["Mail"]["Return"]["Sender"]
					sTitle = tNov_Mono_Revel_Text["Mail"]["Return"]["Title"]
					sContent = string.format(tNov_Mono_Revel_Text["Mail"]["Return"]["Content"], nData)
					
					Sys_SendMail(i,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
					
					sEMoneyLog = tNov_Mono_Revel_EMoneyLog[k]
					Sys_SaveEmoneyBuy(string.format(sEMoneyLog, (-1) * nData, (-1) * nData), i)
					
					Sys_SaveActionFestivalLog(string.format(tNov_Mono_Revel_Log["GetEMoney"], nData), i)
				end
			end
			
			--清空众筹统计表
			tG_Nov_Mono_Revel_Count[k] = {}
			tG_Nov_Mono_Revel_Name[k] = {}
		end
	end
end
function tNov_Mono_Revel_OldServerChange()
	--更改转盘id
	tNov_Mono_Revel_Time["Activity"] = tActivityTime["BoundCarnival"]["OldActivityTime"]
	tNov_Mono_Revel_Cont["Id"]["Roulette"] = 3308977
	tNov_Mono_Revel_Log["Roulette"] = "0,0,0,0,12000541,2,3308977,1"
	--修改对白
	tNpcGossip[19785]["Text113"] = tNov_Mono_Revel_Text[19785]["Text114"]
end

--------------------------------------NPC模块--------------------------------------------
--天石大甩卖
tNpcFace[4384] = 119
tNpcGossip[19783] = tNpcGossip[19783] or DefaultNpc:new{}
tNpcGossip[19783]["OptionHidden"] = 1

tNpcGossip[19783]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[19783]["Text111"] = tNov_Mono_Revel_Text[19783]["Text111"]
tNpcGossip[19783]["Text112"] = tNov_Mono_Revel_Text[19783]["Text112"]
tNpcGossip[19783]["Text113"] = tNov_Mono_Revel_Text[19783]["Text113"]
tNpcGossip[19783]["Text114"] = tNov_Mono_Revel_Text[19783]["Text114"]
tNpcGossip[19783]["Text115"] = tNov_Mono_Revel_Text[19783]["Text115"]
tNpcGossip[19783]["Text116"] = tNov_Mono_Revel_Text[19783]["Text116"]
tNpcGossip[19783]["Text117"] = tNov_Mono_Revel_Text[19783]["Text117"]
tNpcGossip[19783]["Text118"] = tNov_Mono_Revel_Text[19783]["Text118"]
--tNpcGossip[19783]["Text119"] = tNov_Mono_Revel_Text[19783]["Text119"]
tNpcGossip[19783]["tOption1-1"] = {1,2,3,4,6,7}

tNpcGossip[19783]["ChkFunc1-1"] = function()
	return Nov_Mono_Revel_ChkMonoNPC()
end
tNpcGossip[19783]["Option5"] = tNov_Mono_Revel_Text[19783]["Option5"]
tNpcGossip[19783]["Option7"] = tNov_Mono_Revel_Text[19783]["Option7"]
tNpcGossip[19783]["OptionFunc1"] = "Nov_Mono_Revel_Buy</N>1</N>1"
tNpcGossip[19783]["OptionFunc2"] = "Nov_Mono_Revel_Buy</N>2</N>1"
tNpcGossip[19783]["OptionFunc3"] = "Nov_Mono_Revel_Buy</N>3</N>1"
tNpcGossip[19783]["OptionFunc4"] = "Nov_Mono_Revel_Buy</N>4</N>1"
--tNpcGossip[19783]["OptionFunc5"] = "Nov_Mono_Revel_GetDiscount</N>1"
tNpcGossip[19783]["OptionFunc6"] = "Nov_Mono_Revel_GetBoxMono"

tNpcGossip[19783]["Text1-2"] = {121}
tNpcGossip[19783]["Text121"] = tNov_Mono_Revel_Text[19783]["Text121"]
tNpcGossip[19783]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		return false
	else
		return true
	end
end
tNpcGossip[19783]["tOption1-2"] = {8}
tNpcGossip[19783]["Option8"] = tNov_Mono_Revel_Text[19783]["Option8"]

tNpcGossip[19783]["Text2-1"] = {211}
tNpcGossip[19783]["tOption2-1"] = {9}
tNpcGossip[19783]["Option9"] = tNov_Mono_Revel_Text[19783]["Option9"]

tNpcGossip[19783]["Text2-2"] = {221}
tNpcGossip[19783]["tOption2-2"] = {10}
tNpcGossip[19783]["Option10"] = tNov_Mono_Revel_Text[19783]["Option10"]

tNpcGossip[19783]["Text2-3"] = {231}
tNpcGossip[19783]["Text231"] = tNov_Mono_Revel_Text[19783]["Text231"]
tNpcGossip[19783]["tOption2-3"] = {11}
tNpcGossip[19783]["Option11"] = tNov_Mono_Revel_Text[19783]["Option11"]

tNpcGossip[19783]["Text2-4"] = {241}
tNpcGossip[19783]["tOption2-4"] = {12,13}
tNpcGossip[19783]["Option12"] = tNov_Mono_Revel_Text[19783]["Option12"]
tNpcGossip[19783]["Option13"] = tNov_Mono_Revel_Text[19783]["Option13"]

tNpcGossip[19783]["Text2-5"] = {251}
tNpcGossip[19783]["Text251"] = tNov_Mono_Revel_Text[19783]["Text251"]
tNpcGossip[19783]["tOption2-5"] = {14}
tNpcGossip[19783]["Option14"] = tNov_Mono_Revel_Text[19783]["Option14"]

tNpcGossip[19783]["Text2-6"] = {261}
tNpcGossip[19783]["Text261"] = tNov_Mono_Revel_Text[19783]["Text261"]
tNpcGossip[19783]["tOption2-6"] = {15}
tNpcGossip[19783]["Option15"] = tNov_Mono_Revel_Text[19783]["Option15"]

tNpcGossip[19783]["Text2-7"] = {271}
tNpcGossip[19783]["Text271"] = tNov_Mono_Revel_Text[19783]["Text271"]
tNpcGossip[19783]["tOption2-7"] = {16}
tNpcGossip[19783]["Option16"] = tNov_Mono_Revel_Text[19783]["Option16"]

tNpcGossip[19783]["Text2-8"] = {281}
tNpcGossip[19783]["Text281"] = tNov_Mono_Revel_Text[19783]["Text281"]
tNpcGossip[19783]["tOption2-8"] = {17}
tNpcGossip[19783]["Option17"] = tNov_Mono_Revel_Text[19783]["Option17"]

tNpcGossip[19783]["Text2-9"] = {291}
tNpcGossip[19783]["Text291"] = tNov_Mono_Revel_Text[19783]["Text291"]
tNpcGossip[19783]["tOption2-9"] = {18}
tNpcGossip[19783]["Option18"] = tNov_Mono_Revel_Text[19783]["Option18"]

tNpcGossip[19783]["Text3-1"] = {311}
tNpcGossip[19783]["Text311"] = tNov_Mono_Revel_Text[19783]["Text311"]
tNpcGossip[19783]["tOption3-1"] = {19}
tNpcGossip[19783]["Option19"] = tNov_Mono_Revel_Text[19783]["Option19"]

tNpcGossip[19783]["Text3-2"] = {321}
tNpcGossip[19783]["Text321"] = tNov_Mono_Revel_Text[19783]["Text321"]
tNpcGossip[19783]["tOption3-2"] = {20}
tNpcGossip[19783]["Option20"] = tNov_Mono_Revel_Text[19783]["Option20"]

--百宝大放送
tNpcFace[4385] = 111
tNpcGossip[19784] = tNpcGossip[19784] or DefaultNpc:new{}
tNpcGossip[19784]["OptionHidden"] = 1

tNpcGossip[19784]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[19784]["Text111"] = tNov_Mono_Revel_Text[19784]["Text111"]
tNpcGossip[19784]["Text112"] = tNov_Mono_Revel_Text[19784]["Text112"]
tNpcGossip[19784]["Text113"] = tNov_Mono_Revel_Text[19784]["Text113"]
tNpcGossip[19784]["Text114"] = tNov_Mono_Revel_Text[19784]["Text114"]
tNpcGossip[19784]["Text115"] = tNov_Mono_Revel_Text[19784]["Text115"]
tNpcGossip[19784]["Text116"] = tNov_Mono_Revel_Text[19784]["Text116"]
tNpcGossip[19784]["Text117"] = tNov_Mono_Revel_Text[19784]["Text117"]
tNpcGossip[19784]["Text118"] = tNov_Mono_Revel_Text[19784]["Text118"]
tNpcGossip[19784]["Text119"] = tNov_Mono_Revel_Text[19784]["Text119"]
tNpcGossip[19784]["tOption1-1"] = {1,2,3,4,5,6,7}

tNpcGossip[19784]["ChkFunc1-1"] = function()
	return Nov_Mono_Revel_ChkGoodsNPC()
end
tNpcGossip[19784]["Option6"] = tNov_Mono_Revel_Text[19784]["Option6"]
tNpcGossip[19784]["OptionPoint6"] = "3-1"
tNpcGossip[19784]["Option7"] = tNov_Mono_Revel_Text[19784]["Option7"]
tNpcGossip[19784]["OptionFunc1"] = "Nov_Mono_Revel_Buy</N>1</N>2"
tNpcGossip[19784]["OptionFunc2"] = "Nov_Mono_Revel_Buy</N>2</N>2"
tNpcGossip[19784]["OptionFunc3"] = "Nov_Mono_Revel_Buy</N>3</N>2"
tNpcGossip[19784]["OptionFunc4"] = "Nov_Mono_Revel_Buy</N>4</N>2"
tNpcGossip[19784]["OptionFunc5"] = "Nov_Mono_Revel_Buy</N>5</N>2"

tNpcGossip[19784]["Text1-2"] = {121}
tNpcGossip[19784]["Text121"] = tNov_Mono_Revel_Text[19784]["Text121"]
tNpcGossip[19784]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		return false
	else
		return true
	end
end
tNpcGossip[19784]["tOption1-2"] = {8}
tNpcGossip[19784]["Option8"] = tNov_Mono_Revel_Text[19784]["Option8"]

tNpcGossip[19784]["Text2-1"] = {211}
tNpcGossip[19784]["tOption2-1"] = {9}
tNpcGossip[19784]["Option9"] = tNov_Mono_Revel_Text[19784]["Option9"]

tNpcGossip[19784]["Text2-2"] = {221}
tNpcGossip[19784]["tOption2-2"] = {10}
tNpcGossip[19784]["Option10"] = tNov_Mono_Revel_Text[19784]["Option10"]

tNpcGossip[19784]["Text2-3"] = {231}
tNpcGossip[19784]["Text231"] = tNov_Mono_Revel_Text[19784]["Text231"]
tNpcGossip[19784]["tOption2-3"] = {11}
tNpcGossip[19784]["Option11"] = tNov_Mono_Revel_Text[19784]["Option11"]

tNpcGossip[19784]["Text2-4"] = {241}
tNpcGossip[19784]["tOption2-4"] = {12,13}
tNpcGossip[19784]["Option12"] = tNov_Mono_Revel_Text[19784]["Option12"]
tNpcGossip[19784]["Option13"] = tNov_Mono_Revel_Text[19784]["Option13"]

tNpcGossip[19784]["Text3-1"] = {311,312,313,314,315,316}
tNpcGossip[19784]["Text311"] = tNov_Mono_Revel_Text[19784]["Text311"]
tNpcGossip[19784]["Text312"] = tNov_Mono_Revel_Text[19784]["Text312"]
tNpcGossip[19784]["Text313"] = tNov_Mono_Revel_Text[19784]["Text313"]
tNpcGossip[19784]["Text314"] = tNov_Mono_Revel_Text[19784]["Text314"]
tNpcGossip[19784]["Text315"] = tNov_Mono_Revel_Text[19784]["Text315"]
tNpcGossip[19784]["Text316"] = tNov_Mono_Revel_Text[19784]["Text316"]
tNpcGossip[19784]["tOption3-1"] = {14}
tNpcGossip[19784]["Option14"] = tNov_Mono_Revel_Text[19784]["Option14"]

--黄金积分风暴
tNpcFace[4386] = 48
tNpcGossip[19785] = tNpcGossip[19785] or DefaultNpc:new{}
tNpcGossip[19785]["OptionHidden"] = 1

tNpcGossip[19785]["Text1-1"] = {111,112,113}
tNpcGossip[19785]["Text111"] = tNov_Mono_Revel_Text[19785]["Text111"]
tNpcGossip[19785]["Text112"] = tNov_Mono_Revel_Text[19785]["Text112"]
tNpcGossip[19785]["Text113"] = tNov_Mono_Revel_Text[19785]["Text113"]
--tNpcGossip[19785]["Text114"] = tNov_Mono_Revel_Text[19785]["Text114"]
--tNpcGossip[19785]["Text115"] = tNov_Mono_Revel_Text[19785]["Text115"]
--tNpcGossip[19785]["Text116"] = tNov_Mono_Revel_Text[19785]["Text116"]

tNpcGossip[19785]["ChkFunc1-1"] = function()
	if Nov_Mono_Revel_NewServerChk() then
		tNpcGossip[19785]["Text113"] = tNov_Mono_Revel_Text[19785]["Text114"]
	end
	return Nov_Mono_Revel_ChkLeagueNPC()
end
--tNpcGossip[19785]["Option1"] = tNov_Mono_Revel_Text[19785]["Option1"]
tNpcGossip[19785]["Option2"] = tNov_Mono_Revel_Text[19785]["Option2"]
--tNpcGossip[19785]["Option3"] = tNov_Mono_Revel_Text[19785]["Option3"]
tNpcGossip[19785]["Option5"] = tNov_Mono_Revel_Text[19785]["Option5"]
tNpcGossip[19785]["Option211"] = tNov_Mono_Revel_Text[19785]["Option211"]
--tNpcGossip[19785]["OptionFunc1"] = "Nov_Mono_Revel_BuyLeague"
tNpcGossip[19785]["OptionFunc2"] = "Nov_Mono_Revel_GetRoulette"
tNpcGossip[19785]["OptionFunc211"] = "Nov_Mono_Revel_HairGetRoulette"

--tNpcGossip[19785]["OptionFunc3"] = "Nov_Mono_Revel_GetDiscount</N>2"
--tNpcGossip[19785]["OptionFunc4"] = "Nov_Mono_Revel_GetLeagueMono"

tNpcGossip[19785]["Text1-2"] = {121}
tNpcGossip[19785]["Text121"] = tNov_Mono_Revel_Text[19785]["Text121"]
tNpcGossip[19785]["ChkFunc1-2"] = function()
	if Nov_Mono_Revel_ActivityTimeChk() then
		return false
	else
		return true
	end
end
tNpcGossip[19785]["tOption1-2"] = {7}
tNpcGossip[19785]["Option7"] = tNov_Mono_Revel_Text[19785]["Option7"]

tNpcGossip[19785]["Text2-1"] = {211}
tNpcGossip[19785]["Text211"] = tNov_Mono_Revel_Text[19785]["Text211"]
tNpcGossip[19785]["tOption2-1"] = {8}
tNpcGossip[19785]["Option8"] = tNov_Mono_Revel_Text[19785]["Option8"]

tNpcGossip[19785]["Text2-2"] = {221}
tNpcGossip[19785]["Text221"] = tNov_Mono_Revel_Text[19785]["Text221"]
tNpcGossip[19785]["tOption2-2"] = {9}
tNpcGossip[19785]["Option9"] = tNov_Mono_Revel_Text[19785]["Option9"]

tNpcGossip[19785]["Text2-3"] = {231,232}
tNpcGossip[19785]["Text231"] = tNov_Mono_Revel_Text[19785]["Text231"]
tNpcGossip[19785]["Text232"] = tNov_Mono_Revel_Text[19785]["Text232"]
tNpcGossip[19785]["tOption2-3"] = {10,11}
tNpcGossip[19785]["Option10"] = tNov_Mono_Revel_Text[19785]["Option10"]
tNpcGossip[19785]["OptionFunc10"] = "Nov_Mono_Revel_BuyLeagueConfirm"
tNpcGossip[19785]["Option11"] = tNov_Mono_Revel_Text[19785]["Option11"]

tNpcGossip[19785]["Text2-4"] = {241}
tNpcGossip[19785]["Text241"] = tNov_Mono_Revel_Text[19785]["Text241"]
tNpcGossip[19785]["tOption2-4"] = {12}
tNpcGossip[19785]["Option12"] = tNov_Mono_Revel_Text[19785]["Option12"]

tNpcGossip[19785]["Text2-5"] = {251}
tNpcGossip[19785]["Text251"] = tNov_Mono_Revel_Text[19785]["Text251"]
tNpcGossip[19785]["tOption2-5"] = {13}
tNpcGossip[19785]["Option13"] = tNov_Mono_Revel_Text[19785]["Option13"]

tNpcGossip[19785]["Text2-6"] = {261}
tNpcGossip[19785]["Text261"] = tNov_Mono_Revel_Text[19785]["Text261"]
tNpcGossip[19785]["tOption2-6"] = {14}
tNpcGossip[19785]["Option14"] = tNov_Mono_Revel_Text[19785]["Option14"]

tNpcGossip[19785]["Text2-7"] = {271}
tNpcGossip[19785]["Text271"] = tNov_Mono_Revel_Text[19785]["Text271"]
tNpcGossip[19785]["tOption2-7"] = {15}
tNpcGossip[19785]["Option15"] = tNov_Mono_Revel_Text[19785]["Option15"]

tNpcGossip[19785]["Text2-8"] = {281}
tNpcGossip[19785]["Text281"] = tNov_Mono_Revel_Text[19785]["Text281"]
tNpcGossip[19785]["tOption2-8"] = {16}
tNpcGossip[19785]["Option16"] = tNov_Mono_Revel_Text[19785]["Option16"]

tNpcGossip[19785]["Text2-9"] = {291}
tNpcGossip[19785]["Text291"] = tNov_Mono_Revel_Text[19785]["Text291"]
tNpcGossip[19785]["tOption2-9"] = {17}
tNpcGossip[19785]["Option17"] = tNov_Mono_Revel_Text[19785]["Option17"]

tNpcGossip[19785]["Text3-1"] = {311}
tNpcGossip[19785]["Text311"] = tNov_Mono_Revel_Text[19785]["Text311"]
tNpcGossip[19785]["tOption3-1"] = {18}
tNpcGossip[19785]["Option18"] = tNov_Mono_Revel_Text[19785]["Option18"]

tNpcGossip[19785]["Text3-2"] = {321}
tNpcGossip[19785]["Text321"] = tNov_Mono_Revel_Text[19785]["Text321"]
tNpcGossip[19785]["tOption3-2"] = {19}
tNpcGossip[19785]["Option19"] = tNov_Mono_Revel_Text[19785]["Option19"]

tNpcGossip[19785]["Text3-3"] = {331}
tNpcGossip[19785]["Text331"] = tNov_Mono_Revel_Text[19785]["Text331"]
tNpcGossip[19785]["tOption3-3"] = {20}
tNpcGossip[19785]["Option20"] = tNov_Mono_Revel_Text[19785]["Option20"]

tNpcGossip[19785]["Text3-4"] = {341}
tNpcGossip[19785]["Text341"] = tNov_Mono_Revel_Text[19785]["Text341"]
tNpcGossip[19785]["tOption3-4"] = {21}
tNpcGossip[19785]["Option21"] = tNov_Mono_Revel_Text[19785]["Option21"]

tNpcGossip[19785]["Text3-5"] = {351}
tNpcGossip[19785]["Text351"] = tNov_Mono_Revel_Text[19785]["Text351"]
tNpcGossip[19785]["tOption3-5"] = {22}
tNpcGossip[19785]["Option22"] = tNov_Mono_Revel_Text[19785]["Option22"]


tNpcGossip[21876] = tNpcGossip[19785]


--夺宝幸运星
tNpcFace[4387] = 1
tNpcGossip[19786] = tNpcGossip[19786] or DefaultNpc:new{}
tNpcGossip[19786]["OptionHidden"] = 1

tNpcGossip[19786]["Text1-1"] = {111,112,113,114}
tNpcGossip[19786]["Text111"] = tNov_Mono_Revel_Text[19786]["Text111"]
tNpcGossip[19786]["Text112"] = tNov_Mono_Revel_Text[19786]["Text112"]
tNpcGossip[19786]["Text114"] = tNov_Mono_Revel_Text[19786]["Text114"]
tNpcGossip[19786]["ChkFunc1-1"] = function()
	return Nov_Mono_Revel_ChkOneNPC()
end
tNpcGossip[19786]["tOption1-1"] = {1,2,3,4,5,6}
tNpcGossip[19786]["Option1"] = tNov_Mono_Revel_Text[19786]["Option1"]
tNpcGossip[19786]["Option2"] = tNov_Mono_Revel_Text[19786]["Option2"]
tNpcGossip[19786]["Option3"] = tNov_Mono_Revel_Text[19786]["Option3"]
tNpcGossip[19786]["Option4"] = tNov_Mono_Revel_Text[19786]["Option4"]
tNpcGossip[19786]["Option5"] = tNov_Mono_Revel_Text[19786]["Option5"]
tNpcGossip[19786]["Option6"] = tNov_Mono_Revel_Text[19786]["Option6"]
tNpcGossip[19786]["OptionFunc1"] = "Nov_Mono_Revel_UseEMoneyChk</N>1200006"
tNpcGossip[19786]["OptionFunc2"] = "Nov_Mono_Revel_UseEMoneyChk</N>723694"
tNpcGossip[19786]["OptionFunc3"] = "Nov_Mono_Revel_UseEMoneyChk</N>1088000"
tNpcGossip[19786]["OptionFunc4"] = "Nov_Mono_Revel_UseEMoneyChk</N>730003"
tNpcGossip[19786]["OptionPoint5"] = "2-2"

tNpcGossip[19786]["Text1-2"] = {121}
tNpcGossip[19786]["Text121"] = tNov_Mono_Revel_Text[19786]["Text121"]
tNpcGossip[19786]["ChkFunc1-2"] = function()
	if Sys_ChkFullTime(tNov_Mono_Revel_Time["Activity"]) then
		return false
	else
		return true
	end
end
tNpcGossip[19786]["tOption1-2"] = {7}
tNpcGossip[19786]["Option7"] = tNov_Mono_Revel_Text[19786]["Option7"]

tNpcGossip[19786]["Text2-1"] = {211,212,213}
tNpcGossip[19786]["Text211"] = tNov_Mono_Revel_Text[19786]["Text211"]
tNpcGossip[19786]["Option8"] = tNov_Mono_Revel_Text[19786]["Option8"]
tNpcGossip[19786]["Option9"] = tNov_Mono_Revel_Text[19786]["Option9"]
tNpcGossip[19786]["Option10"] = tNov_Mono_Revel_Text[19786]["Option10"]
tNpcGossip[19786]["Option25"] = tNov_Mono_Revel_Text[19786]["Option25"]

tNpcGossip[19786]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[19786]["Text221"] = tNov_Mono_Revel_Text[19786]["Text221"]
tNpcGossip[19786]["Text222"] = tNov_Mono_Revel_Text[19786]["Text222"]
tNpcGossip[19786]["Text223"] = tNov_Mono_Revel_Text[19786]["Text223"]
tNpcGossip[19786]["Text224"] = tNov_Mono_Revel_Text[19786]["Text224"]
tNpcGossip[19786]["Text225"] = tNov_Mono_Revel_Text[19786]["Text225"]
tNpcGossip[19786]["Text227"] = tNov_Mono_Revel_Text[19786]["Text227"]
tNpcGossip[19786]["Text228"] = tNov_Mono_Revel_Text[19786]["Text228"]
tNpcGossip[19786]["Text229"] = tNov_Mono_Revel_Text[19786]["Text229"]
tNpcGossip[19786]["tOption2-2"] = {11}
tNpcGossip[19786]["Option11"] = tNov_Mono_Revel_Text[19786]["Option11"]

tNpcGossip[19786]["Text3-1"] = {311}
tNpcGossip[19786]["tOption3-1"] = {12}
tNpcGossip[19786]["Option12"] = tNov_Mono_Revel_Text[19786]["Option12"]

tNpcGossip[19786]["Text3-2"] = {321}
tNpcGossip[19786]["Text321"] = tNov_Mono_Revel_Text[19786]["Text321"]
tNpcGossip[19786]["tOption3-2"] = {13}
tNpcGossip[19786]["Option13"] = tNov_Mono_Revel_Text[19786]["Option13"]

tNpcGossip[19786]["Text3-3"] = {331}
tNpcGossip[19786]["Text331"] = tNov_Mono_Revel_Text[19786]["Text331"]
tNpcGossip[19786]["tOption3-3"] = {14}
tNpcGossip[19786]["Option14"] = tNov_Mono_Revel_Text[19786]["Option14"]

tNpcGossip[19786]["Text3-4"] = {341}
tNpcGossip[19786]["Text341"] = tNov_Mono_Revel_Text[19786]["Text341"]
tNpcGossip[19786]["tOption3-4"] = {15}
tNpcGossip[19786]["Option15"] = tNov_Mono_Revel_Text[19786]["Option15"]

tNpcGossip[19786]["Text3-5"] = {351}
tNpcGossip[19786]["tOption3-5"] = {16}
tNpcGossip[19786]["Option16"] = tNov_Mono_Revel_Text[19786]["Option16"]

tNpcGossip[19786]["Text3-6"] = {361}
tNpcGossip[19786]["tOption3-6"] = {17}
tNpcGossip[19786]["Option17"] = tNov_Mono_Revel_Text[19786]["Option17"]

tNpcGossip[19786]["Text3-7"] = {371}
tNpcGossip[19786]["tOption3-7"] = {18}
tNpcGossip[19786]["Option18"] = tNov_Mono_Revel_Text[19786]["Option18"]

tNpcGossip[19786]["Text4-1"] = {411}
tNpcGossip[19786]["tOption4-1"] = {19,20}
tNpcGossip[19786]["Option19"] = tNov_Mono_Revel_Text[19786]["Option19"]
tNpcGossip[19786]["Option20"] = tNov_Mono_Revel_Text[19786]["Option20"]

tNpcGossip[19786]["Text4-2"] = {421,422,423,424,425,426}
tNpcGossip[19786]["Text421"] = tNov_Mono_Revel_Text[19786]["Text421"]
tNpcGossip[19786]["Text422"] = tNov_Mono_Revel_Text[19786]["Text422"]
tNpcGossip[19786]["Text425"] = tNov_Mono_Revel_Text[19786]["Text425"]
tNpcGossip[19786]["tOption4-2"] = {21}
tNpcGossip[19786]["Option21"] = tNov_Mono_Revel_Text[19786]["Option21"]
tNpcGossip[19786]["OptionFunc21"] = "Nov_Mono_Revel_UseEMoneyChk</N>1200006"

tNpcGossip[19786]["Text4-3"] = {431,432,433,434,435,436}
tNpcGossip[19786]["Text431"] = tNov_Mono_Revel_Text[19786]["Text431"]
tNpcGossip[19786]["Text432"] = tNov_Mono_Revel_Text[19786]["Text432"]
tNpcGossip[19786]["Text435"] = tNov_Mono_Revel_Text[19786]["Text435"]
tNpcGossip[19786]["tOption4-3"] = {22}
tNpcGossip[19786]["Option22"] = tNov_Mono_Revel_Text[19786]["Option22"]
tNpcGossip[19786]["OptionFunc22"] = "Nov_Mono_Revel_UseEMoneyChk</N>723694"

tNpcGossip[19786]["Text4-4"] = {441,442,443,444,445,446}
tNpcGossip[19786]["Text441"] = tNov_Mono_Revel_Text[19786]["Text441"]
tNpcGossip[19786]["Text442"] = tNov_Mono_Revel_Text[19786]["Text442"]
tNpcGossip[19786]["Text445"] = tNov_Mono_Revel_Text[19786]["Text445"]
tNpcGossip[19786]["tOption4-4"] = {23}
tNpcGossip[19786]["Option23"] = tNov_Mono_Revel_Text[19786]["Option23"]
tNpcGossip[19786]["OptionFunc23"] = "Nov_Mono_Revel_UseEMoneyChk</N>1088000"

tNpcGossip[19786]["Text4-5"] = {451,452,453,454,455,456}
tNpcGossip[19786]["Text451"] = tNov_Mono_Revel_Text[19786]["Text451"]
tNpcGossip[19786]["Text452"] = tNov_Mono_Revel_Text[19786]["Text452"]
tNpcGossip[19786]["Text455"] = tNov_Mono_Revel_Text[19786]["Text455"]
tNpcGossip[19786]["tOption4-5"] = {24}
tNpcGossip[19786]["Option24"] = tNov_Mono_Revel_Text[19786]["Option24"]
tNpcGossip[19786]["OptionFunc24"] = "Nov_Mono_Revel_UseEMoneyChk</N>730003"

--------------------------------------物品模板-------------------------------------------
--特惠狂欢邀请函
tItem[3301162] = tItem[3301162] or {}
tItem[3301162]["DialogueText"] = tNov_Mono_Revel_Text[3301162]
tItem[3301162]["Text1-1"] = {111,112,113}
tItem[3301162]["tOption1-1"] = {1,2,3,4}
tItem[3301162]["OptionFunc1"] = "Nov_Mono_Revel_BagLetterOpen</N>1"
tItem[3301162]["OptionFunc2"] = "Nov_Mono_Revel_BagLetterOpen</N>2"
tItem[3301162]["OptionFunc3"] = "Nov_Mono_Revel_BagLetterOpen</N>3"
tItem[3301162]["OptionFunc4"] = "Nov_Mono_Revel_BagLetterOpen</N>4"

--锁妖盒
for i = 3301163, 3301166 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		--Nov_Mono_Revel_Chk(nItemTypeId)
		
		--修改为直接获得天石赠礼包
		local nMonsterId = nItemTypeId - 3298365
		if Item_ChkItem(nItemTypeId) and Item_DelItem(nItemTypeId) then
			Sys_SaveActionFestivalLog(tNov_Mono_Revel_Log["DelItem"], nItemTypeId)
			RewardTemplate_Random(tNov_Mono_Revel_RewardRandom[nMonsterId],1)
		end
	end
	tItem[i]["DialogueText"] = tNov_Mono_Revel_Text[i]
	tItem[i]["Text1-1"] = {111,112,113}
	tItem[i]["tOption1-1"] = {1,2}
	tItem[i]["OptionFunc1"] = string.format("Nov_Mono_Revel_RefreshMonster</N>%d", i)
end

--不同容量天石赠礼包
for i = 3301183, 3301203 do
	if i == 3301190 or i == 3301200 then
		
	else
		tItem[i] = tItem[i] or {}
		tItem[i]["Function"] = function(nItemTypeId,sItemName)
			Nov_Mono_Revel_OpenBag(nItemTypeId)
		end
	end
end

--优惠券
tItem[3301167] = tItem[3301167] or {}
tItem[3301167]["Function"] = function(nItemTypeId, sItemName)
	Nov_Mono_Revel_DelItem(nItemTypeId)
end

--黄金积分包
tItem[3301168] = tItem[3301168] or {}
tItem[3301168]["DialogueText"] = tNov_Mono_Revel_Text[3301168]
tItem[3301168]["Text1-1"] = {111,112}
tItem[3301168]["ChkFunc1-1"] = function() return true end
tItem[3301168]["tOption1-1"] = {1,2,3}
tItem[3301168]["OptionFunc1"] = "Nov_Mono_Revel_Open</N>3301168</N>1"
tItem[3301168]["OptionFunc2"] = "Nov_Mono_Revel_Open</N>3301168</N>0"

--轮盘
tItem[3301169] = tItem[3301169] or {}
tItem[3301169]["Function"] = function()
	RouletteMould_Main(6811)
end

--轮盘
tItem[3308977] = tItem[3308977] or {}
tItem[3308977]["Function"] = function()
	RouletteMould_Main(755)
end

--10月新增轮盘
tItem[3310851] = tItem[3310851] or {}
tItem[3310851]["Function"] = function()
	RouletteMould_Main(6893)
end

--12月新增轮盘
tItem[3311628] = tItem[3311628] or {}
tItem[3311628]["Function"] = function()
	RouletteMould_Main(6908)
end

--雷神2月促销轮盘
tItem[3320245] = tItem[3320245] or {}
tItem[3320245]["Function"] = function()
	RouletteMould_Main(6947)
end
--年终促销轮盘
tItem[3314577] = tItem[3314577] or {}
tItem[3314577]["Function"] = function()
	RouletteMould_Main(4290)
end

--夺宝记录卡
for i = 3301318, 3301321 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		Nov_Mono_Revel_CardChk(nItemTypeId)
	end
	tItem[i]["DialogueText"] = tNov_Mono_Revel_Text[i]
	tItem[i]["Text1-1"] = {111,112,113,114,115,116,117}
	tItem[i]["tOption1-1"] = {1}
end

--礼包
for i = 3301408, 3301414 do
	tItem[i] = tItem[i] or {}
	tItem[i]["Function"] = function(nItemTypeId,sItemName)
		Nov_Mono_Revel_OpenBag(nItemTypeId)
	end
end
--------------------------------------怪物模块-------------------------------------------
local tNov_Mono_Revel_Monster = {}
	tNov_Mono_Revel_Monster["Function"] = Nov_Mono_Revel_KillMonster
	tNov_Mono_Revel_Monster["MonsterId"] = {2798,2799,2800,2801}
table.insert(tMonsterDrop_AreaLoad,tNov_Mono_Revel_Monster)

--------------------------------------时间自检-------------------------------------------
 -- tOntimerMin_HM[0700] = tOntimerMin_HM[0700] or {}
 -- table.insert(tOntimerMin_HM[0700],Nov_Mono_Revel_ToZero)
 -- tOntimerMin_HM[0701] = tOntimerMin_HM[0701] or {}
 -- table.insert(tOntimerMin_HM[0701],Nov_Mono_Revel_ToZero)
 -- tOntimerMin_HM[0702] = tOntimerMin_HM[0702] or {}
 -- table.insert(tOntimerMin_HM[0702],Nov_Mono_Revel_ToZero)
 -- tOntimerMin_HM[0703] = tOntimerMin_HM[0703] or {}
 -- table.insert(tOntimerMin_HM[0703],Nov_Mono_Revel_ReturnZero)
 -- tOntimerMin_HM[0704] = tOntimerMin_HM[0704] or {}
 -- table.insert(tOntimerMin_HM[0704],Nov_Mono_Revel_ReturnZero)
 -- tOntimerMin_HM[0705] = tOntimerMin_HM[0705] or {}
 -- table.insert(tOntimerMin_HM[0705],Nov_Mono_Revel_ReturnZero)
 -- tOntimerMin_HM[2300] = tOntimerMin_HM[2300] or {}
 -- table.insert(tOntimerMin_HM[2300],Nov_Mono_Revel_ToZero)
 -- tOntimerMin_HM[2301] = tOntimerMin_HM[2301] or {}
 -- table.insert(tOntimerMin_HM[2301],Nov_Mono_Revel_ToZero)
 -- tOntimerMin_HM[2302] = tOntimerMin_HM[2302] or {}
 -- table.insert(tOntimerMin_HM[2302],Nov_Mono_Revel_ToZero)
 -- tOntimerMin_HM[2303] = tOntimerMin_HM[2303] or {}
 -- table.insert(tOntimerMin_HM[2303],Nov_Mono_Revel_ReturnZero)
 -- tOntimerMin_HM[2304] = tOntimerMin_HM[2304] or {}
 -- table.insert(tOntimerMin_HM[2304],Nov_Mono_Revel_ReturnZero)
 -- tOntimerMin_HM[2305] = tOntimerMin_HM[2305] or {}
 -- table.insert(tOntimerMin_HM[2305],Nov_Mono_Revel_ReturnZero)