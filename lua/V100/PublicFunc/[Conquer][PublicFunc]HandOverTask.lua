----------------------------------------------------------------------------
--Name:		[征服][公用函数]交任务相关函数.lua
--Purpose:	交任务相关函数
--Creator: 	郑鋆
--Created:	2015/09/24
----------------------------------------------------------------------------
-- 命名前缀
-- HandOver_


-- 任务函数_交任务检测是否有接任务
function HandOver_IsDisplay(nTaskId)
	-- TaskDetail完成任务显示
	if tTaskTemplate[nTaskId]["TaskId"] ~= nil then
		local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]
		
		if not Task_ChkTaskDetail(nAcceptTaskId) then
			return false
		elseif Task_ChkTaskDetailValue(nAcceptTaskId,"CompleteFlag",">=",1) then
			return false
		end
	end
	
	-- stc掩码检测
	if Accept_ChkRevStc(nTaskId) then
		return false
	elseif not HandOver_ChkStcComplete(nTaskId) then
		return false
	end

	return true
end

-- 任务函数_STC掩码检测
function HandOver_ChkStc(nTaskId)
	for i = 1,6 do
		local nEvent = tTaskTemplate[nTaskId]["ReqEventType" .. i]
		local nType = tTaskTemplate[nTaskId]["ReqDataType" .. i]
		local nData = tTaskTemplate[nTaskId]["ReqData" .. i]
		
		if nEvent == nil or nType == nil or nData == nil then
			break
		end
		
		if not Task_ChkStcValue(nEvent,nType,">=",nData) then
			return false
		elseif Task_StcInterval(nEvent,nType,1,4) then
			return false
		end
	end
	
	return true
end

-- 任务函数_STC掩码检测任务是否已完成
function HandOver_ChkStcComplete(nTaskId)
	local nEvent = tTaskTemplate[nTaskId]["RewEventType"]
	local nType = tTaskTemplate[nTaskId]["RewDataType"]
	local nData = tTaskTemplate[nTaskId]["RewData"]
	
	if nEvent == nil or nType == nil or nData == nil then
		return true
	end
	
	return not Task_ChkStcValue(nEvent,nType,">=",nData)
end

-- 任务函数_交任务时的物品检测
function HandOver_ChkItem(nTaskId)
	for i = 1,6 do
		if tTaskTemplate[nTaskId]["ReqItemId".. i] == nil or tTaskTemplate[nTaskId]["ReqItemCount".. i] == nil then
			break
		end
		
		local nItemId = tTaskTemplate[nTaskId]["ReqItemId".. i]
		local nCount = tTaskTemplate[nTaskId]["ReqItemCount".. i] or 1
		if nItemId ~= nil and nItemId ~= 0 then
			if not Item_ChkMulItem(nItemId,nItemId,nCount,1) then
				return false
			end
		end
	end
	
	return true
end

-- 任务函数_怪物数量检测
function HandOver_ChkMonster(nTaskId)
	if tTaskTemplate[nTaskId]["TaskId"] == nil then
		return false
	end
	
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]
	
	for i = 1,6 do
		local tReqMonster = tTaskTemplate[nTaskId]["ReqMonsterId".. i] or {}
		for m,n in ipairs(tReqMonster) do
			if n == nil or tTaskTemplate[nTaskId]["ReqMonsterCount".. i] == nil then
				break
			end
			
			local nMonsterId = n
			local nCount = tTaskTemplate[nTaskId]["ReqMonsterCount".. i]
			local sPos = tTaskTemplate[nTaskId]["ReqMonsterPos".. i] or tostring(i)
			
			if nMonsterId <= 0 or nCount <= 0 then
				return false
			end
			
			if not Task_ChkTaskDetailValue(nAcceptTaskId,tostring(sPos),">=",nCount) then
				return false
			end
		end
	end
	
	return true
end

-- 任务函数_检测金钱计数
function HandOver_ChkMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RewMoney"] == nil then
		return false
	end

	return User_CanPutMoney2Bag(tTaskTemplate[nTaskId]["RewMoney"])
end

-- 任务函数_检测天石
function HandOver_ChkEMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RewEMoney"] == nil then
		return false
	end
	
	local nEMoney = tTaskTemplate[nTaskId]["RewEMoney"]
	local nUserEmoney = Get_UserEMoney()
	local nFinalEmoney = nEMoney + nUserEmoney
		
	if nFinalEmoney <= 0 or nFinalEmoney > G_User_MaxEmoney then
		return false
	end
	
	return true
end

-- 任务函数_检测赠品天石
function HandOver_ChkMonoEMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RewMonoEMoney"] == nil then
		return false
	end
	
	local nEMoney = tTaskTemplate[nTaskId]["RewMonoEMoney"]
	local nUserEmoney = Get_UserEMoney()
	local nFinalEmoney = nEMoney + nUserEmoney
		
	if nFinalEmoney <= 0 or nFinalEmoney > G_User_MaxEmoneyMono then
		return false
	end
	
	return true
end

-- 任务函数_检测背包空间
function HandOver_ChkSpace(nTaskId)
	if tTaskTemplate[nTaskId]["RewSpace"] == nil then
		return false
	end
	
	return User_CheckLeftSpace(tTaskTemplate[nTaskId]["RewSpace"])
end

-- 任务函数_删除任务物品
function HandOver_DelItem(nTaskId)
	for i = 1,6 do
		if tTaskTemplate[nTaskId]["ReqItemId".. i] == nil or tTaskTemplate[nTaskId]["ReqItemCount".. i] == nil then
			break
		end
		
		local nItemId = tTaskTemplate[nTaskId]["ReqItemId".. i]
		local nCount = tTaskTemplate[nTaskId]["ReqItemCount".. i] or 1
		if nItemId ~= 0 then
			if tTaskTemplate[nTaskId]["ReqItemAll".. i] == true then
				if not Item_DelAllItemByType(nItemId) then
					return false
				end
			elseif not Item_DelMulItem(nItemId,nItemId,nCount,1) then
				return false
			end
		end
	end
	
	return true
end

-- 任务函数_taskDetail任务置完成
function HandOver_SetTaskDetail(nTaskId)
	if tTaskTemplate[nTaskId]["TaskId"] == nil then
		return false
	end
	
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]

	return Task_SetTaskDetailCompleteFlag(nAcceptTaskId,1)
end

-- 任务函数_STC掩码设完成
function HandOver_SetStc(nTaskId)
	local nEvent = tTaskTemplate[nTaskId]["RewEventType"]
	local nType = tTaskTemplate[nTaskId]["RewDataType"]
	local nData = tTaskTemplate[nTaskId]["RewData"]
	
	if nEvent == nil or nType == nil or nData == nil then
		return true
	end
	
	Task_SetStatistic(nEvent,nType,nData,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	return true
end

-- 任务函数_给经验点奖励
function HandOver_RewExp(nTaskId)
	local nUserLev = Get_UserLevel()
	if nUserLev >= G_User_MaxLev then
		return true
	end

	if tTaskTemplate[nTaskId]["RewExp"] == nil then
		return false
	end
	
	return User_AddExp(tTaskTemplate[nTaskId]["RewExp"])
end

-- 任务函数_给经验时间奖励
function HandOver_RewExpTime(nTaskId)
	local nUserLev = Get_UserLevel()
	if nUserLev >= G_User_MaxLev then
		-- 给修行值
		local nFullAddCultivation = tTaskTemplate[nTaskId]["FullAddCultivation"] or 0
		if nFullAddCultivation > 0 then
			User_AddCultivation(nFullAddCultivation)
		end
		return true
	end

	if tTaskTemplate[nTaskId]["RewExpTime"] == nil then
		return false
	end
	
	return User_AddExpTime(tTaskTemplate[nTaskId]["RewExpTime"])
end

-- 任务函数_给金币奖励
function HandOver_RewardMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RewMoney"] == nil then
		return false
	end
	
	return User_AddMoney(tTaskTemplate[nTaskId]["RewMoney"])
end

-- 任务函数_给天石奖励
function HandOver_RewardEMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RewEMoney"] == nil then
		return false
	end
	
	return User_AddEMoney(tTaskTemplate[nTaskId]["RewEMoney"])
end

-- 任务函数_给赠品天石奖励
function HandOver_RewardMonoEMoney(nTaskId)
	if tTaskTemplate[nTaskId]["RewMonoEMoney"] == nil then
		return false
	end
	
	return User_AddEMoneyMono(tTaskTemplate[nTaskId]["RewMonoEMoney"])
end

-- 任务函数_播光效
function HandOver_RewardEffect(nTaskId)
	if tTaskTemplate[nTaskId]["RewardEffect"] == nil then
		return false
	end
	
	return User_EffectAdd("self",tTaskTemplate[nTaskId]["RewardEffect"])
end

-- 任务函数_给修行值
function HandOver_RewCultivation(nTaskId)
	if tTaskTemplate[nTaskId]["RewCultivation"] == nil then
		return false
	end
	
	return User_AddCultivation(tTaskTemplate[nTaskId]["RewCultivation"])
end

-- 任务函数_给气力值
function HandOver_RewStrengthValue(nTaskId)
	if tTaskTemplate[nTaskId]["RewStrengthValue"] == nil then
		return false
	end
	
	return User_AddStrengthValue(tTaskTemplate[nTaskId]["RewStrengthValue"])
end

-- 任务函数_给物品
function HandOver_RewardItem(nTaskId)
	for i = 1,6 do
		if tTaskTemplate[nTaskId]["RewItemId".. i] == nil then
			break
		end
	
		local nItemId = tTaskTemplate[nTaskId]["RewItemId".. i]
		local sItemAttr = tTaskTemplate[nTaskId]["RewItemAttr".. i]

		if nItemId > 0 then
			if sItemAttr ~= nil then
				Item_AddNewItem(nItemId,sItemAttr)
			else
				Item_AddItem(nItemId)
			end
		end
	end
	
	return true
end

-- 任务函数_给职业装备
function HandOver_RewardProItem(nTaskId)
	if tTaskTemplate[nTaskId]["RewardProItem"] == nil or type(tTaskTemplate[nTaskId]["RewardProItem"]) ~= "table" then
		return false
	end
	
	local nUserPro = Get_UserProfession()
	
	for i,v in pairs (tTaskTemplate[nTaskId]["RewardProItem"]) do
		if nUserPro >= v["MinPro"] and nUserPro <= v["MaxPro"] then
			for nIndex,tItem in pairs (v["ProItem"]) do
				local nItemId = tItem["Id"]
				local sAttr = tItem["Attr"]
				
				if sAttr ~= nil then
					Item_AddNewItem(nItemId,sAttr)
				else
					Item_AddItem(nItemId)
				end
			end
			
			break
		end
	end
	
	return true
end

-- 任务函数_给真气
function HandOver_RewardZhenQi(nTaskId)
	if tTaskTemplate[nTaskId]["RewZhenQi"] == nil then
		return false
	end
	
	return User_AddGongFuQiLeve(tTaskTemplate[nTaskId]["RewZhenQi"])
end

-- 给随机奖励
function HandOver_RewardRandom(nTaskId)
	if tTaskTemplate[nTaskId]["RewardRandom"] == nil then
		return false
	end
	
	local nRewardNum = #tTaskTemplate[nTaskId]["RewardRandom"]
	for i=1,nRewardNum do
		RewardTemplate_NewRandom(tTaskTemplate[nTaskId]["RewardRandom"],i,nNowUserId)
	end
	
	return true
end


-- 任务函数_后续任务操作
function HandOver_PostTask(nTaskId,nNpcId,nType)
	local nPostTaskId = tTaskTemplate[nTaskId]["PostTaskId"]
	local nAcceptNpcId = tTaskTemplate[nPostTaskId]["BeginNpcId"]
	
	if nAcceptNpcId == nil or tTaskAcceptNpc[nAcceptNpcId] == nil or 
		nPostTaskId == nil then
		return
	end
	
	for i,v in pairs (tTaskAcceptNpc[nAcceptNpcId]) do
		if v == nPostTaskId then
			-- 判断是否是当前NPC
			if nNpcId == nAcceptNpcId then
				-- 接任务对白
				local sIndex = tTaskTemplate[nPostTaskId]["MeetAccept"]	
				Task_NpcDialog(nPostTaskId,nNpcId,sIndex,nType)
			else
				local nMapId = Get_NpcMapID(nAcceptNpcId)
				local nPosX = Get_NpcPositionX(nAcceptNpcId)
				local nPosY = Get_NpcPositionY(nAcceptNpcId)
				
				Sys_GotoSomeWhere(nPosX,nPosY,nMapId,nAcceptNpcId)
			end
			
			break
		end
	end
end

-- 任务函数_检测taskDetail的data值
function HandOver_ChkTaskDetailData(nTaskId)
	if tTaskTemplate[nTaskId]["TaskId"] == nil then
		return false
	end
	
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]
	
	for i = 1,6 do
		local nData = tTaskTemplate[nTaskId]["Data" .. i]
		
		if nData == nil then
			break
		end
		
		if not Task_ChkTaskDetailValue(nTaskId,tostring(i),">=",nData) then
			return false
		end
	end
	
	return true
end

-- 交任务判断该任务是已经完成了
function HandOver_ChkTaskComplete(nTaskId)
	return not Task_ChkTaskDetailValue(nTaskId,"CompleteFlag",">=",1)
end

function HandOver_RewLog()
	return Sys_SaveActionTaskLog(tTaskTemplate[nTaskId]["RewLog"])
end


-- 任务函数_检测
function HandOver_ChkZhenQi(nTaskId)
	if tTaskTemplate[nTaskId]["RewZhenQi"] == nil then
		return false
	end
	
	local nAddZhenQi = tTaskTemplate[nTaskId]["RewZhenQi"]
	local nZhenQi = Get_UserGongFuQiLev()
	
	if nAddZhenQi <= 0 or nZhenQi + nAddZhenQi > G_User_MaxZhenQi then
		return false
	end
	
	return true
end