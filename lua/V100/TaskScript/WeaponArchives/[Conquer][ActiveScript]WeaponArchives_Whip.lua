------------------------------------------------------------------------------------
--Name：        190415[简体征服][活动脚本]勇士百兵谱支线任务
--Creator:     傅伟龙
--Created:     2019-03-22
------------------------------------------------------------------------------------
--SpiritAnimalInstancet

--logId:10002449



-----------------------------------数据部分配置--------------------------------------
--临时表
local tWeaponArchives_Whip_TempTable = {}

local tWeaponArchives_Whip_Cont = {}
	
	--副本id
	tWeaponArchives_Whip_Cont["InstanceId"] = 280
	-- 怪物id
	tWeaponArchives_Whip_Cont["MonsterId"] = 4990
	--任务id
	tWeaponArchives_Whip_Cont["TaskId"] = 4124
	--前置任务id
	tWeaponArchives_Whip_Cont["PreTaskId"] = 1087
	tWeaponArchives_Whip_Cont["NoGifPreTaskId"] = 1095
	
	tWeaponArchives_Whip_Cont["CostEmoney"] = 100
	
	tWeaponArchives_Whip_Cont["Map"] = {}
	
	tWeaponArchives_Whip_Cont["Map"][24135] = {}
	tWeaponArchives_Whip_Cont["Map"][24135][1] = {}
	tWeaponArchives_Whip_Cont["Map"][24135][1]["NpcId"] = 24135
	tWeaponArchives_Whip_Cont["Map"][24135][1]["MapId"] = 1002
	tWeaponArchives_Whip_Cont["Map"][24135][1]["PosX"] = 251 
	tWeaponArchives_Whip_Cont["Map"][24135][1]["PosY"] = 380
	
	tWeaponArchives_Whip_Cont["Map"][24135][2] = {}
	tWeaponArchives_Whip_Cont["Map"][24135][2]["NpcId"] = 24135
	tWeaponArchives_Whip_Cont["Map"][24135][2]["MapId"] = 1036
	tWeaponArchives_Whip_Cont["Map"][24135][2]["PosX"] = 263 
	tWeaponArchives_Whip_Cont["Map"][24135][2]["PosY"] = 168
	
	tWeaponArchives_Whip_Cont["Map"][24136] = {}
	tWeaponArchives_Whip_Cont["Map"][24136][1] = {}
	tWeaponArchives_Whip_Cont["Map"][24136][1]["NpcId"] = 24136
	tWeaponArchives_Whip_Cont["Map"][24136][1]["MapId"] = 1002
	tWeaponArchives_Whip_Cont["Map"][24136][1]["PosX"] = 480 
	tWeaponArchives_Whip_Cont["Map"][24136][1]["PosY"] = 362
	
	tWeaponArchives_Whip_Cont["Map"][24136][2] = {}
	tWeaponArchives_Whip_Cont["Map"][24136][2]["NpcId"] = 24136
	tWeaponArchives_Whip_Cont["Map"][24136][2]["MapId"] = 10364
	tWeaponArchives_Whip_Cont["Map"][24136][2]["PosX"] = 244
	tWeaponArchives_Whip_Cont["Map"][24136][2]["PosY"] = 213
	
	tWeaponArchives_Whip_Cont["Map"][24137] = {}
	tWeaponArchives_Whip_Cont["Map"][24137][1] = {}
	tWeaponArchives_Whip_Cont["Map"][24137][1]["NpcId"] = 24137
	tWeaponArchives_Whip_Cont["Map"][24137][1]["MapId"] = 1011
	tWeaponArchives_Whip_Cont["Map"][24137][1]["PosX"] = 183 
	tWeaponArchives_Whip_Cont["Map"][24137][1]["PosY"] = 268
	
	tWeaponArchives_Whip_Cont["Map"][24137][2] = {}
	tWeaponArchives_Whip_Cont["Map"][24137][2]["NpcId"] = 24137
	tWeaponArchives_Whip_Cont["Map"][24137][2]["MapId"] = 10365
	tWeaponArchives_Whip_Cont["Map"][24137][2]["PosX"] = 183 
	tWeaponArchives_Whip_Cont["Map"][24137][2]["PosY"] = 268
	
	tWeaponArchives_Whip_Cont["Map"][24138] = {}
	tWeaponArchives_Whip_Cont["Map"][24138][1] = {}
	tWeaponArchives_Whip_Cont["Map"][24138][1]["NpcId"] = 24138
	tWeaponArchives_Whip_Cont["Map"][24138][1]["MapId"] = 1015
	tWeaponArchives_Whip_Cont["Map"][24138][1]["PosX"] = 764 
	tWeaponArchives_Whip_Cont["Map"][24138][1]["PosY"] = 588
	
	tWeaponArchives_Whip_Cont["Map"][24138][2] = {}
	tWeaponArchives_Whip_Cont["Map"][24138][2]["NpcId"] = 24138
	tWeaponArchives_Whip_Cont["Map"][24138][2]["MapId"] = 10368
	tWeaponArchives_Whip_Cont["Map"][24138][2]["PosX"] = 764
	tWeaponArchives_Whip_Cont["Map"][24138][2]["PosY"] = 588
	
	tWeaponArchives_Whip_Cont["Map"][24139] = {}
	tWeaponArchives_Whip_Cont["Map"][24139][1] = {}
	tWeaponArchives_Whip_Cont["Map"][24139][1]["NpcId"] = 24139
	tWeaponArchives_Whip_Cont["Map"][24139][1]["MapId"] = 1000
	tWeaponArchives_Whip_Cont["Map"][24139][1]["PosX"] = 464  
	tWeaponArchives_Whip_Cont["Map"][24139][1]["PosY"] = 635
	
	tWeaponArchives_Whip_Cont["Map"][24139][2] = {}
	tWeaponArchives_Whip_Cont["Map"][24139][2]["NpcId"] = 24139
	tWeaponArchives_Whip_Cont["Map"][24139][2]["MapId"] = 10367
	tWeaponArchives_Whip_Cont["Map"][24139][2]["PosX"] = 464 
	tWeaponArchives_Whip_Cont["Map"][24139][2]["PosY"] = 635
	
	tWeaponArchives_Whip_Cont["Map"][23971] = {}
	tWeaponArchives_Whip_Cont["Map"][23971][1] = {}
	tWeaponArchives_Whip_Cont["Map"][23971][1]["NpcId"] = 24139
	tWeaponArchives_Whip_Cont["Map"][23971][1]["MapId"] = 10656
	tWeaponArchives_Whip_Cont["Map"][23971][1]["PosX"] = 81  
	tWeaponArchives_Whip_Cont["Map"][23971][1]["PosY"] = 67
	
	tWeaponArchives_Whip_Cont["Map"][23971][2] = {}
	tWeaponArchives_Whip_Cont["Map"][23971][2]["NpcId"] = 24139
	tWeaponArchives_Whip_Cont["Map"][23971][2]["MapId"] = 10656
	tWeaponArchives_Whip_Cont["Map"][23971][2]["PosX"] = 81  
	tWeaponArchives_Whip_Cont["Map"][23971][2]["PosY"] = 67
	
	tWeaponArchives_Whip_Cont["TrapIdChgNpc"] = {}
	tWeaponArchives_Whip_Cont["TrapIdChgNpc"][2341] = 24136
	tWeaponArchives_Whip_Cont["TrapIdChgNpc"][2342] = 24137
	tWeaponArchives_Whip_Cont["TrapIdChgNpc"][2343] = 24138
	tWeaponArchives_Whip_Cont["TrapIdChgNpc"][2344] = 24139
	
	tWeaponArchives_Whip_Cont["StcDataChgNpc"] = {}
	tWeaponArchives_Whip_Cont["StcDataChgNpc"][1] = 24136
	tWeaponArchives_Whip_Cont["StcDataChgNpc"][2] = 24137
	tWeaponArchives_Whip_Cont["StcDataChgNpc"][4] = 24138
	tWeaponArchives_Whip_Cont["StcDataChgNpc"][8] = 24139
	
--掩码
local tWeaponArchives_Whip_Stc = {}
	tWeaponArchives_Whip_Stc[1] = {}
	tWeaponArchives_Whip_Stc[1]["EventType"] = 194 
	tWeaponArchives_Whip_Stc[1]["DataType"] = 06
	tWeaponArchives_Whip_Stc[1]["RewardData"] = 100
	
	tWeaponArchives_Whip_Stc[2] = {}
	tWeaponArchives_Whip_Stc[2]["EventType"] = 194 
	tWeaponArchives_Whip_Stc[2]["DataType"] = 07

	
	tWeaponArchives_Whip_Stc[3] = {}
	tWeaponArchives_Whip_Stc[3]["EventType"] = 194 
	tWeaponArchives_Whip_Stc[3]["DataType"] = 08
	
	tWeaponArchives_Whip_Stc[4] = {}
	tWeaponArchives_Whip_Stc[4]["EventType"] = 194 
	tWeaponArchives_Whip_Stc[4]["DataType"] = 09
	
	tWeaponArchives_Whip_Stc[5] = {}
	tWeaponArchives_Whip_Stc[5]["EventType"] = 197 
	tWeaponArchives_Whip_Stc[5]["DataType"] = 20

	
local tWeaponArchives_WhipMonster = {}
	tWeaponArchives_WhipMonster[4990] = {}
	tWeaponArchives_WhipMonster[4990]["Id"] = 4990
	tWeaponArchives_WhipMonster[4990]["MapId"] = 10506
	tWeaponArchives_WhipMonster[4990]["Cellx"] = 66
	tWeaponArchives_WhipMonster[4990]["Celly"] = 66
	tWeaponArchives_WhipMonster[4990]["GenID"] = 27142
	
local tWeaponArchives_Whip_Trap = {}
	tWeaponArchives_Whip_Trap[24136] = {}
	tWeaponArchives_Whip_Trap[24136]["TrapType"] = 2341
	tWeaponArchives_Whip_Trap[24136]["Look"] = 811
	tWeaponArchives_Whip_Trap[24136]["PosX"] = 40
	tWeaponArchives_Whip_Trap[24136]["PosY"] = 66
	
	tWeaponArchives_Whip_Trap[24137] = {}
	tWeaponArchives_Whip_Trap[24137]["TrapType"] = 2342
	tWeaponArchives_Whip_Trap[24137]["Look"] = 811
	tWeaponArchives_Whip_Trap[24137]["PosX"] = 40
	tWeaponArchives_Whip_Trap[24137]["PosY"] = 66
	
	tWeaponArchives_Whip_Trap[24138] = {}
	tWeaponArchives_Whip_Trap[24138]["TrapType"] = 2343
	tWeaponArchives_Whip_Trap[24138]["Look"] = 811
	tWeaponArchives_Whip_Trap[24138]["PosX"] = 40
	tWeaponArchives_Whip_Trap[24138]["PosY"] = 66
	
	tWeaponArchives_Whip_Trap[24139] = {}
	tWeaponArchives_Whip_Trap[24139]["TrapType"] = 2344
	tWeaponArchives_Whip_Trap[24139]["Look"] = 811
	tWeaponArchives_Whip_Trap[24139]["PosX"] = 40
	tWeaponArchives_Whip_Trap[24139]["PosY"] = 66

	local tWeaponArchives_Whip_RandomPro = {}
	--奖池概率
	tWeaponArchives_Whip_RandomPro[1] = {}
	tWeaponArchives_Whip_RandomPro[1]["ItemChanceSum"] = 10000
	-- 
	tWeaponArchives_Whip_RandomPro[1][1] = {}
	tWeaponArchives_Whip_RandomPro[1][1]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[1][1]["ItemChance"] = 0
	tWeaponArchives_Whip_RandomPro[1][1]["Item_1"] = 1
	-- 
	tWeaponArchives_Whip_RandomPro[1][2] = {}
	tWeaponArchives_Whip_RandomPro[1][2]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[1][2]["ItemChance"] = 10000
	tWeaponArchives_Whip_RandomPro[1][2]["Item_1"] = 0
	
	tWeaponArchives_Whip_RandomPro[2] = {}
	tWeaponArchives_Whip_RandomPro[2]["ItemChanceSum"] = 10000
	-- 
	tWeaponArchives_Whip_RandomPro[2][1] = {}
	tWeaponArchives_Whip_RandomPro[2][1]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[2][1]["ItemChance"] = 2000
	tWeaponArchives_Whip_RandomPro[2][1]["Item_1"] = 1
	-- 
	tWeaponArchives_Whip_RandomPro[2][2] = {}
	tWeaponArchives_Whip_RandomPro[2][2]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[2][2]["ItemChance"] = 8000
	tWeaponArchives_Whip_RandomPro[2][2]["Item_1"] = 0
	
	tWeaponArchives_Whip_RandomPro[3] = {}
	tWeaponArchives_Whip_RandomPro[3]["ItemChanceSum"] = 10000
	-- 
	tWeaponArchives_Whip_RandomPro[3][1] = {}
	tWeaponArchives_Whip_RandomPro[3][1]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[3][1]["ItemChance"] = 5000
	tWeaponArchives_Whip_RandomPro[3][1]["Item_1"] = 1
	-- 
	tWeaponArchives_Whip_RandomPro[3][2] = {}
	tWeaponArchives_Whip_RandomPro[3][2]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[3][2]["ItemChance"] = 5000
	tWeaponArchives_Whip_RandomPro[3][2]["Item_1"] = 0
	
	tWeaponArchives_Whip_RandomPro[4] = {}
	tWeaponArchives_Whip_RandomPro[4]["ItemChanceSum"] = 10000
	-- 
	tWeaponArchives_Whip_RandomPro[4][1] = {}
	tWeaponArchives_Whip_RandomPro[4][1]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[4][1]["ItemChance"] = 10000
	tWeaponArchives_Whip_RandomPro[4][1]["Item_1"] = 1
	-- 
	tWeaponArchives_Whip_RandomPro[4][2] = {}
	tWeaponArchives_Whip_RandomPro[4][2]["RandomItemChanceType"] = 2
	tWeaponArchives_Whip_RandomPro[4][2]["ItemChance"] = 0
	tWeaponArchives_Whip_RandomPro[4][2]["Item_1"] = 0
	
	local tWeaponArchives_Whip_KillEffect = {}
	tWeaponArchives_Whip_KillEffect[1] = "self"
	tWeaponArchives_Whip_KillEffect[2] = "accession"
	tWeaponArchives_Whip_KillEffect[3] = "Disapear1"
	tWeaponArchives_Whip_KillEffect[4] = "glebesword"
	tWeaponArchives_Whip_KillEffect[5] = "fire1"
	
--怪物掉落log
local tWeaponArchives_Whip_Log = {}
	tWeaponArchives_Whip_Log["EmoneyLog"] = "10000	0363"

---------------------------------------------物品逻辑---------------------------------------

--传送回双龙城
function WeaponArchives_Whip_ChgCentralPlain(nNpcId)
	
	local nIndex = 1
	if tWeaponArchives_Whip_Cont["Map"][nNpcId][2] ~= nil then
		if SpecialServer_ChkNoGiftServer() then
			nIndex = 2
		end
	end
	
	local nMapId = tWeaponArchives_Whip_Cont["Map"][nNpcId][nIndex]["MapId"]
	local nPoX = tWeaponArchives_Whip_Cont["Map"][nNpcId][nIndex]["PosX"] 
	local nPoY = tWeaponArchives_Whip_Cont["Map"][nNpcId][nIndex]["PosY"] 
	User_UserRandBoundTrans(nMapId,nPoX,nPoY,1,1,0)
	
end

-- 接受任务
function WeaponArchives_Whip_AcceptedTask(nNpcId)
	local nUserId = Get_UserId()
	local nPreTaskId = tWeaponArchives_Whip_Cont["PreTaskId"]
	local nTaskId = tWeaponArchives_Whip_Cont["TaskId"]
	if SpecialServer_ChkNoGiftServer() then
		nPreTaskId=tWeaponArchives_Whip_Cont["NoGifPreTaskId"]
	end 
	
	if not Task_ChkTaskDetail(nPreTaskId) then
		return
	end
	
	Task_SetTaskDetailCompleteFlag(nPreTaskId,1,nUserId)
	
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",0) then
		return
	end
	--打掩码
	if not WeaponArchives_Whip_AddTaskDetail(nTaskId) then
		return
	end
	
	if Task_SetStatistic(nTaskEvent,nTaskType,1,1) then
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
		
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		
		
		
	
	end
end

--完成任务
function WeaponArchives_Whip_CompleteTask(nNpcId)
	local nUserId = Get_UserId()
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return
	end
	
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",2) then
		return
	end
	
	--读条
	User_SetExplore(3,tWeaponArchives_Whip_Text["SetExplorCont"],220,"WeaponArchives_Whip_SetExplor</N>"..nUserId)
	--完成任务掩码置10
	-- if Task_SetStatistic(nTaskEvent,nTaskType,10,1) then
		-- Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
		
		-- local nTaskId = tWeaponArchives_Whip_Cont["TaskId"]
		-- Task_SetTaskDetailCompleteFlag(nTaskId,1)
		-- Task_SetTaskDetailData6(nTaskId,1)
		-- Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["RewardWhip"])
	-- end

end
--读条后触发
function WeaponArchives_Whip_SetExplor(nUserId) 
	local nNowUserId = nUserId or Get_UserId()
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	local nEvent5 = tWeaponArchives_Whip_Stc[5]["EventType"]
	local nType5 = tWeaponArchives_Whip_Stc[5]["DataType"]
	
	if Task_SetStatistic(nTaskEvent,nTaskType,10,1,nNowUserId) then
		Task_SetStcTimestamp(nTaskEvent,nTaskType,0,nNowUserId)
		
		Task_AddStatistic(nEvent5,nType5,1,1,nNowUserId)
		Task_SetStcTimestamp(nEvent5,nType5,0,nNowUserId)
		
		local nTaskId = tWeaponArchives_Whip_Cont["TaskId"]
		Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
		Task_SetTaskDetailData6(nTaskId,1,nNowUserId)
		
		User_AwardHundredWeapon(440,nNowUserId)
		
		Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["RewardWhip"],"WeaponArchives_Whip_ChgCentralPlain</N>23971","NULL",nNowUserId)
		User_EffectAdd(tWeaponArchives_Whip_KillEffect[1],tWeaponArchives_Whip_KillEffect[2],nUserId)
	end
end

--创建任务
function WeaponArchives_Whip_AddTaskDetail(nTaskId)
	if Task_ChkTaskDetail(nTaskId) then
		
		return true
	end
	
	if Task_AddTaskDetail(nTaskId) then
		Task_SetTaskDetailCompleteFlag(nTaskId,0)
		Task_SetTaskDetailData5(nTaskId,1)
		
		return true
	else
		
		return false
	end
	
end
--花费天石完成任务
function WeaponArchives_Whip_CostEMoney(nNpcId)
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	local nEvent5 = tWeaponArchives_Whip_Stc[5]["EventType"]
	local nType5 = tWeaponArchives_Whip_Stc[5]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",10) then
		return
	end
	
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",1) then
		return
	end
	
	local nEmoney = tWeaponArchives_Whip_Cont["CostEmoney"]
	local nUserEmoney = Get_UserEMoney()
	if not (nUserEmoney >= nEmoney) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local sEmoneyBuyLog = tWeaponArchives_Whip_Log["EmoneyLog"]
	if User_AddEMoneyAndLog(-nEmoney,sEmoneyBuyLog,nUserId) then
		--完成任务掩码置10
		if Task_SetStatistic(nTaskEvent,nTaskType,10,1) then
			Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
			
			Task_AddStatistic(nEvent5,nType5,1,1,nNowUserId)
			Task_SetStcTimestamp(nEvent5,nType5,0,nNowUserId)
			
			local nTaskId = tWeaponArchives_Whip_Cont["TaskId"]
			Task_SetTaskDetailCompleteFlag(nTaskId,1)
			Task_SetTaskDetailData6(nTaskId,1)
			User_AwardHundredWeapon(440)
			Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["RewardWhip"],"WeaponArchives_Whip_ChgCentralPlain</N>23971")
			User_EffectAdd(tWeaponArchives_Whip_KillEffect[1],tWeaponArchives_Whip_KillEffect[4])
		end
	end
end

--进入副本
function WeaponArchives_Whip_EnterInstance(nNpcId,nStcData)
	
	local nUserId = Get_UserId()
	if Get_UserTeamNumbers(nUserId) >= 2 then
		Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["MsgTeam"])
		return
	end
	
	local nUserMapId = Get_UserMapId()
	
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	--未接到任务或任务已完成
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",1) then
		return
	end
	
	local nEvent = tWeaponArchives_Whip_Stc[2]["EventType"]
	local nType = tWeaponArchives_Whip_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType)
	
	
	--每个npc只能进入一次副本
	if Sys_ParseNumbersContain(nStcData,nData) then
		return
	end
	
	local nStcEvent = tWeaponArchives_Whip_Stc[4]["EventType"]
	local nStcType = tWeaponArchives_Whip_Stc[4]["DataType"]
	
	-- nData = nStcData + nData

	if Task_SetStatistic(nStcEvent,nStcType,nStcData,1) then
		Task_SetStcTimestamp(nStcEvent,nStcType,0)
		
		local nInstanceId = tWeaponArchives_Whip_Cont["InstanceId"]
	
		if User_EnterInstance(nInstanceId,0,0,0,nUserId) then
			local nMapId =Get_UserMapId()
			local nMonsterId = tWeaponArchives_Whip_Cont["MonsterId"]
			--刷怪
			WeaponArchives_WhipRefalshBoss(4990)
			--创建陷阱
			WeaponArchives_Whip_CreateMapTrap(nNpcId)
		end
		
	end
	
	
end
--创建怪物
function WeaponArchives_WhipRefalshBoss(nMonsterId)
	local nUserMapId = Get_UserMapId()
	
	-- local nMonsterId = tWeaponArchives_WhipMonster[nMonsterId]["Id"]
	-- local nMapId = tWeaponArchives_WhipMonster[nMonsterId]["MapId"]
	local nCellx = tWeaponArchives_WhipMonster[nMonsterId]["Cellx"]
	local nCelly = tWeaponArchives_WhipMonster[nMonsterId]["Celly"]
	local nGenId = tWeaponArchives_WhipMonster[nMonsterId]["GenID"]
	Monster_DelMonster(nUserMapId,nMonsterId)
	Monster_Death(nMonsterId,nUserMapId)
	
	-- 刷新怪物
	Monster_AddAndCount(nUserMapId,nCellx,nCelly,nGenId,nMonsterId)
	
end

--创建陷阱
function WeaponArchives_Whip_CreateMapTrap(nIndex)
	if tWeaponArchives_Whip_Trap[nIndex]["TrapType"] ~= nil then
		
		local nTrapType = tWeaponArchives_Whip_Trap[nIndex]["TrapType"]
		local nLook = tWeaponArchives_Whip_Trap[nIndex]["Look"]
		local nUserMapId = Get_UserMapId()
		local nPosX = tWeaponArchives_Whip_Trap[nIndex]["PosX"]
		local nPosY = tWeaponArchives_Whip_Trap[nIndex]["PosY"]
		local nCount = MoveTrap_GetCount(nTrapType)
		if nCount > 1 then
			Trap_DelMapTrap(nUserMapId,nTrapType)
		end
		-- 创建陷阱
		Trap_CreateMapTrap(nTrapType,nLook,0,nUserMapId,nPosX,nPosY,0,0)
		
	end
end
--检测选项
function WeaponArchives_Whip_ChkOption(nStcData)
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",1) then
		local nEvent = tWeaponArchives_Whip_Stc[2]["EventType"]
		local nType = tWeaponArchives_Whip_Stc[2]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		
		--每个npc只能进入一次副本
		if Sys_ParseNumbersContain(nStcData,nData) then
			return false
		end
		return true
	else
		return false
	end
end

--检测选项
function WeaponArchives_Whip_ChkOption1(nStcData)
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",1) then
		local nEvent = tWeaponArchives_Whip_Stc[2]["EventType"]
		local nType = tWeaponArchives_Whip_Stc[2]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType)
		
		
		--每个npc只能进入一次副本
		if Sys_ParseNumbersContain(nStcData,nData) then
			return true
		end
		return false
	else
		return false
	end
end
-------------------------------------------怪物逻辑------------------------------------
--怪物
function WeaponArchives_Whip_KillMonster(nMonsterId)
	
	local nUserId = Get_UserId()
	local nUserMapId = Get_UserMapId()
	Monster_Death(nMonsterId,nUserMapId)
	
	
	
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	--未接到任务或任务已完成
	if not Task_ChkStcValue(nTaskEvent,nTaskType,"==",1) then
		return
	end
	
	local nEvent = tWeaponArchives_Whip_Stc[3]["EventType"]
	local nType = tWeaponArchives_Whip_Stc[3]["DataType"]
	
	
	if Task_AddStatistic(nEvent,nType,1,1) then
		Task_SetStcTimestamp(nEvent,nType,0)
		
		local StcData1 = Get_UserStatisticValue(nEvent,nType)
		
		local nDaEvent = tWeaponArchives_Whip_Stc[2]["EventType"]
		local nDaType = tWeaponArchives_Whip_Stc[2]["DataType"]
		local nData = Get_UserStatisticValue(nDaEvent,nDaType)
		
		local nStcEvent = tWeaponArchives_Whip_Stc[4]["EventType"]
		local nStcType = tWeaponArchives_Whip_Stc[4]["DataType"]
		local nStcData = Get_UserStatisticValue(nStcEvent,nStcType)
		
		
		
		nData = nStcData + nData
		
		Task_SetStatistic(nDaEvent,nDaType,nData,1) 
		Task_SetStcTimestamp(nDaEvent,nDaType,0)
		
		local flat,tNum = Probabil_RandomAward(tWeaponArchives_Whip_RandomPro,StcData1)
		
		if tNum[1]["tAward"][1]["Item_1"] == 1 then
			Task_SetStatistic(nTaskEvent,nTaskType,2,1) --掩码为准表示已击杀邪剑仙
			Task_SetStcTimestamp(nTaskEvent,nTaskType,0)
			User_Screffect(1)
			local nTaskId = tWeaponArchives_Whip_Cont["TaskId"]
			Task_SetTaskDetailData6(nTaskId,1)
			Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["BossDie"],"WeaponArchives_Whip_ChgCentralPlain</N>24135","NULL",nUserId)
			User_EffectAdd(tWeaponArchives_Whip_KillEffect[1],tWeaponArchives_Whip_KillEffect[2])
		else
			
			local nNpcId = tWeaponArchives_Whip_Cont["StcDataChgNpc"][nStcData]
			Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["NoBossDie"],"WeaponArchives_Whip_ChgCentralPlain</N>".. nNpcId,"NULL",nUserId)
			User_EffectAdd(tWeaponArchives_Whip_KillEffect[1],tWeaponArchives_Whip_KillEffect[3])
		end
		local nCellx = tWeaponArchives_WhipMonster[4990]["Cellx"]
		local nCelly = tWeaponArchives_WhipMonster[4990]["Celly"]
		Map_Effect(nUserMapId,nCellx,nCelly,tWeaponArchives_Whip_KillEffect[5])
	end
	
	
	
end



-------------------------------------------npc模板------------------------------------
tNpcFace[1711] = 6
tNpcFace[1712] = 66
tNpcFace[1713] = 13
tNpcFace[1714] = 34
tNpcFace[5993] = 27

tNpcGossip[24135] = tNpcGossip[24135] or DefaultNpc:new{}
tNpcGossip[24135]["OptionHidden"] = 1
tNpcGossip[24135]["DialogueText"] = tWeaponArchives_Whip_Text[24135]
--任务未接
tNpcGossip[24135]["Text1-1"] = {111,112,113,114,115,116}
tNpcGossip[24135]["tOption1-1"] = {111}
tNpcGossip[24135]["OptionFunc111"] = "WeaponArchives_Whip_AcceptedTask</N>24135"
tNpcGossip[24135]["ChkFunc1-1"] = function ()
	local nUserId = Get_UserId()
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	local nPreTaskId = tWeaponArchives_Whip_Cont["PreTaskId"]
	
	if SpecialServer_ChkNoGiftServer() then
		nPreTaskId=tWeaponArchives_Whip_Cont["NoGifPreTaskId"]
	end 
	
	if not Task_ChkTaskDetail(nPreTaskId) then
		
		return false
	end
	
	--任务未接
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",0) then
		return true
	else
		return false
	end
end
--任务已接
tNpcGossip[24135]["Text1-2"] = {121,122,123,124}
tNpcGossip[24135]["tOption1-2"] = {121,122,123,124,125}
tNpcGossip[24135]["OptionFunc121"] = "WeaponArchives_Whip_ChgCentralPlain</N>24136"
tNpcGossip[24135]["OptionFunc122"] = "WeaponArchives_Whip_ChgCentralPlain</N>24137"
tNpcGossip[24135]["OptionFunc123"] = "WeaponArchives_Whip_ChgCentralPlain</N>24138"
tNpcGossip[24135]["OptionFunc124"] = "WeaponArchives_Whip_ChgCentralPlain</N>24139"
tNpcGossip[24135]["OptionPoint125"]="2-1"
-- tNpcGossip[24135]["OptionFunc125"] = "WeaponArchives_Whip_CostEMoney</N>24135"
tNpcGossip[24135]["OptionChkFunc121"] = function ()
	return WeaponArchives_Whip_ChkOption(1)
end
tNpcGossip[24135]["OptionChkFunc122"] = function ()
	return WeaponArchives_Whip_ChkOption(2)
end
tNpcGossip[24135]["OptionChkFunc123"] = function ()
	return WeaponArchives_Whip_ChkOption(4)
end
tNpcGossip[24135]["OptionChkFunc124"] = function ()
	return WeaponArchives_Whip_ChkOption(8)
end
tNpcGossip[24135]["ChkFunc1-2"] = function ()
	
	local nPreTaskId = tWeaponArchives_Whip_Cont["PreTaskId"]
	
	if SpecialServer_ChkNoGiftServer() then
		nPreTaskId=tWeaponArchives_Whip_Cont["NoGifPreTaskId"]
	end 
	
	if not Task_ChkTaskDetail(nPreTaskId) then
		return false
	end
	
	
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	--任务已接
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",1) then
		return true
	else
		return false
	end
end
--已达到完成
tNpcGossip[24135]["Text1-3"] = {131,132}
tNpcGossip[24135]["tOption1-3"] = {131}
tNpcGossip[24135]["OptionFunc131"] = "WeaponArchives_Whip_CompleteTask</N>24135"
tNpcGossip[24135]["ChkFunc1-3"] = function ()
	
	local nPreTaskId = tWeaponArchives_Whip_Cont["PreTaskId"]
	
	if SpecialServer_ChkNoGiftServer() then
		nPreTaskId=tWeaponArchives_Whip_Cont["NoGifPreTaskId"]
	end 
	
	if not Task_ChkTaskDetail(nPreTaskId) then
		return false
	end
	
	local nTaskEvent = tWeaponArchives_Whip_Stc[1]["EventType"]
	local nTaskType = tWeaponArchives_Whip_Stc[1]["DataType"]
	
	--任务已完成
	if Task_ChkStcValue(nTaskEvent,nTaskType,"==",2) then
		return true
	else
		return false
	end
end
--任务完成后，闲聊对白
tNpcGossip[24135]["Text1-4"] = {141,142}
tNpcGossip[24135]["tOption1-4"] = {141}


tNpcGossip[24135]["Text2-1"] = {211}
tNpcGossip[24135]["tOption2-1"] = {211}
tNpcGossip[24135]["OptionFunc211"] = "WeaponArchives_Whip_CostEMoney</N>24135"

tNpcGossip[24135]["Text2-2"] = {221}
tNpcGossip[24135]["tOption2-2"] = {221}



tNpcGossip[24136] = tNpcGossip[24136] or DefaultNpc:new{}
tNpcGossip[24136]["OptionHidden"] = 1
tNpcGossip[24136]["DialogueText"] = tWeaponArchives_Whip_Text[24136]
--未进入过副本
tNpcGossip[24136]["Text1-1"] = {111,112}
tNpcGossip[24136]["tOption1-1"] = {111}
tNpcGossip[24136]["OptionFunc111"] = "WeaponArchives_Whip_EnterInstance</N>24136</N>1"
tNpcGossip[24136]["ChkFunc1-1"] = function ()
	return WeaponArchives_Whip_ChkOption(1)
end
--已进入过副本
tNpcGossip[24136]["Text1-2"] = {111,121}
tNpcGossip[24136]["tOption1-2"] = {121,122,123,124}
tNpcGossip[24136]["OptionFunc121"] = "WeaponArchives_Whip_ChgCentralPlain</N>24137"
tNpcGossip[24136]["OptionFunc122"] = "WeaponArchives_Whip_ChgCentralPlain</N>24138"
tNpcGossip[24136]["OptionFunc123"] = "WeaponArchives_Whip_ChgCentralPlain</N>24139"
tNpcGossip[24136]["OptionPoint124"]="2-1"
tNpcGossip[24136]["OptionChkFunc121"] = function ()
	return WeaponArchives_Whip_ChkOption(2)
end
tNpcGossip[24136]["OptionChkFunc122"] = function ()
	return WeaponArchives_Whip_ChkOption(4)
end
tNpcGossip[24136]["OptionChkFunc123"] = function ()
	return WeaponArchives_Whip_ChkOption(8)
end
tNpcGossip[24136]["ChkFunc1-2"] = function ()
	return WeaponArchives_Whip_ChkOption1(1)
end

--闲聊对白
tNpcGossip[24136]["Text1-3"] = {131,132}
tNpcGossip[24136]["tOption1-3"] = {131}

tNpcGossip[24136]["Text2-1"] = {211}
tNpcGossip[24136]["tOption2-1"] = {211}
tNpcGossip[24136]["OptionFunc211"] = "WeaponArchives_Whip_CostEMoney</N>24135"

tNpcGossip[24136]["Text2-2"] = {221}
tNpcGossip[24136]["tOption2-2"] = {221}


tNpcGossip[24137] = tNpcGossip[24137] or DefaultNpc:new{}
tNpcGossip[24137]["OptionHidden"] = 1
tNpcGossip[24137]["DialogueText"] = tWeaponArchives_Whip_Text[24137]
--未进入过副本
tNpcGossip[24137]["Text1-1"] = {111,112}
tNpcGossip[24137]["tOption1-1"] = {111}
tNpcGossip[24137]["OptionFunc111"] = "WeaponArchives_Whip_EnterInstance</N>24137</N>2"
tNpcGossip[24137]["ChkFunc1-1"] = function ()
	return WeaponArchives_Whip_ChkOption(2)
end
--已进入过副本
tNpcGossip[24137]["Text1-2"] = {111,121}
tNpcGossip[24137]["tOption1-2"] = {121,122,123,124}
tNpcGossip[24137]["OptionFunc121"] = "WeaponArchives_Whip_ChgCentralPlain</N>24136"
tNpcGossip[24137]["OptionFunc122"] = "WeaponArchives_Whip_ChgCentralPlain</N>24138"
tNpcGossip[24137]["OptionFunc123"] = "WeaponArchives_Whip_ChgCentralPlain</N>24139"
tNpcGossip[24137]["OptionPoint124"]="2-1"
tNpcGossip[24137]["OptionChkFunc121"] = function ()
	return WeaponArchives_Whip_ChkOption(1)
end
tNpcGossip[24137]["OptionChkFunc122"] = function ()
	return WeaponArchives_Whip_ChkOption(4)
end
tNpcGossip[24137]["OptionChkFunc123"] = function ()
	return WeaponArchives_Whip_ChkOption(8)
end
tNpcGossip[24137]["ChkFunc1-2"] = function ()
	return WeaponArchives_Whip_ChkOption1(2)
end

--闲聊对白
tNpcGossip[24137]["Text1-3"] = {131,132}
tNpcGossip[24137]["tOption1-3"] = {131}


tNpcGossip[24137]["Text2-1"] = {211}
tNpcGossip[24137]["tOption2-1"] = {211}
tNpcGossip[24137]["OptionFunc211"] = "WeaponArchives_Whip_CostEMoney</N>24135"

tNpcGossip[24137]["Text2-2"] = {221}
tNpcGossip[24137]["tOption2-2"] = {221}


tNpcGossip[24138] = tNpcGossip[24138] or DefaultNpc:new{}
tNpcGossip[24138]["OptionHidden"] = 1
tNpcGossip[24138]["DialogueText"] = tWeaponArchives_Whip_Text[24138]
--未进入过副本
tNpcGossip[24138]["Text1-1"] = {111,112}
tNpcGossip[24138]["tOption1-1"] = {111}
tNpcGossip[24138]["OptionFunc111"] = "WeaponArchives_Whip_EnterInstance</N>24138</N>4"
tNpcGossip[24138]["ChkFunc1-1"] = function ()
	return WeaponArchives_Whip_ChkOption(4)
end
--已进入过副本
tNpcGossip[24138]["Text1-2"] = {111,121}
tNpcGossip[24138]["tOption1-2"] = {121,122,123,124}
tNpcGossip[24138]["OptionFunc121"] = "WeaponArchives_Whip_ChgCentralPlain</N>24136"
tNpcGossip[24138]["OptionFunc122"] = "WeaponArchives_Whip_ChgCentralPlain</N>24137"
tNpcGossip[24138]["OptionFunc123"] = "WeaponArchives_Whip_ChgCentralPlain</N>24139"
tNpcGossip[24138]["OptionPoint124"]="2-1"
tNpcGossip[24138]["OptionChkFunc121"] = function ()
	return WeaponArchives_Whip_ChkOption(1)
end
tNpcGossip[24138]["OptionChkFunc122"] = function ()
	return WeaponArchives_Whip_ChkOption(2)
end
tNpcGossip[24138]["OptionChkFunc123"] = function ()
	return WeaponArchives_Whip_ChkOption(8)
end
tNpcGossip[24138]["ChkFunc1-2"] = function ()
	return WeaponArchives_Whip_ChkOption1(4)
end

--闲聊对白
tNpcGossip[24138]["Text1-3"] = {131,132}
tNpcGossip[24138]["tOption1-3"] = {131}


tNpcGossip[24138]["Text2-1"] = {211}
tNpcGossip[24138]["tOption2-1"] = {211}
tNpcGossip[24138]["OptionFunc211"] = "WeaponArchives_Whip_CostEMoney</N>24135"

tNpcGossip[24138]["Text2-2"] = {221}
tNpcGossip[24138]["tOption2-2"] = {221}


tNpcGossip[24139] = tNpcGossip[24139] or DefaultNpc:new{}
tNpcGossip[24139]["OptionHidden"] = 1
tNpcGossip[24139]["DialogueText"] = tWeaponArchives_Whip_Text[24139]
--未进入过副本
tNpcGossip[24139]["Text1-1"] = {111,112}
tNpcGossip[24139]["tOption1-1"] = {111}
tNpcGossip[24139]["OptionFunc111"] = "WeaponArchives_Whip_EnterInstance</N>24139</N>8"
tNpcGossip[24139]["ChkFunc1-1"] = function ()
	return WeaponArchives_Whip_ChkOption(8)
end
--已进入过副本
tNpcGossip[24139]["Text1-2"] = {111,121}
tNpcGossip[24139]["tOption1-2"] = {121,122,123,124}
tNpcGossip[24139]["OptionFunc121"] = "WeaponArchives_Whip_ChgCentralPlain</N>24136"
tNpcGossip[24139]["OptionFunc122"] = "WeaponArchives_Whip_ChgCentralPlain</N>24137"
tNpcGossip[24139]["OptionFunc123"] = "WeaponArchives_Whip_ChgCentralPlain</N>24138"
tNpcGossip[24139]["OptionPoint124"]="2-1"
tNpcGossip[24139]["OptionChkFunc121"] = function ()
	return WeaponArchives_Whip_ChkOption(1)
end
tNpcGossip[24139]["OptionChkFunc122"] = function ()
	return WeaponArchives_Whip_ChkOption(2)
end
tNpcGossip[24139]["OptionChkFunc123"] = function ()
	return WeaponArchives_Whip_ChkOption(4)
end
tNpcGossip[24139]["ChkFunc1-2"] = function ()
	return WeaponArchives_Whip_ChkOption1(8)
end

--闲聊对白
tNpcGossip[24139]["Text1-3"] = {131,132}
tNpcGossip[24139]["tOption1-3"] = {131}

tNpcGossip[24139]["Text2-1"] = {211}
tNpcGossip[24139]["tOption2-1"] = {211}
tNpcGossip[24139]["OptionFunc211"] = "WeaponArchives_Whip_CostEMoney</N>24135"

tNpcGossip[24139]["Text2-2"] = {221}
tNpcGossip[24139]["tOption2-2"] = {221}
-------------------------------------------物品模板------------------------------------


--------------------------------------------陷阱模板----------------------------------
tTrap[2341]= tTrap[2341] or {}
tTrap[2341]["Function"] = function (nTrapId,nTrapType)
	local nNpcId = tWeaponArchives_Whip_Cont["TrapIdChgNpc"][nTrapType]
	Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["FromMap"][nTrapType],"WeaponArchives_Whip_ChgCentralPlain</N>".. nNpcId,"NULL",nUserId)
end

tTrap[2342]= tTrap[2342] or {}
tTrap[2342]["Function"] = function (nTrapId,nTrapType)
	local nNpcId = tWeaponArchives_Whip_Cont["TrapIdChgNpc"][nTrapType]
	Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["FromMap"][nTrapType],"WeaponArchives_Whip_ChgCentralPlain</N>".. nNpcId,"NULL",nUserId)
end

tTrap[2343]= tTrap[2343] or {}
tTrap[2343]["Function"] = function (nTrapId,nTrapType)
	local nNpcId = tWeaponArchives_Whip_Cont["TrapIdChgNpc"][nTrapType]
	Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["FromMap"][nTrapType],"WeaponArchives_Whip_ChgCentralPlain</N>".. nNpcId,"NULL",nUserId)
end

tTrap[2344]= tTrap[2344] or {}
tTrap[2344]["Function"] = function (nTrapId,nTrapType)
	local nNpcId = tWeaponArchives_Whip_Cont["TrapIdChgNpc"][nTrapType]
	Sys_MsgBox(tWeaponArchives_Whip_Text["MsgBox"]["FromMap"][nTrapType],"WeaponArchives_Whip_ChgCentralPlain</N>".. nNpcId,"NULL",nUserId)
end
--------------------------------------------怪物模板----------------------------------
local tWeaponArchives_Whip_KillMonster ={}

	tWeaponArchives_Whip_KillMonster[1] = {}
	tWeaponArchives_Whip_KillMonster[1]["Function"] = WeaponArchives_Whip_KillMonster
	tWeaponArchives_Whip_KillMonster[1]["MonsterId"] = {4990}
	table.insert(tMonsterDrop_AreaLoad,tWeaponArchives_Whip_KillMonster[1])
	
	