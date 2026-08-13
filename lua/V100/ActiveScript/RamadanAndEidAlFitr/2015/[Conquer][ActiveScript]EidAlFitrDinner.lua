------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]开斋的宴请
--Purpose:		2015年斋月节和开斋节活动之开斋的宴请
--Creator: 		郑鋆
--Created:		2015/3/20
------------------------------------------------------------------------------------
-- 命名规则
-- EidAlFitrDinner2015_

-- 掩码说明
-- 133	82	记录每天送邀请函的次数

-- 常量表
local tEidAlFitrDinner2015_Constant = {}
	-- 活动时间
	tEidAlFitrDinner2015_Constant["BeforeActivityTime"] = "2017-03-17 00:00 2017-06-24 23:59"
	tEidAlFitrDinner2015_Constant["ActivityTime"] = "2017-06-25 00:00 2017-06-27 23:59"

	-- 玩家等级要求
	tEidAlFitrDinner2015_Constant["Metempsychosis"] = 0
	tEidAlFitrDinner2015_Constant["Level"] = 80
	
	tEidAlFitrDinner2015_Constant["ItemSpace"] = 1
	
	-- stc掩码
	tEidAlFitrDinner2015_Constant["EventType"] = 133
	tEidAlFitrDinner2015_Constant["DataType"] = 82
	tEidAlFitrDinner2015_Constant["Data"] = 5
	
	tEidAlFitrDinner2015_Constant["BeginItem"] = 3006178
	tEidAlFitrDinner2015_Constant["EndItem"] = 3006185
	
	tEidAlFitrDinner2015_Constant["MouseType"] = 27
	
	tEidAlFitrDinner2015_Constant["Log"] = "0,0,0,0,12000063,2,%d,1"
	tEidAlFitrDinner2015_Constant["DisappearLog"] = "0,0,%d,1,12000063,2,%d,%d"

	tEidAlFitrDinner2015_Constant["AverageReward"] = 3006187
	tEidAlFitrDinner2015_Constant["SeniorAward"] = 3006188
	
	tEidAlFitrDinner2015_Constant["FestivalId"] = 3422
	tEidAlFitrDinner2015_Constant["LogId"] = 12000063
	
	-- 古兰经
	tEidAlFitrDinner2015_Constant[3006187] = {}
	tEidAlFitrDinner2015_Constant[3006187]["Exp"] = 10
	tEidAlFitrDinner2015_Constant[3006187]["PracticeValue"] = 5
	tEidAlFitrDinner2015_Constant[3006187]["PracticeLog"] = "0,0,3006187,1,12000063,2,6,5"
	tEidAlFitrDinner2015_Constant[3006187]["ExpLog"] = "0,0,3006187,1,12000063,2,4,10"
	
	-- 精装古兰经
	tEidAlFitrDinner2015_Constant[3006188] = {}
	tEidAlFitrDinner2015_Constant[3006188]["PracticeValue"] = 25
	tEidAlFitrDinner2015_Constant[3006188]["Effect"] = "angelwing6"
	
-- NPC坐标点
local tEidAlFitrDinner2015_NpcPosition = {}
	tEidAlFitrDinner2015_NpcPosition[3006178] = {}
	tEidAlFitrDinner2015_NpcPosition[3006178]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006178]["MinCellX"] = 279
	tEidAlFitrDinner2015_NpcPosition[3006178]["MaxCellX"] = 289
	tEidAlFitrDinner2015_NpcPosition[3006178]["MinCellY"] = 261
	tEidAlFitrDinner2015_NpcPosition[3006178]["MaxCellY"] = 271
	tEidAlFitrDinner2015_NpcPosition[3006178]["PathCellX"] = 284
	tEidAlFitrDinner2015_NpcPosition[3006178]["PathCellY"] = 266
	
	tEidAlFitrDinner2015_NpcPosition[3006179] = {}
	tEidAlFitrDinner2015_NpcPosition[3006179]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006179]["MinCellX"] = 319
	tEidAlFitrDinner2015_NpcPosition[3006179]["MaxCellX"] = 329
	tEidAlFitrDinner2015_NpcPosition[3006179]["MinCellY"] = 225
	tEidAlFitrDinner2015_NpcPosition[3006179]["MaxCellY"] = 235
	tEidAlFitrDinner2015_NpcPosition[3006179]["PathCellX"] = 324
	tEidAlFitrDinner2015_NpcPosition[3006179]["PathCellY"] = 230
	
	tEidAlFitrDinner2015_NpcPosition[3006180] = {}
	tEidAlFitrDinner2015_NpcPosition[3006180]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006180]["MinCellX"] = 282
	tEidAlFitrDinner2015_NpcPosition[3006180]["MaxCellX"] = 292
	tEidAlFitrDinner2015_NpcPosition[3006180]["MinCellY"] = 246
	tEidAlFitrDinner2015_NpcPosition[3006180]["MaxCellY"] = 256
	tEidAlFitrDinner2015_NpcPosition[3006180]["PathCellX"] = 287
	tEidAlFitrDinner2015_NpcPosition[3006180]["PathCellY"] = 251
	
	tEidAlFitrDinner2015_NpcPosition[3006181] = {}
	tEidAlFitrDinner2015_NpcPosition[3006181]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006181]["MinCellX"] = 333
	tEidAlFitrDinner2015_NpcPosition[3006181]["MaxCellX"] = 343
	tEidAlFitrDinner2015_NpcPosition[3006181]["MinCellY"] = 222
	tEidAlFitrDinner2015_NpcPosition[3006181]["MaxCellY"] = 232
	tEidAlFitrDinner2015_NpcPosition[3006181]["PathCellX"] = 338
	tEidAlFitrDinner2015_NpcPosition[3006181]["PathCellY"] = 227
	
	tEidAlFitrDinner2015_NpcPosition[3006182] = {}
	tEidAlFitrDinner2015_NpcPosition[3006182]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006182]["MinCellX"] = 276
	tEidAlFitrDinner2015_NpcPosition[3006182]["MaxCellX"] = 286
	tEidAlFitrDinner2015_NpcPosition[3006182]["MinCellY"] = 246
	tEidAlFitrDinner2015_NpcPosition[3006182]["MaxCellY"] = 256
	tEidAlFitrDinner2015_NpcPosition[3006182]["PathCellX"] = 281
	tEidAlFitrDinner2015_NpcPosition[3006182]["PathCellY"] = 251
	
	tEidAlFitrDinner2015_NpcPosition[3006183] = {}
	tEidAlFitrDinner2015_NpcPosition[3006183]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006183]["MinCellX"] = 279
	tEidAlFitrDinner2015_NpcPosition[3006183]["MaxCellX"] = 289
	tEidAlFitrDinner2015_NpcPosition[3006183]["MinCellY"] = 271
	tEidAlFitrDinner2015_NpcPosition[3006183]["MaxCellY"] = 281
	tEidAlFitrDinner2015_NpcPosition[3006183]["PathCellX"] = 284
	tEidAlFitrDinner2015_NpcPosition[3006183]["PathCellY"] = 276
	
	tEidAlFitrDinner2015_NpcPosition[3006184] = {}
	tEidAlFitrDinner2015_NpcPosition[3006184]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006184]["MinCellX"] = 291
	tEidAlFitrDinner2015_NpcPosition[3006184]["MaxCellX"] = 301
	tEidAlFitrDinner2015_NpcPosition[3006184]["MinCellY"] = 245
	tEidAlFitrDinner2015_NpcPosition[3006184]["MaxCellY"] = 255
	tEidAlFitrDinner2015_NpcPosition[3006184]["PathCellX"] = 296
	tEidAlFitrDinner2015_NpcPosition[3006184]["PathCellY"] = 250
	
	tEidAlFitrDinner2015_NpcPosition[3006185] = {}
	tEidAlFitrDinner2015_NpcPosition[3006185]["MapId"] = 1002
	tEidAlFitrDinner2015_NpcPosition[3006185]["MinCellX"] = 379
	tEidAlFitrDinner2015_NpcPosition[3006185]["MaxCellX"] = 389
	tEidAlFitrDinner2015_NpcPosition[3006185]["MinCellY"] = 246
	tEidAlFitrDinner2015_NpcPosition[3006185]["MaxCellY"] = 256
	tEidAlFitrDinner2015_NpcPosition[3006185]["PathCellX"] = 384
	tEidAlFitrDinner2015_NpcPosition[3006185]["PathCellY"] = 251

-- 任务随机表
local tEidAlFitrDinner2015_Task = {}
	tEidAlFitrDinner2015_Task[1] = {}
	tEidAlFitrDinner2015_Task[1]["ItemChanceSum"] = 800
	
	tEidAlFitrDinner2015_Task[1][1] = {}
	tEidAlFitrDinner2015_Task[1][1]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][1]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][1]["Item_1"] = 3006178					
	tEidAlFitrDinner2015_Task[1][1]["Text"] = "3-1"
	
	tEidAlFitrDinner2015_Task[1][2] = {}
	tEidAlFitrDinner2015_Task[1][2]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][2]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][2]["Item_1"] = 3006179					
	tEidAlFitrDinner2015_Task[1][2]["Text"] = "3-2"
	
	tEidAlFitrDinner2015_Task[1][3] = {}
	tEidAlFitrDinner2015_Task[1][3]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][3]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][3]["Item_1"] = 3006180					
	tEidAlFitrDinner2015_Task[1][3]["Text"] = "3-3"
	
	tEidAlFitrDinner2015_Task[1][4] = {}
	tEidAlFitrDinner2015_Task[1][4]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][4]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][4]["Item_1"] = 3006181					
	tEidAlFitrDinner2015_Task[1][4]["Text"] = "3-4"
	
	tEidAlFitrDinner2015_Task[1][5] = {}
	tEidAlFitrDinner2015_Task[1][5]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][5]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][5]["Item_1"] = 3006182					
	tEidAlFitrDinner2015_Task[1][5]["Text"] = "3-5"
	
	tEidAlFitrDinner2015_Task[1][6] = {}
	tEidAlFitrDinner2015_Task[1][6]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][6]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][6]["Item_1"] = 3006183					
	tEidAlFitrDinner2015_Task[1][6]["Text"] = "3-6"
	
	tEidAlFitrDinner2015_Task[1][7] = {}
	tEidAlFitrDinner2015_Task[1][7]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][7]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][7]["Item_1"] = 3006184					
	tEidAlFitrDinner2015_Task[1][7]["Text"] = "3-7"
	
	tEidAlFitrDinner2015_Task[1][8] = {}
	tEidAlFitrDinner2015_Task[1][8]["RandomItemChanceType"] = 2
	tEidAlFitrDinner2015_Task[1][8]["ItemChance"] = 100
	tEidAlFitrDinner2015_Task[1][8]["Item_1"] = 3006185					
	tEidAlFitrDinner2015_Task[1][8]["Text"] = "3-8"

local tEidAlFitrDinner2015_ChooseNpcId = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006178] = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006179] = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006180] = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006181] = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006182] = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006183] = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006184] = {}
	tEidAlFitrDinner2015_ChooseNpcId[3006185] = {}
	
	tEidAlFitrDinner2015_ChooseNpcId[3006178]["NpcId"] = 4
	tEidAlFitrDinner2015_ChooseNpcId[3006179]["NpcId"] = 5
	tEidAlFitrDinner2015_ChooseNpcId[3006180]["NpcId"] = 1
	tEidAlFitrDinner2015_ChooseNpcId[3006181]["NpcId"] = 3
	tEidAlFitrDinner2015_ChooseNpcId[3006182]["NpcId"] = 8
	tEidAlFitrDinner2015_ChooseNpcId[3006183]["NpcId"] = 1002
	tEidAlFitrDinner2015_ChooseNpcId[3006184]["NpcId"] = 10063
	tEidAlFitrDinner2015_ChooseNpcId[3006185]["NpcId"] = 7991

--------------------------------------逻辑部分-----------------------------------------	
-- 领取邀请函
function EidAlFitrDinner2015_ReceiveInvitation(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tEidAlFitrDinner2015_Constant["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	
	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tEidAlFitrDinner2015_Constant["Level"],tEidAlFitrDinner2015_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return true
	end
	
	local nEventType = tEidAlFitrDinner2015_Constant["EventType"]
	local nDataType = tEidAlFitrDinner2015_Constant["DataType"]
	local nData = tEidAlFitrDinner2015_Constant["Data"]
	local nUserData = Get_UserStatisticValue(nEventType,nDataType)
	
	if nUserData > 0 then
		-- 判断是否隔天
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		-- 判断今天是否完成任务
		elseif nUserData >= nData then
			LinkNpcGossipFunc_New(nNpcId,"2-2")
			return
		end
	end
	
	-- 判断背包里是否有邀请函
	local nBeginItem = tEidAlFitrDinner2015_Constant["BeginItem"]
	local nEndItem = tEidAlFitrDinner2015_Constant["EndItem"]
	
	if Item_ChkMulItem(nBeginItem,nEndItem,1) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tEidAlFitrDinner2015_Constant["ItemSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	-- 获取随机任务
	local nFlat,tAward = Probabil_RandomAward(tEidAlFitrDinner2015_Task,1)
	local nItemId = tAward[1]["tAward"][1]["Item_1"]
	
	Item_AddItem(nItemId)
	
	-- 打log
	Sys_SaveActionFestivalLog(string.format(tEidAlFitrDinner2015_Constant["Log"],nItemId))
	
	local nText = tAward[1]["tAward"][1]["Text"]
	LinkNpcGossipFunc_New(nNpcId,nText)
end

-- 使用邀请函
function EidAlFitrDinner2015_UseInvitation(nItemId)
	-- 判断是否在活动时间
	if not Sys_ChkFullTime(tEidAlFitrDinner2015_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tEidAlFitrDinner2015_Constant["DisappearLog"],nItemId,0,0))
			User_TalkChannel2005(tEidAlFitrDinner2015_Text["ItemDisappear"])
		end
		
		return
	end

	local nMapId = tEidAlFitrDinner2015_NpcPosition[nItemId]["MapId"]
	local nMinCellX = tEidAlFitrDinner2015_NpcPosition[nItemId]["MinCellX"]
	local nMaxCellX = tEidAlFitrDinner2015_NpcPosition[nItemId]["MaxCellX"]
	local nMinCellY = tEidAlFitrDinner2015_NpcPosition[nItemId]["MinCellY"]
	local nMaxCellY = tEidAlFitrDinner2015_NpcPosition[nItemId]["MaxCellY"]
	local nPathCellX = tEidAlFitrDinner2015_NpcPosition[nItemId]["PathCellX"]
	local nPathCellY = tEidAlFitrDinner2015_NpcPosition[nItemId]["PathCellY"]
	
	local nUserMapId = Get_UserMapId()
	
	-- 判断是否在任务NPC附近
	if nMapId ~= nUserMapId then
		Sys_GotoSomeWhere(nPathCellX,nPathCellY,nMapId)
		return
	end
	
	local nCellX = Get_UserPositionX()
	local nCellY = Get_UserPositionY()
	
	if nMinCellX > nCellX or nMaxCellX < nCellX or nMinCellY > nCellY or nMaxCellY < nCellY then
		Sys_GotoSomeWhere(nPathCellX,nPathCellY,nMapId)
		return
	end
	
	local nEventType = tEidAlFitrDinner2015_Constant["EventType"]
	local nDataType = tEidAlFitrDinner2015_Constant["DataType"]
	local nUserData = Get_UserStatisticValue(nEventType,nDataType)
	
	if nUserData > 0 then
		-- 判断是否隔天
		if Task_StcInterval(nEventType,nDataType,1,4) then
			Task_SetStatistic(nEventType,nDataType,0,1)
			Task_SetStcTimestamp(nEventType,nDataType,0)
		end
	end

	Sys_MouseWaitClick(tEidAlFitrDinner2015_Constant["MouseType"],string.format("EidAlFitrDinner2015_MouseWaitClick</N>%d",nItemId))
end

function EidAlFitrDinner2015_MouseWaitClick(nItemId)
	-- 判断是否在活动时间
	if not Sys_ChkFullTime(tEidAlFitrDinner2015_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tEidAlFitrDinner2015_Constant["DisappearLog"],nItemId,0,0))
			User_TalkChannel2005(tEidAlFitrDinner2015_Text["ItemDisappear"])
		end
		
		return
	end
	
	-- 判断点击的是否是邀请函上需求的NPC
	local nChosenTarget = tEidAlFitrDinner2015_ChooseNpcId[nItemId]["NpcId"]
	if not Sys_NpcMouseType(tEidAlFitrDinner2015_Text[nItemId]["NpcName"]) then
		Sys_MsgBox(tEidAlFitrDinner2015_Text[nItemId]["Msg"])
		Sys_MouseClearStatus()
		return
	end
	
	-- 清除玩家当前鼠标选取状态
	Sys_MouseClearStatus()
	
	-- 检测物品是否存在并删除物品
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		local nEventType = tEidAlFitrDinner2015_Constant["EventType"]
		local nDataType = tEidAlFitrDinner2015_Constant["DataType"]
		local nUserData = Get_UserStatisticValue(nEventType,nDataType) 
		nUserData = nUserData + 1
		
		Task_SetStatistic(nEventType,nDataType,nUserData,1)
		
		local nRewardItemId
		local sMsg

		if nUserData >= tEidAlFitrDinner2015_Constant["Data"] then
			nRewardItemId = tEidAlFitrDinner2015_Constant["SeniorAward"]
			sMsg = tEidAlFitrDinner2015_Text["SeniorAward"]
		else
			nRewardItemId = tEidAlFitrDinner2015_Constant["AverageReward"]
			sMsg = tEidAlFitrDinner2015_Text["AverageReward"]
		end

		-- 添加物品
		Item_AddItem(nRewardItemId)
		Sys_SaveActionFestivalLog(string.format(tEidAlFitrDinner2015_Constant["DisappearLog"],nItemId,nRewardItemId,1))

		User_TalkChannel2005(sMsg)
	end
end

-- 使用古兰经
function EidAlFitrDinner2015_UseKoran(nItemId)
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		if not Sys_ChkFullTime(tEidAlFitrDinner2015_Constant["ActivityTime"]) then
			Sys_SaveActionFestivalLog(string.format(tEidAlFitrDinner2015_Constant["DisappearLog"],nItemId,0,0))
			User_TalkChannel2005(tEidAlFitrDinner2015_Text[nItemId]["ItemDisappear"])
			return
		end
		
		local nLev = Get_UserLevel()
		
		if nLev < 140 then
			-- 加经验
			User_AddExpTime(tEidAlFitrDinner2015_Constant[nItemId]["Exp"])
			-- 打log
			Sys_SaveActionFestivalLog(tEidAlFitrDinner2015_Constant[nItemId]["ExpLog"])
			User_TalkChannel2005(tEidAlFitrDinner2015_Text[nItemId]["Exp"])
		else
			-- 加修行值
			User_AddCultivation(tEidAlFitrDinner2015_Constant[nItemId]["PracticeValue"])
			-- 打log
			Sys_SaveActionFestivalLog(tEidAlFitrDinner2015_Constant[nItemId]["PracticeLog"])
			User_TalkChannel2005(tEidAlFitrDinner2015_Text[nItemId]["PracticeValue"])
		end
	end
end

-- 使用精装古兰经
function EidAlFitrDinner2015_UseHardcoverKoran(nItemId)
	if not Sys_ChkFullTime(tEidAlFitrDinner2015_Constant["ActivityTime"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tEidAlFitrDinner2015_Constant["DisappearLog"],nItemId,0,0))
			User_TalkChannel2005(tEidAlFitrDinner2015_Text[nItemId]["ItemDisappear"])
		end
		
		return
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tEidAlFitrDinner2015_Constant["ItemSpace"]) then
		User_TalkChannel2005(tEidAlFitrDinner2015_Text[nItemId]["NoBag"])
		return
	end
	
	if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		-- 加修行值
		User_AddCultivation(tEidAlFitrDinner2015_Constant[nItemId]["PracticeValue"])
		-- 给奖励
		FestivalGeneralPackage_GetGift(tEidAlFitrDinner2015_Constant["FestivalId"],tEidAlFitrDinner2015_Constant["LogId"])
		-- 播光效
		User_EffectAdd("self",tEidAlFitrDinner2015_Constant[nItemId]["Effect"])
		User_TalkChannel2005(tEidAlFitrDinner2015_Text[nItemId]["Msg"])
	end
end
--------------------------------------NPC模块-------------------------------------------
-- 穆斯塔法
tNpcFace[2984] = 81
tNpcGossip[18409] = tNpcGossip[18409] or DefaultNpc:new{}
tNpcGossip[18409]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[18409]["Text1-1"] = {111}
tNpcGossip[18409]["Text111"] = tEidAlFitrDinner2015_Text[18409]["111"]
tNpcGossip[18409]["tOption1-1"] = {1}
tNpcGossip[18409]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tEidAlFitrDinner2015_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[18409]["Text1-2"] = {121,122,123}
tNpcGossip[18409]["Text121"] = tEidAlFitrDinner2015_Text[18409]["121"]
tNpcGossip[18409]["Text122"] = tEidAlFitrDinner2015_Text[18409]["122"]
tNpcGossip[18409]["Text123"] = tEidAlFitrDinner2015_Text[18409]["123"]
tNpcGossip[18409]["tOption1-2"] = {2,3,4}
tNpcGossip[18409]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tEidAlFitrDinner2015_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18409]["Text1-3"] = {131}
tNpcGossip[18409]["Text131"] = tEidAlFitrDinner2015_Text[18409]["131"]
tNpcGossip[18409]["tOption1-3"] = {5}

tNpcGossip[18409]["Text2-1"] = {211}
tNpcGossip[18409]["Text211"] = tEidAlFitrDinner2015_Text[18409]["211"]
tNpcGossip[18409]["tOption2-1"] = {6}

tNpcGossip[18409]["Text2-2"] = {221}
tNpcGossip[18409]["Text221"] = tEidAlFitrDinner2015_Text[18409]["221"]
tNpcGossip[18409]["tOption2-2"] = {7}

tNpcGossip[18409]["Text2-3"] = {231}
tNpcGossip[18409]["Text231"] = tEidAlFitrDinner2015_Text[18409]["231"]
tNpcGossip[18409]["tOption2-3"] = {8}

tNpcGossip[18409]["Text2-4"] = {241}
tNpcGossip[18409]["Text241"] = tEidAlFitrDinner2015_Text[18409]["241"]
tNpcGossip[18409]["tOption2-4"] = {9}

tNpcGossip[18409]["Text3-1"] = {311}
tNpcGossip[18409]["Text311"] = tEidAlFitrDinner2015_Text[18409]["311"]
tNpcGossip[18409]["tOption3-1"] = {10}

tNpcGossip[18409]["Text3-2"] = {321}
tNpcGossip[18409]["Text321"] = tEidAlFitrDinner2015_Text[18409]["321"]
tNpcGossip[18409]["tOption3-2"] = {10}

tNpcGossip[18409]["Text3-3"] = {331}
tNpcGossip[18409]["Text331"] = tEidAlFitrDinner2015_Text[18409]["331"]
tNpcGossip[18409]["tOption3-3"] = {10}

tNpcGossip[18409]["Text3-4"] = {341}
tNpcGossip[18409]["Text341"] = tEidAlFitrDinner2015_Text[18409]["341"]
tNpcGossip[18409]["tOption3-4"] = {10}

tNpcGossip[18409]["Text3-5"] = {351}
tNpcGossip[18409]["Text351"] = tEidAlFitrDinner2015_Text[18409]["351"]
tNpcGossip[18409]["tOption3-5"] = {10}

tNpcGossip[18409]["Text3-6"] = {361}
tNpcGossip[18409]["Text361"] = tEidAlFitrDinner2015_Text[18409]["361"]
tNpcGossip[18409]["tOption3-6"] = {10}

tNpcGossip[18409]["Text3-7"] = {371}
tNpcGossip[18409]["Text371"] = tEidAlFitrDinner2015_Text[18409]["371"]
tNpcGossip[18409]["tOption3-7"] = {10}

tNpcGossip[18409]["Text3-8"] = {381}
tNpcGossip[18409]["Text381"] = tEidAlFitrDinner2015_Text[18409]["381"]
tNpcGossip[18409]["tOption3-8"] = {10}

tNpcGossip[18409]["Text4-1"] = {411,412,413}
tNpcGossip[18409]["Text411"] = tEidAlFitrDinner2015_Text[18409]["411"]
tNpcGossip[18409]["Text412"] = tEidAlFitrDinner2015_Text[18409]["412"]
tNpcGossip[18409]["Text413"] = tEidAlFitrDinner2015_Text[18409]["413"]
tNpcGossip[18409]["tOption4-1"] = {11}

-- 选项
tNpcGossip[18409]["Option1"] = tEidAlFitrDinner2015_Text[18409]["Option1"]
tNpcGossip[18409]["Option2"] = tEidAlFitrDinner2015_Text[18409]["Option2"]
tNpcGossip[18409]["OptionFunc2"]="EidAlFitrDinner2015_ReceiveInvitation</N>18409"
tNpcGossip[18409]["Option3"] = tEidAlFitrDinner2015_Text[18409]["Option3"]
tNpcGossip[18409]["OptionPoint3"]="4"
tNpcGossip[18409]["Option4"] = tEidAlFitrDinner2015_Text[18409]["Option4"]
tNpcGossip[18409]["Option5"] = tEidAlFitrDinner2015_Text[18409]["Option5"]
tNpcGossip[18409]["Option6"] = tEidAlFitrDinner2015_Text[18409]["Option6"]
tNpcGossip[18409]["Option7"] = tEidAlFitrDinner2015_Text[18409]["Option7"]
tNpcGossip[18409]["Option8"] = tEidAlFitrDinner2015_Text[18409]["Option8"]
tNpcGossip[18409]["Option9"] = tEidAlFitrDinner2015_Text[18409]["Option9"]
tNpcGossip[18409]["Option10"] = tEidAlFitrDinner2015_Text[18409]["Option10"]
tNpcGossip[18409]["Option11"] = tEidAlFitrDinner2015_Text[18409]["Option11"]


-- 邀请函（装备店老板）
tItem[3006178] = tItem[3006178] or {}
tItem[3006178]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 邀请函（铁匠）
tItem[3006179] = tItem[3006179] or {}
tItem[3006179]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 邀请函（杂货店老板）
tItem[3006180] = tItem[3006180] or {}
tItem[3006180]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 邀请函（药店老板）
tItem[3006181] = tItem[3006181] or {}
tItem[3006181]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 邀请函（仓库老板）
tItem[3006182] = tItem[3006182] or {}
tItem[3006182]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 邀请函（发型师）
tItem[3006183] = tItem[3006183] or {}
tItem[3006183]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 邀请函（店小二）
tItem[3006184] = tItem[3006184] or {}
tItem[3006184]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 邀请函（双龙城副总兵）
tItem[3006185] = tItem[3006185] or {}
tItem[3006185]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseInvitation(nItemId)
end

-- 古兰经
tItem[3006187] = tItem[3006187] or {}
tItem[3006187]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseKoran(nItemId)
end

-- 精装古兰经
tItem[3006188] = tItem[3006188] or {}
tItem[3006188]["Function"] = function(nItemId,sItemName)
	EidAlFitrDinner2015_UseHardcoverKoran(nItemId)
end