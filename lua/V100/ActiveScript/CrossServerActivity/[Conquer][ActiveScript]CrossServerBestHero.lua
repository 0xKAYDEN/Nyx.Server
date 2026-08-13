-----------------------------------------------------------------------------------------------------
--Name:		190425[英文征服][任务脚本]跨服天下第一活动(5.21-6.9)
--Purpose:	跨服天下第一活动
--Creator: 	许乐
--Created:	2019/4/25
------------------------------------------------------------------------------------------------------
-- 命名前缀
--CrossServerBestHero_

-- 12001390
-----------------------------------------常量表配置-----------------------------------------------
local tCrossServerBestHero_Cont = {}
	--活动相关时间	
	tCrossServerBestHero_Cont["Activity"] = tActivityTime["CrossServerBestHero"]["Activity"]
	tCrossServerBestHero_Cont["RankActivityTime"] = tActivityTime["CrossServerBestHero"]["RankActivityTime"]

	tCrossServerBestHero_Cont["ActivityTime"] = {}		--活动时间点
	tCrossServerBestHero_Cont["ActivityTime"][1] = tActivityTime["CrossServerBestHero"]["ActivityTime"][1]
	tCrossServerBestHero_Cont["ActivityTime"][2] = tActivityTime["CrossServerBestHero"]["ActivityTime"][2]
	tCrossServerBestHero_Cont["ActivityTime"][3] = tActivityTime["CrossServerBestHero"]["ActivityTime"][3]
	
	tCrossServerBestHero_Cont["StartTime"] = {}
	tCrossServerBestHero_Cont["StartTime"][1] = tActivityTime["CrossServerBestHero"]["StartTime"][1]
	tCrossServerBestHero_Cont["StartTime"][2] = tActivityTime["CrossServerBestHero"]["StartTime"][2]
	tCrossServerBestHero_Cont["StartTime"][3] = tActivityTime["CrossServerBestHero"]["StartTime"][3]
	
	tCrossServerBestHero_Cont["EndingTime"] = tActivityTime["CrossServerBestHero"]["EndingTime"]	--当天第一场擂台结束，且0点前
	
	tCrossServerBestHero_Cont["RankingTime"] = {}		--当天第一场擂台开始到下一场开始清除排行榜前
	tCrossServerBestHero_Cont["RankingTime"][1] = tActivityTime["CrossServerBestHero"]["RankingTime"][1]
	tCrossServerBestHero_Cont["RankingTime"][2] = tActivityTime["CrossServerBestHero"]["RankingTime"][2]
	tCrossServerBestHero_Cont["RankingTime"][3] = tActivityTime["CrossServerBestHero"]["RankingTime"][3]
	
	--玩家等级要求
	tCrossServerBestHero_Cont["Metempsychosis"] = 2
	tCrossServerBestHero_Cont["Level"] = 120
	tCrossServerBestHero_Cont["LevelTop"] = G_User_MaxLev
	
	-- 玩家战斗力限制
	tCrossServerBestHero_Cont["BattleLevel"] = {}
	tCrossServerBestHero_Cont["BattleLevel"][1] = 300
	tCrossServerBestHero_Cont["BattleLevel"][2] = 349
	tCrossServerBestHero_Cont["BattleLevel"][3] = 399
	tCrossServerBestHero_Cont["BattleLevel"][4] = 440

	--进入跨服对应地图
	tCrossServerBestHero_Cont["EnterSever"] = {}
	tCrossServerBestHero_Cont["EnterSever"]["SeverId"] = 200
	tCrossServerBestHero_Cont["EnterSever"]["Type"] = 12
	
	tCrossServerBestHero_Cont["ConfigType"] = {}
	tCrossServerBestHero_Cont["ConfigType"][1] = 40	-- 10611	第一层擂台
	tCrossServerBestHero_Cont["ConfigType"][2] = 41	-- 10612	第二层擂台
	tCrossServerBestHero_Cont["ConfigType"][3] = 42	-- 10613	第三层擂台
	tCrossServerBestHero_Cont["ConfigType"][4] = 43	-- 10614	第四层擂台
	tCrossServerBestHero_Cont["ConfigType"][5] = 44	-- 10615	第五层擂台
	tCrossServerBestHero_Cont["ConfigType"][6] = 45	-- 10616	第六层擂台
	tCrossServerBestHero_Cont["ConfigType"][7] = 46	-- 10617	第七层擂台
	tCrossServerBestHero_Cont["ConfigType"][8] = 47	-- 10618	第八层擂台
	tCrossServerBestHero_Cont["ConfigType"][9] = 48	-- 10619	第九层擂台
	tCrossServerBestHero_Cont["ConfigType"][10] = 49 -- 10620	第十层擂台
	
	tCrossServerBestHero_Cont["Record"] = {}
	tCrossServerBestHero_Cont["Record"]["MapId"] = 1002
	tCrossServerBestHero_Cont["Record"]["X"] = 317
	tCrossServerBestHero_Cont["Record"]["Y"] = 451
	
	tCrossServerBestHero_Cont["Trans"] = {}
	tCrossServerBestHero_Cont["Trans"]["X"] = 142
	tCrossServerBestHero_Cont["Trans"]["Y"] = 168
	
	-- 记录宝箱奖励领取数量
	tCrossServerBestHero_Cont["Global"] = 53362
	tCrossServerBestHero_Cont["MaxDataGlobal"] = 53373

	tCrossServerBestHero_Cont["BuyCard"] = 99
	tCrossServerBestHero_Cont["Card"] = 3600089
	
	tCrossServerBestHero_Cont["BuyTool"] = 27
	tCrossServerBestHero_Cont["Tool"] = 3600079
	
local tCrossServerBestHero_Task = {}
	-- data1 表示玩家参与场次  ==1早上  ==2中午 ==3晚上
	-- data2 表示玩家在对应场次中是否闯关
	-- data6 表示玩家在对应场次中到达的层数
	-- data4 表示玩家在对应场次中是否领取过最后的宝箱奖励
	-- data5 表示玩家在对应场次中是否已领取过某层对应奖励（用于中途进入从初级层开始，每层奖励不可以重复领取）	
	-- 每天可以参加三场
	-- 中间退场，重新进入需要从一开始的层数进入
	-- 每场每层奖励只可以领取一次
	tCrossServerBestHero_Task[1] = 35044
	-- -- 记录 万能令牌 使用时间  5分钟
	-- tCrossServerBestHero_Task[2] = 35045

local tCrossServerBestHero_Stc = {}
	tCrossServerBestHero_Stc["EventType"] = 196
	tCrossServerBestHero_Stc["DataType"] = 00

local tCrossServerBestHero_Npc = {}
	-- 24151 神刀大侠
	tCrossServerBestHero_Npc[24151] = {}
	tCrossServerBestHero_Npc[24151]["CellX"] = 317
	tCrossServerBestHero_Npc[24151]["CellY"] = 451
	tCrossServerBestHero_Npc[24151]["MapId"] = 1002
	tCrossServerBestHero_Npc[24151]["NpcId"] = 24151


local tCrossServerBestHero_Map = {}
	tCrossServerBestHero_Map[1] = 10611
	tCrossServerBestHero_Map[2] = 10612
	tCrossServerBestHero_Map[3] = 10613
	tCrossServerBestHero_Map[4] = 10614
	tCrossServerBestHero_Map[5] = 10615
	tCrossServerBestHero_Map[6] = 10616
	tCrossServerBestHero_Map[7] = 10617
	tCrossServerBestHero_Map[8] = 10618
	tCrossServerBestHero_Map[9] = 10619
	tCrossServerBestHero_Map[10] = 10620
	
	tCrossServerBestHero_Map[10611] = 1
	tCrossServerBestHero_Map[10612] = 2
	tCrossServerBestHero_Map[10613] = 3
	tCrossServerBestHero_Map[10614] = 4
	tCrossServerBestHero_Map[10615] = 5
	tCrossServerBestHero_Map[10616] = 6
	tCrossServerBestHero_Map[10617] = 7
	tCrossServerBestHero_Map[10618] = 8
	tCrossServerBestHero_Map[10619] = 9
	tCrossServerBestHero_Map[10620] = 10


local tCrossServerBestHero_Reward = {}
	-- 升层所需令牌数量,用于地图
	tCrossServerBestHero_Reward[3600080] = {3,10611}
	tCrossServerBestHero_Reward[3600081] = {3,10612}
	tCrossServerBestHero_Reward[3600082] = {3,10613}
	tCrossServerBestHero_Reward[3600083] = {4,10614}
	tCrossServerBestHero_Reward[3600084] = {4,10615}
	tCrossServerBestHero_Reward[3600085] = {4,10616}
	tCrossServerBestHero_Reward[3600086] = {5,10617}
	tCrossServerBestHero_Reward[3600087] = {5,10618}
	tCrossServerBestHero_Reward[3600088] = {5,10619}
	tCrossServerBestHero_Reward[3600089] = {1,0}

	tCrossServerBestHero_Reward["BeKilled"] = {}
	tCrossServerBestHero_Reward["BeKilled"][1] = 3600080
	tCrossServerBestHero_Reward["BeKilled"][2] = 3600081
	tCrossServerBestHero_Reward["BeKilled"][3] = 3600082
	tCrossServerBestHero_Reward["BeKilled"][4] = 3600083
	tCrossServerBestHero_Reward["BeKilled"][5] = 3600084
	tCrossServerBestHero_Reward["BeKilled"][6] = 3600085
	tCrossServerBestHero_Reward["BeKilled"][7] = 3600086
	tCrossServerBestHero_Reward["BeKilled"][8] = 3600087
	tCrossServerBestHero_Reward["BeKilled"][9] = 3600088
	

	-- 通过npc花费天石购买物品
	tCrossServerBestHero_Reward["Buy"] = {}
	tCrossServerBestHero_Reward["Buy"][3600089] = {}
	tCrossServerBestHero_Reward["Buy"][3600089]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Buy"][3600089]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Buy"][3600089]["RewardItem"][1]["Id"] = 3600089
	tCrossServerBestHero_Reward["Buy"][3600089]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Buy"][3600089]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Buy"][3600089]["EmoneyLog"] = "350	20076	99	99	1	"
	tCrossServerBestHero_Reward["Buy"][3600089]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Buy"][3600089]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Buy"][3600079] = {}
	tCrossServerBestHero_Reward["Buy"][3600079]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Buy"][3600079]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Buy"][3600079]["RewardItem"][1]["Id"] = 3600079
	tCrossServerBestHero_Reward["Buy"][3600079]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Buy"][3600079]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Buy"][3600079]["EmoneyLog"] = "350	20077	27	27	1	"
	tCrossServerBestHero_Reward["Buy"][3600079]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Buy"][3600079]["RewardEffect"]["Effect"] = "angelwing"

	-- 层数奖励
	tCrossServerBestHero_Reward["Floor"] = {}
	tCrossServerBestHero_Reward["Floor"][1] = {}
	-- tCrossServerBestHero_Reward["Floor"][1]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][1]["RewardStrengthValue"]["Value"] = 100
	tCrossServerBestHero_Reward["Floor"][1]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][1]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][1]["RewardItem"][1]["Id"] = 3600101
	tCrossServerBestHero_Reward["Floor"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][1]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][1]["LogStep"] = "2[1]"

	tCrossServerBestHero_Reward["Floor"][2] = {}
	-- tCrossServerBestHero_Reward["Floor"][2]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][2]["RewardStrengthValue"]["Value"] = 200
	tCrossServerBestHero_Reward["Floor"][2]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][2]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][2]["RewardItem"][1]["Id"] = 3600102
	tCrossServerBestHero_Reward["Floor"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][2]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][2]["LogStep"] = "2[2]"

	tCrossServerBestHero_Reward["Floor"][3] = {}
	-- tCrossServerBestHero_Reward["Floor"][3]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][3]["RewardStrengthValue"]["Value"] = 300
	tCrossServerBestHero_Reward["Floor"][3]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][3]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][3]["RewardItem"][1]["Id"] = 3600103
	tCrossServerBestHero_Reward["Floor"][3]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][3]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][3]["LogStep"] = "2[3]"

	tCrossServerBestHero_Reward["Floor"][4] = {}
	-- tCrossServerBestHero_Reward["Floor"][4]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][4]["RewardStrengthValue"]["Value"] = 400
	tCrossServerBestHero_Reward["Floor"][4]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][4]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][4]["RewardItem"][1]["Id"] = 3600104
	tCrossServerBestHero_Reward["Floor"][4]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][4]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][4]["LogStep"] = "2[4]"

	tCrossServerBestHero_Reward["Floor"][5] = {}
	-- tCrossServerBestHero_Reward["Floor"][5]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][5]["RewardStrengthValue"]["Value"] = 500
	tCrossServerBestHero_Reward["Floor"][5]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][5]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][5]["RewardItem"][1]["Id"] = 3600105
	tCrossServerBestHero_Reward["Floor"][5]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][5]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][5]["LogStep"] = "2[5]"

	tCrossServerBestHero_Reward["Floor"][6] = {}
	-- tCrossServerBestHero_Reward["Floor"][6]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][6]["RewardStrengthValue"]["Value"] = 600
	tCrossServerBestHero_Reward["Floor"][6]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][6]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][6]["RewardItem"][1]["Id"] = 3600106
	tCrossServerBestHero_Reward["Floor"][6]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][6]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][6]["LogStep"] = "2[6]"

	tCrossServerBestHero_Reward["Floor"][7] = {}
	-- tCrossServerBestHero_Reward["Floor"][7]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][7]["RewardStrengthValue"]["Value"] = 700
	tCrossServerBestHero_Reward["Floor"][7]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][7]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][7]["RewardItem"][1]["Id"] = 3600107
	tCrossServerBestHero_Reward["Floor"][7]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][7]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][7]["LogStep"] = "2[7]"

	tCrossServerBestHero_Reward["Floor"][8] = {}
	-- tCrossServerBestHero_Reward["Floor"][8]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][8]["RewardStrengthValue"]["Value"] = 800
	tCrossServerBestHero_Reward["Floor"][8]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][8]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][8]["RewardItem"][1]["Id"] = 3600108
	tCrossServerBestHero_Reward["Floor"][8]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][8]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][8]["LogStep"] = "2[8]"

	tCrossServerBestHero_Reward["Floor"][9] = {}
	-- tCrossServerBestHero_Reward["Floor"][9]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][9]["RewardStrengthValue"]["Value"] = 900
	tCrossServerBestHero_Reward["Floor"][9]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][9]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][9]["RewardItem"][1]["Id"] = 3600109
	tCrossServerBestHero_Reward["Floor"][9]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][9]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][9]["LogStep"] = "2[9]"

	tCrossServerBestHero_Reward["Floor"][10] = {}
	-- tCrossServerBestHero_Reward["Floor"][10]["RewardStrengthValue"] = {}
	-- tCrossServerBestHero_Reward["Floor"][10]["RewardStrengthValue"]["Value"] = 1000
	tCrossServerBestHero_Reward["Floor"][10]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Floor"][10]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Floor"][10]["RewardItem"][1]["Id"] = 3600110
	tCrossServerBestHero_Reward["Floor"][10]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Floor"][10]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Floor"][10]["LogStep"] = "2[10]"

	-- 宝箱奖励
	tCrossServerBestHero_Reward["Box"] = {}
	tCrossServerBestHero_Reward["Box"][1] = {}
	tCrossServerBestHero_Reward["Box"][1]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][1]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][1]["RewardItem"][1]["Id"] = 3600092
	tCrossServerBestHero_Reward["Box"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][1]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][1]["LogStep"] = "2[1]"
	tCrossServerBestHero_Reward["Box"][1]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][1]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][1]["RewardBroadCast"] = tCrossServerBestHero_Text["NumberOne"]
	tCrossServerBestHero_Reward["Box"][1]["Talk"] = tCrossServerBestHero_Text["Box"][1]

	tCrossServerBestHero_Reward["Box"][2] = {}
	tCrossServerBestHero_Reward["Box"][2]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][2]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][2]["RewardItem"][1]["Id"] = 3600093
	tCrossServerBestHero_Reward["Box"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][2]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][2]["LogStep"] = "2[2]"
	tCrossServerBestHero_Reward["Box"][2]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][2]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][2]["Talk"] = tCrossServerBestHero_Text["Box"][2]

	tCrossServerBestHero_Reward["Box"][3] = {}
	tCrossServerBestHero_Reward["Box"][3]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][3]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][3]["RewardItem"][1]["Id"] = 3600093
	tCrossServerBestHero_Reward["Box"][3]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][3]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][3]["LogStep"] = "2[3]"
	tCrossServerBestHero_Reward["Box"][3]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][3]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][3]["Talk"] = tCrossServerBestHero_Text["Box"][3]
	
	tCrossServerBestHero_Reward["Box"][4] = {}
	tCrossServerBestHero_Reward["Box"][4]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][4]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][4]["RewardItem"][1]["Id"] = 3600094
	tCrossServerBestHero_Reward["Box"][4]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][4]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][4]["LogStep"] = "2[4]"
	tCrossServerBestHero_Reward["Box"][4]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][4]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][4]["Talk"] = tCrossServerBestHero_Text["Box"][4]
	
	tCrossServerBestHero_Reward["Box"][5] = {}
	tCrossServerBestHero_Reward["Box"][5]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][5]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][5]["RewardItem"][1]["Id"] = 3600094
	tCrossServerBestHero_Reward["Box"][5]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][5]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][5]["LogStep"] = "2[5]"
	tCrossServerBestHero_Reward["Box"][5]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][5]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][5]["Talk"] = tCrossServerBestHero_Text["Box"][5]

	tCrossServerBestHero_Reward["Box"][6] = {}
	tCrossServerBestHero_Reward["Box"][6]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][6]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][6]["RewardItem"][1]["Id"] = 3600094
	tCrossServerBestHero_Reward["Box"][6]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][6]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][6]["LogStep"] = "2[6]"
	tCrossServerBestHero_Reward["Box"][6]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][6]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][6]["Talk"] = tCrossServerBestHero_Text["Box"][6]
	
	tCrossServerBestHero_Reward["Box"][7] = {}
	tCrossServerBestHero_Reward["Box"][7]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][7]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][7]["RewardItem"][1]["Id"] = 3600095
	tCrossServerBestHero_Reward["Box"][7]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][7]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][7]["LogStep"] = "2[7]"
	tCrossServerBestHero_Reward["Box"][7]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][7]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][7]["Talk"] = tCrossServerBestHero_Text["Box"][7]
	
	tCrossServerBestHero_Reward["Box"][8] = {}
	tCrossServerBestHero_Reward["Box"][8]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][8]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][8]["RewardItem"][1]["Id"] = 3600095
	tCrossServerBestHero_Reward["Box"][8]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][8]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][8]["LogStep"] = "2[8]"
	tCrossServerBestHero_Reward["Box"][8]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][8]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][8]["Talk"] = tCrossServerBestHero_Text["Box"][8]
	
	tCrossServerBestHero_Reward["Box"][9] = {}
	tCrossServerBestHero_Reward["Box"][9]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][9]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][9]["RewardItem"][1]["Id"] = 3600095
	tCrossServerBestHero_Reward["Box"][9]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][9]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][9]["LogStep"] = "2[9]"
	tCrossServerBestHero_Reward["Box"][9]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][9]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][9]["Talk"] = tCrossServerBestHero_Text["Box"][9]
	
	tCrossServerBestHero_Reward["Box"][10] = {}
	tCrossServerBestHero_Reward["Box"][10]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Box"][10]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Box"][10]["RewardItem"][1]["Id"] = 3600095
	tCrossServerBestHero_Reward["Box"][10]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Box"][10]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Box"][10]["LogStep"] = "2[10]"
	tCrossServerBestHero_Reward["Box"][10]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Box"][10]["RewardEffect"]["Effect"] = "angelwing"
	tCrossServerBestHero_Reward["Box"][10]["Talk"] = tCrossServerBestHero_Text["Box"][10]
	
	-- 杀人奖励 获得对应层数令牌
	tCrossServerBestHero_Reward["Killer"] = {}
	tCrossServerBestHero_Reward["Killer"][1] = {}
	tCrossServerBestHero_Reward["Killer"][1]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][1]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][1]["RewardItem"][1]["Id"] = 3600080
	tCrossServerBestHero_Reward["Killer"][1]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][1]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][1]["LogStep"] = "1[1]"
	tCrossServerBestHero_Reward["Killer"][1]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][1]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Killer"][2] = {}
	tCrossServerBestHero_Reward["Killer"][2]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][2]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][2]["RewardItem"][1]["Id"] = 3600081
	tCrossServerBestHero_Reward["Killer"][2]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][2]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][2]["LogStep"] = "1[2]"
	tCrossServerBestHero_Reward["Killer"][2]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][2]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Killer"][3] = {}
	tCrossServerBestHero_Reward["Killer"][3]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][3]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][3]["RewardItem"][1]["Id"] = 3600082
	tCrossServerBestHero_Reward["Killer"][3]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][3]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][3]["LogStep"] = "1[3]"
	tCrossServerBestHero_Reward["Killer"][3]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][3]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Killer"][4] = {}
	tCrossServerBestHero_Reward["Killer"][4]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][4]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][4]["RewardItem"][1]["Id"] = 3600083
	tCrossServerBestHero_Reward["Killer"][4]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][4]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][4]["LogStep"] = "1[4]"
	tCrossServerBestHero_Reward["Killer"][4]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][4]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Killer"][5] = {}
	tCrossServerBestHero_Reward["Killer"][5]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][5]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][5]["RewardItem"][1]["Id"] = 3600084
	tCrossServerBestHero_Reward["Killer"][5]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][5]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][5]["LogStep"] = "1[5]"
	tCrossServerBestHero_Reward["Killer"][5]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][5]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Killer"][6] = {}
	tCrossServerBestHero_Reward["Killer"][6]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][6]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][6]["RewardItem"][1]["Id"] = 3600085
	tCrossServerBestHero_Reward["Killer"][6]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][6]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][6]["LogStep"] = "1[6]"
	tCrossServerBestHero_Reward["Killer"][6]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][6]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Killer"][7] = {}
	tCrossServerBestHero_Reward["Killer"][7]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][7]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][7]["RewardItem"][1]["Id"] = 3600086
	tCrossServerBestHero_Reward["Killer"][7]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][7]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][7]["LogStep"] = "1[7]"
	tCrossServerBestHero_Reward["Killer"][7]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][7]["RewardEffect"]["Effect"] = "angelwing"
	
	tCrossServerBestHero_Reward["Killer"][8] = {}
	tCrossServerBestHero_Reward["Killer"][8]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][8]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][8]["RewardItem"][1]["Id"] = 3600087
	tCrossServerBestHero_Reward["Killer"][8]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][8]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][8]["LogStep"] = "1[8]"
	tCrossServerBestHero_Reward["Killer"][8]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][8]["RewardEffect"]["Effect"] = "angelwing"

	tCrossServerBestHero_Reward["Killer"][9] = {}
	tCrossServerBestHero_Reward["Killer"][9]["RewardItem"] = {}
	tCrossServerBestHero_Reward["Killer"][9]["RewardItem"][1] = {}
	tCrossServerBestHero_Reward["Killer"][9]["RewardItem"][1]["Id"] = 3600088
	tCrossServerBestHero_Reward["Killer"][9]["RewardItem"][1]["Attr"] = "0 1"
	tCrossServerBestHero_Reward["Killer"][9]["LogId"] = 12001390
	tCrossServerBestHero_Reward["Killer"][9]["LogStep"] = "1[9]"
	tCrossServerBestHero_Reward["Killer"][9]["RewardEffect"] = {}
	tCrossServerBestHero_Reward["Killer"][9]["RewardEffect"]["Effect"] = "angelwing"
	

	
local tCrossServerBestHero_Effect = {}
	tCrossServerBestHero_Effect[1] = "self"
	-- 升层光效
	tCrossServerBestHero_Effect[2] = {}	
	tCrossServerBestHero_Effect[2][1] = "movego"
	tCrossServerBestHero_Effect[2][2] = "CountF2"
	tCrossServerBestHero_Effect[2][3] = "CountF3"
	tCrossServerBestHero_Effect[2][4] = "CountF4"
	tCrossServerBestHero_Effect[2][5] = "CountF5"
	tCrossServerBestHero_Effect[2][6] = "CountF6"
	tCrossServerBestHero_Effect[2][7] = "CountF7"
	tCrossServerBestHero_Effect[2][8] = "CountF8"
	tCrossServerBestHero_Effect[2][9] = "CountF9"
	tCrossServerBestHero_Effect[2][10] = "CountF10"
	
	tCrossServerBestHero_Effect[3] = "accession"		-- 闯关成功和升层光效
	tCrossServerBestHero_Effect[4] = "movego"			-- 进入地图光效
	tCrossServerBestHero_Effect[5] = "moveback"		-- 出地图光效
	tCrossServerBestHero_Effect[6] = "LevelUp"		-- 领取各种奖励光效
	
local tCrossServerBestHero_Log = {}
	tCrossServerBestHero_Log["SendIn"] = "350	22229	0	0	1	"
	tCrossServerBestHero_Log["Participation"] = {}		-- 记录每层擂台的参与人数
	tCrossServerBestHero_Log["Participation"][1] = "350	20083	0	0	1	"
	tCrossServerBestHero_Log["Participation"][2] = "350	20084	0	0	1	"
	tCrossServerBestHero_Log["Participation"][3] = "350	20085	0	0	1	"
	tCrossServerBestHero_Log["Participation"][4] = "350	20086	0	0	1	"
	tCrossServerBestHero_Log["Participation"][5] = "350	20087	0	0	1	"
	tCrossServerBestHero_Log["Participation"][6] = "350	20088	0	0	1	"
	tCrossServerBestHero_Log["Participation"][7] = "350	20089	0	0	1	"
	tCrossServerBestHero_Log["Participation"][8] = "350	20090	0	0	1	"
	tCrossServerBestHero_Log["Participation"][9] = "350	20091	0	0	1	"
	tCrossServerBestHero_Log["Participation"][10] = "350	20092	0	0	1	"
	tCrossServerBestHero_Log["ParticipationLog"] = "0,0,0,0,12001390,1[%d],0,0"	-- 活动进入第n层 与 活动结束闯关成功
	tCrossServerBestHero_Log["DelItem"] = "0,0,%d,%d,12001390,3,0,0"		-- 物品过期删除
	tCrossServerBestHero_Log["GetReward"] = "0,0,0,0,12001390,2[%d],%d,%d"		-- 获得对应层数奖励 强插 
	


local tCrossServerBestHero_Invite = {}		-- 全服邀请设置
	tCrossServerBestHero_Invite["MapId"] = 1002
	tCrossServerBestHero_Invite["Activity_Invite_1"] = "battlelev >= 300"
	tCrossServerBestHero_Invite["Activity_InviteId"] = 5
	-- 全服邀请任意8个点
	-- 普通服坐标
	tCrossServerBestHero_Invite["Invite_Pos"] ={}
	tCrossServerBestHero_Invite["Invite_Pos"][1] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][1]["X"] = 315
	tCrossServerBestHero_Invite["Invite_Pos"][1]["Y"] = 448
	
	tCrossServerBestHero_Invite["Invite_Pos"][2] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][2]["X"] = 317
	tCrossServerBestHero_Invite["Invite_Pos"][2]["Y"] = 448
	
	tCrossServerBestHero_Invite["Invite_Pos"][3] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][3]["X"] = 319
	tCrossServerBestHero_Invite["Invite_Pos"][3]["Y"] = 449
	
	tCrossServerBestHero_Invite["Invite_Pos"][4] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][4]["X"] = 321
	tCrossServerBestHero_Invite["Invite_Pos"][4]["Y"] = 454
	
	tCrossServerBestHero_Invite["Invite_Pos"][5] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][5]["X"] = 317
	tCrossServerBestHero_Invite["Invite_Pos"][5]["Y"] = 454
	
	tCrossServerBestHero_Invite["Invite_Pos"][6] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][6]["X"] = 319
	tCrossServerBestHero_Invite["Invite_Pos"][6]["Y"] = 451
	
	tCrossServerBestHero_Invite["Invite_Pos"][7] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][7]["X"] = 318
	tCrossServerBestHero_Invite["Invite_Pos"][7]["Y"] = 447
	
	tCrossServerBestHero_Invite["Invite_Pos"][8] = {}
	tCrossServerBestHero_Invite["Invite_Pos"][8]["X"] = 319
	tCrossServerBestHero_Invite["Invite_Pos"][8]["Y"] = 450
	
	-- 激情服坐标
	tCrossServerBestHero_Invite["Invite_Pos1"] ={}
	tCrossServerBestHero_Invite["Invite_Pos1"][1] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][1]["X"] = 205
	tCrossServerBestHero_Invite["Invite_Pos1"][1]["Y"] = 180
	
	tCrossServerBestHero_Invite["Invite_Pos1"][2] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][2]["X"] = 206
	tCrossServerBestHero_Invite["Invite_Pos1"][2]["Y"] = 181
	
	tCrossServerBestHero_Invite["Invite_Pos1"][3] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][3]["X"] = 204
	tCrossServerBestHero_Invite["Invite_Pos1"][3]["Y"] = 177
	
	tCrossServerBestHero_Invite["Invite_Pos1"][4] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][4]["X"] = 208
	tCrossServerBestHero_Invite["Invite_Pos1"][4]["Y"] = 176
	
	tCrossServerBestHero_Invite["Invite_Pos1"][5] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][5]["X"] = 202
	tCrossServerBestHero_Invite["Invite_Pos1"][5]["Y"] = 180
	
	tCrossServerBestHero_Invite["Invite_Pos1"][6] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][6]["X"] = 203
	tCrossServerBestHero_Invite["Invite_Pos1"][6]["Y"] = 178
	
	tCrossServerBestHero_Invite["Invite_Pos1"][7] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][7]["X"] = 205
	tCrossServerBestHero_Invite["Invite_Pos1"][7]["Y"] = 177
	
	tCrossServerBestHero_Invite["Invite_Pos1"][8] = {}
	tCrossServerBestHero_Invite["Invite_Pos1"][8]["X"] = 204
	tCrossServerBestHero_Invite["Invite_Pos1"][8]["Y"] = 181
	
	-- 全服邀请对白
	tCrossServerBestHero_Invite["InviteSendId"] = {}   --ini/StrRes.ini  序号顺延，提示框对白
	tCrossServerBestHero_Invite["InviteSendId"][1] = 10579		-- 英文
	tCrossServerBestHero_Invite["InviteSendId"][2] = 10580
	tCrossServerBestHero_Invite["InviteSendId"][3] = 10581
	tCrossServerBestHero_Invite["InviteSendOkId"] = 10582
	
	-- tCrossServerBestHero_Invite["InviteSendId"][1] = 10548		-- 简体
	-- tCrossServerBestHero_Invite["InviteSendId"][2] = 10549
	-- tCrossServerBestHero_Invite["InviteSendId"][3] = 10550
	-- tCrossServerBestHero_Invite["InviteSendOkId"] = 10551
	-- 全服邀请倒计时
	tCrossServerBestHero_Invite["InviteCountDown"] = 30

------------------------------------------------------------------
	-- 排行榜
	tRankingFunc_Info[24151] = {}
	tRankingFunc_Info[24151]["ActiveTime"] = tCrossServerBestHero_Cont["Activity"]
	tRankingFunc_Info[24151]["DayTime"] = {}
	tRankingFunc_Info[24151]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[24151]["Reset"] = 1
	tRankingFunc_Info[24151]["Global"] = {53398,53399,53400,53401}
	tRankingFunc_Info[24151]["RankNum"] = 10

	tRankingFunc_Info[24151]["Mail"] = {}
	tRankingFunc_Info[24151]["Mail"]["ActiveTime"] = tCrossServerBestHero_Cont["RankActivityTime"]
	tRankingFunc_Info[24151]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[24151]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[24151]["Mail"]["HaveFunc"] = 1
	tRankingFunc_Info[24151]["Mail"]["Reward"] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[24151]["Mail"]["Reward"][1]["ActionId"] = 572368
	tRankingFunc_Info[24151]["Mail"]["Reward"][1]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][1]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][1]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][1]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][1]
	tRankingFunc_Info[24151]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[24151]["Mail"]["Reward"][2]["ActionId"] = 572369
	tRankingFunc_Info[24151]["Mail"]["Reward"][2]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][2]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][2]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][2]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][2]
	tRankingFunc_Info[24151]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[24151]["Mail"]["Reward"][3]["ActionId"] = 572370
	tRankingFunc_Info[24151]["Mail"]["Reward"][3]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][3]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][3]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][3]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][3]
	tRankingFunc_Info[24151]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[24151]["Mail"]["Reward"][4]["ActionId"] = 572371
	tRankingFunc_Info[24151]["Mail"]["Reward"][4]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][4]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][4]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][4]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][4]
	tRankingFunc_Info[24151]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[24151]["Mail"]["Reward"][5]["ActionId"] = 572372
	tRankingFunc_Info[24151]["Mail"]["Reward"][5]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][5]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][5]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][5]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][5]
	tRankingFunc_Info[24151]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[24151]["Mail"]["Reward"][6]["ActionId"] = 572373
	tRankingFunc_Info[24151]["Mail"]["Reward"][6]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][6]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][6]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][6]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][6]
	tRankingFunc_Info[24151]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][7]["ActionId"] = 572374
	tRankingFunc_Info[24151]["Mail"]["Reward"][7]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][7]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][7]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][7]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][7]
	tRankingFunc_Info[24151]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[24151]["Mail"]["Reward"][8]["ActionId"] = 572375
	tRankingFunc_Info[24151]["Mail"]["Reward"][8]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][8]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][8]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][8]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][8]
	tRankingFunc_Info[24151]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[24151]["Mail"]["Reward"][9]["ActionId"] = 572376
	tRankingFunc_Info[24151]["Mail"]["Reward"][9]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][9]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][9]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][9]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][9]
	tRankingFunc_Info[24151]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[24151]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[24151]["Mail"]["Reward"][10]["ActionId"] = 572377
	tRankingFunc_Info[24151]["Mail"]["Reward"][10]["ExistDay"] = 7
	tRankingFunc_Info[24151]["Mail"]["Reward"][10]["Title"] = tCrossServerBestHero_Text["Mail"][24151]["Title"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][10]["Sender"] = tCrossServerBestHero_Text["Mail"][24151]["Sender"]
	tRankingFunc_Info[24151]["Mail"]["Reward"][10]["Content"] = tCrossServerBestHero_Text["Mail"][24151]["Content"][10]


------------------------------------------------逻辑部分-------------------------------------------------
-- 活动时间判断
function CrossServerBestHero_TimeJudgement()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		if Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][1]) or Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][2]) or Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][3]) then
			return true
		else
			return false
		end
	else
		return false
	end
end

-- 送我回双龙城
function CrossServerBestHero_BackToTown()
	Sys_ExitOS()
	User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[5])
	-- 清除身上的所有令牌
	CrossServerBestHero_DelItem()
	CrossServerBestHeroPackage_ChkToolStatus()
end

-- 玩家等级判断
function CrossServerBestHero_LevelJudgement()
	local nLevel = tCrossServerBestHero_Cont["Level"]
	local nMete = tCrossServerBestHero_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 玩家战斗力判断
function CrossServerBestHero_BattleleLevelJudge()
	local nNowBattle = Get_UserBattleLevel()
	if nNowBattle >= tCrossServerBestHero_Cont["BattleLevel"][1] then
		return true
	else
		return false
	end	
end

-- 获取玩家战斗力区间
function CrossServerBestHero_GetBattleleLevel()
	local nNowBattle = Get_UserBattleLevel()
	local nType = 1
	if nNowBattle >= tCrossServerBestHero_Cont["BattleLevel"][1] and nNowBattle <= tCrossServerBestHero_Cont["BattleLevel"][2] then
		nType = 1
	elseif nNowBattle > tCrossServerBestHero_Cont["BattleLevel"][2] and nNowBattle <= tCrossServerBestHero_Cont["BattleLevel"][3] then
		nType = 2
	elseif nNowBattle > tCrossServerBestHero_Cont["BattleLevel"][3] then
		nType = 3
	end
	
	return nType
end

-- 判断玩家是否在活动地图中(1-10层)
function CrossServerBestHero_IsInMap(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	if nMapId >= tCrossServerBestHero_Map[1] and nMapId <= tCrossServerBestHero_Map[10] then
		return true
	else
		return false
	end
end

-- 判断当前活动是当天的第几轮
function CrossServerBestHero_GameRound()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		if Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][1]) then
			return 1
		elseif Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][2]) then
			return 2
		elseif Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][3]) then
			return 3
		end
	end
end

-- 24151  神刀大侠
-- Option4: 送我入场。
function CrossServerBestHero_NPCSendIn(nNpcId)
	if not CrossServerBestHero_TimeJudgement() then
		User_TalkChannel2005(tCrossServerBestHero_Text["ActivityOutTime"])
		return
	end
	
	if not CrossServerBestHero_BattleleLevelJudge() then
		return
	end
	
	local nTaskId = tCrossServerBestHero_Task[1]
	if Task_ChkTaskDetail(nTaskId,0) then
		-- 判断是否隔天 隔天重置
		local nData6 = Get_TaskDetailData6(nTaskId)
		-- if Task_DetailInterval(nTaskId,1,4) then
		if nData6 == 0 then
			Task_SetTaskDetailCompleteFlag(nTaskId,0)
			Task_SetTaskDetailData1(nTaskId,0)
			Task_SetTaskDetailData2(nTaskId,0)
			Task_SetTaskDetailData4(nTaskId,0)
			Task_SetTaskDetailData6(nTaskId,0)
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	else
		Task_AddTaskDetail(nTaskId,0)
		Task_SetTaskDetailData7(nTaskId,os.time())
	end
	
	-- data1 表示玩家参与场次  ==1 早上  ==2 中午 ==3  晚上
	-- data2 表示玩家在对应场次中是否闯关  ==0 表示未通关  ==1表示闯关成功  
	-- data6 表示玩家在对应场次中到达的层数
	-- data4 表示玩家在对应场次中是否领取过最后的宝箱奖励
	-- data5 表示玩家在对应场次中领取过某层对应奖励（用于中途进入从初级层开始，每层奖励不可以重复领取）
	-- tCrossServerBestHero_Task[1] = 35044
	-- 每天可以参加三场
	-- 中间退场，重新进入需要从一开始的层数进入
	-- 每场每层奖励只可以领取一次

	local nData1 = Get_TaskDetailData1(nTaskId)
	local nData2 = Get_TaskDetailData2(nTaskId)
	local nGameRound = CrossServerBestHero_GameRound()
	
	-- 玩家已参与过该场次并通关，不可进入
	if nData1 == nGameRound and nData2 == 1 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	if nData1 == nGameRound and nData2 == 0 then
		-- 同一场重复进，只设置场次和是否通关标志，不重置层数奖励标志
		Task_SetTaskDetailData1(nTaskId,nGameRound)
		Task_SetTaskDetailData2(nTaskId,0)
		Task_SetTaskDetailData7(nTaskId,os.time())
	elseif nData1 ~= nGameRound then
		-- 当天不同场，重置所有标志
		Task_SetTaskDetailData1(nTaskId,nGameRound)
		Task_SetTaskDetailData2(nTaskId,0)
		Task_SetTaskDetailData4(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,0)
		Task_SetTaskDetailData6(nTaskId,0)
		Task_SetTaskDetailData7(nTaskId,os.time())
	end
	
	-- 进入跨服
	local nFloor = CrossServerBestHero_GetBattleleLevel()
	-- local nServerId = tCrossServerBestHero_Cont["EnterSever"]["SeverId"]
	local nServerId = Get_FrontierServerID()
	local nType = tCrossServerBestHero_Cont["EnterSever"]["Type"]
	local nConfigMapFlag = tCrossServerBestHero_Cont["ConfigType"][nFloor]
	if Sys_EnterServer(nServerId,nType,0,nConfigMapFlag) then
		-- 清除身上的所有令牌
		CrossServerBestHero_DelItem()
		CrossServerBestHeroPackage_ChkToolStatus()

		local nData5 = Get_TaskDetailData5(nTaskId)
		Task_SetTaskDetailData6(nTaskId,nFloor)
		-- 领取对应层数奖励，不可重复领
		if nData5 < nFloor then
			Task_SetTaskDetailData5(nTaskId,nFloor)
			-- RewardTemplate_Reward(tCrossServerBestHero_Reward["Floor"][nFloor])
			
			local nRewardId = tCrossServerBestHero_Reward["Floor"][nFloor]["RewardItem"][1]["Id"]
			local sAttr = tCrossServerBestHero_Reward["Floor"][nFloor]["RewardItem"][1]["Attr"]
			local sRewardName = Item_AddNewItemAndMsg(nRewardId,sAttr)
			User_TalkChannel2005(string.format(tRewardTemplate_Text["Currency"],sRewardName))
			local sLog = string.format(tCrossServerBestHero_Log["GetReward"],nFloor,nRewardId,1)
			Sys_SaveActionRewardLog(sLog)
			
			User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[6])
			
			-- 每场参与人数log  在本服查询此log
			Sys_SaveEmoneyBuy(tCrossServerBestHero_Log["SendIn"])
		end
		-- 记录每层擂台的参与人数
		Sys_SaveEmoneyBuy(tCrossServerBestHero_Log["Participation"][nFloor])
		Sys_SaveActionFestivalLog(string.format(tCrossServerBestHero_Log["ParticipationLog"],nFloor))
		User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[4])
		if nFloor ~= 1 then
			User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[2][nFloor])
		end
		User_TalkChannel2005(tCrossServerBestHero_Text["SendIn"])
	end
end

-- 清除身上的所有令牌
function CrossServerBestHero_DelItem(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	for i,v in pairs(tCrossServerBestHero_Reward["BeKilled"]) do
		if Item_ChkMulItem(v,v,1,nil,nil,nUserId) then
			Item_DelAllItemByType(v,nUserId)
		end
	end
end

-- 传送大使逻辑
function CrossServerBestHero_TransNpc()
	if not Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		return
	end
	
	-- User_OpenDialog()
	local nNpcId = Get_NpcId()
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 宝箱npc
function CrossServerBestHero_OpenBox(nNpcId)
	if not Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		return
	end
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

-- 宝箱领通关奖励 前10
function CrossServerBestHero_GetReward(nNpcId)
	-- 领取时间不在活动时间内
	if not CrossServerBestHero_TimeJudgement() then
		Sys_MsgBox(tCrossServerBestHero_Text["ActivityOutTime"])
		return
	end
	
	-- 玩家不在宝箱所在地图，防止玩家卡对白
	local nMapId = Get_UserMapId()
	if nMapId ~= tCrossServerBestHero_Map[10] then
		return
	end

	-- 宝箱奖励被领取完10个
	local nGlobalId = tCrossServerBestHero_Cont["Global"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	if nData >= 10 then
		Sys_MsgBox(tCrossServerBestHero_Text[nNpcId]["NoGift"])
		return
	end
	
	local nTaskId = tCrossServerBestHero_Task[1]
	if not Task_ChkTaskDetail(nTaskId,0) then
		Task_AddTaskDetail(nTaskId,0)
		Task_SetTaskDetailData7(nTaskId,os.time())
	end

	local nData4 = Get_TaskDetailData4(nTaskId)
	if nData4 >= 1 then
		Sys_MsgBox(tCrossServerBestHero_Text[nNpcId]["Again"])
		return
	end
	
	local nData6 = Get_TaskDetailData6(nTaskId)
	-- 领取宝箱奖励
	if nData6 >= 10 then
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tCrossServerBestHero_Text["FullBag"])
			return
		end
			
		Task_SetTaskDetailData4(nTaskId,1)
		Task_SetTaskDetailData7(nTaskId,os.time())
		
		local nSetData = nData + 1
		Sys_SetSynaGlobalData(nGlobalId,0,nSetData)
		
		RewardTemplate_Reward(tCrossServerBestHero_Reward["Box"][nSetData])
	end
end

-- 杀人触发
function CrossServerBestHero_KillPlayer(nUserId, nBeKilled)
	-- 杀人不在活动时间内
	if not CrossServerBestHero_TimeJudgement() then
		return
	end
	
	-- 杀人玩家不在相关地图
	if not CrossServerBestHero_IsInMap(nUserId) then
		return
	end
	if not CrossServerBestHero_IsInMap(nBeKilled) then
		return
	end
	
	-- 获取玩家所在地图
	local nMapId = Get_UserMapId(nUserId)
	local nFloor = tCrossServerBestHero_Map[nMapId]
	local nItemId = tCrossServerBestHero_Reward["BeKilled"][nFloor]
	if nFloor >= 1 and nFloor <= 9 then
		-- 删掉被杀者的令牌
		if Item_ChkMulItem(nItemId,nItemId,1,nil,nil,nBeKilled) then
			if Item_DelMulItem(nItemId,nItemId,1,nil,nil,nBeKilled) then
				User_TalkChannel2005(tCrossServerBestHero_Text["BeKilled"][nFloor],nBeKilled)
			end
		end
				
		-- 给与杀人者对应令牌
		if not User_CheckLeftSpace(1,nUserId) then
			Sys_MsgBox(tCrossServerBestHero_Text["FullBag"],nil,nil,nUserId)
			return
		end
		
		RewardTemplate_Reward(tCrossServerBestHero_Reward["Killer"][nFloor],nUserId)
		User_TalkChannel2005(tCrossServerBestHero_Text["Killer"][nFloor],nUserId)
				
		-- 有足够数量的令牌
		-- local nNum = tCrossServerBestHero_Reward[nItemId][1]
		-- local sItemName = tCrossServerBestHero_Text["ItemName"][nItemId]
		-- if Item_ChkMulItem(nItemId,nItemId,nNum,nil,nil,nUserId) then
			-- local str = string.format(tCrossServerBestHero_Text["CardTips"],sItemName,nNum)
			-- local sFunc = "</F>CrossServerBestHero_UpFloor</N>" .. nItemId .. "</N>" .. 2
			-- Sys_MsgBox(str,sFunc,sFunc,nUserId)
			-- 是否需要自动判断并使用物品传送下一层
			-- CrossServerBestHero_UpFloor(nItemId,2,nUserId)
		-- end
	end
end

-- 升层逻辑
function CrossServerBestHero_UpFloor(nItemId,nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	-- 令牌不存在
	if not Item_ChkMulItem(nItemId,nItemId,1,nil,nil,nUserId) then
		return
	end
	
	-- 判断是否需要过期删除
	if not Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		if nIndex == 1 then
			--不在活动时间，删除物品
			local nItemNum = Get_CountItemType(nItemId,0,nil,nil,nUserId)
			if Item_DelMulItem(nItemId,nItemId,nItemNum,nil,nil,nUserId) then
				local str = string.format(tCrossServerBestHero_Log["DelItem"],nItemId,nItemNum)
				Sys_SaveActionFestivalLog(str,nUserId)
				User_TalkChannel2005(tCrossServerBestHero_Text["Disappear"],nUserId)
			end
		end
		return
	end
	
	if not CrossServerBestHero_TimeJudgement() then
		if nIndex == 1 then
			Sys_MsgBox(tCrossServerBestHero_Text["TimeLimit"],nil,nil,nUserId)
		end
		return
	end
	
	-- 玩家不在相关地图
	if not CrossServerBestHero_IsInMap(nUserId) then
		if nIndex == 1 then
			Sys_MsgBox(tCrossServerBestHero_Text["MapLimit"],nil,nil,nUserId)
		end
		return
	end
	
	-- 判断玩家所使用的令牌 在 所在的层数是否可以用
	local nMapId = Get_UserMapId(nUserId)
	local nNeedMap = tCrossServerBestHero_Reward[nItemId][2]
	local nNeedFloor = tCrossServerBestHero_Map[nNeedMap]
	-- 万能令牌可以在1-9层使用
	if nItemId == 3600089 then
		nNeedMap = nMapId
		nNeedFloor = tCrossServerBestHero_Map[nMapId]
		if nNeedFloor == 10 then
			if nIndex == 1 then
				Sys_MsgBox(tCrossServerBestHero_Text["Universal"],nil,nil,nUserId)
			end
			return
		end
	end
		
	if nItemId ~= 3600089 then		-- 万能令牌除外
		if nMapId ~= nNeedMap then
			if nIndex == 1 then
				Sys_MsgBox(string.format(tCrossServerBestHero_Text["ItemUse"],nNeedFloor),nil,nil,nUserId)
			end
			return
		end
	end
	
	-- 是否有足够数量的令牌
	local nNum = tCrossServerBestHero_Reward[nItemId][1]
	local sItemName = tCrossServerBestHero_Text["ItemName"][nItemId]
	if not Item_ChkMulItem(nItemId,nItemId,nNum,nil,nil,nUserId) then
		if nIndex == 1 then
			Sys_MsgBox(string.format(tCrossServerBestHero_Text["NumLimit"],nNum,sItemName),nil,nil,nUserId)
		end
		return
	end

	-- 使用对应数量的令牌 升层 并给层数奖励
	if Item_ChkMulItem(nItemId,nItemId,nNum,nil,nil,nUserId) then
		if Item_DelMulItem(nItemId,nItemId,nNum,nil,nil,nUserId) then		
			local nTaskId = tCrossServerBestHero_Task[1]
			if Task_ChkTaskDetail(nTaskId,nUserId) then
				-- 判断是否隔天 隔天重置
				local nData6 = Get_TaskDetailData6(nTaskId,nUserId)
				-- if Task_DetailInterval(nTaskId,1,4,nUserId) then
				if nData6 == 0 then
					Task_SetTaskDetailCompleteFlag(nTaskId,0,nUserId)
					Task_SetTaskDetailData1(nTaskId,0,nUserId)
					Task_SetTaskDetailData2(nTaskId,0,nUserId)
					Task_SetTaskDetailData4(nTaskId,0,nUserId)
					Task_SetTaskDetailData6(nTaskId,0,nUserId)
					Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
				end
			else
				Task_AddTaskDetail(nTaskId,0,nUserId)
				Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
			end
			
			-- 传送地图
			local nSetFloor = nNeedFloor + 1
			local nTransMap = tCrossServerBestHero_Map[nSetFloor]
			local nCellx = tCrossServerBestHero_Cont["Trans"]["X"]
			local nCelly = tCrossServerBestHero_Cont["Trans"]["Y"]			
			
			if User_ChgMapCross(nTransMap,nCellx,nCelly,0,nUserId) then
			-- if UserRandTrans(nUserId,nTransMap,0) then
			-- if User_ChgMap(nTransMap,nCellx,nCelly,0,nUserId) then
				-- 清除身上的所有令牌
				CrossServerBestHero_DelItem(nUserId)
				
				local nData5 = Get_TaskDetailData5(nTaskId,nUserId)
				Task_SetTaskDetailData6(nTaskId,nSetFloor,nUserId)				
				-- 判断对应层奖励是否在本场比赛中已领取
				if nData5 < nSetFloor then
					Task_SetTaskDetailData5(nTaskId,nSetFloor,nUserId)
					
					-- RewardTemplate_Reward(tCrossServerBestHero_Reward["Floor"][nSetFloor],nUserId)
					
					local nRewardId = tCrossServerBestHero_Reward["Floor"][nSetFloor]["RewardItem"][1]["Id"]
					local sAttr = tCrossServerBestHero_Reward["Floor"][nSetFloor]["RewardItem"][1]["Attr"]
					local sRewardName = Item_AddNewItemAndMsg(nRewardId,sAttr,nUserId)
					User_TalkChannel2005(string.format(tRewardTemplate_Text["Currency"],sRewardName),nUserId)
					local sLog = string.format(tCrossServerBestHero_Log["GetReward"],nSetFloor,nRewardId,1)
					Sys_SaveActionRewardLog(sLog,nUserId)
					
					User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[6],nUserId)
				end
				if nSetFloor == 10 then
					-- 进入第10层表示通关
					Task_SetTaskDetailData2(nTaskId,1,nUserId)
				end
				-- 记录每层擂台的参与人数
				Sys_SaveEmoneyBuy(tCrossServerBestHero_Log["Participation"][nSetFloor],nUserId)
				Sys_SaveActionFestivalLog(string.format(tCrossServerBestHero_Log["ParticipationLog"],nSetFloor),nUserId)
				User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[2][nSetFloor],nUserId)
				if nSetFloor == 10 then
					User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[3],nUserId)
				end
			end
		end
	end
end

-- 24152  24152-24160  行脚商人(1-9层)
-- Option1:购买万能金牌（99点天石）
function CrossServerBestHero_BuyPowerCard()
	-- 判断时间
	if not CrossServerBestHero_TimeJudgement() then
		return
	end
	
	-- 判断相关地图
	if not CrossServerBestHero_IsInMap() then
		return
	end
	
	local nNpcId = Get_NpcId()
	-- 天石不足
	local nEmoney = Get_UserEMoney()
	if nEmoney < tCrossServerBestHero_Cont["BuyCard"] then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 二次确认
	LinkNpcGossipFunc_New(nNpcId,"2-3")
end

-- Option6:确定
function CrossServerBestHero_SureToBuyCard()
	-- 判断时间
	if not CrossServerBestHero_TimeJudgement() then
		return
	end
	
	-- 判断相关地图
	if not CrossServerBestHero_IsInMap() then
		return
	end	
	
	local nNpcId = Get_NpcId()

	-- 天石不足
	local nEmoney = Get_UserEMoney()
	local nNeedEmoney = tCrossServerBestHero_Cont["BuyCard"]
	if nEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	-- 确定
	if User_AddEMoney(-nNeedEmoney) then
		local nItemId = tCrossServerBestHero_Cont["Card"]
		RewardTemplate_Reward(tCrossServerBestHero_Reward["Buy"][nItemId])
		Sys_MsgBox(tCrossServerBestHero_Text["BuySuccess_1"])
	end
end

-- Option2:购买增益符（20点天石）
function CrossServerBestHero_BuyTool()
	-- 判断时间
	if not CrossServerBestHero_TimeJudgement() then
		return
	end
	
	-- 判断相关地图
	if not CrossServerBestHero_IsInMap() then
		return
	end

	local nNpcId = Get_NpcId()
	-- 天石不足
	local nEmoney = Get_UserEMoney()
	if nEmoney < tCrossServerBestHero_Cont["BuyTool"] then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 二次确认
	LinkNpcGossipFunc_New(nNpcId,"2-6")
end

-- Option8:确定
function CrossServerBestHero_SureToBuyTool()
	-- 判断时间
	if not CrossServerBestHero_TimeJudgement() then
		return
	end
	
	-- 判断相关地图
	if not CrossServerBestHero_IsInMap() then
		return
	end	
	
	local nNpcId = Get_NpcId()

	-- 天石不足
	local nEmoney = Get_UserEMoney()
	local nNeedEmoney = tCrossServerBestHero_Cont["BuyTool"]
	if nEmoney < nNeedEmoney then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--背包满
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 确定
	if User_AddEMoney(-nNeedEmoney) then
		local nItemId = tCrossServerBestHero_Cont["Tool"]
		RewardTemplate_Reward(tCrossServerBestHero_Reward["Buy"][nItemId])
		Sys_MsgBox(tCrossServerBestHero_Text["BuySuccess_2"])
	end
end

-- 行脚商人
function CrossServerBestHero_OpenShop()
	if not Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		return
	end
	
	User_OpenDialog()
end

--------------------------------------------时间触发-----------------------------------------------------------
-- 12:40-13:00, 17:40-18:00, 21:40-22:00
-- 前三分钟 发出活动即将开始的公告
function CrossServerBestHero_TimeComing()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		if Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][1]) then
			Sys_SystemBroadcast(tCrossServerBestHero_Text["TimeComing"][1])
		elseif Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][2]) then
			Sys_SystemBroadcast(tCrossServerBestHero_Text["TimeComing"][2])
		elseif Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][3]) then
			Sys_SystemBroadcast(tCrossServerBestHero_Text["TimeComing"][3])
		end
		
		-- 清理排行榜
		CrossServerBestHero_ClearRankingList()	
	end
end	

-- 前1-2分钟  弹出全服邀请
function CrossServerBestHero_SendInMap()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		if Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][1]) or Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][2]) or Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][3]) then
			local nInviteId = tCrossServerBestHero_Invite["Activity_InviteId"]
			local sParam = tCrossServerBestHero_Invite["Activity_Invite_1"]
			local nMapId = tCrossServerBestHero_Invite["MapId"]
			local tTransPosx = tCrossServerBestHero_Invite["Invite_Pos"]
			local nStrSendInviteId = tCrossServerBestHero_Invite["InviteSendId"][1]
			local nStrTransOKId = tCrossServerBestHero_Invite["InviteSendOkId"]
			local nCloseSecs = tCrossServerBestHero_Invite["InviteCountDown"]
			
			if Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][2]) then
				nStrSendInviteId = tCrossServerBestHero_Invite["InviteSendId"][2]
			end
			if Sys_ChkDayTime(tCrossServerBestHero_Cont["StartTime"][3]) then
				nStrSendInviteId = tCrossServerBestHero_Invite["InviteSendId"][3]
			end
			
			if SpecialServer_ChkNoGiftServer() then
				tTransPosx = tCrossServerBestHero_Invite["Invite_Pos1"]
			end
			
			if Sys_InviteFilter(nInviteId,sParam) then
				Sys_InviteTrans(nMapId,tTransPosx,nStrSendInviteId,nStrTransOKId,nInviteId,nCloseSecs)
			end
		end
		
		-- 清理排行榜
		CrossServerBestHero_ClearRankingList()
	end
end

-- 结束前一两分钟 提示该轮活动即将结束
function CrossServerBestHero_TimeEnding()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		Sys_SystemBroadcast(tCrossServerBestHero_Text["TimeEnding"])
	end
end

-- 活动结束，传出地图
function CrossServerBestHero_SendOut()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		local nMapId = tCrossServerBestHero_Map[1]
		for i = 1,10 do 
			nMapId = tCrossServerBestHero_Map[i]	
			Map_UserExeFunc(nMapId,-1,"</F>CrossServerBestHero_SendOutMap")
		end
		local nGlobalId = tCrossServerBestHero_Cont["MaxDataGlobal"]
		Sys_ResetAllSynaGlobalData(nGlobalId)
	end
end

function CrossServerBestHero_SendOutMap(nUserId)
	Sys_ExitOS(nUserId)
	User_TalkChannel2005(tCrossServerBestHero_Text["SendOut"],nUserId)
	User_EffectAdd(tCrossServerBestHero_Effect[1],tCrossServerBestHero_Effect[5],nUserId)
	-- 清除身上的所有令牌
	CrossServerBestHero_DelItem(nUserId)
	CrossServerBestHeroPackage_ChkToolStatus(nUserId)
end

-- 清理排行榜
function CrossServerBestHero_ClearRankingList()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) then
		local nGlobalId = tCrossServerBestHero_Cont["Global"]
		Sys_ResetAllSynaGlobalData(nGlobalId)
	end
end

------------------------------------------------NPC模块--------------------------------------------------
-- 24151  神刀大侠
tNpcFace[5006] = 57 
tNpcGossip[24151] = tNpcGossip[24151] or DefaultNpc:new{}
tNpcGossip[24151]["OptionHidden"] = 1
tNpcGossip[24151]["DialogueText"] = tCrossServerBestHero_Text[24151]
--活动前对白
tNpcGossip[24151]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[24151]["tOption1-1"] = {1}
tNpcGossip[24151]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tCrossServerBestHero_Cont["Activity"])
end

--活动后对白
tNpcGossip[24151]["Text1-2"] = {121,122,123}
tNpcGossip[24151]["tOption1-2"] = {2}
tNpcGossip[24151]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tCrossServerBestHero_Cont["Activity"])
end

--活动中对白
tNpcGossip[24151]["Text1-3"] = {131,132,133,134,135,136,137}
tNpcGossip[24151]["tOption1-3"] = {3}
tNpcGossip[24151]["ChkFunc1-3"] = function ()
	return (Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) or Sys_ChkFullTime(tCrossServerBestHero_Cont["RankActivityTime"])) and (not CrossServerBestHero_BattleleLevelJudge())
end

--等级满足条件
tNpcGossip[24151]["Text1-4"] = {141,142,143,144,145,146,147,148}
tNpcGossip[24151]["tOption1-4"] = {4,5,6,141,7,8}
tNpcGossip[24151]["ChkFunc1-4"] = function ()
	return (Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) or Sys_ChkFullTime(tCrossServerBestHero_Cont["RankActivityTime"])) and CrossServerBestHero_BattleleLevelJudge()
end
--送我入场   --此项请在活动时间内显示
tNpcGossip[24151]["OptionFunc4"] = "CrossServerBestHero_NPCSendIn</N>24151"
tNpcGossip[24151]["OptionChkFunc4"] = function ()
	if Sys_ChkFullTime(tCrossServerBestHero_Cont["Activity"]) and CrossServerBestHero_BattleleLevelJudge() then
		if Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][1]) or Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][2]) or Sys_ChkDayTime(tCrossServerBestHero_Cont["ActivityTime"][3]) then
			return true
		else
			return false
		end
	else
		return false
	end
end

-- 查看闯关奖励
tNpcGossip[24151]["OptionPoint5"] = "3-1"
-- 查看单次闯关排行榜
tNpcGossip[24151]["OptionPoint6"] = "4-1"
-- 查看通关排行总榜
tNpcGossip[24151]["OptionPoint141"] = "6-1"
-- 了解闯关攻略
tNpcGossip[24151]["OptionPoint7"] = "5-1"

tNpcGossip[24151]["Text2-1"] = {211}
tNpcGossip[24151]["tOption2-1"] = {9}

tNpcGossip[24151]["Text3-1"] = {311,312,313,314,315,316,317,318,319,320,321,322,323,324,325}
tNpcGossip[24151]["tOption3-1"] = {10}
tNpcGossip[24151]["ChkFunc3-1"] = function ()
	local nTaskId = tCrossServerBestHero_Task[1]
	if Task_ChkTaskDetail(nTaskId,0) then
		-- 判断是否隔天 隔天重置
		local nData6 = Get_TaskDetailData6(nTaskId)
		-- if Task_DetailInterval(nTaskId,1,4) then
		if nData6 == 0 then
			Task_SetTaskDetailCompleteFlag(nTaskId,0)
			Task_SetTaskDetailData1(nTaskId,0)
			Task_SetTaskDetailData2(nTaskId,0)
			Task_SetTaskDetailData4(nTaskId,0)
			Task_SetTaskDetailData6(nTaskId,0)
			Task_SetTaskDetailData7(nTaskId,os.time())
		end
	else
		Task_AddTaskDetail(nTaskId,0)
		Task_SetTaskDetailData7(nTaskId,os.time())
		
	end
	local nData6 = Get_TaskDetailData6(nTaskId)
	if nData6 >= 1 then
		tNpcGossip[24151]["Text325"] = string.format(tCrossServerBestHero_Text[24151]["Text325"],nData6)
	else
		tNpcGossip[24151]["Text325"] = tCrossServerBestHero_Text[24151]["Text326"]
	end
	return true
	
end

tNpcGossip[24151]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422,423,424}
tNpcGossip[24151]["tOption4-1"] = {10}

tNpcGossip[24151]["Text5-1"] = {511,512,513,514,515,516,517,518,519,520,521}
tNpcGossip[24151]["tOption5-1"] = {10}

tNpcGossip[24151]["Text6-1"] = {611,612,613,614,615,616,617,618,619,620,621,622,623,624,625}
tNpcGossip[24151]["tOption6-1"] = {611,612}
tNpcGossip[24151]["ChkFunc6-1"] = function ()
	-- 取排行榜数据显示
	local tRank = RankingFunc_GetNowData(24151)
	for i = 1,10 do
		if tRank[i] ~= nil then
			if tRank[i]["Score"] > 0 then
				tNpcGossip[24151]["Text6" .. 13+i] = Sys_CenterAline(tCrossServerBestHero_Text[24151]["Text6" .. 13+i],6,tRank[i]["Score"],26,tRank[i]["UserName"],46) .. "\n"
			else
				tNpcGossip[24151]["Text6" .. 13+i] = Sys_CenterAline(tCrossServerBestHero_Text[24151]["Text6" .. 13+i],6,tCrossServerBestHero_Text[24151]["NoData"],26,tCrossServerBestHero_Text[24151]["NoData"],46) .. "\n"
			end
		else
			tNpcGossip[24151]["Text6" .. 13+i] = Sys_CenterAline(tCrossServerBestHero_Text[24151]["Text6" .. 13+i],6,tCrossServerBestHero_Text[24151]["NoData"],26,tCrossServerBestHero_Text[24151]["NoData"],46) .. "\n"
		end
	end
	
	-- 取玩家积分
	local nEvent = tCrossServerBestHero_Stc["EventType"]
	local nType = tCrossServerBestHero_Stc["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	tNpcGossip[24151]["Text625"] = string.format(tCrossServerBestHero_Text[24151]["Text625"],nData)
	return true
end
tNpcGossip[24151]["OptionPoint611"] = "7-1"

tNpcGossip[24151]["Text7-1"] = {711,712,713,714,715,716,717,718,719,720,721,722,723,724,725}
tNpcGossip[24151]["tOption7-1"] = {612}

-- 24163  通关秘宝
tNpcFace[3743] = 384
tNpcGossip[24162] = tNpcGossip[24162] or DefaultNpc:new{}
tNpcGossip[24162]["OptionHidden"] = 1
tNpcGossip[24162]["DialogueText"] = tCrossServerBestHero_Text[24162]

tNpcGossip[24162]["Text1-1"] = {111,112,113,114,115,116,117,118,119}
tNpcGossip[24162]["ChkFunc1-1"] = function ()
	local nGlobalId = tCrossServerBestHero_Cont["Global"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	if nData < 10 then
		if nData == 0 then
			tNpcGossip[24162]["Text119"] = tCrossServerBestHero_Text[24162]["Text120"]
		else
			tNpcGossip[24162]["Text119"] = string.format(tCrossServerBestHero_Text[24162]["Text119"],nData)
		end
	else
		tNpcGossip[24162]["Text119"] = string.format(tCrossServerBestHero_Text[24162]["Text119"],10)
	end
	return true
end
tNpcGossip[24162]["tOption1-1"] = {1,2}
tNpcGossip[24162]["OptionFunc1"] = "CrossServerBestHero_GetReward</N>24162"
tNpcGossip[24162]["OptionChkFunc1"] = function ()
	local nGlobalId = tCrossServerBestHero_Cont["Global"]
	local nData = Get_SysDynaGlobalData(nGlobalId,0)
	if nData < 10 then
		return true
	else
		return false
	end
end
tNpcGossip[24162]["OptionFunc2"] = "CrossServerBestHero_BackToTown"



-- 24152  戴宗(第一层)
tNpcFace[5024] = 16
tNpcGossip[24152] = tNpcGossip[24152] or DefaultNpc:new{}
tNpcGossip[24152]["OptionHidden"] = 1
tNpcGossip[24152]["DialogueText"] = tCrossServerBestHero_Text[24152]
--活动中对白
tNpcGossip[24152]["Text1-1"] = {111}
tNpcGossip[24152]["tOption1-1"] = {1,2}
tNpcGossip[24152]["OptionFunc1"] = "CrossServerBestHero_BackToTown"

tNpcGossip[24153] = tNpcGossip[24152]		-- 24153  戴宗(第二层)
tNpcGossip[24154] = tNpcGossip[24152]		-- 24154  戴宗(第三层)
tNpcGossip[24155] = tNpcGossip[24152]		-- 24155  戴宗(第四层)
tNpcGossip[24156] = tNpcGossip[24152]		-- 24156  戴宗(第五层)
tNpcGossip[24157] = tNpcGossip[24152]		-- 24157  戴宗(第六层)
tNpcGossip[24158] = tNpcGossip[24152]		-- 24158  戴宗(第七层)
tNpcGossip[24159] = tNpcGossip[24152]		-- 24159  戴宗(第八层)
tNpcGossip[24160] = tNpcGossip[24152]		-- 24160  戴宗(第九层)


-- -- 24161 	行脚商人
-- tNpcGossip[24161] = tNpcGossip[24161] or DefaultNpc:new{}
-- tNpcGossip[24161]["OptionHidden"] = 1
-- tNpcGossip[24161]["DialogueText"] = tCrossServerBestHero_Text[24161]
-- --活动中对白
-- tNpcGossip[24161]["Text1-1"] = {111}
-- tNpcGossip[24161]["tOption1-1"] = {1,2}
-- tNpcGossip[24161]["OptionFunc1"] = "CrossServerBestHero_BuyPowerCard"
-- tNpcGossip[24161]["OptionFunc2"] = "CrossServerBestHero_BuyTool"

-- --接1：购买万能金牌（99点天石）
-- --天石不足
-- tNpcGossip[24161]["Text2-1"] = {211}
-- tNpcGossip[24161]["tOption2-1"] = {5}
-- --背包满
-- tNpcGossip[24161]["Text2-2"] = {221}
-- tNpcGossip[24161]["tOption2-2"] = {5}
-- --二次确认
-- tNpcGossip[24161]["Text2-3"] = {231,232}
-- tNpcGossip[24161]["tOption2-3"] = {6,7}
-- tNpcGossip[24161]["OptionFunc6"] = "CrossServerBestHero_SureToBuyCard"

-- --接2：购买增益符（99点天石）
-- tNpcGossip[24161]["Text2-4"] = {241}
-- tNpcGossip[24161]["tOption2-4"] = {5}
-- tNpcGossip[24161]["Text2-5"] = {251}
-- tNpcGossip[24161]["tOption2-5"] = {5}
-- tNpcGossip[24161]["Text2-6"] = {261,262}
-- tNpcGossip[24161]["tOption2-6"] = {8,7}
-- tNpcGossip[24161]["OptionFunc8"] = "CrossServerBestHero_SureToBuyTool"


----------------------------------------------------------------------
-- 前三分钟
local tCrossServerBestHero_TimeComing = {}
tCrossServerBestHero_TimeComing["Type"] = 6  -- 其他
tCrossServerBestHero_TimeComing["TimeType"] = 4  -- 日时间
tCrossServerBestHero_TimeComing["Multiple"] = {}
tCrossServerBestHero_TimeComing["Multiple"][1] = "12:37 12:38"
tCrossServerBestHero_TimeComing["Multiple"][2] = "17:37 17:38"
tCrossServerBestHero_TimeComing["Multiple"][3] = "21:37 21:38"
tCrossServerBestHero_TimeComing["Func"] = CrossServerBestHero_TimeComing
table.insert(tSystemTime_InitialData,tCrossServerBestHero_TimeComing)

-- 前1-2分钟
local tCrossServerBestHero_SendInMap = {}
tCrossServerBestHero_SendInMap["Type"] = 6  -- 其他
tCrossServerBestHero_SendInMap["TimeType"] = 4  -- 日时间
tCrossServerBestHero_SendInMap["Multiple"] = {}
tCrossServerBestHero_SendInMap["Multiple"][1] = "12:39 12:39"
tCrossServerBestHero_SendInMap["Multiple"][2] = "17:39 17:39"
tCrossServerBestHero_SendInMap["Multiple"][3] = "21:39 21:39"
tCrossServerBestHero_SendInMap["Func"] = CrossServerBestHero_SendInMap
table.insert(tSystemTime_InitialData,tCrossServerBestHero_SendInMap)

-- 结束前一两分钟 提示该轮活动即将结束
local tCrossServerBestHero_TimeEnding = {}
tCrossServerBestHero_TimeEnding["Type"] = 6  -- 其他
tCrossServerBestHero_TimeEnding["TimeType"] = 4  -- 日时间
tCrossServerBestHero_TimeEnding["Multiple"] = {}
tCrossServerBestHero_TimeEnding["Multiple"][1] = "12:58 12:59"
tCrossServerBestHero_TimeEnding["Multiple"][2] = "17:58 17:59"
tCrossServerBestHero_TimeEnding["Multiple"][3] = "21:58 21:59"
tCrossServerBestHero_TimeEnding["Func"] = CrossServerBestHero_TimeEnding
table.insert(tSystemTime_InitialData,tCrossServerBestHero_TimeEnding)

-- 活动结束，玩家传出地图
local tCrossServerBestHero_SendOut = {}
tCrossServerBestHero_SendOut["Type"] = 6  -- 其他
tCrossServerBestHero_SendOut["TimeType"] = 4  -- 日时间
tCrossServerBestHero_SendOut["Multiple"] = {}
tCrossServerBestHero_SendOut["Multiple"][1] = "13:00 13:03"
tCrossServerBestHero_SendOut["Multiple"][2] = "18:00 18:03"
tCrossServerBestHero_SendOut["Multiple"][3] = "22:00 22:03"
tCrossServerBestHero_SendOut["Func"] = CrossServerBestHero_SendOut
table.insert(tSystemTime_InitialData,tCrossServerBestHero_SendOut)

-- 清理排行榜
-- local tCrossServerBestHero_ClearRankingList = {}
-- tCrossServerBestHero_ClearRankingList["Type"] = 6  -- 其他
-- tCrossServerBestHero_ClearRankingList["TimeType"] = 4  -- 日时间
-- tCrossServerBestHero_ClearRankingList["Multiple"] = {}
-- tCrossServerBestHero_ClearRankingList["Multiple"][1] = "12:32 12:35"
-- tCrossServerBestHero_ClearRankingList["Multiple"][2] = "17:32 17:35"
-- tCrossServerBestHero_ClearRankingList["Multiple"][3] = "21:32 21:35"
-- tCrossServerBestHero_ClearRankingList["Multiple"][4] = "00:01 00:05"
-- tCrossServerBestHero_ClearRankingList["Func"] = CrossServerBestHero_ClearRankingList
-- table.insert(tSystemTime_InitialData,tCrossServerBestHero_ClearRankingList)

---------------------------------杀人触发----------------------------------------------
tUserKilled["tFunction"] = tUserKilled["tFunction"] or {}
table.insert(tUserKilled["tFunction"], CrossServerBestHero_KillPlayer)


tItem[3600080] = tItem[3600080] or {}
tItem[3600080]["Function"] = function(nItemId,sItemName)
	if not Item_ChkItem(nItemId) then
		return
	end
	CrossServerBestHero_UpFloor(nItemId,1)
end

tItem[3600081] = tItem[3600080]
tItem[3600082] = tItem[3600080]
tItem[3600083] = tItem[3600080]
tItem[3600084] = tItem[3600080]
tItem[3600085] = tItem[3600080]
tItem[3600086] = tItem[3600080]
tItem[3600087] = tItem[3600080]
tItem[3600088] = tItem[3600080]
tItem[3600089] = tItem[3600080]

