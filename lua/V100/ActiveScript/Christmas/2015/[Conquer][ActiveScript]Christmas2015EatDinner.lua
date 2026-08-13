------------------------------------------------------------------------------------
--Name:		[征服][活动脚本]2015年双蛋活动之吃大餐(12.22-01.04)
--Purpose:	双蛋活动之吃大餐
--Creator: 	兰瑞妹
--Created:	2015/08/29
------------------------------------------------------------------------------------

-- 命名前缀
-- Christmas2015_EatDinner_

-- 掩码说明
-- #stc(137,87) 玩家当天已获得多少分钟经验奖励,上限600
-- #stc(137,88) 上次完成任务时间
-- #stc(138,91) 玩家当天已获得气力值奖励,上限150
-- #stc(138,92) 完成吃大餐活动 ==1

-- 常量表
local tChristmas_EatDinner_Count = {}
	tChristmas_EatDinner_Count["BeforeActivityTime"] = "2017-01-22 00:00 2017-12-20 23:59"
	tChristmas_EatDinner_Count["ActivityTime"] = "2017-12-21 00:00 2018-01-03 23:59"
	
	-- 玩家等级要求
	tChristmas_EatDinner_Count["Metempsychosis"] = 0
	tChristmas_EatDinner_Count["Level"] = 80

	tChristmas_EatDinner_Count["TaskItem"] = 3007399

	--tChristmas_EatDinner_Count["LogId"] = 12000202

-- Log表
local tChristmas_EatDinner_Log = {}
	tChristmas_EatDinner_Log["GetTaskItem"] = "0,0,0,0,12000202,2,3007399,1"
	tChristmas_EatDinner_Log["ItemOverdue"] = "0,0,%d,1,12000202,0,0,0"
	tChristmas_EatDinner_Log["GetExpAward"] = "0,0,3007399,1,12000202,2,4,%d"
	tChristmas_EatDinner_Log["GetTimeAward"] = "0,0,3007399,1,12000202,2,7,%d"
	tChristmas_EatDinner_Log["GetStrengAward"] = "0,0,3007399,1,12000220,2,12,%d"
	
-- stc掩码
local tChristmas_EatDinner_Stc = {}
	tChristmas_EatDinner_Stc[1] = {}
	tChristmas_EatDinner_Stc[1]["EventType"] = 137
	tChristmas_EatDinner_Stc[1]["DataType"] = 87
	tChristmas_EatDinner_Stc[1]["RewardData"] = 600
	
	tChristmas_EatDinner_Stc[2] = {}
	tChristmas_EatDinner_Stc[2]["EventType"] = 137
	tChristmas_EatDinner_Stc[2]["DataType"] = 88
	tChristmas_EatDinner_Stc[2]["RewardData"] = 1
	
	tChristmas_EatDinner_Stc[3] = {}
	tChristmas_EatDinner_Stc[3]["EventType"] = 138
	tChristmas_EatDinner_Stc[3]["DataType"] = 91
	tChristmas_EatDinner_Stc[3]["RewardData"] = 150
	
	tChristmas_EatDinner_Stc[4] = {}
	tChristmas_EatDinner_Stc[4]["EventType"] = 138
	tChristmas_EatDinner_Stc[4]["DataType"] = 92
	tChristmas_EatDinner_Stc[4]["RewardData"] = 1
	
-- 特效
local tChristmas_EatDinner_Effect = {}
	-- 完成任务光效
	tChristmas_EatDinner_Effect[1] = {}
	tChristmas_EatDinner_Effect[1]["EffectObj"] = "self"
	tChristmas_EatDinner_Effect[1]["Effect"] = "flyflower-11"
	
	-- 领取奖励光效
	tChristmas_EatDinner_Effect[2] = {}
	tChristmas_EatDinner_Effect[2]["EffectObj"] = "self"
	tChristmas_EatDinner_Effect[2]["Effect"] = "LevelUp-1"
	
-- 获得奖励
local tChristmas_EatDinner_Award= {}
	tChristmas_EatDinner_Award[1] = {}
	tChristmas_EatDinner_Award[1]["Exp"] = 75
	tChristmas_EatDinner_Award[1]["Time"] = 15
	tChristmas_EatDinner_Award[1]["Str"] = 30
	
	tChristmas_EatDinner_Award[2] = {}
	tChristmas_EatDinner_Award[2]["Exp"] = 100
	tChristmas_EatDinner_Award[2]["Time"] = 20
	tChristmas_EatDinner_Award[2]["Str"] = 60
	
	tChristmas_EatDinner_Award[3] = {}
	tChristmas_EatDinner_Award[3]["Exp"] = 150
	tChristmas_EatDinner_Award[3]["Time"] = 30
	tChristmas_EatDinner_Award[3]["Str"] = 90
	
	tChristmas_EatDinner_Award[4] = {}
	tChristmas_EatDinner_Award[4]["Exp"] = 200
	tChristmas_EatDinner_Award[4]["Time"] = 40
	tChristmas_EatDinner_Award[4]["Str"] = 120
	
	tChristmas_EatDinner_Award[5] = {}
	tChristmas_EatDinner_Award[5]["Exp"] = 300
	tChristmas_EatDinner_Award[5]["Time"] = 60
	tChristmas_EatDinner_Award[5]["Str"] = 150
	
-- 自动寻路位置
local tChristmas_EatDinner_FindWay = {}
	-- 传送到农场
	tChristmas_EatDinner_FindWay[1] = {}
	tChristmas_EatDinner_FindWay[1]["MapId"] = 1002
	tChristmas_EatDinner_FindWay[1]["PosX"] = 340
	tChristmas_EatDinner_FindWay[1]["PosY"] = 481
	
--------------------------------------逻辑部分-------------------------------------------
--玩家等级判断
function Christmas2015_EatDinner_LevelJudgement()
	local nLevel = tChristmas_EatDinner_Count["Level"]
	local nMete = tChristmas_EatDinner_Count["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

-- 领取美食劵
function Christmas2015_EatDinner_ReceiveFoodTicket(nNpcId)
	-- 判断是否在活动时间
	if not Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not Christmas2015_EatDinner_LevelJudgement() then
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	-- 判断玩家身上是否有美食劵
	if Item_ChkItem(tChristmas_EatDinner_Count["TaskItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	local nStateEvent = tChristmas_EatDinner_Stc[2]["EventType"]
	local nStateType = tChristmas_EatDinner_Stc[2]["DataType"]
	
	local nEvent = tChristmas_EatDinner_Stc[1]["EventType"]
	local nType = tChristmas_EatDinner_Stc[1]["DataType"]
	local nRewardData = tChristmas_EatDinner_Stc[1]["RewardData"]
	
	local nStrEvent = tChristmas_EatDinner_Stc[3]["EventType"]
	local nStrType = tChristmas_EatDinner_Stc[3]["DataType"]
	
	-- 距离上次任务不足1个小时
	if not Task_StcInterval(nStateEvent,nStateType,1,2) then
		if not Task_StcInterval(nStateEvent,nStateType,1,4) then 
			LinkNpcGossipFunc_New(nNpcId,"2-7")
			return
		end
	end
	
	-- 判断任务隔天
	if Task_StcInterval(nStateEvent,nStateType,1,4) then
		Task_SetStatistic(nStateEvent,nStateType,0,1)
		Task_SetStcTimestamp(nStateEvent,nStateType,0)
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		Task_SetStatistic(nStrEvent,nStrType,0,1)
		Task_SetStcTimestamp(nStrEvent,nStrType,0)
	end
	
	-- 当天领取经验奖励达到上限
	if Task_ChkStcValue(nEvent,nType,">=",nRewardData) then
		LinkNpcGossipFunc_New(nNpcId,"2-8")
		return
	end
	
	-- 当天领取气力值达到上限
	if Task_ChkStcValue(nStrEvent,nStrType,">=",tChristmas_EatDinner_Stc[3]["RewardData"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-9")
		return
	end
	
	-- 成功获得
	Item_AddItem(tChristmas_EatDinner_Count["TaskItem"])
	
	Sys_SaveActionFestivalLog(tChristmas_EatDinner_Log["GetTaskItem"])
	
	--提示 自动寻路
	Sys_MsgBox(tChristmas_EatDinner_Text["GetTicketSucces"],"Christmas2015_EatDinner_FindTable")
end

-- 自动寻路餐桌
function Christmas2015_EatDinner_FindTable()
	local nMapId = tChristmas_EatDinner_FindWay[1]["MapId"]
	local nPosX = tChristmas_EatDinner_FindWay[1]["PosX"]
	local nPosY = tChristmas_EatDinner_FindWay[1]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

-- 享用美食
function Christmas2015_EatDinner_Eating(nNpcId)
	-- 判断是否在活动时间
	if not Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not Christmas2015_EatDinner_LevelJudgement() then
		return
	end
	
	-- 判断玩家身上是否有美食劵
	if not Item_ChkItem(tChristmas_EatDinner_Count["TaskItem"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nStateEvent = tChristmas_EatDinner_Stc[2]["EventType"]
	local nStateType = tChristmas_EatDinner_Stc[2]["DataType"]
	local nEvent = tChristmas_EatDinner_Stc[1]["EventType"]
	local nType = tChristmas_EatDinner_Stc[1]["DataType"]
	local nStrEvent = tChristmas_EatDinner_Stc[1]["EventType"]
	local nStrType = tChristmas_EatDinner_Stc[1]["DataType"]
	
	-- 判断任务隔天
	if Task_StcInterval(nStateEvent,nStateType,1,4) then
		Task_SetStatistic(nStateEvent,nStateType,0,1)
		Task_SetStcTimestamp(nStateEvent,nStateType,0)
		Task_SetStatistic(nEvent,nType,0,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		Task_SetStatistic(nStrEvent,nStrType,0,1)
		Task_SetStcTimestamp(nStrEvent,nStrType,0)
	end
	
	--读条成功
	User_SetExplore(3,tChristmas_EatDinner_Text["ArticleRead"],261,"Christmas2015_EatDinner_LoadSucces")
end

-- 读条成功接口
function Christmas2015_EatDinner_LoadSucces(nUserId)
	-- local nUserId = Get_UserId()
	local nUserTeamNum = Get_UserTeamNumbers(nUserId)
	
	local nGetExpTime = 0
	local nGetDoubleTime = 0
	local nGetStrength = 0
	
	if User_IsTeamLeader(nUserId) then
		-- 队长发出全队执行
		if nUserTeamNum > 1 then
			-- 本地图的组队成员
			User_TeamExeFuncByLeader(2,"Christmas2015_EatDinner_TeamWork",nUserId)
			-- User_TalkChannel2005(tChristmas_EatDinner_Text["FarDisCaptain"],nUserId)
			return
		end
	end
	
	if Item_ChkItem(tChristmas_EatDinner_Count["TaskItem"],1,0,nUserId) and Item_DelItem(tChristmas_EatDinner_Count["TaskItem"],1,0,nUserId) then
		
		nGetExpTime = tChristmas_EatDinner_Award[1]["Exp"]
		nGetDoubleTime = tChristmas_EatDinner_Award[1]["Time"]
		nGetStrength = tChristmas_EatDinner_Award[1]["Str"]
		User_EffectAdd(tChristmas_EatDinner_Effect[1]["EffectObj"],tChristmas_EatDinner_Effect[1]["Effect"],nUserId)
		
		local nEvent = tChristmas_EatDinner_Stc[1]["EventType"]
		local nType = tChristmas_EatDinner_Stc[1]["DataType"]
		local nRewardData = tChristmas_EatDinner_Stc[1]["RewardData"]
		local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
		
		Christmas2015_EatDinner_Award(nUserId,1,nData,nGetExpTime,nGetDoubleTime,nGetStrength)
	end
end

-- 全队附近执行
function Christmas2015_EatDinner_TeamWork(nTeamUserId)
	-- 有美食劵的才可以领取奖励
	local nUserTeamNum = Get_UserTeamNumbers(nTeamUserId)
	local nGetExpTime = 0
	local nGetDoubleTime = 0
	local nGetStrength = 0

	if Item_ChkItem(tChristmas_EatDinner_Count["TaskItem"],1,0,nTeamUserId) and Item_DelItem(tChristmas_EatDinner_Count["TaskItem"],1,0,nTeamUserId) then
		
		-- 完成任务光效
		User_EffectAdd(tChristmas_EatDinner_Effect[1]["EffectObj"],tChristmas_EatDinner_Effect[1]["Effect"],nTeamUserId)
		
		nGetExpTime = tChristmas_EatDinner_Award[nUserTeamNum]["Exp"]
		nGetDoubleTime = tChristmas_EatDinner_Award[nUserTeamNum]["Time"]
		nGetStrength = tChristmas_EatDinner_Award[nUserTeamNum]["Str"]
		
		local nEvent = tChristmas_EatDinner_Stc[1]["EventType"]
		local nType = tChristmas_EatDinner_Stc[1]["DataType"]
		local nData = Get_UserStatisticValue(nEvent,nType,nTeamUserId)
		
		Christmas2015_EatDinner_Award(nTeamUserId,2,nData,nGetExpTime,nGetDoubleTime,nGetStrength)
	else
		-- 距离近但是没有美食劵
		User_TalkChannel2005(tChristmas_EatDinner_Text["HaveNoTicket"],nTeamUserId)
	end
end

-- 领取奖励
function Christmas2015_EatDinner_Award(nUserId,nAwardType,nData,nGetExpTime,nGetDoubleTime,nGetStrength)
	local nLevel = Get_UserLevel(nUserId)
	local nEvent = tChristmas_EatDinner_Stc[1]["EventType"]
	local nType = tChristmas_EatDinner_Stc[1]["DataType"]
	local nRewardData = tChristmas_EatDinner_Stc[1]["RewardData"]
	
	local nStateEvent = tChristmas_EatDinner_Stc[2]["EventType"]
	local nStateType = tChristmas_EatDinner_Stc[2]["DataType"]
	local nStrEvent = tChristmas_EatDinner_Stc[3]["EventType"]
	local nStrType = tChristmas_EatDinner_Stc[3]["DataType"]
	local nStrData = Get_UserStatisticValue(nStrEvent,nStrType,nUserId)
	local nStrLimit = tChristmas_EatDinner_Stc[3]["RewardData"]
	local nFinEvent = tChristmas_EatDinner_Stc[4]["EventType"]
	local nFinType = tChristmas_EatDinner_Stc[4]["DataType"]
	
	if nLevel < G_User_MaxLev then
		if (nData+nGetExpTime) > nRewardData then
			nGetExpTime = nRewardData - nData
		end
		nGetStrength = 0
	else
		if (nStrData+nGetStrength) > nStrLimit then
			nGetStrength = nStrLimit - nStrData
		end
		nGetExpTime = 0
		nGetDoubleTime = 0
	end
	
	-- 设置掩码
	local nSaveData = nData+nGetExpTime
	local nSaveStrData = nStrData+nGetStrength
	Task_SetStatistic(nEvent,nType,nSaveData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	Task_SetStatistic(nStrEvent,nStrType,nSaveStrData,1,nUserId)
	Task_SetStcTimestamp(nStrEvent,nStrType,0,nUserId)
	Task_SetStatistic(nStateEvent,nStateType,0,1,nUserId)
	Task_SetStcTimestamp(nStateEvent,nStateType,0,nUserId)
	
	-- 设置完成掩码
	if Task_StcInterval(nFinEvent,nFinType,1,4) then
		Task_SetStatistic(nFinEvent,nFinType,1,1,nUserId)
		Task_SetStcTimestamp(nFinEvent,nFinType,0,nUserId)
	else 
		if not Task_ChkStcValue(nFinEvent,nFinType,"==",tChristmas_EatDinner_Stc[4]["RewardData"],nUserId) then
			Task_SetStatistic(nFinEvent,nFinType,1,1,nUserId)
			Task_SetStcTimestamp(nFinEvent,nFinType,0,nUserId)
		end
	end
	
	local nTalkIndex = 0
	if nGetExpTime > 0 then
		nTalkIndex = 1
		User_AddExpTime(nGetExpTime,nUserId)
		local sLogExpTime = string.format(tChristmas_EatDinner_Log["GetExpAward"],nGetExpTime)
		Sys_SaveActionFestivalLog(sLogExpTime,nUserId)
		
		-- 双倍时间的
		User_SetExpControl(200,nGetDoubleTime*60,nUserId)
		local sLogDoubleTime = string.format(tChristmas_EatDinner_Log["GetTimeAward"],nGetDoubleTime)
		Sys_SaveActionFestivalLog(sLogDoubleTime,nUserId)
	end
	if nGetStrength > 0 then
		nTalkIndex = 2
		User_AddStrengthValue(nGetStrength,nUserId)
		local sLogStrength = string.format(tChristmas_EatDinner_Log["GetStrengAward"],nGetStrength)
		Sys_SaveActionFestivalLog(sLogStrength,nUserId)
	end
	
	-- 获得奖励
	User_EffectAdd(tChristmas_EatDinner_Effect[2]["EffectObj"],tChristmas_EatDinner_Effect[2]["Effect"],nUserId)
	
	if nAwardType == 1 then
		if Sys_Random(100,200) then
			User_TalkChannel2005(tChristmas_EatDinner_Text["AloneArticleRead"][nTalkIndex][1],nUserId)
		else
			User_TalkChannel2005(tChristmas_EatDinner_Text["AloneArticleRead"][nTalkIndex][2],nUserId)
		end
	else
		local nRanBlessNum = math.random(1,5)
		local sRandomText = ""
		if nTalkIndex == 1 then
			sRandomText = string.format(tChristmas_EatDinner_Text["CaptainArticleRead"][nTalkIndex][nRanBlessNum],nGetDoubleTime,nGetExpTime)
		else
			sRandomText = string.format(tChristmas_EatDinner_Text["CaptainArticleRead"][nTalkIndex][nRanBlessNum],nGetStrength)
		end
		User_TalkChannel2005(sRandomText,nUserId)
	end
end

-- 物品使用
function Christmas2015_EatDinner_UseItem(nItemId)
	-- 判断是否在活动时间
	if not Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tChristmas_EatDinner_Log["ItemOverdue"],nItemId))
			User_TalkChannel2005(tChristmas_EatDinner_Text["ItemOverdue"])
			return
		end
	end
end

--------------------------------------NPC模块-------------------------------------------
-- 美食家莉莉安
tNpcFace[3804] = 158
tNpcGossip[18810] = tNpcGossip[18810] or DefaultNpc:new{}
tNpcGossip[18810]["OptionHidden"] = 1
-- 活动前
tNpcGossip[18810]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[18810]["Text111"] = tChristmas_EatDinner_Text[18810]["111"]
tNpcGossip[18810]["Text112"] = tChristmas_EatDinner_Text[18810]["112"]
tNpcGossip[18810]["Text113"] = tChristmas_EatDinner_Text[18810]["113"]
tNpcGossip[18810]["Text114"] = tChristmas_EatDinner_Text[18810]["114"]
tNpcGossip[18810]["Text115"] = tChristmas_EatDinner_Text[18810]["115"]
tNpcGossip[18810]["tOption1-1"] = {1}
tNpcGossip[18810]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas_EatDinner_Count["BeforeActivityTime"])
end	

tNpcGossip[18810]["Option1"] = tChristmas_EatDinner_Text[18810]["Option1"]

-- 活动中
tNpcGossip[18810]["Text1-2"] = {121,122,123,124}
tNpcGossip[18810]["Text121"] = tChristmas_EatDinner_Text[18810]["121"]
tNpcGossip[18810]["Text122"] = tChristmas_EatDinner_Text[18810]["122"]
tNpcGossip[18810]["Text123"] = tChristmas_EatDinner_Text[18810]["123"]
tNpcGossip[18810]["Text124"] = tChristmas_EatDinner_Text[18810]["124"]
tNpcGossip[18810]["tOption1-2"] = {2,3,4}
tNpcGossip[18810]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"]) and Christmas2015_EatDinner_LevelJudgement()
end	

tNpcGossip[18810]["Option2"] = tChristmas_EatDinner_Text[18810]["Option2"]
tNpcGossip[18810]["OptionFunc2"]="Christmas2015_EatDinner_ReceiveFoodTicket</N>18810"
tNpcGossip[18810]["Option3"] = tChristmas_EatDinner_Text[18810]["Option3"]
tNpcGossip[18810]["OptionPoint3"]="2-1"
tNpcGossip[18810]["Option4"] = tChristmas_EatDinner_Text[18810]["Option4"]

-- 等级不足
tNpcGossip[18810]["Text1-3"] = {131}
tNpcGossip[18810]["Text131"] = tChristmas_EatDinner_Text[18810]["131"]
tNpcGossip[18810]["tOption1-3"] = {12}
tNpcGossip[18810]["Option12"] = tChristmas_EatDinner_Text[18810]["Option12"]
tNpcGossip[18810]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"]) and (not Christmas2015_EatDinner_LevelJudgement())
end	

-- 活动后
tNpcGossip[18810]["Text1-4"] = {141}
tNpcGossip[18810]["Text141"] = tChristmas_EatDinner_Text[18810]["141"]
tNpcGossip[18810]["tOption1-4"] = {5}
tNpcGossip[18810]["Option5"] = tChristmas_EatDinner_Text[18810]["Option5"]
tNpcGossip[18810]["ChkFunc1-4"] = function ()
	return not Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"])
end	

-- 活动介绍
tNpcGossip[18810]["Text2-1"] = {211,212,213,214}
tNpcGossip[18810]["Text211"] = tChristmas_EatDinner_Text[18810]["211"]
tNpcGossip[18810]["Text212"] = tChristmas_EatDinner_Text[18810]["212"]
tNpcGossip[18810]["Text213"] = tChristmas_EatDinner_Text[18810]["213"]
tNpcGossip[18810]["Text214"] = tChristmas_EatDinner_Text[18810]["214"]
tNpcGossip[18810]["tOption2-1"] = {6,7}
tNpcGossip[18810]["Option6"] = tChristmas_EatDinner_Text[18810]["Option6"]
tNpcGossip[18810]["OptionPoint6"]="1"
tNpcGossip[18810]["Option7"] = tChristmas_EatDinner_Text[18810]["Option7"]

-- 背包空间不足
tNpcGossip[18810]["Text2-5"] = {251}
tNpcGossip[18810]["Text251"] = tChristmas_EatDinner_Text[18810]["251"]
tNpcGossip[18810]["tOption2-5"] = {8}
tNpcGossip[18810]["Option8"] = tChristmas_EatDinner_Text[18810]["Option8"]

-- 背包已有
tNpcGossip[18810]["Text2-6"] = {261,262}
tNpcGossip[18810]["Text261"] = tChristmas_EatDinner_Text[18810]["261"]
tNpcGossip[18810]["Text262"] = tChristmas_EatDinner_Text[18810]["262"]
tNpcGossip[18810]["tOption2-6"] = {9}
tNpcGossip[18810]["Option9"] = tChristmas_EatDinner_Text[18810]["Option9"]

-- 距离上次任务不足1个小时
tNpcGossip[18810]["Text2-7"] = {271}
tNpcGossip[18810]["Text271"] = tChristmas_EatDinner_Text[18810]["271"]
tNpcGossip[18810]["tOption2-7"] = {10}
tNpcGossip[18810]["Option10"] = tChristmas_EatDinner_Text[18810]["Option10"]

-- 当天领取经验奖励达到上线
tNpcGossip[18810]["Text2-8"] = {281,282}
tNpcGossip[18810]["Text281"] = tChristmas_EatDinner_Text[18810]["281"]
tNpcGossip[18810]["Text282"] = tChristmas_EatDinner_Text[18810]["282"]
tNpcGossip[18810]["tOption2-8"] = {11}
tNpcGossip[18810]["Option11"] = tChristmas_EatDinner_Text[18810]["Option11"]

-- 当天领取经验奖励达到上线
tNpcGossip[18810]["Text2-9"] = {291,292}
tNpcGossip[18810]["Text291"] = tChristmas_EatDinner_Text[18810]["291"]
tNpcGossip[18810]["Text292"] = tChristmas_EatDinner_Text[18810]["292"]
tNpcGossip[18810]["tOption2-9"] = {13}
tNpcGossip[18810]["Option13"] = tChristmas_EatDinner_Text[18810]["Option13"]

--------------------------------------------餐桌
-- tNpcFace[87] = 188
tNpcGossip[18811] = tNpcGossip[18811] or DefaultNpc:new{}
tNpcGossip[18811]["OptionHidden"] = 1
-- 活动前
tNpcGossip[18811]["Text1-1"] = {111}
tNpcGossip[18811]["Text111"] = tChristmas_EatDinner_Text[18811]["111"]
tNpcGossip[18811]["tOption1-1"] = {1}
tNpcGossip[18811]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tChristmas_EatDinner_Count["BeforeActivityTime"])
end	

tNpcGossip[18811]["Option1"] = tChristmas_EatDinner_Text[18811]["Option1"]

-- 活动中
tNpcGossip[18811]["Text1-2"] = {121}
tNpcGossip[18811]["Text121"] = tChristmas_EatDinner_Text[18811]["121"]
tNpcGossip[18811]["tOption1-2"] = {2,3}
tNpcGossip[18811]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"]) and Christmas2015_EatDinner_LevelJudgement()
end	

tNpcGossip[18811]["Option2"] = tChristmas_EatDinner_Text[18811]["Option2"]
tNpcGossip[18811]["OptionFunc2"]="Christmas2015_EatDinner_Eating</N>18811"
tNpcGossip[18811]["OptionChkFunc2"] = function ()
	local nEvent = tChristmas_EatDinner_Stc[1]["EventType"]
	local nType = tChristmas_EatDinner_Stc[1]["DataType"]
	local nRewardData = tChristmas_EatDinner_Stc[1]["RewardData"]
	
	local nStrEvent = tChristmas_EatDinner_Stc[3]["EventType"]
	local nStrType = tChristmas_EatDinner_Stc[3]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4) then
		return true
	end
	if Task_ChkStcValue(nEvent,nType,">=",nRewardData) then
		return false
	end
	
	if Task_StcInterval(nStrEvent,nStrType,1,4) then
		return true
	end
	if Task_ChkStcValue(nStrEvent,nStrType,">=",tChristmas_EatDinner_Stc[3]["RewardData"]) then
		return false
	end
	
	return true
end

tNpcGossip[18811]["Option3"] = tChristmas_EatDinner_Text[18811]["Option3"]

--等级不足
tNpcGossip[18811]["Text1-3"] = {131}
tNpcGossip[18811]["Text131"] = tChristmas_EatDinner_Text[18811]["131"]
tNpcGossip[18811]["tOption1-3"] = {6}
tNpcGossip[18811]["Option6"] = tChristmas_EatDinner_Text[18811]["Option6"]
tNpcGossip[18811]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"]) and (not Christmas2015_EatDinner_LevelJudgement())
end	

-- 活动后
tNpcGossip[18811]["Text1-4"] = {141}
tNpcGossip[18811]["Text141"] = tChristmas_EatDinner_Text[18811]["141"]
tNpcGossip[18811]["tOption1-4"] = {4}
tNpcGossip[18811]["Option4"] = tChristmas_EatDinner_Text[18811]["Option4"]
tNpcGossip[18811]["ChkFunc1-4"] = function ()
	return not Sys_ChkFullTime(tChristmas_EatDinner_Count["ActivityTime"])
end	

-- 背包中没有美食劵
tNpcGossip[18811]["Text2-1"] = {211}
tNpcGossip[18811]["Text211"] = tChristmas_EatDinner_Text[18811]["211"]
tNpcGossip[18811]["tOption2-1"] = {5}
tNpcGossip[18811]["Option5"] = tChristmas_EatDinner_Text[18811]["Option5"]

tNpcGossip[18812] = tNpcGossip[18811]
tNpcGossip[18813] = tNpcGossip[18811]
tNpcGossip[18837] = tNpcGossip[18811]

tNpcGossip[18939] = tNpcGossip[18811]
tNpcGossip[18940] = tNpcGossip[18811]
tNpcGossip[18941] = tNpcGossip[18811]
tNpcGossip[18942] = tNpcGossip[18811]
-- 单人、组队完成提示
-------------------------------------物品使用模块-----------------------------------
-- 美食劵
tItem[3007399] = tItem[3007399] or {}
tItem[3007399]["Function"] = function(nItemId,sItemName)
	local nItemId = tChristmas_EatDinner_Count["TaskItem"]
	
	Christmas2015_EatDinner_UseItem(nItemId)
end



