------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]打怪掉宝活动
--Purpose:	打怪掉宝活动
--Creator: 	郑鋆
--Created:	2015/05/10
------------------------------------------------------------------------------------

-- 命名前缀
-- KillMonsterDropItem_

-- 掩码说明
-- 134	89		记录10分钟经验礼包的次数
-- 134	90		记录30分钟经验礼包的次数
-- 134	91		记录50分钟经验礼包的次数

-- 142	49		记录杀怪的积分
-- 142	50		记录玩家的九幽积分
-- 142	51		记录玩家的兑换气力的次数
-- 142	52		记录玩家选择兑换的选项
-- 142	53		记录玩家杀怪的数量
-- 142	54		记录玩家是否领取过宝箱的奖励
-- 142	55		记录玩家今天是否进入过九幽地宫
-- 142	65		记录使用九幽随机传送卷的时间间隔
-- 142	68		记录玩家掉落岫山玉碎片的数量

-- 动态存储表说明
-- 50872	data0	记录10修行值礼包掉落数量
-- 50872	data1	记录30修行值礼包掉落数量
-- 50872	data2	记录50修行值礼包掉落数量
-- 50872	data3	记录10气力礼包掉落数量
-- 50872	data4	记录30气力礼包掉落数量
-- 50872	data5	记录50气力礼包掉落数量

-- 50873	data0	记录护心丹礼包掉落数量
-- 50873	data1	记录通神丹礼包掉落数量
-- 50873	data2	记录免费强炼丹礼包掉落数量
-- 50873	data3	记录一道真气礼包掉落数量
-- 50873	data4	记录1次修炼次数礼包掉落数量
-- 50873	data5	记录普通宝石礼包掉落数量

-- 50874	data0	记录良品宝石礼包掉落数量
-- 50874	data1	记录普通天地玄礼包掉落数量
-- 50874	data2	记录良品天地玄礼包掉落数量
-- 50874	data3	记录优质天地玄礼包掉落数量
-- 50874	data4	记录流星礼包掉落数量
-- 50874	data5	记录龙珠礼包掉落数量

-- 50875	data0	记录六阶神魂随机包
-- 50875	data1	记录神魂礼包洗非赠
-- 50875	data2	记录七阶武器神魂礼包
-- 50875	data3	记录七阶防具配饰神魂礼包
-- 50875	data4	记录赤炼石+1礼包掉落数量
-- 50875	data5	记录赤炼石+2礼包掉落数量

-- 50876	data2	记录赤炼石+3礼包掉落数量
-- 50876	data3	记录赤炼石+6礼包掉落数量
-- 50876	data4	记录七阶武器神魂碎片掉落数量
-- 50876	data5	记录七阶防具配饰神魂碎片掉落数量

-- 50876	data0	控制动态存储表清零开关

-- 常量表
local tKillMonsterDropItem_Constant = {}
	-- 活动时间
	tKillMonsterDropItem_Constant["BeforeActivityTime"] = tActivityTime["KillMonsterDropItem"]["BeforeActivityTime"]
	tKillMonsterDropItem_Constant["ActivityTime"] = tActivityTime["KillMonsterDropItem"]["ActivityTime"]
	tKillMonsterDropItem_Constant["ExchangeTime"] = tActivityTime["KillMonsterDropItem"]["ExchangeTime"]

	-- 玩家等级要求
	tKillMonsterDropItem_Constant["Metempsychosis"] = 2
	tKillMonsterDropItem_Constant["Level"] = 0

	-- 掉落的金币数量
	tKillMonsterDropItem_Constant["Money"] = 1000
	
	-- 地图上物品存在时间
	tKillMonsterDropItem_Constant["ExistTime"] = 120
	-- 满级
	tKillMonsterDropItem_Constant["MaxLev"] = G_User_MaxLev
	-- 真气上限
	tKillMonsterDropItem_Constant["MaxQenuineqi"] = 5
	-- 修炼次数上限
	tKillMonsterDropItem_Constant["MaxPractNum"] = 1000000
	
	tKillMonsterDropItem_Constant["GlobalId"] = 50876
	
	tKillMonsterDropItem_Constant["RestGlobalTime"] = {}
	tKillMonsterDropItem_Constant["RestGlobalTime"][1] = "7:00 7:05"
	tKillMonsterDropItem_Constant["RestGlobalTime"][2] = "14:00 14:05"
	tKillMonsterDropItem_Constant["RestGlobalTime"][3] = "19:00 19:05"
	tKillMonsterDropItem_Constant["RestGlobalTime"][4] = "00:00 00:05"
	
	tKillMonsterDropItem_Constant["RestGlobal"] = {}
	tKillMonsterDropItem_Constant["RestGlobal"][1] = 50872
	tKillMonsterDropItem_Constant["RestGlobal"][2] = 50873
	tKillMonsterDropItem_Constant["RestGlobal"][3] = 50874
	tKillMonsterDropItem_Constant["RestGlobal"][4] = 50875

	-- 怪物log
	tKillMonsterDropItem_Constant["MonsterDeath"] = "0,0,%d,1,12000103,1[1],0,0"
	tKillMonsterDropItem_Constant["MonsterDrop"] = "0,0,%d,1,12000103,1[2],%d,%d"
	tKillMonsterDropItem_Constant["DropXiuShanyu"] = "0,0,%d,1,12000103,1[3],%d,%d"
	tKillMonsterDropItem_Constant["MonsterBossDrop"] = "0,0,%d,1,12000103,1[4],%d,%d"
	tKillMonsterDropItem_Constant["StrengthLog"] = "0,0,0,0,12000103,2,12,200"
	tKillMonsterDropItem_Constant["ScoreLog"] = "0,0,%d,1,12000103,2,0,0"

	-- 兑换气力值需要的积分
	tKillMonsterDropItem_Constant["Score"] = 200
	tKillMonsterDropItem_Constant["StrengthValue"] = 200
	tKillMonsterDropItem_Constant["MaxTime"] = 10
	
	-- 杀怪任务
	tKillMonsterDropItem_Constant["RewardNum"] = 1
	tKillMonsterDropItem_Constant["MonsterNum"] = 10

	-- 九幽神魂礼包洗赠卷
	tKillMonsterDropItem_Constant[3006550] = {}
	tKillMonsterDropItem_Constant[3006550][1] = {}
	tKillMonsterDropItem_Constant[3006550][1]["ExchangeItem"] = 3006745
	tKillMonsterDropItem_Constant[3006550][1]["GetItem"] = 3004247
	tKillMonsterDropItem_Constant[3006550][1]["Log"] = "0,0,3006550[3006745],1[1],12000103,2,3004247,1"
	tKillMonsterDropItem_Constant[3006550][2] = {}
	tKillMonsterDropItem_Constant[3006550][2]["ExchangeItem"] = 3006746
	tKillMonsterDropItem_Constant[3006550][2]["GetItem"] = 3004248
	tKillMonsterDropItem_Constant[3006550][2]["Log"] = "0,0,3006550[3006746],1[1],12000103,2,3004248,1"
	
	-- 给星陨石奖励
	tKillMonsterDropItem_Constant["Extra"] = {}
	tKillMonsterDropItem_Constant["Extra"]["Id"] = 3009001
	tKillMonsterDropItem_Constant["Extra"]["Log"] = "0,0,0,0,12000103,2,3009001,1"
	-- 九幽寻宝-打开九幽宝箱
	tKillMonsterDropItem_Constant["Extra"]["EMoneyBuy"] = "350	20248	0	0	1	"
	
	-- 在地图内的时间
	tKillMonsterDropItem_Constant["TimeDelay"] = 1800
	tKillMonsterDropItem_Constant["TimeType"] = 0
	
	-- 地图ID
	tKillMonsterDropItem_Constant["MapId"] = {}
	tKillMonsterDropItem_Constant["MapId"][1] = 3943
	tKillMonsterDropItem_Constant["MapId"][2] = 3944
	tKillMonsterDropItem_Constant["MapId"][3] = 3945

	-- 岫山玉碎片的物品ID
	tKillMonsterDropItem_Constant["XiuShanYu"] = 3008222
	tKillMonsterDropItem_Constant["XiuShanYuNum"] = 50
	
-- 活动公告使用的地图范围
local tKillMonsterDropItem_NoticeMap = {1002,1000,1036,1011,1015,1020,1068}
	
-- 掩码表
local tKillMonsterDropItem_Stc = {}
	tKillMonsterDropItem_Stc["EventType"] = 142
	tKillMonsterDropItem_Stc["DataType"] = {}
	tKillMonsterDropItem_Stc["DataType"][1] = 49
	tKillMonsterDropItem_Stc["DataType"][2] = 50
	tKillMonsterDropItem_Stc["DataType"][3] = 51
	tKillMonsterDropItem_Stc["DataType"][4] = 52
	tKillMonsterDropItem_Stc["DataType"][5] = 53
	tKillMonsterDropItem_Stc["DataType"][6] = 54
	tKillMonsterDropItem_Stc["DataType"][7] = 55
	tKillMonsterDropItem_Stc["DataType"][8] = 65
	tKillMonsterDropItem_Stc["DataType"][9] = 68

-- 怪物配置
local tKillMonsterDropItem_Monster = {}	
	-- 暗地游魂
	tKillMonsterDropItem_Monster[7697] = {}
	tKillMonsterDropItem_Monster[7697][1] = {}
	tKillMonsterDropItem_Monster[7697][1]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Monster[7697][1]["Time"] = 1
	
	tKillMonsterDropItem_Monster[7697][1][1] = {}
	tKillMonsterDropItem_Monster[7697][1][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7697][1][1]["ItemChance"] = 150
	tKillMonsterDropItem_Monster[7697][1][1]["Item_1"] = 7697
	
	tKillMonsterDropItem_Monster[7697][1][2] = {}
	tKillMonsterDropItem_Monster[7697][1][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7697][1][2]["ItemChance"] = 200
	tKillMonsterDropItem_Monster[7697][1][2]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7697][1][2]["IsMoney"] = true
	
	tKillMonsterDropItem_Monster[7697][1][3] = {}
	tKillMonsterDropItem_Monster[7697][1][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7697][1][3]["ItemChance"] = 150
	tKillMonsterDropItem_Monster[7697][1][3]["Item_1"] = 3008222
	
	tKillMonsterDropItem_Monster[7697][1][4] = {}
	tKillMonsterDropItem_Monster[7697][1][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7697][1][4]["ItemChance"] = 9500
	tKillMonsterDropItem_Monster[7697][1][4]["Item_1"] = 0
	
	-- 虚空夜叉
	tKillMonsterDropItem_Monster[7698] = {}
	tKillMonsterDropItem_Monster[7698][1] = {}
	tKillMonsterDropItem_Monster[7698][1]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Monster[7698][1]["Time"] = 1
	
	tKillMonsterDropItem_Monster[7698][1][1] = {}
	tKillMonsterDropItem_Monster[7698][1][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7698][1][1]["ItemChance"] = 170
	tKillMonsterDropItem_Monster[7698][1][1]["Item_1"] = 7698
	
	tKillMonsterDropItem_Monster[7698][1][2] = {}
	tKillMonsterDropItem_Monster[7698][1][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7698][1][2]["ItemChance"] = 200
	tKillMonsterDropItem_Monster[7698][1][2]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7698][1][2]["IsMoney"] = true
	
	tKillMonsterDropItem_Monster[7698][1][3] = {}
	tKillMonsterDropItem_Monster[7698][1][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7698][1][3]["ItemChance"] = 150
	tKillMonsterDropItem_Monster[7698][1][3]["Item_1"] = 3008222
	
	tKillMonsterDropItem_Monster[7698][1][4] = {}
	tKillMonsterDropItem_Monster[7698][1][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7698][1][4]["ItemChance"] = 9480
	tKillMonsterDropItem_Monster[7698][1][4]["Item_1"] = 0
	
	-- 地宫邪魅
	tKillMonsterDropItem_Monster[7699] = {}
	tKillMonsterDropItem_Monster[7699][1] = {}
	tKillMonsterDropItem_Monster[7699][1]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Monster[7699][1]["Time"] = 1
	
	tKillMonsterDropItem_Monster[7699][1][1] = {}
	tKillMonsterDropItem_Monster[7699][1][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7699][1][1]["ItemChance"] = 190
	tKillMonsterDropItem_Monster[7699][1][1]["Item_1"] = 7699
	
	tKillMonsterDropItem_Monster[7699][1][2] = {}
	tKillMonsterDropItem_Monster[7699][1][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7699][1][2]["ItemChance"] = 200
	tKillMonsterDropItem_Monster[7699][1][2]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7699][1][2]["IsMoney"] = true
	
	tKillMonsterDropItem_Monster[7699][1][3] = {}
	tKillMonsterDropItem_Monster[7699][1][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7699][1][3]["ItemChance"] = 150
	tKillMonsterDropItem_Monster[7699][1][3]["Item_1"] = 3008222
	
	tKillMonsterDropItem_Monster[7699][1][4] = {}
	tKillMonsterDropItem_Monster[7699][1][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7699][1][4]["ItemChance"] = 9460
	tKillMonsterDropItem_Monster[7699][1][4]["Item_1"] = 0
	
	-- 暗地战魂
	tKillMonsterDropItem_Monster[7700] = {}
	tKillMonsterDropItem_Monster[7700][1] = {}
	tKillMonsterDropItem_Monster[7700][1]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Monster[7700][1]["Time"] = 1
	
	tKillMonsterDropItem_Monster[7700][1][1] = {}
	tKillMonsterDropItem_Monster[7700][1][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7700][1][1]["ItemChance"] = 7500
	tKillMonsterDropItem_Monster[7700][1][1]["Item_1"] = 7700
	
	tKillMonsterDropItem_Monster[7700][1][2] = {}
	tKillMonsterDropItem_Monster[7700][1][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7700][1][2]["ItemChance"] = 1500
	tKillMonsterDropItem_Monster[7700][1][2]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7700][1][2]["IsMoney"] = true
	
	tKillMonsterDropItem_Monster[7700][1][3] = {}
	tKillMonsterDropItem_Monster[7700][1][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7700][1][3]["ItemChance"] = 1000
	tKillMonsterDropItem_Monster[7700][1][3]["Item_1"] = 1000040
	
	tKillMonsterDropItem_Monster[7700][1][4] = {}
	tKillMonsterDropItem_Monster[7700][1][4]["RandomItemChanceType"] = 1
	tKillMonsterDropItem_Monster[7700][1][4]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7700][1][4]["IsMoney"] = true

	tKillMonsterDropItem_Monster[7700][1][5] = {}
	tKillMonsterDropItem_Monster[7700][1][5]["RandomItemChanceType"] = 1
	tKillMonsterDropItem_Monster[7700][1][5]["Item_1"] = 1000040

	-- 虚空小将
	tKillMonsterDropItem_Monster[7701] = {}
	tKillMonsterDropItem_Monster[7701][1] = {}
	tKillMonsterDropItem_Monster[7701][1]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Monster[7701][1]["Time"] = 1
	
	tKillMonsterDropItem_Monster[7701][1][1] = {}
	tKillMonsterDropItem_Monster[7701][1][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7701][1][1]["ItemChance"] = 8500
	tKillMonsterDropItem_Monster[7701][1][1]["Item_1"] = 7701
	
	tKillMonsterDropItem_Monster[7701][1][2] = {}
	tKillMonsterDropItem_Monster[7701][1][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7701][1][2]["ItemChance"] = 900
	tKillMonsterDropItem_Monster[7701][1][2]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7701][1][2]["IsMoney"] = true
	
	tKillMonsterDropItem_Monster[7701][1][3] = {}
	tKillMonsterDropItem_Monster[7701][1][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7701][1][3]["ItemChance"] = 600
	tKillMonsterDropItem_Monster[7701][1][3]["Item_1"] = 1000040
	
	tKillMonsterDropItem_Monster[7701][1][4] = {}
	tKillMonsterDropItem_Monster[7701][1][4]["RandomItemChanceType"] = 1
	tKillMonsterDropItem_Monster[7701][1][4]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7701][1][4]["IsMoney"] = true

	tKillMonsterDropItem_Monster[7701][1][5] = {}
	tKillMonsterDropItem_Monster[7701][1][5]["RandomItemChanceType"] = 1
	tKillMonsterDropItem_Monster[7701][1][5]["Item_1"] = 1000040

	-- 地宫邪魔
	tKillMonsterDropItem_Monster[7702] = {}
	tKillMonsterDropItem_Monster[7702][1] = {}
	tKillMonsterDropItem_Monster[7702][1]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Monster[7702][1]["Time"] = 1
	
	tKillMonsterDropItem_Monster[7702][1][1] = {}
	tKillMonsterDropItem_Monster[7702][1][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7702][1][1]["ItemChance"] = 9500
	tKillMonsterDropItem_Monster[7702][1][1]["Item_1"] = 7702
	
	tKillMonsterDropItem_Monster[7702][1][2] = {}
	tKillMonsterDropItem_Monster[7702][1][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7702][1][2]["ItemChance"] = 300
	tKillMonsterDropItem_Monster[7702][1][2]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7702][1][2]["IsMoney"] = true
	
	tKillMonsterDropItem_Monster[7702][1][3] = {}
	tKillMonsterDropItem_Monster[7702][1][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Monster[7702][1][3]["ItemChance"] = 200
	tKillMonsterDropItem_Monster[7702][1][3]["Item_1"] = 1000040
	
	tKillMonsterDropItem_Monster[7702][1][4] = {}
	tKillMonsterDropItem_Monster[7702][1][4]["RandomItemChanceType"] = 1
	tKillMonsterDropItem_Monster[7702][1][4]["Item_1"] = 1000
	tKillMonsterDropItem_Monster[7702][1][4]["IsMoney"] = true

	tKillMonsterDropItem_Monster[7702][1][5] = {}
	tKillMonsterDropItem_Monster[7702][1][5]["RandomItemChanceType"] = 1
	tKillMonsterDropItem_Monster[7702][1][5]["Item_1"] = 1000040

	-- 幽寂豺狼
	tKillMonsterDropItem_Monster[7706] = {}
	tKillMonsterDropItem_Monster[7706]["MapId"] = 3943
	tKillMonsterDropItem_Monster[7706]["PosX"] = 295
	tKillMonsterDropItem_Monster[7706]["PosY"] = 264
	tKillMonsterDropItem_Monster[7706]["Generator"] = 17461
	
	-- 幽冥麒麟
	tKillMonsterDropItem_Monster[7707] = {}
	tKillMonsterDropItem_Monster[7707]["MapId"] = 3944
	tKillMonsterDropItem_Monster[7707]["PosX"] = 275
	tKillMonsterDropItem_Monster[7707]["PosY"] = 227
	tKillMonsterDropItem_Monster[7707]["Generator"] = 17501
	
	-- 九幽金睛兽
	tKillMonsterDropItem_Monster[7708] = {}
	tKillMonsterDropItem_Monster[7708]["MapId"] = 3945
	tKillMonsterDropItem_Monster[7708]["PosX"] = 168
	tKillMonsterDropItem_Monster[7708]["PosY"] = 170
	tKillMonsterDropItem_Monster[7708]["Generator"] = 17503
	
-- 地图
local tKillMonsterDropItem_ChgMap = {}
	tKillMonsterDropItem_ChgMap[992790] = {}
	tKillMonsterDropItem_ChgMap[992790]["MapId"] = 3942
	tKillMonsterDropItem_ChgMap[992790]["CellX"] = 49
	tKillMonsterDropItem_ChgMap[992790]["CellY"] = 77
	tKillMonsterDropItem_ChgMap[992790]["Range"] = 3
	tKillMonsterDropItem_ChgMap[992790]["Index"] = "NineQuietFam"
	-- 地宫守卫者中前往九幽地宫选项
	tKillMonsterDropItem_ChgMap[18515] = {}
	tKillMonsterDropItem_ChgMap[18515]["MapId"] = 3943
	tKillMonsterDropItem_ChgMap[18515]["CellX"] = 162
	tKillMonsterDropItem_ChgMap[18515]["CellY"] = 380
	tKillMonsterDropItem_ChgMap[18515]["Range"] = 7
	tKillMonsterDropItem_ChgMap[18515]["Index"] = "NineQuietFamOne"

	-- 陷阱传送点
	tKillMonsterDropItem_ChgMap[992783] = {}
	tKillMonsterDropItem_ChgMap[992783]["MapId"] = 1000
	tKillMonsterDropItem_ChgMap[992783]["CellX"] = 485
	tKillMonsterDropItem_ChgMap[992783]["CellY"] = 581
	tKillMonsterDropItem_ChgMap[992783]["Range"] = 3
	tKillMonsterDropItem_ChgMap[992783]["Index"] = "CloudGateClosed"
	
	tKillMonsterDropItem_ChgMap[992785] = {}
	tKillMonsterDropItem_ChgMap[992785]["MapId"] = 3942
	tKillMonsterDropItem_ChgMap[992785]["CellX"] = 53
	tKillMonsterDropItem_ChgMap[992785]["CellY"] = 36
	tKillMonsterDropItem_ChgMap[992785]["Range"] = 5
	tKillMonsterDropItem_ChgMap[992785]["Index"] = "NineQuietFam"

	tKillMonsterDropItem_ChgMap[992786] = {}
	tKillMonsterDropItem_ChgMap[992786]["MapId"] = 3944
	tKillMonsterDropItem_ChgMap[992786]["CellX"] = 186
	tKillMonsterDropItem_ChgMap[992786]["CellY"] = 159
	tKillMonsterDropItem_ChgMap[992786]["Range"] = 5
	tKillMonsterDropItem_ChgMap[992786]["Index"] = "NineQuietFamTwo"

	tKillMonsterDropItem_ChgMap[992787] = {}
	tKillMonsterDropItem_ChgMap[992787]["MapId"] = 3943
	tKillMonsterDropItem_ChgMap[992787]["CellX"] = 396
	tKillMonsterDropItem_ChgMap[992787]["CellY"] = 182
	tKillMonsterDropItem_ChgMap[992787]["Range"] = 5
	tKillMonsterDropItem_ChgMap[992787]["Index"] = "NineQuietFamOne"

	tKillMonsterDropItem_ChgMap[992788] = {}
	tKillMonsterDropItem_ChgMap[992788]["MapId"] = 3945
	tKillMonsterDropItem_ChgMap[992788]["CellX"] = 396
	tKillMonsterDropItem_ChgMap[992788]["CellY"] = 315
	tKillMonsterDropItem_ChgMap[992788]["Range"] = 5
	tKillMonsterDropItem_ChgMap[992788]["Index"] = "NineQuietFamThree"

	tKillMonsterDropItem_ChgMap[992789] = {}
	tKillMonsterDropItem_ChgMap[992789]["MapId"] = 3944
	tKillMonsterDropItem_ChgMap[992789]["CellX"] = 346
	tKillMonsterDropItem_ChgMap[992789]["CellY"] = 440
	tKillMonsterDropItem_ChgMap[992789]["Range"] = 5
	tKillMonsterDropItem_ChgMap[992789]["Index"] = "NineQuietFamTwo"
	
	tKillMonsterDropItem_ChgMap[93006010] = {}
	tKillMonsterDropItem_ChgMap[93006010]["MapId"] = 3942
	tKillMonsterDropItem_ChgMap[93006010]["CellX"] = 61
	tKillMonsterDropItem_ChgMap[93006010]["CellY"] = 55
	tKillMonsterDropItem_ChgMap[93006010]["Range"] = 3
	tKillMonsterDropItem_ChgMap[93006010]["Index"] = "NineQuietFam"
	
	tKillMonsterDropItem_ChgMap["FromMap"] = {}
	tKillMonsterDropItem_ChgMap["FromMap"]["MapId"] = 3942
	tKillMonsterDropItem_ChgMap["FromMap"]["CellX"] = 53
	tKillMonsterDropItem_ChgMap["FromMap"]["CellY"] = 36
	tKillMonsterDropItem_ChgMap["FromMap"]["Range"] = 3
	tKillMonsterDropItem_ChgMap["FromMap"]["Index"] = "NineQuietFam"

-- 动态存储表配置
local tKillMonsterDropItem_Global = {}
	tKillMonsterDropItem_Global[1] = {}
	tKillMonsterDropItem_Global[1]["GlobalId"] = 50872
	tKillMonsterDropItem_Global[1]["GlobalData"] = 0
	tKillMonsterDropItem_Global[1]["MaxData"] = 750
	
	tKillMonsterDropItem_Global[2] = {}
	tKillMonsterDropItem_Global[2]["GlobalId"] = 50872
	tKillMonsterDropItem_Global[2]["GlobalData"] = 1
	tKillMonsterDropItem_Global[2]["MaxData"] = 500
	
	tKillMonsterDropItem_Global[3] = {}
	tKillMonsterDropItem_Global[3]["GlobalId"] = 50872
	tKillMonsterDropItem_Global[3]["GlobalData"] = 2
	tKillMonsterDropItem_Global[3]["MaxData"] = 400
	
	tKillMonsterDropItem_Global[4] = {}
	tKillMonsterDropItem_Global[4]["GlobalId"] = 50872
	tKillMonsterDropItem_Global[4]["GlobalData"] = 3
	tKillMonsterDropItem_Global[4]["MaxData"] = 750
	
	tKillMonsterDropItem_Global[5] = {}
	tKillMonsterDropItem_Global[5]["GlobalId"] = 50872
	tKillMonsterDropItem_Global[5]["GlobalData"] = 4
	tKillMonsterDropItem_Global[5]["MaxData"] = 500
	
	tKillMonsterDropItem_Global[6] = {}
	tKillMonsterDropItem_Global[6]["GlobalId"] = 50872
	tKillMonsterDropItem_Global[6]["GlobalData"] = 5
	tKillMonsterDropItem_Global[6]["MaxData"] = 400
	
	tKillMonsterDropItem_Global[7] = {}
	tKillMonsterDropItem_Global[7]["GlobalId"] = 50873
	tKillMonsterDropItem_Global[7]["GlobalData"] = 0
	tKillMonsterDropItem_Global[7]["MaxData"] = 2000
	
	tKillMonsterDropItem_Global[8] = {}
	tKillMonsterDropItem_Global[8]["GlobalId"] = 50873
	tKillMonsterDropItem_Global[8]["GlobalData"] = 1
	tKillMonsterDropItem_Global[8]["MaxData"] = 750
	
	tKillMonsterDropItem_Global[9] = {}
	tKillMonsterDropItem_Global[9]["GlobalId"] = 50873
	tKillMonsterDropItem_Global[9]["GlobalData"] = 2
	tKillMonsterDropItem_Global[9]["MaxData"] = 500
	
	tKillMonsterDropItem_Global[10] = {}
	tKillMonsterDropItem_Global[10]["GlobalId"] = 50873
	tKillMonsterDropItem_Global[10]["GlobalData"] = 3
	tKillMonsterDropItem_Global[10]["MaxData"] = 3000
	
	tKillMonsterDropItem_Global[11] = {}
	tKillMonsterDropItem_Global[11]["GlobalId"] = 50873
	tKillMonsterDropItem_Global[11]["GlobalData"] = 4
	tKillMonsterDropItem_Global[11]["MaxData"] = 2000
	
	tKillMonsterDropItem_Global[12] = {}
	tKillMonsterDropItem_Global[12]["GlobalId"] = 50873
	tKillMonsterDropItem_Global[12]["GlobalData"] = 5
	tKillMonsterDropItem_Global[12]["MaxData"] = 1000
	
	tKillMonsterDropItem_Global[13] = {}
	tKillMonsterDropItem_Global[13]["GlobalId"] = 50874
	tKillMonsterDropItem_Global[13]["GlobalData"] = 0
	tKillMonsterDropItem_Global[13]["MaxData"] = 200
	
	tKillMonsterDropItem_Global[14] = {}
	tKillMonsterDropItem_Global[14]["GlobalId"] = 50874
	tKillMonsterDropItem_Global[14]["GlobalData"] = 1
	tKillMonsterDropItem_Global[14]["MaxData"] = 1000
	
	tKillMonsterDropItem_Global[15] = {}
	tKillMonsterDropItem_Global[15]["GlobalId"] = 50874
	tKillMonsterDropItem_Global[15]["GlobalData"] = 2
	tKillMonsterDropItem_Global[15]["MaxData"] = 200
	
	tKillMonsterDropItem_Global[16] = {}
	tKillMonsterDropItem_Global[16]["GlobalId"] = 50874
	tKillMonsterDropItem_Global[16]["GlobalData"] = 3
	tKillMonsterDropItem_Global[16]["MaxData"] = 6
	
	tKillMonsterDropItem_Global[17] = {}
	tKillMonsterDropItem_Global[17]["GlobalId"] = 50874
	tKillMonsterDropItem_Global[17]["GlobalData"] = 4
	tKillMonsterDropItem_Global[17]["MaxData"] = 5000
	
	tKillMonsterDropItem_Global[18] = {}
	tKillMonsterDropItem_Global[18]["GlobalId"] = 50874
	tKillMonsterDropItem_Global[18]["GlobalData"] = 5
	tKillMonsterDropItem_Global[18]["MaxData"] = 25
	
	tKillMonsterDropItem_Global[19] = {}
	tKillMonsterDropItem_Global[19]["GlobalId"] = 50875
	tKillMonsterDropItem_Global[19]["GlobalData"] = 0
	tKillMonsterDropItem_Global[19]["MaxData"] = 6
	
	tKillMonsterDropItem_Global[20] = {}
	tKillMonsterDropItem_Global[20]["GlobalId"] = 50875
	tKillMonsterDropItem_Global[20]["GlobalData"] = 1
	tKillMonsterDropItem_Global[20]["MaxData"] = 3
	
	tKillMonsterDropItem_Global[21] = {}
	tKillMonsterDropItem_Global[21]["GlobalId"] = 50875
	tKillMonsterDropItem_Global[21]["GlobalData"] = 2
	tKillMonsterDropItem_Global[21]["MaxData"] = 1
	
	tKillMonsterDropItem_Global[22] = {}
	tKillMonsterDropItem_Global[22]["GlobalId"] = 50875
	tKillMonsterDropItem_Global[22]["GlobalData"] = 3
	tKillMonsterDropItem_Global[22]["MaxData"] = 1
	
	tKillMonsterDropItem_Global[23] = {}
	tKillMonsterDropItem_Global[23]["GlobalId"] = 50875
	tKillMonsterDropItem_Global[23]["GlobalData"] = 4
	tKillMonsterDropItem_Global[23]["MaxData"] = 2700
	
	tKillMonsterDropItem_Global[24] = {}
	tKillMonsterDropItem_Global[24]["GlobalId"] = 50875
	tKillMonsterDropItem_Global[24]["GlobalData"] = 5
	tKillMonsterDropItem_Global[24]["MaxData"] = 225
	
	tKillMonsterDropItem_Global[25] = {}
	tKillMonsterDropItem_Global[25]["GlobalId"] = 50876
	tKillMonsterDropItem_Global[25]["GlobalData"] = 2
	tKillMonsterDropItem_Global[25]["MaxData"] = 40
	
	tKillMonsterDropItem_Global[26] = {}
	tKillMonsterDropItem_Global[26]["GlobalId"] = 50876
	tKillMonsterDropItem_Global[26]["GlobalData"] = 3
	tKillMonsterDropItem_Global[26]["MaxData"] = 1
	
	tKillMonsterDropItem_Global[27] = {}
	tKillMonsterDropItem_Global[27]["GlobalId"] = 50876
	tKillMonsterDropItem_Global[27]["GlobalData"] = 4
	tKillMonsterDropItem_Global[27]["MaxData"] = 3
	
	tKillMonsterDropItem_Global[28] = {}
	tKillMonsterDropItem_Global[28]["GlobalId"] = 50876
	tKillMonsterDropItem_Global[28]["GlobalData"] = 5
	tKillMonsterDropItem_Global[28]["MaxData"] = 7
	
-- 怪物掉落配置
local tKillMonsterDropItem_RewardItem = {}
	----------------------------- 一层普通怪
	tKillMonsterDropItem_RewardItem[7697] = {}
	tKillMonsterDropItem_RewardItem[7700] = tKillMonsterDropItem_RewardItem[7697]
	tKillMonsterDropItem_RewardItem[7697]["ItemChanceSum"] = 27500

	---- 勇者赤炼包		2700
	tKillMonsterDropItem_RewardItem[7697][1] = {}
	tKillMonsterDropItem_RewardItem[7697][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][1]["ItemChance"] = 2700
	tKillMonsterDropItem_RewardItem[7697][1]["Item_1"] = 3008815
	tKillMonsterDropItem_RewardItem[7697][1]["IsGlobal"] = 23
	tKillMonsterDropItem_RewardItem[7697][1]["DropMode"] = 1
	tKillMonsterDropItem_RewardItem[7697][1]["Attr"] = {}
	tKillMonsterDropItem_RewardItem[7697][1]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_RewardItem[7697][1]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_RewardItem[7697][1]["Attr"]["active"] = 1

	---- 流星		6000
	tKillMonsterDropItem_RewardItem[7697][2] = {}
	tKillMonsterDropItem_RewardItem[7697][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][2]["ItemChance"] = 6000
	tKillMonsterDropItem_RewardItem[7697][2]["Item_1"] = 1088001
	tKillMonsterDropItem_RewardItem[7697][2]["IsGlobal"] = 17

	---- 普通天地玄		1000
	tKillMonsterDropItem_RewardItem[7697][3] = {}
	tKillMonsterDropItem_RewardItem[7697][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][3]["ItemChance"] = 1000
	tKillMonsterDropItem_RewardItem[7697][3]["Item_1"] = {}
	tKillMonsterDropItem_RewardItem[7697][3]["Item_1"][1] = 700071
	tKillMonsterDropItem_RewardItem[7697][3]["Item_1"][2] = 700101
	tKillMonsterDropItem_RewardItem[7697][3]["Item_1"][3] = 700121
	tKillMonsterDropItem_RewardItem[7697][3]["IsGlobal"] = 14

	---- 普通宝石		4000
	tKillMonsterDropItem_RewardItem[7697][4] = {}
	tKillMonsterDropItem_RewardItem[7697][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][4]["ItemChance"] = 4000
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"] = {}
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"][1] = 700001
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"][2] = 700011
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"][3] = 700021
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"][4] = 700031
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"][5] = 700041
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"][6] = 700051
	tKillMonsterDropItem_RewardItem[7697][4]["Item_1"][7] = 700061
	tKillMonsterDropItem_RewardItem[7697][4]["IsGlobal"] = 12

	---- 1次修炼次数		1600
	tKillMonsterDropItem_RewardItem[7697][5] = {}
	tKillMonsterDropItem_RewardItem[7697][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][5]["ItemChance"] = 1600
	tKillMonsterDropItem_RewardItem[7697][5]["Item_1"] = 3314912
	tKillMonsterDropItem_RewardItem[7697][5]["IsGlobal"] = 11

	---- 一道真气		2400
	tKillMonsterDropItem_RewardItem[7697][6] = {}
	tKillMonsterDropItem_RewardItem[7697][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][6]["ItemChance"] = 2400
	tKillMonsterDropItem_RewardItem[7697][6]["Item_1"] = 3314911
	tKillMonsterDropItem_RewardItem[7697][6]["IsGlobal"] = 10

	---- 护心丹		800
	tKillMonsterDropItem_RewardItem[7697][7] = {}
	tKillMonsterDropItem_RewardItem[7697][7]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][7]["ItemChance"] = 800
	tKillMonsterDropItem_RewardItem[7697][7]["Item_1"] = 3002029
	tKillMonsterDropItem_RewardItem[7697][7]["IsGlobal"] = 7

	---- 10气力		3000
	tKillMonsterDropItem_RewardItem[7697][8] = {}
	tKillMonsterDropItem_RewardItem[7697][8]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][8]["ItemChance"] = 3000
	tKillMonsterDropItem_RewardItem[7697][8]["Item_1"] = 3006537
	tKillMonsterDropItem_RewardItem[7697][8]["IsGlobal"] = 4

	---- 10修行值		3000
	tKillMonsterDropItem_RewardItem[7697][9] = {}
	tKillMonsterDropItem_RewardItem[7697][9]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][9]["ItemChance"] = 3000
	tKillMonsterDropItem_RewardItem[7697][9]["Item_1"] = 3006534
	tKillMonsterDropItem_RewardItem[7697][9]["IsGlobal"] = 1

	---- 10分钟经验		3000
	tKillMonsterDropItem_RewardItem[7697][10] = {}
	tKillMonsterDropItem_RewardItem[7697][10]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7697][10]["ItemChance"] = 3000
	tKillMonsterDropItem_RewardItem[7697][10]["Item_1"] = 3006531

	---------------------------- 二层普通怪
	tKillMonsterDropItem_RewardItem[7698] = {}
	tKillMonsterDropItem_RewardItem[7701] = tKillMonsterDropItem_RewardItem[7698]
	tKillMonsterDropItem_RewardItem[7698]["ItemChanceSum"] = 31045

	---- 勇者赤炼包				3600
	tKillMonsterDropItem_RewardItem[7698][1] = {}
	tKillMonsterDropItem_RewardItem[7698][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][1]["ItemChance"] = 3600
	tKillMonsterDropItem_RewardItem[7698][1]["Item_1"] = 3008815
	tKillMonsterDropItem_RewardItem[7698][1]["IsGlobal"] = 23
	tKillMonsterDropItem_RewardItem[7698][1]["DropMode"] = 1
	tKillMonsterDropItem_RewardItem[7698][1]["Attr"] = {}
	tKillMonsterDropItem_RewardItem[7698][1]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_RewardItem[7698][1]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_RewardItem[7698][1]["Attr"]["active"] = 1

	---- 六阶神魂随机包				20
	tKillMonsterDropItem_RewardItem[7698][2] = {}
	tKillMonsterDropItem_RewardItem[7698][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][2]["ItemChance"] = 20
	tKillMonsterDropItem_RewardItem[7698][2]["Item_1"] = 3003382
	tKillMonsterDropItem_RewardItem[7698][2]["IsGlobal"] = 19

	---- 龙珠				25
	tKillMonsterDropItem_RewardItem[7698][3] = {}
	tKillMonsterDropItem_RewardItem[7698][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][3]["ItemChance"] = 25
	tKillMonsterDropItem_RewardItem[7698][3]["Item_1"] = 3006549
	tKillMonsterDropItem_RewardItem[7698][3]["IsGlobal"] = 18

	---- 流星				7500
	tKillMonsterDropItem_RewardItem[7698][4] = {}
	tKillMonsterDropItem_RewardItem[7698][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][4]["ItemChance"] = 7500
	tKillMonsterDropItem_RewardItem[7698][4]["Item_1"] = 1088001
	tKillMonsterDropItem_RewardItem[7698][4]["IsGlobal"] = 17

	---- 良品天地玄				200
	tKillMonsterDropItem_RewardItem[7698][5] = {}
	tKillMonsterDropItem_RewardItem[7698][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][5]["ItemChance"] = 200
	tKillMonsterDropItem_RewardItem[7698][5]["Item_1"] = 3006545
	tKillMonsterDropItem_RewardItem[7698][5]["IsGlobal"] = 15

	---- 普通天地玄				3000
	tKillMonsterDropItem_RewardItem[7698][6] = {}
	tKillMonsterDropItem_RewardItem[7698][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][6]["ItemChance"] = 3000
	tKillMonsterDropItem_RewardItem[7698][6]["Item_1"] = {}
	tKillMonsterDropItem_RewardItem[7698][6]["Item_1"][1] = 700071
	tKillMonsterDropItem_RewardItem[7698][6]["Item_1"][2] = 700101
	tKillMonsterDropItem_RewardItem[7698][6]["Item_1"][3] = 700121
	tKillMonsterDropItem_RewardItem[7698][6]["IsGlobal"] = 14

	---- 良品宝石				800
	tKillMonsterDropItem_RewardItem[7698][7] = {}
	tKillMonsterDropItem_RewardItem[7698][7]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][7]["ItemChance"] = 800
	tKillMonsterDropItem_RewardItem[7698][7]["Item_1"] = 3006544
	tKillMonsterDropItem_RewardItem[7698][7]["IsGlobal"] = 13

	---- 1次修炼次数				2400
	tKillMonsterDropItem_RewardItem[7698][8] = {}
	tKillMonsterDropItem_RewardItem[7698][8]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][8]["ItemChance"] = 2400
	tKillMonsterDropItem_RewardItem[7698][8]["Item_1"] = 3314912
	tKillMonsterDropItem_RewardItem[7698][8]["IsGlobal"] = 11

	---- 一道真气				3600
	tKillMonsterDropItem_RewardItem[7698][9] = {}
	tKillMonsterDropItem_RewardItem[7698][9]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][9]["ItemChance"] = 3600
	tKillMonsterDropItem_RewardItem[7698][9]["Item_1"] = 3314911
	tKillMonsterDropItem_RewardItem[7698][9]["IsGlobal"] = 10

	---- 免费强炼丹				500
	tKillMonsterDropItem_RewardItem[7698][10] = {}
	tKillMonsterDropItem_RewardItem[7698][10]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][10]["ItemChance"] = 500
	tKillMonsterDropItem_RewardItem[7698][10]["Item_1"] = 3006541
	tKillMonsterDropItem_RewardItem[7698][10]["IsGlobal"] = 9

	---- 通神丹				1000
	tKillMonsterDropItem_RewardItem[7698][11] = {}
	tKillMonsterDropItem_RewardItem[7698][11]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][11]["ItemChance"] = 1000
	tKillMonsterDropItem_RewardItem[7698][11]["Item_1"] = 3006540
	tKillMonsterDropItem_RewardItem[7698][11]["IsGlobal"] = 8

	---- 护心丹				2400
	tKillMonsterDropItem_RewardItem[7698][12] = {}
	tKillMonsterDropItem_RewardItem[7698][12]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][12]["ItemChance"] = 2400
	tKillMonsterDropItem_RewardItem[7698][12]["Item_1"] = 3002029
	tKillMonsterDropItem_RewardItem[7698][12]["IsGlobal"] = 7

	---- 30气力				2000
	tKillMonsterDropItem_RewardItem[7698][13] = {}
	tKillMonsterDropItem_RewardItem[7698][13]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][13]["ItemChance"] = 2000
	tKillMonsterDropItem_RewardItem[7698][13]["Item_1"] = 3006538
	tKillMonsterDropItem_RewardItem[7698][13]["IsGlobal"] = 5

	---- 30修行值				2000
	tKillMonsterDropItem_RewardItem[7698][14] = {}
	tKillMonsterDropItem_RewardItem[7698][14]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][14]["ItemChance"] = 2000
	tKillMonsterDropItem_RewardItem[7698][14]["Item_1"] = 3006535
	tKillMonsterDropItem_RewardItem[7698][14]["IsGlobal"] = 2

	---- 30分钟经验				2000
	tKillMonsterDropItem_RewardItem[7698][15] = {}
	tKillMonsterDropItem_RewardItem[7698][15]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7698][15]["ItemChance"] = 2000
	tKillMonsterDropItem_RewardItem[7698][15]["Item_1"] = 3006532

	---------------------------- 三层普通怪
	tKillMonsterDropItem_RewardItem[7699] = {}
	tKillMonsterDropItem_RewardItem[7702] = tKillMonsterDropItem_RewardItem[7699]
	tKillMonsterDropItem_RewardItem[7699]["ItemChanceSum"] = 34863

	---- 勇者赤炼包				4500
	tKillMonsterDropItem_RewardItem[7699][1] = {}
	tKillMonsterDropItem_RewardItem[7699][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][1]["ItemChance"] = 4500
	tKillMonsterDropItem_RewardItem[7699][1]["Item_1"] = 3008815
	tKillMonsterDropItem_RewardItem[7699][1]["IsGlobal"] = 23
	tKillMonsterDropItem_RewardItem[7699][1]["DropMode"] = 1
	tKillMonsterDropItem_RewardItem[7699][1]["Attr"] = {}
	tKillMonsterDropItem_RewardItem[7699][1]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_RewardItem[7699][1]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_RewardItem[7699][1]["Attr"]["active"] = 1

	---- 七阶防具配饰神魂礼包（赠）				4
	tKillMonsterDropItem_RewardItem[7699][2] = {}
	tKillMonsterDropItem_RewardItem[7699][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][2]["ItemChance"] = 4
	tKillMonsterDropItem_RewardItem[7699][2]["Item_1"] = 3006746
	tKillMonsterDropItem_RewardItem[7699][2]["IsGlobal"] = 22

	---- 七阶武器神魂礼包（赠）				4
	tKillMonsterDropItem_RewardItem[7699][3] = {}
	tKillMonsterDropItem_RewardItem[7699][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][3]["ItemChance"] = 4
	tKillMonsterDropItem_RewardItem[7699][3]["Item_1"] = 3006745
	tKillMonsterDropItem_RewardItem[7699][3]["IsGlobal"] = 21

	---- 神魂礼包洗非赠				12
	tKillMonsterDropItem_RewardItem[7699][4] = {}
	tKillMonsterDropItem_RewardItem[7699][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][4]["ItemChance"] = 12
	tKillMonsterDropItem_RewardItem[7699][4]["Item_1"] = 3006550
	tKillMonsterDropItem_RewardItem[7699][4]["IsGlobal"] = 20

	---- 六阶神魂随机包				4
	tKillMonsterDropItem_RewardItem[7699][5] = {}
	tKillMonsterDropItem_RewardItem[7699][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][5]["ItemChance"] = 4
	tKillMonsterDropItem_RewardItem[7699][5]["Item_1"] = 3003382
	tKillMonsterDropItem_RewardItem[7699][5]["IsGlobal"] = 19

	---- 龙珠				75
	tKillMonsterDropItem_RewardItem[7699][6] = {}
	tKillMonsterDropItem_RewardItem[7699][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][6]["ItemChance"] = 75
	tKillMonsterDropItem_RewardItem[7699][6]["Item_1"] = 3006549
	tKillMonsterDropItem_RewardItem[7699][6]["IsGlobal"] = 18

	---- 流星				6500
	tKillMonsterDropItem_RewardItem[7699][7] = {}
	tKillMonsterDropItem_RewardItem[7699][7]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][7]["ItemChance"] = 6500
	tKillMonsterDropItem_RewardItem[7699][7]["Item_1"] = 1088001
	tKillMonsterDropItem_RewardItem[7699][7]["IsGlobal"] = 17

	---- 优质天地玄				24
	tKillMonsterDropItem_RewardItem[7699][8] = {}
	tKillMonsterDropItem_RewardItem[7699][8]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][8]["ItemChance"] = 24
	tKillMonsterDropItem_RewardItem[7699][8]["Item_1"] = {}
	tKillMonsterDropItem_RewardItem[7699][8]["Item_1"][1] = 3006546
	tKillMonsterDropItem_RewardItem[7699][8]["Item_1"][2] = 3006547
	tKillMonsterDropItem_RewardItem[7699][8]["Item_1"][3] = 3006548
	tKillMonsterDropItem_RewardItem[7699][8]["IsGlobal"] = 16

	---- 良品天地玄				600
	tKillMonsterDropItem_RewardItem[7699][9] = {}
	tKillMonsterDropItem_RewardItem[7699][9]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][9]["ItemChance"] = 600
	tKillMonsterDropItem_RewardItem[7699][9]["Item_1"] = 3006545
	tKillMonsterDropItem_RewardItem[7699][9]["IsGlobal"] = 15

	---- 1次修炼次数				4000
	tKillMonsterDropItem_RewardItem[7699][10] = {}
	tKillMonsterDropItem_RewardItem[7699][10]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][10]["ItemChance"] = 4000
	tKillMonsterDropItem_RewardItem[7699][10]["Item_1"] = 3314912
	tKillMonsterDropItem_RewardItem[7699][10]["IsGlobal"] = 11

	---- 一道真气				6000
	tKillMonsterDropItem_RewardItem[7699][11] = {}
	tKillMonsterDropItem_RewardItem[7699][11]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][11]["ItemChance"] = 6000
	tKillMonsterDropItem_RewardItem[7699][11]["Item_1"] = 3314911
	tKillMonsterDropItem_RewardItem[7699][11]["IsGlobal"] = 10

	---- 免费强炼丹				1500
	tKillMonsterDropItem_RewardItem[7699][12] = {}
	tKillMonsterDropItem_RewardItem[7699][12]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][12]["ItemChance"] = 1500
	tKillMonsterDropItem_RewardItem[7699][12]["Item_1"] = 3006541
	tKillMonsterDropItem_RewardItem[7699][12]["IsGlobal"] = 9

	---- 通神丹				2000
	tKillMonsterDropItem_RewardItem[7699][13] = {}
	tKillMonsterDropItem_RewardItem[7699][13]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][13]["ItemChance"] = 2000
	tKillMonsterDropItem_RewardItem[7699][13]["Item_1"] = 3006540
	tKillMonsterDropItem_RewardItem[7699][13]["IsGlobal"] = 8

	---- 护心丹				4800
	tKillMonsterDropItem_RewardItem[7699][14] = {}
	tKillMonsterDropItem_RewardItem[7699][14]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][14]["ItemChance"] = 4800
	tKillMonsterDropItem_RewardItem[7699][14]["Item_1"] = 3002029
	tKillMonsterDropItem_RewardItem[7699][14]["IsGlobal"] = 7

	---- 50气力				1600
	tKillMonsterDropItem_RewardItem[7699][15] = {}
	tKillMonsterDropItem_RewardItem[7699][15]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][15]["ItemChance"] = 1600
	tKillMonsterDropItem_RewardItem[7699][15]["Item_1"] = 3006539
	tKillMonsterDropItem_RewardItem[7699][15]["IsGlobal"] = 6

	---- 50修行值				1600
	tKillMonsterDropItem_RewardItem[7699][16] = {}
	tKillMonsterDropItem_RewardItem[7699][16]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][16]["ItemChance"] = 1600
	tKillMonsterDropItem_RewardItem[7699][16]["Item_1"] = 3006536
	tKillMonsterDropItem_RewardItem[7699][16]["IsGlobal"] = 3

	---- 50分钟经验				1600
	tKillMonsterDropItem_RewardItem[7699][17] = {}
	tKillMonsterDropItem_RewardItem[7699][17]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][17]["ItemChance"] = 1600
	tKillMonsterDropItem_RewardItem[7699][17]["Item_1"] = 3006533

	---- 七阶武器神魂碎片				12
	tKillMonsterDropItem_RewardItem[7699][18] = {}
	tKillMonsterDropItem_RewardItem[7699][18]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][18]["ItemChance"] = 12
	tKillMonsterDropItem_RewardItem[7699][18]["Item_1"] = 3006765
	tKillMonsterDropItem_RewardItem[7699][18]["IsGlobal"] = 27
	
	---- 七阶武器神魂碎片				28
	tKillMonsterDropItem_RewardItem[7699][19] = {}
	tKillMonsterDropItem_RewardItem[7699][19]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_RewardItem[7699][19]["ItemChance"] = 28
	tKillMonsterDropItem_RewardItem[7699][19]["Item_1"] = 3006766
	tKillMonsterDropItem_RewardItem[7699][19]["IsGlobal"] = 28

	------------------------------- 幽暗地妖
	tKillMonsterDropItem_RewardItem[7703] = {}
	-- 普通时间
	tKillMonsterDropItem_RewardItem[7703][1] = {}
	-- 赤炼石+1		3
	tKillMonsterDropItem_RewardItem[7703][1][1] = {}
	tKillMonsterDropItem_RewardItem[7703][1][1]["ItemId"] = 3006551
	tKillMonsterDropItem_RewardItem[7703][1][1]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7703][1][1]["IsGlobal"] = 23
	
	-- 普通天地玄	3
	tKillMonsterDropItem_RewardItem[7703][1][2] = {}
	tKillMonsterDropItem_RewardItem[7703][1][2]["ItemId"] = {}
	tKillMonsterDropItem_RewardItem[7703][1][2]["ItemId"][1] = 700071
	tKillMonsterDropItem_RewardItem[7703][1][2]["ItemId"][2] = 700101
	tKillMonsterDropItem_RewardItem[7703][1][2]["ItemId"][3] = 700121
	tKillMonsterDropItem_RewardItem[7703][1][2]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7703][1][2]["IsGlobal"] = 14
	
	-- 普通宝石		5
	tKillMonsterDropItem_RewardItem[7703][1][3] = {}
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"] = {}
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"][1] = 700001
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"][2] = 700011
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"][3] = 700021
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"][4] = 700031
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"][5] = 700041
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"][6] = 700051
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemId"][7] = 700061
	tKillMonsterDropItem_RewardItem[7703][1][3]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7703][1][3]["IsGlobal"] = 12
	
	-- 10气力		5
	tKillMonsterDropItem_RewardItem[7703][1][4] = {}
	tKillMonsterDropItem_RewardItem[7703][1][4]["ItemId"] = 3006537
	tKillMonsterDropItem_RewardItem[7703][1][4]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7703][1][4]["IsGlobal"] = 4

	-- 流星		8
	tKillMonsterDropItem_RewardItem[7703][1][5] = {}
	tKillMonsterDropItem_RewardItem[7703][1][5]["ItemId"] = 1088001
	tKillMonsterDropItem_RewardItem[7703][1][5]["ItemNum"] = 8
	tKillMonsterDropItem_RewardItem[7703][1][5]["IsAdditional"] = true
	tKillMonsterDropItem_RewardItem[7703][1][5]["Range"] = 19
	tKillMonsterDropItem_RewardItem[7703][1][5]["Sub"] = 10

	------------------------------- 幽影地魂
	tKillMonsterDropItem_RewardItem[7704] = {}
	-- 普通时间
	tKillMonsterDropItem_RewardItem[7704][1] = {}
	-- 赤炼石+1		3
	tKillMonsterDropItem_RewardItem[7704][1][1] = {}
	tKillMonsterDropItem_RewardItem[7704][1][1]["ItemId"] = 3006551
	tKillMonsterDropItem_RewardItem[7704][1][1]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7704][1][1]["IsGlobal"] = 23
	
	-- 普通天地玄	5
	tKillMonsterDropItem_RewardItem[7704][1][2] = {}
	tKillMonsterDropItem_RewardItem[7704][1][2]["ItemId"] = {}
	tKillMonsterDropItem_RewardItem[7704][1][2]["ItemId"][1] = 700071
	tKillMonsterDropItem_RewardItem[7704][1][2]["ItemId"][2] = 700101
	tKillMonsterDropItem_RewardItem[7704][1][2]["ItemId"][3] = 700121
	tKillMonsterDropItem_RewardItem[7704][1][2]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7704][1][2]["IsGlobal"] = 14
	
	-- 通神丹		5
	tKillMonsterDropItem_RewardItem[7704][1][3] = {}
	tKillMonsterDropItem_RewardItem[7704][1][3]["ItemId"] = 3006540
	tKillMonsterDropItem_RewardItem[7704][1][3]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7704][1][3]["IsGlobal"] = 8
	
	-- 30气力		3
	tKillMonsterDropItem_RewardItem[7704][1][4] = {}
	tKillMonsterDropItem_RewardItem[7704][1][4]["ItemId"] = 3006538
	tKillMonsterDropItem_RewardItem[7704][1][4]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7704][1][4]["IsGlobal"] = 5
	
	-- 流星		10
	tKillMonsterDropItem_RewardItem[7704][1][5] = {}
	tKillMonsterDropItem_RewardItem[7704][1][5]["ItemId"] = 1088001
	tKillMonsterDropItem_RewardItem[7704][1][5]["ItemNum"] = 10
	tKillMonsterDropItem_RewardItem[7704][1][5]["IsAdditional"] = true
	tKillMonsterDropItem_RewardItem[7704][1][5]["Range"] = 19
	tKillMonsterDropItem_RewardItem[7704][1][5]["Sub"] = 10

	------------------------------- 幽游地魔
	tKillMonsterDropItem_RewardItem[7705] = {}
	-- 普通时间
	tKillMonsterDropItem_RewardItem[7705][1] = {}
	-- 赤炼石+1		5
	tKillMonsterDropItem_RewardItem[7705][1][1] = {}
	tKillMonsterDropItem_RewardItem[7705][1][1]["ItemId"] = 3006551
	tKillMonsterDropItem_RewardItem[7705][1][1]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7705][1][1]["IsGlobal"] = 23
	
	-- 普通天地玄	3
	tKillMonsterDropItem_RewardItem[7705][1][2] = {}
	tKillMonsterDropItem_RewardItem[7705][1][2]["ItemId"] = {}
	tKillMonsterDropItem_RewardItem[7705][1][2]["ItemId"][1] = 700071
	tKillMonsterDropItem_RewardItem[7705][1][2]["ItemId"][2] = 700101
	tKillMonsterDropItem_RewardItem[7705][1][2]["ItemId"][3] = 700121
	tKillMonsterDropItem_RewardItem[7705][1][2]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7705][1][2]["IsGlobal"] = 14
	
	-- 通神丹		5
	tKillMonsterDropItem_RewardItem[7705][1][3] = {}
	tKillMonsterDropItem_RewardItem[7705][1][3]["ItemId"] = 3006540
	tKillMonsterDropItem_RewardItem[7705][1][3]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7705][1][3]["IsGlobal"] = 8

	-- 50气力		3
	tKillMonsterDropItem_RewardItem[7705][1][4] = {}
	tKillMonsterDropItem_RewardItem[7705][1][4]["ItemId"] = 3006539
	tKillMonsterDropItem_RewardItem[7705][1][4]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7705][1][4]["IsGlobal"] = 6
	
	-- 流星		12
	tKillMonsterDropItem_RewardItem[7705][1][5] = {}
	tKillMonsterDropItem_RewardItem[7705][1][5]["ItemId"] = 1088001
	tKillMonsterDropItem_RewardItem[7705][1][5]["ItemNum"] = 12
	tKillMonsterDropItem_RewardItem[7705][1][5]["IsAdditional"] = true
	tKillMonsterDropItem_RewardItem[7705][1][5]["Range"] = 19
	tKillMonsterDropItem_RewardItem[7705][1][5]["Sub"] = 10

	------------------------------- 幽寂豺狼
	tKillMonsterDropItem_RewardItem[7706] = {}
	-- 普通时间
	tKillMonsterDropItem_RewardItem[7706][1] = {}
	-- 赤炼石+2		1
	tKillMonsterDropItem_RewardItem[7706][1][1] = {}
	tKillMonsterDropItem_RewardItem[7706][1][1]["ItemId"] = 3006552
	tKillMonsterDropItem_RewardItem[7706][1][1]["ItemNum"] = 1
	tKillMonsterDropItem_RewardItem[7706][1][1]["IsGlobal"] = 24
	
	-- 赤炼石+1		3
	tKillMonsterDropItem_RewardItem[7706][1][2] = {}
	tKillMonsterDropItem_RewardItem[7706][1][2]["ItemId"] = 3006551
	tKillMonsterDropItem_RewardItem[7706][1][2]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7706][1][2]["IsGlobal"] = 23
	
	-- 龙珠		1
	tKillMonsterDropItem_RewardItem[7706][1][3] = {}
	tKillMonsterDropItem_RewardItem[7706][1][3]["ItemId"] = 3006549
	tKillMonsterDropItem_RewardItem[7706][1][3]["ItemNum"] = 1
	tKillMonsterDropItem_RewardItem[7706][1][3]["IsGlobal"] = 18
	
	-- 免费强炼丹		3
	tKillMonsterDropItem_RewardItem[7706][1][4] = {}
	tKillMonsterDropItem_RewardItem[7706][1][4]["ItemId"] = 3006541
	tKillMonsterDropItem_RewardItem[7706][1][4]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7706][1][4]["IsGlobal"] = 9
	
	-- 通神丹		5
	tKillMonsterDropItem_RewardItem[7706][1][5] = {}
	tKillMonsterDropItem_RewardItem[7706][1][5]["ItemId"] = 3006540
	tKillMonsterDropItem_RewardItem[7706][1][5]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7706][1][5]["IsGlobal"] = 8
	
	-- 护心丹		3
	tKillMonsterDropItem_RewardItem[7706][1][6] = {}
	tKillMonsterDropItem_RewardItem[7706][1][6]["ItemId"] = 3002029
	tKillMonsterDropItem_RewardItem[7706][1][6]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7706][1][6]["IsGlobal"] = 7
	
	-- 10气力		3
	tKillMonsterDropItem_RewardItem[7706][1][7] = {}
	tKillMonsterDropItem_RewardItem[7706][1][7]["ItemId"] = 3006537
	tKillMonsterDropItem_RewardItem[7706][1][7]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7706][1][7]["IsGlobal"] = 4
	
	-- 流星		16
	tKillMonsterDropItem_RewardItem[7706][1][8] = {}
	tKillMonsterDropItem_RewardItem[7706][1][8]["ItemId"] = 1088001
	tKillMonsterDropItem_RewardItem[7706][1][8]["ItemNum"] = 16
	tKillMonsterDropItem_RewardItem[7706][1][8]["IsAdditional"] = true
	tKillMonsterDropItem_RewardItem[7706][1][8]["Range"] = 23
	tKillMonsterDropItem_RewardItem[7706][1][8]["Sub"] = 12

	------------------------------- 幽冥麒麟
	tKillMonsterDropItem_RewardItem[7707] = {}
	-- 普通时间
	tKillMonsterDropItem_RewardItem[7707][1] = {}
	-- 赤炼石+3		1
	tKillMonsterDropItem_RewardItem[7707][1][1] = {}
	tKillMonsterDropItem_RewardItem[7707][1][1]["ItemId"] = 3006553
	tKillMonsterDropItem_RewardItem[7707][1][1]["ItemNum"] = 1
	tKillMonsterDropItem_RewardItem[7707][1][1]["IsGlobal"] = 25
	
	-- 赤炼石+1		3
	tKillMonsterDropItem_RewardItem[7707][1][2] = {}
	tKillMonsterDropItem_RewardItem[7707][1][2]["ItemId"] = 3006551
	tKillMonsterDropItem_RewardItem[7707][1][2]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7707][1][2]["IsGlobal"] = 23

	-- 龙珠		1
	tKillMonsterDropItem_RewardItem[7707][1][3] = {}
	tKillMonsterDropItem_RewardItem[7707][1][3]["ItemId"] = 3006549
	tKillMonsterDropItem_RewardItem[7707][1][3]["ItemNum"] = 1
	tKillMonsterDropItem_RewardItem[7707][1][3]["IsGlobal"] = 18
	
	-- 免费强炼丹		3
	tKillMonsterDropItem_RewardItem[7707][1][4] = {}
	tKillMonsterDropItem_RewardItem[7707][1][4]["ItemId"] = 3006541
	tKillMonsterDropItem_RewardItem[7707][1][4]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7707][1][4]["IsGlobal"] = 9
	
	-- 通神丹		5
	tKillMonsterDropItem_RewardItem[7707][1][5] = {}
	tKillMonsterDropItem_RewardItem[7707][1][5]["ItemId"] = 3006540
	tKillMonsterDropItem_RewardItem[7707][1][5]["ItemNum"] = 5
	tKillMonsterDropItem_RewardItem[7707][1][5]["IsGlobal"] = 8
	
	-- 护心丹		3
	tKillMonsterDropItem_RewardItem[7707][1][6] = {}
	tKillMonsterDropItem_RewardItem[7707][1][6]["ItemId"] = 3002029
	tKillMonsterDropItem_RewardItem[7707][1][6]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7707][1][6]["IsGlobal"] = 7
	
	-- 30气力		3
	tKillMonsterDropItem_RewardItem[7707][1][7] = {}
	tKillMonsterDropItem_RewardItem[7707][1][7]["ItemId"] = 3006538
	tKillMonsterDropItem_RewardItem[7707][1][7]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7707][1][7]["IsGlobal"] = 5
	
	-- 流星		18
	tKillMonsterDropItem_RewardItem[7707][1][8] = {}
	tKillMonsterDropItem_RewardItem[7707][1][8]["ItemId"] = 1088001
	tKillMonsterDropItem_RewardItem[7707][1][8]["ItemNum"] = 18
	tKillMonsterDropItem_RewardItem[7707][1][8]["IsAdditional"] = true
	tKillMonsterDropItem_RewardItem[7707][1][8]["Range"] = 23
	tKillMonsterDropItem_RewardItem[7707][1][8]["Sub"] = 12

	------------------------------- 九幽金睛兽
	tKillMonsterDropItem_RewardItem[7708] = {}
	-- 普通时间
	tKillMonsterDropItem_RewardItem[7708][1] = {}
	-- 赤炼石+3		1
	tKillMonsterDropItem_RewardItem[7708][1][1] = {}
	tKillMonsterDropItem_RewardItem[7708][1][1]["ItemId"] = 3006553
	tKillMonsterDropItem_RewardItem[7708][1][1]["ItemNum"] = 1
	tKillMonsterDropItem_RewardItem[7708][1][1]["IsGlobal"] = 25
	
	-- 赤炼石+1		3
	tKillMonsterDropItem_RewardItem[7708][1][2] = {}
	tKillMonsterDropItem_RewardItem[7708][1][2]["ItemId"] = 3006551
	tKillMonsterDropItem_RewardItem[7708][1][2]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7708][1][2]["IsGlobal"] = 23

	-- 良品天地玄		3
	tKillMonsterDropItem_RewardItem[7708][1][3] = {}
	tKillMonsterDropItem_RewardItem[7708][1][3]["ItemId"] = 3006545
	tKillMonsterDropItem_RewardItem[7708][1][3]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7708][1][3]["IsGlobal"] = 15
	
	-- 免费强炼丹		3
	tKillMonsterDropItem_RewardItem[7708][1][4] = {}
	tKillMonsterDropItem_RewardItem[7708][1][4]["ItemId"] = 3006541
	tKillMonsterDropItem_RewardItem[7708][1][4]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7708][1][4]["IsGlobal"] = 9
	
	-- 通神丹		3
	tKillMonsterDropItem_RewardItem[7708][1][5] = {}
	tKillMonsterDropItem_RewardItem[7708][1][5]["ItemId"] = 3006540
	tKillMonsterDropItem_RewardItem[7708][1][5]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7708][1][5]["IsGlobal"] = 8
	
	-- 护心丹		3
	tKillMonsterDropItem_RewardItem[7708][1][6] = {}
	tKillMonsterDropItem_RewardItem[7708][1][6]["ItemId"] = 3002029
	tKillMonsterDropItem_RewardItem[7708][1][6]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7708][1][6]["IsGlobal"] = 7
	
	-- 50气力		3
	tKillMonsterDropItem_RewardItem[7708][1][7] = {}
	tKillMonsterDropItem_RewardItem[7708][1][7]["ItemId"] = 3006539
	tKillMonsterDropItem_RewardItem[7708][1][7]["ItemNum"] = 3
	tKillMonsterDropItem_RewardItem[7708][1][7]["IsGlobal"] = 6
	
	-- 流星		20
	tKillMonsterDropItem_RewardItem[7708][1][8] = {}
	tKillMonsterDropItem_RewardItem[7708][1][8]["ItemId"] = 1088001
	tKillMonsterDropItem_RewardItem[7708][1][8]["ItemNum"] = 20
	tKillMonsterDropItem_RewardItem[7708][1][8]["IsAdditional"] = true
	tKillMonsterDropItem_RewardItem[7708][1][8]["Range"] = 23
	tKillMonsterDropItem_RewardItem[7708][1][8]["Sub"] = 12

-- BOSS的额外奖励
local tKillMonsterDropItem_Boss	= {}
	-- 幽暗地妖
	tKillMonsterDropItem_Boss[7703] = {}
	tKillMonsterDropItem_Boss[7703]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Boss[7703]["WorstItem"] = 3006552
	
	-- 龙珠				30%
	tKillMonsterDropItem_Boss[7703][1] = {}
	tKillMonsterDropItem_Boss[7703][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7703][1]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7703][1]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7703][1]["Item_1"][1] = 3006549
	tKillMonsterDropItem_Boss[7703][1]["IsGlobal"] = 18

	-- 六阶神魂随机包	20%
	tKillMonsterDropItem_Boss[7703][2] = {}
	tKillMonsterDropItem_Boss[7703][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7703][2]["ItemChance"] = 2000
	tKillMonsterDropItem_Boss[7703][2]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7703][2]["Item_1"][1] = 3003382
	tKillMonsterDropItem_Boss[7703][2]["IsGlobal"] = 19

	-- 赤炼石+2			30%
	tKillMonsterDropItem_Boss[7703][3] = {}
	tKillMonsterDropItem_Boss[7703][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7703][3]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7703][3]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7703][3]["Item_1"][1] = 3006552
	tKillMonsterDropItem_Boss[7703][3]["IsGlobal"] = 24

	-- 赤炼石+3			20%
	tKillMonsterDropItem_Boss[7703][4] = {}
	tKillMonsterDropItem_Boss[7703][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7703][4]["ItemChance"] = 2000
	tKillMonsterDropItem_Boss[7703][4]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7703][4]["Item_1"][1] = 3006553
	tKillMonsterDropItem_Boss[7703][4]["IsGlobal"] = 25

	-- 幽影地魂
	tKillMonsterDropItem_Boss[7704] = {}
	tKillMonsterDropItem_Boss[7704]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Boss[7704]["WorstItem"] = 3006552
	
	-- 优质天地玄	1.50%
	tKillMonsterDropItem_Boss[7704][1] = {}
	tKillMonsterDropItem_Boss[7704][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][1]["ItemChance"] = 150
	tKillMonsterDropItem_Boss[7704][1]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][1]["Item_1"][1] = 3006546
	tKillMonsterDropItem_Boss[7704][1]["Item_1"][2] = 3006547
	tKillMonsterDropItem_Boss[7704][1]["Item_1"][3] = 3006548
	tKillMonsterDropItem_Boss[7704][1]["IsGlobal"] = 16

	-- 龙珠	30%
	tKillMonsterDropItem_Boss[7704][2] = {}
	tKillMonsterDropItem_Boss[7704][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][2]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7704][2]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][2]["Item_1"][1] = 3006549
	tKillMonsterDropItem_Boss[7704][2]["IsGlobal"] = 18

	-- 六阶神魂随机包	7%
	tKillMonsterDropItem_Boss[7704][3] = {}
	tKillMonsterDropItem_Boss[7704][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][3]["ItemChance"] = 700
	tKillMonsterDropItem_Boss[7704][3]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][3]["Item_1"][1] = 3003382
	tKillMonsterDropItem_Boss[7704][3]["IsGlobal"] = 19

	-- 神魂礼包洗非赠	0.50%
	tKillMonsterDropItem_Boss[7704][4] = {}
	tKillMonsterDropItem_Boss[7704][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][4]["ItemChance"] = 50
	tKillMonsterDropItem_Boss[7704][4]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][4]["Item_1"][1] = 3006550
	tKillMonsterDropItem_Boss[7704][4]["IsGlobal"] = 20

	-- 七阶武器神魂礼包		0.50%
	tKillMonsterDropItem_Boss[7704][5] = {}
	tKillMonsterDropItem_Boss[7704][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][5]["ItemChance"] = 50
	tKillMonsterDropItem_Boss[7704][5]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][5]["Item_1"][1] = 3006745
	tKillMonsterDropItem_Boss[7704][5]["IsGlobal"] = 21

	-- 七阶防具配饰神魂礼包		0.50%
	tKillMonsterDropItem_Boss[7704][6] = {}
	tKillMonsterDropItem_Boss[7704][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][6]["ItemChance"] = 50
	tKillMonsterDropItem_Boss[7704][6]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][6]["Item_1"][1] = 3006746
	tKillMonsterDropItem_Boss[7704][6]["IsGlobal"] = 22

	-- 赤炼石+2			50%
	tKillMonsterDropItem_Boss[7704][7] = {}
	tKillMonsterDropItem_Boss[7704][7]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][7]["ItemChance"] = 5000
	tKillMonsterDropItem_Boss[7704][7]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][7]["Item_1"][1] = 3006552
	tKillMonsterDropItem_Boss[7704][7]["IsGlobal"] = 24

	-- 赤炼石+3			10%
	tKillMonsterDropItem_Boss[7704][8] = {}
	tKillMonsterDropItem_Boss[7704][8]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7704][8]["ItemChance"] = 1000
	tKillMonsterDropItem_Boss[7704][8]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7704][8]["Item_1"][1] = 3006553
	tKillMonsterDropItem_Boss[7704][8]["IsGlobal"] = 25

	-- 幽游地魔
	tKillMonsterDropItem_Boss[7705] = {}
	tKillMonsterDropItem_Boss[7705]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Boss[7705]["WorstItem"] = 3006552
	
	-- 优质天地玄	3%
	tKillMonsterDropItem_Boss[7705][1] = {}
	tKillMonsterDropItem_Boss[7705][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][1]["ItemChance"] = 300
	tKillMonsterDropItem_Boss[7705][1]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][1]["Item_1"][1] = 3006546
	tKillMonsterDropItem_Boss[7705][1]["Item_1"][2] = 3006547
	tKillMonsterDropItem_Boss[7705][1]["Item_1"][3] = 3006548
	tKillMonsterDropItem_Boss[7705][1]["IsGlobal"] = 16

	-- 龙珠	30%
	tKillMonsterDropItem_Boss[7705][2] = {}
	tKillMonsterDropItem_Boss[7705][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][2]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7705][2]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][2]["Item_1"][1] = 3006549
	tKillMonsterDropItem_Boss[7705][2]["IsGlobal"] = 18

	-- 六阶神魂随机包	3%
	tKillMonsterDropItem_Boss[7705][3] = {}
	tKillMonsterDropItem_Boss[7705][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][3]["ItemChance"] = 300
	tKillMonsterDropItem_Boss[7705][3]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][3]["Item_1"][1] = 3003382
	tKillMonsterDropItem_Boss[7705][3]["IsGlobal"] = 19

	-- 神魂礼包洗非赠	1%
	tKillMonsterDropItem_Boss[7705][4] = {}
	tKillMonsterDropItem_Boss[7705][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][4]["ItemChance"] = 100
	tKillMonsterDropItem_Boss[7705][4]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][4]["Item_1"][1] = 3006550
	tKillMonsterDropItem_Boss[7705][4]["IsGlobal"] = 20

	-- 七阶武器神魂礼包		1%
	tKillMonsterDropItem_Boss[7705][5] = {}
	tKillMonsterDropItem_Boss[7705][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][5]["ItemChance"] = 100
	tKillMonsterDropItem_Boss[7705][5]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][5]["Item_1"][1] = 3006745
	tKillMonsterDropItem_Boss[7705][5]["IsGlobal"] = 21

	-- 七阶防具配饰神魂礼包		1%
	tKillMonsterDropItem_Boss[7705][6] = {}
	tKillMonsterDropItem_Boss[7705][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][6]["ItemChance"] = 100
	tKillMonsterDropItem_Boss[7705][6]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][6]["Item_1"][1] = 3006746
	tKillMonsterDropItem_Boss[7705][6]["IsGlobal"] = 22

	-- 赤炼石+2			50%
	tKillMonsterDropItem_Boss[7705][7] = {}
	tKillMonsterDropItem_Boss[7705][7]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][7]["ItemChance"] = 5000
	tKillMonsterDropItem_Boss[7705][7]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][7]["Item_1"][1] = 3006552
	tKillMonsterDropItem_Boss[7705][7]["IsGlobal"] = 24

	-- 赤炼石+3			10%
	tKillMonsterDropItem_Boss[7705][8] = {}
	tKillMonsterDropItem_Boss[7705][8]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][8]["ItemChance"] = 1000
	tKillMonsterDropItem_Boss[7705][8]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][8]["Item_1"][1] = 3006553
	tKillMonsterDropItem_Boss[7705][8]["IsGlobal"] = 25

	-- 赤炼石+6			1%
	tKillMonsterDropItem_Boss[7705][9] = {}
	tKillMonsterDropItem_Boss[7705][9]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7705][9]["ItemChance"] = 100
	tKillMonsterDropItem_Boss[7705][9]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7705][9]["Item_1"][1] = 3006554
	tKillMonsterDropItem_Boss[7705][9]["IsGlobal"] = 26

	-- 幽寂豺狼
	tKillMonsterDropItem_Boss[7706] = {}
	tKillMonsterDropItem_Boss[7706]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Boss[7706]["WorstItem"] = 3006553
	
	-- 良品天地玄	40%
	tKillMonsterDropItem_Boss[7706][1] = {}
	tKillMonsterDropItem_Boss[7706][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7706][1]["ItemChance"] = 4000
	tKillMonsterDropItem_Boss[7706][1]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7706][1]["Item_1"][1] = 3006545
	tKillMonsterDropItem_Boss[7706][1]["IsGlobal"] = 15

	-- 优质天地玄	5%
	tKillMonsterDropItem_Boss[7706][2] = {}
	tKillMonsterDropItem_Boss[7706][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7706][2]["ItemChance"] = 500
	tKillMonsterDropItem_Boss[7706][2]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7706][2]["Item_1"][1] = 3006546
	tKillMonsterDropItem_Boss[7706][2]["Item_1"][2] = 3006547
	tKillMonsterDropItem_Boss[7706][2]["Item_1"][3] = 3006548
	tKillMonsterDropItem_Boss[7706][2]["IsGlobal"] = 16

	-- 六阶神魂随机包	15%
	tKillMonsterDropItem_Boss[7706][3] = {}
	tKillMonsterDropItem_Boss[7706][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7706][3]["ItemChance"] = 1500
	tKillMonsterDropItem_Boss[7706][3]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7706][3]["Item_1"][1] = 3003382
	tKillMonsterDropItem_Boss[7706][3]["IsGlobal"] = 19

	-- 神魂礼包洗非赠	5%
	tKillMonsterDropItem_Boss[7706][4] = {}
	tKillMonsterDropItem_Boss[7706][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7706][4]["ItemChance"] = 500
	tKillMonsterDropItem_Boss[7706][4]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7706][4]["Item_1"][1] = 3006550
	tKillMonsterDropItem_Boss[7706][4]["IsGlobal"] = 20

	-- 七阶防具配饰神魂礼包		5%
	tKillMonsterDropItem_Boss[7706][5] = {}
	tKillMonsterDropItem_Boss[7706][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7706][5]["ItemChance"] = 500
	tKillMonsterDropItem_Boss[7706][5]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7706][5]["Item_1"][1] = 3006746
	tKillMonsterDropItem_Boss[7706][5]["IsGlobal"] = 22

	-- 赤炼石+3			30%
	tKillMonsterDropItem_Boss[7706][6] = {}
	tKillMonsterDropItem_Boss[7706][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7706][6]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7706][6]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7706][6]["Item_1"][1] = 3006553
	tKillMonsterDropItem_Boss[7706][6]["IsGlobal"] = 25

	-- 幽冥麒麟
	tKillMonsterDropItem_Boss[7707] = {}
	tKillMonsterDropItem_Boss[7707]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Boss[7707]["WorstItem"] = 3006553
	
	-- 优质天地玄	15%
	tKillMonsterDropItem_Boss[7707][1] = {}
	tKillMonsterDropItem_Boss[7707][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7707][1]["ItemChance"] = 1500
	tKillMonsterDropItem_Boss[7707][1]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7707][1]["Item_1"][1] = 3006546
	tKillMonsterDropItem_Boss[7707][1]["Item_1"][2] = 3006547
	tKillMonsterDropItem_Boss[7707][1]["Item_1"][3] = 3006548
	tKillMonsterDropItem_Boss[7707][1]["IsGlobal"] = 16

	-- 六阶神魂随机包	30%
	tKillMonsterDropItem_Boss[7707][2] = {}
	tKillMonsterDropItem_Boss[7707][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7707][2]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7707][2]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7707][2]["Item_1"][1] = 3003382
	tKillMonsterDropItem_Boss[7707][2]["IsGlobal"] = 19

	-- 神魂礼包洗非赠	10%
	tKillMonsterDropItem_Boss[7707][3] = {}
	tKillMonsterDropItem_Boss[7707][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7707][3]["ItemChance"] = 1000
	tKillMonsterDropItem_Boss[7707][3]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7707][3]["Item_1"][1] = 3006550
	tKillMonsterDropItem_Boss[7707][3]["IsGlobal"] = 20

	-- 七阶武器神魂礼包		5%
	tKillMonsterDropItem_Boss[7707][4] = {}
	tKillMonsterDropItem_Boss[7707][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7707][4]["ItemChance"] = 500
	tKillMonsterDropItem_Boss[7707][4]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7707][4]["Item_1"][1] = 3006745
	tKillMonsterDropItem_Boss[7707][4]["IsGlobal"] = 21

	-- 七阶防具配饰神魂礼包		10%
	tKillMonsterDropItem_Boss[7707][5] = {}
	tKillMonsterDropItem_Boss[7707][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7707][5]["ItemChance"] = 1000
	tKillMonsterDropItem_Boss[7707][5]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7707][5]["Item_1"][1] = 3006746
	tKillMonsterDropItem_Boss[7707][5]["IsGlobal"] = 22

	-- 赤炼石+3		30%
	tKillMonsterDropItem_Boss[7707][6] = {}
	tKillMonsterDropItem_Boss[7707][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7707][6]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7707][6]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7707][6]["Item_1"][1] = 3006553
	tKillMonsterDropItem_Boss[7707][6]["IsGlobal"] = 25

	-- 九幽金睛兽
	tKillMonsterDropItem_Boss[7708] = {}
	tKillMonsterDropItem_Boss[7708]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_Boss[7708]["WorstItem"] = 3006553
	
	-- 优质天地玄	30%
	tKillMonsterDropItem_Boss[7708][1] = {}
	tKillMonsterDropItem_Boss[7708][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7708][1]["ItemChance"] = 3000
	tKillMonsterDropItem_Boss[7708][1]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7708][1]["Item_1"][1] = 3006546
	tKillMonsterDropItem_Boss[7708][1]["Item_1"][2] = 3006547
	tKillMonsterDropItem_Boss[7708][1]["Item_1"][3] = 3006548
	tKillMonsterDropItem_Boss[7708][1]["IsGlobal"] = 16

	-- 神魂礼包洗非赠	20%
	tKillMonsterDropItem_Boss[7708][2] = {}
	tKillMonsterDropItem_Boss[7708][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7708][2]["ItemChance"] = 2000
	tKillMonsterDropItem_Boss[7708][2]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7708][2]["Item_1"][1] = 3006550
	tKillMonsterDropItem_Boss[7708][2]["IsGlobal"] = 20

	-- 七阶武器神魂礼包		10%
	tKillMonsterDropItem_Boss[7708][3] = {}
	tKillMonsterDropItem_Boss[7708][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7708][3]["ItemChance"] = 1000
	tKillMonsterDropItem_Boss[7708][3]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7708][3]["Item_1"][1] = 3006745
	tKillMonsterDropItem_Boss[7708][3]["IsGlobal"] = 21

	-- 七阶防具配饰神魂礼包		20%
	tKillMonsterDropItem_Boss[7708][4] = {}
	tKillMonsterDropItem_Boss[7708][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7708][4]["ItemChance"] = 2000
	tKillMonsterDropItem_Boss[7708][4]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7708][4]["Item_1"][1] = 3006746
	tKillMonsterDropItem_Boss[7708][4]["IsGlobal"] = 22

	-- 赤炼石+3		15%
	tKillMonsterDropItem_Boss[7708][5] = {}
	tKillMonsterDropItem_Boss[7708][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7708][5]["ItemChance"] = 1500
	tKillMonsterDropItem_Boss[7708][5]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7708][5]["Item_1"][1] = 3006553
	tKillMonsterDropItem_Boss[7708][5]["IsGlobal"] = 25

	-- 赤炼石+6		5%
	tKillMonsterDropItem_Boss[7708][6] = {}
	tKillMonsterDropItem_Boss[7708][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_Boss[7708][6]["ItemChance"] = 500
	tKillMonsterDropItem_Boss[7708][6]["Item_1"] = {}
	tKillMonsterDropItem_Boss[7708][6]["Item_1"][1] = 3006554
	tKillMonsterDropItem_Boss[7708][6]["IsGlobal"] = 26

-- 礼包对应积分
local tKillMonsterDropItem_ExchangeScore = {}
	-- 良品宝石礼包
	tKillMonsterDropItem_ExchangeScore[3006544] = {}
	tKillMonsterDropItem_ExchangeScore[3006544]["Score"] = 10
	
	-- 良品稀有宝石礼包
	tKillMonsterDropItem_ExchangeScore[3006545] = {}
	tKillMonsterDropItem_ExchangeScore[3006545]["Score"] = 80
	
	-- 优质天怒宝石礼包。
	tKillMonsterDropItem_ExchangeScore[3006546] = {}
	tKillMonsterDropItem_ExchangeScore[3006546]["Score"] = 1600
	
	-- 优质地灵宝石礼包。
	tKillMonsterDropItem_ExchangeScore[3006547] = {}
	tKillMonsterDropItem_ExchangeScore[3006547]["Score"] = 1600
	
	-- 优质玄元宝石礼包。
	tKillMonsterDropItem_ExchangeScore[3006548] = {}
	tKillMonsterDropItem_ExchangeScore[3006548]["Score"] = 1600
	
	-- 龙珠礼包。
	tKillMonsterDropItem_ExchangeScore[3006549] = {}
	tKillMonsterDropItem_ExchangeScore[3006549]["Score"] = 240
	
	-- +1赤炼石礼包。
	tKillMonsterDropItem_ExchangeScore[3006551] = {}
	tKillMonsterDropItem_ExchangeScore[3006551]["Score"] = 25
	
	-- +2赤炼石礼包。
	tKillMonsterDropItem_ExchangeScore[3006552] = {}
	tKillMonsterDropItem_ExchangeScore[3006552]["Score"] = 100
	
	-- +3赤炼石礼包。
	tKillMonsterDropItem_ExchangeScore[3006553] = {}
	tKillMonsterDropItem_ExchangeScore[3006553]["Score"] = 300
	
	-- +6赤炼石礼包。
	tKillMonsterDropItem_ExchangeScore[3006554] = {}
	tKillMonsterDropItem_ExchangeScore[3006554]["Score"] = 8000

	-- 九幽神魂礼包洗赠卷
	tKillMonsterDropItem_ExchangeScore[3006550] = {}
	tKillMonsterDropItem_ExchangeScore[3006550]["Score"] = 1200

	-- 1层BOSS掉落礼包
	tKillMonsterDropItem_ExchangeScore[3008812] = {}
	tKillMonsterDropItem_ExchangeScore[3008812]["Score"] = 100
	
	-- 2层BOSS掉落礼包
	tKillMonsterDropItem_ExchangeScore[3008813] = {}
	tKillMonsterDropItem_ExchangeScore[3008813]["Score"] = 150

	-- 3层BOSS掉落礼包
	tKillMonsterDropItem_ExchangeScore[3008814] = {}
	tKillMonsterDropItem_ExchangeScore[3008814]["Score"] = 200

	-- 小怪掉落礼包
	tKillMonsterDropItem_ExchangeScore[3008815] = {}
	tKillMonsterDropItem_ExchangeScore[3008815]["Score"] = 35

-- 小任务的奖励
local tKillMonsterDropItem_TaskReward = {}
	tKillMonsterDropItem_TaskReward[1] = {}
	tKillMonsterDropItem_TaskReward[1]["ItemChanceSum"] = 10000
	-- 究极通神丹（赠）		15%
	tKillMonsterDropItem_TaskReward[1][1] = {}
	tKillMonsterDropItem_TaskReward[1][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_TaskReward[1][1]["ItemChance"] = 1500
	tKillMonsterDropItem_TaskReward[1][1]["Item_1"] = 3003126
	tKillMonsterDropItem_TaskReward[1][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_TaskReward[1][1]["Index"] = 1
	tKillMonsterDropItem_TaskReward[1][1]["Log"] = "0,0,0,0,12000103,1[5],3003126,1"
	
	-- 物资募集符3007311		20%
	tKillMonsterDropItem_TaskReward[1][2] = {}
	tKillMonsterDropItem_TaskReward[1][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_TaskReward[1][2]["ItemChance"] = 2000
	tKillMonsterDropItem_TaskReward[1][2]["Item_1"] = 3007311
	tKillMonsterDropItem_TaskReward[1][2]["ItemAttr"] = "0 1"
	tKillMonsterDropItem_TaskReward[1][2]["Index"] = 2
	tKillMonsterDropItem_TaskReward[1][2]["Log"] = "0,0,0,0,12000103,1[5],3007311,1"
	
	-- +2赤练石（赠）		10%
	tKillMonsterDropItem_TaskReward[1][3] = {}
	tKillMonsterDropItem_TaskReward[1][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_TaskReward[1][3]["ItemChance"] = 1000
	tKillMonsterDropItem_TaskReward[1][3]["Item_1"] = 730002
	tKillMonsterDropItem_TaskReward[1][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_TaskReward[1][3]["Index"] = 3
	tKillMonsterDropItem_TaskReward[1][3]["Log"] = "0,0,0,0,12000103,1[5],730002,1"
	
	-- 禁天灭妖符*1		10%
	tKillMonsterDropItem_TaskReward[1][4] = {}
	tKillMonsterDropItem_TaskReward[1][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_TaskReward[1][4]["ItemChance"] = 1000
	tKillMonsterDropItem_TaskReward[1][4]["Item_1"] = 3600012
	tKillMonsterDropItem_TaskReward[1][4]["ItemAttr"] = "0 1"
	tKillMonsterDropItem_TaskReward[1][4]["Index"] = 4
	tKillMonsterDropItem_TaskReward[1][4]["Log"] = "0,0,0,0,12000103,1[5],3600012,1"
	
	-- 100点气力值		20%
	tKillMonsterDropItem_TaskReward[1][5] = {}
	tKillMonsterDropItem_TaskReward[1][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_TaskReward[1][5]["ItemChance"] = 2000
	tKillMonsterDropItem_TaskReward[1][5]["Item_1"] = 100
	tKillMonsterDropItem_TaskReward[1][5]["IsStrength"] = true
	tKillMonsterDropItem_TaskReward[1][5]["Index"] = 5
	tKillMonsterDropItem_TaskReward[1][5]["Log"] = "0,0,0,0,12000103,1[5],12,100"

	-- 20点赠品天石		10%
	tKillMonsterDropItem_TaskReward[1][6] = {}
	tKillMonsterDropItem_TaskReward[1][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_TaskReward[1][6]["ItemChance"] = 1000
	tKillMonsterDropItem_TaskReward[1][6]["Item_1"] = 20
	tKillMonsterDropItem_TaskReward[1][6]["IsEmoney"] = true
	tKillMonsterDropItem_TaskReward[1][6]["Index"] = 6
	tKillMonsterDropItem_TaskReward[1][6]["Log"] = "0,0,0,0,12000103,1[5],3,20"
	
	-- 琅嬛金钥3002308		15%
	tKillMonsterDropItem_TaskReward[1][7] = {}
	tKillMonsterDropItem_TaskReward[1][7]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_TaskReward[1][7]["ItemChance"] = 1500
	tKillMonsterDropItem_TaskReward[1][7]["Item_1"] = 3002308
	tKillMonsterDropItem_TaskReward[1][7]["ItemAttr"] = "0 1"
	tKillMonsterDropItem_TaskReward[1][7]["Index"] = 7
	tKillMonsterDropItem_TaskReward[1][7]["Log"] = "0,0,0,0,12000103,1[5],3002308,1"

-- 礼包配置
local tKillMonsterDropItem_Item = {}
	-- 10分钟经验礼包
	tKillMonsterDropItem_Item[3006531] = {}
	tKillMonsterDropItem_Item[3006531]["EventType"] = 134
	tKillMonsterDropItem_Item[3006531]["DataType"] = 89
	tKillMonsterDropItem_Item[3006531]["MaxData"] = 10
	tKillMonsterDropItem_Item[3006531]["Exp"] = 10
	tKillMonsterDropItem_Item[3006531]["Cultivation"] = 5
	tKillMonsterDropItem_Item[3006531]["ExpLog"] = "0,0,3006531,1,12000103,2,4,10"
	tKillMonsterDropItem_Item[3006531]["CultivationLog"] = "0,0,3006531,1,12000103,2,6,5"

	-- 30分钟经验礼包
	tKillMonsterDropItem_Item[3006532] = {}
	tKillMonsterDropItem_Item[3006532]["EventType"] = 134
	tKillMonsterDropItem_Item[3006532]["DataType"] = 90
	tKillMonsterDropItem_Item[3006532]["MaxData"] = 10
	tKillMonsterDropItem_Item[3006532]["Exp"] = 30
	tKillMonsterDropItem_Item[3006532]["Cultivation"] = 15
	tKillMonsterDropItem_Item[3006532]["ExpLog"] = "0,0,3006532,1,12000103,2,4,30"
	tKillMonsterDropItem_Item[3006532]["CultivationLog"] = "0,0,3006532,1,12000103,2,6,15"

	-- 50分钟经验礼包
	tKillMonsterDropItem_Item[3006533] = {}
	tKillMonsterDropItem_Item[3006533]["EventType"] = 134
	tKillMonsterDropItem_Item[3006533]["DataType"] = 91
	tKillMonsterDropItem_Item[3006533]["MaxData"] = 10
	tKillMonsterDropItem_Item[3006533]["Exp"] = 50
	tKillMonsterDropItem_Item[3006533]["Cultivation"] = 25
	tKillMonsterDropItem_Item[3006533]["ExpLog"] = "0,0,3006533,1,12000103,2,4,50"
	tKillMonsterDropItem_Item[3006533]["CultivationLog"] = "0,0,3006533,1,12000103,2,6,25"

	-- 10点修行值礼包
	tKillMonsterDropItem_Item[3006534] = {}
	tKillMonsterDropItem_Item[3006534]["Cultivation"] = 10
	tKillMonsterDropItem_Item[3006534]["Log"] = "0,0,3006534,1,12000103,2,6,10"

	-- 30点修行值礼包
	tKillMonsterDropItem_Item[3006535] = {}
	tKillMonsterDropItem_Item[3006535]["Cultivation"] = 30
	tKillMonsterDropItem_Item[3006535]["Log"] = "0,0,3006535,1,12000103,2,6,30"

	-- 50点修行值礼包
	tKillMonsterDropItem_Item[3006536] = {}
	tKillMonsterDropItem_Item[3006536]["Cultivation"] = 50
	tKillMonsterDropItem_Item[3006536]["Log"] = "0,0,3006536,1,12000103,2,6,50"

	-- 10点气力值礼包
	tKillMonsterDropItem_Item[3006537] = {}
	tKillMonsterDropItem_Item[3006537]["StrengthValue"] = 10
	tKillMonsterDropItem_Item[3006537]["Log"] = "0,0,3006537,1,12000103,2,12,10"
	
	-- 30点气力值礼包
	tKillMonsterDropItem_Item[3006538] = {}
	tKillMonsterDropItem_Item[3006538]["StrengthValue"] = 30
	tKillMonsterDropItem_Item[3006538]["Log"] = "0,0,3006538,1,12000103,2,12,30"

	-- 50点气力值礼包
	tKillMonsterDropItem_Item[3006539] = {}
	tKillMonsterDropItem_Item[3006539]["StrengthValue"] = 50
	tKillMonsterDropItem_Item[3006539]["Log"] = "0,0,3006539,1,12000103,2,12,50"

	-- 通神丹礼包
	tKillMonsterDropItem_Item[3006540] = {}
	tKillMonsterDropItem_Item[3006540]["ItemId"] = 3003125
	tKillMonsterDropItem_Item[3006540]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006540]["Log"] = "0,0,3006540,1,12000103,2,3003125,1"
	tKillMonsterDropItem_Item[3006540]["Space"] = 1

	-- 免费强炼丹礼包
	tKillMonsterDropItem_Item[3006541] = {}
	tKillMonsterDropItem_Item[3006541]["ItemId"] = 3003124
	tKillMonsterDropItem_Item[3006541]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006541]["Log"] = "0,0,3006541,1,12000103,2,3003124,1"
	tKillMonsterDropItem_Item[3006541]["Space"] = 1
	
	-- 真气礼包
	tKillMonsterDropItem_Item[3006542] = {}
	tKillMonsterDropItem_Item[3006542]["ZhenQi"] = 1
	tKillMonsterDropItem_Item[3006542]["Log"] = "0,0,3006542,1,12000103,2,16,1"

	-- 修炼礼包
	tKillMonsterDropItem_Item[3006543] = {}
	tKillMonsterDropItem_Item[3006543]["PractNum"] = 10000
	tKillMonsterDropItem_Item[3006543]["Log"] = "0,0,3006543,1,12000103,2,17,1"

	-- 良品宝石礼包
	tKillMonsterDropItem_Item[3006544] = {}
	tKillMonsterDropItem_Item[3006544]["ItemId"] = {}
	tKillMonsterDropItem_Item[3006544]["ItemId"][1] = 700002
	tKillMonsterDropItem_Item[3006544]["ItemId"][2] = 700012
	tKillMonsterDropItem_Item[3006544]["ItemId"][3] = 700022
	tKillMonsterDropItem_Item[3006544]["ItemId"][4] = 700032
	tKillMonsterDropItem_Item[3006544]["ItemId"][5] = 700042
	tKillMonsterDropItem_Item[3006544]["ItemId"][6] = 700052
	tKillMonsterDropItem_Item[3006544]["ItemId"][7] = 700062
	tKillMonsterDropItem_Item[3006544]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006544]["Log"] = "0,0,3006544,1,12000103,2,%d,1"
	tKillMonsterDropItem_Item[3006544]["Space"] = 1
	
	-- 良品稀有宝石礼包
	tKillMonsterDropItem_Item[3006545] = {}
	tKillMonsterDropItem_Item[3006545]["ItemId"] = {}
	tKillMonsterDropItem_Item[3006545]["ItemId"][1] = 700072
	tKillMonsterDropItem_Item[3006545]["ItemId"][2] = 700102
	tKillMonsterDropItem_Item[3006545]["ItemId"][3] = 700122
	tKillMonsterDropItem_Item[3006545]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006545]["Log"] = "0,0,3006545,1,12000103,2,%d,1"
	tKillMonsterDropItem_Item[3006545]["Space"] = 1
	
	-- 优质天怒宝石礼包
	tKillMonsterDropItem_Item[3006546] = {}
	tKillMonsterDropItem_Item[3006546]["ItemId"] = 700103
	tKillMonsterDropItem_Item[3006546]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006546]["Log"] = "0,0,3006546,1,12000103,2,700103,1"
	tKillMonsterDropItem_Item[3006546]["Space"] = 1
	
	-- 优质地灵宝石礼包
	tKillMonsterDropItem_Item[3006547] = {}
	tKillMonsterDropItem_Item[3006547]["ItemId"] = 700123
	tKillMonsterDropItem_Item[3006547]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006547]["Log"] = "0,0,3006547,1,12000103,2,700123,1"
	tKillMonsterDropItem_Item[3006547]["Space"] = 1

	-- 优质玄元宝石礼包
	tKillMonsterDropItem_Item[3006548] = {}
	tKillMonsterDropItem_Item[3006548]["ItemId"] = 700073
	tKillMonsterDropItem_Item[3006548]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006548]["Log"] = "0,0,3006548,1,12000103,2,700073,1"
	tKillMonsterDropItem_Item[3006548]["Space"] = 1
	
	-- 龙珠礼包
	tKillMonsterDropItem_Item[3006549] = {}
	tKillMonsterDropItem_Item[3006549]["ItemId"] = 1088000
	tKillMonsterDropItem_Item[3006549]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006549]["Log"] = "0,0,3006549,1,12000103,2,1088000,1"
	tKillMonsterDropItem_Item[3006549]["Space"] = 1

	-- +1赤炼石礼包
	tKillMonsterDropItem_Item[3006551] = {}
	tKillMonsterDropItem_Item[3006551]["ItemId"] = 730001
	tKillMonsterDropItem_Item[3006551]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006551]["Log"] = "0,0,3006551,1,12000103,2,730001,1"
	tKillMonsterDropItem_Item[3006551]["Space"] = 1
	
	-- +2赤炼石礼包
	tKillMonsterDropItem_Item[3006552] = {}
	tKillMonsterDropItem_Item[3006552]["ItemId"] = 730002
	tKillMonsterDropItem_Item[3006552]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006552]["Log"] = "0,0,3006552,1,12000103,2,730002,1"
	tKillMonsterDropItem_Item[3006552]["Space"] = 1

	-- +3赤炼石礼包
	tKillMonsterDropItem_Item[3006553] = {}
	tKillMonsterDropItem_Item[3006553]["ItemId"] = 730003
	tKillMonsterDropItem_Item[3006553]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006553]["Log"] = "0,0,3006553,1,12000103,2,730003,1"
	tKillMonsterDropItem_Item[3006553]["Space"] = 1

	-- +6赤炼石礼包
	tKillMonsterDropItem_Item[3006554] = {}
	tKillMonsterDropItem_Item[3006554]["ItemId"] = 730006
	tKillMonsterDropItem_Item[3006554]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_Item[3006554]["Log"] = "0,0,3006554,1,12000103,2,730006,1"
	tKillMonsterDropItem_Item[3006554]["Space"] = 1

	-- 九幽藏宝图
	tKillMonsterDropItem_Item[3006699] = {}
	tKillMonsterDropItem_Item[3006699]["Cultivation"] = 30
	tKillMonsterDropItem_Item[3006699]["CultivationLog"] = "0,0,3006699,1,12000103,2,6,30"
	tKillMonsterDropItem_Item[3006699]["Exp"] = 30
	tKillMonsterDropItem_Item[3006699]["ExpLog"] = "0,0,3006699,1,12000103,2,4,30"
	tKillMonsterDropItem_Item[3006699]["MapId"] = 1000
	tKillMonsterDropItem_Item[3006699]["CellX"] = 485
	tKillMonsterDropItem_Item[3006699]["CellY"] = 578
	tKillMonsterDropItem_Item[3006699]["NpcId"] = 0

-- 神魂礼包配置
local tKillMonsterDropItem_SpiritGift = {}
	-- 七阶武器神魂礼包
	tKillMonsterDropItem_SpiritGift[3006745] = {}
	-- 鬼狱狂刀
	tKillMonsterDropItem_SpiritGift[3006745][1] = {}
	tKillMonsterDropItem_SpiritGift[3006745][1]["ItemId"] = 800020
	tKillMonsterDropItem_SpiritGift[3006745][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][1]["Log"] = "0,0,3006745,1,12000103,2,800020,1"

	-- 轰天巨锤
	tKillMonsterDropItem_SpiritGift[3006745][2] = {}
	tKillMonsterDropItem_SpiritGift[3006745][2]["ItemId"] = 800111
	tKillMonsterDropItem_SpiritGift[3006745][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][2]["Log"] = "0,0,3006745,1,12000103,2,800111,1"
	
	-- 破天长戟
	tKillMonsterDropItem_SpiritGift[3006745][3] = {}
	tKillMonsterDropItem_SpiritGift[3006745][3]["ItemId"] = 800215
	tKillMonsterDropItem_SpiritGift[3006745][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][3]["Log"] = "0,0,3006745,1,12000103,2,800215,1"
	
	-- 忏悔之剑
	tKillMonsterDropItem_SpiritGift[3006745][4] = {}
	tKillMonsterDropItem_SpiritGift[3006745][4]["ItemId"] = 800811
	tKillMonsterDropItem_SpiritGift[3006745][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][4]["Log"] = "0,0,3006745,1,12000103,2,800811,1"
	
	-- 轮回之枪
	tKillMonsterDropItem_SpiritGift[3006745][5] = {}
	tKillMonsterDropItem_SpiritGift[3006745][5]["ItemId"] = 800810
	tKillMonsterDropItem_SpiritGift[3006745][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][5]["Log"] = "0,0,3006745,1,12000103,2,800810,1"
	
	-- 幻影忍刀
	tKillMonsterDropItem_SpiritGift[3006745][6] = {}
	tKillMonsterDropItem_SpiritGift[3006745][6]["ItemId"] = 800142
	tKillMonsterDropItem_SpiritGift[3006745][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][6]["Log"] = "0,0,3006745,1,12000103,2,800142,1"
	
	-- 鬼恕龙牙
	tKillMonsterDropItem_SpiritGift[3006745][7] = {}
	tKillMonsterDropItem_SpiritGift[3006745][7]["ItemId"] = 800917
	tKillMonsterDropItem_SpiritGift[3006745][7]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][7]["Log"] = "0,0,3006745,1,12000103,2,800917,1"
	
	-- 屠神钩镰
	tKillMonsterDropItem_SpiritGift[3006745][8] = {}
	tKillMonsterDropItem_SpiritGift[3006745][8]["ItemId"] = 800255
	tKillMonsterDropItem_SpiritGift[3006745][8]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][8]["Log"] = "0,0,3006745,1,12000103,2,800255,1"
	
	-- 碎魂魔盾
	tKillMonsterDropItem_SpiritGift[3006745][9] = {}
	tKillMonsterDropItem_SpiritGift[3006745][9]["ItemId"] = 800422
	tKillMonsterDropItem_SpiritGift[3006745][9]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][9]["Log"] = "0,0,3006745,1,12000103,2,800422,1"
	
	-- 虚空宝剑
	tKillMonsterDropItem_SpiritGift[3006745][10] = {}
	tKillMonsterDropItem_SpiritGift[3006745][10]["ItemId"] = 800522
	tKillMonsterDropItem_SpiritGift[3006745][10]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][10]["Log"] = "0,0,3006745,1,12000103,2,800522,1"
	
	-- 逐日灵弓
	tKillMonsterDropItem_SpiritGift[3006745][11] = {}
	tKillMonsterDropItem_SpiritGift[3006745][11]["ItemId"] = 800618
	tKillMonsterDropItem_SpiritGift[3006745][11]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][11]["Log"] = "0,0,3006745,1,12000103,2,800618,1"
	
	-- 天道念珠
	tKillMonsterDropItem_SpiritGift[3006745][12] = {}
	tKillMonsterDropItem_SpiritGift[3006745][12]["ItemId"] = 800725
	tKillMonsterDropItem_SpiritGift[3006745][12]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][12]["Log"] = "0,0,3006745,1,12000103,2,800725,1"
	
	-- 鬼舞狂战
	tKillMonsterDropItem_SpiritGift[3006745][13] = {}
	tKillMonsterDropItem_SpiritGift[3006745][13]["ItemId"] = 801004
	tKillMonsterDropItem_SpiritGift[3006745][13]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][13]["Log"] = "0,0,3006745,1,12000103,2,801004,1"
	
	-- 无极合一拂尘
	tKillMonsterDropItem_SpiritGift[3006745][14] = {}
	tKillMonsterDropItem_SpiritGift[3006745][14]["ItemId"] = 801104
	tKillMonsterDropItem_SpiritGift[3006745][14]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][14]["Log"] = "0,0,3006745,1,12000103,2,801104,1"
	
	-- 七阶暴击系战士史诗
	tKillMonsterDropItem_SpiritGift[3006745][15] = {}
	tKillMonsterDropItem_SpiritGift[3006745][15]["ItemId"] = 801216
	tKillMonsterDropItem_SpiritGift[3006745][15]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][15]["Log"] = "0,0,3006745,1,12000103,2,801216,1"
	
	-- 七阶粉碎系战士史诗
	tKillMonsterDropItem_SpiritGift[3006745][16] = {}
	tKillMonsterDropItem_SpiritGift[3006745][16]["ItemId"] = 801218
	tKillMonsterDropItem_SpiritGift[3006745][16]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][16]["Log"] = "0,0,3006745,1,12000103,2,801218,1"

	-- 7阶铁扇武器神魂
	tKillMonsterDropItem_SpiritGift[3006745][17] = {}
	tKillMonsterDropItem_SpiritGift[3006745][17]["ItemId"] = 801308
	tKillMonsterDropItem_SpiritGift[3006745][17]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][17]["Log"] = "0,0,3006745,1,12000103,2,801308,1"

	-- 7阶雷神神魂风暴战锤（暴击）
	tKillMonsterDropItem_SpiritGift[3006745][18] = {}
	tKillMonsterDropItem_SpiritGift[3006745][18]["ItemId"] = 827010
	tKillMonsterDropItem_SpiritGift[3006745][18]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][18]["Log"] = "0,0,3006745,1,12000103,2,827010,1"
	-- 7阶雷神神魂风暴战斧（暴击）
	tKillMonsterDropItem_SpiritGift[3006745][19] = {}
	tKillMonsterDropItem_SpiritGift[3006745][19]["ItemId"] = 827011
	tKillMonsterDropItem_SpiritGift[3006745][19]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][19]["Log"] = "0,0,3006745,1,12000103,2,827011,1"
	-- 7阶雷神神魂风暴战锤（粉碎）
	tKillMonsterDropItem_SpiritGift[3006745][20] = {}
	tKillMonsterDropItem_SpiritGift[3006745][20]["ItemId"] = 827012
	tKillMonsterDropItem_SpiritGift[3006745][20]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][20]["Log"] = "0,0,3006745,1,12000103,2,827012,1"
	-- 7阶雷神神魂风暴战斧（粉碎）
	tKillMonsterDropItem_SpiritGift[3006745][21] = {}
	tKillMonsterDropItem_SpiritGift[3006745][21]["ItemId"] = 827013
	tKillMonsterDropItem_SpiritGift[3006745][21]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006745][21]["Log"] = "0,0,3006745,1,12000103,2,827013,1"

	
	
	-- 七阶防具配饰神魂礼包
	tKillMonsterDropItem_SpiritGift[3006746] = {}
	-- 摧月魔冠
	tKillMonsterDropItem_SpiritGift[3006746][1] = {}
	tKillMonsterDropItem_SpiritGift[3006746][1]["ItemId"] = 820073
	tKillMonsterDropItem_SpiritGift[3006746][1]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][1]["Log"] = "0,0,3006746,1,12000103,2,820073,1"
	
	-- 斩日魔冠
	tKillMonsterDropItem_SpiritGift[3006746][2] = {}
	tKillMonsterDropItem_SpiritGift[3006746][2]["ItemId"] = 820074
	tKillMonsterDropItem_SpiritGift[3006746][2]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][2]["Log"] = "0,0,3006746,1,12000103,2,820074,1"
	
	-- 飞星仙冠
	tKillMonsterDropItem_SpiritGift[3006746][3] = {}
	tKillMonsterDropItem_SpiritGift[3006746][3]["ItemId"] = 820075
	tKillMonsterDropItem_SpiritGift[3006746][3]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][3]["Log"] = "0,0,3006746,1,12000103,2,820075,1"
	
	-- 冰辰仙冠
	tKillMonsterDropItem_SpiritGift[3006746][4] = {}
	tKillMonsterDropItem_SpiritGift[3006746][4]["ItemId"] = 820076
	tKillMonsterDropItem_SpiritGift[3006746][4]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][4]["Log"] = "0,0,3006746,1,12000103,2,820076,1"
	
	-- 幽冥魔铠
	tKillMonsterDropItem_SpiritGift[3006746][5] = {}
	tKillMonsterDropItem_SpiritGift[3006746][5]["ItemId"] = 822071
	tKillMonsterDropItem_SpiritGift[3006746][5]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][5]["Log"] = "0,0,3006746,1,12000103,2,822071,1"
	
	-- 蚀日仙铠
	tKillMonsterDropItem_SpiritGift[3006746][6] = {}
	tKillMonsterDropItem_SpiritGift[3006746][6]["ItemId"] = 822072
	tKillMonsterDropItem_SpiritGift[3006746][6]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][6]["Log"] = "0,0,3006746,1,12000103,2,822072,1"
	
	-- 苍炎香囊
	tKillMonsterDropItem_SpiritGift[3006746][7] = {}
	tKillMonsterDropItem_SpiritGift[3006746][7]["ItemId"] = 821034
	tKillMonsterDropItem_SpiritGift[3006746][7]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][7]["Log"] = "0,0,3006746,1,12000103,2,821034,1"
	
	-- 灵霄仙坠
	tKillMonsterDropItem_SpiritGift[3006746][8] = {}
	tKillMonsterDropItem_SpiritGift[3006746][8]["ItemId"] = 821033
	tKillMonsterDropItem_SpiritGift[3006746][8]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][8]["Log"] = "0,0,3006746,1,12000103,2,821033,1"
	
	-- 鹤唳魔戒
	tKillMonsterDropItem_SpiritGift[3006746][9] = {}
	tKillMonsterDropItem_SpiritGift[3006746][9]["ItemId"] = 823058
	tKillMonsterDropItem_SpiritGift[3006746][9]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][9]["Log"] = "0,0,3006746,1,12000103,2,823058,1"
	
	-- 飞龙魔戒
	tKillMonsterDropItem_SpiritGift[3006746][10] = {}
	tKillMonsterDropItem_SpiritGift[3006746][10]["ItemId"] = 823059
	tKillMonsterDropItem_SpiritGift[3006746][10]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][10]["Log"] = "0,0,3006746,1,12000103,2,823059,1"
	
	-- 玄冥扳指
	tKillMonsterDropItem_SpiritGift[3006746][11] = {}
	tKillMonsterDropItem_SpiritGift[3006746][11]["ItemId"] = 823061
	tKillMonsterDropItem_SpiritGift[3006746][11]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][11]["Log"] = "0,0,3006746,1,12000103,2,823061,1"
	
	-- 虎魄扳指
	tKillMonsterDropItem_SpiritGift[3006746][12] = {}
	tKillMonsterDropItem_SpiritGift[3006746][12]["ItemId"] = 823062
	tKillMonsterDropItem_SpiritGift[3006746][12]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][12]["Log"] = "0,0,3006746,1,12000103,2,823062,1"
	
	-- 惊虹仙镯
	tKillMonsterDropItem_SpiritGift[3006746][13] = {}
	tKillMonsterDropItem_SpiritGift[3006746][13]["ItemId"] = 823060
	tKillMonsterDropItem_SpiritGift[3006746][13]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][13]["Log"] = "0,0,3006746,1,12000103,2,823060,1"
	
	-- 灵狐魔履
	tKillMonsterDropItem_SpiritGift[3006746][14] = {}
	tKillMonsterDropItem_SpiritGift[3006746][14]["ItemId"] = 824018
	tKillMonsterDropItem_SpiritGift[3006746][14]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][14]["Log"] = "0,0,3006746,1,12000103,2,824018,1"
	
	-- 腾龙魔履
	tKillMonsterDropItem_SpiritGift[3006746][15] = {}
	tKillMonsterDropItem_SpiritGift[3006746][15]["ItemId"] = 824019
	tKillMonsterDropItem_SpiritGift[3006746][15]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][15]["Log"] = "0,0,3006746,1,12000103,2,824019,1"
	
	-- 天鹤仙履
	tKillMonsterDropItem_SpiritGift[3006746][16] = {}
	tKillMonsterDropItem_SpiritGift[3006746][16]["ItemId"] = 824020
	tKillMonsterDropItem_SpiritGift[3006746][16]["ItemAttr"] = "0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3"
	tKillMonsterDropItem_SpiritGift[3006746][16]["Log"] = "0,0,3006746,1,12000103,2,824020,1"

-- 赤炼石礼包
local tKillMonsterDropItem_AgingPack = {}
	-- 3008812	'1层BOSS掉落礼包'
	tKillMonsterDropItem_AgingPack[3008812] = {}
	tKillMonsterDropItem_AgingPack[3008812]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_AgingPack[3008812]["Space"] = 1
	tKillMonsterDropItem_AgingPack[3008812]["Log"] = "0,0,3008812,1,12000103,1[5],%d,1"
	
	-- 2个赤炼石+1（赠）	8	65%
	tKillMonsterDropItem_AgingPack[3008812][1] = {}
	tKillMonsterDropItem_AgingPack[3008812][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008812][1]["ItemChance"] = 6500
	tKillMonsterDropItem_AgingPack[3008812][1]["Item_1"] = 730001
	tKillMonsterDropItem_AgingPack[3008812][1]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008812][1]["Attr"]["addamount"] = 2
	tKillMonsterDropItem_AgingPack[3008812][1]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008812][1]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008812][1]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008812][1]["Attr"]["active"] = 1

	-- 赤炼石+2（赠）	16	25%
	tKillMonsterDropItem_AgingPack[3008812][2] = {}
	tKillMonsterDropItem_AgingPack[3008812][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008812][2]["ItemChance"] = 2500
	tKillMonsterDropItem_AgingPack[3008812][2]["Item_1"] = 730002
	tKillMonsterDropItem_AgingPack[3008812][2]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008812][2]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008812][2]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008812][2]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008812][2]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008812][2]["Attr"]["active"] = 1

	-- 赤炼石+3（赠）	48	9%
	tKillMonsterDropItem_AgingPack[3008812][3] = {}
	tKillMonsterDropItem_AgingPack[3008812][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008812][3]["ItemChance"] = 900
	tKillMonsterDropItem_AgingPack[3008812][3]["Item_1"] = 730003
	tKillMonsterDropItem_AgingPack[3008812][3]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008812][3]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008812][3]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008812][3]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008812][3]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008812][3]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008812][3]["Broadcast"] = "BroadCast"

	-- 赤炼石+4（赠）	144	1.0%
	tKillMonsterDropItem_AgingPack[3008812][4] = {}
	tKillMonsterDropItem_AgingPack[3008812][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008812][4]["ItemChance"] = 100
	tKillMonsterDropItem_AgingPack[3008812][4]["Item_1"] = 730004
	tKillMonsterDropItem_AgingPack[3008812][4]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008812][4]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008812][4]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008812][4]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008812][4]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008812][4]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008812][4]["Broadcast"] = "BroadCast"

	-- 3008813	'2层BOSS掉落礼包'
	tKillMonsterDropItem_AgingPack[3008813] = {}
	tKillMonsterDropItem_AgingPack[3008813]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_AgingPack[3008813]["Space"] = 1
	tKillMonsterDropItem_AgingPack[3008813]["Log"] = "0,0,3008813,1,12000103,1[6],%d,1"
	
	-- 2个赤炼石+1（赠）	8	54%
	tKillMonsterDropItem_AgingPack[3008813][1] = {}
	tKillMonsterDropItem_AgingPack[3008813][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008813][1]["ItemChance"] = 5400
	tKillMonsterDropItem_AgingPack[3008813][1]["Item_1"] = 730001
	tKillMonsterDropItem_AgingPack[3008813][1]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008813][1]["Attr"]["addamount"] = 2
	tKillMonsterDropItem_AgingPack[3008813][1]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008813][1]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008813][1]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008813][1]["Attr"]["active"] = 1

	-- 赤炼石+2（赠）	16	32%
	tKillMonsterDropItem_AgingPack[3008813][2] = {}
	tKillMonsterDropItem_AgingPack[3008813][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008813][2]["ItemChance"] = 3200
	tKillMonsterDropItem_AgingPack[3008813][2]["Item_1"] = 730002
	tKillMonsterDropItem_AgingPack[3008813][2]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008813][2]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008813][2]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008813][2]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008813][2]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008813][2]["Attr"]["active"] = 1

	-- 赤炼石+3（赠）	48	12%
	tKillMonsterDropItem_AgingPack[3008813][3] = {}
	tKillMonsterDropItem_AgingPack[3008813][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008813][3]["ItemChance"] = 1200
	tKillMonsterDropItem_AgingPack[3008813][3]["Item_1"] = 730003
	tKillMonsterDropItem_AgingPack[3008813][3]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008813][3]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008813][3]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008813][3]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008813][3]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008813][3]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008813][3]["Broadcast"] = "BroadCast"

	-- 赤炼石+4（赠）	144	1.90%
	tKillMonsterDropItem_AgingPack[3008813][4] = {}
	tKillMonsterDropItem_AgingPack[3008813][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008813][4]["ItemChance"] = 190
	tKillMonsterDropItem_AgingPack[3008813][4]["Item_1"] = 730004
	tKillMonsterDropItem_AgingPack[3008813][4]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008813][4]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008813][4]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008813][4]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008813][4]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008813][4]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008813][4]["Broadcast"] = "BroadCast"

	-- 赤炼石+5（赠）	432	0.1%
	tKillMonsterDropItem_AgingPack[3008813][5] = {}
	tKillMonsterDropItem_AgingPack[3008813][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008813][5]["ItemChance"] = 10
	tKillMonsterDropItem_AgingPack[3008813][5]["Item_1"] = 730005
	tKillMonsterDropItem_AgingPack[3008813][5]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008813][5]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008813][5]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008813][5]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008813][5]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008813][5]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008813][5]["Broadcast"] = "BroadCast"

	-- 3008814	'3层BOSS掉落礼包'
	tKillMonsterDropItem_AgingPack[3008814] = {}
	tKillMonsterDropItem_AgingPack[3008814]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_AgingPack[3008814]["Space"] = 1
	tKillMonsterDropItem_AgingPack[3008814]["Log"] = "0,0,3008814,1,12000103,1[7],%d,1"
	
	-- 2个赤炼石+1（赠）	8	43%
	tKillMonsterDropItem_AgingPack[3008814][1] = {}
	tKillMonsterDropItem_AgingPack[3008814][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008814][1]["ItemChance"] = 4300
	tKillMonsterDropItem_AgingPack[3008814][1]["Item_1"] = 730001
	tKillMonsterDropItem_AgingPack[3008814][1]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008814][1]["Attr"]["addamount"] = 2
	tKillMonsterDropItem_AgingPack[3008814][1]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008814][1]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008814][1]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008814][1]["Attr"]["active"] = 1

	-- 赤炼石+2（赠）	16	39%
	tKillMonsterDropItem_AgingPack[3008814][2] = {}
	tKillMonsterDropItem_AgingPack[3008814][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008814][2]["ItemChance"] = 3900
	tKillMonsterDropItem_AgingPack[3008814][2]["Item_1"] = 730002
	tKillMonsterDropItem_AgingPack[3008814][2]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008814][2]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008814][2]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008814][2]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008814][2]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008814][2]["Attr"]["active"] = 1

	-- 赤炼石+3（赠）	48	15%
	tKillMonsterDropItem_AgingPack[3008814][3] = {}
	tKillMonsterDropItem_AgingPack[3008814][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008814][3]["ItemChance"] = 1500
	tKillMonsterDropItem_AgingPack[3008814][3]["Item_1"] = 730003
	tKillMonsterDropItem_AgingPack[3008814][3]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008814][3]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008814][3]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008814][3]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008814][3]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008814][3]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008814][3]["Broadcast"] = "BroadCast"

	-- 赤炼石+4（赠）	144	2.90%
	tKillMonsterDropItem_AgingPack[3008814][4] = {}
	tKillMonsterDropItem_AgingPack[3008814][4]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008814][4]["ItemChance"] = 290
	tKillMonsterDropItem_AgingPack[3008814][4]["Item_1"] = 730004
	tKillMonsterDropItem_AgingPack[3008814][4]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008814][4]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008814][4]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008814][4]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008814][4]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008814][4]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008814][4]["Broadcast"] = "BroadCast"

	-- 赤炼石+5（赠）	432	0.09%
	tKillMonsterDropItem_AgingPack[3008814][5] = {}
	tKillMonsterDropItem_AgingPack[3008814][5]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008814][5]["ItemChance"] = 9
	tKillMonsterDropItem_AgingPack[3008814][5]["Item_1"] = 730005
	tKillMonsterDropItem_AgingPack[3008814][5]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008814][5]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008814][5]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008814][5]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008814][5]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008814][5]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008814][5]["Broadcast"] = "BroadCast"

	-- 赤炼石+6（赠）	1296	0.01%
	tKillMonsterDropItem_AgingPack[3008814][6] = {}
	tKillMonsterDropItem_AgingPack[3008814][6]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008814][6]["ItemChance"] = 1
	tKillMonsterDropItem_AgingPack[3008814][6]["Item_1"] = 730006
	tKillMonsterDropItem_AgingPack[3008814][6]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008814][6]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008814][6]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008814][6]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008814][6]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008814][6]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008814][6]["Broadcast"] = "BroadCast"

	-- 3008815	'小怪掉落礼包'
	tKillMonsterDropItem_AgingPack[3008815] = {}
	tKillMonsterDropItem_AgingPack[3008815]["ItemChanceSum"] = 10000
	tKillMonsterDropItem_AgingPack[3008815]["Log"] = "0,0,3008815,1,12000103,1[8],%d,1"
	
	-- 赤炼石+1（赠）	4	90%
	tKillMonsterDropItem_AgingPack[3008815][1] = {}
	tKillMonsterDropItem_AgingPack[3008815][1]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008815][1]["ItemChance"] = 9000
	tKillMonsterDropItem_AgingPack[3008815][1]["Item_1"] = 730001
	tKillMonsterDropItem_AgingPack[3008815][1]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008815][1]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008815][1]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008815][1]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008815][1]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008815][1]["Attr"]["active"] = 1

	-- 赤炼石+2（赠）	16	9%
	tKillMonsterDropItem_AgingPack[3008815][2] = {}
	tKillMonsterDropItem_AgingPack[3008815][2]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008815][2]["ItemChance"] = 900
	tKillMonsterDropItem_AgingPack[3008815][2]["Item_1"] = 730002
	tKillMonsterDropItem_AgingPack[3008815][2]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008815][2]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008815][2]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008815][2]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008815][2]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008815][2]["Attr"]["active"] = 1

	-- 赤炼石+3（赠）	48	1%
	tKillMonsterDropItem_AgingPack[3008815][3] = {}
	tKillMonsterDropItem_AgingPack[3008815][3]["RandomItemChanceType"] = 2
	tKillMonsterDropItem_AgingPack[3008815][3]["ItemChance"] = 100
	tKillMonsterDropItem_AgingPack[3008815][3]["Item_1"] = 730003
	tKillMonsterDropItem_AgingPack[3008815][3]["Attr"] = {}
	tKillMonsterDropItem_AgingPack[3008815][3]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_AgingPack[3008815][3]["Attr"]["monopoly"] = 3
	tKillMonsterDropItem_AgingPack[3008815][3]["Attr"]["color"] = 3
	tKillMonsterDropItem_AgingPack[3008815][3]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_AgingPack[3008815][3]["Attr"]["active"] = 1
	tKillMonsterDropItem_AgingPack[3008815][3]["Broadcast"] = ""

-- 新的普通BOSS的奖励
local tKillMonsterDropItem_GeneralBOSSAward = {}
	-- 幽暗地妖
	tKillMonsterDropItem_GeneralBOSSAward[7703] = {}
	tKillMonsterDropItem_GeneralBOSSAward[3811] = tKillMonsterDropItem_GeneralBOSSAward[7703]
	tKillMonsterDropItem_GeneralBOSSAward[3812] = tKillMonsterDropItem_GeneralBOSSAward[7703]
	tKillMonsterDropItem_GeneralBOSSAward[3813] = tKillMonsterDropItem_GeneralBOSSAward[7703]
	tKillMonsterDropItem_GeneralBOSSAward[3814] = tKillMonsterDropItem_GeneralBOSSAward[7703]
	
	-- 50气力礼包*6
	tKillMonsterDropItem_GeneralBOSSAward[7703][1] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7703][1]["ItemId"] = 3006539
	tKillMonsterDropItem_GeneralBOSSAward[7703][1]["ItemNum"] = 6

	-- 通神丹*3
	tKillMonsterDropItem_GeneralBOSSAward[7703][2] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7703][2]["ItemId"] = 3006540
	tKillMonsterDropItem_GeneralBOSSAward[7703][2]["ItemNum"] = 3

	-- 随机普通宝石*5
	tKillMonsterDropItem_GeneralBOSSAward[7703][3] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"][1] = 700001
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"][2] = 700011
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"][3] = 700021
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"][4] = 700031
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"][5] = 700041
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"][6] = 700051
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemId"][7] = 700061
	tKillMonsterDropItem_GeneralBOSSAward[7703][3]["ItemNum"] = 5

	-- 8个流星
	tKillMonsterDropItem_GeneralBOSSAward[7703][4] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7703][4]["ItemId"] = 1088001
	tKillMonsterDropItem_GeneralBOSSAward[7703][4]["ItemNum"] = 8
	tKillMonsterDropItem_GeneralBOSSAward[7703][4]["IsAdditional"] = true
	tKillMonsterDropItem_GeneralBOSSAward[7703][4]["Range"] = 19
	tKillMonsterDropItem_GeneralBOSSAward[7703][4]["Sub"] = 10

	-- 1层BOSS掉落礼包
	tKillMonsterDropItem_GeneralBOSSAward[7703][5] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7703][5]["ItemId"] = 3008812
	tKillMonsterDropItem_GeneralBOSSAward[7703][5]["ItemNum"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7703][5]["DropMode"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7703][5]["Attr"] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7703][5]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7703][5]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_GeneralBOSSAward[7703][5]["Attr"]["active"] = 1

	-- 幽影地魂
	tKillMonsterDropItem_GeneralBOSSAward[7704] = {}
	tKillMonsterDropItem_GeneralBOSSAward[3815] = tKillMonsterDropItem_GeneralBOSSAward[7704]
	tKillMonsterDropItem_GeneralBOSSAward[3816] = tKillMonsterDropItem_GeneralBOSSAward[7704]
	tKillMonsterDropItem_GeneralBOSSAward[3817] = tKillMonsterDropItem_GeneralBOSSAward[7704]
	tKillMonsterDropItem_GeneralBOSSAward[3818] = tKillMonsterDropItem_GeneralBOSSAward[7704]
	
	-- 50气力礼包*8
	tKillMonsterDropItem_GeneralBOSSAward[7704][1] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7704][1]["ItemId"] = 3006539
	tKillMonsterDropItem_GeneralBOSSAward[7704][1]["ItemNum"] = 8

	-- 通神丹*3
	tKillMonsterDropItem_GeneralBOSSAward[7704][2] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7704][2]["ItemId"] = 3006540
	tKillMonsterDropItem_GeneralBOSSAward[7704][2]["ItemNum"] = 3

	-- 随机普通宝石*5
	tKillMonsterDropItem_GeneralBOSSAward[7704][3] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"][1] = 700001
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"][2] = 700011
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"][3] = 700021
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"][4] = 700031
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"][5] = 700041
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"][6] = 700051
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemId"][7] = 700061
	tKillMonsterDropItem_GeneralBOSSAward[7704][3]["ItemNum"] = 5

	-- 10个流星
	tKillMonsterDropItem_GeneralBOSSAward[7704][4] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7704][4]["ItemId"] = 1088001
	tKillMonsterDropItem_GeneralBOSSAward[7704][4]["ItemNum"] = 10
	tKillMonsterDropItem_GeneralBOSSAward[7704][4]["IsAdditional"] = true
	tKillMonsterDropItem_GeneralBOSSAward[7704][4]["Range"] = 19
	tKillMonsterDropItem_GeneralBOSSAward[7704][4]["Sub"] = 10

	-- 2层BOSS掉落礼包
	tKillMonsterDropItem_GeneralBOSSAward[7704][5] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7704][5]["ItemId"] = 3008813
	tKillMonsterDropItem_GeneralBOSSAward[7704][5]["ItemNum"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7704][5]["DropMode"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7704][5]["Attr"] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7704][5]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7704][5]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_GeneralBOSSAward[7704][5]["Attr"]["active"] = 1

	-- 幽游地魔
	tKillMonsterDropItem_GeneralBOSSAward[7705] = {}
	tKillMonsterDropItem_GeneralBOSSAward[3819] = tKillMonsterDropItem_GeneralBOSSAward[7705]
	tKillMonsterDropItem_GeneralBOSSAward[3820] = tKillMonsterDropItem_GeneralBOSSAward[7705]
	tKillMonsterDropItem_GeneralBOSSAward[3821] = tKillMonsterDropItem_GeneralBOSSAward[7705]
	tKillMonsterDropItem_GeneralBOSSAward[3822] = tKillMonsterDropItem_GeneralBOSSAward[7705]
	
	-- 50气力礼包*10
	tKillMonsterDropItem_GeneralBOSSAward[7705][1] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7705][1]["ItemId"] = 3006539
	tKillMonsterDropItem_GeneralBOSSAward[7705][1]["ItemNum"] = 10

	-- 通神丹*3
	tKillMonsterDropItem_GeneralBOSSAward[7705][2] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7705][2]["ItemId"] = 3006540
	tKillMonsterDropItem_GeneralBOSSAward[7705][2]["ItemNum"] = 3

	-- 随机普通宝石*5
	tKillMonsterDropItem_GeneralBOSSAward[7705][3] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"][1] = 700001
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"][2] = 700011
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"][3] = 700021
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"][4] = 700031
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"][5] = 700041
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"][6] = 700051
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemId"][7] = 700061
	tKillMonsterDropItem_GeneralBOSSAward[7705][3]["ItemNum"] = 5

	-- 12个流星
	tKillMonsterDropItem_GeneralBOSSAward[7705][4] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7705][4]["ItemId"] = 1088001
	tKillMonsterDropItem_GeneralBOSSAward[7705][4]["ItemNum"] = 12
	tKillMonsterDropItem_GeneralBOSSAward[7705][4]["IsAdditional"] = true
	tKillMonsterDropItem_GeneralBOSSAward[7705][4]["Range"] = 19
	tKillMonsterDropItem_GeneralBOSSAward[7705][4]["Sub"] = 10

	-- 3层BOSS掉落礼包
	tKillMonsterDropItem_GeneralBOSSAward[7705][5] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7705][5]["ItemId"] = 3008814
	tKillMonsterDropItem_GeneralBOSSAward[7705][5]["ItemNum"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7705][5]["DropMode"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7705][5]["Attr"] = {}
	tKillMonsterDropItem_GeneralBOSSAward[7705][5]["Attr"]["addamount"] = 1
	tKillMonsterDropItem_GeneralBOSSAward[7705][5]["Attr"]["save_time"] = 21600
	tKillMonsterDropItem_GeneralBOSSAward[7705][5]["Attr"]["active"] = 1

-- BOSS刷新
local tKillMonsterDropItem_BOSSRefresh = {}
	tKillMonsterDropItem_BOSSRefresh[7703] = {}
	tKillMonsterDropItem_BOSSRefresh[7703]["Minute"] = {00,15,30,45}
	tKillMonsterDropItem_BOSSRefresh[7703]["MapId"] = 3943
	tKillMonsterDropItem_BOSSRefresh[7703]["PosX"] = 171
	tKillMonsterDropItem_BOSSRefresh[7703]["PosY"] = 239
	tKillMonsterDropItem_BOSSRefresh[7703]["GenId"] = 18501
	tKillMonsterDropItem_BOSSRefresh[7703]["Num"] = 1
	tKillMonsterDropItem_BOSSRefresh[7703]["Msg"] = "OneLayerBoss"

	tKillMonsterDropItem_BOSSRefresh[3811] = {}
	tKillMonsterDropItem_BOSSRefresh[3811]["Minute"] = {03,18,33,48}
	tKillMonsterDropItem_BOSSRefresh[3811]["MapId"] = 3943
	tKillMonsterDropItem_BOSSRefresh[3811]["PosX"] = 263
	tKillMonsterDropItem_BOSSRefresh[3811]["PosY"] = 168
	tKillMonsterDropItem_BOSSRefresh[3811]["GenId"] = 18502
	tKillMonsterDropItem_BOSSRefresh[3811]["Num"] = 2
	tKillMonsterDropItem_BOSSRefresh[3811]["Msg"] = "OneLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3812] = {}
	tKillMonsterDropItem_BOSSRefresh[3812]["Minute"] = {06,21,36,51}
	tKillMonsterDropItem_BOSSRefresh[3812]["MapId"] = 3943
	tKillMonsterDropItem_BOSSRefresh[3812]["PosX"] = 275
	tKillMonsterDropItem_BOSSRefresh[3812]["PosY"] = 263
	tKillMonsterDropItem_BOSSRefresh[3812]["GenId"] = 18503
	tKillMonsterDropItem_BOSSRefresh[3812]["Num"] = 3
	tKillMonsterDropItem_BOSSRefresh[3812]["Msg"] = "OneLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3813] = {}
	tKillMonsterDropItem_BOSSRefresh[3813]["Minute"] = {09,24,39,54}
	tKillMonsterDropItem_BOSSRefresh[3813]["MapId"] = 3943
	tKillMonsterDropItem_BOSSRefresh[3813]["PosX"] = 291
	tKillMonsterDropItem_BOSSRefresh[3813]["PosY"] = 374
	tKillMonsterDropItem_BOSSRefresh[3813]["GenId"] = 18504
	tKillMonsterDropItem_BOSSRefresh[3813]["Num"] = 4
	tKillMonsterDropItem_BOSSRefresh[3813]["Msg"] = "OneLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3814] = {}
	tKillMonsterDropItem_BOSSRefresh[3814]["Minute"] = {12,27,42,57}
	tKillMonsterDropItem_BOSSRefresh[3814]["MapId"] = 3943
	tKillMonsterDropItem_BOSSRefresh[3814]["PosX"] = 388
	tKillMonsterDropItem_BOSSRefresh[3814]["PosY"] = 279
	tKillMonsterDropItem_BOSSRefresh[3814]["GenId"] = 18505
	tKillMonsterDropItem_BOSSRefresh[3814]["Num"] = 5
	tKillMonsterDropItem_BOSSRefresh[3814]["Msg"] = "OneLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[7704] = {}
	tKillMonsterDropItem_BOSSRefresh[7704]["Minute"] = {01,16,31,46}
	tKillMonsterDropItem_BOSSRefresh[7704]["MapId"] = 3944
	tKillMonsterDropItem_BOSSRefresh[7704]["PosX"] = 174
	tKillMonsterDropItem_BOSSRefresh[7704]["PosY"] = 338
	tKillMonsterDropItem_BOSSRefresh[7704]["GenId"] = 18506
	tKillMonsterDropItem_BOSSRefresh[7704]["Num"] = 1
	tKillMonsterDropItem_BOSSRefresh[7704]["Msg"] = "TwoLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3815] = {}
	tKillMonsterDropItem_BOSSRefresh[3815]["Minute"] = {04,19,34,49}
	tKillMonsterDropItem_BOSSRefresh[3815]["MapId"] = 3944
	tKillMonsterDropItem_BOSSRefresh[3815]["PosX"] = 277
	tKillMonsterDropItem_BOSSRefresh[3815]["PosY"] = 220
	tKillMonsterDropItem_BOSSRefresh[3815]["GenId"] = 18507
	tKillMonsterDropItem_BOSSRefresh[3815]["Num"] = 2
	tKillMonsterDropItem_BOSSRefresh[3815]["Msg"] = "TwoLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3816] = {}
	tKillMonsterDropItem_BOSSRefresh[3816]["Minute"] = {07,22,37,52}
	tKillMonsterDropItem_BOSSRefresh[3816]["MapId"] = 3944
	tKillMonsterDropItem_BOSSRefresh[3816]["PosX"] = 285
	tKillMonsterDropItem_BOSSRefresh[3816]["PosY"] = 309
	tKillMonsterDropItem_BOSSRefresh[3816]["GenId"] = 18508
	tKillMonsterDropItem_BOSSRefresh[3816]["Num"] = 3
	tKillMonsterDropItem_BOSSRefresh[3816]["Msg"] = "TwoLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3817] = {}
	tKillMonsterDropItem_BOSSRefresh[3817]["Minute"] = {10,25,40,55}
	tKillMonsterDropItem_BOSSRefresh[3817]["MapId"] = 3944
	tKillMonsterDropItem_BOSSRefresh[3817]["PosX"] = 278
	tKillMonsterDropItem_BOSSRefresh[3817]["PosY"] = 404
	tKillMonsterDropItem_BOSSRefresh[3817]["GenId"] = 18509
	tKillMonsterDropItem_BOSSRefresh[3817]["Num"] = 4
	tKillMonsterDropItem_BOSSRefresh[3817]["Msg"] = "TwoLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3818] = {}
	tKillMonsterDropItem_BOSSRefresh[3818]["Minute"] = {13,28,43,58}
	tKillMonsterDropItem_BOSSRefresh[3818]["MapId"] = 3944
	tKillMonsterDropItem_BOSSRefresh[3818]["PosX"] = 384
	tKillMonsterDropItem_BOSSRefresh[3818]["PosY"] = 278
	tKillMonsterDropItem_BOSSRefresh[3818]["GenId"] = 18510
	tKillMonsterDropItem_BOSSRefresh[3818]["Num"] = 5
	tKillMonsterDropItem_BOSSRefresh[3818]["Msg"] = "TwoLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[7705] = {}
	tKillMonsterDropItem_BOSSRefresh[7705]["Minute"] = {02,17,32,47}
	tKillMonsterDropItem_BOSSRefresh[7705]["MapId"] = 3945
	tKillMonsterDropItem_BOSSRefresh[7705]["PosX"] = 286
	tKillMonsterDropItem_BOSSRefresh[7705]["PosY"] = 429
	tKillMonsterDropItem_BOSSRefresh[7705]["GenId"] = 18511
	tKillMonsterDropItem_BOSSRefresh[7705]["Num"] = 1
	tKillMonsterDropItem_BOSSRefresh[7705]["Msg"] = "ThreeLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3819] = {}
	tKillMonsterDropItem_BOSSRefresh[3819]["Minute"] = {05,20,35,50}
	tKillMonsterDropItem_BOSSRefresh[3819]["MapId"] = 3945
	tKillMonsterDropItem_BOSSRefresh[3819]["PosX"] = 146
	tKillMonsterDropItem_BOSSRefresh[3819]["PosY"] = 307
	tKillMonsterDropItem_BOSSRefresh[3819]["GenId"] = 18512
	tKillMonsterDropItem_BOSSRefresh[3819]["Num"] = 2
	tKillMonsterDropItem_BOSSRefresh[3819]["Msg"] = "ThreeLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3820] = {}
	tKillMonsterDropItem_BOSSRefresh[3820]["Minute"] = {08,23,38,53}
	tKillMonsterDropItem_BOSSRefresh[3820]["MapId"] = 3945
	tKillMonsterDropItem_BOSSRefresh[3820]["PosX"] = 252
	tKillMonsterDropItem_BOSSRefresh[3820]["PosY"] = 286
	tKillMonsterDropItem_BOSSRefresh[3820]["GenId"] = 18513
	tKillMonsterDropItem_BOSSRefresh[3820]["Num"] = 3
	tKillMonsterDropItem_BOSSRefresh[3820]["Msg"] = "ThreeLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3821] = {}
	tKillMonsterDropItem_BOSSRefresh[3821]["Minute"] = {11,26,41,56}
	tKillMonsterDropItem_BOSSRefresh[3821]["MapId"] = 3945
	tKillMonsterDropItem_BOSSRefresh[3821]["PosX"] = 319
	tKillMonsterDropItem_BOSSRefresh[3821]["PosY"] = 201
	tKillMonsterDropItem_BOSSRefresh[3821]["GenId"] = 18514
	tKillMonsterDropItem_BOSSRefresh[3821]["Num"] = 4
	tKillMonsterDropItem_BOSSRefresh[3821]["Msg"] = "ThreeLayerBoss"
	
	tKillMonsterDropItem_BOSSRefresh[3822] = {}
	tKillMonsterDropItem_BOSSRefresh[3822]["Minute"] = {14,29,44,59}
	tKillMonsterDropItem_BOSSRefresh[3822]["MapId"] = 3945
	tKillMonsterDropItem_BOSSRefresh[3822]["PosX"] = 172
	tKillMonsterDropItem_BOSSRefresh[3822]["PosY"] = 169
	tKillMonsterDropItem_BOSSRefresh[3822]["GenId"] = 18515
	tKillMonsterDropItem_BOSSRefresh[3822]["Num"] = 5
	tKillMonsterDropItem_BOSSRefresh[3822]["Msg"] = "ThreeLayerBoss"

-- 九幽随机卷的坐标点
local tKillMonsterDropItem_RandomVolume = {}
	tKillMonsterDropItem_RandomVolume[3943] = {{171,239},{263,168},{275,263},{291,374},{388,279},{162,380},{396,182}}
	tKillMonsterDropItem_RandomVolume[3944] = {{174,338},{277,220},{285,309},{278,404},{384,278},{186,159},{346,440}}
	tKillMonsterDropItem_RandomVolume[3945] = {{286,429},{146,307},{252,286},{319,201},{172,169},{396,315}}
	
	
local tKillMonsterDropItem_Asteroids = {}
	-- 明亮星陨石精装包
	tKillMonsterDropItem_Asteroids[3200864] = {}
	tKillMonsterDropItem_Asteroids[3200864][1] = {}
	tKillMonsterDropItem_Asteroids[3200864][1]["RewardItem"] = {}
	tKillMonsterDropItem_Asteroids[3200864][1]["RewardItem"][1] = {}
	tKillMonsterDropItem_Asteroids[3200864][1]["RewardItem"][1]["Id"] = 3009001
	tKillMonsterDropItem_Asteroids[3200864][1]["RewardItem"][1]["Attr"] = "0 3 0 2880 1"
	tKillMonsterDropItem_Asteroids[3200864][1]["DeleteItem"] = {}
	tKillMonsterDropItem_Asteroids[3200864][1]["DeleteItem"][1] = {}
	tKillMonsterDropItem_Asteroids[3200864][1]["DeleteItem"][1]["Id"] = 3200864
	tKillMonsterDropItem_Asteroids[3200864][1]["NoSpace"] = tKillMonsterDropItem_Text[3200864]["NoSpace"]
	tKillMonsterDropItem_Asteroids[3200864][1]["LogId"] = 12000103
	tKillMonsterDropItem_Asteroids[3200864][1]["Emoney"] = 27
	tKillMonsterDropItem_Asteroids[3200864][1]["EmoneyBuy"] = "250	4044	27	27	1	"
	
	tKillMonsterDropItem_Asteroids[3200864][2] = {}
	tKillMonsterDropItem_Asteroids[3200864][2]["RewardItem"] = {}
	tKillMonsterDropItem_Asteroids[3200864][2]["RewardItem"][1] = {}
	tKillMonsterDropItem_Asteroids[3200864][2]["RewardItem"][1]["Id"] = 3009001
	tKillMonsterDropItem_Asteroids[3200864][2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tKillMonsterDropItem_Asteroids[3200864][2]["DeleteItem"] = {}
	tKillMonsterDropItem_Asteroids[3200864][2]["DeleteItem"][1] = {}
	tKillMonsterDropItem_Asteroids[3200864][2]["DeleteItem"][1]["Id"] = 3200864
	tKillMonsterDropItem_Asteroids[3200864][2]["NoSpace"] = tKillMonsterDropItem_Text[3200864]["NoSpace"]
	tKillMonsterDropItem_Asteroids[3200864][2]["LogId"] = 12000103

--------------------------------------逻辑部分-----------------------------------------	
-- 传送进地图
function KillMonsterDropItem_ChgMap(nIndex,nNowUserId)
	-- 判断是否在活动时间内
	-- if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		-- return
	-- end
	local nUserId = nNowUserId or Get_UserId()
	
	if tKillMonsterDropItem_ChgMap[nIndex] ~= nil then
		local nMapId = tKillMonsterDropItem_ChgMap[nIndex]["MapId"]
		local nCellX = tKillMonsterDropItem_ChgMap[nIndex]["CellX"]
		local nCellY = tKillMonsterDropItem_ChgMap[nIndex]["CellY"]
		local nRange = tKillMonsterDropItem_ChgMap[nIndex]["Range"]
		local sIndex = tKillMonsterDropItem_ChgMap[nIndex]["Index"]
	
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,0,nUserId)
		User_TalkChannel2005(tKillMonsterDropItem_Text[sIndex],nUserId)
	end
end

-- 进入九幽地宫一层前判断
function KillMonsterDropItem_JudgeChgMap(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tKillMonsterDropItem_Constant["Level"],tKillMonsterDropItem_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断玩家背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	KillMonsterDropItem_SetTimeLimit(nNpcId)
end

-- 时间自检触发
function KillMonsterDropItem_CheckTime()
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		return
	end
	
	-- 动态存储表清零
	for i,v in pairs (tKillMonsterDropItem_Constant["RestGlobalTime"]) do
		local nGlobalId = tKillMonsterDropItem_Constant["GlobalId"]
		local nData = Get_SysDynaGlobalData0(nGlobalId)
		
		if Sys_ChkDayTime(v) then
			if nData == 0 then
				for index = 1,#tKillMonsterDropItem_Constant["RestGlobal"] do
					Sys_ResetAllSynaGlobalData(tKillMonsterDropItem_Constant["RestGlobal"][index])
				end
				
				-- +6赤炼石礼包掩码清零
				if i == 4 then
					Sys_SetSynaGlobalData3(nGlobalId,0)
				end

				Sys_SetSynaGlobalData2(nGlobalId,0)
				Sys_SetSynaGlobalData4(nGlobalId,0)
				Sys_SetSynaGlobalData5(nGlobalId,0)
				
				-- 动态存储开关设1
				Sys_SetSynaGlobalData0(nGlobalId,1)
			end
		elseif nData == 1 then
			Sys_SetSynaGlobalData0(nGlobalId,0)
		end
	end
end

-- 普通怪物死亡
function KillMonsterDropItem_OrdinaryMonsterDeath(nMonsterId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		return
	end
	
	local nDouble = 1
	local nTime = tKillMonsterDropItem_Monster[nMonsterId][nDouble]["Time"]
	-- 怪物死亡
	Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["MonsterDeath"],nMonsterId))

	for i = 1,nTime do
		-- 获取随机后给的奖励配置
		local nFlat,tAward = Probabil_RandomAward(tKillMonsterDropItem_Monster[nMonsterId],nDouble)
		local nItem = tAward[1]["tAward"][1]["Item_1"]
		
		-- 判断是否有掉落物品
		if nItem > 0 then
			-- 怪物掉落礼包
			if nItem == nMonsterId then
				KillMonsterDropItem_OrdinaryMonsterDrop(nMonsterId)
			-- 怪物掉落金钱
			elseif tAward[1]["tAward"][1]["IsMoney"] == true then
				Monster_SysDropMoney(nItem)
			-- 怪物掉落岫山玉碎片
			elseif tKillMonsterDropItem_Constant["XiuShanYu"] == nItem then
				local nItemEvent = tKillMonsterDropItem_Stc["EventType"]
				local nItemType = tKillMonsterDropItem_Stc["DataType"][9]
				
				-- 判断是否隔天
				if Task_StcInterval(nItemEvent,nItemType,1,4) then
					Task_SetStatistic(nItemEvent,nItemType,1,1)
					Task_SetStcTimestamp(nItemEvent,nItemType,0)
				end
				
				if Task_ChkStcValue(nItemEvent,nItemType,"<",tKillMonsterDropItem_Constant["XiuShanYuNum"]) then
					Task_AddStatistic(nItemEvent,nItemType,1,1)
					Task_SetStcTimestamp(nItemEvent,nItemType,0)
					Monster_SysDropItem(nItem)
					Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["DropXiuShanyu"],nMonsterId,nItem,1))
				end
			else
				Monster_SysDropItem(nItem)
			end
		end
		
		-- 稀有怪的额外掉落
		for nIndex,v in pairs (tAward[1]["tAbsoluteAward"]) do
			if v["IsMoney"] == true then
				Monster_SysDropMoney(v["Item_1"])
			else
				Monster_SysDropItem(v["Item_1"])
			end
		end
	end
	
	if Sys_Random(100,10000) then
		User_TalkChannel2005(tKillMonsterDropItem_Text["NineQuietFamOne"])
	end
	
	-- 打怪任务
	KillMonsterDropItem_DaguaiTask(nMonsterId)
	-- 检测时间是否到了
	KillMonsterDropItem_ChkTime()
end

-- 打怪任务
function KillMonsterDropItem_DaguaiTask(nMonsterId)
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nMonsterType = tKillMonsterDropItem_Stc["DataType"][5]
	
	if Task_StcInterval(nEvent,nMonsterType,1,4) then
		Task_SetStatistic(nEvent,nMonsterType,0,1)
		Task_SetStcTimestamp(nEvent,nMonsterType,0)
	end
	
	if Task_ChkStcValue(nEvent,nMonsterType,"<",tKillMonsterDropItem_Constant["MonsterNum"]) then 
		Task_AddStatistic(nEvent,nMonsterType,1,1)
		
		if Task_ChkStcValue(nEvent,nMonsterType,"==",tKillMonsterDropItem_Constant["MonsterNum"]) then
			User_TalkChannel2005(tKillMonsterDropItem_Text[18537]["MonsterNum"])
		end
	end
end

-- 普通怪物的掉落
function KillMonsterDropItem_OrdinaryMonsterDrop(nMonsterId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		return
	end
	
	local nFlat,tAward = Probabil_RandomAward(tKillMonsterDropItem_RewardItem,nMonsterId)
	
	if tAward[1]["tAward"][1]["IsGlobal"] ~= nil then
		local nIndex = tAward[1]["tAward"][1]["IsGlobal"]
		local nGlobalId = tKillMonsterDropItem_Global[nIndex]["GlobalId"]
		local nGlobalData = tKillMonsterDropItem_Global[nIndex]["GlobalData"]
		local nData = Get_SysDynaGlobalData(nGlobalId,nGlobalData)
		
		if nData < tKillMonsterDropItem_Global[nIndex]["MaxData"] then
			Sys_SetSynaGlobalData(nGlobalId,nGlobalData,nData + 1)
		else
			tAward[1]["tAward"][1]["IsMoney"] = true
		end
	end
	
	local nItemId = tAward[1]["tAward"][1]["Item_1"]
	local nDropType = 1
	local nDropNum = 1
	
	if tAward[1]["tAward"][1]["IsMoney"] == true then
		Monster_SysDropMoney(tKillMonsterDropItem_Constant["Money"])
		nDropNum = tKillMonsterDropItem_Constant["Money"]
	elseif type(nItemId) == "table" then
		local nRandom = math.random(1,#nItemId)
		Monster_SysDropItem(nItemId[nRandom])
		nDropType = nItemId[nRandom]
	elseif tAward[1]["tAward"][1]["DropMode"] == 1 then
		Item_AddNewItem(nItemId,tAward[1]["tAward"][1]["Attr"])
		nDropType = nItemId
	else
		Monster_SysDropItem(nItemId)
		nDropType = nItemId
	end
	
	Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["MonsterDrop"],nMonsterId,nDropType,nDropNum))
	
	-- 全服公告
	if tKillMonsterDropItem_Text[nDropType] ~= nil then
		local sUserName = Get_UserName()

		if tKillMonsterDropItem_Text[nDropType]["Broadcast"] ~= nil then
			Sys_SystemBroadcast(string.format(tKillMonsterDropItem_Text[nDropType]["Broadcast"],sUserName))
			Sys_TalkBroadcast(string.format(tKillMonsterDropItem_Text[nDropType]["Broadcast"],sUserName))
		elseif tKillMonsterDropItem_Text[nDropType]["TalkBroadcast"] ~= nil then
			Sys_TalkBroadcast(string.format(tKillMonsterDropItem_Text[nDropType]["TalkBroadcast"],sUserName))
		end
	end
end

-- BOSS死亡
function KillMonsterDropItem_BossMonsterDeath(nMonsterId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		return
	end
	
	local nDouble = 1
	local sUserName = Get_UserName()
	
	if tKillMonsterDropItem_Text[nMonsterId] ~= nil then
		Sys_SystemBroadcast(string.format(tKillMonsterDropItem_Text[nMonsterId],sUserName))
	end

	-- 额外掉落
	local nFlat,tAward = Probabil_RandomAward(tKillMonsterDropItem_Boss,nMonsterId)
	local isGlobal = tAward[1]["tAward"][1]["IsGlobal"]
	local nAdditGlobalId = tKillMonsterDropItem_Global[isGlobal]["GlobalId"]
	local nAdditGlobalData = tKillMonsterDropItem_Global[isGlobal]["GlobalData"]
	local nAdditData = Get_SysDynaGlobalData(nAdditGlobalId,nAdditGlobalData)
	local nAdditRandom = math.random(1,#tAward[1]["tAward"][1]["Item_1"])
	local nAdditItemId = tAward[1]["tAward"][1]["Item_1"][nAdditRandom]
	
	if nAdditData < tKillMonsterDropItem_Global[isGlobal]["MaxData"] then
		Sys_SetSynaGlobalData(nAdditGlobalId,nAdditGlobalData,nAdditData + 1)
	else
		nAdditItemId = tKillMonsterDropItem_Boss[nMonsterId]["WorstItem"]
	end
	
	Monster_SysDropItem(nAdditItemId)

	-- 全服公告
	if tKillMonsterDropItem_Text[nAdditItemId] ~= nil then
		if tKillMonsterDropItem_Text[nAdditItemId]["Broadcast"] ~= nil then
			Sys_SystemBroadcast(string.format(tKillMonsterDropItem_Text[nAdditItemId]["Broadcast"],sUserName))
			Sys_TalkBroadcast(string.format(tKillMonsterDropItem_Text[nAdditItemId]["Broadcast"],sUserName))
		elseif tKillMonsterDropItem_Text[nAdditItemId]["TalkBroadcast"] ~= nil then
			Sys_TalkBroadcast(string.format(tKillMonsterDropItem_Text[nAdditItemId]["TalkBroadcast"],sUserName))
		end
	end

	Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["MonsterBossDrop"],nMonsterId,nAdditItemId,1))
	
	-- 固定掉落
	for i,v in pairs (tKillMonsterDropItem_RewardItem[nMonsterId][nDouble]) do
		local isAdditional = v["IsAdditional"]
		local nItemId = v["ItemId"]
		local nNum = v["ItemNum"]
		local nDropItemId = nItemId

		if isAdditional == true then
			local nRange = v["Range"]
			local nPosX = Get_UserPositionX() - v["Sub"]
			local nPosY = Get_UserPositionY() - v["Sub"]
			local nMapId = Get_UserMapId()

			Map_DropMultiItems(nMapId,nDropItemId,nPosX,nPosY,nRange,nRange,nNum,tKillMonsterDropItem_Constant["ExistTime"])
		elseif v["IsGlobal"] ~= nil then
			local nIndex = v["IsGlobal"]
			local nGlobalId = tKillMonsterDropItem_Global[nIndex]["GlobalId"]
			local nGlobalData = tKillMonsterDropItem_Global[nIndex]["GlobalData"]
			local nData = Get_SysDynaGlobalData(nGlobalId,nGlobalData)

			for j = 1,nNum do
				if type(nItemId) == "table" then
					local nRandom = math.random(1,#nItemId)
					nDropItemId = v["ItemId"][nRandom]
				end

				if nData < tKillMonsterDropItem_Global[nIndex]["MaxData"] then
					nData = nData + 1
					Monster_SysDropItem(nDropItemId)
				else
					Monster_SysDropMoney(tKillMonsterDropItem_Constant["Money"])
				end
			end

			Sys_SetSynaGlobalData(nGlobalId,nGlobalData,nData)
		else
			for j = 1,nNum do
				if type(nItemId) == "table" then
					local nRandom = math.random(1,#nItemId)
					nDropItemId = v["ItemId"][nRandom]
				end
				
				Monster_SysDropItem(nDropItemId)
			end
		end

		-- 全服公告
		if tKillMonsterDropItem_Text[nDropItemId] ~= nil then
			if tKillMonsterDropItem_Text[nDropItemId]["Broadcast"] ~= nil then
				Sys_SystemBroadcast(string.format(tKillMonsterDropItem_Text[nDropItemId]["Broadcast"],sUserName))
				Sys_TalkBroadcast(string.format(tKillMonsterDropItem_Text[nDropItemId]["Broadcast"],sUserName))
			elseif tKillMonsterDropItem_Text[nDropItemId]["TalkBroadcast"] ~= nil then
				Sys_TalkBroadcast(string.format(tKillMonsterDropItem_Text[nDropItemId]["TalkBroadcast"],sUserName))
			end
		end
		
		Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["MonsterBossDrop"],nMonsterId,nDropItemId,nNum))
	end
	
	KillMonsterDropItem_ChkTime()
end

-- 经验礼包使用
function KillMonsterDropItem_UseExpPacks(nItemId)
	local nEvent = tKillMonsterDropItem_Item[nItemId]["EventType"]
	local nType = tKillMonsterDropItem_Item[nItemId]["DataType"]
	
	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	-- 判断今天是否已经开过10次
	elseif Task_ChkStcValue(nEvent,nType,">=",tKillMonsterDropItem_Item[nItemId]["MaxData"]) then
		Sys_MsgBox(tKillMonsterDropItem_Text[nItemId]["Max"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 判断玩家等级
		local nLev = Get_UserLevel()
		local sLog = ""
		local sContent
		
		-- 设掩码值
		Task_AddStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		if nLev < tKillMonsterDropItem_Constant["MaxLev"] then
			User_AddExpTime(tKillMonsterDropItem_Item[nItemId]["Exp"])
			sLog = tKillMonsterDropItem_Item[nItemId]["ExpLog"]
			sContent = tKillMonsterDropItem_Text[nItemId]["Exp"]
		else
			User_AddCultivation(tKillMonsterDropItem_Item[nItemId]["Cultivation"])
			sLog = tKillMonsterDropItem_Item[nItemId]["CultivationLog"]
			sContent = tKillMonsterDropItem_Text[nItemId]["Cultivation"]
		end
		
		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2007(sContent)
	end
end

-- 物品使用
function KillMonsterDropItem_UseItem(nItemId)
	-- 使用物品前判断
	if tKillMonsterDropItem_Item[nItemId]["ZhenQi"] ~= nil or tKillMonsterDropItem_Item[nItemId]["PractNum"] ~= nil then
		-- 判断是否已经创建过功夫
		if not User_IsAlreadyCreateGongFu(0) then
			User_TalkChannel2007(tKillMonsterDropItem_Text[nItemId]["NoCreateGongFu"])
			return
		end
		
		local nMaxNum = 0
		local nNowNum = 0
		
		-- 判断真气值
		if tKillMonsterDropItem_Item[nItemId]["ZhenQi"] ~= nil then
			local nQenuineqi = Get_UserGongFuQiLev()
			nNowNum = nQenuineqi + tKillMonsterDropItem_Item[nItemId]["ZhenQi"]
			nMaxNum = tKillMonsterDropItem_Constant["MaxQenuineqi"]
		end
		
		-- 判断免费修炼次数
		if tKillMonsterDropItem_Item[nItemId]["PractNum"] ~= nil then
			local nPractNum = Get_UserGongFureePractNum()
			nNowNum = nPractNum + tKillMonsterDropItem_Item[nItemId]["PractNum"]
			nMaxNum = tKillMonsterDropItem_Constant["MaxPractNum"]
		end
		
		if nNowNum > nMaxNum then
			User_TalkChannel2007(tKillMonsterDropItem_Text[nItemId]["Full"])
			return
		end
	end
	
	-- 判断背包空间
	if tKillMonsterDropItem_Item[nItemId]["Space"] ~= nil then
		local nSpace = tKillMonsterDropItem_Item[nItemId]["Space"]
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2007(tKillMonsterDropItem_Text["NoSpace"])
			return
		end
	end
	
	local nChkItemNum = tKillMonsterDropItem_Item[nItemId]["ChkItemNum"] or 1
	
	-- 判断是否有足够的该物品
	if not Item_ChkMulItem(nItemId,nItemId,nChkItemNum) then
		User_TalkChannel2007(tKillMonsterDropItem_Text[nItemId]["NoItem"])
		return
	end
	
	-- 删除物品
	if Item_DelMulItem(nItemId,nItemId,nChkItemNum) then
		local sLog = tKillMonsterDropItem_Item[nItemId]["Log"]
		local sContent = tKillMonsterDropItem_Text[nItemId]["UseItem"]
		
		-- 给修行值
		if tKillMonsterDropItem_Item[nItemId]["Cultivation"] then
			User_AddCultivation(tKillMonsterDropItem_Item[nItemId]["Cultivation"])
		end
		
		-- 给气力值
		if tKillMonsterDropItem_Item[nItemId]["StrengthValue"] then
			User_AddStrengthValue(tKillMonsterDropItem_Item[nItemId]["StrengthValue"])
		end
		
		-- 给真气值
		if tKillMonsterDropItem_Item[nItemId]["ZhenQi"] ~= nil then
			User_AddGongFuQiLeve(tKillMonsterDropItem_Item[nItemId]["ZhenQi"])
		end
		
		-- 给免费修炼次数
		if tKillMonsterDropItem_Item[nItemId]["PractNum"] ~= nil then
			User_AddGongFuFreePractNum(tKillMonsterDropItem_Item[nItemId]["PractNum"])
		end
		
		local nGetItemId = tKillMonsterDropItem_Item[nItemId]["ItemId"]
		
		-- 随机宝石
		if nGetItemId ~= nil and type(nGetItemId) == "table" then
			local nRandom = math.random(1,#nGetItemId)
			nGetItemId = tKillMonsterDropItem_Item[nItemId]["ItemId"][nRandom]
			sLog = string.format(tKillMonsterDropItem_Item[nItemId]["Log"],nGetItemId)

			local nItemName = Get_ItemtypeName(nGetItemId)
			sContent = string.format(tKillMonsterDropItem_Text[nItemId]["UseItem"],nItemName)
		end
		
		-- 获得物品
		if nGetItemId ~= nil then
			Item_AddNewItem(nGetItemId,tKillMonsterDropItem_Item[nItemId]["ItemAttr"]) 
		end

		-- 打log
		Sys_SaveActionFestivalLog(sLog)
		-- 给提示
		User_TalkChannel2007(sContent)
	end
end

-- 礼包兑换积分
function KillMonsterDropItem_PackageExchangeScore(nNpcId,nItemId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ExchangeTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	-- 判断是否有该礼包
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nData = tKillMonsterDropItem_Stc["DataType"][4]
	
	Task_SetStatistic(nEvent,nData,nItemId,1)
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 确认兑换积分
function KillMonsterDropItem_EnSureExchangeScore(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ExchangeTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][4]
	local nItemId = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断是否有该礼包
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 删除物品
	if Item_DelItem(nItemId) then
		local nScore = tKillMonsterDropItem_ExchangeScore[nItemId]["Score"]
		local nScoreType = tKillMonsterDropItem_Stc["DataType"][2]
		
		-- 设掩码值
		Task_AddStatistic(nEvent,nScoreType,nScore,1)
		Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["ScoreLog"],nItemId))
		LinkNpcGossipFunc_New(nNpcId,"2-5")
	end
end

-- 继续兑换气力值
function KillMonsterDropItem_ContinueToExchange(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ExchangeTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][2]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断积分值
	if nData >= tKillMonsterDropItem_Constant["Score"] then
		KillMonsterDropItem_ScoreExchangeStrengthValue(nNpcId,0)
	end
end

-- 积分兑换气力值
function KillMonsterDropItem_ScoreExchangeStrengthValue(nNpcId,nEnSure)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ExchangeTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][2]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	-- 判断积分值
	if nData < tKillMonsterDropItem_Constant["Score"] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local nTimeType = tKillMonsterDropItem_Stc["DataType"][3]
	
	-- 判断今天兑换次数
	-- if Task_ChkStcValue(nEvent,nTimeType,">=",tKillMonsterDropItem_Constant["MaxTime"]) then
		-- 判断是否隔天
		-- if Task_StcInterval(nEvent,nTimeType,1,4) then
			-- Task_SetStatistic(nEvent,nTimeType,0,1)
			-- Task_SetStcTimestamp(nEvent,nTimeType,0)
		-- else
			-- LinkNpcGossipFunc_New(nNpcId,"3-2")
			-- return
		-- end
	-- end
	
	if nEnSure == 0 then
		-- 二次确认对白
		LinkNpcGossipFunc_New(nNpcId,"3-3")
	else
		-- 兑换气力值
		Task_AddStatistic(nEvent,nType,-tKillMonsterDropItem_Constant["Score"],1)
		Task_AddStatistic(nEvent,nTimeType,1,1)
		Task_SetStcTimestamp(nEvent,nTimeType,0)
		
		-- 给气力值
		User_AddStrengthValue(tKillMonsterDropItem_Constant["StrengthValue"])
		
		Sys_SaveActionFestivalLog(tKillMonsterDropItem_Constant["StrengthLog"])
		LinkNpcGossipFunc_New(nNpcId,"3-4")
	end
end

-- 打开宝箱
function KillMonsterDropItem_OpenTheChest(nNpcId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nMonsterType = tKillMonsterDropItem_Stc["DataType"][5]
	local nRewardType = tKillMonsterDropItem_Stc["DataType"][6]
	
	-- 判断今天是否领取过奖励
	if Task_ChkStcValue(nEvent,nRewardType,">=",tKillMonsterDropItem_Constant["RewardNum"]) then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nRewardType,1,4) then
			Task_SetStatistic(nEvent,nRewardType,0,1)
			Task_SetStcTimestamp(nEvent,nRewardType,0)
		else
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	-- 判断杀怪掩码是否隔天
	if Task_StcInterval(nEvent,nMonsterType,1,4) then
		Task_SetStatistic(nEvent,nMonsterType,0,1)
		Task_SetStcTimestamp(nEvent,nMonsterType,0)

		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断杀怪数量
	if not Task_ChkStcValue(nEvent,nMonsterType,">=",tKillMonsterDropItem_Constant["MonsterNum"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 设置掩码
	Task_SetStatistic(nEvent,nRewardType,tKillMonsterDropItem_Constant["RewardNum"],1)
	Task_SetStcTimestamp(nEvent,nRewardType,0)
	
	-- 额外给一个明亮星陨石
	Item_AddNewItem(tKillMonsterDropItem_Constant["Extra"]["Id"],"0 1 0 2880 1")
	User_TalkChannel2005(tKillMonsterDropItem_Text["HaveItem"])
	Sys_SaveActionFestivalLog(tKillMonsterDropItem_Constant["Extra"]["Log"])
	
	-- 给奖励
	local nFlat,tAward = Probabil_RandomAward(tKillMonsterDropItem_TaskReward,1)
	local nItem = tAward[1]["tAward"][1]["Item_1"]
	
	-- 判断是否是给气力值
	if tAward[1]["tAward"][1]["IsStrength"] == true then
		User_AddStrengthValue(nItem)
	-- 判断是否是给赠品天石
	elseif tAward[1]["tAward"][1]["IsEmoney"] == true then
		User_AddEMoneyMono(nItem)
	-- 判断是否是给修行值
	elseif tAward[1]["tAward"][1]["IsCultivation"] == true then
		User_AddCultivation(nItem)
	else
		Item_AddNewItem(nItem,tAward[1]["tAward"][1]["ItemAttr"])
	end
	
	User_EffectAdd("self","angelwing")
	
	-- 打log
	Sys_SaveActionFestivalLog(tAward[1]["tAward"][1]["Log"])
	
	-- 九幽寻宝-打开九幽宝箱
	Sys_SaveEmoneyBuy(tKillMonsterDropItem_Constant["Extra"]["EMoneyBuy"])
	
	-- 给提示
	local nIndex = tAward[1]["tAward"][1]["Index"]
	User_TalkChannel2005(tKillMonsterDropItem_Text[nNpcId][nIndex])
end

-- 使用藏宝图
function KillMonsterDropItem_UseTreasureMap(nItemId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId]["BeOverdue"])
		end
		
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local sContent = ""
		local sLog = ""
		
		User_AddCultivation(tKillMonsterDropItem_Item[nItemId]["Cultivation"])
		sContent = tKillMonsterDropItem_Text[nItemId]["RewardCultivation"]
		sLog = tKillMonsterDropItem_Item[nItemId]["CultivationLog"]

		Sys_SaveActionFestivalLog(sLog)
		User_TalkChannel2005(sContent)
		
		local nMapId = tKillMonsterDropItem_Item[nItemId]["MapId"]
		local nPosX = tKillMonsterDropItem_Item[nItemId]["CellX"]
		local nPosY = tKillMonsterDropItem_Item[nItemId]["CellY"]
		local nGotoNpcId = tKillMonsterDropItem_Item[nItemId]["NpcId"]
	
		Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nGotoNpcId)
	end
end

-- 使用神魂礼包
function KillMonsterDropItem_UseSpiritGift(nItemId,nIndex)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 获得神魂
		local nAddItemId = tKillMonsterDropItem_SpiritGift[nItemId][nIndex]["ItemId"]
		Item_AddNewItem(nAddItemId,tKillMonsterDropItem_SpiritGift[nItemId][nIndex]["ItemAttr"])
		
		Sys_SaveActionFestivalLog(tKillMonsterDropItem_SpiritGift[nItemId][nIndex]["Log"])
		
		User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId][nAddItemId])
	end
end

-- 九幽神魂礼包洗赠卷
function KillMonsterDropItem_WashDonatedVolume(nItemId,nIndex)
	local nExchangeItem = tKillMonsterDropItem_Constant[nItemId][nIndex]["ExchangeItem"]
	
	if not Item_ChkItem(nExchangeItem) then
		User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId][nExchangeItem])
		return
	end
	
	if not Item_ChkItem(nItemId) then
		User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId]["NoItem"])
		return
	end
	
	if Item_DelItem(nItemId) and Item_DelItem(nExchangeItem) then
		local nGetItemId = tKillMonsterDropItem_Constant[nItemId][nIndex]["GetItem"]
		Item_AddItem(nGetItemId)
		Sys_SaveActionFestivalLog(tKillMonsterDropItem_Constant[nItemId][nIndex]["Log"])
		
		User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId][nGetItemId])
		return
	end
end

-- 每人每天限制入场半小时，随后自动传送离场
function KillMonsterDropItem_SetTimeLimit(nNpcId)
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][7]

	-- 判断是否隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	-- 判断今天是否已经进入过
	elseif not Task_ChkStcValue(nEvent,nType,">=",1) then
		-- 设置掩码值
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	-- 判断今天是否已进去过半个小时
	elseif Task_StcInterval(nEvent,nType,tKillMonsterDropItem_Constant["TimeDelay"],0) then
		-- 提示今天已进去过
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end

	-- 设计时器
	local nTimeDelay = tKillMonsterDropItem_Constant["TimeDelay"]
	local nTimeType = tKillMonsterDropItem_Constant["TimeType"]
	local nStcTime = Get_UserStcTimestampValue(nEvent,nType)
	local nNow = os.time()
	nTimeDelay = nTimeDelay - (nNow - nStcTime)
	
	if nTimeDelay <= 0 then
		return
	end
	
	local sFunc = "KillMonsterDropItem_FromMap"
	User_SetTimer(nTimeDelay,sFunc,nTimeType)
	-- 传送地图
	KillMonsterDropItem_ChgMap(nNpcId)
end

-- 传出地图
function KillMonsterDropItem_FromMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	for i,v in pairs (tKillMonsterDropItem_Constant["MapId"]) do
		if nMapId == v then
			Sys_MsgBox(tKillMonsterDropItem_Text["FromMap"])
			KillMonsterDropItem_ChgMap("FromMap",nUserId)
			break
		end
	end
end

-- 怪物死亡的时候判断是否超过30分钟
function KillMonsterDropItem_ChkTime()
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][7]
	local nUserId = Get_UserId()
	
	if Task_StcInterval(nEvent,nType,tKillMonsterDropItem_Constant["TimeDelay"],0) then
		Sys_MsgBox(tKillMonsterDropItem_Text["FromMap"])
		KillMonsterDropItem_ChgMap("FromMap",nUserId)
	end
end

-- 活动公告进入
function KillMonsterDropItem_Notice()
	-- 判断是否是死亡状态
	local nUserLife = Get_UserLife()
	if nUserLife < 1 then
		return
	end
	
	local nUserMapId = Get_UserMapId()
	local bInCity = false
	
	--金币服不可参加
	local nData = Get_SysDynaGlobalData(G_Gold_DynaGlobal,0)
	if nData >= 1 then
		User_TalkChannel2005(tKillMonsterDropItem_Text["GoldNoFromMap"])
		return
	end
	
	-- 判断是否在各个主城
	for i,v in pairs (tKillMonsterDropItem_NoticeMap) do
		if v == nUserMapId then
			bInCity = true
			break
		end
	end
	
	if bInCity == true then
		KillMonsterDropItem_ChgMap(93006010)
	else
		User_TalkChannel2005(tKillMonsterDropItem_Text["NoFromMap"])
	end
end

-- 九幽随机卷
function KillMonsterDropItem_RandomVolume(nItemId)
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][8]
	local nUserMapId = Get_UserMapId()
	local bInMap = false
	
	for i,v in pairs (tKillMonsterDropItem_Constant["MapId"]) do
		if nUserMapId == v then
			bInMap = true
			break
		end
	end
	
	if bInMap ~= true then
		User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId])
		return
	end
	
	-- 判断使用间隔是否超过2秒
	if not Task_StcInterval(nEvent,nType,2,0) then
		User_TalkChannel2005(tKillMonsterDropItem_Text["TimeShort"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nEvent,nType,1,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["ScoreLog"],nItemId))
		local nRandom = math.random(1,#tKillMonsterDropItem_RandomVolume[nUserMapId])
		local nPosX = tKillMonsterDropItem_RandomVolume[nUserMapId][nRandom][1]
		local nPosY = tKillMonsterDropItem_RandomVolume[nUserMapId][nRandom][2]
		User_UserRandBoundTrans(nUserMapId,nPosX,nPosY,1,1)
		-- User_UserRandTrans(nUserMapId)
	end
end

-- BOSS刷新
function KillMonsterDropItem_BOSSRefresh(nHour,nMinute,ndate,nweek)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		return
	end
	
	local nMonsterId = 0

	-- 判断是哪个BOSS刷新
	for i,v in pairs (tKillMonsterDropItem_BOSSRefresh) do
		for j = 1,#v["Minute"] do
			if nMinute == v["Minute"][j] then
				nMonsterId = i
				break
			end
		end
		
		if nMonsterId > 0 then
			break
		end
	end
	
	if nMonsterId <= 0 then
		return
	end
	
	-- 获取怪物数量
	local nMapId = tKillMonsterDropItem_BOSSRefresh[nMonsterId]["MapId"]
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	if nMonsterNum > 0 then
		return
	end
	
	local nPosX = tKillMonsterDropItem_BOSSRefresh[nMonsterId]["PosX"]
	local nPosY = tKillMonsterDropItem_BOSSRefresh[nMonsterId]["PosY"]
	local nGenId = tKillMonsterDropItem_BOSSRefresh[nMonsterId]["GenId"]
	
	Monster_AddMonster(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum + 1)
	
	-- 给提示
	local sContent = tKillMonsterDropItem_Text[tKillMonsterDropItem_BOSSRefresh[nMonsterId]["Msg"]]
	sContent = string.format(sContent,tKillMonsterDropItem_BOSSRefresh[nMonsterId]["Num"],nPosX,nPosY)
	Sys_TalkBroadcast(sContent)
end

-- 打开赤炼石礼包
function KillMonsterDropItem_AgingPack(nItemId,sItemName)
	local nSpace = tKillMonsterDropItem_AgingPack[nItemId]["Space"]
	if nSpace ~= nil and (not User_CheckLeftSpace(nSpace)) then
		User_TalkChannel2005(tKillMonsterDropItem_Text["NoBgSpace"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nFlag,tAward = Probabil_RandomAward(tKillMonsterDropItem_AgingPack,nItemId)
		local nAddItemId = tAward[1]["tAward"][1]["Item_1"]
		local sItemAttr = tAward[1]["tAward"][1]["Attr"]
		local sAddItemName = tKillMonsterDropItem_Text[nAddItemId]
		local sUserName = Get_UserName()
		
		Item_AddNewItem(nAddItemId,sItemAttr)
		User_EffectAdd("self","angelwing")
		-- 打log
		Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_AgingPack[nItemId]["Log"],nAddItemId))
		-- 给提示
		User_TalkChannel2005(string.format(tKillMonsterDropItem_Text["UseItem"],sItemAttr.addamount,sAddItemName))
		
		-- 是否要全服公告
		if tAward[1]["tAward"][1]["Broadcast"] ~= nil then
			Sys_SystemBroadcast(string.format(tKillMonsterDropItem_Text["BroadCast"],sUserName,sItemName,sAddItemName))
		end
	end
end

-- 新的BOSS死亡
function KillMonsterDropItem_BossDeath(nMonsterId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"]) then
		return
	end
	
	local sUserName = Get_UserName()
	local nMapId = Get_UserMapId()
	local nMonsterNum = Get_SysTempData(1,nMapId,nMonsterId)
	if nMonsterNum >= 1 then
		Sys_SetTempData(1,nMapId,nMonsterId,nMonsterNum - 1)
	end
	for i,v in pairs (tKillMonsterDropItem_GeneralBOSSAward[nMonsterId]) do
		local isAdditional = v["IsAdditional"]
		local nItemId = v["ItemId"]
		local nNum = v["ItemNum"]
		local nDropItemId = nItemId
		
		-- 掉落流星
		if isAdditional == true then
			local nRange = v["Range"]
			local nPosX = Get_UserPositionX() - v["Sub"]
			local nPosY = Get_UserPositionY() - v["Sub"]
			
			Map_DropMultiItems(nMapId,nDropItemId,nPosX,nPosY,nRange,nRange,nNum,tKillMonsterDropItem_Constant["ExistTime"])
		else
			for j = 1,nNum do
				if type(nItemId) == "table" then
					local nRandom = math.random(1,#nItemId)
					nDropItemId = v["ItemId"][nRandom]
				end
				
				-- 判断是直接强赛背包还是掉落地上
				if v["DropMode"] == 1 then
					Item_AddNewItem(nDropItemId,v["Attr"])
				else
					Monster_SysDropItem(nDropItemId)
				end
			end
		end
		
		-- 全服公告
		
		Sys_SaveActionFestivalLog(string.format(tKillMonsterDropItem_Constant["MonsterBossDrop"],nMonsterId,nDropItemId,nNum))
	end
	
	KillMonsterDropItem_ChkTime()
end

-- 明亮星陨石精装包
function KillMonsterDropItem_Asteroids(nItemId,nType)
	-- 判断背包空间
	if not RewardTemplate_CheckSpace(tKillMonsterDropItem_Asteroids[nItemId][nType]) then
		return
	end
	
	if nType == 1 then
		local nUserEmoney = Get_UserEMoney()
		
		if nUserEmoney < tKillMonsterDropItem_Asteroids[nItemId][nType]["Emoney"] then
			User_TalkChannel2005(tKillMonsterDropItem_Text[3200864]["NoEmoeny"])
			return
		end
		
		if not User_AddEMoney(-tKillMonsterDropItem_Asteroids[nItemId][nType]["Emoney"]) then
			return
		end
		
		Sys_SaveEmoneyBuy(tKillMonsterDropItem_Asteroids[nItemId][nType]["EmoneyBuy"])
	end
	
	-- 给奖励
	RewardTemplate_UseItemAndMsg(tKillMonsterDropItem_Asteroids[nItemId][nType])
end

--------------------------------------NPC模块-------------------------------------------
-- 地宫守卫者
tNpcFace[3662] = 105
tNpcGossip[18515] = tNpcGossip[18515] or DefaultNpc:new{}
tNpcGossip[18515]["OptionHidden"] = 1

tNpcGossip[18515]["Text1-1"] = {111,112}
tNpcGossip[18515]["Text111"] = tKillMonsterDropItem_Text[18515]["111"]
tNpcGossip[18515]["Text112"] = tKillMonsterDropItem_Text[18515]["112"]
tNpcGossip[18515]["tOption1-1"] = {1,3,4}
tNpcGossip[18515]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"])
end

tNpcGossip[18515]["Text1-2"] = {121}
tNpcGossip[18515]["Text121"] = tKillMonsterDropItem_Text[18515]["121"]
tNpcGossip[18515]["tOption1-2"] = {5}

-- 前往九幽地宫失败、等级不足
tNpcGossip[18515]["Text2-1"] = {211}
tNpcGossip[18515]["Text211"] = tKillMonsterDropItem_Text[18515]["211"]
tNpcGossip[18515]["tOption2-1"] = {6,9}

-- 前往九幽地宫失败、背包满
tNpcGossip[18515]["Text2-2"] = {221}
tNpcGossip[18515]["Text221"] = tKillMonsterDropItem_Text[18515]["221"]
tNpcGossip[18515]["tOption2-2"] = {7}

-- 前往九幽地宫失败,今天已进去过
tNpcGossip[18515]["Text2-3"] = {231}
tNpcGossip[18515]["Text231"] = tKillMonsterDropItem_Text[18515]["231"]
tNpcGossip[18515]["tOption2-3"] = {10}

-- 前往九幽地宫失败、等级不足
tNpcGossip[18515]["Text3-1"] = {311,312,313}
tNpcGossip[18515]["Text311"] = tKillMonsterDropItem_Text[18515]["311"]
tNpcGossip[18515]["Text312"] = tKillMonsterDropItem_Text[18515]["312"]
tNpcGossip[18515]["Text313"] = tKillMonsterDropItem_Text[18515]["313"]
tNpcGossip[18515]["tOption3-1"] = {8}

tNpcGossip[18515]["Option1"] = tKillMonsterDropItem_Text[18515]["Option1"]
tNpcGossip[18515]["OptionFunc1"]="KillMonsterDropItem_JudgeChgMap</N>18515"
tNpcGossip[18515]["Option3"] = tKillMonsterDropItem_Text[18515]["Option3"]
tNpcGossip[18515]["OptionPoint3"]="3"
tNpcGossip[18515]["Option4"] = tKillMonsterDropItem_Text[18515]["Option4"]
tNpcGossip[18515]["Option5"] = tKillMonsterDropItem_Text[18515]["Option5"]
tNpcGossip[18515]["Option6"] = tKillMonsterDropItem_Text[18515]["Option6"]
tNpcGossip[18515]["OptionFunc6"]="KillMonsterDropItem_SetTimeLimit</N>18515"
tNpcGossip[18515]["Option7"] = tKillMonsterDropItem_Text[18515]["Option7"]
tNpcGossip[18515]["Option8"] = tKillMonsterDropItem_Text[18515]["Option8"]
tNpcGossip[18515]["Option9"] = tKillMonsterDropItem_Text[18515]["Option9"]

-- 地宫宝物回收商
tNpcFace[3677] = 51
tNpcGossip[18536] = tNpcGossip[18536] or DefaultNpc:new{}
tNpcGossip[18536]["OptionHidden"] = 1

-- 活动中对白
tNpcGossip[18536]["Text1-1"] = {111,112,113}
tNpcGossip[18536]["Text111"] = tKillMonsterDropItem_Text[18536]["111"]
tNpcGossip[18536]["Text112"] = tKillMonsterDropItem_Text[18536]["112"]
tNpcGossip[18536]["Text113"] = tKillMonsterDropItem_Text[18536]["113"]
tNpcGossip[18536]["tOption1-1"] = {1,2,3}
tNpcGossip[18536]["ChkFunc1-1"] = function ()
	if Sys_ChkFullTime(tKillMonsterDropItem_Constant["ExchangeTime"]) then
		local nEvent = tKillMonsterDropItem_Stc["EventType"]
		local nType = tKillMonsterDropItem_Stc["DataType"][2]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		tNpcGossip[18536]["Text113"] = string.format(tKillMonsterDropItem_Text[18536]["113"],nData)
		return true
	else
		return false
	end
end

-- 活动后对白
tNpcGossip[18536]["Text1-2"] = {121}
tNpcGossip[18536]["Text121"] = tKillMonsterDropItem_Text[18536]["121"]
tNpcGossip[18536]["tOption1-2"] = {4}

-- 礼包兑换积分
tNpcGossip[18536]["Text2-1"] = {211,212}
tNpcGossip[18536]["Text211"] = tKillMonsterDropItem_Text[18536]["211"]
tNpcGossip[18536]["Text212"] = tKillMonsterDropItem_Text[18536]["212"]
tNpcGossip[18536]["tOption2-1"] = {13,14,15,16,5,6,11,12}

tNpcGossip[18536]["Text2-2"] = {221,222}
tNpcGossip[18536]["Text221"] = tKillMonsterDropItem_Text[18536]["211"]
tNpcGossip[18536]["Text222"] = tKillMonsterDropItem_Text[18536]["212"]
tNpcGossip[18536]["tOption2-2"] = {7,8,9,10,28,17,18}

-- 玩家身上无该礼包
tNpcGossip[18536]["Text2-3"] = {231}
tNpcGossip[18536]["Text231"] = tKillMonsterDropItem_Text[18536]["231"]
tNpcGossip[18536]["tOption2-3"] = {19}

-- 二次确认
tNpcGossip[18536]["Text2-4"] = {241}
tNpcGossip[18536]["Text241"] = tKillMonsterDropItem_Text[18536]["241"]
tNpcGossip[18536]["ChkFunc2-4"] = function ()
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][4]
	local nItemId = Get_UserStatisticValue(nEvent,nType)
	local nScore = tKillMonsterDropItem_ExchangeScore[nItemId]["Score"]
	local sItemName = Get_ItemtypeName(nItemId)
	
	tNpcGossip[18536]["Text241"] = string.format(tKillMonsterDropItem_Text[18536]["241"],sItemName,nScore)
	return true
end
tNpcGossip[18536]["tOption2-4"] = {20,21}

-- 成功
tNpcGossip[18536]["Text2-5"] = {251}
tNpcGossip[18536]["Text251"] = tKillMonsterDropItem_Text[18536]["251"]
tNpcGossip[18536]["ChkFunc2-5"] = function ()
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][4]
	local nItemId = Get_UserStatisticValue(nEvent,nType)
	local nScore = tKillMonsterDropItem_ExchangeScore[nItemId]["Score"]

	tNpcGossip[18536]["Text251"] = string.format(tKillMonsterDropItem_Text[18536]["251"],nScore)
	return true
end
tNpcGossip[18536]["tOption2-5"] = {22}

-- 玩家选2、失败、积分不足
tNpcGossip[18536]["Text3-1"] = {311}
tNpcGossip[18536]["Text311"] = tKillMonsterDropItem_Text[18536]["311"]
tNpcGossip[18536]["tOption3-1"] = {23}

tNpcGossip[18536]["Text3-2"] = {321}
tNpcGossip[18536]["Text321"] = tKillMonsterDropItem_Text[18536]["321"]
tNpcGossip[18536]["tOption3-2"] = {24}

tNpcGossip[18536]["Text3-3"] = {331}
tNpcGossip[18536]["Text331"] = tKillMonsterDropItem_Text[18536]["331"]
tNpcGossip[18536]["ChkFunc3-3"] = function ()
	local nEvent = tKillMonsterDropItem_Stc["EventType"]
	local nType = tKillMonsterDropItem_Stc["DataType"][2]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	tNpcGossip[18536]["Text331"] = string.format(tKillMonsterDropItem_Text[18536]["331"],nData)
	return true
end
tNpcGossip[18536]["tOption3-3"] = {25,26}

tNpcGossip[18536]["Text3-4"] = {341}
tNpcGossip[18536]["Text341"] = tKillMonsterDropItem_Text[18536]["341"]
tNpcGossip[18536]["tOption3-4"] = {27}

tNpcGossip[18536]["Option1"] = tKillMonsterDropItem_Text[18536]["Option1"]
tNpcGossip[18536]["OptionPoint1"]="2"
tNpcGossip[18536]["Option2"] = tKillMonsterDropItem_Text[18536]["Option2"]
tNpcGossip[18536]["OptionFunc2"]="KillMonsterDropItem_ScoreExchangeStrengthValue</N>18536</N>0"
tNpcGossip[18536]["Option3"] = tKillMonsterDropItem_Text[18536]["Option3"]
tNpcGossip[18536]["Option4"] = tKillMonsterDropItem_Text[18536]["Option4"]
tNpcGossip[18536]["Option5"] = tKillMonsterDropItem_Text[18536]["Option5"]
tNpcGossip[18536]["OptionFunc5"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3006544"
tNpcGossip[18536]["Option6"] = tKillMonsterDropItem_Text[18536]["Option6"]
tNpcGossip[18536]["OptionFunc6"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3006545"
tNpcGossip[18536]["Option7"] = tKillMonsterDropItem_Text[18536]["Option7"]
tNpcGossip[18536]["OptionFunc7"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3006546"
tNpcGossip[18536]["Option8"] = tKillMonsterDropItem_Text[18536]["Option8"]
tNpcGossip[18536]["OptionFunc8"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3006547"
tNpcGossip[18536]["Option9"] = tKillMonsterDropItem_Text[18536]["Option9"]
tNpcGossip[18536]["OptionFunc9"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3006548"
tNpcGossip[18536]["Option10"] = tKillMonsterDropItem_Text[18536]["Option10"]
tNpcGossip[18536]["OptionFunc10"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3006549"
tNpcGossip[18536]["Option11"] = tKillMonsterDropItem_Text[18536]["Option11"]
tNpcGossip[18536]["OptionPoint11"]="2-2"
tNpcGossip[18536]["Option12"] = tKillMonsterDropItem_Text[18536]["Option12"]
tNpcGossip[18536]["OptionPoint12"]="1"
tNpcGossip[18536]["Option13"] = tKillMonsterDropItem_Text[18536]["Option13"]
tNpcGossip[18536]["OptionFunc13"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3008815"
tNpcGossip[18536]["Option14"] = tKillMonsterDropItem_Text[18536]["Option14"]
tNpcGossip[18536]["OptionFunc14"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3008812"
tNpcGossip[18536]["Option15"] = tKillMonsterDropItem_Text[18536]["Option15"]
tNpcGossip[18536]["OptionFunc15"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3008813"
tNpcGossip[18536]["Option16"] = tKillMonsterDropItem_Text[18536]["Option16"]
tNpcGossip[18536]["OptionFunc16"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3008814"
tNpcGossip[18536]["Option28"] = tKillMonsterDropItem_Text[18536]["Option28"]
tNpcGossip[18536]["OptionFunc28"]="KillMonsterDropItem_PackageExchangeScore</N>18536</N>3006550"
tNpcGossip[18536]["Option17"] = tKillMonsterDropItem_Text[18536]["Option17"]
tNpcGossip[18536]["OptionPoint17"]="2-1"
tNpcGossip[18536]["Option18"] = tKillMonsterDropItem_Text[18536]["Option18"]
tNpcGossip[18536]["OptionPoint18"]="1"
tNpcGossip[18536]["Option19"] = tKillMonsterDropItem_Text[18536]["Option19"]
tNpcGossip[18536]["Option20"] = tKillMonsterDropItem_Text[18536]["Option20"]
tNpcGossip[18536]["OptionFunc20"]="KillMonsterDropItem_EnSureExchangeScore</N>18536"
tNpcGossip[18536]["Option21"] = tKillMonsterDropItem_Text[18536]["Option21"]
tNpcGossip[18536]["Option22"] = tKillMonsterDropItem_Text[18536]["Option22"]
tNpcGossip[18536]["Option23"] = tKillMonsterDropItem_Text[18536]["Option23"]
tNpcGossip[18536]["Option24"] = tKillMonsterDropItem_Text[18536]["Option24"]
tNpcGossip[18536]["Option25"] = tKillMonsterDropItem_Text[18536]["Option25"]
tNpcGossip[18536]["OptionFunc25"]="KillMonsterDropItem_ScoreExchangeStrengthValue</N>18536</N>1"
tNpcGossip[18536]["Option26"] = tKillMonsterDropItem_Text[18536]["Option26"]
tNpcGossip[18536]["Option27"] = tKillMonsterDropItem_Text[18536]["Option27"]
tNpcGossip[18536]["OptionFunc27"]="KillMonsterDropItem_ContinueToExchange</N>18536"

-- 九幽宝箱
tNpcGossip[18537] = tNpcGossip[18537] or DefaultNpc:new{}
tNpcGossip[18537]["OptionHidden"] = 1

-- 活动中对白
tNpcGossip[18537]["Text1-1"] = {111,112,113}
tNpcGossip[18537]["Text111"] = tKillMonsterDropItem_Text[18537]["111"]
tNpcGossip[18537]["Text112"] = tKillMonsterDropItem_Text[18537]["112"]
tNpcGossip[18537]["Text113"] = tKillMonsterDropItem_Text[18537]["113"]
tNpcGossip[18537]["tOption1-1"] = {1,2}
tNpcGossip[18537]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tKillMonsterDropItem_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18537]["Text1-2"] = {121}
tNpcGossip[18537]["Text121"] = tKillMonsterDropItem_Text[18537]["121"]
tNpcGossip[18537]["tOption1-2"] = {3}

-- 失败、需击杀10只
tNpcGossip[18537]["Text2-1"] = {211}
tNpcGossip[18537]["Text211"] = tKillMonsterDropItem_Text[18537]["211"]
tNpcGossip[18537]["tOption2-1"] = {4}

-- 失败每天只能打开1次
tNpcGossip[18537]["Text2-2"] = {221}
tNpcGossip[18537]["Text221"] = tKillMonsterDropItem_Text[18537]["221"]
tNpcGossip[18537]["tOption2-2"] = {5}

tNpcGossip[18537]["Text2-3"] = {231}
tNpcGossip[18537]["Text231"] = tKillMonsterDropItem_Text[18537]["231"]
tNpcGossip[18537]["tOption2-3"] = {6}

tNpcGossip[18537]["Option1"] = tKillMonsterDropItem_Text[18537]["Option1"]
tNpcGossip[18537]["OptionFunc1"]="KillMonsterDropItem_OpenTheChest</N>18537"
tNpcGossip[18537]["Option2"] = tKillMonsterDropItem_Text[18537]["Option2"]
tNpcGossip[18537]["Option3"] = tKillMonsterDropItem_Text[18537]["Option3"]
tNpcGossip[18537]["Option4"] = tKillMonsterDropItem_Text[18537]["Option4"]
tNpcGossip[18537]["OptionFunc4"]="Sys_GotoSomeWhere</N>58</N>49</N>3942</N>18515"
tNpcGossip[18537]["Option5"] = tKillMonsterDropItem_Text[18537]["Option5"]
tNpcGossip[18537]["Option6"] = tKillMonsterDropItem_Text[18537]["Option6"]

--------------------------------------物品配置-------------------------------------------
-- 10分钟经验礼包
tItem[3006531] = tItem[3006531] or {}
tItem[3006531]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseExpPacks(nItemId)
end

-- 30分钟经验礼包
tItem[3006532] = tItem[3006532] or {}
tItem[3006532]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseExpPacks(nItemId)
end

-- 50分钟经验礼包
tItem[3006533] = tItem[3006533] or {}
tItem[3006533]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseExpPacks(nItemId)
end

-- 10点修行值礼包
tItem[3006534] = tItem[3006534] or {}
tItem[3006534]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 30点修行值礼包
tItem[3006535] = tItem[3006535] or {}
tItem[3006535]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 50点修行值礼包
tItem[3006536] = tItem[3006536] or {}
tItem[3006536]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 10点气力值礼包
tItem[3006537] = tItem[3006537] or {}
tItem[3006537]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 30点气力值礼包
tItem[3006538] = tItem[3006538] or {}
tItem[3006538]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 50点气力值礼包
tItem[3006539] = tItem[3006539] or {}
tItem[3006539]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 通神丹礼包
tItem[3006540] = tItem[3006540] or {}
tItem[3006540]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 免费强炼丹礼包
tItem[3006541] = tItem[3006541] or {}
tItem[3006541]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 真气礼包
tItem[3006542] = tItem[3006542] or {}
tItem[3006542]["Function"] = function(nItemId,sItemName)
	-- KillMonsterDropItem_UseItem(nItemId)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemId)
end

-- 修炼礼包
tItem[3006543] = tItem[3006543] or {}
tItem[3006543]["Function"] = function(nItemId,sItemName)
	-- KillMonsterDropItem_UseItem(nItemId)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemId)
end

-- 良品宝石礼包
tItem[3006544] = tItem[3006544] or {}
tItem[3006544]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 良品稀有宝石礼包
tItem[3006545] = tItem[3006545] or {}
tItem[3006545]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 优质天怒宝石礼包
tItem[3006546] = tItem[3006546] or {}
tItem[3006546]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 优质地灵宝石礼包
tItem[3006547] = tItem[3006547] or {}
tItem[3006547]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 优质玄元宝石礼包
tItem[3006548] = tItem[3006548] or {}
tItem[3006548]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 龙珠礼包
tItem[3006549] = tItem[3006549] or {}
tItem[3006549]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- +1赤炼石礼包
tItem[3006551] = tItem[3006551] or {}
tItem[3006551]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- +2赤炼石礼包
tItem[3006552] = tItem[3006552] or {}
tItem[3006552]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- +3赤炼石礼包
tItem[3006553] = tItem[3006553] or {}
tItem[3006553]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- +6赤炼石礼包
tItem[3006554] = tItem[3006554] or {}
tItem[3006554]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_UseItem(nItemId)
end

-- 九幽藏宝图
tItemFace[3006699] = 675
tItem[3006699] = tItem[3006699] or {}
tItem[3006699]["Text1-1"] = {111,112,113}
tItem[3006699]["Text111"] = tKillMonsterDropItem_Text[3006699]["111"]
tItem[3006699]["Text112"] = tKillMonsterDropItem_Text[3006699]["112"]
tItem[3006699]["Text113"] = tKillMonsterDropItem_Text[3006699]["113"]
tItem[3006699]["tOption1-1"] = {1}

tItem[3006699]["Option1"] = tKillMonsterDropItem_Text[3006699]["Option1"]
tItem[3006699]["OptionFunc1"]="KillMonsterDropItem_UseTreasureMap</N>3006699"

-- 七阶武器神魂礼包
tItemFace[3006745] = 676
tItem[3006745] = tItem[3006745] or {}
tItem[3006745]["Text1-1"] = {111}
tItem[3006745]["Text111"] = tKillMonsterDropItem_Text[3006745]["111"]
tItem[3006745]["tOption1-1"] = {1,2,3,4,5,6,7}

tItem[3006745]["Text5-1"] = {111}
tItem[3006745]["tOption5-1"] = {9,10,11,12,13,14,15}

tItem[3006745]["Text6-1"] = {111}
tItem[3006745]["tOption6-1"] = {16,17,18,35,36,611,19,612}

tItem[3006745]["Text7-1"] = {111}
tItem[3006745]["tOption7-1"] = {711,712,713,714,715,716}



tItem[3006745]["Text2-1"] = {211}
tItem[3006745]["Text211"] = tKillMonsterDropItem_Text[3006745]["211"]
tItem[3006745]["tOption2-1"] = {20,21}

tItem[3006745]["Text2-2"] = {221}
tItem[3006745]["Text221"] = tKillMonsterDropItem_Text[3006745]["221"]
tItem[3006745]["tOption2-2"] = {22,21}

tItem[3006745]["Text2-3"] = {231}
tItem[3006745]["Text231"] = tKillMonsterDropItem_Text[3006745]["231"]
tItem[3006745]["tOption2-3"] = {23,21}

tItem[3006745]["Text2-4"] = {241}
tItem[3006745]["Text241"] = tKillMonsterDropItem_Text[3006745]["241"]
tItem[3006745]["tOption2-4"] = {24,21}

tItem[3006745]["Text2-5"] = {251}
tItem[3006745]["Text251"] = tKillMonsterDropItem_Text[3006745]["251"]
tItem[3006745]["tOption2-5"] = {25,21}

tItem[3006745]["Text2-6"] = {261}
tItem[3006745]["Text261"] = tKillMonsterDropItem_Text[3006745]["261"]
tItem[3006745]["tOption2-6"] = {26,21}

tItem[3006745]["Text3-1"] = {311}
tItem[3006745]["Text311"] = tKillMonsterDropItem_Text[3006745]["311"]
tItem[3006745]["tOption3-1"] = {27,21}

tItem[3006745]["Text3-2"] = {321}
tItem[3006745]["Text321"] = tKillMonsterDropItem_Text[3006745]["321"]
tItem[3006745]["tOption3-2"] = {28,21}

tItem[3006745]["Text3-3"] = {331}
tItem[3006745]["Text331"] = tKillMonsterDropItem_Text[3006745]["331"]
tItem[3006745]["tOption3-3"] = {29,21}

tItem[3006745]["Text3-4"] = {341}
tItem[3006745]["Text341"] = tKillMonsterDropItem_Text[3006745]["341"]
tItem[3006745]["tOption3-4"] = {30,21}

tItem[3006745]["Text3-5"] = {351}
tItem[3006745]["Text351"] = tKillMonsterDropItem_Text[3006745]["351"]
tItem[3006745]["tOption3-5"] = {31,21}

tItem[3006745]["Text4-1"] = {411}
tItem[3006745]["Text411"] = tKillMonsterDropItem_Text[3006745]["411"]
tItem[3006745]["tOption4-1"] = {32,21}

tItem[3006745]["Text4-2"] = {421}
tItem[3006745]["Text421"] = tKillMonsterDropItem_Text[3006745]["421"]
tItem[3006745]["tOption4-2"] = {33,21}

tItem[3006745]["Text4-3"] = {431}
tItem[3006745]["Text431"] = tKillMonsterDropItem_Text[3006745]["431"]
tItem[3006745]["tOption4-3"] = {34,21}

tItem[3006745]["Text4-4"] = {441}
tItem[3006745]["Text441"] = tKillMonsterDropItem_Text[3006745]["441"]
tItem[3006745]["tOption4-4"] = {37,21}

tItem[3006745]["Text4-5"] = {451}
tItem[3006745]["Text451"] = tKillMonsterDropItem_Text[3006745]["451"]
tItem[3006745]["tOption4-5"] = {38,21}

tItem[3006745]["Text4-6"] = {461}
tItem[3006745]["Text461"] = tKillMonsterDropItem_Text[3006745]["461"]
tItem[3006745]["tOption4-6"] = {461,21}

tItem[3006745]["Text4-7"] = {471}
tItem[3006745]["Text471"] = tKillMonsterDropItem_Text[3006745]["471"]
tItem[3006745]["tOption4-7"] = {471,21}

tItem[3006745]["Text4-8"] = {481}
tItem[3006745]["Text481"] = tKillMonsterDropItem_Text[3006745]["481"]
tItem[3006745]["tOption4-8"] = {481,21}


tItem[3006745]["Text4-9"] = {491}
tItem[3006745]["Text491"] = tKillMonsterDropItem_Text[3006745]["491"]
tItem[3006745]["tOption4-9"] = {491,21}

tItem[3006745]["Text4-10"] = {4101}
tItem[3006745]["Text4101"] = tKillMonsterDropItem_Text[3006745]["4101"]
tItem[3006745]["tOption4-10"] = {4101,21}




tItem[3006745]["Option1"] = tKillMonsterDropItem_Text[3006745]["Option1"]
tItem[3006745]["OptionPoint1"]="2-1"
tItem[3006745]["Option2"] = tKillMonsterDropItem_Text[3006745]["Option2"]
tItem[3006745]["OptionPoint2"]="2-2"
tItem[3006745]["Option3"] = tKillMonsterDropItem_Text[3006745]["Option3"]
tItem[3006745]["OptionPoint3"]="2-3"
tItem[3006745]["Option4"] = tKillMonsterDropItem_Text[3006745]["Option4"]
tItem[3006745]["OptionPoint4"]="2-4"
tItem[3006745]["Option5"] = tKillMonsterDropItem_Text[3006745]["Option5"]
tItem[3006745]["OptionPoint5"]="2-5"
tItem[3006745]["Option6"] = tKillMonsterDropItem_Text[3006745]["Option6"]
tItem[3006745]["OptionPoint6"]="2-6"
tItem[3006745]["Option7"] = tKillMonsterDropItem_Text[3006745]["Option7"]
tItem[3006745]["OptionPoint7"]="5-1"
tItem[3006745]["Option8"] = tKillMonsterDropItem_Text[3006745]["Option8"]

tItem[3006745]["Option9"] = tKillMonsterDropItem_Text[3006745]["Option9"]
tItem[3006745]["OptionPoint9"]="3-1"
tItem[3006745]["Option10"] = tKillMonsterDropItem_Text[3006745]["Option10"]
tItem[3006745]["OptionPoint10"]="3-2"
tItem[3006745]["Option11"] = tKillMonsterDropItem_Text[3006745]["Option11"]
tItem[3006745]["OptionPoint11"]="3-3"
tItem[3006745]["Option12"] = tKillMonsterDropItem_Text[3006745]["Option12"]
tItem[3006745]["OptionPoint12"]="3-4"
tItem[3006745]["Option13"] = tKillMonsterDropItem_Text[3006745]["Option13"]
tItem[3006745]["OptionPoint13"]="3-5"
tItem[3006745]["Option14"] = tKillMonsterDropItem_Text[3006745]["Option14"]
tItem[3006745]["OptionPoint14"]="1-1"
tItem[3006745]["Option15"] = tKillMonsterDropItem_Text[3006745]["Option15"]
tItem[3006745]["OptionPoint15"]="6-1"

tItem[3006745]["Option16"] = tKillMonsterDropItem_Text[3006745]["Option16"]
tItem[3006745]["OptionPoint16"]="4-1"
tItem[3006745]["Option17"] = tKillMonsterDropItem_Text[3006745]["Option17"]
tItem[3006745]["OptionPoint17"]="4-2"
tItem[3006745]["Option18"] = tKillMonsterDropItem_Text[3006745]["Option18"]
tItem[3006745]["OptionPoint18"]="4-3"
tItem[3006745]["Option35"] = tKillMonsterDropItem_Text[3006745]["Option35"]
tItem[3006745]["OptionPoint35"]="4-4"
tItem[3006745]["Option36"] = tKillMonsterDropItem_Text[3006745]["Option36"]
tItem[3006745]["OptionPoint36"]="4-5"
tItem[3006745]["Option611"] = tKillMonsterDropItem_Text[3006745]["Option611"]
tItem[3006745]["OptionPoint611"]="4-6"
tItem[3006745]["Option19"] = tKillMonsterDropItem_Text[3006745]["Option19"]
tItem[3006745]["OptionPoint19"]="5-1"
tItem[3006745]["Option612"] = tKillMonsterDropItem_Text[3006745]["Option612"]
tItem[3006745]["OptionPoint612"]="7-1"


tItem[3006745]["Option711"] = tKillMonsterDropItem_Text[3006745]["Option711"]
tItem[3006745]["OptionPoint711"]="4-7"
tItem[3006745]["Option712"] = tKillMonsterDropItem_Text[3006745]["Option712"]
tItem[3006745]["OptionPoint712"]="4-8"
tItem[3006745]["Option713"] = tKillMonsterDropItem_Text[3006745]["Option713"]
tItem[3006745]["OptionPoint713"]="4-9"
tItem[3006745]["Option714"] = tKillMonsterDropItem_Text[3006745]["Option714"]
tItem[3006745]["OptionPoint714"]="4-10"
tItem[3006745]["Option715"] = tKillMonsterDropItem_Text[3006745]["Option715"]
tItem[3006745]["OptionPoint715"]="6-1"
tItem[3006745]["Option716"] = tKillMonsterDropItem_Text[3006745]["Option716"]



tItem[3006745]["Option20"] = tKillMonsterDropItem_Text[3006745]["Option20"]
tItem[3006745]["OptionFunc20"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>1"
tItem[3006745]["Option21"] = tKillMonsterDropItem_Text[3006745]["Option21"]
tItem[3006745]["Option22"] = tKillMonsterDropItem_Text[3006745]["Option22"]
tItem[3006745]["OptionFunc22"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>2"
tItem[3006745]["Option23"] = tKillMonsterDropItem_Text[3006745]["Option23"]
tItem[3006745]["OptionFunc23"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>3"
tItem[3006745]["Option24"] = tKillMonsterDropItem_Text[3006745]["Option24"]
tItem[3006745]["OptionFunc24"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>4"
tItem[3006745]["Option25"] = tKillMonsterDropItem_Text[3006745]["Option25"]
tItem[3006745]["OptionFunc25"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>5"
tItem[3006745]["Option26"] = tKillMonsterDropItem_Text[3006745]["Option26"]
tItem[3006745]["OptionFunc26"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>6"
tItem[3006745]["Option27"] = tKillMonsterDropItem_Text[3006745]["Option27"]
tItem[3006745]["OptionFunc27"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>7"
tItem[3006745]["Option28"] = tKillMonsterDropItem_Text[3006745]["Option28"]
tItem[3006745]["OptionFunc28"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>8"
tItem[3006745]["Option29"] = tKillMonsterDropItem_Text[3006745]["Option29"]
tItem[3006745]["OptionFunc29"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>9"
tItem[3006745]["Option30"] = tKillMonsterDropItem_Text[3006745]["Option30"]
tItem[3006745]["OptionFunc30"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>10"
tItem[3006745]["Option31"] = tKillMonsterDropItem_Text[3006745]["Option31"]
tItem[3006745]["OptionFunc31"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>11"
tItem[3006745]["Option32"] = tKillMonsterDropItem_Text[3006745]["Option32"]
tItem[3006745]["OptionFunc32"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>12"
tItem[3006745]["Option33"] = tKillMonsterDropItem_Text[3006745]["Option33"]
tItem[3006745]["OptionFunc33"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>13"
tItem[3006745]["Option34"] = tKillMonsterDropItem_Text[3006745]["Option34"]
tItem[3006745]["OptionFunc34"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>14"
tItem[3006745]["Option37"] = tKillMonsterDropItem_Text[3006745]["Option37"]
tItem[3006745]["OptionFunc37"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>15"
tItem[3006745]["Option38"] = tKillMonsterDropItem_Text[3006745]["Option38"]
tItem[3006745]["OptionFunc38"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>16"
tItem[3006745]["Option461"] = tKillMonsterDropItem_Text[3006745]["Option461"]
tItem[3006745]["OptionFunc461"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>17"

tItem[3006745]["Option471"] = tKillMonsterDropItem_Text[3006745]["Option471"]
tItem[3006745]["OptionFunc471"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>18"
tItem[3006745]["Option481"] = tKillMonsterDropItem_Text[3006745]["Option481"]
tItem[3006745]["OptionFunc481"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>19"
tItem[3006745]["Option491"] = tKillMonsterDropItem_Text[3006745]["Option491"]
tItem[3006745]["OptionFunc491"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>20"
tItem[3006745]["Option4101"] = tKillMonsterDropItem_Text[3006745]["Option4101"]
tItem[3006745]["OptionFunc4101"]="KillMonsterDropItem_UseSpiritGift</N>3006745</N>21"

-- 七阶防具配饰神魂礼包（赠）
tItemFace[3006746] = 677
tItem[3006746] = tItem[3006746] or {}
tItem[3006746]["Text1-1"] = {111}
tItem[3006746]["Text111"] = tKillMonsterDropItem_Text[3006746]["111"]
tItem[3006746]["tOption1-1"] = {1,2,3,4,5}

tItem[3006746]["Text2-1"] = {211}
tItem[3006746]["Text211"] = tKillMonsterDropItem_Text[3006746]["211"]
tItem[3006746]["tOption2-1"] = {6,7,8,9,10}

tItem[3006746]["Text2-2"] = {221}
tItem[3006746]["Text221"] = tKillMonsterDropItem_Text[3006746]["221"]
tItem[3006746]["tOption2-2"] = {11,12,10}

tItem[3006746]["Text2-3"] = {231}
tItem[3006746]["Text231"] = tKillMonsterDropItem_Text[3006746]["231"]
tItem[3006746]["tOption2-3"] = {13,14,10}

tItem[3006746]["Text2-4"] = {241}
tItem[3006746]["Text241"] = tKillMonsterDropItem_Text[3006746]["241"]
tItem[3006746]["tOption2-4"] = {15,16,17,18,19,10}

tItem[3006746]["Text2-5"] = {251}
tItem[3006746]["Text251"] = tKillMonsterDropItem_Text[3006746]["251"]
tItem[3006746]["tOption2-5"] = {20,21,22,10}

tItem[3006746]["Text3-1"] = {311}
tItem[3006746]["Text311"] = tKillMonsterDropItem_Text[3006746]["311"]
tItem[3006746]["tOption3-1"] = {23,39}

tItem[3006746]["Text3-2"] = {321}
tItem[3006746]["Text321"] = tKillMonsterDropItem_Text[3006746]["321"]
tItem[3006746]["tOption3-2"] = {24,39}

tItem[3006746]["Text3-3"] = {331}
tItem[3006746]["Text331"] = tKillMonsterDropItem_Text[3006746]["331"]
tItem[3006746]["tOption3-3"] = {25,39}

tItem[3006746]["Text3-4"] = {341}
tItem[3006746]["Text341"] = tKillMonsterDropItem_Text[3006746]["341"]
tItem[3006746]["tOption3-4"] = {26,39}

tItem[3006746]["Text4-1"] = {411}
tItem[3006746]["Text411"] = tKillMonsterDropItem_Text[3006746]["411"]
tItem[3006746]["tOption4-1"] = {27,39}

tItem[3006746]["Text4-2"] = {421}
tItem[3006746]["Text421"] = tKillMonsterDropItem_Text[3006746]["421"]
tItem[3006746]["tOption4-2"] = {28,39}

tItem[3006746]["Text5-1"] = {511}
tItem[3006746]["Text511"] = tKillMonsterDropItem_Text[3006746]["511"]
tItem[3006746]["tOption5-1"] = {29,39}

tItem[3006746]["Text5-2"] = {521}
tItem[3006746]["Text521"] = tKillMonsterDropItem_Text[3006746]["521"]
tItem[3006746]["tOption5-2"] = {30,39}

tItem[3006746]["Text6-1"] = {611}
tItem[3006746]["Text611"] = tKillMonsterDropItem_Text[3006746]["611"]
tItem[3006746]["tOption6-1"] = {31,39}

tItem[3006746]["Text6-2"] = {621}
tItem[3006746]["Text621"] = tKillMonsterDropItem_Text[3006746]["621"]
tItem[3006746]["tOption6-2"] = {32,39}

tItem[3006746]["Text6-3"] = {631}
tItem[3006746]["Text631"] = tKillMonsterDropItem_Text[3006746]["631"]
tItem[3006746]["tOption6-3"] = {33,39}

tItem[3006746]["Text6-4"] = {641}
tItem[3006746]["Text641"] = tKillMonsterDropItem_Text[3006746]["641"]
tItem[3006746]["tOption6-4"] = {34,39}

tItem[3006746]["Text6-5"] = {651}
tItem[3006746]["Text651"] = tKillMonsterDropItem_Text[3006746]["651"]
tItem[3006746]["tOption6-5"] = {35,39}

tItem[3006746]["Text7-1"] = {711}
tItem[3006746]["Text711"] = tKillMonsterDropItem_Text[3006746]["711"]
tItem[3006746]["tOption7-1"] = {36,39}

tItem[3006746]["Text7-2"] = {721}
tItem[3006746]["Text721"] = tKillMonsterDropItem_Text[3006746]["721"]
tItem[3006746]["tOption7-2"] = {37,39}

tItem[3006746]["Text7-3"] = {731}
tItem[3006746]["Text731"] = tKillMonsterDropItem_Text[3006746]["731"]
tItem[3006746]["tOption7-3"] = {38,39}

tItem[3006746]["Option1"] = tKillMonsterDropItem_Text[3006746]["Option1"]
tItem[3006746]["OptionPoint1"]="2-1"
tItem[3006746]["Option2"] = tKillMonsterDropItem_Text[3006746]["Option2"]
tItem[3006746]["OptionPoint2"]="2-2"
tItem[3006746]["Option3"] = tKillMonsterDropItem_Text[3006746]["Option3"]
tItem[3006746]["OptionPoint3"]="2-3"
tItem[3006746]["Option4"] = tKillMonsterDropItem_Text[3006746]["Option4"]
tItem[3006746]["OptionPoint4"]="2-4"
tItem[3006746]["Option5"] = tKillMonsterDropItem_Text[3006746]["Option5"]
tItem[3006746]["OptionPoint5"]="2-5"

tItem[3006746]["Option6"] = tKillMonsterDropItem_Text[3006746]["Option6"]
tItem[3006746]["OptionPoint6"]="3-1"
tItem[3006746]["Option7"] = tKillMonsterDropItem_Text[3006746]["Option7"]
tItem[3006746]["OptionPoint7"]="3-2"
tItem[3006746]["Option8"] = tKillMonsterDropItem_Text[3006746]["Option8"]
tItem[3006746]["OptionPoint8"]="3-3"
tItem[3006746]["Option9"] = tKillMonsterDropItem_Text[3006746]["Option9"]
tItem[3006746]["OptionPoint9"]="3-4"
tItem[3006746]["Option10"] = tKillMonsterDropItem_Text[3006746]["Option10"]
tItem[3006746]["OptionPoint10"]="1"

tItem[3006746]["Option11"] = tKillMonsterDropItem_Text[3006746]["Option11"]
tItem[3006746]["OptionPoint11"]="4-1"
tItem[3006746]["Option12"] = tKillMonsterDropItem_Text[3006746]["Option12"]
tItem[3006746]["OptionPoint12"]="4-2"

tItem[3006746]["Option13"] = tKillMonsterDropItem_Text[3006746]["Option13"]
tItem[3006746]["OptionPoint13"]="5-1"
tItem[3006746]["Option14"] = tKillMonsterDropItem_Text[3006746]["Option14"]
tItem[3006746]["OptionPoint14"]="5-2"

tItem[3006746]["Option15"] = tKillMonsterDropItem_Text[3006746]["Option15"]
tItem[3006746]["OptionPoint15"]="6-1"
tItem[3006746]["Option16"] = tKillMonsterDropItem_Text[3006746]["Option16"]
tItem[3006746]["OptionPoint16"]="6-2"
tItem[3006746]["Option17"] = tKillMonsterDropItem_Text[3006746]["Option17"]
tItem[3006746]["OptionPoint17"]="6-3"
tItem[3006746]["Option18"] = tKillMonsterDropItem_Text[3006746]["Option18"]
tItem[3006746]["OptionPoint18"]="6-4"
tItem[3006746]["Option19"] = tKillMonsterDropItem_Text[3006746]["Option19"]
tItem[3006746]["OptionPoint19"]="6-5"

tItem[3006746]["Option20"] = tKillMonsterDropItem_Text[3006746]["Option20"]
tItem[3006746]["OptionPoint20"]="7-1"
tItem[3006746]["Option21"] = tKillMonsterDropItem_Text[3006746]["Option21"]
tItem[3006746]["OptionPoint21"]="7-2"
tItem[3006746]["Option22"] = tKillMonsterDropItem_Text[3006746]["Option22"]
tItem[3006746]["OptionPoint22"]="7-3"

tItem[3006746]["Option23"] = tKillMonsterDropItem_Text[3006746]["Option23"]
tItem[3006746]["OptionFunc23"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>1"
tItem[3006746]["Option24"] = tKillMonsterDropItem_Text[3006746]["Option24"]
tItem[3006746]["OptionFunc24"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>2"
tItem[3006746]["Option25"] = tKillMonsterDropItem_Text[3006746]["Option25"]
tItem[3006746]["OptionFunc25"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>3"
tItem[3006746]["Option26"] = tKillMonsterDropItem_Text[3006746]["Option26"]
tItem[3006746]["OptionFunc26"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>4"
tItem[3006746]["Option27"] = tKillMonsterDropItem_Text[3006746]["Option27"]
tItem[3006746]["OptionFunc27"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>5"
tItem[3006746]["Option28"] = tKillMonsterDropItem_Text[3006746]["Option28"]
tItem[3006746]["OptionFunc28"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>6"
tItem[3006746]["Option29"] = tKillMonsterDropItem_Text[3006746]["Option29"]
tItem[3006746]["OptionFunc29"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>7"
tItem[3006746]["Option30"] = tKillMonsterDropItem_Text[3006746]["Option30"]
tItem[3006746]["OptionFunc30"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>8"
tItem[3006746]["Option31"] = tKillMonsterDropItem_Text[3006746]["Option31"]
tItem[3006746]["OptionFunc31"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>9"
tItem[3006746]["Option32"] = tKillMonsterDropItem_Text[3006746]["Option32"]
tItem[3006746]["OptionFunc32"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>10"
tItem[3006746]["Option33"] = tKillMonsterDropItem_Text[3006746]["Option33"]
tItem[3006746]["OptionFunc33"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>11"
tItem[3006746]["Option34"] = tKillMonsterDropItem_Text[3006746]["Option34"]
tItem[3006746]["OptionFunc34"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>12"
tItem[3006746]["Option35"] = tKillMonsterDropItem_Text[3006746]["Option35"]
tItem[3006746]["OptionFunc35"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>13"
tItem[3006746]["Option36"] = tKillMonsterDropItem_Text[3006746]["Option36"]
tItem[3006746]["OptionFunc36"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>14"
tItem[3006746]["Option37"] = tKillMonsterDropItem_Text[3006746]["Option37"]
tItem[3006746]["OptionFunc37"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>15"
tItem[3006746]["Option38"] = tKillMonsterDropItem_Text[3006746]["Option38"]
tItem[3006746]["OptionFunc38"]="KillMonsterDropItem_UseSpiritGift</N>3006746</N>16"
tItem[3006746]["Option39"] = tKillMonsterDropItem_Text[3006746]["Option39"]

-- 九幽神魂礼包洗赠卷
tItemFace[3006550] = 678
tItem[3006550] = tItem[3006550] or {}
tItem[3006550]["Text1-1"] = {111}
tItem[3006550]["Text111"] = tKillMonsterDropItem_Text[3006550]["111"]
tItem[3006550]["tOption1-1"] = {1,2}

tItem[3006550]["Option1"] = tKillMonsterDropItem_Text[3006550]["Option1"]
tItem[3006550]["OptionFunc1"]="KillMonsterDropItem_WashDonatedVolume</N>3006550</N>1"
tItem[3006550]["Option2"] = tKillMonsterDropItem_Text[3006550]["Option2"]
tItem[3006550]["OptionFunc2"]="KillMonsterDropItem_WashDonatedVolume</N>3006550</N>2"

-- 七阶武器神魂礼包碎片（赠）
tItem[3006765] = tItem[3006765] or {}
tItem[3006765]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemId,3)
	-- if not Item_ChkMulItem(nItemId,nItemId,15) then
		-- User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId]["NoItem"])
		-- return
	-- end
	
	-- if Item_DelMulItem(nItemId,nItemId,15) then
		-- -- 添加物品
		-- Item_AddItem(3006745)
		-- -- 打log
		-- Sys_SaveActionFestivalLog("0,0,3006765,15,12000103,2,3006745,1")
		-- -- 给提示
		-- User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId]["CompoundItem"])
	-- end
end

-- 七阶武器神魂礼包碎片（赠）
tItem[3006766] = tItem[3006766] or {}
tItem[3006766]["Function"] = function(nItemId,sItemName)
	Standardize_RewardPoolProps_ExhangeOldItem(nItemId,3)
	-- if not Item_ChkMulItem(nItemId,nItemId,15) then
		-- User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId]["NoItem"])
		-- return
	-- end
	
	-- if Item_DelMulItem(nItemId,nItemId,15) then
		-- -- 添加物品
		-- Item_AddItem(3006746)
		-- -- 打log
		-- Sys_SaveActionFestivalLog("0,0,3006766,15,12000103,2,3006746,1")
		-- -- 给提示
		-- User_TalkChannel2005(tKillMonsterDropItem_Text[nItemId]["CompoundItem"])
	-- end
end

-- 九幽随机卷
tItem[3008811] = tItem[3008811] or {}
tItem[3008811]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_RandomVolume(nItemId)
end

-- 人杰赤炼包
tItem[3008812] = tItem[3008812] or {}
tItem[3008812]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_AgingPack(nItemId,sItemName)
end

-- 侠武赤炼包
tItem[3008813] = tItem[3008813] or {}
tItem[3008813]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_AgingPack(nItemId,sItemName)
end

-- 英豪赤炼包
tItem[3008814] = tItem[3008814] or {}
tItem[3008814]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_AgingPack(nItemId,sItemName)
end

-- 勇者赤炼包
tItem[3008815] = tItem[3008815] or {}
tItem[3008815]["Function"] = function(nItemId,sItemName)
	KillMonsterDropItem_AgingPack(nItemId,sItemName)
end

-- 明亮星陨石精装包
tItem[3200864] = tItem[3200864] or {}
tItem[3200864]["DialogueText"] = tKillMonsterDropItem_Text[3200864]
tItem[3200864]["Text1-1"] = {111,112}
tItem[3200864]["tOption1-1"] = {2,1}
tItem[3200864]["OptionPoint1"]="1-2"
tItem[3200864]["OptionFunc2"]="KillMonsterDropItem_Asteroids</N>3200864</N>2"

tItem[3200864]["Text1-2"] = {121}
tItem[3200864]["tOption1-2"] = {3,4}
tItem[3200864]["OptionFunc3"]="KillMonsterDropItem_Asteroids</N>3200864</N>1"
tItem[3200864]["OptionPoint4"]="1-1"

--------------------------------------陷阱配置-------------------------------------------
tTrap[1365] = tTrap[1365] or {}
tTrap[1365]["Function"] = function(nTrapId,nTrapType)
	KillMonsterDropItem_ChgMap(nTrapId)
end

--------------------------------------怪物掉落-------------------------------------------
-- local tKillMonsterDropItem_Drop = {}
	-- -- 小怪的掉落
	-- tKillMonsterDropItem_Drop[1] = {}
	-- tKillMonsterDropItem_Drop[1]["ActivityTime"] = tKillMonsterDropItem_Constant["ActivityTime"]
	-- tKillMonsterDropItem_Drop[1]["Function"] = KillMonsterDropItem_OrdinaryMonsterDeath
	-- tKillMonsterDropItem_Drop[1]["MonsterId"] = {7697,7698,7699,7700,7701,7702}
	-- -- BOSS的掉落
	-- tKillMonsterDropItem_Drop[2] = {}
	-- tKillMonsterDropItem_Drop[2]["ActivityTime"] = tKillMonsterDropItem_Constant["ActivityTime"]
	-- tKillMonsterDropItem_Drop[2]["Function"] = KillMonsterDropItem_BossDeath
	-- tKillMonsterDropItem_Drop[2]["MonsterId"] = {7703,7704,7705,3811,3812,3813,3814,3815,3816,3817,3818,3819,3820,3821,3822}

-- table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[1])
-- table.insert(tMonsterDrop_AreaLoad,tKillMonsterDropItem_Drop[2])

-- local tKillMonsterDropItem_OnTime = {}
	-- -- 刷BOSS
	-- tKillMonsterDropItem_OnTime[1] = {}
	-- tKillMonsterDropItem_OnTime[1]["ActivityTime"] = tKillMonsterDropItem_Constant["ActivityTime"]
	-- tKillMonsterDropItem_OnTime[1]["Type"] = 3
	-- tKillMonsterDropItem_OnTime[1]["Func"] = KillMonsterDropItem_BOSSRefresh
	
	-- -- 重置动态存储表的值
	-- tKillMonsterDropItem_OnTime[2] = {}
	-- tKillMonsterDropItem_OnTime[2]["ActivityTime"] = tKillMonsterDropItem_Constant["ActivityTime"]
	-- tKillMonsterDropItem_OnTime[2]["Type"] = 2
	-- tKillMonsterDropItem_OnTime[2]["TimeType"] = 4
	-- tKillMonsterDropItem_OnTime[2]["Multiple"] = {}
	-- tKillMonsterDropItem_OnTime[2]["Multiple"][1] = "00:00 00:07"
	-- tKillMonsterDropItem_OnTime[2]["Multiple"][2] = "07:00 07:07"
	-- tKillMonsterDropItem_OnTime[2]["Multiple"][3] = "14:00 14:07"
	-- tKillMonsterDropItem_OnTime[2]["Multiple"][4] = "19:00 19:07"
	-- tKillMonsterDropItem_OnTime[2]["Func"] = KillMonsterDropItem_CheckTime

-- table.insert(tSystemTime_InitialData,tKillMonsterDropItem_OnTime[1])
-- table.insert(tSystemTime_InitialData,tKillMonsterDropItem_OnTime[2])
