------------------------------------------------------------------------------------
--Name:		170509[简体征服][任务脚本]神龙岛PK任务
--Purpose:		神龙岛PK任务
--Creator:		许乐
--Created:		2017/05/09
------------------------------------------------------------------------------------
-- 前缀
-- NewPalacePKAct_
-----------------------------------------------------------
-- stc掩码说明          
-- stc(159,73)		记录每日获得礼包的个数
-- task_detail: 3875  	记录每日使用神龙争锋礼盒的次数

-- logid: 18000158
---------------------------------------------------------------
local tNewPalacePKAct_Cont = {}
	tNewPalacePKAct_Cont["MapId"] = 10137
	tNewPalacePKAct_Cont["TaskId"] = 3875
	
	tNewPalacePKAct_Cont["Rand"] = {}
	tNewPalacePKAct_Cont["Rand"][1] = 2000
	tNewPalacePKAct_Cont["Rand"][2] = 500
	tNewPalacePKAct_Cont["Rand"][3] = 100
	tNewPalacePKAct_Cont["Rand"]["All"] = 10000
	
	tNewPalacePKAct_Cont["Level"] = 120
	tNewPalacePKAct_Cont["Metempsychosis"] = 2
	
-- 邮件发奖
local tNewPalacePKAct_SendMail = {}
	tNewPalacePKAct_SendMail["ExistDay"] = 30 	--持续天数
	tNewPalacePKAct_SendMail["ActionId"] = 565488

local tNewPalacePKAct_Stc = {}
	tNewPalacePKAct_Stc["EventType"] = {}
	tNewPalacePKAct_Stc["DataType"] = {}
	-- stc(159,73)		记录每日获得礼包的个数
	tNewPalacePKAct_Stc["EventType"][1] = 159
	tNewPalacePKAct_Stc["DataType"][1] = 73
	
local tNewPalacePKAct_GerReward = {}
	-- PK杀人 获得礼包
	tNewPalacePKAct_GerReward["KillReward"] = {}
	tNewPalacePKAct_GerReward["KillReward"]["RewardItem"] = {}
	tNewPalacePKAct_GerReward["KillReward"]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward["KillReward"]["RewardItem"][1]["Id"] = 3303364
	tNewPalacePKAct_GerReward["KillReward"]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward["KillReward"]["Log"] = "0,0,0,0,18000158,2,3303364,1"
	tNewPalacePKAct_GerReward["KillReward"]["Talk"] = tNewPalacePKAct_Text[3303364]["GetReward"]

	--------------------------------------------------------------------------------
	-- 使用神龙争锋礼盒  3303364
	tNewPalacePKAct_GerReward[3303364] = {}
	-- 必定获得
	tNewPalacePKAct_GerReward[3303364][1] = {}
	tNewPalacePKAct_GerReward[3303364][1]["Space"] = 1
	tNewPalacePKAct_GerReward[3303364][1]["ItemChanceSum"] = 10000
	-- 3004230  神龙岛药水*1  	等概率五出一
	tNewPalacePKAct_GerReward[3303364][1][1] = {}
	tNewPalacePKAct_GerReward[3303364][1][1]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][1][1]["ItemChance"] = 2000
	tNewPalacePKAct_GerReward[3303364][1][1]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][1][1]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][1][1]["RewardItem"][1]["Id"] = 3004230
	tNewPalacePKAct_GerReward[3303364][1][1]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward[3303364][1][1]["Log"] = "0,0,0,0,18000158,1[1],3004230,1"
	-- 3004231  神龙岛药水*1  	等概率五出一
	tNewPalacePKAct_GerReward[3303364][1][2] = {}
	tNewPalacePKAct_GerReward[3303364][1][2]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][1][2]["ItemChance"] = 2000
	tNewPalacePKAct_GerReward[3303364][1][2]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][1][2]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][1][2]["RewardItem"][1]["Id"] = 3004231
	tNewPalacePKAct_GerReward[3303364][1][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward[3303364][1][2]["Log"] = "0,0,0,0,18000158,1[1],3004231,1"
	-- 3004232  神龙岛药水*1  	等概率五出一
	tNewPalacePKAct_GerReward[3303364][1][3] = {}
	tNewPalacePKAct_GerReward[3303364][1][3]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][1][3]["ItemChance"] = 2000
	tNewPalacePKAct_GerReward[3303364][1][3]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][1][3]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][1][3]["RewardItem"][1]["Id"] = 3004232
	tNewPalacePKAct_GerReward[3303364][1][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward[3303364][1][3]["Log"] = "0,0,0,0,18000158,1[1],3004232,1"
	-- 3004233  神龙岛药水*1  	等概率五出一
	tNewPalacePKAct_GerReward[3303364][1][4] = {}
	tNewPalacePKAct_GerReward[3303364][1][4]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][1][4]["ItemChance"] = 2000
	tNewPalacePKAct_GerReward[3303364][1][4]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][1][4]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][1][4]["RewardItem"][1]["Id"] = 3004233
	tNewPalacePKAct_GerReward[3303364][1][4]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward[3303364][1][4]["Log"] = "0,0,0,0,18000158,1[1],3004233,1"
	-- 3004234  神龙岛药水*1  	等概率五出一
	tNewPalacePKAct_GerReward[3303364][1][5] = {}
	tNewPalacePKAct_GerReward[3303364][1][5]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][1][5]["ItemChance"] = 2000
	tNewPalacePKAct_GerReward[3303364][1][5]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][1][5]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][1][5]["RewardItem"][1]["Id"] = 3004234
	tNewPalacePKAct_GerReward[3303364][1][5]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward[3303364][1][5]["Log"] = "0,0,0,0,18000158,1[1],3004234,1"
	
	-- 概率获得
	tNewPalacePKAct_GerReward[3303364][2] = {}
	tNewPalacePKAct_GerReward[3303364][2]["Space"] = 1
	tNewPalacePKAct_GerReward[3303364][2]["ItemChanceSum"] = 10000
	-- 30%： 高级经验球（赠）（新做）*1 3303407
	tNewPalacePKAct_GerReward[3303364][2][1] = {}
	tNewPalacePKAct_GerReward[3303364][2][1]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][2][1]["ItemChance"] = 3000
	tNewPalacePKAct_GerReward[3303364][2][1]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][2][1]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][2][1]["RewardItem"][1]["Id"] = 3303407
	tNewPalacePKAct_GerReward[3303364][2][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewPalacePKAct_GerReward[3303364][2][1]["Log"] = "0,0,0,0,18000158,1[2],3303407,1"
	-- 30%： 50点修行值礼包（3006536）*1
	tNewPalacePKAct_GerReward[3303364][2][2] = {}
	tNewPalacePKAct_GerReward[3303364][2][2]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][2][2]["ItemChance"] = 3000
	tNewPalacePKAct_GerReward[3303364][2][2]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][2][2]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][2][2]["RewardItem"][1]["Id"] = 3006536
	tNewPalacePKAct_GerReward[3303364][2][2]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward[3303364][2][2]["Log"] = "0,0,0,0,18000158,1[2],3006536,1"
	-- 20%： 50点气力值礼包（3006539）*1
	tNewPalacePKAct_GerReward[3303364][2][3] = {}
	tNewPalacePKAct_GerReward[3303364][2][3]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][2][3]["ItemChance"] = 2000
	tNewPalacePKAct_GerReward[3303364][2][3]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][2][3]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][2][3]["RewardItem"][1]["Id"] = 3006539
	tNewPalacePKAct_GerReward[3303364][2][3]["RewardItem"][1]["Attr"] = "0 1"
	tNewPalacePKAct_GerReward[3303364][2][3]["Log"] = "0,0,0,0,18000158,1[2],3006539,1"
	-- 20%： 清心符（720128）*1
	tNewPalacePKAct_GerReward[3303364][2][4] = {}
	tNewPalacePKAct_GerReward[3303364][2][4]["RandomItemChanceType"] = 2
	tNewPalacePKAct_GerReward[3303364][2][4]["ItemChance"] = 2000
	tNewPalacePKAct_GerReward[3303364][2][4]["RewardItem"] = {}
	tNewPalacePKAct_GerReward[3303364][2][4]["RewardItem"][1] = {}
	tNewPalacePKAct_GerReward[3303364][2][4]["RewardItem"][1]["Id"] = 720128
	tNewPalacePKAct_GerReward[3303364][2][4]["RewardItem"][1]["Attr"] = "0 1 3"
	tNewPalacePKAct_GerReward[3303364][2][4]["Log"] = "0,0,0,0,18000158,1[2],720128,1"

	
local tNewPalacePKAct_Log = {}
	-- 发送邮件log
	tNewPalacePKAct_Log["SendMail"] = "0,0,0,0,18000158,2,%d,0"

local tNewPalacePKAct_Effect = {}
	tNewPalacePKAct_Effect[1] = "self"
	tNewPalacePKAct_Effect[2] = "angelwing"

------------------------------------------------逻辑部分-------------------------------------------------
-- 80000001 玩家pk杀人触发
function NewPalacePKAct_PKReward()
	local nUserId = Get_UserId()
	local nMapId = Get_UserMapId(nUserId)
	
	if nMapId == tNewPalacePKAct_Cont["MapId"]  then
		local nLevel = tNewPalacePKAct_Cont["Level"]
		local nMete = tNewPalacePKAct_Cont["Metempsychosis"]
		if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
			return
		end
	
		local nTaskId = tNewPalacePKAct_Cont["TaskId"]
		if not Task_ChkTaskDetail(nTaskId,nUserId) then
			Task_AddTaskDetail(nTaskId,nUserId)
		end
		
		-- 判断隔天
		if Task_ChkTaskDetail(nTaskId,nUserId) and Task_DetailInterval(nTaskId,1,4,nUserId) then
			-- Task_DelTaskDetail(nTaskId,nUserId)
			-- Task_AddTaskDetail(nTaskId,nUserId)
			Task_SetTaskDetailData6(nTaskId,0,nUserId)
			Task_SetTaskDetailCompleteFlag(nTaskId,0,nUserId)
		end

		local nEvent = tNewPalacePKAct_Stc["EventType"][1]
		local nType = tNewPalacePKAct_Stc["DataType"][1]

		if Task_StcInterval(nEvent,nType,1,4,nUserId) then
			Task_SetStatistic(nEvent,nType,0,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
		end
		
		if Task_ChkStcValue(nEvent,nType,">=",50,nUserId) then
			return
		end
		
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		local nChoose = 0
		if nData >= 0 and nData <= 4 then
			nChoose = 1
		elseif nData >= 5 and nData <= 9 then
			nChoose = 2
		elseif nData >= 10 and nData <= 49 then
			nChoose = 3
		end
		
		local nRand = tNewPalacePKAct_Cont["Rand"][nChoose]
		local nRandSum = tNewPalacePKAct_Cont["Rand"]["All"]

		if Sys_Random(nRand,nRandSum) then
			Task_AddStatistic(nEvent,nType,1,1,nUserId)
			Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	
			if not User_CheckLeftSpace(1,nUserId) then
				local nServerId = Get_UserServerId(nUserId)
				local nActionId = tNewPalacePKAct_SendMail["ActionId"]
				local nExistDay = tNewPalacePKAct_SendMail["ExistDay"]
				local sSender = tNewPalacePKAct_Text["Mail"]["Sender"]
				local sTitle = tNewPalacePKAct_Text["Mail"]["Title"]
				local sContent = tNewPalacePKAct_Text["Mail"]["Content"]
				Sys_SendMail(nUserId,0,0,nActionId,0,nExistDay,sSender,sTitle,sContent,nServerId)
				Sys_SaveActionFestivalLog(string.format(tNewPalacePKAct_Log["SendMail"],nActionId),nUserId)
				User_TalkChannel2005(tNewPalacePKAct_Text[3303364]["GetMail"],nUserId)
				return
			end
		
			RewardTemplate_Reward(tNewPalacePKAct_GerReward["KillReward"],nUserId)
		end
	end
end

-- 使用神龙争锋礼盒  3303364
function NewPalacePKAct_UseItem(nItemId,nItemNum)
	if Item_ChkItem(nItemId) then
		-- 判断上限
		local nTaskId = tNewPalacePKAct_Cont["TaskId"]
		if not Task_ChkTaskDetail(nTaskId) then
			Task_AddTaskDetail(nTaskId)
		end
		
		-- 判断隔天
		if Task_ChkTaskDetail(nTaskId) and Task_DetailInterval(nTaskId,1,4) then
			Task_SetTaskDetailData6(nTaskId,0)
			Task_SetTaskDetailCompleteFlag(nTaskId,0)
		end
		
		-- 判断每日上限
		if Get_TaskDetailData6(nTaskId) >= 5 then
			User_TalkChannel2005(tNewPalacePKAct_Text[nItemId]["Limit"])
			return
		end
		
		if not User_CheckLeftSpace(2) then
			User_TalkChannel2005(string.format(tNewPalacePKAct_Text[nItemId]["BagFull"],2))
			return
		end
		
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local nData = Get_TaskDetailData6(nTaskId)
			Task_SetTaskDetailData6(nTaskId,tonumber(nData+1))
			Task_SetTaskDetailData7(nTaskId,os.time())
			
			local nNewData = Get_TaskDetailData6(nTaskId)
			if nNewData >= 5 then
				Task_SetTaskDetailCompleteFlag(nTaskId,1)
			end
			RewardTemplate_NewRandom(tNewPalacePKAct_GerReward[nItemId],1)
			RewardTemplate_NewRandom(tNewPalacePKAct_GerReward[nItemId],2)
			User_EffectAdd(tNewPalacePKAct_Effect[1],tNewPalacePKAct_Effect[2])
		end
	end
end

--------------------------------------------物品模板---------------------------------------
-- 神龙争锋礼盒  3303364
tItem[3303364] = tItem[3303364] or {}
tItem[3303364]["Function"] = function (nItemId,sItemName)
	NewPalacePKAct_UseItem(nItemId)
end

