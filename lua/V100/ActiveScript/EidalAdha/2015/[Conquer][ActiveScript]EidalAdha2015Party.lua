------------------------------------------------------------------------------------
--Name:			150720[阿语征服][活动脚本]宰牲节(9.23-9.30)-美食的聚会
--Purpose:		宰牲节活动(9.23-9.30)-美食的聚会
--Creator:		黄昕哲
--Created:		2015/07/20
------------------------------------------------------------------------------------
--复用自2014年宰牲节活动


--命名前缀
--EidalAdha2015_Party_
--聚会	10002254	stc(127,88) =1 完成3次锅任务 =2 领取奖励  91 羊肉 92 牛肉 93 骆驼肉
-------------------------------------------------------------------------------------
local tEidalAdha2015_Party_Data = {}
tEidalAdha2015_Party_Data["BeforeAct"] = "2015-01-01 00:00 2017-09-01 23:59"
tEidalAdha2015_Party_Data["DuringAct"] = "2017-09-02 00:00 2017-09-08 23:59"

tEidalAdha2015_Party_Data["MinLev"] = 80
tEidalAdha2015_Party_Data["MaxLev"] = 140
tEidalAdha2015_Party_Data["MinMeto"] = 0

tEidalAdha2015_Party_Data["Exp"] = 10
tEidalAdha2015_Party_Data["Blessed"] = 1

tEidalAdha2015_Party_Data["Effect1"] = "zf2-e280"
tEidalAdha2015_Party_Data["Effect2"] = "WarFlagEscortBegin"
--Id
local tEidalAdha2015_Party_Id = {}
tEidalAdha2015_Party_Id["Lamb"] = 16911
tEidalAdha2015_Party_Id["Beaf"] = 16912
tEidalAdha2015_Party_Id["Camel"] = 16913
tEidalAdha2015_Party_Id["SnowWater"] = 723017

--阶段
local tEidalAdha2015_Party_Phase = {}
tEidalAdha2015_Party_Phase["FinTask"] = 1
tEidalAdha2015_Party_Phase["GetReward"] = 2
--掩码
local tEidalAdha2015_Party_Stc = {}
tEidalAdha2015_Party_Stc["TaskComplete"] = {}
tEidalAdha2015_Party_Stc["TaskComplete"]["EventType"] = 127
tEidalAdha2015_Party_Stc["TaskComplete"]["DataType"] = 88
tEidalAdha2015_Party_Stc[16911] = {}
tEidalAdha2015_Party_Stc[16911]["EventType"] = 127
tEidalAdha2015_Party_Stc[16911]["DataType"] = 91
tEidalAdha2015_Party_Stc[16912] = {}
tEidalAdha2015_Party_Stc[16912]["EventType"] = 127
tEidalAdha2015_Party_Stc[16912]["DataType"] = 92
tEidalAdha2015_Party_Stc[16913] = {}
tEidalAdha2015_Party_Stc[16913]["EventType"] = 127
tEidalAdha2015_Party_Stc[16913]["DataType"] = 93

--log
local tEidalAdha2015_Party_Log = {}
tEidalAdha2015_Party_Log["FestivalId"] = 3307
tEidalAdha2015_Party_Log["LogId"] = 10002254
tEidalAdha2015_Party_Log["Reward"] = "0,0,0,0,10002254,2,3003625,1"
tEidalAdha2015_Party_Log["FinTask"] = "0,0,12788,0,10002254,1,0,0"

tEidalAdha2015_Party_Log[16911] = "0,0,12791,1,10002254,2,4,5"
tEidalAdha2015_Party_Log[16912] = "0,0,12792,1,10002253,2,723017,1"
tEidalAdha2015_Party_Log[16913] = "0,0,12793,1,10002253,2,5,1"

----------------------------------逻辑部分-----------------------------
--三个大锅均接到此函数
function EidalAdha2015_Party_PotProcess()
	--非活动期间对话
	if not Sys_ChkFullTime(tEidalAdha2015_Party_Data["DuringAct"]) then
		Sys_DialogText(tEidalAdha2015_Party_Text["Pot"]["Text111"])
		Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Option1"])
		Sys_DialogEnd()
	end
	--活动期间,隔天清理
		--隔天清理
	local nPhaseEvent = tEidalAdha2015_Party_Stc["TaskComplete"]["EventType"]
	local nPhaseType = tEidalAdha2015_Party_Stc["TaskComplete"]["DataType"]
	if Task_ChkStcValue(nPhaseEvent,nPhaseType,">=",tEidalAdha2015_Party_Phase["GetReward"]) then
		--完成任务且隔天,则全部清理且重置时间戳
		if Task_StcInterval(nPhaseEvent,nPhaseType,1,4) then
			EidalAdha2015_Party_ResetAll()
			EidalAdha2015_Ceremony_ResetAllStc()
		else
			Sys_DialogText(tEidalAdha2015_Party_Text["Pot"]["Text211"])
			Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Option1"])
			Sys_DialogEnd()
			return
		end
	end
	--完成回答,提示去获取奖励
	if not Task_ChkStcValue(nPhaseEvent,nPhaseType,"==",0) then
		EidalAdha2015_Party_CommonJudge(2)
		return
	end
	--等级不足
	if not User_JudgeLevelAndMetempsychosis(tEidalAdha2015_Party_Data["MinLev"],tEidalAdha2015_Party_Data["MinMeto"]) then
		Sys_DialogText(tEidalAdha2015_Party_Text["Pot"]["Text221"])
		Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Option1"])
		Sys_DialogEnd()
		return
	end
	local nNpcId = Get_NpcId()
	local nTasteEvent = tEidalAdha2015_Party_Stc[nNpcId]["EventType"]
	local nTasteType = tEidalAdha2015_Party_Stc[nNpcId]["DataType"]
	--已品尝过
	if Task_ChkStcValue(nTasteEvent,nTasteType,">=",tEidalAdha2015_Party_Phase["FinTask"]) then
		Sys_DialogText(tEidalAdha2015_Party_Text["Pot"]["Text231"])
		Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Option1"])
		Sys_DialogEnd()
		return
	end
	--未品尝过,可正常接到任务
	Sys_DialogText(tEidalAdha2015_Party_Text["Pot"][nNpcId])
	Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Answer1"],"</F>EidalAdha2015_Party_TalkPot</N>" .. nNpcId .."</N>16913")
	Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Answer2"],"</F>EidalAdha2015_Party_TalkPot</N>" .. nNpcId .."</N>16912")
	Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Answer3"],"</F>EidalAdha2015_Party_TalkPot</N>" .. nNpcId .."</N>16911")
	Sys_DialogEnd()
end

--重置所有掩码和时间戳
function EidalAdha2015_Party_ResetAll()
	local nPhaseEvent = tEidalAdha2015_Party_Stc["TaskComplete"]["EventType"]
	local nPhaseType = tEidalAdha2015_Party_Stc["TaskComplete"]["DataType"]
	local nLambEvent = tEidalAdha2015_Party_Stc[16911]["EventType"]
	local nLambType = tEidalAdha2015_Party_Stc[16911]["DataType"]
	local nBeafEvent = tEidalAdha2015_Party_Stc[16912]["EventType"]
	local nBeafType = tEidalAdha2015_Party_Stc[16912]["DataType"]
	local nCamelEvent = tEidalAdha2015_Party_Stc[16913]["EventType"]
	local nCamelType = tEidalAdha2015_Party_Stc[16913]["DataType"]
	Task_SetStatistic(nPhaseEvent,nPhaseType,0,1,0)
	Task_SetStcTimestamp(nPhaseEvent,nPhaseType,0)
	Task_SetStatistic(nLambEvent,nLambType,0,1,0)
	Task_SetStcTimestamp(nLambEvent,nLambType,0)
	Task_SetStatistic(nBeafEvent,nBeafType,0,1,0)
	Task_SetStcTimestamp(nBeafEvent,nBeafType,0)
	Task_SetStatistic(nCamelEvent,nCamelType,0,1,0)
	Task_SetStcTimestamp(nCamelEvent,nCamelType,0)
end

--选项:领取奖励
function EidalAdha2015_Party_RewardApply(nNpcId)
	--时间不正确
	if not Sys_ChkFullTime(tEidalAdha2015_Party_Data["DuringAct"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-3")
		return
	end
	local nPhaseEvent = tEidalAdha2015_Party_Stc["TaskComplete"]["EventType"]
	local nPhaseType = tEidalAdha2015_Party_Stc["TaskComplete"]["DataType"]
	--任务已完成
	if Task_ChkStcValue(nPhaseEvent,nPhaseType,">=",2) then
		Sys_MsgBox(tEidalAdha2015_Party_Text[16910]["Msg1"])
		return
	end
	--任务未完成
	if Task_ChkStcValue(nPhaseEvent,nPhaseType,"<",1) then
		Sys_MsgBox(tEidalAdha2015_Party_Text[16910]["Msg2"])
		return
	end
	--背包已满
	if not User_CheckLeftSpace(1) then
		Sys_MsgBox(tEidalAdha2015_Party_Text[16910]["Msg3"])
		return
	end
	--条件都满足,给奖
	Task_SetStatistic(nPhaseEvent,nPhaseType,tEidalAdha2015_Party_Phase["GetReward"],1,0)
	Task_SetStcTimestamp(nPhaseEvent,nPhaseType,0)
	Sys_SaveActionFestivalLog(tEidalAdha2015_Party_Log["Reward"])
	User_EffectAdd("self",tEidalAdha2015_Party_Data["Effect1"])
	EidalAdha2015_Ceremony_AllComplete()
	FestivalGeneralPackage_GetGift(tEidalAdha2015_Party_Log["FestivalId"],tEidalAdha2015_Party_Log["LogId"])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end

--大锅对话
function EidalAdha2015_Party_TalkPot(nNpcId,nAnswer)
	--已经品尝过
	local nTasteEvent = tEidalAdha2015_Party_Stc[nNpcId]["EventType"]
	local nTasteType = tEidalAdha2015_Party_Stc[nNpcId]["DataType"]
	if Task_ChkStcValue(nTasteEvent,nTasteType,">=",tEidalAdha2015_Party_Phase["FinTask"]) then
		Sys_DialogText(tEidalAdha2015_Party_Text["Pot"]["Text231"])
		Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Option1"])
		Sys_DialogEnd()
		return
	end
	--回答不正确
	if nNpcId ~= nAnswer then
		Sys_DialogText(tEidalAdha2015_Party_Text["Pot"]["Text241"])
		Sys_DialogOption(tEidalAdha2015_Party_Text["Pot"]["Option1"])
		Sys_DialogEnd()
		return
	end
	--回答正确
	Task_SetStatistic(nTasteEvent,nTasteType,tEidalAdha2015_Party_Phase["FinTask"],1,0)
	Task_SetStcTimestamp(nTasteEvent,nTasteType,0)
	--羊肉
	if nNpcId == tEidalAdha2015_Party_Id["Lamb"] then
		if Get_UserLevel() >= tEidalAdha2015_Party_Data["MaxLev"] then
			EidalAdha2015_Party_CommonJudge(1)
			return
		end
		User_AddExpTime(tEidalAdha2015_Party_Data["Exp"])
	--牛肉
	elseif nNpcId == tEidalAdha2015_Party_Id["Beaf"] then
		--背包不足
		if not User_CheckLeftSpace(1) then
			User_TalkChannel2005(tEidalAdha2015_Party_Text["Pot"]["FullBag"])
			Task_SetStatistic(nTasteEvent,nTasteType,0,1,0)
			return
		end
		Item_AddItem(tEidalAdha2015_Party_Id["SnowWater"],0,1,3)
	--骆驼肉
	else
		User_AddBless(tEidalAdha2015_Party_Data["Blessed"])
	end
	Sys_SaveActionFestivalLog(tEidalAdha2015_Party_Log[nNpcId])
	User_EffectAdd("self",tEidalAdha2015_Party_Data["Effect2"])
	Sys_MsgBox(tEidalAdha2015_Party_Text["Pot"]["Reward" .. nNpcId])
	EidalAdha2015_Party_CommonJudge(1)
end

--公用完成判断
function EidalAdha2015_Party_CommonJudge(nJudge)
	local nPhaseEvent = tEidalAdha2015_Party_Stc["TaskComplete"]["EventType"]
	local nPhaseType = tEidalAdha2015_Party_Stc["TaskComplete"]["DataType"]
	local nLambEvent = tEidalAdha2015_Party_Stc[16911]["EventType"]
	local nLambType = tEidalAdha2015_Party_Stc[16911]["DataType"]
	local nBeafEvent = tEidalAdha2015_Party_Stc[16912]["EventType"]
	local nBeafType = tEidalAdha2015_Party_Stc[16912]["DataType"]
	local nCamelEvent = tEidalAdha2015_Party_Stc[16913]["EventType"]
	local nCamelType = tEidalAdha2015_Party_Stc[16913]["DataType"]
	if 2 ~= nJudge then
		--三者有任一未完成则跳出
		if Task_ChkStcValue(nLambEvent,nLambType,"<",1) then
			return
		end
		if Task_ChkStcValue(nBeafEvent,nBeafType,"<",1) then
			return
		end
		if Task_ChkStcValue(nCamelEvent,nCamelType,"<",1) then
			return
		end
		--都完成,改变掩码-log
		Task_SetStatistic(nPhaseEvent,nPhaseType,tEidalAdha2015_Party_Phase["FinTask"],1,0)
		Task_SetStcTimestamp(nPhaseEvent,nPhaseType,0)
		Sys_SaveActionFestivalLog(tEidalAdha2015_Party_Log["FinTask"])
	end
	--提示玩家
	Sys_MsgBox(tEidalAdha2015_Party_Text["Pot"]["Text231"])
end

----------------------------------Npc模板-----------------------------
tNpcFace[3129] = 48
tNpcGossip[16910] = tNpcGossip[16910] or DefaultNpc:new{}
tNpcGossip[16910]["OptionHidden"] = 1

--活动前
tNpcGossip[16910]["Text1-1"] = {111,112,113,114}
tNpcGossip[16910]["Text111"] = tEidalAdha2015_Party_Text[16910]["Text111"]
tNpcGossip[16910]["Text112"] = tEidalAdha2015_Party_Text[16910]["Text112"]
tNpcGossip[16910]["Text113"] = tEidalAdha2015_Party_Text[16910]["Text113"]
tNpcGossip[16910]["Text114"] = tEidalAdha2015_Party_Text[16910]["Text114"]
tNpcGossip[16910]["tOption1-1"] = {1}
tNpcGossip[16910]["Option1"] = tEidalAdha2015_Party_Text[16910]["Option1"]
tNpcGossip[16910]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_Party_Data["BeforeAct"])
end

--活动中
tNpcGossip[16910]["Text1-2"] = {121,122,123}
tNpcGossip[16910]["Text121"] = tEidalAdha2015_Party_Text[16910]["Text121"]
tNpcGossip[16910]["Text122"] = tEidalAdha2015_Party_Text[16910]["Text122"]
tNpcGossip[16910]["Text123"] = tEidalAdha2015_Party_Text[16910]["Text123"]
tNpcGossip[16910]["tOption1-2"] = {2,3}
tNpcGossip[16910]["Option2"] = tEidalAdha2015_Party_Text[16910]["Option2"]
	tNpcGossip[16910]["OptionFunc2"] = "EidalAdha2015_Party_RewardApply</N>16910"
tNpcGossip[16910]["Option3"] = tEidalAdha2015_Party_Text[16910]["Option3"]
tNpcGossip[16910]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tEidalAdha2015_Party_Data["DuringAct"])
end

--活动后
tNpcGossip[16910]["Text1-3"] = {131,132}
tNpcGossip[16910]["Text131"] = tEidalAdha2015_Party_Text[16910]["Text131"]
tNpcGossip[16910]["Text132"] = tEidalAdha2015_Party_Text[16910]["Text132"]
tNpcGossip[16910]["tOption1-3"] = {4}
tNpcGossip[16910]["Option4"] = tEidalAdha2015_Party_Text[16910]["Option4"]

--获取奖励
tNpcGossip[16910]["Text2-1"] = {211}
tNpcGossip[16910]["Text211"] = tEidalAdha2015_Party_Text[16910]["Text211"]
tNpcGossip[16910]["tOption2-1"] = {5}
tNpcGossip[16910]["Option5"] = tEidalAdha2015_Party_Text[16910]["Option5"]
