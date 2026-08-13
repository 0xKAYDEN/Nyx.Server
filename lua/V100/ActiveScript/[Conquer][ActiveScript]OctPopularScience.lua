------------------------------------------------------------------------------------
--Name:		190907[英文征服][活动脚本]10月科普答题活动（10.10-10.31）
--Creator: 	郑飞
--Created:	2019/09/07
------------------------------------------------------------------------------------
-- 命名前缀
--OctPopularScience_

-- #stc 掩码说明 
-- #stc(204,22) 今日是否答题	==1 表示今日已经答题		==2 答对	==3 答错
-- #stc(204,58) 0 未更新 1-20 题目
-- #stc(204,61) 上线触发 0 未获得 1 已获得
--logid:1200		1617

--------------------------------------数据配置部分--------------------------------------
-- 每日题目答案：CBC  CAD  CCA    CBD    DCC    DBA   BD
local tAnswer = {3,2,3,3,1,4,3,3,1,3,2,4,4,3,3,4,2,1,2,4}

-- stc掩码
local tOctPopularScience_Stc = {}
	-- 今日是否答题
	tOctPopularScience_Stc[1] = {}
	tOctPopularScience_Stc[1]["EventType"] = 204
	tOctPopularScience_Stc[1]["DataType"] = 22
	-- 更新题目
	tOctPopularScience_Stc[2] = {}
	tOctPopularScience_Stc[2]["EventType"] = 204
	tOctPopularScience_Stc[2]["DataType"] = 58
	
-- 参与答题 记成Emoney_buy Log
local tOctPopularScience_Log= {}
	tOctPopularScience_Log["Answer"] = "350 	22617	0	0	1	" 
	tOctPopularScience_Log["Correct"] = "350 	22618	0	0	1	" 
	tOctPopularScience_Log["Del"] = "0,0,%d,%d,12001617,2,0,0" 
	
--物品ID
local tOctPopularScience_Id = {}
	tOctPopularScience_Id["WiseStarScroll"] = 3323505
	tOctPopularScience_Id["BigQuizPack"] = 3323506
	
local tOctPopularScience_Reward = {}
	-- ===答题大礼包
	-- ===索引:tOctPopularScience_Reward[3323506]
	-- ===删除:3323506,1
	-- ===
	tOctPopularScience_Reward[3323506] = {}
	tOctPopularScience_Reward[3323506]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tOctPopularScience_Reward[3323506]["DeleteItem"] = {}
	tOctPopularScience_Reward[3323506]["DeleteItem"][1] = {}
	tOctPopularScience_Reward[3323506]["DeleteItem"][1]["Id"] = 3323506 -- 【库】BigQuizPack[属性:11]
	tOctPopularScience_Reward[3323506]["LogId"] = 12001617
	-- 赤练石+2 - 20%
	tOctPopularScience_Reward[3323506][1] = {}
	tOctPopularScience_Reward[3323506][1]["RandomItemChanceType"] = 2
	tOctPopularScience_Reward[3323506][1]["ItemChance"] = 2000
	tOctPopularScience_Reward[3323506][1]["RewardItem"] = {}
	tOctPopularScience_Reward[3323506][1]["RewardItem"][1] = {}
	tOctPopularScience_Reward[3323506][1]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2
	tOctPopularScience_Reward[3323506][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tOctPopularScience_Reward[3323506][1]["RewardEffect"] = {}
	tOctPopularScience_Reward[3323506][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPopularScience_Reward[3323506][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值 - 20%
	tOctPopularScience_Reward[3323506][2] = {}
	tOctPopularScience_Reward[3323506][2]["RandomItemChanceType"] = 2
	tOctPopularScience_Reward[3323506][2]["ItemChance"] = 2000
	tOctPopularScience_Reward[3323506][2]["RewardItem"] = {}
	tOctPopularScience_Reward[3323506][2]["RewardItem"][1] = {}
	tOctPopularScience_Reward[3323506][2]["RewardItem"][1]["Id"] = 3008188 -- ChiPack(200Points)[3008188][属性:9][叠加:0][金币:0], 【表格】200气力值
	tOctPopularScience_Reward[3323506][2]["RewardItem"][1]["Attr"] = "0 1" -- ChiPack(200Points)*1
	tOctPopularScience_Reward[3323506][2]["RewardEffect"] = {}
	tOctPopularScience_Reward[3323506][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPopularScience_Reward[3323506][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石 - 30%
	tOctPopularScience_Reward[3323506][3] = {}
	tOctPopularScience_Reward[3323506][3]["RandomItemChanceType"] = 2
	tOctPopularScience_Reward[3323506][3]["ItemChance"] = 3000
	tOctPopularScience_Reward[3323506][3]["RewardItem"] = {}
	tOctPopularScience_Reward[3323506][3]["RewardItem"][1] = {}
	tOctPopularScience_Reward[3323506][3]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石
	tOctPopularScience_Reward[3323506][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tOctPopularScience_Reward[3323506][3]["RewardEffect"] = {}
	tOctPopularScience_Reward[3323506][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPopularScience_Reward[3323506][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 究极通神丹 - 10%
	tOctPopularScience_Reward[3323506][4] = {}
	tOctPopularScience_Reward[3323506][4]["RandomItemChanceType"] = 2
	tOctPopularScience_Reward[3323506][4]["ItemChance"] = 1000
	tOctPopularScience_Reward[3323506][4]["RewardItem"] = {}
	tOctPopularScience_Reward[3323506][4]["RewardItem"][1] = {}
	tOctPopularScience_Reward[3323506][4]["RewardItem"][1]["Id"] = 3003126 -- SeniorTrainingPill[3003126][属性:0][叠加:10000][金币:0], 【表格】究极通神丹
	tOctPopularScience_Reward[3323506][4]["RewardItem"][1]["Attr"] = "0 2 3" -- SeniorTrainingPill（赠）*2
	tOctPopularScience_Reward[3323506][4]["RewardEffect"] = {}
	tOctPopularScience_Reward[3323506][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPopularScience_Reward[3323506][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹精粹 - 10%
	tOctPopularScience_Reward[3323506][5] = {}
	tOctPopularScience_Reward[3323506][5]["RandomItemChanceType"] = 2
	tOctPopularScience_Reward[3323506][5]["ItemChance"] = 1000
	tOctPopularScience_Reward[3323506][5]["RewardItem"] = {}
	tOctPopularScience_Reward[3323506][5]["RewardItem"][1] = {}
	tOctPopularScience_Reward[3323506][5]["RewardItem"][1]["Id"] = 4050001 -- YellowRuneEssence[4050001][属性:9][叠加:10000][金币:0], 【表格】黄色神纹精粹
	tOctPopularScience_Reward[3323506][5]["RewardItem"][1]["Attr"] = "0 10 3" -- YellowRuneEssence（赠）*10
	tOctPopularScience_Reward[3323506][5]["RewardEffect"] = {}
	tOctPopularScience_Reward[3323506][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPopularScience_Reward[3323506][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果 - 10%
	tOctPopularScience_Reward[3323506][6] = {}
	tOctPopularScience_Reward[3323506][6]["RandomItemChanceType"] = 2
	tOctPopularScience_Reward[3323506][6]["ItemChance"] = 1000
	tOctPopularScience_Reward[3323506][6]["RewardItem"] = {}
	tOctPopularScience_Reward[3323506][6]["RewardItem"][1] = {}
	tOctPopularScience_Reward[3323506][6]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:99][金币:0], 【表格】人参果
	tOctPopularScience_Reward[3323506][6]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*2
	tOctPopularScience_Reward[3323506][6]["RewardEffect"] = {}
	tOctPopularScience_Reward[3323506][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPopularScience_Reward[3323506][6]["RewardEffect"]["Effect"] = "angelwing"
	
	-- ===答题大礼包
	-- ===索引:tOctPopularScience_Reward[3323507]
	-- ===
	-- ===
	tOctPopularScience_Reward[3323507] = {}
	tOctPopularScience_Reward[3323507]["LogId"] = 12001617
	tOctPopularScience_Reward[3323507]["RewardItem"] = {}
	tOctPopularScience_Reward[3323507]["RewardItem"][1] = {}
	tOctPopularScience_Reward[3323507]["RewardItem"][1]["Id"] = 3323506 -- BigQuizPack[3323506][属性:11][叠加:1][金币:0], 【表格】答题大礼包
	tOctPopularScience_Reward[3323507]["RewardItem"][1]["Attr"] = "0 1" -- BigQuizPack*1
	tOctPopularScience_Reward[3323507]["RewardEffect"] = {}
	tOctPopularScience_Reward[3323507]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tOctPopularScience_Reward[3323507]["RewardEffect"]["Effect"] = "angelwing"

--------------------------------------逻辑部分--------------------------------------
-- 获取掩码值
function OctPopularScience_GetStcValue(nIndex,nUserId)
	local nEvent = tOctPopularScience_Stc[nIndex]["EventType"]
	local nType = tOctPopularScience_Stc[nIndex]["DataType"]
	local nData = Get_UserStatisticValue(nEvent,nType,nUserId)
	return nData
end

--设置掩码值
function OctPopularScience_SetStcValue(nIndex,nData,nUserId)
	local nEvent = tOctPopularScience_Stc[nIndex]["EventType"]
	local nType = tOctPopularScience_Stc[nIndex]["DataType"]
	
	Task_SetStatistic(nEvent,nType,nData,1,nUserId)
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
end

-- 隔天重置
function OctPopularScience_ClearStcInterval(nIndex,nUserId)
	local nEvent = tOctPopularScience_Stc[nIndex]["EventType"]
	local nType = tOctPopularScience_Stc[nIndex]["DataType"]
	
	if Task_StcInterval(nEvent,nType,1,4,nUserId) then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	end
end

-- 开始答题
function OctPopularScience_BeginAnswer()
	local nUserId = Get_UserId()
	local nItemId = tOctPopularScience_Id["WiseStarScroll"]
	local nNum = Get_CountItemType(nItemId,0)
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["OctPopularScience"]["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId,nUserId) then 
			Sys_SaveActionRewardLog(string.format(tOctPopularScience_Log["Del"],nItemId,nNum))
			Sys_MsgBox(tOctPopularScience_Text["Invalid"])
		end
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tOctPopularScience_Reward[3323507],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(tOctPopularScience_Text["FullSpace"])
		return
	end
	
	--隔天重置掩码
	OctPopularScience_ClearStcInterval(1)
	OctPopularScience_ClearStcInterval(2)
	
	local nData = OctPopularScience_GetStcValue(1)
	local nIndex = OctPopularScience_GetStcValue(2)

	-- 今日已答过
	if nData ~= 0 then
		Sys_MsgBox(tOctPopularScience_Text["Answered"])
		return
	end
	
	if nIndex == 0 then
		-- 随机每日题目
		nIndex = math.random(1,20)
		OctPopularScience_SetStcValue(2,nIndex)
	end
	
	tItem[nItemId]["Text113"] = "    Question:"..tOctPopularScience_Text["Question"][nIndex]
	tItem[nItemId]["Option111"] = tOctPopularScience_Text["Answer"][nIndex]["A"]
	tItem[nItemId]["Option112"] = tOctPopularScience_Text["Answer"][nIndex]["B"]
	tItem[nItemId]["Option113"] = tOctPopularScience_Text["Answer"][nIndex]["C"]
	tItem[nItemId]["Option114"] = tOctPopularScience_Text["Answer"][nIndex]["D"]
	
	--初始化答案
	tItem[nItemId]["OptionFunc111"] = "OctPopularScience_Answer</N>3323505</N>0</N>"..tAnswer[nIndex]
	tItem[nItemId]["OptionFunc112"] = "OctPopularScience_Answer</N>3323505</N>0</N>"..tAnswer[nIndex]
	tItem[nItemId]["OptionFunc113"] = "OctPopularScience_Answer</N>3323505</N>0</N>"..tAnswer[nIndex]
	tItem[nItemId]["OptionFunc114"] = "OctPopularScience_Answer</N>3323505</N>0</N>"..tAnswer[nIndex]
	
	local sOption = "OptionFunc11"..tAnswer[nIndex]
	tItem[nItemId][sOption] = "OctPopularScience_Answer</N>3323505</N>1</N>"..tAnswer[nIndex]
	
	LinkItemGossipFunc_New(nItemId,"1-1")
end


-- 答题
function OctPopularScience_Answer(nItemId,nResult,nAnswer)
	local nUserId = Get_UserId()
	local nItemId = tOctPopularScience_Id["WiseStarScroll"]
	local nNum = Get_CountItemType(nItemId,0)
	
	-- 活动后
	if not Sys_ChkFullTime(tActivityTime["OctPopularScience"]["ActivityTime"]) then
		if Item_DelAllItemByType(nItemId,nUserId) then 
			Sys_SaveActionRewardLog(string.format(tOctPopularScience_Log["Del"],nItemId,nNum))
			Sys_MsgBox(tOctPopularScience_Text["Invalid"])
		end
		return
	end
	
	--背包空间不足
	local nSpaceNum = RewardTemplate_GetRewardSpace(tOctPopularScience_Reward[3323507],nNowUserId)
	if not User_CheckLeftSpace(nSpaceNum) then
		User_TalkChannel2005(tOctPopularScience_Text["FullSpace"])
		return
	end
	
	--置掩码==1，今日已答题
	OctPopularScience_SetStcValue(1,1)
	-- 参与答题 emoney_buy log
	Sys_SaveEmoneyBuy(tOctPopularScience_Log["Answer"])
	
	local cAnswer = string.char(64+nAnswer)
	if nResult == 1 then
		--答对，置掩码==2，获得答题大礼包
		OctPopularScience_SetStcValue(1,2)
		-- 答对获得奖励 emoney_buy log
		Sys_SaveEmoneyBuy(tOctPopularScience_Log["Correct"])
		RewardTemplate_UseItemAndMsg(tOctPopularScience_Reward[3323507])
		Sys_MsgBox(tOctPopularScience_Text["Correct105"])
		User_TalkChannel2005(tOctPopularScience_Text["Correct"])
	elseif nResult == 0 then
		--答错，置掩码==3
		OctPopularScience_SetStcValue(1,3)
		Sys_MsgBox(tOctPopularScience_Text["Wrong"]..cAnswer)
	end
end


-------------------------------------------物品模板------------------------------------------------------------------
--3323505 智勇之星答题卷轴
tItemFace[3323505] = 2504
tItem[3323505] = tItem[3323505] or {}
tItem[3323505]["Function"]=function()
	OctPopularScience_BeginAnswer()
end
tItem[3323505]["DialogueText"] = tOctPopularScience_Text[3323505]
tItem[3323505]["Text1-1"] = {111,112,113,114,115}
tItem[3323505]["tOption1-1"] = {111,112,113,114}

--3323506 答题大礼包
tItem[3323506] = tItem[3323506] or {}
tItem[3323506]["Function"] = function(nItemId)
	RewardTemplate_RandomReward(tOctPopularScience_Reward,nItemId)
end

