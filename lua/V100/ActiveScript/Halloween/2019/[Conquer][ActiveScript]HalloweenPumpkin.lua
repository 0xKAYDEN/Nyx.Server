------------------------------------------------------------------------------------
--Name:		190923[简体征服][活动脚本]全球万圣节活动-南瓜大作战(10.24-11.5)
--Creator: 	戴鑫海
--Created:	2019/09/23
------------------------------------------------------------------------------------
-- Npc 25010
--stc (206 22)首次接TOT任务 1已接 2首次完成
--	  (206 22)TOT任务 1已接 2完成 3已领奖
--	  (206 01)南瓜头养成值
--	  (205,60)领取过南瓜头发型
--	  (208,42)记录玩家到达哪一档
----------------------------------数据部分配置----------------------------------
local tHalloweenPumpkin_Data = {}
	tHalloweenPumpkin_Data["Web"] = "https://wtop.zf.99.com/wsjkh/en01/"
	tHalloweenPumpkin_Data["NpcId"] = 25010
	tHalloweenPumpkin_Data["Level"] = 80
	tHalloweenPumpkin_Data["Metempsychosis"] = 0
	tHalloweenPumpkin_Data["PosX"] = 339
	tHalloweenPumpkin_Data["PosY"] = 496
	tHalloweenPumpkin_Data["MapId"] = 1002
	tHalloweenPumpkin_Data["PosX2"] = 180
	tHalloweenPumpkin_Data["PosY2"] = 165
	tHalloweenPumpkin_Data["MapId2"] = 1036
	tHalloweenPumpkin_Data["NpcId"] = 25010
	tHalloweenPumpkin_Data["FoodId"] = 3313798
local tHalloweenPumpkin_stc = {}
	tHalloweenPumpkin_stc["Hair"] = {}
	tHalloweenPumpkin_stc["Hair"]["EventType"] = 205
	tHalloweenPumpkin_stc["Hair"]["DataType"] = 60
	
	tHalloweenPumpkin_stc["First"] = {}
	tHalloweenPumpkin_stc["First"]["EventType"] = 206
	tHalloweenPumpkin_stc["First"]["DataType"] = 22
	
	tHalloweenPumpkin_stc["Trick"] = {}
	tHalloweenPumpkin_stc["Trick"]["EventType"] = 206
	tHalloweenPumpkin_stc["Trick"]["DataType"] = 23
	
	tHalloweenPumpkin_stc["Point"] = {}
	tHalloweenPumpkin_stc["Point"]["EventType"] = 206
	tHalloweenPumpkin_stc["Point"]["DataType"] = 1
	
	tHalloweenPumpkin_stc["Rank"] = {}
	tHalloweenPumpkin_stc["Rank"]["EventType"] = 208
	tHalloweenPumpkin_stc["Rank"]["DataType"] = 42
	
	tHalloweenPumpkin_stc["UseFood"] = {}
	tHalloweenPumpkin_stc["UseFood"]["EventType"] = 208
	tHalloweenPumpkin_stc["UseFood"]["DataType"] = 82
local tHalloweenPumpkin_Cont = {}
	tHalloweenPumpkin_Cont["Effect"]="zf2-e128"
	
local tHalloweenPumpkin_RankHair = {}
	tHalloweenPumpkin_RankHair[0] = 78 --100
	tHalloweenPumpkin_RankHair[1] = 79 --150
	tHalloweenPumpkin_RankHair[2] = 81 --200
	tHalloweenPumpkin_RankHair[3] = 82 --250
	tHalloweenPumpkin_RankHair[4] = 83 --300
	tHalloweenPumpkin_RankHair[5] = 85 --350
	tHalloweenPumpkin_RankHair[6] = 86 --400
	tHalloweenPumpkin_RankHair[7] = 87 --450
	tHalloweenPumpkin_RankHair[8] = 88 --500
	tHalloweenPumpkin_RankHair[9] = 89 --550
	tHalloweenPumpkin_RankHair[10] = 90 --600
-----------------------------逻辑配置-----------------
function HalloweenPumpkin_OpenWeb()
	local nUserId = Get_UserId()
	User_SendWebDialog(tHalloweenPumpkin_Data["Web"],nUserId)
end
function HalloweenPumpkin_Receive()
	local nEventType = tHalloweenPumpkin_stc["First"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["First"]["DataType"]
	local nEventType2 = tHalloweenPumpkin_stc["Trick"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["Trick"]["DataType"]
--时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
		return
	end
--掩码判断
	if Task_ChkStcValue(nEventType2,nDataType2,">",1) then
		return
	end
--设置掩码
	if Task_ChkStcValue(nEventType2,nDataType2,"==",1) then
		Sys_MsgBox(tHalloweenPumpkin_Text["Receive"],nil,nil)
		return
	end
	if Task_SetStatistic(nEventType2,nDataType2,1,1) and Task_SetStatistic(nEventType,nDataType,1,1) then
		Task_SetStcTimestamp(nEventType2,nDataType2,0)
		Task_SetStcTimestamp(nEventType,nDataType,0)
		User_EffectAdd("self",tHalloweenPumpkin_Cont["Effect"])
		Sys_MsgBox(tHalloweenPumpkin_Text["Receive"],nil,nil)
	end
end

function HalloweenPumpkin_Reward(nNpcId)
	local nEventType = tHalloweenPumpkin_stc["First"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["First"]["DataType"]
	local nEventType2 = tHalloweenPumpkin_stc["Trick"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["Trick"]["DataType"]
--	local nSpace = RewardTemplate_GetRandomSpace(t,1)
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	--给奖接口
	if Task_ChkStcValue(nEventType2,nDataType2,"==",2) then
		if Task_SetStatistic(nEventType2,nDataType2,3,1) then
				Task_SetStcTimestamp(nEventType2,nDataType2,0)
				Task_SetStatistic(nEventType,nDataType,2,0)
				Task_SetStcTimestamp(nEventType,nDataType,0)
				HalloweenReward_MischiefReward()
				LinkNpcGossipFunc_New(nNpcId,"1-7")
		end
		return
	end
end

function HalloweenPumpkin_FindNPC(nNpcId)
--获取玩家和NPC的地图ID
	local nUserId = Get_UserId()
	local nNpcMap = Get_NpcMapID(nNpcId)
	local nNowMapId = Get_UserMapId(nUserId)

	if nNowMapId == nNpcMap then
		NpcPosition_PathFind(nNpcId)
	end
end

function HalloweenPumpkin_ReceiveNotFirst(nNpcId)
	local nEventType2 = tHalloweenPumpkin_stc["Trick"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["Trick"]["DataType"]
--时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
		return
	end
--掩码判断
	if Task_ChkStcValue(nEventType2,nDataType2,">",1) then
		return
	end
--设置掩码
	if Task_ChkStcValue(nEventType2,nDataType2,"==",1) then
		Sys_MsgBox(tHalloweenPumpkin_Text["Receive"],nil,nil)
		return
	end
	if Task_SetStatistic(nEventType2,nDataType2,1,1) then
		Task_SetStcTimestamp(nEventType2,nDataType2,0)
		User_EffectAdd("self",tHalloweenPumpkin_Cont["Effect"])
		LinkNpcGossipFunc_New(nNpcId,"1-8")
	end
end

function HalloweenPumpkin_OpenShop(nNpcId)
	if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) and not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActTime"]) then
		return
	end
	User_OpenExchangeShop(nNpcId)
end

function HalloweenPumpkin_Talk()
	Sys_MsgBox(tHalloweenPumpkin_Text["Receive"],nil,nil)
end

function HalloweenPumpkin_DailyClean()
	local nEventType2 = tHalloweenPumpkin_stc["Trick"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["Trick"]["DataType"]
	if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
		return
	end
	if Task_StcInterval(nEventType2,nDataType2,1,4) then
		Task_SetStatistic(nEventType2,nDataType2,0,1)
		Task_SetStcTimestamp(nEventType2,nDataType2,0)
	end
end

function HalloweenPumpkin_RankBoard(nNpcId)
--时间与等级判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) or not User_JudgeLevelAndMetempsychosis(tHalloweenPumpkin_Data["Level"],tHalloweenPumpkin_Data["Metempsychosis"]) then
		return
	end
	local nEventType = tHalloweenPumpkin_stc["Point"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["Point"]["DataType"]
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nData0 = Get_UserStatisticValue(nEventType,nDataType,nUserId)

	--刷新排行榜
	RankingFunc_SetInfo(25010,nData0,nUserId,sUserName)

	-- 取排行榜数据显示
	local tRankData = RankingFunc_GetNowData(25010)
	local sName = ""
	local sScore = ""

	for i=1,10 do
		local j = i + 3
		if tRankData[i] ~= nil and tonumber(tRankData[i]["UserId"]) > 0 and tRankData[i]["Score"] > 0 then
			sScore = tostring(tRankData[i]["Score"])
			sName = tRankData[i]["UserName"]
		else
			sScore = tHalloweenPumpkin_Text["Dialog"]["Score"]
			sName = tHalloweenPumpkin_Text["Dialog"]["Name"]
		end
		tNpcGossip[25010]["Text22" .. j] = Sys_Alignment(tHalloweenPumpkin_Text[25010]["Text22" .. j], 0, tostring(sScore), 22, tostring(sName), 45) .. "\n"
	end
	return true
end
function HalloweenPumpkin_Broadcast(nRank)
	local nGlobalId = 53814
	local nNum = nRank % 3
	local nPos = 0
	
	if nRank >= 4 and nRank <= 6 then 
		 nGlobalId = 53815
	end
	if nRank >= 7 and nRank <= 9 then 
		nGlobalId = 53816
	end
	if nRank >= 10 then 
		nGlobalId = 53817
	end
	if nNum == 2 then
		nPos = 2
	end
	if nNum ==  0 then 
		nPos = 4 
	end
	local sName = Get_SysDynaGlobalDataStr(nGlobalId,nPos)
	Sys_SystemBroadcast(string.format(tHalloweenPumpkin_Text["Broadcast"][nRank],sName))
end
function HalloweenPumpkin_Hair(nRank)
	local nUserId = Get_UserId()
	User_NotifyChgHairstyle(tHalloweenPumpkin_RankHair[nRank],1440,nUserId)
end

function HalloweenPumpkin_HairChange()
	local nUserId = Get_UserId()
	local nEventType = tHalloweenPumpkin_stc["Point"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["Point"]["DataType"]
	local nPoint = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	local sUserName = Get_UserName(nUserId)
	local nEventType2 = tHalloweenPumpkin_stc["Rank"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["Rank"]["DataType"]
	local nItemId = tHalloweenPumpkin_Data["FoodId"]
	if nPoint >= 500 and nPoint < 1000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",1) then
			Task_SetStatistic(nEventType2,nDataType2,1,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			-- User_NotifyChgHairstyle(79,0,nUserId)
			-- Sys_SystemBroadcast(string.format(tHalloweenPumpkin_Text["Broadcast"]["HairChange"], sUserName))
		end
		return
	end
	if nPoint >= 1000 and nPoint < 2000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",2) then
			Task_SetStatistic(nEventType2,nDataType2,2,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			-- User_NotifyChgHairstyle(81,0,nUserId)
			-- Sys_SystemBroadcast(string.format(tHalloweenPumpkin_Text["Broadcast"]["HairChange"], sUserName))
		end
		return
	end
	if nPoint >= 2000 and nPoint < 3000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",3) then
			Task_SetStatistic(nEventType2,nDataType2,3,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			-- User_NotifyChgHairstyle(82,0,nUserId)
			-- Sys_SystemBroadcast(string.format(tHalloweenPumpkin_Text["Broadcast"]["HairChange"], sUserName))
		end
		return
	end
	if nPoint >= 3000 and nPoint < 5000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",4) then
			Task_SetStatistic(nEventType2,nDataType2,4,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
			-- User_NotifyChgHairstyle(83,0,nUserId)
			-- Sys_SystemBroadcast(string.format(tHalloweenPumpkin_Text["Broadcast"]["HairChange"], sUserName))
		end
		return
	end
	if nPoint >= 5000 and nPoint < 10000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",5) then
			Task_SetStatistic(nEventType2,nDataType2,5,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
		end
		return
	end
	if nPoint >= 10000 and nPoint < 50000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",6) then
			Task_SetStatistic(nEventType2,nDataType2,6,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
		end
		return
	end
	if nPoint >= 50000 and nPoint < 100000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",8) then
			Task_SetStatistic(nEventType2,nDataType2,8,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
		end
		return
	end
	if nPoint >= 100000 then
		if Task_ChkStcValue(nEventType2,nDataType2,"<",10) then
			Task_SetStatistic(nEventType2,nDataType2,10,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
		end
		return
	end
	Task_SetStatistic(nEventType2,nDataType2,0,1)
	Task_SetStcTimestamp(nEventType2,nDataType2,0)
	-- User_NotifyChgHairstyle(78,0,nUserId)
end
function HalloweenPumpkin_HairChangeNew(nItemNum)
	local nUserId = Get_UserId()
	local nPercent1 = nItemNum * 300
	local nPercent2 = nItemNum * 100
	local nPercent3 = nItemNum * 10
	local nNum = math.random(0,10000)
	local nEventType = tHalloweenPumpkin_stc["Rank"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["Rank"]["DataType"]
	local nEventType2 = tHalloweenPumpkin_stc["UseFood"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["UseFood"]["DataType"]
	local nRank = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	if Task_ChkStcValue(nEventType2,nDataType2,"==",0) then
		Task_SetStatistic(nEventType2,nDataType2,1,1)
		Task_SetStcTimestamp(nEventType2,nDataType2,0)
		User_NotifyChgHairstyle(90,10,nUserId)
		Sys_MsgBox(tHalloweenPumpkin_Text["Msg"][3],nil,nil)
		return
	end
	if nRank >= 10 then
		return
	end
	--User_TalkChannel2005("随机到"..nNum)
	if nNum <= nPercent3 then
		User_NotifyChgHairstyle(90,10,nUserId)
		Sys_MsgBox(tHalloweenPumpkin_Text["Msg"][3],nil,nil)
		return
	end
	if nNum <= nPercent2 then
		User_NotifyChgHairstyle(tHalloweenPumpkin_RankHair[nRank+2],30,nUserId)
		--User_NotifyChgHairstyle(83,30,nUserId)
		Sys_MsgBox(tHalloweenPumpkin_Text["Msg"][2][nRank],nil,nil)
		return
	end
	if nNum <= nPercent1 then
		User_NotifyChgHairstyle(tHalloweenPumpkin_RankHair[nRank+1],30,nUserId)
		--User_NotifyChgHairstyle(82,30,nUserId)
		Sys_MsgBox(tHalloweenPumpkin_Text["Msg"][1][nRank],nil,nil)
		return
	end
end

function HalloweenPumpkin_GotoFindBox()
	if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
		return
	end
	local nPosX = tHalloweenPumpkin_Data["PosX"]
	local nPosY = tHalloweenPumpkin_Data["PosY"]
	local nMapId = tHalloweenPumpkin_Data["MapId"]
	local nPosX2 = tHalloweenPumpkin_Data["PosX2"]
	local nPosY2 = tHalloweenPumpkin_Data["PosY2"]
	local nMapId2 = tHalloweenPumpkin_Data["MapId2"]
	local nNpcId = tHalloweenPumpkin_Data["NpcId"]
	if SpecialServer_ChkNoGiftServer() then
		Sys_GotoSomeWhere(nPosX2, nPosY2, nMapId2, nNpcId)
		return
	end
	Sys_GotoSomeWhere(nPosX, nPosY, nMapId, nNpcId)
end
function HalloweenPumpkin_ReSetRankBoard(nIndex)
	local nUserId = Get_UserId()
	local sUserName = Get_UserName(nUserId)
	local nEventType = tHalloweenPumpkin_stc["Point"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["Point"]["DataType"]
	local nData0 = Get_UserStatisticValue(nEventType,nDataType,nUserId)

	--刷新排行榜
	RankingFunc_SetInfo(nIndex,nData0,nUserId,sUserName)
end
----------------------------------模块部分配置----------------------------------
--NPC 25010
tNpcFace[2102] = 195
tNpcGossip[25010] = tNpcGossip[25010] or DefaultNpc:new{}
tNpcGossip[25010]["OptionHidden"] = 1
tNpcGossip[25010]["DialogueText"] = tHalloweenPumpkin_Text[25010]

tNpcGossip[25010]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[25010]["tOption1-1"] = {1}
tNpcGossip[25010]["ChkFunc1-1"] = function()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"])
end

tNpcGossip[25010]["Text1-2"] = {111,112,121,122}
tNpcGossip[25010]["tOption1-2"] = {2}
tNpcGossip[25010]["ChkFunc1-2"] = function()
	return CommonFunc_GetAfterActivityTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) and not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActTime"])
end


tNpcGossip[25010]["Text1-3"] = {111,112,131,132,133,135}
tNpcGossip[25010]["tOption1-3"] = {3}
tNpcGossip[25010]["ChkFunc1-3"] = function()
	local nEventType = tHalloweenPumpkin_stc["Hair"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["Hair"]["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,">",0) then
		return false
	end
	return true
end

tNpcGossip[25010]["Text1-4"] = {111,112,141,142,143,144,145,146}
tNpcGossip[25010]["tOption1-4"] = {4}
tNpcGossip[25010]["ChkFunc1-4"] = function()
	return not User_JudgeLevelAndMetempsychosis(tHalloweenPumpkin_Data["Level"],tHalloweenPumpkin_Data["Metempsychosis"])
end 

tNpcGossip[25010]["Text1-5"] = {111,112,151,152,153,154,155,156,153}
tNpcGossip[25010]["tOption1-5"] = {5,52,6,61}
tNpcGossip[25010]["ChkFunc1-5"] = function()
	local nEventType = tHalloweenPumpkin_stc["First"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["First"]["DataType"]
	local nEventType2 = tHalloweenPumpkin_stc["Trick"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["Trick"]["DataType"]
	if Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
	if Task_ChkStcValue(nEventType,nDataType,"<=",1) then
		if Task_StcInterval(nEventType2,nDataType2,1,4) then
			Task_SetStatistic(nEventType2,nDataType2,0,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
		end
		if Task_ChkStcValue(nEventType2,nDataType2,"<",1) then
			tNpcGossip[25010]["tOption1-5"] = {5}
		end
		if Task_ChkStcValue(nEventType2,nDataType2,"==",1) then
			tNpcGossip[25010]["tOption1-5"] = {52}
		end
		if Task_ChkStcValue(nEventType2,nDataType2,"==",2) then
			tNpcGossip[25010]["tOption1-5"] = {6}
		end
		if Task_ChkStcValue(nEventType2,nDataType2,">=",3) then
			tNpcGossip[25010]["tOption1-5"] = {61}
		end
		return true
	end
	end
	return false
end

tNpcGossip[25010]["Text1-6"] = {111,112,161,162,163,164,168,165,166}
tNpcGossip[25010]["tOption1-6"] = {51,511,6,7,8,12,16}
tNpcGossip[25010]["ChkFunc1-6"] = function()
	local nUserId = Get_UserId()
	local nEventType2 = tHalloweenPumpkin_stc["Trick"]["EventType"]
	local nDataType2 = tHalloweenPumpkin_stc["Trick"]["DataType"]
	local nEventType = tHalloweenPumpkin_stc["Point"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["Point"]["DataType"]
	local nPoint = Get_UserStatisticValue(nEventType,nDataType,nUserId)
	if Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
		tNpcGossip[25010]["Text167"] = string.format(tHalloweenPumpkin_Text[25010]["Text167"],nPoint)
		if Task_StcInterval(nEventType2,nDataType2,1,4) then
			Task_SetStatistic(nEventType2,nDataType2,0,1)
			Task_SetStcTimestamp(nEventType2,nDataType2,0)
		end
		if Task_ChkStcValue(nEventType2,nDataType2,"<",1) then
			tNpcGossip[25010]["tOption1-6"] = {51,7,12,8}
		end
		if Task_ChkStcValue(nEventType2,nDataType2,"==",1) then
			tNpcGossip[25010]["tOption1-6"] = {511,7,12,8}
		end
		if Task_ChkStcValue(nEventType2,nDataType2,"==",2) then
			tNpcGossip[25010]["tOption1-6"] = {6,7,12,8}
		end
		if Task_ChkStcValue(nEventType2,nDataType2,">=",3) then
			tNpcGossip[25010]["tOption1-6"] = {16,7,12,8}
		end
		return true
	end
	return false
end
tNpcGossip[25010]["OptionPoint12"] = "2-2"
tNpcGossip[25010]["OptionPoint16"] = "2-4"
tNpcGossip[25010]["Text1-7"] = {1511}
tNpcGossip[25010]["tOption1-7"] = {10}
tNpcGossip[25010]["ChkFunc1-7"] = function()
	return Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"])
end
tNpcGossip[25010]["Text1-8"] = {1611}
tNpcGossip[25010]["tOption1-8"] = {11}
tNpcGossip[25010]["ChkFunc1-8"] = function()
	return Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"])
end
tNpcGossip[25010]["Text2-1"] = {211}
tNpcGossip[25010]["tOption2-1"] = {9}
tNpcGossip[25010]["ChkFunc2-1"] = function()
	return Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"])
end
tNpcGossip[25010]["Text2-2"] = {221,222,223,224,225,226,227,228,229,2210,2211,2212,2213,222,2214}
tNpcGossip[25010]["tOption2-2"] = {13,8}
tNpcGossip[25010]["ChkFunc2-2"] = function()
if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
	return false
end
	return HalloweenPumpkin_RankBoard(nNpcId)
end
tNpcGossip[25010]["OptionPoint13"] = "2-3"

tNpcGossip[25010]["Text2-3"] = {231,222,232,233,234,235,236,222}
tNpcGossip[25010]["tOption2-3"] = {14}
tNpcGossip[25010]["ChkFunc2-3"] = function()
	return Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"])
end
tNpcGossip[25010]["Text2-4"] = {241,242,222,243,244,245,246,247,248,249,2411,2412,222,167,2413}
tNpcGossip[25010]["tOption2-4"] = {15,17}
tNpcGossip[25010]["ChkFunc2-4"] = function()
	return Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"])
end
tNpcGossip[25010]["OptionPoint17"] = "1-6"
tNpcGossip[25010]["OptionPoint15"] = "2-5"

tNpcGossip[25010]["Text2-5"] = {251}
tNpcGossip[25010]["tOption2-5"] = {151,152,153,154,155,156,157,158,159}
tNpcGossip[25010]["ChkFunc2-5"] = function()
	local nEventType = tHalloweenPumpkin_stc["Rank"]["EventType"]
	local nDataType = tHalloweenPumpkin_stc["Rank"]["DataType"]
if not Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActivityTime"]) then
	return false
end
	if Task_ChkStcValue(nEventType,nDataType,"==",10) then
		tNpcGossip[25010]["tOption2-5"] = {151,152,153,154,155,156,157,158,159}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",8) then
		tNpcGossip[25010]["tOption2-5"] = {151,152,153,154,155,156,157,158}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",6) then
		tNpcGossip[25010]["tOption2-5"] = {151,152,153,154,155,156,157}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",5) then
		tNpcGossip[25010]["tOption2-5"] = {151,152,153,154,155,156}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",4) then
		tNpcGossip[25010]["tOption2-5"] = {151,152,153,154,155}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",3) then
		tNpcGossip[25010]["tOption2-5"] = {151,152,153,154}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",2) then
		tNpcGossip[25010]["tOption2-5"] = {151,152,153}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",1) then
		tNpcGossip[25010]["tOption2-5"] = {151,152}
		return true
	end
	if Task_ChkStcValue(nEventType,nDataType,"==",0) then
		tNpcGossip[25010]["tOption2-5"] = {151}
		return true
	end
	
end
tNpcGossip[25010]["Text1-9"] = {111,112,161,162,163,164,168,165,166}
tNpcGossip[25010]["tOption1-9"] = {7}
tNpcGossip[25010]["ChkFunc1-9"] = function()
	return Sys_ChkFullTime(tActivityTime["HalloweenPumpkin"]["ActTime"])
end

tNpcGossip[25010]["OptionFunc3"] = "HalloweenPumpkin_FindNPC</N>24993"
tNpcGossip[25010]["OptionFunc5"] = "HalloweenPumpkin_Receive"
tNpcGossip[25010]["OptionFunc52"] = "HalloweenPumpkin_Receive"
tNpcGossip[25010]["OptionFunc6"] = "HalloweenPumpkin_Reward</N>25010"
tNpcGossip[25010]["OptionFunc51"] = "HalloweenPumpkin_ReceiveNotFirst</N>25010"
tNpcGossip[25010]["OptionFunc511"] = "HalloweenPumpkin_ReceiveNotFirst</N>25010"
tNpcGossip[25010]["OptionFunc7"] = "HalloweenPumpkin_OpenShop</N>25010"
tNpcGossip[25010]["OptionFunc8"] = "HalloweenPumpkin_OpenWeb"
tNpcGossip[25010]["OptionFunc11"] = "HalloweenPumpkin_Talk"
tNpcGossip[25010]["OptionFunc151"] = "HalloweenPumpkin_Hair</N>0"
tNpcGossip[25010]["OptionFunc152"] = "HalloweenPumpkin_Hair</N>1"
tNpcGossip[25010]["OptionFunc153"] = "HalloweenPumpkin_Hair</N>2"
tNpcGossip[25010]["OptionFunc154"] = "HalloweenPumpkin_Hair</N>3"
tNpcGossip[25010]["OptionFunc155"] = "HalloweenPumpkin_Hair</N>4"
tNpcGossip[25010]["OptionFunc156"] = "HalloweenPumpkin_Hair</N>5"
tNpcGossip[25010]["OptionFunc157"] = "HalloweenPumpkin_Hair</N>6"
tNpcGossip[25010]["OptionFunc158"] = "HalloweenPumpkin_Hair</N>8"
tNpcGossip[25010]["OptionFunc159"] = "HalloweenPumpkin_Hair</N>10"
tItem[3326778] = tItem[3326778] or {}
tItem[3326778]["Function"] = function(nItemId,sItemName)
	Sys_MsgBox(tHalloweenPumpkin_Text["Msg"][nItemId])
end
tItem[3326779] = tItem[3326778] or {}
---------------------------------------------排行榜模块---------------------------------------------
	tRankingFunc_Info[25010] = {}
	tRankingFunc_Info[25010]["ActiveTime"] = tActivityTime["HalloweenPumpkin"]["ActivityTime"]
	tRankingFunc_Info[25010]["DayTime"] = {}
	tRankingFunc_Info[25010]["DayTime"][1] = "00:00 23:59"
	tRankingFunc_Info[25010]["Reset"] = 1
	tRankingFunc_Info[25010]["Global"] = {53814,53815,53816,53817}
	tRankingFunc_Info[25010]["RankNum"] = 10

	tRankingFunc_Info[25010]["Mail"] = {}
	tRankingFunc_Info[25010]["Mail"]["ActiveTime"] = tActivityTime["HalloweenPumpkin"]["MailTime"]
	tRankingFunc_Info[25010]["Mail"]["RewardTime"] = {}
	tRankingFunc_Info[25010]["Mail"]["RewardTime"][1] = "00:00 00:05"
	tRankingFunc_Info[25010]["Mail"]["Reward"] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][1] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][1]["RewardRank"] = 1
	tRankingFunc_Info[25010]["Mail"]["Reward"][1]["ActionId"] = 574923
	tRankingFunc_Info[25010]["Mail"]["Reward"][1]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][1]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][1]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][1]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][2] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][2]["RewardRank"] = 2
	tRankingFunc_Info[25010]["Mail"]["Reward"][2]["ActionId"] = 574924
	tRankingFunc_Info[25010]["Mail"]["Reward"][2]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][2]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][2]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][2]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][3] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][3]["RewardRank"] = 3
	tRankingFunc_Info[25010]["Mail"]["Reward"][3]["ActionId"] = 574925
	tRankingFunc_Info[25010]["Mail"]["Reward"][3]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][3]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][3]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][3]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][4] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][4]["RewardRank"] = 4
	tRankingFunc_Info[25010]["Mail"]["Reward"][4]["ActionId"] = 574926
	tRankingFunc_Info[25010]["Mail"]["Reward"][4]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][4]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][4]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][4]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][5] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][5]["RewardRank"] = 5
	tRankingFunc_Info[25010]["Mail"]["Reward"][5]["ActionId"] = 574927
	tRankingFunc_Info[25010]["Mail"]["Reward"][5]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][5]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][5]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][5]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][6] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][6]["RewardRank"] = 6
	tRankingFunc_Info[25010]["Mail"]["Reward"][6]["ActionId"] = 574928
	tRankingFunc_Info[25010]["Mail"]["Reward"][6]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][6]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][6]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][6]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][7] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][7]["RewardRank"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][7]["ActionId"] = 574929
	tRankingFunc_Info[25010]["Mail"]["Reward"][7]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][7]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][7]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][7]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][8] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][8]["RewardRank"] = 8
	tRankingFunc_Info[25010]["Mail"]["Reward"][8]["ActionId"] = 574930
	tRankingFunc_Info[25010]["Mail"]["Reward"][8]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][8]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][8]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][8]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][9] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][9]["RewardRank"] = 9
	tRankingFunc_Info[25010]["Mail"]["Reward"][9]["ActionId"] = 574931
	tRankingFunc_Info[25010]["Mail"]["Reward"][9]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][9]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][9]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][9]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][10] = {}
	tRankingFunc_Info[25010]["Mail"]["Reward"][10]["RewardRank"] = 10
	tRankingFunc_Info[25010]["Mail"]["Reward"][10]["ActionId"] = 574932
	tRankingFunc_Info[25010]["Mail"]["Reward"][10]["ExistDay"] = 7
	tRankingFunc_Info[25010]["Mail"]["Reward"][10]["Title"] = tHalloweenPumpkin_Text["Mail"]["Title"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][10]["Sender"] = tHalloweenPumpkin_Text["Mail"]["Sender"]
	tRankingFunc_Info[25010]["Mail"]["Reward"][10]["Content"] = tHalloweenPumpkin_Text["Mail"]["Content"]
-------------上线判断
table.insert(tSystem_PlayLogin_Func,HalloweenPumpkin_DailyClean)