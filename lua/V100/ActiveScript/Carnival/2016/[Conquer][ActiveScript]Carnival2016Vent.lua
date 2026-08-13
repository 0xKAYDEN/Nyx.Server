------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]2016狂欢节之出气筒（3.13-3.23）
--Creator:		张世超
--Created:		2016/12/22
------------------------------------------------------------------------------------
--前缀 Carnival2016_Vent


---------------------------------table定义--------------------------------------
local tCarnival2016_Vent_Data = {}
--活动时间
	tCarnival2016_Vent_Data["Time"] = {}
	tCarnival2016_Vent_Data["Time"]["Before"] = "2015-03-01 00:00 2017-03-01 23:59"
	tCarnival2016_Vent_Data["Time"]["During"] = "2017-03-02 00:00 2017-03-08 23:59"

	
--等级限制
	tCarnival2016_Vent_Data["Level"] = 80
	tCarnival2016_Vent_Data["Metempsychosis"] = 0

--背包检查
	tCarnival2016_Vent_Data["Space"] = 1
	
--光效
	tCarnival2016_Vent_Data["Effect"] = "eidolon"

--相关数据
	tCarnival2016_Vent_Data["CarnivalMap"] = 9927
	tCarnival2016_Vent_Data["Lead"] = {}
	tCarnival2016_Vent_Data["Lead"][1]= {198,138}
	tCarnival2016_Vent_Data["Lead"][2]= {135,190}
	tCarnival2016_Vent_Data["Lead"][3]= {258,200}
	tCarnival2016_Vent_Data["Lead"][4]= {197,253}
	tCarnival2016_Vent_Data["TwinsCity"] = {1002,282,360}
	tCarnival2016_Vent_Data["Transfer"] = {9927,222,202}

	--倒计时（秒）
	tCarnival2016_Vent_Data["nTimeDelay"] = 60

--log
	local tCarnival2016_Vent_Log = {}
	tCarnival2016_Vent_Log["Festival"] = 3373
	tCarnival2016_Vent_Log["Id"] = 10001514
	tCarnival2016_Vent_Log["Join"] = "0,0,0,0,10001514,2,1,0"
	tCarnival2016_Vent_Log["Award"] = "0,0,0,0,10001514,2,2,0"
	
--掩码
local tCarnival2016_Vent_Stc = {}

--#stc(111,65) = 10 已出气，可领奖 ; =20 已领奖
	tCarnival2016_Vent_Stc["EventType"] = 111
	tCarnival2016_Vent_Stc["DataType"] = 65
	tCarnival2016_Vent_Stc["Complete"] = 10
	tCarnival2016_Vent_Stc["Awarded"] = 20
	


---------------------------------逻辑定义--------------------------------------
--寻路
function Carnival2016_Vent_Lead(nNo)
	local nMapId = tCarnival2016_Vent_Data["CarnivalMap"]
	local nPosX = tCarnival2016_Vent_Data["Lead"][nNo][1]
	local nPosY = tCarnival2016_Vent_Data["Lead"][nNo][2]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

--回城
function Carnival2016_Vent_TwinsCity()
	local nMapId = tCarnival2016_Vent_Data["TwinsCity"][1]
	local nBoundX =  tCarnival2016_Vent_Data["TwinsCity"][2]
	local nBoundY =  tCarnival2016_Vent_Data["TwinsCity"][3]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)

end

--进入活动地图
function Carnival2016_Vent_Transfer()
	local nMapId = tCarnival2016_Vent_Data["Transfer"][1]
	local nBoundX =  tCarnival2016_Vent_Data["Transfer"][2]
	local nBoundY =  tCarnival2016_Vent_Data["Transfer"][3]
	if Get_UserMapId() ~= Get_NpcMapID() then
		User_TalkChannel2005(tTransferFail_Text["MsgTip"])
		return
	end
	
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,5,5)
end

--时间到
-- function Carnival2016_Vent_TimeOut()
	-- local nUserMapId = Get_UserMapId(nUserId)
	-- if nUserMapId == tCarnival2016_Vent_Data["CarnivalMap"]  then	
		-- local Str = Carnival2016_Vent_Text["TimeOut"] 
		-- Carnival2016_Vent_TwinsCity()
		-- Sys_MsgBox(Str)
	-- end
-- end

function Carnival2016_Vent_StcReset(nEvent,nType)
	if not Task_ChkStatistic(nEvent,nType)  then
		Task_SetStatistic(nEvent,nType,0,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
	end
	
	if  Task_StcInterval(nEvent,nType,1,4)  then 
		Task_SetStatistic(nEvent,nType,0,1) 
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end

--我要出气！
function Carnival2016_Vent_Join(nNpcId)
	if not Sys_ChkFullTime(tCarnival2016_Vent_Data["Time"]["During"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	if not User_JudgeLevelAndMetempsychosis(tCarnival2016_Vent_Data["Level"],tCarnival2016_Vent_Data["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	--隔天清掩码
	local nEvent = tCarnival2016_Vent_Stc["EventType"]
	local nType =tCarnival2016_Vent_Stc["DataType"]
	--隔天清掩码
	Carnival2016_Vent_StcReset(nEvent,nType)
	--记录当天首次参与LOG
	if 0 == Get_UserStatisticValue(nEvent,nType) then
		local sLog = tCarnival2016_Vent_Log["Join"]
		Sys_SaveActionLog(sLog)
	end
	
	local nTimeDelay = tCarnival2016_Vent_Data["nTimeDelay"]
	local Str = Carnival2016_Vent_Text["Join"] 
	-- User_SetTimer(nTimeDelay,"Carnival2016_Vent_TimeOut",1)
	Carnival2016_Vent_Transfer()
	Sys_MsgBox(Str)
end

--我要领取奖励
function Carnival2016_Vent_Award(nNpcId)
	if not Sys_ChkFullTime(tCarnival2016_Vent_Data["Time"]["During"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nEvent = tCarnival2016_Vent_Stc["EventType"]
	local nType =tCarnival2016_Vent_Stc["DataType"]
	Carnival2016_Vent_StcReset(nEvent,nType)
	local nValues = Get_UserStatisticValue(nEvent,nType)
	
	if nValues >= tCarnival2016_Vent_Stc["Awarded"] then
		--已领取
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	elseif nValues >= tCarnival2016_Vent_Stc["Complete"] then
		if not User_CheckLeftSpace(tCarnival2016_Vent_Data["Space"]) then
			LinkNpcGossipFunc_New(nNpcId,"3-3")
			return
		end
		--获得奖励
		Task_SetStatistic(nEvent,nType,tCarnival2016_Vent_Stc["Awarded"] ,1) 
		Task_SetStcTimestamp(nEvent,nType,0) 
		
		local sLog = tCarnival2016_Vent_Log["Award"]
		local nFestivalId = tCarnival2016_Vent_Log["Festival"]
		local nLogId = tCarnival2016_Vent_Log["Id"]
		local Str = Carnival2016_Vent_Text["Award"]
		
		FestivalGeneralPackage_GetGift(nFestivalId,nLogId)
		Sys_SaveActionLog(sLog)
		User_EffectAdd("self",tCarnival2016_Vent_Data["Effect"])
		Sys_MsgBox(Str)

	else
		--未出气
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
end

--怪物函数
function Carnival2016_Vent_Monster(nMonsterId)
	-- 判断是否在活动时间内
	if not Sys_ChkFullTime(tCarnival2016_Vent_Data["Time"]["During"]) then
		return
	end
	local nEvent = tCarnival2016_Vent_Stc["EventType"]
	local nType =tCarnival2016_Vent_Stc["DataType"]
	Carnival2016_Vent_StcReset(nEvent,nType)
	

	local nValues = Get_UserStatisticValue(nEvent,nType)
	local Str = string.format(Carnival2016_Vent_Text["Monster"],Carnival2016_Vent_Text["MonsterName"][nMonsterId] )
	if nValues >= tCarnival2016_Vent_Stc["Complete"] then
		User_TalkChannel2005(Str)
	else
		Task_SetStatistic(nEvent,nType,tCarnival2016_Vent_Stc["Complete"] ,1) 
		Task_SetStcTimestamp(nEvent,nType,0) 	
		Sys_MsgBox(Str)
	end	
end


-----------------------------------Npc模板--------------------------------------
tNpcFace[2223] = 0
tNpcGossip[15388] = tNpcGossip[15388] or DefaultNpc:new{}
tNpcGossip[15388]["OptionHidden"] = 1

--出气广场路标
tNpcGossip[15388]["Text1-1"] = {111}
tNpcGossip[15388]["tOption1-1"] = {1,2,3,4,5,6}
tNpcGossip[15388]["Text111"] = Carnival2016_Vent_Text[15388]["Text111"]
tNpcGossip[15388]["Option1"] = Carnival2016_Vent_Text[15388]["Option1"]
tNpcGossip[15388]["Option2"] = Carnival2016_Vent_Text[15388]["Option2"]
tNpcGossip[15388]["Option3"] = Carnival2016_Vent_Text[15388]["Option3"]
tNpcGossip[15388]["Option4"] = Carnival2016_Vent_Text[15388]["Option4"]
tNpcGossip[15388]["Option5"] = Carnival2016_Vent_Text[15388]["Option5"]
tNpcGossip[15388]["Option6"] = Carnival2016_Vent_Text[15388]["Option6"]
tNpcGossip[15388]["OptionFunc1"] = "Carnival2016_Vent_Lead</N>1"
tNpcGossip[15388]["OptionFunc2"] = "Carnival2016_Vent_Lead</N>2"
tNpcGossip[15388]["OptionFunc3"] = "Carnival2016_Vent_Lead</N>3"
tNpcGossip[15388]["OptionFunc4"] = "Carnival2016_Vent_Lead</N>4"
tNpcGossip[15388]["OptionFunc5"] = "Carnival2016_Vent_TwinsCity"


tNpcFace[2221] = 84
tNpcGossip[15386] = tNpcGossip[15386] or DefaultNpc:new{}
tNpcGossip[15386]["OptionHidden"] = 1

--活动前
tNpcGossip[15386]["Text1-1"] = {111,112,113}
tNpcGossip[15386]["tOption1-1"] = {1}
tNpcGossip[15386]["Text111"] = Carnival2016_Vent_Text[15386]["Text111"]
tNpcGossip[15386]["Text112"] = Carnival2016_Vent_Text[15386]["Text112"]
tNpcGossip[15386]["Text113"] = Carnival2016_Vent_Text[15386]["Text113"]
tNpcGossip[15386]["Option1"] = Carnival2016_Vent_Text[15386]["Option1"]
tNpcGossip[15386]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCarnival2016_Vent_Data["Time"]["Before"])
end

--活动后对白
tNpcGossip[15386]["Text1-2"] = {121}
tNpcGossip[15386]["tOption1-2"] = {2}
tNpcGossip[15386]["Text121"] = Carnival2016_Vent_Text[15386]["Text121"]
tNpcGossip[15386]["Option2"] = Carnival2016_Vent_Text[15386]["Option2"]
tNpcGossip[15386]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tCarnival2016_Vent_Data["Time"]["During"])
end

--活动中
tNpcGossip[15386]["Text1-3"] = {131,132,133}
tNpcGossip[15386]["tOption1-3"] = {3,4,5,6}
tNpcGossip[15386]["Text131"] = Carnival2016_Vent_Text[15386]["Text131"]
tNpcGossip[15386]["Text132"] = Carnival2016_Vent_Text[15386]["Text132"]
tNpcGossip[15386]["Text133"] = Carnival2016_Vent_Text[15386]["Text133"]
tNpcGossip[15386]["Option3"] = Carnival2016_Vent_Text[15386]["Option3"]
tNpcGossip[15386]["Option4"] = Carnival2016_Vent_Text[15386]["Option4"]
tNpcGossip[15386]["Option5"] = Carnival2016_Vent_Text[15386]["Option5"]
tNpcGossip[15386]["Option6"] = Carnival2016_Vent_Text[15386]["Option6"]
tNpcGossip[15386]["OptionFunc3"] = "Carnival2016_Vent_Join</N>15386"
tNpcGossip[15386]["OptionFunc4"] = "Carnival2016_Vent_Award</N>15386"
tNpcGossip[15386]["OptionPoint5"] = "2"
tNpcGossip[15386]["ChkFunc1-3"] = function ()
	return User_JudgeLevelAndMetempsychosis(tCarnival2016_Vent_Data["Level"],tCarnival2016_Vent_Data["Metempsychosis"])
end

--等级不足
tNpcGossip[15386]["Text1-4"] = {141}
tNpcGossip[15386]["tOption1-4"] = {9}
tNpcGossip[15386]["Text141"] = Carnival2016_Vent_Text[15386]["Text141"]
tNpcGossip[15386]["Option9"] = Carnival2016_Vent_Text[15386]["Option9"]
tNpcGossip[15386]["ChkFunc1-4"] = function ()
	return true
end

--具体要怎么做呢？
tNpcGossip[15386]["Text2-1"] = {211,212,213,214}
tNpcGossip[15386]["tOption2-1"] = {10,11}
tNpcGossip[15386]["Text211"] = Carnival2016_Vent_Text[15386]["Text211"]
tNpcGossip[15386]["Text212"] = Carnival2016_Vent_Text[15386]["Text212"]
tNpcGossip[15386]["Text213"] = Carnival2016_Vent_Text[15386]["Text213"]
tNpcGossip[15386]["Text214"] = Carnival2016_Vent_Text[15386]["Text214"]
tNpcGossip[15386]["Option10"] = Carnival2016_Vent_Text[15386]["Option10"]
tNpcGossip[15386]["Option11"] = Carnival2016_Vent_Text[15386]["Option11"]
tNpcGossip[15386]["OptionFunc10"] = "Carnival2016_Vent_Join</N>15386"


--已领取
tNpcGossip[15386]["Text3-1"] = {311}
tNpcGossip[15386]["tOption3-1"] = {30}
tNpcGossip[15386]["Text311"] = Carnival2016_Vent_Text[15386]["Text311"]
tNpcGossip[15386]["Option30"] = Carnival2016_Vent_Text[15386]["Option30"]

--未完成出气
tNpcGossip[15386]["Text3-2"] = {321}
tNpcGossip[15386]["tOption3-2"] = {31}
tNpcGossip[15386]["Text321"] = Carnival2016_Vent_Text[15386]["Text321"]
tNpcGossip[15386]["Option31"] = Carnival2016_Vent_Text[15386]["Option31"]

tNpcGossip[15386]["Text3-3"] = {331}
tNpcGossip[15386]["tOption3-3"] = {31}
tNpcGossip[15386]["Text331"] = Carnival2016_Vent_Text[15386]["Text331"]



-- ----------怪物函数
-- tMonster[7161] = tMonster[7161] or {}
-- tMonster[7161]["tFunction"] = tMonster[7161]["tFunction"] or {}
-- table.insert(tMonster[7161]["tFunction"],Carnival2016_Vent_Monster)

-- tMonster[7162] = tMonster[7162] or {}
-- tMonster[7162]["tFunction"] = tMonster[7162]["tFunction"] or {}
-- table.insert(tMonster[7162]["tFunction"],Carnival2016_Vent_Monster)

-- tMonster[7163] = tMonster[7163] or {}
-- tMonster[7163]["tFunction"] = tMonster[7163]["tFunction"] or {}
-- table.insert(tMonster[7163]["tFunction"],Carnival2016_Vent_Monster)

-- tMonster[7164] = tMonster[7164] or {}
-- tMonster[7164]["tFunction"] = tMonster[7164]["tFunction"] or {}
-- table.insert(tMonster[7164]["tFunction"],Carnival2016_Vent_Monster)





