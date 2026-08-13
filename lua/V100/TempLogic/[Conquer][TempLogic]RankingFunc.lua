----------------------------------------------------------------------------
--Name:		[征服][模板逻辑]排行榜功能.lua
--Purpose:	排行榜功能
--Creator: 	郑鋆
--Created:	2017/02/13
----------------------------------------------------------------------------

-- 命名前缀
-- RankingFunc_

-- 排行榜信息表
tRankingFunc_Info = {}

-- 跨服版信息
tRankingFunc_CrossInfo = {}

-- ["ActiveTime"]							排行榜的活动时间
-- ["DayTime"]							可设值的时间段（该字段是一个表数据）
-- ["ResetTime"]							清零的时间段（该字段是一个表数据）
-- ["RankNum"]							排行榜里存储的排名数量，默认只排10名
-- ["Global"]							排行榜存储当前排行榜数据的动态存储表
-- ["BeforeGlobal"]						排行榜存储上次排行榜数据的动态存储表
-- ["Reset"]								排行榜的数据是否需要清理，正常默认需要清零，有配置值时则不清
-- ["RankMode"]								排行榜的数据排列方式，正常默认从大到小配1，从小到大 配2,不相等更新 配3

-- ["Mail"]								排行榜奖励给邮件奖励
-- ["Mail"]["ActiveTime"]					排行榜奖励给邮件奖励的活动时间
-- ["Mail"]["RewardTime"]					排行榜奖励给邮件奖励的时间
-- ["Mail"]["HaveFunc"]					排行榜的邮件文字需要传参，请提供外接函数
-- ["Mail"]["Reward"]						排行榜奖励给邮件奖励的奖励表
-- ["Mail"]["Reward"][1]["RewardRank"]		排行榜奖励给邮件奖励的奖励名次
-- ["Mail"]["Reward"][1]["Money"]			排行榜奖励给邮件奖励的奖励金钱
-- ["Mail"]["Reward"][1]["Emoney"]			排行榜奖励给邮件奖励的奖励天石
-- ["Mail"]["Reward"][1]["ActionId"]		排行榜奖励给邮件奖励的奖励发奖ID
-- ["Mail"]["Reward"][1]["EmoneyType"]		排行榜奖励给邮件奖励的奖励天石类型
-- ["Mail"]["Reward"][1]["ExistDay"]		排行榜奖励给邮件奖励的奖励邮件天数
-- ["Mail"]["Reward"][1]["Sender"]			排行榜奖励给邮件奖励的奖励邮件发送者文字
-- ["Mail"]["Reward"][1]["Title"]			排行榜奖励给邮件奖励的奖励邮件标题
-- ["Mail"]["Reward"][1]["Content"]		排行榜奖励给邮件奖励的奖励邮件内容
-- ["Mail"]["Reward"][1]["ServerId"]		排行榜奖励给邮件奖励的奖励邮件服务器

-- ["Receive"]							NPC处领取排行榜奖励
-- ["Receive"]["ActiveTime"]				排行榜奖励给NPC奖励的活动时间
-- ["Receive"]["RewardTime"]				排行榜奖励给NPC奖励的时间
-- ["Receive"]["Reward"]					NPC处领取排行榜奖励的奖励表

-- ["Msg"]								提示配置表
-- ["Msg"]["ActiveTime"]					不在活动时间内的提示
-- ["Msg"]["RewardTime"]					不在奖励领取时间内的提示
-- ["Msg"]["NoRank"]						不在排行榜里的提示
-- ["Msg"]["HaveReward"]					已领取排行榜奖励的提示
-- ["Msg"]["Reward"]						领取排行榜奖励的提示

-- tRankingFunc_Data的表结构如下
-- nIndex 索引，i表示名次
-- tRankingFunc_Data[nIndex][i] = {}
-- tRankingFunc_Data[nIndex][i]["Score"] = nScore
-- tRankingFunc_Data[nIndex][i]["UserId"] = nUserId
-- tRankingFunc_Data[nIndex][i]["UserName"] = sUserName

-------------------------------------------------------------------------------------------------------------------------
-- 排行榜里的数据表
local tRankingFunc_Data = {}

-- 跨服排行榜里的数据表
local tRankingFunc_CrossData = {}

-- 存放上一次排行榜的数据
local tRankingFunc_BeforeData = {}
-- 清零开关
local tRankingFunc_ClearingSwitch = {}

-- 复制的排行榜数据，用来在数据比较的时候用
local tRankingFunc_CopyData = {}

-- 跨服复制的排行榜数据，用来在数据比较的时候用
local tRankingFunc_CrossCopyData = {}

-- 常量的数据
local tRankingFunc_Constant = {}
	-- 默认的名次
	tRankingFunc_Constant["Default"] = 10
	-- 默认排序模式
	tRankingFunc_Constant["RankMode"] = 1
	-- 邮件奖励里的默认值
	tRankingFunc_Constant["Money"] = 0
	tRankingFunc_Constant["Emoney"] = 0
	tRankingFunc_Constant["ActionId"] = 0
	tRankingFunc_Constant["EmoneyType"] = 0
	tRankingFunc_Constant["ExistDay"] = 7
	tRankingFunc_Constant["Sender"] = ""
	tRankingFunc_Constant["Title"] = ""
	tRankingFunc_Constant["Content"] = ""
	tRankingFunc_Constant["ServerId"] = 0

----------------------------------------------------------逻辑部分-------------------------------------------------------
-- 跨服检测该排行榜是否有配置相关数据
function RankingFunc_CrossChkInfo(nIndex)
	if tRankingFunc_CrossInfo[nIndex] == nil or type(tRankingFunc_CrossInfo[nIndex]) ~= "table" then
		return false
	end
	
	if tRankingFunc_CrossData[nIndex] == nil or type(tRankingFunc_CrossData[nIndex]) ~= "table" then
		return false
	end
	
	return true
end

-- 检测该排行榜是否有配置相关数据
function RankingFunc_ChkInfo(nIndex)
	if tRankingFunc_Info[nIndex] == nil or type(tRankingFunc_Info[nIndex]) ~= "table" then
		return false
	end
	
	if tRankingFunc_Data[nIndex] == nil or type(tRankingFunc_Data[nIndex]) ~= "table" then
		return false
	end
	
	return true
end

-- 跨服判断是否在活动时间
function RankingFunc_CrossChkActiveTime(nIndex)
	-- 判断是否在完整的活动时间内
	local sActiveTime = tRankingFunc_CrossInfo[nIndex]["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) then
		return false
	end
	
	-- 判断是否在可设值的活动时间内
	if not RankingFunc_ChkDayTime(tRankingFunc_CrossInfo[nIndex]["DayTime"]) then
		return false
	end
	
	return true
end

-- 判断是否在活动时间
function RankingFunc_ChkActiveTime(nIndex)
	-- 判断是否在完整的活动时间内
	local sActiveTime = tRankingFunc_Info[nIndex]["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) then
		return false
	end
	
	-- 判断是否在可设值的活动时间内
	if not RankingFunc_ChkDayTime(tRankingFunc_Info[nIndex]["DayTime"]) then
		return false
	end
	
	return true
end

function RankingFunc_ChkDayTime(tDayTime)
	if tDayTime == nil then
		return true
	end
	
	for i,v in pairs(tDayTime) do
		if Sys_ChkDayTime(v) then
			return true
		end
	end
	
	return false
end

-- 清零的时间判断
function RankingFunc_ChkResetTime(tResetTime)
	if tResetTime == nil then
		return false
	end 
	
	for i,v in pairs(tResetTime) do
		if Sys_ChkDayTime(v) then
			return true
		end
	end
	
	return false
end

-- 获取该玩家的名次
function RankingFunc_GetUserRank(nUserId)
	local nRank = 0
	
	for i,v in pairs(tRankingFunc_CopyData["Info"]) do
		if v["UserId"] == nUserId then
			return i
		end
	end
	
	return nRank
end

-- 比较数据
function RankingFunc_CompareData(nCompareIndex,nScore)
	local nCompareScore = tRankingFunc_CopyData["Info"][nCompareIndex]["Score"]
	local nRankMode = tRankingFunc_CopyData["RankMode"]
	
	if nRankMode == 2 then
		if nScore < nCompareScore then
			return true
		end
	elseif nRankMode == 3 then
		if nScore ~= nCompareScore then
			return true
		end
	else
		if nScore > nCompareScore then
			return true
		end
	end
	
	return false
end

-- 检测玩家是否需要更新排行榜数据
function RankingFunc_ChkUserRank(nRank,nScore,nUserId,sInPutUserName)
	-- 比较玩家数据
	if not RankingFunc_CompareData(nRank,nScore) then
		return false
	end
	
	RankingFunc_SetData(nRank,nScore,nUserId,sInPutUserName)
	
	return true
end

--跨服
function RankingFunc_CrossSetData(nRank,nScore,nUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId)
	if tRankingFunc_CrossCopyData["Info"][nRank] == nil then
		tRankingFunc_CrossCopyData["Info"][nRank] = {}
	end
	
	local nNewUserId = nNewInUserId or Get_UserId()
	
	if User_IsUserOnline(nNewUserId) then
		local nUserSex = Get_UserSex(nNewUserId)
		local sUserName = sInPutUserName or Get_UserName(nNewUserId)
	
		tRankingFunc_CrossCopyData["Info"][nRank]["UserName"] = sUserName
	elseif sInPutUserName ~= nil then
		tRankingFunc_CrossCopyData["Info"][nRank]["UserName"] = sInPutUserName
	end
	
	tRankingFunc_CrossCopyData["Info"][nRank]["UserId"] = nUserId
	tRankingFunc_CrossCopyData["Info"][nRank]["Score"] = nScore
	tRankingFunc_CrossCopyData["Info"][nRank]["ServerId"] = nOldServerId
	tRankingFunc_CrossCopyData["Info"][nRank]["ServerName"] = nOldServerName
end


function RankingFunc_SetData(nRank,nScore,nUserId,sInPutUserName)
	if tRankingFunc_CopyData["Info"][nRank] == nil then
		tRankingFunc_CopyData["Info"][nRank] = {}
	end
	
	if User_IsUserOnline(nUserId) then
		local nUserSex = Get_UserSex(nUserId)
		local sUserName = sInPutUserName or Get_UserName(nUserId)
		local nGuildId = Get_UserGuildId(nUserId)
		local sGuildName = ""
		
		if nGuildId > 0 then
			sGuildName = Get_UserSynDicateName(nGuildId,nUserId)
		end
	
		tRankingFunc_CopyData["Info"][nRank]["UserName"] = sUserName
		tRankingFunc_CopyData["Info"][nRank]["GuildId"] = nGuildId
		tRankingFunc_CopyData["Info"][nRank]["GuildName"] = sGuildName
	elseif sInPutUserName ~= nil then
		tRankingFunc_CopyData["Info"][nRank]["UserName"] = sInPutUserName
	end
	
	tRankingFunc_CopyData["Info"][nRank]["UserId"] = nUserId
	tRankingFunc_CopyData["Info"][nRank]["Score"] = nScore
end

--跨服插入新的数据
function RankingFunc_CrosssInsertNewData(nScore,nUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId)
	local nNowNum = #tRankingFunc_CrossCopyData["Info"]
	RankingFunc_CrossSetData(nNowNum + 1,nScore,nUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId)
	
	return nNowNum + 1
end

-- 插入新的数据
function RankingFunc_InsertNewData(nScore,nUserId,sInPutUserName)
	local nNowNum = #tRankingFunc_CopyData["Info"]
	RankingFunc_SetData(nNowNum + 1,nScore,nUserId,sInPutUserName)
	
	return nNowNum + 1
end

--跨服排行榜重新排序
function RankingFunc_CrossSort(nRank)
	local bExchange = false
	
	for i = nRank,1,-1 do
		local nScore = tRankingFunc_CrossCopyData["Info"][i]["Score"]
		local nCompareIndex = i - 1
		
		-- 比较两个数据
		if nCompareIndex == 0 then
			break
		end
		if not RankingFunc_CrossCompareData(nCompareIndex,nScore) then
			break
		end
		
		local tScore = CommonFunc_Copy(tRankingFunc_CrossCopyData["Info"][nCompareIndex])
		local tNewScore = CommonFunc_Copy(tRankingFunc_CrossCopyData["Info"][i])
		tRankingFunc_CrossCopyData["Info"][nCompareIndex] = tNewScore
		tRankingFunc_CrossCopyData["Info"][i] = tScore
		
		bExchange = true
	end
	
	return bExchange
end

-- 排行榜重新排序
function RankingFunc_Sort(nRank)
	local bExchange = false
	
	for i = nRank,1,-1 do
		local nScore = tRankingFunc_CopyData["Info"][i]["Score"]
		local nCompareIndex = i - 1
		
		-- 比较两个数据
		if nCompareIndex == 0 then
			break
		end
		if not RankingFunc_CompareData(nCompareIndex,nScore) then
			break
		end
		
		local tScore = CommonFunc_Copy(tRankingFunc_CopyData["Info"][nCompareIndex])
		local tNewScore = CommonFunc_Copy(tRankingFunc_CopyData["Info"][i])
		tRankingFunc_CopyData["Info"][nCompareIndex] = tNewScore
		tRankingFunc_CopyData["Info"][i] = tScore
		
		bExchange = true
	end
	
	return bExchange
end

--跨服重置排行榜数据
function RankingFunc_CrossRestData(nIndex)
	local nRankNum = tRankingFunc_CrossInfo[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	
	-- 重置排行榜数据
	tRankingFunc_CrossData[nIndex] = {}
	for i = 1,nRankNum do
		if tRankingFunc_CrossCopyData["Info"][i] == nil then
			break
		end
		
		tRankingFunc_CrossData[nIndex][i] = CommonFunc_Copy(tRankingFunc_CrossCopyData["Info"][i])
	end
	
	-- 重置动态存储表的数据
	RankingFunc_CrossRestGlobalData(nIndex)
end

-- 重置排行榜数据
function RankingFunc_RestData(nIndex)
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	
	-- 重置排行榜数据
	tRankingFunc_Data[nIndex] = {}
	for i = 1,nRankNum do
		if tRankingFunc_CopyData["Info"][i] == nil then
			break
		end
		
		tRankingFunc_Data[nIndex][i] = CommonFunc_Copy(tRankingFunc_CopyData["Info"][i])
	end
	
	-- 重置动态存储表的数据
	RankingFunc_RestGlobalData(nIndex)
end

--重置跨服动态存储表的数据
function RankingFunc_CrossRestGlobalData(nIndex)
	if tRankingFunc_CrossInfo[nIndex]["Global"] == nil then
		return
	end
	
	local nRankNum = tRankingFunc_CrossInfo[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	
	for i = 1,nRankNum do
		if tRankingFunc_CrossData[nIndex][i] == nil then
			break
		end 
		
		local nGlobalId = tRankingFunc_CrossInfo[nIndex]["Global"][nGlobalIndex]
		local nScore = tRankingFunc_CrossData[nIndex][i]["Score"]
		local nUserId = tRankingFunc_CrossData[nIndex][i]["UserId"]
		local sUserName = tRankingFunc_CrossData[nIndex][i]["UserName"]
		local nServerId = tRankingFunc_CrossData[nIndex][i]["ServerId"]
		local nServerName = tRankingFunc_CrossData[nIndex][i]["ServerName"]
		
		if nGlobalId == nil then
			Sys_SaveAbnormalLog("排行榜里的动态存储表ID配置有问题，下标索引为：" .. nIndex)
			break
		end
		
		Sys_SetSynaGlobalData(nGlobalId,nPos,nScore)
		Sys_SetSynaGlobalData(nGlobalId,nPos + 1,nUserId)
		Sys_SetSynaGlobalData(nGlobalId,nPos + 2,nServerId)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos + 1,nServerName)
		if nPos == 3 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 3
		end
	end
end

-- 重置动态存储表的数据
function RankingFunc_RestGlobalData(nIndex)
	if tRankingFunc_Info[nIndex]["Global"] == nil then
		return
	end
	
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	
	for i = 1,nRankNum do
		if tRankingFunc_Data[nIndex][i] == nil then
			break
		end 
		
		local nGlobalId = tRankingFunc_Info[nIndex]["Global"][nGlobalIndex]
		local nScore = tRankingFunc_Data[nIndex][i]["Score"]
		local nUserId = tRankingFunc_Data[nIndex][i]["UserId"]
		local sUserName = tRankingFunc_Data[nIndex][i]["UserName"]
		
		if nGlobalId == nil then
			Sys_SaveAbnormalLog("排行榜里的动态存储表ID配置有问题，下标索引为：" .. nIndex)
			break
		end
		
		Sys_SetSynaGlobalData(nGlobalId,nPos,nScore)
		Sys_SetSynaGlobalData(nGlobalId,nPos + 1,nUserId)
		Sys_SetSynaGlobalDataStr(nGlobalId,nPos,sUserName)
		if nPos == 4 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 2
		end
	end
end

--跨服获取动态存储表清零开关
function RankingFunc_CrossGetRestGlobalSwitch(nIndex)
	if tRankingFunc_CrossInfo[nIndex]["Global"] == nil then
		return 0,0
	end

	local nRankNum = tRankingFunc_CrossInfo[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	
	if nRankNum == tRankingFunc_Constant["Default"] then
		nGlobalIndex = 4
		nPos = 2
		return nGlobalIndex,nPos
	end
	
	for i = 1,nRankNum do
		if nPos == 4 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 2
		end
	end
	
	return nGlobalIndex,nPos
end

-- 获取动态存储表清零开关
function RankingFunc_GetRestGlobalSwitch(nIndex)
	if tRankingFunc_Info[nIndex]["Global"] == nil then
		return 0,0
	end

	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	
	if nRankNum == tRankingFunc_Constant["Default"] then
		nGlobalIndex = 4
		nPos = 2
		return nGlobalIndex,nPos
	end
	
	for i = 1,nRankNum do
		if nPos == 4 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 2
		end
	end
	
	return nGlobalIndex,nPos
end

-- 服务器启动时获取排行榜数据
function RankingFunc_StartServer()
	tRankingFunc_Data = {}
	tRankingFunc_CrossData = {}
	tRankingFunc_BeforeData = {}
	
	for i,v in pairs(tRankingFunc_Info) do
		RankingFunc_InitialData(i)
	end
	
	--跨服排行榜数据
	
	for i,v in pairs(tRankingFunc_CrossInfo) do
		RankingFunc_CrossInitialData(i)
	end
	
end

--跨服
function RankingFunc_CrossInitialData(nIndex)
	-- 判断是否在完整的活动时间内
	local sActiveTime = tRankingFunc_CrossInfo[nIndex]["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) and (not CommonFunc_GetBeforeActivityTime(sActiveTime)) then
		return
	end
	
	-- 初始化数据
	RankingFunc_CrossSetInitialData(nIndex)
	
end

function RankingFunc_InitialData(nIndex)
	-- 判断是否在完整的活动时间内
	local sActiveTime = tRankingFunc_Info[nIndex]["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) and (not CommonFunc_GetBeforeActivityTime(sActiveTime)) then
		return
	end
	
	-- 初始化数据
	RankingFunc_SetInitialData(nIndex)
	
	if tRankingFunc_Info[nIndex]["Reset"] ~= nil then
		tRankingFunc_BeforeData[nIndex] = tRankingFunc_Data[nIndex]
	else
		RankingFunc_SetBeforData(nIndex)
	end
end

--跨服初始化数据
function RankingFunc_CrossSetInitialData(nIndex)
	tRankingFunc_CrossData[nIndex] = {}
	local nRankNum = tRankingFunc_CrossInfo[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	
	-- 判断是否需要读取动态存储表的值
	if tRankingFunc_CrossInfo[nIndex]["Global"] == nil or type(tRankingFunc_CrossInfo[nIndex]["Global"]) ~= "table" then
		return
	end
	
	for i = 1,nRankNum do
		local nGlobalId = tRankingFunc_CrossInfo[nIndex]["Global"][nGlobalIndex]
		
		if nGlobalId == nil then
			return
		end

		local nScore = Get_SysDynaGlobalData(nGlobalId,nPos)
		local nUserId = Get_SysDynaGlobalData(nGlobalId,nPos + 1)
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
		local nServerId = Get_SysDynaGlobalData(nGlobalId,nPos + 2)
		local nServerName = Get_SysDynaGlobalDataStr(nGlobalId,nPos + 1)
		
		if nScore == 0 or nUserId == 0 and nServerId == 0 then
			return
		end
		tRankingFunc_CrossData[nIndex][i] = {}
		tRankingFunc_CrossData[nIndex][i]["Score"] = nScore
		tRankingFunc_CrossData[nIndex][i]["UserId"] = nUserId
		tRankingFunc_CrossData[nIndex][i]["UserName"] = sUserName
		tRankingFunc_CrossData[nIndex][i]["ServerId"] = nServerId
		tRankingFunc_CrossData[nIndex][i]["ServerName"] = nServerName
		
		if nPos == 3 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 3
		end
	end
end

-- 设置初始数据
function RankingFunc_SetInitialData(nIndex)
	tRankingFunc_Data[nIndex] = {}
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	
	-- 判断是否需要读取动态存储表的值
	if tRankingFunc_Info[nIndex]["Global"] == nil or type(tRankingFunc_Info[nIndex]["Global"]) ~= "table" then
		return
	end
	
	for i = 1,nRankNum do
		local nGlobalId = tRankingFunc_Info[nIndex]["Global"][nGlobalIndex]
		
		if nGlobalId == nil then
			return
		end

		local nScore = Get_SysDynaGlobalData(nGlobalId,nPos)
		local nUserId = Get_SysDynaGlobalData(nGlobalId,nPos + 1)
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
		
		if nScore == 0 or nUserId == 0 then
			return
		end
		tRankingFunc_Data[nIndex][i] = {}
		tRankingFunc_Data[nIndex][i]["Score"] = nScore
		tRankingFunc_Data[nIndex][i]["UserId"] = nUserId
		tRankingFunc_Data[nIndex][i]["UserName"] = sUserName
		
		if nPos == 4 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 2
		end
	end
end

-- 设置初始数据
function RankingFunc_SetBeforData(nIndex)
	tRankingFunc_BeforeData[nIndex] = {}
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local nGlobalIndex = 1
	local nPos = 0
	
	-- 判断是否需要读取动态存储表的值
	if tRankingFunc_Info[nIndex]["BeforeGlobal"] == nil or type(tRankingFunc_Info[nIndex]["BeforeGlobal"]) ~= "table" then
		return
	end
	
	for i = 1,nRankNum do
		local nGlobalId = tRankingFunc_Info[nIndex]["BeforeGlobal"][nGlobalIndex]
		
		if nGlobalId == nil then
			return
		end

		local nScore = Get_SysDynaGlobalData(nGlobalId,nPos)
		local nUserId = Get_SysDynaGlobalData(nGlobalId,nPos + 1)
		local sUserName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
		
		if nScore == 0 or nUserId == 0 then
			return
		end
		tRankingFunc_BeforeData[nIndex][i] = {}
		tRankingFunc_BeforeData[nIndex][i]["Score"] = nScore
		tRankingFunc_BeforeData[nIndex][i]["UserId"] = nUserId
		tRankingFunc_BeforeData[nIndex][i]["UserName"] = sUserName
		
		if nPos == 4 then
			nPos = 0
			nGlobalIndex = nGlobalIndex + 1
		else
			nPos = nPos + 2
		end
	end
end

-- 时间自检
function RankingFunc_SelfTime()
	for i,v in pairs(tRankingFunc_Info) do
		-- 清零操作
		RankingFunc_RestZeroData(i)
		-- 发放邮件奖励
		RankingFunc_RewardMail(i)
	end
	
	for i,v in pairs(tRankingFunc_CrossInfo) do
		-- 发放邮件奖励
		RankingFunc_CrossRewardMail(i)
	end
end

-- 清零操作
function RankingFunc_RestZeroData(nIndex)
	-- 判断是否在完整的活动时间内
	local sActiveTime = tRankingFunc_Info[nIndex]["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) then
		return
	end
	
	-- 判断是否配置了不清零操作
	if tRankingFunc_Info[nIndex]["Reset"] ~= nil then
		return
	end
	
	-- 判断是否在清零的时间段
	local nGlobalIndex,nPos = RankingFunc_GetRestGlobalSwitch(nIndex)
	if not RankingFunc_ChkResetTime(tRankingFunc_Info[nIndex]["ResetTime"]) then
		-- 重置清零开关
		tRankingFunc_ClearingSwitch[nIndex] = false
		
		if nGlobalIndex > 0 then
			local nGlobalId = tRankingFunc_Info[nIndex]["Global"][nGlobalIndex]
			local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
			
			if nData ~= 0 then
				Sys_SetSynaGlobalData(nGlobalId,nPos,0)
			end
		end
		return
	end
	
	-- -- 判断是否已经清零过了
	if tRankingFunc_ClearingSwitch[nIndex] then
		return
	end
	
	-- 存储本次排名数据
	local tData = CommonFunc_Copy(tRankingFunc_Data[nIndex])
	tRankingFunc_BeforeData[nIndex] = tData
	RankingFunc_SetDynaGloabl(nIndex)
	
	-- 清零排名数据
	tRankingFunc_Data[nIndex] = {}
	
	-- 清零动态存储表
	for i,v in pairs(tRankingFunc_Info[nIndex]["Global"]) do
		Sys_ResetAllSynaGlobalData(v)
		Sys_ResetAllSynaGlobalDataStr(v)
	end
	
	-- 清零开关关闭
	tRankingFunc_ClearingSwitch[nIndex] = true
	
	if nGlobalIndex > 0 then
		local nGlobalId = tRankingFunc_Info[nIndex]["Global"][nGlobalIndex]
		Sys_SetSynaGlobalData(nGlobalId,nPos,1)
	end
end

-- 存储上次排行榜数据
function RankingFunc_SetDynaGloabl(nIndex)
	if tRankingFunc_Info[nIndex]["BeforeGlobal"] == nil then
		return
	end
		
	-- 正常排行榜清零
	for i,v in pairs(tRankingFunc_Info[nIndex]["Global"]) do
		local nGlobalId = tRankingFunc_Info[nIndex]["BeforeGlobal"][i]
		if nGlobalId == nil then
			break
		end
		
		for j = 0,5 do
			local nData = Get_SysDynaGlobalData(v,j)
			local sText = Get_SysDynaGlobalDataStr(v,j)
			local sTime = Get_SysDynaGlobalTime(v,j)
			
			Sys_SetSynaGlobalData(nGlobalId,j,nData)
			Sys_SetSynaGlobalDataStr(nGlobalId,j,sText)
			Sys_SetSynaGlobalTime(nGlobalId,j,sTime)
		end
	end
end

--跨服排名获得ID和Pos
function RankingFunc_CrossGetPos(tGlobal,nRanking)
	local nTableIndex = math.ceil(nRanking/2)
	local nGlobalId = tGlobal[nTableIndex]
	local nPos = nRanking - (nTableIndex-1)*2 
	if nPos == 1 then
		nPos = 0
	elseif nPos == 2 then
		nPos = 3
	end
	return nGlobalId,nPos
end

-- 根据排名获得ID和Pos
function RankingFunc_GetPos(tGlobal,nRanking)
	local nTableIndex = math.ceil(nRanking/3)
	local nGlobalId = tGlobal[nTableIndex]
	local nPos = nRanking - (nTableIndex-1)*3
	if nPos == 1 then
		nPos = 0
	elseif nPos == 2 then
		nPos = 2
	elseif nPos == 3 then
		nPos = 4
	end
	return nGlobalId,nPos
end

-- 跨服发送邮件
function RankingFunc_CrossRewardMail(nIndex)
	-- 判断是否是配置邮件奖励
	if tRankingFunc_CrossInfo[nIndex]["Mail"] == nil then
		return
	end
	
	-- 判断领取排行榜奖励的活动时间
	local sActiveTime = tRankingFunc_CrossInfo[nIndex]["Mail"]["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) then
		return
	end
	
	-- 判断是在领取奖励的时间
	if not RankingFunc_ChkResetTime(tRankingFunc_CrossInfo[nIndex]["Mail"]["RewardTime"]) then
		return
	end
	
	-- 给予邮件奖励
	local tRankData = tRankingFunc_CrossData[nIndex]
	local tGlobal = tRankingFunc_CrossInfo[nIndex]["Global"]
	local nHaveNum = #tRankData
	for i,v in pairs(tRankingFunc_CrossInfo[nIndex]["Mail"]["Reward"]) do
		local nRewardRank = v["RewardRank"]
		if nRewardRank > nHaveNum then
			break
		end
		local nUserId = tRankData[nRewardRank]["UserId"]
		
		if (not tRankData[nRewardRank]["Reward"]) and (nUserId > 0) then
			local nMoney = v["Money"] or tRankingFunc_Constant["Money"]
			local nEmoney = v["Emoney"] or tRankingFunc_Constant["Emoney"]
			local nActionId = v["ActionId"] or tRankingFunc_Constant["ActionId"]
			local nEmoneyType = v["EmoneyType"] or tRankingFunc_Constant["EmoneyType"]
			local nExistDay = v["ExistDay"] or tRankingFunc_Constant["ExistDay"]
			local sSender = v["Sender"] or tRankingFunc_Constant["Sender"]
			local sTitle = v["Title"] or tRankingFunc_Constant["Title"]
			local sContent = v["Content"] or tRankingFunc_Constant["Content"]
			local nServerId = tRankData[nRewardRank]["ServerId"]
	
			if Sys_SendMail(nUserId,nMoney,nEmoney,nActionId,nEmoneyType,nExistDay,sSender,sTitle,sContent,nServerId) then
				tRankData[nRewardRank]["Reward"] = true
				-- 动态存储表设值,str位的2,5两位作为标识
				local nGlobalId,nPos = RankingFunc_CrossGetPos(tGlobal,nRewardRank)
				Sys_SetSynaGlobalDataStr(nGlobalId,nPos+2,"1")
			end
		end
	end
end

-- 获得邮件奖励
function RankingFunc_RewardMail(nIndex)
	-- 判断是否是配置邮件奖励
	if tRankingFunc_Info[nIndex]["Mail"] == nil then
		return
	end
	
	-- 判断领取排行榜奖励的活动时间
	local sActiveTime = tRankingFunc_Info[nIndex]["Mail"]["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) then
		return
	end
	
	-- 判断是在领取奖励的时间
	if not RankingFunc_ChkResetTime(tRankingFunc_Info[nIndex]["Mail"]["RewardTime"]) then
		return
	end
	
	local sFunc = tRankingFunc_Info[nIndex]["Mail"]["HaveFunc"]
	-- 自己写的交任务函数
	if sFunc ~= nil and type(sFunc) == "function" then
		sFunc(nIndex)
	end
	
	-- 给予邮件奖励
	local tRankData = RankingFunc_GetBeforeData(nIndex)
	
	-- 判断返回的表是否是空值
	if tRankData == nil or type(tRankData) ~= "table" then
		return
	end
	
	local tGlobal = tRankingFunc_Info[nIndex]["BeforeGlobal"] or tRankingFunc_Info[nIndex]["Global"]
	local nHaveNum = #tRankData
	for i,v in pairs(tRankingFunc_Info[nIndex]["Mail"]["Reward"]) do
		local nRewardRank = v["RewardRank"]
		if nRewardRank > nHaveNum then
			break
		end
		local nUserId = tRankData[nRewardRank]["UserId"]
		
		if (not tRankData[nRewardRank]["Reward"]) and (nUserId > 0) then
			local nMoney = v["Money"] or tRankingFunc_Constant["Money"]
			local nEmoney = v["Emoney"] or tRankingFunc_Constant["Emoney"]
			local nActionId = v["ActionId"] or tRankingFunc_Constant["ActionId"]
			local nEmoneyType = v["EmoneyType"] or tRankingFunc_Constant["EmoneyType"]
			local nExistDay = v["ExistDay"] or tRankingFunc_Constant["ExistDay"]
			local sSender = v["Sender"] or tRankingFunc_Constant["Sender"]
			local sTitle = v["Title"] or tRankingFunc_Constant["Title"]
			local sContent = v["Content"] or tRankingFunc_Constant["Content"]
			local nServerId = v["ServerId"] or tRankingFunc_Constant["ServerId"]
	
			if Sys_SendMail(nUserId,nMoney,nEmoney,nActionId,nEmoneyType,nExistDay,sSender,sTitle,sContent,nServerId) then
				tRankData[nRewardRank]["Reward"] = true
				-- 动态存储表设值
				local nGlobalId,nPos = RankingFunc_GetPos(tGlobal,nRewardRank)
				Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,"1")
			end
		end
	end
end

-- 判断玩家是否可以领取排行榜奖励
function RankingFunc_ChkUserRewardRank(nIndex,nUserId)
	for i,v in pairs(tRankingFunc_BeforeData[nIndex]) do
		if v["UserId"] == nUserId then
			return i
		end
	end

	return 0
end

-- 获取名次奖励配置
function RankingFunc_GetRankReward(nIndex,nRank)
	for i,v in pairs(tRankingFunc_Info[nIndex]["Receive"]["Reward"]) do
		if nRank == v["RewardRank"] then
			return v
		end
	end
	
	return
end

-- NPC处领取奖励的背包空间判断
function RankingFunc_ChkSpace(tReward,nUserId)
	local bIsRandom = tReward["IsRandom"]
	
	-- 判断是随机奖励还是固定奖励
	if bIsRandom then
		local nIndex = tReward["Index"]
		
		if nIndex == nil then
			return false
		end
		
		local bJudge,nSpace = RewardTemplate_ChkRandomSpace(tReward,nIndex,nUserId)
		
		if not bJudge then
			User_TalkChannel2005(string.format(tRewardTemplate_Text["NoSpace"],nSpace),nUserId)
		end
		
		return bJudge
	else
		return RewardTemplate_CheckSpace(tReward,nUserId)
	end
end

-- 给予NPC提示
function RankingFunc_OpenNpcPrompt(nNpcId,nIndex,sPromptType)
	if nNpcId == nil or tRankingFunc_Info[nIndex]["Msg"] == nil then
		return
	end
	
	local sIndex = tRankingFunc_Info[nIndex]["Msg"][sPromptType]
	
	if sIndex == nil then
		return
	end
	
	-- 出NPC提示
	LinkNpcGossipFunc_New(nNpcId,sIndex)
end

--------------------------------------------------开放给外部调用---------------------------------------------------------
-- 设置排行榜数据
-- 参数说明
-- nIndex			下标索引，你自己配置的排行榜下标索引
-- nScore			积分（如该排行是用时间排序的则，则该数据传活动用时数据）
-- nNowUserId		玩家ID

-- 比较数据
function RankingFunc_CrossCompareData(nCompareIndex,nScore)
	local nCompareScore = tRankingFunc_CrossCopyData["Info"][nCompareIndex]["Score"]
	local nRankMode = tRankingFunc_CrossCopyData["RankMode"]
	
	if nRankMode == 2 then
		if nScore < nCompareScore then
			return true
		end
	elseif nRankMode == 3 then
		if nScore ~= nCompareScore then
			return true
		end
	else
		if nScore > nCompareScore then
			return true
		end
	end
	
	return false
end

-- 检测玩家是否需要更新排行榜数据
function RankingFunc_CrossChkUserRank(nRank,nScore,nOldUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId)
	-- 比较玩家数据
	
	if not RankingFunc_CrossCompareData(nRank,nScore) then
		return false
	end
	
	RankingFunc_CrossSetData(nRank,nScore,nOldUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId)
	
	return true
end

-- 跨服排行榜获取该玩家的名次
function RankingFunc_CrossGetUserRank(nUserId,nServerId)
	local nRank = 0
	
	for i,v in pairs(tRankingFunc_CrossCopyData["Info"]) do
		if (v["UserId"] == nUserId) and (v["ServerId"] == nServerId) then
			return i
		end
	end
	
	return nRank
end

--跨服排行榜写入数值
function RankingFunc_CrossSetInfo(nIndex,nScore,nOldUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId)
	-- 判断是否有配排行榜数据
	if not RankingFunc_CrossChkInfo(nIndex) then
		return
	end
	
	
	-- 判断活动时间
	if not RankingFunc_CrossChkActiveTime(nIndex) then
		return
	end

	if (nOldUserId == nil) or (nOldUserId == "") or (nOldServerId == nil) or (nOldServerId == "") then
		return
	end
	
	
	-- 复制一份排行榜数据
	tRankingFunc_CrossCopyData = {}
	tRankingFunc_CrossCopyData["RankMode"] = tRankingFunc_CrossInfo[nIndex]["RankMode"]
	tRankingFunc_CrossCopyData["Info"] = CommonFunc_Copy(tRankingFunc_CrossData[nIndex])
	
	-- 获取该玩家的名次
	local nRank = RankingFunc_CrossGetUserRank(nOldUserId,nOldServerId)
	local nRankNum = tRankingFunc_CrossInfo[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local bReset = false
	
	-- 表示已经在排行榜则判断是否需要更新排行榜数据
	if nRank ~= 0 then
		-- 检测是否需要更新排行榜数据
		if not RankingFunc_CrossChkUserRank(nRank,nScore,nOldUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId) then
			return
		end
		bReset = true
	else
		-- 不在排行榜里则插入数据进行排序
		nRank = RankingFunc_CrosssInsertNewData(nScore,nOldUserId,sInPutUserName,nOldServerId,nOldServerName,nNewInUserId)
		
		if nRank <= nRankNum then
			bReset = true
		end
	end
	
	-- 判断该玩家的名次，如在第一名则不需要排名
	if nRank ~= 1 and tRankingFunc_CrossCopyData["RankMode"] ~= 3 then
		-- 对排行榜数据重新排序
		if not RankingFunc_CrossSort(nRank) and not bReset then
			return
		end
		
		bReset = true
	elseif nRank ~= 1 and tRankingFunc_CrossCopyData["RankMode"] == 3 then
		-- 排序重置
		if not RankingFunc_CrossSort(nRank) then
			return
		end
		
		bReset = true
	end
	
	-- 重置排行榜数据
	if bReset then
		RankingFunc_CrossRestData(nIndex)
	end
end

function RankingFunc_SetInfo(nIndex,nScore,nNowUserId,sInPutUserName)
	-- 判断是否有配排行榜数据
	if not RankingFunc_ChkInfo(nIndex) then
		return
	end
	
	-- 判断活动时间
	if not RankingFunc_ChkActiveTime(nIndex) then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	-- 复制一份排行榜数据
	tRankingFunc_CopyData = {}
	tRankingFunc_CopyData["RankMode"] = tRankingFunc_Info[nIndex]["RankMode"]
	tRankingFunc_CopyData["Info"] = CommonFunc_Copy(tRankingFunc_Data[nIndex])
	
	-- 获取该玩家的名次
	local nRank = RankingFunc_GetUserRank(nUserId)
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	local bReset = false
	
	-- 表示已经在排行榜则判断是否需要更新排行榜数据
	if nRank ~= 0 then
		-- 检测是否需要更新排行榜数据
		if not RankingFunc_ChkUserRank(nRank,nScore,nUserId,sInPutUserName) then
			return
		end
		bReset = true
	else
		-- 不在排行榜里则插入数据进行排序
		nRank = RankingFunc_InsertNewData(nScore,nUserId,sInPutUserName)
		
		if nRank <= nRankNum then
			bReset = true
		end
	end
	
	-- 判断该玩家的名次，如在第一名则不需要排名
	if nRank ~= 1 and tRankingFunc_CopyData["RankMode"] ~= 3 then
		-- 对排行榜数据重新排序
		if not RankingFunc_Sort(nRank) and not bReset then
			return
		end
		
		bReset = true
	elseif nRank ~= 1 and tRankingFunc_CopyData["RankMode"] == 3 then
		-- 排序重置
		if not RankingFunc_Sort(nRank) then
			return
		end
		
		bReset = true
	end
	
	-- 重置排行榜数据
	if bReset then
		RankingFunc_RestData(nIndex)
	end
end

-- 领取排行榜奖励
function RankingFunc_RewardRank(nNpcId,nIndex,nNowUserId)
	-- 判断是否有配排行榜数据
	if not RankingFunc_ChkInfo(nIndex) then
		return false
	end
	
	-- 判断是否有在配置NPC处奖励
	local tReceive = tRankingFunc_Info[nIndex]["Receive"]
	
	if tReceive == nil or type(tReceive) ~= "table" then
		return false
	end
	
	-- 判断领取排行榜奖励的活动时间
	local sActiveTime = tReceive["ActiveTime"]
	if (sActiveTime ~= nil) and (not Sys_ChkFullTime(sActiveTime)) then
		RankingFunc_OpenNpcPrompt(nNpcId,nIndex,"ActiveTime")
		return false
	end
	
	-- 判断是否在排行榜奖励的领取时间
	if not RankingFunc_ChkDayTime(tReceive["RewardTime"]) then
		RankingFunc_OpenNpcPrompt(nNpcId,nIndex,"RewardTime")
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	local nRank = RankingFunc_ChkUserRewardRank(nIndex,nUserId)
	
	-- 判断是否在排行榜里
	if nRank <= 0 then
		RankingFunc_OpenNpcPrompt(nNpcId,nIndex,"NoRank")
		return false
	end
	
	local tRankData = RankingFunc_GetBeforeData(nIndex)
	local bReward = tRankData[nRank]["Reward"]
	
	-- 判断是否领取过奖励
	if bReward then
		RankingFunc_OpenNpcPrompt(nNpcId,nIndex,"HaveReward")
		return false
	end
	
	-- 获取该名次的奖励配置
	local tReward = RankingFunc_GetRankReward(nIndex,nRank)
	
	if tReward == nil then
		Sys_SaveAbnormalLog("排行榜里的奖励表为空，下标索引为：" .. nIndex .. "排名为：" .. nRank)
		return false
	end
	
	-- 上限以及背包判断
	if not TermsOfUse_Main(nNpcId,tReward,nUserId) then
		return
	end
	
	-- 设领取奖励值
	tRankData[nRank]["Reward"] = true
	local tGlobal = tRankingFunc_Info[nIndex]["BeforeGlobal"] or  tRankingFunc_Info[nIndex]["Global"]
	local nGlobalId,nPos = RankingFunc_GetPos(tGlobal,nRank)
	Sys_SetSynaGlobalDataStr(nGlobalId,nPos+1,"1")
	
	-- 领取奖励
	RewardTemplate_UseItemAndMsg(tReward,nUserId,true)
	-- 出提示
	RankingFunc_OpenNpcPrompt(nNpcId,nIndex,"Reward")
end

-- 获取上次的排名数据
function RankingFunc_GetBeforeData(nIndex)
	local tRankData = tRankingFunc_BeforeData[nIndex]
	if tRankingFunc_Info[nIndex]["Reset"] ~= nil then
		tRankData = tRankingFunc_Data[nIndex]
	end
	
	return tRankData
end

--获取跨服现在的排名数据
function RankingFunc_CrossGetNowData(nIndex)
	return tRankingFunc_CrossData[nIndex]
end

-- 获取现在的排名数据
function RankingFunc_GetNowData(nIndex)
	return tRankingFunc_Data[nIndex]
end

-- 检测玩家是否在排行榜里
function RankingFunc_GetUserInRank(nIndex,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	for i,v in pairs(tRankingFunc_Data[nIndex]) do
		if v["UserId"] == nUserId then
			return i
		end
	end
	
	return 0
end

-- 重新排序排行榜
function RankingFunc_RestSortRankingList(nIndex)
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	-- 复制一份排行榜数据
	tRankingFunc_CopyData = {}
	tRankingFunc_CopyData["RankMode"] = tRankingFunc_Info[nIndex]["RankMode"]
	tRankingFunc_CopyData["Info"] = CommonFunc_Copy(tRankingFunc_Data[nIndex])
	
	-- 排行榜重新排序
	for i = 1, nRankNum - 1 do
		for j = 1, nRankNum - i do
			if tRankingFunc_CopyData["Info"][j] == nil or tRankingFunc_CopyData["Info"][j + 1] == nil then
				break
			end
			if tRankingFunc_CopyData["Info"][j]["Score"] < tRankingFunc_CopyData["Info"][j + 1]["Score"] then
				tRankingFunc_CopyData["Info"][j], tRankingFunc_CopyData["Info"][j + 1] = tRankingFunc_CopyData["Info"][j + 1], tRankingFunc_CopyData["Info"][j]
			end
		end
	end
	-- 重置动态存储表的数据
	RankingFunc_RestData(nIndex)
end

-- 跨服重新排序
-- 重新排序排行榜
function RankingFunc_CrossRestSortRankingList(nIndex)
	local nRankNum = tRankingFunc_CrossInfo[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	-- 复制一份排行榜数据
	tRankingFunc_CrossCopyData = {}
	tRankingFunc_CrossCopyData["RankMode"] = tRankingFunc_CrossInfo[nIndex]["RankMode"]
	tRankingFunc_CrossCopyData["Info"] = CommonFunc_Copy(tRankingFunc_CrossData[nIndex])
	
	-- 排行榜重新排序
	for i = 1, nRankNum - 1 do
		for j = 1, nRankNum - i do
			if tRankingFunc_CrossCopyData["Info"][j] == nil or tRankingFunc_CrossCopyData["Info"][j + 1] == nil then
				break
			end
			if tRankingFunc_CrossCopyData["Info"][j]["Score"] < tRankingFunc_CrossCopyData["Info"][j + 1]["Score"] then
				tRankingFunc_CrossCopyData["Info"][j], tRankingFunc_CrossCopyData["Info"][j + 1] = tRankingFunc_CrossCopyData["Info"][j + 1], tRankingFunc_CrossCopyData["Info"][j]
			end
		end
	end
	-- 重置动态存储表的数据
	RankingFunc_CrossRestData(nIndex)
end


--跨服用于手动清除临时表
function  RankingFunc_CrossClearingData(nIndex)
	tRankingFunc_CrossData[nIndex] = {}
end

--用于手动清除临时表
function RankingFunc_ClearingData(nIndex)
	tRankingFunc_Data[nIndex] = {}
end

--手动将玩家移出排行榜
function RankingFunc_Remove(nIndex,nNowUserId)
	-- 判断是否有配排行榜数据
	if not RankingFunc_ChkInfo(nIndex) then
		return
	end
	
	-- 判断活动时间
	if not RankingFunc_ChkActiveTime(nIndex) then
		return
	end
	
	local nUserId = nNowUserId or Get_UserId()
	
	-- 复制一份排行榜数据
	tRankingFunc_CopyData = {}
	tRankingFunc_CopyData["RankMode"] = tRankingFunc_Info[nIndex]["RankMode"]
	tRankingFunc_CopyData["Info"] = CommonFunc_Copy(tRankingFunc_Data[nIndex])
	
	-- 获取该玩家的名次
	local nRank = RankingFunc_GetUserRank(nUserId)
	local nRankNum = tRankingFunc_Info[nIndex]["RankNum"] or tRankingFunc_Constant["Default"]
	
	--不在排行榜里
	if nRank == 0 then
		return
	end
	
	--将该玩家对应名次的信息移除，后面名次的信息补上来
	for i = nRank, nRankNum do
		if tRankingFunc_CopyData["Info"][i] == nil then
			break
		end
		
		if i ~= nRankNum and tRankingFunc_CopyData["Info"][i + 1] ~= nil then
			tRankingFunc_CopyData["Info"][i]["UserId"] = tRankingFunc_CopyData["Info"][i + 1]["UserId"]
			tRankingFunc_CopyData["Info"][i]["Score"] = tRankingFunc_CopyData["Info"][i + 1]["Score"]
			tRankingFunc_CopyData["Info"][i]["UserName"] = tRankingFunc_CopyData["Info"][i + 1]["UserName"]
			tRankingFunc_CopyData["Info"][i]["GuildId"] = tRankingFunc_CopyData["Info"][i + 1]["GuildId"]
			tRankingFunc_CopyData["Info"][i]["GuildName"] = tRankingFunc_CopyData["Info"][i + 1]["GuildName"]
		else
			tRankingFunc_CopyData["Info"][i]["UserId"] = 0
			tRankingFunc_CopyData["Info"][i]["Score"] = 0
			tRankingFunc_CopyData["Info"][i]["UserName"] = ""
			tRankingFunc_CopyData["Info"][i]["GuildId"] = 0
			tRankingFunc_CopyData["Info"][i]["GuildName"] = ""
		end
	end
	
	-- 重置排行榜数据
	RankingFunc_RestData(nIndex)
	
	--重新初始化数据
	RankingFunc_InitialData(nIndex)
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 服务器启动
tServerStart["tFunction"] = tServerStart["tFunction"] or {}
table.insert(tServerStart["tFunction"],RankingFunc_StartServer)

-- 时间自检
tSystem_Prompet_Func = tSystem_Prompet_Func or {}
table.insert(tSystem_Prompet_Func,RankingFunc_SelfTime)


