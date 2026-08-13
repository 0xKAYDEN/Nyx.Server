------------------------------------------------------------------------------------
--Name:			170516[英文征服][活动脚本]升级福利活动
--Creator:		陈磊
--Created:		2017/05/16
------------------------------------------------------------------------------------
--前缀 tUpLevelActivity_


tUpLevelActivity_Cont ={}
tUpLevelActivity_Cont["ActivityTime"] = "2017-05-25 00:00 2017-06-25 23:59"
tUpLevelActivity_Cont["Level"] = 100
tUpLevelActivity_Cont["Meto"] = 0 
tUpLevelActivity_Cont["nItemId"] = 723017
tUpLevelActivity_Cont["nNum"] = 3
tUpLevelActivity_Cont["MaxLevel"] = 140
tUpLevelActivity_Cont[200] = "2"
tUpLevelActivity_Cont[300] = "3"
tUpLevelActivity_Cont[250] = "2.5"
tUpLevelActivity_Cont[500] = "5"

--159,85 每日签到
--159,86 满级礼包
--159,87 使用药水 时间记录

tUpLevelActivity_Stc = {}
tUpLevelActivity_Stc["Daliy"] = {}
tUpLevelActivity_Stc["Daliy"]["EventType"] = 159
tUpLevelActivity_Stc["Daliy"]["DataType"] = 85

tUpLevelActivity_Stc["FullLevel"] = {}
tUpLevelActivity_Stc["FullLevel"]["EventType"] = 159
tUpLevelActivity_Stc["FullLevel"]["DataType"] = 86

tUpLevelActivity_Stc["Status"] = {}
tUpLevelActivity_Stc["Status"]["EventType"] = 159
tUpLevelActivity_Stc["Status"]["DataType"] = 87

tUpLevelActivity_Stc["StageGoal"] = {}
tUpLevelActivity_Stc["StageGoal"]["TaskId"] = 9
tUpLevelActivity_Stc["StageGoal"]["Condition"] = 0
tUpLevelActivity_Stc["StageGoal"]["Value"] = 1

tUpLevelActivity_RewardItem = {}
tUpLevelActivity_RewardItem[2] = {}
tUpLevelActivity_RewardItem[2]["LogId"] = 12000726
tUpLevelActivity_RewardItem[2]["EventType"] = 159
tUpLevelActivity_RewardItem[2]["DataType"] = 85
tUpLevelActivity_RewardItem[2]["RewardDelay"] = 1
tUpLevelActivity_RewardItem[2]["RewardTimeType"] = 4
tUpLevelActivity_RewardItem[2]["HaveReceiveNoTip"] = 1
tUpLevelActivity_RewardItem[2]["RewardItem"] = {}
tUpLevelActivity_RewardItem[2]["RewardItem"][1] = {}
tUpLevelActivity_RewardItem[2]["RewardItem"][1]["Id"] = 3009001
tUpLevelActivity_RewardItem[2]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tUpLevelActivity_RewardItem[2]["RewardStrengthValue"]= {}
tUpLevelActivity_RewardItem[2]["RewardStrengthValue"]["Value"]= 300
tUpLevelActivity_RewardItem[2]["RewardEffect"] = {}
tUpLevelActivity_RewardItem[2]["RewardEffect"]["SzObj"] = "self"
tUpLevelActivity_RewardItem[2]["RewardEffect"]["Effect"] = "zf2-e128"

tUpLevelActivity_RewardItem[1] = {}
tUpLevelActivity_RewardItem[1]["LogId"] = 12000726
tUpLevelActivity_RewardItem[1]["EventType"] = 159
tUpLevelActivity_RewardItem[1]["DataType"] = 85
tUpLevelActivity_RewardItem[1]["RewardDelay"] = 1
tUpLevelActivity_RewardItem[1]["RewardTimeType"] = 4
tUpLevelActivity_RewardItem[1]["HaveReceiveNoTip"] = 1
tUpLevelActivity_RewardItem[1]["RewardItem"] = {}
tUpLevelActivity_RewardItem[1]["RewardItem"][1] = {}
tUpLevelActivity_RewardItem[1]["RewardItem"][1]["Id"] = 723017
tUpLevelActivity_RewardItem[1]["RewardItem"][1]["Attr"] = "0 2 3"
tUpLevelActivity_RewardItem[1]["RewardItem"][2] = {}
tUpLevelActivity_RewardItem[1]["RewardItem"][2]["Id"] = 3200336
tUpLevelActivity_RewardItem[1]["RewardItem"][2]["Attr"] = "0 1 0 1440 1"
tUpLevelActivity_RewardItem[1]["RewardEffect"] = {}
tUpLevelActivity_RewardItem[1]["RewardEffect"]["SzObj"] = "self"
tUpLevelActivity_RewardItem[1]["RewardEffect"]["Effect"] = "zf2-e128"

tUpLevelActivity_RewardItem["Level"] = {}
tUpLevelActivity_RewardItem["Level"]["LogId"] = 12000726
tUpLevelActivity_RewardItem["Level"]["RewardItem"] = {}
tUpLevelActivity_RewardItem["Level"]["RewardItem"][1] = {}
tUpLevelActivity_RewardItem["Level"]["RewardItem"][1]["Id"] = 3303414
tUpLevelActivity_RewardItem["Level"]["RewardItem"][1]["Attr"] = "0 1 0 4320 1"
tUpLevelActivity_RewardItem["Level"]["RewardEffect"] = {}
tUpLevelActivity_RewardItem["Level"]["RewardEffect"]["SzObj"] = "self"
tUpLevelActivity_RewardItem["Level"]["RewardEffect"]["Effect"] = "zf2-e128"


tUpLevelActivity_RewardItem[3303414] = {}
tUpLevelActivity_RewardItem[3303414]["LogId"] = 12000726
tUpLevelActivity_RewardItem[3303414]["RewardStrengthValue"] = {}
tUpLevelActivity_RewardItem[3303414]["RewardStrengthValue"]["Value"] = 20000
tUpLevelActivity_RewardItem[3303414]["RewardEMoneyMono"] = {}
tUpLevelActivity_RewardItem[3303414]["RewardEMoneyMono"]["Value"] = 1000
tUpLevelActivity_RewardItem[3303414]["RewardItem"] = {}
tUpLevelActivity_RewardItem[3303414]["RewardItem"][1] = {}
tUpLevelActivity_RewardItem[3303414]["RewardItem"][1]["Id"] = 3009002
tUpLevelActivity_RewardItem[3303414]["RewardItem"][1]["Attr"] = "0 1 0 2880 1"
tUpLevelActivity_RewardItem[3303414]["RewardItem"][2] = {}
tUpLevelActivity_RewardItem[3303414]["RewardItem"][2]["Id"] = 720128
tUpLevelActivity_RewardItem[3303414]["RewardItem"][2]["Attr"] = "0 10 3"
tUpLevelActivity_RewardItem[3303414]["DeleteItem"] = {}
tUpLevelActivity_RewardItem[3303414]["DeleteItem"][1] = {}
tUpLevelActivity_RewardItem[3303414]["DeleteItem"][1]["Id"] = 3303414


tUpLevelActivity_RewardItem["ExpGood"] = {}
tUpLevelActivity_RewardItem["ExpGood"]["ItemChanceSum"] = 10000
--友爱卡 30%
tUpLevelActivity_RewardItem["ExpGood"][1] = {}
tUpLevelActivity_RewardItem["ExpGood"][1]["RandomItemChanceType"] = 2
tUpLevelActivity_RewardItem["ExpGood"][1]["ItemChance"] = 8000
tUpLevelActivity_RewardItem["ExpGood"][1]["RewardItem"] = {}
tUpLevelActivity_RewardItem["ExpGood"][1]["RewardItem"][1] = {}
tUpLevelActivity_RewardItem["ExpGood"][1]["RewardItem"][1]["Id"] = 3303411
tUpLevelActivity_RewardItem["ExpGood"][1]["RewardItem"][1]["Attr"] = "0 1"
tUpLevelActivity_RewardItem["ExpGood"][1]["Log"] = "0,0,3303323,3,12000726,2,3303411,1"
tUpLevelActivity_RewardItem["ExpGood"][1]["RewardEffect"] = {}
tUpLevelActivity_RewardItem["ExpGood"][1]["RewardEffect"]["SzObj"] = "self"
tUpLevelActivity_RewardItem["ExpGood"][1]["RewardEffect"]["Effect"] = "angelwing"

tUpLevelActivity_RewardItem["ExpGood"][2] = {}
tUpLevelActivity_RewardItem["ExpGood"][2]["RandomItemChanceType"] = 2
tUpLevelActivity_RewardItem["ExpGood"][2]["ItemChance"] = 1900
tUpLevelActivity_RewardItem["ExpGood"][2]["RewardItem"] = {}
tUpLevelActivity_RewardItem["ExpGood"][2]["RewardItem"][1] = {}
tUpLevelActivity_RewardItem["ExpGood"][2]["RewardItem"][1]["Id"] = 3303412
tUpLevelActivity_RewardItem["ExpGood"][2]["RewardItem"][1]["Attr"] = "0 1"
tUpLevelActivity_RewardItem["ExpGood"][2]["Log"] = "0,0,3303323,3,12000726,2,3303412,1"
tUpLevelActivity_RewardItem["ExpGood"][2]["RewardEffect"] = {}
tUpLevelActivity_RewardItem["ExpGood"][2]["RewardEffect"]["SzObj"] = "self"
tUpLevelActivity_RewardItem["ExpGood"][2]["RewardEffect"]["Effect"] = "angelwing"

tUpLevelActivity_RewardItem["ExpGood"][3] = {}
tUpLevelActivity_RewardItem["ExpGood"][3]["RandomItemChanceType"] = 2
tUpLevelActivity_RewardItem["ExpGood"][3]["ItemChance"] = 100
tUpLevelActivity_RewardItem["ExpGood"][3]["RewardItem"] = {}
tUpLevelActivity_RewardItem["ExpGood"][3]["RewardItem"][1] = {}
tUpLevelActivity_RewardItem["ExpGood"][3]["RewardItem"][1]["Id"] = 3303413
tUpLevelActivity_RewardItem["ExpGood"][3]["RewardItem"][1]["Attr"] = "0 1"
tUpLevelActivity_RewardItem["ExpGood"][3]["Log"] = "0,0,3303323,3,12000726,2,3303413,1"
tUpLevelActivity_RewardItem["ExpGood"][3]["RewardEffect"] = {}
tUpLevelActivity_RewardItem["ExpGood"][3]["RewardEffect"]["SzObj"] = "self"
tUpLevelActivity_RewardItem["ExpGood"][3]["RewardEffect"]["Effect"] = "angelwing"

tUpLevelActivity_RewardItem[3303411] = {}
tUpLevelActivity_RewardItem[3303411]["Log"] = "0,0,3303411,1,12000726,90,7,1"
tUpLevelActivity_RewardItem[3303411]["RewardMulExpTime"] ={}
tUpLevelActivity_RewardItem[3303411]["RewardMulExpTime"]["Percent"] = 250 -- 1小时2.5倍经验
tUpLevelActivity_RewardItem[3303411]["RewardMulExpTime"]["Time"] = 1
tUpLevelActivity_RewardItem[3303411]["DeleteItem"] = {}
tUpLevelActivity_RewardItem[3303411]["DeleteItem"][1] = {}
tUpLevelActivity_RewardItem[3303411]["DeleteItem"][1]["Id"] = 3303411

tUpLevelActivity_RewardItem[3303412] = {}
tUpLevelActivity_RewardItem[3303412]["LogId"] = 12000726
tUpLevelActivity_RewardItem[3303412]["RewardMulExpTime"] ={}
tUpLevelActivity_RewardItem[3303412]["RewardMulExpTime"]["Percent"] = 300 -- 1小时3倍经验
tUpLevelActivity_RewardItem[3303412]["RewardMulExpTime"]["Time"] = 1
tUpLevelActivity_RewardItem[3303412]["DeleteItem"] = {}
tUpLevelActivity_RewardItem[3303412]["DeleteItem"][1] = {}
tUpLevelActivity_RewardItem[3303412]["DeleteItem"][1]["Id"] = 3303412

tUpLevelActivity_RewardItem[3303413] = {}
tUpLevelActivity_RewardItem[3303413]["LogId"] = 12000726
tUpLevelActivity_RewardItem[3303413]["RewardMulExpTime"] ={}
tUpLevelActivity_RewardItem[3303413]["RewardMulExpTime"]["Percent"] = 500 -- 1小时3倍经验
tUpLevelActivity_RewardItem[3303413]["RewardMulExpTime"]["Time"] = 1
tUpLevelActivity_RewardItem[3303413]["DeleteItem"] = {}
tUpLevelActivity_RewardItem[3303413]["DeleteItem"][1] = {}
tUpLevelActivity_RewardItem[3303413]["DeleteItem"][1]["Id"] = 3303413

tUpLevelActivity_RewardItem[723017] = {}
tUpLevelActivity_RewardItem[723017]["LogId"] = 12000726
tUpLevelActivity_RewardItem[723017]["RewardMulExpTime"] ={}
tUpLevelActivity_RewardItem[723017]["RewardMulExpTime"]["Percent"] = 200 -- 1小时2倍经验
tUpLevelActivity_RewardItem[723017]["RewardMulExpTime"]["Time"] = 1
tUpLevelActivity_RewardItem[723017]["DeleteItem"] = {}
tUpLevelActivity_RewardItem[723017]["DeleteItem"][1] = {}
tUpLevelActivity_RewardItem[723017]["DeleteItem"][1]["Id"] = 723017
------------------------------------逻辑部分------------------------------------
function UpLevelActivity_SignIn(nNpcId)
	--判断时间
		--判断活动时间
	if not tUpLevelActivity_TimeJudge(nNpcId) then 
		return
	end 
	local nLevel  = Get_UserLevel()
	local nMeto = Get_UserMetempsychosis(Get_UserId(),1)
	local nIndex = 1
	if nMeto >=2 and nLevel >= tUpLevelActivity_Cont["MaxLevel"]  then 
		nIndex = 2
	end 
	--判断是否领取过
	if not RewardTemplate_JudgmentStc(tUpLevelActivity_RewardItem[nIndex]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return 
	end 

	--背包空间不足
	local nRewardSpace = RewardTemplate_GetRewardSpace(tUpLevelActivity_RewardItem[nIndex]) 
	local nDelSpace =  RewardTemplate_GetDelSpace(tUpLevelActivity_RewardItem[nIndex]) 
	local nSpace = nRewardSpace - nDelSpace 
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		tNpcGossip[nNpcId]["Text221"] = string.format(tUpLevelActivity_Text[nNpcId]["Text221"],nSpace)
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return 
	end 
	--打开奖励
	RewardTemplate_UseItemAndMsg(tUpLevelActivity_RewardItem[nIndex])
end 
--领取满级礼包
function UpLevelActivity_FullLevel(nNpcId)
		--判断活动时间
	if not tUpLevelActivity_TimeJudge(nNpcId) then 
		return
	end 
	--领取过
	local nEvent = tUpLevelActivity_Stc["FullLevel"]["EventType"]
	local nType = tUpLevelActivity_Stc["FullLevel"]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return false
	end
	--是否满级
	local nLevel  = Get_UserLevel()
	local nMeto = Get_UserMetempsychosis(Get_UserId(),1)
	local nFlag = false 
	if nMeto >=2 and nLevel >= tUpLevelActivity_Cont["MaxLevel"]  then 
		nFlag =true
	end 
	if not nFlag then 
		if nMeto <= 2 then 
			tNpcGossip[20649]["Text2-3"] = {231}
		else 
			tNpcGossip[20649]["Text2-3"] = {232}
		end 
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return 
	end 
	
	--背包空间不足
	local nRewardSpace = RewardTemplate_GetRewardSpace(tUpLevelActivity_RewardItem["Level"]) 
	local nDelSpace =  RewardTemplate_GetDelSpace(tUpLevelActivity_RewardItem["Level"]) 
	local nSpace = nRewardSpace - nDelSpace 
	if nSpace > 0 and (not User_CheckLeftSpace(nSpace,nUserId)) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return 
	end 
	--设掩码领奖励
	Task_SetStatistic(nEvent,nType,1,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tUpLevelActivity_RewardItem["Level"])
end
--兑换经验药水（3份昆仑雪水）
function UpLevelActivity_ExChange(nNpcId)
	--判断活动时间
	if not tUpLevelActivity_TimeJudge(nNpcId) then 
		return
	end 
	
	local nItemId  =tUpLevelActivity_Cont["nItemId"]
	local nNum = tUpLevelActivity_Cont["nNum"]
	if not Item_ChkMulItem(nItemId,nItemId,3,1) then 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return 
	end 
	if not RewardTemplate_ChkRandomSpace(tUpLevelActivity_RewardItem,"ExpGood") then 
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return 
	end 
	--删除物品给奖励
	if Item_ChkMulItem(nItemId,nItemId,nNum,1)  and  Item_DelMulItem(nItemId,nItemId,nNum,1) then 
		RewardTemplate_NewRandom(tUpLevelActivity_RewardItem,"ExpGood") 
	end 
end

function tUpLevelActivity_UseItem(nItemId,nIndex)
	local nEvent = tUpLevelActivity_Stc["Status"]["EventType"]
	local nType = tUpLevelActivity_Stc["Status"]["DataType"]
	local nData  = Get_UserStatisticValue(nEvent,nType)
	if Task_StcInterval(nEvent,nType,60,1) or nIndex > nData then 
		Task_SetStatistic(nEvent,nType,nIndex,1)
		Task_SetStcTimestamp(nEvent,nType,0)
		RewardTemplate_UseItemAndMsg(tUpLevelActivity_RewardItem[nItemId])
		-- 大侠传
		local nTaskId = tUpLevelActivity_Stc["StageGoal"]["TaskId"]
		local nCondition = tUpLevelActivity_Stc["StageGoal"]["Condition"]
		local nValue = tUpLevelActivity_Stc["StageGoal"]["Value"]
		if nItemId == 723017 then
			User_AddProcessTaskSchedule(nTaskId,nCondition,nValue)
		end
		if nItemId == 723017 and Get_UserLevel() > 90 then 
			User_AddMentor(10,nUserId)
		end 
		return 
	end 

	if nIndex == nData then 
		LinkItemGossipFunc_New(nItemId,"2-1")
		return 
	end 
	if nData > nIndex then 
		tItem[nItemId]["Text311"] = string.format(tUpLevelActivity_Text[nItemId]["Text311"],tUpLevelActivity_Cont[nData])
		LinkItemGossipFunc_New(nItemId,"3-1")
		return 
	end 
end
--使用药水
function tUpLevelActivity_Use(nItemId,nIndex)
	local nEvent = tUpLevelActivity_Stc["Status"]["EventType"]
	local nType = tUpLevelActivity_Stc["Status"]["DataType"]
	Task_SetStatistic(nEvent,nType,nIndex,1)
	Task_SetStcTimestamp(nEvent,nType,0)
	RewardTemplate_UseItemAndMsg(tUpLevelActivity_RewardItem[nItemId])
	-- 大侠传
	local nTaskId = tUpLevelActivity_Stc["StageGoal"]["TaskId"]
	local nCondition = tUpLevelActivity_Stc["StageGoal"]["Condition"]
	local nValue = tUpLevelActivity_Stc["StageGoal"]["Value"]
	if nItemId == 723017 then
		User_AddProcessTaskSchedule(nTaskId,nCondition,nValue)
	end
	if nItemId == 723017 and Get_UserLevel() > 90 then 
		User_AddMentor(10,nUserId)
	end 
end

function tUpLevelActivity_TimeJudge(nNpcId)
	if CommonFunc_GetAfterActivityTime(tUpLevelActivity_Cont["ActivityTime"])  then 
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return false
	end 
	return true
end 
---------------------------------------npc------------------------------------------
tNpcFace[4805] = 123
tNpcFace[4806] = 18
tNpcGossip[20649] = tNpcGossip[20649] or DefaultNpc:new{}
tNpcGossip[20649]["OptionHidden"] = 1
tNpcGossip[20649]["DialogueText"] = tUpLevelActivity_Text[20649]

--活动时间前
tNpcGossip[20649]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[20649]["tOption1-1"] = {1}
tNpcGossip[20649]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tUpLevelActivity_Cont["ActivityTime"])
end

tNpcGossip[20649]["Text1-2"] = {121,122,113,114,115}
tNpcGossip[20649]["tOption1-2"] = {2}
tNpcGossip[20649]["ChkFunc1-2"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tUpLevelActivity_Cont["Level"],tUpLevelActivity_Cont["Meto"])
end


tNpcGossip[20649]["Text1-3"] = {121,122,113,115}
tNpcGossip[20649]["tOption1-3"] = {3,4}
tNpcGossip[20649]["ChkFunc1-3"] = function ()
	local nLevel  = Get_UserLevel()
	local nMeto = Get_UserMetempsychosis(Get_UserId(),1)
	local nIndex = 1
	if nMeto >=2 and nLevel >= tUpLevelActivity_Cont["MaxLevel"]  then 
		nIndex = 2
	end 
	--判断是否领取过
	if not RewardTemplate_JudgmentStc(tUpLevelActivity_RewardItem[nIndex]) then 
		tNpcGossip[20649]["Option3"] = string.format(tUpLevelActivity_Text[20649]["Option3"],tUpLevelActivity_Text["HaveRecive"])
	else 
		tNpcGossip[20649]["Option3"] = string.format(tUpLevelActivity_Text[20649]["Option3"],tUpLevelActivity_Text["NoRecive"])
	end 
	return Sys_ChkFullTime(tUpLevelActivity_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tUpLevelActivity_Cont["Level"],tUpLevelActivity_Cont["Meto"])
end
tNpcGossip[20649]["OptionFunc3"] = "UpLevelActivity_SignIn</N>20649" 
tNpcGossip[20649]["OptionFunc4"] = "UpLevelActivity_FullLevel</N>20649" 
tNpcGossip[20649]["OptionChkFunc4"]=function()
	local nEvent = tUpLevelActivity_Stc["FullLevel"]["EventType"]
	local nType = tUpLevelActivity_Stc["FullLevel"]["DataType"]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		tNpcGossip[20649]["Option4"] = string.format(tUpLevelActivity_Text[20649]["Option4"],tUpLevelActivity_Text["HaveRecive2"])
		return true
	end
	tNpcGossip[20649]["Option4"] = string.format(tUpLevelActivity_Text[20649]["Option4"],tUpLevelActivity_Text["NoRecive"])
	return true
end

tNpcGossip[20649]["Text1-4"] = {141}
tNpcGossip[20649]["tOption1-4"] = {5}
tNpcGossip[20649]["ChkFunc1-4"] = function ()
	return CommonFunc_GetAfterActivityTime(tUpLevelActivity_Cont["ActivityTime"]) 
end

tNpcGossip[20649]["Text2-1"] = {211}
tNpcGossip[20649]["tOption2-1"] = {211}

tNpcGossip[20649]["Text2-2"] = {221}
tNpcGossip[20649]["tOption2-2"] = {221}

tNpcGossip[20649]["Text2-3"] = {231,232}
tNpcGossip[20649]["tOption2-3"] = {231}

tNpcGossip[20649]["Text2-4"] = {241}
tNpcGossip[20649]["tOption2-4"] = {241}

tNpcGossip[20649]["Text2-5"] = {251}
tNpcGossip[20649]["tOption2-5"] = {251}

tNpcGossip[20650] = tNpcGossip[20650] or DefaultNpc:new{}
tNpcGossip[20650]["OptionHidden"] = 1
tNpcGossip[20650]["DialogueText"] = tUpLevelActivity_Text[20650]

--活动时间前
tNpcGossip[20650]["Text1-1"] = {111,112,113,114}
tNpcGossip[20650]["tOption1-1"] = {1}
tNpcGossip[20650]["ChkFunc1-1"] = function ()
	return CommonFunc_GetBeforeActivityTime(tUpLevelActivity_Cont["ActivityTime"])
end

tNpcGossip[20650]["Text1-2"] = {121,112,113,114}
tNpcGossip[20650]["tOption1-2"] = {2}
tNpcGossip[20650]["ChkFunc1-2"] = function ()
	return not User_JudgeLevelAndMetempsychosis(tUpLevelActivity_Cont["Level"],tUpLevelActivity_Cont["Meto"])
end


tNpcGossip[20650]["Text1-3"] = {121,112,114,115}
tNpcGossip[20650]["tOption1-3"] = {3,4}
tNpcGossip[20650]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tUpLevelActivity_Cont["ActivityTime"]) and User_JudgeLevelAndMetempsychosis(tUpLevelActivity_Cont["Level"],tUpLevelActivity_Cont["Meto"])
end
tNpcGossip[20650]["OptionFunc3"] = "UpLevelActivity_ExChange</N>20650" 
tNpcGossip[20650]["OptionFunc4"] = "User_OpenDialog</N>0</N>20650</N>)" 

tNpcGossip[20650]["Text1-4"] = {141}
tNpcGossip[20650]["tOption1-4"] = {6}
tNpcGossip[20650]["ChkFunc1-4"] = function ()
	return CommonFunc_GetAfterActivityTime(tUpLevelActivity_Cont["ActivityTime"]) 
end

tNpcGossip[20650]["Text2-1"] = {211}
tNpcGossip[20650]["tOption2-1"] = {211}

tNpcGossip[20650]["Text2-2"] = {221}
tNpcGossip[20650]["tOption2-2"] = {221}

-------------------------------------物品部分--------------------------------------
tItemFace[3303415] = 629
tItemFace[3303411] = 631
tItemFace[3303412] = 632
tItemFace[3303413] = 633
tItemFace[723017] = 634
tItem[3303414] = tItem[3303414] or {}
tItem[3303414]["Function"] = function(nItemId,sItemName)
	RewardTemplate_UseItemAndMsg(tUpLevelActivity_RewardItem[nItemId])
end

tItem[3303411] = tItem[3303411] or DefaultNpc:new{}
tItem[3303411]["OptionHidden"] = 1
tItem[3303411]["DialogueText"] = tUpLevelActivity_Text[3303411]
tItem[3303411]["Function"] = function (nItemId)
	tUpLevelActivity_UseItem(nItemId,250)
end
tItem[3303411]["Text2-1"] = {211}
tItem[3303411]["tOption2-1"] = {211,212}
tItem[3303411]["OptionFunc212"] = "tUpLevelActivity_Use</N>3303411</N>250" 
tItem[3303411]["Text3-1"] = {311}
tItem[3303411]["tOption3-1"] = {311,312}
tItem[3303411]["OptionFunc312"] = "tUpLevelActivity_Use</N>3303411</N>250" 

tItem[3303412] = tItem[3303412] or DefaultNpc:new{}
tItem[3303412]["OptionHidden"] = 1
tItem[3303412]["DialogueText"] = tUpLevelActivity_Text[3303412]
tItem[3303412]["Function"] = function (nItemId)
	tUpLevelActivity_UseItem(nItemId,300)
end
tItem[3303412]["Text2-1"] = {211}
tItem[3303412]["tOption2-1"] = {211,212}
tItem[3303412]["OptionFunc212"] = "tUpLevelActivity_Use</N>3303412</N>300" 
tItem[3303412]["Text3-1"] = {311}
tItem[3303412]["tOption3-1"] = {311,312}
tItem[3303412]["OptionFunc312"] = "tUpLevelActivity_Use</N>3303412</N>300" 

tItem[3303413] = tItem[3303413] or DefaultNpc:new{}
tItem[3303413]["OptionHidden"] = 1
tItem[3303413]["DialogueText"] = tUpLevelActivity_Text[3303413]
tItem[3303413]["Function"] = function (nItemId)
	tUpLevelActivity_UseItem(nItemId,500)
end
tItem[3303413]["Text2-1"] = {211}
tItem[3303413]["tOption2-1"] = {211,212}
tItem[3303413]["OptionFunc212"] = "tUpLevelActivity_Use</N>3303413</N>500" 
tItem[3303413]["Text3-1"] = {311}
tItem[3303413]["tOption3-1"] = {311,312}
tItem[3303413]["OptionFunc312"] = "tUpLevelActivity_Use</N>3303413</N>500" 
--昆仑雪水lua化
tItem[723017] = tItem[723017] or DefaultNpc:new{}
tItem[723017]["OptionHidden"] = 1
tItem[723017]["DialogueText"] = tUpLevelActivity_Text[723017]
tItem[723017]["Function"] = function (nItemId)
	tUpLevelActivity_UseItem(nItemId,200)
end
tItem[723017]["Text2-1"] = {211}
tItem[723017]["tOption2-1"] = {211,212}
tItem[723017]["OptionFunc212"] = "tUpLevelActivity_Use</N>723017</N>200" 
tItem[723017]["Text3-1"] = {311}
tItem[723017]["tOption3-1"] = {311,312}
tItem[723017]["OptionFunc312"] = "tUpLevelActivity_Use</N>723017</N>200" 