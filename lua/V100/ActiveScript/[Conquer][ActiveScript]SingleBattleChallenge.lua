------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]巅峰竞速争霸赛(9.17-9.30)
--Creator:		翁清海
--Created:		2019/09/01
------------------------------------------------------------------------------------

--命名前缀
--SingleBattleChallenge_

--logid:12001599

--Stc掩码说明
-- 196,66		背包信控制
-- 196,67		保存玩家挑战时间（1~3层）
-- 196,68		保存玩家挑战时间（4~6层）
-- 196,69		保存玩家挑战时间（7~9层）
-- 196,70		保存玩家挑战时间（10~12层）
-- 196,71			保存玩家挑战时间（13~15层）
-- 196,72		保存玩家挑战时间（16~18层）
-- 196,73		保存玩家挑战时间（19~21层）
-- 196,74		保存玩家挑战时间（22~24层）
-- 196,75		保存玩家挑战时间（25~27层）
-- 196,76		保存玩家挑战时间（28~30层）
-- 196,77		保存玩家挑战时间（31~33层）
-- 196,78		保存玩家挑战时间（34~36层）
-- 196,79		保存玩家挑战时间戳
-- 196,80		保存玩家副本内宝箱领奖状态
-- 196,81			保存玩家阶段性奖励领取标志
-- 196,89			保存玩家挑战次数
-- 196,90			保存玩家二次确认标志

--------------------------------------------数据部分配置--------------------------------------------
--玩家记录
local tSingleBattleChallenge_Record = {}
	--记录玩家选择的药品
	tSingleBattleChallenge_Record["Medicine"] = {}
	--记录当前挑战的层数
	tSingleBattleChallenge_Record["Level"] = {}
	
local tSingleBattleChallenge_Time = {}
	tSingleBattleChallenge_Time["ActivityTime"] = tActivityTime["SingleBattleChallenge"]["ActivityTime"]
	tSingleBattleChallenge_Time["RankAwardTime"] = tActivityTime["SingleBattleChallenge"]["RankAwardTime"]
	
local tSingleBattleChallenge_ELog = {}
	tSingleBattleChallenge_ELog["Buy"] = "1000	855"
	tSingleBattleChallenge_ELog["BuyTimes"] = "1000	949"
	
local tSingleBattleChallenge_Log = {}
	tSingleBattleChallenge_Log["Begin"] = "0,0,0,0,12001599,1[1],%d,0"
	tSingleBattleChallenge_Log["Succ"] = "0,0,0,0,12001599,1[2],%d,0"
	tSingleBattleChallenge_Log["RankAward"] = "0,0,0,0,12001599,1[4],%d,%d"
	tSingleBattleChallenge_Log["DelItem"] = "0,0,%d,%d,12001599,2,0,0"
	
--常量表
local tSingleBattleChallenge_Cont = {}
	--等级限制
	tSingleBattleChallenge_Cont["Level"] = 80
	tSingleBattleChallenge_Cont["Metempsychosis"] = 0
	--副本
	tSingleBattleChallenge_Cont["InstanceType"] = 330
	--副本
	tSingleBattleChallenge_Cont["MapDoc"] = 10410
	--购买药水花费的天石数
	tSingleBattleChallenge_Cont["EMoney"] = 27
	--购买挑战次数花费的天石数
	tSingleBattleChallenge_Cont["EMoneyChallenge"] = 50
	--玩家身上状态
	tSingleBattleChallenge_Cont["Status"] = {133,134,135,136,137,138,139,140,141,142,143,144}
	--跳转网页
	tSingleBattleChallenge_Cont["Web"] = "https://zf.99.com/index/"
	--每个掩码记录几层
	tSingleBattleChallenge_Cont["LevelNum"] = 3
	--每个掩码分3位记
	tSingleBattleChallenge_Cont["Multiple"] = 1000
	--道士职业
	tSingleBattleChallenge_Cont["TaoistPro"] = {10,13,14}
	--时间戳掩码标识
	tSingleBattleChallenge_Cont["StcTimeIndex"] = 13
	--领取宝箱掩码标识
	tSingleBattleChallenge_Cont["BoxIndex"] = 14
	--领取阶段性奖标识
	tSingleBattleChallenge_Cont["PhaseIndex"] = 15
	--挑战次数标识
	tSingleBattleChallenge_Cont["TimesIndex"] = 16
	--二次确认标识
	tSingleBattleChallenge_Cont["ComfirmIndex"] = 17
	--排行榜索引
	tSingleBattleChallenge_Cont["RankIndex"] = 2489700
	--一分钟
	tSingleBattleChallenge_Cont["Sec"] = 60
	--通关该层以上全服公告
	tSingleBattleChallenge_Cont["BroadcastLevel"] = 30
	--对白居中显示位置
	tSingleBattleChallenge_Cont["CenterAlineRank"] = {}
	tSingleBattleChallenge_Cont["CenterAlineRank"]["Left"] = 16
	tSingleBattleChallenge_Cont["CenterAlineRank"]["Middle"] = 42
	tSingleBattleChallenge_Cont["CenterAlineRank"]["Right"] = 60
	tSingleBattleChallenge_Cont["CenterAline"] = {}
	tSingleBattleChallenge_Cont["CenterAline"]["Left"] = 14
	tSingleBattleChallenge_Cont["CenterAline"]["Middle"] = 34
	tSingleBattleChallenge_Cont["CenterAline"]["Right"] = 53
	--传送坐标
	tSingleBattleChallenge_Cont["BoundTrans"] = {}
	tSingleBattleChallenge_Cont["BoundTrans"][1] = {}
	tSingleBattleChallenge_Cont["BoundTrans"][1]["MapId"] = 1002
	tSingleBattleChallenge_Cont["BoundTrans"][1]["PosX"] = 377
	tSingleBattleChallenge_Cont["BoundTrans"][1]["PosY"] = 440
	tSingleBattleChallenge_Cont["BoundTrans"][2] = {}
	tSingleBattleChallenge_Cont["BoundTrans"][2]["MapId"] = 1036
	tSingleBattleChallenge_Cont["BoundTrans"][2]["PosX"] = 218
	tSingleBattleChallenge_Cont["BoundTrans"][2]["PosY"] = 113
	--动态NPC配置
	tSingleBattleChallenge_Cont["DynNpc"] = {}
	--古三通
	tSingleBattleChallenge_Cont["DynNpc"][1] = {}
	tSingleBattleChallenge_Cont["DynNpc"][1]["Sort"] = 1
	tSingleBattleChallenge_Cont["DynNpc"][1]["Type"] = 2
	tSingleBattleChallenge_Cont["DynNpc"][1]["LookFace"] = 37220
	tSingleBattleChallenge_Cont["DynNpc"][1]["Action"] = 94490384
	tSingleBattleChallenge_Cont["DynNpc"][1]["PosX"] = 58
	tSingleBattleChallenge_Cont["DynNpc"][1]["PosY"] = 59
	--上官海棠
	tSingleBattleChallenge_Cont["DynNpc"][2] = {}
	tSingleBattleChallenge_Cont["DynNpc"][2]["Sort"] = 1
	tSingleBattleChallenge_Cont["DynNpc"][2]["Type"] = 2
	tSingleBattleChallenge_Cont["DynNpc"][2]["LookFace"] = 53420
	tSingleBattleChallenge_Cont["DynNpc"][2]["Action"] = 94490383
	tSingleBattleChallenge_Cont["DynNpc"][2]["PosX"] = 43
	tSingleBattleChallenge_Cont["DynNpc"][2]["PosY"] = 70
	--护龙山庄秘宝箱
	tSingleBattleChallenge_Cont["DynNpc"][3] = {}
	tSingleBattleChallenge_Cont["DynNpc"][3]["Sort"] = 1
	tSingleBattleChallenge_Cont["DynNpc"][3]["Type"] = 2
	tSingleBattleChallenge_Cont["DynNpc"][3]["LookFace"] = 37240
	tSingleBattleChallenge_Cont["DynNpc"][3]["Action"] = 94490385
	tSingleBattleChallenge_Cont["DynNpc"][3]["PosX"] = 58
	tSingleBattleChallenge_Cont["DynNpc"][3]["PosY"] = 59
	--怪物刷新信息
	tSingleBattleChallenge_Cont["BossInfo"] = {}
	tSingleBattleChallenge_Cont["BossInfo"]["PosX"] = 58
	tSingleBattleChallenge_Cont["BossInfo"]["PosY"] = 59
	tSingleBattleChallenge_Cont["BossInfo"]["GenId"] = 20069
	--怪物战力
	tSingleBattleChallenge_Cont["BossBattle"] = {}
	tSingleBattleChallenge_Cont["BossBattle"][5704] = 200
	tSingleBattleChallenge_Cont["BossBattle"][5705] = 210
	tSingleBattleChallenge_Cont["BossBattle"][5706] = 220
	tSingleBattleChallenge_Cont["BossBattle"][5707] = 230
	tSingleBattleChallenge_Cont["BossBattle"][5708] = 240
	tSingleBattleChallenge_Cont["BossBattle"][5709] = 250
	tSingleBattleChallenge_Cont["BossBattle"][5710] = 260
	tSingleBattleChallenge_Cont["BossBattle"][5711] = 270
	tSingleBattleChallenge_Cont["BossBattle"][5712] = 280
	tSingleBattleChallenge_Cont["BossBattle"][5713] =290
	tSingleBattleChallenge_Cont["BossBattle"][5714] = 300
	tSingleBattleChallenge_Cont["BossBattle"][5715] = 310
	tSingleBattleChallenge_Cont["BossBattle"][5716] = 320
	tSingleBattleChallenge_Cont["BossBattle"][5717] = 330
	tSingleBattleChallenge_Cont["BossBattle"][5718] = 340
	tSingleBattleChallenge_Cont["BossBattle"][5719] = 350
	tSingleBattleChallenge_Cont["BossBattle"][5720] = 360
	tSingleBattleChallenge_Cont["BossBattle"][5721] = 370
	tSingleBattleChallenge_Cont["BossBattle"][5722] = 380
	tSingleBattleChallenge_Cont["BossBattle"][5723] = 390
	tSingleBattleChallenge_Cont["BossBattle"][5724] = 400
	tSingleBattleChallenge_Cont["BossBattle"][5725] = 405
	tSingleBattleChallenge_Cont["BossBattle"][5726] = 410
	tSingleBattleChallenge_Cont["BossBattle"][5727] = 415
	tSingleBattleChallenge_Cont["BossBattle"][5728] = 420
	tSingleBattleChallenge_Cont["BossBattle"][5729] = 425
	tSingleBattleChallenge_Cont["BossBattle"][5730] = 430
	tSingleBattleChallenge_Cont["BossBattle"][5731] = 435
	tSingleBattleChallenge_Cont["BossBattle"][5732] = 440
	tSingleBattleChallenge_Cont["BossBattle"][5733] = 445
	tSingleBattleChallenge_Cont["BossBattle"][5734] = 450
	tSingleBattleChallenge_Cont["BossBattle"][5735] = 455
	tSingleBattleChallenge_Cont["BossBattle"][5736] = 460
	tSingleBattleChallenge_Cont["BossBattle"][5737] = 465
	tSingleBattleChallenge_Cont["BossBattle"][5738] = 470
	tSingleBattleChallenge_Cont["BossBattle"][5739] = 475
	--挑战时间
	--其他职业
	tSingleBattleChallenge_Cont["Time"] = {}
	tSingleBattleChallenge_Cont["Time"][1] = 180
	tSingleBattleChallenge_Cont["Time"][2] = 180
	tSingleBattleChallenge_Cont["Time"][3] = 180
	tSingleBattleChallenge_Cont["Time"][4] = 180
	tSingleBattleChallenge_Cont["Time"][5] = 180
	tSingleBattleChallenge_Cont["Time"][6] = 180
	tSingleBattleChallenge_Cont["Time"][7] = 175
	tSingleBattleChallenge_Cont["Time"][8] = 170
	tSingleBattleChallenge_Cont["Time"][9] = 165
	tSingleBattleChallenge_Cont["Time"][10] =160
	tSingleBattleChallenge_Cont["Time"][11] = 155
	tSingleBattleChallenge_Cont["Time"][12] = 150
	tSingleBattleChallenge_Cont["Time"][13] = 145
	tSingleBattleChallenge_Cont["Time"][14] = 140
	tSingleBattleChallenge_Cont["Time"][15] = 135
	tSingleBattleChallenge_Cont["Time"][16] = 130
	tSingleBattleChallenge_Cont["Time"][17] = 125
	tSingleBattleChallenge_Cont["Time"][18] = 120
	tSingleBattleChallenge_Cont["Time"][19] = 115
	tSingleBattleChallenge_Cont["Time"][20] = 110
	tSingleBattleChallenge_Cont["Time"][21] = 105
	tSingleBattleChallenge_Cont["Time"][22] = 100
	tSingleBattleChallenge_Cont["Time"][23] = 95
	tSingleBattleChallenge_Cont["Time"][24] = 90
	tSingleBattleChallenge_Cont["Time"][25] = 85
	tSingleBattleChallenge_Cont["Time"][26] = 80
	tSingleBattleChallenge_Cont["Time"][27] = 75
	tSingleBattleChallenge_Cont["Time"][28] = 70
	tSingleBattleChallenge_Cont["Time"][29] = 65
	tSingleBattleChallenge_Cont["Time"][30] = 60
	tSingleBattleChallenge_Cont["Time"][31] = 55
	tSingleBattleChallenge_Cont["Time"][32] = 50
	tSingleBattleChallenge_Cont["Time"][33] = 45
	tSingleBattleChallenge_Cont["Time"][34] = 40
	tSingleBattleChallenge_Cont["Time"][35] = 35
	tSingleBattleChallenge_Cont["Time"][36] = 30
	--道士
	tSingleBattleChallenge_Cont["TaoistTime"] = {}
	tSingleBattleChallenge_Cont["TaoistTime"][1] = 200
	tSingleBattleChallenge_Cont["TaoistTime"][2] = 200
	tSingleBattleChallenge_Cont["TaoistTime"][3] = 200
	tSingleBattleChallenge_Cont["TaoistTime"][4] = 200
	tSingleBattleChallenge_Cont["TaoistTime"][5] = 200
	tSingleBattleChallenge_Cont["TaoistTime"][6] = 195
	tSingleBattleChallenge_Cont["TaoistTime"][7] = 190
	tSingleBattleChallenge_Cont["TaoistTime"][8] = 185
	tSingleBattleChallenge_Cont["TaoistTime"][9] = 180
	tSingleBattleChallenge_Cont["TaoistTime"][10] =175
	tSingleBattleChallenge_Cont["TaoistTime"][11] = 170
	tSingleBattleChallenge_Cont["TaoistTime"][12] = 165
	tSingleBattleChallenge_Cont["TaoistTime"][13] = 160
	tSingleBattleChallenge_Cont["TaoistTime"][14] = 155
	tSingleBattleChallenge_Cont["TaoistTime"][15] = 150
	tSingleBattleChallenge_Cont["TaoistTime"][16] = 145
	tSingleBattleChallenge_Cont["TaoistTime"][17] = 140
	tSingleBattleChallenge_Cont["TaoistTime"][18] = 135
	tSingleBattleChallenge_Cont["TaoistTime"][19] = 130
	tSingleBattleChallenge_Cont["TaoistTime"][20] = 125
	tSingleBattleChallenge_Cont["TaoistTime"][21] = 120
	tSingleBattleChallenge_Cont["TaoistTime"][22] = 115
	tSingleBattleChallenge_Cont["TaoistTime"][23] = 110
	tSingleBattleChallenge_Cont["TaoistTime"][24] = 105
	tSingleBattleChallenge_Cont["TaoistTime"][25] = 100
	tSingleBattleChallenge_Cont["TaoistTime"][26] = 95
	tSingleBattleChallenge_Cont["TaoistTime"][27] = 90
	tSingleBattleChallenge_Cont["TaoistTime"][28] = 85
	tSingleBattleChallenge_Cont["TaoistTime"][29] = 80
	tSingleBattleChallenge_Cont["TaoistTime"][30] = 75
	tSingleBattleChallenge_Cont["TaoistTime"][31] = 70
	tSingleBattleChallenge_Cont["TaoistTime"][32] = 65
	tSingleBattleChallenge_Cont["TaoistTime"][33] = 60
	tSingleBattleChallenge_Cont["TaoistTime"][34] = 55
	tSingleBattleChallenge_Cont["TaoistTime"][35] = 50
	tSingleBattleChallenge_Cont["TaoistTime"][36] = 45
	--层数对应战力
	tSingleBattleChallenge_Cont["LevelBattle"] = {}
	tSingleBattleChallenge_Cont["LevelBattle"][1] = 200
	tSingleBattleChallenge_Cont["LevelBattle"][2] = 210
	tSingleBattleChallenge_Cont["LevelBattle"][3] = 220
	tSingleBattleChallenge_Cont["LevelBattle"][4] = 230
	tSingleBattleChallenge_Cont["LevelBattle"][5] = 240
	tSingleBattleChallenge_Cont["LevelBattle"][6] = 250
	tSingleBattleChallenge_Cont["LevelBattle"][7] = 260
	tSingleBattleChallenge_Cont["LevelBattle"][8] = 270
	tSingleBattleChallenge_Cont["LevelBattle"][9] = 280
	tSingleBattleChallenge_Cont["LevelBattle"][10] =290
	tSingleBattleChallenge_Cont["LevelBattle"][11] = 300
	tSingleBattleChallenge_Cont["LevelBattle"][12] = 310
	tSingleBattleChallenge_Cont["LevelBattle"][13] = 320
	tSingleBattleChallenge_Cont["LevelBattle"][14] = 330
	tSingleBattleChallenge_Cont["LevelBattle"][15] = 340
	tSingleBattleChallenge_Cont["LevelBattle"][16] = 350
	tSingleBattleChallenge_Cont["LevelBattle"][17] = 360
	tSingleBattleChallenge_Cont["LevelBattle"][18] = 370
	tSingleBattleChallenge_Cont["LevelBattle"][19] = 380
	tSingleBattleChallenge_Cont["LevelBattle"][20] = 390
	tSingleBattleChallenge_Cont["LevelBattle"][21] = 400
	tSingleBattleChallenge_Cont["LevelBattle"][22] = 405
	tSingleBattleChallenge_Cont["LevelBattle"][23] = 410
	tSingleBattleChallenge_Cont["LevelBattle"][24] = 415
	tSingleBattleChallenge_Cont["LevelBattle"][25] = 420
	tSingleBattleChallenge_Cont["LevelBattle"][26] = 425
	tSingleBattleChallenge_Cont["LevelBattle"][27] = 430
	tSingleBattleChallenge_Cont["LevelBattle"][28] = 435
	tSingleBattleChallenge_Cont["LevelBattle"][29] = 440
	tSingleBattleChallenge_Cont["LevelBattle"][30] = 445
	tSingleBattleChallenge_Cont["LevelBattle"][31] = 450
	tSingleBattleChallenge_Cont["LevelBattle"][32] = 455
	tSingleBattleChallenge_Cont["LevelBattle"][33] = 460
	tSingleBattleChallenge_Cont["LevelBattle"][34] = 465
	tSingleBattleChallenge_Cont["LevelBattle"][35] = 470
	tSingleBattleChallenge_Cont["LevelBattle"][36] = 475
	--职业索引
	tSingleBattleChallenge_Cont["ProIndex"] = {}
	tSingleBattleChallenge_Cont["ProIndex"][1] = 9
	tSingleBattleChallenge_Cont["ProIndex"][2] = 1
	tSingleBattleChallenge_Cont["ProIndex"][3] = 6
	tSingleBattleChallenge_Cont["ProIndex"][4] = 5
	tSingleBattleChallenge_Cont["ProIndex"][5] = 7
	tSingleBattleChallenge_Cont["ProIndex"][6] = 4
	tSingleBattleChallenge_Cont["ProIndex"][7] = 2
	tSingleBattleChallenge_Cont["ProIndex"][8] = 16
	tSingleBattleChallenge_Cont["ProIndex"][9] = 8
	tSingleBattleChallenge_Cont["ProIndex"][10] =14
	tSingleBattleChallenge_Cont["ProIndex"][11] = 13
	--排行榜奖励
	tSingleBattleChallenge_Cont["RankItem"] = {}
	tSingleBattleChallenge_Cont["RankItem"][1] = 3323372
	tSingleBattleChallenge_Cont["RankItem"][2] = 3323373
	tSingleBattleChallenge_Cont["RankItem"][3] = 3323373
	tSingleBattleChallenge_Cont["RankItem"][4] = 3323374
	tSingleBattleChallenge_Cont["RankItem"][5] = 3323374
	tSingleBattleChallenge_Cont["RankItem"][6] = 3323374
	tSingleBattleChallenge_Cont["RankItem"][7] = 3323374
	tSingleBattleChallenge_Cont["RankItem"][8] = 3323374
	tSingleBattleChallenge_Cont["RankItem"][9] = 3323374
	tSingleBattleChallenge_Cont["RankItem"][10] =3323374
	--水道士额外
	tSingleBattleChallenge_Cont["WaterTaoist"] = {}
	tSingleBattleChallenge_Cont["WaterTaoist"]["Status"] = {139,140}
	tSingleBattleChallenge_Cont["WaterTaoist"]["Power"] = 20000
	tSingleBattleChallenge_Cont["WaterTaoist"]["ID"] = 13
	
--掩码表
local tSingleBattleChallenge_Stc = {}
	--保存玩家挑战时间（1~3层）
	tSingleBattleChallenge_Stc[1] = {}
	tSingleBattleChallenge_Stc[1]["Event"] = 196
	tSingleBattleChallenge_Stc[1]["Type"] = 67
	--保存玩家挑战时间（4~6层）
	tSingleBattleChallenge_Stc[2] = {}
	tSingleBattleChallenge_Stc[2]["Event"] = 196
	tSingleBattleChallenge_Stc[2]["Type"] = 68
	--保存玩家挑战时间（7~9层）
	tSingleBattleChallenge_Stc[3] = {}
	tSingleBattleChallenge_Stc[3]["Event"] = 196
	tSingleBattleChallenge_Stc[3]["Type"] = 69
	--保存玩家挑战时间（10~12层）
	tSingleBattleChallenge_Stc[4] = {}
	tSingleBattleChallenge_Stc[4]["Event"] = 196
	tSingleBattleChallenge_Stc[4]["Type"] = 70
	--保存玩家挑战时间（13~15层）
	tSingleBattleChallenge_Stc[5] = {}
	tSingleBattleChallenge_Stc[5]["Event"] = 196
	tSingleBattleChallenge_Stc[5]["Type"] = 71
	--保存玩家挑战时间（16~18层）
	tSingleBattleChallenge_Stc[6] = {}
	tSingleBattleChallenge_Stc[6]["Event"] = 196
	tSingleBattleChallenge_Stc[6]["Type"] = 72
	--保存玩家挑战时间（19~21层）
	tSingleBattleChallenge_Stc[7] = {}
	tSingleBattleChallenge_Stc[7]["Event"] = 196
	tSingleBattleChallenge_Stc[7]["Type"] = 73
	--保存玩家挑战时间（22~24层）
	tSingleBattleChallenge_Stc[8] = {}
	tSingleBattleChallenge_Stc[8]["Event"] = 196
	tSingleBattleChallenge_Stc[8]["Type"] = 74
	--保存玩家挑战时间（25~27层）
	tSingleBattleChallenge_Stc[9] = {}
	tSingleBattleChallenge_Stc[9]["Event"] = 196
	tSingleBattleChallenge_Stc[9]["Type"] = 75
	--保存玩家挑战时间（28~30层）
	tSingleBattleChallenge_Stc[10] = {}
	tSingleBattleChallenge_Stc[10]["Event"] = 196
	tSingleBattleChallenge_Stc[10]["Type"] = 76
	--保存玩家挑战时间（31~32层）
	tSingleBattleChallenge_Stc[11] = {}
	tSingleBattleChallenge_Stc[11]["Event"] = 196
	tSingleBattleChallenge_Stc[11]["Type"] = 77
	--保存玩家挑战时间（33~36层）
	tSingleBattleChallenge_Stc[12] = {}
	tSingleBattleChallenge_Stc[12]["Event"] = 196
	tSingleBattleChallenge_Stc[12]["Type"] = 78
	--保存玩家挑战时间戳
	tSingleBattleChallenge_Stc[13] = {}
	tSingleBattleChallenge_Stc[13]["Event"] = 196
	tSingleBattleChallenge_Stc[13]["Type"] = 79
	--保存玩家副本内宝箱领奖状态
	tSingleBattleChallenge_Stc[14] = {}
	tSingleBattleChallenge_Stc[14]["Event"] = 196
	tSingleBattleChallenge_Stc[14]["Type"] = 80
	tSingleBattleChallenge_Stc[14]["Delay"] = 1
	tSingleBattleChallenge_Stc[14]["TimeType"] = 4
	--保存玩家阶段性奖励领取标志
	tSingleBattleChallenge_Stc[15] = {}
	tSingleBattleChallenge_Stc[15]["Event"] = 196
	tSingleBattleChallenge_Stc[15]["Type"] = 81
	--保存玩家挑战次数
	tSingleBattleChallenge_Stc[16] = {}
	tSingleBattleChallenge_Stc[16]["Event"] = 196
	tSingleBattleChallenge_Stc[16]["Type"] = 89
	tSingleBattleChallenge_Stc[16]["Delay"] = 1
	tSingleBattleChallenge_Stc[16]["TimeType"] = 4
	tSingleBattleChallenge_Stc[16]["Limit"] = 9
	--保存玩家二次确认标志
	tSingleBattleChallenge_Stc[17] = {}
	tSingleBattleChallenge_Stc[17]["Event"] = 196
	tSingleBattleChallenge_Stc[17]["Type"] = 90
	
--二进制对应值
local tSingleBattleChallenge_ParseNumber = {}
	tSingleBattleChallenge_ParseNumber[1] = 1
	tSingleBattleChallenge_ParseNumber[2] = 2
	tSingleBattleChallenge_ParseNumber[3] = 4
	tSingleBattleChallenge_ParseNumber[4] = 8
	tSingleBattleChallenge_ParseNumber[5] = 16
	tSingleBattleChallenge_ParseNumber[6] = 32
	tSingleBattleChallenge_ParseNumber[7] = 64
	tSingleBattleChallenge_ParseNumber[8] = 128
	tSingleBattleChallenge_ParseNumber[9] = 256
	tSingleBattleChallenge_ParseNumber[10] = 512
	tSingleBattleChallenge_ParseNumber[11] = 1024
	tSingleBattleChallenge_ParseNumber[12] = 2048
	tSingleBattleChallenge_ParseNumber[13] = 4096
	tSingleBattleChallenge_ParseNumber[14] = 8192
	tSingleBattleChallenge_ParseNumber[15] = 16384
	
local tSingleBattleChallenge_Reward = {}
	--购买药水
	tSingleBattleChallenge_Reward["BuyMedicine"] = {}
	tSingleBattleChallenge_Reward["BuyMedicine"]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["BuyMedicine"]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["BuyMedicine"]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["BuyMedicine"]["RewardItem"][1]["Id"] = 3320782
	tSingleBattleChallenge_Reward["BuyMedicine"]["RewardItem"][1]["Attr"] = "0 1"
	
	-- ===竞速争霸赛冠军宝箱
	-- ===索引: tSingleBattleChallenge_Reward[3323372]
	-- ===删除: 3323372,1
	tSingleBattleChallenge_Reward[3323372] = {}
	tSingleBattleChallenge_Reward[3323372]["LogId"] = 12001599
	tSingleBattleChallenge_Reward[3323372]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3323372]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3323372]["DeleteItem"][1]["Id"] = 3323372 -- 【库】竞速争霸赛冠军宝箱[属性:9]
	tSingleBattleChallenge_Reward[3323372]["RewardTitle"] = {}
	tSingleBattleChallenge_Reward[3323372]["RewardTitle"]["TitleType"] = 2216 -- 【库】登峰造极, 【表格】30天时效称号登峰造极
	tSingleBattleChallenge_Reward[3323372]["RewardTitle"]["TitleId"] = 2216
	tSingleBattleChallenge_Reward[3323372]["RewardTitle"]["SaveTime"] = 43200 -- 30天时效的[称号]:登峰造极, 【需求】30天时效称号登峰造极
	tSingleBattleChallenge_Reward[3323372]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3323372]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3323372]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*100
	tSingleBattleChallenge_Reward[3323372]["RewardItem"][1]["Attr"] = "0 100" -- 人参果*100（[错误]物品数量超10个）
	tSingleBattleChallenge_Reward[3323372]["RewardStrengthValue"] = {}
	tSingleBattleChallenge_Reward[3323372]["RewardStrengthValue"]["Value"] = 10000 -- 气力值, 【需求】10000点气力值
	tSingleBattleChallenge_Reward[3323372]["RewardItem"][2] = {}
	tSingleBattleChallenge_Reward[3323372]["RewardItem"][2]["Id"] = 3309661 -- 30天怀旧武器可选包[3309661][属性:9][叠加:10000][金币:0], 【表格】30天时效怀旧武器外套包*2
	tSingleBattleChallenge_Reward[3323372]["RewardItem"][2]["Attr"] = "0 2" -- 30天怀旧武器可选包*2

	tSingleBattleChallenge_Reward[3323373] = {}
	-- ===竞速争霸赛勇者宝箱
	-- ===索引: tSingleBattleChallenge_Reward[3323373]
	-- ===删除: 3323373,1
	tSingleBattleChallenge_Reward[3323373]["LogId"] = 12001599
	tSingleBattleChallenge_Reward[3323373]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3323373]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3323373]["DeleteItem"][1]["Id"] = 3323373 -- 【库】竞速争霸赛勇者宝箱[属性:9]
	tSingleBattleChallenge_Reward[3323373]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3323373]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3323373]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*50
	tSingleBattleChallenge_Reward[3323373]["RewardItem"][1]["Attr"] = "0 50" -- 人参果*50（[错误]物品数量超10个）
	tSingleBattleChallenge_Reward[3323373]["RewardStrengthValue"] = {}
	tSingleBattleChallenge_Reward[3323373]["RewardStrengthValue"]["Value"] = 5000 -- 气力值, 【需求】5000气
	tSingleBattleChallenge_Reward[3323373]["RewardItem"][2] = {}
	tSingleBattleChallenge_Reward[3323373]["RewardItem"][2]["Id"] = 3306394 -- 15天怀旧武器外套包[3306394][属性:11][叠加:1][金币:0], 【表格】15天怀旧武器外套*2
	tSingleBattleChallenge_Reward[3323373]["RewardItem"][2]["Attr"] = "0 2" -- 15天怀旧武器外套包*2

	tSingleBattleChallenge_Reward[3323374] = {}
	-- ===竞速争霸赛豪侠宝箱
	-- ===索引: tSingleBattleChallenge_Reward[3323374]
	-- ===删除: 3323374,1
	tSingleBattleChallenge_Reward[3323374]["LogId"] = 12001599
	tSingleBattleChallenge_Reward[3323374]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3323374]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3323374]["DeleteItem"][1]["Id"] = 3323374 -- 【库】竞速争霸赛豪侠宝箱[属性:9]
	tSingleBattleChallenge_Reward[3323374]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3323374]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3323374]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*30
	tSingleBattleChallenge_Reward[3323374]["RewardItem"][1]["Attr"] = "0 30" -- 人参果*30（[错误]物品数量超10个）
	tSingleBattleChallenge_Reward[3323374]["RewardStrengthValue"] = {}
	tSingleBattleChallenge_Reward[3323374]["RewardStrengthValue"]["Value"] = 3000 -- 气力值, 【需求】3000气
	tSingleBattleChallenge_Reward[3323374]["RewardItem"][2] = {}
	tSingleBattleChallenge_Reward[3323374]["RewardItem"][2]["Id"] = 3306393 -- 3天怀旧武器外套包[3306393][属性:11][叠加:1][金币:0], 【表格】3天怀旧武器外套*2
	tSingleBattleChallenge_Reward[3323374]["RewardItem"][2]["Attr"] = "0 2" -- 3天怀旧武器外套包*2

	tSingleBattleChallenge_Reward[3323445] = {}
	-- ===15天玄武护体（+9）（赠）礼包
	-- ===索引: tSingleBattleChallenge_Reward[3323445]
	-- ===删除: 3323445,1
	tSingleBattleChallenge_Reward[3323445]["LogId"] = 12001599
	tSingleBattleChallenge_Reward[3323445]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3323445]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3323445]["DeleteItem"][1]["Id"] = 3323445 -- 【库】15天玄武护体(+9)（赠）礼包[属性:9]
	tSingleBattleChallenge_Reward[3323445]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3323445]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3323445]["RewardItem"][1]["Id"] = 4031609 -- 玄武护体(+9)[4031609][属性:8][叠加:0][金币:0], 【表格】玄武护体（+9）（赠）
	tSingleBattleChallenge_Reward[3323445]["RewardItem"][1]["Attr"] = "0 1 3 21600 1" -- 15天时效(激活)的玄武护体(+9)（赠）*1

	tSingleBattleChallenge_Reward["Pass"] = {}
	-- ===在限时内通关奖励
	-- ===索引: tSingleBattleChallenge_Reward["Pass"][1]
	tSingleBattleChallenge_Reward["Pass"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1]["ItemChanceSum"] = 10000
	tSingleBattleChallenge_Reward["Pass"][1]["LogId"] = 12001599
	-- 神侯令-- 【必给】
	tSingleBattleChallenge_Reward["Pass"][1][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][1]["RandomItemChanceType"] = 1
	tSingleBattleChallenge_Reward["Pass"][1][1]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][1]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][1]["RewardItem"][1]["Id"] = 3323371 -- 神侯令[3323371][属性:9][叠加:10000][金币:0], 【表格】神侯令
	tSingleBattleChallenge_Reward["Pass"][1][1]["RewardItem"][1]["Attr"] = "0 1" -- 神侯令*1
	-- 赤炼石+2（赠） - 10.00%
	tSingleBattleChallenge_Reward["Pass"][1][2] = {}
	tSingleBattleChallenge_Reward["Pass"][1][2]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][2]["ItemChance"] = 1000
	tSingleBattleChallenge_Reward["Pass"][1][2]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][2]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][2]["RewardItem"][1]["Id"] = 730002 -- +2赤炼石[730002][属性:0][叠加:0][金币:0], 【表格】赤炼石+2（赠）
	tSingleBattleChallenge_Reward["Pass"][1][2]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+2赤炼石（赠）*1
	-- 赤炼石+3（赠） - 10.00%
	tSingleBattleChallenge_Reward["Pass"][1][3] = {}
	tSingleBattleChallenge_Reward["Pass"][1][3]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][3]["ItemChance"] = 1000
	tSingleBattleChallenge_Reward["Pass"][1][3]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][3]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][3]["RewardItem"][1]["Id"] = 730003 -- +3赤炼石[730003][属性:0][叠加:0][金币:0], 【表格】赤炼石+3（赠）
	tSingleBattleChallenge_Reward["Pass"][1][3]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+3赤炼石（赠）*1
	-- 赤炼石+4（赠） - 3.00%
	tSingleBattleChallenge_Reward["Pass"][1][4] = {}
	tSingleBattleChallenge_Reward["Pass"][1][4]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][4]["ItemChance"] = 300
	tSingleBattleChallenge_Reward["Pass"][1][4]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][4]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][4]["RewardItem"][1]["Id"] = 730004 -- +4赤炼石[730004][属性:0][叠加:0][金币:0], 【表格】赤炼石+4（赠）
	tSingleBattleChallenge_Reward["Pass"][1][4]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+4赤炼石（赠）*1
	-- 赤炼石+5（赠） - 1.00%
	tSingleBattleChallenge_Reward["Pass"][1][5] = {}
	tSingleBattleChallenge_Reward["Pass"][1][5]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][5]["ItemChance"] = 100
	tSingleBattleChallenge_Reward["Pass"][1][5]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][5]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][5]["RewardItem"][1]["Id"] = 730005 -- +5赤炼石[730005][属性:0][叠加:0][金币:0], 【表格】赤炼石+5（赠）
	tSingleBattleChallenge_Reward["Pass"][1][5]["RewardItem"][1]["Attr"] = "0 1 3 10080 1" -- 7天时效(激活)的+5赤炼石（赠）*1
			-- 【动态掩码（53654, data0）】全服限量:（10）, 超限给编号（4）-
	tSingleBattleChallenge_Reward["Pass"][1][5]["GlobalId"] = 53654
	tSingleBattleChallenge_Reward["Pass"][1][5]["Pos"] = 0
	tSingleBattleChallenge_Reward["Pass"][1][5]["MaxData"] = 10
	tSingleBattleChallenge_Reward["Pass"][1][5]["FullIndex"] = 4
	-- 明亮星陨石 - 10.00%
	tSingleBattleChallenge_Reward["Pass"][1][6] = {}
	tSingleBattleChallenge_Reward["Pass"][1][6]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][6]["ItemChance"] = 1000
	tSingleBattleChallenge_Reward["Pass"][1][6]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][6]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][6]["RewardItem"][1]["Id"] = 3009001 -- 明亮星陨石[3009001][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSingleBattleChallenge_Reward["Pass"][1][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的明亮星陨石*1
	-- 明亮星陨石 - 1.00%
	tSingleBattleChallenge_Reward["Pass"][1][7] = {}
	tSingleBattleChallenge_Reward["Pass"][1][7]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][7]["ItemChance"] = 100
	tSingleBattleChallenge_Reward["Pass"][1][7]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][7]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][7]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】明亮星陨石
	tSingleBattleChallenge_Reward["Pass"][1][7]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1
	-- 万能神纹精粹（赠） - 10.00%
	tSingleBattleChallenge_Reward["Pass"][1][8] = {}
	tSingleBattleChallenge_Reward["Pass"][1][8]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][8]["ItemChance"] = 1000
	tSingleBattleChallenge_Reward["Pass"][1][8]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][8]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][8]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）
	tSingleBattleChallenge_Reward["Pass"][1][8]["RewardItem"][1]["Attr"] = "0 10 3" -- 万能神纹精粹（赠）*10
	-- 500点修为值 - 10.00%
	tSingleBattleChallenge_Reward["Pass"][1][9] = {}
	tSingleBattleChallenge_Reward["Pass"][1][9]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][9]["ItemChance"] = 1000
	tSingleBattleChallenge_Reward["Pass"][1][9]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][9]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][9]["RewardItem"][1]["Id"] = 3311336 -- 500修为值包[3311336][属性:9][叠加:10000][金币:0], 【表格】500点修为值
	tSingleBattleChallenge_Reward["Pass"][1][9]["RewardItem"][1]["Attr"] = "0 1" -- 500修为值包*1
	-- 500点修行值 - 10.00%
	tSingleBattleChallenge_Reward["Pass"][1][10] = {}
	tSingleBattleChallenge_Reward["Pass"][1][10]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][10]["ItemChance"] = 1000
	tSingleBattleChallenge_Reward["Pass"][1][10]["RewardCultivation"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][10]["RewardCultivation"]["Value"] = 500 -- 修行值, 【需求】500点修行值
	-- 300点气力值 - 10.00%
	tSingleBattleChallenge_Reward["Pass"][1][11] = {}
	tSingleBattleChallenge_Reward["Pass"][1][11]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][11]["ItemChance"] = 1000
	tSingleBattleChallenge_Reward["Pass"][1][11]["RewardStrengthValue"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][11]["RewardStrengthValue"]["Value"] = 300 -- 气力值, 【需求】300点气力值
	-- 人参果 - 12.50%
	tSingleBattleChallenge_Reward["Pass"][1][12] = {}
	tSingleBattleChallenge_Reward["Pass"][1][12]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][12]["ItemChance"] = 1250
	tSingleBattleChallenge_Reward["Pass"][1][12]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][12]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][12]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tSingleBattleChallenge_Reward["Pass"][1][12]["RewardItem"][1]["Attr"] = "0 3" -- 人参果*3
	-- 龙鳞果 - 12.50%
	tSingleBattleChallenge_Reward["Pass"][1][13] = {}
	tSingleBattleChallenge_Reward["Pass"][1][13]["RandomItemChanceType"] = 2
	tSingleBattleChallenge_Reward["Pass"][1][13]["ItemChance"] = 1250
	tSingleBattleChallenge_Reward["Pass"][1][13]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Pass"][1][13]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Pass"][1][13]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果
	tSingleBattleChallenge_Reward["Pass"][1][13]["RewardItem"][1]["Attr"] = "0 1" -- 龙鳞果*1

	tSingleBattleChallenge_Reward["Phase"] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][1]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][1]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][1]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][1]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][1]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][1]["RewardItem"][1]["Id"] = 4030901 -- 杀破狼(+1)[4030901][属性:8][叠加:0][金币:0], 【表格】杀破狼+1（赠）
	tSingleBattleChallenge_Reward["Phase"][1]["RewardItem"][1]["Attr"] = "0 1 3" -- 杀破狼(+1)（赠）*1

	tSingleBattleChallenge_Reward["Phase"][2] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][2]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][2]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][2]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][2]["RewardStrengthValue"] = {}
	tSingleBattleChallenge_Reward["Phase"][2]["RewardStrengthValue"]["Value"] = 1000 -- 气力值, 【需求】1000点气力值

	tSingleBattleChallenge_Reward["Phase"][3] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][3]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][3]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][3]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][3]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][3]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][3]["RewardItem"][1]["Id"] = 3009100 -- 人参果[3009100][属性:9][叠加:99][金币:0], 【表格】人参果*10
	tSingleBattleChallenge_Reward["Phase"][3]["RewardItem"][1]["Attr"] = "0 10" -- 人参果*10

	tSingleBattleChallenge_Reward["Phase"][4] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][4]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][4]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][4]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][4]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][4]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][4]["RewardItem"][1]["Id"] = 3311337 -- 3000修为值包[3311337][属性:9][叠加:10000][金币:0], 【表格】3000修为值包
	tSingleBattleChallenge_Reward["Phase"][4]["RewardItem"][1]["Attr"] = "0 1" -- 3000修为值包*1

	tSingleBattleChallenge_Reward["Phase"][5] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][5]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][5]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][5]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][5]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][5]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][5]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*100
	tSingleBattleChallenge_Reward["Phase"][5]["RewardItem"][1]["Attr"] = "0 100 3" -- 万能神纹精粹（赠）*100

	tSingleBattleChallenge_Reward["Phase"][6] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][6]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][6]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][6]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][6]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][6]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][6]["RewardItem"][1]["Id"] = 3009002 -- 晶莹星陨石[3009002][属性:9][叠加:0][金币:0], 【表格】晶莹星陨石
	tSingleBattleChallenge_Reward["Phase"][6]["RewardItem"][1]["Attr"] = "0 1 0 2880 1" -- 2天时效(激活)的晶莹星陨石*1

	tSingleBattleChallenge_Reward["Phase"][7] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][7]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][7]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][7]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][7]["RewardStrengthValue"] = {}
	tSingleBattleChallenge_Reward["Phase"][7]["RewardStrengthValue"]["Value"] = 4000 -- 气力值, 【需求】4000气力值

	tSingleBattleChallenge_Reward["Phase"][8] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][8]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][8]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][8]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][8]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][8]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][8]["RewardItem"][1]["Id"] = 3320471 -- 8000修为值包[3320471][属性:9][叠加:0][金币:0], 【表格】8000修为值包
	tSingleBattleChallenge_Reward["Phase"][8]["RewardItem"][1]["Attr"] = "0 1" -- 8000修为值包*1

	tSingleBattleChallenge_Reward["Phase"][9] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][9]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][9]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][9]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][9]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][9]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][9]["RewardItem"][1]["Id"] = 4060001 -- 万能神纹精粹[4060001][属性:9][叠加:10000][金币:0], 【表格】万能神纹精粹（赠）*150
	tSingleBattleChallenge_Reward["Phase"][9]["RewardItem"][1]["Attr"] = "0 150 3" -- 万能神纹精粹（赠）*150（[错误]物品数量超100个）

	tSingleBattleChallenge_Reward["Phase"][10] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][10]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][10]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][10]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][10]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][10]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][10]["RewardItem"][1]["Id"] = 3009101 -- 龙鳞果[3009101][属性:9][叠加:99][金币:0], 【表格】龙鳞果*15
	tSingleBattleChallenge_Reward["Phase"][10]["RewardItem"][1]["Attr"] = "0 15" -- 龙鳞果*15（[错误]物品数量超10个）

	tSingleBattleChallenge_Reward["Phase"][11] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][11]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][11]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][11]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][11]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][11]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][11]["RewardItem"][1]["Id"] = 3009102 -- 辉月果[3009102][属性:9][叠加:99][金币:0], 【表格】辉月果*10
	tSingleBattleChallenge_Reward["Phase"][11]["RewardItem"][1]["Attr"] = "0 10" -- 辉月果*10

	tSingleBattleChallenge_Reward["Phase"][12] = {}
	-- ===领取阶段奖励
	-- ===索引: tSingleBattleChallenge_Reward["Phase"][12]
	-- ===LogStep: 1[3]
	tSingleBattleChallenge_Reward["Phase"][12]["LogId"] = 12001599
	tSingleBattleChallenge_Reward["Phase"][12]["LogStep"] = "1[3]"
	tSingleBattleChallenge_Reward["Phase"][12]["RewardItem"] = {}
	tSingleBattleChallenge_Reward["Phase"][12]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward["Phase"][12]["RewardItem"][1]["Id"] = 3319013 -- (+1)稀有黄色神纹随机包(赠)[3319013][属性:9][叠加:0][金币:0], 【表格】稀有黄色神纹随机包
	tSingleBattleChallenge_Reward["Phase"][12]["RewardItem"][1]["Attr"] = "0 1" -- (+1)稀有黄色神纹随机包(赠)*1

	--30天怀旧武器可选包
	tSingleBattleChallenge_Reward[3309661] = {}
	tSingleBattleChallenge_Reward[3309661][1] = {}
	tSingleBattleChallenge_Reward[3309661][1]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][1]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][1]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][1]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][1]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][1]["RewardItem"][1]["Id"] = 370008
	tSingleBattleChallenge_Reward[3309661][1]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][1]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][1]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][1]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][2] = {}
	tSingleBattleChallenge_Reward[3309661][2]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][2]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][2]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][2]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][2]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][2]["RewardItem"][1]["Id"] = 350022
	tSingleBattleChallenge_Reward[3309661][2]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][2]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][2]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][2]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][3] = {}
	tSingleBattleChallenge_Reward[3309661][3]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][3]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][3]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][3]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][3]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][3]["RewardItem"][1]["Id"] = 380010
	tSingleBattleChallenge_Reward[3309661][3]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][3]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][3]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][3]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][4] = {}
	tSingleBattleChallenge_Reward[3309661][4]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][4]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][4]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][4]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][4]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][4]["RewardItem"][1]["Id"] = 360220
	tSingleBattleChallenge_Reward[3309661][4]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][4]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][4]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][4]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][4]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][5] = {}
	tSingleBattleChallenge_Reward[3309661][5]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][5]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][5]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][5]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][5]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][5]["RewardItem"][1]["Id"] = 360221
	tSingleBattleChallenge_Reward[3309661][5]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][5]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][5]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][5]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][5]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][6] = {}
	tSingleBattleChallenge_Reward[3309661][6]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][6]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][6]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][6]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][6]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][6]["RewardItem"][1]["Id"] = 360222
	tSingleBattleChallenge_Reward[3309661][6]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][6]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][6]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][6]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][6]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][7] = {}
	tSingleBattleChallenge_Reward[3309661][7]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][7]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][7]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][7]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][7]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][7]["RewardItem"][1]["Id"] = 360223
	tSingleBattleChallenge_Reward[3309661][7]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][7]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][7]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][7]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][7]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][8] = {}
	tSingleBattleChallenge_Reward[3309661][8]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][8]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][8]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][8]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][8]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][8]["RewardItem"][1]["Id"] = 360224
	tSingleBattleChallenge_Reward[3309661][8]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][8]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][8]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][8]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][8]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][9] = {}
	tSingleBattleChallenge_Reward[3309661][9]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][9]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][9]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][9]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][9]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][9]["RewardItem"][1]["Id"] = 360225
	tSingleBattleChallenge_Reward[3309661][9]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][9]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][9]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][9]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][9]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][10] = {}
	tSingleBattleChallenge_Reward[3309661][10]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][10]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][10]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][10]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][10]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][10]["RewardItem"][1]["Id"] = 360226
	tSingleBattleChallenge_Reward[3309661][10]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][10]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][10]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][10]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][10]["LogId"] =12001090
	tSingleBattleChallenge_Reward[3309661][11] = {}
	tSingleBattleChallenge_Reward[3309661][11]["DeleteItem"] = {}
	tSingleBattleChallenge_Reward[3309661][11]["DeleteItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][11]["DeleteItem"][1]["Id"] = 3309661
	tSingleBattleChallenge_Reward[3309661][11]["RewardItem"] = {}
	tSingleBattleChallenge_Reward[3309661][11]["RewardItem"][1] = {}
	tSingleBattleChallenge_Reward[3309661][11]["RewardItem"][1]["Id"] = 360227
	tSingleBattleChallenge_Reward[3309661][11]["RewardItem"][1]["Attr"] = "0 1 3 43200 1 0 0 1"
	tSingleBattleChallenge_Reward[3309661][11]["RewardEffect"] = {}
	tSingleBattleChallenge_Reward[3309661][11]["RewardEffect"]["SzObj"] = "self"
	tSingleBattleChallenge_Reward[3309661][11]["RewardEffect"]["Effect"] = "zf2-e128"
	tSingleBattleChallenge_Reward[3309661][11]["LogId"] =12001090
--------------------------------------------逻辑部分配置--------------------------------------------
--获取玩家掩码
function SingleBattleChallenge_GetStcValue(nIndex, nNowUserId)
	if tSingleBattleChallenge_Stc[nIndex] == nil then
		return 0
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSingleBattleChallenge_Stc[nIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nIndex]["Type"]
	local nTimeType = tSingleBattleChallenge_Stc[nIndex]["TimeType"]
	local nDelay = tSingleBattleChallenge_Stc[nIndex]["Delay"]
	
	--是否清零
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	return Get_UserStatisticValue(nEvent,nType,nUserId)
end

--设置玩家掩码
function SingleBattleChallenge_SetStcValue(nIndex, sMode, nData, nNowUserId)
	if tSingleBattleChallenge_Stc[nIndex] == nil then
		return false
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSingleBattleChallenge_Stc[nIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nIndex]["Type"]
	local nTimeType = tSingleBattleChallenge_Stc[nIndex]["TimeType"]
	local nDelay = tSingleBattleChallenge_Stc[nIndex]["Delay"]
	
	--是否清零
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	--设置掩码
	if sMode == "Set" then
		if Task_SetStatistic(nEvent,nType,nData,1,nUserId) then
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			return true
		else
			return false
		end
	--增加掩码
	elseif sMode == "Add" then
		if Task_AddStatistic(nEvent,nType,nData,1,nUserId) then
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
			return true
		else
			return false
		end
	else
		return false
	end
end

--获取玩家掩码（层数专用）
function SingleBattleChallenge_LevelGetStcValue(nLevel, nNowUserId)
	local nLevelNum = tSingleBattleChallenge_Cont["LevelNum"]
	--计算当前层数所对应的掩码
	local nIndex = math.ceil(nLevel / nLevelNum)
	
	if tSingleBattleChallenge_Stc[nIndex] == nil then
		return 0
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSingleBattleChallenge_Stc[nIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nIndex]["Type"]
	local nTimeType = tSingleBattleChallenge_Stc[nIndex]["TimeType"]
	local nDelay = tSingleBattleChallenge_Stc[nIndex]["Delay"]
	
	--是否清零
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	--总数据
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nDataIndex = nLevel % nLevelNum
	local nMultiple = tSingleBattleChallenge_Cont["Multiple"]
	
	--数据分离
	--最后3位数
	if nDataIndex == 0 then
		return nData % nMultiple
	--前3位数
	elseif nDataIndex == 1 then
		return math.floor(nData / nMultiple / nMultiple)
	--中间3位数
	elseif nDataIndex == 2 then
		return math.floor(nData / nMultiple) % nMultiple
	else
		return 0
	end
end

--设置玩家掩码（层数专用）
function SingleBattleChallenge_LevelSetStcValue(nLevel, nData, nNowUserId)
	local nLevelNum = tSingleBattleChallenge_Cont["LevelNum"]
	--计算当前层数所对应的掩码
	local nIndex = math.ceil(nLevel / nLevelNum)
	
	if tSingleBattleChallenge_Stc[nIndex] == nil then
		return false
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nEvent = tSingleBattleChallenge_Stc[nIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nIndex]["Type"]
	local nTimeType = tSingleBattleChallenge_Stc[nIndex]["TimeType"]
	local nDelay = tSingleBattleChallenge_Stc[nIndex]["Delay"]
	
	--是否清零
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	--总数据
	local nTotalData = Get_UserStatisticValue(nEvent,nType,nUserId)
	local nDataIndex = nLevel % nLevelNum
	local nMultiple = tSingleBattleChallenge_Cont["Multiple"]
	
	--设置的数值范围不对
	if nData < 0 or nData >= nMultiple then
		return false
	end
	
	--计算总数据
	--最后3位数
	if nDataIndex == 0 then
		nTotalData = math.floor(nTotalData / nMultiple) * nMultiple + nData
	--前3位数
	elseif nDataIndex == 1 then
		nTotalData = (nData * nMultiple * nMultiple) + (nTotalData % (nMultiple * nMultiple))
	--中间3位数
	elseif nDataIndex == 2 then
		nTotalData = math.floor(nTotalData / nMultiple / nMultiple) * nMultiple * nMultiple + (nData * nMultiple) + (nTotalData % nMultiple)
	end
	
	if Task_SetStatistic(nEvent,nType,nTotalData,1,nUserId) then
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--二进制掩码设置
function SingleBattleChallenge_SetParseNumber(nIndex, nData, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tSingleBattleChallenge_ParseNumber[nData]
	
	local nEvent = tSingleBattleChallenge_Stc[nIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nIndex]["Type"]
	local nDelay = tSingleBattleChallenge_Stc[nIndex]["Delay"]
	local nTimeType = tSingleBattleChallenge_Stc[nIndex]["TimeType"]
	
	--置零，打时间戳
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	if Task_AddStatistic(nEvent,nType,nParse,1,nUserId) then
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return true
	else
		return false
	end
end

--二进制掩码判断
function SingleBattleChallenge_IsGetParseNumber(nIndex, nData, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nParse = tSingleBattleChallenge_ParseNumber[nData]
	
	local nEvent = tSingleBattleChallenge_Stc[nIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nIndex]["Type"]
	local nDelay = tSingleBattleChallenge_Stc[nIndex]["Delay"]
	local nTimeType = tSingleBattleChallenge_Stc[nIndex]["TimeType"]
	
	--置零，打时间戳
	if nTimeType ~= nil and nDelay ~= nil then
		Task_StcReset(nEvent,nType,nUserId,nTimeType,nDelay)
	end
	
	local nNowData = Get_UserStatisticValue(nEvent,nType,nUserId)
	
	if Sys_ParseNumbersContain(nParse,nNowData) then
		return true
	else
		return false
	end
end

--获取玩家职业索引
function SingleBattleChallenge_GetPro(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nPro = Get_NewUserProfession(nUserId)
	
	return math.floor(nPro / 1000)
end

--等级判断
function SingleBattleChallenge_ChkLevel(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nLevel = tSingleBattleChallenge_Cont["Level"]
	local nMetempsychosis = tSingleBattleChallenge_Cont["Metempsychosis"]
	
	--等级判断
	if User_JudgeLevelAndMetempsychosis(nLevel,nMetempsychosis,nUserId) then
		return true
	else
		return false
	end
end

--玩家位置判断（是否在副本）
function SingleBattleChallenge_ChkInstance(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	local nMapDoc = Get_MapDoc(nMapId)
	
	if nMapDoc == tSingleBattleChallenge_Cont["MapDoc"] then
		return true
	else
		return false
	end
end

--获取活动时间
function SingleBattleChallenge_GetActivityTime(sActivityTime)
	local sBeginYear,sBeginMonth,sBeginDay,sBeginHour,sBeginMinute,sEndYear,sEndMonth,sEndDay,sEndHour,sEndMinute = CommonFunc_AnalysisActivityTime(sActivityTime)
	
	local sTextTime = string.format(tSingleBattleChallenge_Text["ActivityTime"], sBeginMonth, sBeginDay, sEndMonth, sEndDay)
	
	return sTextTime
end

--刷新NPC
function SingleBattleChallenge_RefreshNpc(nIndex, nUserId)
	local nMapId = Get_UserMapId(nUserId)
	local sName = tSingleBattleChallenge_Text["NpcName"][nIndex]
	local nSort = tSingleBattleChallenge_Cont["DynNpc"][nIndex]["Sort"]
	local nType = tSingleBattleChallenge_Cont["DynNpc"][nIndex]["Type"]
	local nLookFace = tSingleBattleChallenge_Cont["DynNpc"][nIndex]["LookFace"]
	local nAction = tSingleBattleChallenge_Cont["DynNpc"][nIndex]["Action"]
	local nPosX = tSingleBattleChallenge_Cont["DynNpc"][nIndex]["PosX"]
	local nPosY = tSingleBattleChallenge_Cont["DynNpc"][nIndex]["PosY"]
	
	return Npc_CreateDynaNpc(sName, nType ,nSort ,nLookFace,0,0,nMapId, nPosX,nPosY,0,0,0,nAction)
end

--职业判断
function SingleBattleChallenge_ProClear(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--获取当前职业索引
	local nProIndex = SingleBattleChallenge_GetPro(nUserId)
	
	--道士按火道计算
	if nProIndex == tSingleBattleChallenge_Cont["TaoistPro"][1] then
		nProIndex = tSingleBattleChallenge_Cont["TaoistPro"][3]
	end
	
	--时间戳掩码标识
	local nStcTimeIndex = tSingleBattleChallenge_Cont["StcTimeIndex"]
	local nData = SingleBattleChallenge_GetStcValue(nStcTimeIndex, nUserId)
	
	--记录当前职业索引
	if nData == 0 then
		SingleBattleChallenge_SetStcValue(nStcTimeIndex, "Set", nProIndex, nUserId)
		return
	end
	
	--当前职业索引和记录的索引一样，就不需要操作
	if nData == nProIndex then
		return
	end
	
	--记录当前职业索引
	SingleBattleChallenge_SetStcValue(nStcTimeIndex, "Set", nProIndex, nUserId)
	
	--是否通关
	local bFlag = true
	
	--不一样，需要重置玩家数据，防止霸榜
	for i = 1, #tSingleBattleChallenge_Cont["LevelBattle"] do
		if SingleBattleChallenge_LevelGetStcValue(i, nUserId) > 0 then
			--将时间清零
			SingleBattleChallenge_LevelSetStcValue(i, 0, nUserId)
		else
			bFlag = false
		end
	end
	
	--没有通关，则不进行排行榜操作
	if not bFlag then
		return
	end
	
	--排行榜索引
	local nIndex = tSingleBattleChallenge_Cont["RankIndex"] + nData
	
	--更新排行榜，清除玩家数据
	RankingFunc_Remove(nIndex,nUserId)
end

--进入护龙山庄闯关
function SingleBattleChallenge_Into(nComfirm)
	local nNpcId = Get_NpcId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	
	--组队人数
	local nTeamNum = Get_UserTeamNumbers(nUserId)
	
	--组队判断，组队不能进
	if nTeamNum > 1 then
		Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["NoInto"],nil,nil,nUserId)
		return
	end
	
	local nTimesIndex = tSingleBattleChallenge_Cont["TimesIndex"]
	local nLimit = tSingleBattleChallenge_Stc[nTimesIndex]["Limit"]
	
	--挑战次数判断
	if SingleBattleChallenge_GetStcValue(nTimesIndex, nUserId) >= nLimit then
		local nNeedEMoney = tSingleBattleChallenge_Cont["EMoneyChallenge"]
		
		--天石判断
		if Get_UserEMoney(nUserId) < nNeedEMoney then
			Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
			return
		end
		
		local nComfirmIndex = tSingleBattleChallenge_Cont["ComfirmIndex"]
		
		--判断是否需要二次确认
		if SingleBattleChallenge_GetStcValue(nComfirmIndex, nUserId) <= 0 and nComfirm == nil then
			--进入二次确认
			LinkNpcGossipFunc_New(nNpcId, "2-3")
			return
		end
		
		--扣除天石
		if not User_AddEMoneyAndLog(-nNeedEMoney,tSingleBattleChallenge_ELog["BuyTimes"],nUserId) then
			Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["NoEMoney"],nil,nil,nUserId)
			return
		end
	end
	
	local nInstanceType = tSingleBattleChallenge_Cont["InstanceType"]
	
	--进入副本
	if User_EnterInstance(nInstanceType,0,0,0,nUserId) then
		--职业判断
		SingleBattleChallenge_ProClear(nUserId)
		
		--刷新古三通
		SingleBattleChallenge_RefreshNpc(1,nUserId)
		--刷新上官海棠
		SingleBattleChallenge_RefreshNpc(2,nUserId)
		
		Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["IntoMap"],nil,nil,nUserId)
	end
end

--屏蔽二次确认
function SingleBattleChallenge_ShieldConfirm()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	local nComfirmIndex = tSingleBattleChallenge_Cont["ComfirmIndex"]
	
	--设置二次确认掩码
	SingleBattleChallenge_SetStcValue(nComfirmIndex, "Set", 1, nUserId)
	
	LinkNpcGossipFunc_New(nNpcId, "1")
end

--上线重置二次确认掩码
function SingleBattleChallenge_Login()
	--活动时间判断
	if not Sys_ChkFullTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		return
	end
	
	local nUserId = Get_UserId()
	
	local nComfirmIndex = tSingleBattleChallenge_Cont["ComfirmIndex"]
	
	--设置二次确认掩码
	SingleBattleChallenge_SetStcValue(nComfirmIndex, "Set", 0, nUserId)
end

--领取阶段奖励对白判断 
function SingleBattleChallenge_GetPhaseAwardChk()
	local nNpcId = Get_NpcId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	--阶段性奖励掩码
	local nPhaseIndex = tSingleBattleChallenge_Cont["PhaseIndex"]
	local nUserId = Get_UserId()
	
	for i = 1, 12 do
		--判断奖励是否已领取
		if SingleBattleChallenge_IsGetParseNumber(nPhaseIndex, i, nUserId) then
			tNpcGossip[nNpcId]["Text21"..(3 + i)] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text21"..(3 + i)], tSingleBattleChallenge_Text["Already"])
		else
			tNpcGossip[nNpcId]["Text21"..(3 + i)] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text21"..(3 + i)], "")
		end
	end
	
	--获取玩家最高挑战层数
	local nTopLevel = SingleBattleChallenge_GetTopLevel(nUserId)
	--可领取的阶段
	local nLevelParse = math.floor(nTopLevel / 3)
	
	--判断是否有可领取的奖励
	local bFlag = false
	
	if nTopLevel > 0 and nLevelParse > 0 then
		for i = 1, nLevelParse do
			if not SingleBattleChallenge_IsGetParseNumber(nPhaseIndex, i, nUserId) then
				bFlag = true
				break
			end
		end
	end
	
	if bFlag then
		tNpcGossip[nNpcId]["tOption2-1"] = {211}
	else
		tNpcGossip[nNpcId]["tOption2-1"] = {212}
	end
	
	if nTopLevel == 0 then
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116}
	else
		tNpcGossip[nNpcId]["Text2117"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text2117"], nTopLevel)
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116,2117}
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end

--领取阶段奖励
function SingleBattleChallenge_GetPhaseAward()
	local nUserId = Get_UserId()
	
	--获取玩家最高挑战层数
	local nTopLevel = SingleBattleChallenge_GetTopLevel(nUserId)
	--可领取的阶段
	local nLevelParse = math.floor(nTopLevel / 3)
	
	--判断是否有可领取的奖励
	local bFlag = false
	
	--阶段性奖励掩码
	local nPhaseIndex = tSingleBattleChallenge_Cont["PhaseIndex"]
	
	--奖励索引表
	local tAwardIndex = {}
	
	if nTopLevel > 0 and nLevelParse > 0 then
		for i = 1, nLevelParse do
			if not SingleBattleChallenge_IsGetParseNumber(nPhaseIndex, i, nUserId) then
				bFlag = true
				
				table.insert(tAwardIndex, i)
			end
		end
	end
	
	--没有课领取的奖励
	if not bFlag then
		return
	end
	
	--背包空间判断
	local nSpace = 0
	
	for k,v in pairs(tAwardIndex) do
		nSpace = nSpace + RewardTemplate_GetRewardSpace(tSingleBattleChallenge_Reward["Phase"][v],nUserId)
	end
	
	--背包满
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["AwardBackFull"],nil,nil,nUserId)
		return
	end
	
	--打掩码给奖励
	for k,v in pairs(tAwardIndex) do
		--设置掩码
		if SingleBattleChallenge_SetParseNumber(nPhaseIndex, v, nUserId) then
			RewardTemplate_UseItemAndMsg(tSingleBattleChallenge_Reward["Phase"][v],nUserId)
		end
	end
end

--全区全服竞速榜
function SingleBattleChallenge_LinkWeb()
	local nNpcId = Get_NpcId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	local sPszParam = tSingleBattleChallenge_Cont["Web"]
	
	User_SendWebDialog(sPszParam,nUserId)
end

--打开兑换商店
function SingleBattleChallenge_ExchangeShop()
	local nNpcId = Get_NpcId()
	
	--活动时间判断
	if not Sys_ChkFullTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId, "1-2")
		return
	end
	
	local nUserId = Get_UserId()
	
	--打开兑换商店
	User_OpenExchangeShop(nNpcId,nUserId)
end

--购买药水
function SingleBattleChallenge_BuyMedicine(nNpcId, nItemId)
	local nUserId = Get_UserId()
	
	--需要在副本内
	if not SingleBattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	--记录选择的药水的类型
	tSingleBattleChallenge_Record["Medicine"][nUserId] = {}
	tSingleBattleChallenge_Record["Medicine"][nUserId]["Id"] = nItemId
	
	tNpcGossip[nNpcId]["Text211"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text211"], Get_ItemtypeName(nItemId))
	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
	
end

--购买药水选项触发
function SingleBattleChallenge_BuyMedicineOption(nNpcId, nNum)
	local nUserId = Get_UserId()
	
	--需要在副本内
	if not SingleBattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	if tSingleBattleChallenge_Record["Medicine"][nUserId] == nil then
		return
	end
	
	local nItemId = tSingleBattleChallenge_Record["Medicine"][nUserId]["Id"]
	
	local sType = tSingleBattleChallenge_Text["EMoney"]
	local nCost = tSingleBattleChallenge_Cont["EMoney"] * nNum
	
	--记录选择的药水的类型和数量
	tSingleBattleChallenge_Record["Medicine"][nUserId]["Num"] = nNum
	
	tNpcGossip[nNpcId]["Text221"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text221"], nCost..sType, nNum, Get_ItemtypeName(nItemId))
	tNpcGossip[nNpcId]["Option221"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Option221"], nCost..sType)
	--弹确认对白
	LinkNpcGossipFunc_New(nNpcId, "2-2")
end

--购买药水确认
function SingleBattleChallenge_BuyMedicineConfirm()
	local nUserId = Get_UserId()
	
	--需要在副本内
	if not SingleBattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	if tSingleBattleChallenge_Record["Medicine"][nUserId] == nil then
		return
	end
	
	local nItemId = tSingleBattleChallenge_Record["Medicine"][nUserId]["Id"]
	local nNum = tSingleBattleChallenge_Record["Medicine"][nUserId]["Num"]
	
	--需要花费的钱
	local nCost = tSingleBattleChallenge_Cont["EMoney"] * nNum
	
	--判断数量是否满足
	if Get_UserEMoney(nUserId) < nCost then
		Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["BuyMedicineNoCPs"],nil,nil,nUserId)
		return
	end
	
	local tAward = CommonFunc_Copy(tSingleBattleChallenge_Reward["BuyMedicine"])
	
	tAward["RewardItem"][1]["Id"] = nItemId
	tAward["RewardItem"][1]["Attr"] = "0 "..nNum
	
	--背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tAward,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["BuyMedicineBackFull"],nil,nil,nUserId)
		return
	end
	
	--扣除相应天石
	local sEmoneyBuyLog = tSingleBattleChallenge_ELog["Buy"]
	
	if not User_AddEMoneyAndLog(-nCost,sEmoneyBuyLog,nUserId) then
		Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["BuyMedicineNoCPs"],nil,nil,nUserId)
		return
	end
	
	RewardTemplate_UseItemAndMsg(tAward,nUserId)
end

--清除玩家身上状态
function SingleBattleChallenge_DelStatus(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	for k,v in pairs(tSingleBattleChallenge_Cont["Status"]) do
		if User_ChkRoleStatus(v,nUserId) then
			User_DelRoleStatus(v,nUserId)
		end
	end
end

--获取玩家最高挑战层数
function SingleBattleChallenge_GetTopLevel(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--当前通关的最高层数
	local nTopLevel = 0
	
	for i = 1, #tSingleBattleChallenge_Cont["LevelBattle"] do
		--当前层数有时间记录，说明当前层已经通过
		if SingleBattleChallenge_LevelGetStcValue(i, nUserId) > 0 then
			nTopLevel = i
		else
			break
		end
	end
	
	--当前挑战层数
	local nNowLevel = nTopLevel + 1
	
	--如果达到最后一层
	if nNowLevel >= #tSingleBattleChallenge_Cont["LevelBattle"] then
		nNowLevel = #tSingleBattleChallenge_Cont["LevelBattle"]
	end
	
	--计算所用的时间
	local nTotalTime = 0
	
	if nTopLevel > 0 then
		for i = 1, nTopLevel do
			nTotalTime = nTotalTime + SingleBattleChallenge_LevelGetStcValue(i, nUserId)
		end
	end
	
	return nTopLevel, nNowLevel, nTotalTime
end

--动态NPC接入
function SingleBattleChallenge_LinkNpc(nNpcId)
	local nUserId = Get_UserId()
	
	--古三通
	if nNpcId == 24896 then
		--当前通关的最高层数、当前挑战层数
		local nTopLevel, nLevel = SingleBattleChallenge_GetTopLevel(nUserId)
		
		--挑战限时
		local nTime = tSingleBattleChallenge_Cont["Time"][nLevel]
		
		--是否道士
		local nPro = SingleBattleChallenge_GetPro(nUserId)
		local bTaoist = false
		
		for k,v in pairs(tSingleBattleChallenge_Cont["TaoistPro"]) do
			if nPro == v then
				bTaoist = true
				break
			end
		end
		
		if bTaoist then
			nTime = tSingleBattleChallenge_Cont["TaoistTime"][nLevel]
		end
		
		--战力
		local nBattle = tSingleBattleChallenge_Cont["LevelBattle"][nLevel]
		
		--怪物名字
		local sMonsterName = tSingleBattleChallenge_Text["MonsterName"]
		
		tNpcGossip[nNpcId]["Text111"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text111"], nLevel, nTime)
		tNpcGossip[nNpcId]["Text113"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text113"], sMonsterName, nBattle)
		tNpcGossip[nNpcId]["Text115"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text115"], nTopLevel)
		tNpcGossip[nNpcId]["Text117"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text117"], nBattle)
		
		if nTopLevel == 0 then
			tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,116,117}
			tNpcGossip[nNpcId]["tOption1-1"] = {112}
		else
			tNpcGossip[nNpcId]["Text1-1"] = {111,112,113,114,115,116,117}
			tNpcGossip[nNpcId]["tOption1-1"] = {111,112}
		end
		
	end
	
	--护龙山庄秘宝箱
	if nNpcId == 24898 then
		if tSingleBattleChallenge_Record["Level"][nUserId] == nil then
			return
		end
		
		--当前挑战层数
		local nLevel = tSingleBattleChallenge_Record["Level"][nUserId]
		--挑战时长
		local nTime = SingleBattleChallenge_LevelGetStcValue(nLevel, nUserId)
		
		tNpcGossip[nNpcId]["Text113"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text113"], nLevel)
		tNpcGossip[nNpcId]["Text114"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text114"], nTime)
		
		local nBoxIndex = tSingleBattleChallenge_Cont["BoxIndex"]
		
		--是否已经领完奖励
		if SingleBattleChallenge_GetStcValue(nBoxIndex, nUserId) >= 2 then
			tNpcGossip[nNpcId]["tOption1-1"] = {112}
		else
			tNpcGossip[nNpcId]["tOption1-1"] = {111}
		end
	end
	
	LinkNpcGossipFunc_New(nNpcId, "1-1")
end

--判断当前地图是否存在BOSS
function SingleBattleChallenge_ChkBossExist(nMapId)
	for k,v in pairs(tSingleBattleChallenge_Cont["BossBattle"]) do
		if Get_SysTempData(1,nMapId,k) > 0 then
			return true
		end
	end
	
	return false
end

--刷新BOSS
function SingleBattleChallenge_RefreshBoss(nLevel, nUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	--判断当前地图是否有BOSS，有就不刷新
	if SingleBattleChallenge_ChkBossExist(nMapId) then
		return
	end
	
	--当前战力
	local nBattle = tSingleBattleChallenge_Cont["LevelBattle"][nLevel]
	--当前需要刷新的怪
	local nMonsterId = 0
	
	--根据战力取怪id
	for k,v in pairs(tSingleBattleChallenge_Cont["BossBattle"]) do
		if nBattle == v then
			nMonsterId = k
			break
		end
	end
	
	if nMonsterId == 0 then
		return
	end
	
	local nPosX = tSingleBattleChallenge_Cont["BossInfo"]["PosX"]
	local nPosY = tSingleBattleChallenge_Cont["BossInfo"]["PosY"]
	local nGenId = tSingleBattleChallenge_Cont["BossInfo"]["GenId"]
	
	Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
end

--选择闯关难度
function SingleBattleChallenge_ChooseLevel(nNpcId)
	local nUserId = Get_UserId()
	
	--当前通关的最高层数
	local nTopLevel, nLevel = SingleBattleChallenge_GetTopLevel(nUserId)
	
	tNpcGossip[nNpcId]["Text211"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text211"], nTopLevel)
	
	tNpcGossip[nNpcId]["tOption2-1"] = {}
	
	--判断可以挑战几层
	for i = nLevel, 1, -1 do
		--挑战时间
		local nTime = SingleBattleChallenge_LevelGetStcValue(i, nUserId)
		
		if nTime == 0 then
			tNpcGossip[nNpcId]["Option"..(210 + i)] = string.format(tSingleBattleChallenge_Text[nNpcId]["Option211"], i)
		else
			tNpcGossip[nNpcId]["Option"..(210 + i)] = string.format(tSingleBattleChallenge_Text[nNpcId]["Option212"], i, nTime)
		end
		
		tNpcGossip[nNpcId]["OptionFunc"..(210 + i)] = "SingleBattleChallenge_Begin</N>"..i
		table.insert(tNpcGossip[nNpcId]["tOption2-1"], 210 + i)
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-1", nil, 20)
end

--开始挑战
function SingleBattleChallenge_Begin(nNowLevel)
	local nUserId = Get_UserId()
	
	--不在副本
	if not SingleBattleChallenge_ChkInstance(nUserId) then
		return
	end
	--删除NPC
	if Npc_DelDynaByID() then
		--当前通关的最高层数、当前挑战层数
		local nTopLevel, nLevel = SingleBattleChallenge_GetTopLevel(nUserId)
		
		if nNowLevel ~= nil then
			nLevel = nNowLevel
		end
		
		--刷新BOSS
		SingleBattleChallenge_RefreshBoss(nLevel, nUserId)
		
		--提示
		User_TalkChannel2005(string.format(tSingleBattleChallenge_Text["Channel2005"]["Begin"], nLevel),nUserId)
		
		--出“开始挑战”光效
		User_EffectAdd("self","new_gamebegin",nUserId)
		
		--重置挑战时间的时间戳
		local nStcTimeIndex = tSingleBattleChallenge_Cont["StcTimeIndex"]
		local nEvent = tSingleBattleChallenge_Stc[nStcTimeIndex]["Event"]
		local nType = tSingleBattleChallenge_Stc[nStcTimeIndex]["Type"]
		
		if Task_ChkStatistic(nEvent,nType,nUserId) then
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		else
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
		end
		
		--获取时间戳，用来记录是不是本次挑战
		local nStcTime = Get_UserStcTimestampValue(nEvent,nType,nUserId)
		
		--倒计时结束后触发
		local sFunc = string.format("SingleBattleChallenge_Timer</N>%d", nStcTime)
		
		--挑战限时
		local nTime = tSingleBattleChallenge_Cont["Time"][nLevel]
		
		--是否道士
		local nPro = SingleBattleChallenge_GetPro(nUserId)
		local bTaoist = false
		
		for k,v in pairs(tSingleBattleChallenge_Cont["TaoistPro"]) do
			if nPro == v then
				bTaoist = true
				break
			end
		end
		
		--道士的挑战时间不一样
		if bTaoist then
			nTime = tSingleBattleChallenge_Cont["TaoistTime"][nLevel]
		end
		
		--是否水道士
		if nPro == tSingleBattleChallenge_Cont["WaterTaoist"]["ID"] then
			-- 刷新给的时间，先清除再重新给
			local nTaoistStatus = tSingleBattleChallenge_Cont["WaterTaoist"]["Status"]
			local nTaoistPower = tSingleBattleChallenge_Cont["WaterTaoist"]["Power"]
			
			if User_ChkRoleStatus(nTaoistStatus[1],nUserId) then
				User_DelRoleStatus(nTaoistStatus[1],nUserId)
			end
			User_AddRoleStatus(nTaoistStatus[1],nTaoistPower,nTime,0,0,0,0,0,0,nUserId)
			
			if User_ChkRoleStatus(nTaoistStatus[2],nUserId) then
				User_DelRoleStatus(nTaoistStatus[2],nUserId)
			end
			User_AddRoleStatus(nTaoistStatus[2],nTaoistPower,nTime,0,0,0,0,0,0,nUserId)
		end
		
		--挑战开始倒计时
		User_SetTimer(nTime,sFunc,1,nUserId)
		
		--保存当前挑战的层数
		tSingleBattleChallenge_Record["Level"][nUserId] = nLevel
		
		--打log
		Sys_SaveActionFestivalLog(string.format(tSingleBattleChallenge_Log["Begin"], nLevel),nUserId)
	end
end

--倒计时结束后触发
function SingleBattleChallenge_Timer(nStcTime, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	local nStcTimeIndex = tSingleBattleChallenge_Cont["StcTimeIndex"]
	local nEvent = tSingleBattleChallenge_Stc[nStcTimeIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nStcTimeIndex]["Type"]
	local nNowStcTime = Get_UserStcTimestampValue(nEvent,nType,nUserId)
	
	--判断是不是本次挑战，不是则直接退出不往下执行
	if nNowStcTime ~= nStcTime then
		return
	end
	
	--不在副本
	if not SingleBattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	local nMapId = Get_UserMapId(nUserId)
	
	--判断有没有BOSS，没有则说明已经通关了
	if not SingleBattleChallenge_ChkBossExist(nMapId) then
		return
	end
	
	--传送出去
	SingleBattleChallenge_BoundTrans(nUserId)
	
	Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["ChallengeFail"],nil,nil,nUserId)
end

--BOSS逻辑
function SingleBattleChallenge_KillBoss(nMonsterId)
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	-- 怪物死亡
	Monster_Death(nMonsterId,nMapId)
	
	--当前挑战的层数
	if tSingleBattleChallenge_Record["Level"][nUserId] == nil then
		return
	end
	
	--判断当前地图是否有BOSS
	if SingleBattleChallenge_ChkBossExist(nMapId) then
		return
	end
	
	local nTimesIndex = tSingleBattleChallenge_Cont["TimesIndex"]
	
	--挑战次数+1
	SingleBattleChallenge_SetStcValue(nTimesIndex, "Add", 1, nUserId)
	
	--刷新宝箱
	SingleBattleChallenge_RefreshNpc(3,nUserId)
	
	local nPosX = tSingleBattleChallenge_Cont["DynNpc"][3]["PosX"]
	local nPosY = tSingleBattleChallenge_Cont["DynNpc"][3]["PosY"]
	local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>0</N>%d", nPosX,nPosY,nMapId,nUserId)
	
	Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["ChallengeSucc"],sFunc,nil,nUserId)
	User_TalkChannel2005(tSingleBattleChallenge_Text["Channel2005"]["ChallengeSucc"],nUserId)
	
	--当前时间
	local nNowTime = os.time()
	
	--记录的时间
	local nStcTimeIndex = tSingleBattleChallenge_Cont["StcTimeIndex"]
	local nEvent = tSingleBattleChallenge_Stc[nStcTimeIndex]["Event"]
	local nType = tSingleBattleChallenge_Stc[nStcTimeIndex]["Type"]
	local nNowStcTime = Get_UserStcTimestampValue(nEvent,nType,nUserId)
	
	--计算挑战时间
	local nChallengeTime = nNowTime - nNowStcTime
	
	--挑战时间至少1秒
	if nChallengeTime <= 0 then
		nChallengeTime = 1
	end
	
	--当前挑战层数
	local nLevel = tSingleBattleChallenge_Record["Level"][nUserId]
	
	--当前层记录的时间
	local nRecordTime = SingleBattleChallenge_LevelGetStcValue(nLevel, nUserId)
	
	--如果挑战的时间比之前的少，则记录
	if nChallengeTime < nRecordTime or nRecordTime == 0 then
		SingleBattleChallenge_LevelSetStcValue(nLevel, nChallengeTime, nUserId)
		
		--获取职业索引
		local nProIndex = SingleBattleChallenge_GetPro(nUserId)
		
		--排行榜更新
		SingleBattleChallenge_RecordRank(nProIndex, nUserId)
	end
	
	local nBoxIndex = tSingleBattleChallenge_Cont["BoxIndex"]
	
	--领奖标识
	-- local nData = SingleBattleChallenge_GetStcValue(nBoxIndex, nUserId)
	
	--已经隔天或者第一次挑战
	-- if nData == 0 or nRecordTime == 0 then
		--设置领奖掩码
		SingleBattleChallenge_SetStcValue(nBoxIndex, "Set", 1, nUserId)
	-- end
	
	--打log
	Sys_SaveActionFestivalLog(string.format(tSingleBattleChallenge_Log["Succ"], nLevel),nUserId)
	
	--全服公告
	if nLevel >= tSingleBattleChallenge_Cont["BroadcastLevel"] then
		local sContent = ""
		local sUserName = Get_UserName(nUserId)
		
		if nLevel == #tSingleBattleChallenge_Cont["LevelBattle"] then
			sContent = string.format(tSingleBattleChallenge_Text["Broadcast"]["PassTop"], sUserName, nChallengeTime)
		else
			sContent = string.format(tSingleBattleChallenge_Text["Broadcast"]["Pass"], sUserName, nLevel, nChallengeTime)
		end
		
		Sys_SystemBroadcast(sContent)
	end
end

--宝箱奖励领取
function SingleBattleChallenge_GetBoxAward()
	local nUserId = Get_UserId()
	
	--当前挑战层数
	if tSingleBattleChallenge_Record["Level"][nUserId] == nil then
		return
	end
	
	local nBoxIndex = tSingleBattleChallenge_Cont["BoxIndex"]
	local nData = SingleBattleChallenge_GetStcValue(nBoxIndex, nUserId)
	
	--不能领奖
	if nData ~= 1 then
		return
	end
	
	--当前挑战层数
	local nLevel = tSingleBattleChallenge_Record["Level"][nUserId]
	--战力
	local nBattle = tSingleBattleChallenge_Cont["LevelBattle"][nLevel]
	
	--复制奖励表
	local tAward = CommonFunc_Copy(tSingleBattleChallenge_Reward["Pass"])
	
	--计算可以拿到多少神侯令，根据战力领
	tAward[1][1]["RewardItem"][1]["Attr"] = "0 "..nBattle
	
	--背包空间判断
	local nSpace = RewardTemplate_GetRandomSpace(tAward,1,nUserId)
	
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		Sys_MsgBox(tSingleBattleChallenge_Text["MsgBox"]["BoxBackFull"],nil,nil,nUserId)
		return
	end
	
	local nBoxIndex = tSingleBattleChallenge_Cont["BoxIndex"]
	
	--掩码设置
	if SingleBattleChallenge_SetStcValue(nBoxIndex, "Set", 2, nUserId) then
		--给奖
		local tNewReward,sRewardStr = RewardTemplate_NewRandom(tAward,1,nUserId)
		
		local tAttr = Sys_Split(sRewardStr,",")
		
		Sys_MsgBox(string.format(tSingleBattleChallenge_Text["MsgBox"]["BoxSucc"], tAttr[2], tAttr[1]),"SingleBattleChallenge_BoundTrans",nil,nUserId)
	end
end

--记录排行榜
function SingleBattleChallenge_RecordRank(nProIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--道士按火道的排行榜计算
	if nProIndex == tSingleBattleChallenge_Cont["TaoistPro"][1] then
		nProIndex = tSingleBattleChallenge_Cont["TaoistPro"][3]
	end
	
	--排行榜索引
	local nIndex = tSingleBattleChallenge_Cont["RankIndex"] + nProIndex
	
	--没有相关排行榜数据
	if tRankingFunc_Info[nIndex] == nil then
		return
	end
	
	--当前最高通关层数
	local nTopLevel, nNowLevel, nTotalTime = SingleBattleChallenge_GetTopLevel(nUserId)
	
	--没有通关所有层
	if nTopLevel < #tSingleBattleChallenge_Cont["LevelBattle"] then
		return
	end
	
	--先获取排行榜数据
	local tBeforeRank = RankingFunc_GetNowData(nIndex)
	
	--更新排行榜
	RankingFunc_SetInfo(nIndex,nTotalTime,nUserId)
	
	--给排行榜全服公告
	SingleBattleChallenge_RankBroadcast(tBeforeRank, nIndex, nUserId)
end

--登上排行榜给全服公告
function SingleBattleChallenge_RankBroadcast(tBeforeRank, nIndex, nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	--获取更新前的排行榜排名
	local nBeforeRank = 0
	
	for i = 1, 10 do
		local nRankUserId = 0
		
		if tBeforeRank[i] ~= nil then
			nRankUserId = tBeforeRank[i]["UserId"]
		end
		
		if nRankUserId == nUserId then
			nBeforeRank = i
		end
	end
	
	local tRank = RankingFunc_GetNowData(nIndex)
	
	--判断是否在排行榜内
	local nUserRank = 0
	local nUserScore = 0
	
	for i = 1, 10 do
		local nScore = 0
		local nRankUserId = 0
		
		if tRank[i] ~= nil then
			nScore = tRank[i]["Score"]
			nRankUserId = tRank[i]["UserId"]
		end
		
		if nRankUserId == nUserId then
			nUserRank = i
			nUserScore = nScore
		end
	end
	
	--玩家在排行榜上面且排名发生变化，才全服公告
	if nUserRank ~= 0 and nBeforeRank ~= nUserRank then
		local sUserName = Get_UserName(nUserId)
		local sContent = tSingleBattleChallenge_Text["Broadcast"]["ChallengeSucc"]
		local sTime = SingleBattleChallenge_GetChallengeTime(nUserScore)
		
		Sys_SystemBroadcast(string.format(sContent, sUserName, sTime, nUserRank))
	end
end

--保存log和全服公告
function SingleBattleChallenge_SaveLog(nIndex)
	local nUserId = Get_UserId()
	local nItemId = tSingleBattleChallenge_Cont["RankItem"][nIndex]
	local sUserName = Get_UserName(nUserId)
	local sItemName = Get_ItemtypeName(nItemId)
	
	--log
	Sys_SaveActionFestivalLog(string.format(tSingleBattleChallenge_Log["RankAward"], nItemId, 1),nUserId)
	
	local sContent = tSingleBattleChallenge_Text["Broadcast"]["GetRankAward"]
	
	--全服公告
	Sys_SystemBroadcast(string.format(sContent, sUserName, nIndex, sItemName))
end

--获取时间转换成字符串
function SingleBattleChallenge_GetChallengeTime(nTime)
	local nOneMinute = tSingleBattleChallenge_Cont["Sec"]
	local sTime = ""
	
	--小于1分钟
	if nTime < nOneMinute then
		sTime = string.format(tSingleBattleChallenge_Text["TimeSec"], nTime)
	else
		local nMinute = math.floor(nTime / nOneMinute)
		local nSec = nTime % nOneMinute
		
		sTime = string.format(tSingleBattleChallenge_Text["Time"], nMinute, nSec)
	end
	
	return sTime
end

--排行榜NPC对白判断
function SingleBattleChallenge_RankChk(nNpcId)
	--居中显示位置
	local nLeft = tSingleBattleChallenge_Cont["CenterAlineRank"]["Left"]
	local nMiddle = tSingleBattleChallenge_Cont["CenterAlineRank"]["Middle"]
	local nRight = tSingleBattleChallenge_Cont["CenterAlineRank"]["Right"]
	
	for i = 1, #tSingleBattleChallenge_Cont["ProIndex"] do
		local nProIndex = tSingleBattleChallenge_Cont["ProIndex"][i]
		
		--职业名称
		local sProName = tSingleBattleChallenge_Text["ProName"][nProIndex]
		
		--排行榜索引
		local nIndex = tSingleBattleChallenge_Cont["RankIndex"] + nProIndex
		
		--职业排行榜信息
		local tRank = RankingFunc_GetNowData(nIndex)
		
		local sTime = tSingleBattleChallenge_Text["Null"]
		local sUserName = tSingleBattleChallenge_Text["Null"]
		
		if tRank ~= nil then
			--取第一名数据
			if tRank[1] ~= nil then
				--分数
				sTime = SingleBattleChallenge_GetChallengeTime(tRank[1]["Score"])
				--玩家名
				sUserName = tRank[1]["UserName"]
				--名字处理
				sUserName = string.gsub(sUserName, "<", " ")
				sUserName = string.gsub(sUserName, ">", " ")
			end
		end
		
		sProName = tSingleBattleChallenge_Text["TopTip"]..sProName
		sTime = tSingleBattleChallenge_Text["TopTime"]..sTime
		
		local sTotal = Sys_CenterAline(sProName,nLeft,sTime,nMiddle,sUserName,nRight)
		
		tNpcGossip[nNpcId]["Text11"..(i + 3)] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text11"..(i + 3)],sTotal)
	end
	
	return true
end

--查看排行榜
function SingleBattleChallenge_ViewRank(nProIndex)
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	
	--职业名称
	local sProName = tSingleBattleChallenge_Text["ProName"][nProIndex]
	
	--排行榜索引
	local nIndex = tSingleBattleChallenge_Cont["RankIndex"] + nProIndex
	
	--职业排行榜信息
	local tRank = RankingFunc_GetNowData(nIndex)
	
	--居中显示位置
	local nLeft = tSingleBattleChallenge_Cont["CenterAline"]["Left"]
	local nMiddle = tSingleBattleChallenge_Cont["CenterAline"]["Middle"]
	local nRight = tSingleBattleChallenge_Cont["CenterAline"]["Right"]
	
	--玩家排名
	local nRank = 0
	
	for i = 1, 10 do
		--排名
		local sRank = string.format(tSingleBattleChallenge_Text["Rank"], i)
		--时间
		local sTime = tSingleBattleChallenge_Text["Null"]
		--名字
		local sUserName = tSingleBattleChallenge_Text["Null"]
		
		if tRank ~= nil then
			if tRank[i] ~= nil then
				sTime = SingleBattleChallenge_GetChallengeTime(tRank[i]["Score"])
				sUserName = tRank[i]["UserName"]
				--名字处理
				sUserName = string.gsub(sUserName, "<", " ")
				sUserName = string.gsub(sUserName, ">", " ")
				
				if nUserId == tRank[i]["UserId"] then
					nRank = i
				end
			end
		end
		
		local sTotal = Sys_CenterAline(sRank,nLeft,sTime,nMiddle,sUserName,nRight)
		
		tNpcGossip[nNpcId]["Text21"..(i + 3)] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text21"..(i + 3)],sTotal)
	end
	
	tNpcGossip[nNpcId]["Text211"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text211"], sProName)
	
	--当前最高通关层数
	local nTopLevel, nNowLevel, nTotalTime = SingleBattleChallenge_GetTopLevel(nUserId)
	
	--通关时间
	local sUserTime = SingleBattleChallenge_GetChallengeTime(nTotalTime)
	
	--没有通关所有层
	if nTopLevel < #tSingleBattleChallenge_Cont["LevelBattle"] then
		tNpcGossip[nNpcId]["Text2115"] = tSingleBattleChallenge_Text[nNpcId]["Text2117"]
	--通关了，但是没有在排行榜上面
	elseif nRank == 0 then
		tNpcGossip[nNpcId]["Text2115"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text2115"], sUserTime)
	else
		tNpcGossip[nNpcId]["Text2115"] = string.format(tSingleBattleChallenge_Text[nNpcId]["Text2116"], sUserTime, nRank)
	end
	
	LinkNpcGossipFunc_New(nNpcId, "2-1")
end

--排行榜文字修改
function SingleBattleChallenge_ReSetMailText(nIndex)
	--职业索引
	local nProIndex = nIndex - tSingleBattleChallenge_Cont["RankIndex"]
	
	--职业名称
	local sProName = tSingleBattleChallenge_Text["ProName"][nProIndex]
	
	--职业排行榜信息
	local tRank = RankingFunc_GetNowData(nIndex)
	
	for k,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		local sTime = ""
		
		if tRank ~= nil then
			if tRank[k] ~= nil then
				sTime = SingleBattleChallenge_GetChallengeTime(tRank[k]["Score"])
			end
		end
		
		v["Title"] = string.format(v["Title"], sProName, k)
		v["Content"] = string.format(v["Content"], sTime, sProName, k)
	end
end

--传送
function SingleBattleChallenge_BoundTrans(nNowUserId)
	local nIndex = 1
	
	if SpecialServer_ChkNoGiftServer() then
		nIndex = 2
	end
	
	if tSingleBattleChallenge_Cont["BoundTrans"][nIndex] == nil then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = tSingleBattleChallenge_Cont["BoundTrans"][nIndex]["MapId"]
	local nBoundX = tSingleBattleChallenge_Cont["BoundTrans"][nIndex]["PosX"]
	local nBoundY = tSingleBattleChallenge_Cont["BoundTrans"][nIndex]["PosY"]
	
	--清除玩家身上状态
	SingleBattleChallenge_DelStatus(nUserId)
	
	--增加一个1s的倒计时，啥都不做，用来覆盖之前的倒计时显示
	User_SetTimer(1,nil,1,nUserId)
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,1,1,0,nUserId)
	
	User_TalkChannel2005(tSingleBattleChallenge_Text["Channel2005"]["GoBack"][nIndex],nUserId)
end

--陷阱触发
function SingleBattleChallenge_GoBack(nTrapId,nTrapType)
	local sText = tSingleBattleChallenge_Text["MsgBox"]["GoBackTwinCity"]
	
	if SpecialServer_ChkNoGiftServer() then
		sText = tSingleBattleChallenge_Text["MsgBox"]["GoBackMarket"]
	end
	
	local nUserId = Get_UserId()
	
	Sys_MsgBox(sText,"SingleBattleChallenge_BoundTrans",nil,nUserId)
end

--死亡触发
function SingleBattleChallenge_Death()
	local nUserId = Get_UserId()
	
	--需要在副本内
	if not SingleBattleChallenge_ChkInstance(nUserId) then
		return
	end
	
	SingleBattleChallenge_DelStatus(nUserId)
end

--可选礼包
function WorldCupGuess_ItemChoose(nItemId, nIndex)
	if tSingleBattleChallenge_Reward[nItemId] == nil then
		return
	end
	
	if tSingleBattleChallenge_Reward[nItemId][nIndex] == nil then
		return
	end
	
	RewardTemplate_UseItemAndMsg(tSingleBattleChallenge_Reward[nItemId][nIndex])
end
--------------------------------------------模块部分配置--------------------------------------------

---------------------------------------------NPC模块---------------------------------------------
--朱无视
tNpcFace[5340] = 8
tNpcGossip[24893] = tNpcGossip[24893] or DefaultNpc:new{}
tNpcGossip[24893]["DialogueText"] = tSingleBattleChallenge_Text[24893]
tNpcGossip[24893]["OptionHidden"] = 1

--活动时间前
tNpcGossip[24893]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24893]["ChkFunc1-1"] = function()
	if CommonFunc_GetBeforeActivityTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		--获取活动时间
		local sTime = SingleBattleChallenge_GetActivityTime(tSingleBattleChallenge_Time["ActivityTime"])
		
		tNpcGossip[24893]["Text114"] = string.format(tSingleBattleChallenge_Text[24893]["Text114"], sTime)
		
		return true
	else
		return false
	end
end
tNpcGossip[24893]["tOption1-1"] = {111}

--活动时间后
tNpcGossip[24893]["Text1-2"] = {111,112,113,121}
tNpcGossip[24893]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tSingleBattleChallenge_Time["ActivityTime"])
end
tNpcGossip[24893]["tOption1-2"] = {121}

--活动时间内
tNpcGossip[24893]["Text1-3"] = {111,112,113,131,132,133,134,135,136,137,138}
tNpcGossip[24893]["ChkFunc1-3"] = function()
	if not Sys_ChkFullTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		return false
	end
	
	--获取活动时间
	local sTime = SingleBattleChallenge_GetActivityTime(tSingleBattleChallenge_Time["ActivityTime"])
	
	tNpcGossip[24893]["Text135"] = string.format(tSingleBattleChallenge_Text[24893]["Text135"], sTime)
	
	--等级判断
	if SingleBattleChallenge_ChkLevel() then
		local nTimesIndex = tSingleBattleChallenge_Cont["TimesIndex"]
		local nLimit = tSingleBattleChallenge_Stc[nTimesIndex]["Limit"]
		
		--判断挑战次数是否超过免费次数
		if SingleBattleChallenge_GetStcValue(nTimesIndex) >= nLimit then
			tNpcGossip[24893]["Option132"] = tSingleBattleChallenge_Text[24893]["Option132"]..tSingleBattleChallenge_Text["UseEMoney"]
		else
			tNpcGossip[24893]["Option132"] = tSingleBattleChallenge_Text[24893]["Option132"]..tSingleBattleChallenge_Text["Free"]
		end
		
		tNpcGossip[24893]["Text1-3"] = {111,112,113,131,132,133,134,135,137,138}
		tNpcGossip[24893]["tOption1-3"] = {132,133,135}
	else
		tNpcGossip[24893]["Text1-3"] = {111,112,113,131,132,133,134,135,136,138}
		tNpcGossip[24893]["tOption1-3"] = {131}
	end
	
	return true
end
tNpcGossip[24893]["tOption1-3"] = {131,132,133,135}
tNpcGossip[24893]["OptionFunc132"] = "SingleBattleChallenge_Into" --进入护龙山庄闯关
tNpcGossip[24893]["OptionFunc133"] = "SingleBattleChallenge_GetPhaseAwardChk" --领取阶段奖励
tNpcGossip[24893]["OptionFunc134"] = "SingleBattleChallenge_LinkWeb" --全区全服竞速榜
tNpcGossip[24893]["OptionPoint135"] = "2-2" --护龙山庄闯关指南

--领取阶段奖励
tNpcGossip[24893]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115,2116,2117}
tNpcGossip[24893]["tOption2-1"] = {211,212}
tNpcGossip[24893]["OptionFunc211"] = "SingleBattleChallenge_GetPhaseAward"

--护龙山庄闯关指南
tNpcGossip[24893]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211}
tNpcGossip[24893]["tOption2-2"] = {221}

--闯关二次确认
tNpcGossip[24893]["Text2-3"] = {231}
tNpcGossip[24893]["tOption2-3"] = {231,232}
tNpcGossip[24893]["OptionFunc231"] = "SingleBattleChallenge_Into</N>1" --进入护龙山庄闯关
tNpcGossip[24893]["OptionPoint232"] = "3-1"

--屏蔽二次确认
tNpcGossip[24893]["Text3-1"] = {311}
tNpcGossip[24893]["tOption3-1"] = {311,312}
tNpcGossip[24893]["OptionFunc311"] = "SingleBattleChallenge_ShieldConfirm"
tNpcGossip[24893]["OptionPoint312"] = "1"

--万三千
tNpcFace[5341] = 15
tNpcGossip[24894] = tNpcGossip[24894] or DefaultNpc:new{}
tNpcGossip[24894]["DialogueText"] = tSingleBattleChallenge_Text[24894]
tNpcGossip[24894]["OptionHidden"] = 1

--活动时间前、内
tNpcGossip[24894]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24894]["ChkFunc1-1"] = function()
	--活动时间后
	if CommonFunc_GetAfterActivityTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		return false
	end
	
	--获取活动时间
	local sTime = SingleBattleChallenge_GetActivityTime(tSingleBattleChallenge_Time["ActivityTime"])
	tNpcGossip[24894]["Text115"] = string.format(tSingleBattleChallenge_Text[24894]["Text115"], sTime)
	
	--活动时间前
	if CommonFunc_GetBeforeActivityTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		tNpcGossip[24894]["Text1-1"] = {111,112,113,114,115,116,117}
		tNpcGossip[24894]["tOption1-1"] = {111}
		return true
	end
	
	--等级判断
	if SingleBattleChallenge_ChkLevel() then
		tNpcGossip[24894]["Text1-1"] = {111,112,113,114,115,117}
		tNpcGossip[24894]["tOption1-1"] = {113}
	else
		tNpcGossip[24894]["Text1-1"] = {111,112,113,114,115,116,117}
		tNpcGossip[24894]["tOption1-1"] = {112}
	end
	
	return true
end
tNpcGossip[24894]["tOption1-1"] = {111,112,113}
tNpcGossip[24894]["OptionFunc113"] = "SingleBattleChallenge_ExchangeShop"

--活动时间后
tNpcGossip[24894]["Text1-2"] = {111,121}
tNpcGossip[24894]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tSingleBattleChallenge_Time["ActivityTime"])
end
tNpcGossip[24894]["tOption1-2"] = {121}

--上官海棠
tNpcFace[5342] = 120
tNpcGossip[24895]= tNpcGossip[24895] or DefaultNpc:new{}
tNpcGossip[24895]["DialogueText"] = tSingleBattleChallenge_Text[24895]
tNpcGossip[24895]["OptionHidden"] = 1

tNpcGossip[24895]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112}
tNpcGossip[24895]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[24895]["tOption1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[24895]["OptionFunc111"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320782"
tNpcGossip[24895]["OptionFunc112"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320783"
tNpcGossip[24895]["OptionFunc113"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320784"
tNpcGossip[24895]["OptionFunc114"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320785"
tNpcGossip[24895]["OptionFunc115"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320786"
tNpcGossip[24895]["OptionFunc116"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320787"
tNpcGossip[24895]["OptionFunc117"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320788"
tNpcGossip[24895]["OptionFunc118"] = "SingleBattleChallenge_BuyMedicine</N>24895</N>3320789"

--选择购买数量
tNpcGossip[24895]["Text2-1"] = {211}
tNpcGossip[24895]["tOption2-1"] = {211,212,213,214}
tNpcGossip[24895]["OptionFunc211"] = "SingleBattleChallenge_BuyMedicineOption</N>24895</N>1"
tNpcGossip[24895]["OptionFunc212"] = "SingleBattleChallenge_BuyMedicineOption</N>24895</N>5"
tNpcGossip[24895]["OptionFunc213"] = "SingleBattleChallenge_BuyMedicineOption</N>24895</N>10"
tNpcGossip[24895]["OptionFunc214"] = "SingleBattleChallenge_LinkNpc</N>24895"

--确认购买
tNpcGossip[24895]["Text2-2"] = {221}
tNpcGossip[24895]["tOption2-2"] = {221,222}
tNpcGossip[24895]["OptionFunc221"] = "SingleBattleChallenge_BuyMedicineConfirm"

--古三通
tNpcFace[3722] = 54
tNpcGossip[24896]= tNpcGossip[24896] or DefaultNpc:new{}
tNpcGossip[24896]["DialogueText"] = tSingleBattleChallenge_Text[24896]
tNpcGossip[24896]["OptionHidden"] = 1

tNpcGossip[24896]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24896]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[24896]["tOption1-1"] = {111,112}
tNpcGossip[24896]["OptionFunc111"] = "SingleBattleChallenge_ChooseLevel</N>24896"
tNpcGossip[24896]["OptionFunc112"] = "SingleBattleChallenge_Begin"

tNpcGossip[24896]["Text2-1"] = {211,212}
tNpcGossip[24896]["tOption2-1"] = {211}

--职业巅峰竞速榜
tNpcFace[3723] = 1248
tNpcGossip[24897]= tNpcGossip[24897] or DefaultNpc:new{}
tNpcGossip[24897]["DialogueText"] = tSingleBattleChallenge_Text[24897]
tNpcGossip[24897]["OptionHidden"] = 1

tNpcGossip[24897]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116}
tNpcGossip[24897]["ChkFunc1-1"] = function ()
	return SingleBattleChallenge_RankChk(24897)
end
tNpcGossip[24897]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tNpcGossip[24897]["OptionFunc111"] = "SingleBattleChallenge_ViewRank</N>9"
tNpcGossip[24897]["OptionFunc112"] = "SingleBattleChallenge_ViewRank</N>1"
tNpcGossip[24897]["OptionFunc113"] = "SingleBattleChallenge_ViewRank</N>6"
tNpcGossip[24897]["OptionFunc114"] = "SingleBattleChallenge_ViewRank</N>5"
tNpcGossip[24897]["OptionFunc115"] = "SingleBattleChallenge_ViewRank</N>7"
tNpcGossip[24897]["OptionFunc116"] = "SingleBattleChallenge_ViewRank</N>4"
tNpcGossip[24897]["OptionFunc117"] = "SingleBattleChallenge_ViewRank</N>2"
tNpcGossip[24897]["OptionFunc118"] = "SingleBattleChallenge_ViewRank</N>16"
tNpcGossip[24897]["OptionFunc119"] = "SingleBattleChallenge_ViewRank</N>8"
tNpcGossip[24897]["OptionFunc1110"] = "SingleBattleChallenge_ViewRank</N>14"
tNpcGossip[24897]["OptionFunc1111"] = "SingleBattleChallenge_ViewRank</N>13"

--查看职业排行榜
tNpcGossip[24897]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110,2111,2112,2113,2114,2115}
tNpcGossip[24897]["tOption2-1"] = {211,212}
tNpcGossip[24897]["OptionPoint211"] = "1"
tNpcGossip[24897]["OptionPoint212"] = "3-1"
--查看排行榜奖励
tNpcGossip[24897]["Text3-1"] = {311,312,313,314,315,316,317,318}
tNpcGossip[24897]["tOption3-1"] = {311}
tNpcGossip[24897]["OptionPoint311"] = "1"


--护龙山庄秘宝箱
tNpcFace[3724] = 1805
tNpcGossip[24898]= tNpcGossip[24898] or DefaultNpc:new{}
tNpcGossip[24898]["DialogueText"] = tSingleBattleChallenge_Text[24898]
tNpcGossip[24898]["OptionHidden"] = 1

tNpcGossip[24898]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24898]["ChkFunc1-1"] = function ()
	return true
end
tNpcGossip[24898]["tOption1-1"] = {111,112}
tNpcGossip[24898]["OptionFunc111"] = "SingleBattleChallenge_GetBoxAward"
tNpcGossip[24898]["OptionFunc112"] = "SingleBattleChallenge_BoundTrans"

---------------------------------------------物品模块---------------------------------------------
--30天怀旧武器可选包
tItemFace[3309661] = 1437
tItem[3309661] = tItem[3309661] or {}
tItem[3309661]["DialogueText"] = tSingleBattleChallenge_Text[3309661]
tItem[3309661]["Text1-1"] = {111}
tItem[3309661]["ChkFunc1-1"] = function() return true end
tItem[3309661]["tOption1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111}
tItem[3309661]["OptionFunc111"] = "WorldCupGuess_ItemChoose</N>3309661</N>1"
tItem[3309661]["OptionFunc112"] = "WorldCupGuess_ItemChoose</N>3309661</N>2"
tItem[3309661]["OptionFunc113"] = "WorldCupGuess_ItemChoose</N>3309661</N>3"
tItem[3309661]["OptionFunc114"] = "WorldCupGuess_ItemChoose</N>3309661</N>4"
tItem[3309661]["OptionFunc115"] = "WorldCupGuess_ItemChoose</N>3309661</N>5"
tItem[3309661]["OptionFunc116"] = "WorldCupGuess_ItemChoose</N>3309661</N>6"
tItem[3309661]["OptionFunc117"] = "WorldCupGuess_ItemChoose</N>3309661</N>7"
tItem[3309661]["OptionFunc118"] = "WorldCupGuess_ItemChoose</N>3309661</N>8"
tItem[3309661]["OptionFunc119"] = "WorldCupGuess_ItemChoose</N>3309661</N>9"
tItem[3309661]["OptionFunc1110"] = "WorldCupGuess_ItemChoose</N>3309661</N>10"
tItem[3309661]["OptionFunc1111"] = "WorldCupGuess_ItemChoose</N>3309661</N>11"



--神侯令
tItem[3323371] = tItem[3323371] or {}
tItem[3323371]["Function"] = function(nItemId,sItemName)
	--活动时间判断
	if not Sys_ChkFullTime(tSingleBattleChallenge_Time["ActivityTime"]) then
		local nCount = Get_CountItemType(nItemId,0,nil,nil,nUserId)
		if Item_ChkItem(nItemId,nil,nil,nUserId) and Item_DelAllItemByType(nItemId,nUserId) then
			Sys_SaveActionFestivalLog(string.format(tSingleBattleChallenge_Log["DelItem"], nItemId, nCount),nUserId)
			User_TalkChannel2005(tLuaRes[10004],nUserId)
		end
		
		return
	end
	
	NpcPosition_PathFind(24894)
end

--竞速争霸赛冠军宝箱
tItem[3323372] = tItem[3323372] or {}
tItem[3323372]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tSingleBattleChallenge_Reward[nItemId])
end

--竞速争霸赛勇者宝箱
tItem[3323373] = tItem[3323372]
--竞速争霸赛豪侠宝箱
tItem[3323374] = tItem[3323372]
--1天绝命破(+9)（赠）礼包
tItem[3323445] = tItem[3323372]

---------------------------------------------怪物模块---------------------------------------------
local tSingleBattleChallenge_KillBoss = {}
	tSingleBattleChallenge_KillBoss["ActivityTime"] = tSingleBattleChallenge_Time["ActivityTime"]
	tSingleBattleChallenge_KillBoss["Function"]= SingleBattleChallenge_KillBoss
	tSingleBattleChallenge_KillBoss["MonsterId"] = {5704,5705,5706,5707,5708,5709,
																						5710,5711,5712,5713,5714,5715,
																						5716,5717,5718,5719,5720,5721,
																						5722,5723,5724,5725,5726,5727,
																						5728,5729,5730,5731,5732,5733,
																						5734,5735,5736,5737,5738,5739}
table.insert(tMonsterDrop_AreaLoad,tSingleBattleChallenge_KillBoss)
	
---------------------------------------------陷阱模块---------------------------------------------
tTrap[2469] = tTrap[2469] or {}
tTrap[2469]["Function"] = function(nTrapId,nTrapType)
	SingleBattleChallenge_GoBack(nTrapId,nTrapType)
end

---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,SingleBattleChallenge_Login)


-- 排行榜
-- 24897,'职业巅峰竞速榜'
-- 斗神
tRankingFunc_Info[2489709] = {}
tRankingFunc_Info[2489709]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489709]["Global"] = {53655,53656,53657,53658}
tRankingFunc_Info[2489709]["RankNum"] = 10
tRankingFunc_Info[2489709]["Reset"] = 1
tRankingFunc_Info[2489709]["RankMode"] = 2
tRankingFunc_Info[2489709]["Mail"] = {}
tRankingFunc_Info[2489709]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489709]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489709]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489709]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489709]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489709]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489709]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489709]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489709]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489709]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489709]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489709]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489709]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489709]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489709]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489709]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489709]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489709]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489709]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489709]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489709]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489709]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489709]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489709]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489709]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489709]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489709]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489709]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 勇士
tRankingFunc_Info[2489701] = {}
tRankingFunc_Info[2489701]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489701]["Global"] = {53659,53660,53661,53662}
tRankingFunc_Info[2489701]["RankNum"] = 10
tRankingFunc_Info[2489701]["Reset"] = 1
tRankingFunc_Info[2489701]["RankMode"] = 2
tRankingFunc_Info[2489701]["Mail"] = {}
tRankingFunc_Info[2489701]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489701]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489701]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489701]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489701]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489701]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489701]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489701]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489701]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489701]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489701]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489701]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489701]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489701]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489701]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489701]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489701]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489701]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489701]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489701]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489701]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489701]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489701]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489701]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489701]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489701]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489701]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489701]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 武僧
tRankingFunc_Info[2489706] = {}
tRankingFunc_Info[2489706]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489706]["Global"] = {53663,53664,53665,53666}
tRankingFunc_Info[2489706]["RankNum"] = 10
tRankingFunc_Info[2489706]["Reset"] = 1
tRankingFunc_Info[2489706]["RankMode"] = 2
tRankingFunc_Info[2489706]["Mail"] = {}
tRankingFunc_Info[2489706]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489706]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489706]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489706]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489706]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489706]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489706]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489706]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489706]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489706]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489706]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489706]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489706]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489706]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489706]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489706]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489706]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489706]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489706]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489706]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489706]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489706]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489706]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489706]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489706]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489706]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489706]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489706]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 忍者
tRankingFunc_Info[2489705] = {}
tRankingFunc_Info[2489705]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489705]["Global"] = {53667,53668,53669,53670}
tRankingFunc_Info[2489705]["RankNum"] = 10
tRankingFunc_Info[2489705]["Reset"] = 1
tRankingFunc_Info[2489705]["RankMode"] = 2
tRankingFunc_Info[2489705]["Mail"] = {}
tRankingFunc_Info[2489705]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489705]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489705]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489705]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489705]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489705]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489705]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489705]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489705]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489705]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489705]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489705]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489705]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489705]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489705]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489705]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489705]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489705]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489705]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489705]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489705]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489705]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489705]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489705]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489705]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489705]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489705]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489705]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 海盗
tRankingFunc_Info[2489707] = {}
tRankingFunc_Info[2489707]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489707]["Global"] = {53671,53672,53673,53674}
tRankingFunc_Info[2489707]["RankNum"] = 10
tRankingFunc_Info[2489707]["Reset"] = 1
tRankingFunc_Info[2489707]["RankMode"] = 2
tRankingFunc_Info[2489707]["Mail"] = {}
tRankingFunc_Info[2489707]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489707]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489707]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489707]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489707]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489707]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489707]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489707]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489707]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489707]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489707]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489707]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489707]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489707]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489707]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489707]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489707]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489707]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489707]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489707]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489707]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489707]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489707]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489707]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489707]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489707]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489707]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489707]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 弓手
tRankingFunc_Info[2489704] = {}
tRankingFunc_Info[2489704]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489704]["Global"] = {53675,53676,53677,53678}
tRankingFunc_Info[2489704]["RankNum"] = 10
tRankingFunc_Info[2489704]["Reset"] = 1
tRankingFunc_Info[2489704]["RankMode"] = 2
tRankingFunc_Info[2489704]["Mail"] = {}
tRankingFunc_Info[2489704]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489704]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489704]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489704]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489704]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489704]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489704]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489704]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489704]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489704]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489704]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489704]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489704]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489704]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489704]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489704]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489704]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489704]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489704]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489704]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489704]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489704]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489704]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489704]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489704]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489704]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489704]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489704]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 战士
tRankingFunc_Info[2489702] = {}
tRankingFunc_Info[2489702]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489702]["Global"] = {53679,53680,53681,53682}
tRankingFunc_Info[2489702]["RankNum"] = 10
tRankingFunc_Info[2489702]["Reset"] = 1
tRankingFunc_Info[2489702]["RankMode"] = 2
tRankingFunc_Info[2489702]["Mail"] = {}
tRankingFunc_Info[2489702]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489702]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489702]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489702]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489702]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489702]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489702]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489702]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489702]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489702]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489702]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489702]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489702]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489702]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489702]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489702]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489702]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489702]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489702]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489702]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489702]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489702]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489702]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489702]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489702]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489702]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489702]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489702]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 铁扇门
tRankingFunc_Info[2489716] = {}
tRankingFunc_Info[2489716]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489716]["Global"] = {53683,53684,53685,53686}
tRankingFunc_Info[2489716]["RankNum"] = 10
tRankingFunc_Info[2489716]["Reset"] = 1
tRankingFunc_Info[2489716]["RankMode"] = 2
tRankingFunc_Info[2489716]["Mail"] = {}
tRankingFunc_Info[2489716]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489716]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489716]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489716]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489716]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489716]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489716]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489716]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489716]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489716]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489716]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489716]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489716]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489716]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489716]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489716]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489716]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489716]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489716]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489716]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489716]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489716]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489716]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489716]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489716]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489716]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489716]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489716]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 截拳师
tRankingFunc_Info[2489708] = {}
tRankingFunc_Info[2489708]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489708]["Global"] = {53687,53688,53689,53690}
tRankingFunc_Info[2489708]["RankNum"] = 10
tRankingFunc_Info[2489708]["Reset"] = 1
tRankingFunc_Info[2489708]["RankMode"] = 2
tRankingFunc_Info[2489708]["Mail"] = {}
tRankingFunc_Info[2489708]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489708]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489708]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489708]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489708]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489708]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489708]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489708]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489708]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489708]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489708]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489708]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489708]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489708]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489708]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489708]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489708]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489708]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489708]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489708]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489708]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489708]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489708]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489708]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489708]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489708]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489708]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489708]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 火道士
tRankingFunc_Info[2489714] = {}
tRankingFunc_Info[2489714]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489714]["Global"] = {53691,53692,53693,53694}
tRankingFunc_Info[2489714]["RankNum"] = 10
tRankingFunc_Info[2489714]["Reset"] = 1
tRankingFunc_Info[2489714]["RankMode"] = 2
tRankingFunc_Info[2489714]["Mail"] = {}
tRankingFunc_Info[2489714]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489714]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489714]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489714]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489714]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489714]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489714]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489714]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489714]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489714]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489714]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489714]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489714]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489714]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489714]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489714]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489714]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489714]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489714]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489714]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489714]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489714]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489714]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489714]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489714]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489714]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489714]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489714]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
-- 水道士
tRankingFunc_Info[2489713] = {}
tRankingFunc_Info[2489713]["ActiveTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tRankingFunc_Info[2489713]["Global"] = {53695,53696,53697,53698}
tRankingFunc_Info[2489713]["RankNum"] = 10
tRankingFunc_Info[2489713]["Reset"] = 1
tRankingFunc_Info[2489713]["RankMode"] = 2
tRankingFunc_Info[2489713]["Mail"] = {}
tRankingFunc_Info[2489713]["Mail"]["ActiveTime"] = tSingleBattleChallenge_Time["RankAwardTime"]
tRankingFunc_Info[2489713]["Mail"]["RewardTime"] = {}
tRankingFunc_Info[2489713]["Mail"]["RewardTime"][1] = "00:00 00:05"
tRankingFunc_Info[2489713]["Mail"]["HaveFunc"] = SingleBattleChallenge_ReSetMailText
tRankingFunc_Info[2489713]["Mail"]["Reward"] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][1] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][1]["RewardRank"] = 1
tRankingFunc_Info[2489713]["Mail"]["Reward"][1]["ActionId"] = 574371
tRankingFunc_Info[2489713]["Mail"]["Reward"][1]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][1]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][1]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][1]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][2] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][2]["RewardRank"] = 2
tRankingFunc_Info[2489713]["Mail"]["Reward"][2]["ActionId"] = 574372
tRankingFunc_Info[2489713]["Mail"]["Reward"][2]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][2]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][2]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][2]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][3] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][3]["RewardRank"] = 3
tRankingFunc_Info[2489713]["Mail"]["Reward"][3]["ActionId"] = 574373
tRankingFunc_Info[2489713]["Mail"]["Reward"][3]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][3]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][3]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][3]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][4] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][4]["RewardRank"] = 4
tRankingFunc_Info[2489713]["Mail"]["Reward"][4]["ActionId"] = 574381
tRankingFunc_Info[2489713]["Mail"]["Reward"][4]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][4]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][4]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][4]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][5] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][5]["RewardRank"] = 5
tRankingFunc_Info[2489713]["Mail"]["Reward"][5]["ActionId"] = 574382
tRankingFunc_Info[2489713]["Mail"]["Reward"][5]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][5]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][5]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][5]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][6] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][6]["RewardRank"] = 6
tRankingFunc_Info[2489713]["Mail"]["Reward"][6]["ActionId"] = 574383
tRankingFunc_Info[2489713]["Mail"]["Reward"][6]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][6]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][6]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][6]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][7] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][7]["RewardRank"] = 7
tRankingFunc_Info[2489713]["Mail"]["Reward"][7]["ActionId"] = 574384
tRankingFunc_Info[2489713]["Mail"]["Reward"][7]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][7]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][7]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][7]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][8] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][8]["RewardRank"] = 8
tRankingFunc_Info[2489713]["Mail"]["Reward"][8]["ActionId"] = 574385
tRankingFunc_Info[2489713]["Mail"]["Reward"][8]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][8]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][8]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][8]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][9] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][9]["RewardRank"] = 9
tRankingFunc_Info[2489713]["Mail"]["Reward"][9]["ActionId"] = 574386
tRankingFunc_Info[2489713]["Mail"]["Reward"][9]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][9]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][9]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][9]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][10] = {}
tRankingFunc_Info[2489713]["Mail"]["Reward"][10]["RewardRank"] = 10
tRankingFunc_Info[2489713]["Mail"]["Reward"][10]["ActionId"] = 574387
tRankingFunc_Info[2489713]["Mail"]["Reward"][10]["ExistDay"] = 30
tRankingFunc_Info[2489713]["Mail"]["Reward"][10]["Title"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Title"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][10]["Sender"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Sender"]
tRankingFunc_Info[2489713]["Mail"]["Reward"][10]["Content"] = tSingleBattleChallenge_Text["Mail"]["Total"]["Content"]

-- 动态存储表清零
tGlobalData_Info[53654] = {}
tGlobalData_Info[53654]["Time"] = {}
tGlobalData_Info[53654]["Time"]["ActivityTime"] = tSingleBattleChallenge_Time["ActivityTime"]
tGlobalData_Info[53654]["Time"]["ClearTime"] = "00:00 00:02"
tGlobalData_Info[53654]["Rest"] = {}
tGlobalData_Info[53654]["Rest"]["GlobalId"] = {53654}
tGlobalData_Info[53654]["Rest"]["Pos"] = {0}

