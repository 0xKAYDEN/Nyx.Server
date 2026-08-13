------------------------------------------------------------------------------------
--Name:			160401[简体征服][活动脚本]2016儿童节之欢乐寻宝(5.30-6.3)
--Purpose:		2016儿童节活动之欢乐寻宝
--Creator:		许乐
--Created:		2016/04/01
------------------------------------------------------------------------------------
-- 前缀
-- ChildrenTreasure_
-----------------------------------------------------------
-- #【简体征服】2016儿童节活动
-- #复用2015儿童节活动
-- #调整log格式
-- #流程简单的活动参与记1[1]、完成记1[2]
-- #流程复杂的活动根据实际情况调整
-- #夺宝奇兵====许乐制作
-- #活动时间：5月30日-6月3日
-----------------------------------------------------------
--掩码说明：
-- #stc(124,34)		参与活动
-- #=1		接清风原任务
-- #=2		接枫溪林任务
-- #=3		接绝情谷任务
-- #=4		接大漠任务
-- #=5		接芦花荡任务
-- #=6		完成任务，领取奖励

-- #stc(124,35)	记录玩家领取的任务物品ID
-- #stc(124,36)	记录玩家采集的次数
-- #stc(124,37)	记录玩家使用任务物品的次数
-- #stc(124,38)	记录玩家使用任务捣乱物品的次数			
-----------------------------------------------------------
-- #npc:			16561-16576
-- #itemtype:	3003701-3003725
-- #stc:			12434-12438
-- #Logid:		12000340
---------------------------------------------------------------
local tChildrenTreasure_Cont = {}
	tChildrenTreasure_Cont["BeforeActivity"] = "2016-10-27 00:00 2017-05-31 23:59"
	tChildrenTreasure_Cont["Activity"] = "2017-06-01 00:00 2017-06-07 23:59"
	
	-- tChildrenTreasure_Cont["BeforeActivity"] = "2015-10-27 00:00 2016-04-05 23:59"
	-- tChildrenTreasure_Cont["Activity"] = "2016-04-06 00:00 2016-06-03 23:59"
	
	--玩家等级要求
	tChildrenTreasure_Cont["Metempsychosis"] = 0
	tChildrenTreasure_Cont["Level"] = 80
	
	tChildrenTreasure_Cont["Second"] = 5			--读条5s
	tChildrenTreasure_Cont["Action"] = 100		--读条action

local tChildrenTreasure_Npc = {}
	tChildrenTreasure_Npc["CellX"] = 275
	tChildrenTreasure_Npc["CellY"] = 360
	tChildrenTreasure_Npc["Mapid"] = 1002
	
	tChildrenTreasure_Npc[3003701] = {}
	tChildrenTreasure_Npc[3003701][1] = {233,476,1002,230,473,236,479}
	tChildrenTreasure_Npc[3003701][2] = {250,488,1002,247,485,253,491}
	tChildrenTreasure_Npc[3003701][3] = {219,505,1002,216,502,222,508}
	
	tChildrenTreasure_Npc[3003702] = {}
	tChildrenTreasure_Npc[3003702][1] = {259,252,1011,256,249,262,255}
	tChildrenTreasure_Npc[3003702][2] = {252,228,1011,249,225,255,231}
	tChildrenTreasure_Npc[3003702][3] = {235,193,1011,232,190,238,196}
	
	tChildrenTreasure_Npc[3003703] = {}
	tChildrenTreasure_Npc[3003703][1] = {560,524,1020,557,521,563,527}
	tChildrenTreasure_Npc[3003703][2] = {528,514,1020,525,511,531,517}
	tChildrenTreasure_Npc[3003703][3] = {544,482,1020,541,479,547,485}
	
	tChildrenTreasure_Npc[3003704] = {}
	tChildrenTreasure_Npc[3003704][1] = {302,435,1000,299,432,305,438}
	tChildrenTreasure_Npc[3003704][2] = {279,424,1000,276,421,282,427}
	tChildrenTreasure_Npc[3003704][3] = {270,453,1000,267,450,273,456}
	
	tChildrenTreasure_Npc[3003705] = {}
	tChildrenTreasure_Npc[3003705][1] = {793,617,1015,790,614,796,620}
	tChildrenTreasure_Npc[3003705][2] = {768,632,1015,765,629,771,635}
	tChildrenTreasure_Npc[3003705][3] = {717,620,1015,714,617,720,623}
	
local tChildrenTreasure_Stc = {}
	tChildrenTreasure_Stc["EventType"] = 124
	tChildrenTreasure_Stc["DataType"] = {}
	tChildrenTreasure_Stc["Data"] = {}
	-- stc(124,34)  表示参与活动的某个阶段
	tChildrenTreasure_Stc["DataType"][1] = 34
	tChildrenTreasure_Stc["Data"][3003701] = 1		-- 接清风原任务
	tChildrenTreasure_Stc["Data"][3003702] = 2		-- 接枫溪林任务
	tChildrenTreasure_Stc["Data"][3003703] = 3		-- 接绝情谷任务
	tChildrenTreasure_Stc["Data"][3003704] = 4		-- 接大漠任务
	tChildrenTreasure_Stc["Data"][3003705] = 5		-- 接芦花荡任务
	tChildrenTreasure_Stc["Data"]["Complete"] = 6	-- 完成任务，领取奖励
	-- stc(124,35)	记录玩家领取的任务物品ID
	tChildrenTreasure_Stc["DataType"][2] = 35
	-- stc(124,36)	记录玩家采集的次数
	tChildrenTreasure_Stc["DataType"][3] = 36
	-- stc(124,37)	记录玩家使用任务物品的次数
	tChildrenTreasure_Stc["DataType"][4] = 37
	-- stc(124,38)	记录玩家使用任务捣乱物品的次数			
	tChildrenTreasure_Stc["DataType"][5] = 38
	
local tChildrenTreasure_Item = {}
	tChildrenTreasure_Item["BagSpace_1"] = 1
	
	tChildrenTreasure_Item["TaskItem"] = {}
	tChildrenTreasure_Item["TaskItem"][1] = 3003701
	tChildrenTreasure_Item["TaskItem"][2] = 3003702
	tChildrenTreasure_Item["TaskItem"][3] = 3003703
	tChildrenTreasure_Item["TaskItem"][4] = 3003704
	tChildrenTreasure_Item["TaskItem"][5] = 3003705
	tChildrenTreasure_Item["TaskItem"][6] = 3003706
	tChildrenTreasure_Item["TaskItem"][7] = 3003707
	tChildrenTreasure_Item["TaskItem"][8] = 3003708
	tChildrenTreasure_Item["TaskItem"][9] = 3003709
	tChildrenTreasure_Item["TaskItem"][10] = 3003710
	tChildrenTreasure_Item["TaskItem"][11] = 3003711
	tChildrenTreasure_Item["TaskItem"][12] = 3003712
	tChildrenTreasure_Item["TaskItem"][13] = 3003713
	tChildrenTreasure_Item["TaskItem"][14] = 3003714
	tChildrenTreasure_Item["TaskItem"][15] = 3003715
	tChildrenTreasure_Item["TaskItem"][16] = 3003716
	tChildrenTreasure_Item["TaskItem"][17] = 3003717
	tChildrenTreasure_Item["TaskItem"][18] = 3003718
	tChildrenTreasure_Item["TaskItem"][19] = 3003719
	tChildrenTreasure_Item["TaskItem"][20] = 3003720
	-- 捣乱物品
	tChildrenTreasure_Item["TaskItem"][21] = 3003721
	tChildrenTreasure_Item["TaskItem"][22] = 3003722
	tChildrenTreasure_Item["TaskItem"][23] = 3003723
	tChildrenTreasure_Item["TaskItem"][24] = 3003724
	tChildrenTreasure_Item["TaskItem"][25] = 3003725

	--随机一个藏宝图
	tChildrenTreasure_Item["Map"] = {}
	tChildrenTreasure_Item["Map"][1] = {}
	tChildrenTreasure_Item["Map"][1]["ItemChanceSum"] = 10000
	
	tChildrenTreasure_Item["Map"][1][1] = {}
	tChildrenTreasure_Item["Map"][1][1]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Map"][1][1]["ItemChance"] = 2000
	tChildrenTreasure_Item["Map"][1][1]["Item_1"] = 3003701
	
	tChildrenTreasure_Item["Map"][1][2] = {}
	tChildrenTreasure_Item["Map"][1][2]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Map"][1][2]["ItemChance"] = 2000
	tChildrenTreasure_Item["Map"][1][2]["Item_1"] = 3003702
	
	tChildrenTreasure_Item["Map"][1][3] = {}
	tChildrenTreasure_Item["Map"][1][3]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Map"][1][3]["ItemChance"] = 2000
	tChildrenTreasure_Item["Map"][1][3]["Item_1"] = 3003703
	
	tChildrenTreasure_Item["Map"][1][4] = {}
	tChildrenTreasure_Item["Map"][1][4]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Map"][1][4]["ItemChance"] = 2000
	tChildrenTreasure_Item["Map"][1][4]["Item_1"] = 3003704
	
	tChildrenTreasure_Item["Map"][1][5] = {}
	tChildrenTreasure_Item["Map"][1][5]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Map"][1][5]["ItemChance"] = 2000
	tChildrenTreasure_Item["Map"][1][5]["Item_1"] = 3003705
	
	-- 随机一个任务物品
	tChildrenTreasure_Item["Task"] = {}
	tChildrenTreasure_Item["Task"][1] = {}
	tChildrenTreasure_Item["Task"][1]["ItemChanceSum"] = 15000

	tChildrenTreasure_Item["Task"][1][1] = {}
	tChildrenTreasure_Item["Task"][1][1]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][1]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][1]["Item_1"] = 3003706
	
	tChildrenTreasure_Item["Task"][1][2] = {}
	tChildrenTreasure_Item["Task"][1][2]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][2]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][2]["Item_1"] = 3003707
	
	tChildrenTreasure_Item["Task"][1][3] = {}
	tChildrenTreasure_Item["Task"][1][3]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][3]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][3]["Item_1"] = 3003708

	tChildrenTreasure_Item["Task"][1][4] = {}
	tChildrenTreasure_Item["Task"][1][4]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][4]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][4]["Item_1"] = 3003709
	
	tChildrenTreasure_Item["Task"][1][5] = {}
	tChildrenTreasure_Item["Task"][1][5]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][5]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][5]["Item_1"] = 3003710
	
	tChildrenTreasure_Item["Task"][1][6] = {}
	tChildrenTreasure_Item["Task"][1][6]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][6]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][6]["Item_1"] = 3003711
	
	tChildrenTreasure_Item["Task"][1][7] = {}
	tChildrenTreasure_Item["Task"][1][7]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][7]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][7]["Item_1"] = 3003712
	
	tChildrenTreasure_Item["Task"][1][8] = {}
	tChildrenTreasure_Item["Task"][1][8]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][8]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][8]["Item_1"] = 3003713
	
	tChildrenTreasure_Item["Task"][1][9] = {}
	tChildrenTreasure_Item["Task"][1][9]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][9]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][9]["Item_1"] = 3003714
	
	tChildrenTreasure_Item["Task"][1][10] = {}
	tChildrenTreasure_Item["Task"][1][10]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][10]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][10]["Item_1"] = 3003715
	
	tChildrenTreasure_Item["Task"][1][11] = {}
	tChildrenTreasure_Item["Task"][1][11]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][11]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][11]["Item_1"] = 3003716
	
	tChildrenTreasure_Item["Task"][1][12] = {}
	tChildrenTreasure_Item["Task"][1][12]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][12]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][12]["Item_1"] = 3003717
	
	tChildrenTreasure_Item["Task"][1][13] = {}
	tChildrenTreasure_Item["Task"][1][13]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][13]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][13]["Item_1"] = 3003718
	
	tChildrenTreasure_Item["Task"][1][14] = {}
	tChildrenTreasure_Item["Task"][1][14]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][14]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][14]["Item_1"] = 3003719
	
	tChildrenTreasure_Item["Task"][1][15] = {}
	tChildrenTreasure_Item["Task"][1][15]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][1][15]["ItemChance"] = 1000
	tChildrenTreasure_Item["Task"][1][15]["Item_1"] = 3003720
	
	-- 随机捣乱物品
	tChildrenTreasure_Item["Task"][2] = {}
	tChildrenTreasure_Item["Task"][2]["ItemChanceSum"] = 10000

	tChildrenTreasure_Item["Task"][2][1] = {}
	tChildrenTreasure_Item["Task"][2][1]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][2][1]["ItemChance"] = 2000
	tChildrenTreasure_Item["Task"][2][1]["Item_1"] = 3003721
	
	tChildrenTreasure_Item["Task"][2][2] = {}
	tChildrenTreasure_Item["Task"][2][2]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][2][2]["ItemChance"] = 2000
	tChildrenTreasure_Item["Task"][2][2]["Item_1"] = 3003722
	
	tChildrenTreasure_Item["Task"][2][3] = {}
	tChildrenTreasure_Item["Task"][2][3]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][2][3]["ItemChance"] = 2000
	tChildrenTreasure_Item["Task"][2][3]["Item_1"] = 3003723

	tChildrenTreasure_Item["Task"][2][4] = {}
	tChildrenTreasure_Item["Task"][2][4]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][2][4]["ItemChance"] = 2000
	tChildrenTreasure_Item["Task"][2][4]["Item_1"] = 3003724
	
	tChildrenTreasure_Item["Task"][2][5] = {}
	tChildrenTreasure_Item["Task"][2][5]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Task"][2][5]["ItemChance"] = 2000
	tChildrenTreasure_Item["Task"][2][5]["Item_1"] = 3003725
	
	-- 使用宝贝物品随机出现某种效果
	-- 3003706-3003710
	tChildrenTreasure_Item["Treasure_1"] = {}
	tChildrenTreasure_Item["Treasure_1"][1] = {}
	tChildrenTreasure_Item["Treasure_1"][1]["ItemChanceSum"] = 10000
	
	tChildrenTreasure_Item["Treasure_1"][1][1] = {}
	tChildrenTreasure_Item["Treasure_1"][1][1]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_1"][1][1]["ItemChance"] = 2000
	tChildrenTreasure_Item["Treasure_1"][1][1]["Item_1"] = 1
	tChildrenTreasure_Item["Treasure_1"][1][1]["Exp"] = 10
	tChildrenTreasure_Item["Treasure_1"][1][1]["Cul"] = 5
	
	tChildrenTreasure_Item["Treasure_1"][1][2] = {}
	tChildrenTreasure_Item["Treasure_1"][1][2]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_1"][1][2]["ItemChance"] = 2000
	tChildrenTreasure_Item["Treasure_1"][1][2]["Item_1"] = 2
	tChildrenTreasure_Item["Treasure_1"][1][2]["Exp"] = 30
	tChildrenTreasure_Item["Treasure_1"][1][2]["Cul"] = 15

	tChildrenTreasure_Item["Treasure_1"][1][3] = {}
	tChildrenTreasure_Item["Treasure_1"][1][3]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_1"][1][3]["ItemChance"] = 2000
	tChildrenTreasure_Item["Treasure_1"][1][3]["Item_1"] = 3
	tChildrenTreasure_Item["Treasure_1"][1][3]["Status"] = 55
	tChildrenTreasure_Item["Treasure_1"][1][3]["Power"] = 200
	tChildrenTreasure_Item["Treasure_1"][1][3]["Times"] = 1
	tChildrenTreasure_Item["Treasure_1"][1][3]["EndTime"] = 1
	tChildrenTreasure_Item["Treasure_1"][1][3]["Recordable"] = 0
	tChildrenTreasure_Item["Treasure_1"][1][3]["Secs"] = 1
	tChildrenTreasure_Item["Treasure_1"][1][3]["RemainTime"] = 1

	tChildrenTreasure_Item["Treasure_1"][1][4] = {}
	tChildrenTreasure_Item["Treasure_1"][1][4]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_1"][1][4]["ItemChance"] = 2000
	tChildrenTreasure_Item["Treasure_1"][1][4]["Item_1"] = 4
	tChildrenTreasure_Item["Treasure_1"][1][4]["Status"] = 55
	tChildrenTreasure_Item["Treasure_1"][1][4]["Power"] = 200
	tChildrenTreasure_Item["Treasure_1"][1][4]["Times"] = 1
	tChildrenTreasure_Item["Treasure_1"][1][4]["EndTime"] = 1
	tChildrenTreasure_Item["Treasure_1"][1][4]["Recordable"] = 0
	tChildrenTreasure_Item["Treasure_1"][1][4]["Secs"] = 3
	tChildrenTreasure_Item["Treasure_1"][1][4]["RemainTime"] = 3

	tChildrenTreasure_Item["Treasure_1"][1][5] = {}
	tChildrenTreasure_Item["Treasure_1"][1][5]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_1"][1][5]["ItemChance"] = 2000
	tChildrenTreasure_Item["Treasure_1"][1][5]["Item_1"] = 5

	-- 3003711-3003715
	tChildrenTreasure_Item["Treasure_2"] = {}
	tChildrenTreasure_Item["Treasure_2"][1] = {}
	tChildrenTreasure_Item["Treasure_2"][1]["ItemChanceSum"] = 10000
	
	tChildrenTreasure_Item["Treasure_2"][1][1] = {}
	tChildrenTreasure_Item["Treasure_2"][1][1]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_2"][1][1]["ItemChance"] = 5000
	tChildrenTreasure_Item["Treasure_2"][1][1]["Item_1"] = 1
	
	tChildrenTreasure_Item["Treasure_2"][1][2] = {}
	tChildrenTreasure_Item["Treasure_2"][1][2]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_2"][1][2]["ItemChance"] = 2500
	tChildrenTreasure_Item["Treasure_2"][1][2]["Item_1"] = 2
	tChildrenTreasure_Item["Treasure_2"][1][2]["Status"] = 55
	tChildrenTreasure_Item["Treasure_2"][1][2]["Power"] = 200
	tChildrenTreasure_Item["Treasure_2"][1][2]["Times"] = 1
	tChildrenTreasure_Item["Treasure_2"][1][2]["EndTime"] = 1
	tChildrenTreasure_Item["Treasure_2"][1][2]["Recordable"] = 0
	tChildrenTreasure_Item["Treasure_2"][1][2]["Secs"] = 5
	tChildrenTreasure_Item["Treasure_2"][1][2]["RemainTime"] = 5

	tChildrenTreasure_Item["Treasure_2"][1][3] = {}
	tChildrenTreasure_Item["Treasure_2"][1][3]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_2"][1][3]["ItemChance"] = 1500
	tChildrenTreasure_Item["Treasure_2"][1][3]["Item_1"] = 3
	tChildrenTreasure_Item["Treasure_2"][1][3]["Exp"] = 60
	tChildrenTreasure_Item["Treasure_2"][1][3]["Cul"] = 30

	tChildrenTreasure_Item["Treasure_2"][1][4] = {}
	tChildrenTreasure_Item["Treasure_2"][1][4]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_2"][1][4]["ItemChance"] = 500
	tChildrenTreasure_Item["Treasure_2"][1][4]["Item_1"] = 4
	tChildrenTreasure_Item["Treasure_2"][1][4]["BlessTime"] = 24

	tChildrenTreasure_Item["Treasure_2"][1][5] = {}
	tChildrenTreasure_Item["Treasure_2"][1][5]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_2"][1][5]["ItemChance"] = 500
	tChildrenTreasure_Item["Treasure_2"][1][5]["Item_1"] = 5
	tChildrenTreasure_Item["Treasure_2"][1][5]["Status"] = 55
	tChildrenTreasure_Item["Treasure_2"][1][5]["Power"] = 200
	tChildrenTreasure_Item["Treasure_2"][1][5]["Times"] = 1
	tChildrenTreasure_Item["Treasure_2"][1][5]["EndTime"] = 1
	tChildrenTreasure_Item["Treasure_2"][1][5]["Recordable"] = 0
	tChildrenTreasure_Item["Treasure_2"][1][5]["Secs"] = 1
	tChildrenTreasure_Item["Treasure_2"][1][5]["RemainTime"] = 1
	
	-- 3003716-3003720
	tChildrenTreasure_Item["Treasure_3"] = {}
	tChildrenTreasure_Item["Treasure_3"][1] = {}
	tChildrenTreasure_Item["Treasure_3"][1]["ItemChanceSum"] = 10000
	
	tChildrenTreasure_Item["Treasure_3"][1][1] = {}
	tChildrenTreasure_Item["Treasure_3"][1][1]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_3"][1][1]["ItemChance"] = 5000
	tChildrenTreasure_Item["Treasure_3"][1][1]["Item_1"] = 1
	
	tChildrenTreasure_Item["Treasure_3"][1][2] = {}
	tChildrenTreasure_Item["Treasure_3"][1][2]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_3"][1][2]["ItemChance"] = 1800
	tChildrenTreasure_Item["Treasure_3"][1][2]["Item_1"] = 2
	tChildrenTreasure_Item["Treasure_3"][1][2]["DelLife"] = 50
	
	tChildrenTreasure_Item["Treasure_3"][1][3] = {}
	tChildrenTreasure_Item["Treasure_3"][1][3]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_3"][1][3]["ItemChance"] = 1500
	tChildrenTreasure_Item["Treasure_3"][1][3]["Item_1"] = 3
	tChildrenTreasure_Item["Treasure_3"][1][3]["Exp"] = 120
	tChildrenTreasure_Item["Treasure_3"][1][3]["Cul"] = 60

	tChildrenTreasure_Item["Treasure_3"][1][4] = {}
	tChildrenTreasure_Item["Treasure_3"][1][4]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_3"][1][4]["ItemChance"] = 500
	tChildrenTreasure_Item["Treasure_3"][1][4]["Item_1"] = 4
	tChildrenTreasure_Item["Treasure_3"][1][4]["Exp"] = 60
	tChildrenTreasure_Item["Treasure_3"][1][4]["Cul"] = 30
	tChildrenTreasure_Item["Treasure_3"][1][4]["BlessTime"] = 24
	
	tChildrenTreasure_Item["Treasure_3"][1][5] = {}
	tChildrenTreasure_Item["Treasure_3"][1][5]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Treasure_3"][1][5]["ItemChance"] = 1200
	tChildrenTreasure_Item["Treasure_3"][1][5]["Item_1"] = 5
	tChildrenTreasure_Item["Treasure_3"][1][5]["DelLife"] = 50
	tChildrenTreasure_Item["Treasure_3"][1][5]["Status"] = 55
	tChildrenTreasure_Item["Treasure_3"][1][5]["Power"] = 200
	tChildrenTreasure_Item["Treasure_3"][1][5]["Times"] = 1
	tChildrenTreasure_Item["Treasure_3"][1][5]["EndTime"] = 1
	tChildrenTreasure_Item["Treasure_3"][1][5]["Recordable"] = 0
	tChildrenTreasure_Item["Treasure_3"][1][5]["Secs"] = 5
	tChildrenTreasure_Item["Treasure_3"][1][5]["RemainTime"] = 5

	
	-- 使用捣乱物品随机出现某种效果
	tChildrenTreasure_Item["Trick"] = {}
	tChildrenTreasure_Item["Trick"][1] = {}
	tChildrenTreasure_Item["Trick"][1]["ItemChanceSum"] = 10000
	
	tChildrenTreasure_Item["Trick"][1][1] = {}
	tChildrenTreasure_Item["Trick"][1][1]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Trick"][1][1]["ItemChance"] = 5000
	tChildrenTreasure_Item["Trick"][1][1]["Item_1"] = 1
	tChildrenTreasure_Item["Trick"][1][1]["MagicType"] = 11520
	tChildrenTreasure_Item["Trick"][1][1]["MonsterType"] = 7026
	tChildrenTreasure_Item["Trick"][1][1]["Secs"] = 60
	
	tChildrenTreasure_Item["Trick"][1][2] = {}
	tChildrenTreasure_Item["Trick"][1][2]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Trick"][1][2]["ItemChance"] = 3000
	tChildrenTreasure_Item["Trick"][1][2]["Item_1"] = 2
	tChildrenTreasure_Item["Trick"][1][2]["Status"] = 55
	tChildrenTreasure_Item["Trick"][1][2]["Power"] = 200
	tChildrenTreasure_Item["Trick"][1][2]["Times"] = 1
	tChildrenTreasure_Item["Trick"][1][2]["EndTime"] = 1
	tChildrenTreasure_Item["Trick"][1][2]["Recordable"] = 0
	tChildrenTreasure_Item["Trick"][1][2]["Secs"] = 5
	tChildrenTreasure_Item["Trick"][1][2]["RemainTime"] = 5

	tChildrenTreasure_Item["Trick"][1][3] = {}
	tChildrenTreasure_Item["Trick"][1][3]["RandomItemChanceType"] = 2
	tChildrenTreasure_Item["Trick"][1][3]["ItemChance"] = 2000
	tChildrenTreasure_Item["Trick"][1][3]["Item_1"] = 3
	tChildrenTreasure_Item["Trick"][1][3]["Exp"] = 60
	tChildrenTreasure_Item["Trick"][1][3]["Cul"] = 30

local tChildrenTreasure_Treasure = {}
	tChildrenTreasure_Treasure[16562] = 3003701
	tChildrenTreasure_Treasure[16563] = 3003701
	tChildrenTreasure_Treasure[16564] = 3003701
	tChildrenTreasure_Treasure[16565] = 3003702
	tChildrenTreasure_Treasure[16566] = 3003702
	tChildrenTreasure_Treasure[16567] = 3003702
	tChildrenTreasure_Treasure[16568] = 3003703
	tChildrenTreasure_Treasure[16569] = 3003703
	tChildrenTreasure_Treasure[16570] = 3003703
	tChildrenTreasure_Treasure[16571] = 3003704
	tChildrenTreasure_Treasure[16572] = 3003704
	tChildrenTreasure_Treasure[16573] = 3003704
	tChildrenTreasure_Treasure[16574] = 3003705
	tChildrenTreasure_Treasure[16575] = 3003705
	tChildrenTreasure_Treasure[16576] = 3003705

local tChildrenTreasure_Log = {}
	tChildrenTreasure_Log["DelItem"] = "0,0,%d,1,12000340,2,0,0"			--过期删除物品
	tChildrenTreasure_Log["GetMapItem"] = "0,0,0,0,12000340,1[1],%d,1"		-- 参与活动得到藏宝图
	tChildrenTreasure_Log["HandInItem"] = "0,0,%d,1,12000340,1[2],0,0"		-- 上交宝贝，获得奖励
	tChildrenTreasure_Log["DigItem"] = "0,0,0,0,12000340,1[2],%d,1"		-- 挖掘到某个物品
	
	tChildrenTreasure_Log["Exp"] = "0,0,%d,1,12000340,2,4,%d"		-- 获得分钟经验奖励
	tChildrenTreasure_Log["Cul"] = "0,0,%d,1,12000340,2,6,%d"		-- 获得修行值奖励
	tChildrenTreasure_Log["Bless"] = "0,0,%d,1,12000340,2,5,24"		-- 获得祝福时间
	
	tChildrenTreasure_Log["ExpBless"] = "0,0,%d,1,12000340,2,5[4],24[60]"		-- 获得分钟经验与祝福奖励
	tChildrenTreasure_Log["CulBless"] = "0,0,%d,1,12000340,2,5[6],24[30]"		-- 获得修行值与祝福奖励
	
	tChildrenTreasure_Log["LogId"] = 12000340
	tChildrenTreasure_Log["FestivalId"] = 3285
	
local tChildrenTreasure_Effect = {}
	tChildrenTreasure_Effect[1] = "self"
	tChildrenTreasure_Effect[2] = "CircleUp3"
	tChildrenTreasure_Effect[3] = "isallyf_dis"
	tChildrenTreasure_Effect[4] = "ssch_wlhd_fir"
	tChildrenTreasure_Effect[5] = "pk-Boos"
	
------------------------------------------------逻辑部分-------------------------------------------------
--玩家等级判断
function ChildrenTreasure_LevelJudgement()
	local nLevel = tChildrenTreasure_Cont["Level"]
	local nMete = tChildrenTreasure_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 参加寻宝活动
function ChildrenTreasure_ParticipateIn(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	-- 判断等级
	if not ChildrenTreasure_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	-- 判断掩码
	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][1]
	local nComplete = tChildrenTreasure_Stc["Data"]["Complete"]
	
	if Task_ChkStcValue(nEvent,nType,">",0) then
		-- 隔天重置
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		elseif Task_ChkStcValue(nEvent,nType,">=",nComplete) then
			-- 已领奖
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		else
			-- 当天已接过任务提示
			LinkNpcGossipFunc_New(nNpcId,"2-5")
			return
		end
	end
	
	-- 删除任务物品
	for i,v in pairs(tChildrenTreasure_Item["TaskItem"]) do
		if Item_ChkItem(v) and Item_DelAllItemByType(v) then
		end
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 随机一个藏宝图
	local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Map"],1)
	local nMapItem = tAward[1]["tAward"][1]["Item_1"]
	
	-- 设置掩码
	local nData = tChildrenTreasure_Stc["Data"][nMapItem]
	Task_SetStatistic(nEvent,nType,nData,1,0)
	Task_SetStcTimestamp(nEvent,nType,0,0)
	-- 重置玩家采集的次数
	local nTimeType = tChildrenTreasure_Stc["DataType"][3]
	Task_SetStatistic(nEvent,nTimeType,0,1,0)
	Task_SetStcTimestamp(nEvent,nTimeType,0,0)
	
	Item_AddNewItem(nMapItem,"")
	Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["GetMapItem"],nMapItem))
	
	-- 随机一个任务物品
	local nFlag,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Task"],1)
	local nItemId = tAward[1]["tAward"][1]["Item_1"]
	local nTaskType = tChildrenTreasure_Stc["DataType"][2]
	Task_SetStatistic(nEvent,nTaskType,nItemId,1,0)
	Task_SetStcTimestamp(nEvent,nTaskType,0,0)
	
	local sName = tChildrenTreasure_Text["Name"][nMapItem]
	local sMapName = tChildrenTreasure_Text["Map"][nMapItem]
	local sItemName = tChildrenTreasure_Text["Name"][nItemId]
	Sys_MsgBox(string.format(tChildrenTreasure_Text[nNpcId]["Text241"],sName,sMapName,sItemName))
end

-- 补领藏宝图
function ChildrenTreasure_ReGetMap(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	-- 判断等级
	if not ChildrenTreasure_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][1]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nComplete = tChildrenTreasure_Stc["Data"]["Complete"]
	
	if Task_ChkStcValue(nEvent,nType,">=",1) and Task_ChkStcValue(nEvent,nType,"<=",5) then
		-- 判断背包空间
		if not User_CheckLeftSpace(1) then
			LinkNpcGossipFunc_New(nNpcId,"3-1")
			return
		end
		
		local nMapItem = tChildrenTreasure_Item["TaskItem"][nData]
		if Item_ChkItem(nMapItem) then
			LinkNpcGossipFunc_New(nNpcId,"3-2")
			return		
		else
			Item_AddNewItem(nMapItem,"")
			Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["GetMapItem"],nMapItem))
			local sName = tChildrenTreasure_Text["Name"][nMapItem]
			local sMap = tChildrenTreasure_Text["Map"][nMapItem]
			Sys_MsgBox(string.format(tChildrenTreasure_Text["GetMap"],sName,sMap))
			LinkNpcGossipFunc_New(nNpcId,"3-3")
		end
	end
end

-- 上交宝贝
function ChildrenTreasure_HandInItem(nNpcId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end

	-- 判断等级
	if not ChildrenTreasure_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][1]
	local nComplete = tChildrenTreasure_Stc["Data"]["Complete"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nMapItem = tChildrenTreasure_Item["TaskItem"][nData]

	local nTaskType = tChildrenTreasure_Stc["DataType"][2]
	local nItemId = Get_UserStatisticValue(nEvent,nTaskType)
	if not Item_ChkItem(nItemId) then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
	-- 上交宝贝，获得奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		Task_SetStatistic(nEvent,nType,nComplete,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		
		local nTimeType = tChildrenTreasure_Stc["DataType"][3]
		Task_SetStatistic(nEvent,nTimeType,0,1,0)
		Task_SetStcTimestamp(nEvent,nTimeType,0,0)

		Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["HandInItem"],nItemId))
		FestivalGeneralPackage_GetGift(tChildrenTreasure_Log["FestivalId"],tChildrenTreasure_Log["LogId"])
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		if Item_ChkItem(nMapItem) and Item_DelItem(nMapItem) then
		end
	end
end

-- 触发神秘宝藏（npc）
function ChildrenTreasure_LoadTreasure()
	local nNpcId = Get_NpcId()
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		return
	end

	-- 判断等级
	if not ChildrenTreasure_LevelJudgement() then
		return
	end

	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][1]
	local nComplete = tChildrenTreasure_Stc["Data"]["Complete"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	local nMapItem = tChildrenTreasure_Item["TaskItem"][nData]

	local nTaskType = tChildrenTreasure_Stc["DataType"][2]
	local nItemId = Get_UserStatisticValue(nEvent,nTaskType)

	-- 判断是否有任务
	if not Task_ChkStcValue(nEvent,nType,">=",1) then
		return
	end
	
	-- 判断是否完成任务
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		return
	end
	
	-- 玩家当前所在地图不在对应藏宝图地图中
	local nMapId = tChildrenTreasure_Npc[nMapItem][1][3]
	local sMapName = tChildrenTreasure_Text["Map"][nMapItem]
	local nUserMapId = Get_UserMapId()
	if nUserMapId ~= nMapId then
		User_TalkChannel2005(string.format(tChildrenTreasure_Text["WrongMap"],sMapName))
		return
	end
	
	-- 判断cd时间
	local nTimeType = tChildrenTreasure_Stc["DataType"][3]
	if not Task_StcInterval(nEvent,nTimeType,10,0) then
		Sys_MsgBox(tChildrenTreasure_Text["TimeOut"])
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tChildrenTreasure_Text["DigFull"])
		return
	end
	
	-- 挖掘宝贝
	local nSecs = tChildrenTreasure_Cont["Second"]
	local nActionId = tChildrenTreasure_Cont["Action"]
	local sContent = tChildrenTreasure_Text["Digging"]
	User_SetExplore(nSecs,sContent,nActionId,"ChildrenTreasure_Digging</N>"..nNpcId.."</N>"..nMapItem.."</N>"..nItemId,"</F>ChildrenTreasure_DiggingFail")
end

-- 挖掘触发
function ChildrenTreasure_Digging(nNpcId,nMapItem,nItemId,nUserId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		return
	end

	-- 判断背包空间
	if not User_CheckLeftSpace(1,nUserId) then
		Sys_MsgBox(tChildrenTreasure_Text["DigFull"],"NULL","NULL",nUserId)
		return
	end

	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nTimeType = tChildrenTreasure_Stc["DataType"][3]
	Task_AddStatistic(nEvent,nTimeType,1,1,nUserId)
	Task_SetStcTimestamp(nEvent,nTimeType,0,nUserId)

	local nCheck = tChildrenTreasure_Treasure[nNpcId]
	if nCheck ~= nMapItem then
		Sys_MsgBox(tChildrenTreasure_Text["FindNothing"],"NULL","NULL",nUserId)
		return
	end
	
	if nCheck == nMapItem then
		local nDigItem = 0
		
		--保底第六次肯定能获得需要道具（增大任务完成概率）
		if Task_ChkStcValue(nEvent,nTimeType,"==",6,nUserId) then
			nDigItem = nItemId
		else
			local nRand = math.random(1,2)
			local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Task"],nRand)
			nDigItem = tAward[1]["tAward"][1]["Item_1"]
		end
		
		--if not Task_ChkStcValue(nEvent,nTimeType,">=",10) then
		--	-- 一半概率出现随机产生捣乱物品
		--	local nRand = math.random(1,2)
		--	local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Task"],nRand)
		--	nDigItem = tAward[1]["tAward"][1]["Item_1"]
		--else
		--	local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Task"],1)
		--	nDigItem = tAward[1]["tAward"][1]["Item_1"]
		--end
		
		Item_AddNewItem(nDigItem,"",nUserId)
		Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["DigItem"],nDigItem),nUserId)
		local str = tChildrenTreasure_Text["Name"][nDigItem]
		if nDigItem == nItemId then		-- 挖到宝贝
			Sys_MsgBox(string.format(tChildrenTreasure_Text["FindRightItem"],str),"ChildrenTreasure_FindNpc</N>16561","NULL",nUserId)
		elseif nDigItem >= 3003721 and nDigItem <= 3003725 then  -- 捣乱物品
			Sys_MsgBox(string.format(tChildrenTreasure_Text["TrickItem"],str),"NULL","NULL",nUserId)
		else		-- 其他非宝贝物品
			Sys_MsgBox(tChildrenTreasure_Text["FindOtherItem"],"NULL","NULL",nUserId)
		end
	end
end

-- 挖掘失败
function ChildrenTreasure_DiggingFail(nUserId)
	Sys_MsgBox(tChildrenTreasure_Text["DigFail"],"NULL","NULL",nUserId)
end

-- 寻路到npc
function ChildrenTreasure_FindNpc(nNpcId)
	local nPosX = tChildrenTreasure_Npc["CellX"]
	local nPosY = tChildrenTreasure_Npc["CellY"]
	local nMapId = tChildrenTreasure_Npc["Mapid"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
end

-------------------------------------------使用物品逻辑----------------------------------------------------------
-- 使用藏宝地图
function ChildrenTreasure_UseMap(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		Sys_MsgBox(tChildrenTreasure_Text["FestivalOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["DelItem"],nItemId))
		end
		return
	end
	
	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nItemType = tChildrenTreasure_Stc["DataType"][2]
	local nData = Get_UserStatisticValue(nEvent,nItemType)
	local sName = tChildrenTreasure_Text["Name"][nData]
	local sMap = tChildrenTreasure_Text["Map"][nItemId]
	
	Sys_DialogText(string.format(tChildrenTreasure_Text[3003701]["Text111"],sName))
	Sys_DialogText(tChildrenTreasure_Text[3003701]["Text112"])
	Sys_DialogOption(string.format(tChildrenTreasure_Text[3003701]["Option1"],sMap),"</F>ChildrenTreasure_FindTreasure</N>"..nItemId.."</N>"..nData.."</N>1")
	Sys_DialogOption(string.format(tChildrenTreasure_Text[3003701]["Option2"],sMap),"</F>ChildrenTreasure_FindTreasure</N>"..nItemId.."</N>"..nData.."</N>2")
	Sys_DialogOption(string.format(tChildrenTreasure_Text[3003701]["Option3"],sMap),"</F>ChildrenTreasure_FindTreasure</N>"..nItemId.."</N>"..nData.."</N>3")
	Sys_DialogOption(tChildrenTreasure_Text[3003701]["Option4"],"</F>NULL")
	Sys_DialogEnd()
end

-- 寻路到宝藏的位置
function ChildrenTreasure_FindTreasure(nItemId,nFindItem,nChoose)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		Sys_MsgBox(tChildrenTreasure_Text["FestivalOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["DelItem"],nItemId))
		end
		return
	end

	local nUserId = Get_UserId()
	local nMapId = tChildrenTreasure_Npc[nItemId][nChoose][3]
	local nCellX = tChildrenTreasure_Npc[nItemId][nChoose][1]
	local nCellY = tChildrenTreasure_Npc[nItemId][nChoose][2]
	
	local nPosX_1 = tChildrenTreasure_Npc[nItemId][nChoose][4]
	local nPosY_1 = tChildrenTreasure_Npc[nItemId][nChoose][5]
	
	local nPosX_2 = tChildrenTreasure_Npc[nItemId][nChoose][6]
	local nPosY_2 = tChildrenTreasure_Npc[nItemId][nChoose][7]
	
	local nUserMap = Get_UserMapId(nUserId)
	local nUserPosX = Get_UserPositionX(nUserId)
	local nUserPosY = Get_UserPositionY(nUserId)
	
	-- if nUserMap == nMapId then
		-- if nUserPosX >= nPosX_1 and nUserPosX <= nPosX_2 and nUserPosY >= nPosY_1 and nUserPosY <= nPosY_2 then
			Sys_GotoSomeWhere(nCellX,nCellY,nMapId)
		-- end
	-- end
end

-- 使用任务物品
function ChildrenTreasure_UseItem(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		Sys_MsgBox(tChildrenTreasure_Text["FestivalOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["DelItem"],nItemId))
		end
		return
	end
	
	Sys_DialogText(tChildrenTreasure_Text[3003706]["Text111"])
	Sys_DialogText(tChildrenTreasure_Text[3003706]["Text112"])
	Sys_DialogOption(tChildrenTreasure_Text[3003706]["Option1"],"</F>ChildrenTreasure_UseTreasure</N>"..nItemId)
	Sys_DialogOption(tChildrenTreasure_Text[3003706]["Option2"],"</F>NULL")
	Sys_DialogEnd()
end

-- 使用宝贝选项
function ChildrenTreasure_UseTreasure(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		Sys_MsgBox(tChildrenTreasure_Text["FestivalOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["DelItem"],nItemId))
		end
		return
	end

	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][4]
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		elseif Task_ChkStcValue(nEvent,nType,">=",10) then
			Sys_MsgBox(tChildrenTreasure_Text["Fail3"])
			return
		else
			Task_AddStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
		
		local nUserId = Get_UserId()
		local nLevel = Get_UserLevel(nUserId)
		local sName = tChildrenTreasure_Text["Name"][nItemId]

		if nItemId >= 3003706 and nItemId <= 3003710 then
			local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Treasure_1"],1)
			local nChoose = tAward[1]["tAward"][1]["Item_1"]
			
			if nChoose == 1 or nChoose == 2 then
				if nLevel < G_User_MaxLev then
					-- 分钟经验
					local nAddExp = tAward[1]["tAward"][1]["Exp"]
					User_AddExpTime(nAddExp,nUserId)
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Exp"],nItemId,nAddExp))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["Exp"],sName,nAddExp))
				else
					-- 修行值
					local nAddCul = tAward[1]["tAward"][1]["Cul"]
					User_AddCultivation(nAddCul,nUserId)
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Cul"],nItemId,nAddCul))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["Cul"],sName,nAddCul))
				end
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[4])
				
			elseif nChoose == 3 or nChoose == 4 then
				-- 眩晕
				local nStatus = tAward[1]["tAward"][1]["Status"]
				local nPower = tAward[1]["tAward"][1]["Power"]
				local nTimes = tAward[1]["tAward"][1]["Times"]
				local nunEndTime = tAward[1]["tAward"][1]["EndTime"]
				local nucRecordable = tAward[1]["tAward"][1]["Recordable"]
				local nSecs = tAward[1]["tAward"][1]["Secs"]
				local nunRemainTime = tAward[1]["tAward"][1]["RemainTime"]
				User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nUserId)
				Sys_MsgBox(string.format(tChildrenTreasure_Text["Fail1"],sName))
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[3])
				
			elseif nChoose == 5 then
				Sys_MsgBox(tChildrenTreasure_Text["Fail2"])
			end

		elseif nItemId >= 3003711 and nItemId <= 3003715 then
			local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Treasure_2"],1)
			local nChoose = tAward[1]["tAward"][1]["Item_1"]

			if nChoose == 1 then
				Sys_MsgBox(tChildrenTreasure_Text["Fail2"])
				
			elseif nChoose == 2 or nChoose == 5 then
				-- 眩晕
				local nStatus = tAward[1]["tAward"][1]["Status"]
				local nPower = tAward[1]["tAward"][1]["Power"]
				local nTimes = tAward[1]["tAward"][1]["Times"]
				local nunEndTime = tAward[1]["tAward"][1]["EndTime"]
				local nucRecordable = tAward[1]["tAward"][1]["Recordable"]
				local nSecs = tAward[1]["tAward"][1]["Secs"]
				local nunRemainTime = tAward[1]["tAward"][1]["RemainTime"]
				User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nUserId)
				Sys_MsgBox(string.format(tChildrenTreasure_Text["Fail1"],sName))
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[3])
				
			elseif nChoose == 3 then
				if nLevel < G_User_MaxLev then
					-- 分钟经验
					local nAddExp = tAward[1]["tAward"][1]["Exp"]
					User_AddExpTime(nAddExp,nUserId)
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Exp"],nItemId,nAddExp))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["Exp"],sName,nAddExp))
				else
					-- 修行值
					local nAddCul = tAward[1]["tAward"][1]["Cul"]
					User_AddCultivation(nAddCul,nUserId)
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Cul"],nItemId,nAddCul))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["Cul"],sName,nAddCul))
				end
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[4])
				
			elseif nChoose == 4 then
				-- 祝福时间
				local nAddBless = tAward[1]["tAward"][1]["BlessTime"]
				User_AddBless(nAddBless,nUserId)
				Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Bless"],nItemId))
				Sys_MsgBox(string.format(tChildrenTreasure_Text["Bless"],sName))
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[4])
			end

		elseif nItemId >= 3003716 and nItemId <= 3003720 then
			local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Treasure_3"],1)
			local nChoose = tAward[1]["tAward"][1]["Item_1"]
			
			if nChoose == 1 then
				Sys_MsgBox(tChildrenTreasure_Text["Fail2"])
				
			elseif nChoose == 2 then
				local nDelLife = tAward[1]["tAward"][1]["DelLife"]
				User_DecLifePercent(nDelLife,1,nUserId)
				Sys_MsgBox(string.format(tChildrenTreasure_Text["DelLife"],sName))
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[5])

			elseif nChoose == 3 then
				if nLevel < G_User_MaxLev then
					-- 分钟经验
					local nAddExp = tAward[1]["tAward"][1]["Exp"]
					User_AddExpTime(nAddExp,nUserId)
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Exp"],nItemId,nAddExp))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["Exp"],sName,nAddExp))
				else
					-- 修行值
					local nAddCul = tAward[1]["tAward"][1]["Cul"]
					User_AddCultivation(nAddCul,nUserId)
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Cul"],nItemId,nAddCul))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["Cul"],sName,nAddCul))
				end
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[4])
			
			elseif nChoose == 5 then
				-- 眩晕
				local nDelLife = tAward[1]["tAward"][1]["DelLife"]
				local nStatus = tAward[1]["tAward"][1]["Status"]
				local nPower = tAward[1]["tAward"][1]["Power"]
				local nTimes = tAward[1]["tAward"][1]["Times"]
				local nunEndTime = tAward[1]["tAward"][1]["EndTime"]
				local nucRecordable = tAward[1]["tAward"][1]["Recordable"]
				local nSecs = tAward[1]["tAward"][1]["Secs"]
				local nunRemainTime = tAward[1]["tAward"][1]["RemainTime"]
				-- 减少生命值
				User_DecLifePercent(nDelLife,1,nUserId)
				User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nUserId)
				Sys_MsgBox(string.format(tChildrenTreasure_Text["LifeAndFail"],sName))
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[5])
				
			elseif nChoose == 4 then
				local nAddBless = tAward[1]["tAward"][1]["BlessTime"]
				User_AddBless(nAddBless,nUserId)
				if nLevel < G_User_MaxLev then
					-- 分钟经验
					local nAddExp = tAward[1]["tAward"][1]["Exp"]
					User_AddExpTime(nAddExp,nUserId)
					
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["ExpBless"],nItemId))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["ExpBless"],sName,nAddExp))
				else
					-- 修行值
					local nAddCul = tAward[1]["tAward"][1]["Cul"]
					User_AddCultivation(nAddCul,nUserId)
					Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["CulBless"],nItemId))
					Sys_MsgBox(string.format(tChildrenTreasure_Text["CulBless"],sName,nAddCul))
				end
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[4])
			end
		end
	end
end

-- 使用捣乱物品
function ChildrenTreasure_UseTrickItem(nItemId)
	-- 判断时间
	if not Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"]) then
		Sys_MsgBox(tChildrenTreasure_Text["FestivalOver"])
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["DelItem"],nItemId))
		end
		return
	end

	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][5]
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		elseif Task_ChkStcValue(nEvent,nType,">=",10) then
			Sys_MsgBox(tChildrenTreasure_Text["Toy5"])
			return
		else
			Task_AddStatistic(nEvent,nType,1,1,0)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
		
		local nFlat,tAward = Probabil_RandomAward(tChildrenTreasure_Item["Trick"],1)
		local nChoose = tAward[1]["tAward"][1]["Item_1"]
		local sName = tChildrenTreasure_Text["Name"][nItemId]
		local nUserId = Get_UserId()

		if nChoose == 1 then
			-- 变身
			local nMagicType = tAward[1]["tAward"][1]["MagicType"]
			local nMonsType = tAward[1]["tAward"][1]["MonsterType"]
			local nSec = tAward[1]["tAward"][1]["Secs"]
			User_TransForm(nMagicType,0,nMonsType,nSec,nUserId)
			Sys_MsgBox(string.format(tChildrenTreasure_Text["Toy1"],sName))
			User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[2])
		elseif nChoose == 2 then
			-- 眩晕
			local nStatus = tAward[1]["tAward"][1]["Status"]
			local nPower = tAward[1]["tAward"][1]["Power"]
			local nTimes = tAward[1]["tAward"][1]["Times"]
			local nunEndTime = tAward[1]["tAward"][1]["EndTime"]
			local nucRecordable = tAward[1]["tAward"][1]["Recordable"]
			local nSecs = tAward[1]["tAward"][1]["Secs"]
			local nunRemainTime = tAward[1]["tAward"][1]["RemainTime"]
			User_AddRoleStatus(nStatus,nPower,nSecs,nTimes,nunRemainTime,nunEndTime,nucRecordable,0,0,nUserId)
			Sys_MsgBox(string.format(tChildrenTreasure_Text["Toy2"],sName))
			User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[3])
		elseif nChoose == 3 then
			-- 给奖励
			local nLevel = Get_UserLevel(nUserId)
			if nLevel < G_User_MaxLev then
				-- 60分钟经验
				local nAddExp = tAward[1]["tAward"][1]["Exp"]
				User_AddExpTime(nAddExp,nUserId)
				Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Exp"],nItemId,nAddExp))
				Sys_MsgBox(string.format(tChildrenTreasure_Text["Toy3"],sName))
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[4])
			else
				-- 30点修行值
				local nAddCul = tAward[1]["tAward"][1]["Cul"]
				User_AddCultivation(nAddCul,nUserId)
				Sys_SaveActionFestivalLog(string.format(tChildrenTreasure_Log["Cul"],nItemId,nAddCul))
				Sys_MsgBox(string.format(tChildrenTreasure_Text["Toy4"],sName))
				User_EffectAdd(tChildrenTreasure_Effect[1],tChildrenTreasure_Effect[4])
			end
		end
	end
end

------------------------------------------------NPC模块--------------------------------------------------
-- 16561	欢乐大使小美
tNpcFace[3028] = 212
tNpcGossip[16561] = tNpcGossip[16561] or DefaultNpc:new{}
tNpcGossip[16561]["OptionHidden"] = 1
--活动前对白
tNpcGossip[16561]["Text1-1"] = {111,112,113,114}
tNpcGossip[16561]["Text111"] = tChildrenTreasure_Text[16561]["Text111"]
tNpcGossip[16561]["Text112"] = tChildrenTreasure_Text[16561]["Text112"]
tNpcGossip[16561]["Text113"] = tChildrenTreasure_Text[16561]["Text113"]
tNpcGossip[16561]["Text114"] = tChildrenTreasure_Text[16561]["Text114"]
tNpcGossip[16561]["tOption1-1"] = {1}
tNpcGossip[16561]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenTreasure_Cont["BeforeActivity"])
end
tNpcGossip[16561]["Option1"] = tChildrenTreasure_Text[16561]["Option1"]

--活动中对白
tNpcGossip[16561]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[16561]["Text121"] = tChildrenTreasure_Text[16561]["Text121"]
tNpcGossip[16561]["Text122"] = tChildrenTreasure_Text[16561]["Text122"]
tNpcGossip[16561]["Text123"] = tChildrenTreasure_Text[16561]["Text123"]
tNpcGossip[16561]["Text124"] = tChildrenTreasure_Text[16561]["Text124"]
tNpcGossip[16561]["Text125"] = tChildrenTreasure_Text[16561]["Text125"]
tNpcGossip[16561]["tOption1-2"] = {2,3,4,5,6}
tNpcGossip[16561]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tChildrenTreasure_Cont["Activity"])
end
tNpcGossip[16561]["Option2"] = tChildrenTreasure_Text[16561]["Option2"]
tNpcGossip[16561]["OptionFunc2"]="ChildrenTreasure_ParticipateIn</N>16561"
tNpcGossip[16561]["OptionChkFunc2"] = function ()
	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][1]
	-- 隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end

	if Task_ChkStcValue(nEvent,nType,">=",1) then
		return false
	else
		return true
	end
end
tNpcGossip[16561]["Option3"] = tChildrenTreasure_Text[16561]["Option3"]
tNpcGossip[16561]["OptionFunc3"]="ChildrenTreasure_ReGetMap</N>16561"
tNpcGossip[16561]["OptionChkFunc3"] = function ()
	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][1]
	local nComplete = tChildrenTreasure_Stc["Data"]["Complete"]
	-- 隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end

	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		return false
	elseif Task_ChkStcValue(nEvent,nType,">=",1) then
		return true
	else
		return false
	end
end
tNpcGossip[16561]["Option4"] = tChildrenTreasure_Text[16561]["Option4"]
tNpcGossip[16561]["OptionFunc4"]="ChildrenTreasure_HandInItem</N>16561"
tNpcGossip[16561]["OptionChkFunc4"] = function ()
	local nEvent = tChildrenTreasure_Stc["EventType"]
	local nType = tChildrenTreasure_Stc["DataType"][1]
	local nComplete = tChildrenTreasure_Stc["Data"]["Complete"]
	-- 隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end

	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		return false
	elseif Task_ChkStcValue(nEvent,nType,">=",1) then
		return true
	else
		return false
	end
end
tNpcGossip[16561]["Option5"] = tChildrenTreasure_Text[16561]["Option5"]
tNpcGossip[16561]["OptionPoint5"]="5-1"
tNpcGossip[16561]["Option6"] = tChildrenTreasure_Text[16561]["Option6"]

--活动后对白
tNpcGossip[16561]["Text1-3"] = {131}
tNpcGossip[16561]["Text131"] = tChildrenTreasure_Text[16561]["Text131"]
tNpcGossip[16561]["tOption1-3"] = {7}
tNpcGossip[16561]["Option7"] = tChildrenTreasure_Text[16561]["Option7"]

-- 接2：我要参加欢乐寻宝。
-- 等级不足
tNpcGossip[16561]["Text2-1"] = {211}
tNpcGossip[16561]["Text211"] = tChildrenTreasure_Text[16561]["Text211"]
tNpcGossip[16561]["tOption2-1"] = {8}
tNpcGossip[16561]["Option8"] = tChildrenTreasure_Text[16561]["Option8"]
-- 领取过奖励
tNpcGossip[16561]["Text2-2"] = {221}
tNpcGossip[16561]["Text221"] = tChildrenTreasure_Text[16561]["Text221"]
tNpcGossip[16561]["tOption2-2"] = {9}
tNpcGossip[16561]["Option9"] = tChildrenTreasure_Text[16561]["Option9"]
-- 背包满
tNpcGossip[16561]["Text2-3"] = {231}
tNpcGossip[16561]["Text231"] = tChildrenTreasure_Text[16561]["Text231"]
tNpcGossip[16561]["tOption2-3"] = {10}
tNpcGossip[16561]["Option10"] = tChildrenTreasure_Text[16561]["Option10"]
-- 成功接受任务，随机获得藏宝图与通知寻找目标物品
tNpcGossip[16561]["Text2-4"] = {241}
tNpcGossip[16561]["Text241"] = tChildrenTreasure_Text[16561]["Text241"]
tNpcGossip[16561]["tOption2-4"] = {11}
tNpcGossip[16561]["Option11"] = tChildrenTreasure_Text[16561]["Option11"]
-- 当天已接过任务提示
tNpcGossip[16561]["Text2-5"] = {251}
tNpcGossip[16561]["Text251"] = tChildrenTreasure_Text[16561]["Text251"]
tNpcGossip[16561]["tOption2-5"] = {9}

-- 接3：我弄丢了藏宝图。
-- 背包满
tNpcGossip[16561]["Text3-1"] = {311}
tNpcGossip[16561]["Text311"] = tChildrenTreasure_Text[16561]["Text311"]
tNpcGossip[16561]["tOption3-1"] = {12}
tNpcGossip[16561]["Option12"] = tChildrenTreasure_Text[16561]["Option12"]
-- 背包中已有对应物品，不需补领
tNpcGossip[16561]["Text3-2"] = {321}
tNpcGossip[16561]["Text321"] = tChildrenTreasure_Text[16561]["Text321"]
tNpcGossip[16561]["tOption3-2"] = {13}
tNpcGossip[16561]["Option13"] = tChildrenTreasure_Text[16561]["Option13"]
-- 补领成功
tNpcGossip[16561]["Text3-3"] = {331}
tNpcGossip[16561]["Text331"] = tChildrenTreasure_Text[16561]["Text331"]
tNpcGossip[16561]["tOption3-3"] = {14}
tNpcGossip[16561]["Option14"] = tChildrenTreasure_Text[16561]["Option14"]
	
--接4：我带来了你的宝贝。
-- 背包满
tNpcGossip[16561]["Text4-1"] = {411}
tNpcGossip[16561]["Text411"] = tChildrenTreasure_Text[16561]["Text411"]
tNpcGossip[16561]["tOption4-1"] = {15}
tNpcGossip[16561]["Option15"] = tChildrenTreasure_Text[16561]["Option15"]
-- 背包中未找到需要的物品
tNpcGossip[16561]["Text4-2"] = {421}
tNpcGossip[16561]["Text421"] = tChildrenTreasure_Text[16561]["Text421"]
tNpcGossip[16561]["tOption4-2"] = {16}
tNpcGossip[16561]["Option16"] = tChildrenTreasure_Text[16561]["Option16"]
-- 上交成功，获得奖励
tNpcGossip[16561]["Text4-3"] = {431}
tNpcGossip[16561]["Text431"] = tChildrenTreasure_Text[16561]["Text431"]
tNpcGossip[16561]["tOption4-3"] = {17}
tNpcGossip[16561]["Option17"] = tChildrenTreasure_Text[16561]["Option17"]
	
-- 接5：跟我讲讲这个游戏怎么玩吧。
tNpcGossip[16561]["Text5-1"] = {511,512}
tNpcGossip[16561]["Text511"] = tChildrenTreasure_Text[16561]["Text511"]
tNpcGossip[16561]["Text512"] = tChildrenTreasure_Text[16561]["Text512"]
tNpcGossip[16561]["tOption5-1"] = {18,19,20}
tNpcGossip[16561]["Option18"] = tChildrenTreasure_Text[16561]["Option18"]
tNpcGossip[16561]["OptionPoint18"]="5-2"
tNpcGossip[16561]["Option19"] = tChildrenTreasure_Text[16561]["Option19"]
tNpcGossip[16561]["OptionPoint19"]="1-2"
tNpcGossip[16561]["Option20"] = tChildrenTreasure_Text[16561]["Option20"]
-- 接18：还有什么要注意的呢？
tNpcGossip[16561]["Text5-2"] = {521,522}
tNpcGossip[16561]["Text521"] = tChildrenTreasure_Text[16561]["Text521"]
tNpcGossip[16561]["Text522"] = tChildrenTreasure_Text[16561]["Text522"]
tNpcGossip[16561]["tOption5-2"] = {21}
tNpcGossip[16561]["Option21"] = tChildrenTreasure_Text[16561]["Option21"]

------------------------------------------------itemtype模块--------------------------------------------------
-- 各个地图的藏宝图
-- 清风原藏宝图
tItem[3003701] = tItem[3003701] or {}
tItem[3003701]["Function"] = function(nItemId,sItemName)
	ChildrenTreasure_UseMap(nItemId)
end
tItem[3003702] = tItem[3003701]	-- 枫溪林藏宝图
tItem[3003703] = tItem[3003701]	-- 绝情谷藏宝图
tItem[3003704] = tItem[3003701]	-- 大漠藏宝图
tItem[3003705] = tItem[3003701]	-- 芦花荡藏宝图

-- 任务物品
-- 小美的自制灯笼
tItem[3003706] = tItem[3003706] or {}
tItem[3003706]["Function"] = function(nItemId,sItemName)
	ChildrenTreasure_UseItem(nItemId)
end
tItem[3003707] = tItem[3003706]	-- 小美的风筝
tItem[3003708] = tItem[3003706]	-- 小美的奖状
tItem[3003709] = tItem[3003706]	-- 小美的“百宝”箱
tItem[3003710] = tItem[3003706]	-- 小美的算盘
tItem[3003711] = tItem[3003706]		-- 小美的拨浪鼓
tItem[3003712] = tItem[3003706]	-- 小美的拼图
tItem[3003713] = tItem[3003706]	-- 小美的九连环
tItem[3003714] = tItem[3003706]	-- 小美的水晶球
tItem[3003715] = tItem[3003706]	-- 小美的月之冕
tItem[3003716] = tItem[3003706]	-- 小美的彩虹糖
tItem[3003717] = tItem[3003706]	-- 小美的日记本
tItem[3003718] = tItem[3003706]	-- 小美的乳牙
tItem[3003719] = tItem[3003706]	-- 小美的犀牛角
tItem[3003720] = tItem[3003706]	-- 小美的贝壳

-- 捣乱物品
-- 小夫子的不倒翁
tItem[3003721] = tItem[3003721] or {}
tItem[3003721]["Function"] = function(nItemId,sItemName)
	ChildrenTreasure_UseTrickItem(nItemId)
end
tItem[3003722] = tItem[3003721]	-- 胡路路的葫芦
tItem[3003723] = tItem[3003721]	-- 灰大郎的羊咩咩
tItem[3003724] = tItem[3003721]	-- 王小虎的虎头鞋
tItem[3003725] = tItem[3003721]	-- 小寺的照妖镜
