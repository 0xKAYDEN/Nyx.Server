------------------------------------------------------------------------------------
--Name:		151029[简体征服][活动脚本]2016春节活动之来把旧桃作新符(2.03-2.07)
--Purpose:		2016春节活动之来把旧桃作新符
--Creator:		许乐
--Created:		2015/10/29
------------------------------------------------------------------------------------
-- 前缀
-- SpringFestival_OldPeach_
-----------------------------------------------------------
-- #任务需求 
-- #【简体征服】2016春节活动制作
-- #复用2015年春节
-- #活动时间：2016年2月3日-2016年2月22日
-- #=============
-- #2、过小年（2.03—2.07）
-- #f、来把旧桃作新符——杀怪（wyx）--许乐制作
-----------------------------------------------------------
--掩码说明：
--stc(138,94) 	==1 表示接到任务  
--						==2 表示使用桃符，完成任务  
-- 					==3 表示领取奖励
-----------------------------------------------------------
--npcid:			17307-17310
--itemtypeid:		3007646-3007647  3007983
--npctype:			3358-3361
--logid:				12000243
--stc:				13894
---------------------------------------------------------------
local tSpringFestival_OldPeach_Cont = {}
	tSpringFestival_OldPeach_Cont["BeforeActivity"] = "2016-10-27 00:00 2017-01-22 23:59"
	tSpringFestival_OldPeach_Cont["Activity"] = "2017-01-23 00:00 2017-01-27 23:59"
	
	-- tSpringFestival_OldPeach_Cont["BeforeActivity"] = "2015-10-27 00:00 2015-12-02 23:59"
	-- tSpringFestival_OldPeach_Cont["Activity"] = "2015-12-03 00:00 2016-02-07 23:59"

	--玩家等级要求
	tSpringFestival_OldPeach_Cont["Metempsychosis"] = 0
	tSpringFestival_OldPeach_Cont["Level"] = 80
	--读条3s
	tSpringFestival_OldPeach_Cont["Second"] = 3		--读条3s
	tSpringFestival_OldPeach_Cont["Action"] = 220		--读条action
	
local tSpringFestival_OldPeach_Npc = {}
	-- 17307  桃符仙师
	tSpringFestival_OldPeach_Npc[17307] = {}
	tSpringFestival_OldPeach_Npc[17307]["CellX"] = 289
	tSpringFestival_OldPeach_Npc[17307]["CellY"] = 382
	tSpringFestival_OldPeach_Npc[17307]["MapId"] = 1002
	tSpringFestival_OldPeach_Npc[17307]["NpcId"] = 17307
	--其中一个桃树  取桃木
	tSpringFestival_OldPeach_Npc[17309] = {}
	tSpringFestival_OldPeach_Npc[17309]["CellX"] = 422
	tSpringFestival_OldPeach_Npc[17309]["CellY"] = 668
	tSpringFestival_OldPeach_Npc[17309]["MapId"] = 1002
	tSpringFestival_OldPeach_Npc[17309]["NpcId"] = 17309
	--蹑空鬼斧王  取赤华精血
	tSpringFestival_OldPeach_Npc[5] = {}
	tSpringFestival_OldPeach_Npc[5]["CellX"] = 76
	tSpringFestival_OldPeach_Npc[5]["CellY"] = 274
	tSpringFestival_OldPeach_Npc[5]["MapId"] = 1002
	tSpringFestival_OldPeach_Npc["BoundCX"] = 5
	tSpringFestival_OldPeach_Npc["BoundCY"] = 5
	
local tSpringFestival_OldPeach_Stc = {}
	--stc(138,94) ==1 表示接到任务  ==2 表示使用桃符，完成任务  ==3 表示领取奖励
	tSpringFestival_OldPeach_Stc["EventType"] = 138
	tSpringFestival_OldPeach_Stc["DataType"] = 94
	tSpringFestival_OldPeach_Stc["GetTask"] = 1
	tSpringFestival_OldPeach_Stc["UsePeach"] = 2
	tSpringFestival_OldPeach_Stc["Complete"] = 3
	tSpringFestival_OldPeach_Stc["FiveSec"] = 5       --采集桃木间隔时间限制  5s
	
local tSpringFestival_OldPeach_Item = {}
	tSpringFestival_OldPeach_Item["BagSpace"] = 1
	tSpringFestival_OldPeach_Item["AddBless"] = 1
	tSpringFestival_OldPeach_Item["Num1"] = 5
	tSpringFestival_OldPeach_Item["Num2"] = 10
	tSpringFestival_OldPeach_Item[3007646] = 3007646		--桃符
	tSpringFestival_OldPeach_Item[3007647] = 3007647		--桃木
	tSpringFestival_OldPeach_Item[3007983] = 3007983		--赤华精血
	
	--采集桃木，随机获得某个数量的桃木
	tSpringFestival_OldPeach_Item["Peach"] = {}
	tSpringFestival_OldPeach_Item["Peach"][1] = {}
	tSpringFestival_OldPeach_Item["Peach"][1]["ItemChanceSum"] = 10000
	-- 85%获得1个桃木
	tSpringFestival_OldPeach_Item["Peach"][1][1] = {}
	tSpringFestival_OldPeach_Item["Peach"][1][1]["RandomItemChanceType"] = 2
	tSpringFestival_OldPeach_Item["Peach"][1][1]["ItemChance"] = 8500
	tSpringFestival_OldPeach_Item["Peach"][1][1]["Item_1"] = 3007647
	tSpringFestival_OldPeach_Item["Peach"][1][1]["ItemAttr"] = "0 1"
	tSpringFestival_OldPeach_Item["Peach"][1][1]["Log"] = "0,0,0,0,12000243,1[2],3007647,1"
	-- 10%获得2个桃木
	tSpringFestival_OldPeach_Item["Peach"][1][2] = {}
	tSpringFestival_OldPeach_Item["Peach"][1][2]["RandomItemChanceType"] = 2
	tSpringFestival_OldPeach_Item["Peach"][1][2]["ItemChance"] = 1000
	tSpringFestival_OldPeach_Item["Peach"][1][2]["Item_1"] = 3007647
	tSpringFestival_OldPeach_Item["Peach"][1][2]["ItemAttr"] = "0 2"
	tSpringFestival_OldPeach_Item["Peach"][1][2]["Log"] = "0,0,0,0,12000243,1[2],3007647,2"
	-- 5%获得3个桃木
	tSpringFestival_OldPeach_Item["Peach"][1][3] = {}
	tSpringFestival_OldPeach_Item["Peach"][1][3]["RandomItemChanceType"] = 2
	tSpringFestival_OldPeach_Item["Peach"][1][3]["ItemChance"] = 500
	tSpringFestival_OldPeach_Item["Peach"][1][3]["Item_1"] = 3007647
	tSpringFestival_OldPeach_Item["Peach"][1][3]["ItemAttr"] = "0 3"
	tSpringFestival_OldPeach_Item["Peach"][1][3]["Log"] = "0,0,0,0,12000243,1[2],3007647,3"
	
local tSpringFestival_OldPeach_Effect = {}
	tSpringFestival_OldPeach_Effect[1] = "self"
	tSpringFestival_OldPeach_Effect[2] = "dispel"    --祝福光效

local tSpringFestival_OldPeach_Log = {}
	tSpringFestival_OldPeach_Log["DelItem"] = "0,0,%d,1,12000243,2,0,0"			--过期删除物品
	tSpringFestival_OldPeach_Log["GetItem"] = "0,0,3007647[3007983],5[10],12000243,1[3],3007646,1"		--获得桃符
	tSpringFestival_OldPeach_Log["GetTask"] = "0,0,0,0,12000243,1[1],0,0"		--接任务
	tSpringFestival_OldPeach_Log["GetBless"] = "0,0,3007646,1,12000243,1[2],5,1"		--使用桃符获得祝福
	tSpringFestival_OldPeach_Log["GetBlood"] = "0,0,0,0,12000243,1[2],3007983,1"	--获得赤华精血
	tSpringFestival_OldPeach_Log["LogId"] = 12000243
	tSpringFestival_OldPeach_Log["FestivalId"] = 3364

------------------------------------------------逻辑部分-------------------------------------------------
--玩家等级判断
function SpringFestival_OldPeach_LevelJudgement()
	local nLevel = tSpringFestival_OldPeach_Cont["Level"]
	local nMete = tSpringFestival_OldPeach_Cont["Metempsychosis"]
	if User_JudgeLevelAndMetempsychosis(nLevel,nMete) then
		return true
	else
		return false
	end
end

--寻路到桃树林 取桃木
function SpringFestival_OldPeach_ToGetPeach()
	local nPosX = tSpringFestival_OldPeach_Npc[17309]["CellX"]
	local nPosY = tSpringFestival_OldPeach_Npc[17309]["CellY"]
	local nMapId = tSpringFestival_OldPeach_Npc[17309]["MapId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

--寻路到怪物 取赤华精血
function SpringFestival_OldPeach_GetBlood()
	local nPosX = tSpringFestival_OldPeach_Npc[5]["CellX"]
	local nPosY = tSpringFestival_OldPeach_Npc[5]["CellY"]
	local nMapId = tSpringFestival_OldPeach_Npc[5]["MapId"]
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId)
end

--传送至桃符仙师处  制作桃符
function SpringFestival_OldPeach_MakePeach()
	local nMapId = tSpringFestival_OldPeach_Npc[17307]["MapId"]
	local nBoundX = tSpringFestival_OldPeach_Npc[17307]["CellX"]
	local nBoundY = tSpringFestival_OldPeach_Npc[17307]["CellY"]
	local nBoundCX = tSpringFestival_OldPeach_Npc["BoundCX"]
	local nBoundCY = tSpringFestival_OldPeach_Npc["BoundCY"]
	User_UserRandBoundTrans(nMapId,nBoundX,nBoundY,nBoundCX,nBoundCY,1,0)
end

--接3：我要学
function SpringFestival_OldPeach_Learn(nNpcId)
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not SpringFestival_OldPeach_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"3-1")
		return
	end
	
	local nItemId = tSpringFestival_OldPeach_Item[3007646]
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nData1 = tSpringFestival_OldPeach_Stc["GetTask"]
	local nData2 = tSpringFestival_OldPeach_Stc["UsePeach"]
	local nComplete = tSpringFestival_OldPeach_Stc["Complete"]
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then	--已领奖
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",0) then		--未接任务
		Task_SetStatistic(nEvent,nType,nData1,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
		Sys_SaveActionFestivalLog(tSpringFestival_OldPeach_Log["GetTask"])
		LinkNpcGossipFunc_New(nNpcId,"3-6")
	elseif Task_ChkStcValue(nEvent,nType,"==",nData1) then	--已接任务
		--判断身上有无桃符
		if Item_ChkItem(nItemId) then
			LinkNpcGossipFunc_New(nNpcId,"3-4")
			return
		end
		LinkNpcGossipFunc_New(nNpcId,"3-5")
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",nData2) then	--完成任务，未领奖
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
end

--接4：材料备齐，请教我吧
function SpringFestival_OldPeach_Teach(nNpcId)
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not SpringFestival_OldPeach_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"4-1")
		return
	end

	local nItemId = tSpringFestival_OldPeach_Item[3007646]
	local nItemId_1 = tSpringFestival_OldPeach_Item[3007647]
	local nItemId_2 = tSpringFestival_OldPeach_Item[3007983]
	local nNum_1 = tSpringFestival_OldPeach_Item["Num1"]
	local nNum_2 = tSpringFestival_OldPeach_Item["Num2"]
	
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nData1 = tSpringFestival_OldPeach_Stc["GetTask"]
	local nData2 = tSpringFestival_OldPeach_Stc["UsePeach"]
	local nComplete = tSpringFestival_OldPeach_Stc["Complete"]
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then	--已领奖
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",0) then		--未接任务
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",nData1) then	--已接任务
		--已有桃符
		if Item_ChkItem(nItemId) then
			LinkNpcGossipFunc_New(nNpcId,"4-3")
			return
		end
		--材料备齐，删除材料，给桃符
		if Item_ChkMulItem(nItemId_1,nItemId_1,nNum_1) and Item_ChkMulItem(nItemId_2,nItemId_2,nNum_2) then
			-- if Item_DelMulItem(nItemId_1,nItemId_1,nNum_1) and Item_DelMulItem(nItemId_2,nItemId_2,nNum_2) then
			if Item_DelAllItemByType(nItemId_1) and Item_DelMulItem(nItemId_2,nItemId_2,nNum_2) then
				Item_AddItem(nItemId)
				Sys_SaveActionFestivalLog(tSpringFestival_OldPeach_Log["GetItem"])
				LinkNpcGossipFunc_New(nNpcId,"4-5")
				User_TalkChannel2005(tSpringFestival_OldPeach_Text["Done"])
			end
		else	--材料不足
			LinkNpcGossipFunc_New(nNpcId,"4-4")
			return
		end
	elseif Task_ChkStcValue(nEvent,nType,"==",nData2) then	--完成任务，未领奖
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
end

--接5：领取礼物
function SpringFestival_OldPeach_GetReward(nNpcId)
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	if not SpringFestival_OldPeach_LevelJudgement() then
		LinkNpcGossipFunc_New(nNpcId,"5-1")
		return
	end
	
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nData1 = tSpringFestival_OldPeach_Stc["GetTask"]
	local nData2 = tSpringFestival_OldPeach_Stc["UsePeach"]
	local nComplete = tSpringFestival_OldPeach_Stc["Complete"]
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)	
	end
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then	--已领奖
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",0) then		--未接任务
		LinkNpcGossipFunc_New(nNpcId,"4-2")
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",nData1) then	--已接任务
		LinkNpcGossipFunc_New(nNpcId,"5-2")
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",nData2) then	--完成任务，未领奖
		if not User_CheckLeftSpace(tSpringFestival_OldPeach_Item["BagSpace"]) then
			LinkNpcGossipFunc_New(nNpcId,"5-3")
			return
		end
		--领取奖励
		Task_SetStatistic(nEvent,nType,nComplete,1,0)
		FestivalGeneralPackage_GetGift(tSpringFestival_OldPeach_Log["FestivalId"],tSpringFestival_OldPeach_Log["LogId"])
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["GetGift"])
	end
end

--接12,15:寻路到材料所在地    判断是哪种材料不足，寻路到对应位置
function SpringFestival_OldPeach_GoFind(nNpcId)
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		LinkNpcGossipFunc_New(nNpcId,"1-4")
		return
	end
	
	local nItemId = tSpringFestival_OldPeach_Item[3007646]
	local nItemId_1 = tSpringFestival_OldPeach_Item[3007647]
	local nItemId_2 = tSpringFestival_OldPeach_Item[3007983]
	local nNum_1 = tSpringFestival_OldPeach_Item["Num1"]
	local nNum_2 = tSpringFestival_OldPeach_Item["Num2"]
	if not Item_ChkMulItem(nItemId_1,nItemId_1,nNum_1) then
		SpringFestival_OldPeach_ToGetPeach()
		return
	end
	if not Item_ChkMulItem(nItemId_2,nItemId_2,nNum_2) then
		SpringFestival_OldPeach_GetBlood()
	end
end

--采集桃木   桃树 17308-17310   task0 = 94467600
function SpringFestival_OldPeach_GetWood()
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		return
	end
	
	if not SpringFestival_OldPeach_LevelJudgement() then
		return
	end
	
	local nItemId = tSpringFestival_OldPeach_Item[3007646]
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nData1 = tSpringFestival_OldPeach_Stc["GetTask"]
	local nData2 = tSpringFestival_OldPeach_Stc["UsePeach"]
	local nComplete = tSpringFestival_OldPeach_Stc["Complete"]
	local nFiveSec = tSpringFestival_OldPeach_Stc["FiveSec"]
	--隔天重置
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then	--已领奖
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["Finish"])
		return
	elseif Task_ChkStcValue(nEvent,nType,"==",0) then		--未接任务
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["NoTask"])
		return
	elseif not Task_StcInterval(nEvent,nType,nFiveSec,0) then		--上一次采集不足5秒
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["Wait5Sec"])
		return
	end
	
	if Item_ChkItem(nItemId) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["Have"])
		return
	end
	
	if not User_CheckLeftSpace(tSpringFestival_OldPeach_Item["BagSpace"]) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["NoSpace"])
		return
	end
	
	local nItemId_1 = tSpringFestival_OldPeach_Item[3007647]
	local nItemId_2 = tSpringFestival_OldPeach_Item[3007983]
	local nNum_1 = tSpringFestival_OldPeach_Item["Num1"]
	local nNum_2 = tSpringFestival_OldPeach_Item["Num2"]
	
	if Item_ChkMulItem(nItemId_1,nItemId_1,nNum_1) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["Have5Peach"])	
		if not Item_ChkMulItem(nItemId_2,nItemId_2,nNum_2) then
			Sys_MsgBox(tSpringFestival_OldPeach_Text[105]["GetBlood"],"SpringFestival_OldPeach_GetBlood")
		end
		return
	end

	--读条 采集
	local nSecs = tSpringFestival_OldPeach_Cont["Second"]
	local nActionId = tSpringFestival_OldPeach_Cont["Action"]
	local sContent = tSpringFestival_OldPeach_Text["Get"]
	User_SetExplore(nSecs,sContent,nActionId,"SpringFestival_OldPeach_CollectWood")
end

--读条 采集后的操作
function SpringFestival_OldPeach_CollectWood(nUserId)
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		return
	end
	
	if not User_CheckLeftSpace(tSpringFestival_OldPeach_Item["BagSpace"],nUserId) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["NoSpace"],nUserId)
		return
	end

	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	Task_SetStcTimestamp(nEvent,nType,0,nUserId)
	--随机获得某个数量的桃木
	local nFlat,tAward = Probabil_RandomAward(tSpringFestival_OldPeach_Item["Peach"],1)
	local nItem = tAward[1]["tAward"][1]["Item_1"]
	local sAttr = tAward[1]["tAward"][1]["ItemAttr"]
	Item_AddNewItem(nItem,sAttr,nUserId)
	local sLog = tAward[1]["tAward"][1]["Log"]
	Sys_SaveActionFestivalLog(sLog,nUserId)
	
	local nItemId_1 = tSpringFestival_OldPeach_Item[3007647]
	local nItemId_2 = tSpringFestival_OldPeach_Item[3007983]
	local nNum_1 = tSpringFestival_OldPeach_Item["Num1"]
	local nNum_2 = tSpringFestival_OldPeach_Item["Num2"]

	if not Item_ChkMulItem(nItemId_1,nItemId_1,nNum_1,1,0,nUserId) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["ThisOne"],nUserId)
		return
	end
	
	if not Item_ChkMulItem(nItemId_2,nItemId_2,nNum_2,1,0,nUserId) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["FinishWood"],nUserId)
		Sys_MsgBox(tSpringFestival_OldPeach_Text[105]["GetBlood"],"SpringFestival_OldPeach_GetBlood")
		return
	end
	User_TalkChannel2005(tSpringFestival_OldPeach_Text["Prepared"],nUserId)
	Sys_MsgBox(tSpringFestival_OldPeach_Text[105]["GetPeach"],"SpringFestival_OldPeach_MakePeach")
end

-------------------------------------------使用物品逻辑----------------------------------------------------------
-- 3007646	桃符
function SpringFestival_OldPeach_UsePeach(nItemId)
	if Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["BeforeActivity"]) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["TimeComing"])
		return
	end
	
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tSpringFestival_OldPeach_Text["DelItem"])
			Sys_SaveActionFestivalLog(string.format(tSpringFestival_OldPeach_Log["DelItem"],nItemId))
			return 
		end
	end
	
	if not SpringFestival_OldPeach_LevelJudgement() then
		return
	end

	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nData1 = tSpringFestival_OldPeach_Stc["GetTask"]
	local nData2 = tSpringFestival_OldPeach_Stc["UsePeach"]
	if Task_ChkStcValue(nEvent,nType,"==",nData1) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			Task_SetStatistic(nEvent,nType,nData2,1,0)
			--1小时祝福
			local nAddBless = tSpringFestival_OldPeach_Item["AddBless"]
			User_AddBless(nAddBless)
			User_EffectAdd(tSpringFestival_OldPeach_Effect[1],tSpringFestival_OldPeach_Effect[2])
			Sys_SaveActionFestivalLog(tSpringFestival_OldPeach_Log["GetBless"])
			User_TalkChannel2005(tSpringFestival_OldPeach_Text["OneHourBless"])
		end
	end
end

--使用桃木  赤华精血
function SpringFestival_OldPeach_UseItem(nItemId)
	if Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["BeforeActivity"]) then
		User_TalkChannel2005(tSpringFestival_OldPeach_Text["TimeComing"])
		return
	end
	
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		if Item_ChkItem(nItemId) and Item_DelAllItemByType(nItemId) then
			Sys_SaveActionFestivalLog(string.format(tSpringFestival_OldPeach_Log["DelItem"],nItemId))
			User_TalkChannel2005(tSpringFestival_OldPeach_Text["DelItem"])
			return
		end
	end
	User_TalkChannel2005(tSpringFestival_OldPeach_Text["ItemTips"])
end

-------------------------------------------怪物掉落逻辑----------------------------------------------------------
function SpringFestival_OldPeach_MonsterDrop()
	if not Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) then
		return
	end
	
	if not SpringFestival_OldPeach_LevelJudgement() then
		return
	end
	
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nComplete = tSpringFestival_OldPeach_Stc["Complete"]
	if Task_ChkStcValue(nEvent,nType,"==",0) or Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		return
	end
	
	local nItemId_1 = tSpringFestival_OldPeach_Item[3007647]
	local nItemId_2 = tSpringFestival_OldPeach_Item[3007983]
	local nNum_1 = tSpringFestival_OldPeach_Item["Num1"]
	local nNum_2 = tSpringFestival_OldPeach_Item["Num2"]
	if not Item_ChkMulItem(nItemId_2,nItemId_2,nNum_2) then
		if not User_CheckLeftSpace(tSpringFestival_OldPeach_Item["BagSpace"]) then
			User_TalkChannel2005(tSpringFestival_OldPeach_Text["NoSpace"])
			return
		end
		Item_AddItem(nItemId_2)
		Sys_SaveActionFestivalLog(tSpringFestival_OldPeach_Log["GetBlood"])
		if Item_ChkMulItem(nItemId_2,nItemId_2,nNum_2) then
			if Item_ChkMulItem(nItemId_1,nItemId_1,nNum_1) then
				User_TalkChannel2005(tSpringFestival_OldPeach_Text["Prepared"])
				Sys_MsgBox(tSpringFestival_OldPeach_Text[105]["GetPeach"],"SpringFestival_OldPeach_MakePeach")
			else
				User_TalkChannel2005(tSpringFestival_OldPeach_Text["EnoughBlood"])
				Sys_MsgBox(tSpringFestival_OldPeach_Text[105]["GetWood"],"SpringFestival_OldPeach_ToGetPeach")
			end
		else
			User_TalkChannel2005(tSpringFestival_OldPeach_Text["GetBlood"])
		end
	else
		if Item_ChkMulItem(nItemId_1,nItemId_1,nNum_1) then
			User_TalkChannel2005(tSpringFestival_OldPeach_Text["Prepared"])
			Sys_MsgBox(tSpringFestival_OldPeach_Text[105]["GetPeach"],"SpringFestival_OldPeach_MakePeach")
		else
			User_TalkChannel2005(tSpringFestival_OldPeach_Text["EnoughBlood"])
			Sys_MsgBox(tSpringFestival_OldPeach_Text[105]["GetWood"],"SpringFestival_OldPeach_ToGetPeach")
		end
	end
end

------------------------------------------------NPC模块--------------------------------------------------
-- 17307  桃符仙师
tNpcFace[3358] = 67
tNpcGossip[17307] = tNpcGossip[17307] or DefaultNpc:new{}
tNpcGossip[17307]["OptionHidden"] = 1
--活动前对白
tNpcGossip[17307]["Text1-1"] = {111,112,113,114}
tNpcGossip[17307]["Text111"] = tSpringFestival_OldPeach_Text[17307]["Text111"]
tNpcGossip[17307]["Text112"] = tSpringFestival_OldPeach_Text[17307]["Text112"]
tNpcGossip[17307]["Text113"] = tSpringFestival_OldPeach_Text[17307]["Text113"]
tNpcGossip[17307]["Text114"] = tSpringFestival_OldPeach_Text[17307]["Text114"]
tNpcGossip[17307]["tOption1-1"] = {1}
tNpcGossip[17307]["ChkFunc1-1"] = function ()
	return Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["BeforeActivity"])
end

tNpcGossip[17307]["Option1"] = tSpringFestival_OldPeach_Text[17307]["Option1"]

--活动中对白
--等级不满足
tNpcGossip[17307]["Text1-2"] = {121}
tNpcGossip[17307]["Text121"] = tSpringFestival_OldPeach_Text[17307]["Text121"]
tNpcGossip[17307]["tOption1-2"] = {2}
tNpcGossip[17307]["ChkFunc1-2"] = function ()
	return Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) and (not SpringFestival_OldPeach_LevelJudgement())
end

tNpcGossip[17307]["Option2"] = tSpringFestival_OldPeach_Text[17307]["Option2"]

--等级满足
tNpcGossip[17307]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[17307]["Text131"] = tSpringFestival_OldPeach_Text[17307]["Text131"]
tNpcGossip[17307]["Text132"] = tSpringFestival_OldPeach_Text[17307]["Text132"]
tNpcGossip[17307]["Text133"] = tSpringFestival_OldPeach_Text[17307]["Text133"]
tNpcGossip[17307]["Text134"] = tSpringFestival_OldPeach_Text[17307]["Text134"]
tNpcGossip[17307]["Text135"] = tSpringFestival_OldPeach_Text[17307]["Text135"]
tNpcGossip[17307]["tOption1-3"] = {3,4,5,6,7}
tNpcGossip[17307]["ChkFunc1-3"] = function ()
	return Sys_ChkFullTime(tSpringFestival_OldPeach_Cont["Activity"]) and SpringFestival_OldPeach_LevelJudgement()
end

tNpcGossip[17307]["Option3"] = tSpringFestival_OldPeach_Text[17307]["Option3"]
tNpcGossip[17307]["OptionFunc3"]="SpringFestival_OldPeach_Learn</N>17307"
tNpcGossip[17307]["OptionChkFunc3"] = function () 	--完成任务后消失
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nComplete = tSpringFestival_OldPeach_Stc["Complete"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	if Task_ChkStcValue(nEvent,nType,">=",nComplete) then
		return false
	else
		return true
	end
end
tNpcGossip[17307]["Option4"] = tSpringFestival_OldPeach_Text[17307]["Option4"]
tNpcGossip[17307]["OptionFunc4"]="SpringFestival_OldPeach_Teach</N>17307"
tNpcGossip[17307]["OptionChkFunc4"] = function () 	--接任务后出现  完成任务后消失
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nData1 = tSpringFestival_OldPeach_Stc["GetTask"]
	local nComplete = tSpringFestival_OldPeach_Stc["Complete"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	if Task_ChkStcValue(nEvent,nType,">=",nData1) and Task_ChkStcValue(nEvent,nType,"<",nComplete) then
		return true
	else
		return false
	end
end
tNpcGossip[17307]["Option5"] = tSpringFestival_OldPeach_Text[17307]["Option5"]
tNpcGossip[17307]["OptionFunc5"]="SpringFestival_OldPeach_GetReward</N>17307"
tNpcGossip[17307]["OptionChkFunc5"] = function () 	--接任务后出现
	local nEvent = tSpringFestival_OldPeach_Stc["EventType"]
	local nType = tSpringFestival_OldPeach_Stc["DataType"]
	local nData1 = tSpringFestival_OldPeach_Stc["GetTask"]
	if Task_StcInterval(nEvent,nType,1,4) then
		Task_SetStatistic(nEvent,nType,0,1,0)
		Task_SetStcTimestamp(nEvent,nType,0,0)
	end
	if Task_ChkStcValue(nEvent,nType,">=",nData1) then
		return true
	else
		return false
	end
end
tNpcGossip[17307]["Option6"] = tSpringFestival_OldPeach_Text[17307]["Option6"]
tNpcGossip[17307]["OptionPoint6"]="6-1"
tNpcGossip[17307]["Option7"] = tSpringFestival_OldPeach_Text[17307]["Option7"]

--活动后对白
tNpcGossip[17307]["Text1-4"] = {141}
tNpcGossip[17307]["Text141"] = tSpringFestival_OldPeach_Text[17307]["Text141"]
tNpcGossip[17307]["tOption1-4"] = {8}
tNpcGossip[17307]["Option8"] = tSpringFestival_OldPeach_Text[17307]["Option8"]

--接3：我要学
--等级不足
tNpcGossip[17307]["Text3-1"] = {311}
tNpcGossip[17307]["Text311"] = tSpringFestival_OldPeach_Text[17307]["Text311"]
tNpcGossip[17307]["tOption3-1"] = {9}
tNpcGossip[17307]["Option9"] = tSpringFestival_OldPeach_Text[17307]["Option9"]
--已绘制过桃符
tNpcGossip[17307]["Text3-2"] = {321}
tNpcGossip[17307]["Text321"] = tSpringFestival_OldPeach_Text[17307]["Text321"]
tNpcGossip[17307]["tOption3-2"] = {10}
tNpcGossip[17307]["Option10"] = tSpringFestival_OldPeach_Text[17307]["Option10"]
--已完成任务，提示领奖
tNpcGossip[17307]["Text3-3"] = {331}
tNpcGossip[17307]["Text331"] = tSpringFestival_OldPeach_Text[17307]["Text331"]
tNpcGossip[17307]["tOption3-3"] = {11}
tNpcGossip[17307]["Option11"] = tSpringFestival_OldPeach_Text[17307]["Option11"]
--身上还有桃符
tNpcGossip[17307]["Text3-4"] = {341}
tNpcGossip[17307]["Text341"] = tSpringFestival_OldPeach_Text[17307]["Text341"]
tNpcGossip[17307]["tOption3-4"] = {11}
--身上没有桃符
tNpcGossip[17307]["Text3-5"] = {351}
tNpcGossip[17307]["Text351"] = tSpringFestival_OldPeach_Text[17307]["Text351"]
tNpcGossip[17307]["tOption3-5"] = {12}
tNpcGossip[17307]["Option12"] = tSpringFestival_OldPeach_Text[17307]["Option12"]
tNpcGossip[17307]["OptionFunc12"]="SpringFestival_OldPeach_GoFind</N>17307"
--成功接到任务
tNpcGossip[17307]["Text3-6"] = {361,362}
tNpcGossip[17307]["Text361"] = tSpringFestival_OldPeach_Text[17307]["Text361"]
tNpcGossip[17307]["Text362"] = tSpringFestival_OldPeach_Text[17307]["Text362"]
tNpcGossip[17307]["tOption3-6"] = {13}
tNpcGossip[17307]["Option13"] = tSpringFestival_OldPeach_Text[17307]["Option13"]
tNpcGossip[17307]["OptionFunc13"]="SpringFestival_OldPeach_ToGetPeach"

--接4：材料备齐，请教我吧
--等级不足
tNpcGossip[17307]["Text4-1"] = {411}
tNpcGossip[17307]["Text411"] = tSpringFestival_OldPeach_Text[17307]["Text411"]
tNpcGossip[17307]["tOption4-1"] = {14}
tNpcGossip[17307]["Option14"] = tSpringFestival_OldPeach_Text[17307]["Option14"]
--未接任务
tNpcGossip[17307]["Text4-2"] = {421}
tNpcGossip[17307]["Text421"] = tSpringFestival_OldPeach_Text[17307]["Text421"]
tNpcGossip[17307]["tOption4-2"] = {14}
--已有桃符
tNpcGossip[17307]["Text4-3"] = {431}
tNpcGossip[17307]["Text431"] = tSpringFestival_OldPeach_Text[17307]["Text431"]
tNpcGossip[17307]["tOption4-3"] = {14}
--材料不足
tNpcGossip[17307]["Text4-4"] = {441}
tNpcGossip[17307]["Text441"] = tSpringFestival_OldPeach_Text[17307]["Text441"]
tNpcGossip[17307]["tOption4-4"] = {15,16}
tNpcGossip[17307]["Option15"] = tSpringFestival_OldPeach_Text[17307]["Option15"]
tNpcGossip[17307]["OptionFunc15"]="SpringFestival_OldPeach_GoFind</N>17307"
tNpcGossip[17307]["Option16"] = tSpringFestival_OldPeach_Text[17307]["Option16"]
--成功给材料
tNpcGossip[17307]["Text4-5"] = {451}
tNpcGossip[17307]["Text451"] = tSpringFestival_OldPeach_Text[17307]["Text451"]
tNpcGossip[17307]["tOption4-5"] = {17}
tNpcGossip[17307]["Option17"] = tSpringFestival_OldPeach_Text[17307]["Option17"]
	
--接5：领取礼物
--等级不足
tNpcGossip[17307]["Text5-1"] = {511}
tNpcGossip[17307]["Text511"] = tSpringFestival_OldPeach_Text[17307]["Text511"]
tNpcGossip[17307]["tOption5-1"] = {18}
tNpcGossip[17307]["Option18"] = tSpringFestival_OldPeach_Text[17307]["Option18"]
--未使用桃符
tNpcGossip[17307]["Text5-2"] = {521}
tNpcGossip[17307]["Text521"] = tSpringFestival_OldPeach_Text[17307]["Text521"]
tNpcGossip[17307]["tOption5-2"] = {18}
--没有背包空间
tNpcGossip[17307]["Text5-3"] = {531}
tNpcGossip[17307]["Text531"] = tSpringFestival_OldPeach_Text[17307]["Text531"]
tNpcGossip[17307]["tOption5-3"] = {19}
tNpcGossip[17307]["Option19"] = tSpringFestival_OldPeach_Text[17307]["Option19"]
--成功给奖励
tNpcGossip[17307]["Text5-4"] = {541}
tNpcGossip[17307]["Text541"] = tSpringFestival_OldPeach_Text[17307]["Text541"]
tNpcGossip[17307]["tOption5-4"] = {20}
tNpcGossip[17307]["Option20"] = tSpringFestival_OldPeach_Text[17307]["Option20"]

--接6：道长详细说说
tNpcGossip[17307]["Text6-1"] = {611,612,613}
tNpcGossip[17307]["Text611"] = tSpringFestival_OldPeach_Text[17307]["Text611"]
tNpcGossip[17307]["Text612"] = tSpringFestival_OldPeach_Text[17307]["Text612"]
tNpcGossip[17307]["Text613"] = tSpringFestival_OldPeach_Text[17307]["Text613"]
tNpcGossip[17307]["tOption6-1"] = {21}
tNpcGossip[17307]["Option21"] = tSpringFestival_OldPeach_Text[17307]["Option21"]

------------------------------------------------itemtype模块--------------------------------------------------
-- 3007646	桃符
tItem[3007646] = tItem[3007646] or {}
tItem[3007646]["Function"] = function(nItemId,sItemName)
	SpringFestival_OldPeach_UsePeach(nItemId)
end

-- 3007647	桃木
tItem[3007647] = tItem[3007647] or {}
tItem[3007647]["Function"] = function(nItemId,sItemName)
	SpringFestival_OldPeach_UseItem(nItemId)
end

-- 3007983	赤华精血
tItem[3007983] = tItem[3007983] or {}
tItem[3007983]["Function"] = function(nItemId,sItemName)
	SpringFestival_OldPeach_UseItem(nItemId)
end

--------------------------------------怪物配置-------------------------------------------
-- 蹑空鬼斧王  9593240 
--tMonster[5] = tMonster[5] or {}
--tMonster[5]["tFunction"] = tMonster[5]["tFunction"] or {}
--table.insert(tMonster[5]["tFunction"],SpringFestival_OldPeach_MonsterDrop)
