------------------------------------------------------------------------------------
--Name:		190816[英文征服][活动脚本]9月答题活动（9.3-9.29）
--Creator: 	郑飞
--Created:	2019/08/17
------------------------------------------------------------------------------------
-- 命名前缀
-- SepAnswerActivity_

-- #stc 掩码说明 
-- #stc(202,45) 背包信
-- #stc(202,58) 今日是否答题	==1 表示今日已经答题		==2 今日已答未领奖	==3 今日已领奖

--------------------------------------数据配置部分--------------------------------------
-- 每日题目答案：CCA  DCA  BBA    DBC    BCB    DBB   AAD   BDB   CBA
local tAnswer = {3,3,1,4,3,1,2,2,1,4,2,3,2,1,2,4,2,2,1,1,4,2,4,2,3,2,1}

local tSepAnswerActivity_Reward = {}
	-- ===黄色神纹精粹（赠）
	-- ===索引: tSepAnswerActivity_Reward[4050001]
	-- ===
	-- ===
	tSepAnswerActivity_Reward[4050001] = {}
	tSepAnswerActivity_Reward[4050001]["LogId"] = 12001586
	tSepAnswerActivity_Reward[4050001]["RewardItem"] = {}
	tSepAnswerActivity_Reward[4050001]["RewardItem"][1] = {}
	tSepAnswerActivity_Reward[4050001]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tSepAnswerActivity_Reward[4050001]["RewardItem"][1]["Attr"] = "0 2 3" -- YellowRuneEssence（赠）*2
	tSepAnswerActivity_Reward[4050001]["RewardEffect"] = {}
	tSepAnswerActivity_Reward[4050001]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tSepAnswerActivity_Reward[4050001]["RewardEffect"]["Effect"] = "angelwing"

-- stc掩码
local tSepAnswerActivity_Stc = {}
	-- 今日是否答题
	tSepAnswerActivity_Stc[1] = {}
	tSepAnswerActivity_Stc[1]["EventType"] = 202
	tSepAnswerActivity_Stc[1]["DataType"] = 58

--------------------------------------逻辑部分--------------------------------------
-- 获取掩码值
function SepAnswerActivity_GetStcValue(nIndex,nUserId)
	local nEvent = tSepAnswerActivity_Stc[nIndex]["EventType"]
	local nType = tSepAnswerActivity_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function SepAnswerActivity_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tSepAnswerActivity_Stc[nIndex]["EventType"]
	local nType = tSepAnswerActivity_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function SepAnswerActivity_ClearStcInterval(nIndex,nUserId)
	local nEvent = tSepAnswerActivity_Stc[nIndex]["EventType"]
	local nType = tSepAnswerActivity_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

--------------------------------------npc使用
-- 开始答题
function SepAnswerActivity_BeginAnswer(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["SepAnswerActivity"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tSepAnswerActivity_Reward[4050001],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tSepAnswerActivity_Text["FullSpace"])
		return
	end
	
	--隔天重置掩码
	SepAnswerActivity_ClearStcInterval(1)
	
	local nData = SepAnswerActivity_GetStcValue(1)
	--未领奖
	if nData == 2 then 
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	--今日已答过
	elseif nData ~= 0 then
		User_TalkChannel2005(tSepAnswerActivity_Text["Answered"])
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--获取服务器时间
	local timetable = os.date("*t",os.time())
	local nMonth = timetable["month"]
	local nDay = timetable["day"]
	local sDate = "0" ..nMonth
	
	if nDay < 10 then
		sDate = sDate .. "0" .. nDay
	else
		sDate = sDate .. nDay
	end
	
	--更新每日题目
	tNpcGossip[24812]["Text211"] = tSepAnswerActivity_Text["Question"][sDate][1]
	tNpcGossip[24812]["Text212"] = tSepAnswerActivity_Text["Question"][sDate][2]
	tNpcGossip[24812]["Option211"] = tSepAnswerActivity_Text["Answer"][sDate][1]
	tNpcGossip[24812]["Option212"] = tSepAnswerActivity_Text["Answer"][sDate][2]
	tNpcGossip[24812]["Option213"] = tSepAnswerActivity_Text["Answer"][sDate][3]
	tNpcGossip[24812]["Option214"] = tSepAnswerActivity_Text["Answer"][sDate][4]
	
	--初始化答案
	tNpcGossip[24812]["OptionFunc211"] = "SepAnswerActivity_Answer</N>24812</N>0"
	tNpcGossip[24812]["OptionFunc212"] = "SepAnswerActivity_Answer</N>24812</N>0"
	tNpcGossip[24812]["OptionFunc213"] = "SepAnswerActivity_Answer</N>24812</N>0"
	tNpcGossip[24812]["OptionFunc214"] = "SepAnswerActivity_Answer</N>24812</N>0"
	
	--更新答案
	local nOption = nDay - 3 + 1
	local sOption = "OptionFunc21"..tAnswer[nOption]
	tNpcGossip[24812][sOption] = "SepAnswerActivity_Answer</N>24812</N>1"
	
	SepAnswerActivity_SetStcValue(1,0)
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 答题
function SepAnswerActivity_Answer(nNpcId,nResult)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["SepAnswerActivity"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tSepAnswerActivity_Reward[4050001],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tSepAnswerActivity_Text["FullSpace"])
		return
	end
	
	--置掩码==1，今日已答题
	SepAnswerActivity_SetStcValue(1,1)
	
	if nResult == 1 then
		--答对，置掩码==2，未领奖
		SepAnswerActivity_SetStcValue(1,2)
		LinkNpcGossipFunc_New(nNpcId,"2-2")
	elseif nResult == 0 then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
	end
end

-- 领取奖励
function SepAnswerActivity_Reward(nNpcId)
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["SepAnswerActivity"]["ActivityTime"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tSepAnswerActivity_Reward[4050001],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		Sys_MsgBox(tSepAnswerActivity_Text["FullSpace"])
		return
	end
	
	local nData = SepAnswerActivity_GetStcValue(1)
	if nData == 2 then
		--置掩码==3，已领取奖励
		SepAnswerActivity_SetStcValue(1,3)
		RewardTemplate_UseItemAndMsg(tSepAnswerActivity_Reward[4050001])
	else
		return
	end
	
end

--------------------------------------NPC模块--------------------------------------
-- 24812	Newton
tNpcFace[5494] = 245
tNpcGossip[24812] = tNpcGossip[24812] or DefaultNpc:new{}
tNpcGossip[24812]["OptionHidden"] = 1
tNpcGossip[24812]["DialogueText"] = tSepAnswerActivity_Text[24812]
-- 活动前
tNpcGossip[24812]["Text1-1"] = {111,112,113}
tNpcGossip[24812]["tOption1-1"] = {111}
tNpcGossip[24812]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tActivityTime["SepAnswerActivity"]["ActivityTime"])
end

--活动后
tNpcGossip[24812]["Text1-2"] = {121}
tNpcGossip[24812]["tOption1-2"] = {121}
tNpcGossip[24812]["ChkFunc1-2"] = function ()
	return not Sys_ChkFullTime(tActivityTime["SepAnswerActivity"]["ActivityTime"])
end

-- 活动中
tNpcGossip[24812]["Text1-3"] = {131,132,133,134}
tNpcGossip[24812]["tOption1-3"] = {131,132}
tNpcGossip[24812]["OptionPoint131"] = "2-1"
tNpcGossip[24812]["ChkFunc1-3"] = function ()
	return true
end
tNpcGossip[24812]["OptionFunc131"] = "SepAnswerActivity_BeginAnswer</N>24812"


-- 背包满，无法答题
tNpcGossip[24812]["Text3-1"] = {331}
tNpcGossip[24812]["tOption3-1"] = {331}

-- 答题开始
tNpcGossip[24812]["Text2-1"] = {211,212}
tNpcGossip[24812]["tOption2-1"] = {211,212,213,214}


-- 答题成功
tNpcGossip[24812]["Text2-2"] = {221}
tNpcGossip[24812]["tOption2-2"] = {221}
tNpcGossip[24812]["OptionFunc221"] = "SepAnswerActivity_Reward</N>24812"

-- 答题失败
tNpcGossip[24812]["Text2-3"] = {231}
tNpcGossip[24812]["tOption2-3"] = {231}

--今日已答过
tNpcGossip[24812]["Text2-4"] = {241}
tNpcGossip[24812]["tOption2-4"] = {241}

