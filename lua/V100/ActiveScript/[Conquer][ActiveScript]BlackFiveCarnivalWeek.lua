------------------------------------------------------------------------------------
--Name：        181015[英文征服][活动脚本]黑五狂欢周活跃活动
--Creator:      茅志伟
--Created:      2018/10/15
------------------------------------------------------------------------------------

--命名前缀 tBlackFiveCarnivalWeek_

--lua.ini = 41020

--logid = 12001184

--掩码、动态表说明：
--Stc
--185 39 记录玩家上线领奖情况
--185 40 记录玩家连续上线天数
--185 41 记录每日神龙岛打怪数量
--185 42 记录每日古神灵境打怪数量
--185 43 记录每日矿山打怪数量
--185 44 记录每日炫日锁片收集数量
--185 45 记录每日残月锁片收集数量
--185 46 记录每日繁星锁片收集数量
--185 47 记录每日流云锁片收集数量
--185 48 判断玩家是否重复参加捡宝
--185 49 判断玩家是否获得过排位赛第四名奖励
--185 50 职业PK赛
--185 51 精英PK赛
--185 52 背包信
--185 62 三天连续登录领奖限制
--185 63 五天连续登录领奖限制
--185 64 七天连续登录领奖限制

--global
--53040  0 记录碎片U全服数量  1 记录碎片L全服数量 
--53041  0 记录3份狂欢卷礼包每日全服数量  1 记录3份狂欢卷礼包活动期间全服数量  2 记录4份狂欢卷礼包每日全服数量  3 记录4份狂欢卷礼包活动期间全服数  4 记录5份狂欢卷礼包每日全服数量  5 记录5份狂欢卷礼包活动期间全服数
--53042  0 记录6份狂欢卷礼包每日全服数量  1 记录6份狂欢卷礼包活动期间全服数量  
--53043  0 记录精装狂欢宝箱每日兑换数量  1 记录豪华狂欢宝箱每日兑换数量  2 记录至尊狂欢宝箱每日兑换数量  3 记录每日动态码是否重置  4 记录10W赠点大奖是否产出（全服只产出一个）


--stc掩码表
local tBlackFiveCarnivalWeek_Stc = {}
--记录玩家上线领奖情况
tBlackFiveCarnivalWeek_Stc[1] = {}
tBlackFiveCarnivalWeek_Stc[1]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[1]["DataType"] = 39
--记录玩家连续上线天数
tBlackFiveCarnivalWeek_Stc[2] = {}
tBlackFiveCarnivalWeek_Stc[2]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[2]["DataType"] = 40
--记录每日神龙岛打怪数量
tBlackFiveCarnivalWeek_Stc[3] = {}
tBlackFiveCarnivalWeek_Stc[3]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[3]["DataType"] = 41
--记录每日古神灵境打怪数量
tBlackFiveCarnivalWeek_Stc[4] = {}
tBlackFiveCarnivalWeek_Stc[4]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[4]["DataType"] = 42
--记录每日矿山打怪数量
tBlackFiveCarnivalWeek_Stc[5] = {}
tBlackFiveCarnivalWeek_Stc[5]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[5]["DataType"] = 43

--记录每日炫日锁片收集数量
tBlackFiveCarnivalWeek_Stc[6] = {}
tBlackFiveCarnivalWeek_Stc[6]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[6]["DataType"] = 44
--记录每日残月锁片收集数量
tBlackFiveCarnivalWeek_Stc[7] = {}
tBlackFiveCarnivalWeek_Stc[7]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[7]["DataType"] = 45
--记录每日繁星锁片收集数量
tBlackFiveCarnivalWeek_Stc[8] = {}
tBlackFiveCarnivalWeek_Stc[8]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[8]["DataType"] = 46
--记录每日流云锁片收集数量
tBlackFiveCarnivalWeek_Stc[9] = {}
tBlackFiveCarnivalWeek_Stc[9]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[9]["DataType"] = 47
--判断玩家是否重复参加捡宝 记录参加次数
tBlackFiveCarnivalWeek_Stc[10] = {}
tBlackFiveCarnivalWeek_Stc[10]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[10]["DataType"] = 48
--判断玩家是否获得过排位赛第四名奖励
tBlackFiveCarnivalWeek_Stc[11] = {}
tBlackFiveCarnivalWeek_Stc[11]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[11]["DataType"] = 49
--185 62 三天连续登录领奖限制
tBlackFiveCarnivalWeek_Stc[12] = {}
tBlackFiveCarnivalWeek_Stc[12]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[12]["DataType"] = 62
--185 63 五天连续登录领奖限制
tBlackFiveCarnivalWeek_Stc[13] = {}
tBlackFiveCarnivalWeek_Stc[13]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[13]["DataType"] = 63
--185 64 七天连续登录领奖限制
tBlackFiveCarnivalWeek_Stc[14] = {}
tBlackFiveCarnivalWeek_Stc[14]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[14]["DataType"] = 64
--185 50 职业PK赛
tBlackFiveCarnivalWeek_Stc[15] = {}
tBlackFiveCarnivalWeek_Stc[15]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[15]["DataType"] = 50
--185 51 精英PK赛
tBlackFiveCarnivalWeek_Stc[16] = {}
tBlackFiveCarnivalWeek_Stc[16]["EventType"] = 185
tBlackFiveCarnivalWeek_Stc[16]["DataType"] = 51

--常量表配置
local tBlackFiveCarnivalWeek_Cont = {}
	--玩家等级要求
	tBlackFiveCarnivalWeek_Cont["Metempsychosis"] = 1
	tBlackFiveCarnivalWeek_Cont["Level"] = 110
	--转盘限量记录
	--tBlackFiveCarnivalWeek_Cont["global"] = 53040
	--副本地图Id
	tBlackFiveCarnivalWeek_Cont["Instancetype"] = 196
	
	--掉宝地图传出地图位置
	tBlackFiveCarnivalWeek_Cont["MapId"] = 1002
	tBlackFiveCarnivalWeek_Cont["MapX"] = 342
	tBlackFiveCarnivalWeek_Cont["MapY"] = 460
	
	--地图NPC坐标
	tBlackFiveCarnivalWeek_Cont["NpcMapId"] = 1002
	tBlackFiveCarnivalWeek_Cont["NpcMapX"] = 339
	tBlackFiveCarnivalWeek_Cont["NpcMapY"] = 457
	
	--狂欢大使坐标
	tBlackFiveCarnivalWeek_Cont["NpcMapX1"] = 339
	tBlackFiveCarnivalWeek_Cont["NpcMapY1"] = 461
	tBlackFiveCarnivalWeek_Cont["NpcMapId1"] = 1002
	tBlackFiveCarnivalWeek_Cont["NpcId"] = 23437
	
	--狂欢宝箱数量Golbal
	tBlackFiveCarnivalWeek_Cont["Golobal1"] = 53041
	tBlackFiveCarnivalWeek_Cont["Golobal2"] = 53042
	tBlackFiveCarnivalWeek_Cont["Golobal3"] = 53043
	
	
	
--物品表配置
local tBlackFiveCarnivalWeek_Item = {}
	--狂欢碎片G
	tBlackFiveCarnivalWeek_Item[3311081] = 3311081
	--狂欢碎片R
	tBlackFiveCarnivalWeek_Item[3311082] = 3311082
	--狂欢碎片A
	tBlackFiveCarnivalWeek_Item[3311083] = 3311083
	--狂欢碎片T
	tBlackFiveCarnivalWeek_Item[3311084] = 3311084
	--狂欢碎片E
	tBlackFiveCarnivalWeek_Item[3311085] = 3311085
	--狂欢碎片F
	tBlackFiveCarnivalWeek_Item[3311086] = 3311086
	--狂欢碎片U
	tBlackFiveCarnivalWeek_Item[3311087] = 3311087
	--狂欢碎片L
	tBlackFiveCarnivalWeek_Item[3311088] = 3311088
	--炫日锁片
	tBlackFiveCarnivalWeek_Item[721533] = 721533
	--残月锁片
	tBlackFiveCarnivalWeek_Item[721534] = 721534
	--繁星锁片
	tBlackFiveCarnivalWeek_Item[721535] = 721535
	--流云锁片
	tBlackFiveCarnivalWeek_Item[721536] = 721536
	
	--狂欢卷×1
	tBlackFiveCarnivalWeek_Item[3311089] = {}
	tBlackFiveCarnivalWeek_Item[3311089]["Id"] = 3311089
	tBlackFiveCarnivalWeek_Item[3311089]["Attr"] = "0 1 3"
	tBlackFiveCarnivalWeek_Item[3311089]["Attr2"] = "0 2 3"
	--2张狂欢券包
	tBlackFiveCarnivalWeek_Item[3311123] = {}
	tBlackFiveCarnivalWeek_Item[3311123]["Id"] = 3311123
	tBlackFiveCarnivalWeek_Item[3311123]["Attr"] = "0 1 3"
	--3张狂欢券包
	tBlackFiveCarnivalWeek_Item[3311124] = {}
	tBlackFiveCarnivalWeek_Item[3311124]["Id"] = 3311124
	tBlackFiveCarnivalWeek_Item[3311124]["Attr"] = "0 1 3"
	--4张狂欢券包
	tBlackFiveCarnivalWeek_Item[3311125] = {}
	tBlackFiveCarnivalWeek_Item[3311125]["Id"] = 3311125
	tBlackFiveCarnivalWeek_Item[3311125]["Attr"] = "0 1 3"
	
	--修为值10点
	tBlackFiveCarnivalWeek_Item[3311170] = {}
	tBlackFiveCarnivalWeek_Item[3311170]["Id"] = 3311170
	tBlackFiveCarnivalWeek_Item[3311170]["Attr"] = "0 1 3"
	--气力值值10点
	tBlackFiveCarnivalWeek_Item[3311080] = {}
	tBlackFiveCarnivalWeek_Item[3311080]["Id"] = 3311080
	tBlackFiveCarnivalWeek_Item[3311080]["Attr"] = "0 1 3"
	--赠赤炼石+1
	tBlackFiveCarnivalWeek_Item[3311171] = {}
	tBlackFiveCarnivalWeek_Item[3311171]["Id"] = 3311171
	tBlackFiveCarnivalWeek_Item[3311171]["Attr"] = "0 1 3"
	--赠流星*1
	tBlackFiveCarnivalWeek_Item[3311174] = {}
	tBlackFiveCarnivalWeek_Item[3311174]["Id"] = 3311174
	tBlackFiveCarnivalWeek_Item[3311174]["Attr"] = "0 1 3"
	--微光星陨石*1
	tBlackFiveCarnivalWeek_Item[3311175] = {}
	tBlackFiveCarnivalWeek_Item[3311175]["Id"] = 3311175
	tBlackFiveCarnivalWeek_Item[3311175]["Attr"] = "0 1 3"
	--赠品黄色神纹精粹*1
	tBlackFiveCarnivalWeek_Item[4050001] = {}
	tBlackFiveCarnivalWeek_Item[4050001]["Id"] = 4050001
	tBlackFiveCarnivalWeek_Item[4050001]["Attr"] = "0 1 3"
	-- --狂欢券*1
	-- tBlackFiveCarnivalWeek_Item[3311089] = {}
	-- tBlackFiveCarnivalWeek_Item[3311089]["Id"] = 3311089
	-- tBlackFiveCarnivalWeek_Item[3311089]["Attr"] = "0 1 3"
	--赠龙珠*1
	tBlackFiveCarnivalWeek_Item[3311173] = {}
	tBlackFiveCarnivalWeek_Item[3311173]["Id"] = 3311173
	tBlackFiveCarnivalWeek_Item[3311173]["Attr"] = "0 1 3"
	
	
--Log表
local tBlackFiveCarnivalWeek_Log = {}
tBlackFiveCarnivalWeek_Log["Turntable1"] = "13,0,0,0,12001184,1,0,1"
tBlackFiveCarnivalWeek_Log["Turntable2"] = "130,0,0,0,12001184,1,0,10"
	
	
--怪物击杀计数表
local tBlackFiveCarnivalWeek_MonsterCount = {}
--神龙岛
	tBlackFiveCarnivalWeek_MonsterCount["Dragon"] = {}
--古神灵境
	tBlackFiveCarnivalWeek_MonsterCount["God"] = {}
--矿山
	tBlackFiveCarnivalWeek_MonsterCount["Mine"] = {}
	
--掉宝地图掉落物品配置
	
	
--礼包表
local tBlackFiveCarnivalWeek_Pack = {}
--普通宝箱
tBlackFiveCarnivalWeek_Pack[3311075] = {}
tBlackFiveCarnivalWeek_Pack[3311075]["ItemChanceSum"] = 10000
--赠流星卷*2
tBlackFiveCarnivalWeek_Pack[3311075][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][1]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311075][1]["ItemChance"] = 1500
-- tBlackFiveCarnivalWeek_Pack[3311075][1]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][1]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][1]["DeleteItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_Pack[3311075][1]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][1]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][1]["RewardItem"][1]["Id"] = 720027
tBlackFiveCarnivalWeek_Pack[3311075][1]["RewardItem"][1]["Attr"] = "0 2 3"
tBlackFiveCarnivalWeek_Pack[3311075][1]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][1]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311075][1]["LogId"] = 12001184
--赠明亮星陨石*2
tBlackFiveCarnivalWeek_Pack[3311075][2] = {}
tBlackFiveCarnivalWeek_Pack[3311075][2]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311075][2]["ItemChance"] = 1000
-- tBlackFiveCarnivalWeek_Pack[3311075][2]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][2]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][2]["DeleteItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_Pack[3311075][2]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][2]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][2]["RewardItem"][1]["Id"] = 3009001
tBlackFiveCarnivalWeek_Pack[3311075][2]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
tBlackFiveCarnivalWeek_Pack[3311075][2]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][2]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311075][2]["LogId"] = 12001184
--赠黄色神纹精粹*5
tBlackFiveCarnivalWeek_Pack[3311075][3] = {}
tBlackFiveCarnivalWeek_Pack[3311075][3]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311075][3]["ItemChance"] = 1500
-- tBlackFiveCarnivalWeek_Pack[3311075][3]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][3]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][3]["DeleteItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_Pack[3311075][3]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][3]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][3]["RewardItem"][1]["Id"] = 4050001
tBlackFiveCarnivalWeek_Pack[3311075][3]["RewardItem"][1]["Attr"] = "0 5 3"
tBlackFiveCarnivalWeek_Pack[3311075][3]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][3]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311075][3]["LogId"] = 12001184
--赠+2赤练石*2
tBlackFiveCarnivalWeek_Pack[3311075][4] = {}
tBlackFiveCarnivalWeek_Pack[3311075][4]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311075][4]["ItemChance"] = 1000
-- tBlackFiveCarnivalWeek_Pack[3311075][4]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][4]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][4]["DeleteItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_Pack[3311075][4]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][4]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][4]["RewardItem"][1]["Id"] = 730002
tBlackFiveCarnivalWeek_Pack[3311075][4]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
tBlackFiveCarnivalWeek_Pack[3311075][4]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][4]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311075][4]["LogId"] = 12001184
--赠感恩碎片G*1
tBlackFiveCarnivalWeek_Pack[3311075][5] = {}
tBlackFiveCarnivalWeek_Pack[3311075][5]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311075][5]["ItemChance"] = 2000
-- tBlackFiveCarnivalWeek_Pack[3311075][5]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][5]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][5]["DeleteItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_Pack[3311075][5]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][5]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][5]["RewardItem"][1]["Id"] = 3311081
tBlackFiveCarnivalWeek_Pack[3311075][5]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311075][5]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][5]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311075][5]["LogId"] = 12001184
--赠感恩碎片R*1
tBlackFiveCarnivalWeek_Pack[3311075][6] = {}
tBlackFiveCarnivalWeek_Pack[3311075][6]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311075][6]["ItemChance"] = 2000
-- tBlackFiveCarnivalWeek_Pack[3311075][6]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][6]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][6]["DeleteItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_Pack[3311075][6]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][6]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][6]["RewardItem"][1]["Id"] = 3311082
tBlackFiveCarnivalWeek_Pack[3311075][6]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311075][6]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][6]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311075][6]["LogId"] = 12001184
--赠气力值10（礼包）
tBlackFiveCarnivalWeek_Pack[3311075][7] = {}
tBlackFiveCarnivalWeek_Pack[3311075][7]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311075][7]["ItemChance"] = 1000
-- tBlackFiveCarnivalWeek_Pack[3311075][7]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][7]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311075][7]["DeleteItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_Pack[3311075][7]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][7]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311075][7]["RewardItem"][1]["Id"] = 3311080
tBlackFiveCarnivalWeek_Pack[3311075][7]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311075][7]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311075][7]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311075][7]["LogId"] = 12001184

--优质宝箱
tBlackFiveCarnivalWeek_Pack[3311076] = {}
tBlackFiveCarnivalWeek_Pack[3311076]["ItemChanceSum"] = 10000
--赠龙珠*2
tBlackFiveCarnivalWeek_Pack[3311076][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][1]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][1]["ItemChance"] = 1200
-- tBlackFiveCarnivalWeek_Pack[3311076][1]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][1]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][1]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][1]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][1]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][1]["RewardItem"][1]["Id"] = 1088000
tBlackFiveCarnivalWeek_Pack[3311076][1]["RewardItem"][1]["Attr"] = "0 2 3"
tBlackFiveCarnivalWeek_Pack[3311076][1]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][1]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][1]["LogId"] = 12001184
--明亮星陨石*4
tBlackFiveCarnivalWeek_Pack[3311076][2] = {}
tBlackFiveCarnivalWeek_Pack[3311076][2]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][2]["ItemChance"] = 1000
-- tBlackFiveCarnivalWeek_Pack[3311076][2]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][2]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][2]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][2]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][2]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][2]["RewardItem"][1]["Id"] = 3009001
tBlackFiveCarnivalWeek_Pack[3311076][2]["RewardItem"][1]["Attr"] = "0 4 0 2880 1"
tBlackFiveCarnivalWeek_Pack[3311076][2]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][2]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][2]["LogId"] = 12001184
--赠黄色神纹精粹*20
tBlackFiveCarnivalWeek_Pack[3311076][3] = {}
tBlackFiveCarnivalWeek_Pack[3311076][3]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][3]["ItemChance"] = 1500
-- tBlackFiveCarnivalWeek_Pack[3311076][3]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][3]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][3]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][3]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][3]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][3]["RewardItem"][1]["Id"] = 4050001
tBlackFiveCarnivalWeek_Pack[3311076][3]["RewardItem"][1]["Attr"] = "0 20 3"
tBlackFiveCarnivalWeek_Pack[3311076][3]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][3]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][3]["LogId"] = 12001184
--赠气力值1000点
tBlackFiveCarnivalWeek_Pack[3311076][4] = {}
tBlackFiveCarnivalWeek_Pack[3311076][4]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][4]["ItemChance"] = 1500
-- tBlackFiveCarnivalWeek_Pack[3311076][4]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][4]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][4]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][4]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][4]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][4]["RewardItem"][1]["Id"] = 729481
tBlackFiveCarnivalWeek_Pack[3311076][4]["RewardItem"][1]["Attr"] = "0 2 3"
tBlackFiveCarnivalWeek_Pack[3311076][4]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][4]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][4]["LogId"] = 12001184
--赠修为值5000
tBlackFiveCarnivalWeek_Pack[3311076][5] = {}
tBlackFiveCarnivalWeek_Pack[3311076][5]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][5]["ItemChance"] = 1100
-- tBlackFiveCarnivalWeek_Pack[3311076][5]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][5]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][5]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][5]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][5]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][5]["RewardItem"][1]["Id"] = 3311079
tBlackFiveCarnivalWeek_Pack[3311076][5]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311076][5]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][5]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][5]["LogId"] = 12001184
--赠感恩碎片A*1
tBlackFiveCarnivalWeek_Pack[3311076][6] = {}
tBlackFiveCarnivalWeek_Pack[3311076][6]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][6]["ItemChance"] = 1000
-- tBlackFiveCarnivalWeek_Pack[3311076][6]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][6]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][6]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][6]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][6]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][6]["RewardItem"][1]["Id"] = 3311083
tBlackFiveCarnivalWeek_Pack[3311076][6]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311076][6]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][6]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][6]["LogId"] = 12001184
--赠感恩碎片T*1
tBlackFiveCarnivalWeek_Pack[3311076][7] = {}
tBlackFiveCarnivalWeek_Pack[3311076][7]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][7]["ItemChance"] = 1000
-- tBlackFiveCarnivalWeek_Pack[3311076][7]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][7]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][7]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][7]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][7]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][7]["RewardItem"][1]["Id"] = 3311084
tBlackFiveCarnivalWeek_Pack[3311076][7]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311076][7]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][7]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][7]["LogId"] = 12001184
--赠感恩碎片E*1
tBlackFiveCarnivalWeek_Pack[3311076][8] = {}
tBlackFiveCarnivalWeek_Pack[3311076][8]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][8]["ItemChance"] = 1000
-- tBlackFiveCarnivalWeek_Pack[3311076][8]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][8]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][8]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][8]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][8]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][8]["RewardItem"][1]["Id"] = 3311085
tBlackFiveCarnivalWeek_Pack[3311076][8]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311076][8]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][8]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][8]["LogId"] = 12001184
--赠感恩碎片F*1
tBlackFiveCarnivalWeek_Pack[3311076][9] = {}
tBlackFiveCarnivalWeek_Pack[3311076][9]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][9]["ItemChance"] = 500
-- tBlackFiveCarnivalWeek_Pack[3311076][9]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][9]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][9]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][9]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][9]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][9]["RewardItem"][1]["Id"] = 3311086
tBlackFiveCarnivalWeek_Pack[3311076][9]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311076][9]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][9]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][9]["LogId"] = 12001184
--赠+3赤练石*1
tBlackFiveCarnivalWeek_Pack[3311076][10] = {}
tBlackFiveCarnivalWeek_Pack[3311076][10]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311076][10]["ItemChance"] = 200
-- tBlackFiveCarnivalWeek_Pack[3311076][10]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][10]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311076][10]["DeleteItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_Pack[3311076][10]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][10]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311076][10]["RewardItem"][1]["Id"] = 730003
tBlackFiveCarnivalWeek_Pack[3311076][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tBlackFiveCarnivalWeek_Pack[3311076][10]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311076][10]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311076][10]["LogId"] = 12001184

--极品宝箱
tBlackFiveCarnivalWeek_Pack[3311077] = {}
tBlackFiveCarnivalWeek_Pack[3311077]["ItemChanceSum"] = 100000
--赠感恩碎片E*1
tBlackFiveCarnivalWeek_Pack[3311077][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][1]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][1]["ItemChance"] = 10000
tBlackFiveCarnivalWeek_Pack[3311077][1]["Value"] = 1
-- tBlackFiveCarnivalWeek_Pack[3311077][1]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][1]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][1]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][1]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][1]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][1]["RewardItem"][1]["Id"] = 3311085
tBlackFiveCarnivalWeek_Pack[3311077][1]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311077][1]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][1]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][1]["LogId"] = 12001184
--赠感恩碎片F*1
tBlackFiveCarnivalWeek_Pack[3311077][2] = {}
tBlackFiveCarnivalWeek_Pack[3311077][2]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][2]["ItemChance"] = 5000
tBlackFiveCarnivalWeek_Pack[3311077][2]["Value"] = 2
-- tBlackFiveCarnivalWeek_Pack[3311077][2]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][2]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][2]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][2]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][2]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][2]["RewardItem"][1]["Id"] = 3311086
tBlackFiveCarnivalWeek_Pack[3311077][2]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311077][2]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][2]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][2]["LogId"] = 12001184
--赠感恩碎片U*1(全服唯一)
tBlackFiveCarnivalWeek_Pack[3311077][3] = {}
tBlackFiveCarnivalWeek_Pack[3311077][3]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][3]["ItemChance"] = 1
tBlackFiveCarnivalWeek_Pack[3311077][3]["Value"] = 3
tBlackFiveCarnivalWeek_Pack[3311077][3]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][3]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][3]["RewardItem"][1]["Id"] = 3311087
tBlackFiveCarnivalWeek_Pack[3311077][3]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311077][3]["GlobalId"] = 53040
tBlackFiveCarnivalWeek_Pack[3311077][3]["Pos"] = 0
tBlackFiveCarnivalWeek_Pack[3311077][3]["MaxData"] = 1
tBlackFiveCarnivalWeek_Pack[3311077][3]["FullIndex"] = 10
tBlackFiveCarnivalWeek_Pack[3311077][3]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][3]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][3]["LogId"] = 12001184
--赠感恩碎片L*1(全服唯一)
tBlackFiveCarnivalWeek_Pack[3311077][4] = {}
tBlackFiveCarnivalWeek_Pack[3311077][4]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][4]["ItemChance"] = 1
tBlackFiveCarnivalWeek_Pack[3311077][4]["Value"] = 4
tBlackFiveCarnivalWeek_Pack[3311077][4]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][4]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][4]["RewardItem"][1]["Id"] = 3311088
tBlackFiveCarnivalWeek_Pack[3311077][4]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311077][4]["GlobalId"] = 53040
tBlackFiveCarnivalWeek_Pack[3311077][4]["Pos"] = 1
tBlackFiveCarnivalWeek_Pack[3311077][4]["MaxData"] = 1
tBlackFiveCarnivalWeek_Pack[3311077][4]["FullIndex"] = 10
tBlackFiveCarnivalWeek_Pack[3311077][4]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][4]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][4]["LogId"] = 12001184
--强效护心丹*20
tBlackFiveCarnivalWeek_Pack[3311077][5] = {}
tBlackFiveCarnivalWeek_Pack[3311077][5]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][5]["ItemChance"] = 15000
tBlackFiveCarnivalWeek_Pack[3311077][5]["Value"] = 5
-- tBlackFiveCarnivalWeek_Pack[3311077][5]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][5]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][5]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][5]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][5]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][5]["RewardItem"][1]["Id"] = 3002030
tBlackFiveCarnivalWeek_Pack[3311077][5]["RewardItem"][1]["Attr"] = "0 20 3"
tBlackFiveCarnivalWeek_Pack[3311077][5]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][5]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][5]["LogId"] = 12001184
--赠黄色神纹精粹*50
tBlackFiveCarnivalWeek_Pack[3311077][6] = {}
tBlackFiveCarnivalWeek_Pack[3311077][6]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][6]["ItemChance"] = 11900
tBlackFiveCarnivalWeek_Pack[3311077][6]["Value"] = 6
-- tBlackFiveCarnivalWeek_Pack[3311077][6]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][6]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][6]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][6]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][6]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][6]["RewardItem"][1]["Id"] = 4050001
tBlackFiveCarnivalWeek_Pack[3311077][6]["RewardItem"][1]["Attr"] = "0 50 3"
tBlackFiveCarnivalWeek_Pack[3311077][6]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][6]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][6]["LogId"] = 12001184
--赠明亮星陨石*6
tBlackFiveCarnivalWeek_Pack[3311077][7] = {}
tBlackFiveCarnivalWeek_Pack[3311077][7]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][7]["ItemChance"] = 10000
tBlackFiveCarnivalWeek_Pack[3311077][7]["Value"] = 7
-- tBlackFiveCarnivalWeek_Pack[3311077][7]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][7]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][7]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][7]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][7]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][7]["RewardItem"][1]["Id"] = 3009001
tBlackFiveCarnivalWeek_Pack[3311077][7]["RewardItem"][1]["Attr"] = "0 6 0 2880 1"
tBlackFiveCarnivalWeek_Pack[3311077][7]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][7]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][7]["LogId"] = 12001184
--修为值5000
tBlackFiveCarnivalWeek_Pack[3311077][8] = {}
tBlackFiveCarnivalWeek_Pack[3311077][8]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][8]["ItemChance"] = 8098
tBlackFiveCarnivalWeek_Pack[3311077][8]["Value"] = 8
-- tBlackFiveCarnivalWeek_Pack[3311077][8]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][8]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][8]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][8]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][8]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][8]["RewardItem"][1]["Id"] = 3311079
tBlackFiveCarnivalWeek_Pack[3311077][8]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311077][8]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][8]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][8]["LogId"] = 12001184
--赠气力值3000点
tBlackFiveCarnivalWeek_Pack[3311077][9] = {}
tBlackFiveCarnivalWeek_Pack[3311077][9]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][9]["ItemChance"] = 20000
tBlackFiveCarnivalWeek_Pack[3311077][9]["Value"] = 9
-- tBlackFiveCarnivalWeek_Pack[3311077][9]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][9]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][9]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][9]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][9]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][9]["RewardItem"][1]["Id"] = 729481
tBlackFiveCarnivalWeek_Pack[3311077][9]["RewardItem"][1]["Attr"] = "0 6 3"
tBlackFiveCarnivalWeek_Pack[3311077][9]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][9]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][9]["LogId"] = 12001184
--赠赤炼石+4*1
tBlackFiveCarnivalWeek_Pack[3311077][10] = {}
tBlackFiveCarnivalWeek_Pack[3311077][10]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_Pack[3311077][10]["ItemChance"] = 20000
tBlackFiveCarnivalWeek_Pack[3311077][10]["Value"] = 10
-- tBlackFiveCarnivalWeek_Pack[3311077][10]["DeleteItem"] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][10]["DeleteItem"][1] = {}
-- tBlackFiveCarnivalWeek_Pack[3311077][10]["DeleteItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_Pack[3311077][10]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][10]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311077][10]["RewardItem"][1]["Id"] = 730004
tBlackFiveCarnivalWeek_Pack[3311077][10]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tBlackFiveCarnivalWeek_Pack[3311077][10]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311077][10]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311077][10]["LogId"] = 12001184

--2张狂欢券包
tBlackFiveCarnivalWeek_Pack[3311123] = {}
tBlackFiveCarnivalWeek_Pack[3311123]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311123]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311123]["DeleteItem"][1]["Id"] = 3311123
tBlackFiveCarnivalWeek_Pack[3311123]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311123]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311123]["RewardItem"][1]["Id"] = 3311089
tBlackFiveCarnivalWeek_Pack[3311123]["RewardItem"][1]["Attr"] = "0 2 3"
tBlackFiveCarnivalWeek_Pack[3311123]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311123]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311123]["LogId"] = 12001184
--3张狂欢券包
tBlackFiveCarnivalWeek_Pack[3311124] = {}
tBlackFiveCarnivalWeek_Pack[3311124]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311124]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311124]["DeleteItem"][1]["Id"] = 3311124
tBlackFiveCarnivalWeek_Pack[3311124]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311124]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311124]["RewardItem"][1]["Id"] = 3311089
tBlackFiveCarnivalWeek_Pack[3311124]["RewardItem"][1]["Attr"] = "0 3 3"
tBlackFiveCarnivalWeek_Pack[3311124]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311124]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311124]["LogId"] = 12001184
--4张狂欢券包
tBlackFiveCarnivalWeek_Pack[3311125] = {}
tBlackFiveCarnivalWeek_Pack[3311125]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311125]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311125]["DeleteItem"][1]["Id"] = 3311125
tBlackFiveCarnivalWeek_Pack[3311125]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311125]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311125]["RewardItem"][1]["Id"] = 3311089
tBlackFiveCarnivalWeek_Pack[3311125]["RewardItem"][1]["Attr"] = "0 4 3"
tBlackFiveCarnivalWeek_Pack[3311125]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311125]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311125]["LogId"] = 12001184
--5张狂欢券包
tBlackFiveCarnivalWeek_Pack[3311126] = {}
tBlackFiveCarnivalWeek_Pack[3311126]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311126]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311126]["DeleteItem"][1]["Id"] = 3311126
tBlackFiveCarnivalWeek_Pack[3311126]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311126]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311126]["RewardItem"][1]["Id"] = 3311089
tBlackFiveCarnivalWeek_Pack[3311126]["RewardItem"][1]["Attr"] = "0 5 3"
tBlackFiveCarnivalWeek_Pack[3311126]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311126]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311126]["LogId"] = 12001184
--6张狂欢券包
tBlackFiveCarnivalWeek_Pack[3311127] = {}
tBlackFiveCarnivalWeek_Pack[3311127]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311127]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311127]["DeleteItem"][1]["Id"] = 3311127
tBlackFiveCarnivalWeek_Pack[3311127]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311127]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311127]["RewardItem"][1]["Id"] = 3311089
tBlackFiveCarnivalWeek_Pack[3311127]["RewardItem"][1]["Attr"] = "0 6 3"
tBlackFiveCarnivalWeek_Pack[3311127]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311127]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311127]["LogId"] = 12001184

--10气力值包
tBlackFiveCarnivalWeek_Pack[3311080] = {}
tBlackFiveCarnivalWeek_Pack[3311080]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311080]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311080]["DeleteItem"][1]["Id"] = 3311080
tBlackFiveCarnivalWeek_Pack[3311080]["RewardStrengthValue"] = {}
tBlackFiveCarnivalWeek_Pack[3311080]["RewardStrengthValue"]["Value"] = 10
tBlackFiveCarnivalWeek_Pack[3311080]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311080]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311080]["LogId"] = 12001184
--5000修为值包
tBlackFiveCarnivalWeek_Pack[3311079] = {}
tBlackFiveCarnivalWeek_Pack[3311079]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311079]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311079]["DeleteItem"][1]["Id"] = 3311079
tBlackFiveCarnivalWeek_Pack[3311079]["RewardRepairValue"] = {}
tBlackFiveCarnivalWeek_Pack[3311079]["RewardRepairValue"]["Value"] = 5000
tBlackFiveCarnivalWeek_Pack[3311079]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311079]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311079]["LogId"] = 12001184
--10修为值包
tBlackFiveCarnivalWeek_Pack[3311170] = {}
tBlackFiveCarnivalWeek_Pack[3311170]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311170]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311170]["DeleteItem"][1]["Id"] = 3311170
tBlackFiveCarnivalWeek_Pack[3311170]["RewardRepairValue"] = {}
tBlackFiveCarnivalWeek_Pack[3311170]["RewardRepairValue"]["Value"] = 10
tBlackFiveCarnivalWeek_Pack[3311170]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311170]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311170]["LogId"] = 12001184
--赠品+1赤炼石包
tBlackFiveCarnivalWeek_Pack[3311171] = {}
tBlackFiveCarnivalWeek_Pack[3311171]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311171]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311171]["DeleteItem"][1]["Id"] = 3311171
tBlackFiveCarnivalWeek_Pack[3311171]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311171]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311171]["RewardItem"][1]["Id"] = 730001
tBlackFiveCarnivalWeek_Pack[3311171]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
tBlackFiveCarnivalWeek_Pack[3311171]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311171]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311171]["LogId"] = 12001184
--黄色神纹精粹包
tBlackFiveCarnivalWeek_Pack[3311172] = {}
tBlackFiveCarnivalWeek_Pack[3311172]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311172]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311172]["DeleteItem"][1]["Id"] = 3311172
tBlackFiveCarnivalWeek_Pack[3311172]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311172]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311172]["RewardItem"][1]["Id"] = 4050001
tBlackFiveCarnivalWeek_Pack[3311172]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311172]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311172]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311172]["LogId"] = 12001184

--龙珠（赠）礼包
tBlackFiveCarnivalWeek_Pack[3311173] = {}
tBlackFiveCarnivalWeek_Pack[3311173]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311173]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311173]["DeleteItem"][1]["Id"] = 3311173
tBlackFiveCarnivalWeek_Pack[3311173]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311173]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311173]["RewardItem"][1]["Id"] = 1088000
tBlackFiveCarnivalWeek_Pack[3311173]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311173]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311173]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311173]["LogId"] = 12001184

--流星礼包
tBlackFiveCarnivalWeek_Pack[3311174] = {}
tBlackFiveCarnivalWeek_Pack[3311174]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311174]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311174]["DeleteItem"][1]["Id"] = 3311174
tBlackFiveCarnivalWeek_Pack[3311174]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311174]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311174]["RewardItem"][1]["Id"] = 1088001
tBlackFiveCarnivalWeek_Pack[3311174]["RewardItem"][1]["Attr"] = "0 1 3"
tBlackFiveCarnivalWeek_Pack[3311174]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311174]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311174]["LogId"] = 1200118

--微光星陨石包
tBlackFiveCarnivalWeek_Pack[3311175] = {}
tBlackFiveCarnivalWeek_Pack[3311175]["DeleteItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311175]["DeleteItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311175]["DeleteItem"][1]["Id"] = 3311175
tBlackFiveCarnivalWeek_Pack[3311175]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[3311175]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[3311175]["RewardItem"][1]["Id"] = 3009000
tBlackFiveCarnivalWeek_Pack[3311175]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tBlackFiveCarnivalWeek_Pack[3311175]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[3311175]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[3311175]["LogId"] = 1200118

--1个非赠天石转盘
tBlackFiveCarnivalWeek_Pack[1] = {}
tBlackFiveCarnivalWeek_Pack[1]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[1]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[1]["RewardItem"][1]["Id"] = 3311122
tBlackFiveCarnivalWeek_Pack[1]["RewardItem"][1]["Attr"] = "0 1"
tBlackFiveCarnivalWeek_Pack[1]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[1]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[1]["LogId"] = 1200118
--10个非赠天石转盘
tBlackFiveCarnivalWeek_Pack[2] = {}
tBlackFiveCarnivalWeek_Pack[2]["RewardItem"] = {}
tBlackFiveCarnivalWeek_Pack[2]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_Pack[2]["RewardItem"][1]["Id"] = 3311122
tBlackFiveCarnivalWeek_Pack[2]["RewardItem"][1]["Attr"] = "0 10"
tBlackFiveCarnivalWeek_Pack[2]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_Pack[2]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_Pack[2]["LogId"] = 1200118

--掉宝地图随机奖励
local tBlackFiveCarnivalWeek_MapReward = {}
tBlackFiveCarnivalWeek_MapReward[1] = {}
tBlackFiveCarnivalWeek_MapReward[1]["ItemChanceSum"] = 10000
--赠赤炼石+1
tBlackFiveCarnivalWeek_MapReward[1][1] = {}
tBlackFiveCarnivalWeek_MapReward[1][1]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_MapReward[1][1]["ItemChance"] = 2000
tBlackFiveCarnivalWeek_MapReward[1][1]["Id"] = 3311171
tBlackFiveCarnivalWeek_MapReward[1][1]["Num"] = 5
--赠流星*1
tBlackFiveCarnivalWeek_MapReward[1][2] = {}
tBlackFiveCarnivalWeek_MapReward[1][2]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_MapReward[1][2]["ItemChance"] = 2500
tBlackFiveCarnivalWeek_MapReward[1][2]["Id"] = 3311174
tBlackFiveCarnivalWeek_MapReward[1][2]["Num"] = 10
--微光星陨石*1
tBlackFiveCarnivalWeek_MapReward[1][3] = {}
tBlackFiveCarnivalWeek_MapReward[1][3]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_MapReward[1][3]["ItemChance"] = 2400
tBlackFiveCarnivalWeek_MapReward[1][3]["Id"] = 3311175
tBlackFiveCarnivalWeek_MapReward[1][3]["Num"] = 10
--赠品黄色神纹精粹*1
tBlackFiveCarnivalWeek_MapReward[1][4] = {}
tBlackFiveCarnivalWeek_MapReward[1][4]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_MapReward[1][4]["ItemChance"] = 1500
tBlackFiveCarnivalWeek_MapReward[1][4]["Id"] = 3311172
tBlackFiveCarnivalWeek_MapReward[1][4]["Num"] = 10
--狂欢券*1
tBlackFiveCarnivalWeek_MapReward[1][5] = {}
tBlackFiveCarnivalWeek_MapReward[1][5]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_MapReward[1][5]["ItemChance"] = 1500
tBlackFiveCarnivalWeek_MapReward[1][5]["Id"] = 3311089
tBlackFiveCarnivalWeek_MapReward[1][5]["Num"] = 1
--赠龙珠*1
tBlackFiveCarnivalWeek_MapReward[1][6] = {}
tBlackFiveCarnivalWeek_MapReward[1][6]["RandomItemChanceType"] = 2
tBlackFiveCarnivalWeek_MapReward[1][6]["ItemChance"] = 100
tBlackFiveCarnivalWeek_MapReward[1][6]["Id"] = 3311173
tBlackFiveCarnivalWeek_MapReward[1][6]["Num"] = 2

--宝箱兑换
--精装狂欢宝箱
local tBlackFiveCarnivalWeek_ExchangeGiftBox = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["RewardItem"] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["RewardItem"][1]["Id"] = 3311075
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["RewardItem"][1]["Attr"] = "0 1"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["EmoneyLog"] = "350	21881	0	0	1	"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311075]["LogId"] = 12001184

tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["RewardItem"] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["RewardItem"][1]["Id"] = 3311076
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["RewardItem"][1]["Attr"] = "0 1"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["EmoneyLog"] = "350	21882	0	0	1	"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311076]["LogId"] = 12001184

tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["RewardItem"] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["RewardItem"][1] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["RewardItem"][1]["Id"] = 3311077
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["RewardItem"][1]["Attr"] = "0 1"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["EmoneyLog"] = "350	21883	0	0	1	"
tBlackFiveCarnivalWeek_ExchangeGiftBox[3311077]["LogId"] = 12001184

--碎片回收
local tBlackFiveCarnivalWeek_DebrisFragments = {}
--兑换修为值
tBlackFiveCarnivalWeek_DebrisFragments[1] = {}
tBlackFiveCarnivalWeek_DebrisFragments[1]["RewardRepairValue"] = {}
tBlackFiveCarnivalWeek_DebrisFragments[1]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_DebrisFragments[1]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_DebrisFragments[1]["LogId"] = 12001184

--兑换气力值
tBlackFiveCarnivalWeek_DebrisFragments[2] = {}
tBlackFiveCarnivalWeek_DebrisFragments[2]["RewardStrengthValue"] = {}
tBlackFiveCarnivalWeek_DebrisFragments[2]["RewardEffect"] = {}
tBlackFiveCarnivalWeek_DebrisFragments[2]["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_DebrisFragments[2]["LogId"] = 12001184

--10W赠点
local tBlackFiveCarnivalWeek_RewardEMoneyMono = {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"] = {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][1]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][1]["Id"]= 3311081
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][2]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][2]["Id"]= 3311082
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][3]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][3]["Id"]= 3311083
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][4]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][4]["Id"]= 3311084
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][5]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][5]["Id"]= 3311085
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][6]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][6]["Id"]= 3311086
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][7]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][7]["Id"]= 3311087
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][8]= {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["DeleteItem"][8]["Id"]= 3311088
tBlackFiveCarnivalWeek_RewardEMoneyMono["RewardEMoneyMono"] = {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["RewardEMoneyMono"]["Value"] = 100000
tBlackFiveCarnivalWeek_RewardEMoneyMono["EmoneyLog"] = "350	21880	0	0	1	"
tBlackFiveCarnivalWeek_RewardEMoneyMono["RewardEffect"] = {}
tBlackFiveCarnivalWeek_RewardEMoneyMono["RewardEffect"]["SzObj"] = "self"
tBlackFiveCarnivalWeek_RewardEMoneyMono["RewardEffect"]["Effect"] = "angelwing"
tBlackFiveCarnivalWeek_RewardEMoneyMono["LogId"] = 12001027


--天石转盘限量表
-- local tBlackFiveCarnivalWeek_Turntable = {}
-- tBlackFiveCarnivalWeek_Turntable[1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1]["ItemChanceSum"] = 10000
-- --明亮星陨石*1
-- tBlackFiveCarnivalWeek_Turntable[1][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][1]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][1]["ItemChance"] = 2600
-- tBlackFiveCarnivalWeek_Turntable[1][1]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][1]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][1]["RewardItem"][1]["Id"] = 3311115
-- tBlackFiveCarnivalWeek_Turntable[1][1]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][1]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][1]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][1]["LogId"] = 12001184
-- --赤练石+3*1（赠）
-- tBlackFiveCarnivalWeek_Turntable[1][2] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][2]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][2]["ItemChance"] = 2600
-- tBlackFiveCarnivalWeek_Turntable[1][2]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][2]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][2]["RewardItem"][1]["Id"] = 3311116
-- tBlackFiveCarnivalWeek_Turntable[1][2]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][2]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][2]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][2]["LogId"] = 12001184
-- --狂欢券*1（赠）
-- tBlackFiveCarnivalWeek_Turntable[1][3] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][3]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][3]["ItemChance"] = 2800
-- tBlackFiveCarnivalWeek_Turntable[1][3]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][3]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][3]["RewardItem"][1]["Id"] = 3311117
-- tBlackFiveCarnivalWeek_Turntable[1][3]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][3]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][3]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][3]["LogId"] = 12001184
-- --狂欢券*2（赠）
-- tBlackFiveCarnivalWeek_Turntable[1][4] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][4]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][4]["ItemChance"] = 1500
-- tBlackFiveCarnivalWeek_Turntable[1][4]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][4]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][4]["RewardItem"][1]["Id"] = 3311118
-- tBlackFiveCarnivalWeek_Turntable[1][4]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][4]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][4]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][4]["LogId"] = 12001184
-- --狂欢券*3（赠）
-- tBlackFiveCarnivalWeek_Turntable[1][5] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][5]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][5]["ItemChance"] = 280
-- tBlackFiveCarnivalWeek_Turntable[1][5]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][5]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][5]["RewardItem"][1]["Id"] = 3311119
-- tBlackFiveCarnivalWeek_Turntable[1][5]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][5]["GlobalId"] = 53041  -----------------------------------------记录数量的globalID
-- tBlackFiveCarnivalWeek_Turntable[1][5]["Pos"] = 1  ---------------------------------------------------记录活动期间总数量上限的global Data字段的位数
-- tBlackFiveCarnivalWeek_Turntable[1][5]["MaxData"] = 1100  -------------------------------------------记录活动期间总数量上限值
-- tBlackFiveCarnivalWeek_Turntable[1][5]["OtherPos"] = 0  ---------------------------------------------记录活动期间每日数量上限的lobal Data字段的位数
-- tBlackFiveCarnivalWeek_Turntable[1][5]["OtherMaxData"] = 100  -----------------------------------------记录活动期间每日数量上限值
-- tBlackFiveCarnivalWeek_Turntable[1][5]["FullIndex"] = 1  --------------------------------------------数量达到上限给的其他物品的索引
-- tBlackFiveCarnivalWeek_Turntable[1][5]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][5]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][5]["LogId"] = 12001184
-- --狂欢券*4（赠）
-- tBlackFiveCarnivalWeek_Turntable[1][6] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][6]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][6]["ItemChance"] = 200
-- tBlackFiveCarnivalWeek_Turntable[1][6]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][6]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][6]["RewardItem"][1]["Id"] = 3311120
-- tBlackFiveCarnivalWeek_Turntable[1][6]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][6]["GlobalId"] = 53041
-- tBlackFiveCarnivalWeek_Turntable[1][6]["Pos"] = 3
-- tBlackFiveCarnivalWeek_Turntable[1][6]["MaxData"] = 880
-- tBlackFiveCarnivalWeek_Turntable[1][6]["OtherPos"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][6]["OtherMaxData"] = 80
-- tBlackFiveCarnivalWeek_Turntable[1][6]["FullIndex"] = 1
-- tBlackFiveCarnivalWeek_Turntable[1][6]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][6]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][6]["LogId"] = 12001184
-- --狂欢券*5（赠）
-- tBlackFiveCarnivalWeek_Turntable[1][7] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][7]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][7]["ItemChance"] = 10
-- tBlackFiveCarnivalWeek_Turntable[1][7]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][7]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][7]["RewardItem"][1]["Id"] = 3311121
-- tBlackFiveCarnivalWeek_Turntable[1][7]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][7]["GlobalId"] = 53041
-- tBlackFiveCarnivalWeek_Turntable[1][7]["Pos"] = 5
-- tBlackFiveCarnivalWeek_Turntable[1][7]["MaxData"] = 550
-- tBlackFiveCarnivalWeek_Turntable[1][7]["OtherPos"] = 4
-- tBlackFiveCarnivalWeek_Turntable[1][7]["OtherMaxData"] = 50
-- tBlackFiveCarnivalWeek_Turntable[1][7]["FullIndex"] = 1
-- tBlackFiveCarnivalWeek_Turntable[1][7]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][7]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][7]["LogId"] = 12001184
-- --狂欢券*6（赠）
-- tBlackFiveCarnivalWeek_Turntable[1][8] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][8]["RandomItemChanceType"] = 2
-- tBlackFiveCarnivalWeek_Turntable[1][8]["ItemChance"] = 10
-- tBlackFiveCarnivalWeek_Turntable[1][8]["RewardItem"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][8]["RewardItem"][1] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][8]["RewardItem"][1]["Id"] = 3311122
-- tBlackFiveCarnivalWeek_Turntable[1][8]["RewardItem"][1]["Attr"] = "0 1 3"
-- tBlackFiveCarnivalWeek_Turntable[1][8]["GlobalId"] = 53042
-- tBlackFiveCarnivalWeek_Turntable[1][8]["Pos"] = 1
-- tBlackFiveCarnivalWeek_Turntable[1][8]["MaxData"] = 330
-- tBlackFiveCarnivalWeek_Turntable[1][8]["OtherPos"] = 0
-- tBlackFiveCarnivalWeek_Turntable[1][8]["OtherMaxData"] = 30
-- tBlackFiveCarnivalWeek_Turntable[1][8]["FullIndex"] = 1
-- tBlackFiveCarnivalWeek_Turntable[1][8]["RewardEffect"] = {}
-- tBlackFiveCarnivalWeek_Turntable[1][8]["RewardEffect"]["Effect"] = "angelwing"
-- tBlackFiveCarnivalWeek_Turntable[1][8]["LogId"] = 12001184

---------------------------------逻辑------------------------------
--兑换商店
function BlackFiveCarnivalWeek_OpenShop(nNpcId)
	-- if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
	-- LinkNpcGossipFunc_New(nNpcId,"1-1")
		-- return
	-- end
	-- if CommonFunc_GetAfterActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
	-- LinkNpcGossipFunc_New(nNpcId,"1-2")
		-- return
	-- end
	--User_OpenDialog(0,nNpcId)
	User_OpenExchangeShop()
end 

--时效礼包开启逻辑
function BlackFiveCarnivalWeek_OpenTimePack(nItemId)
	local nUserName = Get_UserName()
	local nNum = Get_CountItemType(nItemId,0)
--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
--判断是否在活动期间
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then
		Item_DelMulItem(nItemId,nItemId,nNum)
		BlackFiveCarnivalWeek_DeleteLog(nItemId,nNum)
		User_TalkChannel2005(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["Overdue"])
		return
	end 
--判断玩家是否拥有礼包
	if not Item_ChkItem(nItemId) then 
		return
	end
--判断背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tBlackFiveCarnivalWeek_Pack,nItemId)
	if not User_CheckLeftSpace(nSpace) then
		User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["NoSpace"],nSpace))
		return
	end
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		BlackFiveCarnivalWeek_DeleteLog(nItemId,1)
		local nTable = RewardTemplate_NewRandom(tBlackFiveCarnivalWeek_Pack,nItemId)
		local nValue = nTable[1]["tAward"][1]["Value"]
		if nValue == 3  then 
			Sys_SystemBroadcast(string.format(tBlackFiveCarnivalWeek_Text["FragmentU"],nUserName))
		elseif nValue == 4 then 
			Sys_SystemBroadcast(string.format(tBlackFiveCarnivalWeek_Text["FragmentL"],nUserName))
		end 
	end
end 

--每日上线领狂欢卷
function BlackFiveCarnivalWeek_LoginAward()
	local nEventType1 = tBlackFiveCarnivalWeek_Stc[1]["EventType"]
	local nEventType2 = tBlackFiveCarnivalWeek_Stc[2]["EventType"]
	local nDataType1 = tBlackFiveCarnivalWeek_Stc[1]["DataType"]
	local nDataType2 = tBlackFiveCarnivalWeek_Stc[2]["DataType"]
	local nData1 = Get_UserStatisticValue(nEventType1,nDataType1)
	local nData2 = Get_UserStatisticValue(nEventType2,nDataType2)
	local nEventType12 = tBlackFiveCarnivalWeek_Stc[12]["EventType"]
	local nEventType13 = tBlackFiveCarnivalWeek_Stc[13]["EventType"]
	local nEventType14 = tBlackFiveCarnivalWeek_Stc[13]["EventType"]
	local nDataType12 = tBlackFiveCarnivalWeek_Stc[12]["DataType"]
	local nDataType13 = tBlackFiveCarnivalWeek_Stc[13]["DataType"]
	local nDataType14 = tBlackFiveCarnivalWeek_Stc[14]["DataType"]
	local nData12 = Get_UserStatisticValue(nEventType12,nDataType12)
	local nData13 = Get_UserStatisticValue(nEventType13,nDataType13)
	local nData14 = Get_UserStatisticValue(nEventType14,nDataType14)
	local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
	local nAttr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
	local nItemId2 = tBlackFiveCarnivalWeek_Item[3311123]["Id"]
	local nAttr2 = tBlackFiveCarnivalWeek_Item[3311123]["Attr"]
	local nItemId3 = tBlackFiveCarnivalWeek_Item[3311124]["Id"]
	local nAttr3 = tBlackFiveCarnivalWeek_Item[3311124]["Attr"]
	local nItemId4 = tBlackFiveCarnivalWeek_Item[3311125]["Id"]
	local nAttr4 = tBlackFiveCarnivalWeek_Item[3311125]["Attr"]
	
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	local space = 1
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	--等级限制
	if not User_JudgeLevelAndMetempsychosis (nLevel,nMetempsychosis) then 
		return
	end
--判断是否在活动期间
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then
		return
	end 
--判断掩码是否存在
	if not Task_ChkStatistic(nEventType1,nDataType1) then 
		--判断背包空间
		if User_CheckLeftSpace(space) then
			Task_SetStatistic(nEventType1,nDataType1,1,1)
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
		end
	else
		if Task_StcInterval(nEventType1,nDataType1,1,4) then 
			--Task_SetStatistic(nEventType1,nDataType1,0,0)
			if User_CheckLeftSpace(space) then
			Task_AddStatistic(nEventType1,nDataType1,1,1)
			Task_SetStcTimestamp(nEventType1,nDataType1,0)
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
			end 
		end
	end 
--连续上线额外奖励
	if not Task_ChkStatistic(nEventType2,nDataType2) then ------------------------------未登录过
		Task_SetStatistic(nEventType2,nDataType2,1,1)
		Task_SetStcTimestamp(nEventType2,nDataType2,0)
		return
	else
		if Task_StcInterval(nEventType2,nDataType2,2,4) then  ----------------------------------判断时间戳间隔是否为两天 两天则重新记为1
			
			Task_SetStatistic(nEventType2,nDataType2,1,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			return
		else
			if Task_StcInterval(nEventType2,nDataType2,1,4) then -----------------------------判断是否为隔天登入（即连续登录）
				if nData2 == 2 then ----------------------------------------判断是否为第三天登录
				--判断背包空间
					local space = 1
					if User_CheckLeftSpace(space) then
						if not Task_ChkStatistic(nEventType12,nDataType12) then
							Task_AddStatistic(nEventType2,nDataType2,1,1)
							Task_SetStcTimestamp(nEventType2,nDataType2,0)
							Task_SetStatistic(nEventType12,nDataType12,1,1)
							Task_SetStcTimestamp(nEventType12,nDataType12,0)
							local nItemName = Get_ItemtypeName(nItemId2)
							User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
							Item_AddNewItem(nItemId2,nAttr2)
							BlackFiveCarnivalWeek_Log(nItemId2)
							return
						end 
					end
				elseif nData2 == 4 then ----------------------------------------判断是否为第五天登录
				--判断背包空间
					local space = 1
					if User_CheckLeftSpace(space) then
						if not Task_ChkStatistic(nEventType13,nDataType13) then
							Task_AddStatistic(nEventType2,nDataType2,1,1)
							Task_SetStcTimestamp(nEventType2,nDataType2,0)
							Task_SetStatistic(nEventType13,nDataType13,1,1)
							Task_SetStcTimestamp(nEventType13,nDataType13,0)
							local nItemName = Get_ItemtypeName(nItemId3)
							User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
							Item_AddNewItem(nItemId3,nAttr3)
							BlackFiveCarnivalWeek_Log(nItemId3)
							return
						end 
					end
				elseif nData2 == 6 then ----------------------------------------判断是否为第七天登录
				--判断背包空间
					local space = 1
					if User_CheckLeftSpace(space) then
						if not Task_ChkStatistic(nEventType14,nDataType14) then
							Task_AddStatistic(nEventType2,nDataType2,1,1)
							Task_SetStcTimestamp(nEventType2,nDataType2,0)
							Task_SetStatistic(nEventType14,nDataType14,1,1)
							Task_SetStcTimestamp(nEventType14,nDataType14,0)
							local nItemName = Get_ItemtypeName(nItemId4)
							User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
							Item_AddNewItem(nItemId4,nAttr4)
							BlackFiveCarnivalWeek_Log(nItemId4)
							return
						end 
					end
				end
				--连续登入但不是领奖天数时 操作掩码记录连续登入天数
				Task_AddStatistic(nEventType2,nDataType2,1,1) 
				Task_SetStcTimestamp(nEventType2,nDataType2,0)
			end 
		end 
	end 
end 

--判断等级不足
function BlackFiveCarnivalWeek_NoLevel()
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return false
	end 
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then 
		return false
	else
		return true
	end 
end 

--判断等级足够
function BlackFiveCarnivalWeek_YesLevel()
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return false
	end 
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then 
		return true
	else
		return false
	end 
end 

--兑换狂欢大礼包
function BlackFiveCarnivalWeek_ExchangeGiftBox(nItemId,nNum)
	local GolobalId = tBlackFiveCarnivalWeek_Cont["Golobal3"]
	local nNum1 = Get_SysDynaGlobalData0(GolobalId)
	local nNum2 = Get_SysDynaGlobalData1(GolobalId)
	local nNum3 = Get_SysDynaGlobalData2(GolobalId)
	local nTicketId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
	local nNpcId = Get_NpcId()
--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	local nSpace = 1
	if not User_CheckLeftSpace(nSpace) then 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoSpace"])
		return
	end
	--宝箱已兑换完
	if nNum1 <= 0 and nNum == 1 then 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["Exchange1"])
		return
	elseif nNum2 <= 0 and nNum == 5 then 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["Exchange2"])
		return
	elseif nNum3 <= 0 and nNum == 15 then 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["Exchange3"])
		return
	end
	--检测物品给奖励
	if Item_ChkMulItem(nTicketId,nTicketId,nNum) then 
		if Item_DelMulItem(nTicketId,nTicketId,nNum) then 
			BlackFiveCarnivalWeek_DeleteLog(nTicketId,nNum)
			if nItemId == 3311075 then 
				local nNewNum = nNum1 - 1
				Sys_SetSynaGlobalData0(GolobalId,nNewNum)
			elseif nItemId == 3311076 then 
				local nNewNum = nNum2 - 1
				Sys_SetSynaGlobalData1(GolobalId,nNewNum)
			elseif nItemId == 3311077 then 
				local nNewNum = nNum3 - 1
				Sys_SetSynaGlobalData2(GolobalId,nNewNum)
			end 
			RewardTemplate_UseItem(tBlackFiveCarnivalWeek_ExchangeGiftBox[nItemId])
		end 
	else 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["Nothing"])
	end 
end 
--碎片回收 可兑换成气力值或修为值
function BlackFiveCarnivalWeek_DebrisFragments(nType)
	local nItemG = tBlackFiveCarnivalWeek_Item[3311081]
	local nItemR = tBlackFiveCarnivalWeek_Item[3311082]
	local nItemA = tBlackFiveCarnivalWeek_Item[3311083]
	local nItemT = tBlackFiveCarnivalWeek_Item[3311084]
	local nItemE = tBlackFiveCarnivalWeek_Item[3311085]
	local nItemF = tBlackFiveCarnivalWeek_Item[3311086]
	local nItemU = tBlackFiveCarnivalWeek_Item[3311087]
	local nItemL = tBlackFiveCarnivalWeek_Item[3311088]
	local nNumG = Get_CountItemType(nItemG,0)
	local nNumR = Get_CountItemType(nItemR,0)
	local nNumA = Get_CountItemType(nItemA,0)
	local nNumT = Get_CountItemType(nItemT,0)
	local nNumE = Get_CountItemType(nItemE,0)
	local nNumF = Get_CountItemType(nItemF,0)
	local nNumU = Get_CountItemType(nItemU,0)
	local nNumL = Get_CountItemType(nItemL,0)
	local nNumFragments = (nNumG + nNumR + nNumA + nNumT + nNumE + nNumF + nNumU + nNumL) * 100
	local nNpcId = Get_NpcId()
	if nNumFragments <= 0 then 
		return
	end
--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	--删除碎片
	if nNumG ~= 0 then 
		if Item_DelMulItem(nItemG,nItemG,nNumG) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemG,nNumG)
		end 
	end
	if nNumR ~= 0 then 
		if Item_DelMulItem(nItemR,nItemR,nNumR) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemR,nNumR)
		end 
	end
	if nNumA ~= 0 then 
		if Item_DelMulItem(nItemA,nItemA,nNumA) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemA,nNumA)
		end 
	end 
	if nNumT ~= 0 then 
		if Item_DelMulItem(nItemT,nItemT,nNumT) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemT,nNumT)
		end
	end 
	if nNumE ~= 0 then 
		if Item_DelMulItem(nItemE,nItemE,nNumE) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemE,nNumE)
		end 
	end
	if nNumF ~= 0 then 
		if Item_DelMulItem(nItemF,nItemF,nNumF) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemF,nNumF)
		end 
	end
	if nNumU ~= 0 then 
		if Item_DelMulItem(nItemU,nItemU,nNumU) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemU,nNumU)
		end 
	end
	if nNumL ~= 0 then 
		if Item_DelMulItem(nItemL,nItemL,nNumL) then 
			BlackFiveCarnivalWeek_DeleteLog(nItemL,nNumL)
		end 
	end
	--nType == 1 时兑换修为值 == 2 时兑换气力值
	if nType == 1 then 
		--local tSynthesis = CommonFunc_Copy(tBlackFiveCarnivalWeek_DebrisFragments[nType])
		--tSynthesis["RewardRepairValue"]["Value"] = nNumFragments
		-- RewardTemplate_UseItem(tSynthesis)
		tBlackFiveCarnivalWeek_DebrisFragments[1]["RewardRepairValue"]["Value"] = nNumFragments
		RewardTemplate_UseItem(tBlackFiveCarnivalWeek_DebrisFragments[1])
	elseif  nType == 2 then 
		-- local tSynthesis = CommonFunc_Copy(tBlackFiveCarnivalWeek_DebrisFragments[nType])
		-- tSynthesis["RewardStrengthValue"]["Value"] = nNumFragments
		-- RewardTemplate_UseItem(tSynthesis)
		tBlackFiveCarnivalWeek_DebrisFragments[2]["RewardStrengthValue"]["Value"] = nNumFragments
		RewardTemplate_UseItem(tBlackFiveCarnivalWeek_DebrisFragments[2])
		
	end 
end 

--碎片回收选项显示
function BlackFiveCarnivalWeek_RecoveryOption()
	local nItemG = tBlackFiveCarnivalWeek_Item[3311081]
	local nItemR = tBlackFiveCarnivalWeek_Item[3311082]
	local nItemA = tBlackFiveCarnivalWeek_Item[3311083]
	local nItemT = tBlackFiveCarnivalWeek_Item[3311084]
	local nItemE = tBlackFiveCarnivalWeek_Item[3311085]
	local nItemF = tBlackFiveCarnivalWeek_Item[3311086]
	local nItemU = tBlackFiveCarnivalWeek_Item[3311087]
	local nItemL = tBlackFiveCarnivalWeek_Item[3311088]
	local nNumG = Get_CountItemType(nItemG,0)
	local nNumR = Get_CountItemType(nItemR,0)
	local nNumA = Get_CountItemType(nItemA,0)
	local nNumT = Get_CountItemType(nItemT,0)
	local nNumE = Get_CountItemType(nItemE,0)
	local nNumF = Get_CountItemType(nItemF,0)
	local nNumU = Get_CountItemType(nItemU,0)
	local nNumL = Get_CountItemType(nItemL,0)
	local nNumFragments = (nNumG + nNumR + nNumA + nNumT + nNumE + nNumF + nNumU + nNumL) * 100
	local nNpcId = Get_NpcId()
	if nNumFragments == 0 then 
		tNpcGossip[23437]["tOption5-1"] = {511}
		tNpcGossip[23437]["Option511"] = tBlackFiveCarnivalWeek_Text[23437]["Option513"]
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	else
		tNpcGossip[23437]["tOption5-1"] = {511,512}
		tNpcGossip[23437]["Option511"] = string.format(tBlackFiveCarnivalWeek_Text[23437]["Option511"],nNumFragments)
		tNpcGossip[23437]["Option512"] = string.format(tBlackFiveCarnivalWeek_Text[23437]["Option512"],nNumFragments)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
	end 
end


--判断碎片是否集齐
function BlackFiveCarnivalWeek_AllFragments()
	local nItemG = tBlackFiveCarnivalWeek_Item[3311081]
	local nItemR = tBlackFiveCarnivalWeek_Item[3311082]
	local nItemA = tBlackFiveCarnivalWeek_Item[3311083]
	local nItemT = tBlackFiveCarnivalWeek_Item[3311084]
	local nItemE = tBlackFiveCarnivalWeek_Item[3311085]
	local nItemF = tBlackFiveCarnivalWeek_Item[3311086]
	local nItemU = tBlackFiveCarnivalWeek_Item[3311087]
	local nItemL = tBlackFiveCarnivalWeek_Item[3311088]
	local nNpcId = Get_NpcId()
--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	
	if Item_ChkItem(nItemG) and Item_ChkItem(nItemR) and Item_ChkItem(nItemA) and Item_ChkItem(nItemT) and Item_ChkItem(nItemE) and Item_ChkItem(nItemF) and Item_ChkItem(nItemU) and Item_ChkItem(nItemL) then 
		LinkNpcGossipFunc_New(nNpcId,"6-1")
	else 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoFragment"])
	end 
end 

--兑换10w赠点
function BlackFiveCarnivalWeek_ExchangeEMoneyMono()
	local nItemG = tBlackFiveCarnivalWeek_Item[3311081]
	local nItemR = tBlackFiveCarnivalWeek_Item[3311082]
	local nItemA = tBlackFiveCarnivalWeek_Item[3311083]
	local nItemT = tBlackFiveCarnivalWeek_Item[3311084]
	local nItemE = tBlackFiveCarnivalWeek_Item[3311085]
	local nItemF = tBlackFiveCarnivalWeek_Item[3311086]
	local nItemU = tBlackFiveCarnivalWeek_Item[3311087]
	local nItemL = tBlackFiveCarnivalWeek_Item[3311088]
	local GolobalId3 = tBlackFiveCarnivalWeek_Cont["Golobal3"]
	local data4 = Get_SysDynaGlobalData4(GolobalId3)
	local nUserName = Get_UserName()
--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	--判断赠点上限
	if Get_UserMonoEMoney() + tBlackFiveCarnivalWeek_RewardEMoneyMono["RewardEMoneyMono"]["Value"] > G_User_MaxEmoneyMono then
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoSpaceEmoney"])
		return
	end 
	if Item_ChkItem(nItemG) and Item_ChkItem(nItemR) and Item_ChkItem(nItemA) and Item_ChkItem(nItemT) and Item_ChkItem(nItemE) and Item_ChkItem(nItemF) and Item_ChkItem(nItemU) and Item_ChkItem(nItemL) then 
		if data4 == 1 then 
			return
		end 
		--设置领奖限制防止被刷
		Sys_SetSynaGlobalData4(GolobalId3,1)
		RewardTemplate_UseItem(tBlackFiveCarnivalWeek_RewardEMoneyMono)
		--系统提示
		User_TalkChannel2005(tBlackFiveCarnivalWeek_Text[23437]["MonoEmoney"])
		--全服公告
		Sys_SystemBroadcast(string.format(tBlackFiveCarnivalWeek_Text["RewardEmoney"],nUserName))
	else 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoFragment"])
	end 
--if Item_DelItem(nItemG) and Item_DelItem(nItemR) and Item_DelItem(nItemA) and Item_DelItem(nItemT) and Item_DelItem(nItemE) and Item_DelItem(nItemF) and Item_DelItem(nItemU) and Item_DelItem(nItemL) then 
end 

--兑换转盘第一层逻辑
function BlackFiveCarnivalWeek_Turntable1(nTurntableNum)
	local nEMoneyNum = Get_UserEMoney()
	local nNpcId = Get_NpcId()
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	if nTurntableNum == 13 then 
		if nEMoneyNum >= nTurntableNum then 
			tNpcGossip[23438]["OptionFunc211"] = "BlackFiveCarnivalWeek_Turntable2</N>"..nTurntableNum
			LinkNpcGossipFunc_New(nNpcId,"2-1")
			--if User_AddEMoney(-nEMoneyNum) then 
		else
			Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoEmoney"])
		end 
	elseif nTurntableNum == 130 then 
		if nEMoneyNum >= nTurntableNum then 
			tNpcGossip[23438]["OptionFunc311"] = "BlackFiveCarnivalWeek_Turntable2</N>"..nTurntableNum
			LinkNpcGossipFunc_New(nNpcId,"3-1")
		else
			Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoEmoney"])
		end
	end 
end 

--兑换转盘第二层逻辑
function BlackFiveCarnivalWeek_Turntable2(nTurntableNum)
	local nEMoneyNum = Get_UserEMoney()
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end 
	if nTurntableNum == 13 then 
		if nEMoneyNum >= nTurntableNum then 
			local nSpace = 1
			if not User_CheckLeftSpace(nSpace) then 
				Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoSpace"])
				return
			end
			if User_AddEMoney(-nTurntableNum) then 
				--RewardTemplate_NewRandom(tBlackFiveCarnivalWeek_Turntable,1)
				RewardTemplate_UseItem(tBlackFiveCarnivalWeek_Pack[1])
				Sys_SaveActionFestivalLog(tBlackFiveCarnivalWeek_Log["Turntable1"])
			end 
		else
			Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoEmoney"])
		end 
	elseif nTurntableNum == 130 then 
		if nEMoneyNum >= nTurntableNum then 
			local nSpace = 10
			if not User_CheckLeftSpace(nSpace) then 
				Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoSpace"])
				return
			end
			if User_AddEMoney(-nTurntableNum) then 
				RewardTemplate_UseItem(tBlackFiveCarnivalWeek_Pack[2])
				-- for i = 1 ,10 do 
					-- RewardTemplate_NewRandom(tBlackFiveCarnivalWeek_Turntable,1)
					-- Sys_SaveActionFestivalLog(tBlackFiveCarnivalWeek_Log["Turntable1"])
				-- end 
				Sys_SaveActionFestivalLog(tBlackFiveCarnivalWeek_Log["Turntable2"])
			end 
		else
			Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["NoEmoney"])
		end
	end 
end 

--锁片获得狂欢卷
function BlackFiveCarnivalWeek_LockSheet(nItemId,nNum)
	local nEventType6 = tBlackFiveCarnivalWeek_Stc[6]["EventType"]
	local nEventType7 = tBlackFiveCarnivalWeek_Stc[7]["EventType"]
	local nEventType8 = tBlackFiveCarnivalWeek_Stc[8]["EventType"]
	local nEventType9 = tBlackFiveCarnivalWeek_Stc[9]["EventType"]
	local nDataType6 = tBlackFiveCarnivalWeek_Stc[6]["DataType"]
	local nDataType7 = tBlackFiveCarnivalWeek_Stc[7]["DataType"]
	local nDataType8 = tBlackFiveCarnivalWeek_Stc[8]["DataType"]
	local nDataType9 = tBlackFiveCarnivalWeek_Stc[9]["DataType"]
	local nData6 = Get_UserStatisticValue(nEventType6,nDataType6)
	local nData7 = Get_UserStatisticValue(nEventType7,nDataType7)
	local nData8 = Get_UserStatisticValue(nEventType8,nDataType8)
	local nData9 = Get_UserStatisticValue(nEventType9,nDataType9)
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	--等级限制
	if not User_JudgeLevelAndMetempsychosis (nLevel,nMetempsychosis) then 
		return
	end
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	--判断是否为炫日锁片
	if nItemId == tBlackFiveCarnivalWeek_Item[721533] then 
		--当天获得五十个以上不再获得
		if nData6 >= 50 then 
			if not Task_StcInterval(nEventType6,nDataType6,1,4) then 
				return
			else 
				Task_SetStatistic(nEventType6,nDataType6,0,1)
			end 
		end 
		--获得炫日锁片操作掩码
		if nData6 == 0 then  ----未获得过
			Task_SetStatistic(nEventType6,nDataType6,nNum,1)
			Task_SetStcTimestamp(nEventType6,nDataType6,0)
		else 
			if Task_StcInterval(nEventType6,nDataType6,1,4) then 
				Task_SetStatistic(nEventType6,nDataType6,nNum,1)
				Task_SetStcTimestamp(nEventType6,nDataType6,0)
			else ----获得过但当日未超过50个
				Task_AddStatistic(nEventType6,nDataType6,nNum,1)
				Task_SetStcTimestamp(nEventType6,nDataType6,0)
			end 
		end 
		local nData62 = Get_UserStatisticValue(nEventType6,nDataType6)
		if nData62 >= 50 then 
			local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
			local nAttr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
		end 
	end 
		
	--判断是否为残月锁片
	if nItemId == tBlackFiveCarnivalWeek_Item[721534] then 
		--当天获得五十个以上不再获得
		if nData7 >= 50 then 
			if not Task_StcInterval(nEventType7,nDataType7,1,4) then 
				return
			else
				Task_SetStatistic(nEventType7,nDataType7,0,1)
			end 
		end 
		--获得残月锁片操作掩码
		if nData7 == 0 then  ----未获得过
			Task_SetStatistic(nEventType7,nDataType7,nNum,1)
			Task_SetStcTimestamp(nEventType7,nDataType7,0)
		else 
			if Task_StcInterval(nEventType7,nDataType7,1,4) then 
				Task_SetStatistic(nEventType7,nDataType7,nNum,1)
				Task_SetStcTimestamp(nEventType7,nDataType7,0)
			else ----获得过但当日未超过50个
				Task_AddStatistic(nEventType7,nDataType7,nNum,1)
				Task_SetStcTimestamp(nEventType7,nDataType7,0)
			end 
		end 
		local nData72 = Get_UserStatisticValue(nEventType7,nDataType7)
		if nData72 >= 50 then 
			local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
			local nAttr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
		end 
	end 
	
	--判断是否为繁星锁片
	if nItemId == tBlackFiveCarnivalWeek_Item[721535] then 
		--当天获得五十个以上不再获得
		if nData8 >= 50 then 
			if not Task_StcInterval(nEventType8,nDataType8,1,4) then 
				return
			else
				Task_SetStatistic(nEventType8,nDataType8,0,1)
			end 
		end 
		--获得繁星锁片操作掩码
		if nData8 == 0 then  ----未获得过
			Task_SetStatistic(nEventType8,nDataType8,nNum,1)
			Task_SetStcTimestamp(nEventType8,nDataType8,0)
		else 
			if Task_StcInterval(nEventType8,nDataType8,1,4) then 
				Task_SetStatistic(nEventType8,nDataType8,nNum,1)
				Task_SetStcTimestamp(nEventType8,nDataType8,0)
			else ----获得过但当日未超过50个
				Task_AddStatistic(nEventType8,nDataType8,nNum,1)
				Task_SetStcTimestamp(nEventType8,nDataType8,0)
			end 
		end 
		local nData82 = Get_UserStatisticValue(nEventType8,nDataType8)
		if nData82 >= 50 then 
			local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
			local nAttr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
		end 
	end 
	
	--判断是否为流云锁片
	if nItemId == tBlackFiveCarnivalWeek_Item[721536] then 
		--当天获得五十个以上不再获得
		if nData9 >= 50 then 
			if not Task_StcInterval(nEventType9,nDataType9,1,4) then 
				return
			else
				Task_SetStatistic(nEventType9,nDataType9,0,1)
			end 
		end 
		--获得流云锁片操作掩码
		if nData9 == 0 then  ----未获得过
			Task_SetStatistic(nEventType9,nDataType9,nNum,1)
			Task_SetStcTimestamp(nEventType9,nDataType9,0)
		else 
			if Task_StcInterval(nEventType9,nDataType9,1,4) then 
				Task_SetStatistic(nEventType9,nDataType9,nNum,1)
				Task_SetStcTimestamp(nEventType9,nDataType9,0)
			else ----获得过但当日未超过50个
				Task_AddStatistic(nEventType9,nDataType9,nNum,1)
				Task_SetStcTimestamp(nEventType9,nDataType9,0)
			end 
		end 
		local nData92 = Get_UserStatisticValue(nEventType9,nDataType9)
		if nData92 >= 50 then 
			local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
			local nAttr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
		end 
	end 
end 

--PK赛接口
function BlackFiveCarnivalWeek_PK(nUserId,nFieldNum)
	local nEventType11 = tBlackFiveCarnivalWeek_Stc[11]["EventType"]
	local nDataType11 = tBlackFiveCarnivalWeek_Stc[11]["DataType"]
	local nData11 = Get_UserStatisticValue(nEventType11,nDataType11,nUserId)
	local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
	local nAttr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	--等级限制
	if not User_JudgeLevelAndMetempsychosis (nLevel,nMetempsychosis,nUserId) then 
		return
	end
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	if Task_StcInterval(nEventType11,nDataType11,1,4,nUserId) then 
		Task_SetStatistic(nEventType11,nDataType11,0,1,nUserId)
		Task_SetStcTimestamp(nEventType11,nDataType11,0,nUserId)
	end 
	local nData111 = Get_UserStatisticValue(nEventType11,nDataType11,nUserId)
	if nData111 == 3 then 
		Task_AddStatistic(nEventType11,nDataType11,1,1,nUserId)
		Task_SetStcTimestamp(nEventType11,nDataType11,0,nUserId)
		Item_AddNewItem(nItemId,nAttr,nUserId)
		BlackFiveCarnivalWeek_LogUserId(nItemId,nUserId)
		local nItemName = Get_ItemtypeName(nItemId,nUserId)
		User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName),nUserId)
	elseif nData111 < 4 then 
		Task_AddStatistic(nEventType11,nDataType11,1,1,nUserId)
		Task_SetStcTimestamp(nEventType11,nDataType11,0,nUserId)
	elseif nData111 > 3 then 
		return
	end 
end 

-- --排位赛赢第四场
-- function BlackFiveCarnivalWeek_DisplacementPK(nUserId,nFieldNum)
	-- User_TalkChannel2005("a",nUserId)
	-- Sys_MsgBox("a =" ..nFieldNum,nil,nil,nUserId)
	-- local nEventType11 = tBlackFiveCarnivalWeek_Stc[11]["EventType"]
	-- local nDataType11 = tBlackFiveCarnivalWeek_Stc[11]["DataType"]
	-- local nData11 = Get_UserStatisticValue(nEventType11,nDataType11,nUserId)
	-- local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	-- local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	-- User_TalkChannel2005("nFieldNum = " ..nFieldNum,nUserId)
	-- --活动时间前不执行函数
	-- if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		-- return
	-- end 
	-- --等级限制
	-- if not User_JudgeLevelAndMetempsychosis (nLevel,nMetempsychosis,nUserId) then 
		-- return
	-- end
	-- --活动结束
	-- if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		-- return
	-- end 
	-- if nFieldNum == 4 then 
		-- BlackFiveCarnivalWeek_PK(nUserId)
	-- end 
-- end 


--神龙岛怪物击杀奖励
function BlackFiveCarnivalWeek_KillMonsterDragon()
	local nEventType3 = tBlackFiveCarnivalWeek_Stc[3]["EventType"]
	local nDataType3 = tBlackFiveCarnivalWeek_Stc[3]["DataType"]
	local nData3 = Get_UserStatisticValue(nEventType3,nDataType3)
	local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
	local Attr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
	local nUserId = Get_UserId()
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
--等级限制
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then 
		return
	end 
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	if Task_StcInterval(nEventType3,nDataType3,1,4) then 
		Task_SetStatistic(nEventType3,nDataType3,0,1)
	end
	local nData31 = Get_UserStatisticValue(nEventType3,nDataType3)
	if nData31 >= 900 then 
		return
	end 
	if tBlackFiveCarnivalWeek_MonsterCount["Dragon"][nUserId] == nil then 
		tBlackFiveCarnivalWeek_MonsterCount["Dragon"][nUserId] = 0
	end 
	tBlackFiveCarnivalWeek_MonsterCount["Dragon"][nUserId] = tBlackFiveCarnivalWeek_MonsterCount["Dragon"][nUserId] + 1 
	if tBlackFiveCarnivalWeek_MonsterCount["Dragon"][nUserId] >= 50 then 
		tBlackFiveCarnivalWeek_MonsterCount["Dragon"][nUserId] = 0
		Task_AddStatistic(nEventType3,nDataType3,50,1)
		Task_SetStcTimestamp(nEventType3,nDataType3,0)
	else
		tSynthesis = nCount
	end
	local nData32 = Get_UserStatisticValue(nEventType3,nDataType3)
	if nData32 >= 900 then 
		local nItemName = Get_ItemtypeName(nItemId)
		User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
		Item_AddNewItem(nItemId,Attr)
		BlackFiveCarnivalWeek_Log(nItemId)
	end 
end 
	
--古神灵境怪物击杀奖励
function BlackFiveCarnivalWeek_KillMonsterGod()
	local nEventType4 = tBlackFiveCarnivalWeek_Stc[4]["EventType"]
	local nDataType4 = tBlackFiveCarnivalWeek_Stc[4]["DataType"]
	local nData4 = Get_UserStatisticValue(nEventType4,nDataType4)
	local nItemId = tBlackFiveCarnivalWeek_Item[3311089]["Id"]
	local Attr = tBlackFiveCarnivalWeek_Item[3311089]["Attr"]
	local nUserId = Get_UserId()
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
--等级限制
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then 
		return
	end 
--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	if Task_StcInterval(nEventType4,nDataType4,1,4) then 
		Task_SetStatistic(nEventType4,nDataType4,0,1)
	end
	local nData41 = Get_UserStatisticValue(nEventType4,nDataType4)
	if nData41 >= 100 then 
		return
	end 
	if tBlackFiveCarnivalWeek_MonsterCount["God"][nUserId] == nil then 
		tBlackFiveCarnivalWeek_MonsterCount["God"][nUserId] = 0
	end 
	tBlackFiveCarnivalWeek_MonsterCount["God"][nUserId] = tBlackFiveCarnivalWeek_MonsterCount["God"][nUserId] + 1 
	if tBlackFiveCarnivalWeek_MonsterCount["God"][nUserId] >= 50 then 
		tBlackFiveCarnivalWeek_MonsterCount["God"][nUserId] = 0
		Task_AddStatistic(nEventType4,nDataType4,50,1)
		Task_SetStcTimestamp(nEventType4,nDataType4,0)
	else
		tSynthesis = nCount
	end
	local nData42 = Get_UserStatisticValue(nEventType4,nDataType4)
	if nData42 >= 100 then 
		local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
		Item_AddNewItem(nItemId,Attr)
		BlackFiveCarnivalWeek_Log(nItemId)
	end 
end 

--传送进掉宝地图
function BlackFiveCarnivalWeek_DropTreasure()
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	local nInstanceType = tBlackFiveCarnivalWeek_Cont["Instancetype"]
	local nEventType10 = tBlackFiveCarnivalWeek_Stc[10]["EventType"]
	local nDataType10 = tBlackFiveCarnivalWeek_Stc[10]["DataType"]
	local nData10 = Get_UserStatisticValue(nEventType10,nDataType10)
	local nUserId = Get_UserId()
	local nGetIntolog = "0,0,0,0,12001184,1,103881,1"
	local nUserMapId = Get_UserMapId()
	local nNpcMapId = Get_NpcMapID(23436)
	if nUserMapId ~= nNpcMapId then 
		return
	end
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	--等级限制
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis) then 
		return
	end 
	--判断是否反复参加同一时段的夺宝活动
	if not Task_StcInterval(nEventType10,nDataType10,5,2) then 
		Sys_MsgBox(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["Rejoin"])
		return
	end
	--进副本
	if User_EnterInstance(nInstanceType) then 
	--if User_CreateInstance(nInstanceType,nUserId) then 
		Task_AddStatistic(nEventType10,nDataType10,1,1)
		Task_SetStcTimestamp(nEventType10,nDataType10,0)
		local nMapId = Get_UserMapId()
		--进地图刷物品
		--参1:地图ID, 参2:物品类型ID, 参3:X坐标, 参4:Y坐标, 参5:X格子数, 参6:Y格子数, 参7:数量, 参8:存在时间(单位是秒)
		Map_DropMultiItems(nMapId,3311080,42,42,28,28,30,10)
		Map_DropMultiItems(nMapId,3311170,42,42,28,28,30,10)
		local nTab = RewardTemplate_NewRandom(tBlackFiveCarnivalWeek_MapReward,1)
		local nItemId = nTab[1]["tAward"][1]["Id"]
		local nNum = nTab[1]["tAward"][1]["Num"]
		Map_DropMultiItems(nMapId,nItemId,42,42,28,28,nNum,10)
		--进副本log
		Sys_SaveActionFestivalLog(nGetIntolog)
		--计时器
		User_SetTimer(10,"BlackFiveCarnivalWeek_MoveUser</N>" ..nUserId,1,nUserId)
		
	end 
end 

--进入掉宝地图10秒后传出
function BlackFiveCarnivalWeek_MoveUser(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nGetIntolog = "0,0,0,0,12001184,1,103882,1"
	local nMapId = tBlackFiveCarnivalWeek_Cont["MapId"]
	local nMapX = tBlackFiveCarnivalWeek_Cont["MapX"]
	local nMapY = tBlackFiveCarnivalWeek_Cont["MapY"]
	User_UserRandBoundTrans(nMapId,nMapX,nMapY,3,3,1,nNowUserId)
	--出副本log
	Sys_SaveActionFestivalLog(nGetIntolog,nUserId)
end 

--log记录
function BlackFiveCarnivalWeek_Log(nItemId)
	local nLogText = "0,0,0,0,12001148,2,"..nItemId..",1"
	Sys_SaveActionFestivalLog(nLogText)
end 
--log记录
function BlackFiveCarnivalWeek_LogUserId(nItemId,nUserId)
	local nLogText = "0,0,0,0,12001148,2,"..nItemId..",1"
	Sys_SaveActionFestivalLog(nLogText,nUserId)
end 
--删除物品log记录
function BlackFiveCarnivalWeek_DeleteLog(nItemId,nNum)
	local nLogText = "0,0,"..nItemId..","..nNum..",0,12001148,2,0,0"
	Sys_SaveActionFestivalLog(nLogText)
end 

--准点移动幸运大使（掉宝地图NPC）（出集中营）
function BlackFiveCarnivalWeek_MoveNpc()
	local nNpcId = 23436
	local nMapId = tBlackFiveCarnivalWeek_Cont["NpcMapId"]
	local nPosX = tBlackFiveCarnivalWeek_Cont["NpcMapX"]
	local nPosY = tBlackFiveCarnivalWeek_Cont["NpcMapY"]
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
end 
--准点移动幸运大使（掉宝地图NPC）（回集中营）
function BlackFiveCarnivalWeek_MoveNpc2()
	local nNpcId = 23436
	local nMapId = 5000
	local nPosX = 100
	local nPosY = 100
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	Npc_MoveNpcPos(nNpcId,nMapId,nPosX,nPosY)
end 


--接141 兑换狂欢宝箱。2-1
function BlackFiveCarnivalWeek_CountBox()
	local GolobalId = tBlackFiveCarnivalWeek_Cont["Golobal3"]
	local nNum1 = Get_SysDynaGlobalData0(GolobalId)
	local nNum2 = Get_SysDynaGlobalData1(GolobalId)
	local nNum3 = Get_SysDynaGlobalData2(GolobalId)
	local nNpcId = Get_NpcId()
	tNpcGossip[23437]["Option211"] = string.format(tBlackFiveCarnivalWeek_Text[23437]["Option211"],nNum1)
	tNpcGossip[23437]["Option212"] = string.format(tBlackFiveCarnivalWeek_Text[23437]["Option212"],nNum2)
	tNpcGossip[23437]["Option213"] = string.format(tBlackFiveCarnivalWeek_Text[23437]["Option213"],nNum3)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--重置动态码
function BlackFiveCarnivalWeek_ClearGlobal()
	local GolobalId1 = tBlackFiveCarnivalWeek_Cont["Golobal1"]
	local GolobalId2 = tBlackFiveCarnivalWeek_Cont["Golobal2"]
	local GolobalId3 = tBlackFiveCarnivalWeek_Cont["Golobal3"]
	local data3 = Get_SysDynaGlobalData3(GolobalId3)
	if data3 ~= 1 then 
		--重置3份狂欢卷礼包每日全服数量
		Sys_SetSynaGlobalData0(GolobalId1,0)
		--重置4份狂欢卷礼包每日全服数量
		Sys_SetSynaGlobalData2(GolobalId1,0)
		--重置5份狂欢卷礼包每日全服数量
		Sys_SetSynaGlobalData4(GolobalId1,0)
		--重置6份狂欢卷礼包每日全服数量
		Sys_SetSynaGlobalData0(GolobalId2,0)
		--重置精装狂欢宝箱每日兑全服换数量
		Sys_SetSynaGlobalData0(GolobalId3,2000)
		--重置豪华狂欢宝箱每日兑全服换数量
		Sys_SetSynaGlobalData1(GolobalId3,1000)
		--重置至尊狂欢宝箱每日兑全服换数量
		Sys_SetSynaGlobalData2(GolobalId3,500)
		--设置重置动态码表示位，data3 = 1 表示已经重置
		Sys_SetSynaGlobalData3(GolobalId3,1)
	end 
end 
--重置 动态码表示为
function BlackFiveCarnivalWeek_ClearGlobalIdentification()
	local GolobalId3 = tBlackFiveCarnivalWeek_Cont["Golobal3"]
	Sys_SetSynaGlobalData3(GolobalId3,0)
end 

--狂欢卷寻路
function BlackFiveCarnivalWeek_FindNpc(nItemId)
	local nPosX = tBlackFiveCarnivalWeek_Cont["NpcMapX1"]
	local nPosY = tBlackFiveCarnivalWeek_Cont["NpcMapY1"]
	local nMapId = tBlackFiveCarnivalWeek_Cont["NpcMapId1"]
	local nNpcId = tBlackFiveCarnivalWeek_Cont["NpcId"]
	local nNum = Get_CountItemType(nItemId,0)
	local nValue = nNum * 10
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		Item_DelMulItem(nItemId,nItemId,nNum)
		BlackFiveCarnivalWeek_DeleteLog(nItemId,nNum)
		tBlackFiveCarnivalWeek_DebrisFragments[1]["RewardRepairValue"]["Value"] = nValue
		RewardTemplate_UseItem(tBlackFiveCarnivalWeek_DebrisFragments[1])
		return
	end 
	--寻路至狂欢大使
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	
end
	
--星陨石礼包过期删除
function BlackFiveCarnivalWeek_StarBag(nItemId)
	local nNum = Get_CountItemType(nItemId,0)
	--判断玩家是否拥有礼包
	if not Item_ChkItem(nItemId) then 
		return
	end
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	--到期删除
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["StarBagTime"]) then 
		Item_DelMulItem(nItemId,nItemId,nNum)
		BlackFiveCarnivalWeek_DeleteLog(nItemId,nNum)
		return
	end 
	if Item_ChkItem(nItemId) then 
		RewardTemplate_UseItem(tBlackFiveCarnivalWeek_Pack[nItemId])
	end
end 
--职业PK赛接口
function BlackFiveCarnivalWeek_OccupationPK()
	local nEventType15 = tBlackFiveCarnivalWeek_Stc[15]["EventType"]
	local nDataType15 = tBlackFiveCarnivalWeek_Stc[15]["DataType"]
	local nData15 = Get_UserStatisticValue(nEventType15,nDataType15)
	local nItemId = tBlackFiveCarnivalWeek_Item[3311123]["Id"]
	local nAttr = tBlackFiveCarnivalWeek_Item[3311123]["Attr"]
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	--等级限制
	if not User_JudgeLevelAndMetempsychosis (nLevel,nMetempsychosis) then 
		return
	end
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	if not Task_ChkStatistic(nEventType15,nDataType15) then 
		Task_SetStatistic(nEventType15,nDataType15,1,1)
		Task_SetStcTimestamp(nEventType15,nDataType15,0)
		local nItemName = Get_ItemtypeName(nItemId)
		User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
		Item_AddNewItem(nItemId,nAttr)
		BlackFiveCarnivalWeek_Log(nItemId)
	else
		if Task_StcInterval(nEventType15,nDataType15,1,4) then 
			Task_SetStcTimestamp(nEventType15,nDataType15,0)
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
		else
			return
		end
	end 
end 

--精英PK赛接口
function BlackFiveCarnivalWeek_ElitesPK()
	local nEventType16 = tBlackFiveCarnivalWeek_Stc[16]["EventType"]
	local nDataType16 = tBlackFiveCarnivalWeek_Stc[16]["DataType"]
	local nData16 = Get_UserStatisticValue(nEventType16,nDataType16)
	local nItemId = tBlackFiveCarnivalWeek_Item[3311123]["Id"]
	local nAttr = tBlackFiveCarnivalWeek_Item[3311123]["Attr"]
	local nLevel = tBlackFiveCarnivalWeek_Cont["Level"]
	local nMetempsychosis = tBlackFiveCarnivalWeek_Cont["Metempsychosis"]
	--等级限制
	if not User_JudgeLevelAndMetempsychosis (nLevel,nMetempsychosis) then 
		return
	end
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	--活动结束
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	if not Task_ChkStatistic(nEventType16,nDataType16) then 
		Task_SetStatistic(nEventType16,nDataType16,1,1)
		Task_SetStcTimestamp(nEventType16,nDataType16,0)
		local nItemName = Get_ItemtypeName(nItemId)
		User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
		Item_AddNewItem(nItemId,nAttr)
		BlackFiveCarnivalWeek_Log(nItemId)
	else
		if Task_StcInterval(nEventType16,nDataType16,1,4) then 
			Task_SetStcTimestamp(nEventType16,nDataType16,0)
			local nItemName = Get_ItemtypeName(nItemId)
			User_TalkChannel2005(string.format(tBlackFiveCarnivalWeek_Text["Sys_MsgBox"]["AddNewItem"],nItemName))
			Item_AddNewItem(nItemId,nAttr)
			BlackFiveCarnivalWeek_Log(nItemId)
		else
			return
		end
	end 
	
	--if not Task_ChkStcValue(nEventType16,nDataType16,">=",1)
		
end 
--碎片过期删除
function BlackFiveCarnivalWeek_ExpiredDeleting(nItemId)
	local nNum = Get_CountItemType(nItemId,0)
	if not Item_ChkItem(nItemId) then 
		return
	end
	--活动时间前不执行函数
	if CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		return
	end 
	if not Sys_ChkFullTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]) then 
		Item_DelMulItem(nItemId,nItemId,nNum)
		BlackFiveCarnivalWeek_DeleteLog(nItemId,nNum)
		return
	end 
end 
---------------------------------------------NPC逻辑
--狂欢大使
tNpcFace[6385] = 41
tNpcGossip[23437] = tNpcGossip[23437] or DefaultNpc:new{}
tNpcGossip[23437]["OptionHidden"] = 1
tNpcGossip[23437]["DialogueText"] = tBlackFiveCarnivalWeek_Text[23437]
--活动前
tNpcGossip[23437]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23437]["tOption1-1"] = {111}
tNpcGossip[23437]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"])
end
--活动后
tNpcGossip[23437]["Text1-2"] = {121}
tNpcGossip[23437]["tOption1-2"] = {121}
tNpcGossip[23437]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"])
end
--活动中，未满足等级
tNpcGossip[23437]["Text1-3"] = {131,132,133,134,135,136}
tNpcGossip[23437]["tOption1-3"] = {131}
tNpcGossip[23437]["ChkFunc1-3"] = function ()
	return BlackFiveCarnivalWeek_NoLevel()
end
--活动中，满足等级
tNpcGossip[23437]["Text1-4"] = {141,142,143,144,145,146,147}
tNpcGossip[23437]["tOption1-4"] = {141,142,143,144,145}
tNpcGossip[23437]["ChkFunc1-4"] = function ()
	return BlackFiveCarnivalWeek_YesLevel()
end
--tNpcGossip[23437]["OptionPoint141"] = "2-1"
tNpcGossip[23437]["OptionPoint142"] = "3-1"
tNpcGossip[23437]["OptionPoint143"] = "4-1"
--tNpcGossip[23437]["OptionPoint144"] = "5-1"
tNpcGossip[23437]["OptionFunc141"] = "BlackFiveCarnivalWeek_CountBox"
tNpcGossip[23437]["OptionFunc144"] = "BlackFiveCarnivalWeek_RecoveryOption"
tNpcGossip[23437]["OptionFunc145"] = "BlackFiveCarnivalWeek_AllFragments"


--接141 兑换狂欢宝箱。2-1
tNpcGossip[23437]["Text2-1"] = {210,211,212,213,214,215,216,217,218,219}
tNpcGossip[23437]["tOption2-1"] = {211,212,213}
tNpcGossip[23437]["OptionFunc211"] = "BlackFiveCarnivalWeek_ExchangeGiftBox</N>3311075</N>1"
tNpcGossip[23437]["OptionFunc212"] = "BlackFiveCarnivalWeek_ExchangeGiftBox</N>3311076</N>5"
tNpcGossip[23437]["OptionFunc213"] = "BlackFiveCarnivalWeek_ExchangeGiftBox</N>3311077</N>15"

--接142 狂欢券获取途径。 3-1
tNpcGossip[23437]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,322,323,324}
tNpcGossip[23437]["tOption3-1"] = {311}
tNpcGossip[23437]["OptionPoint311"] = "1-4"

--接143 狂欢攻略 4-1
tNpcGossip[23437]["Text4-1"] = {411,412,413,414,415,416,417}
tNpcGossip[23437]["tOption4-1"] = {411}
tNpcGossip[23437]["OptionPoint411"] = "1-4"

--接144 狂欢碎片回收 5-1
tNpcGossip[23437]["Text5-1"] = {511}
tNpcGossip[23437]["tOption5-1"] = {511,512}
tNpcGossip[23437]["OptionFunc511"] = "BlackFiveCarnivalWeek_DebrisFragments</N>1"
tNpcGossip[23437]["OptionFunc512"] = "BlackFiveCarnivalWeek_DebrisFragments</N>2"

--接145 兑换10万天石（赠）。6-1
tNpcGossip[23437]["Text6-1"] = {611}
tNpcGossip[23437]["tOption6-1"] = {611,612}
tNpcGossip[23437]["OptionFunc611"] = "BlackFiveCarnivalWeek_ExchangeEMoneyMono"

--幸运使者
tNpcFace[6384] = 52
tNpcGossip[23436] = tNpcGossip[23436] or DefaultNpc:new{}
tNpcGossip[23436]["OptionHidden"] = 1
tNpcGossip[23436]["DialogueText"] = tBlackFiveCarnivalWeek_Text[23436]
--【未满足等级条件】
tNpcGossip[23436]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[23436]["tOption1-1"] = {111}
tNpcGossip[23436]["ChkFunc1-1"] = function ()
	return BlackFiveCarnivalWeek_NoLevel()
end
--【满足等级条件】
tNpcGossip[23436]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[23436]["tOption1-2"] = {121,122}
tNpcGossip[23436]["ChkFunc1-2"] = function ()
	return BlackFiveCarnivalWeek_YesLevel()
end
tNpcGossip[23436]["OptionFunc121"] = "BlackFiveCarnivalWeek_DropTreasure"


--转盘大使
tNpcFace[6386] = 184
tNpcGossip[23438] = tNpcGossip[23438] or DefaultNpc:new{}
tNpcGossip[23438]["OptionHidden"] = 1
tNpcGossip[23438]["DialogueText"] = tBlackFiveCarnivalWeek_Text[23438]
--活动前
tNpcGossip[23438]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[23438]["tOption1-1"] = {111}
tNpcGossip[23438]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"])
end
--活动后
tNpcGossip[23438]["Text1-2"] = {121}
tNpcGossip[23438]["tOption1-2"] = {121}
tNpcGossip[23438]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"])
end
--【未满足等级条件】
tNpcGossip[23438]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[23438]["tOption1-3"] = {131}
tNpcGossip[23438]["ChkFunc1-3"] = function ()
	return BlackFiveCarnivalWeek_NoLevel()
end
--【满足等级条件】
tNpcGossip[23438]["Text1-4"] = {141,142,143,144,145}
tNpcGossip[23438]["tOption1-4"] = {141,142}
tNpcGossip[23438]["ChkFunc1-4"] = function ()
	return BlackFiveCarnivalWeek_YesLevel()
end
tNpcGossip[23438]["OptionFunc141"] = "BlackFiveCarnivalWeek_Turntable1</N>13"
tNpcGossip[23438]["OptionFunc142"] = "BlackFiveCarnivalWeek_Turntable1</N>130"
--兑换1个转盘花费天石二次确认 2-1
tNpcGossip[23438]["Text2-1"] = {211}
tNpcGossip[23438]["tOption2-1"] = {211,212}
--兑换10个转盘花费天石二次确认 3-1
tNpcGossip[23438]["Text3-1"] = {311}
tNpcGossip[23438]["tOption3-1"] = {311,312}




---------------------------物品逻辑--------------------------
--普通宝箱
tItem[3311075] = tItem[3311075] or {}
tItem[3311075]["Function"] = function(nItemId,sItemName)
	BlackFiveCarnivalWeek_OpenTimePack(nItemId)
end
tItem[3311076] = tItem[3311075]
tItem[3311077] = tItem[3311075]
--2张狂欢券包
tItem[3311123] = tItem[3311123] or {}
tItem[3311123]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItem(tBlackFiveCarnivalWeek_Pack[nItemId])
end
tItem[3311124] = tItem[3311123]
tItem[3311125] = tItem[3311123]
tItem[3311126] = tItem[3311123]
tItem[3311127] = tItem[3311123]
tItem[3311079] = tItem[3311123]
tItem[3311080] = tItem[3311123]
tItem[3311170] = tItem[3311123]
tItem[3311172] = tItem[3311123]
tItem[3311173] = tItem[3311123]
tItem[3311174] = tItem[3311123]
--微光星陨石包
tItem[3311175] = tItem[3311175] or {}
tItem[3311175]["Function"] = function(nItemId,sItemName)
	BlackFiveCarnivalWeek_StarBag(nItemId)
end
tItem[3311171] = tItem[3311175]
--狂欢卷
tItem[3311089] = tItem[3311089] or {}
tItem[3311089]["Function"] = function(nItemId,sItemName)
	BlackFiveCarnivalWeek_FindNpc(nItemId)
end
--狂欢碎片
tItem[3311081] = tItem[3311081] or {}
tItem[3311081]["Function"] = function(nItemId,sItemName)
	BlackFiveCarnivalWeek_ExpiredDeleting(nItemId)
end
tItem[3311082] = tItem[3311081]
tItem[3311083] = tItem[3311081]
tItem[3311084] = tItem[3311081]
tItem[3311085] = tItem[3311081]
tItem[3311086] = tItem[3311081]
tItem[3311087] = tItem[3311081]
tItem[3311088] = tItem[3311081]


-----------------------------怪物模板---------------------------------
--神龙岛
-- local tBlackFiveCarnivalWeek_KillMonster = {}
-- tBlackFiveCarnivalWeek_KillMonster["ActivityTime"] = tActivityTime["BlackFiveCarnivalWeek"]["ActivityTime"]
-- tBlackFiveCarnivalWeek_KillMonster["Function"]= BlackFiveCarnivalWeek_KillMonsterDragon
-- tBlackFiveCarnivalWeek_KillMonster["Area"] = {11}
-- table.insert(tMonsterDrop_AreaLoad,tBlackFiveCarnivalWeek_KillMonster)


--个人排位赛 赢场触发
tArenicWins["tFunction"] = tArenicWins["tFunction"] or {}
table.insert(tArenicWins["tFunction"],BlackFiveCarnivalWeek_PK)


------------------------------------------------时间自检-------------------------------------------------------

local tBlackFiveCarnivalWeek_MoveNpc = {}
--移出NPC
	tBlackFiveCarnivalWeek_MoveNpc[1] = {}
	tBlackFiveCarnivalWeek_MoveNpc[1]["Type"] = 6
	tBlackFiveCarnivalWeek_MoveNpc[1]["TimeType"] = 4
	tBlackFiveCarnivalWeek_MoveNpc[1]["Multiple"] = {}
	tBlackFiveCarnivalWeek_MoveNpc[1]["Multiple"][1] = "03:00 03:00"
	tBlackFiveCarnivalWeek_MoveNpc[1]["Multiple"][2] = "09:00 09:00"
	tBlackFiveCarnivalWeek_MoveNpc[1]["Multiple"][3] = "15:00 15:00"
	tBlackFiveCarnivalWeek_MoveNpc[1]["Multiple"][4] = "21:00 21:00"
	tBlackFiveCarnivalWeek_MoveNpc[1]["Func"] = BlackFiveCarnivalWeek_MoveNpc
table.insert(tSystemTime_InitialData,tBlackFiveCarnivalWeek_MoveNpc[1])

--移走NPC
	tBlackFiveCarnivalWeek_MoveNpc[2] = {}
	tBlackFiveCarnivalWeek_MoveNpc[2]["Type"] = 6
	tBlackFiveCarnivalWeek_MoveNpc[2]["TimeType"] = 4
	tBlackFiveCarnivalWeek_MoveNpc[2]["Multiple"] = {}
	tBlackFiveCarnivalWeek_MoveNpc[2]["Multiple"][1] = "03:06 03:07"
	tBlackFiveCarnivalWeek_MoveNpc[2]["Multiple"][2] = "09:06 09:07"
	tBlackFiveCarnivalWeek_MoveNpc[2]["Multiple"][3] = "15:06 15:07"
	tBlackFiveCarnivalWeek_MoveNpc[2]["Multiple"][4] = "21:06 21:07"
	tBlackFiveCarnivalWeek_MoveNpc[2]["Func"] = BlackFiveCarnivalWeek_MoveNpc2
table.insert(tSystemTime_InitialData,tBlackFiveCarnivalWeek_MoveNpc[2])

--每日清理动态码
	tBlackFiveCarnivalWeek_ClearGlobal = {}
	tBlackFiveCarnivalWeek_ClearGlobal["Type"] = 6
	tBlackFiveCarnivalWeek_ClearGlobal["TimeType"] = 4
	tBlackFiveCarnivalWeek_ClearGlobal["Multiple"] = {}
	tBlackFiveCarnivalWeek_ClearGlobal["Multiple"][1] = "00:00 00:05"
	tBlackFiveCarnivalWeek_ClearGlobal["Func"] = BlackFiveCarnivalWeek_ClearGlobal
table.insert(tSystemTime_InitialData,tBlackFiveCarnivalWeek_ClearGlobal)

--重置动态码标识
--每日清理动态表
	tBlackFiveCarnivalWeek_ClearGlobalIdentification = {}
	tBlackFiveCarnivalWeek_ClearGlobalIdentification["Type"] = 6
	tBlackFiveCarnivalWeek_ClearGlobalIdentification["TimeType"] = 4
	tBlackFiveCarnivalWeek_ClearGlobalIdentification["Multiple"] = {}
	tBlackFiveCarnivalWeek_ClearGlobalIdentification["Multiple"][1] = "00:06 00:10"
	tBlackFiveCarnivalWeek_ClearGlobalIdentification["Func"] = BlackFiveCarnivalWeek_ClearGlobalIdentification
table.insert(tSystemTime_InitialData,tBlackFiveCarnivalWeek_ClearGlobalIdentification)

-----------------------------------上线触发-----------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,BlackFiveCarnivalWeek_LoginAward)




