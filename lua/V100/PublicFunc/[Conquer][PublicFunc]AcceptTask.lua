----------------------------------------------------------------------------
--Name:		[征服][公用函数]接受任务相关函数.lua
--Purpose:	接受任务相关函数
--Creator: 	林静、郑鋆、严振飞、王倩娜、郑江文
--Created:	2015/05/13
----------------------------------------------------------------------------
-- 命名前缀
-- Accept_

-- 接受任务选项显示的判断
function Accept_OptionDisplay(nTaskId)
	if not Accept_ChkTaskDetail(nTaskId) then
		return false
	end
	
	if not Accept_ChkFrontTask(nTaskId) then
		return false
	end
	
	if not Accept_ChkRevStc(nTaskId) then
		return false
	end
	
	if not Accept_ChkFrontStc(nTaskId) then
		return false
	end
	
	return true
end

-- 任务函数_检测任务活动时间
function Accept_ChkTime(nTaskId)
	if tTaskTemplate[nTaskId]["ActiveTime"] == nil or tTaskTemplate[nTaskId]["ActiveTimeType"] == nil then
		return false
	end
	
	local nType = tTaskTemplate[nTaskId]["ActiveTimeType"]
	local sTime = tTaskTemplate[nTaskId]["ActiveTime"]
	local fFunc = tTimeChkFunc[nType]
	
	if fFunc == nil or type(fFunc) ~= "function" then
		return true
	end
	
	return fFunc(sTime)
end

-- 任务函数_检测等级是否符合
function Accept_ChkLevel(nTaskId)
	local nMinLev = tTaskTemplate[nTaskId]["RevMinLevel"]
	local nMinMetempsychosis = tTaskTemplate[nTaskId]["RevMinMetempsychosis"]
	local nMaxLev = tTaskTemplate[nTaskId]["RevMaxLevel"]
	local nMaxMetempsychosis = tTaskTemplate[nTaskId]["RevMaxMetempsychosis"]
	local nRevLev = tTaskTemplate[nTaskId]["RevLevel"]
	local nRevMetempsychosis = tTaskTemplate[nTaskId]["RevMetempsychosis"]

	if nRevLev ~= nil and nRevMetempsychosis ~= nil then
		return User_JudgeLevelAndMetempsychosis(nRevLev,nRevMetempsychosis)
	end
	
	if nMinLev == nil and nMinMetempsychosis == nil and nMaxLev == nil and nMaxMetempsychosis == nil then
		return false
	end
	
	local nLevel = Get_UserLevel()
	local nMetempsychosis = Get_UserMetempsychosis()
	
	-- 转世等级的判断
	if nMinMetempsychosis ~= nil and nMaxMetempsychosis ~= nil then
		if nMetempsychosis < nMinMetempsychosis or nMetempsychosis > nMaxMetempsychosis then
			return false
		end
	elseif nMinMetempsychosis ~= nil and nMetempsychosis < nMinMetempsychosis then
		return false
	elseif nMaxMetempsychosis ~= nil and nMetempsychosis > nMaxMetempsychosis then
		return false
	end
	
	-- 等级判断
	if nMinLev ~= nil and nMaxLev ~= nil then
		if nLevel < nMinLev or nLevel > nMaxLev then
			return false
		end
	elseif nMinLev ~= nil then
		return nLevel >= nMinLev	
	elseif nMaxLev ~= nil then
		return nLevel <= nMaxLev
	end

	return true
end

-- 任务函数_检测性别是否符合
function Accept_ChkSex(nTaskId)
	if tTaskTemplate[nTaskId]["RevSex"] == nil then
		return false
	end
	
	local nSex = Get_UserSex()
	return nSex == tTaskTemplate[nTaskId]["RevSex"]
end

-- 任务函数_taskDetail任务掩码检测
function Accept_ChkTaskDetail(nTaskId)
	if tTaskTemplate[nTaskId]["TaskId"] == nil then
		return false
	end
	
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]
	
	if not Task_ChkTaskDetail(nAcceptTaskId) then
		return true
	elseif Task_ChkTaskDetailValue(nAcceptTaskId,"CompleteFlag",">=",1) then
		return false
	end
	
	return true
end

-- 任务函数_接受任务stc掩码检测
function Accept_ChkRevStc(nTaskId)
	local nRevEventType = tTaskTemplate[nTaskId]["RevEventType"]
	local nRevDataType = tTaskTemplate[nTaskId]["RevDataType"]
	local nRevData = tTaskTemplate[nTaskId]["RevData"]

	if nRevEventType == nil or nRevDataType == nil or nRevData == nil then
		return false
	end
	
	-- 隔天清零
	if Task_StcInterval(nRevEventType,nRevDataType,1,4) then
		Task_SetStatistic(nRevEventType,nRevDataType,0,1)
		Task_SetStcTimestamp(nRevEventType,nRevDataType,0)
		return true
	end
	
	if Task_ChkStcValue(nRevEventType,nRevDataType,">=",nRevData) then
		return false
	end
	
	return true
end

-- 任务函数_检测背包空间
function Accept_ChkSpace(nTaskId)
	if tTaskTemplate[nTaskId]["RevSpace"] == nil then
		return false
	end
	
	return User_CheckLeftSpace(tTaskTemplate[nTaskId]["RevSpace"])
end

-- 任务函数_前置任务检测
function Accept_ChkFrontTask(nTaskId)
	if tTaskTemplate[nTaskId]["FrontTask"] == nil then
		return false
	end

	if not Task_ChkTaskDetail(tTaskTemplate[nTaskId]["FrontTask"]) then
		return false
	elseif Task_ChkTaskDetailValue(tTaskTemplate[nTaskId]["FrontTask"],"CompleteFlag",">=",1) then
		return true
	end

	return false
end

-- 任务函数_前置stc检测
function Accept_ChkFrontStc(nTaskId)
	if tTaskTemplate[nTaskId]["FrontEventType"] == nil or tTaskTemplate[nTaskId]["FrontDataType"] == nil or tTaskTemplate[nTaskId]["FrontData"] == nil then
		return false
	end
	
	local nEventType = tTaskTemplate[nTaskId]["FrontEventType"]
	local nDataType = tTaskTemplate[nTaskId]["FrontDataType"]
	local nData = tTaskTemplate[nTaskId]["FrontData"]
	
	if Task_ChkStcValue(nEventType,nDataType,">=",nData) then
		return true
	end
	
	return false
end

-- 任务函数_地点检测（判断是否在允许做该任务的地图/坐标范围内）
function Accept_ChkMap(nTaskId)
	if tTaskTemplate[nTaskId]["RevMap"] == nil then
		return false
	end
	
	local nMapId = Get_UserMapId()
	
	if nMapId ~= tTaskTemplate[nTaskId]["RevMap"] then
		return false
	end

	local nMinCellX = tTaskTemplate[nTaskId]["RevMinCellX"]
	local nMaxCellX = tTaskTemplate[nTaskId]["RevMaxCellX"]
	local nMinCellY = tTaskTemplate[nTaskId]["RevMinCellY"]
	local nMaxCellY = tTaskTemplate[nTaskId]["RevMaxCellY"]
	
	if nMinCellX == nil and nMaxCellX == nil and nMinCellY == nil and nMaxCellY == nil then
		return true
	end
	
	local nUserCellX = Get_UserPositionX()
	local nUserCellY = Get_UserPositionY()
	
	if nMinCellX ~= nil and nMinCellX > nUserCellX then
		return false
	elseif nMaxCellX ~= nil and nMaxCellX < nUserCellX then
		return false
	elseif nMinCellY ~= nil and nMinCellY > nUserCellY then
		return false
	elseif nMaxCellY ~= nil and nMaxCellY < nUserCellY then
		return false
	end
	
	return true
end

-- 任务函数_职业检测（判断职业是否符合任务条件）
function Accept_ChkPro(nTaskId)
	if tTaskTemplate[nTaskId]["RevMinPro"] == nil and tTaskTemplate[nTaskId]["RevMaxPro"] == nil then
		return false
	end
	
	local nUserPro = Get_UserProfession()
	
	if tTaskTemplate[nTaskId]["RevMinPro"] ~= nil and tTaskTemplate[nTaskId]["RevMinPro"] > nUserPro then
		return false
	elseif tTaskTemplate[nTaskId]["RevMaxPro"] ~= nil and tTaskTemplate[nTaskId]["RevMaxPro"] < nUserPro then
		return false
	end
	
	return true
end

-- 任务函数_帮派检测（判断帮派是否符合任务条件）
function Accept_ChkGang(nTaskId)
	if tTaskTemplate[nTaskId]["RevGang"] == nil then
		return false
	end

	local nUserGuildId = Get_UserGuildId()
	
	return nUserGuildId == tTaskTemplate[nTaskId]["RevGang"]
end

-- 任务函数_帮派职位检测（判断帮派职位是否符合任务条件）
function Accept_ChkGangRank(nTaskId)
	if tTaskTemplate[nTaskId]["RevGangRank"] == nil then
		return false
	end

	local nUserGuildRank = Get_UserGuildRank()
	
	return nUserGuildRank >= tTaskTemplate[nTaskId]["RevGangRank"]
end

-- 任务函数_物品检测（判断是否持有接任务所必须的物品）
function Accept_ChkItem(nTaskId)
	if tTaskTemplate[nTaskId]["RevItem"] == nil then
		return false
	end
	
	if Item_ChkItem(tTaskTemplate[nTaskId]["RevItem"]) then
		return true
	end
	
	return false
end

-- 任务函数_金币检测（判断是否持有接任务所需要的足够的游戏币）
function Accept_ChkMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RevMoney"] == nil then
		return false
	end

	return User_CanPutMoney2Bag(tTaskTemplate[nTaskId]["RevMoney"])
end

-- 任务函数_天石检测（判断是否持有接任务所需要的足够的天石）
function Accept_ChkEMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RevEMoney"] == nil then
		return false
	end
	
	local nUserEmoney = Get_UserEMoney()
	
	return nUserEmoney >= tTaskTemplate[nTaskId]["RevEMoney"]
end

-- 任务函数_赠品天石检测（判断是否持有接任务所需要的足够的赠品天石）
function Accept_ChkMonoEMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RevMonoEMoney"] == nil then
		return false
	end

	local nUserMonoEmoney = Get_UserMonoEMoney()
	
	return nUserMonoEmoney >= tTaskTemplate[nTaskId]["RevMonoEMoney"]
end

-- 任务函数_VIP等级检测（判断是否持有接任务所需要的VIP等级）
function Accept_ChkVip(nTaskId)
	if tTaskTemplate[nTaskId]["RevVip"] == nil then
		return false
	end
	
	local nUserVip = Get_UserVip()
	
	return nUserVip >= tTaskTemplate[nTaskId]["RevVip"]
end

-- 任务函数_变身状态检测（判断是否变身状态下）
function Accept_ChkTransform(nTaskId)
	if tTaskTemplate[nTaskId]["RevTransform"] == nil then
		return false
	end
	
	local nUserTransform = Get_UserTransfromId()
	
	return nUserTransform == tTaskTemplate[nTaskId]["RevTransform"]
end

-- 任务函数_组队检测（组队条件）
-- function Accept_ChkTeam(nTaskId)
	-- if tTaskTemplate[nTaskId]["RevMinTeamNum"] == nil and tTaskTemplate[nTaskId]["RevMaxTeamNum"] == nil then
		-- return false
	-- end

-- end


-- 任务函数_taskDetail任务掩码设值
function Accept_SetTaskDetail(nTaskId)
	if tTaskTemplate[nTaskId]["TaskId"] == nil then
		return false
	end
	
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]

	return Task_AddTaskDetail(nAcceptTaskId)
end

-- 任务函数_stc任务掩码设值
function Accept_SetRevStc(nTaskId)
	local nRevEventType = tTaskTemplate[nTaskId]["RevEventType"]
	local nRevDataType = tTaskTemplate[nTaskId]["RevDataType"]
	local nRevData = tTaskTemplate[nTaskId]["RevData"]

	if nRevEventType == nil or nRevDataType == nil or nRevData == nil then
		return false
	end
	
	return Task_SetStatistic(nRevEventType,nRevDataType,nRevData,1)
end

-- 任务函数_给任务物品
function Accept_GetRevItem(nTaskId)
	for i = 1,6 do
		local nItemId = tTaskTemplate[nTaskId]["GetItemId" .. i]
		
		if nItemId == nil then
			return true
		end
		
		local sAttr = tTaskTemplate[nTaskId]["GetItemAttr" .. i]
		
		if sAttr ~= nil then
			Item_AddNewItem(nItemId,sAttr) 
		else
			Item_AddItem(nItemId)
		end
	end
end

-- 任务函数_给光效
function Accept_AddEffect(nTaskId)
	if tTaskTemplate[nTaskId]["RevEffect"] == nil then
		return
	end
	
	return User_EffectAdd("self",tTaskTemplate[nTaskId]["RevEffect"])
end

-- 任务函数_给log
function Accept_PrintLog(nTaskId)
	if tTaskTemplate[nTaskId]["RevLog"] == nil then
		return
	end
	
	return Sys_SaveActionTaskLog(tTaskTemplate[nTaskId]["RevLog"])
end

-- 任务函数_自动寻路
function Accept_GotoSomeWhere(nTaskId)
	local nPosX = tTaskTemplate[nTaskId]["RevPosX"]
	local nPosY = tTaskTemplate[nTaskId]["RevPosY"]
	local nMapId = tTaskTemplate[nTaskId]["RevMapId"]
	local nNpcId = tTaskTemplate[nTaskId]["RevNpcId"] or 0
	
	if nPosX == nil or nPosY == nil or nMapId == nil then
		return false
	end
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nNpcId)
	return true
end
-- 任务模板进入副本
function Accept_CreateInstance(nTaskId)
	-- 判断是否有配副本配置
	if tTaskTemplate[nTaskId]["Instance"] == nil or type(tTaskTemplate[nTaskId]["Instance"]) ~= "table" then
		return
	end
	return Instance_Enter(tTaskTemplate[nTaskId]["Instance"])
end
