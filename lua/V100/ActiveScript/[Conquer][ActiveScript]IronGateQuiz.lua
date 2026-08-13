----------------------------------------------------------------------------
--Name:		[英文征服][活动脚本]铁扇门quiz任务
--Purpose:	通过线上引导玩家回答问题，让玩家了解新职业铁扇门的基本概况，对新职业有初步的了解。
--Creator: 	姚曦宇
--Created:	2016/12/07
----------------------------------------------------------------------------
-- 前缀 tIronGateQuiz_
-- lua.ini ：40406
-- logid ： 12000595
-- 掩码说明
-- stc(151,00) 记录任务状态：0表示未参加答题，1表示参加答题，2表示完成答题
-- stc(151,01) 记录第一道题的状态：0表示未答过，1表示答过
-- stc(151,02) 记录第二道题的状态：0表示未答过，1表示答过
-- stc(151,03) 记录第三道题的状态：0表示未答过，1表示答过
-- stc(151,05) 记录答对的数量
-- stc(151,06) 记录礼包领取状态：0表示未领取，1表示已领取
-- stc(151,07) 记录玩家首次参加答题：0表示首次，1表示非首次（0可以领取天石，1不能领取天石）
----------------------------------------------------------------------------
--------------------------------常量表 -------------------------------------
local tIronGateQuiz_Cont = {}
	tIronGateQuiz_Cont["BeforeTime"] = "2016-01-01 00:00 2017-01-04 23:59"
	tIronGateQuiz_Cont["DuringTime"] = "2017-01-05 00:00 2017-01-11 23:59"
	tIronGateQuiz_Cont["Space"] = 1
	tIronGateQuiz_Cont["LogId"] = 12000595
	tIronGateQuiz_Cont["Level"] = 100
	
local tIronGateQuiz_Npc = {}
	tIronGateQuiz_Npc[11314] = {}
	tIronGateQuiz_Npc[11314]["Name"] = "Windwalker"
	tIronGateQuiz_Npc[11314]["nMapId"] = 1002
	tIronGateQuiz_Npc[11314]["nPosX"] = 239
	tIronGateQuiz_Npc[11314]["nPosY"] = 230	
	tIronGateQuiz_Npc[19634] = {}
	tIronGateQuiz_Npc[19634]["nMapId"] = 1004
	tIronGateQuiz_Npc[19634]["nPosX"] = 76
	tIronGateQuiz_Npc[19634]["nPosY"] = 57

local tIronGateQuiz_Reward = {}
	tIronGateQuiz_Reward[3301019] = {}
	tIronGateQuiz_Reward[3301019][1] = {}
	tIronGateQuiz_Reward[3301019][1]["ItemChanceSum"] = 100
	-- 300分钟经验礼包  	                          30%
	tIronGateQuiz_Reward[3301019][1][1] = {}
	tIronGateQuiz_Reward[3301019][1][1]["RandomItemChanceType"] = 2
	tIronGateQuiz_Reward[3301019][1][1]["ItemChance"] = 30
	tIronGateQuiz_Reward[3301019][1][1]["DeleteItem"] = {}
	tIronGateQuiz_Reward[3301019][1][1]["DeleteItem"][1] = {}
	tIronGateQuiz_Reward[3301019][1][1]["DeleteItem"][1]["Id"] = 3301019
	tIronGateQuiz_Reward[3301019][1][1]["RewardItem"] = {}				
	tIronGateQuiz_Reward[3301019][1][1]["RewardItem"][1] = {}			
	tIronGateQuiz_Reward[3301019][1][1]["RewardItem"][1]["Id"] = 3200334	
	tIronGateQuiz_Reward[3301019][1][1]["RewardItem"][1]["Attr"] = "0 1 3"
	tIronGateQuiz_Reward[3301019][1][1]["Log"] = "0,0,3301019,1,12000595,2,3200334,1"
	tIronGateQuiz_Reward[3301019][1][1]["Talk"] = tIronGateQuiz_Text["Reward"][1]
	-- 回气丹*1 	                          5%
	tIronGateQuiz_Reward[3301019][1][2] = {}
	tIronGateQuiz_Reward[3301019][1][2]["RandomItemChanceType"] = 2
	tIronGateQuiz_Reward[3301019][1][2]["ItemChance"] = 5
	tIronGateQuiz_Reward[3301019][1][2]["DeleteItem"] = {}
	tIronGateQuiz_Reward[3301019][1][2]["DeleteItem"][1] = {}
	tIronGateQuiz_Reward[3301019][1][2]["DeleteItem"][1]["Id"] = 3301019
	tIronGateQuiz_Reward[3301019][1][2]["RewardItem"] = {}				
	tIronGateQuiz_Reward[3301019][1][2]["RewardItem"][1] = {}			
	tIronGateQuiz_Reward[3301019][1][2]["RewardItem"][1]["Id"] = 729242	
	tIronGateQuiz_Reward[3301019][1][2]["RewardItem"][1]["Attr"] = "0 1 3"
	tIronGateQuiz_Reward[3301019][1][2]["Log"] = "0,0,3301019,1,12000595,2,729242,1" 
	tIronGateQuiz_Reward[3301019][1][2]["Talk"] = tIronGateQuiz_Text["Reward"][2]
	-- 微光星陨石*1 	                          40%
	tIronGateQuiz_Reward[3301019][1][3] = {}
	tIronGateQuiz_Reward[3301019][1][3]["RandomItemChanceType"] = 2
	tIronGateQuiz_Reward[3301019][1][3]["ItemChance"] = 40
	tIronGateQuiz_Reward[3301019][1][3]["DeleteItem"] = {}
	tIronGateQuiz_Reward[3301019][1][3]["DeleteItem"][1] = {}
	tIronGateQuiz_Reward[3301019][1][3]["DeleteItem"][1]["Id"] = 3301019
	tIronGateQuiz_Reward[3301019][1][3]["RewardItem"] = {}				
	tIronGateQuiz_Reward[3301019][1][3]["RewardItem"][1] = {}			
	tIronGateQuiz_Reward[3301019][1][3]["RewardItem"][1]["Id"] = 3009000	
	tIronGateQuiz_Reward[3301019][1][3]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tIronGateQuiz_Reward[3301019][1][3]["Log"] = "0,0,3301019,1,12000595,2,3009000,1"
	tIronGateQuiz_Reward[3301019][1][3]["Talk"] = tIronGateQuiz_Text["Reward"][3]
	-- 护心丹*1 	                          15%
	tIronGateQuiz_Reward[3301019][1][4] = {}
	tIronGateQuiz_Reward[3301019][1][4]["RandomItemChanceType"] = 2
	tIronGateQuiz_Reward[3301019][1][4]["ItemChance"] = 15
	tIronGateQuiz_Reward[3301019][1][4]["DeleteItem"] = {}
	tIronGateQuiz_Reward[3301019][1][4]["DeleteItem"][1] = {}
	tIronGateQuiz_Reward[3301019][1][4]["DeleteItem"][1]["Id"] = 3301019
	tIronGateQuiz_Reward[3301019][1][4]["RewardItem"] = {}				
	tIronGateQuiz_Reward[3301019][1][4]["RewardItem"][1] = {}			
	tIronGateQuiz_Reward[3301019][1][4]["RewardItem"][1]["Id"] = 3002029	
	tIronGateQuiz_Reward[3301019][1][4]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
	tIronGateQuiz_Reward[3301019][1][4]["Log"] = "0,0,3301019,1,12000595,2,3002029,1"
	tIronGateQuiz_Reward[3301019][1][4]["Talk"] = tIronGateQuiz_Text["Reward"][4]
	-- 大爆丹*1 	                          10%
	tIronGateQuiz_Reward[3301019][1][5] = {}
	tIronGateQuiz_Reward[3301019][1][5]["RandomItemChanceType"] = 2
	tIronGateQuiz_Reward[3301019][1][5]["ItemChance"] = 10
	tIronGateQuiz_Reward[3301019][1][5]["DeleteItem"] = {}
	tIronGateQuiz_Reward[3301019][1][5]["DeleteItem"][1] = {}
	tIronGateQuiz_Reward[3301019][1][5]["DeleteItem"][1]["Id"] = 3301019
	tIronGateQuiz_Reward[3301019][1][5]["RewardItem"] = {}				
	tIronGateQuiz_Reward[3301019][1][5]["RewardItem"][1] = {}			
	tIronGateQuiz_Reward[3301019][1][5]["RewardItem"][1]["Id"] = 3003126	
	tIronGateQuiz_Reward[3301019][1][5]["RewardItem"][1]["Attr"] = "0 1 3"
	tIronGateQuiz_Reward[3301019][1][5]["Log"] = "0,0,3301019,1,12000595,2,3003126,1"
	tIronGateQuiz_Reward[3301019][1][5]["Talk"] = tIronGateQuiz_Text["Reward"][5]
	
local tIronGateQuiz_Stc = {}
--需要清理的掩码
	tIronGateQuiz_Stc["Clear"] = {}
	-- 记录每道题的状态：0表示未答过，1表示答过
	tIronGateQuiz_Stc["Clear"][1] = {}
	tIronGateQuiz_Stc["Clear"][1]["Event"] = 151
	tIronGateQuiz_Stc["Clear"][1]["Type"] = 01
	tIronGateQuiz_Stc["Clear"][2] = {}
	tIronGateQuiz_Stc["Clear"][2]["Event"] = 151
	tIronGateQuiz_Stc["Clear"][2]["Type"] = 02
	tIronGateQuiz_Stc["Clear"][3] = {}
	tIronGateQuiz_Stc["Clear"][3]["Event"] = 151
	tIronGateQuiz_Stc["Clear"][3]["Type"] = 03 
	-- 记录任务状态：0表示未参加答题，1表示参加答题，2表示完成答题
	tIronGateQuiz_Stc["Clear"][4] = {}
	tIronGateQuiz_Stc["Clear"][4]["Event"] = 151
	tIronGateQuiz_Stc["Clear"][4]["Type"] = 00
	-- 记录答对的数量
	tIronGateQuiz_Stc["Clear"][5] = {}
	tIronGateQuiz_Stc["Clear"][5]["Event"] = 151
	tIronGateQuiz_Stc["Clear"][5]["Type"] = 05
	-- 记录礼包领取状态
	tIronGateQuiz_Stc["Clear"][6] = {}
	tIronGateQuiz_Stc["Clear"][6]["Event"] = 151
	tIronGateQuiz_Stc["Clear"][6]["Type"] = 06
	-- 步骤掩码
	tIronGateQuiz_Stc["Clear"][7] = {}
	tIronGateQuiz_Stc["Clear"][7]["Event"] = 151
	tIronGateQuiz_Stc["Clear"][7]["Type"] = 04
-- 不需要清理的掩码
	tIronGateQuiz_Stc["UnClear"] = {}
	-- 记录玩家首次参加答题：0表示首次，1表示非首次（0可以领取天石，1不能领取天石）
	tIronGateQuiz_Stc["UnClear"][1] = {}
	tIronGateQuiz_Stc["UnClear"][1]["Event"] = 151
	tIronGateQuiz_Stc["UnClear"][1]["Type"] = 07	

local tIronGateQuiz_Log = {}
	tIronGateQuiz_Log["Join"] = "0,0,0,0,12000595,1,0,0" 
	tIronGateQuiz_Log["Right"] = {}
	-- 答对1题、2题、3题对应的log
	tIronGateQuiz_Log["Right"][1] = "0,0,0,0,12000595,1[1],0,0" 
	tIronGateQuiz_Log["Right"][2] = "0,0,0,0,12000595,1[2],0,0" 
	tIronGateQuiz_Log["Right"][3] = "0,0,0,0,12000595,1[3],0,0" 
	tIronGateQuiz_Log["Reward"] = "0,0,0,0,12000595,2,3301019,1" 
	tIronGateQuiz_Log["EmoneyLog"] = "350	20419	0	0	500	"

-- 临时表 存放玩家当天刷新的题库
local tIronGateQuiz_Question = {}
	tIronGateQuiz_Question[1] = {}
	tIronGateQuiz_Question[1]["Quest"] = 1
	tIronGateQuiz_Question[2] = {}
	tIronGateQuiz_Question[2]["Quest"] = 2
	tIronGateQuiz_Question[3] = {}
	tIronGateQuiz_Question[3]["Quest"] = 3
local tIronGateQuiz_Effect = {}
	tIronGateQuiz_Effect["Self"] = "self"
	tIronGateQuiz_Effect["Effect"] = "changefig"


--------------------------------逻辑部分-------------------------------------
-- 我要参与答题
function IronGateQuiz_Join(nNpcId)
	local nJoinEvent = tIronGateQuiz_Stc["Clear"][4]["Event"]
	local nJoinType = tIronGateQuiz_Stc["Clear"][4]["Type"]
	local nUserId = Get_UserId()

-- 判断是否隔天
	if Task_StcInterval(nJoinEvent,nJoinType,1,4,nUserId) then
	-- 隔天则清理掩码
		IronGateQuiz_StcClear()
	end
-- 每次重新打开答题，都将步骤掩码清零
	IronGateQuiz_StcSet(0)
-- 判断活动阶段
	-- 未参加
	if not Task_ChkStcValue(nJoinEvent,nJoinType,">",0,nUserId) then
		-- 刷新每日题
		IronGateQuiz_Refresh()
		-- 设置掩码为1 已参加
		Task_SetStatistic(nJoinEvent,nJoinType,1,1,nUserId)
		-- 打log
		Sys_SaveActionFestivalLog(tIronGateQuiz_Log["Join"],nUserId)
		IronGateQuiz_ReDialog(nNpcId)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- 已参加
	if not Task_ChkStcValue(nJoinEvent,nJoinType,">",1,nUserId) then
		IronGateQuiz_ReDialog(nNpcId)
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- 已完成
	IronGateQuiz_Complete(nNpcId)
end

-- 回答问题
function IronGateQuiz_Reply(nNpcId,nAnswer)
	local nUserId = Get_UserId()
	-- 每次执行IronGateQuiz_Reply函数时，都将步骤掩码加1，能够标记答到第几题
	local nStep = IronGateQuiz_StcSet(1)
	-- 该掩码为第nStep题的掩码
	local nEvent = tIronGateQuiz_Stc["Clear"][nStep]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][nStep]["Type"]
	-- nNum标记当前题的编号
	local nNum = tIronGateQuiz_Question[nStep]["Quest"]
	-- 将题的编号和玩家选择的答案组合成2位数掩码
	local nData = nNum*10 + nAnswer
	local nDoneEvent = tIronGateQuiz_Stc["Clear"][4]["Event"]
	local nDonetType = tIronGateQuiz_Stc["Clear"][4]["Type"]
	local nRightEvent = tIronGateQuiz_Stc["Clear"][5]["Event"]
	local nRightType = tIronGateQuiz_Stc["Clear"][5]["Type"]
	local nFirstEvent = tIronGateQuiz_Stc["UnClear"][1]["Event"]
	local nFirstType = tIronGateQuiz_Stc["UnClear"][1]["Type"] 
	-- nAnswer = 5时，表示该题答过了，跳过掩码设置
	if nAnswer ~= 5 then
		Task_SetStatistic(nEvent,nType,nData,1,nUserId)
		-- 回答正确 （答对数掩码都+1）	
		if tIronGateQuiz_Text[nNpcId]["Question"][nNum]["Correct"] == nAnswer then
			Task_AddStatistic(nRightEvent,nRightType,1,1,nUserId)
			-- 打log
			local nCorrectNum = Get_UserStatisticValue(nRightEvent,nRightType,nUserId)
			Sys_SaveActionFestivalLog(tIronGateQuiz_Log["Right"][nCorrectNum],nUserId)
		end
	end
	-- 3题都答完，打完成掩码
	if nStep == 3 then
		Task_SetStatistic(nDoneEvent,nDonetType,2,1,nUserId)
-- 修改位置
		if Task_ChkStcValue(nFirstEvent,nFirstType,"==",0,nUserId) then
			Task_SetStatistic(nFirstEvent,nFirstType,1,1,nUserId)
		end
		IronGateQuiz_Complete(nNpcId)
		return
	end
	-- 跳至下一题
	nStep = nStep + 1
	local sText = "2-"..nStep
	IronGateQuiz_ReDialog(nNpcId)
	LinkNpcGossipFunc_New(nNpcId,sText)
end

-- 刷新每日题 从10道题中随机选3道 并记录到临时表里
function IronGateQuiz_Refresh()
	local tQuestions = {1,2,3,4,5,6,7,8,9,10}
	for i = 1, 3, 1 do
		local nKey = math.random(1,#tQuestions)
		tIronGateQuiz_Question[i]["Quest"] = tQuestions[nKey]
		table.remove(tQuestions,nKey)
	end
end

-- 对白初始化
function IronGateQuiz_ReDialog(nNpcId)
	local nUserId = Get_UserId()
	for i = 1, 3, 1 do 
		local sDialog = "Text2"..i.."1"
		local sOption = "Option"..i.."5"
		local nNum = tIronGateQuiz_Question[i]["Quest"]
		local nData = Get_UserStatisticValue(tIronGateQuiz_Stc["Clear"][i]["Event"],tIronGateQuiz_Stc["Clear"][i]["Type"],nUserId)
		-- 假如掩码大于0，表示答过，则初始化 【能够显示玩家所选答案的选项】 并从掩码中提取题目编号
		if nData > 0 then
			-- 提取掩码中十位数的题目编号
			nNum = math.floor(nData/10)
			-- 提取玩家所选答案
			local nAnswer = nData%10
			tNpcGossip[nNpcId][sOption] = string.format(tIronGateQuiz_Text[nNpcId][sOption],tIronGateQuiz_Text[nNpcId]["Question"][nNum]["Option"][nAnswer]["Text"])
		end
		-- 假如掩码等于0，表示未答过，则从临时表中提取题目编号并初始化
		tNpcGossip[nNpcId][sDialog] = tIronGateQuiz_Text[nNpcId]["Question"][nNum]["Text"]
		for j,v in pairs(tIronGateQuiz_Text[nNpcId]["Question"][nNum]["Option"]) do
			sOption = "Option"..i..j
			local sOptionFunc = "OptionFunc"..i..j
			tNpcGossip[nNpcId][sOption] = v["Text"]
			tNpcGossip[nNpcId][sOptionFunc] = v["Func"]
		end
	end
end
	
-- 步骤掩码(记录答到第几题)
function IronGateQuiz_StcSet(nIndex)
	local nEvent = tIronGateQuiz_Stc["Clear"][7]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][7]["Type"]
	local nUserId = Get_UserId()
	-- 掩码清零
	if nIndex == 0 then
		Task_SetStatistic(nEvent,nType,0,1,nUserId)
		return
	end
	-- 掩码加1并返回掩码值
	if nIndex == 1 then
		Task_AddStatistic(nEvent,nType,1,1,nUserId)
		return Get_UserStatisticValue(nEvent,nType,nUserId)
	end
end

-- 掩码清理
function IronGateQuiz_StcClear()	
	local nUserId = Get_UserId()
	for i,v in pairs(tIronGateQuiz_Stc["Clear"]) do
		Task_SetStatistic(v["Event"],v["Type"],0,1,nUserId)
		Task_SetStcTimestamp(v["Event"],v["Type"],0,nUserId)
	end
end

-- 答题完成
function IronGateQuiz_Complete(nNpcId)
	local nRewardEvent = tIronGateQuiz_Stc["Clear"][6]["Event"]
	local nRewardType = tIronGateQuiz_Stc["Clear"][6]["Type"]
	local nRightEvent = tIronGateQuiz_Stc["Clear"][5]["Event"]
	local nRightType = tIronGateQuiz_Stc["Clear"][5]["Type"]
	local nUserId = Get_UserId()
	
-- 判断是否领取过
	if Task_ChkStcValue(nRewardEvent,nRewardType,">=",1,nUserId) then
		-- 领取过了
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end
	
-- 判断是否全部答对
	if not Task_ChkStcValue(nRightEvent,nRightType,">=",3,nUserId) then
		-- 未全部答对，初始化对白
		local nNum = Get_UserStatisticValue(nRightEvent,nRightType,nUserId)
		-- 告诉玩家答对了多少题
		tNpcGossip[nNpcId]["Text421"] = string.format(tIronGateQuiz_Text[nNpcId]["Text421"],nNum)
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	end
	
-- 可以领取
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end

-- 领取奖励
function IronGateQuiz_Reward(nNpcId)
	local nEvent = tIronGateQuiz_Stc["Clear"][6]["Event"]
	local nType  = tIronGateQuiz_Stc["Clear"][6]["Type"]  
	local nUserId = Get_UserId()
	local sSelf = tIronGateQuiz_Effect["Self"]
	local sEffect = tIronGateQuiz_Effect["Effect"]
	
-- 判断背包空间
	if not User_CheckLeftSpace(tIronGateQuiz_Cont["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"4-3")
		return
	end
	
-- 设置掩码，获得物品，打log，给通知
	Task_SetStatistic(nEvent,nType,1,1,nUserId)
	User_EffectAdd(sSelf,sEffect,nUserId)
	Item_AddItem(3301019,0,1,3)
	Sys_SaveActionFestivalLog(tIronGateQuiz_Log["Reward"],nUserId)
	Sys_MsgBox(tIronGateQuiz_Text["GetReward"])
	User_TalkChannel2005(tIronGateQuiz_Text["GetReward"],nUserId)
end

-- 领取赠品天石
function IronGateQuiz_GetEMoneyMono(nNpcId)
	local nLevel = tIronGateQuiz_Cont["Level"]
	local nFirstEvent = tIronGateQuiz_Stc["UnClear"][1]["Event"]
	local nFirstType = tIronGateQuiz_Stc["UnClear"][1]["Type"] 
	local nUserId = Get_UserId()
	local sSelf = tIronGateQuiz_Effect["Self"]
	local sEffect = tIronGateQuiz_Effect["Effect"]
-- 判断等级
	if not User_JudgeLevelAndMetempsychosis(nLevel,0,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"4-6")
		return
	end

-- 判断是否领取过
	if Task_ChkStcValue(nFirstEvent,nFirstType,">",1,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"4-4")
		return
	end
	
-- 判断是否完成过
	if not Task_ChkStcValue(nFirstEvent,nFirstType,">",0,nUserId) then
		LinkNpcGossipFunc_New(nNpcId,"4-5")
		return
	end
	
-- 设置掩码，给赠点天石，打log，给通知
	Task_SetStatistic(nFirstEvent,nFirstType,2,1,nUserId)
	User_EffectAdd(sSelf,sEffect,nUserId)
	User_AddEMoneyMono(500,nUserId)
	Sys_SaveEmoneyBuy(tIronGateQuiz_Log["EmoneyLog"],nUserId)
	Sys_MsgBox(tIronGateQuiz_Text["GetEMoneyMono"])
	User_TalkChannel2005(tIronGateQuiz_Text["GetEMoneyMono"],nUserId)
end
--[[
-- 前往Npc
function IronGateQuiz_GoToNpc(nNpcId)
	local nMapId = tIronGateQuiz_Npc[nNpcId]["nMapId"]
	local nPosX = tIronGateQuiz_Npc[nNpcId]["nPosX"] 
	local nPosY = tIronGateQuiz_Npc[nNpcId]["nPosY"] 
	local nUserId = Get_UserId()
	local sText = tIronGateQuiz_Text["GoToNpc"]
	local sFunc = string.format("Sys_GotoSomeWhere</N>%d</N>%d</N>%d</N>%d</N>%d",nPosX,nPosY,nMapId,nNpcId,nUserId)
	local sFailFunc = "NULL"
	-- 弹框，确认则前往NPC
	Sys_MsgBox(sText,sFunc,sFailFunc,nUserId)
end
--]]
-- 使用物品
function IronGateQuiz_ItemUse(nItemId)
	local tReward = tIronGateQuiz_Reward[nItemId]
	local nUserId = Get_UserId()
	if not Item_ChkItem(nItemId) then
		return
	end
	if not Item_DelItem(nItemId) then
		return
	end
	RewardTemplate_Random(tReward,1,nUserId)
	
end
-----------------------------------------------------------------------
tNpcFace[3345] = 187

tNpcGossip[11314] = tNpcGossip[11314] or DefaultNpc:new{}
tNpcGossip[11314]["OptionHidden"] = 1
-- Npc旁白，告知活动时间
tNpcGossip[11314]["Text1-1"] = {111,112}
tNpcGossip[11314]["Text111"] = tIronGateQuiz_Text[11314]["Text111"]
tNpcGossip[11314]["Text112"] = tIronGateQuiz_Text[11314]["Text112"]
tNpcGossip[11314]["tOption1-1"] = {1,2,4,5}
-- 不在活动期间的选项
tNpcGossip[11314]["Option1"] = tIronGateQuiz_Text[11314]["Option1"]
tNpcGossip[11314]["OptionChkFunc1"] = function()
	return not Sys_ChkFullTime(tIronGateQuiz_Cont["DuringTime"])
end
-- 我要参与答题
tNpcGossip[11314]["Option2"] = tIronGateQuiz_Text[11314]["Option2"]
tNpcGossip[11314]["OptionFunc2"] = "IronGateQuiz_Join</N>11314"
tNpcGossip[11314]["OptionChkFunc2"] = function()
	return Sys_ChkFullTime(tIronGateQuiz_Cont["DuringTime"])
end
--[[
-- 了解更多 前往铁扇门NPC
tNpcGossip[11314]["Option3"] = tIronGateQuiz_Text[11314]["Option3"]
tNpcGossip[11314]["OptionFunc3"] = "IronGateQuiz_GoToNpc</N>19634"  
tNpcGossip[11314]["OptionChkFunc3"] = function()
	return Sys_ChkFullTime(tIronGateQuiz_Cont["DuringTime"])
end
--]]
-- 领取天石奖励
tNpcGossip[11314]["Option4"] = tIronGateQuiz_Text[11314]["Option4"]
tNpcGossip[11314]["OptionFunc4"] = "IronGateQuiz_GetEMoneyMono</N>11314" 
tNpcGossip[11314]["OptionChkFunc4"] = function()
	return Sys_ChkFullTime(tIronGateQuiz_Cont["DuringTime"])
end
-- 离开
tNpcGossip[11314]["Option5"] = tIronGateQuiz_Text[11314]["Option5"]
tNpcGossip[11314]["OptionChkFunc5"] = function()
	return Sys_ChkFullTime(tIronGateQuiz_Cont["DuringTime"])
end

-- 第一题
tNpcGossip[11314]["Text2-1"] = {211}
tNpcGossip[11314]["tOption2-1"] = {11,12,13,14,15}
-- 选项A B C D
tNpcGossip[11314]["OptionChkFunc11"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][1]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][1]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc12"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][1]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][1]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc13"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][1]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][1]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc14"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][1]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][1]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
-- 答过后的选项
tNpcGossip[11314]["OptionChkFunc15"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][1]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][1]["Type"] 
	return not Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionFunc15"] = "IronGateQuiz_Reply</N>11314</N>5"

-- 第二题
tNpcGossip[11314]["Text2-2"] = {221}
tNpcGossip[11314]["tOption2-2"] = {21,22,23,24,25}
tNpcGossip[11314]["OptionChkFunc21"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][2]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][2]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc22"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][2]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][2]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc23"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][2]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][2]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc24"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][2]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][2]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc25"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][2]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][2]["Type"] 
	return not Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionFunc25"] = "IronGateQuiz_Reply</N>11314</N>5"

-- 第三题
tNpcGossip[11314]["Text2-3"] = {231}
tNpcGossip[11314]["tOption2-3"] = {31,32,33,34,35}
tNpcGossip[11314]["OptionChkFunc31"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][3]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][3]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc32"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][3]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][3]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc33"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][3]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][3]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc34"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][3]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][3]["Type"] 
	return Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionChkFunc35"] = function()
	local nEvent = tIronGateQuiz_Stc["Clear"][3]["Event"]
	local nType = tIronGateQuiz_Stc["Clear"][3]["Type"] 
	return not Task_ChkStcValue(nEvent,nType,"==",0)
end
tNpcGossip[11314]["OptionFunc35"] = "IronGateQuiz_Complete</N>11314"

-- 答对3题，询问是否领取奖励
tNpcGossip[11314]["Text3-1"] = {311,312}
tNpcGossip[11314]["Text311"] = tIronGateQuiz_Text[11314]["Text311"]
tNpcGossip[11314]["Text312"] = tIronGateQuiz_Text[11314]["Text312"]
tNpcGossip[11314]["tOption3-1"] = {6,7}
tNpcGossip[11314]["Option6"] = tIronGateQuiz_Text[11314]["Option6"]
tNpcGossip[11314]["OptionFunc6"] = "IronGateQuiz_Reward</N>11314"
tNpcGossip[11314]["Option7"] = tIronGateQuiz_Text[11314]["Option7"]

-- 已经领取过每日礼包，不能领了
tNpcGossip[11314]["Text4-1"] = {411}
tNpcGossip[11314]["Text411"] = tIronGateQuiz_Text[11314]["Text411"]
tNpcGossip[11314]["tOption4-1"] = {8}
tNpcGossip[11314]["Option8"] = tIronGateQuiz_Text[11314]["Option8"]

-- 未全部答对，不能领奖
tNpcGossip[11314]["Text4-2"] = {421,422}
tNpcGossip[11314]["Text421"] = tIronGateQuiz_Text[11314]["Text421"]
tNpcGossip[11314]["Text422"] = tIronGateQuiz_Text[11314]["Text422"]
tNpcGossip[11314]["tOption4-2"] = {9}
tNpcGossip[11314]["Option9"] = tIronGateQuiz_Text[11314]["Option9"]

-- 背包空间不足，清理后再来
tNpcGossip[11314]["Text4-3"] = {431}
tNpcGossip[11314]["Text431"] = tIronGateQuiz_Text[11314]["Text431"]
tNpcGossip[11314]["tOption4-3"] = {10}
tNpcGossip[11314]["Option10"] = tIronGateQuiz_Text[11314]["Option10"]

-- 已经领取过天石，不能再领
tNpcGossip[11314]["Text4-4"] = {441}
tNpcGossip[11314]["Text441"] = tIronGateQuiz_Text[11314]["Text441"]
tNpcGossip[11314]["tOption4-4"] = {16}
tNpcGossip[11314]["Option16"] = tIronGateQuiz_Text[11314]["Option16"]

-- 未完成答题，不能领天石
tNpcGossip[11314]["Text4-5"] = {451}
tNpcGossip[11314]["Text451"] = tIronGateQuiz_Text[11314]["Text451"]
tNpcGossip[11314]["tOption4-5"] = {17}
tNpcGossip[11314]["Option17"] = tIronGateQuiz_Text[11314]["Option17"]
tNpcGossip[11314]["OptionFunc17"] = "IronGateQuiz_Join</N>11314"

-- 等级不足
tNpcGossip[11314]["Text4-6"] = {461}
tNpcGossip[11314]["Text461"] = tIronGateQuiz_Text[11314]["Text461"]
tNpcGossip[11314]["tOption4-6"] = {18}
tNpcGossip[11314]["Option18"] = tIronGateQuiz_Text[11314]["Option18"]
-- 答题大礼包
tItem[3301019] = tItem[3301019] or {}
tItem[3301019]["Function"] = function(nItemId,sItemName)
	IronGateQuiz_ItemUse(nItemId)
end







