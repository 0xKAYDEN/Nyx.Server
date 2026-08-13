----------------------------------------------------------------------------
--Name:		170814[英文征服][活动脚本]9月版本前置quiz任务
--Creator: 	姚曦宇
--Created:	2017/08/14
----------------------------------------------------------------------------
-- 前缀 tNewVersionQuiz_
-- lua.ini ：40632
-- logid ： 12000835
-- 掩码说明
-- 164,95 记录玩家当日题库，10位数。每两位数记录一道题的题号，共5题
-- 164,96 记录玩家当日答题情况，10位数。每两位数记录一道题的答题情况，共5题。0表示未回答，1~3表示答错1~3次，4表示答对
-- 164,97 记录玩家当日领奖情况。0表示答题未结束，1表示答题失败，2表示答题成功但未领奖，3表示已领奖
-- 164,98 背包信掩码

----------------------------------------------------------------------------
--------------------------------常量表 -------------------------------------
local tNewVersionQuiz_Cont = {}
	tNewVersionQuiz_Cont["ActiveTime"] = "2017-09-21 00:00 2017-10-16 23:59"

local tNewVersionQuiz_Random = {}
	tNewVersionQuiz_Random["TotalNum"] = 21
	tNewVersionQuiz_Random["NeedNum"] = 5


local tNewVersionQuiz_Reward = {}
	tNewVersionQuiz_Reward["RewardItem"] = {}	
	-- 免费强炼丹（赠） * 10
	tNewVersionQuiz_Reward["RewardItem"][1] = {}			
	tNewVersionQuiz_Reward["RewardItem"][1]["Id"] = 3003124	
	tNewVersionQuiz_Reward["RewardItem"][1]["Attr"] = "0 10 3"	
	tNewVersionQuiz_Reward["RewardItem"][2] = {}		
	-- 明亮星陨石 * 1
	tNewVersionQuiz_Reward["RewardItem"][2]["Id"] = 3009001	
	tNewVersionQuiz_Reward["RewardItem"][2]["Attr"] = "0 1 0 2880 1"
	-- 500气力值 * 1
	tNewVersionQuiz_Reward["RewardItem"][3] = {}			
	tNewVersionQuiz_Reward["RewardItem"][3]["Id"] = 3001413	
	tNewVersionQuiz_Reward["RewardItem"][3]["Attr"] = "0 1 3"	
	tNewVersionQuiz_Reward["Log"] = 12000835
	tNewVersionQuiz_Reward["LogStep"] = 2
	tNewVersionQuiz_Reward["EmoneyLog"] = "350	20735	0	0	1	"
	

local tNewVersionQuiz_Stc = {}
	-- 玩家当日题库
	tNewVersionQuiz_Stc[1] = {}
	tNewVersionQuiz_Stc[1]["EventData"] = 164
	tNewVersionQuiz_Stc[1]["TypeData"] = 95
	-- 玩家当日回答情况
	tNewVersionQuiz_Stc[2] = {}
	tNewVersionQuiz_Stc[2]["EventData"] = 164
	tNewVersionQuiz_Stc[2]["TypeData"] = 96
	-- 玩家当日领奖情况
	tNewVersionQuiz_Stc[3] = {}
	tNewVersionQuiz_Stc[3]["EventData"] = 164
	tNewVersionQuiz_Stc[3]["TypeData"] = 97


local tNewVersionQuiz_Log = {}
	tNewVersionQuiz_Log["Join"] = "0,0,0,0,12000835,1[1],0,0" 
	tNewVersionQuiz_Log["Right"] = {}
	-- 答对的log
	tNewVersionQuiz_Log["Right"][1] = "0,0,0,0,12000835,1[2],0,1" 
	tNewVersionQuiz_Log["Right"][2] = "0,0,0,0,12000835,1[2],0,2" 
	tNewVersionQuiz_Log["Right"][3] = "0,0,0,0,12000835,1[2],0,3" 
	tNewVersionQuiz_Log["Right"][4] = "0,0,0,0,12000835,1[2],0,4" 
	tNewVersionQuiz_Log["Right"][5] = "0,0,0,0,12000835,1[2],0,5" 
	-- 完成答题 
	tNewVersionQuiz_Log["Over"] = "0,0,0,0,12000835,1[3],0,0" 

-- 答案表 记录每一题的答案
local tNewVersionQuiz_Answer = {}
	tNewVersionQuiz_Answer[1] = 4
	tNewVersionQuiz_Answer[2] = 4
	tNewVersionQuiz_Answer[3] = 3
	tNewVersionQuiz_Answer[4] = 4
	tNewVersionQuiz_Answer[5] = 4
	tNewVersionQuiz_Answer[6] = 3
	tNewVersionQuiz_Answer[7] = 4
	tNewVersionQuiz_Answer[8] = 1
	tNewVersionQuiz_Answer[9] = 2
	tNewVersionQuiz_Answer[10] = 3
	tNewVersionQuiz_Answer[11] = 1
	tNewVersionQuiz_Answer[12] = 2
	tNewVersionQuiz_Answer[13] = 1
	tNewVersionQuiz_Answer[14] = 4
	tNewVersionQuiz_Answer[15] = 3
	tNewVersionQuiz_Answer[16] = 4
	tNewVersionQuiz_Answer[17] = 1
	tNewVersionQuiz_Answer[18] = 4
	tNewVersionQuiz_Answer[19] = 4
	tNewVersionQuiz_Answer[20] = 4
	tNewVersionQuiz_Answer[21] = 4
-- 记录数字对应的字母
local tNewVersionQuiz_Word = {}
	tNewVersionQuiz_Word[1] = "A"
	tNewVersionQuiz_Word[2] = "B"
	tNewVersionQuiz_Word[3] = "C"
	tNewVersionQuiz_Word[4] = "D"



--------------------------------逻辑部分-------------------------------------
-- 产生n个随机数
function NewVersionQuiz_SetMulRandom(nTotalNum,nNeedNum)
	local tArray = {}
	for i = 1 , nTotalNum do
		tArray[i] = i 
	end
	for i = 1 , nTotalNum do
		local j = math.random(nTotalNum - i + 1) + i - 1
		tArray[i],tArray[j] = tArray[j],tArray[i]
	end
	local tGetRandom = {}
	for i = 1 , nNeedNum do
		tGetRandom[i] = tArray[i]
	end
	return tGetRandom
end

-- 取掩码
function NewVersionQuiz_GetStc(nIndex,nPos)
	local nEvent = tNewVersionQuiz_Stc[nIndex]["EventData"]
	local nType = tNewVersionQuiz_Stc[nIndex]["TypeData"]
	local nUserId = Get_UserId()
	-- 隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end

	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	if nPos ~= nil then
		nData = math.floor(nData % (10 ^ (2 * nPos)) / (10 ^ (2 * nPos - 2)))
	end
	return nData
end

-- 设掩码
function NewVersionQuiz_SetStc(nIndex,nSetData,nPos)
	local nEvent = tNewVersionQuiz_Stc[nIndex]["EventData"]
	local nType = tNewVersionQuiz_Stc[nIndex]["TypeData"]
	local nUserId = Get_UserId()
	-- 隔天
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
	local nTotalData = 0
	if nPos ~= nil then
		local tData = {}
		for i = 1,5 do
			tData[i] = NewVersionQuiz_GetStc(nIndex,i)
		end
		tData[nPos] = nSetData
		for j = 1,5 do
			nTotalData = nTotalData + tData[j] * (10 ^ (2 * j - 2))
		end
	else
		nTotalData = nSetData
	end
	Task_SetStatistic(nEvent,nType,nTotalData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 判断时间
function NewVersionQuiz_ChkTime(nNpcId)
	local nIndex
	if CommonFunc_GetBeforeActivityTime(tNewVersionQuiz_Cont["ActiveTime"]) then
		nIndex = 1
	elseif Sys_ChkFullTime(tNewVersionQuiz_Cont["ActiveTime"]) then
		nIndex = 2
	else
		nIndex = 3
	end
	if nNpcId ~= nil then
		LinkNpcGossipFunc_New(nNpcId,"1-"..nIndex)
	end
	if nIndex == 2 then
		return true
	else
		return false
	end
end

-- 初始化题目
function NewVersionQuiz_Join(nNpcId,nThis)
	if not NewVersionQuiz_ChkTime() then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	if NewVersionQuiz_GetStc(3) >= 1 then
		-- 答题已结束
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	-- 还未生成题目
	if NewVersionQuiz_GetStc(1) == 0 then
		local nTotalNum = tNewVersionQuiz_Random["TotalNum"]
		local nNeedNum = tNewVersionQuiz_Random["NeedNum"]
		local tQuestions = NewVersionQuiz_SetMulRandom(nTotalNum,nNeedNum)
		for i = 1,5 do
			NewVersionQuiz_SetStc(1,tQuestions[i],i)
		end
		nThis = 1
		Sys_SaveActionFestivalLog(tNewVersionQuiz_Log["Join"])
	end
	-- 开始答题
	if nThis == nil then
		nThis = 1
	end
	NewVersionQuiz_Begin(nNpcId,nThis)
end

-- 开始答题
function NewVersionQuiz_Begin(nNpcId,nThis)
	-- 当前题号
	local nQuestion = NewVersionQuiz_GetStc(1,nThis)
	if nQuestion == 0 then
		NewVersionQuiz_Join(nNpcId,nThis)
		return
	end
	-- 初始化对白
	NewVersionQuiz_SetDialog(nNpcId,nQuestion,nThis)
end


-- 初始化对白
function NewVersionQuiz_SetDialog(nNpcId,nQuestion,nThis)
	tNpcGossip[nNpcId]["Text2-1"] = {}
	tNpcGossip[nNpcId]["tOption2-1"] = {}
	-- 初始化题目
	for i = 1,5 do
		local sText = "Text21"..i
		if i == 1 then
			tNpcGossip[nNpcId][sText] = string.format(tNewVersionQuiz_Text["Question"][nQuestion]["Text"][i],nThis)
		else
			tNpcGossip[nNpcId][sText] = tNewVersionQuiz_Text["Question"][nQuestion]["Text"][i]
		end
	end
	-- 已答对
	if NewVersionQuiz_GetStc(2,nThis) >= 4 then
		if nThis == 5 then
			-- 答题已结束
			NewVersionQuiz_Over(nNpcId)
			return
		end
		local nWord = tNewVersionQuiz_Answer[nQuestion]
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,213,214,215,216}
		tNpcGossip[nNpcId]["tOption2-1"] = {215}
		tNpcGossip[nNpcId]["Text216"] = string.format(tNewVersionQuiz_Text["Right"],tNewVersionQuiz_Word[nWord])
		tNpcGossip[nNpcId]["Option215"] = tNewVersionQuiz_Text["Next"]
		tNpcGossip[nNpcId]["OptionFunc215"] = string.format("NewVersionQuiz_Join</N>%d</N>%d",nNpcId,nThis + 1)
	-- 错三次
	elseif NewVersionQuiz_GetStc(2,nThis) >= 3 then
		-- 答题已结束
		NewVersionQuiz_Over(nNpcId)
		return
	else
		for j = 1,4 do
			local sOption  = "Option21"..j
			local sOptionFunc = "OptionFunc21"..j
			local nIsRight = 0
			if tNewVersionQuiz_Answer[nQuestion] == j then
				nIsRight = 1
			end
			tNpcGossip[nNpcId][sOption] = tNewVersionQuiz_Text["Answer"][j]
			tNpcGossip[nNpcId][sOptionFunc] = string.format("NewVersionQuiz_Answer</N>%d</N>%d</N>%d</N>%d",nNpcId,nQuestion,nThis,nIsRight)
		end
		tNpcGossip[nNpcId]["Text2-1"] = {211,212,213,214,215}
		tNpcGossip[nNpcId]["tOption2-1"] = {211,212,213,214}
	end
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

-- 回答问题
function NewVersionQuiz_Answer(nNpcId,nQuestion,nThis,nIsRight)
	local nUserId = Get_UserId()
	if not NewVersionQuiz_ChkTime() then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	if NewVersionQuiz_GetStc(3) >= 1 then
		-- 答题已结束
		User_TalkChannel2005(tNewVersionQuiz_Text["Done"],nUserId)
		return
	end
	if NewVersionQuiz_GetStc(1,nThis) ~= nQuestion then
		NewVersionQuiz_ChkTime(nNpcId)
		return
	end
	-- 答对了
	if nIsRight == 1 then
		NewVersionQuiz_SetStc(2,4,nThis)
		if nThis == 5 then
			-- 领奖
			NewVersionQuiz_SetStc(3,2)
			Sys_SaveActionFestivalLog(tNewVersionQuiz_Log["Right"][nThis])
			Sys_SaveActionFestivalLog(tNewVersionQuiz_Log["Over"])
			NewVersionQuiz_Over(nNpcId)
			return
		end
		Sys_SaveActionFestivalLog(tNewVersionQuiz_Log["Right"][nThis])
		NewVersionQuiz_Tips(nNpcId,nThis,nIsRight)
		return
	end
	-- 答错了
	local nWrongTime = NewVersionQuiz_GetStc(2,nThis) + 1
	NewVersionQuiz_SetStc(2,nWrongTime,nThis)
	if nWrongTime >= 3 then
		-- 答错3次
		NewVersionQuiz_SetStc(3,1)
		Sys_SaveActionFestivalLog(tNewVersionQuiz_Log["Over"])
		NewVersionQuiz_Over(nNpcId)
		return
	end
	NewVersionQuiz_Tips(nNpcId,nThis,nIsRight)
end

-- 提示
function NewVersionQuiz_Tips(nNpcId,nThis,nIsRight)
	if nIsRight == 1 then
		tNpcGossip[nNpcId]["OptionFunc311"] = string.format("NewVersionQuiz_Join</N>%d</N>%d",nNpcId,nThis + 1)
		LinkNpcGossipFunc_New(nNpcId,"3-1")
	else
		local nLeft = 3 - NewVersionQuiz_GetStc(2,nThis)
		tNpcGossip[nNpcId]["Text321"] = string.format(tNewVersionQuiz_Text[nNpcId]["Text321"],nLeft)
		tNpcGossip[nNpcId]["OptionFunc321"] = string.format("NewVersionQuiz_Join</N>%d</N>%d",nNpcId,nThis)
		LinkNpcGossipFunc_New(nNpcId,"3-2")
	end
end

-- 答题结束
function NewVersionQuiz_Over(nNpcId)
	if NewVersionQuiz_GetStc(3) >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	elseif NewVersionQuiz_GetStc(3) >= 2 then
		LinkNpcGossipFunc_New(nNpcId,"4-2")
	elseif NewVersionQuiz_GetStc(3) >= 1 then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		Sys_SystemBroadcast("here")
	else
		NewVersionQuiz_ChkTime(nNpcId)
	end
end

-- 领取奖励
function NewVersionQuiz_GetReward(nNpcId)
	if NewVersionQuiz_GetStc(3) >= 3 then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
	elseif NewVersionQuiz_GetStc(3) >= 2 then
		if not RewardTemplate_CheckSpace(tNewVersionQuiz_Reward) then
			return
		end
		NewVersionQuiz_SetStc(3,3)
		RewardTemplate_UseItemAndMsg(tNewVersionQuiz_Reward)
	end
end
	
-----------------------------------------------------------------------
tNpcFace[4479] = 247
tNpcGossip[21123] = tNpcGossip[21123] or DefaultNpc:new{}
tNpcGossip[21123]["OptionHidden"] = 1
-- 活动前
tNpcGossip[21123]["Text1-1"] = {111,112,113,114}
tNpcGossip[21123]["Text111"] = tNewVersionQuiz_Text[21123]["Text111"]
tNpcGossip[21123]["Text112"] = tNewVersionQuiz_Text[21123]["Text112"]
tNpcGossip[21123]["Text113"] = tNewVersionQuiz_Text[21123]["Text113"]
tNpcGossip[21123]["Text114"] = tNewVersionQuiz_Text[21123]["Text114"]
tNpcGossip[21123]["tOption1-1"] = {111}
tNpcGossip[21123]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tNewVersionQuiz_Cont["ActiveTime"])
end
tNpcGossip[21123]["Option111"] = tNewVersionQuiz_Text[21123]["Option111"]

-- 活动期间
tNpcGossip[21123]["Text1-2"] = {121,122,123,124}
tNpcGossip[21123]["Text121"] = tNewVersionQuiz_Text[21123]["Text121"]
tNpcGossip[21123]["Text122"] = tNewVersionQuiz_Text[21123]["Text122"]
tNpcGossip[21123]["Text123"] = tNewVersionQuiz_Text[21123]["Text123"]
tNpcGossip[21123]["Text124"] = tNewVersionQuiz_Text[21123]["Text124"]
tNpcGossip[21123]["tOption1-2"] = {121,122,123,124,125}
tNpcGossip[21123]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tNewVersionQuiz_Cont["ActiveTime"])
end
-- 参与答题
tNpcGossip[21123]["Option121"] = tNewVersionQuiz_Text[21123]["Option121"]
tNpcGossip[21123]["OptionFunc121"] = "NewVersionQuiz_Join</N>21123"
tNpcGossip[21123]["OptionChkFunc121"] = function()
	if NewVersionQuiz_GetStc(3) >= 1 then
		return false
	else
		return true
	end
end
-- 参与答题（已完成）
tNpcGossip[21123]["Option122"] = tNewVersionQuiz_Text[21123]["Option122"]
tNpcGossip[21123]["OptionFunc122"] = "NewVersionQuiz_Join</N>21123"
tNpcGossip[21123]["OptionChkFunc122"] = function()
	if NewVersionQuiz_GetStc(3) >= 1 then
		return true
	else
		return false
	end
end
-- 领取奖励
tNpcGossip[21123]["Option123"] = tNewVersionQuiz_Text[21123]["Option123"]
tNpcGossip[21123]["OptionFunc123"] = "NewVersionQuiz_GetReward</N>21123"
tNpcGossip[21123]["OptionChkFunc123"] = function()
	if NewVersionQuiz_GetStc(3) == 2 then
		return true
	else
		return false
	end
end
-- 领取奖励（已领取）
tNpcGossip[21123]["Option124"] = tNewVersionQuiz_Text[21123]["Option124"]
tNpcGossip[21123]["OptionPoint124"] = "4-1"
tNpcGossip[21123]["OptionChkFunc124"] = function()
	if NewVersionQuiz_GetStc(3) >= 3 then
		return true
	else
		return false
	end
end
-- 我只是路过
tNpcGossip[21123]["Option125"] = tNewVersionQuiz_Text[21123]["Option125"]

-- 活动后
tNpcGossip[21123]["Text1-3"] = {131}
tNpcGossip[21123]["Text131"] = tNewVersionQuiz_Text[21123]["Text131"]
tNpcGossip[21123]["tOption1-3"] = {131}
tNpcGossip[21123]["ChkFunc1-3"] = function ()
	return CommonFunc_GetAfterActivityTime(tNewVersionQuiz_Cont["ActiveTime"])
end
tNpcGossip[21123]["Option131"] = tNewVersionQuiz_Text[21123]["Option131"]

-- 选择答案后的提示
tNpcGossip[21123]["Text3-1"] = {311}
tNpcGossip[21123]["Text311"] = tNewVersionQuiz_Text[21123]["Text311"]
tNpcGossip[21123]["tOption3-1"] = {311,312}
tNpcGossip[21123]["Option311"] = tNewVersionQuiz_Text[21123]["Option311"]
tNpcGossip[21123]["Option312"] = tNewVersionQuiz_Text[21123]["Option312"]

tNpcGossip[21123]["Text3-2"] = {321}
tNpcGossip[21123]["tOption3-2"] = {321,322}
tNpcGossip[21123]["Option321"] = tNewVersionQuiz_Text[21123]["Option321"]
tNpcGossip[21123]["Option322"] = tNewVersionQuiz_Text[21123]["Option322"]

-- 答题结束
tNpcGossip[21123]["Text4-1"] = {411}
tNpcGossip[21123]["Text411"] = tNewVersionQuiz_Text[21123]["Text411"]
tNpcGossip[21123]["tOption4-1"] = {411}
tNpcGossip[21123]["Option411"] = tNewVersionQuiz_Text[21123]["Option411"]

tNpcGossip[21123]["Text4-2"] = {421}
tNpcGossip[21123]["Text421"] = tNewVersionQuiz_Text[21123]["Text421"]
tNpcGossip[21123]["tOption4-2"] = {421,422}
tNpcGossip[21123]["Option421"] = tNewVersionQuiz_Text[21123]["Option421"]
tNpcGossip[21123]["OptionFunc421"] = "NewVersionQuiz_GetReward</N>21123"
tNpcGossip[21123]["Option422"] = tNewVersionQuiz_Text[21123]["Option422"]

tNpcGossip[21123]["Text4-3"] = {431}
tNpcGossip[21123]["Text431"] = tNewVersionQuiz_Text[21123]["Text431"]
tNpcGossip[21123]["tOption4-3"] = {431}
tNpcGossip[21123]["Option431"] = tNewVersionQuiz_Text[21123]["Option431"]

tNpcGossip[21123]["Text4-4"] = {441}
tNpcGossip[21123]["Text441"] = tNewVersionQuiz_Text[21123]["Text441"]
tNpcGossip[21123]["tOption4-4"] = {441}
tNpcGossip[21123]["Option441"] = tNewVersionQuiz_Text[21123]["Option441"]

tNpcGossip[21123]["Text4-5"] = {451}
tNpcGossip[21123]["Text451"] = tNewVersionQuiz_Text[21123]["Text451"]
tNpcGossip[21123]["tOption4-5"] = {451}
tNpcGossip[21123]["Option451"] = tNewVersionQuiz_Text[21123]["Option451"]

tItemFace[3304762] = 795





