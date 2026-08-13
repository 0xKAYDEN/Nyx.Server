---------------------------------------------------------------------------------------
---160425[征服][活动脚本]父亲节活动——父爱如山
---SQL BY:魏贻逵
---DATE:2016-04-25
---------------------------------------------------------------------------------------
--命名前缀： Fatherday_Receivepack
--活动流程改成每天到npc那里拿1个节日欢庆礼包
--掩码69,24 领取礼包

local	tFatherday_Receivepack_Cont = {}
		tFatherday_Receivepack_Cont["Beftime"] = "2017-01-01 00:00 2017-06-14 23:59"
		tFatherday_Receivepack_Cont["Nowtime"] = "2017-06-15 00:00 2017-06-21 23:59"
		tFatherday_Receivepack_Cont["Level"] = 80
		tFatherday_Receivepack_Cont["Metempsychosis"] = 0

local	tFatherday_Receivepack_Stc = {}
		tFatherday_Receivepack_Stc = {}
		tFatherday_Receivepack_Stc["EventType"] = 69
		tFatherday_Receivepack_Stc["DataType"] = 24

local	tFatherday_Receivepack_Log = {}
		tFatherday_Receivepack_Log["FestivalId"] = 994
		tFatherday_Receivepack_Log["LogId"] = 10000169
		tFatherday_Receivepack_Log[1] = "0,0,0,0,10000169,1[2],0,0"

-------------------------------------------------------------------------------------------

--领取节日欢庆礼包
function Fatherday_Receivepack_Option3_7951(nNpcId)
	if not Sys_ChkFullTime(tFatherday_Receivepack_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	if Task_StcInterval(tFatherday_Receivepack_Stc["EventType"],tFatherday_Receivepack_Stc["DataType"],1,4) then
		Task_SetStatistic(tFatherday_Receivepack_Stc["EventType"],tFatherday_Receivepack_Stc["DataType"],0,1)
		Task_SetStcTimestamp(tFatherday_Receivepack_Stc["EventType"],tFatherday_Receivepack_Stc["DataType"],0)
	end

	if Task_ChkStcValue(tFatherday_Receivepack_Stc["EventType"],tFatherday_Receivepack_Stc["DataType"],">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

--背包判断
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end

--领取奖励
	Task_SetStatistic(tFatherday_Receivepack_Stc["EventType"],tFatherday_Receivepack_Stc["DataType"],1,1)
	Task_SetStcTimestamp(tFatherday_Receivepack_Stc["EventType"],tFatherday_Receivepack_Stc["DataType"],0)
	FestivalGeneralPackage_GetGift(tFatherday_Receivepack_Log["FestivalId"],tFatherday_Receivepack_Log["LogId"])
	Sys_SaveActionFestivalLog(tFatherday_Receivepack_Log[1])
	User_TalkChannel2005(tFatherday_Receivepack_Text[nNpcId]["Receive"])
	User_EffectAdd("self","eidolon")

end

---------------------------------------------------------------------------------------
--小道士明月
tNpcFace[530] = 19
tNpcGossip[7951] = tNpcGossip[7951] or DefaultNpc:new{}
tNpcGossip[7951]["OptionHidden"] = 1

--活动前
tNpcGossip[7951]["Text1-1"] = {111,112,113,114}
tNpcGossip[7951]["Text111"] = tFatherday_Receivepack_Text[7951]["Text111"]
tNpcGossip[7951]["Text112"] = tFatherday_Receivepack_Text[7951]["Text112"]
tNpcGossip[7951]["Text113"] = tFatherday_Receivepack_Text[7951]["Text113"]
tNpcGossip[7951]["Text114"] = tFatherday_Receivepack_Text[7951]["Text114"]
tNpcGossip[7951]["tOption1-1"] = {1}
tNpcGossip[7951]["Option1"] = tFatherday_Receivepack_Text[7951]["Option1"]
tNpcGossip[7951]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tFatherday_Receivepack_Cont["Beftime"])
end

--活动后
tNpcGossip[7951]["Text1-2"] = {121}
tNpcGossip[7951]["Text121"] = tFatherday_Receivepack_Text[7951]["Text121"]
tNpcGossip[7951]["tOption1-2"] = {2}
tNpcGossip[7951]["Option2"] = tFatherday_Receivepack_Text[7951]["Option2"]
tNpcGossip[7951]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tFatherday_Receivepack_Cont["Beftime"]) and not Sys_ChkFullTime(tFatherday_Receivepack_Cont["Nowtime"])
end 

--活动中
tNpcGossip[7951]["Text1-3"] = {131,112,113,114}
tNpcGossip[7951]["Text131"] = tFatherday_Receivepack_Text[7951]["Text131"]
tNpcGossip[7951]["tOption1-3"] = {3,4}
tNpcGossip[7951]["Option3"] = tFatherday_Receivepack_Text[7951]["Option3"]
tNpcGossip[7951]["Option4"] = tFatherday_Receivepack_Text[7951]["Option4"]
tNpcGossip[7951]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tFatherday_Receivepack_Cont["Nowtime"])
end

tNpcGossip[7951]["OptionChkFunc3"] = function ()
	return User_JudgeLevelAndMetempsychosis(tFatherday_Receivepack_Cont["Level"],tFatherday_Receivepack_Cont["Metempsychosis"]) 
end
tNpcGossip[7951]["OptionFunc3"]="Fatherday_Receivepack_Option3_7951</N>7951"

--已领取过
tNpcGossip[7951]["Text2-1"] = {211}
tNpcGossip[7951]["Text211"] = tFatherday_Receivepack_Text[7951]["Text211"]
tNpcGossip[7951]["tOption2-1"] = {10}
tNpcGossip[7951]["Option10"] = tFatherday_Receivepack_Text[7951]["Option10"]

--背包满
tNpcGossip[7951]["Text2-2"] = {221}
tNpcGossip[7951]["Text221"] = tFatherday_Receivepack_Text[7951]["Text221"]
tNpcGossip[7951]["tOption2-2"] = {10}

