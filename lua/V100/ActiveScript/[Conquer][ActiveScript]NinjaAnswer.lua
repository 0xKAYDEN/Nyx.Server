------------------------------------------------------------------------------------
--Name:     200227[英文征服][活动脚本]忍者觉醒普天同庆【初阶】（答题模式）（3.24-4.6）
--Creator:  郑飞
--Created:  2020-02-24
------------------------------------------------------------------------------------
-- 命名前缀
--NinjaAnswer_

-- #stc 掩码说明 
-- #stc(214,91) 今日是否答题	==1 表示今日已经更新题目		==2 答对第一题	==3 答错第一题  ==4答对第二题  ==5答错第二题
-- #stc(214,92)  1-10 题目

--logid:12001891
-- lua.ini:		41735

-- 41735 = V100\活动脚本\[征服][任务脚本]忍者觉醒普天同庆【初阶】（答题模式）（3.24-4.6）.lua
-- 41735 = V100\ActiveScript\[Conquer][ActiveScript]NinjaAnswer.lua

--------------------------------------数据配置部分--------------------------------------
local tNinjaAnswer_Data = {}
	tNinjaAnswer_Data["ActivityTime"] = tActivityTime["NinjaAnswer"]["ActivityTime"]
	

-- 每日题目答案：BAA	CCC	ADC	B
local tNinjaAnswer_Answer = {}
	tNinjaAnswer_Answer[1] = 2
	tNinjaAnswer_Answer[2] = 1
	tNinjaAnswer_Answer[3] = 1
	tNinjaAnswer_Answer[4] = 3
	tNinjaAnswer_Answer[5] = 3
	tNinjaAnswer_Answer[6] = 3
	tNinjaAnswer_Answer[7] = 1
	tNinjaAnswer_Answer[8] = 4
	tNinjaAnswer_Answer[9] = 3
	tNinjaAnswer_Answer[10] = 2


	
-- 参与答题 记成Emoney_buy Log
local tNinjaAnswer_Log= {}
	tNinjaAnswer_Log["Answer"] = "1000	01594	0	0	1	" 
	tNinjaAnswer_Log["Correct"] = "1000	01595	0	0	1	" 
	tNinjaAnswer_Log["Del"] = "0,0,%d,%d,12001891,2,0,0" 

	
--物品ID
local tNinjaAnswer_Id = {}
	tNinjaAnswer_Id["Answer"] = 3329960
	tNinjaAnswer_Id["Pack"] = 3329961
	
local tNinjaAnswer_SendMail = {}
	tNinjaAnswer_SendMail["ActionId"] = {}
	tNinjaAnswer_SendMail["ActionId"][1] = 576506
	tNinjaAnswer_SendMail["ExistDay"] = 30
	
-- stc掩码
local tNinjaAnswer_Stc = {}
	-- 今日是否答题
	tNinjaAnswer_Stc[1] = {}
	tNinjaAnswer_Stc[1]["EventType"] = 214
	tNinjaAnswer_Stc[1]["DataType"] = 91
	-- 更新题目
	tNinjaAnswer_Stc[2] = {}
	tNinjaAnswer_Stc[2]["EventType"] = 214
	tNinjaAnswer_Stc[2]["DataType"] = 92
--------------------------------------奖励部分--------------------------------------
local tNinjaAnswer_Reward = {}
	-- ===忍者大礼包
	-- ===索引:tNinjaAnswer_Reward[3329960]
	-- ===
	tNinjaAnswer_Reward[3329960] = {}
	tNinjaAnswer_Reward[3329960]["LogId"] = 12001891
	tNinjaAnswer_Reward[3329960]["RewardItem"] = {}
	tNinjaAnswer_Reward[3329960]["RewardItem"][1] = {}
	tNinjaAnswer_Reward[3329960]["RewardItem"][1]["Id"] = 3329961 -- NinjaKnowledgePack.[3329961][属性:9][叠加:10000][金币:0], 【表格】忍者知识礼包
	tNinjaAnswer_Reward[3329960]["RewardItem"][1]["Attr"] = "0 1" -- NinjaKnowledgePack.*1
	tNinjaAnswer_Reward[3329960]["RewardEffect"] = {}
	tNinjaAnswer_Reward[3329960]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaAnswer_Reward[3329960]["RewardEffect"]["Effect"] = "angelwing"


	tNinjaAnswer_Reward[3329961] = {}
	-- ===忍者知识礼包
	-- ===索引:tNinjaAnswer_Reward[3329961]
	-- ===删除:3329961,1
	tNinjaAnswer_Reward[3329961]["ItemChanceSum"] = 10000
	-- 概率配置删除，必须使用 RewardTemplate_RandomReward(tTable,nIndex,nNowUserId) 触发概率奖励
	tNinjaAnswer_Reward[3329961]["DeleteItem"] = {}
	tNinjaAnswer_Reward[3329961]["DeleteItem"][1] = {}
	tNinjaAnswer_Reward[3329961]["DeleteItem"][1]["Id"] = 3329961 -- 【库】NinjaKnowledgePack.[属性:9]
	tNinjaAnswer_Reward[3329961]["LogId"] = 12001891
	-- 赤练石+2赠 - 20%
	tNinjaAnswer_Reward[3329961][1] = {}
	tNinjaAnswer_Reward[3329961][1]["RandomItemChanceType"] = 2
	tNinjaAnswer_Reward[3329961][1]["ItemChance"] = 2000
	tNinjaAnswer_Reward[3329961][1]["RewardItem"] = {}
	tNinjaAnswer_Reward[3329961][1]["RewardItem"][1] = {}
	tNinjaAnswer_Reward[3329961][1]["RewardItem"][1]["Id"] = 730002 -- +2Stone[730002][属性:0][叠加:0][金币:0], 【表格】赤练石+2赠
	tNinjaAnswer_Reward[3329961][1]["RewardItem"][1]["Attr"] = "0 1 3" -- +2Stone（赠）*1
	tNinjaAnswer_Reward[3329961][1]["RewardEffect"] = {}
	tNinjaAnswer_Reward[3329961][1]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaAnswer_Reward[3329961][1]["RewardEffect"]["Effect"] = "angelwing"
	-- 200气力值 - 20%
	tNinjaAnswer_Reward[3329961][2] = {}
	tNinjaAnswer_Reward[3329961][2]["RandomItemChanceType"] = 2
	tNinjaAnswer_Reward[3329961][2]["ItemChance"] = 2000
	tNinjaAnswer_Reward[3329961][2]["RewardItem"] = {}
	tNinjaAnswer_Reward[3329961][2]["RewardItem"][1] = {}
	tNinjaAnswer_Reward[3329961][2]["RewardItem"][1]["Id"] = 3003313 -- 200ChiPointsPack[3003313][属性:9][叠加:0][金币:0], 【表格】200气力值
	tNinjaAnswer_Reward[3329961][2]["RewardItem"][1]["Attr"] = "0 1" -- 200ChiPointsPack*1
	tNinjaAnswer_Reward[3329961][2]["RewardEffect"] = {}
	tNinjaAnswer_Reward[3329961][2]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaAnswer_Reward[3329961][2]["RewardEffect"]["Effect"] = "angelwing"
	-- 微光星陨石*2 - 30%
	tNinjaAnswer_Reward[3329961][3] = {}
	tNinjaAnswer_Reward[3329961][3]["RandomItemChanceType"] = 2
	tNinjaAnswer_Reward[3329961][3]["ItemChance"] = 3000
	tNinjaAnswer_Reward[3329961][3]["RewardItem"] = {}
	tNinjaAnswer_Reward[3329961][3]["RewardItem"][1] = {}
	tNinjaAnswer_Reward[3329961][3]["RewardItem"][1]["Id"] = 3009000 -- TwilightStarStone[3009000][属性:9][叠加:0][金币:0], 【表格】微光星陨石*2
	tNinjaAnswer_Reward[3329961][3]["RewardItem"][1]["Attr"] = "0 2 0 2880 1" -- 2天时效(激活)的TwilightStarStone*2
	tNinjaAnswer_Reward[3329961][3]["RewardEffect"] = {}
	tNinjaAnswer_Reward[3329961][3]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaAnswer_Reward[3329961][3]["RewardEffect"]["Effect"] = "angelwing"
	-- 大爆丹*2 - 10%
	tNinjaAnswer_Reward[3329961][4] = {}
	tNinjaAnswer_Reward[3329961][4]["RandomItemChanceType"] = 2
	tNinjaAnswer_Reward[3329961][4]["ItemChance"] = 1000
	tNinjaAnswer_Reward[3329961][4]["RewardItem"] = {}
	tNinjaAnswer_Reward[3329961][4]["RewardItem"][1] = {}
	tNinjaAnswer_Reward[3329961][4]["RewardItem"][1]["Id"] = 3309008 -- SeniorTrainingPill(B)*2[3309008][属性:9][叠加:1][金币:0], 【表格】大爆丹*2
	tNinjaAnswer_Reward[3329961][4]["RewardItem"][1]["Attr"] = "0 1" -- SeniorTrainingPill(B)*2*1
	tNinjaAnswer_Reward[3329961][4]["RewardEffect"] = {}
	tNinjaAnswer_Reward[3329961][4]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaAnswer_Reward[3329961][4]["RewardEffect"]["Effect"] = "angelwing"
	-- 黄色神纹精粹*10赠 - 10%
	tNinjaAnswer_Reward[3329961][5] = {}
	tNinjaAnswer_Reward[3329961][5]["RandomItemChanceType"] = 2
	tNinjaAnswer_Reward[3329961][5]["ItemChance"] = 1000
	tNinjaAnswer_Reward[3329961][5]["RewardItem"] = {}
	tNinjaAnswer_Reward[3329961][5]["RewardItem"][1] = {}
	tNinjaAnswer_Reward[3329961][5]["RewardItem"][1]["Id"] = 3309001 -- YellowRuneEssence(B)*10[3309001][属性:9][叠加:1][金币:0], 【表格】黄色神纹精粹*10赠
	tNinjaAnswer_Reward[3329961][5]["RewardItem"][1]["Attr"] = "0 1 3" -- YellowRuneEssence(B)*10（赠）*1
	tNinjaAnswer_Reward[3329961][5]["RewardEffect"] = {}
	tNinjaAnswer_Reward[3329961][5]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaAnswer_Reward[3329961][5]["RewardEffect"]["Effect"] = "angelwing"
	-- 人参果*2 - 10%
	tNinjaAnswer_Reward[3329961][6] = {}
	tNinjaAnswer_Reward[3329961][6]["RandomItemChanceType"] = 2
	tNinjaAnswer_Reward[3329961][6]["ItemChance"] = 1000
	tNinjaAnswer_Reward[3329961][6]["RewardItem"] = {}
	tNinjaAnswer_Reward[3329961][6]["RewardItem"][1] = {}
	tNinjaAnswer_Reward[3329961][6]["RewardItem"][1]["Id"] = 3009100 -- GinsengFruit[3009100][属性:9][叠加:0][金币:0], 【表格】人参果*2
	tNinjaAnswer_Reward[3329961][6]["RewardItem"][1]["Attr"] = "0 2" -- GinsengFruit*1
	tNinjaAnswer_Reward[3329961][6]["RewardEffect"] = {}
	tNinjaAnswer_Reward[3329961][6]["RewardEffect"]["SzObj"] = "self" -- 支持"self", "couple", "team"
	tNinjaAnswer_Reward[3329961][6]["RewardEffect"]["Effect"] = "angelwing"



--------------------------------------逻辑部分--------------------------------------
-- 获取掩码值
function NinjaAnswer_GetStcValue(nNinjaAnswer_Index,nNinjaAnswer_UserId)
	local nNinjaAnswer_Event = tNinjaAnswer_Stc[nNinjaAnswer_Index]["EventType"]
	local nNinjaAnswer_Type = tNinjaAnswer_Stc[nNinjaAnswer_Index]["DataType"]
	local nNinjaAnswer_Data = Get_UserStatisticValue(nNinjaAnswer_Event,nNinjaAnswer_Type,nNinjaAnswer_UserId)
	return nNinjaAnswer_Data
end

--设置掩码值
function NinjaAnswer_SetStcValue(nNinjaAnswer_Index,nNinjaAnswer_Data,nNinjaAnswer_UserId)
	local nNinjaAnswer_Event = tNinjaAnswer_Stc[nNinjaAnswer_Index]["EventType"]
	local nNinjaAnswer_Type = tNinjaAnswer_Stc[nNinjaAnswer_Index]["DataType"]
	
	Task_SetStatistic(nNinjaAnswer_Event,nNinjaAnswer_Type,nNinjaAnswer_Data,1,nNinjaAnswer_UserId)
	Task_SetStcTimestamp(nNinjaAnswer_Event,nNinjaAnswer_Type,0,nNinjaAnswer_UserId)
end

-- 隔天重置
function NinjaAnswer_ClearStcInterval(nNinjaAnswer_Index,nNinjaAnswer_UserId)
	local nNinjaAnswer_Event = tNinjaAnswer_Stc[nNinjaAnswer_Index]["EventType"]
	local nNinjaAnswer_Type = tNinjaAnswer_Stc[nNinjaAnswer_Index]["DataType"]
	
	if Task_StcInterval(nNinjaAnswer_Event,nNinjaAnswer_Type,1,4,nNinjaAnswer_UserId) then
		Task_SetStatistic(nNinjaAnswer_Event,nNinjaAnswer_Type,0,1,nNinjaAnswer_UserId)
		Task_SetStcTimestamp(nNinjaAnswer_Event,nNinjaAnswer_Type,0,nNinjaAnswer_UserId)
	end
end

-- 随机题目索引
function NinjaAnswer_RandomQuestion()
	
	-- 随机题目
	local nNinjaAnswer_Index = NinjaAnswer_GetStcValue(2)
	local nNinjaAnswer_RandomNum = math.random(1,#tNinjaAnswer_Answer)
	
	local nCalLoop = 0
	while nNinjaAnswer_RandomNum == nNinjaAnswer_Index do
		if nCalLoop > G_CalculateLoop then
			Sys_SaveAbnormalLog("函数 NinjaAnswer_RandomQuestion 中 [while]循环超过1000次！")
			break
		end
		nCalLoop = nCalLoop + 1
		nNinjaAnswer_RandomNum = math.random(1,#tNinjaAnswer_Answer)
	end
		
	NinjaAnswer_SetStcValue(2,nNinjaAnswer_RandomNum)
	
	return nNinjaAnswer_RandomNum
end

--初始化对白
function NinjaAnswer_Dialogue(nNinjaAnswer_ItemId)
	
	--题目索引
	local nNinjaAnswer_QuestionOne = NinjaAnswer_RandomQuestion()
	local nNinjaAnswer_QuestionTwo = NinjaAnswer_RandomQuestion()

	tItem[nNinjaAnswer_ItemId]["Text112"] = string.format(tNinjaAnswer_Text[nNinjaAnswer_ItemId]["Text112"],tNinjaAnswer_Text["Question"][nNinjaAnswer_QuestionOne])
	tItem[nNinjaAnswer_ItemId]["Option111"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionOne]["A"]
	tItem[nNinjaAnswer_ItemId]["Option112"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionOne]["B"]
	tItem[nNinjaAnswer_ItemId]["Option113"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionOne]["C"]
	tItem[nNinjaAnswer_ItemId]["Option114"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionOne]["D"]
	
	tItem[nNinjaAnswer_ItemId]["Text121"] = string.format(tNinjaAnswer_Text[nNinjaAnswer_ItemId]["Text121"],tNinjaAnswer_Text["Question"][nNinjaAnswer_QuestionTwo])
	tItem[nNinjaAnswer_ItemId]["Option121"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionTwo]["A"]
	tItem[nNinjaAnswer_ItemId]["Option122"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionTwo]["B"]
	tItem[nNinjaAnswer_ItemId]["Option123"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionTwo]["C"]
	tItem[nNinjaAnswer_ItemId]["Option124"] = tNinjaAnswer_Text["Answer"][nNinjaAnswer_QuestionTwo]["D"]

	
	--初始化答案
	tItem[nNinjaAnswer_ItemId]["OptionFunc111"] = "NinjaAnswer_Answer</N>0</N>1</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionOne]
	tItem[nNinjaAnswer_ItemId]["OptionFunc112"] = "NinjaAnswer_Answer</N>0</N>1</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionOne]
	tItem[nNinjaAnswer_ItemId]["OptionFunc113"] = "NinjaAnswer_Answer</N>0</N>1</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionOne]
	tItem[nNinjaAnswer_ItemId]["OptionFunc114"] = "NinjaAnswer_Answer</N>0</N>1</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionOne]
	
	tItem[nNinjaAnswer_ItemId]["OptionFunc121"] = "NinjaAnswer_Answer</N>0</N>2</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionTwo]
	tItem[nNinjaAnswer_ItemId]["OptionFunc122"] = "NinjaAnswer_Answer</N>0</N>2</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionTwo]
	tItem[nNinjaAnswer_ItemId]["OptionFunc123"] = "NinjaAnswer_Answer</N>0</N>2</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionTwo]
	tItem[nNinjaAnswer_ItemId]["OptionFunc124"] = "NinjaAnswer_Answer</N>0</N>2</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionTwo]

	
	local sNinjaAnswer_OptionOne = "OptionFunc11"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionOne]
	tItem[nNinjaAnswer_ItemId][sNinjaAnswer_OptionOne] = "NinjaAnswer_Answer</N>1</N>1</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionOne]

	local sNinjaAnswer_OptionTwo = "OptionFunc12"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionTwo]
	tItem[nNinjaAnswer_ItemId][sNinjaAnswer_OptionTwo] = "NinjaAnswer_Answer</N>1</N>2</N>"..tNinjaAnswer_Answer[nNinjaAnswer_QuestionTwo]
	
	local nNinjaAnswer_Data = NinjaAnswer_GetStcValue(1)
	
	-- 掩码置==1，今日题目已更新
	if nNinjaAnswer_Data == 0 then
		NinjaAnswer_SetStcValue(1,1)
	end
end

-- 开始答题
function NinjaAnswer_BeginAnswer()
	local nNinjaAnswer_UserId = Get_UserId()
	local nNinjaAnswer_ItemId = tNinjaAnswer_Id["Answer"]
	local nNinjaAnswer_Num = Get_CountItemType(nNinjaAnswer_ItemId,0)
	
	-- 活动后
	if not Sys_ChkFullTime(tNinjaAnswer_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nNinjaAnswer_ItemId,nNinjaAnswer_UserId) then 
			Sys_SaveActionRewardLog(string.format(tNinjaAnswer_Log["Del"],nNinjaAnswer_ItemId,nNinjaAnswer_Num))
			Sys_MsgBox(tNinjaAnswer_Text["MsgBox"]["TimeOut"])
		end
		return
	end
	
	--隔天重置掩码
	NinjaAnswer_ClearStcInterval(1)
	
	local nNinjaAnswer_Data = NinjaAnswer_GetStcValue(1)
	
	-- 今日已答过
	if nNinjaAnswer_Data >= 3 then
		Sys_MsgBox(tNinjaAnswer_Text["MsgBox"]["Answered"])
		return
	end
	
	--更新每日题目
	if nNinjaAnswer_Data == 0 then
		NinjaAnswer_Dialogue(nNinjaAnswer_ItemId)
		LinkItemGossipFunc_New(nNinjaAnswer_ItemId,"1-1")
		return
	end
	
	--第一题未答
	if nNinjaAnswer_Data == 1 then
		LinkItemGossipFunc_New(nNinjaAnswer_ItemId,"1-1")
		return
	end
	
	--第一题答对
	LinkItemGossipFunc_New(nNinjaAnswer_ItemId,"1-2")
	return
end


-- 答题
function NinjaAnswer_Answer(nNinjaAnswer_Result,nNinjaAnswer_Question,nNinjaAnswer_Answer)
	local nNinjaAnswer_UserId = Get_UserId()
	local nNinjaAnswer_ItemId = tNinjaAnswer_Id["Answer"]
	local nNinjaAnswer_Num = Get_CountItemType(nNinjaAnswer_ItemId,0)
	
	-- 活动后
	if not Sys_ChkFullTime(tNinjaAnswer_Data["ActivityTime"]) then
		if Item_DelAllItemByType(nNinjaAnswer_ItemId,nNinjaAnswer_UserId) then 
			Sys_SaveActionRewardLog(string.format(tNinjaAnswer_Log["Del"],nNinjaAnswer_ItemId,nNinjaAnswer_Num))
			Sys_MsgBox(tNinjaAnswer_Text["MsgBox"]["TimeOut"])
		end
		return
	end
	
	-- 参与答题 emoney_buy log
	Sys_SaveEmoneyBuy(tNinjaAnswer_Log["Answer"])
	
	-- 第一题
	if nNinjaAnswer_Question == 1 then
		if nNinjaAnswer_Result == 1 then
			--置掩码==2，答对第一题
			NinjaAnswer_SetStcValue(1,2)
			LinkItemGossipFunc_New(nNinjaAnswer_ItemId,"1-2")
			return
		else
			--置掩码==3，答错
			NinjaAnswer_SetStcValue(1,3)
		end
	end
	
	--第二题
	if nNinjaAnswer_Question == 2 then
		if nNinjaAnswer_Result == 1 then
			--置掩码==4，答对第二题
			NinjaAnswer_SetStcValue(1,4)
			Sys_SaveEmoneyBuy(tNinjaAnswer_Log["Correct"])
			
			--背包空间不足
			local nNinjaAnswer_SpaceNum = RewardTemplate_GetRewardSpace(tNinjaAnswer_Reward[3329960])
			if not User_CheckLeftSpace(nNinjaAnswer_SpaceNum) then
				Sys_MsgBox(tNinjaAnswer_Text["MsgBox"]["NoSpace"])
				--邮件发奖
				NinjaAnswer_SendEmail(nNinjaAnswer_UserId,1)
				return
			end
			
			--发奖
			RewardTemplate_UseItemAndMsg(tNinjaAnswer_Reward[3329960])
			return
		else
			--置掩码==5，答错第二题
			NinjaAnswer_SetStcValue(1,5)
		end
	end
	
	local cNinjaAnswer_Answer = string.char(64+nNinjaAnswer_Answer)
	--答错
	tItem[nNinjaAnswer_ItemId]["Text131"] = string.format(tNinjaAnswer_Text[nNinjaAnswer_ItemId]["Text131"],cNinjaAnswer_Answer)
	LinkItemGossipFunc_New(nNinjaAnswer_ItemId,"1-3")
	return
	
end

--邮件发奖
function NinjaAnswer_SendEmail(nNinjaAnswer_UserId,nNinjaAnswer_Index)
	local nNinjaAnswer_ActionId = tNinjaAnswer_SendMail["ActionId"][nNinjaAnswer_Index]
	local nNinjaAnswer_ExistDay = tNinjaAnswer_SendMail["ExistDay"]
	local sNinjaAnswer_SenderName = tNinjaAnswer_Text["Email"]["Sender"]
	local sNinjaAnswer_Title = tNinjaAnswer_Text["Email"]["Title"]
	local sNinjaAnswer_Content = tNinjaAnswer_Text["Email"]["Content"]
	Sys_SendMail(nNinjaAnswer_UserId,0,0,nNinjaAnswer_ActionId,0,nNinjaAnswer_ExistDay,sNinjaAnswer_SenderName,sNinjaAnswer_Title,sNinjaAnswer_Content)
	
end
-------------------------------------------物品模板------------------------------------------------------------------
--3329960 忍者小试卷
tItemFace[3329960] = 2585
tItem[3329960] = tItem[3329960] or {}
tItem[3329960]["Function"]=function()
	--活动前
	if CommonFunc_GetBeforeActivityTime(tNinjaAnswer_Data["ActivityTime"]) then
		Sys_MsgBox(tNinjaAnswer_Text["MsgBox"]["Time"])
		return
	end
	
	NinjaAnswer_BeginAnswer()
end
tItem[3329960]["DialogueText"] = tNinjaAnswer_Text[3329960]
tItem[3329960]["Text1-1"] = {111,112}
tItem[3329960]["tOption1-1"] = {111,112,113,114}

tItem[3329960]["Text1-2"] = {111,121}
tItem[3329960]["tOption1-2"] = {121,122,123,124}

tItem[3329960]["Text1-3"] = {111,131}
tItem[3329960]["tOption1-3"] = {131}

--3329961 忍者知识礼包
tItem[3329961] = tItem[3329961] or {}
tItem[3329961]["Function"] = function(nNinjaAnswer_ItemId)
	
	--背包空间不足
	local nNinjaAnswer_SpaceNum = RewardTemplate_GetRandomSpace(tNinjaAnswer_Reward,nNinjaAnswer_ItemId)
	if not User_CheckLeftSpace(nNinjaAnswer_SpaceNum) then
		Sys_MsgBox(string.format(tNinjaAnswer_Text["MsgBox"]["RewardNoSpace"],nNinjaAnswer_SpaceNum))
		return
	end
	
	local tNinjaAnswer_NewReward,sNinjaAnswer_RewardStr = RewardTemplate_RandomReward(tNinjaAnswer_Reward,nNinjaAnswer_ItemId)
	if sNinjaAnswer_RewardStr ~= nil and sNinjaAnswer_RewardStr ~= "" then
		Sys_MsgBox(string.format(tNinjaAnswer_Text["MsgBox"]["Reward"],sNinjaAnswer_RewardStr))
	end

end

