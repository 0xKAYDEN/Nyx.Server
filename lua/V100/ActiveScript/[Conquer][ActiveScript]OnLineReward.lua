------------------------------------------------------------------------------------
--Name:			190115[英文征服][活动脚本]在线根据时长领福利（2.2-2.28）
--Creator:		吴志宏
--Created:		2019/01/15
------------------------------------------------------------------------------------
-- 前缀
-- OnLineReward_

-- LogId 12001271

-- stc掩码说明 
-- stc 189,37	是否签到
-- stc 189,38	领奖阶段

-- 全局表记录
-- global	

--------------------------------------常量配置部分---------------------------------------
-- 常量表
local tOnLineReward_Cont = {}
	-- 等级区分奖励
	tOnLineReward_Cont["Level"] = {}
	tOnLineReward_Cont["Level"][1] = 100
	tOnLineReward_Cont["Level"][2] = 120
	tOnLineReward_Cont["Metempsychosis"] = {}
	tOnLineReward_Cont["Metempsychosis"][1] = 0
	tOnLineReward_Cont["Metempsychosis"][2] = 1
	
	-- 领奖所需分钟数
	tOnLineReward_Cont["NeedMinute"] = {}
	tOnLineReward_Cont["NeedMinute"][1] = 10
	tOnLineReward_Cont["NeedMinute"][2] = 30
	tOnLineReward_Cont["NeedMinute"][3] = 60
	
	
-- 掩码表
local tOnLineReward_Stc = {}
	-- 是否签到
	tOnLineReward_Stc["SignIn"] = {}
	tOnLineReward_Stc["SignIn"]["EventType"] = 189
	tOnLineReward_Stc["SignIn"]["DataType"] = 37
	-- 领奖阶段
	tOnLineReward_Stc["Reward"] = {}
	tOnLineReward_Stc["Reward"]["EventType"] = 189
	tOnLineReward_Stc["Reward"]["DataType"] = 38
	tOnLineReward_Stc["Reward"]["Limit"] = 3
	
	
-- 奖励表
local tOnLineReward_Reward = {}
	-- 低等级奖励
	tOnLineReward_Reward["Low"] = {}
	-- 10分钟
	tOnLineReward_Reward["Low"][1] = {}
	tOnLineReward_Reward["Low"][1]["RewardItem"] = {}
	tOnLineReward_Reward["Low"][1]["RewardItem"][1] = {}
	tOnLineReward_Reward["Low"][1]["RewardItem"][1]["Id"] = 722136
	tOnLineReward_Reward["Low"][1]["RewardItem"][1]["Attr"] = "0 3"
	tOnLineReward_Reward["Low"][1]["RewardEffect"] = {}
	tOnLineReward_Reward["Low"][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tOnLineReward_Reward["Low"][1]["LogId"] = 12001271
	tOnLineReward_Reward["Low"][1]["EmoneyLog"] = "350	21978	0	0	1	"
	-- 30分钟
	tOnLineReward_Reward["Low"][2] = {}
	tOnLineReward_Reward["Low"][2]["RewardItem"] = {}
	tOnLineReward_Reward["Low"][2]["RewardItem"][1] = {}
	tOnLineReward_Reward["Low"][2]["RewardItem"][1]["Id"] = 3308992
	tOnLineReward_Reward["Low"][2]["RewardItem"][1]["Attr"] = "0 1"
	tOnLineReward_Reward["Low"][2]["RewardEffect"] = {}
	tOnLineReward_Reward["Low"][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tOnLineReward_Reward["Low"][2]["LogId"] = 12001271
	tOnLineReward_Reward["Low"][2]["EmoneyLog"] = "350	21979	0	0	1	"
	-- 60分钟
	tOnLineReward_Reward["Low"][3] = {}
	tOnLineReward_Reward["Low"][3]["RewardItem"] = {}
	tOnLineReward_Reward["Low"][3]["RewardItem"][1] = {}
	tOnLineReward_Reward["Low"][3]["RewardItem"][1]["Id"] = 3305436
	tOnLineReward_Reward["Low"][3]["RewardItem"][1]["Attr"] = "0 1"
	tOnLineReward_Reward["Low"][3]["RewardEffect"] = {}
	tOnLineReward_Reward["Low"][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tOnLineReward_Reward["Low"][3]["LogId"] = 12001271
	tOnLineReward_Reward["Low"][3]["EmoneyLog"] = "350	21980	0	0	1	"
	
	-- 高等级奖励
	tOnLineReward_Reward["High"] = {}
	-- 10分钟
	tOnLineReward_Reward["High"][1] = {}
	tOnLineReward_Reward["High"][1]["RewardItem"] = {}
	tOnLineReward_Reward["High"][1]["RewardItem"][1] = {}
	tOnLineReward_Reward["High"][1]["RewardItem"][1]["Id"] = 4060001
	tOnLineReward_Reward["High"][1]["RewardItem"][1]["Attr"] = "0 10 3"
	tOnLineReward_Reward["High"][1]["RewardEffect"] = {}
	tOnLineReward_Reward["High"][1]["RewardEffect"]["Effect"] = "zf2-e128"
	tOnLineReward_Reward["High"][1]["LogId"] = 12001271
	tOnLineReward_Reward["High"][1]["EmoneyLog"] = "350	21981	0	0	1	"
	-- 30分钟
	tOnLineReward_Reward["High"][2] = {}
	tOnLineReward_Reward["High"][2]["RewardItem"] = {}
	tOnLineReward_Reward["High"][2]["RewardItem"][1] = {}
	tOnLineReward_Reward["High"][2]["RewardItem"][1]["Id"] = 3309126
	tOnLineReward_Reward["High"][2]["RewardItem"][1]["Attr"] = "0 1"
	tOnLineReward_Reward["High"][2]["RewardEffect"] = {}
	tOnLineReward_Reward["High"][2]["RewardEffect"]["Effect"] = "zf2-e128"
	tOnLineReward_Reward["High"][2]["LogId"] = 12001271
	tOnLineReward_Reward["High"][2]["EmoneyLog"] = "350	21982	0	0	1	"
	-- 60分钟
	tOnLineReward_Reward["High"][3] = {}
	tOnLineReward_Reward["High"][3]["RewardItem"] = {}
	tOnLineReward_Reward["High"][3]["RewardItem"][1] = {}
	tOnLineReward_Reward["High"][3]["RewardItem"][1]["Id"] = 3305436
	tOnLineReward_Reward["High"][3]["RewardItem"][1]["Attr"] = "0 1"
	tOnLineReward_Reward["High"][3]["RewardEffect"] = {}
	tOnLineReward_Reward["High"][3]["RewardEffect"]["Effect"] = "zf2-e128"
	tOnLineReward_Reward["High"][3]["LogId"] = 12001271
	tOnLineReward_Reward["High"][3]["EmoneyLog"] = "350	21983	0	0	1	"
	
	
----------------------------------------逻辑部分-------------------------------------
-- 签到
function OnLineReward_SignIn(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["OnLineReward"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_SignIn = tOnLineReward_Stc["SignIn"]["EventType"]
	local nType_SignIn = tOnLineReward_Stc["SignIn"]["DataType"]
	local nEvent_Reward = tOnLineReward_Stc["Reward"]["EventType"]
	local nType_Reward = tOnLineReward_Stc["Reward"]["DataType"]
	
	-- 隔天重置
	if Task_StcInterval(nEvent_SignIn,nType_SignIn,1,4) then
		Task_SetStatistic(nEvent_SignIn,nType_SignIn,0,1)
		Task_SetStcTimestamp(nEvent_SignIn,nType_SignIn,0)
	end
	if Task_StcInterval(nEvent_Reward,nType_Reward,1,4) then
		Task_SetStatistic(nEvent_Reward,nType_Reward,0,1)
		Task_SetStcTimestamp(nEvent_Reward,nType_Reward,0)
	end
	
	-- 是否已签到过
	if Task_ChkStcValue(nEvent_SignIn,nType_SignIn,"==",1) then
		Sys_MsgBox(tOnLineReward_Text[105]["AlreadySignIn"])
		return false
	else
		Task_SetStatistic(nEvent_SignIn,nType_SignIn,1,1)
		Task_SetStcTimestamp(nEvent_SignIn,nType_SignIn,0)
		
		-- 判断领奖几次，提示多少分钟后领取下一阶奖励
		local nData_Reward = Get_UserStatisticValue(nEvent_Reward,nType_Reward)
		if nData_Reward < 3 then
			local nStage = nData_Reward + 1
			local nNeedTime = tOnLineReward_Cont["NeedMinute"][nStage]
			local sMsg = string.format(tOnLineReward_Text[105]["SignInSuccess"],nNeedTime,nStage)
			Sys_MsgBox(sMsg)
			return true
		end
	end
end

-- 领奖
function OnLineReward_GetReward(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["OnLineReward"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return false
	end
	
	local nEvent_SignIn = tOnLineReward_Stc["SignIn"]["EventType"]
	local nType_SignIn = tOnLineReward_Stc["SignIn"]["DataType"]
	local nEvent_Reward = tOnLineReward_Stc["Reward"]["EventType"]
	local nType_Reward = tOnLineReward_Stc["Reward"]["DataType"]
	local nLimit_Reward = tOnLineReward_Stc["Reward"]["Limit"]
	
	-- 隔天重置
	if Task_StcInterval(nEvent_SignIn,nType_SignIn,1,4) then
		Task_SetStatistic(nEvent_SignIn,nType_SignIn,0,1)
		Task_SetStcTimestamp(nEvent_SignIn,nType_SignIn,0)
	end
	if Task_StcInterval(nEvent_Reward,nType_Reward,1,4) then
		Task_SetStatistic(nEvent_Reward,nType_Reward,0,1)
		Task_SetStcTimestamp(nEvent_Reward,nType_Reward,0)
	end
	
	-- 隔天提示重新签到
	if Task_ChkStcValue(nEvent_SignIn,nType_SignIn,"==",0) then
		Sys_MsgBox(tOnLineReward_Text[105]["ReSignIn"])
		return false
	end
	
	local nData_Reward = Get_UserStatisticValue(nEvent_Reward,nType_Reward)
	-- 已领3次
	if nData_Reward >= nLimit_Reward then
		Sys_MsgBox(tOnLineReward_Text[105]["GetAll"])
		return false
	end
	
	-- 在线时长不足
	local nNowTime = os.time()
	local nSignTime = Get_UserStcTimestampValue(nEvent_SignIn,nType_SignIn)
	local nTime = math.ceil((nNowTime - nSignTime)/60)
	local nStage = nData_Reward + 1
	local nNeedTime = tOnLineReward_Cont["NeedMinute"][nStage]
	if nTime < nNeedTime then
		Sys_MsgBox(string.format(tOnLineReward_Text[105]["NotEnough"],nNeedTime))
		return false
	end
	
	-- 判断1转120
	if not User_JudgeLevelAndMetempsychosis(tOnLineReward_Cont["Level"][2],tOnLineReward_Cont["Metempsychosis"][2]) then
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tOnLineReward_Reward["Low"][nStage])
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tOnLineReward_Text[105]["FullBag"])
			return false
		end
		
		-- 置掩码
		Task_AddStatistic(nEvent_Reward,nType_Reward,1,1)
		Task_SetStcTimestamp(nEvent_Reward,nType_Reward,0)
		
		RewardTemplate_UseItemAndMsg(tOnLineReward_Reward["Low"][nStage])
	else
		-- 判断背包空间
		local nSpace = RewardTemplate_GetRewardSpace(tOnLineReward_Reward["High"][nStage])
		if not User_CheckLeftSpace(nSpace) then
			User_TalkChannel2005(tOnLineReward_Text[105]["FullBag"])
			return false
		end
		
		-- 置掩码
		Task_AddStatistic(nEvent_Reward,nType_Reward,1,1)
		Task_SetStcTimestamp(nEvent_Reward,nType_Reward,0)
		
		RewardTemplate_UseItemAndMsg(tOnLineReward_Reward["High"][nStage])
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1")
	return true
end

-- 重置签到掩码
function OnLineReward_ResetSignIn()
	-- 判断活动时间
	if not Sys_ChkFullTime(tActivityTime["OnLineReward"]["ActivityTime"]) then
		return false
	end
	
	local nEvent_SignIn = tOnLineReward_Stc["SignIn"]["EventType"]
	local nType_SignIn = tOnLineReward_Stc["SignIn"]["DataType"]
	
	Task_SetStatistic(nEvent_SignIn,nType_SignIn,0,1)
	Task_SetStcTimestamp(nEvent_SignIn,nType_SignIn,0)
	return true
end


----------------------------------------模板部分-------------------------------------
-------------------------------NPC模板
-- 福利大使
tNpcFace[6470] = 31
tNpcGossip[23699] = tNpcGossip[23699] or DefaultNpc:new{}
tNpcGossip[23699]["OptionHidden"] = 1
tNpcGossip[23699]["DialogueText"] = tOnLineReward_Text[23699]

-- 活动前
tNpcGossip[23699]["Text1-1"] = {111,112,113}
tNpcGossip[23699]["tOption1-1"] = {111}
tNpcGossip[23699]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["OnLineReward"]["ActivityTime"])
end

-- 活动后
tNpcGossip[23699]["Text1-2"] = {121}
tNpcGossip[23699]["tOption1-2"] = {121}
tNpcGossip[23699]["ChkFunc1-2"] = function ()
	return CommonFunc_GetAfterActivityTime(tActivityTime["OnLineReward"]["ActivityTime"])
end

-- 活动中·等级不足
tNpcGossip[23699]["Text1-3"] = {131,132,133,134}
tNpcGossip[23699]["tOption1-3"] = {131}
tNpcGossip[23699]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tActivityTime["OnLineReward"]["ActivityTime"]) and not User_JudgeLevelAndMetempsychosis(tOnLineReward_Cont["Level"][1],tOnLineReward_Cont["Metempsychosis"][1])
end

-- 活动中·等级满足
tNpcGossip[23699]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410,1411,1412,1413}
tNpcGossip[23699]["tOption1-4"] = {141,142,143,144}
tNpcGossip[23699]["ChkFunc1-4"] = function ()
	local nEvent_SignIn = tOnLineReward_Stc["SignIn"]["EventType"]
	local nType_SignIn = tOnLineReward_Stc["SignIn"]["DataType"]
	local nEvent_Reward = tOnLineReward_Stc["Reward"]["EventType"]
	local nType_Reward = tOnLineReward_Stc["Reward"]["DataType"]
	local nLimit_Reward = tOnLineReward_Stc["Reward"]["Limit"]
	
	-- 隔天重置
	if Task_StcInterval(nEvent_SignIn,nType_SignIn,1,4) then
		Task_SetStatistic(nEvent_SignIn,nType_SignIn,0,1)
		Task_SetStcTimestamp(nEvent_SignIn,nType_SignIn,0)
	end
	if Task_StcInterval(nEvent_Reward,nType_Reward,1,4) then
		Task_SetStatistic(nEvent_Reward,nType_Reward,0,1)
		Task_SetStcTimestamp(nEvent_Reward,nType_Reward,0)
	end
	
	local nData_Reward = Get_UserStatisticValue(nEvent_Reward,nType_Reward)
	-- 判断1转120
	if not User_JudgeLevelAndMetempsychosis(tOnLineReward_Cont["Level"][2],tOnLineReward_Cont["Metempsychosis"][2]) then
		-- 对白判断领奖情况
		for i=1, 3 do
			if nData_Reward >= i then
				tNpcGossip[23699]["Text14" .. i+3] = string.format(tOnLineReward_Text[23699]["Text14" .. i+3],tOnLineReward_Text[23699]["AlreadyGet"])
			else
				tNpcGossip[23699]["Text14" .. i+3] = string.format(tOnLineReward_Text[23699]["Text14" .. i+3],tOnLineReward_Text[23699]["NotGet"])
			end
		end
		
		tNpcGossip[23699]["Text1-4"] = {141,142,143,144,145,146,147,148,149,1410}
	else
		-- 判断领奖情况
		for i=1, 3 do
			if nData_Reward >= i then
				tNpcGossip[23699]["Text141" .. i] = string.format(tOnLineReward_Text[23699]["Text141" .. i],tOnLineReward_Text[23699]["AlreadyGet"])
			else
				tNpcGossip[23699]["Text141" .. i] = string.format(tOnLineReward_Text[23699]["Text141" .. i],tOnLineReward_Text[23699]["NotGet"])
			end
		end
		
		tNpcGossip[23699]["Text1-4"] = {141,142,143,1411,1412,1413,147,148,1410}
	end
	
	-- 判断签到情况
	if Task_ChkStcValue(nEvent_SignIn,nType_SignIn,"==",1) then
		tNpcGossip[23699]["Option141"] = tOnLineReward_Text[23699]["Option141"] .. tOnLineReward_Text[23699]["SignIn"]
	else
		tNpcGossip[23699]["Option141"] = tOnLineReward_Text[23699]["Option141"]
		tNpcGossip[23699]["tOption1-4"] = {141,144}
		return true
	end
	
	-- 选项判断领取情况
	if nData_Reward >= nLimit_Reward then
		tNpcGossip[23699]["tOption1-4"] = {141,143,144}
	else
		-- 本阶段是否可领取
		local nNowTime = os.time()
		local nSignTime = Get_UserStcTimestampValue(nEvent_SignIn,nType_SignIn)
		local nTime = math.ceil((nNowTime - nSignTime)/60)
		if nTime >= tOnLineReward_Cont["NeedMinute"][nData_Reward+1] then
			tNpcGossip[23699]["Option142"] = tOnLineReward_Text[23699]["Option142"] .. tOnLineReward_Text[23699]["CanGet"]
		else
			local nLeft = tOnLineReward_Cont["NeedMinute"][nData_Reward+1] - nTime
			local sLeft = string.format(tOnLineReward_Text[23699]["Left"],nLeft)
			tNpcGossip[23699]["Option142"] = tOnLineReward_Text[23699]["Option142"] .. sLeft
		end
		
		tNpcGossip[23699]["tOption1-4"] = {141,142,144}
	end
	
	return true
end

tNpcGossip[23699]["OptionFunc141"] = "OnLineReward_SignIn</N>23699"
tNpcGossip[23699]["OptionFunc142"] = "OnLineReward_GetReward</N>23699"



---------------------------------------------上线触发---------------------------------------------
tSystem_PlayLogin_Func = tSystem_PlayLogin_Func or {}
table.insert(tSystem_PlayLogin_Func,OnLineReward_ResetSignIn)

