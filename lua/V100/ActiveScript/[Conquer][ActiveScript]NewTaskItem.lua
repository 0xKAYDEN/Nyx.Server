------------------------------------------------------------------------------------
--Name:			170414[简体征服][活动脚本]新片区-随机任务完成道具
--Creator:		陈磊
--Created:		2017/04/14
------------------------------------------------------------------------------------

--命名前缀
--tNewTaskItem_

local tNewTaskItem_Cont = {}

--日常任务完成金令
tNewTaskItem_Cont["Item"] = 3309841

tNewTaskItem_Cont["Daily"] ={}
tNewTaskItem_Cont["Daily"]["Meto"] = 0
tNewTaskItem_Cont["Daily"]["Level"] = {}
tNewTaskItem_Cont["Daily"]["Level"]["YLHK"] = 80
tNewTaskItem_Cont["Daily"]["Level"]["ZZ"] = 70
tNewTaskItem_Cont["Daily"]["Level"]["CLSJ"] = 60
tNewTaskItem_Cont["Daily"]["Level"]["WZMJ"] = 75
tNewTaskItem_Cont["Daily"]["Level"]["ZYM"] = 100
tNewTaskItem_Cont["Daily"]["Space"]  = 3

tNewTaskItem_Cont["TaskId"] = 3649
tNewTaskItem_Cont["EventType"] = 143
tNewTaskItem_Cont["DataType"] = 91
tNewTaskItem_Cont["Data"]= 1

tNewTaskItem_Cont["KF"] = {}
tNewTaskItem_Cont["KF"]["Meto"] = 2
tNewTaskItem_Cont["KF"]["Level"]= 130
tNewTaskItem_Cont["KF"]["NewLevel"]= 140
tNewTaskItem_Cont["KF"]["Space"]  = 1

-- 新服活动全局动态码
	tNewTaskItem_Cont["Global"] = {}
	tNewTaskItem_Cont["Global"]["Id"] = 51131
	tNewTaskItem_Cont["Global"]["Open"] = 1
	
--掩码	
local tNewTaskItem_Stc = {}	
	tNewTaskItem_Stc["EventType"] =  159
	tNewTaskItem_Stc["DataType"] = 32
	--调用函数表
local tNewTaskItem_Func = {}
	-- tNewTaskItem_Func[1] = {}
  	-- tNewTaskItem_Func[1].func = function()  ActivityDailyItemUse_YLHKTask(3303084) end 
	-- tNewTaskItem_Func[2] = {}
  	-- tNewTaskItem_Func[2].func = function()  ActivityDailyItemUse_ZZTask(3303084) end 
	-- tNewTaskItem_Func[3] = {}
  	-- tNewTaskItem_Func[3].func = function()  ActivityDailyItemUse_CLCollect(3303084) end 
	-- tNewTaskItem_Func[4] = {}
  	-- tNewTaskItem_Func[4].func = function()  ActivityDailyItemUse_Open(3303084) end 
	-- tNewTaskItem_Func[5] = {}
  	-- tNewTaskItem_Func[5].func = function()  FirstPerson_UseFiveLeiZhenSoul(3303084) end 	
	
	-- tNewTaskItem_Func[6] = {}
  	-- tNewTaskItem_Func[6].func = function()  GodRefinedRewardSign_OpenTrickTipsStrike(3303085) end 
	-- tNewTaskItem_Func[7] = {}
  	-- tNewTaskItem_Func[7].func = function()  tNewTaskItem_Getvillages(3303085) end 
	-- tNewTaskItem_Func[8] = {}
  	-- tNewTaskItem_Func[8].func = function()  tNewTaskItem_KillBoss(3303085) end 
	-- tNewTaskItem_Func[9] = {}
  	-- tNewTaskItem_Func[9].func = function()  tNewTaskItem_Crystal(3303085) end 
	-- tNewTaskItem_Func[10] = {}
  	-- tNewTaskItem_Func[10].func = function()  GodRefinedRewardSign_OpenTrickTipsSupply(3303085) end 		
	

  	tNewTaskItem_Func[1] = "ActivityDailyItemUse_YLHKTask</N>3303084" 
  	tNewTaskItem_Func[2] = "ActivityDailyItemUse_ZZTask</N>3303084"
  	tNewTaskItem_Func[3] = "ActivityDailyItemUse_CLCollect</N>3303084"
  	tNewTaskItem_Func[4] = "ActivityDailyItemUse_Open</N>3303084"
  	tNewTaskItem_Func[5] = "FirstPerson_UseFiveLeiZhenSoul</N>3303084"
  	tNewTaskItem_Func[11] ="tNewTaskItem_FindTreasure</N>3303084"
	
  	tNewTaskItem_Func[6] = "GodRefinedRewardSign_OpenTrickTipsStrike</N>3303085"
  	tNewTaskItem_Func[7] = "tNewTaskItem_Getvillages</N>3303085"
  	tNewTaskItem_Func[8] = "tNewTaskItem_KillBoss</N>3303085 "
  	tNewTaskItem_Func[9] = "tNewTaskItem_Crystal</N>3303085"
  	tNewTaskItem_Func[10] ="GodRefinedRewardSign_OpenTrickTipsSupply</N>3303085"
	
	-- 光效配置
local tNewTaskItem_Effect = {}
	tNewTaskItem_Effect[1] = {}
	tNewTaskItem_Effect[1]["Self"] = "self"
	tNewTaskItem_Effect[1]["Effect"] = "wylhk"	
	
	tNewTaskItem_Effect[2] = {}
	tNewTaskItem_Effect[2]["Self"] = "self"
	tNewTaskItem_Effect[2]["Effect"] = "wglzz"	

	tNewTaskItem_Effect[3] = {}
	tNewTaskItem_Effect[3]["Self"] = "self"
	tNewTaskItem_Effect[3]["Effect"] = "wclsj"	

	tNewTaskItem_Effect[4] = {}
	tNewTaskItem_Effect[4]["Self"] = "self"
	tNewTaskItem_Effect[4]["Effect"] = "wmjwj"	

	tNewTaskItem_Effect[5] = {}
	tNewTaskItem_Effect[5]["Self"] = "self"
	tNewTaskItem_Effect[5]["Effect"] = "wttxd"		
	
	tNewTaskItem_Effect[6] = {}
	tNewTaskItem_Effect[6]["Self"] = "self"
	tNewTaskItem_Effect[6]["Effect"] = "wxfzr"	
	
	tNewTaskItem_Effect[7] = {}
	tNewTaskItem_Effect[7]["Self"] = "self"
	tNewTaskItem_Effect[7]["Effect"] = "whcfy"	

	tNewTaskItem_Effect[8] = {}
	tNewTaskItem_Effect[8]["Self"] = "self"
	tNewTaskItem_Effect[8]["Effect"] = "wxfss"	

	tNewTaskItem_Effect[9] = {}
	tNewTaskItem_Effect[9]["Self"] = "self"
	tNewTaskItem_Effect[9]["Effect"] = "wsjks"	

	tNewTaskItem_Effect[10] = {}
	tNewTaskItem_Effect[10]["Self"] = "self"
	tNewTaskItem_Effect[10]["Effect"] = "wzfsz"		
	
	tNewTaskItem_Effect[11] = {}
	tNewTaskItem_Effect[11]["Self"] = "self"
	tNewTaskItem_Effect[11]["Effect"] = "wclxb"
	
local tNewTaskItem_TaskId = {}
tNewTaskItem_TaskId[3303084] = {}
tNewTaskItem_TaskId[3303084]["YLHK"] = {}
tNewTaskItem_TaskId[3303084]["YLHK"]["EventType"] = 106
tNewTaskItem_TaskId[3303084]["YLHK"]["DataType"] = 99
tNewTaskItem_TaskId[3303084]["YLHK"]["Data"] = 20    -- 完成掩码  20表示完成 10 表示领取了种子
tNewTaskItem_TaskId[3303084]["YLHK"]["Type"] = 1
tNewTaskItem_TaskId[3303084]["ZZ"] = {}
tNewTaskItem_TaskId[3303084]["ZZ"]["TaskId1"] =6049
tNewTaskItem_TaskId[3303084]["ZZ"]["TaskId2"] = 6769
tNewTaskItem_TaskId[3303084]["ZZ"]["Type"] = 2
tNewTaskItem_TaskId[3303084]["ZZ"]["nComplete"] = 2
tNewTaskItem_TaskId[3303084]["ZZ"]["nData6"] = 1
tNewTaskItem_TaskId[3303084]["CLSJ"] = {}
tNewTaskItem_TaskId[3303084]["CLSJ"]["TaskId1"] =6245
tNewTaskItem_TaskId[3303084]["CLSJ"]["TaskId2"] =2265
tNewTaskItem_TaskId[3303084]["CLSJ"]["Type"] = 3
tNewTaskItem_TaskId[3303084]["CLSJ"]["nComplete"] = 1
tNewTaskItem_TaskId[3303084]["CLSJ"]["nData6"] = 1
tNewTaskItem_TaskId[3303084]["WZMJ"] = {}
tNewTaskItem_TaskId[3303084]["WZMJ"]["TaskId1"] =6366
tNewTaskItem_TaskId[3303084]["WZMJ"]["Type"] = 4
tNewTaskItem_TaskId[3303084]["WZMJ"]["nComplete"] = 1
tNewTaskItem_TaskId[3303084]["WZMJ"]["nData6"] = 1
tNewTaskItem_TaskId[3303084]["ZYM"] = {}
tNewTaskItem_TaskId[3303084]["ZYM"]["TaskId1"] =2375
tNewTaskItem_TaskId[3303084]["ZYM"]["Type"] = 5
tNewTaskItem_TaskId[3303084]["CLXB"] = {}
tNewTaskItem_TaskId[3303084]["CLXB"]["TaskId1"] =3649
tNewTaskItem_TaskId[3303084]["CLXB"]["Type"] = 11
tNewTaskItem_TaskId[3303084]["CLXB"]["nComplete"] = 1
tNewTaskItem_TaskId[3303084]["CLXB"]["EventType"] = 143
tNewTaskItem_TaskId[3303084]["CLXB"]["DataType"] = 91

tNewTaskItem_TaskId[3303085] = {}
tNewTaskItem_TaskId[3303085]["XFZR"] = {}
tNewTaskItem_TaskId[3303085]["XFZR"]["Type"]  =6
tNewTaskItem_TaskId[3303085]["HCFY"] = {}
tNewTaskItem_TaskId[3303085]["HCFY"]["Type"]  =7
tNewTaskItem_TaskId[3303085]["HCFY"]["TaskId1"] = 35024
tNewTaskItem_TaskId[3303085]["JFSS"] = {}
tNewTaskItem_TaskId[3303085]["JFSS"]["Type"]  =8
tNewTaskItem_TaskId[3303085]["JFSS"]["TaskId1"] = 35025
tNewTaskItem_TaskId[3303085]["JFSS"]["TaskId2"] = 35032
tNewTaskItem_TaskId[3303085]["SJKS"] = {}
tNewTaskItem_TaskId[3303085]["SJKS"]["Type"]  =9
tNewTaskItem_TaskId[3303085]["SJKS"]["TaskId1"] = 35028
tNewTaskItem_TaskId[3303085]["SJKS"]["Data"] = 1
tNewTaskItem_TaskId[3303085]["SJKS"]["KillMonster"] = 50
tNewTaskItem_TaskId[3303085]["ZFSZ"] = {}
tNewTaskItem_TaskId[3303085]["ZFSZ"]["Type"]  =10
tNewTaskItem_TaskId[3303085]["ZFSZ"]["EventType"] = 139
tNewTaskItem_TaskId[3303085]["ZFSZ"]["DataType"] = 01
tNewTaskItem_TaskId[3303085]["ZFSZ"]["Data"] = 10

local tNewTaskItem_Log = {}
	tNewTaskItem_Log[35024] = "0,0,0,0,18000104,1[1],0,0" --完成点火任务
	tNewTaskItem_Log[35025] = "0,0,3303085,1,12000261,2,3200005,0" --降伏圣兽
	
local tNewTaskItem_ItemId = {}
	tNewTaskItem_ItemId[35024] = {}
	tNewTaskItem_ItemId[35024]["LogId"] = 18000104
	tNewTaskItem_ItemId[35024]["RewardItem"] = {}
	tNewTaskItem_ItemId[35024]["RewardItem"][1] = {}
	tNewTaskItem_ItemId[35024]["RewardItem"][1]["Id"] = 3200004
	tNewTaskItem_ItemId[35024]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tNewTaskItem_ItemId[35024]["DeleteItem"] = {}
	tNewTaskItem_ItemId[35024]["DeleteItem"][1] = {}
	tNewTaskItem_ItemId[35024]["DeleteItem"][1]["Id"] = 3303085	

local 	tNewTaskItem_RewardItem = {}
	tNewTaskItem_RewardItem[3303084] = {}
	tNewTaskItem_RewardItem[3303084]["Log"] = "0,0,3303084,1,18000103,2,3008992,5"
	tNewTaskItem_RewardItem[3303084]["RewardItem"] = {}
	tNewTaskItem_RewardItem[3303084]["RewardItem"][1] = {}
	tNewTaskItem_RewardItem[3303084]["RewardItem"][1]["Id"] = 3008992
	tNewTaskItem_RewardItem[3303084]["RewardItem"][1]["Attr"] = "0 5"
	tNewTaskItem_RewardItem[3303084]["DeleteItem"] = {}
	tNewTaskItem_RewardItem[3303084]["DeleteItem"][1] = {}
	tNewTaskItem_RewardItem[3303084]["DeleteItem"][1]["Id"] = 3303084

	tNewTaskItem_RewardItem[1] = {}
	tNewTaskItem_RewardItem[1]["RewardItem"] = {}
	tNewTaskItem_RewardItem[1]["RewardItem"][1] = {}
	tNewTaskItem_RewardItem[1]["RewardItem"][1]["Id"] = 3200005
	tNewTaskItem_RewardItem[1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	tNewTaskItem_RewardItem[3309841] = {}
	tNewTaskItem_RewardItem[3309841][1] = {}
	tNewTaskItem_RewardItem[3309841][1]["ItemChanceSum"] = 10000
	tNewTaskItem_RewardItem[3309841][1][1] = {}
	tNewTaskItem_RewardItem[3309841][1][1]["RandomItemChanceType"] = 2
	tNewTaskItem_RewardItem[3309841][1][1]["ItemChance"] = 9000
	tNewTaskItem_RewardItem[3309841][1][1]["RewardItem"] = {}
	tNewTaskItem_RewardItem[3309841][1][1]["RewardItem"][1] = {}
	tNewTaskItem_RewardItem[3309841][1][1]["RewardItem"][1]["Id"] = 3008992
	tNewTaskItem_RewardItem[3309841][1][1]["RewardItem"][1]["Attr"] = "0 5"
	tNewTaskItem_RewardItem[3309841][1][1]["Log"] = "0,0,3309841,1,12001103,2,3008992,5"
	tNewTaskItem_RewardItem[3309841][1][1]["Index"] = 1
	tNewTaskItem_RewardItem[3309841][1][2] = {}
	tNewTaskItem_RewardItem[3309841][1][2]["RandomItemChanceType"] = 2
	tNewTaskItem_RewardItem[3309841][1][2]["ItemChance"] = 1000
	tNewTaskItem_RewardItem[3309841][1][2]["RewardItem"] = {}
	tNewTaskItem_RewardItem[3309841][1][2]["RewardItem"][1] = {}
	tNewTaskItem_RewardItem[3309841][1][2]["RewardItem"][1]["Id"] = 3008992
	tNewTaskItem_RewardItem[3309841][1][2]["RewardItem"][1]["Attr"] = "0 6"
	tNewTaskItem_RewardItem[3309841][1][2]["Log"] = "0,0,3309841,1,12001103,2,3008992,6"
	tNewTaskItem_RewardItem[3309841][1][2]["Index"] = 2
	
local	tNewTaskItem_GetItem = {}
	tNewTaskItem_GetItem[3303084] = {}
	tNewTaskItem_GetItem[3303084]["Log"] = "0,0,3303084,1,18000103,2,3007269,1"
	tNewTaskItem_GetItem[3303084]["RewardItem"] = {}
	tNewTaskItem_GetItem[3303084]["RewardItem"][1] = {}
	tNewTaskItem_GetItem[3303084]["RewardItem"][1]["Id"] = 3303084
	tNewTaskItem_GetItem[3303084]["RewardItem"][1]["Attr"] = "0 1"
	
-- 日常任务列表
local tNewTaskItem_AddTask = {}
	-- 祭拜先贤
	tNewTaskItem_AddTask[1] = {}
	tNewTaskItem_AddTask[1]["TaskId"] = 6329
	tNewTaskItem_AddTask[1]["complete"] = 1
	tNewTaskItem_AddTask[1]["data6"] = 1
	-- 材料收集
	tNewTaskItem_AddTask[2] = {}
	tNewTaskItem_AddTask[2]["TaskId"] = 6245
	tNewTaskItem_AddTask[2]["complete"] = 1
	tNewTaskItem_AddTask[2]["data6"] = 1
	-- 古来征战几人回
	tNewTaskItem_AddTask[3] = {}
	tNewTaskItem_AddTask[3]["TaskId"] = 6769
	tNewTaskItem_AddTask[3]["complete"] = 2
	tNewTaskItem_AddTask[3]["data6"] = 1
	tNewTaskItem_AddTask[3]["TaskId1"] = 6049
	-- 募集物资
	tNewTaskItem_AddTask[4] = {}
	tNewTaskItem_AddTask[4]["TaskId"] = 6366
	tNewTaskItem_AddTask[4]["complete"] = 1
	tNewTaskItem_AddTask[4]["data6"] = 1
	-- 勇闯镇魔塔
	tNewTaskItem_AddTask[5] = {}
	tNewTaskItem_AddTask[5]["TaskId"] = 6126
	tNewTaskItem_AddTask[5]["complete"] = 1
	tNewTaskItem_AddTask[5]["data6"] = 1
	-- 替天行道镇妖魂
	tNewTaskItem_AddTask[6] = {}
	tNewTaskItem_AddTask[6]["TaskId"] = 2375
	tNewTaskItem_AddTask[6]["complete"] = 1
	tNewTaskItem_AddTask[6]["data6"] = 0
	tNewTaskItem_AddTask[6]["Delay"] = 1
	tNewTaskItem_AddTask[6]["TimeType"] = 4
	-- 幽兰花开
	tNewTaskItem_AddTask[7] = {}
	tNewTaskItem_AddTask[7]["EventType"] = 106
	tNewTaskItem_AddTask[7]["DataType"] = 99
	tNewTaskItem_AddTask[7]["Data"] = 20
	tNewTaskItem_AddTask[7]["Opt"] = "=="
	tNewTaskItem_AddTask[7]["Delay"] = 1
	tNewTaskItem_AddTask[7]["TimeType"] = 4
	-- 琅嬛福地
	-- tNewTaskItem_AddTask[8] = {}
	-- tNewTaskItem_AddTask[8]["EventType"] = 117
	-- tNewTaskItem_AddTask[8]["DataType"] = 91
	-- tNewTaskItem_AddTask[8]["Data"] = 0
	-- tNewTaskItem_AddTask[8]["Opt"] = "~="
	-- tNewTaskItem_AddTask[8]["Delay"] = 1
	-- tNewTaskItem_AddTask[8]["TimeType"] = 4
	
local tNewTaskItem_Countrystc = {}
tNewTaskItem_Countrystc["EventType"] = 183
tNewTaskItem_Countrystc["DatatType"] = 54

local tNewTaskItem_DailureCountrystc = {}
tNewTaskItem_DailureCountrystc["EventType"] = 183
tNewTaskItem_DailureCountrystc["DatatType"] = 83

--给60分钟经验和100修为值
local tNewTaskItem_CountryAward = {}
tNewTaskItem_CountryAward[3303085] = {}
tNewTaskItem_CountryAward[3303085]["RewardExpTime"] = {}
tNewTaskItem_CountryAward[3303085]["RewardExpTime"]["Value"] = 60
tNewTaskItem_CountryAward[3303085]["RewardExpTime"]["FullIndex"] = "RewardRepairValue"
tNewTaskItem_CountryAward[3303085]["RewardExpTime"]["FullValue"] = 50
tNewTaskItem_CountryAward[3303085]["RewardExpTime"]["FullLog"] = "0,0,3303085,1,18000103,2,19,50"
tNewTaskItem_CountryAward[3303085]["RewardRepairValue"] = {}
tNewTaskItem_CountryAward[3303085]["RewardRepairValue"]["Value"] = 100
tNewTaskItem_CountryAward[3303085]["LogId"] = 18000103
tNewTaskItem_CountryAward[3303085]["DeleteItem"] = {}
tNewTaskItem_CountryAward[3303085]["DeleteItem"][1] = {}
tNewTaskItem_CountryAward[3303085]["DeleteItem"][1]["Id"] = 3303085

tNewTaskItem_CountryAward[3303084] = {}
tNewTaskItem_CountryAward[3303084]["RewardExpTime"] = {}
tNewTaskItem_CountryAward[3303084]["RewardExpTime"]["Value"] = 60
tNewTaskItem_CountryAward[3303084]["RewardExpTime"]["FullIndex"] = "RewardRepairValue"
tNewTaskItem_CountryAward[3303084]["RewardExpTime"]["FullValue"] = 50
tNewTaskItem_CountryAward[3303084]["RewardExpTime"]["FullLog"] = "0,0,3303084,1,18000103,2,19,50"
tNewTaskItem_CountryAward[3303084]["RewardRepairValue"] = {}
tNewTaskItem_CountryAward[3303084]["RewardRepairValue"]["Value"] = 100
tNewTaskItem_CountryAward[3303084]["LogId"] = 18000103
tNewTaskItem_CountryAward[3303084]["DeleteItem"] = {}
tNewTaskItem_CountryAward[3303084]["DeleteItem"][1] = {}
tNewTaskItem_CountryAward[3303084]["DeleteItem"][1]["Id"] = 3303084
-----------------------------------逻辑部分-------------------------------------

function NewTaskItem_Daily(nItemId)
	
	if not User_JudgeLevelAndMetempsychosis(tNewTaskItem_Cont["KF"]["Level"],tNewTaskItem_Cont["KF"]["Meto"]) then
		Sys_MsgBox(string.format(tNewTaskItem_Text["LevelLimit"],Get_ItemtypeName(nItemId)))
		return
	end	
	if not Task_StcInterval(tNewTaskItem_Stc["EventType"],tNewTaskItem_Stc["DataType"],5,0) then
		return 
	end 
	
	--是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		
		--无赠点服新增掩码判断一天该礼包只能用5次
		local nUserId = Get_UserId()
		local nCountEvent = tNewTaskItem_DailureCountrystc["EventType"]
		local nCountData = tNewTaskItem_DailureCountrystc["DatatType"]
		--隔天掩码清0
		if Task_StcInterval(nCountEvent,nCountData,1,4,nUserId) then
			Task_SetStatistic(nCountEvent,nCountData,0,1,nUserId)
			Task_SetStcTimestamp(nCountEvent,nCountData,0,nUserId)
		end
		
		if Task_ChkStcValue(nCountEvent,nCountData,">=",5,nUserId) then
			Sys_MsgBox(tNewTaskItem_Text["Overnum"])
			return false
		end
		
		Task_AddStatistic(nCountEvent,nCountData,1,1,nUserId) 
		Task_SetStcTimestamp(nCountEvent,nCountData,0,nUserId)
		
		RewardTemplate_UseItemAndMsg(tNewTaskItem_CountryAward[nItemId])
		--等级不足
		local nUserLev = Get_UserLevel(nUserId)
		if nUserLev < tNewTaskItem_Cont["KF"]["NewLevel"] then
			Sys_MsgBox(tNewTaskItem_Text["NOvernum"])
		else
			Sys_MsgBox(tNewTaskItem_Text["NOvernumfull"])
		end
		return
	end
	--背包空间判断（最大）
	local nGlobal = tNewTaskItem_Cont["Global"]["Id"]
	local nGlobalData = Get_SysDynaGlobalData1(nGlobal)
	
	if nGlobalData < tNewTaskItem_Cont["Global"]["Open"] then
		if not User_CheckLeftSpace(tNewTaskItem_Cont["Daily"]["Space"]) then
			User_TalkChannel2005(string.format(tNewTaskItem_Text["NoSpace"],tNewTaskItem_Cont["Daily"]["Space"] ,Get_ItemtypeName(nItemId)))
			return
		end
	elseif not User_CheckLeftSpace(tNewTaskItem_Cont["Daily"]["Space"] + 1) then
			User_TalkChannel2005(string.format(tNewTaskItem_Text["NoSpace"],tNewTaskItem_Cont["Daily"]["Space"] + 1,Get_ItemtypeName(nItemId)))
			return		
	end

	local tCanAcceptTask = NewTaskItem_ReturnTask(nItemId)
	if (#tCanAcceptTask == 0 ) then 
		Sys_MsgBox(tNewTaskItem_Text["NoDailyTask"])
		return
	end 
	Task_SetStatistic(tNewTaskItem_Stc["EventType"],tNewTaskItem_Stc["DataType"],1,1)
	Task_SetStcTimestamp(tNewTaskItem_Stc["EventType"],tNewTaskItem_Stc["DataType"],0)
	local nTaskId  =tCanAcceptTask[math.random(1,#tCanAcceptTask)]
	local nTime = os.time()

	User_EffectAdd(tNewTaskItem_Effect[nTaskId]["Self"],tNewTaskItem_Effect[nTaskId]["Effect"])

	User_SetTimer(5,tNewTaskItem_Func[nTaskId],0)
end 

function NewTaskItem_KF(nItemId)

	if not Task_StcInterval(tNewTaskItem_Stc["EventType"],tNewTaskItem_Stc["DataType"],5,0) then
		return 
	end 
		--等级不足
	if not User_JudgeLevelAndMetempsychosis(tNewTaskItem_Cont["KF"]["Level"],tNewTaskItem_Cont["KF"]["Meto"]) then
		Sys_MsgBox(string.format(tNewTaskItem_Text["LevelLimit"],Get_ItemtypeName(nItemId)))
		return
	end
	
	--是无赠品服务器
	if SpecialServer_ChkNoGiftServer() then
		
		--无赠点服新增掩码判断一天该礼包只能用5次
		local nUserId = Get_UserId()
		local nCountEvent = tNewTaskItem_Countrystc["EventType"]
		local nCountData = tNewTaskItem_Countrystc["DatatType"]
		--隔天掩码清0
		if Task_StcInterval(nCountEvent,nCountData,1,4,nUserId) then
			Task_SetStatistic(nCountEvent,nCountData,0,1,nUserId)
			Task_SetStcTimestamp(nCountEvent,nCountData,0,nUserId)
		end
		
		if Task_ChkStcValue(nCountEvent,nCountData,">=",5,nUserId) then
			Sys_MsgBox(tNewTaskItem_Text["Overnum"])
			return false
		end
		
		Task_AddStatistic(nCountEvent,nCountData,1,1,nUserId) 
		Task_SetStcTimestamp(nCountEvent,nCountData,0,nUserId)
		
		RewardTemplate_UseItemAndMsg(tNewTaskItem_CountryAward[nItemId])
		--等级不足
		local nUserLev = Get_UserLevel(nUserId)
		if nUserLev < tNewTaskItem_Cont["KF"]["NewLevel"] then
			Sys_MsgBox(tNewTaskItem_Text["NOvernum"])
		else
			Sys_MsgBox(tNewTaskItem_Text["NOvernumfull"])
		end
		return
	end
	--判断背包空间（最大）
	if not User_CheckLeftSpace(tNewTaskItem_Cont["KF"]["Space"]) then
		User_TalkChannel2005(string.format(tNewTaskItem_Text["NoSpace"],tNewTaskItem_Cont["KF"]["Space"],Get_ItemtypeName(nItemId)))
		return
	end
	
	local tCanAcceptTask = NewTaskItem_ReturnKfTask(nItemId)
	 if (#tCanAcceptTask == 0 ) then 
		Sys_MsgBox(tNewTaskItem_Text["NoKFTask"])
		return 
	end 
	Task_SetStatistic(tNewTaskItem_Stc["EventType"],tNewTaskItem_Stc["DataType"],1,1)	
	Task_SetStcTimestamp(tNewTaskItem_Stc["EventType"],tNewTaskItem_Stc["DataType"],0)
	local nTaskId  =tCanAcceptTask[math.random(1,#tCanAcceptTask)]
	local nTime = os.time()

	User_EffectAdd(tNewTaskItem_Effect[nTaskId]["Self"],tNewTaskItem_Effect[nTaskId]["Effect"])
	--延迟5S执行
	User_SetTimer(5,tNewTaskItem_Func[nTaskId],0)
end 


--返回当前未完成日常任务表
function NewTaskItem_ReturnTask(nItemId)
	--l可随机任务表
	local tCanAcceptTask = {}
	for k,v in pairs(tNewTaskItem_TaskId[nItemId]) do 
		-- 等级判断
		-- local nMeto = tNewTaskItem_Cont["Daily"]["Meto"]
		-- local nLevel = tNewTaskItem_Cont["Daily"]["Level"][k]
		-- if User_JudgeLevelAndMetempsychosis(nLevel,nMeto) then
			
			
			--幽兰花开是掩码，特殊处理
			
			if k == "YLHK" then 
				local nEvent = v["EventType"] 
				local nType = v["DataType"]
				local nData = v["Data"]
				--判断掩码是否隔天
				if Task_StcInterval(nEvent,nType,1,4) then
					Task_SetStatistic(nEvent,nType,0,1)
					Task_SetStcTimestamp(nEvent,nType,0)
				end
				if Task_ChkStcValue(nEvent,nType,"<",nData) then
					--存入表中
					table.insert(tCanAcceptTask,v["Type"])
				end
			elseif k=="CLXB" then 
				--判断片区任务是否完成
				if DailyTreasure_TaskCondit() and (not DailyTreasure_JudgeTime("Receive")) then 
					table.insert(tCanAcceptTask,v["Type"])
				end
			else
				local nTaskId1 = v["TaskId1"] 
				if k == "ZZ" then 
					if Get_UserLevel() >= 140 then 
						nTaskId1 = v["TaskId2"]
					end 
				end 
				-- local nTaskId2 = v["TaskId2"] or 0 
				
				if not Task_ChkTaskDetail(nTaskId1) then
					if k=="ZZ" and Get_UserLevel()>=140 and Task_ChkTaskDetail(v["TaskId1"]) then 
						local nComp2 = Get_TaskDetailCompleteFlag(v["TaskId1"] )
						local nData26 = Get_TaskDetailData6(v["TaskId1"] )
						if (nComp == v["nComplete"] and nData6 == v["nData6"]) or (nComp2 == v["nComplete"] and nData26 == v["nData6"]) then
						else 
							table.insert(tCanAcceptTask,v["Type"])
						end
					else 	
						table.insert(tCanAcceptTask,v["Type"])
					end 			
				else 
					local nComp = Get_TaskDetailCompleteFlag(nTaskId1)
					local nData6 = Get_TaskDetailData6(nTaskId1)
					if k ~= "ZYM" then 
						if nComp == v["nComplete"] and nData6 == v["nData6"] then
						else 
							table.insert(tCanAcceptTask,v["Type"])
						end
					else 
						if Task_ChkTaskDetailValue(nTaskId1,"CompleteFlag",">=",1) then
							if Task_DetailInterval(nTaskId1,1,4) then
								table.insert(tCanAcceptTask,v["Type"])
							end		
						else 
							table.insert(tCanAcceptTask,v["Type"])
						end
					end 
				end 
			end 				
		-- end 
	end 
	return tCanAcceptTask
end

--跨服任务部分
function NewTaskItem_ReturnKfTask(nItemId)
	--可随机任务表
	local tCanAcceptTask = {}
	--先发制人
	if FirstPerson_JudgeStc() then 
		table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["XFZR"]["Type"])
	end 
	--筑防设障
	-- local nEventType = tNewTaskItem_TaskId[nItemId]["ZFSZ"]["EventType"]
	-- local nDataType = tNewTaskItem_TaskId[nItemId]["ZFSZ"]["DataType"]
	-- Kuafu_Defense_ClearStc(nEventType,nDataType)
	--已完成
	-- if Task_ChkStcValue(nEventType,nDataType,"<",tNewTaskItem_TaskId[nItemId]["ZFSZ"]["Data"]) then
		-- table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["ZFSZ"]["Type"])
	-- end
	--降伏圣兽
	local nTaskId = tNewTaskItem_TaskId[nItemId]["JFSS"]["TaskId1"]
	local nTask_Rush = tNewTaskItem_TaskId[nItemId]["JFSS"]["TaskId2"]
	
	if not Task_ChkTaskDetail(nTaskId) then
		table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["JFSS"]["Type"])
	else
		local nComp = Get_TaskDetailData1(nTaskId)
		local nData6 = Get_TaskDetailData6(nTaskId)
		
		if nComp ~= 0 and nData6 ~= 0 then
		else
			table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["JFSS"]["Type"])
		end
	end
	--荒村焚妖
	--判断是否完成
	local  nTask_detail = tNewTaskItem_TaskId[nItemId]["HCFY"]["TaskId1"]
	if not Task_ChkTaskDetail(nTask_detail) then
		table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["HCFY"]["Type"])
	else
		local nTaskDetailData2 = Get_TaskDetailData2(nTask_detail)
		if Get_TaskDetailData6(nTask_detail) ~= 0 then
		else 
			table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["HCFY"]["Type"])
		end	
	end
	
	nTaskId =  tNewTaskItem_TaskId[nItemId]["SJKS"]["TaskId1"]
	if not Task_ChkTaskDetail(nTaskId) then
		table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["SJKS"]["Type"])
	else
		local nData = Get_TaskDetailData6(nTaskId)
		if nData < tNewTaskItem_TaskId[nItemId]["SJKS"]["Data"]  then
			table.insert(tCanAcceptTask,tNewTaskItem_TaskId[nItemId]["SJKS"]["Type"])
		end	
	end
	return tCanAcceptTask
end


--荒村焚妖领奖
function tNewTaskItem_Getvillages(nItemId,nUserId)
	local nTaskId = tNewTaskItem_TaskId[nItemId]["HCFY"]["TaskId1"]
	if not Item_ChkItem(nItemId,1,0,nUserId) then 
		return
	end 
	if  not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end 
	local nTaskDetailData2 = Get_TaskDetailData2(nTaskId,nUserId)
	if Get_TaskDetailData6(nTaskId,nUserId) ~= 0  then	
		return 
	end 
	Task_SetTaskDetailData2(nTaskId,0,nUserId)
	Task_SetTaskDetailData6(nTaskId,1,nUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
	Sys_SaveActionTaskLog(tNewTaskItem_Log[nTaskId],nUserId)
	National_War_AddIntegral(30,nUserId)
	-- Item_AddNewItem(3200004,"0 1 0 1440 1")
	RewardTemplate_UseItem(tNewTaskItem_ItemId[nTaskId],nUserId)
end 
--水晶犒赏
function tNewTaskItem_Crystal(nItemId,nUserId)
    local nTaskId = tNewTaskItem_TaskId[nItemId]["SJKS"]["TaskId1"]
	if not Item_ChkItem(nItemId,1,0,nUserId) then 
		return
	end 
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
		Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
	end
	local nData = Get_TaskDetailData6(nTaskId,nUserId)
	if nData >= tNewTaskItem_TaskId[nItemId]["SJKS"]["Data"]  then
		return 
	end 
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then 
		Task_SetTaskDetailData1(nTaskId,50,nUserId)
		FirstPerson_Crystal(nUserId)
	end 
end 
--降服圣兽
function tNewTaskItem_KillBoss(nItemId,nUserId)
	--Frontier_KillBoss_TaskComplete(nItemId,nUserId)
	local nTaskId = tNewTaskItem_TaskId[nItemId]["JFSS"]["TaskId1"]
	if not Item_ChkItem(nItemId,1,0,nUserId) then 
		return
	end 
	 if not Task_ChkTaskDetail(nTaskId,nUserId) then
		Task_AddTaskDetail(nTaskId,0,nUserId)
	end
	local nComp = Get_TaskDetailData1(nTaskId,nUserId)
	local nData6 = Get_TaskDetailData6(nTaskId,nUserId)
		
	if nComp ~= 0 and nData6 ~= 0 then
		return
	end 
	if Item_ChkItem(nItemId,1,0,nUserId) and Item_DelItem(nItemId,1,0,nUserId) then 
		Task_SetTaskDetailData6(nTaskId,1,nUserId)
-- 给奖励
		Task_SetTaskDetailData1(nTaskId,1,nUserId)
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nUserId)
		Task_SetTaskDetailData7(nTaskId,os.time(),nUserId)
		RewardTemplate_UseItem(tNewTaskItem_RewardItem[1],nUserId)
		User_TalkChannel2005(tFrontier_KillBoss_Text["ItemMsg"]["Complete"],nUserId )
		Sys_SaveActionFestivalLog(tNewTaskItem_Log[nTaskId],nUserId)
	end 
end 

--赤龙寻宝
function tNewTaskItem_FindTreasure(nItemId,nUserId)
	local nEvent = tNewTaskItem_TaskId[nItemId]["CLXB"]["EventType"]
	local nType = tNewTaskItem_TaskId[nItemId]["CLXB"]["DataType"] 
	if not Item_ChkItem(nItemId,1,0,nUserId) then 
		return
	end 
	if NewTaskItem_TaskCondit(nUserId) and not NewTaskItem_JudgeTime(nUserId) then 
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		RewardTemplate_UseItem(tNewTaskItem_RewardItem[nItemId],nUserId)
	end
end 

function tNewTaskItem_AwardItem()
	RewardTemplate_UseItemAndMsg(tNewTaskItem_GetItem[3303084])
end 


function NewTaskItem_TaskCondit(nUserId)
	local nTaskId = tNewTaskItem_Cont["TaskId"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return false
	end
	
	return Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId)
end

function NewTaskItem_JudgeTime(nUserId)
	local nEvent = tNewTaskItem_Cont["EventType"]
	local nType = tNewTaskItem_Cont["DataType"]
	local nData = tNewTaskItem_Cont["Data"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		return false
	end
	
	return Task_ChkStcValue(nEvent,nType,">=",nData,nUserId)
end

--赤龙寻宝
function NewTaskItem_FindTreasure(nItemId,nUserId)
	local nEvent = tNewTaskItem_TaskId[3303084]["CLXB"]["EventType"]
	local nType = tNewTaskItem_TaskId[3303084]["CLXB"]["DataType"] 
	local tAward = CommonFunc_Copy(tNewTaskItem_RewardItem[nItemId])
	
	if nItemId == tNewTaskItem_Cont["Item"] then
		tAward[1][1]["Talk"] = tDailyAlleviate_Text["Channel2005"]["Clxb"][1]
		tAward[1][2]["Talk"] = tDailyAlleviate_Text["Channel2005"]["Clxb"][2]
	end
	
	if nItemId ~= tNewTaskItem_Cont["Item"] then
		if not Item_ChkItem(nItemId,1,0,nUserId) then
			return
		end
	end 
	if NewTaskItem_TaskCondit(nUserId) and not NewTaskItem_JudgeTime(nUserId) then 
		Task_SetStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		
		if tAward[1] ~= nil then
			local tAwardRandom = RewardTemplate_NewRandom(tAward,1,nUserId)
			
			if tAwardRandom[1]["tAward"][1]["Index"] ~= nil then
				local nIndex = tAwardRandom[1]["tAward"][1]["Index"]
				return nIndex
			end
		else
			RewardTemplate_UseItem(tAward,nUserId)
		end
	end
end 

--判断日常任务完成情况，添加阶段性任务
function NewTaskItem_AddProcessTask(nUserIds)
	local nMark = 0
	local nUserId = nUserIds or Get_UserId()
	for k,v in pairs(tNewTaskItem_AddTask) do
		if v["TaskId"] ~= nil then
			local nTaskId = v["TaskId"]
			if not Task_ChkTaskDetail(nTaskId,nUserId) then
				if v["TaskId1"] ~= nil then
					nTaskId = v["TaskId1"]
				end
			end
			
			if Task_ChkTaskDetail(nTaskId,nUserId) then
				if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag","==",v["complete"],nUserId) then
					if Task_ChkTaskDetailValue(nTaskId,"6","==",v["data6"],nUserId) then
						if v["TimeType"] ~= nil then
							if not Task_DetailInterval(nTaskId,v["Delay"],v["TimeType"],nUserId) then
								nMark = nMark + 1
							end
						else
							nMark = nMark + 1
						end
					end
				end
			end
		end
		
		if v["EventType"] ~= nil then
			if v["TimeType"] ~= nil then
				if not Task_StcInterval(v["EventType"],v["DataType"],v["Delay"],v["TimeType"],nUserId) then
					if Task_ChkStcValue(v["EventType"],v["DataType"],v["Opt"],v["Data"],nUserId) then
						nMark = nMark + 1
					end
				end
			end
		end

	end

	if nMark >= #tNewTaskItem_AddTask then
		User_AddProcessTaskSchedule(40,0,1,nUserId)
	end
end

-----------------------------------物品部分-------------------------------------
-- 3303084    随机日常任务完成令
tItem[3303084] = tItem[3303084] or {}
tItem[3303084]["Function"] = function(nItemId, sItemName)
	NewTaskItem_Daily(nItemId)
end

-- 3303085    随机国境任务完成令
tItem[3303085] = tItem[3303085] or {}
tItem[3303085]["Function"] = function(nItemId, sItemName)
	NewTaskItem_KF(nItemId)
end