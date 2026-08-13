---------------------------------------------------------------------------------------
---160425[征服][活动脚本]父亲节活动——为父祈福
---SQL BY:魏贻逵
---DATE:2016-04-25
---------------------------------------------------------------------------------------
--命名前缀： Fatherday_pray
--掩码144,70 
--1接任务 2领取奖励

local	tFatherday_Pray_Cont = {}
		tFatherday_Pray_Cont["Beftime"] = "2017-01-01 00:00 2017-06-14 23:59"
		tFatherday_Pray_Cont["Nowtime"] = "2017-06-15 00:00 2017-06-21 23:59"
		tFatherday_Pray_Cont["Level"] = 80
		tFatherday_Pray_Cont["Metempsychosis"] = 0
		tFatherday_Pray_Cont["PosX"] = 340
		tFatherday_Pray_Cont["PosY"] = 350

local	tFatherday_Pray_Stc = {}
		tFatherday_Pray_Stc["EventType"] = 144
		tFatherday_Pray_Stc["DataType"] = 70

local	tFatherday_Pray_Dendrobium = {}
		tFatherday_Pray_Dendrobium[7941] = {}
		tFatherday_Pray_Dendrobium[7941][1] = {328,350}
		tFatherday_Pray_Dendrobium[7941][2] = {351,365}
		tFatherday_Pray_Dendrobium[7941][3] = {361,342}

		tFatherday_Pray_Dendrobium[7942] = {}
		tFatherday_Pray_Dendrobium[7942][1] = {334,344}
		tFatherday_Pray_Dendrobium[7942][2] = {341,363}
		tFatherday_Pray_Dendrobium[7942][3] = {360,351}

		tFatherday_Pray_Dendrobium[7943] = {}
		tFatherday_Pray_Dendrobium[7943][1] = {343,349}
		tFatherday_Pray_Dendrobium[7943][2] = {332,360}
		tFatherday_Pray_Dendrobium[7943][3] = {360,358}

		tFatherday_Pray_Dendrobium[7944] = {}
		tFatherday_Pray_Dendrobium[7944][1] = {349,350}
		tFatherday_Pray_Dendrobium[7944][2] = {325,357}
		tFatherday_Pray_Dendrobium[7944][3] = {363,362}

		tFatherday_Pray_Dendrobium[7945] = {}
		tFatherday_Pray_Dendrobium[7945][1] = {330,356}
		tFatherday_Pray_Dendrobium[7945][2] = {327,364}
		tFatherday_Pray_Dendrobium[7945][3] = {370,356}

		tFatherday_Pray_Dendrobium[7946] = {}
		tFatherday_Pray_Dendrobium[7946][1] = {338,357}
		tFatherday_Pray_Dendrobium[7946][2] = {335,364}
		tFatherday_Pray_Dendrobium[7946][3] = {369,351}

		tFatherday_Pray_Dendrobium[7947] = {}
		tFatherday_Pray_Dendrobium[7947][1] = {334,357}
		tFatherday_Pray_Dendrobium[7947][2] = {343,366}
		tFatherday_Pray_Dendrobium[7947][3] = {368,344}

		tFatherday_Pray_Dendrobium[7948] = {}
		tFatherday_Pray_Dendrobium[7948][1] = {352,358}
		tFatherday_Pray_Dendrobium[7948][2] = {350,363}
		tFatherday_Pray_Dendrobium[7948][3] = {366,337}

local	tFatherday_Pray_Log = {}
		tFatherday_Pray_Log["FestivalId"] = 994
		tFatherday_Pray_Log["LogId"] = 12000391
		tFatherday_Pray_Log[1] = "0,0,0,0,12000391,1[1],0,0"
		tFatherday_Pray_Log[2] = "0,0,0,0,12000391,1[2],0,0"

---------------------------------------------------------------------------------------
--清掩码
function Fatherday_Pray_NextDay()
	local nEventType = tFatherday_Pray_Stc["EventType"]
	local nDataType = tFatherday_Pray_Stc["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,">=",2) and Task_StcInterval(nEventType,nDataType,1,4) then
		Task_SetStatistic(nEventType,nDataType,0,1)
		Task_SetStcTimestamp(nEventType,nDataType,0)
	end
end

--石斛兰
function Fatherday_Pray_Dendrobium()
	local nNpcId = Get_NpcId()
	local nUserId = Get_UserId()
	local nEventType = tFatherday_Pray_Stc["EventType"]
	local nDataType = tFatherday_Pray_Stc["DataType"]
	local nUser_x = Get_UserPositionX()
	local nUser_y = Get_UserPositionY()
	local nNpc_x = Get_NpcPositionX()
	local nNpc_y = Get_NpcPositionY()

--活动时间或已完成任务
	if not Sys_ChkFullTime(tFatherday_Pray_Cont["Nowtime"]) or Task_ChkStcValue(nEventType,nDataType,"==",2) then
		return
	end

--没接任务
	if Task_ChkStcValue(nEventType,nDataType,"==",0) then
		Sys_DialogText(tFatherday_Pray_Text["Dendrobium"]["Text1"])
		Sys_DialogText(tFatherday_Pray_Text["Dendrobium"]["Text2"])
		Sys_DialogOption(tFatherday_Pray_Text["Dendrobium"]["Option1"])
		Sys_DialogEnd()
		return
	end

--已接任务
	if Task_ChkStcValue(nEventType,nDataType,"==",1) then
		if Item_ChkMulItem (725069,725069,8) then
			Sys_MsgBox(tFatherday_Pray_Text["Dendrobium"][1],"Fatherday_Pray_Goto")
			return
		end
	end

--判断距离
	if math.abs(nUser_x - nNpc_x) > 5 or math.abs(nUser_y - nNpc_y) > 5 then
		User_TalkChannel2005(tFatherday_Pray_Text["Dendrobium"][2])
		return
	end

--背包判断
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tFatherday_Pray_Text["Dendrobium"][4])
		return
	end

--读条
	User_SetExplore(3,tFatherday_Pray_Text["Dendrobium"][3],100,"Fatherday_Pray_Dendrobium_1</N>"..nNpcId.."</N>"..nNpc_x.."</N>"..nNpc_y)

end

--读条结束
function Fatherday_Pray_Dendrobium_1(nNpcId,nNpc_x,nNpc_y,nUserId)
	if not Sys_ChkFullTime(tFatherday_Pray_Cont["Nowtime"]) then
		return
	end
--背包判断
	if not User_CheckLeftSpace(1,nUserId) then
		User_TalkChannel2005(tFatherday_Pray_Text["Dendrobium"][4],nUserId)
		return
	end

--添加石斛兰
	Item_AddNewItem(725069,"0 1",nUserId)

--出提示
	if Item_ChkMulItem(725069,725069,8,1,0,nUserId) then
		Sys_MsgBox(tFatherday_Pray_Text["Dendrobium"][1],"Fatherday_Pray_Goto","NULL",nUserId)
	else
		User_TalkChannel2005(tFatherday_Pray_Text["Dendrobium"][5],nUserId)
	end

--移动npc
	for i = 1,3 do
		if nNpc_x == tFatherday_Pray_Dendrobium[nNpcId][i][1] and nNpc_y == tFatherday_Pray_Dendrobium[nNpcId][i][2] then
			local nFlag = i + 1
			if nFlag > 3 then
				nFlag = 1
			end
			Npc_MoveNpcPos(nNpcId,1002,tFatherday_Pray_Dendrobium[nNpcId][nFlag][1],tFatherday_Pray_Dendrobium[nNpcId][nFlag][2])
			return
		end
	end
end

function Fatherday_Pray_Goto()
	Sys_GotoSomeWhere(275,361,1002,7934)
end

--我这就去。
function Fatherday_Pray_Option3_7934(nNpcId)
	if not Sys_ChkFullTime(tFatherday_Pray_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	Task_SetStatistic(tFatherday_Pray_Stc["EventType"],tFatherday_Pray_Stc["DataType"],1,1)
	Task_SetStcTimestamp(tFatherday_Pray_Stc["EventType"],tFatherday_Pray_Stc["DataType"],0)
	Sys_SaveActionFestivalLog(tFatherday_Pray_Log[1])
	Sys_GotoSomeWhere(tFatherday_Pray_Cont["PosX"],tFatherday_Pray_Cont["PosY"],1002)

end

function Fatherday_Pray_Option5_7934(nNpcId)
	if not Sys_ChkFullTime(tFatherday_Pray_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	-- if not User_CheckLeftSpace(1) then
		-- User_TalkChannel2005(tFatherday_Pray_Text[nNpcId]["NoSpace"])
		-- return
	-- end

	if Item_ChkMulItem(725069,725069,8) and Item_DelMulItem(725069,725069,8) then
		Task_SetStatistic(tFatherday_Pray_Stc["EventType"],tFatherday_Pray_Stc["DataType"],2,1)
		Task_SetStcTimestamp(tFatherday_Pray_Stc["EventType"],tFatherday_Pray_Stc["DataType"],0)
		FestivalGeneralPackage_GetGift(tFatherday_Pray_Log["FestivalId"],tFatherday_Pray_Log["LogId"])
		Sys_SaveActionFestivalLog(tFatherday_Pray_Log[2])
		LinkNpcGossipFunc_New(nNpcId,"1-5")
	end
end

---------------------------------------------------------------------------------------
--净空道长
tNpcFace[196] = 29
tNpcGossip[7934] = tNpcGossip[7934] or DefaultNpc:new{}
tNpcGossip[7934]["OptionHidden"] = 1

--主对白
tNpcGossip[7934]["Text1-1"] = {111,112,113,114}
tNpcGossip[7934]["Text111"] = tFatherday_Pray_Text[7934]["Text111"]
tNpcGossip[7934]["Text112"] = tFatherday_Pray_Text[7934]["Text112"]
tNpcGossip[7934]["Text113"] = tFatherday_Pray_Text[7934]["Text113"]
tNpcGossip[7934]["Text114"] = tFatherday_Pray_Text[7934]["Text114"]
tNpcGossip[7934]["tOption1-1"] = {1}
tNpcGossip[7934]["Option1"] = tFatherday_Pray_Text[7934]["Option1"]
tNpcGossip[7934]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tFatherday_Pray_Cont["Beftime"])
end

--活动后
tNpcGossip[7934]["Text1-2"] = {121}
tNpcGossip[7934]["Text121"] = tFatherday_Pray_Text[7934]["Text121"]
tNpcGossip[7934]["tOption1-2"] = {2}
tNpcGossip[7934]["Option2"] = tFatherday_Pray_Text[7934]["Option2"]
tNpcGossip[7934]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tFatherday_Pray_Cont["Beftime"]) and not Sys_ChkFullTime(tFatherday_Pray_Cont["Nowtime"])
end 

--活动中未完成任务
tNpcGossip[7934]["Text1-3"] = {131,132,112,113,114}
tNpcGossip[7934]["Text131"] = tFatherday_Pray_Text[7934]["Text131"]
tNpcGossip[7934]["Text132"] = tFatherday_Pray_Text[7934]["Text132"]
tNpcGossip[7934]["tOption1-3"] = {3,4}
tNpcGossip[7934]["Option3"] = tFatherday_Pray_Text[7934]["Option3"]
tNpcGossip[7934]["Option4"] = tFatherday_Pray_Text[7934]["Option4"]
tNpcGossip[7934]["ChkFunc1-3"] = function ()
	Fatherday_Pray_NextDay()
	local nEventType = tFatherday_Pray_Stc["EventType"]
	local nDataType = tFatherday_Pray_Stc["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,"==",0) or Task_ChkStcValue(nEventType,nDataType,"==",1) and not Item_ChkMulItem (725069,725069,8) then
		return true
	end
	return false
end 
tNpcGossip[7934]["OptionChkFunc3"] = function ()
	return User_JudgeLevelAndMetempsychosis(tFatherday_Pray_Cont["Level"],tFatherday_Pray_Cont["Metempsychosis"]) 
end
tNpcGossip[7934]["OptionFunc3"]="Fatherday_Pray_Option3_7934</N>7934"

--已采集到8个石斛兰
tNpcGossip[7934]["Text1-4"] = {141}
tNpcGossip[7934]["Text141"] = tFatherday_Pray_Text[7934]["Text141"]
tNpcGossip[7934]["tOption1-4"] = {5,6}
tNpcGossip[7934]["Option5"] = tFatherday_Pray_Text[7934]["Option5"]
tNpcGossip[7934]["Option6"] = tFatherday_Pray_Text[7934]["Option6"]
tNpcGossip[7934]["ChkFunc1-4"] = function ()
	Fatherday_Pray_NextDay()
	local nEventType = tFatherday_Pray_Stc["EventType"]
	local nDataType = tFatherday_Pray_Stc["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,"==",1) and Item_ChkMulItem (725069,725069,8) then
		return true
	end
	return false
end
tNpcGossip[7934]["OptionFunc5"]="Fatherday_Pray_Option5_7934</N>7934"

--已获得奖励
tNpcGossip[7934]["Text1-5"] = {151}
tNpcGossip[7934]["Text151"] = tFatherday_Pray_Text[7934]["Text151"]
tNpcGossip[7934]["tOption1-5"] = {7}
tNpcGossip[7934]["Option7"] = tFatherday_Pray_Text[7934]["Option7"]
tNpcGossip[7934]["ChkFunc1-5"] = function ()
	Fatherday_Pray_NextDay()
	local nEventType = tFatherday_Pray_Stc["EventType"]
	local nDataType = tFatherday_Pray_Stc["DataType"]
	if Task_ChkStcValue(nEventType,nDataType,">=",2) then
		return true
	end
	return false
end

