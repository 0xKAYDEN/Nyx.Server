---------------------------------------------------------------------------------------
---151221[征服][活动脚本]狂欢节-狂欢赛跑
---SQL BY:魏贻逵                                    
---DATE:2015-12-21                                 
---------------------------------------------------------------------------------------
-- 掩码说明：
-- 11135 报名参加第几场比赛 1~6
-- 11136 比赛阶段 1（报名） 2-10（9个水晶登记） 11（换装）
-- 11137 每一场比赛的奖励 1~6
--命名前缀 Carnival_Race
---------------------------------------------------------------------------------------
local	tCarnival_Race_Cont = {}
		tCarnival_Race_Cont["Beftime"] = "2015-01-01 00:00 2017-03-01 23:59"
		tCarnival_Race_Cont["Nowtime"] = "2017-03-02 00:00 2017-03-08 23:59"
		tCarnival_Race_Cont["Aftime"] = "2017-03-09 00:00 2020-12-31 23:59"
		
		tCarnival_Race_Cont["Level"] = 80
		tCarnival_Race_Cont["Metempsychosis"] = 0

		tCarnival_Race_Cont["GlobalDataId"] = 50199
		tCarnival_Race_Cont["AddExpTime"] = 10
		tCarnival_Race_Cont["AddCultivation"] = 5

local	tCarnival_Race_Stc = {}
		tCarnival_Race_Stc[1] = {}
		tCarnival_Race_Stc[1]["EventType"] = 111
		tCarnival_Race_Stc[1]["DataType"] = 35

		tCarnival_Race_Stc[2] = {}
		tCarnival_Race_Stc[2]["EventType"] = 111
		tCarnival_Race_Stc[2]["DataType"] = 36

		tCarnival_Race_Stc[3] = {}
		tCarnival_Race_Stc[3]["EventType"] = 111
		tCarnival_Race_Stc[3]["DataType"] = 37

local	tCarnival_Race_ContestTime = {}
		tCarnival_Race_ContestTime[1] = {}
		tCarnival_Race_ContestTime[1][1] = "00:30 01:29"
		tCarnival_Race_ContestTime[1][2] = "04:30 05:29"
		tCarnival_Race_ContestTime[1][3] = "08:30 09:29"
		tCarnival_Race_ContestTime[1][4] = "12:30 13:29"
		tCarnival_Race_ContestTime[1][5] = "16:30 17:29"
		tCarnival_Race_ContestTime[1][6] = "20:30 21:29"

		tCarnival_Race_ContestTime[2] = {}
		tCarnival_Race_ContestTime[2][1] = "00:27 00:27"
		tCarnival_Race_ContestTime[2][2] = "04:27 04:27"
		tCarnival_Race_ContestTime[2][3] = "08:27 08:27"
		tCarnival_Race_ContestTime[2][4] = "12:27 12:27"
		tCarnival_Race_ContestTime[2][5] = "16:27 16:27"
		tCarnival_Race_ContestTime[2][6] = "20:27 20:27"
                                             
		tCarnival_Race_ContestTime[3] = {}
		tCarnival_Race_ContestTime[3][1] = "01:27 01:27"
		tCarnival_Race_ContestTime[3][2] = "05:27 05:27"
		tCarnival_Race_ContestTime[3][3] = "09:27 09:27"
		tCarnival_Race_ContestTime[3][4] = "13:27 13:27"
		tCarnival_Race_ContestTime[3][5] = "17:27 17:27"
		tCarnival_Race_ContestTime[3][6] = "21:27 21:27"
                                       
		tCarnival_Race_ContestTime[4] = {}
		tCarnival_Race_ContestTime[4][1] = "01:30 01:30"
		tCarnival_Race_ContestTime[4][2] = "05:30 05:30"
		tCarnival_Race_ContestTime[4][3] = "09:30 09:30"
		tCarnival_Race_ContestTime[4][4] = "13:30 13:30"
		tCarnival_Race_ContestTime[4][5] = "17:30 17:30"
		tCarnival_Race_ContestTime[4][6] = "21:30 21:30"

		tCarnival_Race_ContestTime[5] = {}
		tCarnival_Race_ContestTime[5][1] = "00:30 00:30"
		tCarnival_Race_ContestTime[5][2] = "04:30 04:30"
		tCarnival_Race_ContestTime[5][3] = "08:30 08:30"
		tCarnival_Race_ContestTime[5][4] = "12:30 12:30"
		tCarnival_Race_ContestTime[5][5] = "16:30 16:30"
		tCarnival_Race_ContestTime[5][6] = "20:30 20:30"
                                                      
local	tCarnival_Race_Crystal = {}
		tCarnival_Race_Crystal[15351] = {}
		tCarnival_Race_Crystal[15351]["Data"] = 1
		tCarnival_Race_Crystal[15351]["Chance"] = 10000

		tCarnival_Race_Crystal[15352] = {}
		tCarnival_Race_Crystal[15352]["Data"] = 2
		tCarnival_Race_Crystal[15352]["Chance"] = 3000
		tCarnival_Race_Crystal[15352]["AddStatus"] = 50
		tCarnival_Race_Crystal[15352]["AddSecs"] = 30
		tCarnival_Race_Crystal[15352]["AddNunRemainTime"] = 30
		tCarnival_Race_Crystal[15352]["Power"] = 30

		tCarnival_Race_Crystal[15353] = {}
		tCarnival_Race_Crystal[15353]["Data"] = 3
		tCarnival_Race_Crystal[15353]["DelStatus"] = 50
		tCarnival_Race_Crystal[15353]["Chance"] = 3000
		tCarnival_Race_Crystal[15353]["AddStatus"] = 57
		tCarnival_Race_Crystal[15353]["AddSecs"] = 30
		tCarnival_Race_Crystal[15353]["AddNunRemainTime"] = 30
		tCarnival_Race_Crystal[15353]["Power"] = 200

		tCarnival_Race_Crystal[15354] = {}
		tCarnival_Race_Crystal[15354]["Data"] = 4
		tCarnival_Race_Crystal[15354]["DelStatus"] = 57
		tCarnival_Race_Crystal[15354]["Chance"] = 10000

		tCarnival_Race_Crystal[15355] = {}
		tCarnival_Race_Crystal[15355]["Data"] = 5
		tCarnival_Race_Crystal[15355]["Chance"] = 10000
		tCarnival_Race_Crystal[15355]["MapId"] = 1002
		tCarnival_Race_Crystal[15355]["Cellx"] = 318
		tCarnival_Race_Crystal[15355]["Celly"] = 390

		tCarnival_Race_Crystal[15356] = {}
		tCarnival_Race_Crystal[15356]["Data"] = 6
		tCarnival_Race_Crystal[15356]["Chance"] = 3000
		tCarnival_Race_Crystal[15356]["AddStatus"] = 49
		tCarnival_Race_Crystal[15356]["AddSecs"] = 30
		tCarnival_Race_Crystal[15356]["AddNunRemainTime"] = 30
		tCarnival_Race_Crystal[15356]["Power"] = 30

		tCarnival_Race_Crystal[15357] = {}
		tCarnival_Race_Crystal[15357]["Data"] = 7
		tCarnival_Race_Crystal[15357]["Chance"] = 3000
		tCarnival_Race_Crystal[15357]["AddStatus"] = 51
		tCarnival_Race_Crystal[15357]["AddSecs"] = 5
		tCarnival_Race_Crystal[15357]["AddNunRemainTime"] = 5
		tCarnival_Race_Crystal[15357]["Power"] = 200

		tCarnival_Race_Crystal[15358] = {}
		tCarnival_Race_Crystal[15358]["Data"] = 8
		tCarnival_Race_Crystal[15358]["Chance"] = 3000
		tCarnival_Race_Crystal[15358]["AddStatus"] = 50
		tCarnival_Race_Crystal[15358]["AddSecs"] = 30
		tCarnival_Race_Crystal[15358]["AddNunRemainTime"] = 30
		tCarnival_Race_Crystal[15358]["Power"] = 50

		tCarnival_Race_Crystal[15359] = {}
		tCarnival_Race_Crystal[15359]["Data"] = 9
		tCarnival_Race_Crystal[15359]["DelStatus"] = 50
		tCarnival_Race_Crystal[15359]["Chance"] = 10000
		
		tCarnival_Race_Crystal[15360] = {}
		tCarnival_Race_Crystal[15360]["Data"] = 10
		
local	tCarnival_Race_Transform = {}
		tCarnival_Race_Transform[1] = {}
		tCarnival_Race_Transform[1]["Time"] = 4
		tCarnival_Race_Transform[1]["SkillType"] = 3013
		tCarnival_Race_Transform[1]["MonsterType"] = 8113

		tCarnival_Race_Transform[2] = {}
		tCarnival_Race_Transform[2]["Time"] = 2
		tCarnival_Race_Transform[2]["SkillType"] = 8043
		tCarnival_Race_Transform[2]["MonsterType"] = 31
		tCarnival_Race_Transform[2]["AddStatus"] = 55
		tCarnival_Race_Transform[2]["AddSecs"] = 2
		tCarnival_Race_Transform[2]["AddNunRemainTime"] = 2
		tCarnival_Race_Transform[2]["Power"] = 200

		tCarnival_Race_Transform[3] = {}
		tCarnival_Race_Transform[3]["Time"] = 2
		tCarnival_Race_Transform[3]["SkillType"] = 8303
		tCarnival_Race_Transform[3]["MonsterType"] = 92
		tCarnival_Race_Transform[3]["AddStatus"] = 50
		tCarnival_Race_Transform[3]["AddSecs"] = 60
		tCarnival_Race_Transform[3]["AddNunRemainTime"] = 60
		tCarnival_Race_Transform[3]["Power"] = 10

		tCarnival_Race_Transform[4] = {}
		tCarnival_Race_Transform[4]["Time"] = 2
		tCarnival_Race_Transform[4]["SkillType"] = 11631
		tCarnival_Race_Transform[4]["MonsterType"] = 13
		tCarnival_Race_Transform[4]["AddStatus"] = 57
		tCarnival_Race_Transform[4]["AddSecs"] = 60
		tCarnival_Race_Transform[4]["AddNunRemainTime"] = 60
		tCarnival_Race_Transform[4]["Power"] = 200

local	tCarnival_Race_Log = {}
		tCarnival_Race_Log["LogId"] = 10001507
		tCarnival_Race_Log["FestivalId"] = 3373
		tCarnival_Race_Log["AddExpTime"] = "0,0,0,0,10001507,2,4,10" 
		tCarnival_Race_Log["AddCultivation"] = "0,0,0,0,10001507,2,6,5" 
		tCarnival_Race_Log["Phase"] = "0,0,0,0,10001507,1,%d,0" 
		tCarnival_Race_Log["Enroll"] = "0,0,0,0,10001507,1,1,0" 

-------------------------------------------------NPC逻辑-------------------------------------------------
function Carnival_Race_Time()
	local nData = 0
	for i= 1,6 do
		if Sys_ChkDayTime(tCarnival_Race_ContestTime[1][i]) then
			nData = i
			break
		end
	end
	return nData
end

--我要报名参赛！
function Carnival_Race_Option4_15361(nNpcId)
	if not Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nEventType1 = tCarnival_Race_Stc[1]["EventType"]
	local nDataType1 = tCarnival_Race_Stc[1]["DataType"]
	local nEventType2 = tCarnival_Race_Stc[2]["EventType"]
	local nDataType2 = tCarnival_Race_Stc[2]["DataType"]
	local nTime = Carnival_Race_Time()

	if nTime ~= 0 then
		if Task_ChkStcValue(nEventType1,nDataType1,">=",1) and not Task_StcInterval(nEventType1,nDataType1,3600,0) then
			if Task_ChkStcValue(nEventType2,nDataType2,">=",11) then
				LinkNpcGossipFunc_New(nNpcId,"4-1")
			else
				LinkNpcGossipFunc_New(nNpcId,"4-2")
			end
		else
			LinkNpcGossipFunc_New(nNpcId,"4-3")
		end
	else
		LinkNpcGossipFunc_New(nNpcId,"4-4")
	end
end

--看我的吧！
function Carnival_Race_Option22_15361(nNpcId)
	if not Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nEventType1 = tCarnival_Race_Stc[1]["EventType"]
	local nDataType1 = tCarnival_Race_Stc[1]["DataType"]
	local nEventType2 = tCarnival_Race_Stc[2]["EventType"]
	local nDataType2 = tCarnival_Race_Stc[2]["DataType"]
	local nTime = Carnival_Race_Time()

	if nTime ~= 0 then
		Task_SetStatistic(nEventType1,nDataType1,nTime,1,0)
		Task_SetStcTimestamp(nEventType1,nDataType1,0,0)
		Task_SetStatistic(nEventType2,nDataType2,1,1,0)
		Sys_SaveActionFestivalLog(tCarnival_Race_Log["Enroll"])
	else
		LinkNpcGossipFunc_New(nNpcId,"4-4")
	end
end

--我完成比赛了！
function Carnival_Race_Option5_15361(nNpcId)
	if not Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end

	local nEventType1 = tCarnival_Race_Stc[1]["EventType"]
	local nDataType1 = tCarnival_Race_Stc[1]["DataType"]
	local nEventType2 = tCarnival_Race_Stc[2]["EventType"]
	local nDataType2 = tCarnival_Race_Stc[2]["DataType"]
	local nEventType3 = tCarnival_Race_Stc[3]["EventType"]
	local nDataType3 = tCarnival_Race_Stc[3]["DataType"]
	local nSysDynaGlobalData1 = Get_SysDynaGlobalData1(tCarnival_Race_Cont["GlobalDataId"])
	local nTime = Carnival_Race_Time()

--判断参加第几场比赛
	if nTime == 0 then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end

	if Task_ChkStcValue(nEventType1,nDataType1,"~=",nTime) or Task_StcInterval(nEventType1,nDataType1,1,4)then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end

--判断是否完成比赛
	if Task_ChkStcValue(nEventType2,nDataType2,"==",10) then
		LinkNpcGossipFunc_New(nNpcId,"4-6")
		return
	end

	if Task_ChkStcValue(nEventType2,nDataType2,"~=",11) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end

--判断是否领过奖励
	if Task_StcInterval(nEventType3,nDataType3,1,4) then
		Task_SetStatistic(nEventType3,nDataType3,0,1,0)
		Task_SetStcTimestamp(nEventType3,nDataType3,0,0)
	end

	if Task_ChkStcValue(nEventType3,nDataType3,"==",nTime) then
		LinkNpcGossipFunc_New(nNpcId,"4-7")
		return
	end

--判断背包空间
	if not User_CheckLeftSpace(2) then
		LinkNpcGossipFunc_New(nNpcId,"4-8")
		return
	end


--判断是否首次参加比赛
	 if Task_ChkStcValue(nEventType3,nDataType3,"==",0) then
		Task_SetStatistic(nEventType3,nDataType3,nTime,1,0)
		Task_SetStcTimestamp(nEventType3,nDataType3,0,0)
		FestivalGeneralPackage_GetGift(tCarnival_Race_Log["FestivalId"],tCarnival_Race_Log["LogId"])
		if nSysDynaGlobalData1 >= 10 then
			LinkNpcGossipFunc_New(nNpcId,"4-9")
		else
			nSysDynaGlobalData1 = nSysDynaGlobalData1 + 1
			Sys_SetSynaGlobalData1(tCarnival_Race_Cont["GlobalDataId"],nSysDynaGlobalData1)
			FestivalGeneralPackage_GetGift(tCarnival_Race_Log["FestivalId"],tCarnival_Race_Log["LogId"])
			LinkNpcGossipFunc_New(nNpcId,"5-1")
		end
	else
		Task_SetStatistic(nEventType3,nDataType3,nTime,1,0)
		Task_SetStcTimestamp(nEventType3,nDataType3,0,0)
		User_SetTransform()
		if nSysDynaGlobalData1 >= 10 then
			local nUserLev = Get_UserLevel()
			if nUserLev < G_User_MaxLev then
				User_AddExpTime(tCarnival_Race_Cont["AddExpTime"])
				Sys_SaveActionFestivalLog(tCarnival_Race_Log["AddExpTime"])
				User_TalkChannel2005(tCarnival_Race_Text[7])
				LinkNpcGossipFunc_New(nNpcId,"4-9")
			else
				User_AddCultivation(tCarnival_Race_Cont["AddCultivation"])
				Sys_SaveActionFestivalLog(tCarnival_Race_Log["AddCultivation"])
				User_TalkChannel2005(tCarnival_Race_Text[8])
				LinkNpcGossipFunc_New(nNpcId,"4-9")
			end
		else
			nSysDynaGlobalData1 = nSysDynaGlobalData1 + 1
			Sys_SetSynaGlobalData1(tCarnival_Race_Cont["GlobalDataId"],nSysDynaGlobalData1)
			FestivalGeneralPackage_GetGift(tCarnival_Race_Log["FestivalId"],tCarnival_Race_Log["LogId"])
			LinkNpcGossipFunc_New(nNpcId,"5-1")
		end
	 end

end

--水晶和衣柜
function Carnival_Race_Crystal(nNpcId)
	local nNpcId = Get_NpcId()
	local nUser_x = Get_UserPositionX()
	local nUser_y = Get_UserPositionY()
	local nNpc_x = Get_NpcPositionX()
	local nNpc_y = Get_NpcPositionY()
	local nEventType1 = tCarnival_Race_Stc[1]["EventType"]
	local nDataType1 = tCarnival_Race_Stc[1]["DataType"]
	local nEventType2 = tCarnival_Race_Stc[2]["EventType"]
	local nDataType2 = tCarnival_Race_Stc[2]["DataType"]
	local nTime = Carnival_Race_Time()

--判断距离
	if math.abs(nUser_x - nNpc_x) > 5 or math.abs(nUser_y - nNpc_y) > 5 then
		User_TalkChannel2005(tCarnival_Race_Text[1])
		return
	end

	if not Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) or (nTime == 0) then
		User_TalkChannel2005(tCarnival_Race_Text[2])
		return
	end

--判断是否报名
	if Task_ChkStcValue(nEventType1,nDataType1,"==",0) or Task_StcInterval(nEventType1,nDataType1,3600,0) then
		User_TalkChannel2005(tCarnival_Race_Text[3])
		return
	end

--判断是否完成
	if Task_ChkStcValue(nEventType2,nDataType2,"==",11) then
		User_TalkChannel2005(tCarnival_Race_Text[4])
		return
	end

--判断是否可以读条
	if Task_ChkStcValue(nEventType2,nDataType2,"==",tCarnival_Race_Crystal[nNpcId]["Data"]) then
		if nNpcId ~= 15360 then
			User_SetExplore(1,tCarnival_Race_Text[5],100,"Carnival_Race_Read</N>"..nNpcId)
			return
		else
			LinkNpcGossipFunc_New(nNpcId,"1-1")
		end
	end
		if Task_ChkStcValue(nEventType2,nDataType2,">",tCarnival_Race_Crystal[nNpcId]["Data"]) then
			User_TalkChannel2005(tCarnival_Race_Text[nNpcId][1])
		else
			User_TalkChannel2005(tCarnival_Race_Text[nNpcId][2])
		end

end

--读条后触发
function Carnival_Race_Read(nNpcId,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTime = Carnival_Race_Time()
	if not Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) or (nTime == 0) then
		User_TalkChannel2005(tCarnival_Race_Text[2],nUserId)
		return
	end

	local nEventType2 = tCarnival_Race_Stc[2]["EventType"]
	local nDataType2 = tCarnival_Race_Stc[2]["DataType"]
	local nData = Get_UserStatisticValue(nEventType2,nDataType2,nUserId) + 1
	local sLog = string.format(tCarnival_Race_Log["Phase"],nData)

	if Task_SetStatistic(nEventType2,nDataType2,nData,1,nUserId) then
		if tCarnival_Race_Crystal[nNpcId]["DelStatus"] ~= nil then
			User_DelRoleStatus(tCarnival_Race_Crystal[nNpcId]["DelStatus"],nUserId)
		end

		if Sys_Random(tCarnival_Race_Crystal[nNpcId]["Chance"],10000) then
			if tCarnival_Race_Crystal[nNpcId]["AddStatus"] ~= nil then
				User_AddRoleStatus(tCarnival_Race_Crystal[nNpcId]["AddStatus"],tCarnival_Race_Crystal[nNpcId]["Power"],tCarnival_Race_Crystal[nNpcId]["AddSecs"],1,tCarnival_Race_Crystal[nNpcId]["AddNunRemainTime"] ,1,1,0,0,nUserId)
				User_TalkChannel2005(tCarnival_Race_Text[nNpcId][3],nUserId)
				return
			end

			if tCarnival_Race_Crystal[nNpcId]["MapId"] ~= nil then
				User_ChgMap(tCarnival_Race_Crystal[nNpcId]["MapId"],tCarnival_Race_Crystal[nNpcId]["Cellx"],tCarnival_Race_Crystal[nNpcId]["Celly"],0,nUserId)
				User_TalkChannel2005(tCarnival_Race_Text[nNpcId][3],nUserId)
				return
			end
		end
			User_TalkChannel2005(tCarnival_Race_Text[nNpcId][1],nUserId)
			Sys_SaveActionFestivalLog(sLog,nUserId)
	end

end

--变身
function Carnival_Race_Transform(nNpcId,nOption)

	User_SetExplore(tCarnival_Race_Transform[nOption]["Time"],tCarnival_Race_Text[6],100,"Carnival_Race_Transform1</N>"..nNpcId.."</N>"..nOption)
	
end

function Carnival_Race_Transform1(nNpcId,nOption,nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	local nTime = Carnival_Race_Time()
	if not Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) or (nTime == 0) then
		User_TalkChannel2005(tCarnival_Race_Text[2],nUserId)
		return
	end

	local nEventType2 = tCarnival_Race_Stc[2]["EventType"]
	local nDataType2 = tCarnival_Race_Stc[2]["DataType"]

	if Task_SetStatistic(nEventType2,nDataType2,11,1,nUserId) then
		User_TransForm(tCarnival_Race_Transform[nOption]["SkillType"],0,tCarnival_Race_Transform[nOption]["MonsterType"],60,nUserId)
		if tCarnival_Race_Transform[nOption]["AddStatus"]~= nil then
			User_AddRoleStatus(tCarnival_Race_Transform[nOption]["AddStatus"],tCarnival_Race_Transform[nOption]["Power"],tCarnival_Race_Transform[nOption]["AddSecs"],1,tCarnival_Race_Transform[nOption]["AddNunRemainTime"],1,1,0,0,nUserId)
		end
		User_TalkChannel2005(tCarnival_Race_Text[nNpcId][3][nOption],nUserId)
	end

end

function Carnival_Race_Timechk()
	if not Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) then
		return
	end

	for j = 2,5 do
		for k = 1,6 do
			if Sys_ChkDayTime(tCarnival_Race_ContestTime[j][k]) then
				if j == 5 then
					Sys_ResetAllSynaGlobalData(tCarnival_Race_Cont["GlobalDataId"])
				end
				Sys_SystemBroadcast(tCarnival_Race_Text["SystemBroadcast"][j])
				break
			end
		end
	end
end


-------------------------------------------------NPC模板-------------------------------------------------
--裁判员草上飞
tNpcFace[2184] = 49
tNpcGossip[15361] = tNpcGossip[15361] or DefaultNpc:new{}
tNpcGossip[15361]["OptionHidden"] = 1

--活动前
tNpcGossip[15361]["Text1-1"] = {111,112}
tNpcGossip[15361]["Text111"] = tCarnival_Race_Text[15361]["Text111"]
tNpcGossip[15361]["Text112"] = tCarnival_Race_Text[15361]["Text112"]
tNpcGossip[15361]["tOption1-1"] = {1}
tNpcGossip[15361]["Option1"] = tCarnival_Race_Text[15361]["Option1"]
tNpcGossip[15361]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tCarnival_Race_Cont["Beftime"])
end 

--活动后
tNpcGossip[15361]["Text1-2"] = {121}
tNpcGossip[15361]["Text121"] = tCarnival_Race_Text[15361]["Text121"]
tNpcGossip[15361]["tOption1-2"] = {2}
tNpcGossip[15361]["Option2"] = tCarnival_Race_Text[15361]["Option2"]
tNpcGossip[15361]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tCarnival_Race_Cont["Aftime"])
end 

--活动中
tNpcGossip[15361]["Text1-3"] = {131}
tNpcGossip[15361]["Text131"] = tCarnival_Race_Text[15361]["Text131"]
tNpcGossip[15361]["tOption1-3"] = {3}
tNpcGossip[15361]["Option3"] = tCarnival_Race_Text[15361]["Option3"]
tNpcGossip[15361]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) and not User_JudgeLevelAndMetempsychosis(tCarnival_Race_Cont["Level"],tCarnival_Race_Cont["Metempsychosis"])
end 

tNpcGossip[15361]["Text1-4"] = {141,142,143}
tNpcGossip[15361]["Text141"] = tCarnival_Race_Text[15361]["Text141"]
tNpcGossip[15361]["Text142"] = tCarnival_Race_Text[15361]["Text142"]
tNpcGossip[15361]["Text143"] = tCarnival_Race_Text[15361]["Text143"]
tNpcGossip[15361]["tOption1-4"] = {4,5,6,7}
tNpcGossip[15361]["Option4"] = tCarnival_Race_Text[15361]["Option4"]
tNpcGossip[15361]["Option5"] = tCarnival_Race_Text[15361]["Option5"]
tNpcGossip[15361]["Option6"] = tCarnival_Race_Text[15361]["Option6"]
tNpcGossip[15361]["Option7"] = tCarnival_Race_Text[15361]["Option7"]
tNpcGossip[15361]["ChkFunc1-4"] = function ()
	return Sys_ChkFullTime(tCarnival_Race_Cont["Nowtime"]) and User_JudgeLevelAndMetempsychosis(tCarnival_Race_Cont["Level"],tCarnival_Race_Cont["Metempsychosis"])
end 
tNpcGossip[15361]["OptionFunc4"]="Carnival_Race_Option4_15361</N>15361"
tNpcGossip[15361]["OptionFunc5"]="Carnival_Race_Option5_15361</N>15361"
tNpcGossip[15361]["OptionPoint6"]="2-1"

tNpcGossip[15361]["Text2-1"] = {211,212,213}
tNpcGossip[15361]["Text211"] = tCarnival_Race_Text[15361]["Text211"]
tNpcGossip[15361]["Text212"] = tCarnival_Race_Text[15361]["Text212"]
tNpcGossip[15361]["Text213"] = tCarnival_Race_Text[15361]["Text213"]
tNpcGossip[15361]["tOption2-1"] = {10,11}
tNpcGossip[15361]["Option10"] = tCarnival_Race_Text[15361]["Option10"]
tNpcGossip[15361]["Option11"] = tCarnival_Race_Text[15361]["Option11"]

tNpcGossip[15361]["OptionPoint10"]="3-1"
tNpcGossip[15361]["OptionPoint11"]="1"

tNpcGossip[15361]["Text3-1"] = {311,312}
tNpcGossip[15361]["Text311"] = tCarnival_Race_Text[15361]["Text311"]
tNpcGossip[15361]["Text312"] = tCarnival_Race_Text[15361]["Text312"]
tNpcGossip[15361]["tOption3-1"] = {12}
tNpcGossip[15361]["Option12"] = tCarnival_Race_Text[15361]["Option12"]

tNpcGossip[15361]["Text4-1"] = {411}
tNpcGossip[15361]["Text411"] = tCarnival_Race_Text[15361]["Text411"]
tNpcGossip[15361]["tOption4-1"] = {20}
tNpcGossip[15361]["Option20"] = tCarnival_Race_Text[15361]["Option20"]

tNpcGossip[15361]["Text4-2"] = {421}
tNpcGossip[15361]["Text421"] = tCarnival_Race_Text[15361]["Text421"]
tNpcGossip[15361]["tOption4-2"] = {21}
tNpcGossip[15361]["Option21"] = tCarnival_Race_Text[15361]["Option21"]

tNpcGossip[15361]["Text4-3"] = {431}
tNpcGossip[15361]["Text431"] = tCarnival_Race_Text[15361]["Text431"]
tNpcGossip[15361]["tOption4-3"] = {22}
tNpcGossip[15361]["Option22"] = tCarnival_Race_Text[15361]["Option22"]
tNpcGossip[15361]["OptionFunc22"]="Carnival_Race_Option22_15361</N>15361"

tNpcGossip[15361]["Text4-4"] = {441,442}
tNpcGossip[15361]["Text441"] = tCarnival_Race_Text[15361]["Text441"]
tNpcGossip[15361]["Text442"] = tCarnival_Race_Text[15361]["Text442"]
tNpcGossip[15361]["tOption4-4"] = {23}
tNpcGossip[15361]["Option23"] = tCarnival_Race_Text[15361]["Option23"]

tNpcGossip[15361]["Text4-5"] = {451,452}
tNpcGossip[15361]["Text451"] = tCarnival_Race_Text[15361]["Text451"]
tNpcGossip[15361]["Text452"] = tCarnival_Race_Text[15361]["Text452"]
tNpcGossip[15361]["tOption4-5"] = {24}
tNpcGossip[15361]["Option24"] = tCarnival_Race_Text[15361]["Option24"]

tNpcGossip[15361]["Text4-6"] = {461}
tNpcGossip[15361]["Text461"] = tCarnival_Race_Text[15361]["Text461"]
tNpcGossip[15361]["tOption4-6"] = {25}
tNpcGossip[15361]["Option25"] = tCarnival_Race_Text[15361]["Option25"]

tNpcGossip[15361]["Text4-7"] = {471}
tNpcGossip[15361]["Text471"] = tCarnival_Race_Text[15361]["Text471"]
tNpcGossip[15361]["tOption4-7"] = {26}
tNpcGossip[15361]["Option26"] = tCarnival_Race_Text[15361]["Option26"]

tNpcGossip[15361]["Text4-8"] = {481}
tNpcGossip[15361]["Text481"] = tCarnival_Race_Text[15361]["Text481"]
tNpcGossip[15361]["tOption4-8"] = {27}
tNpcGossip[15361]["Option27"] = tCarnival_Race_Text[15361]["Option27"]

tNpcGossip[15361]["Text4-9"] = {491}
tNpcGossip[15361]["Text491"] = tCarnival_Race_Text[15361]["Text491"]
tNpcGossip[15361]["tOption4-9"] = {28}
tNpcGossip[15361]["Option28"] = tCarnival_Race_Text[15361]["Option28"]

tNpcGossip[15361]["Text5-1"] = {511}
tNpcGossip[15361]["Text511"] = tCarnival_Race_Text[15361]["Text511"]
tNpcGossip[15361]["tOption5-1"] = {28}
tNpcGossip[15361]["Option29"] = tCarnival_Race_Text[15361]["Option29"]

--换装衣柜
tNpcGossip[15360] = tNpcGossip[15360] or DefaultNpc:new{}
tNpcGossip[15360]["OptionHidden"] = 1

tNpcGossip[15360]["Text1-1"] = {111}
tNpcGossip[15360]["Text111"] = tCarnival_Race_Text[15360]["Text111"]
tNpcGossip[15360]["tOption1-1"] = {1,2,3,4,5}
tNpcGossip[15360]["Option1"] = tCarnival_Race_Text[15360]["Option1"]
tNpcGossip[15360]["Option2"] = tCarnival_Race_Text[15360]["Option2"]
tNpcGossip[15360]["Option3"] = tCarnival_Race_Text[15360]["Option3"]
tNpcGossip[15360]["Option4"] = tCarnival_Race_Text[15360]["Option4"]
tNpcGossip[15360]["Option5"] = tCarnival_Race_Text[15360]["Option5"]

tNpcGossip[15360]["OptionFunc1"]="Carnival_Race_Transform</N>15360</N>1"
tNpcGossip[15360]["OptionFunc2"]="Carnival_Race_Transform</N>15360</N>2"
tNpcGossip[15360]["OptionFunc3"]="Carnival_Race_Transform</N>15360</N>3"
tNpcGossip[15360]["OptionFunc4"]="Carnival_Race_Transform</N>15360</N>4"

--时间检测
-- table.insert(tSystem_Prompet_Func,Carnival_Race_Timechk)

