----------------------------------------------------------------------------
--Name:		160720[英文征服][任务脚本]重新获得神品精炼版本背包信
--Purpose:	背包信
--Creator: 	许乐
--Created:	2016/07/20
----------------------------------------------------------------------------

local tGiveBackpackLetter_Cont = {}
	tGiveBackpackLetter_Cont["ActivityTime"] = "2016-07-10 00:00 2016-08-03 23:59"
	
	tGiveBackpackLetter_Cont["NeedLevel"] = 100
	tGiveBackpackLetter_Cont["NeedMetempsychosis"] = 0
	
	tGiveBackpackLetter_Cont["GlobalId"] = 51131
	tGiveBackpackLetter_Cont["GlobalData"] = 1
	tGiveBackpackLetter_Cont["GlobalPos"] = 4		-- 非新服 可以获得此背包信

	tGiveBackpackLetter_Cont["ItemId"] = 3100057
	tGiveBackpackLetter_Cont["RewardAttr"] = "0 1"
	
	tGiveBackpackLetter_Cont["EventType"] = {}
	tGiveBackpackLetter_Cont["DataType"] = {}
	
	tGiveBackpackLetter_Cont["EventType"][1] = 144
	tGiveBackpackLetter_Cont["DataType"][1] = 06
	tGiveBackpackLetter_Cont["EventType"][2] = 144
	tGiveBackpackLetter_Cont["DataType"][2] = 07
	
	tGiveBackpackLetter_Cont["Log"] = "0,0,0,0,12000466,2,3100057,1"
	
function GiveBackpackLetter_ReGet()
	-- 动态存储表判断
	local nGlobalId = tGiveBackpackLetter_Cont["GlobalId"]
	local nGlobalData = tGiveBackpackLetter_Cont["GlobalData"]
	local nPos = tGiveBackpackLetter_Cont["GlobalPos"]
	local nData = Get_SysDynaGlobalData(nGlobalId,nPos)
	if nData < nGlobalData then
		return false
	end
	
	local nItemId = tGiveBackpackLetter_Cont["ItemId"]
	local sAttr = tGiveBackpackLetter_Cont["RewardAttr"]

	-- 获得背包信掩码
	local nEvent1 = tGiveBackpackLetter_Cont["EventType"][1]
	local nType1 = tGiveBackpackLetter_Cont["DataType"][1]
	-- 使用物品掩码
	local nEvent2 = tGiveBackpackLetter_Cont["EventType"][2]
	local nType2 = tGiveBackpackLetter_Cont["DataType"][2]
	
	local nStcTime = Get_UserStcTimestampValue(nEvent1,nType1)
	local nLimitTime = 1468857600
	
	if Task_ChkStcValue(nEvent1,nType1,">=",2) then
		return
	end
	
	if Task_ChkStcValue(nEvent1,nType1,"==",1) and nStcTime >= nLimitTime then
		if Task_ChkStcValue(nEvent2,nType2,"==",2) or Task_ChkStcValue(nEvent2,nType2,"==",3) then
			-- 等级判断
			if not User_JudgeLevelAndMetempsychosis(tGiveBackpackLetter_Cont["NeedLevel"],tGiveBackpackLetter_Cont["NeedMetempsychosis"]) then
				return
			end
			
			-- 背包空间判断
			if not User_CheckLeftSpace(1) then
				User_TalkChannel2005(tBackpackLetter_Text[nItemId]["NoSpace"])
				return
			end
			
			----------------------------------------- 获得物品
			Task_SetStatistic(nEvent1,nType1,2,1)
			Task_SetStcTimestamp(nEvent1,nType1,0,0)
			Item_AddNewItem(nItemId,sAttr)
			
			Sys_SaveActionFestivalLog(tGiveBackpackLetter_Cont["Log"])
			User_TalkChannel2005(tBackpackLetter_Text[nItemId]["RewardItem"])
			return
		end
	end
	
	if Task_ChkStcValue(nEvent1,nType1,"==",0) then
		if not Sys_ChkFullTime(tGiveBackpackLetter_Cont["ActivityTime"]) then
			return
		end

		-- 等级判断
		if not User_JudgeLevelAndMetempsychosis(tGiveBackpackLetter_Cont["NeedLevel"],tGiveBackpackLetter_Cont["NeedMetempsychosis"]) then
			return
		end

		-- 背包空间判断
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tBackpackLetter_Text[nItemId]["NoSpace"])
			return
		end
		
		-- 先清掉玩家使用礼包的掩码
		Task_SetStatistic(nEvent2,nType2,0,1)
		Task_SetStcTimestamp(nEvent2,nType2,0,0)
		----------------------------------------- 获得物品
		Task_SetStatistic(nEvent1,nType1,2,1)
		Task_SetStcTimestamp(nEvent1,nType1,0,0)
		Item_AddNewItem(nItemId,sAttr)
		
		Sys_SaveActionFestivalLog(tGiveBackpackLetter_Cont["Log"])
		User_TalkChannel2005(tBackpackLetter_Text[nItemId]["RewardItem"])
	end
end


tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,GiveBackpackLetter_ReGet)

