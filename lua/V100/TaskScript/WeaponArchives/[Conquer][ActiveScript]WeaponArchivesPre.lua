------------------------------------------------------------------------------------
--Name：        190523[简体征服][活动脚本]百兵谱前置任务
--Creator:     傅伟龙
--Created:     2019-05-22
------------------------------------------------------------------------------------
--SpiritAnimalInstancet

--logId:10002449



-----------------------------------数据部分配置--------------------------------------
--临时表
local tWeaponArchivesPre_TempTable = {}

local tWeaponArchivesPre_Cont = {}
	
	tWeaponArchivesPre_Cont["Level"] = 40
	tWeaponArchivesPre_Cont["Mete"] = 0
	
	tWeaponArchivesPre_Cont["MinPro"] = 10
	tWeaponArchivesPre_Cont["MaxPro"] = 15
	
	--副本id
	tWeaponArchivesPre_Cont["InstanceId"] = 309
	-- 怪物id
	tWeaponArchivesPre_Cont["MonsterId"] = 4997
	--任务id
	tWeaponArchivesPre_Cont["TaskId"] = 4177
	
	tWeaponArchivesPre_Cont["CostEmoney"] = 100
	
	tWeaponArchivesPre_Cont["Map"] = {}
	tWeaponArchivesPre_Cont["Map"][24295] = {}
	tWeaponArchivesPre_Cont["Map"][24295][1] = {}
	tWeaponArchivesPre_Cont["Map"][24295][1]["NpcId"] = 24295
	tWeaponArchivesPre_Cont["Map"][24295][1]["MapId"] = 10656
	tWeaponArchivesPre_Cont["Map"][24295][1]["PosX"] = 79 
	tWeaponArchivesPre_Cont["Map"][24295][1]["PosY"] = 67
	
	local tWeaponArchivesPre_Monster = {}
	tWeaponArchivesPre_Monster[4997] = {}
	tWeaponArchivesPre_Monster[4997]["Id"] = 4997
	tWeaponArchivesPre_Monster[4997]["MapId"] = 10662
	tWeaponArchivesPre_Monster[4997]["Cellx"] = 61
	tWeaponArchivesPre_Monster[4997]["Celly"] = 53
	tWeaponArchivesPre_Monster[4997]["GenID"] = 27265
	
	tWeaponArchivesPre_Cont["Npc"] = {}
	tWeaponArchivesPre_Cont["Npc"]["PoxX"] = 61
	tWeaponArchivesPre_Cont["Npc"]["PoxY"] = 53
	tWeaponArchivesPre_Cont["Npc"]["Task0"] = 97306940
	tWeaponArchivesPre_Cont["Npc"]["Lookface"] = 22940
	
	
	--掩码
local tWeaponArchivesPre_Stc = {}
	tWeaponArchivesPre_Stc[1] = {}
	tWeaponArchivesPre_Stc[1]["EventType"] = 197 
	tWeaponArchivesPre_Stc[1]["DataType"] = 49
	
	
	local tWeaponArchivesPre_KillEffect = {}
	tWeaponArchivesPre_KillEffect[1] = "self"
	tWeaponArchivesPre_KillEffect[2] = "longlingSL"
	tWeaponArchivesPre_KillEffect[3] = "Disapear1"
	tWeaponArchivesPre_KillEffect[4] = "glebesword"
	tWeaponArchivesPre_KillEffect[5] = "fire1"
	
--怪物掉落log
local tWeaponArchivesPre_Log = {}
	tWeaponArchivesPre_Log["EmoneyLog"] = "10000	0363"

---------------------------------------------物品逻辑---------------------------------------

--传送回双龙城
function WeaponArchivesPre_ChgCentralPlain(nNpcId)
	
	local nIndex = 1
	-- if SpecialServer_ChkNoGiftServer() then
		-- nIndex = 2
	-- end
	
	
	local nMapId = tWeaponArchivesPre_Cont["Map"][nNpcId][nIndex]["MapId"]
	local nPoX = tWeaponArchivesPre_Cont["Map"][nNpcId][nIndex]["PosX"] 
	local nPoY = tWeaponArchivesPre_Cont["Map"][nNpcId][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
	--打开界面
	-- User_OpenDialog(968)
	LinkNpcGossipFunc_New(23971,"1-2")
end

--检测职业，等级
function WeaponArchivesPre_ChkLevelAndPro()
	local nLevel = tWeaponArchivesPre_Cont["Level"]
	local nMete = tWeaponArchivesPre_Cont["Mete"]
	local nPro=Get_UserProfession()
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		if nPro>=tWeaponArchivesPre_Cont["MinPro"] and nPro <= tWeaponArchivesPre_Cont["MaxPro"] then
			return true
		else
			return false
		end
	else
		return false
	end
	
end

--npc接入
function WeaponArchivesPre_NpcMain(nNpcId)
	if not WeaponArchivesPre_ChkLevelAndPro() then
		return
	end
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	local nUserId = Get_UserId()
	
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	
	--增加检测：没有任务但掩码异常情况，直接清空掩码
	if not (Task_ChkTaskDetail(nTaskId,nUserId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId)) then
		if Task_ChkStcValue(nTaskEvent,nTaskType,">=",1,nUserId) then
			Task_SetStatistic(nTaskEvent,nTaskType,0,1,nUserId)
		end
	end
	
	--未接到任务或任务已完成
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
	elseif Task_ChkStcValue(nTaskEvent,nTaskType,"==",2) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
	else
		LinkNpcGossipFunc_New(nNpcId,"1-1")
	end
	
	
end

-- 接受任务
function WeaponArchivesPre_AcceptedTask(nNpcId)
	local nUserId = Get_UserId()
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	

	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	if WeaponArchivesPre_AddTaskDetail(nTaskId) then
		--打掩码
		if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",0) then
			return
		end
	
		if Task_SetStatistic(nTaskEvent,nTaskType,1,1) then
			Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
	
		end
	
	end
end

--完成任务
function WeaponArchivesPre_CompleteTask(nNpcId)
	
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return
	end
	
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",2) then
		return
	end
	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		return true
	end
	
	-- User_PlayPlot(7)
	--读条
	-- User_SetExplore(3,tWeaponArchivesPre_Text["loading"],220,"WeaponArchivesPre_SetExplor")
	WeaponArchivesPre_SetExplor() 
end
--读条后触发
function WeaponArchivesPre_SetExplor(nUserId) 
	local nNowUserId = nUserId or Get_UserId()
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	
	if Task_SetStatistic(nTaskEvent,nTaskType,10,1,nNowUserId) then
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0,nNowUserId)
		
		--解除变身
		User_SetTransform()

		
		local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
		Task_SetTaskDetailData4(nTaskId,1,nNowUserId)
		-- User_EffectAdd(tWeaponArchivesPre_KillEffect[1],tWeaponArchivesPre_KillEffect[2],nUserId)
		LinkNpcGossipFunc_New(24295,"1-3",0,8,nUserId)
		User_PlayPlot(7)
		User_OpenDialog(980,0,nUserId)
		-- User_OpenDialog(968,0,nUserId)
	end
end

--创建任务
function WeaponArchivesPre_AddTaskDetail(nTaskId)
	if Task_ChkTaskDetail(nTaskId) then
		
		return true
	end
	
	if Task_AddTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		
		return true
	else
		Sys_MsgBox(tWeaponArchivesPre_Text["MsgBox"]["MsgTask"])
		return false
	end
	
end

--进入副本
function WeaponArchivesPre_EnterInstance(nNpcId,nStcData)
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers(nUserId) >= 2 then
		Sys_MsgBox(tWeaponArchivesPre_Text["MsgBox"]["MsgTeam"])
		return
	end
	
	if not WeaponArchivesPre_ChkLevelAndPro() then
		return
	end
	
	local nUserMapId = Get_UserMapId()
	
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	--增加检测：没有任务但掩码异常情况，直接清空掩码
	if not (Task_ChkTaskDetail(nTaskId,nUserId) and Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1,nUserId)) then
		if Task_ChkStcValue(nTaskEvent,nTaskType,">=",1,nUserId) then
			Task_SetStatistic(nTaskEvent,nTaskType,0,1,nUserId)
		end
	end
	
	
	
	--任务已完成
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return
	end
	--接受任务
	WeaponArchivesPre_AcceptedTask(nNpcId)
	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		return 
	end
	
	local nInstanceId = tWeaponArchivesPre_Cont["InstanceId"]
	
	if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
		local nMapId =Get_UserMapId()
		
		User_EffectAdd(tWeaponArchivesPre_KillEffect[1],tWeaponArchivesPre_KillEffect[2])
		
		if Get_UserSex() ==1 then
			User_TransForm(15990,0,4995,18000)
		else
			User_TransForm(15991,0,4996,18000)
		end	
		
		--刷怪
		WeaponArchivesPre_CreateInstanceNpc()
	end
	
	
end

--创建npc
function WeaponArchivesPre_CreateInstanceNpc()
	
	local nMapId = Get_UserMapId(nUserId)
	local nPosX = tWeaponArchivesPre_Cont["Npc"]["PoxX"]
	local nPosY = tWeaponArchivesPre_Cont["Npc"]["PoxY"]
	local sName = tWeaponArchivesPre_Text["NpcName"]
	local nTask0 = tWeaponArchivesPre_Cont["Npc"]["Task0"]
	local nLookface = tWeaponArchivesPre_Cont["Npc"]["Lookface"]
	
	Npc_DelDynaNpc(nMapId, "name" , sName)
	Npc_CreateDynaNpc(sName,2,0,nLookface,0,0,nMapId,nPosX,nPosY,0,0,0,nTask0)
	
end

--创建怪物
function WeaponArchivesPre_RefalshBoss(nMonsterId)
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	
	--任务已完成
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return
	end
	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		return 
	end
	
	local nUserMapId = Get_UserMapId()
	local sName = tWeaponArchivesPre_Text["NpcName"]
	Npc_DelDynaNpc(nUserMapId, "name" , sName)
	
	
	local nCellx = tWeaponArchivesPre_Monster[nMonsterId]["Cellx"]
	local nCelly = tWeaponArchivesPre_Monster[nMonsterId]["Celly"]
	local nGenId = tWeaponArchivesPre_Monster[nMonsterId]["GenID"]
	Monster_DelMonster(nUserMapId,nMonsterId)
	Monster_Death(nMonsterId,nUserMapId)
	-- if Get_UserSex() ==1 then
		-- User_TransForm(15990,0,4995,18000)
	-- else
		-- User_TransForm(15991,0,4996,18000)
	-- end
	-- 刷新怪物
	Monster_AddAndCount(nUserMapId,nCellx,nCelly,nGenId,nMonsterId)
	
end


-------------------------------------------怪物逻辑------------------------------------
--怪物
function WeaponArchivesPre_KillMonster(nMonsterId)
	
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	
	
	
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	
	
	--未接到任务或任务已完成
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return
	end
	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		return true
	end
	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
	Task_SetTaskDetailData6(nTaskId,1,nNowUserId)
	
	if Task_SetStatistic(nTaskEvent,nTaskType,2,1) then
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
		WeaponArchivesPre_CreateInstanceNpc()
		-- LinkNpcGossipFunc_New(24295,"1-2")
		
		WeaponArchivesPre_CompleteTask(nNpcId)
		
	end
end



-------------------------------------------npc模板------------------------------------
tNpcFace[2294] = 2327

-- tNpcGossip[24271] = tNpcGossip[24271] or DefaultNpc:new{}
-- tNpcGossip[24271]["OptionHidden"] = 1
-- tNpcGossip[24271]["DialogueText"] = tWeaponArchivesPre_Text[24271]

-- tNpcGossip[24271]["Text1-1"] = {111,112,113}
-- tNpcGossip[24271]["tOption1-1"] = {111}
-- tNpcGossip[24271]["OptionPoint111"]="2-1"

-- tNpcGossip[24271]["Text2-1"] = {211,212,213}
-- tNpcGossip[24271]["tOption2-1"] = {211}
-- tNpcGossip[24271]["OptionFunc211"] = "WeaponArchivesPre_EnterInstance</N>24271"

tNpcGossip[24295] = tNpcGossip[24295] or DefaultNpc:new{}
tNpcGossip[24295]["OptionHidden"] = 1
tNpcGossip[24295]["DialogueText"] = tWeaponArchivesPre_Text[24295]

tNpcGossip[24295]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[24295]["tOption1-1"] = {111}
tNpcGossip[24295]["OptionFunc111"] = "WeaponArchivesPre_RefalshBoss</N>4997"
tNpcGossip[24295]["ChkFunc1-1"] = function ()
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	
	--未接到任务或任务已完成
	if Task_ChkStcValue(nTaskEvent,nTaskType,">=",2) then
		return false
	end
	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	return true
end

tNpcGossip[24295]["Text1-2"] = {211,212,213}
tNpcGossip[24295]["tOption1-2"] = {211}
tNpcGossip[24295]["OptionFunc211"] = "WeaponArchivesPre_CompleteTask</N>24295"
tNpcGossip[24295]["ChkFunc1-2"] = function ()
	local nTaskEvent = tWeaponArchivesPre_Stc[1]["EventType"]
	local nTaskType = tWeaponArchivesPre_Stc[1]["DataType"]
	
	local nTaskId = tWeaponArchivesPre_Cont["TaskId"]
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	
	--未接到任务或任务已完成
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return false
	end
	
	return true
end

tNpcGossip[24295]["Text1-3"] = {311,312,313}
tNpcGossip[24295]["tOption1-3"] = {311}
tNpcGossip[24295]["OptionFunc311"] = "WeaponArchivesPre_ChgCentralPlain</N>24295"


-------------------------------------------物品模板------------------------------------

--------------------------------------------怪物模板----------------------------------
local tWeaponArchivesPre_KillMonster ={}

	tWeaponArchivesPre_KillMonster[1] = {}
	tWeaponArchivesPre_KillMonster[1]["Function"] = WeaponArchivesPre_KillMonster
	tWeaponArchivesPre_KillMonster[1]["MonsterId"] = {4997}
	table.insert(tMonsterDrop_AreaLoad,tWeaponArchivesPre_KillMonster[1])
	
	