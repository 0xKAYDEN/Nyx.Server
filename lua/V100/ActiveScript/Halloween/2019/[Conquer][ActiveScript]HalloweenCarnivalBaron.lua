------------------------------------------------------------------------------------
--Name：     190926[简体征服][活动脚本]全球万圣节活动-万圣男爵
--Creator:      郑洵
--Created:     2019/09/26
------------------------------------------------------------------------------------

--命名前缀
--HalloweenCarnivalBaron_

--logid:12001653
-- 41500 = V100\ActiveScript\Halloween\2019\[Conquer][ActiveScript]HalloweenCarnivalBaron.lua
-- 41500 = V100\活动脚本\万圣节\2019\[征服][活动脚本]全球万圣节活动.lua

--stc掩码说明
--stc(205,59)			记录背包信发放
--stc(205,60)			记录1星鬼怪礼包和南瓜头领取
--stc(205,61)			记录鬼怪变身收集奖励领取
--stc(205,62)			记录迈克尔 麦尔斯变身
--stc(205,63)			记录鬼怪变身
--stc(205,64)			记录鬼怪变身
--stc(205,65)			记录鬼怪变身
--stc(205,66)			记录鬼怪变身
--stc(205,67)			记录玩家领取糖果
--stc(205,73)			记录玩家寻路到南瓜怪杰
--stc(205,80)			记录玩家寻路到1星鬼怪
--stc(206,00)			记录鬼怪变身收集数量
--stc(208,16)			记录玩家变身鬼怪的星级

--动态全局表说明
--ID: 53765		Data0位:	记录万圣节氛围值

--三星鬼怪ID：1161-1169


local tHalloweenCarnivalBaron_Cont = {}
	--等级限制
	tHalloweenCarnivalBaron_Cont["Level"] = 80
	tHalloweenCarnivalBaron_Cont["Metempsychosis"] = 0
	--主任务id
	tHalloweenCarnivalBaron_Cont["TaskId"] = 7080
	--激情服主任务id
	tHalloweenCarnivalBaron_Cont["NoGiftTaskId"] = 4256
	--1星鬼怪任务id
	tHalloweenCarnivalBaron_Cont["StarTaskId"] = 2103
	--激情服1星鬼怪任务id
	tHalloweenCarnivalBaron_Cont["NoGiftStarTaskId"] = 4257
	--万圣男爵
	tHalloweenCarnivalBaron_Cont["MainNPC"] = 24993
	--鬼怪变身图鉴
	tHalloweenCarnivalBaron_Cont["TransformBookId"] = 3313760
	--鬼怪变身图鉴掩码
	tHalloweenCarnivalBaron_Cont["BackpackLetterStc"] = 108
	--南瓜头发型ID
	tHalloweenCarnivalBaron_Cont["PumpkinHair"] = 78
	--南瓜怪杰
	tHalloweenCarnivalBaron_Cont["PumpkinNpcId"] = 25010
	--寻路到南瓜怪杰掩码
	tHalloweenCarnivalBaron_Cont["PumpkinNpcStc"] = 105
	--迈克尔 麦尔斯
	tHalloweenCarnivalBaron_Cont["MichaelMyersId"] = 5747
	--迈克尔 麦尔斯变身掩码
	tHalloweenCarnivalBaron_Cont["MichaelMyersStc"] = 103
	--前往跨服地图NPC
	tHalloweenCarnivalBaron_Cont["ChgMapNPCId"] = 25201
	--1星鬼怪 叫天鸡
	tHalloweenCarnivalBaron_Cont["OneStarMonsterId"] = 24969
	--1星鬼怪礼包
	tHalloweenCarnivalBaron_Cont["OneStarMonsterReward"] = 3313807
	--记录万圣节氛围值动态码
	tHalloweenCarnivalBaron_Cont["SysDyGlobId"] = 53765
	--记录掩码初始值
	tHalloweenCarnivalBaron_Cont["StcBasciData"] = 100000000
	--变身光效
	tHalloweenCarnivalBaron_Cont["Effect"] = "task072"
	--接任务光效
	tHalloweenCarnivalBaron_Cont["TaskEffect"] = "zf2-e128"
	--鬼怪糖果
	tHalloweenCarnivalBaron_Cont["Sweet"] = {}
	tHalloweenCarnivalBaron_Cont["Sweet"][1] = 3600166--【中文】鬼怪糖果
	tHalloweenCarnivalBaron_Cont["Sweet"][2] = 3600167--【英文】鬼怪糖果
	tHalloweenCarnivalBaron_Cont["Sweet"][3] = 3313796--【西语】鬼怪糖果
	tHalloweenCarnivalBaron_Cont["Sweet"][4] = 3313797--【阿语】鬼怪糖果
	--寻路需要的鬼怪糖果数量
	tHalloweenCarnivalBaron_Cont["SweetNum"] = {}
	tHalloweenCarnivalBaron_Cont["SweetNum"][1] = 10--1星鬼怪
	tHalloweenCarnivalBaron_Cont["SweetNum"][2] = 20--2星鬼怪
	--鬼怪变身阶段
	tHalloweenCarnivalBaron_Cont["Score"] = {}
	tHalloweenCarnivalBaron_Cont["Score"][1] = 5
	tHalloweenCarnivalBaron_Cont["Score"][2] = 10
	tHalloweenCarnivalBaron_Cont["Score"][3] = 15
	tHalloweenCarnivalBaron_Cont["Score"][4] = 20
	tHalloweenCarnivalBaron_Cont["Score"][5] = 24
	tHalloweenCarnivalBaron_Cont["Score"][6] = 28
	--背包
	tHalloweenCarnivalBaron_Cont["Space"] = {}
	tHalloweenCarnivalBaron_Cont["Space"][101] = 1--1星鬼怪礼包和南瓜头
	tHalloweenCarnivalBaron_Cont["Space"][102] = 2--领取阶段奖励
	--鬼怪索引
	tHalloweenCarnivalBaron_Cont["NpcIndex"] = {}
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24969] = 1
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24970] = 2
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24971] = 3
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24972] = 4
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24973] = 5
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24974] = 6
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24975] = 7
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24976] = 8
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24977] = 9
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24978] = 10
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24979] = 11
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24980] = 12
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24981] = 13
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24982] = 14
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24983] = 15
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24984] = 16
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24985] = 17
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24986] = 18
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24987] = 19
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24988] = 20
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24989] = 21
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24990] = 22
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24991] = 23
	tHalloweenCarnivalBaron_Cont["NpcIndex"][24992] = 24
	tHalloweenCarnivalBaron_Cont["NpcIndex"][25000] = 25
	tHalloweenCarnivalBaron_Cont["NpcIndex"][25001] = 26
	tHalloweenCarnivalBaron_Cont["NpcIndex"][25002] = 27
	tHalloweenCarnivalBaron_Cont["NpcIndex"][25004] = 28
	tHalloweenCarnivalBaron_Cont["NpcIndex"][25005] = 29
	tHalloweenCarnivalBaron_Cont["NpcIndex"][25006] = 30
	tHalloweenCarnivalBaron_Cont["NpcIndex"][25007] = 31
	tHalloweenCarnivalBaron_Cont["NpcIndex"][5747] = 33
	--鬼怪星级
	tHalloweenCarnivalBaron_Cont["MonsterLevel"] = {}
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24969] = 1
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24970] = 1
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24971] = 1
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24972] = 1
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24973] = 1
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24974] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24975] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24976] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24977] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24978] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24979] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24980] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24981] = 2
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24982] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24983] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24984] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24985] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24986] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24987] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24988] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24989] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24990] = 3
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24991] = 4
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][24992] = 4
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][25000] = 4
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][25001] = 4
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][25002] = 4
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][25004] = 5
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][25005] = 5
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][25006] = 5
	tHalloweenCarnivalBaron_Cont["MonsterLevel"][25007] = 5


local tHalloweenCarnivalBaron_Log = {}
	-- 删除物品LOG
	tHalloweenCarnivalBaron_Log["Del"] = "0,0,%d,%d,12001653,2,0,0"
	-- 变身Log
	tHalloweenCarnivalBaron_Log["Transform"] = "0,0,0,0,12001653,2[%d],0,0"

--限制地图
local tHalloweenCarnivalBaron_RandBound = {}
	-- 神龙岛、打宝区地图ID
	tHalloweenCarnivalBaron_RandBound["Map"] = {}
	-- 神龙岛地图ID
	tHalloweenCarnivalBaron_RandBound["Map"][1] = 10137
	-- 打宝区地图ID
	tHalloweenCarnivalBaron_RandBound["Map"][2] = 10250
	-- BOSS之家地图ID
	tHalloweenCarnivalBaron_RandBound["BOSSMap"] = {}
	-- 70-99级BOSS之家
	tHalloweenCarnivalBaron_RandBound["BOSSMap"][1] = 10478
	-- 100-124级BOSS之家
	tHalloweenCarnivalBaron_RandBound["BOSSMap"][2] = 10479
	-- 125-134级BOSS之家
	tHalloweenCarnivalBaron_RandBound["BOSSMap"][3] = 10480
	-- 135-150级BOSS之家
	tHalloweenCarnivalBaron_RandBound["BOSSMap"][4] = 10481

--地图配置
local tHalloweenCarnivalBaron_Map = {}
	--返回双龙城
	tHalloweenCarnivalBaron_Map["City"] = {}
	tHalloweenCarnivalBaron_Map["City"]["MapId"]= 1002
	tHalloweenCarnivalBaron_Map["City"]["PosX"]= 360
	tHalloweenCarnivalBaron_Map["City"]["PosY"]= 498
	--返回双龙城（激情服）
	tHalloweenCarnivalBaron_Map["NoGiftCity"] = {}
	tHalloweenCarnivalBaron_Map["NoGiftCity"]["MapId"]= 1036
	tHalloweenCarnivalBaron_Map["NoGiftCity"]["PosX"]= 192
	tHalloweenCarnivalBaron_Map["NoGiftCity"]["PosY"]= 174
	--恐怖怪物复苏
	tHalloweenCarnivalBaron_Map["Monster"] = {}
	tHalloweenCarnivalBaron_Map["Monster"]["MapId"]= 1002
	tHalloweenCarnivalBaron_Map["Monster"]["PosX"]= 550
	tHalloweenCarnivalBaron_Map["Monster"]["PosY"]= 327
	--恐怖怪物复苏（激情服）
	tHalloweenCarnivalBaron_Map["NoGiftMonster"] = {}
	tHalloweenCarnivalBaron_Map["NoGiftMonster"]["MapId"]= 10364
	tHalloweenCarnivalBaron_Map["NoGiftMonster"]["PosX"]= 360
	tHalloweenCarnivalBaron_Map["NoGiftMonster"]["PosY"]= 360
	--收集4星鬼怪
	tHalloweenCarnivalBaron_Map["FindFourStar"] = {}
	--前往神龙岛
	tHalloweenCarnivalBaron_Map["FindFourStar"][1] = {}
	tHalloweenCarnivalBaron_Map["FindFourStar"][1]["MapId"]= 10137
	tHalloweenCarnivalBaron_Map["FindFourStar"][1]["PosX"]= 100
	tHalloweenCarnivalBaron_Map["FindFourStar"][1]["PosY"]= 414
	--前往古神灵境
	tHalloweenCarnivalBaron_Map["FindFourStar"][2] = {}
	tHalloweenCarnivalBaron_Map["FindFourStar"][2]["MapId"]= 10250
	tHalloweenCarnivalBaron_Map["FindFourStar"][2]["PosX"]= 1010
	tHalloweenCarnivalBaron_Map["FindFourStar"][2]["PosY"]= 1284
	--前往噩梦回廊
	tHalloweenCarnivalBaron_Map["FindFourStar"][3] = {}
	tHalloweenCarnivalBaron_Map["FindFourStar"][3]["MapId"]= 10479
	tHalloweenCarnivalBaron_Map["FindFourStar"][3]["PosX"]= 210
	tHalloweenCarnivalBaron_Map["FindFourStar"][3]["PosY"]= 540

--恐怖怪物复苏时间
local tHalloweenCarnivalBaron_Time = {}
	tHalloweenCarnivalBaron_Time["MonsterTime"] = {}
	tHalloweenCarnivalBaron_Time["MonsterTime"][1] = "03:30 03:59"
	tHalloweenCarnivalBaron_Time["MonsterTime"][2] = "09:30 09:59"
	tHalloweenCarnivalBaron_Time["MonsterTime"][3] = "12:30 12:59"
	tHalloweenCarnivalBaron_Time["MonsterTime"][4] = "17:30 17:59"
	tHalloweenCarnivalBaron_Time["NotMonsterTime"] = {}
	tHalloweenCarnivalBaron_Time["NotMonsterTime"][1] = "00:00 03:29"
	tHalloweenCarnivalBaron_Time["NotMonsterTime"][2] = "04:00 09:29"
	tHalloweenCarnivalBaron_Time["NotMonsterTime"][3] = "10:00 12:29"
	tHalloweenCarnivalBaron_Time["NotMonsterTime"][4] = "13:00 17:29"
	tHalloweenCarnivalBaron_Time["NotMonsterTime"][5] = "18:00 23:59"

--内嵌网页地址
local tHalloweenCarnivalBaron_Web={}
	--万圣节攻略
	tHalloweenCarnivalBaron_Web[1]="https://wtop.zf.99.com/wsjkh/en01/"

--神龙岛BUFF
local tHalloweenCarnivalBaron_Medicine = {}
	tHalloweenCarnivalBaron_Medicine["StatusType"] = {54,136,134,133,137,135,143,144,141,142}

local tHalloweenCarnivalBaron_Stc = {}
	--记录1星鬼怪礼包和南瓜头领取
	tHalloweenCarnivalBaron_Stc[101] = {}
	tHalloweenCarnivalBaron_Stc[101]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[101]["DataType"] = 60
	--记录鬼怪变身收集奖励领取
	tHalloweenCarnivalBaron_Stc[102] = {}
	tHalloweenCarnivalBaron_Stc[102]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[102]["DataType"] = 61
	--记录迈克尔 麦尔斯变身
	tHalloweenCarnivalBaron_Stc[103] = {}
	tHalloweenCarnivalBaron_Stc[103]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[103]["DataType"] = 62
	--记录鬼怪变身收集数量
	tHalloweenCarnivalBaron_Stc[104] = {}
	tHalloweenCarnivalBaron_Stc[104]["EventType"] = 206
	tHalloweenCarnivalBaron_Stc[104]["DataType"] = 00
	--记录玩家寻路到南瓜怪杰
	tHalloweenCarnivalBaron_Stc[105] = {}
	tHalloweenCarnivalBaron_Stc[105]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[105]["DataType"] = 73
	--记录玩家领取糖果
	tHalloweenCarnivalBaron_Stc[106] = {}
	tHalloweenCarnivalBaron_Stc[106]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[106]["DataType"] = 67
	--记录玩家寻路到1星鬼怪
	tHalloweenCarnivalBaron_Stc[107] = {}
	tHalloweenCarnivalBaron_Stc[107]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[107]["DataType"] = 80
	--记录背包信掩码
	tHalloweenCarnivalBaron_Stc[108] = {}
	tHalloweenCarnivalBaron_Stc[108]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[108]["DataType"] = 59
	--记录玩家变身鬼怪的星级
	tHalloweenCarnivalBaron_Stc[109] = {}
	tHalloweenCarnivalBaron_Stc[109]["EventType"] = 208
	tHalloweenCarnivalBaron_Stc[109]["DataType"] = 16
	--记录南瓜头等级
	tHalloweenCarnivalBaron_Stc[110] = {}
	tHalloweenCarnivalBaron_Stc[110]["EventType"] = 208
	tHalloweenCarnivalBaron_Stc[110]["DataType"] = 42
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[1] = {}
	tHalloweenCarnivalBaron_Stc[1]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[1]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[1]["StcIndex"] = 1
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[2] = {}
	tHalloweenCarnivalBaron_Stc[2]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[2]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[2]["StcIndex"] = 2
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[3] = {}
	tHalloweenCarnivalBaron_Stc[3]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[3]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[3]["StcIndex"] = 3
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[4] = {}
	tHalloweenCarnivalBaron_Stc[4]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[4]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[4]["StcIndex"] = 4
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[5] = {}
	tHalloweenCarnivalBaron_Stc[5]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[5]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[5]["StcIndex"] = 5
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[6] = {}
	tHalloweenCarnivalBaron_Stc[6]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[6]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[6]["StcIndex"] = 6
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[7] = {}
	tHalloweenCarnivalBaron_Stc[7]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[7]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[7]["StcIndex"] = 7
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[8] = {}
	tHalloweenCarnivalBaron_Stc[8]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[8]["DataType"] = 63
	tHalloweenCarnivalBaron_Stc[8]["StcIndex"] = 8
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[9] = {}
	tHalloweenCarnivalBaron_Stc[9]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[9]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[9]["StcIndex"] = 1
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[10] = {}
	tHalloweenCarnivalBaron_Stc[10]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[10]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[10]["StcIndex"] = 2
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[11] = {}
	tHalloweenCarnivalBaron_Stc[11]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[11]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[11]["StcIndex"] = 3
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[12] = {}
	tHalloweenCarnivalBaron_Stc[12]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[12]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[12]["StcIndex"] = 4
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[13] = {}
	tHalloweenCarnivalBaron_Stc[13]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[13]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[13]["StcIndex"] = 5
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[14] = {}
	tHalloweenCarnivalBaron_Stc[14]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[14]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[14]["StcIndex"] = 6
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[15] = {}
	tHalloweenCarnivalBaron_Stc[15]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[15]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[15]["StcIndex"] = 7
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[16] = {}
	tHalloweenCarnivalBaron_Stc[16]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[16]["DataType"] = 64
	tHalloweenCarnivalBaron_Stc[16]["StcIndex"] = 8
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[17] = {}
	tHalloweenCarnivalBaron_Stc[17]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[17]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[17]["StcIndex"] = 1
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[18] = {}
	tHalloweenCarnivalBaron_Stc[18]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[18]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[18]["StcIndex"] = 2
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[19] = {}
	tHalloweenCarnivalBaron_Stc[19]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[19]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[19]["StcIndex"] = 3
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[20] = {}
	tHalloweenCarnivalBaron_Stc[20]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[20]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[20]["StcIndex"] = 4
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[21] = {}
	tHalloweenCarnivalBaron_Stc[21]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[21]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[21]["StcIndex"] = 5
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[22] = {}
	tHalloweenCarnivalBaron_Stc[22]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[22]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[22]["StcIndex"] = 6
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[23] = {}
	tHalloweenCarnivalBaron_Stc[23]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[23]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[23]["StcIndex"] = 7
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[24] = {}
	tHalloweenCarnivalBaron_Stc[24]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[24]["DataType"] = 65
	tHalloweenCarnivalBaron_Stc[24]["StcIndex"] = 8
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[25] = {}
	tHalloweenCarnivalBaron_Stc[25]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[25]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[25]["StcIndex"] = 1
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[26] = {}
	tHalloweenCarnivalBaron_Stc[26]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[26]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[26]["StcIndex"] = 2
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[27] = {}
	tHalloweenCarnivalBaron_Stc[27]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[27]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[27]["StcIndex"] = 3
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[28] = {}
	tHalloweenCarnivalBaron_Stc[28]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[28]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[28]["StcIndex"] = 4
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[29] = {}
	tHalloweenCarnivalBaron_Stc[29]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[29]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[29]["StcIndex"] = 5
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[30] = {}
	tHalloweenCarnivalBaron_Stc[30]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[30]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[30]["StcIndex"] = 6
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[31] = {}
	tHalloweenCarnivalBaron_Stc[31]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[31]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[31]["StcIndex"] = 7
	--记录鬼怪变身
	tHalloweenCarnivalBaron_Stc[32] = {}
	tHalloweenCarnivalBaron_Stc[32]["EventType"] = 205
	tHalloweenCarnivalBaron_Stc[32]["DataType"] = 66
	tHalloweenCarnivalBaron_Stc[32]["StcIndex"] = 8

-- 变身数据表配置
local tHalloweenCarnivalBaron_Transform = {}
-- 叫天鸡
	tHalloweenCarnivalBaron_Transform[1] = {}
	tHalloweenCarnivalBaron_Transform[1]["Magictype"] = 10686
	tHalloweenCarnivalBaron_Transform[1]["MagictypeLevel"] = 10686
	tHalloweenCarnivalBaron_Transform[1]["MonsterId"] = 3597
	tHalloweenCarnivalBaron_Transform[1]["Times"] = 300
-- 尖啸翼蛇
	tHalloweenCarnivalBaron_Transform[2] = {}
	tHalloweenCarnivalBaron_Transform[2]["Magictype"] = 10644
	tHalloweenCarnivalBaron_Transform[2]["MagictypeLevel"] = 10644
	tHalloweenCarnivalBaron_Transform[2]["MonsterId"] = 3129
	tHalloweenCarnivalBaron_Transform[2]["Times"] = 300
-- 怒火精灵
	tHalloweenCarnivalBaron_Transform[3] = {}
	tHalloweenCarnivalBaron_Transform[3]["Magictype"] = 10645
	tHalloweenCarnivalBaron_Transform[3]["MagictypeLevel"] = 10645
	tHalloweenCarnivalBaron_Transform[3]["MonsterId"] = 3598
	tHalloweenCarnivalBaron_Transform[3]["Times"] = 300
-- 砾沙怪
	tHalloweenCarnivalBaron_Transform[4] = {}
	tHalloweenCarnivalBaron_Transform[4]["Magictype"] = 10646
	tHalloweenCarnivalBaron_Transform[4]["MagictypeLevel"] = 10646
	tHalloweenCarnivalBaron_Transform[4]["MonsterId"] = 3599
	tHalloweenCarnivalBaron_Transform[4]["Times"] = 300
-- 鬼刃
	tHalloweenCarnivalBaron_Transform[5] = {}
	tHalloweenCarnivalBaron_Transform[5]["Magictype"] = 10647
	tHalloweenCarnivalBaron_Transform[5]["MagictypeLevel"] = 10647
	tHalloweenCarnivalBaron_Transform[5]["MonsterId"] = 4011
	tHalloweenCarnivalBaron_Transform[5]["Times"] = 300
-- 蹑空战鬼王
	tHalloweenCarnivalBaron_Transform[6] = {}
	tHalloweenCarnivalBaron_Transform[6]["Magictype"] = 10648
	tHalloweenCarnivalBaron_Transform[6]["MagictypeLevel"] = 10648
	tHalloweenCarnivalBaron_Transform[6]["MonsterId"] = 4012
	tHalloweenCarnivalBaron_Transform[6]["Times"] = 300
-- 天雷巨猿
	tHalloweenCarnivalBaron_Transform[7] = {}
	tHalloweenCarnivalBaron_Transform[7]["Magictype"] = 10649
	tHalloweenCarnivalBaron_Transform[7]["MagictypeLevel"] = 10649
	tHalloweenCarnivalBaron_Transform[7]["MonsterId"] = 4013
	tHalloweenCarnivalBaron_Transform[7]["Times"] = 300
-- 血怒蛇人
	tHalloweenCarnivalBaron_Transform[8] = {}
	tHalloweenCarnivalBaron_Transform[8]["Magictype"] = 10650
	tHalloweenCarnivalBaron_Transform[8]["MagictypeLevel"] = 10650
	tHalloweenCarnivalBaron_Transform[8]["MonsterId"] = 3249
	tHalloweenCarnivalBaron_Transform[8]["Times"] = 300
-- 巨斧王
	tHalloweenCarnivalBaron_Transform[9] = {}
	tHalloweenCarnivalBaron_Transform[9]["Magictype"] = 10651
	tHalloweenCarnivalBaron_Transform[9]["MagictypeLevel"] = 10651
	tHalloweenCarnivalBaron_Transform[9]["MonsterId"] = 4014
	tHalloweenCarnivalBaron_Transform[9]["Times"] = 300
-- 嗜血蝠王
	tHalloweenCarnivalBaron_Transform[10] = {}
	tHalloweenCarnivalBaron_Transform[10]["Magictype"] = 10652
	tHalloweenCarnivalBaron_Transform[10]["MagictypeLevel"] = 10652
	tHalloweenCarnivalBaron_Transform[10]["MonsterId"] = 4015
	tHalloweenCarnivalBaron_Transform[10]["Times"] = 300
-- 银羽鹰王
	tHalloweenCarnivalBaron_Transform[11] = {}
	tHalloweenCarnivalBaron_Transform[11]["Magictype"] = 10687
	tHalloweenCarnivalBaron_Transform[11]["MagictypeLevel"] = 10687
	tHalloweenCarnivalBaron_Transform[11]["MonsterId"] = 4016
	tHalloweenCarnivalBaron_Transform[11]["Times"] = 300
-- 牛魔
	tHalloweenCarnivalBaron_Transform[12] = {}
	tHalloweenCarnivalBaron_Transform[12]["Magictype"] = 10653
	tHalloweenCarnivalBaron_Transform[12]["MagictypeLevel"] = 10653
	tHalloweenCarnivalBaron_Transform[12]["MonsterId"] = 4017
	tHalloweenCarnivalBaron_Transform[12]["Times"] = 300
-- 冷血魔头
	tHalloweenCarnivalBaron_Transform[13] = {}
	tHalloweenCarnivalBaron_Transform[13]["Magictype"] = 10654
	tHalloweenCarnivalBaron_Transform[13]["MagictypeLevel"] = 10654
	tHalloweenCarnivalBaron_Transform[13]["MonsterId"] = 4018
	tHalloweenCarnivalBaron_Transform[13]["Times"] = 300
-- 霸王叫天鸡
	tHalloweenCarnivalBaron_Transform[14] = {}
	tHalloweenCarnivalBaron_Transform[14]["Magictype"] = 10655
	tHalloweenCarnivalBaron_Transform[14]["MagictypeLevel"] = 10655
	tHalloweenCarnivalBaron_Transform[14]["MonsterId"] = 1265
	tHalloweenCarnivalBaron_Transform[14]["Times"] = 300
-- 青翼魔君
	tHalloweenCarnivalBaron_Transform[15] = {}
	tHalloweenCarnivalBaron_Transform[15]["Magictype"] = 10656
	tHalloweenCarnivalBaron_Transform[15]["MagictypeLevel"] = 10656
	tHalloweenCarnivalBaron_Transform[15]["MonsterId"] = 1266
	tHalloweenCarnivalBaron_Transform[15]["Times"] = 300
-- 吞舟巨鲲
	tHalloweenCarnivalBaron_Transform[16] = {}
	tHalloweenCarnivalBaron_Transform[16]["Magictype"] = 10657
	tHalloweenCarnivalBaron_Transform[16]["MagictypeLevel"] = 10657
	tHalloweenCarnivalBaron_Transform[16]["MonsterId"] = 1267
	tHalloweenCarnivalBaron_Transform[16]["Times"] = 300
-- 无天修罗
	tHalloweenCarnivalBaron_Transform[17] = {}
	tHalloweenCarnivalBaron_Transform[17]["Magictype"] = 10658
	tHalloweenCarnivalBaron_Transform[17]["MagictypeLevel"] = 10658
	tHalloweenCarnivalBaron_Transform[17]["MonsterId"] = 1268
	tHalloweenCarnivalBaron_Transform[17]["Times"] = 300
-- 刑天之魂
	tHalloweenCarnivalBaron_Transform[18] = {}
	tHalloweenCarnivalBaron_Transform[18]["Magictype"] = 10659
	tHalloweenCarnivalBaron_Transform[18]["MagictypeLevel"] = 10659
	tHalloweenCarnivalBaron_Transform[18]["MonsterId"] = 1269
	tHalloweenCarnivalBaron_Transform[18]["Times"] = 300
-- 饕餮
	tHalloweenCarnivalBaron_Transform[19] = {}
	tHalloweenCarnivalBaron_Transform[19]["Magictype"] = 10660
	tHalloweenCarnivalBaron_Transform[19]["MagictypeLevel"] = 10660
	tHalloweenCarnivalBaron_Transform[19]["MonsterId"] = 1270
	tHalloweenCarnivalBaron_Transform[19]["Times"] = 300
-- 西域妖龙
	tHalloweenCarnivalBaron_Transform[20] = {}
	tHalloweenCarnivalBaron_Transform[20]["Magictype"] = 10661
	tHalloweenCarnivalBaron_Transform[20]["MagictypeLevel"] = 10661
	tHalloweenCarnivalBaron_Transform[20]["MonsterId"] = 1271
	tHalloweenCarnivalBaron_Transform[20]["Times"] = 300
-- 雪蛛鬼母
	tHalloweenCarnivalBaron_Transform[21] = {}
	tHalloweenCarnivalBaron_Transform[21]["Magictype"] = 10662
	tHalloweenCarnivalBaron_Transform[21]["MagictypeLevel"] = 10662
	tHalloweenCarnivalBaron_Transform[21]["MonsterId"] = 1272
	tHalloweenCarnivalBaron_Transform[21]["Times"] = 300
-- 烈焰巨魔
	tHalloweenCarnivalBaron_Transform[22] = {}
	tHalloweenCarnivalBaron_Transform[22]["Magictype"] = 10663
	tHalloweenCarnivalBaron_Transform[22]["MagictypeLevel"] = 10663
	tHalloweenCarnivalBaron_Transform[22]["MonsterId"] = 1273
	tHalloweenCarnivalBaron_Transform[22]["Times"] = 300
-- 赢勾
	tHalloweenCarnivalBaron_Transform[23] = {}
	tHalloweenCarnivalBaron_Transform[23]["Magictype"] = 10664
	tHalloweenCarnivalBaron_Transform[23]["MagictypeLevel"] = 10664
	tHalloweenCarnivalBaron_Transform[23]["MonsterId"] = 1253
	tHalloweenCarnivalBaron_Transform[23]["Times"] = 300
-- 旱魃
	tHalloweenCarnivalBaron_Transform[24] = {}
	tHalloweenCarnivalBaron_Transform[24]["Magictype"] = 10665
	tHalloweenCarnivalBaron_Transform[24]["MagictypeLevel"] = 10665
	tHalloweenCarnivalBaron_Transform[24]["MonsterId"] = 1254
	tHalloweenCarnivalBaron_Transform[24]["Times"] = 300
-- 罗刹女
	tHalloweenCarnivalBaron_Transform[25] = {}
	tHalloweenCarnivalBaron_Transform[25]["Magictype"] = 10666
	tHalloweenCarnivalBaron_Transform[25]["MagictypeLevel"] = 10666
	tHalloweenCarnivalBaron_Transform[25]["MonsterId"] = 1255
	tHalloweenCarnivalBaron_Transform[25]["Times"] = 300
-- 狼人
	tHalloweenCarnivalBaron_Transform[26] = {}
	tHalloweenCarnivalBaron_Transform[26]["Magictype"] = 10667
	tHalloweenCarnivalBaron_Transform[26]["MagictypeLevel"] = 10667
	tHalloweenCarnivalBaron_Transform[26]["MonsterId"] = 1256
	tHalloweenCarnivalBaron_Transform[26]["Times"] = 300
-- 血皇后
	tHalloweenCarnivalBaron_Transform[27] = {}
	tHalloweenCarnivalBaron_Transform[27]["Magictype"] = 10668
	tHalloweenCarnivalBaron_Transform[27]["MagictypeLevel"] = 10668
	tHalloweenCarnivalBaron_Transform[27]["MonsterId"] = 1257
	tHalloweenCarnivalBaron_Transform[27]["Times"] = 300
-- 白无常
	tHalloweenCarnivalBaron_Transform[28] = {}
	tHalloweenCarnivalBaron_Transform[28]["Magictype"] = 10669
	tHalloweenCarnivalBaron_Transform[28]["MagictypeLevel"] = 10669
	tHalloweenCarnivalBaron_Transform[28]["MonsterId"] = 1258
	tHalloweenCarnivalBaron_Transform[28]["Times"] = 300
-- 将臣
	tHalloweenCarnivalBaron_Transform[29] = {}
	tHalloweenCarnivalBaron_Transform[29]["Magictype"] = 10670
	tHalloweenCarnivalBaron_Transform[29]["MagictypeLevel"] = 10670
	tHalloweenCarnivalBaron_Transform[29]["MonsterId"] = 1259
	tHalloweenCarnivalBaron_Transform[29]["Times"] = 300
-- 法老木乃伊
	tHalloweenCarnivalBaron_Transform[30] = {}
	tHalloweenCarnivalBaron_Transform[30]["Magictype"] = 10671
	tHalloweenCarnivalBaron_Transform[30]["MagictypeLevel"] = 10671
	tHalloweenCarnivalBaron_Transform[30]["MonsterId"] = 1260
	tHalloweenCarnivalBaron_Transform[30]["Times"] = 300
-- 幽灵船长
	tHalloweenCarnivalBaron_Transform[31] = {}
	tHalloweenCarnivalBaron_Transform[31]["Magictype"] = 10672
	tHalloweenCarnivalBaron_Transform[31]["MagictypeLevel"] = 10672
	tHalloweenCarnivalBaron_Transform[31]["MonsterId"] = 1261
	tHalloweenCarnivalBaron_Transform[31]["Times"] = 300
-- 迈克尔 麦尔斯
	tHalloweenCarnivalBaron_Transform[33] = {}
	tHalloweenCarnivalBaron_Transform[33]["Magictype"] = 10673
	tHalloweenCarnivalBaron_Transform[33]["MagictypeLevel"] = 10673
	tHalloweenCarnivalBaron_Transform[33]["MonsterId"] = 4019
	tHalloweenCarnivalBaron_Transform[33]["Times"] = 300


--三星鬼怪位置
local tHalloweenCarnivalBaron_Generator = {}
	--普通服
	tHalloweenCarnivalBaron_Generator["Normal"] = {}
	--清风原
	tHalloweenCarnivalBaron_Generator["Normal"][1] = {}
	tHalloweenCarnivalBaron_Generator["Normal"][1][1] = {MapId=1002,Posx=539,Posy=324}
	tHalloweenCarnivalBaron_Generator["Normal"][1][2] = {MapId=1002,Posx=592,Posy=445}
	tHalloweenCarnivalBaron_Generator["Normal"][1][3] = {MapId=1002,Posx=681,Posy=380}
	tHalloweenCarnivalBaron_Generator["Normal"][1][4] = {MapId=1002,Posx=359,Posy=688}
	tHalloweenCarnivalBaron_Generator["Normal"][1][5] = {MapId=1002,Posx=397,Posy=607}
	--枫溪林
	tHalloweenCarnivalBaron_Generator["Normal"][2] = {}
	tHalloweenCarnivalBaron_Generator["Normal"][2][1] = {MapId=1011,Posx=81 ,Posy=393}
	tHalloweenCarnivalBaron_Generator["Normal"][2][2] = {MapId=1011,Posx=332,Posy=410}
	tHalloweenCarnivalBaron_Generator["Normal"][2][3] = {MapId=1011,Posx=706,Posy=430}
	tHalloweenCarnivalBaron_Generator["Normal"][2][4] = {MapId=1011,Posx=641,Posy=770}
	tHalloweenCarnivalBaron_Generator["Normal"][2][5] = {MapId=1011,Posx=434,Posy=127}
	--绝情谷
	tHalloweenCarnivalBaron_Generator["Normal"][3] = {}
	tHalloweenCarnivalBaron_Generator["Normal"][3][1] = {MapId=1020,Posx=469,Posy=155}
	tHalloweenCarnivalBaron_Generator["Normal"][3][2] = {MapId=1020,Posx=806,Posy=603}
	tHalloweenCarnivalBaron_Generator["Normal"][3][3] = {MapId=1020,Posx=331,Posy=591}
	tHalloweenCarnivalBaron_Generator["Normal"][3][4] = {MapId=1020,Posx=694,Posy=738}
	tHalloweenCarnivalBaron_Generator["Normal"][3][5] = {MapId=1020,Posx=261,Posy=264}
	--云门关
	tHalloweenCarnivalBaron_Generator["Normal"][4] = {}
	tHalloweenCarnivalBaron_Generator["Normal"][4][1] = {MapId=1000,Posx=941,Posy=664}
	tHalloweenCarnivalBaron_Generator["Normal"][4][2] = {MapId=1000,Posx=630,Posy=642}
	tHalloweenCarnivalBaron_Generator["Normal"][4][3] = {MapId=1000,Posx=408,Posy=206}
	tHalloweenCarnivalBaron_Generator["Normal"][4][4] = {MapId=1000,Posx=336,Posy=397}
	tHalloweenCarnivalBaron_Generator["Normal"][4][5] = {MapId=1000,Posx=151,Posy=338}
	--芦花荡
	tHalloweenCarnivalBaron_Generator["Normal"][5] = {}
	tHalloweenCarnivalBaron_Generator["Normal"][5][1] = {MapId=1015,Posx=930,Posy=706}
	tHalloweenCarnivalBaron_Generator["Normal"][5][2] = {MapId=1015,Posx=475,Posy=634}
	tHalloweenCarnivalBaron_Generator["Normal"][5][3] = {MapId=1015,Posx=543,Posy=357}
	tHalloweenCarnivalBaron_Generator["Normal"][5][4] = {MapId=1015,Posx=349,Posy=219}
	tHalloweenCarnivalBaron_Generator["Normal"][5][5] = {MapId=1015,Posx=828,Posy=792}
	--神龙岛
	tHalloweenCarnivalBaron_Generator["Normal"][6] = {}
	tHalloweenCarnivalBaron_Generator["Normal"][6][1] = {MapId=10137,Posx=224,Posy=445}
	tHalloweenCarnivalBaron_Generator["Normal"][6][2] = {MapId=10137,Posx=437,Posy=239}
	tHalloweenCarnivalBaron_Generator["Normal"][6][3] = {MapId=10137,Posx=518,Posy=721}
	tHalloweenCarnivalBaron_Generator["Normal"][6][4] = {MapId=10137,Posx=729,Posy=521}
	tHalloweenCarnivalBaron_Generator["Normal"][6][5] = {MapId=10137,Posx=384,Posy=561}
	tHalloweenCarnivalBaron_Generator["Normal"][6][6] = {MapId=10137,Posx=363,Posy=625}
	tHalloweenCarnivalBaron_Generator["Normal"][6][7] = {MapId=10137,Posx=299,Posy=248}
	tHalloweenCarnivalBaron_Generator["Normal"][6][8] = {MapId=10137,Posx=625,Posy=431}
	tHalloweenCarnivalBaron_Generator["Normal"][6][9] = {MapId=10137,Posx=660,Posy=686}
	tHalloweenCarnivalBaron_Generator["Normal"][6][10] = {MapId=10137,Posx=441,Posy=502}
	--古神灵境
	tHalloweenCarnivalBaron_Generator["Normal"][7] = {}
	tHalloweenCarnivalBaron_Generator["Normal"][7][1] = {MapId=10250,Posx=880,Posy=1152}
	tHalloweenCarnivalBaron_Generator["Normal"][7][2] = {MapId=10250,Posx=639,Posy=895}
	tHalloweenCarnivalBaron_Generator["Normal"][7][3] = {MapId=10250,Posx=244,Posy=552}
	tHalloweenCarnivalBaron_Generator["Normal"][7][4] = {MapId=10250,Posx=965,Posy=971}
	tHalloweenCarnivalBaron_Generator["Normal"][7][5] = {MapId=10250,Posx=619,Posy=583}
	tHalloweenCarnivalBaron_Generator["Normal"][7][6] = {MapId=10250,Posx=273 ,Posy=222}
	tHalloweenCarnivalBaron_Generator["Normal"][7][7] = {MapId=10250,Posx=448 ,Posy=119}
	tHalloweenCarnivalBaron_Generator["Normal"][7][8] = {MapId=10250,Posx=765 ,Posy=404}
	tHalloweenCarnivalBaron_Generator["Normal"][7][9] = {MapId=10250,Posx=926 ,Posy=768}
	tHalloweenCarnivalBaron_Generator["Normal"][7][10] = {MapId=10250,Posx=1211,Posy=967}

	--激情服
	tHalloweenCarnivalBaron_Generator["NoGift"] = {}
	--清风原
	tHalloweenCarnivalBaron_Generator["NoGift"][1] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][1][1] = {MapId=10364,Posx=437,Posy=297}
	tHalloweenCarnivalBaron_Generator["NoGift"][1][2] = {MapId=10364,Posx=307,Posy=543}
	tHalloweenCarnivalBaron_Generator["NoGift"][1][3] = {MapId=10364,Posx=549,Posy=674}
	tHalloweenCarnivalBaron_Generator["NoGift"][1][4] = {MapId=10364,Posx=686,Posy=567}
	tHalloweenCarnivalBaron_Generator["NoGift"][1][5] = {MapId=10364,Posx=156,Posy=405}
	--枫溪林
	tHalloweenCarnivalBaron_Generator["NoGift"][2] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][2][1] = {MapId=10365,Posx=81 ,Posy=393}
	tHalloweenCarnivalBaron_Generator["NoGift"][2][2] = {MapId=10365,Posx=332,Posy=410}
	tHalloweenCarnivalBaron_Generator["NoGift"][2][3] = {MapId=10365,Posx=706,Posy=430}
	tHalloweenCarnivalBaron_Generator["NoGift"][2][4] = {MapId=10365,Posx=641,Posy=770}
	tHalloweenCarnivalBaron_Generator["NoGift"][2][5] = {MapId=10365,Posx=434,Posy=127}
	--绝情谷
	tHalloweenCarnivalBaron_Generator["NoGift"][3] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][3][1] = {MapId=10366,Posx=469,Posy=155}
	tHalloweenCarnivalBaron_Generator["NoGift"][3][2] = {MapId=10366,Posx=806,Posy=603}
	tHalloweenCarnivalBaron_Generator["NoGift"][3][3] = {MapId=10366,Posx=331,Posy=591}
	tHalloweenCarnivalBaron_Generator["NoGift"][3][4] = {MapId=10366,Posx=694,Posy=738}
	tHalloweenCarnivalBaron_Generator["NoGift"][3][5] = {MapId=10366,Posx=261,Posy=264}
	--大漠
	tHalloweenCarnivalBaron_Generator["NoGift"][4] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][4][1] = {MapId=10367,Posx=941,Posy=664}
	tHalloweenCarnivalBaron_Generator["NoGift"][4][2] = {MapId=10367,Posx=630,Posy=642}
	tHalloweenCarnivalBaron_Generator["NoGift"][4][3] = {MapId=10367,Posx=408,Posy=206}
	tHalloweenCarnivalBaron_Generator["NoGift"][4][4] = {MapId=10367,Posx=336,Posy=397}
	tHalloweenCarnivalBaron_Generator["NoGift"][4][5] = {MapId=10367,Posx=151,Posy=338}
	--芦花荡
	tHalloweenCarnivalBaron_Generator["NoGift"][5] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][5][1] = {MapId=10368,Posx=930,Posy=706}
	tHalloweenCarnivalBaron_Generator["NoGift"][5][2] = {MapId=10368,Posx=475,Posy=634}
	tHalloweenCarnivalBaron_Generator["NoGift"][5][3] = {MapId=10368,Posx=543,Posy=357}
	tHalloweenCarnivalBaron_Generator["NoGift"][5][4] = {MapId=10368,Posx=349,Posy=219}
	tHalloweenCarnivalBaron_Generator["NoGift"][5][5] = {MapId=10368,Posx=828,Posy=792}
	--无间之堭
	tHalloweenCarnivalBaron_Generator["NoGift"][8] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][8][1] = {MapId=10479,Posx=221,Posy=450}
	tHalloweenCarnivalBaron_Generator["NoGift"][8][2] = {MapId=10479,Posx=312,Posy=551}
	tHalloweenCarnivalBaron_Generator["NoGift"][8][3] = {MapId=10479,Posx=388,Posy=361}
	tHalloweenCarnivalBaron_Generator["NoGift"][8][4] = {MapId=10479,Posx=221,Posy=305}
	tHalloweenCarnivalBaron_Generator["NoGift"][8][5] = {MapId=10479,Posx=474,Posy=382}
	--罪业之堭
	tHalloweenCarnivalBaron_Generator["NoGift"][9] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][9][1] = {MapId=10480,Posx=217,Posy=437}
	tHalloweenCarnivalBaron_Generator["NoGift"][9][2] = {MapId=10480,Posx=343,Posy=357}
	tHalloweenCarnivalBaron_Generator["NoGift"][9][3] = {MapId=10480,Posx=506,Posy=255}
	tHalloweenCarnivalBaron_Generator["NoGift"][9][4] = {MapId=10480,Posx=613,Posy=261}
	tHalloweenCarnivalBaron_Generator["NoGift"][9][5] = {MapId=10480,Posx=483,Posy=365}
	--永生之堭
	tHalloweenCarnivalBaron_Generator["NoGift"][10] = {}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][1] = {MapId=10481,Posx=123,Posy=429}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][2] = {MapId=10481,Posx=209,Posy=410}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][3] = {MapId=10481,Posx=334,Posy=473}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][4] = {MapId=10481,Posx=231,Posy=315}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][5] = {MapId=10481,Posx=347,Posy=327}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][6] = {MapId=10481,Posx=387,Posy=226}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][7] = {MapId=10481,Posx=515,Posy=284}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][8] = {MapId=10481,Posx=392,Posy=123}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][9] = {MapId=10481,Posx=613,Posy=261}
	tHalloweenCarnivalBaron_Generator["NoGift"][10][10] = {MapId=10481,Posx=487,Posy=120}


	--鬼怪出没踪迹数量
local tHalloweenCarnivalBaron_Maybe = {}
	tHalloweenCarnivalBaron_Maybe[1] = 5
	tHalloweenCarnivalBaron_Maybe[2] = 5
	tHalloweenCarnivalBaron_Maybe[3] = 5
	tHalloweenCarnivalBaron_Maybe[4] = 5
	tHalloweenCarnivalBaron_Maybe[5] = 5
	tHalloweenCarnivalBaron_Maybe[6] = 10
	tHalloweenCarnivalBaron_Maybe[7] = 10
	tHalloweenCarnivalBaron_Maybe[8] = 5
	tHalloweenCarnivalBaron_Maybe[9] = 5
	tHalloweenCarnivalBaron_Maybe[10] = 10


--地图索引的三星鬼怪
local tHalloweenCarnivalBaron_GeneratorByMap = {}
	--清风原
	tHalloweenCarnivalBaron_GeneratorByMap[1] = 24982
	--枫溪林
	tHalloweenCarnivalBaron_GeneratorByMap[2] = 24983
	--绝情谷
	tHalloweenCarnivalBaron_GeneratorByMap[3] = 24984
	--云门关
	tHalloweenCarnivalBaron_GeneratorByMap[4] = 24985
	--芦花荡
	tHalloweenCarnivalBaron_GeneratorByMap[5] = 24986
	--神龙岛
	tHalloweenCarnivalBaron_GeneratorByMap[6] = {}
	tHalloweenCarnivalBaron_GeneratorByMap[6][1] = 24987
	tHalloweenCarnivalBaron_GeneratorByMap[6][2] = 24988
	--古神灵境
	tHalloweenCarnivalBaron_GeneratorByMap[7] = {}
	tHalloweenCarnivalBaron_GeneratorByMap[7][1] = 24989
	tHalloweenCarnivalBaron_GeneratorByMap[7][2] = 24990
	--无间之堭
	tHalloweenCarnivalBaron_GeneratorByMap[8] = 24987
	--罪业之堭
	tHalloweenCarnivalBaron_GeneratorByMap[9] = 24988
	--永生之堭
	tHalloweenCarnivalBaron_GeneratorByMap[10] = {}
	tHalloweenCarnivalBaron_GeneratorByMap[10][1] = 24989
	tHalloweenCarnivalBaron_GeneratorByMap[10][2] = 24990


--奖励模板
local tHalloweenCarnivalBaron_Reward = {}
	-- ===【中文】鬼怪糖果
	-- ===索引: tHalloweenCarnivalBaron_Reward[1]
	tHalloweenCarnivalBaron_Reward[1] = {}
	tHalloweenCarnivalBaron_Reward[1]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[1]["RewardItem"] = {}
	tHalloweenCarnivalBaron_Reward[1]["RewardItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[1]["RewardItem"][1]["Id"] = 3600166 -- 【中文】鬼怪糖果[3600166][属性:9][叠加:1000][金币:0], 【表格】【中文】鬼怪糖果
	tHalloweenCarnivalBaron_Reward[1]["RewardItem"][1]["Attr"] = "0 5" -- 【中文】鬼怪糖果*5
	tHalloweenCarnivalBaron_Reward[1]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[1]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenCarnivalBaron_Reward[2] = {}
	-- ===【英文】鬼怪糖果
	-- ===索引: tHalloweenCarnivalBaron_Reward[2]
	tHalloweenCarnivalBaron_Reward[2]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[2]["RewardItem"] = {}
	tHalloweenCarnivalBaron_Reward[2]["RewardItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[2]["RewardItem"][1]["Id"] = 3600167 -- 【英语】鬼怪糖果[3600167][属性:9][叠加:1000][金币:0], 【表格】【英文】鬼怪糖果
	tHalloweenCarnivalBaron_Reward[2]["RewardItem"][1]["Attr"] = "0 5" -- 【英语】鬼怪糖果*5
	tHalloweenCarnivalBaron_Reward[2]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[2]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenCarnivalBaron_Reward[3313807] = {}
	-- ===1星鬼怪礼包
	-- ===索引: tHalloweenCarnivalBaron_Reward[3313807]
	tHalloweenCarnivalBaron_Reward[3313807]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[3313807]["RewardItem"] = {}
	tHalloweenCarnivalBaron_Reward[3313807]["RewardItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[3313807]["RewardItem"][1]["Id"] = 3313807 -- 1星鬼怪礼包[3313807][属性:9][叠加:1][金币:0], 【表格】1星鬼怪礼包
	tHalloweenCarnivalBaron_Reward[3313807]["RewardItem"][1]["Attr"] = "0 1" -- 1星鬼怪礼包*1
	tHalloweenCarnivalBaron_Reward[3313807]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[3313807]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[3313807]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenCarnivalBaron_Reward[11] = {}
	-- ===消耗10颗【中文】鬼怪糖果
	-- ===索引: tHalloweenCarnivalBaron_Reward[11]
	-- ===删除:3600166,10
	tHalloweenCarnivalBaron_Reward[11]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[11]["DeleteItem"] = {}
	tHalloweenCarnivalBaron_Reward[11]["DeleteItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[11]["DeleteItem"][1]["Id"] = 3600166 -- 【库】【中文】鬼怪糖果[属性:9]
	tHalloweenCarnivalBaron_Reward[11]["DeleteItem"][1]["ItemNum"] = 10
	tHalloweenCarnivalBaron_Reward[11]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[11]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[11]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenCarnivalBaron_Reward[21] = {}
	-- ===消耗10颗【英文】鬼怪糖果
	-- ===索引: tHalloweenCarnivalBaron_Reward[21]
	-- ===删除:3600167,10
	tHalloweenCarnivalBaron_Reward[21]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[21]["DeleteItem"] = {}
	tHalloweenCarnivalBaron_Reward[21]["DeleteItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[21]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:9]
	tHalloweenCarnivalBaron_Reward[21]["DeleteItem"][1]["ItemNum"] = 10
	tHalloweenCarnivalBaron_Reward[21]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[21]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[21]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenCarnivalBaron_Reward[12] = {}
	-- ===消耗20颗【中文】鬼怪糖果
	-- ===索引: tHalloweenCarnivalBaron_Reward[12]
	-- ===删除:3600166,20
	tHalloweenCarnivalBaron_Reward[12]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[12]["DeleteItem"] = {}
	tHalloweenCarnivalBaron_Reward[12]["DeleteItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[12]["DeleteItem"][1]["Id"] = 3600166 -- 【库】【中文】鬼怪糖果[属性:9]
	tHalloweenCarnivalBaron_Reward[12]["DeleteItem"][1]["ItemNum"] = 20
	tHalloweenCarnivalBaron_Reward[12]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[12]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[12]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenCarnivalBaron_Reward[22] = {}
	-- ===消耗20颗【英文】鬼怪糖果
	-- ===索引: tHalloweenCarnivalBaron_Reward[22]
	-- ===删除:3600167,20
	tHalloweenCarnivalBaron_Reward[22]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[22]["DeleteItem"] = {}
	tHalloweenCarnivalBaron_Reward[22]["DeleteItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[22]["DeleteItem"][1]["Id"] = 3600167 -- 【库】【英语】鬼怪糖果[属性:9]
	tHalloweenCarnivalBaron_Reward[22]["DeleteItem"][1]["ItemNum"] = 20
	tHalloweenCarnivalBaron_Reward[22]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[22]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[22]["RewardEffect"]["Effect"] = "angelwing"


	tHalloweenCarnivalBaron_Reward[3313760] = {}
	-- ===鬼怪变身图鉴
	-- ===索引: tHalloweenCarnivalBaron_Reward[3313760]
	tHalloweenCarnivalBaron_Reward[3313760]["LogId"] = 12001653
	tHalloweenCarnivalBaron_Reward[3313760]["RewardItem"] = {}
	tHalloweenCarnivalBaron_Reward[3313760]["RewardItem"][1] = {}
	tHalloweenCarnivalBaron_Reward[3313760]["RewardItem"][1]["Id"] = 3313760 -- 鬼怪变身图鉴[3313760][属性:11][叠加:0][金币:0], 【表格】鬼怪变身图鉴
	tHalloweenCarnivalBaron_Reward[3313760]["RewardItem"][1]["Attr"] = "0 1" -- 鬼怪变身图鉴*1
	tHalloweenCarnivalBaron_Reward[3313760]["RewardEffect"] = {}
	tHalloweenCarnivalBaron_Reward[3313760]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tHalloweenCarnivalBaron_Reward[3313760]["RewardEffect"]["Effect"] = "angelwing"



---------------------------------------------逻辑模块---------------------------------------------
--寻路
function HalloweenCarnivalBaron_Where(nNpcId)
	--获取玩家和NPC的地图ID
	local nUserId = Get_UserId()
	local nNpcMap = Get_NpcMapID(nNpcId)
	local nNowMapId = Get_UserMapId(nUserId)

	--判断是否在一张地图
	if nNowMapId == nNpcMap then
		NpcPosition_PathFind(nNpcId)
	else
		--不在同一张地图则提示前往
		Sys_MsgBox(tHalloweenCarnivalBaron_Text["FindNpc"])
		User_TalkChannel2005(tHalloweenCarnivalBaron_Text["FindNpc"])
	end
end

--寻找前往跨服地图NPC
function HalloweenCarnivalBaron_FindFiveStar()
	local nChgMapNPCId = tHalloweenCarnivalBaron_Cont["ChgMapNPCId"]
	
	--寻路到跨服地图NPC
	HalloweenCarnivalBaron_Where(nChgMapNPCId)
	User_TalkChannel2005(tHalloweenCarnivalBaron_Text["NoFindStar"])
end

--清除神龙岛BUFF
function HalloweenCarnivalBaron_DelRoleStatus()
	local nUserId = Get_UserId()

	--遍历判断神龙岛BUFF存在
	for i,v in pairs(tHalloweenCarnivalBaron_Medicine["StatusType"]) do
		local nStatus = tHalloweenCarnivalBaron_Medicine["StatusType"][i]
		if User_ChkRoleStatus(nStatus,nUserId) then
			User_DelRoleStatus(nStatus,nUserId)
		end
	end
end

--传送
function HalloweenCarnivalBaron_RandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId(nUserId)

	--同地图传送不做限制
	if nMapId ~= nUserMapId then
		--等级判断
		if not HalloweenCarnivalBaron_ChkGoMap1(nMapId,nUserId) then 
			return
		end
		
		if not HalloweenCarnivalBaron_ChkGoMap2(nMapId,nUserId) then 
			return
		end
		
		if not HalloweenCarnivalBaron_ChkGoMap3(nMapId,nUserId) then 
			return
		end
		
		--传送限制
		if not ActivityNotice_Map() then
			Sys_MsgBox(tHalloweenCarnivalBaron_Text["NoChgMap"])
			User_TalkChannel2005(tHalloweenCarnivalBaron_Text["NoChgMap"])
			return
		end
	end
	
	--判断在神龙岛
	if not User_ChkShenlongIsland(nUserId) then
		--清除神龙岛BUFF
		-- HalloweenCarnivalBaron_DelRoleStatus()
		User_UserRandBoundTransByShenlongIsland(nMapId,nPosX,nPosY,nRange,nRange)
	else
		--不在神龙岛
		User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	end
end

-- 判断地图ID，是否要去BOSS之家
function HalloweenCarnivalBaron_ChkGoMap1(nMapId,nUserId)
	local nUserId = Get_UserId()

	for i,v in pairs(tHalloweenCarnivalBaron_RandBound["BOSSMap"]) do
		if nMapId == v then
			-- 等级判断
			if not PublicBOSS_ChkLevel(i) then
				local sText = string.format(tPublicBOSS_Text[24171]["Text211"],tPublicBOSS_Text[24171][i])
				Sys_MsgBox(sText)
				User_TalkChannel2005(sText)
				return false
			end
		end
	end
	
	return true
end

-- 判断地图ID，是否要去神龙岛
function HalloweenCarnivalBaron_ChkGoMap2(nMapId,nUserId)
	if nMapId == tHalloweenCarnivalBaron_RandBound["Map"][1] then
		-- 判断等级
		local nLevel =1
		local nMete = 2
		if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
			--Sys_MsgBox(tUndergroundPalace_Text["Msg"]["LevelLimit"])
			--User_TalkChannel2005(tUndergroundPalace_Text["Msg"]["LevelLimit"])
			Sys_MsgBox(tUndergroundPalace_Text["NotUpLevelText"])
			User_TalkChannel2005(tUndergroundPalace_Text["NotUpLevelText"])
			return false
		end
	end

	return true
end

-- 判断地图ID，是否要去打宝区
function HalloweenCarnivalBaron_ChkGoMap3(nMapId,nUserId)
	if nMapId == tHalloweenCarnivalBaron_RandBound["Map"][2] then
		-- 判断等级
		if not TreasureArea_JudgeLevel(nUserId) then
			Sys_MsgBox(tTreasureArea_Text[20823]["LevelLimit"])
			User_TalkChannel2005(tTreasureArea_Text[20823]["LevelLimit"])
			return false
		end
	end

	return true
end

--传送到鬼怪处
function HalloweenCarnivalBaron_UserRandBoundTrans(nNpcId)
	--获取玩家和NPC的地图ID
	local nUserId = Get_UserId()
	local nNowMapId = Get_UserMapId(nUserId)
	local nMapId = Get_NpcMapID(nNpcId)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	local nRange = 5

	--判断是否在集中营
	if nMapId ~= 5000 then
		HalloweenCarnivalBaron_RandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	end
end

--返回市场区
function HalloweenCarnivalBaron_ReturnCity()
	--获取地图ID和坐标
	local nUserId = Get_UserId()
	local nMapId = tHalloweenCarnivalBaron_Map["City"]["MapId"]
	local nPosX = tHalloweenCarnivalBaron_Map["City"]["PosX"]
	local nPosY = tHalloweenCarnivalBaron_Map["City"]["PosY"]
	local nRange = 3

	--判断激情服
	if SpecialServer_ChkNoGiftServer() then 
		nMapId = tHalloweenCarnivalBaron_Map["NoGiftCity"]["MapId"]
		nPosX = tHalloweenCarnivalBaron_Map["NoGiftCity"]["PosX"]
		nPosY = tHalloweenCarnivalBaron_Map["NoGiftCity"]["PosY"]
	end

	--传送
	HalloweenCarnivalBaron_RandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
end

--恐惧怪物复活之夜
function HalloweenCarnivalBaron_FindMonsterAbaviosis()
	--获取地图ID和坐标
	local nUserId = Get_UserId()
	local nMapId = tHalloweenCarnivalBaron_Map["Monster"]["MapId"]
	local nPosX = tHalloweenCarnivalBaron_Map["Monster"]["PosX"]
	local nPosY = tHalloweenCarnivalBaron_Map["Monster"]["PosY"]
	local nRange = 3

	--判断激情服
	if SpecialServer_ChkNoGiftServer() then 
		nMapId = tHalloweenCarnivalBaron_Map["NoGiftMonster"]["MapId"]
		nPosX = tHalloweenCarnivalBaron_Map["NoGiftMonster"]["PosX"]
		nPosY = tHalloweenCarnivalBaron_Map["NoGiftMonster"]["PosY"]
	end

	User_UserRandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	Sys_MsgBox(tHalloweenCarnivalBaron_Text["MonsterAbaviosis"])
	User_TalkChannel2005(tHalloweenCarnivalBaron_Text["MonsterAbaviosis"])
end

--收集4星鬼怪
function HalloweenCarnivalBaron_FindFourStar(nMapIndex)
	local nUserId = Get_UserId()

	--判断在神龙岛
	if not User_ChkShenlongIsland(nUserId) then
		HalloweenCarnivalBaron_FindFourStar105(nMapIndex)
	else
		--不在神龙岛
		--105提示传送到4星鬼怪
		Sys_MsgBox(tHalloweenCarnivalBaron_Text["IsFindStar"] ,"HalloweenCarnivalBaron_FindFourStar105</N>"..nMapIndex)
	end
end
--105提示传送到4星鬼怪
function HalloweenCarnivalBaron_FindFourStar105(nMapIndex)
	--获取地图ID和坐标
	local nUserId = Get_UserId()
	local nMapId = tHalloweenCarnivalBaron_Map["FindFourStar"][nMapIndex]["MapId"]
	local nPosX = tHalloweenCarnivalBaron_Map["FindFourStar"][nMapIndex]["PosX"]
	local nPosY = tHalloweenCarnivalBaron_Map["FindFourStar"][nMapIndex]["PosY"]
	local nRange = 5

	--传送
	HalloweenCarnivalBaron_RandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	User_TalkChannel2005(tHalloweenCarnivalBaron_Text["ShenlongIsland"])
end

--判断1星鬼怪任务完成（对白生成）
function HalloweenCarnivalBaron_IsOneStar()
	local nUserId = Get_UserId()
	local nData = HalloweenCarnivalBaron_GetStcValue(107,nUserId) or 0

	--判断1星鬼怪任务完成
	if nData == 1 then 
		--已接受1星鬼怪任务还未完成的玩家
		LinkNpcGossipFunc_New(24993,"5-3")
	elseif nData >= 2 then 
		--已完成1星鬼怪任务的玩家
		LinkNpcGossipFunc_New(24993,"3-1")
	else
		--未接受任务的玩家
		LinkNpcGossipFunc_New(24993,"2-1")
	end
end

--前往寻找1星鬼怪
function HalloweenCarnivalBaron_OneStarMonster(nNpcId)
	local nUserId = Get_UserId()

	--判断是否已领取糖果
	if HalloweenCarnivalBaron_GetStcValue(106) ~= 1 then 
		--判断背包
		if not HalloweenCarnivalBaron_CheckLeftSpace(1) then 
			return 
		end 
		--领取1星鬼怪任务掩码
		if HalloweenCarnivalBaron_SetStcValue(107,1,nUserId) then 
			--领取糖果掩码
			if HalloweenCarnivalBaron_SetStcValue(106,1,nUserId) then 
				--给玩家糖果
				RewardTemplate_UseItemAndMsg(tHalloweenCarnivalBaron_Reward[2],nUserId)
			end
			--105提示寻路到1星鬼怪
			Sys_MsgBox(tHalloweenCarnivalBaron_Text["FindOneStar"] ,"HalloweenCarnivalBaron_Where</N>24969")
		end
	else
		--寻路到1星鬼怪
		HalloweenCarnivalBaron_Where(nNpcId)
	end 
end

--1星鬼怪任务完成
function HalloweenCarnivalBaron_FindOneStarMonster(nNpcId)
	local nUserId = Get_UserId()
	local nData = HalloweenCarnivalBaron_GetStcValue(107,nUserId)

	--1星鬼怪任务完成
	HalloweenCarnivalBaron_AddTask(2,nUserId)

	--已接受1星鬼怪任务的玩家，任务掩码增加
	if nData ~= nil and nData == 1 then 
		if HalloweenCarnivalBaron_SetStcValue(107,2,nUserId) then 
			--寻路到万圣男爵
			Sys_MsgBox(tHalloweenCarnivalBaron_Text["FindMainNpc"] ,"HalloweenCarnivalBaron_Where</N>24993")
		end
	end
end

--领取好礼
function HalloweenCarnivalBaron_GetOneStarReward()
	--判断任务是否已完成
	local nUserId = Get_UserId()
	local nData = HalloweenCarnivalBaron_GetStcValue(107,nUserId)
	local nData2 = HalloweenCarnivalBaron_GetStcValue(101,nUserId)
	local nNpcId = tHalloweenCarnivalBaron_Cont["OneStarMonsterId"]
	local nHairId = tHalloweenCarnivalBaron_Cont["PumpkinHair"]

	if nData ~= nil and nData >= 2 then 
		--任务已完成
		if nData2 ~= 1 then 
			--判断背包
			local nSpace = tHalloweenCarnivalBaron_Cont["Space"][101]
			if not HalloweenCarnivalBaron_CheckLeftSpace(nSpace) then 
				return
			end
			
			--领取1星鬼怪礼包和南瓜头
			if HalloweenCarnivalBaron_SetStcValue(101,1,nUserId) then 
				if RewardTemplate_UseItemAndMsg(tHalloweenCarnivalBaron_Reward[3313807],nUserId) then 
					--给南瓜头
					if HalloweenCarnivalBaron_SetStcValue(110,0,nUserId) then 
						User_NotifyChgHairstyle(nHairId,0,nUserId)
						--提示玩家前往寻找南瓜怪杰
						Sys_MsgBox(tHalloweenCarnivalBaron_Text["PumpkinHead"],"HalloweenCarnivalBaron_FindPumpkinNpc</N>25010")
						User_TalkChannel2005(tHalloweenCarnivalBaron_Text["PumpkinHead"])
					end
				end
			end
		end
		LinkNpcGossipFunc_New(24993,"1-4")
	else
		--任务还未完成，提示玩家前往寻找1星鬼怪
		LinkNpcGossipFunc_New(24993,"5-3")
	end
end

--玩家寻路到南瓜怪杰
function HalloweenCarnivalBaron_FindPumpkinNpc(nNpcId)
	--寻路到南瓜怪杰掩码
	local nUserId = Get_UserId()
	local nIndex = tHalloweenCarnivalBaron_Cont["PumpkinNpcStc"]
	local nData = HalloweenCarnivalBaron_GetStcValue(nIndex,nUserId)
	
	--判断是否从万圣男爵寻路到南瓜怪杰
	if nData ~= nil and nData >= 1 then 
		return
	else
		--寻路到南瓜怪杰
		HalloweenCarnivalBaron_Where(nNpcId)
		HalloweenCarnivalBaron_SetStcValue(nIndex,1,nUserId)
	end
end

--寻路到南瓜怪杰对话
function HalloweenCarnivalBaron_FindPumpkinNpcStc()
	--寻路到南瓜怪杰对话掩码
	local nUserId = Get_UserId()
	local nIndex = tHalloweenCarnivalBaron_Cont["PumpkinNpcStc"]
	local nData = HalloweenCarnivalBaron_GetStcValue(nIndex,nUserId)

	--判断是否从万圣男爵寻路到南瓜怪杰对话
	if nData ~= nil and nData == 1 then 
		--已寻路到南瓜怪杰对话
		HalloweenCarnivalBaron_SetStcValue(nIndex,2,nUserId)
	end
end

--神龙岛、古神灵境、噩梦回廊限制使用鬼怪传送
function HalloweenCarnivalBaron_LinkFindStar(nIsWho)
	--判断NPC对白还是物品对白
	if nIsWho == 1 then 
		--NPC对白
		LinkNpcGossipFunc_New(24993,"3-2")
	else
		--物品对白
		LinkItemGossipFunc_New(3313760,"3-2")
	end
end

--收集鬼怪变身
function HalloweenCarnivalBaron_HaveSweet(nIsWho,nStar)
	--获取糖果数量
	local nSweetId = tHalloweenCarnivalBaron_Cont["Sweet"][2]
	local nNum = Get_CountItemType(nSweetId,0)
	local nNeedSweet = tHalloweenCarnivalBaron_Cont["SweetNum"][nStar]

	--传送限制
	if not ActivityNotice_Map() then
		Sys_MsgBox(tHalloweenCarnivalBaron_Text["NoChgMap"])
		User_TalkChannel2005(tHalloweenCarnivalBaron_Text["NoChgMap"])
		return
	end

	--判断糖果数量
	if nNum >= nNeedSweet then 
		--判断NPC对白还是物品对白
		if nIsWho == 1 then 
			--NPC对白
			if nStar == 1 then 
				LinkNpcGossipFunc_New(24993,"6-2")
			else
				LinkNpcGossipFunc_New(24993,"6-4")
			end
		else
			--物品对白
			if nStar == 1 then 
				LinkItemGossipFunc_New(3313760,"6-2")
			else
				LinkItemGossipFunc_New(3313760,"6-4")
			end
		end
	else
		--判断NPC对白还是物品对白
		if nIsWho == 1 then 
			--NPC对白
			if nStar == 1 then 
				LinkNpcGossipFunc_New(24993,"6-1")
			else
				LinkNpcGossipFunc_New(24993,"6-3")
			end
		else
			--物品对白
			if nStar == 1 then 
				LinkItemGossipFunc_New(3313760,"6-1")
			else
				LinkItemGossipFunc_New(3313760,"6-3")
			end
		end
	end
end

--寻路鬼怪
function HalloweenCarnivalBaron_FindStar(nStar)
	--获取玩家ID
	local nUserId = Get_UserId()
	local nTransform = 0
	local nFlag = 0

	--传送限制
	if not ActivityNotice_Map() then
		Sys_MsgBox(tHalloweenCarnivalBaron_Text["NoChgMap"])
		User_TalkChannel2005(tHalloweenCarnivalBaron_Text["NoChgMap"])
		return
	end
	if nStar == 1 then 
	--判断拥有该变身(1星鬼怪)
		for j=1,5 do
			if nFlag == 0 then
				nTransform,nFlag = HalloweenCarnivalBaron_IsStarTransform(nFlag,nStar,j,nTransform,nUserId)
			end
		end
		if nTransform >= 5 then 
			Sys_MsgBox(string.format(tHalloweenCarnivalBaron_Text["FindAllStar"],nStar))
			User_TalkChannel2005(string.format(tHalloweenCarnivalBaron_Text["FindAllStar"],nStar))
		end
	else
	--判断拥有该变身(2星鬼怪)
		for j=6,13 do
			if nFlag == 0 then
				nTransform,nFlag = HalloweenCarnivalBaron_IsStarTransform(nFlag,nStar,j,nTransform,nUserId)
			end
		end
		if nTransform >= 8 then 
			Sys_MsgBox(string.format(tHalloweenCarnivalBaron_Text["FindAllStar"],nStar))
			User_TalkChannel2005(string.format(tHalloweenCarnivalBaron_Text["FindAllStar"],nStar))
		end
	end
end

--根据鬼怪星级判断今日鬼怪任务完成
function HalloweenCarnivalBaron_IsStarTransform(nFlag,nStar,j,nTransform,nUserId)
	--获取消耗糖果索引
	local nDel = 20 + nStar
	--遍历鬼怪判断今日鬼怪任务完成
	for i,v in pairs(tHalloweenCarnivalBaron_Cont["NpcIndex"]) do
		if v == j then
			if CollectGhost_JudgeHandInCandy(i,nUserId) then 
				--消耗糖果
				if RewardTemplate_UseItemAndMsg(tHalloweenCarnivalBaron_Reward[nDel],nUserId) then 
					--传送
					HalloweenCarnivalBaron_UserRandBoundTrans(i)
					nFlag = nFlag + 1
				end
				return nTransform,nFlag
			else
				nTransform = nTransform + 1
			end
		end
	end

	return nTransform,nFlag
end

--打开内嵌网页
function HalloweenCarnivalBaron_OpenWeb(nWebNum)
	--时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"]) then
		return
	end

	local nUserId = Get_UserId()
	User_SendWebDialog(tHalloweenCarnivalBaron_Web[nWebNum],nUserId)
end

--补领图鉴
function HalloweenCarnivalBaron_HaveNotLetter(nItemId)
	--判断物品是否存在
	if Item_ChkItem(nItemId) then
		return
	end
	if Item_ChkAccItem(nItemId) then
		return
	end

	--背包判断
	if not HalloweenCarnivalBaron_CheckLeftSpace(1) then 
		return
	end

	--发图鉴
	if RewardTemplate_UseItemAndMsg(tHalloweenCarnivalBaron_Reward[nItemId],nUserId) then 
		Sys_MsgBox(tHalloweenCarnivalBaron_Text["TransformBook"])
	end
end

--领取阶段奖励
function HalloweenCarnivalBaron_GetReward(nIsWho)
	--时间与等级判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"]) or not User_JudgeLevelAndMetempsychosis(tHalloweenCarnivalBaron_Cont["Level"],tHalloweenCarnivalBaron_Cont["Metempsychosis"]) then
		return
	end

	local nUserId = Get_UserId()
	--阶段奖励领取掩码
	local nData = HalloweenCarnivalBaron_GetStcValue(102,nUserId)

	--玩家收集变身数量
	local nNum = HalloweenCarnivalBaron_GetTransformNum()

	--各阶段积分要求
	local nScore1 = tHalloweenCarnivalBaron_Cont["Score"][1]
	local nScore2 = tHalloweenCarnivalBaron_Cont["Score"][2]
	local nScore3 = tHalloweenCarnivalBaron_Cont["Score"][3]
	local nScore4 = tHalloweenCarnivalBaron_Cont["Score"][4]
	local nScore5 = tHalloweenCarnivalBaron_Cont["Score"][5]
	local nScore6 = tHalloweenCarnivalBaron_Cont["Score"][6]

--判断玩家所在阶段
	if nNum >= nScore6 then 
		HalloweenCarnivalBaron_GetScoreReward(6,nData,nIsWho,nUserId)
	elseif nNum >= nScore5 then 
		HalloweenCarnivalBaron_GetScoreReward(5,nData,nIsWho,nUserId)
	elseif nNum >= nScore4 then 
		HalloweenCarnivalBaron_GetScoreReward(4,nData,nIsWho,nUserId)
	elseif nNum >= nScore3 then 
		HalloweenCarnivalBaron_GetScoreReward(3,nData,nIsWho,nUserId)
	elseif nNum >= nScore2 then 
		HalloweenCarnivalBaron_GetScoreReward(2,nData,nIsWho,nUserId)
	elseif nNum >= nScore1 then 
		HalloweenCarnivalBaron_GetScoreReward(1,nData,nIsWho,nUserId)
	else 
		--没有奖励可以领取
		if nIsWho == 1 then 
			--NPC对白
			LinkNpcGossipFunc_New(24993,"3-3")
		else
			--物品对白
			LinkItemGossipFunc_New(3313760,"3-3")
		end
	end
end

--判断阶段奖励领取并发奖
function HalloweenCarnivalBaron_GetScoreReward(nLevel,nData,nIsWho,nUserId)
	--判断是否已领取所有阶段所有奖励
	if nData ~= nil and nData >= 6 then 
		--已领取所有阶段所有奖励
		if nIsWho == 1 then 
			--NPC对白
			local nNpcId = tHalloweenCarnivalBaron_Cont["MainNPC"]
			LinkNpcGossipFunc_New(nNpcId,"3-4")
		else
			--物品对白
			local nItemId = tHalloweenCarnivalBaron_Cont["TransformBookId"]
			LinkItemGossipFunc_New(nItemId,"3-4")
		end
	end

	--判断是否已领取该阶段所有奖励
	local bReward = false
	if nData ~= nil and nData >= nLevel then 
		bReward = true
	end

	if bReward == true then 
		--已领取该阶段所有奖励
		if nIsWho == 1 then 
			--NPC对白
			LinkNpcGossipFunc_New(24993,"3-3")
		else
			--物品对白
			LinkItemGossipFunc_New(3313760,"3-3")
		end
	else 
		--判断可领取的奖励
		for i = 1, nLevel do
			if nData ~= nil and nData < i then 
				--判断背包
				local nSpace = tHalloweenCarnivalBaron_Cont["Space"][102]
				if not HalloweenCarnivalBaron_CheckLeftSpace(nSpace) then 
					return
				end
				--打掩码给奖
				if HalloweenCarnivalBaron_SetStcValue(102,i,nUserId) then 
					HalloweenReward_CollectReward(i)
				end
			end
		end
	end
end

--鬼怪变身图鉴
function HalloweenCarnivalBaron_DialogText(nItemId)
	--万圣男爵任务
	local nUserId = Get_UserId()
	local nTaskId = HalloweenCarnivalBaron_WhichTask(1,nUserId)
	--鬼怪部分提供的接口
	CollectGhost_AddFinishTask5Star()

	--等级判断
	if not User_JudgeLevelAndMetempsychosis(tHalloweenCarnivalBaron_Cont["Level"],tHalloweenCarnivalBaron_Cont["Metempsychosis"]) then
		return
	else
		--对白生成
		local nUserId = Get_UserId()
		local tMosterName = {}
		local nTransform = 0
		
		--判断是否点亮
		for j=1,31 do
			for i,v in pairs(tHalloweenCarnivalBaron_Cont["NpcIndex"]) do
				if v == j then
					local nData = HalloweenCarnivalBaron_GetMosterStc(i,nUserId)
					local nMoster = 100 + j
					
					if nData ~= nil and nData>= 1 then 
						--计算变身数
						nTransform = nTransform + 1
						--点亮
						--tMosterName[j] = string.format(tHalloweenCarnivalBaron_Text["Color"]["Light"],tHalloweenCarnivalBaron_Text["MosterName"][j])
						tMosterName[j] = string.format(tHalloweenCarnivalBaron_Text["Color"]["Light"],tHalloweenCarnivalBaron_Text[3313760]["Option"..nMoster])
					else
						--未点亮
						--tMosterName[j] = string.format(tHalloweenCarnivalBaron_Text["Color"]["Gray"],tHalloweenCarnivalBaron_Text["MosterName"][j])
						tMosterName[j] = string.format(tHalloweenCarnivalBaron_Text["Color"]["Gray"],tHalloweenCarnivalBaron_Text[3313760]["Option"..nMoster])
					end
				end
			end
		end
		
		--判断拥有该变身(迈克尔 麦尔斯)
		local nMichaelMyersStc = tHalloweenCarnivalBaron_Cont["MichaelMyersStc"]
		local nMichaelMyersData = HalloweenCarnivalBaron_GetStcValue(nMichaelMyersStc,nUserId) or 0
		if nMichaelMyersData >= 1 then 
			--计算变身数
			nTransform = nTransform + 1
		end
		
		--鬼怪变身图鉴对白
		--tItem[nItemId]["Text113"] = HalloweenCarnivalBaron_Alignment(tHalloweenCarnivalBaron_Text["MosterLevel"][1], 0, tHalloweenCarnivalBaron_Text["MosterLevel"][2], 12, tHalloweenCarnivalBaron_Text["MosterLevel"][3], 24, tHalloweenCarnivalBaron_Text["MosterLevel"][4], 36, tHalloweenCarnivalBaron_Text["MosterLevel"][5], 48) .. "\n"
		tItem[nItemId]["Text113"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text113"],tMosterName[1],tMosterName[17])
		tItem[nItemId]["Text114"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text114"],tMosterName[2],tMosterName[18])
		tItem[nItemId]["Text115"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text115"],tMosterName[3],tMosterName[19])
		tItem[nItemId]["Text116"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text116"],tMosterName[4],tMosterName[20])
		tItem[nItemId]["Text117"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text117"],tMosterName[5],tMosterName[21])
		tItem[nItemId]["Text118"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text118"],tMosterName[6],tMosterName[22])
		tItem[nItemId]["Text119"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text119"],tMosterName[7],tMosterName[23])
		tItem[nItemId]["Text120"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text120"],tMosterName[8],tMosterName[24])
		tItem[nItemId]["Text121"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text121"],tMosterName[9],tMosterName[25])
		tItem[nItemId]["Text122"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text122"],tMosterName[10],tMosterName[26])
		tItem[nItemId]["Text123"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text123"],tMosterName[11],tMosterName[27])
		tItem[nItemId]["Text124"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text124"],tMosterName[12],tMosterName[28])
		tItem[nItemId]["Text125"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text125"],tMosterName[13],tMosterName[29])
		tItem[nItemId]["Text126"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text126"],tMosterName[14],tMosterName[30])
		tItem[nItemId]["Text127"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text127"],tMosterName[15],tMosterName[31])
		tItem[nItemId]["Text128"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text128"],tMosterName[16])
		-- tItem[nItemId]["Text114"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text114"],tMosterName[1],tMosterName[6],tMosterName[14], tMosterName[23],tMosterName[28])
		-- tItem[nItemId]["Text115"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text115"],tMosterName[2],tMosterName[7],tMosterName[15], tMosterName[24],tMosterName[29])
		-- tItem[nItemId]["Text116"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text116"],tMosterName[3],tMosterName[8],tMosterName[16], tMosterName[25],tMosterName[30])
		-- tItem[nItemId]["Text117"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text117"],tMosterName[4],tMosterName[9],tMosterName[17], tMosterName[26],tMosterName[31])
		-- tItem[nItemId]["Text118"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text118"],tMosterName[5],tMosterName[10],tMosterName[18],tMosterName[27])
		-- tItem[nItemId]["Text119"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text119"],tMosterName[11],tMosterName[19])
		-- tItem[nItemId]["Text120"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text120"],tMosterName[12],tMosterName[20])
		-- tItem[nItemId]["Text121"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text121"],tMosterName[13],tMosterName[21])
		-- tItem[nItemId]["Text122"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text122"],tMosterName[22])
		-- tItem[nItemId]["Text114"] = HalloweenCarnivalBaron_Alignment(tMosterName[1], 0, tMosterName[6], 12, tMosterName[14], 24, tMosterName[23], 36, tMosterName[29], 48) .. "\n"
		-- tItem[nItemId]["Text115"] = HalloweenCarnivalBaron_Alignment(tMosterName[2], 0, tMosterName[7], 12, tMosterName[15], 24, tMosterName[24], 36, tMosterName[30], 48) .. "\n"
		-- tItem[nItemId]["Text116"] = HalloweenCarnivalBaron_Alignment(tMosterName[3], 0, tMosterName[8], 12, tMosterName[16], 24, tMosterName[25], 36, tMosterName[31], 48) .. "\n"
		-- tItem[nItemId]["Text117"] = HalloweenCarnivalBaron_Alignment(tMosterName[4], 0, tMosterName[9], 12, tMosterName[17], 24, tMosterName[26], 36, tMosterName[32], 48) .. "\n"
		-- tItem[nItemId]["Text118"] = HalloweenCarnivalBaron_Alignment(tMosterName[5], 0, tMosterName[10], 12, tMosterName[18], 24, tMosterName[27], 36) .. "\n"
		-- tItem[nItemId]["Text119"] = HalloweenCarnivalBaron_Alignment(tMosterName[11], 12, tMosterName[19], 24, tMosterName[28], 36) .. "\n"
		-- tItem[nItemId]["Text120"] = HalloweenCarnivalBaron_Alignment(tMosterName[12], 12, tMosterName[20], 24) .. "\n"
		-- tItem[nItemId]["Text121"] = HalloweenCarnivalBaron_Alignment(tMosterName[13], 12, tMosterName[21], 24) .. "\n"
		-- tItem[nItemId]["Text122"] = HalloweenCarnivalBaron_Alignment(tMosterName[22], 24) .. "\n"
		-- tItem[nItemId]["Text114"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[1]), 0, tostring(tMosterName[6]), 12, tostring(tMosterName[14]), 24, tostring(tMosterName[23]), 36, tostring(tMosterName[29]), 48) .. "\n"
		-- tItem[nItemId]["Text115"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[2]), 0, tostring(tMosterName[7]), 12, tostring(tMosterName[15]), 24, tostring(tMosterName[24]), 36, tostring(tMosterName[30]), 48) .. "\n"
		-- tItem[nItemId]["Text116"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[3]), 0, tostring(tMosterName[8]), 12, tostring(tMosterName[16]), 24, tostring(tMosterName[25]), 36, tostring(tMosterName[31]), 48) .. "\n"
		-- tItem[nItemId]["Text117"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[4]), 0, tostring(tMosterName[9]), 12, tostring(tMosterName[17]), 24, tostring(tMosterName[26]), 36, tostring(tMosterName[32]), 48) .. "\n"
		-- tItem[nItemId]["Text118"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[5]), 0, tostring(tMosterName[10]), 12, tostring(tMosterName[18]), 24, tostring(tMosterName[27]), 36) .. "\n"
		-- tItem[nItemId]["Text119"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[11]), 12, tostring(tMosterName[19]), 24, tostring(tMosterName[28]), 36) .. "\n"
		-- tItem[nItemId]["Text120"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[12]), 12, tostring(tMosterName[20]), 24) .. "\n"
		-- tItem[nItemId]["Text121"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[13]), 12, tostring(tMosterName[21]), 24) .. "\n"
		-- tItem[nItemId]["Text122"] = HalloweenCarnivalBaron_Alignment(tostring(tMosterName[22]), 24) .. "\n"
		
		-- tItem[nItemId]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124}
		
		--时间判断
		if Sys_ChkFullTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"]) then
			--活动时间内
			if not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then 
				--万圣男爵任务未完成
				tItem[nItemId]["tOption1-1"] = {1001}
				--出对白
				LinkItemGossipFunc_New(nItemId,"1-1")
			else
				--万圣男爵任务完成
				if nTransform == 0 then 
					--"我要变身"（未拥有变身时显示）
					LinkItemGossipFunc_New(nItemId,"5-1")
				else
					--"我要变身"（拥有变身时显示）
					tItem[nItemId]["tOption1-1"] = {1002,1004,1003,1005}
					--出对白
					LinkItemGossipFunc_New(nItemId,"1-1")
				end
			end
		else
			--不在活动时间内只保留变身选项
			tItem[nItemId]["tOption1-1"] = {1002}
			--出对白
			LinkItemGossipFunc_New(nItemId,"1-1")
		end
	end
end

--变身选项生成
function HalloweenCarnivalBaron_TransformText(nItemId)
	--对白生成
	local nUserId = Get_UserId()
	--选项初始化
	tItem[nItemId]["Text2-1"] = {211}
	tItem[nItemId]["tOption2-1"] = {}

	--判断拥有该变身(31只星级怪)
	for j=1,31 do
		for i,v in pairs(tHalloweenCarnivalBaron_Cont["NpcIndex"]) do
			if v == j then
				local nData = HalloweenCarnivalBaron_GetMosterStc(i,nUserId)
				if nData ~= nil and nData>= 1 then 
					--点亮
					local nTransformText = 100 + j
					table.insert(tItem[nItemId]["tOption2-1"],nTransformText)
				end
			end
		end
	end

	--判断拥有该变身(迈克尔 麦尔斯)
	local nMichaelMyersStc = tHalloweenCarnivalBaron_Cont["MichaelMyersStc"]
	local nMichaelMyersData = HalloweenCarnivalBaron_GetStcValue(nMichaelMyersStc,nUserId) or 0
	if nMichaelMyersData >= 1 then 
		table.insert(tItem[nItemId]["tOption2-1"],133)
	end

	--返回主对白选项
	table.insert(tItem[nItemId]["tOption2-1"],134)

	--链接变身选项对白
	LinkItemGossipFunc_New(nItemId,"2-1")
end

-- 点击选项变身
function HalloweenCarnivalBaron_TransformMoster(nNpcId)
	--迈克尔 麦尔斯
	local nMichaelMyersId = tHalloweenCarnivalBaron_Cont["MichaelMyersId"]
	--获取鬼怪变身掩码
	local nData = 0
	if nNpcId == nMichaelMyersId then 
		local nIndex = tHalloweenCarnivalBaron_Cont["MichaelMyersStc"]
		nData = HalloweenCarnivalBaron_GetStcValue(nIndex,nUserId)
	else
		nData = HalloweenCarnivalBaron_GetMosterStc(nNpcId,nUserId)
	end

	--变身
	if nData ~= nil and nData >= 1 then 
		--已收集到该变身
		HalloweenCarnivalBaron_Transform(nNpcId)
	else
		--还未收集到该变身
		Sys_MsgBox(tHalloweenCarnivalBaron_Text["NoTransform"])
		User_TalkChannel2005(tHalloweenCarnivalBaron_Text["NoTransform"])
	end
end

-- 变身逻辑
function HalloweenCarnivalBaron_Transform(nNpcId)
	--鬼怪索引
	local nTransform = tHalloweenCarnivalBaron_Cont["NpcIndex"][nNpcId]
	local nMosterName = nTransform + 100
	local sMosterName = tHalloweenCarnivalBaron_Text[3313760]["Option"..nMosterName]
	local nMosterLevel = tHalloweenCarnivalBaron_Cont["MonsterLevel"][nNpcId]

	--变身
	local nMagictype = tHalloweenCarnivalBaron_Transform[nTransform]["Magictype"]
	local nMagictypeLevel = tHalloweenCarnivalBaron_Transform[nTransform]["MagictypeLevel"]
	local nMonsterId = tHalloweenCarnivalBaron_Transform[nTransform]["MonsterId"]
	local nTimes = tHalloweenCarnivalBaron_Transform[nTransform]["Times"]

	local sLog = string.format(tHalloweenCarnivalBaron_Log["Transform"],nMonsterId)
	Sys_SaveActionFestivalLog(sLog)
	--变身
	User_TransFormByMagic(nMagictype,nMagictypeLevel,nMonsterId,nTimes)
	User_TalkChannel2005(string.format(tHalloweenCarnivalBaron_Text["Transform"],sMosterName))
	--迈克尔 麦尔斯
	local nMichaelMyersId = tHalloweenCarnivalBaron_Cont["MichaelMyersId"]
	if nNpcId ~= nMichaelMyersId then 
	--记录变身鬼怪的星级
	HalloweenCarnivalBaron_SetStcValue(109,nMosterLevel,nUserId)
	end
end

-- 随机变身
function HalloweenCarnivalBaron_TransformRandom()
	--获取变身表长度
	local nLen = 0
	for i,v in pairs(tHalloweenCarnivalBaron_Cont["NpcIndex"]) do
		if v <= 22 then
			nLen = nLen + 1
		end
	end

	local nIndex = math.random(1,nLen - 1)

	--获取该索引对应的ID
	for i,v in pairs(tHalloweenCarnivalBaron_Cont["NpcIndex"]) do
		if v == nIndex then
			--变身
			HalloweenCarnivalBaron_Transform(i)
		end
	end
end

-- 随机已有的变身
function HalloweenCarnivalBaron_TransformRandomExist()
	local nUserId = Get_UserId()
	local nData = 0
	--迈克尔 麦尔斯
	local nMichaelMyersId = tHalloweenCarnivalBaron_Cont["MichaelMyersId"]

	--收集到的鬼怪数量
	local nTransform = 0
	--收集到的鬼怪ID存入表中
	local tTransform = {}

	--判断收集到的变身
	for i,v in pairs(tHalloweenCarnivalBaron_Cont["NpcIndex"]) do
		if i == nMichaelMyersId then 
			local nIndex = tHalloweenCarnivalBaron_Cont["MichaelMyersStc"]
			nData = HalloweenCarnivalBaron_GetStcValue(nIndex,nUserId)
		else
			nData = HalloweenCarnivalBaron_GetMosterStc(i,nUserId)
		end
		if nData ~= nil and nData>= 1 then 
			--收集到变身
			nTransform = nTransform + 1
			table.insert(tTransform,i)
		end
	end

	if nTransform == 0 then 
		--未收集到变身
		return
	else
		--已收集到变身
		local nIndex = math.random(1,nTransform)
		--变身
		HalloweenCarnivalBaron_Transform(tTransform[nIndex])
	end
end

-- 根据星级随机变身
function HalloweenCarnivalBaron_TransformRandomByStar(nStar)
	--收集到的鬼怪数量
	local nTransform = 0
	--收集到的鬼怪ID存入表中
	local tTransform = {}

	--判断该星级是否有收集到的变身
	for i,v in pairs(tHalloweenCarnivalBaron_Cont["MonsterLevel"]) do
		if v == nStar then
			local nData = HalloweenCarnivalBaron_GetMosterStc(i,nUserId)
			if nData ~= nil and nData>= 1 then 
				--收集到变身
				nTransform = nTransform + 1
				table.insert(tTransform,i)
			end
		end
	end

	if nTransform == 0 then 
		--未收集到该星级的变身
		return
	else
		--已收集到该星级的变身
		local nLen = #tTransform
		local nIndex = math.random(1,nLen)
		--变身
		HalloweenCarnivalBaron_Transform(tTransform[nIndex])
	end
end

--鬼怪变身数量
function HalloweenCarnivalBaron_GetTransformNum()
	local nUserId = Get_UserId()
	local nTransform = 0

	--判断是否点亮
	for j=1,31 do
		for i,v in pairs(tHalloweenCarnivalBaron_Cont["NpcIndex"]) do
			if v == j then
				local nData = HalloweenCarnivalBaron_GetMosterStc(i,nUserId)
				if nData ~= nil and nData>= 1 then 
					--计算变身数
					nTransform = nTransform + 1
				end
			end
		end
	end

	return nTransform
end

-- 寻找3星鬼怪（选项生成）
function HalloweenCarnivalBaron_LinkThreeStar(nIsWho)
	if nIsWho == 1 then 
		--NPC对白
		local nNpcId = tHalloweenCarnivalBaron_Cont["MainNPC"]
		-- 第一周不刷神龙岛，古神灵境
		if Sys_ChkFullTime(tActivityTime["CollectGhost"]["FirstWeek"]) then
			tNpcGossip[nNpcId]["tOption4-3"] = {41,42,43,44,45,16}
		else
			--普通服
			tNpcGossip[nNpcId]["tOption4-3"] = {41,42,43,44,45,46,47,16}
		
			--激情服
			if SpecialServer_ChkNoGiftServer() then 
				tNpcGossip[nNpcId]["tOption4-3"] = {41,42,43,44,45,48,49,50,16}
			end
		end
		
		--链接收集3星鬼怪对白
		LinkNpcGossipFunc_New(nNpcId,"4-3")
	else
		--物品对白
		local nItemId = tHalloweenCarnivalBaron_Cont["TransformBookId"]
		-- 第一周不刷神龙岛，古神灵境
		if Sys_ChkFullTime(tActivityTime["CollectGhost"]["FirstWeek"]) then
			tItem[nItemId]["tOption4-3"] = {41,42,43,44,45,16}
		else
			--普通服
			tItem[nItemId]["tOption4-3"] = {41,42,43,44,45,46,47,16}
		
			--激情服
			if SpecialServer_ChkNoGiftServer() then 
				tItem[nItemId]["tOption4-3"] = {41,42,43,44,45,48,49,50,16}
			end
		end
		
		--链接收集3星鬼怪对白
		LinkItemGossipFunc_New(nItemId,"4-3")
	end
end

-- 寻找3星鬼怪（不同地图寻路）
function HalloweenCarnivalBaron_ThreeStarMap(nIsWho,nMapIndex)
	--鬼怪出没踪迹数量
	local nMaybe = tHalloweenCarnivalBaron_Maybe[nMapIndex]
	local nRandBound1 = 0
	local nRandBound2 = 0
	
	if nIsWho == 1 then 
		--NPC对白
		local nNpcId = tHalloweenCarnivalBaron_Cont["MainNPC"]
		
		tNpcGossip[nNpcId]["Text7-1"] = {111,117,3111,16}
		
		--判断鬼怪出没踪迹数量
		if nMaybe == 5 then
			local nThreeStarId = tHalloweenCarnivalBaron_GeneratorByMap[nMapIndex]
			local nIndex = tHalloweenCarnivalBaron_Cont["NpcIndex"][nThreeStarId]
			local sName = tHalloweenCarnivalBaron_Text["MosterName"][nIndex]
			tNpcGossip[nNpcId]["Option3121"] = string.format(tHalloweenCarnivalBaron_Text[nNpcId]["Option3121"],sName)
			nRandBound1 = nThreeStarId
			
			if CollectGhost_JudgeInCity(nThreeStarId) then 
				tNpcGossip[nNpcId]["tOption7-1"] = {3121}
			else
				tNpcGossip[nNpcId]["tOption7-1"] = {3111,3112,3113,3114,3115}
			end
		else
			local nThreeStarId1 = tHalloweenCarnivalBaron_GeneratorByMap[nMapIndex][1]
			local nThreeStarId2 = tHalloweenCarnivalBaron_GeneratorByMap[nMapIndex][2]
			
			local nIndex1 = tHalloweenCarnivalBaron_Cont["NpcIndex"][nThreeStarId1]
			local sName1 = tHalloweenCarnivalBaron_Text["MosterName"][nIndex1]
			tNpcGossip[nNpcId]["Option3121"] = string.format(tHalloweenCarnivalBaron_Text[nNpcId]["Option3121"],sName1)
			nRandBound1 = nThreeStarId1
			
			local nIndex2 = tHalloweenCarnivalBaron_Cont["NpcIndex"][nThreeStarId2]
			local sName2 = tHalloweenCarnivalBaron_Text["MosterName"][nIndex2]
			tNpcGossip[nNpcId]["Option3122"] = string.format(tHalloweenCarnivalBaron_Text[nNpcId]["Option3121"],sName2)
			nRandBound2 = nThreeStarId2
			
			tNpcGossip[nNpcId]["tOption7-1"] = {}
			
			if not CollectGhost_JudgeInCity(nThreeStarId1) then 
				for j=3111,3115 do
					table.insert(tNpcGossip[nNpcId]["tOption7-1"],j)
				end
			else
				table.insert(tNpcGossip[nNpcId]["tOption7-1"],3121)
			end
			
			if not CollectGhost_JudgeInCity(nThreeStarId2) then 
				for j=3116,3120 do
					table.insert(tNpcGossip[nNpcId]["tOption7-1"],j)
				end
			else
				table.insert(tNpcGossip[nNpcId]["tOption7-1"],3122)
			end
		end
		
		--鬼怪出没踪迹选项
		tNpcGossip[nNpcId]["OptionFunc3111"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>1</N>"..nMapIndex--鬼怪出没踪迹1
		tNpcGossip[nNpcId]["OptionFunc3112"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>2</N>"..nMapIndex--鬼怪出没踪迹2
		tNpcGossip[nNpcId]["OptionFunc3113"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>3</N>"..nMapIndex--鬼怪出没踪迹3
		tNpcGossip[nNpcId]["OptionFunc3114"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>4</N>"..nMapIndex--鬼怪出没踪迹4
		tNpcGossip[nNpcId]["OptionFunc3115"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>5</N>"..nMapIndex--鬼怪出没踪迹5
		tNpcGossip[nNpcId]["OptionFunc3116"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>6</N>"..nMapIndex--鬼怪出没踪迹6
		tNpcGossip[nNpcId]["OptionFunc3117"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>7</N>"..nMapIndex--鬼怪出没踪迹7
		tNpcGossip[nNpcId]["OptionFunc3118"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>8</N>"..nMapIndex--鬼怪出没踪迹8
		tNpcGossip[nNpcId]["OptionFunc3119"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>9</N>"..nMapIndex--鬼怪出没踪迹9
		tNpcGossip[nNpcId]["OptionFunc3120"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>10</N>"..nMapIndex--鬼怪出没踪迹10
		tNpcGossip[nNpcId]["OptionFunc3121"] = "HalloweenCarnivalBaron_UserRandBoundTrans</N>"..nRandBound1--"回双龙城找%s"
		tNpcGossip[nNpcId]["OptionFunc3122"] = "HalloweenCarnivalBaron_UserRandBoundTrans</N>"..nRandBound2--"回双龙城找%s"
		
		--链接鬼怪出没踪迹对白
		LinkNpcGossipFunc_New(nNpcId,"7-1")
	else
		--物品对白
		local nItemId = tHalloweenCarnivalBaron_Cont["TransformBookId"]
		
		tItem[nItemId]["Text7-1"] = {111,3111,16}
		
		--判断鬼怪出没踪迹数量
		if nMaybe == 5 then
			local nThreeStarId = tHalloweenCarnivalBaron_GeneratorByMap[nMapIndex]
			local nIndex = tHalloweenCarnivalBaron_Cont["NpcIndex"][nThreeStarId]
			local sName = tHalloweenCarnivalBaron_Text["MosterName"][nIndex]
			tItem[nItemId]["Option3121"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Option3121"],sName)
			nRandBound1 = nThreeStarId
			
			if CollectGhost_JudgeInCity(nThreeStarId) then 
				tItem[nItemId]["tOption7-1"] = {3121}
			else
				tItem[nItemId]["tOption7-1"] = {3111,3112,3113,3114,3115}
			end
		else
			local nThreeStarId1 = tHalloweenCarnivalBaron_GeneratorByMap[nMapIndex][1]
			local nThreeStarId2 = tHalloweenCarnivalBaron_GeneratorByMap[nMapIndex][2]
			
			local nIndex1 = tHalloweenCarnivalBaron_Cont["NpcIndex"][nThreeStarId1]
			local sName1 = tHalloweenCarnivalBaron_Text["MosterName"][nIndex1]
			tItem[nItemId]["Option3121"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Option3121"],sName1)
			nRandBound1 = nThreeStarId1
			
			local nIndex2 = tHalloweenCarnivalBaron_Cont["NpcIndex"][nThreeStarId2]
			local sName2 = tHalloweenCarnivalBaron_Text["MosterName"][nIndex2]
			tItem[nItemId]["Option3122"] = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Option3121"],sName2)
			nRandBound2 = nThreeStarId2
			
			tItem[nItemId]["tOption7-1"] = {}
			
			if not CollectGhost_JudgeInCity(nThreeStarId1) then 
				for j=3111,3115 do
					table.insert(tItem[nItemId]["tOption7-1"],j)
				end
			else
				table.insert(tItem[nItemId]["tOption7-1"],3121)
			end
			
			if not CollectGhost_JudgeInCity(nThreeStarId2) then 
				for j=3116,3120 do
					table.insert(tItem[nItemId]["tOption7-1"],j)
				end
			else
				table.insert(tItem[nItemId]["tOption7-1"],3122)
			end
		end
		
		--鬼怪出没踪迹选项
		tItem[nItemId]["OptionFunc3111"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>1</N>"..nMapIndex--鬼怪出没踪迹1
		tItem[nItemId]["OptionFunc3112"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>2</N>"..nMapIndex--鬼怪出没踪迹2
		tItem[nItemId]["OptionFunc3113"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>3</N>"..nMapIndex--鬼怪出没踪迹3
		tItem[nItemId]["OptionFunc3114"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>4</N>"..nMapIndex--鬼怪出没踪迹4
		tItem[nItemId]["OptionFunc3115"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>5</N>"..nMapIndex--鬼怪出没踪迹5
		tItem[nItemId]["OptionFunc3116"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>6</N>"..nMapIndex--鬼怪出没踪迹6
		tItem[nItemId]["OptionFunc3117"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>7</N>"..nMapIndex--鬼怪出没踪迹7
		tItem[nItemId]["OptionFunc3118"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>8</N>"..nMapIndex--鬼怪出没踪迹8
		tItem[nItemId]["OptionFunc3119"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>9</N>"..nMapIndex--鬼怪出没踪迹9
		tItem[nItemId]["OptionFunc3120"] = "HalloweenCarnivalBaron_FindThreeStar</N>"..nIsWho.."</N>10</N>"..nMapIndex--鬼怪出没踪迹10
		tItem[nItemId]["OptionFunc3121"] = "HalloweenCarnivalBaron_UserRandBoundTrans</N>"..nRandBound1--"回双龙城找%s"
		tItem[nItemId]["OptionFunc3122"] = "HalloweenCarnivalBaron_UserRandBoundTrans</N>"..nRandBound2--"回双龙城找%s"
		
		--链接鬼怪出没踪迹对白
		LinkItemGossipFunc_New(nItemId,"7-1")
	end
end

-- 传送到选项对应的地方
function HalloweenCarnivalBaron_FindThreeStar(nIsWho,nChoose,nMapIndex)
	--获取地图ID和坐标
	local nUserId = Get_UserId()
	local nMapId = 1002
	local nPosX = 333
	local nPosY = 333
	local nRange = 5

	if nMapIndex <= 5 then 
		--激情服
		if SpecialServer_ChkNoGiftServer() then 
			nMapId = tHalloweenCarnivalBaron_Generator["NoGift"][nMapIndex][nChoose]["MapId"]
			nPosX = tHalloweenCarnivalBaron_Generator["NoGift"][nMapIndex][nChoose]["Posx"]
			nPosY = tHalloweenCarnivalBaron_Generator["NoGift"][nMapIndex][nChoose]["Posy"]
		else
			--普通服
			nMapId = tHalloweenCarnivalBaron_Generator["Normal"][nMapIndex][nChoose]["MapId"]
			nPosX = tHalloweenCarnivalBaron_Generator["Normal"][nMapIndex][nChoose]["Posx"]
			nPosY = tHalloweenCarnivalBaron_Generator["Normal"][nMapIndex][nChoose]["Posy"]
		end
	elseif nMapIndex == 6 or nMapIndex == 7 then 
		--神龙岛、古神灵境
		nMapId = tHalloweenCarnivalBaron_Generator["Normal"][nMapIndex][nChoose]["MapId"]
		nPosX = tHalloweenCarnivalBaron_Generator["Normal"][nMapIndex][nChoose]["Posx"]
		nPosY = tHalloweenCarnivalBaron_Generator["Normal"][nMapIndex][nChoose]["Posy"]
	else
		--无间之堭、罪业之堭、永生之堭
		nMapId = tHalloweenCarnivalBaron_Generator["NoGift"][nMapIndex][nChoose]["MapId"]
		nPosX = tHalloweenCarnivalBaron_Generator["NoGift"][nMapIndex][nChoose]["Posx"]
		nPosY = tHalloweenCarnivalBaron_Generator["NoGift"][nMapIndex][nChoose]["Posy"]
	end

	--传送
	HalloweenCarnivalBaron_RandBoundTrans(nMapId,nPosX,nPosY,nRange,nRange)
	
	--链接收集3星鬼怪对白
	HalloweenCarnivalBaron_LinkThreeStar(nIsWho)
end

--上线自动接任务
function HalloweenCarnivalBaron_Login()
	local nUserId = Get_UserId()
	local nTaskId = HalloweenCarnivalBaron_WhichTask(1,nUserId)

	-- 判断时间
	if not Sys_ChkFullTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"]) then
		if Task_ChkTaskDetail(nTaskId,0) then
			Task_DelTaskDetail(nTaskId)
		end
		return
	end

	--判断等级
	local nLevel = tHalloweenCarnivalBaron_Cont["Level"]
	local nMetempsychosis = tHalloweenCarnivalBaron_Cont["Metempsychosis"]

	if not User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nTaskId,0) then
		Task_AddTaskDetail(nTaskId,0)
		--播放光效
		User_EffectAdd("self",tHalloweenCarnivalBaron_Cont["TaskEffect"])
	end
end

--增加任务值
function HalloweenCarnivalBaron_AddTask(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTaskId = HalloweenCarnivalBaron_WhichTask(nIndex,nUserId)

	--判断是否接受任务
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end

	local nData = Get_TaskDetailData1(nTaskId, nUserId)

	Task_SetTaskDetailData1(nTaskId,nData + 1, nUserId)

	--任务是否完成
	HalloweenCarnivalBaron_TaskComplete(nTaskId,nUserId)
end

--任务完成
function HalloweenCarnivalBaron_TaskComplete(nTaskId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMainTaskId = HalloweenCarnivalBaron_WhichTask(1,nUserId)
	--叫天鸡
	local nOneStarMonsterId = tHalloweenCarnivalBaron_Cont["OneStarMonsterId"]

	--判断是否接受任务
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end

	--判断任务完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId) then
		return
	end

	local nData = Get_TaskDetailData1(nTaskId, nUserId)

	if nData ~= nil and nData > 0 then
		Task_SetTaskDetailCompleteFlag(nTaskId,1, nUserId)
		--播放光效
		User_EffectAdd("self",tHalloweenCarnivalBaron_Cont["TaskEffect"])
		if nTaskId == nMainTaskId then 
			--玩家完成万圣男爵任务后，给玩家接受1星鬼怪任务
			HalloweenCarnivalBaron_StarTask()
		else
			--玩家完成1星鬼怪后，直接给玩家激活1星叫天鸡变身
			HalloweenCarnivalBaron_AddMosterStc(nOneStarMonsterId,1,nUserId)
		end
	end
end

--完成首任务接受1星鬼怪任务
function HalloweenCarnivalBaron_StarTask()
	local nTaskId = 0
	--判断激情服
	if SpecialServer_ChkNoGiftServer() then 
		nTaskId = tHalloweenCarnivalBaron_Cont["NoGiftStarTaskId"]
	else
		nTaskId = tHalloweenCarnivalBaron_Cont["StarTaskId"]
	end

	--未接受任务则自动接任务
	if not Task_ChkTaskDetail(nTaskId,0) then
		if Task_AddTaskDetail(nTaskId,0) then 
			--播放光效
			User_EffectAdd("self",tHalloweenCarnivalBaron_Cont["TaskEffect"])
		end
	end
end

--判断任务和激情服
function HalloweenCarnivalBaron_WhichTask(nIndex)
	local nTaskId = 0
	--判断任务
	if nIndex == 1 then 
		--判断激情服
		if SpecialServer_ChkNoGiftServer() then 
			nTaskId = tHalloweenCarnivalBaron_Cont["NoGiftTaskId"]
		else
			nTaskId = tHalloweenCarnivalBaron_Cont["TaskId"]
		end
	else
		--判断激情服
		if SpecialServer_ChkNoGiftServer() then 
			nTaskId = tHalloweenCarnivalBaron_Cont["NoGiftStarTaskId"]
		else
			nTaskId = tHalloweenCarnivalBaron_Cont["StarTaskId"]
		end
	end

	return nTaskId
end

--判断玩家所在阶段
function HalloweenCarnivalBaron_GetLevel()
	local nUserId = Get_UserId()
	--玩家收集变身数量
	local nNum = HalloweenCarnivalBaron_GetTransformNum()

	--各阶段积分要求
	local nScore1 = tHalloweenCarnivalBaron_Cont["Score"][1]
	local nScore2 = tHalloweenCarnivalBaron_Cont["Score"][2]
	local nScore3 = tHalloweenCarnivalBaron_Cont["Score"][3]
	local nScore4 = tHalloweenCarnivalBaron_Cont["Score"][4]
	local nScore5 = tHalloweenCarnivalBaron_Cont["Score"][5]
	local nScore6 = tHalloweenCarnivalBaron_Cont["Score"][6]

	--玩家所在阶段
	local nLevel = 0
	--判断玩家所在阶段
	if nNum >= nScore6 then 
		nLevel = 6
	elseif nNum >= nScore5 then 
		nLevel = 5
	elseif nNum >= nScore4 then 
		nLevel = 4
	elseif nNum >= nScore3 then 
		nLevel = 3
	elseif nNum >= nScore2 then 
		nLevel = 2
	elseif nNum >= nScore1 then 
		nLevel = 1
	else 
		nLevel = 0
	end

	return nLevel
end

--获取万圣节氛围值
function HalloweenCarnivalBaron_GetAtmosphereGlobId()
	local nSysDyGlobId = tHalloweenCarnivalBaron_Cont["SysDyGlobId"]
	local nAtmosphere = Get_SysDynaGlobalData0(nSysDyGlobId)

	return nAtmosphere
end

--获取鬼怪变身掩码
function HalloweenCarnivalBaron_GetMosterStc(nNpcId,nUserId)
	local nNpcIndex = tHalloweenCarnivalBaron_Cont["NpcIndex"][nNpcId]
	local nStcIndex = tHalloweenCarnivalBaron_Stc[nNpcIndex]["StcIndex"]

	return HalloweenCarnivalBaron_GetMultiStcValue(nNpcIndex,nStcIndex,nUserId)
end

--设置鬼怪变身掩码（定值）
function HalloweenCarnivalBaron_SetMosterStc(nNpcId,nIndexData,nUserId)
	local nNpcIndex = tHalloweenCarnivalBaron_Cont["NpcIndex"][nNpcId]
	local nStcIndex = tHalloweenCarnivalBaron_Stc[nNpcIndex]["StcIndex"]

	if HalloweenCarnivalBaron_SetMultiStcValue(nNpcIndex,nStcIndex,nIndexData,nUserId) then 
		return true
	else
		return false
	end
end

--设置鬼怪变身掩码（增加）
function HalloweenCarnivalBaron_AddMosterStc(nNpcId,nAddIndexData,nUserId)
	local nNpcIndex = tHalloweenCarnivalBaron_Cont["NpcIndex"][nNpcId]
	local nStcIndex = tHalloweenCarnivalBaron_Stc[nNpcIndex]["StcIndex"]
	local nMosterStc = HalloweenCarnivalBaron_GetMosterStc(nNpcId,nUserId) or 0

	if nMosterStc == 0 then
		if HalloweenCarnivalBaron_AddMultiStcValue(nNpcIndex,nStcIndex,nAddIndexData,nUserId) then 
				--播放获得变身光效
				User_EffectAdd("self",tHalloweenCarnivalBaron_Cont["Effect"])
				--变身数量+1
				--HalloweenCarnivalBaron_AddStatistic(104,1,nUserId)
			return true
		else
			return false
		end
	end
end

--获取掩码值
function HalloweenCarnivalBaron_GetStcValue(nIndex,nUserId)
	local nEvent = tHalloweenCarnivalBaron_Stc[nIndex]["EventType"]
	local nType = tHalloweenCarnivalBaron_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)

	return nData
end

--设置掩码值（定值）
function HalloweenCarnivalBaron_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tHalloweenCarnivalBaron_Stc[nIndex]["EventType"]
	local nType = tHalloweenCarnivalBaron_Stc[nIndex]["DataType"]

	--打掩码、时间戳
	if Task_SetStatistic(nEvent,nType,nData,1,nUserId) then 
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--设置掩码值（增加）
function HalloweenCarnivalBaron_AddStatistic(nIndex,nData,nUserId)
	local nEvent = tHalloweenCarnivalBaron_Stc[nIndex]["EventType"]
	local nType = tHalloweenCarnivalBaron_Stc[nIndex]["DataType"]

	--打掩码、时间戳
	if Task_AddStatistic(nEvent,nType,nData,1,nUserId) then 
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--获取多位存储掩码值
function HalloweenCarnivalBaron_GetMultiStcValue(nIndex,nStcIndex,nUserId)
	local nEvent = tHalloweenCarnivalBaron_Stc[nIndex]["EventType"]
	local nType = tHalloweenCarnivalBaron_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nBasciData = tHalloweenCarnivalBaron_Cont["StcBasciData"]

	--若掩码小于初始值则设掩码为初始值
	if nData ~= nil and nData < nBasciData then
		if not HalloweenCarnivalBaron_SetStcValue(nIndex,nBasciData,nUserId) then
			return 0
		end
	end

	--获取该位存储掩码值
	local nIndexData = tonumber(string.sub(nData,nStcIndex+1,nStcIndex+1))
	return nIndexData
end

--设置多位存储掩码值（定值）
function HalloweenCarnivalBaron_SetMultiStcValue(nIndex,nStcIndex,nIndexData,nUserId)
	local nEvent = tHalloweenCarnivalBaron_Stc[nIndex]["EventType"]
	local nType = tHalloweenCarnivalBaron_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nBasciData = tHalloweenCarnivalBaron_Cont["StcBasciData"]

	-- 若掩码小于初始值则设掩码为初始值
	if nData ~= nil and nData < nBasciData then
		HalloweenCarnivalBaron_SetStcValue(nIndex,nBasciData,nUserId)
		nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	end

	--将该位存储掩码值存入
	local sData = tostring(nData)
	local nDataLen = #sData
	local sIndexBefore = string.sub(nData,1,nStcIndex)
	local sIndexLater = string.sub(nData,nStcIndex+2,nDataLen)
	local sNewData = ""

	--判断修改的是不是最后一位
	if nStcIndex == 8 then
		sNewData = sIndexBefore..nIndexData
	else
		sNewData = sIndexBefore..nIndexData..sIndexLater
	end

	--获取到需要存入的该位存储掩码值
	local nNewData = tonumber(sNewData)

	--设置该位存储掩码值
	if Task_SetStatistic(nEvent,nType,nNewData,1,nUserId) then 
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--设置多位存储掩码值（增加）
function HalloweenCarnivalBaron_AddMultiStcValue(nIndex,nStcIndex,nAddIndexData,nUserId)
	local nEvent = tHalloweenCarnivalBaron_Stc[nIndex]["EventType"]
	local nType = tHalloweenCarnivalBaron_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nBasciData = tHalloweenCarnivalBaron_Cont["StcBasciData"]

	-- 若掩码小于初始值则设掩码为初始值
	if nData ~= nil and nData < nBasciData then
		HalloweenCarnivalBaron_SetStcValue(nIndex,nBasciData,nUserId)
		nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	end

	--将增加的数值加在该位存储掩码值存入
	local sData = tostring(nData)
	local nDataLen = #sData
	local sIndexBefore = string.sub(nData,1,nStcIndex)
	local sIndexLater = string.sub(nData,nStcIndex+2,nDataLen)
	local nIndexData = tonumber(string.sub(nData,nStcIndex+1,nStcIndex+1))
	local nIndexNew = nIndexData + nAddIndexData
	local sNewData = ""

	--判断增加的是不是最后一位
	if nStcIndex == 8 then
		sNewData = sIndexBefore..nIndexNew
	else
		sNewData = sIndexBefore..nIndexNew..sIndexLater
	end

	--获取到需要存入的该位存储掩码值
	local nNewData = tonumber(sNewData)

	--设置该位存储掩码值
	if Task_SetStatistic(nEvent,nType,nNewData,1,nUserId) then 
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

-- 隔天重置
function HalloweenCarnivalBaron_ClearStcInterval(nIndex,nUserId)
	local nEvent = tHalloweenCarnivalBaron_Stc[nIndex]["EventType"]
	local nType = tHalloweenCarnivalBaron_Stc[nIndex]["DataType"]

	--判断隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--判断背包空间
function HalloweenCarnivalBaron_CheckLeftSpace(nIndex,nUserId)
	if not User_CheckLeftSpace(nIndex,nUserId) then
		Sys_MsgBox(string.format(tHalloweenCarnivalBaron_Text["NoSpace"],nIndex),nil,nil,nUserId)
		User_TalkChannel2005(string.format(tHalloweenCarnivalBaron_Text["NoSpace"],nIndex),nUserId)
		return false
	else
		return true
	end
end

-- 对白对齐
-- s1  左边起第1位的文字
-- n1  左边起第1位对齐的间隔
-- s2  左边起第2位的文字
-- n2  左边起第2位对齐的间隔
-- s3  左边起第3位的文字
-- n3  左边起第3位对齐的间隔
-- s4  左边起第4位的文字
-- n4  左边起第4位对齐的间隔
-- s5  左边起第5位的文字
-- n5  左边起第5位对齐的间隔
function HalloweenCarnivalBaron_Alignment(s1,n1,s2,n2,s3,n3,s4,n4,s5,n5)
	if n1 == nil then
		n1 = 0
	elseif type(n1) ~= "number" or n1 < 0 or n1%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n1 只能传大于等于0的整数")
		return
	end
	
	if n2 == nil then
		n2 = 0
	elseif type(n2) ~= "number" or n2 < 0 or n2%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n2 只能传大于等于0的整数")
		return
	end
	
	if n3 == nil then
		n3 = 0
	elseif type(n3) ~= "number" or n3 < 0 or n3%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n3 只能传大于等于0的整数")
		return
	end
	
	if n4 == nil then
		n4 = 0
	elseif type(n4) ~= "number" or n4 < 0 or n4%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n4 只能传大于等于0的整数")
		return
	end
	
	if n5 == nil then
		n5 = 0
	elseif type(n5) ~= "number" or n5 < 0 or n5%1 ~= 0 then
		Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n5 只能传大于等于0的整数")
		return
	end
	
	s1 = s1 or ""
	s2 = s2 or ""
	s3 = s3 or ""
	s4 = s4 or ""
	s5 = s5 or ""
	
	local str = ""
	local nLen = 0
	
	if n1 > 0 then
		nLen = n1
		local s1Str = Sys_AlignmentSpace(nLen)
		str = str .. s1Str
	end
	
	str = str .. s1
	
	if n2 > 0 then
		nLen = n2 - Get_StringLenUtf8(str)
		if nLen < 0 then
			Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n2 配置的长度太小")
			return
		end
		
		local s2Str = Sys_AlignmentSpace(nLen)
		str = str .. s2Str
	end
	
	str = str .. s2
	
	if n3 > 0 then
		nLen = n3 - Get_StringLenUtf8(str)
		
		if nLen < 0 then
			Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n3 配置的长度太小")
			return
		end
		
		local s3Str = Sys_AlignmentSpace(nLen)
		str = str .. s3Str
	end
	
	str = str .. s3
	
	if n4 > 0 then
		nLen = n4 - Get_StringLenUtf8(str)
		
		if nLen < 0 then
			Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n4 配置的长度太小")
			return
		end
		
		local s4Str = Sys_AlignmentSpace(nLen)
		str = str .. s4Str
	end
	
	str = str .. s4
	
	if n5 > 0 then
		nLen = n5 - Get_StringLenUtf8(str)
		
		if nLen < 0 then
			Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中 n5 配置的长度太小")
			return
		end
		
		local s5Str = Sys_AlignmentSpace(nLen)
		str = str .. s5Str
	end
	
	str = str .. s5

	if Get_StringLenUtf8(str) > 60 then
		-- Sys_SaveAbnormalLog("函数 HalloweenCarnivalBaron_Alignment 中一行只能有60字节")
		return str
	end

	return str
end


---------------------------------------------NPC模块---------------------------------------------
--万圣男爵
tNpcFace[5608] = 235
tNpcGossip[24993] = tNpcGossip[24993] or DefaultNpc:new{}
tNpcGossip[24993]["DialogueText"] = tHalloweenCarnivalBaron_Text[24993]
tNpcGossip[24993]["OptionHidden"] = 1

--活动时间前
tNpcGossip[24993]["Text1-1"] = {111,117,112,113,114,115,116}
tNpcGossip[24993]["tOption1-1"] = {111}
tNpcGossip[24993]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"])
end

--活动时间后
tNpcGossip[24993]["Text1-2"] = {111,117,121}
tNpcGossip[24993]["tOption1-2"] = {121}
tNpcGossip[24993]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"])
end

--活动时间内（第一次对白）
tNpcGossip[24993]["Text1-3"] = {111,117,141,142,143,114,115,116,131,132,2111,2112,2113,2114,2115}
tNpcGossip[24993]["tOption1-3"] = {141,131,211,2111}
tNpcGossip[24993]["ChkFunc1-3"] = function()
	local nUserId = Get_UserId()
	local nLevel = tHalloweenCarnivalBaron_Cont["Level"]
	local nMetempsychosis = tHalloweenCarnivalBaron_Cont["Metempsychosis"]
	--判断1星鬼怪礼包和南瓜头领取
	local nData = HalloweenCarnivalBaron_GetStcValue(101,nUserId) or 0
	--判断玩家的1星鬼怪任务完成程度
	local nOneStar = HalloweenCarnivalBaron_GetStcValue(107,nUserId) or 0

	--未接受寻找万圣男爵任务的玩家自动接收任务
	HalloweenCarnivalBaron_Login()
	--玩家与万圣男爵对话则首任务结束
	HalloweenCarnivalBaron_AddTask(1,nUserId)

	--判断活动时间
	if Sys_ChkFullTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"]) then
		--判断等级达到
		if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			if nData >= 1 then 
				--第二次对白（玩家已寻路到1星鬼怪）
				return false
			else
				--判断1星鬼怪任务完成
				if nOneStar == 0 then 
					--第一次对白（未接受任务的玩家）
					tNpcGossip[24993]["Text1-3"] = {111,117,141,142,143}
					tNpcGossip[24993]["tOption1-3"] = {141}
				elseif nOneStar == 1 then 
					--第一次对白（已接受1星鬼怪任务还未完成的玩家）
					tNpcGossip[24993]["Text1-3"] = {111,117,2114,2115}
					tNpcGossip[24993]["tOption1-3"] = {211}
				else
					--第一次对白（已完成1星鬼怪任务的玩家）
					tNpcGossip[24993]["Text1-3"] = {111,117,2111,2112,2113}
					tNpcGossip[24993]["tOption1-3"] = {2111}
				end
				return true
			end
		else
			--等级不足
			tNpcGossip[24993]["Text1-3"] = {111,117,131,132,114,115,116}
			tNpcGossip[24993]["tOption1-3"] = {131}
			return true
		end
	else
		--不在活动时间 内
		return false
	end
end
tNpcGossip[24993]["OptionPoint141"] = "5-1"--全球万圣大狂欢？

--全球万圣大狂欢？
tNpcGossip[24993]["Text5-1"] = {111,117,1411,1412}
tNpcGossip[24993]["tOption5-1"] = {1411}
tNpcGossip[24993]["OptionPoint1411"] = "5-2"--这么酷炫的吗，我能否参与？

--这么酷炫的吗，我能否参与？
tNpcGossip[24993]["Text5-2"] = {111,117,1421,1422}
tNpcGossip[24993]["tOption5-2"] = {1421}
tNpcGossip[24993]["OptionPoint1421"] = "2-1"--接1、接受1星鬼怪任务

--接1、接受1星鬼怪任务
tNpcGossip[24993]["Text2-1"] = {111,117,211,212}
tNpcGossip[24993]["tOption2-1"] = {211,212}
tNpcGossip[24993]["OptionFunc211"] = "HalloweenCarnivalBaron_OneStarMonster</N>24969"--前往寻找1星鬼怪

--接1-1、完成任务
tNpcGossip[24993]["Text3-1"] = {111,117,2111,2112,2113}
tNpcGossip[24993]["tOption3-1"] = {2111}
tNpcGossip[24993]["OptionFunc2111"] = "HalloweenCarnivalBaron_GetOneStarReward"--领取好礼

--接1-2、未完成任务
tNpcGossip[24993]["Text5-3"] = {111,117,2114,2115}
tNpcGossip[24993]["tOption5-3"] = {211}

--活动时间内（第二次对白）
tNpcGossip[24993]["Text1-4"] = {111,117,151,162,152,153,154,155,156,157,158,159,160,161,114,116}
tNpcGossip[24993]["tOption1-4"] = {151,152,153,154,155,156,157,158}
tNpcGossip[24993]["ChkFunc1-4"] = function()
	local nUserId = Get_UserId()
	local nLevel = tHalloweenCarnivalBaron_Cont["Level"]
	local nMetempsychosis = tHalloweenCarnivalBaron_Cont["Metempsychosis"]
	local nData = HalloweenCarnivalBaron_GetStcValue(101,nUserId) or 0

	--鬼怪变身图鉴Id
	local nTransformBookId = tHalloweenCarnivalBaron_Cont["TransformBookId"]

	if Sys_ChkFullTime(tActivityTime["HalloweenCarnivalBaron"]["ActTime"]) then
		--活动时间内
		if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
			--等级达到
			if nData >= 1 then 
				--第二次对白（玩家已寻路到1星鬼怪）
				--获得万圣节氛围值
				local nSysDyGlobId = tHalloweenCarnivalBaron_Cont["SysDyGlobId"]
				local nGlobal = Get_SysDynaGlobalData0(nSysDyGlobId)
				local nAtmosphere = nGlobal - (nGlobal % 10000)
				--黑格子数
				local nBlack = nGlobal / 10000
				--白格子数
				local nWhite = 10 - nBlack
				--万圣氛围进度条
				local sGrid = ""
				local sBlack = tHalloweenCarnivalBaron_Text["Atmosphere"]["Black"]
				local sWhite = tHalloweenCarnivalBaron_Text["Atmosphere"]["White"]
				
				--将黑格子和白格子加入进度条
				if nBlack == 0 then 
					for i = 1 ,10 do
						sGrid = sGrid..sWhite
					end
				elseif nBlack >= 10 then 
					for i = 1 ,10 do
						sGrid = sGrid..sBlack
					end
				else
					for i = 1 ,nBlack do
						sGrid = sGrid..sBlack
					end
					for i = 1 ,nWhite do
						sGrid = sGrid..sWhite
					end
				end
				
				--生成万圣氛围进度条
				local sText1 = string.format(tHalloweenCarnivalBaron_Text[24993]["Text153"],sGrid)
				tNpcGossip[24993]["Text153"] = sText1
				--显示万圣氛围值
				local sText2 = string.format(tHalloweenCarnivalBaron_Text[24993]["Text154"],nGlobal)
				tNpcGossip[24993]["Text154"] = sText2
				
				local nMonsterTime = 0
				-- 判断在恐怖怪物复苏时间内
				for i,v in pairs(tHalloweenCarnivalBaron_Time["MonsterTime"]) do
					if Sys_ChkDayTime(v) then
						--恐惧怪物复活之夜（开启中）
						--判断鬼怪变身图鉴是否存在
						nMonsterTime = nMonsterTime + 1
						if Item_ChkItem(nTransformBookId) then
							--玩家已拥有鬼怪变身图鉴
							tNpcGossip[24993]["tOption1-4"] = {152,153,154,158,156,157}
						else
							--玩家未拥有鬼怪变身图鉴
							tNpcGossip[24993]["tOption1-4"] = {151,152,153,154,158,156,157}
						end
					end
				end
				if nMonsterTime == 0 then 
					--恐惧怪物复活之夜（未开启）
					--判断鬼怪变身图鉴是否存在
					if Item_ChkItem(nTransformBookId) then
						--玩家已拥有鬼怪变身图鉴
						tNpcGossip[24993]["tOption1-4"] = {152,153,154,155,156,157}
					else
						--玩家未拥有鬼怪变身图鉴
						tNpcGossip[24993]["tOption1-4"] = {151,152,153,154,155,156,157}
					end
				end
				return true
			else
				--第一次对白（玩家未寻路到1星鬼怪）
				return false
			end
		else
			--等级不足
			return false
		end
	else
		--不在活动时间 内
		return false
	end
end
tNpcGossip[24993]["OptionPoint151"] = "2-7"--补领图鉴
tNpcGossip[24993]["OptionPoint152"] = "2-2"--玩法一：鬼怪变身收集
tNpcGossip[24993]["OptionPoint153"] = "2-3"--玩法二：南瓜头大作战
tNpcGossip[24993]["OptionPoint154"] = "2-4"--玩法三：变身派对
tNpcGossip[24993]["OptionPoint155"] = "2-5"--玩法四：恐惧怪物复活之夜（未开启）
tNpcGossip[24993]["OptionPoint156"] = "2-6"--玩法五：月光光心慌慌（彩蛋）
tNpcGossip[24993]["OptionFunc157"] = "HalloweenCarnivalBaron_OpenWeb</N>1"--万圣节攻略
tNpcGossip[24993]["OptionFunc158"] = "HalloweenCarnivalBaron_FindMonsterAbaviosis"--玩法四：恐惧怪物复活之夜（开启中）

--接1、补领图鉴
tNpcGossip[24993]["Text2-7"] = {111,117,2811,2812}
tNpcGossip[24993]["tOption2-7"] = {2811}
tNpcGossip[24993]["OptionFunc2811"] = "HalloweenCarnivalBaron_HaveNotLetter</N>3313760"--补领图鉴

--鬼怪变身收集奖励
tNpcGossip[24993]["Text2-2"] = {111,117,221,222,223,224,225,226,227,228,229,230,231,232}
tNpcGossip[24993]["tOption2-2"] = {221,222,223}
tNpcGossip[24993]["ChkFunc2-2"] = function()
	local nUserId = Get_UserId()
	--阶段奖励领取掩码
	local nData = HalloweenCarnivalBaron_GetStcValue(102,nUserId)

	--玩家收集变身数量
	local nNum = HalloweenCarnivalBaron_GetTransformNum()
	local sText = string.format(tHalloweenCarnivalBaron_Text[24993]["Text232"],nNum)
	tNpcGossip[24993]["Text232"] = sText

	--判断是否已领取所有奖励
	local bReward = false
	if nData ~= nil and nData >= 6 then 
		bReward = true
	end

	if bReward == true then 
		--已领取该阶段所有奖励
		tNpcGossip[24993]["Text2-2"] = {111,117,221,222,223,224,225,226,227,228,229,230,231,232}
		tNpcGossip[24993]["tOption2-2"] = {222,223}
		return true
	else 
		--领取奖励
		tNpcGossip[24993]["Text2-2"] = {111,117,221,222,223,224,225,226,227,228,229,230,231,232}
		tNpcGossip[24993]["tOption2-2"] = {222,221}
		return true
	end
end
tNpcGossip[24993]["OptionFunc221"] = "HalloweenCarnivalBaron_GetReward</N>1"--一键领取奖励
tNpcGossip[24993]["OptionFunc222"] = "HalloweenCarnivalBaron_LinkFindStar</N>1"--如何收集鬼怪变身？

--领取失败，没有奖励
tNpcGossip[24993]["Text3-3"] = {111,117,2211,2212}
tNpcGossip[24993]["tOption3-3"] = {2211}
tNpcGossip[24993]["ChkFunc3-3"] = function()
	--玩家收集变身数量
	local nUserId = Get_UserId()
	
	--判断玩家所在阶段
	local nLevel = HalloweenCarnivalBaron_GetLevel()
	
	--累计到%d种再来领取奖励
	if nLevel == 6 then 
		return false
	else
		local nNextLevel = nLevel+1
		local nNeedScore = tHalloweenCarnivalBaron_Cont["Score"][nNextLevel]
		
		local sText = string.format(tHalloweenCarnivalBaron_Text[24993]["Text2211"],nNeedScore)
		tNpcGossip[24993]["Text2211"] = sText
		return true
	end
end
tNpcGossip[24993]["OptionPoint2211"] = "1-4"--返回主对白

--已领完所有奖励
tNpcGossip[24993]["Text3-4"] = {111,117,2311}
tNpcGossip[24993]["tOption3-4"] = {2311}

--接2、如何收集鬼怪变身？
tNpcGossip[24993]["Text3-2"] = {11,12,13,14,15,16,17}
tNpcGossip[24993]["tOption3-2"] = {11,12,13,14,15,16}
tNpcGossip[24993]["OptionFunc11"] = "HalloweenCarnivalBaron_HaveSweet</N>1</N>1"--寻找1星鬼怪
tNpcGossip[24993]["OptionFunc12"] = "HalloweenCarnivalBaron_HaveSweet</N>1</N>2"--寻找2星鬼怪
tNpcGossip[24993]["OptionFunc13"] = "HalloweenCarnivalBaron_LinkThreeStar</N>1"--寻找3星鬼怪
tNpcGossip[24993]["OptionPoint14"] = "4-4"--寻找4星鬼怪
tNpcGossip[24993]["OptionFunc15"] = "HalloweenCarnivalBaron_FindFiveStar"--寻找前往跨服地图NPC
tNpcGossip[24993]["OptionPoint16"] = "1-4"--返回主对白

--收集1星鬼怪
tNpcGossip[24993]["Text4-1"] = {21,22,23,24,25,26}
tNpcGossip[24993]["tOption4-1"] = {21,22,23,24,16}
tNpcGossip[24993]["OptionFunc21"] = "HalloweenCarnivalBaron_HaveSweet</N>1</N>2"--收集2星鬼怪
tNpcGossip[24993]["OptionFunc22"] = "HalloweenCarnivalBaron_LinkThreeStar</N>1"--寻找3星鬼怪
tNpcGossip[24993]["OptionPoint23"] = "4-4"--收集4星鬼怪
tNpcGossip[24993]["OptionFunc24"] = "HalloweenCarnivalBaron_FindFiveStar"--寻找前往跨服地图NPC

--收集2星鬼怪
tNpcGossip[24993]["Text4-2"] = {31,32,33,34,35,36,37}
tNpcGossip[24993]["tOption4-2"] = {31,32,33,34,16}
tNpcGossip[24993]["OptionFunc31"] = "HalloweenCarnivalBaron_HaveSweet</N>2</N>1"--收集1星鬼怪
tNpcGossip[24993]["OptionFunc32"] = "HalloweenCarnivalBaron_LinkThreeStar</N>1"--寻找3星鬼怪
tNpcGossip[24993]["OptionPoint33"] = "4-4"--收集4星鬼怪
tNpcGossip[24993]["OptionFunc34"] = "HalloweenCarnivalBaron_FindFiveStar"--寻找前往跨服地图NPC

--收集3星鬼怪
tNpcGossip[24993]["Text4-3"] = {41,42,43,44,45,46,47,48,49}
tNpcGossip[24993]["tOption4-3"] = {41,42,43,44,45,46,47,48,49,50,16}
tNpcGossip[24993]["OptionFunc41"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>1"--前往清风原寻找
tNpcGossip[24993]["OptionFunc42"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>2"--前往枫溪林寻找
tNpcGossip[24993]["OptionFunc43"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>3"--前往绝情谷寻找
tNpcGossip[24993]["OptionFunc44"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>4"--前往芦花荡寻找
tNpcGossip[24993]["OptionFunc45"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>5"--前往大漠寻找
tNpcGossip[24993]["OptionFunc46"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>6"--前往神龙岛寻找
tNpcGossip[24993]["OptionFunc47"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>7"--前往古神灵境寻找
tNpcGossip[24993]["OptionFunc48"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>8"--前往无间之堭寻找
tNpcGossip[24993]["OptionFunc49"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>9"--前往罪业之堭寻找
tNpcGossip[24993]["OptionFunc50"] = "HalloweenCarnivalBaron_ThreeStarMap</N>1</N>10"--前往永生之堭寻找

--收集4星鬼怪
tNpcGossip[24993]["Text4-4"] = {51,52,53,54,55,56}
tNpcGossip[24993]["tOption4-4"] = {51,52,53,16}
tNpcGossip[24993]["ChkFunc4-4"] = function()
	--普通服
	tNpcGossip[24993]["tOption4-4"] = {51,52,16}

	--激情服
	if SpecialServer_ChkNoGiftServer() then 
		tNpcGossip[24993]["tOption4-4"] = {53,16}
	end
	return true
end
tNpcGossip[24993]["OptionFunc51"] = "HalloweenCarnivalBaron_FindFourStar</N>1"--前往神龙岛
tNpcGossip[24993]["OptionFunc52"] = "HalloweenCarnivalBaron_FindFourStar</N>2"--前往古神灵境
tNpcGossip[24993]["OptionFunc53"] = "HalloweenCarnivalBaron_FindFourStar</N>3"--前往噩梦回廊

--寻找1星鬼怪（10颗糖果）
--【没有足够的糖果】
tNpcGossip[24993]["Text6-1"] = {111,117,2411,2412}
tNpcGossip[24993]["tOption6-1"] = {2411}

--【有足够的糖果、二次确认】
tNpcGossip[24993]["Text6-2"] = {111,117,2511,2512}
tNpcGossip[24993]["tOption6-2"] = {2511,2512}
tNpcGossip[24993]["OptionFunc2511"] = "HalloweenCarnivalBaron_FindStar</N>1"--确认前往寻找

--寻找2星鬼怪（20颗糖果）
--【没有足够的糖果】
tNpcGossip[24993]["Text6-3"] = {111,117,2611,2612}
tNpcGossip[24993]["tOption6-3"] = {2611}

--【有足够的糖果、二次确认】
tNpcGossip[24993]["Text6-4"] = {111,117,2711,2712}
tNpcGossip[24993]["tOption6-4"] = {2711,2712}
tNpcGossip[24993]["OptionFunc2711"] = "HalloweenCarnivalBaron_FindStar</N>2"--确认前往寻找

--前往XXX寻找鬼怪踪迹
tNpcGossip[24993]["Text7-1"] = {111,117,3111,3112,16}
tNpcGossip[24993]["tOption7-1"] = {3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3122}

--接2、南瓜头大作战
tNpcGossip[24993]["Text2-3"] = {111,117,251,252}
tNpcGossip[24993]["tOption2-3"] = {251}
tNpcGossip[24993]["OptionFunc251"] = "HalloweenCarnivalBaron_Where</N>25010"--送我去找杰哥

--接3、变身派对
tNpcGossip[24993]["Text2-4"] = {111,117,261,262}
tNpcGossip[24993]["tOption2-4"] = {261}
tNpcGossip[24993]["OptionFunc261"] = "HalloweenCarnivalBaron_Where</N>25201"--寻找前往跨服地图NPC

--接4、恐惧怪物复活之夜
tNpcGossip[24993]["Text2-5"] = {111,117,241,242,243,244,245}
tNpcGossip[24993]["tOption2-5"] = {241}

--接5、月光光心慌慌（彩蛋）
tNpcGossip[24993]["Text2-6"] = {111,117,271,272}
tNpcGossip[24993]["tOption2-6"] = {271}



---------------------------------------------物品模块---------------------------------------------
--鬼怪变身图鉴
tItemFace[3313760] = 2490
tItem[3313760] = tItem[3313760] or {}
tItem[3313760]["Function"]=function(nItemId)
	HalloweenCarnivalBaron_DialogText(nItemId)
end
tItem[3313760]["DialogueText"] = tHalloweenCarnivalBaron_Text[3313760]
tItem[3313760]["Text1-1"] = {111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130}
tItem[3313760]["tOption1-1"] = {1001,1002,1003,1004,1005}
tItem[3313760]["OptionFunc1001"] = "HalloweenCarnivalBaron_Where</N>24993"--"寻找万圣男爵"
tItem[3313760]["OptionFunc1002"] = "HalloweenCarnivalBaron_TransformText</N>3313760"--"我要变身"（拥有鬼怪时显示）
tItem[3313760]["OptionFunc1003"] = "HalloweenCarnivalBaron_LinkFindStar</N>2"--"寻找鬼怪"
tItem[3313760]["OptionPoint1004"] = "2-2"--"鬼怪变身收集奖励"
tItem[3313760]["OptionFunc1005"] = "HalloweenCarnivalBaron_ReturnCity"--"返回市场区"

--"我要变身"（拥有变身时显示）
tItem[3313760]["Text2-1"] = {211}
tItem[3313760]["tOption2-1"] = {101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,133,134}
tItem[3313760]["OptionFunc101"] = "HalloweenCarnivalBaron_TransformMoster</N>24969"
tItem[3313760]["OptionFunc102"] = "HalloweenCarnivalBaron_TransformMoster</N>24970"
tItem[3313760]["OptionFunc103"] = "HalloweenCarnivalBaron_TransformMoster</N>24971"
tItem[3313760]["OptionFunc104"] = "HalloweenCarnivalBaron_TransformMoster</N>24972"
tItem[3313760]["OptionFunc105"] = "HalloweenCarnivalBaron_TransformMoster</N>24973"
tItem[3313760]["OptionFunc106"] = "HalloweenCarnivalBaron_TransformMoster</N>24974"
tItem[3313760]["OptionFunc107"] = "HalloweenCarnivalBaron_TransformMoster</N>24975"
tItem[3313760]["OptionFunc108"] = "HalloweenCarnivalBaron_TransformMoster</N>24976"
tItem[3313760]["OptionFunc109"] = "HalloweenCarnivalBaron_TransformMoster</N>24977"
tItem[3313760]["OptionFunc110"] = "HalloweenCarnivalBaron_TransformMoster</N>24978"
tItem[3313760]["OptionFunc111"] = "HalloweenCarnivalBaron_TransformMoster</N>24979"
tItem[3313760]["OptionFunc112"] = "HalloweenCarnivalBaron_TransformMoster</N>24980"
tItem[3313760]["OptionFunc113"] = "HalloweenCarnivalBaron_TransformMoster</N>24981"
tItem[3313760]["OptionFunc114"] = "HalloweenCarnivalBaron_TransformMoster</N>24982"
tItem[3313760]["OptionFunc115"] = "HalloweenCarnivalBaron_TransformMoster</N>24983"
tItem[3313760]["OptionFunc116"] = "HalloweenCarnivalBaron_TransformMoster</N>24984"
tItem[3313760]["OptionFunc117"] = "HalloweenCarnivalBaron_TransformMoster</N>24985"
tItem[3313760]["OptionFunc118"] = "HalloweenCarnivalBaron_TransformMoster</N>24986"
tItem[3313760]["OptionFunc119"] = "HalloweenCarnivalBaron_TransformMoster</N>24987"
tItem[3313760]["OptionFunc120"] = "HalloweenCarnivalBaron_TransformMoster</N>24988"
tItem[3313760]["OptionFunc121"] = "HalloweenCarnivalBaron_TransformMoster</N>24989"
tItem[3313760]["OptionFunc122"] = "HalloweenCarnivalBaron_TransformMoster</N>24990"
tItem[3313760]["OptionFunc123"] = "HalloweenCarnivalBaron_TransformMoster</N>24991"
tItem[3313760]["OptionFunc124"] = "HalloweenCarnivalBaron_TransformMoster</N>24992"
tItem[3313760]["OptionFunc125"] = "HalloweenCarnivalBaron_TransformMoster</N>25000"
tItem[3313760]["OptionFunc126"] = "HalloweenCarnivalBaron_TransformMoster</N>25001"
tItem[3313760]["OptionFunc127"] = "HalloweenCarnivalBaron_TransformMoster</N>25002"
tItem[3313760]["OptionFunc128"] = "HalloweenCarnivalBaron_TransformMoster</N>25004"
tItem[3313760]["OptionFunc129"] = "HalloweenCarnivalBaron_TransformMoster</N>25005"
tItem[3313760]["OptionFunc130"] = "HalloweenCarnivalBaron_TransformMoster</N>25006"
tItem[3313760]["OptionFunc131"] = "HalloweenCarnivalBaron_TransformMoster</N>25007"
tItem[3313760]["OptionFunc133"] = "HalloweenCarnivalBaron_TransformMoster</N>5747"
tItem[3313760]["OptionPoint134"] = "1-1"--返回上一页

--"我要变身"（未拥有变身时显示）
tItem[3313760]["Text5-1"] = {111,1001}
tItem[3313760]["tOption5-1"] = {1007}

--鬼怪变身收集奖励
tItem[3313760]["Text2-2"] = {111,221,222,223,224,225,226,227,228,229,230,231,232}
tItem[3313760]["tOption2-2"] = {221,223}
tItem[3313760]["ChkFunc2-2"] = function()
	local nUserId = Get_UserId()
	local nItemId = 3313760
	--阶段奖励领取掩码
	local nData = HalloweenCarnivalBaron_GetStcValue(102,nUserId)

	--玩家收集变身数量
	local nNum = HalloweenCarnivalBaron_GetTransformNum()
	local sText = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text232"],nNum)
	tItem[nItemId]["Text232"] = sText

	--判断是否已领取所有奖励
	local bReward = false
	if nData ~= nil and nData >= 6 then 
		bReward = true
	end

	if bReward == true then 
		--已领取该阶段所有奖励
		tItem[nItemId]["Text2-2"] = {111,221,222,223,224,225,226,227,228,229,230,231,232}
		tItem[nItemId]["tOption2-2"] = {223}
		return true
	else 
		--领取奖励
		tItem[nItemId]["Text2-2"] = {111,221,222,223,224,225,226,227,228,229,230,231,232}
		tItem[nItemId]["tOption2-2"] = {221}
		return true
	end
end
tItem[3313760]["OptionFunc221"] = "HalloweenCarnivalBaron_GetReward</N>2"--一键领取奖励

--领取失败，没有奖励
tItem[3313760]["Text3-3"] = {111,2211,2212}
tItem[3313760]["tOption3-3"] = {2211}
tItem[3313760]["ChkFunc3-3"] = function()
	--玩家收集变身数量
	local nUserId = Get_UserId()
	local nItemId = 3313760

	--判断玩家所在阶段
	local nLevel = HalloweenCarnivalBaron_GetLevel()

	--累计到%d种再来领取奖励
	if nLevel == 6 then 
		return false
	else
		local nNextLevel = nLevel+1
		local nNeedScore = tHalloweenCarnivalBaron_Cont["Score"][nNextLevel]
		
		local sText = string.format(tHalloweenCarnivalBaron_Text[nItemId]["Text2211"],nNeedScore)
		tItem[nItemId]["Text2211"] = sText
		return true
	end
end
tItem[3313760]["OptionPoint2211"] = "1-1"--返回主对白

--已领完所有奖励
tItem[3313760]["Text3-4"] = {111,2311}
tItem[3313760]["tOption3-4"] = {2311}

--寻找鬼怪
tItem[3313760]["Text3-2"] = {11,12,13,14,15,16,17}
tItem[3313760]["tOption3-2"] = {11,12,13,14,15,16}
tItem[3313760]["OptionFunc11"] = "HalloweenCarnivalBaron_HaveSweet</N>2</N>1"--寻找1星鬼怪
tItem[3313760]["OptionFunc12"] = "HalloweenCarnivalBaron_HaveSweet</N>2</N>2"--寻找2星鬼怪
tItem[3313760]["OptionFunc13"] = "HalloweenCarnivalBaron_LinkThreeStar</N>2"--寻找3星鬼怪
tItem[3313760]["OptionPoint14"] = "4-4"--寻找4星鬼怪
tItem[3313760]["OptionFunc15"] = "HalloweenCarnivalBaron_FindFiveStar"--寻找前往跨服地图NPC
tItem[3313760]["OptionPoint16"] = "1-1"--返回主对白

--收集1星鬼怪
tItem[3313760]["Text4-1"] = {21,22,23,24,25,26}
tItem[3313760]["tOption4-1"] = {21,22,23,24,16}
tItem[3313760]["OptionFunc21"] = "HalloweenCarnivalBaron_HaveSweet</N>2</N>2"--收集2星鬼怪
tItem[3313760]["OptionFunc22"] = "HalloweenCarnivalBaron_LinkThreeStar</N>2"--寻找3星鬼怪
tItem[3313760]["OptionPoint23"] = "4-4"--收集4星鬼怪
tItem[3313760]["OptionFunc24"] = "HalloweenCarnivalBaron_FindFiveStar"--寻找前往跨服地图NPC

--收集2星鬼怪
tItem[3313760]["Text4-2"] = {31,32,33,34,35,36,37}
tItem[3313760]["tOption4-2"] = {31,32,33,34,16}
tItem[3313760]["OptionFunc31"] = "HalloweenCarnivalBaron_HaveSweet</N>2</N>1"--收集1星鬼怪
tItem[3313760]["OptionFunc32"] = "HalloweenCarnivalBaron_LinkThreeStar</N>2"--寻找3星鬼怪
tItem[3313760]["OptionPoint33"] = "4-4"--收集4星鬼怪
tItem[3313760]["OptionFunc34"] = "HalloweenCarnivalBaron_FindFiveStar"--寻找前往跨服地图NPC

--收集3星鬼怪
tItem[3313760]["Text4-3"] = {41,42,43,44,45,46,47,48,49}
tItem[3313760]["tOption4-3"] = {41,42,43,44,45,46,47,48,49,50,16}
tItem[3313760]["OptionFunc41"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>1"--前往清风原寻找
tItem[3313760]["OptionFunc42"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>2"--前往枫溪林寻找
tItem[3313760]["OptionFunc43"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>3"--前往绝情谷寻找
tItem[3313760]["OptionFunc44"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>4"--前往芦花荡寻找
tItem[3313760]["OptionFunc45"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>5"--前往大漠寻找
tItem[3313760]["OptionFunc46"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>6"--前往神龙岛寻找
tItem[3313760]["OptionFunc47"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>7"--前往古神灵境寻找
tItem[3313760]["OptionFunc48"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>8"--前往无间之堭寻找
tItem[3313760]["OptionFunc49"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>9"--前往罪业之堭寻找
tItem[3313760]["OptionFunc50"] = "HalloweenCarnivalBaron_ThreeStarMap</N>2</N>10"--前往永生之堭寻找

--收集4星鬼怪
tItem[3313760]["Text4-4"] = {51,52,53,54,55,56}
tItem[3313760]["tOption4-4"] = {51,52,53,1005,16}
tItem[3313760]["ChkFunc4-4"] = function()
	--普通服
	tItem[3313760]["tOption4-4"] = {51,52,1005,16}

	--激情服
	if SpecialServer_ChkNoGiftServer() then 
		tItem[3313760]["tOption4-4"] = {53,1005,16}
	end
	return true
end
tItem[3313760]["OptionFunc51"] = "HalloweenCarnivalBaron_FindFourStar</N>1"--前往神龙岛
tItem[3313760]["OptionFunc52"] = "HalloweenCarnivalBaron_FindFourStar</N>2"--前往古神灵境
tItem[3313760]["OptionFunc53"] = "HalloweenCarnivalBaron_FindFourStar</N>3"--前往噩梦回廊

--寻找1星鬼怪（10颗糖果）
--【没有足够的糖果】
tItem[3313760]["Text6-1"] = {111,2411,2412}
tItem[3313760]["tOption6-1"] = {2411}

--【有足够的糖果、二次确认】
tItem[3313760]["Text6-2"] = {111,2511,2512}
tItem[3313760]["tOption6-2"] = {2511,2512}
tItem[3313760]["OptionFunc2511"] = "HalloweenCarnivalBaron_FindStar</N>1"--确认前往寻找

--寻找2星鬼怪（20颗糖果）
--【没有足够的糖果】
tItem[3313760]["Text6-3"] = {111,2611,2612}
tItem[3313760]["tOption6-3"] = {2611}

--【有足够的糖果、二次确认】
tItem[3313760]["Text6-4"] = {111,2711,2712}
tItem[3313760]["tOption6-4"] = {2711,2712}
tItem[3313760]["OptionFunc2711"] = "HalloweenCarnivalBaron_FindStar</N>2"--确认前往寻找

--前往XXX寻找鬼怪踪迹
tItem[3313760]["Text7-1"] = {111,3111,3112,16}
tItem[3313760]["tOption7-1"] = {3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3122}

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,HalloweenCarnivalBaron_Login)


