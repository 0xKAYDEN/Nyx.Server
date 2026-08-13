------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]外部任务兑换领奖优化-国境任务
--Purpose:	外部任务兑换领奖优化
--Creator: 	陈莺
--Created:	2017/3/10
------------------------------------------------------------------------------------
---命名规范
-- CrossServiceReward_

--------------------------------------国境任务一键领取------------------------------


local tCrossServiceReward_TaskId = {}
	tCrossServiceReward_TaskId[1] = {}
	tCrossServiceReward_TaskId[1]["Id"] = 35014  --【国境】筑防设障
	tCrossServiceReward_TaskId[1]["Pos1"] = "6"
	tCrossServiceReward_TaskId[1]["Data1"] = 5 

	tCrossServiceReward_TaskId[2] = {}
	tCrossServiceReward_TaskId[2]["Id"] = 35007  --【国境】先发制人
	tCrossServiceReward_TaskId[2]["Pos1"] = "6"
	tCrossServiceReward_TaskId[2]["Data1"] = 300

	tCrossServiceReward_TaskId[3] = {}
	tCrossServiceReward_TaskId[3]["Id"] = 35024  --【国境】荒村焚妖
	tCrossServiceReward_TaskId[3]["Pos1"] = "2"  --完成任务
	tCrossServiceReward_TaskId[3]["Data1"] = 1
	tCrossServiceReward_TaskId[3]["Pos2"] = "6"  --标记领奖
	tCrossServiceReward_TaskId[3]["Data2"] = 1

	tCrossServiceReward_TaskId[4] = {}
	tCrossServiceReward_TaskId[4]["Id"] = 35025  --【国境】降伏圣兽
	tCrossServiceReward_TaskId[4]["Pos1"] = "6"  --完成任务标记
	tCrossServiceReward_TaskId[4]["Data1"] = 1
	tCrossServiceReward_TaskId[4]["Pos2"] = "1"  -- 标记领奖
	tCrossServiceReward_TaskId[4]["Data2"] = 1

local tCrossServiceReward_Stc = {}
	tCrossServiceReward_Stc[1] = {}
	tCrossServiceReward_Stc[1]["EventType"] = 139   --【国境】筑防设障
	tCrossServiceReward_Stc[1]["DataType"] = 01	
	tCrossServiceReward_Stc[1]["Date"] = 10	

	tCrossServiceReward_Stc[2] = {}
	tCrossServiceReward_Stc[2]["EventType"] = 136   --【国境】水晶犒赏
	tCrossServiceReward_Stc[2]["DataType"] = 74	
	tCrossServiceReward_Stc[2]["Date"] = 1	
	
local tCrossServiceReward_Log = {}
	tCrossServiceReward_Log[3] = "0,0,0,0,18000104,1[1],0,0" --完成点火任务
	tCrossServiceReward_Log[4] = "0,0,0,0,12000261,2,3200005,0" --降伏圣兽
	
local tCrossServiceReward_ItemId = {}
	tCrossServiceReward_ItemId[1] = {}
	tCrossServiceReward_ItemId[1]["RewardItem"] = {}
	tCrossServiceReward_ItemId[1]["RewardItem"][1] = {}
	tCrossServiceReward_ItemId[1]["RewardItem"][1]["Id"] = 3200005
	tCrossServiceReward_ItemId[1]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"
	
	tCrossServiceReward_ItemId[2] = {}
	tCrossServiceReward_ItemId[2]["RewardItem"] = {}
	tCrossServiceReward_ItemId[2]["RewardItem"][1] = {}
	tCrossServiceReward_ItemId[2]["RewardItem"][1]["Id"] = 3200004
	tCrossServiceReward_ItemId[2]["RewardItem"][1]["Attr"] = "0 1 0 1440 1"

--------------------------------------国境任务--------------------------------

--判断任务是否完成
function CrossServiceReward_ChkTask(nNum)
	
	local nTaskId = tCrossServiceReward_TaskId[nNum]["Id"]
	--检测掩码是否存在
	if not Task_ChkTaskDetail(nTaskId) then
		return false
	end
	local nTime = Get_TaskDetail(nTaskId,tCrossServiceReward_TaskId[nNum]["Pos1"])
	if nTime >= tCrossServiceReward_TaskId[nNum]["Data1"] then
		return true
	else
		return false
	end
end
---判断任务是否领取过
function CrossServiceReward_ChkReward(i)
	CrossServiceReward_SetStc(i)  --隔天掩码重置
	nFlag = 0
	-- for i = 1,nNum do
		if i <= 2 then
			if CrossServiceReward_ChkStc(i) then
				nFlag = nFlag+1
			end
		else
			local nTaskid = tCrossServiceReward_TaskId[i]["Id"]
			local nScore = Get_TaskDetail(nTaskid,tCrossServiceReward_TaskId[i]["Pos2"])
			if nScore < tCrossServiceReward_TaskId[i]["Data2"] then
				nFlag = nFlag+1
			end
		end
	-- end
	return nFlag
end
---stc判断是否已经领取过奖励
function CrossServiceReward_ChkStc(nNum)
	local nEvent = tCrossServiceReward_Stc[nNum]["EventType"]
	local nType = tCrossServiceReward_Stc[nNum]["DataType"]
	if Task_ChkStcValue(nEvent,nType,"<",tCrossServiceReward_Stc[nNum]["Date"]) then
		return true
	else
		return false
	end
end
--隔天掩码重置
function CrossServiceReward_SetStc(nNum)
	
	if nNum >= 3 then
		return
	end

	local nEvent = tCrossServiceReward_Stc[nNum]["EventType"]
	local nType = tCrossServiceReward_Stc[nNum]["DataType"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
	end
end
-- 筑防设障
function CrossServiceReward_GetDefense()
	local nEventType = tCrossServiceReward_Stc[1]["EventType"]
	local nDataType = tCrossServiceReward_Stc[1]["DataType"]
	Task_SetStatistic(nEventType,nDataType,tCrossServiceReward_Stc[1]["Date"],1,0)
	Task_SetStcTimestamp(nEventType,nDataType,0,0)

	local sWord1= Kuafu_Defense_Award(nNpcId,"Normal")
	-- User_TalkChannel2005(tCrossServiceReward_Text[17400][1])
end
	
--先发制人
function CrossServiceReward_GetFirstPerson()
	FirstPerson_SetComplete()
	-- User_TalkChannel2005(tCrossServiceReward_Text[17400][2])
end


-- 【国境】荒村焚妖
function CrossServiceReward_Getvillages()

	Task_SetTaskDetailData2(tCrossServiceReward_TaskId[3]["Id"],0)
	Task_SetTaskDetailData6(tCrossServiceReward_TaskId[3]["Id"],1)
	Task_SetTaskDetailCompleteFlag(tCrossServiceReward_TaskId[3]["Id"],1)
	Sys_SaveActionTaskLog(tCrossServiceReward_Log[3])
	National_War_AddIntegral(30)
	-- Item_AddNewItem(3200004,"0 1 0 1440 1")
	RewardTemplate_UseItem(tCrossServiceReward_ItemId[2])
end

-- 【国境】降伏圣兽
function CrossServiceReward_GetKillBoss(nUserId)
	local nNowUserId = nUserId or Get_UserId()
	local nTaskId = tCrossServiceReward_TaskId[4]["Id"]
	-- 给奖励
	Task_SetTaskDetailData1(nTaskId,1,nNowUserId)
	Task_SetTaskDetailCompleteFlag(nTaskId,1,nNowUserId)
	Task_SetTaskDetailData7(nTaskId,os.time(),nNowUserId)
	RewardTemplate_UseItem(tCrossServiceReward_ItemId[1],nNowUserId)
	-- Item_AddNewItem(3200005,"0 1 0 1440 1")
	Sys_SaveActionFestivalLog(tCrossServiceReward_Log[4],nNowUserId)
end

function CrossServiceReward_Get(nNpcId)
	
	
	---判断任务是否都已经都领取
	
	local nIndex = 0
	for i = 1,#tCrossServiceReward_TaskId do
		nIndex = nIndex + CrossServiceReward_ChkReward(i)
	end
	if nIndex == 0 then
		LinkNpcGossipFunc_New(nNpcId,"444-3")
		return
	end

	---判断任务都没完成
	local nNumber = 0
	for i = 1,#tCrossServiceReward_TaskId do
		local nNum22 = CrossServiceReward_ChkReward(i)
		if CrossServiceReward_ChkTask(i) and (nNum22 == 1) then
			nNumber = nNumber + 1
		end
	end
	if nNumber == 0 then
		LinkNpcGossipFunc_New(nNpcId,"444-1")
		return 
	end
	
	--领取奖励

	local tTab = {}
	for i = 1,#tCrossServiceReward_TaskId do
		
		local nNum1 = CrossServiceReward_ChkReward(i)
		if nNum1 == 1 and CrossServiceReward_ChkTask(i) then
			table.insert(tTab,i)
		end
	end
--判断背包空间
	local nSpace = #tTab
	if not User_CheckLeftSpace(nSpace) then
		local sText = string.format(tCrossServiceReward_Text[17400]["Text44414"],nSpace)
		Sys_DialogText(sText)
		Sys_DialogOption(tCrossServiceReward_Text[17400]["Option44411"])
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	for a,v in pairs(tTab) do
		CrossServiceReward_GetItem(v)

		User_TalkChannel2005(tCrossServiceReward_Text[17400][v])
	end
	User_EffectAdd("self","angelwing")

	-- Sys_DialogText(tCrossServiceReward_Text[17400]["Text"]["Reward1"])
	Sys_DialogText(tCrossServiceReward_Text[17400]["Text"]["Reward2"])
	Sys_DialogText(tCrossServiceReward_Text[17400]["Text"]["Reward3"])
	for a,v in pairs(tTab) do
		Sys_DialogText(tCrossServiceReward_Text[17400]["Text"][v])
	end
	Sys_DialogText(tCrossServiceReward_Text[17400]["Text"]["Reward2"])
	Sys_DialogOption(tCrossServiceReward_Text[17400]["Text"]["Option"])
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()
end

function CrossServiceReward_GetItem(nData)
	if nData == 1 then
		CrossServiceReward_GetDefense()
		return
	end
	if nData == 2 then
		CrossServiceReward_GetFirstPerson()
		return
	end

	if nData == 3 then
		CrossServiceReward_Getvillages()
		return
	end
	if nData == 4 then
		CrossServiceReward_GetKillBoss()
		return
	end
end


----------------------------------国境任务npc----------------------------------------

-- 一键领取任务奖励

tNpcGossip[17400]["Option4441"] = tCrossServiceReward_Text[17400]["Option4441"]
tNpcGossip[17400]["OptionFunc4441"] = "CrossServiceReward_Get</N>17400"

-- 【接7、领取已完成的任务奖励，玩家未完成任何任务，NPC对白】
tNpcGossip[17400]["Text444-1"] = {44411}
tNpcGossip[17400]["Text44411"] = tCrossServiceReward_Text[17400]["Text44411"]
tNpcGossip[17400]["tOption444-1"] = {44411}
tNpcGossip[17400]["Option44411"] = tCrossServiceReward_Text[17400]["Option44411"]
-- 【接7，玩家气力值已满，NPC对白】
tNpcGossip[17400]["Text444-2"] = {44412}
tNpcGossip[17400]["Text44412"] = tCrossServiceReward_Text[17400]["Text44412"]
tNpcGossip[17400]["tOption444-2"] = {44411}
-- 【接7，玩家已领取已完成的任务奖励,NPC对白】
tNpcGossip[17400]["Text444-3"] = {44413}
tNpcGossip[17400]["Text44413"] = tCrossServiceReward_Text[17400]["Text44413"]
tNpcGossip[17400]["tOption444-3"] = {44411}
-- 【接7，玩家背包满，NPC对白】
tNpcGossip[17400]["Text444-4"] = {44414}
tNpcGossip[17400]["Text44414"] = tCrossServiceReward_Text[17400]["Text44414"]
tNpcGossip[17400]["tOption444-4"] = {44411}



