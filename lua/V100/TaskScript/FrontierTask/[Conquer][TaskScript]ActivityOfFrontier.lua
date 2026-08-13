------------------------------------------------------------------------------------
--Name:			151111[简体征服][活动脚本]新国境地图配套任务-跨服BOSS
--Purpose:		新国境地图配套任务-跨服BOSS
--Creator: 		张磊
--Created:		12/11/2015
------------------------------------------------------------------------------------


--[[
制作压缩包中的-跨服BOSS。

请接到单子的脚本同学接到需求后，和设计师（叶家麟）讨论下，无异议的话便开始制作。

任务来自：http://forum.nderp.99.com/Forum/TopicList-234299.aspx

]]--


------------------------------------------------------------------------------------
--掩码说明
--30001
-- #stc(145,09) 日常轮盘每天上限10次 



------------------------------------------------------------------------------------
--命名规范
--Frontier_KillBoss_
----------------------------------------------------------------------------------------





------------------------------------------表配置------------------------------------------------
local tDailypoint_Data = {}
	tDailypoint_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]

local tFrontier_KillBoss_Cont = {}
-- 任务掩码
tFrontier_KillBoss_Cont["Task_Id"] = 35025
-- tFrontier_KillBoss_Cont["Task_GetItem"] = 35031
tFrontier_KillBoss_Cont["Task_RushBoss"] = 35032
-- 轮盘任务ID
tFrontier_KillBoss_Cont["Task_LP"] = 3668

--玩家等级要求
tFrontier_KillBoss_Cont["Metempsychosis"] = 1
tFrontier_KillBoss_Cont["Level"] = 110
tFrontier_KillBoss_Cont["Level_Limit"] = G_User_MaxLev
tFrontier_KillBoss_Cont["LevelTime"] = 129

tFrontier_KillBoss_Cont["MapId"] = 3935
tFrontier_KillBoss_Cont["Space"] = 1
tFrontier_KillBoss_Cont["Space1"] = 4
tFrontier_KillBoss_Cont["Space2"] = 2
tFrontier_KillBoss_Cont["Space3"] = 5

--3200005 国境犒赏【降服圣兽】
tFrontier_KillBoss_Cont["CompItem"] = 3200005
tFrontier_KillBoss_Cont["CompItem_Attr"] = "0 1 0 1440 1"
-- 500点赛马积分礼包
tFrontier_KillBoss_Cont["Race"] = 500

-- 任务完成奖励
tFrontier_KillBoss_Cont["Gold"] = 50
tFrontier_KillBoss_Cont["Gongxun"] = 30
tFrontier_KillBoss_Cont["Item"] = 3002030
tFrontier_KillBoss_Cont["Item_Attr"] = "0 2"
tFrontier_KillBoss_Cont["Item_Attr1"] = "0 1 0 2880 1"
tFrontier_KillBoss_Cont["Item1"] = 3008735
tFrontier_KillBoss_Cont["Item2"] = 3008963
tFrontier_KillBoss_Cont["Item3"] = 3600021
tFrontier_KillBoss_Cont["Item4"] = 3600023
tFrontier_KillBoss_Cont["Item_Attr2"] = "0 1"



-- generator
local tFrontier_KillBoss_Generator = {}
-- 青龙
tFrontier_KillBoss_Generator[1] = {7885,18248}
-- 白虎
tFrontier_KillBoss_Generator[2] = {7886,18249}
-- 朱雀
tFrontier_KillBoss_Generator[3] = {7887,18247}
-- 玄武
tFrontier_KillBoss_Generator[4] = {7888,18246}

local tFrontier_KillBoss_Log = {}
	tFrontier_KillBoss_Log["Exchange"] = "0,0,%d,%d,12000261,2,%d,1"
	tFrontier_KillBoss_Log["PaceOpen"] = "0,0,%d,%d,12000261,2,%d,%d"
	tFrontier_KillBoss_Log["CompleteTask"] = "0,0,%d,%d,12000261,2,%s,%s"
	tFrontier_KillBoss_Log["OpenGJKS"] = "0,0,%d,%d,12000261,2,%s,%s"
	tFrontier_KillBoss_Log["CompleteFromNpc"] = "0,0,0,0,12000261,2,%d,1"
	
local tFrontier_KillBoss_Stc = {}
	tFrontier_KillBoss_Stc["Event"] = 142
	tFrontier_KillBoss_Stc["GetDebris"] = 16
	tFrontier_KillBoss_Stc["Complete"] = 17

local tFrontier_KillBoss_DHStc = {}
	tFrontier_KillBoss_DHStc["Event"] = 144
	tFrontier_KillBoss_DHStc["DataType"] = 94
	tFrontier_KillBoss_DHStc["Complete"] = {}
	tFrontier_KillBoss_DHStc["Complete"][1] = 6
	tFrontier_KillBoss_DHStc["Complete"][2] = 4
	tFrontier_KillBoss_DHStc["Complete"][3] = 2
	
local tFrontier_KillBoss_DHYWL = {}
	tFrontier_KillBoss_DHYWL["Item1"] = 3002926
	tFrontier_KillBoss_DHYWL["Attr1"] = "0 30"
	tFrontier_KillBoss_DHYWL["Item2"] = 3002030
	tFrontier_KillBoss_DHYWL["Attr2"] = "0 15"
	tFrontier_KillBoss_DHYWL["Log"] = "0,0,0,0,12000261,2,3002926[3002030],30[15]"
	
local tFrontier_KillBoss_NewStc = {}
	tFrontier_KillBoss_NewStc[1] = {}
	tFrontier_KillBoss_NewStc[1]["EventType"] = 145
	tFrontier_KillBoss_NewStc[1]["DataType"] = 09
	tFrontier_KillBoss_NewStc[1]["Limit"] = 10
	
local tFrontier_KillBoss_Effect = {}

tFrontier_KillBoss_Effect["self"] = "self"

-- 击杀圣兽
tFrontier_KillBoss_Effect["JSSS"] = "angelwing"

-- 杀小怪计数
local tFrontier_KillBoss_Number = {}

	tFrontier_KillBoss_Number[7889] = {3,1,Task_SetTaskDetailData1}
	tFrontier_KillBoss_Number[7890] = {3,2,Task_SetTaskDetailData2}
	tFrontier_KillBoss_Number[7891] = {3,3,Task_SetTaskDetailData3}
	tFrontier_KillBoss_Number[7892] = {3,4,Task_SetTaskDetailData4}

	
-- 决战冥城时间表
local tFrontier_KillBoss_TaskInfo = {}
	--一 三 五参赛时间
	tFrontier_KillBoss_TaskInfo["JoinMatchTime"] ={}
	tFrontier_KillBoss_TaskInfo["JoinMatchTime"][1] = "1 00:00 1 23:59"
	tFrontier_KillBoss_TaskInfo["JoinMatchTime"][2] = "3 00:00 3 23:59"
	tFrontier_KillBoss_TaskInfo["JoinMatchTime"][3] = "5 00:00 5 23:59"
	
--Stc掩码 
local tFrontier_KillBoss_Stc={}
	tFrontier_KillBoss_Stc["EventType"] = 136
	
	tFrontier_KillBoss_Stc["DataType"] = {}
	--是否已完成
	tFrontier_KillBoss_Stc["DataType"][1] = 38
	--通过难度
	tFrontier_KillBoss_Stc["DataType"][2] = 39
	--今日是否领过排名奖励
	tFrontier_KillBoss_Stc["DataType"][3] = 40
	--通关地图
	tFrontier_KillBoss_Stc["DataType"][4] = 41
	--入场时间
	tFrontier_KillBoss_Stc["DataType"][5] = 42
	--出场时间
	tFrontier_KillBoss_Stc["DataType"][6] = 43
	--记录魔值
	tFrontier_KillBoss_Stc["DataType"][7] = 44
	--记录回廊顺序
	tFrontier_KillBoss_Stc["DataType"][8] = 45
	--是否击杀冥王
	tFrontier_KillBoss_Stc["DataType"][9] = 46
	--记录宝箱开启次数
	tFrontier_KillBoss_Stc["DataType"][10] = 47
	--记录完成时间
	tFrontier_KillBoss_Stc["DataType"][11] = 48
	
	--记录宝箱开启次数（用3个掩码分别记录）
	tFrontier_KillBoss_Stc["DataType"][12] = 29			-- 14429
	tFrontier_KillBoss_Stc["DataType"][13] = 30			-- 14430
	
	--获取除魔值是否显示总值标记
	tFrontier_KillBoss_Stc["EventTypeMonster"] = 138
	tFrontier_KillBoss_Stc["DataTypeMonster"] = 93
	
	-- 记录玩家每周在周几参与活动，每周只可参与一次
	tFrontier_KillBoss_Stc["EventType_2"] = 144
	tFrontier_KillBoss_Stc["DataType_2"] = 59
	-- 记录本周是否领取通关奖励的关数
	tFrontier_KillBoss_Stc["DataType_3"] = 86

	--决战冥城难度掩码
local tFrontier_KillBoss_TaskPassId = {}
	tFrontier_KillBoss_TaskPassId[1] = 6472
	tFrontier_KillBoss_TaskPassId[2] = 6473
	tFrontier_KillBoss_TaskPassId[3] = 6474
	tFrontier_KillBoss_TaskPassId[4] = 6475
	
local tFrontier_KillBoss_MapId = {}
	tFrontier_KillBoss_MapId["Easy"] = 3959
	tFrontier_KillBoss_MapId["Hard"] = 3969
	
local tFrontier_KillBoss_MapIdPos = {}
	tFrontier_KillBoss_MapIdPos["MapId"] = 1002
	tFrontier_KillBoss_MapIdPos["NpcX"] = 299
	tFrontier_KillBoss_MapIdPos["NpcY"] = 152
	tFrontier_KillBoss_MapIdPos["CXCY"] = 5
	
local tFrontier_KillBoss_LevelLimit = {}
	tFrontier_KillBoss_LevelLimit["Level"] = 110
	tFrontier_KillBoss_LevelLimit["Meto"] = {}
	tFrontier_KillBoss_LevelLimit["Meto"][1] = 0
	tFrontier_KillBoss_LevelLimit["Meto"][2] = 1
	tFrontier_KillBoss_LevelLimit["Meto"][3] = 2
	
local tFrontier_KillBoss_AllMapId = {}
	tFrontier_KillBoss_AllMapId[1] = 3955
	tFrontier_KillBoss_AllMapId[2] = 3956
	tFrontier_KillBoss_AllMapId[3] = 3957
	tFrontier_KillBoss_AllMapId[4] = 3958
	tFrontier_KillBoss_AllMapId[5] = 3959
	tFrontier_KillBoss_AllMapId[6] = 3960
	tFrontier_KillBoss_AllMapId[7] = 3961
	tFrontier_KillBoss_AllMapId[8] = 3962
	tFrontier_KillBoss_AllMapId[9] = 3963
	tFrontier_KillBoss_AllMapId[10] = 3964
	tFrontier_KillBoss_AllMapId[11] = 3965
	tFrontier_KillBoss_AllMapId[12] = 3966
	tFrontier_KillBoss_AllMapId[13] = 3967
	tFrontier_KillBoss_AllMapId[14] = 3968
    tFrontier_KillBoss_AllMapId[15] = 3969
	
local tFrontier_KillBoss_City = {}	
	tFrontier_KillBoss_City["Exp_easy"] = {}
	tFrontier_KillBoss_City["Cul_easy"] = {}
	tFrontier_KillBoss_City["Level_easy"] = {}
	
	-- 未转 一转  简单难度奖励
	-- nIndex==0   给第1 2 3 4关奖励
	tFrontier_KillBoss_City["Exp_easy"][1] = 1250		-- 经验
	tFrontier_KillBoss_City["Cul_easy"][1] = 500	-- 满经验则给修行值
	tFrontier_KillBoss_City["Level_easy"][1] = 3200322	-- 129级及以下玩家将获得时效经验包
	-- nIndex==1   给第2 3 4关奖励
	tFrontier_KillBoss_City["Exp_easy"][2] = 1125		-- 经验
	tFrontier_KillBoss_City["Cul_easy"][2] = 450	-- 满经验则给修行值
	tFrontier_KillBoss_City["Level_easy"][2] = 3200323	-- 129级及以下玩家将获得时效经验包
	-- nIndex==2   给第3 4关奖励
	tFrontier_KillBoss_City["Exp_easy"][3] = 875		-- 经验
	tFrontier_KillBoss_City["Cul_easy"][3] = 350		-- 满经验则给修行值
	tFrontier_KillBoss_City["Level_easy"][3] = 3200324		-- 129级及以下玩家将获得时效经验包
	-- nIndex==3    给第4关奖励
	tFrontier_KillBoss_City["Exp_easy"][4] = 500		-- 经验
	tFrontier_KillBoss_City["Cul_easy"][4] = 200	-- 满经验则给修行值
	tFrontier_KillBoss_City["Level_easy"][4] = 3200325	-- 129级及以下玩家将获得时效经验包
	
	tFrontier_KillBoss_City["Item1_easy"] = 3006982		-- 冥王金钥
	tFrontier_KillBoss_City["Item2_easy"] = 3008100		-- 6级房屋建材包
	
	tFrontier_KillBoss_City["Golden_easy"] = 300			-- 黄金联赛积分
	tFrontier_KillBoss_City["FullLevel_easy"] = "0,0,3100069,1,12000261,2,6[50][3008100][3006982],%d[300][3][3]"
	tFrontier_KillBoss_City["LessLevel_easy"] = "0,0,3100069,1,12000261,2,4[50][3008100][3006982],%d[300][3][3]"
	tFrontier_KillBoss_City["LevelTime_easy"] = "0,0,3100069,1,12000261,2,%d[50][3008100][3006982],1[300][3][3]"
	tFrontier_KillBoss_City["FullLevel_easy_1"] = "0,0,3100069,1,12000261,2,6[50],%d[300]"
	tFrontier_KillBoss_City["LessLevel_easy_1"] = "0,0,3100069,1,12000261,2,4[50],%d[300]"
	tFrontier_KillBoss_City["LevelTime_easy_1"] = "0,0,3100069,1,12000261,2,%d[50],1[300]"
	
	tFrontier_KillBoss_City["Exp"] = {}
	tFrontier_KillBoss_City["Streng"] = {}
	tFrontier_KillBoss_City["Level"] = {}
	-- 二转以上的  精英难度奖励
	-- nIndex==0   给第1 2 3 4关奖励
	tFrontier_KillBoss_City["Exp"][1] = 3000		-- 经验
	tFrontier_KillBoss_City["Streng"][1] = 1500	-- 满经验则给气力值
	tFrontier_KillBoss_City["Level"][1] = 3200326	-- 129级及以下玩家将获得时效经验包
	-- nIndex==1   给第2 3 4关奖励
	tFrontier_KillBoss_City["Exp"][2] = 2700		-- 经验
	tFrontier_KillBoss_City["Streng"][2] = 1350	-- 满经验则给气力值
	tFrontier_KillBoss_City["Level"][2] = 3200327	-- 129级及以下玩家将获得时效经验包
	-- nIndex==2   给第3 4关奖励
	tFrontier_KillBoss_City["Exp"][3] = 2100		-- 经验
	tFrontier_KillBoss_City["Streng"][3] = 1050		-- 满经验则给气力值
	tFrontier_KillBoss_City["Level"][3] = 3200328		-- 129级及以下玩家将获得时效经验包
	-- nIndex==3    给第4关奖励
	tFrontier_KillBoss_City["Exp"][4] = 1200		-- 经验
	tFrontier_KillBoss_City["Streng"][4] = 600	-- 满经验则给气力值
	tFrontier_KillBoss_City["Level"][4] = 3200329	-- 129级及以下玩家将获得时效经验包
	
	tFrontier_KillBoss_City["Item"] = 3008059		-- 阴之玉
	tFrontier_KillBoss_City["Attr"] = "0 3 0 10080 1" -- 4320
	
	tFrontier_KillBoss_City["Item1"] = 3006982		-- 冥王金钥
	tFrontier_KillBoss_City["Item2"] = 3008100		-- 6级房屋建材包
	
	tFrontier_KillBoss_City["Golden"] = 500			-- 黄金联赛积分
	tFrontier_KillBoss_City["FullLevel"] = "0,0,3100069,1,12000261,2,12[3008059][50][3008100][3006982],%d[3][500][3][3]"
	tFrontier_KillBoss_City["LessLevel"] = "0,0,3100069,1,12000261,2,4[3008059][50][3008100][3006982],%d[3][500][3][3]"
	tFrontier_KillBoss_City["LevelTime"] = "0,0,3100069,1,12000261,2,%d[3008059][50][3008100][3006982],1[3][500][3][3]"
	tFrontier_KillBoss_City["FullLevel_1"] = "0,0,3100069,1,12000261,2,12[3008059][50],%d[3][500]"
	tFrontier_KillBoss_City["LessLevel_1"] = "0,0,3100069,1,12000261,2,4[3008059][50],%d[3][500]"
	tFrontier_KillBoss_City["LevelTime_1"] = "0,0,3100069,1,12000261,2,%d[3008059][50],1[3][500]"
	
	
--通缉倭寇  相关数据
local tFrontier_KillBoss_ZCKill = {}
	tFrontier_KillBoss_ZCKill["Meto"] = 0
	tFrontier_KillBoss_ZCKill["Level"] = 90	

	tFrontier_KillBoss_ZCKill["TaskId"] = 2376
	tFrontier_KillBoss_ZCKill["KillNum"] = 200
	
	tFrontier_KillBoss_ZCKill["ChkTime"] = {}
	tFrontier_KillBoss_ZCKill["ChkTime"][1] = "2 00:00 2 23:59"
	tFrontier_KillBoss_ZCKill["ChkTime"][2] = "4 00:00 4 23:59"
	tFrontier_KillBoss_ZCKill["ChkTime"][3] = "6 00:00 6 23:59"
	
	
	tFrontier_KillBoss_ZCKill["Complete"] = "0,0,3100070,1,12000261,2,2376,200"
	
	tFrontier_KillBoss_ZCKill["Reward"] = {}
	tFrontier_KillBoss_ZCKill["Reward"][1] = 1200
	tFrontier_KillBoss_ZCKill["Reward"][2] = 600
	tFrontier_KillBoss_ZCKill["Reward"][3] = 300
	
	tFrontier_KillBoss_ZCKill["Log"] = {}
	tFrontier_KillBoss_ZCKill["Log"][1] = "0,0,3100070,1,12000261,2,4,1200"
	tFrontier_KillBoss_ZCKill["Log"][2] = "0,0,3100070,1,12000261,2,6,600"
	tFrontier_KillBoss_ZCKill["Log"][3] = "0,0,3100070,1,12000261,2,12,300"
	
	tFrontier_KillBoss_ZCKill["OldLog"] = {}
	tFrontier_KillBoss_ZCKill["OldLog"][1] = "0,0,0,0,10001189,2,4,1200"
	tFrontier_KillBoss_ZCKill["OldLog"][2] = "0,0,0,0,10001189,2,6,600"
	tFrontier_KillBoss_ZCKill["OldLog"][3] = "0,0,0,0,10001189,2,12,300"
	
	tFrontier_KillBoss_ZCKill["NewLog"] = "0,0,0,0,12000388,1[7],0,0"

local tFrontier_KillBoss_SSPack = {}
	tFrontier_KillBoss_SSPack["Space"] = 1
	tFrontier_KillBoss_SSPack["Item1"] = 3100070
	tFrontier_KillBoss_SSPack["Item2"] = 710214
	tFrontier_KillBoss_SSPack["Attr"] = "0 1 3"
	tFrontier_KillBoss_SSPack["GetLog"] = "0,0,3100071,1,12000261,2,3100070[710214],1[1]"
	
local tFrontier_KillBoss_SpLog = {}

	tFrontier_KillBoss_SpLog["MingCheng"] = "0,0,3008731,1,12000388,1[6],0,0"
	tFrontier_KillBoss_SpLog["ZCSD"] = "0,0,3008731,1,12000388,1[7],0,0"
	
local tFrontier_KillBoss_MonsterBossId = {}
	tFrontier_KillBoss_MonsterBossId[1] = 7885
	tFrontier_KillBoss_MonsterBossId[2] = 7886
	tFrontier_KillBoss_MonsterBossId[3] = 7887
	tFrontier_KillBoss_MonsterBossId[4] = 7888	
	
local tFrontier_KillBoss_CoatWarehouse = {}
	tFrontier_KillBoss_CoatWarehouse["GlobalAc"] = 51131
	
------------------------------------------逻辑操作----------------------------------------------

-- 击杀小怪
function Frontier_KillBoss_KillMonster()
		--组队共享
	local nPlayerNumber = Get_UserTeamNumbers()
	if  nPlayerNumber >= 2 then
		--队员
		User_TeamExeFuncByTeamer(2,"Frontier_KillBoss_TeamKillMonster")
		
		-- 添加杀满3只后，出现boss
		local nMonstereypeId = Get_MonsterType()
		
		if Task_ChkTaskDetail(tFrontier_KillBoss_Cont["Task_RushBoss"]) then
			local nNum =  Get_TaskDetail(tFrontier_KillBoss_Cont["Task_RushBoss"],tostring(tFrontier_KillBoss_Number[nMonstereypeId][2])) + 1
    	
			local nBossFlag = tFrontier_KillBoss_Number[nMonstereypeId][2]
			local nBossGen = tFrontier_KillBoss_Generator[nBossFlag][2]
			local nBossId = tFrontier_KillBoss_Generator[nBossFlag][1]

			if (nNum >= tFrontier_KillBoss_Number[nMonstereypeId][1]) and (Get_SysTempData(1,Get_UserMapId(),tFrontier_KillBoss_MonsterBossId[nBossFlag]) == 0) then
				tFrontier_KillBoss_Number[nMonstereypeId][3](tFrontier_KillBoss_Cont["Task_RushBoss"],0)			
				
				if Monster_AddMonster(tFrontier_KillBoss_Cont["MapId"],Get_UserPositionX()+2,Get_UserPositionY()+2,nBossGen,nBossId) then
					Sys_SetTempData(1,Get_UserMapId(),tFrontier_KillBoss_MonsterBossId[nBossFlag],1)
					User_TalkChannel2005(tFrontier_KillBoss_Text["Msg"]["KillFind"])
				end
			end
		end
		
	else
		-- 判断掩码和等级 1转110级
		local nMete = tFrontier_KillBoss_Cont["Metempsychosis"]
		local nLevel = tFrontier_KillBoss_Cont["Level"]
		
		if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
			return
		end
		
		local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
		
		if not Task_ChkTaskDetail(nTaskId) then
			return
		end

		if Get_TaskDetailData6(nTaskId) ~= 0 then
			return
		end	
	
		-- 添加杀满3只后，出现boss
		local nMonstereypeId = Get_MonsterType()
		
		if Task_ChkTaskDetail(tFrontier_KillBoss_Cont["Task_RushBoss"]) then
			local nNum =  Get_TaskDetail(tFrontier_KillBoss_Cont["Task_RushBoss"],tostring(tFrontier_KillBoss_Number[nMonstereypeId][2])) + 1
    	
			local nBossFlag = tFrontier_KillBoss_Number[nMonstereypeId][2]
			local nBossGen = tFrontier_KillBoss_Generator[nBossFlag][2]
			local nBossId = tFrontier_KillBoss_Generator[nBossFlag][1]

			if (nNum >= tFrontier_KillBoss_Number[nMonstereypeId][1]) and (Get_SysTempData(1,Get_UserMapId(),tFrontier_KillBoss_MonsterBossId[nBossFlag]) == 0) then
				tFrontier_KillBoss_Number[nMonstereypeId][3](tFrontier_KillBoss_Cont["Task_RushBoss"],0)
				
							
				if Monster_AddMonster(tFrontier_KillBoss_Cont["MapId"],Get_UserPositionX()+2,Get_UserPositionY()+2,nBossGen,nBossId) then
					Sys_SetTempData(1,Get_UserMapId(),tFrontier_KillBoss_MonsterBossId[nBossFlag],1)
					User_TalkChannel2005(tFrontier_KillBoss_Text["Msg"]["KillFind"])
				end
			else
				tFrontier_KillBoss_Number[nMonstereypeId][3](tFrontier_KillBoss_Cont["Task_RushBoss"],nNum)
				User_TalkChannel2005(string.format(tFrontier_KillBoss_Text["Msg"]["KillMonster"],nNum,Get_MonsterName()))
			end
		end
	end	
end

function Frontier_KillBoss_TeamKillMonster(nUserId)
-- 判断掩码和等级 1转110级
	local nMete = tFrontier_KillBoss_Cont["Metempsychosis"]
	local nLevel = tFrontier_KillBoss_Cont["Level"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete,nUserId) then
		return
	end
	
	local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	
	if Get_TaskDetailData6(nTaskId) ~= 0 then
		return
	end
	
	-- 添加杀满10只后，出现boss
	local nMonstereypeId = Get_MonsterType()
	
	if Task_ChkTaskDetail(tFrontier_KillBoss_Cont["Task_RushBoss"],nUserId) then
		local nNum =  Get_TaskDetail(tFrontier_KillBoss_Cont["Task_RushBoss"],tostring(tFrontier_KillBoss_Number[nMonstereypeId][2]),nUserId) + 1

		local nBossFlag = tFrontier_KillBoss_Number[nMonstereypeId][2]
		local nBossGen = tFrontier_KillBoss_Generator[nBossFlag][2]
		local nBossId = tFrontier_KillBoss_Generator[nBossFlag][1]
	
		-- if (nNum >= tFrontier_KillBoss_Number[nMonstereypeId][1]) and (Monster_GetMonsterByName(tFrontier_KillBoss_Cont["MapId"],tFrontier_KillBoss_Text["MonsterName"][nBossFlag]) == 0) then
			-- tFrontier_KillBoss_Number[nMonstereypeId][3](tFrontier_KillBoss_Cont["Task_RushBoss"],0)
			-- Monster_AddMonster(tFrontier_KillBoss_Cont["MapId"],Get_UserPositionX(nUserId)+2,Get_UserPositionY(nUserId)+2,nBossGen,nBossId)
			-- User_TalkChannel2005(tFrontier_KillBoss_Text["Msg"]["KillFind"],nUserId)
		-- else
			tFrontier_KillBoss_Number[nMonstereypeId][3](tFrontier_KillBoss_Cont["Task_RushBoss"],nNum,nUserId)
			User_TalkChannel2005(string.format(tFrontier_KillBoss_Text["Msg"]["KillMonster"],nNum,Get_MonsterName()),nUserId)			
		-- end
	end
end


-- 击杀BOSS
function Frontier_KillBoss_KillBoss()
	--BOSS 计数器清零
	local nMonstereypeId = Get_MonsterType()

	Sys_SetTempData(1,Get_UserMapId(),nMonstereypeId,0)
	
	--组队共享
	local nPlayerNumber = Get_UserTeamNumbers()
	if  nPlayerNumber >= 2 then
		--队员
		User_TeamExeFuncByTeamer(2,"Frontier_KillBoss_KillBossComplete")
	else
		-- 判断掩码和等级 1转110级
		local nMete = tFrontier_KillBoss_Cont["Metempsychosis"]
		local nLevel = tFrontier_KillBoss_Cont["Level"]
		
		if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
			return
		end
		
		local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
		
		if not Task_ChkTaskDetail(nTaskId) then
			return
		end
		
		-- 满足条件
		--击杀BOSS直接完成任务，到NPC领奖
		if Get_TaskDetailData6(nTaskId) ~= 0 then
			return
		end
		
		Task_SetTaskDetailData6(nTaskId,1)
		Task_SetTaskDetailData1(nTaskId,0)
		Task_SetTaskDetailData7(nTaskId,os.time())
		
		local Task_RushBoss = tFrontier_KillBoss_Cont["Task_RushBoss"]
	
		Task_SetTaskDetailData1(Task_RushBoss,0)
		Task_SetTaskDetailData2(Task_RushBoss,0)
		Task_SetTaskDetailData3(Task_RushBoss,0)
		Task_SetTaskDetailData4(Task_RushBoss,0)
		
		Sys_MsgBox(tFrontier_KillBoss_Text["Msg"]["CompleteTask"])
		User_EffectAdd(tFrontier_KillBoss_Effect["self"],tFrontier_KillBoss_Effect["JSSS"])
	end	
end

--完成击杀boss
function Frontier_KillBoss_KillBossComplete(nUserId)
	-- 判断掩码和等级 1转110级
	local nMete = tFrontier_KillBoss_Cont["Metempsychosis"]
	local nLevel = tFrontier_KillBoss_Cont["Level"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete,nUserId) then
		return
	end
	
	local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end	
	
	-- 满足条件
	--击杀BOSS直接完成任务，到NPC领奖
	if Get_TaskDetailData6(nTaskId,nUserId) ~= 0 then
		return
	end
	
	Task_SetTaskDetailData6(nTaskId,1,nUserId)
	Task_SetTaskDetailData1(nTaskId,0,nUserId)
	Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
	
	local Task_RushBoss = tFrontier_KillBoss_Cont["Task_RushBoss"]
	
	Task_SetTaskDetailData1(Task_RushBoss,0,nUserId)
	Task_SetTaskDetailData2(Task_RushBoss,0,nUserId)
	Task_SetTaskDetailData3(Task_RushBoss,0,nUserId)
	Task_SetTaskDetailData4(Task_RushBoss,0,nUserId)
	
	Sys_MsgBox(tFrontier_KillBoss_Text["Msg"]["CompleteTask"],"NULL","NULL",nUserId)
	User_EffectAdd(tFrontier_KillBoss_Effect["self"],tFrontier_KillBoss_Effect["JSSS"],nUserId)
end

-- 完成任务，领取奖励
function Frontier_KillBoss_CompleteReward(nNpcId)
	-- 判断掩码和等级 1转110级
	local nMete = tFrontier_KillBoss_Cont["Metempsychosis"]
	local nLevel = tFrontier_KillBoss_Cont["Level"]
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return
	end
	
	local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		return
	end
	
	local nFlag = Get_TaskDetailData6(nTaskId)
	local nComp = Get_TaskDetailData1(nTaskId)
	
	if nFlag ~= 1 then
	    LinkNpcGossipFunc_New(nNpcId,"800-1")
		return
	elseif nComp == 1 then
		LinkNpcGossipFunc_New(nNpcId,"900-1")
		return
	end
	
	if not User_CheckLeftSpace(tFrontier_KillBoss_Cont["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"700-1")
		return
	end
	
	-- 给奖励
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	Task_SetTaskDetailData7(nTaskId,os.time())
	
	local nCompItem = tFrontier_KillBoss_Cont["CompItem"]
	
	Item_AddNewItem(nCompItem,tFrontier_KillBoss_Cont["CompItem_Attr"])
	-- 打完成LOG，给礼包	
	local sLog = string.format(tFrontier_KillBoss_Log["CompleteFromNpc"],nCompItem)
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tFrontier_KillBoss_Text["Msg"]["CompleteTheTask"])
end

-- 积分礼包
function Frontier_KillBoss_Race(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local nRace = tFrontier_KillBoss_Cont["Race"]
	
	User_AddRidingPoints(nRace)
	Sys_SaveActionFestivalLog(string.format(tFrontier_KillBoss_Log["PaceOpen"],nItemId,1,14,nRace))
	User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["GetRace"])
end

-- 3600022	妙计锦囊·降伏
function Frontier_KillBoss_TaskComplete(nItemId)
	local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
	local nTask_Rush = tFrontier_KillBoss_Cont["Task_RushBoss"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		Task_AddTaskDetail(nTaskId)
		Task_SetTaskDetailData7(nTaskId,os.time())
	end
	
	if not Task_ChkTaskDetail(nTask_Rush) then
		Task_AddTaskDetail(nTask_Rush)
		Task_SetTaskDetailData7(nTask_Rush,os.time())	
	end
	
	-- 判断是否已经完成
	
	local nComp = Get_TaskDetailData1(nTaskId)
	local nData6 = Get_TaskDetailData6(nTaskId)
	
	if nComp ~= 0 and nData6 ~= 0 then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["CompleteTask"])
		return
	end
	--判断背包空间
	if not User_CheckLeftSpace(tFrontier_KillBoss_Cont["Space1"]) then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["NoSpace"])
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	local nItem = tFrontier_KillBoss_Cont["Item"]
	local nItem1 = tFrontier_KillBoss_Cont["Item1"]
	local nItem2 = tFrontier_KillBoss_Cont["Item2"]
	local nItem3 = tFrontier_KillBoss_Cont["Item3"]
	local nItem4 = tFrontier_KillBoss_Cont["Item4"]
	
	-- 给奖励
	Task_SetTaskDetailData1(nTaskId,1)
	Task_SetTaskDetailData6(nTaskId,1)
	Task_SetTaskDetailCompleteFlag(nTaskId,1)
	Task_SetTaskDetailData7(nTaskId,os.time())
	
	-- 添加奖励
	GoldenLeaguePoints_Add(tFrontier_KillBoss_Cont["Gold"])
	National_War_AddIntegral(tFrontier_KillBoss_Cont["Gongxun"])
	
	Item_AddNewItem(nItem,tFrontier_KillBoss_Cont["Item_Attr"])
	Item_AddNewItem(nItem1,"")
	Item_AddNewItem(nItem2,tFrontier_KillBoss_Cont["Item_Attr1"])
	Item_AddNewItem(nItem3,tFrontier_KillBoss_Cont["Item_Attr1"])
	Item_AddNewItem(nItem4,tFrontier_KillBoss_Cont["Item_Attr2"])
	
	local sLog = tFrontier_KillBoss_Log["CompleteTask"]
	Sys_SaveActionFestivalLog(string.format(sLog,nItemId,1,string.format("%d[%d][%d][%d][%d]",nItem,nItem1,nItem2,nItem3,nItem4),string.format("%d[%d][%d][%d][%d]",2,1,1,1,1)))
	User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["Complete"])
end

-- 
function Frontier_KillBoss_DayTask(nItemId)
	local nTaskId = tFrontier_KillBoss_Cont["Task_LP"]
	local nOpt = 0
	
--判断任务是否可以创建
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	User_TaskReward(nTaskId,nOpt)
end

--轮盘抽奖
function Frontier_KillBoss_DayTaskOnce(nItemId)
	local nTaskId = tFrontier_KillBoss_Cont["Task_LP"]	
--轮盘抽奖
	if nItemId == 3600023 then
		local nEvent = tFrontier_KillBoss_NewStc[1]["EventType"]
		local nType = tFrontier_KillBoss_NewStc[1]["DataType"]
		local nLimit = tFrontier_KillBoss_NewStc[1]["Limit"]
		
		-- 判断隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0)
		end
		
		local nData = Get_UserStatisticValue(nEvent,nType)
		if nData >= nLimit then
			Sys_MsgBox(tFrontier_KillBoss_Text["DayLimitTen"])
			return
		end
		
		-- 背包空间
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tFrontier_KillBoss_Text["NoSpace"])
			return
		end
		
		-- 任务掩码是否存在 1056
		if not Task_ChkTaskDetail(nTaskId) then
		-- 新增任务掩码 
			if not Task_AddTaskDetail(nTaskId) then
				return
			end
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then			
			-- Task_SetTaskDetailCompleteFlag(nTaskId,1)
			-- 设置掩码
			Task_AddStatistic(nEvent,nType,1,1)
			Task_SetStcTimestamp(nEvent,nType,0)
			
			User_TaskReward(nTaskId,1) --轮盘抽奖
			Sys_SaveActionFestivalLog(string.format(tFrontier_KillBoss_Log["PaceOpen"],nItemId,1,0,0))
		end	
	end
end

-- 判断当天是周几（1 3 5）
function Frontier_KillBoss_JudgeWeekDay()
	local nIndex = 0
	local nWeekDay = 0
	for k ,v in pairs(tFrontier_KillBoss_TaskInfo["JoinMatchTime"])do
		if Sys_ChkWeedTime(v) then
			nIndex = k
		end
	end
	if nIndex == 1 then
		nWeekDay = 1
	elseif nIndex == 2 then
		nWeekDay = 3
	elseif nIndex == 3 then
		nWeekDay = 5
	end
	return nWeekDay
end

-- 冥城令
function Frontier_KillBoss_MCTask(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	local nMete = tFrontier_KillBoss_Cont["Metempsychosis"]
	local nLevel = tFrontier_KillBoss_Cont["Level"]
	local nLevelTime = tFrontier_KillBoss_Cont["LevelTime"]
	local nUserLevel = Get_UserLevel()
	
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete - 1) then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["NoLevel"])
		return
	end
	
	-- 时间检测
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tFrontier_KillBoss_TaskInfo["JoinMatchTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end
	
	if nFlag == false then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["CanNotUse"])
		return
	end
	
	-- stc(144,59)
	-- 每周1 3 5只能使用或参与一次决战冥城活动
	-- 判断每周是否已参与过
	local nEvent_2 = tFrontier_KillBoss_Stc["EventType_2"]
	local nWeekType = tFrontier_KillBoss_Stc["DataType_2"]
	local nIndexType = tFrontier_KillBoss_Stc["DataType_3"]
	local nEvent_1 = tFrontier_KillBoss_Stc["EventType"]
	local nKillType = tFrontier_KillBoss_Stc["DataType"][9]
	
	if Task_StcInterval(nEvent_1,nKillType,1,5) then
		Task_SetStatistic(nEvent_1,nKillType,0,1,0)
		Task_SetStcTimestamp(nEvent_1,nKillType,0,0)
	end
	
	if Task_ChkStcValue(nEvent_2,nWeekType,">",0) then
		if Task_StcInterval(nEvent_2,nWeekType,1,5) and nFlag then
			Task_SetStatistic(nEvent_2,nWeekType,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nWeekType,0,0)

			Task_SetStatistic(nEvent_2,nIndexType,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nIndexType,0,0)

			Task_SetStatistic(nEvent_1,nKillType,0,1,0)
			Task_SetStcTimestamp(nEvent_1,nKillType,0,0)
			
			-- 隔周 清理开启宝箱的掩码
			local nEvent = tFrontier_KillBoss_Stc["EventType"]
			local nType1 = tFrontier_KillBoss_Stc["DataType"][10]
			local nType2 = tFrontier_KillBoss_Stc["DataType"][12]
			local nType3 = tFrontier_KillBoss_Stc["DataType"][13]
			
			Task_SetStatistic(nEvent,nType1,0,1,0)
			Task_SetStcTimestamp(nEvent,nType1,0,0)
			
			Task_SetStatistic(nEvent_2,nType2,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nType2,0,0)
			
			Task_SetStatistic(nEvent_2,nType3,0,1,0)
			Task_SetStcTimestamp(nEvent_2,nType3,0,0)
			
		elseif Task_ChkStcValue(nEvent_2,nIndexType,">=",4) then
			User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["CanNotUseWeek"])
			return
		end
	end

	-- 判断是否有空间
	local nUserMete = Get_UserMetempsychosis()
	local nSpaceNum = 0
	if nUserMete >= 2 then 
		nSpaceNum = tFrontier_KillBoss_Cont["Space3"]
	else 
		nSpaceNum = tFrontier_KillBoss_Cont["Space2"]
	end 
	if nUserLevel <= nLevelTime then
		nSpaceNum = nSpaceNum + 1
	end
	
	--鸡年年兽活动获得 稀有课本随机包
	if Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		nSpaceNum = nSpaceNum +1
	end
	--南宫背包空间判断
	if Sys_ChkFullTime(tCoatWarehouse_Sale_Const["ActivityTime"]) then
		nSpaceNum = nSpaceNum +1
	end
	-- 日常得积分
	-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- nSpaceNum = nSpaceNum +1
		-- end
	-- end
	
	--新服主题周 每周额外产出部分
	if Sys_ChkFullTime(NewServerWeeks_GetActTime("ActAllTime")) then
		local nWeek = NewServerWeeks_ChkWeekTime()
		nSpaceNum = nSpaceNum + tNewSeverActivity_GetActSpace(2,nWeek)
	end
	
	--手拉手活动获得活跃币
	if Sys_ChkFullTime(tActivityTime["NewHandInHand"]["ActivityTime"]) then
		nSpaceNum = nSpaceNum +1
	end
	
	if not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["MCNospace"])
		return
	end
	
	local nEvent = tFrontier_KillBoss_Stc["EventType"]
	local nType = tFrontier_KillBoss_Stc["DataType"][1]
	
	-- 判断是否已经完成
	--隔2天清空用户已领取的记录
	if Task_ChkStcValue(nEvent,nType,"==",0) then	
		if not Item_DelItem(nItemId) then
			return
		end
	elseif Task_StcInterval(nEvent,nType,1,4) then
		if not Item_DelItem(nItemId) then
			return
		end		
	else
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleted"])
		return
	end
	
	-- 是否击杀冥王
	local nJudge = false
	if not Task_ChkStcValue(nEvent,nKillType,"==",1) then
		nJudge = true
	end
	
	-- for k,v in pairs(tFrontier_KillBoss_Stc["DataType"]) do
		-- Task_SetStatistic(nEvent,v,0,1)
		-- Task_SetStcTimestamp(nEvent,v,0)
	-- end
	
	for k = 1,8 do
		local nClearType = tFrontier_KillBoss_Stc["DataType"][k]
		Task_SetStatistic(nEvent,nClearType,0,1)
		Task_SetStcTimestamp(nEvent,nClearType,0)
	end

	local nType11 = tFrontier_KillBoss_Stc["DataType"][11]
	Task_SetStatistic(nEvent,nType11,0,1)
	Task_SetStcTimestamp(nEvent,nType11,0)
	
	Task_SetStatistic(tFrontier_KillBoss_Stc["EventTypeMonster"],tFrontier_KillBoss_Stc["DataTypeMonster"],0,1)
	Task_SetStcTimestamp(tFrontier_KillBoss_Stc["EventTypeMonster"],tFrontier_KillBoss_Stc["DataTypeMonster"],0)
	--删除task_detail掩码
	for o,p in pairs(tFrontier_KillBoss_TaskPassId) do 
		if Task_ChkTaskDetail(p) then
			Task_SetTaskDetailCompleteFlag(p,0)
			Task_DelTaskDetail(p) 
		end
	end
	
	-- if not Task_ChkTaskDetail(tFrontier_KillBoss_TaskPassId[4]) then
		-- Task_AddTaskDetail(tFrontier_KillBoss_TaskPassId[4])
		-- Task_SetTaskDetailData7(tFrontier_KillBoss_TaskPassId[4],os.time())
	-- end
	
	-- 直接接取精英任务并完成
	local nType1 = tFrontier_KillBoss_Stc["DataType"][2]
	local nType2 = tFrontier_KillBoss_Stc["DataType"][4]
	local nType3 = tFrontier_KillBoss_Stc["DataType"][9]

	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)

	-- 每周只可以使用一次
	local nWeekDay = Frontier_KillBoss_JudgeWeekDay()
	Task_SetStatistic(nEvent_2,nWeekType,nWeekDay,1)
	Task_SetStcTimestamp(nEvent_2,nWeekType,0)

	Task_SetStatistic(nEvent,nType3,1,1)
	Task_SetStcTimestamp(nEvent,nType3,0)

	if User_JudgeLevelAndMetempsychosis(15,tFrontier_KillBoss_LevelLimit["Meto"][3]) then
		Task_SetStatistic(nEvent,nType1,3,1)
		Task_SetStcTimestamp(nEvent,nType1,0)
		Task_SetStatistic(nEvent,nType2,tFrontier_KillBoss_MapId["Hard"],1)
		Task_SetStcTimestamp(nEvent,nType2,0)
	else
		Task_SetStatistic(nEvent,nType1,1,1)
		Task_SetStcTimestamp(nEvent,nType1,0)
		Task_SetStatistic(nEvent,nType2,tFrontier_KillBoss_MapId["Easy"],1)
		Task_SetStcTimestamp(nEvent,nType2,0)	
	end
	
	for k,v in pairs(tFrontier_KillBoss_TaskPassId) do
		Task_AddTaskDetail(v)
		Task_SetTaskDetailData1(v,1)
		Task_SetTaskDetailData5(v,1)
		Task_SetTaskDetailData6(v,1)
		Task_SetTaskDetailCompleteFlag(v,1)
		Task_SetTaskDetailData7(v,os.time())
	end
	
	-- 给奖励  奖励统一改为3倍
	local nIndex = Get_UserStatisticValue(nEvent_2,nIndexType)
	local nLevel_Limit = tFrontier_KillBoss_Cont["Level_Limit"]
	local sLog = ""
	local sStr = ""
	
	Task_SetStatistic(nEvent_2,nIndexType,4,1,0)
	Task_SetStcTimestamp(nEvent_2,nIndexType,0,0)
	
	local nMete = Get_UserMetempsychosis()
	if nMete >= 2 then		-- 精英难度奖励
		GoldenLeaguePoints_Add(tFrontier_KillBoss_City["Golden"])
		Item_AddNewItem(tFrontier_KillBoss_City["Item"],tFrontier_KillBoss_City["Attr"])
		if nJudge then  --没有击杀冥王的情况，可以获得 冥王金和6级房屋建材包各3个
			if not SpecialServer_ChkNoGiftServer() then
			Item_AddNewItem(tFrontier_KillBoss_City["Item1"],"0 3")
			end
			Item_AddNewItem(tFrontier_KillBoss_City["Item2"],"0 3")
		end
		if nUserLevel < nLevel_Limit then
			if nUserLevel <= nLevelTime then
				Item_AddNewItem(tFrontier_KillBoss_City["Level"][nIndex+1],"0 1 0 1440 1")
				local sItemName = Get_ItemtypeName(tFrontier_KillBoss_City["Level"][nIndex+1])
				
				if nJudge then
					sLog = string.format(tFrontier_KillBoss_City["LevelTime"],tFrontier_KillBoss_City["Level"][nIndex+1])
					if not SpecialServer_ChkNoGiftServer() then
						sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteLevel"],sItemName)
					else
						sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteLevelNomono"],sItemName)
					end
				else
					sLog = string.format(tFrontier_KillBoss_City["LevelTime_1"],tFrontier_KillBoss_City["Level"][nIndex+1])
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteLevel_1"],sItemName)
				end
			else
				local nExp = tFrontier_KillBoss_City["Exp"][nIndex+1]
				User_AddExpTime(nExp)
				if nJudge then
					sLog = string.format(tFrontier_KillBoss_City["FullLevel"],nExp)
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteExp"],nExp)
				else
					sLog = string.format(tFrontier_KillBoss_City["FullLevel_1"],nExp)
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteExp_1"],nExp)
				end
			end
		else
			local nStrength = tFrontier_KillBoss_City["Streng"][nIndex+1]
			User_AddStrengthValue(nStrength)
			if nJudge then
				sLog = string.format(tFrontier_KillBoss_City["LessLevel"],nStrength)
				sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteStren"],nStrength)
			else
				sLog = string.format(tFrontier_KillBoss_City["LessLevel_1"],nStrength)
				sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteStren_1"],nStrength)
			end
		end
	else		-- 简单难度奖励
		GoldenLeaguePoints_Add(tFrontier_KillBoss_City["Golden_easy"])
		if nJudge then
			Item_AddNewItem(tFrontier_KillBoss_City["Item1_easy"],"0 3")
			Item_AddNewItem(tFrontier_KillBoss_City["Item2_easy"],"0 3")
		end
		
		if nUserLevel < nLevel_Limit then
			if nUserLevel <= nLevelTime then
				Item_AddNewItem(tFrontier_KillBoss_City["Level_easy"][nIndex+1],"0 1 0 1440 1")
				local sItemName = Get_ItemtypeName(tFrontier_KillBoss_City["Level_easy"][nIndex+1])
				
				if nJudge then
					sLog = string.format(tFrontier_KillBoss_City["LevelTime_easy"],tFrontier_KillBoss_City["Level_easy"][nIndex+1])
					if not SpecialServer_ChkNoGiftServer() then
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteLevel_easy"],sItemName)
					else
						sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteLevel_easyNomono"],sItemName)
					end
				else
					sLog = string.format(tFrontier_KillBoss_City["LevelTime_easy_1"],tFrontier_KillBoss_City["Level_easy"][nIndex+1])
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteLevel_easy_1"],sItemName)
				end
			else
				local nExp = tFrontier_KillBoss_City["Exp_easy"][nIndex+1]
				User_AddExpTime(nExp)
				if nJudge then
					sLog = string.format(tFrontier_KillBoss_City["FullLevel_easy"],nExp)
					if not SpecialServer_ChkNoGiftServer() then
						sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteExp_easy"],nExp)
					else
						sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteExp_easyNomono"],nExp)
					end
				else
					sLog = string.format(tFrontier_KillBoss_City["FullLevel_easy_1"],nExp)
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteExp_easy_1"],nExp)
				end
			end
		else
			local nCul = tFrontier_KillBoss_City["Cul_easy"][nIndex+1]
			User_AddCultivation(nCul)
			if nJudge then
				sLog = string.format(tFrontier_KillBoss_City["LessLevel_easy"],nCul)
				if not SpecialServer_ChkNoGiftServer() then
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteCul_easy"],nCul)
				else
					sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteCul_easyNomono"],nCul)
				end
			else
				sLog = string.format(tFrontier_KillBoss_City["LessLevel_easy_1"],nCul)
				sStr = string.format(tFrontier_KillBoss_Text["ItemMsg"]["MCCompleteCul_easy_1"],nCul)
			end
		end
	end
	Sys_SaveActionFestivalLog(sLog)
	Sys_SaveActionFestivalLog(tFrontier_KillBoss_SpLog["MingCheng"])
	User_TalkChannel2005(sStr)

	--判断是否在活动地图内，是给玩家传出地图
	for m,n in pairs(tFrontier_KillBoss_AllMapId) do
		if Get_UserMapId() == n then
			local nMapId = tFrontier_KillBoss_MapIdPos["MapId"]
			local nBoundX = tFrontier_KillBoss_MapIdPos["NpcX"]
			local nBoundY = tFrontier_KillBoss_MapIdPos["NpcY"]
			local nBoundCX = tFrontier_KillBoss_MapIdPos["CXCY"]
			User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCX,1)
			break
		end
	end
	--岫山玉
	-- CoatWarehouse_Sale_ActAwardXiuJade()
	-- 改为 *3倍岫山玉
	--DuelGhostdomCity_Match_ActAwardXiuJade()
	CoatWarehouse_Zhanchang_ActAwardXiuJade()
		--鸡年年兽活动获得3个稀有课本随机包（每周）
	ItemOutputOfNien_AwardBookRandomPack(3)
	
	----新服主题周 每周额外产出部分
	tNewSeverActivity_GetAward(2)
	
	-- 新服活动中奖励
	-- 新服狂欢活动中决战冥城的额外奖励翻3倍，改成30颗秘制免费修炼丹，15颗强效护心丹 
	DuelGhostdomCity_Match_NewServerAc()
	
	--获得随机积分卡
	-- Dailypoint_RewardDraw(4)
	
	DuelGhostdomCity_Match_GetClothesChip(nItemId)
	-- 决战冥城获得活跃币
	NewHandInHand_GetReward(2,4)
	--决战冥城获得副职业修行月令牌
	SecondProGrowth_SendTicket(2)
	--bp二期
	BattlePassTaskTest_TaskAddProgress(23,1)
end


--3100070    东海扬威令
function Frontier_KillBoss_ZCTask(nItemId)
	-- local nTaskId = tFrontier_KillBoss_ZCKill["TaskId"]
	-- local nTaskNum = tFrontier_KillBoss_ZCKill["KillNum"]
	
	-- 时间检测
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tFrontier_KillBoss_ZCKill["ChkTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end
	
	-- 添加等级判断
	if not User_JudgeLevelAndMetempsychosis(tFrontier_KillBoss_ZCKill["Level"],tFrontier_KillBoss_ZCKill["Meto"]) then
		User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["LessLevel"],tFrontier_KillBoss_ZCKill["Level"],Get_ItemtypeName(nItemId)))
		return
	end
	
	if nFlag == false then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["ZCUse"])
		return
	end
	
	LinkItemGossipFunc_New(nItemId,"1-1")
	
	-- if not Task_ChkTaskDetail(nTaskId) then
		-- Task_AddTaskDetail(nTaskId)
		-- Task_SetTaskDetailData7(nTaskId,os.time())
	-- end
	
	-- 存在情况，看是否已经完成
	-- local nComp = Get_TaskDetailCompleteFlag(nTaskId)
	
	-- if nComp ~= 0 then
		-- if not Task_DetailInterval(nTaskId,1,4) then
			-- User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["ZCCompleted"])
			-- return
		-- else
			-- Task_SetTaskDetailCompleteFlag(nTaskId,0)
			-- Task_DelTaskDetail(nTaskId)
			-- Task_AddTaskDetail(nTaskId)
			-- Task_SetTaskDetailData7(nTaskId,os.time())
		-- end
	-- end
	
	-- 未完成，判断是否已经杀了200只了，是则提示，不需要再使用
	-- local nData1 = Get_TaskDetailData1(nTaskId)
	-- if nData1 >= 200 then
		-- User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["ZCKill200"])
		-- return
	-- end
	
	-- if not Item_DelItem(nItemId) then
		-- return
	-- end
	
	-- Task_SetTaskDetailData1(nTaskId,nTaskNum)
	-- Sys_SaveActionFestivalLog(tFrontier_KillBoss_ZCKill["Complete"])
	-- User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["ZCComplete"])
end

-- 东海杨威令  选项
function Frontier_KillBoss_DHYWL(nItemId,nRewardFlag)
	local nFlag = false
	--不在活动期间
	for k ,v in pairs(tFrontier_KillBoss_ZCKill["ChkTime"])do
		if  Sys_ChkWeedTime(v) then
			nFlag = true
		end
	end	
	
	if nFlag == false then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["ZCUse"])
		return
	end
	
	-- 添加等级判断
	if not User_JudgeLevelAndMetempsychosis(tFrontier_KillBoss_ZCKill["Level"],tFrontier_KillBoss_ZCKill["Meto"]) then
		User_TalkChannel2005(string.format(tActivityDailyItemUse_Msg["MJWZ"]["LessLevel"],tFrontier_KillBoss_ZCKill["Level"],Get_ItemtypeName(nItemId)))
		return
	end
	

	-- 判断是否有令牌
	if not Item_ChkItem(nItemId) then
		return
	end
	
		--处于鸡年活动中需要判断背包空间
	if Sys_ChkFullTime(tItemOutputOfNien_Constant["ActivityTime"]) then
		if  not User_CheckLeftSpace(1)then
			Sys_MsgBox(tDuelGhostdomCity_Match_Text["NoSpace"])
			return
		end
	end
	
	local nDataAc = tFrontier_KillBoss_CoatWarehouse["GlobalAc"]
	if Get_SysDynaGlobalData1(nDataAc) > 0 then
		local nSpace = tFrontier_KillBoss_Cont["Space2"]
		-- 日常得积分
		-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
			-- nSpace = nSpace +1
		-- end
		--判断背包空间是否足够
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["NoSpace2"])
			return
		end
	end
	
	--判断这周是否已经完成过，完成过则无法使用该物品
	local nEvent = tFrontier_KillBoss_DHStc["Event"]
	local nType = tFrontier_KillBoss_DHStc["DataType"]

	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if not Task_StcInterval(nEvent,nType,1,5) then
			User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["NoTimeUsed"])
			return
		end
	end
	
	-- 判断选择的是不是经验奖励
	if nRewardFlag == 1 then
		if Get_UserLevel() >= tFrontier_KillBoss_Cont["Level_Limit"] then
			Sys_MsgBox(tFrontier_KillBoss_Text["ItemMsg"]["ExpLimit"])
			return
		end
	end
	
	local nTaskId = tFrontier_KillBoss_ZCKill["TaskId"]
	
	 if not Task_ChkTaskDetail(nTaskId) then
		 if Task_AddTaskDetail(nTaskId) then
			 Task_SetTaskDetailData1(nTaskId,0)
			 Task_SetTaskDetailData7(nTaskId,os.time())
		else
			User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["TaskFail"])
			return
		end
	 end

	--存在掩码，判断是否完成
	 local nComp = Get_TaskDetailCompleteFlag(nTaskId)
	
	 if nComp ~= 0 then
		 if not Task_DetailInterval(nTaskId,1,4) then
			 Sys_MsgBox(tFrontier_KillBoss_Text["ItemMsg"]["ZCCompleted"])
			 return
		 else
			 Task_SetTaskDetailCompleteFlag(nTaskId,0)
			 if Task_DelTaskDetail(nTaskId) then
			 Task_AddTaskDetail(nTaskId)
			 Task_SetTaskDetailData1(nTaskId,0)
			 Task_SetTaskDetailData7(nTaskId,os.time())
			 end
		 end
	 end

	 -- 删除物品，设置完成掩码，给奖励
	 if not Item_DelItem(nItemId) then
	 	return
	 end
	 
	for k ,v in pairs(tFrontier_KillBoss_ZCKill["ChkTime"])do
		if Sys_ChkWeedTime(v) then
			Task_SetStatistic(nEvent,nType,k,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
	 
	 
	 local nTaskNum = tFrontier_KillBoss_ZCKill["KillNum"]

	 Task_SetTaskDetailData1(nTaskId,nTaskNum)
	 Task_SetTaskDetailCompleteFlag(nTaskId,1)
	 Task_SetTaskDetailData7(nTaskId,os.time())
	 
	 if nRewardFlag == 1 then
	 	User_AddExpTime(tFrontier_KillBoss_ZCKill["Reward"][1])
	 elseif nRewardFlag == 2 then
	 	User_AddCultivation(tFrontier_KillBoss_ZCKill["Reward"][2])
	 elseif nRewardFlag == 3 then
	 	User_AddStrengthValue(tFrontier_KillBoss_ZCKill["Reward"][3])
	 else
	 	return
	 end
	 
	--给岫山玉
	CoatWarehouse_Zhanchang_ActAwardXiuJade()
	DuelGhostdomCity_Match_GetClothesChip(nItemId)
	--鸡年年兽活动获得3个稀有课本随机包（每周）
	ItemOutputOfNien_AwardBookRandomPack(3)
	--战场杀敌令获得副职业修行月令牌
	SecondProGrowth_SendTicket(4)
	
	--新服给30颗秘制免费修炼丹和15颗强效护心丹
	if Get_SysDynaGlobalData1(nDataAc) > 0 then
		Item_AddNewItem(tFrontier_KillBoss_DHYWL["Item1"],tFrontier_KillBoss_DHYWL["Attr1"])
		Item_AddNewItem(tFrontier_KillBoss_DHYWL["Item2"],tFrontier_KillBoss_DHYWL["Attr2"])
		Sys_SaveActionFestivalLog(tFrontier_KillBoss_DHYWL["Log"])
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["XinFuAward"])
	end
	 
	 --记录LOG，给提示
	Sys_SaveActionFestivalLog(tFrontier_KillBoss_ZCKill["Log"][nRewardFlag])
	Sys_SaveActionFestivalLog(tFrontier_KillBoss_SpLog["ZCSD"])
	User_TalkChannel2005(tFrontier_KillBoss_Text["Msg"][nRewardFlag])
	
	--设计要求记和NPC处领取奖励一样的log
	Sys_SaveActionLog(tFrontier_KillBoss_ZCKill["OldLog"][nRewardFlag])
	--设计要求log优化新记日常道具完成任务的log
	Sys_SaveActionFestivalLog(tFrontier_KillBoss_ZCKill["NewLog"])
	
	--获得1张随机积分卡
	-- Dailypoint_RewardDraw(6)
	BattlePassTaskTest_TaskAddProgress(24,1)
end

-- 3100071    威震四海礼盒
function Frontier_KillBoss_SSPack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not User_CheckLeftSpace(tFrontier_KillBoss_SSPack["Space"]) then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["SSSpace"])
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	
	Item_AddNewItem(tFrontier_KillBoss_SSPack["Item1"],"")
	Item_AddNewItem(tFrontier_KillBoss_SSPack["Item2"],tFrontier_KillBoss_SSPack["Attr"])
	Sys_SaveActionFestivalLog(tFrontier_KillBoss_SSPack["GetLog"])
	User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["SSGetItem"])
end

-- 3200005   国境犒赏【降服圣兽】
function Frontier_KillBoss_CompletePack(nItemId)
	if not Item_ChkItem(nItemId) then
		return
	end
	
	if not User_CheckLeftSpace(tFrontier_KillBoss_Cont["Space1"]) then
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["CompleteTaskNoSpace"])
		return
	end
	
	if not Item_DelItem(nItemId) then
		return
	end
	--内嵌世界版图探索活动
	local nUserId = Get_UserId()
	MapExploration_AddStc(24,nUserId)
	
	local nItem = tFrontier_KillBoss_Cont["Item"]
	local nItem1 = tFrontier_KillBoss_Cont["Item1"]
	local nItem2 = tFrontier_KillBoss_Cont["Item2"]
	local nItem3 = tFrontier_KillBoss_Cont["Item3"]
	local nItem4 = tFrontier_KillBoss_Cont["Item4"]
	
	-- 添加奖励
	GoldenLeaguePoints_Add(tFrontier_KillBoss_Cont["Gold"])
	National_War_AddIntegral(tFrontier_KillBoss_Cont["Gongxun"])
	
	Item_AddNewItem(nItem,tFrontier_KillBoss_Cont["Item_Attr"])
	Item_AddNewItem(nItem1,"")
	Item_AddNewItem(nItem2,tFrontier_KillBoss_Cont["Item_Attr1"])
	Item_AddNewItem(nItem3,tFrontier_KillBoss_Cont["Item_Attr1"])
	Item_AddNewItem(nItem4,tFrontier_KillBoss_Cont["Item_Attr2"])
	
	local sLog = string.format(tFrontier_KillBoss_Log["OpenGJKS"],nItemId,1,string.format("%d[%d][%d][%d][%d]",nItem,nItem1,nItem2,nItem3,nItem4),string.format("%d[%d][%d][%d][%d]",2,1,1,1,1))
	Sys_SaveActionFestivalLog(sLog)
	User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["CompleteTaskGetGift"])
end


------------------------------------------NPC头像配置-------------------------------------------
tNpcGossip[17400] = tNpcGossip[17400] or DefaultNpc:new{}
tNpcGossip[17400]["OptionHidden"] = 1

tNpcGossip[17400]["Option750"] = tFrontier_KillBoss_Text[17400]["Option750"]
tNpcGossip[17400]["OptionPoint750"] = "1000-1"
tNpcGossip[17400]["OptionChkFunc750"] = function ()
	local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
	if Task_ChkTaskDetail(nTaskId) then
	if Get_TaskDetailData6(nTaskId) ~= 0 and Get_TaskDetailCompleteFlag(nTaskId) ~= 0 then
		return false
		end
	end	
	return true
end


tNpcGossip[17400]["Text1000-1"] = {100011,100012,100013}
tNpcGossip[17400]["Text100011"] = tFrontier_KillBoss_Text[17400]["Text100011"]
tNpcGossip[17400]["Text100012"] = tFrontier_KillBoss_Text[17400]["Text100012"]
tNpcGossip[17400]["Text100013"] = tFrontier_KillBoss_Text[17400]["Text100013"]
tNpcGossip[17400]["tOption1000-1"] = {760,754}

tNpcGossip[17400]["Option751"]  = tFrontier_KillBoss_Text[17400]["Option751"]
tNpcGossip[17400]["OptionPoint751"] = "700-1"
tNpcGossip[17400]["Option752"]  = tFrontier_KillBoss_Text[17400]["Option752"]
tNpcGossip[17400]["OptionPoint752"] = "800-1"
tNpcGossip[17400]["Option753"]  = tFrontier_KillBoss_Text[17400]["Option753"]
tNpcGossip[17400]["Option754"]  = tFrontier_KillBoss_Text[17400]["Option754"]
tNpcGossip[17400]["Option756"]  = tFrontier_KillBoss_Text[17400]["Option756"]

tNpcGossip[17400]["Option760"] = tFrontier_KillBoss_Text[17400]["Option760"]
tNpcGossip[17400]["OptionFunc760"] = "Frontier_KillBoss_CompleteReward</N>17400"
tNpcGossip[17400]["OptionChkFunc760"] = function ()
	local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
	if Task_ChkTaskDetail(nTaskId) then
	if Get_TaskDetailData6(nTaskId) ~= 0 and Get_TaskDetailCompleteFlag(nTaskId) ~= 0 then
		return false
		end
	end	
	return true
end


tNpcGossip[17400]["Option751"]  = tFrontier_KillBoss_Text[17400]["Option751"]
tNpcGossip[17400]["Option790"]  = tFrontier_KillBoss_Text[17400]["Option790"]
tNpcGossip[17400]["OptionPoint790"] = "1000-1"
tNpcGossip[17400]["OptionChkFunc790"] = function ()
	local nTaskId = tFrontier_KillBoss_Cont["Task_Id"]
	if Task_ChkTaskDetail(nTaskId) then
	if Get_TaskDetailData6(nTaskId) ~= 0 and Get_TaskDetailCompleteFlag(nTaskId) ~= 0 then
		return true
		end
	end	
	return false
end

-- 背包空间不足
tNpcGossip[17400]["Text700-1"] = {70011}
tNpcGossip[17400]["Text70011"] = tFrontier_KillBoss_Text[17400]["Text70011"]
-- tNpcGossip[17400]["Text70012"] = tFrontier_KillBoss_Text[17400]["Text70012"]
-- tNpcGossip[17400]["Text70013"] = tFrontier_KillBoss_Text[17400]["Text70013"]
tNpcGossip[17400]["tOption700-1"] = {755}

tNpcGossip[17400]["Option755"]  = tFrontier_KillBoss_Text[17400]["Option755"]

-- 未完成任务
tNpcGossip[17400]["Text800-1"] = {80011}
tNpcGossip[17400]["Text80011"] = tFrontier_KillBoss_Text[17400]["Text80011"]
-- tNpcGossip[17400]["Text80012"] = tFrontier_KillBoss_Text[17400]["Text80012"]
tNpcGossip[17400]["tOption800-1"] = {770}

tNpcGossip[17400]["Option770"]  = tFrontier_KillBoss_Text[17400]["Option770"]


-- 已经领取过奖励
tNpcGossip[17400]["Text900-1"] = {90011}
tNpcGossip[17400]["Text90011"] = tFrontier_KillBoss_Text[17400]["Text90011"]
-- tNpcGossip[17400]["Text90012"] = tFrontier_KillBoss_Text[17400]["Text90012"]
tNpcGossip[17400]["tOption900-1"] = {771}

tNpcGossip[17400]["Option771"]  = tFrontier_KillBoss_Text[17400]["Option771"]

------------------------------------物品使用模版--------------------------------------------------------------
-- 3600021	500点赛马积分礼包
tItem[3600021] = tItem[3600021] or {}
tItem[3600021]["Function"] = function(nItemId, sItemName)
	Frontier_KillBoss_Race(nItemId)
end

-- 3600022	妙计锦囊·降伏
tItem[3600022] = tItem[3600022] or {}
tItem[3600022]["Function"] = function(nItemId, sItemName)
	Frontier_KillBoss_TaskComplete(nItemId)
end

-- 3600023	战功显赫嘉奖包
tItem[3600023] = tItem[3600023] or {}
tItem[3600023]["Function"] = function(nItemId, sItemName)
	-- Frontier_KillBoss_DayTask(nItemId)
	RouletteMould_Main(tFrontier_KillBoss_Cont["Task_LP"])
end

-- 3100069   冥城镇妖令
tItem[3100069] = tItem[3100069] or {}
tItem[3100069]["Function"] = function(nItemId, sItemName)
	Frontier_KillBoss_MCTask(nItemId)
end

--3100070    东海扬威令
tItem[3100070] = tItem[3100070] or {}
tItem[3100070]["Function"] = function(nItemId, sItemName)
	Frontier_KillBoss_ZCTask(nItemId)
end

-- 3100071    威震四海礼盒
tItem[3100071] = tItem[3100071] or {}
tItem[3100071]["Function"] = function(nItemId, sItemName)
	Frontier_KillBoss_SSPack(nItemId)
end

-- 3200005    国境犒赏【降服圣兽】
tItem[3200005] = tItem[3200005] or {}
tItem[3200005]["Function"] = function(nItemId, sItemName)
	Frontier_KillBoss_CompletePack(nItemId)
end

-- 3100070	东海扬威令

tItem[3100070]["Text1-1"]={111}
tItem[3100070]["Text111"]=tFrontier_KillBoss_Text[3100070]["Text111"]
tItem[3100070]["tOption1-1"] = {1,2,3}

tItem[3100070]["Option1"] = tFrontier_KillBoss_Text[3100070]["Option1"]
tItem[3100070]["OptionFunc1"] = "Frontier_KillBoss_DHYWL</N>3100070</N>1"

tItem[3100070]["Option2"] = tFrontier_KillBoss_Text[3100070]["Option2"]
tItem[3100070]["OptionFunc2"] = "Frontier_KillBoss_DHYWL</N>3100070</N>2"

tItem[3100070]["Option3"] = tFrontier_KillBoss_Text[3100070]["Option3"]
tItem[3100070]["OptionFunc3"] = "Frontier_KillBoss_DHYWL</N>3100070</N>3"

------------------------------------------------------------------------------------------------------------------

-- 怪物掉落
-- 青龙圣兽护法
tMonster[7889] = tMonster[7889] or {}
tMonster[7889]["tFunction"] = tMonster[7889]["tFunction"] or {}
table.insert(tMonster[7889]["tFunction"],Frontier_KillBoss_KillMonster)

-- 白虎圣兽护法
tMonster[7890] = tMonster[7890] or {}
tMonster[7890]["tFunction"] = tMonster[7890]["tFunction"] or {}
table.insert(tMonster[7890]["tFunction"],Frontier_KillBoss_KillMonster)

-- 朱雀圣兽护法
tMonster[7891] = tMonster[7891] or {}
tMonster[7891]["tFunction"] = tMonster[7891]["tFunction"] or {}
table.insert(tMonster[7891]["tFunction"],Frontier_KillBoss_KillMonster)

-- 玄武圣兽护法
tMonster[7892] = tMonster[7892] or {}
tMonster[7892]["tFunction"] = tMonster[7892]["tFunction"] or {}
table.insert(tMonster[7892]["tFunction"],Frontier_KillBoss_KillMonster)


-- 青龙圣兽
tMonster[7885] = tMonster[7885] or {}
tMonster[7885]["tFunction"] = tMonster[7885]["tFunction"] or {}
table.insert(tMonster[7885]["tFunction"],Frontier_KillBoss_KillBoss)

-- 白虎圣兽
tMonster[7886] = tMonster[7886] or {}
tMonster[7886]["tFunction"] = tMonster[7886]["tFunction"] or {}
table.insert(tMonster[7886]["tFunction"],Frontier_KillBoss_KillBoss)

-- 朱雀圣兽
tMonster[7887] = tMonster[7887] or {}
tMonster[7887]["tFunction"] = tMonster[7887]["tFunction"] or {}
table.insert(tMonster[7887]["tFunction"],Frontier_KillBoss_KillBoss)

-- 玄武圣兽
tMonster[7888] = tMonster[7888] or {}
tMonster[7888]["tFunction"] = tMonster[7888]["tFunction"] or {}
table.insert(tMonster[7888]["tFunction"],Frontier_KillBoss_KillBoss)




