------------------------------------------------------------------------------------
--Name:			[简体征服][活动脚本]2016儿童节活动-天晴猪的礼物(5.30-6.3)
--Creator:		吴文鑫
--Created:		2016/3/30
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--	命名前缀
--	ChildrenDay2016PigGift
--掩码说明：
--stc
--143,72	记录玩家今日是否已领过奖励

--动态存储表说明
--50482
--data0
--记录天晴猪刷新
--logid 12000339



local tChildrenDay2016PigGift_Cont = {}
--等级
	tChildrenDay2016PigGift_Cont["Level"] = 80
	tChildrenDay2016PigGift_Cont["Metempsychosis"] = 0

--时间
	tChildrenDay2016PigGift_Cont["BeforeActivityTime"] = "2017-01-01 00:00 2017-05-31 23:59"
	tChildrenDay2016PigGift_Cont["ActivityTime"] = "2017-06-01 00:00 2017-06-07 23:59"
--背包空间
	tChildrenDay2016PigGift_Cont["Space"] = 1
	
	
	tChildrenDay2016PigGift_Cont["NpcId"] = 16770
--光效
	tChildrenDay2016PigGift_Cont["Effect"] = "CircleUp"
	
--节日礼包
	tChildrenDay2016PigGift_Cont["FestivalId"] = 3285
	tChildrenDay2016PigGift_Cont["LogId"] = 12000339
	tChildrenDay2016PigGift_Cont["CompleteLog"] = "0,0,0,0,12000339,1[2],0,0"
	
--NPC移回集中营的坐标
	tChildrenDay2016PigGift_Cont["BackMapId"] = 5000
	tChildrenDay2016PigGift_Cont["BackCellx"] = 99
	tChildrenDay2016PigGift_Cont["BackCellY"] = 99
	
	
local tChildrenDay2016PigGift_TaskGlobal = {}
	tChildrenDay2016PigGift_TaskGlobal["GlobalId"] = 50482
	tChildrenDay2016PigGift_TaskGlobal["OutData"] = 1
	tChildrenDay2016PigGift_TaskGlobal["BackData"] = 0
	
	
local tChildrenDay2016PigGift_Stc = {}
	tChildrenDay2016PigGift_Stc["EventType"] = 143
	tChildrenDay2016PigGift_Stc["DataType"] = 72
	tChildrenDay2016PigGift_Stc["Complete"] = 1
	
local tChildrenDay2016PigGift_MoveTime = {}
	tChildrenDay2016PigGift_MoveTime[1] = {"08:00 08:05",1002}
	tChildrenDay2016PigGift_MoveTime[2] = {"09:00 09:05",1002}
	tChildrenDay2016PigGift_MoveTime[3] = {"10:00 10:05",1002}
	
	tChildrenDay2016PigGift_MoveTime[4] = {"11:00 11:05",1011}
	tChildrenDay2016PigGift_MoveTime[5] = {"12:00 12:05",1011}
	tChildrenDay2016PigGift_MoveTime[6] = {"13:00 13:05",1011}
	
	tChildrenDay2016PigGift_MoveTime[7] = {"14:00 14:05",1020}
	tChildrenDay2016PigGift_MoveTime[8] = {"15:00 15:05",1020}
	tChildrenDay2016PigGift_MoveTime[9] = {"16:00 16:05",1020}
	
	tChildrenDay2016PigGift_MoveTime[10] = {"17:00 17:05",1000}
	tChildrenDay2016PigGift_MoveTime[11] = {"18:00 18:05",1000}
	tChildrenDay2016PigGift_MoveTime[12] = {"19:00 19:05",1000}
	
	tChildrenDay2016PigGift_MoveTime[13] = {"20:00 20:05",1015}
	tChildrenDay2016PigGift_MoveTime[14] = {"21:00 21:05",1015}
	tChildrenDay2016PigGift_MoveTime[15] = {"22:00 22:05",1015}
	
local tChildrenDay2016PigGift_Coordinate = {}
	tChildrenDay2016PigGift_Coordinate[1002] = {}
	tChildrenDay2016PigGift_Coordinate[1002][1] = {311,245}
	tChildrenDay2016PigGift_Coordinate[1002][2] = {294,195}
	tChildrenDay2016PigGift_Coordinate[1002][3] = {318,148}
	tChildrenDay2016PigGift_Coordinate[1002][4] = {284,160}
	tChildrenDay2016PigGift_Coordinate[1002][5] = {244,215}

	tChildrenDay2016PigGift_Coordinate[1011] = {}
	tChildrenDay2016PigGift_Coordinate[1011][1] = {220,311}
	tChildrenDay2016PigGift_Coordinate[1011][2] = {179,266}
	tChildrenDay2016PigGift_Coordinate[1011][3] = {182,231}
	tChildrenDay2016PigGift_Coordinate[1011][4] = {236,257}
	tChildrenDay2016PigGift_Coordinate[1011][5] = {219,227}

	tChildrenDay2016PigGift_Coordinate[1020] = {}
	tChildrenDay2016PigGift_Coordinate[1020][1] = {561,585}
	tChildrenDay2016PigGift_Coordinate[1020][2] = {558,543}
	tChildrenDay2016PigGift_Coordinate[1020][3] = {538,533}
	tChildrenDay2016PigGift_Coordinate[1020][4] = {544,513}
	tChildrenDay2016PigGift_Coordinate[1020][5] = {551,565}

	tChildrenDay2016PigGift_Coordinate[1000] = {}
	tChildrenDay2016PigGift_Coordinate[1000][1] = {489,639}
	tChildrenDay2016PigGift_Coordinate[1000][2] = {486,587}
	tChildrenDay2016PigGift_Coordinate[1000][3] = {458,593}
	tChildrenDay2016PigGift_Coordinate[1000][4] = {513,590}
	tChildrenDay2016PigGift_Coordinate[1000][5] = {514,658}

	tChildrenDay2016PigGift_Coordinate[1015] = {}
	tChildrenDay2016PigGift_Coordinate[1015][1] = {765,589}
	tChildrenDay2016PigGift_Coordinate[1015][2] = {732,546}
	tChildrenDay2016PigGift_Coordinate[1015][3] = {738,516}
	tChildrenDay2016PigGift_Coordinate[1015][4] = {698,518}
	tChildrenDay2016PigGift_Coordinate[1015][5] = {758,551}

--天晴猪领奖励
function ChildrenDay2016PigGift_Give(nNpcId)

--判断是否还在活动时间内
	if not Sys_ChkFullTime(tChildrenDay2016PigGift_Cont["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
--判断玩家是否满足等级条件
	if not User_JudgeLevelAndMetempsychosis(tChildrenDay2016PigGift_Cont["Level"],tChildrenDay2016PigGift_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

--判断玩家今日是否已领取过
	local nEvent = tChildrenDay2016PigGift_Stc["EventType"]
	local nType = tChildrenDay2016PigGift_Stc["DataType"]
	local nTask = Get_UserStatisticValue(nEvent,nType)
	
	if nTask ~= 0 then
		if not Task_StcInterval(nEvent,nType,1,4) then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
--判断背包空间
	local nSpace = tChildrenDay2016PigGift_Cont["Space"]
	if not User_CheckLeftSpace(nSpace) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end

	FestivalGeneralPackage_GetGift(tChildrenDay2016PigGift_Cont["FestivalId"],tChildrenDay2016PigGift_Cont["LogId"])
	Sys_SaveActionFestivalLog(tChildrenDay2016PigGift_Cont["CompleteLog"])
	Task_SetStatistic(nEvent,nType,tChildrenDay2016PigGift_Stc["Complete"],1)
	Task_SetStcTimestamp(nEvent,nType,0)

end
	
--判断玩家是否满足等级条件(等级，转世)
-- function ChildrenDay2016PigGift_SatisfyCondition()
	-- local nLev = Get_UserLevel()
	-- local nMete = Get_UserMetempsychosis()
	-- local nLevLimit = tChildrenDay2016PigGift_Cont["Level"]
	-- local nMeteLimit = tChildrenDay2016PigGift_Cont["Metempsychosis"]
	
	-- if nMete < nMeteLimit and nLev < nLevLimit then
		-- return false
	-- else
		-- return true
	-- end

-- end
	
--移动NPC
function ChildrenDay2016PigGift_Move()
	local nGlobalId = tChildrenDay2016PigGift_TaskGlobal["GlobalId"]
	local nData = Get_SysDynaGlobalData0(nGlobalId)


	if Sys_ChkFullTime(tChildrenDay2016PigGift_Cont["ActivityTime"]) then
		for k,v in pairs (tChildrenDay2016PigGift_MoveTime)do
			if Sys_ChkDayTime(tChildrenDay2016PigGift_MoveTime[k][1]) then
				if nData == tChildrenDay2016PigGift_TaskGlobal["BackData"] then
					local nMapId = tChildrenDay2016PigGift_MoveTime[k][2]
					local nRandom = math.random(1,#tChildrenDay2016PigGift_Coordinate[nMapId])
					local nCellx = tChildrenDay2016PigGift_Coordinate[nMapId][nRandom][1]
					local nCelly = tChildrenDay2016PigGift_Coordinate[nMapId][nRandom][2]
					local sEffectName = tChildrenDay2016PigGift_Cont["Effect"]
					local sContent = tChildrenDay2016PigGift_Text["Move"][nMapId][nRandom]
					Sys_GmBroadcast(sContent)
					Sys_SetSynaGlobalData0(nGlobalId,tChildrenDay2016PigGift_TaskGlobal["OutData"])
					Npc_MoveNpcPos(tChildrenDay2016PigGift_Cont["NpcId"],nMapId,nCellx,nCelly)
					Map_Effect(nMapId,nCellx,nCelly,sEffectName)
					return
				end
				return
			end
		end
	end
	

	if nData == tChildrenDay2016PigGift_TaskGlobal["OutData"] then
		Npc_MoveNpcPos(tChildrenDay2016PigGift_Cont["NpcId"],tChildrenDay2016PigGift_Cont["BackMapId"],tChildrenDay2016PigGift_Cont["BackCellx"],tChildrenDay2016PigGift_Cont["BackCellY"])
		Sys_SetSynaGlobalData0(nGlobalId,tChildrenDay2016PigGift_TaskGlobal["BackData"])
		Sys_GmBroadcast(tChildrenDay2016PigGift_Text["Back"])
	end
end

--Map_Effect(nMapId, nPosX, nPosY, sEffectName)
	
	
	
	
	
	
	
--------------------------------------NPC模块-------------------------------------------
--天晴猪
tNpcFace[3014] = 191
tNpcGossip[16770] = tNpcGossip[16770] or DefaultNpc:new{}
tNpcGossip[16770]["OptionHidden"] = 1

-- 活动前
tNpcGossip[16770]["Text1-1"] = {111,112}
tNpcGossip[16770]["Text111"] = tChildrenDay2016PigGift_Text[16770]["Text111"]
tNpcGossip[16770]["Text112"] = tChildrenDay2016PigGift_Text[16770]["Text112"]
tNpcGossip[16770]["tOption1-1"] = {1}
tNpcGossip[16770]["Option1"] = tChildrenDay2016PigGift_Text[16770]["Option1"]
tNpcGossip[16770]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChildrenDay2016PigGift_Cont["BeforeActivityTime"])
end

--活动中（等级满足）
tNpcGossip[16770]["Text1-2"] = {121,122,123}
tNpcGossip[16770]["Text121"] = tChildrenDay2016PigGift_Text[16770]["Text121"]
tNpcGossip[16770]["Text122"] = tChildrenDay2016PigGift_Text[16770]["Text122"]
tNpcGossip[16770]["Text123"] = tChildrenDay2016PigGift_Text[16770]["Text123"]

tNpcGossip[16770]["tOption1-2"] = {2,3}
tNpcGossip[16770]["Option2"] = tChildrenDay2016PigGift_Text[16770]["Option2"]
tNpcGossip[16770]["Option3"] = tChildrenDay2016PigGift_Text[16770]["Option3"]
tNpcGossip[16770]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tChildrenDay2016PigGift_Cont["ActivityTime"]) and (User_JudgeLevelAndMetempsychosis(tChildrenDay2016PigGift_Cont["Level"],tChildrenDay2016PigGift_Cont["Metempsychosis"]))
end

tNpcGossip[16770]["OptionFunc2"] = "ChildrenDay2016PigGift_Give</N>16770"

--活动中（等级不满足）
tNpcGossip[16770]["Text1-3"] = {131}
tNpcGossip[16770]["Text131"] = tChildrenDay2016PigGift_Text[16770]["Text211"]
tNpcGossip[16770]["tOption1-3"] = {5}
tNpcGossip[16770]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChildrenDay2016PigGift_Cont["ActivityTime"])
end

--活动后
tNpcGossip[16770]["Text1-4"] = {141}
tNpcGossip[16770]["Text141"] = tChildrenDay2016PigGift_Text[16770]["Text141"]
tNpcGossip[16770]["tOption1-4"] = {4}
tNpcGossip[16770]["Option4"] = tChildrenDay2016PigGift_Text[16770]["Option4"]

--不符合等级条件的对白
tNpcGossip[16770]["Text2-1"] = {211}
tNpcGossip[16770]["Text211"] = tChildrenDay2016PigGift_Text[16770]["Text211"]
tNpcGossip[16770]["tOption2-1"] = {5}
tNpcGossip[16770]["Option5"] = tChildrenDay2016PigGift_Text[16770]["Option5"]

--今日已领取过的对白
tNpcGossip[16770]["Text2-2"] = {221}
tNpcGossip[16770]["Text221"] = tChildrenDay2016PigGift_Text[16770]["Text221"]
tNpcGossip[16770]["tOption2-2"] = {6}
tNpcGossip[16770]["Option6"] = tChildrenDay2016PigGift_Text[16770]["Option6"]

--背包空间不足的对白
tNpcGossip[16770]["Text2-3"] = {231}
tNpcGossip[16770]["Text231"] = tChildrenDay2016PigGift_Text[16770]["Text231"]
tNpcGossip[16770]["tOption2-3"] = {7}
tNpcGossip[16770]["Option7"] = tChildrenDay2016PigGift_Text[16770]["Option7"]



-- --------------------时间自检
-- tOntimerMin_M[0] = tOntimerMin_M[0] or {}
-- table.insert(tOntimerMin_M[0],ChildrenDay2016PigGift_Move)
-- tOntimerMin_M[1] = tOntimerMin_M[1] or {}
-- table.insert(tOntimerMin_M[1],ChildrenDay2016PigGift_Move)
-- tOntimerMin_M[2] = tOntimerMin_M[2] or {}
-- table.insert(tOntimerMin_M[2],ChildrenDay2016PigGift_Move)
-- tOntimerMin_M[3] = tOntimerMin_M[3] or {}
-- table.insert(tOntimerMin_M[3],ChildrenDay2016PigGift_Move)
-- tOntimerMin_M[4] = tOntimerMin_M[4] or {}
-- table.insert(tOntimerMin_M[4],ChildrenDay2016PigGift_Move)
-- tOntimerMin_M[5] = tOntimerMin_M[5] or {}
-- table.insert(tOntimerMin_M[5],ChildrenDay2016PigGift_Move)
-- tOntimerMin_M[6] = tOntimerMin_M[6] or {}
-- table.insert(tOntimerMin_M[6],ChildrenDay2016PigGift_Move)
-- tOntimerMin_M[7] = tOntimerMin_M[7] or {}
-- table.insert(tOntimerMin_M[7],ChildrenDay2016PigGift_Move)