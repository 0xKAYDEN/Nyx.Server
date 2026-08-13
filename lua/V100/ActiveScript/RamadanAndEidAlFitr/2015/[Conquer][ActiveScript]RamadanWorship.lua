------------------------------------------------------------------------------------
--Name:			[征服][活动脚本]斋月的祭拜
--Purpose:		2015年斋月节和开斋节活动之斋月的祭拜
--Creator: 		郑鋆
--Created:		2015/3/20
------------------------------------------------------------------------------------

-- 命名规则
-- RamadanWorship2015_

-- 掩码说明
-- stc掩码 133 69
-- logID	12000052

-- 常量表
local tRamadanWorship2015_Constant = {}
	-- 活动时间
	tRamadanWorship2015_Constant["BeforeActivityTime"] = "2017-03-17 00:00 2017-05-25 23:59"
	tRamadanWorship2015_Constant["ActivityTime"] = "2017-05-26 00:00 2017-06-24 23:59"
	tRamadanWorship2015_Constant["NormalTime"] = "00:00 19:59"
	
	-- 玩家等级要求
	tRamadanWorship2015_Constant["Metempsychosis"] = 0
	tRamadanWorship2015_Constant["Level"] = 80
	
	-- 掩码
	tRamadanWorship2015_Constant["EventType"] = 133
	tRamadanWorship2015_Constant["DataType"] = 69
	tRamadanWorship2015_Constant["CompleteData"] = 1
	tRamadanWorship2015_Constant["RewardData"] = 2
	
	-- 读条秒数
	tRamadanWorship2015_Constant["CompleteSecs"] = 10
	tRamadanWorship2015_Constant["RewardSecs"] = 15
	
	-- 光效
	tRamadanWorship2015_Constant["CompleteEffect"] = "heal1"
	tRamadanWorship2015_Constant["RewardEffect"] = "heal2"
	
	-- 背包空间
	tRamadanWorship2015_Constant["ItemSpace"] = 1
	tRamadanWorship2015_Constant["ActionId"] = 220
	
	tRamadanWorship2015_Constant["FestivalId"] = 3419
	tRamadanWorship2015_Constant["LogId"] = 12000052
	
	tRamadanWorship2015_Constant["MaxLev"] = 140
	
	-- 额外经验
	tRamadanWorship2015_Constant["TimeExp"] = 20
	tRamadanWorship2015_Constant["Log"] = "0,0,0,0,12000052,2,4,20"
	
--------------------------------------逻辑部分-----------------------------------------		
-- 祷告判断
function RamadanWorship2015_JudgePray(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tRamadanWorship2015_Constant["ActivityTime"]) then
		return
	end
	
	-- 判断玩家等级
	if not User_JudgeLevelAndMetempsychosis(tRamadanWorship2015_Constant["Level"],tRamadanWorship2015_Constant["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	
	local nEvent = tRamadanWorship2015_Constant["EventType"]
	local nType = tRamadanWorship2015_Constant["DataType"]
	local nStcValue = Get_UserStatisticValue(nEvent,nType)

	-- 判断是否完成任务
	if nStcValue >= tRamadanWorship2015_Constant["CompleteData"] then
		-- 判断是否隔天
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		elseif nStcValue >= tRamadanWorship2015_Constant["RewardData"] then
			LinkNpcGossipFunc_New(nNpcId,"2-4")
			return
		elseif Sys_ChkDayTime(tRamadanWorship2015_Constant["NormalTime"]) then
			LinkNpcGossipFunc_New(nNpcId,"2-3")
			return
		else
			local nSecs = tRamadanWorship2015_Constant["RewardSecs"]
			local sContent = tRamadanWorship2015_Text["RewardExplore"]
			local nActionId = tRamadanWorship2015_Constant["ActionId"]
			local sFunc = "RamadanWorship2015_RewardExp"
			
			User_SetExplore(nSecs,sContent,nActionId,sFunc)
			return
		end
	end
	
	-- 判断背包空间
	if not User_CheckLeftSpace(tRamadanWorship2015_Constant["ItemSpace"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	local nSecs = tRamadanWorship2015_Constant["CompleteSecs"]
	local sContent = tRamadanWorship2015_Text["CompleteExplore"]
	local nActionId = tRamadanWorship2015_Constant["ActionId"]
	local sFunc = "RamadanWorship2015_RewardFestivalItem"

	User_SetExplore(nSecs,sContent,nActionId,sFunc)
end

-- 给通用礼包
function RamadanWorship2015_RewardFestivalItem(nNowUserId)
	local nUserId = nNowUserId or Get_UserId()
	
	-- 判断活动时间
	if not Sys_ChkFullTime(tRamadanWorship2015_Constant["ActivityTime"]) then
		return
	end
	-- 设掩码值
	local nEvent = tRamadanWorship2015_Constant["EventType"]
	local nType = tRamadanWorship2015_Constant["DataType"]
	
	Task_SetStatistic(nEvent,nType,tRamadanWorship2015_Constant["CompleteData"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,0,nUserId)
	-- 给节日通用礼包
	FestivalGeneralPackage_GetGift(tRamadanWorship2015_Constant["FestivalId"],tRamadanWorship2015_Constant["LogId"],nil,nUserId)
	-- 播光效
	User_EffectAdd("self",tRamadanWorship2015_Constant["CompleteEffect"],nUserId)
	-- 给提示
	User_TalkChannel2005(tRamadanWorship2015_Text["RewardItem"],nUserId)
end

-- 给额外经验值奖励
function RamadanWorship2015_RewardExp(nNowUserId)
	-- 判断活动时间
	local nUserId = nNowUserId or Get_UserId()
	if not Sys_ChkFullTime(tRamadanWorship2015_Constant["ActivityTime"]) then
		return
	end
	

	-- 设掩码值
	local nEvent = tRamadanWorship2015_Constant["EventType"]
	local nType = tRamadanWorship2015_Constant["DataType"]
	
	Task_SetStatistic(nEvent,nType,tRamadanWorship2015_Constant["RewardData"],1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,0,nUserId)
	
	-- 判断玩家等级
	local nLevel = Get_UserLevel(nUserId)
	if nLevel >= tRamadanWorship2015_Constant["MaxLev"] then
		return
	end
	
	-- 给经验
	User_AddExpTime(tRamadanWorship2015_Constant["TimeExp"],nUserId)
	
	-- 打log
	Sys_SaveActionFestivalLog(tRamadanWorship2015_Constant["Log"],nUserId)
	
	-- 播光效
	User_EffectAdd("self",tRamadanWorship2015_Constant["RewardEffect"],nUserId)
	
	-- 给提示
	User_TalkChannel2005(tRamadanWorship2015_Text["RewardExp"],nUserId)
end


-- 点击古兰经NPC
function RamadanWorship2015_Npc(nNpcId)
	-- 判断活动时间
	if not Sys_ChkFullTime(tRamadanWorship2015_Constant["ActivityTime"]) then
		return
	end
	
	LinkNpcGossipFunc_New(nNpcId,"1-1")
end

--------------------------------------NPC模块-------------------------------------------
-- 阿訇
tNpcFace[2975] = 218
tNpcGossip[18392] = tNpcGossip[18392] or DefaultNpc:new{}
tNpcGossip[18392]["OptionHidden"] = 1

-- 活动前对白
tNpcGossip[18392]["Text1-1"] = {111,112,113}
tNpcGossip[18392]["Text111"] = tRamadanWorship2015_Text[18392]["111"]
tNpcGossip[18392]["Text112"] = tRamadanWorship2015_Text[18392]["112"]
tNpcGossip[18392]["Text113"] = tRamadanWorship2015_Text[18392]["113"]
tNpcGossip[18392]["tOption1-1"] = {1}
tNpcGossip[18392]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tRamadanWorship2015_Constant["BeforeActivityTime"])
end

-- 活动中对白
tNpcGossip[18392]["Text1-2"] = {121,122}
tNpcGossip[18392]["Text121"] = tRamadanWorship2015_Text[18392]["121"]
tNpcGossip[18392]["Text122"] = tRamadanWorship2015_Text[18392]["122"]
tNpcGossip[18392]["tOption1-2"] = {3,4}
tNpcGossip[18392]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tRamadanWorship2015_Constant["ActivityTime"])
end

-- 活动后对白
tNpcGossip[18392]["Text1-3"] = {131}
tNpcGossip[18392]["Text131"] = tRamadanWorship2015_Text[18392]["131"]
tNpcGossip[18392]["tOption1-3"] = {2}

-- 了解活动详情
tNpcGossip[18392]["Text2-1"] = {211,212,213,214}
tNpcGossip[18392]["Text211"] = tRamadanWorship2015_Text[18392]["211"]
tNpcGossip[18392]["Text212"] = tRamadanWorship2015_Text[18392]["212"]
tNpcGossip[18392]["Text213"] = tRamadanWorship2015_Text[18392]["213"]
tNpcGossip[18392]["Text214"] = tRamadanWorship2015_Text[18392]["214"]
tNpcGossip[18392]["tOption2-1"] = {5,6}

tNpcGossip[18392]["Text3-1"] = {311,312,313,314}
tNpcGossip[18392]["Text311"] = tRamadanWorship2015_Text[18392]["311"]
tNpcGossip[18392]["Text312"] = tRamadanWorship2015_Text[18392]["312"]
tNpcGossip[18392]["Text313"] = tRamadanWorship2015_Text[18392]["313"]
tNpcGossip[18392]["Text314"] = tRamadanWorship2015_Text[18392]["314"]
tNpcGossip[18392]["tOption3-1"] = {7}

-- 选项
tNpcGossip[18392]["Option1"] = tRamadanWorship2015_Text[18392]["Option1"]
tNpcGossip[18392]["Option2"] = tRamadanWorship2015_Text[18392]["Option2"]
tNpcGossip[18392]["Option3"] = tRamadanWorship2015_Text[18392]["Option3"]
tNpcGossip[18392]["OptionPoint3"]="2"
tNpcGossip[18392]["Option4"] = tRamadanWorship2015_Text[18392]["Option4"]
tNpcGossip[18392]["Option5"] = tRamadanWorship2015_Text[18392]["Option5"]
tNpcGossip[18392]["OptionPoint5"]="3"
tNpcGossip[18392]["Option6"] = tRamadanWorship2015_Text[18392]["Option6"]
tNpcGossip[18392]["Option7"] = tRamadanWorship2015_Text[18392]["Option7"]

-- 古兰经
tNpcGossip[18393] = tNpcGossip[18393] or DefaultNpc:new{}
tNpcGossip[18393]["OptionHidden"] = 1

-- 活动中对白
tNpcGossip[18393]["Text1-1"] = {111}
tNpcGossip[18393]["Text111"] = tRamadanWorship2015_Text[18393]["111"]
tNpcGossip[18393]["tOption1-1"] = {1,2}
tNpcGossip[18393]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tRamadanWorship2015_Constant["ActivityTime"])
end

tNpcGossip[18393]["Text2-1"] = {211}
tNpcGossip[18393]["Text211"] = tRamadanWorship2015_Text[18393]["211"]
tNpcGossip[18393]["tOption2-1"] = {4}

tNpcGossip[18393]["Text2-2"] = {221}
tNpcGossip[18393]["Text221"] = tRamadanWorship2015_Text[18393]["221"]
tNpcGossip[18393]["tOption2-2"] = {5}

tNpcGossip[18393]["Text2-3"] = {231}
tNpcGossip[18393]["Text231"] = tRamadanWorship2015_Text[18393]["231"]
tNpcGossip[18393]["tOption2-3"] = {6}

tNpcGossip[18393]["Text2-4"] = {241}
tNpcGossip[18393]["Text241"] = tRamadanWorship2015_Text[18393]["241"]
tNpcGossip[18393]["tOption2-4"] = {3}

-- 选项
tNpcGossip[18393]["Option1"] = tRamadanWorship2015_Text[18393]["Option1"]
tNpcGossip[18393]["OptionFunc1"]="RamadanWorship2015_JudgePray</N>18393"
tNpcGossip[18393]["Option2"] = tRamadanWorship2015_Text[18393]["Option2"]
tNpcGossip[18393]["Option3"] = tRamadanWorship2015_Text[18393]["Option3"]
tNpcGossip[18393]["Option4"] = tRamadanWorship2015_Text[18393]["Option4"]
tNpcGossip[18393]["Option5"] = tRamadanWorship2015_Text[18393]["Option5"]
tNpcGossip[18393]["Option6"] = tRamadanWorship2015_Text[18393]["Option6"]