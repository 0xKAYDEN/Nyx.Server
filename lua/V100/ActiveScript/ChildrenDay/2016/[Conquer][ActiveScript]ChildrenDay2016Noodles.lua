------------------------------------------------------------------------------------
--Name:			160316[简体征服][活动脚本]儿童节活动之小浣熊干脆面
--Creator:		刘益辉
--Created:		2016/3/16
------------------------------------------------------------------------------------
--任务需求：

------------------------------------------------------------------------------------
--	命名前缀
--	ChildrenDay2016Noodles
--掩码说明
--掩码说明：
--143,61 领取奖励 1已领奖
--143,62 煮面的步骤 1蒸煮 2捞面 3油炸 4下料 5起锅
--143.63 已领任务 1已领
--143,64 必定失败（执行煮面的步骤如果有一项没到要求必定失败)


local tChildrenDay2016Noodles_Cont = {}
	tChildrenDay2016Noodles_Cont["Level"] = 80
	tChildrenDay2016Noodles_Cont["Metempsychosis"] = 0


local tChildrenDay2016Noodles_Time = {}
	tChildrenDay2016Noodles_Time["BeforeActivity"] = "2017-01-01 00:00 2017-05-31 23:59"
	tChildrenDay2016Noodles_Time["Activity"] = "2017-06-01 00:00 2017-06-07 23:59"



local tChildrenDay2016Noodles_Item = {}
	tChildrenDay2016Noodles_Item[3003823] = {}
	tChildrenDay2016Noodles_Item[3003823]["Pos"] = {}
	tChildrenDay2016Noodles_Item[3003823]["Pos"]["Map"] = 1011
	tChildrenDay2016Noodles_Item[3003823]["Pos"]["PosX"] = 115
	tChildrenDay2016Noodles_Item[3003823]["Pos"]["PosY"] = 445
	
	tChildrenDay2016Noodles_Item[3003824] = {}
	tChildrenDay2016Noodles_Item[3003824]["Pos"] = {}
	tChildrenDay2016Noodles_Item[3003824]["Pos"]["Map"] = 1011
	tChildrenDay2016Noodles_Item[3003824]["Pos"]["PosX"] = 170
	tChildrenDay2016Noodles_Item[3003824]["Pos"]["PosY"] = 490
	
	tChildrenDay2016Noodles_Item[7] = 3003823
	tChildrenDay2016Noodles_Item[2140] = 3003824
	
	tChildrenDay2016Noodles_Item["Com"]={}
	tChildrenDay2016Noodles_Item["Com"][7] = 3003824
	tChildrenDay2016Noodles_Item["Com"][2140] = 3003823
	
local tChildrenDay2016Noodles_Stc = {}
	tChildrenDay2016Noodles_Stc["Rward"] = {} --领取奖励 1已领奖
	tChildrenDay2016Noodles_Stc["Rward"]["Event"] = 143
	tChildrenDay2016Noodles_Stc["Rward"]["Type"] = 61
	tChildrenDay2016Noodles_Stc["Action"] = {} --煮面的步骤 1蒸煮 2捞面 3油炸 4下料 5起锅
	tChildrenDay2016Noodles_Stc["Action"]["Event"] = 143
	tChildrenDay2016Noodles_Stc["Action"]["Type"] = 62
	tChildrenDay2016Noodles_Stc["Rceive"] = {} --已领任务1
	tChildrenDay2016Noodles_Stc["Rceive"]["Event"] = 143
	tChildrenDay2016Noodles_Stc["Rceive"]["Type"] = 63
	tChildrenDay2016Noodles_Stc["Fail"] = {} --必定失败（执行煮面的步骤如果有一项没到要求必定失败)
	tChildrenDay2016Noodles_Stc["Fail"]["Event"] = 143
	tChildrenDay2016Noodles_Stc["Fail"]["Type"] = 64
	
	
local tChildrenDay2016Noodles_Log = {}
	tChildrenDay2016Noodles_Log["Festiaval"] = 3285
	tChildrenDay2016Noodles_Log["LogId"] = 12000336
	tChildrenDay2016Noodles_Log["Begin"] = "0,0,0,0,12000336,1[1],3003822,1"
	tChildrenDay2016Noodles_Log["Finish"] = "0,0,0,0,12000336,1[2],0,0"
	
	tChildrenDay2016Noodles_Log[1] = "0,0,3003823,1,12000336,3,0,0"
	tChildrenDay2016Noodles_Log[2] = "0,0,0,0,12000336,3,3003825,1"
	tChildrenDay2016Noodles_Log[3] = "0,0,3003822[3003825],1[1],12000336,3,0,0"
	tChildrenDay2016Noodles_Log[4] = "0,0,3003824,1,12000336,3,0,0"
	tChildrenDay2016Noodles_Log[5] = "0,0,0,0,12000336,3,3003826,1"
	tChildrenDay2016Noodles_Log[7] = "0,0,0,0,12000336,2,3003823,1"
	tChildrenDay2016Noodles_Log[2140] = "0,0,0,0,12000336,2,3003824,1"
--------------------------公共逻辑------------------------------------------------
--隔天重置掩码
function  ChildrenDay2016Noodles_ResetStc()
	local nEvent = tChildrenDay2016Noodles_Stc["Rward"]["Event"]
	local nType = tChildrenDay2016Noodles_Stc["Rward"]["Type"]
	if Task_ChkStcValue(nEvent,nType,">=",1) then
		if Task_StcInterval(nEvent,nType,1,4) then
			Task_SetStatistic(nEvent,nType,0,1)
			Task_SetStcTimestamp(nEvent,nType,0,0)
		end
	end
end
--煮面步骤掩码
function ChildrenDay2016Noodles_Action(nMethod)
	local nActionEvent = tChildrenDay2016Noodles_Stc["Action"]["Event"]
	local nActionType = tChildrenDay2016Noodles_Stc["Action"]["Type"]
	local nPhase = 0
	if nMethod == nil then
		nPhase = Get_UserStatisticValue(nActionEvent,nActionType)
		return nPhase
	end
	Task_SetStatistic(nActionEvent,nActionType,nMethod,1)
	Task_SetStcTimestamp(nActionEvent,nActionType,0,0)
end


-----------------------------NPC逻辑------------------------------------------------
---我来帮忙
function ChildrenDay2016Noodles_Help(nNpcId)

	--失败、玩家等级不足
	if not User_JudgeLevelAndMetempsychosis(tChildrenDay2016Noodles_Cont["Level"],tChildrenDay2016Noodles_Cont["Metempsychosis"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-2")
		return
	end
	
	--隔天重置
	ChildrenDay2016Noodles_ResetStc()
	
	--失败、当日已完成该任务
	local nRewardEvent = tChildrenDay2016Noodles_Stc["Rward"]["Event"]
	local nRewardType = tChildrenDay2016Noodles_Stc["Rward"]["Type"]
	if Task_ChkStcValue(nRewardEvent,nRewardType,">=",1) or Item_ChkItem(3003826) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	
	
--失败，身上有面
	-- if Item_ChkItem(3003826) then
		-- LinkNpcGossipFunc_New(nNpcId,"2-2")
		-- return
	-- end
	
	--玩家身上的油已被扣除，不能再领
	local nActionEvent = tChildrenDay2016Noodles_Stc["Action"]["Event"]
	local nActionType = tChildrenDay2016Noodles_Stc["Action"]["Type"]
	if Task_ChkStcValue(nActionEvent,nActionType,">=",3) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--失败，身上有油
	if Item_ChkItem(3003822) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
	
	--失败、背包空间不足
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end

	
	--打掩码
	local nRceiveEvent = tChildrenDay2016Noodles_Stc["Rceive"]["Event"]
	local nRceiveType =tChildrenDay2016Noodles_Stc["Rceive"]["Type"]
	Task_SetStatistic(nRceiveEvent,nRceiveType,1,1)
	---成功，添加油
	if not Item_ChkItem(3003822) then
		Item_AddItem(3003822)
	end
	--打log
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log["Begin"])
	LinkNpcGossipFunc_New(nNpcId,"2-5")
end

--领报酬喽！
function ChildrenDay2016Noodles_GetReward(nNpcId)
	--失败、非活动时间
	if not Sys_ChkFullTime(tChildrenDay2016Noodles_Time["Activity"]) then
		return
	end
	--隔天重置
	ChildrenDay2016Noodles_ResetStc()
	--失败、已领取当天奖励
	local nRewardEvent = tChildrenDay2016Noodles_Stc["Rward"]["Event"]
	local nRewardType = tChildrenDay2016Noodles_Stc["Rward"]["Type"]
	if Task_ChkStcValue(nRewardEvent,nRewardType,">=",1) then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	--失败、未接该活动
	local nRceiveEvent = tChildrenDay2016Noodles_Stc["Rceive"]["Event"]
	local nRceiveType =tChildrenDay2016Noodles_Stc["Rceive"]["Type"]
	if Task_ChkStcValue(nRceiveEvent,nRceiveType,"<=",0) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
	--失败、玩家未完成制作干脆面过程
	if not Item_ChkItem(3003826) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	--删除面
	if  Item_ChkItem(3003826) then
		Item_DelItem(3003826)
	end
	--打掩码
	Task_SetStatistic(nRewardEvent,nRewardType,1,1)
	Task_SetStatistic(nRceiveEvent,nRceiveType,0,1)
	Task_SetStcTimestamp(nRewardEvent,nRewardType,0,0)
	--给奖励
	FestivalGeneralPackage_GetGift(tChildrenDay2016Noodles_Log["Festiaval"],tChildrenDay2016Noodles_Log["LogId"])
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log["Finish"])
	User_EffectAdd("self","relive" )

end
--查看规则
function ChildrenDay2016Noodles_ChooseDialog(nNpcId)
	local nActionEvent = tChildrenDay2016Noodles_Stc["Action"]["Event"]
	local nActionType = tChildrenDay2016Noodles_Stc["Action"]["Type"]
	local nNum = Get_UserStatisticValue(nActionEvent,nActionType)
	local sWord = tChildrenDay2016Noodles_Text[nNpcId]["Word"][nNum]
	local sStr = string.format(tChildrenDay2016Noodles_Text[nNpcId]["Text412"],sWord)
	Sys_DialogText(tChildrenDay2016Noodles_Text[nNpcId]["Text411"])
	Sys_DialogText(sStr)
	Sys_DialogText(tChildrenDay2016Noodles_Text[nNpcId]["Text413"])
	Sys_DialogOption(tChildrenDay2016Noodles_Text[nNpcId]["Option411"],"</F>LinkNpcGossipFunc_New</N>10646</S>5-1")
	Sys_DialogEnd()
end
----------------------------------------------大锅----------------------------------------------------
--检测条件
function ChildrenDay2016Noodles_BeforeCook(nNpcId,nIndex)
	--失败、未接该活动
	local nRceiveEvent = tChildrenDay2016Noodles_Stc["Rceive"]["Event"]
	local nRceiveType =tChildrenDay2016Noodles_Stc["Rceive"]["Type"]
	if Task_ChkStcValue(nRceiveEvent,nRceiveType,"<=",0) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return false
	end
	
	
	--失败、玩家已完成该步骤
	if ChildrenDay2016Noodles_Action() > nIndex-1 then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return false
	end
	
	--失败、玩家还未进行上一个步骤
	if ChildrenDay2016Noodles_Action() < nIndex-1 then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return false
	end
	
	--失败、玩家距离上一个步骤超过10分钟
	local nActionEvent = tChildrenDay2016Noodles_Stc["Action"]["Event"]
	local nActionType = tChildrenDay2016Noodles_Stc["Action"]["Type"]
	local nFailEvent = tChildrenDay2016Noodles_Stc["Fail"]["Event"]
	local nFailType = tChildrenDay2016Noodles_Stc["Fail"]["Type"]
	if  nIndex ~=1 and Task_StcInterval(nActionEvent,nActionType,600,0) then
		Task_SetStatistic(nActionEvent,nActionType,0,1)
		Task_SetStatistic(nFailEvent,nFailType,0,1)
		LinkNpcGossipFunc_New(nNpcId,"4-" .. nIndex)
		return false
	end
	
	return true

end
--检测时间
function ChildrenDay2016Noodles_Time()
	--低于1分钟，高于3分钟，打必定失败掩码
	local nActionEvent = tChildrenDay2016Noodles_Stc["Action"]["Event"]
	local nActionType = tChildrenDay2016Noodles_Stc["Action"]["Type"]
	local nFailEvent = tChildrenDay2016Noodles_Stc["Fail"]["Event"]
	local nFailType = tChildrenDay2016Noodles_Stc["Fail"]["Type"]
	if (not Task_StcInterval(nActionEvent,nActionType,60,0))then
		Task_SetStatistic(nFailEvent,nFailType,1,1)
	end
	
	if Task_StcInterval(nActionEvent,nActionType,180,0)  then
		Task_SetStatistic(nFailEvent,nFailType,1,1)
	end
end

--蒸煮。
function ChildrenDay2016Noodles_CookAction1(nNpcId,nIndex)
	---条件判断
	if not ChildrenDay2016Noodles_BeforeCook(nNpcId,nIndex) then
		return
	end
	
	--失败、玩家身上无切丝面条
	if not Item_ChkItem(3003823) then 
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	
	--删除切丝面条
	if Item_ChkItem(3003823) then 
		Item_DelItem(3003823)
	end
	--打掩码
	ChildrenDay2016Noodles_Action(1)
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log[nIndex])
	User_SetTimer(600,"NULL",1)
	LinkNpcGossipFunc_New(nNpcId,"3-" .. nIndex)
end

--捞面。
function ChildrenDay2016Noodles_CookAction2(nNpcId,nIndex)
	---条件判断
	if not ChildrenDay2016Noodles_BeforeCook(nNpcId,nIndex) then
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	
	--低于1分钟，高于3分钟，打必定失败掩码
	ChildrenDay2016Noodles_Time()
	
	--打掩码
	ChildrenDay2016Noodles_Action(2)
	Item_AddItem(3003825)
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log[nIndex])
	User_SetTimer(600,"NULL",1)
	LinkNpcGossipFunc_New(nNpcId,"3-" .. nIndex)
end

--油炸。
function ChildrenDay2016Noodles_CookAction3(nNpcId,nIndex)
	---条件判断
	if not ChildrenDay2016Noodles_BeforeCook(nNpcId,nIndex) then
		return
	end
	
	--失败、玩家身上捞干面条和油
	if not (Item_ChkItem(3003822) and Item_ChkItem(3003825)) then 
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end
	
	--删除玩家身上捞干面条和油
	if Item_ChkItem(3003822) then 
		Item_DelItem(3003822)
	end
	if Item_ChkItem(3003825) then
		Item_DelItem(3003825)
	end
	
	--打掩码
	ChildrenDay2016Noodles_Action(3)
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log[nIndex])
	User_SetTimer(600,"NULL",1)
	LinkNpcGossipFunc_New(nNpcId,"3-" .. nIndex)
end

---下料。
function ChildrenDay2016Noodles_CookAction4(nNpcId,nIndex)
	---条件判断
	if not ChildrenDay2016Noodles_BeforeCook(nNpcId,nIndex) then
		return
	end
	
	--失败、玩家身上无调料
	if not Item_ChkItem(3003824) then 
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	--使用调味料对白
	LinkNpcGossipFunc_New(nNpcId,"2-8")
end

--使用调味料
function ChildrenDay2016Noodles_UseSeasoner(nNpcId,nNum)
	---条件判断
	if not ChildrenDay2016Noodles_BeforeCook(nNpcId,4) then
		return
	end
	
	--失败、玩家身上无调料
	if not Item_ChkItem(3003824) then 
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end
	
	--删除调料
	if Item_ChkItem(3003824) then 
		Item_DelItem(3003824)
	end
	
	--倒入半勺或者两勺必定失败
	if nNum == 1 then
		Task_SetStatistic(tChildrenDay2016Noodles_Stc["Fail"]["Event"],tChildrenDay2016Noodles_Stc["Fail"]["Type"],1,1)
	end
	
	--低于1分钟，高于3分钟，打必定失败掩码
	ChildrenDay2016Noodles_Time()
	
	--打掩码
	ChildrenDay2016Noodles_Action(4)
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log[4])
	User_SetTimer(600,"NULL",1)
	LinkNpcGossipFunc_New(nNpcId,"3-4")
end

--起锅。
function ChildrenDay2016Noodles_CookAction5(nNpcId,nIndex)
	---条件判断
	if not ChildrenDay2016Noodles_BeforeCook(nNpcId,nIndex) then
		return
	end
	local nActionEvent = tChildrenDay2016Noodles_Stc["Action"]["Event"]
	local nActionType = tChildrenDay2016Noodles_Stc["Action"]["Type"]
	local nFailEvent =tChildrenDay2016Noodles_Stc["Fail"]["Event"]
	local nFailType = tChildrenDay2016Noodles_Stc["Fail"]["Type"]
	
	--操作失败
	if Task_ChkStcValue(nFailEvent,nFailType,">=",1) then
		Task_SetStatistic(nFailEvent,nFailType,0,1)
		Task_SetStatistic(nActionEvent,nActionType,0,1)
		User_SetTimer(1,"NULL",1)
		local nNum = math.random(1,2)
		LinkNpcGossipFunc_New(nNpcId,"5-" .. nNum)
		return
	end
	
	--判断背包空间
	if not User_CheckLeftSpace(1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
	Task_SetStatistic(nActionEvent,nActionType,0,1)
	User_SetTimer(1,"NULL",1)
	---给面
	if not Item_ChkItem(3003826) then
		Item_AddItem(3003826)
	end
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log[nIndex])
	LinkNpcGossipFunc_New(nNpcId,"3-" .. nIndex)
end


--------------------------------物品逻辑--------------------------------------------------------
function ChildrenDay2016Noodles_UseItem(nItemId)
	--物品过期失效
	if not Sys_ChkFullTime(tChildrenDay2016Noodles_Time["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tChildrenDay2016Noodles_Text["Item_AftUse"])
			return
		end
	end
	--寻路
	local nMapId = tChildrenDay2016Noodles_Item[nItemId]["Pos"]["Map"]
	local nPosX = tChildrenDay2016Noodles_Item[nItemId]["Pos"]["PosX"]
	local nPosY = tChildrenDay2016Noodles_Item[nItemId]["Pos"]["PosY"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,0)
end
function ChildrenDay2016Noodles_FindWay()
	User_UserRandBoundTrans(1002,287,381,5,5,1)
end
----------------------------------------怪物掉落逻辑------------------------------------------
function ChildrenDay2016Noodles_KillMonster(nMonsterId)
	--非活动时间
	if not Sys_ChkFullTime(tChildrenDay2016Noodles_Time["Activity"]) then
		return
	end
	--无油
	if not Item_ChkItem(3003822) then
		return
	end
	--有任务物品
	local nItemId = tChildrenDay2016Noodles_Item[nMonsterId]
	local nComItemId = tChildrenDay2016Noodles_Item["Com"][nMonsterId]
	if Item_ChkItem(nItemId) then
		return
	end
	--背包满
	if not User_CheckLeftSpace(1) then
		User_TalkChannel2005(tChildrenDay2016Noodles_Text["BagFull"])
		return
	end
	--添加任务物品
	Item_AddItem(nItemId)
	
	if Item_ChkItem(nItemId) and Item_ChkItem(nComItemId) then
		--User_UserRandBoundTrans(1002,287,381,5,5,1)
	local sShowText = tChildrenDay2016Noodles_Text["FindWay"]
		Sys_MsgBox(sShowText,"ChildrenDay2016Noodles_FindWay")
	end
	--提示
	User_TalkChannel2005(tChildrenDay2016Noodles_Text[nMonsterId])
	--log
	Sys_SaveActionFestivalLog(tChildrenDay2016Noodles_Log[nMonsterId])

end



-------------------------NPC模块----------------------------------------------
tNpcFace[3021] = 55
tNpcGossip[10646] = tNpcGossip[10646] or DefaultNpc:new{}
tNpcGossip[10646]["OptionHidden"] = 1

--活动时间前
tNpcGossip[10646]["Text1-1"] = {111,112,113,114,115}
tNpcGossip[10646]["Text111"] = tChildrenDay2016Noodles_Text[10646]["Text111"]
tNpcGossip[10646]["Text112"] = tChildrenDay2016Noodles_Text[10646]["Text112"]
tNpcGossip[10646]["Text113"] = tChildrenDay2016Noodles_Text[10646]["Text113"]
tNpcGossip[10646]["Text114"] = tChildrenDay2016Noodles_Text[10646]["Text114"]
tNpcGossip[10646]["Text115"] = tChildrenDay2016Noodles_Text[10646]["Text115"]
tNpcGossip[10646]["tOption1-1"] = {111}
tNpcGossip[10646]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tChildrenDay2016Noodles_Time["BeforeActivity"])
end
--有道理
tNpcGossip[10646]["Option111"] = tChildrenDay2016Noodles_Text[10646]["Option111"]

--活动时间内，等级不满足
tNpcGossip[10646]["Text1-2"] = {121,122}
tNpcGossip[10646]["Text121"] = tChildrenDay2016Noodles_Text[10646]["Text121"]
tNpcGossip[10646]["Text122"] = tChildrenDay2016Noodles_Text[10646]["Text122"]
tNpcGossip[10646]["tOption1-2"] = {121}
tNpcGossip[10646]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tChildrenDay2016Noodles_Time["Activity"]) and (not User_JudgeLevelAndMetempsychosis(tChildrenDay2016Noodles_Cont["Level"],tChildrenDay2016Noodles_Cont["Metempsychosis"]))
end

tNpcGossip[10646]["Option121"] = tChildrenDay2016Noodles_Text[10646]["Option121"]


--活动时间内，等级满足
tNpcGossip[10646]["Text1-3"] = {131,132,133,134}
tNpcGossip[10646]["Text131"] = tChildrenDay2016Noodles_Text[10646]["Text131"]
tNpcGossip[10646]["Text132"] = tChildrenDay2016Noodles_Text[10646]["Text132"]
tNpcGossip[10646]["Text133"] = tChildrenDay2016Noodles_Text[10646]["Text133"]
tNpcGossip[10646]["Text134"] = tChildrenDay2016Noodles_Text[10646]["Text134"]
tNpcGossip[10646]["tOption1-3"] = {131,132,133,134}
tNpcGossip[10646]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tChildrenDay2016Noodles_Time["Activity"])
end

--我要帮忙！
tNpcGossip[10646]["Option131"] = tChildrenDay2016Noodles_Text[10646]["Option131"]
tNpcGossip[10646]["OptionFunc131"] = "ChildrenDay2016Noodles_Help</N>10646"
--领报酬喽！
tNpcGossip[10646]["Option132"] = tChildrenDay2016Noodles_Text[10646]["Option132"]
tNpcGossip[10646]["OptionFunc132"] = "ChildrenDay2016Noodles_GetReward</N>10646"
--查看制作流程。
tNpcGossip[10646]["Option133"] = tChildrenDay2016Noodles_Text[10646]["Option133"]
tNpcGossip[10646]["OptionFunc133"] = "ChildrenDay2016Noodles_ChooseDialog</N>10646"
--我只会围观点赞。
tNpcGossip[10646]["Option134"] = tChildrenDay2016Noodles_Text[10646]["Option134"]

--活动时间后
tNpcGossip[10646]["Text1-4"] = {141}
tNpcGossip[10646]["Text141"] = tChildrenDay2016Noodles_Text[10646]["Text141"]
tNpcGossip[10646]["tOption1-4"] = {141}
--再见！
tNpcGossip[10646]["Option141"] = tChildrenDay2016Noodles_Text[10646]["Option141"]


--失败、背包空间不足
tNpcGossip[10646]["Text2-1"] = {211}
tNpcGossip[10646]["Text211"] = tChildrenDay2016Noodles_Text[10646]["Text211"]
tNpcGossip[10646]["tOption2-1"] = {211}
tNpcGossip[10646]["Option211"] = tChildrenDay2016Noodles_Text[10646]["Option211"]
--失败、当日已完成该任务
tNpcGossip[10646]["Text2-2"] = {221}
tNpcGossip[10646]["Text221"] = tChildrenDay2016Noodles_Text[10646]["Text221"]
tNpcGossip[10646]["tOption2-2"] = {221}
tNpcGossip[10646]["Option221"] = tChildrenDay2016Noodles_Text[10646]["Option221"]
--玩家身上的油已被扣除，不能再领
tNpcGossip[10646]["Text2-3"] = {231}
tNpcGossip[10646]["Text231"] = tChildrenDay2016Noodles_Text[10646]["Text231"]
tNpcGossip[10646]["tOption2-3"] = {231}
tNpcGossip[10646]["Option231"] = tChildrenDay2016Noodles_Text[10646]["Option231"]
---失败，身上有油
tNpcGossip[10646]["Text2-4"] = {241,242}
tNpcGossip[10646]["Text241"] = tChildrenDay2016Noodles_Text[10646]["Text241"]
tNpcGossip[10646]["Text242"] = tChildrenDay2016Noodles_Text[10646]["Text242"]
tNpcGossip[10646]["tOption2-4"] = {241,242,243}
	--我要去找切丝面条。
tNpcGossip[10646]["Option241"] = tChildrenDay2016Noodles_Text[10646]["Option241"]
tNpcGossip[10646]["OptionFunc241"] = "ChildrenDay2016Noodles_UseItem</N>3003824"
	--我要去找秘制调料。
tNpcGossip[10646]["Option242"] = tChildrenDay2016Noodles_Text[10646]["Option242"]
tNpcGossip[10646]["OptionFunc242"] = "ChildrenDay2016Noodles_UseItem</N>3003823"
	--恩，知道了
tNpcGossip[10646]["Option243"] = tChildrenDay2016Noodles_Text[10646]["Option243"]
--成功，添加油
tNpcGossip[10646]["Text2-5"] = {251,252}
tNpcGossip[10646]["Text251"] = tChildrenDay2016Noodles_Text[10646]["Text251"]
tNpcGossip[10646]["Text252"] = tChildrenDay2016Noodles_Text[10646]["Text252"]
tNpcGossip[10646]["tOption2-5"] = {241,242,243}

--失败、已领取当天奖励
tNpcGossip[10646]["Text3-1"] = {311}
tNpcGossip[10646]["Text311"] = tChildrenDay2016Noodles_Text[10646]["Text311"]
tNpcGossip[10646]["tOption3-1"] = {311}
tNpcGossip[10646]["Option311"] = tChildrenDay2016Noodles_Text[10646]["Option311"]
--失败、玩家未完成制作干脆面过程
tNpcGossip[10646]["Text3-2"] = {321}
tNpcGossip[10646]["Text321"] = tChildrenDay2016Noodles_Text[10646]["Text321"]
tNpcGossip[10646]["tOption3-2"] = {321}
tNpcGossip[10646]["Option321"] = tChildrenDay2016Noodles_Text[10646]["Option321"]
--失败、未接该活动
tNpcGossip[10646]["Text3-3"] = {331}
tNpcGossip[10646]["Text331"] = tChildrenDay2016Noodles_Text[10646]["Text331"]
tNpcGossip[10646]["tOption3-3"] = {331}
tNpcGossip[10646]["Option331"] = tChildrenDay2016Noodles_Text[10646]["Option331"]



--查看规则

--接然后呢
tNpcGossip[10646]["Text5-1"] = {511,512,513}
tNpcGossip[10646]["Text511"] = tChildrenDay2016Noodles_Text[10646]["Text511"]
tNpcGossip[10646]["Text512"] = tChildrenDay2016Noodles_Text[10646]["Text512"]
tNpcGossip[10646]["Text513"] = tChildrenDay2016Noodles_Text[10646]["Text513"]
tNpcGossip[10646]["tOption5-1"] = {511}
tNpcGossip[10646]["Option511"] = tChildrenDay2016Noodles_Text[10646]["Option511"]

--------大锅
tNpcFace[3022] = 574
tNpcGossip[10647] = tNpcGossip[10647] or DefaultNpc:new{}
tNpcGossip[10647]["OptionHidden"] = 1


--活动时间内
tNpcGossip[10647]["Text1-1"] = {111}
tNpcGossip[10647]["Text111"] = tChildrenDay2016Noodles_Text[10647]["Text111"]
tNpcGossip[10647]["tOption1-1"] = {111,112,113,114,115,116}
tNpcGossip[10647]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tChildrenDay2016Noodles_Time["Activity"])
end

tNpcGossip[10647]["Option111"] = tChildrenDay2016Noodles_Text[10647]["Option111"]
tNpcGossip[10647]["OptionFunc111"] = "ChildrenDay2016Noodles_CookAction1</N>10647</N>1"
tNpcGossip[10647]["Option112"] = tChildrenDay2016Noodles_Text[10647]["Option112"]
tNpcGossip[10647]["OptionFunc112"] = "ChildrenDay2016Noodles_CookAction2</N>10647</N>2"
tNpcGossip[10647]["Option113"] = tChildrenDay2016Noodles_Text[10647]["Option113"]
tNpcGossip[10647]["OptionFunc113"] = "ChildrenDay2016Noodles_CookAction3</N>10647</N>3"
tNpcGossip[10647]["Option114"] = tChildrenDay2016Noodles_Text[10647]["Option114"]
tNpcGossip[10647]["OptionFunc114"] = "ChildrenDay2016Noodles_CookAction4</N>10647</N>4"
tNpcGossip[10647]["Option115"] = tChildrenDay2016Noodles_Text[10647]["Option115"]
tNpcGossip[10647]["OptionFunc115"] = "ChildrenDay2016Noodles_CookAction5</N>10647</N>5"
tNpcGossip[10647]["Option116"] = tChildrenDay2016Noodles_Text[10647]["Option116"]

--活动时间外
tNpcGossip[10647]["Text1-2"] = {121}
tNpcGossip[10647]["Text121"] = tChildrenDay2016Noodles_Text[10647]["Text121"]
tNpcGossip[10647]["tOption1-2"] = {121}
tNpcGossip[10647]["Option121"] = tChildrenDay2016Noodles_Text[10647]["Option121"]


--失败、玩家已完成该步骤
tNpcGossip[10647]["Text2-1"] = {211}
tNpcGossip[10647]["Text211"] = tChildrenDay2016Noodles_Text[10647]["Text211"]
tNpcGossip[10647]["tOption2-1"] = {211}
tNpcGossip[10647]["Option211"] = tChildrenDay2016Noodles_Text[10647]["Option211"]
--失败、玩家未接该任务
tNpcGossip[10647]["Text2-2"] = {221}
tNpcGossip[10647]["Text221"] = tChildrenDay2016Noodles_Text[10647]["Text221"]
tNpcGossip[10647]["tOption2-2"] = {211}
--失败、玩家身上无切丝面条
tNpcGossip[10647]["Text2-3"] = {231}
tNpcGossip[10647]["Text231"] = tChildrenDay2016Noodles_Text[10647]["Text231"]
tNpcGossip[10647]["tOption2-3"] = {211}
--失败、玩家还未进行上一个步骤
tNpcGossip[10647]["Text2-4"] = {241,242}
tNpcGossip[10647]["Text241"] = tChildrenDay2016Noodles_Text[10647]["Text241"]
tNpcGossip[10647]["Text242"] = tChildrenDay2016Noodles_Text[10647]["Text242"]
tNpcGossip[10647]["tOption2-4"] = {211}
--失败、玩家背包满
tNpcGossip[10647]["Text2-5"] = {251}
tNpcGossip[10647]["Text251"] = tChildrenDay2016Noodles_Text[10647]["Text251"]
tNpcGossip[10647]["tOption2-5"] = {251}
tNpcGossip[10647]["Option251"] = tChildrenDay2016Noodles_Text[10647]["Option251"]
--失败、玩家身上无油和捞干面条
tNpcGossip[10647]["Text2-6"] = {261,262}
tNpcGossip[10647]["Text261"] = tChildrenDay2016Noodles_Text[10647]["Text261"]
tNpcGossip[10647]["Text262"] = tChildrenDay2016Noodles_Text[10647]["Text262"]
tNpcGossip[10647]["tOption2-6"] = {211}
--失败、玩家身上无调料
tNpcGossip[10647]["Text2-7"] = {271}
tNpcGossip[10647]["Text271"] = tChildrenDay2016Noodles_Text[10647]["Text271"]
tNpcGossip[10647]["tOption2-7"] = {211}
--玩家身上有调料
tNpcGossip[10647]["Text2-8"] = {281}
tNpcGossip[10647]["Text281"] = tChildrenDay2016Noodles_Text[10647]["Text281"]
tNpcGossip[10647]["tOption2-8"] = {281,282,283,284}
tNpcGossip[10647]["Option281"] = tChildrenDay2016Noodles_Text[10647]["Option281"]
tNpcGossip[10647]["OptionFunc281"] = "ChildrenDay2016Noodles_UseSeasoner</N>10647</N>1"
tNpcGossip[10647]["Option282"] = tChildrenDay2016Noodles_Text[10647]["Option282"]
tNpcGossip[10647]["OptionFunc282"] = "ChildrenDay2016Noodles_UseSeasoner</N>10647</N>2"
tNpcGossip[10647]["Option283"] = tChildrenDay2016Noodles_Text[10647]["Option283"]
tNpcGossip[10647]["OptionFunc283"] = "ChildrenDay2016Noodles_UseSeasoner</N>10647</N>1"
tNpcGossip[10647]["Option284"] = tChildrenDay2016Noodles_Text[10647]["Option284"]


--蒸煮。成功
tNpcGossip[10647]["Text3-1"] = {311,312}
tNpcGossip[10647]["Text311"] = tChildrenDay2016Noodles_Text[10647]["Text311"]
tNpcGossip[10647]["Text312"] = tChildrenDay2016Noodles_Text[10647]["Text312"]
tNpcGossip[10647]["tOption3-1"] = {211}
--捞面。成功
tNpcGossip[10647]["Text3-2"] = {321,322}
tNpcGossip[10647]["Text321"] = tChildrenDay2016Noodles_Text[10647]["Text321"]
tNpcGossip[10647]["Text322"] = tChildrenDay2016Noodles_Text[10647]["Text322"]
tNpcGossip[10647]["tOption3-2"] = {211}
--油炸。成功
tNpcGossip[10647]["Text3-3"] = {331,332}
tNpcGossip[10647]["Text331"] = tChildrenDay2016Noodles_Text[10647]["Text331"]
tNpcGossip[10647]["Text332"] = tChildrenDay2016Noodles_Text[10647]["Text332"]
tNpcGossip[10647]["tOption3-3"] = {211}
--下料。成功
tNpcGossip[10647]["Text3-4"] = {341,342}
tNpcGossip[10647]["Text341"] = tChildrenDay2016Noodles_Text[10647]["Text341"]
tNpcGossip[10647]["Text342"] = tChildrenDay2016Noodles_Text[10647]["Text342"]
tNpcGossip[10647]["tOption3-4"] = {341}
tNpcGossip[10647]["Option341"] = tChildrenDay2016Noodles_Text[10647]["Option341"]
--起锅。成功
tNpcGossip[10647]["Text3-5"] = {351,352}
tNpcGossip[10647]["Text351"] = tChildrenDay2016Noodles_Text[10647]["Text351"]
tNpcGossip[10647]["Text352"] = tChildrenDay2016Noodles_Text[10647]["Text352"]
tNpcGossip[10647]["tOption3-5"] = {351}
tNpcGossip[10647]["Option351"] = tChildrenDay2016Noodles_Text[10647]["Option351"]

--失败、玩家距离上一个步骤超过10分钟
tNpcGossip[10647]["Text4-1"] = {411}
tNpcGossip[10647]["Text411"] = tChildrenDay2016Noodles_Text[10647]["Text411"]
tNpcGossip[10647]["tOption4-1"] = {411}
tNpcGossip[10647]["Option411"] = tChildrenDay2016Noodles_Text[10647]["Option411"]

--失败、玩家距离上一个步骤超过10分钟
tNpcGossip[10647]["Text4-2"] = {421}
tNpcGossip[10647]["Text421"] = tChildrenDay2016Noodles_Text[10647]["Text421"]
tNpcGossip[10647]["tOption4-2"] = {411}

tNpcGossip[10647]["Text4-3"] = {431}
tNpcGossip[10647]["Text431"] = tChildrenDay2016Noodles_Text[10647]["Text431"]
tNpcGossip[10647]["tOption4-3"] = {411}

tNpcGossip[10647]["Text4-4"] = {441}
tNpcGossip[10647]["Text441"] = tChildrenDay2016Noodles_Text[10647]["Text441"]
tNpcGossip[10647]["tOption4-4"] = {411}

--失败对白
tNpcGossip[10647]["Text5-1"] = {511,512}
tNpcGossip[10647]["Text511"] = tChildrenDay2016Noodles_Text[10647]["Text511"]
tNpcGossip[10647]["Text512"] = tChildrenDay2016Noodles_Text[10647]["Text512"]
tNpcGossip[10647]["tOption5-1"] = {511}
tNpcGossip[10647]["Option511"] = tChildrenDay2016Noodles_Text[10647]["Option511"]

tNpcGossip[10647]["Text5-2"] = {521,522}
tNpcGossip[10647]["Text521"] = tChildrenDay2016Noodles_Text[10647]["Text521"]
tNpcGossip[10647]["Text522"] = tChildrenDay2016Noodles_Text[10647]["Text522"]
tNpcGossip[10647]["tOption5-2"] = {511}
--------------------------------- 物品模块---------------------------------------
--切丝面条
tItem[3003823] = tItem[3003823] or {}
tItem[3003823]["Function"] = function(nItemId,sItemName)
	ChildrenDay2016Noodles_UseItem(nItemId)
end
--秘制调料
tItem[3003824] = tItem[3003823]
--------------------------------------------------------------------------怪物掉落----------------------------------------------------
-- local tChildrenDay2016Noodles_KillMonster = {}
-- tChildrenDay2016Noodles_KillMonster["ActivityTime"] = tChildrenDay2016Noodles_Time["Activity"]
-- tChildrenDay2016Noodles_KillMonster["Function"]	= ChildrenDay2016Noodles_KillMonster
-- tChildrenDay2016Noodles_KillMonster["MonsterId"] = {7,2140}
 -- table.insert(tMonsterDrop_AreaLoad,tChildrenDay2016Noodles_KillMonster)