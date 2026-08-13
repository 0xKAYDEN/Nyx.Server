------------------------------------------------------------------------------------
--Name：            190418[简体征服][活动脚本]勇士百兵谱支线任务
--Creator:      王贤

--Created:     2019-04-18
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
-- stc(194, 24)  1 、天罡老君任务进行的步骤
-- stc(194, 27)  2 、地煞真人任务进行的步骤
------------------------------------------------------------------------------------
-- 前缀
-- WeaponArchivesLattice4_

-- TaskId： 6997
----------------------------------表配置部分--------------------------------------------
local tWeaponArchivesLattice4_Data = {}
-- 掩码
tWeaponArchivesLattice4_Data["Stc"] = {}
tWeaponArchivesLattice4_Data["Stc"]["EventType"] = {}
tWeaponArchivesLattice4_Data["Stc"]["DataType"] = {}
-- stc(194, 24)  1 、天罡老君任务进行的步骤
tWeaponArchivesLattice4_Data["Stc"]["EventType"][1] = 194
tWeaponArchivesLattice4_Data["Stc"]["DataType"][1] = 24
-- stc(194, 27)  2 、地煞真人任务进行的步骤
tWeaponArchivesLattice4_Data["Stc"]["EventType"][2] = 194
tWeaponArchivesLattice4_Data["Stc"]["DataType"][2] = 27

-- 副本ID
tWeaponArchivesLattice4_Data["InstanceId"] = {}
tWeaponArchivesLattice4_Data["InstanceId"][1] = 281
tWeaponArchivesLattice4_Data["InstanceId"][2] = 284
-- 地图mapdoc
tWeaponArchivesLattice4_Data["MapDoc"] = 3081
-- MapId
tWeaponArchivesLattice4_Data["MapId"] = {}
tWeaponArchivesLattice4_Data["MapId"][1] = 10507
tWeaponArchivesLattice4_Data["MapId"][2] = 10621
tWeaponArchivesLattice4_Data["MapId"]["PosX"] = 54
tWeaponArchivesLattice4_Data["MapId"]["PosY"] = 56

-- 任务掩码
tWeaponArchivesLattice4_Data["TaskId"] = 6997

-- Npc寻路
tWeaponArchivesLattice4_Data["FindNpc"] = {}
-- 地煞真人
tWeaponArchivesLattice4_Data["FindNpc"][1] = 23977
-- 天罡老君
tWeaponArchivesLattice4_Data["FindNpc"][2] = 23976

-- BOSS数据
tWeaponArchivesLattice4_Data["Monster"] = {}
-- 天罡
tWeaponArchivesLattice4_Data["Monster"][1] = {}
tWeaponArchivesLattice4_Data["Monster"][1]["Id"] = 5397
tWeaponArchivesLattice4_Data["Monster"][1]["PosX"] = 54
tWeaponArchivesLattice4_Data["Monster"][1]["PosY"] = 63
tWeaponArchivesLattice4_Data["Monster"][1]["GenId"] = 27152
-- 地煞
tWeaponArchivesLattice4_Data["Monster"][2] = {}
tWeaponArchivesLattice4_Data["Monster"][2]["Id"] = 5398
tWeaponArchivesLattice4_Data["Monster"][2]["PosX"] = 54
tWeaponArchivesLattice4_Data["Monster"][2]["PosY"] = 48
tWeaponArchivesLattice4_Data["Monster"][2]["GenId"] = 27153

-- BOSS对应掩码
tWeaponArchivesLattice4_Data["BossStc"] = {}
-- 天罡
tWeaponArchivesLattice4_Data["BossStc"][5397] = 1
-- 地煞
tWeaponArchivesLattice4_Data["BossStc"][5398] = 2

-- 返回坐标
tWeaponArchivesLattice4_Data["Entrance"] = {}
-- 普通服
tWeaponArchivesLattice4_Data["Entrance"]["Normal"] = {}
tWeaponArchivesLattice4_Data["Entrance"]["Normal"]["MapId"] = 1002
tWeaponArchivesLattice4_Data["Entrance"]["Normal"]["PosX"] = 410
tWeaponArchivesLattice4_Data["Entrance"]["Normal"]["PosY"] = 354
-- 激情服
tWeaponArchivesLattice4_Data["Entrance"]["Special"] = {}
tWeaponArchivesLattice4_Data["Entrance"]["Special"]["MapId"] = 10364
tWeaponArchivesLattice4_Data["Entrance"]["Special"]["PosX"] = 301
tWeaponArchivesLattice4_Data["Entrance"]["Special"]["PosY"] = 266

-- 对话坐标
tWeaponArchivesLattice4_Data["Diaglog"] = {}
-- 天罡老君
tWeaponArchivesLattice4_Data["Diaglog"][2] = {}
tWeaponArchivesLattice4_Data["Diaglog"][2]["PosX"] = 46
tWeaponArchivesLattice4_Data["Diaglog"][2]["PosY"] = 52
-- 地煞真人
tWeaponArchivesLattice4_Data["Diaglog"][1] = {}
tWeaponArchivesLattice4_Data["Diaglog"][1]["PosX"] = 62
tWeaponArchivesLattice4_Data["Diaglog"][1]["PosY"] = 52

-- 光效
tWeaponArchivesLattice4_Data["Effect"] = {}
tWeaponArchivesLattice4_Data["Effect"]["Self"] = "self"
tWeaponArchivesLattice4_Data["Effect"]["BornEffect"] = "zf2-e300"
tWeaponArchivesLattice4_Data["Effect"]["KillBossEffect"] = "zf2-e123_1"
tWeaponArchivesLattice4_Data["Effect"]["Explore"] = "accession"

----------------------------------逻辑部分---------------------------------------------
-- 进入副本
function WeaponArchivesLattice4_InstanceChk()
	-- 判断任务
	if not WeaponArchivesLattice4_ChkTaskId() then
		return
	end
	-- 组队不能进入
	if Get_UserTeamNumbers() >= 2 then
		Sys_MsgBox(tWeaponArchivesLattice4_Text["MsgBox"]["HaveTeam"])
		return false
	end
	-- 进入副本
	local nInstanceId = tWeaponArchivesLattice4_Data["InstanceId"][1]
	if User_EnterInstance(nInstanceId,0,0,0) then
		-- 重新设置任务掩码值
		local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
		local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
		local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
		local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
		
		Task_SetStatistic(nTaskStepEvent_1, nTaskSteptData_1, 0, 1)
		Task_SetStcTimestamp(nTaskStepEvent_1, nTaskSteptData_1, 0)
		Task_SetStatistic(nTaskStepEvent_2, nTaskSteptData_2, 0, 1)
		Task_SetStcTimestamp(nTaskStepEvent_2, nTaskSteptData_2, 0)
		-- 重新设置怪物数量
		local nMapId = Get_UserMapId()
		local nMonsterId_1 = tWeaponArchivesLattice4_Data["Monster"][1]["Id"]
		Monster_DelMonster(nMapId, nMonsterId_1)
		Monster_Death(nMonsterId_1, nMapId)
		local nMonsterId_2 = tWeaponArchivesLattice4_Data["Monster"][2]["Id"]
		Monster_DelMonster(nMapId, nMonsterId_2)
		Monster_Death(nMonsterId_2, nMapId)
	end
end

-- 返回双龙城
function WeaponArchivesLattice4_ReturnCity()
	local nMapId = Get_UserMapId()
	if not Get_MapDoc(nMapId) == tWeaponArchivesLattice4_Data["MapDoc"] then
		return
	end
	local nCellX = tWeaponArchivesLattice4_Data["Entrance"]["Normal"]["PosX"]
	local nCellY = tWeaponArchivesLattice4_Data["Entrance"]["Normal"]["PosY"]
	local nReturnMapId = tWeaponArchivesLattice4_Data["Entrance"]["Normal"]["MapId"]
	if SpecialServer_ChkNoGiftServer() then
		nCellX = tWeaponArchivesLattice4_Data["Entrance"]["Special"]["PosX"]
		nCellY = tWeaponArchivesLattice4_Data["Entrance"]["Special"]["PosY"]
		nReturnMapId = tWeaponArchivesLattice4_Data["Entrance"]["Special"]["MapId"]
	end
	User_UserRandBoundTrans(nReturnMapId,nCellX,nCellY,3,3,1)
end

-- 判断任务掩码
function WeaponArchivesLattice4_ChkTaskId()
	local nTaskId = tWeaponArchivesLattice4_Data["TaskId"]
	-- 判断身上有没有任务
	if not Task_ChkTaskDetail(nTaskId) then
		Sys_MsgBox(tWeaponArchivesLattice4_Text["MsgBox"]["NotTask"])
		return false
	else
		-- 判断任务是否已完成
		if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1) then
			Sys_MsgBox(tWeaponArchivesLattice4_Text["MsgBox"]["HaveDone"])
			return false
		else
			return true
		end
	end
end

-- 对白掩码设置
function WeaponArchivesLattice4_StcSet(nIndex, nSign)
	-- 判断任务
	if not WeaponArchivesLattice4_ChkTaskId() then
		return
	end
	-- 设置任务掩码值
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][nIndex]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][nIndex]
	if Task_ChkStcValue(nTaskStepEvent, nTaskSteptData, ">=", nSign) then
		-- NpcPosition_PathFind(tWeaponArchivesLattice4_Data["FindNpc"][nIndex])
		local nPosX = tWeaponArchivesLattice4_Data["Diaglog"][nIndex]["PosX"]
		local nPosY = tWeaponArchivesLattice4_Data["Diaglog"][nIndex]["PosY"]
		local nMapId = Get_UserMapId()
		Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
		return
	end
	if Task_AddStatistic(nTaskStepEvent, nTaskSteptData, 1, 1) then
		Task_SetStcTimestamp(nTaskStepEvent, nTaskSteptData, 0)
		-- NpcPosition_PathFind(tWeaponArchivesLattice4_Data["FindNpc"][nIndex])
		local nPosX = tWeaponArchivesLattice4_Data["Diaglog"][nIndex]["PosX"]
		local nPosY = tWeaponArchivesLattice4_Data["Diaglog"][nIndex]["PosY"]
		local nMapId = Get_UserMapId()
		Sys_GotoSomeWhere(nPosX, nPosY, nMapId, 0)
	end
end

-- 召唤BOSS
function WeaponArchivesLattice4_SummonBoss()
	-- 判断任务
	if not WeaponArchivesLattice4_ChkTaskId() then
		return
	end
	-- 设置任务掩码值
	local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, ">", 3) and Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, ">", 3) then
		return
	end
	-- 召唤BOSS设置任务掩码到第三步骤
	-- 进入打怪副本
	-- 副本不能进副本，先传出去其他地图再进副本
	local nMapId = tWeaponArchivesLattice4_Data["MapId"][2]
	local nCellX = tWeaponArchivesLattice4_Data["MapId"]["PosX"]
	local nCellY = tWeaponArchivesLattice4_Data["MapId"]["PosY"]
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,3,3,1)
	local nInstanceId = tWeaponArchivesLattice4_Data["InstanceId"][2]
	if User_EnterInstance(nInstanceId,0,0,0) then
		if Task_SetStatistic(nTaskStepEvent_1, nTaskSteptData_1, 3, 1) then
			Task_SetStcTimestamp(nTaskStepEvent_1, nTaskSteptData_1, 0)
			Task_SetStatistic(nTaskStepEvent_2, nTaskSteptData_2, 3, 1)
			Task_SetStcTimestamp(nTaskStepEvent_2, nTaskSteptData_2, 0)
			local nMapId = Get_UserMapId()
			for i=1, 2 do
				local nMonsterId = tWeaponArchivesLattice4_Data["Monster"][i]["Id"]
				local nPosX = tWeaponArchivesLattice4_Data["Monster"][i]["PosX"]
				local nPosY = tWeaponArchivesLattice4_Data["Monster"][i]["PosY"]
				local nGenId = tWeaponArchivesLattice4_Data["Monster"][i]["GenId"]
				
				-- 刷新怪物 播放光效
				if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
					local sEffectName = tWeaponArchivesLattice4_Data["Effect"]["BornEffect"]
					Map_Effect(nMapId,nPosX,nPosY,sEffectName)
				end
			end
			-- 屏幕震动
			User_Screffect(1)
		end
	end
end

-- 判断是否击杀BOSS及场上是否有BOSS
function WeaponArchivesLattice4_ChkStcAndBoss()
	-- 判断任务
	if not WeaponArchivesLattice4_ChkTaskId() then
		return
	end
	-- 设置任务掩码值
	local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	local nMapId = Get_UserMapId()
	-- 判断是否击杀过天罡
	if not Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, ">=", 4) then
		-- 判断场上是否有天罡BOSS
		local nMonsterId = tWeaponArchivesLattice4_Data["Monster"][1]["Id"]
		local nBossNum = Get_SysTempData(1, nMapId, nMonsterId)
		if nBossNum <= 0 then
			local nMonsterId = tWeaponArchivesLattice4_Data["Monster"][1]["Id"]
			local nPosX = tWeaponArchivesLattice4_Data["Monster"][1]["PosX"]
			local nPosY = tWeaponArchivesLattice4_Data["Monster"][1]["PosY"]
			local nGenId = tWeaponArchivesLattice4_Data["Monster"][1]["GenId"]
			-- 刷新怪物
			if Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId) then
			end
		end
	end
	-- 判断是否击杀过地煞
	if not Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, ">=", 4) then
		-- 判断场上是否有地煞BOSS
		local nMonsterId = tWeaponArchivesLattice4_Data["Monster"][1]["Id"]
		local nBossNum = Get_SysTempData(1, nMapId, nMonsterId)
		if nBossNum <= 0 then
			local nMonsterId = tWeaponArchivesLattice4_Data["Monster"][2]["Id"]
			local nPosX = tWeaponArchivesLattice4_Data["Monster"][2]["PosX"]
			local nPosY = tWeaponArchivesLattice4_Data["Monster"][2]["PosY"]
			local nGenId = tWeaponArchivesLattice4_Data["Monster"][2]["GenId"]
			-- 刷新怪物
			Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId)
		end
	end
end

-- 击杀BOSS
function WeaponArchivesLattice4_KillBossSet(nMonsterId)
	-- 设置任务掩码值
	local nIndex = tWeaponArchivesLattice4_Data["BossStc"][nMonsterId]
	if nIndex == nil then
		return
	end
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][nIndex]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][nIndex]
	if Task_SetStatistic(nTaskStepEvent, nTaskSteptData, 4, 1) then
		Task_SetStcTimestamp(nTaskStepEvent, nTaskSteptData, 0)
		-- 击杀光效
		User_EffectAdd(tWeaponArchivesLattice4_Data["Effect"]["Self"], tWeaponArchivesLattice4_Data["Effect"]["KillBossEffect"])
		-- 设置boss击杀
		local nMapId = Get_UserMapId()
		Monster_DelMonster(nMapId, nMonsterId)
		Monster_Death(nMonsterId, nMapId)
	end
	-- 判断是否击杀两个BOSS
	local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, "==", 4) and Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, "==", 4) then
		Sys_MsgBox(tWeaponArchivesLattice4_Text["MsgBox"]["KillBoss"], "WeaponArchivesLattice4_TrapReturn", nil)
	end
end

-- 返回副本
function WeaponArchivesLattice4_TrapReturn()
	-- 进入副本
	local nMapId = tWeaponArchivesLattice4_Data["MapId"][1]
	local nCellX = tWeaponArchivesLattice4_Data["MapId"]["PosX"]
	local nCellY = tWeaponArchivesLattice4_Data["MapId"]["PosY"]
	User_UserRandBoundTrans(nMapId,nCellX,nCellY,3,3,1)
	local nInstanceId = tWeaponArchivesLattice4_Data["InstanceId"][1]
	User_EnterInstance(nInstanceId,0,0,0)
end


-- 任务读条
function WeaponArchivesLattice4_DoneTheTask(nIndex)
	local nSecs = 3
	local sContent = tWeaponArchivesLattice4_Text["MsgBox"]["Explore"]
	User_SetExplore(nSecs,sContent,220,"WeaponArchivesLattice4_DoneTheTaskNext</N>"..nIndex, nil, nUserId)
end

-- 读条后完成任务
function WeaponArchivesLattice4_DoneTheTaskNext(nIndex, nUserId)
	-- 设置任务完成掩码
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][nIndex]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][nIndex]
	local nTaskId = tWeaponArchivesLattice4_Data["TaskId"]
	-- 任务已完成
	if Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1, nUserId) then
		Sys_MsgBox(tWeaponArchivesLattice4_Text["MsgBox"]["FiveSpace"], nil, nil, nUserId)
		return
	end
	
	if Task_SetStatistic(nTaskStepEvent, nTaskSteptData, 5, 1, nUserId) then
		Task_SetStcTimestamp(nTaskStepEvent, nTaskSteptData, 0, nUserId)
		-- 判断是否集齐天罡、地煞之力
		local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
		local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
		local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
		local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
		if Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, "==", 5, nUserId) and Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, "==", 5, nUserId) then
			-- 设置任务完成task
			-- 置Task掩码为已完成状态
			if Task_SetTaskDetailCompleteFlag(nTaskId,1, nUserId) then
				-- 接口   开启第五个御魂空间  -- flag
				
				-- 全服公告
				local nUserName = Get_UserName(nUserId)
				Sys_SystemBroadcast(string.format(tWeaponArchivesLattice4_Text["BroadCast"]["TaskDone"], nUserName))
				
				Sys_MsgBox(tWeaponArchivesLattice4_Text["MsgBox"]["Susccess"], "WeaponArchivesLattice4_ReturnCity", nil, nUserId)
				-- 添加光效
				User_EffectAdd(tWeaponArchivesLattice4_Data["Effect"]["Self"], tWeaponArchivesLattice4_Data["Effect"]["Explore"])
			end
		else
			Sys_MsgBox(tWeaponArchivesLattice4_Text["MsgBox"][nIndex], nil, nil, nUserId)
		end
	end
end


----------------------------------NPC部分---------------------------------------------
-- 天罡老君 23976
tNpcFace[4479] = 15
tNpcGossip[23976] = tNpcGossip[23976] or DefaultNpc:new{}
tNpcGossip[23976]["OptionHidden"] = 1
tNpcGossip[23976]["DialogueText"] = tWeaponArchivesLattice4_Text[23976]

-- 对白1
tNpcGossip[23976]["Text1-1"] = {111,112}
tNpcGossip[23976]["ChkFunc1-1"]= function()
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent, nTaskSteptData, "==", 0) then
		return true
	end
	return false
end
tNpcGossip[23976]["tOption1-1"] = {111}
tNpcGossip[23976]["OptionFunc111"] = "WeaponArchivesLattice4_StcSet</N>1</N>1"

-- 对白2
tNpcGossip[23976]["Text1-2"] = {121,122}
tNpcGossip[23976]["ChkFunc1-2"]= function()
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent, nTaskSteptData, "==", 1) then
		return true
	end
	return false
end
tNpcGossip[23976]["tOption1-2"] = {121}
tNpcGossip[23976]["OptionFunc121"] = "WeaponArchivesLattice4_StcSet</N>1</N>2"

-- 对白3
tNpcGossip[23976]["Text1-3"] = {131,132}
tNpcGossip[23976]["ChkFunc1-3"]= function()
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent, nTaskSteptData, "==", 2) then
		return true
	end
	return false
end
tNpcGossip[23976]["tOption1-3"] = {131}
tNpcGossip[23976]["OptionFunc131"] = "WeaponArchivesLattice4_SummonBoss"

-- 对白4
tNpcGossip[23976]["Text1-4"] = {141,142}
tNpcGossip[23976]["ChkFunc1-4"]= function()
	local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, "<", 4) or Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, "<", 4) then
		return true
	end
	return false
end
tNpcGossip[23976]["tOption1-4"] = {141}
tNpcGossip[23976]["OptionFunc141"] = "WeaponArchivesLattice4_SummonBoss"

-- 完成
tNpcGossip[23976]["Text1-5"] = {151,152}
tNpcGossip[23976]["ChkFunc1-5"]= function()
	local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, ">=", 4) and Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, ">=", 4) then
		return true
	end
	return false
end
tNpcGossip[23976]["tOption1-5"] = {151}
tNpcGossip[23976]["OptionFunc151"] = "WeaponArchivesLattice4_DoneTheTask</N>1"


-- 地煞真人 23977
tNpcFace[4480] = 49
tNpcGossip[23977] = tNpcGossip[23977] or DefaultNpc:new{}
tNpcGossip[23977]["OptionHidden"] = 1
tNpcGossip[23977]["DialogueText"] = tWeaponArchivesLattice4_Text[23977]

-- 对白1
tNpcGossip[23977]["Text1-1"] = {111,112}
tNpcGossip[23977]["ChkFunc1-1"]= function()
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	if Task_ChkStcValue(nTaskStepEvent, nTaskSteptData, "==", 0) then
		return true
	end
	return false
end
tNpcGossip[23977]["tOption1-1"] = {111}
-- tNpcGossip[23977]["OptionFunc111"] = "NpcPosition_PathFind</N>23976"

-- 对白2
tNpcGossip[23977]["Text1-2"] = {121,122}
tNpcGossip[23977]["ChkFunc1-2"]= function()
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	if Task_ChkStcValue(nTaskStepEvent, nTaskSteptData, "==", 1) then
		return true
	end
	return false
end
tNpcGossip[23977]["tOption1-2"] = {121}
tNpcGossip[23977]["OptionFunc121"] = "WeaponArchivesLattice4_StcSet</N>2</N>1"

-- 对白3
tNpcGossip[23977]["Text1-3"] = {131,132}
tNpcGossip[23977]["ChkFunc1-3"]= function()
	local nTaskStepEvent = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	if Task_ChkStcValue(nTaskStepEvent, nTaskSteptData, "==", 2) then
		return true
	end
	return false
end
tNpcGossip[23977]["tOption1-3"] = {131}
tNpcGossip[23977]["OptionFunc131"] = "WeaponArchivesLattice4_StcSet</N>2</N>2"

-- 对白4
tNpcGossip[23977]["Text1-4"] = {141,142}
tNpcGossip[23977]["ChkFunc1-4"]= function()
	local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, "<", 4) or Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, "<", 4) then
		return true
	end
	return false
end
tNpcGossip[23977]["tOption1-4"] = {141}
tNpcGossip[23977]["OptionFunc141"] = "WeaponArchivesLattice4_SummonBoss"

-- 完成
tNpcGossip[23977]["Text1-5"] = {151,152}
tNpcGossip[23977]["ChkFunc1-5"]= function()
	local nTaskStepEvent_1 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][1]
	local nTaskSteptData_1 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][1]
	local nTaskStepEvent_2 = tWeaponArchivesLattice4_Data["Stc"]["EventType"][2]
	local nTaskSteptData_2 = tWeaponArchivesLattice4_Data["Stc"]["DataType"][2]
	if Task_ChkStcValue(nTaskStepEvent_1, nTaskSteptData_1, ">=", 4) and Task_ChkStcValue(nTaskStepEvent_2, nTaskSteptData_2, ">=", 4) then
		return true
	end
	return false
end
tNpcGossip[23977]["tOption1-5"] = {151}
tNpcGossip[23977]["OptionFunc151"] = "WeaponArchivesLattice4_DoneTheTask</N>2"


---------------------------------陷阱部分---------------------------------------------
-- 进入副本陷阱
tTrap[2348] = tTrap[2348] or {}
tTrap[2348]["Function"] = function(nTrapId,nTrapType)
	WeaponArchivesLattice4_InstanceChk()
end
-- 返回真君殿陷阱
tTrap[2349] = tTrap[2349] or {}
tTrap[2349]["Function"] = function(nTrapId,nTrapType)
	-- 进入副本
	WeaponArchivesLattice4_TrapReturn()
end

---------------------------------怪物部分---------------------------------------------
-- BOSS击杀
local tWeaponArchivesLattice4_KillBoss = {}
tWeaponArchivesLattice4_KillBoss["Function"] = WeaponArchivesLattice4_KillBossSet
tWeaponArchivesLattice4_KillBoss["MonsterId"] = {5397, 5398}
table.insert(tMonsterDrop_AreaLoad_NoGift,tWeaponArchivesLattice4_KillBoss)
table.insert(tMonsterDrop_AreaLoad,tWeaponArchivesLattice4_KillBoss)
