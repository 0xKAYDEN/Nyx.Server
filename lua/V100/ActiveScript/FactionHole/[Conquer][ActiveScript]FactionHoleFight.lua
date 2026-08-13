------------------------------------------------------------------------------------
--Name:			180701[简体征服][活动脚本]帮派矿洞玩法
--Purpose:		帮派矿洞
--Creator:		wzh
--Created:		2018-07-01
------------------------------------------------------------------------------------
-- 前缀
-- FactionHoleFight_

-- LogId 12001107

-- stc掩码说明 
-- stc	179,08		记录争霸赛期间所获征服币额度（现有），相对3天清一次
-- stc	179,09		记录争霸赛期间杀怪数
-- stc	179,11		记录增加红包次数
-- stc	179,12		记录玩家抢到的红包总数
-- stc	179,13		记录争霸赛期间杀人数
-- stc	179,35		记录争霸赛杀怪所获征服币额度（总），相对3天清一次
-- stc	181,84		记录竞技场气力精装包每周打开次数
-- stc	181,85		记录竞技场气力尊享包每周打开次数
-- stc	181,86		记录竞技场精粹精装包每周打开次数
-- stc	181,87		记录竞技场精粹尊享包每周打开次数


-- 全局表说明
-- global 52750		data0记录争霸赛时间序号		data1记录可兑换总额度		data2记录领取到最后一两的玩家id		data3记录邮件发奖状态
-- global 52753-52755	记录争霸赛期间抢红包排名
-- global 52761-52767	记录争霸赛期间现有征服币额度排名

---------------------------------------------常量配置部分---------------------------------------
-- 常量表
local tFactionHoleFight_Cont = {}
	-- Global
	tFactionHoleFight_Cont["FightGlobal"] = 52750
	tFactionHoleFight_Cont["GlobalId1"] = 52751
	
	-- 等级
	tFactionHoleFight_Cont["Level"] = 80
	tFactionHoleFight_Cont["Metempsychosis"] = 0
	
	-- 交易服非交易服区分
	tFactionHoleFight_Cont["TradeServer"] = 52985
	
	-- 争霸战地图
	tFactionHoleFight_Cont["FightMapId"] = 1038
	
	-- 争霸赛期间击杀小怪所获额度
	tFactionHoleFight_Cont["KillPoint"] = 3
	
	-- 剿匪包所给功勋值
	tFactionHoleFight_Cont["Feats"] = 150
	
	-- 每次抢红包的最大值
	tFactionHoleFight_Cont["RobMoneyMax"] = 500
	
	-- 读条数据
	tFactionHoleFight_Cont["ExploreTime"] = 2
	tFactionHoleFight_Cont["ExploreActionId"] = 100
	
	-- 发奖actionid
	tFactionHoleFight_Cont["ActionId"] = {}
	tFactionHoleFight_Cont["ActionId"][1] = 569519
	tFactionHoleFight_Cont["ActionId"][2] = 569520
	
	-- 邮件存在天数
	tFactionHoleFight_Cont["ExistDay"] = 2
	
	-- 光效
	tFactionHoleFight_Cont["Effect"] = {}
	tFactionHoleFight_Cont["Effect"][1] = "zf2-e128"
	tFactionHoleFight_Cont["Effect"][2] = "BodyDisapear"
	
	-- 陷阱数据
	tFactionHoleFight_Cont["Trap"] = {}
	tFactionHoleFight_Cont["Trap"]["Type"] = 2019
	tFactionHoleFight_Cont["Trap"]["Look"] = 1894
	tFactionHoleFight_Cont["Trap"]["OwnerId"] = 0
	tFactionHoleFight_Cont["Trap"]["MapId"] = 10348
	tFactionHoleFight_Cont["Trap"]["PosX"] = 349
	tFactionHoleFight_Cont["Trap"]["PosY"] = 321
	tFactionHoleFight_Cont["Trap"]["PosCX"] = 0
	tFactionHoleFight_Cont["Trap"]["PosCY"] = 0
	
	-- NPC
	-- 梅老板
	tFactionHoleFight_Cont[23058] = {}
	tFactionHoleFight_Cont[23058]["MapId"] = 1002
	tFactionHoleFight_Cont[23058]["Exchange"] = 10
	tFactionHoleFight_Cont[23058]["ExchangeMax"] = 5000
	-- 血色矿山
	tFactionHoleFight_Cont[17980] = {}
	tFactionHoleFight_Cont[17980]["CostMoney"] = 50000
	-- 矿山淘金客
	tFactionHoleFight_Cont[23059] = {}
	tFactionHoleFight_Cont[23059]["CostEmoney"] = 270
	tFactionHoleFight_Cont[23059]["ExchangeMoney"] = 10000
	tFactionHoleFight_Cont[23059]["Fighting"] = {}
	tFactionHoleFight_Cont[23059]["Fighting"]["MapId"] = 10348
	tFactionHoleFight_Cont[23059]["Fighting"]["CellX"] = 345
	tFactionHoleFight_Cont[23059]["Fighting"]["CellY"] = 325
	tFactionHoleFight_Cont[23059]["NotFighting"] = {}
	tFactionHoleFight_Cont[23059]["NotFighting"]["MapId"] = 5000
	tFactionHoleFight_Cont[23059]["NotFighting"]["CellX"] = 50
	tFactionHoleFight_Cont[23059]["NotFighting"]["CellY"] = 50
	-- 红包宝箱
	tFactionHoleFight_Cont[23084] = {}
	tFactionHoleFight_Cont[23084]["Fighting"] = {}
	tFactionHoleFight_Cont[23084]["Fighting"]["MapId"] = 10348
	tFactionHoleFight_Cont[23084]["Fighting"]["CellX"] = 349
	tFactionHoleFight_Cont[23084]["Fighting"]["CellY"] = 321
	tFactionHoleFight_Cont[23084]["NotFighting"] = {}
	tFactionHoleFight_Cont[23084]["NotFighting"]["MapId"] = 5000
	tFactionHoleFight_Cont[23084]["NotFighting"]["CellX"] = 50
	tFactionHoleFight_Cont[23084]["NotFighting"]["CellY"] = 50
	-- 争霸天骄碑
	tFactionHoleFight_Cont[23079] = {}
	tFactionHoleFight_Cont[23079]["Fighting"] = {}
	tFactionHoleFight_Cont[23079]["Fighting"]["MapId"] = 10348
	tFactionHoleFight_Cont[23079]["Fighting"]["CellX"] = 161
	tFactionHoleFight_Cont[23079]["Fighting"]["CellY"] = 258
	tFactionHoleFight_Cont[23079]["NotFighting"] = {}
	tFactionHoleFight_Cont[23079]["NotFighting"]["MapId"] = 5000
	tFactionHoleFight_Cont[23079]["NotFighting"]["CellX"] = 50
	tFactionHoleFight_Cont[23079]["NotFighting"]["CellY"] = 50
	-- 红包手气榜
	tFactionHoleFight_Cont[23115] = {}
	-- 普通服
	tFactionHoleFight_Cont[23115]["AfterFighting"] = {}
	tFactionHoleFight_Cont[23115]["AfterFighting"]["MapId"] = 1002
	tFactionHoleFight_Cont[23115]["AfterFighting"]["CellX"] = 333
	tFactionHoleFight_Cont[23115]["AfterFighting"]["CellY"] = 323
	-- 交易服
	tFactionHoleFight_Cont[23115]["AfterFighting"][1] = {}
	tFactionHoleFight_Cont[23115]["AfterFighting"][1]["MapId"] = 10364
	tFactionHoleFight_Cont[23115]["AfterFighting"][1]["CellX"] = 300
	tFactionHoleFight_Cont[23115]["AfterFighting"][1]["CellY"] = 280
	
	tFactionHoleFight_Cont[23115]["Other"] = {}
	tFactionHoleFight_Cont[23115]["Other"]["MapId"] = 5000
	tFactionHoleFight_Cont[23115]["Other"]["CellX"] = 50
	tFactionHoleFight_Cont[23115]["Other"]["CellY"] = 50
	
	-- 寻路坐标
	tFactionHoleFight_Cont["Goto"] = {}
	-- 左方铜矿车
	tFactionHoleFight_Cont["Goto"][23055] = {}
	tFactionHoleFight_Cont["Goto"][23055]["CellX"] = 230
	tFactionHoleFight_Cont["Goto"][23055]["CellY"] = 306
	tFactionHoleFight_Cont["Goto"][23055]["MapId"] = 10348
	-- 右方铜矿车
	tFactionHoleFight_Cont["Goto"][23073] = {}
	tFactionHoleFight_Cont["Goto"][23073]["CellX"] = 377
	tFactionHoleFight_Cont["Goto"][23073]["CellY"] = 231
	tFactionHoleFight_Cont["Goto"][23073]["MapId"] = 10348
	-- 下方铜矿车
	tFactionHoleFight_Cont["Goto"][23072] = {}
	tFactionHoleFight_Cont["Goto"][23072]["CellX"] = 370
	tFactionHoleFight_Cont["Goto"][23072]["CellY"] = 370
	tFactionHoleFight_Cont["Goto"][23072]["MapId"] = 10348
	-- 帮派铜矿车
	tFactionHoleFight_Cont["Goto"][23074] = {}
	tFactionHoleFight_Cont["Goto"][23074]["CellX"] = 309
	tFactionHoleFight_Cont["Goto"][23074]["CellY"] = 260
	tFactionHoleFight_Cont["Goto"][23074]["MapId"] = 10348
	-- 额外铜矿车
	tFactionHoleFight_Cont["Goto"][23075] = {}
	tFactionHoleFight_Cont["Goto"][23075]["CellX"] = 118
	tFactionHoleFight_Cont["Goto"][23075]["CellY"] = 112
	tFactionHoleFight_Cont["Goto"][23075]["MapId"] = 10348
	-- 左方银矿车
	tFactionHoleFight_Cont["Goto"][23054] = {}
	tFactionHoleFight_Cont["Goto"][23054]["CellX"] = 237
	tFactionHoleFight_Cont["Goto"][23054]["CellY"] = 358
	tFactionHoleFight_Cont["Goto"][23054]["MapId"] = 10348
	-- 右方银矿车
	tFactionHoleFight_Cont["Goto"][23069] = {}
	tFactionHoleFight_Cont["Goto"][23069]["CellX"] = 306
	tFactionHoleFight_Cont["Goto"][23069]["CellY"] = 183
	tFactionHoleFight_Cont["Goto"][23069]["MapId"] = 10348
	-- 下方银矿车
	tFactionHoleFight_Cont["Goto"][23068] = {}
	tFactionHoleFight_Cont["Goto"][23068]["CellX"] = 404
	tFactionHoleFight_Cont["Goto"][23068]["CellY"] = 349
	tFactionHoleFight_Cont["Goto"][23068]["MapId"] = 10348
	-- 帮派银矿车
	tFactionHoleFight_Cont["Goto"][23070] = {}
	tFactionHoleFight_Cont["Goto"][23070]["CellX"] = 285
	tFactionHoleFight_Cont["Goto"][23070]["CellY"] = 287
	tFactionHoleFight_Cont["Goto"][23070]["MapId"] = 10348
	-- 额外银矿车
	tFactionHoleFight_Cont["Goto"][23071] = {}
	tFactionHoleFight_Cont["Goto"][23071]["CellX"] = 147
	tFactionHoleFight_Cont["Goto"][23071]["CellY"] = 195
	tFactionHoleFight_Cont["Goto"][23071]["MapId"] = 10348
	-- 黄金矿工
	tFactionHoleFight_Cont["Goto"][23053] = {}
	tFactionHoleFight_Cont["Goto"][23053]["CellX"] = 370
	tFactionHoleFight_Cont["Goto"][23053]["CellY"] = 351
	tFactionHoleFight_Cont["Goto"][23053]["MapId"] = 10348
	
	-- 传送相关配置
	tFactionHoleFight_Cont["ChgMap"] = {}
	-- 血色矿山
	tFactionHoleFight_Cont["ChgMap"][10348] = {}
	tFactionHoleFight_Cont["ChgMap"][10348]["MapId"] = 10348
	tFactionHoleFight_Cont["ChgMap"][10348]["CellX"] = {}
	tFactionHoleFight_Cont["ChgMap"][10348]["CellX"][1] = 161
	tFactionHoleFight_Cont["ChgMap"][10348]["CellX"][2] = 244
	tFactionHoleFight_Cont["ChgMap"][10348]["CellX"][3] = 283
	tFactionHoleFight_Cont["ChgMap"][10348]["CellX"][4] = 354
	tFactionHoleFight_Cont["ChgMap"][10348]["CellY"] = {}
	tFactionHoleFight_Cont["ChgMap"][10348]["CellY"][1] = 261
	tFactionHoleFight_Cont["ChgMap"][10348]["CellY"][2] = 305
	tFactionHoleFight_Cont["ChgMap"][10348]["CellY"][3] = 269
	tFactionHoleFight_Cont["ChgMap"][10348]["CellY"][4] = 225
	tFactionHoleFight_Cont["ChgMap"][10348]["Range"] = 5
	-- 梅老板
	tFactionHoleFight_Cont["ChgMap"][23058] = {}
	-- 普通服
	tFactionHoleFight_Cont["ChgMap"][23058]["MapId"] = 1002
	tFactionHoleFight_Cont["ChgMap"][23058]["CellX"] = 340
	tFactionHoleFight_Cont["ChgMap"][23058]["CellY"] = 323
	tFactionHoleFight_Cont["ChgMap"][23058]["Range"] = 5
	-- 交易服
	tFactionHoleFight_Cont["ChgMap"][23058][1] = {}
	tFactionHoleFight_Cont["ChgMap"][23058][1]["MapId"] = 10364
	tFactionHoleFight_Cont["ChgMap"][23058][1]["CellX"] = 320
	tFactionHoleFight_Cont["ChgMap"][23058][1]["CellY"] = 279
	tFactionHoleFight_Cont["ChgMap"][23058][1]["Range"] = 5
	-- Boss
	tFactionHoleFight_Cont["ChgMap"][4807] = {}
	tFactionHoleFight_Cont["ChgMap"][4807]["MapId"] = 10348
	tFactionHoleFight_Cont["ChgMap"][4807]["CellX"] = 158
	tFactionHoleFight_Cont["ChgMap"][4807]["CellY"] = 170
	tFactionHoleFight_Cont["ChgMap"][4807]["Range"] = 5
	-- 矿山淘金客
	tFactionHoleFight_Cont["ChgMap"][23059] = {}
	tFactionHoleFight_Cont["ChgMap"][23059]["MapId"] = 10348
	tFactionHoleFight_Cont["ChgMap"][23059]["CellX"] = 345
	tFactionHoleFight_Cont["ChgMap"][23059]["CellY"] = 326
	tFactionHoleFight_Cont["ChgMap"][23059]["Range"] = 5
	-- 回双龙城
	tFactionHoleFight_Cont["ChgMap"][1002] = {}
	tFactionHoleFight_Cont["ChgMap"][1002]["MapId"] = 1002
	tFactionHoleFight_Cont["ChgMap"][1002]["CellX"] = 340
	tFactionHoleFight_Cont["ChgMap"][1002]["CellY"] = 325
	-- 回双龙城（交易服）
	tFactionHoleFight_Cont["ChgMap"][10364] = {}
	tFactionHoleFight_Cont["ChgMap"][10364]["MapId"] = 10364
	tFactionHoleFight_Cont["ChgMap"][10364]["CellX"] = 311
	tFactionHoleFight_Cont["ChgMap"][10364]["CellY"] = 289
	
	-- BOSS刷新位置
	tFactionHoleFight_Cont["Boss"] = {}
	-- 【BOSS】矿山之王
	tFactionHoleFight_Cont["Boss"][10348] = {}
	tFactionHoleFight_Cont["Boss"][10348]["MapId"] = 10348
	tFactionHoleFight_Cont["Boss"][10348]["PosX"] = 157
	tFactionHoleFight_Cont["Boss"][10348]["PosY"] = 169
	tFactionHoleFight_Cont["Boss"][10348]["MonsterId"] = 4807
	tFactionHoleFight_Cont["Boss"][10348]["GenId"] = 25131
	
	-- 全服邀请
	tFactionHoleFight_Cont["MapId"] = 1002
	tFactionHoleFight_Cont["Invite_Pos"] ={}
	tFactionHoleFight_Cont["Invite_Pos"][1] = {}
	tFactionHoleFight_Cont["Invite_Pos"][1]["X"] = 340
	tFactionHoleFight_Cont["Invite_Pos"][1]["Y"] = 322
	
	tFactionHoleFight_Cont["Invite_Pos"][2] = {}
	tFactionHoleFight_Cont["Invite_Pos"][2]["X"] = 340
	tFactionHoleFight_Cont["Invite_Pos"][2]["Y"] = 321
	
	tFactionHoleFight_Cont["Invite_Pos"][3] = {}
	tFactionHoleFight_Cont["Invite_Pos"][3]["X"] = 340
	tFactionHoleFight_Cont["Invite_Pos"][3]["Y"] = 324
	
	tFactionHoleFight_Cont["Invite_Pos"][4] = {}
	tFactionHoleFight_Cont["Invite_Pos"][4]["X"] = 340
	tFactionHoleFight_Cont["Invite_Pos"][4]["Y"] = 325
	
	tFactionHoleFight_Cont["Invite_Pos"][5] = {}
	tFactionHoleFight_Cont["Invite_Pos"][5]["X"] = 339
	tFactionHoleFight_Cont["Invite_Pos"][5]["Y"] = 322
	
	tFactionHoleFight_Cont["Invite_Pos"][6] = {}
	tFactionHoleFight_Cont["Invite_Pos"][6]["X"] = 339
	tFactionHoleFight_Cont["Invite_Pos"][6]["Y"] = 323
	
	tFactionHoleFight_Cont["Invite_Pos"][7] = {}
	tFactionHoleFight_Cont["Invite_Pos"][7]["X"] = 339
	tFactionHoleFight_Cont["Invite_Pos"][7]["Y"] = 324
	
	tFactionHoleFight_Cont["Invite_Pos"][8] = {}
	tFactionHoleFight_Cont["Invite_Pos"][8]["X"] = 339
	tFactionHoleFight_Cont["Invite_Pos"][8]["Y"] = 325
	
	
local tFactionHoleFight_Log = {}
	-- 花费270天石增加红包
	tFactionHoleFight_Log["CostEmoney"] = "350	4878	270	270	1	"
	-- 进入活动地图
	tFactionHoleFight_Log["IntoMap"] = "0,0,0,0,12001107,1[1],0,0"
	-- 争霸赛期间进入活动地图
	tFactionHoleFight_Log["IntoMapForFighting"] = "0,0,0,0,12001107,1[7],0,0"
	-- 争霸赛期间杀人
	tFactionHoleFight_Log["KillPeople"] = "0,0,0,0,12001107,1[8],0,0"
	-- 额度兑换征服币
	tFactionHoleFight_Log["Rob"] = "0,0,0,0,12001107,1[9],0,%d"
	-- 进入活动地图 350	21992
	tFactionHoleFight_Log["EnterMapEmoneyLog"] = "350	21992	0	0	1	"
	-- 击杀Boss     350	21996
	tFactionHoleFight_Log["KillBossEmoneyLog"] = "350	21996	0	0	1	"
	-- 争霸赛抢红包
	tFactionHoleFight_Log["RedEnvelopesEmoneyLog"] = "350	22002	0	0	1	"
	
-- 掩码表
local tFactionHoleFight_Stc = {}
	-- 记录争霸赛期间所获征服币额度（现有），相对3天清一次
	tFactionHoleFight_Stc["FightPoint"] = {}									-- 1
	tFactionHoleFight_Stc["FightPoint"]["EventType"] = 179
	tFactionHoleFight_Stc["FightPoint"]["DataType"] = 08
	tFactionHoleFight_Stc["FightPoint"]["Clear"] = 3
	-- 记录争霸赛期间杀怪数
	tFactionHoleFight_Stc["KillMonsterNum"] = {}								-- 2
	tFactionHoleFight_Stc["KillMonsterNum"]["EventType"] = 179
	tFactionHoleFight_Stc["KillMonsterNum"]["DataType"] = 09
	tFactionHoleFight_Stc["KillMonsterNum"]["Clear"] = 1
	tFactionHoleFight_Stc["KillMonsterNum"]["Reward"] = 500
	tFactionHoleFight_Stc["KillMonsterNum"]["Flag"] = 1000
	-- 记录抢红包CD，相对3s清一次
	tFactionHoleFight_Stc["CD"] = {}											-- 3
	tFactionHoleFight_Stc["CD"]["EventType"] = 179
	tFactionHoleFight_Stc["CD"]["DataType"] = 10
	tFactionHoleFight_Stc["CD"]["Clear"] = 3
	-- 记录增加红包次数
	tFactionHoleFight_Stc["Add"] = {}											-- 4
	tFactionHoleFight_Stc["Add"]["EventType"] = 179
	tFactionHoleFight_Stc["Add"]["DataType"] = 11
	tFactionHoleFight_Stc["Add"]["Clear"] = 1
	tFactionHoleFight_Stc["Add"]["Limit"] = 5
	-- 记录玩家抢到的红包总数
	tFactionHoleFight_Stc["Rob"] = {}											-- 5
	tFactionHoleFight_Stc["Rob"]["EventType"] = 179
	tFactionHoleFight_Stc["Rob"]["DataType"] = 12
	tFactionHoleFight_Stc["Rob"]["Clear"] = 1
	-- 记录争霸赛期间杀人数
	tFactionHoleFight_Stc["KillPeopleNum"] = {}									-- 6
	tFactionHoleFight_Stc["KillPeopleNum"]["EventType"] = 179
	tFactionHoleFight_Stc["KillPeopleNum"]["DataType"] = 16
	tFactionHoleFight_Stc["KillPeopleNum"]["Clear"] = 1
	tFactionHoleFight_Stc["KillPeopleNum"]["Reward"] = 3
	tFactionHoleFight_Stc["KillPeopleNum"]["Flag"] = 1000
	-- 记录争霸赛杀怪所获征服币额度（总），相对3天清一次
	tFactionHoleFight_Stc["MonsterFightPoint"] = {}								-- 7
	tFactionHoleFight_Stc["MonsterFightPoint"]["EventType"] = 179
	tFactionHoleFight_Stc["MonsterFightPoint"]["DataType"] = 35
	tFactionHoleFight_Stc["MonsterFightPoint"]["Clear"] = 3
	-- 记录每日活动时间内非占领帮派成员进入血色矿山的次数
	tFactionHoleFight_Stc["IntoMap"] = {}										-- 8
	tFactionHoleFight_Stc["IntoMap"]["EventType"] = 179
	tFactionHoleFight_Stc["IntoMap"]["DataType"] = 73
	tFactionHoleFight_Stc["IntoMap"]["Clear"] = 1
	-- 记录每日活动时间内非占领帮派成员进入血色矿山的次数
	tFactionHoleFight_Stc["GetLottery"] = {}									-- 9
	tFactionHoleFight_Stc["GetLottery"]["EventType"] = 179
	tFactionHoleFight_Stc["GetLottery"]["DataType"] = 75
	tFactionHoleFight_Stc["GetLottery"]["Clear"] = 1
	-- 记录打开竞技场礼包的次数`相对一周清一次
	tFactionHoleFight_Stc["UseLimitPack"] = {}									-- 10
	-- 竞技场气力精装包
	tFactionHoleFight_Stc["UseLimitPack"][3310528] = {}
	tFactionHoleFight_Stc["UseLimitPack"][3310528]["EventType"] = 181
	tFactionHoleFight_Stc["UseLimitPack"][3310528]["DataType"] = 84
	tFactionHoleFight_Stc["UseLimitPack"][3310528]["Clear"] = 1
	tFactionHoleFight_Stc["UseLimitPack"][3310528]["Limit"] = 10
	-- 竞技场气力尊享包
	tFactionHoleFight_Stc["UseLimitPack"][3310529] = {}
	tFactionHoleFight_Stc["UseLimitPack"][3310529]["EventType"] = 181
	tFactionHoleFight_Stc["UseLimitPack"][3310529]["DataType"] = 85
	tFactionHoleFight_Stc["UseLimitPack"][3310529]["Clear"] = 1
	tFactionHoleFight_Stc["UseLimitPack"][3310529]["Limit"] = 2
	-- 竞技场精粹精装包
	tFactionHoleFight_Stc["UseLimitPack"][3310530] = {}
	tFactionHoleFight_Stc["UseLimitPack"][3310530]["EventType"] = 181
	tFactionHoleFight_Stc["UseLimitPack"][3310530]["DataType"] = 86
	tFactionHoleFight_Stc["UseLimitPack"][3310530]["Clear"] = 1
	tFactionHoleFight_Stc["UseLimitPack"][3310530]["Limit"] = 5
	-- 竞技场精粹尊享包
	tFactionHoleFight_Stc["UseLimitPack"][3310531] = {}
	tFactionHoleFight_Stc["UseLimitPack"][3310531]["EventType"] = 181
	tFactionHoleFight_Stc["UseLimitPack"][3310531]["DataType"] = 87
	tFactionHoleFight_Stc["UseLimitPack"][3310531]["Clear"] = 1
	tFactionHoleFight_Stc["UseLimitPack"][3310531]["Limit"] = 1
	
	
-- 奖励表
local tFactionHoleFight_Reward = {}
	-- 兑换气力值奖励
	tFactionHoleFight_Reward["Exchange"] = {}
	tFactionHoleFight_Reward["Exchange"]["RewardStrengthValue"] = {}    
	tFactionHoleFight_Reward["Exchange"]["RewardStrengthValue"]["Value"] = 0
	tFactionHoleFight_Reward["Exchange"]["LogId"] = 12001107
	
	-- 额外奖励·矿山剿匪包
	tFactionHoleFight_Reward["Extra"] = {}
	tFactionHoleFight_Reward["Extra"]["Id"] = 3310025
	tFactionHoleFight_Reward["Extra"]["Attr"] = "0 1"
	
	-- Boss掉落到背包的奖励
	tFactionHoleFight_Reward["Boss"] = {}
	-- 掉落+3赤练石（普通服）
	tFactionHoleFight_Reward["Boss"][1] = {}
	tFactionHoleFight_Reward["Boss"][1][730003] = {}
	tFactionHoleFight_Reward["Boss"][1][730003]["Attr"] = "0 1 3 10080 1"
	-- 掉落+3赤练石（交易服）
	tFactionHoleFight_Reward["Boss"][2] = {}
	tFactionHoleFight_Reward["Boss"][2][730003] = {}
	tFactionHoleFight_Reward["Boss"][2][730003]["Attr"] = "0 1 0 10080 1"
	-- 掉落通神丹（普通服）
	tFactionHoleFight_Reward["Boss"][1][3003125] = {}
	tFactionHoleFight_Reward["Boss"][1][3003125]["Attr"] = "0 3 3"
	-- 掉落通神丹（交易服）
	tFactionHoleFight_Reward["Boss"][2][3003125] = {}
	tFactionHoleFight_Reward["Boss"][2][3003125]["Attr"] = "0 3"
	-- 掉落究极通神丹（普通服）
	tFactionHoleFight_Reward["Boss"][1][3003126] = {}
	tFactionHoleFight_Reward["Boss"][1][3003126]["Attr"] = "0 2 3"
	-- 掉落究极通神丹（交易服）
	tFactionHoleFight_Reward["Boss"][2][3003126] = {}
	tFactionHoleFight_Reward["Boss"][2][3003126]["Attr"] = "0 2"
	
	-- 每日第一次进矿洞给一个抽奖券
	tFactionHoleFight_Reward["GetLottery"] = {}
	tFactionHoleFight_Reward["GetLottery"]["Id"] = 3310001
	tFactionHoleFight_Reward["GetLottery"]["Attr"] = "0 1"
	-- 每日第一次进矿洞给一个矿山签到修为包
	tFactionHoleFight_Reward["GetSignPack"] = {}
	tFactionHoleFight_Reward["GetSignPack"]["Id"] = 3310255
	tFactionHoleFight_Reward["GetSignPack"]["Attr"] = "0 1"
	
	-- 矿山签到修为包
	tFactionHoleFight_Reward[3310255] = {}
	tFactionHoleFight_Reward[3310255]["DeleteItem"] = {}
	tFactionHoleFight_Reward[3310255]["DeleteItem"][1] = {}
	tFactionHoleFight_Reward[3310255]["DeleteItem"][1]["Id"] = 3310255
	tFactionHoleFight_Reward[3310255]["RewardRepairValue"] = {}
	tFactionHoleFight_Reward[3310255]["RewardRepairValue"]["Value"] = 300
	tFactionHoleFight_Reward[3310255]["LogId"] = 12001107
	
	-- 竞技场气力精装包
	tFactionHoleFight_Reward[3310528] = {}
	tFactionHoleFight_Reward[3310528]["DeleteItem"] = {}
	tFactionHoleFight_Reward[3310528]["DeleteItem"][1] = {}
	tFactionHoleFight_Reward[3310528]["DeleteItem"][1]["Id"] = 3310528
	tFactionHoleFight_Reward[3310528]["RewardStrengthValue"] = {}
    tFactionHoleFight_Reward[3310528]["RewardStrengthValue"]["Value"] = 300
	tFactionHoleFight_Reward[3310528]["RewardEffect"] = {}
	tFactionHoleFight_Reward[3310528]["RewardEffect"]["SzObj"] = "self"
	tFactionHoleFight_Reward[3310528]["RewardEffect"]["Effect"] = "angelwing"
	tFactionHoleFight_Reward[3310528]["LogId"] = 12001107
	
	-- 竞技场气力尊享包
	tFactionHoleFight_Reward[3310529] = {}
	tFactionHoleFight_Reward[3310529]["DeleteItem"] = {}
	tFactionHoleFight_Reward[3310529]["DeleteItem"][1] = {}
	tFactionHoleFight_Reward[3310529]["DeleteItem"][1]["Id"] = 3310529
	tFactionHoleFight_Reward[3310529]["RewardStrengthValue"] = {}
	tFactionHoleFight_Reward[3310529]["RewardStrengthValue"]["Value"] = 1000
	tFactionHoleFight_Reward[3310529]["RewardEffect"] = {}
	tFactionHoleFight_Reward[3310529]["RewardEffect"]["SzObj"] = "self"
	tFactionHoleFight_Reward[3310529]["RewardEffect"]["Effect"] = "angelwing"
	tFactionHoleFight_Reward[3310529]["LogId"] = 12001107
	
	-- 竞技场精粹精装包
	tFactionHoleFight_Reward[3310530] = {}
	tFactionHoleFight_Reward[3310530]["DeleteItem"] = {}
	tFactionHoleFight_Reward[3310530]["DeleteItem"][1] = {}
	tFactionHoleFight_Reward[3310530]["DeleteItem"][1]["Id"] = 3310530
	tFactionHoleFight_Reward[3310530]["RewardItem"] = {}
	tFactionHoleFight_Reward[3310530]["RewardItem"][1] = {}
	tFactionHoleFight_Reward[3310530]["RewardItem"][1]["Id"] = 4060001
	tFactionHoleFight_Reward[3310530]["RewardItem"][1]["Attr"] = "0 10 3"
	tFactionHoleFight_Reward[3310530]["RewardEffect"] = {}
	tFactionHoleFight_Reward[3310530]["RewardEffect"]["SzObj"] = "self"
	tFactionHoleFight_Reward[3310530]["RewardEffect"]["Effect"] = "angelwing"
	tFactionHoleFight_Reward[3310530]["LogId"] = 12001107
	
	-- 竞技场精粹尊享包
	tFactionHoleFight_Reward[3310531] = {}
	tFactionHoleFight_Reward[3310531]["DeleteItem"] = {}
	tFactionHoleFight_Reward[3310531]["DeleteItem"][1] = {}
	tFactionHoleFight_Reward[3310531]["DeleteItem"][1]["Id"] = 3310531
	tFactionHoleFight_Reward[3310531]["RewardItem"] = {}
	tFactionHoleFight_Reward[3310531]["RewardItem"][1] = {}
	tFactionHoleFight_Reward[3310531]["RewardItem"][1]["Id"] = 4060001
	tFactionHoleFight_Reward[3310531]["RewardItem"][1]["Attr"] = "0 50 3"
	tFactionHoleFight_Reward[3310531]["RewardEffect"] = {}
	tFactionHoleFight_Reward[3310531]["RewardEffect"]["SzObj"] = "self"
	tFactionHoleFight_Reward[3310531]["RewardEffect"]["Effect"] = "angelwing"
	tFactionHoleFight_Reward[3310531]["LogId"] = 12001107
	
	
-- 概率表
local tFactionHoleFight_Random = {}
	-- 抢红包概率
	tFactionHoleFight_Random["Rob"] = {}
	tFactionHoleFight_Random["Rob"][1] = {}
	tFactionHoleFight_Random["Rob"][1]["ItemChanceSum"] = 10000               
	-- 20%抢到
	tFactionHoleFight_Random["Rob"][1][1] = {}
	tFactionHoleFight_Random["Rob"][1][1]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Rob"][1][1]["ItemChance"] = 2000
	tFactionHoleFight_Random["Rob"][1][1]["Item"] = 1
	-- 没抢到
	tFactionHoleFight_Random["Rob"][1][2] = {}
	tFactionHoleFight_Random["Rob"][1][2]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Rob"][1][2]["ItemChance"] = 8000
	tFactionHoleFight_Random["Rob"][1][2]["Item"] = 0
	
	-- Boss掉落
	tFactionHoleFight_Random["Boss"] = {}
	-- 矿山之王
	tFactionHoleFight_Random["Boss"][4807] = {}
	tFactionHoleFight_Random["Boss"][4807]["MustDrop"] = {}
	tFactionHoleFight_Random["Boss"][4807]["MustDrop"][1] = 3304327
	tFactionHoleFight_Random["Boss"][4807]["MustDrop"][2] = 723340
	tFactionHoleFight_Random["Boss"][4807]["MustDrop"][3] = 723340
	tFactionHoleFight_Random["Boss"][4807]["MustDrop"][4] = 723340
	tFactionHoleFight_Random["Boss"][4807]["MustDrop"][5] = 723340
	tFactionHoleFight_Random["Boss"][4807]["MustDrop"][6] = 723340
	tFactionHoleFight_Random["Boss"][4807]["MustIntoBag"] = {}
	tFactionHoleFight_Random["Boss"][4807]["MustIntoBag"][1] = 730003
	tFactionHoleFight_Random["Boss"][4807]["MustIntoBag"][2] = 3003125
	tFactionHoleFight_Random["Boss"][4807]["MustIntoBag"][3] = 3003126
	-- 100%掉银矿石
	tFactionHoleFight_Random["Boss"][4807][1] = {}
	tFactionHoleFight_Random["Boss"][4807][1]["RandomNum"] = 20
	tFactionHoleFight_Random["Boss"][4807][1]["ItemChanceSum"] = 10000               
	tFactionHoleFight_Random["Boss"][4807][1][1] = {}
	tFactionHoleFight_Random["Boss"][4807][1][1]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][1][1]["ItemChance"] = 3200
	tFactionHoleFight_Random["Boss"][4807][1][1]["Item"] = 3310007
	tFactionHoleFight_Random["Boss"][4807][1][1]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][1][2] = {}
	tFactionHoleFight_Random["Boss"][4807][1][2]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][1][2]["ItemChance"] = 2500
	tFactionHoleFight_Random["Boss"][4807][1][2]["Item"] = 3310008
	tFactionHoleFight_Random["Boss"][4807][1][2]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][1][3] = {}
	tFactionHoleFight_Random["Boss"][4807][1][3]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][1][3]["ItemChance"] = 2000
	tFactionHoleFight_Random["Boss"][4807][1][3]["Item"] = 3310009
	tFactionHoleFight_Random["Boss"][4807][1][3]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][1][4] = {}
	tFactionHoleFight_Random["Boss"][4807][1][4]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][1][4]["ItemChance"] = 1500
	tFactionHoleFight_Random["Boss"][4807][1][4]["Item"] = 3310010
	tFactionHoleFight_Random["Boss"][4807][1][4]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][1][5] = {}
	tFactionHoleFight_Random["Boss"][4807][1][5]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][1][5]["ItemChance"] = 800
	tFactionHoleFight_Random["Boss"][4807][1][5]["Item"] = 3310011
	tFactionHoleFight_Random["Boss"][4807][1][5]["Num"] = 1
	
	-- 100%掉金矿石
	tFactionHoleFight_Random["Boss"][4807][2] = {}
	tFactionHoleFight_Random["Boss"][4807][2]["RandomNum"] = 5
	tFactionHoleFight_Random["Boss"][4807][2]["ItemChanceSum"] = 10000               
	tFactionHoleFight_Random["Boss"][4807][2][1] = {}
	tFactionHoleFight_Random["Boss"][4807][2][1]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][2][1]["ItemChance"] = 3200
	tFactionHoleFight_Random["Boss"][4807][2][1]["Item"] = 3310002
	tFactionHoleFight_Random["Boss"][4807][2][1]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][2][2] = {}
	tFactionHoleFight_Random["Boss"][4807][2][2]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][2][2]["ItemChance"] = 2500
	tFactionHoleFight_Random["Boss"][4807][2][2]["Item"] = 3310003
	tFactionHoleFight_Random["Boss"][4807][2][2]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][2][3] = {}
	tFactionHoleFight_Random["Boss"][4807][2][3]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][2][3]["ItemChance"] = 2000
	tFactionHoleFight_Random["Boss"][4807][2][3]["Item"] = 3310004
	tFactionHoleFight_Random["Boss"][4807][2][3]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][2][4] = {}
	tFactionHoleFight_Random["Boss"][4807][2][4]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][2][4]["ItemChance"] = 1500
	tFactionHoleFight_Random["Boss"][4807][2][4]["Item"] = 3310005
	tFactionHoleFight_Random["Boss"][4807][2][4]["Num"] = 1
	tFactionHoleFight_Random["Boss"][4807][2][5] = {}
	tFactionHoleFight_Random["Boss"][4807][2][5]["RandomItemChanceType"] = 2
	tFactionHoleFight_Random["Boss"][4807][2][5]["ItemChance"] = 800
	tFactionHoleFight_Random["Boss"][4807][2][5]["Item"] = 3310006
	tFactionHoleFight_Random["Boss"][4807][2][5]["Num"] = 1
	
	
-- 排行榜模板
	-- 抢红包排行
	tRankingFunc_Info[23059] = {}
	tRankingFunc_Info[23059]["DayTime"] = {}
	tRankingFunc_Info[23059]["DayTime"][1] = "21:00 22:30"
	tRankingFunc_Info[23059]["ResetTime"] = {}
	tRankingFunc_Info[23059]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[23059]["Global"] = {52753,52754,52755,52756}
	tRankingFunc_Info[23059]["RankNum"] = 10
	-- 征服币额度排行
	tRankingFunc_Info[23079] = {}
	tRankingFunc_Info[23079]["DayTime"] = {}
	tRankingFunc_Info[23079]["DayTime"][1] = "21:00 22:30"
	tRankingFunc_Info[23079]["ResetTime"] = {}
	tRankingFunc_Info[23079]["ResetTime"][1] = "00:00 00:05"
	tRankingFunc_Info[23079]["Global"] = {52761,52762,52763,52764,52765,52766,52767}
	tRankingFunc_Info[23079]["RankNum"] = 20
	tRankingFunc_Info[23079]["RankMode"] = 3
	
	
-----------------------------------------------逻辑部分-----------------------------------------
-- 判断是否为占领帮派帮主
function FactionHoleFight_IsOccupant()
	local nGuildId = Get_MapOwnerId(tFactionHoleFight_Cont["FightMapId"])
	local nGuildWangId = 0
	if nGuildId ~= 0 then
		nGuildWangId = Get_SynWangId(nGuildId)
	end
	
	local nUserId = Get_UserId()
	
	-- 是否为占领帮派帮主
	if nUserId ~= nGuildWangId then
		return false
	else
		return true
	end
end

-- 判断争霸赛时间
function FactionHoleFight_IsFightingTime()
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	
	-- 判断争霸赛时间
	for i=1, #tActivityTime["FactionHoleFight"]["FightTime"]["Week"] do
		-- 周一或周五
		if Sys_ChkWeedTime(tActivityTime["FactionHoleFight"]["FightTime"]["Week"][i]) then
			local nFightIndex = Get_SysDynaGlobalData(nFightGlobal,0)
			
			if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["FightTime"][nFightIndex]) then
				return false
			else
				return true
			end
		end
	end
	
	return false
end

-- 重置争霸战时间及发奖状态
function FactionHoleFight_ResetGlobal()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nGlobalId = tFactionHoleFight_Cont["FightGlobal"]
	Sys_SetSynaGlobalData(nGlobalId,0,1)
	Sys_SetSynaGlobalData(nGlobalId,1,50000)
	Sys_SetSynaGlobalData(nGlobalId,2,0)
	Sys_SetSynaGlobalData(nGlobalId,3,0)
end

-- 进入血色矿山检测
function FactionHoleFight_IntoMapChk(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断每日活动时间
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		return
	end
	
	local nWinnerGuildId = Get_MapOwnerId(tFactionHoleFight_Cont["FightMapId"])
	local nUserId = Get_UserId()
	local nGuildId = Get_UserGuildId(nUserId)
	
	-- 判断占领帮派
	if nGuildId == nWinnerGuildId then
		FactionHoleFight_ChgMap(10348)
		Sys_SaveActionFestivalLog(tFactionHoleFight_Log["IntoMap"])
		return
	else 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
end

-- 传送
function FactionHoleFight_ChgMap(nIndex,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 血色矿山随机传送点并添加提示
	if nIndex == 10348 then
		local nRandomNum = math.random(1,4)
		local nMapId = tFactionHoleFight_Cont["ChgMap"][nIndex]["MapId"]
		local nCellX = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellX"][nRandomNum]
		local nCellY = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellY"][nRandomNum]
		local nRange = tFactionHoleFight_Cont["ChgMap"][nIndex]["Range"]
		
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,1,nNowUserId)
		
		
		-- 记录emoneylog
		Sys_SaveEmoneyBuy(tFactionHoleFight_Log["EnterMapEmoneyLog"])
		
		-- 判断是否处于争霸赛期间
		if FactionHoleFight_IsFightingTime() then
			User_TalkChannel2005(tFactionHoleFight_Text[2005]["FightingTimeIntoMap"])
			Sys_MsgBox(tFactionHoleFight_Text[2005]["FightingTimeIntoMap"])
		else
			User_TalkChannel2005(tFactionHoleFight_Text[2005]["IntoMap"])
		end
		
		-- 每日第一次进矿洞给一个抽奖券
		local nEvent_9 = tFactionHoleFight_Stc["GetLottery"]["EventType"]
		local nType_9 = tFactionHoleFight_Stc["GetLottery"]["DataType"]
		local nClearTime_9 = tFactionHoleFight_Stc["GetLottery"]["Clear"]
		
		-- 隔1天重置掩码
		if Task_StcInterval(nEvent_9,nType_9,nClearTime_9,4) then
			Task_SetStatistic(nEvent_9,nType_9,0,1)
			Task_SetStcTimestamp(nEvent_9,nType_9,0)
		end
		
		local nData_9 = Get_UserStatisticValue(nEvent_9,nType_9)
		
		if nData_9 == 0 then
			Task_SetStatistic(nEvent_9,nType_9,1,1)
			Task_SetStcTimestamp(nEvent_9,nType_9,0)
			
			-- local nItemId1 = tFactionHoleFight_Reward["GetLottery"]["Id"]
			-- local sAttr1 = tFactionHoleFight_Reward["GetLottery"]["Attr"]
			-- Item_AddNewItem(nItemId1,sAttr1)
			local nItemId2 = tFactionHoleFight_Reward["GetSignPack"]["Id"]
			local sAttr2 = tFactionHoleFight_Reward["GetSignPack"]["Attr"]
			Item_AddNewItem(nItemId2,sAttr2)
			
			-- User_TalkChannel2005(tFactionHoleFight_Text[2005]["GetLottery"])
			User_TalkChannel2005(tFactionHoleFight_Text[2005]["GetSignPack"])
		end
	elseif nIndex == 23058 then
		local nMapId = tFactionHoleFight_Cont["ChgMap"][nIndex]["MapId"]
		local nCellX = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellX"]
		local nCellY = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellY"]
		local nRange = tFactionHoleFight_Cont["ChgMap"][nIndex]["Range"]
		
		-- 判断是否交易服
		if OhterNpc_ChkTradeServer() then
			nMapId = tFactionHoleFight_Cont["ChgMap"][nIndex][1]["MapId"]
			nCellX = tFactionHoleFight_Cont["ChgMap"][nIndex][1]["CellX"]
			nCellY = tFactionHoleFight_Cont["ChgMap"][nIndex][1]["CellY"]
			nRange = tFactionHoleFight_Cont["ChgMap"][nIndex][1]["Range"]
		end
		
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,1,nNowUserId)
	else
		local nMapId = tFactionHoleFight_Cont["ChgMap"][nIndex]["MapId"]
		local nCellX = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellX"]
		local nCellY = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellY"]
		local nRange = tFactionHoleFight_Cont["ChgMap"][nIndex]["Range"]
		
		User_UserRandBoundTrans(nMapId,nCellX,nCellY,nRange,nRange,1,nNowUserId)
	end
end

-- 踩陷阱二次确认
function FactionHoleFight_BackTwinCityChk(nIndex)
	Sys_MsgBox(tFactionHoleFight_Text[105]["BackCity"],"FactionHoleFight_BackTwinCity</N>" .. nIndex .. "</N>0","NULL")
end

-- 回双龙城
function FactionHoleFight_BackTwinCity(nIndex,nFlag,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nMapId = tFactionHoleFight_Cont["ChgMap"][nIndex]["MapId"]
	local nCellX = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellX"]
	local nCellY = tFactionHoleFight_Cont["ChgMap"][nIndex]["CellY"]
	
	User_ChgMap(nMapId,nCellX,nCellY,1,nNowUserId)
	
	-- 争霸赛结束传送
	if nFlag == 1 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["Out"],"NULL","NULL",nNowUserId)
	end	
end

-- 花费银两进入血色矿山
function FactionHoleFight_IntoMapByMoney(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断每日活动时间
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		return
	end
	
	local nEvent_8 = tFactionHoleFight_Stc["IntoMap"]["EventType"]
	local nType_8 = tFactionHoleFight_Stc["IntoMap"]["DataType"]
	local nClearTime_8 = tFactionHoleFight_Stc["IntoMap"]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_8,nType_8,nClearTime_8,4) then
		Task_SetStatistic(nEvent_8,nType_8,0,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
		return
	end
	
	local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
	
	-- 判断已进入血色矿山次数
	if nData_8 == 0 then
		FactionHoleFight_ChgMap(10348)
		Task_AddStatistic(nEvent_8,nType_8,1,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
		Sys_SaveActionFestivalLog(tFactionHoleFight_Log["IntoMap"])
	elseif nData_8 >= 11 then
		FactionHoleFight_ChgMap(10348)
		Task_AddStatistic(nEvent_8,nType_8,1,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
		Sys_SaveActionFestivalLog(tFactionHoleFight_Log["IntoMap"])
	else
		local nCostMoney = tFactionHoleFight_Cont[nNpcId]["CostMoney"]
		-- 判断银两是否充足
		if User_CanPutMoney2Bag(-nCostMoney) then
			User_AddMoney(-nCostMoney)
			FactionHoleFight_ChgMap(10348)
			Task_AddStatistic(nEvent_8,nType_8,1,1)
			Task_SetStcTimestamp(nEvent_8,nType_8,0)
			
			-- 花费银两加到开采值奖励
			-- local nGlobalId1 = tFactionHoleFight_Cont["GlobalId1"]
			-- local nExploitValue = Get_SysDynaGlobalData(nGlobalId1,5)
			-- nExploitValue = nExploitValue + nCostMoney
			-- Sys_SetSynaGlobalData(nGlobalId1,5,nExploitValue)
			Sys_SaveActionFestivalLog(tFactionHoleFight_Log["IntoMap"])
		else
			LinkNpcGossipFunc_New(nNpcId,"3-1")
		end
	end
end

-- 争霸点兑换气力值
function FactionHoleFight_ExchangeFightPoint(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 争霸赛期间不可兑换
	if FactionHoleFight_IsFightingTime() then
		return
	end
	
	local nEvent = tFactionHoleFight_Stc["FightPoint"]["EventType"]
	local nType = tFactionHoleFight_Stc["FightPoint"]["DataType"]
	local nClearTime = tFactionHoleFight_Stc["FightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent,nType,nClearTime,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nExchange = tFactionHoleFight_Cont[nNpcId]["Exchange"]
	
	-- 额度为0
	if nData == 0 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	-- 额度不足10
	elseif nData < nExchange then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	
	-- 兑换比例10:1
	local nStrength = math.modf(nData/nExchange)
	-- 判断兑换上限
	if nStrength > tFactionHoleFight_Cont[nNpcId]["ExchangeMax"] then
		nStrength = tFactionHoleFight_Cont[nNpcId]["ExchangeMax"]
	end
	
	local nCost = nStrength * nExchange
	
	-- 剩余部分不足10也给换成1点气力值
	if nData - nCost < nExchange and nData ~= nCost and nStrength ~= tFactionHoleFight_Cont[nNpcId]["ExchangeMax"] then
		nCost = nData
		nStrength = nStrength + 1
	end
	
	Task_AddStatistic(nEvent,nType,-nCost,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	local tReward = CommonFunc_Copy(tFactionHoleFight_Reward["Exchange"])
	tReward["RewardStrengthValue"]["Value"] = nStrength
	
	-- 给兑换奖励
	RewardTemplate_UseItemAndMsg(tReward)
	
	local sText = string.format(tFactionHoleFight_Text[nNpcId]["Text343"],nStrength)
	tNpcGossip[nNpcId]["Text341"] = Sys_CenterAline(tFactionHoleFight_Text[nNpcId]["Text341"],29)
	tNpcGossip[nNpcId]["Text343"] = Sys_CenterAline(sText,29)
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end

-- 每日活动时间后传送出地图
function FactionHoleFight_ClearMap()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nMapId = tFactionHoleFight_Cont["ChgMap"][10348]["MapId"]
	-- 判断是否交易服
	if OhterNpc_ChkTradeServer() then
		Map_UserExeFunc(nMapId,-1,"FactionHoleFight_BackTwinCity</N>10364</N>0")
	else
		Map_UserExeFunc(nMapId,-1,"FactionHoleFight_BackTwinCity</N>1002</N>0")
	end
end

-- 设置时间检测
function FactionHoleFight_SetTimeChk(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 是否为占领帮派帮主
	if not FactionHoleFight_IsOccupant() then
		return
	end
	
	local nFlag = 0
	
	-- 判断周一或周五
	for i=1, #tActivityTime["FactionHoleFight"]["FightTime"]["Week"] do
		if Sys_ChkWeedTime(tActivityTime["FactionHoleFight"]["FightTime"]["Week"][i]) then
			nFlag = 1
		end
	end
	
	if nFlag == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 是否在可调整时间内
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["FightTime"]["Choose"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"2-4")
end

-- 争霸赛时间调整
function FactionHoleFight_SetTime(nNpcId,nIndex)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nFlag = 0
	
	-- 判断周一或周五
	for i=1, #tActivityTime["FactionHoleFight"]["FightTime"]["Week"] do
		if Sys_ChkWeedTime(tActivityTime["FactionHoleFight"]["FightTime"]["Week"][i]) then
			nFlag = 1
		end
	end
	
	-- 是否在可调整时间内
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["FightTime"]["Choose"]) or nFlag == 0 then
		return
	end
	
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	-- 是否为占领帮派帮主
	if not FactionHoleFight_IsOccupant() then
		return
	end
	
	-- 调整成功
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	Sys_SetSynaGlobalData(nFightGlobal,0,nIndex)
	
	local sBroadCast = string.format(tFactionHoleFight_Text["BroadCast"]["SetTime"],sUserName,tFactionHoleFight_Text["Time"][nIndex])
	Sys_SystemBroadcast(sBroadCast)
	
	tNpcGossip[nNpcId]["Text351"] = string.format(tFactionHoleFight_Text[nNpcId]["Text351"],tFactionHoleFight_Text["Time"][nIndex])
	LinkNpcGossipFunc_New(nNpcId,"3-5")
end

-- 进入争霸赛检测
function FactionHoleFight_IntoFightMapChk(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断是否处于争霸赛期间
	if FactionHoleFight_IsFightingTime() then
		FactionHoleFight_ChgMap(10348)
		Sys_SaveActionFestivalLog(tFactionHoleFight_Log["IntoMapForFighting"])
	end
end

-- 开启争霸赛出全服公告
function FactionHoleFight_BroadCast()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	Sys_TalkBroadcast(tFactionHoleFight_Text["BroadCast"]["FightBegin"])
	
	-- 移出争霸天骄碑
	local nMapId = tFactionHoleFight_Cont[23079]["Fighting"]["MapId"]
	local nCellX = tFactionHoleFight_Cont[23079]["Fighting"]["CellX"]
	local nCellY = tFactionHoleFight_Cont[23079]["Fighting"]["CellY"]
	Npc_MoveNpcPos(23079,nMapId,nCellX,nCellY)
	
	-- -- 添加全服邀请
	-- if Sys_InviteFilter(3,"metempsychosis >= 0 level >= 80") then
		-- Sys_InviteTrans(tFactionHoleFight_Cont["MapId"],tFactionHoleFight_Cont["Invite_Pos"],10581,10582,3,30)
	-- end
end

-- 争霸赛结束前3分钟出全服公告
function FactionHoleFight_BroadCastForClose()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	Sys_TalkBroadcast(tFactionHoleFight_Text["BroadCast"]["Close"])
	Sys_SystemBroadcast(tFactionHoleFight_Text["BroadCast"]["Close"])
end

-- 争霸赛结束传送出地图并发奖
function FactionHoleFight_ClearMap2()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	local nFightIndex = Get_SysDynaGlobalData(nFightGlobal,0)
	
	-- 不在争霸时间内
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["FightTime"][nFightIndex]) then
		-- 移走淘金客
		local nMapId = tFactionHoleFight_Cont[23059]["NotFighting"]["MapId"]
		local nCellX = tFactionHoleFight_Cont[23059]["NotFighting"]["CellX"]
		local nCellY = tFactionHoleFight_Cont[23059]["NotFighting"]["CellY"]
		Npc_MoveNpcPos(23059,nMapId,nCellX,nCellY)
		-- 移出开奖石碑
		local nMapId = tFactionHoleFight_Cont[23115]["AfterFighting"]["MapId"]
		local nCellX = tFactionHoleFight_Cont[23115]["AfterFighting"]["CellX"]
		local nCellY = tFactionHoleFight_Cont[23115]["AfterFighting"]["CellY"]
		if OhterNpc_ChkTradeServer() then
			nMapId = tFactionHoleFight_Cont[23115]["AfterFighting"][1]["MapId"]
			nCellX = tFactionHoleFight_Cont[23115]["AfterFighting"][1]["CellX"]
			nCellY = tFactionHoleFight_Cont[23115]["AfterFighting"][1]["CellY"]
		end
		Npc_MoveNpcPos(23115,nMapId,nCellX,nCellY)
		-- -- 移走红包宝箱
		-- local nMapId = tFactionHoleFight_Cont[23084]["NotFighting"]["MapId"]
		-- local nCellX = tFactionHoleFight_Cont[23084]["NotFighting"]["CellX"]
		-- local nCellY = tFactionHoleFight_Cont[23084]["NotFighting"]["CellY"]
		-- Npc_MoveNpcPos(23084,nMapId,nCellX,nCellY)
		-- -- 删除脚底光效
		-- Trap_EraseMapTrap(2019)
		
		-- 移走争霸天骄碑
		local nMapId = tFactionHoleFight_Cont[23079]["NotFighting"]["MapId"]
		local nCellX = tFactionHoleFight_Cont[23079]["NotFighting"]["CellX"]
		local nCellY = tFactionHoleFight_Cont[23079]["NotFighting"]["CellY"]
		Npc_MoveNpcPos(23079,nMapId,nCellX,nCellY)
		
		local nMapId = tFactionHoleFight_Cont["ChgMap"][10348]["MapId"]
		-- 判断是否交易服
		if OhterNpc_ChkTradeServer() then
			Map_UserExeFunc(nMapId,-1,"FactionHoleFight_BackTwinCity</N>10364</N>1")
		else
			Map_UserExeFunc(nMapId,-1,"FactionHoleFight_BackTwinCity</N>1002</N>1")
		end
	end
	
	-- 判断发奖时间
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["MailTime"][nFightIndex]) then
		return
	end
	
	local nFlag = Get_SysDynaGlobalData(nFightGlobal,3)
	
	-- 判断是否已发奖
	if nFlag == 1 then
		return
	end
	
	-- 置已发奖状态
	Sys_SetSynaGlobalData(nFightGlobal,3,1)
	
	local nMaxUserId
	local sLastUserName = ""
	local sMaxUserName = ""
	local tRank = RankingFunc_GetNowData(23059)	
	if tRank[1] ~= nil then
		if tRank[1]["Score"] > 0 then
			nMaxUserId = tRank[1]["UserId"]
			sMaxUserName = tRank[1]["UserName"]
		end
	end
	
	local nLastUserId = Get_SysDynaGlobalData(nFightGlobal,2)
	
	if nLastUserId ~= 0 then
		sLastUserName = Get_SysDynaGlobalDataStr(nFightGlobal,5)
	end
	
	-- 判断是否有人获得奖励
	if sMaxUserName == "" and sLastUserName == "" then
		return
	elseif sMaxUserName ~= "" and sLastUserName == "" then
		-- 发奖
		local nActionId = tFactionHoleFight_Cont["ActionId"][1]
		local nExistDay = tFactionHoleFight_Cont["ExistDay"]
		local sSender = tFactionHoleFight_Text["Mail"]["Sender"]
		local sTitle = tFactionHoleFight_Text["Mail"]["Title"]
		local sContent = tFactionHoleFight_Text["Mail"]["Content"][1]
		Sys_SendMail(nMaxUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		
		Sys_SystemBroadcast(string.format(tFactionHoleFight_Text["BroadCast"]["Max"],sMaxUserName))
	elseif sMaxUserName == "" and sLastUserName ~= "" then
		-- 发奖
		local nActionId = tFactionHoleFight_Cont["ActionId"][2]
		local nExistDay = tFactionHoleFight_Cont["ExistDay"]
		local sSender = tFactionHoleFight_Text["Mail"]["Sender"]
		local sTitle = tFactionHoleFight_Text["Mail"]["Title"]
		local sContent = tFactionHoleFight_Text["Mail"]["Content"][2]
		Sys_SendMail(nLastUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent)
		
		Sys_SystemBroadcast(string.format(tFactionHoleFight_Text["BroadCast"]["Last"],sLastUserName))
	else
		-- 发奖
		local nActionId_1 = tFactionHoleFight_Cont["ActionId"][1]
		local nActionId_2 = tFactionHoleFight_Cont["ActionId"][2]
		local nExistDay = tFactionHoleFight_Cont["ExistDay"]
		local sSender = tFactionHoleFight_Text["Mail"]["Sender"]
		local sTitle = tFactionHoleFight_Text["Mail"]["Title"]
		local sContent_1 = tFactionHoleFight_Text["Mail"]["Content"][1]
		local sContent_2 = tFactionHoleFight_Text["Mail"]["Content"][2]
		Sys_SendMail(nMaxUserId,0,0,nActionId_1,0,nExistDay,sSender,sTitle,sContent_1)
		Sys_SendMail(nLastUserId,0,0,nActionId_2,0,nExistDay,sSender,sTitle,sContent_2)
		
		Sys_SystemBroadcast(string.format(tFactionHoleFight_Text["BroadCast"]["LastAndMax"],sLastUserName,sMaxUserName))
	end
end

-- 移出淘金客
function FactionHoleFight_MoveNpc()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	local nFightIndex = Get_SysDynaGlobalData(nFightGlobal,0)
	
	-- 不在争霸时间内
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["FightTime"][nFightIndex]) then
		return false
	end
	
	-- 移出淘金客
	local nMapId = tFactionHoleFight_Cont[23059]["Fighting"]["MapId"]
	local nCellX = tFactionHoleFight_Cont[23059]["Fighting"]["CellX"]
	local nCellY = tFactionHoleFight_Cont[23059]["Fighting"]["CellY"]
	Npc_MoveNpcPos(23059,nMapId,nCellX,nCellY)
	Sys_TalkBroadcast(tFactionHoleFight_Text["BroadCast"]["BrushNpc"])
	
	-- -- 移出红包宝箱
	-- local nMapId = tFactionHoleFight_Cont[23084]["Fighting"]["MapId"]
	-- local nCellX = tFactionHoleFight_Cont[23084]["Fighting"]["CellX"]
	-- local nCellY = tFactionHoleFight_Cont[23084]["Fighting"]["CellY"]
	-- Npc_MoveNpcPos(23084,nMapId,nCellX,nCellY)
	
	-- -- 创建脚底光效
	-- local nType = tFactionHoleFight_Cont["Trap"]["Type"]
	-- local nLook = tFactionHoleFight_Cont["Trap"]["Look"]
	-- local nOwnerId = tFactionHoleFight_Cont["Trap"]["OwnerId"]
	-- local nMapId = tFactionHoleFight_Cont["Trap"]["MapId"]
	-- local nPosX = tFactionHoleFight_Cont["Trap"]["PosX"]
	-- local nPosY = tFactionHoleFight_Cont["Trap"]["PosY"]
	-- local nPosCX = tFactionHoleFight_Cont["Trap"]["PosCX"]
	-- local nPosCY = tFactionHoleFight_Cont["Trap"]["PosCY"]
	-- Trap_CreateMapTrap(nType,nLook,nOwnerId,nMapId,nPosX,nPosY,nPosCX,nPosCY)
end

-- 击杀小怪
function FactionHoleFight_KillMonster(nMonsterId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 判断是否处于争霸赛期间
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	-- 争霸战期间击杀小怪得征服币额度（现有）
	local nEvent_1 = tFactionHoleFight_Stc["FightPoint"]["EventType"]
	local nType_1 = tFactionHoleFight_Stc["FightPoint"]["DataType"]
	local nClearTime_1 = tFactionHoleFight_Stc["FightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	
	Task_AddStatistic(nEvent_1,nType_1,tFactionHoleFight_Cont["KillPoint"],1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	RankingFunc_SetInfo(23079,nData_1)
	RankingFunc_RestSortRankingList(23079)
	
	-- 争霸战期间击杀小怪得征服币额度（总）
	local nEvent_7 = tFactionHoleFight_Stc["MonsterFightPoint"]["EventType"]
	local nType_7 = tFactionHoleFight_Stc["MonsterFightPoint"]["DataType"]
	local nClearTime_7 = tFactionHoleFight_Stc["MonsterFightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent_7,nType_7,nClearTime_7,4) then
		Task_SetStatistic(nEvent_7,nType_7,0,1)
		Task_SetStcTimestamp(nEvent_7,nType_7,0)
	end
	
	local nData_7_Before = Get_UserStatisticValue(nEvent_7,nType_7)
	local nBefore = math.modf(nData_7_Before/1000)
	Task_AddStatistic(nEvent_7,nType_7,tFactionHoleFight_Cont["KillPoint"],1)
	Task_SetStcTimestamp(nEvent_7,nType_7,0)
	local nData_7_After = Get_UserStatisticValue(nEvent_7,nType_7)
	local nAfter = math.modf(nData_7_After/1000)
	
	-- 杀怪每得1000额度出提示
	if nAfter - nBefore >= 1 then
		User_TalkChannel2005(string.format(tFactionHoleFight_Text[2005]["GetFightPoint"],nData_7_After))
	end
	
	local nEvent_2 = tFactionHoleFight_Stc["KillMonsterNum"]["EventType"]
	local nType_2 = tFactionHoleFight_Stc["KillMonsterNum"]["DataType"]
	local nClearTime_2 = tFactionHoleFight_Stc["KillMonsterNum"]["Clear"]
	local nFlag_2 = tFactionHoleFight_Stc["KillMonsterNum"]["Flag"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_2,nType_2,nClearTime_2,4) then
		Task_SetStatistic(nEvent_2,nType_2,0,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
	end
	
	local nData_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	
	-- 已获得矿山剿匪包
	if nData_2 == nFlag_2 then
		return false
	end
	
	Task_AddStatistic(nEvent_2,nType_2,1,1)
	Task_SetStcTimestamp(nEvent_2,nType_2,0)
	Data_2 = Get_UserStatisticValue(nEvent_2,nType_2)
	local nReward_2 = tFactionHoleFight_Stc["KillMonsterNum"]["Reward"]
	
	-- 杀500只怪给一个矿山剿匪包·跟杀人一共只能获得一次
	if nData_2 == nReward_2 then
		-- 置已获奖励状态
		Task_SetStatistic(nEvent_2,nType_2,nFlag_2,1)
		Task_SetStcTimestamp(nEvent_2,nType_2,0)
		
		local nEvent_6 = tFactionHoleFight_Stc["KillPeopleNum"]["EventType"]
		local nType_6 = tFactionHoleFight_Stc["KillPeopleNum"]["DataType"]
		local nFlag_6 = tFactionHoleFight_Stc["KillPeopleNum"]["Flag"]
		Task_SetStatistic(nEvent_6,nType_6,nFlag_6,1)
		Task_SetStcTimestamp(nEvent_6,nType_6,0)
		
		local nItemId = tFactionHoleFight_Reward["Extra"]["Id"]
		local sAttr = tFactionHoleFight_Reward["Extra"]["Attr"]
		Item_AddNewItem(nItemId,sAttr)
		User_TalkChannel2005(tFactionHoleFight_Text[2005]["ExtraReward"])
	end
	
	User_TalkChannel2005(tFactionHoleFight_Text[2005]["KillMonster"])
end

-- 杀人触发
function FactionHoleFight_KillOther(nKillerId,nBeKilledId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 判断是否处于争霸赛期间
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	-- 判断是否在血色矿山
	local nKillMapId = Get_UserMapId(nKillerId)
	local nBeKillMapId = Get_UserMapId(nBeKilledId)
	if (nKillMapId ~= 10348) or (nBeKillMapId ~= 10348) then
		return
	end
	
	local nEvent_6 = tFactionHoleFight_Stc["KillPeopleNum"]["EventType"]
	local nType_6 = tFactionHoleFight_Stc["KillPeopleNum"]["DataType"]
	local nClearTime_6 = tFactionHoleFight_Stc["KillPeopleNum"]["Clear"]
	local nFlag_6 = tFactionHoleFight_Stc["KillPeopleNum"]["Flag"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_6,nType_6,nClearTime_6,4,nKillerId) then
		Task_SetStatistic(nEvent_6,nType_6,0,1,nKillerId)
		Task_SetStcTimestamp(nEvent_6,nType_6,0,nKillerId)
	end
	
	local nData_6 = Get_UserStatisticValue(nEvent_6,nType_6,nKillerId)
	
	-- 未获得矿山剿匪包
	if nData_6 ~= nFlag_6 then
		-- 杀人数+1
		Task_AddStatistic(nEvent_6,nType_6,1,1,nKillerId)
		Task_SetStcTimestamp(nEvent_6,nType_6,0,nKillerId)
		nData_6 = Get_UserStatisticValue(nEvent_6,nType_6,nKillerId)
		local nReward_6 = tFactionHoleFight_Stc["KillPeopleNum"]["Reward"]
		
		-- 杀3个人给一个矿山剿匪包·跟杀怪一共只能获得一次
		if nData_6 == nReward_6 then
			-- 置已获奖励状态
			Task_SetStatistic(nEvent_6,nType_6,nFlag_6,1,nKillerId)
			Task_SetStcTimestamp(nEvent_6,nType_6,0,nKillerId)
			
			local nEvent_2 = tFactionHoleFight_Stc["KillMonsterNum"]["EventType"]
			local nType_2 = tFactionHoleFight_Stc["KillMonsterNum"]["DataType"]
			local nFlag_2 = tFactionHoleFight_Stc["KillMonsterNum"]["Flag"]
			Task_SetStatistic(nEvent_2,nType_2,nFlag_2,1,nKillerId)
			Task_SetStcTimestamp(nEvent_2,nType_2,0,nKillerId)
			
			local nItemId = tFactionHoleFight_Reward["Extra"]["Id"]
			local sAttr = tFactionHoleFight_Reward["Extra"]["Attr"]
			Item_AddNewItem(nItemId,sAttr,nKillerId)
			User_TalkChannel2005(tFactionHoleFight_Text[2005]["ExtraReward"],nKillerId)
		end
	end
	
	local nEvent_1 = tFactionHoleFight_Stc["FightPoint"]["EventType"]
	local nType_1 = tFactionHoleFight_Stc["FightPoint"]["DataType"]
	local nClearTime_1 = tFactionHoleFight_Stc["FightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4,nKillerId) then
		Task_SetStatistic(nEvent_1,nType_1,0,1,nKillerId)
		Task_SetStcTimestamp(nEvent_1,nType_1,0,nKillerId)
	end
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4,nBeKilledId) then
		Task_SetStatistic(nEvent_1,nType_1,0,1,nBeKilledId)
		Task_SetStcTimestamp(nEvent_1,nType_1,0,nBeKilledId)
	end
	
	-- 掠夺30%征服币额度
	local nData_1_Killed = Get_UserStatisticValue(nEvent_1,nType_1,nBeKilledId)
	local nRobPoint = math.modf(nData_1_Killed*3/10)
	
	-- 设置掩码
	Task_AddStatistic(nEvent_1,nType_1,nRobPoint,1,nKillerId)
	Task_SetStcTimestamp(nEvent_1,nType_1,0,nKillerId)
	Task_AddStatistic(nEvent_1,nType_1,-nRobPoint,1,nBeKilledId)
	Task_SetStcTimestamp(nEvent_1,nType_1,0,nBeKilledId)
	
	-- 设置排行榜
	local nData_1_Killer = Get_UserStatisticValue(nEvent_1,nType_1,nKillerId)
	RankingFunc_SetInfo(23079,nData_1_Killer,nKillerId)
	nData_1_Killed = Get_UserStatisticValue(nEvent_1,nType_1,nBeKilledId)
	RankingFunc_SetInfo(23079,nData_1_Killed,nBeKilledId)
	RankingFunc_RestSortRankingList(23079)
	
	-- 单次掠夺超过1000出提示
	if nRobPoint >= 1000 then
		local sKillerName = Get_UserName(nKillerId)
		local sBeKilledName = Get_UserName(nBeKilledId)
		Sys_SystemBroadcast(string.format(tFactionHoleFight_Text["BroadCast"]["GetFightPoint"],sKillerName,sBeKilledName,nRobPoint))
	end
	
	-- 矿山争霸战期间杀人PK值清零
	local nUserPKNum = Get_UserPk(nKillerId)
	if nUserPKNum > 0 then
		User_AddPk(-nUserPKNum, nKillerId)
	end
	
	Sys_SaveActionFestivalLog(tFactionHoleFight_Log["KillPeople"],nKillerId)
end

-- 抢红包
function FactionHoleFight_RobMoney(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	
	-- 判断是否处于抢红包时间
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	local nRobFlag = 0
	
	-- 判断争霸赛时间
	for i=1, #tActivityTime["FactionHoleFight"]["FightTime"]["Week"] do
		-- 周一或周五
		if Sys_ChkWeedTime(tActivityTime["FactionHoleFight"]["FightTime"]["Week"][i]) then
			local nFightIndex = Get_SysDynaGlobalData(nFightGlobal,0)
			
			if Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["RobTime"][nFightIndex]) then
				nRobFlag = 1
			end
		end
	end
	
	if nRobFlag ~= 1 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["NotRobingTime"])
		return false
	end
	
	local nLeftMoney = Get_SysDynaGlobalData(nFightGlobal,1)
	
	-- 是否还有红包
	if nLeftMoney == 0 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["NoLeft"],"NULL","NULL")
		return
	end
	
	local nEvent_1 = tFactionHoleFight_Stc["FightPoint"]["EventType"]
	local nType_1 = tFactionHoleFight_Stc["FightPoint"]["DataType"]
	local nClearTime_1 = tFactionHoleFight_Stc["FightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	-- 无征服币额度
	if nData_1 == 0 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["NoPoint"],"NULL","NULL")
		return
	end
	
	-- -- 银两达上限
	-- if not User_CanPutMoney2Bag(tFactionHoleFight_Cont["RobMoneyMax"]) then
		-- Sys_MsgBox(tFactionHoleFight_Text[105]["FullMoney"],"NULL","NULL")
		-- return
	-- end
	
	-- 抢红包CD
	local nEvent_3 = tFactionHoleFight_Stc["CD"]["EventType"]
	local nType_3 = tFactionHoleFight_Stc["CD"]["DataType"]
	local nClearTime_3 = tFactionHoleFight_Stc["CD"]["Clear"]
	
	-- 隔3s重置掩码
	if Task_StcInterval(nEvent_3,nType_3,nClearTime_3,0) then
		Task_SetStatistic(nEvent_3,nType_3,0,1)
		Task_SetStcTimestamp(nEvent_3,nType_3,0)
	end
	
	local nData_3 = Get_UserStatisticValue(nEvent_3,nType_3)
	if nData_3 == 1 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["Cd"])
		return
	end
	
	local nFlag,tAward = Probabil_RandomAward(tFactionHoleFight_Random["Rob"],1)
	local nItem = tAward[1]["tAward"][1]["Item"]
	
	-- 没抢到红包
	if nItem == 0 then
		Task_SetStatistic(nEvent_3,nType_3,1,1)
		Task_SetStcTimestamp(nEvent_3,nType_3,0)
		
		Sys_MsgBox(tFactionHoleFight_Text[105]["BobFail"],"NULL","NULL")
		User_EffectAdd("self",tFactionHoleFight_Cont["Effect"][2])
		return
	end
	
	local nRandomNum		-- 记录随机到的红包金额
	
	-- 额度是否大于500
	if nData_1 >= tFactionHoleFight_Cont["RobMoneyMax"] then
		nRandomNum = math.random(1,tFactionHoleFight_Cont["RobMoneyMax"])
	else
		nRandomNum = math.random(1,nData_1)
	end
	
	-- 随机金额与剩余红包比较
	if nRandomNum > nLeftMoney then
		nRandomNum = nLeftMoney
	end
	
	-- 更新抢红包总额并排行
	local nEvent_5 = tFactionHoleFight_Stc["Rob"]["EventType"]
	local nType_5 = tFactionHoleFight_Stc["Rob"]["DataType"]
	local nClearTime_5 = tFactionHoleFight_Stc["Rob"]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_5,nType_5,nClearTime_5,4) then
		Task_SetStatistic(nEvent_5,nType_5,0,1)
		Task_SetStcTimestamp(nEvent_5,nType_5,0)
	end
	
	Task_AddStatistic(nEvent_5,nType_5,nRandomNum,1)
	Task_SetStcTimestamp(nEvent_5,nType_5,0)
	
	local nData_5 = Get_UserStatisticValue(nEvent_5,nType_5)
	RankingFunc_SetInfo(nNpcId,nData_5)
	
	-- 更新剩余红包数
	nLeftMoney = nLeftMoney - nRandomNum
	Sys_SetSynaGlobalData(nFightGlobal,1,nLeftMoney)
	
	-- 记录兑换到最后一两的玩家ID
	if nLeftMoney == 0 then
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		Sys_SetSynaGlobalData(nFightGlobal,2,nUserId)
		Sys_SetSynaGlobalDataStr(nFightGlobal,5,sUserName)
	end
	
	-- 更新玩家可兑换额度
	nLeftExchange = nData_1 - nRandomNum
	Task_SetStatistic(nEvent_1,nType_1,nLeftExchange,1)
	Task_SetStcTimestamp(nEvent_1,nType_1,0)
	
	Task_SetStatistic(nEvent_3,nType_3,1,1)
	Task_SetStcTimestamp(nEvent_3,nType_3,0)
	
	-- 设置排行榜
	nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	RankingFunc_SetInfo(23079,nData_1)
	RankingFunc_RestSortRankingList(23079)
	
	-- 1:1给气力值
	local tReward = CommonFunc_Copy(tFactionHoleFight_Reward["Exchange"])
	tReward["RewardStrengthValue"]["Value"] = nRandomNum
	
	-- 给兑换奖励
	RewardTemplate_UseItemAndMsg(tReward)
	-- 抢红包记录emoneylog
	Sys_SaveEmoneyBuy(tFactionHoleFight_Log["RedEnvelopesEmoneyLog"])
	
	local sMsg = string.format(tFactionHoleFight_Text[105]["BobSuccess"],nRandomNum,nData_1)
	Sys_MsgBox(sMsg,"NULL","NULL")
	User_EffectAdd("self",tFactionHoleFight_Cont["Effect"][1])
	Sys_SaveActionFestivalLog(string.format(tFactionHoleFight_Log["Rob"],nRandomNum))
end

-- 增加红包总数
function FactionHoleFight_AddTotalMoney(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断是否处于争霸赛期间
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	-- 是否为占领帮派帮主
	if not FactionHoleFight_IsOccupant() then
		return false
	end
	
	-- 判断天石是否充足
	local nUserEmoney = Get_UserEMoney()
	if nUserEmoney < tFactionHoleFight_Cont[nNpcId]["CostEmoney"] then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return false
	end
	
	local nEvent_4 = tFactionHoleFight_Stc["Add"]["EventType"]
	local nType_4 = tFactionHoleFight_Stc["Add"]["DataType"]
	local nClearTime_4 = tFactionHoleFight_Stc["Add"]["Clear"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_4,nType_4,nClearTime_4,4) then
		Task_SetStatistic(nEvent_4,nType_4,0,1)
		Task_SetStcTimestamp(nEvent_4,nType_4,0)
	end
	
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	local nLimit_4 = tFactionHoleFight_Stc["Add"]["Limit"]
	
	-- 判断次数上限
	if nData_4 >= nLimit_4 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	
	-- 二次确认
	LinkNpcGossipFunc_New(nNpcId,"3-3")
	return true
end

-- 花费天石二次确认
function FactionHoleFight_CostEmoneyConfirm(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断是否处于争霸赛期间
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	-- 是否为占领帮派帮主
	if not FactionHoleFight_IsOccupant() then
		return false
	end
	
	-- 判断天石是否充足
	local nUserEmoney = Get_UserEMoney()
	local nCost = tFactionHoleFight_Cont[nNpcId]["CostEmoney"]
	if nUserEmoney < nCost then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return false
	end
	
	local nEvent_4 = tFactionHoleFight_Stc["Add"]["EventType"]
	local nType_4 = tFactionHoleFight_Stc["Add"]["DataType"]
	local nClearTime_4 = tFactionHoleFight_Stc["Add"]["Clear"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_4,nType_4,nClearTime_4,4) then
		Task_SetStatistic(nEvent_4,nType_4,0,1)
		Task_SetStcTimestamp(nEvent_4,nType_4,0)
	end
	
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	local nLimit_4 = tFactionHoleFight_Stc["Add"]["Limit"]
	
	-- 判断次数上限
	if nData_4 >= nLimit_4 then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return false
	end
	
	-- 扣天石
	if User_AddEMoney(-nCost) then
		-- 加总额度
		local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
		local nLeftMoney = Get_SysDynaGlobalData(nFightGlobal,1)
		nLeftMoney = nLeftMoney + tFactionHoleFight_Cont[nNpcId]["ExchangeMoney"]
		Sys_SetSynaGlobalData(nFightGlobal,1,nLeftMoney)
		
		-- 重置抢到最后一两的玩家id
		Sys_SetSynaGlobalData(nFightGlobal,2,0)
		Sys_SetSynaGlobalDataStr(nFightGlobal,5,"")
		
		-- 加红包次数+1
		Task_AddStatistic(nEvent_4,nType_4,1,1)
		Task_SetStcTimestamp(nEvent_4,nType_4,0)
		
		local nUserId = Get_UserId()
		local sUserName = Get_UserName(nUserId)
		Sys_SystemBroadcast(string.format(tFactionHoleFight_Text["BroadCast"]["AddMoney"],sUserName))
		Sys_SaveEmoneyBuy(tFactionHoleFight_Log["CostEmoney"])
	end
	
	return true
end

-- 超链接
function FactionHoleFight_Hyperlink(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断是否处于争霸赛期间
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	-- 不在双龙城
	if nMapId ~= 1002 and nMapId ~= 10364 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["NotInTwinCity"])
		return false
	end
	
	FactionHoleFight_ChgMap(nNpcId)
end

-- 超链接2
function FactionHoleFight_Hyperlink2(nNpcId,nOther)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断是否处于每日活动期间或争霸赛期间
	if nOther == 4807 and not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		return false
	elseif nOther == 23059 and not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	-- 已经在矿洞
	if nMapId == tFactionHoleFight_Cont["ChgMap"][10348]["MapId"] then
		local nCellX = tFactionHoleFight_Cont["ChgMap"][nOther]["CellX"]
		local nCellY = tFactionHoleFight_Cont["ChgMap"][nOther]["CellY"]
	
		User_ChgMap(nMapId,nCellX,nCellY,1)
		return false
	end
	
	-- 不在矿洞且不在双龙城
	if nMapId ~= 1002 and nMapId ~= 10364 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["NotInTwinCity"])
		return false
	end
	
	FactionHoleFight_ChgMap(nNpcId)
end

-- 使用矿洞剿匪包
function FactionHoleFight_UseBanditsPack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	local nNum = 0
	if not Task_ChkTaskDetail(35011) then
		Task_AddTaskDetail(35011)
	else
		nNum = Get_TaskDetailData6(35011)
	end
	
	-- 功勋值达上限
	if nNum >= 300 then
		Sys_MsgBox(tFactionHoleFight_Text[105]["FullFeats"])
		return false
	end
	
	-- 删物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nAddFeats = tFactionHoleFight_Cont["Feats"]
		local nNowFeats = nNum + nAddFeats
		
		-- 给功勋值后不能超上限
		if nNowFeats > 300 then
			nNowFeats = 300
			nAddFeats = 300 - nNum
		end
		
		Task_SetTaskDetailData6(35011,nNowFeats)
		User_TalkChannel2005(string.format(tFactionHoleFight_Text[2005]["GetFeats"],nAddFeats))
	end
end

-- 刷新BOSS
function FactionHoleFight_BrushBoss()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断是否处于总活动期间
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTotalTime"]) then
		return false
	end
	
	local nMapId = tFactionHoleFight_Cont["Boss"][10348]["MapId"]
	local nMonsterId = tFactionHoleFight_Cont["Boss"][10348]["MonsterId"]
	
	local nNum = Get_SysTempData(1,nMapId,nMonsterId)
	
	-- 暂无BOSS则刷新
	if nNum <= 0 then
		local nPosX = tFactionHoleFight_Cont["Boss"][10348]["PosX"]
		local nPosY = tFactionHoleFight_Cont["Boss"][10348]["PosY"]
		local nGenId = tFactionHoleFight_Cont["Boss"][10348]["GenId"]
		-- 刷BOSS、全服公告
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
	end
	if Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		Sys_TalkBroadcast(tFactionHoleFight_Text["BroadCast"]["BrushBoss"])
	end
end

-- 击杀BOSS
function FactionHoleFight_KillBoss(nMonsterId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断是否处于总活动期间
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTotalTime"]) then
		return false
	end
	-- 击杀记录log
	Sys_SaveEmoneyBuy(tFactionHoleFight_Log["KillBossEmoneyLog"])
	
	local nMapId = tFactionHoleFight_Cont["Boss"][10348]["MapId"]
	Monster_DelMonster(nMapId,nMonsterId)
	Monster_Death(nMonsterId,nMapId)
	
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	
	local tDrop = tFactionHoleFight_Random["Boss"][nMonsterId]["MustDrop"]
	local tIntoBag = tFactionHoleFight_Random["Boss"][nMonsterId]["MustIntoBag"]
	
	-- 取掉落表和直接给的奖励表
	for i=1, #tFactionHoleFight_Random["Boss"][nMonsterId] do
		if tFactionHoleFight_Random["Boss"][nMonsterId][i] ~= nil then
			for j=1,tFactionHoleFight_Random["Boss"][nMonsterId][i]["RandomNum"] do
				local nFlag,tAward = Probabil_RandomAward(tFactionHoleFight_Random["Boss"][nMonsterId],i)
				local nItemId = tAward[1]["tAward"][1]["Item"]
				local nNum = tAward[1]["tAward"][1]["Num"]
				
				if tAward[1]["tAward"][1]["IntoBag"] ~= nil then
					table.insert(tIntoBag,nItemId)
				elseif nNum ~= 0 then
					for k=1,nNum do
						table.insert(tDrop,nItemId)
					end
				end
			end
		end
	end
	
	-- 掉落地面
	for i,v in ipairs(tDrop) do
		local nPosX = tFactionHoleFight_Cont["Boss"][10348]["PosX"]
		local nPosY = tFactionHoleFight_Cont["Boss"][10348]["PosY"]
		
		local nDropPosX = nPosX + math.random(-5,5)
		local nDropPosY = nPosY + math.random(-2,5)
		Map_DropItem(nMapId, nDropPosX, nDropPosY, v)
	end
	
	-- 判断是否交易服
	local nGlobalId = tFactionHoleFight_Cont["TradeServer"]
	local nServerNum = Get_SysDynaGlobalData0(nGlobalId)
	-- 直接给到背包
	if tIntoBag ~= nil then
		for i,v in ipairs(tIntoBag) do
			local sAttr = tFactionHoleFight_Reward["Boss"][nServerNum][v]["Attr"]
			Item_AddNewItem(v,sAttr)
			User_TalkChannel2005(tFactionHoleFight_Text[2005]["GetItem"]["Boss"][v])
		end
	end
	
	Sys_SystemBroadcast(string.format(tFactionHoleFight_Text["BroadCast"]["KillBoss"],sUserName))
end

-- 服务器启动
function FactionHoleFight_NewServerStart()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	local nMapId = tFactionHoleFight_Cont["Boss"][10348]["MapId"]
	local nMonsterId = tFactionHoleFight_Cont["Boss"][10348]["MonsterId"]
	Monster_DelMonster(nMapId,nMonsterId)
	Monster_Death(nMonsterId,nMapId)
end

-- -- 上线触发
-- function FactionHoleFight_Login()
	-- -- 判断每日活动时间
	-- if Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		-- return
	-- end
	
	-- -- 判断地图
	-- local nMapId = Get_UserMapId()
	-- if nMapId ~= tFactionHoleFight_Cont["ChgMap"][10348]["MapId"] then
		-- return
	-- end
	
	-- -- 不在活动时间且在地图内则传送回双龙城
	-- FactionHoleFight_BackTwinCity(1002,0)
-- end

-- 寻路
function FactionHoleFight_GotoSomeWhere(nNpcId)
	local nCellX = tFactionHoleFight_Cont["Goto"][nNpcId]["CellX"]
	local nCellY = tFactionHoleFight_Cont["Goto"][nNpcId]["CellY"]
	local nMapId = tFactionHoleFight_Cont["Goto"][nNpcId]["MapId"]
	
	Sys_GotoSomeWhere(nCellX,nCellY,nMapId)
end

-- 周一周五移走开奖石碑
function FactionHoleFight_MoveStele()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return
	end
	-- 移走开奖石碑
	local nMapId = tFactionHoleFight_Cont[23115]["Other"]["MapId"]
	local nCellX = tFactionHoleFight_Cont[23115]["Other"]["CellX"]
	local nCellY = tFactionHoleFight_Cont[23115]["Other"]["CellY"]
	Npc_MoveNpcPos(23115,nMapId,nCellX,nCellY)
end	

-- 使用竞技场礼包
function FactionHoleFight_UseLimitPack(nItemId)
	-- 检测物品是否存在
	if not Item_ChkItem(nItemId) then
		return false
	end
	
	local nEvent = tFactionHoleFight_Stc["UseLimitPack"][nItemId]["EventType"]
	local nType = tFactionHoleFight_Stc["UseLimitPack"][nItemId]["DataType"]
	local nClearTime = tFactionHoleFight_Stc["UseLimitPack"][nItemId]["Clear"]
	
	-- 隔周重置掩码
	if Task_StcInterval(nEvent,nType,nClearTime,5) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nLimit = tFactionHoleFight_Stc["UseLimitPack"][nItemId]["Limit"]
	
	-- 超出每周打开限制
	if nData >= nLimit then
		Sys_MsgBox(tFactionHoleFight_Text[105]["Max"][nItemId])
		return false
	end
	
	-- 判断背包空间
	local nSpace = RewardTemplate_GetRewardSpace(tFactionHoleFight_Reward[nItemId])
	if not User_CheckLeftSpace(nSpace) then
		Sys_MsgBox(tFactionHoleFight_Text[105]["FullBag"])
		return
	end
	
	-- 置掩码
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	
	RewardTemplate_UseItemAndMsg(tFactionHoleFight_Reward[nItemId])
end


-----------------------------------------------模板部分-----------------------------------------
-------------------------------NPC模板
-- 梅老板
tNpcFace[6130] = 52
tNpcGossip[23058] = tNpcGossip[23058] or DefaultNpc:new{}
tNpcGossip[23058]["OptionHidden"] = 1
tNpcGossip[23058]["DialogueText"] = tFactionHoleFight_Text[23058]

-- 不满足条件
tNpcGossip[23058]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tNpcGossip[23058]["tOption1-1"] = {111}
tNpcGossip[23058]["ChkFunc1-1"] = function ()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断等级
	if User_JudgeLevelAndMetempsychosis(tFactionHoleFight_Cont["Level"],tFactionHoleFight_Cont["Metempsychosis"]) then
		return false
	else
		return true
	end
end

-- 满足条件,非周一或周五
tNpcGossip[23058]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211}
tNpcGossip[23058]["tOption1-2"] = {121,122,123,124}
tNpcGossip[23058]["ChkFunc1-2"] = function ()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	local nFlag = 0
	
	-- 判断周一或周五
	for i=1, #tActivityTime["FactionHoleFight"]["FightTime"]["Week"] do
		if Sys_ChkWeedTime(tActivityTime["FactionHoleFight"]["FightTime"]["Week"][i]) then
			nFlag = 1
		end
	end
		
	if nFlag == 0 then
		-- 帮主显示调整时间选项
		if FactionHoleFight_IsOccupant() then
			tNpcGossip[23058]["tOption1-2"] = {121,122,123,124}
		else
			tNpcGossip[23058]["tOption1-2"] = {121,122,124}
		end
		
		return true
	else
		return false
	end
end

-- 满足条件,周一或周五
tNpcGossip[23058]["Text1-3"] = {131,132,133,134,135,136,137,138,139}
tNpcGossip[23058]["tOption1-3"] = {131,132,133,134,135}
tNpcGossip[23058]["ChkFunc1-3"] = function ()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	local nFightIndex = Get_SysDynaGlobalData(nFightGlobal,0)
	local tOption = {}
	
	tNpcGossip[23058]["Option131"] = string.format(tFactionHoleFight_Text[23058]["Option131"],tFactionHoleFight_Text["Time"][nFightIndex])
	
	-- 判断是否在可调整争霸赛的时间段
	if Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["FightTime"]["Choose"]) then
		tOption = {131,133,134}
	elseif Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["Middle"][nFightIndex]) then
		tOption = {131,133,134}
	-- 判断是否在争霸赛期间
	elseif Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["FightTime"][nFightIndex]) then
		tOption = {132,134}
	else
		tOption = {133,134}
	end
	
	-- 判断是否为占领帮派帮主
	if FactionHoleFight_IsOccupant() then
		tOption[#tOption + 1] = 135
		tNpcGossip[23058]["tOption1-3"] = tOption
	else
		tNpcGossip[23058]["tOption1-3"] = tOption
	end
	
	return true
end

tNpcGossip[23058]["OptionPoint121"] = "2-3"
tNpcGossip[23058]["OptionPoint122"] = "2-2"
tNpcGossip[23058]["OptionFunc123"] = "FactionHoleFight_SetTimeChk</N>23058"
tNpcGossip[23058]["OptionFunc132"] = "FactionHoleFight_IntoFightMapChk</N>23058"
tNpcGossip[23058]["OptionPoint133"] = "2-3"
tNpcGossip[23058]["OptionPoint134"] = "2-2"
tNpcGossip[23058]["OptionFunc135"] = "FactionHoleFight_SetTimeChk</N>23058"

-- 活动时间外
tNpcGossip[23058]["Text1-4"] = {141,142,143}
tNpcGossip[23058]["ChkFunc1-4"] = function ()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return true
	end
	return false
end
tNpcGossip[23058]["tOption1-4"] = {141}

---- 矿洞争霸赛详情
tNpcGossip[23058]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211}
tNpcGossip[23058]["tOption2-2"] = {221}

---- 征服币额度兑换气力值
tNpcGossip[23058]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[23058]["tOption2-3"] = {231,232}
tNpcGossip[23058]["ChkFunc2-3"] = function ()
	local nEvent = tFactionHoleFight_Stc["FightPoint"]["EventType"]
	local nType = tFactionHoleFight_Stc["FightPoint"]["DataType"]
	local nClearTime = tFactionHoleFight_Stc["FightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent,nType,nClearTime,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[23058]["Text236"] = string.format(tFactionHoleFight_Text[23058]["Text236"],nData)
	return true
end

---- 争霸赛时间调整
tNpcGossip[23058]["Text2-4"] = {241}
tNpcGossip[23058]["tOption2-4"] = {241,242,243}

---- 不在周一或周五
tNpcGossip[23058]["Text2-5"] = {251}
tNpcGossip[23058]["tOption2-5"] = {251}

---- 周一或周五不在调整时间内
tNpcGossip[23058]["Text2-6"] = {261}
tNpcGossip[23058]["tOption2-6"] = {261}

tNpcGossip[23058]["OptionPoint221"] = "1"
tNpcGossip[23058]["OptionFunc231"] = "FactionHoleFight_ExchangeFightPoint</N>23058"
tNpcGossip[23058]["OptionPoint232"] = "1"
tNpcGossip[23058]["OptionFunc241"] = "FactionHoleFight_SetTime</N>23058</N>1"
tNpcGossip[23058]["OptionFunc242"] = "FactionHoleFight_SetTime</N>23058</N>2"
tNpcGossip[23058]["OptionFunc243"] = "FactionHoleFight_SetTime</N>23058</N>3"


---- 额度为0
tNpcGossip[23058]["Text3-2"] = {321}
tNpcGossip[23058]["tOption3-2"] = {321}

---- 额度不足5w
tNpcGossip[23058]["Text3-3"] = {331}
tNpcGossip[23058]["tOption3-3"] = {331}

---- 兑换成功
tNpcGossip[23058]["Text3-4"] = {341,342,343,344}
tNpcGossip[23058]["tOption3-4"] = {341}

---- 调整时间成功
tNpcGossip[23058]["Text3-5"] = {351,352}
tNpcGossip[23058]["tOption3-5"] = {351}

tNpcGossip[23058]["OptionPoint311"] = "1"
tNpcGossip[23058]["OptionPoint321"] = "1"
tNpcGossip[23058]["OptionPoint331"] = "1"



-- 矿山淘金客（只刷活动地图）
tNpcFace[6131] = 72
tNpcGossip[23059] = tNpcGossip[23059] or DefaultNpc:new{}
tNpcGossip[23059]["OptionHidden"] = 1
tNpcGossip[23059]["DialogueText"] = tFactionHoleFight_Text[23059]

tNpcGossip[23059]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110}
tNpcGossip[23059]["tOption1-1"] = {111,112}
tNpcGossip[23059]["ChkFunc1-1"] = function ()
	local nFightGlobal = tFactionHoleFight_Cont["FightGlobal"]
	local nLeftMoney = Get_SysDynaGlobalData(nFightGlobal,1)
	
	local nEvent_1 = tFactionHoleFight_Stc["FightPoint"]["EventType"]
	local nType_1 = tFactionHoleFight_Stc["FightPoint"]["DataType"]
	local nClearTime_1 = tFactionHoleFight_Stc["FightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	
	local nEvent_4 = tFactionHoleFight_Stc["Add"]["EventType"]
	local nType_4 = tFactionHoleFight_Stc["Add"]["DataType"]
	local nClearTime_4 = tFactionHoleFight_Stc["Add"]["Clear"]
	
	-- 隔天重置掩码
	if Task_StcInterval(nEvent_4,nType_4,nClearTime_4,4) then
		Task_SetStatistic(nEvent_4,nType_4,0,1)
		Task_SetStcTimestamp(nEvent_4,nType_4,0)
	end
	
	local nData_4 = Get_UserStatisticValue(nEvent_4,nType_4)
	
	-- 计算进度条
	local nBlockNum = math.modf(nLeftMoney/((5+nData_4)*250))
	local sProgressBar = ""
	for i=1,40 do
		if i > nBlockNum then
			sProgressBar = string.format(tFactionHoleFight_Text[23059]["Spacing"],sProgressBar)
		else
			sProgressBar = string.format(tFactionHoleFight_Text[23059]["Block"],sProgressBar)
		end
	end
	
	local sText114 = string.format(tFactionHoleFight_Text[23059]["Text114"],sProgressBar)
	tNpcGossip[23059]["Text114"] = Sys_CenterAline(sText114,30)
	
	local sText116 = string.format(tFactionHoleFight_Text[23059]["Text116"],nLeftMoney,(5+nData_4)*10000)
	tNpcGossip[23059]["Text116"] = Sys_CenterAline(sText116,29)
	
	tNpcGossip[23059]["Text119"] = string.format(tFactionHoleFight_Text[23059]["Text119"],nData_1)
	
	-- 是否为占领帮派帮主
	if FactionHoleFight_IsOccupant() then
		tNpcGossip[23059]["tOption1-1"] = {111,112}
	else
		tNpcGossip[23059]["tOption1-1"] = {112}
	end
	
	return true
end

tNpcGossip[23059]["OptionPoint111"] = "2-1"
tNpcGossip[23059]["OptionPoint112"] = "2-2"


-- 增加红包总额
tNpcGossip[23059]["Text2-1"] = {211,212}
tNpcGossip[23059]["tOption2-1"] = {211,212}

-- 中奖详情
tNpcGossip[23059]["Text2-2"] = {221,222,223,224,225,226,227,228,229}
tNpcGossip[23059]["tOption2-2"] = {221}
tNpcGossip[23059]["ChkFunc2-2"] = function ()
	-- 取前五名显示
	local tRank = RankingFunc_GetNowData(23059)
	for i=1,5 do
		if tRank[i] ~= nil then
			if tRank[i]["Score"] > 0 then
				tNpcGossip[23059]["Text22" .. 3+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23059]["Text22" .. 3+i],8,tostring(tRank[i]["UserName"]),22,tostring(tRank[i]["Score"]),41))
			else
				tNpcGossip[23059]["Text22" .. 3+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23059]["Text22" .. 3+i],8,tFactionHoleFight_Text[23059]["NoData"],22,tFactionHoleFight_Text[23059]["NoData"],41))
			end
		else
			tNpcGossip[23059]["Text22" .. 3+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23059]["Text22" .. 3+i],8,tFactionHoleFight_Text[23059]["NoData"],22,tFactionHoleFight_Text[23059]["NoData"],41))
		end
	end
	
	return true
end

tNpcGossip[23059]["OptionFunc211"] = "FactionHoleFight_AddTotalMoney</N>23059"
tNpcGossip[23059]["OptionPoint212"] = "1"


-- 天石不足
tNpcGossip[23059]["Text3-1"] = {311}
tNpcGossip[23059]["tOption3-1"] = {311}

-- 次数上限
tNpcGossip[23059]["Text3-2"] = {321}
tNpcGossip[23059]["tOption3-2"] = {321}

-- 二次确认
tNpcGossip[23059]["Text3-3"] = {331}
tNpcGossip[23059]["tOption3-3"] = {331,332}

tNpcGossip[23059]["OptionFunc331"] = "FactionHoleFight_CostEmoneyConfirm</N>23059"
tNpcGossip[23059]["OptionPoint332"] = "1"



-- 开奖石碑
tNpcFace[1989] = 841
tNpcGossip[23115] = tNpcGossip[23115] or DefaultNpc:new{}
tNpcGossip[23115]["OptionHidden"] = 1
tNpcGossip[23115]["DialogueText"] = tFactionHoleFight_Text[23115]

-- 中奖详情
tNpcGossip[23115]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[23115]["tOption1-1"] = {111}
tNpcGossip[23115]["ChkFunc1-1"] = function ()
	-- 取前五名显示
	local tRank = RankingFunc_GetNowData(23059)
	for i=1,5 do
		if tRank[i] ~= nil then
			if tRank[i]["Score"] > 0 then
				tNpcGossip[23115]["Text11" .. 3+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23115]["Text11" .. 3+i],8,tostring(tRank[i]["UserName"]),22,tostring(tRank[i]["Score"]),41))
			else
				tNpcGossip[23115]["Text11" .. 3+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23115]["Text11" .. 3+i],8,tFactionHoleFight_Text[23115]["NoData"],22,tFactionHoleFight_Text[23115]["NoData"],41))
			end
		else
			tNpcGossip[23115]["Text11" .. 3+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23115]["Text11" .. 3+i],8,tFactionHoleFight_Text[23115]["NoData"],22,tFactionHoleFight_Text[23115]["NoData"],41))
		end
	end
	
	return true
end



-- 血色矿工
tNpcFace[6140] = 26
tNpcGossip[23077] = tNpcGossip[23077] or DefaultNpc:new{}
tNpcGossip[23077]["OptionHidden"] = 1
tNpcGossip[23077]["DialogueText"] = tFactionHoleFight_Text[23077]

-- 每日活动时间外
tNpcGossip[23077]["Text1-1"] = {111,112,113,114,115,116,117,118}
tNpcGossip[23077]["tOption1-1"] = {111}
tNpcGossip[23077]["ChkFunc1-1"] = function ()
	-- 判断每日活动时间
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		return true
	else
		return false
	end
end

-- 每日活动时间内，不满足条件
tNpcGossip[23077]["Text1-2"] = {121,122,123,124,125,126,127,128}
tNpcGossip[23077]["tOption1-2"] = {121}
tNpcGossip[23077]["ChkFunc1-2"] = function ()
	-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(tFactionHoleFight_Cont["Level"],tFactionHoleFight_Cont["Metempsychosis"]) then
		return true
	else
		return false
	end
end

-- 每日活动时间内，满足条件
tNpcGossip[23077]["Text1-3"] = {131,132,133,134,135,136,137,138}
tNpcGossip[23077]["tOption1-3"] = {131,132,133}
tNpcGossip[23077]["ChkFunc1-3"] = function ()
	if Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tFactionHoleFight_Cont["Level"],tFactionHoleFight_Cont["Metempsychosis"]) then
		return true
	end
end

tNpcGossip[23077]["OptionPoint131"] = "2-2"
tNpcGossip[23077]["OptionPoint132"] = "2-3"
tNpcGossip[23077]["OptionPoint133"] = "2-1"


-- 矿山详情
tNpcGossip[23077]["Text2-1"] = {211,212,213,214,215,216,217,218,219,2110}
tNpcGossip[23077]["tOption2-1"] = {211}

-- 前往铜矿车处
tNpcGossip[23077]["Text2-2"] = {221,222,223,224,225,226}
tNpcGossip[23077]["tOption2-2"] = {221,222,223,224}
-- tNpcGossip[23077]["ChkFunc2-2"] = function ()
	-- local nGlobalId1 = tFactionHoleFight_Cont["GlobalId1"]
	-- local nSign = Get_SysDynaGlobalTime1(nGlobalId1)
	-- local nSign2 = Get_SysDynaGlobalTime3(nGlobalId1)
	
	-- if nSign > 0 then
		-- tNpcGossip[23077]["Option221"] = string.format(tFactionHoleFight_Text[23077]["Option221"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		-- tNpcGossip[23077]["Option222"] = string.format(tFactionHoleFight_Text[23077]["Option222"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		-- tNpcGossip[23077]["Option223"] = string.format(tFactionHoleFight_Text[23077]["Option223"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		-- tNpcGossip[23077]["Option224"] = string.format(tFactionHoleFight_Text[23077]["Option224"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		
	-- else
		-- tNpcGossip[23077]["Option221"] = string.format(tFactionHoleFight_Text[23077]["Option221"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		-- tNpcGossip[23077]["Option222"] = string.format(tFactionHoleFight_Text[23077]["Option222"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		-- tNpcGossip[23077]["Option223"] = string.format(tFactionHoleFight_Text[23077]["Option223"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		-- tNpcGossip[23077]["Option224"] = string.format(tFactionHoleFight_Text[23077]["Option224"], tOhterNpc_Text["Dialog"]["MinerFalse"])
	-- end
	
	-- -- 额外矿车
	-- if nSign2 > 0 then
		-- tNpcGossip[23077]["Option225"] = string.format(tFactionHoleFight_Text[23077]["Option225"], tOhterNpc_Text["Dialog"]["MinerTrue"])
	-- else
		-- tNpcGossip[23077]["Option225"] = string.format(tFactionHoleFight_Text[23077]["Option225"], tOhterNpc_Text["Dialog"]["MinerFalse"])
	-- end
	
	-- return true
-- end

-- 前往银矿车处
tNpcGossip[23077]["Text2-3"] = {231,232,233,234,235,236}
tNpcGossip[23077]["tOption2-3"] = {231,232,233,234}
-- tNpcGossip[23077]["ChkFunc2-3"] = function ()
	-- local nGlobalId1 = tFactionHoleFight_Cont["GlobalId1"]
	-- local nSign = Get_SysDynaGlobalTime2(nGlobalId1)
	-- local nSign2 = Get_SysDynaGlobalTime4(nGlobalId1)
	
	-- if nSign > 0 then
		-- tNpcGossip[23077]["Option231"] = string.format(tFactionHoleFight_Text[23077]["Option231"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		-- tNpcGossip[23077]["Option232"] = string.format(tFactionHoleFight_Text[23077]["Option232"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		-- tNpcGossip[23077]["Option233"] = string.format(tFactionHoleFight_Text[23077]["Option233"], tOhterNpc_Text["Dialog"]["MinerTrue"])
		-- tNpcGossip[23077]["Option234"] = string.format(tFactionHoleFight_Text[23077]["Option234"], tOhterNpc_Text["Dialog"]["MinerTrue"])
	-- else
		-- tNpcGossip[23077]["Option231"] = string.format(tFactionHoleFight_Text[23077]["Option231"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		-- tNpcGossip[23077]["Option232"] = string.format(tFactionHoleFight_Text[23077]["Option232"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		-- tNpcGossip[23077]["Option233"] = string.format(tFactionHoleFight_Text[23077]["Option233"], tOhterNpc_Text["Dialog"]["MinerFalse"])
		-- tNpcGossip[23077]["Option234"] = string.format(tFactionHoleFight_Text[23077]["Option234"], tOhterNpc_Text["Dialog"]["MinerFalse"])
	-- end
	
	-- -- 额外矿车
	-- if nSign2 > 0 then
		-- tNpcGossip[23077]["Option235"] = string.format(tFactionHoleFight_Text[23077]["Option235"], tOhterNpc_Text["Dialog"]["MinerTrue"])
	-- else
		-- tNpcGossip[23077]["Option235"] = string.format(tFactionHoleFight_Text[23077]["Option235"], tOhterNpc_Text["Dialog"]["MinerFalse"])
	-- end
	
	-- return true
-- end

tNpcGossip[23077]["OptionFunc221"] = "FactionHoleFight_GotoSomeWhere</N>23055"
tNpcGossip[23077]["OptionFunc222"] = "FactionHoleFight_GotoSomeWhere</N>23073"
tNpcGossip[23077]["OptionFunc223"] = "FactionHoleFight_GotoSomeWhere</N>23072"
tNpcGossip[23077]["OptionFunc224"] = "FactionHoleFight_GotoSomeWhere</N>23074"
tNpcGossip[23077]["OptionFunc225"] = "FactionHoleFight_GotoSomeWhere</N>23075"
tNpcGossip[23077]["OptionFunc231"] = "FactionHoleFight_GotoSomeWhere</N>23054"
tNpcGossip[23077]["OptionFunc232"] = "FactionHoleFight_GotoSomeWhere</N>23069"
tNpcGossip[23077]["OptionFunc233"] = "FactionHoleFight_GotoSomeWhere</N>23068"
tNpcGossip[23077]["OptionFunc234"] = "FactionHoleFight_GotoSomeWhere</N>23070"
tNpcGossip[23077]["OptionFunc235"] = "FactionHoleFight_GotoSomeWhere</N>23071"



-- 争霸天骄碑
tNpcFace[1987] = 841
tNpcGossip[23079] = tNpcGossip[23079] or DefaultNpc:new{}
tNpcGossip[23079]["OptionHidden"] = 1
tNpcGossip[23079]["DialogueText"] = tFactionHoleFight_Text[23079]

-- 每日活动时间外
tNpcGossip[23079]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114,1115,1116}
tNpcGossip[23079]["tOption1-1"] = {111}
tNpcGossip[23079]["ChkFunc1-1"] = function ()
	-- 判断是否处于争霸赛期间
	if not FactionHoleFight_IsFightingTime() then
		return false
	end
	
	local tRank = RankingFunc_GetNowData(23079)
	for i=1,10 do
		if tRank[i] ~= nil then
			if tRank[i]["Score"] > 0 then
				tNpcGossip[23079]["Text11" .. 4+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23079]["Text11" .. 4+i],8,tostring(tRank[i]["UserName"]),22,tostring(tRank[i]["Score"]),40))
			else
				tNpcGossip[23079]["Text11" .. 4+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23079]["Text11" .. 4+i],8,tFactionHoleFight_Text[23079]["NoData"],22,tFactionHoleFight_Text[23079]["NoData"],40))
			end
		else
			tNpcGossip[23079]["Text11" .. 4+i] = string.format(tDeathList_Text["List"],Sys_CenterAline(tFactionHoleFight_Text[23079]["Text11" .. 4+i],8,tFactionHoleFight_Text[23079]["NoData"],22,tFactionHoleFight_Text[23079]["NoData"],40))
		end
	end
	
	local nEvent_1 = tFactionHoleFight_Stc["FightPoint"]["EventType"]
	local nType_1 = tFactionHoleFight_Stc["FightPoint"]["DataType"]
	local nClearTime_1 = tFactionHoleFight_Stc["FightPoint"]["Clear"]
	
	-- 隔3天重置掩码
	if Task_StcInterval(nEvent_1,nType_1,nClearTime_1,4) then
		Task_SetStatistic(nEvent_1,nType_1,0,1)
		Task_SetStcTimestamp(nEvent_1,nType_1,0)
	end
	
	local nData_1 = Get_UserStatisticValue(nEvent_1,nType_1)
	local sText1116 = string.format(tFactionHoleFight_Text[23079]["Text1116"],nData_1)
	tNpcGossip[23079]["Text1116"] = Sys_CenterAline(sText1116,29)
	return true
end



-- 血色矿山
tNpcFace[3569] = 1636
tNpcGossip[17980] = tNpcGossip[17980] or DefaultNpc:new{}
tNpcGossip[17980]["OptionHidden"] = 1
tNpcGossip[17980]["DialogueText"] = tFactionHoleFight_Text[17980]

-- 每日活动时间外
tNpcGossip[17980]["Text1-1"] = {111,112,113,114,115,116,117,118,119,1110,1111,1112,1113,1114}
tNpcGossip[17980]["tOption1-1"] = {111}
tNpcGossip[17980]["ChkFunc1-1"] = function ()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断每日活动时间
	if not Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		-- 显示占领帮派名
		local nGuildId = Get_MapOwnerId(tFactionHoleFight_Cont["FightMapId"])
		
		if nGuildId ~= nil then
			if nGuildId ~= 0 then
				local sGuildName = Get_UserSynDicateName(nGuildId)
				tNpcGossip[17980]["Text1111"] = string.format(tFactionHoleFight_Text[17980]["Text1111"],sGuildName)
			else
				tNpcGossip[17980]["Text1111"] = string.format(tFactionHoleFight_Text[17980]["Text1111"],tFactionHoleFight_Text[17980]["NoData"])
			end
		else
			tNpcGossip[17980]["Text1111"] = string.format(tFactionHoleFight_Text[17980]["Text1111"],tFactionHoleFight_Text[17980]["NoData"])
		end
		
		return true
	else
		return false
	end
end

-- 每日活动时间内，不满足条件
tNpcGossip[17980]["Text1-2"] = {121,122,123,124,125,126,127,128,129,1210,1211,1212,1213}
tNpcGossip[17980]["tOption1-2"] = {121}
tNpcGossip[17980]["ChkFunc1-2"] = function ()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断每日活动时间
	if Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) then
		-- 判断等级
		if User_JudgeLevelAndMetempsychosis(tFactionHoleFight_Cont["Level"],tFactionHoleFight_Cont["Metempsychosis"]) then
			return false
		else
			-- 显示占领帮派名
			local nGuildId = Get_MapOwnerId(tFactionHoleFight_Cont["FightMapId"])
			
			if nGuildId ~= nil then
				if nGuildId ~= 0 then
					local sGuildName = Get_UserSynDicateName(nGuildId)
					tNpcGossip[17980]["Text1211"] = string.format(tFactionHoleFight_Text[17980]["Text1211"],sGuildName)
				else
					tNpcGossip[17980]["Text1211"] = string.format(tFactionHoleFight_Text[17980]["Text1211"],tFactionHoleFight_Text[17980]["NoData"])
				end
			else
				tNpcGossip[17980]["Text1211"] = string.format(tFactionHoleFight_Text[17980]["Text1211"],tFactionHoleFight_Text[17980]["NoData"])
			end
			
			return true
		end
	end
	
	return false
end

-- 每日活动时间内，满足条件
tNpcGossip[17980]["Text1-3"] = {131,132,133,134,135,136,137,138,139,1310,1311,1312,1313}
tNpcGossip[17980]["tOption1-3"] = {131,132}
tNpcGossip[17980]["ChkFunc1-3"] = function ()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return false
	end
	-- 判断每日活动时间与等级
	if Sys_ChkDayTime(tActivityTime["FactionHoleFight"]["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tFactionHoleFight_Cont["Level"],tFactionHoleFight_Cont["Metempsychosis"]) then
		-- 显示占领帮派名
		local nGuildId = Get_MapOwnerId(tFactionHoleFight_Cont["FightMapId"])
		
		if nGuildId ~= nil then
			if nGuildId ~= 0 then
				local sGuildName = Get_UserSynDicateName(nGuildId)
				tNpcGossip[17980]["Text1311"] = string.format(tFactionHoleFight_Text[17980]["Text1311"],sGuildName)
			else
				tNpcGossip[17980]["Text1311"] = string.format(tFactionHoleFight_Text[17980]["Text1311"],tFactionHoleFight_Text[17980]["NoData"])
			end
		else
			tNpcGossip[17980]["Text1311"] = string.format(tFactionHoleFight_Text[17980]["Text1311"],tFactionHoleFight_Text[17980]["NoData"])
		end
		
		return true
	end
	
	return false
end

tNpcGossip[17980]["OptionFunc131"] = "FactionHoleFight_IntoMapChk</N>17980"

-- 活动时间后
tNpcGossip[17980]["Text1-4"] = {141,142,143}
tNpcGossip[17980]["ChkFunc1-4"] = function ()
	-- 判断活动时间
	if CommonFunc_GetAfterActivityTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return true
	end
	return false
end
tNpcGossip[17980]["tOption1-4"] = {141}

-- 活动时间前
tNpcGossip[17980]["Text1-5"] = {151,152,153,154,155,156,157,158,159,1510,1511,1512,1513}
tNpcGossip[17980]["ChkFunc1-5"] = function ()
	-- 判断活动时间
	if CommonFunc_GetBeforeActivityTime(tActivityTime["FactionHole"]["AcitveTime"]) then
		return true
	end
	return false
end
tNpcGossip[17980]["tOption1-5"] = {151}


-- 非矿山占领帮派成员
tNpcGossip[17980]["Text2-1"] = {211,212}
tNpcGossip[17980]["tOption2-1"] = {211,212,213,214}
tNpcGossip[17980]["ChkFunc2-1"] = function ()
	local nEvent_8 = tFactionHoleFight_Stc["IntoMap"]["EventType"]
	local nType_8 = tFactionHoleFight_Stc["IntoMap"]["DataType"]
	local nClearTime_8 = tFactionHoleFight_Stc["IntoMap"]["Clear"]
	
	-- 隔1天重置掩码
	if Task_StcInterval(nEvent_8,nType_8,nClearTime_8,4) then
		Task_SetStatistic(nEvent_8,nType_8,0,1)
		Task_SetStcTimestamp(nEvent_8,nType_8,0)
	end
	
	local nData_8 = Get_UserStatisticValue(nEvent_8,nType_8)
	
	-- 判断已进入血色矿山次数
	if nData_8 == 0 then
		tNpcGossip[17980]["tOption2-1"] = {211,214}
	elseif nData_8 >= 11 then
		tNpcGossip[17980]["tOption2-1"] = {213,214}
	else
		tNpcGossip[17980]["tOption2-1"] = {212,214}
	end
	
	return true
end

tNpcGossip[17980]["OptionFunc211"] = "FactionHoleFight_IntoMapByMoney</N>17980"
tNpcGossip[17980]["OptionFunc212"] = "FactionHoleFight_IntoMapByMoney</N>17980"
tNpcGossip[17980]["OptionFunc213"] = "FactionHoleFight_IntoMapByMoney</N>17980"


---- 银两不足
tNpcGossip[17980]["Text3-1"] = {311}
tNpcGossip[17980]["tOption3-1"] = {311}


-------------------------------物品模板
-- 矿山剿匪包
tItem[3310025] = tItem[3310025] or {}
tItem[3310025]["Function"] = function(nItemId,sItemName)
	FactionHoleFight_UseBanditsPack(nItemId)
end

-- 矿山签到修为包
tItem[3310255] = tItem[3310255] or {}
tItem[3310255]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tFactionHoleFight_Reward[nItemId])
end

-- 竞技场气力精装包
tItem[3310528] = tItem[3310528] or {}
-- 竞技场气力尊享包
tItem[3310529] = tItem[3310528] or {}
-- 竞技场精粹精装包
tItem[3310530] = tItem[3310528] or {}
-- 竞技场精粹尊享包
tItem[3310531] = tItem[3310528] or {}
tItem[3310528]["Function"] = function(nItemId,sItemName)
	FactionHoleFight_UseLimitPack(nItemId)
end

-------------------------------怪物掉落
local tFactionHoleFight_Monster = {}
	-- 小怪
	tFactionHoleFight_Monster[1] = {}
	tFactionHoleFight_Monster[1]["Function"] = FactionHoleFight_KillMonster
	tFactionHoleFight_Monster[1]["MonsterId"] = {4806,4817,4824}
	table.insert(tMonsterDrop_AreaLoad,tFactionHoleFight_Monster[1])
	-- Boss
	tFactionHoleFight_Monster[2] = {}
	tFactionHoleFight_Monster[2]["Function"] = FactionHoleFight_KillBoss
	tFactionHoleFight_Monster[2]["MonsterId"] = {4807}
	table.insert(tMonsterDrop_AreaLoad,tFactionHoleFight_Monster[2])

	
-------------------------------时间自检
local tFactionHoleFight_OnTime = {}
	-- 矿洞开启前重置争霸战记录
	tFactionHoleFight_OnTime[1] = {}
	tFactionHoleFight_OnTime[1]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[1]["Type"] = 2
	tFactionHoleFight_OnTime[1]["TimeType"] = 4
	tFactionHoleFight_OnTime[1]["Multiple"] = {}
	tFactionHoleFight_OnTime[1]["Multiple"][1]  = "23:58 23:59"
	tFactionHoleFight_OnTime[1]["Func"] = FactionHoleFight_ResetGlobal
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[1])
	
	-- 每日活动时间过后传送出矿洞
	tFactionHoleFight_OnTime[2] = {}
	tFactionHoleFight_OnTime[2]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[2]["Type"] = 4
	tFactionHoleFight_OnTime[2]["TimeType"] = 4
	tFactionHoleFight_OnTime[2]["Multiple"] = {}
	tFactionHoleFight_OnTime[2]["Multiple"][1]  = "21:00 21:00"
	tFactionHoleFight_OnTime[2]["Func"] = FactionHoleFight_ClearMap
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[2])
	
	-- 周一、周五争霸赛开启时触发
	tFactionHoleFight_OnTime[3] = {}
	tFactionHoleFight_OnTime[3]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[3]["Type"] = 6
	tFactionHoleFight_OnTime[3]["TimeType"] = 3
	tFactionHoleFight_OnTime[3]["Multiple"] = {}
	tFactionHoleFight_OnTime[3]["Multiple"][1]  = "1 21:00 1 21:00"
	tFactionHoleFight_OnTime[3]["Multiple"][2]  = "1 21:30 1 21:30"
	tFactionHoleFight_OnTime[3]["Multiple"][3]  = "1 22:00 1 22:00"
	tFactionHoleFight_OnTime[3]["Multiple"][4]  = "4 21:00 4 21:00"
	tFactionHoleFight_OnTime[3]["Multiple"][5]  = "4 21:30 4 21:30"
	tFactionHoleFight_OnTime[3]["Multiple"][6]  = "4 22:00 4 22:00"
	tFactionHoleFight_OnTime[3]["Func"] = FactionHoleFight_BroadCast
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[3])
	
	-- 周一、周五争霸赛结束时触发
	tFactionHoleFight_OnTime[4] = {}
	tFactionHoleFight_OnTime[4]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[4]["Type"] = 6
	tFactionHoleFight_OnTime[4]["TimeType"] = 3
	tFactionHoleFight_OnTime[4]["Multiple"] = {}
	tFactionHoleFight_OnTime[4]["Multiple"][1]  = "1 21:30 1 21:31"
	tFactionHoleFight_OnTime[4]["Multiple"][2]  = "1 22:00 1 22:01"
	tFactionHoleFight_OnTime[4]["Multiple"][3]  = "1 22:30 1 22:31"
	tFactionHoleFight_OnTime[4]["Multiple"][4]  = "4 21:30 4 21:31"
	tFactionHoleFight_OnTime[4]["Multiple"][5]  = "4 22:00 4 22:01"
	tFactionHoleFight_OnTime[4]["Multiple"][6]  = "4 22:30 4 22:31"
	tFactionHoleFight_OnTime[4]["Func"] = FactionHoleFight_ClearMap2
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[4])
	
	-- 周一、周五争霸赛结束前十分钟移出淘金客
	tFactionHoleFight_OnTime[5] = {}
	tFactionHoleFight_OnTime[5]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[5]["Type"] = 6
	tFactionHoleFight_OnTime[5]["TimeType"] = 3
	tFactionHoleFight_OnTime[5]["Multiple"] = {}
	tFactionHoleFight_OnTime[5]["Multiple"][1]  = "1 21:20 1 21:20"
	tFactionHoleFight_OnTime[5]["Multiple"][2]  = "1 21:50 1 21:50"
	tFactionHoleFight_OnTime[5]["Multiple"][3]  = "1 22:20 1 22:20"
	tFactionHoleFight_OnTime[5]["Multiple"][4]  = "4 21:20 4 21:20"
	tFactionHoleFight_OnTime[5]["Multiple"][5]  = "4 21:50 4 21:50"
	tFactionHoleFight_OnTime[5]["Multiple"][6]  = "4 22:20 4 22:20"
	tFactionHoleFight_OnTime[5]["Func"] = FactionHoleFight_MoveNpc
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[5])
	
	-- 刷新BOSS
	tFactionHoleFight_OnTime[6] = {}
	tFactionHoleFight_OnTime[6]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[6]["Type"] = 3  -- 刷怪
	tFactionHoleFight_OnTime[6]["TimeType"] = 5  -- 小时时间
	tFactionHoleFight_OnTime[6]["Multiple"] = {}
	tFactionHoleFight_OnTime[6]["Multiple"][1] = "00 00"
	tFactionHoleFight_OnTime[6]["Func"] = FactionHoleFight_BrushBoss
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[6])
	
	-- 周一、周五11.56-11.57移走开奖石碑
	tFactionHoleFight_OnTime[7] = {}
	tFactionHoleFight_OnTime[7]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[7]["Type"] = 6
	tFactionHoleFight_OnTime[7]["TimeType"] = 3
	tFactionHoleFight_OnTime[7]["Multiple"] = {}
	tFactionHoleFight_OnTime[7]["Multiple"][1]  = "1 23:56 1 23:57"
	tFactionHoleFight_OnTime[7]["Multiple"][2]  = "4 23:56 4 23:57"
	tFactionHoleFight_OnTime[7]["Func"] = FactionHoleFight_MoveStele
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[7])
	
	-- 周一、周五争霸赛结束前3分钟出提示
	tFactionHoleFight_OnTime[8] = {}
	tFactionHoleFight_OnTime[8]["ActivityTime"] = tActivityTime["FactionHole"]["AcitveTime"]
	tFactionHoleFight_OnTime[8]["Type"] = 6
	tFactionHoleFight_OnTime[8]["TimeType"] = 3
	tFactionHoleFight_OnTime[8]["Multiple"] = {}
	tFactionHoleFight_OnTime[8]["Multiple"][1]  = "1 21:27 1 21:27"
	tFactionHoleFight_OnTime[8]["Multiple"][2]  = "1 21:57 1 21:57"
	tFactionHoleFight_OnTime[8]["Multiple"][3]  = "1 22:27 1 22:27"
	tFactionHoleFight_OnTime[8]["Multiple"][4]  = "4 21:27 4 21:27"
	tFactionHoleFight_OnTime[8]["Multiple"][5]  = "4 21:57 4 21:57"
	tFactionHoleFight_OnTime[8]["Multiple"][6]  = "4 22:27 4 22:27"
	tFactionHoleFight_OnTime[8]["Func"] = FactionHoleFight_BroadCastForClose
	table.insert(tSystemTime_InitialData,tFactionHoleFight_OnTime[8])

-------------------------------杀人触发
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"],FactionHoleFight_KillOther)


-------------------------------服务器启动	
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],FactionHoleFight_NewServerStart)


-- -------------------------------上线触发
-- -- 上线触发
-- table.insert(tSystem_PlayLogin_Func,FactionHoleFight_Login)

