---Name:151106[简体征服][活动脚本]2016春节活动之辞旧迎新双龙城（02.03-02.07）
--Creator: 	陈莺
--Created:	2015-11-06
--------------------------------------------------------------------------------
--npc 
-- 10704  美女城管霍辣辣
-- 10705  纪念石碑
-- 10708-10713  垃圾

--物品
-- 3007773  扫把
-- 3007774  水桶

--logid  10000459
--掩码说明
--stc(131,51) =1 领取 =2 今天已完成
--stc(131,52) =2 完成任务
--stc(131,55) =1 完成冲水 = 2完成清扫
--stc(131,57) 记录捡垃圾次数
--命名规范
--SpringFestival2016_QuitoldTwinCtity_
------------------------------------------------------------------------------------------
--活动时间
local tSpringFestival2016_QuitoldTwinCtity_Data= {}
	tSpringFestival2016_QuitoldTwinCtity_Data["Bef_Time"]= "2016-05-18 00:00 2017-01-22 23:59"
	tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"] = "2017-01-23 00:00 2017-01-27 23:59"
	
	-- tSpringFestival2016_QuitoldTwinCtity_Data["Bef_Time"]= "2014-05-18 00:00 2015-09-21 23:59"
	-- tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"] = "2015-09-22 00:00 2016-02-07 23:59"

--等级
	tSpringFestival2016_QuitoldTwinCtity_Data["Level"] = 80
	tSpringFestival2016_QuitoldTwinCtity_Data["Metempsychosis"] = 0
--背包空间
	tSpringFestival2016_QuitoldTwinCtity_Data["Space1"] = 1
	tSpringFestival2016_QuitoldTwinCtity_Data["Space2"] = 2
--获得节日礼包光效
	tSpringFestival2016_QuitoldTwinCtity_Data["RewardEffect"] = "angelwing"
	tSpringFestival2016_QuitoldTwinCtity_Data["CleanEffect"] = "zf2-e290"

--物品id
local tSpringFestival2016_QuitoldTwinCtity_ItemId= {}
--扫把
	tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773] = 3007773
--水桶
	tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774] = 3007774
	
--清理区坐标
local tSpringFestival2016_QuitoldTwinCtity_Map= {}
	tSpringFestival2016_QuitoldTwinCtity_Map["MapId"] = 1002
	tSpringFestival2016_QuitoldTwinCtity_Map[10705] = {}
	tSpringFestival2016_QuitoldTwinCtity_Map[10705]["PosX"] = 250
	tSpringFestival2016_QuitoldTwinCtity_Map[10705]["PosY"] = 293
	tSpringFestival2016_QuitoldTwinCtity_Map[10705]["Npc"] = 0
	
	tSpringFestival2016_QuitoldTwinCtity_Map[10704] = {}
	tSpringFestival2016_QuitoldTwinCtity_Map[10704]["PosX"] = 282
	tSpringFestival2016_QuitoldTwinCtity_Map[10704]["PosY"] = 360
	tSpringFestival2016_QuitoldTwinCtity_Map[10704]["Npc"] = 10704
--npc 10705 坐标
local tSpringFestival2016_QuitoldTwinCtity_NpcPos= {}
	tSpringFestival2016_QuitoldTwinCtity_NpcPos["PosX"] = 264
	tSpringFestival2016_QuitoldTwinCtity_NpcPos["PosY"] = 296

--掩码
local tSpringFestival2016_QuitoldTwinCtity_Stc = {}

--stc(131,51) =1 领取 =2 今天已领取礼包
	tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"] = {}
	tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"] = 131
	tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"] = 51
--stc(131,52) =2 完成清洗任务
	tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"] = {}
	tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"] = 131
	tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"] = 52
--stc(131,55) =1 完成冲水 = 2完成清洗
	tSpringFestival2016_QuitoldTwinCtity_Stc["Water"] = {}
	tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["EventType"] = 131
	tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["DataType"] = 55
--stc(131,57) 记录捡垃圾次数
	tSpringFestival2016_QuitoldTwinCtity_Stc["Garbage"] = {}
	tSpringFestival2016_QuitoldTwinCtity_Stc["Garbage"]["EventType"] = 131
	tSpringFestival2016_QuitoldTwinCtity_Stc["Garbage"]["DataType"] = 57

--log表
local tSpringFestival2016_QuitoldTwinCtity_Log = {}
	tSpringFestival2016_QuitoldTwinCtity_Log["GetMaterial"] = "0,0,0,0,10000459,1[1],3007773[3007774],1[1]"
	tSpringFestival2016_QuitoldTwinCtity_Log["Delete"] = "0,0,%d,1,10000459,3,0,0"
	tSpringFestival2016_QuitoldTwinCtity_Log["GetGift"] = "0,0,0,1,10000459,1[2],3003625,1"
	tSpringFestival2016_QuitoldTwinCtity_Log["LogId"] = 10000459
	tSpringFestival2016_QuitoldTwinCtity_Log["FestivalId"] = 3364
--移动npc
local tSpringFestival2016_QuitoldTwinCtity_MoveNpc = {}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10708] = {}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10708][1] = {247,298}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10708][2] = {264,305}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10709] = {}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10709][1] = {247,304}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10709][2] = {280,314}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10710] = {}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10710][1] = {256,304}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10710][2] = {279,319}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10711] = {}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10711][1] = {270,305}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10711][2] = {286,320}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10712] = {}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10712][1] = {278,304}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10712][2] = {292,320}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10713] = {}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10713][1] = {279,309}
	tSpringFestival2016_QuitoldTwinCtity_MoveNpc[10713][2] = {280,304}

----------------------------------------npc逻辑部分-------------------------------------------
-----npc 美女城管霍辣辣 10704
--我要清洁 131
function SpringFestival2016_QuitoldTwinCtity_Clean(nNpcId)
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]
	local nCleanEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"]
	local nCleanData = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"]
	
--判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"]) then
		return
	end
--判断等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_QuitoldTwinCtity_Data["Level"],tSpringFestival2016_QuitoldTwinCtity_Data["Metempsychosis"]) then
		return
	end
--当天已领取领取奖励
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,">=",2) then
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
--完成任务，未领取奖励
	if Task_ChkStcValue(nCleanEvent,nCleanData,">=",2) then
		LinkNpcGossipFunc_New(nNpcId,"2-4")
		return
	end
--判断背包
	if not User_CheckLeftSpace(tSpringFestival2016_QuitoldTwinCtity_Data["Space2"]) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
--成功领取
	Task_SetStatistic(nCompleteEvent,nCompleteData,1,1)
	Task_SetStcTimestamp(nCompleteEvent,nCompleteData,0)
	
	Item_AddItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773])
	Item_AddItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774])
	Sys_SaveActionFestivalLog(tSpringFestival2016_QuitoldTwinCtity_Log["GetMaterial"])
	LinkNpcGossipFunc_New(nNpcId,"2-1")
end
--请指引我去。 2-1
function SpringFestival2016_QuitoldTwinCtity_GotoPlace(nNpcId)
	local nPosX = tSpringFestival2016_QuitoldTwinCtity_Map[nNpcId]["PosX"]
	local nPosY = tSpringFestival2016_QuitoldTwinCtity_Map[nNpcId]["PosY"]
	local nMapId = tSpringFestival2016_QuitoldTwinCtity_Map["MapId"]
	
	Sys_GotoSomeWhere(nPosX,nPosY,nMapId,tSpringFestival2016_QuitoldTwinCtity_Map[nNpcId]["Npc"])

end
----我来领取报酬。
function SpringFestival2016_QuitoldTwinCtity_RewardItem(nNpcId)
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]
	local nCleanEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"]
	local nCleanData = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"]

--判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"]) then
		return
	end
--判断等级
	if not User_JudgeLevelAndMetempsychosis(tSpringFestival2016_QuitoldTwinCtity_Data["Level"],tSpringFestival2016_QuitoldTwinCtity_Data["Metempsychosis"]) then
		return
	end
--=2隔天清零
	SpringFestival2016_QuitoldTwinCtity_StcReset(nCompleteEvent,nCompleteData)
--当天已领取奖励
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,">=",2) then
		LinkNpcGossipFunc_New(nNpcId,"3-3")
		return
	end
--未完成任务
	if Task_ChkStcValue(nCleanEvent,nCleanData,"<",2) then
		LinkNpcGossipFunc_New(nNpcId,"3-2")
		return
	end
	--背包满
	if not User_CheckLeftSpace(tSpringFestival2016_QuitoldTwinCtity_Data["Space1"]) then
		LinkNpcGossipFunc_New(nNpcId,"3-4")
		return
	end
--删除任务物品
	if Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773]) then
		if Item_DelItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773]) then 
		end
	end
	if Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774]) then
		if Item_DelItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774]) then 
		end
	end
--获得节日礼包
	Task_SetStatistic(nCompleteEvent,nCompleteData,2,1)
	Task_SetStcTimestamp(nCompleteEvent,nCompleteData,0)
	FestivalGeneralPackage_GetGift(tSpringFestival2016_QuitoldTwinCtity_Log["FestivalId"],tSpringFestival2016_QuitoldTwinCtity_Log["LogId"])
	Sys_SaveActionFestivalLog(tSpringFestival2016_QuitoldTwinCtity_Log["GetGift"])
	User_EffectAdd("self",tSpringFestival2016_QuitoldTwinCtity_Data["RewardEffect"])
	LinkNpcGossipFunc_New(nNpcId,"3-1")
end
--补领水桶和扫把
function SpringFestival2016_QuitoldTwinCtity_Replace(nNpcId)
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]
	local nCleanEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"]
	local nCleanData = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"]

--判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"]) then
		return
	end
--检测物品
	if Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773])and Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774]) then
		LinkNpcGossipFunc_New(nNpcId,"5-5")
		return
	end

--当日已完成该任务
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,">=",2) then
		LinkNpcGossipFunc_New(nNpcId,"5-3")
		return
	end
--完成任务，未领取奖励
	if Task_ChkStcValue(nCleanEvent,nCleanData,">=",2) then
		LinkNpcGossipFunc_New(nNpcId,"5-4")
		return
	end
	--检测物品
	if Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773]) then
	--背包满
		if not User_CheckLeftSpace(tSpringFestival2016_QuitoldTwinCtity_Data["Space1"]) then
			LinkNpcGossipFunc_New(nNpcId,"5-2")
			return
		end
		Item_AddItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774])
		
	elseif Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774]) then
		if not User_CheckLeftSpace(tSpringFestival2016_QuitoldTwinCtity_Data["Space1"]) then
				LinkNpcGossipFunc_New(nNpcId,"5-2")
				return
			end
		Item_AddItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773])
	else
		if not User_CheckLeftSpace(tSpringFestival2016_QuitoldTwinCtity_Data["Space2"]) then
			LinkNpcGossipFunc_New(nNpcId,"5-2")
			return
		end
		Item_AddItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774])
		Item_AddItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773])
	end
	
--补领成功
	LinkNpcGossipFunc_New(nNpcId,"5-1")
	
end

---npc 纪念石碑 10705
--对这儿进行冲水。
function SpringFestival2016_QuitoldTwinCtity_Water(nNpcId)
	local nWaterEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["EventType"]
	local nWaterData = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["DataType"]
--判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"]) then
		return
	end

--已进行过该步骤
	if Task_ChkStcValue(nWaterEvent,nWaterData,"==",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-2")
		return
	end
--判断是否有水桶
	if not Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-3")
		return
	end
--冲水成功
	Task_SetStatistic(nWaterEvent,nWaterData,1,1)
	Task_SetStcTimestamp(nWaterEvent,nWaterData,0)
	if Item_DelItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-1")
	end
	local sLog = string.format(tSpringFestival2016_QuitoldTwinCtity_Log["Delete"],tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774])
	Sys_SaveActionFestivalLog(sLog)
end

--对这儿进行清洗。
function SpringFestival2016_QuitoldTwinCtity_Sweep(nNpcId)
	local nWaterEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["EventType"]
	local nWaterData = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["DataType"]
	local nCleanEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"]
	local nCleanData = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"]
	local nMapId = tSpringFestival2016_QuitoldTwinCtity_Map["MapId"]
	local nPosX = tSpringFestival2016_QuitoldTwinCtity_NpcPos["PosX"]
	local nPosY = tSpringFestival2016_QuitoldTwinCtity_NpcPos["PosY"]
--判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"]) then
		return
	end
--玩家已进行过该步骤
	if Task_ChkStcValue(nWaterEvent,nWaterData,"==",2) then
		LinkNpcGossipFunc_New(nNpcId,"2-6")
		return
	end

--未冲水
	if Task_ChkStcValue(nWaterEvent,nWaterData,"~=",1) then
		LinkNpcGossipFunc_New(nNpcId,"2-5")
		return
	end
--失败、玩家身上无扫把道具
	if not Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-7")
		return
	end

--清扫成功
	Task_SetStatistic(nWaterEvent,nWaterData,2,1)
	Task_SetStcTimestamp(nWaterEvent,nWaterData,0)
	Task_AddStatistic(nCleanEvent,nCleanData,1,1)
	Task_SetStcTimestamp(nCleanEvent,nCleanData,0)
	if Item_DelItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773]) then 
		LinkNpcGossipFunc_New(nNpcId,"2-4")
	end
	local sLog = string.format(tSpringFestival2016_QuitoldTwinCtity_Log["Delete"],tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773])
	Sys_SaveActionFestivalLog(sLog)
--判断任务是否已经完成
	if Task_ChkStcValue(nCleanEvent,nCleanData,">=",2) then
		
		Sys_MsgBox(tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"]["Finish3"],"SpringFestival2016_QuitoldTwinCtity_GotoPlace</N>" .. 10704)
		Map_Effect(nMapId,nPosX,nPosY,tSpringFestival2016_QuitoldTwinCtity_Data["CleanEffect"]) --光效
	end
end 

--采集npc 垃圾
function SpringFestival2016_QuitoldTwinCtity_ColectGarbage(nNpcId)
	-- local nCleanEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"]
	-- local nCleanData = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"]
	local nGarbageEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Garbage"]["EventType"]
	local nGarbageData = tSpringFestival2016_QuitoldTwinCtity_Stc["Garbage"]["DataType"]
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]

	-- local nPosX = Get_NpcPositionX(nNpcId)
	-- local nPosY = Get_NpcPositionY(nNpcId)

--判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"]) then
		return
	end
--=2隔天清零
	SpringFestival2016_QuitoldTwinCtity_StcReset(nCompleteEvent,nCompleteData)
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"<",1) then
		return
	end

--判断是否捡了3次垃圾
	if Task_ChkStcValue(nGarbageEvent,nGarbageData,">=",3) then
		Sys_MsgBox(tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"]["Finish2"])
		return
	end
--判断距离
	local nUserX = Get_UserPositionX(0)
	local nUserY = Get_UserPositionY(0)
	local nPosX = Get_NpcPositionX(nNpcId)
	local nPosY = Get_NpcPositionY(nNpcId)
	if not SpringFestival2016_QuitoldTwinCtity_Distance(nUserX,nUserY,nPosX,nPosY) then 
		User_TalkChannel2005(tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"]["Far"])
		return
	end 

--读条
	User_SetExplore(1,tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"]["CollectGarbage"],220,"SpringFestival2016_QuitoldTwinCtity_GetGarbage</N>" .. nGarbageEvent .. "</N>" .. nGarbageData .. "</N>" .. nNpcId)

--移动npc
	-- if nPosX == tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][1] and nPosY == tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][2] then
		-- Npc_MoveNpcPos(nNpcId,tSpringFestival2016_QuitoldTwinCtity_Map["MapId"],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][2][1],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][2][2])
	-- else
		-- Npc_MoveNpcPos(nNpcId,tSpringFestival2016_QuitoldTwinCtity_Map["MapId"],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][1],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][2])
	-- end
end
--判断距离
--判断距离=>距离内true,距离外false
function SpringFestival2016_QuitoldTwinCtity_Distance(nUserX,nUserY,nPosX,nPosY)

	local nX_Distance = math.abs(nUserX-nPosX)
	local nY_Distance = math.abs(nUserY-nPosY)
	--比较npc的坐标x,y与玩家的坐标差绝对值
	if nX_Distance < 5 and nY_Distance < 5 then
		return true
	else
		return false
	end
end

--出提示
function SpringFestival2016_QuitoldTwinCtity_GetGarbage(nGarbageEvent,nGarbageData,nNpcId,nUserId)
	local nCleanEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"]
	local nCleanData = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"]
	local nMapId = tSpringFestival2016_QuitoldTwinCtity_Map["MapId"]
	local nPosX = tSpringFestival2016_QuitoldTwinCtity_NpcPos["PosX"]
	local nPosY = tSpringFestival2016_QuitoldTwinCtity_NpcPos["PosY"]
	local nPositionX = Get_NpcPositionX(nNpcId)
	local nPositionY = Get_NpcPositionY(nNpcId)

	Task_AddStatistic(nGarbageEvent,nGarbageData,1,1,nUserId)
	Task_SetStcTimestamp(nGarbageEvent,nGarbageData,0,nUserId)
--判断是否捡了3次垃圾
	if Task_ChkStcValue(nGarbageEvent,nGarbageData,">=",3,nUserId) then
		Task_AddStatistic(nCleanEvent,nCleanData,1,1,nUserId)
		Task_SetStcTimestamp(nCleanEvent,nCleanData,0,nUserId)
--判断任务是否已经完成
		if Task_ChkStcValue(nCleanEvent,nCleanData,">=",2,nUserId) then
			Sys_MsgBox(tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"]["Finish3"],"SpringFestival2016_QuitoldTwinCtity_GotoNpc")
			Map_Effect(nMapId,nPosX,nPosY,tSpringFestival2016_QuitoldTwinCtity_Data["CleanEffect"]) --光效
		else
			Sys_MsgBox(tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"]["Finish1"])
		end
	else
--还没捡3次提示
		local nRandom = math.random(1,6)
		User_TalkChannel2005(tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"][nRandom],nUserId)
	end
--移动npc
	if nPositionX == tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][1] and nPositionY == tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][2] then
		Npc_MoveNpcPos(nNpcId,tSpringFestival2016_QuitoldTwinCtity_Map["MapId"],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][2][1],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][2][2])
	else
		Npc_MoveNpcPos(nNpcId,tSpringFestival2016_QuitoldTwinCtity_Map["MapId"],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][1],tSpringFestival2016_QuitoldTwinCtity_MoveNpc[nNpcId][1][2])
	end
end
--传送回npc处
function SpringFestival2016_QuitoldTwinCtity_GotoNpc()
	local nUserMapId = Get_UserMapId()
	if nUserMapId == tSpringFestival2016_QuitoldTwinCtity_Map["MapId"] then
		local nBoundX = tSpringFestival2016_QuitoldTwinCtity_Map[10704]["PosX"]
		local nBoundY = tSpringFestival2016_QuitoldTwinCtity_Map[10704]["PosY"]
		User_UserRandBoundTrans(tSpringFestival2016_QuitoldTwinCtity_Map["MapId"],nBoundX,nBoundY,5,5,1)
	end
end
-- =2且隔天
function SpringFestival2016_QuitoldTwinCtity_StcReset(nCompleteEvent,nCompleteData)
	local nCleanEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["EventType"]
	local nCleanData = tSpringFestival2016_QuitoldTwinCtity_Stc["Clean"]["DataType"]
	local nWaterEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["EventType"]
	local nWaterData = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["DataType"]
	local nGarbageEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Garbage"]["EventType"]
	local nGarbageData = tSpringFestival2016_QuitoldTwinCtity_Stc["Garbage"]["DataType"]

	if Task_ChkStcValue(nCompleteEvent,nCompleteData,">=",2) and Task_StcInterval(nCompleteEvent,nCompleteData,1,4) then
		Task_SetStatistic(nCompleteEvent,nCompleteData,0,1)
		Task_SetStcTimestamp(nCompleteEvent,nCompleteData,0)
		Task_SetStatistic(nCleanEvent,nCleanData,0,1)
		Task_SetStcTimestamp(nCleanEvent,nCleanData,0)
		Task_SetStatistic(nWaterEvent,nWaterData,0,1)
		Task_SetStcTimestamp(nWaterEvent,nWaterData,0)
		Task_SetStatistic(nGarbageEvent,nGarbageData,0,1)
		Task_SetStcTimestamp(nGarbageEvent,nGarbageData,0)

		return true
	end
end
--没接任务
function SpringFestival2016_QuitoldTwinCtity_NotTask()
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"<",1) then
		return true
	end

end
----------------------------------------------物品逻辑部分------------------------------------------
function SpringFestival2016_QuitoldTwinCtity_UseItem(nItemId)
	local nNpcId = 10705
--判断活动时间
	if not Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"]) then
		if Item_ChkItem(nItemId) and Item_DelItem(nItemId) then
			User_TalkChannel2005(tSpringFestival2016_QuitoldTwinCtity_Text["MsgBox"]["Overtime"])
		end
		return
	end
	SpringFestival2016_QuitoldTwinCtity_GotoPlace(nNpcId)
end

--------------------------------------npc模板----------------------------------------------
--美女城管霍辣辣 10704
---NPC头像
tNpcFace[3345] = 187

tNpcGossip[10704] = tNpcGossip[10704] or DefaultNpc:new{}
tNpcGossip[10704]["OptionHidden"] = 1

--活动时间前
tNpcGossip[10704]["Text1-1"] = {111,112,113,114}
tNpcGossip[10704]["Text111"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text111"]
tNpcGossip[10704]["Text112"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text112"]
tNpcGossip[10704]["Text113"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text113"]
tNpcGossip[10704]["Text114"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text114"]
tNpcGossip[10704]["tOption1-1"] = {1}
tNpcGossip[10704]["ChkFunc1-1"] = function()
	return Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Bef_Time"])
end
tNpcGossip[10704]["Option1"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option1"]
--活动时间中
--等级不足
tNpcGossip[10704]["Text1-2"] = {121}
tNpcGossip[10704]["Text121"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text121"]
tNpcGossip[10704]["tOption1-2"] = {2}
tNpcGossip[10704]["Option2"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option2"]
tNpcGossip[10704]["ChkFunc1-2"] = function()
	return not (User_JudgeLevelAndMetempsychosis(tSpringFestival2016_QuitoldTwinCtity_Data["Level"],tSpringFestival2016_QuitoldTwinCtity_Data["Metempsychosis"]))
end


tNpcGossip[10704]["Text1-3"] = {131,132,133,134}
tNpcGossip[10704]["Text131"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text131"]
tNpcGossip[10704]["Text132"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text132"]
tNpcGossip[10704]["Text133"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text133"]
tNpcGossip[10704]["Text134"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text134"]
tNpcGossip[10704]["tOption1-3"] = {3,4,5,6,7}
tNpcGossip[10704]["ChkFunc1-3"] = function()
	return Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"])
end
--我要清洁
tNpcGossip[10704]["Option3"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option3"]
tNpcGossip[10704]["OptionFunc3"]="SpringFestival2016_QuitoldTwinCtity_Clean</N>10704"
tNpcGossip[10704]["OptionChkFunc3"] = function()
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]
	if (Task_ChkStcValue(nCompleteEvent,nCompleteData,"<",1) or SpringFestival2016_QuitoldTwinCtity_StcReset(nCompleteEvent,nCompleteData)) then
		return true
	end
end

--我来领取报酬。
tNpcGossip[10704]["Option4"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option4"]
tNpcGossip[10704]["OptionFunc4"] = "SpringFestival2016_QuitoldTwinCtity_RewardItem</N>10704"

--补领水桶和扫把
tNpcGossip[10704]["Option5"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option5"]
tNpcGossip[10704]["OptionFunc5"]="SpringFestival2016_QuitoldTwinCtity_Replace</N>10704"
tNpcGossip[10704]["OptionChkFunc5"] = function()
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]
	if Task_ChkStcValue(nCompleteEvent,nCompleteData,"==",1) and (not Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007773]) or not Item_ChkItem(tSpringFestival2016_QuitoldTwinCtity_ItemId[3007774])) then
		return true
	end
end
--如何参与洗城呢？
tNpcGossip[10704]["Option6"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option6"]
tNpcGossip[10704]["OptionPoint6"] = "4-1"

--全城大扫除，挺好玩的。
tNpcGossip[10704]["Option7"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option7"]

--活动后
tNpcGossip[10704]["Text1-4"] = {141}
tNpcGossip[10704]["Text141"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text141"]
tNpcGossip[10704]["tOption1-4"] = {8}
tNpcGossip[10704]["Option8"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option8"]

----成功、给玩家道具、并导航到A区
tNpcGossip[10704]["Text2-1"] = {211}
tNpcGossip[10704]["Text211"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text211"]
tNpcGossip[10704]["tOption2-1"] = {9}
tNpcGossip[10704]["Option9"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option9"]
tNpcGossip[10704]["OptionFunc9"] = "SpringFestival2016_QuitoldTwinCtity_GotoPlace</N>10705"

--玩家背包满
tNpcGossip[10704]["Text2-2"] = {221}
tNpcGossip[10704]["Text221"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text221"]
tNpcGossip[10704]["tOption2-2"] = {10}
tNpcGossip[10704]["Option10"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option10"]

--当日已完成该任务
tNpcGossip[10704]["Text2-3"] = {231}
tNpcGossip[10704]["Text231"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text231"]
tNpcGossip[10704]["tOption2-3"] = {11}
tNpcGossip[10704]["Option11"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option11"]

--玩家已完成步骤但还未领取奖励
tNpcGossip[10704]["Text2-4"] = {241}
tNpcGossip[10704]["Text241"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text241"]
tNpcGossip[10704]["tOption2-4"] = {12}
tNpcGossip[10704]["Option12"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option12"]

--我来领取报酬
--成功、领取活动奖励
tNpcGossip[10704]["Text3-1"] = {311,312}
tNpcGossip[10704]["Text311"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text311"]
tNpcGossip[10704]["Text312"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text312"]
tNpcGossip[10704]["tOption3-1"] = {13}
tNpcGossip[10704]["Option13"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option13"]

--玩家未完该活动
tNpcGossip[10704]["Text3-2"] = {321}
tNpcGossip[10704]["Text321"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text321"]
tNpcGossip[10704]["tOption3-2"] = {12}
-- tNpcGossip[10704]["Option14"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option14"]

--已领取当天奖励
tNpcGossip[10704]["Text3-3"] = {331}
tNpcGossip[10704]["Text331"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text331"]
tNpcGossip[10704]["tOption3-3"] = {12}

--背包满
tNpcGossip[10704]["Text3-4"] = {341}
tNpcGossip[10704]["Text341"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text341"]
tNpcGossip[10704]["tOption3-4"] = {14}
tNpcGossip[10704]["Option14"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option14"]

--如何参与洗城呢
tNpcGossip[10704]["Text4-1"] = {411,412}
tNpcGossip[10704]["Text411"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text411"]
tNpcGossip[10704]["Text412"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text412"]
tNpcGossip[10704]["tOption4-1"] = {15}
tNpcGossip[10704]["Option15"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option15"]

--补领水桶和扫把,补领成功
tNpcGossip[10704]["Text5-1"] = {511}
tNpcGossip[10704]["Text511"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text511"]
tNpcGossip[10704]["tOption5-1"] = {16}
tNpcGossip[10704]["Option16"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option16"]

--失败、背包已满
tNpcGossip[10704]["Text5-2"] = {521}
tNpcGossip[10704]["Text521"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text521"]
tNpcGossip[10704]["tOption5-2"] = {17}
tNpcGossip[10704]["Option17"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option17"]

--失败、当日已完成该任务
tNpcGossip[10704]["Text5-3"] = {531}
tNpcGossip[10704]["Text531"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text531"]
tNpcGossip[10704]["tOption5-3"] = {14}

--失败、玩家已完成步骤但还未领取奖励，选项接12
tNpcGossip[10704]["Text5-4"] = {541}
tNpcGossip[10704]["Text541"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text541"]
tNpcGossip[10704]["tOption5-4"] = {12}

--玩家背包内有水桶或扫把
tNpcGossip[10704]["Text5-5"] = {551}
tNpcGossip[10704]["Text551"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Text551"]
tNpcGossip[10704]["tOption5-5"] = {18}
tNpcGossip[10704]["Option18"] = tSpringFestival2016_QuitoldTwinCtity_Text[10704]["Option18"]

---NPC 纪念石碑 10705
---NPC头像
--tNpcFace[3346] = 0

tNpcGossip[10705] = tNpcGossip[10705] or DefaultNpc:new{}
tNpcGossip[10705]["OptionHidden"] = 1

--活动前、活动中未接任务时的闲聊对白
tNpcGossip[10705]["Text1-1"] = {111,112}
tNpcGossip[10705]["Text111"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text111"]
tNpcGossip[10705]["Text112"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text112"]
tNpcGossip[10705]["tOption1-1"] = {1}
tNpcGossip[10705]["ChkFunc1-1"] = function()
	local nCompleteEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["EventType"]
	local nCompleteData = tSpringFestival2016_QuitoldTwinCtity_Stc["Complete"]["DataType"]
--=2隔天清零
	SpringFestival2016_QuitoldTwinCtity_StcReset(nCompleteEvent,nCompleteData)

	return Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Bef_Time"]) or SpringFestival2016_QuitoldTwinCtity_NotTask()
end
tNpcGossip[10705]["Option1"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option1"]

--活动中
tNpcGossip[10705]["Text1-2"] = {121}
tNpcGossip[10705]["Text121"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text121"]
tNpcGossip[10705]["tOption1-2"] = {2,3,4}
tNpcGossip[10705]["ChkFunc1-2"] = function()
	return Sys_ChkFullTime(tSpringFestival2016_QuitoldTwinCtity_Data["Now_Time"])
end
--对这儿进行冲水。
tNpcGossip[10705]["Option2"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option2"]
tNpcGossip[10705]["OptionFunc2"] = "SpringFestival2016_QuitoldTwinCtity_Water</N>10705"
tNpcGossip[10705]["OptionChkFunc2"] = function()
	local nWaterEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["EventType"]
	local nWaterData = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["DataType"]
	if not Task_ChkStcValue(nWaterEvent,nWaterData,">=",2) then
		return true
	end

end
--对这儿进行清洗。
tNpcGossip[10705]["Option3"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option3"]
tNpcGossip[10705]["OptionFunc3"] = "SpringFestival2016_QuitoldTwinCtity_Sweep</N>10705"
tNpcGossip[10705]["OptionChkFunc3"] = function()
	local nWaterEvent = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["EventType"]
	local nWaterData = tSpringFestival2016_QuitoldTwinCtity_Stc["Water"]["DataType"]
	if not Task_ChkStcValue(nWaterEvent,nWaterData,">=",2) then
		return true
	end
end

--我只对石碑上写的感兴趣。
tNpcGossip[10705]["Option4"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option4"]

--活动后
tNpcGossip[10705]["Text1-3"] = {131}
tNpcGossip[10705]["Text131"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text131"]
tNpcGossip[10705]["tOption1-3"] = {5}
tNpcGossip[10705]["Option5"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option5"]

--对这儿进行冲水、成功
tNpcGossip[10705]["Text2-1"] = {211}
tNpcGossip[10705]["Text211"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text211"]
tNpcGossip[10705]["tOption2-1"] = {6}
tNpcGossip[10705]["Option6"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option6"]

--失败、玩家已进行过该步骤，选项接6
tNpcGossip[10705]["Text2-2"] = {221}
tNpcGossip[10705]["Text221"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text221"]
tNpcGossip[10705]["tOption2-2"] = {6}
--失败、玩家身上无水桶
tNpcGossip[10705]["Text2-3"] = {231}
tNpcGossip[10705]["Text231"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text231"]
tNpcGossip[10705]["tOption2-3"] = {7}
tNpcGossip[10705]["Option7"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option7"]

--对这儿进行清洗、成功、提示去领取奖励、并导航到NPC处领取奖励，选项接6
tNpcGossip[10705]["Text2-4"] = {241}
tNpcGossip[10705]["Text241"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text241"]
tNpcGossip[10705]["tOption2-4"] = {6}

--失败、玩家未冲水，选项接6
tNpcGossip[10705]["Text2-5"] = {251}
tNpcGossip[10705]["Text251"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text251"]
tNpcGossip[10705]["tOption2-5"] = {6}

--失败、玩家已进行过该步骤、提示领取奖励，选项接6
tNpcGossip[10705]["Text2-6"] = {261}
tNpcGossip[10705]["Text261"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text261"]
tNpcGossip[10705]["tOption2-6"] = {6}

--失败、玩家身上无扫把道具
tNpcGossip[10705]["Text2-7"] = {271}
tNpcGossip[10705]["Text271"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Text271"]
tNpcGossip[10705]["tOption2-7"] = {8}
tNpcGossip[10705]["Option8"] = tSpringFestival2016_QuitoldTwinCtity_Text[10705]["Option8"]

-----------------------------------------------物品模板------------------------------------------
--扫把 3007773
tItem[3007773] = tItem[3007773] or {}
tItem[3007773]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_QuitoldTwinCtity_UseItem(nItemId)
end

--水桶 3007774
tItem[3007774] = tItem[3007774] or {}
tItem[3007774]["Function"] = function(nItemId,sItemName)
	SpringFestival2016_QuitoldTwinCtity_UseItem(nItemId)
end


