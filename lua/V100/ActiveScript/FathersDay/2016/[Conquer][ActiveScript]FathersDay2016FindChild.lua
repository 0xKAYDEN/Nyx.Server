---Name:160413[简体征服][活动脚本]2016父亲节活动之千里寻子(6.18-6.22)
--Creator: 	陈莺
--Created:	2016-04-13
--------------------------------------------------------------------------------
--npc 
-- 7930,'陈长泰'
-- 7931,'梅郎中'
-- 7932,'公孙道明'
-- 7933,'公孙震川'

--物品
-- 725071,蛇胆
-- 725072,公孙震川的信
---taskid  
-- 995 --接任务领取奖励id
-- data1 == 1 表示接任务
-- data2 == 1 表示接梅郎中（收集5个蛇胆）任务
-- data3 == 1 完成接梅郎中（收集5个蛇胆）任务
-- data4 == 1 接公孙道明（杀30个鬼刃）任务
-- data5 == 1 完成公孙道明（杀5个狡诈鬼刃）任务
-- complete 表示今日任务已完成
---996 --打怪任务
-- data1 记录杀鬼刃数量 30
-- data2 完成鬼刃任务
-- data3 记录杀狡诈鬼刃数量 5

---logid 12000355

--命名规范
--tFathersDay2016FindChild_
------------------------------------------------------------------------------------------
local tFathersDay2016FindChild_Data = {}
	tFathersDay2016FindChild_Data["Bef_Time"]= "2017-01-01 00:00 2017-06-14 23:59"
	tFathersDay2016FindChild_Data["Now_Time"] = "2017-06-15 00:00 2017-06-21 23:59"
	tFathersDay2016FindChild_Data["Level"] = 80 
	tFathersDay2016FindChild_Data["Metempsychosis"] = 0
	tFathersDay2016FindChild_Data["Complete"] = 1
	tFathersDay2016FindChild_Data["Space"] = 1
	tFathersDay2016FindChild_Data["GetEffect"] = "angelwing"
	tFathersDay2016FindChild_Data["1"] = 1
	tFathersDay2016FindChild_Data["3"] = 3

	tFathersDay2016FindChild_Data[1] = 1000  -- 其他职业
	tFathersDay2016FindChild_Data[2] = 500  -- 弓手
--任务id
	tFathersDay2016FindChild_Data["TaskId"] = {}
	tFathersDay2016FindChild_Data["TaskId"][1] = 995  --npc接任务id
	tFathersDay2016FindChild_Data["TaskId"][2] = 996  --打怪id
--鬼刃
	tFathersDay2016FindChild_Data[17] = {}
	tFathersDay2016FindChild_Data[17]["data1"] = "1"
	tFathersDay2016FindChild_Data[17]["Num"] = 30
--狡诈鬼刃
	tFathersDay2016FindChild_Data[76] = {}
	tFathersDay2016FindChild_Data[76]["data1"] = "3"
	tFathersDay2016FindChild_Data[76]["data2"] = "2"
	tFathersDay2016FindChild_Data[76]["Num"] = 5
	
local tFathersDay2016FindChild_Log = {}
	tFathersDay2016FindChild_Log["Accept"] = "0,0,0,0,12000355,1[1],0,0"  ---接任务
	tFathersDay2016FindChild_Log["GetItem"] = "0,0,0,0,12000355,2,%d,1"  --获得任务物品
	tFathersDay2016FindChild_Log["KillMonster1"] = "0,0,0,0,12000355,1,0,0" --打怪log
	tFathersDay2016FindChild_Log["Complete"] = "0,0,0,0,12000355,1[2],3003625,1"  --完成任务获得节日礼包
	tFathersDay2016FindChild_Log["Replacement"] = "0,0,0,0,12000355,2[1],725072,1"  --补领信封
	tFathersDay2016FindChild_Log["LogId"] = 12000355
	tFathersDay2016FindChild_Log["FestivalId"] = 994

local tFathersDay2016FindChild_ItemId = {}
--点击物品给物品
	tFathersDay2016FindChild_ItemId[725071] = 725071  --蛇胆
	tFathersDay2016FindChild_ItemId[725072] = 725072  ---信
	tFathersDay2016FindChild_ItemId["Num"] = 5  --蛇胆数量

local tFathersDay2016FindChild_Position = {}
	tFathersDay2016FindChild_Position[7930] = {1020,555,546} --梅郎中
	tFathersDay2016FindChild_Position[7931] = {1000,466,619} --梅郎中
	tFathersDay2016FindChild_Position[7932] = {1015,758,559} --公孙道明
	tFathersDay2016FindChild_Position[7933] = {1002,298,366} --公孙震川
	
	tFathersDay2016FindChild_Position[11] = {1020,322,621} --蛇胆
	tFathersDay2016FindChild_Position[12] = {1000,264,290} --鬼刃

local tFathersDay2016FindChild_Function = {}
	tFathersDay2016FindChild_Function[1] = Task_SetTaskDetailData1
	tFathersDay2016FindChild_Function[2] = Task_SetTaskDetailData2
	tFathersDay2016FindChild_Function[3] = Task_SetTaskDetailData3
	tFathersDay2016FindChild_Function[4] = Task_SetTaskDetailData4
	tFathersDay2016FindChild_Function[5] = Task_SetTaskDetailData5
	tFathersDay2016FindChild_Function[6] = Task_SetTaskDetailData6
	tFathersDay2016FindChild_Function[7] = Task_SetTaskDetailData7
	tFathersDay2016FindChild_Function["1"] = Get_TaskDetailData1
	tFathersDay2016FindChild_Function["3"] = Get_TaskDetailData3

---------------------------------------------逻辑部分---------------------------------------------
---判断是否有任务
function FathersDay2016FindChild_AcceptTask(nNum)
	local nTaskId = tFathersDay2016FindChild_Data["TaskId"][nNum]
	if Task_ChkTaskDetail(nTaskId,0) then
		return true
	else
		return false
	end
end
---检测时间
function FathersDay2016FindChild_ChkTime()
	if not Sys_ChkFullTime(tFathersDay2016FindChild_Data["Now_Time"]) then
		return true
	end
	return false
end
--检测等级
function FathersDay2016FindChild_ChkLevel()
	if not User_JudgeLevelAndMetempsychosis(tFathersDay2016FindChild_Data["Level"],tFathersDay2016FindChild_Data["Metempsychosis"]) then 
		return true
	else
		return false
	end
end
---判断是否完成任务
function FathersDay2016FindChild_FinishTask(nNum,sPos,nComplete)
	local nTaskId = tFathersDay2016FindChild_Data["TaskId"][nNum]
	-- local nComplete = tFathersDay2016FindChild_Data["Complete"]
	if FathersDay2016FindChild_AcceptTask(nNum) then
		if Task_ChkTaskDetailValue(nTaskId,sPos,">=",nComplete,0) then
			return true
		else
			return false
		end
	end
end
----置任务阶段掩码
function FathersDay2016FindChild_SetTaskStc(nFlag,nNum,nData)
	local nTaskId = tFathersDay2016FindChild_Data["TaskId"][nFlag]
	local sFunc = tFathersDay2016FindChild_Function[nNum]
	sFunc(nTaskId,nData,0)
	Task_SetTaskDetailData7(nTaskId,os.time())
end

------隔天清零
function FathersDay2016FindChild_ResetStc()
	local nTaskId1 = tFathersDay2016FindChild_Data["TaskId"][1]
	local nTaskId2 = tFathersDay2016FindChild_Data["TaskId"][2]
	if Task_ChkTaskDetail(nTaskId1,0) then
		if FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) then
			if Task_DetailInterval(nTaskId1,1,4) then
				-- Task_SetTaskDetailData7(nTaskId1,os.time())  ---设置任务id
				Task_SetTaskDetailCompleteFlag(nTaskId1,0,0)
				Task_DelTaskDetail(nTaskId1)
				if Task_ChkTaskDetail(nTaskId2,0) then
					Task_DelTaskDetail(nTaskId2,0)
				end
			end
		end
	end
end

----接受任务
function FathersDay2016FindChild_Accept(nNpcId)
	FathersDay2016FindChild_ResetStc()  --隔天清零
	if FathersDay2016FindChild_ChkTime() then  --检测时间
		return
	end
	if FathersDay2016FindChild_ChkLevel() then  --判断等级
		User_TalkChannel2005(tFathersDay2016FindChild_Text["MsgBox"]["NoLevel"])
		return
	end
	if FathersDay2016FindChild_AcceptTask(1) then  --是否有任务
		return
	end
	if FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) then  --是否已完成任务
		User_TalkChannel2005(tFathersDay2016FindChild_Text[7930]["Text321"])
		return
	end
	local nTaskId = tFathersDay2016FindChild_Data["TaskId"][1]
	if Task_AddTaskDetail(nTaskId) then --创建任务
		Task_SetTaskDetailData7(nTaskId,os.time())  ---设置任务id
		FathersDay2016FindChild_SetTaskStc(1,1,1)
		Sys_SaveActionFestivalLog(tFathersDay2016FindChild_Log["Accept"])  --打log
		Sys_MsgBox(tFathersDay2016FindChild_Text["MsgBox"]["Accept"],"FathersDay2016FindChild_Goto</N>" .. nNpcId)
	end
end
----活动节日礼包
function FathersDay2016FindChild_RewardGift(nNpcId)
	FathersDay2016FindChild_ResetStc()  -- 隔天清零
	if FathersDay2016FindChild_ChkTime() then  --检测时间
		return
	end
	if FathersDay2016FindChild_ChkLevel() then  --判断等级
		User_TalkChannel2005(tFathersDay2016FindChild_Text["MsgBox"]["NoLevel"])
		return
	end
	if not FathersDay2016FindChild_AcceptTask(1) then  --是否有任务
		return
	end
	if FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) then  --是否已完成任务
		User_TalkChannel2005(tFathersDay2016FindChild_Text[7930]["Text321"])
		return
	end
	local nItemId =tFathersDay2016FindChild_ItemId[725072]
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nTaskId = tFathersDay2016FindChild_Data["TaskId"][1]
		local nComplete = tFathersDay2016FindChild_Data["Complete"]
		Task_SetTaskDetailCompleteFlag(nTaskId,nComplete,0)
		Task_SetTaskDetailData7(nTaskId,os.time())
		FestivalGeneralPackage_GetGift(tFathersDay2016FindChild_Log["FestivalId"],tFathersDay2016FindChild_Log["LogId"])
		Sys_SaveActionFestivalLog(tFathersDay2016FindChild_Log["Complete"])
		User_EffectAdd("self",tFathersDay2016FindChild_Data["GetEffect"])  --光效
		User_TalkChannel2005(tFathersDay2016FindChild_Text["MsgBox"]["GetLetter"])  --提示
	end
end
---传送
function FathersDay2016FindChild_Goto(nNpcId,nUserId)
	local nMapId = tFathersDay2016FindChild_Position[nNpcId][1]
	local nPosX = tFathersDay2016FindChild_Position[nNpcId][2]
	local nPosY = tFathersDay2016FindChild_Position[nNpcId][3]
	User_UserRandBoundTrans(nMapId,nPosX,nPosY,5,5,1,nUserId)
end

-----------------npc 梅郎中
function FathersDay2016FindChild_Npc7931(nNpcId)
	local nItemId = tFathersDay2016FindChild_ItemId[725071]
	local nNum = tFathersDay2016FindChild_ItemId["Num"]
	if Item_ChkMulItem(nItemId,nItemId,nNum) and Item_DelMulItem(nItemId,nItemId,nNum) then
		FathersDay2016FindChild_SetTaskStc(1,3,1)  --置掩码
		FathersDay2016FindChild_Goto(nNpcId)  --传送
	end
end

-----------------npc 【公孙道明】
function FathersDay2016FindChild_Npc7932_1()
	local nTaskId = tFathersDay2016FindChild_Data["TaskId"][2]
	FathersDay2016FindChild_SetTaskStc(1,4,1)
	-- Task_DelTaskDetail(nTaskId,0)  --删除任务id
	if Task_AddTaskDetail(nTaskId) then --创建任务
		Sys_MsgBox(tFathersDay2016FindChild_Text[7932]["KillMonster1"]) --出提示
	end
	FathersDay2016FindChild_Goto(12)
end
function FathersDay2016FindChild_Npc7932_2()
	if FathersDay2016FindChild_AcceptTask(2) and FathersDay2016FindChild_FinishTask(2,"1",tFathersDay2016FindChild_Data[17]["Num"]) then
		if not FathersDay2016FindChild_FinishTask(2,"2",1) then
			FathersDay2016FindChild_SetTaskStc(2,2,1)  --data2
			-- FathersDay2016FindChild_SetTaskStc(2,1,20) --data1
			Sys_MsgBox(tFathersDay2016FindChild_Text[7932]["KillMonster2"])
		end
	end
	FathersDay2016FindChild_Goto(12)
end
function FathersDay2016FindChild_Npc7932_3(nNpcId)
	if FathersDay2016FindChild_FinishTask(2,"2",1) and FathersDay2016FindChild_FinishTask(2,"3",tFathersDay2016FindChild_Data[76]["Num"]) then
		FathersDay2016FindChild_SetTaskStc(1,5,1)  --data5
		Sys_MsgBox(tFathersDay2016FindChild_Text[7932]["Goto"],"FathersDay2016FindChild_Goto</N>" .. nNpcId)
	end
end
-----------【公孙震川】
function FathersDay2016FindChild_7933_1(nNpcId)
	if FathersDay2016FindChild_FinishTask(1,"5",1) and FathersDay2016FindChild_FinishTask(1,"6",2) then
		local nItemId = tFathersDay2016FindChild_ItemId[725072]
		if not Item_ChkItem(nItemId) then
			if not User_CheckLeftSpace(tFathersDay2016FindChild_Data["Space"]) then
				User_TalkChannel2005(tFathersDay2016FindChild_Text[7933]["NoSpace"])
				return
			end
			Item_AddItem(nItemId)
			Sys_SaveActionFestivalLog(tFathersDay2016FindChild_Log["Replacement"])
			FathersDay2016FindChild_Goto(nNpcId)
		end
	end
end
function FathersDay2016FindChild_7933_2(nNpcId)
	if FathersDay2016FindChild_FinishTask(1,"5",1) and (not FathersDay2016FindChild_FinishTask(1,"6",2)) then
		if not User_CheckLeftSpace(tFathersDay2016FindChild_Data["Space"]) then
			User_TalkChannel2005(tFathersDay2016FindChild_Text[7933]["NoSpace"])
			return
		end
		FathersDay2016FindChild_SetTaskStc(1,6,2)  --data6
		local nItemId = tFathersDay2016FindChild_ItemId[725072]
		Item_AddItem(nItemId)
		local sLog = string.format(tFathersDay2016FindChild_Log["GetItem"],nItemId)
		Sys_SaveActionFestivalLog(sLog)
		Sys_MsgBox(tFathersDay2016FindChild_Text[7933]["Goto"],"FathersDay2016FindChild_Goto</N>" .. nNpcId)
	end
end
function FathersDay2016FindChild_GoPlace()
	FathersDay2016FindChild_SetTaskStc(1,2,1)
	FathersDay2016FindChild_Goto(11)
end
---------------------------------------------怪物逻辑---------------------------------------------
--鬼刃
function FathersDay2016FindChild_KillMonster(nMonsterTypeId)
	if FathersDay2016FindChild_ChkTime() then
		return
	end

	if FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) then  --是否已完成任务
		return
	end

	if not FathersDay2016FindChild_AcceptTask(2) then
		return
	end

	if nMonsterTypeId == 17 and FathersDay2016FindChild_FinishTask(2,"2",1) then
		return
	end

	if tFathersDay2016FindChild_Data[nMonsterTypeId]["data2"] ~= nil then
		local nData = tFathersDay2016FindChild_Data[nMonsterTypeId]["data2"]
		if not FathersDay2016FindChild_FinishTask(2,nData,1) then
			return
		end
	end

	local nPos = tFathersDay2016FindChild_Data[nMonsterTypeId]["data1"]
	local nNum = tFathersDay2016FindChild_Data[nMonsterTypeId]["Num"]
	local nTaskId = tFathersDay2016FindChild_Data["TaskId"][2]
	if Task_ChkTaskDetailValue(nTaskId,nPos,">=",nNum,0) then
		Sys_MsgBox(tFathersDay2016FindChild_Text["MsgBox"][nMonsterTypeId],"FathersDay2016FindChild_Goto</N>7931")
		return
	end

	local nDataNumber = tFathersDay2016FindChild_Data[nPos]
	local Func = tFathersDay2016FindChild_Function[nPos]
	local nNumber = Func(nTaskId)
	--if nDataNumber == 3 and nNumber == 0 then
	nNumber = nNumber + 1
	--end

	FathersDay2016FindChild_SetTaskStc(2,nDataNumber,nNumber)
	Sys_SaveActionFestivalLog(tFathersDay2016FindChild_Log["KillMonster1"])
	if Task_ChkTaskDetailValue(nTaskId,nPos,">=",nNum,0) then
		Sys_MsgBox(tFathersDay2016FindChild_Text["MsgBox"][nMonsterTypeId],"FathersDay2016FindChild_Goto</N>7931")
		return
	end

end

--蛇人
function FathersDay2016FindChild_DropItem(nMonsterTypeId)
	if FathersDay2016FindChild_ChkTime() then
		return
	end
	if FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) then  --是否已完成任务
		return
	end

	if not FathersDay2016FindChild_AcceptTask(1) then
		return
	end
	if not FathersDay2016FindChild_FinishTask(1,"2",1) then
		return
	end
	if FathersDay2016FindChild_FinishTask(1,"3",1) then
		return
	end
	if Item_ChkMulItem(tFathersDay2016FindChild_ItemId[725071],tFathersDay2016FindChild_ItemId[725071],5) then
		Sys_MsgBox(tFathersDay2016FindChild_Text["MsgBox"]["Goto"],"FathersDay2016FindChild_Goto</N>" .. 7930)
		return
	end
	local nPro = Get_UserProfession()
	local nNum = 1
	if nPro >= G_PRO_Archer0 and nPro <= G_PRO_Archer5 then  --弓手概率
		nNum = 2
	end
	local nRandom = math.random(1,10000)
	if nRandom <= tFathersDay2016FindChild_Data[nNum] then
		Monster_SysDropItem(tFathersDay2016FindChild_ItemId[725071])
		User_TalkChannel2005(tFathersDay2016FindChild_Text["MsgBox"]["DropItem"])
	end
end


---------------------------------------------npc模板---------------------------------------------
---------------------------npc陈长泰 7930
tNpcFace[197] = 51

tNpcGossip[7930] = tNpcGossip[7930] or DefaultNpc:new{}
tNpcGossip[7930]["OptionHidden"] = 1
--活动时间前
tNpcGossip[7930]["Text1-1"] = {111,112,113,114}
tNpcGossip[7930]["Text111"] = tFathersDay2016FindChild_Text[7930]["Text111"]
tNpcGossip[7930]["Text112"] = tFathersDay2016FindChild_Text[7930]["Text112"]
tNpcGossip[7930]["Text113"] = tFathersDay2016FindChild_Text[7930]["Text113"]
tNpcGossip[7930]["Text114"] = tFathersDay2016FindChild_Text[7930]["Text114"]

tNpcGossip[7930]["tOption1-1"] = {1}
tNpcGossip[7930]["Option1"] = tFathersDay2016FindChild_Text[7930]["Option1"]
tNpcGossip[7930]["ChkFunc1-1"] = function()
	FathersDay2016FindChild_ResetStc()
	return Sys_ChkFullTime(tFathersDay2016FindChild_Data["Bef_Time"])
end

--活动时间后
tNpcGossip[7930]["Text1-2"] = {121}
tNpcGossip[7930]["Text121"] = tFathersDay2016FindChild_Text[7930]["Text211"]
tNpcGossip[7930]["tOption1-2"] = {21}
tNpcGossip[7930]["Option21"] = tFathersDay2016FindChild_Text[7930]["Option21"]
tNpcGossip[7930]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tFathersDay2016FindChild_Data["Now_Time"])
end


--活动时间中
---等级不足
tNpcGossip[7930]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[7930]["Text131"] = tFathersDay2016FindChild_Text[7930]["Text311"]
tNpcGossip[7930]["Text132"] = tFathersDay2016FindChild_Text[7930]["Text312"]
tNpcGossip[7930]["Text133"] = tFathersDay2016FindChild_Text[7930]["Text313"]
tNpcGossip[7930]["Text134"] = tFathersDay2016FindChild_Text[7930]["Text314"]
tNpcGossip[7930]["Text135"] = tFathersDay2016FindChild_Text[7930]["Text315"]

tNpcGossip[7930]["tOption1-3"] = {31}
tNpcGossip[7930]["Option31"] = tFathersDay2016FindChild_Text[7930]["Option31"]
tNpcGossip[7930]["ChkFunc1-3"] = function()
	return (FathersDay2016FindChild_ChkLevel())
end
-- 【当天已经完成任务】
tNpcGossip[7930]["Text1-4"] = {141}
tNpcGossip[7930]["Text141"] = tFathersDay2016FindChild_Text[7930]["Text321"]
tNpcGossip[7930]["tOption1-4"] = {41}
tNpcGossip[7930]["Option41"] = tFathersDay2016FindChild_Text[7930]["Option41"]
tNpcGossip[7930]["ChkFunc1-4"] = function()
	FathersDay2016FindChild_ResetStc()  --隔天清零
	return FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1)
end

---【当天未接任务】
tNpcGossip[7930]["Text1-5"] = {151,152,153,154}
tNpcGossip[7930]["Text151"] = tFathersDay2016FindChild_Text[7930]["Text331"]
tNpcGossip[7930]["Text152"] = tFathersDay2016FindChild_Text[7930]["Text332"] 
tNpcGossip[7930]["Text153"] = tFathersDay2016FindChild_Text[7930]["Text333"] 
tNpcGossip[7930]["Text154"] = tFathersDay2016FindChild_Text[7930]["Text334"] 
tNpcGossip[7930]["tOption1-5"] = {42,43}
tNpcGossip[7930]["Option42"] = tFathersDay2016FindChild_Text[7930]["Option42"]
tNpcGossip[7930]["OptionFunc42"] = "FathersDay2016FindChild_Accept</N>7930"
tNpcGossip[7930]["Option43"] = tFathersDay2016FindChild_Text[7930]["Option43"]
tNpcGossip[7930]["ChkFunc1-5"] = function()
	FathersDay2016FindChild_ResetStc()  --隔天清零
	return (not FathersDay2016FindChild_AcceptTask(1))
end


---完成任务
-- 【任务中，玩家身上无信件】
tNpcGossip[7930]["Text1-6"] = {161}
tNpcGossip[7930]["Text161"] = tFathersDay2016FindChild_Text[7930]["Text341"]
tNpcGossip[7930]["tOption1-6"] = {45}
tNpcGossip[7930]["Option45"] = tFathersDay2016FindChild_Text[7930]["Option45"]
tNpcGossip[7930]["OptionFunc45"] = "FathersDay2016FindChild_Goto</N>7930"
tNpcGossip[7930]["ChkFunc1-6"] = function()
	FathersDay2016FindChild_ResetStc()  --隔天清零
	return FathersDay2016FindChild_FinishTask(1,"1",1) and (not Item_ChkItem(tFathersDay2016FindChild_ItemId[725072]))
end

-- 【任务中，玩家身上有信件】
tNpcGossip[7930]["Text1-7"] = {171,172}
tNpcGossip[7930]["Text171"] = tFathersDay2016FindChild_Text[7930]["Text351"]
tNpcGossip[7930]["Text172"] = tFathersDay2016FindChild_Text[7930]["Text352"]
tNpcGossip[7930]["tOption1-7"] = {44}
tNpcGossip[7930]["Option44"] = tFathersDay2016FindChild_Text[7930]["Option44"]
tNpcGossip[7930]["OptionFunc44"] = "FathersDay2016FindChild_RewardGift</N>7930"
tNpcGossip[7930]["ChkFunc1-7"] = function()
	FathersDay2016FindChild_ResetStc()  --隔天清零
	return FathersDay2016FindChild_FinishTask(1,"1",1) and Item_ChkItem(tFathersDay2016FindChild_ItemId[725072])
end


--------------------------------------梅郎中 7931
tNpcFace[198] = 58
tNpcGossip[7931] = tNpcGossip[7931] or DefaultNpc:new{}
tNpcGossip[7931]["OptionHidden"] = 1
---闲聊对白
tNpcGossip[7931]["Text1-1"] = {111}
tNpcGossip[7931]["Text111"] = tFathersDay2016FindChild_Text[7931]["Text111"]
tNpcGossip[7931]["tOption1-1"] = {1}
tNpcGossip[7931]["Option1"] = tFathersDay2016FindChild_Text[7931]["Option1"]
tNpcGossip[7931]["ChkFunc1-1"] = function()
	return (not FathersDay2016FindChild_AcceptTask(1)) or FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) or (not FathersDay2016FindChild_FinishTask(1,"1",1))
end
--【玩家身上接有任务，任务对白1】
tNpcGossip[7931]["Text1-2"] = {121}
tNpcGossip[7931]["Text121"] = tFathersDay2016FindChild_Text[7931]["Text211"]
tNpcGossip[7931]["tOption1-2"] = {21}
tNpcGossip[7931]["Option21"] = tFathersDay2016FindChild_Text[7931]["Option21"]
tNpcGossip[7931]["OptionPoint21"] = "3-1"
tNpcGossip[7931]["ChkFunc1-2"] = function()
	return not FathersDay2016FindChild_FinishTask(1,"2",1)
end
-- 【玩家身上接有任务，任务对白2】
tNpcGossip[7931]["Text3-1"] = {311}
tNpcGossip[7931]["Text311"] = tFathersDay2016FindChild_Text[7931]["Text311"]
tNpcGossip[7931]["tOption3-1"] = {31}
tNpcGossip[7931]["Option31"] = tFathersDay2016FindChild_Text[7931]["Option31"]
tNpcGossip[7931]["OptionFunc31"] = "FathersDay2016FindChild_GoPlace"
-- 【任务已完成】
tNpcGossip[7931]["Text1-3"] = {131}
tNpcGossip[7931]["Text131"] = tFathersDay2016FindChild_Text[7931]["Text611"]
tNpcGossip[7931]["tOption1-3"] = {61}
tNpcGossip[7931]["Option61"] = tFathersDay2016FindChild_Text[7931]["Option61"]
tNpcGossip[7931]["OptionFunc61"] = "FathersDay2016FindChild_Goto</N>7931"
tNpcGossip[7931]["ChkFunc1-3"] = function()
	return FathersDay2016FindChild_FinishTask(1,"3",1)
end
---检测物品
tNpcGossip[7931]["Text1-4"] = {141}
tNpcGossip[7931]["Text141"] = tFathersDay2016FindChild_Text[7931]["Text511"]
tNpcGossip[7931]["tOption1-4"] = {51}
tNpcGossip[7931]["Option51"] = tFathersDay2016FindChild_Text[7931]["Option51"]
tNpcGossip[7931]["OptionFunc51"] = "FathersDay2016FindChild_Npc7931</N>7931"
tNpcGossip[7931]["ChkFunc1-4"] = function()
	local nItemId = tFathersDay2016FindChild_ItemId[725071]
	return Item_ChkMulItem(nItemId,nItemId,tFathersDay2016FindChild_ItemId["Num"])
end
tNpcGossip[7931]["Text1-5"] = {151}
tNpcGossip[7931]["Text151"] = tFathersDay2016FindChild_Text[7931]["Text411"]
tNpcGossip[7931]["tOption1-5"] = {41}
tNpcGossip[7931]["Option41"] = tFathersDay2016FindChild_Text[7931]["Option41"]
tNpcGossip[7931]["OptionFunc41"] = "FathersDay2016FindChild_Goto</N>11"
tNpcGossip[7931]["ChkFunc1-5"] = function()
	local nItemId = tFathersDay2016FindChild_ItemId[725071]
	return not Item_ChkMulItem(nItemId,nItemId,tFathersDay2016FindChild_ItemId["Num"])
end

--------------------------------------公孙道明 7931
tNpcFace[199] = 67
tNpcGossip[7932] = tNpcGossip[7932] or DefaultNpc:new{}
tNpcGossip[7932]["OptionHidden"] = 1
---闲聊对白
tNpcGossip[7932]["Text1-1"] = {111}
tNpcGossip[7932]["Text111"] = tFathersDay2016FindChild_Text[7932]["Text111"]
tNpcGossip[7932]["tOption1-1"] = {1}
tNpcGossip[7932]["Option1"] = tFathersDay2016FindChild_Text[7932]["Option1"]
tNpcGossip[7932]["ChkFunc1-1"] = function()
	return (not FathersDay2016FindChild_AcceptTask(1)) or FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) or (not FathersDay2016FindChild_FinishTask(1,"3",1))
end
-- 【玩家身上接有任务】
tNpcGossip[7932]["Text1-2"] = {121}
tNpcGossip[7932]["Text121"] = tFathersDay2016FindChild_Text[7932]["Text211"]
tNpcGossip[7932]["tOption1-2"] = {21}
tNpcGossip[7932]["Option21"] = tFathersDay2016FindChild_Text[7932]["Option21"]
tNpcGossip[7932]["OptionFunc21"] = "FathersDay2016FindChild_Npc7932_1"
tNpcGossip[7932]["ChkFunc1-2"] = function()
	return (not FathersDay2016FindChild_AcceptTask(2)) or (not FathersDay2016FindChild_FinishTask(1,"4",1))
end
-- 【任务已完成】
tNpcGossip[7932]["Text1-3"] = {131}
tNpcGossip[7932]["Text131"] = tFathersDay2016FindChild_Text[7932]["Text711"]
tNpcGossip[7932]["tOption1-3"] = {71}
tNpcGossip[7932]["Option71"] = tFathersDay2016FindChild_Text[7932]["Option71"]
tNpcGossip[7932]["OptionFunc71"] = "FathersDay2016FindChild_Goto</N>7932"
tNpcGossip[7932]["ChkFunc1-3"] = function()
	return FathersDay2016FindChild_FinishTask(1,"5",1)
end

tNpcGossip[7932]["Text1-4"] = {141}
tNpcGossip[7932]["Text141"] = tFathersDay2016FindChild_Text[7932]["Text311"]
tNpcGossip[7932]["tOption1-4"] = {31}
tNpcGossip[7932]["Option31"] = tFathersDay2016FindChild_Text[7932]["Option31"]
tNpcGossip[7932]["OptionFunc31"] = "FathersDay2016FindChild_Goto</N>12"
tNpcGossip[7932]["ChkFunc1-4"] = function()
	return FathersDay2016FindChild_AcceptTask(2) and (not FathersDay2016FindChild_FinishTask(2,"1",tFathersDay2016FindChild_Data[17]["Num"]))
end
---交任务1
tNpcGossip[7932]["Text1-5"] = {151}
tNpcGossip[7932]["Text151"] = tFathersDay2016FindChild_Text[7932]["Text411"]
tNpcGossip[7932]["tOption1-5"] = {41}
tNpcGossip[7932]["Option41"] = tFathersDay2016FindChild_Text[7932]["Option41"]
tNpcGossip[7932]["OptionFunc41"] = "FathersDay2016FindChild_Npc7932_2</N>7932"
tNpcGossip[7932]["ChkFunc1-5"] = function()
	return not FathersDay2016FindChild_FinishTask(2,"2",1)
end
---任务2 未完成
tNpcGossip[7932]["Text1-6"] = {161}
tNpcGossip[7932]["Text161"] = tFathersDay2016FindChild_Text[7932]["Text511"]
tNpcGossip[7932]["tOption1-6"] = {51}
tNpcGossip[7932]["Option51"] = tFathersDay2016FindChild_Text[7932]["Option51"]
tNpcGossip[7932]["OptionFunc51"] = "FathersDay2016FindChild_Goto</N>12"
tNpcGossip[7932]["ChkFunc1-6"] = function()
	return not FathersDay2016FindChild_FinishTask(2,"3",tFathersDay2016FindChild_Data[76]["Num"])
end

---完成任务获得消息
tNpcGossip[7932]["Text1-7"] = {171,172}
tNpcGossip[7932]["Text171"] = tFathersDay2016FindChild_Text[7932]["Text611"]
tNpcGossip[7932]["Text172"] = tFathersDay2016FindChild_Text[7932]["Text612"]
tNpcGossip[7932]["tOption1-7"] = {61}
tNpcGossip[7932]["Option61"] = tFathersDay2016FindChild_Text[7932]["Option61"]
tNpcGossip[7932]["OptionFunc61"] = "FathersDay2016FindChild_Npc7932_3</N>7932"
tNpcGossip[7932]["ChkFunc1-7"] = function()
	return FathersDay2016FindChild_FinishTask(2,"3",tFathersDay2016FindChild_Data[76]["Num"])
end

---【公孙震川】

tNpcFace[200] = 13
tNpcGossip[7933] = tNpcGossip[7933] or DefaultNpc:new{}
tNpcGossip[7933]["OptionHidden"] = 1
---闲聊对白
tNpcGossip[7933]["Text1-1"] = {111}
tNpcGossip[7933]["Text111"] = tFathersDay2016FindChild_Text[7933]["Text111"]
tNpcGossip[7933]["tOption1-1"] = {1}
tNpcGossip[7933]["Option1"] = tFathersDay2016FindChild_Text[7933]["Option1"]
tNpcGossip[7933]["ChkFunc1-1"] = function()
	return (not FathersDay2016FindChild_AcceptTask(1)) or FathersDay2016FindChild_FinishTask(1,"CompleteFlag",1) or (not FathersDay2016FindChild_FinishTask(1,"5",1))
end
-- 【玩家身上接有任务】
tNpcGossip[7933]["Text1-2"] = {121}
tNpcGossip[7933]["Text121"] = tFathersDay2016FindChild_Text[7933]["Text211"]
tNpcGossip[7933]["tOption1-2"] = {21}
tNpcGossip[7933]["Option21"] = tFathersDay2016FindChild_Text[7933]["Option21"]
tNpcGossip[7933]["OptionPoint21"] = "2-1"
tNpcGossip[7933]["ChkFunc1-2"] = function()
	return FathersDay2016FindChild_FinishTask(1,"5",1) and (not FathersDay2016FindChild_FinishTask(1,"6",2))
end
-- 【任务已完成】
tNpcGossip[7933]["Text1-3"] = {131}
tNpcGossip[7933]["Text131"] = tFathersDay2016FindChild_Text[7933]["Text511"]
tNpcGossip[7933]["tOption1-3"] = {51}
tNpcGossip[7933]["Option51"] = tFathersDay2016FindChild_Text[7933]["Option51"]
tNpcGossip[7933]["OptionFunc51"] = "FathersDay2016FindChild_Goto</N>7933"
tNpcGossip[7933]["ChkFunc1-3"] = function()
	local nItemId = tFathersDay2016FindChild_ItemId[725072]
	return Item_ChkItem(nItemId)
end
---信件弄丢补领
tNpcGossip[7933]["Text1-4"] = {141}
tNpcGossip[7933]["Text141"] = tFathersDay2016FindChild_Text[7933]["Text611"]
tNpcGossip[7933]["tOption1-4"] = {61}
tNpcGossip[7933]["Option61"] = tFathersDay2016FindChild_Text[7933]["Option61"]
tNpcGossip[7933]["OptionFunc61"] = "FathersDay2016FindChild_7933_1</N>7933"
tNpcGossip[7933]["ChkFunc1-4"] = function()
	local nItemId = tFathersDay2016FindChild_ItemId[725072]
	return not Item_ChkItem(nItemId)
end

tNpcGossip[7933]["Text2-1"] = {211}
tNpcGossip[7933]["Text211"] = tFathersDay2016FindChild_Text[7933]["Text711"]
tNpcGossip[7933]["tOption2-1"] = {71}
tNpcGossip[7933]["Option71"] = tFathersDay2016FindChild_Text[7933]["Option71"]
tNpcGossip[7933]["OptionFunc71"] = "FathersDay2016FindChild_7933_2</N>7933"

---------------------------------------------怪物模板---------------------------------------------
-- 	13	蛇人	9593340
-- tMonster[13] = tMonster[13] or {}
-- tMonster[13]["tFunction"] = tMonster[13]["tFunction"] or {}
-- table.insert(tMonster[13]["tFunction"],FathersDay2016FindChild_DropItem)

-- 	17	鬼刃	9593380
-- tMonster[17] = tMonster[17] or {}
-- tMonster[17]["tFunction"] = tMonster[17]["tFunction"] or {}
-- table.insert(tMonster[17]["tFunction"],FathersDay2016FindChild_KillMonster)

--	76	狡诈鬼刃	4033580
-- tMonster[76] = tMonster[76] or {}
-- tMonster[76]["tFunction"] = tMonster[76]["tFunction"] or {}
-- table.insert(tMonster[76]["tFunction"],FathersDay2016FindChild_KillMonster)


