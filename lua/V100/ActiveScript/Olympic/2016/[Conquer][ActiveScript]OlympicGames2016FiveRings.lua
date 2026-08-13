--------------------------------------------------------------------------
---Name:	160626[简体征服][活动脚本]2016奥运会活动之奥运五环(8.05-8.22)
--Creator: 	陈莺
--Created:	2016-06-26
--------------------------------------------------------------------------
--npc 
-- 19360,'小岳岳'

--物品
-- 3200640,'黯淡光环'
-- 3200641,'奥运黑环'
-- 3200642,'奥运红环'
-- 3200643,'奥运黄环'
-- 3200644,'奥运绿环'
-- 3200645,'奥运蓝环'

-- logid 12000443

-- 掩码 
--146 61  =1 领取黯淡光环
--146 62  记录上交五环次数
--146 63  杀怪充能
--146 64   =1上交一种五环 依次类推 =2 ...

--命名规范
--OlympicGames2016FiveRings_
------------------------------------------------------------------------------------------
local tOlympicGames2016FiveRings_Data = {}
	tOlympicGames2016FiveRings_Data["Bef_Time"]= "2015-07-01 00:00 2016-08-04 23:59"
	tOlympicGames2016FiveRings_Data["Now_Time"] = "2016-08-05 00:00 2016-08-22 23:59"
	-- tOlympicGames2016FiveRings_Data["Bef_Time"]= "2015-07-01 00:00 2016-05-31 23:59"
	-- tOlympicGames2016FiveRings_Data["Now_Time"] = "2016-06-01 00:00 2016-08-15 23:59"

	tOlympicGames2016FiveRings_Data["Level"] = 80 
	tOlympicGames2016FiveRings_Data["Metempsychosis"] = 0
	tOlympicGames2016FiveRings_Data["Space"] = 1
	-- tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Id"] = 3200640
	tOlympicGames2016FiveRings_Data["GetEffect"] = "LevelUp-1"
	tOlympicGames2016FiveRings_Data["Effect"] = "zf-e128"
	-- tOlympicGames2016FiveRings_Data["RingEffect"] = "aoyun2016_cyc"
	tOlympicGames2016FiveRings_Data["RingEffect"] = "2016wuhuan_ch_1"



local tOlympicGames2016FiveRings_Log = {}
	tOlympicGames2016FiveRings_Log[1] = "0,0,%d,1,12000443,2,0,0"  ---上交五环
	tOlympicGames2016FiveRings_Log[2] = "0,0,3200530,3,12000443,2,%d,1"  ---获得五环
	tOlympicGames2016FiveRings_Log["OverTime"] = "0,0,%d,1,12000443,3,0,0"  --删除五环

	tOlympicGames2016FiveRings_Log["LogId"] = 12000443
	tOlympicGames2016FiveRings_Log["FestivalId"] = 3706



local tOlympicGames2016FiveRings_Prob = {}
	--三种点数
	tOlympicGames2016FiveRings_Prob[1] = {}
	tOlympicGames2016FiveRings_Prob[1]["ItemChanceSum"] = 10000                     
	tOlympicGames2016FiveRings_Prob[1][1] = {}
	tOlympicGames2016FiveRings_Prob[1][1]["RandomItemChanceType"] = 2
	tOlympicGames2016FiveRings_Prob[1][1]["ItemChance"] = 2000
	tOlympicGames2016FiveRings_Prob[1][1]["Item_1"]= 3200641
	
	tOlympicGames2016FiveRings_Prob[1][2] = {}
	tOlympicGames2016FiveRings_Prob[1][2]["RandomItemChanceType"] = 2
	tOlympicGames2016FiveRings_Prob[1][2]["ItemChance"] = 2000
	tOlympicGames2016FiveRings_Prob[1][2]["Item_1"]= 3200642
	                                      
	tOlympicGames2016FiveRings_Prob[1][3] = {}
	tOlympicGames2016FiveRings_Prob[1][3]["RandomItemChanceType"] = 2
	tOlympicGames2016FiveRings_Prob[1][3]["ItemChance"] = 2000
	tOlympicGames2016FiveRings_Prob[1][3]["Item_1"]= 3200643
	
	tOlympicGames2016FiveRings_Prob[1][4] = {}
	tOlympicGames2016FiveRings_Prob[1][4]["RandomItemChanceType"] = 2
	tOlympicGames2016FiveRings_Prob[1][4]["ItemChance"] = 2000
	tOlympicGames2016FiveRings_Prob[1][4]["Item_1"]= 3200644

	tOlympicGames2016FiveRings_Prob[1][5] = {}
	tOlympicGames2016FiveRings_Prob[1][5]["RandomItemChanceType"] = 2
	tOlympicGames2016FiveRings_Prob[1][5]["ItemChance"] = 2000
	tOlympicGames2016FiveRings_Prob[1][5]["Item_1"]= 3200645

	
---掩码
local tOlympicGames2016FiveRings_Stc = {}
	tOlympicGames2016FiveRings_Stc[1] = {} -- =1 领取黯淡光环 
	tOlympicGames2016FiveRings_Stc[1]["EventType"] = 146
	tOlympicGames2016FiveRings_Stc[1]["DataType"] = 61
	tOlympicGames2016FiveRings_Stc[1]["Accept"] = 1
	-- tOlympicGames2016FiveRings_Stc[1]["Complete"] = 2
	
	tOlympicGames2016FiveRings_Stc[2] = {} --记录上交五环次数
	tOlympicGames2016FiveRings_Stc[2]["EventType"] = 146
	tOlympicGames2016FiveRings_Stc[2]["DataType"] = 62

	tOlympicGames2016FiveRings_Stc[3] = {} --杀怪充能
	tOlympicGames2016FiveRings_Stc[3]["EventType"] = 146
	tOlympicGames2016FiveRings_Stc[3]["DataType"] = 63
	tOlympicGames2016FiveRings_Stc[3]["nNum"] = 100
	-- tOlympicGames2016FiveRings_Stc[3]["nCount"] = 5
	tOlympicGames2016FiveRings_Stc[4] = {} --=1上交一种五环 依次类推 =2 ...
	tOlympicGames2016FiveRings_Stc[4]["EventType"] = 146
	tOlympicGames2016FiveRings_Stc[4]["DataType"] = 64


	
--- 2进制掩码值记录是否上交过五环
local tOlympicGames2016FiveRings_Num = {}
--1-5
	for i = 1,5 do
		tOlympicGames2016FiveRings_Num[i] = 2^(i-1)
	end
local tOlympicGames2016FiveRings_Ring = {}
	tOlympicGames2016FiveRings_Ring[1] = 3200645 --蓝
	tOlympicGames2016FiveRings_Ring[2] = 3200641 --黑
	tOlympicGames2016FiveRings_Ring[3] = 3200642 --红
	tOlympicGames2016FiveRings_Ring[4] = 3200643 --黄
	tOlympicGames2016FiveRings_Ring[5] = 3200644 --绿

local tOlympicGames2016FiveRings_Reward = {}
	tOlympicGames2016FiveRings_Reward[1] = {} --给5个暗淡光环
	tOlympicGames2016FiveRings_Reward[1]["RewardItem"] = {}
	tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1] = {}
	tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Id"] = 3200640
	tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Attr"] = "0 5"
	tOlympicGames2016FiveRings_Reward[1]["Log"] = "0,0,0,0,12000443,1[1],3200640,5"
	tOlympicGames2016FiveRings_Reward[1]["Talk"] = tOlympicGames2016FiveRings_Text[19360]["Text241"]
	
	tOlympicGames2016FiveRings_Reward[2] = {}  --3瓶奥运圣水
	tOlympicGames2016FiveRings_Reward[2]["RewardItem"] = {}
	tOlympicGames2016FiveRings_Reward[2]["RewardItem"][1] = {}
	tOlympicGames2016FiveRings_Reward[2]["RewardItem"][1]["Id"] = 3200573
	tOlympicGames2016FiveRings_Reward[2]["RewardItem"][1]["Attr"] = "0 3"
	tOlympicGames2016FiveRings_Reward[2]["Log"] = "0,0,0,0,12000443,1[2],3200573[3003625],3[1]"
	tOlympicGames2016FiveRings_Reward[2]["Talk"] = tOlympicGames2016FiveRings_Text[19360]["Text351"]

	tOlympicGames2016FiveRings_Reward[3] = {}  --光效气力
	tOlympicGames2016FiveRings_Reward[3]["RewardStrengthValue"] = {}  --100气力
	tOlympicGames2016FiveRings_Reward[3]["RewardStrengthValue"]["Value"] = 500
	tOlympicGames2016FiveRings_Reward[3]["Log"] = "0,0,0,0,12000443,2,12,500"
	tOlympicGames2016FiveRings_Reward[3]["Talk"] = tOlympicGames2016FiveRings_Text[19360]["Text371"]
	


---------------------------------------------npc部分---------------------------------------------
--检测等级
function OlympicGames2016FiveRings_ChkLevel()
	if not User_JudgeLevelAndMetempsychosis(tOlympicGames2016FiveRings_Data["Level"],tOlympicGames2016FiveRings_Data["Metempsychosis"]) then 
		return true
	else
		return false
	end
end
---判断是否有接任务
function OlympicGames2016FiveRings_AcceptTask(nNum,nData)
	local nTaskEvent = tOlympicGames2016FiveRings_Stc[nNum]["EventType"]
	local nTaskData = tOlympicGames2016FiveRings_Stc[nNum]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskData,'<',nData) then
		return true
	else
		return false
	end
end
---判断是否完成任务
function OlympicGames2016FiveRings_FinishTask(nNum,nData)
	local nTaskEvent = tOlympicGames2016FiveRings_Stc[nNum]["EventType"]
	local nTaskData = tOlympicGames2016FiveRings_Stc[nNum]["DataType"]
	if Task_ChkStcValue(nTaskEvent,nTaskData,'>=',nData) then
		return true
	else
		return false
	end
end

----置任务掩码
function OlympicGames2016FiveRings_SetTaskStc(nNum,nData)
	local nTaskEvent = tOlympicGames2016FiveRings_Stc[nNum]["EventType"]
	local nTaskData = tOlympicGames2016FiveRings_Stc[nNum]["DataType"]
	Task_SetStatistic(nTaskEvent,nTaskData,nData,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskData,0)
end

----加任务掩码值
function OlympicGames2016FiveRings_AddTaskStc(nNum,nData)
	local nTaskEvent = tOlympicGames2016FiveRings_Stc[nNum]["EventType"]
	local nTaskData = tOlympicGames2016FiveRings_Stc[nNum]["DataType"]
	Task_AddStatistic(nTaskEvent,nTaskData,nData,1)
	Task_SetStcTimestamp(nTaskEvent,nTaskData,0)
end

----二进制掩码
function OlympicGames2016FiveRings_ChkTaskStc(nNum)
	local nEvent = tOlympicGames2016FiveRings_Stc[2]["EventType"]
	local nType = tOlympicGames2016FiveRings_Stc[2]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)

	if Sys_ParseNumbersContain(tOlympicGames2016FiveRings_Num[nNum],nValue) then
		return true
	else
		return false
	end
end

----加二进制掩码值
function OlympicGames2016FiveRings_TaskStc(nNum)
	local nEvent = tOlympicGames2016FiveRings_Stc[2]["EventType"]
	local nType = tOlympicGames2016FiveRings_Stc[2]["DataType"]
	local nValue = Get_UserStatisticValue(nEvent,nType)

	Task_AddStatistic(nEvent,nType,tOlympicGames2016FiveRings_Num[nNum],1,0) 
	Task_SetStcTimestamp(nEvent,nType,0)
end

-- 领取黯淡光环
function OlympicGames2016FiveRings_GetItem(nNpcId)
	OlympicGames2016FiveRings_ResetStc()  --隔天清零
	if not Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Now_Time"]) then
		return 
	end
	if OlympicGames2016FiveRings_ChkLevel() then
		return
	end
	--完成任务
	if OlympicGames2016FiveRings_FinishTask(4,1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
	--已领取
	if not OlympicGames2016FiveRings_AcceptTask(1,1) then
		LinkNpcGossipFunc_New(nNpcId,"2-1")
		return
	end
	-- if Item_ChkItem(tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Id"]) then  --删除多余的黯淡五环
		-- if Item_DelAllItemByType(tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Id"]) then
		-- end
	-- end
	---背包空间
	if not User_CheckLeftSpace(tOlympicGames2016FiveRings_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	OlympicGames2016FiveRings_SetTaskStc(1,1)  --打掩码
	RewardTemplate_Reward(tOlympicGames2016FiveRings_Reward[1])  --给物品
	Sys_MsgBox(tOlympicGames2016FiveRings_Text["MsgBox"]["GetItem"])
	
end
-- 上交光环
function OlympicGames2016FiveRings_GiveRing(nNpcId,nNum)
	OlympicGames2016FiveRings_ResetStc()  --隔天清零
	if not Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Now_Time"]) then
		return 
	end
	if OlympicGames2016FiveRings_ChkLevel() then
		return
	end
	--没接任务
	-- if OlympicGames2016FiveRings_AcceptTask(1,1) then  
		-- OlympicGames2016FiveRings_AddTaskStc(1,1)
	-- end

	local nItemId = tOlympicGames2016FiveRings_Ring[nNum]
	local sName = Get_ItemtypeName(nItemId)

	--已上交
	if OlympicGames2016FiveRings_ChkTaskStc(nNum) then
		local sText = string.format(tOlympicGames2016FiveRings_Text[19360]["Text331"],sName)
		Sys_DialogText(sText)
		Sys_DialogOption(tOlympicGames2016FiveRings_Text[19360]["Option38"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end
	--没有物品
	if not Item_ChkItem(nItemId) then
		local sText = string.format(tOlympicGames2016FiveRings_Text[19360]["Text321"],sName)
		Sys_DialogText(sText)
		Sys_DialogOption(tOlympicGames2016FiveRings_Text[19360]["Option37"],"</F>NULL")
		Sys_DialogFace(nNpcId)
		Sys_DialogEnd()
		return
	end

	---背包空间
	if not User_CheckLeftSpace(tOlympicGames2016FiveRings_Data["Space"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
	if  Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
		OlympicGames2016FiveRings_AddTaskStc(4,1)  --打掩码

		OlympicGames2016FiveRings_TaskStc(nNum)  --标记上交的五环
		local sLog = string.format(tOlympicGames2016FiveRings_Log[1],nItemId)
		Sys_SaveActionFestivalLog(sLog)  --log
		--第一次上交
		if OlympicGames2016FiveRings_AcceptTask(4,2) then
			tOlympicGames2016FiveRings_Reward[2]["Talk"] = string.format(tOlympicGames2016FiveRings_Text[19360]["Text351"],sName)
			FestivalGeneralPackage_GetGift(tOlympicGames2016FiveRings_Log["FestivalId"],tOlympicGames2016FiveRings_Log["LogId"])
			RewardTemplate_Reward(tOlympicGames2016FiveRings_Reward[2])
			User_EffectAdd("self",tOlympicGames2016FiveRings_Data["GetEffect"])  --光效
			OlympicGames2016FiveRings_Gossip(nNpcId)
			return
		end
		if OlympicGames2016FiveRings_FinishTask(4,5) then  --最后一次交
			RewardTemplate_Reward(tOlympicGames2016FiveRings_Reward[3])
			---光效气力
			User_EffectAdd("self",tOlympicGames2016FiveRings_Data["RingEffect"])  --光效
			-- OlympicGames2016FiveRings_Gossip(nNpcId)
			return
		end
		local sStr = string.format(tOlympicGames2016FiveRings_Text[19360]["Text361"],sName)
		User_TalkChannel2005(sStr)
		User_EffectAdd("self",tOlympicGames2016FiveRings_Data["Effect"])  --光效
		OlympicGames2016FiveRings_Gossip(nNpcId)
	end
end
--对白 -- 接2）上交奥运五环
function OlympicGames2016FiveRings_Gossip(nNpcId)

	Sys_DialogText(tOlympicGames2016FiveRings_Text[19360]["Text311"])
	Sys_DialogText(tOlympicGames2016FiveRings_Text[19360]["Text312"])

	for i=1,5 do 
		local nFlag = 2
		if OlympicGames2016FiveRings_ChkTaskStc(i) then
			nFlag = 1
		end
		local sStr = string.format(tOlympicGames2016FiveRings_Text[19360]["Option3" .. i],tOlympicGames2016FiveRings_Text[nFlag])
		Sys_DialogOption(sStr,"</F>OlympicGames2016FiveRings_GiveRing</N>" .. nNpcId .. "</N>" .. i)
	end
	Sys_DialogOption(tOlympicGames2016FiveRings_Text[19360]["Option36"],"</F>NULL")
	Sys_DialogFace(nNpcId)
	Sys_DialogEnd()


end

--隔天清零
function OlympicGames2016FiveRings_ResetStc()
	local nTaskEvent = tOlympicGames2016FiveRings_Stc[1]["EventType"]
	local nTaskData = tOlympicGames2016FiveRings_Stc[1]["DataType"]

	if Task_StcInterval(nTaskEvent,nTaskData,1,4) then  --隔天
		OlympicGames2016FiveRings_SetTaskStc(1,0)
		OlympicGames2016FiveRings_SetTaskStc(2,0)
		OlympicGames2016FiveRings_SetTaskStc(3,0)
		OlympicGames2016FiveRings_SetTaskStc(4,0)
	end
end
---------------------------------------------物品部分---------------------------------------------
function OlympicGames2016FiveRings_UseItem(nItemId)
	if Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Bef_Time"]) then
		User_TalkChannel2005(tOlympicGames2016FiveRings_Text["MsgBox"]["BTime"])
		return
	end
---过期删除物品
	if not Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			local sDelItemLog = string.format(tOlympicGames2016FiveRings_Log["OverTime"],nItemId)
			Sys_SaveActionFestivalLog(sDelItemLog)
			Sys_MsgBox(tOlympicGames2016FiveRings_Text["MsgBox"]["OverTime"])
		end
	end
	if nItemId == 3200640 then
		local nEvent = tOlympicGames2016FiveRings_Stc[3]["EventType"]
		local nType = tOlympicGames2016FiveRings_Stc[3]["DataType"]
		local nNumber = 100 - Get_UserStatisticValue(nEvent,nType,0)
		if nNumber ~= 0 then
			local sStr = string.format(tOlympicGames2016FiveRings_Text["MsgBox"]["Point"],nNumber)
			Sys_MsgBox(sStr)
		end
	end
end

---------------------------------------------怪物逻辑部分---------------------------------------------
function OlympicGames2016FiveRings_AddValue()
	OlympicGames2016FiveRings_ResetStc()  --隔天清零
	if not Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Now_Time"]) then
		return 
	end
	if OlympicGames2016FiveRings_ChkLevel() then
		return
	end
	--没接任务
	-- if OlympicGames2016FiveRings_AcceptTask(1,1) then
		-- return
	-- end
	if not Item_ChkItem(tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Id"]) then
		return
	end
	local nNum = math.random(1,5)
	OlympicGames2016FiveRings_AddTaskStc(3,nNum) --加能量
	local nEvent = tOlympicGames2016FiveRings_Stc[3]["EventType"]
	local nType = tOlympicGames2016FiveRings_Stc[3]["DataType"]
	local nNumber = 100 - Get_UserStatisticValue(nEvent,nType,0)
	if nNumber < 0 then
		nNumber = 0
	end
	if nNumber ~= 0 then
		local sText = string.format(tOlympicGames2016FiveRings_Text["MsgBox"]["KillMonster"],nNum,nNumber)
		User_TalkChannel2005(sText)
	end
	if OlympicGames2016FiveRings_FinishTask(3,tOlympicGames2016FiveRings_Stc[3]["nNum"]) then  --到达100
		if not User_CheckLeftSpace(tOlympicGames2016FiveRings_Data["Space"]) then
			Sys_MsgBox(tOlympicGames2016FiveRings_Text["MsgBox"]["NoBag"])
			return
		end
--获得五环
		if Item_ChkItem(tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Id"]) and Item_DelItem(tOlympicGames2016FiveRings_Reward[1]["RewardItem"][1]["Id"]) then
			OlympicGames2016FiveRings_SetTaskStc(3,0)
			local flat,tNum = Probabil_RandomAward(tOlympicGames2016FiveRings_Prob,1)  
			local nItemId = tNum[1]["tAward"][1]["Item_1"]
			Item_AddItem(nItemId)
			local slog = string.format(tOlympicGames2016FiveRings_Log[2],nItemId)
			Sys_SaveActionFestivalLog(slog)
			local sStr = string.format(tOlympicGames2016FiveRings_Text["MsgBox"]["Get"],tOlympicGames2016FiveRings_Text[nItemId])
			Sys_MsgBox(sStr)
		end
	end
end
---------------------------------------------npc模板---------------------------------------------
---------------------------小岳岳 19360
tNpcFace[4242] = 68

tNpcGossip[19360] = tNpcGossip[19360] or DefaultNpc:new{}
tNpcGossip[19360]["OptionHidden"] = 1
-- tNpcGossip[19360]["DialogueText"] = tOlympicGames2016FiveRings_Text[19360] 
--活动时间前
tNpcGossip[19360]["Text1-1"] = {111,112,113,114}
tNpcGossip[19360]["Text111"] = tOlympicGames2016FiveRings_Text[19360]["Text111"]
tNpcGossip[19360]["Text112"] = tOlympicGames2016FiveRings_Text[19360]["Text112"]
tNpcGossip[19360]["Text113"] = tOlympicGames2016FiveRings_Text[19360]["Text113"]
tNpcGossip[19360]["Text114"] = tOlympicGames2016FiveRings_Text[19360]["Text114"]
tNpcGossip[19360]["tOption1-1"] = {1}
tNpcGossip[19360]["Option1"] = tOlympicGames2016FiveRings_Text[19360]["Option1"]
tNpcGossip[19360]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Bef_Time"])
end

--活动时间后
tNpcGossip[19360]["Text1-2"] = {121}
tNpcGossip[19360]["Text121"] = tOlympicGames2016FiveRings_Text[19360]["Text121"]
tNpcGossip[19360]["tOption1-2"] = {8}
tNpcGossip[19360]["Option8"] = tOlympicGames2016FiveRings_Text[19360]["Option8"]
tNpcGossip[19360]["ChkFunc1-2"] = function()
	return not Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Now_Time"])
end


--活动时间中
---等级不足
tNpcGossip[19360]["Text1-3"] = {131,132,133,134,135}
tNpcGossip[19360]["Text131"] = tOlympicGames2016FiveRings_Text[19360]["Text131"]
tNpcGossip[19360]["Text132"] = tOlympicGames2016FiveRings_Text[19360]["Text132"]
tNpcGossip[19360]["Text133"] = tOlympicGames2016FiveRings_Text[19360]["Text133"]
tNpcGossip[19360]["Text134"] = tOlympicGames2016FiveRings_Text[19360]["Text134"]
tNpcGossip[19360]["Text135"] = tOlympicGames2016FiveRings_Text[19360]["Text135"]
tNpcGossip[19360]["tOption1-3"] = {2}
tNpcGossip[19360]["Option2"] = tOlympicGames2016FiveRings_Text[19360]["Option2"]
tNpcGossip[19360]["ChkFunc1-3"] = function()

	return (OlympicGames2016FiveRings_ChkLevel())
end

---【当天未接任务】
tNpcGossip[19360]["Text1-4"] = {141,142,143,144}
tNpcGossip[19360]["Text141"] = tOlympicGames2016FiveRings_Text[19360]["Text141"]
tNpcGossip[19360]["Text142"] = tOlympicGames2016FiveRings_Text[19360]["Text142"]
tNpcGossip[19360]["Text143"] = tOlympicGames2016FiveRings_Text[19360]["Text143"]
tNpcGossip[19360]["Text144"] = tOlympicGames2016FiveRings_Text[19360]["Text144"]
tNpcGossip[19360]["tOption1-4"] = {3,4,6}
tNpcGossip[19360]["Option3"] = tOlympicGames2016FiveRings_Text[19360]["Option3"]
tNpcGossip[19360]["Option4"] = tOlympicGames2016FiveRings_Text[19360]["Option4"]
-- tNpcGossip[19360]["Option5"] = tOlympicGames2016FiveRings_Text[19360]["Option5"]
tNpcGossip[19360]["Option6"] = tOlympicGames2016FiveRings_Text[19360]["Option6"]

tNpcGossip[19360]["OptionFunc3"]="OlympicGames2016FiveRings_GetItem</N>19360"
tNpcGossip[19360]["OptionFunc4"] = "OlympicGames2016FiveRings_Gossip</N>19360"
tNpcGossip[19360]["OptionPoint5"]= "4-1"
tNpcGossip[19360]["ChkFunc1-4"] = function()
	OlympicGames2016FiveRings_ResetStc()  --隔天清零
	return Sys_ChkFullTime(tOlympicGames2016FiveRings_Data["Now_Time"])
end

---接1）领取黯淡光环，失败，今天已经领过
tNpcGossip[19360]["Text2-1"] = {211}
tNpcGossip[19360]["Text211"] = tOlympicGames2016FiveRings_Text[19360]["Text211"]
tNpcGossip[19360]["tOption2-1"] = {21}
tNpcGossip[19360]["Option21"] = tOlympicGames2016FiveRings_Text[19360]["Option21"]

-- 接1）领取黯淡光环，失败，今天已经上交
tNpcGossip[19360]["Text2-2"] = {221}
tNpcGossip[19360]["Text221"] = tOlympicGames2016FiveRings_Text[19360]["Text221"]
tNpcGossip[19360]["tOption2-2"] = {22}
tNpcGossip[19360]["Option22"] = tOlympicGames2016FiveRings_Text[19360]["Option22"]

-----接1）领取黯淡光环，失败 背包空间
tNpcGossip[19360]["Text2-3"] = {231}
tNpcGossip[19360]["Text231"] = tOlympicGames2016FiveRings_Text[19360]["Text231"]
tNpcGossip[19360]["tOption2-3"] = {23}
tNpcGossip[19360]["Option23"] = tOlympicGames2016FiveRings_Text[19360]["Option23"]


-- 接3）如何帮忙
tNpcGossip[19360]["Text4-1"] = {411,412}
tNpcGossip[19360]["Text411"] = tOlympicGames2016FiveRings_Text[19360]["Text411"]
tNpcGossip[19360]["Text412"] = tOlympicGames2016FiveRings_Text[19360]["Text412"]
tNpcGossip[19360]["tOption4-1"] = {41}
tNpcGossip[19360]["Option41"] = tOlympicGames2016FiveRings_Text[19360]["Option41"]
tNpcGossip[19360]["OptionPoint41"]= "1-1"

---------------------------------------------物品模板---------------------------------------------

-- 黯淡光环 3200640
tItem[3200640] = tItem[3200640] or {}
tItem[3200640]["Function"] = function (nItemId,sItemName)
	OlympicGames2016FiveRings_UseItem(nItemId)
end
--3200641 - 3200645
for i= 3200641,3200645 do
	tItem[i] = tItem[3200640] or {}
end
---------------------------------------------怪物模板---------------------------------------------

-- local tOlympicGames2016FiveRings_KillMonster = {}
-- tOlympicGames2016FiveRings_KillMonster["ActivityTime"] = "2016-08-05 00:00 2016-08-22 23:59"
-- tOlympicGames2016FiveRings_KillMonster["ActivityTime"] = "2016-06-05 00:00 2016-08-22 23:59"

-- tOlympicGames2016FiveRings_KillMonster["Function"]	= OlympicGames2016FiveRings_AddValue
-- tOlympicGames2016FiveRings_KillMonster["Area"] = {1,2,3,4,5} --全部片区
 -- table.insert(tMonsterDrop_AreaLoad,tOlympicGames2016FiveRings_KillMonster)




