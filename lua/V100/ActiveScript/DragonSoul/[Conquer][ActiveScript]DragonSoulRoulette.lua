------------------------------------------------------------------------------------
--Name：       [简体征服][活动脚本]灵珠锻造轮盘玩法
--Creator:     郑鋆
--Created:     2019/04/29
------------------------------------------------------------------------------------

-- 命名前缀
-- DragonSoulRoulette_

-- 常量数据
local tDragonSoulRoulette_Constant = {}
	-- 活动时间
	tDragonSoulRoulette_Constant["ActivityTime"] = tActivityTime["DragonSoulRoulette"]["ActivityTime"]
	-- 邮件存在时间
	tDragonSoulRoulette_Constant["ExistDay"] = 7
	-- 副本类型
	tDragonSoulRoulette_Constant["InstanceType"] = 7
	-- 延时的时间
	tDragonSoulRoulette_Constant["Delay"] = 5
	-- 副本类型
	tDragonSoulRoulette_Constant["InstanceType"] = 285
	tDragonSoulRoulette_Constant["SaveTime"] = " 10080 1"
	-- 保底的数值
	tDragonSoulRoulette_Constant["Guarantee"] = 3

	-- 活动地图数据
	tDragonSoulRoulette_Constant["Activity"] = {}
	tDragonSoulRoulette_Constant["Activity"]["MapId"] = 10510
	tDragonSoulRoulette_Constant["Activity"]["BoundX"] = 53
	tDragonSoulRoulette_Constant["Activity"]["BoundY"] = 67
	tDragonSoulRoulette_Constant["Activity"]["Range"] = 5

	tDragonSoulRoulette_Constant["Leave"] = {}
	-- 普通服
	tDragonSoulRoulette_Constant["Leave"][1] = {}
	tDragonSoulRoulette_Constant["Leave"][1]["MapId"] = 1002
	tDragonSoulRoulette_Constant["Leave"][1]["BoundX"] = 347
	tDragonSoulRoulette_Constant["Leave"][1]["BoundY"] = 403
	tDragonSoulRoulette_Constant["Leave"][1]["Range"] = 5
	-- 激情服
	tDragonSoulRoulette_Constant["Leave"][2] = {}
	tDragonSoulRoulette_Constant["Leave"][2]["MapId"] = 1036
	tDragonSoulRoulette_Constant["Leave"][2]["BoundX"] = 232
	tDragonSoulRoulette_Constant["Leave"][2]["BoundY"] = 257
	tDragonSoulRoulette_Constant["Leave"][2]["Range"] = 5

-- 掩码值
local tDragonSoulRoulette_Stc = {}
	-- 记录当前锻造的灵珠ID
	tDragonSoulRoulette_Stc[24214] = {}
	tDragonSoulRoulette_Stc[24214][1] = {}
	tDragonSoulRoulette_Stc[24214][1]["EventType"] = 194
	tDragonSoulRoulette_Stc[24214][1]["DataType"] = 57
	tDragonSoulRoulette_Stc[24214][1]["MaxData"] = 4200012

	-- 记录当前锻造的进度值
	tDragonSoulRoulette_Stc[24214][2] = {}
	tDragonSoulRoulette_Stc[24214][2]["EventType"] = 194
	tDragonSoulRoulette_Stc[24214][2]["DataType"] = 58
	tDragonSoulRoulette_Stc[24214][2]["MaxData"] = 5

	-- 记录当前锻造的赤炼石ID
	tDragonSoulRoulette_Stc[23997] = {}
	tDragonSoulRoulette_Stc[23997][1] = {}
	tDragonSoulRoulette_Stc[23997][1]["EventType"] = 195
	tDragonSoulRoulette_Stc[23997][1]["DataType"] = 80
	tDragonSoulRoulette_Stc[23997][1]["MaxData"] = 730007

	-- 记录当前锻造的进度值
	tDragonSoulRoulette_Stc[23997][2] = {}
	tDragonSoulRoulette_Stc[23997][2]["EventType"] = 195
	tDragonSoulRoulette_Stc[23997][2]["DataType"] = 81
	tDragonSoulRoulette_Stc[23997][2]["MaxData"] = 8

	-- 记录当前锻造的秘金ID
	tDragonSoulRoulette_Stc[23998] = {}
	tDragonSoulRoulette_Stc[23998][1] = {}
	tDragonSoulRoulette_Stc[23998][1]["EventType"] = 195
	tDragonSoulRoulette_Stc[23998][1]["DataType"] = 82
	tDragonSoulRoulette_Stc[23998][1]["MaxData"] = 3312648

	-- 记录当前锻造的进度值
	tDragonSoulRoulette_Stc[23998][2] = {}
	tDragonSoulRoulette_Stc[23998][2]["EventType"] = 195
	tDragonSoulRoulette_Stc[23998][2]["DataType"] = 83
	tDragonSoulRoulette_Stc[23998][2]["MaxData"] = 8

-- 轮盘概率
local tDragonSoulRoulette_Random = {}
	tDragonSoulRoulette_Random[1] = {}
	tDragonSoulRoulette_Random[1]["ItemChanceSum"] = 10000
	-- 进度+1	45%
	tDragonSoulRoulette_Random[1][1] = {}
	tDragonSoulRoulette_Random[1][1]["RandomItemChanceType"] = 2
	tDragonSoulRoulette_Random[1][1]["ItemChance"] = 4500
	tDragonSoulRoulette_Random[1][1]["Item_1"] = 1

	-- 进度+2	21%
	tDragonSoulRoulette_Random[1][2] = {}
	tDragonSoulRoulette_Random[1][2]["RandomItemChanceType"] = 2
	tDragonSoulRoulette_Random[1][2]["ItemChance"] = 2100
	tDragonSoulRoulette_Random[1][2]["Item_1"] = 2

	-- 进度+3	9%
	tDragonSoulRoulette_Random[1][3] = {}
	tDragonSoulRoulette_Random[1][3]["RandomItemChanceType"] = 2
	tDragonSoulRoulette_Random[1][3]["ItemChance"] = 900
	tDragonSoulRoulette_Random[1][3]["Item_1"] = 3

	-- 进度+4	4%
	tDragonSoulRoulette_Random[1][4] = {}
	tDragonSoulRoulette_Random[1][4]["RandomItemChanceType"] = 2
	tDragonSoulRoulette_Random[1][4]["ItemChance"] = 400
	tDragonSoulRoulette_Random[1][4]["Item_1"] = 4

	-- 进度+5	1%
	tDragonSoulRoulette_Random[1][5] = {}
	tDragonSoulRoulette_Random[1][5]["RandomItemChanceType"] = 2
	tDragonSoulRoulette_Random[1][5]["ItemChance"] = 100
	tDragonSoulRoulette_Random[1][5]["Item_1"] = 5

	-- 失败	20%
	tDragonSoulRoulette_Random[1][6] = {}
	tDragonSoulRoulette_Random[1][6]["RandomItemChanceType"] = 2
	tDragonSoulRoulette_Random[1][6]["ItemChance"] = 2000
	tDragonSoulRoulette_Random[1][6]["Item_1"] = 0

-- 物品对应的选项编号
local tDragonSoulRoulette_Option = {}
	-- 灵珠选项
	tDragonSoulRoulette_Option[24214] = {}
	tDragonSoulRoulette_Option[24214][4200001] = 111
	tDragonSoulRoulette_Option[24214][4200002] = 112
	tDragonSoulRoulette_Option[24214][4200003] = 113
	tDragonSoulRoulette_Option[24214][4200004] = 114
	tDragonSoulRoulette_Option[24214][4200005] = 115
	tDragonSoulRoulette_Option[24214][4200006] = 116
	tDragonSoulRoulette_Option[24214][4200007] = 117
	tDragonSoulRoulette_Option[24214][4200008] = 118
	tDragonSoulRoulette_Option[24214][4200009] = 119
	tDragonSoulRoulette_Option[24214][4200010] = 120
	tDragonSoulRoulette_Option[24214][4200011] = 121
	tDragonSoulRoulette_Option[24214][4200012] = 122

	-- 秘金选项
	tDragonSoulRoulette_Option[23998] = {}
	tDragonSoulRoulette_Option[23998][3312640] = 111
	tDragonSoulRoulette_Option[23998][3312641] = 112
	tDragonSoulRoulette_Option[23998][3312642] = 113
	tDragonSoulRoulette_Option[23998][3312643] = 114
	tDragonSoulRoulette_Option[23998][3312644] = 115
	tDragonSoulRoulette_Option[23998][3312645] = 116
	tDragonSoulRoulette_Option[23998][3312646] = 117
	tDragonSoulRoulette_Option[23998][3312647] = 118
	tDragonSoulRoulette_Option[23998][3312648] = 119

	-- 赤练石
	tDragonSoulRoulette_Option[23997] = {}
	tDragonSoulRoulette_Option[23997][730002] = {}
	tDragonSoulRoulette_Option[23997][730002][1] = 111
	tDragonSoulRoulette_Option[23997][730002][2] = 117
	tDragonSoulRoulette_Option[23997][730003] = {}
	tDragonSoulRoulette_Option[23997][730003][1] = 112
	tDragonSoulRoulette_Option[23997][730003][2] = 118
	tDragonSoulRoulette_Option[23997][730004] = {}
	tDragonSoulRoulette_Option[23997][730004][1] = 113
	tDragonSoulRoulette_Option[23997][730004][2] = 119
	tDragonSoulRoulette_Option[23997][730005] = {}
	tDragonSoulRoulette_Option[23997][730005][1] = 114
	tDragonSoulRoulette_Option[23997][730005][2] = 120
	tDragonSoulRoulette_Option[23997][730006] = {}
	tDragonSoulRoulette_Option[23997][730006][1] = 115
	tDragonSoulRoulette_Option[23997][730006][2] = 121
	tDragonSoulRoulette_Option[23997][730007] = {}
	tDragonSoulRoulette_Option[23997][730007][1] = 116
	tDragonSoulRoulette_Option[23997][730007][2] = 122

	tDragonSoulRoulette_Option["Buy"] = {}
	tDragonSoulRoulette_Option["Buy"][24214] = 124
	tDragonSoulRoulette_Option["Buy"][23998] = 121
	-- 闲聊选项
	tDragonSoulRoulette_Option["Gossip"] = {}
	tDragonSoulRoulette_Option["Gossip"][24214] = 123
	tDragonSoulRoulette_Option["Gossip"][23998] = 120
	tDragonSoulRoulette_Option["Gossip"][23997] = 123

-- 灵珠锻造晋升和失败奖励
local tDragonSoulRoulette_Reward = {}
	-- 1阶灵珠	2点气力值
	tDragonSoulRoulette_Reward[4200001] = {}
	tDragonSoulRoulette_Reward[4200001]["Success"] = 4200002
	tDragonSoulRoulette_Reward[4200001]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200001]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200001]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200001]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200001]["Fail"]["RewardStrengthValue"]["Value"] = 2

	-- 2阶灵珠	4点气力值
	tDragonSoulRoulette_Reward[4200002] = {}
	tDragonSoulRoulette_Reward[4200002]["Success"] = 4200003
	tDragonSoulRoulette_Reward[4200002]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200002]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200002]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200002]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200002]["Fail"]["RewardStrengthValue"]["Value"] = 4

	-- 3阶灵珠	8点气力值
	tDragonSoulRoulette_Reward[4200003] = {}
	tDragonSoulRoulette_Reward[4200003]["Success"] = 4200004
	tDragonSoulRoulette_Reward[4200003]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200003]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200003]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200003]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200003]["Fail"]["RewardStrengthValue"]["Value"] = 8

	-- 4阶灵珠	16点气力值
	tDragonSoulRoulette_Reward[4200004] = {}
	tDragonSoulRoulette_Reward[4200004]["Success"] = 4200005
	tDragonSoulRoulette_Reward[4200004]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200004]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200004]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200004]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200004]["Fail"]["RewardStrengthValue"]["Value"] = 16

	-- 5阶灵珠	32点气力值
	tDragonSoulRoulette_Reward[4200005] = {}
	tDragonSoulRoulette_Reward[4200005]["Success"] = 4200006
	tDragonSoulRoulette_Reward[4200005]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200005]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200005]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200005]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200005]["Fail"]["RewardStrengthValue"]["Value"] = 32

	-- 6阶灵珠	64点气力值
	tDragonSoulRoulette_Reward[4200006] = {}
	tDragonSoulRoulette_Reward[4200006]["Success"] = 4200007
	tDragonSoulRoulette_Reward[4200006]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200006]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200006]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200006]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200006]["Fail"]["RewardStrengthValue"]["Value"] = 64

	-- 7阶灵珠	128点气力值
	tDragonSoulRoulette_Reward[4200007] = {}
	tDragonSoulRoulette_Reward[4200007]["Success"] = 4200008
	tDragonSoulRoulette_Reward[4200007]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200007]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200007]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200007]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200007]["Fail"]["RewardStrengthValue"]["Value"] = 128

	-- 8阶灵珠	256点气力值
	tDragonSoulRoulette_Reward[4200008] = {}
	tDragonSoulRoulette_Reward[4200008]["Success"] = 4200009
	tDragonSoulRoulette_Reward[4200008]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200008]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200008]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200008]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200008]["Fail"]["RewardStrengthValue"]["Value"] = 256

	-- 9阶灵珠	512点气力值
	tDragonSoulRoulette_Reward[4200009] = {}
	tDragonSoulRoulette_Reward[4200009]["Success"] = 4200010
	tDragonSoulRoulette_Reward[4200009]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200009]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200009]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200009]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200009]["Fail"]["RewardStrengthValue"]["Value"] = 512

	-- 10阶灵珠	1024点气力值
	tDragonSoulRoulette_Reward[4200010] = {}
	tDragonSoulRoulette_Reward[4200010]["Success"] = 4200011
	tDragonSoulRoulette_Reward[4200010]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200010]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200010]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200010]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200010]["Fail"]["RewardStrengthValue"]["Value"] = 1024

	-- 11阶灵珠	2048点气力值
	tDragonSoulRoulette_Reward[4200011] = {}
	tDragonSoulRoulette_Reward[4200011]["Success"] = 4200012
	tDragonSoulRoulette_Reward[4200011]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200011]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200011]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200011]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200011]["Fail"]["RewardStrengthValue"]["Value"] = 2048

	-- 12阶灵珠	4096点气力值
	tDragonSoulRoulette_Reward[4200012] = {}
	tDragonSoulRoulette_Reward[4200012]["Success"] = 4200013
	tDragonSoulRoulette_Reward[4200012]["Fail"] = {}
	tDragonSoulRoulette_Reward[4200012]["Fail"]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Reward[4200012]["Fail"]["LogId"] = 12001396
	tDragonSoulRoulette_Reward[4200012]["Fail"]["RewardStrengthValue"] = {}
	tDragonSoulRoulette_Reward[4200012]["Fail"]["RewardStrengthValue"]["Value"] = 4096

	-- +2 赤练石
	tDragonSoulRoulette_Reward[730002] = {}
	tDragonSoulRoulette_Reward[730002]["Success"] = 730003

	-- +3 赤练石
	tDragonSoulRoulette_Reward[730003] = {}
	tDragonSoulRoulette_Reward[730003]["Success"] = 730004

	-- +4 赤练石
	tDragonSoulRoulette_Reward[730004] = {}
	tDragonSoulRoulette_Reward[730004]["Success"] = 730005

	-- +5 赤练石
	tDragonSoulRoulette_Reward[730005] = {}
	tDragonSoulRoulette_Reward[730005]["Success"] = 730006

	-- +6 赤练石
	tDragonSoulRoulette_Reward[730006] = {}
	tDragonSoulRoulette_Reward[730006]["Success"] = 730007

	-- +7 赤练石
	tDragonSoulRoulette_Reward[730007] = {}
	tDragonSoulRoulette_Reward[730007]["Success"] = 730008

	-- 1阶秘金
	tDragonSoulRoulette_Reward[3312640] = {}
	tDragonSoulRoulette_Reward[3312640]["Success"] = 3312641

	-- 2阶秘金
	tDragonSoulRoulette_Reward[3312641] = {}
	tDragonSoulRoulette_Reward[3312641]["Success"] = 3312642

	-- 3阶秘金
	tDragonSoulRoulette_Reward[3312642] = {}
	tDragonSoulRoulette_Reward[3312642]["Success"] = 3312643

	-- 4阶秘金
	tDragonSoulRoulette_Reward[3312643] = {}
	tDragonSoulRoulette_Reward[3312643]["Success"] = 3312644

	-- 5阶秘金
	tDragonSoulRoulette_Reward[3312644] = {}
	tDragonSoulRoulette_Reward[3312644]["Success"] = 3312645

	-- 6阶秘金
	tDragonSoulRoulette_Reward[3312645] = {}
	tDragonSoulRoulette_Reward[3312645]["Success"] = 3312646

	-- 7阶秘金
	tDragonSoulRoulette_Reward[3312646] = {}
	tDragonSoulRoulette_Reward[3312646]["Success"] = 3312647

	-- 8阶秘金
	tDragonSoulRoulette_Reward[3312647] = {}
	tDragonSoulRoulette_Reward[3312647]["Success"] = 3312648

	-- 9阶秘金
	tDragonSoulRoulette_Reward[3312648] = {}
	tDragonSoulRoulette_Reward[3312648]["Success"] = 3312649


-- 取回奖励配置
local tDragonSoulRoulette_Retrieve = {}
	-- 1阶灵珠
	tDragonSoulRoulette_Retrieve[4200001] = {}
	tDragonSoulRoulette_Retrieve[4200001][1] = {}
	tDragonSoulRoulette_Retrieve[4200001][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200001][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200001][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200001][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200001][1]["RewardItem"][1]["Id"] = 4200001
	tDragonSoulRoulette_Retrieve[4200001][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200001][1]["RewardItem"][1]["PreciousType"] = 310

	-- 2阶灵珠
	tDragonSoulRoulette_Retrieve[4200002] = {}
	tDragonSoulRoulette_Retrieve[4200002][1] = {}
	tDragonSoulRoulette_Retrieve[4200002][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200002][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200002][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200002][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200002][1]["RewardItem"][1]["Id"] = 4200002
	tDragonSoulRoulette_Retrieve[4200002][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200002][1]["RewardItem"][1]["PreciousType"] = 310

	-- 3阶灵珠
	tDragonSoulRoulette_Retrieve[4200003] = {}
	tDragonSoulRoulette_Retrieve[4200003][1] = {}
	tDragonSoulRoulette_Retrieve[4200003][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200003][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200003][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200003][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200003][1]["RewardItem"][1]["Id"] = 4200003
	tDragonSoulRoulette_Retrieve[4200003][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200003][1]["RewardItem"][1]["PreciousType"] = 310

	-- 4阶灵珠
	tDragonSoulRoulette_Retrieve[4200004] = {}
	tDragonSoulRoulette_Retrieve[4200004][1] = {}
	tDragonSoulRoulette_Retrieve[4200004][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200004][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200004][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200004][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200004][1]["RewardItem"][1]["Id"] = 4200004
	tDragonSoulRoulette_Retrieve[4200004][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200004][1]["RewardItem"][1]["PreciousType"] = 310

	-- 5阶灵珠
	tDragonSoulRoulette_Retrieve[4200005] = {}
	tDragonSoulRoulette_Retrieve[4200005][1] = {}
	tDragonSoulRoulette_Retrieve[4200005][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200005][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200005][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200005][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200005][1]["RewardItem"][1]["Id"] = 4200005
	tDragonSoulRoulette_Retrieve[4200005][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200005][1]["RewardItem"][1]["PreciousType"] = 310

	-- 6阶灵珠
	tDragonSoulRoulette_Retrieve[4200006] = {}
	tDragonSoulRoulette_Retrieve[4200006][1] = {}
	tDragonSoulRoulette_Retrieve[4200006][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200006][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200006][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200006][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200006][1]["RewardItem"][1]["Id"] = 4200006
	tDragonSoulRoulette_Retrieve[4200006][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200006][1]["RewardItem"][1]["PreciousType"] = 310

	-- 7阶灵珠
	tDragonSoulRoulette_Retrieve[4200007] = {}
	tDragonSoulRoulette_Retrieve[4200007][1] = {}
	tDragonSoulRoulette_Retrieve[4200007][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200007][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200007][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200007][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200007][1]["RewardItem"][1]["Id"] = 4200007
	tDragonSoulRoulette_Retrieve[4200007][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200007][1]["RewardItem"][1]["PreciousType"] = 310

	-- 8阶灵珠
	tDragonSoulRoulette_Retrieve[4200008] = {}
	tDragonSoulRoulette_Retrieve[4200008][1] = {}
	tDragonSoulRoulette_Retrieve[4200008][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200008][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200008][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200008][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200008][1]["RewardItem"][1]["Id"] = 4200008
	tDragonSoulRoulette_Retrieve[4200008][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200008][1]["RewardItem"][1]["PreciousType"] = 310

	-- 9阶灵珠
	tDragonSoulRoulette_Retrieve[4200009] = {}
	tDragonSoulRoulette_Retrieve[4200009][1] = {}
	tDragonSoulRoulette_Retrieve[4200009][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200009][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200009][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200009][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200009][1]["RewardItem"][1]["Id"] = 4200009
	tDragonSoulRoulette_Retrieve[4200009][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200009][1]["RewardItem"][1]["PreciousType"] = 310

	-- 10阶灵珠
	tDragonSoulRoulette_Retrieve[4200010] = {}
	tDragonSoulRoulette_Retrieve[4200010][1] = {}
	tDragonSoulRoulette_Retrieve[4200010][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200010][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200010][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200010][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200010][1]["RewardItem"][1]["Id"] = 4200010
	tDragonSoulRoulette_Retrieve[4200010][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200010][1]["RewardItem"][1]["PreciousType"] = 310

	-- 11阶灵珠
	tDragonSoulRoulette_Retrieve[4200011] = {}
	tDragonSoulRoulette_Retrieve[4200011][1] = {}
	tDragonSoulRoulette_Retrieve[4200011][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200011][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200011][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200011][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200011][1]["RewardItem"][1]["Id"] = 4200011
	tDragonSoulRoulette_Retrieve[4200011][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200011][1]["RewardItem"][1]["PreciousType"] = 310

	-- 12阶灵珠
	tDragonSoulRoulette_Retrieve[4200012] = {}
	tDragonSoulRoulette_Retrieve[4200012][1] = {}
	tDragonSoulRoulette_Retrieve[4200012][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200012][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200012][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200012][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200012][1]["RewardItem"][1]["Id"] = 4200012
	tDragonSoulRoulette_Retrieve[4200012][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200012][1]["RewardItem"][1]["PreciousType"] = 310

	-- 13阶灵珠
	tDragonSoulRoulette_Retrieve[4200013] = {}
	tDragonSoulRoulette_Retrieve[4200013][1] = {}
	tDragonSoulRoulette_Retrieve[4200013][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[4200013][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[4200013][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[4200013][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[4200013][1]["RewardItem"][1]["Id"] = 4200013
	tDragonSoulRoulette_Retrieve[4200013][1]["RewardItem"][1]["Attr"] = "0 1"
	tDragonSoulRoulette_Retrieve[4200013][1]["RewardItem"][1]["PreciousType"] = 310

	-- +2 赤练石
	tDragonSoulRoulette_Retrieve[730002] = {}
	tDragonSoulRoulette_Retrieve[730002][1] = {}
	tDragonSoulRoulette_Retrieve[730002][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730002][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730002][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730002][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730002][1]["RewardItem"][1]["Id"] = 730002
	tDragonSoulRoulette_Retrieve[730002][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDragonSoulRoulette_Retrieve[730002][2] = {}
	tDragonSoulRoulette_Retrieve[730002][2]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730002][2]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730002][2]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730002][2]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730002][2]["RewardItem"][1]["Id"] = 730002
	tDragonSoulRoulette_Retrieve[730002][2]["RewardItem"][1]["Attr"] = "0 1 3"

	-- +3 赤练石
	tDragonSoulRoulette_Retrieve[730003] = {}
	tDragonSoulRoulette_Retrieve[730003][1] = {}
	tDragonSoulRoulette_Retrieve[730003][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730003][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730003][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730003][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730003][1]["RewardItem"][1]["Id"] = 730003
	tDragonSoulRoulette_Retrieve[730003][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDragonSoulRoulette_Retrieve[730003][2] = {}
	tDragonSoulRoulette_Retrieve[730003][2]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730003][2]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730003][2]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730003][2]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730003][2]["RewardItem"][1]["Id"] = 730003
	tDragonSoulRoulette_Retrieve[730003][2]["RewardItem"][1]["Attr"] = "0 1 3"

	-- +4 赤练石
	tDragonSoulRoulette_Retrieve[730004] = {}
	tDragonSoulRoulette_Retrieve[730004][1] = {}
	tDragonSoulRoulette_Retrieve[730004][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730004][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730004][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730004][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730004][1]["RewardItem"][1]["Id"] = 730004
	tDragonSoulRoulette_Retrieve[730004][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDragonSoulRoulette_Retrieve[730004][2] = {}
	tDragonSoulRoulette_Retrieve[730004][2]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730004][2]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730004][2]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730004][2]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730004][2]["RewardItem"][1]["Id"] = 730004
	tDragonSoulRoulette_Retrieve[730004][2]["RewardItem"][1]["Attr"] = "0 1 3"

	-- +5 赤练石
	tDragonSoulRoulette_Retrieve[730005] = {}
	tDragonSoulRoulette_Retrieve[730005][1] = {}
	tDragonSoulRoulette_Retrieve[730005][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730005][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730005][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730005][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730005][1]["RewardItem"][1]["Id"] = 730005
	tDragonSoulRoulette_Retrieve[730005][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDragonSoulRoulette_Retrieve[730005][2] = {}
	tDragonSoulRoulette_Retrieve[730005][2]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730005][2]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730005][2]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730005][2]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730005][2]["RewardItem"][1]["Id"] = 730005
	tDragonSoulRoulette_Retrieve[730005][2]["RewardItem"][1]["Attr"] = "0 1 3"

	-- +6 赤练石
	tDragonSoulRoulette_Retrieve[730006] = {}
	tDragonSoulRoulette_Retrieve[730006][1] = {}
	tDragonSoulRoulette_Retrieve[730006][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730006][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730006][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730006][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730006][1]["RewardItem"][1]["Id"] = 730006
	tDragonSoulRoulette_Retrieve[730006][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDragonSoulRoulette_Retrieve[730006][2] = {}
	tDragonSoulRoulette_Retrieve[730006][2]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730006][2]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730006][2]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730006][2]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730006][2]["RewardItem"][1]["Id"] = 730006
	tDragonSoulRoulette_Retrieve[730006][2]["RewardItem"][1]["Attr"] = "0 1 3"

	-- +7 赤练石
	tDragonSoulRoulette_Retrieve[730007] = {}
	tDragonSoulRoulette_Retrieve[730007][1] = {}
	tDragonSoulRoulette_Retrieve[730007][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730007][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730007][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730007][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730007][1]["RewardItem"][1]["Id"] = 730007
	tDragonSoulRoulette_Retrieve[730007][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDragonSoulRoulette_Retrieve[730007][2] = {}
	tDragonSoulRoulette_Retrieve[730007][2]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730007][2]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730007][2]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730007][2]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730007][2]["RewardItem"][1]["Id"] = 730007
	tDragonSoulRoulette_Retrieve[730007][2]["RewardItem"][1]["Attr"] = "0 1 3"

	-- +8 赤练石
	tDragonSoulRoulette_Retrieve[730008] = {}
	tDragonSoulRoulette_Retrieve[730008][1] = {}
	tDragonSoulRoulette_Retrieve[730008][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730008][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730008][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730008][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730008][1]["RewardItem"][1]["Id"] = 730008
	tDragonSoulRoulette_Retrieve[730008][1]["RewardItem"][1]["Attr"] = "0 1 0"
	tDragonSoulRoulette_Retrieve[730008][2] = {}
	tDragonSoulRoulette_Retrieve[730008][2]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[730008][2]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[730008][2]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[730008][2]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[730008][2]["RewardItem"][1]["Id"] = 730008
	tDragonSoulRoulette_Retrieve[730008][2]["RewardItem"][1]["Attr"] = "0 1 3"

	-- 1阶秘金
	tDragonSoulRoulette_Retrieve[3312640] = {}
	tDragonSoulRoulette_Retrieve[3312640][1] = {}
	tDragonSoulRoulette_Retrieve[3312640][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312640][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312640][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312640][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312640][1]["RewardItem"][1]["Id"] = 3312640
	tDragonSoulRoulette_Retrieve[3312640][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 2阶秘金
	tDragonSoulRoulette_Retrieve[3312641] = {}
	tDragonSoulRoulette_Retrieve[3312641][1] = {}
	tDragonSoulRoulette_Retrieve[3312641][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312641][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312641][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312641][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312641][1]["RewardItem"][1]["Id"] = 3312641
	tDragonSoulRoulette_Retrieve[3312641][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 3阶秘金
	tDragonSoulRoulette_Retrieve[3312642] = {}
	tDragonSoulRoulette_Retrieve[3312642][1] = {}
	tDragonSoulRoulette_Retrieve[3312642][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312642][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312642][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312642][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312642][1]["RewardItem"][1]["Id"] = 3312642
	tDragonSoulRoulette_Retrieve[3312642][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 4阶秘金
	tDragonSoulRoulette_Retrieve[3312643] = {}
	tDragonSoulRoulette_Retrieve[3312643][1] = {}
	tDragonSoulRoulette_Retrieve[3312643][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312643][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312643][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312643][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312643][1]["RewardItem"][1]["Id"] = 3312643
	tDragonSoulRoulette_Retrieve[3312643][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 5阶秘金
	tDragonSoulRoulette_Retrieve[3312644] = {}
	tDragonSoulRoulette_Retrieve[3312644][1] = {}
	tDragonSoulRoulette_Retrieve[3312644][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312644][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312644][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312644][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312644][1]["RewardItem"][1]["Id"] = 3312644
	tDragonSoulRoulette_Retrieve[3312644][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 6阶秘金
	tDragonSoulRoulette_Retrieve[3312645] = {}
	tDragonSoulRoulette_Retrieve[3312645][1] = {}
	tDragonSoulRoulette_Retrieve[3312645][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312645][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312645][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312645][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312645][1]["RewardItem"][1]["Id"] = 3312645
	tDragonSoulRoulette_Retrieve[3312645][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 7阶秘金
	tDragonSoulRoulette_Retrieve[3312646] = {}
	tDragonSoulRoulette_Retrieve[3312646][1] = {}
	tDragonSoulRoulette_Retrieve[3312646][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312646][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312646][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312646][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312646][1]["RewardItem"][1]["Id"] = 3312646
	tDragonSoulRoulette_Retrieve[3312646][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 8阶秘金
	tDragonSoulRoulette_Retrieve[3312647] = {}
	tDragonSoulRoulette_Retrieve[3312647][1] = {}
	tDragonSoulRoulette_Retrieve[3312647][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312647][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312647][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312647][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312647][1]["RewardItem"][1]["Id"] = 3312647
	tDragonSoulRoulette_Retrieve[3312647][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 9阶秘金
	tDragonSoulRoulette_Retrieve[3312648] = {}
	tDragonSoulRoulette_Retrieve[3312648][1] = {}
	tDragonSoulRoulette_Retrieve[3312648][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312648][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312648][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312648][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312648][1]["RewardItem"][1]["Id"] = 3312648
	tDragonSoulRoulette_Retrieve[3312648][1]["RewardItem"][1]["Attr"] = "0 1"

	-- 10阶秘金
	tDragonSoulRoulette_Retrieve[3312649] = {}
	tDragonSoulRoulette_Retrieve[3312649][1] = {}
	tDragonSoulRoulette_Retrieve[3312649][1]["LogId"] = 12001396
	tDragonSoulRoulette_Retrieve[3312649][1]["LogFile"] = "Pearl"
	tDragonSoulRoulette_Retrieve[3312649][1]["RewardItem"] = {}
	tDragonSoulRoulette_Retrieve[3312649][1]["RewardItem"][1] = {}
	tDragonSoulRoulette_Retrieve[3312649][1]["RewardItem"][1]["Id"] = 3312649
	tDragonSoulRoulette_Retrieve[3312649][1]["RewardItem"][1]["Attr"] = "0 1"

local tDragonSoulRoulette_UseItem = {}
	-- ===1阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312640]
	-- ===删除: 3312640,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312640] = {}
	tDragonSoulRoulette_UseItem[3312640]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312640]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312640]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312640]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312640]["DeleteItem"][1]["Id"] = 3312640 -- 【库】1阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312640]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312640]["RewardMoney"]["Value"] = 100000 -- 金币, 【需求】10万金币
	tDragonSoulRoulette_UseItem[3312640]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312641] = {}
	-- ===2阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312641]
	-- ===删除: 3312641,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312641]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312641]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312641]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312641]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312641]["DeleteItem"][1]["Id"] = 3312641 -- 【库】2阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312641]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312641]["RewardMoney"]["Value"] = 300000 -- 金币, 【需求】30万金币
	tDragonSoulRoulette_UseItem[3312641]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312642] = {}
	-- ===3阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312642]
	-- ===删除: 3312642,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312642]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312642]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312642]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312642]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312642]["DeleteItem"][1]["Id"] = 3312642 -- 【库】3阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312642]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312642]["RewardMoney"]["Value"] = 900000 -- 金币, 【需求】90万金币
	tDragonSoulRoulette_UseItem[3312642]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312643] = {}
	-- ===4阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312643]
	-- ===删除: 3312643,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312643]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312643]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312643]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312643]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312643]["DeleteItem"][1]["Id"] = 3312643 -- 【库】4阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312643]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312643]["RewardMoney"]["Value"] = 2700000 -- 金币, 【需求】270万金币
	tDragonSoulRoulette_UseItem[3312643]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312644] = {}
	-- ===5阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312644]
	-- ===删除: 3312644,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312644]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312644]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312644]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312644]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312644]["DeleteItem"][1]["Id"] = 3312644 -- 【库】5阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312644]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312644]["RewardMoney"]["Value"] = 8100000 -- 金币, 【需求】810万金币
	tDragonSoulRoulette_UseItem[3312644]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312645] = {}
	-- ===6阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312645]
	-- ===删除: 3312645,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312645]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312645]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312645]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312645]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312645]["DeleteItem"][1]["Id"] = 3312645 -- 【库】6阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312645]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312645]["RewardMoney"]["Value"] = 24300000 -- 金币, 【需求】2430万金币
	tDragonSoulRoulette_UseItem[3312645]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312646] = {}
	-- ===7阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312646]
	-- ===删除: 3312646,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312646]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312646]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312646]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312646]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312646]["DeleteItem"][1]["Id"] = 3312646 -- 【库】7阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312646]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312646]["RewardMoney"]["Value"] = 81900000 -- 金币, 【需求】8190万金币
	tDragonSoulRoulette_UseItem[3312646]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312647] = {}
	-- ===8阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312647]
	-- ===删除: 3312647,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312647]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312647]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312647]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312647]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312647]["DeleteItem"][1]["Id"] = 3312647 -- 【库】8阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312647]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312647]["RewardMoney"]["Value"] = 245700000 -- 金币, 【需求】24570万金币
	tDragonSoulRoulette_UseItem[3312647]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312648] = {}
	-- ===9阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312648]
	-- ===删除: 3312648,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312648]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312648]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312648]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312648]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312648]["DeleteItem"][1]["Id"] = 3312648 -- 【库】9阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312648]["RewardMoney"] = {}
	tDragonSoulRoulette_UseItem[3312648]["RewardMoney"]["Value"] = 737100000 -- 金币, 【需求】73710万金币
	tDragonSoulRoulette_UseItem[3312648]["Gold"] = true

	tDragonSoulRoulette_UseItem[3312649] = {}
	-- ===10阶秘金
	-- ===索引: tDragonSoulRoulette_UseItem[3312649]
	-- ===删除: 3312649,1
	-- ===LogStep: 2
	tDragonSoulRoulette_UseItem[3312649]["LogId"] = 12001396
	tDragonSoulRoulette_UseItem[3312649]["LogStep"] = "2"
	tDragonSoulRoulette_UseItem[3312649]["DeleteItem"] = {}
	tDragonSoulRoulette_UseItem[3312649]["DeleteItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312649]["DeleteItem"][1]["Id"] = 3312649 -- 【库】10阶秘金[属性:11]
	tDragonSoulRoulette_UseItem[3312649]["RewardItem"] = {}
	tDragonSoulRoulette_UseItem[3312649]["RewardItem"][1] = {}
	tDragonSoulRoulette_UseItem[3312649]["RewardItem"][1]["Id"] = 3312648
	tDragonSoulRoulette_UseItem[3312649]["RewardItem"][1]["Attr"] = "0 3"

-- 光效配置
local tDragonSoulRoulette_Effect = {}
	-- 失败
	tDragonSoulRoulette_Effect[0] = {1,2}
	-- 进度+1
	tDragonSoulRoulette_Effect[1] = {3,4}
	-- 进度+2
	tDragonSoulRoulette_Effect[2] = {5,6}
	-- 进度+3
	tDragonSoulRoulette_Effect[3] = {7,8}
	-- 进度+4
	tDragonSoulRoulette_Effect[4] = {9,10}
	-- 进度+5
	tDragonSoulRoulette_Effect[5] = {11,12}

-- 光效名字
local tDragonSoulRoulette_EffectName = {}
	-- 失败
	tDragonSoulRoulette_EffectName[1] = "newzhuanpan5"
	tDragonSoulRoulette_EffectName[2] = "newzhuanpan10"
	-- 进度+1
	tDragonSoulRoulette_EffectName[3] = "newzhuanpan7"
	tDragonSoulRoulette_EffectName[4] = "newzhuanpan12"
	-- 进度+2
	tDragonSoulRoulette_EffectName[5] = "newzhuanpan2"
	tDragonSoulRoulette_EffectName[6] = "newzhuanpan9"
	-- 进度+3
	tDragonSoulRoulette_EffectName[7] = "newzhuanpan4"
	tDragonSoulRoulette_EffectName[8] = "newzhuanpan11"
	-- 进度+4
	tDragonSoulRoulette_EffectName[9] = "newzhuanpan1"
	tDragonSoulRoulette_EffectName[10] = "newzhuanpan6"
	-- 进度+5
	tDragonSoulRoulette_EffectName[11] = "newzhuanpan3"
	tDragonSoulRoulette_EffectName[12] = "newzhuanpan8"

local tDragonSoulRoulette_EffectPos = {}
	tDragonSoulRoulette_EffectPos[24214] = {}
	tDragonSoulRoulette_EffectPos[24214]["PosX"] = 53
	tDragonSoulRoulette_EffectPos[24214]["PosY"] = 57
	tDragonSoulRoulette_EffectPos[23997] = {}
	tDragonSoulRoulette_EffectPos[23997]["PosX"] = 53
	tDragonSoulRoulette_EffectPos[23997]["PosY"] = 67
	tDragonSoulRoulette_EffectPos[23998] = {}
	tDragonSoulRoulette_EffectPos[23998]["PosX"] = 63
	tDragonSoulRoulette_EffectPos[23998]["PosY"] = 57

-- 记录玩家选择秘金数
local tDragonSoulRoulette_Choose = {}
-- 记录玩家当前是否在强化
local tDragonSoulRoulette_Strengthen = {}
-- 保底数值
local tDragonSoulRoulette_Guarantee = {}

---------------------------------------------------------------------------逻辑部分--------------------------------------------------------------------------
-- 获取结果
function DragonSoulRoulette_GetRandom(nIndex)
	if tDragonSoulRoulette_Guarantee[nIndex] == nil then
		tDragonSoulRoulette_Guarantee[nIndex] = tDragonSoulRoulette_Constant["Guarantee"]
	end

	if tDragonSoulRoulette_Guarantee[nIndex] <= 0 then
		return 0
	end

	local nFlag,tAward = Probabil_RandomAward(tDragonSoulRoulette_Random,1)

	-- 判断表是否有值
	if next(tAward) == nil or next(tAward[1]["tAward"]) == nil then
		return 0
	end

	return tAward[1]["tAward"][1]["Item_1"]
end

-- 设置保底值
function DragonSoulRoulette_SetGuarantee(nIndex,nData)
	if tDragonSoulRoulette_Guarantee[nIndex] == nil then
		tDragonSoulRoulette_Guarantee[nIndex] = tDragonSoulRoulette_Constant["Guarantee"]
	end

	tDragonSoulRoulette_Guarantee[nIndex] = tDragonSoulRoulette_Guarantee[nIndex] + nData
	-- 输出log
	if tDragonSoulRoulette_Guarantee[nIndex] <= 0 or tDragonSoulRoulette_Guarantee[nIndex]%5 == 0 then
		Sys_SaveActionFestivalLog("0,0,0,0,12001396,2," .. nIndex .. "," .. tDragonSoulRoulette_Guarantee[nIndex])
	end
end

-- 属性转换
function DragonSoulRoulette_Conversion(nMonopoly)
	if nMonopoly > 2 then
		nMonopoly = nMonopoly - 2
		return nMonopoly,1
	end

	return nMonopoly,0
end

-- 获取stc掩码值
function DragonSoulRoulette_GetStc(nNpcId,nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tDragonSoulRoulette_Stc[nNpcId][nIndex]["EventType"]
	local nType = tDragonSoulRoulette_Stc[nNpcId][nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	if nIndex ~= 1 then
		return nData,0
	end

	local nItemId = math.floor(nData/10)
	local nMonopoly = nData%10
	return nItemId,nMonopoly
end

-- 设置stc掩码值
function DragonSoulRoulette_SetStc(nNpcId,nIndex,nData,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tDragonSoulRoulette_Stc[nNpcId][nIndex]["EventType"]
	local nType = tDragonSoulRoulette_Stc[nNpcId][nIndex]["DataType"]

	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 背包选项显示
function DragonSoulRoulette_ChkOption(nNpcId,nUserId)
	local tOption = {}

	for i,v in pairs(tDragonSoulRoulette_Option[nNpcId]) do
		if type(i) == "number" then
			if type(v) == "table" then
				for a,b in pairs(v) do
					local nMonopoly = 2
					if a == 1 then
						nMonopoly = 0
					end
					-- 检测物品是否存在
					if Item_ChkItem(i,nMonopoly,0,nUserId) then
						table.insert(tOption,b)
					end
				end
			else
				-- 检测物品是否存在
				if Item_ChkItem(i,1,0,nUserId) then
					table.insert(tOption,v)
				end
			end
		end
	end

	if #tOption == 0 then
		if tDragonSoulRoulette_Option["Buy"][nNpcId] ~= nil then
			table.insert(tOption,tDragonSoulRoulette_Option["Buy"][nNpcId])
		end
	end

	table.insert(tOption,tDragonSoulRoulette_Option["Gossip"][nNpcId])
	tNpcGossip[nNpcId]["tOption1-1"] = tOption
end

-- 点击NPC进入活动地图
function DragonSoulRoulette_EnterMap(nNpcId)
	-- 活动时间判断
	if not Sys_ChkFullTime(tDragonSoulRoulette_Constant["ActivityTime"]) then
		return
	end

	-- 创建副本
	if User_EnterInstance(tDragonSoulRoulette_Constant["InstanceType"]) then
		local nUserId = Get_UserId()
		tDragonSoulRoulette_Strengthen[nUserId] = nil
	end
end

-- 离开地图
function DragonSoulRoulette_Leave()
	-- 判断是否激情服
	if SpecialServer_ChkNoGiftServer() then
		local nMapId = tDragonSoulRoulette_Constant["Leave"][2]["MapId"]
		local nBoundX = tDragonSoulRoulette_Constant["Leave"][2]["BoundX"]
		local nBoundY = tDragonSoulRoulette_Constant["Leave"][2]["BoundY"]
		local nBoundCX = tDragonSoulRoulette_Constant["Leave"][2]["Range"]
		local nBoundCY = tDragonSoulRoulette_Constant["Leave"][2]["Range"]
	
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY)
	else
		local nMapId = tDragonSoulRoulette_Constant["Leave"][1]["MapId"]
		local nBoundX = tDragonSoulRoulette_Constant["Leave"][1]["BoundX"]
		local nBoundY = tDragonSoulRoulette_Constant["Leave"][1]["BoundY"]
		local nBoundCX = tDragonSoulRoulette_Constant["Leave"][1]["Range"]
		local nBoundCY = tDragonSoulRoulette_Constant["Leave"][1]["Range"]
	
		User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY)
	end
end

-- 放入灵珠
function DragonSoulRoulette_PutInto(nNpcId,nChoose,nChooseMonopoly)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDragonSoulRoulette_Constant["ActivityTime"]) then
		return
	end

	-- 判断是否已放入灵珠
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(nNpcId,1)

	if nItemId > 0 then
		return
	end

	-- 判断是否有该物品
	if not Item_ChkItem(nChoose,nChooseMonopoly) then
		return
	end

	-- 判断是否赤练石
	if nNpcId == 23997 then
		local bFlag,nNewMonopoly = DragonSoulRoulette_DeleteItem(nChoose,nChooseMonopoly)
		-- 判断是否删除成功
		if not bFlag then
			return
		end
		nChooseMonopoly = nNewMonopoly
	else
		-- 删除物品
		if not Item_DelItem(nChoose,nChooseMonopoly) then
			return
		end
	end

	-- 贵重物品的记录
	Sys_DecNosuchStatisticCount(360,nChoose,1)
	-- 记录数据
	nChooseMonopoly = nChooseMonopoly or 1
	if nChooseMonopoly == 0 then
		nChooseMonopoly = 1
	end
	DragonSoulRoulette_Record(nNpcId,nChoose,nChooseMonopoly)
end

-- 删除物品
function DragonSoulRoulette_DeleteItem(nItemId,nMonopoly)
	local nChooseMonopoly = 0
	-- 删除永久物品
	if Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,0,nil,0) and Item_DelMulItem(nItemId,nItemId,1,nMonopoly,0,nil,0) then
		if nMonopoly == 0 then
			nChooseMonopoly = 1
		else
			nChooseMonopoly = 2
		end
		return true,nChooseMonopoly
	-- 删除时效物品
	elseif Item_ChkMulItem(nItemId,nItemId,1,nMonopoly,0,nil,2) and Item_DelMulItem(nItemId,nItemId,1,nMonopoly,0,nil,2) then
		if nMonopoly == 0 then
			nChooseMonopoly = 3
		else
			nChooseMonopoly = 4
		end
		return true,nChooseMonopoly
	end

	return false,0
end

-- 记录数据
function DragonSoulRoulette_Record(nNpcId,nChoose,nChooseMonopoly)
	-- 设置放入的物品ID
	DragonSoulRoulette_SetStc(nNpcId,1,nChoose*10 + nChooseMonopoly)
	-- 进度清零
	DragonSoulRoulette_SetStc(nNpcId,2,0)

	LinkNpcGossipFunc_New(nNpcId,"1-2")
end

-- 开始锻造
function DragonSoulRoulette_Forging(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDragonSoulRoulette_Constant["ActivityTime"]) then
		return
	end

	-- 判断是否已放入灵珠
	local nSoul,nMonopoly = DragonSoulRoulette_GetStc(nNpcId,1)

	if nSoul == 0 then
		return
	end

	-- 获取锻造结果
	local nIndex = DragonSoulRoulette_GetRandom(nSoul)
	local nData,nFlag = DragonSoulRoulette_GetStc(nNpcId,2)
	local sFunc = ""

	-- 判断是否失败
	if nIndex == 0 then
		-- 进度清零
		DragonSoulRoulette_SetStc(nNpcId,1,0)
		DragonSoulRoulette_SetStc(nNpcId,2,0)
		-- 设置保底值
		DragonSoulRoulette_SetGuarantee(nSoul,1)

		if tDragonSoulRoulette_Reward[nSoul]["Fail"] ~= nil then
			-- 获得经验奖励
			RewardTemplate_UseItemAndMsg(tDragonSoulRoulette_Reward[nSoul]["Fail"])
		end

		sFunc = string.format("DragonSoulRoulette_Delay</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,0,0,nIndex,nMonopoly)
	elseif nData + nIndex >= tDragonSoulRoulette_Stc[nNpcId][2]["MaxData"] then
		local nNextSoul = tDragonSoulRoulette_Reward[nSoul]["Success"]
		DragonSoulRoulette_SetStc(nNpcId,2,0)
		DragonSoulRoulette_SetStc(nNpcId,1,nNextSoul*10 + nMonopoly)
		-- 设置保底值
		DragonSoulRoulette_SetGuarantee(nSoul,-1)
		sFunc = string.format("DragonSoulRoulette_Delay</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,1,nNextSoul,nIndex,nMonopoly)
	else
		DragonSoulRoulette_SetStc(nNpcId,2,nData + nIndex)
		sFunc = string.format("DragonSoulRoulette_Delay</N>%d</N>%d</N>%d</N>%d</N>%d",nNpcId,2,0,nIndex,nMonopoly)
	end

	-- 出光效
	local nRandom = math.random(1,#tDragonSoulRoulette_Effect[nIndex])
	local nEffectIndex = tDragonSoulRoulette_Effect[nIndex][nRandom]
	local sEffectName = tDragonSoulRoulette_EffectName[nEffectIndex]

	local nMapId = Get_UserMapId()
	local nPosX = tDragonSoulRoulette_EffectPos[nNpcId]["PosX"]
	local nPosY = tDragonSoulRoulette_EffectPos[nNpcId]["PosY"]
	Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	User_SetTimer(tDragonSoulRoulette_Constant["Delay"],sFunc,0)
	-- 设置强化状态
	local nUserId = Get_UserId()
	tDragonSoulRoulette_Strengthen[nUserId] = 1
end

-- 延迟出提示
function DragonSoulRoulette_Delay(nNpcId,nIndex,nSoul,nPoint,nMonopoly,nUserId)
	tDragonSoulRoulette_Strengthen[nUserId] = nil

	local nMapId = Get_UserMapId(nUserId)
	local nPosX = Get_UserPositionX(nUserId)
	local nPosY = Get_UserPositionY(nUserId)
	local nSaveTime = 0
	nMonopoly,nSavetime = DragonSoulRoulette_Conversion(nMonopoly)

	-- 判断是否失败
	if nIndex == 0 then
		-- 播放锻造失败光效
		Map_Effect(nMapId,nPosX - 5,nPosY - 5, "DragonSoul_dzsb")
		-- 强化失败提示
		Sys_MsgBox(tDragonSoulRoulette_Text["Fail"][nNpcId],nil,nil,nUserId)
		LinkNpcGossipFunc_New(nNpcId,"1-1",nil,nil,nUserId)
		return
	elseif nIndex == 1 then
		local sUpgrade = tDragonSoulRoulette_Text[nNpcId][nSoul]
		if type(tDragonSoulRoulette_Text[nNpcId][nSoul]) == "table" then
			sUpgrade = tDragonSoulRoulette_Text[nNpcId][nSoul][nMonopoly]
		end
		local str = string.format(tDragonSoulRoulette_Text["Upgrade"],nPoint,sUpgrade)
		User_TalkChannel2005(str,nUserId)
		DragonSoulRoulette_Advanced(nSoul,nNpcId,nMonopoly,nUserId)
	else
		User_TalkChannel2005(string.format(tDragonSoulRoulette_Text["Success"],nPoint),nUserId)
	end

	-- 播放锻造成功光效
	Map_Effect(nMapId,nPosX - 5,nPosY - 5, "DragonSoul_dzcg")
	-- 判断物品是否被取出
	local nNewSoul,nNewMonopoly = DragonSoulRoulette_GetStc(nNpcId,1,nUserId)

	if nNewSoul == 0 then
		return
	end

	if nSoul > tDragonSoulRoulette_Stc[nNpcId][1]["MaxData"] then
		LinkNpcGossipFunc_New(nNpcId,"1-3",nil,nil,nUserId)
	else
		LinkNpcGossipFunc_New(nNpcId,"1-2",nil,nil,nUserId)
	end
end

-- 进阶的提示
function DragonSoulRoulette_Advanced(nSoul,nNpcId,nMonopoly,nUserId)
	local str = ""
	
	for i = 1,4 do
		if i == 3 then
			if type(tDragonSoulRoulette_Text["Advanced"][nSoul]) == "table" then
				str = str .. tDragonSoulRoulette_Text["Advanced"][nSoul][nMonopoly]
			else
				str = str .. tDragonSoulRoulette_Text["Advanced"][nSoul]
			end
		elseif i == 1 then
			str = str .. tDragonSoulRoulette_Text["Advanced"][nNpcId]
		else
			str = str .. tDragonSoulRoulette_Text["Advanced"][i]
		end
	end

	Sys_MsgBox(str,nil,nil,nUserId)
end

-- 玩家取回奖励
function DragonSoulRoulette_Retrieve(nNpcId)
	local nEvent = tDragonSoulRoulette_Stc[nNpcId][1]["EventType"]
	local nType = tDragonSoulRoulette_Stc[nNpcId][1]["DataType"]
	local nForgingEvent = tDragonSoulRoulette_Stc[nNpcId][2]["EventType"]
	local nForgingType = tDragonSoulRoulette_Stc[nNpcId][2]["DataType"]
	local nSoul,nMonopoly = DragonSoulRoulette_GetStc(nNpcId,1)
	local nSavetime = 0

	-- 判断玩家是否有奖励
	if nSoul <= 0 then
		return
	end

	nMonopoly,nSavetime = DragonSoulRoulette_Conversion(nMonopoly)
	if tDragonSoulRoulette_Retrieve[nSoul][nMonopoly] == nil then
		return
	end

	-- 玩家背包空间判断
	local tReward = CommonFunc_Copy(tDragonSoulRoulette_Retrieve[nSoul][nMonopoly])
	if not RewardTemplate_CheckSpace(tReward) then
		return
	end

	-- 掩码清零
	DragonSoulRoulette_SetStc(nNpcId,1,0)
	DragonSoulRoulette_SetStc(nNpcId,2,0)

	-- 给时效物品
	if nSavetime == 1 then
		tReward["RewardItem"][1]["Attr"] = tReward["RewardItem"][1]["Attr"] .. tDragonSoulRoulette_Constant["SaveTime"]
	end

	if RewardTemplate_UseItemAndMsg(tReward) then
		-- 贵重物品的记录
		Sys_IncNosuchStatisticCount(310,nSoul,1)
	end
end

-- 对白重载
function DragonSoulRoulette_Overload(nNpcId,nUserId)
	local sSchedule = ""
	-- 获取当前的灵珠
	local nSoul,nMonopoly = DragonSoulRoulette_GetStc(nNpcId,1,nUserId)
	local nSaveTime = 0
	nMonopoly,nSavetime = DragonSoulRoulette_Conversion(nMonopoly)
	local sSoulIndex = tDragonSoulRoulette_Text[nNpcId][nSoul]

	if type(tDragonSoulRoulette_Text[nNpcId][nSoul]) == "table" then
		sSoulIndex = tDragonSoulRoulette_Text[nNpcId][nSoul][nMonopoly]
	end

	-- 获取当前进度值
	local nForgingData,nFlag = DragonSoulRoulette_GetStc(nNpcId,2,nUserId)

	for i = 1,nForgingData do
		sSchedule = sSchedule .. tDragonSoulRoulette_Text["Full"]
	end

	for i = nForgingData + 1,tDragonSoulRoulette_Stc[nNpcId][2]["MaxData"] do
		sSchedule = sSchedule .. tDragonSoulRoulette_Text["Air"]
	end

	tNpcGossip[nNpcId]["Text213"] = string.format(tDragonSoulRoulette_Text[nNpcId]["Text213"],sSoulIndex)
	tNpcGossip[nNpcId]["Text214"] = string.format(tDragonSoulRoulette_Text[nNpcId]["Text214"],sSchedule)
end

-- 打开天石商店
function DragonSoulRoulette_OpenShop()
	User_OpenDialog(436)
end

-- 检测秘金
function DragonSoulRoulette_ChkItem(nNpcId,nChoose)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDragonSoulRoulette_Constant["ActivityTime"]) then
		return
	end

	-- 判断是否已放入灵珠
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(nNpcId,1)
	nChooseMonopoly = nChooseMonopoly or 1

	if nItemId > 0 then
		return
	end

	-- 判断是否有该物品
	if not Item_ChkItem(nChoose) then
		local nUserId = Get_UserId() 
		tDragonSoulRoulette_Choose[nUserId] = nChoose

		local sSoulIndex = tDragonSoulRoulette_Text[nNpcId][nChoose]
		local nMoney = tDragonSoulRoulette_UseItem[nChoose]["RewardMoney"]["Value"]
		tNpcGossip[nNpcId]["Text511"] = string.format(tDragonSoulRoulette_Text[nNpcId]["Text511"],sSoulIndex,nMoney)
		tNpcGossip[nNpcId]["Option511"] = string.format(tDragonSoulRoulette_Text[nNpcId]["Option511"],nMoney)
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end

	-- 删除物品
	if not Item_DelItem(nChoose) then
		return
	end

	-- 记录数据
	DragonSoulRoulette_Record(nNpcId,nChoose,1)
end

-- 花费银两
function DragonSoulRoulette_PutIntoMoney(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tDragonSoulRoulette_Constant["ActivityTime"]) then
		return
	end

	-- 判断是否已放入灵珠
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(nNpcId,1)

	if nItemId > 0 then
		return
	end

	local nUserId = Get_UserId()
	local nChoose = tDragonSoulRoulette_Choose[nUserId]
	
	-- 判断是否有记录数据
	if nChoose == nil then
		return
	end

	local nMoney = tDragonSoulRoulette_UseItem[nChoose]["RewardMoney"]["Value"]
	-- 判断身上银两
	if not User_CanPutMoney2Bag(-nMoney,nUserId) then
		User_TalkChannel2005(tRewardTemplate_Text["Consume"]["Money"],nUserId)
		return
	end

	-- 扣除银两
	if not User_AddMoney(-nMoney,nUserId) then
		return
	end

	-- 记录数据
	DragonSoulRoulette_Record(nNpcId,nChoose,1)
end

-- 点击NPC
function DragonSoulRoulette_Click()
	local nUserId = Get_UserId()
	if tDragonSoulRoulette_Strengthen[nUserId] ~= nil then
		Sys_MsgBox(tDragonSoulRoulette_Text["Strengthen"])
		return
	end

	LinkNpcMain()
end


---------------------------------------------------------------NPC配置------------------------------------------------------------------------------------
-- NPC头像
tNpcFace[5022] = 66

-- 神匠鲁班
tNpcGossip[24213] = tNpcGossip[24213] or DefaultNpc:new{}
tNpcGossip[24213]["OptionHidden"] = 1
tNpcGossip[24213]["DialogueText"] = tDragonSoulRoulette_Text[24213]
tNpcGossip[24213]["ActiveTime"] = tDragonSoulRoulette_Constant["ActivityTime"]

-- 【活动前】
tNpcGossip[24213]["Text1-1"] = {111,112,113,114}
tNpcGossip[24213]["tOption1-1"] = {111}
tNpcGossip[24213]["Display1-1"] = 1
-- 【活动后】
tNpcGossip[24213]["Text1-2"] = {121,122}
tNpcGossip[24213]["tOption1-2"] = {121}
tNpcGossip[24213]["Display1-2"] = 2
-- 【活动中】
tNpcGossip[24213]["Text1-3"] = {131,132,133,134}
tNpcGossip[24213]["tOption1-3"] = {131,132}
tNpcGossip[24213]["OptionFunc131"] = "DragonSoulRoulette_EnterMap</N>24213"

-- 铸灵宝鼎
tNpcFace[2694] = 407
tNpcGossip[24214] = tNpcGossip[24214] or DefaultNpc:new{}
tNpcGossip[24214]["OptionHidden"] = 1
tNpcGossip[24214]["DialogueText"] = tDragonSoulRoulette_Text[24214]

tNpcGossip[24214]["Text1-1"] = {111,112,113,114}
tNpcGossip[24214]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124}
tNpcGossip[24214]["ChkFunc1-1"] = function(nUserId)
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(24214,1,nUserId)

	-- 判断是否已放入灵珠
	if nItemId > 0 then
		return false
	end

	DragonSoulRoulette_ChkOption(24214,nUserId)
	return true
end

tNpcGossip[24214]["OptionFunc111"] = "DragonSoulRoulette_PutInto</N>24214</N>4200001"
tNpcGossip[24214]["OptionFunc112"] = "DragonSoulRoulette_PutInto</N>24214</N>4200002"
tNpcGossip[24214]["OptionFunc113"] = "DragonSoulRoulette_PutInto</N>24214</N>4200003"
tNpcGossip[24214]["OptionFunc114"] = "DragonSoulRoulette_PutInto</N>24214</N>4200004"
tNpcGossip[24214]["OptionFunc115"] = "DragonSoulRoulette_PutInto</N>24214</N>4200005"
tNpcGossip[24214]["OptionFunc116"] = "DragonSoulRoulette_PutInto</N>24214</N>4200006"
tNpcGossip[24214]["OptionFunc117"] = "DragonSoulRoulette_PutInto</N>24214</N>4200007"
tNpcGossip[24214]["OptionFunc118"] = "DragonSoulRoulette_PutInto</N>24214</N>4200008"
tNpcGossip[24214]["OptionFunc119"] = "DragonSoulRoulette_PutInto</N>24214</N>4200009"
tNpcGossip[24214]["OptionFunc120"] = "DragonSoulRoulette_PutInto</N>24214</N>4200010"
tNpcGossip[24214]["OptionFunc121"] = "DragonSoulRoulette_PutInto</N>24214</N>4200011"
tNpcGossip[24214]["OptionFunc122"] = "DragonSoulRoulette_PutInto</N>24214</N>4200012"
tNpcGossip[24214]["OptionFunc123"] = "DragonSoulRoulette_Leave"
tNpcGossip[24214]["OptionFunc124"] = "DragonSoulRoulette_OpenShop"

tNpcGossip[24214]["Text1-2"] = {211,212,213,214,215,216}
tNpcGossip[24214]["tOption1-2"] = {211,212}
tNpcGossip[24214]["ChkFunc1-2"] = function(nUserId)
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(24214,1,nUserId)

	-- 判断是否已达最大锻造
	if nItemId > tDragonSoulRoulette_Stc[24214][1]["MaxData"] then
		return false
	end

	-- 对白重载
	DragonSoulRoulette_Overload(24214,nUserId)
	return true
end
tNpcGossip[24214]["OptionFunc211"] = "DragonSoulRoulette_Forging</N>24214"
tNpcGossip[24214]["OptionPoint212"] = "4-1"

tNpcGossip[24214]["Text1-3"] = {311,312,313,314,315,316}
tNpcGossip[24214]["tOption1-3"] = {212}

tNpcGossip[24214]["Text4-1"] = {411}
tNpcGossip[24214]["tOption4-1"] = {411,412}
tNpcGossip[24214]["OptionFunc411"] = "DragonSoulRoulette_Retrieve</N>24214"

-- 赤炼宝鼎
tNpcFace[1690] = 366
tNpcGossip[23997] = tNpcGossip[23997] or DefaultNpc:new{}
tNpcGossip[23997]["OptionHidden"] = 1
tNpcGossip[23997]["DialogueText"] = tDragonSoulRoulette_Text[23997]

tNpcGossip[23997]["Text1-1"] = {111,112,113,114}
tNpcGossip[23997]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123}
tNpcGossip[23997]["ChkFunc1-1"] = function(nUserId)
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(23997,1,nUserId)

	-- 判断是否已放入灵珠
	if nItemId > 0 then
		return false
	end

	DragonSoulRoulette_ChkOption(23997,nUserId)
	return true
end

tNpcGossip[23997]["OptionFunc111"] = "DragonSoulRoulette_PutInto</N>23997</N>730002</N>0"
tNpcGossip[23997]["OptionFunc112"] = "DragonSoulRoulette_PutInto</N>23997</N>730003</N>0"
tNpcGossip[23997]["OptionFunc113"] = "DragonSoulRoulette_PutInto</N>23997</N>730004</N>0"
tNpcGossip[23997]["OptionFunc114"] = "DragonSoulRoulette_PutInto</N>23997</N>730005</N>0"
tNpcGossip[23997]["OptionFunc115"] = "DragonSoulRoulette_PutInto</N>23997</N>730006</N>0"
tNpcGossip[23997]["OptionFunc116"] = "DragonSoulRoulette_PutInto</N>23997</N>730007</N>0"
tNpcGossip[23997]["OptionFunc117"] = "DragonSoulRoulette_PutInto</N>23997</N>730002</N>2"
tNpcGossip[23997]["OptionFunc118"] = "DragonSoulRoulette_PutInto</N>23997</N>730003</N>2"
tNpcGossip[23997]["OptionFunc119"] = "DragonSoulRoulette_PutInto</N>23997</N>730004</N>2"
tNpcGossip[23997]["OptionFunc120"] = "DragonSoulRoulette_PutInto</N>23997</N>730005</N>2"
tNpcGossip[23997]["OptionFunc121"] = "DragonSoulRoulette_PutInto</N>23997</N>730006</N>2"
tNpcGossip[23997]["OptionFunc122"] = "DragonSoulRoulette_PutInto</N>23997</N>730007</N>2"

tNpcGossip[23997]["Text1-2"] = {211,212,213,214,215,216}
tNpcGossip[23997]["tOption1-2"] = {211,212}
tNpcGossip[23997]["ChkFunc1-2"] = function(nUserId)
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(23997,1,nUserId)

	-- 判断是否已放入灵珠
	if nItemId > tDragonSoulRoulette_Stc[23997][1]["MaxData"] then
		return false
	end

	-- 对白重载
	DragonSoulRoulette_Overload(23997,nUserId)
	return true
end
tNpcGossip[23997]["OptionFunc211"] = "DragonSoulRoulette_Forging</N>23997"
tNpcGossip[23997]["OptionPoint212"] = "4-1"

tNpcGossip[23997]["Text1-3"] = {311,312,313,314,315,316}
tNpcGossip[23997]["tOption1-3"] = {212}
tNpcGossip[23997]["ChkFunc1-3"] = function(nUserId)
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(23997,1,nUserId)
	local sSoulIndex = tDragonSoulRoulette_Text[23997][nItemId][nMonopoly]

	tNpcGossip[23997]["Text313"] = string.format(tDragonSoulRoulette_Text[23997]["Text313"],sSoulIndex)
	return true
end

tNpcGossip[23997]["Text4-1"] = {411}
tNpcGossip[23997]["tOption4-1"] = {411,412}
tNpcGossip[23997]["OptionFunc411"] = "DragonSoulRoulette_Retrieve</N>23997"

-- 秘金宝鼎
tNpcFace[1691] = 366
tNpcGossip[23998] = tNpcGossip[23998] or DefaultNpc:new{}
tNpcGossip[23998]["OptionHidden"] = 1
tNpcGossip[23998]["DialogueText"] = tDragonSoulRoulette_Text[23998]

tNpcGossip[23998]["Text1-1"] = {111,112,113,114}
tNpcGossip[23998]["tOption1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[23998]["ChkFunc1-1"] = function(nUserId)
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(23998,1,nUserId)

	-- 判断是否已放入灵珠
	if nItemId > 0 then
		return false
	end

	-- DragonSoulRoulette_ChkOption(23998,nUserId)
	return true
end

tNpcGossip[23998]["OptionFunc111"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312640"
tNpcGossip[23998]["OptionFunc112"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312641"
tNpcGossip[23998]["OptionFunc113"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312642"
tNpcGossip[23998]["OptionFunc114"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312643"
tNpcGossip[23998]["OptionFunc115"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312644"
tNpcGossip[23998]["OptionFunc116"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312645"
tNpcGossip[23998]["OptionFunc117"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312646"
tNpcGossip[23998]["OptionFunc118"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312647"
tNpcGossip[23998]["OptionFunc119"] = "DragonSoulRoulette_ChkItem</N>23998</N>3312648"

tNpcGossip[23998]["Text1-2"] = {211,212,213,214,215,216}
tNpcGossip[23998]["tOption1-2"] = {211,212}
tNpcGossip[23998]["ChkFunc1-2"] = function(nUserId)
	local nItemId,nMonopoly = DragonSoulRoulette_GetStc(23998,1,nUserId)

	-- 判断是否已放入灵珠
	if nItemId > tDragonSoulRoulette_Stc[23998][1]["MaxData"] then
		return false
	end

	-- 对白重载
	DragonSoulRoulette_Overload(23998,nUserId)
	return true
end
tNpcGossip[23998]["OptionFunc211"] = "DragonSoulRoulette_Forging</N>23998"
tNpcGossip[23998]["OptionPoint212"] = "4-1"

tNpcGossip[23998]["Text1-3"] = {311,312,313,314,315,316}
tNpcGossip[23998]["tOption1-3"] = {212}

tNpcGossip[23998]["Text4-1"] = {411}
tNpcGossip[23998]["tOption4-1"] = {411,412}
tNpcGossip[23998]["OptionFunc411"] = "DragonSoulRoulette_Retrieve</N>23998"

tNpcGossip[23998]["Text5-1"] = {511}
tNpcGossip[23998]["tOption5-1"] = {511,512}
tNpcGossip[23998]["OptionFunc511"] = "DragonSoulRoulette_PutIntoMoney</N>23998"
----------------------------------物品部分----------------------------------

tItem[3312640] = tItem[3312640] or {}
tItem[3312640]["Function"] = function(nItemId,sItemName)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["DragonSoulRoulette"]["UseItemTime"]) then
		local nItemNum = Get_CountItemType(nItemId,0)
		if Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format("0,0,%d,%d,12001396,2,0,0",nItemId,nItemNum))
		end
		return
	end

	RewardTemplate_UseItemAndMsg(tDragonSoulRoulette_UseItem[nItemId])
end

tItem[3312641] = tItem[3312640]
tItem[3312642] = tItem[3312640]
tItem[3312643] = tItem[3312640]
tItem[3312644] = tItem[3312640]
tItem[3312645] = tItem[3312640]
tItem[3312646] = tItem[3312640]
tItem[3312647] = tItem[3312640]
tItem[3312648] = tItem[3312640]
tItem[3312649] = tItem[3312640]

----------------------------------陷阱部分----------------------------------
tTrap[2355] = tTrap[2355] or {}
tTrap[2355]["Function"] = function(nTrapId,nTrapType)
	DragonSoulRoulette_Leave()
end