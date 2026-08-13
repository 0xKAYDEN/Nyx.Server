----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]副本模板.lua
--Purpose:	副本模板
--Creator: 	郑鋆
--Created:	2019/03/13
----------------------------------------------------------------------------

-- 命名前缀
-- Instance_

-- 进入副本
function Instance_Enter(tInstance,nNowUserId)
	-- 判断副本数据是否存在
	if type(tInstance) ~= "table" then
		return false
	end

	local nUserId = nNowUserId or Get_UserId()
	local nInstanceType = tInstance["Type"]

	-- 副本类型是否有配置
	if nInstanceType == nil then
		return false
	end

	local nNumLimit = tInstance["NumLimit"] or 0
	local nIsInvite = tInstance["IsInvite"] or 0
	local nTimeLimit = tInstance["TimeLimit"] or 0
	-- 进入副本
	if not User_EnterInstance(nInstanceType,nNumLimit,nIsInvite,nTimeLimit,nUserId) then
		return false
	end

	-- 获取副本地图ID
	local nMapId = Get_UserMapId(nUserId)

	-- 创建NPC
	if type(tInstance["Npc"]) == "table" then
		for i,v in pairs(tInstance["Npc"]) do
			Instance_CreateNpc(v,nMapId)
		end
	end

	-- 创建怪物
	if type(tInstance["Monster"]) == "table" then
		for i,v in pairs(tInstance["Monster"]) do
			Instance_CreateMonster(v,nMapId)
		end
	end

	-- 进入副本提示
	if tInstance["Prompt"] ~= nil then
		User_TalkChannel2005(tInstance["Prompt"])
	end

	-- 进入副本105提示
	if tInstance["MsgBox"] ~= nil then
		local sFunc
		if tInstance["MsgBoxWay"] ~= nil then
				-- 寻路
			local nPosX = tInstance["MsgBoxWay"]["PosX"]
			local nPosY = tInstance["MsgBoxWay"]["PosY"]
			local nNpcId = tInstance["MsgBoxWay"]["NpcId"] or 0
			sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d</N>%d",nPosX,nPosY,nMapId,nNpcId,nUserId)
		end
		Sys_MsgBox(tInstance["MsgBox"],sFunc)
	end

	return true
end

-- 创建NPC
function Instance_CreateNpc(tInstanceNpcInfo,nMapId)
	if type(tInstanceNpcInfo) ~= "table" then
		return
	end

	local sName = tInstanceNpcInfo["Name"]
	local nType = tInstanceNpcInfo["Type"]
	local nSort = tInstanceNpcInfo["Sort"]
	local nLookFace = tInstanceNpcInfo["LookFace"]
	local nPosX = tInstanceNpcInfo["PosX"]
	local nPosY = tInstanceNpcInfo["PosY"]
	local nOwnerType = tInstanceNpcInfo["OwnerType"]
	local nOwnerId = tInstanceNpcInfo["OwnerId"]
	local nLife = tInstanceNpcInfo["Life"]
	local nBase = tInstanceNpcInfo["Base"]
	local nLinkid = tInstanceNpcInfo["nLinkid"]
	local nTask0 = tInstanceNpcInfo["Task0"] or 94418000
	local nTask1 = tInstanceNpcInfo["Task1"]
	local nTask2 = tInstanceNpcInfo["Task2"]
	local nTask3 = tInstanceNpcInfo["Task3"]
	local nTask4 = tInstanceNpcInfo["Task4"]
	local nTask5 = tInstanceNpcInfo["Task5"]
	local nTask6 = tInstanceNpcInfo["Task6"]
	local nTask7 = tInstanceNpcInfo["Task7"]
	local nData0 = tInstanceNpcInfo["Data0"]
	local nData1 = tInstanceNpcInfo["Data1"]
	local nData2 = tInstanceNpcInfo["Data2"]
	local nData3 = tInstanceNpcInfo["Data3"]
	local sDataStr = tInstanceNpcInfo["DataStr"]
	local idserver = tInstanceNpcInfo["idserver"]

	Npc_CreateDynaNpc(sName,nType,nSort,nLookFace,nOwnerType,nOwnerId,nMapId,nPosX,nPosY,nLife,nBase,nLinkid,nTask0,nTask1,nTask2,nTask3,nTask4,nTask5,nTask6,nTask7,nData0,nData1,nData2,nData3,sDataStr,idserver)
end

-- 创建怪物
function Instance_CreateMonster(tInstanceMonsterInfo,nMapId)
	if type(tInstanceMonsterInfo) ~= "table" then
		return
	end

	local nPosX = tInstanceMonsterInfo["PosX"]
	local nPosY = tInstanceMonsterInfo["PosY"]
	local nRange = tInstanceMonsterInfo["Range"] or 3
	local nGenId = tInstanceMonsterInfo["GenId"]
	local nMonsterId = tInstanceMonsterInfo["MonsterId"]
	local nAttribute = tInstanceMonsterInfo["Attribute"] or 0
	local nData = tInstanceMonsterInfo["Data"] or 0
	local nStronghold = tInstanceMonsterInfo["Stronghold"] or 0
	local nChkNum = tInstanceMonsterInfo["ChkNum"]
	local nMonsterNum = tInstanceMonsterInfo["MonsterNum"] or 1
	
	-- 单个怪物固定点召唤
	if nMonsterNum == 1 then
		Monster_AddAndCount(nMapId,nPosX,nPosY,nGenId,nMonsterId,nAttribute,nData,nStronghold,nChkNum)
		return
	else
		-- 多个怪物按设置点为中心召唤
		for i=1,nMonsterNum do
			local nRangeX = math.random(-1*nRange,nRange)
			local nRangeY = math.random(-1*nRange,nRange)
			Monster_AddAndCount(nMapId,nPosX+nRangeX,nPosY+nRangeY,nGenId,nMonsterId,nAttribute,nData,nStronghold,nChkNum)
		end
	end
end
