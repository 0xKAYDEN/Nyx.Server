------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2016奥运会活动-疯狂冲刺(8.5-8.22)
--Purpose:	奥运会活动
--Creator: 	吴文鑫
--Created:	2016/07/11
------------------------------------------------------------------------------------

-- 命名前缀
--OlympicGamesCrazySprint_
--


-- 常量表
local tOlympicGamesCrazySprint_Constant = {}
	--时间
	tOlympicGamesCrazySprint_Constant["BeforeTime"] = "2016-01-01 00:00 2016-08-04 23:59"
	tOlympicGamesCrazySprint_Constant["ActivetyTime"] = "2016-08-05 00:00 2016-08-22 23:59"
	tOlympicGamesCrazySprint_Constant["RaceTime"] = "15:00 15:30"
	tOlympicGamesCrazySprint_Constant["EnterTime"] = "14:55 15:25"
	--打开赛马积分商店的界面ID
	tOlympicGamesCrazySprint_Constant["DialogId"] = 464
	
	--等级
	tOlympicGamesCrazySprint_Constant["Level"] = 80
	tOlympicGamesCrazySprint_Constant["Metempsychosis"] = 0

	tOlympicGamesCrazySprint_Constant["nMapId"] = 10028
	tOlympicGamesCrazySprint_Constant["nCellx"] = 40
	tOlympicGamesCrazySprint_Constant["nCelly"] = 583
	
	tOlympicGamesCrazySprint_Constant["nRecId"] = 1002
	tOlympicGamesCrazySprint_Constant["nRecx"] = 312
	tOlympicGamesCrazySprint_Constant["nRecy"] = 264

	tOlympicGamesCrazySprint_Constant["nOutId"] = 1002
	tOlympicGamesCrazySprint_Constant["nOutx"] = 288
	tOlympicGamesCrazySprint_Constant["nOuty"] = 372

	tOlympicGamesCrazySprint_Constant["AwardItem"] = 3200573
	
	
	
local tOlympicGamesCrazySprint_EmoneyLog = {}
	tOlympicGamesCrazySprint_EmoneyLog["JoinMatch"] = "930	930	0	"
	
--掩码
local tOlympicGamesCrazySprint_Stc = {}
	tOlympicGamesCrazySprint_Stc["EventType"] = 113
	tOlympicGamesCrazySprint_Stc["DataType"] = 41
	tOlympicGamesCrazySprint_Stc["Complete"] = 1
-- 12000461
local tOlympicGamesCrazySprint_Log = {}
	tOlympicGamesCrazySprint_Log["In"] = "0,0,0,0,12000461,1[1],0,0"
	tOlympicGamesCrazySprint_Log["Out"] = "0,0,0,0,12000461,3,0,0"
	
--奖励表配置
	tOlympicGamesCrazySprint_Award = {}
	tOlympicGamesCrazySprint_Award[1] = {}
	tOlympicGamesCrazySprint_Award[1]["RewardItem"] = {}
	tOlympicGamesCrazySprint_Award[1]["RewardItem"][1] = {}
	tOlympicGamesCrazySprint_Award[1]["RewardItem"][1]["Id"] = 3200573
	tOlympicGamesCrazySprint_Award[1]["RewardItem"][1]["Attr"] = "0 3"
	tOlympicGamesCrazySprint_Award[1]["Log"] = "0,0,0,0,12000461,1[2],3200573,3"
	tOlympicGamesCrazySprint_Award[1]["Talk"] = tOlympicGamesCrazySprint_Text["Award"]
	tOlympicGamesCrazySprint_Award[1]["Space"] = 1
	
	
	
	
-------------------------------------------------NPC逻辑
--打开赛马积分商店
function OlympicGamesCrazySprint_OpenShop()
	User_OpenDialog(tOlympicGamesCrazySprint_Constant["DialogId"])
end


--参加极限竞速
function OlympicGamesCrazySprint_JoinMatch(nNpcId)
	if not (Sys_ChkFullTime(tOlympicGamesCrazySprint_Constant["ActivetyTime"]) and Sys_ChkDayTime(tOlympicGamesCrazySprint_Constant["EnterTime"])) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	--判断玩家今日是否参加过
	local nEvent = tOlympicGamesCrazySprint_Stc["EventType"]
	local nType = tOlympicGamesCrazySprint_Stc["DataType"]
	local nTask = Get_UserStatisticValue(nEvent,nType)
	
	if nTask ~= 0 then
		if not Task_StcInterval(nEvent,nType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	--进入马赛地图
	User_UserRandBoundTrans(tOlympicGamesCrazySprint_Constant["nMapId"],tOlympicGamesCrazySprint_Constant["nCellx"],tOlympicGamesCrazySprint_Constant["nCelly"],5,5,1)
	--记录点
	User_RecordPoint(tOlympicGamesCrazySprint_Constant["nRecId"],tOlympicGamesCrazySprint_Constant["nRecx"],tOlympicGamesCrazySprint_Constant["nRecy"])
	--打log
	Sys_SaveEmoneyBuy(tOlympicGamesCrazySprint_EmoneyLog["JoinMatch"])
	
	--普通log
	local sLog = tOlympicGamesCrazySprint_Log["In"]
	Sys_SaveActionFestivalLog(sLog)
	
	if Get_UserMapId() == tOlympicGamesCrazySprint_Constant["nMapId"] then
	--给提示
		User_TalkChannel2005(tOlympicGamesCrazySprint_Text["JoinMatch"])
	end
	
	
end

--出马赛地图
function OlympicGamesCrazySprint_GoOut(nNpcId)
		User_ChgMap(tOlympicGamesCrazySprint_Constant["nOutId"],tOlympicGamesCrazySprint_Constant["nOutx"],tOlympicGamesCrazySprint_Constant["nOuty"],1)
		local sLog = tOlympicGamesCrazySprint_Log["Out"]
		Sys_SaveActionFestivalLog(sLog)
end



--陷阱逻辑
function OlympicGamesCrazySprint_Trap(nTrapId,nTrapType)
	local nEvent = tOlympicGamesCrazySprint_Stc["EventType"]
	local nType = tOlympicGamesCrazySprint_Stc["DataType"]
	
	if not Task_ChkStcValue(nEvent,nType,"==",0) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
		end
	end
	
	if Task_ChkStcValue(nEvent,nType,"==",0) then
		Task_SetStatistic(nEvent,nType,tOlympicGamesCrazySprint_Stc["Complete"],1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		if User_JudgeLevelAndMetempsychosis(tOlympicGamesCrazySprint_Constant["Level"],tOlympicGamesCrazySprint_Constant["Metempsychosis"]) then 
			-- 判断背包空间
			local nSpace = tOlympicGamesCrazySprint_Award[1]["Space"]
			if not User_CheckLeftSpace(nSpace) then
				User_TalkChannel2005(tOlympicGamesCrazySprint_Text["NoSpace"])
				return
			end
			RewardTemplate_Reward(tOlympicGamesCrazySprint_Award[1])
		end
	end
end







--------------------------------------------------NPC配置


--19378	骑马大赛专员
tNpcFace[515] = 166
tNpcGossip[19378] = tNpcGossip[19378] or DefaultNpc:new{}
tNpcGossip[19378]["OptionHidden"] = 1
tNpcGossip[19378]["DialogueText"] = tOlympicGamesCrazySprint_Text[19378]

--6001	骑马大赛专员
tNpcGossip[6001] = tNpcGossip[19378] or DefaultNpc:new{}
--活动时间前
tNpcGossip[19378]["Text1-1"] = {111,122,123,124}
tNpcGossip[19378]["tOption1-1"] = {1}
tNpcGossip[19378]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tOlympicGamesCrazySprint_Constant["BeforeTime"])
end

--活动中不满足条件
-- tNpcGossip[19378]["Text1-2"] = {121,122,123,124}
-- tNpcGossip[19378]["tOption1-2"] = {2,3}
-- tNpcGossip[19378]["ChkFunc1-2"] = function ()
	-- return Sys_ChkFullTime(tOlympicGamesCrazySprint_Constant["ActivetyTime"]) and (not User_JudgeLevelAndMetempsychosis(tOlympicGamesCrazySprint_Constant["Level"],tOlympicGamesCrazySprint_Constant["Metempsychosis"]))
-- end

--活动中满足条件
tNpcGossip[19378]["Text1-2"] = {121,122,123,124}
tNpcGossip[19378]["tOption1-2"] = {4,5,3,6}
tNpcGossip[19378]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tOlympicGamesCrazySprint_Constant["ActivetyTime"])
end
tNpcGossip[19378]["OptionFunc3"] = "OlympicGamesCrazySprint_OpenShop"
tNpcGossip[19378]["OptionFunc4"] = "OlympicGamesCrazySprint_JoinMatch</N>19378"
tNpcGossip[19378]["OptionPoint5"]="2-3"

tNpcGossip[19378]["OptionChkFunc3"] = function ()
	if Get_UserMapId() == 1036 then
		return true
	else
		return false
	end
end

--活动时间后
tNpcGossip[19378]["Text1-3"] = {131}
tNpcGossip[19378]["tOption1-3"] = {7}

--失败，非活动时间
tNpcGossip[19378]["Text2-1"] = {211}
tNpcGossip[19378]["tOption2-1"] = {8}

--失败，今日已完成过
tNpcGossip[19378]["Text2-2"] = {221}
tNpcGossip[19378]["tOption2-2"] = {9}

--规则说明
tNpcGossip[19378]["Text2-3"] = {231,232}
tNpcGossip[19378]["tOption2-3"] = {10}


--19378	骑马大赛专员
tNpcFace[516] = 166
tNpcGossip[19379] = tNpcGossip[19379] or DefaultNpc:new{}
tNpcGossip[19379]["OptionHidden"] = 1
tNpcGossip[19379]["DialogueText"] = tOlympicGamesCrazySprint_Text[19379]
tNpcGossip[19379]["Text1-1"] = {111}
tNpcGossip[19379]["tOption1-1"] = {2,1}
tNpcGossip[19379]["OptionFunc1"] = "OlympicGamesCrazySprint_GoOut</N>19379"
tNpcGossip[19379]["OptionFunc2"] = "OlympicGamesCrazySprint_OpenShop"


tNpcGossip[19380] = tNpcGossip[19380] or DefaultNpc:new{}
tNpcGossip[19380]["OptionHidden"] = 1
tNpcGossip[19380]["DialogueText"] = tOlympicGamesCrazySprint_Text[19379]
tNpcGossip[19380]["Text1-1"] = {111}
tNpcGossip[19380]["tOption1-1"] = {1}
tNpcGossip[19380]["OptionFunc1"] = "OlympicGamesCrazySprint_GoOut</N>19380"

----------------------------------------------陷阱
tTrap[1456] = tTrap[1456] or {}
tTrap[1456]["Function"] = function(nTrapId,nTrapType)
	 OlympicGamesCrazySprint_Trap(nTrapId,nTrapType)
end