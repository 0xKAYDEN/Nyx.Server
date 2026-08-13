------------------------------------------------------------------------------------
--Name:		180831[简体征服][活动脚本]寻宝魔塔活动
--Purpose:	寻宝魔塔活动
--Creator: 	傅伟龙
--Created:	2018/08/31
------------------------------------------------------------------------------------
--前缀TreasureHuntPagodas_
--logid:10002436

--掩码：
-- 182 66 记录是否已领取3个风火轮 1 表示已领取
-- 182 67 记录玩家层数
-- 182 68 记入玩家所在的副本npc类型
-- 182 69 当前层数玩家打开的次数1,2,4,8表示没给宝箱的打开
-- 182 70 宝箱打开奖励1,2,4,8打开的奖励
-- 182 71 是否已免费打开奖励 1 表示本层已近免费开过一次
-- 182 72 记录玩家每日积分
-- 182 73 记录玩家整个活动积分
-- 182 74 记录玩家打开宝箱个数
-- 182 75 记录领取的阶段奖励

------------------------------------------------------------------------------------

local tTreasureHuntPagodas_ClrGlobalTemp = {}
--基础数据
local tTreasureHuntPagodas_Cont = {}

-- 活动时间
tTreasureHuntPagodas_Cont["BefTime"] = tActivityTime["TreasureHuntPagodas"]["BefTime"]
tTreasureHuntPagodas_Cont["ActTime"] = tActivityTime["TreasureHuntPagodas"]["ActTime"]
tTreasureHuntPagodas_Cont["RankActTime"] = tActivityTime["TreasureHuntPagodas"]["RankActTime"]
tTreasureHuntPagodas_Cont["LastActTime"] = tActivityTime["TreasureHuntPagodas"]["LastActTime"]

--等级、转世
tTreasureHuntPagodas_Cont["Level"] = 80
tTreasureHuntPagodas_Cont["Mete"] = 0

tTreasureHuntPagodas_Cont["GlobalId"] = 53468
tTreasureHuntPagodas_Cont["CostNum"] = 10000
-- 天石
tTreasureHuntPagodas_Cont["CostEmoney"] = {}
tTreasureHuntPagodas_Cont["CostEmoney"][0] = 0
tTreasureHuntPagodas_Cont["CostEmoney"][1] = 18
tTreasureHuntPagodas_Cont["CostEmoney"][2] = 27
tTreasureHuntPagodas_Cont["CostEmoney"][3] = 59

--购买风火轮
tTreasureHuntPagodas_Cont["ShopEmoney"] = 18

tTreasureHuntPagodas_Cont["DisCostEmoney"] = {}
tTreasureHuntPagodas_Cont["DisCostEmoney"][0] = 0
tTreasureHuntPagodas_Cont["DisCostEmoney"][1] = 12
tTreasureHuntPagodas_Cont["DisCostEmoney"][2] = 18
tTreasureHuntPagodas_Cont["DisCostEmoney"][3] = 39

tTreasureHuntPagodas_Cont["nNpcType"] = {}
tTreasureHuntPagodas_Cont["nNpcType"][1]= 1  --玲珑宝塔中，非逢5、10
tTreasureHuntPagodas_Cont["nNpcType"][2]= 2  --玲珑宝塔中，逢5
tTreasureHuntPagodas_Cont["nNpcType"][3]= 3  -- --玲珑宝塔中，逢10

tTreasureHuntPagodas_Cont["ItemId"] = {}
tTreasureHuntPagodas_Cont["ItemId"][1]= 3310714
tTreasureHuntPagodas_Cont["ItemId"][2]= 3310715
tTreasureHuntPagodas_Cont["ItemId"][3]= 3310716
tTreasureHuntPagodas_Cont["ItemId"][4]= 3310717

--排行榜
tTreasureHuntPagodas_Cont["DayRankIndex"] = 23192
tTreasureHuntPagodas_Cont["ActRankIndex"] = 23193


--副本id
tTreasureHuntPagodas_Cont["InstanceId"] = 193

--创建副本npc坐标
tTreasureHuntPagodas_Cont["Instance"] = {}
tTreasureHuntPagodas_Cont["Instance"][1] = {}
tTreasureHuntPagodas_Cont["Instance"][1]["PoxX"] = 44
tTreasureHuntPagodas_Cont["Instance"][1]["PoxY"] = 50

tTreasureHuntPagodas_Cont["Instance"][2] = {}
tTreasureHuntPagodas_Cont["Instance"][2]["PoxX"] = 57
tTreasureHuntPagodas_Cont["Instance"][2]["PoxY"] = 50

tTreasureHuntPagodas_Cont["Instance"][3] = {}
tTreasureHuntPagodas_Cont["Instance"][3]["PoxX"] = 50
tTreasureHuntPagodas_Cont["Instance"][3]["PoxY"] = 44

tTreasureHuntPagodas_Cont["Instance"][4] = {}
tTreasureHuntPagodas_Cont["Instance"][4]["PoxX"] = 50
tTreasureHuntPagodas_Cont["Instance"][4]["PoxY"] = 57

--创建副本npc的外形
tTreasureHuntPagodas_Cont["Lookface"] = {}
tTreasureHuntPagodas_Cont["Lookface"][1] = 31170
tTreasureHuntPagodas_Cont["Lookface"][2] = 31180
tTreasureHuntPagodas_Cont["Lookface"][3] = 31190

--创建副本npc的Task0
tTreasureHuntPagodas_Cont["Task0"] = {}
tTreasureHuntPagodas_Cont["Task0"][1] = {} --玲珑宝塔中三种npc
tTreasureHuntPagodas_Cont["Task0"][1][1] = {} --不同层奖励
tTreasureHuntPagodas_Cont["Task0"][1][1][1] = 94487180 --每层4个npc
tTreasureHuntPagodas_Cont["Task0"][1][1][2] = 94487181
tTreasureHuntPagodas_Cont["Task0"][1][1][3] = 94487182
tTreasureHuntPagodas_Cont["Task0"][1][1][4] = 94487183

tTreasureHuntPagodas_Cont["Task0"][1][2] = {}
tTreasureHuntPagodas_Cont["Task0"][1][2][1] = 94487184
tTreasureHuntPagodas_Cont["Task0"][1][2][2] = 94487185
tTreasureHuntPagodas_Cont["Task0"][1][2][3] = 94487186
tTreasureHuntPagodas_Cont["Task0"][1][2][4] = 94487187

tTreasureHuntPagodas_Cont["Task0"][1][3] = {}
tTreasureHuntPagodas_Cont["Task0"][1][3][1] = 94487188
tTreasureHuntPagodas_Cont["Task0"][1][3][2] = 94487189
tTreasureHuntPagodas_Cont["Task0"][1][3][3] = 94487190
tTreasureHuntPagodas_Cont["Task0"][1][3][4] = 94487191

tTreasureHuntPagodas_Cont["Task0"][1][4] = {}
tTreasureHuntPagodas_Cont["Task0"][1][4][1] = 94487192
tTreasureHuntPagodas_Cont["Task0"][1][4][2] = 94487193
tTreasureHuntPagodas_Cont["Task0"][1][4][3] = 94487194
tTreasureHuntPagodas_Cont["Task0"][1][4][4] = 94487195

tTreasureHuntPagodas_Cont["Task0"][1][5] = {}
tTreasureHuntPagodas_Cont["Task0"][1][5][1] = 94487196
tTreasureHuntPagodas_Cont["Task0"][1][5][2] = 94487197
tTreasureHuntPagodas_Cont["Task0"][1][5][3] = 94487198
tTreasureHuntPagodas_Cont["Task0"][1][5][4] = 94487199

tTreasureHuntPagodas_Cont["Task0"][1][6] = {}
tTreasureHuntPagodas_Cont["Task0"][1][6][1] = 94487200
tTreasureHuntPagodas_Cont["Task0"][1][6][2] = 94487201
tTreasureHuntPagodas_Cont["Task0"][1][6][3] = 94487202
tTreasureHuntPagodas_Cont["Task0"][1][6][4] = 94487203

tTreasureHuntPagodas_Cont["Task0"][2] = {}
tTreasureHuntPagodas_Cont["Task0"][2][1] = {} --不同层奖励
tTreasureHuntPagodas_Cont["Task0"][2][1][1] = 94487204 --每层4个npc
tTreasureHuntPagodas_Cont["Task0"][2][1][2] = 94487205
tTreasureHuntPagodas_Cont["Task0"][2][1][3] = 94487206
tTreasureHuntPagodas_Cont["Task0"][2][1][4] = 94487207

tTreasureHuntPagodas_Cont["Task0"][2][2] = {}
tTreasureHuntPagodas_Cont["Task0"][2][2][1] = 94487208
tTreasureHuntPagodas_Cont["Task0"][2][2][2] = 94487209
tTreasureHuntPagodas_Cont["Task0"][2][2][3] = 94487210
tTreasureHuntPagodas_Cont["Task0"][2][2][4] = 94487211

tTreasureHuntPagodas_Cont["Task0"][2][3] = {}
tTreasureHuntPagodas_Cont["Task0"][2][3][1] = 94487212
tTreasureHuntPagodas_Cont["Task0"][2][3][2] = 94487213
tTreasureHuntPagodas_Cont["Task0"][2][3][3] = 94487214
tTreasureHuntPagodas_Cont["Task0"][2][3][4] = 94487215

tTreasureHuntPagodas_Cont["Task0"][2][4] = {}
tTreasureHuntPagodas_Cont["Task0"][2][4][1] = 94487216
tTreasureHuntPagodas_Cont["Task0"][2][4][2] = 94487217
tTreasureHuntPagodas_Cont["Task0"][2][4][3] = 94487218
tTreasureHuntPagodas_Cont["Task0"][2][4][4] = 94487219

tTreasureHuntPagodas_Cont["Task0"][2][5] = {}
tTreasureHuntPagodas_Cont["Task0"][2][5][1] = 94487220
tTreasureHuntPagodas_Cont["Task0"][2][5][2] = 94487221
tTreasureHuntPagodas_Cont["Task0"][2][5][3] = 94487222
tTreasureHuntPagodas_Cont["Task0"][2][5][4] = 94487223

tTreasureHuntPagodas_Cont["Task0"][2][6] = {}
tTreasureHuntPagodas_Cont["Task0"][2][6][1] = 94487224
tTreasureHuntPagodas_Cont["Task0"][2][6][2] = 94487225
tTreasureHuntPagodas_Cont["Task0"][2][6][3] = 94487226
tTreasureHuntPagodas_Cont["Task0"][2][6][4] = 94487227

tTreasureHuntPagodas_Cont["Task0"][3] = {}
tTreasureHuntPagodas_Cont["Task0"][3][1] = {} --不同层奖励
tTreasureHuntPagodas_Cont["Task0"][3][1][1] = 94487228 --每层4个npc
tTreasureHuntPagodas_Cont["Task0"][3][1][2] = 94487229
tTreasureHuntPagodas_Cont["Task0"][3][1][3] = 94487230
tTreasureHuntPagodas_Cont["Task0"][3][1][4] = 94487231

tTreasureHuntPagodas_Cont["Task0"][3][2] = {}
tTreasureHuntPagodas_Cont["Task0"][3][2][1] = 94487232
tTreasureHuntPagodas_Cont["Task0"][3][2][2] = 94487233
tTreasureHuntPagodas_Cont["Task0"][3][2][3] = 94487234
tTreasureHuntPagodas_Cont["Task0"][3][2][4] = 94487235

tTreasureHuntPagodas_Cont["Task0"][3][3] = {}
tTreasureHuntPagodas_Cont["Task0"][3][3][1] = 94487236
tTreasureHuntPagodas_Cont["Task0"][3][3][2] = 94487237
tTreasureHuntPagodas_Cont["Task0"][3][3][3] = 94487238
tTreasureHuntPagodas_Cont["Task0"][3][3][4] = 94487239

tTreasureHuntPagodas_Cont["Task0"][3][4] = {}
tTreasureHuntPagodas_Cont["Task0"][3][4][1] = 94487240
tTreasureHuntPagodas_Cont["Task0"][3][4][2] = 94487241
tTreasureHuntPagodas_Cont["Task0"][3][4][3] = 94487242
tTreasureHuntPagodas_Cont["Task0"][3][4][4] = 94487243

tTreasureHuntPagodas_Cont["Task0"][3][5] = {}
tTreasureHuntPagodas_Cont["Task0"][3][5][1] = 94487244
tTreasureHuntPagodas_Cont["Task0"][3][5][2] = 94487245
tTreasureHuntPagodas_Cont["Task0"][3][5][3] = 94487246
tTreasureHuntPagodas_Cont["Task0"][3][5][4] = 94487247

tTreasureHuntPagodas_Cont["Task0"][3][6] = {}
tTreasureHuntPagodas_Cont["Task0"][3][6][1] = 94487248
tTreasureHuntPagodas_Cont["Task0"][3][6][2] = 94487249
tTreasureHuntPagodas_Cont["Task0"][3][6][3] = 94487250
tTreasureHuntPagodas_Cont["Task0"][3][6][4] = 94487251
-- --全局表
-- tTreasureHuntPagodas_Cont["GlobalId"] = 52352
--哪吒随机概率
tTreasureHuntPagodas_Cont["RandomNum"] = 500
tTreasureHuntPagodas_Cont["ChanceSum"] = 10000

local tTreasureHuntPagodas_SendMail = {}
tTreasureHuntPagodas_SendMail["StageAction"] = {}
tTreasureHuntPagodas_SendMail["StageAction"][1] = 569825
tTreasureHuntPagodas_SendMail["StageAction"][2] = 569826
tTreasureHuntPagodas_SendMail["StageAction"][3] = 569827
tTreasureHuntPagodas_SendMail["StageAction"][4] = 569828
tTreasureHuntPagodas_SendMail["StageAction"][5] = 569829

tTreasureHuntPagodas_SendMail["ExistDay"] = 30

--打箱子个数
tTreasureHuntPagodas_SendMail["BoxNum"] = {}
tTreasureHuntPagodas_SendMail["BoxNum"][1] = 10
tTreasureHuntPagodas_SendMail["BoxNum"][2] = 30
tTreasureHuntPagodas_SendMail["BoxNum"][3] = 50
tTreasureHuntPagodas_SendMail["BoxNum"][4] = 80
tTreasureHuntPagodas_SendMail["BoxNum"][5] = 100

--npc位置
local tTreasureHuntPagodas_position ={}
tTreasureHuntPagodas_position["MapId"] = 1002
tTreasureHuntPagodas_position["PosX"] = 370
tTreasureHuntPagodas_position["PosY"] = 449
tTreasureHuntPagodas_position["NpcId"] = 23192

tTreasureHuntPagodas_position["NoGiftMapId"] = 1036
tTreasureHuntPagodas_position["NoGiftPosX"] = 155
tTreasureHuntPagodas_position["NoGiftPosY"] = 232
tTreasureHuntPagodas_position["NoGiftNpcId"] = 23192

tTreasureHuntPagodas_position["HuntMapId"] = 10381
tTreasureHuntPagodas_position["HuntPosX"] = 47
tTreasureHuntPagodas_position["HuntPosY"] = 51

tTreasureHuntPagodas_position["HuntPosX1"] = 47
tTreasureHuntPagodas_position["HuntPosY1"] = 52

tTreasureHuntPagodas_position["HuntPosX2"] = 46 
tTreasureHuntPagodas_position["HuntPosY2"] = 52 

-- 记录是否已领取3个风火轮
local tTreasureHuntPagodas_Stc = {}
tTreasureHuntPagodas_Stc[1] = {}
tTreasureHuntPagodas_Stc[1]["EventType"] = 182
tTreasureHuntPagodas_Stc[1]["DataType"] = 66

-- 记录玩家层数
tTreasureHuntPagodas_Stc[2] = {}
tTreasureHuntPagodas_Stc[2]["EventType"] = 182
tTreasureHuntPagodas_Stc[2]["DataType"] = 67

--记入玩家所在的副本npc类型
tTreasureHuntPagodas_Stc[3] = {}
tTreasureHuntPagodas_Stc[3]["EventType"] = 182
tTreasureHuntPagodas_Stc[3]["DataType"] = 68

--当前宝箱是否被打开
tTreasureHuntPagodas_Stc[4] = {}
tTreasureHuntPagodas_Stc[4]["EventType"] = 182
tTreasureHuntPagodas_Stc[4]["DataType"] = 69

--宝箱打开奖励
tTreasureHuntPagodas_Stc[5] = {}
tTreasureHuntPagodas_Stc[5]["EventType"] = 182
tTreasureHuntPagodas_Stc[5]["DataType"] = 70

--是否已免费打开奖励
tTreasureHuntPagodas_Stc[6] = {}
tTreasureHuntPagodas_Stc[6]["EventType"] = 182
tTreasureHuntPagodas_Stc[6]["DataType"] = 71

--记录玩家每日积分
tTreasureHuntPagodas_Stc[7] = {}
tTreasureHuntPagodas_Stc[7]["EventType"] = 182
tTreasureHuntPagodas_Stc[7]["DataType"] = 72

--记录玩家整个活动积分
tTreasureHuntPagodas_Stc[8] = {}
tTreasureHuntPagodas_Stc[8]["EventType"] = 182
tTreasureHuntPagodas_Stc[8]["DataType"] = 73

--记录玩家打开宝箱个数
tTreasureHuntPagodas_Stc[9] = {}
tTreasureHuntPagodas_Stc[9]["EventType"] = 182
tTreasureHuntPagodas_Stc[9]["DataType"] = 74

tTreasureHuntPagodas_Stc[10] = {}
tTreasureHuntPagodas_Stc[10]["EventType"] = 182
tTreasureHuntPagodas_Stc[10]["DataType"] = 75
--记录当前层打开宝箱的个数
tTreasureHuntPagodas_Stc[11] = {}
tTreasureHuntPagodas_Stc[11]["EventType"] = 184
tTreasureHuntPagodas_Stc[11]["DataType"] = 65

--哪吒是否已领取
tTreasureHuntPagodas_Stc[12] = {}
tTreasureHuntPagodas_Stc[12]["EventType"] = 184
tTreasureHuntPagodas_Stc[12]["DataType"] = 75

local tTreasureHuntPagodas_Npc = {}
tTreasureHuntPagodas_Npc["PoxX"] = 44
tTreasureHuntPagodas_Npc["PoxY"] = 56
tTreasureHuntPagodas_Npc["Task0"] = 94487253
tTreasureHuntPagodas_Npc["Lookface"] = 31160


local tTreasureHuntPagodas_NpcNameIndex = {}
tTreasureHuntPagodas_NpcNameIndex[1] = 1
tTreasureHuntPagodas_NpcNameIndex[2] = 2
tTreasureHuntPagodas_NpcNameIndex[4] = 3
tTreasureHuntPagodas_NpcNameIndex[8] = 4
-- 
	local tTreasureHuntPagodas_RandomNpc = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1]["ItemChanceSum"] = 5000
	-- 星陨石塔层
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][1] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][1]["ItemChance"] = 1000
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][1]["Item_1"] = 1
	-- 气力塔层
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][2] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][2]["ItemChance"] = 1000
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][2]["Item_1"] = 2
	-- 赤炼石塔层
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][3] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][3]["ItemChance"] = 1000
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][3]["Item_1"] = 3
	-- 修为值塔层
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][4] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][4]["ItemChance"] = 1000
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][4]["Item_1"] = 4
	-- 神纹精粹塔层
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][5] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][5]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][5]["ItemChance"] = 1000
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][5]["Item_1"] = 5
	-- 特殊经验塔层
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][6] = {}
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][6]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][6]["ItemChance"] = 0
	tTreasureHuntPagodas_RandomNpc["RandomNpc"][1][6]["Item_1"] = 6
	
	local tTreasureHuntPagodas_NoGiftRandomNpc = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1]["ItemChanceSum"] = 10000
	-- 星陨石塔层
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][1] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][1]["ItemChance"] = 2400
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][1]["Item_1"] = 1
	-- 气力塔层
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][2] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][2]["ItemChance"] = 2400
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][2]["Item_1"] = 2
	-- 赤炼石塔层
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][3] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][3]["ItemChance"] = 2400
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][3]["Item_1"] = 3
	-- 修为值塔层
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][4] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][4]["ItemChance"] = 2400
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][4]["Item_1"] = 4
	-- 神纹精粹塔层
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][5] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][5]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][5]["ItemChance"] = 400
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][5]["Item_1"] = 5
	-- 特殊经验塔层
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][6] = {}
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][6]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][6]["ItemChance"] = 0
	tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"][1][6]["Item_1"] = 6
	
	
local tTreasureHuntPagodas_RandomFloor = {}

	tTreasureHuntPagodas_RandomFloor[3310715] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1]["ItemChanceSum"] = 10000
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][1] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][1]["ItemChance"] = 2400
	tTreasureHuntPagodas_RandomFloor[3310715][1][1]["Item_1"] = 1
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][2] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][2]["ItemChance"] = 1800
	tTreasureHuntPagodas_RandomFloor[3310715][1][2]["Item_1"] = 2
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][3] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][3]["ItemChance"] = 1300
	tTreasureHuntPagodas_RandomFloor[3310715][1][3]["Item_1"] = 3
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][4] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][4]["ItemChance"] = 800
	tTreasureHuntPagodas_RandomFloor[3310715][1][4]["Item_1"] = 4
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][5] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][5]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][5]["ItemChance"] = 300
	tTreasureHuntPagodas_RandomFloor[3310715][1][5]["Item_1"] = 5
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][6] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][6]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][6]["ItemChance"] = 2400
	tTreasureHuntPagodas_RandomFloor[3310715][1][6]["Item_1"] = -1
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][7] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][7]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][7]["ItemChance"] = 900
	tTreasureHuntPagodas_RandomFloor[3310715][1][7]["Item_1"] = -2
	
	tTreasureHuntPagodas_RandomFloor[3310715][1][8] = {}
	tTreasureHuntPagodas_RandomFloor[3310715][1][8]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310715][1][8]["ItemChance"] = 100
	tTreasureHuntPagodas_RandomFloor[3310715][1][8]["Item_1"] = -3
	
	tTreasureHuntPagodas_RandomFloor[3310716] = {}
	tTreasureHuntPagodas_RandomFloor[3310716][1] = {}
	tTreasureHuntPagodas_RandomFloor[3310716][1]["ItemChanceSum"] = 10000
	
	tTreasureHuntPagodas_RandomFloor[3310716][1][1] = {}
	tTreasureHuntPagodas_RandomFloor[3310716][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310716][1][1]["ItemChance"] = 2000
	tTreasureHuntPagodas_RandomFloor[3310716][1][1]["Item_1"] = 1
	
	tTreasureHuntPagodas_RandomFloor[3310716][1][2] = {}
	tTreasureHuntPagodas_RandomFloor[3310716][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310716][1][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RandomFloor[3310716][1][2]["Item_1"] = 2
	
	tTreasureHuntPagodas_RandomFloor[3310716][1][3] = {}
	tTreasureHuntPagodas_RandomFloor[3310716][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310716][1][3]["ItemChance"] = 2000
	tTreasureHuntPagodas_RandomFloor[3310716][1][3]["Item_1"] = 3
	
	tTreasureHuntPagodas_RandomFloor[3310716][1][4] = {}
	tTreasureHuntPagodas_RandomFloor[3310716][1][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310716][1][4]["ItemChance"] = 2000
	tTreasureHuntPagodas_RandomFloor[3310716][1][4]["Item_1"] = 4
	
	tTreasureHuntPagodas_RandomFloor[3310716][1][5] = {}
	tTreasureHuntPagodas_RandomFloor[3310716][1][5]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RandomFloor[3310716][1][5]["ItemChance"] = 2000
	tTreasureHuntPagodas_RandomFloor[3310716][1][5]["Item_1"] = 5
	

local tTreasureHuntPagodas_RewandItem = {}
	-- 3个风火轮
	tTreasureHuntPagodas_RewandItem["DayReward"]={}
	tTreasureHuntPagodas_RewandItem["DayReward"][1]={}
	tTreasureHuntPagodas_RewandItem["DayReward"][1]["LogId"] = 10002436
	tTreasureHuntPagodas_RewandItem["DayReward"][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DayReward"][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DayReward"][1]["RewardItem"][1]["Id"] = 3310714
	tTreasureHuntPagodas_RewandItem["DayReward"][1]["RewardItem"][1]["Attr"] = "0 3"
	-- tTreasureHuntPagodas_RewandItem["DayReward"][1]["RewardEffect"] = {}
	-- tTreasureHuntPagodas_RewandItem["DayReward"][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 显著功勋礼包
	tTreasureHuntPagodas_RewandItem["DayReward"][2]={}
	tTreasureHuntPagodas_RewandItem["DayReward"][2]["LogId"] = 10002436
	tTreasureHuntPagodas_RewandItem["DayReward"][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DayReward"][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DayReward"][2]["RewardItem"][1]["Id"] = 3310714
	tTreasureHuntPagodas_RewandItem["DayReward"][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["DayReward"][2]["RewardEffect"] = {}
	tTreasureHuntPagodas_RewandItem["DayReward"][2]["RewardEffect"]["Effect"] = "zf2-e128"
	
	-- 星陨石塔层
	tTreasureHuntPagodas_RewandItem["RewandMaterials"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1]["ItemChanceSum"] = 10000
	--微光星陨石 * 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["RewardItem"][1]["Id"] = 3009000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][1]["Log"] = "0,0,0,0,10002436,1[1],3009000,1"
	--明亮星陨石 * 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["RewardItem"][1]["Id"] = 3009001
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][2]["Log"] = "0,0,0,0,10002436,1[2],3009001,1"
	--明亮星陨石*5
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["RewardItem"][1]["Id"] = 3300243
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][3]["Log"] = "0,0,0,0,10002436,1[3],3300243,1"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][1][4]["Log"] = "0,0,0,0,10002436,1[4],3310718,1"
	--气力塔层
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2]["ItemChanceSum"] = 10000
	--气力值 * 20
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][1]["RewardStrengthValue"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][1]["RewardStrengthValue"]["Value"] = 50
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][1]["Log"] = "0,0,0,0,10002436,2[1],12,50"
	--气力值 * 200
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][2] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][2]["RewardStrengthValue"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][2]["RewardStrengthValue"]["Value"] = 400
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][2]["Log"] = "0,0,0,0,10002436,2[2],12,400"
	--气力值*1000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3]["RewardStrengthValue"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3]["RewardStrengthValue"]["Value"] = 1200
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][3]["Log"] = "0,0,0,0,10002436,2[3],12,1200"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][2][4]["Log"] = "0,0,0,0,10002436,2[4],3310718,1"
	
	-- 赤炼石塔层
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3]["ItemChanceSum"] = 10000
	--赤炼石+1 * 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["RewardItem"][1]["Id"] = 730001
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][1]["Log"] = "0,0,0,0,10002436,3[1],730001,2"
	--赤炼石+2 * 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["RewardItem"][1]["Id"] = 730002
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][2]["Log"] = "0,0,0,0,10002436,3[2],730002,2"
	--赤炼石+3*3
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["RewardItem"][1]["Id"] = 730003
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["RewardItem"][1]["Attr"] = "0 3 3 10080 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][3]["Log"] = "0,0,0,0,10002436,3[3],730003,3"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][3][4]["Log"] = "0,0,0,0,10002436,3[4],3310718,1"
	
	--修为值塔层
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4]["ItemChanceSum"] = 10000
	--修为值值 * 50
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][1]["RewardRepairValue"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][1]["RewardRepairValue"]["Value"] = 50
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][1]["Log"] = "0,0,0,0,10002436,4[1],6,50"
	--修为值值 * 500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][2] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][2]["RewardRepairValue"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][2]["RewardRepairValue"]["Value"] = 500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][2]["Log"] = "0,0,0,0,10002436,4[2],6,500"
	--修为值值*2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3]["RewardRepairValue"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3]["RewardRepairValue"]["Value"] = 2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][3]["Log"] = "0,0,0,0,10002436,4[3],6,2000"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][4][4]["Log"] = "0,0,0,0,10002436,4[4],3310718,1"
	
	-- 神纹精粹层
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5]["ItemChanceSum"] = 10000
	--万能神纹精粹* 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["RewardItem"][1]["Id"] = 4060001
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][1]["Log"] = "0,0,0,0,10002436,5[1],4060001,1"
	--万能神纹精粹 * 10
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["RewardItem"][1]["Id"] = 4060001
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["RewardItem"][1]["Attr"] = "0 10"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][2]["Log"] = "0,0,0,0,10002436,5[2],4060001,10"
	--万能神纹精粹*60
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["RewardItem"][1]["Id"] = 4060001
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["RewardItem"][1]["Attr"] = "0 50"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][3]["Log"] = "0,0,0,0,10002436,5[3],4060001,50"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][5][4]["Log"] = "0,0,0,0,10002436,5[4],3310718,1"
	
	-- 特殊经验层
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6]["ItemChanceSum"] = 10000
	--特殊经验丹* 6
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["ItemChance"] = 4000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["RewardItem"][1]["Id"] = 3303017
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["RewardItem"][1]["Attr"] = "0 6"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][1]["Log"] = "0,0,0,0,10002436,6[1],3303017,6"
	--高级特殊经验丹 * 12
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["RewardItem"][1]["Id"] = 3303018
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["RewardItem"][1]["Attr"] = "0 12"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][2]["Log"] = "0,0,0,0,10002436,6[2],3303018,12"
	--究极特殊经验丹*6
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["ItemChance"] = 1000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["RewardItem"][1]["Id"] = 3304687
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["RewardItem"][1]["Attr"] = "0 6"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][3]["Log"] = "0,0,0,0,10002436,6[3],3304687,6"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem["RewandMaterials"][6][4]["Log"] = "0,0,0,0,10002436,6[4],3310718,1"
	
-- 遇10双倍奖励
-- 星陨石塔层
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1]["ItemChanceSum"] = 10000
	--明亮星陨石 * 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["RewardItem"][1]["Id"] = 3009000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][1]["Log"] = "0,0,0,0,10002436,1[1],3009001,2"
	--明亮星陨石 * 4
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["RewardItem"][1]["Id"] = 3009001
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][2]["Log"] = "0,0,0,0,10002436,1[2],3009001,2"
	--晶莹星陨石*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["RewardItem"][1]["Id"] = 3300243
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][3]["Log"] = "0,0,0,0,10002436,1[3],3300243,2"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][1][4]["Log"] = "0,0,0,0,10002436,1[4],3310718,2"
	--气力塔层
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2]["ItemChanceSum"] = 10000
	--气力值 * 200
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][1]["RewardStrengthValue"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][1]["RewardStrengthValue"]["Value"] = 100
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][1]["Log"] = "0,0,0,0,10002436,2[1],12,100"
	--气力值 * 500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][2] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][2]["RewardStrengthValue"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][2]["RewardStrengthValue"]["Value"] = 800
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][2]["Log"] = "0,0,0,0,10002436,2[2],12,800"
	--气力值*1000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3]["RewardStrengthValue"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3]["RewardStrengthValue"]["Value"] = 2400
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][3]["Log"] = "0,0,0,0,10002436,2[3],12,2400"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][2][4]["Log"] = "0,0,0,0,10002436,2[4],3310718,2"
	
	-- 赤炼石塔层
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3]["ItemChanceSum"] = 10000
	--赤炼石+2 * 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["RewardItem"][1]["Id"] = 730001
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["RewardItem"][1]["Attr"] = "0 2 3 10080 1"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][1]["Log"] = "0,0,0,0,10002436,3[1],730001,4"
	--赤炼石+3 * 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["RewardItem"][1]["Id"] = 730002
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["RewardItem"][1]["Attr"] = "0 4 3 10080 1"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][2]["Log"] = "0,0,0,0,10002436,3[2],730002,4"
	--赤炼石+4*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["RewardItem"][1]["Id"] = 730003
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["RewardItem"][1]["Attr"] = "0 6 3 10080 1"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][3]["Log"] = "0,0,0,0,10002436,3[3],730003,6"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][3][4]["Log"] = "0,0,0,0,10002436,3[4],3310718,2"
	
	--修为值塔层
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4]["ItemChanceSum"] = 10000
	--修为值值 * 500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][1]["RewardRepairValue"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][1]["RewardRepairValue"]["Value"] = 100
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][1]["Log"] = "0,0,0,0,10002436,4[1],6,100"
	--修为值值 * 2000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][2] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][2]["RewardRepairValue"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][2]["RewardRepairValue"]["Value"] = 1000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][2]["Log"] = "0,0,0,0,10002436,4[2],6,1000"
	--修为值值*5000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3]["RewardRepairValue"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3]["RewardRepairValue"]["Value"] = 4000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][3]["Log"] = "0,0,0,0,10002436,4[3],6,4000"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][4][4]["Log"] = "0,0,0,0,10002436,4[4],3310718,2"
	
	-- 神纹精粹层
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5]["ItemChanceSum"] = 10000
	--万能神纹精粹* 10
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["ItemChance"] = 4500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["RewardItem"][1]["Id"] = 4060001
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][1]["Log"] = "0,0,0,0,10002436,5[1],4060001,2"
	--万能神纹精粹 * 30
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["RewardItem"][1]["Id"] = 4060001
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["RewardItem"][1]["Attr"] = "0 20"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][2]["Log"] = "0,0,0,0,10002436,5[2],4060001,20"
	--万能神纹精粹*60
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["ItemChance"] = 500
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["RewardItem"][1]["Id"] = 4060001
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["RewardItem"][1]["Attr"] = "0 100"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][3]["Log"] = "0,0,0,0,10002436,5[3],4060001,100"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][5][4]["Log"] = "0,0,0,0,10002436,5[4],3310718,2"
	
	-- 特殊经验层
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6]["ItemChanceSum"] = 10000
	--特殊经验丹* 6
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["ItemChance"] = 4000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["StcData"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["RewardItem"][1]["Id"] = 3303017
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["RewardItem"][1]["Attr"] = "0 12"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][1]["Log"] = "0,0,0,0,10002436,6[1],3303017,12"
	--高级特殊经验丹 * 12
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["ItemChance"] = 2000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["StcData"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["RewardItem"][1]["Id"] = 3303018
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["RewardItem"][1]["Attr"] = "0 24"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][2]["Log"] = "0,0,0,0,10002436,6[2],3303018,24"
	--究极特殊经验丹*6
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["ItemChance"] = 1000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["StcData"] = 4
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["RewardItem"][1]["Id"] = 3304687
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["RewardItem"][1]["Attr"] = "0 12"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][3]["Log"] = "0,0,0,0,10002436,6[3],3304687,12"
	--移动法宝随机包*1
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["ItemChance"] = 3000
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["StcData"] = 8
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["RewardItem"][1]["Id"] = 3310718
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["RewardItem"][1]["Attr"] = "0 2"
	tTreasureHuntPagodas_RewandItem["DouRewandMaterials"][6][4]["Log"] = "0,0,0,0,10002436,6[4],3310718,2"
	
	
	tTreasureHuntPagodas_RewandItem[23193] = {}
	tTreasureHuntPagodas_RewandItem[23193][1] = {}
	tTreasureHuntPagodas_RewandItem[23193][1]["ItemChanceSum"] = 10000
	
	tTreasureHuntPagodas_RewandItem[23193][1][1] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem[23193][1][1]["ItemChance"] = 2500
	tTreasureHuntPagodas_RewandItem[23193][1][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][1]["RewardItem"][1]["Id"] = 3009001
	tTreasureHuntPagodas_RewandItem[23193][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem[23193][1][1]["Log"] = "0,0,0,0,10002436,1[1],3009001,1"
	
	tTreasureHuntPagodas_RewandItem[23193][1][2] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem[23193][1][2]["ItemChance"] = 4000
	tTreasureHuntPagodas_RewandItem[23193][1][2]["RewardStrengthValue"] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][2]["RewardStrengthValue"]["Value"] = 100
	tTreasureHuntPagodas_RewandItem[23193][1][2]["Log"] = "0,0,0,0,10002436,2[3],12,100"
	
	tTreasureHuntPagodas_RewandItem[23193][1][3] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem[23193][1][3]["ItemChance"] = 3500
	tTreasureHuntPagodas_RewandItem[23193][1][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem[23193][1][3]["RewardItem"][1]["Id"] = 730002
	tTreasureHuntPagodas_RewandItem[23193][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1"
	tTreasureHuntPagodas_RewandItem[23193][1][3]["Log"] = "0,0,0,0,10002436,1[3],730002,1"
	
	tTreasureHuntPagodas_RewandItem[3310714] = {}
	tTreasureHuntPagodas_RewandItem[3310714][1]={}
	tTreasureHuntPagodas_RewandItem[3310714][1]["LogId"] = 10002436
	tTreasureHuntPagodas_RewandItem[3310714][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem[3310714][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem[3310714][1]["RewardItem"][1]["Id"] = 3310714
	tTreasureHuntPagodas_RewandItem[3310714][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem[3310714][1]["RewardEffect"] = {}
	tTreasureHuntPagodas_RewandItem[3310714][1]["RewardEffect"]["Effect"] = "zf2-e128"
	
	
	tTreasureHuntPagodas_RewandItem[3310718] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1]["ItemChanceSum"] = 10000
	
	tTreasureHuntPagodas_RewandItem[3310718][1][1] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][1]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem[3310718][1][1]["ItemChance"] = 5000
	tTreasureHuntPagodas_RewandItem[3310718][1][1]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][1]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][1]["RewardItem"][1]["Id"] = 3310715
	tTreasureHuntPagodas_RewandItem[3310718][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem[3310718][1][1]["Log"] = "0,0,0,0,10002436,1[1],3310715,1"
	
	tTreasureHuntPagodas_RewandItem[3310718][1][2] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][2]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem[3310718][1][2]["ItemChance"] = 3500
	tTreasureHuntPagodas_RewandItem[3310718][1][2]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][2]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][2]["RewardItem"][1]["Id"] = 3310716
	tTreasureHuntPagodas_RewandItem[3310718][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem[3310718][1][2]["Log"] = "0,0,0,0,10002436,1[2],3310716,1"
	
	tTreasureHuntPagodas_RewandItem[3310718][1][3] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["RandomItemChanceType"] = 2
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["ItemChance"] = 1500
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["RewardItem"] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["RewardItem"][1] = {}
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["RewardItem"][1]["Id"] = 3310717
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["BroadCastIndex"] = 1
	tTreasureHuntPagodas_RewandItem[3310718][1][3]["Log"] = "0,0,0,0,10002436,1[3],3310717,1"
	
	
	-- 排行榜
	tRankingFunc_Info[23192] = {}
	tRankingFunc_Info[23192]["ActiveTime"] = tActivityTime["TreasureHuntPagodas"]["RankActTime"]
	tRankingFunc_Info[23192]["DayTime"] = {}
	tRankingFunc_Info[23192]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[23192]["ResetTime"] = {}
	tRankingFunc_Info[23192]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[23192]["Global"] = {52964,52965}
	tRankingFunc_Info[23192]["BeforeGlobal"] = {52966,52967}
	tRankingFunc_Info[23192]["RankNum"] = 5
	tRankingFunc_Info[23192]["RankMode"] = 1
	
	tRankingFunc_Info[23192]["Mail"] = {}
	tRankingFunc_Info[23192]["Mail"]["ActiveTime"] = tActivityTime["TreasureHuntPagodas"]["RankActTime"]
	tRankingFunc_Info[23192]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[23192]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[23192]["Mail"]["Reward"] = {}
	tRankingFunc_Info[23192]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[23192]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[23192]["Mail"]["Reward"][1]["ActionId"] = 569820
	tRankingFunc_Info[23192]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[23192]["Mail"]["Reward"][1]["Title"] = tTreasureHuntPagodas_Text["DayMail"]["Title"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][1]["Sender"] = tTreasureHuntPagodas_Text["DayMail"]["Sender"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][1]["Content"] = tTreasureHuntPagodas_Text["DayMail"]["Content"][1]
	tRankingFunc_Info[23192]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[23192]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[23192]["Mail"]["Reward"][2]["ActionId"] = 569821
	tRankingFunc_Info[23192]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[23192]["Mail"]["Reward"][2]["Title"] = tTreasureHuntPagodas_Text["DayMail"]["Title"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][2]["Sender"] = tTreasureHuntPagodas_Text["DayMail"]["Sender"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][2]["Content"] = tTreasureHuntPagodas_Text["DayMail"]["Content"][2]
	tRankingFunc_Info[23192]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[23192]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[23192]["Mail"]["Reward"][3]["ActionId"] = 569822
	tRankingFunc_Info[23192]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[23192]["Mail"]["Reward"][3]["Title"] = tTreasureHuntPagodas_Text["DayMail"]["Title"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][3]["Sender"] = tTreasureHuntPagodas_Text["DayMail"]["Sender"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][3]["Content"] = tTreasureHuntPagodas_Text["DayMail"]["Content"][3]
	tRankingFunc_Info[23192]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[23192]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[23192]["Mail"]["Reward"][4]["ActionId"] = 569823
	tRankingFunc_Info[23192]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[23192]["Mail"]["Reward"][4]["Title"] = tTreasureHuntPagodas_Text["DayMail"]["Title"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][4]["Sender"] = tTreasureHuntPagodas_Text["DayMail"]["Sender"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][4]["Content"] = tTreasureHuntPagodas_Text["DayMail"]["Content"][4]
	tRankingFunc_Info[23192]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[23192]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[23192]["Mail"]["Reward"][5]["ActionId"] = 569824
	tRankingFunc_Info[23192]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[23192]["Mail"]["Reward"][5]["Title"] = tTreasureHuntPagodas_Text["DayMail"]["Title"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][5]["Sender"] = tTreasureHuntPagodas_Text["DayMail"]["Sender"]
	tRankingFunc_Info[23192]["Mail"]["Reward"][5]["Content"] = tTreasureHuntPagodas_Text["DayMail"]["Content"][5]

	
	-- 排行榜
	tRankingFunc_Info[23193] = {}
	tRankingFunc_Info[23193]["ActiveTime"] = tActivityTime["TreasureHuntPagodas"]["RankActTime"]
	tRankingFunc_Info[23193]["DayTime"] = {}
	tRankingFunc_Info[23193]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[23193]["Reset"] = 1
	tRankingFunc_Info[23193]["Global"] = {52968,52969,52970,52971}
	tRankingFunc_Info[23193]["BeforeGlobal"] = {52972,52973,52974,52975}
	tRankingFunc_Info[23193]["RankNum"] = 10
	tRankingFunc_Info[23193]["RankMode"] = 1
	
	tRankingFunc_Info[23193]["Mail"] = {}
	tRankingFunc_Info[23193]["Mail"]["ActiveTime"] = tActivityTime["TreasureHuntPagodas"]["LastActTime"]
	tRankingFunc_Info[23193]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[23193]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[23193]["Mail"]["Reward"] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[23193]["Mail"]["Reward"][1]["ActionId"] = 569830
	tRankingFunc_Info[23193]["Mail"]["Reward"][1]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][1]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][1]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][1]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][1]
	tRankingFunc_Info[23193]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[23193]["Mail"]["Reward"][2]["ActionId"] = 569831
	tRankingFunc_Info[23193]["Mail"]["Reward"][2]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][2]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][2]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][2]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][2]
	tRankingFunc_Info[23193]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[23193]["Mail"]["Reward"][3]["ActionId"] = 569832
	tRankingFunc_Info[23193]["Mail"]["Reward"][3]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][3]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][3]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][3]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][3]
	tRankingFunc_Info[23193]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[23193]["Mail"]["Reward"][4]["ActionId"] = 569833
	tRankingFunc_Info[23193]["Mail"]["Reward"][4]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][4]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][4]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][4]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][4]
	tRankingFunc_Info[23193]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[23193]["Mail"]["Reward"][5]["ActionId"] = 569834
	tRankingFunc_Info[23193]["Mail"]["Reward"][5]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][5]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][5]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][5]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][5]
	tRankingFunc_Info[23193]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[23193]["Mail"]["Reward"][6]["ActionId"] = 569835
	tRankingFunc_Info[23193]["Mail"]["Reward"][6]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][6]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][6]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][6]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][6]
	tRankingFunc_Info[23193]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[23193]["Mail"]["Reward"][7]["ActionId"] = 569835
	tRankingFunc_Info[23193]["Mail"]["Reward"][7]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][7]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][7]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][7]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][7]
	tRankingFunc_Info[23193]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[23193]["Mail"]["Reward"][8]["ActionId"] = 569835
	tRankingFunc_Info[23193]["Mail"]["Reward"][8]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][8]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][8]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][8]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][8]
	tRankingFunc_Info[23193]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[23193]["Mail"]["Reward"][9]["ActionId"] = 569835
	tRankingFunc_Info[23193]["Mail"]["Reward"][9]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][9]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][9]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][9]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][9]
	tRankingFunc_Info[23193]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[23193]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[23193]["Mail"]["Reward"][10]["ActionId"] = 569835
	tRankingFunc_Info[23193]["Mail"]["Reward"][10]["ExistDay"] = 30
	tRankingFunc_Info[23193]["Mail"]["Reward"][10]["Title"] = tTreasureHuntPagodas_Text["ActivityMail"]["Title"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][10]["Sender"] = tTreasureHuntPagodas_Text["ActivityMail"]["Sender"]
	tRankingFunc_Info[23193]["Mail"]["Reward"][10]["Content"] = tTreasureHuntPagodas_Text["ActivityMail"]["Content"][10]
	
	--光效
	local tTreasureHuntPagodas_Effect = {}
		tTreasureHuntPagodas_Effect[1] = "self"
		tTreasureHuntPagodas_Effect[2] = "zf2-e128"
	
	local tTreasureHuntPagodas_MapEffect = {}
	--骰子的
	tTreasureHuntPagodas_MapEffect[0] = "CountB0"
	tTreasureHuntPagodas_MapEffect[1] = "CountB1"
	tTreasureHuntPagodas_MapEffect[2] = "CountB2"
	tTreasureHuntPagodas_MapEffect[3] = "CountB3"
	tTreasureHuntPagodas_MapEffect[4] = "CountB4"
	tTreasureHuntPagodas_MapEffect[5] = "CountB5"
	tTreasureHuntPagodas_MapEffect[6] = "CountB6"
	tTreasureHuntPagodas_MapEffect[7] = "CountB7"
	tTreasureHuntPagodas_MapEffect[8] = "CountB8"
	tTreasureHuntPagodas_MapEffect[9] = "CountB9"
	tTreasureHuntPagodas_MapEffect[10] = "task010"
	tTreasureHuntPagodas_MapEffect[11] = "task011"
	
local tTreasureHuntPagodas_log = {}
tTreasureHuntPagodas_log["EmoneyLog"] = {}
tTreasureHuntPagodas_log["EmoneyLog"][1] = "1000	00047"
tTreasureHuntPagodas_log["EmoneyLog"][2] = "1000	00048"
tTreasureHuntPagodas_log["EmoneyLog"][3] = "1000	00049"
tTreasureHuntPagodas_log["EmoneyLog"][4] = "1000	00083"
tTreasureHuntPagodas_log["OutTimelog"] = "0,0,%d,1,10002436,2,0,0"
tTreasureHuntPagodas_log["CostNum"] = "0,0,0,0,10002436,1[9],0,0"
----------------------------------NPC逻辑--------------------------------------

function TreasureHuntPagodas_EnterInstance(nNpcId)
	local nUserId = Get_UserId()
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nLevel = tTreasureHuntPagodas_Cont["Level"]
	local nMete = tTreasureHuntPagodas_Cont["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	--组队不能进入
	if Get_UserTeamNumbers(nUserId) >= 2 then
		Sys_MsgBox(tTreasureHuntPagodas_Text["MsgTeam"])
		return
	end
	
	local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
	local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
	local nEvent3 = tTreasureHuntPagodas_Stc[3]["EventType"]
	local nType3 = tTreasureHuntPagodas_Stc[3]["DataType"]
	--隔天重置掩码
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
	end
	
	if Task_ChkStcValue(nEvent2,nType2,"==",0) then
		--传送到第一层
		
		local nEvent4 = tTreasureHuntPagodas_Stc[4]["EventType"]
		local nType4 = tTreasureHuntPagodas_Stc[4]["DataType"]
		
		if Task_StcInterval(nEvent4,nType4,1,4) then
			Task_SetStatistic(nEvent4,nType4,0,1)
			Task_SetStcTimestamp(nEvent4,nType4,0)
		end
		
		--记入副本层数()
		Task_SetStatistic(nEvent2,nType2,1,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
		
		--进入副本
		local nInstanceId = tTreasureHuntPagodas_Cont["InstanceId"]
		
		-- local nInstanceMap = User_CreateInstance(nInstanceId,nUserId)
		
		if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
		
			local nEvent1 = tTreasureHuntPagodas_Stc[1]["EventType"]
			local nType1 = tTreasureHuntPagodas_Stc[1]["DataType"]
			
			--隔天重置掩码
			if Task_StcInterval(nEvent1,nType1,1,4) then
				Task_SetStatistic(nEvent1,nType1,0,1)
				Task_SetStcTimestamp(nEvent1,nType1,0)
			end
			
			if not Task_ChkStcValue(nEvent1,nType1,">=",1) then
				Task_SetStatistic(nEvent1,nType1,1,1)
				Task_SetStcTimestamp(nEvent1,nType1,0)
			
				RewardTemplate_Reward(tTreasureHuntPagodas_RewandItem["DayReward"][1])
			end
		
			
			--重置玩家打开宝箱个数
			local nEvent11 = tTreasureHuntPagodas_Stc[11]["EventType"]
			local nType11 = tTreasureHuntPagodas_Stc[11]["DataType"]
			Task_SetStatistic(nEvent11,nType11,0,1)
			Task_SetStcTimestamp(nEvent11,nType11,0)
			
			--打掩码，重置当前层数打开次数
			Task_SetStatistic(nEvent4,nType4,0,1)
			Task_SetStcTimestamp(nEvent4,nType4,0)
			
			local nEvent5 = tTreasureHuntPagodas_Stc[5]["EventType"]
			local nType5 = tTreasureHuntPagodas_Stc[5]["DataType"]
			--重置当前打开奖励
			Task_SetStatistic(nEvent5,nType5,0,1)
			Task_SetStcTimestamp(nEvent5,nType5,0)
			
			local nEvent6 = tTreasureHuntPagodas_Stc[6]["EventType"]
			local nType6 = tTreasureHuntPagodas_Stc[6]["DataType"]
			--重置当前打开奖励
			Task_SetStatistic(nEvent6,nType6,0,1)
			Task_SetStcTimestamp(nEvent6,nType6,0)
			
			local nEvent12 = tTreasureHuntPagodas_Stc[12]["EventType"]
			local nType12 = tTreasureHuntPagodas_Stc[12]["DataType"]
			
			--重置哪吒奖励领取
			Task_SetStatistic(nEvent12,nType12,0,1)
			Task_SetStcTimestamp(nEvent12,nType12,0)
			
			
			--创建副本npc
			local nTypeNpc = tTreasureHuntPagodas_Cont["nNpcType"][1]
			local flat,tNum = Probabil_RandomAward(tTreasureHuntPagodas_RandomNpc["RandomNpc"],1)
			-- 是否为激情服
			if SpecialServer_ChkNoGiftServer() then
				flat,tNum = Probabil_RandomAward(tTreasureHuntPagodas_NoGiftRandomNpc["RandomNpc"],1)
			end
			
			local nIndex = tNum[1]["tAward"][1]["Item_1"]
			TreasureHuntPagodas_CreateInstanceNpc(nTypeNpc,nIndex,nUserId)
			
			Task_SetStatistic(nEvent3,nType3,nIndex,1)
			Task_SetStcTimestamp(nEvent3,nType3,0)
			
			
			local nData2 = Get_UserStatisticValue(nEvent2,nType2)
			local sUserName = Get_UserName(nUserId)
			if nTypeNpc == 1 then
				local sReward = tTreasureHuntPagodas_Text["reward"][nIndex]
				-- Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["MsgFloor"][1],nData2,sReward))
				User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["TalkFloor"][1],nData2,sReward))
			elseif nTypeNpc == 2 then
				-- Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["MsgFloor"][2],nData2))
				User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["TalkFloor"][2],nData2))
				Sys_SystemBroadcast(string.format(tTreasureHuntPagodas_Text["BroadCastFloor"][1],sUserName,nData2))
			else
				-- Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["MsgFloor"][3],nData2))
				User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["TalkFloor"][3],nData2))
				Sys_SystemBroadcast(string.format(tTreasureHuntPagodas_Text["BroadCastFloor"][2],sUserName,nData2))
			end
			--%5创建哪吒
			if Sys_Random(tTreasureHuntPagodas_Cont["RandomNum"],tTreasureHuntPagodas_Cont["ChanceSum"]) then
				local nMapId = Get_UserMapId(nUserId)
				local nPosX = tTreasureHuntPagodas_Npc["PoxX"]
				local nPosY = tTreasureHuntPagodas_Npc["PoxY"]
				local sName = tTreasureHuntPagodas_Text["NpcName1"]
				local nTask0 = tTreasureHuntPagodas_Npc["Task0"]
				local nLookface = tTreasureHuntPagodas_Npc["Lookface"]
				Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
			end
			
			
			local nNumEffect = {}
			local nSum = 1
			nNumEffect[1] = 0
			nNumEffect[2] = 0
			nNumEffect[3] = 0
			
			
			
			nNumEffect[1] = math.floor(nData2/100)
			nNumEffect[2] = math.floor(math.floor((nData2-nNumEffect[1]*100)/10))
			nNumEffect[3] = math.floor(nData2%10)
			
			
			local nUserMapId = Get_UserMapId(nUserId)
			local nUserPositionX = tTreasureHuntPagodas_position["HuntPosX"]
			local nUserPositionY = tTreasureHuntPagodas_position["HuntPosY"]
			
			if nNumEffect[1] == 0 then
				
				nUserPositionX = tTreasureHuntPagodas_position["HuntPosX1"]
				nUserPositionY = tTreasureHuntPagodas_position["HuntPosY1"]
				nSum = nSum + 1
				if nNumEffect[2] == 0 then
					nUserPositionX = tTreasureHuntPagodas_position["HuntPosX2"]
					nUserPositionY = tTreasureHuntPagodas_position["HuntPosY2"]
					nSum = nSum + 1
				end
			end
			
			
			for i = nSum,3 do
				local sEffect = tTreasureHuntPagodas_MapEffect[nNumEffect[i]]
				Map_Effect(nUserMapId,nUserPositionX+i,nUserPositionY-i,sEffect)
			end
			
			-- local nUserPositionX1 = tTreasureHuntPagodas_position["HuntPosX1"]
			-- local nUserPositionY1 = tTreasureHuntPagodas_position["HuntPosY1"]
			
			-- Map_Effect(nUserMapId,47,52,tTreasureHuntPagodas_MapEffect[10])
			-- Map_Effect(nUserMapId,52,47,tTreasureHuntPagodas_MapEffect[11])
			
			
			
		end
	else
		
		--传送到第当前玩家所在层数

		-- local nPosX = tTreasureHuntPagodas_position["HuntPosX"]
		-- local nPosY = tTreasureHuntPagodas_position["HuntPosY"]
		-- User_UserRandBoundTrans(nUserdMapId,nPosX,nPosY,1,1,1)
		--进入副本
		-- local nInstanceId = tTreasureHuntPagodas_Cont["InstanceId"]
		-- User_EnterInstance(nInstanceId,0,0,0,nUserId,nUserdMapId) 
		
		local nInstanceId = tTreasureHuntPagodas_Cont["InstanceId"]
		
		-- local nInstanceMap = User_CreateInstance(nInstanceId,nUserId)
		
		if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
		
			local nTypeNpc = 0
			local nData2 = Get_UserStatisticValue(nEvent2,nType2)
			-- 检测层数
			if nData2 % 5 == 0 and nData2 % 10 ~=0 then --遇5
				nTypeNpc = tTreasureHuntPagodas_Cont["nNpcType"][2]
			elseif nData2 % 5 == 0 and nData2 % 10 ==0 then -- 遇10
				nTypeNpc = tTreasureHuntPagodas_Cont["nNpcType"][3]
			else
				nTypeNpc = tTreasureHuntPagodas_Cont["nNpcType"][1]
			end
			
			--创建副本npc
			local nIndex = Get_UserStatisticValue(nEvent3,nType3)
			TreasureHuntPagodas_CreateInstanceNpc(nTypeNpc,nIndex,nUserId)
			
			if nData2 < 1000 then
				local nNumEffect = {}
				local nSum = 1
				nNumEffect[1] = 0
				nNumEffect[2] = 0
				nNumEffect[3] = 0
				
				
				
				nNumEffect[1] = math.floor(nData2/100)
				nNumEffect[2] = math.floor(math.floor((nData2-nNumEffect[1]*100)/10))
				nNumEffect[3] = math.floor(nData2%10)
				
				
				local nUserMapId = Get_UserMapId(nUserId)
				local nUserPositionX = tTreasureHuntPagodas_position["HuntPosX"]
				local nUserPositionY = tTreasureHuntPagodas_position["HuntPosY"]
				
				if nNumEffect[1] == 0 then
					
					nUserPositionX = tTreasureHuntPagodas_position["HuntPosX1"]
					nUserPositionY = tTreasureHuntPagodas_position["HuntPosY1"]
					nSum = nSum + 1
					if nNumEffect[2] == 0 then
						nUserPositionX = tTreasureHuntPagodas_position["HuntPosX2"]
						nUserPositionY = tTreasureHuntPagodas_position["HuntPosY2"]
						nSum = nSum + 1
					end
				end
			
			
				for i = nSum,3 do
					local sEffect = tTreasureHuntPagodas_MapEffect[nNumEffect[i]]
					Map_Effect(nUserMapId,nUserPositionX+i,nUserPositionY-i,sEffect)
				end
				
				-- local nUserPositionX1 = tTreasureHuntPagodas_position["HuntPosX1"]
				-- local nUserPositionY1 = tTreasureHuntPagodas_position["HuntPosY1"]
				
				-- Map_Effect(nUserMapId,47,52,tTreasureHuntPagodas_MapEffect[10])
				-- Map_Effect(nUserMapId,52,47,tTreasureHuntPagodas_MapEffect[11])
			end
		end
	end
	
end

--创建副本npc
function TreasureHuntPagodas_CreateInstanceNpc(nTypeNpc,nIndex,nUserId)
	local nEvent4 = tTreasureHuntPagodas_Stc[4]["EventType"]
	local nType4 = tTreasureHuntPagodas_Stc[4]["DataType"]
	
	if Task_StcInterval(nEvent4,nType4,1,4) then
		Task_SetStatistic(nEvent4,nType4,0,1)
		Task_SetStcTimestamp(nEvent4,nType4,0)
	end
	
	for i = 1, 4 do
		local nValue = Get_UserStatisticValue(nEvent4,nType4)
		
		if not Sys_ParseNumbersContain(2^(i-1),nValue) then
			--+已打开对白
			
			local nMapId = Get_UserMapId(nUserId)
			local nPosX = tTreasureHuntPagodas_Cont["Instance"][i]["PoxX"]
			local nPosY = tTreasureHuntPagodas_Cont["Instance"][i]["PoxY"]
			local sName = tTreasureHuntPagodas_Text["NpcName"][i]
			local nTask0 = tTreasureHuntPagodas_Cont["Task0"][nTypeNpc][nIndex][i]
			local nLookface = tTreasureHuntPagodas_Cont["Lookface"][nTypeNpc]
			
			Npc_DelDynaNpc(nMapId, "name" , sName)
			Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
		end
		
	end
end

-- npc执行
function TreasureHuntPagodas_NpcMain(nNpcId,nReawadIndex,nNpcStc)
	
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		return
	end
	
	local nLevel = tTreasureHuntPagodas_Cont["Level"]
	local nMete = tTreasureHuntPagodas_Cont["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return
	end
	
	local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
	local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
	--隔天重置掩码
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
	end
	
	-- 玩家层数为0，直接传送回去
	if Task_ChkStcValue(nEvent2,nType2,"==",0) then
		local nMapId = tTreasureHuntPagodas_position["MapId"]
		local nPosX =tTreasureHuntPagodas_position["PosX"]
		local nPosY = tTreasureHuntPagodas_position["PosY"]
		
		--激情服
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tTreasureHuntPagodas_position["NoGiftMapId"]
			nPosX = tTreasureHuntPagodas_position["NoGiftPosX"]
			nPosY = tTreasureHuntPagodas_position["NoGiftPosY"]
		end
		
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1)
		
		--对白
		return
	end
	
	local nData2 = Get_UserStatisticValue(nEvent2,nType2)
	local nFloorIndex -- 识别位
	
	if nData2 % 5 == 0 and nData2 % 10 ~=0 then --遇5
		nFloorIndex = 1
	elseif nData2 % 5 == 0 and nData2 % 10 ==0 then -- 遇10
		nFloorIndex = 2
	else
		nFloorIndex = 0
	end
	
	local nEvent6 = tTreasureHuntPagodas_Stc[6]["EventType"]
	local nType6 = tTreasureHuntPagodas_Stc[6]["DataType"]
	
	local nEvent11 = tTreasureHuntPagodas_Stc[11]["EventType"]
	local nType11 = tTreasureHuntPagodas_Stc[11]["DataType"]
	local nCost = Get_UserStatisticValue(nEvent11,nType11)
	--检测每层免费
	if Task_ChkStcValue(nEvent6,nType6,"==",0) then
		tNpcGossip[nNpcId]["OptionFunc111"]="tTreasureHuntPagodas_CostOpenLinkRight</N>"..nNpcId.."</N>"..nReawadIndex.."</N>"..nNpcStc.."</N>"..nFloorIndex.."</N>"..nCost
		-- tNpcGossip[nNpcId]["Option111"] = tTreasureHuntPagodas_Text[nNpcId]["Option111"]
	else
		tNpcGossip[nNpcId]["OptionFunc121"]="tTreasureHuntPagodas_CostOpenLinkRight</N>"..nNpcId.."</N>"..nReawadIndex.."</N>"..nNpcStc.."</N>"..nFloorIndex.."</N>"..nCost
		-- tNpcGossip[nNpcId]["Option211"] = tTreasureHuntPagodas_Text[nNpcId]["Option112"]
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")

end

--花费天石打开宝箱
function tTreasureHuntPagodas_CostOpenLinkRight(nNpcId,nReawadIndex,nNpcStc,nFloorIndex,nCost)
	local nUserId = Get_UserId()
	-- 判断时间

	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		return
	end
	
	--判断等级
	local nLevel = tTreasureHuntPagodas_Cont["Level"]
	local nMete = tTreasureHuntPagodas_Cont["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return
	end
	--
	local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
	local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
	
	--隔天重置掩码
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
	end
	--玩家层数为0，直接传送回去
	if Task_ChkStcValue(nEvent2,nType2,"==",0) then
		local nMapId = tTreasureHuntPagodas_position["MapId"]
		local nPosX =tTreasureHuntPagodas_position["PosX"]
		local nPosY = tTreasureHuntPagodas_position["PosY"]
		
		--激情服
		if SpecialServer_ChkNoGiftServer() then
			nMapId = tTreasureHuntPagodas_position["NoGiftMapId"]
			nPosX = tTreasureHuntPagodas_position["NoGiftPosX"]
			nPosY = tTreasureHuntPagodas_position["NoGiftPosY"]
		end
		
		
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1)
		
		--对白
		return
	end
	
	
	
	--宝箱是否被开启过
	local nEvent4 = tTreasureHuntPagodas_Stc[4]["EventType"]
	local nType4 = tTreasureHuntPagodas_Stc[4]["DataType"]
	
	if Task_StcInterval(nEvent4,nType4,1,4) then
		Task_SetStatistic(nEvent4,nType4,0,1)
		Task_SetStcTimestamp(nEvent4,nType4,0)
	end
	
	local nValue = Get_UserStatisticValue(nEvent4,nType4)
	
	if Sys_ParseNumbersContain(nNpcStc,nValue) then
		--+已打开对白
		return
	end
	
	
	
	--天石检测
	local nEmoney = tTreasureHuntPagodas_Cont["CostEmoney"][nCost]
	
	-- 遇5天石减半
	if nFloorIndex == 1 then
		nEmoney = tTreasureHuntPagodas_Cont["DisCostEmoney"][nCost]
	end
	
	-- if nCost == 1 then
		-- nEmoney = 0
	-- end
	
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		User_TalkChannel2005(tTreasureHuntPagodas_Text["MsgNoEmoney"])
		return
	end
	
	local nGlobalId = tTreasureHuntPagodas_Cont["GlobalId"]
	local nGlobalData = 0
	if nEmoney ~= 0 then
		nGlobalData = Get_SysDynaGlobalData(nGlobalId,0)
		
		if nGlobalData >= tTreasureHuntPagodas_Cont["CostNum"] then
			Sys_MsgBox(tTreasureHuntPagodas_Text["CostNum"])
			Sys_SaveActionFestivalLog(tTreasureHuntPagodas_log["CostNum"])
			return
		end
		
	end
	
	-- 背包空间
	local nSpace = RewardTemplate_GetRandomSpace(tTreasureHuntPagodas_RewandItem["RewandMaterials"],nReawadIndex)
	
	if nFloorIndex == 2 then
		nSpace = RewardTemplate_GetRandomSpace(tTreasureHuntPagodas_RewandItem["DouRewandMaterials"],nReawadIndex)
	end
	
	if not(User_CheckLeftSpace(nSpace)) then
		--提示
		Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["MsgSpace"],nSpace))
		return 
	end
	
	
	
	local nEvent5 = tTreasureHuntPagodas_Stc[5]["EventType"]
	local nType5 = tTreasureHuntPagodas_Stc[5]["DataType"]
	
	if Task_StcInterval(nEvent5,nType5,1,4) then
		Task_SetStatistic(nEvent5,nType5,0,1)
		Task_SetStcTimestamp(nEvent5,nType5,0)
	end
	
	
	--奖励被打开
	local nRewardValue = Get_UserStatisticValue(nEvent5,nType5)
	--检测奖励
	local tAward = CommonFunc_Copy(tTreasureHuntPagodas_RewandItem["RewandMaterials"])
	
	-- 遇10奖励翻倍
	if nFloorIndex == 2 then
		tAward = CommonFunc_Copy(tTreasureHuntPagodas_RewandItem["DouRewandMaterials"])
	end
	
	if Sys_ParseNumbersContain(1,nRewardValue) then
		tAward[nReawadIndex]["ItemChanceSum"] = tAward[nReawadIndex]["ItemChanceSum"] - tAward[nReawadIndex][1]["ItemChance"]
		tAward[nReawadIndex][1]["ItemChance"] = 0
	end
	
	if Sys_ParseNumbersContain(2,nRewardValue) then
		tAward[nReawadIndex]["ItemChanceSum"] = tAward[nReawadIndex]["ItemChanceSum"] - tAward[nReawadIndex][2]["ItemChance"]
		tAward[nReawadIndex][2]["ItemChance"] = 0
		
	end
	
	if Sys_ParseNumbersContain(4,nRewardValue) then
		tAward[nReawadIndex]["ItemChanceSum"] = tAward[nReawadIndex]["ItemChanceSum"] - tAward[nReawadIndex][3]["ItemChance"]
		tAward[nReawadIndex][3]["ItemChance"] = 0
		
	end
	
	if Sys_ParseNumbersContain(8,nRewardValue) then
		tAward[nReawadIndex]["ItemChanceSum"] = tAward[nReawadIndex]["ItemChanceSum"] - tAward[nReawadIndex][4]["ItemChance"]
		tAward[nReawadIndex][4]["ItemChance"] = 0
	end
	
	local sEmoneyBuyLog = tTreasureHuntPagodas_log["EmoneyLog"][1]
	
	if nFloorIndex == 1 then
		sEmoneyBuyLog = tTreasureHuntPagodas_log["EmoneyLog"][2]
	end
	
	if nCost == 1 then
		sEmoneyBuyLog = tTreasureHuntPagodas_log["EmoneyLog"][3]
	end
	
	if User_AddEMoneyAndLog(-nEmoney,sEmoneyBuyLog,nUserId) then
		-- Sys_SaveEmoneyBuy(sEmoneyBuyLog)
		
		if nEmoney ~= 0 then
			nGlobalData = nGlobalData + 1
			Sys_SetSynaGlobalData(nGlobalId,0,nGlobalData)
		end
		
		--免费已开启
		local nEvent6 = tTreasureHuntPagodas_Stc[6]["EventType"]
		local nType6 = tTreasureHuntPagodas_Stc[6]["DataType"]
		Task_SetStatistic(nEvent6,nType6,1,1)
		Task_SetStcTimestamp(nEvent6,nType6,0)
		
		--记录玩家打开宝箱个数
		local nEvent11 = tTreasureHuntPagodas_Stc[11]["EventType"]
		local nType11 = tTreasureHuntPagodas_Stc[11]["DataType"]
		Task_AddStatistic(nEvent11,nType11,1,1)
		Task_SetStcTimestamp(nEvent11,nType11,0)
		
		
		--开宝箱
		nValue = nValue + nNpcStc
		Task_SetStatistic(nEvent4,nType4,nValue,1)
		Task_SetStcTimestamp(nEvent4,nType4,0)
		
		local tReward = RewardTemplate_NewRandom(tAward,nReawadIndex)
		local nStcData = tReward[1]["tAward"][1]["StcData"]
		local nData5 = Get_UserStatisticValue(nEvent5,nType5)
		local nData2 = Get_UserStatisticValue(nEvent2,nType2)
		
		nData5 = nData5 + nStcData
		
		Task_SetStatistic(nEvent5,nType5,nData5,1)
		Task_SetStcTimestamp(nEvent5,nType5,0)
		
		local nBroadCastIndex = tReward[1]["tAward"][1]["BroadCastIndex"]
		local sRewardBroadCast = tTreasureHuntPagodas_Text["RewardBroadCast"]
		
		
		
		if nFloorIndex == 2 then
			sRewardBroadCast = tTreasureHuntPagodas_Text["DouRewardBroadCast"]
		end
		
		if nBroadCastIndex ~= nil then
			local sUserName = Get_UserName(nUserId)
			Sys_SystemBroadcast(string.format(sRewardBroadCast[nReawadIndex],sUserName,nData2))
		end
		local sAward = ""
		if tReward[1]["tAward"][1]["RewardItem"] ~= nil then
			local tItemAttr = Sys_Split(tReward[1]["tAward"][1]["RewardItem"][1]["Attr"]," ")
			local nNum = tonumber(tItemAttr[2])
			local nMonopoly = tonumber(tItemAttr[3])
			local nItemId1 = tReward[1]["tAward"][1]["RewardItem"][1]["Id"]
			local sItemName = tRewardTemplate_Text["ItemName"][nItemId1] or Get_ItemtypeName(nItemId1)
			
			if nMonopoly == nil then
				nMonopoly = 0
			end
			
			
			
			if Sys_ParseNumbersContain(1,nMonopoly) then
				sItemName = sItemName .. tRewardTemplate_Text["Gift"]
			end
			
			
			sAward = sItemName.."*"..nNum
		end
		
		if tReward[1]["tAward"][1]["RewardStrengthValue"] ~= nil then
			sAward = string.format(tRewardTemplate_Text["RewardStrengthValue"], tReward[1]["tAward"][1]["RewardStrengthValue"]["Value"])
		end
		
		if tReward[1]["tAward"][1]["RewardRepairValue"] ~= nil then
			sAward = string.format(tRewardTemplate_Text["RewardRepairValue"], tReward[1]["tAward"][1]["RewardRepairValue"]["Value"])
		end
		
		Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["RewardItem"],sAward))
		User_EffectAdd(tTreasureHuntPagodas_Effect[1],tTreasureHuntPagodas_Effect[2])
		User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["RewardNum"],nData2))
		--每日排行榜
		TreasureHuntPagodas_EverydayRanking(nData2)
		
		--活动期间排行榜
		TreasureHuntPagodas_ActRanking(nData2)
		
		--阶段奖励
		TreasureHuntPagodas_BoxStageReward()
		
		local nNpcIndex = tTreasureHuntPagodas_NpcNameIndex[nNpcStc]
		local nNpcName = tTreasureHuntPagodas_Text["NpcName"][nNpcIndex]
		local nNpcMapId = Get_UserMapId(nUserId)
		
		Npc_DelDynaNpc(nNpcMapId, "name" , nNpcName)
		
	end
		
	
	
end


--检测npc对白
function TreasureHuntPagodas_ClkNpcText(nNpcId)
	if Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		local nEvent6 = tTreasureHuntPagodas_Stc[6]["EventType"]
		local nType6 = tTreasureHuntPagodas_Stc[6]["DataType"]
		
		local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
		local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
		if Task_StcInterval(nEvent2,nType2,1,4) then
			Task_SetStatistic(nEvent2,nType2,0,1)
			Task_SetStcTimestamp(nEvent2,nType2,0)
		end
		
		local nData2 = Get_UserStatisticValue(nEvent2,nType2)
		
		if Task_ChkStcValue(nEvent6,nType6,"==",0) then
			tNpcGossip[nNpcId]["tOption1-1"] = {111}
		else
			local nEvent11 = tTreasureHuntPagodas_Stc[11]["EventType"]
			local nType11 = tTreasureHuntPagodas_Stc[11]["DataType"]
			local nCost = Get_UserStatisticValue(nEvent11,nType11)
			local nEmoney = 0
			if nData2 % 5 == 0 and nData2 % 10 ~=0 then --遇5
				nEmoney = tTreasureHuntPagodas_Cont["DisCostEmoney"][nCost]
			else
				nEmoney = tTreasureHuntPagodas_Cont["CostEmoney"][nCost]
			end
			tNpcGossip[nNpcId]["Text121"] = string.format(tTreasureHuntPagodas_Text[nNpcId]["Text121"],nEmoney)
			tNpcGossip[nNpcId]["Option112"] = string.format(tTreasureHuntPagodas_Text[nNpcId]["Option112"],nEmoney)
			tNpcGossip[nNpcId]["tOption1-1"] = {112}
		end
		
		tNpcGossip[nNpcId]["Text111"] = string.format(tTreasureHuntPagodas_Text[nNpcId]["Text111"],nData2)
		
		local nEvent5 = tTreasureHuntPagodas_Stc[5]["EventType"]
		local nType5 = tTreasureHuntPagodas_Stc[5]["DataType"]
		
		local nValue = Get_UserStatisticValue(nEvent5,nType5)
		if Sys_ParseNumbersContain(1,nValue) then
			tNpcGossip[nNpcId]["Text113"] = tTreasureHuntPagodas_Text[nNpcId]["Text1110"]
		else
			tNpcGossip[nNpcId]["Text113"] = tTreasureHuntPagodas_Text[nNpcId]["Text113"]
		end
		if Sys_ParseNumbersContain(2,nValue) then
			tNpcGossip[nNpcId]["Text114"] = tTreasureHuntPagodas_Text[nNpcId]["Text1111"]
		else
			tNpcGossip[nNpcId]["Text114"] = tTreasureHuntPagodas_Text[nNpcId]["Text114"]
		end
		if Sys_ParseNumbersContain(4,nValue) then
			tNpcGossip[nNpcId]["Text115"] = tTreasureHuntPagodas_Text[nNpcId]["Text1112"]
		else
			tNpcGossip[nNpcId]["Text115"] = tTreasureHuntPagodas_Text[nNpcId]["Text115"]
		end
		if Sys_ParseNumbersContain(8,nValue) then
			tNpcGossip[nNpcId]["Text116"] = tTreasureHuntPagodas_Text[nNpcId]["Text1113"]
		else
			tNpcGossip[nNpcId]["Text116"] = tTreasureHuntPagodas_Text[nNpcId]["Text116"]
		end
		
		return true
	else
		return false
	end
end

--每日排行榜
function TreasureHuntPagodas_EverydayRanking(nData)
	local nUserId = Get_UserId()
	local nEvent7 = tTreasureHuntPagodas_Stc[7]["EventType"]
	local nType7 = tTreasureHuntPagodas_Stc[7]["DataType"]
	
	--隔天重置掩码
	if Task_StcInterval(nEvent7,nType7,1,4) then
		Task_SetStatistic(nEvent7,nType7,0,1)
		Task_SetStcTimestamp(nEvent7,nType7,0)
	end
	local nRankId = tTreasureHuntPagodas_Cont["DayRankIndex"]
	--获取之前的排行榜名次
	local nBeforeRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	
	Task_AddStatistic(nEvent7,nType7,nData,1)
	Task_SetStcTimestamp(nEvent7,nType7,0)
	
	local nStcData7 = Get_UserStatisticValue(nEvent7,nType7)
	--写入排行榜
	RankingFunc_SetInfo(nRankId,nStcData7)
	--获取现在的排行榜名次
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	
	if nNowRank > nBeforeRank then
		Sys_SystemBroadcast(string.format(tTreasureHuntPagodas_Text["BroadcastRank"][1],Get_UserName(nUserId),nNowRank))
	end
end

--活动期间排行榜
function TreasureHuntPagodas_ActRanking(nData)
	local nUserId = Get_UserId()
	local nEvent8 = tTreasureHuntPagodas_Stc[8]["EventType"]
	local nType8 = tTreasureHuntPagodas_Stc[8]["DataType"]
	
	local nRankId = tTreasureHuntPagodas_Cont["ActRankIndex"]
	--获取之前的排行榜名次
	local nBeforeRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	
	Task_AddStatistic(nEvent8,nType8,nData,1)
	Task_SetStcTimestamp(nEvent8,nType8,0)
	
	local nStcData8 = Get_UserStatisticValue(nEvent8,nType8)
	--写入排行榜
	RankingFunc_SetInfo(nRankId,nStcData8)
	--获取现在的排行榜名次
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	
	if nNowRank > nBeforeRank then
		Sys_SystemBroadcast(string.format(tTreasureHuntPagodas_Text["BroadcastRank"][2],Get_UserName(nUserId),nNowRank))
	end
end
--阶段奖励
function TreasureHuntPagodas_BoxStageReward()
	local nUserId = Get_UserId()
	local nEvent9 = tTreasureHuntPagodas_Stc[9]["EventType"]
	local nType9 = tTreasureHuntPagodas_Stc[9]["DataType"]
	local nEvent10 = tTreasureHuntPagodas_Stc[10]["EventType"]
	local nType10 = tTreasureHuntPagodas_Stc[10]["DataType"]
	
	Task_AddStatistic(nEvent9,nType9,1,1)
	Task_SetStcTimestamp(nEvent9,nType9,0)
	
	local nData10 = Get_UserStatisticValue(nEvent10,nType10)
	
	if nData10 == nil or nData10 == 0 then
		nData10 = 0
	end
	
	
	if Task_ChkStcValue(nEvent10,nType10,">=",5) then
		return
	end
	
	local nBoxNum = tTreasureHuntPagodas_SendMail["BoxNum"][nData10+1]
	
	if Task_ChkStcValue(nEvent9,nType9,">=",nBoxNum) then
		local nActionId = tTreasureHuntPagodas_SendMail["StageAction"][nData10+1]
		local nExistDay = tTreasureHuntPagodas_SendMail["ExistDay"]
		local sSender = tTreasureHuntPagodas_Text["StageMail"]["Sender"]
		local sTitle = tTreasureHuntPagodas_Text["StageMail"]["Title"]
		local sContent = tTreasureHuntPagodas_Text["StageMail"]["Content"][nData10+1]
		Task_AddStatistic(nEvent10,nType10,1,1,nUserId)
		Task_SetStcTimestamp(nEvent10,nType10,0,nUserId)
		Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tTreasureHuntPagodas_Text["BroadCast"][nData10+1],sUserName))
	end
	
	
	
end


function TreasureHuntPagodas_NpcMain1(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

function tTreasureHuntPagodas_RewardItem(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	local nEvent12 = tTreasureHuntPagodas_Stc[12]["EventType"]
	local nType12 = tTreasureHuntPagodas_Stc[12]["DataType"]
	
	if Task_ChkStcValue(nEvent12,nType12,"==",1) then
		return
	end
	
	local nSpace = RewardTemplate_GetRandomSpace(tTreasureHuntPagodas_RewandItem[nNpcId],1)
	if not(User_CheckLeftSpace(nSpace)) then
	-- 提示
		User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["MsgSpace"],nSpace))
	return 
	end
	RewardTemplate_NewRandom(tTreasureHuntPagodas_RewandItem[nNpcId],1)
	local nUserId = Get_UserId()
	local nNpcName = tTreasureHuntPagodas_Text["NpcName1"]
	local nNpcMapId = Get_UserMapId(nUserId)
		
	Npc_DelDynaNpc(nNpcMapId, "name" , nNpcName)
	
	Task_SetStatistic(nEvent12,nType12,1,1)
	Task_SetStcTimestamp(nEvent12,nType12,0)
	
end

--打开天石商店
function TreasureHuntPagodas_OpenCpShop(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	User_OpenDialog(0,nNpcId,0)
end

function TreasureHuntPagodas_ChkBagItem(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		return false
	end
	
	if Item_ChkItem(nItemId) then
		return true
	else
		return false
	end
end

function TreasureHuntPagodas_ChkAllBagItem()
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		return false
	end
	for i = 1,4 do
		local nItemId = tTreasureHuntPagodas_Cont["ItemId"][i]
		if Item_ChkItem(nItemId) then
			return false
		end
	end
	
	return true
end

--购买风火轮
function TreasureHuntPagodas_CpShopItem(nNpcId,nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEmoney = tTreasureHuntPagodas_Cont["ShopEmoney"]
	
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		User_TalkChannel2005(tTreasureHuntPagodas_Text["NoEmoney"])
		return
	end
	
	
	local nSpace = RewardTemplate_GetRewardSpace(tTreasureHuntPagodas_RewandItem[nItemId][1])
	if not(User_CheckLeftSpace(nSpace)) then
	-- 提示
		User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["MsgShopSpace"],nSpace))
		return 
	end
	
	local sEmoneyBuyLog = tTreasureHuntPagodas_log["EmoneyLog"][4]
	
	if User_AddEMoneyAndLog(-nEmoney,sEmoneyBuyLog,nUserId) then
		RewardTemplate_Reward(tTreasureHuntPagodas_RewandItem[nItemId][1])
	end
	
end
--------------------------------物品逻辑--------------------------------------
-- 显著功勋礼包 3007108
function TreasureHuntPagodas_FeatsPack()
	-- 判断时间
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		return
	end
	
	--判断等级
	local nLevel = tTreasureHuntPagodas_Cont["Level"]
	local nMete = tTreasureHuntPagodas_Cont["Mete"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return
	end
	
	RewardTemplate_Reward(tTreasureHuntPagodas_RewandItem["DayReward"][2])
end

function TreasureHuntPagodas_Join(nFloorData)
		local nUserId = Get_UserId()
		local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
		local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
		
		local nEvent4 = tTreasureHuntPagodas_Stc[4]["EventType"]
		local nType4 = tTreasureHuntPagodas_Stc[4]["DataType"]
		
		if Task_StcInterval(nEvent4,nType4,1,4) then
			Task_SetStatistic(nEvent4,nType4,0,1)
			Task_SetStcTimestamp(nEvent4,nType4,0)
		end
		
		--记入副本层数()
		Task_SetStatistic(nEvent2,nType2,nFloorData,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
		
		
		local nMapId = tTreasureHuntPagodas_position["HuntMapId"]
		local nPosX =tTreasureHuntPagodas_position["HuntPosX"]
		local nPosY = tTreasureHuntPagodas_position["HuntPosY"]
		
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1)
		
		--进入副本
		local nInstanceId = tTreasureHuntPagodas_Cont["InstanceId"]
		
		-- local nInstanceMap = User_CreateInstance(nInstanceId,nUserId)
		
		if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
		
			
			--记录副本id
			local nEvent3 = tTreasureHuntPagodas_Stc[3]["EventType"]
			local nType3 = tTreasureHuntPagodas_Stc[3]["DataType"]
			
			
			--打掩码，重置当前层数打开次数
			Task_SetStatistic(nEvent4,nType4,0,1)
			Task_SetStcTimestamp(nEvent4,nType4,0)
			
			local nEvent5 = tTreasureHuntPagodas_Stc[5]["EventType"]
			local nType5 = tTreasureHuntPagodas_Stc[5]["DataType"]
			--重置当前打开奖励
			Task_SetStatistic(nEvent5,nType5,0,1)
			Task_SetStcTimestamp(nEvent5,nType5,0)
			
			local nEvent6 = tTreasureHuntPagodas_Stc[6]["EventType"]
			local nType6 = tTreasureHuntPagodas_Stc[6]["DataType"]
			--重置当前打开奖励
			Task_SetStatistic(nEvent6,nType6,0,1)
			Task_SetStcTimestamp(nEvent6,nType6,0)
			
			local nEvent11 = tTreasureHuntPagodas_Stc[11]["EventType"]
			local nType11 = tTreasureHuntPagodas_Stc[11]["DataType"]
			--重置玩家打开宝箱个数
			Task_SetStatistic(nEvent11,nType11,0,1)
			Task_SetStcTimestamp(nEvent11,nType11,0)
			
			local nEvent12 = tTreasureHuntPagodas_Stc[12]["EventType"]
			local nType12 = tTreasureHuntPagodas_Stc[12]["DataType"]
			
			--重置哪吒奖励领取
			Task_SetStatistic(nEvent12,nType12,0,1)
			Task_SetStcTimestamp(nEvent12,nType12,0)
			
			local nTypeNpc = 0
			local nData2 = Get_UserStatisticValue(nEvent2,nType2)
			-- 检测层数
			if nData2 % 5 == 0 and nData2 % 10 ~=0 then --遇5
				nTypeNpc = tTreasureHuntPagodas_Cont["nNpcType"][2]
			elseif nData2 % 5 == 0 and nData2 % 10 ==0 then -- 遇10
				nTypeNpc = tTreasureHuntPagodas_Cont["nNpcType"][3]
			else
				nTypeNpc = tTreasureHuntPagodas_Cont["nNpcType"][1]
			end
			
			--创建副本npc
			local flat,tNum = Probabil_RandomAward(tTreasureHuntPagodas_RandomNpc["RandomNpc"],1)
			local nIndex = tNum[1]["tAward"][1]["Item_1"]
			TreasureHuntPagodas_CreateInstanceNpc(nTypeNpc,nIndex,nUserId)
			
			
			Task_SetStatistic(nEvent3,nType3,nIndex,1)
			Task_SetStcTimestamp(nEvent3,nType3,0)
			
			if nTypeNpc == 1 then
				local sReward = tTreasureHuntPagodas_Text["reward"][nIndex]
				-- Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["MsgFloor"][1],nData2,sReward))
				User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["TalkFloor"][1],nData2,sReward))
			elseif nTypeNpc == 2 then
				-- Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["MsgFloor"][2],nData2))
				User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["TalkFloor"][2],nData2))
			else
				-- Sys_MsgBox(string.format(tTreasureHuntPagodas_Text["MsgFloor"][3],nData2))
				User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["TalkFloor"][3],nData2))
			end
			if nData2 < 1000 then
				local nNumEffect = {}
				local nSum = 1
				nNumEffect[1] = 0
				nNumEffect[2] = 0
				nNumEffect[3] = 0
				
				
				
				nNumEffect[1] = math.floor(nData2/100)
				nNumEffect[2] = math.floor(math.floor((nData2-nNumEffect[1]*100)/10))
				nNumEffect[3] = math.floor(nData2%10)
				
				
				local nUserMapId = Get_UserMapId(nUserId)
				local nUserPositionX = tTreasureHuntPagodas_position["HuntPosX"]
				local nUserPositionY = tTreasureHuntPagodas_position["HuntPosY"]
				
				if nNumEffect[1] == 0 then
					
					nUserPositionX = tTreasureHuntPagodas_position["HuntPosX1"]
					nUserPositionY = tTreasureHuntPagodas_position["HuntPosY1"]
					nSum = nSum + 1
					if nNumEffect[2] == 0 then
						nUserPositionX = tTreasureHuntPagodas_position["HuntPosX2"]
						nUserPositionY = tTreasureHuntPagodas_position["HuntPosY2"]
						nSum = nSum + 1
					end
				end
				
				
				
				
				for i = nSum,3 do
					local sEffect = tTreasureHuntPagodas_MapEffect[nNumEffect[i]]
					Map_Effect(nUserMapId,nUserPositionX+i,nUserPositionY-i,sEffect)
				end
				
				-- local nUserPositionX1 = tTreasureHuntPagodas_position["HuntPosX1"]
				-- local nUserPositionY1 = tTreasureHuntPagodas_position["HuntPosY1"]
				
				-- if nNumEffect[1] == 0 then
					
					-- nUserPositionX1 = tTreasureHuntPagodas_position["HuntPosX1"]
					-- nUserPositionY1 = tTreasureHuntPagodas_position["HuntPosY1"]
					
					-- if nNumEffect[2] == 0 then
						-- nUserPositionX1 = tTreasureHuntPagodas_position["HuntPosX2"]
						-- nUserPositionY1 = tTreasureHuntPagodas_position["HuntPosY2"]
	
					-- end
				-- end
				
				
				-- Map_Effect(nUserMapId,47,52,tTreasureHuntPagodas_MapEffect[10])
				-- Map_Effect(nUserMapId,52,47,tTreasureHuntPagodas_MapEffect[11])
			end
			--%5创建哪吒
			if Sys_Random(tTreasureHuntPagodas_Cont["RandomNum"],tTreasureHuntPagodas_Cont["ChanceSum"]) then
				local nMapId = Get_UserMapId(nUserId)
				local nPosX = tTreasureHuntPagodas_Npc["PoxX"]
				local nPosY = tTreasureHuntPagodas_Npc["PoxY"]
				local sName = tTreasureHuntPagodas_Text["NpcName1"]
				local nTask0 = tTreasureHuntPagodas_Npc["Task0"]
				local nLookface = tTreasureHuntPagodas_Npc["Lookface"]
				Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
			end
		end
end

function TreasureHuntPagodas_ChkChgMapItem(nNpcId,nItemId,nNumloor)
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	end
	
	if Item_ChkItem(nItemId)  then
		
		local nEvent6 = tTreasureHuntPagodas_Stc[6]["EventType"]
		local nType6 = tTreasureHuntPagodas_Stc[6]["DataType"]
		local nAddFloor = 0
		
		if nItemId == tTreasureHuntPagodas_Cont["ItemId"][1] then
			nAddFloor = 1
		elseif nItemId == tTreasureHuntPagodas_Cont["ItemId"][4] then 
			nAddFloor = nNumloor
		else 
			local flat,tNum = Probabil_RandomAward(tTreasureHuntPagodas_RandomFloor[nItemId],1)
			nAddFloor = tNum[1]["tAward"][1]["Item_1"]
		end
		
		
		if Task_ChkStcValue(nEvent6,nType6,"==",0) then
			
			Sys_MsgBox(tTreasureHuntPagodas_Text["MsgNoChk"],"TreasureHuntPagodas_UseChgMapItem</N>"..nItemId.."</N>"..nAddFloor)
		else
			
			TreasureHuntPagodas_UseChgMapItem(nItemId,nAddFloor)
		end
	else
		Sys_MsgBox(tTreasureHuntPagodas_Text["MsgNoItem"])
	end
	
end


function TreasureHuntPagodas_UseChgMapItem(nItemId,nAddFloor)
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		if Item_DelAllItemByType(nItemId) then
			Sys_MsgBox(tTreasureHuntPagodas_Text["ItemTimeOut"])
			Sys_SaveActionFestivalLog(string.format(tTreasureHuntPagodas_log["OutTimelog"],nItemId))
		end
		return
	end
	
	if Item_ChkItem(nItemId)  then
		local nUserId = Get_UserId()
		local nEvent3 = tTreasureHuntPagodas_Stc[3]["EventType"]
		local nType3 = tTreasureHuntPagodas_Stc[3]["DataType"]
		local nData3 = Get_UserStatisticValue(nEvent3,nType3)
		local nMapId = Get_UserMapId(nUserId)
		
		if Get_MapDoc(nMapId) == 1005 then
			--组队不能进入
			if Get_UserTeamNumbers(nUserId) >= 2 then
				Sys_MsgBox(tTreasureHuntPagodas_Text["MsgTeam"])
				return
			end
			
			local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
			local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
			
			--隔天重置掩码
			if Task_StcInterval(nEvent2,nType2,1,4) then
				Task_SetStatistic(nEvent2,nType2,0,1)
				Task_SetStcTimestamp(nEvent2,nType2,0)
			end
			--玩家层数为0，直接传送回去
			if Task_ChkStcValue(nEvent2,nType2,"==",0) then
				local nMapId = tTreasureHuntPagodas_position["MapId"]
				local nPosX =tTreasureHuntPagodas_position["PosX"]
				local nPosY = tTreasureHuntPagodas_position["PosY"]
				--激情服
				if SpecialServer_ChkNoGiftServer() then
					nMapId = tTreasureHuntPagodas_position["NoGiftMapId"]
					nPosX = tTreasureHuntPagodas_position["NoGiftPosX"]
					nPosY = tTreasureHuntPagodas_position["NoGiftPosY"]
				end
				
				
				User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1)
				--对白
				return
			end
			
			if Item_DelItem(nItemId) then
				
				local nData2 = Get_UserStatisticValue(nEvent2,nType2)
				nData2 = nData2 + nAddFloor
				
				if nData2 <=1 then
					nData2 = 1
				end
				TreasureHuntPagodas_Join(nData2)
			end
		else
			
			local nMapId = tTreasureHuntPagodas_position["MapId"]
			local nPosX = tTreasureHuntPagodas_position["PosX"]
			local nPosY = tTreasureHuntPagodas_position["PosY"]
			local nGotoNpcId = tTreasureHuntPagodas_position["NpcId"]
			
			if SpecialServer_ChkNoGiftServer() then
				nMapId = tTreasureHuntPagodas_position["NoGiftMapId"]
				nPosX = tTreasureHuntPagodas_position["NoGiftPosX"]
				nPosY = tTreasureHuntPagodas_position["NoGiftPosY"]
			end
			
			Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nGotoNpcId)
			
		end
	end
	
end

function TreasureHuntPagodas_UseItem(nItemId)
	if not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) then
		if Item_DelAllItemByType(nItemId) then
			Sys_MsgBox(tTreasureHuntPagodas_Text["ItemTimeOut"])
			Sys_SaveActionFestivalLog(string.format(tTreasureHuntPagodas_log["OutTimelog"],nItemId))
		end
		return
	end
	
	if Item_ChkItem(nItemId) then
		local nSpace = RewardTemplate_GetRandomSpace(tTreasureHuntPagodas_RewandItem[nItemId],1)
		if not(User_CheckLeftSpace(nSpace)) then
		-- 提示
			User_TalkChannel2005(string.format(tTreasureHuntPagodas_Text["MsgSpace"],nSpace))
		return 
		end
		
		if Item_DelItem(nItemId) then
			RewardTemplate_NewRandom(tTreasureHuntPagodas_RewandItem[nItemId],1)
		end
	end
end


--------------------------------陷阱逻辑-----------------------------
function TreasureHuntPagodas_ChgMap()
	local nMapId = tTreasureHuntPagodas_position["MapId"]
	local nPosX =tTreasureHuntPagodas_position["PosX"]
	local nPosY = tTreasureHuntPagodas_position["PosY"]
	
	if SpecialServer_ChkNoGiftServer() then
		nMapId = tTreasureHuntPagodas_position["NoGiftMapId"]
		nPosX = tTreasureHuntPagodas_position["NoGiftPosX"]
		nPosY = tTreasureHuntPagodas_position["NoGiftPosY"]
	end
	
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,1,1,1)

end

-----------------------------------------时间质检----------------------
function TreasureHuntPagodas_ClrGlobal()
	local nGlobalId = tTreasureHuntPagodas_Cont["GlobalId"]
	
	if not (tTreasureHuntPagodas_ClrGlobalTemp[1] == 1) then
		tTreasureHuntPagodas_ClrGlobalTemp[1] = 1
		Sys_SetSynaGlobalData(nGlobalId,0,0)
	end
end

function TreasureHuntPagodas_ClrData()
	tTreasureHuntPagodas_ClrGlobalTemp = {}
end

----------------------------------NPC模板---------------------------------------
tNpcFace[6297] = 14
tNpcFace[3116] = 165
tNpcFace[3117] = 1805
tNpcFace[3118] = 1806
tNpcFace[3119] = 1806
tNpcFace[3120] = 1807
tNpcFace[3121] = 1807
tNpcFace[3133] = 1900

tNpcGossip[23192] = tNpcGossip[23192] or DefaultNpc:new{}
tNpcGossip[23192]["OptionHidden"] = 1
tNpcGossip[23192]["DialogueText"] = tTreasureHuntPagodas_Text[23192]

-- 活动前
tNpcGossip[23192]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[23192]["tOption1-1"] = {111}
tNpcGossip[23192]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tTreasureHuntPagodas_Cont["BefTime"])
end

--活动后
tNpcGossip[23192]["Text1-2"] = {121,122,123}
tNpcGossip[23192]["tOption1-2"] = {121}
tNpcGossip[23192]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"])
end


-- 活动中(等级不足)
tNpcGossip[23192]["Text1-3"] = {131,132,133,134,135,136,137,138,139}
tNpcGossip[23192]["tOption1-3"] = {131}
tNpcGossip[23192]["ChkFunc1-3"] = function ()
	local nLevel = tTreasureHuntPagodas_Cont["Level"]
	local nMete = tTreasureHuntPagodas_Cont["Mete"]
	return  Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) and (not User_JudgeLevelAndMetempsychosis(nLevel,nMete))
end


--活动中
tNpcGossip[23192]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410}
tNpcGossip[23192]["tOption1-4"] = {141,142,144}
tNpcGossip[23192]["OptionFunc141"] = "TreasureHuntPagodas_EnterInstance</N>23192"
tNpcGossip[23192]["OptionFunc142"] = "TreasureHuntPagodas_OpenCpShop</N>23192"
-- tNpcGossip[23192]["OptionPoint143"] = "2-1"
tNpcGossip[23192]["OptionPoint144"] = "2-2"
-- tNpcGossip[23192]["OptionPoint145"] = "2-3"
tNpcGossip[23192]["ChkFunc1-5"] = function ()
	local nLevel = tTreasureHuntPagodas_Cont["Level"]
	local nMete = tTreasureHuntPagodas_Cont["Mete"]
	return Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"]) and User_JudgeLevelAndMetempsychosis(nLevel,nMete)
end
--每日排行榜
tNpcGossip[23192]["Text2-1"] = {211,212,213,214,215,216,217,218,2114,2115,2116}
tNpcGossip[23192]["tOption2-1"] = {211}
tNpcGossip[23192]["OptionPoint211"] = "3-1"
tNpcGossip[23192]["ChkFunc2-1"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["DayRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,5 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		
		local sText = Sys_CenterAline(sLeft,4,sMiddle,22,sRight,43)
		
		tNpcGossip[23192]["Text21"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text21"..(i+3)], sText)
	end
	
	local nEvent7 = tTreasureHuntPagodas_Stc[7]["EventType"]
	local nType7 = tTreasureHuntPagodas_Stc[7]["DataType"]
	--隔天重置掩码
	if Task_StcInterval(nEvent7,nType7,1,4) then
		Task_SetStatistic(nEvent7,nType7,0,1)
		Task_SetStcTimestamp(nEvent7,nType7,0)
	end
	local nStcData7 = Get_UserStatisticValue(nEvent7,nType7)
	local nUserId = Get_UserId()
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	if nNowRank == 0 then
		tNpcGossip[23192]["Text2116"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2116"],nStcData7)
	else
		tNpcGossip[23192]["Text2116"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2117"],nNowRank,nStcData7)
	end
	
	return true
end

tNpcGossip[23192]["Text2-2"] = {221,222,224,225,226,227,228,229,2210,2211,2212,2213,2214,2216,2217}
tNpcGossip[23192]["tOption2-2"] = {221}
tNpcGossip[23192]["OptionPoint221"] = "1-4"

tNpcGossip[23192]["Text2-3"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315,2316}
tNpcGossip[23192]["tOption2-3"] = {231}
tNpcGossip[23192]["OptionPoint231"] = "3-2"
tNpcGossip[23192]["ChkFunc2-3"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["ActRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,10 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		
		local sText = Sys_CenterAline(sLeft,4,sMiddle,22,sRight,43)
		
		tNpcGossip[23192]["Text23"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text23"..(i+3)], sText)
	end
	
	local nEvent8 = tTreasureHuntPagodas_Stc[8]["EventType"]
	local nType8 = tTreasureHuntPagodas_Stc[8]["DataType"]
	
	local nStcData8 = Get_UserStatisticValue(nEvent8,nType8)
	local nUserId = Get_UserId()
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	if nNowRank == 0 then
		tNpcGossip[23192]["Text2316"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2316"],nStcData8)
	else
		tNpcGossip[23192]["Text2316"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2317"],nNowRank,nStcData8)
	end
	return true
end

tNpcGossip[23192]["Text3-1"] = {311,312,313,314,315,316,317,318,3114,3115}
tNpcGossip[23192]["tOption3-1"] = {311}
tNpcGossip[23192]["OptionPoint311"] = "1-4"
tNpcGossip[23192]["ChkFunc3-1"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["DayRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,5 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			-- sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			-- sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		local sRight = tTreasureHuntPagodas_Text["DayRankReward"][i]
		
		local sText = Sys_CenterAline(sLeft,4,sMiddle,22,sRight,41)
		
		tNpcGossip[23192]["Text31"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text31"..(i+3)], sText)
	end
	
	return true
end

tNpcGossip[23192]["Text3-2"] = {321,322,323,324,325,326,327,328,329,3210,3211,3212,3213,3214,3215}
tNpcGossip[23192]["tOption3-2"] = {321}
tNpcGossip[23192]["OptionPoint321"] = "1-4"
tNpcGossip[23192]["ChkFunc3-2"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["ActRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,10 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			-- sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			-- sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		local sRight = tTreasureHuntPagodas_Text["ActRankReward"][i]
		
		local sText = Sys_CenterAline(sLeft,4,sMiddle,22,sRight,43)
		
		tNpcGossip[23192]["Text32"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text32"..(i+3)], sText)
	end
	
	return true
end

--哪吒
tNpcGossip[23193] = tNpcGossip[23193] or DefaultNpc:new{}
tNpcGossip[23193]["OptionHidden"] = 1
tNpcGossip[23193]["DialogueText"] = tTreasureHuntPagodas_Text[23193]

tNpcGossip[23193]["Text1-1"] = {111,112,113,114}
tNpcGossip[23193]["tOption1-1"] = {111}
tNpcGossip[23193]["OptionFunc111"] = "tTreasureHuntPagodas_RewardItem</N>23193"

tNpcGossip[23193]["Text1-2"] = {121,122,123}
tNpcGossip[23193]["tOption1-2"] = {121}


-- 玲珑宝箱(星陨石塔层)
tNpcGossip[23194] = tNpcGossip[23194] or DefaultNpc:new{}
tNpcGossip[23194]["OptionHidden"] = 1
tNpcGossip[23194]["DialogueText"] = tTreasureHuntPagodas_Text[23194]

tNpcGossip[23194]["Text1-1"] = {111,112,115,114,113,116,117,118}
tNpcGossip[23194]["tOption1-1"] = {111,112}
tNpcGossip[23194]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23194</N>1</N>1</N>1"
tNpcGossip[23194]["OptionPoint112"] = "1-2"
tNpcGossip[23194]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23194)
end

tNpcGossip[23194]["Text1-2"] = {121}
tNpcGossip[23194]["tOption1-2"] = {121,122}
tNpcGossip[23194]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23194</N>1</N>1</N>1"


-- 玲珑宝箱(气力塔层)
tNpcGossip[23195] = tNpcGossip[23195] or DefaultNpc:new{}
tNpcGossip[23195]["OptionHidden"] = 1
tNpcGossip[23195]["DialogueText"] = tTreasureHuntPagodas_Text[23195]

tNpcGossip[23195]["Text1-1"] = {111,112,115,114,113,116,117,118}
tNpcGossip[23195]["tOption1-1"] = {111,112}
tNpcGossip[23195]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>231954</N>1</N>1</N>1"
tNpcGossip[23195]["OptionPoint112"] = "1-2"
tNpcGossip[23195]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23195)
end

tNpcGossip[23195]["Text1-2"] = {121}
tNpcGossip[23195]["tOption1-2"] = {121,122}
tNpcGossip[23195]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23195</N>1</N>1</N>1"



-- 玲珑宝箱(赤炼石塔层)
tNpcGossip[23196] = tNpcGossip[23196] or DefaultNpc:new{}
tNpcGossip[23196]["OptionHidden"] = 1
tNpcGossip[23196]["DialogueText"] = tTreasureHuntPagodas_Text[23196]

tNpcGossip[23196]["Text1-1"] = {111,112,115,114,113,116,117,118}
tNpcGossip[23196]["tOption1-1"] = {111,112}
tNpcGossip[23196]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>231964</N>1</N>1</N>1"
tNpcGossip[23196]["OptionPoint112"] = "1-2"
tNpcGossip[23196]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23196)
end

tNpcGossip[23196]["Text1-2"] = {121}
tNpcGossip[23196]["tOption1-2"] = {121,122}
tNpcGossip[23196]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23196</N>1</N>1</N>1"



-- 玲珑宝箱(修为值塔层)
tNpcGossip[23197] = tNpcGossip[23197] or DefaultNpc:new{}
tNpcGossip[23197]["OptionHidden"] = 1
tNpcGossip[23197]["DialogueText"] = tTreasureHuntPagodas_Text[23197]

tNpcGossip[23197]["Text1-1"] = {111,112,115,114,113,116,117,118}
tNpcGossip[23197]["tOption1-1"] = {111,112}
tNpcGossip[23197]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>231974</N>1</N>1</N>1"
tNpcGossip[23197]["OptionPoint112"] = "1-2"
tNpcGossip[23197]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23197)
end

tNpcGossip[23197]["Text1-2"] = {121}
tNpcGossip[23197]["tOption1-2"] = {121,122}
tNpcGossip[23197]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23197</N>1</N>1</N>1"


-- 玲珑宝箱(神纹精粹塔层)
tNpcGossip[23198] = tNpcGossip[23198] or DefaultNpc:new{}
tNpcGossip[23198]["OptionHidden"] = 1
tNpcGossip[23198]["DialogueText"] = tTreasureHuntPagodas_Text[23198]

tNpcGossip[23198]["Text1-1"] = {111,112,115,114,113,116,117,118}
tNpcGossip[23198]["tOption1-1"] = {111,112}
tNpcGossip[23198]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>231984</N>1</N>1</N>1"
tNpcGossip[23198]["OptionPoint112"] = "1-2"
tNpcGossip[23198]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23198)
end

tNpcGossip[23198]["Text1-2"] = {121}
tNpcGossip[23198]["tOption1-2"] = {121,122}
tNpcGossip[23198]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23198</N>1</N>1</N>1"


-- 玲珑宝箱(特殊经验塔层)
tNpcGossip[23199] = tNpcGossip[23199] or DefaultNpc:new{}
tNpcGossip[23199]["OptionHidden"] = 1
tNpcGossip[23199]["DialogueText"] = tTreasureHuntPagodas_Text[23199]

tNpcGossip[23199]["Text1-1"] = {111,112,115,114,113,116,117,118}
tNpcGossip[23199]["tOption1-1"] = {111,112}
tNpcGossip[23199]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>231994</N>1</N>1</N>1"
tNpcGossip[23199]["OptionPoint112"] = "1-2"
tNpcGossip[23199]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23199)
end

tNpcGossip[23199]["Text1-2"] = {121}
tNpcGossip[23199]["tOption1-2"] = {121,122}
tNpcGossip[23199]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23199</N>1</N>1</N>1"

-- 玲珑宝箱(星陨石塔层)
tNpcGossip[23200] = tNpcGossip[23200] or DefaultNpc:new{}
tNpcGossip[23200]["OptionHidden"] = 1
tNpcGossip[23200]["DialogueText"] = tTreasureHuntPagodas_Text[23200]

tNpcGossip[23200]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23200]["tOption1-1"] = {111,112}
tNpcGossip[23200]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23200</N>1</N>1</N>1"
tNpcGossip[23200]["OptionPoint112"] = "1-2"
tNpcGossip[23200]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23200)
end

tNpcGossip[23200]["Text1-2"] = {121}
tNpcGossip[23200]["tOption1-2"] = {121,122}
tNpcGossip[23200]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23200</N>1</N>1</N>1"


-- 玲珑宝箱(气力塔层)
tNpcGossip[23201] = tNpcGossip[23201] or DefaultNpc:new{}
tNpcGossip[23201]["OptionHidden"] = 1
tNpcGossip[23201]["DialogueText"] = tTreasureHuntPagodas_Text[23201]

tNpcGossip[23201]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23201]["tOption1-1"] = {111,112}
tNpcGossip[23201]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232014</N>1</N>1</N>1"
tNpcGossip[23201]["OptionPoint112"] = "1-2"
tNpcGossip[23201]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23201)
end

tNpcGossip[23201]["Text1-2"] = {121}
tNpcGossip[23201]["tOption1-2"] = {121,122}
tNpcGossip[23201]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23201</N>1</N>1</N>1"



-- 玲珑宝箱(赤炼石塔层)
tNpcGossip[23202] = tNpcGossip[23202] or DefaultNpc:new{}
tNpcGossip[23202]["OptionHidden"] = 1
tNpcGossip[23202]["DialogueText"] = tTreasureHuntPagodas_Text[23202]

tNpcGossip[23202]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23202]["tOption1-1"] = {111,112}
tNpcGossip[23202]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232024</N>1</N>1</N>1"
tNpcGossip[23202]["OptionPoint112"] = "1-2"
tNpcGossip[23202]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23202)
end

tNpcGossip[23202]["Text1-2"] = {121}
tNpcGossip[23202]["tOption1-2"] = {121,122}
tNpcGossip[23202]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23202</N>1</N>1</N>1"



-- 玲珑宝箱(修为值塔层)
tNpcGossip[23203] = tNpcGossip[23203] or DefaultNpc:new{}
tNpcGossip[23203]["OptionHidden"] = 1
tNpcGossip[23203]["DialogueText"] = tTreasureHuntPagodas_Text[23203]

tNpcGossip[23203]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23203]["tOption1-1"] = {111,112}
tNpcGossip[23203]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232034</N>1</N>1</N>1"
tNpcGossip[23203]["OptionPoint112"] = "1-2"
tNpcGossip[23203]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23203)
end

tNpcGossip[23203]["Text1-2"] = {121}
tNpcGossip[23203]["tOption1-2"] = {121,122}
tNpcGossip[23203]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23203</N>1</N>1</N>1"


-- 玲珑宝箱(神纹精粹塔层)
tNpcGossip[23204] = tNpcGossip[23204] or DefaultNpc:new{}
tNpcGossip[23204]["OptionHidden"] = 1
tNpcGossip[23204]["DialogueText"] = tTreasureHuntPagodas_Text[23204]

tNpcGossip[23204]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23204]["tOption1-1"] = {111,112}
tNpcGossip[23204]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232044</N>1</N>1</N>1"
tNpcGossip[23204]["OptionPoint112"] = "1-2"
tNpcGossip[23204]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23204)
end

tNpcGossip[23204]["Text1-2"] = {121}
tNpcGossip[23204]["tOption1-2"] = {121,122}
tNpcGossip[23204]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23204</N>1</N>1</N>1"


-- 玲珑宝箱(特殊经验塔层)
tNpcGossip[23205] = tNpcGossip[23205] or DefaultNpc:new{}
tNpcGossip[23205]["OptionHidden"] = 1
tNpcGossip[23205]["DialogueText"] = tTreasureHuntPagodas_Text[23205]

tNpcGossip[23205]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23205]["tOption1-1"] = {111,112}
tNpcGossip[23205]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232054</N>1</N>1</N>1"
tNpcGossip[23205]["OptionPoint112"] = "1-2"
tNpcGossip[23205]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23205)
end

tNpcGossip[23205]["Text1-2"] = {121}
tNpcGossip[23205]["tOption1-2"] = {121,122}
tNpcGossip[23205]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23205</N>1</N>1</N>1"

-- 玲珑宝箱(星陨石塔层)
tNpcGossip[23206] = tNpcGossip[23206] or DefaultNpc:new{}
tNpcGossip[23206]["OptionHidden"] = 1
tNpcGossip[23206]["DialogueText"] = tTreasureHuntPagodas_Text[23206]

tNpcGossip[23206]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23206]["tOption1-1"] = {111,112}
tNpcGossip[23206]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23206</N>1</N>1</N>1"
tNpcGossip[23206]["OptionPoint112"] = "1-2"
tNpcGossip[23206]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23206)
end

tNpcGossip[23206]["Text1-2"] = {121}
tNpcGossip[23206]["tOption1-2"] = {121,122}
tNpcGossip[23206]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23206</N>1</N>1</N>1"


-- 玲珑宝箱(气力塔层)
tNpcGossip[23207] = tNpcGossip[23207] or DefaultNpc:new{}
tNpcGossip[23207]["OptionHidden"] = 1
tNpcGossip[23207]["DialogueText"] = tTreasureHuntPagodas_Text[23207]

tNpcGossip[23207]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23207]["tOption1-1"] = {111,112}
tNpcGossip[23207]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232074</N>1</N>1</N>1"
tNpcGossip[23207]["OptionPoint112"] = "1-2"
tNpcGossip[23207]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23207)
end

tNpcGossip[23207]["Text1-2"] = {121}
tNpcGossip[23207]["tOption1-2"] = {121,122}
tNpcGossip[23207]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23207</N>1</N>1</N>1"



-- 玲珑宝箱(赤炼石塔层)
tNpcGossip[23208] = tNpcGossip[23208] or DefaultNpc:new{}
tNpcGossip[23208]["OptionHidden"] = 1
tNpcGossip[23208]["DialogueText"] = tTreasureHuntPagodas_Text[23208]

tNpcGossip[23208]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23208]["tOption1-1"] = {111,112}
tNpcGossip[23208]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232084</N>1</N>1</N>1"
tNpcGossip[23208]["OptionPoint112"] = "1-2"
tNpcGossip[23208]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23208)
end

tNpcGossip[23208]["Text1-2"] = {121}
tNpcGossip[23208]["tOption1-2"] = {121,122}
tNpcGossip[23208]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23208</N>1</N>1</N>1"



-- 玲珑宝箱(修为值塔层)
tNpcGossip[23209] = tNpcGossip[23209] or DefaultNpc:new{}
tNpcGossip[23209]["OptionHidden"] = 1
tNpcGossip[23209]["DialogueText"] = tTreasureHuntPagodas_Text[23209]

tNpcGossip[23209]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23209]["tOption1-1"] = {111,112}
tNpcGossip[23209]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232094</N>1</N>1</N>1"
tNpcGossip[23209]["OptionPoint112"] = "1-2"
tNpcGossip[23209]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23209)
end

tNpcGossip[23209]["Text1-2"] = {121}
tNpcGossip[23209]["tOption1-2"] = {121,122}
tNpcGossip[23209]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23209</N>1</N>1</N>1"


-- 玲珑宝箱(神纹精粹塔层)
tNpcGossip[23210] = tNpcGossip[23210] or DefaultNpc:new{}
tNpcGossip[23210]["OptionHidden"] = 1
tNpcGossip[23210]["DialogueText"] = tTreasureHuntPagodas_Text[23210]

tNpcGossip[23210]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23210]["tOption1-1"] = {111,112}
tNpcGossip[23210]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232104</N>1</N>1</N>1"
tNpcGossip[23210]["OptionPoint112"] = "1-2"
tNpcGossip[23210]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23210)
end

tNpcGossip[23210]["Text1-2"] = {121}
tNpcGossip[23210]["tOption1-2"] = {121,122}
tNpcGossip[23210]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23210</N>1</N>1</N>1"


-- 玲珑宝箱(特殊经验塔层)
tNpcGossip[23211] = tNpcGossip[23211] or DefaultNpc:new{}
tNpcGossip[23211]["OptionHidden"] = 1
tNpcGossip[23211]["DialogueText"] = tTreasureHuntPagodas_Text[23211]

tNpcGossip[23211]["Text1-1"] = {111,112,115,114,113,116,117,118,119}
tNpcGossip[23211]["tOption1-1"] = {111,112}
tNpcGossip[23211]["OptionFunc111"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>232114</N>1</N>1</N>1"
tNpcGossip[23211]["OptionPoint112"] = "1-2"
tNpcGossip[23211]["ChkFunc1-1"] = function ()
	return TreasureHuntPagodas_ClkNpcText(23211)
end

tNpcGossip[23211]["Text1-2"] = {121}
tNpcGossip[23211]["tOption1-2"] = {121,122}
tNpcGossip[23211]["OptionFunc121"] = "tTreasureHuntPagodas_CostOpenLinkRight</N>23211</N>1</N>1</N>1"

tNpcGossip[23299] = tNpcGossip[23299] or DefaultNpc:new{}
tNpcGossip[23299]["OptionHidden"] = 1
tNpcGossip[23299]["DialogueText"] = tTreasureHuntPagodas_Text[23192]

--每日排行榜
tNpcGossip[23299]["Text1-1"] = {211,212,213,214,215,216,217,218,2114,2115,2116}
tNpcGossip[23299]["tOption1-1"] = {211}
tNpcGossip[23299]["OptionPoint211"] = "2-1"
tNpcGossip[23299]["ChkFunc1-1"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["DayRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,5 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		sMiddle = string.gsub(sMiddle, "<", " ")
		sMiddle = string.gsub(sMiddle, ">", " ")
		local sText = Sys_CenterAline(sLeft,4,sMiddle,22,sRight,43)
		
		tNpcGossip[23299]["Text21"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text21"..(i+3)], sText)
	end
	
	local nEvent7 = tTreasureHuntPagodas_Stc[7]["EventType"]
	local nType7 = tTreasureHuntPagodas_Stc[7]["DataType"]
	--隔天重置掩码
	if Task_StcInterval(nEvent7,nType7,1,4) then
		Task_SetStatistic(nEvent7,nType7,0,1)
		Task_SetStcTimestamp(nEvent7,nType7,0)
	end
	local nStcData7 = Get_UserStatisticValue(nEvent7,nType7)
	local nUserId = Get_UserId()
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	if nNowRank == 0 then
		tNpcGossip[23299]["Text2116"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2116"],nStcData7)
	else
		tNpcGossip[23299]["Text2116"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2117"],nNowRank,nStcData7)
	end
	
	return true
end

tNpcGossip[23299]["Text2-1"] = {311,312,313,314,315,316,317,318,3114,3115}
tNpcGossip[23299]["tOption2-1"] = {311}
tNpcGossip[23299]["OptionPoint311"] = "1-1"
tNpcGossip[23299]["ChkFunc2-1"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["DayRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,5 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			-- sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			-- sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		local sRight = tTreasureHuntPagodas_Text["DayRankReward"][i]
		sMiddle = string.gsub(sMiddle, "<", " ")
		sMiddle = string.gsub(sMiddle, ">", " ")
		local sText = Sys_CenterAline(sLeft,6,sMiddle,22,sRight,41)
		
		tNpcGossip[23299]["Text31"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text31"..(i+3)], sText)
	end
	
	return true
end


tNpcGossip[23300] = tNpcGossip[23300] or DefaultNpc:new{}
tNpcGossip[23300]["OptionHidden"] = 1
tNpcGossip[23300]["DialogueText"] = tTreasureHuntPagodas_Text[23192]

tNpcGossip[23300]["Text1-1"] = {231,232,233,234,235,236,237,238,239,2310,2311,2312,2313,2314,2315,2316}
tNpcGossip[23300]["tOption1-1"] = {231}
tNpcGossip[23300]["OptionPoint231"] = "2-1"
tNpcGossip[23300]["ChkFunc1-1"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["ActRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,10 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		sMiddle = string.gsub(sMiddle, "<", " ")
		sMiddle = string.gsub(sMiddle, ">", " ")
		local sText = Sys_CenterAline(sLeft,6,sMiddle,24,sRight,50)
		
		tNpcGossip[23300]["Text23"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text23"..(i+3)], sText)
	end
	
	local nEvent8 = tTreasureHuntPagodas_Stc[8]["EventType"]
	local nType8 = tTreasureHuntPagodas_Stc[8]["DataType"]
	
	local nStcData8 = Get_UserStatisticValue(nEvent8,nType8)
	local nUserId = Get_UserId()
	local nNowRank = RankingFunc_GetUserInRank(nRankId,nUserId)
	if nNowRank == 0 then
		tNpcGossip[23300]["Text2316"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2316"],nStcData8)
	else
		tNpcGossip[23300]["Text2316"] = string.format(tTreasureHuntPagodas_Text[23192]["Text2317"],nNowRank,nStcData8)
	end
	return true
end

tNpcGossip[23300]["Text2-1"] = {321,322,323,324,325,326,327,328,329,3210,3211,3212,3213,3214,3215}
tNpcGossip[23300]["tOption2-1"] = {321}
tNpcGossip[23300]["OptionPoint321"] = "1-4"
tNpcGossip[23300]["ChkFunc2-1"] = function ()
	local nRankId = tTreasureHuntPagodas_Cont["ActRankIndex"]
	local tRankList = RankingFunc_GetNowData(nRankId)
	for i=1,10 do
		
		local sRight = ""
		local sLast = ""
		local sMiddle = ""
		
		if tRankList[i] ~= nil then
			-- sRight = tostring(tRankList[i]["Score"])
			sMiddle = tRankList[i]["UserName"]
		else
			-- sRight = "0"
			sMiddle = tTreasureHuntPagodas_Text["Null"]
		end
		
		local sLeft = string.format(tTreasureHuntPagodas_Text["Rank"],i)
		local sRight = tTreasureHuntPagodas_Text["ActRankReward"][i]
		sMiddle = string.gsub(sMiddle, "<", " ")
		sMiddle = string.gsub(sMiddle, ">", " ")
		
		local sText = Sys_CenterAline(sLeft,6,sRight,38)
		
		tNpcGossip[23300]["Text32"..(i+3)] = string.format(tTreasureHuntPagodas_Text[23192]["Text32"..(i+3)], sText)
	end
	
	return true
end


tNpcGossip[23383] = tNpcGossip[23383] or DefaultNpc:new{}
tNpcGossip[23383]["OptionHidden"] = 1
tNpcGossip[23383]["DialogueText"] = tTreasureHuntPagodas_Text[23383]

tNpcGossip[23383]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[23383]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[23383]["OptionFunc111"] = "TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310714</N>1"
tNpcGossip[23383]["OptionFunc112"] = "TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310715</N>1"
tNpcGossip[23383]["OptionFunc113"] = "TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310716</N>1"
tNpcGossip[23383]["OptionPoint114"] = "2-1"
tNpcGossip[23383]["OptionPoint115"] = "2-2"
tNpcGossip[23383]["OptionFunc116"] = "TreasureHuntPagodas_ChgMap"
tNpcGossip[23383]["OptionChkFunc111"] = function ()
	return TreasureHuntPagodas_ChkBagItem(3310714)
end
tNpcGossip[23383]["OptionChkFunc112"] = function ()
	return TreasureHuntPagodas_ChkBagItem(3310715)
end
tNpcGossip[23383]["OptionChkFunc113"] = function ()
	return TreasureHuntPagodas_ChkBagItem(3310716)
end
tNpcGossip[23383]["OptionChkFunc114"] = function ()
	return TreasureHuntPagodas_ChkBagItem(3310717)
end
tNpcGossip[23383]["OptionChkFunc115"] = function ()
	return TreasureHuntPagodas_ChkAllBagItem()
end
tNpcGossip[23383]["ChkFunc1-1"] = function ()
	
	return Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"])
end


tNpcGossip[23383]["Text1-2"] = {121}
tNpcGossip[23383]["tOption1-2"] = {121}
tNpcGossip[23383]["OptionFunc121"]= "TreasureHuntPagodas_ChgMap"
tNpcGossip[23383]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tTreasureHuntPagodas_Cont["ActTime"])
end

tNpcGossip[23383]["Text2-1"] = {211,212}
tNpcGossip[23383]["tOption2-1"] = {211,212,213,214,215,216}
tNpcGossip[23383]["OptionFunc211"]="TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310717</N>1"
tNpcGossip[23383]["OptionFunc212"]="TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310717</N>2"
tNpcGossip[23383]["OptionFunc213"]="TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310717</N>3"
tNpcGossip[23383]["OptionFunc214"]="TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310717</N>4"
tNpcGossip[23383]["OptionFunc215"]="TreasureHuntPagodas_ChkChgMapItem</N>23383</N>3310717</N>5"
tNpcGossip[23383]["ChkFunc2-1"] = function ()
	local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
	local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
	
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
	end
	
	local nData2 = Get_UserStatisticValue(nEvent2,nType2)
	tNpcGossip[23383]["Text212"]=string.format(tTreasureHuntPagodas_Text[23383]["Text212"],nData2)
	tNpcGossip[23383]["Option211"]=string.format(tTreasureHuntPagodas_Text[23383]["Option211"],(nData2+1))
	tNpcGossip[23383]["Option212"]=string.format(tTreasureHuntPagodas_Text[23383]["Option212"],(nData2+2))
	tNpcGossip[23383]["Option213"]=string.format(tTreasureHuntPagodas_Text[23383]["Option213"],(nData2+3))
	tNpcGossip[23383]["Option214"]=string.format(tTreasureHuntPagodas_Text[23383]["Option214"],(nData2+4))
	tNpcGossip[23383]["Option215"]=string.format(tTreasureHuntPagodas_Text[23383]["Option215"],(nData2+5))
	return true
end

tNpcGossip[23383]["Text2-2"] = {221}
tNpcGossip[23383]["tOption2-2"] = {221}
tNpcGossip[23383]["OptionFunc221"]="TreasureHuntPagodas_CpShopItem</N>23383</N>3310714"

------------------------------------物品模板----------------------------------
tItemFace[3307555] = 1378

tItem[3310714] = tItem[3310714] or {}
tItem[3310714]["Function"] = function(nItemId,sItemName)
	TreasureHuntPagodas_UseChgMapItem(nItemId,1)
end

tItem[3310715] = tItem[3310715] or {}
tItem[3310715]["Function"] = function(nItemId,sItemName)
	local flat,tNum = Probabil_RandomAward(tTreasureHuntPagodas_RandomFloor[3310715],1)
	local nAddFloor = tNum[1]["tAward"][1]["Item_1"]
	TreasureHuntPagodas_UseChgMapItem(nItemId,nAddFloor)
end

tItem[3310716] = tItem[3310716] or {}
tItem[3310716]["Function"] = function(nItemId,sItemName)
	local flat,tNum = Probabil_RandomAward(tTreasureHuntPagodas_RandomFloor[3310716],1)
	local nAddFloor = tNum[1]["tAward"][1]["Item_1"]
	TreasureHuntPagodas_UseChgMapItem(nItemId,nAddFloor)
end
tItemFace[3310717] = 1777
tItem[3310717] = tItem[3310717] or {}
tItem[3310717]["DialogueText"] =tTreasureHuntPagodas_Text[3310717]
tItem[3310717]["Text1-1"] = {111,112}
tItem[3310717]["tOption1-1"] = {111,112,113,114,115}
tItem[3310717]["OptionFunc111"]="TreasureHuntPagodas_UseChgMapItem</N>3310717</N>1"
tItem[3310717]["OptionFunc112"]="TreasureHuntPagodas_UseChgMapItem</N>3310717</N>2"
tItem[3310717]["OptionFunc113"]="TreasureHuntPagodas_UseChgMapItem</N>3310717</N>3"
tItem[3310717]["OptionFunc114"]="TreasureHuntPagodas_UseChgMapItem</N>3310717</N>4"
tItem[3310717]["OptionFunc115"]="TreasureHuntPagodas_UseChgMapItem</N>3310717</N>5"
tItem[3310717]["ChkFunc1-1"] = function ()
	local nEvent2 = tTreasureHuntPagodas_Stc[2]["EventType"]
	local nType2 = tTreasureHuntPagodas_Stc[2]["DataType"]
	
	if Task_StcInterval(nEvent2,nType2,1,4) then
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0)
	end
	
	local nData2 = Get_UserStatisticValue(nEvent2,nType2)
	tItem[3310717]["Text112"]=string.format(tTreasureHuntPagodas_Text[3310717]["Text112"],nData2)
	tItem[3310717]["Option111"]=string.format(tTreasureHuntPagodas_Text[3310717]["Option111"],(nData2+1))
	tItem[3310717]["Option112"]=string.format(tTreasureHuntPagodas_Text[3310717]["Option112"],(nData2+2))
	tItem[3310717]["Option113"]=string.format(tTreasureHuntPagodas_Text[3310717]["Option113"],(nData2+3))
	tItem[3310717]["Option114"]=string.format(tTreasureHuntPagodas_Text[3310717]["Option114"],(nData2+4))
	tItem[3310717]["Option115"]=string.format(tTreasureHuntPagodas_Text[3310717]["Option115"],(nData2+5))
	return true
end

tItem[3310718] = tItem[3310718] or {}
tItem[3310718]["Function"] = function(nItemId,sItemName)
	TreasureHuntPagodas_UseItem(nItemId)
end

--------------------------------------陷阱模块-------------------------------------------
-- tTrap[2094]= tTrap[2094] or {}
-- tTrap[2094]["Function"] = function (nTrapId,nTrapType)
	-- TreasureHuntPagodas_ChgMap()
-- end

--------------------------------时间自检------------------------------------
local tTreasureHuntPagodas_ClrGlobal = {}
tTreasureHuntPagodas_ClrGlobal["Type"] = 6  -- 其他
tTreasureHuntPagodas_ClrGlobal["TimeType"] = 4  -- 日时间
tTreasureHuntPagodas_ClrGlobal["Multiple"] = {}
tTreasureHuntPagodas_ClrGlobal["Time"] = "00:00 00:02"
tTreasureHuntPagodas_ClrGlobal["Func"] = TreasureHuntPagodas_ClrGlobal
table.insert(tSystemTime_InitialData,tTreasureHuntPagodas_ClrGlobal)

local tTreasureHuntPagodas_ClrData = {}
tTreasureHuntPagodas_ClrData["Type"] = 6  -- 其他
tTreasureHuntPagodas_ClrData["TimeType"] = 4  -- 日时间
tTreasureHuntPagodas_ClrData["Multiple"] = {}
tTreasureHuntPagodas_ClrData["Time"] = "00:03 00:05"
tTreasureHuntPagodas_ClrData["Func"] = TreasureHuntPagodas_ClrData
table.insert(tSystemTime_InitialData,tTreasureHuntPagodas_ClrData)