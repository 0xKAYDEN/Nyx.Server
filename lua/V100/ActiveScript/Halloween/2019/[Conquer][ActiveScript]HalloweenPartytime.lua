------------------------------------------------------------------------------------
--Name：            190926[简体征服][活动脚本]全球万圣节活动_Partytime
--Creator:      周洋
--Created:     2019/09/26
------------------------------------------------------------------------------------
-- 命名前缀
-- HalloweenPartytime

-- stc掩码
-- 205 08 用于隔天判断

-- 动态存储表说明
-- [53758]
	--data0	记录跨国地图party time人数
	--data1	是否已清除data0

-- task_detail	35054
	-- Data1	是否领取“party time人数达到100人”奖励
	-- Data2	是否领取“party time人数达到200人”奖励
	-- Data3	是否领取“party time人数达到300人”奖励
	-- Data4	是否领取“party time人数达到500人”奖励
	-- Data5	是否领取“party time人数达到1000人”奖励
-- task_detail	35055
	-- Data1	是否已统计在内
	-- Data2	记录本服用户ID
	-- Data3	成功变身次数，每天一次
	-- Data4	当天是否已参与
	-- Data5	是否已领取界面皮肤
	-- Data6	当天进跨服地图次数

--logid： 12001666

------------------------------------------------------------------------------------数据部分-------------------------------------------
local tHalloweenPartytime_Data = {}
	tHalloweenPartytime_Data["Level"] = 80
	tHalloweenPartytime_Data["Metempsychosis"] = 0
	tHalloweenPartytime_Data["GlobalId"] = 53758
	tHalloweenPartytime_Data["MapId"] = 10601
	tHalloweenPartytime_Data["MapId1"] = 1002
	tHalloweenPartytime_Data["MapId2"] = 1036
	-- 地效坐标
	tHalloweenPartytime_Data["PosX"] = 118
	tHalloweenPartytime_Data["PosY"] = 107
	tHalloweenPartytime_Data["PosXEn"] = 130
	tHalloweenPartytime_Data["PosYEn"] = 107
	-- npcId
	tHalloweenPartytime_Data["NpcId"]=25035
	tHalloweenPartytime_Data["BunnyGirlNpcId"]=25201
	tHalloweenPartytime_Data["EnNpcId"]=25483
	-- 变身图鉴
	tHalloweenPartytime_Data["ItemId"]=3313760
	tHalloweenPartytime_Data["HalloweenRankingURL"] = "https://wtop.zf.99.com/wsjkh/en01/"
	tHalloweenPartytime_Data["ExistDay"] = 30

-- 活动时间
local tHalloweenPartytime_Time = {}
	tHalloweenPartytime_Time["Start"] = {}
	tHalloweenPartytime_Time["Start"]["year"] = 2019
	tHalloweenPartytime_Time["Start"]["month"] = 10
	tHalloweenPartytime_Time["Start"]["day"] = 31
	-- tHalloweenPartytime_Time["Start"]["hour"] = 0
	-- tHalloweenPartytime_Time["Start"]["minute"] = 0
	-- tHalloweenPartytime_Time["Start"]["second"] = 0
	tHalloweenPartytime_Time["End"] = {}
	tHalloweenPartytime_Time["End"]["year"] = 2019
	tHalloweenPartytime_Time["End"]["month"] = 11
	tHalloweenPartytime_Time["End"]["day"] = 14
	tHalloweenPartytime_Time["End"]["hour"] = 23
	tHalloweenPartytime_Time["End"]["minute"] = 59
	-- tHalloweenPartytime_Time["End"]["second"] = 0

-- 掩码
local tHalloweenPartytime_Stc = {}
	tHalloweenPartytime_Stc["EventType"] = 205
	tHalloweenPartytime_Stc["DataType"] = 08

-- TaskDetail
local tHalloweenPartytime_TaskDetail = {}
	tHalloweenPartytime_TaskDetail["Reward"] = 35054
	tHalloweenPartytime_TaskDetail["Statistical"] = 35055

-- 光效
local tHalloweenPartytime_Effect = {}
	tHalloweenPartytime_Effect[0] = "yanhuijishu0"
	tHalloweenPartytime_Effect[1] = "yanhuijishu1"
	tHalloweenPartytime_Effect[2] = "yanhuijishu2"
	tHalloweenPartytime_Effect[3] = "yanhuijishu3"
	tHalloweenPartytime_Effect[4] = "yanhuijishu4"
	tHalloweenPartytime_Effect[5] = "yanhuijishu5"
	tHalloweenPartytime_Effect[6] = "yanhuijishu6"
	tHalloweenPartytime_Effect[7] = "yanhuijishu7"
	tHalloweenPartytime_Effect[8] = "yanhuijishu8"
	tHalloweenPartytime_Effect[9] = "yanhuijishu9"
	tHalloweenPartytime_Effect["yhrsjs"] = "yhrsjs"
	tHalloweenPartytime_Effect["yhzbz"] = "yhzbz"
	tHalloweenPartytime_Effect["yhrsjs_y"] = "yhrsjs_y"
	tHalloweenPartytime_Effect["yhzbz_y"] = "yhzbz_y"
	tHalloweenPartytime_Effect["getAward"] = "zf2-e128"

-- 奖励档次对应人数
local tHalloweenPartytime_Person = {}
	tHalloweenPartytime_Person[1] = 100
	tHalloweenPartytime_Person[2] = 200
	tHalloweenPartytime_Person[3] = 300
	tHalloweenPartytime_Person[4] = 500
	tHalloweenPartytime_Person[5] = 1000

-- 奖励
local tHalloweenPartytime_RewardAction = {}
	tHalloweenPartytime_RewardAction[1] = 575001
	tHalloweenPartytime_RewardAction[2] = 575002
	tHalloweenPartytime_RewardAction[3] = 575003
	tHalloweenPartytime_RewardAction[4] = 575004
	tHalloweenPartytime_RewardAction[5] = 575005

------------------------------------------------------------------------------------逻辑部分-------------------------------------------

function HalloweenPartytime_OnLine()
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	HalloweenPartytime_ChgWindow()
	HalloweenPartytime_CleanNextDay()
end

-- 判断领奖时间段
function HalloweenPartytime_ChkTime()
	if Sys_ChkDayTime(tActivityTime["HalloweenPartytime"]["OpenTime1"]) or Sys_ChkDayTime(tActivityTime["HalloweenPartytime"]["OpenTime2"]) or Sys_ChkDayTime(tActivityTime["HalloweenPartytime"]["OpenTime3"]) or Sys_ChkDayTime(tActivityTime["HalloweenPartytime"]["OpenTime4"]) then
		return true
	end
	return false
end

-- 隔天重置掩码
function HalloweenPartytime_CleanNextDay()
	local nUserId = Get_UserId()
	local nTaskId = tHalloweenPartytime_TaskDetail["Reward"]
	local nTaskId1 = tHalloweenPartytime_TaskDetail["Statistical"]
	local nEvent = tHalloweenPartytime_Stc["EventType"]
	local nType = tHalloweenPartytime_Stc["DataType"]
	
	-- 隔天
	if Task_StcInterval(nEvent,nType,1,4) then
		if Task_ChkTaskDetail(nTaskId,nUserId) then
			for i = 1,5 do
				Task_SetTaskDetailData(nTaskId,0,tostring(i),nUserId)
			end
		else
			if not Task_AddTaskDetail(nTaskId) then
				return
			end
		end
		
		if Task_ChkTaskDetail(nTaskId1,nUserId) then
			Task_SetTaskDetailData1(nTaskId1,0, nUserId)
			Task_SetTaskDetailData4(nTaskId1,0, nUserId)
			Task_SetTaskDetailData6(nTaskId1,0, nUserId)
		else
			if not Task_AddTaskDetail(nTaskId1) then
				return
			end
		end
		
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

function HalloweenPartytime_ResetGlobalData()
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	local nSysDyGlobId = tHalloweenPartytime_Data["GlobalId"]
	if Get_SysDynaGlobalData1(nSysDyGlobId) >= 1 then
		return
	end
	Sys_SetSynaGlobalData0(nSysDyGlobId,0)
	Sys_SetSynaGlobalData1(nSysDyGlobId,1)
end

function HalloweenPartytime_ResetGlobalData1()
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	local nSysDyGlobId = tHalloweenPartytime_Data["GlobalId"]
	Sys_SetSynaGlobalData1(nSysDyGlobId,0)
end

-- 统计地图变身玩家人数
function HalloweenPartytime_StatisticalStatistics()
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"]) then
		return
	end
	local nUserId = Get_UserId()
	local nTaskId = tHalloweenPartytime_TaskDetail["Statistical"]
	local nSysDyGlobId = tHalloweenPartytime_Data["GlobalId"]
	
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	local nDetailData1 = Get_TaskDetailData1(nTaskId, nUserId)
	local nDetailData3 = Get_TaskDetailData3(nTaskId, nUserId)
	local nDetailData4 = Get_TaskDetailData4(nTaskId, nUserId)
	-- 判断玩家地图
	local nMapId = tHalloweenPartytime_Data["MapId"]
	local nUserMap = Get_UserMapId(nUserId)
	if nUserMap == nMapId then
		if not Task_ChkTaskDetailValue(nTaskId,"1",">=",1,nUserId) then
			-- 动态码+1
			Sys_SetSynaGlobalData0(nSysDyGlobId,Get_SysDynaGlobalData0(nSysDyGlobId)+1)
			-- TaskDetail +1
			Task_SetTaskDetailData1(nTaskId, nDetailData1+1, nUserId)
		end
		
		if not Task_ChkTaskDetailValue(nTaskId,"4",">=",1,nUserId) then
			Task_SetTaskDetailData3(nTaskId,nDetailData3+1, nUserId)
			Task_SetTaskDetailData4(nTaskId, nDetailData4+1, nUserId)
		end
	end
end

-- 离开地图，地图人数计数-1
function HalloweenPartytime_LeaveMap()
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	local nSysDyGlobId = tHalloweenPartytime_Data["GlobalId"]
	local nTaskId = tHalloweenPartytime_TaskDetail["Statistical"]
	local nUserId = Get_UserId()
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	local nDetailData1 = Get_TaskDetailData1(nTaskId, nUserId)
	if Get_SysDynaGlobalData0(nSysDyGlobId) > 0 and nDetailData1 >= 1 then
		-- 动态码-1
		Sys_SetSynaGlobalData0(nSysDyGlobId,Get_SysDynaGlobalData0(nSysDyGlobId)-1)
		-- TaskDetail -1
		Task_SetTaskDetailData1(nTaskId,0, nUserId)
	end
end

function HalloweenPartytime_GetReward(nNpcId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"]) then
		return
	end
	local nDialogNPC
	if nNpcId == tHalloweenPartytime_Data["NpcId"] then
		nDialogNPC = tHalloweenPartytime_Data["NpcId"]
	elseif nNpcId == tHalloweenPartytime_Data["EnNpcId"] then
		nDialogNPC = tHalloweenPartytime_Data["EnNpcId"]
	end
	if tNpcGossip[nNpcId]["Option112"] == tHalloweenPartytime_Text[nNpcId]["Option114"] then
		LinkNpcGossipFunc_New(nDialogNPC,"2-1")
	end
	
	local nIndex = 0
	local nUserId = Get_UserId()
	local nTaskId = tHalloweenPartytime_TaskDetail["Reward"]
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	-- 跨国地图party time人数
	local nGlobalData = Get_SysDynaGlobalData0(tHalloweenPartytime_Data["GlobalId"])
	if nGlobalData >= tHalloweenPartytime_Person[5] then
		nIndex = 5
		if Task_ChkTaskDetailValue(nTaskId,"5",">=",1,nUserId) then
			LinkNpcGossipFunc_New(nDialogNPC,"2-1")
		end
	elseif nGlobalData >= tHalloweenPartytime_Person[4] then
		nIndex = 4
		if Task_ChkTaskDetailValue(nTaskId,"4",">=",1,nUserId) then
			tNpcGossip[nNpcId]["Text221"] = string.format(tHalloweenPartytime_Text[nNpcId]["Text221"],tHalloweenPartytime_Person[5])
		end
	elseif nGlobalData >= tHalloweenPartytime_Person[3] then
		nIndex = 3
		if Task_ChkTaskDetailValue(nTaskId,"3",">=",1,nUserId) then
			tNpcGossip[nNpcId]["Text221"] = string.format(tHalloweenPartytime_Text[nNpcId]["Text221"],tHalloweenPartytime_Person[4])
		end
	elseif nGlobalData >= tHalloweenPartytime_Person[2] then
		nIndex = 2
		if Task_ChkTaskDetailValue(nTaskId,"2",">=",1,nUserId) then
			tNpcGossip[nNpcId]["Text221"] = string.format(tHalloweenPartytime_Text[nNpcId]["Text221"],tHalloweenPartytime_Person[3])
		end
	elseif nGlobalData >= tHalloweenPartytime_Person[1] then
		nIndex = 1
		if Task_ChkTaskDetailValue(nTaskId,"1",">=",1,nUserId) then
			tNpcGossip[nNpcId]["Text221"] = string.format(tHalloweenPartytime_Text[nNpcId]["Text221"],tHalloweenPartytime_Person[2])
		end
	else
		tNpcGossip[nNpcId]["Text221"] = string.format(tHalloweenPartytime_Text[nNpcId]["Text221"],tHalloweenPartytime_Person[1])
	end
	
	if tNpcGossip[nNpcId]["Option112"] == tHalloweenPartytime_Text[nNpcId]["Option115"] then
		LinkNpcGossipFunc_New(nDialogNPC,"2-2")
	end
	
	if tNpcGossip[nNpcId]["Option112"] == tHalloweenPartytime_Text[nNpcId]["Option112"] then
		for i = 1,nIndex do
			HalloweenPartytime_EarnRewards(i)
			-- 加光效
			User_EffectAdd("self",tHalloweenPartytime_Effect["getAward"],nUserId)
		end
	end
	
end

function HalloweenPartytime_EarnRewards(nIndex)
	local nUserId = Get_UserId()
	local nTaskId = tHalloweenPartytime_TaskDetail["Reward"]
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	-- 掩码检查
	if Task_ChkTaskDetailValue(nTaskId,tostring(nIndex),">=",1,nUserId) then
		return
	end
	-- 记TaskDetail
	local nTaskDetailData = Get_TaskDetail(nTaskId,tostring(nIndex),nUserId)
	if Task_SetTaskDetailData(nTaskId,nTaskDetailData+1,tostring(nIndex),nUserId) then
		local nExistDay = tHalloweenPartytime_Data["ExistDay"]
		local sSender = tHalloweenPartytime_Text[25483]["Mail"]["Sender"]
		local sTitle = tHalloweenPartytime_Text[25483]["Mail"]["Title"]
		
		local nTaskId1 = tHalloweenPartytime_TaskDetail["Statistical"]
		local nOriginalUserId = Get_TaskDetailData2(nTaskId1, nUserId)
		local sContent = string.format(tHalloweenPartytime_Text[25483]["Mail"]["Content"],tHalloweenPartytime_Person[nIndex])
		
		Sys_SendMail(nOriginalUserId,0,0,tHalloweenPartytime_RewardAction[nIndex],0,nExistDay,sSender,sTitle,sContent,Get_UserServerId(nUserId))
		User_TalkChannel2005(tHalloweenPartytime_Text[25483]["GetAward"])
	end
end

function HalloweenPartytime_Timer(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	User_NotifyChgWindow(131, 0, nUserId)
end

function HalloweenPartytime_ChgWindow()
	local nUserId = Get_UserId()
	local nTaskId = tHalloweenPartytime_TaskDetail["Statistical"]
	if not Task_ChkTaskDetail(nTaskId,nUserId) then
		return
	end
	if Task_ChkTaskDetailValue(nTaskId,"3",">=",3,nUserId) then
		-- 活动开始时间
		local nStartTime = os.time({day=tHalloweenPartytime_Time["Start"]["day"], month=tHalloweenPartytime_Time["Start"]["month"], year=tHalloweenPartytime_Time["Start"]["year"], hour=0, minute=0, second=0})
		local nEndTime = os.time({day=tHalloweenPartytime_Time["End"]["day"], month=tHalloweenPartytime_Time["End"]["month"], year=tHalloweenPartytime_Time["End"]["year"], hour=tHalloweenPartytime_Time["End"]["hour"], minute=tHalloweenPartytime_Time["End"]["minute"], second=0})
		local nTime = nEndTime - nStartTime
		local nNowTime = os.time()
		local nSubTime = nNowTime - nStartTime
		if nSubTime >= nTime then
			return
		end
		
		User_NotifyChgWindow(131, 1, nUserId)
		--设置定时器
		User_SetTimer(nTime - nSubTime,"HalloweenPartytime_Timer",0,nUserId)
		Task_SetTaskDetailData5(nTaskId,1, nUserId)
	end
end

-- 删除NPC光效
function HalloweenPartytime_RemoveNpcEffect(nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)
	local nMapId = tHalloweenPartytime_Data["MapId"]
	local nLen = 10
	for i = 1,nLen do
		for j = 0,9 do
			Map_Effect(nMapId,nPosX-i,nPosY+i-8,tHalloweenPartytime_Effect[j],1)
		end
		Map_Effect(nMapId,nPosX-i,nPosY+i,sYhrsjsEffect,1)
	end
	Map_Effect(nMapId,nPosX-1,nPosY+1,sYhzbzEffect,1)
end

-- NPC显示地图变身人数光效
function HalloweenPartytime_AddNpcEffect(nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)
	HalloweenPartytime_RemoveNpcEffect(nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)
	
	-- 跨国地图party time人数
	local nGlobalData = Get_SysDynaGlobalData0(tHalloweenPartytime_Data["GlobalId"])
	local nLen = string.len(tostring(nGlobalData))
	local nMapId = tHalloweenPartytime_Data["MapId"]
	
	if HalloweenPartytime_ChkTime() then
		if nGlobalData <= 0 then
			local nLen = 1
			local i = 1
			Map_Effect(nMapId,nPosX-i,nPosY+i-8,tHalloweenPartytime_Effect[0])
			Map_Effect(nMapId,nPosX-nLen,nPosY+nLen,sYhrsjsEffect)
			return
		end
		
		for i = 1,nLen do
			local nIndex
			if i == 1 then
				nIndex = nGlobalData%10
			else
				nIndex = math.modf((nGlobalData%(10^i))/(10^(i-1)))
			end
			Map_Effect(nMapId,nPosX-i,nPosY+i-8,tHalloweenPartytime_Effect[nIndex])
		end
		Map_Effect(nMapId,nPosX-nLen,nPosY+nLen,sYhrsjsEffect)
		
	else
		Map_Effect(nMapId,nPosX-1,nPosY+1,sYhzbzEffect)
	end
end


-- 对白判断
function HalloweenPartytime_DialogJudge(nNpcId)
		local nUserId = Get_UserId()
		local nTaskId1 = tHalloweenPartytime_TaskDetail["Statistical"]
		-- 参与派对天数
		tNpcGossip[nNpcId]["Text115"] = string.format(tHalloweenPartytime_Text[nNpcId]["Text115"], Get_TaskDetailData3(nTaskId1, nUserId))
		
		-- 领取界面皮肤
		if Task_ChkTaskDetailValue(nTaskId1,"3",">=",3,nUserId) then
			if Task_ChkTaskDetailValue(nTaskId1,"5",">=",1,nUserId) then
				tNpcGossip[nNpcId]["Option116"] = tHalloweenPartytime_Text[nNpcId]["Option118"]
			else
				tNpcGossip[nNpcId]["Option116"] = tHalloweenPartytime_Text[nNpcId]["Option117"]
			end
		else
			tNpcGossip[nNpcId]["Option116"] = tHalloweenPartytime_Text[nNpcId]["Option116"]
		end
		
		-- 领取派对奖励
		-- 判断是否已领完所有奖励
		local nTaskId = tHalloweenPartytime_TaskDetail["Reward"]
		local nCount = 0
		for i = 1, 5 do
			if Task_ChkTaskDetailValue(nTaskId,tostring(i),">=",1,nUserId) then
				nCount = nCount + 1
			end
		end
		if nCount >= 5 then
			tNpcGossip[nNpcId]["Option112"] = tHalloweenPartytime_Text[nNpcId]["Option114"]
			return
		end
		
		local nIndex = 0
		-- 跨国地图party time人数
		local nGlobalData = Get_SysDynaGlobalData0(tHalloweenPartytime_Data["GlobalId"])
		if nGlobalData >= tHalloweenPartytime_Person[5] then
			nIndex = 5
		elseif nGlobalData >= tHalloweenPartytime_Person[4] then
			nIndex = 4
		elseif nGlobalData >= tHalloweenPartytime_Person[3] then
			nIndex = 3
		elseif nGlobalData >= tHalloweenPartytime_Person[2] then
			nIndex = 2
		elseif nGlobalData >= tHalloweenPartytime_Person[1] then
			nIndex = 1
		end
		
		if nCount >= nIndex then
			tNpcGossip[nNpcId]["Option112"] = tHalloweenPartytime_Text[nNpcId]["Option115"]
		else
			tNpcGossip[nNpcId]["Option112"] = tHalloweenPartytime_Text[nNpcId]["Option112"]
		end
end


-- 玩家回到本服
function HalloweenPartytime_ChgMap()
	local nUserId = Get_UserId()
	-- 回到玩家所属服务器
	if Sys_ExitOS(nUserId) then
		HalloweenPartytime_LeaveMap()
		User_SetTransform()
	end
end

function HalloweenPartytime_AddEffect(nNpcId)
	local nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect
	if nNpcId == tHalloweenPartytime_Data["NpcId"] then
		nPosX = tHalloweenPartytime_Data["PosX"]
		nPosY = tHalloweenPartytime_Data["PosY"]
		sYhrsjsEffect = tHalloweenPartytime_Effect["yhrsjs"]
		sYhzbzEffect = tHalloweenPartytime_Effect["yhzbz"]
		
	elseif nNpcId == tHalloweenPartytime_Data["EnNpcId"] then
		nPosX = tHalloweenPartytime_Data["PosXEn"]
		nPosY = tHalloweenPartytime_Data["PosYEn"]
		sYhrsjsEffect = tHalloweenPartytime_Effect["yhrsjs_y"]
		sYhzbzEffect = tHalloweenPartytime_Effect["yhzbz_y"]
	end
	HalloweenPartytime_AddNpcEffect(nPosX,nPosY,sYhrsjsEffect,sYhzbzEffect)
end

function HalloweenPartytime_Transform(nNpcId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"]) then
		return
	end
	local nUserId = Get_UserId()
	-- CandyOrMischief_Transform(nUserId)
	HalloweenCarnivalBaron_TransformRandom()
	HalloweenPartytime_StatisticalStatistics()
	-- NPC加光效
	HalloweenPartytime_AddEffect(nNpcId)
	
	-- 地图播报
	local sUserName = Get_UserName(nUserId)
	Map_SendBroadcastMsg(tHalloweenPartytime_Data["MapId"], string.format(tHalloweenPartytime_Text[nNpcId]["Sys_SystemBroadcast"],sUserName))
	User_TalkChannel2005(tHalloweenPartytime_Text[nNpcId]["TransformSucc"])
	
	HalloweenPartytime_PeopleCounting(nNpcId)
end

function HalloweenPartytime_LeaveConfirm(nNpcId)
	if nNpcId == tHalloweenPartytime_Data["NpcId"] then
		LinkNpcGossipFunc_New(tHalloweenPartytime_Data["NpcId"],"3-2")
	elseif nNpcId == tHalloweenPartytime_Data["EnNpcId"] then
		LinkNpcGossipFunc_New(tHalloweenPartytime_Data["EnNpcId"],"3-2")
	end
end

--前往跨服地图
function HalloweenPartytime_EnterMap(nNpcId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"]) then
		return
	end
	if CollectGhost_EnterServer() then
		local nUserId = Get_UserId()
		local nTaskId = tHalloweenPartytime_TaskDetail["Reward"]
		local nTaskId1 = tHalloweenPartytime_TaskDetail["Statistical"]
		if not Task_ChkTaskDetail(nTaskId,nUserId) then
			if not Task_AddTaskDetail(nTaskId)then
				return
			end
		end
		if not Task_ChkTaskDetail(nTaskId1,nUserId) then
			if not Task_AddTaskDetail(nTaskId1)then
				return
			end
		end
		CandyOrMischief_EnterMap(nUserId)
		-- if Sys_EnterServer(102,12,nUserId,116) then
		if Sys_EnterServer(998,12,nUserId,116) then
			-- 记录本服用户ID
			Task_SetTaskDetailData2(nTaskId1,nUserId, nUserId)
			Task_SetTaskDetailData6(nTaskId1,Get_TaskDetailData6(nTaskId1,nUserId)+1,nUserId)
			User_TalkChannel2005(tHalloweenPartytime_Text[nNpcId]["ArrivedMap"])
		end
	end
end

-- 进入线下页面
function HalloweenPartytime_RankView()
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"]) then
		return
	end
	local nUserId = Get_UserId()
	User_SendWebDialog(tHalloweenPartytime_Data["HalloweenRankingURL"],nUserId)
end

function HalloweenPartytime_PeopleCounting(nNpcId)
	-- 跨国地图party time人数
	local nGlobalData = Get_SysDynaGlobalData0(tHalloweenPartytime_Data["GlobalId"])
	local nPerson
	if nGlobalData == tHalloweenPartytime_Person[5] then
		nPerson = tHalloweenPartytime_Person[5]
	elseif nGlobalData == tHalloweenPartytime_Person[4] then
		nPerson = tHalloweenPartytime_Person[4]
	elseif nGlobalData == tHalloweenPartytime_Person[3] then
		nPerson = tHalloweenPartytime_Person[3]
	elseif nGlobalData == tHalloweenPartytime_Person[2] then
		nPerson = tHalloweenPartytime_Person[2]
	elseif nGlobalData == tHalloweenPartytime_Person[1] then
		nPerson = tHalloweenPartytime_Person[1]
	end
	if nPerson ~= nil then
		-- 地图播报
		local sUserName = Get_UserName(Get_UserId())
		Map_SendBroadcastMsg(tHalloweenPartytime_Data["MapId"], string.format(tHalloweenPartytime_Text[nNpcId]["PersonTip"], nPerson))
	end
end

function HalloweenPartytime_PartyStart()
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	local nNpcId = tHalloweenPartytime_Data["BunnyGirlNpcId"]
	local sNpcName = Get_NpcName(nNpcId)
	local nNpcPosX = Get_NpcPositionX(nNpcId)
	local nNpcPosY = Get_NpcPositionY(nNpcId)
	local nNowMapId = Get_UserMapId()
	
	--激情服和非激情服寻路有区别
	if SpecialServer_ChkNoGiftServer() then
		if nNowMapId ~= tHalloweenPartytime_Data["MapId1"] and nNowMapId ~= tHalloweenPartytime_Data["MapId2"] then
			Sys_SystemBroadcast(tHalloweenPartytime_Text[nNpcId]["PartyStart"])
			Sys_TalkBroadcast(tHalloweenPartytime_Text[nNpcId]["PartyStart"])
			return
		end
		Sys_SystemBroadcast(string.format(tHalloweenPartytime_Text[nNpcId]["Normal"], sNpcName, nNpcPosX, nNpcPosY))
		Sys_TalkBroadcast(string.format(tHalloweenPartytime_Text[nNpcId]["Normal"], sNpcName, nNpcPosX, nNpcPosY))
	else
		if nNowMapId ~= tHalloweenPartytime_Data["MapId1"] and nNowMapId ~= tHalloweenPartytime_Data["MapId2"] then
			Sys_SystemBroadcast(tHalloweenPartytime_Text[nNpcId]["PartyStart"])
			Sys_TalkBroadcast(tHalloweenPartytime_Text[nNpcId]["PartyStart"])
			return
		end
		Sys_SystemBroadcast(string.format(tHalloweenPartytime_Text[nNpcId]["NoGift"], sNpcName, nNpcPosX, nNpcPosY))
		Sys_TalkBroadcast(string.format(tHalloweenPartytime_Text[nNpcId]["NoGift"], sNpcName, nNpcPosX, nNpcPosY))
	end
end

function HalloweenPartytime_GetSkin(nNpcId)
	-- 时间判断
	if not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) then
		return
	end
	-- 等级判断
	if not User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"]) then
		return
	end
	local nUserId = Get_UserId()
	if tNpcGossip[nNpcId]["Option116"] == tHalloweenPartytime_Text[nNpcId]["Option116"] then
		User_TalkChannel2005(tHalloweenPartytime_Text[nNpcId]["NoSkin"])
		
	elseif tNpcGossip[nNpcId]["Option116"] == tHalloweenPartytime_Text[nNpcId]["Option118"] then
		User_TalkChannel2005(tHalloweenPartytime_Text[nNpcId]["AlreadyGetSkin"])
		
	elseif tNpcGossip[nNpcId]["Option116"] == tHalloweenPartytime_Text[nNpcId]["Option117"] then
		local nUserId = Get_UserId()
		local nTaskId = tHalloweenPartytime_TaskDetail["Statistical"]
		
		if Task_ChkTaskDetailValue(nTaskId,"3",">=",3,nUserId) then
			HalloweenPartytime_ChgWindow()
			User_TalkChannel2005(tHalloweenPartytime_Text[nNpcId]["GetSkin"])
			-- 加光效
			User_EffectAdd("self",tHalloweenPartytime_Effect["getAward"],nUserId)
		end
	end
end

------------------------------------------------------------------------------------NPC部分-------------------------------------------
-- Joker
tNpcFace[5856] = 2533
tNpcGossip[25035] = tNpcGossip[25035] or DefaultNpc:new{}
tNpcGossip[25035]["OptionHidden"] = 1
tNpcGossip[25035]["DialogueText"] = tHalloweenPartytime_Text[25035]
tNpcGossip[25035]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[25035]["tOption1-1"] = {111,112,116,113}
tNpcGossip[25035]["OptionFunc111"] = "HalloweenPartytime_Transform</N>25035"
tNpcGossip[25035]["OptionFunc112"] = "HalloweenPartytime_GetReward</N>25035"
tNpcGossip[25035]["OptionFunc113"] = "HalloweenPartytime_LeaveConfirm</N>25035"
tNpcGossip[25035]["OptionFunc116"] = "HalloweenPartytime_GetSkin</N>25035"
tNpcGossip[25035]["ChkFunc1-1"] = function()
	HalloweenPartytime_DialogJudge(25035)
	-- NPC加光效
	HalloweenPartytime_AddEffect(25035)
	return Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) and HalloweenPartytime_ChkTime()
end

-- 非派对时间
tNpcGossip[25035]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[25035]["tOption1-2"] = {121,122}
tNpcGossip[25035]["OptionFunc122"] = "HalloweenPartytime_LeaveConfirm</N>25035"
tNpcGossip[25035]["ChkFunc1-2"] = function()
	-- NPC加光效
	HalloweenPartytime_AddEffect(25035)
	return Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) and not HalloweenPartytime_ChkTime()
end

-- 接3
tNpcGossip[25035]["Text3-2"] = {321}
tNpcGossip[25035]["tOption3-2"] = {321,322}
tNpcGossip[25035]["OptionFunc321"] = "HalloweenPartytime_ChgMap"

-- 已领完所有奖励
tNpcGossip[25035]["Text2-1"] = {211}
tNpcGossip[25035]["tOption2-1"] = {211}

-- 领取失败，没有奖励
tNpcGossip[25035]["Text2-2"] = {221}
tNpcGossip[25035]["tOption2-2"] = {221}


-- 万圣魅魔
tNpcFace[5054] = 2573
tNpcGossip[25201] = tNpcGossip[25201] or DefaultNpc:new{}
tNpcGossip[25201]["OptionHidden"] = 1
tNpcGossip[25201]["DialogueText"] = tHalloweenPartytime_Text[25201]
tNpcGossip[25201]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[25201]["tOption1-1"] = {111,112}
tNpcGossip[25201]["OptionFunc111"] = "HalloweenPartytime_EnterMap</N>25201"
tNpcGossip[25201]["OptionFunc112"] = "HalloweenPartytime_RankView"
tNpcGossip[25201]["ChkFunc1-1"] = function()
	HalloweenPartytime_CleanNextDay()
	return Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["MapOpenTime"]) and User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"])
end

tNpcGossip[25201]["Text1-2"] = {111,112,113,114,115}
tNpcGossip[25201]["tOption1-2"] = {113}
tNpcGossip[25201]["ChkFunc1-2"] = function()
	HalloweenPartytime_CleanNextDay()
	return not Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["MapOpenTime"])
end

tNpcGossip[25201]["Text1-3"] = {111,112,113,114,115}
tNpcGossip[25201]["tOption1-3"] = {114}
tNpcGossip[25201]["ChkFunc1-3"] = function()
	HalloweenPartytime_CleanNextDay()
	return Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["MapOpenTime"]) and not User_JudgeLevelAndMetempsychosis(tHalloweenPartytime_Data["Level"],tHalloweenPartytime_Data["Metempsychosis"])
end


-- 跨服英文Joker
tNpcFace[5857] = 2533
tNpcGossip[25483] = tNpcGossip[25483] or DefaultNpc:new{}
tNpcGossip[25483]["OptionHidden"] = 1
tNpcGossip[25483]["DialogueText"] = tHalloweenPartytime_Text[25483]
tNpcGossip[25483]["Text1-1"] = {111,112,113,114,115,116,117}
tNpcGossip[25483]["tOption1-1"] = {111,112,116,113}
tNpcGossip[25483]["OptionFunc111"] = "HalloweenPartytime_Transform</N>25483"
tNpcGossip[25483]["OptionFunc112"] = "HalloweenPartytime_GetReward</N>25483"
tNpcGossip[25483]["OptionFunc113"] = "HalloweenPartytime_LeaveConfirm</N>25483"
tNpcGossip[25483]["OptionFunc116"] = "HalloweenPartytime_GetSkin</N>25483"
tNpcGossip[25483]["ChkFunc1-1"] = function()
	HalloweenPartytime_DialogJudge(25483)
	-- NPC加光效
	HalloweenPartytime_AddEffect(25483)
	return Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) and HalloweenPartytime_ChkTime()
end

-- 非派对时间
tNpcGossip[25483]["Text1-2"] = {121,122,123,124,125}
tNpcGossip[25483]["tOption1-2"] = {121,122}
tNpcGossip[25483]["OptionFunc122"] = "HalloweenPartytime_LeaveConfirm</N>25483"
tNpcGossip[25483]["ChkFunc1-2"] = function()
	-- NPC加光效
	HalloweenPartytime_AddEffect(25483)
	return Sys_ChkFullTime(tActivityTime["HalloweenPartytime"]["ActivityTime"]) and not HalloweenPartytime_ChkTime()
end

-- 接3
tNpcGossip[25483]["Text3-2"] = {321}
tNpcGossip[25483]["tOption3-2"] = {321,322}
tNpcGossip[25483]["OptionFunc321"] = "HalloweenPartytime_ChgMap"

-- 已领完所有奖励
tNpcGossip[25483]["Text2-1"] = {211}
tNpcGossip[25483]["tOption2-1"] = {211}

-- 领取失败，没有奖励
tNpcGossip[25483]["Text2-2"] = {221}
tNpcGossip[25483]["tOption2-2"] = {221}

------------------------------------------------------------------------------------上线触发-------------------------------------------
-- tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
-- table.insert(tSystem_PlayLogin_Func,HalloweenPartytime_OnLine)

------------------------------------------------------------------------------------时间自检-------------------------------------------
-- 清理派对参与人数
local tHalloweenPartytime_ResetGlobal = {}
tHalloweenPartytime_ResetGlobal["ActivityTime"] = tActivityTime["HalloweenPartytime"]["ActivityTime"]
tHalloweenPartytime_ResetGlobal["Type"] = 2
tHalloweenPartytime_ResetGlobal["TimeType"] = 4
tHalloweenPartytime_ResetGlobal["Time"] = "00:00 00:02"
tHalloweenPartytime_ResetGlobal["Func"] = HalloweenPartytime_ResetGlobalData
table.insert(tSystemTime_InitialData,tHalloweenPartytime_ResetGlobal)

local tHalloweenPartytime_ResetGlobal1 = {}
tHalloweenPartytime_ResetGlobal1["ActivityTime"] = tActivityTime["HalloweenPartytime"]["ActivityTime"]
tHalloweenPartytime_ResetGlobal1["Type"] = 2
tHalloweenPartytime_ResetGlobal1["TimeType"] = 4
tHalloweenPartytime_ResetGlobal1["Time"] = "00:03 00:04"
tHalloweenPartytime_ResetGlobal1["Func"] = HalloweenPartytime_ResetGlobalData1
table.insert(tSystemTime_InitialData,tHalloweenPartytime_ResetGlobal1)

-- 派对时间到
local tHalloweenPartytime_PartyStart = {}
tHalloweenPartytime_PartyStart["ActivityTime"] = tActivityTime["HalloweenPartytime"]["ActivityTime"]
tHalloweenPartytime_PartyStart["Type"] = 2
tHalloweenPartytime_PartyStart["TimeType"] = 4
tHalloweenPartytime_PartyStart["Multiple"] = {}
tHalloweenPartytime_PartyStart["Multiple"][1]  = "04:00 04:02"
tHalloweenPartytime_PartyStart["Multiple"][2]  = "10:00 10:02"
tHalloweenPartytime_PartyStart["Multiple"][3]  = "13:00 13:02"
tHalloweenPartytime_PartyStart["Multiple"][4]  = "18:00 18:02"
tHalloweenPartytime_PartyStart["Func"] = HalloweenPartytime_PartyStart
table.insert(tSystemTime_InitialData,tHalloweenPartytime_PartyStart)

