------------------------------------------------------------------------------------
--Name:			160401[英文征服][活动脚本]4月圆桌骑士录活动(4.21-5.5)
--Purpose:		4月圆桌骑士录活动
--Creator:		许乐
--Created:		2016/04/01
------------------------------------------------------------------------------------
-- 前缀
-- CavalierRecord_
-----------------------------------------------------------
--掩码说明：
-- #stc(143,76)-stc(143,85)  stc(143,93)-stc(143,94)		表示玩家当前收集每种的卡牌数量
-- #stc(143,95)		表示玩家当前杀片区怪的数量
-- #stc(143,96)		表示玩家是否领取过盾
-- #stc(143,97)		表示玩家补领盾的次数
-- #stc(143,98)		表示玩家当天提交卡牌的次数
-- #stc(143,99)		表示玩家目前的贡献值
-- #stc(144,00)		表示玩家当天刷新卡牌的次数
-- #stc(144,01)		判断是否领取了首次收集齐12个圆桌骑士的奖励
-- #stc(144,02)		表示是否领取了对应贡献值奖励
-- #stc(144,03)		表示是否领取了排名奖励
-- #stc(144,04)		记录当前玩家需要提交的卡牌id
-- #stc(144,05)		记录当前玩家需要提交的卡牌数量
-- #stc(144,10)		记录上线获得背包信
-----------------------------------------------------------
-- 动态码说明：
-- 51136-51139
-- 每两个分别记录玩家的id，贡献值与名称
-----------------------------------------------------------
-- #npc:			19240
-- #itemtype:	3008938-3008955
-- #stc:			stc(143,76)-stc(143,85)	stc(143,93)-stc(144,05)  stc(144,10)
-- #global:		51136-51139
-- #Logid:		12000342
-- #task_detail:	3661
---------------------------------------------------------------
local tCavalierRecord_Cont = {}
	tCavalierRecord_Cont["BeforeActivity"] = "2015-10-27 00:00 2016-04-20 23:59"
	tCavalierRecord_Cont["Activity"] = "2016-04-21 00:00 2016-05-05 23:59"
	tCavalierRecord_Cont["RankTime"] = "2016-05-06 00:00 2016-05-13 23:59"
	
	-- tCavalierRecord_Cont["BeforeActivity"] = "2015-10-27 00:00 2016-04-20 23:59"
	-- tCavalierRecord_Cont["Activity"] = "2016-04-21 00:00 2016-05-29 23:59"
	-- tCavalierRecord_Cont["RankTime"] = "2016-05-30 00:00 2016-05-31 23:59"

	--玩家等级要求
	tCavalierRecord_Cont["Metempsychosis"] = 0
	tCavalierRecord_Cont["Level"] = 80
	
local tCavalierRecord_Stc = {}
	tCavalierRecord_Stc["EventType"] = {}
	tCavalierRecord_Stc["EventType"][1] = 143
	tCavalierRecord_Stc["EventType"][2] = 144
	
	tCavalierRecord_Stc["DataType"] = {}
	tCavalierRecord_Stc["Data"] = {}
	-- stc(143,95)  表示玩家当前杀片区怪的数量
	tCavalierRecord_Stc["DataType"][1] = 95
	tCavalierRecord_Stc["Data"][1] = 1000		-- 杀怪上限
	-- stc(143,96)		表示玩家是否领取过盾
	tCavalierRecord_Stc["DataType"][2] = 96
	-- stc(143,97)		表示玩家补领盾的次数
	tCavalierRecord_Stc["DataType"][3] = 97
	-- stc(143,98)		表示玩家当天提交卡牌的次数
	tCavalierRecord_Stc["DataType"][4] = 98
	tCavalierRecord_Stc["Data"][4] = 10
	-- stc(143,99)		表示玩家目前的贡献值
	tCavalierRecord_Stc["DataType"][5] = 99
	-- stc(144,00)		表示玩家当天刷新卡牌的次数
	tCavalierRecord_Stc["DataType"][6] = 00
	-- stc(144,01)		判断是否领取了首次收集齐12个圆桌骑士的奖励
	tCavalierRecord_Stc["DataType"][7] = 01
	-- stc(144,02)		表示是否领取了对应贡献值奖励
	tCavalierRecord_Stc["DataType"][8] = 02
	tCavalierRecord_Stc["Data"][8] = 8		-- 领取完全部的贡献值奖励
	-- stc(144,03)		表示是否领取了排名奖励
	tCavalierRecord_Stc["DataType"][9] = 03
	-- stc(144,04)		记录当前玩家需要提交的卡牌id
	tCavalierRecord_Stc["DataType"][10] = 04
	-- stc(144,05)		记录当前玩家需要提交的卡牌数量
	tCavalierRecord_Stc["DataType"][11] = 05
	
	-- 表示玩家当前收集每种的卡牌数量（判断玩家是否集齐12种卡牌）
	tCavalierRecord_Stc["CardType"] = {}
	tCavalierRecord_Stc["CardType"][3008942] = 76
	tCavalierRecord_Stc["CardType"][3008943] = 77
	tCavalierRecord_Stc["CardType"][3008944] = 78
	tCavalierRecord_Stc["CardType"][3008945] = 79
	tCavalierRecord_Stc["CardType"][3008946] = 80
	tCavalierRecord_Stc["CardType"][3008947] = 81
	tCavalierRecord_Stc["CardType"][3008948] = 82
	tCavalierRecord_Stc["CardType"][3008949] = 83
	tCavalierRecord_Stc["CardType"][3008950] = 84
	tCavalierRecord_Stc["CardType"][3008951] = 85
	tCavalierRecord_Stc["CardType"][3008952] = 93
	tCavalierRecord_Stc["CardType"][3008953] = 94
	
local tCavalierRecord_Item = {}
	tCavalierRecord_Item["Shield"] = 3008954		-- 瓦尔基里之盾
	
	tCavalierRecord_Item["SoulStone"] = {}
	tCavalierRecord_Item["SoulStone"][1] = 3008939		-- 勇气魂晶
	tCavalierRecord_Item["SoulStone"][2] = 3008940		-- 荣耀魂晶
	tCavalierRecord_Item["SoulStone"][3] = 3008941		-- 信仰魂晶
	
	tCavalierRecord_Item["Scrap"] = {}
	tCavalierRecord_Item["Scrap"][1] = 3008942		-- Lancelot的灵魂碎片
	tCavalierRecord_Item["Scrap"][2] = 3008943		-- Gawaine的灵魂碎片
	tCavalierRecord_Item["Scrap"][3] = 3008944		-- Geraint的灵魂碎片
	tCavalierRecord_Item["Scrap"][4] = 3008945		-- Gareth的灵魂碎片
	tCavalierRecord_Item["Scrap"][5] = 3008946		-- Galahad的灵魂碎片
	tCavalierRecord_Item["Scrap"][6] = 3008947		-- Gaheris的灵魂碎片
	tCavalierRecord_Item["Scrap"][7] = 3008948		-- Bedivere的灵魂碎片
	tCavalierRecord_Item["Scrap"][8] = 3008949		-- Percivale的灵魂碎片
	tCavalierRecord_Item["Scrap"][9] = 3008950		-- Tristan的灵魂碎片
	tCavalierRecord_Item["Scrap"][10] =3008951		-- Lamorak的灵魂碎片 
	tCavalierRecord_Item["Scrap"][11] = 3008952		-- Kay的灵魂碎片
	tCavalierRecord_Item["Scrap"][12] = 3008953		-- Bors de Ganis的灵魂碎片

local tCavalierRecord_Compound = {}
	-- 合成魂晶随机产生一种碎片
	tCavalierRecord_Compound["SoulStone"] = {}
	tCavalierRecord_Compound["SoulStone"][1] = {}
	tCavalierRecord_Compound["SoulStone"][1]["ItemChanceSum"] = 10000
	
	tCavalierRecord_Compound["SoulStone"][1][1] = {}
	tCavalierRecord_Compound["SoulStone"][1][1]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][1]["ItemChance"] = 100
	tCavalierRecord_Compound["SoulStone"][1][1]["Item_1"] = 3008942
	
	tCavalierRecord_Compound["SoulStone"][1][2] = {}
	tCavalierRecord_Compound["SoulStone"][1][2]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][2]["ItemChance"] = 100
	tCavalierRecord_Compound["SoulStone"][1][2]["Item_1"] = 3008943
	
	tCavalierRecord_Compound["SoulStone"][1][3] = {}
	tCavalierRecord_Compound["SoulStone"][1][3]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][3]["ItemChance"] = 950
	tCavalierRecord_Compound["SoulStone"][1][3]["Item_1"] = 3008944
	
	tCavalierRecord_Compound["SoulStone"][1][4] = {}
	tCavalierRecord_Compound["SoulStone"][1][4]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][4]["ItemChance"] = 950
	tCavalierRecord_Compound["SoulStone"][1][4]["Item_1"] = 3008945
	
	tCavalierRecord_Compound["SoulStone"][1][5] = {}
	tCavalierRecord_Compound["SoulStone"][1][5]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][5]["ItemChance"] = 950
	tCavalierRecord_Compound["SoulStone"][1][5]["Item_1"] = 3008946
	
	tCavalierRecord_Compound["SoulStone"][1][6] = {}
	tCavalierRecord_Compound["SoulStone"][1][6]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][6]["ItemChance"] = 950
	tCavalierRecord_Compound["SoulStone"][1][6]["Item_1"] = 3008947
	
	tCavalierRecord_Compound["SoulStone"][1][7] = {}
	tCavalierRecord_Compound["SoulStone"][1][7]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][7]["ItemChance"] = 1000
	tCavalierRecord_Compound["SoulStone"][1][7]["Item_1"] = 3008948
	
	tCavalierRecord_Compound["SoulStone"][1][8] = {}
	tCavalierRecord_Compound["SoulStone"][1][8]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][8]["ItemChance"] = 1000
	tCavalierRecord_Compound["SoulStone"][1][8]["Item_1"] = 3008949
	
	tCavalierRecord_Compound["SoulStone"][1][9] = {}
	tCavalierRecord_Compound["SoulStone"][1][9]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][9]["ItemChance"] = 1000
	tCavalierRecord_Compound["SoulStone"][1][9]["Item_1"] = 3008950
	
	tCavalierRecord_Compound["SoulStone"][1][10] = {}
	tCavalierRecord_Compound["SoulStone"][1][10]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][10]["ItemChance"] = 1000
	tCavalierRecord_Compound["SoulStone"][1][10]["Item_1"] = 3008951

	tCavalierRecord_Compound["SoulStone"][1][11] = {}
	tCavalierRecord_Compound["SoulStone"][1][11]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][11]["ItemChance"] = 1000
	tCavalierRecord_Compound["SoulStone"][1][11]["Item_1"] = 3008952
	
	tCavalierRecord_Compound["SoulStone"][1][12] = {}
	tCavalierRecord_Compound["SoulStone"][1][12]["RandomItemChanceType"] = 2
	tCavalierRecord_Compound["SoulStone"][1][12]["ItemChance"] = 1000
	tCavalierRecord_Compound["SoulStone"][1][12]["Item_1"] = 3008953

local tCavalierRecord_MonsDrop = {}
	-- 前1000只怪 掉落魂晶的概率
	tCavalierRecord_MonsDrop["Scrap"] = {}
	tCavalierRecord_MonsDrop["Scrap"][1] = {}
	tCavalierRecord_MonsDrop["Scrap"][1]["ItemChanceSum"] = 10000
	
	tCavalierRecord_MonsDrop["Scrap"][1][1] = {}
	tCavalierRecord_MonsDrop["Scrap"][1][1]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][1][1]["ItemChance"] = 350
	tCavalierRecord_MonsDrop["Scrap"][1][1]["Item_1"] = 3008939
	
	tCavalierRecord_MonsDrop["Scrap"][1][2] = {}
	tCavalierRecord_MonsDrop["Scrap"][1][2]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][1][2]["ItemChance"] = 400
	tCavalierRecord_MonsDrop["Scrap"][1][2]["Item_1"] = 3008940
	
	tCavalierRecord_MonsDrop["Scrap"][1][3] = {}
	tCavalierRecord_MonsDrop["Scrap"][1][3]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][1][3]["ItemChance"] = 2000
	tCavalierRecord_MonsDrop["Scrap"][1][3]["Item_1"] = 3008941

	tCavalierRecord_MonsDrop["Scrap"][1][4] = {}
	tCavalierRecord_MonsDrop["Scrap"][1][4]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][1][4]["ItemChance"] = 7250
	tCavalierRecord_MonsDrop["Scrap"][1][4]["Item_1"] = 0
	
	-- 杀掉1000只怪后 掉落魂晶的概率
	tCavalierRecord_MonsDrop["Scrap"][2] = {}
	tCavalierRecord_MonsDrop["Scrap"][2]["ItemChanceSum"] = 10000
	
	tCavalierRecord_MonsDrop["Scrap"][2][1] = {}
	tCavalierRecord_MonsDrop["Scrap"][2][1]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][2][1]["ItemChance"] = 35
	tCavalierRecord_MonsDrop["Scrap"][2][1]["Item_1"] = 3008939
	
	tCavalierRecord_MonsDrop["Scrap"][2][2] = {}
	tCavalierRecord_MonsDrop["Scrap"][2][2]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][2][2]["ItemChance"] = 40
	tCavalierRecord_MonsDrop["Scrap"][2][2]["Item_1"] = 3008940
	
	tCavalierRecord_MonsDrop["Scrap"][2][3] = {}
	tCavalierRecord_MonsDrop["Scrap"][2][3]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][2][3]["ItemChance"] = 200
	tCavalierRecord_MonsDrop["Scrap"][2][3]["Item_1"] = 3008941

	tCavalierRecord_MonsDrop["Scrap"][2][4] = {}
	tCavalierRecord_MonsDrop["Scrap"][2][4]["RandomItemChanceType"] = 2
	tCavalierRecord_MonsDrop["Scrap"][2][4]["ItemChance"] = 9725
	tCavalierRecord_MonsDrop["Scrap"][2][4]["Item_1"] = 0
	
local tCavalierRecord_RandCard = {}
	tCavalierRecord_RandCard["Money"] = 200000		-- 刷新所需金币数20万
	
	-- 普通卡牌 3008944-3008953
	tCavalierRecord_RandCard["Normal"] = {}
	tCavalierRecord_RandCard["Normal"]["Num"] = 1		-- 积分
	tCavalierRecord_RandCard["Normal"]["Exp"] = 200		-- 经验奖励
	tCavalierRecord_RandCard["Normal"]["Strength"] = 100		-- 气力值奖励
	-- 稀有卡牌	3008942-3008943
	tCavalierRecord_RandCard["Special"] = {}
	tCavalierRecord_RandCard["Special"]["Num"] = 10
	tCavalierRecord_RandCard["Special"]["Exp"] = 600
	tCavalierRecord_RandCard["Special"]["Strength"] = 300
	
	-- 随机产生所需卡牌类型
	tCavalierRecord_RandCard["CardType"] = {}
	tCavalierRecord_RandCard["CardType"][1] = {}
	tCavalierRecord_RandCard["CardType"][1]["ItemChanceSum"] = 10000
	
	tCavalierRecord_RandCard["CardType"][1][1] = {}
	tCavalierRecord_RandCard["CardType"][1][1]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][1]["ItemChance"] = 500
	tCavalierRecord_RandCard["CardType"][1][1]["Item_1"] = 3008942
	
	tCavalierRecord_RandCard["CardType"][1][2] = {}
	tCavalierRecord_RandCard["CardType"][1][2]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][2]["ItemChance"] = 500
	tCavalierRecord_RandCard["CardType"][1][2]["Item_1"] = 3008943
	
	tCavalierRecord_RandCard["CardType"][1][3] = {}
	tCavalierRecord_RandCard["CardType"][1][3]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][3]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][3]["Item_1"] = 3008944

	tCavalierRecord_RandCard["CardType"][1][4] = {}
	tCavalierRecord_RandCard["CardType"][1][4]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][4]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][4]["Item_1"] = 3008945
	
	tCavalierRecord_RandCard["CardType"][1][5] = {}
	tCavalierRecord_RandCard["CardType"][1][5]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][5]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][5]["Item_1"] = 3008946
	
	tCavalierRecord_RandCard["CardType"][1][6] = {}
	tCavalierRecord_RandCard["CardType"][1][6]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][6]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][6]["Item_1"] = 3008947
	
	tCavalierRecord_RandCard["CardType"][1][7] = {}
	tCavalierRecord_RandCard["CardType"][1][7]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][7]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][7]["Item_1"] = 3008948

	tCavalierRecord_RandCard["CardType"][1][8] = {}
	tCavalierRecord_RandCard["CardType"][1][8]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][8]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][8]["Item_1"] = 3008949
	
	tCavalierRecord_RandCard["CardType"][1][9] = {}
	tCavalierRecord_RandCard["CardType"][1][9]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][9]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][9]["Item_1"] = 3008950
	
	tCavalierRecord_RandCard["CardType"][1][10] = {}
	tCavalierRecord_RandCard["CardType"][1][10]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][10]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][10]["Item_1"] = 3008951
	
	tCavalierRecord_RandCard["CardType"][1][11] = {}
	tCavalierRecord_RandCard["CardType"][1][11]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][11]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][11]["Item_1"] = 3008952

	tCavalierRecord_RandCard["CardType"][1][12] = {}
	tCavalierRecord_RandCard["CardType"][1][12]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardType"][1][12]["ItemChance"] = 900
	tCavalierRecord_RandCard["CardType"][1][12]["Item_1"] = 3008953
	
	-- 随机产生所需卡牌的数量
	tCavalierRecord_RandCard["CardNum"] = {}
	tCavalierRecord_RandCard["CardNum"][1] = {}
	tCavalierRecord_RandCard["CardNum"][1]["ItemChanceSum"] = 10000
	
	tCavalierRecord_RandCard["CardNum"][1][1] = {}
	tCavalierRecord_RandCard["CardNum"][1][1]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardNum"][1][1]["ItemChance"] = 1500
	tCavalierRecord_RandCard["CardNum"][1][1]["Item_1"] = 1
	
	tCavalierRecord_RandCard["CardNum"][1][2] = {}
	tCavalierRecord_RandCard["CardNum"][1][2]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardNum"][1][2]["ItemChance"] = 2000
	tCavalierRecord_RandCard["CardNum"][1][2]["Item_1"] = 2
	
	tCavalierRecord_RandCard["CardNum"][1][3] = {}
	tCavalierRecord_RandCard["CardNum"][1][3]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardNum"][1][3]["ItemChance"] = 3000
	tCavalierRecord_RandCard["CardNum"][1][3]["Item_1"] = 3

	tCavalierRecord_RandCard["CardNum"][1][4] = {}
	tCavalierRecord_RandCard["CardNum"][1][4]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardNum"][1][4]["ItemChance"] = 2000
	tCavalierRecord_RandCard["CardNum"][1][4]["Item_1"] = 4
	
	tCavalierRecord_RandCard["CardNum"][1][5] = {}
	tCavalierRecord_RandCard["CardNum"][1][5]["RandomItemChanceType"] = 2
	tCavalierRecord_RandCard["CardNum"][1][5]["ItemChance"] = 1500
	tCavalierRecord_RandCard["CardNum"][1][5]["Item_1"] = 5
	
local tCavalierRecord_Reward = {}
	tCavalierRecord_Reward["ItemReward"] = {}
	tCavalierRecord_Reward["ItemReward"]["Item_1"] = 3003124		-- 免费强炼丹
	tCavalierRecord_Reward["ItemReward"]["Item_2"] = 3003125		-- 通神丹
	tCavalierRecord_Reward["ItemReward"]["Item_3"] = 360199  	-- 圆桌骑士武器外套
	
	tCavalierRecord_Reward["ScoreLevel"] = {}
	tCavalierRecord_Reward["ScoreLevel"][0] = {0,50}
	tCavalierRecord_Reward["ScoreLevel"][1] = {50,100}
	tCavalierRecord_Reward["ScoreLevel"][2] = {100,150}
	tCavalierRecord_Reward["ScoreLevel"][3] = {150,200}
	tCavalierRecord_Reward["ScoreLevel"][4] = {200,300}
	tCavalierRecord_Reward["ScoreLevel"][5] = {300,400}
	tCavalierRecord_Reward["ScoreLevel"][6] = {400,500}
	tCavalierRecord_Reward["ScoreLevel"][7] = {500,600}
	tCavalierRecord_Reward["ScoreLevel"][8] = {600}

	tCavalierRecord_Reward["Score"] = {}
	tCavalierRecord_Reward["Score"][1] = {}
	tCavalierRecord_Reward["Score"][1]["Score"] = 50
	tCavalierRecord_Reward["Score"][1]["Strength"] = 100
	tCavalierRecord_Reward["Score"][1]["Attr_1"] = "0 2 3"
	tCavalierRecord_Reward["Score"][1]["Attr_2"] = "0 2 3"
	tCavalierRecord_Reward["Score"][1]["Attr_3"] = "0 1 3 1440 1 0 0 1"
	tCavalierRecord_Reward["Score"][1]["Num"] = 2
	tCavalierRecord_Reward["Score"][1]["Time"] = 1
	
	tCavalierRecord_Reward["Score"][2] = {}
	tCavalierRecord_Reward["Score"][2]["Score"] = 100
	tCavalierRecord_Reward["Score"][2]["Strength"] = 200
	tCavalierRecord_Reward["Score"][2]["Attr_1"] = "0 4 3"
	tCavalierRecord_Reward["Score"][2]["Attr_2"] = "0 4 3"
	tCavalierRecord_Reward["Score"][2]["Attr_3"] = "0 1 3 1440 1 0 0 1"
	tCavalierRecord_Reward["Score"][2]["Num"] = 4
	tCavalierRecord_Reward["Score"][2]["Time"] = 1
	
	tCavalierRecord_Reward["Score"][3] = {}
	tCavalierRecord_Reward["Score"][3]["Score"] = 150
	tCavalierRecord_Reward["Score"][3]["Strength"] = 300
	tCavalierRecord_Reward["Score"][3]["Attr_1"] = "0 6 3"
	tCavalierRecord_Reward["Score"][3]["Attr_2"] = "0 6 3"
	tCavalierRecord_Reward["Score"][3]["Attr_3"] = "0 1 3 4320 1 0 0 1"
	tCavalierRecord_Reward["Score"][3]["Num"] = 6
	tCavalierRecord_Reward["Score"][3]["Time"] = 3
	
	tCavalierRecord_Reward["Score"][4] = {}
	tCavalierRecord_Reward["Score"][4]["Score"] = 200
	tCavalierRecord_Reward["Score"][4]["Strength"] = 400
	tCavalierRecord_Reward["Score"][4]["Attr_1"] = "0 8 3"
	tCavalierRecord_Reward["Score"][4]["Attr_2"] = "0 8 3"
	tCavalierRecord_Reward["Score"][4]["Attr_3"] = "0 1 3 4320 1 0 0 1"
	tCavalierRecord_Reward["Score"][4]["Num"] = 8
	tCavalierRecord_Reward["Score"][4]["Time"] = 3
	
	tCavalierRecord_Reward["Score"][5] = {}
	tCavalierRecord_Reward["Score"][5]["Score"] = 300
	tCavalierRecord_Reward["Score"][5]["Strength"] = 500
	tCavalierRecord_Reward["Score"][5]["Attr_1"] = "0 10 3"
	tCavalierRecord_Reward["Score"][5]["Attr_2"] = "0 10 3"
	tCavalierRecord_Reward["Score"][5]["Attr_3"] = "0 1 3 10080 1 0 0 1"
	tCavalierRecord_Reward["Score"][5]["Num"] = 10
	tCavalierRecord_Reward["Score"][5]["Time"] = 7
	
	tCavalierRecord_Reward["Score"][6] = {}
	tCavalierRecord_Reward["Score"][6]["Score"] = 400
	tCavalierRecord_Reward["Score"][6]["Strength"] = 600
	tCavalierRecord_Reward["Score"][6]["Attr_1"] = "0 12 3"
	tCavalierRecord_Reward["Score"][6]["Attr_2"] = "0 12 3"
	tCavalierRecord_Reward["Score"][6]["Attr_3"] = "0 1 3 10080 1 0 0 1"
	tCavalierRecord_Reward["Score"][6]["Num"] = 12
	tCavalierRecord_Reward["Score"][6]["Time"] = 7
	
	tCavalierRecord_Reward["Score"][7] = {}
	tCavalierRecord_Reward["Score"][7]["Score"] = 500
	tCavalierRecord_Reward["Score"][7]["Strength"] = 700
	tCavalierRecord_Reward["Score"][7]["Attr_1"] = "0 14 3"
	tCavalierRecord_Reward["Score"][7]["Attr_2"] = "0 14 3"
	tCavalierRecord_Reward["Score"][7]["Attr_3"] = "0 1 3 21600 1 0 0 1"
	tCavalierRecord_Reward["Score"][7]["Num"] = 14
	tCavalierRecord_Reward["Score"][7]["Time"] = 15
	
	tCavalierRecord_Reward["Score"][8] = {}
	tCavalierRecord_Reward["Score"][8]["Score"] = 600
	tCavalierRecord_Reward["Score"][8]["Strength"] = 800
	tCavalierRecord_Reward["Score"][8]["Attr_1"] = "0 16 3"
	tCavalierRecord_Reward["Score"][8]["Attr_2"] = "0 16 3"
	tCavalierRecord_Reward["Score"][8]["Attr_3"] = "0 1 3 21600 1 0 0 1"
	tCavalierRecord_Reward["Score"][8]["Num"] = 16
	tCavalierRecord_Reward["Score"][8]["Time"] = 15
	
	-- 集齐12张骑士卡
	tCavalierRecord_Reward["All"] = {}
	tCavalierRecord_Reward["All"]["Strength"] = 1000
	tCavalierRecord_Reward["All"]["Attr_1"] = "0 20 3"
	tCavalierRecord_Reward["All"]["Attr_2"] = "0 20 3"
	tCavalierRecord_Reward["All"]["Attr_3"] = "0 2 3 21600 1 0 0 1"

	-- 排名奖励
	tCavalierRecord_Reward["Ranking"] = {}
	tCavalierRecord_Reward["Ranking"][1] = {}
	tCavalierRecord_Reward["Ranking"][1]["Strength"] = 5000
	tCavalierRecord_Reward["Ranking"][1]["Attr_1"] = "0 2 3 0 0 0 0 1"
	tCavalierRecord_Reward["Ranking"][1]["Num"] = 2
	tCavalierRecord_Reward["Ranking"][1]["Time"] = 0
	
	tCavalierRecord_Reward["Ranking"][2] = {}
	tCavalierRecord_Reward["Ranking"][2]["Strength"] = 4000
	tCavalierRecord_Reward["Ranking"][2]["Attr_1"] = "0 2 3 0 0 0 0 1"
	tCavalierRecord_Reward["Ranking"][2]["Num"] = 2
	tCavalierRecord_Reward["Ranking"][2]["Time"] = 0
	
	tCavalierRecord_Reward["Ranking"][3] = {}
	tCavalierRecord_Reward["Ranking"][3]["Strength"] = 3000
	tCavalierRecord_Reward["Ranking"][3]["Attr_1"] = "0 2 3 0 0 0 0 1"
	tCavalierRecord_Reward["Ranking"][3]["Num"] = 2
	tCavalierRecord_Reward["Ranking"][3]["Time"] = 0
	
	tCavalierRecord_Reward["Ranking"][4] = {}
	tCavalierRecord_Reward["Ranking"][4]["Strength"] = 2000
	tCavalierRecord_Reward["Ranking"][4]["Attr_1"] = "0 2 3 129600 1 0 0 1"
	tCavalierRecord_Reward["Ranking"][4]["Num"] = 2
	tCavalierRecord_Reward["Ranking"][4]["Time"] = 90
	
	tCavalierRecord_Reward["Ranking"][7] = {}
	tCavalierRecord_Reward["Ranking"][7]["Strength"] = 1000
	tCavalierRecord_Reward["Ranking"][7]["Attr_1"] = "0 2 3 86400 1 0 0 1"
	tCavalierRecord_Reward["Ranking"][7]["Num"] = 2
	tCavalierRecord_Reward["Ranking"][7]["Time"] = 60
	
	-- 排名动态码
	tCavalierRecord_Reward["GlobalRank"] = {}
	tCavalierRecord_Reward["GlobalRank"][1] = 51136
	tCavalierRecord_Reward["GlobalRank"][2] = 51138
	
	tCavalierRecord_Reward["GlobalRankName"] = {}
	tCavalierRecord_Reward["GlobalRankName"][1] = 51137
	tCavalierRecord_Reward["GlobalRankName"][2] = 51139
	
-- 使用背包信
local tCavalierRecord_Letter = {}
	tCavalierRecord_Letter["ExpTime"] = 30
	tCavalierRecord_Letter["Cultivation"] = 15
	tCavalierRecord_Letter["Pathfind"] = {}
	tCavalierRecord_Letter["Pathfind"]["PosX"] = 242
	tCavalierRecord_Letter["Pathfind"]["PosY"] = 230
	tCavalierRecord_Letter["Pathfind"]["MapId"] = 1002
	tCavalierRecord_Letter["Pathfind"]["NpcId"] = 19240

local tCavalierRecord_Log = {}
	tCavalierRecord_Log["DelItem"] = "0,0,%d,1,12000342,2,0,0"			-- 过期删除物品
	tCavalierRecord_Log["Compound"] = "0,0,3008939[3008940][3008941],1[1][1],12000342,2,%d,1"		-- 合成魂晶获得一个卡牌碎片
	tCavalierRecord_Log["UseChiToken"] = "0,0,729304,7,12000342,2,%d,1"		-- 使用正气令获得一个卡牌碎片
	
	tCavalierRecord_Log["MonsDrop"] = "0,0,0,0,12000342,2,%d,1"		-- 杀怪掉落获得物品
	tCavalierRecord_Log["GetShield"] = "0,0,0,0,12000342,2,3008954,1"			-- 接受任务，获得盾
	tCavalierRecord_Log["DelMoney"] = "0,0,0,0,12000342,2,1,200000"			-- 刷新所需金币数20万
	
	-- 倒数第三位2[%d] 表示获得武器外套的时效天数(永久为2[0])
	tCavalierRecord_Log["ScoreReward"] = "0,0,0,0,12000342,2[%d],%d[3003124][3003125][360199],12[%d][%d][1]"			-- 获得对应积分奖励
	tCavalierRecord_Log["RankingReward"] = "0,0,0,0,12000342,2[%d],%d[360199],12[2]"			-- 获得排名奖励 
	tCavalierRecord_Log["AllCardReward"] = "0,0,0,0,12000342,2[15],1000[3003124][3003125][360199],12[20][20][2]"			-- 集齐12张骑士卡的奖励
	
	tCavalierRecord_Log["HandReward"] = "0,0,0,0,12000342,2,%d,%d"			-- 提交卡牌获得的普通奖励
	tCavalierRecord_Log["UseLetter"] = "0,0,%d,1,12000342,2,%d,%d"		-- 使用背包信获得奖励
	
local tCavalierRecord_EmoneyLog = {}
	tCavalierRecord_EmoneyLog["Compound"] = "350	20142	0	0	1	"			-- 合成骑士卡
	tCavalierRecord_EmoneyLog["RefreshNeed"] = "350	20143	0	0	1	"			-- 银两刷新骑士卡
	tCavalierRecord_EmoneyLog["HandInScrap"] = "350	20144	0	0	1	"			-- 成功提交骑士卡

	tCavalierRecord_EmoneyLog["Get100Stren"] = "350	20145	0	0	1	"			-- 领取每日100气力奖励
	tCavalierRecord_EmoneyLog["Get300Stren"] = "350	20146	0	0	1	"			-- 领取每日300气力奖励
	
	tCavalierRecord_EmoneyLog["GetScoreReward"] = {}
	tCavalierRecord_EmoneyLog["GetScoreReward"][1] = "350	20147	0	0	1	"			-- 领取累计贡献第1档奖励
	tCavalierRecord_EmoneyLog["GetScoreReward"][2] = "350	20148	0	0	1	"			-- 领取累计贡献第2档奖励
	tCavalierRecord_EmoneyLog["GetScoreReward"][3] = "350	20149	0	0	1	"			-- 领取累计贡献第3档奖励
	tCavalierRecord_EmoneyLog["GetScoreReward"][4] = "350	20150	0	0	1	"			-- 领取累计贡献第4档奖励
	tCavalierRecord_EmoneyLog["GetScoreReward"][5] = "350	20151	0	0	1	"			-- 领取累计贡献第5档奖励
	tCavalierRecord_EmoneyLog["GetScoreReward"][6] = "350	20152	0	0	1	"			-- 领取累计贡献第6档奖励
	tCavalierRecord_EmoneyLog["GetScoreReward"][7] = "350	20153	0	0	1	"			-- 领取累计贡献第7档奖励
	tCavalierRecord_EmoneyLog["GetScoreReward"][8] = "350	20154	0	0	1	"			-- 领取累计贡献第8档奖励

	tCavalierRecord_EmoneyLog["GetAllReward"] = "350	20155	0	0	1	"			-- 领取集齐骑士奖励
	
local tCavalierRecord_Effect = {}
	tCavalierRecord_Effect[1] = "self"
	tCavalierRecord_Effect[2] = "Anglewing"
	tCavalierRecord_Effect[3] = "zf2-e280"
	tCavalierRecord_Effect[4] = "eidolon"
	
------------------------------------------------逻辑部分-------------------------------------------------
--玩家等级判断
function CavalierRecord_LevelJudgement()
	local nLevel = tCavalierRecord_Cont["Level"]
	local nMete = tCavalierRecord_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 给我瓦尔基里之盾
function CavalierRecord_GetShield(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	-- 判断等级
	if not CavalierRecord_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nEvent = tCavalierRecord_Stc["EventType"][1]
	local nType = tCavalierRecord_Stc["DataType"][2]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end

	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nItemId = tCavalierRecord_Item["Shield"]
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	Item_AddNewItem(nItemId,"")
	Sys_SaveActionFestivalLog(tCavalierRecord_Log["GetShield"])
	LinkNpcGossipFunc_New(nNpcId,"2-2")
	Sys_MsgBox(tCavalierRecord_Text["GetShield"])
end

-- 补领瓦尔基里之盾
function CavalierRecord_ReGetShield(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end

	-- 判断等级
	if not CavalierRecord_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nEvent = tCavalierRecord_Stc["EventType"][1]
	local nType = tCavalierRecord_Stc["DataType"][3]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end
	
	local nItemId = tCavalierRecord_Item["Shield"]	
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	
	Item_AddNewItem(nItemId,"")
	Sys_SaveActionFestivalLog(tCavalierRecord_Log["GetShield"])
	LinkNpcGossipFunc_New(nNpcId,"3-2")
end

-- 领取贡献排名奖励
function CavalierRecord_GetRankingReward(nNpcId)
	-- 过了领取排名奖励的时间
	if not Sys_ChkFullTime(tCavalierRecord_Cont["RankTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"7-5")
		return
	end
	
	-- 判断是否已领取排名奖励
	local nEvent = tCavalierRecord_Stc["EventType"][2]
	local nType = tCavalierRecord_Stc["DataType"][9]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"7-4")
		return 
	end
	
	-- 判断是否在排名内
	local nFlag = 0
	for k,v in pairs(tCavalierRecord_Reward["GlobalRank"]) do
		for i = 1, 5 do 
			if  Get_SysDynaGlobalData(v,i) == Get_UserId() then
				nFlag = i + ( k - 1 ) * 5
				break
			end
		end
	end
	
	--不在前10名中
	if  nFlag == 0 then	
		LinkNpcGossipFunc_New(nNpcId,"7-3")
		return 
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"7-2")
		return 
	end
	
	local nItemId = tCavalierRecord_Reward["ItemReward"]["Item_3"]
	local nIndex = 0
	if nFlag >= 1 and nFlag <= 3 then
		nIndex = nFlag
	elseif nFlag >= 4 and nFlag <= 6 then
		nIndex = 4
	elseif nFlag >= 7 and nFlag <= 10 then
		nIndex = 7
	end
	
	local nStrength = tCavalierRecord_Reward["Ranking"][nIndex]["Strength"]
	local sAttr = tCavalierRecord_Reward["Ranking"][nIndex]["Attr_1"]
	local nItemNum = tCavalierRecord_Reward["Ranking"][nIndex]["Num"]
	local nItemTime = tCavalierRecord_Reward["Ranking"][nIndex]["Time"]

	-- 设置领取排行奖励掩码
	Task_SetStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)

	-- 给奖励
	User_AddStrengthValue(nStrength)
	Item_AddNewItem(nItemId,sAttr)
	Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["RankingReward"],nItemTime,nStrength))
	tNpcGossip[nNpcId]["Text711"] = string.format(tCavalierRecord_Text[nNpcId]["Text711"],nFlag)
	LinkNpcGossipFunc_New(nNpcId,"7-1")
end

-- 设置排行榜
function CavalierRecord_SetRankingList(nAllScoreData)
	local tRankUserData = {}
	--前10名
	local nIndex = 0
	for j = 1,2  do
		for i = 1, 5 do
			local nGlobalId = tCavalierRecord_Reward["GlobalRank"][j]
			local nPlayerId = Get_SysDynaGlobalData(nGlobalId,i)
			local nScore = Get_SysDynaGlobalDataStr(nGlobalId,i)
			nIndex = nIndex + 1
			tRankUserData[nIndex]={}
			tRankUserData[nIndex]["PlayerId"]= nPlayerId
			tRankUserData[nIndex]["nScore"] = nScore == "" and 0 or tonumber(nScore)
		end
	end
	
	--取排行榜玩家名字
	nIndex = 0
	for j = 1,2 do
		for i = 1, 5 do
			local nGlobalId = tCavalierRecord_Reward["GlobalRankName"][j]
			local sPlayerName = Get_SysDynaGlobalDataStr(nGlobalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex]["PlayerName"] = sPlayerName == "" and "null" or sPlayerName
		end
	end
	
	--将玩家加入到临时排行表中
	local nIndex = #tRankUserData +1
	for i = 1,10 do
		if Get_UserId() == tRankUserData[i]["PlayerId"] then
			nIndex = i
		end
	end
	tRankUserData[nIndex]={}
	tRankUserData[nIndex]["PlayerId"]= Get_UserId()
	tRankUserData[nIndex]["nScore"] = nAllScoreData
	tRankUserData[nIndex]["PlayerName"] = Get_UserName()
	
	local t = {}
	for i = 1,#tRankUserData do
		for j = 1, #tRankUserData - i do	
			if  tRankUserData[j]["PlayerId"] == 0 or ( tRankUserData[j]["nScore"] < tRankUserData[j+1]["nScore"] and tRankUserData[j+1]["PlayerId"] ~= 0)   then
				t = tRankUserData[j]
				tRankUserData[j] = tRankUserData[j+1]
				tRankUserData[j+1] = t
			end
		end
	end
	
	--将排序完的数据更新到全局表中
	for i = 1,10 do
		local nUserId = tRankUserData[i]["PlayerId"]
		local nScore = tRankUserData[i]["nScore"]
		local sUserName = tRankUserData[i]["PlayerName"]
		if i > 5 then
			Sys_SetSynaGlobalData(tCavalierRecord_Reward["GlobalRank"][2],i-5,nUserId)
			Sys_SetSynaGlobalDataStr(tCavalierRecord_Reward["GlobalRank"][2],i-5,tostring(nScore))
			Sys_SetSynaGlobalDataStr(tCavalierRecord_Reward["GlobalRankName"][2],i-5,sUserName)
		else
			Sys_SetSynaGlobalData(tCavalierRecord_Reward["GlobalRank"][1],i,nUserId)
			Sys_SetSynaGlobalDataStr(tCavalierRecord_Reward["GlobalRank"][1],i,tostring(nScore))
			Sys_SetSynaGlobalDataStr(tCavalierRecord_Reward["GlobalRankName"][1],i,sUserName)
		end
	end
end

-------------------------------------------使用物品逻辑----------------------------------------------------------
-- 判断使用物品是否过期
function CavalierRecord_CheckItemTime(nItemId)
	if not Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tCavalierRecord_Text["FestivalOver"])
			Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["DelItem"],nItemId))
		end
		return
	end
end

-- 使用背包信
function CavalierRecord_OpenBackpackLetter(nItemId)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)
	end

	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		--玩家等级
		local nLevel = Get_UserLevel()
		-- 判断是否满级
		if nLevel < G_User_MaxLev then
			local nAddExp = tCavalierRecord_Letter["ExpTime"]
			User_AddExpTime(nAddExp)
			Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["UseLetter"],nItemId,4,nAddExp))

			User_TalkChannel2005(tCavalierRecord_Text[nItemId]["Exp"])
		else
			if tCavalierRecord_Letter["Cultivation"] then
				User_AddCultivation(tCavalierRecord_Letter["Cultivation"])
				Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["UseLetter"],nItemId,6,tCavalierRecord_Letter["Cultivation"]))
				User_TalkChannel2005(tCavalierRecord_Text[nItemId]["Cultivation"])
			end
		end
		
		-- 自动寻路
		if tCavalierRecord_Letter["Pathfind"] then 
			local nPosX = tCavalierRecord_Letter["Pathfind"]["PosX"]
			local nPosY = tCavalierRecord_Letter["Pathfind"]["PosY"]
			local nMapId = tCavalierRecord_Letter["Pathfind"]["MapId"]
			local nNpcId = tCavalierRecord_Letter["Pathfind"]["NpcId"]
			Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
		end
	end
end

-- 点击使用盾，随机刷新需求物品上交
function CavalierRecord_UseShield(nItemId)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)
		
		-- 检查玩家当前是否已经上交过新随机的卡牌
		local nItemEvent = tCavalierRecord_Stc["EventType"][2]
		local nItemType = tCavalierRecord_Stc["DataType"][10]
		local nNumType = tCavalierRecord_Stc["DataType"][11]
		-- 隔天重置
		if Task_ChkStcValue(nItemEvent,nItemType,">",0) then
			if Task_StcInterval(nItemEvent,nItemType,1,4) then
				Task_SetStatistic(nItemEvent,nItemType,0,1,0)
				Task_SetStcTimestamp(nItemEvent,nItemType,0,0)	
			end
		end
		if Task_ChkStcValue(nItemEvent,nNumType,">",0) then
			if Task_StcInterval(nItemEvent,nNumType,1,4) then
				Task_SetStatistic(nItemEvent,nNumType,0,1,0)
				Task_SetStcTimestamp(nItemEvent,nNumType,0,0)	
			end
		end
		local nItemData = Get_UserStatisticValue(nItemEvent,nItemType)
		local nNumData = Get_UserStatisticValue(nItemEvent,nNumType)
		
		local nCardId = 0
		local nCardNum = 0
		if nItemData == 0 or nNumData == 0 then
			-- 随机产生所需卡牌的数量
			local nFlat,tAward = Probabil_RandomAward(tCavalierRecord_RandCard["CardNum"],1)
			nCardNum = tAward[1]["tAward"][1]["Item_1"]
			Task_SetStatistic(nItemEvent,nNumType,nCardNum,1,0)
			Task_SetStcTimestamp(nItemEvent,nNumType,0,0)	
			
			-- 随机产生所需卡牌类型
			local nFlat,tAward = Probabil_RandomAward(tCavalierRecord_RandCard["CardType"],1)
			nCardId = tAward[1]["tAward"][1]["Item_1"]
			Task_SetStatistic(nItemEvent,nItemType,nCardId,1,0)
			Task_SetStcTimestamp(nItemEvent,nItemType,0,0)	
		else
			nCardId = nItemData
			nCardNum = nNumData
		end
		
		local sCardName = tCavalierRecord_Text["Tip"][nCardId]
		local nScore = 0
		local nExp = 0
		local nStrength = 0
		if nCardId >= 3008942 and nCardId <= 3008943 then		-- 稀有卡牌
			nScore = tCavalierRecord_RandCard["Special"]["Num"]*nCardNum
			nExp = tCavalierRecord_RandCard["Special"]["Exp"]
			nStrength = tCavalierRecord_RandCard["Special"]["Strength"]
		else
			nScore = tCavalierRecord_RandCard["Normal"]["Num"]*nCardNum
			nExp = tCavalierRecord_RandCard["Normal"]["Exp"]
			nStrength = tCavalierRecord_RandCard["Normal"]["Strength"]
		end
		
		-- 今日剩余刷新的次数
		local nDiffTimes = 0
		local nRefreshEvent = tCavalierRecord_Stc["EventType"][2]
		local nRefreshType = tCavalierRecord_Stc["DataType"][6]
		local nComplete = tCavalierRecord_Stc["Data"][4]
		
		-- 隔天重置
		if Task_ChkStcValue(nRefreshEvent,nRefreshType,">",0) then
			if Task_StcInterval(nRefreshEvent,nRefreshType,1,4) then
				Task_SetStatistic(nRefreshEvent,nRefreshType,0,1,0)
				Task_SetStcTimestamp(nRefreshEvent,nRefreshType,0,0)	
			end
		end
		
		local nRefreshNum = Get_UserStatisticValue(nRefreshEvent,nRefreshType) or 0

		if nRefreshNum <= nComplete then
			nDiffTimes = tonumber(nComplete - nRefreshNum)
		end
	
		-- 累积贡献值
		local nEvent = tCavalierRecord_Stc["EventType"][1]
		local nScoreType = tCavalierRecord_Stc["DataType"][5]
		local nAllScore = Get_UserStatisticValue(nEvent,nScoreType) or 0
		
		-- 设置提交次数
		local nTimesType = tCavalierRecord_Stc["DataType"][4]
		local nNowTime = Get_UserStatisticValue(nEvent,nTimesType) or 0
		
		if nCardId >= 3008942 and nCardId <= 3008943 then		-- 稀有卡牌
			Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text116"],sCardName,nCardNum))
			if nNowTime <= 10 then
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text117"],nScore,nExp,nStrength))
			else			-- 10次后，没有其他奖励
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text118"],nScore))
			end
		else		-- 普通卡牌
			Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text111"],sCardName,nCardNum))
			if nNowTime <= 10 then
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text112"],nScore,nExp,nStrength))
			else			-- 10次后，没有其他奖励
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text115"],nScore))
			end
		end
		Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text113"],nDiffTimes))
		Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text114"],nAllScore))
		Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option1"],"</F>CavalierRecord_SetScrap</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)
		if nDiffTimes ~= 0 then		-- 10次后，刷新需求选项屏蔽
			Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option2"],"</F>CavalierRecord_RefreshRequest</N>"..nItemId)
		end
		Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option3"],"</F>CavalierRecord_CheckProgress</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)
		Sys_DialogEnd()
	end
end

-- 镶嵌灵魂碎片
function CavalierRecord_SetScrap(nItemId,nCardId,nCardNum)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)

		local sCardName = tCavalierRecord_Text["Tip"][nCardId]
		
		-- 失败，背包中没有对应的灵魂碎片
		if not Item_ChkMulItem(nCardId,nCardId,nCardNum) then
			Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text221"],sCardName))
			Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option5"],"</F>CavalierRecord_UseShield</N>"..nItemId)
			Sys_DialogEnd()
			return
		end
		
		local nEvent = tCavalierRecord_Stc["EventType"][1]
		local nScore = 0
		local nExp = 0
		local nStrength = 0
		if nCardId >= 3008942 and nCardId <= 3008943 then		-- 稀有卡牌
			nScore = tCavalierRecord_RandCard["Special"]["Num"]*nCardNum
			nExp = tCavalierRecord_RandCard["Special"]["Exp"]
			nStrength = tCavalierRecord_RandCard["Special"]["Strength"]
		else
			nScore = tCavalierRecord_RandCard["Normal"]["Num"]*nCardNum
			nExp = tCavalierRecord_RandCard["Normal"]["Exp"]
			nStrength = tCavalierRecord_RandCard["Normal"]["Strength"]
		end
		if Item_ChkMulItem(nCardId,nCardId,nCardNum) then
			-- 设置提交次数
			local nTimesType = tCavalierRecord_Stc["DataType"][4]
			local nMaxTime = tCavalierRecord_Stc["Data"][4]
			-- 隔天重置
			if Task_ChkStcValue(nEvent,nTimesType,">",0) then
				if Task_StcInterval(nEvent,nTimesType,1,4) then
					Task_SetStatistic(nEvent,nTimesType,0,1,0)
					Task_SetStcTimestamp(nEvent,nTimesType,0,0)	
				end
			end
			local nNowTime = Get_UserStatisticValue(nEvent,nTimesType) or 0
			
			-- 成功，获得正常奖励，系统提示
			local sStr = ""
			if nNowTime >= nMaxTime then
				if Item_DelMulItem(nCardId,nCardId,nCardNum) then
					local nScoreType = tCavalierRecord_Stc["DataType"][5]
					Task_AddStatistic(nEvent,nScoreType,nScore,1,0)
					Task_SetStcTimestamp(nEvent,nScoreType,0,0)
					-- 实时更新排行榜中的玩家贡献值数据
					local nAllScoreData = Get_UserStatisticValue(nEvent,nScoreType)
					CavalierRecord_SetRankingList(nAllScoreData)
				
					-- 设置提交次数
					Task_AddStatistic(nEvent,nTimesType,1,1,0)
					Task_SetStcTimestamp(nEvent,nTimesType,0,0)
					
					-- 设置提交的卡牌种类与数量掩码
					local nCardType = tCavalierRecord_Stc["CardType"][nCardId]
					Task_AddStatistic(nEvent,nCardType,nCardNum,1,0)
					Task_SetStcTimestamp(nEvent,nCardType,0,0)

					-- 提交后重置 检查玩家当前是否已经上交过新随机的卡牌 掩码
					local nAllEvent = tCavalierRecord_Stc["EventType"][2]
					local nItemType = tCavalierRecord_Stc["DataType"][10]
					local nNumType = tCavalierRecord_Stc["DataType"][11]
					Task_SetStatistic(nAllEvent,nItemType,0,1,0)
					Task_SetStcTimestamp(nAllEvent,nItemType,0,0)	
					Task_SetStatistic(nAllEvent,nNumType,0,1,0)
					Task_SetStcTimestamp(nAllEvent,nNumType,0,0)
					-- 成功提交骑士卡
					Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["HandInScrap"])

					sStr = tCavalierRecord_Text[nItemId]["Null"]
					Sys_MsgBox(string.format(tCavalierRecord_Text[nItemId]["GetNormal"],nScore,sStr))
					User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[3])
					CavalierRecord_UseShield(nItemId)
				end
			else
				-- 玩家选择奖励
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text231"],nExp,nStrength))
				Sys_DialogOption(string.format(tCavalierRecord_Text[nItemId]["Option231"],nExp),"</F>CavalierRecord_AddExp</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)
				Sys_DialogOption(string.format(tCavalierRecord_Text[nItemId]["Option232"],nStrength),"</F>CavalierRecord_AddStrength</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)
				Sys_DialogEnd()
			end
		end
	end
end

-- 我要%d分钟经验。
function CavalierRecord_AddExp(nItemId,nCardId,nCardNum)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)

		local sCardName = tCavalierRecord_Text["Tip"][nCardId]
		
		-- 失败，背包中没有对应的灵魂碎片
		if not Item_ChkMulItem(nCardId,nCardId,nCardNum) then
			Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text221"],sCardName))
			Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option5"],"</F>CavalierRecord_UseShield</N>"..nItemId)
			Sys_DialogEnd()
			return
		end
		
		local nScore = 0
		local nExp = 0
		if nCardId >= 3008942 and nCardId <= 3008943 then		-- 稀有卡牌
			nScore = tCavalierRecord_RandCard["Special"]["Num"]*nCardNum
			nExp = tCavalierRecord_RandCard["Special"]["Exp"]
		else
			nScore = tCavalierRecord_RandCard["Normal"]["Num"]*nCardNum
			nExp = tCavalierRecord_RandCard["Normal"]["Exp"]
		end

		if Item_ChkMulItem(nCardId,nCardId,nCardNum) and Item_DelMulItem(nCardId,nCardId,nCardNum)then
			-- 设置分数
			local nEvent = tCavalierRecord_Stc["EventType"][1]
			local nScoreType = tCavalierRecord_Stc["DataType"][5]
			Task_AddStatistic(nEvent,nScoreType,nScore,1,0)
			Task_SetStcTimestamp(nEvent,nScoreType,0,0)
			
			-- 实时更新排行榜中的玩家贡献值数据
			local nAllScoreData = Get_UserStatisticValue(nEvent,nScoreType)
			CavalierRecord_SetRankingList(nAllScoreData)
		
			-- 设置提交次数
			local nTimesType = tCavalierRecord_Stc["DataType"][4]
			Task_AddStatistic(nEvent,nTimesType,1,1,0)
			Task_SetStcTimestamp(nEvent,nTimesType,0,0)
			local nNowTime = Get_UserStatisticValue(nEvent,nTimesType) or 0
			local nMaxTime = tCavalierRecord_Stc["Data"][4]

			-- 设置提交的卡牌种类与数量掩码
			local nCardType = tCavalierRecord_Stc["CardType"][nCardId]
			Task_AddStatistic(nEvent,nCardType,nCardNum,1,0)
			Task_SetStcTimestamp(nEvent,nCardType,0,0)

			-- 提交后重置 检查玩家当前是否已经上交过新随机的卡牌 掩码
			local nAllEvent = tCavalierRecord_Stc["EventType"][2]
			local nItemType = tCavalierRecord_Stc["DataType"][10]
			local nNumType = tCavalierRecord_Stc["DataType"][11]
			Task_SetStatistic(nAllEvent,nItemType,0,1,0)
			Task_SetStcTimestamp(nAllEvent,nItemType,0,0)	
			Task_SetStatistic(nAllEvent,nNumType,0,1,0)
			Task_SetStcTimestamp(nAllEvent,nNumType,0,0)
			-- 成功提交骑士卡
			Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["HandInScrap"])
			
			if nNowTime > nMaxTime then
				local sStr = tCavalierRecord_Text[nItemId]["Null"]
				Sys_MsgBox(string.format(tCavalierRecord_Text[nItemId]["GetNormal"],nScore,sStr))
			else
				-- 判断给经验或修行值
				local nLevel = Get_UserLevel()
				if nLevel < G_User_MaxLev then
					User_AddExpTime(nExp)
					local sStr = string.format(tCavalierRecord_Text[nItemId]["Exp"],nExp)
					Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["HandReward"],4,nExp))
					Sys_MsgBox(string.format(tCavalierRecord_Text[nItemId]["GetNormal"],nScore,sStr))
				else
					-- 经验满，给一半经验的修行值
					local nCul = math.floor(tonumber(nExp/2))
					User_AddCultivation(nCul)
					local sStr = string.format(tCavalierRecord_Text[nItemId]["Cultivation"],nCul)
					Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["HandReward"],6,nCul))
					Sys_MsgBox(string.format(tCavalierRecord_Text[nItemId]["GetNormal"],nScore,sStr))
				end
			end
			User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[3])
			CavalierRecord_UseShield(nItemId)
		end
	end
end

-- 我要%d点气力值。
function CavalierRecord_AddStrength(nItemId,nCardId,nCardNum)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)
		
		local sCardName = tCavalierRecord_Text["Tip"][nCardId]
		
		-- 失败，背包中没有对应的灵魂碎片
		if not Item_ChkMulItem(nCardId,nCardId,nCardNum) then
			Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text221"],sCardName))
			Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option5"],"</F>CavalierRecord_UseShield</N>"..nItemId)
			Sys_DialogEnd()
			return
		end
		
		local nScore = 0
		local nStrength = 0
		if nCardId >= 3008942 and nCardId <= 3008943 then		-- 稀有卡牌
			nScore = tCavalierRecord_RandCard["Special"]["Num"]*nCardNum
			nStrength = tCavalierRecord_RandCard["Special"]["Strength"]
		else
			nScore = tCavalierRecord_RandCard["Normal"]["Num"]*nCardNum
			nStrength = tCavalierRecord_RandCard["Normal"]["Strength"]
		end

		if Item_ChkMulItem(nCardId,nCardId,nCardNum) and Item_DelMulItem(nCardId,nCardId,nCardNum)then
			-- 设置分数
			local nEvent = tCavalierRecord_Stc["EventType"][1]
			local nScoreType = tCavalierRecord_Stc["DataType"][5]
			Task_AddStatistic(nEvent,nScoreType,nScore,1,0)
			Task_SetStcTimestamp(nEvent,nScoreType,0,0)
			
			-- 实时更新排行榜中的玩家贡献值数据
			local nAllScoreData = Get_UserStatisticValue(nEvent,nScoreType)
			CavalierRecord_SetRankingList(nAllScoreData)
		
			-- 设置提交次数
			local nTimesType = tCavalierRecord_Stc["DataType"][4]
			Task_AddStatistic(nEvent,nTimesType,1,1,0)
			Task_SetStcTimestamp(nEvent,nTimesType,0,0)
			local nNowTime = Get_UserStatisticValue(nEvent,nTimesType) or 0
			local nMaxTime = tCavalierRecord_Stc["Data"][4]

			-- 设置提交的卡牌种类与数量掩码
			local nCardType = tCavalierRecord_Stc["CardType"][nCardId]
			Task_AddStatistic(nEvent,nCardType,nCardNum,1,0)
			Task_SetStcTimestamp(nEvent,nCardType,0,0)
			
			-- 提交后重置 检查玩家当前是否已经上交过新随机的卡牌 掩码
			local nAllEvent = tCavalierRecord_Stc["EventType"][2]
			local nItemType = tCavalierRecord_Stc["DataType"][10]
			local nNumType = tCavalierRecord_Stc["DataType"][11]
			Task_SetStatistic(nAllEvent,nItemType,0,1,0)
			Task_SetStcTimestamp(nAllEvent,nItemType,0,0)	
			Task_SetStatistic(nAllEvent,nNumType,0,1,0)
			Task_SetStcTimestamp(nAllEvent,nNumType,0,0)
			-- 成功提交骑士卡
			Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["HandInScrap"])

			if nNowTime > nMaxTime then
				local sStr = tCavalierRecord_Text[nItemId]["Null"]
				Sys_MsgBox(string.format(tCavalierRecord_Text[nItemId]["GetNormal"],nScore,sStr))
			else
				-- 给气力值
				User_AddStrengthValue(nStrength)
				local sStr = string.format(tCavalierRecord_Text[nItemId]["Strength"],nStrength)
				Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["HandReward"],12,nStrength))
				if nStrength == 100 then
					Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["Get100Stren"])
				elseif nStrength == 300 then
					Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["Get300Stren"])
				end
				Sys_MsgBox(string.format(tCavalierRecord_Text[nItemId]["GetNormal"],nScore,sStr))
			end
			User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[3])
			CavalierRecord_UseShield(nItemId)
		end
	end
end

-- 刷新需求(20万银两)
function CavalierRecord_RefreshRequest(nItemId)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)
		
		local nNeedMoney = tCavalierRecord_RandCard["Money"]
		if not User_CanPutMoney2Bag((-1)*nNeedMoney) then
			LinkItemGossipFunc_New(nItemId,"3-1")
			return
		end
		
		-- 设置当日刷新次数
		local nRefreshEvent = tCavalierRecord_Stc["EventType"][2]
		local nRefreshType = tCavalierRecord_Stc["DataType"][6]
		local nComplete = tCavalierRecord_Stc["Data"][4]
		-- 隔天重置
		if Task_ChkStcValue(nRefreshEvent,nRefreshType,">",0) then
			if Task_StcInterval(nRefreshEvent,nRefreshType,1,4) then
				Task_SetStatistic(nRefreshEvent,nRefreshType,0,1,0)
				Task_SetStcTimestamp(nRefreshEvent,nRefreshType,0,0)	
			end
		end
		local nRefreshNum = Get_UserStatisticValue(nRefreshEvent,nRefreshType) or 0
		
		if nRefreshNum >= nComplete then
			-- 今天剩余刷新次数为0
			LinkItemGossipFunc_New(nItemId,"3-2")
			return
		else
			Task_AddStatistic(nRefreshEvent,nRefreshType,1,1,0)
			Task_SetStcTimestamp(nRefreshEvent,nRefreshType,0,0)
			
			local nItemType = tCavalierRecord_Stc["DataType"][10]
			local nNumType = tCavalierRecord_Stc["DataType"][11]
			Task_SetStatistic(nRefreshEvent,nItemType,0,1,0)
			Task_SetStcTimestamp(nRefreshEvent,nItemType,0,0)	
			Task_SetStatistic(nRefreshEvent,nNumType,0,1,0)
			Task_SetStcTimestamp(nRefreshEvent,nNumType,0,0)	

			-- 扣金币
			User_AddMoney((-1)*nNeedMoney)
			Sys_SaveActionFestivalLog(tCavalierRecord_Log["DelMoney"])
			Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["RefreshNeed"])
			CavalierRecord_UseShield(nItemId)
		end
	end
end

-- 接3：查看进度
function CavalierRecord_CheckProgress(nItemId,nCardId,nCardNum)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)
		
		local nEvent = tCavalierRecord_Stc["EventType"][1]
		local tTable = {}
		local sStrTable = {}
		for i = 3008942,3008953 do
			local nType = tCavalierRecord_Stc["CardType"][i]
			if Task_ChkStcValue(nEvent,nType,">",0) then
				local nData = Get_UserStatisticValue(nEvent,nType)
				table.insert(tTable,nData)
			else
				table.insert(tTable,0)
			end
		end

		local str = ""
		for i,v in pairs(tTable) do
			if i >= 1 and i <= 9 then
				if v == 0 then		-- 未收集 红色字
					str = string.format(tCavalierRecord_Text[nItemId]["Text40"..tostring(i)],v)
				else		-- 收集到后 黄色字
					str = string.format(tCavalierRecord_Text[nItemId]["Text400"..tostring(i)],v)
				end
				-- str = string.format(tCavalierRecord_Text[nItemId]["Text40"..tostring(i)],v)
			else
				if v == 0 then		-- 未收集 红色字
					str = string.format(tCavalierRecord_Text[nItemId]["Text4"..tostring(i)],v)
				else		-- 收集到后 黄色字
					str = string.format(tCavalierRecord_Text[nItemId]["Text40"..tostring(i)],v)
				end
				-- str = string.format(tCavalierRecord_Text[nItemId]["Text4"..tostring(i)],v)
			end
			table.insert(sStrTable,str)
		end
		
		-- 获取当前贡献值
		local nScoreType = tCavalierRecord_Stc["DataType"][5]
		local nScore = Get_UserStatisticValue(nEvent,nScoreType) or 0
		local nFlag = 0
		local nDiffScore = 0
		
		-- 获取下次领奖所需贡献值
		for j = 0,8 do
			if j == 0 then
				if nScore < tCavalierRecord_Reward["ScoreLevel"][j][2] then
					nFlag = j
					nDiffScore = tCavalierRecord_Reward["ScoreLevel"][j][2] - nScore
				end
			elseif j == 8 then
				if nScore >= tCavalierRecord_Reward["ScoreLevel"][j][1] then
					nFlag = j
					nDiffScore = 0
				end
			else
				if nScore >= tCavalierRecord_Reward["ScoreLevel"][j][1] and nScore < tCavalierRecord_Reward["ScoreLevel"][j][2] then
					nFlag = j
					nDiffScore = tCavalierRecord_Reward["ScoreLevel"][j][2] - nScore
				end
			end
		end
		
		-- 当前积分奖励都领取过了
		local nRewardEvent = tCavalierRecord_Stc["EventType"][2]
		local nRewardType = tCavalierRecord_Stc["DataType"][8]
		local nRewardData = Get_UserStatisticValue(nRewardEvent,nRewardType) or 0
		local nRewardComplete = tCavalierRecord_Stc["Data"][8]

		if nFlag >= 1 then
			if Task_ChkStcValue(nRewardEvent,nRewardType,"==",nFlag) then
				nFlag = nFlag
			else
				for j = 0,nFlag do
					if Task_ChkStcValue(nRewardEvent,nRewardType,"==",j) then
						nFlag = j + 1
						break
					else
						j = j + 1
					end
				end
			end
		end

		-- 判断奖励内容
		if nFlag ~= 0 then
			local nStrength = tCavalierRecord_Reward["Score"][nFlag]["Strength"]
			local nItemNum = tCavalierRecord_Reward["Score"][nFlag]["Num"]
			local nItemTime = tCavalierRecord_Reward["Score"][nFlag]["Time"]
			local nNextScore = tCavalierRecord_Reward["Score"][nFlag]["Score"]
			for j,k in pairs(sStrTable) do
				Sys_DialogText(sStrTable[j])
			end
			-- 已领取全部贡献值奖励
			if Task_ChkStcValue(nRewardEvent,nRewardType,">=",nRewardComplete) then
				Sys_DialogText(tCavalierRecord_Text[nItemId]["Text417"])
			elseif Task_ChkStcValue(nRewardEvent,nRewardType,">=",nFlag) then -- 判断当前领取了某个阶段的奖励
				local nStren = tCavalierRecord_Reward["Score"][nFlag+1]["Strength"]
				local nNum = tCavalierRecord_Reward["Score"][nFlag+1]["Num"]
				local nTime = tCavalierRecord_Reward["Score"][nFlag+1]["Time"]
				local nNextScore = tCavalierRecord_Reward["Score"][nFlag+1]["Score"]
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text414"],nScore,nNextScore))
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text415"],nStren,nNum,nNum,nTime))
				Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option6"],"</F>CavalierRecord_GetReward</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)				
			else
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text414"],nScore,nNextScore))
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text415"],nStrength,nItemNum,nItemNum,nItemTime))
				Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option6"],"</F>CavalierRecord_GetReward</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)
			end
		else
			for j,k in pairs(sStrTable) do
				Sys_DialogText(sStrTable[j])
			end
			local nStrength = tCavalierRecord_Reward["Score"][1]["Strength"]
			local nItemNum = tCavalierRecord_Reward["Score"][1]["Num"]
			local nItemTime = tCavalierRecord_Reward["Score"][1]["Time"]
			local nNextScore = tCavalierRecord_Reward["Score"][1]["Score"]
			Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text414"],nScore,nNextScore))
			Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text415"],nStrength,nItemNum,nItemNum,nItemTime))
			Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option6"],"</F>CavalierRecord_GetReward</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)
		end
		
		-- 判断是否领取了首次收集齐12个圆桌骑士的奖励
		local nAllEvent = tCavalierRecord_Stc["EventType"][2]
		local nAllType = tCavalierRecord_Stc["DataType"][7]
		if not Task_ChkStcValue(nAllEvent,nAllType,">=",1) then
			Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option8"],"</F>CavalierRecord_GetAllCardReward</N>"..nItemId.."</N>"..nCardId.."</N>"..nCardNum)
		end
		Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option7"],"</F>CavalierRecord_UseShield</N>"..nItemId)
		Sys_DialogEnd()
	end
end

-- 领取集齐骑士奖励
function CavalierRecord_GetAllCardReward(nItemId,nCardId,nCardNum)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)

		-- 检查是否集齐12种卡牌
		local nEvent = tCavalierRecord_Stc["EventType"][1]
		local nCounter = 0
		for i = 3008942,3008953 do
			local nType = tCavalierRecord_Stc["CardType"][i]
			if Task_ChkStcValue(nEvent,nType,">=",1) then
				nCounter = nCounter + 1		
			end
		end
		
		-- 未集齐12种
		if nCounter ~= 12 then
			LinkItemGossipFunc_New(nItemId,"7-2")
			return
		end

		-- 判断是否领取了首次收集齐12个圆桌骑士的奖励
		local nAllEvent = tCavalierRecord_Stc["EventType"][2]
		local nAllType = tCavalierRecord_Stc["DataType"][7]
		
		-- 已领取
		if Task_ChkStcValue(nAllEvent,nAllType,">=",1) then
			LinkItemGossipFunc_New(nItemId,"7-3")
			return
		end
		
		-- 集齐12种骑士卡,判断背包空间
		if nCounter == 12 and (not Task_ChkStcValue(nAllEvent,nAllType,">=",1)) then
			if not User_CheckLeftSpace(4) then
				Sys_DialogText(string.format(tCavalierRecord_Text[nItemId]["Text711"],4))
				Sys_DialogOption(tCavalierRecord_Text[nItemId]["Option10"],"</F>CavalierRecord_UseShield</N>"..nItemId)
				Sys_DialogEnd()
				return
			end
		end

		-- 成功，首次收集齐12个圆桌骑士
		Task_SetStatistic(nAllEvent,nAllType,1,1,0)
		Task_SetStcTimestamp(nAllEvent,nAllType,0,0)

		local nRewardItem_1 = tCavalierRecord_Reward["ItemReward"]["Item_1"]
		local nRewardItem_2 = tCavalierRecord_Reward["ItemReward"]["Item_2"]
		local nRewardItem_3 = tCavalierRecord_Reward["ItemReward"]["Item_3"]
		local sAttr_1 = tCavalierRecord_Reward["All"]["Attr_1"]
		local sAttr_2 = tCavalierRecord_Reward["All"]["Attr_2"]
		local sAttr_3 = tCavalierRecord_Reward["All"]["Attr_3"]
		local nAddStrength = tCavalierRecord_Reward["All"]["Strength"]

		User_AddStrengthValue(nAddStrength)
		Item_AddNewItem(nRewardItem_1,sAttr_1)
		Item_AddNewItem(nRewardItem_2,sAttr_2)
		Item_AddNewItem(nRewardItem_3,sAttr_3)
		Sys_SaveActionFestivalLog(tCavalierRecord_Log["AllCardReward"])
		Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["GetAllReward"])
		Sys_MsgBox(tCavalierRecord_Text[nItemId]["GetFirst"])
		User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[3])
		CavalierRecord_CheckProgress(nItemId,nCardId,nCardNum)
	end
end

-- 领取贡献值奖励
function CavalierRecord_GetReward(nItemId,nCardId,nCardNum)
	if Item_ChkItem(nItemId) then
		-- 判断时间
		CavalierRecord_CheckItemTime(nItemId)
		
		-- 判断是否领取对应贡献值奖励
		local nRewardEvent = tCavalierRecord_Stc["EventType"][2]
		local nRewardType = tCavalierRecord_Stc["DataType"][8]
		local nRewardData = Get_UserStatisticValue(nRewardEvent,nRewardType) or 0
		local nRewardComplete = tCavalierRecord_Stc["Data"][8]
		if Task_ChkStcValue(nRewardEvent,nRewardType,">=",nRewardComplete) then
			LinkItemGossipFunc_New(nItemId,"6-3")
			return
		end

		-- 获取当前贡献值
		local nEvent = tCavalierRecord_Stc["EventType"][1]
		local nScoreType = tCavalierRecord_Stc["DataType"][5]
		local nScore = Get_UserStatisticValue(nEvent,nScoreType) or 0
		local nFlag = 0
		
		-- 判断贡献值大小
		for j = 0,8 do
			if j == 0 then
				if nScore < tCavalierRecord_Reward["ScoreLevel"][j][2] then
					nFlag = j
					nDiffScore = tCavalierRecord_Reward["ScoreLevel"][j][2] - nScore
				end
			elseif j == 8 then
				if nScore >= tCavalierRecord_Reward["ScoreLevel"][j][1] then
					nFlag = j
					nDiffScore = 0
				end
			else
				if nScore >= tCavalierRecord_Reward["ScoreLevel"][j][1] and nScore < tCavalierRecord_Reward["ScoreLevel"][j][2] then
					nFlag = j
					nDiffScore = tCavalierRecord_Reward["ScoreLevel"][j][2] - nScore
				end
			end
		end
	
		if nFlag == 0 then
			LinkItemGossipFunc_New(nItemId,"6-2")
			return
		end
		
		-- 当前积分奖励都领取过了
		if nFlag >= 1 then
			if Task_ChkStcValue(nRewardEvent,nRewardType,"==",nFlag) then
				tItem[nItemId]["Text641"] = string.format(tCavalierRecord_Text[nItemId]["Text641"],nDiffScore)
				LinkItemGossipFunc_New(nItemId,"6-4")
				return
			else
				for j = 0,nFlag do
					if Task_ChkStcValue(nRewardEvent,nRewardType,"==",j) then
						nFlag = j + 1
						break
					else
						j = j + 1
					end
				end
			end
		end
		
		-- 判断背包空间
		if not User_CheckLeftSpace(3) then
			LinkItemGossipFunc_New(nItemId,"6-1")
			return
		end
		
		-- 判断奖励内容
		if nFlag ~= 0 then
			local nRewardItem_1 = tCavalierRecord_Reward["ItemReward"]["Item_1"]
			local nRewardItem_2 = tCavalierRecord_Reward["ItemReward"]["Item_2"]
			local nRewardItem_3 = tCavalierRecord_Reward["ItemReward"]["Item_3"]
			
			local sAttr_1 = tCavalierRecord_Reward["Score"][nFlag]["Attr_1"]
			local sAttr_2 = tCavalierRecord_Reward["Score"][nFlag]["Attr_2"]
			local sAttr_3 = tCavalierRecord_Reward["Score"][nFlag]["Attr_3"]
			local nAddStrength = tCavalierRecord_Reward["Score"][nFlag]["Strength"]
			
			local nItemNum = tCavalierRecord_Reward["Score"][nFlag]["Num"]
			local nItemTime = tCavalierRecord_Reward["Score"][nFlag]["Time"]

			Task_AddStatistic(nRewardEvent,nRewardType,1,1,0)
			Task_SetStcTimestamp(nRewardEvent,nRewardType,0,0)

			User_AddStrengthValue(nAddStrength)
			Item_AddNewItem(nRewardItem_1,sAttr_1)
			Item_AddNewItem(nRewardItem_2,sAttr_2)
			Item_AddNewItem(nRewardItem_3,sAttr_3)
			Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["ScoreReward"],nItemTime,nAddStrength,nItemNum,nItemNum))
			Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["GetScoreReward"][nFlag])
			Sys_MsgBox(string.format(tCavalierRecord_Text[nItemId]["Success"],nAddStrength,nItemNum,nItemNum,nItemTime))
			User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[4])
			CavalierRecord_CheckProgress(nItemId,nCardId,nCardNum)
		end		
	end
end

-- 使用魂晶
function CavalierRecord_UseSoulStone(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) then
		Sys_MsgBox(tCavalierRecord_Text["FestivalOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["DelItem"],nItemId))
		end
		return
	end

	if Item_ChkItem(nItemId) then
		local nCounter = 0
		for i,v in pairs(tCavalierRecord_Item["SoulStone"]) do
			if Item_ChkItem(v) then
				nCounter = nCounter + 1
			end
		end
		if nCounter < 3 then
			Sys_MsgBox(tCavalierRecord_Text["NotComp"])
			return
		end
		
		if not User_CheckLeftSpace(1) then
			Sys_MsgBox(tCavalierRecord_Text["CompBagFull"])
			return
		end
		
		if Item_DelItem(tCavalierRecord_Item["SoulStone"][1]) and Item_DelItem(tCavalierRecord_Item["SoulStone"][2]) and Item_DelItem(tCavalierRecord_Item["SoulStone"][3]) then
			local nFlat,tAward = Probabil_RandomAward(tCavalierRecord_Compound["SoulStone"],1)
			local nCompId = tAward[1]["tAward"][1]["Item_1"]
			Item_AddNewItem(nCompId,"")
			User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[3])
			Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["Compound"],nCompId))
			Sys_SaveEmoneyBuy(tCavalierRecord_EmoneyLog["Compound"])
			local sName = tCavalierRecord_Text["Name"][nCompId]
			Sys_MsgBox(string.format(tCavalierRecord_Text["Compound"],sName))
		end
	end
end

-- 使用灵魂碎片
function CavalierRecord_UseScrap(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) then
		Sys_MsgBox(tCavalierRecord_Text["FestivalOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["DelItem"],nItemId))
		end
		return
	end
end

-- 使用正气令随机获得1张骑士卡
function CavalierRecord_ChiTokenGetSoulScrap()
	-- 判断时间
	if not Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) then
		return
	end
	
	local nFlat,tAward = Probabil_RandomAward(tCavalierRecord_Compound["SoulStone"],1)
	local nCompId = tAward[1]["tAward"][1]["Item_1"]
	Item_AddNewItem(nCompId,"")
	User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[3])
	Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["UseChiToken"],nCompId))
	local sName = tCavalierRecord_Text["Name"][nCompId]
	User_TalkChannel2005(string.format(tCavalierRecord_Text["UseChiToken"],sName))
end

---------------------------------------------片区怪掉落--------------------------------------------------
function CavalierRecord_MonsterDrop(nMonsterId)
	-- 判断时间
	if not Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) then
		return
	end
	
	local nEvent = tCavalierRecord_Stc["EventType"][1]
	local nType = tCavalierRecord_Stc["DataType"][1]
	local nComplete = tCavalierRecord_Stc["Data"][1]
	
	-- 隔天重置
	if Task_ChkStcValue(nEvent,nType,">",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)	
		end
	end
	
	-- 设置杀怪数量掩码
	Task_AddStatistic(nEvent,nType,1,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)	

	local nItemId = 0
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		local nFlat,tAward = Probabil_RandomAward(tCavalierRecord_MonsDrop["Scrap"],2)
		nItemId = tAward[1]["tAward"][1]["Item_1"]
	else
		local nFlat,tAward = Probabil_RandomAward(tCavalierRecord_MonsDrop["Scrap"],1)
		nItemId = tAward[1]["tAward"][1]["Item_1"]
	end
	
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tCavalierRecord_Text["DropBagFull"])
		return
	end
	
	if nItemId ~= 0 then
		Item_AddNewItem(nItemId,"")
		local sName = tCavalierRecord_Text["Name"][nItemId]
		User_TalkChannel2005(string.format(tCavalierRecord_Text["GetSoulStone"],sName))
		User_EffectAdd(tCavalierRecord_Effect[1],tCavalierRecord_Effect[2])
		Sys_SaveActionFestivalLog(string.format(tCavalierRecord_Log["MonsDrop"],nItemId))
	end
	
end

-- 片区怪掉落配置
local tCavalierRecord_AreaLoad = {}
	tCavalierRecord_AreaLoad["ActivityTime"] = "2016-04-21 00:00 2016-05-05 23:59"
	tCavalierRecord_AreaLoad["Function"] = CavalierRecord_MonsterDrop
	tCavalierRecord_AreaLoad["Area"] = {1,2,3,4,5,6,7,8,9}

------------------------------------------------NPC模块--------------------------------------------------
-- 19240	瓦尔基里
tNpcFace[4085] = 306
tNpcGossip[19240] = tNpcGossip[19240] or DefaultNpc:new{}
tNpcGossip[19240]["OptionHidden"] = 1
-- 活动前对白
tNpcGossip[19240]["Text1-1"] = {111,112,113,114}
tNpcGossip[19240]["Text111"] = tCavalierRecord_Text[19240]["Text111"]
tNpcGossip[19240]["Text112"] = tCavalierRecord_Text[19240]["Text112"]
tNpcGossip[19240]["Text113"] = tCavalierRecord_Text[19240]["Text113"]
tNpcGossip[19240]["Text114"] = tCavalierRecord_Text[19240]["Text114"]
tNpcGossip[19240]["tOption1-1"] = {1}
tNpcGossip[19240]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCavalierRecord_Cont["BeforeActivity"])
end
tNpcGossip[19240]["Option1"] = tCavalierRecord_Text[19240]["Option1"]

-- 活动中对白
-- 等级不满足
tNpcGossip[19240]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[19240]["Text121"] = tCavalierRecord_Text[19240]["Text121"]
tNpcGossip[19240]["Text122"] = tCavalierRecord_Text[19240]["Text122"]
tNpcGossip[19240]["Text123"] = tCavalierRecord_Text[19240]["Text123"]
tNpcGossip[19240]["Text124"] = tCavalierRecord_Text[19240]["Text124"]
tNpcGossip[19240]["Text125"] = tCavalierRecord_Text[19240]["Text125"]
tNpcGossip[19240]["tOption1-2"] = {6}
tNpcGossip[19240]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) and (not CavalierRecord_LevelJudgement())
end
tNpcGossip[19240]["Option6"] = tCavalierRecord_Text[19240]["Option6"]

-- 等级满足
tNpcGossip[19240]["Text1-3"] = {131,132,133,134}
tNpcGossip[19240]["Text131"] = tCavalierRecord_Text[19240]["Text131"]
tNpcGossip[19240]["Text132"] = tCavalierRecord_Text[19240]["Text132"]
tNpcGossip[19240]["Text133"] = tCavalierRecord_Text[19240]["Text133"]
tNpcGossip[19240]["Text134"] = tCavalierRecord_Text[19240]["Text134"]
tNpcGossip[19240]["tOption1-3"] = {2,3,4,5}
tNpcGossip[19240]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tCavalierRecord_Cont["Activity"]) and CavalierRecord_LevelJudgement()
end

tNpcGossip[19240]["Option2"] = tCavalierRecord_Text[19240]["Option2"]
tNpcGossip[19240]["OptionFunc2"]="CavalierRecord_GetShield</N>19240"
tNpcGossip[19240]["OptionChkFunc2"] = function ()
	local nEvent = tCavalierRecord_Stc["EventType"][1]
	local nType = tCavalierRecord_Stc["DataType"][2]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return false
	else
		return true
	end
end
tNpcGossip[19240]["Option3"] = tCavalierRecord_Text[19240]["Option3"]
tNpcGossip[19240]["OptionFunc3"]="CavalierRecord_ReGetShield</N>19240"
tNpcGossip[19240]["OptionChkFunc3"] = function ()
	local nEvent = tCavalierRecord_Stc["EventType"][1]
	local nType1 = tCavalierRecord_Stc["DataType"][2]
	local nType2 = tCavalierRecord_Stc["DataType"][3]	
	local nItemId = tCavalierRecord_Item["Shield"]
	if Task_ChkStcValue(nEvent,nType1,">",0) then
		if Task_ChkStcValue(nEvent,nType2,">=",1) then
			return false
		elseif not Item_ChkItem(nItemId) then
			return true
		else
			return false
		end
	else
		return false
	end
end
tNpcGossip[19240]["Option4"] = tCavalierRecord_Text[19240]["Option4"]
tNpcGossip[19240]["OptionPoint4"]="4-1"
tNpcGossip[19240]["Option5"] = tCavalierRecord_Text[19240]["Option5"]
tNpcGossip[19240]["OptionPoint5"]="5-1"
-- 活动后对白
tNpcGossip[19240]["Text1-4"] = {141,142}
tNpcGossip[19240]["Text141"] = tCavalierRecord_Text[19240]["Text141"]
tNpcGossip[19240]["Text142"] = tCavalierRecord_Text[19240]["Text142"]
tNpcGossip[19240]["tOption1-4"] = {4,7,8}
tNpcGossip[19240]["Option7"] = tCavalierRecord_Text[19240]["Option7"]
tNpcGossip[19240]["OptionFunc7"]="CavalierRecord_GetRankingReward</N>19240"
tNpcGossip[19240]["Option8"] = tCavalierRecord_Text[19240]["Option8"]

-- 接2：给我瓦尔基里之盾。
-- 失败，背包空间不足
tNpcGossip[19240]["Text2-1"] = {211}
tNpcGossip[19240]["Text211"] = tCavalierRecord_Text[19240]["Text211"]
tNpcGossip[19240]["tOption2-1"] = {211}
tNpcGossip[19240]["Option211"] = tCavalierRecord_Text[19240]["Option211"]
-- 成功
tNpcGossip[19240]["Text2-2"] = {221}
tNpcGossip[19240]["Text221"] = tCavalierRecord_Text[19240]["Text221"]
tNpcGossip[19240]["tOption2-2"] = {221}
tNpcGossip[19240]["Option221"] = tCavalierRecord_Text[19240]["Option221"]

-- 接3：补领瓦尔基里之盾
-- 失败，背包空间不足
tNpcGossip[19240]["Text3-1"] = {311}
tNpcGossip[19240]["Text311"] = tCavalierRecord_Text[19240]["Text311"]
tNpcGossip[19240]["tOption3-1"] = {311}
tNpcGossip[19240]["Option311"] = tCavalierRecord_Text[19240]["Option311"]
-- 成功
tNpcGossip[19240]["Text3-2"] = {321}
tNpcGossip[19240]["Text321"] = tCavalierRecord_Text[19240]["Text321"]
tNpcGossip[19240]["tOption3-2"] = {321}
tNpcGossip[19240]["Option321"] = tCavalierRecord_Text[19240]["Option321"]
	
--接4：查看贡献榜
tNpcGossip[19240]["Text4-1"] = {411,412,413,414,415,416,417,418,419,420,421,422,423,424,425}
tNpcGossip[19240]["Text411"] = tCavalierRecord_Text[19240]["Text411"]
tNpcGossip[19240]["Text412"] = tCavalierRecord_Text[19240]["Text412"]
tNpcGossip[19240]["Text413"] = tCavalierRecord_Text[19240]["Text413"]
tNpcGossip[19240]["Text414"] = tCavalierRecord_Text[19240]["Text414"]
tNpcGossip[19240]["Text415"] = tCavalierRecord_Text[19240]["Text415"]
tNpcGossip[19240]["Text416"] = tCavalierRecord_Text[19240]["Text416"]
tNpcGossip[19240]["Text417"] = tCavalierRecord_Text[19240]["Text417"]
tNpcGossip[19240]["Text418"] = tCavalierRecord_Text[19240]["Text418"]
tNpcGossip[19240]["Text419"] = tCavalierRecord_Text[19240]["Text419"]
tNpcGossip[19240]["Text420"] = tCavalierRecord_Text[19240]["Text420"]
tNpcGossip[19240]["Text421"] = tCavalierRecord_Text[19240]["Text421"]
tNpcGossip[19240]["Text422"] = tCavalierRecord_Text[19240]["Text422"]
tNpcGossip[19240]["Text423"] = tCavalierRecord_Text[19240]["Text423"]
tNpcGossip[19240]["Text424"] = tCavalierRecord_Text[19240]["Text424"]
tNpcGossip[19240]["Text425"] = tCavalierRecord_Text[19240]["Text425"]
tNpcGossip[19240]["tOption4-1"] = {412,411}
tNpcGossip[19240]["ChkFunc4-1"] = function ()
	local tRankUserData = {}
	-- 取排行榜玩家id，和贡献值
	local nIndex = 0
	for j = 1,2  do
		for i = 1,5 do
			local nGlobalId = tCavalierRecord_Reward["GlobalRank"][j]
			local nPlayerId = Get_SysDynaGlobalData(nGlobalId,i)
			local nScore = Get_SysDynaGlobalDataStr(nGlobalId,i)
			nIndex = nIndex +1
			tRankUserData[nIndex] = {}
			tRankUserData[nIndex][1] = nPlayerId
			tRankUserData[nIndex][2] = nScore == "" and 0 or tonumber(nScore)		
		end
	end
	
	-- 取排行榜玩家名字
	nIndex = 0
	for j = 1,2 do
		for i = 1,5 do 
			local nGlobalId = tCavalierRecord_Reward["GlobalRankName"][j]
			nIndex = nIndex + 1
			tRankUserData[nIndex][3] = Get_SysDynaGlobalDataStr(nGlobalId,i)
		end
	end
	local leftNum = 414
	for i = 1 ,10 do
		-- 贡献值
		local nScore = tRankUserData[i][2]
		-- 玩家名字
		local sUserName  = (tRankUserData[i][3] == "" or tRankUserData[i][3] == "null") and tCavalierRecord_Text["UserMiss"] or tRankUserData[i][3]
		local nUserNameLen = string.len(sUserName)
		for i=1,28 - nUserNameLen do
			sUserName = sUserName.." "
		end
		tNpcGossip[19240]["Text"..leftNum+i]=string.format(tCavalierRecord_Text[19240]["Text"..leftNum+i],sUserName,nScore)
	end
	return true
end
tNpcGossip[19240]["Option412"] = tCavalierRecord_Text[19240]["Option412"]
tNpcGossip[19240]["OptionPoint412"]="4-3"
tNpcGossip[19240]["Option411"] = tCavalierRecord_Text[19240]["Option411"]
tNpcGossip[19240]["OptionPoint411"]="1-3"
-- 接412：查看贡献排行奖励
tNpcGossip[19240]["Text4-3"] = {431,432,433,434,435,436}
tNpcGossip[19240]["Text431"] = tCavalierRecord_Text[19240]["Text431"]
tNpcGossip[19240]["Text432"] = tCavalierRecord_Text[19240]["Text432"]
tNpcGossip[19240]["Text433"] = tCavalierRecord_Text[19240]["Text433"]
tNpcGossip[19240]["Text434"] = tCavalierRecord_Text[19240]["Text434"]
tNpcGossip[19240]["Text435"] = tCavalierRecord_Text[19240]["Text435"]
tNpcGossip[19240]["Text436"] = tCavalierRecord_Text[19240]["Text436"]
tNpcGossip[19240]["tOption4-3"] = {431}
tNpcGossip[19240]["Option431"] = tCavalierRecord_Text[19240]["Option431"]
tNpcGossip[19240]["OptionPoint431"]="4-1"

-- 接5：跟我讲讲这个游戏怎么玩吧。
tNpcGossip[19240]["Text5-1"] = {511,512,513,514}
tNpcGossip[19240]["Text511"] = tCavalierRecord_Text[19240]["Text511"]
tNpcGossip[19240]["Text512"] = tCavalierRecord_Text[19240]["Text512"]
tNpcGossip[19240]["Text513"] = tCavalierRecord_Text[19240]["Text513"]
tNpcGossip[19240]["Text514"] = tCavalierRecord_Text[19240]["Text514"]
tNpcGossip[19240]["tOption5-1"] = {512,513,511}
tNpcGossip[19240]["Option511"] = tCavalierRecord_Text[19240]["Option511"]
tNpcGossip[19240]["OptionPoint511"]="1-3"
tNpcGossip[19240]["Option512"] = tCavalierRecord_Text[19240]["Option512"]
tNpcGossip[19240]["OptionPoint512"]="6-1"
tNpcGossip[19240]["Option513"] = tCavalierRecord_Text[19240]["Option513"]
tNpcGossip[19240]["OptionPoint513"]="6-2"

-- 接512：查看累计贡献奖励
tNpcGossip[19240]["Text6-1"] = {611,612,613,614,615,616,617,618,619}
tNpcGossip[19240]["Text611"] = tCavalierRecord_Text[19240]["Text611"]
tNpcGossip[19240]["Text612"] = tCavalierRecord_Text[19240]["Text612"]
tNpcGossip[19240]["Text613"] = tCavalierRecord_Text[19240]["Text613"]
tNpcGossip[19240]["Text614"] = tCavalierRecord_Text[19240]["Text614"]
tNpcGossip[19240]["Text615"] = tCavalierRecord_Text[19240]["Text615"]
tNpcGossip[19240]["Text616"] = tCavalierRecord_Text[19240]["Text616"]
tNpcGossip[19240]["Text617"] = tCavalierRecord_Text[19240]["Text617"]
tNpcGossip[19240]["Text618"] = tCavalierRecord_Text[19240]["Text618"]
tNpcGossip[19240]["Text619"] = tCavalierRecord_Text[19240]["Text619"]
tNpcGossip[19240]["tOption6-1"] = {611}
tNpcGossip[19240]["Option611"] = tCavalierRecord_Text[19240]["Option611"]
tNpcGossip[19240]["OptionPoint611"]="1-3"
-- 接513：查看集齐骑士奖励
tNpcGossip[19240]["Text6-2"] = {621}
tNpcGossip[19240]["Text621"] = tCavalierRecord_Text[19240]["Text621"]
tNpcGossip[19240]["tOption6-2"] = {611}

-- 接7：领取贡献排名奖励。
-- 成功
tNpcGossip[19240]["Text7-1"] = {711}
tNpcGossip[19240]["Text711"] = tCavalierRecord_Text[19240]["Text711"]
tNpcGossip[19240]["tOption7-1"] = {711}
tNpcGossip[19240]["Option711"] = tCavalierRecord_Text[19240]["Option711"]
-- 失败，背包空间不足
tNpcGossip[19240]["Text7-2"] = {721}
tNpcGossip[19240]["Text721"] = tCavalierRecord_Text[19240]["Text721"]
tNpcGossip[19240]["tOption7-2"] = {721}
tNpcGossip[19240]["Option721"] = tCavalierRecord_Text[19240]["Option721"]
-- 失败，不符合领奖条件
tNpcGossip[19240]["Text7-3"] = {731}
tNpcGossip[19240]["Text731"] = tCavalierRecord_Text[19240]["Text731"]
tNpcGossip[19240]["tOption7-3"] = {731}
tNpcGossip[19240]["Option731"] = tCavalierRecord_Text[19240]["Option731"]
-- 失败，已领奖
tNpcGossip[19240]["Text7-4"] = {741}
tNpcGossip[19240]["Text741"] = tCavalierRecord_Text[19240]["Text741"]
tNpcGossip[19240]["tOption7-4"] = {731}
-- 失败，已超过领奖期限
tNpcGossip[19240]["Text7-5"] = {751}
tNpcGossip[19240]["Text751"] = tCavalierRecord_Text[19240]["Text751"]
tNpcGossip[19240]["tOption7-5"] = {751}
tNpcGossip[19240]["Option751"] = tCavalierRecord_Text[19240]["Option751"]

------------------------------------------------itemtype模块--------------------------------------------------
-- 瓦尔基里的羽毛	3008938
tItem[3008938] = tItem[3008938] or {}
tItem[3008938]["Text1-1"] = {111,112}
tItem[3008938]["Text111"] = tCavalierRecord_Text[3008938]["Text111"]
tItem[3008938]["Text112"] = tCavalierRecord_Text[3008938]["Text112"]
tItem[3008938]["tOption1-1"] = {1}
tItem[3008938]["Option1"] = tCavalierRecord_Text[3008938]["Option1"]
tItem[3008938]["Function"] = function(nItemId,sItemName)
	tItem[3008938]["OptionFunc1"] = "CavalierRecord_OpenBackpackLetter</N>"..nItemId
	LinkItemGossipFunc_New(nItemId,"1-1")
end

-- 使用瓦尔基里之盾  3008954
tItem[3008954] = tItem[3008954] or {}
tItem[3008954]["Function"] = function(nItemId,sItemName)
	CavalierRecord_CheckItemTime(nItemId)

	CavalierRecord_UseShield(nItemId)
end
-- 接1：镶嵌灵魂碎片。
-- 失败，背包空间不足
tItem[3008954]["Text2-1"] = {211}
tItem[3008954]["Text211"] = tCavalierRecord_Text[3008954]["Text211"]
tItem[3008954]["tOption2-1"] = {5}
tItem[3008954]["Option5"] = tCavalierRecord_Text[3008954]["Option5"]
-- 失败，背包中没有对应的灵魂碎片
tItem[3008954]["Text2-2"] = {221}
tItem[3008954]["Text221"] = tCavalierRecord_Text[3008954]["Text221"]
tItem[3008954]["tOption2-1"] = {5}
-- 前10次
tItem[3008954]["Text2-3"] = {231}
tItem[3008954]["Text231"] = tCavalierRecord_Text[3008954]["Text231"]
tItem[3008954]["tOption2-3"] = {231,232}
tItem[3008954]["Option231"] = tCavalierRecord_Text[3008954]["Option231"]
tItem[3008954]["Option232"] = tCavalierRecord_Text[3008954]["Option232"]

-- 接2：刷新需求(20万银两)
-- 失败，银两不足
tItem[3008954]["Text3-1"] = {311}
tItem[3008954]["Text311"] = tCavalierRecord_Text[3008954]["Text311"]
tItem[3008954]["tOption3-1"] = {5}
-- 今天剩余刷新次数为0
tItem[3008954]["Text3-2"] = {321}
tItem[3008954]["Text321"] = tCavalierRecord_Text[3008954]["Text321"]
tItem[3008954]["tOption3-2"] = {5}

-- 接6：领取贡献值奖励。
-- 失败，背包空间不足
tItem[3008954]["Text6-1"] = {611}
tItem[3008954]["Text611"] = tCavalierRecord_Text[3008954]["Text611"]
tItem[3008954]["tOption6-1"] = {9}
tItem[3008954]["Option9"] = tCavalierRecord_Text[3008954]["Option9"]
tItem[3008954]["OptionFunc9"] = "CavalierRecord_UseShield</N>3008954"
-- 失败，贡献值不符合领奖条件
tItem[3008954]["Text6-2"] = {621}
tItem[3008954]["Text621"] = tCavalierRecord_Text[3008954]["Text621"]
tItem[3008954]["tOption6-2"] = {9}
-- 所有积分奖励都领取过了
tItem[3008954]["Text6-3"] = {631}
tItem[3008954]["Text631"] = tCavalierRecord_Text[3008954]["Text631"]
tItem[3008954]["tOption6-3"] = {9}
-- 当前积分奖励都领取过了
tItem[3008954]["Text6-4"] = {641}
tItem[3008954]["Text641"] = tCavalierRecord_Text[3008954]["Text641"]
tItem[3008954]["tOption6-4"] = {9}

-- 接8：领取集齐骑士奖励。
-- 失败，背包空间不足
tItem[3008954]["Text7-1"] = {711}
tItem[3008954]["Text711"] = tCavalierRecord_Text[3008954]["Text711"]
tItem[3008954]["tOption7-1"] = {10}
tItem[3008954]["Option10"] = tCavalierRecord_Text[3008954]["Option10"]
tItem[3008954]["OptionFunc10"] = "CavalierRecord_UseShield</N>3008954"
-- 失败，不符合领奖条件
tItem[3008954]["Text7-2"] = {721}
tItem[3008954]["Text721"] = tCavalierRecord_Text[3008954]["Text721"]
tItem[3008954]["tOption7-2"] = {10}
-- 失败，已领奖
tItem[3008954]["Text7-3"] = {731}
tItem[3008954]["Text731"] = tCavalierRecord_Text[3008954]["Text731"]
tItem[3008954]["tOption7-3"] = {10}


-- 勇气魂晶	3008939
tItem[3008939] = tItem[3008939] or {}
tItem[3008939]["Function"] = function(nItemId,sItemName)
	CavalierRecord_UseSoulStone(nItemId)
end
tItem[3008940] = tItem[3008939]	-- 荣耀魂晶	3008940
tItem[3008941] = tItem[3008939]	-- 信仰魂晶	3008941

-- Lancelot的灵魂碎片	3008942
tItem[3008942] = tItem[3008942] or {}
tItem[3008942]["Function"] = function(nItemId,sItemName)
	CavalierRecord_UseScrap(nItemId)
end
tItem[3008943] = tItem[3008942]	-- 3008943	Gawaine的灵魂碎片
tItem[3008944] = tItem[3008942]	-- 3008944	Geraint的灵魂碎片
tItem[3008945] = tItem[3008942]	-- 3008945	Gareth的灵魂碎片
tItem[3008946] = tItem[3008942]	-- 3008946	Galahad的灵魂碎片
tItem[3008947] = tItem[3008942]	-- 3008947	Gaheris的灵魂碎片
tItem[3008948] = tItem[3008942]	-- 3008948	Bedivere的灵魂碎片
tItem[3008949] = tItem[3008942]	-- 3008949	Percivale的灵魂碎片
tItem[3008950] = tItem[3008942]	-- 3008950	Tristan的灵魂碎片
tItem[3008951] = tItem[3008942]	-- 3008951 	 Lamorak的灵魂碎片
tItem[3008952] = tItem[3008942]	-- 3008952	Kay的灵魂碎片
tItem[3008953] = tItem[3008942]	-- 3008953	Bors de Ganis的灵魂碎片

---------------------------------------------所有片区怪掉落--------------------------------------------------
-- table.insert(tMonsterDrop_AreaLoad,tCavalierRecord_AreaLoad)

