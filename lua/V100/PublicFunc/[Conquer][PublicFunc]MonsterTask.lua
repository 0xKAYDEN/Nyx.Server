----------------------------------------------------------------------------
--Name:		[征服][公用函数]怪物关联的任务函数.lua
--Purpose:	怪物关联的任务函数
--Creator: 	林静、郑鋆、严振飞、王倩娜、郑江文
--Created:	2015/05/13
----------------------------------------------------------------------------
-- 命名前缀
-- MonsterTask_


-- 检测任务是否有接
function MonsterTask_Chk(nTaskId,nMonsterId,nIndex)
	if tTaskTemplate[nTaskId]["TaskId"] == nil then
		return false
	end
	
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]
	
	if not Task_ChkTaskDetail(nAcceptTaskId) then
		return false
	elseif Task_ChkTaskDetailValue(nAcceptTaskId,"CompleteFlag",">=",1) then
		return false
	end
	
	return true
end

-- 检测stc掩码
function MonsterTask_ChkStc(nTaskId,nMonsterId,nIndex)
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
		return false
	end
	
	if Task_ChkStcValue(nRevEventType,nRevDataType,">=",nRevData) then
		return true
	end
	
	return false
end

-- 怪物掉落需要检测背包空间
function MonsterTask_ChkSpace(nTaskId,nMonsterId,nIndex)
	if tTaskTemplate[nTaskId]["MustSpace"] == nil then
		return false
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tTaskTemplate[nTaskId]["MustSpace"]) then
		if tTaskTemplate[nTaskId]["NoMustSpace"] ~= nil then
			User_TalkChannel2005(tTaskTemplate[nTaskId]["NoMustSpace"])
		end
		
		return false
	end
	
	return true
end

-- 杀怪是否需要携带任务物品
function MonsterTask_ChkNeedItem(nTaskId,nMonsterId,nIndex)
	-- 判断是否需要携带任务物品
	local nItemId = tTaskTemplate[nTaskId]["NeedItemId".. nIndex]
	
	if nItemId == nil then
		return false
	end
	
	if Item_ChkItem(nItemId) then
		return true
	end
	
	if tTaskTemplate[nTaskId]["NoNeedItemId".. nIndex] ~= nil then
		User_TalkChannel2005(tTaskTemplate[nTaskId]["NoNeedItemId".. nIndex])
	end

	return false
end

-- 杀怪是否需要加光效
function MonsterTask_ChkNeedEffect(nTaskId,nMonsterId,nIndex)
	-- 判断是否需要携带任务物品
	local sEffect = tTaskTemplate[nTaskId]["NeedEffect".. nIndex]
	
	if sEffect == nil then
		return false
	end

	return User_EffectAdd("self",sEffect)
end

-- 怪物计数
function MonsterTask_SetCount(nTaskId,nMonsterId,nIndex)
	-- 判断是否需要共享
	if tTaskTemplate[nTaskId]["IsShare"] == true then
		local nTeamNum = Get_UserTeamNumbers()
		
		if nTeamNum > 1 then
			User_TeamExeFuncByTeamer(1,string.format("MonsterTask_AddCount</N>%d</N>%d</N>%d",nTaskId,nIndex,nMonsterId))
			return true
		end
	end

	MonsterTask_AddCount(nTaskId,nIndex,nMonsterId)
	return true
end

function MonsterTask_AddCount(nTaskId,nIndex,nMonsterId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	-- 掩码设值
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]

	if nAcceptTaskId ~= nil then
		local sPos = tTaskTemplate[nTaskId]["ReqMonsterPos".. nIndex] or tostring(nIndex) 
		if Task_ChkTaskDetail(nAcceptTaskId,nUserId) then
			local nValue = Get_TaskDetail(nAcceptTaskId,tostring(sPos),nUserId) + 1
			Task_SetTaskDetailData(nAcceptTaskId,nValue,tostring(sPos),nUserId)
		end
	end

	local nEventType = tTaskTemplate[nTaskId]["ReqEventType".. nIndex]
	local nDataType = tTaskTemplate[nTaskId]["ReqDataType".. nIndex]
	
	if nEventType ~= nil and nDataType ~= nil then
		if Task_StcInterval(nEventType,nDataType,1,4,nUserId) then
			Task_SetStatistic(nEventType,nDataType,0,1,nUserId)
		end
		
		Task_AddStatistic(nEventType,nDataType,1,1,nUserId)
		Task_SetStcTimestamp(nEventType,nDataType,0,nUserId)
	end

	if Task_ChkTaskDetail(nAcceptTaskId,nUserId) then
		MonsterTask_ChkReqMonster(nTaskId,nMonsterId,nIndex,nUserId)
	end
end

-- 杀怪满足交任务时怪物数量弹出提示
function MonsterTask_ChkReqMonster(nTaskId,nMonsterId,nIndex,nUserId)
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]
	local bTrue = true
	
	-- 检测taskdetail掩码
	for i = 1,6 do
		if tTaskTemplate[nTaskId]["ReqMonsterCount".. i] == nil then
			break
		end
		
		local sPos = tTaskTemplate[nTaskId]["ReqMonsterPos".. i] or tostring(i)
		local nNowData = Get_TaskDetail(nAcceptTaskId,tostring(sPos),nUserId)
		local nMaxData = tTaskTemplate[nTaskId]["ReqMonsterCount".. i]
		
		if i ~= nIndex and nNowData < nMaxData then
			bTrue = false
			break
		elseif i == nIndex and nNowData ~= nMaxData then
			bTrue = false
			break
		end
	end
	
	-- 检测stc掩码
	for i = 1,6 do
		local nEventType = tTaskTemplate[nTaskId]["ReqEventType".. i]
		local nDataType = tTaskTemplate[nTaskId]["ReqDataType".. i]
		
		if nEventType == nil or nDataType == nil then
			break
		end
		
		local nNowData = Get_UserStatisticValue(nEventType,nDataType,nUserId)
		local nMaxData = tTaskTemplate[nTaskId]["ReqData" .. i]
		
		if i ~= nIndex and nNowData < nMaxData then
			bTrue = false
			break
		elseif i == nIndex and nNowData ~= nMaxData then
			bTrue = false
			break
		end
	end

	-- 完成任务弹出提示（只弹一次）
	if bTrue == true then
		if tTaskTemplate[nTaskId]["KillMonsterFunc"] ~= nil and type(tTaskTemplate[nTaskId]["KillMonsterFunc"]) == "function" then
			tTaskTemplate[nTaskId]["KillMonsterFunc"](nTaskId,nMonsterId,nIndex,nUserId)
		end
	end
end

-- 杀怪必掉任务物品
function MonsterTask_MustFallItem(nTaskId,nMonsterId,nIndex)
	if tTaskTemplate[nTaskId]["MustFallItemId".. nIndex] == nil then
		return false
	end

	-- 判断掉落方式
	if tTaskTemplate[nTaskId]["MustDropMode".. nIndex] == 1 then
		for _,v in pairs(tTaskTemplate[nTaskId]["MustFallItemId".. nIndex]) do
			Monster_SysDropItem(v["ItemId"])
		end
		
	-- 掉落背包
	elseif tTaskTemplate[nTaskId]["MustDropMode".. nIndex] == 2 then
		-- 背包物品
		local isDrop = false
		
		for i,v in pairs(tTaskTemplate[nTaskId]["MustFallItemId".. nIndex]) do
			if not Item_ChkMulItem(v["ItemId"],v["ItemId"],v["ItemLimit"],1) then
				isDrop = true
				Item_AddNewItem(v["ItemId"],v["ItemAttr"])
				local sItemName = Get_ItemtypeName(v["ItemId"])
				local nNum = tonumber(CommonFunc_GetItemNum(v["ItemAttr"])) or 1
				User_TalkChannel2005(string.format("you receive %d%s", nNum, sItemName))
				User_EffectAdd("self", "CircleUp")
			end
		end
		
		if isDrop == true and tTaskTemplate[nTaskId]["DropFunc"] ~= nil and type(tTaskTemplate[nTaskId]["DropFunc"]) == "function" then
			tTaskTemplate[nTaskId]["DropFunc"](nTaskId,nMonsterId,nIndex)
		end
		
		MonsterTask_ChkReqItem(nTaskId,nMonsterId,nIndex)
	end
	
	return true
end

-- 交任务物品满足后弹出提示
function MonsterTask_ChkReqItem(nTaskId,nMonsterId,nIndex)
	local bTrue = true
	
	for i = 1,6 do
		if tTaskTemplate[nTaskId]["ReqItemId" .. nIndex] == nil then
			break
		end
		
		local nItemId = tTaskTemplate[nTaskId]["ReqItemId" .. nIndex]
		local nCount = tTaskTemplate[nTaskId]["ReqItemCount" .. nIndex] or 1
		if not Item_ChkMulItem(nItemId,nItemId,nCount) then
			bTrue = false
			break
		end
	end
	
	if bTrue == true then
		if tTaskTemplate[nTaskId]["ReqItemFunc"] ~= nil and type(tTaskTemplate[nTaskId]["ReqItemFunc"]) == "function" then
			tTaskTemplate[nTaskId]["ReqItemFunc"](nTaskId,nMonsterId,nIndex)
		end
	end
end

-- 满足杀怪数量后才掉落任务物品
function MonsterTask_SpecificDropItem(nTaskId,nMonsterId,nIndex)
	local nDemandNum = tTaskTemplate[nTaskId]["Demand".. nIndex]
	
	if nDemandNum == nil then
		return false
	end
	
	-- 掩码判断
	local nAcceptTaskId = tTaskTemplate[nTaskId]["TaskId"]
	
	if nAcceptTaskId ~= nil then
		if Task_ChkTaskDetailValue(nTaskId,tostring(nIndex),"<",nDemandNum) then
			return true
		end
	end

	local nEventType = tTaskTemplate[nTaskId]["ReqEventType".. nIndex]
	local nDataType = tTaskTemplate[nTaskId]["ReqDataType".. nIndex]
	
	if nEventType ~= nil and nDataType ~= nil then
		if Task_ChkStcValue(nEventType,nDataType,"<",nDemandNum) then
			return true
		end
	end
	
	-- 掉落物品
	if tTaskTemplate[nTaskId]["SpecificDropItemId".. nIndex] == nil then
		return false
	end
	
	-- 判断掉落方式
	if tTaskTemplate[nTaskId]["SpecificDropMode".. nIndex] == 1 then
		for i,v in pairs(tTaskTemplate[nTaskId]["SpecificDropItemId".. nIndex]) do
			if not Item_ChkMulItem(v["ItemId"],v["ItemId"],v["ItemLimit"],1) then
				Monster_SysDropItem(v["ItemId"])
			end
		end
		
	-- 掉落背包
	elseif tTaskTemplate[nTaskId]["SpecificDropMode".. nIndex] == 2 then
		-- 背包物品
		for i,v in pairs(tTaskTemplate[nTaskId]["SpecificDropItemId".. nIndex]) do
			if not Item_ChkMulItem(v["ItemId"],v["ItemId"],v["ItemLimit"],1) then
				Item_AddNewItem(v["ItemId"],v["ItemAttr"])
			end
		end
		
		MonsterTask_ChkReqItem(nTaskId,nMonsterId,nIndex)
	end
	
	return true
end

-- 有概率掉落任务物品
function MonsterTask_ProbabilityDropItem(nTaskId,nMonsterId,nIndex)
	local tDropItem = tTaskTemplate[nTaskId]["ProbabilityDropItem"..nIndex]
	local nDropIndex = tTaskTemplate[nTaskId]["ProbabilityDropIndex".. nIndex]

	if tDropItem == nil or type(tDropItem) ~= "table" or nDropIndex == nil then
		return false
	end

	local nFlat,tAward = Probabil_RandomAward(tDropItem,nDropIndex) 
	if next(tAward) == nil then
		return true
	end

	local tReward = MonsterTask_GetItemId(tAward[1])
	if tReward == nil then
		return true
	end
	
	local nItemId = tReward["Item_1"]
	
	if nItemId == nil or type(nItemId) ~= "number" then
		return false
	end

	local nItemLimit = 0
	if tTaskTemplate[nTaskId]["ProbabilityDropLimit".. nIndex] >= 0 or tTaskTemplate[nTaskId]["ProbabilityDropLimit".. nIndex] ~= nil then
		nItemLimit = tTaskTemplate[nTaskId]["ProbabilityDropLimit".. nIndex]
	end
	
	if Item_ChkMulItem(nItemId,nItemId,nItemLimit,1) then
		return true
	end

	-- 判断掉落方式
	if tTaskTemplate[nTaskId]["ProbabilityDropMode".. nIndex] == 1 then
		Monster_SysDropItem(nItemId)
		
	-- 掉落背包
	elseif tTaskTemplate[nTaskId]["ProbabilityDropMode".. nIndex] == 2 then
		local sItemAttr = tReward["ItemAttr"]
		
		if sItemAttr ~= nil then
			Item_AddNewItem(nItemId,sItemAttr)
		else
			Item_AddItem(nItemId)
		end
		
		MonsterTask_ChkReqItem(nTaskId,nMonsterId,nIndex)
	end
	
	if tTaskTemplate[nTaskId]["DropFunc"] ~= nil and type(tTaskTemplate[nTaskId]["DropFunc"]) == "function" then
		tTaskTemplate[nTaskId]["DropFunc"](nTaskId,nMonsterId,nIndex,nItemId)
	end

	return true
end

function MonsterTask_GetItemId(tTable)
	if next(tTable["tAward"]) ~= nil then
		return tTable["tAward"][1]
	elseif next(tTable["tAbsoluteAward"]) ~= nil then
		return tTable["tAbsoluteAward"][1]
	elseif next(tTable["tSelfItemChanceAward"]) ~= nil then
		return tTable["tSelfItemChanceAward"][1]
	end
end