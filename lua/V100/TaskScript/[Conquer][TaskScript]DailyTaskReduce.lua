------------------------------------------------------------------------------------
--Name:		[征服][任务脚本]日常活动减负-日常轮盘调整
--Purpose:	日常活动减负-日常轮盘调整
--Creator: 	兰瑞妹
--Created:	2016/05/10
------------------------------------------------------------------------------------

-- 命名前缀
-- DailyTask_WheelAdjust

-- #stc 掩码说明 
-- #造化重生涉及stc
-- #stc(144,97) 玩家完成次数 == 1炼制一次完成，==2获得额外炼制，==3额外炼制次数完成
-- #stc(145,06) 存上交材料 == 1流星卷 == 2宝石 == 3杜康酒  ==4祖母绿
-- #赤龙除妖涉及stc
-- #stc(144,87) 完成领奖 == 1
-- #stc(145,09) 日常轮盘每天上限10次 在[Conquer][TaskScript]ActivityOfFrontier文件里面修改


-- 常量表
local tDailyTask_WheelAdjust_Count = {}
	-- 玩家等级要求
	-- 造化重生
	tDailyTask_WheelAdjust_Count["Metempsychosis"] = 1
	tDailyTask_WheelAdjust_Count["Level"] = 75
	-- 赤龙除妖
	tDailyTask_WheelAdjust_Count["KillMetempsychosis"] = 0
	tDailyTask_WheelAdjust_Count["KillLevel"] = 120
	
	-- 周常轮盘id
	tDailyTask_WheelAdjust_Count["TaskId"] = 3692
	
	-- 任务需要物品
	-- 百炼天机果
	tDailyTask_WheelAdjust_Count["MysteryFruit"] = 3001044
	-- 密令
	tDailyTask_WheelAdjust_Count["AwardItem"] = {3004895,3004897,3004898,3004896}
	
	-- 赤龙除妖礼包
	tDailyTask_WheelAdjust_Count["KillDemon"] = 3200245
	
	-- 造化重生
	tDailyTask_WheelAdjust_Count["RebirthTaskId"] = 6462
	
local tDailypoint_Data = {}
	tDailypoint_Data["ActivetyTime"] = tActivityTime["LinLang"]["ActivityTime"]
	
-- Log表
local tDailyTask_WheelAdjust_Log = {}
	-- 轮盘一次抽奖
	tDailyTask_WheelAdjust_Log["WeekWheelOne"] = "0,0,3200278,1,18000121,2,0,0"
	-- 使用造化重生令
	tDailyTask_WheelAdjust_Log["UseRebirth"] = "0,0,3200279,1,18000121,2,%d[3001044],3[1]"
	tDailyTask_WheelAdjust_Log["UseRebirthNew"] = "0,0,3200279,1,12000388,1[9],0,0"
	-- 使用赤龙除妖令
	tDailyTask_WheelAdjust_Log["UseKillDemon"] = "0,0,3200280,1,18000121,2,3200245,1"
	tDailyTask_WheelAdjust_Log["UseKillDemonNew"] = "0,0,3200280,1,12000388,1[8],0,0"
	
-- stc掩码
local tDailyTask_WheelAdjust_Stc = {}
	-- 造化重生完成
	tDailyTask_WheelAdjust_Stc[1] = {}
	tDailyTask_WheelAdjust_Stc[1]["EventType"] = 144
	tDailyTask_WheelAdjust_Stc[1]["DataType"] = 97
	
	-- 赤龙除妖领奖
	tDailyTask_WheelAdjust_Stc[2] = {}
	tDailyTask_WheelAdjust_Stc[2]["EventType"] = 144
	tDailyTask_WheelAdjust_Stc[2]["DataType"] = 87
	
	-- 造化重生物品
	tDailyTask_WheelAdjust_Stc[3] = {}
	tDailyTask_WheelAdjust_Stc[3]["EventType"] = 145
	tDailyTask_WheelAdjust_Stc[3]["DataType"] = 06
	
-- 赤龙除妖完成task
local tDailyTask_WheelAdjust_TaskId ={}
	tDailyTask_WheelAdjust_TaskId["Demo"] = 6012
	
-- 特效
local tDailyTask_WheelAdjust_Effect = {}
	-- 获得奖励
	tDailyTask_WheelAdjust_Effect[1] = {}
	tDailyTask_WheelAdjust_Effect[1]["EffectObj"] = "self"
	tDailyTask_WheelAdjust_Effect[1]["Effect"] = "zf2-e128"
	
--------------------------------------逻辑部分-------------------------------------------
-- 一次抽奖
function DailyTask_WheelAdjust_OneTime(nItemId)
	local nTaskId = tDailyTask_WheelAdjust_Count["TaskId"]
	local nOpt = 1
	
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 打开轮盘抽奖
		User_TaskReward(nTaskId,nOpt)
		Sys_SaveActionTaskLog(tDailyTask_WheelAdjust_Log["WeekWheelOne"])
	end
end

-- 十连抽
function DailyTask_WheelAdjust_TenTime(nItemId)
	-- 提示不能使用
	User_TalkChannel2005(tDailyTask_WheelAdjust_Text["TenTimeFail"])
end

-- 打开轮盘抽奖
function DailyTask_WheelAdjust_UseItemWheel(nItemId)
	local nTaskId = tDailyTask_WheelAdjust_Count["TaskId"]
	local nOpt = 0
	
	--判断任务是否可以创建
	if not Task_ChkTaskDetail(nTaskId) then
		if not Task_AddTaskDetail(nTaskId) then
			return
		end
	end
	
	User_TaskReward(nTaskId,nOpt)
end

-- 赤龙除妖
function DailyTask_WheelAdjust_WeekOverStc(nEvent,nType)
	if Task_StcInterval(nEvent,nType,1,5) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		if not Task_ChkTaskDetail(tDailyTask_WheelAdjust_TaskId["Demo"]) then
			return
		end
		if Task_ChkTaskDetailValue(tDailyTask_WheelAdjust_TaskId["Demo"],"CompleteFlag","==",1) then
			--判断是否隔周,隔周进行掩码重置
			Task_SetTaskDetailCompleteFlag(tDailyTask_WheelAdjust_TaskId["Demo"],0)
			Task_SetTaskDetailData1(tDailyTask_WheelAdjust_TaskId["Demo"],0)
			Task_DelTaskDetail(tDailyTask_WheelAdjust_TaskId["Demo"])
		end
	end
	
end

-- 造化重生
function DailyTask_WheelAdjust_RebirthOverStc(nEvent,nType)
	local nGetEvent = tDailyTask_WheelAdjust_Stc[3]["EventType"]
	local nGetType = tDailyTask_WheelAdjust_Stc[3]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,5) then
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		
		Task_SetStatistic(nGetEvent,nGetType,0,1)
		Task_SetStcTimestamp(nGetEvent,nGetType,0)
		
		if Task_ChkTaskDetail(tDailyTask_WheelAdjust_Count["RebirthTaskId"]) then
			Task_DelTaskDetail(tDailyTask_WheelAdjust_Count["RebirthTaskId"])
		end
	end
end

-- 完成掩码加1
function DailyTask_WheelAdjust_FinishAddStc(nEvent,nType)
	Task_AddStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
end

-- 使用造化重生令
function DailyTask_WheelAdjust_UseItemRebirth(nItemId)
	-- 等级限制
	local nMete = tDailyTask_WheelAdjust_Count["Metempsychosis"]
	local nLevel = tDailyTask_WheelAdjust_Count["Level"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		Sys_MsgBox(tDailyTask_WheelAdjust_Text["Rebirth"]["NoLevel"])
		return
	end
	
	local nEvent = tDailyTask_WheelAdjust_Stc[1]["EventType"]
	local nType = tDailyTask_WheelAdjust_Stc[1]["DataType"]
	local nGetEvent = tDailyTask_WheelAdjust_Stc[3]["EventType"]
	local nGetType = tDailyTask_WheelAdjust_Stc[3]["DataType"]
	
	
	-- 隔周清理
	DailyTask_WheelAdjust_RebirthOverStc(nEvent,nType)
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 掩码判断 当周已完成(造化重生vip可有额外次数)
	if nData == 1 or nData == 3 then
		Sys_MsgBox(tDailyTask_WheelAdjust_Text["Rebirth"]["Fail"])
		return
	end
	
	-- 背包空间
	local nSpaceNum = 2
	
	-- 日常得积分
	-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- nSpaceNum = nSpaceNum +1
		-- end
	-- end
	-- 背包空间
	if not User_CheckLeftSpace(nSpaceNum) then
		local sTip = tDailyTask_WheelAdjust_Text["Rebirth"]["NoSpace"]
		User_TalkChannel2005(string.format(sTip,nSpaceNum))
		return
	end
	
	-- 给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nGetData = Get_UserStatisticValue(nGetEvent,nGetType)
		-- 没有接受任务随机
		if nGetData == 0 then
			nGetData = math.random(1,4)
		end
		
		-- 设置完成掩码
		DailyTask_WheelAdjust_FinishAddStc(nEvent,nType)
		Task_SetStatistic(nGetEvent,nGetType,0,1)
		Task_SetStcTimestamp(nGetEvent,nGetType,0)
		
		if Task_ChkTaskDetail(tDailyTask_WheelAdjust_Count["RebirthTaskId"]) then
			Task_DelTaskDetail(tDailyTask_WheelAdjust_Count["RebirthTaskId"])
		end
		
		local nAwardItemId = tDailyTask_WheelAdjust_Count["AwardItem"][nGetData]
		-- 给物品
		Item_AddItem(tDailyTask_WheelAdjust_Count["MysteryFruit"])
		Item_AddItem(nAwardItemId,0,3)
		
		--获得随机积分卡
		-- Dailypoint_RewardDraw(8)
		
		local sShowText = tDailyTask_WheelAdjust_Text["Rebirth"]["Success"]
		Sys_MsgBox(string.format(sShowText,tDailyTask_WheelAdjust_Text["Token"][nGetData]))
		
		local sLog = tDailyTask_WheelAdjust_Log["UseRebirth"]
		local sSaveLog = string.format(sLog,nAwardItemId)
		
		Sys_SaveActionTaskLog(sSaveLog)
		Sys_SaveActionFestivalLog(tDailyTask_WheelAdjust_Log["UseRebirthNew"])
		User_EffectAdd(tDailyTask_WheelAdjust_Effect[1]["EffectObj"],tDailyTask_WheelAdjust_Effect[1]["Effect"])
	end
end

-- 使用赤龙除妖令 
function DailyTask_WheelAdjust_UseItemKillDemon(nItemId)
	local nMete = tDailyTask_WheelAdjust_Count["KillMetempsychosis"]
	local nLevel = tDailyTask_WheelAdjust_Count["KillLevel"]
	if not User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		Sys_MsgBox(tDailyTask_WheelAdjust_Text["KillDemon"]["NoLevel"])
		return
	end
	
	local nEvent = tDailyTask_WheelAdjust_Stc[2]["EventType"]
	local nType = tDailyTask_WheelAdjust_Stc[2]["DataType"]
	
	-- 隔周清理掩码
	DailyTask_WheelAdjust_WeekOverStc(nEvent,nType)
	
	local nData = Get_UserStatisticValue(nEvent,nType)
	-- 掩码判断
	if nData == 1 then
		Sys_MsgBox(tDailyTask_WheelAdjust_Text["KillDemon"]["Fail"])
		return
	end
	
	-- 背包空间
	local nSpaceNum = 1
	
	-- 日常得积分
	-- if Sys_ChkFullTime(tDailypoint_Data["ActivetyTime"]) then
		-- if not CommonFunc_ChkGoldServer() then
			-- nSpaceNum = nSpaceNum +1
		-- end
	-- end
	-- 背包空间
	if not User_CheckLeftSpace(nSpaceNum) then
		local sTip = tDailyTask_WheelAdjust_Text["KillDemon"]["NoSpace"]
		User_TalkChannel2005(string.format(sTip,nSpaceNum))
		return
	end
	
	-- 给奖励
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 设置完成掩码
		DailyTask_WheelAdjust_FinishAddStc(nEvent,nType)
		if not Task_ChkTaskDetail(tDailyTask_WheelAdjust_TaskId["Demo"]) then
			Task_AddTaskDetail(tDailyTask_WheelAdjust_TaskId["Demo"])
		end
		Task_SetTaskDetailCompleteFlag(tDailyTask_WheelAdjust_TaskId["Demo"],1)
		
		-- 给物品
		Item_AddNewItem(tDailyTask_WheelAdjust_Count["KillDemon"],"0 1 0 1440 1")
		
		--获得随机积分卡
		Dailypoint_RewardDraw(7)
		
		--给成就
		KillMob_AddAchievement()
		
		Sys_MsgBox(tDailyTask_WheelAdjust_Text["KillDemon"]["Success"])
		
		Sys_SaveActionTaskLog(tDailyTask_WheelAdjust_Log["UseKillDemon"])
		Sys_SaveActionFestivalLog(tDailyTask_WheelAdjust_Log["UseKillDemonNew"])
		User_EffectAdd(tDailyTask_WheelAdjust_Effect[1]["EffectObj"],tDailyTask_WheelAdjust_Effect[1]["Effect"])
	end
end


--------------------------------------物品模块-------------------------------------------
-- 周常轮盘，纵横沙场补给包 3200278
tItem[3200278] = tItem[3200278] or {}
tItem[3200278]["Function"] = function(nItemId,sItemName)
	-- DailyTask_WheelAdjust_UseItemWheel(nItemId)
	RouletteMould_Main(tDailyTask_WheelAdjust_Count["TaskId"])
end

-- 造化重生令
tItem[3200279] = tItem[3200279] or {}
tItem[3200279]["Function"] = function(nItemId,sItemName)
	DailyTask_WheelAdjust_UseItemRebirth(nItemId)
end

-- 赤龙除妖令
tItem[3200280] = tItem[3200280] or {}
tItem[3200280]["Function"] = function(nItemId,sItemName)
	DailyTask_WheelAdjust_UseItemKillDemon(nItemId)
end



