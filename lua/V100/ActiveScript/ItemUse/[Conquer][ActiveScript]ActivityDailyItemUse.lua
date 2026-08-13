-----------------------------------------------------------------------------------------------------
--Name:		160421[简体征服][任务脚本]日常任务完成道具调整
--Purpose:		日常任务完成道具调整
--Creator: 	张磊
--Created:		2016/04/21
------------------------------------------------------------------------------------------------------
-- 命名前缀
--ActivityDailyItemUse_
--LOG  12000388
------------------------------------------------------------------------------------------------------

-- 3007311	物资募集符
-- 3600014	物资募集符


local tActivityDailyItemUse_Cont = {}
	--日常任务完成金令
	tActivityDailyItemUse_Cont["Item"] = 3309841

	tActivityDailyItemUse_Cont["MapId"] = 3935
	-- 光效配置
	tActivityDailyItemUse_Cont["Effect"] = {}
	tActivityDailyItemUse_Cont["Effect"]["Self"] = "self"
	tActivityDailyItemUse_Cont["Effect"]["Effect"] = "angelwing"
	-- 等级限制
	tActivityDailyItemUse_Cont["Level"] = {}
	tActivityDailyItemUse_Cont["Level"]["Meto"] = 0
	tActivityDailyItemUse_Cont["Level"]["Level"] = 75
	
	tActivityDailyItemUse_Cont["Level"]["PackLevel"] = 140
	-- 掩码相关
	tActivityDailyItemUse_Cont["Task"] = {}
	tActivityDailyItemUse_Cont["Task"]["Id"] = 6366
	
	-- 新服活动全局动态码
	tActivityDailyItemUse_Cont["Global"] = {}
	tActivityDailyItemUse_Cont["Global"]["Id"] = 51131
	tActivityDailyItemUse_Cont["Global"]["Open"] = 1
	
	-- 奖励配置
	tActivityDailyItemUse_Cont["Reward"] = {}
	
	-- 240分钟经验
	tActivityDailyItemUse_Cont["Reward"]["Exp"] = 240
	-- 70点修行值
	tActivityDailyItemUse_Cont["Reward"]["Clu"] = 70
	-- 1颗强效护心丹
	tActivityDailyItemUse_Cont["Reward"]["Item_Hxd"] = 3002030
	tActivityDailyItemUse_Cont["Reward"]["Item_Attr"] = "0 1"
	-- 1枚正气令
	tActivityDailyItemUse_Cont["Reward"]["Item_Zql"] = 729304
	
	---- 新服活动礼包
	tActivityDailyItemUse_Cont["Reward"]["Item_XF"] = 3008912
	
	--背包空间配置
	tActivityDailyItemUse_Cont["Space"] = {}	
	tActivityDailyItemUse_Cont["Space"][1] = 3
	tActivityDailyItemUse_Cont["Space"][2] = 2
	
	-- LOG配置
	tActivityDailyItemUse_Cont["Log"] = {}
	
	tActivityDailyItemUse_Cont["Log"][1] = "0,0,%d,1,10001480,2,4[6][3002029][729304],240[70][1][1]"
	tActivityDailyItemUse_Cont["Log"][2] = "0,0,%d,1,10001480,2,6[3002029][729304],70[1][1]"
	
	-----新服活动额外LOG
	tActivityDailyItemUse_Cont["Log"][3] = "0,0,%d,1,12000388,2,3008912,1"
	
	tActivityDailyItemUse_Cont["NewLog"] = "0,0,%d,1,12000388,1[3],0,0"
	
	
local tActivityDailyItemUse_CLCont = {}
	tActivityDailyItemUse_CLCont["Level"] = 60
--掩码配置
	tActivityDailyItemUse_CLCont["Task"] = {}
	tActivityDailyItemUse_CLCont["Task"][1] = 6245
	tActivityDailyItemUse_CLCont["Task"][2] = 2265
	
--背包空间配置
	tActivityDailyItemUse_CLCont["Space"] = {}	
	tActivityDailyItemUse_CLCont["Space"][1] = 2
	tActivityDailyItemUse_CLCont["Space"][2] = 1
	
--奖励配置
	tActivityDailyItemUse_CLCont["Reward"] = {}
	tActivityDailyItemUse_CLCont["Reward"]["Exp"] = 600
	tActivityDailyItemUse_CLCont["Reward"]["Cul"] = 50
	tActivityDailyItemUse_CLCont["Reward"]["Item_Zql"] = 729304
	
--LOG 配置
	tActivityDailyItemUse_CLCont["LOG"] = {}
	tActivityDailyItemUse_CLCont["LOG"][1] = "0,0,%d,1,10000902,2,4[6][729304],600[50][1]"
	tActivityDailyItemUse_CLCont["LOG"][2] = "0,0,%d,1,10000902,2,6[729304],50[1]"
	
	tActivityDailyItemUse_CLCont["NewLOG"] = "0,0,%d,1,12000388,1[4],0,0"
	
--材料收集物品
	tActivityDailyItemUse_CLCont["Item"] = {}
	tActivityDailyItemUse_CLCont["Item"]["Id"] = 729087

--古来征战几人回任务
local tActivityDailyItemUse_ZZCont = {}
	tActivityDailyItemUse_ZZCont["Level"] = 70
	
	tActivityDailyItemUse_ZZCont["Task"] = 6049
	
	tActivityDailyItemUse_ZZCont["Space1"] = 1
	tActivityDailyItemUse_ZZCont["Space2"] = 2
	
	-- 奖励
	tActivityDailyItemUse_ZZCont["Reward"] = {}
	tActivityDailyItemUse_ZZCont["Reward"]["Exp"] = 120
	tActivityDailyItemUse_ZZCont["Reward"]["Clu"] = 50
	tActivityDailyItemUse_ZZCont["Reward"]["Item"] = 729304
	-- LOG
	tActivityDailyItemUse_ZZCont["LOG"] = {}
	tActivityDailyItemUse_ZZCont["LOG"][1] = "0,0,%d,1,6049,2,4[6][729304],120[50][1]"
	tActivityDailyItemUse_ZZCont["LOG"][2] = "0,0,%d,1,6049,2,6[729304],50[1]"
	
	tActivityDailyItemUse_ZZCont["NewLOG"] = "0,0,%d,1,12000388,1[2],0,0"
	

local tActivityDailyItemUse_YRHKCont = {}
	
	--等级限制
	tActivityDailyItemUse_YRHKCont["Limit"] = 80
	-- 完成掩码
	tActivityDailyItemUse_YRHKCont["Stc"] = 106
	-- 完成掩码  20表示完成 10 表示领取了种子
	tActivityDailyItemUse_YRHKCont["Type"] = 99
	tActivityDailyItemUse_YRHKCont["Data"] = 20
	
	-- 背包空间配置
	tActivityDailyItemUse_YRHKCont["Space"] = 2
	
	----固定奖励表
	tActivityDailyItemUse_YRHKCont["GDReward"] = {}
	tActivityDailyItemUse_YRHKCont["GDReward"]["EXP"] = 180
	tActivityDailyItemUse_YRHKCont["GDReward"]["Clu"] = 100
	tActivityDailyItemUse_YRHKCont["GDReward"]["Item"] = 729304
	
	-- LOG
	tActivityDailyItemUse_YRHKCont["LOG"] = {}	
	----原LOG
	tActivityDailyItemUse_YRHKCont["LOG"][1] = "0,0,%d,1,10000979,2,4[729304][6][%d],180[1][100][1]"	
	tActivityDailyItemUse_YRHKCont["LOG"][2] = "0,0,%d,1,10000979,2,6[729304][%d],100[1][1]"
	
	tActivityDailyItemUse_YRHKCont["NewLOG"] = "0,0,%d,1,12000388,1[1],0,0"
	
	--原有种子
	tActivityDailyItemUse_YRHKCont["ZZ"] = {}
	tActivityDailyItemUse_YRHKCont["ZZ"][1] = 729306
	tActivityDailyItemUse_YRHKCont["ZZ"][2] = 729307
	tActivityDailyItemUse_YRHKCont["ZZ"][3] = 729308
	tActivityDailyItemUse_YRHKCont["ZZ"][4] = 729309
	tActivityDailyItemUse_YRHKCont["ZZ"][5] = 729310
	
	----随机奖励表
    tActivityDailyItemUse_YRHKCont["RandomReward"] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1]["ItemChanceSum"] = 10000

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][1] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][1]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][1]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][1]["Item_1"] = 700062
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][1]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][2] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][2]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][2]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][2]["Item_1"] = 700052
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][2]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][3] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][3]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][3]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][3]["Item_1"] = 700042
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][3]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][4] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][4]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][4]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][4]["Item_1"] = 700032
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][4]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][5] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][5]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][5]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][5]["Item_1"] = 700022
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][5]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][6] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][6]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][6]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][6]["Item_1"] = 700002
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][6]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][7] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][7]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][7]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][7]["Item_1"] = 700012
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][7]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][8] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][8]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][8]["ItemChance"] = 400
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][8]["Item_1"] = 754001
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][8]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][9] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][9]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][9]["ItemChance"] = 800
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][9]["Item_1"] = 756001
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][9]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][10] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][10]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][10]["ItemChance"] = 400
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][10]["Item_1"] = 753003
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][10]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][11] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][11]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][11]["ItemChance"] = 1000
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][11]["Item_1"] = 721261
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][11]["Attr"] = "0 2"

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][12] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][12]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][12]["ItemChance"] = 1000
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][12]["Item_1"] = 723903
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][12]["Attr"] = "0 5"

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][13] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][13]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][13]["ItemChance"] = 1000
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][13]["Item_1"] = 723017
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][13]["Attr"] = "0 2"

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["ItemChance"] = 300
	
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["Item_1"] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["Item_1"][1] = 721022
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["Item_1"][2] = 721032
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["Item_1"][3] = 721042
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["Item_1"][4] = 721052
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["Item_1"][5] = 721063
	
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][14]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][15] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][15]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][15]["ItemChance"] = 500
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][15]["Item_1"] = 720128
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][15]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][16] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][16]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][16]["ItemChance"] = 100
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][16]["Item_1"] = 754003
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][16]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][17] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][17]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][17]["ItemChance"] = 200
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][17]["Item_1"] = 756003
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][17]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][18] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][18]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][18]["ItemChance"] = 1000
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][18]["Item_1"] = 720027
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][18]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][19] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][19]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][19]["ItemChance"] = 200
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][19]["Item_1"] = 700101
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][19]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][20] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][20]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][20]["ItemChance"] = 200
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][20]["Item_1"] = 700121
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][20]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][21] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][21]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][21]["ItemChance"] = 200
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][21]["Item_1"] = 753009
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][21]["Attr"] = ""
	
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][22] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][22]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][22]["ItemChance"] = 2000
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][22]["Item_1"] = 3009000
	tActivityDailyItemUse_YRHKCont["RandomReward"][1][1][22]["Attr"] = "0 3 0 2880 1"
	
	tActivityDailyItemUse_YRHKCont["RandomReward"][2] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1]["ItemChanceSum"] = 10000

	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][1] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][1]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][1]["ItemChance"] = 2000
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][1]["Item_1"] = 756001
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][1]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][2] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][2]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][2]["ItemChance"] = 2000
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][2]["Item_1"] = 721261
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][2]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][3] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][3]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][3]["ItemChance"] = 2000
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][3]["Item_1"] = 723017
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][3]["Attr"] = "0 2"

	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][4] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][4]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][4]["ItemChance"] = 500
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][4]["Item_1"] = 720128
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][4]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][5] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][5]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][5]["ItemChance"] = 1500
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][5]["Item_1"] = 756003
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][5]["Attr"] = ""

	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][6] = {}
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][6]["RandomItemChanceType"] = 2
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][6]["ItemChance"] = 2000
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][6]["Item_1"] = 720027
	tActivityDailyItemUse_YRHKCont["RandomReward"][2][1][6]["Attr"] = ""
	
local tActivityDailyItemUse_ActivityTaskType = {}
	tActivityDailyItemUse_ActivityTaskType["TaskType"] = 4
	
	
	

----------------------------------------------------逻辑部分-----------------------------------------
--募集物资  使用完成任务

function ActivityDailyItemUse_Open(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 等级判断
	local nMeto = tActivityDailyItemUse_Cont["Level"]["Meto"]
	local nLevel = tActivityDailyItemUse_Cont["Level"]["Level"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nNowUserId) then
		User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["LessLevel"],nLevel,Get_ItemtypeName(nItemId)),nNowUserId)
		return
	end
	
	if Get_UserMapId(nNowUserId) == tActivityDailyItemUse_Cont["MapId"] then
		return
	end
	
	local nTaskId = tActivityDailyItemUse_Cont["Task"]["Id"]
	
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_ChkItem(nItemId,1,0,nNowUserId) then	
			return
		end
	end
	
	if not Task_ChkTaskDetail(nTaskId,nNowUserId) then
		Task_AddTaskDetail(nTaskId,0,nNowUserId)
		Task_SetTaskDetailData7(nTaskId,os.time(),nNowUserId)
		Task_SetTaskDetailCompleteFlag(nTaskId,0,nNowUserId)
		Task_SetTaskDetailData5(nTaskId,1,nNowUserId)
	end
	
	local nComp = Get_TaskDetailCompleteFlag(nTaskId,nNowUserId)
	
	if nComp == 1 and Get_TaskDetailData6(nTaskId,nNowUserId) == 1 then
		Sys_MsgBox(tostring(tActivityDailyItemUse_Msg["MJWZ"]["Completed"]),"NULL","NULL",nNowUserId)
		return
	end
	
	-- 判断是否新服
	local nGlobal = tActivityDailyItemUse_Cont["Global"]["Id"]
	local nData = Get_SysDynaGlobalData1(nGlobal)
	
	if nData < tActivityDailyItemUse_Cont["Global"]["Open"] then
		if not User_CheckLeftSpace(tActivityDailyItemUse_Cont["Space"][1],nNowUserId) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_Cont["Space"][1],Get_ItemtypeName(nItemId)),nNowUserId)
			return
		end
	elseif not User_CheckLeftSpace(tActivityDailyItemUse_Cont["Space"][2],nNowUserId) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_Cont["Space"][2],Get_ItemtypeName(nItemId)),nNowUserId)
			return		
	end
	
	-- 背包充足
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_DelItem(nItemId,1,0,nNowUserId) then
			return
		end
	end
	
	-- 打掩码
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
	Task_SetTaskDetailData6(nTaskId,1,nNowUserId)
	Task_SetTaskDetailData7(nTaskId,os.time(),nNowUserId)
	
	-- 三月幸运树
	LuckyTree_FinishTask(26,nNowUserId)
	
	-- if nData ~= 0 then
		-- Item_AddNewItem(tActivityDailyItemUse_Cont["Reward"]["Item_XF"],"")
		-- Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_Cont["Log"][3],nItemId))
		-- User_TalkChannel2005(tActivityDailyItemUse_Msg["MJWZ"]["GetXfPack"])
	-- end
	
	-- 给正常奖励
	local nLevelLimit = tActivityDailyItemUse_Cont["Level"]["PackLevel"]
	local nFlag = 0
	if Get_UserLevel(nNowUserId) < nLevelLimit then
		nFlag = 1
		User_AddExpTime(tActivityDailyItemUse_Cont["Reward"]["Exp"],nNowUserId)
	else
		nFlag = 2
	end
	
	User_AddCultivation(tActivityDailyItemUse_Cont["Reward"]["Clu"],nNowUserId)
	Item_AddNewItem(tActivityDailyItemUse_Cont["Reward"]["Item_Hxd"],tActivityDailyItemUse_Cont["Reward"]["Item_Attr"],nNowUserId)
	Item_AddNewItem(tActivityDailyItemUse_Cont["Reward"]["Item_Zql"],"",nNowUserId)
	
	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_Cont["Log"][nFlag],nItemId),nNowUserId)		
	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_Cont["NewLog"],nItemId),nNowUserId)		
	User_TalkChannel2005(tActivityDailyItemUse_Msg["MJWZ"]["Complete"],nNowUserId)
	Task_AddActivityTaskSchedule(tActivityDailyItemUse_ActivityTaskType["TaskType"],nNowUserId)
	-- 光效
	User_EffectAdd(tActivityDailyItemUse_Cont["Effect"]["Self"],tActivityDailyItemUse_Cont["Effect"]["Effect"],nNowUserId)
	NewTaskItem_AddProcessTask(nNowUserId)
	return nFlag
end

-- 材料收集令
function ActivityDailyItemUse_CLCollect(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_ChkItem(nItemId,1,0,nNowUserId) then
			return
		end
	end
	
	--判断等级
	local nMeto = tActivityDailyItemUse_Cont["Level"]["Meto"]
	local nLevel = tActivityDailyItemUse_CLCont["Level"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nNowUserId) then
		User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["LessLevel"],nLevel,Get_ItemtypeName(nItemId)),nNowUserId)
		return
	end
	
	local nTaskId1 = tActivityDailyItemUse_CLCont["Task"][1]
	local nTaskId2 = tActivityDailyItemUse_CLCont["Task"][2]
	
	if not Task_ChkTaskDetail(nTaskId1,nNowUserId) then
		if Task_AddTaskDetail(nTaskId1,0,nNowUserId) then
			Task_SetTaskDetailData7(nTaskId1,os.time(),nNowUserId)
			Task_SetTaskDetailCompleteFlag(nTaskId1,0,nNowUserId)
			Task_SetTaskDetailData5(nTaskId1,1,nNowUserId)
		else
			User_TalkChannel2005(tActivityDailyItemUse_Msg["CLSJ"]["TaskFail"], nNowUserId)
			return
		end
	end

	if not Task_ChkTaskDetail(nTaskId2,nNowUserId) then
		if Task_AddTaskDetail(nTaskId2,0,nNowUserId) then
			Task_SetTaskDetailData7(nTaskId2,os.time(),nNowUserId)
		else
			User_TalkChannel2005(tActivityDailyItemUse_Msg["CLSJ"]["TaskFail"], nNowUserId)
			return
		end
	end	
	
	local nComp = Get_TaskDetailCompleteFlag(nTaskId1,nNowUserId)
	local nData6 = Get_TaskDetailData6(nTaskId1,nNowUserId)
	
	if nComp == 1 and nData6 == 1 then
		Sys_MsgBox(tostring(tActivityDailyItemUse_Msg["CLSJ"]["Completed"]),"NULL","NULL",nNowUserId)
		return
	end
	
	-- 判断是否新服
	local nGlobal = tActivityDailyItemUse_Cont["Global"]["Id"]
	local nData = Get_SysDynaGlobalData1(nGlobal)
	
	if nData < tActivityDailyItemUse_Cont["Global"]["Open"] then
		if not User_CheckLeftSpace(tActivityDailyItemUse_CLCont["Space"][1],nNowUserId) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_CLCont["Space"][1],Get_ItemtypeName(nItemId)),nNowUserId)
			return
		end
	elseif not User_CheckLeftSpace(tActivityDailyItemUse_CLCont["Space"][2]) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_CLCont["Space"][2],Get_ItemtypeName(nItemId)),nNowUserId)
			return		
	end
	
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_DelItem(nItemId,1,0,nNowUserId) then
			return
		end
	end
	
	if Item_ChkItem(tActivityDailyItemUse_CLCont["Item"]["Id"],1,0,nNowUserId) then
		Item_DelItem(tActivityDailyItemUse_CLCont["Item"]["Id"],1,0,nNowUserId)
	end
	-- 打掩码给奖励
	Task_SetTaskDetailCompleteFlag(nTaskId1,1,nNowUserId)
	Task_SetTaskDetailData6(nTaskId1,1,nNowUserId)
	Task_SetTaskDetailData7(nTaskId1,os.time(),nNowUserId)
	Task_SetTaskDetailData2(nTaskId2,1,nNowUserId)
	
	-- 三月幸运树
	LuckyTree_FinishTask(25,nNowUserId)
	
	-- if nData ~= 0 then
		-- Item_AddNewItem(tActivityDailyItemUse_Cont["Reward"]["Item_XF"],"")
		-- Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_Cont["Log"][3],nItemId))
		-- User_TalkChannel2005(tActivityDailyItemUse_Msg["MJWZ"]["GetXfPack"])
	-- end
	
	
	local nLevelLimit = tActivityDailyItemUse_Cont["Level"]["PackLevel"]
	local nFlag = 0
	if Get_UserLevel(nNowUserId) < nLevelLimit then
		nFlag = 1
		User_AddExpTime(tActivityDailyItemUse_CLCont["Reward"]["Exp"],nNowUserId)
	else
		nFlag = 2
	end
	
	User_AddCultivation(tActivityDailyItemUse_CLCont["Reward"]["Cul"],nNowUserId)
	Item_AddNewItem(tActivityDailyItemUse_CLCont["Reward"]["Item_Zql"],"",nNowUserId)

	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_CLCont["LOG"][nFlag],nItemId),nNowUserId)
	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_CLCont["NewLOG"],nItemId),nNowUserId)
	User_TalkChannel2005(tActivityDailyItemUse_Msg["CLSJ"]["Complete"],nNowUserId)
	Task_AddActivityTaskSchedule(tActivityDailyItemUse_ActivityTaskType["TaskType"],nNowUserId)	
	-- 光效
	User_EffectAdd(tActivityDailyItemUse_Cont["Effect"]["Self"],tActivityDailyItemUse_Cont["Effect"]["Effect"],nNowUserId)
	NewTaskItem_AddProcessTask(nNowUserId)
	return nFlag
end

-- 3008729	征战抚恤令   古来征战几人回
function ActivityDailyItemUse_ZZTask(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_ChkItem(nItemId,1,0,nNowUserId) then
			return
		end
	end
	
	-- 判断等级
		--判断等级
	local nMeto = tActivityDailyItemUse_Cont["Level"]["Meto"]
	local nLevel = tActivityDailyItemUse_ZZCont["Level"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nNowUserId) then
		User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["LessLevel"],nLevel,Get_ItemtypeName(nItemId)),nNowUserId)
		return
	end
	
	--判断任务情况
	local nTaskId = tActivityDailyItemUse_ZZCont["Task"]

	if not Task_ChkTaskDetail(nTaskId,nNowUserId) then
		if not Task_AddTaskDetail(nTaskId,0,nNowUserId) then
			return
		end
		
		Task_SetTaskDetailData1(nTaskId,1,nNowUserId)
		Task_SetTaskDetailData5(nTaskId,1,nNowUserId)
		Task_SetTaskDetailData7(nTaskId,os.time(),nNowUserId)
	end
	
	local nComp = Get_TaskDetailCompleteFlag(nTaskId,nNowUserId)
	local nData6 = Get_TaskDetailData6(nTaskId,nNowUserId)
	
	if nComp == 2 and nData6 == 1 then
		Sys_MsgBox(tActivityDailyItemUse_Msg["ZZSJ"]["Completed"],"NULL","NULL",nNowUserId)
		return
	end
	
	-- 判断是否新服
	local nGlobal = tActivityDailyItemUse_Cont["Global"]["Id"]
	local nData = Get_SysDynaGlobalData1(nGlobal)
	
	if nData < tActivityDailyItemUse_Cont["Global"]["Open"] then
		if not User_CheckLeftSpace(tActivityDailyItemUse_ZZCont["Space1"],nNowUserId) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_ZZCont["Space1"],Get_ItemtypeName(nItemId)),nNowUserId)
			return
		end
	elseif not User_CheckLeftSpace(tActivityDailyItemUse_ZZCont["Space2"],nNowUserId) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_ZZCont["Space2"],Get_ItemtypeName(nItemId)),nNowUserId)
			return		
	end
	
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_DelItem(nItemId,1,0,nNowUserId) then
			return
		end
	end
	
	Task_SetTaskDetailData1(nTaskId,0,nNowUserId)
	Task_SetTaskDetailData6(nTaskId,1,nNowUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId,2,nNowUserId)
	Task_SetTaskDetailData7(nTaskId,os.time(),nNowUserId)
	
	-- if nData ~= 0 then
		-- Item_AddNewItem(tActivityDailyItemUse_Cont["Reward"]["Item_XF"],"")
		-- Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_Cont["Log"][3],nItemId))
		-- User_TalkChannel2005(tActivityDailyItemUse_Msg["ZZSJ"]["GetXfPack"])
	-- end
	
	local nLevelLimit = tActivityDailyItemUse_Cont["Level"]["PackLevel"]
	local nFlag = 0
	if Get_UserLevel(nNowUserId) < nLevelLimit then
		User_AddExpTime(tActivityDailyItemUse_ZZCont["Reward"]["Exp"],nNowUserId)
		nFlag = 1
	else
		nFlag = 2
	end

	User_AddCultivation(tActivityDailyItemUse_ZZCont["Reward"]["Clu"],nNowUserId)
	Item_AddNewItem(tActivityDailyItemUse_ZZCont["Reward"]["Item"],"",nNowUserId)	
	
	-- 记录LOG
	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_ZZCont["LOG"][nFlag],nItemId),nNowUserId)
	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_ZZCont["NewLOG"],nItemId),nNowUserId)
	User_TalkChannel2005(tActivityDailyItemUse_Msg["ZZSJ"]["Complete"],nNowUserId)
	Task_AddActivityTaskSchedule(tActivityDailyItemUse_ActivityTaskType["TaskType"],nNowUserId)	
	-- 光效
	User_EffectAdd(tActivityDailyItemUse_Cont["Effect"]["Self"],tActivityDailyItemUse_Cont["Effect"]["Effect"],nNowUserId)
	NewTaskItem_AddProcessTask(nNowUserId)
	return nFlag
end

-- 幽兰花开令
function ActivityDailyItemUse_YLHKTask(nItemId,nUserId)
	local nNowUserId = nUserId or Get_UserId()
	-- 判断是否有该物品
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_ChkItem(nItemId,1,0,nNowUserId) then
			return
		end
	end
	-- 等级判断
	local nMeto = tActivityDailyItemUse_Cont["Level"]["Meto"]
	local nLevel = tActivityDailyItemUse_YRHKCont["Limit"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMeto,nNowUserId) then
		User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["LessLevel"],nLevel,Get_ItemtypeName(nItemId)),nNowUserId)
		return
	end

	local nEvent = tActivityDailyItemUse_YRHKCont["Stc"]
	local nType = tActivityDailyItemUse_YRHKCont["Type"]
	local nData = tActivityDailyItemUse_YRHKCont["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4,nNowUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nNowUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	end
	
	if Task_ChkStcValue(nEvent,nType,">=",nData,nNowUserId) then
		Sys_MsgBox(tostring(tActivityDailyItemUse_Msg["YLHK"]["Completed"]),"NULL","NULL",nNowUserId)
		return
	end
	
	-- 判断背包空间
	-- 判断是否新服
	local nGlobal = tActivityDailyItemUse_Cont["Global"]["Id"]
	local nGlobalData = Get_SysDynaGlobalData1(nGlobal)
	
	if nGlobalData < tActivityDailyItemUse_Cont["Global"]["Open"] then
		if not User_CheckLeftSpace(tActivityDailyItemUse_YRHKCont["Space"],nNowUserId) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_YRHKCont["Space"],Get_ItemtypeName(nItemId)),nNowUserId)
			return
		end
	elseif not User_CheckLeftSpace(tActivityDailyItemUse_YRHKCont["Space"] + 1,nNowUserId) then
			User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["NoSpace"],tActivityDailyItemUse_YRHKCont["Space"] + 1,Get_ItemtypeName(nItemId)),nNowUserId)
			return		
	end
	
	----背包空间满足
	if nItemId ~= tActivityDailyItemUse_Cont["Item"] then
		if not Item_DelItem(nItemId,1,0,nNowUserId) then
			return
		end
	end
	
	----设置掩码
	for k,v in pairs(tActivityDailyItemUse_YRHKCont["ZZ"]) do
		if Item_ChkItem(v,1,0,nNowUserId) then
			Item_DelItem(v,1,0,nNowUserId)
		end	
	end
	
	Task_SetStatistic(nEvent,nType,nData,1,nNowUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nNowUserId)
	
	-- 三月幸运树
	LuckyTree_FinishTask(23,nNowUserId)
	
	-- if nGlobalData ~= 0 then
		-- Item_AddNewItem(tActivityDailyItemUse_Cont["Reward"]["Item_XF"],"")
		-- Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_Cont["Log"][3],nItemId))
		-- User_TalkChannel2005(tActivityDailyItemUse_Msg["YLHK"]["GetXfPack"])
	-- end
	
	
	local nLevelLimit = tActivityDailyItemUse_Cont["Level"]["PackLevel"]
	local nFlag = 0
	if Get_UserLevel(nNowUserId) < nLevelLimit then
		User_AddExpTime(tActivityDailyItemUse_YRHKCont["GDReward"]["EXP"],nNowUserId)
		nFlag = 1
	else
		nFlag = 2
	end
	
	User_AddCultivation(tActivityDailyItemUse_YRHKCont["GDReward"]["Clu"],nNowUserId)
	Item_AddNewItem(tActivityDailyItemUse_YRHKCont["GDReward"]["Item"],"",nNowUserId)
	
	-----随机奖励
	local nMetempsychosis = Get_UserMetempsychosis(nNowUserId)
	local nIndex = 0
	if nMetempsychosis < 2 then
		nIndex = 2
	else
		nIndex = 1
	end
	local flat,tJack = Probabil_RandomAward(tActivityDailyItemUse_YRHKCont["RandomReward"][nIndex],1)
	
	local nRaward = tJack[1]["tAward"][1]["Item_1"]
	local nRawardItem = 0
	local sAttr = tJack[1]["tAward"][1]["Attr"]
	
	if type(nRaward) == "table" then
		local nNum = math.random(1,#nRaward)
		nRawardItem = nRaward[nNum]
	else
		nRawardItem = nRaward
	end	
	
	Item_AddNewItem(nRawardItem,sAttr,nNowUserId)
	-- 记录LOG
	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_YRHKCont["LOG"][nFlag],nItemId,nRawardItem),nNowUserId)
	Sys_SaveActionFestivalLog(string.format(tActivityDailyItemUse_YRHKCont["NewLOG"],nItemId),nNowUserId)	
	User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["YLHK"]["Complete"],Get_ItemtypeName(nRawardItem)),nNowUserId)
	Task_AddActivityTaskSchedule(tActivityDailyItemUse_ActivityTaskType["TaskType"],nNowUserId)	
	-- 光效
	User_EffectAdd(tActivityDailyItemUse_Cont["Effect"]["Self"],tActivityDailyItemUse_Cont["Effect"]["Effect"],nNowUserId)
	NewTaskItem_AddProcessTask(nNowUserId)
	local nQItemNum = tonumber(string.sub(sAttr,2,2))
	return nFlag,nRawardItem,nQItemNum
end


------------------------------------------------------物品配置-------------------------------------------
-- 3007311	物资募集符
tItem[3007311] = tItem[3007311] or {}
tItem[3007311]["Function"] = function(nItemId, sItemName)
	ActivityDailyItemUse_Open(nItemId)
end

-- 3600014	物资募集符
tItem[3600014] = tItem[3007311]

-- 3008731	材料收集令
tItem[3008731] = tItem[3008731] or {}
tItem[3008731]["Function"] = function(nItemId, sItemName)
	ActivityDailyItemUse_CLCollect(nItemId)
end

-- 3008729	征战抚恤令
tItem[3008729] = tItem[3008729] or {}
tItem[3008729]["Function"] = function(nItemId, sItemName)
	ActivityDailyItemUse_ZZTask(nItemId)
end

-- 3600013	幽然兰花令
tItem[3600013] = tItem[3600013] or {}
tItem[3600013]["Function"] = function(nItemId, sItemName)
	ActivityDailyItemUse_YLHKTask(nItemId)
end
